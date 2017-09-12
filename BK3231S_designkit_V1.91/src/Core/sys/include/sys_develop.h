#ifndef __PARTHUS_SYS_DEVELOP__
#define __PARTHUS_SYS_DEVELOP__

/***********************************************************************
 *
 * MODULE NAME:    sys_develop.h
 * PROJECT CODE:   BlueStream
 * MAINTAINER:     John Nelson
 * DATE:           Wed Jul 14 11:39:10 BST 1999
 *
 * SOURCE CONTROL: $Id $
 *
 * LICENCE:
 *    This source code is copyright (c) 1999-2004 Ceva Inc.
 *    All rights reserved.
 *
 * REVISION HISTORY:
 * 15 June 2001    All development definitions separated from sys_features.h
 *
 * Note to user
 *
 * This file is to be used for grouping options which are in development.
 *
 * For each entry the following comment template must be added:
 *
 * Identifier:    iiiiiiiiiiiiiiiii
 * Author:        xxxx yyyyyy
 * Purpose:       Reason for its creation and where used
 * Modules:       Modules affected
 * Created:       Creation date
 * Expiry:        Expected expiry date
 *
 ***********************************************************************/

/*
 * Identifier:    PRH_BS_DEV_CHOOSE_OPTIMAL_PACKET_TYPE
 * Author:        Daire McNamara
 * Purpose:       Determines if the device should choose the optimal packet type
 *                based on chunk length and allowable packet types
 *                
 * Modules:       tra_queue.c
 * Created:       09 April 02
 * Expiry:        09 May 02
 */
 #define PRH_SYS_DEV_CHOOSE_OPTIMAL_PACKET_TYPE 1

/*
 * Identifier:    PRH_BS_DEV_USE_ODD_AR_ADDR_ONLY
 * Author:        Conor Morris
 * Purpose:       Issues related to the Master correlating on 2nd half
 *                packets in the Access Window.
 *                Limit the Master to assigning ODD AR_ADDR only
 *                This will ensure that only 1st half ID packets will
 *                be used by the Slaves.
 *                
 * Modules:       lmp_link_policy_protocol.c
 * Created:       14 April 02
 * Expiry:        
 */
#define PRH_BS_DEV_USE_ODD_AR_ADDR_ONLY 1

/*
 * Identifier:    PRH_BS_DEV_LC_NEXT_ACTIVITY_CALLBACKS_SUPPORTED
 * Author:        Ivan Griffin / John Nelson
 * Purpose:       Make LC calls to LM ROM friendly
 * Modules:       lc_types.h/lc_interface.h/lmp_link_policy_protocol.c
 * Created:       24 April 02
 * Expiry:        
 */
#define PRH_BS_DEV_LC_NEXT_ACTIVITY_CALLBACKS_SUPPORTED 1

/*
 * Identifier:    PRH_BS_DEV_SERVICE_TRANSPORT_DURING_SPINS_SUPPORTED
 * Author:        Ivan Griffin
 * Purpose:       Service TRAhcit during Spins, low power mode etc.
 * Modules:       
 * Created:       25 April 02
 * Expiry:        
 */
#define PRH_BS_DEV_SERVICE_TRANSPORT_DURING_SPINS_SUPPORTED 0

/*
 * Identifier:    PRH_BS_DEV_BIG_ENDIAN_AND_DIRECT_BASEBAND_MOVE
 * Author:        John Nelson
 * Purpose:       Big endian swap is completed outside baseband interrupts
 *                to reduce MIPS i.e. on ACL data enqueue and at dequeue
 * Modules:       tra_queue.c, tra_uart.c, lslc_access.c, hw_memcpy_impl.h
 * Created:       1 June 02
 * Expiry:        
 */
