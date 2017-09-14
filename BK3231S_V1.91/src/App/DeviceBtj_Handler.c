/*---------------------------------------------------------------------------------------------------------*/
/*                                                                                                         */
/* Copyright(c) 2010 Nuvoton Technology Corp. All rights reserved.                                         */
/*                                                                                                         */
/*---------------------------------------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------
  Nuvoton Technoledge Corp creadted by PU20
  XTAL = 12MHz, BPS = 115200
 *-----------------------------------------------------------------------------*/
/*
//-------- <<< Use Configuration Wizard in Context Menu >>> ------------------
//
// <e0> Clock Configuration
//   <h> Enable Clock Source (PWRCON)
//                  <q1.0> Crystal 12MHz
//            <q1.3> Internal RC 10kHz
//                  <q1.2> Internal RC 22MHz
//   </h>
// <e2> Enable PLL (PLLCON)
//    <o3.19> PLL Clock Source Selection
//                  <0=> Crystal 12MHz        <1=> Internal RC 22MHz
// </e2>
//    <o4.0..2> HCLK System Clock Source Selection (CLKSEL0)
//                  <0=> Crystal 12MHz
//                  <2=> PLL Clock            <3=> Internal RC 10KHz
//                  <4=> Internal RC 22MHz
// </e0>
//-------- <<< end of configuration section >>> ------------------------------
*/
#include "include.h"
#include "command_table.h"
#include "DeviceBtj_Header.h"
#include "sys_types.h"
#include "sys_config.h"
#include "tra_uart.h"
#include "bt_test.h"
#include "bt_test_impl.h"


 
static DEVICEBTJ_SERVICE_T spp_service;
static DEVICEBTJ_SERVICE_T hid_service;
static DEVICEBTJ_SERVICE_T pnp_service;
DEVICEBTJ_ADAPTER_T btj_adapter;
DEVICEBTJ_ADAPTER_P bt_adapter;
DEV_MEM_ADDR pair_device_addr = {0};




volatile u_int32 sys_flag = 0;
u_int8 pin_code_req;
u_int8 linkkey_buff[32];
u_int8 bt_link_index;
u_int8 maximum_latency;
u_int8 auto_connect_cnt;
u_int8 linkNum = 0;
/* uart delay */
u_int8 AT_flag			= 0;
u_int8 uart_rx_buff_cnt = 0;
u_int8 spi_rx_buff_len  = 0;
u_int8 spi_send_cnt     = 0;
u_int8 hid_flag         = 0;
u_int8 send_cnt         = 0;
u_int8 hid_send_cnt     = 0;
u_int8 key_num[10]      = {0xa1,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00};
u_int8 bt_tx_buff[SEND_BUFFER_SIZE];
u_int8 at_uart_send_length = 0;

//IOS var
u_int8 ios_key_buff[6]  = {0xa1, 0x03, 0x00, 0x00, 0x00, 0x20};//{0xa1, 0x01, 0x00};
extern u_int8 ios_flag;
u_int8 ios_conts        = 0;


void delay_ms(unsigned int tt)
{
    unsigned int i,j;
    while(tt--)
    {
        for (j=0; j<1000; j++)
        {
            for (i=0; i<12; i++)
            {
                ;
            }
        }
    }
}
void send_HCI_command(const unsigned char *buffer,unsigned char data_len)
{

    u_int8 i;
#ifdef UART_LOG    
    u_int32 length1 = data_len;  
    u_int32 length2 = 4;
    u_int8 buffer3[4] = {0x0B,0x0B,0x0A,0x0A};
    u_int8* buffer2 = &buffer3[0];
#endif    
    for (i = 0; i < data_len; i++)
    {
        TRAhcit_UART_Rx_Char(buffer[i]);
    }
#ifdef UART_LOG    
    if(1)//(uart_open)
    {   
        while(length2)
        {
            uart_buff_send((volatile u_int8**)&buffer2, (u_int32*)&length2);
        }   
        while(length1)
        {
            uart_buff_send((volatile u_int8**)&buffer, (u_int32*)&length1);
        }
    }
#endif    
}




void SYS_Host_Initialise(void)
{	
    uint8 i;
    ENV_CONFIG_P config=(ENV_CONFIG_P)env_config_buff;
	memset((void*)&btj_adapter, 0x00, sizeof(DEVICEBTJ_ADAPTER_T));   
	send_HCI_command(Com_Table_Reset, 4);
    for(i=0;i<16;i++)
    {
        if(config->pincode[i]!=0x00)
        {
            btj_adapter.pin_context.pin_buffer[i]=config->pincode[i];
            btj_adapter.pin_context.pin_length++;
        }
        else
            break;
    }

	if(config->work_mode==0x00)
    {
		memset((void*)&hid_service, 0x00, sizeof(DEVICEBTJ_SERVICE_T));
		DeviceSdpdb_Doreg(&btj_adapter, &hid_service, DEVICEBTJ_OBJECT_HID);
		hid_service.adapter                        = &btj_adapter;
		hid_service.ctx_state                      = SERVICE_STATE_IDLE;
		btj_adapter.app_service_header              = &hid_service;

		memset((void*)&pnp_service, 0x00, sizeof(DEVICEBTJ_SERVICE_T));
		DeviceSdpdb_Doreg(&btj_adapter, &pnp_service, DEVICEBTJ_OBJECT_PNP);
		pnp_service.adapter                        = &btj_adapter;
		pnp_service.rfc_context.rfc_mtu            = 0x00;
		pnp_service.ctx_state                      = SERVICE_STATE_IDLE;
		btj_adapter.app_service_header->next       = &pnp_service; 
	} 
	else if(config->work_mode==0x01)
	{
		memset((void*)&spp_service, 0x00, sizeof(DEVICEBTJ_SERVICE_T));
		DeviceSdpdb_Doreg(&btj_adapter, &spp_service, DEVICEBTJ_OBJECT_SPP);
		spp_service.adapter                        = &btj_adapter;
		spp_service.rfc_context.rfc_mtu            = RFC_FRAME_SIZE;
		spp_service.ctx_state                      = SERVICE_STATE_IDLE;
        
		btj_adapter.app_service_header             = &spp_service;
    }
    else
    {
        memset((void*)&hid_service, 0x00, sizeof(DEVICEBTJ_SERVICE_T));
		DeviceSdpdb_Doreg(&btj_adapter, &hid_service, DEVICEBTJ_OBJECT_HID);
		hid_service.adapter                        = &btj_adapter;
		hid_service.ctx_state                      = SERVICE_STATE_IDLE;
		btj_adapter.app_service_header              = &hid_service;

		memset((void*)&pnp_service, 0x00, sizeof(DEVICEBTJ_SERVICE_T));
		DeviceSdpdb_Doreg(&btj_adapter, &pnp_service, DEVICEBTJ_OBJECT_PNP);
		pnp_service.adapter                        = &btj_adapter;
		pnp_service.rfc_context.rfc_mtu            = 0x00;
		pnp_service.ctx_state                      = SERVICE_STATE_IDLE;
		btj_adapter.app_service_header->next       = &pnp_service;   

        memset((void*)&spp_service, 0x00, sizeof(DEVICEBTJ_SERVICE_T));
		DeviceSdpdb_Doreg(&btj_adapter, &spp_service, DEVICEBTJ_OBJECT_SPP);
		spp_service.adapter                        = &btj_adapter;
		spp_service.rfc_context.rfc_mtu            = RFC_FRAME_SIZE;
		spp_service.ctx_state                      = SERVICE_STATE_IDLE;
        
		btj_adapter.app_service_header->next->next       = &spp_service;

    }
   
}


void enter_sniff(void)
{
    unsigned char i;
	unsigned char comm_table[14];
    for( i=0; i<14; i++)
    {
        comm_table[i]=Com_Table_SniffMode[i];
    }
    comm_table[4] = (btj_adapter.hci_context->hci_context_handle)&0xff;
    comm_table[5] = (btj_adapter.hci_context->hci_context_handle)>>8;
    send_HCI_command(comm_table,14);
    delay_ms(2);
#ifdef _KEYBOARD__ 
    maximum_latency=8;//sniff2 interval=sniff interval*maximum_latency
#else
    maximum_latency=1;
#endif
}
void exit_sniff(void)
{
    unsigned char i;
	unsigned char comm_table[6];
    for( i=0; i<6; i++)
    {
        comm_table[i]=Com_Table_ExitSniff[i];
    }
    comm_table[4] = (btj_adapter.hci_context->hci_context_handle)&0xff;
    comm_table[5] = (btj_adapter.hci_context->hci_context_handle)>>8;
    send_HCI_command(comm_table,6);
}
#if 0
void keyboard_lock_control()
{
    HID_CONTEXT_P hid_context = &hid_service.hid_context;
    if( (!link_flag)||(!key_lock) )
        return;
    
    key_lock=0;
    if(hid_context->kbd_capslock)
    {
        //bprintf("capslk_on\r\n");
        BK3231_GPIO_Set_Value(CAPS_LED_PIN, LED_ON);
    }
    else
    {
        //bprintf("capslk_off\r\n");
        BK3231_GPIO_Set_Value(CAPS_LED_PIN, LED_OFF);
    }
    if(hid_context->kbd_numlock)
    {
        //bprintf("numlock_on\r\n");
      
    }
    else
    {
        //bprintf("numlock_off\r\n");
      
    }

}


