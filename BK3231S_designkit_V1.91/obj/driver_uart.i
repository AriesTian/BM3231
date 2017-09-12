#line 1 "src\\Driver\\driver_uart.c"

#line 1 "src\\Driver\\Driver_uart.h"
#line 1 ".\\src\\include\\include.h"














typedef unsigned char  BYTE;
typedef signed   long  int32;      
typedef signed   short int16;      
typedef signed   char  int8;       
typedef unsigned long  uint32;     
typedef unsigned short uint16;     
typedef unsigned char  uint8;      
typedef float          fp32;       
typedef double         fp64;       

typedef void (*intr_callback)(void);





#line 1 ".\\src\\include\\BK3231S_reg.h"

#line 1 ".\\src\\include\\include.h"









#line 53 ".\\src\\include\\include.h"

#line 5 ".\\src\\include\\BK3231S_reg.h"




#line 41 ".\\src\\include\\BK3231S_reg.h"












#line 66 ".\\src\\include\\BK3231S_reg.h"



















#line 94 ".\\src\\include\\BK3231S_reg.h"

























#line 132 ".\\src\\include\\BK3231S_reg.h"

#line 147 ".\\src\\include\\BK3231S_reg.h"

#line 163 ".\\src\\include\\BK3231S_reg.h"
















#line 190 ".\\src\\include\\BK3231S_reg.h"















#line 217 ".\\src\\include\\BK3231S_reg.h"

#line 229 ".\\src\\include\\BK3231S_reg.h"




#line 245 ".\\src\\include\\BK3231S_reg.h"































#line 351 ".\\src\\include\\BK3231S_reg.h"











#line 378 ".\\src\\include\\BK3231S_reg.h"
 

#line 388 ".\\src\\include\\BK3231S_reg.h"

#line 398 ".\\src\\include\\BK3231S_reg.h"









#line 421 ".\\src\\include\\BK3231S_reg.h"

#line 434 ".\\src\\include\\BK3231S_reg.h"









#line 451 ".\\src\\include\\BK3231S_reg.h"

#line 468 ".\\src\\include\\BK3231S_reg.h"

#line 475 ".\\src\\include\\BK3231S_reg.h"



#line 486 ".\\src\\include\\BK3231S_reg.h"








#line 510 ".\\src\\include\\BK3231S_reg.h"

#line 519 ".\\src\\include\\BK3231S_reg.h"





























#line 558 ".\\src\\include\\BK3231S_reg.h"

#line 565 ".\\src\\include\\BK3231S_reg.h"


#line 574 ".\\src\\include\\BK3231S_reg.h"











#line 594 ".\\src\\include\\BK3231S_reg.h"

#line 602 ".\\src\\include\\BK3231S_reg.h"

#line 612 ".\\src\\include\\BK3231S_reg.h"

#line 622 ".\\src\\include\\BK3231S_reg.h"


















#line 660 ".\\src\\include\\BK3231S_reg.h"


#line 746 ".\\src\\include\\BK3231S_reg.h"










#line 32 ".\\src\\include\\include.h"
#line 1 ".\\src\\Core\\sys\\include\\sys_types.h"


























 




 

#line 1 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"
 






 

 
 
 





 





#line 34 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"




  typedef signed int ptrdiff_t;



  



    typedef unsigned int size_t;    
#line 57 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



   



      typedef unsigned short wchar_t;  
#line 82 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



    




   










#line 107 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



 

#line 35 ".\\src\\Core\\sys\\include\\sys_types.h"




 
#line 1 ".\\src\\hal\\prth_chimera\\sys\\include\\sys_hal_types.h"





















 




 

typedef unsigned char u_int8;          
typedef unsigned short u_int16;   
typedef unsigned int u_int32;          



 

typedef signed char s_int8;
typedef signed short s_int16;
typedef signed int s_int32;







 




typedef unsigned int  u_int;           

typedef unsigned long int u_intL;      

typedef struct s_u_int64
{
    u_int32 low ;       
    u_int32 high;       
} t_u_int64;

typedef void (*intr_callback)(void);




#line 41 ".\\src\\Core\\sys\\include\\sys_types.h"
#line 1 ".\\src\\Core\\sys\\include\\sys_const.h"























 



 






 



















































 



















 




 














 





 
extern const  u_int16 SYSconst_Packet_Length[32];
extern const  u_int16 SYSconst_HCI_Packet_Type[32];



 










 
#line 164 ".\\src\\Core\\sys\\include\\sys_const.h"

#line 172 ".\\src\\Core\\sys\\include\\sys_const.h"


 
#line 186 ".\\src\\Core\\sys\\include\\sys_const.h"


#line 194 ".\\src\\Core\\sys\\include\\sys_const.h"




 
#line 206 ".\\src\\Core\\sys\\include\\sys_const.h"
 


#line 42 ".\\src\\Core\\sys\\include\\sys_types.h"




#line 62 ".\\src\\Core\\sys\\include\\sys_types.h"

#line 1 ".\\src\\Core\\sys\\include\\sys_features.h"





















 











 



































 




































 































 


 
#line 155 ".\\src\\Core\\sys\\include\\sys_features.h"

 



 





 












 









#line 198 ".\\src\\Core\\sys\\include\\sys_features.h"






 
#line 213 ".\\src\\Core\\sys\\include\\sys_features.h"


















#line 237 ".\\src\\Core\\sys\\include\\sys_features.h"











#line 256 ".\\src\\Core\\sys\\include\\sys_features.h"






#line 269 ".\\src\\Core\\sys\\include\\sys_features.h"








#line 285 ".\\src\\Core\\sys\\include\\sys_features.h"







#line 300 ".\\src\\Core\\sys\\include\\sys_features.h"
































 
#line 349 ".\\src\\Core\\sys\\include\\sys_features.h"



 
#line 369 ".\\src\\Core\\sys\\include\\sys_features.h"



 
#line 389 ".\\src\\Core\\sys\\include\\sys_features.h"



 
#line 409 ".\\src\\Core\\sys\\include\\sys_features.h"



 
#line 429 ".\\src\\Core\\sys\\include\\sys_features.h"



 
#line 449 ".\\src\\Core\\sys\\include\\sys_features.h"



 
#line 463 ".\\src\\Core\\sys\\include\\sys_features.h"



 
#line 475 ".\\src\\Core\\sys\\include\\sys_features.h"




 


 
#line 491 ".\\src\\Core\\sys\\include\\sys_features.h"





#line 503 ".\\src\\Core\\sys\\include\\sys_features.h"





#line 516 ".\\src\\Core\\sys\\include\\sys_features.h"





























#line 551 ".\\src\\Core\\sys\\include\\sys_features.h"






#line 565 ".\\src\\Core\\sys\\include\\sys_features.h"






#line 579 ".\\src\\Core\\sys\\include\\sys_features.h"









 
#line 595 ".\\src\\Core\\sys\\include\\sys_features.h"










 
#line 622 ".\\src\\Core\\sys\\include\\sys_features.h"

#line 630 ".\\src\\Core\\sys\\include\\sys_features.h"







 
#line 652 ".\\src\\Core\\sys\\include\\sys_features.h"



 
#line 672 ".\\src\\Core\\sys\\include\\sys_features.h"



 








 
#line 699 ".\\src\\Core\\sys\\include\\sys_features.h"



 
#line 715 ".\\src\\Core\\sys\\include\\sys_features.h"



 
#line 735 ".\\src\\Core\\sys\\include\\sys_features.h"



 
#line 755 ".\\src\\Core\\sys\\include\\sys_features.h"


 
#line 770 ".\\src\\Core\\sys\\include\\sys_features.h"


 










#line 794 ".\\src\\Core\\sys\\include\\sys_features.h"



















 






 





 





























































 
#line 905 ".\\src\\Core\\sys\\include\\sys_features.h"



 








































 














 



#line 995 ".\\src\\Core\\sys\\include\\sys_features.h"







   





 
#line 1020 ".\\src\\Core\\sys\\include\\sys_features.h"

#line 1096 ".\\src\\Core\\sys\\include\\sys_features.h"













#line 1131 ".\\src\\Core\\sys\\include\\sys_features.h"














 
#line 1165 ".\\src\\Core\\sys\\include\\sys_features.h"



 















 









 












 














 
#line 1231 ".\\src\\Core\\sys\\include\\sys_features.h"



 









 





 



#line 1265 ".\\src\\Core\\sys\\include\\sys_features.h"

#line 1274 ".\\src\\Core\\sys\\include\\sys_features.h"







 



#line 1291 ".\\src\\Core\\sys\\include\\sys_features.h"




 
#line 1309 ".\\src\\Core\\sys\\include\\sys_features.h"


 











 
#line 1335 ".\\src\\Core\\sys\\include\\sys_features.h"



#line 1349 ".\\src\\Core\\sys\\include\\sys_features.h"































 
 








#line 64 ".\\src\\Core\\sys\\include\\sys_types.h"







typedef u_int8 boolean;



 
typedef t_u_int64 t_syncword;         
typedef u_int32   t_uap_lap;          

typedef enum
{
   TX_START     = 0,        
   TX_MID       = 1,        
   RX_START     = 2,        
   RX_MID       = 3,        
   NO_FRAME_POS = 5         
} t_frame_pos;              


typedef u_int8  t_freq;         
typedef u_int8  t_uap;          
typedef u_int32 t_lap;          
typedef u_int16 t_nap;          
typedef u_int32 t_clock;        
typedef u_int16 t_status;       
typedef u_int8  t_am_addr;      
typedef u_int8  t_lt_addr;      

typedef u_int8  t_deviceIndex;           
typedef u_int8  t_piconet_index;         
typedef u_int8* t_p_pdu;                 
typedef u_int16 t_connectionHandle;      



typedef u_int32 t_classDevice;           


typedef u_int8  t_sco_cfg;      
typedef u_int8  t_sco_fifo;     



 
typedef struct
{
   

 
   u_int8 bytes[6];
} t_bd_addr;
















#line 147 ".\\src\\Core\\sys\\include\\sys_types.h"


















#line 175 ".\\src\\Core\\sys\\include\\sys_types.h"

























typedef enum
{
    LCH_null        = 0,
    LCH_continue    = 1,
    LCH_start       = 2,
    LMP_msg         = 3
}  t_LCHmessage;

typedef enum
{
    MASTER          = 0,
    SLAVE           = 1
} t_role;


typedef u_int8  t_piconetIndex;   
typedef u_int16 t_length;         



 
typedef enum {
    LM_AIR_MODE_U_LAW,
    LM_AIR_MODE_A_LAW,
    LM_AIR_MODE_CVSD,
    LM_AIR_MODE_TRANSPARENT
} t_lm_air_mode;


typedef t_clock t_timer;          
typedef t_clock t_slots;          







 






typedef enum
{
    NULLpkt     =  0,    
    POLLpkt     =  1,    
    FHSpkt      =  2,    
    DM1         =  3,    
    DH1         =  4,    
    HV1         =  5,    
    HV2         =  6,    
    HV3         =  7,    
    DV          =  8,    
    AUX1        =  9,    
    DM3         = 10,    
    DH3         = 11,    
    EV4         = 12,    
    EV5         = 13,    
    DM5         = 14,    
    DH5         = 15,    
    IDpkt       = 16,    
    INVALIDpkt  = 17,    
    


    EDR_2DH1    = 20, 
    EDR_2EV3    = 22, 
	EV3         = 21,
	
 
 

 
    EDR_3EV3    = 23,
	EDR_3DH1    = 24, 
	EDR_AUX1    = 25, 
    EDR_2DH3    = 26, 
    EDR_3DH3    = 27, 
    EDR_2EV5    = 28, 
    EDR_3EV5    = 29, 
    EDR_2DH5    = 30, 
    EDR_3DH5    = 31  





} t_packet;       




 

#line 311 ".\\src\\Core\\sys\\include\\sys_types.h"








#line 330 ".\\src\\Core\\sys\\include\\sys_types.h"











































#line 379 ".\\src\\Core\\sys\\include\\sys_types.h"
 typedef unsigned long long int u_int64;  



typedef u_int32 t_packetTypes;    

typedef enum
{
    NAK=0, 
    ACK=1
} t_arqn;

typedef enum
{
   STOP=0, 
   GO=1
} t_flow;

typedef enum
{
    TX_READY                =  0,        
    RX_READY                =  1,        
    TX_OK                   =  2,        
    TX_NONE                 =  3,        
    RX_OK                   =  4,        
    RX_NONE                 =  5,        
    RX_DUPLICATE            =  6,        
    RX_NO_PACKET            =  7,        
    RX_RESTRICTED_PACKET    =  8,        
    RX_AMADDR_ERROR         =  9,        
    RX_HEC_ERROR            = 10,        
    RX_CRC_ERROR            = 11,        
    TX_2_IDS_IN_SLOT        = 12,        
    TX_UNEXPECTED_ERROR     = 13,        
    RX_UNEXPECTED_ERROR     = 14,        
    RX_BROADCAST_PACKET     = 15,        
    RX_BROADCAST_DUPLICATE  = 16,        
    RX_NORMAL_HEADER        = 17,        
    RX_BROADCAST_HEADER     = 18,        
    RX_MISSED_HEADER        = 19,         
    RX_NORMAL_HEADER_PRIMARY_LT_ADDR = 20,
    RX_NORMAL_HEADER_SECONDARY_LT_ADDR    = 21
} t_TXRXstatus;                          


typedef enum
{ 
     SCO_LINK=0x00,      
     ACL_LINK=0x01,       
     ESCO_LINK=0x02
} t_linkType;  


enum e_error_codes
{

    NO_ERROR = 0x00,                          

    ILLEGAL_COMMAND  = 0x01,                  
    NO_CONNECTION    = 0x02,                  
    HARDWARE_FAILURE = 0x03,                  
    PAGE_TIMEOUT     = 0x04,                  
    AUTHENTICATION_FAILURE = 0x05,            
    PIN_MISSING      = 0x06,                  
    MEMORY_FULL      = 0x07,                  
    CONNECTION_TIMEOUT = 0x08,                
    MAX_NUM_CONNECTIONS = 0x09,               
    MAX_NUM_SCO      = 0x0A,                  
    ACL_ALREADY_EXISTS = 0x0B,                
    COMMAND_DISALLOWED = 0x0C,                
    HOST_REJECT_LIMITED_RESOURCES = 0x0D,     
    HOST_REJECT_SECURITY = 0x0E,              
    HOST_REJECT_PERSONAL_DEVICE = 0x0F,       
    CONNECTION_ACCEPT_TIMEOUT = 0x10,         
    UNSUPPORTED_FEATURE  = 0x11,              
    INVALID_HCI_PARAMETERS = 0x12,            
    REMOTE_USER_TERMINATED_CONNECTION = 0x13,  
    REMOTE_RESOURCES_TERMINATED_CONNECTION = 0x14,  
    REMOTE_POWER_TERMINATED_CONNECTION = 0x15,      
    LOCAL_TERMINATED_CONNECTION = 0x16,       
    REPEATED_ATTEMPTS = 0x17,                 
    PAIRING_NOT_ALLOWED = 0x18,               
    UNKNOWN_LMP_PDU = 0x19,                   
    UNSUPPORTED_REMOTE_FEATURE = 0x1A,        
    SCO_OFFSET_REJECTED  = 0x1B,              
    SCO_INTERVAL_REJECTED = 0x1C,             
    SCO_AIR_MODE_REJECTED = 0x1D,             
    INVALID_LMP_PARAMETERS = 0x1E,            
    UNSPECIFIED_ERROR = 0x1F,                 
    UNSUPPORTED_PARAMETER_VALUE = 0x20,       
    ROLE_CHANGE_NOT_ALLOWED = 0x21,
    LMP_RESPONSE_TIMEOUT = 0x22,
    LMP_ERROR_TRANSACTION_COLLISION = 0x23,   
    LMP_PDU_NOT_ALLOWED = 0x24,
    ENCRYPTION_MODE_NOT_ACCEPTABLE = 0x25,
    UNIT_KEY_USED = 0x26,
    QOS_NOT_SUPPORTED = 0x27,
    INSTANT_PASSED = 0x28,
    PAIRING_WITH_UNIT_KEY_NOT_SUPPORTED = 0x29,

    

 
	EC_DIFFERENT_TRANSACTION_COLLISION = 0x2A,
	EC_INSUFFICIENT_RESOURCES_FOR_SCATTER_MODE_REQUEST = 0x2B,
	EC_QOS_UNACCEPTABLE_PARAMETER = 0x2C,
	EC_QOS_REJECTED = 0x2D,
    EC_CHANNEL_CLASSIFICATION_NOT_SUPPORTED = 0x2E,
    EC_INSUFFICIENT_SECURITY = 0X2F,
    EC_PARAMETER_OUT_OF_MANDATORY_RANGE = 0X30,
	EC_SCATTER_MODE_NO_LONGER_REQUIRED = 0x31,
	EC_ROLE_SWITCH_PENDING = 0x32,
	EC_SCATTER_MODE_PARAMETER_CHANGE_PENDING = 0x33,
    EC_RESERVED_SLOT_VIOLATION = 0X34,
    EC_ROLE_SWITCH_FAILED = 0x35,
	

 

	 EC_EXTENDED_INQUIRY_RESPONSE_TOO_LARGE = 0x36,
	 EC_SSP_NOT_SUPPORTED_BY_HOST = 0x37,
	 EC_HOST_BUSY_PAIRING = 0x38,

    


 
    PRTH_TEST_PASSED_DEVIATED,
    PRTH_TEST_FAILED,
	

    

 
    PRTH_TEST_IS_INCOMPLETE,
    PRTH_TEST_DUPLICATE,
    PRTH_TEST_REQUIRES_HARDWARE,
    PRTH_TEST_IS_OBSOLETE,
    PRTH_TEST_IS_AMBIGUOUS,
    PRTH_TEST_NOT_SUPPORTED,
    PRTH_TEST_NOT_DEFINED,
    PRTH_TEST_LMP_FEATURE_IS_SUPPORTED,
    PRTH_TEST_LMP_FEATURE_IS_NOT_SUPPORTED,
    PRTH_TEST_SYS_FEATURE_IS_SUPPORTED,
    PRTH_TEST_SYS_FEATURE_IS_NOT_SUPPORTED,
    PRTH_TEST_SKIPPED,
	PRTH_TEST_IP_DEVELOPMENT_FAILURE

};   




 
typedef enum e_error_codes t_error;








 
typedef enum
{ 
    ENCRYPT_NONE=0,                      
    ENCRYPT_POINT2POINT=1,               
    ENCRYPT_POINT2POINT_BROADCAST=2,     
    ENCRYPT_HARDWARE_ONLY_ALL=3,         
    ENCRYPT_MASTER_RX_ONLY=8+1,          
    ENCRYPT_MASTER_TX_ONLY=16+1          

} t_encrypt_mode;                        








typedef struct t_hci_event 
{
    t_bd_addr bd_addr;
    t_connectionHandle handle; 
    t_error status;
    t_linkType linkType;
    t_encrypt_mode encrypt_mode;   
    t_classDevice classDevice;
    t_error reason;
} t_hci_event;


typedef enum
{
    STANDARD_SCAN   = 0,
    INTERLACED_SCAN = 1,
    CONTINUOUS_SCAN = 2    
} t_scan_type;


typedef struct t_scanActivity
{
    u_int16     interval;  
    u_int16     window;    
    t_scan_type scan_type;  
}t_scanActivity;    


typedef enum
{
    R0          = 0, 
    R1          = 1, 
    R2          = 2
} t_pageScanRepit;  

typedef enum
{
   P0           = 0, 
   P1           = 1, 
   P2           = 2
} t_pageScanPeriod;  

typedef enum
{
    MANDATORY_PAGE_SCAN     = 0,         
    OPTIONAL_PAGE_SCAN_1    = 1,         
    OPTIONAL_PAGE_SCAN_2    = 2,         
    OPTIONAL_PAGE_SCAN_3    = 3          
} t_pageScanMode;                        

typedef enum t_scanEnable
{
    NO_SCANS_ENABLED            = 0x00,  
    INQUIRY_SCAN_ONLY_ENABLED   = 0x01,  
    PAGE_SCAN_ONLY_ENABLED      = 0x02,  
    BOTH_SCANS_ENABLED          = 0x03   
} t_scanEnable;                          



typedef struct t_pageParams
{  
    t_bd_addr       *p_bd_addr;          
    u_int16          packet_types;       
    t_pageScanRepit  srMode ;            
    t_pageScanMode   pageScanMode;       
    u_int8           allow_role_switch;  
    t_clock          clockOffset;        
} t_pageParams;                          


typedef struct t_inquiryResult
{
    t_bd_addr bd_addr;            
    t_pageScanRepit srMode;       
    t_pageScanPeriod spMode;      
    t_pageScanMode pageScanMode;  
    t_classDevice Cod;            
    u_int16 clkOffset;            
    s_int8 rssi;                  

    u_int8 extension_length;      

} t_inquiryResult;                



 
typedef enum
{
    SINGLE_FREQ         = 0,             
    EUROPE_USA_FREQ     = 1,             
    FRANCE_FREQ         = 3,             
    REDUCED_FREQ        = 5              
} t_rfSelection;         










 

typedef struct {
  u_int16 HCI_revision;
  u_int16 comp_id;
  u_int16 lmp_subversion;
  u_int8  lmp_version;
  u_int8  HCI_version;
} t_versionInfo;



typedef struct t_bufferSize {
        u_int16  aclDataPacketLength;
        u_int8   scoDataPacketLength;
        u_int16  numAclDataPackets;
        u_int16  numScoDataPackets;
        } t_bufferSize;


typedef struct
{
    u_int8  length;   
    u_int8* p_utf_char;  
} t_string;           




 
#line 703 ".\\src\\Core\\sys\\include\\sys_types.h"

typedef u_int8 t_encrypt_enable;
typedef u_int8 t_pin_code[16]; 
typedef u_int8 t_link_key[16];
typedef u_int8 t_rand[16];
typedef u_int8 t_byte_bd_addr[6];
typedef u_int8 t_sres[4];
typedef u_int8 t_aco[12];
typedef u_int8 t_cof[12];


 







  
typedef t_deviceIndex t_parkDeviceIndex;  

typedef enum
{
    UNPARK_NONE,
    UNPARK_SLAVE_INIT,
    UNPARK_MASTER_INIT
} t_unpark_type;

typedef u_int8 t_ar_addr;

typedef u_int8 t_pm_addr;

typedef struct t_parkModeInfo
{
    t_slots d_access,
            t_access,
            m_access,
            n_b,
            delta_b,
            n_acc_slot, 
            n_poll;

    t_ar_addr ar_addr;
} t_parkModeInfo;


typedef void (*t_SYS_Fn_Ptr)(void);



 








#line 33 ".\\src\\include\\include.h"
#line 1 ".\\src\\include\\config.h"
#line 1 ".\\src\\Core\\sys\\include\\sys_config.h"

































 



 
#line 40 ".\\src\\Core\\sys\\include\\sys_config.h"



 
#line 45 ".\\src\\Core\\sys\\include\\sys_config.h"

#line 1 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\assert.h"
 
 
 
 





 









 





 

#line 43 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\assert.h"
    extern __declspec(__nothrow) __declspec(__noreturn) void abort(void);
    extern __declspec(__nothrow) __declspec(__noreturn) void __aeabi_assert(const char *, const char *, int) __attribute__((__nonnull__(1,2)));
#line 53 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\assert.h"

#line 77 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\assert.h"





 

#line 47 ".\\src\\Core\\sys\\include\\sys_config.h"




 





 
#line 59 ".\\src\\Core\\sys\\include\\sys_config.h"




 
#line 1 ".\\src\\hal\\prth_chimera\\sys\\include\\sys_hal_features.h"




















 
 



 



 

#line 51 ".\\src\\hal\\prth_chimera\\sys\\include\\sys_hal_features.h"























 





#line 95 ".\\src\\hal\\prth_chimera\\sys\\include\\sys_hal_features.h"










 





 




 
 


 

#line 131 ".\\src\\hal\\prth_chimera\\sys\\include\\sys_hal_features.h"





