#line 1 "src\\hal\\prth_chimera\\sys\\sys_power.c"














 


#line 1 ".\\src\\Core\\sys\\include\\sys_config.h"

































 



 
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







#line 19 "src\\hal\\prth_chimera\\sys\\sys_power.c"
#line 20 "src\\hal\\prth_chimera\\sys\\sys_power.c"
#line 21 "src\\hal\\prth_chimera\\sys\\sys_power.c"

#line 1 ".\\src\\Core\\hw\\include\\hw_delay.h"















 

void HWdelay_Initialise(void);
void HWdelay_Wait_For_10us(u_int32 tens_of_u_secs);
void HWdelay_Wait_For_us(u_int32 units_of_u_secs);
void HWdelay_Wait_For_ms(u_int32 units_of_m_secs, boolean use_native_clk);
void HWdelay_Wait_For_Serial_Interface_Idle(void);
void HWdelay_Wait_For_Serial_Interface_Busy_us(u_int32 units_of_u_secs);



 
#line 23 "src\\hal\\prth_chimera\\sys\\sys_power.c"
#line 1 ".\\src\\Core\\lc\\uslc\\include\\uslc_chan_ctrl.h"


















 
#line 21 ".\\src\\Core\\lc\\uslc\\include\\uslc_chan_ctrl.h"
#line 1 ".\\src\\Core\\bt\\include\\bt_fhs.h"
























 
#line 27 ".\\src\\Core\\bt\\include\\bt_fhs.h"
#line 28 ".\\src\\Core\\bt\\include\\bt_fhs.h"
#line 1 ".\\src\\Core\\hw\\include\\hw_register.h"


















 

 
#line 38 ".\\src\\Core\\hw\\include\\hw_register.h"

#line 55 ".\\src\\Core\\hw\\include\\hw_register.h"















 



 


















#line 100 ".\\src\\Core\\hw\\include\\hw_register.h"




















 







#line 157 ".\\src\\Core\\hw\\include\\hw_register.h"
















 


























 












 




 

#line 229 ".\\src\\Core\\hw\\include\\hw_register.h"

#line 29 ".\\src\\Core\\bt\\include\\bt_fhs.h"



























 



 
typedef union {
    u_int8 payload[20];
    u_int32 force_u_int32_alignment;
} t_FHSpacket;

__inline t_lap     FHS_Get_LAP(const t_FHSpacket *fhs);
__inline void      FHS_Set_LAP(t_FHSpacket *fhs, t_lap lap);

__inline t_uap     FHS_Get_UAP(const t_FHSpacket *fhs);
__inline void      FHS_Set_UAP(t_FHSpacket *fhs, t_uap uap);

__inline t_nap     FHS_Get_NAP(const t_FHSpacket *fhs);
__inline void      FHS_Set_NAP(t_FHSpacket *fhs, t_nap nap);

__inline t_uap_lap FHS_Get_UAP_LAP(const t_FHSpacket *fhs);

__inline t_clock   FHS_Get_CLK(const t_FHSpacket *fhs);
__inline void      FHS_Set_CLK(t_FHSpacket *fhs, t_clock clk);

__inline t_am_addr FHS_Get_AM_Addr(const t_FHSpacket *fhs);
__inline void      FHS_Set_Am_Addr(t_FHSpacket *fhs, t_am_addr am_addr);

__inline void      FHS_Get_Bd_Addr_Ex
                            (const t_FHSpacket *fhs, t_bd_addr *p_bd_addr);
__inline void      FHS_Set_Bd_Addr
                            (t_FHSpacket *fhs, const t_bd_addr *p_bd_addr );

__inline void      FHS_Get_Syncword_Ex
                            (const t_FHSpacket *fhs, t_syncword *p_syncword);
__inline void      FHS_Set_Syncword_Ex
                            (t_FHSpacket *fhs, const t_syncword *p_syncword);


__inline u_int8 FHS_Get_EIR(const t_FHSpacket *fhs);
__inline void FHS_Set_EIR(t_FHSpacket *fhs, u_int8 eir);


__inline t_pageScanRepit FHS_Get_Page_Scan_Repetition(const t_FHSpacket *fhs);
__inline void      FHS_Set_Page_Scan_Repetition
                            (t_FHSpacket *fhs, t_pageScanRepit srMode);

__inline t_pageScanPeriod FHS_Get_Page_Scan_Period(const t_FHSpacket *fhs);
__inline void      FHS_Set_Page_Scan_Period
                            (t_FHSpacket *fhs, t_pageScanPeriod spMode);

__inline t_clock FHS_Change_CLK_To_Offset(t_FHSpacket *fhs, t_clock base_clk);

__inline t_pageScanMode   FHS_Get_Page_Scan_Mode(const t_FHSpacket *fhs);
__inline void      FHS_Set_Page_Scan_Mode
                            (t_FHSpacket *fhs, t_pageScanMode smMode);

__inline t_classDevice    FHS_Get_Device_Class(const t_FHSpacket *fhs);
__inline void      FHS_Set_Device_Class
                            (t_FHSpacket *fhs, t_classDevice class_of_device);

#line 1 ".\\src\\Core\\bt\\include\\bt_fhs_impl.h"


























 

#line 30 ".\\src\\Core\\bt\\include\\bt_fhs_impl.h"
#line 31 ".\\src\\Core\\bt\\include\\bt_fhs_impl.h"
#line 1 ".\\src\\Core\\bt\\include\\bt_fhs.h"
#line 121 ".\\src\\Core\\bt\\include\\bt_fhs.h"


#line 32 ".\\src\\Core\\bt\\include\\bt_fhs_impl.h"

#line 59 ".\\src\\Core\\bt\\include\\bt_fhs_impl.h"



 








__inline t_lap FHS_Get_LAP(const t_FHSpacket *fhs)
{
    const u_int8 *p_value32 = fhs->payload + 4;
    return ((t_lap) ( (((u_int32)*(p_value32) + (*((p_value32)+1)<<8) + (*((p_value32)+2)<<16) + (*((p_value32)+3)<<24) ) & 0x03FFFFFC) >> 2  ));
}

__inline t_uap FHS_Get_UAP(const t_FHSpacket *fhs)
{
    return ((t_uap) fhs->payload[8]);
}

__inline t_nap FHS_Get_NAP(const t_FHSpacket *fhs)
{
    const u_int8 *p_value16 = fhs->payload + 9;
    return ((t_nap) ((u_int16)*(p_value16) + (*((p_value16)+1)<<8) ) );
}

__inline void FHS_Set_LAP(t_FHSpacket *fhs, t_lap lap)
{
    

 
    u_int8 *p_lap = fhs->payload + 4;

    *p_lap   = (u_int8) ((*p_lap & 0x03) | (u_int8) (lap<<2));
    *++p_lap = (u_int8) (lap>> 6);
    *++p_lap = (u_int8) (lap>>14);
    ++p_lap;
    *p_lap   = (u_int8) ((*p_lap & 0xFC) | ((u_int8) (lap>>22) & 0x3));
}

__inline void FHS_Set_UAP(t_FHSpacket *fhs, t_uap uap)
{
    fhs->payload[8] = uap;
}

__inline void FHS_Set_NAP(t_FHSpacket *fhs, t_nap nap)
{
    u_int8 *p_nap = fhs->payload + 9;
    *p_nap++ = (u_int8) (nap & 0xFF);
    *p_nap   = (u_int8) (nap >> 8);
}


__inline t_uap_lap FHS_Get_UAP_LAP(const t_FHSpacket *fhs)
{
    return ( ((t_uap_lap) fhs->payload[8] << 24) | FHS_Get_LAP(fhs) );
}

__inline t_clock FHS_Get_CLK(const t_FHSpacket *fhs)
{
    const u_int8 *p_value32 = fhs->payload + 14;

    

 
    return ((t_clock) ( (((u_int32)*(p_value32) + (*((p_value32)+1)<<8) + (*((p_value32)+2)<<16) + (*((p_value32)+3)<<24) ) & 0x1FFFFFF8) >> 1  ) );
}


__inline u_int8 FHS_Get_EIR(const t_FHSpacket *fhs)
{
    return (u_int8) ((fhs->payload[7] >> 2) & 0x1 );
}


__inline t_pageScanRepit FHS_Get_Page_Scan_Repetition(const t_FHSpacket *fhs)
{
    return (t_pageScanRepit) ((fhs->payload[7] >> 4) & 0x3 );
}

__inline t_pageScanPeriod FHS_Get_Page_Scan_Period(const t_FHSpacket *fhs)
{
    return (t_pageScanPeriod) ((fhs->payload[7] >> 6) & 0x3 );
}

__inline t_pageScanMode FHS_Get_Page_Scan_Mode(const t_FHSpacket *fhs)
{
    return (t_pageScanMode) ((fhs->payload[17] >> 5) & 0x7);
}


__inline void FHS_Set_EIR(t_FHSpacket *fhs, u_int8 eir)
{
    u_int8 *p_fhs_byte7 = fhs->payload + 7;
    *p_fhs_byte7 = (u_int8) ((*p_fhs_byte7 & 0xFB) | (eir << 2 ));
}


__inline void FHS_Set_Page_Scan_Repetition(t_FHSpacket *fhs, t_pageScanRepit srMode)
{
    u_int8 *p_fhs_byte7 = fhs->payload + 7;
    *p_fhs_byte7 = (u_int8) ((*p_fhs_byte7 & 0xCF) | (srMode << 4 ));
}

__inline void FHS_Set_Page_Scan_Period(t_FHSpacket *fhs, t_pageScanPeriod spMode)
{
    u_int8 *p_fhs_byte7 = fhs->payload + 7;
    *p_fhs_byte7 = (u_int8) ((*p_fhs_byte7 & 0x3F) | (spMode << 6 ));
}

__inline void FHS_Set_Page_Scan_Mode(t_FHSpacket *fhs, t_pageScanMode smMode)
{
    u_int8 *p_fhs_byte17 = fhs->payload + 17;
    *p_fhs_byte17 = (u_int8) ((*p_fhs_byte17 & 0x1F) | (smMode << 5 ));
}

__inline t_am_addr FHS_Get_AM_Addr(const t_FHSpacket *fhs)
{

    return (t_am_addr) (fhs->payload[14] & 0x07 );
}

__inline void FHS_Set_Am_Addr(t_FHSpacket *fhs, t_am_addr am_addr)
{
    u_int8 *p_fhs_byte14 = fhs->payload + 14;
    *p_fhs_byte14 = (u_int8) ((*p_fhs_byte14 & 0xF8) | (am_addr));
}
          
__inline void FHS_Get_Bd_Addr_Ex(const t_FHSpacket *fhs, t_bd_addr *p_bd_addr)
{
    { t_lap lap = (FHS_Get_LAP(fhs)); (p_bd_addr)->bytes[0] = (u_int8)(lap & 0xFF); (p_bd_addr)->bytes[1] = (u_int8)((lap>>8) & 0xFF); (p_bd_addr)->bytes[2] = (u_int8) (lap>>16); };
    ((p_bd_addr)->bytes[3] = (FHS_Get_UAP(fhs)));
    { t_nap nap = (FHS_Get_NAP(fhs)); (p_bd_addr)->bytes[4] = (u_int8) (nap & 0xFF); (p_bd_addr)->bytes[5] = (u_int8) (nap>>8); };
}

__inline void FHS_Set_Bd_Addr(t_FHSpacket *fhs, const t_bd_addr *p_bd_addr)
{
    FHS_Set_LAP(fhs, ( ((t_lap) (p_bd_addr)->bytes[2] << 16) + ( (t_lap) (p_bd_addr)->bytes[1] << 8) + (p_bd_addr)->bytes[0] ) );
    FHS_Set_UAP(fhs, ( (t_uap) (p_bd_addr)->bytes[3] ) );
    FHS_Set_NAP(fhs, ( (t_nap) (((t_nap) (p_bd_addr)->bytes[5] << 8) + (p_bd_addr)->bytes[4])) );
}

__inline void FHS_Get_Syncword_Ex(const t_FHSpacket *fhs, t_syncword *p_syncword)
{
     
    p_syncword->low  = ((u_int32)*(fhs->payload) + (*((fhs->payload)+1)<<8) + (*((fhs->payload)+2)<<16) + (*((fhs->payload)+3)<<24) );
    p_syncword->high = ((u_int32)*(fhs->payload+4) + (*((fhs->payload+4)+1)<<8) + (*((fhs->payload+4)+2)<<16) + (*((fhs->payload+4)+3)<<24) ) & 0x03FFFFFF;
    p_syncword->high |= (u_int32)(((p_syncword->high)&0x02000000L) ? 0x4C000000L : 0xB0000000L);
}

__inline void FHS_Set_Syncword_Ex(t_FHSpacket *fhs, const t_syncword *p_syncword)
{
    u_int8 *p_fhs_payload = fhs->payload;
    u_int8 fhs_byte7 = fhs->payload[7];     

    *p_fhs_payload++ = (u_int8) p_syncword->low;
    *p_fhs_payload++ = (u_int8) (p_syncword->low>> 8);
    *p_fhs_payload++ = (u_int8) (p_syncword->low>> 16);
    *p_fhs_payload++ = (u_int8) (p_syncword->low>> 24);

    *p_fhs_payload++ = (u_int8) p_syncword->high;
    *p_fhs_payload++ = (u_int8) (p_syncword->high >> 8);
    *p_fhs_payload++ = (u_int8) (p_syncword->high >> 16);
    *p_fhs_payload++ = (u_int8) (((p_syncword->high >> 24) & 0x3) |
                                 (fhs_byte7&0xFC));

}

__inline t_classDevice FHS_Get_Device_Class(const t_FHSpacket *fhs)
{
    return (t_classDevice) ((u_int32)*(fhs->payload+11) + (*((fhs->payload+11)+1)<<8) + (*((fhs->payload+11)+2)<<16) );
}

__inline void FHS_Set_CLK(t_FHSpacket *fhs, t_clock clk)
{
    

 
    u_int8 *p_fhs_clk = fhs->payload+14;
    clk >>= 2;
    *p_fhs_clk = (u_int8) ((*p_fhs_clk & 0x07 ) | ((clk & 0x1F)<< 3));
    clk >>= 5;
    *++p_fhs_clk = (u_int8) (clk & 0xFF);
    clk >>= 8;
    *++p_fhs_clk = (u_int8) (clk & 0xFF);
    clk >>= 8;
    ++p_fhs_clk;
    *p_fhs_clk = (u_int8) ((*p_fhs_clk & 0xE0) | (clk & 0x1F));
}






 
__inline t_clock FHS_Change_CLK_To_Offset(t_FHSpacket *fhs, t_clock base_clk)
{
    t_clock remoteCLK = FHS_Get_CLK(fhs);
    t_clock clk = (remoteCLK - (base_clk&0x0FFFFFFC)) & 0x0FFFFFFF;
    FHS_Set_CLK(fhs, clk);
    return clk;
}

__inline void FHS_Set_Device_Class(t_FHSpacket *fhs, t_classDevice class_of_device)
{
    u_int8 *p_fhs_device_class = fhs->payload+11;
    *p_fhs_device_class++ = (u_int8) (class_of_device & 0xFF);
    class_of_device >>=8;
    *p_fhs_device_class++ = (u_int8) (class_of_device & 0xFF);
    class_of_device >>=8;
    *p_fhs_device_class++ = (u_int8) (class_of_device & 0xFF);
}



#line 118 ".\\src\\Core\\bt\\include\\bt_fhs.h"





#line 22 ".\\src\\Core\\lc\\uslc\\include\\uslc_chan_ctrl.h"
#line 1 ".\\src\\Core\\lc\\include\\lc_interface.h"
















 

#line 20 ".\\src\\Core\\lc\\include\\lc_interface.h"
#line 21 ".\\src\\Core\\lc\\include\\lc_interface.h"
#line 1 ".\\src\\Core\\lc\\include\\lc_types.h"















 

#line 19 ".\\src\\Core\\lc\\include\\lc_types.h"
#line 1 ".\\src\\Core\\transport\\include\\tra_queue.h"
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
#line 33 ".\\src\\include\\include.h"
#line 1 ".\\src\\include\\config.h"
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










#line 4 ".\\src\\Core\\transport\\include\\tra_queue.h"




















 





 

enum 
{
    HCI_COMMAND_Q = 0,                  
    HCI_EVENT_Q   = HCI_COMMAND_Q + 1,      
    LMP_IN_Q      = HCI_EVENT_Q + 1,     
    LMP_OUT_Q     = LMP_IN_Q + 1,        





    L2CAP_IN_Q    = LMP_OUT_Q + (1 + 1 + 1 ),



    L2CAP_OUT_Q   = L2CAP_IN_Q + (1 + 1 + 1 ),
    

 
#line 59 ".\\src\\Core\\transport\\include\\tra_queue.h"
    

    
    TRA_QUEUE_TOTAL_NUM_QUEUES = L2CAP_OUT_Q+(1 + 1 + 1 )+1


};






 



















 

typedef struct q_desc 
{
    u_int8 *data;                    

    void (*callback)(t_deviceIndex); 
    u_int8 packet_type;              
    u_int8 message_type;             
	u_int8 auto_flushable;               
 
    u_int8 broadcast_flags;          
	u_int32 insert_time;              
    t_deviceIndex device_index;             

    u_int16 length;                   
    u_int16 data_start_offset;       

    struct q_desc *next;             
} t_q_descr;









 
typedef struct s_queue
{
    s_int16   head_offset;               
    s_int16   tail_offset;               
    s_int16   end_offset;                 
    s_int16   data_size;                 
    u_int8    *q_data;                   

    


 
    t_q_descr *headers;                  
                                         
    t_q_descr *headers_tail;             
    
    u_int16   original_length;           
    u_int16   rollback_length;           
    u_int16   num_processed_chunks;      
    u_int16   num_entries;               
	u_int16   total_data_enqueued;       
    u_int8    pending_commits;           

    u_int8    desc_head;                 
    u_int8    desc_tail;                 
    u_int8    num_headers;               
} t_queue;
    






 
typedef struct s_data_queue
{
    u_int16 num_of_headers;              
    u_int16 max_data_packet_length;      
    u_int16 num_of_consumed_chunks;      
    u_int16 next_free_pointer;           
    t_q_descr **free_header_list;        
    u_int8  *heap;                       
} t_data_queue;




 




 
void BTq_Initialise(void);





 
#line 197 ".\\src\\Core\\transport\\include\\tra_queue.h"













 
void BTq_Reset(t_deviceIndex device_index);





 
boolean __attribute__((section("fastcall"))) BTq_Is_Queue_Empty(u_int8 q_type, t_deviceIndex device_index);





 
boolean BTq_Are_Queues_Empty(u_int8 q_type);








 
boolean BTq_Is_Queue_Not_Full(u_int8 q_type, t_deviceIndex device_index);









 
t_q_descr __attribute__((section("fastcall"))) *BTq_Enqueue(u_int8 q_type, t_deviceIndex device_index, t_length);









 
void __attribute__((section("fastcall"))) BTq_Commit(u_int8 q_type, t_deviceIndex device_index);





 
t_q_descr __attribute__((section("fastcall"))) *BTq_Dequeue_Next(u_int8 q_type, t_deviceIndex device_index);










 
t_q_descr __attribute__((section("fastcall"))) *BTq_BB_Dequeue_Next(
    u_int8 q_type, t_deviceIndex device_index, t_packetTypes in_packet_types);











 
t_q_descr __attribute__((section("fastcall"))) *BTq_Dequeue_Next_Data_By_Length(
    u_int8 q_type, t_deviceIndex device_index, u_int16 max_packet_length);





 
void __attribute__((section("fastcall"))) BTq_Ack_Last_Dequeued(
    u_int8 q_type, t_deviceIndex device_index, t_length length);




 






 
u_int16 BTq_Get_Total_Number_Of_Processed_Chunks(u_int8 q_type);





 
u_int16 BTq_Get_Queue_Number_Of_Processed_Chunks(
    u_int8 q_type, t_deviceIndex device_index);







 
u_int16 BTq_Get_and_Reset_Queue_Number_Of_Processed_Chunks(
    u_int8 q_type, t_deviceIndex device_index);








 
void BTq_Reduce_Queue_Number_Of_Processed_Chunks(
    u_int8 q_type, t_deviceIndex device_index, u_int16 reduction);





 
u_int8* BTq_Get_L2CAP_Out_Heap_Ref(void);







 
 





 
void BTq_Deallocate_Queue_Data(u_int8 q_type, t_deviceIndex device_index);








 
void BTq_Initialise_Data_Queue(unsigned int q_index);


void BTq_Enhanced_Flush(t_deviceIndex device_index,u_int8 current_entry_flush_type,u_int16* p_current_pdu_remaining);








 





 




u_int16 __attribute__((section("fastcall"))) BTq_BB_Dequeue_Next_Synchronous(u_int8 q_type, u_int8 sco_index, 
                                   u_int16 packet_length, u_int8 *buffer);

u_int16 __attribute__((section("fastcall"))) BTq_Get_Total_Bytes_Enqueued(u_int8 q_type, t_deviceIndex device_index);



 
#line 1 ".\\src\\Core\\transport\\include\\tra_queue_impl.h"























 


#line 407 ".\\src\\Core\\transport\\include\\tra_queue.h"


 



 

u_int16 BTq_Get_Queue_Number_Of_Entries(
    u_int8 q_type, t_deviceIndex device_index);

#line 20 ".\\src\\Core\\lc\\include\\lc_types.h"



 









 





















typedef u_int16 t_USLC_Frame_Activity;












 
typedef enum
{
    No_State                            = 0x0000,       
    Standby                             = 0x00001,      
    Connection                          = 0x00002,      
    Page                                = 0x00004,      
    MasterPageResponse                  = 0x00008,      
    Page_Scan                           = 0x00010,      
    SlavePageResponse                   = 0x00020,      
    Inquiry                             = 0x00040,      
    InquiryResponse                     = 0x00080,      
    Inquiry_Scan                        = 0x00100,      
    Master_Slave_Switch                 = 0x00200,      
    Switch_Piconet                      = 0x00400,      
    Low_Power_Mode                      = 0x00800,      
    Return_To_Piconet                   = 0x01000,      
    Connection_2ndHalf_Slot_Tx          = 0x02000,
    Connection_Park_Access_Window_Rx    = 0x04000,
    MasterExtendedInquiryResponse       = 0x08000

} t_state;

typedef enum
 {
    PAGE_PROCEDURE=0,
    PAGESCAN_PROCEDURE,
    INQUIRY_PROCEDURE,
    INQUIRYSCAN_PROCEDURE,

    MSS_PROCEDURE,                 
    MSS_PROCEDURE_SLAVE_CONTEXT,   
    MSS_PROCEDURE_MASTER_CONTEXT,  

    SP_PROCEDURE,                 
    SP_PROCEDURE_SLAVE_CONTEXT,   
    SP_PROCEDURE_MASTER_CONTEXT,  

    SLEEP_PROCEDURE,                 

    R2P_PROCEDURE,   

    PARKSLAVE_PARK_PROCEDURE,

    PARKMASTER_PARK_PROCEDURE,

    LC_MAX_NUM_PROCEDURES,
    NO_PROCEDURE
} t_ulc_procedure;

typedef enum
{
    NoTrain=0,                           
    Atrain=24,                           
    Btrain=8,                            
    Standard_Scan=1,                     
    Alternative_Scan=2                   
} t_train;                               


typedef enum
{
    RF23=23,     
    RF79=79      
} t_rfMode;      

typedef enum
{
    NOT_CONNECTED=0,
    CONNECTED_TO_MASTER,
    CONNECTED_TO_SLAVE,
    CONNECTED_TO_MASTER_INACTIVE,
    CONNECTED_TO_SLAVE_INACTIVE
} t_device_ctrl_state;

typedef enum
{
    RXm_RECEIVER_DISABLED=0,
    RXm_SINGLE_WIN=1,
    RXm_DOUBLE_WIN=2,
    RXm_FULL_WIN=3
} t_Receiver_Mode;

typedef enum
{
    TXm_TRANSMITTER_DISABLED = 0,
    TXm_NORMAL=1,
    TXm_SLAVE_1ST_HALF__MASTER_BOTH=2,
    TXm_2ND_HALF_SLOT=3
} t_Transmitter_Mode;






 
typedef struct s_ch_quality
{
    u_int16 num_tx_acl_packets;
    u_int16 num_tx_acl_packets_acked;
    u_int16 num_rx_acl_packets;
    u_int16 num_rx_acl_packets_nacked;
    u_int16 num_tx_syn_packets;
    u_int16 num_tx_syn_packets_acked;
    u_int16 num_rx_syn_packets;
    u_int16 num_rx_syn_packets_nacked;
} t_ch_quality;





 



 

typedef enum e_LC_Event_Id
{
    

 
    LC_EVENT_REPORT_DEVICE_ACTIVITY,

    


 
    LC_EVENT_PAGE_RESULT,

    


 
    LC_EVENT_PAGE_COMPLETE,

    

 
    LC_EVENT_PAGE_SCAN_INCOMING,

    

 
    LC_EVENT_PAGE_SCAN_TIMEOUT,

    

 
    LC_EVENT_INQUIRY_COMPLETE,

    

 
    LC_EVENT_INQUIRY_RESULT,

    

 
    LC_EVENT_INQUIRY_SCAN_TIMEOUT,

    


 
    LC_EVENT_INQUIRY_SCAN_RAND_WAIT,

    

 
    LC_EVENT_MSS_COMPLETE,


    

 
    LC_EVENT_PARK_COMPLETE,

    


 
    LC_EVENT_UNPARK_COMPLETE,

    


 
    LC_EVENT_PARK_SLAVE_INIT_UNPARK_REQUEST,

    


 
    LC_EVENT_ACCESS_WINDOW_COMPLETE,



    

 
    LC_EVENT_R2P_TIMEOUT,


    


 

    

 
     LC_GET_NEXT_MASTER_TX_ACTIVITY,
    

 
     LC_GET_NEXT_SLAVE_TX_ACTIVITY,
    

 
     LC_GET_NEXT_SLAVE_RX_ACTIVITY,
     

 
     LC_GET_NEXT_SCO_TX_ACTIVITY,
      

 
     LC_IS_SCO_NEXT_ACTIVITY,
     

 
     LC_ACK_LAST_TX_PACKET,


    

 
    LC_MAX_NUMBER_OF_EVENTS

} t_LC_Event_Id;


 



 
typedef struct s_lc_eventInfo
{
     t_error status;
     t_FHSpacket*   fhs_packet;
     t_deviceIndex deviceIndex;
     t_parkDeviceIndex parkDeviceIndex;
     s_int8 rssi;

     u_int8 extension_length;

} t_LC_Event_Info;


typedef struct s_EIRpacket
{
    u_int8 data[240];
    u_int8 fec_required;
    t_packet optimal_packet_type;
    u_int8 length;
} t_EIRpacket;










 
typedef struct logical_transport_info
{
    u_int8 lt_addr;
    u_int8 tx_seqn;
    u_int8 rx_previous_arqn;
    u_int8 rx_expected_seqn;
    u_int8 tx_ack_pending;
} t_lt_info;

