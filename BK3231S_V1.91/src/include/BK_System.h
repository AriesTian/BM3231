//======================================================
// File Name:     BK3431_System.h
// Author:        Zhou Guofei 
// Created Date:  @2013-07-04
// Description:   Project BK3431 - Test Firmware for Massive Production 
//                Header file to external declarate Chip System applications  
//======================================================

#ifndef  _BK3431_SYSTEM_API_H
#define  _BK3431_SYSTEM_API_H

//void cpu_goto_idle(void);
void cpu_goto_s0(void);
void CPU_Delay(uint16 times);
void Delay(uint16 times);
void ICU_Initial(void);
void xver_initial(void); 

void GPIO_Initial(void);
void GPIO_A_Output_Enable(void);
void GPIO_A_Output(uint8 data);
void GPIO_B_Output_Enable(void);
void GPIO_B_Output(uint8 data);
void GPIO_C_Output_Enable(void);
void GPIO_C_Output(uint8 data);
void GPIO_D_Output_Enable(void);
void GPIO_D_Output(uint8 data);
void GPIO_E_Output_Enable(void);
void GPIO_E_Output(uint8 data);


void DeepSleep_Enable(void);
void DeepSleep_WakeUp_CFG(uint8 gpio_port, uint8 gpio_bit, uint8 posedge_wakeup);

void Beken_Digtial_OpMode(uint8 EnterMode);
void Beken_PowerDown_Peri(void);
void SubDeepSleep_Enable(uint32 time_to_value, uint8 clk32k_pwd_set);

void GPIO_Intr_WakeUp_CFG(uint8 gpio_port, uint8 gpio_bit); 
void CLK32K_AutoCali_Enable(uint16  sleep_time); 
void CLK32K_Cali_Disable(void); 


#endif
