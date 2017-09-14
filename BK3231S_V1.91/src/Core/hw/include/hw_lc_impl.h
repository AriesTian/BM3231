#ifndef _PARTHUS_HW_LSLC_IMPL_
#define _PARTHUS_HW_LSLC_IMPL_

/*
 * MODULE NAME:    hw_lc_impl.h
 * PROJECT CODE:    BlueStream
 * DESCRIPTION:    Hardware Access Functions
 * MAINTAINER:     Ivan Griffin
 * DATE:           1 Jun 1999
 *
 * SOURCE CONTROL: $Id: hw_lc_impl.h,v 1.128 2011/04/01 16:02:53 garyf Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 1999-2004 Ceva Inc.
 *     All rights reserved.
 *
 * REVISION HISTORY:
 *    1 June 1999 -   jn       - Initial Version V0.9
 *    14 July 1999 -   ig       - Moved macros to inline functions
 *
 */

#include "sys_config.h"
#include "hw_memcpy.h"
#include "hw_lc.h"    
#include "lslc_clk.h"
#include "hw_delay.h"

#if (PRAGMA_INLINE==1)
#pragma inline(\
HW_set_bd_addr,\
HW_set_bd_addr_via_uap_lap_nap,\
HW_set_uap_lap,\
HW_set_nap,\
HW_get_uap_lap,\
HW_get_nap,\
HW_get_bd_addr_Ex,\
HW_set_sync,\
HW_get_sync_Ex,\
HW_set_intraslot_offset,\
HW_get_intraslot_offset,\
HW_Get_Intraslot_Avoid_Race,\
HW_set_enc_key,\
HW_get_enc_key_Ex,\
HW_set_bt_clk,\
HW_set_bt_clk_offset,\
HW_get_bt_clk,\
HW_Get_Bt_Clk_Avoid_Race,\
HW_set_native_clk,\
HW_get_native_clk,\
HW_Get_Native_Clk_Avoid_Race,\
HW_set_am_addr,\
HW_get_am_addr,\
HW_set_encrypt,\
HW_get_encrypt,\
HW_set_whiten,\
HW_get_whiten,\
HW_set_sleep_status,\
HW_get_sleep_status,\
HW_set_use_lf,\
HW_get_use_lf,\
HW_set_slave,\
HW_get_slave,\
HW_set_page,\
HW_get_page,\
HW_set_sco_cfg0,\
HW_get_sco_cfg0,\
HW_set_sco_cfg1,\
HW_get_sco_cfg1,\
HW_set_sco_cfg2,\
HW_get_sco_cfg2,\
HW_set_sco_fifo,\
HW_get_sco_fifo,\
HW_set_vci_clk_sel,\
HW_get_vci_clk_sel,\
HW_set_loop,\
HW_get_loop,\
HW_set_test_eco,\
HW_get_test_eco,\
HW_set_test_crc,\
HW_get_test_crc,\
HW_set_test_hec,\
HW_get_test_hec,\
HW_set_test_radio,\
HW_get_test_radio,\
HW_set_vci_clk_sel_map,\
HW_get_vci_clk_sel_map,\
HW_set_test_msg,\
HW_get_test_msg,\
HW_set_dwh_ini,\
HW_get_dwh_ini,\
HW_set_dwh2_ini,\
HW_get_dwh2_ini,\
HW_set_crc_ini,\
HW_get_crc_ini,\
HW_set_pkd_intr_mask,\
HW_get_pkd_intr_mask,\
HW_set_pkd_rx_hdr_intr_mask,\
HW_get_pkd_rx_hdr_intr_mask,\
HW_set_pka_intr_mask,\
HW_get_pka_intr_mask,\
HW_set_no_pkt_rcvd_intr_mask,\
HW_get_no_pkt_rcvd_intr_mask,\
HW_set_sync_det_intr_mask,\
HW_get_sync_det_intr_mask,\
HW_set_tim_intr_mask,\
HW_get_tim_intr_mask,\
HW_set_aux_tim_intr_mask,\
HW_get_aux_tim_intr_mask,\
HW_set_gio_intr_mask0,\
HW_get_gio_intr_mask0,\
HW_set_gio_intr_mask1,\
HW_get_gio_intr_mask1,\
HW_set_gio_intr_mask2,\
HW_get_gio_intr_mask2,\
HW_set_gio_intr_mask3,\
HW_get_gio_intr_mask3,\
HW_set_pkd_intr_clr,\
HW_set_pkd_rx_hdr_intr_clr,\
HW_set_pka_intr_clr,\
HW_set_no_pkt_rcvd_intr_clr,\
HW_set_sync_det_intr_clr,\
HW_set_tim_intr_clr,\
HW_set_aux_tim_intr_clr,\
HW_set_gio_intr_clr0,\
HW_set_gio_intr_clr1,\
HW_set_gio_intr_clr2,\
HW_set_gio_intr_clr3,\
HW_get_no_pkt_rcvd_intr_clr,\
HW_get_sync_det_intr_clr,\
HW_get_pkd_intr,\
HW_get_pkd_rx_hdr_intr,\
HW_get_pka_intr,\
HW_get_no_pkt_rcvd_intr,\
HW_get_sync_det_intr,\
HW_get_tim_intr,\
HW_get_aux_tim_intr,\
HW_get_gio_intr0,\
HW_get_gio_intr1,\
HW_get_gio_intr2,\
HW_get_gio_intr3,\
HW_set_tx_len,\
HW_get_tx_len,\
HW_set_tx_type,\
HW_get_tx_type,\
HW_set_tx_flow,\
HW_get_tx_flow,\
HW_set_tx_arqn,\
HW_get_tx_arqn,\
HW_set_tx_seqn,\
HW_get_tx_seqn,\
HW_set_tx_buf,\
HW_get_tx_buf,\
HW_set_transmit,\
HW_get_transmit,\
HW_set_tx_half,\
HW_get_tx_half,\
HW_set_tx_p_flow,\
HW_get_tx_p_flow,\
HW_set_tx_l_ch,\
HW_get_tx_l_ch,\
HW_get_tx0_over,\
HW_get_tx0_under,\
HW_get_tx1_over,\
HW_get_tx1_under,\
HW_get_tx2_over,\
HW_get_tx2_under,\
HW_set_rx_mode,\
HW_get_rx_mode,\
HW_set_tx_mode,\
HW_get_tx_mode,\
HW_set_abort_on_wrong_am_addr,\
HW_get_abort_on_wrong_am_addr,\
HW_set_rx_buf,\
HW_get_rx_buf,\
HW_set_err_sel,\
HW_get_err_sel,\
HW_set_win_ext,\
HW_get_win_ext,\
HW_set_freeze_bit_cnt,\
HW_get_freeze_bit_cnt,\
HW_get_rx_len,\
HW_get_rx_type,\
HW_get_rx_flow,\
HW_get_rx_arqn,\
HW_get_rx_seqn,\
HW_get_rx_am_addr,\
HW_get_rx_l_ch,\
HW_get_rx_p_flow,\
HW_get_rx_pkt,\
HW_get_hec_err,\
HW_get_crc_err,\
HW_get_rx_hdr,\
HW_get_rx0_over,\
HW_get_rx0_under,\
HW_get_rx1_over,\
HW_get_rx1_under,\
HW_get_rx2_over,\
HW_get_rx2_under,\
HW_get_err_cnt,\
HW_set_gio_high,\
HW_get_gio_high,\
HW_set_gio_low,\
HW_get_gio_low,\
HW_set_gio0,\
HW_get_gio0,\
HW_set_gio1,\
HW_get_gio1,\
HW_set_gio2,\
HW_get_gio2,\
HW_set_gio3,\
HW_get_gio3,\
HW_get_gio_status,\
HW_set_ser_cfg,\
HW_get_ser_cfg,\
HW_set_ser_data,\
HW_get_ser_data,\
HW_set_aux_timer,\
HW_get_aux_timer,\
HW_set_tx_delay,\
HW_get_tx_delay,\
HW_set_rx_delay,\
HW_get_rx_delay,\
HW_set_add_bt_clk_relative,\
HW_get_add_bt_clk_relative,\
HW_set_write_absolute_bt_clk,\
HW_set_delayed_bt_clk_update,\
HW_set_freeze_bt_clk,\
HW_get_freeze_bt_clk,\
HW_get_minor_revision,\
HW_get_major_revision,\
HWjal_Set_Rst_Code,\
HWjal_Get_Rst_Code,\
HW_toggle_tx_buf,\
HW_toggle_rx_buf)