typedef struct eSCO_tx_descriptor
{
    u_int8 *data;
    u_int16 tx_length;
} t_eSCO_tx_descriptor;

typedef struct devlink
{
    t_deviceIndex device_index;          
    u_int8        piconet_index;       

    u_int8        am_addr;

    u_int8        role_of_peer;
    
    t_syncword    access_syncword;       

    

 
    t_clock   clock_offset;              
    t_uap_lap uap_lap;                   
    t_nap     nap;                       

    

 
    u_int32 piconet_clock_last_access;   

    

 
    t_q_descr *tx_descriptor;
    u_int8 packet_type; 

    u_int8  local_tx_L2CAP_flow;         
    u_int8  local_rx_L2CAP_flow;         

    

 
    t_sco_fifo active_sco_fifo;          
    t_packet   active_sco_pkt;           

    t_device_ctrl_state link_ctrl_state;

#line 423 ".\\src\\Core\\lc\\include\\lc_types.h"



#line 432 ".\\src\\Core\\lc\\include\\lc_types.h"
    

 
    u_int8  *p_encryption_key;           
    t_encrypt_mode encrypt_mode;         
    u_int8  hw_encryption_key_len;       

    u_int16 local_slot_offset_us;        
    u_int16 peer_slot_offset_us;         

    u_int8  power_level;                 






    u_int8  clock_jitter_us;             
    u_int8  clock_drift_ppm;             














 
    u_int8  local_rx_buffer_full;        


    u_int8  tx_seqn;                     
    u_int8  rx_previous_arqn;            



    u_int8  tx_seqn_active;             


 

    u_int8 remote_rx_buffer_full;        


 

    u_int8 tx_ack_pending;               
    u_int8 rx_expected_seqn;             

    u_int8 rx_expected_broadcast_seqn;

    t_TXRXstatus rx_status;              


    u_int8 pm_addr;



    volatile s_int8 rssi_average;
    volatile s_int8 rssi_lastpkt;







    t_ch_quality channel_quality;        


    t_slots next_wakeup_time;

	boolean ptt_acl;
	boolean ptt_esco;


	u_int8 ErroneousDataStatus;

    u_int8  prev_R2P_failed;  
    u_int32 not_received_correction;


} t_devicelink;






 
typedef struct parkdevlink
{
    t_parkDeviceIndex park_device_index;          

    t_encrypt_mode encrypt_mode;          
    u_int8  hw_encryption_key_len;       
    u_int8  *p_encryption_key;           

    u_int8  power_level;                 
    u_int16 peer_slot_offset_us;         

    u_int8  clock_jitter_us;             
    u_int8  clock_drift_ppm;             

} t_parkdevicelink;



#line 22 ".\\src\\Core\\lc\\include\\lc_interface.h"
#line 1 ".\\src\\Core\\lc\\dl\\include\\dl_dev.h"
















 

#line 20 ".\\src\\Core\\lc\\dl\\include\\dl_dev.h"
#line 21 ".\\src\\Core\\lc\\dl\\include\\dl_dev.h"
#line 22 ".\\src\\Core\\lc\\dl\\include\\dl_dev.h"

#line 24 ".\\src\\Core\\lc\\dl\\include\\dl_dev.h"



 


 







 






 









 
void DL_Initialise_All(void);

t_deviceIndex DL_Alloc_Link(void);
void DL_Free_Link(t_deviceIndex device_index);

t_am_addr DL_Alloc_Am_Addr(void);
void DL_Free_Am_Addr(t_am_addr am_addr);

t_am_addr DL_Alloc_eSCO_LT_Addr(void);
t_am_addr DL_Alloc_Next_Shared_eSCO_LT_Addr(void);
void DL_Record_eSCO_LT_Addr(t_am_addr lt_addr);
boolean DL_Is_eSCO_LT_Addr_Shared(t_am_addr lt_addr);
void DL_Free_eSCO_LT_Addr(t_am_addr lt_addr);

t_piconet_index DL_Assign_Piconet_Index(t_devicelink* p_device_link);
void DL_Free_Piconet_Index(t_piconet_index piconet_index);

void DL_Use_Local_Tx_Descriptor(t_devicelink* p_device_link);
void DL_Reset_New_Connection(t_devicelink *p_device_link, t_role role_of_peer);
void DL_Reset_RSSI_History(t_devicelink *p_device_link);


u_int8 DL_LT_ADDR_to_LT_INDEX_Mapping(t_devicelink* p_device_link, t_lt_addr lt_addr);




 
__inline void DL_Set_UAP_LAP(t_devicelink* pDevLink, t_uap_lap uap_lap);
__inline t_uap_lap DL_Get_UAP_LAP(const t_devicelink* pDevLink);
__inline void DL_Set_NAP(t_devicelink* pDevLink, t_nap nap);
__inline t_nap DL_Get_NAP(const t_devicelink* pDevLink);
__inline void DL_Get_Bd_Addr_Ex(const t_devicelink* pDevLink, t_bd_addr* bda);

__inline void
    DL_Set_Ctrl_State(t_devicelink *p_device_link, t_device_ctrl_state ctrlState);
__inline t_device_ctrl_state
    DL_Get_Ctrl_State(const t_devicelink *p_device_link);

__inline void   DL_Set_Role_Peer(t_devicelink *p_device_link, u_int role);
__inline t_role DL_Get_Role_Peer(const t_devicelink *p_device_link);

__inline t_role DL_Get_Role_Local(const t_devicelink *p_device_link);

__inline void  DL_Set_AM_Addr(t_devicelink* p_device_link, u_int am_addr);
__inline t_am_addr DL_Get_Am_Addr(const t_devicelink* p_device_link);

__inline void  DL_Set_Piconet_Index(t_devicelink* p_device_link, u_int piconet_index);
__inline t_am_addr DL_Get_Piconet_Index(const t_devicelink* p_device_link);
__inline boolean DL_Max_Piconets(void);

__inline void
    DL_Set_Access_Syncword(t_devicelink* p_device_link, t_syncword sync);
__inline t_syncword
    DL_Get_Access_Syncword(const t_devicelink* p_device_link);
__inline const t_syncword*
    DL_Get_Access_Syncword_Ref(const t_devicelink* pDevLink);
__inline void
    DL_Get_Access_Syncword_Ex(const t_devicelink* pDevLink, t_syncword *p_sync);


__inline u_int16 DL_Get_Local_Slot_Offset(const t_devicelink* p_device_link);
__inline void DL_Set_Peer_Slot_Offset(t_devicelink* p_device_link, u_int16 offset);




 

__inline boolean DL_Decode_Valid_LT_address(t_devicelink* p_device_link, u_int8 lt_addr);
__inline void DL_Set_Active_Tx_LT(t_devicelink* p_device_link, u_int8 active_lt);
__inline void DL_Set_Active_Rx_LT(t_devicelink* p_device_link, u_int8 active_lt);
__inline u_int8 DL_Get_Active_Rx_LT(t_devicelink* p_device_link);
__inline u_int8 DL_Get_Active_Tx_LT(t_devicelink* p_device_link);
__inline void DL_Set_LT_Address(t_devicelink* pDevLink, u_int8 lt_addr);
__inline u_int8 DL_Get_LT_Address(const t_devicelink* pDevLink);
__inline t_am_addr DL_Get_Tx_LT_Am_Addr(const t_devicelink* pDevLink);
__inline t_am_addr DL_Get_Rx_LT_Am_Addr(const t_devicelink* pDevLink);








 






 

__inline void DL_Set_eSCO_LT_Address(t_devicelink* p_device_link, u_int8 esco_lt_index, u_int8 lt_addr);

__inline u_int8 DL_Get_eSCO_LT_Address(const t_devicelink* p_device_link);

__inline void DL_Set_eSCO_Tx_Length(t_devicelink* p_device_link, u_int16 tx_length);

__inline u_int16 DL_Get_eSCO_Tx_Length(const t_devicelink* p_device_link);

__inline void DL_Set_eSCO_Rx_Length(t_devicelink* p_device_link, u_int16 rx_length);

__inline u_int16 DL_Get_eSCO_Rx_Length(const t_devicelink* p_device_link);

__inline void DL_Set_eSCO_Tx_Data(t_devicelink* p_device_link, u_int8* data);

__inline u_int8* DL_Get_eSCO_Tx_Data(const t_devicelink* p_device_link);



 

__inline u_int DL_Get_Tx_LT_Previous_Arqn(const t_devicelink* pDevLink);

__inline void DL_Set_Rx_LT_Previous_Arqn(t_devicelink* pDevLink, u_int arqn);



__inline void DL_Toggle_Rx_LT_Seqn(t_devicelink* pDevLink);

__inline void DL_Set_Tx_LT_Seqn(t_devicelink* pDevLink, u_int seqn);

__inline u_int DL_Get_Tx_LT_Seqn(const t_devicelink* pDevLink);

__inline void DL_Toggle_Tx_LT_Seqn(t_devicelink* pDevLink);


__inline void DL_Set_Tx_Seqn_Active(t_devicelink* pDevLink);
__inline void DL_Set_Tx_Seqn_Not_Active(t_devicelink* pDevLink);
__inline u_int8 DL_Is_Tx_Seqn_Active(t_devicelink* pDevLink);


__inline u_int DL_Get_Remote_Rxbuf_Full(const t_devicelink* p_device_link);
__inline void  DL_Set_Remote_Rxbuf_Full(t_devicelink* p_device_link, u_int status);

__inline u_int DL_Get_Local_Rxbuf_Full(const t_devicelink* p_device_link);
__inline void  DL_Set_Local_Rxbuf_Full(t_devicelink* p_device_link, u_int status);


__inline void DL_Set_Rx_LT_Expected_Seqn(t_devicelink* pDevLink, u_int seqn);

__inline u_int DL_Get_Rx_LT_Expected_Seqn(const t_devicelink* pDevLink);

__inline void DL_Toggle_Rx_LT_Expected_Seqn(t_devicelink* pDevLink);
__inline void DL_Toggle_Tx_LT_Expected_Seqn(t_devicelink* pDevLink);




__inline void  DL_Set_Rx_Expected_Broadcast_Seqn(t_devicelink* p_device_link, u_int seqn);
__inline void  DL_Toggle_Rx_Expected_Broadcast_Seqn(t_devicelink* p_device_link);
__inline u_int DL_Get_Rx_Expected_Broadcast_Seqn(const t_devicelink* p_device_link);

__inline u_int DL_Get_Tx_Ack_Pending(const t_devicelink* p_device_link);
__inline void  DL_Set_Tx_Ack_Pending(t_devicelink* p_device_link, u_int ackPending);


__inline u_int DL_Get_Tx_LT_Tx_Ack_Pending(const t_devicelink* pDevLink);
__inline u_int DL_Get_Rx_LT_Tx_Ack_Pending(const t_devicelink* pDevLink);

__inline void DL_Set_Tx_LT_Tx_Ack_Pending(t_devicelink* pDevLink, u_int8 tx_ack_pending);
__inline void DL_Set_Rx_LT_Tx_Ack_Pending(t_devicelink* pDevLink, u_int ack_pending);


__inline t_TXRXstatus DL_Get_Rx_Status(const t_devicelink* p_device_link);
__inline void  DL_Set_Rx_Status(t_devicelink* p_device_link, t_TXRXstatus status);

__inline u_int8 DL_Get_Power_Level(const t_devicelink* p_device_link);
__inline void   DL_Set_Power_Level(t_devicelink* p_device_link, u_int8 power_units);

#line 239 ".\\src\\Core\\lc\\dl\\include\\dl_dev.h"


__inline u_int16
    DL_Get_Local_Slot_Offset(const t_devicelink* p_device_link);
__inline void
    DL_Set_Local_Slot_Offset(t_devicelink* p_device_link, u_int16 offset);
__inline u_int16
    DL_Get_Peer_Slot_Offset(const t_devicelink* p_device_link);
__inline void
    DL_Set_Peer_Slot_Offset(t_devicelink* p_device_link, u_int16 offset);

__inline u_int32
    DL_Get_Piconet_Clock_Last_Access(const t_devicelink* p_device_link);
__inline void
    DL_Set_Piconet_Clock_Last_Access(t_devicelink* p_device_link, u_int32 clock);

__inline u_int8
    DL_Get_Clock_Jitter(const t_devicelink* p_device_link);
__inline void
    DL_Set_Clock_Jitter(t_devicelink* p_device_link, u_int8 jitter);

__inline u_int8
    DL_Get_Clock_Drift(const t_devicelink* p_device_link);
__inline void
    DL_Set_Clock_Drift(t_devicelink* p_device_link, u_int8 drift);


__inline u_int
    DL_Is_Local_Buffer_Full(const t_devicelink* p_device_link);




 
__inline t_packet DL_Get_Rx_Packet_Type(const t_devicelink* p_device_link);
__inline void DL_Set_Rx_Packet_Type(t_devicelink* p_device_link,t_packet type);
__inline void DL_Set_Tx_Descriptor_Ref(t_devicelink* pDevLink, struct q_desc *tx_desc);
__inline t_packet DL_Get_Tx_Packet_Type(const t_devicelink* p_device_link);
__inline t_length DL_Get_Tx_Length(const t_devicelink* p_device_link);
__inline u_int8*  DL_Get_Tx_Qpdu(const t_devicelink* p_device_link);
__inline t_LCHmessage DL_Get_Tx_Message_Type(const t_devicelink* p_device_link);

__inline void DL_Set_Tx_Packet_Type(t_devicelink* p_device_link, t_packet type);
__inline void DL_Set_Tx_Length(t_devicelink* p_device_link, t_length length);
__inline void DL_Set_Tx_Qpdu(t_devicelink* p_device_link, u_int8* buffer);
__inline void
    DL_Set_Tx_Message_Type(t_devicelink* p_device_link, t_LCHmessage type);



 
__inline t_flow   DL_Get_Local_Rx_L2CAP_Flow(const t_devicelink* p_device_link);
__inline void DL_Set_Local_Rx_L2CAP_Flow(t_devicelink* p_device_link, t_flow flow);
__inline t_flow   DL_Get_Local_Tx_L2CAP_Flow(const t_devicelink* p_device_link);
__inline void DL_Set_Local_Tx_L2CAP_Flow(t_devicelink* p_device_link, t_flow flow);




 
__inline t_packet DL_Get_Tx_SCO_Packet_Type(const t_devicelink* p_device_link);
__inline void DL_Set_Tx_SCO_Packet_Type(t_devicelink* p_device_link, t_packet type);
__inline u_int8 DL_Get_Active_SCO_Index(const t_devicelink* p_device_link);
__inline void DL_Set_Active_SCO_Index(t_devicelink* p_device_link, u_int8 index);



 
__inline void
    DL_Set_Encryption_Mode(t_devicelink* p_device_link,t_encrypt_mode encrypt_mode);
__inline t_encrypt_mode DL_Get_Encryption_Mode(const t_devicelink* p_device_link);

__inline void
    DL_Set_Encryption_Key_Ref(t_devicelink* p_device_link, u_int8 *p_encryption_key);
__inline u_int8* DL_Get_Encryption_Key_Ref(const t_devicelink* p_device_link);

__inline void
    DL_Set_Encryption_Key_Length(t_devicelink* p_device_link, u_int8 encryption_key_length);

__inline u_int8 DL_Get_Encryption_Key_Length(const t_devicelink* p_device_link);



 
__inline void DL_Set_Clock_Offset(t_devicelink* p_device_link, t_clock clk);
__inline t_clock DL_Get_Clock_Offset(const t_devicelink* p_device_link);




 
__inline t_devicelink* DL_Get_Local_Device_Ref(void);
__inline t_deviceIndex DL_Get_Local_Device_Index(void);
__inline t_devicelink* DL_Get_Device_Ref(t_deviceIndex device_index);
__inline t_deviceIndex DL_Get_Device_Index(const t_devicelink* p_device_link);



t_parkDeviceIndex DL_Park(t_deviceIndex device_index, t_pm_addr pm_addr);
t_deviceIndex DL_Unpark(t_parkDeviceIndex park_device_index, t_role role_of_peer, 
                                        t_am_addr am_addr);
t_parkDeviceIndex DL_Alloc_Park_Link(void);
void DL_Free_Park_Link(t_parkDeviceIndex park_device_index);

void DL_Unpark_Commit(t_parkDeviceIndex park_device_index, t_role role_of_peer);
void DL_Unpark_Rollback(t_deviceIndex device_index);

__inline u_int DL_Parked_Device_Exists(void);




__inline s_int8 DL_Get_RSSI(t_devicelink* p_device_link);
__inline s_int8 DL_Get_RSSI_For_Last_Packet_Received(t_devicelink* p_device_link);
__inline void DL_Update_RSSI_Average(t_devicelink* p_device_link, s_int8 rssi);





 
__inline void  DL_Inc_Tx_ACL_Data_Packets(t_devicelink* p_device_link);
__inline void  DL_Inc_Tx_ACL_Data_Packets_Acked(t_devicelink* p_device_link);
__inline void  DL_Inc_Tx_SYN_Data_Packets(t_devicelink* p_device_link);
__inline void  DL_Inc_Tx_SYN_Data_Packets_Acked(t_devicelink* p_device_link);
__inline void  DL_Inc_Rx_ACL_Data_Packets(t_devicelink* p_device_link);
__inline void  DL_Inc_Rx_ACL_Data_Packets_Nacked(t_devicelink* p_device_link);
__inline void  DL_Inc_Rx_SYN_Data_Packets(t_devicelink* p_device_link);
__inline void  DL_Inc_Rx_SYN_Data_Packets_Nacked(t_devicelink* p_device_link);
__inline const t_ch_quality *DL_Get_Channel_Quality_Ref(const t_devicelink* p_device_link);
__inline void  DL_Initialise_Channel_Quality(t_devicelink* p_device_link);
 
#line 388 ".\\src\\Core\\lc\\dl\\include\\dl_dev.h"



 
#line 400 ".\\src\\Core\\lc\\dl\\include\\dl_dev.h"



 

__inline boolean DL_Is_EDR_Enabled(const t_devicelink* pDevLink);
__inline void DL_Set_PTT_ACL(t_devicelink* pDevLink, boolean  ptt);
__inline boolean DL_Get_PTT_ACL(const t_devicelink* pDevLink);
__inline void DL_Set_PTT_ESCO(t_devicelink* pDevLink, boolean ptt);
__inline boolean DL_Get_PTT_ESCO(const t_devicelink* pDevLink);



__inline void DL_Set_Rx_SYNC_Erroneous_Data_Descriptor(t_devicelink* pDevLink,t_q_descr *p_descriptor);
__inline t_q_descr* DL_Get_Rx_SYNC_Erroneous_Data_Descriptor(t_devicelink* pDevLink);

__inline u_int8 DL_Get_Rx_SYNC_Erroneous_Data_Status(t_devicelink* pDevLink);
__inline void DL_Set_Rx_SYNC_Erroneous_Data_Status(t_devicelink* pDevLink,u_int8 status);

#line 1 ".\\src\\Core\\lc\\dl\\include\\dl_dev_impl.h"
















 



 




#line 27 ".\\src\\Core\\lc\\dl\\include\\dl_dev_impl.h"
#line 28 ".\\src\\Core\\lc\\dl\\include\\dl_dev_impl.h"
#line 1 ".\\src\\Core\\lc\\dl\\include\\dl_dev.h"
#line 424 ".\\src\\Core\\lc\\dl\\include\\dl_dev.h"

#line 29 ".\\src\\Core\\lc\\dl\\include\\dl_dev_impl.h"
#line 1 ".\\src\\Core\\hw\\include\\hw_lc.h"



















 


#line 24 ".\\src\\Core\\hw\\include\\hw_lc.h"
#line 25 ".\\src\\Core\\hw\\include\\hw_lc.h"
#line 1 ".\\src\\Core\\hw\\include\\hw_macro_defs.h"



















 




 












#line 44 ".\\src\\Core\\hw\\include\\hw_macro_defs.h"

#line 80 ".\\src\\Core\\hw\\include\\hw_macro_defs.h"








#line 95 ".\\src\\Core\\hw\\include\\hw_macro_defs.h"




 





    

 



















#line 156 ".\\src\\Core\\hw\\include\\hw_macro_defs.h"



 

















#line 183 ".\\src\\Core\\hw\\include\\hw_macro_defs.h"

#line 190 ".\\src\\Core\\hw\\include\\hw_macro_defs.h"

#line 224 ".\\src\\Core\\hw\\include\\hw_macro_defs.h"

#line 329 ".\\src\\Core\\hw\\include\\hw_macro_defs.h"



#line 26 ".\\src\\Core\\hw\\include\\hw_lc.h"

#line 1 ".\\src\\Core\\hw\\include\\hw_jalapeno.h"




















 





#line 28 ".\\src\\Core\\hw\\include\\hw_jalapeno.h"
#line 1 ".\\src\\Core\\hw\\include\\hw_jal_defs.h"




























 




 











 


























































































































 










 


















 








































#line 246 ".\\src\\Core\\hw\\include\\hw_jal_defs.h"































#line 300 ".\\src\\Core\\hw\\include\\hw_jal_defs.h"









#line 318 ".\\src\\Core\\hw\\include\\hw_jal_defs.h"




























































 




































































 

































 












#line 540 ".\\src\\Core\\hw\\include\\hw_jal_defs.h"



 

















#line 579 ".\\src\\Core\\hw\\include\\hw_jal_defs.h"





 































 





























 


























































#line 759 ".\\src\\Core\\hw\\include\\hw_jal_defs.h"



 




























#line 797 ".\\src\\Core\\hw\\include\\hw_jal_defs.h"





























 












 




















 








 












































 
































#line 956 ".\\src\\Core\\hw\\include\\hw_jal_defs.h"


















 










 












 










 













































 




















 












 









 












 








































 










































 












































 



































 
#line 1287 ".\\src\\Core\\hw\\include\\hw_jal_defs.h"


 















 


 





 






 





 
























 




 



#line 1367 ".\\src\\Core\\hw\\include\\hw_jal_defs.h"



 


#line 1385 ".\\src\\Core\\hw\\include\\hw_jal_defs.h"

#line 1397 ".\\src\\Core\\hw\\include\\hw_jal_defs.h"




 


#line 1416 ".\\src\\Core\\hw\\include\\hw_jal_defs.h"



 





















 













 




 


#line 1469 ".\\src\\Core\\hw\\include\\hw_jal_defs.h"



 
#line 1480 ".\\src\\Core\\hw\\include\\hw_jal_defs.h"



















 




 




 










 























 
#line 1552 ".\\src\\Core\\hw\\include\\hw_jal_defs.h"

#line 1560 ".\\src\\Core\\hw\\include\\hw_jal_defs.h"
















#line 1593 ".\\src\\Core\\hw\\include\\hw_jal_defs.h"






 


#line 1608 ".\\src\\Core\\hw\\include\\hw_jal_defs.h"





 


#line 1625 ".\\src\\Core\\hw\\include\\hw_jal_defs.h"



 
















 





#line 1661 ".\\src\\Core\\hw\\include\\hw_jal_defs.h"




 







































#line 29 ".\\src\\Core\\hw\\include\\hw_jalapeno.h"






 
 

#line 47 ".\\src\\Core\\hw\\include\\hw_jalapeno.h"
        		       
        		       

        		       
        		       

 


        		       
        		       





 



typedef struct ser_port_struct {
  u_int32 addr_len;
  u_int32 pkt_len;
  u_int32 clk_pol;
  u_int32 data_pol;
  u_int32 clk_low;
  u_int32 clk_high;
  u_int32 clk_byp;
  u_int32 le_inv;
  u_int32 le_src;
} ser_port_type;













 


 


 



 
typedef enum {RX_DISABLE=0, RX_NORMAL=1, RX_TWO_WINS=2, RX_FULL_WIN=3} t_rx_mode;




 
#line 125 ".\\src\\Core\\hw\\include\\hw_jalapeno.h"




 
#line 143 ".\\src\\Core\\hw\\include\\hw_jalapeno.h"







#line 28 ".\\src\\Core\\hw\\include\\hw_lc.h"

void HWlc_Initialise(void);






 

__inline void HW_set_bd_addr(const t_bd_addr *);
__inline void HW_set_bd_addr_via_uap_lap_nap(t_uap_lap uap_lap, t_nap nap);
__inline void HW_set_uap_lap(t_uap_lap);
__inline void HW_set_nap(t_nap);
__inline u_int32 HW_get_uap_lap(void);
__inline u_int32 HW_get_nap(void);
__inline void HW_get_bd_addr_Ex(t_bd_addr *);

__inline void HW_set_sync(const u_int32 *);
__inline void HW_set_sync_U32(const u_int32 low_word, const u_int32 high_word);
__inline void HW_get_sync_Ex(u_int32 *);

__inline void HW_set_intraslot_offset(const u_int32);
__inline u_int32 HW_get_intraslot_offset(void);
__inline u_int32 HW_Get_Intraslot_Avoid_Race(void);

__inline void HW_set_enc_key(const u_int32*);
__inline void HW_get_enc_key_Ex(u_int32 *);

__inline void HW_set_bt_clk(t_clock bt_clk);
__inline void HW_set_bt_clk_offset(t_clock bt_clk_offset);
__inline t_clock HW_get_bt_clk(void);
__inline t_clock HW_Get_Bt_Clk_Avoid_Race(void);

__inline void HW_set_native_clk(const t_clock);
__inline t_clock volatile HW_get_native_clk(void);
__inline t_clock HW_Get_Native_Clk_Avoid_Race(void);

__inline void HW_set_am_addr(const u_int);
__inline u_int HW_get_am_addr(void);

__inline void HW_set_encrypt(const u_int);
__inline u_int32 HW_get_encrypt(void);

__inline void HW_set_whiten(const u_int);
__inline u_int HW_get_whiten(void);

__inline void HW_set_use_lf(const u_int);
__inline u_int HW_get_use_lf(void);

__inline void HW_set_sleep_status(const u_int);
__inline u_int HW_get_sleep_status(void);

__inline void HW_set_slave(const u_int);
__inline u_int HW_get_slave(void);

__inline void HW_set_page(const u_int);
__inline u_int HW_get_page(void);

__inline void HW_set_sco_cfg0(const u_int);
__inline u_int HW_get_sco_cfg0(void);

__inline void HW_set_sco_cfg1(const u_int);
__inline u_int HW_get_sco_cfg1(void);

__inline void HW_set_sco_cfg2(const u_int);
__inline u_int HW_get_sco_cfg2(void);

__inline void HW_set_sco_fifo(const u_int);
__inline u_int HW_get_sco_fifo(void);

__inline void HW_set_vci_clk_sel( const u_int vci_clk );
__inline u_int HW_get_vci_clk_sel(void);

__inline void HW_set_loop(const u_int);
__inline u_int HW_get_loop(void);

__inline void HW_set_test_eco(const u_int);
__inline u_int HW_get_test_eco(void);