#endif    


void connect_ind()
{
    //REG_AHB0_ICU_CLKSRCSEL = SET_CLK_SEL_16M;

    if(sys_flag &FLAG_BT_INPAIR)
    {
        DeviceHci_Disconnect(&btj_adapter, btj_adapter.hci_context->hci_context_handle, HCI_ERR_OETC_POWERING_OFF);        
        return;
    }
   
    sys_flag |=FLAG_CONNECTED;
    sys_flag |= FLAG_BT_DISABLE_SCAN;
    sys_flag &= ~FLAG_BT_INPAIRING;
    sys_flag &= ~FLAG_AUTO_CONNECT_BUSY;
    //tx_buff_count=0;
    //tx_buff_head=0;
    //tx_buff_tail=0;
    pin_code_req = 0;
    //enter_sleep_cont=0;
    //key_idle_count=0;
    //led_time_cnt=0;
    auto_connect_cnt=0;
    uart_send_cnt=0;

	#if DEBUG
    bprintf("connected\r\n");
    #endif
    REG_AHB0_ICU_CORECLKCON  = (2<<BIT_CORE_CLK_DIV);

}
void disconnect_ind(uint8 reason )
{

    pin_code_req=0; 
    
    //enter_sleep_cont=0;
    //key_idle_count=0;
    //led_time_cnt=0;
    auto_connect_cnt=0;
    
    
    send_HCI_command(Com_Table_WriteScanEnable,5);

	#if DEBUG
    bprintf("disconnected\r\n");
    bprintf("reason=%x\r\n",reason);
    #endif

	/* 测试是否使用了次函数 */
	//Timer_Start(0,10000);

	
#if 0//disconnect enter sleep
    if(sys_flag&FLAG_CONNECTED)
    {
        sys_flag &= FLAG_LOW_POWER;
        sys_flag|=FLAG_BT_INPAIR;
        sys_flag|=FLAG_ENTER_SLEEP;
    }
    else
    {
        sys_flag &= FLAG_LOW_POWER;
        sys_flag|=FLAG_BT_INPAIR;
    }
#else//disconnect enter pair
	sys_flag &= FLAG_LOW_POWER;
    sys_flag|=FLAG_BT_INPAIR;
#endif
} 
void DeviceBtj_linkkey_save(BTBYTE *linkkey)
{
    uint8 linkkey_buff_temp[32],i;
    if((sys_flag & FLAG_SAVE_LINKKEY) && (!(sys_flag & FLAG_AUTO_CONNECT_TEST_DONGLE_BUSY)))
    {

        flash_set_line_mode(1);
        sys_flag &= ~FLAG_SAVE_LINKKEY;
        
        flash_read_data(linkkey_buff_temp,0x41000,32);
        flash_erase_sector(0x41000);
        for(i=0;i<22;i++)
            linkkey_buff_temp[i]= linkkey[i]; 
        if(sys_flag & FLAG_HOST_IOS)
            linkkey_buff_temp[22]=FLAG_HOST_IOS;
        else
            linkkey_buff_temp[22]=0;
        sys_flag &= ~FLAG_HOST_IOS_INIT;
        flash_write_data(linkkey_buff_temp,0x41000,32);
        flash_set_line_mode(4);   
    }
} 

void status_control(
    DEVICEBTJ_ADAPTER_P Adapter,
    DEVICEBTJ_SERVICE_P Service)
{          
    ENV_CONFIG_P config=(ENV_CONFIG_P)env_config_buff;
    static u_int16 loop_cnt=0,loop_cnt1=0;
    static u_int16 time_cnt=0;

    
    if(sys_flag&FLAG_AUTHENTICATION_REQ)
    {
        loop_cnt++;
        if(loop_cnt>0x1f0)
        {
           
            loop_cnt=0;
            DeviceHci_AuthenticationRequestedCommand(&btj_adapter,btj_adapter.hci_context->hci_context_handle);
            sys_flag &= ~FLAG_AUTHENTICATION_REQ;
        }
    }
    if(sys_flag&FLAG_ROLE_SWITCH)
    {
        loop_cnt1++;
        if(loop_cnt1>0x1f0)
        {          
            loop_cnt1=0;
            sys_flag &= ~FLAG_ROLE_SWITCH;
            DeviceHci_SwitchRole( &btj_adapter,btj_adapter.hci_context->hci_context_devaddr,0x01);
        }
    }
    
    if((sys_flag&FLAG_CONNECTED) && !(sys_flag&(FLAG_BT_SET_SNIFF|FLAG_L2CAP_SDP_CONNECT)))
    {
        time_cnt++;          
    }
    else
        time_cnt=0;

    if( (time_cnt>=1000) && (sys_flag&FLAG_BT_DISABLE_SCAN))
    {
        time_cnt=0;
        sys_flag &= (~FLAG_BT_DISABLE_SCAN);
        //DeviceBtj_linkkey_save(linkkey_buff);
        send_HCI_command(Com_Table_WriteScanEnable_DisableAll,5);        
    }
    if(config->work_mode==0x01)
        return;
	if(( sys_flag&FLAG_BT_SET_LINKPOLICY_IND)&&(!(sys_flag&FLAG_BT_IN_SNIFF)) )
	{
		time_cnt=0;
		if(!(sys_flag&FLAG_BT_SET_SNIFF))
		{
			sys_flag |= FLAG_BT_SET_SNIFF;           
			enter_sniff();
		}
	}
    if( (sys_flag&FLAG_AUTO_CONNECT_START) && !(sys_flag&FLAG_AUTO_CONNECT_BUSY))
    {
        sys_flag &= ~FLAG_AUTO_CONNECT_START;
        flash_set_line_mode(1);   
        flash_read_data(linkkey_buff,0x41000,32);
		flash_read_data(linkkey_buff, (0x41020 + (linkkey_buff[2] * 0x20)), 32);

		#if 0
        bprintf("addr:%02x%02x%02x%02x%02x%02x\n",linkkey_buff[26],linkkey_buff[27],linkkey_buff[28],
            linkkey_buff[29],linkkey_buff[30],linkkey_buff[31]);
		#endif
        flash_set_line_mode(4);
        if( (linkkey_buff[26]!=0xff)||(linkkey_buff[27]!=0xff)||(linkkey_buff[28]!=0xff)
            ||(linkkey_buff[29]!=0xff)||(linkkey_buff[30]!=0xff)||(linkkey_buff[31]!=0xff) )
		{
		    auto_connect_cnt=1;
            DeviceBtj_Connect(&btj_adapter, &hid_service, &linkkey_buff[26]);
			#if DEBUG
            bprintf("auto connect\r\n");    
            #endif
        }
        else
        { 
            auto_connect_cnt=0;
			#if DEBUG
            bprintf("addr:%02x%02x%02x%02x%02x%02x\n",config->test_addr[0],config->test_addr[1],config->test_addr[2],
            config->test_addr[3],config->test_addr[4],config->test_addr[4]);
			#endif

			DeviceBtj_Connect(&btj_adapter, &hid_service, config->test_addr);
			
			#if DEBUG
            bprintf("auto connect test dongle\r\n"); 
            #endif
            sys_flag |= FLAG_AUTO_CONNECT_TEST_DONGLE_BUSY;
        }
        sys_flag |= FLAG_AUTO_CONNECT_BUSY;
    }
}


