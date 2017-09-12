#include "include.h"
#include "sys_irq.h"



void Enable_ICU_Intr(void)
{    
    REG_AHB0_ICU_INT_ENABLE|=(    

        INT_STATUS_CEVA|
        INT_STATUS_CEVA_WAKEUP
    );
    REG_AHB0_ICU_IRQ_ENABLE=INT_IRQ_BIT|FIQ_IRQ_BIT;   
}
void ceva_initial(void)
{
    REG_AHB0_ICU_CEVA_CLKCON = 0x00000000 ;  //Enable CEVA clock 
    REG_AHB0_ICU_INT_ENABLE   = (INT_STATUS_CEVA<<16) + INT_STATUS_CEVA;
    REG_AHB0_FIQ_PRIORITY_EN |=  INT_STATUS_CEVA;	// ZGF@20150123 added for BK3231S 

    //p_APB_CEVA_ADDR[0x1809]   = 0x00008000 ; // 0x6024. USE_HAB_CRL1=1                    
    //p_APB_CEVA_ADDR[0x1812]   = (0x20<<12) ; // Initial Srch Win Ext. Setup Rx Mode=0. Extended Window 32us. 
    //p_APB_CEVA_ADDR[0x183C]   = 0x00000000 ; // 0x60F0. Not sure for purpose.
}

void CLK32K_AutoCali_Enable(uint16  sleep_time)
{
    uint32  rdata;

    // 16MHz XTAL Sleep (Power-down) Time is 2048*31.25us=64ms
    REG_AHB0_ICU_SLEEP_TIME  = sleep_time ; 

    // 32KHz Clock calibration config
    rdata = REG_AHB0_ICU_RC32K_CONFG ; 
    rdata &= SET_MANU_EN  ;  //Manually calibration is disable 
    rdata |= SET_CALI_MODE;  //Mode=1 --> calibrate to 32KHz 
    rdata |= SET_SPI_TRIG ;  //SPI_Trigger=1 --> enable calibration 
    REG_AHB0_ICU_RC32K_CONFG = rdata ; 
}




//--------------------------------
// Read the rstnreg to check whether it is reset from power-on or DeepSleep.
//    1. When chip power-on reset, the rstnreg is reset to 0.
//    2. Write 0x1 to rstnreg before DeepSleep enable.
//    3. When wake-up from DeepSleep, the rstnreg will be the latched 0x1. 
//--------------------------------
uint8 system_reset_reson(void)
{
    if(REG_AHB0_RSTNREG_LATCH & 0x1)
    {
        
        return 0;
    }
    else 
    {
        
        REG_AHB0_RSTNREG_LATCH=0x1;

        return 1;
    }
}

void  Close_Baseband_Clock(void)
{
    REG_AHB0_ICU_CEVA_CLKCON=0x01; //disable baseband clock  
}

void Open_Baseband_Clock(void)
{
    REG_AHB0_ICU_CEVA_CLKCON=0x00; // Open CEVA clock
}
void Set_CPU_Speed_32K(void)
{
    REG_AHB0_ICU_DIGITAL_PWD  = 0x00;//SET_CLK16M_PWD ;

    REG_AHB0_ICU_ANALOG_MODE &=  ~(0x1<<18);// Enable Test Mode of pwdSARADCldo1V
    //delay_us(2);
    REG_AHB0_ICU_ANALOG_MODE &=  ~(0x1<<21);// Enable Test Mode of pwd48MPLL1V
    REG_AHB0_ICU_CORECLKCON  = 0;
    REG_AHB0_ICU_DIGITAL_PWD = SET_CB_BAIS_PWD + SET_HP_LDO_PWD + SET_REF1V_PWD;
    REG_AHB0_ICU_CLKSRCSEL = SET_CLK_SEL_32K;
    //delay_us(10);
    
}
void Set_CPU_Speed_16M(void)
{
    u_int32 cpu_flags;
  
    SYSirq_Disable_Interrupts_Save_Flags(&cpu_flags);
    REG_AHB0_ICU_CLKSRCSEL = SET_CLK_SEL_16M;
    REG_AHB0_ICU_CORECLKCON  = 0x00;
    //REG_AHB0_ICU_DIGITAL_PWD  = 0x02;//SET_CLK16M_PWD ;   
	//REG_AHB0_ICU_ANALOG_MODE &=  ~(0x1<<18);// Enable Test Mode of pwdSARADCldo1V
	delay_us(1);
	//REG_AHB0_ICU_ANALOG_MODE &=  ~(0x1<<21);// Enable Test Mode of pwd48MPLL1V
	REG_AHB0_ICU_ANALOG0_PWD |= ((0x1<<18) + (0x1<<21));
    
    SYSirq_Interrupts_Restore_Flags(cpu_flags);
}

void Set_CPU_PLL_clk(uint8 clk_div)
{
    u_int32 cpu_flags;
 
    SYSirq_Disable_Interrupts_Save_Flags(&cpu_flags);
    REG_AHB0_ICU_DIGITAL_PWD  = 0x00;//SET_CLK48M_PWD ;// Power-up 16M and HP_LDO_PWD. Power-down 48M
	BK3000_XVR_REG_0x09 = XVR_ANALOG_REG_BAK[9]  = 0x19407D80;
	REG_AHB0_ICU_ANALOG0_PWD &=~((0x1<<18) + (0x1<<21));// Force pwd48MPLL1V=0 and pwdSARADCldo1V=0
	delay_us(5);
	BK3000_XVR_REG_0x09 = XVR_ANALOG_REG_BAK[9]  = 0x19407D00;
	delay_us(15);
	REG_AHB0_ICU_CORECLKCON  = (clk_div<<BIT_CORE_CLK_DIV);
	REG_AHB0_ICU_CLKSRCSEL   = SET_CLK_SEL_96M ;
    SYSirq_Interrupts_Restore_Flags(cpu_flags);
    
}


void ICU_Initial(void)
{
   
    REG_AHB0_JTAG_MODE       = 0x0 ;// Close JTAG Mode  
	REG_AHB0_ICU_INT_ENABLE = 0x00;
    REG_AHB0_ICU_DIGITAL_PWD  = 0x00;
    REG_AHB0_DCO16M_PWD 	 = 0x1 ;
    REG_AHB0_BOOST_READY_DLY=0x500;
    
#ifdef LPO_GEN_IS_16M_TO_32K
    REG_AHB0_ICU_LPO_CLKCON =0X00;
#else
    REG_AHB0_ICU_LPO_CLKCON =0X02;
#endif
    REG_AHB0_ICU_CEVA_CLKCON=0x00;
    REG_AHB0_FIQ_PRIORITY_EN=0X05;
	 BK3000_XVR_REG_0x09 = XVR_ANALOG_REG_BAK[9]  = 0x19407D80;
 
    //REG_AHB0_ICU_ANALOG1_PWD |= 1<<24;//FLASH BOOST BIT
    REG_AHB0_ICU_ANALOG_MODE |= (0x1<<18);// Enable Test Mode of pwdSARADCldo1V
    delay_us(10);
	REG_AHB0_ICU_ANALOG_MODE |= (0x1<<21);// Enable Test Mode of pwd48MPLL1V
	  delay_us(2);
   BK3000_XVR_REG_0x09 = XVR_ANALOG_REG_BAK[9]  = 0x19407D00;
	  delay_us(20);

#if 0    
    Set_CPU_Speed_16M();
#else
    Set_CPU_PLL_clk(1);//48M CLK
#endif
    delay_us(20);
    
    set_flash_clk(8);//0:set flash clk=48M;8:16M
}