#line 65 ".\\src\\Core\\sys\\include\\sys_config.h"

#line 1 ".\\src\\Core\\sys\\include\\sys_debug.h"






















 



 



 
#line 38 ".\\src\\Core\\sys\\include\\sys_debug.h"



 




 




#line 58 ".\\src\\Core\\sys\\include\\sys_debug.h"



 



#line 76 ".\\src\\Core\\sys\\include\\sys_debug.h"





 














 







 









 










 






 






 













 









#line 67 ".\\src\\Core\\sys\\include\\sys_config.h"



 



 
#line 1 ".\\src\\hal\\prth_chimera\\sys\\include\\sys_hal_config.h"



















 

void SYShalconfig_Initialise_EEPROM(void);

void SYShalconfig_BD_ADDR_Was_Set(void);
void SYShalconfig_Get_Stored_BD_ADDR(void);

void SYShalconfig_Device_Class_Was_Set(void);
void SYShalconfig_Get_Stored_Device_Class(void);

void SYShalconfig_Unit_Key_Was_Set(void);
void SYShalconfig_Get_Stored_Unit_Key(void);

void SYShalconfig_Set_System_Hardware_Configuration(u_int32 info);



#line 146 ".\\src\\hal\\prth_chimera\\sys\\include\\sys_hal_config.h"



void EEPROM_Soft_Reset(void);
void EEPROM_Initialise_Clock(void);
void EEPROM_Initialise_Rx_Fifo(void);
void EEPROM_Self_Check(void);
void EEPROM_Write_Byte(u_int8 addr_block, u_int16 address, u_int8 byte);
u_int8 EEPROM_Read_Byte(u_int8 addr_block, u_int16 address);
void EEPROM_Wait_For_10us(void);



 


    


 















#line 187 ".\\src\\hal\\prth_chimera\\sys\\include\\sys_hal_config.h"

#line 229 ".\\src\\hal\\prth_chimera\\sys\\include\\sys_hal_config.h"
     


 











 
#line 258 ".\\src\\hal\\prth_chimera\\sys\\include\\sys_hal_config.h"











#line 339 ".\\src\\hal\\prth_chimera\\sys\\include\\sys_hal_config.h"









 















#line 76 ".\\src\\Core\\sys\\include\\sys_config.h"








 
















 







 





 
#line 1 ".\\src\\Core\\sys\\include\\sys_develop.h"
































 










 














 









 









 










 














 













#line 128 ".\\src\\Core\\sys\\include\\sys_develop.h"















 













 













 




 











 











 














 
















 











 











 












 












 














 

    







 















 


















 
















 













 



















 










 













 
#line 425 ".\\src\\Core\\sys\\include\\sys_develop.h"











 














 
















 
















 
















 
#line 509 ".\\src\\Core\\sys\\include\\sys_develop.h"











 












 















 









 



 













 













 












 










 










 











 











 






#line 117 ".\\src\\Core\\sys\\include\\sys_config.h"







 

typedef struct
{
    t_bd_addr local_device_address;
    t_syncword local_device_syncword;



 
    u_int32 data_whitening_enable;
    u_int32 hopping_mode;
    u_int32 tx_freq;
    u_int32 rx_freq;
    u_int32 win_ext;

    u_int8  feature_set[16];
	
	u_int8 hci_command_set[64];			 
    t_versionInfo version_info;          
    t_bufferSize  hc_buffer_size;        



    t_classDevice device_class;          
    u_int8  clock_jitter_us;             
    u_int8  clock_drift_ppm;             
    u_int16  max_active_devices;
    u_int16  max_active_devices_in_piconet;
    void* device_links_location;   
    void* parked_device_links_location;
    u_int16 local_device_index;
    u_int32 rand_seed;                   

    u_int8  unit_key[16];                

	u_int8  erroneous_data_reporting;    
} t_SYS_Config;


void SYSconfig_Initialise(void);
void Bk3000_Initialize(void);

__inline t_syncword        SYSconfig_Get_Local_Syncword(void);
__inline const t_syncword* SYSconfig_Get_Local_Syncword_Ref(void);
__inline void SYSconfig_Get_Local_Syncword_Ex(t_syncword* p_syncword);

__inline void SYSconfig_Set_Local_Syncword(t_syncword syncword);

__inline t_bd_addr SYSconfig_Get_Local_BD_Addr(void);
__inline const t_bd_addr *SYSconfig_Get_Local_BD_Addr_Ref(void);
__inline void SYSconfig_Get_Local_BD_Addr_Ex(t_bd_addr *addr);
__inline void SYSconfig_Get_Local_BD_Addr_U32(u_int32* addr);

__inline void SYSconfig_Set_Local_BD_Addr(t_bd_addr bd_addr);

__inline u_int8* SYSconfig_Get_HC_Commands_Ref(void);

__inline u_int8* SYSconfig_Get_LMP_Features_Ref(void);
__inline void    SYSconfig_Set_LMP_Features(const u_int8 lmp_features_array[]);

__inline u_int8* SYSconfig_Get_LMP_Extended_Features_Ref(u_int8 page);

__inline boolean SYSconfig_Is_Feature_Supported(u_int32 feature);
__inline boolean SYSconfig_Is_Command_Supported(u_int32 command);
__inline void    SYSconfig_Disable_Feature(u_int32 feature);
__inline void    SYSconfig_Enable_Feature(u_int32 feature);

__inline u_int8* SYSconfig_Get_Ext_Features_Ref(void);
__inline void    SYSconfig_Set_Ext_Features(const u_int8 ext_features_array[]);

__inline const t_versionInfo* SYSconfig_Get_Version_Info_Ref(void);
__inline const t_bufferSize* SYSconfig_Get_HC_Buffer_Size_Ref(void);

__inline t_classDevice SYSconfig_Get_Device_Class(void);
__inline void SYSconfig_Set_Device_Class(t_classDevice device_class);

__inline u_int32 SYSconfig_Get_Data_Whitening_Enable(void);
__inline void SYSconfig_Set_Data_Whitening_Enable(boolean dwh_enable);

__inline u_int32 SYSconfig_Get_Hopping_Mode(void);
__inline u_int32 SYSconfig_Get_Tx_Freq(void);
__inline u_int32 SYSconfig_Get_Rx_Freq(void);
__inline void    SYSconfig_Set_Hopping_Mode(t_rfSelection hopping_mode,
               t_freq txMasterFixedFreq, t_freq rxMasterFixedFreq );
__inline u_int32 SYSconfig_Get_Win_Ext(void);

__inline u_int8 SYSconfig_Get_Clock_Jitter(void);
__inline void   SYSconfig_Set_Clock_Jitter(u_int8 jitter);
__inline u_int8 SYSconfig_Get_Clock_Drift(void);
__inline void   SYSconfig_Set_Clock_Drift(u_int8 drift);

__inline u_int16 SYSconfig_Get_Local_Device_Index(void);
__inline void SYSconfig_Set_Local_Device_Index(u_int16 local_device_index);

__inline u_int16 SYSconfig_Get_Max_Active_Devices_In_Piconet(void);
__inline void SYSconfig_Set_Max_Active_Devices_In_Piconet(u_int16 max_active_devices_in_piconet);

__inline u_int16 SYSconfig_Get_Max_Active_Devices(void);
__inline void SYSconfig_Set_Max_Active_Devices(u_int16 max_active_devices);

__inline void* SYSconfig_Get_Device_Links_Location(void);
__inline void SYSconfig_Set_Device_Links_Location(void* pDL);

__inline void SYSconfig_Set_Unit_Key(u_int8* new_unit_key);
__inline u_int8* SYSconfig_Get_Unit_Key_Ref(void);

__inline u_int32 SYSconfig_Get_SYS_Rand_Seed(void);

__inline u_int8 SYSconfig_Get_Erroneous_Data_Reporting(void);
__inline void SYSconfig_Set_Erroneous_Data_Reporting(u_int8);

#line 1 ".\\src\\Core\\sys\\include\\sys_config_impl.h"





















 
#line 1 ".\\src\\Core\\sys\\include\\sys_config.h"
#line 259 ".\\src\\Core\\sys\\include\\sys_config.h"



#line 24 ".\\src\\Core\\sys\\include\\sys_config_impl.h"
#line 1 ".\\src\\Core\\hc\\include\\hci_params.h"


















 

__inline u_int16 HCIparam_Get_Uint16(t_p_pdu);
__inline u_int32 HCIparam_Get_Uint24(t_p_pdu);
__inline u_int16 HCIparam_Get_HCI_Opcode(t_p_pdu);
__inline u_int32 HCIparam_Get_Uint32(t_p_pdu p_pdu);
__inline void HCIparam_Get_Bd_Addr(t_p_pdu, t_bd_addr*);
__inline t_lap HCIparam_Get_Lap(t_p_pdu);
__inline t_connectionHandle HCIparam_Get_Connection_Handle(t_p_pdu);
__inline u_int16 HCIparam_Get_Packet_Types(t_p_pdu);
__inline t_error HCIparam_Get_Reason(t_p_pdu);
__inline t_role HCIparam_Get_Role(t_p_pdu);
__inline u_int8 HCIparam_Get_Length(t_p_pdu);
__inline u_int8 HCIparam_Get_Num_Responses(t_p_pdu);
__inline u_int8 HCIparam_Get_Inquiry_Length(t_p_pdu);
__inline t_pageScanRepit HCIparam_Get_SrMode(t_p_pdu);
__inline t_pageScanPeriod HCIparam_Get_SpMode(t_p_pdu);
__inline t_slots HCIparam_Get_Timer(t_p_pdu pdu_ptr);
__inline t_scanEnable HCIparam_Get_Scan_Enable(t_p_pdu);
__inline t_scanActivity* HCIparam_Get_Scan_Activity(t_p_pdu, t_scanActivity*);

__inline u_int8 HCIparam_Get_Allow_Role_Switch(t_p_pdu);
__inline t_scan_type HCIparam_Get_Scan_Type(t_p_pdu p_pdu);

#line 1 ".\\src\\Core\\hc\\include\\hci_params_impl.h"



















 
#line 1 ".\\src\\Core\\hc\\include\\hc_const.h"




















 



 
#line 32 ".\\src\\Core\\hc\\include\\hc_const.h"











 


#line 60 ".\\src\\Core\\hc\\include\\hc_const.h"

#line 72 ".\\src\\Core\\hc\\include\\hc_const.h"

#line 84 ".\\src\\Core\\hc\\include\\hc_const.h"

#line 94 ".\\src\\Core\\hc\\include\\hc_const.h"




 



#line 116 ".\\src\\Core\\hc\\include\\hc_const.h"


#line 124 ".\\src\\Core\\hc\\include\\hc_const.h"







 



#line 153 ".\\src\\Core\\hc\\include\\hc_const.h"

#line 187 ".\\src\\Core\\hc\\include\\hc_const.h"



#line 212 ".\\src\\Core\\hc\\include\\hc_const.h"







 



#line 230 ".\\src\\Core\\hc\\include\\hc_const.h"






 



#line 246 ".\\src\\Core\\hc\\include\\hc_const.h"

#line 264 ".\\src\\Core\\hc\\include\\hc_const.h"








 











 








 

#line 328 ".\\src\\Core\\hc\\include\\hc_const.h"



 
#line 345 ".\\src\\Core\\hc\\include\\hc_const.h"

#line 352 ".\\src\\Core\\hc\\include\\hc_const.h"











#line 375 ".\\src\\Core\\hc\\include\\hc_const.h"


 























  




 

#line 442 ".\\src\\Core\\hc\\include\\hc_const.h"




 







#line 22 ".\\src\\Core\\hc\\include\\hci_params_impl.h"
#line 1 ".\\src\\Core\\hc\\include\\hci_params.h"
#line 23 ".\\src\\Core\\hc\\include\\hci_params_impl.h"

#line 46 ".\\src\\Core\\hc\\include\\hci_params_impl.h"








 
__inline u_int16 HCIparam_Get_Uint16(t_p_pdu p_pdu)
{
    return ((u_int16)p_pdu[0] + ((u_int16) p_pdu[1] << 8));
}







 

__inline t_lap HCIparam_Get_Lap(t_p_pdu p_pdu)
{
    return  (t_lap) (*p_pdu) + ( (t_lap) (*(p_pdu+1) ) << 8) + 
           ((t_lap) (*(p_pdu+2)) <<16 );
}







 

__inline void HCIparam_Get_Bd_Addr(t_p_pdu p_pdu, t_bd_addr* p_bd_addr)
{
    { u_int8 *p_bda = (p_bd_addr)->bytes; const u_int8 *p_byte = (p_pdu); *p_bda++ = *p_byte ++; *p_bda++ = *p_byte ++; *p_bda++ = *p_byte ++; *p_bda++ = *p_byte ++; *p_bda++ = *p_byte ++; *p_bda = *p_byte; };
}








 

__inline u_int16 HCIparam_Get_Packet_Types(t_p_pdu p_pdu)
{
   return HCIparam_Get_Uint16(p_pdu);
}




 

__inline u_int32 HCIparam_Get_Uint24(t_p_pdu p_pdu)
{
    return ( (u_int32)(*p_pdu) + ((u_int32)(*(p_pdu+1)) << 8) 
           + ((u_int32)(*(p_pdu+2)) <<16 ));
}





 

__inline u_int32 HCIparam_Get_Uint32(t_p_pdu p_pdu)
{
    return ( (u_int32)(*p_pdu) + ((u_int32)(*(p_pdu+1)) << 8) + 
           ( (u_int32)(*(p_pdu+2)) <<16 ) + ((u_int32)(*(p_pdu+3)) <<24 ));
}







 

__inline t_error HCIparam_Get_Reason(t_p_pdu pdu_ptr)
{
   return (t_error)*pdu_ptr;
}







 

__inline u_int8 HCIparam_Get_Length(t_p_pdu pdu_ptr)
{
   return *pdu_ptr;
}







 

__inline u_int8 HCIparam_Get_Inquiry_Length(t_p_pdu p_pdu)
{
   return (u_int8)*p_pdu;
}








 

__inline u_int8 HCIparam_Get_Num_Responses(t_p_pdu p_pdu)
{
   return (u_int8)*p_pdu;
}








 

__inline t_connectionHandle HCIparam_Get_Connection_Handle(t_p_pdu p_pdu)
{
    return (t_connectionHandle)HCIparam_Get_Uint16(p_pdu);
}







 

__inline t_role HCIparam_Get_Role(t_p_pdu p_pdu)
{
   return (t_role)*p_pdu;
}







 

__inline t_pageScanRepit HCIparam_Get_SrMode(t_p_pdu p_pdu)
{
    return (t_pageScanRepit)*p_pdu;
}







 

__inline t_pageScanPeriod HCIparam_Get_SpMode(t_p_pdu p_pdu)
{
    return (t_pageScanPeriod)*p_pdu;
}







 

__inline t_scanEnable HCIparam_Get_Scan_Enable(t_p_pdu p_pdu)
{
    return (t_scanEnable)*p_pdu;
}







 
__inline t_slots HCIparam_Get_Timer(t_p_pdu p_pdu)
{
   return HCIparam_Get_Uint16(p_pdu);
}







 

__inline t_scanActivity* HCIparam_Get_Scan_Activity(t_p_pdu p_pdu, 
    t_scanActivity*  scanAct)
{
   

 
   
   scanAct->interval = HCIparam_Get_Uint16(p_pdu);
   scanAct->window = HCIparam_Get_Uint16(p_pdu+2);
   return scanAct;
}







 

__inline u_int16 HCIparam_Get_HCI_Opcode(t_p_pdu p_pdu)
{
   return HCIparam_Get_Uint16(p_pdu);
}








 
__inline u_int8 HCIparam_Get_Allow_Role_Switch(t_p_pdu p_pdu)
{
    return (*p_pdu);
}







 

__inline t_scan_type HCIparam_Get_Scan_Type(t_p_pdu p_pdu)
{
    return (t_scan_type)*p_pdu;
}

#line 45 ".\\src\\Core\\hc\\include\\hci_params.h"


#line 25 ".\\src\\Core\\sys\\include\\sys_config_impl.h"

#line 71 ".\\src\\Core\\sys\\include\\sys_config_impl.h"


__inline t_bd_addr SYSconfig_Get_Local_BD_Addr(void)
{
    extern t_SYS_Config g_sys_config;
    return g_sys_config.local_device_address;
}

__inline void SYSconfig_Get_Local_BD_Addr_Ex(t_bd_addr* addr)
{
    extern t_SYS_Config g_sys_config;
    *addr = g_sys_config.local_device_address;
}

__inline const t_bd_addr *SYSconfig_Get_Local_BD_Addr_Ref(void)
{
    extern t_SYS_Config g_sys_config;
    return &(g_sys_config.local_device_address);
}

__inline void SYSconfig_Get_Local_BD_Addr_U32(u_int32* addr)
{
    extern t_SYS_Config g_sys_config;
    { addr[0] = ( (t_uap_lap) ( (t_uap) (&g_sys_config . local_device_address)->bytes[3] )<<24 | (t_uap_lap) ( ((t_lap) (&g_sys_config . local_device_address)->bytes[2] << 16) + ( (t_lap) (&g_sys_config . local_device_address)->bytes[1] << 8) + (&g_sys_config . local_device_address)->bytes[0] ) ); addr[1] = ( (t_nap) (((t_nap) (&g_sys_config . local_device_address)->bytes[5] << 8) + (&g_sys_config . local_device_address)->bytes[4])); };
}

__inline void SYSconfig_Set_Local_BD_Addr(t_bd_addr bd_addr)
{
    extern t_SYS_Config g_sys_config;
    int i;

    for(i = 0; i < 6; i++)
    {
        g_sys_config.local_device_address.bytes[i] = bd_addr.bytes[i];
    }
    SYShalconfig_BD_ADDR_Was_Set();
}

__inline t_syncword SYSconfig_Get_Local_Syncword(void)
{
    extern t_SYS_Config g_sys_config;
    return g_sys_config.local_device_syncword;
}

__inline void SYSconfig_Get_Local_Syncword_Ex(t_syncword* p_syncword)
{
    extern t_SYS_Config g_sys_config;
    *p_syncword = g_sys_config.local_device_syncword;
}

__inline const t_syncword *SYSconfig_Get_Local_Syncword_Ref(void)
{
    extern t_SYS_Config g_sys_config;
    return &(g_sys_config.local_device_syncword);
}

__inline void SYSconfig_Set_Local_Syncword(t_syncword syncword)
{
    extern t_SYS_Config g_sys_config;
    g_sys_config.local_device_syncword = syncword;
}






 
__inline u_int8* SYSconfig_Get_HC_Commands_Ref(void)
{
    extern t_SYS_Config g_sys_config;
    return g_sys_config.hci_command_set;
}







 
__inline u_int8* SYSconfig_Get_LMP_Features_Ref(void)
{
    extern t_SYS_Config g_sys_config;
    return g_sys_config.feature_set;
}





 
__inline void SYSconfig_Set_LMP_Features(const u_int8 lmp_features_array[8])
{
    extern t_SYS_Config g_sys_config;
    u_int8 *p_lmp_features = g_sys_config.feature_set;
    while (p_lmp_features < g_sys_config.feature_set+8 )
    {
        *p_lmp_features++ = *lmp_features_array++;
    }
}






 
__inline u_int8* SYSconfig_Get_LMP_Extended_Features_Ref(u_int8 page)
{
    extern t_SYS_Config g_sys_config;
    return &(g_sys_config.feature_set[page<<3]);
}









 
__inline boolean SYSconfig_Is_Feature_Supported(u_int32 lmp_feature_id)
{
    extern t_SYS_Config g_sys_config;
    return g_sys_config.feature_set[lmp_feature_id>>8] & (lmp_feature_id);
}








 
__inline boolean SYSconfig_Is_Command_Supported(u_int32 hci_command_id)
{
    extern t_SYS_Config g_sys_config;
    return g_sys_config.hci_command_set[hci_command_id>>8] & (hci_command_id);  
}








 
__inline void SYSconfig_Enable_Feature(u_int32 lmp_feature_id)
{
    extern t_SYS_Config g_sys_config;
    g_sys_config.feature_set[lmp_feature_id>>8] |= (u_int8) (lmp_feature_id) ;
}








 
__inline void SYSconfig_Disable_Feature(u_int32 lmp_feature_id)
{
    extern t_SYS_Config g_sys_config;
    g_sys_config.feature_set[lmp_feature_id>>8] &= (u_int8) (~lmp_feature_id) ;
}





 
__inline u_int8* SYSconfig_Get_Ext_Features_Ref(void)
{
    extern t_SYS_Config g_sys_config;
    return g_sys_config.feature_set+8;
}





 
__inline void SYSconfig_Set_Ext_Features(const u_int8 ext_features_array[8])
{
    extern t_SYS_Config g_sys_config;
    u_int8 *p_ext_features = g_sys_config.feature_set+8;
    while (p_ext_features < g_sys_config.feature_set + 
        sizeof(g_sys_config.feature_set))
    {
        *p_ext_features++ = *ext_features_array++;
    }
}





 
__inline const t_versionInfo* SYSconfig_Get_Version_Info_Ref(void)
{
    extern t_SYS_Config g_sys_config;
    return &g_sys_config.version_info;
}





 
__inline const t_bufferSize* SYSconfig_Get_HC_Buffer_Size_Ref(void)
{
    extern t_SYS_Config g_sys_config;
    return &g_sys_config.hc_buffer_size;
}





 
__inline t_classDevice SYSconfig_Get_Device_Class(void)
{
    extern t_SYS_Config g_sys_config;
    return g_sys_config.device_class;
}





 
__inline void SYSconfig_Set_Device_Class(t_classDevice device_class)
{
    extern t_SYS_Config g_sys_config;
    g_sys_config.device_class = device_class;
    SYShalconfig_Device_Class_Was_Set();
}





 
__inline u_int8 SYSconfig_Get_Clock_Jitter(void)
{
    extern t_SYS_Config g_sys_config;
    return g_sys_config.clock_jitter_us;
}





 
__inline void SYSconfig_Set_Clock_Jitter(u_int8 jitter)
{
    extern t_SYS_Config g_sys_config;
    g_sys_config.clock_jitter_us = jitter;
}





 
__inline u_int8 SYSconfig_Get_Clock_Drift(void)
{
    extern t_SYS_Config g_sys_config;
    return g_sys_config.clock_drift_ppm;
}





 
__inline void SYSconfig_Set_Clock_Drift(u_int8 drift)
{
    extern t_SYS_Config g_sys_config;
    g_sys_config.clock_drift_ppm = drift;
}

__inline u_int32 SYSconfig_Get_Data_Whitening_Enable(void)
{
    extern t_SYS_Config g_sys_config;
    return g_sys_config.data_whitening_enable;
}

__inline void SYSconfig_Set_Data_Whitening_Enable(boolean dwh_enable)
{
    extern t_SYS_Config g_sys_config;
    g_sys_config.data_whitening_enable = dwh_enable;
}

__inline u_int32 SYSconfig_Get_Hopping_Mode(void)
{
    extern t_SYS_Config g_sys_config;
    return g_sys_config.hopping_mode;
}

__inline u_int32 SYSconfig_Get_Tx_Freq(void)
{
    extern t_SYS_Config g_sys_config;
    return g_sys_config.tx_freq;
}

__inline u_int32 SYSconfig_Get_Rx_Freq(void)
{
    extern t_SYS_Config g_sys_config;
    return g_sys_config.rx_freq;
}

__inline void    SYSconfig_Set_Hopping_Mode(t_rfSelection hopping_mode,
               t_freq txMasterFixedFreq, t_freq rxMasterFixedFreq)
{
    extern t_SYS_Config g_sys_config;
    g_sys_config.hopping_mode = hopping_mode;
    g_sys_config.tx_freq = txMasterFixedFreq;
    g_sys_config.rx_freq = rxMasterFixedFreq;
}