void
DeviceBtj_Event(
    DEVICEBTJ_ADAPTER_P MsgAdapter,
    DEVICEBTJ_SERVICE_P MsgService,
    BTBYTE  MsgEvent,
    BTBYTE  MsgState,
    BTPBYTE MsgBuffer,
    BTWORD  MsgLength
)
{
    unsigned char i,j;
	unsigned char comm_table[26];
    ENV_CONFIG_P config=(ENV_CONFIG_P)env_config_buff;
            
    switch (MsgEvent)
    {
    case DEVICEBTJ_EVENT_WRITE_LOCAL_TYPE:
		/* HID SPP all work on */
		//send_HCI_command(Com_Table_WriteClassOfDevice,7);

		/* HID or SPP just one work on */
		if(config->work_mode==0x00)
            send_HCI_command(Com_Table_WriteClassOfDevice_hid,7);
        else
            send_HCI_command(Com_Table_WriteClassOfDevice,7);
        
        break;
    case DEVICEBTJ_EVENT_WRITE_SCAN_ENABLE:
         
        send_HCI_command(Com_Table_WriteScanEnable,5); 

		#if DEBUG
        bprintf("init_ok\r\n");
        #endif

        sys_flag|=FLAG_POWER_ON;

		/* closed 20170817 */
        //Timer_Start(0,10000);
         
        break;
    case DEVICEBTJ_EVENT_WRITE_LOCAL_NAME:
        
        DeviceHci_WriteLocalName(MsgAdapter, config->bt_device_name, 32);
        
        break;
    case DEVICEBTJ_EVENT_WRITE_EIR:
        Write_Extended_Inquiry_Response_Command(MsgAdapter, config->bt_device_name, 32);
        
        break;
      
    case DEVICEBTJ_EVENT_LINKKEY_REQUEST:
	{
		uint8 num = 0;
        flash_set_line_mode(1);
        
        flash_read_data(linkkey_buff, 0x41000, 32);
        num = linkkey_buff[0];
	    flash_set_line_mode(4);

		#if DEBUG
		bprintf("num:%d\n", num);
		#endif

		readBtLinkInfo(linkkey_buff, 0);

		#if 0
		bprintf("addr0:%02x%02x%02x%02x%02x%02x\n",btj_adapter.hci_machine.hci_machine_uart_buf[0],btj_adapter.hci_machine.hci_machine_uart_buf[1],btj_adapter.hci_machine.hci_machine_uart_buf[2],
	            btj_adapter.hci_machine.hci_machine_uart_buf[3],btj_adapter.hci_machine.hci_machine_uart_buf[4],btj_adapter.hci_machine.hci_machine_uart_buf[5]);
		bprintf("addr1:%02x%02x%02x%02x%02x%02x\n",linkkey_buff[0],linkkey_buff[1],linkkey_buff[2],
					linkkey_buff[3],linkkey_buff[4],linkkey_buff[5]);
		#endif
		
		if(num == 0)
		{	
			#if DEBUG
			bprintf("no linkkey\n");
			#endif
			comm_table[0]=0x01;
            comm_table[1]=0x0c;
            comm_table[2]=0x04;
            comm_table[3]=6;
            comm_table[4]=MsgBuffer[0];
            comm_table[5]=MsgBuffer[1];
            comm_table[6]=MsgBuffer[2];
            comm_table[7]=MsgBuffer[3];
            comm_table[8]=MsgBuffer[4];
            comm_table[9]=MsgBuffer[5];
            send_HCI_command(comm_table,10);
		}
		else
		{
			for(i = 0; i < num; i++)
			{
				#if DEBUG
				bprintf("i:%d,num:%d\n", i,num);
				#endif
				
				readBtLinkInfo(linkkey_buff, i);
				if((btj_adapter.hci_machine.hci_machine_uart_buf[0]==linkkey_buff[0])
	               &&(btj_adapter.hci_machine.hci_machine_uart_buf[1]==linkkey_buff[1])
	               &&(btj_adapter.hci_machine.hci_machine_uart_buf[2]==linkkey_buff[2])
	               &&(btj_adapter.hci_machine.hci_machine_uart_buf[3]==linkkey_buff[3])
	               &&(btj_adapter.hci_machine.hci_machine_uart_buf[4]==linkkey_buff[4])
	               &&(btj_adapter.hci_machine.hci_machine_uart_buf[5]==linkkey_buff[5])
                )
		        {
		        	#if DEBUG
					bprintf("addr0:%02x%02x%02x%02x%02x%02x\n",btj_adapter.hci_machine.hci_machine_uart_buf[0],btj_adapter.hci_machine.hci_machine_uart_buf[1],btj_adapter.hci_machine.hci_machine_uart_buf[2],
							btj_adapter.hci_machine.hci_machine_uart_buf[3],btj_adapter.hci_machine.hci_machine_uart_buf[4],btj_adapter.hci_machine.hci_machine_uart_buf[5]);
					bprintf("addr1:%02x%02x%02x%02x%02x%02x\n",linkkey_buff[0],linkkey_buff[1],linkkey_buff[2],
								linkkey_buff[3],linkkey_buff[4],linkkey_buff[5]);
					#endif
		        	writeLinkNum(i);
		            comm_table[0]=0x01;
		            comm_table[1]=0x0b;
		            comm_table[2]=0x04;
		            comm_table[3]=22;
		            for(j=0; j<LINK_KEY_SAVE_BUF_LEN; j++)
		            {
		                comm_table[4+j]=linkkey_buff[j] ;
		            }
		            send_HCI_command(comm_table, 26);
		            if( linkkey_buff[22]==(FLAG_HOST_IOS&0xff) )     
		                sys_flag |= FLAG_HOST_IOS;
					break;
		        }
		        else
		        {
		        	if((i < (num - 1)) && (num - 1 > 0))
					{
						continue;
						
						#if DEBUG
						bprintf("continue!\n");
						#endif
					}
					else
					{
						#if DEBUG
						bprintf("NEW connection\n");
						bprintf("i:%d,num:%d\n", i,num);
						#endif
			            comm_table[0]=0x01;
			            comm_table[1]=0x0c;
			            comm_table[2]=0x04;
			            comm_table[3]=6;
			            comm_table[4]=MsgBuffer[0];
			            comm_table[5]=MsgBuffer[1];
			            comm_table[6]=MsgBuffer[2];
			            comm_table[7]=MsgBuffer[3];
			            comm_table[8]=MsgBuffer[4];
			            comm_table[9]=MsgBuffer[5];
			            send_HCI_command(comm_table,10);
					}		
				}
			}
		}
	}
    break;
        
    case DEVICEBTJ_EVENT_LINKKEY_NOTIFICATION:
	{
		uint8 num = 0;
        // MsgBuffer is: 6 bytes of mac address + 16 bytes of link key, MsgLength is 22
        //delay_ms(5);
        
        //flash_set_line_mode(1);

		#if DEBUG
        bprintf("linkkey:%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\n",
        MsgBuffer[6],MsgBuffer[7],MsgBuffer[8],MsgBuffer[9],MsgBuffer[10],
        MsgBuffer[11],MsgBuffer[12],MsgBuffer[13],MsgBuffer[14],MsgBuffer[15],
        MsgBuffer[16],MsgBuffer[17],MsgBuffer[18],MsgBuffer[19],MsgBuffer[20],
        MsgBuffer[21]);
        bprintf("addr:%02x%02x%02x%02x%02x%02x\n",MsgBuffer[0],MsgBuffer[1],MsgBuffer[2],
            MsgBuffer[3],MsgBuffer[4],MsgBuffer[5]);
		#endif
#if 1
		flash_set_line_mode(1);
		flash_read_data(linkkey_buff, 0x41000, 32);
        num = linkkey_buff[0];
		flash_set_line_mode(4);
		
		for(i = 0; i < num; i++)
		{
			readBtLinkInfo(linkkey_buff, i);
			
			if((MsgBuffer[0]==linkkey_buff[0])
               &&(MsgBuffer[1]==linkkey_buff[1])
               &&(MsgBuffer[2]==linkkey_buff[2])
               &&(MsgBuffer[3]==linkkey_buff[3])
               &&(MsgBuffer[4]==linkkey_buff[4])
               &&(MsgBuffer[5]==linkkey_buff[5])
            )
	        {
		        linkNum = i;
				#if DEBUG
				bprintf("linkNum==i:%d\n", i);
				#endif
				
				break;
	        }
			else
			{
				linkNum = readLinkNum();
				#if DEBUG
				bprintf("linkNum!=i:%d\n", readLinkNum());
				#endif
				
				continue;
			}

			if((linkNum != i) && (linkNum == num - 1))
			{
				linkNum = readLinkNum();
				#if DEBUG
				bprintf("new device\n");
				#endif
			}
		}
		
        //for(i=0;i<22;i++)
            //linkkey_buff[i]= MsgBuffer[i];
        sys_flag |= FLAG_SAVE_LINKKEY;
        sys_flag &= ~FLAG_HOST_IOS_INIT;
//#else
        if(1)//!(sys_flag & FLAG_AUTO_CONNECT_TEST_DONGLE_BUSY))
        {
        	for(i=0;i<22;i++)
	            linkkey_buff[i]= MsgBuffer[i];
			for(i = 26; i < 32; i++)
	            linkkey_buff[i]= MsgBuffer[i-26];
			
            if(sys_flag & FLAG_HOST_IOS)
                linkkey_buff[22]=FLAG_HOST_IOS;
            else
                linkkey_buff[22]=0;
            sys_flag &= ~FLAG_HOST_IOS_INIT;
			
			writeBtLinkInfo(linkkey_buff, linkNum);
			#if DEBUG
			bprintf("linknum:%d\n", readLinkNum());
			#endif
        }
#endif

	}
    break;
        
    case DEVICEBTJ_EVENT_SPP_CONNECT_IND:
        sys_flag |= FLAG_SPP_CONNECTED;
        connect_ind();
        break;
    case DEVICEBTJ_EVENT_SPP_DISCONNECT_IND:
        disconnect_ind(0);
        break;
    case DEVICEBTJ_EVENT_ACL_DISCONNECT_IND:
        disconnect_ind( MsgState/*disconnect reason*/ );
        break;
        
    case DEVICEBTJ_EVENT_SPP_RECEIVE:
        //DeviceRfc_Send(MsgAdapter, MsgService, MsgBuffer, MsgLength);
        while(MsgLength)
            uart_buff_send((volatile u_int8**)&MsgBuffer, (u_int32*)&MsgLength);
        
        //enter_sleep_cont=0;
        break;
    case DEVICEBTJ_EVENT_HID_CONNECT_IND:
        connect_ind();
        break;
    case DEVICEBTJ_EVENT_HID_DISCONNECT_IND:
		bprintf("hid_disc=%d\n", MsgState);
		/* close link fast */
        disconnect_ind(0);
        break;
    case DEVICEBTJ_EVENT_HID_RECEIVE:
        break;
    case DEVICEBTJ_EVENT_HID_OUT_REPORT:
       // set_out_report(WRITE_OUT_REPORT,0,MsgBuffer,MsgLength);
        break;
    case DEVICEBTJ_EVENT_HID_GET_REPORT:
        //get report
        //fill report data in MsgBuffer,fill data len in MsgLength
        break;
    case DEVICEBTJ_EVENT_HID_CREAT_CONNECT:

		#if 0
		bprintf("HID CREAT\n");
        flash_set_line_mode(1);
        flash_read_data(linkkey_buff,0x41000,32);
        flash_erase_sector(0x41000);
        for(i=26;i<32;i++)
            linkkey_buff[i]= MsgBuffer[i-26];   
        flash_write_data(linkkey_buff,0x41000,32);
        flash_set_line_mode(4);
        #endif
		
        break;
    case DEVICEBTJ_EVENT_MODE_CHANGE:
        //bprintf("mode=%x\n",MsgBuffer[3]);
        if(MsgBuffer[3]==0x00)//active mode
        {            
            sys_flag &= ~FLAG_BT_IN_SNIFF;

			/* close 20170817 */
			//Timer_Start(0,10000);
        }
        else if(MsgBuffer[3]==0x02)//sniff mode
        {
            //enter_sleep_cont=0;
            //led_time_cnt=0;
            sys_flag |= FLAG_KEY_ACTIVE;
            sys_flag |= FLAG_BT_IN_SNIFF;
            sys_flag &= ~FLAG_BT_SET_SNIFF;
            Timer_Stop(0);
        }
        
        break;
    case DEVICEBTJ_EVENT_PIN_CODE_REQUEST:
 
        if(config->work_mode==0x00)
        {
#ifdef _KEYBOARD__

            bt_adapter = MsgAdapter;
            pin_code_req = 1;
            bt_adapter->pin_context.pin_length=0;
            memcpy (pair_device_addr, MsgBuffer, LEN_DEV_MEM_ADDR);
#else
            delay_ms(5);
            DeviceHci_PinCodeReply(MsgAdapter, MsgBuffer, "0000", 4);
#endif

        }
        else           
            DeviceHci_PinCodeReply(MsgAdapter, MsgBuffer, btj_adapter.pin_context.pin_buffer, btj_adapter.pin_context.pin_length);
        break;
    case    DEVICEBTJ_EVENT_WRITE_LINK_POLICY_SETING:
		//HID连接时串口发送数据死机原因，屏蔽以下代码则不会死机
        //if(config->work_mode==0x00)
            //Write_Link_Policy_Settings(MsgAdapter,MsgAdapter->hci_context->hci_context_handle,ENABLE_SNIFF_MODE);
        break;
    case DEVICEBTJ_EVENT_AUTO_CONNECT:
        
        if(auto_connect_cnt--)
        {
            DeviceHci_Connect(MsgAdapter, MsgBuffer);
        }
        else
        {
            DeviceHid_Reset(MsgAdapter, MsgAdapter->app_service_header->l2c_context);
            DeviceRfc_Reset(MsgAdapter,&spp_service);
            disconnect_ind(0);
        }
        break;
    case DEVICEBTJ_EVENT_SAREQ:
        if(config->work_mode==0x00)
        {
            DeviceSdpdb_Doreg(&btj_adapter, &hid_service, DEVICEBTJ_OBJECT_HID);
        }
        break;
    case DEVICEBTJ_EVENT_SSAREQ:
        if(config->work_mode==0x00)
        {
            DeviceSdpdb_Doreg(&btj_adapter, &hid_service, DEVICEBTJ_OBJECT_HID);
        }
        break;
    default:
        break;
    }
}