#if (__BYTE_ORDER==__BIG_ENDIAN) && (TRA_HCIT_UART_ONLY_SUPPORTED==1)
#define PRH_BS_DEV_BIG_ENDIAN_AND_DIRECT_BASEBAND_MOVE 1
#else
#define PRH_BS_DEV_BIG_ENDIAN_AND_DIRECT_BASEBAND_MOVE 0
#endif

/* Identifier:    PRH_BS_DEV_ADAPTIVE_POLL_RATE_SUPPORTED
 * Author:        Tom Kerwick
 * Purpose:       Increase poll rate temporarily on data receive from
 *                slave to improve slave to msater transfer rates.
 *                
 * Modules:       lmp_link_policy.c
 * Created:       23May02
 * Expiry:        
 */


#if defined(SHOGA) 
#define PRH_BS_DEV_ADAPTIVE_POLL_RATE_SUPPORTED 1
//#elif (BUILD_TYPE!=UNIT_TEST_BUILD) #2976
//#define PRH_BS_DEV_ADAPTIVE_POLL_RATE_SUPPORTED 1
#else
// GF Turned ON -- 12 Jan 2011 - To improve Multipoint Throughput with
// Scatternet -- This is the way CSR does it.
#define PRH_BS_DEV_ADAPTIVE_POLL_RATE_SUPPORTED 1
#endif


#ifndef TRA_HCIT_COMBINED_SUPPORTED
#define TRA_HCIT_COMBINED_SUPPORTED 0
#endif
#ifndef PRH_BT_COMBINED
#define PRH_BT_COMBINED 0
#endif
#ifndef PRH_BT_GENERIC
#define PRH_BT_GENERIC 0
#endif


#define LC_LOOK_AHEAD 1 
#define LC_ALLOW_INQSCAN_DURING_CONNECTION 1
#define LC_ALLOW_PAGESCAN_DURING_CONNECTION 1

/*
 * Identifier:    PRH_BS_DEV_TIM3_IDENTIFIES_AR_ADDR_HALF_SLOT
 * Author:        Tom Kerwick
 * Purpose:       Required for low MIPS platforms. Use occurance of TIM3 to 
 *                identify whether received AR_ADDR is in 1st or 2nd half slot.
 *
 * Modules:       lslc_slot.c, uslc_park_master.c
 * Created:       6 January 03
 * Expiry:        
 */
#define PRH_BS_DEV_TIM3_IDENTIFIES_AR_ADDR_HALF_SLOT 1

/* Identifier:    PRH_BS_DEV_ADOPT_ERRATUM_E2088
 * Author:        Tom Kerwick
 * Purpose:       Allow option to disable E2088 as workaround for issue with Anritsu MT8850A
 *                which can discard DUT's LMP_accepted message due to non inversion of SEQN bit 
 *                between the last packet used for testing and the following LMP message
 *                during both DUT transmitter test and DUT loopback mode. This occurs because
 *                Anritsu MT8850A has not adopted E2088.
 *
 * Modules:       lslc_access.c, uslc_testmode.c
 * Created:       13 Feb 03
 * Expiry:        
 */
#define    PRH_BS_DEV_ADOPT_ERRATUM_E2088    1


/* Identifier:    PRH_BS_DEV_USE_CACHED_BT_CLOCKS
 * Author:        Tom Kerwick
 * Purpose:       Prevent read of bt clocks from tabasco more than once per tick
 *                by caching clock values on first read per interrupt to improve
 *                MIPS on FPGAs with a large number of wait states, invalidating
 *                cached values on each new tabasco interrupt.
 *                
 * Modules:       hw_lc_impl.h, lslc_irq.c
 * Created:       26 Feb 03
 * Expiry:        
 */

#if defined(SHOGA) && !defined(SH_SE_FPGA)
#define PRH_BS_DEV_USE_CACHED_BT_CLOCKS 0
#else
/* CM: 16 Dec 2004 */

#define PRH_BS_DEV_USE_CACHED_BT_CLOCKS 0
#endif