__inline u_int32 SYSconfig_Get_Win_Ext(void)
{
    extern t_SYS_Config g_sys_config;
    return g_sys_config.win_ext;
}





 
__inline u_int16 SYSconfig_Get_Local_Device_Index(void)
{
    extern t_SYS_Config g_sys_config;
    return g_sys_config.local_device_index;
}





 
__inline void SYSconfig_Set_Local_Device_Index(u_int16 local_device_index)
{
    extern t_SYS_Config g_sys_config;
    g_sys_config.local_device_index = local_device_index;
}






 
__inline u_int16 SYSconfig_Get_Max_Active_Devices(void)
{
    extern t_SYS_Config g_sys_config;
    return g_sys_config.max_active_devices;
}





 
__inline void SYSconfig_Set_Max_Active_Devices(u_int16 max_active_devices)
{
    extern t_SYS_Config g_sys_config;
    g_sys_config.max_active_devices = max_active_devices;
}





 
__inline u_int16 SYSconfig_Get_Max_Active_Devices_In_Piconet(void)
{
    extern t_SYS_Config g_sys_config;
    return g_sys_config.max_active_devices_in_piconet;
}





 
__inline void SYSconfig_Set_Max_Active_Devices_In_Piconet(u_int16 max_active_devices_in_piconet)
{
    extern t_SYS_Config g_sys_config;
    g_sys_config.max_active_devices_in_piconet = max_active_devices_in_piconet;
}






 
__inline void* SYSconfig_Get_Device_Links_Location(void)
{
    extern t_SYS_Config g_sys_config;
    return g_sys_config.device_links_location;
}






 
__inline void SYSconfig_Set_Device_Links_Location(void* pDL)
{
    extern t_SYS_Config g_sys_config;
    g_sys_config.device_links_location = pDL;
}






 
__inline u_int32 SYSconfig_Get_SYS_Rand_Seed(void)
{
    extern t_SYS_Config g_sys_config;
    return g_sys_config.rand_seed;
}






 
__inline void SYSconfig_Set_Unit_Key(u_int8* new_key)
{
    u_int8 i;
    extern t_SYS_Config g_sys_config;
    for(i = 0; i < 16; i++)
        g_sys_config.unit_key[i] = new_key[i];
    SYShalconfig_Unit_Key_Was_Set();
}





 
__inline u_int8* SYSconfig_Get_Unit_Key_Ref(void)
{
    extern t_SYS_Config g_sys_config;
    return g_sys_config.unit_key;
}



__inline u_int8 SYSconfig_Get_Erroneous_Data_Reporting(void)
{
    extern t_SYS_Config g_sys_config;
    return g_sys_config.erroneous_data_reporting;
}

__inline void SYSconfig_Set_Erroneous_Data_Reporting(u_int8 erroneous_dr)
{
    extern t_SYS_Config g_sys_config;
    g_sys_config.erroneous_data_reporting = erroneous_dr;

}


#line 238 ".\\src\\Core\\sys\\include\\sys_config.h"


#line 255 ".\\src\\Core\\sys\\include\\sys_config.h"







#line 4 ".\\src\\include\\config.h"
#line 5 ".\\src\\include\\config.h"



typedef struct _struct_beken_config
{
	uint32  g_lm_config_sleep_in_standby_monitor_period;
	uint32  g_lm_config_awake_in_standby_monitor_period;
	uint32 g_lm_config_awake_keep_when_UART_Wakeup_period;
	uint8 g_enable_32k_sleep;
	uint8 g_enable_host_wakeup;
	uint8 g_disable_CPU_Halt_sleep;
	uint8 g_disable_Analog_Powerdown;
	uint8 g_Disable_ACL_active_check_when_Sleep;
	uint8 g_Disable_Sniffer_when_other_link_active;
	uint8 g_Disable_ACL_Accept_When_ACL_exist;
	uint8 g_Enable_TX_Power_Control;
	uint8 g_Disable_Inquiry_When_ACL_exist;
	uint8 g_max_acl_buff_number;
	uint8 g_write_addr_for_rda_enable;
	uint8 g_TCI_PATCH_102_BYTE_Number;
	uint8 g_TCI_PATCH_102_BYTE_Value;
	uint8 g_enable_ViMicro_encryption_issue;
	uint8 Disable_Hardware_Error_Log;
	uint8 Delay_Ptt_Set;
	uint8 g_in_chip_host;
	uint8 g_enable_CPU_speed_for_ecc;
}struct_beken_config;


extern struct_beken_config g_beken_initial_config;
void Initial_config(void);










#line 34 ".\\src\\include\\include.h"
#line 1 ".\\src\\Driver\\driver_uart.h"
#line 52 ".\\src\\Driver\\driver_uart.h"

#line 35 ".\\src\\include\\include.h"
#line 1 ".\\src\\Driver\\driver_icu.h"






void ICU_Initial(void);
uint8 system_reset_reson(void);
void Enable_ICU_Intr(void);
void  Close_Baseband_Clock(void);
void Open_Baseband_Clock(void);
void Set_CPU_Speed_16M(void);
void Set_CPU_Speed_96M(void);
void BK_IDLE_wakeup_recovery(void);
void set_CPU_idle(void);
extern void Set_CPU_PLL_clk(uint8 clk_div);




#line 36 ".\\src\\include\\include.h"
#line 1 ".\\src\\Driver\\driver_gpio.h"
#line 4 ".\\src\\Driver\\driver_gpio.h"


void GPIO_Initial(void);
void gpio1_output_for_debug(uint8 output_data);
void GPIO_config( uint8 port, uint8 gpio, uint8 index ) ;
void GPIO_output( uint8 port, uint8 gpio, uint8 val ) ;
uint32 gpio_input( uint8 port, uint8 gpio );
void deep_sleep_wakeup(void);




#line 37 ".\\src\\include\\include.h"
#line 1 ".\\src\\Driver\\driver_xvr.h"




extern volatile uint32 XVR_ANALOG_REG_BAK[16];

void xver_initial(void);




#line 38 ".\\src\\include\\include.h"
#line 1 ".\\src\\Driver\\driver_timer.h"

















extern volatile uint8 bk_timer_hit;

void Timer_Initial(void);
void Timer_ISR(void);
void Timer_Stop(uint8 index);
void Timer_Updata(uint8 index,uint32 time, intr_callback func);
void Timer_Start(uint8 index,uint32 time);
void Timer_Serve_Table( void );





#line 39 ".\\src\\include\\include.h"
#line 1 ".\\src\\Driver\\driver_WDT.h"










void Driver_wdt_enable(uint16 wdt_cnt);
void Driver_wdt_feed_dog(uint16 wdt_cnt);
void Driver_wdt_disable(void);



#line 40 ".\\src\\include\\include.h"
#line 1 ".\\src\\Driver\\driver_flash.h"

#line 5 ".\\src\\Driver\\driver_flash.h"




#line 21 ".\\src\\Driver\\driver_flash.h"







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
void flash_erase_sector(uint32 address);
uint8 flash_read_qe(void);


uint8 read_lmecc_pointq_status(void);






#line 41 ".\\src\\include\\include.h"
#line 1 ".\\src\\Driver\\driver_spi.h"







 










#line 20 ".\\src\\Driver\\driver_spi.h"

#line 27 ".\\src\\Driver\\driver_spi.h"

#line 35 ".\\src\\Driver\\driver_spi.h"

typedef enum 
{
	SPI_MASTER   = 1,
	SPI_SLAVE    = 0
} SPI_MASTER_SLAVE;

extern volatile char spi_tx_data[127], spi_rx_data[127];




void spi_set_txint_mode(unsigned char mode);
void spi_set_rxint_mode(unsigned char mode);
extern void spi_init(SPI_MASTER_SLAVE spi_master_slave);
extern void spi_trans_start(void);
extern void spi_int_enable(void);
extern unsigned char is_spi_busy(void);

extern void SPI_InterruptHandler(void);










#line 42 ".\\src\\include\\include.h"
#line 1 ".\\src\\App\\keyboard.h"






#line 21 ".\\src\\App\\keyboard.h"


#line 29 ".\\src\\App\\keyboard.h"



#line 59 ".\\src\\App\\keyboard.h"

#line 70 ".\\src\\App\\keyboard.h"

#line 80 ".\\src\\App\\keyboard.h"




#line 90 ".\\src\\App\\keyboard.h"



#line 105 ".\\src\\App\\keyboard.h"





#line 116 ".\\src\\App\\keyboard.h"






#line 139 ".\\src\\App\\keyboard.h"















 
#line 164 ".\\src\\App\\keyboard.h"

    
#line 176 ".\\src\\App\\keyboard.h"



#line 217 ".\\src\\App\\keyboard.h"
	              





typedef struct MOUSE_VARIABLE_T
{
    unsigned char button;
    short int          sensor_x;
    short int          sensor_y;
    unsigned char sensor_cpi;
    unsigned char wheel;
} MOUSE_VARIABLE_T,*MOUSE_VARIABLE_P;

void key_value_send(void);
void keyboard_process(void);
void set_deep_sleep_wakeup(void);
void led_action(uint16 led_on_time,uint16 led_off_time,uint8 initial_led);
uint8 xyz_axis_process(uint8 joystick_xyz);




#line 43 ".\\src\\include\\include.h"
#line 1 ".\\src\\App\\main.h"





extern u_int8 spiCount;
extern u_int8 templata;



typedef struct _ENV_CONFIG_T
{
    uint8 stand_key_map[8][19];
    uint8 gpio_row[8],gpio_cow[19];
    uint8 bt_device_name[32];
    uint8 pincode[16];
    uint8 bt_addr[6];
    uint8 test_addr[6];
    uint8 uart_baudrate;
    uint8 work_mode;
    uint8 bt_pair_io;
    uint8 power_on_off_io;
    uint8 power_on_off_time;
    uint8 low_power_led_io;
    uint8 bt_led_io;
    uint8 low_power_led_on_time;
    uint8 low_power_led_off_time;
    uint8 bt_pair_led_on_time;
    uint8 bt_pair_led_off_time;    
    uint8 bt_connected_led_on_time;
    uint8 bt_connected_led_off_time;
    uint8 bt_auto_connect_led_on_time;
    uint8 bt_auto_connect_led_off_time;
    uint8 adc_io;
    uint8 lowpower_threshold;
    uint8 config_flag;
    uint8 gpio_cm_config[5];
    uint8 gpio_cm_config_enable;
    uint8 gpio_vr_config[8];
    uint8 uart_stop;
    uint8 uart_par;

} ENV_CONFIG_T,*ENV_CONFIG_P;
 
 

void delay_us(uint32 num);
void delay_for_32k(uint32 num);






#line 44 ".\\src\\include\\include.h"










#line 4 "src\\Driver\\Driver_uart.h"


#line 20 "src\\Driver\\Driver_uart.h"




#line 30 "src\\Driver\\Driver_uart.h"











void UART_Initial(void);
void UART_Interrupt_Handler(void);
void uart_buff_send(volatile uint8 **buf, volatile uint32 *length);
void* TRAhcit_Register_UART_Driver(void);

signed int bprintf(const char *fmt, ...);






#line 3 "src\\Driver\\driver_uart.c"
#line 1 ".\\src\\Core\\transport\\include\\tra_hcit.h"

















 

#line 21 ".\\src\\Core\\transport\\include\\tra_hcit.h"



 
enum
{

    TRA_HCIT_TYPE_UART,
#line 46 ".\\src\\Core\\transport\\include\\tra_hcit.h"
    TRA_HCIT_TYPE_ENDS        
};


 

enum 
{
    TRA_HCIT_FAST_IRQ,
    TRA_HCIT_SLOW_IRQ,
    TRA_HCIT_POLLED
};



 

enum
{
    TRA_HCIT_COMMAND = 1,
    TRA_HCIT_ACLDATA = 2,
    TRA_HCIT_SCODATA = 3,
    TRA_HCIT_EVENT   = 4,       
    TRA_HCIT_SREADTRUM  = 0xc0       

#line 77 ".\\src\\Core\\transport\\include\\tra_hcit.h"
};







 

struct tra_hcit_info
{
    

 

    u_int8 type;

    

 

    u_int8 access_type;

    

 






    u_int8 tx_busy;


	


 

	u_int8 tx_tra_source;

    



 

    t_deviceIndex tx_device_index;
    t_deviceIndex rx_device_index;

    t_deviceIndex tx_sco_device_index;
    t_deviceIndex rx_sco_device_index;

    
    



 

    void (*interrupt_handler)(void);

#line 151 ".\\src\\Core\\transport\\include\\tra_hcit.h"
}; 








 

u_int8* TRAhcit_Generic_Get_Rx_Buf(u_int8 ptype,int size, u_int8 *hci_header);
void TRAhcit_Generic_Commit_Rx_Buf(u_int8 tra_source);
void TRAhcit_Generic_Acknowledge_Complete_Tx(u_int8 tra_source, u_int32 length);
t_error TRAhcit_Register_Generic_Dispatcher(void (*callback)(u_int8 *data, u_int32 pdu_len, u_int8 *header, 
                            u_int8 head_len));




#line 181 ".\\src\\Core\\transport\\include\\tra_hcit.h"


extern volatile u_int8 force_step_spreadtrum_finish;
extern volatile t_clock t_check_wakeup_timer_count;





 

t_error TRAhcit_Dispatch_Pending_Data(void);
t_error TRAhcit_Dispatch_Pending_Event(void);
t_error TRAhcit_Dispatch_Pending_SCO(void);





 

int TRAhcit_Initialise(void);
int TRAhcit_Shutdown(void);



 
__inline u_int8 TRAhcit_Is_Tx_Busy(void);





 

extern void* (*TRAhcit_Register)(void);

__inline void TRAhcit_Set_Register_Function(void* (*func)(void));
void* TRAhcit_Register_UART_Driver(void);
void* TRAhcit_Register_USB_Driver(void);

__inline void TRAhcit_Call_Interrupt_Handler(void);

__inline void TRAhcit_Call_Poll_Rx(void);
__inline void TRAhcit_Suspend(void);
__inline void TRAhcit_Resume(void);







 


 

#line 1 ".\\src\\Core\\transport\\include\\tra_hcit_impl.h"


















 

#line 1 ".\\src\\Core\\transport\\include\\tra_hcit.h"
#line 22 ".\\src\\Core\\transport\\include\\tra_hcit_impl.h"

#line 31 ".\\src\\Core\\transport\\include\\tra_hcit_impl.h"










 

__inline void TRAhcit_Call_Interrupt_Handler(void)
{
	extern struct tra_hcit_info volatile *sys_hcit_info;	
	sys_hcit_info->interrupt_handler();
}











 
__inline void TRAhcit_Call_Poll_Rx(void)
{




}











 
__inline void TRAhcit_Call_Suspend(void)
{




}











 
__inline void TRAhcit_Call_Resume(void)
{




}














 

__inline void TRAhcit_Set_Register_Function(void* (*func)(void))
{
    extern void* (*TRAhcit_Register)(void);
    TRAhcit_Register = func;
}






 
__inline u_int8 TRAhcit_Is_Tx_Busy(void)
{
   	extern struct tra_hcit_info volatile *sys_hcit_info;	





    return  (sys_hcit_info->tx_busy);

}

#line 241 ".\\src\\Core\\transport\\include\\tra_hcit.h"


#line 4 "src\\Driver\\driver_uart.c"
#line 1 ".\\src\\Core\\transport\\include\\tra_uart.h"

















 
#line 20 ".\\src\\Core\\transport\\include\\tra_uart.h"
#line 21 ".\\src\\Core\\transport\\include\\tra_uart.h"

#line 23 ".\\src\\Core\\transport\\include\\tra_uart.h"

#line 1 ".\\src\\Core\\lmp\\include\\lmp_acl_connection.h"


















 

#line 22 ".\\src\\Core\\lmp\\include\\lmp_acl_connection.h"
#line 1 ".\\src\\Core\\lmp\\include\\lmp_sec_types.h"

















 
#line 20 ".\\src\\Core\\lmp\\include\\lmp_sec_types.h"




typedef enum {
    VARIABLE,
    FIXED 
} t_pin_type;


typedef enum {
    SEMI_PERMANENT,
    TEMPORARY
} t_link_key_life;


typedef u_int8 t_link_key_type;

#line 45 ".\\src\\Core\\lmp\\include\\lmp_sec_types.h"









#line 61 ".\\src\\Core\\lmp\\include\\lmp_sec_types.h"










 





typedef  u_int16 t_sec_super_state;

#line 97 ".\\src\\Core\\lmp\\include\\lmp_sec_types.h"


enum e_sec_sub_state {
  SUB_STATE_IDLE,
  W4_LINK_KEY_REQ_REPLY,
  W4_LINK_KEY_REQ_REPLY_CHALL_PENDING,
  W4_PIN_CODE_REQ_REPLY,
  W4_IN_RAND_RESPONSE,
  W4_SRES,
  W4_COMB_KEY_RESPONSE,
  W4_UNIT_KEY_RESPONSE,
  W4_ENCR_MODE_REPLY,
  W4_ENCR_KEY_SIZE_REQ,
  W4_ENCR_KEY_SIZE_REPLY, 
  W4_START_ENCR_REQ,
  W4_START_ENCR_REPLY,
  W4_STOP_ENCR_REPLY,
  W4_STOP_ENCR_REQ,
  W4_USE_SEMI_PERM_REPLY,
  SETUP_ENCR_KEY_SIZE_PENDING, 
  W4_MASTER_AUTH,
  W4_PEER_LINKKEY,
  W4_PEER_AUTH,
  PEER_AUTH_COMPLETE,
  W2_RESUME_ENC,
  W4_HCI_IO_CAP_REQUEST_REPLY,
  W4_LMP_IO_CAP_RESPONSE,
  W4_LMP_IO_CAP_REQUEST,
  W4_LMP_PUBLIC_KEY_HEADER,
  W4_LMP_PUBLIC_KEY_PAYLOAD,
  W4_LMP_ACK_PUBLIC_KEY_HEADER,
  W4_LMP_ACK_PUBLIC_KEY_PAYLOAD,
  W4_LMP_SIMPLE_PAIRING_CONFIRM,
  W4_LMP_SIMPLE_PAIRING_NUMBER,
  W4_LMP_ACK_SIMPLE_PAIRING_NUMBER,
  W4_HCI_USER_CONFIRMATION_REQUEST_REPLY, 
  W4_LMP_ACK_DHKEY_CHECK,
  W4_LMP_PEER_DHKEY_CHECK,
  W4_HCI_KEY_PRESS_NOTIFICATION,
  W4_HCI_REMOTE_OOB_DATA_REQUEST_REPLY
};






 
typedef u_int8 t_sec_sub_state;


typedef void t_sec_event_info;

typedef struct {
  t_pin_code pin_code;
  u_int8 pin_code_length;
}t_pin_code_info;




#line 23 ".\\src\\Core\\lmp\\include\\lmp_acl_connection.h"
#line 1 ".\\src\\Core\\lmp\\include\\lmp_types.h"


















 

#line 22 ".\\src\\Core\\lmp\\include\\lmp_types.h"
#line 23 ".\\src\\Core\\lmp\\include\\lmp_types.h"
#line 24 ".\\src\\Core\\lmp\\include\\lmp_types.h"
#line 1 ".\\src\\Core\\lmp\\include\\lmp_const.h"



#line 5 ".\\src\\Core\\lmp\\include\\lmp_const.h"
#line 6 ".\\src\\Core\\lmp\\include\\lmp_const.h"



















 





 

#line 102 ".\\src\\Core\\lmp\\include\\lmp_const.h"



 
 



 
 



 
 



 



 
#line 157 ".\\src\\Core\\lmp\\include\\lmp_const.h"



 

#line 172 ".\\src\\Core\\lmp\\include\\lmp_const.h"

#line 179 ".\\src\\Core\\lmp\\include\\lmp_const.h"










 

 


 




 
#line 219 ".\\src\\Core\\lmp\\include\\lmp_const.h"

















#line 248 ".\\src\\Core\\lmp\\include\\lmp_const.h"

typedef u_int16 t_HCIpacketTypes;    





























#line 289 ".\\src\\Core\\lmp\\include\\lmp_const.h"





















 




 





#line 329 ".\\src\\Core\\lmp\\include\\lmp_const.h"

















#line 352 ".\\src\\Core\\lmp\\include\\lmp_const.h"














































 





 







 






#line 25 ".\\src\\Core\\lmp\\include\\lmp_types.h"






typedef enum { OFF = 0x00, ON = 0x01 } t_flag;

typedef u_int8 t_lmp_pdu_q[5][20];

typedef struct {
    

 
#line 53 ".\\src\\Core\\lmp\\include\\lmp_types.h"
    u_int8 dummy;

 } t_lm_hold_info;

typedef struct {

    t_timer end_current_sniff_window;
    t_timer next_sniff_window;
    u_int16 D_sniff;
    u_int16 T_sniff;
    u_int16 T_sniff_min;
    u_int16 T_sniff_max;
    u_int16 N_sniff;
    u_int16 N_sniff_rem;
    u_int16 sniff_timeout;
#line 83 ".\\src\\Core\\lmp\\include\\lmp_types.h"
    u_int8 sniff_state;
    u_int8 num_sniff_negotiations;
    u_int8 timing_ctrl;



 } t_lm_sniff_info; 

typedef struct {

    u_int8  delta_bcast;       
    u_int8  pm_addr;           
    u_int8  ar_addr;           
    u_int8  am_addr;           
    u_int8  park_state;       
    t_deviceIndex  device_index;
    t_deviceIndex  unpark_device_index;
    t_deviceIndex  park_device_index;
    u_int8  unpark_pending;  
    u_int8 timing_ctrl;     
    u_int8 unpark_pdu_rx;   
    u_int8 num_unparks_attempts;  
    t_timer next_unpark_timer;
    t_timer next_park_timer;
    u_int8 mode_change;
    u_int8 unpark_type;
    u_int8 park_timeout_index;
    u_int8 unpark_timeout_index;



} t_lm_park_info;

typedef enum {
        SWITCH_IDLE = 0,
        SWITCH_PEER_ACTIVATION_PENDING = 1,
        SWITCH_LOCAL_ACTIVATION_PENDING = 2,
        SWITCH_COMPLETE_SUCCESS = 3,
        SWITCH_COMPLETE_FAIL = 4
} t_lm_switch_states;
    
typedef struct {
   t_lm_sniff_info sniff_info;
   t_lm_hold_info hold_info;
   t_lm_park_info park_info;
  } t_lm_policy_info; 


typedef enum {
       SCO_UNUSED,
	   SCO_MASTER_DEACTIVATION_PENDING,
       SCO_IDLE,
       SCO_ACTIVATION_PENDING,
       SCO_ACTIVE,
       SCO_CHANGE_PKT_ACCEPT_ACK_PENDING
#line 153 ".\\src\\Core\\lmp\\include\\lmp_types.h"
} t_lm_sco_states;

typedef struct {
    u_int32  next_activity_time;              
    t_packetTypes packet_types;         
    t_connectionHandle connection_handle;  
    t_linkType link_type;                  

    u_int8  timing_ctrl;                   
    u_int8  d_sco;
    u_int8  t_sco;

    u_int8  lm_sco_handle;                 
    u_int8  lm_sco_packet;                 
    u_int8  lm_air_mode;                   
    u_int16 voice_setting;                 

    u_int8  sco_index;                     
    u_int8  sco_cfg_hardware;              
    t_lm_sco_states state;                 
    t_deviceIndex device_index;            
#line 270 ".\\src\\Core\\lmp\\include\\lmp_types.h"
}   t_sco_info;

typedef struct s_esco_descr {
    u_int8 t_esco;
    u_int8 w_esco;
    u_int8 d_esco;
    u_int8 timing_ctrl_flag;
    t_packet tx_pkt_type;
    t_packet rx_pkt_type;
    u_int16 tx_pkt_len;
    u_int16 rx_pkt_len;
    u_int16 voice_setting;
    u_int8 lm_sco_handle;
    u_int8 esco_lt_addr;
    u_int8 negotiation_state;
} t_esco_descr;