BTBOOL
DeviceBtj_Adapter_Write(
  DEVICEBTJ_ADAPTER_P adapter,
  BTPBYTE buffer,
  BTWORD length
)
{
	BTBOOL result = BTTRUE;
#ifdef UART_LOG    
	unsigned int length1 = length;
	BTPBYTE buffer1 = buffer;
	u_int32 length2 = 4;
	u_int8 buffer3[4] = {0x0B,0x0B,0x0A,0x0A};
	u_int8* buffer2 = &buffer3[0];
#endif  
    //enter_sleep_cont=0;
	if(buffer[0x00]==0x02)
	{
		if(adapter->acl_packets_num > 0x00)
		{
		#ifdef UART_LOG
            if(1)//uart_open)
            {
    			while(length2)
    			{
    			uart_buff_send((volatile u_int8**)&buffer2, (u_int32*)&length2);
    			}        
    			while(length1)
    			{
    			uart_buff_send((volatile u_int8**)&buffer1, (u_int32*)&length1);
    			}
            }
            else 
      #endif          
            {            
                if(!(sys_flag&FLAG_CONNECTED))
                    delay_us(4000);
            }
			while (length > 0x00)
			{
				TRAhcit_UART_Rx_Char(*buffer);
				buffer++;
				length--;
			} 
			adapter->acl_packets_num--; 

		}
		else
		{

            result=BTFALSE;
		}
	}
	else 
	{
#ifdef UART_LOG	
        if(1)//uart_open)
        {
    		while(length2)
    		{
    			uart_buff_send((volatile u_int8**)&buffer2, (u_int32*)&length2);
    		}        
    		while(length1)
    		{
    			uart_buff_send((volatile u_int8**)&buffer1, (u_int32*)&length1);
    		}
        }
#endif        
		while (length > 0x00)
		{
			TRAhcit_UART_Rx_Char(*buffer);
			buffer++;
			length--;
		}
	}
	return result;
}
	
    



DEVICEBTJ_API
DEVICEBTJ_STATE
DEVICEBTJ_STDCALL
DeviceBtj_Connect(
    DEVICEBTJ_ADAPTER_P Adapter,
    DEVICEBTJ_SERVICE_P Service,
    DEV_MEM_ADDR DevMemAddr
)
{
    DEVICEBTJ_STATE state = DEVICEBTJ_STATE_FAILURE_INVALID;
    if (Service->ctx_state != SERVICE_STATE_IDLE)
    {
        state = DEVICEBTJ_STATE_FAILURE_ALREADY_CONNECTING;
    }
    else if (Service->sdp_database.busy)
    {
        state = DEVICEBTJ_STATE_FAILURE_ALREADY_CONNECTED;
    }
    else
    {
        BTBYTE hci_index = 0x00;
        HCI_CONTEXT_P hci_context = BTNULL;
        /* Check hci_context */
        for (hci_index = 0x00; hci_index < DEVICEMAX_HCI_CONTEXT && hci_context == BTNULL; hci_index++)
        {
            HCI_CONTEXT_P tmp_context = &Adapter->hci_context[hci_index];
            if (DeviceBtj_Utils_DevMemAddr_ChkSame(DevMemAddr, tmp_context->hci_context_devaddr))
            {
                hci_context = tmp_context;
            }
            else if (tmp_context->hci_context_handle > 0x0000)
            {
                state = DEVICEBTJ_STATE_FAILURE_INSTANCE;
            }
        }
        if (state != DEVICEBTJ_STATE_FAILURE_INSTANCE)
        {
            if (hci_context == BTNULL)
            {
                //bprintf("send connect cmd\r\n");
                /* Start hci */
                DeviceHci_Connect(Adapter, DevMemAddr);
                /* Makes flags */
                Service->ctx_state = SERVICE_STATE_CONNECTING_START;
                /* Makes current service is busy */
                Service->sdp_database.busy = BTTRUE;
                /* Store request adress */
                memcpy((void*)Service->dev_mem_addr, DevMemAddr, sizeof(DEV_MEM_ADDR));
            }
            else
            {
                /* Start l2c */
                DeviceL2c_Send_ConnectionReq(Adapter, Service, hci_context, L2C_PSM_SDP);
                /* Makes current service is busy */
                Service->sdp_database.busy = BTTRUE;
                /* Store request adress */
                memcpy((void*)Service->dev_mem_addr, DevMemAddr, sizeof(DEV_MEM_ADDR));
            }
            state = DEVICEBTJ_STATE_SUCCESS;
        }
    }
    return state;
}
DEVICEBTJ_SERVICE_P
DeviceBtj_Adapter_GetService(
    DEV_MEM_ADDR DevMemAddr
)
{
    if (DevMemAddr != BTNULL)
    {
        DEVICEBTJ_SERVICE_P app_service_header = btj_adapter.app_service_header;
        /* Only one instance between adapter and remote device */
        while (app_service_header != BTNULL)
        {
            if (app_service_header->ctx_state == SERVICE_STATE_CONNECTING_START || app_service_header->ctx_state == SERVICE_STATE_CONNECTING_RETRY)
            {
                if (DeviceBtj_Utils_DevMemAddr_ChkSame(app_service_header->dev_mem_addr, DevMemAddr))
                {
                    return app_service_header;
                }
            }
            app_service_header = app_service_header->next;
        }
    }
    return BTNULL;
}

