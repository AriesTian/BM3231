#ifndef _PARTHUS_SYS_HAL_TYPES_H
#define _PARTHUS_SYS_HAL_TYPES_H

/******************************************************************************
 * MODULE NAME:    sys_hal_types.h
 * PROJECT CODE:   BlueStream
 * DESCRIPTION:    Basic platform specific type definitions
 * AUTHOR:         John Sheehy    
 * DATE:           08 March 2001
 *
 * SOURCE CONTROL: $Id: sys_hal_types.h,v 1.3 2004/07/07 14:30:50 namarad Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 2001-2004 Ceva Inc.
 *     All rights reserved.
 *
 * REVISION HISTORY:
 *    08 March 2001   - Initially added by js
 *                                
 *
 * NOTES TO USERS:
 ******************************************************************************/


/* 
 * Unsigned types
 */

typedef unsigned char u_int8;         /* unsigned integer,  8 bits long */
typedef unsigned short u_int16;  /* unsigned integer, 16 bits long */
typedef unsigned int u_int32;         /* unsigned integer, 32 bits long */

/*
 * Signed types 
 */

typedef signed char s_int8;
typedef signed short s_int16;
typedef signed int s_int32;


/*
 * Natural size of integers on processor
 * Uses: 1. for printf  format control and parameter compatability!
 *       2. for defining bit-fields (non-portable!)
 *       3. for efficient use of local variables (avoids masking)
 */

#ifdef SOLARIS
#include <sys/types.h>
#else
typedef unsigned int  u_int;          /* natural unsigned integer on processor */
#endif
typedef unsigned long int u_intL;     /* natural long unsigned integer on processor */

typedef struct s_u_int64
{
    u_int32 low ;      /* low 32 bits of a 64 bit value */
    u_int32 high;      /* high 32 bits of a 64 bit value */
} t_u_int64;

typedef void (*intr_callback)(void);

#endif /* _PARTHUS_SYS_HAL_TYPES_H */


