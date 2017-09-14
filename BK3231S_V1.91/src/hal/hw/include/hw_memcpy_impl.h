#ifndef _PARTHUS_HW_MEMCPY_IMPL_
#define _PARTHUS_HW_MEMCPY_IMPL_

/*****************************************************************************
 * MODULE NAME:    hw_memcpy_impl.h
 * PROJECT CODE:   BlueStream
 * DESCRIPTION:    Replacement for memcpy, memset, memcmp
 * MAINTAINER:     Tom Kerwick
 *
 * SOURCE CONTROL: $Id: hw_memcpy_impl.h,v 1.7 2004/07/07 14:30:34 namarad Exp $
 *
 * LICENSE:
 *     This source code is copyright (c) 1999-2004 Ceva Inc.
 *     All rights reserved.
 *
 *****************************************************************************/

#if (BUILD_TYPE==UNIT_TEST_BUILD) && !defined(assert)
#include <assert.h>
#endif

#include "sys_config.h"
#include "hw_memcpy.h"
#include "hw_macro_defs.h"

#if (PRAGMA_INLINE==1)
#pragma inline(\
hw_memcpy_byte_pairs_to_word32,\
hw_memcpy_byte_pairs_from_word32,\
hw_memcpy_byte_to_word32,\
hw_memcpy16,\
hw_memcpy8,\
hw_memset8)
#if defined(HW_DATA16)
#pragma inline(hw_memcpy16)
#endif
#endif

#ifndef SYS_HAL_ASM_OPTIMIZED_HW_MEMCPY_FUNCTIONS

#if (PRAGMA_INLINE==1)
#pragma inline(\
hw_memcpy128, \
hw_memcpy32_transparent)
#if defined(HW_DATA32)
#pragma inline(hw_memcpy32)
#endif
#endif

/*****************************************************************************
 * FUNCTION: hw_memcpy128   [Copies 128 bits at a time for both u_int16/32]
 *
 * 128 bit word direct copy with endianness adjustment
 *
 * This function unrolls the copy loop so that the loop overhead is reduced.
 * Each iteration directly moves 128 bits 
 *
 * dest     address of destination  (u_intHW aligned)
 * src      address of source       (u_intHW aligned)
 * size     in bytes                (will be rounded to nearest # full word128s)
 *
 * NOTE:        Warning -- be sure to use large enough software buffers
 *              (rounded up to a multiple of 128-bit words)
 *
 *****************************************************************************/
__INLINE__ void * hw_memcpy128(void *dest, const void *src, size_t size)
{
#if !defined(PRH_BS_CFG_SYS_ACL_SEGMENT_LENGTH_ALIGNMENT) || \
    (PRH_BS_CFG_SYS_ACL_SEGMENT_LENGTH_ALIGNMENT != 1)
    u_intHW *dest_ptr = (u_intHW*) dest;
    u_intHW *src_ptr  = (u_intHW*) src;
    /*
     * Note the u_intHW pointer hence the offset is by u_intHW
     */
    u_intHW *src_past_end_ptr = src_ptr + ((size+sizeof(u_intHW)-1)
                                >> HW_MEMCPY_u_intHW_NUM_BYTES_EXPONENT);

#if (BUILD_TYPE==UNIT_TEST_BUILD)
    /*
     * During test ensure that addresses are actually u_int32 aligned.
     */
    assert( ((u_int32)dest & sizeof(u_intHW)-1) == 0 && 
            ((u_int32)src  & sizeof(u_intHW)-1) == 0); 
#endif

    while(src_ptr < src_past_end_ptr)
    {
        *dest_ptr++ = FIX_ENDIANNESS(*src_ptr); src_ptr++;
        *dest_ptr++ = FIX_ENDIANNESS(*src_ptr); src_ptr++;
        *dest_ptr++ = FIX_ENDIANNESS(*src_ptr); src_ptr++;
        *dest_ptr++ = FIX_ENDIANNESS(*src_ptr); src_ptr++;
#if defined(HW_DATA16)
        *dest_ptr++ = FIX_ENDIANNESS(*src_ptr); src_ptr++;
        *dest_ptr++ = FIX_ENDIANNESS(*src_ptr); src_ptr++;
        *dest_ptr++ = FIX_ENDIANNESS(*src_ptr); src_ptr++;
        *dest_ptr++ = FIX_ENDIANNESS(*src_ptr); src_ptr++;
#endif
    }

#elif (PRH_BS_CFG_SYS_ACL_SEGMENT_LENGTH_ALIGNMENT == 1)
    u_intHW *dest_ptr = (u_intHW*) dest;
    u_int32 buffer128[4];
    u_int8 *_u8_src  = (u_int8 *) src;

    /*
     * Note the u_intHW pointer hence the offset is by u_intHW
     */
    u_int8 *src_past_end_ptr = _u8_src + size;

    while(_u8_src < src_past_end_ptr)
    {
        /*
         * Byte copy 16 bytes at a time into local buffer
         */
        u_intHW *src_ptr  = (u_intHW*) buffer128;

        u_int8 *_u8_dest = (u_int8 *) buffer128;
        while (_u8_dest < (u_int8 *) buffer128 + sizeof(buffer128))
        {
            *_u8_dest++ = *_u8_src++;
        }

        *dest_ptr++ = FIX_ENDIANNESS(*src_ptr); src_ptr++;
        *dest_ptr++ = FIX_ENDIANNESS(*src_ptr); src_ptr++;
        *dest_ptr++ = FIX_ENDIANNESS(*src_ptr); src_ptr++;
        *dest_ptr++ = FIX_ENDIANNESS(*src_ptr); src_ptr++;
#if defined(HW_DATA16)
        *dest_ptr++ = FIX_ENDIANNESS(*src_ptr); src_ptr++;
        *dest_ptr++ = FIX_ENDIANNESS(*src_ptr); src_ptr++;
        *dest_ptr++ = FIX_ENDIANNESS(*src_ptr); src_ptr++;
        *dest_ptr++ = FIX_ENDIANNESS(*src_ptr); src_ptr++;
#endif
    }

#endif

    return dest;
}