void Device_HCI_Rx(u_int8 *head_buf, u_int32 head_len, u_int8 *pdu_buf, u_int32 pdu_len)
{
    DeviceHci_Callback(&btj_adapter,head_buf, head_len);
    DeviceHci_Callback(&btj_adapter,pdu_buf, pdu_len);
}

 


void FAST_CALL Host_Loop()
{
    static u_int16 uart_rx_buff_temp, temp_data_len;
	static u_int8 uart_rx_buff_cnt_temp;
    //static u_int8 uart_rx_buff_cnt,uart_rx_buff_cnt_temp;
    ENV_CONFIG_P config=(ENV_CONFIG_P)env_config_buff;


	/* ios 键盘出入仓 */
	if(ios_flag == 1)
	{
		if(!(gpio_input(0, 2)))
		{
			ios_flag = 0;
			ios_conts = 0;
		}
		
		ios_conts++;
		
		if(ios_conts == 15)
		{
			ios_key_buff[5] = 0x00;

			if((DeviceHid_Send(&btj_adapter, &hid_service, ios_key_buff, 6)))
			{
				ios_conts = 16;
				//bprintf("release\n");
			}
			else
			{
				ios_conts = 10;
				//bprintf("release error\n");
			}
		}
		else if(ios_conts == 10)// && (ios_flag == 2))
		{
			ios_key_buff[5] = 0x20;
			if((DeviceHid_Send(&btj_adapter, &hid_service, ios_key_buff, 6)))
			{
				//ios_flag = 1;
				//bprintf("press\n");
			}
			else
			{
				ios_conts = 0;
				//bprintf("release error\n");
			}
		}
		else if(ios_conts > 15)
			ios_conts = 16;
	}
	else
		ios_conts = 0;

	//if(config->work_mode)
	if(config->work_mode < 3)// 2
    {
        if(uart_send_cnt == 0x00)
        {
            uart_rx_buff_temp = uart_rx_buff_header;
            if (uart_rx_buff_tailor < uart_rx_buff_temp)//全局变量(uart_rx_buff_tailor)初始化为0
            {
                if((uart_rx_buff_temp - uart_rx_buff_tailor) > (UART_SEND_LENGTH-uart_cnt_index))
                    temp_data_len = UART_SEND_LENGTH - uart_cnt_index;
                else
                    temp_data_len = uart_rx_buff_temp - uart_rx_buff_tailor;

                uart_callback(uart_rx_tx_buff + uart_rx_buff_tailor, temp_data_len);
                
                uart_rx_buff_tailor+=temp_data_len;
                uart_rx_buff_tailor=(uart_rx_buff_tailor%UART_BUFF_LEN);
                uart_rx_buff_cnt=0;
                
            }
            else if (uart_rx_buff_tailor > uart_rx_buff_temp)
            {
                if((UART_BUFF_LEN - uart_rx_buff_tailor)>=(UART_SEND_LENGTH-uart_cnt_index))
                {
                    temp_data_len=UART_SEND_LENGTH-uart_cnt_index;
                    uart_callback(uart_rx_tx_buff + uart_rx_buff_tailor, temp_data_len);
                    uart_rx_buff_tailor+=temp_data_len;
                    uart_rx_buff_tailor=(uart_rx_buff_tailor%UART_BUFF_LEN);
                }
                else
                {
                    temp_data_len=UART_BUFF_LEN - uart_rx_buff_tailor;
                    uart_callback(uart_rx_tx_buff + uart_rx_buff_tailor, temp_data_len);
                    uart_rx_buff_tailor+=temp_data_len;
                    uart_rx_buff_tailor=(uart_rx_buff_tailor%UART_BUFF_LEN);
                    if((uart_rx_buff_temp - uart_rx_buff_tailor)>=(UART_SEND_LENGTH-uart_cnt_index))
                       temp_data_len=UART_SEND_LENGTH-uart_cnt_index;
                    else
                        temp_data_len=uart_rx_buff_temp - uart_rx_buff_tailor;
                    uart_callback(uart_rx_tx_buff + uart_rx_buff_tailor, temp_data_len);
                    uart_rx_buff_tailor+=temp_data_len;
                    uart_rx_buff_tailor=(uart_rx_buff_tailor%UART_BUFF_LEN);
                }
                uart_rx_buff_cnt=0;
            }
            else if((uart_rx_buff_tailor == uart_rx_buff_temp) && (uart_cnt_index > 0))/*&&(sys_flag&FLAG_CONNECTED)*/
            {
                uart_rx_buff_cnt++;
				
                if(uart_rx_buff_cnt >= 20)//200//30)超时置位uart_send_cnt
				//if((uart_rx_buff_cnt >= 30) && ((uart_send_buff[uart_cnt_index - 1] == 0x0D) || (uart_send_buff[uart_cnt_index - 1] == 0x0A)))
				{
                	uart_rx_buff_cnt = 0;
                    uart_send_length = uart_cnt_index;
					at_uart_send_length = uart_cnt_index;;
                    uart_send_cnt    = 1;                    
                    uart_cnt_index   = 0;

					#if DEBUG
					bprintf("uart_send_lenght=%d\n", uart_send_length);
					bprintf("uart_data=%x\n", uart_send_buff[uart_send_length - 1]);
					#endif
                }
            }
        }
    }

    if (btj_adapter.acl_packets_num > 0x00)
    {
        if (btj_adapter.uih_credits_l2c != BTNULL && btj_adapter.uih_credits_rfc != BTNULL)
        {
            L2C_CONTEXT_P l2c_context = btj_adapter.uih_credits_l2c;
            RFC_CONTEXT_P rfc_context = btj_adapter.uih_credits_rfc;
            /* Construct hci, l2cap and rfcomm header */
            DeviceRfc_UihHeader(btj_adapter.uih_credits_buf, l2c_context, RFC_PF_SET(RFC_FRA_UIH), RFC_CR_FRA_UIH_VAL(rfc_context->rfc_init), rfc_context->rfc_sc, RFC_FRAME_UIH_LENGTH + 0x01);
            /* Assign credit */
            btj_adapter.uih_credits_buf[sizeof(HCI_COMMON_T) + RFC_FRAME_UIH_OFFSET] = rfc_context->rfc_lcredit;
            /* Write packet */
            DeviceBtj_Adapter_Write(&btj_adapter, btj_adapter.uih_credits_buf, sizeof(btj_adapter.uih_credits_buf));
            
            /* Clear local credit */
            rfc_context->rfc_lcredit = 0x00;
            btj_adapter.uih_credits_l2c = BTNULL;
            btj_adapter.uih_credits_rfc = BTNULL;  
        }
        if(rfcomm_dis_fail)
        {
            rfcomm_dis_fail=0;
            DeviceBtj_Adapter_Write(&btj_adapter, backup_buffer, 13);
        }
        if(l2cap_dislink_fail)
        {
            l2cap_dislink_fail=0;
            DeviceBtj_Adapter_Write(&btj_adapter, backup_buffer, 17);
        }
    }

    if(sys_flag&FLAG_CONNECTED)
    {
		/* open online at command */
		if((uart_send_buff[0] == '+') && (uart_send_buff[1] == '+') && (uart_send_buff[2] == '+') && (AT_flag == 0))
		{
			AT_flag = 1;
			
			#if DEBUG
			bprintf("AT指令\n");
			#endif
		}
    
        if(uart_send_cnt && (sys_flag & FLAG_SPP_CONNECTED))//spp 发送数据
        {
        	if(uart_send_cnt)//发送串口数据
			{
	            if(DeviceRfc_Send(&btj_adapter, &spp_service, uart_send_buff, uart_send_length))
	            {	
	            	uart_send_cnt = 0;

					
			    	/* 在线AT指令 */
					if(AT_flag == 1)// && (uart_send_cnt == 1))
					{
						uint8 dataBuf[40] = {0};
						
						#if DEBUG
						bprintf("AT Command0:%s\n", uart_send_buff);
						#endif

						if((!memcmp(uart_send_buff, "AT+EXIT", 7)) || (!memcmp(uart_send_buff, "AT+EXIT\r\n", 9)))
							AT_flag = 0;

						/* AT 指令部分代码 */
						if(!getATCommand((uint8*)uart_send_buff))
						{
							//uart_send_length -= 3;
							at_uart_send_length -= 3;
							memcpy(dataBuf, uart_send_buff + 3, at_uart_send_length);//uart_send_length);
							
							#if DEBUG
							bprintf("at_data_length0= %d\n", at_uart_send_length);//uart_send_length);
							#endif
							
							getCommandData(dataBuf);
						}
						
						at_uart_send_length = 0;
					}
	            }
			}
        }   
        else if(uart_send_cnt)//(tx_buff_count)//串口数据接收完成
        {
        	uint16 temp = 0;

			/* get one byte spi data and change to keycode */
			if(!send_cnt && uart_send_length && (hid_flag == 0))
			{
				temp = asciiToKeycode(uart_send_buff[hid_send_cnt]);
				
				#if DEBUG
				bprintf("temp = %4x\n", temp);
				bprintf("hid_send_cnt=%d\n", hid_send_cnt);
				#endif
				
				hid_send_cnt++;

				if((temp & 0xff00))
				{
					key_num[2] = ((temp & 0xff00) >> 8);
					key_num[4] = (temp & 0xff);
				}
				else
				{
					key_num[2] = 0x00;
					key_num[4] = (temp & 0xff);
				}

				memcpy(&bt_tx_buff, &key_num, 10);
			}

			/* send keycode by bluetooth hid protocol */
			if(uart_send_length/* || spi_rx_buff_len*/)
			{
				send_cnt++;
				if(send_cnt == 15)
				{
					send_cnt   = 0;
					key_num[4] = 0;
					memcpy(&bt_tx_buff, &key_num, 10);

					if(hid_flag)// send key released code 
					{
						if((DeviceHid_Send(&btj_adapter, &hid_service, bt_tx_buff, 10)))
						{
							hid_flag = 0;
							uart_send_length--;
							
							#if DEBUG
							bprintf("key release\n");
							bprintf("uart_send_length=%d\n", uart_send_length);
							#endif
						}
						else
						{

							#if DEBUG
							bprintf("release send false!\n");
							#endif
						}

					}
				}
	            else if((send_cnt == 10) && (hid_flag != 1))// send key pressed code
	            {
	            	if((DeviceHid_Send(&btj_adapter, &hid_service, bt_tx_buff, 10)))
					{
						hid_flag = 1;

						#if DEBUG
						bprintf("key press\n");
						#endif
					}
					else
					{
						#if DEBUG
						bprintf("press send false!\n");
						#endif
						
						hid_send_cnt--;
					}
	            }
			}
			else
			{
		    	/* 在线AT指令 */
				if(AT_flag == 1)// && (uart_send_cnt == 1))
				{
					uint8 dataBuf[40] = {0};

					//bprintf("AT_Flag\n");
					#if DEBUG
					bprintf("AT Command1:%s\n", uart_send_buff);
					#endif

					/* AT 指令部分代码 */
					if(!getATCommand((uint8*)uart_send_buff))
					{
						//uart_send_length -= 3;
						at_uart_send_length -= 3;
						memcpy(dataBuf, uart_send_buff + 3, at_uart_send_length);//uart_send_length);
						
						#if DEBUG
						bprintf("at_data_length1= %d\n", at_uart_send_length);//uart_send_length);
						#endif
						
						getCommandData(dataBuf);
					}
					
					at_uart_send_length = 0;
				}
				
				uart_send_cnt = 0;
				hid_send_cnt  = 0;
			}	
        }	
    }
	else if(uart_send_cnt)
	{
		uint8 dataBuf[40] = {0};
		/* AT 指令部分代码 */
		#if DEBUG
		//bprintf("AT Command:%s\n", uart_send_buff);
		#endif
		if(!getATCommand((uint8*)uart_send_buff))
		{
			//uart_send_length -= 3;
			at_uart_send_length -= 3;
			memcpy(dataBuf, uart_send_buff + 3, at_uart_send_length);//uart_send_length);
			
			#if DEBUG
			//bprintf("at_data_length= %d\n", at_uart_send_length);//uart_send_length);
			#endif
			
			getCommandData(dataBuf);
		}

		AT_flag = 0;
		uart_send_cnt = 0;
		at_uart_send_length = 0;
		//uart_send_length = 0;
	}	
    //else if(tx_buff_count == 0x00)
    {
        //tx_buff_tail=0;
        //tx_buff_head=0;
    }
    
    status_control(&btj_adapter,&hid_service); 

}

