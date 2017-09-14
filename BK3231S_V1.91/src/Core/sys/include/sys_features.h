#ifndef __PARTHUS_SYS_FEATURES__
#define __PARTHUS_SYS_FEATURES__

/***********************************************************************
 *
 * MODULE NAME:    sys_features.h
 * PROJECT CODE:   BlueStream
 * MAINTAINER:     Tom Kerwick
 * DATE:           Wed Jul 14 11:39:10 BST 1999
 *
 * SOURCE CONTROL: $Id: sys_features.h,v 1.244 2011/04/01 16:03:22 garyf Exp $ 
 *
 * LICENCE:
 *    This source code is copyright (c) 1999-2004 Ceva Inc.
 *    All rights reserved.
 *
 * REVISION HISTORY:
 *
 * This file is to be used for grouping features, both 
 * LMP and Parthus extended features.
 *
 ***********************************************************************/
#ifndef PRH_BS_FEATURES_DEFINITION_FILE_EXISTS

/*
 * No external definition of options therefore set up below.
 * Notes
 * 1. Define PRH_BS_CFG_SELECT_LEVEL to 0|1|2|3|4
 *    PRH_BS_CFG_SELECT_LEVEL is a local configuration parameter to allow 
 *    rapid minimal/default/maximum/specials configuration
 * 2. Should be always externally defined (never commit to code database).
 *    PRH_BS_CFG_SELECT_LEVEL will normally be specified in a make file.
 *    If not specified the build will be default.
 */

#ifndef PRH_BS_CFG_TABASCO_VERSION
#define PRH_BS_CFG_TABASCO_VERSION      PRH_BS_HW_TABASCO_VERSION_T1_0_0
#endif

#ifndef PRH_BS_CFG_LOCAL_NAME
#define PRH_BS_CFG_LOCAL_NAME        "BEKEN HID" //"Ceva XpertBlue"
#endif


#define BK3000_VERSION  0x20160406



#define PRH_BS_CFG_LMP_VERSION        4
#define PRH_BS_CFG_LMP_SUBVERSION     0x1060

#define PRH_BS_CFG_HCI_VERSION        PRH_BS_CFG_LMP_VERSION
#define PRH_BS_CFG_HCI_REVISION       PRH_BS_CFG_LMP_SUBVERSION

#ifndef PRH_BS_CFG_MANUFACTURER_NAME
#define PRH_BS_CFG_MANUFACTURER_NAME  0x000A
#endif

#if !defined(PRH_BS_CFG_SELECT_LEVEL) 
#define PRH_BS_CFG_SELECT_LEVEL      3 /* 0: Headset, 1: V2.1 - min. ACL/SCO buffers, 2:V2.0+EDR, 3: V2.1, 4: Deployed, 5:Max 2DH3 */
#endif 

#define mSYSfeatures_Select_Min_Default_Max(cfg_0, cfg_1, cfg_2, cfg_3, cfg_4, cfg_5) \
( (0xFF*(PRH_BS_CFG_SELECT_LEVEL==0) & cfg_0) | (0xFF*(PRH_BS_CFG_SELECT_LEVEL==1) & cfg_1) | \
  (0xFF*(PRH_BS_CFG_SELECT_LEVEL==2) & cfg_2) | (0xFF*(PRH_BS_CFG_SELECT_LEVEL==3) & cfg_3) | \
  (0xFF*(PRH_BS_CFG_SELECT_LEVEL==4) & cfg_4) | (0xFF*(PRH_BS_CFG_SELECT_LEVEL==5) & cfg_5))

/*
 * LMP Features Bytes 0..2   Configurations(Headset, V2.1 - min. ACL/SCO buffers, V2.0+EDR, V2.1, Deployed, Max 2DH3)
 */
#define PRH_BS_CFG_BYTE_0   mSYSfeatures_Select_Min_Default_Max(0x04, 0xBF, 0xFF, 0xFF, 0xFF, 0xFD)
//#define PRH_BS_CFG_BYTE_1   mSYSfeatures_Select_Min_Default_Max(0xFA, 0xC6, 0xFB, 0xFF, 0xFF, 0xFB)
#define PRH_BS_CFG_BYTE_1   mSYSfeatures_Select_Min_Default_Max(0x07, 0x07, 0x07, 0x07, 0x07, 0x07)

//#define PRH_BS_CFG_BYTE_2   mSYSfeatures_Select_Min_Default_Max(0x0D, 0x8D, 0x8D, 0x8D, 0x8D, 0x8D)
#define PRH_BS_CFG_BYTE_2   mSYSfeatures_Select_Min_Default_Max(0x08, 0x88, 0x88, 0x88, 0x88, 0x88)

//disable Esco packet here 2011-11-22 byte3<7>;byte4<0,1>;byte5<5,6,7>
//#if( defined(DISABLE_EDR2) &&(defined(DISABLE_EDR3)) )
//disable EDR2 byte3<1>;
//disable EDR3 byte3<2>;;byte4<7>;byte5<0>
//#define PRH_BS_CFG_BYTE_3   mSYSfeatures_Select_Min_Default_Max(0x40, 0x78, 0xFE, 0xFE, 0xFE, 0xFA)
//#define PRH_BS_CFG_BYTE_4   mSYSfeatures_Select_Min_Default_Max(0x00, 0x18, 0x9B, 0x9B, 0x9B, 0x9B)
//#define PRH_BS_CFG_BYTE_5   mSYSfeatures_Select_Min_Default_Max(0x00, 0x1e, 0xF9, 0xFF, 0xFF, 0x1E)
//#else
//#ifdef DISABLE_EDR3
//disable EDR3 byte3<2>;byte4<7>;byte5<0>
//#define PRH_BS_CFG_BYTE_3   mSYSfeatures_Select_Min_Default_Max(0x40, 0x7a, 0xFE, 0xFE, 0xFE, 0xFA)
//#define PRH_BS_CFG_BYTE_4   mSYSfeatures_Select_Min_Default_Max(0x00, 0x18, 0x9B, 0x9B, 0x9B, 0x9B)
//#define PRH_BS_CFG_BYTE_5   mSYSfeatures_Select_Min_Default_Max(0x00, 0x1e, 0xF9, 0xFF, 0xFF, 0x1E)
//#else
#define PRH_BS_CFG_BYTE_3   mSYSfeatures_Select_Min_Default_Max(0x40, 0x7e, 0xFE, 0xFE, 0xFE, 0xFA)
#define PRH_BS_CFG_BYTE_4   mSYSfeatures_Select_Min_Default_Max(0x00, 0x98, 0x9B, 0x9B, 0x9B, 0x9B)
//#define PRH_BS_CFG_BYTE_4   mSYSfeatures_Select_Min_Default_Max(0x00, 0x80, 0x85, 0x85, 0x85, 0x85)
//#define PRH_BS_CFG_BYTE_5   mSYSfeatures_Select_Min_Default_Max(0x00, 0x1f, 0xF9, 0xFF, 0xFF, 0x1E)
#define PRH_BS_CFG_BYTE_5   mSYSfeatures_Select_Min_Default_Max(0x00, 0x1d, 0xF9, 0xFd, 0xFd, 0x1c)
//#endif
//#endif


#define PRH_BS_CFG_BYTE_6   mSYSfeatures_Select_Min_Default_Max(0x18, 0x79, 0x00, 0x79, 0x79, 0x79)

#define PRH_BS_CFG_BYTE_7   mSYSfeatures_Select_Min_Default_Max(0x82, 0x83, 0x82, 0x83, 0x83, 0x83)

/*
 * PRH Features Bytes 8..13 
 */
#define PRH_BS_CFG_BYTE_8   mSYSfeatures_Select_Min_Default_Max(0x28, 0x3F, 0xFF, 0xFF, 0xFF, 0xFF)
// No Testmode Tester
//#define PRH_BS_CFG_BYTE_9   mSYSfeatures_Select_Min_Default_Max(0x02, 0xA7, 0xE7, 0xA7, 0xA7, 0xA7)
// Use Testmode Tester

//#define PRH_BS_CFG_BYTE_9   mSYSfeatures_Select_Min_Default_Max(0x02, 0xB7, 0xE7, 0xB7, 0xB7, 0xB7)

// Enable Data Pump
#define PRH_BS_CFG_BYTE_9   mSYSfeatures_Select_Min_Default_Max(0x02, 0xB7, 0xE7, 0xB7, 0xB7, 0xB7)


#define PRH_BS_CFG_BYTE_10  mSYSfeatures_Select_Min_Default_Max(0x5E, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF)

#define PRH_BS_CFG_BYTE_11  mSYSfeatures_Select_Min_Default_Max(0x4B, 0x37, 0x4F, 0x7F, 0x7F, 0x4F)

//for no SCO_HCI_Syn
//#define PRH_BS_CFG_BYTE_11  mSYSfeatures_Select_Min_Default_Max(0x0B, 0x3F, 0x0F, 0x3F, 0x3F, 0x0F)


#define PRH_BS_CFG_BYTE_12  mSYSfeatures_Select_Min_Default_Max(0x00, 0x00, 0x07, 0x07, 0x07, 0x00)
// Remove All LMP & LC tracing for BQB.
//#define PRH_BS_CFG_BYTE_12  mSYSfeatures_Select_Min_Default_Max(0x00, 0x00, 0x00, 0x00, 0x00, 0x00)
// Turn off fast inquiry responses - Required for Extended Inquiry 
#define PRH_BS_CFG_BYTE_13  mSYSfeatures_Select_Min_Default_Max(0x00, 0xE4, 0xE4, 0xE4, 0xE4, 0xE4)
#define PRH_BS_CFG_BYTE_14  mSYSfeatures_Select_Min_Default_Max(0x00, 0xF7, 0xF7, 0xF7, 0xF7, 0xF7)
#define PRH_BS_CFG_BYTE_15  mSYSfeatures_Select_Min_Default_Max(0x00, 0x1E, 0x1E, 0x1E, 0x1E, 0x1E)

#endif /* #ifndef PRH_BS_FEATURES_DEFINITION_FILE_EXISTS */

/*
 * The number of features pages is the number of features bytes divided by 8
 */
#define NUM_FEATURES_PAGES 2
#define BT21_CONFORMANCE_BUILD
 
#if 0 // Below defines should be zero for testing with Beken Agilent tester
#define LC_DEFERRED_PAYLOAD_EXTRACTION_SUPPORTED 1
#define LC_DEFERRED_LOOPBACK_PAYLOAD_EXTRACTION_SUPPORTED 1
#else
#define LC_DEFERRED_PAYLOAD_EXTRACTION_SUPPORTED 0
#define LC_DEFERRED_LOOPBACK_PAYLOAD_EXTRACTION_SUPPORTED 0
#endif
#define FLASH_BUILD                     1
#define UNIT_TEST_BUILD                 2
#define DEBUG_BUILD                     3
#define COMBINED_BUILD                  6
#define GENERIC_BUILD                   7

 
/*
 * Host Controller Configuration Options that are normally fixed for normal
 * HC Builds
 */
#define NDEBUG 0
#define STATIC static

/*
 * Host Controller Configuration Options that are variable but proven
 */
#define TABASCO_OLD_SER_BLK_SUPPORTED 1

/***********************************************************************
 * LMP Features (as per Bluetooth LMP features)
 *
 * (effectively HC system features)
 *
 *
 * Note each <feature_name> has two associated definitions:
 *
 * #define PRH_BS_CFG_SYS_<feature_name>_FEATURE           0x0000
 * #define PRH_BS_CFG_SYS_<feature_name>_SUPPORTED         0
 ***********************************************************************/

