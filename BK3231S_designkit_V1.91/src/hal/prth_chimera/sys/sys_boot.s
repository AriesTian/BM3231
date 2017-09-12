;
; MODULE:         sys_boot.s
; PROJECT:        BlueStream
; MAINTAINER:     Ivan Griffin
; CREATION DATE:  28 September 2000
; DESCRIPTION:    common ARM system boot-code
;
; SOURCE CONTROL: $Id: sys_boot.s,v 1.11 2004/07/07 14:30:48 namarad Exp $
;
; REVISION HISTORY:
;    14.Sept.2000         IG      Based on sys_boot.s for AEB
;
; LICENSE:
;     This source code is copyright (c) 2000-2004 Ceva Inc.,
;     All rights reserved.
;

    PRESERVE8
    AREA SYS_Boot, CODE, READONLY

    EXPORT SYSboot_Startup
    EXPORT SYSboot_Warm_Startup
	
	EXPORT _SYSboot_Power_Down
 
   ; IF :DEF: ADS_TOOLCHAIN_SUPPORTED
   ;  IMPORT main, WEAK
  ;  ELSE
      IMPORT main, WEAK
   ; ENDIF

    IMPORT SYSpost_Test, WEAK
    IMPORT hc_warm_reset, WEAK

    IMPORT SYSirq_IRQ_Handler
    IMPORT SYSirq_FIQ_Handler
   
    ;IMPORT Enable_26M_Clock_When_Boot

    IMPORT SYSbuild_Info_Dummy, WEAK
                                                  ; stripping vector table

;
; common ARM Definitions
;

MODE_USR    EQU    0x10
MODE_FIQ    EQU    0x11
MODE_IRQ    EQU    0x12
MODE_SVC    EQU    0x13
MODE_ABORT  EQU    0x14
MODE_UNDEF  EQU    0x15
MODE_SYS  EQU    0x1F

I_BIT       EQU    0x80
F_BIT       EQU    0x40

;
; common ARM code
;
;
; THIS IS THE ENTRY POINT FOR THE ROM BUILD!!!
; On power-up, the flash is located at 0x00000000
; Program Counter starts at 0x00000000, and we jump to 
; high flash at 0x04000000
;
   ; IF :DEF: BUILD_FOR_ROM
   ; ENTRY
   ; INFO 0, "Building for ROM"
   ; ENDIF
   ;    LDR PC, =SYSboot_Startup
    
    EXPORT SYS_Vector_Init_Block


SYS_Vector_Init_Block
    LDR PC, _Reset_Addr
    LDR PC, _Undefined_Addr
    LDR PC, _SWI_Addr
    LDR PC, _Prefetch_Abort_Addr
    LDR PC, _Data_Abort_Addr
    NOP
    LDR PC, _IRQ_Addr ;restore for current hardware
    LDR PC, _FIQ_Addr ;restore for current hardware
    
   

_Reset_Addr            DCD SYSboot_Startup
_Undefined_Addr        DCD _Undefined_Handler
_SWI_Addr              DCD _SWI_Handler
_Prefetch_Abort_Addr   DCD _Prefetch_Abort_Handler
_Data_Abort_Addr       DCD _Abort_Handler
                       DCD 0                       ; Reserved Vector
_IRQ_Addr              DCD SYSirq_IRQ_Handler ; SYSirq_IRQ_Handler  
;#if (PRH_BS_DEV_USE_DELAYED_SERVICE_ROUTINES == 1)
;SYSirq_IRQ_wrapper
;else
;SYSirq_IRQ_Handler
_FIQ_Addr              DCD SYSirq_FIQ_Handler


_Undefined_Handler
_SWI_Handler
_Prefetch_Abort_Handler
_Abort_Handler
    B _Abort_Handler

          
;
; FUNCTION:     SYSboot_Startup
; DESCRIPTION:  Cold-Boot Startup routine
;
SYSboot_Startup


    ;    BL      _SYSboot_Setup_Target_Specific
    ;    BL      _SYSboot_Map_Flash_High
	;	BL      _SYSboot_Config_LSRAM_Cache
       ; BL      _SYSboot_Setup_Temp_POST_Stack
;        BL      SYSpost_Test                     ; power-on, self test
       ; BL      _SYSboot_Map_SRAM_Low
        BL      _SYSboot_Setup_Stacks_Disable_Intr

 ;       BL      Enable_26M_Clock_When_Boot

        BL      _SYSboot_ZI_Init
;        BL      _SYSboot_Copy_CODE_To_LSRAM
        BL      _SYSboot_Copy_CODE_To_SRAM

