;/****************************************Copyright (c)**************************************************
;**                               ������������Ƭ����չ���޹�˾
;**                                     ��    ��    ��
;**                                        ��Ʒһ�� 
;**
;**                                 http://www.zlgmcu.com
;**
;**--------------�ļ���Ϣ--------------------------------------------------------------------------------
;**��   ��   ��: vectors.s
;**��   ��   ��: ������
;**����޸�����: 2003��7��1��
;**��        ��: lpc210x�쳣������ڼ��쳣������c���Դ���Ľӿڣ�������ʼ����ջ�Ĵ���
;**              ÿ������Ӧ���ж���������ļ��Ŀ�������������Ӧ���޸�   
;**--------------��ʷ�汾��Ϣ----------------------------------------------------------------------------
;** ������: ������
;** ��  ��: v1.0
;** �ա���: 2003��5��30��
;** �衡��: ԭʼ�汾
;**
;**------------------------------------------------------------------------------------------------------
;** �޸���: ������
;** ��  ��: v1.1
;** �ա���: 2003��6��5��
;** �衡��: �������
;**
;**------------------------------------------------------------------------------------------------------
;** �޸���: ������
;** ��  ��: v1.2
;** �ա���: 2003��7��1��
;** �衡��: �������
;**
;**--------------��ǰ�汾�޶�----------------------------------------------------------------------------
;** �޸���: 
;** �ա���:
;** �衡��:
;**
;**------------------------------------------------------------------------------------------------------
;********************************************************************************************************/

;�����ջ�Ĵ�С
USR_STACK_LEGTH     EQU         1024
SVC_STACK_LEGTH     EQU         1024
FIQ_STACK_LEGTH     EQU         512
IRQ_STACK_LEGTH     EQU         512
ABT_STACK_LEGTH     EQU         16
UND_STACK_LEGTH     EQU         16
I_BIT           EQU     0x80 ; when I bit is set, IRQ is disabled
F_BIT           EQU     0x40 ; when F bit is set, FIQ is disabled

;������ⲿ�����������
    IMPORT  SYSirq_FIQ_Handler                   ;�����ж��쳣�������
    IMPORT  SYSirq_IRQ_Handler
    IMPORT  Reset

;���ⲿʹ�õı����������
    EXPORT  InitStack
    EXPORT  Vectors
    EXPORT _SYSboot_Copy_CODE_To_SRAM
    EXPORT _SYSboot_ZI_Init
    EXPORT _SYSSet_stack_flag
    EXPORT UsrStackSpace
    EXPORT IrqStackSpace
    EXPORT FiqStackSpace


    PRESERVE8

    CODE32
	PRESERVE8

    AREA    Startup,CODE,READONLY

;�ж�������
Vectors
        LDR     PC, ResetAddr
        LDR     PC, UndefinedAddr
        LDR     PC, SWI_Addr
        LDR     PC, PrefetchAddr
        LDR     PC, DataAbortAddr
        DCD     0xb9205f80
        LDR     PC, IRQ_Addr
        LDR     PC, FIQ_Addr

ResetAddr           DCD     Reset
UndefinedAddr       DCD     Undefined
SWI_Addr            DCD     SoftwareInterrupt
PrefetchAddr        DCD     PrefetchAbort
DataAbortAddr       DCD     DataAbort
Nouse               DCD     0
IRQ_Addr            DCD     SYSirq_IRQ_Handler
FIQ_Addr            DCD     SYSirq_FIQ_Handler

;δ����ָ��
Undefined
        B       Undefined
        

;���ж�
SoftwareInterrupt
		
        B       SoftwareInterrupt

PrefetchAbort
        B       PrefetchAbort

;ȡ������ֹ
DataAbort
        B       DataAbort

;�����ж�
IRQ_Handler
        STMFD   SP!, {R0-R12, LR}
        BL      SYSirq_IRQ_Handler
        LDMFD   SP!, {R0-R12, LR}
       SUBS    PC,  LR,  #4


;�����ж�
FIQ_Handler
        STMFD   SP!, {R0-R12, LR}
        BL      SYSirq_FIQ_Handler
       LDMFD   SP!, {R0-R12, LR}
        SUBS    PC,  LR,  #4