__inline void HW_set_test_crc(const u_int);
__inline u_int HW_get_test_crc(void);

__inline void HW_set_test_hec(const u_int);
__inline u_int HW_get_test_hec(void);

__inline void HW_set_test_radio(const u_int);
__inline u_int HW_get_test_radio(void);

__inline void HW_set_vci_clk_sel_map(const u_int);
__inline u_int HW_get_vci_clk_sel_map(void);

__inline void HW_set_test_msg(const u_int);
__inline u_int HW_get_test_msg(void);

__inline void HW_set_dwh_ini(const u_int);
__inline u_int HW_get_dwh_ini(void);

__inline void HW_set_dwh2_ini(const u_int);
__inline u_int HW_get_dwh2_ini(void);

__inline void HW_set_crc_ini(const u_int ini);
__inline u_int HW_get_crc_ini(void);     




 

__inline void HW_set_pkd_intr_mask(const u_int);
__inline u_int HW_get_pkd_intr_mask(void);

__inline void  HW_set_pkd_rx_hdr_intr_mask(const u_int);
__inline u_int HW_get_pkd_rx_hdr_intr_mask(void);

__inline void HW_set_pka_intr_mask(const u_int);
__inline u_int HW_get_pka_intr_mask(void);

__inline void HW_set_no_pkt_rcvd_intr_mask(const u_int);
__inline u_int HW_get_no_pkt_rcvd_intr_mask(void);

__inline void HW_set_sync_det_intr_mask(const u_int);
__inline u_int HW_get_sync_det_intr_mask(void);

__inline void HW_set_tim_intr_mask(const u_int);
__inline u_int HW_get_tim_intr_mask(void);

__inline void HW_set_aux_tim_intr_mask(const u_int);
__inline u_int HW_get_aux_tim_intr_mask(void);

__inline void HW_set_gio_intr_mask0(const u_int);
__inline u_int HW_get_gio_intr_mask0(void);

__inline void HW_set_gio_intr_mask1(const u_int);
__inline u_int HW_get_gio_intr_mask1(void);

__inline void HW_set_gio_intr_mask2(const u_int);
__inline u_int HW_get_gio_intr_mask2(void);

__inline void HW_set_gio_intr_mask3(const u_int);
__inline u_int HW_get_gio_intr_mask3(void);

__inline void HW_set_pkd_intr_clr(const u_int);
__inline void HW_set_pkd_rx_hdr_intr_clr(const u_int);
__inline void HW_set_pka_intr_clr(const u_int);
__inline void HW_set_no_pkt_rcvd_intr_clr(const u_int);
__inline void HW_set_sync_det_intr_clr(const u_int);
__inline void HW_set_tim_intr_clr(const u_int);
__inline void HW_set_aux_tim_intr_clr(const u_int);
__inline void HW_set_gio_intr_clr0(const u_int);
__inline void HW_set_gio_intr_clr1(const u_int);
__inline void HW_set_gio_intr_clr2(const u_int);
__inline void HW_set_gio_intr_clr3(const u_int);



 
__inline u_int HW_get_pkd_intr_clr(void);
__inline u_int HW_get_pkd_rx_hdr_intr_clr(void);
__inline u_int HW_get_pka_intr_clr(void);
__inline u_int HW_get_no_pkt_rcvd_intr_clr(void);
__inline u_int HW_get_sync_det_intr_clr(void);
__inline u_int HW_get_tim_intr_clr(void);
__inline u_int HW_get_aux_tim_intr_clr(void);
__inline u_int HW_get_gio_intr_clr0(void);
__inline u_int HW_get_gio_intr_clr1(void);
__inline u_int HW_get_gio_intr_clr2(void);
__inline u_int HW_get_gio_intr_clr3(void);







 
__inline u_int HW_get_pkd_intr(void);
__inline u_int HW_get_pkd_rx_hdr_intr(void);
__inline u_int HW_get_pka_intr(void);
__inline u_int HW_get_no_pkt_rcvd_intr(void);
__inline u_int HW_get_sync_det_intr(void);
__inline u_int HW_get_tim_intr(void);
__inline u_int HW_get_aux_tim_intr(void);
__inline u_int HW_get_gio_intr0(void);
__inline u_int HW_get_gio_intr1(void);
__inline u_int HW_get_gio_intr2(void);
__inline u_int HW_get_gio_intr3(void);





 
__inline void HW_set_pkd_intr(const u_int pkd_intr);
__inline void HW_set_pkd_rx_hdr_intr(const u_int pkd_rx_hdr_intr);
__inline void HW_set_pka_intr(const u_int pka_intr);
__inline void HW_set_no_pkt_rcvd_intr(const u_int pka_intr);
__inline void HW_set_sync_det_intr(const u_int pka_intr);
__inline void HW_set_tim_intr(const u_int tim_intr);
__inline void HW_set_aux_tim_intr(const u_int aux_tim_intr);
__inline void HW_set_gio_intr0(const u_int gio_intr0);
__inline void HW_set_gio_intr1(const u_int gio_intr1);
__inline void HW_set_gio_intr2(const u_int gio_intr2);
__inline void HW_set_gio_intr3(const u_int gio_intr3);







 
__inline void HW_set_tx_len(const u_int);
__inline u_int HW_get_tx_len(void);

__inline void HW_set_tx_type(const u_int);
__inline u_int HW_get_tx_type(void);

__inline void HW_set_tx_flow(const u_int);
__inline u_int HW_get_tx_flow(void);

__inline void HW_set_tx_arqn(const u_int);
__inline u_int HW_get_tx_arqn(void);

__inline void HW_set_tx_seqn(const u_int);
__inline u_int HW_get_tx_seqn(void);

__inline void HW_set_tx_buf(const u_int);
__inline u_int HW_get_tx_buf(void);

__inline void HW_set_transmit(const u_int);
__inline u_int HW_get_transmit(void);

__inline void HW_set_tx_half(const u_int);
__inline u_int HW_get_tx_half(void);

__inline void HW_set_tx_p_flow(const u_int);
__inline u_int HW_get_tx_p_flow(void);

__inline void HW_set_tx_l_ch(const u_int);
__inline u_int HW_get_tx_l_ch(void);







 
__inline u_int HW_get_tx0_over(void);
__inline u_int HW_get_tx0_under(void);
__inline u_int HW_get_tx1_over(void);
__inline u_int HW_get_tx1_under(void);
__inline u_int HW_get_tx2_over(void);
__inline u_int HW_get_tx2_under(void);





 
__inline void HW_set_tx0_over(u_int  tx0_over);
__inline void HW_set_tx0_under(u_int tx0_under);
__inline void HW_set_tx1_over(u_int  tx1_over);
__inline void HW_set_tx1_under(u_int tx1_under);
__inline void HW_set_tx2_over(u_int  tx2_over);
__inline void HW_set_tx2_under(u_int tx2_under);







 
__inline void HW_set_rx_mode(const u_int);
__inline u_int HW_get_rx_mode(void);

__inline void HW_set_tx_mode(const u_int);
__inline u_int HW_get_tx_mode(void);

__inline void HW_set_abort_on_wrong_am_addr(const u_int);
__inline u_int HW_get_abort_on_wrong_am_addr(void);

__inline void HW_set_rx_buf(const u_int);
__inline u_int HW_get_rx_buf(void);

__inline void HW_set_err_sel(const u_int);
__inline u_int HW_get_err_sel(void);

__inline void HW_set_win_ext(const u_int);
__inline u_int HW_get_win_ext(void);

__inline void   HW_set_freeze_bit_cnt(const u_int);
__inline u_int32 HW_get_win_ext(void);






 
__inline u_int HW_get_rx_len(void);
__inline u_int HW_get_rx_type(void);
__inline u_int HW_get_rx_flow(void);
__inline u_int HW_get_rx_arqn(void);
__inline u_int HW_get_rx_seqn(void);
__inline u_int HW_get_rx_am_addr(void);
__inline u_int HW_get_rx_l_ch(void);
__inline u_int HW_get_rx_p_flow(void);
__inline u_int HW_get_rx_pkt(void);
__inline u_int HW_get_hec_err(void);
__inline u_int HW_get_crc_err(void);
__inline u_int HW_get_rx_hdr(void);
__inline u_int HW_get_rx0_over(void);
__inline u_int HW_get_rx0_under(void);
__inline u_int HW_get_rx1_over(void);
__inline u_int HW_get_rx1_under(void);
__inline u_int HW_get_rx2_over(void);
__inline u_int HW_get_rx2_under(void);
__inline u_int HW_get_rst_code(void);
__inline u_int32 HW_get_err_cnt(void);
__inline u_int HW_get_am_addr_abort(void);






 
__inline u_int HW_get_esco_lt_addr(void);
__inline u_int HW_get_esco_tx_len(void);
__inline u_int HW_get_esco_rx_len(void);
__inline u_int HW_get_sco_route(void);





 
__inline void HW_set_rx_len(u_int rx_len );
__inline void HW_set_rx_type(u_int rx_type );
__inline void HW_set_rx_flow(u_int rx_flow );
__inline void HW_set_rx_arqn(u_int rx_arqn );
__inline void HW_set_rx_seqn(u_int rx_seqn );
__inline void HW_set_rx_am_addr(u_int rx_am_addr );
__inline void HW_set_rx_l_ch(u_int rx_l_ch );
__inline void HW_set_rx_p_flow(u_int rx_p_flow );
__inline void HW_set_rx_pkt(u_int rx_pkt );
__inline void HW_set_hec_err(u_int hec_err );
__inline void HW_set_crc_err(u_int crc_err );
__inline void HW_set_rx_hdr(u_int rx_hdr );
__inline void HW_set_rx0_over(u_int rx0_over );
__inline void HW_set_rx0_under(u_int rx0_under );
__inline void HW_set_rx1_over(u_int rx1_over );
__inline void HW_set_rx1_under(u_int rx1_under );
__inline void HW_set_rx2_over(u_int rx2_over );
__inline void HW_set_rx2_under(u_int rx_2under);
__inline void HW_set_rst_code(u_int rst_code );
__inline void HW_set_err_cnt(u_int err_cnt );



 
__inline void HW_set_esco_lt_addr(u_int esco_lt_addr);
__inline void HW_set_esco_rx_len(u_int esco_rx_len);







 
__inline void HW_set_gio_high(const u_int rf_high);
__inline u_int32 HW_get_gio_high(void);

__inline void HW_set_gio_low(const u_int rf_low);
__inline u_int32 HW_get_gio_low(void);







 
__inline void HW_set_gio0(const u_int);
__inline u_int32 HW_get_gio0(void);

__inline void HW_set_gio1(const u_int);
__inline u_int32 HW_get_gio1(void);

__inline void HW_set_gio2(const u_int);
__inline u_int32 HW_get_gio2(void);

__inline void HW_set_gio3(const u_int);
__inline u_int32 HW_get_gio3(void);







 
__inline u_int32 HW_get_gio_status(void);




 
__inline void HW_set_gio_status(u_int gio_status);







 
__inline void HW_set_ser_cfg(const u_int);
__inline u_int32 HW_get_ser_cfg(void);

__inline void HW_set_ser_data(const u_int);
__inline u_int32 HW_get_ser_data(void);






 
__inline void HW_set_aux_timer(const u_int);
__inline u_int32 HW_get_aux_timer(void);






 
__inline void HW_set_tx_delay(const u_int);
__inline u_int HW_get_tx_delay(void);

__inline void HW_set_rx_delay(const u_int);
__inline u_int HW_get_rx_delay(void);





 
__inline void HW_set_add_bt_clk_relative(const u_int);
__inline u_int HW_get_add_bt_clk_relative(void);



 
__inline u_int HW_get_minor_revision(void);
__inline u_int HW_get_major_revision(void);





 
__inline void HWjal_Set_Rst_Code(const u_int);




 
__inline u_int HWjal_Get_Rst_Code(void);






 






  









 
void HWlc_Initialise(void);
void HWlc_Reset(void);
__inline void HW_set_use_hab_crl1(const u_int value);





 
__inline void HW_toggle_tx_buf(void);
__inline void HW_toggle_rx_buf(void);





 

__inline void HW_Disable_EDR(void);



 
__inline void HW_set_tx_edr_delay(const u_int);
__inline u_int HW_get_tx_edr_delay(void);

__inline void HW_set_rx_edr_delay(const u_int);
__inline u_int HW_get_rx_edr_delay(void);



 
__inline void HW_set_edr_sync_err(const u_int);
__inline u_int HW_get_edr_sync_err(void);



#line 1 ".\\src\\Core\\hw\\include\\hw_lc_impl.h"




















 

#line 24 ".\\src\\Core\\hw\\include\\hw_lc_impl.h"
#line 1 ".\\src\\hal\\hw\\include\\hw_memcpy.h"



















 
#line 22 ".\\src\\hal\\hw\\include\\hw_memcpy.h"
#line 23 ".\\src\\hal\\hw\\include\\hw_memcpy.h"



 







__inline void *hw_memcpy8(void * dest, const void * src, size_t size);
__inline void hw_memset8(void * dest, u_int8 value, size_t size);

__inline void *hw_memcpy128(void *dest, const void *src, size_t size);

__inline void *hw_memcpy32_transparent(void *dest, const void *src, size_t size);

__inline void hw_memcpy_byte_pairs_to_word32(void *dest, const void *src, size_t size);
__inline void hw_memcpy_byte_pairs_from_word32(void *dest, const void *src, size_t size);
__inline void hw_memcpy_byte_to_word32(void *dest, const void *src, size_t size);



#line 53 ".\\src\\hal\\hw\\include\\hw_memcpy.h"

    __inline void * hw_memcpy32(void * dest, const void * src, size_t size);










 
#line 73 ".\\src\\hal\\hw\\include\\hw_memcpy.h"






 
#line 86 ".\\src\\hal\\hw\\include\\hw_memcpy.h"


#line 1 ".\\src\\hal\\hw\\include\\hw_memcpy_impl.h"















 





#line 23 ".\\src\\hal\\hw\\include\\hw_memcpy_impl.h"
#line 1 ".\\src\\hal\\hw\\include\\hw_memcpy.h"
#line 93 ".\\src\\hal\\hw\\include\\hw_memcpy.h"

#line 24 ".\\src\\hal\\hw\\include\\hw_memcpy_impl.h"
#line 25 ".\\src\\hal\\hw\\include\\hw_memcpy_impl.h"

#line 38 ".\\src\\hal\\hw\\include\\hw_memcpy_impl.h"



#line 49 ".\\src\\hal\\hw\\include\\hw_memcpy_impl.h"
















 
__inline void * hw_memcpy128(void *dest, const void *src, size_t size)
{


    u_int32 *dest_ptr = (u_int32*) dest;
    u_int32 *src_ptr  = (u_int32*) src;
    

 
    u_int32 *src_past_end_ptr = src_ptr + ((size+sizeof(u_int32)-1)
                                >> 2);

#line 85 ".\\src\\hal\\hw\\include\\hw_memcpy_impl.h"

    while(src_ptr < src_past_end_ptr)
    {
        *dest_ptr++ = (*src_ptr); src_ptr++;
        *dest_ptr++ = (*src_ptr); src_ptr++;
        *dest_ptr++ = (*src_ptr); src_ptr++;
        *dest_ptr++ = (*src_ptr); src_ptr++;
#line 98 ".\\src\\hal\\hw\\include\\hw_memcpy_impl.h"
    }

#line 136 ".\\src\\hal\\hw\\include\\hw_memcpy_impl.h"

    return dest;
}









 
__inline void * hw_memcpy32_transparent(void *dest, const void *src, size_t size)
{
    u_int32 *dest_cpy = (u_int32*) dest,
            *src_cpy = (u_int32*) src;
    u_int32 *dest_end = (u_int32*)((u_int32)dest_cpy+size);

#line 161 ".\\src\\hal\\hw\\include\\hw_memcpy_impl.h"

    while(dest_cpy < dest_end)
    {
        *dest_cpy++ = *src_cpy++;
    }

    return dest;
}













 
__inline void * hw_memcpy32(void *dest, const void *src, size_t size)
{
    u_int32 *dest_cpy = (u_int32*) dest,
        *src_cpy = (u_int32*) src;

#line 194 ".\\src\\hal\\hw\\include\\hw_memcpy_impl.h"

    size = ((size + 3) >> 2);

    while(size--)
    {
        *dest_cpy++ = (*src_cpy); src_cpy++;
    }

    return dest;
}





#line 237 ".\\src\\hal\\hw\\include\\hw_memcpy_impl.h"









 
__inline void * hw_memcpy8(void * dest, const void * src, size_t size)
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





 
__inline void hw_memset8(void * dest, u_int8 value, size_t size)
{
    u_int8 *_u8_dest = (u_int8 *)dest;
    u_int8 *_u8_end  = (u_int8 *)dest + size;

    while (_u8_dest < _u8_end)
    {
        *_u8_dest++ = value;
    }
}

















 
__inline void hw_memcpy_byte_pairs_to_word32(void *dest, const void *src, size_t size)
{
    u_int32 *p_dest32 = (u_int32 *)dest;
    u_int8  *p_src8   = (u_int8  *)src;
    u_int32 word32;
    u_int8 *p_src8_end = p_src8+size;
     
    while(p_src8 < p_src8_end)
    {
        

 
        word32 = *p_src8++;
        word32 += (*p_src8++<<8);
        *p_dest32++ = word32; 
    }
}


__inline void hw_memcpy_byte_to_word32(void *dest, const void *src, size_t size)
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















 
__inline void hw_memcpy_byte_pairs_from_word32(void *dest, const void *src, size_t size)
{
    u_int8  *p_dest8 = (u_int8 *)dest;
    u_int32 *p_src32   = (u_int32*)src;
    u_int32 word32;
    u_int8 *p_dest8_end = p_dest8+size;
     
    while(p_dest8 < p_dest8_end)
    {
        

 
        word32 = *p_src32++;
        *p_dest8++ = (u_int8) word32;
        *p_dest8++ = (u_int8) (word32>>8);
    }
}


#line 90 ".\\src\\hal\\hw\\include\\hw_memcpy.h"




#line 25 ".\\src\\Core\\hw\\include\\hw_lc_impl.h"
#line 1 ".\\src\\Core\\hw\\include\\hw_lc.h"
#line 26 ".\\src\\Core\\hw\\include\\hw_lc_impl.h"
#line 1 ".\\src\\Core\\lc\\lslc\\include\\lslc_clk.h"


















 

void LSLCclk_Initialise(void);





#line 29 ".\\src\\Core\\lc\\lslc\\include\\lslc_clk.h"


boolean LSLCclk_Is_Safe_To_Read_Native_Clk(t_frame_pos frame_posn);

void LSLCclk_Wait_For(t_frame_pos frame_posn);

#line 27 ".\\src\\Core\\hw\\include\\hw_lc_impl.h"
#line 28 ".\\src\\Core\\hw\\include\\hw_lc_impl.h"

#line 295 ".\\src\\Core\\hw\\include\\hw_lc_impl.h"

#line 302 ".\\src\\Core\\hw\\include\\hw_lc_impl.h"







 

 
__inline void HW_set_bd_addr(const t_bd_addr *p_bda)
{

    

 
    u_int32 bd_U32x2[2];
    { bd_U32x2[0] = ( (t_uap_lap) ( (t_uap) (p_bda)->bytes[3] )<<24 | (t_uap_lap) ( ((t_lap) (p_bda)->bytes[2] << 16) + ( (t_lap) (p_bda)->bytes[1] << 8) + (p_bda)->bytes[0] ) ); bd_U32x2[1] = ( (t_nap) (((t_nap) (p_bda)->bytes[5] << 8) + (p_bda)->bytes[4])); };
    { u_int32 volatile *pDst = (u_int32 volatile*)((u_int32 volatile *) ((0x00000000 + 0x0F26000) )); *pDst = *((bd_U32x2)); *(++pDst) = *((bd_U32x2) + 1); };
#line 327 ".\\src\\Core\\hw\\include\\hw_lc_impl.h"

}



 
__inline void HW_set_bd_addr_via_uap_lap_nap(t_uap_lap uap_lap, t_nap nap)
{
    ( *((u_int32 volatile *) ((0x00000000 + 0x0F26000) )) = uap_lap );
    ( *((u_int32 volatile *) ((0x00000004 + 0x0F26000) )) = nap );
}



 
__inline void HW_set_uap_lap(t_uap_lap uap_lap)
                                        { ( *((u_int32 volatile *) ((0x00000000 + 0x0F26000) )) = uap_lap ); }
__inline void HW_set_nap(t_nap nap)   { ( *((u_int32 volatile *) ((0x00000004 + 0x0F26000) )) = nap ); }
__inline u_int32 HW_get_uap_lap(void) { return ( *((u_int32 volatile *) ((0x00000000 + 0x0F26000) )) ); }
__inline u_int32 HW_get_nap(void)     { return ( *((u_int32 volatile *) ((0x00000004 + 0x0F26000) )) ); }



 
__inline void HW_get_bd_addr_Ex(t_bd_addr *p_bda)
{

    

 
    u_int32 bd_32[2];
    { u_int32 volatile *pSrc = (u_int32 volatile*)((u_int32 volatile *) ((0x00000000 + 0x0F26000) )); *(bd_32) = *pSrc; *((bd_32) + 1) = *(++pSrc); };
    { { t_lap lap = (bd_32[0]&0xFFFFFF); (p_bda)->bytes[0] = (u_int8)(lap & 0xFF); (p_bda)->bytes[1] = (u_int8)((lap>>8) & 0xFF); (p_bda)->bytes[2] = (u_int8) (lap>>16); }; ((p_bda)->bytes[3] = ((t_uap) (bd_32[0]>>24))); { t_nap nap = (bd_32[1]); (p_bda)->bytes[4] = (u_int8) (nap & 0xFF); (p_bda)->bytes[5] = (u_int8) (nap>>8); }; };
#line 367 ".\\src\\Core\\hw\\include\\hw_lc_impl.h"
}

#line 378 ".\\src\\Core\\hw\\include\\hw_lc_impl.h"


 
__inline void HW_set_sync(const u_int32 *sync) { { u_int32 volatile *pDst = (u_int32 volatile*)((u_int32 volatile *) ((0x00000008 + 0x0F26000) )); *pDst = *((sync)); *(++pDst) = *((sync) + 1); }; }
__inline void HW_set_sync_U32(const u_int32 low_word, const u_int32 high_word)
{
    ( *((u_int32 volatile *) ((0x00000008 + 0x0F26000) )) = low_word );    ( *((u_int32 volatile *) ((0x0000000C + 0x0F26000) )) = high_word );
}

 
__inline void HW_get_sync_Ex(u_int32 *sync) { { u_int32 volatile *pSrc = (u_int32 volatile*)((u_int32 volatile *) ((0x00000008 + 0x0F26000) )); *(sync) = *pSrc; *((sync) + 1) = *(++pSrc); }; }


 
__inline void HW_set_intraslot_offset(const u_int32 offset)
{


    ( *((u_int32 volatile *) ((0x00000010 + 0x0F26000) )) = offset );




}

 
__inline u_int32 HW_get_intraslot_offset(void) { return ( *((u_int32 volatile *) ((0x00000010 + 0x0F26000) )) ); }

 
__inline u_int32 HW_Get_Intraslot_Avoid_Race(void)
{
    u_int32 intraslot_offset = HW_get_intraslot_offset();


    if (HW_get_intraslot_offset() != intraslot_offset)
    {    
        intraslot_offset = HW_get_intraslot_offset();
    }    
    return intraslot_offset;
}

 
__inline void HW_set_enc_key(const u_int32* enc_key)
{
    { u_int32 volatile *pDst = (u_int32 volatile*)((u_int32 volatile *) ((0x000000C0 + 0x0F26000) )); *pDst = *((enc_key)); *(++pDst) = *((enc_key) + 1); *(++pDst) = *((enc_key) + 2); *(++pDst) = *((enc_key) + 3); };
}

 
__inline void HW_get_enc_key_Ex(u_int32 *enc_key)
{
    { u_int32 volatile *pSrc = (u_int32 volatile*)((u_int32 volatile *) ((0x000000C0 + 0x0F26000) )); *(enc_key) = *pSrc; *((enc_key) + 1) = *(++pSrc); *((enc_key) + 2) = *(++pSrc); *((enc_key) + 3) = *(++pSrc); };
}


 
__inline t_clock volatile HW_get_native_clk(void)
{




    return ( *((u_int32 volatile *) ((0x0000001c + 0x0F26000) )) );

}

 
__inline u_int HW_get_slave(void) { return ( ( *((u_int32 volatile *) ((0x00000020 + 0x0F26000) )) & ((0x00000040)) ) >> (6) ); }

#line 463 ".\\src\\Core\\hw\\include\\hw_lc_impl.h"

 
__inline t_clock HW_get_bt_clk(void)
{






    return ( *((u_int32 volatile *) ((0x00000018 + 0x0F26000) )) );
#line 486 ".\\src\\Core\\hw\\include\\hw_lc_impl.h"
}

__inline t_clock HW_Get_Bt_Clk_Avoid_Race(void)
{
    t_clock piconet_clk;






    {
        piconet_clk = HW_get_bt_clk();
    










        {
            if (HW_get_bt_clk() != piconet_clk)
            {
                piconet_clk = HW_get_bt_clk(); 
 
            }
        }
    }
    
    return piconet_clk;
}



 
__inline void __attribute__((section("fastcall"))) HW_set_bt_clk_offset(t_clock bt_clk_offset)
{
#line 534 ".\\src\\Core\\hw\\include\\hw_lc_impl.h"

    ( *((u_int32 volatile *) ((0x00000018 + 0x0F26000) )) = bt_clk_offset );





}


 
__inline void HW_set_native_clk(const t_clock clkn)
{
#line 553 ".\\src\\Core\\hw\\include\\hw_lc_impl.h"
      ( *((u_int32 volatile *) ((0x0000001c + 0x0F26000) )) = clkn );

}

__inline t_clock HW_Get_Native_Clk_Avoid_Race(void)
{
    t_clock native_clk;






    {
        native_clk = HW_get_native_clk();
    
        HWdelay_Wait_For_us(1);




         
      

        {
            if (HW_get_native_clk() != native_clk)
            {
                native_clk = HW_get_native_clk(); 
 
            }
        }
    }

    return native_clk;
}

 
__inline void HW_set_am_addr(const u_int am_addr) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000020 + 0x0F26000) )); *addr = ((((am_addr) << (0)) & (0x00000007)) | (*addr & ~(0x00000007))) ; }; }
 
__inline u_int HW_get_am_addr(void) { return ( ( *((u_int32 volatile *) ((0x00000020 + 0x0F26000) )) & ((0x00000007)) ) >> (0) ); }

 
__inline void HW_set_encrypt(const u_int encrypt) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000020 + 0x0F26000) )); *addr = ((((encrypt) << (3)) & (0x00000018)) | (*addr & ~(0x00000018))) ; }; }
 
