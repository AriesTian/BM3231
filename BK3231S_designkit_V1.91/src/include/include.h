//======================================================
// File Name:     include.h
// Author:        Zhou Guofei 
// Created Date:  
// Description:   Include Header file used in C Firmware Test
//                Re-Created for BK3231S @2014-09-11
//======================================================


#ifndef _FIRMWARE_INCLUDE_H_
#define _FIRMWARE_INCLUDE_H_


//----------------------------------------------
typedef unsigned char  BYTE;
typedef signed   long  int32;      //  有符号32位整型变量
typedef signed   short int16;      //  有符号16位整型变量
typedef signed   char  int8;       //  有符号8位整型变量 
typedef unsigned long  uint32;     //  无符号32位整型变量
typedef unsigned short uint16;     //  无符号16位整型变量
typedef unsigned char  uint8;      //  无符号8位整型变量 
typedef float          fp32;       //  单精度浮点数（32位长度）
typedef double         fp64;       //  双精度浮点数（64位长度）

typedef void (*intr_callback)(void);





#include "BK3231S_reg.h"
#include "sys_types.h"	//add 20170803
#include "config.h"
#include "driver_uart.h"
#include "driver_icu.h"
#include "driver_gpio.h"
#include "driver_xvr.h"
#include "driver_timer.h"
#include "driver_WDT.h"
#include "driver_flash.h"
#include "driver_spi.h"
#include "keyboard.h"
#include "main.h"


#define FAST_CALL   __attribute__((section("fastcall")))





#endif