;/*********************************************************************************************************
;** ��������: InitStack
;** ��������: ��ʼ����ջ
;** �䡡��:   ��
;** �䡡�� :  ��
;** ȫ�ֱ���: ��
;** ����ģ��: ��
;** 
;** ������: ������
;** �ա���: 2003��6��5��
;**-------------------------------------------------------------------------------------------------------
;** �ޡ���: 
;** �ա���: 
;**-------------------------------------------------------------------------------------------------------
;********************************************************************************************************/
InitStack    
        MOV     R0,  LR

;���ù���ģʽ��ջ
        MSR     CPSR_c, #0x13;:OR:I_BIT:OR:F_BIT
        LDR     SP, StackSvc
;�����ж�ģʽ��ջ
        MSR     CPSR_c, #0x12;:OR:I_BIT:OR:F_BIT 
        LDR     SP, StackIrq
;���ÿ����ж�ģʽ��ջ
        MSR     CPSR_c, #0x11;:OR:I_BIT:OR:F_BIT
        LDR     SP, StackFiq
;������ֹģʽ��ջ
        MSR     CPSR_c, #0x17;:OR:I_BIT:OR:F_BIT 
        LDR     SP, StackAbt
;����δ����ģʽ��ջ
        MSR     CPSR_c, #0x1b;:OR:I_BIT:OR:F_BIT
        LDR     SP, StackUnd
;����ϵͳģʽ��ջ
        MSR     CPSR_c, #0x1f;:OR:I_BIT:OR:F_BIT 
        LDR     SP, StackUsr

        MOV     PC, R0


; **********************************************************************

;
; Need to include Target Specific ARM Code
;
;       INCLUDE sys_boot_chimera.s                    

; **********************************************************************

;
; FUNCTION:     _SYSboot_Copy_CODE_To_SRAM
; DESCRIPTION:  copy main stack code from FLASH/ROM to SRAM
;
_SYSboot_Copy_CODE_To_SRAM

    IMPORT |Load$$RAM$$Base|         ; Load Addr of RAM (RW) 
    IMPORT |Image$$RAM$$Base|	        ; Exec Addr of RAM (RW)
  	IMPORT |Image$$RAM$$Length|      ; Length of RAM Exec (RW)

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

_SYSSet_stack_flag
    LDR		R2, =0xDEADBEEF
    LDR		R3, =UsrStackSpace
    STR 	R2, [R3]
    LDR		R3, =IrqStackSpace
    STR 	R2, [R3]
    LDR		R3, =FiqStackSpace
    STR 	R2, [R3]
    MOV		PC, LR
    

StackUsr           DCD     UsrStackSpace + (USR_STACK_LEGTH - 1) * 4
StackSvc           DCD     SvcStackSpace + (SVC_STACK_LEGTH - 1)* 4
StackIrq           DCD     IrqStackSpace + (IRQ_STACK_LEGTH - 1)* 4
StackFiq           DCD     FiqStackSpace + (FIQ_STACK_LEGTH - 1)* 4
StackAbt           DCD     AbtStackSpace + (ABT_STACK_LEGTH - 1)* 4
StackUnd           DCD     UndtStackSpace + (UND_STACK_LEGTH - 1)* 4


;/* �����ջ�ռ� */
        AREA    MyStacks, DATA, NOINIT, ALIGN=2
UsrStackSpace      SPACE   USR_STACK_LEGTH * 4  ;�û���ϵͳ��ģʽ��ջ�ռ�
SvcStackSpace      SPACE   SVC_STACK_LEGTH * 4  ;����ģʽ��ջ�ռ�
IrqStackSpace      SPACE   IRQ_STACK_LEGTH * 4  ;�ж�ģʽ��ջ�ռ�
FiqStackSpace      SPACE   FIQ_STACK_LEGTH * 4  ;�����ж�ģʽ��ջ�ռ�
AbtStackSpace      SPACE   ABT_STACK_LEGTH * 4  ;��ֹ��ģʽ��ջ�ռ�
UndtStackSpace     SPACE   UND_STACK_LEGTH * 4  ;δ����ģʽ��ջ

    END
;/*********************************************************************************************************
;**                            End Of File
;********************************************************************************************************/