#if (PRH_BS_CFG_SYS_SCO_REPEATER_SUPPORTED==1)
#pragma inline(\
HW_set_sco_repeater_bit,\
HW_get_sco_repeater_bit)
#endif


#if (BUILD_TYPE==UNIT_TEST_BUILD)
#pragma inline(HW_get_pkd_intr_clr,\
HW_get_pkd_rx_hdr_intr_clr,\
HW_get_pka_intr_clr,\
HW_get_tim_intr_clr,\
HW_get_aux_tim_intr_clr,\
HW_get_gio_intr_clr0,\
HW_get_gio_intr_clr1,\
HW_get_gio_intr_clr2,\
HW_get_gio_intr_clr3,\
HW_set_pkd_intr,\
HW_set_pkd_rx_hdr_intr,\
HW_set_pka_intr,\
HW_set_no_pkt_rcvd_intr,\
HW_set_sync_det_intr,\
HW_set_tim_intr,\
HW_set_aux_tim_intr,\
HW_set_gio_intr0,\
HW_set_gio_intr1,\
HW_set_gio_intr2,\
HW_set_gio_intr3,\
HW_set_tx0_over,\
HW_set_tx0_under,\
HW_set_tx1_over,\
HW_set_tx1_under,\
HW_set_tx2_over,\
HW_set_tx2_under,\
HW_set_rx_len,\
HW_set_rx_type,\
HW_set_rx_flow,\
HW_set_rx_arqn,\
HW_set_rx_seqn,\
HW_set_rx_am_addr,\
HW_set_rx_l_ch,\
HW_set_rx_p_flow,\
HW_set_rx_pkt,\
HW_set_hec_err,\
HW_set_crc_err,\
HW_set_rx_hdr,\
HW_set_rx0_over,\
HW_set_rx0_under,\
HW_set_rx1_over,\
HW_set_rx1_under,\
HW_set_rx2_over,\
HW_set_rx2_under,\
HW_set_rst_code,\
HW_set_err_cnt,\
HW_set_gio_status)
#endif /*#if (BUILD_TYPE==UNIT_TEST_BUILD)*/

#endif

#if (PRH_BS_DEV_USE_CACHED_BT_CLOCKS==1)
#include "hw_register.h"
#include "hw_jal_defs.h"
extern mHWreg_Create_Cache_Register(JAL_NATIVE_CLK);
extern mHWreg_Create_Cache_Register(JAL_BT_CLK_OFFSET);
#endif


/***********************************************************************
*
* This section define all the functions which write to and read
* the common control registers
*
************************************************************************/

/* Set Bluetooth Device Address */
__INLINE__ void HW_set_bd_addr(const t_bd_addr *p_bda)
{
#ifdef HW_DATA32
    /*
     * Write to hardware using only 32 bit words.
     */
    u_int32 bd_U32x2[2];
    BDADDR_Convert_to_U32x2(p_bda, bd_U32x2);
    mSetHWEntry64(JAL_BD_ADDR, bd_U32x2);
#else
    /*
     * Direct byte move
     */
    BDADDR_Get_Byte_Array_Ex(bda, (u_int8*)JAL_BD_ADDR_ADDR);
#endif

}

/*
 * Set BD_ADDR using uap_lap and nap fields (efficient).
 */
__INLINE__ void HW_set_bd_addr_via_uap_lap_nap(t_uap_lap uap_lap, t_nap nap)
{
    mSetHWEntry32(JAL_UAP_LAP, uap_lap);
    mSetHWEntry32(JAL_NAP, nap);
}

/*
 * Get/Set BD_ADDR using separate access to JAL_LAP_UAP JAL_NAP registers
 */
__INLINE__ void HW_set_uap_lap(t_uap_lap uap_lap)
                                        { mSetHWEntry32(JAL_UAP_LAP, uap_lap); }
__INLINE__ void HW_set_nap(t_nap nap)   { mSetHWEntry32(JAL_NAP, nap); }
__INLINE__ u_int32 HW_get_uap_lap(void) { return mGetHWEntry32(JAL_UAP_LAP); }
__INLINE__ u_int32 HW_get_nap(void)     { return mGetHWEntry32(JAL_NAP); }

/*
 * Get Bluetooth Device Address
 */
__INLINE__ void HW_get_bd_addr_Ex(t_bd_addr *p_bda)
{
#ifdef HW_DATA32
    /*
     * Write to hardware using only 32 bit words.
     */
    u_int32 bd_32[2];
    mGetHWEntry64_Ex(JAL_BD_ADDR, bd_32);
    BDADDR_Set_LAP_UAP_NAP(p_bda,
            bd_32[0]&0xFFFFFF, (t_uap) (bd_32[0]>>24), bd_32[1]);
#else
    /*
     * Direct byte read
     */
    BDADDR_Assign_from_Byte_Array(bda, (const u_int8*)JAL_BD_ADDR_ADDR);
#endif
}

#if (PRH_BS_CFG_SYS_SCO_REPEATER_SUPPORTED==1)
/*
 * SCO Repeater NT clock phase adjustment CONTROL REGISTER
 */
/* Set NT phase is adjusted by RX packet control*/
__INLINE__ void HW_set_sco_repeater_bit(const u_int value) { mSetHWEntry(JAL_SCO_REPEATER_BIT, value); }
/* Get state if NT phase is adjusted by RX packet control */
__INLINE__ u_int HW_get_sco_repeater_bit(void) { return mGetHWEntry(JAL_SCO_REPEATER_BIT); }
#endif


/* Set Syncword */
__INLINE__ void HW_set_sync(const u_int32 *sync) { mSetHWEntry64(JAL_SYNC, sync); }
__INLINE__ void HW_set_sync_U32(const u_int32 low_word, const u_int32 high_word)
{
    mSetHWEntry32(JAL_SYNC, low_word);    mSetHWEntry32(JAL_SYNC2, high_word);
}

/* Get Syncword */
__INLINE__ void HW_get_sync_Ex(u_int32 *sync) { mGetHWEntry64_Ex(JAL_SYNC, sync); }


/* Set Intraslot Offset */
__INLINE__ void HW_set_intraslot_offset(const u_int32 offset)
{


    mSetHWEntry32(JAL_INTRASLOT_OFFSET, offset);
#if (PRH_BS_DEV_USE_CACHED_BT_CLOCKS==1)
    /* invalidate cached piconet clock */
    mHWreg_Clear_Cache_Register(JAL_BT_CLK_OFFSET);
#endif    
}

/* Get Intraslot Offset */
__INLINE__ u_int32 HW_get_intraslot_offset(void) { return mGetHWEntry32(JAL_INTRASLOT_OFFSET); }

/* Get Intraslot Offset avoid race on packet header update */
__INLINE__ u_int32 HW_Get_Intraslot_Avoid_Race(void)
{
    u_int32 intraslot_offset = HW_get_intraslot_offset();


    if (HW_get_intraslot_offset() != intraslot_offset)
    {   /* transitioning => re-read */
        intraslot_offset = HW_get_intraslot_offset();
    }    
    return intraslot_offset;
}

/* Get Encryption Key */
__INLINE__ void HW_set_enc_key(const u_int32* enc_key)
{
    mSetHWEntry128( JAL_ENC_KEY, enc_key);
}

/* Get Encryption Key */
__INLINE__ void HW_get_enc_key_Ex(u_int32 *enc_key)
{
    mGetHWEntry128_Ex(JAL_ENC_KEY, enc_key);
}


