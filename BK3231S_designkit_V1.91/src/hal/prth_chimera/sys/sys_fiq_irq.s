;
; MODULE NAME:    sys_fiq_irq.s
; PROJECT CODE:   pimiento
; DESCRIPTION:    Low-level ARM FIQ and IRQ Manipulation Routines
;                  - enabling / disabling FIQ
;                  - enabling / disabling IRQ
;                  - setting FIQ stack (not at present, should this be done?)
;                  - setting IRQ stack
;
; MAINTAINER:     Ivan Griffin
; DATE:           7 September 1999
;
; SOURCE CONTROL: $Id: sys_fiq_irq.s,v 1.9 2004/07/07 14:30:48 namarad Exp $
; LICENSE:
;     This source code is copyright (c) 2000-2004 Ceva Inc.,
;     All rights reserved.
;
; REVISION HISTORY:
;    07 Sept 1999 -   IG       - Developed for ARM PID7T board
;    16 Sept 1999 -   IG       - Updated for ARM 2.50
;    27 Sept 1999 -   IG       - Updated for SHARP LH77790 AEB
;                 -   DA/JS    - Code to disable interrupts
;    19 Jan 2000  -   IG       - Removed ANGEL Code,
;                                integrated with and removed
;                                sys_irq_angel_veneer.s
;
; NOTES:
;    Currently are not setting a stack for FIQ - should not matter
;    since nothing is put on stack that isn't taken off by FIQ.
;    no chaining of FIQ interrupts 
;

        EXPORT SYSirq_IRQ_Enable_All
        EXPORT SYSirq_IRQ_Disable_All
        EXPORT SYSirq_IRQ_Stack_Setup

        EXPORT SYSirq_FIQ_Enable_All
        EXPORT SYSirq_FIQ_Disable_All
        EXPORT SYSirq_FIQ_Stack_Setup
        
        EXPORT SYSirq_SYS_Stack_Setup
        EXPORT SYSirq_IRQ_wrapper

        
        AREA irq,CODE,READONLY

        IMPORT SYSirq_IRQ_Tabasco_ISR

MODE_FIQ         EQU    0x0011                   ;
MODE_IRQ         EQU    0x0012                   ;
MODE_SVC         EQU    0x0013                   ;
MODE_SYS        EQU     0x001F

SYSirq_IRQ_Enable_All
                 stmfd sp!, {r0}
                 mrs r0, cpsr
                 bic r0, r0, #0x80
                 msr cpsr_c, r0
                 ldmfd sp!, {r0}
                 mov pc,lr

SYSirq_IRQ_Disable_All
                 stmfd sp!, {r0}
                 mrs r0, cpsr
                 orr r0, r0, #0x80
                 msr cpsr_c, r0
                 ldmfd sp!, {r0}
                 mov pc,lr

SYSirq_FIQ_Enable_All
                 stmfd sp!, {r0}
                 mrs r0, cpsr
                 bic r0, r0, #0x40
                 msr cpsr_c, r0
                 ldmfd sp!, {r0}
                 mov pc,lr


SYSirq_FIQ_Disable_All
                 stmfd sp!, {r0}
                 mrs r0, cpsr
                 orr r0, r0, #0x40
                 msr cpsr_c, r0
                 ldmfd sp!, {r0}
                 mov pc,lr

FIQ_STACK_ADDR   EQU 0x00405FFC-5120          ; NEEDS TO BE DETERMINED!!
IRQ_STACK_ADDR   EQU FIQ_STACK_ADDR-4096         ;
SYS_STACK_ADDR   EQU IRQ_STACK_ADDR-5120

SYSirq_IRQ_Stack_Setup

