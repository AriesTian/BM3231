
#ifndef _DRIVER_FLASH_H_
#define _DRIVER_FLASH_H_
#include "include.h"

#define FLASH_WRITE_ECC_DATA0 0XA3
#define FLASH_WRITE_ECC_DATA1 0X56

#define MEMORIZE_INTO_FLASH
#define FLASH_SPEED_QUAD_READ                   1
#define FLASH_SPEED_STANDARD_READ               0
#define FLASH_SR_SEL_2BYTE                      0
#define FLASH_SR_SEL_1BYTE                      1
#define FLASH_FCKDIV_PLL_90M                    ( 0x0 << 2 )
#define FLASH_FCKDIV_PLL_120M                   ( 0x1 << 2 )
#define FLASH_FCKDIV_XTAL                       ( 0x2 << 2 )
#define FLASH_FCKDIV_DIV1                       0
#define FLASH_FCKDIV_DIV2                       1
#define FLASH_FCKDIV_DIV4                       2
#define FLASH_FCKDIV_DIV8                       3

#define GD25Q41 0x01
#define GD25D40 0x02



/// flash operation command type(decimal)
typedef enum {
	FLASH_OPCODE_WREN    = 1,
	FLASH_OPCODE_WRDI    = 2,
	FLASH_OPCODE_RDSR    = 3,
	FLASH_OPCODE_WRSR    = 4,
	FLASH_OPCODE_READ    = 5,
	FLASH_OPCODE_RDSR2   = 6,
	FLASH_OPCODE_WRSR2   = 7,
	FLASH_OPCODE_PP      = 12,
	FLASH_OPCODE_SE      = 13,
	FLASH_OPCODE_BE1     = 14,
	FLASH_OPCODE_BE2     = 15,
	FLASH_OPCODE_CE      = 16,
	FLASH_OPCODE_DP      = 17,
	FLASH_OPCODE_RFDP    = 18,
	FLASH_OPCODE_RDID    = 20,
	FLASH_OPCODE_HPM     = 21,
	FLASH_OPCODE_CRMR    = 22,
	FLASH_OPCODE_CRMR2   = 23,
} FLASH_OPCODE;



void flash_init(void);
uint32 get_flash_ID(void);
void save_volume_task(void *arg);
void set_flash_clk(unsigned char clk_conf);

void flash_read_data (uint8 *buffer, uint32 address, uint32 len);
void set_flash_qe(void);
void set_flash_HPM(void);
void set_flash_qwfr(void); 
void flash_set_line_mode(uint8 mode);
void flash_write_data (uint8 *buffer, uint32 address, uint32 len);
void GD25Q41_init(void);
void flash_erase_sector(uint32 address);// for warning messge change
uint8 flash_read_qe(void);


uint8 read_lmecc_pointq_status(void);
#endif