/* Get Native Clock */
__INLINE__ t_clock volatile HW_get_native_clk(void)
{
#if (PRH_BS_DEV_USE_CACHED_BT_CLOCKS==1)
    mHWreg_Load_Cache_Register(JAL_NATIVE_CLK);
    return mHWreg_Get_Cache_Register(JAL_NATIVE_CLK);
#else
    return mGetHWEntry32(JAL_NATIVE_CLK);
#endif
}

/* Get Slave Mode */
__INLINE__ u_int HW_get_slave(void) { return mGetHWEntry(JAL_SLAVE); }

#if (BUILD_TYPE==UNIT_TEST_BUILD)
/* Set Bluetooth Clock: Currently only used by ATS. */
__INLINE__ void HW_set_bt_clk(t_clock bt_clk)
{
    /*
     * Write direct to BT_CLK_OFFSET register, no adjustments
     * required in ATS to emulate hardware.
     * Note if this is required on real hardware, would need to
     * calculate clk_offset to set requested bt_clk indirectly.
     */
    mSetHWEntry32(JAL_BT_CLK_OFFSET, bt_clk);
#if (PRH_BS_DEV_USE_CACHED_BT_CLOCKS==1)
    /* invalidate cached piconet clock */
    mHWreg_Clear_Cache_Register(JAL_BT_CLK_OFFSET);
#endif
}
#endif /*(BUILD_TYPE==UNIT_TEST_BUILD)*/

/* Get Bluetooth Clock */
__INLINE__ t_clock HW_get_bt_clk(void)
{
#if (BUILD_TYPE!=UNIT_TEST_BUILD)
#if (PRH_BS_DEV_USE_CACHED_BT_CLOCKS==1)
    mHWreg_Load_Cache_Register(JAL_BT_CLK_OFFSET);
    return mHWreg_Get_Cache_Register(JAL_BT_CLK_OFFSET);
#else

    return mGetHWEntry32(JAL_BT_CLK_OFFSET);
#endif
#else
    register t_clock return_code;

    if ( HW_get_slave() )
        return_code =  mGetHWEntry32(JAL_BT_CLK_OFFSET);
    else  /* If master then native clock == bt clock */
        return_code =  HW_get_native_clk();          

    return (return_code);

#endif /*(BUILD_TYPE!=UNIT_TEST_BUILD)*/
}

__INLINE__ t_clock HW_Get_Bt_Clk_Avoid_Race(void)
{
    t_clock piconet_clk;

#if (PRH_BS_DEV_USE_CACHED_BT_CLOCKS==1)
    /* only read from HW when cached value is invalidated as zero */
    piconet_clk = mHWreg_Get_Cache_Register(JAL_BT_CLK_OFFSET);
    if(0 == piconet_clk)
#endif
    {
        piconet_clk = HW_get_bt_clk();
    
#if 0 // Not Tried yet
		HWdelay_Wait_For_us(1);
#endif
//#if defined(SHOGA)
//        /* instability on carry to 12th bit observed on SH platforms */
//        if ((0xfff == (piconet_clk & 0xfff)) || (0 == (piconet_clk & 0xfff)))
//#else 
//        /* workaround 16 bit register separation in the clock */
//        if (0xffff == (piconet_clk & 0xffff))
//#endif    
        {
            if (HW_get_bt_clk() != piconet_clk)
            {
                piconet_clk = HW_get_bt_clk(); /* re-read, to ensure value has
                                                * settled and is sane! */
            }
        }
    }
    
    return piconet_clk;
}

/*
 * Set directly the BT clk offset.
 */
__INLINE__ void FAST_CALL HW_set_bt_clk_offset(t_clock bt_clk_offset)
{
#if (BUILD_TYPE==UNIT_TEST_BUILD)
    /*
     * Emulate hardware by adding current clock value to offset
     */
    bt_clk_offset += (HW_get_add_bt_clk_relative()?HW_get_bt_clk():HW_get_native_clk()) & 0x0FFFFFFC;
    bt_clk_offset &= 0x0FFFFFFC;
#endif

    mSetHWEntry32(JAL_BT_CLK_OFFSET, bt_clk_offset);

#if (PRH_BS_DEV_USE_CACHED_BT_CLOCKS==1)
    /* invalidate cached piconet clock */
    mHWreg_Clear_Cache_Register(JAL_BT_CLK_OFFSET);
#endif
}


/* Set Native Clock */
__INLINE__ void HW_set_native_clk(const t_clock clkn)
{
#if (PRH_BS_DEV_USE_CACHED_BT_CLOCKS==1)
    mHWreg_Assign_Cache_Register(JAL_NATIVE_CLK,clkn);
    mHWreg_Store_Cache_Register(JAL_NATIVE_CLK);
    /* invalidate cached piconet clock */
    mHWreg_Clear_Cache_Register(JAL_BT_CLK_OFFSET);
#else
      mSetHWEntry32(JAL_NATIVE_CLK, clkn);
#endif
}

__INLINE__ t_clock HW_Get_Native_Clk_Avoid_Race(void)
{
    t_clock native_clk;

#if (PRH_BS_DEV_USE_CACHED_BT_CLOCKS==1)
    /* only read from HW when cached value is invalidated as zero */
    native_clk = mHWreg_Get_Cache_Register(JAL_NATIVE_CLK);
    if(0 == native_clk)
#endif
    {
        native_clk = HW_get_native_clk();
    
        HWdelay_Wait_For_us(1);
#if defined(SHOGA)
        /* instability on carry to 12th bit observed on SH platforms */
        if ((0xfff == (native_clk & 0xfff)) || (0 == (native_clk & 0xfff)))
#else
        /* workaround 16 bit register separation in the clock */
      //  if (0xffff == (native_clk & 0xffff))
#endif
        {
            if (HW_get_native_clk() != native_clk)
            {
                native_clk = HW_get_native_clk(); /* re-read, to ensure value has
                                                   * settled and is sane! */
            }
        }
    }

    return native_clk;
}

/* Set AM Address */
__INLINE__ void HW_set_am_addr(const u_int am_addr) { mSetHWEntry(JAL_AM_ADDR, am_addr); }
/* Get AM Address */
__INLINE__ u_int HW_get_am_addr(void) { return mGetHWEntry(JAL_AM_ADDR); }

/* Set Encrypt */
__INLINE__ void HW_set_encrypt(const u_int encrypt) { mSetHWEntry(JAL_ENCRYPT, encrypt); }
/* Get Encrypt */
__INLINE__ u_int HW_get_encrypt(void) { return mGetHWEntry(JAL_ENCRYPT); }

/* Set Whitening */
__INLINE__ void HW_set_whiten(const u_int whiten) { mSetHWEntry(JAL_WHITEN, whiten); }
/* Get Whitening */
__INLINE__ u_int HW_get_whiten(void) { return mGetHWEntry(JAL_WHITEN); }

/* Set Use LF */
__INLINE__ void HW_set_use_lf(const u_int use_lf) { mSetHWEntry(JAL_USE_LF, use_lf); }
/* Get Use LF */
__INLINE__ u_int HW_get_use_lf(void) { return mGetHWEntry(JAL_USE_LF); }

/* Set Slave Mode */
__INLINE__ void HW_set_slave(const u_int slave) { mSetHWEntry(JAL_SLAVE, slave); }

/* Set Page Bit */
__INLINE__ void HW_set_page(const u_int page) { mSetHWEntry(JAL_PAGE, page); }
/* Get Page Bit */
__INLINE__ u_int HW_get_page(void) { return mGetHWEntry(JAL_PAGE); }

/* Set Use LF */
__INLINE__ void HW_set_sleep_status(const u_int use_lf) { mSetHWEntry(JAL_SLEEP_STATUS, use_lf); }
/* Get Use LF */
__INLINE__ u_int HW_get_sleep_status(void) { return mGetHWEntry(JAL_SLEEP_STATUS); }


/* Set/Get SCO Configuration for Conversion for SCOs 0, 1 and 2 */
__INLINE__ void HW_set_sco_cfg0( const u_int cfg)   { mSetHWEntry(JAL_SCO_CFG0, cfg); }
__INLINE__ u_int HW_get_sco_cfg0(void)              { return mGetHWEntry(JAL_SCO_CFG0); }

