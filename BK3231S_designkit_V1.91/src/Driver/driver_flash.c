
#include "include.h"



#define GD_FLASH_1	0XC84013
#define MX_FLASH_1	0XC22314
#define XTX_FLASH_1	0X1C3113

#define BY25Q80		0xe04014
#define PN25f04		0xe04013
#define MX_FLASH_4M 0XC22313

#define FLASH_LINE_1  1
#define FLASH_LINE_2  2
#define FLASH_LINE_4  4

#define DEFAULT_LINE_MODE  FLASH_LINE_4


uint32 flash_mid = 0;
void set_flash_clk(unsigned char clk_conf) 
{
	//note :>16M don't use la for flash debug
    unsigned int temp0;
    temp0 = REG_FLASH_CONF;
    REG_FLASH_CONF = (  (clk_conf << BIT_FLASH_CLK_CONF)
                      | (temp0    &  SET_MODE_SEL)
                      | (temp0    &  SET_FWREN_FLASH_CPU)
                      | (temp0    &  SET_WRSR_DATA)
                      | (temp0    &  SET_CRC_EN));
	while(REG_FLASH_OPERATE_SW & 0x80000000){;}
}

uint32 get_flash_ID(void)
{
    unsigned int temp0;

	while(REG_FLASH_OPERATE_SW & 0x80000000);
	temp0 = REG_FLASH_OPERATE_SW;
	REG_FLASH_OPERATE_SW = (  (temp0			 &	SET_ADDRESS_SW)
								| (FLASH_OPCODE_RDID << BIT_OP_TYPE_SW)
								| (0x1				 << BIT_OP_SW)
								| (0x01			 &	SET_WP_VALUE));
	while(REG_FLASH_OPERATE_SW & 0x80000000);
 //   bprintf("flash_ID=%x\r\n",REG_FLASH_RDID_DATA_FLASH);
	return REG_FLASH_RDID_DATA_FLASH ;
}


uint32 flash_read_sr( )
{
	uint16 temp;
	unsigned int temp0;


	while(REG_FLASH_OPERATE_SW & 0x80000000);
	temp0 = REG_FLASH_OPERATE_SW;
	REG_FLASH_OPERATE_SW = (  (temp0             &  SET_ADDRESS_SW)
	                        | (FLASH_OPCODE_RDSR2 << BIT_OP_TYPE_SW)
	                        | (0x1               << BIT_OP_SW)
	                        | (temp0             &  SET_WP_VALUE));
	while(REG_FLASH_OPERATE_SW & 0x80000000);

	temp=(REG_FLASH_SR_DATA_CRC_CNT&0xff)<<8;

	
	 while(REG_FLASH_OPERATE_SW & 0x80000000);
	 temp0 = REG_FLASH_OPERATE_SW;
	 REG_FLASH_OPERATE_SW = (  (temp0			  &  SET_ADDRESS_SW)
							 | (FLASH_OPCODE_RDSR << BIT_OP_TYPE_SW)
							 | (0x1 			  << BIT_OP_SW)
							 | (temp0			  &  SET_WP_VALUE));

    
	while(REG_FLASH_OPERATE_SW & 0x80000000);
    temp |= (REG_FLASH_SR_DATA_CRC_CNT&0xff);
    bprintf("flash_SR=%04x\r\n",temp);
	return temp ;
}

void flash_write_enable( void )
{
    REG_FLASH_OPERATE_SW = ((FLASH_OPCODE_WREN << BIT_OP_TYPE_SW)
	                           | (0x1<< BIT_OP_SW)
	                           | (0x1<< BIT_WP_VALUE));
    while(REG_FLASH_OPERATE_SW & 0x80000000);
    
}
void flash_write_disable( void )
{
    REG_FLASH_OPERATE_SW = ((FLASH_OPCODE_WRDI<< BIT_OP_TYPE_SW)
	                           | (0x1<< BIT_OP_SW)
	                           | (0x1<< BIT_WP_VALUE));
    while(REG_FLASH_OPERATE_SW & 0x80000000);
    
}