/**
 @bref
 @param  uint8 *pCommand
 @return ON, OFF
*/
static uint8 getATCommand(uint8 *pCommand)
{
	uint8 atData[10] = {0};
	//uint32 flags;
	ENV_CONFIG_P config=(ENV_CONFIG_P)env_config_buff;
	
	memcpy(atData, pCommand, 4);

	#if DEBUG
	bprintf("data=%s\n", atData);
	#endif

	if(!memcmp(atData, "AT+", 3))
	{
		#if DEBUG
		bprintf("AT+\n");
		#endif
		
		return OFF;
	}
	else if((!memcmp(atData, "AT", 2)) || ((!memcmp(atData, "AT\r\n", 4))))
	{
		bprintf("\r\nOK\r\n");
		return ON;
	}
	#if 1
	else
	{
		uint8 atData[11] = {0};
		
		memcpy(atData, pCommand, 10);

		#if DEBUG
		bprintf("data1=%s\n", atData);
		#endif

		if((!memcmp(atData, "WKMD=SPP\r\n", 10)) || (!memcmp(atData, "WKMD=SPP", 8)))
		{			
			/* read the old bluetooth parameter from flash */
			flash_set_line_mode(1);
			flash_read_data(env_config_buff, 0x40000, sizeof(ENV_CONFIG_T));
			flash_set_line_mode(4);

			/* change parameter of work mode */
			config->work_mode = 1;	//SPP MODE

			/* write parameter of work mode to flash */
			flash_set_line_mode(1);
			flash_erase_sector(0x40000);
			flash_write_data(env_config_buff, 0x40000, sizeof(ENV_CONFIG_T));
			flash_set_line_mode(4);
			
			#if DEBUG
			bprintf("SPP mode will be working\n");
			#endif

			#if 0
			SYS_Initialise();
			//TRAhcit_Set_Register_Function(TRAhcit_Register_UART_Driver);
			SYSirq_Disable_Interrupts_Save_Flags(&flags);
			read_env_config(); 
			SYSconfig_Initialise();  
			BT_Initialise();
	        LMscan_Write_Scan_Enable(3);
	        BTtst_Set_DUT_Mode(1);
			SYSirq_Enable_Interrupts_Save_Flags(&flags);  
			#endif

			/* open watch dog time driver */
			Driver_wdt_enable(0x0001); /* after 5 * 48us if not feed dog system will be reset */

			/* waiting for system reset */
			while(1);
		}
		else if((!memcmp(atData, "WKMD=HID\r\n", 10)) || (!memcmp(atData, "WKMD=HID", 8)))
		{
			/* read the old bluetooth parameter from flash */
			flash_set_line_mode(1);
			flash_read_data(env_config_buff, 0x40000, sizeof(ENV_CONFIG_T));
			flash_set_line_mode(4);

			/* change parameter of work mode */
			config->work_mode = 0;	//HID MODE

			/* write parameter of work mode to flash */
			flash_set_line_mode(1);
			flash_erase_sector(0x40000);
			flash_write_data(env_config_buff, 0x40000, sizeof(ENV_CONFIG_T));
			flash_set_line_mode(4);

			#if DEBUG
			bprintf("HID mode will be working\n");
			#endif

			#if 0
			SYS_Initialise();
			//TRAhcit_Set_Register_Function(TRAhcit_Register_UART_Driver);
			SYSirq_Disable_Interrupts_Save_Flags(&flags);
			read_env_config(); 
			SYSconfig_Initialise();  
			BT_Initialise();
			LMscan_Write_Scan_Enable(3);
	        BTtst_Set_DUT_Mode(1);
			SYSirq_Enable_Interrupts_Save_Flags(&flags);  
			#endif
			/* open watch dog time driver */
			Driver_wdt_enable(0x0001); /* after 5 * 48us if not feed dog system will be reset */

			/* waiting for system reset */
			while(1);
		}
		else if(!memcmp(atData, "NAME=", 5))
		{
			uint8 namebuf[30] = {0};

			flash_set_line_mode(1);
			flash_read_data(env_config_buff, 0x40000, sizeof(ENV_CONFIG_T));
			flash_set_line_mode(4);

			#if DEBUG
			bprintf("DataLEN:%d\n", at_uart_send_length);
			#endif

			if((uart_send_buff[at_uart_send_length - 1] == 0x0A) || (uart_send_buff[at_uart_send_length - 1] == 0x0D))
				at_uart_send_length -= 7;
			else
				at_uart_send_length -= 5;

			#if DEBUG
			bprintf("NAMELEN:%d\n", at_uart_send_length);
			#endif
			
			memcpy(namebuf, pCommand + 5, at_uart_send_length);
			memcpy(config->bt_device_name, namebuf, 32);

			#if DEBUG
			bprintf("DNAME:%s\n", config->bt_device_name);
			#endif
			
			flash_set_line_mode(1);
			flash_erase_sector(0x40000);
			flash_write_data(env_config_buff, 0x40000, sizeof(ENV_CONFIG_T));
			flash_set_line_mode(4);

			#if 0
			SYS_Initialise();
			//TRAhcit_Set_Register_Function(TRAhcit_Register_UART_Driver);
			SYSirq_Disable_Interrupts_Save_Flags(&flags);
			read_env_config();
			SYSconfig_Initialise();  
			BT_Initialise();
			LMscan_Write_Scan_Enable(3);
	        BTtst_Set_DUT_Mode(1);
			SYSirq_Enable_Interrupts_Save_Flags(&flags);  
			#endif

			/* open watch dog time driver */
			Driver_wdt_enable(0x0001); /* after 5 * 48us if not feed dog system will be reset */

			/* waiting for system reset */
			while(1);			
		}
	}
	#endif
}