__inline u_int HW_get_encrypt(void) { return ( ( *((u_int32 volatile *) ((0x00000020 + 0x0F26000) )) & ((0x00000018)) ) >> (3) ); }

 
__inline void HW_set_whiten(const u_int whiten) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000024 + 0x0F26000) )); *addr = ((((whiten) << (31)) & (0x80000000)) | (*addr & ~(0x80000000))) ; }; }
 
__inline u_int HW_get_whiten(void) { return ( ( *((u_int32 volatile *) ((0x00000024 + 0x0F26000) )) & ((0x80000000)) ) >> (31) ); }

 
__inline void HW_set_use_lf(const u_int use_lf) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000020 + 0x0F26000) )); *addr = ((((use_lf) << (5)) & (0x00000020)) | (*addr & ~(0x00000020))) ; }; }
 
__inline u_int HW_get_use_lf(void) { return ( ( *((u_int32 volatile *) ((0x00000020 + 0x0F26000) )) & ((0x00000020)) ) >> (5) ); }

 
__inline void HW_set_slave(const u_int slave) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000020 + 0x0F26000) )); *addr = ((((slave) << (6)) & (0x00000040)) | (*addr & ~(0x00000040))) ; }; }

 
__inline void HW_set_page(const u_int page) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000020 + 0x0F26000) )); *addr = ((((page) << (7)) & (0x00000080)) | (*addr & ~(0x00000080))) ; }; }
 
__inline u_int HW_get_page(void) { return ( ( *((u_int32 volatile *) ((0x00000020 + 0x0F26000) )) & ((0x00000080)) ) >> (7) ); }

 
__inline void HW_set_sleep_status(const u_int use_lf) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x0000002C + 0x0F26000) )); *addr = ((((use_lf) << (15)) & (0x00008000)) | (*addr & ~(0x00008000))) ; }; }
 
__inline u_int HW_get_sleep_status(void) { return ( ( *((u_int32 volatile *) ((0x0000002C + 0x0F26000) )) & ((0x00008000)) ) >> (15) ); }


 
__inline void HW_set_sco_cfg0( const u_int cfg)   { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000020 + 0x0F26000) )); *addr = ((((cfg) << (8)) & (0x00000F00)) | (*addr & ~(0x00000F00))) ; }; }
__inline u_int HW_get_sco_cfg0(void)              { return ( ( *((u_int32 volatile *) ((0x00000020 + 0x0F26000) )) & ((0x00000F00)) ) >> (8) ); }

__inline void HW_set_sco_cfg1( const u_int cfg)   { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000020 + 0x0F26000) )); *addr = ((((cfg) << (12)) & (0x0000F000)) | (*addr & ~(0x0000F000))) ; }; }
__inline u_int HW_get_sco_cfg1(void)              { return ( ( *((u_int32 volatile *) ((0x00000020 + 0x0F26000) )) & ((0x0000F000)) ) >> (12) ); }

__inline void HW_set_sco_cfg2( const u_int cfg)   { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000020 + 0x0F26000) )); *addr = ((((cfg) << (16)) & (0x000F0000)) | (*addr & ~(0x000F0000))) ; }; }
__inline u_int HW_get_sco_cfg2(void)              { return ( ( *((u_int32 volatile *) ((0x00000020 + 0x0F26000) )) & ((0x000F0000)) ) >> (16) ); }


 
__inline void HW_set_sco_fifo( const u_int fifo ) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000020 + 0x0F26000) )); *addr = ((((fifo) << (20)) & (0x00300000)) | (*addr & ~(0x00300000))) ; }; }
 
__inline u_int HW_get_sco_fifo(void)              { return ( ( *((u_int32 volatile *) ((0x00000020 + 0x0F26000) )) & ((0x00300000)) ) >> (20) ); }

 
__inline void HW_set_vci_clk_sel( const u_int vci_clk ) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000020 + 0x0F26000) )); *addr = ((((vci_clk) << (22)) & (0x00c00000)) | (*addr & ~(0x00c00000))) ; }; }
 
__inline u_int HW_get_vci_clk_sel(void) { return ( ( *((u_int32 volatile *) ((0x00000020 + 0x0F26000) )) & ((0x00c00000)) ) >> (22) ); }

 
__inline void HW_set_loop(const u_int loop) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000024 + 0x0F26000) )); *addr = ((((loop) << (0)) & (0x00000001)) | (*addr & ~(0x00000001))) ; }; }
 
__inline u_int HW_get_loop(void) { return ( ( *((u_int32 volatile *) ((0x00000024 + 0x0F26000) )) & ((0x00000001)) ) >> (0) ); }

 
__inline void HW_set_test_eco(const u_int test_eco) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000024 + 0x0F26000) )); *addr = ((((test_eco) << (1)) & (0x00000002)) | (*addr & ~(0x00000002))) ; }; }
 
__inline u_int HW_get_test_eco(void) { return ( ( *((u_int32 volatile *) ((0x00000024 + 0x0F26000) )) & ((0x00000002)) ) >> (1) ); }

 
__inline void HW_set_test_crc(const u_int test_crc) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000024 + 0x0F26000) )); *addr = ((((test_crc) << (6)) & (0x00000040)) | (*addr & ~(0x00000040))) ; }; }
 
__inline u_int HW_get_test_crc(void) {return ( ( *((u_int32 volatile *) ((0x00000024 + 0x0F26000) )) & ((0x00000040)) ) >> (6) ); }

 
__inline void HW_set_test_hec(const u_int test_hec) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000024 + 0x0F26000) )); *addr = ((((test_hec) << (7)) & (0x00000080)) | (*addr & ~(0x00000080))) ; }; }
 
__inline u_int HW_get_test_hec(void) { return ( ( *((u_int32 volatile *) ((0x00000024 + 0x0F26000) )) & ((0x00000080)) ) >> (7) ); }

 
__inline void HW_set_test_radio(const u_int test_radio) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000024 + 0x0F26000) )); *addr = ((((test_radio) << (8)) & (0x00000100)) | (*addr & ~(0x00000100))) ; }; }
 
__inline u_int HW_get_test_radio(void) { return ( ( *((u_int32 volatile *) ((0x00000024 + 0x0F26000) )) & ((0x00000100)) ) >> (8) ); }

 
__inline void HW_set_vci_clk_sel_map(const u_int value) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000024 + 0x0F26000) )); *addr = ((((value) << (9)) & (0x00000200)) | (*addr & ~(0x00000200))) ; }; }
 
__inline u_int HW_get_vci_clk_sel_map(void) { return ( ( *((u_int32 volatile *) ((0x00000024 + 0x0F26000) )) & ((0x00000200)) ) >> (9) ); }

 
__inline void HW_set_test_msg(const u_int value) {{ u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000024 + 0x0F26000) )); *addr = ((((value) << (11)) & (0x00000800)) | (*addr & ~(0x00000800))) ; };}
__inline u_int HW_get_test_msg(void) { return ( ( *((u_int32 volatile *) ((0x00000024 + 0x0F26000) )) & ((0x00000800)) ) >> (11) ); }

 
__inline void HW_set_dwh_ini(const u_int dwh_init) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000024 + 0x0F26000) )); *addr = ((((dwh_init) << (16)) & (0x003f0000)) | (*addr & ~(0x003f0000))) ; }; }
 
__inline u_int HW_get_dwh_ini(void) { return ( ( *((u_int32 volatile *) ((0x00000024 + 0x0F26000) )) & ((0x003f0000)) ) >> (16) ); }

 
__inline void HW_set_dwh2_ini(const u_int dwh2_init) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000024 + 0x0F26000) )); *addr = ((((dwh2_init) << (24)) & (0x3f000000)) | (*addr & ~(0x3f000000))) ; }; }
 
__inline u_int HW_get_dwh2_ini(void) { return ( ( *((u_int32 volatile *) ((0x00000024 + 0x0F26000) )) & ((0x3f000000)) ) >> (24) ); }

 
__inline void HW_set_crc_ini(const u_int crc_ini) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000020 + 0x0F26000) )); *addr = ((((crc_ini) << (24)) & (0xff000000)) | (*addr & ~(0xff000000))) ; }; }
 
__inline u_int HW_get_crc_ini(void)  { return ( ( *((u_int32 volatile *) ((0x00000020 + 0x0F26000) )) & ((0xff000000)) ) >> (24) );  } 

 
__inline void HW_set_tim_intr_mask(const u_int value) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000028 + 0x0F26000) )); *addr = ((((value) << (0)) & (0x0000000f)) | (*addr & ~(0x0000000f))) ; };
 }
 
__inline u_int HW_get_tim_intr_mask(void) { return ( ( *((u_int32 volatile *) ((0x00000028 + 0x0F26000) )) & ((0x0000000f)) ) >> (0) ); }

 
__inline void HW_set_pkd_intr_mask(const u_int value) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000028 + 0x0F26000) )); *addr = ((((value) << (4)) & (0x00000010)) | (*addr & ~(0x00000010))) ; }; }
 
__inline u_int HW_get_pkd_intr_mask(void) { return ( ( *((u_int32 volatile *) ((0x00000028 + 0x0F26000) )) & ((0x00000010)) ) >> (4) ); }

 
__inline void HW_set_aux_tim_intr_mask(const u_int value) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000028 + 0x0F26000) )); *addr = ((((value) << (5)) & (0x00000020)) | (*addr & ~(0x00000020))) ; }; }
 
__inline u_int HW_get_aux_tim_intr_mask(void) { return ( ( *((u_int32 volatile *) ((0x00000028 + 0x0F26000) )) & ((0x00000020)) ) >> (5) ); }

 
__inline void HW_set_pka_intr_mask(const u_int value) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000028 + 0x0F26000) )); *addr = ((((value) << (6)) & (0x00000040)) | (*addr & ~(0x00000040))) ; }; }
 
__inline u_int HW_get_pka_intr_mask(void) { return ( ( *((u_int32 volatile *) ((0x00000028 + 0x0F26000) )) & ((0x00000040)) ) >> (6) ); }

__inline void  HW_set_pkd_rx_hdr_intr_mask(const u_int value) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000028 + 0x0F26000) )); *addr = ((((value) << (7)) & (0x00000080)) | (*addr & ~(0x00000080))) ; }; }
__inline u_int HW_get_pkd_rx_hdr_intr_mask(void) { return ( ( *((u_int32 volatile *) ((0x00000028 + 0x0F26000) )) & ((0x00000080)) ) >> (7) ); }

 
__inline void HW_set_gio_intr_mask0(const u_int value) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000028 + 0x0F26000) )); *addr = ((((value) << (8)) & (0x00000300)) | (*addr & ~(0x00000300))) ; }; }
 
__inline u_int HW_get_gio_intr_mask0(void) { return ( ( *((u_int32 volatile *) ((0x00000028 + 0x0F26000) )) & ((0x00000300)) ) >> (8) ); }

 
__inline void HW_set_gio_intr_mask1(const u_int value) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000028 + 0x0F26000) )); *addr = ((((value) << (10)) & (0x00000c00)) | (*addr & ~(0x00000c00))) ; }; }
 
__inline u_int HW_get_gio_intr_mask1(void) { return ( ( *((u_int32 volatile *) ((0x00000028 + 0x0F26000) )) & ((0x00000c00)) ) >> (10) ); }

 
__inline void HW_set_gio_intr_mask2(const u_int value) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000028 + 0x0F26000) )); *addr = ((((value) << (12)) & (0x00001000)) | (*addr & ~(0x00001000))) ; }; }
 
__inline u_int HW_get_gio_intr_mask2(void) { return ( ( *((u_int32 volatile *) ((0x00000028 + 0x0F26000) )) & ((0x00001000)) ) >> (12) ); }

 
__inline void HW_set_gio_intr_mask3(const u_int value) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000028 + 0x0F26000) )); *addr = ((((value) << (14)) & (0x0000c000)) | (*addr & ~(0x0000c000))) ; }; }
 
__inline u_int HW_get_gio_intr_mask3(void) { return ( ( *((u_int32 volatile *) ((0x00000028 + 0x0F26000) )) & ((0x0000c000)) ) >> (14) ); }


 
__inline void HW_set_tim_intr_clr(const u_int value) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000028 + 0x0F26000) )); *addr = ((((value) << (16)) & (0x000f0000)) | (*addr & ~(0x000f0000))) ; }; }

 
__inline void HW_set_pkd_intr_clr(const u_int value) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000028 + 0x0F26000) )); *addr = ((((value) << (20)) & (0x00100000)) | (*addr & ~(0x00100000))) ; }; }

 
__inline void HW_set_aux_tim_intr_clr(const u_int value) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000028 + 0x0F26000) )); *addr = ((((value) << (21)) & (0x00200000)) | (*addr & ~(0x00200000))) ; }; }

 
__inline void HW_set_pka_intr_clr(const u_int value) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000028 + 0x0F26000) )); *addr = ((((value) << (22)) & (0x00400000)) | (*addr & ~(0x00400000))) ; }; }

 
__inline void HW_set_pkd_rx_hdr_intr_clr(const u_int value) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000028 + 0x0F26000) )); *addr = ((((value) << (23)) & (0x00800000)) | (*addr & ~(0x00800000))) ; }; }

 
__inline void HW_set_gio_intr_clr0(const u_int value) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000028 + 0x0F26000) )); *addr = ((((value) << (24)) & (0x01000000)) | (*addr & ~(0x01000000))) ; }; }

 
__inline void HW_set_gio_intr_clr1(const u_int value) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000028 + 0x0F26000) )); *addr = ((((value) << (26)) & (0x04000000)) | (*addr & ~(0x04000000))) ; }; }

 
__inline void HW_set_gio_intr_clr2(const u_int value) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000028 + 0x0F26000) )); *addr = ((((value) << (28)) & (0x10000000)) | (*addr & ~(0x10000000))) ; }; }

 
__inline void HW_set_gio_intr_clr3(const u_int value) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000028 + 0x0F26000) )); *addr = ((((value) << (30)) & (0x40000000)) | (*addr & ~(0x40000000))) ; }; }




 
 
__inline u_int HW_get_tim_intr(void) { return ( ( *((u_int32 volatile *) ((0x0000002c + 0x0F26000) )) & ((0x0000000f)) ) >> (0) ); }

 
__inline u_int HW_get_pkd_intr(void) { return ( ( *((u_int32 volatile *) ((0x0000002c + 0x0F26000) )) & ((0x00000010)) ) >> (4) ); }

 
__inline u_int HW_get_aux_tim_intr(void) { return ( ( *((u_int32 volatile *) ((0x0000002c + 0x0F26000) )) & ((0x00000020)) ) >> (5) ); }

 
__inline u_int HW_get_pka_intr(void) { return ( ( *((u_int32 volatile *) ((0x0000002c + 0x0F26000) )) & ((0x00000040)) ) >> (6) ); }

 
__inline u_int HW_get_pkd_rx_hdr_intr(void) { return ( ( *((u_int32 volatile *) ((0x0000002c + 0x0F26000) )) & ((0x00000080)) ) >> (7) ); }

 
__inline u_int HW_get_gio_intr0(void) { return ( ( *((u_int32 volatile *) ((0x0000002c + 0x0F26000) )) & ((0x00000100)) ) >> (8) ); }

 
__inline u_int HW_get_gio_intr1(void) { return ( ( *((u_int32 volatile *) ((0x0000002c + 0x0F26000) )) & ((0x00000400)) ) >> (10) ); }

 
__inline u_int HW_get_gio_intr2(void) { return ( ( *((u_int32 volatile *) ((0x0000002c + 0x0F26000) )) & ((0x00001000)) ) >> (12) ); }

 
__inline u_int HW_get_gio_intr3(void) { return ( ( *((u_int32 volatile *) ((0x0000002c + 0x0F26000) )) & ((0x00004000)) ) >> (14) ); }





 

 
__inline void HW_set_tx_len(const u_int len) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000710 + 0x0F26000) )); *addr = ((((len) << (0)) & (0x000003ff)) | (*addr & ~(0x000003ff))) ; }; }
 
__inline u_int HW_get_tx_len(void) { return ( ( *((u_int32 volatile *) ((0x00000710 + 0x0F26000) )) & ((0x000003ff)) ) >> (0) ); }

 
__inline void HW_set_tx_type(const u_int type) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000710 + 0x0F26000) )); *addr = ((((type) << (10)) & (0x00003c00)) | (*addr & ~(0x00003c00))) ; }; }
 

__inline u_int HW_get_tx_type(void) {
	return (( ( *((u_int32 volatile *) ((0x00000710 + 0x0F26000) )) & ((0x00003c00)) ) >> (10) )>DM1) ? ((( ( *((u_int32 volatile *) ((0x00000700 + 0x0F26000) )) & ((0x00000002)) ) >> (1) ) | ( ( *((u_int32 volatile *) ((0x00000700 + 0x0F26000) )) & ((0x00000004)) ) >> (2) )) << 4) |
		( ( *((u_int32 volatile *) ((0x00000710 + 0x0F26000) )) & ((0x00003c00)) ) >> (10) ): ( ( *((u_int32 volatile *) ((0x00000710 + 0x0F26000) )) & ((0x00003c00)) ) >> (10) ) ; }




 
__inline void HW_set_tx_flow(const u_int flow) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000710 + 0x0F26000) )); *addr = ((((flow) << (14)) & (0x00004000)) | (*addr & ~(0x00004000))) ; }; }
 
__inline u_int HW_get_tx_flow(void) { return ( ( *((u_int32 volatile *) ((0x00000710 + 0x0F26000) )) & ((0x00004000)) ) >> (14) ); }

 
__inline void HW_set_tx_arqn(const u_int arqn) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000710 + 0x0F26000) )); *addr = ((((arqn) << (15)) & (0x00008000)) | (*addr & ~(0x00008000))) ; }; }
 
__inline u_int HW_get_tx_arqn(void) { return ( ( *((u_int32 volatile *) ((0x00000710 + 0x0F26000) )) & ((0x00008000)) ) >> (15) ); }

 
__inline void HW_set_tx_seqn(const u_int seqn) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000710 + 0x0F26000) )); *addr = ((((seqn) << (16)) & (0x00010000)) | (*addr & ~(0x00010000))) ; }; }
 
__inline u_int HW_get_tx_seqn(void) { return ( ( *((u_int32 volatile *) ((0x00000710 + 0x0F26000) )) & ((0x00010000)) ) >> (16) ); }

 
__inline void HW_set_tx_buf(const u_int32 buf) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000710 + 0x0F26000) )); *addr = ((((buf) << (23)) & (0x00800000)) | (*addr & ~(0x00800000))) ; }; }
 
__inline u_int HW_get_tx_buf(void) { return ( ( *((u_int32 volatile *) ((0x00000710 + 0x0F26000) )) & ((0x00800000)) ) >> (23) ); }

 
__inline void HW_set_transmit(const u_int tr) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000030 + 0x0F26000) )); *addr = ((((tr) << (17)) & (0x00020000)) | (*addr & ~(0x00020000))) ; }; }
 
__inline u_int HW_get_transmit(void) { return ( ( *((u_int32 volatile *) ((0x00000030 + 0x0F26000) )) & ((0x00020000)) ) >> (17) ); }

 
__inline void HW_set_tx_half(const u_int id)  { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000030 + 0x0F26000) )); *addr = ((((id) << (18)) & (0x00040000)) | (*addr & ~(0x00040000))) ; }; }
 
__inline u_int HW_get_tx_half(void) { return ( ( *((u_int32 volatile *) ((0x00000030 + 0x0F26000) )) & ((0x00040000)) ) >> (18) ); }

 
__inline void HW_set_tx_l_ch(const u_int l_ch) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000710 + 0x0F26000) )); *addr = ((((l_ch) << (20)) & (0x00300000)) | (*addr & ~(0x00300000))) ; }; }
 
__inline u_int HW_get_tx_l_ch(void) { return ( ( *((u_int32 volatile *) ((0x00000710 + 0x0F26000) )) & ((0x00300000)) ) >> (20) ); }

 
__inline void HW_set_tx_p_flow(const u_int flow) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000710 + 0x0F26000) )); *addr = ((((flow) << (22)) & (0x00400000)) | (*addr & ~(0x00400000))) ; }; }
 
__inline u_int HW_get_tx_p_flow(void) { return ( ( *((u_int32 volatile *) ((0x00000710 + 0x0F26000) )) & ((0x00400000)) ) >> (22) ); }




 
 
__inline u_int HW_get_tx0_over(void)  { return ( ( *((u_int32 volatile *) ((0x00000040 + 0x0F26000) )) & ((0x00000001)) ) >> (0) ); }

 
__inline u_int HW_get_tx0_under(void) { return ( ( *((u_int32 volatile *) ((0x00000040 + 0x0F26000) )) & ((0x00000002)) ) >> (1) ); }

 
__inline u_int HW_get_tx1_over(void)  { return ( ( *((u_int32 volatile *) ((0x00000040 + 0x0F26000) )) & ((0x00000004)) ) >> (2) ); }

 
__inline u_int HW_get_tx1_under(void) { return ( ( *((u_int32 volatile *) ((0x00000040 + 0x0F26000) )) & ((0x00000008)) ) >> (3) ); }

 
__inline u_int HW_get_tx2_over(void)  { return ( ( *((u_int32 volatile *) ((0x00000040 + 0x0F26000) )) & ((0x00000010)) ) >> (4) ); }

 
__inline u_int HW_get_tx2_under(void) { return ( ( *((u_int32 volatile *) ((0x00000040 + 0x0F26000) )) & ((0x00000020)) ) >> (5) ); }




 
 
__inline void HW_set_rx_mode(const u_int mode) { 
    { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000048 + 0x0F26000) )); *addr = ((((mode) << (0)) & (0x00000003)) | (*addr & ~(0x00000003))) ; }; 
}
 
__inline u_int HW_get_rx_mode(void) { return ( ( *((u_int32 volatile *) ((0x00000048 + 0x0F26000) )) & ((0x00000003)) ) >> (0) ); }

 
__inline void HW_set_tx_mode(const u_int mode) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000710 + 0x0F26000) )); *addr = ((((mode) << (18)) & (0x000C0000)) | (*addr & ~(0x000C0000))) ; }; }
 
__inline u_int HW_get_tx_mode(void) { return ( ( *((u_int32 volatile *) ((0x00000710 + 0x0F26000) )) & ((0x000C0000)) ) >> (18) ); }

 
__inline void HW_set_abort_on_wrong_am_addr(const u_int abort_on_wrong_am_addr) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000048 + 0x0F26000) )); *addr = ((((abort_on_wrong_am_addr) << (23)) & (0x00800000)) | (*addr & ~(0x00800000))) ; }; }
 
__inline u_int HW_get_abort_on_wrong_am_addr(void) { return ( ( *((u_int32 volatile *) ((0x00000048 + 0x0F26000) )) & ((0x00800000)) ) >> (23) ); }

 
__inline void HW_set_rx_buf(const u_int buf) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000048 + 0x0F26000) )); *addr = ((((buf) << (8)) & (0x00000100)) | (*addr & ~(0x00000100))) ; }; }
 
__inline u_int HW_get_rx_buf(void) { return ( ( *((u_int32 volatile *) ((0x00000048 + 0x0F26000) )) & ((0x00000100)) ) >> (8) ); }

 
__inline void   HW_set_err_sel(const u_int sel) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000048 + 0x0F26000) )); *addr = ((((sel) << (9)) & (0x00000e00)) | (*addr & ~(0x00000e00))) ; }; }
 
__inline u_int32 HW_get_err_sel(void) { return ( ( *((u_int32 volatile *) ((0x00000048 + 0x0F26000) )) & ((0x00000e00)) ) >> (9) ); }

 
__inline void   HW_set_win_ext(const u_int ext) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000048 + 0x0F26000) )); *addr = ((((ext) << (12)) & (0x003ff000)) | (*addr & ~(0x003ff000))) ; }; }
 
__inline u_int32 HW_get_win_ext(void) { return ( ( *((u_int32 volatile *) ((0x00000048 + 0x0F26000) )) & ((0x003ff000)) ) >> (12) ); }

 
__inline void   HW_set_freeze_bit_cnt(const u_int freeze) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000048 + 0x0F26000) )); *addr = ((((freeze) << (22)) & (0x00400000)) | (*addr & ~(0x00400000))) ; }; }
 
__inline u_int  HW_get_freeze_bit_cnt(void) { return ( ( *((u_int32 volatile *) ((0x00000048 + 0x0F26000) )) & ((0x00400000)) ) >> (22) ); }  



 

 
__inline u_int HW_get_rx_len(void) { return ( ( *((u_int32 volatile *) ((0x00000730 + 0x0F26000) )) & ((0x000003ff)) ) >> (0) ); }

 

__inline u_int HW_get_rx_type(void) {
	return (( ( *((u_int32 volatile *) ((0x00000730 + 0x0F26000) )) & ((0x00003c00)) ) >> (10) )>DM1) ? ((( ( *((u_int32 volatile *) ((0x00000700 + 0x0F26000) )) & ((0x00000002)) ) >> (1) ) | ( ( *((u_int32 volatile *) ((0x00000700 + 0x0F26000) )) & ((0x00000004)) ) >> (2) )) << 4) |
		( ( *((u_int32 volatile *) ((0x00000730 + 0x0F26000) )) & ((0x00003c00)) ) >> (10) ): ( ( *((u_int32 volatile *) ((0x00000730 + 0x0F26000) )) & ((0x00003c00)) ) >> (10) ) ; }



 
