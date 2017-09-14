#ifndef _PARTHUS_SYS_MMI_
#define _PARTHUS_SYS_MMI_

/***********************************************************************
 *
 * MODULE NAME:    sys_mmi.h
 * PROJECT CODE:   BlueStream
 * DESCRIPTION:    generic debug event man-machine feedback
 * MAINTAINER:     Ivan Griffin
 * CREATION DATE:  20 September 2000
 *
 * SOURCE CONTROL: $Id: sys_mmi.h,v 1.6 2004/07/07 14:30:51 namarad Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 2000-2004 Ceva Inc.
 *     All rights reserved.
 *
 * REVISION HISTORY:
 *    20 Sept 2000 - IG  - initial version
 *
 *    
 ***********************************************************************/

typedef enum
{
    eSYSmmi_TX_START_Event          = 0x00000001,
    eSYSmmi_BTCLK_Tick_Event        = 0x00000002,
    eSYSmmi_TX_MID_Event            = 0x00000004,
    eSYSmmi_RX_START_Event          = 0x00000008,
    eSYSmmi_RX_MID_Event            = 0x00000010,
    eSYSmmi_PKA_Event               = 0x00000020,
    eSYSmmi_SYNC_DET_Event          = 0x00000040,
    eSYSmmi_NO_PKT_RCVD_Event       = 0x00000080,
    eSYSmmi_PKT_RX_HDR_Event        = 0x00000100,
    eSYSmmi_PKD_Event               = 0x00000200,
    eSYSmmi_HCIt_Activity_Event     = 0x00000400,
    eSYSmmi_LC_Connection_Event     = 0x00000800,
    eSYSmmi_LM_Connection_Event     = 0x00001000,
    eSYSmmi_LC_Disconnection_Event  = 0x00002000,
    eSYSmmi_LM_Disconnection_Event  = 0x00004000,
    eSYSmmi_Scan_Active_Event       = 0x00008000,
    eSYSmmi_Scan_Inactive_Event     = 0x00010000
} t_SYSmmi_Event;

#define SYSmmi_Display_Event(event) SYSmmi_Display_##event##()

__INLINE__ void SYSmmi_Display_eSYSmmi_TX_START_Event(void);
__INLINE__ void SYSmmi_Display_eSYSmmi_BTCLK_Tick_Event(void);
__INLINE__ void SYSmmi_Display_eSYSmmi_TX_MID_Event(void);
__INLINE__ void SYSmmi_Display_eSYSmmi_RX_START_Event(void);
__INLINE__ void SYSmmi_Display_eSYSmmi_RX_MID_Event(void);
__INLINE__ void SYSmmi_Display_eSYSmmi_PKA_Event(void);
__INLINE__ void SYSmmi_Display_eSYSmmi_SYNC_DET_Event(void);
__INLINE__ void SYSmmi_Display_eSYSmmi_NO_PKT_RCVD_Event(void);
__INLINE__ void SYSmmi_Display_eSYSmmi_PKT_RX_HDR_Event(void);
__INLINE__ void SYSmmi_Display_eSYSmmi_PKD_Event(void);
__INLINE__ void SYSmmi_Display_eSYSmmi_HCIt_Activity_Event(void);
__INLINE__ void SYSmmi_Display_eSYSmmi_LC_Connection_Event(void);
__INLINE__ void SYSmmi_Display_eSYSmmi_LM_Connection_Event(void);
__INLINE__ void SYSmmi_Display_eSYSmmi_LC_Disconnection_Event(void);
__INLINE__ void SYSmmi_Display_eSYSmmi_LM_Disconnection_Event(void);
__INLINE__ void SYSmmi_Display_eSYSmmi_Scan_Active_Event(void);
__INLINE__ void SYSmmi_Display_eSYSmmi_Scan_Inactive_Event(void);

#ifdef __USE_INLINES__
#include "sys_mmi_impl.h"
#endif

#endif