/**
 @bref	
 @param  uint8 *pbuf
 @return NO
*/
static void getCommandData(uint8 *pbuf)
{
	ENV_CONFIG_P config=(ENV_CONFIG_P)env_config_buff;
	
	if(*pbuf =='A')
	{
		if((!memcmp(pbuf, "ADDR", 4)) || (!memcmp(pbuf, "ADDR\r\n", 6)))
			bprintf("\r\n+ADDR=%02x%02x%02x%02x%02x%02x\r\n\r\nOK\n", config->bt_addr[0], config->bt_addr[1],\
				 config->bt_addr[2], config->bt_addr[3], config->bt_addr[4], config->bt_addr[5]);
		else
			bprintf("ERROR\n");
	}
	else if(*pbuf == 'B')
	{
		//if(uart_send_length > 6)
		if(at_uart_send_length > 6)
		{
			if(!memcmp(pbuf, "BAUD", 4))
			{
				uint32 baudbuf = 0;//[10] = {0};
				uint8 baud = 0;

				#if DEBUG
				bprintf("uart_send_length0=%d\n", at_uart_send_length);//uart_send_length);
				#endif
				if(pbuf[at_uart_send_length - 1] == 0x0A)
					at_uart_send_length -= 2;
				at_uart_send_length -= 4;
				

				#if 0
				if(!memcmp(pbuf, "BAUD=", 5))
				{
					uart_send_length -= 1;
					memcpy(baudbuf, pbuf + 5, uart_send_length);
				}
				else
				#endif
					memcpy(&baudbuf, pbuf + 4, at_uart_send_length);
				
				#if 0
				baud = charToDec(&baudbuf[uart_send_length - 3], 1);
				config->uart_stop = baud;
				//bprintf("uart_stop=%d\n", config->uart_stop);
				
				baud = charToDec(&baudbuf[uart_send_length - 1], 1);
				config->uart_par  = baud;
				//bprintf("baudbuf=%s\n", baudbuf);
				//bprintf("uart_par=%d\n", config->uart_par);
				baud = charToDec(baudbuf, uart_send_length - 4);
				#endif

				baud = baudbuf;
				
				switch(baud)
				{
			        case '1':
			            config->uart_baudrate = 0;
						baudbuf = 2400;
						break;
			        case '2':
			            config->uart_baudrate = 1;
						baudbuf = 4800;
			            break;
			        case '3':
			            config->uart_baudrate = 2;  
						baudbuf = 9600;
			            break;
			        case '4':
			            config->uart_baudrate = 3; 
						baudbuf = 19200;
			            break;
			        case '5':
			            config->uart_baudrate = 4;    
			            break;
			        case '6':
			            config->uart_baudrate = 5;
						baudbuf = 38400;
			            break;
			        case '7':
			            config->uart_baudrate = 6;   
						baudbuf = 57600;
			            break;
			        case '8':
			            config->uart_baudrate = 7;  
						baudbuf = 115200;
			            break;
			        case 128000:
			            config->uart_baudrate = 8;
						//baudbuf = 2400;
			            break;
			        case 256000:
			            config->uart_baudrate = 9;
			            break;
			        case 'B':
			            config->uart_baudrate = 10;   
						baudbuf = 921600;
			            break;
			         default:
			            config->uart_baudrate = 7;  
				        break;
			    }
				bprintf("OK%d", baudbuf);

				flash_set_line_mode(1);
				memcpy(&env_config_buff[239], &config->uart_baudrate, 1);
				memcpy(&env_config_buff[271], &config->uart_stop, 2);
				flash_erase_sector(0x40000);
			    flash_write_data (env_config_buff, 0x40000, sizeof(ENV_CONFIG_T));
			    flash_set_line_mode(4);
				
				UART_Initial();
			}
		}
		#if 0
		else
		{	
			if((!memcmp(pbuf, "BAUD", 4)) || (!memcmp(pbuf, "BAUD\r\n", 6)))
			{
				uint32 baudrate = 0;
				switch(config->uart_baudrate)
				{
			        case 0:
			            baudrate = 1200;   
			            break;
			        case 1:
			            baudrate = 2400;    
			            break;
			        case 2:
			            baudrate = 4800;    
			            break;
			        case 3:
			            baudrate = 9600;   
			            break;
			        case 4:
			            baudrate = 19200;    
			            break;
			        case 5:
			            baudrate = 38400;    
			            break;
			        case 6:
			            baudrate = 57600;   
			            break;
			        case 7:
			            baudrate = 115200; 
			            break;
			        case 8:
			            baudrate = 128000;    
			            break;
			        case 9:
			            baudrate = 256000;
			            break;
			        case 10:
			            baudrate = 921600;   
			            break;
			         default:
			            baudrate = 115200;  
				        break;
			    }
				bprintf("\r\n+BAUD=%d\r\n\r\nOK\n", baudrate);
			}
		}
		#endif
	}
	else if(*pbuf == 'C')
	{
		//AT+COD
		bprintf("\r\nERROR\n");
	}
	else if(*pbuf == 'E')
	{
		if((!memcmp(pbuf, "EXIT", 4)) || (!memcmp(pbuf, "EXIT\r\n", 6)))
		{
			AT_flag = 0;

			#if DEBUG
			bprintf("exit Ok\n");
			#endif
		}
	}
	else if(*pbuf == 'L')
	{
		if(*(pbuf + 1) == 'A')
		{
			//AT+LADDR
			if((!memcmp(pbuf, "LADDR", 5)) || (!memcmp(pbuf, "LADDR\r\n", 7)))
				bprintf("\r\n+LADDR=%02x%02x%02x%02x%02x%02x\r\n\r\nOK\n", config->bt_addr[0], config->bt_addr[1],\
					 config->bt_addr[2], config->bt_addr[3], config->bt_addr[4], config->bt_addr[5]);
			else
				bprintf("ERROR\n");	
		}
		else if(*(pbuf + 1) == 'E')
		{
			if((!memcmp(pbuf, "LEDMD=1", 7)) || (!memcmp(pbuf, "LEDMD=1\r\n", 9)))
			{
				ledMode = 1;
				config->bt_led_io = 1;

				#if DEBUG
				bprintf("LEDMD=1\n");
				#endif

				flash_set_line_mode(1);
				flash_erase_sector(0x40000);
				flash_write_data(env_config_buff, 0x40000, sizeof(ENV_CONFIG_T));
				flash_set_line_mode(4);	
			}
			else if((!memcmp(pbuf, "LEDMD=0", 7)) || (!memcmp(pbuf, "LEDMD=0\r\n", 9)))
			{
				ledMode = 0;
				config->bt_led_io = 0;
				
				#if DEBUG
				bprintf("LEDMD=0\n");
				#endif

				flash_set_line_mode(1);
				flash_erase_sector(0x40000);
				flash_write_data(env_config_buff, 0x40000, sizeof(ENV_CONFIG_T));
				flash_set_line_mode(4);					
			}
		}
		
	}
	else if(*pbuf == 'N')
	{
		if(at_uart_send_length >= 4)
		{
			//AT+NAME... or AT+NAME=...
			uint8 nameBuf[32] = {0};
			
			if(pbuf[at_uart_send_length - 1] == 0x0A)
				at_uart_send_length -= 2;
			at_uart_send_length -= 4;
			
			//bprintf("uart_send_length:%d\n", uart_send_length);

			if(at_uart_send_length > 0)
			{
				#if 0
				if(!memcmp(pbuf, "NAME=", 5))
				{
					uart_send_length -= 1;
					memcpy(nameBuf, pbuf + 5, uart_send_length);
				}
				else
				#endif
					memcpy(nameBuf, pbuf + 4, at_uart_send_length);
				
				memcpy(config->bt_device_name, nameBuf, 32);

				//bprintf("DNAME:%s\n", config->bt_device_name);
			
				flash_set_line_mode(1);
				flash_erase_sector(0x40000);
				flash_write_data(env_config_buff, 0x40000, sizeof(ENV_CONFIG_T));
				flash_set_line_mode(4);
				bprintf("OKsetname");
			}
			#if 0
			else
			{
				//AT+NAME
				if((!memcmp(pbuf, "NAME", 4)) || (!memcmp(pbuf, "NAME\r\n", 6)))
					bprintf("\r\n+NAME=%s\r\n\r\nOK\n", config->bt_device_name);
				else
					bprintf("ERROR\n");			
			}
			#endif
		}
	}
	else if(*pbuf == 'P')
	{
		if(at_uart_send_length >= 3)
		{
			//AT+PIN... or AT+PIN=...
			uint8 pinBuf[16] = {0};
			
			if(pbuf[at_uart_send_length - 1] == 0x0A)
				at_uart_send_length -= 2;
			at_uart_send_length -= 3;
			
			//bprintf("uart_send_length:%d\n", uart_send_length);

			if(at_uart_send_length > 0)
			{
				#if 0
				if(!memcmp(pbuf, "PIN=", 4))
				{
					uart_send_length -= 1;
					memcpy(pinBuf, pbuf + 4, uart_send_length);
				}
				else
				#endif
					memcpy(pinBuf, pbuf + 3, at_uart_send_length);
				
				memcpy(config->pincode, pinBuf, 16);

				//bprintf("PIN:%s\n", config->pincode);
			
				flash_set_line_mode(1);
				flash_erase_sector(0x40000);
				flash_write_data (env_config_buff, 0x40000, sizeof(ENV_CONFIG_T));
				flash_set_line_mode(4);
				bprintf("OKsetPIN");
			}
		}
		else
		{
			if(*pbuf++ == 'N')
			{
				config->uart_stop = 0;
				config->uart_par  = 0;
				bprintf("OK None");	
			}
			else if(*pbuf++ == 'E')
			{
				config->uart_stop = 0;
				config->uart_par  = 1;
				bprintf("OK Even");	
			}
			else if(*pbuf++ == 'O')
			{
				config->uart_stop = 0;
				config->uart_par  = 2;
				bprintf("OK Odd");	
			}
			
			flash_set_line_mode(1);
			flash_erase_sector(0x40000);
			flash_write_data (env_config_buff, 0x40000, sizeof(ENV_CONFIG_T));
			flash_set_line_mode(4);
		}
	}
	else if(*pbuf == 'V')
	{
		//AT+VER
		if((!memcmp(pbuf, "VERSION", 7)) || (!memcmp(pbuf, "VERSION\r\n", 9)))
			bprintf("VER=1.0.0");
		else
			bprintf("ERROR\n");			
	}
	else if(*pbuf == 'R')
	{
		//AT+REBOOT
		//AT+RESTORE
		if(((!memcmp(pbuf, "REBOOT", 6)) || (!memcmp(pbuf, "REBOOT\r\n", 8))))
		{
			
		}
		else if(((!memcmp(pbuf, "RESTORE", 7)) || (!memcmp(pbuf, "RESTORE\r\n", 9))))
		{
			uint8 baud = 7;//115200
			uint8 pincode[16] = {0};
			uint8 nameBuf[32] = {0};
			
			bprintf("\r\nOK\n");
			
			memcpy(pincode, "1234", 4);
			memcpy(nameBuf, "BM3231", 6);
			memcpy(config->bt_device_name, nameBuf, 32);
			memcpy(&config->uart_baudrate, &baud, 1);
			memcpy(config->pincode, pincode, 4);

			flash_set_line_mode(1);
			flash_erase_sector(0x40000);
			flash_write_data (env_config_buff, 0x40000, sizeof(ENV_CONFIG_T));
			flash_set_line_mode(4);			
		}
		else
			bprintf("ERROR\n");	
	}
}