__INLINE__ void HW_set_sco_cfg1( const u_int cfg)   { mSetHWEntry(JAL_SCO_CFG1, cfg); }
__INLINE__ u_int HW_get_sco_cfg1(void)              { return mGetHWEntry(JAL_SCO_CFG1); }

__INLINE__ void HW_set_sco_cfg2( const u_int cfg)   { mSetHWEntry(JAL_SCO_CFG2, cfg); }
__INLINE__ u_int HW_get_sco_cfg2(void)              { return mGetHWEntry(JAL_SCO_CFG2); }


/* Set SCO FIFO */
__INLINE__ void HW_set_sco_fifo( const u_int fifo ) { mSetHWEntry(JAL_SCO_FIFO, fifo ); }
/* Get SCO FIFO */
__INLINE__ u_int HW_get_sco_fifo(void)              { return mGetHWEntry(JAL_SCO_FIFO); }

/* Set SCO VCI Clock Select */
__INLINE__ void HW_set_vci_clk_sel( const u_int vci_clk ) { mSetHWEntry(JAL_VCI_CLK_SEL, vci_clk ); }
/* Set SCO VCI Clock Select */
__INLINE__ u_int HW_get_vci_clk_sel(void) { return mGetHWEntry(JAL_VCI_CLK_SEL); }

/* Set Loopback Bit */
__INLINE__ void HW_set_loop(const u_int loop) { mSetHWEntry(JAL_LOOP, loop); }
/* Get Loopback Bit */
__INLINE__ u_int HW_get_loop(void) { return mGetHWEntry(JAL_LOOP); }

/* Set Test ECO bit */
__INLINE__ void HW_set_test_eco(const u_int test_eco) { mSetHWEntry(JAL_TEST_ECO, test_eco); }
/* Get Test ECO bit */
__INLINE__ u_int HW_get_test_eco(void) { return mGetHWEntry(JAL_TEST_ECO); }

/* Set Test CRC bit */
__INLINE__ void HW_set_test_crc(const u_int test_crc) { mSetHWEntry(JAL_TEST_CRC, test_crc); }
/* Get Test CRC bit */
__INLINE__ u_int HW_get_test_crc(void) {return mGetHWEntry(JAL_TEST_CRC); }

/* Set Test HEC bit */
__INLINE__ void HW_set_test_hec(const u_int test_hec) { mSetHWEntry(JAL_TEST_HEC, test_hec); }
/* Get Test HEC bit */
__INLINE__ u_int HW_get_test_hec(void) { return mGetHWEntry( JAL_TEST_HEC); }

/* Set Test Radio bit */
__INLINE__ void HW_set_test_radio(const u_int test_radio) { mSetHWEntry(JAL_TEST_RADIO, test_radio); }
/* Get Test Radio bit */
__INLINE__ u_int HW_get_test_radio(void) { return mGetHWEntry( JAL_TEST_RADIO ); }

/* Set vci clk sel map bit */
__INLINE__ void HW_set_vci_clk_sel_map(const u_int value) { mSetHWEntry(JAL_VCI_CLK_SEL_MAP, value); }
/* Get vci clk sel map bit */
__INLINE__ u_int HW_get_vci_clk_sel_map(void) { return mGetHWEntry(JAL_VCI_CLK_SEL_MAP); }

/* Set test msg bit for debugging pins */
__INLINE__ void HW_set_test_msg(const u_int value) {mSetHWEntry(JAL_TEST_MSG, value);}
__INLINE__ u_int HW_get_test_msg(void) { return mGetHWEntry(JAL_TEST_MSG); }

/* Set DWH INIT value */
__INLINE__ void HW_set_dwh_ini(const u_int dwh_init) { mSetHWEntry( JAL_DWH_INIT, dwh_init ); }
/* Get DWH INIT value */
__INLINE__ u_int HW_get_dwh_ini(void) { return mGetHWEntry( JAL_DWH_INIT ); }

/* Set DWH2 INIT value [2nd half for Inquiry FHS Response */
__INLINE__ void HW_set_dwh2_ini(const u_int dwh2_init) { mSetHWEntry( JAL_DWH2_INIT, dwh2_init ); }
/* Get DWH2 INIT value */
__INLINE__ u_int HW_get_dwh2_ini(void) { return mGetHWEntry( JAL_DWH2_INIT ); }

/* Set CRC Initial Value */
__INLINE__ void HW_set_crc_ini(const u_int crc_ini) { mSetHWEntry(JAL_CRC_INIT, crc_ini); }
/* Get CRC initial value */
__INLINE__ u_int HW_get_crc_ini(void)  { return mGetHWEntry(JAL_CRC_INIT);  } 

/* Set Timer interrupt mask */
__INLINE__ void HW_set_tim_intr_mask(const u_int value) { mSetHWEntry(JAL_TIM_INTR_MSK, value);
 }
/* Get Timer interrupt mask */
__INLINE__ u_int HW_get_tim_intr_mask(void) { return mGetHWEntry(JAL_TIM_INTR_MSK); }

/* Set Packet interrupt mask */
__INLINE__ void HW_set_pkd_intr_mask(const u_int value) { mSetHWEntry(JAL_PKD_INTR_MSK, value); }
/* Get Packet interrupt mask */
__INLINE__ u_int HW_get_pkd_intr_mask(void) { return mGetHWEntry(JAL_PKD_INTR_MSK); }

/* Set AUX Timer interrupt mask */
__INLINE__ void HW_set_aux_tim_intr_mask(const u_int value) { mSetHWEntry(JAL_AUX_TIM_INTR_MSK, value); }
/* Get AUX Timer interrupt mask */
__INLINE__ u_int HW_get_aux_tim_intr_mask(void) { return mGetHWEntry(JAL_AUX_TIM_INTR_MSK); }

/* Set PKA interrupt mask */
__INLINE__ void HW_set_pka_intr_mask(const u_int value) { mSetHWEntry(JAL_PKA_INTR_MSK, value); }
/* Get PKA Interrupt mask */
__INLINE__ u_int HW_get_pka_intr_mask(void) { return mGetHWEntry(JAL_PKA_INTR_MSK); }

__INLINE__ void  HW_set_pkd_rx_hdr_intr_mask(const u_int value) { mSetHWEntry(JAL_PKD_RX_HDR_INTR_MSK, value); }
__INLINE__ u_int HW_get_pkd_rx_hdr_intr_mask(void) { return mGetHWEntry(JAL_PKD_RX_HDR_INTR_MSK); }

/* Set GIO0 interrupt mask */
__INLINE__ void HW_set_gio_intr_mask0(const u_int value) { mSetHWEntry(JAL_GIO_INTR_MSK0, value); }
/* Get GIO0 interrupt mask */
__INLINE__ u_int HW_get_gio_intr_mask0(void) { return mGetHWEntry(JAL_GIO_INTR_MSK0); }

/* Set GIO1 interrupt mask */
__INLINE__ void HW_set_gio_intr_mask1(const u_int value) { mSetHWEntry(JAL_GIO_INTR_MSK1, value); }
/* Get GIO1 interrupt mask */
__INLINE__ u_int HW_get_gio_intr_mask1(void) { return mGetHWEntry(JAL_GIO_INTR_MSK1); }

/* Set GIO2 interrupt mask */
__INLINE__ void HW_set_gio_intr_mask2(const u_int value) { mSetHWEntry(JAL_GIO_INTR_MSK2, value); }
/* Get GIO2 interrupt mask */
__INLINE__ u_int HW_get_gio_intr_mask2(void) { return mGetHWEntry(JAL_GIO_INTR_MSK2); }

/* Set GIO3 interrupt mask */
__INLINE__ void HW_set_gio_intr_mask3(const u_int value) { mSetHWEntry(JAL_GIO_INTR_MSK3, value); }
/* Get GIO3 interrupt mask */
__INLINE__ u_int HW_get_gio_intr_mask3(void) { return mGetHWEntry(JAL_GIO_INTR_MSK3); }