/*****************************************************************************
 * FUNCTION: hw_memcpy32_transparent
 *
 * 32 bit word direct copy without endianness adjustment
 *
 * dest     address of destination  (word32 aligned)
 * src      address of source       (word32 aligned)
 * size     in bytes                (will be rounded to nearest # full word32s)
 *****************************************************************************/
__INLINE__ void * hw_memcpy32_transparent(void *dest, const void *src, size_t size)
{
    u_int32 *dest_cpy = (u_int32*) dest,
            *src_cpy = (u_int32*) src;
    u_int32 *dest_end = (u_int32*)((u_int32)dest_cpy+size);

#if (BUILD_TYPE==UNIT_TEST_BUILD)
    /*
     * During test ensure that addresses are actually u_int32 aligned.
     */
    assert( ((u_int32)dest & 0x03) == 0 && ((u_int32)src & 0x03) == 0); 
#endif

    while(dest_cpy < dest_end)
    {
        *dest_cpy++ = *src_cpy++;
    }

    return dest;
}

#if defined(HW_DATA32)
/*****************************************************************************
 * FUNCTION: hw_memcpy32
 *
 * 32 bit word direct copy with endianness adjustment
 *
 * dest     address of destination  (word32 aligned)
 * src      address of source       (word32 aligned)
 * size     in bytes                (will be rounded to nearest # full word32s)
 *
 * NOTE:        warning -- be sure to use large enough software buffers 
 *              (rounded up to a multiple of 32-bit words)
 *****************************************************************************/
__INLINE__ void * hw_memcpy32(void *dest, const void *src, size_t size)
{
    u_int32 *dest_cpy = (u_int32*) dest,
        *src_cpy = (u_int32*) src;

#if (BUILD_TYPE==UNIT_TEST_BUILD)
    /*
     * During test ensure that addresses are actually u_int32 aligned.
     */
    assert( ((u_int32)dest & 0x03) == 0 && ((u_int32)src & 0x03) == 0); 
#endif

    size = ((size + 3) >> 2);

    while(size--)
    {
        *dest_cpy++ = FIX_ENDIANNESS(*src_cpy); src_cpy++;
    }

    return dest;
}
#endif

#endif // SYS_HAL_ASM_OPTIMIZED_HW_MEMCPY_FUNCTIONS


#if defined(HW_DATA16)
/*****************************************************************************
 * FUNCTION: hw_memcpy16
 *
 * 32 bit word direct copy with endianness adjustment
 *
 * dest     address of destination  (word16 aligned)
 * src      address of source       (word16 aligned)
 * size     in bytes                (will be rounded to nearest # full word16s)
 *****************************************************************************/
__INLINE__ void * hw_memcpy16(void *dest, const void *src, size_t size)
{
    u_intHW *dest_ptr = (u_intHW*) dest;
    u_intHW *src_ptr  = (u_intHW*) src;

    /*
     * Determine end marker (the u_intHW just after the end).
     */
    u_intHW *src_past_end_ptr = src_ptr + ((size+sizeof(u_intHW)-1)
                                >> HW_MEMCPY_u_intHW_NUM_BYTES_EXPONENT);
    while(src_ptr < src_past_end_ptr)
    {
        *dest_ptr++ = FIX_ENDIANNESS(*src_ptr); src_ptr++;
    }

    return dest;
}
#endif