/**
 @bref	
 @param  uint8 *pchar, uint8 len
 @return uint32 data
*/
uint32 charToDec(uint8 *pchar, uint8 len)
{
	uint8 i, j;
	uint32 unit;
	uint32 data = 0;

	for(i = 0; i < len; i++)
	{
		for(j = 0, unit = 1; j < (len - i- 1); j++)
		{
			unit *= 10;
		}
		data += unit * (pchar[i] - 0x30);	
	}
	return data;
}


/**
 @bref	
 @param  uint8 ascii
 @return uint8 data
*/
uint16 asciiToKeycode(uint8 ascii)
{
	uint16 value = 0;

	/* 数字键盘的键值 */
	if(('0' <= ascii) && (ascii <= '9'))//0x30--0x39
	{
		if(ascii == '0')
		{
			value = 0x27;
		}
		else
		{
			value = ascii - '1' + 0x1E;
		}
	}
	else if(('A' <= ascii) && (ascii <= 'Z'))//0x41--0x5A
	{
		value |= (0x02 << 8);
		value |= ascii - 'A' + 0x04;
	}
	else if(('a' <= ascii) && (ascii <= 'z'))//0x61--0x7A
	{
		value = ascii - 'a' + 0x04;
	}
	else
	{
		switch(ascii)
		{
			case '!':
				value |= (0x02 << 8);
				value |= 0x1E;
			break;

			case '@':
				value |= (0x02 << 8);
				value |= 0x1F;
			break;

			case '#':
				value |= (0x02 << 8);
				value |= 0x20;
			break;

			case '$':
				value |= (0x02 << 8);
				value |= 0x21;
			break;

			case '%':
				value |= (0x02 << 8);
				value |= 0x22;
			break;

			case '^':
				value |= (0x02 << 8);
				value |= 0x23;
			break;

			case '&':
				value |= (0x02 << 8);
				value |= 0x24;
			break;

			case '*':
				value |= (0x02 << 8);
				value |= 0x25;
			break;

			case '(':
				value |= (0x02 << 8);
				value |= 0x26;
			break;

			case ')':
				value |= (0x02 << 8);
				value |= 0x27;
			break;

			case '-':
				value = 0x2D;
			break;

			case '_':
				value |= (0x02 << 8);
				value |= 0x2D;
			break;
			
			case '=':
				value = 0x2E;
			break;
			
			case '+':
				value |= (0x02 << 8);
				value |= 0x2E;
			break;

			case '[':
				value = 0x2F;
			break;

			case '{':
				value |= (0x02 << 8);
				value |= 0x2F;
			break;
			
			case ']':
				value = 0x30;
			break;
			
			case '}':
				value |= (0x02 << 8);
				value |= 0x30;
			break;
			
			case '\\':
				value = 0x31;
			break;

			case '|':
				value |= (0x02 << 8);
				value |= 0x31;
			break;

			case ';':
				value = 0x33;
			break;

			case ':':
				value |= (0x02 << 8);
				value |= 0x33;
			break;

			case '\'':
				value = 0x34;
			break;
			
			case '"':
				value |= (0x02 << 8);
				value |= 0x34;
			break;

			case '`':
				value = 0x35;
			break;
			
			case '~':
				value |= (0x02 << 8);
				value |= 0x35;
			break;			
			
			case ',':
				value = 0x36;
			break;
			
			case '<':
				value |= (0x02 << 8);
				value |= 0x36;
			break;
			
			case '.':
				value = 0x37;
			break;	
			
			case '>':
				value |= (0x02 << 8);
				value |= 0x37;
			break;
	
			case '/':
				value = 0x38;
			break;

			case '\?':
				value |= (0x02 << 8);
				value |= 0x38;
			break;
			
			case '\r':
				value = 0x28;
			break;
			
			case '\n':
				value = 0x00;
			break;
			
			default:
				value = 0x28;
			break;
		}
	}

	return value;
}