/* Clear Timer interrupt Clear */
__INLINE__ void HW_set_tim_intr_clr(const u_int value) { mSetHWEntry(JAL_TIM_INTR_CLR, value); }

/* Set Pkd Interrupt Clear */
__INLINE__ void HW_set_pkd_intr_clr(const u_int value) { mSetHWEntry(JAL_PKD_INTR_CLR, value); }

/* Clear AUX Timer interrupt Clear */
__INLINE__ void HW_set_aux_tim_intr_clr(const u_int value) { mSetHWEntry(JAL_AUX_TIM_INTR_CLR, value); }

/* Set Pka Interrupt Clear */
__INLINE__ void HW_set_pka_intr_clr(const u_int value) { mSetHWEntry(JAL_PKA_INTR_CLR, value); }

/* Set Pkd RX HDR Interrupt Clear */
__INLINE__ void HW_set_pkd_rx_hdr_intr_clr(const u_int value) { mSetHWEntry(JAL_PKD_RX_HDR_INTR_CLR, value); }

/* Set general input/output interrupt 0 clear */
__INLINE__ void HW_set_gio_intr_clr0(const u_int value) { mSetHWEntry(JAL_GIO_INTR_CLR0, value); }

/* Set general input/output interrupt 1 clear */
__INLINE__ void HW_set_gio_intr_clr1(const u_int value) { mSetHWEntry(JAL_GIO_INTR_CLR1, value); }

/* Set general input/output interrupt 2 clear */
__INLINE__ void HW_set_gio_intr_clr2(const u_int value) { mSetHWEntry(JAL_GIO_INTR_CLR2, value); }

/* Set general input/output interrupt 3 clear */
__INLINE__ void HW_set_gio_intr_clr3(const u_int value) { mSetHWEntry(JAL_GIO_INTR_CLR3, value); }


/*
 * COMMON STATUS REGISTERS
 */
/* Get Timer Interrupt */
__INLINE__ u_int HW_get_tim_intr(void) { return mGetHWEntry(JAL_TIM_INTR); }

/* Get Pkd Interrupt */
__INLINE__ u_int HW_get_pkd_intr(void) { return mGetHWEntry(JAL_PKD_INTR); }

/* Get AUX Timer Interrupt */
__INLINE__ u_int HW_get_aux_tim_intr(void) { return mGetHWEntry(JAL_AUX_TIM_INTR); }

/* Get Pka Interrupt */
__INLINE__ u_int HW_get_pka_intr(void) { return mGetHWEntry(JAL_PKA_INTR); }

/* Get Pkd RX HDR Interrupt */
__INLINE__ u_int HW_get_pkd_rx_hdr_intr(void) { return mGetHWEntry(JAL_PKD_RX_HDR_INTR); }

/* Get general input/output interrupt 0 */
__INLINE__ u_int HW_get_gio_intr0(void) { return mGetHWEntry(JAL_GIO_INTR0); }

/* Get general input/output interrupt 1 */
__INLINE__ u_int HW_get_gio_intr1(void) { return mGetHWEntry(JAL_GIO_INTR1); }

/* Get general input/output interrupt 2 */
__INLINE__ u_int HW_get_gio_intr2(void) { return mGetHWEntry(JAL_GIO_INTR2); }

/* Get general input/output interrupt 3 */
__INLINE__ u_int HW_get_gio_intr3(void) { return mGetHWEntry(JAL_GIO_INTR3); }



/*
 * TRANSMIT CONTROL REGISTERS
 */

/* Set Transmit Length */
__INLINE__ void HW_set_tx_len(const u_int len) { mSetHWEntry(JAL_TX_LEN, len); }
/* Get Transmit Length */
__INLINE__ u_int HW_get_tx_len(void) { return mGetHWEntry(JAL_TX_LEN); }

/* Set Transmit Type */
__INLINE__ void HW_set_tx_type(const u_int type) { mSetHWEntry(JAL_TX_TYPE, type); }
/* Get Transmit Type */
#if (PRH_BS_CFG_SYS_LMP_EDR_SUPPORTED==1)
__INLINE__ u_int HW_get_tx_type(void) {
	return (mGetHWEntry(JAL_TX_TYPE)>DM1) ? ((mGetHWEntry(JAL_EDR_PTT_ACL) | mGetHWEntry(JAL_EDR_PTT_ESCO)) << 4) |
		mGetHWEntry(JAL_TX_TYPE): mGetHWEntry(JAL_TX_TYPE) ; }
#else
__INLINE__ u_int HW_get_tx_type(void) { return mGetHWEntry(JAL_TX_TYPE); }
#endif

/* Set TX Flow Bit */
__INLINE__ void HW_set_tx_flow(const u_int flow) { mSetHWEntry(JAL_TX_FLOW, flow); }
/* Get TX Flow Bit */
__INLINE__ u_int HW_get_tx_flow(void) { return mGetHWEntry(JAL_TX_FLOW); }

/* Set TX Arqn Bit */
__INLINE__ void HW_set_tx_arqn(const u_int arqn) { mSetHWEntry(JAL_TX_ARQN, arqn); }
/* Get TX Arqn Bit */
__INLINE__ u_int HW_get_tx_arqn(void) { return mGetHWEntry(JAL_TX_ARQN); }

/* Set TX Seqn Bit */
__INLINE__ void HW_set_tx_seqn(const u_int seqn) { mSetHWEntry(JAL_TX_SEQN, seqn); }
/* Get TX Seqn Bit */
__INLINE__ u_int HW_get_tx_seqn(void) { return mGetHWEntry(JAL_TX_SEQN); }

/* Set TX Buffer */
__INLINE__ void HW_set_tx_buf(const u_int32 buf) { mSetHWEntry(JAL_TX_BUF, buf); }
/* Get TX Buffer */
__INLINE__ u_int HW_get_tx_buf(void) { return mGetHWEntry(JAL_TX_BUF); }

/* Set Transmit Enable Bit */
__INLINE__ void HW_set_transmit(const u_int tr) { mSetHWEntry(JAL_TRANSMIT, tr); }
/* Get Transmit Enable Bit */
__INLINE__ u_int HW_get_transmit(void) { return mGetHWEntry(JAL_TRANSMIT); }

/* Set tx half */
__INLINE__ void HW_set_tx_half(const u_int id)  { mSetHWEntry(JAL_TX_HALF, id); }
/* Get ID type */
__INLINE__ u_int HW_get_tx_half(void) { return mGetHWEntry(JAL_TX_HALF); }

/* Set TX L_CH */
__INLINE__ void HW_set_tx_l_ch(const u_int l_ch) { mSetHWEntry(JAL_TX_L_CH, l_ch); }
/* Get TX L_CH */
__INLINE__ u_int HW_get_tx_l_ch(void) { return mGetHWEntry(JAL_TX_L_CH); }

/* Set TX Payload Flow Bit */
__INLINE__ void HW_set_tx_p_flow(const u_int flow) { mSetHWEntry(JAL_TX_P_FLOW, flow); }
/* Get TX Payload Flow Bit */
__INLINE__ u_int HW_get_tx_p_flow(void) { return mGetHWEntry(JAL_TX_P_FLOW); }


/*
 * TRANSMIT STATUS REGISTERS - READ FUNCTIONS
 */
/* Get TX0 Overflow Bit */
__INLINE__ u_int HW_get_tx0_over(void)  { return mGetHWEntry(JAL_TX0_OVER); }

/* Get TX0 Underflow Bit */
__INLINE__ u_int HW_get_tx0_under(void) { return mGetHWEntry(JAL_TX0_UNDER); }

/* Get TX1 Overflow Bit */
__INLINE__ u_int HW_get_tx1_over(void)  { return mGetHWEntry(JAL_TX1_OVER); }

/* Get TX1 Underflow Bit */
__INLINE__ u_int HW_get_tx1_under(void) { return mGetHWEntry(JAL_TX1_UNDER); }