#define mSYSfeatures_Check_Feature(Feature_Short_Name, Byte_Num)        \
     ( ( PRH_BS_CFG_##Feature_Short_Name##_FEATURE &0xFF &              \
         PRH_BS_CFG_BYTE_##Byte_Num ) != 0 )

#define mSYSfeatures_Extract_Feature_Bit(Feature_Short_Name)            \
     (   PRH_BS_CFG_##Feature_Short_Name##_FEATURE &                    \
         (PRH_BS_CFG_##Feature_Short_Name##_SUPPORTED*0xFF)  )

#define mSYSfeatures_Extract_Feature_Combined_Byte(b0, b1, b2, b3, b4, b5, b6, b7) \
( mSYSfeatures_Extract_Feature_Bit(b0) |                                \
  mSYSfeatures_Extract_Feature_Bit(b1) |                                \
  mSYSfeatures_Extract_Feature_Bit(b2) |                                \
  mSYSfeatures_Extract_Feature_Bit(b3) |                                \
  mSYSfeatures_Extract_Feature_Bit(b4) |                                \
  mSYSfeatures_Extract_Feature_Bit(b5) |                                \
  mSYSfeatures_Extract_Feature_Bit(b6) |                                \
  mSYSfeatures_Extract_Feature_Bit(b7) )                         

#define PRH_BS_CFG_SYS_UNDEFINED_FEATURE           0x0000
#define PRH_BS_CFG_SYS_UNDEFINED_SUPPORTED         0

/*
 * LMP Feature definition 0xBBbb   BB byte position, bb bit position
 */
#define PRH_BS_CFG_SYS_LMP_THREE_SLOT_PKT_FEATURE           0x0001
#define PRH_BS_CFG_SYS_LMP_FIVE_SLOT_PKT_FEATURE            0x0002
#define PRH_BS_CFG_SYS_LMP_ENCRYPTION_FEATURE               0x0004
#define PRH_BS_CFG_SYS_LMP_SLOT_OFFSET_FEATURE              0x0008
#define PRH_BS_CFG_SYS_LMP_TIMING_INFO_FEATURE              0x0010
#define PRH_BS_CFG_SYS_LMP_MSS_FEATURE                      0x0020
#define PRH_BS_CFG_SYS_LMP_HOLD_FEATURE                     0x0040
#define PRH_BS_CFG_SYS_LMP_SNIFF_FEATURE                    0x0080

#define PRH_BS_CFG_BYTE_0_DESCRIPTION  mSYSfeatures_Extract_Feature_Combined_Byte( \
        SYS_LMP_THREE_SLOT_PKT, SYS_LMP_FIVE_SLOT_PKT, \
        SYS_LMP_ENCRYPTION, SYS_LMP_SLOT_OFFSET, \
        SYS_LMP_TIMING_INFO, SYS_LMP_MSS, SYS_LMP_HOLD, SYS_LMP_SNIFF) 


#define PRH_BS_CFG_SYS_LMP_PARK_FEATURE                     0x0101
#define PRH_BS_CFG_SYS_LMP_RSSI_FEATURE                     0x0102
#define PRH_BS_CFG_SYS_LMP_CHANNEL_DRIVEN_QUALITY_FEATURE   0x0104


#ifdef MINIMIZE_DATA_MEMORY_FOR_CHIP_TEST
#define PRH_BS_CFG_SYS_LMP_SCO_FEATURE                      0
#else
#define PRH_BS_CFG_SYS_LMP_SCO_FEATURE                      0x0108
#endif

#ifdef MINIMIZE_DATA_MEMORY_FOR_CHIP_TEST
#define PRH_BS_CFG_SYS_LMP_HV2_FEATURE                      0x00
#define PRH_BS_CFG_SYS_LMP_HV3_FEATURE                      0x00
#else
#define PRH_BS_CFG_SYS_LMP_HV2_FEATURE                      0x0110
#define PRH_BS_CFG_SYS_LMP_HV3_FEATURE                      0x0120

#endif


#define PRH_BS_CFG_SYS_LMP_U_LAW_FEATURE                    0x0140
#define PRH_BS_CFG_SYS_LMP_A_LAW_FEATURE                    0x0180

#define PRH_BS_CFG_BYTE_1_DESCRIPTION  mSYSfeatures_Extract_Feature_Combined_Byte( \
        SYS_LMP_PARK, SYS_LMP_RSSI, SYS_LMP_CHANNEL_DRIVEN_QUALITY, SYS_LMP_SCO, \
        SYS_LMP_HV2, SYS_LMP_HV3, SYS_LMP_U_LAW, SYS_LMP_A_LAW)

#define PRH_BS_CFG_SYS_LMP_CVSD_FEATURE                     0x0201
#define PRH_BS_CFG_SYS_LMP_OPTIONAL_PAGING_FEATURE          0x0202
#define PRH_BS_CFG_SYS_LMP_POWER_CONTROL_FEATURE            0x0204
#define PRH_BS_CFG_SYS_LMP_TRANSPARENT_SCO_FEATURE          0x0208
#define PRH_BS_CFG_SYS_LMP_FC_LAG0_FEATURE                  0x0210
#define PRH_BS_CFG_SYS_LMP_FC_LAG1_FEATURE                  0x0220
#define PRH_BS_CFG_SYS_LMP_FC_LAG2_FEATURE                  0x0240
#define PRH_BS_CFG_SYS_LMP_BROADCAST_ENCRYPTION_FEATURE     0x0280

#define PRH_BS_CFG_BYTE_2_DESCRIPTION  mSYSfeatures_Extract_Feature_Combined_Byte( \
        SYS_LMP_CVSD, SYS_LMP_OPTIONAL_PAGING, \
        SYS_LMP_POWER_CONTROL, SYS_LMP_TRANSPARENT_SCO, \
        SYS_LMP_FC_LAG0, SYS_LMP_FC_LAG1, SYS_LMP_FC_LAG2, SYS_LMP_BROADCAST_ENCRYPTION)

#define PRH_BS_CFG_SYS_LMP_SCATTER_MODE_FEATURE              0x0301
#define PRH_BS_CFG_SYS_LMP_EDR_ACL_2MBPS_MODE_FEATURE        0x0302
#define PRH_BS_CFG_SYS_LMP_EDR_ACL_3MBPS_MODE_FEATURE        0x0304
#define PRH_BS_CFG_SYS_LMP_ENHANCED_INQUIRY_SCAN_FEATURE     0x0308
#define PRH_BS_CFG_SYS_LMP_INTERLACED_INQUIRY_SCAN_FEATURE   0x0310
#define PRH_BS_CFG_SYS_LMP_INTERLACED_PAGE_SCAN_FEATURE      0x0320
#define PRH_BS_CFG_SYS_LMP_RSSI_INQUIRY_RESULTS_FEATURE      0x0340

#define PRH_BS_CFG_SYS_LMP_EXTENDED_SCO_FEATURE              0x0380

#define PRH_BS_CFG_BYTE_3_DESCRIPTION  mSYSfeatures_Extract_Feature_Combined_Byte( \
        SYS_LMP_SCATTER_MODE, SYS_LMP_EDR_ACL_2MBPS_MODE, SYS_LMP_EDR_ACL_3MBPS_MODE, \
        SYS_LMP_ENHANCED_INQUIRY_SCAN, SYS_LMP_INTERLACED_INQUIRY_SCAN, \
	    SYS_LMP_INTERLACED_PAGE_SCAN, SYS_LMP_RSSI_INQUIRY_RESULTS, SYS_LMP_EXTENDED_SCO)

#define PRH_BS_CFG_SYS_LMP_EV4_PACKETS_FEATURE               0x0401
#define PRH_BS_CFG_SYS_LMP_EV5_PACKETS_FEATURE               0x0402
#define PRH_BS_CFG_SYS_LMP_ABSENCE_MASKS_FEATURE             0x0404
#define PRH_BS_CFG_SYS_LMP_AFH_CAPABLE_SLAVE_FEATURE         0x0408
#define PRH_BS_CFG_SYS_LMP_AFH_CLASSIFICATION_SLAVE_FEATURE  0x0410
#define PRH_BS_CFG_SYS_LMP_ALIAS_AUTHENTICATION_FEATURE      0x0420
#define PRH_BS_CFG_SYS_LMP_ANONYMITY_MODE_FEATURE            0x0440
#define PRH_BS_CFG_SYS_LMP_3SLOT_EDR_ACL_PACKETS_FEATURE     0x0480

#define PRH_BS_CFG_BYTE_4_DESCRIPTION  mSYSfeatures_Extract_Feature_Combined_Byte( \
        SYS_LMP_EV4_PACKETS, SYS_LMP_EV5_PACKETS, \
        SYS_LMP_ABSENCE_MASKS, SYS_LMP_AFH_CAPABLE_SLAVE, \
        SYS_LMP_AFH_CLASSIFICATION_SLAVE, SYS_LMP_ALIAS_AUTHENTICATION, \
        SYS_LMP_ANONYMITY_MODE, SYS_LMP_3SLOT_EDR_ACL_PACKETS)

#define PRH_BS_CFG_SYS_LMP_5SLOT_EDR_ACL_PACKETS_FEATURE     0x0501
#define PRH_BS_CFG_SYS_LMP_SNIFF_SUBRATING_FEATURE           0x0502
#define PRH_BS_CFG_SYS_LMP_PAUSE_ENCRYPTION_FEATURE          0x0504
#define PRH_BS_CFG_SYS_LMP_AFH_CAPABLE_MASTER_FEATURE        0x0508
#define PRH_BS_CFG_SYS_LMP_AFH_CLASSIFICATION_MASTER_FEATURE 0x0510
#define PRH_BS_CFG_SYS_LMP_EDR_ESCO_2MBPS_MODE_FEATURE       0x0520
#define PRH_BS_CFG_SYS_LMP_EDR_ESCO_3MBPS_MODE_FEATURE       0x0540
#define PRH_BS_CFG_SYS_LMP_3SLOT_EDR_ESCO_PACKETS_FEATURE    0x0580

#define PRH_BS_CFG_BYTE_5_DESCRIPTION  mSYSfeatures_Extract_Feature_Combined_Byte( \
        SYS_LMP_5SLOT_EDR_ACL_PACKETS, SYS_LMP_SNIFF_SUBRATING, \
        SYS_LMP_PAUSE_ENCRYPTION, SYS_LMP_AFH_CAPABLE_MASTER, \
        SYS_LMP_AFH_CLASSIFICATION_MASTER, SYS_LMP_EDR_ESCO_2MBPS_MODE, \
        SYS_LMP_EDR_ESCO_3MBPS_MODE, SYS_LMP_3SLOT_EDR_ESCO_PACKETS)

#define PRH_BS_CFG_SYS_LMP_EXTENDED_INQUIRY_RESPONSE_FEATURE 0x0601
#define PRH_BS_CFG_SYS_LMP_SECURE_SIMPLE_PAIRING_FEATURE     0x0608
#define PRH_BS_CFG_SYS_LMP_ENCAPSULATED_PDU_FEATURE          0x0610
#define PRH_BS_CFG_SYS_LMP_ERRONOUS_DATA_REPORTING_FEATURE   0x0620
#define PRH_BS_CFG_SYS_LMP_NONFLUSHABLE_PBF_FEATURE          0x0640

#define PRH_BS_CFG_BYTE_6_DESCRIPTION  mSYSfeatures_Extract_Feature_Combined_Byte( \
        SYS_LMP_EXTENDED_INQUIRY_RESPONSE, SYS_UNDEFINED, \
        SYS_UNDEFINED, SYS_LMP_SECURE_SIMPLE_PAIRING, \
        SYS_LMP_ENCAPSULATED_PDU, SYS_LMP_ERRONOUS_DATA_REPORTING, \
        SYS_LMP_NONFLUSHABLE_PBF, SYS_UNDEFINED)

#define PRH_BS_CFG_SYS_LSTO_CHANGED_EVENT_FEATURE           0x0701
#define PRH_BS_CFG_SYS_INQUIRY_RESPONSE_TX_PWR_FEATURE      0x0702
#define PRH_BS_CFG_SYS_ENHANCED_POWER_CONTROL_FEATURE       0x0704
#define PRH_BS_CFG_SYS_LMP_EXTENDED_FEATURES_FEATURE        0x0780

#define PRH_BS_CFG_BYTE_7_DESCRIPTION  mSYSfeatures_Extract_Feature_Combined_Byte( \
        SYS_LSTO_CHANGED_EVENT, SYS_INQUIRY_RESPONSE_TX_PWR, \
        SYS_ENHANCED_POWER_CONTROL, SYS_UNDEFINED, \
        SYS_UNDEFINED, SYS_UNDEFINED, \
        SYS_UNDEFINED, SYS_LMP_EXTENDED_FEATURES)

/* 
 * Byte 0 of LMP Features
 */
#define PRH_BS_CFG_SYS_LMP_THREE_SLOT_PKT_SUPPORTED         \
        mSYSfeatures_Check_Feature(SYS_LMP_THREE_SLOT_PKT, 0)
#define PRH_BS_CFG_SYS_LMP_FIVE_SLOT_PKT_SUPPORTED          \
        mSYSfeatures_Check_Feature(SYS_LMP_FIVE_SLOT_PKT, 0)
#define PRH_BS_CFG_SYS_LMP_ENCRYPTION_SUPPORTED             \
        mSYSfeatures_Check_Feature(SYS_LMP_ENCRYPTION, 0)