__inline u_int HW_get_rx_flow(void) { return ( ( *((u_int32 volatile *) ((0x00000730 + 0x0F26000) )) & ((0x00004000)) ) >> (14) ); }

 
__inline u_int HW_get_rx_arqn(void) { return ( ( *((u_int32 volatile *) ((0x00000730 + 0x0F26000) )) & ((0x00008000)) ) >> (15) ); }

 
__inline u_int HW_get_rx_seqn(void) { return ( ( *((u_int32 volatile *) ((0x00000730 + 0x0F26000) )) & ((0x00010000)) ) >> (16) ); }

 
__inline u_int HW_get_rx_am_addr(void) { return ( ( *((u_int32 volatile *) ((0x00000730 + 0x0F26000) )) & ((0x000e0000)) ) >> (17) ); }

 
__inline u_int HW_get_rx_l_ch(void) { return ( ( *((u_int32 volatile *) ((0x00000730 + 0x0F26000) )) & ((0x00300000)) ) >> (20) ); }

 
__inline u_int HW_get_rx_p_flow(void) { return ( ( *((u_int32 volatile *) ((0x00000730 + 0x0F26000) )) & ((0x00400000)) ) >> (22) ); }

 
__inline u_int HW_get_rx_pkt(void) { return ( ( *((u_int32 volatile *) ((0x00000730 + 0x0F26000) )) & ((0x01000000)) ) >> (24) ); }

 
__inline u_int HW_get_hec_err(void) { return ( ( *((u_int32 volatile *) ((0x00000730 + 0x0F26000) )) & ((0x02000000)) ) >> (25) ); }

 
__inline u_int HW_get_crc_err(void) { return ( ( *((u_int32 volatile *) ((0x00000730 + 0x0F26000) )) & ((0x04000000)) ) >> (26) ); }

 
__inline u_int HW_get_rx_hdr(void)  { return ( ( *((u_int32 volatile *) ((0x00000730 + 0x0F26000) )) & ((0x08000000)) ) >> (27) ); }

 
__inline u_int HW_get_rx0_over(void) {return ( ( *((u_int32 volatile *) ((0x00000054 + 0x0F26000) )) & ((0x00000001)) ) >> (0) ); }

 
__inline u_int HW_get_rx0_under(void) {return ( ( *((u_int32 volatile *) ((0x00000054 + 0x0F26000) )) & ((0x00000002)) ) >> (1) ); }

 
__inline u_int HW_get_rx1_over(void) {return ( ( *((u_int32 volatile *) ((0x00000054 + 0x0F26000) )) & ((0x00000004)) ) >> (2) ); }

 
__inline u_int HW_get_rx1_under(void) {return ( ( *((u_int32 volatile *) ((0x00000054 + 0x0F26000) )) & ((0x00000008)) ) >> (3) ); }

 
__inline u_int HW_get_rx2_over(void) {return ( ( *((u_int32 volatile *) ((0x00000054 + 0x0F26000) )) & ((0x00000010)) ) >> (4) ); }

 
__inline u_int HW_get_rx2_under(void) {return ( ( *((u_int32 volatile *) ((0x00000054 + 0x0F26000) )) & ((0x00000020)) ) >> (5) ); }

 
__inline u_int HW_get_rst_code(void) { return ( ( *((u_int32 volatile *) ((0x000000FC + 0x0F26000) )) & ((0xFF000000)) ) >> (24) ); }

 
__inline u_int32 HW_get_err_cnt(void) { return ( ( *((u_int32 volatile *) ((0x0000005C + 0x0F26000) )) & ((0x0000FFFF)) ) >> (0) ); }

 
__inline u_int HW_get_am_addr_abort(void) { return ( ( *((u_int32 volatile *) ((0x00000730 + 0x0F26000) )) & ((0x20000000)) ) >> (29) ); }
                                                                 




 

 
__inline void  HW_set_gio_high(const u_int gio_high){ { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000060 + 0x0F26000) )); *addr = ((((gio_high) << (0)) & (0x000007ff)) | (*addr & ~(0x000007ff))) ; }; }
 
__inline u_int HW_get_gio_high(void) { return ( ( *((u_int32 volatile *) ((0x00000060 + 0x0F26000) )) & ((0x000007ff)) ) >> (0) ); }


 
__inline void HW_set_gio_low(const u_int gio_low) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000070 + 0x0F26000) )); *addr = ((((gio_low) << (0)) & (0x000007ff)) | (*addr & ~(0x000007ff))) ; }; }
 
__inline u_int HW_get_gio_low(void) { return ( ( *((u_int32 volatile *) ((0x00000070 + 0x0F26000) )) & ((0x000007ff)) ) >> (0) ); }




 
 
__inline void  HW_set_gio0(const u_int gio0){ { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000080 + 0x0F26000) )); *addr = ((((gio0) << (0)) & (0x0000000F)) | (*addr & ~(0x0000000F))) ; }; }
 
__inline u_int HW_get_gio0(void) { return ( ( *((u_int32 volatile *) ((0x00000080 + 0x0F26000) )) & ((0x0000000F)) ) >> (0) ); }

 
__inline void  HW_set_gio1(const u_int gio1){ { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000080 + 0x0F26000) )); *addr = ((((gio1) << (4)) & (0x000000F0)) | (*addr & ~(0x000000F0))) ; }; }
 
__inline u_int HW_get_gio1(void) { return ( ( *((u_int32 volatile *) ((0x00000080 + 0x0F26000) )) & ((0x000000F0)) ) >> (4) ); }

 
__inline void  HW_set_gio2(const u_int gio2){ { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000080 + 0x0F26000) )); *addr = ((((gio2) << (8)) & (0x00000F00)) | (*addr & ~(0x00000F00))) ; }; }
 
__inline u_int HW_get_gio2(void) { return ( ( *((u_int32 volatile *) ((0x00000080 + 0x0F26000) )) & ((0x00000F00)) ) >> (8) ); }

 
__inline void  HW_set_gio3(const u_int gio3){ { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000080 + 0x0F26000) )); *addr = ((((gio3) << (12)) & (0x0000F000)) | (*addr & ~(0x0000F000))) ; }; }
 
__inline u_int HW_get_gio3(void) { return ( ( *((u_int32 volatile *) ((0x00000080 + 0x0F26000) )) & ((0x0000F000)) ) >> (12) ); }




 
__inline u_int HW_get_gio_status(void) { return ( ( *((u_int32 volatile *) ((0x00000084 + 0x0F26000) )) & ((0x0000000F)) ) >> (0) ); }





 
 
__inline void HW_set_ser_cfg(const u_int ser_cfg) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000060 + 0x0F26000) )); *addr = ((((ser_cfg) << (0)) & (0x7FFFFFFF)) | (*addr & ~(0x7FFFFFFF))) ; }; }
 
__inline u_int HW_get_ser_cfg(void) { return ( ( *((u_int32 volatile *) ((0x00000060 + 0x0F26000) )) & ((0x7FFFFFFF)) ) >> (0) ); }



 
 
__inline void HW_set_aux_timer(const u_int aux_timer) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x000000A0 + 0x0F26000) )); *addr = ((((aux_timer) << (0)) & (0x00003FFF)) | (*addr & ~(0x00003FFF))) ; }; }
 
__inline u_int HW_get_aux_timer(void) { return ( ( *((u_int32 volatile *) ((0x000000A0 + 0x0F26000) )) & ((0x00003FFF)) ) >> (0) ); }




 
 
__inline void HW_set_tx_delay(const u_int value) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x000000b0 + 0x0F26000) )); *addr = ((((value) << (8)) & (0x00000f00)) | (*addr & ~(0x00000f00))) ; }; }
 
__inline u_int HW_get_tx_delay(void) { return ( ( *((u_int32 volatile *) ((0x000000b0 + 0x0F26000) )) & ((0x00000f00)) ) >> (8) ); }

 
__inline void HW_set_rx_delay(const u_int value) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x000000b0 + 0x0F26000) )); *addr = ((((value) << (0)) & (0x0000007f)) | (*addr & ~(0x0000007f))) ; }; }
 
__inline u_int HW_get_rx_delay(void) { return ( ( *((u_int32 volatile *) ((0x000000b0 + 0x0F26000) )) & ((0x0000007f)) ) >> (0) ); }



 
__inline void HW_set_add_bt_clk_relative(const u_int value) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x000000F0 + 0x0F26000) )); *addr = ((((value) << (0)) & (0000000001)) | (*addr & ~(0000000001))) ; }; }
__inline u_int HW_get_add_bt_clk_relative(void) { return ( ( *((u_int32 volatile *) ((0x000000F0 + 0x0F26000) )) & ((0000000001)) ) >> (0) ); }

__inline void HW_set_write_absolute_bt_clk(const u_int value) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x000000F0 + 0x0F26000) )); *addr = ((((value) << (1)) & (0x00000002)) | (*addr & ~(0x00000002))) ; }; }
__inline void HW_set_delayed_bt_clk_update(const u_int value) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x000000F0 + 0x0F26000) )); *addr = ((((value) << (2)) & (0x00000004)) | (*addr & ~(0x00000004))) ; }; }
__inline void HW_set_freeze_bt_clk(const u_int value) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x000000F0 + 0x0F26000) )); *addr = ((((value) << (3)) & (0x00000008)) | (*addr & ~(0x00000008))) ; }; }
__inline u_int HW_get_freeze_bt_clk(void) { return ( ( *((u_int32 volatile *) ((0x000000F0 + 0x0F26000) )) & ((0x00000008)) ) >> (3) ); }



 
__inline u_int HW_get_minor_revision(void) { return ( ( *((u_int32 volatile *) ((0x000000F8 + 0x0F26000) )) & ((0x000000FF)) ) >> (0) ); }
__inline u_int HW_get_major_revision(void) { return ( ( *((u_int32 volatile *) ((0x000000F8 + 0x0F26000) )) & ((0x0000FF00)) ) >> (8) ); }



 
 
__inline void HWjal_Set_Rst_Code(const u_int rst_code) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x000000FC + 0x0F26000) )); *addr = ((((rst_code) << (24)) & (0xFF000000)) | (*addr & ~(0xFF000000))) ; }; }




 
__inline void HW_toggle_tx_buf(void) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000710 + 0x0F26000) )); *addr ^= (0x00800000); }; }
__inline void HW_toggle_rx_buf(void) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000048 + 0x0F26000) )); *addr ^= (0x00000100); }; }



 
 
__inline u_int HW_get_esco_lt_addr(void) { return ( ( *((u_int32 volatile *) ((0x00000720 + 0x0F26000) )) & ((0x00001c00)) ) >> (10) ); }

 
__inline u_int HW_get_esco_tx_len(void) { return ( ( *((u_int32 volatile *) ((0x00000720 + 0x0F26000) )) & ((0x000003FF)) ) >> (0) ); }

 
__inline u_int HW_get_esco_rx_len(void) { return ( ( *((u_int32 volatile *) ((0x00000720 + 0x0F26000) )) & ((0x03FF0000)) ) >> (16) ); }

 
__inline u_int HW_get_sco_route(void) { return ( ( *((u_int32 volatile *) ((0x00000720 + 0x0F26000) )) & ((0x00002000)) ) >> (13) ); }

__inline void HW_set_use_hab_crl1(const u_int value) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000024 + 0x0F26000) )); *addr = ((((value) << (15)) & (0x00008000)) | (*addr & ~(0x00008000))) ; }; }

 
#line 1181 ".\\src\\Core\\hw\\include\\hw_lc_impl.h"


__inline u_int HW_get_no_pkt_rcvd_intr_clr(void) { return ( ( *((u_int32 volatile *) ((0x00000028 + 0x0F26000) )) & ((0x20000000)) ) >> (29) ); }

__inline u_int HW_get_no_pkt_rcvd_intr(void) { return ( ( *((u_int32 volatile *) ((0x0000002C + 0x0F26000) )) & ((0x00002000)) ) >> (13) ); }
__inline void HW_set_no_pkt_rcvd_intr_clr(const u_int value) {{ u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000028 + 0x0F26000) )); *addr = ((((value) << (29)) & (0x20000000)) | (*addr & ~(0x20000000))) ; }; }

__inline void HW_set_no_pkt_rcvd_intr_mask(const u_int value) {{ u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000028 + 0x0F26000) )); *addr = ((((value) << (13)) & (0x00002000)) | (*addr & ~(0x00002000))) ; }; }
__inline u_int HW_get_no_pkt_rcvd_intr_mask(void) { return ( ( *((u_int32 volatile *) ((0x00000028 + 0x0F26000) )) & ((0x00002000)) ) >> (13) ); }
 
__inline u_int HW_get_sync_det_intr_clr(void) { return ( ( *((u_int32 volatile *) ((0x00000028 + 0x0F26000) )) & ((0x40000000)) ) >> (30) ); }

__inline u_int HW_get_sync_det_intr(void) { return ( ( *((u_int32 volatile *) ((0x0000002C + 0x0F26000) )) & ((0x00004000)) ) >> (14) ); }
__inline void HW_set_sync_det_intr_clr(const u_int value) {{ u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000028 + 0x0F26000) )); *addr = ((((value) << (30)) & (0x40000000)) | (*addr & ~(0x40000000))) ; }; }

__inline void HW_set_sync_det_intr_mask(const u_int value) {{ u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000028 + 0x0F26000) )); *addr = ((((value) << (14)) & (0x00004000)) | (*addr & ~(0x00004000))) ; }; }
__inline u_int HW_get_sync_det_intr_mask(void) { return ( ( *((u_int32 volatile *) ((0x00000028 + 0x0F26000) )) & ((0x00004000)) ) >> (14) ); }




 
__inline void HW_set_tx_edr_delay(const u_int value) {{ u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000700 + 0x0F26000) )); *addr = ((((value) << (12)) & (0x0000f000)) | (*addr & ~(0x0000f000))) ; }; }
__inline u_int HW_get_tx_edr_delay(void) {return ( ( *((u_int32 volatile *) ((0x00000700 + 0x0F26000) )) & ((0x0000f000)) ) >> (12) );}

__inline void HW_set_rx_edr_delay(const u_int value)  {{ u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000700 + 0x0F26000) )); *addr = ((((value) << (8)) & (0x00000f00)) | (*addr & ~(0x00000f00))) ; }; }
__inline u_int HW_get_rx_edr_delay(void) {return ( ( *((u_int32 volatile *) ((0x00000700 + 0x0F26000) )) & ((0x00000f00)) ) >> (8) );}



 
__inline void HW_set_edr_sync_err(const u_int value)  {{ u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000700 + 0x0F26000) )); *addr = ((((value) << (3)) & (0x000000f8)) | (*addr & ~(0x000000f8))) ; }; }
__inline u_int HW_get_edr_sync_err(void) { return ( ( *((u_int32 volatile *) ((0x00000700 + 0x0F26000) )) & ((0x000000f8)) ) >> (3) );}


__inline u_int HW_get_pta_grant_rx_denied(void) { return ( ( *((u_int32 volatile *) ((0x00000734 + 0x0F26000) )) & ((0x00000001)) ) >> (0) );}
__inline u_int HW_get_pta_grant_tx_denied(void) { return ( ( *((u_int32 volatile *) ((0x00000734 + 0x0F26000) )) & ((0x00000002)) ) >> (1) );}

__inline void HW_set_pta_mode_enable(const u_int mode) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000738 + 0x0F26000) )); *addr = ((((mode) << (0)) & (0x00000001)) | (*addr & ~(0x00000001))) ; };}
__inline void HW_set_pta_grant_test_enable(const u_int mode) { { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000738 + 0x0F26000) )); *addr = ((((mode) << (1)) & (0x00000002)) | (*addr & ~(0x00000002))) ; };}

#line 565 ".\\src\\Core\\hw\\include\\hw_lc.h"


#line 30 ".\\src\\Core\\lc\\dl\\include\\dl_dev_impl.h"
#line 1 ".\\src\\Core\\lc\\lslc\\include\\lslc_access.h"






















 
#line 25 ".\\src\\Core\\lc\\lslc\\include\\lslc_access.h"
#line 26 ".\\src\\Core\\lc\\lslc\\include\\lslc_access.h"
#line 1 ".\\src\\Core\\hw\\include\\hw_radio.h"
















 

#line 20 ".\\src\\Core\\hw\\include\\hw_radio.h"
#line 21 ".\\src\\Core\\hw\\include\\hw_radio.h"
#line 22 ".\\src\\Core\\hw\\include\\hw_radio.h"
#line 23 ".\\src\\Core\\hw\\include\\hw_radio.h"





 
typedef enum
{
    HWradio_RXm_NORMAL = 0,
    HWradio_RXm_FULL_WIN = 1
} t_HWradio_Rx_Mode;

typedef enum
{
    Power_Down_Mode_Active,
    Power_Down_Mode_Not_Active
} t_HWradio_Driver_Status;

typedef u_int8 t_radio_freq_mask;








typedef enum {
    RADIO_MODE_STANDBY,
    RADIO_MODE_FULL_RX,
    RADIO_MODE_MASTER_DOUBLE_WIN,
    RADIO_MODE_TX_RX,
    RADIO_MODE_SLAVE_PAGE_RESP
}t_RadioMode;

typedef enum
{
    HWradio_SERV_RX = 0,
    HWradio_SERV_DISABLE_RX ,
    HWradio_SERV_TX,
    HWradio_SERV_DISABLE_TX ,
    HWradio_SERV_RX_TX
}t_RadioServiceType;

        







 
 
void HWradio_Initialise(void);
void HWradio_Reset(void);
void HWradio_Set_Syncword(t_syncword const);

void __attribute__((section("fastcall"))) HWradio_SetRadioMode(t_RadioMode in_RadioMode);
t_RadioMode __attribute__((section("fastcall"))) HWradio_GetRadioMode(void);
void __attribute__((section("fastcall"))) HWradio_SetFrequency(t_freq *io_Channels, t_radio_freq_mask freq_mask);
void HWradio_Rx_PacketExtend(void);
void HWradio_Tx_PacketExtend(void);
void HWradio_TxComplete(void);
void HWradio_RxComplete(void);

void HWradio_Setup_Radio_For_Next_Half_Slot(t_frame_pos const frame_posn);

void __attribute__((section("fastcall"))) HWradio_Set_Tx_Power_Level(u_int8 power_level);
u_int8 HWradio_Get_Tx_Power_Level(void);


void HWradio_Set_Rx_Gain(u_int32 x);

u_int32 HWradio_Get_Radio_Register(u_int32 reg); 
void HWradio_Set_Radio_Register(u_int32 reg, u_int32 val);

s_int8 HWradio_Read_RSSI(void);  

void HWradio_Update_Rx_Gain_If_Reqd(s_int8 rssi);
boolean __attribute__((section("fastcall"))) HWradio_Update_Internal_RSSI_Cache(boolean late_read_opportunity);

t_HWradio_Driver_Status HWradio_Get_Radio_Driver_Status(void);
void HWradio_Enter_Low_Power_Mode_Request(void);
void HWradio_Exit_Low_Power_Mode_Request(void);





void HWradio_Trim_LPO(void);

void HWradio_Set_Tx_Power_Level(u_int8 power_level);
u_int8 HWradio_Get_Tx_Power_Level(void);

s_int8 HWradio_Read_RSSI(void);  
s_int8 HWradio_Read_Background_RSSI(void);

void HWradio_Setup_Radio_For_Next_Half_Slot(t_frame_pos const frame_posn);

void HWradio_Update_Rx_Gain_If_Reqd(s_int8 rssi);

boolean __attribute__((section("fastcall"))) HWradio_Update_Internal_RSSI_Cache(boolean late_read_opportunity);

void HWradio_Put_Master_Park_Rx_Double_Win(void);

t_HWradio_Driver_Status HWradio_Get_Radio_Driver_Status(void);
void HWradio_Enter_Low_Power_Mode_Request(void);
void HWradio_Exit_Low_Power_Mode_Request(void);
void HWradio_Enter_Low_Power_Mode_Forced(void);

void HWradio_Change_Radio_Modulation(boolean);
boolean HWradio_Read_Radio_Modulation(void);

void HWradio_Assign_TX_START_Channel(u_int8 ch);


u_int8 HWradio_Convert_Tx_Power_to_Tx_Power_Level_Units(s_int8 power_level);
s_int8 HWradio_Convert_Tx_Power_Level_Units_to_Tx_Power(u_int8 power_level);



#line 27 ".\\src\\Core\\lc\\lslc\\include\\lslc_access.h"




 























#line 61 ".\\src\\Core\\lc\\lslc\\include\\lslc_access.h"


















#line 117 ".\\src\\Core\\lc\\lslc\\include\\lslc_access.h"

extern  u_int8 LSLCacc_packet_slots[];




void __attribute__((section("fastcall"))) LSLCacc_Set_Am_Addr(t_am_addr am_addr);

void __attribute__((section("fastcall"))) LSLCacc_Build_AccessCode(const t_syncword *syncword);
void __attribute__((section("fastcall"))) LSLCacc_Build_PacketHeader(const t_devicelink *pDevLink, t_packet packetType);

void __attribute__((section("fastcall"))) LSLCacc_Build_FHS_Payload(t_devicelink *pDevLink);
void __attribute__((section("fastcall"))) LSLCacc_Build_FHS_Payload_Ex(t_devicelink *pDevLink, t_clock native_clk);
void LSLCacc_Build_EIR_Payload(void);
void __attribute__((section("fastcall"))) LSLCacc_Build_ACL_Payload(t_devicelink *pDevLink);
void LSLCacc_Build_SCO_Payload(const t_devicelink *pDevLink);

void LSLCacc_Discard_SCO_Payload(const t_devicelink *p_dev_link);

void LSLCacc_Sync_Setup_SCO_CFG_Ex(t_sco_fifo sco_fifo, t_sco_cfg sco_cfg);


void LSLCacc_Sync_Setup_SCO_ROUTE_Ex(t_sco_fifo sco_fifo, boolean sco_route);
boolean LSLCacc_Get_SCO_ROUTE(t_sco_fifo sco_fifo);


boolean LSLCacc_Is_SCO_CFG_Via_ACL_Buffer(t_sco_fifo sco_fifo);
boolean LSLCacc_Is_SCO_CFG_Eight_Bit_Input_Mode(t_sco_fifo sco_fifo);

void LSLCacc_Prepare_Rx_ID(t_state context);
void __attribute__((section("fastcall"))) LSLCacc_Prepare_Rx_FHS(t_state context, u_int crc_hec_init);
void __attribute__((section("fastcall"))) LSLCacc_Prepare_Rx_Connection(const t_devicelink *p_dev_link);


void LSLCacc_Prepare_Rx_Return_To_Piconet(const t_devicelink *p_dev_link);


void __attribute__((section("fastcall"))) LSLCacc_Prepare_Tx_ID(t_state context);
void __attribute__((section("fastcall"))) LSLCacc_Prepare_Tx_Rx_FHS(t_state context, u_int crc_hec_init);
void __attribute__((section("fastcall"))) LSLCacc_Prepare_Tx_Rx_Connection(const t_devicelink *p_dev_link,
                                      u_int crc_hec_init,
                                      t_encrypt_mode encrypt_mode,
                                      t_state context);

void __attribute__((section("fastcall"))) LSLCacc_Prepare_Tx_Rx_Encryption(
     const u_int8 *p_encryption_key, u_int8 encryption_key_length);

void __attribute__((section("fastcall"))) LSLCacc_Enable_Transmitter(void);
void __attribute__((section("fastcall"))) LSLCacc_Disable_Transmitter(void);
void __attribute__((section("fastcall"))) LSLCacc_Enable_Receiver(void);
void __attribute__((section("fastcall"))) LSLCacc_Disable_Receiver(void);



 
void __attribute__((section("fastcall"))) LSLCacc_Process_Rx_Header(t_devicelink *pDevLink);
void __attribute__((section("fastcall"))) LSLCacc_Process_No_Rx_Packet(t_devicelink *pDevLink);
void __attribute__((section("fastcall"))) LSLCacc_Extract_Packet(t_devicelink *pDevLink);
void __attribute__((section("fastcall"))) LSLCacc_Extract_FHS_Payload(t_FHSpacket *p_fhs_packet);
void LSLCacc_Extract_EIR_Payload(u_int8 *p_eir_packet, u_int8 rx_length);

void LSLCacc_Initialise(void);







void LSLCacc_Enable_Low_Power_Mode(void);
void LSLCacc_Disable_Low_Power_Mode(void);


void LSLCacc_Process_RSSI(t_devicelink *p_dev_link);
void LSLCacc_Attempt_RSSI_Read(boolean);

void BK3000_Send_PCM_to_ACL(void);





#line 31 ".\\src\\Core\\lc\\dl\\include\\dl_dev_impl.h"

#line 1 ".\\src\\Core\\lmp\\include\\lmp_sco_container.h"


















 

#line 22 ".\\src\\Core\\lmp\\include\\lmp_sco_container.h"
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



#line 23 ".\\src\\Core\\lmp\\include\\lmp_sco_container.h"

void LMscoctr_Initialise(void);

t_sco_info *LMscoctr_Alloc(t_deviceIndex device_index, u_int16 voice_setting, t_linkType link_type);
void LMscoctr_Free(t_sco_info *p_sco_link);
void LMscoctr_Free_SCOs_On_Link(t_deviceIndex device_index);

#line 38 ".\\src\\Core\\lmp\\include\\lmp_sco_container.h"


 

















typedef enum {
    ESCO_SETUP,
    ESCO_RECONFIGURE,
    ESCO_REMOVE,
    ESCO_IDLE
} t_esco_transaction_type;

typedef enum {
    ESCO_NGT_INIT,
    ESCO_NGT_PREF,
    ESCO_NGT_RS_VIOL,
    ESCO_NGT_LAT_VIOL,
    ESCO_NGT_UNSUPPORTED_FEATURE
} t_esco_neg_state ;

typedef enum {
    FIRST_NEW_ESCO_PDU,
    CONTINUE_NEW_ESCO_PDU,
    FIRST_CHANGE_ESCO_PDU,
    CONTINUE_CHANGE_ESCO_PDU
} t_esco_link_req_context;

typedef struct _rule_data {
    u_int8 retransmission_mode;
    u_int8 packet_type;
    u_int8 t_esco;
    u_int8 w_esco;
    u_int16 packet_length;
    u_int16 latency_in_us;
    t_sco_info* p_esco_link;
} t_rule_data;

typedef boolean (*t_rule_fn) (u_int8, t_rule_data*);


typedef struct s_esco_lmp_parameter_set {
    u_int8 t_esco;
    u_int8 w_esco;
    t_packet pkt_type;
    u_int16 pkt_len;
} t_esco_lmp_parameter_set;
	
typedef struct s_lm_esco_pkt_type_desc {
    t_packet type;
    u_int16 max_len;
    u_int8 w_esco_slots;
    u_int8 min_t_esco;
} t_lm_esco_pkt_type_desc;

typedef enum {
    LINEAR_IC,
    U_LAW_IC,
    A_LAW_IC,
    CVSD_IC
} t_input_coding;

typedef enum {
    ONES_COMP_IDF,
    TWOS_COMP_IDF,
    SIGN_MAG_IDF,
    UNSIGNED_IDF
} t_input_data_format;

typedef enum {
    EIGHT_BIT_ISS,
    SIXTEEN_BIT_ISS
} t_input_sample_size;

typedef enum {
    CVSD_ACF,
    U_LAW_ACF,
    A_LAW_ACF,
    TRANS_ACF
} t_air_coding_format;

typedef enum {
    REGULAR_RETRANS,
    SHARED_RETRANS
} t_esco_retrans_mode;

t_sco_info *LMscoctr_Find_SCO_By_Connection_Handle(t_connectionHandle connection_handle);
t_sco_info *LMscoctr_Find_SCO_By_SCO_Handle(u_int8 sco_handle);
t_sco_info *LMscoctr_Find_SCO_By_SCO_Index(u_int8 index);
t_sco_info *LMscoctr_Find_SCO_By_Device_Index(t_deviceIndex device_index);

u_int8 LMscoctr_Convert_HCI_To_LM_SCO_Packet_Type(t_packetTypes packet_type);

u_int8  LMscoctr_Is_Bandwidth_Available_For_SCO_Packet_Types(
    t_packetTypes packet_types);

u_int8  LMscoctr_Get_SCO_Index(const t_sco_info *p_sco_link);

void LMscoctr_Assign_SCO_Parameters(
    t_sco_info *p_sco_link_dest, const t_sco_info *p_sco_link_source);
void LMscoctr_Derive_SCO_Parameters(
    t_sco_info *p_sco_link, t_packetTypes packet_types, t_role role,
    u_int8 use_peer_air_mode_flag);