/* Get TX2 Overflow Bit */
__INLINE__ u_int HW_get_tx2_over(void)  { return mGetHWEntry(JAL_TX2_OVER); }

/* Get TX2 Underflow Bit*/
__INLINE__ u_int HW_get_tx2_under(void) { return mGetHWEntry(JAL_TX2_UNDER); }


/*
 * RECEIVE CONTROL REGISTERS
 */
/* Set RX Mode Bits */
__INLINE__ void HW_set_rx_mode(const u_int mode) { 
    mSetHWEntry(JAL_RX_MODE, mode); 
}
/* Get RX Mode Bits */
__INLINE__ u_int HW_get_rx_mode(void) { return mGetHWEntry(JAL_RX_MODE); }

/* Set TX Mode Bits */
__INLINE__ void HW_set_tx_mode(const u_int mode) { mSetHWEntry(JAL_TX_MODE, mode); }
/* Get TX Mode Bits */
__INLINE__ u_int HW_get_tx_mode(void) { return mGetHWEntry(JAL_TX_MODE); }

/* Set Early Abort */
__INLINE__ void HW_set_abort_on_wrong_am_addr(const u_int abort_on_wrong_am_addr) { mSetHWEntry( JAL_ABORT_ON_WRONG_AM_ADDR, abort_on_wrong_am_addr); }
/* Get Early Abort */
__INLINE__ u_int HW_get_abort_on_wrong_am_addr(void) { return mGetHWEntry( JAL_ABORT_ON_WRONG_AM_ADDR); }

/* Set RX Buffer */
__INLINE__ void HW_set_rx_buf(const u_int buf) { mSetHWEntry(JAL_RX_BUF, buf); }
/* Get RX Buffer */
__INLINE__ u_int HW_get_rx_buf(void) { return mGetHWEntry(JAL_RX_BUF); }

/* Set Error Sel */
__INLINE__ void   HW_set_err_sel(const u_int sel) { mSetHWEntry(JAL_ERR_SEL, sel); }
/* Get Error Sel */
__INLINE__ u_int32 HW_get_err_sel(void) { return mGetHWEntry(JAL_ERR_SEL); }

/* Set Window Extension */
__INLINE__ void   HW_set_win_ext(const u_int ext) { mSetHWEntry(JAL_WIN_EXT, ext); }
/* Get Window Extension */
__INLINE__ u_int32 HW_get_win_ext(void) { return mGetHWEntry(JAL_WIN_EXT); }

/* Set Freeze Bit Cnt */
__INLINE__ void   HW_set_freeze_bit_cnt(const u_int freeze) { mSetHWEntry(JAL_FREEZE_BIT_CNT, freeze); }
/* Get Freeze Bit Cnt */
__INLINE__ u_int  HW_get_freeze_bit_cnt(void) { return mGetHWEntry(JAL_FREEZE_BIT_CNT); }  

/*
 * RECEIVE STATUS REGISTERS - READ FUNCTIONS
 */

/* Get RX Length */
__INLINE__ u_int HW_get_rx_len(void) { return mGetHWEntry(JAL_RX_LEN); }

/* Get RX type */
#if (PRH_BS_CFG_SYS_LMP_EDR_SUPPORTED==1)
__INLINE__ u_int HW_get_rx_type(void) {
	return (mGetHWEntry(JAL_RX_TYPE)>DM1) ? ((mGetHWEntry(JAL_EDR_PTT_ACL) | mGetHWEntry(JAL_EDR_PTT_ESCO)) << 4) |
		mGetHWEntry(JAL_RX_TYPE): mGetHWEntry(JAL_RX_TYPE) ; }
#else
__INLINE__ u_int HW_get_rx_type(void) { return mGetHWEntry(JAL_RX_TYPE); }
#endif
/* Get RX flow */
__INLINE__ u_int HW_get_rx_flow(void) { return mGetHWEntry(JAL_RX_FLOW); }

/* Get RX arqn */
__INLINE__ u_int HW_get_rx_arqn(void) { return mGetHWEntry(JAL_RX_ARQN); }

/* Get RX seqn */
__INLINE__ u_int HW_get_rx_seqn(void) { return mGetHWEntry(JAL_RX_SEQN); }

/* Get RX AM Address */
__INLINE__ u_int HW_get_rx_am_addr(void) { return mGetHWEntry(JAL_RX_AM_ADDR); }

/* Get RX Link Controller Type */
__INLINE__ u_int HW_get_rx_l_ch(void) { return mGetHWEntry(JAL_RX_L_CH); }

/* Get RX p_flow bit */
__INLINE__ u_int HW_get_rx_p_flow(void) { return mGetHWEntry(JAL_RX_P_FLOW); }

/* Get RX packet */
__INLINE__ u_int HW_get_rx_pkt(void) { return mGetHWEntry(JAL_RX_PKT); }

/* Get HEC Error status */
__INLINE__ u_int HW_get_hec_err(void) { return mGetHWEntry(JAL_HEC_ERR); }

/* Get CRC Error status */
__INLINE__ u_int HW_get_crc_err(void) { return mGetHWEntry(JAL_CRC_ERR); }

/* Get RX_HDR status*/
__INLINE__ u_int HW_get_rx_hdr(void)  { return mGetHWEntry(JAL_RX_HDR); }

/* Get RX0 OVER */
__INLINE__ u_int HW_get_rx0_over(void) {return mGetHWEntry(JAL_RX0_OVER); }

/* Get RX0 UNDER */
__INLINE__ u_int HW_get_rx0_under(void) {return mGetHWEntry(JAL_RX0_UNDER); }

/* Get RX1 OVER */
__INLINE__ u_int HW_get_rx1_over(void) {return mGetHWEntry(JAL_RX1_OVER); }

/* Get RX1 UNDER */
__INLINE__ u_int HW_get_rx1_under(void) {return mGetHWEntry(JAL_RX1_UNDER); }

/* Get RX2 OVER */
__INLINE__ u_int HW_get_rx2_over(void) {return mGetHWEntry(JAL_RX2_OVER); }

/* Get RX2 UNDER */
__INLINE__ u_int HW_get_rx2_under(void) {return mGetHWEntry(JAL_RX2_UNDER); }

/* Get reset code */
__INLINE__ u_int HW_get_rst_code(void) { return mGetHWEntry(JAL_RST_CODE); }

/* Get RX error count */
__INLINE__ u_int32 HW_get_err_cnt(void) { return mGetHWEntry(JAL_ERR_CNT); }

/* Get RX AM_ADDR_ABORT  */
__INLINE__ u_int HW_get_am_addr_abort(void) { return mGetHWEntry(JAL_AM_ADDR_ABORT); }
                                                                 


/*
 * GIO CONTROL REGISTERS
 */

/* Set GIO HIGH */
__INLINE__ void  HW_set_gio_high(const u_int gio_high){ mSetHWEntry(JAL_GIO_HIGH, gio_high); }
/* Get GIO HIGH */
__INLINE__ u_int HW_get_gio_high(void) { return mGetHWEntry(JAL_GIO_HIGH); }


/* Set GIO LOW */
__INLINE__ void HW_set_gio_low(const u_int gio_low) { mSetHWEntry(JAL_GIO_LOW, gio_low); }
/* Get GIO LOW */
__INLINE__ u_int HW_get_gio_low(void) { return mGetHWEntry(JAL_GIO_LOW); }


/*
 * GIO COMBINE REGISTERS
 */
/* Set GIO0*/
__INLINE__ void  HW_set_gio0(const u_int gio0){ mSetHWEntry(JAL_GIO0, gio0); }
/* Get GIO0 */
__INLINE__ u_int HW_get_gio0(void) { return mGetHWEntry(JAL_GIO0); }

/* Set GIO1 */
__INLINE__ void  HW_set_gio1(const u_int gio1){ mSetHWEntry(JAL_GIO1, gio1); }
/* Get GIO1 */
__INLINE__ u_int HW_get_gio1(void) { return mGetHWEntry(JAL_GIO1); }