/* Identifier:    PRH_BS_DEV_MULTISLOT_SNIFF_SUPPORTED
 * Author:        Tom Kerwick
 * Purpose:       Support multislot packets in sniff mode.
 *                
 * Modules:       lmp_link_policy.c 
 * Created:       14 May 03
 * Expiry:        
 */
#define PRH_BS_DEV_MULTISLOT_SNIFF_SUPPORTED 1

/* Identifier:    PRH_BS_DEV_POLL_UNTIL_ACK_SUPPORTED
 * Author:        Tom Kerwick
 * Purpose:       If master does not recieve ACK to a POLL, then continue to POLL
 *                until ACK is received. Improves general robustness, particularly
 *                on return to active state from park/sniff/hold or other piconet.
 *                
 * Modules:       lmp_link_policy.c 
 * Created:       14 May 03
 * Expiry:        
 */
#define PRH_BS_DEV_POLL_UNTIL_ACK_SUPPORTED 1

/* Identifier:    PRH_BS_DEV_PARK_BEACON_EXTENSION_TESTER
 * Author:        Tom Kerwick
 * Purpose:       Inserts test data on master extended park beacons to test slave
 *                implementation of set broadcast scan window - required for proof
 *                of feature for LOGO (compulsory feature for park certification).
 *                
 * Modules:       lmp_link_policy.c
 * Created:       20 Aug 03
 * Expiry:        On development/enhancement to master park implementation to
 *                incorporate use of set_broadcast_scan_window when broadcasting
 *                data to parked slaves, and when this can as easily demonstrate
 *                slave capability to receive data sent on extended park beacon.
 */
#define PRH_BS_DEV_PARK_EXTENDED_BROADCAST_SCAN_WINDOW_TESTER 0

/* Identifier:    PRH_BS_DEV_USE_DELAYED_SERVICE_ROUTINES
 * Maintainer:    Daire McNamara
 * Purpose:       Split the Interrupt Service Routines into
 *                hard and soft real time tasks.
 *                
 * Modules:       lslc_irq.c lslc_slot.c
 * Created:       19 Jun 03
 * Expiry:        31 Mar 04. Turned off in March 2004 for
 *                two reasons:
 *                1) Decided to align with customer targets,
 *                   neither shoga nor tama use this feature.
 *                2) Receiving EV5 packets longer than 160
 *                   bytes does not work with this feature
 *                   enabled. 
 */
#define PRH_BS_DEV_USE_DELAYED_SERVICE_ROUTINES 0

/* Identifier:    PRH_BS_DEV_TOGGLE_TX_SEQN_ON_TX_CRC_PACKET
 * Author:        Conor Morris
 * Purpose:       Ensures full compliance with BT1.2 SEQN scheme. 
 *                See ERRATA 116 / bug 2131 for full details. 
 *
 * Modules:       lslc_access.c, 
 * Created:       7 Jan '04 
 * Expiry:        Development option to be removed following UPF13 (1st Feb 04). 
 *                Code associated with development will then be used by default.
 */
#define    PRH_BS_DEV_TOGGLE_TX_SEQN_ON_TX_CRC_PACKET    1

/* Identifier:    PRH_BS_DEV_NAK_NON_CRC_PACKETS_WITH_INCORRECT_SEQN
 * Author:        Conor Morris
 * Purpose:       Ensures full compliance with BT1.2 SEQN scheme. 
 *                See ERRATA 116 / bug 2131 for full details. 
 *
 * Modules:       lslc_access.c, 
 * Created:       7 Jan '04 
 * Expiry:        Development option to be removed following UPF13 (1st Feb 04). 
 *                Code associated with development will then be used by default.
 */
#define    PRH_BS_DEV_NAK_NON_CRC_PACKETS_WITH_INCORRECT_SEQN    1

