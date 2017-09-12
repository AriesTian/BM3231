//======================================================
// File Name:     BK_TIMER_Api.h
// Author:        yubei
// Created Date:  @2015-02-012
// Description:   funtion to apply TIMER Interface
//======================================================

#ifndef _DRIVER_TIMER__
#define _DRIVER_TIMER__


#define T_16M	1
#define T_32K	0

#define TIMER_0         0x00
#define TIMER_1         0x01
#define TIMER_2         0x02
extern volatile uint8 bk_timer_hit;

void Timer_Initial(void);
void Timer_ISR(void);
void Timer_Stop(uint8 index);
void Timer_Updata(uint8 index,uint32 time, intr_callback func);
void Timer_Start(uint8 index,uint32 time);//, intr_callback func);
void Timer_Serve_Table( void );


#endif