/*****************************************************************************
 * FUNCTION: hw_memcpy8
 *
 * byte (8 bit) direct copy
 *
 * dest     address of destination  (byte aligned)
 * src      address of source       (byte aligned)
 * size     in bytes   
 *****************************************************************************/
__INLINE__ void * hw_memcpy8(void * dest, const void * src, size_t size)
{
    u_int8 *_u8_dest = (u_int8 *) dest;
    u_int8 *_u8_end  = (u_int8 *) dest + size;
    u_int8 *_u8_src  = (u_int8 *) src;

    while (_u8_dest < _u8_end)
    {
        *_u8_dest++ = *_u8_src++;
    }

    return dest;
}

/*****************************************************************************
 * FUNCTION: hw_memset8
 *
 * DESCRIPTION: 8-bit memset where value is written size times at dest
 *****************************************************************************/
__INLINE__ void hw_memset8(void * dest, u_int8 value, size_t size)
{
    u_int8 *_u8_dest = (u_int8 *)dest;
    u_int8 *_u8_end  = (u_int8 *)dest + size;

    while (_u8_dest < _u8_end)
    {
        *_u8_dest++ = value;
    }
}



/*****************************************************************************
 * FUNCTION: hw_memcpy_byte_pairs_to_word32
 *
 * DESCRIPTION: Copy 2 bytes to each word32
 *              First/Second bytes to word32[7:0]/word32[15:8]
 * NOTE:        Consecutively, each 2 bytes of source is moved 
 *              to the low bytes of the word ordered destination
 *
 *  dest        word32 aligned address
 *  src         address of byte array
 *  length      number of bytes
 *
 * Main usage is supporting the hardware SCO/ACL data interleaving.
 * Note that endianess issue is resolved due to explicit byte copy.             
 *****************************************************************************/
__INLINE__ void hw_memcpy_byte_pairs_to_word32(void *dest, const void *src, size_t size)
{
    u_int32 *p_dest32 = (u_int32 *)dest;
    u_int8  *p_src8   = (u_int8  *)src;
    u_int32 word32;
    u_int8 *p_src8_end = p_src8+size;
     
    while(p_src8 < p_src8_end)
    {
        /*
         * Write 2 bytes(MSB/LSB) per 32 bit word in bytes[1:0]
         */
        word32 = *p_src8++;
        word32 += (*p_src8++<<8);
        *p_dest32++ = word32; 
    }
}


__INLINE__ void hw_memcpy_byte_to_word32(void *dest, const void *src, size_t size)
{
    u_int32 *p_dest32 = (u_int32 *)dest;
    u_int8  *p_src8   = (u_int8  *)src;
    u_int32 word32;
    u_int8 *p_src8_end = p_src8+size;
     
    while(p_src8 < p_src8_end)
    {
        word32 = *p_src8++;
        word32 |= (*p_src8) << 8; p_src8++;
        word32 |= (*p_src8) << 16; p_src8++;
        word32 |= (*p_src8) << 24; p_src8++;
        *p_dest32++ = word32; 
    }
}

/*****************************************************************************
 * FUNCTION: hw_memcpy_byte_pairs_from_word32
 *
 * DESCRIPTION: Copy 2 bytes from each word32
 *              Each pair of bytes from word32[7:0]/word32[15:8]
 * NOTE:        Consecutively, each 2 lower bytes of source are moved 
 *              to the next two bytes in destination
 *
 *  dest        address of byte array
 *  src         word32 aligned address
 *  length      number of bytes
 *
 * Main usage is supporting the hardware SCO/ACL data interleaving.
 * Note that endianess issue is resolved due to explicit byte copy.             
 *****************************************************************************/
__INLINE__ void hw_memcpy_byte_pairs_from_word32(void *dest, const void *src, size_t size)
{
    u_int8  *p_dest8 = (u_int8 *)dest;
    u_int32 *p_src32   = (u_int32*)src;
    u_int32 word32;
    u_int8 *p_dest8_end = p_dest8+size;
     
    while(p_dest8 < p_dest8_end)
    {
        /*
         * Extract 2 bytes from each 32 bit word into subsequent bytes
         */
        word32 = *p_src32++;
        *p_dest8++ = (u_int8) word32;
        *p_dest8++ = (u_int8) (word32>>8);
    }
}


#endif