void flash_write_sr( uint8 bytes,  uint16 val )
{
	switch(flash_mid)
	{
		case MX_FLASH_4M:
		case MX_FLASH_1:			   //MG xx
			REG_FLASH_CONF &= 0xffdf0fff;
		break;
		case XTX_FLASH_1:			   //XTX xx
			REG_FLASH_CONF &= 0xffff0fff;
		break;
		case GD_FLASH_1:			  //QD xx ,
		case BY25Q80:
		case PN25f04:
		default:
			REG_FLASH_CONF &= 0xfefe0fff;
		break;
	}
    REG_FLASH_CONF |= (val << BIT_WRSR_DATA)|SET_FWREN_FLASH_CPU;
	while(REG_FLASH_OPERATE_SW & 0x80000000);
    if( bytes == 1 ) 
    {
        REG_FLASH_OPERATE_SW = ((FLASH_OPCODE_WRSR << BIT_OP_TYPE_SW)
	                           | (0x1<< BIT_OP_SW)
	                           | (0x1<< BIT_WP_VALUE));
        
    }
    else if(bytes == 2 )
    {
        REG_FLASH_OPERATE_SW = ((FLASH_OPCODE_WRSR2 << BIT_OP_TYPE_SW)
	                           | (0x1<< BIT_OP_SW)
	                           | (0x1<< BIT_WP_VALUE));       
    }
        
    while(REG_FLASH_OPERATE_SW & 0x80000000);
}

void flash_wp_256k( void)
{
	switch(flash_mid)
	{
		case MX_FLASH_4M:
		case MX_FLASH_1:			   //MG xx
			flash_write_sr( 2, 0x080C );
			break;
		case XTX_FLASH_1:			   //XTX xx
			flash_write_sr( 1, 0x2C );
			break;
		case GD_FLASH_1:			  //QD xx ,
		case BY25Q80:
		case PN25f04:
		default:
			flash_write_sr( 2, 0x002c );
			break;
	}
}
void fflash_wr_protect_16k( void )
{
	switch(flash_mid)
	{
		case MX_FLASH_4M:
		case MX_FLASH_1:			   //MG xx
			flash_write_sr( 2, 0x0804 );
			break;
		case XTX_FLASH_1:			   //XTX xx
			flash_write_sr( 1, 0x24 );
			break;
		case GD_FLASH_1:			  //QD xx ,
		case BY25Q80:
		case PN25f04:
		default:
			flash_write_sr( 2, 0x0024 );// 64K有问题，16K 可以
			break;
	}
}

void flash_wr_protect_none( void)
{
	switch(flash_mid)
	{
		case MX_FLASH_4M:
		case MX_FLASH_1:			   //MG xx
			flash_write_sr( 2, 0x0000 );
			break;
		case XTX_FLASH_1:			   //XTX xx
			flash_write_sr( 1, 0x00 );
			break;
		case GD_FLASH_1:			  //QD xx ,
		case BY25Q80:
		case PN25f04:
		default:
			flash_write_sr( 2, 0X0000 );
			break;
	}
}

void flash_wp_ALL( void )
{
	switch(flash_mid)
	{
		case MX_FLASH_4M:
		case MX_FLASH_1:			   //MG xx
			flash_write_sr( 2, 0x003c );
			break;
		case XTX_FLASH_1:			   //XTX xx
			flash_write_sr( 1, 0x3C );
			break;
		case GD_FLASH_1:			  //QD xx ,
		case BY25Q80:
		case PN25f04:
		default:
			flash_write_sr( 2, 0x0014 );
			break;
	}
}



void flash_init(void)
{
    flash_set_line_mode(1);
	while(REG_FLASH_OPERATE_SW & 0x80000000);
	flash_mid = get_flash_ID();
	

    flash_wp_256k();
	
    set_flash_qe();
    flash_set_line_mode(4);
    set_flash_clk(1);
    delay_us(50);

}
void flash_erase_sector(uint32 address)
{
    uint32 reg_value;
    while(REG_FLASH_OPERATE_SW & 0x80000000);
    reg_value = REG_FLASH_OPERATE_SW;
    REG_FLASH_OPERATE_SW = (  (address << BIT_ADDRESS_SW)
                            | (FLASH_OPCODE_SE<< BIT_OP_TYPE_SW)
                            | (0x1             << BIT_OP_SW)
                            | (reg_value & SET_WP_VALUE));
    while(REG_FLASH_OPERATE_SW & 0x80000000);

}