typedef struct t_lm_event_info {
    t_error status;
    t_linkType link_type;
    t_deviceIndex device_index;
    u_int8 number;
    u_int8  mode;
    u_int8  role;
    t_connectionHandle handle;
    t_bd_addr* p_bd_addr;
    t_classDevice cod;
    t_error reason;
    u_int8* p_u_int8;
    u_int16 value16bit;
    u_int8 lmp_version;
    u_int16 lmp_subversion;
    u_int16 comp_id;
    t_inquiryResult* p_result_list;
    u_int32 latency;
    u_int32 token_rate;
	u_int32 numeric_value;
    u_int8 key_type;
#line 316 ".\\src\\Core\\lmp\\include\\lmp_types.h"
    u_int8 page;
    u_int8 max_page;

    u_int8 ack_required;

	u_int8 io_cap;
	u_int8 oob_data_present;
	u_int8 auth_requirements;

} t_lm_event_info;

typedef t_error (*t_lm_callback)(u_int8, t_lm_event_info*);





 

typedef struct s_lmp_pdu_info {
    

 
    union {
        const t_versionInfo  *p_local_version;
        const u_int8         *p_uint8;
        const t_sco_info     *p_sco_link;
        const t_lm_park_info *p_park;
    } ptr;

   t_error  reason;

   u_int8   tid_role; 
   u_int8   length;
   u_int16  return_opcode;    
   u_int8   name_offset;
   u_int8   name_length;
   u_int8   Nbc;
   u_int8   max_slots;
   u_int8   key_size;
   u_int8   drift;
   u_int8   jitter;  
   u_int8   mode;
   u_int8   timing_control;
   u_int8   number_of_poll_slots;
   u_int8   number;

   u_int16  opcode;                  
   u_int16  slot_offset;
   u_int16  interval;
   u_int16  offset;
   u_int16  attempt;
   u_int16  timeout;
   u_int32  instant;

   u_int8   settings;
   u_int8   ack_required;
   u_int8   Db_present;
   u_int16  enc_key_len_mask;


   u_int8   tm_scenario;
   u_int8   tm_hop_mode;
   u_int8   tm_tx_freq;
   u_int8   tm_rx_freq;
   u_int8   tm_power_mode;
   u_int8   tm_poll_period;
   u_int8   tm_pkt_type;
   u_int16  tm_pkt_len;

}t_lmp_pdu_info;


typedef enum {
    MAX_POWER,
    MIN_POWER,
    INTERMEDIATE_POWER
 } t_power_level;

typedef enum {
    MIN=0,  
    MEDIUM=1,  
    HIGH=2,  
    AUTO=3  
 } t_rate;


typedef enum {
     REJECT = 0,
     DONT_AUTO_ACCEPT = 1,
     AUTO_ACCEPT = 2,
     AUTO_ACCEPT_WITH_MSS = 3
     
} t_filter_settings;





 
typedef enum
{
    LMP_Remote_Setup_Complete = 1,
    LMP_Local_Setup_Complete = 2,
    LMP_No_Setup_Complete = 0,
    LMP_Both_Setup_Completes = 3
} t_LMP_Setup_Bitmask;

typedef enum
{
    LMP_No_Features_Complete = 0,
    LMP_Remote_Features_Complete = 1,
    LMP_Local_Features_Complete = 2,
    LMP_Both_Features_Complete = 3
} t_LMP_Features_Bitmask;

typedef enum
{
   LMcontxt_ENTERING_HOLD = 0x01,
   LMcontxt_LEAVING_HOLD = 0x02,
   LMcontxt_ENTERING_SNIFF = 0x04,
   LMcontxt_LEAVING_SNIFF = 0x08,
   LMcontxt_ENTERING_SCO = 0x10,
   LMcontxt_LEAVING_SCO = 0x20,
   LMcontxt_CHANGED_SCO = 0x40
} t_LM_context;

typedef enum
{
    NOT_ACTIVE,
    ACTIVE_RESERVED_SLOT,
    ACTIVE_RETRANSMISSION
} t_eSCO_frame_activity;



#line 24 ".\\src\\Core\\lmp\\include\\lmp_acl_connection.h"



enum e_lm_acl_state {
       LMP_ACTIVE                 = 0x0001, 
       LMP_HOLD_MODE              = 0x0002,
       LMP_SNIFF_MODE             = 0x0004, 
       LMP_PARK_MODE              = 0x0008,
       LMP_IDLE                   = 0x0010,
       W4_PAGE_OUTCOME            = 0x0020,
       W4_HOST_ACL_ACCEPT         = 0x0040,
       W4_HOST_SCO_ACCEPT         = 0x0080,
       W4_AUTHENTICATION          = 0x0100,
       W4_ENCRYPTION              = 0x0200,
       LMP_W4_SUPERVISION_TIMEOUT = 0x0400,
       LMP_DETACH_ACK_PENDING     = 0x0800,
       W4_LMP_ACTIVE              = 0x1000,
       W4_FEATURES_RES            = 0x2000,
	   W4_HOST_ESCO_ACCEPT        = 0x4000,
	   W4_SNIFF_EXIT			  = 0x8000
};




 
typedef u_int16 t_lm_acl_state;

typedef u_int32  t_policy_settings;




 

typedef struct t_lmp_link 
{    
   

 
    

 
    t_link_key encry_key;

    t_lm_acl_state  state;
    t_deviceIndex device_index;
    t_role role;
    t_rate rate;
    t_rate peer_rate;
    t_rate preferred_rate;
    t_bd_addr bd_addr;
    t_classDevice device_class;

    t_packetTypes allowed_pkt_types;
    u_int16 proposed_packet_types;
    u_int16 proposed_poll_interval;

    u_int16 operation_pending;
    u_int8  remote_features[8];

    u_int8  context;
    u_int8  setup_complete_bit_mask;
	u_int8  host_connection_request_sent;
	u_int8  host_connection_request_accepted;
    u_int8  features_complete_bit_mask;
    u_int8  index;  
    u_int8  Nbc;
    t_connectionHandle handle;  

   






 

    u_int8 tid_role_last_rcvd_pkt; 
    u_int8 current_proc_tid_role;  
    u_int8 sec_current_proc_tid_role;
     
   

 
    t_sec_super_state auth_super_state;
    t_sec_sub_state  auth_sub_state;

    t_sec_super_state encr_super_state;
    t_sec_sub_state  encr_sub_state;
    t_link_key link_key; 
    u_int8 link_key_exists;
    t_link_key_type key_type ;           
    t_link_key_life link_key_persistance;      
    u_int8 pin_code_length;
    t_pin_code pin_code;
    u_int8 encrypt_key_size;
    u_int8 rand[16];
    u_int8 local_combkey_part[16];
    t_sres sres;
    t_aco aco;
    t_encrypt_mode encrypt_mode;
    t_encrypt_mode restore_current_encrypt_mode;  
    t_encrypt_enable encrypt_enable;

    u_int8 encrypt_paused;
    u_int8 event_status;
    u_int8 encryption_key_refresh_index;

    t_lm_policy_info pol_info;
    u_int8 switch_state;
   


 

    t_power_level  peer_power_status;
    u_int8 max_power_level;
    volatile boolean peer_power_req_tx_pending;
    s_int8 peer_power_counter;
    
   

 
    u_int8 service_type;

    u_int32 token_rate;
    u_int32 peak_bandwidth;
    u_int32 latency;
    u_int32 delay_variation;

    u_int8  proposed_service_type;
    u_int32 proposed_token_rate;
    u_int32 proposed_peak_bandwidth;
    u_int32 proposed_latency;
    u_int32 proposed_delay_variation;



    u_int8 direction;

    u_int8 in_service_type;
    u_int32 in_token_rate;
    u_int32 in_peak_bandwidth;
    u_int32 in_latency;
    u_int32 in_token_bucket_size;

    u_int8  in_proposed_service_type;
    u_int32 in_proposed_token_rate;
    u_int32 in_proposed_peak_bandwidth;
    u_int32 in_proposed_latency;
    u_int32 in_proposed_token_bucket_size;

    u_int8  out_service_type;
    u_int32 out_token_rate;
    u_int32 out_peak_bandwidth;
    u_int32 out_latency;
    u_int32 out_token_bucket_size;

    u_int8  out_proposed_service_type;
    u_int32 out_proposed_token_rate;
    u_int32 out_proposed_peak_bandwidth;
    u_int32 out_proposed_latency;
    u_int32 out_proposed_token_bucket_size;

    t_slots transmission_interval;
    s_int16 transmission_position;

    u_int8 flow_spec_pending;
    u_int16 proposed_tx_interval;

    u_int8 out_qos_active;
    u_int8 in_qos_active;


   

 
   u_int16 channel_quality_timeout;
   u_int16 flush_timeout;
   u_int16 supervision_timeout;  
   u_int16 link_supervision_timeout;  
   u_int8 flush_timeout_index;
   u_int8 flush_execut_timeout_index;
   u_int8 supervision_timeout_index;
   u_int8 recent_contact_timeout_index;
   u_int8 channel_quality_timeout_index;

   u_int8  allow_switch;

   u_int8 flush_status;
   u_int8 flush_type;
   u_int8 queue_flush_pending;
   u_int8 sched_queue_flush_pending;
   u_int8 failed_contact_counter;
   u_int8 flush_packet_type;  
   u_int8 enhanced_queue_flush_pending;
   

 

    t_HCIpacketTypes  packet_types;   
    t_slots poll_interval;
    s_int16 poll_position;

    u_int16 l2cap_pkt_len_pending;
    u_int16 current_l2cap_pkt_length;
    u_int8  previous_modes;  
    u_int8 packet_type_changed_event;
    u_int8 max_slots_out;
    u_int8 max_slots_out_pending;
    u_int8 max_slots_in;
    u_int8 prev_slots_tx;
    u_int8 l2cap_ack_pending;

    

 
    u_int16 slot_offset;

    u_int8 gen_detach_timeout_index;
    u_int8 gen_switch_timeout_index;
    u_int8 gen_security_timeout_index;

    u_int16 link_policy_mode;
    u_int8 msg_timer;

    t_deviceIndex park_device_index;
    u_int8 num_park_negotiations;
    u_int8 automatic_park_enabled;





    t_packet default_pkt_type;
    t_error detach_reason;
    t_error disconnect_req_reason;
    u_int8 l2cap_tx_enable;
    u_int8 link_quality;
    u_int8 sec_timer;
    u_int16 bcast_enc_key_size_mask;
    u_int8 ptt;
	u_int8 connection_request_send_via_hci;


	u_int8 peer_public_key_x[24];
	u_int8 peer_public_key_y[24];
	u_int8 Incoming_Encapsulated_P192_len_pending;
	u_int8 ssp_initiator;
	u_int8 peer_commitment[16];
	u_int8 peer_random[16];
	u_int8 DHkey[24];
	u_int8 DHkeyCheck[16];
	u_int8 peer_key_check[16];
	u_int8 DHkeyCheckComplete;
	u_int8 DHkeyCalculationComplete;

	u_int8 oob_data_present;

	u_int8 auth_requirements;
	u_int8 io_cap;
	u_int8 auth_type;
	u_int8 ssp_tid;
	u_int8 peer_user_authenticated;
	u_int8 local_user_authenticated;

	u_int32 passKey;
	u_int8 passKeyCount;

	u_int8 Rpeer[16];

	u_int8 local_oob_verified;

	u_int8 rxed_simple_pairing_number;
	u_int8 ssp_host_support;
	u_int8 ssp_debug_mode;
	u_int8 ssp_hci_timer_index;
	u_int8 peer_user_dh_key_check_rxed;

	boolean  call_lc_wakeup;
    u_int8 ptt_save;
} t_lmp_link;

void LMacl_Initialise(t_lmp_link* p_link);
void LMacl_Write_CombKey_Part(t_lmp_link *p_link, u_int8 *local_comb_key_part);
void LMacl_Write_Bd_Addr(t_lmp_link* current_link, t_bd_addr* p_bd_addr);

void LMacl_Add_Sco(t_lmp_link* p_link,t_sco_info* p_sco_link);
void LMacl_Remove_Sco(t_lmp_link* p_link,t_sco_info* p_sco_link);
u_int8 LMacl_Sco_Exists(t_lmp_link* p_link);

void LMacl_Set_Key_Persistance(t_lmp_link* p_link, t_link_key_life key_persistance);
t_link_key_life LMacl_Get_Current_Key_Persistance(t_lmp_link* p_link);
t_link_key_life LMacl_Get_Previous_Key_Persistance(t_lmp_link* p_link);



#line 25 ".\\src\\Core\\transport\\include\\tra_uart.h"



 







 

struct tra_hcit_uart_info
{
    





 

    struct tra_hcit_info common;

     

    void (*initialise)(u_int32 speed);
    void (*shutdown)(void);
    void (*transmit)(volatile u_int8 **data,volatile u_int32 *len, void (*txcb)(void));

    void (*poll_tx)(volatile u_int8 **data, volatile u_int32 *len);


     

    u_int16 framing_errors;
    u_int16 overrun_errors;
};




 

enum
{
    TRA_HCIT_UART_FRAMING_ERROR,
    TRA_HCIT_UART_OVERRUN_ERROR,
    TRA_HCIT_UART_PARITY_ERROR
};







u_int32 TRAhcit_UART_Get_Default_Baud_Rate(void);
void TRAhcit_UART_Set_Default_Baud_Rate(u_int32 baud_rate);


void TRAhcit_UART_Initialise(void);
void TRAhcit_UART_Shutdown(void);
void TRAhcit_UART_Transmit(u_int8 *pdu, u_int32 pdu_len, u_int8 *head, u_int8 head_len, u_int8 tra_source, t_deviceIndex device_index);
void TRAhcit_UART_Rx_Char(u_int8 ch);
void TRAhcit_UART_Tx_PDU(void);

boolean TRAhcit_UART_Transport_Activity(void);

__inline void TRAhcit_UART_Indicate_Error(u_int8 type);






 

#line 1 ".\\src\\Core\\transport\\include\\tra_uart_impl.h"


















 

#line 1 ".\\src\\Core\\transport\\include\\tra_uart.h"
#line 22 ".\\src\\Core\\transport\\include\\tra_uart_impl.h"
#line 1 ".\\src\\Core\\hc\\include\\hc_event_gen.h"



















 

#line 23 ".\\src\\Core\\hc\\include\\hc_event_gen.h"
#line 24 ".\\src\\Core\\hc\\include\\hc_event_gen.h"
  

typedef struct {
    const t_bufferSize* p_hc_buffer_size;
    } t_Read_Buffer_Size;  

typedef struct {
    const t_versionInfo*  version;
    } t_Read_Local_Version;

typedef struct {
    t_classDevice  cod;
    } t_Read_Class_Device;


typedef struct {
    u_int16 max_num_keys;
    u_int16  num_keys_read;
} t_Read_Stored_Link_Key;

typedef struct {
     u_int8 page;
     u_int8 max_page;
} t_Read_Local_Extended_Features;

typedef union {
    t_Read_Buffer_Size readBufferSize;
    t_Read_Local_Version readLocalVersion;
    t_Read_Stored_Link_Key  readStoredLinkKey;
    t_Read_Class_Device readClassDevice;
    t_Read_Local_Extended_Features readLocalExtendedFeatures;
} t_command_complete_return_params;

typedef struct {
    u_int16 opcode;
    t_connectionHandle handle;
    t_slots timeout;
    u_int8 mode;
    const u_int8* p_u_int8;
    t_error status;
    const t_bd_addr* p_bd_addr;
    u_int16 value16bit;
    u_int8 number;
    u_int32 u_int32val;
    t_scanActivity scan_activity;
    t_command_complete_return_params returnParams; 
 } t_cmd_complete_event; 

typedef struct {
    const t_inquiryResult* p_result_list;
    u_int8 Num_Responses;
} t_inquiry_result_event;

typedef struct {
    u_int8 Num_Responses;
    t_error status;
} t_inquiry_complete_event;

void HCeg_Initialise(void);
t_error HCeg_Set_Event_Mask(t_p_pdu p_pdu);

t_error HCeg_Inquiry_Result_Event(u_int8 event_cdoe, t_lm_event_info* p_inq_event_info);
void HCeg_Command_Complete_Event(t_cmd_complete_event* event_nfo);
void HCeg_Command_Status_Event(t_error status, u_int16 opcode);
void HCeg_Loopback_Command_Event(t_p_pdu p_command_buff, u_int16 opcode);

boolean HCeg_Number_Of_Completed_Packets_Event(u_int8 num_handles, 
     const u_int16* handles, const u_int16 *completed_packets); 

void HCeg_Hardware_Error_Event(u_int8 hardware_code);



 
u_int32 HCeg_Is_Event_Masked_On(u_int32 event_code);


 
u_int8 HCeg_Prevent_HCI_Event_Queue_from_Overfill(void);




 
t_error HCeg_Generate_Event(u_int8 event_code,t_lm_event_info* p_event_info);

void _Insert_Uint8(t_p_pdu p_buffer, u_int8 value_8_bit);
void _Insert_Uint16(t_p_pdu p_buffer, u_int16 value_16_bit);
void _Insert_Uint24(t_p_pdu p_buffer, u_int32 value_24_bit);
void _Insert_Uint32(t_p_pdu p_buffer, u_int32 value_32_bit);

#line 23 ".\\src\\Core\\transport\\include\\tra_uart_impl.h"








 

__inline void TRAhcit_UART_Indicate_Error(u_int8 type)
{
    extern struct tra_hcit_uart_info sys_hcit_uart_info;

    switch(type)
    {
        case TRA_HCIT_UART_FRAMING_ERROR:
            sys_hcit_uart_info.framing_errors++;
            HCeg_Hardware_Error_Event(0x07);
            break;

        case TRA_HCIT_UART_OVERRUN_ERROR:
            sys_hcit_uart_info.overrun_errors++;
            HCeg_Hardware_Error_Event(0x01);
        break;
    }
}


#line 106 ".\\src\\Core\\transport\\include\\tra_uart.h"


#line 5 "src\\Driver\\driver_uart.c"
#line 1 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
 
 
 
 




 








 












#line 38 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"


  



    typedef unsigned int size_t;    
#line 54 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"




extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 193 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 209 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 232 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 247 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 270 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 502 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"



 

#line 6 "src\\Driver\\driver_uart.c"
#line 1 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
 
 
 




 
 



 






   














  


 








#line 54 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


  



    typedef unsigned int size_t;    
#line 70 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"






    



    typedef unsigned short wchar_t;  
#line 91 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

typedef struct div_t { int quot, rem; } div_t;
    
typedef struct ldiv_t { long int quot, rem; } ldiv_t;
    

typedef struct lldiv_t { long long quot, rem; } lldiv_t;
    


#line 112 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   



 

   




 
#line 131 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   


 
extern __declspec(__nothrow) int __aeabi_MB_CUR_MAX(void);

   




 

   




 




extern __declspec(__nothrow) double atof(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int atoi(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) long int atol(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) long long atoll(const char *  ) __attribute__((__nonnull__(1)));
   



 


extern __declspec(__nothrow) double strtod(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

















 

extern __declspec(__nothrow) float strtof(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) long double strtold(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

 

extern __declspec(__nothrow) long int strtol(const char * __restrict  ,
                        char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   



























 
extern __declspec(__nothrow) unsigned long int strtoul(const char * __restrict  ,
                                       char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   


























 

 
extern __declspec(__nothrow) long long strtoll(const char * __restrict  ,
                                  char ** __restrict  , int  )
                          __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) unsigned long long strtoull(const char * __restrict  ,
                                            char ** __restrict  , int  )
                                   __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) int rand(void);
   







 
extern __declspec(__nothrow) void srand(unsigned int  );
   






 

struct _rand_state { int __x[57]; };
extern __declspec(__nothrow) int _rand_r(struct _rand_state *);
extern __declspec(__nothrow) void _srand_r(struct _rand_state *, unsigned int);
struct _ANSI_rand_state { int __x[1]; };
extern __declspec(__nothrow) int _ANSI_rand_r(struct _ANSI_rand_state *);
extern __declspec(__nothrow) void _ANSI_srand_r(struct _ANSI_rand_state *, unsigned int);
   


 

extern __declspec(__nothrow) void *calloc(size_t  , size_t  );
   



 
extern __declspec(__nothrow) void free(void *  );
   





 
extern __declspec(__nothrow) void *malloc(size_t  );
   



 
extern __declspec(__nothrow) void *realloc(void *  , size_t  );
   













 

extern __declspec(__nothrow) int posix_memalign(void **  , size_t  , size_t  );
   









 

typedef int (*__heapprt)(void *, char const *, ...);
extern __declspec(__nothrow) void __heapstats(int (*  )(void *  ,
                                           char const *  , ...),
                        void *  ) __attribute__((__nonnull__(1)));
   










 
extern __declspec(__nothrow) int __heapvalid(int (*  )(void *  ,
                                           char const *  , ...),
                       void *  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) __declspec(__noreturn) void abort(void);
   







 

extern __declspec(__nothrow) int atexit(void (*  )(void)) __attribute__((__nonnull__(1)));
   




 
#line 436 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern __declspec(__nothrow) __declspec(__noreturn) void exit(int  );
   












 

extern __declspec(__nothrow) __declspec(__noreturn) void _Exit(int  );
   







      

extern __declspec(__nothrow) char *getenv(const char *  ) __attribute__((__nonnull__(1)));
   









 

extern __declspec(__nothrow) int  system(const char *  );
   









 

extern  void *bsearch(const void *  , const void *  ,
              size_t  , size_t  ,
              int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,2,5)));
   












 
#line 524 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern  void qsort(void *  , size_t  , size_t  ,
           int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,4)));
   









 

#line 553 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

extern __declspec(__nothrow) __attribute__((const)) int abs(int  );
   



 

extern __declspec(__nothrow) __attribute__((const)) div_t div(int  , int  );
   









 
extern __declspec(__nothrow) __attribute__((const)) long int labs(long int  );
   



 




extern __declspec(__nothrow) __attribute__((const)) ldiv_t ldiv(long int  , long int  );
   











 







extern __declspec(__nothrow) __attribute__((const)) long long llabs(long long  );
   



 




extern __declspec(__nothrow) __attribute__((const)) lldiv_t lldiv(long long  , long long  );
   











 
#line 634 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"




 
typedef struct __sdiv32by16 { int quot, rem; } __sdiv32by16;
typedef struct __udiv32by16 { unsigned int quot, rem; } __udiv32by16;
    
typedef struct __sdiv64by32 { int rem, quot; } __sdiv64by32;