;        MOV     R0, #0                            ; clear the warm_reset flag
;        LDR     R1, =hc_warm_reset                
 ;       STR     R0, [R1, #0]

    ;IF :DEF: ADS_TOOLCHAIN_SUPPORTED
     ;   B       main                              ; and go!
    ;ELSE
        LDR PC, =main                         ; and go!
    ;ENDIF
    
;
; FUNCTION:     SYSboot_Warm_Startup
; DESCRIPTION:  Warm-Boot Startup routine (i.e. as the result of a
;               HCI_RESET -- need to send HCI_Command_Complete when
;               boot has finished)
;
SYSboot_Warm_Startup
       ; BL      _SYSboot_Setup_Target_Specific
       ; BL      _SYSboot_Map_Flash_High
;		BL      _SYSboot_Config_LSRAM_Cache
;        BL      _SYSboot_Map_SRAM_Low
        BL      _SYSboot_Setup_Stacks_Disable_Intr
        BL      _SYSboot_ZI_Init
   ;     BL      _SYSboot_Copy_CODE_To_LSRAM
       BL      _SYSboot_Copy_CODE_To_SRAM

        MOV     R0, #1                            ; set the warm_reset flag
        LDR     R1, =hc_warm_reset                
        STR     R0, [R1, #0]

    ;IF :DEF: ADS_TOOLCHAIN_SUPPORTED
    ;    B       main                              ; and go!
    ;ELSE
        LDR PC, =main                         ; and go!
    ;ENDIF

_Dummy
        LDR PC, =SYS_Vector_Init_Block            ; dummy to prevent linker - not working for ADS linker
        LDR PC, =SYSbuild_Info_Dummy              ; dummy to prevent linker - not working for ADS linker
                                                  ; stripping vector table
_SYSboot_halt   B       _SYSboot_halt             ; should never reach here!!!


; **********************************************************************

;
; Need to include Target Specific ARM Code
;
       INCLUDE sys_boot_chimera.s                    

; **********************************************************************

;
; FUNCTION:     _SYSboot_Copy_CODE_To_SRAM
; DESCRIPTION:  copy main stack code from FLASH/ROM to SRAM
;
_SYSboot_Copy_CODE_To_SRAM

    IMPORT |Load$$RAM$$Base|, WEAK         ; Load Addr of RAM (RW) 
    IMPORT |Image$$RAM$$Base|, WEAK        ; Exec Addr of RAM (RW)
    IMPORT |Image$$RAM$$Length|, WEAK      ; Length of RAM Exec (RW)

        LDR     R0, =|Load$$RAM$$Base|
        LDR     R1, =|Image$$RAM$$Base|
        MOV     R2, R1
        LDR     R4, =|Image$$RAM$$Length|
        ADD     R2, R2, R4
_copy                                       ; block copy function
        CMP r1, r2
        LDRLO   R3, [r0], #4
        STRLO   R3, [r1], #4
        BLO     _copy
        MOV     PC, LR

		mov r0,#1

 
_SYSboot_Power_Down
		STR lr, [sp, #-4]! 
        MOV R0,#0x00800000
        LDR R1,[R0,#0x0004]
        ORR R1,R1,#00000001
        STR R1,[R0,#0x0004]
		
        MOV R0,#0
        MCR p15,0,R0,c7,c0,4
		NOP
		NOP
		NOP
		NOP
		NOP
		NOP
		NOP
		NOP
		NOP
		NOP
		NOP
		NOP
		NOP
		NOP
		NOP
		NOP
		LDR pc, [sp], #4 
		
		
		;MOV PC, LR
;
; Generic ARM routines to setup the LSRAM and SRAM and jump into C code
;

; FUNCTION:     _SYSboot_ZI_Init
; DESCRIPTION:  Initialise Zero-Init Data Segment
;

_SYSboot_ZI_Init

    IMPORT |Image$$RAM$$ZI$$Base|    ; Exec Addr of RAM (ZI)
    IMPORT |Image$$RAM$$ZI$$Length|  ; Length of RAM Exec (ZI)
		
        LDR R2, =|Image$$RAM$$ZI$$Length|
        LDR R0, =|Image$$RAM$$ZI$$Base|
        MOV R1, R0
        ADD R1, R1, R2
        MOV R2, #0
_ZI_Loop
        CMP R0, R1
        STRLO R2, [R0], #4
        BLO _ZI_Loop
		MOV PC, LR


        
        
        

    EXPORT __user_initial_stackheap


__user_initial_stackheap    
    LDR   r0,=bottom_of_heap
    MOV   pc,lr


__rt_div0
        B       __rt_div0      
          
        AREA    Myheap, DATA, NOINIT, ALIGN=2
bottom_of_heap     SPACE   256  ;



    END