void flash_read_data (uint8 *buffer, uint32 address, uint32 len)
{
    uint32 i, j,k,reg_value;
    uint32 addr = address;
    uint32 buf[8];
    k=0;    
    if (len == 0)
        return;

    while(REG_FLASH_OPERATE_SW & 0x80000000);

    for(j=0;j<((len-1)/32+1);j++)
    {
        reg_value = REG_FLASH_OPERATE_SW;
        REG_FLASH_OPERATE_SW = (  (addr << BIT_ADDRESS_SW)
                                | (FLASH_OPCODE_READ << BIT_OP_TYPE_SW)
                                | (0x1 << BIT_OP_SW)
                                | (reg_value &  SET_WP_VALUE));
        while(REG_FLASH_OPERATE_SW & 0x80000000);
        addr+=32;
        for (i=0; i<8; i++)
        {
            buf[i] = REG_FLASH_DATA_FLASH_SW; 
            
            //bprintf("buff=%x\n",buf[i]);
        }

        if(len>32*(j+1))
            memcpy(&buffer[k],buf,32);
        else
        {
            memcpy(&buffer[k],buf,len-k);
        }
        k += 32;        
    }
}

void flash_write_data (uint8 *buffer, uint32 address, uint32 len)
{
    uint32 i, j,k,reg_value;
    uint32 addr = address;
    uint32 buf[8];
    k=0;
    if (len == 0)
        return;

    while(REG_FLASH_OPERATE_SW & 0x80000000);
    for(j=0;j<((len-1)/32+1);j++)
    {
        if(len>32*(j+1))
            memcpy(buf,&buffer[k],32);
        else
        {
            memcpy(buf,&buffer[k],len-k);
        }
        k += 32;
        for (i=0; i<8; i++)
            REG_FLASH_DATA_SW_FLASH = buf[i];

        while(REG_FLASH_OPERATE_SW & 0x80000000);
        reg_value = REG_FLASH_OPERATE_SW;
        REG_FLASH_OPERATE_SW = (  (addr << BIT_ADDRESS_SW)
                                | (FLASH_OPCODE_PP << BIT_OP_TYPE_SW)
                                | (0x1 << BIT_OP_SW)
                                | (0x1 << BIT_WP_VALUE) // make WP equal 1 not protect SRP
                                | (reg_value &  SET_WP_VALUE));

        while(REG_FLASH_OPERATE_SW & 0x80000000);
        addr+=32;
    }
}


void set_flash_qe(void)
{
	unsigned int temp0;
	while(REG_FLASH_OPERATE_SW & 0x80000000){;}
//XTX_FLASH_1 没有QE,不需要,靠 EQPI(38h) CMD 来处理
//这个仅对MX_FLASH_1 、MX_FLASH_4M、XTX_FLASH_1有效。

	temp0 = REG_FLASH_CONF; //配置WRSR Status data

	if(flash_mid == XTX_FLASH_1)  // wanghong
		return;
	if((flash_mid == MX_FLASH_1)||(flash_mid == MX_FLASH_4M))  // wanghong
	{
		//WRSR QE=1
		REG_FLASH_CONF = ((temp0 &  SET_FLASH_CLK_CONF)
						| (temp0 &  SET_MODE_SEL)
						| (temp0 &  SET_FWREN_FLASH_CPU)
						| (temp0 & SET_WRSR_DATA)
						| (0x1 << 16) // SET QE=1,quad enable
						| (temp0 &  SET_CRC_EN));

		//Start WRSR
		temp0 = REG_FLASH_OPERATE_SW;
		REG_FLASH_OPERATE_SW = (  (temp0 &  SET_ADDRESS_SW)
						     | (FLASH_OPCODE_WRSR2 << BIT_OP_TYPE_SW)
						     | (0x1				  << BIT_OP_SW)
						     | (0x1				  << BIT_WP_VALUE)); // makeWP equal 1 not protect SRP
	}
	else
	{
		REG_FLASH_CONF = (	(temp0 &  SET_FLASH_CLK_CONF)
						  | (temp0 &  SET_MODE_SEL)
						  | (temp0 &  SET_FWREN_FLASH_CPU)
						  |	(temp0 & SET_WRSR_DATA)
						  |	(0x01 << 19)
						  | (temp0 &  SET_CRC_EN));

		//Start WRSR
		temp0 = REG_FLASH_OPERATE_SW;
		REG_FLASH_OPERATE_SW = (  (temp0			  &  SET_ADDRESS_SW)
						        | (FLASH_OPCODE_WRSR2 << BIT_OP_TYPE_SW)
						        | (0x1				  << BIT_OP_SW)
						        | (0x1				  << BIT_WP_VALUE)); // makeWP equal 1 not protect SRP
	}
	while(REG_FLASH_OPERATE_SW & 0x80000000);
}