__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv32by16 __rt_sdiv32by16(
     int  ,
     short int  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __udiv32by16 __rt_udiv32by16(
     unsigned int  ,
     unsigned short  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv64by32 __rt_sdiv64by32(
     int  , unsigned int  ,
     int  );
   

 




 
extern __declspec(__nothrow) unsigned int __fp_status(unsigned int  , unsigned int  );
   







 























 
extern __declspec(__nothrow) int mblen(const char *  , size_t  );
   












 
extern __declspec(__nothrow) int mbtowc(wchar_t * __restrict  ,
                   const char * __restrict  , size_t  );
   















 
extern __declspec(__nothrow) int wctomb(char *  , wchar_t  );
   













 





 
extern __declspec(__nothrow) size_t mbstowcs(wchar_t * __restrict  ,
                      const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 
extern __declspec(__nothrow) size_t wcstombs(char * __restrict  ,
                      const wchar_t * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 

extern __declspec(__nothrow) void __use_realtime_heap(void);
extern __declspec(__nothrow) void __use_realtime_division(void);
extern __declspec(__nothrow) void __use_two_region_memory(void);
extern __declspec(__nothrow) void __use_no_heap(void);
extern __declspec(__nothrow) void __use_no_heap_region(void);

extern __declspec(__nothrow) char const *__C_library_version_string(void);
extern __declspec(__nothrow) int __C_library_version_number(void);











#line 892 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"





 
#line 7 "src\\Driver\\driver_uart.c"
#line 1 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"
 
 
 





 










#line 27 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"








 

 
 
#line 57 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"
    typedef struct __va_list { void *__ap; } va_list;

   






 


   










 


   















 




   

 


   




 



   





 







#line 138 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"



#line 147 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"

 

#line 8 "src\\Driver\\driver_uart.c"
#line 1 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
 
 
 





 






 







 




  
 








#line 47 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


  



    typedef unsigned int size_t;    









 
 

 



    typedef struct __va_list __va_list;






   




 




typedef struct __fpos_t_struct {
    unsigned __int64 __pos;
    



 
    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
   


 


   

 

typedef struct __FILE FILE;
   






 

#line 136 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;

#line 166 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
    

    

    





     



   


 


   


 

   



 

   


 




   


 





    


 






extern __declspec(__nothrow) int remove(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int rename(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) FILE *tmpfile(void);
   




 
extern __declspec(__nothrow) char *tmpnam(char *  );
   











 

extern __declspec(__nothrow) int fclose(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) int fflush(FILE *  );
   







 
extern __declspec(__nothrow) FILE *fopen(const char * __restrict  ,
                           const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   








































 
extern __declspec(__nothrow) FILE *freopen(const char * __restrict  ,
                    const char * __restrict  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(2,3)));
   








 
extern __declspec(__nothrow) void setbuf(FILE * __restrict  ,
                    char * __restrict  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) int setvbuf(FILE * __restrict  ,
                   char * __restrict  ,
                   int  , size_t  ) __attribute__((__nonnull__(1)));
   















 
#pragma __printf_args
extern __declspec(__nothrow) int fprintf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   


















 
#pragma __printf_args
extern __declspec(__nothrow) int _fprintf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   




 
#pragma __printf_args
extern __declspec(__nothrow) int _printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






 
#pragma __printf_args
extern __declspec(__nothrow) int _sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   















 

#pragma __printf_args
extern __declspec(__nothrow) int _snprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int fscanf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






























 
#pragma __scanf_args
extern __declspec(__nothrow) int _fscanf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   






 
#pragma __scanf_args
extern __declspec(__nothrow) int _scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int sscanf(const char * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   








 
#pragma __scanf_args
extern __declspec(__nothrow) int _sscanf(const char * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

 
extern __declspec(__nothrow) int vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int _vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int _vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int _vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int _vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int vfprintf(FILE * __restrict  ,
                    const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int vsprintf(char * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 

extern __declspec(__nothrow) int vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   







 

extern __declspec(__nothrow) int _vsprintf(char * __restrict  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vfprintf(FILE * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vsnprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   



 
extern __declspec(__nothrow) int fgetc(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) char *fgets(char * __restrict  , int  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   










 
extern __declspec(__nothrow) int fputc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   







 
extern __declspec(__nothrow) int fputs(const char * __restrict  , FILE * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int getc(FILE *  ) __attribute__((__nonnull__(1)));
   







 




    extern __declspec(__nothrow) int (getchar)(void);

   





 
extern __declspec(__nothrow) char *gets(char *  ) __attribute__((__nonnull__(1)));
   









 
extern __declspec(__nothrow) int putc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   





 




    extern __declspec(__nothrow) int (putchar)(int  );

   



 
extern __declspec(__nothrow) int puts(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int ungetc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   






















 

extern __declspec(__nothrow) size_t fread(void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   











 

extern __declspec(__nothrow) size_t __fread_bytes_avail(void * __restrict  ,
                    size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   











 

extern __declspec(__nothrow) size_t fwrite(const void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   







 

extern __declspec(__nothrow) int fgetpos(FILE * __restrict  , fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) int fseek(FILE *  , long int  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) int fsetpos(FILE * __restrict  , const fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   










 
extern __declspec(__nothrow) long int ftell(FILE *  ) __attribute__((__nonnull__(1)));
   











 
extern __declspec(__nothrow) void rewind(FILE *  ) __attribute__((__nonnull__(1)));
   





 

extern __declspec(__nothrow) void clearerr(FILE *  ) __attribute__((__nonnull__(1)));
   




 

extern __declspec(__nothrow) int feof(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) int ferror(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) void perror(const char *  );
   









 

extern __declspec(__nothrow) int _fisatty(FILE *   ) __attribute__((__nonnull__(1)));
    
 

extern __declspec(__nothrow) void __use_no_semihosting_swi(void);
extern __declspec(__nothrow) void __use_no_semihosting(void);
    





 











#line 985 "d:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"



 

#line 9 "src\\Driver\\driver_uart.c"
#line 1 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"
#line 1 ".\\src\\Core\\btj_src\\include\\DeviceBtj.h"






 







 
#line 27 ".\\src\\Core\\btj_src\\include\\DeviceBtj.h"




 
typedef enum _DEVICEBTJ_OBJECT
{
    DEVICEBTJ_OBJECT_SPP,
    DEVICEBTJ_OBJECT_HID,
    DEVICEBTJ_OBJECT_PNP,
    DEVICEBTJ_OBJECT_TOP
} DEVICEBTJ_OBJECT;
typedef enum _DEVICEBTJ_DEVICE
{
    DEVICEBTJ_DEVICE_LAPTOP,
    DEVICEBTJ_DEVICE_DESKTOP,
    DEVICEBTJ_DEVICE_PRINTER,
    DEVICEBTJ_DEVICE_CUSTOMS,
    DEVICEBTJ_DEVICE_TOP
} DEVICEBTJ_DEVICE;
typedef enum _DEVICEBTJ_SCAN_ENABLE
{
    DEVICEBTJ_SCAN_ENABLE_OFF,
    DEVICEBTJ_SCAN_ENABLE_INQ,
    DEVICEBTJ_SCAN_ENABLE_PAGE,
    DEVICEBTJ_SCAN_ENABLE_INQ_AND_PAGE
} DEVICEBTJ_SCAN_ENABLE;
typedef enum _DEVIEBTJ_EVENT
{
    DEVICEBTJ_EVENT_ADAPTER_ARRIVAL,
    DEVICEBTJ_EVENT_ADAPTER_REMOVED,
    DEVICEBTJ_EVENT_READ_LOCAL_NAME,
    DEVICEBTJ_EVENT_READ_LOCAL_TYPE,
    DEVICEBTJ_EVENT_WRITE_LOCAL_NAME,
    DEVICEBTJ_EVENT_WRITE_LOCAL_TYPE,
    DEVICEBTJ_EVENT_WRITE_SCAN_ENABLE,
    DEVICEBTJ_EVENT_INQUIRY_RESULT,
    DEVICEBTJ_EVENT_INQUIRY_COMPLETE,
    DEVICEBTJ_EVENT_INQUIRY_CANCELLED,
    DEVICEBTJ_EVENT_LINKKEY_REQUEST,
    DEVICEBTJ_EVENT_LINKKEY_NOTIFICATION,
    DEVICEBTN_EVENT_REMOTE_NAME_REQUEST_RESULT,
    DEVICEBTN_EVENT_REMOTE_NAME_REQUEST_CANCELLED,
    DEVICEBTJ_EVENT_SPP_RECEIVE,
    DEVICEBTJ_EVENT_SPP_CONNECT_CFM,
    DEVICEBTJ_EVENT_SPP_CONNECT_IND,
    DEVICEBTJ_EVENT_SPP_DISCONNECT_IND,
    DEVICEBTJ_EVENT_HID_RECEIVE,
    DEVICEBTJ_EVENT_HID_CONNECT_CFM,
    DEVICEBTJ_EVENT_HID_CONNECT_IND,
    DEVICEBTJ_EVENT_HID_DISCONNECT_IND,
    DEVICEBTN_EVENT_HID_UNPLUG_IND,
    DEVICEBTJ_EVENT_ACL_DISCONNECT_IND,
    DEVICEBTJ_EVENT_HID_OUT_REPORT,
    DEVICEBTJ_EVENT_HID_CREAT_CONNECT,
    DEVICEBTJ_EVENT_HID_DISCONNECT_HID,
    DEVICEBTJ_EVENT_WRITE_EIR,
    DEVICEBTJ_EVENT_MODE_CHANGE,
    DEVICEBTJ_EVENT_PIN_CODE_REQUEST,
    DEVICEBTJ_EVENT_WRITE_LINK_POLICY_SETING,
    DEVICEBTJ_EVENT_AUTO_CONNECT,
    DEVICEBTJ_EVENT_SAREQ,
    DEVICEBTJ_EVENT_SSAREQ,
    DEVICEBTJ_EVENT_HID_GET_REPORT,
    DEVICEBTN_EVENT_TOP
} DEVIEBTJ_EVENT;
typedef enum _DEVICEBTJ_STATE
{
    DEVICEBTJ_STATE_SUCCESS,
    DEVICEBTJ_STATE_FAILURE,
    DEVICEBTJ_STATE_FAILURE_INVALID,
    DEVICEBTJ_STATE_FAILURE_TIMEOUT,
    DEVICEBTJ_STATE_FAILURE_REFUSED,
    DEVICEBTJ_STATE_FAILURE_SECURITY,
    DEVICEBTJ_STATE_FAILURE_MISMATCH,
    DEVICEBTJ_STATE_FAILURE_LINKLOSS,
    DEVICEBTJ_STATE_FAILURE_INSTANCE,
    DEVICEBTJ_STATE_FAILURE_DEVICES_NOT_FOUND,
    DEVICEBTJ_STATE_FAILURE_SERVICE_NOT_FOUND,
    DEVICEBTJ_STATE_FAILURE_NOT_CONNECTED,
    DEVICEBTJ_STATE_FAILURE_ALREADY_CONNECTED,
    DEVICEBTJ_STATE_FAILURE_ALREADY_CONNECTING,
    DEVICEBTJ_STATE_TOP
} DEVICEBTJ_STATE;




 
struct __DEVICEBTJ_ADAPTER_T;
typedef struct __DEVICEBTJ_ADAPTER_T DEVICEBTJ_ADAPTER_T, *DEVICEBTJ_ADAPTER_P;
struct __DEVICEBTJ_SERVICE_T;
typedef struct __DEVICEBTJ_SERVICE_T DEVICEBTJ_SERVICE_T, *DEVICEBTJ_SERVICE_P;




 




typedef unsigned char           DEV_MEM_NAME[(0xf8)];
typedef unsigned char           DEV_STR_NAME[(0xf8)];


typedef unsigned char           DEV_MEM_ADDR[(0x06)];
typedef unsigned char           DEV_STR_ADDR[(0x12)];


typedef unsigned char           DEV_MEM_TYPE[(0x03)];
typedef unsigned char           DEV_STR_TYPE[(0x07)];

typedef unsigned char           DEV_LINK_KEY[(0x10)];




 
typedef signed char              BTBOOL;
typedef signed char              BTCHAR,  *BTPCHAR;
typedef signed short             BTSHORT, *BTPSHORT;
typedef signed long              BTLONG,  *BTPLONG;
typedef unsigned char            BTBYTE,  *BTPBYTE;
typedef unsigned short           BTWORD,  *BTPWORD;
typedef unsigned long            BTDWORD, *BTPDWORD;
typedef void                     *BTPVOID;







 



#pragma pack(1)

typedef __packed struct _DEVICEBTJ_ADAPTER_ARRIVAL_T
{
    DEV_MEM_ADDR DevMemAddr;
} DEVICEBTJ_ADAPTER_ARRIVAL_T, *DEVICEBTJ_ADAPTER_ARRIVAL_P;
typedef __packed struct _DEVICEBTJ_READ_LOCAL_NAME_T
{
    DEV_MEM_NAME DevMemName;
} DEVICEBTJ_READ_LOCAL_NAME_T, *DEVICEBTJ_READ_LOCAL_NAME_P;
typedef __packed struct _DEVICEBTJ_READ_LOCAL_TYPE_T
{
    DEV_MEM_TYPE DevMemType;
} DEVICEBTJ_READ_LOCAL_TYPE_T, *DEVICEBTJ_ADAPTER_TYPE_P;
typedef __packed struct _DEVICEBTJ_INQUIRY_RESULT_T
{
    DEV_MEM_ADDR DevMemAddr;
    DEV_MEM_TYPE DevMemType;
    BTBYTE       DevRssiValid;
    BTBYTE       DevRssiValue;
} DEVICEBTJ_INQUIRY_RESULT_T, *DEVICEBTJ_INQUIRY_RESULT_P;
typedef __packed struct _DEVICEBTJ_REMOTE_NAME_REQUEST_T
{
    DEV_MEM_ADDR DevMemAddr;
    DEV_MEM_NAME DevMemName;
} DEVICEBTJ_REMOTE_NAME_REQUEST_RESULT_T, *DEVICEBTJ_REMOTE_NAME_REQUEST_RESULT_P;
typedef __packed struct _DEVICEBTJ_REMOTE_NAME_REQUEST_CANCEL_T
{
    DEV_MEM_ADDR DevMemAddr;
} DEVICEBTJ_REMOTE_NAME_REQUEST_CANCEL_T, *DEVICEBTJ_REMOTER_NAMECANCELLED_P;
typedef __packed struct _DEVICEBTJ_CONNECT_IND_T
{
    DEV_MEM_ADDR DevMemAddr;
} DEVICEBTJ_CONNECT_IND_T, *DEVICEBTJ_CONNECT_IND_P;
typedef __packed struct _DEVICEBTJ_CONNECT_CFM_T
{
    DEV_MEM_ADDR DevMemAddr;
} DEVICEBTJ_CONNECT_CFM_T, *DEVICEBTJ_CONNECT_CFM_P;
typedef __packed struct _DEVICEBTJ_DISCONNECT_IND_T
{
    DEV_MEM_ADDR DevMemAddr;
} DEVICEBTJ_DISCONNECT_IND_T, *DEVICEBTJ_DISCONNECT_IND_P;







 
#line 244 ".\\src\\Core\\btj_src\\include\\DeviceBtj.h"
    
    BTBOOL
    
    DeviceBtj_Init(
        void
    );
    void
    DeviceBtj_Event(
        DEVICEBTJ_ADAPTER_P MsgAdapter,
        DEVICEBTJ_SERVICE_P MsgService,
        BTBYTE  MsgEvent,
        BTBYTE  MsgState,
        BTPBYTE MsgBuffer,
        BTWORD  MsgLength
    );
    
    void
    
    DeviceBtj_Timer(
        BTWORD Interval
    );

    
    DEVICEBTJ_SERVICE_P
    
    DeviceBtj_ServiceRegister(
        DEVICEBTJ_ADAPTER_P Adapter,
        DEVICEBTJ_OBJECT Types
    );
    
    BTBOOL
    
    DeviceBtj_ServiceUnregister(
        DEVICEBTJ_ADAPTER_P Adapter,
        DEVICEBTJ_SERVICE_P Service
    );
    
    BTBOOL
    
    DeviceBtj_InquiryStart(
        DEVICEBTJ_ADAPTER_P Adapter,
        BTBOOL DevRssi
    );
    
    BTBOOL
    
    DeviceBtj_InquiryCancel(
        DEVICEBTJ_ADAPTER_P Adapter
    );
    
    BTBOOL
    
    DeviceBtj_RemoteNameRequestStart(
        DEVICEBTJ_ADAPTER_P Adapter,
        DEV_MEM_ADDR DevMemAddr
    );
    
    BTBOOL
    
    DeviceBtj_RemoteNameRequestCancel(
        DEVICEBTJ_ADAPTER_P Adapter,
        DEV_MEM_ADDR DevMemAddr
    );
    
    BTBOOL
    
    DeviceBtj_Pincode(
        DEVICEBTJ_ADAPTER_P Adapter,
        BTPBYTE PincodeBuffer,
        BTBYTE PincodeLength
    );
    
    DEVICEBTJ_STATE
    
    DeviceBtj_Connect(
        DEVICEBTJ_ADAPTER_P Adapter,
        DEVICEBTJ_SERVICE_P Service,
        DEV_MEM_ADDR DevMemAddr
    );
    
    DEVICEBTJ_STATE
    
    DeviceBtj_Send(
        DEVICEBTJ_ADAPTER_P Adapter,
        DEVICEBTJ_SERVICE_P Service,
        BTPBYTE SppBuffer,
        BTWORD SppLength
    );
    
    DEVICEBTJ_STATE
    
    DeviceBtj_Disconnect(
        DEVICEBTJ_ADAPTER_P Adapter,
        DEVICEBTJ_SERVICE_P Service
    );
    
    BTBOOL
    
    DeviceBtj_ReadLocalName(
        DEVICEBTJ_ADAPTER_P Adapter
    );
    
    BTBOOL
    
    DeviceBtj_ReadLocalType(
        DEVICEBTJ_ADAPTER_P Adapter
    );
    
    BTBOOL
    
    DeviceBtj_WriteLocalName(
        DEVICEBTJ_ADAPTER_P Adapter,
        BTPBYTE LocalNameBuf,
        BTBYTE LocalNameLen
    );
    
    BTBOOL
    
    DeviceBtj_WriteLocalType(
        DEVICEBTJ_ADAPTER_P Adapter,
        DEVICEBTJ_DEVICE Device,
        DEV_MEM_TYPE DevMemType
    );
    
    BTBOOL
    
    DeviceBtj_WriteScanEnable(
        DEVICEBTJ_ADAPTER_P Adapter,
        BTBYTE SacnEnable
    );
    
    BTBOOL
    
    DeviceBtj_MemAddrToStrAddr(
        BTPBYTE MemAddrBuf,
        BTBYTE  MemAddrLen,
        BTPBYTE StrAddrBuf,
        BTBYTE  StrAddrLen
    );
    
    BTBOOL
    
    DeviceBtj_StrAddrToMemAddr(
        BTPBYTE StrAddrBuf,
        BTBYTE  StrAddrLen,
        BTPBYTE MemAddrBuf,
        BTBYTE  MemAddrLen
    );
    
    BTBOOL
    
    DeviceBtj_MemTypeToStrType(
        BTPBYTE MemTypeBuf,
        BTBYTE  MemTypeLen,
        BTPBYTE StrTypeBuf,
        BTBYTE  StrTypeLen
    );
    
    BTBOOL
    
    DeviceBtj_StrTypeToMemType(
        BTPBYTE StrTypeBuf,
        BTBYTE  StrTypeLen,
        BTPBYTE MemTypeBuf,
        BTBYTE  MemTypeLen
    );
    
    BTBOOL
    
    DeviceBtj_Shut(
        void
    );




#line 4 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"
#line 11 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"
typedef unsigned                   BITBYTE;
typedef unsigned                   BITWORD;


#line 38 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"





#line 51 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"



#line 72 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"



#line 76 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"
#line 77 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"
#line 78 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"
#line 1 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_Hci_All.h"




 
#line 18 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_Hci_All.h"


 
#line 46 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_Hci_All.h"
 
#line 58 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_Hci_All.h"
 
#line 67 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_Hci_All.h"


 
#line 80 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_Hci_All.h"
 






 
#line 139 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_Hci_All.h"
 
#line 156 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_Hci_All.h"
 
#line 168 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_Hci_All.h"



 

 


 






 




 




 






 
#line 233 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_Hci_All.h"
 
#line 247 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_Hci_All.h"
 
#line 262 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_Hci_All.h"


 
#line 322 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_Hci_All.h"


 






 







 
#line 350 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_Hci_All.h"


 



#pragma pack(1)

typedef __packed struct _HCI_STRUCT_COMMON_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_COMMON_T, *HCI_STRUCT_COMMON_P;
typedef __packed struct _HCI_STRUCT_INQUIRY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTBYTE       param_lap[0x03];
    BTBYTE       param_length;
    BTBYTE       param_response;
} HCI_STRUCT_INQUIRY_T, *HCI_STRUCT_INQUIRY_P;
typedef __packed struct _HCI_STRUCT_INQUIRY_CANCEL_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_INQUIRY_CANCEL_T, *HCI_STRUCT_INQUIRY_CANCEL_P;
typedef __packed struct _HCI_STRUCT_CONNECT_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_bd_addr;
    BTWORD       param_packet_type;
    BTBYTE       param_page_scan_repetition_mode;
    BTBYTE       param_reversed;
    BTWORD       param_clock_offset;
    BTBYTE       param_allow_role_switch;
} HCI_STRUCT_CONNECT_T, *HCI_STRUCT_CONNECT_P;
typedef __packed struct _HCI_STRUCT_CONNECT_CANCEL_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
} HCI_STRUCT_CONNECT_CANCEL_T, *HCI_STRUCT_CONNECT_CANCEL_P;
typedef __packed struct _HCI_STRUCT_DISCONNECT_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTWORD       param_handle;
    BTBYTE       param_reason;
} HCI_STRUCT_DISCONNECT_T, *HCI_STRUCT_DISCONNECT_P;
typedef __packed struct _HCI_STRUCT_ACCEPT_CONNECTION_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
    BTBYTE       param_role;
} HCI_STRUCT_ACCEPT_CONNECTION_T, *HCI_STRUCT_ACCEPT_CONNECTION_P;
typedef __packed struct _HCI_STRUCT_REJECT_CONNECTION_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
    BTBYTE       param_reason;
} HCI_STRUCT_REJECT_CONNECTION_T, *HCI_STRUCT_REJECT_CONNECTION_P;
typedef __packed struct _HCI_STRUCT_LINK_KEY_REPLY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
    DEV_LINK_KEY param_linkkey;
} HCI_STRUCT_LINK_KEY_REPLY_T, *HCI_STRUCT_LINK_KEY_REPLY_P;
typedef __packed struct _HCI_STRUCT_LINK_KEY_NEGATIVE_REPLY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
} HCI_STRUCT_LINK_KEY_NEGATIVE_REPLY_T, *HCI_STRUCT_LINK_KEY_NEGATIVE_REPLY_P;
typedef __packed struct _HCI_STRUCT_PIN_CODE_REPLY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
    BTBYTE       param_pincode_length;
    BTBYTE       param_pincode_buffer[(0x10)];
} HCI_STRUCT_PIN_CODE_REPLY_T, *HCI_STRUCT_PIN_CODE_REPLY_P;




typedef __packed struct _HCI_STRUCT_PIN_CODE_NEGATIVE_REPLY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
} HCI_STRUCT_PIN_CODE_NEGATIVE_REPLY_T, *HCI_STRUCT_PIN_CODE_NEGATIVE_REPLY_P;

typedef __packed struct _HCI_STRUCT_REMOTE_NAME_REQUEST_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
    BTBYTE       param_page_scan_repetition_mode;
    BTBYTE       param_reversed;
    BTWORD       param_clock_offset;
} HCI_STRUCT_REMOTE_NAME_REQUEST_T, *HCI_STRUCT_REMOTE_NAME_REQUEST_P;
typedef __packed struct _HCI_STRUCT_REMOTE_NAME_REQUEST_CANCEL_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
} HCI_STRUCT_REMOTE_NAME_REQUEST_CANCEL_T, *HCI_STRUCT_REMOTE_NAME_REQUEST_CANCEL_P;
typedef __packed struct _HCI_STRUCT_REMOTE_SUPPORTED_FEATURE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTWORD       param_handle;
} HCI_STRUCT_REMOTE_SUPPORTED_FEATURE_T, *HCI_STRUCT_REMOTE_SUPPORTED_FEATURE_P;
typedef __packed struct _HCI_STRUCT_REMOTE_EXTENDED_FEATURE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTWORD       param_handle;
    BTBYTE       param_page;
} HCI_STRUCT_REMOTE_EXTENDED_FEATURE_T, *HCI_STRUCT_REMOTE_EXTENDED_FEATURE_P;
typedef __packed struct _HCI_STRUCT_REMOTE_VERSION_INFORMATION_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTWORD       param_handle;
} HCI_STRUCT_REMOTE_VERSION_INFORMATION_T, *HCI_STRUCT_REMOTE_VERSION_INFORMATION_P;
typedef __packed struct _HCI_STRUCT_IO_CAPABILITY_REPLY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
    BTBYTE       param_io_capability;
    BTBYTE       param_oob_data_present;
    BTBYTE       param_req_authentication;
} HCI_STRUCT_IO_CAPABILITY_REPLY_T, *HCI_STRUCT_IO_CAPABILITY_REPLY_P;
typedef __packed struct _HCI_STRUCT_IO_CAPABILITY_NEGATIVE_REPLY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
    BTBYTE       param_reason;
} HCI_STRUCT_IO_CAPABILITY_NEGATIVE_REPLY_T, *HCI_STRUCT_IO_CAPABILITY_NEGATIVE_REPLY_P;
typedef __packed struct _HCI_STRUCT_USER_CONFIRMATION_REPLY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
} HCI_STRUCT_USER_CONFIRMATION_REPLY_T, *HCI_STRUCT_USER_CONFIRMATION_REPLY_P;
typedef __packed struct _HCI_STRUCT_USER_CONFIRMATION_NEGATIVE_REPLY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
} HCI_STRUCT_USER_CONFIRMATION_NEGATIVE_REPLY_T, *HCI_STRUCT_USER_CONFIRMATION_NEGATIVE_REPLY_P;
typedef __packed struct _HCI_STRUCT_USER_PASSKEY_REPLY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
    BTDWORD       param_numeric;
} HCI_STRUCT_USER_PASSKEY_REPLY_T, *HCI_STRUCT_USER_PASSKEY_REPLY_P;
typedef __packed struct _HCI_STRUCT_USER_PASSKEY_NEGATIVE_REPLY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
} HCI_STRUCT_USER_PASSKEY_NEGATIVE_REPLY_T, *HCI_STRUCT_USER_PASSKEY_NEGATIVE_REPLY_P;
typedef __packed struct _HCI_STRUCT_REMOTE_OOB_DATA_REPLY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
    BTBYTE       param_c[0x10];
    BTBYTE       param_r[0x10];
} HCI_STRUCT_REMOTE_OOB_DATA_REPLY_T, *HCI_STRUCT_REMOTE_OOB_DATA_REPLY_P;
typedef __packed struct _HCI_STRUCT_REMOTE_OOB_DATA_NEGATIVE_REPLY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
} HCI_STRUCT_REMOTE_OOB_DATA_NEGATIVE_REPLY_T, *HCI_STRUCT_REMOTE_OOB_DATA_NEGATIVE_REPLY_P;
typedef __packed struct _HCI_STRUCT_SWITCH_ROLE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
    BTBYTE param_role;
} HCI_STRUCT_SWITCH_ROLE_T, *HCI_STRUCT_SWITCH_ROLE_P;
typedef __packed struct _HCI_STRUCT_RESET_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_RESET_T, *HCI_STRUCT_RESET_P;
typedef __packed struct _HCI_STRUCT_READ_STORED_LINK_KEY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
    BTBYTE       param_read_all_flag;
} HCI_STRUCT_READ_STORED_LINK_KEY_T, *HCI_STRUCT_READ_STORED_LINK_KEY_P;
typedef __packed struct _HCI_STRUCT_WRITE_STORED_LINK_KEY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTBYTE       param_num;
    DEV_MEM_ADDR param_dev_mem_addr;
    DEV_LINK_KEY param_dev_link_key;
} HCI_STRUCT_WRITE_STORED_LINK_KEY_T, *HCI_STRUCT_WRITE_STORED_LINK_KEY_P;
typedef __packed struct _HCI_STRUCT_DELETE_STORED_LINK_KEY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_ADDR param_dev_mem_addr;
} HCI_STRUCT_DELETE_STORED_LINK_KEY_T, *HCI_STRUCT_DELETE_STORED_LINK_KEY_P;
typedef __packed struct _HCI_STRUCT_READ_LOCAL_NAME_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_READ_LOCAL_NAME_T, *HCI_STRUCT_READ_LOCAL_NAME_P;
typedef __packed struct _HCI_STRUCT_WRITE_LOCAL_NAME_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;



} HCI_STRUCT_WRITE_LOCAL_NAME_T, *HCI_STRUCT_WRITE_LOCAL_NAME_P;
typedef __packed struct _HCI_STRUCT_READ_SCAN_ENABLE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_READ_SCAN_ENABLE_T, *HCI_STRUCT_READ_SCAN_ENABLE_P;
typedef __packed struct _HCI_STRUCT_WRITE_SCAN_ENABLE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTBYTE       param_scan_enable;
} HCI_STRUCT_WRITE_SCAN_ENABLE_T, *HCI_STRUCT_WRITE_SCAN_ENABLE_P;
typedef __packed struct _HCI_STRUCT_READ_CLASS_OF_DEVICE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_READ_CLASS_OF_DEVICE_T, *HCI_STRUCT_READ_CLASS_OF_DEVICE_P;
typedef __packed struct _HCI_STRUCT_WRITE_CLASS_OF_DEVICE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    DEV_MEM_TYPE param_cod;
} HCI_STRUCT_WRITE_CLASS_OF_DEVICE_T, *HCI_STRUCT_WRITE_CLASS_OF_DEVICE_P;
typedef __packed struct _HCI_STRUCT_READ_CURRENT_IAC_LAP_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_READ_CURRENT_IAC_LAP_T, *HCI_STRUCT_READ_CURRENT_IAC_LAP_P;
typedef __packed struct _HCI_STRUCT_WRITE_CURRENT_IAC_LAP_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTBYTE       param_num;
    BTBYTE       param_lap[0x03];
} HCI_STRUCT_WRITE_CURRENT_IAC_LAP_T, *HCI_STRUCT_WRITE_CURRENT_IAC_LAP_P;
typedef __packed struct _HCI_STRUCT_READ_INQUIRY_SCAN_TYPE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_READ_INQUIRY_SCAN_TYPE_T, *HCI_STRUCT_READ_INQUIRY_SCAN_TYPE_P;
typedef __packed struct _HCI_STRUCT_WRITE_INQUIRY_SCAN_TYPE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTBYTE       param_type;
} HCI_STRUCT_WRITE_INQUIRY_SCAN_TYPE_T, *HCI_STRUCT_WRITE_INQUIRY_SCAN_TYPE_P;
typedef __packed struct _HCI_STRUCT_READ_INQUIRY_MODE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_READ_INQUIRY_MODE_T, *HCI_STRUCT_READ_INQUIRY_MODE_P;
typedef __packed struct _HCI_STRUCT_WRITE_INQUIRY_MODE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTBYTE       param_mode;
} HCI_STRUCT_WRITE_INQUIRY_MODE_T, *HCI_STRUCT_WRITE_INQUIRY_MODE_P;
typedef __packed struct _HCI_STRUCT_READ_PAGE_SCAN_TYPE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_READ_PAGE_SCAN_TYPE_T, *HCI_STRUCT_READ_PAGE_SCAN_TYPE_P;
typedef __packed struct _HCI_STRUCT_WRITE_PAGE_SCAN_TYPE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTBYTE       param_type;
} HCI_STRUCT_WRITE_PAGE_SCAN_TYPE_T, *HCI_STRUCT_WRITE_PAGE_SCAN_TYPE_P;
typedef __packed struct _HCI_STRUCT_READ_VERSION_INFORMATION_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_READ_VERSION_INFORMATION_T, *HCI_STRUCT_READ_VERSION_INFORMATION_P;
typedef __packed struct _HCI_STRUCT_READ_SUPPORTED_COMMANDS_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_READ_SUPPORTED_COMMANDS_T, *HCI_STRUCT_READ_SUPPORTED_COMMANDS_P;
typedef __packed struct _HCI_STRUCT_READ_SUPPORTED_FEATURES_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_READ_SUPPORTED_FEATURES_T, *HCI_STRUCT_READ_SUPPORTED_FEATURES_P;
typedef __packed struct _HCI_STRUCT_READ_EXTENDED_FEATURES_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTBYTE       param_page;
} HCI_STRUCT_READ_EXTENDED_FEATURES_T, *HCI_STRUCT_READ_EXTENDED_FEATURES_P;
typedef __packed struct _HCI_STRUCT_READ_BUFFER_SIZE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_READ_BUFFER_SIZE_T, *HCI_STRUCT_READ_BUFFER_SIZE_P;
typedef __packed struct _HCI_STRUCT_WRITE_LINK_SUPERVISION_TIMEOUT_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTWORD       param_handles;
    BTWORD       param_timeout;
} HCI_STRUCT_WRITE_LINK_SUPERVISION_TIMEOUT_T, *HCI_STRUCT_WRITE_LINK_SUPERVISION_TIMEOUT_P;
typedef __packed struct _HCI_STRUCT_READ_DEV_ADDR_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_READ_DEV_ADDR_T, *HCI_STRUCT_READ_DEV_ADDR_P;
typedef __packed struct _HCI_STRUCT_READ_LINK_QUALITY_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTWORD       param_handle;
} HCI_STRUCT_READ_LINK_QUALITY_T, *HCI_STRUCT_READ_LINK_QUALITY_P;
typedef __packed struct _HCI_STRUCT_READ_RSSI_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTWORD       param_handle;
} HCI_STRUCT_READ_RSSI_T, *HCI_STRUCT_READ_RSSI_P;
typedef __packed struct _HCI_STRUCT_READ_SIMPLE_PARING_MODE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
} HCI_STRUCT_READ_SIMPLE_PARING_MODE_T, *HCI_STRUCT_READ_SIMPLE_PARING_MODE_P;
typedef __packed struct _HCI_STRUCT_WRITE_SIMPLE_PARING_MODE_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTBYTE       param_mode;
} HCI_STRUCT_WRITE_SIMPLE_PARING_MODE_T, *HCI_STRUCT_WRITE_SIMPLE_PARING_MODE_P;
typedef __packed struct _HCI_STRUCT_WRITE_LINK_POLICY_SET_T
{
    BTCHAR       packet;
    BTWORD       opcode;
    BTBYTE       length;
    BTWORD       param_handles;
    BTWORD       policy_settings;
} HCI_STRUCT_WRITE_LINK_POLICY_SET_T,*HCI_STRUCT_WRITE_LINK_POLICY_SET_P;
typedef __packed union _HCI_COMMAND_T
{
    HCI_STRUCT_INQUIRY_T                                    Inquiry;
    HCI_STRUCT_INQUIRY_CANCEL_T                             InquiryCancel;
    HCI_STRUCT_CONNECT_T                                    Connect;
    HCI_STRUCT_DISCONNECT_T                                 Disconnect;
    HCI_STRUCT_CONNECT_CANCEL_T                             ConnectCancel;
    HCI_STRUCT_ACCEPT_CONNECTION_T                          AcceptConnection;
    HCI_STRUCT_REJECT_CONNECTION_T                          RejectConnection;
    HCI_STRUCT_LINK_KEY_REPLY_T                             LinkKeyReply;
    HCI_STRUCT_LINK_KEY_NEGATIVE_REPLY_T                    LinkKeyNegativeReply;
    HCI_STRUCT_PIN_CODE_REPLY_T                             PinCodeReply;
    HCI_STRUCT_PIN_CODE_NEGATIVE_REPLY_T                    PinCodeNegativeReply;
    HCI_STRUCT_REMOTE_NAME_REQUEST_T                        RemoteNameRequest;
    HCI_STRUCT_REMOTE_NAME_REQUEST_CANCEL_T                 RemoteNameRequestCancel;
    HCI_STRUCT_REMOTE_SUPPORTED_FEATURE_T                   RemoteSupportedFeature;
    HCI_STRUCT_REMOTE_EXTENDED_FEATURE_T                    RemoteExtendedFeature;
    HCI_STRUCT_REMOTE_VERSION_INFORMATION_T                 RemoteVersionInformation;
    HCI_STRUCT_IO_CAPABILITY_REPLY_T                        IoCapabilityReply;
    HCI_STRUCT_IO_CAPABILITY_NEGATIVE_REPLY_T               IoCapabilityNegativeReply;
    HCI_STRUCT_USER_CONFIRMATION_REPLY_T                    UserConfirmationReply;
    HCI_STRUCT_USER_CONFIRMATION_NEGATIVE_REPLY_T           UserConfirmationNegativeReply;
    HCI_STRUCT_USER_PASSKEY_REPLY_T                         UserPasskeyReply;
    HCI_STRUCT_USER_PASSKEY_NEGATIVE_REPLY_T                UserPasskeyNegativeReply;
    HCI_STRUCT_REMOTE_OOB_DATA_REPLY_T                      RemoteOobDataReply;
    HCI_STRUCT_REMOTE_OOB_DATA_NEGATIVE_REPLY_T             RemoteOobDataNegativeReply;
    HCI_STRUCT_SWITCH_ROLE_T                                SwitchRole;
    HCI_STRUCT_RESET_T                                      Reset;
    HCI_STRUCT_READ_STORED_LINK_KEY_T                       ReadStoredLinkKey;
    HCI_STRUCT_WRITE_STORED_LINK_KEY_T                      WriteStoredLinkKey;
    HCI_STRUCT_DELETE_STORED_LINK_KEY_T                     DeleteStoredLinkKey;
    HCI_STRUCT_READ_LOCAL_NAME_T                            ReadLocalName;
    HCI_STRUCT_WRITE_LOCAL_NAME_T                           WriteLocalName;
    HCI_STRUCT_READ_SCAN_ENABLE_T                           ReadScanEnable;
    HCI_STRUCT_WRITE_SCAN_ENABLE_T                          WriteScanEnable;
    HCI_STRUCT_READ_CLASS_OF_DEVICE_T                       ReadClassOfDevice;
    HCI_STRUCT_WRITE_CLASS_OF_DEVICE_T                      WriteClassOfDevice;
    HCI_STRUCT_READ_CURRENT_IAC_LAP_T                       ReadCurrentIacLap;
    HCI_STRUCT_WRITE_CURRENT_IAC_LAP_T                      WriteCurrentIacLap;
    HCI_STRUCT_READ_INQUIRY_SCAN_TYPE_T                     ReadInquiryScanType;
    HCI_STRUCT_WRITE_INQUIRY_SCAN_TYPE_T                    WriteInquiryScanType;
    HCI_STRUCT_READ_INQUIRY_MODE_T                          ReadInquiryMode;
    HCI_STRUCT_WRITE_INQUIRY_MODE_T                         WriteInquiryMode;
    HCI_STRUCT_READ_PAGE_SCAN_TYPE_T                        ReadPageScanType;
    HCI_STRUCT_WRITE_PAGE_SCAN_TYPE_T                       WritePageScanType;
    HCI_STRUCT_READ_VERSION_INFORMATION_T                   ReadVersionInformation;
    HCI_STRUCT_READ_SUPPORTED_COMMANDS_T                    ReadSupportedCommands;
    HCI_STRUCT_READ_SUPPORTED_FEATURES_T                    ReadSupportedFeatures;
    HCI_STRUCT_READ_EXTENDED_FEATURES_T                     ReadExtendedFeatures;
    HCI_STRUCT_READ_BUFFER_SIZE_T                           ReadBufferSize;
    HCI_STRUCT_WRITE_LINK_SUPERVISION_TIMEOUT_T             WriteLinkSupervisionTimeout;
    HCI_STRUCT_READ_DEV_ADDR_T                              ReadDevAddr;
    HCI_STRUCT_READ_LINK_QUALITY_T                          ReadLinkQuality;
    HCI_STRUCT_READ_RSSI_T                                  ReadRssi;
    HCI_STRUCT_READ_SIMPLE_PARING_MODE_T                    ReadSimpleParingMode;
    HCI_STRUCT_WRITE_SIMPLE_PARING_MODE_T                   WriteSimpleParingMode;
    HCI_STRUCT_WRITE_LINK_POLICY_SET_T                          WriteLinkPolicySettings;
} HCI_COMMAND_T;





 





 





 






 




 




 
#line 876 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_Hci_All.h"


 
#line 885 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_Hci_All.h"