/* Identifier:    PRH_BS_DEV_SLAVE_FORCE_STOP_AUTOPARK_SUPPORTED
 * Author:        Tom Kerwick
 * Purpose:       Allows slave to stop master autoparking by reject next park req
 *                from master if master does not process the slave initiated unpark,
 *                for example due to collision scenarios.
 *
 * Modules:       lmp_link_policy_protocol.c 
 * Created:       16 Apr 04
 * Expiry:        To review for adoption as sys_features bit - some customers may
 *                implement this in host instead, by control of link policys.
 */
#if defined(SHOGA)
#define    PRH_BS_DEV_SLAVE_FORCE_STOP_AUTOPARK_SUPPORTED    1
#else
#define    PRH_BS_DEV_SLAVE_FORCE_STOP_AUTOPARK_SUPPORTED    0
#endif

/* Identifier:    PRH_BS_DEV_EARLY_PREPARE_PAGE_ID_FHS_TURNAROUND
 * Author:        Tom Kerwick / SHOGA
 * Purpose:       Workaround MIPS issues in page ID/FHS turnaround.
 * Modules:       lslc_freq.c, lslc_pkt.c, lslc_slot.c, lslc_hop.c, uslc_page.c
 * Created:       1 Aug 03
 * Expiry:        When enabled on all platforms.
 */
#if defined(SHOGA)
#define PRH_BS_DEV_EARLY_PREPARE_PAGE_ID_FHS_TURNAROUND 1
#else
#define PRH_BS_DEV_EARLY_PREPARE_PAGE_ID_FHS_TURNAROUND 0
#endif


/*
 * Identifier:    PRH_BS_DEV_USE_T1_BT_CLOCK
 * Author:        Daire McNamara
 * Purpose:       Turn on/off the ability to freeze the clock.
 * Modules        lslc_slot, uslc_return_to_piconet.
 * Created:       20 Oct 03
 * Expiry:        20 Nov 03
 */
#define PRH_BS_DEV_USE_T1_BT_CLOCK 0
    
/* Identifier:    PRH_BS_DEV_MULTISLOT_ACL_WITH_SCO_SUPPORTED
 * Author:        Tom Kerwick
 * Purpose:       Allow 3 slot ACL when HV3 SCO active.
 *
 * Modules:       lmp_link_policy.c 
 * Created:       08 Dec 03
 * Expiry:        
 */
#if defined(SHOGA) && (BUILD_TYPE!=UNIT_TEST_BUILD)
#define PRH_BS_DEV_MULTISLOT_ACL_WITH_SCO_SUPPORTED 0
#else
#define PRH_BS_DEV_MULTISLOT_ACL_WITH_SCO_SUPPORTED 0
#endif

#endif

/* Identifier:    PRH_BS_DEV_AFH_DRIVEN_AUTOPARK_SUPPORTED
 * Author:        Gary Fleming
 * Purpose:       Activate an automatic LC unpark/park operation
 *                when LMP or L2CAP data is enqueued.
 * Modules:       lmp_link_policy_protocol.c, lmp_afh.c
 * Created:       9 Jun 04
 * Expiry:        
 */
#if defined(TAMA)
#define PRH_BS_DEV_ACL_DRIVEN_AUTOPARK_SUPPORTED 1
#else
#define PRH_BS_DEV_ACL_DRIVEN_AUTOPARK_SUPPORTED 0
#endif


/* Identifier:    PRH_BS_DEV_UPF14_CHANNEL_ASSESSMENT_ENHANCEMENTS
 * Author:        Tom Kerwick
 * Purpose:       These are enhancements verified vs Anritsu at UPF14 to
 *                overcome issue of a 'hole' in the middle of a strong 802.11b
 *                interfered band. Initial verification by customer using
 *                FM interferer also proved successful. However, customer has
 *                requested disabled until time to complete verifications
 *                also using an 802.11b interferer in their test environment.
 * Modules:       lslc_assmnt.c
 * Created:       16 Jul 04
 * Expiry:        When customer evaluates.
 */
