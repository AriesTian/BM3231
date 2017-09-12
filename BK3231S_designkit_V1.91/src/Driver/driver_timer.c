//======================================================
// File Name:     BK_TIMER_API.c
// Author:        yubei
// Created Date:  @2015-02-12
// Description:   Project BK3231S - Test Firmware for Massive Production
//                GPIO protocol
//                Source from BK3231  firmware: bk3000_timer.c
//======================================================
#include "include.h"
intr_callback  g_bk_timer_func[3];

volatile uint8 bk_timer_hit=0x00;
volatile uint16	bk_timer_T0_cnt,bk_timer_T1_cnt,bk_timer_T2_cnt;
uint32 dT0Tmp=0;//xffff;
uint32 dT1Tmp=0;//xffff;
uint32 dT2Tmp=0;//xffff;
extern volatile uint8 b_26M_colsed;

void Timer_Initial(void)//timer_sel:1:16M,0:32k	
{
	uint32 intr_v;
	intr_v = REG_AHB0_ICU_PWM4CLKCON;
	intr_v &= ~(0x03<<BIT_TIMER_CLK_PWD);	//open Timer clk
#ifdef TIMER_CLK_IS_16M
	intr_v |= 1<<BIT_TIMER_CLK_SEL;	//set timer clk
#else
    intr_v &= ~(1<<BIT_TIMER_CLK_SEL);	//set timer clk
#endif    
	REG_AHB0_ICU_PWM4CLKCON = intr_v;
	REG_APB_TIMER_CTRL = 0;
    REG_AHB0_ICU_INT_ENABLE  |=  (INT_STATUS_TIMER|INT_STATUS_TIMER_WAKEUP);
    //g_bk_timer_func[0] = 0x00;
    //g_bk_timer_func[1] = 0x00;
    //g_bk_timer_func[2] = 0x00;
}
/*
min time = 62.5ns(16M)	31.25us(32k)
max time = 4.096ms(16M)  2.048s(32k)
only 16M and 32k sel
note:@16M:the max ability is 13uS @no ather function
//sck:T_16M or T_32K
//for T_32K:time is us
//for T_16M:time is ns
*/
void Timer_Start(uint8 index,uint32 cnt)
{
    uint32 count;
#ifdef TIMER_CLK_IS_16M
    count = (cnt*16 )/1000;	
#else
    count = (cnt*32)/1000;
#endif
    //g_bk_timer_func[index]=func;
   	switch(index)
	{
		case 0:
			REG_APB_TIMER0_TIMETO = (count&0xffff);
			bk_timer_T0_cnt = (count&0xffff);
			REG_APB_TIMER_CTRL |=( bit_PT0_ENABLE | bit_PT0_INT_ENABLE);
			break;
		case 1:
			REG_APB_TIMER1_TIMETO = (count&0xffff);
			bk_timer_T1_cnt = (count&0xffff);
			REG_APB_TIMER_CTRL |= (bit_PT1_ENABLE | bit_PT1_INT_ENABLE);
			break;
		default:
			break;
	}
}
void HW_set_aux_sys_timer(uint32 cnt)
{
    uint32 count;
    count = (cnt*32)/1000;

    REG_APB_TIMER2_TIMETO = (count&0xffff);
    REG_APB_TIMER_CTRL |= (bit_PT2_ENABLE | bit_PT2_INT_ENABLE);
}

void Timer_Stop(uint8 index)
{
    uint32 intr_v;

    if(index==0)
    {
        intr_v = REG_APB_TIMER_CTRL;
        intr_v &= ~bit_PT0_ENABLE;
        intr_v &= ~bit_PT0_INT_ENABLE;
        REG_APB_TIMER_CTRL = intr_v;
        bk_timer_hit &= ~0x01;

    }
    else if (index == 1)
    {
        intr_v = REG_APB_TIMER_CTRL;
        intr_v &= ~bit_PT1_ENABLE;
        intr_v &= ~bit_PT1_INT_ENABLE;
        REG_APB_TIMER_CTRL = intr_v;
        bk_timer_hit &= ~0x02;
    }
    else if (index == 2)
    {
        intr_v = REG_APB_TIMER_CTRL;
        intr_v &= ~bit_PT2_ENABLE;
        intr_v &= ~bit_PT2_INT_ENABLE;
        REG_APB_TIMER_CTRL = intr_v;
        bk_timer_hit &= ~0x04;
    }
    //g_bk_timer_func[index]=0;
}