#define PRH_BS_CFG_SYS_LMP_SLOT_OFFSET_SUPPORTED            \
        mSYSfeatures_Check_Feature(SYS_LMP_SLOT_OFFSET, 0)
#define PRH_BS_CFG_SYS_LMP_TIMING_INFO_SUPPORTED            \
        mSYSfeatures_Check_Feature(SYS_LMP_TIMING_INFO, 0)
#define PRH_BS_CFG_SYS_LMP_MSS_SUPPORTED                    \
        mSYSfeatures_Check_Feature(SYS_LMP_MSS, 0)
#define PRH_BS_CFG_SYS_LMP_HOLD_SUPPORTED                   \
        mSYSfeatures_Check_Feature(SYS_LMP_HOLD, 0)
#define PRH_BS_CFG_SYS_LMP_SNIFF_SUPPORTED                  \
        mSYSfeatures_Check_Feature(SYS_LMP_SNIFF, 0)

/* 
 * Byte 1 of LMP Features 
 */
#define PRH_BS_CFG_SYS_LMP_PARK_SUPPORTED                   \
        mSYSfeatures_Check_Feature(SYS_LMP_PARK, 1)
#define PRH_BS_CFG_SYS_LMP_RSSI_SUPPORTED                   \
        mSYSfeatures_Check_Feature(SYS_LMP_RSSI, 1)
#define PRH_BS_CFG_SYS_LMP_CHANNEL_DRIVEN_QUALITY_SUPPORTED \
        mSYSfeatures_Check_Feature(SYS_LMP_CHANNEL_DRIVEN_QUALITY, 1)
#define PRH_BS_CFG_SYS_LMP_SCO_SUPPORTED                    \
        mSYSfeatures_Check_Feature(SYS_LMP_SCO, 1)
#define PRH_BS_CFG_SYS_LMP_HV2_SUPPORTED                    \
        mSYSfeatures_Check_Feature(SYS_LMP_HV2, 1)
#define PRH_BS_CFG_SYS_LMP_HV3_SUPPORTED                    \
        mSYSfeatures_Check_Feature(SYS_LMP_HV3, 1)
#define PRH_BS_CFG_SYS_LMP_U_LAW_SUPPORTED                  \
        mSYSfeatures_Check_Feature(SYS_LMP_U_LAW, 1)
#define PRH_BS_CFG_SYS_LMP_A_LAW_SUPPORTED                  \
        mSYSfeatures_Check_Feature(SYS_LMP_A_LAW, 1)

/* 
 * Byte 2 of LMP Features
 */
#define PRH_BS_CFG_SYS_LMP_CVSD_SUPPORTED                   \
        mSYSfeatures_Check_Feature(SYS_LMP_CVSD, 2)
#define PRH_BS_CFG_SYS_LMP_OPTIONAL_PAGING_SUPPORTED        \
        mSYSfeatures_Check_Feature(SYS_LMP_OPTIONAL_PAGING, 2)
#define PRH_BS_CFG_SYS_LMP_POWER_CONTROL_SUPPORTED          \
        mSYSfeatures_Check_Feature(SYS_LMP_POWER_CONTROL, 2)
#define PRH_BS_CFG_SYS_LMP_TRANSPARENT_SCO_SUPPORTED        \
        mSYSfeatures_Check_Feature(SYS_LMP_TRANSPARENT_SCO, 2)
#define PRH_BS_CFG_SYS_LMP_FC_LAG0_SUPPORTED                \
        mSYSfeatures_Check_Feature(SYS_LMP_FC_LAG0, 2)
#define PRH_BS_CFG_SYS_LMP_FC_LAG1_SUPPORTED                \
        mSYSfeatures_Check_Feature(SYS_LMP_FC_LAG1, 2)
#define PRH_BS_CFG_SYS_LMP_FC_LAG2_SUPPORTED                \
        mSYSfeatures_Check_Feature(SYS_LMP_FC_LAG2, 2)
#define PRH_BS_CFG_SYS_LMP_BROADCAST_ENCRYPTION_SUPPORTED                \
        mSYSfeatures_Check_Feature(SYS_LMP_BROADCAST_ENCRYPTION, 2)

/* 
 * Byte 3 of LMP Features
 */
#define PRH_BS_CFG_SYS_LMP_SCATTER_MODE_SUPPORTED                       \
        mSYSfeatures_Check_Feature(SYS_LMP_SCATTER_MODE, 3)
#define PRH_BS_CFG_SYS_LMP_EDR_ACL_2MBPS_MODE_SUPPORTED					\
        mSYSfeatures_Check_Feature(SYS_LMP_EDR_ACL_2MBPS_MODE, 3)
#define PRH_BS_CFG_SYS_LMP_EDR_ACL_3MBPS_MODE_SUPPORTED					\
		mSYSfeatures_Check_Feature(SYS_LMP_EDR_ACL_3MBPS_MODE, 3)
#define PRH_BS_CFG_SYS_LMP_ENHANCED_INQUIRY_SCAN_SUPPORTED              \
        mSYSfeatures_Check_Feature(SYS_LMP_ENHANCED_INQUIRY_SCAN, 3)
#define PRH_BS_CFG_SYS_LMP_INTERLACED_INQUIRY_SCAN_SUPPORTED            \
        mSYSfeatures_Check_Feature(SYS_LMP_INTERLACED_INQUIRY_SCAN, 3)
#define PRH_BS_CFG_SYS_LMP_INTERLACED_PAGE_SCAN_SUPPORTED               \
        mSYSfeatures_Check_Feature(SYS_LMP_INTERLACED_PAGE_SCAN, 3)
#define PRH_BS_CFG_SYS_LMP_RSSI_INQUIRY_RESULTS_SUPPORTED               \
        mSYSfeatures_Check_Feature(SYS_LMP_RSSI_INQUIRY_RESULTS, 3)
#define PRH_BS_CFG_SYS_LMP_EXTENDED_SCO_SUPPORTED                       \
        mSYSfeatures_Check_Feature(SYS_LMP_EXTENDED_SCO, 3)

/* 
 * Byte 4 of LMP Features
 */
#define PRH_BS_CFG_SYS_LMP_EV4_PACKETS_SUPPORTED                        \
        mSYSfeatures_Check_Feature(SYS_LMP_EV4_PACKETS, 4)
#define PRH_BS_CFG_SYS_LMP_EV5_PACKETS_SUPPORTED                        \
        mSYSfeatures_Check_Feature(SYS_LMP_EV5_PACKETS, 4)
#define PRH_BS_CFG_SYS_LMP_ABSENCE_MASKS_SUPPORTED                      \
        mSYSfeatures_Check_Feature(SYS_LMP_ABSENCE_MASKS, 4)
#define PRH_BS_CFG_SYS_LMP_AFH_CAPABLE_SLAVE_SUPPORTED                  \
        mSYSfeatures_Check_Feature(SYS_LMP_AFH_CAPABLE_SLAVE, 4)
#define PRH_BS_CFG_SYS_LMP_AFH_CLASSIFICATION_SLAVE_SUPPORTED           \
        mSYSfeatures_Check_Feature(SYS_LMP_AFH_CLASSIFICATION_SLAVE, 4)
#define PRH_BS_CFG_SYS_LMP_ALIAS_AUTHENTICATION_SUPPORTED               \
        mSYSfeatures_Check_Feature(SYS_LMP_ALIAS_AUTHENTICATION, 4)
#define PRH_BS_CFG_SYS_LMP_ANONYMITY_MODE_SUPPORTED                     \
        mSYSfeatures_Check_Feature(SYS_LMP_ANONYMITY_MODE, 4)
#define PRH_BS_CFG_SYS_LMP_3SLOT_EDR_ACL_PACKETS_SUPPORTED				\
		mSYSfeatures_Check_Feature(SYS_LMP_3SLOT_EDR_ACL_PACKETS, 4)

/* 
 * Byte 5 of LMP Features
 */
#define PRH_BS_CFG_SYS_LMP_5SLOT_EDR_ACL_PACKETS_SUPPORTED				\
		mSYSfeatures_Check_Feature(SYS_LMP_5SLOT_EDR_ACL_PACKETS, 5)
#define PRH_BS_CFG_SYS_LMP_SNIFF_SUBRATING_SUPPORTED					\
		mSYSfeatures_Check_Feature(SYS_LMP_SNIFF_SUBRATING, 5)
#define PRH_BS_CFG_SYS_LMP_PAUSE_ENCRYPTION_SUPPORTED					\
		mSYSfeatures_Check_Feature(SYS_LMP_PAUSE_ENCRYPTION, 5)
#define PRH_BS_CFG_SYS_LMP_AFH_CAPABLE_MASTER_SUPPORTED                 \
        mSYSfeatures_Check_Feature(SYS_LMP_AFH_CAPABLE_MASTER, 5)
#define PRH_BS_CFG_SYS_LMP_AFH_CLASSIFICATION_MASTER_SUPPORTED          \
        mSYSfeatures_Check_Feature(SYS_LMP_AFH_CLASSIFICATION_MASTER, 5)
#define PRH_BS_CFG_SYS_LMP_EDR_ESCO_2MBPS_MODE_SUPPORTED				\
		mSYSfeatures_Check_Feature(SYS_LMP_EDR_ESCO_2MBPS_MODE, 5)
#define PRH_BS_CFG_SYS_LMP_EDR_ESCO_3MBPS_MODE_SUPPORTED				\
		mSYSfeatures_Check_Feature(SYS_LMP_EDR_ESCO_3MBPS_MODE, 5)
#define PRH_BS_CFG_SYS_LMP_3SLOT_EDR_ESCO_PACKETS_SUPPORTED				\
		mSYSfeatures_Check_Feature(SYS_LMP_3SLOT_EDR_ESCO_PACKETS, 5)

/* 
 * Byte 6 of LMP Features
 */
#define PRH_BS_CFG_SYS_LMP_EXTENDED_INQUIRY_RESPONSE_SUPPORTED			\
		mSYSfeatures_Check_Feature(SYS_LMP_EXTENDED_INQUIRY_RESPONSE, 6)
#define PRH_BS_CFG_SYS_LMP_SECURE_SIMPLE_PAIRING_SUPPORTED				\
		mSYSfeatures_Check_Feature(SYS_LMP_SECURE_SIMPLE_PAIRING, 6)
#define PRH_BS_CFG_SYS_LMP_ENCAPSULATED_PDU_SUPPORTED					\
		mSYSfeatures_Check_Feature(SYS_LMP_ENCAPSULATED_PDU, 6)
#define PRH_BS_CFG_SYS_LMP_ERRONOUS_DATA_REPORTING_SUPPORTED			\
		mSYSfeatures_Check_Feature(SYS_LMP_ERRONOUS_DATA_REPORTING, 6)
#define PRH_BS_CFG_SYS_LMP_NONFLUSHABLE_PBF_SUPPORTED					\
		mSYSfeatures_Check_Feature(SYS_LMP_NONFLUSHABLE_PBF, 6)

/* 
 * Byte 7 of LMP Features
 */
#define PRH_BS_CFG_SYS_LSTO_CHANGED_EVENT_SUPPORTED					   \
		mSYSfeatures_Check_Feature(SYS_LSTO_CHANGED_EVENT, 7)
#define PRH_BS_CFG_SYS_INQUIRY_RESPONSE_TX_PWR_SUPPORTED			   \
		mSYSfeatures_Check_Feature(SYS_INQUIRY_RESPONSE_TX_PWR, 7) 
#define PRH_BS_CFG_SYS_ENHANCED_POWER_CONTROL_SUPPORTED			   \
		mSYSfeatures_Check_Feature(SYS_ENHANCED_POWER_CONTROL, 7) 
#define PRH_BS_CFG_SYS_LMP_EXTENDED_FEATURES_SUPPORTED                 \
        mSYSfeatures_Check_Feature(SYS_LMP_EXTENDED_FEATURES, 7)

/***********************************************************************
 * Parthus Features (extensions similar Bluetooth LMP features)
 *
 ***********************************************************************/
/*
 * PARTHUS Feature definition 0xBBbb   BB byte position, bb bit position
 */