/* Set GIO2 */
__INLINE__ void  HW_set_gio2(const u_int gio2){ mSetHWEntry(JAL_GIO2, gio2); }
/* Get GIO2 */
__INLINE__ u_int HW_get_gio2(void) { return mGetHWEntry(JAL_GIO2); }

/* Set GIO3 */
__INLINE__ void  HW_set_gio3(const u_int gio3){ mSetHWEntry(JAL_GIO3, gio3); }
/* Get GIO3 */
__INLINE__ u_int HW_get_gio3(void) { return mGetHWEntry(JAL_GIO3); }


/*
 * GIO STATUS REGISTERS - READ ONLY
 */
__INLINE__ u_int HW_get_gio_status(void) { return mGetHWEntry(JAL_GIO_STATUS); }



/*
 * SERIAL REGISTERS
 */
/* Set Serial configuration */
__INLINE__ void HW_set_ser_cfg(const u_int ser_cfg) { mSetHWEntry(JAL_SER_CFG, ser_cfg); }
/* Get Serial Configuration */
__INLINE__ u_int HW_get_ser_cfg(void) { return mGetHWEntry(JAL_SER_CFG); }

/*
 * AUXILLIARY TIMER REGISTERS
 */
/* Set Aux Timer */
__INLINE__ void HW_set_aux_timer(const u_int aux_timer) { mSetHWEntry(JAL_AUX_TIMER, aux_timer); }
/* Get Aux Timer */
__INLINE__ u_int HW_get_aux_timer(void) { return mGetHWEntry(JAL_AUX_TIMER); }


/*
 * TRANSMIT and RECEIVE DELAY REGISTERS
 */
/* Set TX Delay*/
__INLINE__ void HW_set_tx_delay(const u_int value) { mSetHWEntry(JAL_TX_DELAY, value); }
/* Get TX Delay */
__INLINE__ u_int HW_get_tx_delay(void) { return mGetHWEntry(JAL_TX_DELAY); }

/* Set RX Delay */
__INLINE__ void HW_set_rx_delay(const u_int value) { mSetHWEntry(JAL_RX_DELAY, value); }
/* Get RX Delay */
__INLINE__ u_int HW_get_rx_delay(void) { return mGetHWEntry(JAL_RX_DELAY); }

/*
 * BT CLOCK CONTROL REGISTERS
 */
__INLINE__ void HW_set_add_bt_clk_relative(const u_int value) { mSetHWEntry(JAL_ADD_BT_CLK_RELATIVE, value); }
__INLINE__ u_int HW_get_add_bt_clk_relative(void) { return mGetHWEntry(JAL_ADD_BT_CLK_RELATIVE); }

__INLINE__ void HW_set_write_absolute_bt_clk(const u_int value) { mSetHWEntry(JAL_WRITE_ABSOLUTE_BT_CLK, value); }
__INLINE__ void HW_set_delayed_bt_clk_update(const u_int value) { mSetHWEntry(JAL_DELAYED_BT_CLK_UPDATE, value); }
__INLINE__ void HW_set_freeze_bt_clk(const u_int value) { mSetHWEntry(JAL_FREEZE_BT_CLK, value); }
__INLINE__ u_int HW_get_freeze_bt_clk(void) { return mGetHWEntry(JAL_FREEZE_BT_CLK); }

/*
 * REVISION CONTROL NUMBERS
 */
__INLINE__ u_int HW_get_minor_revision(void) { return mGetHWEntry(JAL_MINOR_REVISION); }
__INLINE__ u_int HW_get_major_revision(void) { return mGetHWEntry(JAL_MAJOR_REVISION); }

/*
 * RESET CONTROLS
 */
/* Set RST Code */
__INLINE__ void HWjal_Set_Rst_Code(const u_int rst_code) { mSetHWEntry(JAL_RST_CODE, rst_code); }


/*
 * AUXILLIARY FUNCTIONS
 */
__INLINE__ void HW_toggle_tx_buf(void) { mToggleHWBit(JAL_TX_BUF); }
__INLINE__ void HW_toggle_rx_buf(void) { mToggleHWBit(JAL_RX_BUF); }

/* 
 * eSCO Related
 */
/* Get eSCO LT_ADDR */
__INLINE__ u_int HW_get_esco_lt_addr(void) { return mGetHWEntry(JAL_ESCO_LT_ADDR); }

/* Get eSCO Tx Length */
__INLINE__ u_int HW_get_esco_tx_len(void) { return mGetHWEntry(JAL_ESCO_TX_LEN); }

/* Get eSCO Tx Length */
__INLINE__ u_int HW_get_esco_rx_len(void) { return mGetHWEntry(JAL_ESCO_RX_LEN); }

/* Get SCO_ROUTE */
__INLINE__ u_int HW_get_sco_route(void) { return mGetHWEntry(JAL_SCO_ROUTE); }

__INLINE__ void HW_set_use_hab_crl1(const u_int value) { mSetHWEntry(JAL_USE_HAB_CTRL,value); }

/* Test Functions for Software Simulation */
#if (BUILD_TYPE==UNIT_TEST_BUILD)
__INLINE__ u_int HW_get_pkd_intr_clr(void) { return mGetHWEntry(JAL_PKD_INTR_CLR); }
__INLINE__ u_int HW_get_pkd_rx_hdr_intr_clr(void) { return mGetHWEntry(JAL_PKD_RX_HDR_INTR_CLR); }
__INLINE__ u_int HW_get_pka_intr_clr(void) { return mGetHWEntry(JAL_PKA_INTR_CLR); }
__INLINE__ u_int HW_get_tim_intr_clr(void) { return mGetHWEntry(JAL_TIM_INTR_CLR); }
__INLINE__ u_int HW_get_aux_tim_intr_clr(void) { return mGetHWEntry(JAL_AUX_TIM_INTR_CLR); }
__INLINE__ u_int HW_get_gio_intr_clr0(void) { return mGetHWEntry(JAL_GIO_INTR_CLR0); }
__INLINE__ u_int HW_get_gio_intr_clr1(void) { return mGetHWEntry(JAL_GIO_INTR_CLR1); }
__INLINE__ u_int HW_get_gio_intr_clr2(void) { return mGetHWEntry(JAL_GIO_INTR_CLR2); }
__INLINE__ u_int HW_get_gio_intr_clr3(void) { return mGetHWEntry(JAL_GIO_INTR_CLR3); }


__INLINE__ void HW_set_pkd_intr(const u_int pkd_intr) {mSetHWEntry(JAL_PKD_INTR, pkd_intr); }
__INLINE__ void HW_set_pkd_rx_hdr_intr(const u_int pkd_rx_hdr_intr) {mSetHWEntry(JAL_PKD_RX_HDR_INTR, pkd_rx_hdr_intr); }
__INLINE__ void HW_set_pka_intr(const u_int pka_intr) {mSetHWEntry(JAL_PKA_INTR, pka_intr); }
__INLINE__ void HW_set_no_pkt_rcvd_intr(const u_int no_pkt_rcvd_intr) {mSetHWEntry(JAL_NO_PKT_RCVD_INTR, no_pkt_rcvd_intr); }
__INLINE__ void HW_set_sync_det_intr(const u_int sync_det_intr) {mSetHWEntry(JAL_SYNC_DET_INTR, sync_det_intr); }
__INLINE__ void HW_set_tim_intr(const u_int tim_intr) {mSetHWEntry(JAL_TIM_INTR, tim_intr); }
__INLINE__ void HW_set_aux_tim_intr(const u_int aux_tim_intr) {mSetHWEntry(JAL_AUX_TIM_INTR, aux_tim_intr); }
__INLINE__ void HW_set_gio_intr0(const u_int gio_intr0) {mSetHWEntry(JAL_GIO_INTR0, gio_intr0); }
__INLINE__ void HW_set_gio_intr1(const u_int gio_intr1) {mSetHWEntry(JAL_GIO_INTR1, gio_intr1); }
__INLINE__ void HW_set_gio_intr2(const u_int gio_intr2) {mSetHWEntry(JAL_GIO_INTR2, gio_intr2); }
__INLINE__ void HW_set_gio_intr3(const u_int gio_intr3) {mSetHWEntry(JAL_GIO_INTR3, gio_intr3); }

