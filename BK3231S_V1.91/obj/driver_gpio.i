#line 1 "src\\Driver\\driver_gpio.c"
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
#line 4 ".\\src\\Driver\\driver_uart.h"


#line 20 ".\\src\\Driver\\driver_uart.h"




#line 30 ".\\src\\Driver\\driver_uart.h"











void UART_Initial(void);
void UART_Interrupt_Handler(void);
void uart_buff_send(volatile uint8 **buf, volatile uint32 *length);
void* TRAhcit_Register_UART_Driver(void);

signed int bprintf(const char *fmt, ...);






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
extern uint8 ledMode;
extern uint8 blinkCount;

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










#line 2 "src\\Driver\\driver_gpio.c"



void GPIO_Initial(void)  
{

    (*((volatile unsigned long *) (0x00F00500 + 0x00) ))  = 0x000000FF ; 
    (*((volatile unsigned long *) (0x00F00500 + 0x04) )) = 0x00000000 ; 
    (*((volatile unsigned long *) (0x00F00500 + 0x08) ))  = 0x000000FF ; 
    (*((volatile unsigned long *) (0x00F00500 + 0x0C) )) = 0x00000000 ; 
    (*((volatile unsigned long *) (0x00F00500 + 0x10) ))  = 0x000000FF ; 
    (*((volatile unsigned long *) (0x00F00500 + 0x14) )) = 0x00000000 ; 
    (*((volatile unsigned long *) (0x00F00500 + 0x18) ))  = 0x000000FF ; 
    (*((volatile unsigned long *) (0x00F00500 + 0x1C) )) = 0x00000000 ; 
    (*((volatile unsigned long *) (0x00F00500 + 0x20) ))  = 0x000000FF ; 
    (*((volatile unsigned long *) (0x00F00500 + 0x24) )) = 0x00000000 ; 

    (*((volatile unsigned long *) (0x00F00500 + 0x40) ))=0xffffffff;
    (*((volatile unsigned long *) (0x00F00500 + 0x44) ))=0x000000ff;
    (*((volatile unsigned long *) (0x00F00500 + 0x48) )) = 0x00000000 ;
    (*((volatile unsigned long *) (0x00F00500 + 0x4C) )) = 0x00000000 ;
    (*((volatile unsigned long *) (0x00F00500 + 0x50) )) = 0xffffffff ;
    (*((volatile unsigned long *) (0x00F00500 + 0x54) )) = 0xff ;

	
	GPIO_config(1, 4, 1);	
	GPIO_output(1, 4, 0);	
	GPIO_config(3, 0, 1);	
	GPIO_output(3, 0, 0);	
	GPIO_config(3, 1, 1);	
	GPIO_output(3, 1, 0);	
	
	
	

	

	
	GPIO_config(0, 2, 0); 	

	 
	GPIO_config(3, 6, 0);	
	
	GPIO_config(3, 7, 0); 	
	
	








 
#line 68 "src\\Driver\\driver_gpio.c"
}

void gpio_sleep()
{
    (*((volatile unsigned long *) (0x00F00500 + 0x00) ))  = 0x0000FFFF ; 
    (*((volatile unsigned long *) (0x00F00500 + 0x04) )) = 0x00000000 ; 
    (*((volatile unsigned long *) (0x00F00500 + 0x08) ))  = 0x0000FFFF ; 
    (*((volatile unsigned long *) (0x00F00500 + 0x0C) )) = 0x00000000 ; 
    (*((volatile unsigned long *) (0x00F00500 + 0x10) ))  = 0x0000FFFF ; 
    (*((volatile unsigned long *) (0x00F00500 + 0x14) )) = 0x00000000 ; 
    (*((volatile unsigned long *) (0x00F00500 + 0x18) ))  = 0x0000FFFF ; 
    (*((volatile unsigned long *) (0x00F00500 + 0x1C) )) = 0x00000000 ; 
    (*((volatile unsigned long *) (0x00F00500 + 0x20) ))  = 0x0000FFFF ; 
    (*((volatile unsigned long *) (0x00F00500 + 0x24) )) = 0x00000000 ; 
}








void GPIO_config( uint8 port, uint8 gpio, uint8 index ) 
{
    volatile unsigned long *ptr0,*ptr1;
    uint32 val = 0;

    if(port>4)
        return;
    
    ptr0 = (volatile unsigned long *)(0x00F00500+8*port);
    ptr1 = (volatile unsigned long *)(0x00F00500+(8*port+4));
    if( index  == 0 )
    {
        val = (1<<(0+gpio)) + (1<<(8+gpio)) + (1<<(16+gpio));
        *ptr0 |= val;
        val = 1<<(16+gpio);
        *ptr1 |= val;
    }
    else if( index == 1 )
    {
        val = 1<<(16+gpio);
        *ptr1 &= (~val);
        val = 1<<(0+gpio);
        *ptr0 |= val;
        val = 1<<(8+gpio);
        *ptr0 &= (~val);
        
    }
    else if( index == 2 )
    {
        val = 1<<(0+gpio);
        *ptr0 &= (~val);
        
    }
    else if(index == 3)
    {
        val = (1<<(0+gpio)) + (1<<(8+gpio));
        *ptr0 |= val;
        val = 1<<(16+gpio)+1<<(24+gpio);
        *ptr0 &= (~val);
        val = 1<<(16+gpio);
        *ptr1 &= (~val);

    }
    else if(index == 4)
    {
        val = 1<<(0+gpio);
        *ptr0 &= (~val);
        val = 1<<(port*8 + gpio);
        (*((volatile unsigned long *) (0x00800000 + 0x4c) )) |= val;

    }
}
void GPIO_output( uint8 port, uint8 gpio, uint8 val ) 
{
    volatile unsigned long *ptr;
    uint32 data;
    if(port>4)
        return;
    ptr = (volatile unsigned long *)(0x00F00500+(8*port+4));
    data = *ptr;
    data &= ~( 1 << gpio );
    data |= (val&0x01) << gpio;
    *ptr = data;
}

uint32 gpio_input( uint8 port, uint8 gpio )
{
    volatile unsigned long *ptr;
    if(port>4)
        return 0xff;
    ptr = (volatile unsigned long *)(0x00F00500+(8*port+4));

    return (*ptr)&( 1 << (gpio+8) );
}


void gpio_output_for_debug(uint8 output_data)
{

    (*((volatile unsigned long *) (0x00F00500 + 0x0C) ))=output_data;

}

void __attribute__((section("fastcall"))) DEBUG_MSG(uint32 x)
{
    (*((volatile unsigned long *) (0x00F00500 + 0x1C) )) &= 0xfffffff7;
	(*((volatile unsigned long *) (0x00F00500 + 0x04) )) = x&0xFF;
    (*((volatile unsigned long *) (0x00F00500 + 0x1C) )) |= 0x00000008;
}