#if defined(SHOGA)
#define PRH_BS_DEV_UPF14_CHANNEL_ASSESSMENT_ENHANCEMENTS 0
#else
#define PRH_BS_DEV_UPF14_CHANNEL_ASSESSMENT_ENHANCEMENTS 1
#endif


/* Identifier:    PRH_BS_DEV_RESUME_PAGE_SCANNING_EARLIER
 * Author:        Daire McNamara
 * Purpose:       This is a change designed to resume page
 *                scanning one frame earlier than the current
 *                implementation. It is believed that this
 *                is causing a conformance issue at Cetecom.
 * Modules:       uslc_pagescan.c
 * Created:       28 Aug 04
 * Expiry:        After conformance at Cetecom.
 */
#define PRH_BS_DEV_RESUME_PAGE_SCANNING_EARLIER 0

/* Identifier:    PRH_BS_DEV_FORCE_ESCO_VIA_ACL_REGISTERS
 * Author:        Daire McNamara
 * Purpose:       This is an override required for conformance
 *                as the Cetecom tester will not supply
 *                the SCO_VIA_HCI bit over the HCI as part
 *                of the voice settings parameter.
 *                If this #define is enabled, the host
 *                controller always sets the SCO_VIA_HCI bit.
 * Modules:       hw_codec.c
 * Created:       28 Aug 04
 * Expiry:        After conformance at Cetecom.
 */
#define PRH_BS_DEV_FORCE_ESCO_VIA_ACL_REGISTERS 0

/* Identifier:    PRH_BS_DEV_FORCE_MINIMUM_N_ACCESS
 * Author:        Gary Fleming / Daire McNamara
 * Purpose:       This is an override required for conformance
 *                as the 1.0.4 and 1.0.5 Cetecom tester fails 
 *                LMP/LIH/BV-27-C and LMP/LIH/BV-29-C as it
 *                expects (erroneously) that the n_access train
 *                will terminate after the Cetecom slave has
 *                been contacted. The correct behaviour is
 *                that the IUT should transmit the n_access
 *                train communicated in the park request.
 *                If this #define is enabled, the host
 *                controller always uses an n_access of 2, no
 *                matter what has been negotiated with the peer.
 *
 * Modules:       uslc_park_master.c
 * Created:       01 Sept 04
 * Expiry:        After conformance at Cetecom.
 */
#define PRH_BS_DEV_FORCE_MINIMUM_N_ACCESS 0

/* Identifier:    PRH_BS_DEV_SUPERVISORY_NULL_IN_INQ_PAGE_SUPPORTED
 * Author:        Tom Kerwick
 * Purpose:       Avoid disonnect when supervision timeout is less than page timeout.
 *                Replaces the periodic broadcast NULLs with supervisory NULLs in turn
 *                to each slave, and to reset each supervision timeout in turn.
 * Modules:       uslc_scheduler.c
 * Created:       nn mmm 03
 * Expiry:        
 */
#if (PRH_BS_CFG_SYS_BROADCAST_NULL_IN_INQ_PAGE_SUPPORTED==1)
#define PRH_BS_DEV_SUPERVISORY_NULL_IN_INQ_PAGE_SUPPORTED 1
#else
#define PRH_BS_DEV_SUPERVISORY_NULL_IN_INQ_PAGE_SUPPORTED 0
#endif

/* Identifier:    PRH_BS_DEV_PRIORITY_ACL_IN_INQ_PAGE_SUPPORTED
 * Author:        Tom Kerwick / SHOGA
 * Purpose:       Prioritise LMP/L2CAP during page inquiry procedures at intervals
 *                determined by PRH_BS_CFG_SYS_EMERGENCY_POLL_SLOTS.
 * Modules:       uslc_scheduler.c, lmp_afh.c
 * Created:       28 Oct 04
 * Expiry:        
 */
