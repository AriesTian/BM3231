#ifndef _PARTHUS_HW_MEMCPY_
#define _PARTHUS_HW_MEMCPY_

/*
 * MODULE NAME:    hw_memcpy.h
 * PROJECT CODE:    BlueStream
 * DESCRIPTION:    Replacement for memcpy
 * MAINTAINER:     Ivan Griffin
 * DATE:           06 August 1999
 *
 * SOURCE CONTROL: $Id: hw_memcpy.h,v 1.5 2004/07/07 14:30:34 namarad Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 1999-2004 Ceva Inc.
 *     All rights reserved.
 *
 * REVISION HISTORY:
 *    06 August 1999 -   ig       - Initial Version V0.9
 *
 */
#include "sys_config.h"
#include "hw_macro_defs.h"

/*
 * For all hw_memxxx functions, size is in bytes
 */

#ifndef SYS_HAL_ASM_OPTIMIZED_HW_MEMCPY_FUNCTIONS
#define __INLINE2_ __INLINE__
#else
#define __INLINE2_
#endif

__INLINE__ void *hw_memcpy8(void * dest, const void * src, size_t size);
__INLINE__ void hw_memset8(void * dest, u_int8 value, size_t size);

__INLINE2_ void *hw_memcpy128(void *dest, const void *src, size_t size);

__INLINE2_ void *hw_memcpy32_transparent(void *dest, const void *src, size_t size);

__INLINE__ void hw_memcpy_byte_pairs_to_word32(void *dest, const void *src, size_t size);
__INLINE__ void hw_memcpy_byte_pairs_from_word32(void *dest, const void *src, size_t size);
__INLINE__ void hw_memcpy_byte_to_word32(void *dest, const void *src, size_t size);

#define hw_memset hw_memset8

#if defined(HW_DATA16)

    __INLINE__ void * hw_memcpy16(void * dest, const void * src, size_t size);
    #define hw_memcpy hw_memcpy16

#elif defined(HW_DATA32)

    __INLINE2_ void * hw_memcpy32(void * dest, const void * src, size_t size);
    #define hw_memcpy hw_memcpy32

#else

    #error HARDWARE BYTE SEX NOT DEFINED!

#endif

/*
 * Exponent where 2^Exponent     represents NUMBER_BYTES per u_intHW
 */
#if defined(HW_DATA16)
    #define HW_MEMCPY_u_intHW_NUM_BYTES_EXPONENT             1
#elif defined(HW_DATA32)
    #define HW_MEMCPY_u_intHW_NUM_BYTES_EXPONENT             2
#else
    #error  u_intHW must be defined for hw_memcpy, Macro definition.
#endif

#ifndef FIX_ENDIANNESS
/*
 * If FIX_ENDIANNESS not already defined then define here
 * This supports an implementation specific definition in sys_hal_features.h
 * which will implicitly be included via #include "sys_config.h" above.
 */
#if (__BYTE_ORDER==__BIG_ENDIAN)
#define FIX_ENDIANNESS(x) SWAP_ENDIAN(x)
#else
    #define FIX_ENDIANNESS(x) (x)
#endif
#endif


#if defined(__USE_INLINES__)
    #include "hw_memcpy_impl.h"
#endif

#endif

