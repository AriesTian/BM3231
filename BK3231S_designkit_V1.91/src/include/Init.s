;/****************************************Copyright (c)**************************************************
;**                               广州周立功单片机发展有限公司
;**                                     研    究    所
;**                                        产品一部 
;**
;**                                 http://www.zlgmcu.com
;**
;**--------------文件信息--------------------------------------------------------------------------------
;**文   件   名: Init.s
;**创   建   人: 陈明计
;**最后修改日期: 2003年7月1日
;**描        述: lpc210x初始化代码，每个工程应当有独立的初始化代码，一般不需要改动
;**              特殊情况应当在这个文件上修改而来   
;**--------------历史版本信息----------------------------------------------------------------------------
;** 创建人: 陈明计
;** 版  本: v1.0
;** 日　期: 2003年5月30日
;** 描　述: 原始版本
;**
;**------------------------------------------------------------------------------------------------------
;** 修改人: 陈明计
;** 版  本: v1.1
;** 日　期: 2003年7月1日
;** 描　述: 增加函数__user_initial_stackheap和__rt_div0,简化函数Reset
;**
;**--------------当前版本修订------------------------------------------------------------------------------
;** 修改人: 
;** 日　期:
;** 描　述:
;**
;**------------------------------------------------------------------------------------------------------
;********************************************************************************************************/
;ICU address definitions
ICU_BASE		EQU	0x00800000
ICU_CLKSEL_LOC	EQU	0x00
ICU_CPUCLK_LOC	EQU	0x04
;引入的外部标号在这声明
    IMPORT __main                     ;C语言主程序入口 
    IMPORT  InitStack                       ;初始化堆栈
    IMPORT _SYSboot_Copy_CODE_To_SRAM
    IMPORT _SYSboot_ZI_Init
    IMPORT _SYSSet_stack_flag
   ; IMPORT BK3000_start_wdt
    
;给外部使用的标号在这声明
    EXPORT  Reset
    EXPORT __rt_div0
    EXPORT __user_initial_stackheap

;段声明
    CODE32
    AREA    Init,CODE,READONLY
    
;/*********************************************************************************************************
;** 函数名称: Reset
;** 功能描述: 复位入口
;** 
;** 输　入: 无
;**
;** 输　出: 无
;**         
;** 全局变量: 无
;** 调用模块: 无
;**
;** 作　者: 陈明计
;** 日　期: 2003年5月30日
;**-------------------------------------------------------------------------------------------------------
;** 修改人: 陈明计
;** 日　期: 2003年7月1日
;**------------------------------------------------------------------------------------------------------
;********************************************************************************************************/
Reset
			; LDR  r0, =ICU_BASE		
			; MOV	r1, #1
			; STR	r1, [r0, #ICU_CLKSEL_LOC]
			; MOV r1, #0
			; STR	r1, [r0, #ICU_CPUCLK_LOC]
        BL      InitStack               ;初始化堆栈

        BL     _SYSboot_ZI_Init

        BL	  _SYSSet_stack_flag
        
       ; BL    _SYSboot_Copy_CODE_To_SRAM
        ;Enable IRQ and FIQ Interrupt
	    MRS		r0,CPSR		
	    bic		r0,r0,#0xC0		
	    MSR     CPSR_c,r0   
        B __main      





;/*********************************************************************************************************
;** 函数名称: __user_initial_stackheap 
;** 功能描述: 库函数初始化堆和栈，不能删除
;** 
;** 输　入: 参考库函数手册
;**
;** 输　出: 参考库函数手册
;**         
;** 全局变量: 无
;** 调用模块: 无
;**
;** 作　者: 陈明计
;** 日　期: 2003年7月1日
;**-------------------------------------------------------------------------------------------------------
;** 修改人:
;** 日　期:
;**------------------------------------------------------------------------------------------------------
;********************************************************************************************************/
__user_initial_stackheap    
    LDR   r0,=bottom_of_heap
    MOV   pc,lr


;/*********************************************************************************************************
;** 函数名称: __rt_div0
;** 功能描述: 整数除法除数为0错误处理函数，替代原始的__rt_div0减少目标代码大小
;** 
;** 输　入: 参考库函数手册
;**
;** 输　出: 无
;**         
;** 全局变量: 无
;** 调用模块: 无
;**
;** 作　者: 陈明计
;** 日　期: 2003年7月1日
;**-------------------------------------------------------------------------------------------------------
;** 修改人:
;** 日　期:
;**------------------------------------------------------------------------------------------------------
;********************************************************************************************************/
__rt_div0

        B       __rt_div0

;/* 分配堆空间 */
        AREA    Myheap, DATA, NOINIT, ALIGN=2
bottom_of_heap     SPACE   256  ;库函数的堆空间

    END
;/*********************************************************************************************************
;**                            End Of File
;********************************************************************************************************/