#if (PRH_BS_DEV_SUPERVISORY_NULL_IN_INQ_PAGE_SUPPORTED==1)
#define PRH_BS_DEV_PRIORITY_ACL_IN_INQ_PAGE_SUPPORTED 1
#else
#define PRH_BS_DEV_PRIORITY_ACL_IN_INQ_PAGE_SUPPORTED 0

#endif

/* Identifier:    PRH_BS_DEV_MASTER_PARK_REQ_ACK_TIMER
 * Author:        Tom Kerwick
 * Purpose:       Autopark connection robustness.
 *                If master receives neither LMP_accepted/LMP_not_accepted
 *                after 6*Tpoll from LMP_park_req ack, assume park mode.
 *                Prevents connection timeout where slave enters park mode
 *                after 6*Tpoll from LMP_accepted when ack not received.
 * Modules:       lmp_link_policy_protocol.c, lmp_encode_pdu.c
 * Created:       07 Nov 04
 * Expiry:        
 */
#if defined(SHOGA)
#define PRH_BS_DEV_MASTER_PARK_REQ_ACK_TIMER 1
#else
#define PRH_BS_DEV_MASTER_PARK_REQ_ACK_TIMER 0
#endif

/* Identifier:    PRH_BS_DEV_SUSPEND_SLAVE_CLASSIFICATIONS_SUPPORTED
 * Author:        Tom Kerwick
 * Purpose:       Request active slaves stop/restart classifications
 *                about master procedures which slaves could otherwise
 *                interpret as interference (eg master page train).
 * Modules:
 * Created:       19 Jan 05
 * Expiry:        
 */
#if defined(SHOGA) && (BUILD_TYPE!=UNIT_TEST_BUILD) && (PRH_BS_CFG_SYS_LMP_AFH_CLASSIFICATION_SUPPORTED==1)
#define PRH_BS_DEV_SUSPEND_SLAVE_CLASSIFICATIONS_SUPPORTED 1
#else
#define PRH_BS_DEV_SUSPEND_SLAVE_CLASSIFICATIONS_SUPPORTED 0
#endif

/* Identifier:    PRH_BS_DEV_EXTENDED_QOS_NOTIFICATIONS_SUPPORTED
 * Author:        Tom Kerwick
 * Purpose:       Although BT Spec does not require QOS to be respected during
 *                inq/page, slaves will not know about master inq/page, so issues
 *                about poll_interval based timeouts on slave occur in such
 *                scenarios, eg detach ack timeout. Use this build option to
 *                inform slaves of suspended quality of service.
 * Modules:
 * Created:       7 March 05
 * Expiry:        
 */
#if defined(SHOGA) && (BUILD_TYPE!=UNIT_TEST_BUILD) && (PRH_BS_CFG_SYS_QOS_SUPPORTED==1)
#define PRH_BS_DEV_EXTENDED_QOS_NOTIFICATIONS_SUPPORTED 1
#else
#define PRH_BS_DEV_EXTENDED_QOS_NOTIFICATIONS_SUPPORTED 0
#endif

/* Identifier:    PRH_BS_DEV_SUPERVISION_TIMEOUT_NEGOTIATION_SUPPORTED
 * Author:        Tom Kerwick
 * Purpose:       The timeout period, supervisionTO, is negotiated by the Link
 *                Manager such that the supervision timeout will be longer than
 *                hold and sniff periods.
 *                Although this is outside-of-spec, it is/was used to accomodate
 *                a 3rd party host used by SHOGA which expected this behavior.
 * Modules:
 * Created:       9 May 05
 * Expiry:        
 */
#if defined(SHOGA)
#define PRH_BS_DEV_SUPERVISION_TIMEOUT_NEGOTIATION_SUPPORTED 1
#else
#define PRH_BS_DEV_SUPERVISION_TIMEOUT_NEGOTIATION_SUPPORTED 0
#endif