#define PRH_BS_CFG_SYS_FILTERS_FEATURE                      0x0801
#define PRH_BS_CFG_SYS_HC_TO_HOST_FLOW_CONTROL_FEATURE      0x0802
#define PRH_BS_CFG_SYS_LINK_KEY_DATABASE_FEATURE            0x0804
#define PRH_BS_CFG_SYS_REMOTE_NAME_REQUEST_FEATURE          0x0808
#define PRH_BS_CFG_SYS_LOOPBACK_VIA_HCI_FEATURE             0x0810
#define PRH_BS_CFG_SYS_FLUSH_FEATURE                        0x0820
#define PRH_BS_CFG_SYS_PICONET_FEATURE                      0x0840
#define PRH_BS_CFG_SYS_SCATTERNET_FEATURE                   0x0880

#define PRH_BS_CFG_BYTE_8_DESCRIPTION  mSYSfeatures_Extract_Feature_Combined_Byte( \
        SYS_FILTERS, SYS_HC_TO_HOST_FLOW_CONTROL, SYS_LINK_KEY_DATABASE, SYS_REMOTE_NAME_REQUEST, \
        SYS_LOOPBACK_VIA_HCI, SYS_FLUSH, SYS_PICONET, SYS_SCATTERNET)

#define PRH_BS_CFG_SYS_MODIFY_TIMERS_FEATURE                0x0901
#define PRH_BS_CFG_SYS_TEST_MODE_FEATURE                    0x0902
#define PRH_BS_CFG_SYS_CHANGE_LOCAL_NAME_FEATURE            0x0904
#define PRH_BS_CFG_SYS_TEST_MODE_TESTER_FEATURE             0x0910
#define PRH_BS_CFG_SYS_NEGOTIATED_HOLD_FEATURE              0x0920
#define PRH_BS_CFG_SYS_DATA_PUMP_FEATURE                    0x0940
#define PRH_BS_CFG_SYS_HOP_MODE_EUROPE_USA_ONLY_FEATURE     0x0980

#define PRH_BS_CFG_BYTE_9_DESCRIPTION  mSYSfeatures_Extract_Feature_Combined_Byte( \
        SYS_MODIFY_TIMERS, SYS_TEST_MODE, SYS_CHANGE_LOCAL_NAME,  SYS_UNDEFINED,\
        SYS_TEST_MODE_TESTER, SYS_NEGOTIATED_HOLD, SYS_DATA_PUMP, SYS_HOP_MODE_EUROPE_USA_ONLY)

#define PRH_BS_CFG_SYS_WRITE_SCAN_ACTIVITY_FEATURE          0x0A01
#define PRH_BS_CFG_SYS_PAGE_FEATURE                         0x0A02
#define PRH_BS_CFG_SYS_PAGE_SCAN_FEATURE                    0x0A04
#define PRH_BS_CFG_SYS_INQUIRY_FEATURE                      0x0A08
#define PRH_BS_CFG_SYS_INQUIRY_SCAN_FEATURE                 0x0A10
#define PRH_BS_CFG_SYS_INQUIRY_READ_WRITE_IAC_LAP_FEATURE   0x0A20
#define PRH_BS_CFG_SYS_INQUIRY_UNIQUE_RESULTS_FEATURE       0x0A40
#define PRH_BS_CFG_SYS_INQUIRY_PERIODIC_FEATURE             0x0A80

#define PRH_BS_CFG_BYTE_10_DESCRIPTION  mSYSfeatures_Extract_Feature_Combined_Byte( \
        SYS_WRITE_SCAN_ACTIVITY, SYS_PAGE, SYS_PAGE_SCAN, SYS_INQUIRY, SYS_INQUIRY_SCAN, \
        SYS_INQUIRY_READ_WRITE_IAC_LAP, SYS_INQUIRY_UNIQUE_RESULTS, SYS_INQUIRY_PERIODIC)

#define PRH_BS_CFG_SYS_QOS_FEATURE                          0x0B01
#define PRH_BS_CFG_SYS_FLOW_SPECIFICATION_FEATURE           0x0B02
#define PRH_BS_CFG_SYS_CHANGE_ACL_PACKET_TYPE_FEATURE       0x0B04

#ifdef MINIMIZE_DATA_MEMORY_FOR_CHIP_TEST
#define PRH_BS_CFG_SYS_CHANGE_SCO_PACKET_TYPE_FEATURE       0x0
#else
#define PRH_BS_CFG_SYS_CHANGE_SCO_PACKET_TYPE_FEATURE       0x0B08
#endif

#define PRH_BS_CFG_SYS_LM_AUTO_RATE_FEATURE                 0x0B10
#define PRH_BS_CFG_SYS_LM_PREFERRED_RATE_FEATURE            0x0B20

#ifdef MINIMIZE_DATA_MEMORY_FOR_CHIP_TEST
#define PRH_BS_CFG_SYS_SYN_VIA_HCI_FEATURE                  0x00
#else
#define PRH_BS_CFG_SYS_SYN_VIA_HCI_FEATURE                  0x0B40
#endif


#define PRH_BS_CFG_BYTE_11_DESCRIPTION  mSYSfeatures_Extract_Feature_Combined_Byte( \
        SYS_QOS, SYS_FLOW_SPECIFICATION, SYS_CHANGE_ACL_PACKET_TYPE, SYS_CHANGE_SCO_PACKET_TYPE, \
        SYS_LM_AUTO_RATE, SYS_LM_PREFERRED_RATE, SYS_SYN_VIA_HCI, SYS_UNDEFINED)

#define PRH_BS_CFG_SYS_TRACE_LMP_VIA_HCI_FEATURE            0x0C01
#define PRH_BS_CFG_SYS_TRACE_LC_VIA_HCI_FEATURE             0x0C02
#define PRH_BS_CFG_SYS_TRACE_BB_VIA_HCI_FEATURE             0x0C04
#define PRH_BS_CFG_SYS_TRACE_RADIO_VIA_HCI_FEATURE          0x0C08
#define PRH_BS_CFG_SYS_TRACE_INTR_VIA_HCI_FEATURE           0x0C10
#define PRH_BS_CFG_SYS_TRACE_BB_IDLE_VIA_HCI_FEATURE        0x0C20

#define PRH_BS_CFG_BYTE_12_DESCRIPTION  mSYSfeatures_Extract_Feature_Combined_Byte( \
        SYS_TRACE_LMP_VIA_HCI, SYS_TRACE_LC_VIA_HCI, SYS_TRACE_BB_VIA_HCI, \
        SYS_TRACE_RADIO_VIA_HCI, SYS_TRACE_INTR_VIA_HCI, \
        SYS_TRACE_BB_IDLE_VIA_HCI, SYS_UNDEFINED, SYS_UNDEFINED)

#define PRH_BS_CFG_SYS_FAST_INQUIRY_RESPONSE_FEATURE            0x0D01
#define PRH_BS_CFG_SYS_FORCE_SINGLE_SLOT_R2P_FEATURE            0x0D02
#define PRH_BS_CFG_SYS_EXTENDED_HCI_COMMANDS_FEATURE            0x0D04
#define PRH_BS_CFG_SYS_NAK_DUPLICATES_IF_CRC_FEATURE            0x0D08
#define PRH_BS_CFG_SYS_AUTOMATIC_R2P_FEATURE                    0x0D10
#define PRH_BS_CFG_SYS_BROADCAST_NULL_IN_INQ_PAGE_FEATURE       0x0D20
#define PRH_BS_CFG_SYS_PERSISTENT_SCO_IN_SCANS_FEATURE          0x0D40
#define PRH_BS_CFG_SYS_HW_HOP_SELECTION_ENGINE_FEATURE          0x0D80

#define PRH_BS_CFG_BYTE_13_DESCRIPTION  mSYSfeatures_Extract_Feature_Combined_Byte( \
        SYS_FAST_INQUIRY_RESPONSE, SYS_FORCE_SINGLE_SLOT_R2P, SYS_EXTENDED_HCI_COMMANDS, \
        SYS_NAK_DUPLICATES_IF_CRC, SYS_AUTOMATIC_R2P, SYS_BROADCAST_NULL_IN_INQ_PAGE, \
        SYS_PERSISTENT_SCO_IN_SCANS, SYS_HW_HOP_SELECTION_ENGINE)

#define PRH_BS_CFG_SYS_V12_FUNCTIONALITY_FEATURE                0x0E01
#define PRH_BS_CFG_SYS_HCI_READ_CLOCK_FEATURE                   0x0E02
#define PRH_BS_CFG_SYS_CHANNEL_ASSESSMENT_SCHEME_FEATURE        0x0E04
#define PRH_BS_CFG_SYS_EXTRA_SYN_LINKS_FEATURE                  0x0E08
#define PRH_BS_CFG_SYS_READ_LOCAL_EXTENDED_FEATURES_FEATURE     0x0E10
#define PRH_BS_CFG_SYS_READ_REMOTE_EXTENDED_FEATURES_FEATURE    0x0E20
#define PRH_BS_CFG_SYS_SET_EVENT_MASK_FEATURE                   0x0E40
#define PRH_BS_CFG_SYS_CREATE_UNIT_KEY_FEATURE                  0x0E80

#define PRH_BS_CFG_BYTE_14_DESCRIPTION  mSYSfeatures_Extract_Feature_Combined_Byte( \
        SYS_V12_FUNCTIONALITY, SYS_HCI_READ_CLOCK, \
        SYS_CHANNEL_ASSESSMENT_SCHEME, SYS_EXTRA_SYN_LINKS, \
        SYS_READ_LOCAL_EXTENDED_FEATURES, SYS_READ_REMOTE_EXTENDED_FEATURES, \
        SYS_SET_EVENT_MASK, SYS_CREATE_UNIT_KEY)

/*
 * Byte 15 of Features Unused (Byte 7 of Parthus Features Vector)
 */
#define PRH_BS_CFG_SYS_SCO_REPEATER_FEATURE                     0x0F01
#define PRH_BS_CFG_SYS_SSP_OOB_FEATURE                          0x0F02
#define PRH_BS_CFG_SYS_SSP_PASSKEY_FEATURE                      0x0F04
#define PRH_BS_CFG_SYS_DEPRECATED_BT12_FEATURES_FEATURE         0x0F08
#define PRH_BS_CFG_SYS_SSP_KEYPRESS_FEATURE                     0x0F10
#define PRH_BS_CFG_SYS_PTA_DRIVER_FEATURE                       0x0F20


#define PRH_BS_CFG_BYTE_15_DESCRIPTION  mSYSfeatures_Extract_Feature_Combined_Byte( \
        SYS_SCO_REPEATER, SYS_SSP_OOB, SYS_SSP_PASSKEY,SYS_DEPRECATED_BT12_FEATURES, \
        SYS_SSP_KEYPRESS, SYS_PTA_DRIVER, SYS_UNDEFINED, SYS_UNDEFINED)

/* 
 * Byte 8 of Features (Byte 0 of Parthus SUPPORTEDs)
 *
 * Either build from this file definitions or extract from external compiler definitions
 */
#define PRH_BS_CFG_SYS_FILTERS_SUPPORTED                    \
        mSYSfeatures_Check_Feature(SYS_FILTERS, 8)
#define PRH_BS_CFG_SYS_HC_TO_HOST_FLOW_CONTROL_SUPPORTED    \
        mSYSfeatures_Check_Feature(SYS_HC_TO_HOST_FLOW_CONTROL, 8)
#define PRH_BS_CFG_SYS_LINK_KEY_DATABASE_SUPPORTED          \
        mSYSfeatures_Check_Feature(SYS_LINK_KEY_DATABASE, 8)
#define PRH_BS_CFG_SYS_REMOTE_NAME_REQUEST_SUPPORTED        \
        mSYSfeatures_Check_Feature(SYS_REMOTE_NAME_REQUEST, 8)
#define PRH_BS_CFG_SYS_LOOPBACK_VIA_HCI_SUPPORTED           \
        mSYSfeatures_Check_Feature(SYS_LOOPBACK_VIA_HCI, 8)
#define PRH_BS_CFG_SYS_FLUSH_SUPPORTED                      \
        mSYSfeatures_Check_Feature(SYS_FLUSH, 8)
#define PRH_BS_CFG_SYS_PICONET_SUPPORTED                    \
        mSYSfeatures_Check_Feature(SYS_PICONET, 8)
#define PRH_BS_CFG_SYS_SCATTERNET_SUPPORTED                 \
        mSYSfeatures_Check_Feature(SYS_SCATTERNET, 8)

#ifndef PRH_BS_CFG_SYS_MAX_FILTERS
#if ((PRH_BS_CFG_SELECT_LEVEL==0) || (PRH_BS_CFG_SELECT_LEVEL==1))
#define PRH_BS_CFG_SYS_MAX_FILTERS                  1
#else
#define PRH_BS_CFG_SYS_MAX_FILTERS                  10
#endif
#endif