static void set_flash_qwfr(void)
{
//只操作 MCU,不操作 SR，不用写 REG_FLASH_OPERATE_SW
    unsigned int temp0,mod_sel;
    temp0 = REG_FLASH_CONF;
	mod_sel = temp0 & (0xC << BIT_MODE_SEL); 
	mod_sel |= (0x2 << BIT_MODE_SEL);
    while(REG_FLASH_OPERATE_SW & 0x80000000);
    REG_FLASH_CONF = (  (temp0 &  SET_FLASH_CLK_CONF)
                      |  mod_sel  //QWFR配置四线MODE use QWFR to fetch data. For GigaDevice (GD) Flash
                      | (temp0 &  SET_FWREN_FLASH_CPU)
                      | (temp0 & SET_WRSR_DATA)
                      | (temp0 &  SET_CRC_EN));
}

void clr_flash_qwfr(void)
	#if 0
{
    unsigned int temp0, mod_sel;

    temp0 = REG_FLASH_CONF;

    while(REG_FLASH_OPERATE_SW & 0x80000000){}
    mod_sel = temp0 & (0xC << BIT_MODE_SEL); //清除mode_sel中的低两位模式选择 保持第三第四位
    mod_sel |= (0x1 << BIT_MODE_SEL);
    REG_FLASH_CONF = (  (temp0 &  SET_FLASH_CLK_CONF)
                      | mod_sel
                      | (temp0 &  SET_FWREN_FLASH_CPU)
                      | (temp0 & SET_WRSR_DATA)
                      | (temp0 &  SET_CRC_EN));

    temp0 = REG_FLASH_OPERATE_SW;
    REG_FLASH_OPERATE_SW = (  (0                 << BIT_ADDRESS_SW)
                            | (FLASH_OPCODE_CRMR << BIT_OP_TYPE_SW)
                            | (0x1               << BIT_OP_SW)
                            | (temp0             &  SET_WP_VALUE));
    while(REG_FLASH_OPERATE_SW & 0x80000000);
}
#else
{
    unsigned int temp0,mod_sel;	
	
    temp0 = REG_FLASH_CONF;
    while(REG_FLASH_OPERATE_SW & 0x80000000){;}
    mod_sel = temp0 & (0xC << BIT_MODE_SEL); //??3ymode_sel?D
    mod_sel |= (0x1 << BIT_MODE_SEL);
    REG_FLASH_CONF = (  (temp0 &  SET_FLASH_CLK_CONF)
                        | mod_sel
                        | (temp0 &  SET_FWREN_FLASH_CPU)
                        | (temp0 &  SET_WRSR_DATA)
                        | (temp0 &  SET_CRC_EN));
    //reset flash
    temp0 = REG_FLASH_OPERATE_SW;
    if(flash_mid == XTX_FLASH_1)
    {
        REG_FLASH_OPERATE_SW = (  (0<< BIT_ADDRESS_SW)
                                | (FLASH_OPCODE_CRMR << BIT_OP_TYPE_SW)
                                | (0x1               << BIT_OP_SW)
                                | (temp0             &  SET_WP_VALUE));
    }
    else
    {
        REG_FLASH_OPERATE_SW = (  (0<< BIT_ADDRESS_SW)
                                | (FLASH_OPCODE_CRMR2 << BIT_OP_TYPE_SW)
                                | (0x1               << BIT_OP_SW)
                                | (temp0             &  SET_WP_VALUE));
    }

    while(REG_FLASH_OPERATE_SW & 0x80000000);
}


#endif