/* Identifier:    PRH_BS_DEV_ALIGN_PARK_BEACON_WITH_SYNCHRONOUS_LINKS
 * Author:        Daire McNamara / BONNET
 * Purpose:       Align the park beacon with the synchronous links used
 *                in the Bonnet project (i.e. 4 eSCO links with a t_esco of 12
 *                and a d_esco of 0, 2, 4, and 6 respectively. Start the
 *                beacon at d_beacon of 8 and choose values for rest of
 *                beacon parameters to avoid clashes with the 4 eSCO links
 * Modules:       lmp_link_policy_protocol.c, lmp_config.h
 * Created:       28 Oct 04
 * Expiry:        
 */
#define PRH_BS_DEV_ALIGN_PARK_BEACON_WITH_SYNCHRONOUS_LINKS 0
#if (PRH_BS_DEV_ALIGN_PARK_BEACON_WITH_SYNCHRONOUS_LINKS==1)
#if (PRH_BS_DEV_USE_ODD_AR_ADDR_ONLY == 1)
#error Align Park Beacon with Synchronous Links should not be used with Odd AR Addr Only
#endif
#endif


/* Identifier:    PRH_BS_DEV_CHANGE_SUPERVISION_TIMEOUT_ON_SLAVE_SIDE
 * Author:        Conor Morris
 * Purpose:       Customer specific request to accept HCI_WRITE_SUPERVISION_TIMEOUT
 *                on slave-side.  Link supervision timeout updated locally in the slave,
 *                no LMP signalling is invoked. 
 *
 * Modules:     
 * Created:       15 July 05
 * Expiry:        
 */
#if defined(SHOGA)
#define PRH_BS_DEV_CHANGE_SUPERVISION_TIMEOUT_ON_SLAVE_SIDE 0
#else
#define PRH_BS_DEV_CHANGE_SUPERVISION_TIMEOUT_ON_SLAVE_SIDE 0
#endif

/* Identifier:	  PRH_BS_DEV_DONT_FORCE_SCANS_DISABLE
 * Author:		  Nicola Lenihan
 * Purpose:		  #2741 #2179 Customer specific request to allow full control 
 *				  disallow of 'Scan_Enable' parameter configuration as a slave. 
 * Modules:		  lmp_config_impl.h
 * Created:		  7 March 06
 */
#if defined(SHOGA)
#define PRH_BS_DEV_DONT_FORCE_SCANS_DISABLE 0
#else
#define PRH_BS_DEV_DONT_FORCE_SCANS_DISABLE 0
#endif

/* Identifier:    PRH_BS_DEV_SECURITY_MODIFIED_ERROR_CODES
 * Author:        Conor Morris
 * Purpose:       Customer specific request to modify returned error codes for certain 
 *                security procedures.  The changes are required to conform to 3rd party
 *                Host requirements (#2779)
 *
 * Modules:     
 * Created:       14 Sep 05
 * Expiry:        
 */
#define PRH_BS_DEV_SECURITY_MODIFIED_ERROR_CODES 0

/* Identifier:    PRH_BS_DEV_WIRED_LINK
 * Author:        Nicola Lenihan
 * Purpose:       A wired link modification to test tx rx of edr packets, etc.
 *
 * Modules:     
 * Created:       20 Dec 07
 * Expiry:        
 */
#define PRH_BS_DEV_WIRED_LINK 0


 /* Identifier:    PRH_BS_DEV_PROCESS_UART_RX_DATA_IN_IRQ_CONTEXT
  * Author:        Conor Morris
  * Purpose:       UART Rx data is only stored within the context of the FIQ
  *                (ie Rx data is not processed).
  *                Rx data is subsequently processed within the context of the IRQ.
  *                If this feature is enabled then FIQ (which is assoc. with 
  *                UART) can always remain enabled, even when there is a 
  *                request to disable interupts.  The FIQ can remain enabled as 
  *                the UART Rx data is not processed within the context of the 
  *                FIQ and thus will have no impact on the procedures that currently
  *                require the ability to disable/enable interrupts.  
  * Modules:     
  * Created:       05 Nov 2008
  * Expiry:        
  */
 #if (PRH_BS_CFG_SELECT_LEVEL == 5)
 #define PRH_BS_DEV_PROCESS_UART_RX_DATA_IN_IRQ_CONTEXT 1
 #else
 #define PRH_BS_DEV_PROCESS_UART_RX_DATA_IN_IRQ_CONTEXT 0
 #endif

