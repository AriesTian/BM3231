/*
 * MODULE NAME:    hw_memcpy_impl.c
 * PROJECT CODE:    BlueStream
 * DESCRIPTION:    Implementation for HWmemcpy inlines when use inlines is turned off
 * MAINTAINER:     Ivan Griffin
 * DATE:           20 July 1999
 *
 * SOURCE CONTROL: $Id: hw_memcpy_impl.c,v 1.3 2004/07/07 14:30:48 namarad Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 2000-2004 Ceva Inc.
 *     All rights reserved.
 *
 * REVISION HISTORY:
 *    V1.0     05 August 1999 -   IG       - 
 *
 * SOURCE: 
 * ISSUES:
 * NOTES TO USERS:
 *    
 */

#include "sys_config.h"

#ifndef __USE_INLINES__

#include "hw_memcpy_impl.h"

#else

/*
 * Completely empty source files are illegal in ANSI C
 */
void __hw_memcpy_dummy(void) { }

#endif