#ifndef PRH_BS_CFG_SYS_MAX_STORED_LINK_KEYS
#define PRH_BS_CFG_SYS_MAX_STORED_LINK_KEYS         6
#endif

/* 
 * Byte 9 of Features (Byte 1 of Parthus SUPPORTEDs)
 */
#define PRH_BS_CFG_SYS_MODIFY_TIMERS_SUPPORTED              \
        mSYSfeatures_Check_Feature(SYS_MODIFY_TIMERS, 9)
#define PRH_BS_CFG_SYS_CHANGE_LOCAL_NAME_SUPPORTED          \
        mSYSfeatures_Check_Feature(SYS_CHANGE_LOCAL_NAME, 9)
#define PRH_BS_CFG_SYS_TEST_MODE_SUPPORTED                  \
        mSYSfeatures_Check_Feature(SYS_TEST_MODE, 9)
#define PRH_BS_CFG_SYS_TEST_MODE_TESTER_SUPPORTED           \
        mSYSfeatures_Check_Feature(SYS_TEST_MODE_TESTER, 9)
#define PRH_BS_CFG_SYS_NEGOTIATED_HOLD_SUPPORTED            \
        mSYSfeatures_Check_Feature(SYS_NEGOTIATED_HOLD, 9)
#define PRH_BS_CFG_SYS_DATA_PUMP_SUPPORTED                  \
        mSYSfeatures_Check_Feature(SYS_DATA_PUMP, 9)
#define PRH_BS_CFG_SYS_HOP_MODE_EUROPE_USA_ONLY_SUPPORTED   \
        mSYSfeatures_Check_Feature(SYS_HOP_MODE_EUROPE_USA_ONLY, 9)

/* 
 * Byte 10 of Features (Byte 2 of Parthus SUPPORTEDs)
 */
#define PRH_BS_CFG_SYS_WRITE_SCAN_ACTIVITY_SUPPORTED        \
        mSYSfeatures_Check_Feature(SYS_WRITE_SCAN_ACTIVITY, 10)
#define PRH_BS_CFG_SYS_PAGE_SUPPORTED                       \
        mSYSfeatures_Check_Feature(SYS_PAGE, 10)
#define PRH_BS_CFG_SYS_PAGE_SCAN_SUPPORTED                  \
        mSYSfeatures_Check_Feature(SYS_PAGE_SCAN, 10)
#define PRH_BS_CFG_SYS_INQUIRY_SUPPORTED                    \
        mSYSfeatures_Check_Feature(SYS_INQUIRY, 10)
#define PRH_BS_CFG_SYS_INQUIRY_SCAN_SUPPORTED               \
        mSYSfeatures_Check_Feature(SYS_INQUIRY_SCAN, 10)
#define PRH_BS_CFG_SYS_INQUIRY_READ_WRITE_IAC_LAP_SUPPORTED \
        mSYSfeatures_Check_Feature(SYS_INQUIRY_READ_WRITE_IAC_LAP, 10)
#define PRH_BS_CFG_SYS_INQUIRY_UNIQUE_RESULTS_SUPPORTED     \
        mSYSfeatures_Check_Feature(SYS_INQUIRY_UNIQUE_RESULTS, 10)
#define PRH_BS_CFG_SYS_INQUIRY_PERIODIC_SUPPORTED           \
        mSYSfeatures_Check_Feature(SYS_INQUIRY_PERIODIC, 10)

/*
 * Number_Of_Supported_IACs (if no Read/Write then 1 else if not defined then 4)
 */
#if (PRH_BS_CFG_SYS_INQUIRY_READ_WRITE_IAC_LAP_SUPPORTED==0)
#define PRH_BS_CFG_SYS_NUMBER_OF_SUPPORTED_IAC      1
#elif !defined(PRH_BS_CFG_SYS_NUMBER_OF_SUPPORTED_IAC)
#define PRH_BS_CFG_SYS_NUMBER_OF_SUPPORTED_IAC      4
#endif

/* 
 * Byte 11 of Features (Byte 3 of Parthus SUPPORTEDs)
 */
#define PRH_BS_CFG_SYS_QOS_SUPPORTED                        \
        mSYSfeatures_Check_Feature(SYS_QOS, 11)
#define PRH_BS_CFG_SYS_FLOW_SPECIFICATION_SUPPORTED         \
        mSYSfeatures_Check_Feature(SYS_FLOW_SPECIFICATION, 11)
#define PRH_BS_CFG_SYS_CHANGE_ACL_PACKET_TYPE_SUPPORTED     \
        mSYSfeatures_Check_Feature(SYS_CHANGE_ACL_PACKET_TYPE, 11)
#define PRH_BS_CFG_SYS_CHANGE_SCO_PACKET_TYPE_SUPPORTED     \
        mSYSfeatures_Check_Feature(SYS_CHANGE_SCO_PACKET_TYPE, 11)
#define PRH_BS_CFG_SYS_LM_AUTO_RATE_SUPPORTED               \
        mSYSfeatures_Check_Feature(SYS_LM_AUTO_RATE, 11)
#define PRH_BS_CFG_SYS_LM_PREFERRED_RATE_SUPPORTED          \
        mSYSfeatures_Check_Feature(SYS_LM_PREFERRED_RATE, 11)
#define PRH_BS_CFG_SYS_SYN_VIA_HCI_SUPPORTED                \
        mSYSfeatures_Check_Feature(SYS_SYN_VIA_HCI, 11)

/* 
 * Byte 12 of Features (Byte 4 of Parthus SUPPORTEDs)
 */
#define PRH_BS_CFG_SYS_TRACE_LMP_VIA_HCI_SUPPORTED          \
        mSYSfeatures_Check_Feature(SYS_TRACE_LMP_VIA_HCI, 12)
#define PRH_BS_CFG_SYS_TRACE_LC_VIA_HCI_SUPPORTED           \
        mSYSfeatures_Check_Feature(SYS_TRACE_LC_VIA_HCI, 12)
#define PRH_BS_CFG_SYS_TRACE_BB_VIA_HCI_SUPPORTED           \
        mSYSfeatures_Check_Feature(SYS_TRACE_BB_VIA_HCI, 12)
#define PRH_BS_CFG_SYS_TRACE_INTR_VIA_HCI_SUPPORTED         \
        mSYSfeatures_Check_Feature(SYS_TRACE_INTR_VIA_HCI, 12)
#define PRH_BS_CFG_SYS_TRACE_RADIO_VIA_HCI_SUPPORTED        \
        mSYSfeatures_Check_Feature(SYS_TRACE_RADIO_VIA_HCI, 12)
#define PRH_BS_CFG_SYS_TRACE_BB_IDLE_VIA_HCI_SUPPORTED      \
        mSYSfeatures_Check_Feature(SYS_TRACE_BB_IDLE_VIA_HCI, 12)

/* 
 * Byte 13 of Features (Byte 5 of Parthus SUPPORTEDs)
 */
#define PRH_BS_CFG_SYS_FAST_INQUIRY_RESPONSE_SUPPORTED      \
        mSYSfeatures_Check_Feature(SYS_FAST_INQUIRY_RESPONSE, 13)
#define PRH_BS_CFG_SYS_FORCE_SINGLE_SLOT_R2P_SUPPORTED      \
        mSYSfeatures_Check_Feature(SYS_FORCE_SINGLE_SLOT_R2P, 13)
#define PRH_BS_CFG_SYS_EXTENDED_HCI_COMMANDS_SUPPORTED  \
        mSYSfeatures_Check_Feature(SYS_EXTENDED_HCI_COMMANDS, 13)
#define PRH_BS_CFG_SYS_NAK_DUPLICATES_IF_CRC_SUPPORTED \
        mSYSfeatures_Check_Feature(SYS_NAK_DUPLICATES_IF_CRC, 13)
#define PRH_BS_CFG_SYS_AUTOMATIC_R2P_SUPPORTED \
        mSYSfeatures_Check_Feature(SYS_AUTOMATIC_R2P, 13)
#define PRH_BS_CFG_SYS_BROADCAST_NULL_IN_INQ_PAGE_SUPPORTED \
        mSYSfeatures_Check_Feature(SYS_BROADCAST_NULL_IN_INQ_PAGE, 13)
#define PRH_BS_CFG_SYS_PERSISTENT_SCO_IN_SCANS_SUPPORTED \
        mSYSfeatures_Check_Feature(SYS_PERSISTENT_SCO_IN_SCANS, 13)
#define PRH_BS_CFG_SYS_HW_HOP_SELECTION_ENGINE_SUPPORTED \
        mSYSfeatures_Check_Feature(SYS_HW_HOP_SELECTION_ENGINE, 13)

/* 
 * Byte 14 of Features (Byte 6 of Parthus SUPPORTEDs)
 */
#define PRH_BS_CFG_SYS_HCI_V12_FUNCTIONALITY_SUPPORTED \
        mSYSfeatures_Check_Feature(SYS_V12_FUNCTIONALITY, 14)
#define PRH_BS_CFG_SYS_HCI_READ_CLOCK_SUPPORTED \
        mSYSfeatures_Check_Feature(SYS_HCI_READ_CLOCK, 14)
#define PRH_BS_CFG_SYS_CHANNEL_ASSESSMENT_SCHEME_SUPPORTED \
        mSYSfeatures_Check_Feature(SYS_CHANNEL_ASSESSMENT_SCHEME, 14)
#define PRH_BS_CFG_SYS_EXTRA_SYN_LINKS_SUPPORTED \
        mSYSfeatures_Check_Feature(SYS_EXTRA_SYN_LINKS, 14)
#define PRH_BS_CFG_SYS_READ_LOCAL_EXTENDED_FEATURES_SUPPORTED \
        mSYSfeatures_Check_Feature(SYS_READ_LOCAL_EXTENDED_FEATURES, 14)
#define PRH_BS_CFG_SYS_READ_REMOTE_EXTENDED_FEATURES_SUPPORTED \
        mSYSfeatures_Check_Feature(SYS_READ_REMOTE_EXTENDED_FEATURES, 14)
#define PRH_BS_CFG_SYS_SET_EVENT_MASK_SUPPORTED \
        mSYSfeatures_Check_Feature(SYS_SET_EVENT_MASK, 14)
#define PRH_BS_CFG_SYS_CREATE_UNIT_KEY_SUPPORTED \
        mSYSfeatures_Check_Feature(SYS_CREATE_UNIT_KEY, 14)
/* 
 * Byte 15 of Features (Byte 7 of Parthus SUPPORTEDs)
 */
#define PRH_BS_CFG_SYS_SCO_REPEATER_SUPPORTED \
        mSYSfeatures_Check_Feature(SYS_SCO_REPEATER, 15)
#define PRH_BS_CFG_SYS_SSP_OOB_SUPPORTED \
        mSYSfeatures_Check_Feature(SYS_SSP_OOB, 15)
#define PRH_BS_CFG_SYS_SSP_PASSKEY_SUPPORTED \
        mSYSfeatures_Check_Feature(SYS_SSP_PASSKEY, 15)
#define PRH_BS_CFG_SYS_DEPRECATED_BT12_FEATURES_SUPPORTED \
	    mSYSfeatures_Check_Feature(SYS_DEPRECATED_BT12_FEATURES, 15)
#define PRH_BS_CFG_SYS_SSP_KEYPRESS_SUPPORTED \
	    mSYSfeatures_Check_Feature(SYS_SSP_KEYPRESS, 15)
#define PRH_BS_CFG_SYS_PTA_DRIVER_SUPPORTED \
	    mSYSfeatures_Check_Feature(SYS_PTA_DRIVER, 15)
/*
 * Derived Features not included in features bytes above
 */
#define PRH_BS_CFG_SYS_RETURN_TO_PICONET_SUPPORTED          \
        (PRH_BS_CFG_SYS_LMP_HOLD_SUPPORTED ||               \
         PRH_BS_CFG_SYS_LMP_SNIFF_SUPPORTED ||              \
         PRH_BS_CFG_SYS_LMP_PARK_SUPPORTED)

#define PRH_BS_CFG_SYS_LMP_FC_LAG_SUPPORTED                 \
        (PRH_BS_CFG_SYS_LMP_FC_LAG0_SUPPORTED |             \
        (PRH_BS_CFG_SYS_LMP_FC_LAG1_SUPPORTED <<1) |        \
        (PRH_BS_CFG_SYS_LMP_FC_LAG2_SUPPORTED <<2) )

