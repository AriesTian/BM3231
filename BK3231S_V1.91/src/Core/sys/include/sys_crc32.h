#ifndef _PARTHUS_SYS_CRC32_
#define _PARTHUS_SYS_CRC32_

/***********************************************************************
 *
 * MODULE NAME:    sys_crc32.h
 * PROJECT CODE:   BlueStream
 * DESCRIPTION:    
 * MAINTAINER:     Ivan Griffin
 * CREATION DATE:  20 June 2000
 *
 * SOURCE CONTROL: $Id: sys_crc32.h,v 1.7 2004/07/07 14:22:29 namarad Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 2000-2004 Ceva Inc.
 *     All rights reserved.
 *
 * REVISION HISTORY:
 *    20.Jun.2000 -   IG       - CRC32 generation
 *
 * ISSUES:
 *    based on crc32h.c by Charles Michael Heard
 *    for more info on CRCs, see
 *        ftp://ftp.rocksoft.com/clients/rocksoft/papers/crc_v3.txt
 *    
 ***********************************************************************/

#include "sys_types.h"

void SYScrc32_Generate_Table(void);
u_int32 SYScrc32_Update_CRC(char *data_blk_ptr,
    u_int data_blk_size);

#endif
