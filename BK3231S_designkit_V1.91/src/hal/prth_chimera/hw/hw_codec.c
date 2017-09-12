/*
 * MODULE NAME:    hw_codec.c
 * PROJECT CODE:   BlueStream
 * DESCRIPTION:    Code to drive codecs on prth_chimera
 * MAINTAINER:     Daire McNamara
 * DATE:           10 October 2001
 *
 * SOURCE CONTROL: $Id: hw_codec.c,v 1.18 2010/04/29 13:05:52 garyf Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 2001-2004 Ceva Inc.
 *     All rights reserved.
 *
 * REVISION HISTORY:
 *    V0.9     10 October 2001 -   DMN       - Initial Revision
 *
 * SOURCE: 
 * ISSUES:
 * NOTES TO USERS:
 *    
 */
#include "sys_config.h"
#include "hw_codec.h"
#include "hw_lc.h"
#include "lmp_sco_container.h"



//extern struct_beken_config g_beken_initial_config;


/******************************************************************************
 *
 * FUNCTION: HWcodec_Is_Valid_SCO_Conversion
 *
 * DESCRIPTION:
 *  Check if the platform (Tabasco/Codec combination) can
 *  support the proposed voice setting.
 *
 * RETURNS:
 *  0 if cannot support the proposed voice setting, 1 if it can.
 *
 *****************************************************************************/
boolean HWcodec_Is_Valid_SCO_Conversion(u_int16 new_voice_setting)
{
   boolean can_convert = 0; /* FALSE */
   
#if ((PRH_BS_CFG_SYS_LMP_SCO_SUPPORTED==1) || (PRH_BS_CFG_SYS_LMP_EXTENDED_SCO_SUPPORTED == 1))
   t_input_coding input_coding =   LMscoctr_Get_Input_Coding(new_voice_setting);
   u_int8 linear_pcm_sample_size = LMscoctr_Get_Input_Sample_Size(new_voice_setting);
   t_air_coding_format air_coding_format = LMscoctr_Get_Air_Coding(new_voice_setting);

   /*
    * If output coding == tranparent, can convert is true
    */
   if(air_coding_format == TRANS_ACF)
   {
       can_convert = 1;
   }
   else if(input_coding == CVSD_IC)
   {
   
       if(air_coding_format == CVSD_ACF)
       {
           can_convert = 1;
       }
   }

   /*
    * If input_coding == 16 bit linear PCM, 
    * can convert to CVSD, u-law, A-law, and to linear PCM.
    */
   else if(input_coding == LINEAR_IC)
   {
       if(linear_pcm_sample_size == 16)
       {
           can_convert = 1;
       }

       else if(air_coding_format == CVSD_ACF)
       {
// GF 28 April !! 
// As we cannot support 8 Bit PCM we need to put 
// a check back in place.  See Bug 2702
#if 0
/*           if((linear_pcm_sample_size >= 12) && 
              (linear_pcm_sample_size <= 15)) */
           {
               can_convert = 1;
           }
#else
           if((linear_pcm_sample_size >= 12) && 
              (linear_pcm_sample_size <= 16)) 
           {
               can_convert = 1;
           }
#endif

       }
   }

   /*
    * Can convert u-law to any of u-law, A-law, CVSD, transparent
    */
   else if(input_coding == U_LAW_IC)
   {
      can_convert = 1;
   }

   /*
    * Can convert A-law to any of A-law, u-law, CVSD, transparent
    */
   else if(input_coding == A_LAW_IC)
   {
      can_convert = 1;
   }

#else

   can_convert = 1;
#endif

   
   return can_convert;
}


/******************************************************************************
 *
 * FUNCTION: HWcodec_Get_VCI_Clk_Sel
 *
 * DESCRIPTION:
 *
 ******************************************************************************/
u_int8 HWcodec_Get_VCI_Clk_Sel(void)
{

    return 2;

//    if(current_mobile_platform==MTK_PLATFORM)
//    {
//        return 3;//slave
//    }
//    else
//    {
 //       return 2;
 //   }


}

/*******************************************************************************
 *
 * FUNCTION: HWcodec_Get_VCI_Clk_Sel_Map
 *
 * DESCRIPTION:
 *
 ******************************************************************************/
u_int8 HWcodec_Get_VCI_Clk_Sel_Map(void)
{
#if(BUILD_TYPE==UNIT_TEST_BUILD)
    return 0;
#else

    return 1;

//    if(current_mobile_platform==MTK_PLATFORM)
//    {
//      return 0;
//    }
//    else
//    {
//        return 1;
//    }


#endif
}


volatile u_int8 b_pcm_on=0;


/*******************************************************************************
 *
 * FUNCTION: HWcodec_Enable
 *
 * DESCRIPTION:
 *  Do anything special required to enable the codec.
 *
 ******************************************************************************/
void HWcodec_Enable(void)
{

    b_pcm_on=1;

    /* Nothing to do on Chimera */
        mSetHWBit(JAL_SYNC_DIR);
}


/*******************************************************************************
 *
 * FUNCTION: HWcodec_Disable
 *
 * DESCRIPTION:
 *  Do anything special required to disable the codec.
 *
 ******************************************************************************/
void HWcodec_Disable(void)
{
    b_pcm_on=0;

    /* Nothing to do on Chimera */
}


/*******************************************************************************
 *
 * FUNCTION: HWcodec_Increase_Volume
 *
 * DESCRIPTION:
 *     Do anything required on the codec interface to increase
 *     the volume from the codec.
 *
 ******************************************************************************/
void HWcodec_Increase_Volume(void)
{
    /* Nothing to do on Chimera */
}


/*******************************************************************************
 *
 * FUNCTION: HWcodec_Decrease_Volume
 *
 * DESCRIPTION:
 *     Do anything required on the codec interface to decrease
 *     the volume from the codec.
 *
 ******************************************************************************/
void HWcodec_Decrease_Volume(void)
{
}

/*
 * Set up chimera's codec to expect either
 * A-law, u-law, or linear PCM.
 */
void HWcodec_Set_Voice_Setting(u_int16 new_voice_setting)
{

#if ((PRH_BS_CFG_SYS_LMP_SCO_SUPPORTED==1) || (PRH_BS_CFG_SYS_LMP_EXTENDED_SCO_SUPPORTED == 1))
    u_int32 chimera_xr7_gpio_ctrl = *(u_int32 volatile *)0x11204;
    t_input_coding input_coding = LMscoctr_Get_Input_Coding(new_voice_setting);
    
    /*
     * Remove bits 23..16
     */
    chimera_xr7_gpio_ctrl &= (0x00ff << 16);

    switch(input_coding)
    {
        case LINEAR_IC:
	chimera_xr7_gpio_ctrl |= (0x1000 << 16);
	break;

	case U_LAW_IC:
	break;

	case A_LAW_IC:
	chimera_xr7_gpio_ctrl |= (0x2000 << 16);
	break;
    }

    *(u_int32 volatile *)0x11204 = chimera_xr7_gpio_ctrl;

#endif

}