#ifdef MINIMIZE_DATA_MEMORY_FOR_CHIP_TEST
#define PRH_BS_CFG_SYS_TRACE_VIA_HCI_SUPPORTED         0     
#else
#define PRH_BS_CFG_SYS_TRACE_VIA_HCI_SUPPORTED              \
       (PRH_BS_CFG_SYS_TRACE_LMP_VIA_HCI_SUPPORTED ||       \
        PRH_BS_CFG_SYS_TRACE_LC_VIA_HCI_SUPPORTED ||        \
        PRH_BS_CFG_SYS_TRACE_BB_VIA_HCI_SUPPORTED ||        \
        PRH_BS_CFG_SYS_TRACE_INTR_VIA_HCI_SUPPORTED ||      \
        PRH_BS_CFG_SYS_TRACE_RADIO_VIA_HCI_SUPPORTED ||     \
        (BUILD_TYPE==UNIT_TEST_BUILD)    )
#endif




#define PRH_BS_CFG_SYS_LMP_AFH_CAPABLE_SUPPORTED            \
       (PRH_BS_CFG_SYS_LMP_AFH_CAPABLE_MASTER_SUPPORTED ||  \
        PRH_BS_CFG_SYS_LMP_AFH_CAPABLE_SLAVE_SUPPORTED)

#define PRH_BS_CFG_SYS_LMP_AFH_CLASSIFICATION_SUPPORTED            \
       (PRH_BS_CFG_SYS_LMP_AFH_CLASSIFICATION_MASTER_SUPPORTED ||  \
        PRH_BS_CFG_SYS_LMP_AFH_CLASSIFICATION_SLAVE_SUPPORTED)

#define PRH_BS_CFG_SYS_SYNCHRONOUS_CONNECTIONS_SUPPORTED \
        (PRH_BS_CFG_SYS_LMP_EXTENDED_SCO_SUPPORTED ||    \
         PRH_BS_CFG_SYS_LMP_SCO_SUPPORTED)

/*
 * Buffer sizes for generic build allocated dynamically for flexible
 * data queue sizes on generic lib initialisation.
 */
#define PRH_BS_CFG_SYS_FLEXIBLE_DATA_BUFFER_SIZES_SUPPORTED \
        (BUILD_TYPE==GENERIC_BUILD)

/*
 * Propretary implementation to add 4 bit seqeunce code to HCI SCO data
 * to support detection of sco packet loss in apps/host.
 */
#define PRH_BS_CFG_SYS_SCO_VIA_HCI_SEQN_SUPPORTED 0


/*
 * Checks for feature selection dependencies
 */
#if (PRH_BS_CFG_SYS_LMP_SNIFF_SUPPORTED==1 && PRH_BS_CFG_SYS_REMOTE_NAME_REQUEST_SUPPORTED==0)
#error  Sniff Tests require Remote Name Request 
#endif

#if (PRH_BS_CFG_SYS_LMP_POWER_CONTROL_SUPPORTED==1) && \
    (PRH_BS_CFG_SYS_LMP_RSSI_SUPPORTED==0)
#error LMP_POWER_CONTROL requires LMP_RSSI to be supported
#endif

#if (PRH_BS_CFG_SYS_LMP_RSSI_INQUIRY_RESULTS_SUPPORTED==1) && \
    (PRH_BS_CFG_SYS_LMP_RSSI_SUPPORTED==0)
#error INQUIRY_RESULTS WITH RSSI requires LMP_RSSI to be supported
#endif

#if (PRH_BS_CFG_SYS_SYN_VIA_HCI_SUPPORTED==1) && \
    (PRH_BS_CFG_SYS_LMP_SCO_SUPPORTED==0)
#error SCO_VIA_HCI requires SCO Support
#endif

#if (PRH_BS_CFG_SYS_CHANGE_SCO_PACKET_TYPE_SUPPORTED==1) && \
    (PRH_BS_CFG_SYS_LMP_SCO_SUPPORTED==0)
#error Change SCO packet type requires SCO support.
#endif

#if (PRH_BS_CFG_SYS_LMP_HV2_SUPPORTED || PRH_BS_CFG_SYS_LMP_HV3_SUPPORTED) && \
    (PRH_BS_CFG_SYS_LMP_SCO_SUPPORTED==0)
#error SCO_required if LMP_HV2 OR LMP_HV3 supported.
#endif

#if (PRH_BS_CFG_SYS_LMP_HV2_SUPPORTED || PRH_BS_CFG_SYS_LMP_HV3_SUPPORTED) && \
    (PRH_BS_CFG_SYS_CHANGE_SCO_PACKET_TYPE_SUPPORTED==0)
#error CHANGE_SCO_PACKET_TYPE required if LMP_HV2 OR LMP_HV3 supported
#endif

#if (PRH_BS_CFG_SYS_LMP_THREE_SLOT_PKT_SUPPORTED || PRH_BS_CFG_SYS_LMP_FIVE_SLOT_PKT_SUPPORTED) && \
    (PRH_BS_CFG_SYS_CHANGE_ACL_PACKET_TYPE_SUPPORTED==0)
#error CHANGE_ACL_PACKET_TYPE required if LMP_THREE_SLOT_PKT OR LMP_FIVE_SLOT_PKT supported
#endif

#if (PRH_BS_CFG_SYS_TEST_MODE_TESTER_SUPPORTED) && \
    ((PRH_BS_CFG_SYS_TEST_MODE_SUPPORTED==0) || \
     (PRH_BS_CFG_SYS_EXTENDED_HCI_COMMANDS_SUPPORTED==0))
#error TEST_MODE and EXTENDED_HCI_COMMANDS required if TEST_MODE_TESTER supported
#endif

#if (PRH_BS_CFG_SYS_HCI_V12_FUNCTIONALITY_SUPPORTED==0) && \
    (PRH_BS_CFG_SYS_LMP_AFH_CLASSIFICATION_SUPPORTED)
#error SYS_HCI_V12_FUNCTIONALITY required if AFH CLASSIFICATION supported
#endif



#if (PRH_BS_CFG_SYS_ENHANCED_POWER_CONTROL_SUPPORTED) && \
	(  (PRH_BS_CFG_SYS_LMP_RSSI_SUPPORTED == 0) || \
	   (PRH_BS_CFG_SYS_LMP_POWER_CONTROL_SUPPORTED ==0))
#error RSSI and Power Control required if Enhanced Power Control supported
#endif

/*
 * SCO support and T_SERIES HARDWARE ARE BOTH
 * required for eSCO feature.
 */
#if(PRH_BS_CFG_SYS_LMP_EXTENDED_SCO_SUPPORTED==1)

#if(PRH_BS_CFG_SYS_LMP_SCO_SUPPORTED==0)
#error SCO FUNCTIONALITY required if EXTENDED SCO supported
#endif

#if(PRH_BS_CFG_TABASCO_VERSION < PRH_BS_HW_TABASCO_VERSION_T1_0_0)
#if (BUILD_TYPE==UNIT_TEST_BUILD)
  #undef PRH_BS_CFG_TABASCO_VERSION
  #define PRH_BS_CFG_TABASCO_VERSION PRH_BS_HW_TABASCO_VERSION_T1_0_0
#else
  #error T-SERIES HARDWARE required if EXTENDED SCO supported
#endif
#endif

#endif

/*
 *  Major defines for EDR related capabilities supported.
 */
#define PRH_BS_CFG_SYS_LMP_EDR_ACL_FULLY_SUPPORTED \
    (PRH_BS_CFG_SYS_LMP_EDR_ACL_2MBPS_MODE_SUPPORTED && \
     PRH_BS_CFG_SYS_LMP_EDR_ACL_3MBPS_MODE_SUPPORTED && \
     PRH_BS_CFG_SYS_LMP_3SLOT_EDR_ACL_PACKETS_SUPPORTED && \
     PRH_BS_CFG_SYS_LMP_5SLOT_EDR_ACL_PACKETS_SUPPORTED)

#define PRH_BS_CFG_SYS_LMP_EDR_ESCO_FULLY_SUPPORTED \
    (PRH_BS_CFG_SYS_LMP_EDR_ESCO_2MBPS_MODE_SUPPORTED && \
	 PRH_BS_CFG_SYS_LMP_EDR_ESCO_3MBPS_MODE_SUPPORTED && \
	 PRH_BS_CFG_SYS_LMP_3SLOT_EDR_ESCO_PACKETS_SUPPORTED)

#define PRH_BS_CFG_SYS_LMP_EDR_FULLY_SUPPORTED \
    (PRH_BS_CFG_SYS_LMP_EDR_ACL_FULLY_SUPPORTED && PRH_BS_CFG_SYS_LMP_EDR_ESCO_FULLY_SUPPORTED)

#define PRH_BS_CFG_SYS_LMP_EDR_ACL_SUPPORTED \
    (PRH_BS_CFG_SYS_LMP_EDR_ACL_2MBPS_MODE_SUPPORTED || \
     PRH_BS_CFG_SYS_LMP_EDR_ACL_3MBPS_MODE_SUPPORTED)

#define PRH_BS_CFG_SYS_LMP_EDR_ESCO_SUPPORTED \
    (PRH_BS_CFG_SYS_LMP_EDR_ESCO_2MBPS_MODE_SUPPORTED || \
	 PRH_BS_CFG_SYS_LMP_EDR_ESCO_3MBPS_MODE_SUPPORTED)

#if ((PRH_BS_CFG_SYS_LMP_3SLOT_EDR_ACL_PACKETS_SUPPORTED || \
	 PRH_BS_CFG_SYS_LMP_5SLOT_EDR_ACL_PACKETS_SUPPORTED) && \
     (PRH_BS_CFG_SYS_LMP_EDR_ACL_SUPPORTED==0))
#error multislot acl edr requires either 2mpbs or 3mbps acl edr enabled
#endif

#if (PRH_BS_CFG_SYS_LMP_3SLOT_EDR_ESCO_PACKETS_SUPPORTED && \
     (PRH_BS_CFG_SYS_LMP_EDR_ESCO_SUPPORTED==0))
#error multislot esco edr requires either 2mpbs or 3mbps esco edr enabled
#endif

#define PRH_BS_CFG_SYS_LMP_EDR_SUPPORTED \
     (PRH_BS_CFG_SYS_LMP_EDR_ACL_SUPPORTED || PRH_BS_CFG_SYS_LMP_EDR_ESCO_SUPPORTED)


/*
 * Equate PRH_BS_CFG_SYS_HCI_V20_FUNCTIONALITY_SUPPORTED with EDR SUPPORTED. These
 * do not necessarily need to be coupled, but are done so here for convenience.
 */
#define PRH_BS_CFG_SYS_HCI_V20_FUNCTIONALITY_SUPPORTED \
     (PRH_BS_CFG_SYS_LMP_EDR_SUPPORTED)

/*
 * Major configuration parameters for Queues
 *
 * Please note: 
 * 1. ACL_IN_PACKET_LENGTH and ACL_OUT_PACKET_LENGTH will be aligned
 *    to ensure that PRH_BS_CFG_SYS_ACL_BUFFER_ALIGNMENT due to buffer 
 *    alignment constraints
 *    IN:  Radio Baseband to Host        OUT: Host to Radio Baseband
 * 2. The PRH_BS_CFG_SYS_ACL_SEGMENT_LENGTH_ALIGNMENT must be 1, 2 or 4 bytes
 *    and determines what the segment alignment for each segmented packet.
 *    Penalty is time required for tx queue-> baseband copy.
 */
#define PRH_BS_CFG_SYS_ACL_BUFFER_ALIGNMENT         16    /* Bytes  */
#define PRH_BS_CFG_SYS_ACL_SEGMENT_LENGTH_ALIGNMENT  4    /* Bytes */

#if (PRH_BS_CFG_SYS_LMP_FIVE_SLOT_PKT_SUPPORTED==1)
#if (PRH_BS_CFG_SYS_LMP_EDR_SUPPORTED==1)
	#define PRH_BS_CFG_SYS_ACL_IN_PACKET_LENGTH    MAX_3DH5_USER_PDU /*MAX_DH5_USER_PDU*/   /* Bytes  */
#else
    #define PRH_BS_CFG_SYS_ACL_IN_PACKET_LENGTH    MAX_DH5_USER_PDU   /* Bytes  */
#endif    
	#ifdef HAL_TRANSPORT_USB
        #define PRH_BS_CFG_SYS_ACL_OUT_PACKET_LENGTH   (8*MAX_DH5_USER_PDU)   /* Bytes  */
    #else