void flash_set_line_mode(uint8 mode)
#if 0
{
    uint32 cpu_flags;
    SYSirq_Disable_Interrupts_Save_Flags(&cpu_flags);
    if (mode == 1)
    {
        clr_flash_qwfr();

    }
    else if (mode == 4)
    {
        //set_flash_qe();
        set_flash_qwfr();/**< 4线打开 */
    }
    SYSirq_Interrupts_Restore_Flags(cpu_flags);
}
#else
 {
//XTX_FLASH_1 没有 QE，不需要，靠 EQPI(38h) CMD 来处理
//这个仅对MX_FLASH_1 、MX_FLASH_4M、XTX_FLASH_1有效。
//但还是要写下 XTX_FLASH_1 的位置，因为程序会读qe状态。

	uint32 temp0 = 0;
	uint32 cpu_flags;
	SYSirq_Disable_Interrupts_Save_Flags(&cpu_flags);
    switch(mode) 
    {
    case FLASH_LINE_1:
        clr_flash_qwfr();
        break;
    case FLASH_LINE_2:
        clr_flash_qwfr();
        REG_FLASH_CONF &= (~(7<<BIT_MODE_SEL));
        REG_FLASH_CONF |= (1<<BIT_MODE_SEL);
        break;
    case FLASH_LINE_4:

#if(DEFAULT_LINE_MODE == FLASH_LINE_4)
		if((flash_mid == MX_FLASH_1) || (flash_mid == XTX_FLASH_1)||(flash_mid == MX_FLASH_4M) )
		{
			REG_FLASH_SR_DATA_CRC_CNT = (0xa5 << 22);
		}
		set_flash_qwfr();                  /**< 4??? */

#else
        clr_flash_qwfr();
        REG_FLASH_CONF &= (~(7<<BIT_MODE_SEL));
        REG_FLASH_CONF |= (1<<BIT_MODE_SEL);
#endif
        break;
    default:
        break;
    }
    /* Flash read data operation after setting 4 line mode */
	while(REG_FLASH_OPERATE_SW & 0x80000000);

	SYSirq_Interrupts_Restore_Flags(cpu_flags);
}

#endif

void set_flash_HPM(void)
{
    uint32 temp0;

    while(REG_FLASH_OPERATE_SW & 0x80000000){}
    temp0 = REG_FLASH_OPERATE_SW;
    REG_FLASH_OPERATE_SW = ( (0x0              << BIT_ADDRESS_SW)
                           | (FLASH_OPCODE_HPM << BIT_OP_TYPE_SW)
                           | (0x1              << BIT_OP_SW     )
                           | (temp0            & SET_WP_VALUE));
    while(REG_FLASH_OPERATE_SW & 0x80000000){}
}

static uint16 crc16 (uint8 *pbuff, uint32 len)
{
    uint32 i,j;
    uint8 ds;
    uint16 crc = 0xffff;
    static uint16 poly[2]={0, 0xa001}; 
    for(j=len; j>0; j--)
    {
        ds = *pbuff++;
        for(i=0; i<8; i++)
        {
            crc = (crc >> 1) ^ poly[(crc ^ ds ) & 1];
            ds = ds >> 1;
        }
    }
    return crc;
}

void write_lmecc_pointq(uint8 *buff1, uint8 *buff2)
{
    uint8 temp_buff[60],i;
    uint16 temp_crc;

    memcpy(&temp_buff[0],buff1,28);
    memcpy(&temp_buff[28],buff2,28);
    flash_set_line_mode(1);
    flash_erase_sector(0x42000);
    temp_buff[56]=FLASH_WRITE_ECC_DATA0;
    temp_buff[57]=FLASH_WRITE_ECC_DATA1;
    temp_crc=crc16(temp_buff,58);
    temp_buff[58]=temp_crc&0xff;
    temp_buff[59]=temp_crc>>8;

    flash_write_data(temp_buff,0x42000,60);
    flash_set_line_mode(4);
}


uint8 read_lmecc_pointq_status(void)
{
    uint8 temp_buff[60],i;
    uint16 crc_data=0;
    flash_set_line_mode(1);
    flash_read_data(temp_buff,0x42000,60);
    flash_set_line_mode(4);

    crc_data=crc16(temp_buff,58);
    
 
    if((temp_buff[56]==FLASH_WRITE_ECC_DATA0) && (temp_buff[57]==FLASH_WRITE_ECC_DATA1) 
        && ((crc_data&0xff)==temp_buff[58])&&((crc_data>>8)==temp_buff[59]) )
    {
        return 1;
    }
    else
        return 0;
     
}

void read_lmecc_pointq( uint8 *buff1,uint8 *buff2 )
{
    uint8 temp_buff[58];
    flash_set_line_mode(1);
    flash_read_data(temp_buff,0x42000,58);
    flash_set_line_mode(4);
    memcpy(buff1,&temp_buff[0],28);
    memcpy(buff2,&temp_buff[28],28);
    //for(i=0;i<58;i++)
    //    bprintf("%x\n",temp_buff[i]);
}

