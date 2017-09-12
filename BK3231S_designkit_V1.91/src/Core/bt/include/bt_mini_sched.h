#ifndef _PARTHUS_BT_MINI_SCHED_
#define _PARTHUS_BT_MINI_SCHED_

/***********************************************************************
 *
 * MODULE NAME:    bt_mini_sched.h
 * PROJECT CODE:   BlueStream
 * DESCRIPTION:    HC scheduling methods for non-interrupt activities.
 * MAINTAINER:     Tom Kerwick
 * CREATION DATE:  November 1999
 *
 * SOURCE CONTROL: $Id: bt_mini_sched.h,v 1.14 2008/09/26 15:03:37 morrisc Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 1999-2004 Ceva Inc.
 *     All rights reserved.
 *
 ***********************************************************************/
 
#include "sys_config.h"
#include "include.h"

#if defined(SYS_HAL_OS_EVENT_DRIVEN_HOST_CONTROLLER)

#define BTMS_OS_EVENT_EXPIRED_TIMERS              0x0001
#define BTMS_OS_EVENT_LMP_IN_QUEUE                0x0002
#define BTMS_OS_EVENT_L2CAP_IN_QUEUE              0x0004
#define BTMS_OS_EVENT_L2CAP_OUT_QUEUE             0x0008
#define BTMS_OS_EVENT_SCO_IN_QUEUE                0x0010
#define BTMS_OS_EVENT_SCO_OUT_QUEUE               0x0020
#define BTMS_OS_EVENT_HCI_COMMAND_QUEUE           0x0040
#define BTMS_OS_EVENT_FLUSH_PENDING               0x0080
#define BTMS_OS_EVENT_RESET_PENDING               0x0100
#define BTMS_OS_EVENT_ASSESSMENT_PENDING          0x0200
#define BTMS_OS_EVENT_HCI_EVENT_QUEUE             0x0400/*NOT used for BTms_OS_Post*/
#define BTMS_OS_EVENT_HOST_TO_HC_FLOW_CONTROL     0x0800
#define BTMS_OS_EVENT_SERVICE_PARK_LINKS          0x1000

#define BTMS_OS_EVENT_ALL_EVENTS                  0x1FFF


extern void (*BTms_OS_Post)(u_int32 mask);
extern u_int32 (*BTms_OS_Pend)(u_int32 mask, u_int16 timout);
extern t_error (*BTms_Callback)(void);

void BTms_OS_Event_Dispatcher_Initialise( void (*os_post)(u_int32),
             u_int32 (*os_pend)(u_int32, u_int16), u_int16 os_timeout);

t_error BTms_OS_Event_Dispatcher(void);
t_error BTms_Sched(void);

#else /* !defined(SYS_HAL_OS_EVENT_DRIVEN_HOST_CONTROLLER)*/

t_error FAST_CALL BTms_Sched(void);

#endif

void BTms_Request_HC_Reset(void);
int BTms_Is_Available_Sleep_System(void);
int BTms_Is_Available_Halt_System(void);

#endif