/* Identifier:    PRH_BS_DEV_UART_FIQ_ALWAYS_ENABLED
  * Author:        Conor Morris
  * Purpose:       FIQ is always enabled even if request made to disable #
  *                interrupts.
  * Modules:     
  * Created:       05 Nov 2008
  * Expiry:        
  */
 #if (PRH_BS_DEV_PROCESS_UART_RX_DATA_IN_IRQ_CONTEXT == 1)
 #define PRH_BS_DEV_UART_FIQ_ALWAYS_ENABLED 1
 #else
 #define PRH_BS_DEV_UART_FIQ_ALWAYS_ENABLED 0
 #endif

/* Identifier:    PRH_BS_DEV_DISALLOW_SCANNING_AS_SLAVE
  * Author:       Conor Morris
  * Purpose:      Control the scanning ability of a device with an existing Slave-role connection.
  * Modules:     
  * Created:      5 June 2009
  * Expiry:        
  */
 #define PRH_BS_DEV_DISALLOW_SCANNING_AS_SLAVE 0

/* Identifier:    PRH_BS_DEV_EARLY_SET_AFH_ON_CONNECTION_ESTABLISHMENT
  * Author:       Tom Kerwick
  * Purpose:      Send SET_AFH after rx LMP_accepted(LMP_host_connection_req) instead
                  of later on LMconnection_Finalise_Connection_Setup. This is to comply
				  with BT Spec Message Sequence Charts for Connection Establishment.
  * Modules:     
  * Created:      28 April 2010
  * Expiry:        
  */
#define PRH_BS_DEV_EARLY_SET_AFH_ON_CONNECTION_ESTABLISHMENT 1

/* Identifier:    PRH_BS_DEV_TIM1_CORRECTED_PAGESCAN_WIDTHS
  * Author:       Tom Kerwick
  * Purpose:      Due to SPI setup times, the Page Scan windows were not as long as
  *               they should be (2% short). This defers the closing of the page scan
  *               windows to TIM1 from TIM0 to ensure the scans are wide enough.
  * Modules:     
  * Created:      27 May 2010
  * Expiry:        
  */
#define PRH_BS_DEV_TIM1_CORRECTED_PAGESCAN_WIDTHS 0


/* Identifier:    PRH_BS_DEV_REDUCED_WINDOW_WIDENING_ON_R2P
  * Author:       Gary Fleming
  * Purpose:      Uses Win_Ext in HW to reduce the Window Widening on R2P.
  *               Requires that the intraslot to be changes to allow correct
  *               position of the Window.
  * Modules:     
  * Created:      16 March 2011
  * Expiry:  
  */

#define PRH_BS_DEV_REDUCED_WINDOW_WIDENING_ON_R2P 0

/* Identifier:    PRH_BS_DEV_MIN_TIME_SINCE_CONTACT_FOR_R2P
  * Author:       Gary Fleming
  * Purpose:      Defines the minimum time (in Slots) since the last contact 
  *               from a device - for which an R2P procedure should be used to 
  *               re-establish contact.
  * Modules:     
  * Created:      16 March 2011
  * Expiry:  
  */

#define PRH_BS_DEV_MIN_TIME_SINCE_CONTACT_FOR_R2P 0x40


#define LMP_SLOT_GAURD_FOR_CHANGE_PICONET 0x10

#define SYS_CFG_MIN_SLOTS_FOR_SLEEP_PROCEDURE 1//16