/**
   @bref
   @param NO
   @return uint8 reval;
*/
uint8 readLinkNum(void)
{
	uint8 reval = 0;
	uint8 dataBuffer[32] = {0};
	uint8 config_buff[sizeof(ENV_CONFIG_T)] = {0};
	ENV_CONFIG_P env_config=(ENV_CONFIG_P)config_buff;
	
    flash_set_line_mode(1);
    flash_read_data (config_buff, 0x40000, sizeof(ENV_CONFIG_T));
	flash_read_data(dataBuffer, 0x41000, 32);

	if(dataBuffer[0] == 0xff)
	{
		dataBuffer[0] = 0;
		dataBuffer[1] = 0;
		dataBuffer[2] = 0;
		reval = 0;
		config_buff[271] = 0;//1bit stop
		config_buff[272] = 0;//no 奇偶校验位
		
		flash_erase_sector(0x40000);
		flash_erase_sector(0x41000);
		flash_write_data(config_buff, 0x40000, sizeof(ENV_CONFIG_T));
		flash_write_data(dataBuffer, 0x41000, 32);
	}
	else
		reval = dataBuffer[1];
	
	flash_set_line_mode(4);
	
	return reval;
}


/**
   @bref
   @param uint8 num
   @return NO;
*/
void writeLinkNum(uint8 num)
{
	uint8 Btnum = 0;
	uint8 lnum   = 0;
	uint8 state = 0;
	uint8 i, j, k = 0;
	uint8 dataBuffer[32] = {0};
	uint8 data[160] = {0};	//缓存连接数据
	
	flash_set_line_mode(1);
	
	flash_read_data(dataBuffer, 0x41000, 32);
	Btnum = dataBuffer[0];	//已连接蓝牙的个数
	lnum = dataBuffer[1];	//linkkey存储的位置
	state = dataBuffer[2];	//当前连接的设备的编号位置

	for(i = 0; i < Btnum; i++)
	{
		flash_read_data(dataBuffer, 0x41020 + (i * 0x20), 32);
		for(j = 0; j < 32; j++, k++)
			data[k] = dataBuffer[j];
	}

	flash_erase_sector(0x41000);

	for(i = 0, k = 0; i < Btnum; i++)
	{
		for(j = 0; j < 32; j++, k++)
			dataBuffer[j] = data[k];
		
		flash_write_data(dataBuffer, 0x41020 + (i * 0x20), 32);
	}
	
	dataBuffer[0] = Btnum;
	dataBuffer[1] = lnum;
	dataBuffer[2] = num;	
	flash_write_data(dataBuffer, 0x41000, 32);
	
	flash_set_line_mode(4);
}



/**
   @bref
   @param uint8 num, uint8 *pAddr;
   @return NO;
*/
void readBtLinkInfo(uint8 *pAddr, uint8 num)
{
	uint8 i = 0;
	uint8 dataBuffer[32] = {0};

	flash_set_line_mode(1);

	flash_read_data(dataBuffer, 0x41020 + (num * 0x20), 32);

	for(i = 0; i < 32; i++)
	{
		pAddr[i] = dataBuffer[i];
	}
	
	flash_set_line_mode(4);
}

/**
   @bref
   @param uint8 num, uint8 *pAddr;
   @return NO;
*/
void writeBtLinkInfo(uint8 *pAddr, uint8 num)
{
	uint8 i, j, k = 0;
	uint8 Btnum = 0;
	uint8 data[160] = {0};
	uint8 dataBuffer[32] = {0};

	flash_set_line_mode(1);

	flash_read_data(dataBuffer, 0x41000, 32);
	Btnum = dataBuffer[0];
	if(Btnum == 0xff)
		Btnum = 0;
	
	for(i = 0, k = 0; i < Btnum; i++)
	{
		flash_read_data(dataBuffer, 0x41020 + (i * 0x20), 32);
		for(j = 0; j < 32; j++, k++)
		{
			data[k] = dataBuffer[j];
		}
	}

	for(i = 0, k = num * 32; i < 32; i++, k++)
	{
		data[k] = pAddr[i];
	}

	flash_erase_sector(0x41000);

	if(num >= Btnum)	//新的未连接过的BT设备
	{
		if(Btnum < 4)
			Btnum += 1;
	}
	dataBuffer[0] = Btnum;
	dataBuffer[2] = num;
	num = (num + 1) % 4;
	dataBuffer[1] = num;
	
	flash_write_data(dataBuffer, 0x41000, 32);
	
	for(i = 0, k = 0; i < Btnum; i++)
	{
		for(j = 0; j < 32; j++, k++)
		{
			dataBuffer[j] = data[k];
		}
		flash_write_data(dataBuffer, 0x41020 + (i * 0x20), 32);
	}
	
	flash_set_line_mode(4);
}