#if (PRH_BS_CFG_SYS_LMP_EDR_SUPPORTED==1)
	#define PRH_BS_CFG_SYS_ACL_OUT_PACKET_LENGTH    MAX_3DH5_USER_PDU /* Bytes */
#else
        #define PRH_BS_CFG_SYS_ACL_OUT_PACKET_LENGTH   (MAX_DH5_USER_PDU)   /* Bytes  */
#endif
    #endif 
#elif (PRH_BS_CFG_SYS_LMP_THREE_SLOT_PKT_SUPPORTED==1)
#if (PRH_BS_CFG_SYS_LMP_EDR_SUPPORTED==1)
	#define PRH_BS_CFG_SYS_ACL_IN_PACKET_LENGTH    MAX_3DH3_USER_PDU   /* Bytes  */
	#define PRH_BS_CFG_SYS_ACL_OUT_PACKET_LENGTH   MAX_3DH3_USER_PDU   /* Bytes  */
#else
    #define PRH_BS_CFG_SYS_ACL_IN_PACKET_LENGTH    MAX_DH3_USER_PDU   /* Bytes  */
    #define PRH_BS_CFG_SYS_ACL_OUT_PACKET_LENGTH   MAX_DH3_USER_PDU   /* Bytes  */
#endif
#else
    #define PRH_BS_CFG_SYS_ACL_IN_PACKET_LENGTH    MIN_L2CAP_MTU   /* Bytes  */
    #define PRH_BS_CFG_SYS_ACL_OUT_PACKET_LENGTH   MIN_L2CAP_MTU   /* Bytes  */
#endif

#if (PRH_BS_CFG_SYS_LMP_EDR_SUPPORTED==1)
#define MAX_USER_PDU        MAX_3DH5_USER_PDU
#else
#define MAX_USER_PDU        MAX_DH5_USER_PDU
#endif

/* See #3016 */  
#if (PRH_BS_CFG_SELECT_LEVEL==5)
#undef PRH_BS_CFG_SYS_ACL_OUT_PACKET_LENGTH
#define PRH_BS_CFG_SYS_ACL_OUT_PACKET_LENGTH    MAX_3DH5_USER_PDU 
#endif

/* Allows the minimum acceptable Sniff Attempt value to be defined @ build time */
#ifndef PRH_BS_CFG_SYS_LMP_MIN_SNIFF_ATTEMPT
#if (PRH_BS_CFG_TABASCO_VERSION <= PRH_BS_HW_TABASCO_VERSION_P7_5_0)
#define PRH_BS_CFG_SYS_LMP_MIN_SNIFF_ATTEMPT  2
#else
#define PRH_BS_CFG_SYS_LMP_MIN_SNIFF_ATTEMPT  1
#endif
#endif
#define PRH_BS_CFG_SYS_LMP_MAX_SNIFF_ATTEMPT  0x7FFF
#define PRH_BS_CFG_SYS_LMP_MAX_SNIFF_TIMEOUT  0x7FFF
#define PRH_BS_CFG_SYS_LMP_MAX_SNIFF_INTERVAL 0xFFFF
#define PRH_BS_CFG_SYS_LMP_MIN_SNIFF_INTERVAL 4

#if (PRH_BS_CFG_SYS_PICONET_SUPPORTED == 1)
    #define PRH_BS_CFG_SYS_SIZEOF_HCI_COMMAND_HEAP 0x200 /* Bytes  */
    #define PRH_BS_CFG_SYS_MAX_HCI_COMMANDS        8
    #define PRH_BS_CFG_SYS_SIZEOF_HCI_EVENT_HEAP   0x200 /* Bytes  */
    #define PRH_BS_CFG_SYS_MAX_HCI_EVENTS          8

    #define PRH_BS_CFG_SYS_SIZEOF_LMP_IN_HEAP      0x50  /* Bytes  */
    #define PRH_BS_CFG_SYS_MAX_LMP_IN_MESSAGES     8
    #define PRH_BS_CFG_SYS_SIZEOF_LMP_OUT_HEAP     0x50  /* Bytes  */
    #define PRH_BS_CFG_SYS_MAX_LMP_OUT_MESSAGES    8


#if (PRH_BS_CFG_SYS_FLEXIBLE_DATA_BUFFER_SIZES_SUPPORTED==0)
#if defined(HAL_TRANSPORT_USB)
    #define PRH_BS_CFG_SYS_NUM_IN_ACL_PACKETS      4     /* Buffers*/
    #define PRH_BS_CFG_SYS_NUM_OUT_ACL_PACKETS     2     /* Buffers*/
#else
    
#if defined(MINIMIZE_DATA_MEMORY_FOR_CHIP_TEST)
    #define PRH_BS_CFG_SYS_NUM_IN_ACL_PACKETS      1     /* Buffers*/
    #define PRH_BS_CFG_SYS_NUM_OUT_ACL_PACKETS     1     /* Buffers*/
#else
    #define PRH_BS_CFG_SYS_NUM_IN_ACL_PACKETS      4     /* Buffers*/
    #define PRH_BS_CFG_SYS_NUM_OUT_ACL_PACKETS     8     /* Buffers*/
#endif

#endif
#if(PRH_BS_CFG_SYS_LMP_EV5_PACKETS_SUPPORTED==1) || (PRH_BS_CFG_SYS_LMP_EV4_PACKETS_SUPPORTED==1)

#if defined(MINIMIZE_DATA_MEMORY_FOR_CHIP_TEST)
    #define PRH_BS_CFG_SYS_NUM_IN_SCO_PACKETS      1    /* Buffers*/
    #define PRH_BS_CFG_SYS_NUM_OUT_SCO_PACKETS     1    /* Buffers*/
#else
    #define PRH_BS_CFG_SYS_NUM_IN_SCO_PACKETS      10    /* Buffers*/
    #define PRH_BS_CFG_SYS_NUM_OUT_SCO_PACKETS     10    /* Buffers*/
#endif

#else
    #define PRH_BS_CFG_SYS_NUM_IN_SCO_PACKETS      20    /* Buffers*/
    #define PRH_BS_CFG_SYS_NUM_OUT_SCO_PACKETS     20    /* Buffers*/
#endif
#endif

#if(PRH_BS_CFG_SYS_LMP_EV5_PACKETS_SUPPORTED==1)
#if defined(MINIMIZE_DATA_MEMORY_FOR_CHIP_TEST)
    #define PRH_BS_CFG_SYS_SCO_IN_PACKET_LENGTH    4    /* Bytes  */
    #define PRH_BS_CFG_SYS_SCO_OUT_PACKET_LENGTH   4    /* Bytes  */
#else
    #define PRH_BS_CFG_SYS_SCO_IN_PACKET_LENGTH    180    /* Bytes  */
    #define PRH_BS_CFG_SYS_SCO_OUT_PACKET_LENGTH   180    /* Bytes  */
#endif
#elif(PRH_BS_CFG_SYS_LMP_EV4_PACKETS_SUPPORTED==1)

    #define PRH_BS_CFG_SYS_SCO_IN_PACKET_LENGTH    120    /* Bytes  */
    #define PRH_BS_CFG_SYS_SCO_OUT_PACKET_LENGTH   120    /* Bytes  */
#else

    #define PRH_BS_CFG_SYS_SCO_IN_PACKET_LENGTH    60    /* Bytes  */
    #define PRH_BS_CFG_SYS_SCO_OUT_PACKET_LENGTH   60    /* Bytes  */
#endif
    
#if (PRH_BS_CFG_SYS_LMP_EXTENDED_SCO_SUPPORTED==1)

#if defined(MINIMIZE_DATA_MEMORY_FOR_CHIP_TEST)
   #define PRH_BS_CFG_SYS_SIZEOF_ESCO_OUT_HEAP    4    /* 180bytes x 2 */
#else
   #define PRH_BS_CFG_SYS_SIZEOF_ESCO_OUT_HEAP    360    /* 180bytes x 2 */
#endif

//#define PRH_BS_CFG_SYS_SIZEOF_ESCO_OUT_HEAP    1080    /* 540 bytes x 2 */
#endif

#else /* Minimum configuration */
    #define PRH_BS_CFG_SYS_SIZEOF_HCI_COMMAND_HEAP 0x120 /* Bytes  */
    #define PRH_BS_CFG_SYS_MAX_HCI_COMMANDS        2

    #define PRH_BS_CFG_SYS_SIZEOF_HCI_EVENT_HEAP   0x120 /* Bytes  */
    #define PRH_BS_CFG_SYS_MAX_HCI_EVENTS          8

    #define PRH_BS_CFG_SYS_SIZEOF_LMP_IN_HEAP      0x30  /* Bytes  */
    #define PRH_BS_CFG_SYS_MAX_LMP_IN_MESSAGES     4
    #define PRH_BS_CFG_SYS_SIZEOF_LMP_OUT_HEAP     0x50  /* Bytes  */
    #define PRH_BS_CFG_SYS_MAX_LMP_OUT_MESSAGES    4

#if (PRH_BS_CFG_SYS_FLEXIBLE_DATA_BUFFER_SIZES_SUPPORTED==0)
    #define PRH_BS_CFG_SYS_NUM_IN_ACL_PACKETS      2     /* Buffers*/
    #define PRH_BS_CFG_SYS_NUM_OUT_ACL_PACKETS     2     /* Buffers*/

#if (PRH_BS_CFG_SYS_SYN_VIA_HCI_SUPPORTED==1)
    #define PRH_BS_CFG_SYS_NUM_IN_SCO_PACKETS      2    /* Buffers*/
    #define PRH_BS_CFG_SYS_NUM_OUT_SCO_PACKETS     2    /* Buffers*/
#if(PRH_BS_CFG_SYS_LMP_EV5_PACKETS_SUPPORTED==1)
    #define PRH_BS_CFG_SYS_SCO_IN_PACKET_LENGTH    180    /* Bytes  */
    #define PRH_BS_CFG_SYS_SCO_OUT_PACKET_LENGTH   180    /* Bytes  */
#elif(PRH_BS_CFG_SYS_LMP_EV4_PACKETS_SUPPORTED==1)
    #define PRH_BS_CFG_SYS_SCO_IN_PACKET_LENGTH    120    /* Bytes  */
    #define PRH_BS_CFG_SYS_SCO_OUT_PACKET_LENGTH   120    /* Bytes  */
#else
    #define PRH_BS_CFG_SYS_SCO_IN_PACKET_LENGTH    60    /* Bytes  */
    #define PRH_BS_CFG_SYS_SCO_OUT_PACKET_LENGTH   60    /* Bytes  */
#endif
    
#if (PRH_BS_CFG_SYS_LMP_EXTENDED_SCO_SUPPORTED==1)
    #define PRH_BS_CFG_SYS_SIZEOF_ESCO_OUT_HEAP    360    /* 180bytes x 2 */
#endif

#else
    #define PRH_BS_CFG_SYS_NUM_IN_SCO_PACKETS      0     /* Buffers*/
    #define PRH_BS_CFG_SYS_NUM_OUT_SCO_PACKETS     0     /* Buffers*/
#endif  /* SYN_VIA_HCI */

#endif
#endif

#if (PRH_BS_CFG_SYS_EXTRA_SYN_LINKS_SUPPORTED==1)
#define PRH_BS_CFG_SYS_MAX_ALLOWABLE_SYN_LINKS 4
#else
#define PRH_BS_CFG_SYS_MAX_ALLOWABLE_SYN_LINKS 3
#endif

//#define REDUCE_RAM_USAGE_1

/*
 * Major configuration parameters for Piconet Devices
 */
#if (PRH_BS_CFG_SYS_PICONET_SUPPORTED==1)
/*****   URAM reduce  ***/
#if ((defined REDUCE_RAM_USAGE_1) || (defined REDUCE_RAM_USAGE_2)) && (PRH_BS_CFG_SYS_LMP_EXTENDED_SCO_SUPPORTED == 1)
	#define PRH_MAX_DEVICES_SUPPORTED                     7
#else 
    #define PRH_MAX_DEVICES_SUPPORTED                     4
