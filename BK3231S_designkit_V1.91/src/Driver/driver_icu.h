#ifndef __DRIVER_ICU_H_
#define __DRIVER_ICU_H_




void ICU_Initial(void);
uint8 system_reset_reson(void);
void Enable_ICU_Intr(void);
void  Close_Baseband_Clock(void);
void Open_Baseband_Clock(void);
void Set_CPU_Speed_16M(void);
void Set_CPU_Speed_96M(void);
void BK_IDLE_wakeup_recovery(void);
void set_CPU_idle(void);
extern void Set_CPU_PLL_clk(uint8 clk_div);


#endif