void Timer_Updata(uint8 index,uint32 time, intr_callback func)
//sck:T_16M or T_32K
//for T_32K:time is us
//for T_16M:time is ns
//for updata timer fun & counter
//if don't need updata counter,don't use this code
{
    uint32 count;

#ifdef TIMER_CLK_IS_16M
    count = (time*16 )/1000;	
#else
    count = (time*32)/1000;
#endif
    g_bk_timer_func[index]=func;

 	switch(index)
	{
		case 0:
			bk_timer_T0_cnt = (count&0xffff);
		//	REG_APB_TIMER_CTRL |=  bit_PT0_INT_ENABLE;
			break;
		case 1:
			bk_timer_T1_cnt = (count&0xffff);
		//	REG_APB_TIMER_CTRL |=  bit_PT1_INT_ENABLE;
			break;
		case 2:
			bk_timer_T2_cnt = (count&0xffff);
		//	REG_APB_TIMER_CTRL |=  bit_PT2_INT_ENABLE;
			break;
		default:
			break;
	}
}

void Timer_ISR0(uint8 sck)
{
	uint32 tmpdata;
    
	tmpdata = REG_APB_TIMER0_RDBACK;
	if((( tmpdata - dT0Tmp)>4) || (sck))
	{
		bk_timer_hit |= 0x01;
		REG_APB_TIMER0_TIMETO = bk_timer_T0_cnt;
		
	}
	dT0Tmp = tmpdata;
}
void Timer_ISR1(uint8 sck)
{
	uint32 tmpdata;
	tmpdata = REG_APB_TIMER1_RDBACK;
	if((( tmpdata - dT1Tmp)>4) || (sck))
	{
		bk_timer_hit |= 0x02;
		REG_APB_TIMER1_TIMETO = bk_timer_T1_cnt;
		//BK3231S_GPIO_DATA(PORTA) ^= GPIO(1);
	}
	dT1Tmp = tmpdata;
}
void Timer_ISR2(uint8 sck)
{
	uint32 tmpdata;
	tmpdata = REG_APB_TIMER2_RDBACK;
	if((( tmpdata - dT2Tmp)>4) || (sck))
	{
		bk_timer_hit |= 0x04;
	}
	dT2Tmp = tmpdata;
}

void Timer_ISR(void)
{
	uint32 intr_v;
	intr_v = REG_APB_TIMER_INTR;
    
	if(intr_v & bit_PT0_INT_FLAG)
    {   
    	#ifdef TIMER_CLK_IS_16M
    		Timer_ISR0(T_16M);
    	#else
    		Timer_ISR0(T_32K);
    	#endif
    }
	if(intr_v & bit_PT1_INT_FLAG)
    {   
    	#ifdef TIMER_CLK_IS_16M
    		Timer_ISR1(T_16M);
    	#else
    		Timer_ISR1(T_32K);
    	#endif
    }    
	if(intr_v & bit_PT2_INT_FLAG)
    {   
        if(b_26M_colsed)
        {
            REG_AHB0_ICU_CEVA_CLKCON=0x00;
            BK3000_XVR_REG_0x09 = 0x19407D00;
            Set_CPU_PLL_clk(1); 
        }
        Timer_Stop(2);
        LSLCslot_Handle_AUX_TIM();

    }
	REG_APB_TIMER_INTR = intr_v;
}


void Timer_Serve_Table( void )
{
    if (bk_timer_hit != 0x00)
    {
        if(bk_timer_hit&0x01)
        {
            g_bk_timer_func[0]();
            bk_timer_hit &= ~0x01;
        }
        if(bk_timer_hit&0x02)
        {
            g_bk_timer_func[1]();
            bk_timer_hit &= ~0x02;
        }
        if(bk_timer_hit&0x04)
        {
            g_bk_timer_func[2]();
            bk_timer_hit &= ~0x04;
        }
    }
}