#endif
/************************/
    #define PRH_BS_CFG_SYS_MAX_ACTIVE_DEVICES_PICONET     4
    #define PRH_BS_CFG_SYS_MAX_PICONETS                   ((PRH_BS_CFG_SYS_SCATTERNET_SUPPORTED) ? 3:2)
    #define PRH_BS_CFG_SYS_MAX_SYN_LINKS                  ((PRH_BS_CFG_SYS_SYN_VIA_HCI_SUPPORTED) ? PRH_BS_CFG_SYS_MAX_ALLOWABLE_SYN_LINKS:1)
    #define PRH_BS_CFG_SYS_MAX_SYN_LINKS_VIA_HCI          ((PRH_BS_CFG_SYS_SYN_VIA_HCI_SUPPORTED) ? PRH_BS_CFG_SYS_MAX_ALLOWABLE_SYN_LINKS:0)
#else /* Minimum configuration */
    #define PRH_MAX_DEVICES_SUPPORTED                     1
    #define PRH_BS_CFG_SYS_MAX_ACTIVE_DEVICES_PICONET     1
    #define PRH_BS_CFG_SYS_MAX_PICONETS                   2
    #define PRH_BS_CFG_SYS_MAX_SYN_LINKS                  1
    #define PRH_BS_CFG_SYS_MAX_SYN_LINKS_VIA_HCI          ((PRH_BS_CFG_SYS_SYN_VIA_HCI_SUPPORTED) ? 1:0)
#endif

/*
 * MAX_ACTIVE_DEVICE_LINKS,  must allow 1 for local for bcast and 1 for scanning.
 */
#define PRH_BS_CFG_SYS_MAX_DEVICE_CONTAINERS (PRH_MAX_DEVICES_SUPPORTED + 1/*local*/ + 1/* Scanning */) 

#define MAX_ACTIVE_DEVICE_LINKS         PRH_BS_CFG_SYS_MAX_DEVICE_CONTAINERS


#if PRH_BS_CFG_SYS_MAX_ACTIVE_DEVICES_PICONET > 7
#error The Max number of devices in the piconet must be <= 7
#endif

#if PRH_BS_CFG_SYS_MAX_ACTIVE_DEVICES_PICONET > PRH_MAX_DEVICES_SUPPORTED
#error The Max number of devices in the piconet must be <= total number of devices supported (ie both active and parked)
#endif

/*
 *  Number of extended SCO channels supported.
 */
#if (PRH_BS_CFG_SYS_LMP_EXTENDED_SCO_SUPPORTED == 1)
#define PRH_BS_CFG_SYS_NB_SUPPORTED_EXTENDED_SCO_CHANNEL PRH_BS_CFG_SYS_MAX_SYN_LINKS
#else
#define PRH_BS_CFG_SYS_NB_SUPPORTED_EXTENDED_SCO_CHANNEL 0
#endif


/*
 * HOP_MODES supported based on enumerators of t_rfSelection
 */
#define HOP_MODE_SINGLE_FREQ                0
#define HOP_MODE_EUROPE_USA_FREQ            1
#define HOP_MODE_FRANCE_FREQ                3
#define HOP_MODE_REDUCED_FREQ               5

#ifndef PRH_BS_CFG_SYS_HOP_MODE
#define PRH_BS_CFG_SYS_HOP_MODE             HOP_MODE_EUROPE_USA_FREQ
#endif


/*
 * Conditional Definitions
 */
#if (BUILD_TYPE==UNIT_TEST_BUILD) || defined(HAL_TRANSPORT_USB)
    #define PRH_BS_CFG_SYS_LOW_POWER_MODE_SUPPORTED 0
#else
    #define PRH_BS_CFG_SYS_LOW_POWER_MODE_SUPPORTED 1
#endif

#if (PRH_BS_CFG_SYS_LOW_POWER_MODE_SUPPORTED==1)
/*
 * Note:
 * The ability of a platform to support sleep functionality is dependent on 
 * the availability of a low frequency oscilalator (LFO).
 * 
 * The availability of this LFO is indicated by :
 *  SYS_LF_OSCILLATOR_PRESENT     (hal/___platform___/sys/include/"sys_hal_features.h" )
 */
#define PRH_BS_CFG_SYS_SLEEP_MASTER_SUPPORTED 1
#define PRH_BS_CFG_SYS_SLEEP_SLAVE_SUPPORTED 1
#define PRH_BS_CFG_SYS_SLEEP_IN_STANDBY_SUPPORTED 1
#else
#define PRH_BS_CFG_SYS_SLEEP_MASTER_SUPPORTED 0
#define PRH_BS_CFG_SYS_SLEEP_SLAVE_SUPPORTED 0
#define PRH_BS_CFG_SYS_SLEEP_IN_STANDBY_SUPPORTED 0
#endif

/*
 * Support for Tabasco2 hardware features
 */
#if (PRH_BS_CFG_TABASCO_VERSION >= PRH_BS_HW_TABASCO_VERSION_P7_5_0)
#define PRH_BS_CFG_SYS_HW_INDIVIDUAL_TIM_INTR_CLR 1
#else
#define PRH_BS_CFG_SYS_HW_INDIVIDUAL_TIM_INTR_CLR 0
#endif

/*
 * Define default PRTH device as combination key device.
 * Changing this to 0 converts device into a unit key device.
 */
#define PRH_BS_CFG_SYS_COMBINATION_KEY_DEVICE_SUPPORTED 1

/*
 * Choose between unparking using LMP_unpark_PM_ADDR_req
 * or using LMP_unpark_BD_ADDR_req PDUs.
 */
#define PRH_BS_CFG_SYS_UNPARK_USING_BDADDR_ONLY_SUPPORTED 0


#if (PRH_BS_CFG_SYS_TRACE_LMP_VIA_HCI_SUPPORTED==1)
/*
 * Must increase event queues to support LMP logging on HCI Event Queue
 * Size necessary to support testing of full length Remote Name Requests
 */
    #undef PRH_BS_CFG_SYS_SIZEOF_HCI_EVENT_HEAP
    #undef PRH_BS_CFG_SYS_MAX_HCI_EVENTS

    #define PRH_BS_CFG_SYS_SIZEOF_HCI_EVENT_HEAP   0x500 /* Bytes  */
    #define PRH_BS_CFG_SYS_MAX_HCI_EVENTS          64
#endif

#if (PRH_BS_CFG_SYS_TRACE_VIA_HCI_SUPPORTED==1)
/*
 * Must define event queues to support LMP logging on HCI Event Queue
 * Size necessary to support testing of full length Remote Name Requests
 */
    #define PRH_BS_CFG_SYS_SIZEOF_HCI_DEBUG_HEAP   0x500 /* Bytes  */
    #define PRH_BS_CFG_SYS_MAX_HCI_DEBUG_EVENTS    64
#endif



#if (PRH_BS_CFG_SYS_BROADCAST_NULL_IN_INQ_PAGE_SUPPORTED==1)
/*
 * Must be multiple of 5 and not the power of 2
 * The max value is 400 but as broadcast must be least
 */
#define PRH_BS_CFG_SYS_EMERGENCY_POLL_SLOTS 100
#endif

#if (PRH_BS_CFG_SYS_AUTOMATIC_R2P_SUPPORTED==1)
/*
 * With high accurate clock the device will lost syncronization
 */
#define PRH_BS_CFG_SYS_MAX_POSSIBLE_SYNC_SLOTS 400
#endif


/*
 * Override definitions for specific builds based on BUILD_TYPE
 */
#if (BUILD_TYPE==UNIT_TEST_BUILD)
#undef NDEBUG 
#undef STATIC                   /* Allow test access to static structures*/
#define STATIC
#define PRTH_BS_DBG_BB_PACKET_LOG_TYPE PACKETLOG_VALID_NOWRAP_PRINT 
#define PRTH_BS_DBG_MAX_BB_MAX_PACKETS_IN_LOG 500 

#elif (BUILD_TYPE==COMBINED_BUILD)
#define PRH_BT_COMBINED 1

#elif (BUILD_TYPE==GENERIC_BUILD)
#define PRH_BT_GENERIC 1
#endif
/*
 * Feature to extend pin code timeout #2778 
 */
#if defined (SHOGA)
#define PRH_BS_CFG_SYS_PIN_CODE_REQ_EXTEND	1
#else
#define PRH_BS_CFG_SYS_PIN_CODE_REQ_EXTEND	0
#endif

#if (PRH_BS_CFG_SELECT_LEVEL==1)
/*
 * CM: 
 * V2.1 build but with min ACL/SCO buffers
 * Buffer configuration/size to be specified by customer
 */
#undef PRH_BS_CFG_SYS_NUM_IN_ACL_PACKETS
#undef PRH_BS_CFG_SYS_NUM_OUT_ACL_PACKETS
#undef PRH_BS_CFG_SYS_NUM_IN_SCO_PACKETS
#undef PRH_BS_CFG_SYS_NUM_OUT_SCO_PACKETS
#undef PRH_BS_CFG_SYS_SCO_IN_PACKET_LENGTH
#undef PRH_BS_CFG_SYS_SCO_OUT_PACKET_LENGTH
#undef PRH_BS_CFG_SYS_SIZEOF_ESCO_OUT_HEAP
#undef MAX_USER_PDU
#undef PRH_BS_CFG_SYS_ACL_IN_PACKET_LENGTH
#undef PRH_BS_CFG_SYS_ACL_OUT_PACKET_LENGTH
#undef PRH_MAX_DEVICES_SUPPORTED           



#define PRH_BS_CFG_SYS_NUM_IN_ACL_PACKETS      1     /* Buffers*/
#define PRH_BS_CFG_SYS_NUM_OUT_ACL_PACKETS     6     /* Buffers*/
#define PRH_BS_CFG_SYS_NUM_IN_SCO_PACKETS      1    /* Buffers*/
#define PRH_BS_CFG_SYS_NUM_OUT_SCO_PACKETS     1    /* Buffers*/
#define PRH_BS_CFG_SYS_SCO_IN_PACKET_LENGTH    1    /* Bytes  */
#define PRH_BS_CFG_SYS_SCO_OUT_PACKET_LENGTH   1    /* Bytes  */
#define PRH_BS_CFG_SYS_SIZEOF_ESCO_OUT_HEAP    1
#define MAX_USER_PDU                           1 
#define PRH_BS_CFG_SYS_ACL_IN_PACKET_LENGTH    MAX_DH5_USER_PDU 
#define PRH_BS_CFG_SYS_ACL_OUT_PACKET_LENGTH   MAX_DH5_USER_PDU
#define PRH_MAX_DEVICES_SUPPORTED              1



#ifndef CHIP_DEBUG_BY_UART

#undef PRH_BS_CFG_SYS_SIZEOF_HCI_COMMAND_HEAP
#undef PRH_BS_CFG_SYS_MAX_HCI_COMMANDS

#undef  PRH_BS_CFG_SYS_SIZEOF_HCI_EVENT_HEAP
#undef   PRH_BS_CFG_SYS_MAX_HCI_EVENTS

#undef PRH_BS_CFG_SYS_SIZEOF_LMP_IN_HEAP
#undef PRH_BS_CFG_SYS_MAX_LMP_IN_MESSAGES
#undef PRH_BS_CFG_SYS_SIZEOF_LMP_OUT_HEAP
#undef PRH_BS_CFG_SYS_MAX_LMP_OUT_MESSAGES

    #define PRH_BS_CFG_SYS_SIZEOF_HCI_COMMAND_HEAP 0x120 /* Bytes  */
    #define PRH_BS_CFG_SYS_MAX_HCI_COMMANDS        3

    #define PRH_BS_CFG_SYS_SIZEOF_HCI_EVENT_HEAP   0x120 /* Bytes  */
    #define PRH_BS_CFG_SYS_MAX_HCI_EVENTS          8

    #define PRH_BS_CFG_SYS_SIZEOF_LMP_IN_HEAP      0x30  /* Bytes  */
    #define PRH_BS_CFG_SYS_MAX_LMP_IN_MESSAGES     4
    #define PRH_BS_CFG_SYS_SIZEOF_LMP_OUT_HEAP     0x50  /* Bytes  */
    #define PRH_BS_CFG_SYS_MAX_LMP_OUT_MESSAGES    4
#endif

#endif
/* 
 * EDR Related
 */
 
#if (PRH_BS_CFG_SYS_LMP_EDR_SUPPORTED && (PRH_BS_CFG_TABASCO_VERSION < PRH_BS_HW_TABASCO_VERSION_T2_0_0))
#error EDR feature requires EDR-capable Tabasco HW
#endif

#if (PRH_BS_CFG_SYS_CREATE_UNIT_KEY_SUPPORTED) && (!PRH_BS_CFG_SYS_DEPRECATED_BT12_FEATURES_SUPPORTED)
#error UNIT KEY is a Deprecated Feature - Only relevant to Pre-BT1.2 devices.
#endif

#endif