t_error LMscoctr_Extract_SCO_Parameters_From_PDU(
    t_sco_info *p_sco_link, t_p_pdu p_pdu, t_role role);

u_int8 LMscoctr_Map_AirMode_HCI2LMP(u_int8 hc_air_mode);
u_int8 LMscoctr_Map_AirMode_LMP2HCI(u_int8 lm_air_mode);
u_int8 LMscoctr_Derive_LM_SCO_Packet_Type(
    const t_sco_info *p_sco_link, t_packetTypes packet_types);
u_int8 LMscoctr_Get_Active_LM_SCO_Packet_Type(void);
u_int8 LMscoctr_Get_Used_LM_SCO_Packet_Type(void);
boolean LMscoctr_Is_LM_Air_Mode_Supported(u_int8 lm_air_mode);
t_sco_info* LMscoctr_Get_SCO_Transitioning_Ref(void);
t_sco_info* LMscoctr_Find_SCO_Under_Negotiation(t_role role);

t_sco_info *LMscoctr_Allocate_Negotation_SCO_Link(
     const t_sco_info *p_sco_link, t_role role, 
     t_packetTypes packet_types, u_int8 lm_air_mode);
void LMscoctr_Free_Negotiation_SCO_Link(void);
void LMscoctr_Accept_And_Free_Negotiated_SCO_Link(t_sco_info *p_sco_link);

u_int8 LMeScoctr_Get_Tx_Packet_Type_in_Slots(const t_sco_info *p_sco_link);
u_int8 LMeScoctr_Get_Rx_Packet_Type_in_Slots(const t_sco_info *p_sco_link);
boolean LMeScoctr_Are_Renegotiated_Params_Available(t_sco_info *p_esco_link);
u_int8 LMscoctr_GetSlotOccupancy(t_packet packet_type);


u_int8 LMeScoctr_Get_M_to_S_Packet_Type_in_Slots(const t_sco_info *p_sco_link);
u_int8 LMeScoctr_Get_S_to_M_Packet_Type_in_Slots(const t_sco_info *p_sco_link);

u_int8 LMeScoctr_Get_Number_eSCO_Connections(void);

u_int16 LMscoctr_Map_eSCO_Pkt_Type_LMP2HCI(u_int8 packet_type);

t_packet LMscoctr_Get_eSCO_BB_Packet_From_LMP_Type(u_int8 lmp_pkt_type);
u_int8 LMscoctr_Get_eSCO_LMP_Type_From_BB_Packet(t_packet bb_pkt_type);

void LMscoctr_Extract_eSCO_Parameters_From_LMP_PDU(
    t_p_pdu p_pdu);
t_error LMscoctr_Validate_Host_eSCO_Parameters(u_int16 handle,
        u_int32 tx_bandwidth, u_int32 rx_bandwidth,
        u_int16 max_latency, u_int16 voice_setting, u_int8 retransmission_effort, 
        u_int16* esco_packet_types);
t_error LMscoctr_Validate_Peer_eSCO_Parameters(t_lmp_link* p_link,
        u_int8* p_pdu);
t_error LMscoctr_Validate_Admission(u_int32 tx_bandwidth);
t_error LMscoctr_Detect_Transaction_Collisions(void);

t_sco_info* LMscoctr_Get_Topical_eSCO_Link(void);
t_esco_transaction_type LMscoctr_Get_Topical_eSCO_Link_Transaction_Type(void);
void LMscoctr_Set_Topical_eSCO_Link(t_sco_info* p_esco_link, t_esco_transaction_type type);

t_lmp_link* LMscoctr_Find_ACL_Link_From_SCO_Link(t_sco_info* p_esco);
void LMscoctr_Commit_to_New_Synchronous_Parameters(t_sco_info* p_esc);

int LMscoctr_Derive_Initial_LMP_Parameter_Sets_From_Host_Constraints(
    u_int32 tx_bandwidth, u_int32 rx_bandwidth, 
    u_int16 max_latency, u_int8 retransmission_effort, 
    u_int16 esco_packet_types);
int LMscoctr_Get_Number_LMP_Parameter_Sets(void);
int LMscoctr_Is_An_LMP_Parameter_Set(u_int8 t_esco, u_int8 w_esco, t_packet pkt_type, u_int16 pkt_len);
t_esco_descr* LMscoctr_Get_eSCO_Scratchpad(void);
void LMscoctr_Clean_eSCO_Scratchpad(void);

void LMscoctr_Remove_LMP_Parameter_Set(int index);

void LMscoctr_Remove_LMP_Parameter_Sets(t_rule_fn rule_fn, t_rule_data* p_rule_args);
void LMscoctr_Clear_LMP_Parameter_Sets( void);
boolean LMscoctr_Rule_Retransmission_Not_Equal_To(u_int8 arr_index, t_rule_data* p_rule_data);
boolean LMscoctr_Rule_Packet_Type_Equals(u_int8 arr_index, t_rule_data* p_rule_data);
boolean LMscoctr_Rule_Matches_Exactly(u_int8 arr_index, t_rule_data* p_rule_data);
boolean LMscoctr_Rule_Latency_Above(u_int8 arr_index, t_rule_data* p_rule_data);
boolean LMscoctr_Rule_No_Possible_D_Value(u_int8 arr_index, t_rule_data* p_rule_data);
boolean LMscoctr_Rule_Wesco_Equals(u_int8 arr_index, t_rule_data* p_rule_data);
boolean LMscoctr_Rule_Tesco_Not_Equal_To(u_int8 arr_index, t_rule_data* p_rule_data);
boolean LMscoctr_Rule_Wesco_Not_Equal_To(u_int8 arr_index, t_rule_data* p_rule_data);

void LMscoctr_Set_D_eSCO_and_Timing_Flag(t_esco_descr* p_esco_descr);
s_int16 LMscoctr_Derive_D_eSCO(t_sco_info* p_esco_link, u_int8 t_esco, 
    u_int8 w_esco, u_int8 timing_ctrl, t_packet tx_packet_type, t_packet rx_packet_type);
s_int16 LMscoctr_Derive_D_eSCO_AtLeast(u_int8 init_d_esco,
    t_sco_info* p_esco_link, u_int8 t_esco, u_int8 w_esco, 
    u_int8 timing_ctrl, t_packet tx_packet_type, t_packet rx_packet_type);

void LMscoctr_Transfer_Best_LMP_Parameter_Set_to_Scratchpad(void);
void LMscoctr_Suspend_Link(t_sco_info* p_esco_link);
void LMscoctr_Resume_Link(t_sco_info* p_esco_link);
u_int32 LMscoctr_Calculate_Bandwidth(t_esco_descr* p_esco_descr);
int LMscoctr_Is_D_eSCO_Acceptable(t_esco_descr* p_esco_descr, t_lmp_link* p_link);
u_int16 LMscoctr_Calculate_Latency_In_uSec(u_int8 t_esco, u_int8 w_esco, 
    t_packet tx_pkt_type, t_packet rx_pkt_type);

int LMscoctr_Get_Num_D_eSCOs_In_List(void);
void LMscoctr_Derive_D_eSCO_List(u_int8 t_esco, u_int8 w_esco,
    u_int8 timing_ctrl_flag, t_packet tx_pkt_type, t_packet rx_packet_type);
boolean LMscoctr_Is_In_D_eSCO_List(u_int8 d_esco);
void LMscoctr_Remove_From_D_eSCO_List(u_int8 d_esco);
u_int8 LMscoctr_Get_D_eSCO_From_List(void);

u_int16 LMscoctr_Derive_Tx_Dequeue_Length(t_sco_info* p_esco_link);
u_int16 LMscoctr_Derive_Rx_Dequeue_Length(t_sco_info* p_esco_link);

void LMscoctr_Set_Voice_Setting(t_sco_info* p_esco_link, 
    u_int16 voice_setting);
u_int16 LMscoctr_Get_Voice_Setting(t_sco_info* p_esco_link);
t_input_coding LMscoctr_Get_Input_Coding(u_int16 voice_setting);
t_input_data_format LMscoctr_Get_Input_Data_Format(u_int16 voice_setting);
u_int8 LMscoctr_Get_Input_Sample_Size(u_int16 voice_setting);
u_int8 LMscoctr_Get_Linear_PCM_Bit_Pos(u_int16 voice_setting);
t_air_coding_format LMscoctr_Get_Air_Coding(u_int16 voice_setting);






 
void LMscoctr_Store_Topical_Voice_Setting(u_int16 voice_setting);
u_int16 LMscoctr_Restore_Topical_Voice_Setting(void);




 
t_esco_retrans_mode LMscoctr_Get_eSCO_Retransmission_Mode(void);
void LMscoctr_Set_eSCO_Retransmission_Mode(t_esco_retrans_mode mode);
void LMscoctr_Order_LMP_Parameter_Sets_For_Shared_Retransmission(void);

t_length LMscoctr_Determine_SCO_Pkt_Length(u_int8 sco_packet);

void LMscoctr_Advance_Tx_Transcode_State(t_sco_info *p_sco_link);
void LMscoctr_Advance_Rx_Transcode_State(t_sco_info *p_sco_link);
void LMscoctr_Read_End_Tx_Transcode_State(t_sco_info *p_sco_link);
void LMscoctr_Read_End_Rx_Transcode_State(t_sco_info *p_sco_link);
void LMscoctr_Write_Start_Tx_Transcode_State(t_sco_info *p_sco_link);
void LMscoctr_Write_Start_Rx_Transcode_State(t_sco_info *p_sco_link);
void LMscoctr_Read_Start_Tx_Transcode_State(t_sco_info *p_sco_link);

u_int8 LMscoctr_Current_eSCO_Link_In_eSCO_Window(t_sco_info *p_sco_link);
u_int8 LMscoctr_Current_eSCO_Link_In_Reserved_Slot(t_sco_info *p_sco_link);

t_error LMscoctr_Test_ReTransRegisters(void);
#line 33 ".\\src\\Core\\lc\\dl\\include\\dl_dev_impl.h"

#line 176 ".\\src\\Core\\lc\\dl\\include\\dl_dev_impl.h"




 
__inline t_devicelink* DL_Get_Local_Device_Ref(void)
{
    t_devicelink* p_device_link = (t_devicelink*) SYSconfig_Get_Device_Links_Location();
    return &p_device_link[SYSconfig_Get_Local_Device_Index()];
}





 
__inline t_deviceIndex DL_Get_Local_Device_Index(void)
{
   return (t_deviceIndex) SYSconfig_Get_Local_Device_Index();
}




 
__inline t_devicelink* DL_Get_Device_Ref(t_deviceIndex device_index)
{
    t_devicelink* p_device_link = (t_devicelink*) SYSconfig_Get_Device_Links_Location();
    return &p_device_link[device_index];
}




 
__inline t_deviceIndex DL_Get_Device_Index(const t_devicelink* p_device_link)
{
   return p_device_link->device_index;
}





 
__inline void DL_Set_Role_Peer(t_devicelink* pDevLink, u_int role_of_peer)
{
   pDevLink->role_of_peer=role_of_peer;
}

__inline t_role DL_Get_Role_Peer(const t_devicelink* pDevLink)
{
   return (t_role)pDevLink->role_of_peer;
}

__inline t_role DL_Get_Role_Local(const t_devicelink* pDevLink)
{
   return (1 ^ (t_role)pDevLink->role_of_peer);
}

__inline void DL_Set_Ctrl_State(t_devicelink *pDevLink,
                                               t_device_ctrl_state ctrl_state)
{
   pDevLink->link_ctrl_state = ctrl_state;
}

__inline t_device_ctrl_state DL_Get_Ctrl_State(const t_devicelink *pDevLink)
{
   return pDevLink->link_ctrl_state;
}

__inline t_am_addr DL_Get_Am_Addr(const t_devicelink* p_device_link)
{

    return p_device_link->am_addr;



}

__inline void DL_Set_AM_Addr(t_devicelink* p_device_link, u_int am_addr)
{

    p_device_link->am_addr=am_addr;



}

__inline t_am_addr DL_Get_Tx_LT_Am_Addr(const t_devicelink* p_device_link)
{

    return p_device_link->am_addr;



}



__inline t_am_addr DL_Get_Rx_LT_Am_Addr(const t_devicelink* p_device_link)
{

    return p_device_link->am_addr;



}


__inline void  DL_Set_Piconet_Index(t_devicelink* p_device_link, u_int piconet_index)
{
    p_device_link->piconet_index = piconet_index;
}

__inline u_int8 DL_Get_Piconet_Index(const t_devicelink* p_device_link)
{
    return p_device_link->piconet_index;
}

__inline boolean DL_Max_Piconets(void)
{
    extern u_int8 DL_piconet_index_pool;
    return (DL_piconet_index_pool==0);
}

__inline t_syncword DL_Get_Access_Syncword(const t_devicelink* pDevLink)
{
    return pDevLink->access_syncword;
}

__inline const t_syncword* DL_Get_Access_Syncword_Ref(const t_devicelink* pDevLink)
{
    return &pDevLink->access_syncword;
}

__inline void DL_Set_Access_Syncword(t_devicelink* pDevLink, t_syncword sync)
{
    pDevLink->access_syncword = sync;
}



 
__inline u_int DL_Get_Remote_Rxbuf_Full(const t_devicelink* pDevLink)
{
    return (pDevLink->remote_rx_buffer_full);
}

__inline void DL_Set_Remote_Rxbuf_Full(t_devicelink* pDevLink, u_int status)
{
    pDevLink->remote_rx_buffer_full = status;
}

__inline void DL_Set_Local_Rxbuf_Full(t_devicelink* pDevLink, u_int status)
{
    pDevLink->local_rx_buffer_full = status;
}

__inline u_int DL_Get_Local_Rxbuf_Full(const t_devicelink* pDevLink)
{
    return (pDevLink->local_rx_buffer_full);
}


__inline void DL_Set_Rx_Expected_Broadcast_Seqn(t_devicelink* pDevLink, u_int seqn)
{
    pDevLink->rx_expected_broadcast_seqn = seqn;
}

__inline void DL_Toggle_Rx_Expected_Broadcast_Seqn(t_devicelink* pDevLink)
{
    pDevLink->rx_expected_broadcast_seqn ^= 1;
}

__inline u_int DL_Get_Rx_Expected_Broadcast_Seqn(const t_devicelink* pDevLink)
{
    return pDevLink->rx_expected_broadcast_seqn;
}








 
__inline u_int DL_Get_Tx_Ack_Pending(const t_devicelink* pDevLink)
{



    return pDevLink->tx_ack_pending;

}








 
__inline void DL_Set_Tx_Ack_Pending(t_devicelink* pDevLink, u_int ack_pending)
{



    pDevLink->tx_ack_pending = ack_pending;

}



 
__inline void DL_Set_Tx_LT_Tx_Ack_Pending(t_devicelink* pDevLink, u_int8 tx_ack_pending)
{



    pDevLink->tx_ack_pending = tx_ack_pending;

}



 
__inline u_int DL_Get_Tx_LT_Tx_Ack_Pending(const t_devicelink* pDevLink)
{



    return pDevLink->tx_ack_pending;

}



 
__inline u_int DL_Get_Rx_LT_Tx_Ack_Pending(const t_devicelink* pDevLink)
{



    return pDevLink->tx_ack_pending;

}



 
__inline void DL_Set_Rx_LT_Tx_Ack_Pending(t_devicelink* pDevLink, u_int ack_pending)
{



    pDevLink->tx_ack_pending = ack_pending;

}

__inline t_TXRXstatus DL_Get_Rx_Status(const t_devicelink* pDevLink)
{
    return pDevLink->rx_status;
}

__inline void DL_Set_Rx_Status(t_devicelink* pDevLink, t_TXRXstatus status)
{
    pDevLink->rx_status = status;
}

__inline u_int8 DL_Get_Power_Level(const t_devicelink* pDevLink)
{
    return pDevLink->power_level;
}

__inline void DL_Set_Power_Level(t_devicelink* pDevLink, u_int8 power_units)
{
    pDevLink->power_level = power_units;
}

#line 469 ".\\src\\Core\\lc\\dl\\include\\dl_dev_impl.h"

__inline u_int16 DL_Get_Local_Slot_Offset(const t_devicelink* p_device_link)
{
    return p_device_link->local_slot_offset_us;
}
__inline void DL_Set_Local_Slot_Offset(t_devicelink* p_device_link, u_int16 offset)
{
    p_device_link->local_slot_offset_us = offset;
}

__inline u_int16 DL_Get_Peer_Slot_Offset(const t_devicelink* p_device_link)
{
    return p_device_link->peer_slot_offset_us;
}

__inline void DL_Set_Peer_Slot_Offset(t_devicelink* p_device_link, u_int16 offset)
{
    p_device_link->peer_slot_offset_us = offset;
}

__inline u_int32
    DL_Get_Piconet_Clock_Last_Access(const t_devicelink* p_device_link)
{
    return p_device_link->piconet_clock_last_access;
}

__inline void
    DL_Set_Piconet_Clock_Last_Access(t_devicelink* p_device_link, u_int32 bt_clock)
{
    p_device_link->piconet_clock_last_access = bt_clock;

}

__inline u_int8  DL_Get_Clock_Jitter(const t_devicelink* p_device_link)
{
    return p_device_link->clock_jitter_us;
}
__inline void
    DL_Set_Clock_Jitter(t_devicelink* p_device_link, u_int8 jitter)
{
    p_device_link->clock_jitter_us = jitter;
}

__inline u_int8
    DL_Get_Clock_Drift(const t_devicelink* p_device_link)
{
    return p_device_link->clock_drift_ppm;
}
__inline void
    DL_Set_Clock_Drift(t_devicelink* p_device_link, u_int8 drift)
{
    p_device_link->clock_drift_ppm = drift;
}


__inline u_int DL_Is_Local_Buffer_Full(const t_devicelink* pDevLink)
{



 

    return DL_Get_Local_Rxbuf_Full(pDevLink);
}



 
__inline t_packet DL_Get_Rx_Packet_Type(const t_devicelink* pDevLink)
{
    return (t_packet) pDevLink->packet_type;
}

__inline void DL_Set_Rx_Packet_Type(t_devicelink* pDevLink,t_packet type)
{
    pDevLink->packet_type = (u_int8) type;
}



 
__inline void DL_Set_Tx_Descriptor_Ref(                                    
     t_devicelink* pDevLink, struct q_desc *tx_descr)
{
    pDevLink->tx_descriptor = tx_descr;
}

__inline t_packet DL_Get_Tx_Packet_Type(const t_devicelink* pDevLink)
{
    ((void)0);
    ((void)0);
    return (t_packet)pDevLink->tx_descriptor->packet_type;
}

__inline t_length DL_Get_Tx_Length(const t_devicelink* pDevLink)
{
    return pDevLink->tx_descriptor->length;
}


__inline u_int8* DL_Get_Tx_Qpdu(const t_devicelink* pDevLink)
{
    return pDevLink->tx_descriptor->data;
}

__inline t_LCHmessage DL_Get_Tx_Message_Type(const t_devicelink* pDevLink)
{
    return (t_LCHmessage)pDevLink->tx_descriptor->message_type;
}

__inline void DL_Set_Tx_Packet_Type(t_devicelink* pDevLink, t_packet type)
{
    ((void)0);
    ((void)0);
    pDevLink->tx_descriptor->packet_type = type;
}

__inline void DL_Set_Tx_Length(t_devicelink* pDevLink, t_length length)
{
    ((void)0);
    ((void)0);
    pDevLink->tx_descriptor->length = length;
}

__inline void DL_Set_Tx_Qpdu(t_devicelink* pDevLink, u_int8* buffer)
{
    ((void)0);
    ((void)0);
    pDevLink->tx_descriptor->data = buffer;
}

__inline void DL_Set_Tx_Message_Type(t_devicelink* pDevLink, t_LCHmessage TYPE)
{
    ((void)0);
    ((void)0);
    pDevLink->tx_descriptor->message_type = TYPE;
}


__inline t_flow DL_Get_Local_Tx_L2CAP_Flow(const t_devicelink* pDevLink)
{
    return (t_flow) pDevLink->local_tx_L2CAP_flow;
}

__inline void DL_Set_Local_Tx_L2CAP_Flow(t_devicelink* pDevLink, t_flow flow)
{
    ((void)0);
    pDevLink->local_tx_L2CAP_flow = (u_int8) flow;
}

__inline t_flow DL_Get_Local_Rx_L2CAP_Flow(const t_devicelink* pDevLink)
{
    return (t_flow) pDevLink->local_rx_L2CAP_flow;
}

__inline void DL_Set_Local_Rx_L2CAP_Flow(t_devicelink* pDevLink, t_flow flow)
{
    ((void)0);
    pDevLink->local_rx_L2CAP_flow = (u_int8) flow;
}




 
__inline t_packet DL_Get_Tx_SCO_Packet_Type(const t_devicelink* pDevLink)
{
    return pDevLink->active_sco_pkt;
}

__inline void DL_Set_Tx_SCO_Packet_Type(t_devicelink* t_devicelink, t_packet type)
{
    t_devicelink->active_sco_pkt = type;
}

__inline u_int8 DL_Get_Active_SCO_Index(const t_devicelink* p_device_link)
{
    return p_device_link->active_sco_fifo;
}

__inline void DL_Set_Active_SCO_Index(t_devicelink* p_device_link, u_int8 sco_index)
{
    p_device_link->active_sco_fifo = sco_index;
}



 

__inline boolean DL_Decode_Valid_LT_address(t_devicelink* p_device_link, u_int8 lt_addr)
{
#line 686 ".\\src\\Core\\lc\\dl\\include\\dl_dev_impl.h"

    if (lt_addr == p_device_link->am_addr)
    {
        return (!0);
    }
    else
    {
        return 0;
    }

}




 
__inline void DL_Set_Active_Tx_LT(t_devicelink* p_device_link, u_int8 active_lt)
{ 



}



 
__inline u_int8 DL_Get_Active_Tx_LT(t_devicelink* p_device_link)
{ 



    return 0;

}



 
__inline void DL_Set_Active_Rx_LT(t_devicelink* p_device_link, u_int8 active_lt)
{ 



}

__inline u_int8 DL_Get_Active_Rx_LT(t_devicelink* p_device_link)
{ 



    return 0;

}

#line 781 ".\\src\\Core\\lc\\dl\\include\\dl_dev_impl.h"



 






 




 

__inline void DL_Set_LT_Address(t_devicelink* pDevLink, u_int8 lt_addr)
{





}




 
__inline u_int8 DL_Get_LT_Address(const t_devicelink* pDevLink)
{



    return pDevLink->am_addr;

}



 
__inline u_int DL_Get_Tx_LT_Previous_Arqn(const t_devicelink* pDevLink)
{



    return (pDevLink->rx_previous_arqn);

}



 
__inline void DL_Set_Rx_LT_Previous_Arqn(t_devicelink* pDevLink, u_int arqn)
{
#line 851 ".\\src\\Core\\lc\\dl\\include\\dl_dev_impl.h"
    pDevLink->rx_previous_arqn = arqn;

}



 
__inline void DL_Toggle_Rx_LT_Seqn(t_devicelink* pDevLink)
{



    pDevLink->tx_seqn ^= 1;

}



 
__inline void DL_Set_Tx_LT_Seqn(t_devicelink* pDevLink, u_int seqn)
{



    pDevLink->tx_seqn = seqn;

}



 
__inline u_int DL_Get_Tx_LT_Seqn(const t_devicelink* pDevLink)
{



    return(pDevLink->tx_seqn);

}





 
__inline void DL_Toggle_Tx_LT_Seqn(t_devicelink* pDevLink)
{



    pDevLink->tx_seqn ^= 1;

}




 
__inline void DL_Set_Tx_Seqn_Active(t_devicelink* pDevLink)
{
    pDevLink->tx_seqn_active=(!0);
}



 
__inline void DL_Set_Tx_Seqn_Not_Active(t_devicelink* pDevLink)
{
    pDevLink->tx_seqn_active=0;
}



 
__inline u_int8 DL_Is_Tx_Seqn_Active(t_devicelink* pDevLink)
{
    return pDevLink->tx_seqn_active;
}





 
__inline void DL_Set_Rx_LT_Expected_Seqn(t_devicelink* pDevLink, u_int seqn)
{



    pDevLink->rx_expected_seqn = seqn;

}



 
__inline u_int DL_Get_Rx_LT_Expected_Seqn(const t_devicelink* pDevLink)
{



    return pDevLink->rx_expected_seqn;

}



 
__inline void DL_Toggle_Rx_LT_Expected_Seqn(t_devicelink* pDevLink)
{



    pDevLink->rx_expected_seqn ^= 1;

}



 
__inline void DL_Toggle_Tx_LT_Expected_Seqn(t_devicelink* pDevLink)
{





    pDevLink->rx_expected_seqn ^= 1;

}

__inline void DL_Set_UAP_LAP(t_devicelink* pDevLink, t_uap_lap uap_lap)
{
    pDevLink->uap_lap = uap_lap;
}

__inline t_uap_lap DL_Get_UAP_LAP(const t_devicelink* pDevLink)
{
    return pDevLink->uap_lap;
}

__inline void DL_Set_NAP(t_devicelink* pDevLink, t_nap nap)
{
    pDevLink->nap = nap;
}

__inline t_nap DL_Get_NAP(const t_devicelink* pDevLink)
{
    return pDevLink->nap;
}

__inline void DL_Get_Bd_Addr_Ex(const t_devicelink* pDevLink, t_bd_addr* bda)
{
    { { t_lap lap = ((pDevLink->uap_lap & 0x00FFFFFF)); (bda)->bytes[0] = (u_int8)(lap & 0xFF); (bda)->bytes[1] = (u_int8)((lap>>8) & 0xFF); (bda)->bytes[2] = (u_int8) (lap>>16); }; ((bda)->bytes[3] = ((pDevLink->uap_lap >> 24))); { t_nap nap = (pDevLink->nap); (bda)->bytes[4] = (u_int8) (nap & 0xFF); (bda)->bytes[5] = (u_int8) (nap>>8); }; };

}



 

__inline t_clock DL_Get_Clock_Offset(const t_devicelink* pDevLink)
{
   return pDevLink->clock_offset;
}

__inline void __attribute__((section("fastcall"))) DL_Set_Clock_Offset(t_devicelink* pDevLink, t_clock clk)
{
    pDevLink->clock_offset = clk;
}



 
__inline t_encrypt_mode DL_Get_Encryption_Mode(const t_devicelink* pDevLink)
{
    return pDevLink->encrypt_mode;
}

__inline void DL_Set_Encryption_Mode(t_devicelink* pDevLink,t_encrypt_mode encrypt_mode)
{
    pDevLink->encrypt_mode = encrypt_mode;
}

__inline void
    DL_Set_Encryption_Key_Ref(t_devicelink* pDevLink, u_int8 *p_encryption_key)
{
    pDevLink->p_encryption_key = p_encryption_key;
}