#line 79 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"
#line 1 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_Hci_Cmd.h"




 



#pragma pack(1)

typedef __packed struct _HCI_COMMON_T
{
    BTBYTE  hci_packet;
    BITWORD hci_handle: 12;
    BITWORD hci_pbflag: 2;
    BITWORD hci_bcflag: 2;
    BTWORD  hci_length;
    BTWORD  l2c_length;
    BTWORD  l2c_channel;
} HCI_COMMON_T, *HCI_COMMON_P;





 



    void
    DeviceHci_Common(
        BTPBYTE packet,
        BTWORD handles,
        BTWORD channel,
        BTWORD length
    );
    void
    Write_Link_Policy_Settings(
        DEVICEBTJ_ADAPTER_P adapter,
        BTWORD param_handle,
        BTWORD policy_settings
    );
    void
    DeviceHci_InquiryStart(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_InquiryCancel(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_Connect(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr
    );
    void
    DeviceHci_ConnectCancel(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr
    );
    void
    DeviceHci_Disconnect(
        DEVICEBTJ_ADAPTER_P adapter,
        BTWORD param_handle,
        BTBYTE param_reason
    );
    void
    DeviceHci_AcceptConnection(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr,
        BTBYTE param_role
    );
    void
    DeviceHci_RejectConnection(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr,
        BTBYTE param_reason
    );
    void
    DeviceHci_LinkKeyReply(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr,
        DEV_LINK_KEY param_linkkey
    );
    void
    DeviceHci_LinkKeyNegativeReply(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr
    );
    void 
	DeviceHci_PinCodeReply(
		DEVICEBTJ_ADAPTER_P adapter,
		DEV_MEM_ADDR param_dev_mem_addr,
		BTPBYTE param_pincode_buf,
		BTBYTE pin_code_len
	);
    void
    DeviceHci_PinCodeNegativeReply(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr
    );
    void
    DeviceHci_RemoteNameRequest(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr
    );
    void
    DeviceHci_RemoteNameRequestCancel(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr
    );
    void
    DeviceHci_RemoteSupportedFeature(
        DEVICEBTJ_ADAPTER_P adapter,
        BTWORD param_handle
    );
    void
    DeviceHci_RemoteExtendedFeature(
        DEVICEBTJ_ADAPTER_P adapter,
        BTWORD param_handle,
        BTBYTE param_page
    );
    void
    DeviceHci_RemoteVersionInformation(
        DEVICEBTJ_ADAPTER_P adapter,
        BTWORD param_handle
    );
    void
    DeviceHci_IoCapabilityReply(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr
    );
    void
    DeviceHci_IoCapabilityNegativeReply(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr,
        BTBYTE param_reason
    );
    void
    DeviceHci_UserConfirmationReply(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr
    );
    void
    DeviceHci_UserConfirmationNegativeReply(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr
    );
    void
    DeviceHci_UserPasskeyReply(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr,
        BTWORD param_numeric
    );
    void
    DeviceHci_UserPasskeyNegativeReply(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr
    );
    void
    DeviceHci_OobDataReply(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr,
        BTPBYTE param_c,
        BTPBYTE param_r
    );
    void
    DeviceHci_OobDataNegativeReply(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr
    );
    void
    DeviceHci_SwitchRole(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr,
        BTBYTE param_role
    );
    void Role_Discovery_Command(
      DEVICEBTJ_ADAPTER_P adapter,
      BTWORD param_handle
    );
    void
    DeviceHci_Reset(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_ReadStoredLinkkey(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr
    );
    void
    DeviceHci_WriteStoredLinkkey(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR param_dev_mem_addr,
        DEV_LINK_KEY param_dev_link_key
    );
    void
    DeviceHci_ReadLocalName(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_WriteLocalName(
        DEVICEBTJ_ADAPTER_P adapter,
        BTPBYTE param_local_name_buf,
        BTBYTE param_local_name_len
    );
    void
    DeviceHci_ReadScanEnable(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_WriteScanEnable(
        DEVICEBTJ_ADAPTER_P adapter,
        BTBYTE value
    );
    void
    DeviceHci_ReadClassOfDevice(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_WriteClassOfDevice(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_TYPE param_cod
    );
    void
    DeviceHci_ReadCurrentIacLap(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_WriteCurrentIacLap(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_ReadInquiryScanType(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_WriteInquiryScanType(
        DEVICEBTJ_ADAPTER_P adapter,
        BTBYTE type
    );
    void
    DeviceHci_ReadInquiryMode(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_WriteInquiryMode(
        DEVICEBTJ_ADAPTER_P adapter,
        BTBYTE mode
    );
    void
    DeviceHci_ReadPageScanType(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_WritePageScanType(
        DEVICEBTJ_ADAPTER_P adapter,
        BTBYTE type
    );
    void
    DeviceHci_ReadLocalVersionInformation(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_ReadLocalSupportedCommands(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_ReadLocalSupportedFeatures(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_ReadLocalExtendedFeatures(
        DEVICEBTJ_ADAPTER_P adapter,
        BTBYTE param_page
    );
    void
    DeviceHci_ReadBufferSize(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_WriteLinkSupervisionTimeout(
        DEVICEBTJ_ADAPTER_P adpater,
        BTWORD param_handles,
        BTWORD param_timeout
    );
    void
    DeviceHci_ReadLocalAddr(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_WriteLocalAddr(
        DEVICEBTJ_ADAPTER_P adapter,
        BTPBYTE param_local_addr_buf
    );
    void
    DeviceHci_ReadLinkQuality(
        DEVICEBTJ_ADAPTER_P adapter,
        BTWORD param_handle
    );
    void
    DeviceHci_ReadRssi(
        DEVICEBTJ_ADAPTER_P adapter,
        BTWORD param_handle
    );
    void
    DeviceHci_ReadSimpleParingMode(
        DEVICEBTJ_ADAPTER_P adapter
    );
    void
    DeviceHci_WriteSimpleParingMode(
        DEVICEBTJ_ADAPTER_P adapter,
        BTBYTE param_mode
    );
    void
    DeviceHci_AuthenticationRequestedCommand(
        DEVICEBTJ_ADAPTER_P adapter,
        BTWORD param_handle
    );
    void
    DeviceHci_SetConnectionEncryptionCommand(
        DEVICEBTJ_ADAPTER_P adapter,
        BTWORD param_handle
    );
    void Write_Extended_Inquiry_Response_Command(
    DEVICEBTJ_ADAPTER_P adapter,
    BTPBYTE param_local_name_buf,
    BTBYTE param_local_name_len
    );
#line 80 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"
#line 1 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_Hci_Evt.h"




 








typedef enum _HCI_STATE
{
    HCI_STATE_TYPE,
    HCI_STATE_HEAD_ACL_HANDLE_ONE,
    HCI_STATE_HEAD_ACL_HANDLE_TWO,
    HCI_STATE_HEAD_ACL_LENGTH_ONE,
    HCI_STATE_HEAD_ACL_LENGTH_TWO,
    HCI_STATE_HEAD_ACL_PACKET,
    HCI_STATE_HEAD_SCO_HANDLE_ONE,
    HCI_STATE_HEAD_SCO_HANDLE_TWO,
    HCI_STATE_HEAD_SCO_LENGTH,
    HCI_STATE_HEAD_SCO_PACKET,
    HCI_STATE_HEAD_EVT_CODE,
    HCI_STATE_HEAD_EVT_LENGTH,
    HCI_STATE_HEAD_EVT_PACKET
} HCI_STATE;


 



#pragma pack(1)

typedef __packed struct _HCI_MACHINE_T
{
    BTBYTE       hci_state;
    BTWORD       hci_handle;
    BTWORD       hci_machine_uart_idx;
    BTWORD       hci_machine_uart_len;
    BTBYTE       hci_machine_uart_buf[(0x00ff)];





} HCI_MACHINE_T, *HCI_MACHINE_P;
typedef __packed struct _HCI_CONTEXT_T
{
    BTWORD       hci_context_handle;
    DEV_MEM_ADDR hci_context_devaddr;
    BTWORD       hci_packets_pool_len;
    BTBYTE       hci_packets_pool_buf[(0x0250)];
    BTWORD       app_packets_pool_len;
    BTBYTE       app_packets_pool_buf[(0x0080)];
} HCI_CONTEXT_T, *HCI_CONTEXT_P;
typedef struct _HCI_EVENT_INQUIRY_RESULT_T
{
    BTBYTE       num_response;
    DEV_MEM_ADDR dev_mem_addr;
    BTBYTE       page_scan_repetition_mode;
    BTBYTE       page_scan_period_mode;
    BTBYTE       reversed;
    DEV_MEM_TYPE class_of_device;
    BTWORD       clock_offset;
} HCI_EVENT_INQUIRY_RESULT_T, *HCI_EVENT_INQUIRY_RESULT_P;
typedef __packed struct _HCI_EVENT_INQUIRY_RESULT_WITH_RSSI_T
{
    BTBYTE       num_response;
    DEV_MEM_ADDR dev_mem_addr;
    BTBYTE       page_scan_repetition_mode;
    BTBYTE       page_scan_period_mode;
    DEV_MEM_TYPE class_of_device;
    BTWORD       clock_offset;
    BTBYTE       rssi;
} HCI_EVENT_INQUIRY_RESULT_WITH_RSSI_T, *HCI_EVENT_INQUIRY_RESULT_WITH_RSSI_P;
typedef __packed struct _HCI_EVENT_CONNECTION_COMPLETE_T
{
    BTBYTE       status;
    BTWORD       connection_handle;
    DEV_MEM_ADDR dev_mem_addr;
    BTBYTE       link_type;
    BTBYTE       encryption_mode;
} HCI_EVENT_CONNECTION_COMPLETE_T, *HCI_EVENT_CONNECTION_COMPLETE_P;
typedef __packed struct _HCI_EVENT_CONNECTION_REQUEST_T
{
    DEV_MEM_ADDR dev_mem_addr;
    DEV_MEM_TYPE dev_mem_type;
    BTBYTE       link_type;
} HCI_EVENT_CONNECTION_REQUEST_T, *HCI_EVENT_CONNECTION_REQUEST_P;
typedef __packed struct _HCI_EVENT_DISCONNECTION_COMPLETE_T
{
    BTBYTE       status;
    BTWORD       connection_handle;
    BTBYTE       reason;
} HCI_EVENT_DISCONNECTION_COMPLETE_T, *HCI_EVENT_DISCONNECTION_COMPLETE_P;
typedef __packed struct _HCI_EVENT_COMMAND_COMPLETE_T
{
    BTBYTE       num_packets;
    BTWORD       evt_opcode;
    BTBYTE       evt_return[0x01];
} HCI_EVENT_COMMAND_COMPLETE_T, *HCI_EVENT_COMMAND_COMPLETE_P;
typedef __packed struct _HCI_EVENT_READ_BUFFER_SIZE_T
{
    BTBYTE       status;
    BTWORD       acl_packets_len;
    BTBYTE       sco_packets_len;
    BTWORD       acl_packets_num;
    BTWORD       sco_packets_num;
} HCI_EVENT_READ_BUFFER_SIZE_T, *HCI_EVENT_READ_BUFFER_SIZE_P;
typedef __packed struct _HCI_EVENT_READ_LOCAL_ADDR_T
{
    BTBYTE       status;
    DEV_MEM_ADDR dev_mem_addr;
} HCI_EVENT_READ_LOCAL_ADDR_T, *HCI_EVENT_READ_LOCAL_ADDR_P;
typedef __packed struct _HCI_EVENT_READ_LOCAL_NAME_T
{
    BTBYTE       status;
    DEV_MEM_NAME dev_mem_name;
} HCI_EVENT_READ_LOCAL_NAME_T, *HCI_EVENT_READ_LOCAL_NAME_P;
typedef __packed struct _HCI_EVENT_READ_CLASS_OF_DEVICE_T
{
    BTBYTE       status;
    DEV_MEM_TYPE dev_mem_type;
} HCI_EVENT_READ_CLASS_OF_DEVICE_T, *HCI_EVENT_READ_CLASS_OF_DEVICE_P;
typedef __packed struct _HCI_EVENT_NUMBER_OF_COMPLETED_PACKETS_T
{
    BTBYTE       num_of_handles;
    BTWORD       val_of_handle;
    BTWORD       val_of_packet;
} HCI_EVENT_NUMBER_OF_COMPLETED_PACKETS_T, *HCI_EVENT_NUMBER_OF_COMPLETED_PACKETS_P;
typedef __packed struct _HCI_EVENT_LINKKEY_REQUEST_T
{
    DEV_MEM_ADDR dev_mem_addr;
} HCI_EVENT_LINKKEY_REQUEST_T, *HCI_EVENT_LINKKEY_REQUEST_P;
typedef __packed struct _HCI_EVENT_LINKKEY_NOTIFICATION_T
{
    DEV_MEM_ADDR dev_mem_addr;
    DEV_LINK_KEY dev_link_key;
    BTBYTE       key_type;
} HCI_EVENT_LINKKEY_NOTIFICATION_T, *HCI_EVENT_LINKKEY_NOTIFICATION_P;
typedef __packed struct _HCI_EVENT_PINCODE_REQUEST_T
{
    DEV_MEM_ADDR dev_mem_addr;
} HCI_EVENT_PINCODE_REQUEST_T, *HCI_EVENT_PINCODE_REQUEST_P;
typedef __packed struct _HCI_EVENT_RETURN_LINK_KEYS_T
{
    BTBYTE       key_num;
    DEV_MEM_ADDR dev_mem_addr;
    DEV_LINK_KEY dev_link_key;
} HCI_EVENT_RETURN_LINK_KEYS_T, *HCI_EVENT_RETURN_LINK_KEYS_P;
typedef __packed struct _HCI_EVENT_REMOTE_NAME_REQUEST_COMPLETE_T
{
    BTBYTE       status;
    DEV_MEM_ADDR dev_mem_addr;
    DEV_MEM_NAME dev_mem_name;
} HCI_EVENT_REMOTE_NAME_REQUEST_COMPLETE_T, *HCI_EVENT_REMOTE_NAME_REQUEST_COMPLETE_P;
typedef __packed struct _HCI_EVENT_REMOTE_NAME_REQUEST_CANCELLED_T
{
    BTBYTE       status;
    DEV_MEM_ADDR dev_mem_addr;
} HCI_EVENT_REMOTE_NAME_REQUEST_CANCELLED_T, *HCI_EVENT_REMOTE_NAME_REQUEST_CANCELLED_P;
typedef __packed struct _HCI_EVENT_READ_STORED_LINK_KEY_T
{
    BTBYTE       status;
    BTWORD       max_nums_keys;
    BTWORD       num_keys_read;
} HCI_EVENT_READ_STORED_LINK_KEY_T, *HCI_EVENT_READ_STORED_LINK_KEY_P;
typedef __packed struct _HCI_EVENT_WRITE_STORED_LINK_KEY_T
{
    BTBYTE       status;
    BTBYTE       num_keys_written;
} HCI_EVENT_WRITE_STORED_LINK_KEY_T, *HCI_EVENT_WRITE_STORED_LINK_KEY_P;
typedef __packed struct _HCI_EVENT_DELETE_STORED_LINK_KEY_T
{
    BTBYTE       status;
    BTWORD       num_keys_deleted;
} HCI_EVENT_DELETE_STORED_LINK_KEY_T, *HCI_EVENT_DELETE_STORED_LINK_KEY_P;
typedef __packed struct _HCI_EVENT_LOCAL_SUPPORTED_COMMAND_T
{
    BTBYTE       status;
    BTBYTE       cmd_feature[(0x08)];
} HCI_EVENT_LOCAL_SUPPORTED_COMMAND_T, *HCI_EVENT_LOCAL_SUPPORTED_COMMAND_P;
typedef __packed struct _HCI_EVENT_LOCAL_SUPPORTED_FEATURE_T
{
    BTBYTE       status;
    BTBYTE       lmp_feature[(0x08)];
} HCI_EVENT_LOCAL_SUPPORTED_FEATURE_T, *HCI_EVENT_LOCAL_SUPPORTED_FEATURE_P;
typedef __packed struct _HCI_EVENT_IO_CAPABILITY_REQUEST_T
{
    DEV_MEM_ADDR dev_mem_addr;
} HCI_EVENT_IO_CAPABILITY_REQUEST_T, *HCI_EVENT_IO_CAPABILITY_REQUEST_P;
typedef __packed struct _HCI_EVENT_USER_CONFIRMATION_REQUEST_T
{
    DEV_MEM_ADDR dev_mem_addr;
    BTDWORD      req_numeric;
} HCI_EVENT_USER_CONFIRMATION_REQUEST_T, *HCI_EVENT_USER_CONFIRMATION_REQUEST_P;
typedef __packed struct _HCI_EVENT_ROLE_CHANGE_T
{
    BTBYTE       status;
    DEV_MEM_ADDR dev_mem_addr;
    BTBYTE       new_role;
} HCI_EVENT_ROLE_CHANGE_T, *HCI_EVENT_ROLE_CHANGE_P;
typedef __packed struct _HCI_EVENT_ENCRPPTION_CHANGE_T
{
    BTBYTE       status;
    BTWORD       connection_handle;
    BTBYTE       Encryption_enable;
} HCI_EVENT_ENCRPPTION_CHANGE_T, *HCI_ENCRPPTION_ROLE_CHANGE_P;






 
typedef void (*PHCICALLBACK)(DEVICEBTJ_ADAPTER_P adapter, BTPBYTE packet, BTWORD length);



    void
    DeviceHci_Callback(
        DEVICEBTJ_ADAPTER_P adapter,
        BTPBYTE packet,
        BTWORD  length
    );
    void
    DeviceHci_Events(
        DEVICEBTJ_ADAPTER_P adapter,
        BTWORD  events,
        BTPBYTE packet,
        BTWORD length
    );
    void
    DeviceHci_Events_Complete(
        DEVICEBTJ_ADAPTER_P adapter,
        BTWORD  opcode,
        BTPBYTE packet,
        BTWORD length
    );
#line 81 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"
#line 1 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_L2c.h"




 






 
#line 24 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_L2c.h"


 





 
#line 43 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_L2c.h"


 
#line 64 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_L2c.h"


 
typedef enum
{
    L2C_MAIN_STATE_CLOSED,
    L2C_MAIN_STATE_WAIT_CONNECT,
    L2C_MAIN_STATE_WAIT_CONNECT_RSP,
    L2C_MAIN_STATE_CONFIG,
    L2C_MAIN_STATE_OPEN,
    L2C_MAIN_STATE_WAIT_DISCONNECT
} L2C_MAIN_STATE;
typedef enum
{
    L2C_CONF_STATE_WAIT_CONFIG,
    L2C_CONF_STATE_WAIT_SEND_CONFIG,
    L2C_CONF_STATE_WAIT_CONFIG_REQ_RSP,
    L2C_CONF_STATE_WAIT_CONFIG_RSP,
    L2C_CONF_STATE_WAIT_CONFIG_REQ
} L2C_CONF_STATE;


 



#pragma pack(1)

typedef __packed struct _L2C_CONTEXT_T
{
    BTBYTE l2c_dir;
    BTWORD l2c_psm;
    BTWORD l2c_scid;
    BTWORD l2c_dcid;
    BTWORD l2c_dmtu;
    BTBYTE l2c_diden;
    BTBYTE l2c_main_state;
    BTBYTE l2c_conf_state;
    HCI_CONTEXT_P hci_context;
} L2C_CONTEXT_T, *L2C_CONTEXT_P;
typedef __packed struct _L2C_HEADERS_T
{
    BTWORD l2c_length;
    BTWORD l2c_chan;
} L2C_HEADERS_T, *L2C_HEADERS_P;
typedef __packed struct _L2C_REJECT_REQ_T
{
    BTBYTE signal_code;
    BTBYTE signal_iden;
    BTWORD signal_length;
    BTBYTE packet_reason;
} L2C_REJECT_REQ_T, *L2C_REJECT_REQ_P;
typedef __packed struct _L2C_CONNECT_REQ_T
{
    BTBYTE signal_code;
    BTBYTE signal_iden;
    BTWORD signal_length;
    BTWORD packet_psm;
    BTWORD packet_scid;
} L2C_CONNECT_REQ_T, *L2C_CONNECT_REQ_P;
typedef __packed struct _L2C_CONNECT_RSP_T
{
    BTBYTE signal_code;
    BTBYTE signal_iden;
    BTWORD signal_length;
    BTWORD packet_dcid;
    BTWORD packet_scid;
    BTWORD packet_result;
    BTWORD packet_status;
} L2C_CONNECT_RSP_T, *L2C_CONNECT_RSP_P;
typedef __packed struct _L2C_CONFIGURE_REQ_T
{
    BTBYTE signal_code;
    BTBYTE signal_iden;
    BTWORD signal_length;
    BTWORD packet_dcid;
    BTWORD packet_flags;
    BTBYTE option_type_one;
    BTBYTE option_length_one;
    BTWORD option_option_one;
   
   
   
} L2C_CONFIGURE_REQ_T, *L2C_CONFIGURE_REQ_P;
typedef __packed struct _L2C_CONFIGURE_RSP_T
{
    BTBYTE signal_code;
    BTBYTE signal_iden;
    BTWORD signal_length;
    BTWORD packet_scid;
    BTWORD packet_flags;
    BTWORD packet_result;
   
   
   
   
   
   
} L2C_CONFIGURE_RSP_T, *L2C_CONFIGURE_RSP_P;
typedef __packed struct _L2C_DISCONNECT_REQ_T
{
    BTBYTE signal_code;
    BTBYTE signal_iden;
    BTWORD signal_length;
    BTWORD packet_dcid;
    BTWORD packet_scid;
} L2C_DISCONNECT_REQ_T, *L2C_DISCONNECT_REQ_P;
typedef __packed struct _L2C_DISCONNECT_RSP_T
{
    BTBYTE signal_code;
    BTBYTE signal_iden;
    BTWORD signal_length;
    BTWORD packet_dcid;
    BTWORD packet_scid;
} L2C_DISCONNECT_RSP_T, *L2C_DISCONNECT_RSP_P;
typedef __packed struct _L2C_ECHO_REQ_T
{
    BTBYTE signal_code;
    BTBYTE signal_iden;
    BTWORD signal_length;
} L2C_ECHO_REQ_T, *L2C_ECHO_REQ_P;
typedef __packed struct _L2C_ECHO_RSP_T
{
    BTBYTE signal_code;
    BTBYTE signal_iden;
    BTWORD signal_length;
} L2C_ECHO_RSP_T, *L2C_ECHO_RSP_P;
typedef __packed struct _L2C_INFO_REQ_T
{
    BTBYTE signal_code;
    BTBYTE signal_iden;
    BTWORD signal_length;
    BTWORD packet_infotype;
} L2C_INFO_REQ_T, *L2C_INFO_REQ_P;
typedef __packed struct _L2C_INFO_RSP_T
{
    BTBYTE signal_code;
    BTBYTE signal_iden;
    BTWORD signal_length;
    BTWORD packet_infotype;
    BTWORD packet_result;
    BTWORD packet_infotype1;
    BTWORD packet_result1;

} L2C_INFO_RSP_T, *L2C_INFO_RSP_P;





 



    void
    DeviceL2c_Handler(
        DEVICEBTJ_ADAPTER_P adapter,
        BTWORD  handle,
        BTPBYTE packet,
        BTWORD  length
    );
    DEVICEBTJ_SERVICE_P
    DeviceL2c_Service(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context
    );
    void
    DeviceL2c_Packets(
        DEVICEBTJ_ADAPTER_P adapter,
        HCI_CONTEXT_P hci_context,
        BTPBYTE packet,
        BTWORD length
    );
    void
    DeviceL2c_Send_Reject(
        DEVICEBTJ_ADAPTER_P adapter,
        BTPBYTE packet
    );
    void
    DeviceL2c_Send_ConnectionReq(
        DEVICEBTJ_ADAPTER_P adapter,
        DEVICEBTJ_SERVICE_P service,
        HCI_CONTEXT_P hci_context,
        BTWORD psm
    );
    void
    DeviceL2c_Send_ConnectionRsp(
        DEVICEBTJ_ADAPTER_P adapter,
        HCI_CONTEXT_P hci_context,
        L2C_CONTEXT_P l2c_context,
        BTPBYTE packet
    );
    void
    DeviceL2c_Send_ConfigurationReq(
        DEVICEBTJ_ADAPTER_P adapter,
        HCI_CONTEXT_P hci_context,
        L2C_CONTEXT_P l2c_context,
        BTPBYTE packet
    );
    void
    DeviceL2c_Send_ConfigurationRsp(
        DEVICEBTJ_ADAPTER_P adapter,
        HCI_CONTEXT_P hci_context,
        L2C_CONTEXT_P l2c_context,
        BTPBYTE packet
    );
    BTBOOL
    DeviceL2c_Send_DisconnectionReq(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context
    );
    void
    DeviceL2c_Send_DisconnectionRsp(
        DEVICEBTJ_ADAPTER_P adapter,
        HCI_CONTEXT_P hci_context,
        L2C_CONTEXT_P l2c_context,
        BTBYTE l2c_iden,
        BTPBYTE packet
    );
    void
    DeviceL2c_Send_EchoReq(
        DEVICEBTJ_ADAPTER_P adapter,
        HCI_CONTEXT_P hci_context,
        BTPBYTE packet
    );
    void
    DeviceL2c_Send_EchoRsp(
        DEVICEBTJ_ADAPTER_P adapter,
        HCI_CONTEXT_P hci_context,
        L2C_ECHO_REQ_P req_struct
    );
    void
    DeviceL2c_Send_InfoReq(
        DEVICEBTJ_ADAPTER_P adapter,
        HCI_CONTEXT_P hci_context,
        BTPBYTE packet
    );
    void
    DeviceL2c_Send_InfoRsp(
        DEVICEBTJ_ADAPTER_P adapter,
        HCI_CONTEXT_P hci_context,
        L2C_INFO_REQ_P req_struct
    );
    void
    DeviceL2c_Reset(
        L2C_CONTEXT_P l2c_context
    );



#line 82 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"
#line 1 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_Rfc.h"




 
#line 54 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_Rfc.h"


 
typedef enum
{
    RFC_UA_NIL,
    RFC_UA_SEND_CONTROL_CONNECTING,
    RFC_UA_SEND_CHANNEL_CONNECTING,
    RFC_UA_SEND_CHANNEL_DISCONNECTING,
    RFC_UA_SEND_CONTROL_DISCONNECTING,
    RFC_UA_ACTIVE
} BTRFCOMM_UA_STATE;


 



#pragma pack(1)

typedef __packed struct _RFC_CONTEXT_T
{
    BTBOOL rfc_init;
    BTBYTE rfc_ua;
    BTBYTE rfc_sc;
    BTBYTE rfc_rcredit;
    BTBYTE rfc_lcredit;
    BTWORD rfc_mtu;
    L2C_CONTEXT_P       l2c_context;
    DEVICEBTJ_SERVICE_P app_service_header;
} RFC_CONTEXT_T, *RFC_CONTEXT_P;
typedef __packed struct _RFC_FRA_ADDRESS
{
    BITBYTE AddrEa                 :1;
    BITBYTE AddrCr                 :1;
    BITBYTE AddrDi                 :1;
    BITBYTE AddrSc                 :5;
} RFC_FRA_ADDRESS, *PRFC_FRA_ADDRESS;
typedef __packed struct _RFC_FRA_CONTROL
{
    BTBYTE Control;
} RFC_FRA_CONTROL, *PRFC_FRA_CONTROL;
typedef __packed struct _RFC_FRA_LENGTH_BYTE
{
    BITBYTE LengthEa               :1;
    BITBYTE LengthValue            :7;
} RFC_FRA_LENGTH_BYTE, *PRFC_FRA_LENGTH_BYTE;
typedef __packed struct _RFC_FRA_LENGTH_WORD
{
    BITWORD LengthEa               :1;
    BITWORD LengthValue            :15;
} RFC_FRA_LENGTH_WORD, *PRFC_FRA_LENGTH_WORD;
typedef __packed struct _RFC_MSG_TYPE_BYTE
{
    BITBYTE HeadEa                 :1;
    BITBYTE HeadCr                 :1;
    BITBYTE HeadType               :6;
} RFC_MSG_TYPE_BYTE, *PRFC_MSG_TYPE_BYTE;
typedef __packed struct _RFC_MSG_TYPE_WORD
{
    BITBYTE HeadEa                 :1;
    BITBYTE HeadCr                 :1;
    BITBYTE HeadType               :6;
    BITBYTE TailEA                 :1;
    BITBYTE TailType               :7;
} RFC_MSG_TYPE_WORD, *PRFC_MSG_TYPE_WORD;
typedef __packed struct _RFC_MSG_LENGTH_BYTE
{
    BITBYTE HeadEa                 :1;
    BITBYTE HeadLength             :7;
} RFC_MSG_LENGTH_BYTE, *PRFC_MSG_LENGTH_BYTE;
typedef __packed struct _RFC_MSG_LENGTH_WORD
{
    BITBYTE HeadEa                 :1;
    BITBYTE HeadLength             :7;
    BITBYTE TailEa                 :1;
    BITBYTE TailLength             :7;
} RFC_MSG_LENGTH_WORD, *PRFC_MSG_LENGTH_WORD;
typedef __packed struct _RFC_MSG_PN_DLCI
{
    BITBYTE PnDlciDi                :1;
    BITBYTE PnDlciSc                :5;
    BITBYTE PnDlciRes               :2;
} RFC_MSG_PN_DLCI, *PRFC_MSG_PN_DLCI;
typedef __packed struct _RFC_FRA_HEADER
{
    RFC_FRA_ADDRESS Address;
    RFC_FRA_CONTROL Control;
    RFC_FRA_LENGTH_BYTE Length;
} RFC_FRA_HEADER_T, *RFC_FRA_HEADER_P;





 



    void
    DeviceRfc_Handler(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        BTPBYTE packet,
        BTWORD  length
    );
    void
    DeviceRfc_CtlHeader(
        BTPBYTE acl_packet,
        L2C_CONTEXT_P l2c_context,
        BTBYTE rfc_control,
        BTBYTE rfc_cr,
        BTBYTE rfc_sc,
        BTWORD rfc_length
    );
    void
    DeviceRfc_MsgHeader(
        BTPBYTE acl_packet,
        L2C_CONTEXT_P l2c_context,
        BTBYTE rfc_control,
        BTBYTE rfc_cr,
        BTBYTE rfc_sc,
        BTWORD rfc_length
    );
    void
    DeviceRfc_UihHeader(
        BTPBYTE acl_packet,
        L2C_CONTEXT_P l2c_context,
        BTBYTE rfc_control,
        BTBYTE rfc_cr,
        BTBYTE rfc_sc,
        BTWORD rfc_length
    );
    void
    DeviceRfc_Recv_FrameSabm(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        RFC_FRA_HEADER_P fra_header
    );
    void
    DeviceRfc_Recv_FrameUa(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        RFC_FRA_HEADER_P fra_header
    );
    void
    DeviceRfc_Recv_FrameDm(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        RFC_FRA_HEADER_P fra_header
    );
    void
    DeviceRfc_Recv_FrameDisc(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        RFC_FRA_HEADER_P fra_header
    );
    void
    DeviceRfc_Recv_FrameUih(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        RFC_FRA_HEADER_P fra_header,
        BTPBYTE BufferPointer,
        BTWORD BufferLength
    );
    BTBOOL
    DeviceRfc_Send(
        DEVICEBTJ_ADAPTER_P adapter,
        DEVICEBTJ_SERVICE_P service,
        BTPBYTE buffer,
        BTWORD length
    );
    BTBOOL
    DeviceRfc_Disc(
        DEVICEBTJ_ADAPTER_P adapter,
        DEVICEBTJ_SERVICE_P service
    );
    BTBOOL
    DeviceRfc_Apps_Cfm(
        DEVICEBTJ_ADAPTER_P adapter,
        DEVICEBTJ_SERVICE_P service,
        DEVICEBTJ_STATE state
    );
    BTBOOL
    DeviceRfc_Sabm_Control(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        BTPBYTE packet
    );
    BTBOOL
    DeviceRfc_Reset(
        DEVICEBTJ_ADAPTER_P adapter,
        DEVICEBTJ_SERVICE_P service
    );
#line 83 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"
#line 1 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_Hid.h"
#line 16 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_Hid.h"
typedef enum
{
    hid_success = 0,                 
    hid_busy = 1,                    
    hid_invalid_id = 2,              
    hid_unsupported = 3,             
    hid_invalid_param = 4,           
    hid_failed = 14,                 
    hid_timeout = 15,                
    hid_resource_error = 16          
} hid_status;
typedef enum
{
    hid_protocol_boot = 0,
    hid_protocol_report = 1
} hid_protocol;
typedef enum
{
    hid_control_op_nop = 0,
    hid_control_op_hard_reset = 1,
    hid_control_op_soft_reset = 2,
    hid_control_op_suspend = 3,
    hid_control_op_exit_suspend = 4,
    hid_control_op_unplug = 5
} hid_control_op;
typedef enum
{
    hid_data_other = 0,
    hid_data_input = 1,
    hid_data_output = 2,
    hid_data_feature = 3
} hid_data_type;


 



#pragma pack(1)

typedef __packed struct _HID_CONTEXT_T
{
    BTBYTE hid_report;
    BTBYTE hid_protocol;
    BTBYTE hid_idle;
    BTBYTE kbd_numlock;
    BTBYTE kbd_capslock;
    BTBYTE kbd_scrolllock;
    L2C_CONTEXT_P l2c_context_control;
    L2C_CONTEXT_P l2c_context_interrupt;
    DEVICEBTJ_SERVICE_P app_service_header;
} HID_CONTEXT_T, *HID_CONTEXT_P;
typedef __packed struct _HID_HEADER_T
{
    unsigned char trans_param: 4;
    unsigned char trans_type: 4;
} HID_HEADER_T, *HID_HEADER_P;





 



    typedef enum
    {
        HID_CONTROL_CONNECTED,
        HID_CONTROL_PACKET,
        HID_CONTROL_DISCONNECTED,
        HID_INTERRUPT_CONNECTED,
        HID_INTERRUPT_PACKET,
        HID_INTERRUPT_DISCONNECTED,
        HID_CONTROL_DISCONNECTED_REQ,
        HID_INTERRUPT_DISCONNECTED_REQ
    }
    HID_EVENT;
    void
    DeviceHid_Handler(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        BTBYTE  event,
        BTPBYTE packet,
        BTWORD  length
    );
    BTBOOL
    DeviceHid_Send(
        DEVICEBTJ_ADAPTER_P adapter,
        DEVICEBTJ_SERVICE_P service,
        BTPBYTE buffer,
        BTWORD length
    );
    void
    DeviceHid_Reset(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context
    );
#line 84 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"
#line 1 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_Sdp.h"




 
#line 17 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_Sdp.h"


 



#pragma pack(1)

typedef __packed struct _SDP_HEADERS_T
{
    BTBYTE sdp_pdu_id;
    BTWORD sdp_trans_id;
    BTWORD sdp_trans_length;
} SDP_HEADERS_T, *SDP_HEADERS_P;





 



    void
    DeviceSdp_Handler(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        BTPBYTE packet,
        BTWORD length
    );
    void
    DeviceSdp_Recv_ServiceSearchReq(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        SDP_HEADERS_P sdp_headers,
        BTPBYTE packet,
        BTWORD length
    );
    void
    DeviceSdp_Recv_ServiceSearchRes(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        SDP_HEADERS_P sdp_headers,
        BTPBYTE packet,
        BTWORD length
    );
    void
    DeviceSdp_Recv_ServiceAttributeReq(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        SDP_HEADERS_P sdp_headers,
        BTPBYTE packet,
        BTWORD length
    );
    void
    DeviceSdp_Recv_ServiceAttributeRes(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        SDP_HEADERS_P sdp_headers,
        BTPBYTE packet,
        BTWORD length
    );
    void
    DeviceSdp_Recv_ServiceSearchAttributeReq(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        SDP_HEADERS_P sdp_headers,
        BTPBYTE packet,
        BTWORD length
    );
    void
    DeviceSdp_Recv_ServiceSearchAttributeRes(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        SDP_HEADERS_P sdp_headers,
        BTPBYTE packet,
        BTWORD length
    );
    void
    DeviceSdp_Send_ServiceSearchAttributeReq(
        DEVICEBTJ_ADAPTER_P adapter,
        L2C_CONTEXT_P l2c_context,
        BTPBYTE packet
    );
#line 85 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"
#line 1 ".\\src\\App\\DeviceBtj_Stack_Sdpdb.h"




 






 



 
#line 90 ".\\src\\App\\DeviceBtj_Stack_Sdpdb.h"


 



#pragma pack(1)

typedef __packed struct _SDP_DB_ATTRIBUTE_T
{
    BTWORD  id;
    BTPBYTE string;
    BTBYTE  length;
} SDP_DB_ATTRIBUTE_T, *SDP_DB_ATTRIBUTE_P;
typedef __packed struct _SDP_DATBASE_T
{
    BTBOOL  busy;
    BTWORD  uuid;
    BTBYTE  index;
    BTBYTE  channel;
    BTDWORD handle;
    BTBYTE  counts;
    struct _SDP_DB_ATTRIBUTE_T *attrib;
} SDP_DATBASE_T, *SDP_DATBASE_P;
typedef __packed struct _SDP_DATABASE_LIST_T
{
    struct _SDP_DATBASE_T *base;
    struct _SDP_DATABASE_LIST_T *next;
} SDP_DATABASE_LIST_T, *SDP_DATABASE_LIST_P;





 



    void
    DeviceSdpdb_Doreg(
        DEVICEBTJ_ADAPTER_P adapter,
        DEVICEBTJ_SERVICE_P service,
        DEVICEBTJ_OBJECT     types
    );
    void
    DeviceSdpdb_Unreg(
        DEVICEBTJ_ADAPTER_P adapter,
        DEVICEBTJ_SERVICE_P service
    );
    void
    DeviceSdpdb_Add_Attrib_String(
        SDP_DATBASE_P       db,
        BTWORD              id,
        BTBYTE              memory,
        BTPBYTE             string,
        BTBYTE              length
    );
    SDP_DATBASE_P
    DeviceSdpdb_Get_Database(
        DEVICEBTJ_ADAPTER_P adapter,
        BTDWORD             handle
    );
#line 86 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"
#line 1 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Stack_Sdpdb_Parser.h"




 



    BTBOOL
    DeviceSdpdb_Parse_DataElement_Head(
        BTPBYTE *ElementAddr,
        BTBYTE *ElementOffset,
        BTWORD *ElementLength
    );
    BTBOOL
    DeviceSdpdb_Parse_DataElement_Body(
        BTPBYTE *ElementAddr,
        BTBYTE *ElementOffset,
        BTWORD *ElementLength
    );
    BTBOOL
    DeviceSdpdb_Parse_MatchUuid(
        BTWORD Uuid,
        BTPBYTE SearchPatternBuf,
        BTWORD SearchPatternLen
    );
#line 87 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"
#line 1 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Utils.h"


BTWORD
DeviceBtj_Utils_Max(
    BTWORD Source,
    BTWORD Destination
);
BTWORD
DeviceBtj_Utils_Min(
    BTWORD Source,
    BTWORD Destination
);
#line 26 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Utils.h"
BTBOOL
DeviceBtj_Utils_DevMemAddr_ChkValid(
    DEV_MEM_ADDR DevMemAddr
);
BTBOOL
DeviceBtj_Utils_DevMemAddr_ChkZero(
    DEV_MEM_ADDR DevMemAddr
);
BTBOOL
DeviceBtj_Utils_DevMemAddr_ChkSame(
    DEV_MEM_ADDR DevMemAddr1,
    DEV_MEM_ADDR DevMemAddr2
);
BTBOOL
DeviceBtj_Utils_DevStrAddr_ChkValid(
    DEV_STR_ADDR DevStrAddr
);
#line 88 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"
#line 1 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Utils_Key.h"





    void
    DeviceBtj_Utils_Key_Read(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR DevMemAddr
    );
    void
    DeviceBtj_Utils_Key_Store(
        DEVICEBTJ_ADAPTER_P adapter,
        DEV_MEM_ADDR DevMemAddr,
        DEV_LINK_KEY DevLinkKey
    );
#line 89 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"
#line 1 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Fcs.h"


BTBYTE
DeviceFcs_Cal(
    BTPBYTE buffer,
    BTWORD  length
);
BTBOOL
DeviceFcs_Chk(
    BTPBYTE buffer,
    BTWORD  length,
    BTPBYTE crc
);
#line 90 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"
#line 1 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Adapter.h"




 
typedef enum _INQ_STATUSX
{
    INQ_STATUSX_NIL,
    INQ_STATUSX_MODE,
    INQ_STATUSX_INQUIRY,
    INQ_STATUSX_CANCEL
} INQ_STATUSX;
 
typedef enum _RNR_STATUSX
{
    RNR_STATUSX_NIL,
    RNR_STATUSX_REQUEST,
    RNR_STATUSX_CANCEL
} RNR_STATUSX;
 
typedef enum _KEY_ACTION
{
    KEY_ACTION_LINK_KEY_REQ,
    KEY_ACTION_LINK_KEY_STORE_TRY,
    KEY_ACTION_LINK_KEY_STORE_RETRY,
    KEY_ACTION_TOP
} KEY_ACTION;


 



#pragma pack(1)

typedef __packed struct _USB_CONTEXT
{
    BTPVOID             usb_stack;
} USB_CONTEXT_T;
typedef __packed struct _COM_CONTEXT
{
    BTPVOID             com_stack;
} COM_CONTEXT_T;
typedef __packed struct _LMP_FEATURE_T
{
    BTBYTE              lmp_feature[(0x08)];
} LMP_FEATURE_T, *LMP_FEATURE_P;
typedef __packed struct _CMD_FEATURE_T
{
    BTBYTE              cmd_feature[(0x08)];
} CMD_FEATURE_T, *CMD_FEATURE_P;
typedef __packed struct _INQ_CONTEXT_T
{
    DEV_MEM_ADDR        dev_mem_addr;
    DEV_MEM_TYPE        dev_mem_type;
    BTWORD              dev_rssi;
    BTBYTE              dev_count;
    struct _INQ_CONTEXT_T *next;
} INQ_CONTEXT_T, *INQ_CONTEXT_P;
typedef __packed struct _PIN_CONTEXT_T
{
    BTBYTE              pin_length;
    BTBYTE              pin_buffer[(0x10)];
} PIN_CONTEXT_T, *PIN_CONTEXT_P;
typedef __packed struct _KEY_CONTEXT_T
{
    BTBYTE              key_action;
    DEV_MEM_ADDR        key_mem_addr;
    BTBYTE              key_link_key[(0x10)];
} KEY_CONTEXT_T, *KEY_CONTEXT_P;
__packed struct __DEVICEBTJ_ADAPTER_T
{
     
    BTBYTE              rnr_statusx;
     
    DEV_MEM_ADDR        dev_memaddr;
    BTBYTE              inq_statusx;
    INQ_CONTEXT_P       inq_context;
    LMP_FEATURE_T       lmp_feature;
    CMD_FEATURE_T       cmd_feature;

    HCI_MACHINE_T       hci_machine;
    PIN_CONTEXT_T       pin_context;
    KEY_CONTEXT_T       key_context;
    HCI_CONTEXT_T       hci_context[(0x01)];
    L2C_CONTEXT_T       l2c_context[(0x05)];
    BTWORD              l2c_globals_scid;
    BTBYTE              l2c_globals_iden;
    BTBOOL              sys_initial_flag;
    BTBYTE              sys_initial_count;
    BTWORD              acl_packets_len;
    BTWORD              acl_packets_num;
    BTWORD              acl_packets_len_bak;
    BTWORD              acl_packets_num_bak;
    BTBYTE              uih_credits_buf[sizeof(HCI_COMMON_T) + (0x05) + 0x01];
    L2C_CONTEXT_P       uih_credits_l2c;
    RFC_CONTEXT_P       uih_credits_rfc;
    DEVICEBTJ_SERVICE_P app_service_header;





};





 



    void
    DeviceBtj_Adapter_Init(
        void
    );
    DEVICEBTJ_ADAPTER_P
    DeviceBtj_Adapter_Head(
        void
    );
    BTBOOL
    DeviceBtj_Adapter_Write(
        DEVICEBTJ_ADAPTER_P adapter,
        BTPBYTE buffer,
        BTWORD  length
    );
    BTBOOL
    DeviceBtj_Adapter_Update(
        void
    );
    BTBOOL
    DeviceBtj_Adapter_ChkValid(
        DEVICEBTJ_ADAPTER_P adapter
    );
    BTBOOL
    DeviceBtj_Adapter_HasService(
        DEVICEBTJ_ADAPTER_P adapter,
        DEVICEBTJ_SERVICE_P service
    );
    DEVICEBTJ_SERVICE_P
    DeviceBtj_Adapter_GetService(
        DEV_MEM_ADDR DevMemAddr
    );
    BTBOOL
    DeviceBtj_Adapter_HasIntance(
        DEVICEBTJ_SERVICE_P service,
        DEV_MEM_ADDR DevMemAddr
    );
#line 91 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"
#line 1 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Debuger.h"




 
typedef enum _DEBUGER_TRACER
{
    DEBUGER_TRACER_RECV_EVT,
    DEBUGER_TRACER_RECV_ACL,
    DEBUGER_TRACER_SEND_CMD,
    DEBUGER_TRACER_SEND_ACL,
    DEBUGER_TRACER_RFCS_NUM
} DEBUGER_TRACER;


 
#line 35 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Debuger.h"
void
DeviceBtj_Debuger_Init(
    void
);
#line 92 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"
#line 1 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Endians.h"


void
DeviceBtj_Endians_Init(
    void
);
BTWORD
DeviceBtj_Endians_Leword_val2val(
    BTWORD value
);
BTWORD
DeviceBtj_Endians_Beword_val2val(
    BTWORD value
);
BTDWORD
DeviceBtj_Endians_Ledword_val2val(
    BTDWORD value
);
BTDWORD
DeviceBtj_Endians_Bedword_val2val(
    BTDWORD value
);
BTWORD
DeviceBtj_Endians_Leword_ptr2val(
    BTPBYTE ptr
);
BTWORD
DeviceBtj_Endians_Beword_ptr2val(
    BTPBYTE ptr
);
BTDWORD
DeviceBtj_Endians_Ledword_ptr2val(
    BTPBYTE ptr
);
BTDWORD
DeviceBtj_Endians_Bedword_ptr2val(
    BTPBYTE ptr
);
void
DeviceBtj_Endians_Leword_val2ptr(
    BTWORD src_val,
    BTPBYTE dst_ptr
);
void
DeviceBtj_Endians_Beword_val2ptr(
    BTWORD src_val,
    BTPBYTE dst_ptr
);
void
DeviceBtj_Endians_Ledword_val2ptr(
    BTDWORD src_val,
    BTPBYTE dst_ptr
);
void
DeviceBtj_Endians_Bedword_val2ptr(
    BTDWORD src_val,
    BTPBYTE dst_ptr
);
#line 93 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"
#line 1 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Service.h"


typedef enum
{
    SERVICE_STATE_IDLE,
    SERVICE_STATE_CONNECTING_START,
    SERVICE_STATE_CONNECTING_RETRY,
    SERVICE_STATE_CONNECTING_STACK,
    SERVICE_STATE_CONNECTED
} SERVICE_STATE;


 



#pragma pack(1)

__packed struct __DEVICEBTJ_SERVICE_T
{
    BTBYTE        ctx_state;
    DEV_MEM_ADDR  dev_mem_addr;
    L2C_CONTEXT_P l2c_context;
    SDP_DATBASE_T sdp_database;
    RFC_CONTEXT_T rfc_context;
    HID_CONTEXT_T hid_context;
    struct __DEVICEBTJ_ADAPTER_T *adapter;
    struct __DEVICEBTJ_SERVICE_T *next;
};
#line 94 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"
#line 1 ".\\src\\App\\DeviceBtj_Handler.h"



#line 5 ".\\src\\App\\DeviceBtj_Handler.h"
#line 6 ".\\src\\App\\DeviceBtj_Handler.h"








 


extern volatile u_int32 sys_flag;
extern u_int8 env_config_buff[sizeof(ENV_CONFIG_T)];
extern u_int8 uart_rx_buff_cnt;


extern u_int8 bd_addr[6];
extern u_int8 bt_tx_buff[6][10],tx_buff_len[6];
extern u_int8 tx_buff_head,tx_buff_tail,tx_buff_count;
extern u_int8 backup_buffer[17],rfcomm_dis_fail,l2cap_dislink_fail;
extern u_int8 stan_key[8];

extern u_int8 pin_code_req;
extern DEV_MEM_ADDR pair_device_addr;
extern DEVICEBTJ_ADAPTER_T btj_adapter;
extern DEVICEBTJ_ADAPTER_P bt_adapter;


extern volatile u_int8 b_26M_colsed;
extern volatile u_int16 uart_rx_buff_header,uart_rx_buff_tailor;
extern volatile char uart_rx_tx_buff[512];
extern char uart_send_buff[100];

extern u_int8 uart_send_length,uart_send_cnt,uart_cnt_index;

extern u_int8 key_lock;

extern u_int8 bt_time_tick;



void SYS_Host_Initialise(void);

static uint8 getATCommand(uint8 *pCommand);
static void getCommandData(uint8 *pbuf);
uint32 charToDec(uint8 *pchar, uint8 len);
uint8 shiftKeyPressOrRelease(uint8 keycode);
uint16 asciiToKeycode(uint8 ascii);





#line 95 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"

#line 10 "src\\Driver\\driver_uart.c"


volatile u_int16 uart_rx_buff_header,uart_rx_buff_tailor;
volatile char uart_rx_tx_buff[512];
char uart_send_buff[100];
u_int8 uart_send_length, uart_send_cnt, uart_cnt_index = 0;


void UART_Initial(void)
{
    uint16 uart_clk_div;
    uint32 uart_conf_value,config_baud_rate;
    ENV_CONFIG_P env_config=(ENV_CONFIG_P)env_config_buff;
    
    switch(env_config->uart_baudrate)
    {
        case 0:
            config_baud_rate=1200;    
            break;
        case 1:
            config_baud_rate=2400;    
            break;
        case 2:
            config_baud_rate=4800;    
            break;
        case 3:
            config_baud_rate=9598;    
            break;
        case 4:
            config_baud_rate=19200;    
            break;
        case 5:
            config_baud_rate=38400;    
            break;
        case 6:
            config_baud_rate=57600;    
            break;
        case 7:
            config_baud_rate=115200;    
            break;
        case 8:
            config_baud_rate=128000;    
            break;
        case 9:
            config_baud_rate=256000;    
            break;
        case 10:
            config_baud_rate=921600;    
            break;
         default:
            config_baud_rate=115200;
            break;

    }


    uart_clk_div    = 16000000/config_baud_rate;
    uart_conf_value  = (*((volatile unsigned long *) (0x00F00300 + 0x00) )) ;
    uart_conf_value |= (0x1 << 0) ;
    uart_conf_value |= (0x1 << 1) ;
    uart_conf_value &= (~(0x1 << 2 ))   ;
    uart_conf_value |= (0x3 << 3 )       ;

	if(env_config->uart_stop != 0)
		uart_conf_value |= (0x1 << 7 ); 
	else
		uart_conf_value &= (~(0x1 << 7 ));

	if(env_config->uart_par != 0)
	{
		uart_conf_value &= ~(0x1 << 5 );
		uart_conf_value |= (0x1 << 5 );

		if(env_config->uart_par == 1)
		{
			uart_conf_value &= ~(0x1 << 6 );   
		}
		else if(env_config->uart_par == 2)
			uart_conf_value |= (0x1 << 6 );	
	}
	else
	{
		uart_conf_value &= ~(0x1 << 5 );
	}

    uart_conf_value &= (~(0x1 << 7 ));
    uart_conf_value  = (uart_conf_value & (~(0x1FFF<<8))) | (uart_clk_div << 8) ;
    (*((volatile unsigned long *) (0x00F00300 + 0x00) )) = uart_conf_value;

    
    (*((volatile unsigned long *) (0x00F00300 + 0x04) )) = (1<<0)|(8<<8);
    (*((volatile unsigned long *) (0x00F00300 + 0x10) )) |= (0x1 << 1 ); 
    (*((volatile unsigned long *) (0x00F00300 + 0x10) )) |= (0x1 << 6 );  

	 
	(*((volatile unsigned long *) (0x00F00300 + 0x10) )) |= (0x1 << 3);  
	
    
    
    (*((volatile unsigned long *) (0x00F00500 + 0x10) ))  &= ~((0x3<<16) + (0x3<<24) + (0x3<<0)); 
    (*((volatile unsigned long *) (0x00F00500 + 0x10) ))  |=   (0x3<<8);
    (*((volatile unsigned long *) (0x00F00500 + 0x14) ))	&= ~ (0x3<<16);

    (*((volatile unsigned long *) (0x00800000 + 0x7C) )) |=  (0x01<< 4);
    (*((volatile unsigned long *) (0x00800000 + 0x0c) ))   = 0x0;                     
    (*((volatile unsigned long *) (0x00800000 + 0x40) ))  |=  ((0x01<< 4)|(0x01<<20));
}
void HCIT_UART_Shutdown(void)
{
    
}


void uart_buff_send(volatile uint8 **buf, volatile uint32 *length)
{   
    uint32 count = *length;
    uint32 fifo_length;
    do
    {
        fifo_length=((*((volatile unsigned long *) (0x00F00300 + 0x08) ))&0xff)&0xff;
    }while(fifo_length>(15/2));    
           

    fifo_length=15-fifo_length;
    if(count > fifo_length)
        count = fifo_length;       

    (*length)-= count; 
     do
    {
        while(!((*((volatile unsigned long *) (0x00F00300 + 0x08) )) & (0x1<<20)));
        ((*((volatile unsigned long *) (0x00F00300 + 0x0C) ))= *((*buf)++));
        count--;            
    }
    while(count);
     
}

void uart_debug_send(uint8 * buffer,uint8 len)
{
    uint32 length2 = len;   
    uint8* buffer2 = &buffer[0];
    
    while(length2)
    {
        uart_buff_send((volatile uint8**)&buffer2, (uint32*)&length2);
    }
    
}

void UART_Interrupt_Handler(void)
{
    u_int32 status;
    u_int8 fifo[512], i = 0;

    status=(*((volatile unsigned long *) (0x00F00300 + 0x14) ));

	if(status & 0x08)
	{
		while (((*((volatile unsigned long *) (0x00F00300 + 0x08) )) & (0x1<<21)))    
        {
            fifo[i++] = (((*((volatile unsigned long *) (0x00F00300 + 0x0C) ))>>8)&0xff);
            i = (i % 512);
		}
		
    }
	else if(status & 0x42)
	{
		uart_rx_buff_cnt = 0;
        while (((*((volatile unsigned long *) (0x00F00300 + 0x08) )) & (0x1<<21)))    
        {
            uart_rx_tx_buff[uart_rx_buff_header++] = (((*((volatile unsigned long *) (0x00F00300 + 0x0C) ))>>8)&0xff);
            uart_rx_buff_header = (uart_rx_buff_header%512);
        }
		
	}

    (*((volatile unsigned long *) (0x00F00300 + 0x14) )) = status;  
}


void* TRAhcit_Register_UART_Driver(void)
{
    
    
    sys_hcit_uart_info.common.type = TRA_HCIT_TYPE_UART;
    sys_hcit_uart_info.common.access_type = TRA_HCIT_FAST_IRQ;
    
    sys_hcit_uart_info.common.interrupt_handler = UART_Interrupt_Handler;

   
    sys_hcit_uart_info.shutdown = HCIT_UART_Shutdown;
    

    sys_hcit_uart_info.poll_tx = uart_buff_send;

    return (void*)&sys_hcit_uart_info;
	
}


signed int bprintf(const char *fmt, ...)
{


    char buf[64];
    signed int rc; 
    va_list args; 
    __va_start(args, fmt); 
    rc = vsnprintf(buf, sizeof(buf), fmt, args); 
    __va_end(args); 
    buf[sizeof(buf) - 1] = '\0'; 
    if (rc < sizeof(buf) - 2 && buf[rc - 1] == '\n') 
    {            
        buf[rc - 1] = '\r'; 
        buf[rc] = '\n'; 
        buf[rc + 1] = 0; 
            
    }
    uart_debug_send((uint8 *)&buf[0], rc + 1);

    return rc;



}


void uart_callback(volatile char * buff, u_int16 len)
{
    while(len > 0)
    {                
        if(1)
        {
            uart_send_buff[uart_cnt_index++]=*buff;
           
            if(uart_cnt_index >= 100)
            {
                uart_send_cnt=1;
                uart_send_length=100;
                uart_cnt_index=0;
                break;
            }            	        
        }        
        len--;
        buff++; 
        
    }   
}




