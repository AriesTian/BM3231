;/****************************************Copyright (c)**************************************************
;**                               广州周立功单片机发展有限公司
;**                                     研    究    所
;**                                        产品一部 
;**
;**                                 http://www.zlgmcu.com
;**
;**--------------文件信息--------------------------------------------------------------------------------
;**文   件   名: vectors.s
;**创   建   人: 陈明计
;**最后修改日期: 2003年7月1日
;**描        述: lpc210x异常向量入口及异常向量与c语言代码的接口，包括初始化堆栈的代码
;**              每个工程应当有独立的这个文件的拷贝，并进行相应的修改   
;**--------------历史版本信息----------------------------------------------------------------------------
;** 创建人: 陈明计
;** 版  本: v1.0
;** 日　期: 2003年5月30日
;** 描　述: 原始版本
;**
;**------------------------------------------------------------------------------------------------------
;** 修改人: 陈明计
;** 版  本: v1.1
;** 日　期: 2003年6月5日
;** 描　述: 精简代码
;**
;**------------------------------------------------------------------------------------------------------
;** 修改人: 陈明计
;** 版  本: v1.2
;** 日　期: 2003年7月1日
;** 描　述: 精简代码
;**
;**--------------当前版本修订----------------------------------------------------------------------------
;** 修改人: 
;** 日　期:
;** 描　述:
;**
;**------------------------------------------------------------------------------------------------------
;********************************************************************************************************/

;定义堆栈的大小
USR_STACK_LEGTH     EQU         1024
SVC_STACK_LEGTH     EQU         1024
FIQ_STACK_LEGTH     EQU         512
IRQ_STACK_LEGTH     EQU         512
ABT_STACK_LEGTH     EQU         16
UND_STACK_LEGTH     EQU         16
I_BIT           EQU     0x80 ; when I bit is set, IRQ is disabled
F_BIT           EQU     0x40 ; when F bit is set, FIQ is disabled

;引入的外部标号在这声明
    IMPORT  SYSirq_FIQ_Handler                   ;快速中断异常处理程序
    IMPORT  SYSirq_IRQ_Handler
    IMPORT  Reset

;给外部使用的标号在这声明
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

;中断向量表
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

;未定义指令
Undefined
        B       Undefined
        

;软中断
SoftwareInterrupt
		
        B       SoftwareInterrupt

PrefetchAbort
        B       PrefetchAbort

;取数据中止
DataAbort
        B       DataAbort

;慢速中断
IRQ_Handler
        STMFD   SP!, {R0-R12, LR}
        BL      SYSirq_IRQ_Handler
        LDMFD   SP!, {R0-R12, LR}
       SUBS    PC,  LR,  #4


;快速中断
FIQ_Handler
        STMFD   SP!, {R0-R12, LR}
        BL      SYSirq_FIQ_Handler
       LDMFD   SP!, {R0-R12, LR}
        SUBS    PC,  LR,  #4

;/*********************************************************************************************************
;** 函数名称: InitStack
;** 功能描述: 初始化堆栈
;** 输　入:   无
;** 输　出 :  无
;** 全局变量: 无
;** 调用模块: 无
;** 
;** 作　者: 陈明计
;** 日　期: 2003年6月5日
;**-------------------------------------------------------------------------------------------------------
;** 修　改: 
;** 日　期: 
;**-------------------------------------------------------------------------------------------------------
;********************************************************************************************************/
InitStack    
        MOV     R0,  LR

;设置管理模式堆栈
        MSR     CPSR_c, #0x13;:OR:I_BIT:OR:F_BIT
        LDR     SP, StackSvc
;设置中断模式堆栈
        MSR     CPSR_c, #0x12;:OR:I_BIT:OR:F_BIT 
        LDR     SP, StackIrq
;设置快速中断模式堆栈
        MSR     CPSR_c, #0x11;:OR:I_BIT:OR:F_BIT
        LDR     SP, StackFiq
;设置中止模式堆栈
        MSR     CPSR_c, #0x17;:OR:I_BIT:OR:F_BIT 
        LDR     SP, StackAbt
;设置未定义模式堆栈
        MSR     CPSR_c, #0x1b;:OR:I_BIT:OR:F_BIT
        LDR     SP, StackUnd
;设置系统模式堆栈
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


;/* 分配堆栈空间 */
        AREA    MyStacks, DATA, NOINIT, ALIGN=2
UsrStackSpace      SPACE   USR_STACK_LEGTH * 4  ;用户（系统）模式堆栈空间
SvcStackSpace      SPACE   SVC_STACK_LEGTH * 4  ;管理模式堆栈空间
IrqStackSpace      SPACE   IRQ_STACK_LEGTH * 4  ;中断模式堆栈空间
FiqStackSpace      SPACE   FIQ_STACK_LEGTH * 4  ;快速中断模式堆栈空间
AbtStackSpace      SPACE   ABT_STACK_LEGTH * 4  ;中止义模式堆栈空间
UndtStackSpace     SPACE   UND_STACK_LEGTH * 4  ;未定义模式堆栈

    END
;/*********************************************************************************************************
;**                            End Of File
;********************************************************************************************************/