__inline u_int8 *
    DL_Get_Encryption_Key_Ref(const t_devicelink* pDevLink)
{
    return pDevLink->p_encryption_key;
}




 
__inline void
    DL_Set_Encryption_Key_Length(t_devicelink* pDevLink, u_int8 encryption_key_length)
{
    pDevLink->hw_encryption_key_len = encryption_key_length - 1;
}
__inline u_int8 DL_Get_Encryption_Key_Length(const t_devicelink* pDevLink)
{
    return pDevLink->hw_encryption_key_len;
}

   



 
__inline void   DL_Inc_Tx_ACL_Data_Packets(t_devicelink* p_device_link)
{
    ++p_device_link->channel_quality.num_tx_acl_packets; 
}

__inline void   DL_Inc_Tx_ACL_Data_Packets_Acked(t_devicelink* p_device_link)
{
    ++p_device_link->channel_quality.num_tx_acl_packets_acked;
}

__inline void   DL_Inc_Rx_ACL_Data_Packets(t_devicelink* p_device_link)
{
    ++p_device_link->channel_quality.num_rx_acl_packets; 
}

__inline void   DL_Inc_Rx_ACL_Data_Packets_Nacked(t_devicelink* p_device_link)
{
    ++p_device_link->channel_quality.num_rx_acl_packets_nacked;
}

__inline void   DL_Inc_Tx_SYN_Data_Packets(t_devicelink* p_device_link)
{
    ++p_device_link->channel_quality.num_tx_syn_packets; 
}

__inline void   DL_Inc_Tx_SYN_Data_Packets_Acked(t_devicelink* p_device_link)
{
    ++p_device_link->channel_quality.num_tx_syn_packets_acked;
}

__inline void   DL_Inc_Rx_SYN_Data_Packets(t_devicelink* p_device_link)
{
    ++p_device_link->channel_quality.num_rx_syn_packets; 
}

__inline void   DL_Inc_Rx_SYN_Data_Packets_Nacked(t_devicelink* p_device_link)
{
    ++p_device_link->channel_quality.num_rx_syn_packets_nacked;
}

__inline const t_ch_quality *DL_Get_Channel_Quality_Ref(const t_devicelink* p_device_link)
{
    return &p_device_link->channel_quality;
}

__inline void   DL_Initialise_Channel_Quality(t_devicelink* p_device_link)
{
    t_ch_quality *p_ch_quality = &p_device_link->channel_quality;
    p_ch_quality->num_tx_acl_packets = 0;
    p_ch_quality->num_tx_acl_packets_acked = 0;
    p_ch_quality->num_rx_acl_packets = 0;
    p_ch_quality->num_rx_acl_packets_nacked =0;
    p_ch_quality->num_tx_syn_packets = 0;
    p_ch_quality->num_tx_syn_packets_acked = 0;
    p_ch_quality->num_rx_syn_packets = 0;
    p_ch_quality->num_rx_syn_packets_nacked =0;
}



__inline s_int8 DL_Get_RSSI(t_devicelink* p_device_link)
{
    return p_device_link->rssi_average;
}



#line 1144 ".\\src\\Core\\lc\\dl\\include\\dl_dev_impl.h"




 
__inline void DL_Update_RSSI_Average(t_devicelink* p_device_link, s_int8 rssi)
{
	s_int32 rssi_av, rssi_sumof;

    rssi_av = p_device_link->rssi_average;
    rssi_sumof = (rssi_av<<1) + rssi_av + rssi;


     
    p_device_link->rssi_average = (rssi_sumof >> 2) + ((rssi_sumof & 0x3)>>1)
        + ((rssi > rssi_av)?(1):((rssi < rssi_av)?(-1):(0)));
    
    p_device_link->rssi_lastpkt = rssi;

}

__inline s_int8 DL_Get_RSSI_For_Last_Packet_Received(t_devicelink* p_device_link)
{
    return p_device_link->rssi_lastpkt;
}







 
#line 1226 ".\\src\\Core\\lc\\dl\\include\\dl_dev_impl.h"





 



 
__inline boolean DL_Is_EDR_Enabled(const t_devicelink* pDevLink)
{
   return ((pDevLink->ptt_acl) | (pDevLink->ptt_esco)) ;
}



 
__inline boolean DL_Get_PTT_ACL(const t_devicelink* pDevLink)
{
	return pDevLink->ptt_acl;
}


 
__inline void DL_Set_PTT_ACL(t_devicelink* pDevLink, boolean ptt_acl)
{
	pDevLink->ptt_acl=ptt_acl;
}



 
__inline boolean DL_Get_PTT_ESCO(const t_devicelink* pDevLink)
{
	return pDevLink->ptt_esco;
}



 
__inline void DL_Set_PTT_ESCO(t_devicelink* pDevLink, boolean ptt_esco)
{
	pDevLink->ptt_esco=ptt_esco;
}


#line 1284 ".\\src\\Core\\lc\\dl\\include\\dl_dev_impl.h"

__inline u_int8 DL_Get_Rx_SYNC_Erroneous_Data_Status(t_devicelink* pDevLink)
{
	return pDevLink->ErroneousDataStatus;
}

__inline void DL_Set_Rx_SYNC_Erroneous_Data_Status(t_devicelink* pDevLink,u_int8 status)
{
	pDevLink->ErroneousDataStatus = status;
}
#line 421 ".\\src\\Core\\lc\\dl\\include\\dl_dev.h"




#line 23 ".\\src\\Core\\lc\\include\\lc_interface.h"
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

#line 24 ".\\src\\Core\\lc\\include\\lc_interface.h"
#line 25 ".\\src\\Core\\lc\\include\\lc_interface.h"


 
#line 29 ".\\src\\Core\\lc\\include\\lc_interface.h"


 
#line 1 ".\\src\\Core\\lc\\uslc\\include\\uslc_return_to_piconet.h"





















 

void USLCr2p_Initialise(void);




 
t_error USLCr2p_Request(t_deviceIndex device_index, t_slots timeout, t_clock instance);

t_error USLCr2p_Cancel(void);

void USLCr2p_State_Dispatcher(boolean  );






 
u_int8 USLCr2p_Get_Search_Window_Frames(
	const t_devicelink *p_device_link,     
	t_slots r2p_offset_ticks               
);


#line 33 ".\\src\\Core\\lc\\include\\lc_interface.h"

typedef t_error (*t_hl_callback)(t_LC_Event_Info*);

typedef t_devicelink* (*t_callback)(void);

void LC_Register_Event_Handler(t_LC_Event_Id event_id, void* func_ptr);
void LC_Force_Context(t_role role);
void LC_Register_Access_Window_Callback_Handler(t_callback func_ptr);

extern void* lc_call_back_list[]; 




void LC_Report_Device_Activity(t_deviceIndex device_index);




 
void LC_Initialise(void);
void LC_Reset_All_Callbacks(void);



 
t_error LC_Alloc_Link(t_deviceIndex *device_index);
void LC_Free_Link(t_deviceIndex device_index);
t_error LC_Alloc_AM_ADDR(t_am_addr* am_addr); 





 







 
u_int16 LC_Get_Max_Sleep_Time_Slots(
    t_deviceIndex device_index     );





 
t_error LC_Sleep(t_slots slots, t_deviceIndex device_index);








 
t_error LC_Wakeup(t_deviceIndex device_index, t_slots timeout, t_clock instance);




 
t_error LC_Restore_Piconet(void);




 
u_int8 LC_Read_Power(t_deviceIndex device_index);
boolean LC_Incr_Power(t_deviceIndex device_index, u_int8 power_units);
boolean LC_Decr_Power(t_deviceIndex device_index, u_int8 power_units);

#line 134 ".\\src\\Core\\lc\\include\\lc_interface.h"



 
u_int32 LC_Read_Clock_Offset(t_deviceIndex device_index);
u_int16 LC_Read_Local_Slot_Offset(t_deviceIndex device_index);
void LC_Write_Remote_Slot_Offset(t_deviceIndex device_index, u_int16 slot_offset);
u_int8 LC_Read_Local_Device_Jitter(void);
u_int8 LC_Read_Local_Device_Drift(void);
void LC_Write_Device_Jitter(t_deviceIndex device_index, u_int8 jitter);
void LC_Write_Device_Drift(t_deviceIndex device_index, u_int8 drift);



 
t_classDevice LC_Read_Local_Device_Class(void);
void LC_Write_Local_Device_Class(t_classDevice class_of_device);

t_error LC_Write_Supervision_Timeout(t_deviceIndex device_index, t_slots timeout);




 





 

t_error LC_Create_Connection(const t_bd_addr *p_bd_addr, t_clock bt_clk_offset,
              t_deviceIndex device_index,  u_int16 train_reps, t_slots pageTO);
t_error LC_Page_Cancel(void);











 

t_error LC_Inquiry_Request(t_lap inquiry_lap, t_slots window, u_int16 train_reps);
t_error LC_Inquiry_Cancel(void);











 

t_error LC_Inquiry_Scan_Request(t_lap inquiry_lap, t_slots window,
                                                        t_scan_type scan_type);
void    LC_Inquiry_Scan_Cancel(void);












 

t_error LC_Page_Scan_Request(t_deviceIndex device_index, t_slots window, t_scan_type scan_type);
void    LC_Page_Scan_Cancel(void);













 
#line 1 ".\\src\\Core\\lc\\uslc\\include\\uslc_testmode.h"



















 

#line 23 ".\\src\\Core\\lc\\uslc\\include\\uslc_testmode.h"
#line 24 ".\\src\\Core\\lc\\uslc\\include\\uslc_testmode.h"
#line 25 ".\\src\\Core\\lc\\uslc\\include\\uslc_testmode.h"



 


typedef enum
{
    TX_Off              = 0, 
    TX_0_Pattern        = 1, 
    TX_1_Pattern        = 2, 
    TX_10_Pattern       = 3,
    TX_Psuedo_Random    = 4, 
    LB_ACL_Packets_Whitening_On  = 5,
    LB_SCO_Packets_Whitening_On  = 6,
    LB_ACL_Packets_Whitening_Off = 7, 
    LB_SCO_Packets_Whitening_Off = 8, 

    TX_11110000_Pattern = 9,

    

 
	PT_TX_EVERY_POLL_PERIOD = 0x40,

	PT_TX_CYCLE_ALL_LENGTHS = 0x80  ,

    Test_Mode_Exit      = 255

} t_testScenario; 





 
typedef t_slots t_TDDframes;



 




 
typedef struct s_tm_control 
{
    u_int8         *p_data_buffer;
    t_testScenario testScenario;

    t_rfSelection  rfHoppingMode;
    t_freq         txDutFrequency;
    t_freq         rxDutFrequency;
    u_int8         powerControlMode;
    t_TDDframes    pollPeriod;
    t_packet       packetType;
    t_length       packetLength;

    t_state        packetContext;

    

 
    u_int8         transmitter_test;
    u_int8         loopback_test;

#line 102 ".\\src\\Core\\lc\\uslc\\include\\uslc_testmode.h"

    

 
    u_int8         original_data_whitening_state;
    t_rfSelection  original_hopping_mode;
    t_freq         original_tx_freq;
    t_freq         original_rx_freq;

} t_tm_control;




 
t_error USLCtm_Testmode_Request(t_deviceIndex deviceIndex, 
                               t_p_pdu p_LMP_test_control_PDU);
t_error USLCtm_Store_Test_Parameters(t_p_pdu p_LMP_test_control_PDU);
void USLCtm_Testmode_Exit(void);
void USLCtm_Testmode_Change_Settings(t_deviceIndex device_index);



 
void USLCtm_Initialise(void);
void USLCtm_Reinitialise(void);
void USLCtm_prepareTx(t_devicelink*);

#line 141 ".\\src\\Core\\lc\\uslc\\include\\uslc_testmode.h"


 
void USLCtm_Test_Transmitter(t_devicelink *pDL);
void USLCtm_Build_Test_Packet_Payload(t_testScenario testScenario, u_int8 *txBuf, t_length packetLength);

#line 231 ".\\src\\Core\\lc\\include\\lc_interface.h"
#line 238 ".\\src\\Core\\lc\\include\\lc_interface.h"






 
t_error LC_Role_Switch(t_deviceIndex device_index);






 
t_error LC_Sniff_Request(t_deviceIndex device_index, t_clock window);
void    LC_Sniff_Cancel(void);






 
t_error LC_Hold_Return_Request(t_deviceIndex device_index, u_int16 search_window);
void    LC_Hold_Return_Cancel(void);

t_error LC_Null_Callback(t_LC_Event_Info* eventInfo);



 

t_error LC_Park_Request(t_deviceIndex device_index, t_pm_addr pm_addr);

t_error LC_Unpark_Request(t_deviceIndex* device_index, t_parkDeviceIndex park_device_index, t_role role_of_peer, 
                    t_am_addr am_addr, t_unpark_type unpark_type, t_clock start_timer_ref, t_slots n_poll);

t_error LC_Access_Window_Request(u_int n_acc_slot, t_slots t_access, u_int m_access, 
                 u_int8 n_poll, t_deviceIndex device_index, t_ar_addr ar_addr);


t_error LC_Unpark_Rollback(void);

t_error LC_Unpark_Commit(void);





  
boolean LC_Is_Valid_SCO_Conversion(u_int16 voice_setting);
u_int8 LC_Get_Hardware_SCO_CFG(u_int16 voice_setting);
void LC_Enable_Codec(void);
void LC_Disable_Codec(void);
void LC_Increase_Volume(void);
void LC_Decrease_Volume(void);
u_int8 LC_Get_Vci_Clk_Sel(void);
u_int8 LC_Get_Vci_Clk_Sel_Map(void);














 






 







 
#line 349 ".\\src\\Core\\lc\\include\\lc_interface.h"
         
#line 368 ".\\src\\Core\\lc\\include\\lc_interface.h"




 
t_FHSpacket* LC_Get_Device_FHS_Ref(void);






 










 










 










 









 









 












 







 







 







 







 











 












 

 






 















 



#line 541 ".\\src\\Core\\lc\\include\\lc_interface.h"










 






#line 1 ".\\src\\Core\\lc\\uslc\\include\\uslc_chan_ctrl.h"
#line 560 ".\\src\\Core\\lc\\include\\lc_interface.h"
#line 1 ".\\src\\Core\\lc\\uslc\\include\\uslc_sleep.h"




















 

void USLCsleep_Initialise(void);
t_error USLCsleep_Request(t_deviceIndex device_index, t_slots num_slots_to_sleep);
t_error USLCsleep_Cancel(void);
void USLCsleep_State_Dispatcher(boolean);

boolean USLCsleep_Is_Tabasco_Asleep(void);
void USLCsleep_Wakeup(void);

#line 561 ".\\src\\Core\\lc\\include\\lc_interface.h"






 




t_clock       LC_Get_Piconet_Clock_Ex(t_deviceIndex device_index, boolean in_context);
void          LC_Set_Active_Piconet(t_deviceIndex device_index, boolean change_piconet);
t_deviceIndex LC_Get_Active_Piconet(void);

boolean LC_Is_Sleep_Possible(t_clock *next_instant);



 

void LC_Set_PTT_ACL(t_deviceIndex device_index, boolean ptt_acl);
boolean LC_Get_PTT_ACL(t_deviceIndex device_index);
void LC_Set_PTT_ESCO(t_deviceIndex device_index, boolean ptt_esco);
boolean LC_Get_PTT_ESCO(t_deviceIndex device_index);






u_int8 LC_Get_Local_EIR(t_cmd_complete_event* p_event);
u_int8* LC_Get_Local_EIR_Payload(void);
u_int8 LC_Get_Local_EIR_Length(void);
t_packet LC_Get_Local_EIR_Packet_Type(void);
u_int8 LC_Set_Local_EIR(u_int8 fec_required, u_int8* p_eir);


void LC_Set_Inquiry_Tx_Power(s_int8 power_level);
s_int8 LC_Get_Inquiry_Response_Tx_Power(void);


#line 23 ".\\src\\Core\\lc\\uslc\\include\\uslc_chan_ctrl.h"
#line 24 ".\\src\\Core\\lc\\uslc\\include\\uslc_chan_ctrl.h"



 
void USLCchac_Initialise(void);


void USLCchac_Set_Active_Procedure(t_ulc_procedure new_procedure);


t_USLC_Frame_Activity USLCchac_prepare_next_slave_frame_activity(t_devicelink 
                            **p_next_active_device_link);

t_USLC_Frame_Activity USLCchac_prepare_next_master_frame_activity(t_devicelink 
         **p_next_active_device_link,t_USLC_Frame_Activity current_USLC_Frame_Activity);

boolean USLCchac_check_slave_activity_start_next_frame(void);
boolean USLCchac_is_next_activity_scan_activation(void);

boolean USLCchac_Is_Inquiry_Scan_Rand_Wait(void);
void USLCchac_Set_Saved_Device_State(t_state state);
void USLCchac_Set_Device_State(t_state state);
boolean USLCchac_Get_Sleep_Request(void);

t_ulc_procedure USLCchac_Get_Active_Procedure(void);

t_state USLCchac_get_device_state(void);

t_error USLCchac_Procedure_Request(t_ulc_procedure procedure, boolean status);

void USLCchac_Procedure_Start(t_ulc_procedure procedure, t_devicelink *p_device_link);

void USLCchac_Procedure_Finish(boolean set_previous_super_state);

t_ulc_procedure USLCchac_Process_Rx(t_USLC_Frame_Activity next_USLC_Frame_Activity);

void USLCchac_prepareRx(t_devicelink* p_device_link);

t_error USLCchac_InqScan_Rand_Wait(t_LC_Event_Info* eventInfo);

void USLCchac_Wakeup(void);

boolean USLCchac_Is_Sleep_Possible(t_clock *next_instant);

boolean USLCchac_Is_Sleep_Request_Pending(void);

boolean USLCchac_Is_R2P_Request_Pending(void);
void USLCchac_Force_To_Tx_State_If_Req(void);
typedef struct t_chan_ctrl
{
    t_timer inquiry_scan_rand_timer;
    t_devicelink *p_active_procedure_device_link;

    u_int inquiry_scan_request;
    u_int page_scan_request;
    u_int inquiry_request;
    u_int page_request;


    

 
    u_int park_slave_request;

    

 
    u_int park_master_request;



    u_int role_switch_request_master_context;
    u_int role_switch_request_slave_context;








    u_int sleep_request;



    u_int return_to_piconet_request;


    t_state super_state;

    







 
    t_state previous_super_state;

    t_packet event;

    t_ulc_procedure procedure_active;
    
    boolean inquiry_scan_rand_wait;

} t_chan_ctrl;

#line 24 "src\\hal\\prth_chimera\\sys\\sys_power.c"
#line 1 ".\\src\\Core\\lc\\lslc\\include\\lslc_irq.h"




















 

#line 24 ".\\src\\Core\\lc\\lslc\\include\\lslc_irq.h"

typedef void (*t_dsr_pointer)(void);

void LSLCirq_Initialise(void);

#line 47 ".\\src\\Core\\lc\\lslc\\include\\lslc_irq.h"

void __attribute__((section("fastcall"))) LSLCirq_IRQ_Handler(void);

void LSLCirq_Disable_All_Intr_Except(u_int32 except_tim_intr_mask);

void __attribute__((section("fastcall"))) LSLCirq_R2P_Turn_On_Intr(void);

void LSLCirq_Disable_And_Clear_Tabasco_Intr(void);

void LSLCirq_Enable_Aux_Tim_Intr(void);
void LSLCirq_Disable_Aux_Tim_Intr(void);

typedef struct
{
    u_int tim0_count, tim1_count, tim2_count, tim3_count,
        pka_count,
        pkd_count, no_pkt_rcvd_count, pkd_rx_hdr_count, pkd_rx_pay_hdr_count,
        total_irq_count,
        sync_det_count,
        aux_tim_count;
} t_LSLCirq_Counters; 


#line 25 "src\\hal\\prth_chimera\\sys\\sys_power.c"
#line 26 "src\\hal\\prth_chimera\\sys\\sys_power.c"

#line 28 "src\\hal\\prth_chimera\\sys\\sys_power.c"
#line 1 ".\\src\\Core\\sys\\include\\sys_power.h"
















 


typedef enum {
    SYS_LF_OSC_NONE   = 0,
    SYS_LF_OSC_32K000 = 1,
    SYS_LF_OSC_32K768 = 2
} t_sys_lf_osc_type;







 
void SYSpwr_Halt_System(void);
void SYSpwr_Sleep_System(void);
void SYSpwr_Exit_Halt_System(void);
void SYSpwr_Force_System_Halt(void);

void SYSpwr_Initialise(void);
void SYSpwr_Setup_Sleep_Timer(u_int32 max_num_frames_to_sleep);
void SYSpwr_Handle_Early_Wakeup(void);
boolean SYSpwr_Is_Low_Power_Mode_Active(void);

boolean SYSpwr_Set_LowFrequencyOscillatorAvailable_Value(u_int8 osc_available);
t_sys_lf_osc_type SYSpwr_LowFrequencyOscillatorAvailable(void);
u_int32 SYSpwr_Get_Min_Frames_To_Sleep(void);

#line 55 ".\\src\\Core\\sys\\include\\sys_power.h"



#line 29 "src\\hal\\prth_chimera\\sys\\sys_power.c"
#line 1 ".\\src\\Core\\lmp\\include\\lmp_timer.h"




















 

#line 24 ".\\src\\Core\\lmp\\include\\lmp_timer.h"
#line 25 ".\\src\\Core\\lmp\\include\\lmp_timer.h"
#line 26 ".\\src\\Core\\lmp\\include\\lmp_timer.h"

typedef struct {
      u_int8 used;
      u_int8 dynamic;  
      u_int8 next;
      void  (*function)(t_lmp_link*);
      t_lmp_link* p_link;
      t_timer timer;
} t_lm_timer;

u_int8 LMtmr_Set_Timer(t_slots timer_value, 
                       void ((*p_funct)(t_lmp_link*)),t_lmp_link* p_link, u_int8 dynamic);
boolean LMtmr_Timer_Expired(void);
void LMtmr_Handle_Expired_Timers(void);
void LMtmr_Clear_Timer(u_int8 timer_index);
void LMtmr_Reset_Timer(u_int8 timer_index,t_slots timer_value);
void LMtmr_Modify_Timer(u_int8 timer_index, t_slots timer_value, boolean timer_extend);
t_slots LMtmr_Get_Residual_Slots(u_int8 timer_index);
void LMtmr_Initialise(void);




#line 56 ".\\src\\Core\\lmp\\include\\lmp_timer.h"



#line 30 "src\\hal\\prth_chimera\\sys\\sys_power.c"
#line 1 ".\\src\\Core\\lmp\\include\\lmp_config.h"


















 

#line 22 ".\\src\\Core\\lmp\\include\\lmp_config.h"

#line 24 ".\\src\\Core\\lmp\\include\\lmp_config.h"
#line 25 ".\\src\\Core\\lmp\\include\\lmp_config.h"
#line 26 ".\\src\\Core\\lmp\\include\\lmp_config.h"
#line 27 ".\\src\\Core\\lmp\\include\\lmp_config.h"

#line 29 ".\\src\\Core\\lmp\\include\\lmp_config.h"





 
typedef struct 
{   
    t_lm_callback lmp_event[0x13];

    t_string device_name;


    t_string remote_name;

    u_int32 beacon_instant;
    t_slots accept_timeout;
    u_int8  accept_timeout_index;
    u_int16  operation_pending;
    t_link_key master_key;
    t_rand bcast_encr_rand;
    t_lm_acl_state  state;
    t_slots page_timeout;

    

 
    t_role role;
    u_int8 hold_mode_activity;
    u_int8 num_acl_link_on_hold;

   

 
    u_int8 Nbc;

    

 
    t_link_key_type key_type;
    t_pin_type pin_type;
    u_int8 max_encrypt_key_size;
    u_int8 min_encrypt_key_size;
    t_flag authentication_enable;
    t_encrypt_mode  encryption_mode;
    u_int16 bcast_enc_key_size_mask; 

	u_int8 ssp_enabled;
	u_int8 ssp_debug_mode;

    

 
    u_int8 new_connections_allowed;
    u_int8 num_acl_links;
    u_int8 num_slave_acl_links;
    u_int8 num_master_acl_links;
    

 
    u_int8 num_slave_sco_links;
    u_int8 num_master_sco_links;

    

 
    u_int16 active_broadcast_handle;
    u_int16 piconet_broadcast_handle;

    u_int8 num_bcast_retry;
    u_int8 current_bcast_type;






    u_int16 num_links_parked;


    t_lm_park_info park_info;



    u_int16 T_bcast;
    u_int16 D_bcast;
    u_int8  N_bcast;
    u_int32 end_beacon;
    u_int32 next_acc_window;   
    u_int32 start_acc_window;
    u_int32 end_acc_window;
    u_int8 T_access;
    u_int8 D_access;
    u_int8 N_access;
    u_int8 M_access;
    u_int8 M_access_rem;  
    u_int8 access_scheme;
    u_int8 N_poll_rem;     
    u_int8 N_poll;        
    u_int8 N_sleep;
    u_int8 D_sleep;
    u_int16 unpark_handle;     
    u_int16 bcast_scan_ext;    
	u_int8 bcast_scan_ext_unpark;
    u_int8 park_defaults;


    t_packet default_pkt_type;
    t_packet last_broadcast_pkt_rx;
    u_int8 links_in_low_power;
    t_slots next_wakeup_time;  
    t_lmp_link* next_wakeup_link;


    u_int8 standby_power_timer_index;







    u_int16 default_link_policy_mode;



    u_int16 default_voice_setting;



    u_int16 emergency_poll_interval;


	u_int8 Outgoing_Encapsulated_P192_len_pending;
	u_int8 public_key_x[24];
	u_int8 public_key_y[24];
	u_int8 secret_key[24];

	u_int8 oob_data_present;

	u_int8 auth_requirements;
	u_int8 io_cap;

	u_int8 passKeyCounter;

	u_int8 randomizer_R[16];
	u_int8 hash_C[16];
	u_int8 Ra[16];
	u_int8 default_sco_route_via_hci;
	u_int8 inquiry_tx_power_level;
	u_int8 inquiry_response_tx_power_level;



} t_LMconfig;

extern t_LMconfig g_LM_config_info;








void LMconfig_Initialise(void);
t_packet LMconfig_Get_Default_Pkt_Type(void);
void LMconfig_Change_Default_Pkt_Type(t_packet pkt_type);

void LMconfig_LM_Read_Local_Name(t_cmd_complete_event* p_event);
void LMconfig_LM_Change_Local_Name(u_int8* p_name);
void LMconfig_LM_Read_Local_Name(t_cmd_complete_event* p_event);
void LMconfig_LM_Write_Voice_Settings(u_int16 voice_settings);
void LMconfig_LM_Standby_Low_Power_Timeout(t_lmp_link* p_link);