__INLINE__ void HW_set_tx0_over(u_int  tx0_over)  {mSetHWEntry(JAL_TX0_OVER, tx0_over); }
__INLINE__ void HW_set_tx0_under(u_int tx0_under) {mSetHWEntry(JAL_TX0_UNDER, tx0_under); }
__INLINE__ void HW_set_tx1_over(u_int  tx1_over)  {mSetHWEntry(JAL_TX1_OVER, tx1_over); }
__INLINE__ void HW_set_tx1_under(u_int tx1_under) {mSetHWEntry(JAL_TX1_UNDER, tx1_under); }
__INLINE__ void HW_set_tx2_over(u_int  tx2_over)  {mSetHWEntry(JAL_TX2_OVER, tx2_over); }
__INLINE__ void HW_set_tx2_under(u_int tx2_under) {mSetHWEntry(JAL_TX2_UNDER, tx2_under); }

__INLINE__ void HW_set_rx_len(u_int rx_len )   {mSetHWEntry(JAL_RX_LEN, rx_len); }
__INLINE__ void HW_set_rx_type(u_int rx_type ) {mSetHWEntry(JAL_RX_TYPE, rx_type); }
__INLINE__ void HW_set_rx_flow(u_int rx_flow ) {mSetHWEntry(JAL_RX_FLOW, rx_flow); }
__INLINE__ void HW_set_rx_arqn(u_int rx_arqn ) {mSetHWEntry(JAL_RX_ARQN, rx_arqn); }
__INLINE__ void HW_set_rx_seqn(u_int rx_seqn ) {mSetHWEntry(JAL_RX_SEQN, rx_seqn); }
__INLINE__ void HW_set_rx_am_addr(u_int rx_am_addr ) {mSetHWEntry(JAL_RX_AM_ADDR, rx_am_addr); }
__INLINE__ void HW_set_rx_l_ch(u_int rx_l_ch ) {mSetHWEntry(JAL_RX_L_CH, rx_l_ch); }
__INLINE__ void HW_set_rx_p_flow(u_int rx_p_flow )   {mSetHWEntry(JAL_RX_P_FLOW, rx_p_flow); }
__INLINE__ void HW_set_rx_pkt(u_int rx_pkt )   {mSetHWEntry(JAL_RX_PKT, rx_pkt); }
__INLINE__ void HW_set_hec_err(u_int hec_err ) {mSetHWEntry(JAL_HEC_ERR, hec_err); }
__INLINE__ void HW_set_crc_err(u_int crc_err ) {mSetHWEntry(JAL_CRC_ERR, crc_err); }
__INLINE__ void HW_set_rx_hdr(u_int rx_hdr )   {mSetHWEntry(JAL_RX_HDR, rx_hdr); }
__INLINE__ void HW_set_rx0_over(u_int rx0_over )     {mSetHWEntry(JAL_RX0_OVER, rx0_over); }
__INLINE__ void HW_set_rx0_under(u_int rx0_under )   {mSetHWEntry(JAL_RX0_UNDER, rx0_under); }
__INLINE__ void HW_set_rx1_over(u_int rx1_over )     {mSetHWEntry(JAL_RX1_OVER, rx1_over); }
__INLINE__ void HW_set_rx1_under(u_int rx1_under )   {mSetHWEntry(JAL_RX1_UNDER, rx1_under); }
__INLINE__ void HW_set_rx2_over(u_int rx2_over )     {mSetHWEntry(JAL_RX2_OVER, rx2_over); }
__INLINE__ void HW_set_rx2_under(u_int rx2_under)    {mSetHWEntry(JAL_RX2_UNDER, rx2_under); }
__INLINE__ void HW_set_rst_code(u_int rst_code )     {mSetHWEntry(JAL_RST_CODE, rst_code); }
__INLINE__ void HW_set_err_cnt(u_int err_cnt )       {mSetHWEntry(JAL_ERR_CNT, err_cnt); }

__INLINE__ void HW_set_gio_status(u_int gio_status) {mSetHWEntry(JAL_GIO_STATUS, gio_status); }

/*
 * eSCO related.
 */
__INLINE__ void HW_set_esco_lt_addr(u_int esco_lt_addr) {mSetHWEntry(JAL_ESCO_LT_ADDR, esco_lt_addr); }
__INLINE__ void HW_set_esco_rx_len(u_int esco_rx_len) {mSetHWEntry(JAL_ESCO_RX_LEN, esco_rx_len); }

#endif


__INLINE__ u_int HW_get_no_pkt_rcvd_intr_clr(void) { return mGetHWEntry(JAL_NO_PKT_RCVD_INTR_CLR); }

__INLINE__ u_int HW_get_no_pkt_rcvd_intr(void) { return mGetHWEntry(JAL_NO_PKT_RCVD_INTR); }
__INLINE__ void HW_set_no_pkt_rcvd_intr_clr(const u_int value) {mSetHWEntry(JAL_NO_PKT_RCVD_INTR_CLR, value); }

__INLINE__ void HW_set_no_pkt_rcvd_intr_mask(const u_int value) {mSetHWEntry(JAL_NO_PKT_RCVD_INTR_MSK, value); }
__INLINE__ u_int HW_get_no_pkt_rcvd_intr_mask(void) { return mGetHWEntry(JAL_NO_PKT_RCVD_INTR_MSK); }
 
__INLINE__ u_int HW_get_sync_det_intr_clr(void) { return mGetHWEntry(JAL_SYNC_DET_INTR_CLR); }

__INLINE__ u_int HW_get_sync_det_intr(void) { return mGetHWEntry(JAL_SYNC_DET_INTR); }
__INLINE__ void HW_set_sync_det_intr_clr(const u_int value) {mSetHWEntry(JAL_SYNC_DET_INTR_CLR, value); }

__INLINE__ void HW_set_sync_det_intr_mask(const u_int value) {mSetHWEntry(JAL_SYNC_DET_INTR_MSK, value); }
__INLINE__ u_int HW_get_sync_det_intr_mask(void) { return mGetHWEntry(JAL_SYNC_DET_INTR_MSK); }

#if (PRH_BS_CFG_SYS_LMP_EDR_SUPPORTED==1)
/****************************************************************
 *   Declare the functions used in accessing the tx and rx delays
 ****************************************************************/
__INLINE__ void HW_set_tx_edr_delay(const u_int value) {mSetHWEntry(JAL_EDR_TX_EDR_DELAY, value); }
__INLINE__ u_int HW_get_tx_edr_delay(void) {return mGetHWEntry(JAL_EDR_TX_EDR_DELAY);}

__INLINE__ void HW_set_rx_edr_delay(const u_int value)  {mSetHWEntry(JAL_EDR_RX_EDR_DELAY, value); }
__INLINE__ u_int HW_get_rx_edr_delay(void) {return mGetHWEntry(JAL_EDR_RX_EDR_DELAY);}

/*
 *  EDR_Sync_Err
 */
__INLINE__ void HW_set_edr_sync_err(const u_int value)  {mSetHWEntry(JAL_EDR_SYNC_ERROR, value); }
__INLINE__ u_int HW_get_edr_sync_err(void) { return mGetHWEntry(JAL_EDR_SYNC_ERROR);}
#endif

__INLINE__ u_int HW_get_pta_grant_rx_denied(void) { return mGetHWEntry(JAL_PTA_GRANT_RX_DENIED);}
__INLINE__ u_int HW_get_pta_grant_tx_denied(void) { return mGetHWEntry(JAL_PTA_GRANT_TX_DENIED);}

__INLINE__ void HW_set_pta_mode_enable(const u_int mode) { mSetHWEntry(JAL_PTA_MODE_ENABLE, mode);}
__INLINE__ void HW_set_pta_grant_test_enable(const u_int mode) { mSetHWEntry(JAL_PTA_GRANT_TEST_ENABLE, mode);}

#endif
