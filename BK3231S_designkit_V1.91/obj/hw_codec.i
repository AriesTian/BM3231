#line 1 "src\\hal\\prth_chimera\\hw\\hw_codec.c"




















 
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







#line 23 "src\\hal\\prth_chimera\\hw\\hw_codec.c"
#line 1 ".\\src\\Core\\hw\\include\\hw_codec.h"




















 

#line 24 ".\\src\\Core\\hw\\include\\hw_codec.h"
#line 1 ".\\src\\Core\\lc\\include\\lc_types.h"















 

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



#line 25 ".\\src\\Core\\hw\\include\\hw_codec.h"

void HWcodec_Initialise(void);
boolean HWcodec_Is_Valid_SCO_Conversion(u_int16 voice_setting);
void HWcodec_Set_Voice_Setting(u_int16 new_voice_setting);
u_int16 HWcodec_Get_Voice_Setting(void);
void HWcodec_Enable(void);
void HWcodec_Disable(void);
u_int8 HWcodec_Get_VCI_Clk_Sel(void);
u_int8 HWcodec_Get_VCI_Clk_Sel_Map(void);
void HWcodec_Increase_Volume(void);
void HWcodec_Decrease_Volume(void);

#line 53 ".\\src\\Core\\hw\\include\\hw_codec.h"

#line 24 "src\\hal\\prth_chimera\\hw\\hw_codec.c"
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
#line 1 ".\\src\\Core\\hw\\include\\hw_delay.h"















 

void HWdelay_Initialise(void);
void HWdelay_Wait_For_10us(u_int32 tens_of_u_secs);
void HWdelay_Wait_For_us(u_int32 units_of_u_secs);
void HWdelay_Wait_For_ms(u_int32 units_of_m_secs, boolean use_native_clk);
void HWdelay_Wait_For_Serial_Interface_Idle(void);
void HWdelay_Wait_For_Serial_Interface_Busy_us(u_int32 units_of_u_secs);



 
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


#line 25 "src\\hal\\prth_chimera\\hw\\hw_codec.c"
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
#line 26 "src\\hal\\prth_chimera\\hw\\hw_codec.c"

















 
boolean HWcodec_Is_Valid_SCO_Conversion(u_int16 new_voice_setting)
{
   boolean can_convert = 0;  
   
#line 119 "src\\hal\\prth_chimera\\hw\\hw_codec.c"

   can_convert = 1;


   
   return can_convert;
}








 
u_int8 HWcodec_Get_VCI_Clk_Sel(void)
{

    return 2;







 
 


}







 
u_int8 HWcodec_Get_VCI_Clk_Sel_Map(void)
{




    return 1;












}


volatile u_int8 b_pcm_on=0;









 
void HWcodec_Enable(void)
{

    b_pcm_on=1;

     
        { u_int32 volatile *addr = ((u_int32 volatile *) ((0x00000028 + 0x0F26000) )); *addr |= (0x80000000); };
}









 
void HWcodec_Disable(void)
{
    b_pcm_on=0;

     
}










 
void HWcodec_Increase_Volume(void)
{
     
}










 
void HWcodec_Decrease_Volume(void)
{
}




 
void HWcodec_Set_Voice_Setting(u_int16 new_voice_setting)
{

#line 279 "src\\hal\\prth_chimera\\hw\\hw_codec.c"

}