t_error LMconfig_LMP_Not_Accepted(t_lmp_link* p_link, u_int16 opcode, t_error reason);
t_error LMconfig_LM_Read_Remote_Version(t_lmp_link* p_link);
t_error LMconfig_LMP_Version_Req(t_lmp_link* p_link,t_p_pdu p_pdu);
t_error LMconfig_LMP_Version_Res(t_lmp_link* p_link,t_p_pdu p_pdu);



 
__inline void LMconfig_LM_Clear_Device_State(u_int32 state);
__inline void LMconfig_LM_Set_Device_State(u_int32 state);
__inline u_int32 LMconfig_LM_Page_Scans_Allowed(void);
__inline u_int32 LMconfig_LM_Inquiry_Scans_Allowed(void);
__inline u_int32 LMconfig_LM_Periodic_Inquiry_Allowed(void);
__inline u_int32 LMconfig_LM_Check_Device_State(u_int32 query_state);
__inline u_int32 LMconfig_LM_Enforce_Scans_Disabled(void);

__inline boolean LMconfig_LM_Connected_As_Master(void);
__inline boolean LMconfig_LM_Connected_As_Slave(void);
__inline boolean LMconfig_LM_Connected_As_Scatternet(void);
__inline u_int8 LMconfig_LM_Num_Piconets(void);
__inline boolean LMconfig_LM_Connected_As_SCO_Master(void);
__inline boolean LMconfig_LM_Connected_As_SCO_Slave(void);



 









 



#line 254 ".\\src\\Core\\lmp\\include\\lmp_config.h"







 






 





 
#line 285 ".\\src\\Core\\lmp\\include\\lmp_config.h"

#line 301 ".\\src\\Core\\lmp\\include\\lmp_config.h"







#line 361 ".\\src\\Core\\lmp\\include\\lmp_config.h"
    

























#line 398 ".\\src\\Core\\lmp\\include\\lmp_config.h"




















#line 1 ".\\src\\Core\\lmp\\include\\lmp_config_impl.h"





















 

#line 25 ".\\src\\Core\\lmp\\include\\lmp_config_impl.h"
#line 26 ".\\src\\Core\\lmp\\include\\lmp_config_impl.h"
#line 1 ".\\src\\Core\\lmp\\include\\lmp_afh.h"



















 
#line 22 ".\\src\\Core\\lmp\\include\\lmp_afh.h"
#line 1 ".\\src\\Core\\lmp\\include\\lmp_link_policy.h"


















 

#line 22 ".\\src\\Core\\lmp\\include\\lmp_link_policy.h"
#line 23 ".\\src\\Core\\lmp\\include\\lmp_link_policy.h"
#line 24 ".\\src\\Core\\lmp\\include\\lmp_link_policy.h"

void LMpol_Initialise(void);



 

t_devicelink* __attribute__((section("fastcall"))) LMpol_Get_Next_Master_Tx_Activity(void);
t_devicelink* LMpol_Is_SCO_Next_Activity(void);
void LMpol_Get_Next_SCO_Tx_Activity(t_devicelink* );

boolean LMpol_Get_Next_Slave_Tx_Activity(t_deviceIndex device_index);
boolean LMpol_Get_Next_Slave_Rx_Activity(t_deviceIndex device_index);

t_devicelink* LMpol_Get_Next_Master_Beacon_Tx(void);

boolean LMpol_Get_Next_Slave_Park_Activity(t_lmp_link* p_link);

t_error LMpol_Max_Slots_Allowed(t_lmp_link* p_link, u_int8 max_slots);
t_error LMpol_Device_Activity(t_LC_Event_Info* lc_event_info);

t_error LMpolicy_Write_Flush_Timeout(t_lmp_link* p_link,u_int16 timeout);
void LMpol_Flush_Timeout(t_lmp_link* p_link);
t_error   LMpol_Flush_Link_Buffer(t_lmp_link* p_link);
void LMpol_Scan_All_Links_For_Pending_Flushes(void);
void LMpol_Scan_For_Pending_Broadcast(void);
void LMpol_Flow_Stop(t_deviceIndex device_index,void (*callback)(t_deviceIndex));
void LMpol_Flow_Start(t_deviceIndex device_index,void (*callback)(t_deviceIndex));
void LMpol_Init_SCO(t_lmp_link* p_link,u_int8 sco_index);
void LMpol_Ack_Last_Tx_Packet(t_deviceIndex device_index);
t_error LMpol_HCI_Flush(t_lmp_link* p_link);

t_error LMpol_HCI_Enhanced_Flush(t_lmp_link* p_link);
t_error   LMpol_Flush_Auto_Link_Buffer(t_lmp_link* p_link);

void LMpol_Deactivate_SCO(t_lmp_link* p_link, u_int8 sco_index);
void LMpol_LM_SSR_Initiate(t_lmp_link* p_link);
void LMpol_LM_SSR_Timeout(t_lmp_link* p_link);
void LMpol_Init_Sniff_Subrating_Instant(t_lmp_link* p_link, u_int32 ssr_instant);
void LMpol_Sleep(u_int16 interval,t_lmp_link* p_link, u_int32 clock);
void LMpol_Decr_Links_In_Low_Power(void);
void LMpol_Adjust_Wakeup_Slot_Time(t_lmp_link *p_link, u_int32 instant);


t_slots LMpol_Get_Interval_To_Next_Wakeup(void);
void LMpol_Service_Imminent_Wakeup_Control(void);
u_int32 LMpol_Get_Common_Subrate(t_lmp_link* p_link);

void LMpol_Scan_All_Links_For_Pending_Flushes(void);







#line 86 ".\\src\\Core\\lmp\\include\\lmp_link_policy.h"













#line 107 ".\\src\\Core\\lmp\\include\\lmp_link_policy.h"

void LMpol_Adjust_ACL_Packet_Types_On_All_Links(t_LM_context context);
void LMpol_Adjust_Poll_Position_On_All_Links(s_int16 poll_position);

void LMpol_Adjust_ACL_Packet_Types_On_Link(t_lmp_link* p_link, t_LM_context context);
boolean LMpol_Sniff_Activation_On_Next_Frame(void);











#line 23 ".\\src\\Core\\lmp\\include\\lmp_afh.h"





 



















 






 








#line 73 ".\\src\\Core\\lmp\\include\\lmp_afh.h"





 


  


void LMafh_Initialise(void);
t_error LMafh_LMP_Set_AFH(t_lmp_link *p_link, t_p_pdu p_payload);
void LMafh_LMP_Set_AFH_Ack(t_deviceIndex device_index);
void LMafh_Set_AFH_Control_Byte(u_int8 afh_channel_control);

void LMafh_Activate_AFH(t_lmp_link *p_link);
void LMafh_Deactivate_AFH(t_lmp_link *p_link);

void LMafh_LMP_Channel_Classification_Ack(t_deviceIndex device_index);

#line 104 ".\\src\\Core\\lmp\\include\\lmp_afh.h"




  

void LMafh_Initialise_Classification(void);
void LMPafh_Request_Classification_Reporting_All_Slaves(u_int8 mode);
void LMPafh_Request_Classification_Reporting(t_lmp_link *p_link, u_int8 mode);
void LMafh_LMP_Channel_Classification_Req_Ack(t_deviceIndex device_index);
boolean LMafh_Is_LMP_Channel_Classification_Req_Pending(u_int8 mode);


void LMafh_Start_Classification_Reporting(t_lmp_link *p_link);
void LMafh_Stop_Classification_Reporting(t_lmp_link *p_link);
boolean LMafh_Is_Classification_Reporting(t_lmp_link *p_link);

t_error LMafh_LM_Set_AFH_Channel_Classification(
    u_int8 AFH_Host_Channel_Classification[ ]);
t_error LMafh_LM_Write_AFH_Channel_Assessment_Mode(
    u_int8 AFH_Channel_Assessment_Mode);
u_int8 LMafh_LM_Read_AFH_Channel_Assessment_Mode(void);

t_error LMafh_LMP_Channel_Classification_Req(t_lmp_link *p_link, t_p_pdu p_payload);
t_error LMafh_LMP_Channel_Classification(t_lmp_link *p_link, t_p_pdu p_payload);

void LMafh_Set_Request_Channel_Classification(u_int8 piconet_index);
void LMafh_Set_Device_Channel_Map_Update_Notification(void);

#line 149 ".\\src\\Core\\lmp\\include\\lmp_afh.h"


#line 27 ".\\src\\Core\\lmp\\include\\lmp_config_impl.h"
#line 1 ".\\src\\Core\\lmp\\include\\lmp_link_qos.h"


















 

#line 22 ".\\src\\Core\\lmp\\include\\lmp_link_qos.h"
#line 23 ".\\src\\Core\\lmp\\include\\lmp_link_qos.h"
#line 24 ".\\src\\Core\\lmp\\include\\lmp_link_qos.h"
#line 25 ".\\src\\Core\\lmp\\include\\lmp_link_qos.h"


void LMqos_Send_HC_Packet_Type_Changed_Event(t_lmp_link* p_link,t_error outcome);
t_error LMqos_LM_Validate_Change_Packet_Type(u_int16 handle, t_HCIpacketTypes packet_types);
t_error LMqos_LM_Change_Validated_Packet_Type(u_int16 handle, t_HCIpacketTypes packet_types);
t_error LMqos_LM_Change_Packet_Type(u_int16 handle,t_HCIpacketTypes packet_types);
t_error LMqos_LM_Change_SCO_Packet_Type(u_int16 handle,t_HCIpacketTypes packet_types);
t_error LMqos_LM_Preferred_Rate(t_lmp_link* p_link,u_int8 rate);
t_error LMqos_LM_Write_Supervision_Timeout(t_lmp_link* p_link, t_slots timeout,
                                                  t_cmd_complete_event* p_cmd_complete_info);
t_error LMqos_LM_Read_Supervision_Timeout(t_lmp_link* p_link,
                                               t_cmd_complete_event* p_cmd_complete_info);
t_error LMqos_LM_QOS_Setup(t_lmp_link* p_link,u_int8 service,u_int32 tk_rate,
                                  u_int32 pk_bandwidth,u_int32 latency,u_int32 delay);

void LMqos_Initialise(void);
t_error LMqos_LMP_Preferred_Rate(t_lmp_link* p_link, t_p_pdu p_payload);
t_error LMqos_LMP_Auto_Rate(t_lmp_link* p_link,t_p_pdu p_payload);
t_error LMqos_LMP_Set_Supervision_Timeout(t_lmp_link* p_link,t_p_pdu p_payload);
t_error LMqos_LMP_Supervision_Timeout(t_lmp_link* p_link,t_p_pdu p_pdu);
t_error LMqos_LMP_Quality_of_Service_Req(t_lmp_link* p_link,t_p_pdu p_payload);
t_error LMqos_LMP_Quality_of_Service(t_lmp_link* p_link,t_p_pdu p_payload);
t_error LMqos_LMP_Max_Slot(t_lmp_link* p_link,t_p_pdu p_payload);
t_error LMqos_LMP_Max_Slot_Req(t_lmp_link* p_link,t_p_pdu p_payload);
t_error LMqos_LMP_Accepted(t_lmp_link* p_link,t_p_pdu p_payload);
t_error LMqos_LMP_Not_Accepted(t_lmp_link* p_link, u_int16 rejected_opcode, t_error reason);

void    LMqos_Write_QoS(t_lmp_link* p_link, u_int16 poll_interval,u_int8 num_bcast);
t_error LMqos_Update_QoS(t_lmp_link* p_link, u_int16 poll_interval,u_int8 num_bcast);

#line 61 ".\\src\\Core\\lmp\\include\\lmp_link_qos.h"

void LMpolicy_LMP_Supervision_Timeout_Ack(t_deviceIndex device_index);

u_int8 LMqos_Convert_To_Max_Slots(t_HCIpacketTypes packet_types);
void LMqos_Channel_Quality_Timeout(t_lmp_link* p_link);

void LMqos_Update_Allowed_Packets(t_lmp_link* p_link,u_int8 max_slots,t_rate rate);
t_error LMqos_LM_Force_Max_Slots_In(t_lmp_link* p_link, u_int8 max_slots);
t_error LMqos_LM_Max_Slot_Req(t_lmp_link* p_link, u_int8 max_slots);

t_packetTypes LMqos_LM_Gen_Allowed_Packet_Types(t_HCIpacketTypes acl_packet_types);

t_HCIpacketTypes LMqos_LM_Get_HCI_ACL_Packet_Types(t_packetTypes allowed_packet_types);




t_error LMqos_Send_LMP_Preferred_Rate(t_lmp_link* p_link,t_rate rate);



t_error LMqos_LM_Auto_Rate(t_lmp_link* p_link);




t_error LMqos_LM_Flow_Specification(u_int8 direction, t_lmp_link* p_link,u_int8 service,
                                    u_int32 tk_rate, u_int32 tk_bucket_rate, u_int32 pk_bandwidth,
                                    u_int32 latency);

void LMqos_Adjust_Supervision_Timeout_On_Link(t_lmp_link* p_link,
         t_LM_context context, u_int16 interval);




#line 28 ".\\src\\Core\\lmp\\include\\lmp_config_impl.h"
#line 1 ".\\src\\Core\\lmp\\include\\lmp_acl_container.h"


















 

#line 22 ".\\src\\Core\\lmp\\include\\lmp_acl_container.h"
#line 23 ".\\src\\Core\\lmp\\include\\lmp_acl_container.h"
#line 24 ".\\src\\Core\\lmp\\include\\lmp_acl_container.h"


typedef struct {
    u_int8 used;
    t_lmp_link entry;
} t_link_entry;

void LMaclctr_Initialise(void);
void LMaclctr_Free_Link(t_lmp_link* p_lmp_link);

t_lmp_link* LMaclctr_Alloc_Link(void);  
t_lmp_link* LMaclctr_Find_Bd_Addr(const t_bd_addr* p_bd_addr);
t_lmp_link* LMaclctr_Find_Peer_Bd_Addr(const t_bd_addr* p_bd_addr);
t_lmp_link* LMaclctr_Find_Handle(t_connectionHandle handle);
t_lmp_link* LMaclctr_Find_Device_Index(t_deviceIndex device_index);
t_lmp_link* LMaclctr_Find_ACL_Handle(t_connectionHandle handle);
t_lmp_link* LMaclctr_Find_ARADDR(u_int8 ar_addr);

u_int32 Get_Active_Acl_Num(void);



#line 29 ".\\src\\Core\\lmp\\include\\lmp_config_impl.h"

#line 46 ".\\src\\Core\\lmp\\include\\lmp_config_impl.h"













#line 67 ".\\src\\Core\\lmp\\include\\lmp_config_impl.h"

extern u_int32 g_LM_device_state;





 
__inline void LMconfig_LM_Clear_Device_State(u_int32 state)
{
    if( g_LM_device_state & state & (0x00000002|0x00000001) )
    {
#line 85 ".\\src\\Core\\lmp\\include\\lmp_config_impl.h"
    }

    g_LM_device_state &= ~state;
}





 
__inline void LMconfig_LM_Set_Device_State(u_int32 state)
{
    if( ~g_LM_device_state & state & ~(0x00000080 |0x00002000 |0x00004000) )
    {
        LC_Page_Scan_Cancel();
    }
    
    if( ~g_LM_device_state & state & ~(0x00000080 |0x00001000 |0x00004000) )
    {
        LC_Inquiry_Scan_Cancel();
    }

    if( ~g_LM_device_state & state & (0x00000002|0x00000001) )
    {
#line 115 ".\\src\\Core\\lmp\\include\\lmp_config_impl.h"
    }

    g_LM_device_state |= state;
}





 
__inline u_int32 LMconfig_LM_Page_Scans_Allowed(void)
{
    return ( (!(g_LM_device_state & ~(0x00000080 |0x00002000 |0x00004000)))



        && (!LMconfig_LM_Connected_As_Scatternet())

		&& !(g_LM_device_state & 0x00000008)
		);
}





 
__inline u_int32 LMconfig_LM_Inquiry_Scans_Allowed(void)
{
    return ((!(g_LM_device_state & ~(0x00000080 |0x00001000 |0x00004000)))



        && (!LMconfig_LM_Connected_As_Scatternet())

		&& !(g_LM_device_state & 0x00000008)
		);
}





 
__inline u_int32 LMconfig_LM_Periodic_Inquiry_Allowed(void)
{
    return !(g_LM_device_state & ~(0x00000080 |0x00001000 |0x00002000));
}





 
__inline u_int32 LMconfig_LM_Check_Device_State(u_int32 query_state)
{
    return (g_LM_device_state & query_state);
}








 
__inline u_int32 LMconfig_LM_Enforce_Scans_Disabled(void)
{
    return (g_LM_device_state & (0x00000400 |0x00000800 |0x00000008 |0x00000010));
}





 
__inline boolean LMconfig_LM_Connected_As_Master(void)
{
    return (g_LM_config_info.num_master_acl_links > 0);
}





 
__inline boolean LMconfig_LM_Connected_As_Slave(void)
{
    return (g_LM_config_info.num_slave_acl_links > 0);
}





 
__inline boolean LMconfig_LM_Connected_As_Scatternet(void)
{
    return ((LMconfig_LM_Connected_As_Master() && LMconfig_LM_Connected_As_Slave())
            || (g_LM_config_info.num_slave_acl_links > 1));
}





 
__inline u_int8 LMconfig_LM_Num_Piconets(void)
{
    return (u_int8)((LMconfig_LM_Connected_As_Master()?(1):(0))
            + (g_LM_config_info.num_slave_acl_links));
}





 
__inline boolean LMconfig_LM_Connected_As_SCO_Master(void)
{
    return (g_LM_config_info.num_master_sco_links > 0);
}





 
__inline boolean LMconfig_LM_Connected_As_SCO_Slave(void)
{
    return (g_LM_config_info.num_slave_sco_links > 0);
}

#line 420 ".\\src\\Core\\lmp\\include\\lmp_config.h"




#line 31 "src\\hal\\prth_chimera\\sys\\sys_power.c"
#line 32 "src\\hal\\prth_chimera\\sys\\sys_power.c"
#line 33 "src\\hal\\prth_chimera\\sys\\sys_power.c"
#line 34 "src\\hal\\prth_chimera\\sys\\sys_power.c"
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



 

#line 76 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"
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





 
#line 77 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"
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
uint16 asciiToKeycode(uint8 ascii);





#line 95 ".\\src\\Core\\btj_src\\include\\DeviceBtj_Header.h"

#line 35 "src\\hal\\prth_chimera\\sys\\sys_power.c"


extern t_queue BTQueues[];
extern u_int32  Check_Inquiry_Is_Busy(void);
extern u_int32 Get_exist_Acl_Num(void);




static boolean syspwr_low_power_mode_active_;
static u_int8 LowFrequencyOscillatorAvailable = 0;

 


extern uint32 flash_mid;

u_int8 bt_time_tick;
volatile u_int8 b_26M_colsed=0;
void   _SYSboot_Power_Down();

void sys_idle()
{
    
  
    
    set_flash_clk(8);    
    flash_set_line_mode(1);
    b_26M_colsed=1;
    Set_CPU_Speed_16M();
    
    (*((volatile uint32 *)(0x00F10000+0x24))) = 0x19407D01;
    (*((volatile unsigned long *) (0x00800000 + 0x80) )) 	 = 0x1 ;

	(*((volatile unsigned long *) (0x00800000 + 0x5c) )) = (0x01 << 2) +(0x01 << 1 ) +
								(0x01 << 3 ) + (0x01 << 4 );

    
    delay_us(10);
    
    (*((volatile unsigned long *) (0x00800000 + 0x04) )) = 0x01;
 
}

void sys_wakeup()
{
    
    
    
    
    if(b_26M_colsed)
    {
        b_26M_colsed=0;
        
        flash_set_line_mode(1);
        while(!(flash_mid == get_flash_ID()));   
        flash_set_line_mode(4);
        set_flash_clk(1);
    }
}

void Enter_Deep_sleep(void)
{   
    set_flash_clk(8);    
    flash_set_line_mode(1); 
    Set_CPU_Speed_16M();

    (*((volatile unsigned long *) (0x00800000 + 0x50) )) &= ~(0x1<<18);
    delay_us(10);
    (*((volatile unsigned long *) (0x00800000 + 0x50) )) &= ~(0x1<<21);
    delay_us(20);
    (*((volatile uint32 *)(0x00F10000+0x24)))  = 0x18250000;
    delay_us(20);

    (*((volatile unsigned long *) (0x00800000 + 0x08) ))  = 0x1 ;
    (*((volatile unsigned long *) (0x00800000 + 0x0c) )) = 0x1 ;
    (*((volatile unsigned long *) (0x00800000 + 0x10) ))  = 0x1 ;
    (*((volatile unsigned long *) (0x00800000 + 0x14) ))  = 0x1 ;
    (*((volatile unsigned long *) (0x00800000 + 0x18) ))= 0x1 ;
    (*((volatile unsigned long *) (0x00800000 + 0x1c) ))  = 0x1 ;
    (*((volatile unsigned long *) (0x00800000 + 0x20) )) = 0x1 ;
    (*((volatile unsigned long *) (0x00800000 + 0x24) )) = 0x1 ;
    (*((volatile unsigned long *) (0x00800000 + 0x2C) )) = 0x1 + (0x1<<1) ;  
    (*((volatile unsigned long *) (0x00800000 + 0x30) )) = 0x1 + (0x1<<1) ;  
    (*((volatile unsigned long *) (0x00800000 + 0x34) )) = 0x1 + (0x1<<1) ;  
    (*((volatile unsigned long *) (0x00800000 + 0x38) )) = 0x1 + (0x1<<1) ;  
    (*((volatile unsigned long *) (0x00800000 + 0x3C) )) = 0x1 + (0x1<<1) + (0x1<<5) + (0x1<<8) ;

    (*((volatile unsigned long *) (0x00800000 + 0x6C) )) = 0x0 ; 

    (*((volatile unsigned long *) (0x00800000 + 0x80) ))     = 0x0 ;
    delay_us(10);
    (*((volatile uint32 *)(0x00F10000+0x28)))  = XVR_ANALOG_REG_BAK[10] | 0x1;
    delay_us(10);
    (*((volatile unsigned long *) (0x00800000 + 0x40) ))=0;
    (*((volatile unsigned long *) (0x00800000 + 0x44) ))=0;
    
    (*((volatile unsigned long *) (0x00800000 + 0x5c) )) = (0x01 << 0 ) + (0x01 << 1 ) + (0x01 << 2) +
                                       (0x01 << 3 ) + (0x01 << 4 );
    (*((volatile unsigned long *) (0x00800000 + 0x64) )) |=( 0x3231<<16);
    delay_us(10);
    while(1);
}



 
int SYSpwr_Is_Available_Sleep_System(void)
{
	
    



   
    t_queue *q = BTQueues;
        
    do  
    {       
            if(q->num_entries)      return(0 );
            q++;
    }
    while(q != &BTQueues[LMP_OUT_Q]);
    
    q = BTQueues + L2CAP_IN_Q;      
    do 
    {
            if(q->num_entries)      
                return(0 );
            q++;
    }
    while(q != &BTQueues[L2CAP_OUT_Q]);

    if(Check_Inquiry_Is_Busy())
    {
        return 0;
    }
 
    return(!LMtmr_Timer_Expired()); 
   
}  





 


void  SYSpwr_Halt_System(void)
{
    
    if(SYSpwr_Is_Available_Sleep_System())
    {    
         
    	 
        if(sys_flag&0X00004000)
        {   




            HW_set_aux_tim_intr_mask(1);
            LSLCirq_Disable_Aux_Tim_Intr();
            
            Enter_Deep_sleep();

        }
        else if(sys_flag & 0X00000400)
        {
            sys_idle(); 
            sys_wakeup();
        }
        else
            (*((volatile unsigned long *) (0x00800000 + 0x04) ))  = (2<<1);

    }

    syspwr_low_power_mode_active_ = (!0);
}





 
void SYSpwr_Sleep_System(void)
{

    

if(SYSpwr_Is_Available_Sleep_System())
{




    if(g_beken_initial_config.g_disable_CPU_Halt_sleep==0)  
        ARM_Enter_Light_mode();
    else
    if(g_beken_initial_config.g_disable_CPU_Halt_sleep==1)
    {
        if(Get_exist_Acl_Num()==0)
        {
            ARM_Enter_Light_mode();
        }
    }





}





}




 
void SYSpwr_Exit_Halt_System(void)
{
    syspwr_low_power_mode_active_ = 0;
}




 
int SYSpwr_Is_Available_Halt_System(void)
{
    return (syspwr_low_power_mode_active_);
}




 
extern volatile u_int8 b_pcm_on;
t_sys_lf_osc_type SYSpwr_LowFrequencyOscillatorAvailable(void)
{
    return SYS_LF_OSC_NONE;
   










     
}







 
static u_int32 syspwr_num_frames_to_sleep_;

void SYSpwr_Setup_Sleep_Timer(u_int32 max_num_frames_to_sleep)
{
 





 






 
    if(sys_flag&0X00001000)
    {
        bt_time_tick|=0x01;
            
    }
    
    HW_set_aux_tim_intr_clr(1);
    if (max_num_frames_to_sleep == 1)
    {
        HW_set_aux_timer(1);
        max_num_frames_to_sleep = 0;
    } 
    else if (max_num_frames_to_sleep > (0x3FFF << 1))
        {
            HW_set_aux_timer((0x3FFF << 1) >> 1);
            max_num_frames_to_sleep -= (0x3FFF << 1) + 1;
        }
        else
        {

        if (max_num_frames_to_sleep > (1 + 4))
        {
        
           


 
            
                HW_set_aux_timer((max_num_frames_to_sleep - 1) >> 1);
            
            
        }
        else
        { 
            HW_set_aux_timer(4>>1);
            
        }

            max_num_frames_to_sleep = 0;
        }

    
    syspwr_num_frames_to_sleep_ = max_num_frames_to_sleep;
}




 
void SYSpwr_Initialise(void)
{
    syspwr_num_frames_to_sleep_ = 0;
    syspwr_low_power_mode_active_ = 0;
	

    LowFrequencyOscillatorAvailable = 1;



}




 
void SYSpwr_Handle_Early_Wakeup(void)
{
     
    
    


 
    if(!syspwr_num_frames_to_sleep_ )
    {
        
        syspwr_low_power_mode_active_ = 0;
       


 
       HW_set_aux_tim_intr_mask(1);
       LSLCirq_Disable_Aux_Tim_Intr();
       USLCchac_Wakeup();  
    }
    else
    {

        SYSpwr_Setup_Sleep_Timer(syspwr_num_frames_to_sleep_);

        SYSpwr_Halt_System();
    }     
}




 
boolean SYSpwr_Is_Low_Power_Mode_Active(void)
{
    return (syspwr_low_power_mode_active_);
}





 
boolean SYSpwr_Set_LowFrequencyOscillatorAvailable_Value(u_int8 osc_available)
{
   if((1==0) && (osc_available==1))
        return 0;
    LowFrequencyOscillatorAvailable = osc_available;
    return (!0);
}




 
u_int32 SYSpwr_Get_Min_Frames_To_Sleep(void)
{
    return (1 + 4);

}