; no longer needed - an ELF image starts in SVC mode by default
;                ldr     r0, =0x17
;                swi     0x123456                ; this will set us into SVC Mode

                 mrs     r1, cpsr                ; read-modify-write to get
                                                 ; to IRQ mode
                 bic     r1, r1, #0x1f           ; clear current mode
                 orr     r1, r1, #MODE_IRQ       ; set IRQ mode
                 msr     cpsr_c, r1              ; now we should be in IRQ mode
                 ldr     r13, =IRQ_STACK_ADDR    ; set up a reasonable IRQ
                                                 ; stack pointer - 32 bit
                                                 ; aligned 

                 mrs     r1, cpsr                ; read-modify-write to get
                                                 ; to SVC mode
                 bic     r1, r1, #0x1f           ; clear current mode
                 orr     r1, r1, #MODE_SVC       ; set SVC mode
                 msr     cpsr_c, r1              ; now we should be in SVC mode
                 mov     pc, lr



SYSirq_FIQ_Stack_Setup

; no longer needed - an ELF image starts in SVC mode by default
;                ldr     r0, =0x17
;                swi     0x123456                ; this will set us into SVC Mode

                 mrs     r1, cpsr                ; read-modify-write to get
                                                 ; to IRQ mode
                 bic     r1, r1, #0x1f           ; clear current mode
                 orr     r1, r1, #MODE_FIQ       ; set IRQ mode
                 msr     cpsr_c, r1              ; now we should be in IRQ mode
                 ldr     r13, =FIQ_STACK_ADDR    ; set up a reasonable IRQ
                                                 ; stack pointer - 32 bit
                                                 ; aligned 

                 mrs     r1, cpsr                ; read-modify-write to get
                                                 ; to SVC mode
                 bic     r1, r1, #0x1f           ; clear current mode
                 orr     r1, r1, #MODE_SVC       ; set SVC mode
                 msr     cpsr_c, r1              ; now we should be in SVC mode
                 mov     pc, lr


SYSirq_SYS_Stack_Setup

; no longer needed - an ELF image starts in SVC mode by default
;                ldr     r0, =0x17
;                swi     0x123456                ; this will set us into SVC Mode

                 mrs     r1, cpsr                ; read-modify-write to get
                                                 ; to SYS mode
                 bic     r1, r1, #0x1f           ; clear current mode
                 orr     r1, r1, #MODE_SYS       ; set SYS mode
                 msr     cpsr_c, r1              ; now we should be in SYS mode
                 ldr     r13, =SYS_STACK_ADDR    ; set up a reasonable SYS
                                                 ; stack pointer - 32 bit
                                                 ; aligned 

                 mrs     r1, cpsr                ; read-modify-write to get
                                                 ; to SVC mode
                 bic     r1, r1, #0x1f           ; clear current mode
                 orr     r1, r1, #MODE_SVC       ; set SVC mode
                 msr     cpsr_c, r1              ; now we should be in SVC mode
                 mov     pc, lr


SYSirq_IRQ_wrapper
                sub     lr, lr, #4        ; construct the return address
                STMFD   sp!, {lr}         ; and push the adjusted lr_IRQ
                MRS     r14, SPSR         ; copy spsr_IRQ to r14
                STMFD   sp!, {r12, r14}   ; save work regs and spsr_IRQ

                ; Add instructions to clear the interrupt here
                ; then re-enable interrupts.

                MSR     CPSR_c, #0x9F     ; switch to SYS mode, FIQ enabled and IRQ
                                                      ; disabled. USR mode registers
                                                      ; are now current.
                STMFD  sp!, {r0-r3, lr}   ; save lr_USR and non-callee 
                                                  ; saved registers
                ;BL      SYSirq_IRQ_Tabasco_ISR     ; branch to C IRQ handler.
                LDMFD   sp!, {r0-r3, lr}  ; restore registers
                MSR     CPSR_c, #0x92     ; switch to IRQ mode and disable
                                                      ; IRQs. FIQ is still enabled.

                LDMFD   sp!, {r12, r14}   ; restore work regs and spsr_IRQ
                MSR     SPSR_cf, r14
                LDMFD   sp!, {pc}^        ; return from IRQ.


                 END


