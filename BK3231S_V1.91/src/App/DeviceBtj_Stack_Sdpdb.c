#include "DeviceBtj_Header.h"


const BTBYTE hid[] =
{    
    0x35,204,
    0x35,202,
    0x08,0x22,
    0x25,198,
//---------------
    0x05, 0x01,        // Usage Page (Generic Desktop),
    0x09, 0x06,        // Usage (Keyboard),
    0xA1, 0x01,        // Collection (Application),  
    0x85, 0x01,        // Report ID
    0x05, 0x07,        // Usage Page (Key Codes);                         
    0x19, 0xE0,        // Usage Minimum (224),                            
    0x29, 0xE7,        // Usage Maximum (231),                            
    0x15, 0x00,        // Logical Minimum (0),                            
    0x25, 0x01,        // Logical Maximum (1),                            
    0x75, 0x01,        // Report Size (1),                                
    0x95, 0x08,        // Report Count (8),                               
    0x81, 0x02,        // Input (Data, Variable, Absolute), ;Modifier byte
    0x95, 0x01,        // Report Count (1),                               
    0x75, 0x08,        // Report Size (8),                                
    0x81, 0x03,        // Input (Constant), ;Reserved byte                
    0x95, 0x05,        // Report Count (5),                               
    0x75, 0x01,        // Report Size (1),                                
    0x05, 0x08,        // Usage Page (Page# for LEDs),                    
    0x19, 0x01,        // Usage Minimum (1),                              
    0x29, 0x05,        // Usage Maximum (5),                              
    0x91, 0x02,        // Output (Data, Variable, Absolute), ;LED report  
    0x95, 0x01,        // Report Count (1),                               
    0x75, 0x03,        // Report Size (3),                                
    0x91, 0x03,        // Output (Constant), ;LED report padding          
    0x95, 0x06,        // Report Count (6),                               
    0x75, 0x08,        // Report Size (8),                                
    0x15, 0x00,        // Logical Minimum (0),                            
    0x26, 0xff, 0x00,        // Logical Maximum(255),                           
    0x05, 0x07,        // Usage Page (Key Codes),                         
    0x19, 0x00,        // Usage Minimum (0),                              
    0x29, 0xff,        // Usage Maximum (255),                            
    0x81, 0x00,        // Input (Data, Array), ;Key arrays (6 bytes)      
    0xC0,             // End Collection

//-----------多媒体键控制-------------
    0x05, 0x0c,		 // USAGE_PAGE (Consumer Devices)
    0x09, 0x01,		 // USAGE (Consumer Control)
    0xa1, 0x01,  	 // COLLECTION (Application)
    0x85, 0x03, 	 // Report ID (3)
    0x15, 0x00,		 // LOGICAL_MINIMUM (0)
    0x25,0x01,
    0x75,0x01,
    0x95,0x1e,
    0x0a,0x24,0x02,   //WWW back  0
	0x0a,0x25,0x02,   //WWW forward 1
	0x0a,0x26,0x02,	//WWW Stop  2
	0x0a,0x27,0x02,   //WWW Refresh 3
	0x0a,0x21,0x02,	//WWW Search 4
	0x0a,0x2A,0x02,	//WWW Favorites  5
	0x0a,0x23,0x02,   //WWW Home 6
	0x0a,0x8A,0x01,	//Mail  7
	0x09,0xE2,	//Mute 8
	0x09,0xEA,	//Volume-  9              
	0x09,0xE9,	//Volume+   10            
	0x09,0xCD,	//Play/Pause  11           
	0x09,0xB7,	//Stop  12 
	0x09,0xB6,	//Prev Track 13           
	0x09,0xB5,	//Next Track  14          
	0x0a,0x83,0x01,	//Media Select  15        
	0x0a,0x94,0x01,	//My Computer   16        
	0x0a,0x92,0x01,	//Calculator   17         
	0x0a,0x09,0x02,	//More Info  18           
	0x09,0xB2,	//Record     19           
	0x09,0xB3,	//Forward     20          
	0x09,0xB4,	//Rewind      21          
	0x09,0x8D,	//Guide        22         
	0x09,0x04,	//<Reserved>   23         
	0x09,0x30,	//Eject(Mac,power)   24
	0x0a,0x07,0x03,	//H7    31touchkey
	0x0a,0x0A,0x03,	//H10	34lightness+
	0x0a,0x0B,0x03,	//H11	35lightness-	
	0x0a,0xb1,0x01,    //photo 45
	0x09,0xb8,    //touchkey 46
    0x81,0x02,
    0x95, 0x01, 	 // REPORT_COUNT (1)
    0x75,0x02,
    0x81,0x03,
    0xc0, 			 // END_COLLECTION
//====================电源控制============
    0x05, 0x01, 	// Usage Page (Generic Desktop),
	0x09, 0x80,	 	// USAGE (3-D Digitizer)
	0xa1, 0x01,	 	// Collection (Application),
	0x85, 0x04, 	// Report ID (4)
	0x05, 0x01, 	// Usage Page (Generic Desktop),
	0x19, 0x81, 	// Usage Minimum (), 
	0x29, 0x83, 	// Usage Maximum (),
	0x15, 0x00, 	// Logical Minimum (0),
	0x25, 0x01, 	// Logical Maximum (1),
	0x95, 0x03, 	// Report Count (3),
	0x75, 0x01, 	// Report Size (1),
	0x81, 0x06, 	// Input (Data,Var,Rel)
	0x95, 0x01, 	// Report Count (1),  
	0x75, 0x05, 	// Report Size (5),	
	0x81, 0x01,		// Input (Const,Ary,Abs)
	0xc0,			// END_COLLECTION
	
};

 BTBYTE hid_mouse[] =
{
    0x35,237,
    0x35,235,
    0x08,0x22,
    0x25,231,
//---------------
    0x05, 0x01,        // Usage Page (Generic Desktop),
    0x09, 0x06,        // Usage (Keyboard),
    0xA1, 0x01,        // Collection (Application),  
    0x85, 0x01,        // Report ID
    0x05, 0x07,        // Usage Page (Key Codes);                         
    0x19, 0xE0,        // Usage Minimum (224),                            
    0x29, 0xE7,        // Usage Maximum (231),                            
    0x15, 0x00,        // Logical Minimum (0),                            
    0x25, 0x01,        // Logical Maximum (1),                            
    0x75, 0x01,        // Report Size (1),                                
    0x95, 0x08,        // Report Count (8),                               
    0x81, 0x02,        // Input (Data, Variable, Absolute), ;Modifier byte
    0x95, 0x01,        // Report Count (1),                               
    0x75, 0x08,        // Report Size (8),                                
    0x81, 0x03,        // Input (Constant), ;Reserved byte                
    0x95, 0x05,        // Report Count (5),                               
    0x75, 0x01,        // Report Size (1),                                
    0x05, 0x08,        // Usage Page (Page# for LEDs),                    
    0x19, 0x01,        // Usage Minimum (1),                              
    0x29, 0x05,        // Usage Maximum (5),                              
    0x91, 0x02,        // Output (Data, Variable, Absolute), ;LED report  
    0x95, 0x01,        // Report Count (1),                               
    0x75, 0x03,        // Report Size (3),                                
    0x91, 0x03,        // Output (Constant), ;LED report padding          
    0x95, 0x06,        // Report Count (6),                               
    0x75, 0x08,        // Report Size (8),                                
    0x15, 0x00,        // Logical Minimum (0),                            
    0x26, 0xff, 0x00,        // Logical Maximum(255),                           
    0x05, 0x07,        // Usage Page (Key Codes),                         
    0x19, 0x00,        // Usage Minimum (0),                              
    0x29, 0xff,        // Usage Maximum (255),                            
    0x81, 0x00,        // Input (Data, Array), ;Key arrays (6 bytes)      
    0xC0,             // End Collection

//-----------多媒体键控制-------------
    0x05, 0x0c,		 // USAGE_PAGE (Consumer Devices)
    0x09, 0x01,		 // USAGE (Consumer Control)
    0xa1, 0x01,  	 // COLLECTION (Application)
    0x85, 0x03, 	 // Report ID (3)
    0x15, 0x00,		 // LOGICAL_MINIMUM (0)
    0x25,0x01,
    0x75,0x01,
    0x95,0x1e,
    0x0a,0x24,0x02,   //WWW back  0
	0x0a,0x25,0x02,   //WWW forward 1
	0x0a,0x26,0x02,	//WWW Stop  2
	0x0a,0x27,0x02,   //WWW Refresh 3
	0x0a,0x21,0x02,	//WWW Search 4
	0x0a,0x2A,0x02,	//WWW Favorites  5
	0x0a,0x23,0x02,   //WWW Home 6
	0x0a,0x8A,0x01,	//Mail  7
	0x09,0xE2,	//Mute 8
	0x09,0xEA,	//Volume-  9              
	0x09,0xE9,	//Volume+   10            
	0x09,0xCD,	//Play/Pause  11           
	0x09,0xB7,	//Stop  12 
	0x09,0xB6,	//Prev Track 13           
	0x09,0xB5,	//Next Track  14          
	0x0a,0x83,0x01,	//Media Select  15        
	0x0a,0x94,0x01,	//My Computer   16        
	0x0a,0x92,0x01,	//Calculator   17         
	0x0a,0x09,0x02,	//More Info  18           
	0x09,0xB2,	//Record     19           
	0x09,0xB3,	//Forward     20          
	0x09,0xB4,	//Rewind      21          
	0x09,0x8D,	//Guide        22         
	0x09,0x04,	//<Reserved>   23         
	0x09,0x30,	//Eject(Mac,power)   24
	0x0a,0x07,0x03,	//H7    31touchkey
	0x0a,0x0A,0x03,	//H10	34lightness+
	0x0a,0x0B,0x03,	//H11	35lightness-	
	0x0a,0xb1,0x01,    //photo 45
	0x09,0xb8,    //touchkey 46
    0x81,0x02,
    0x95, 0x01, 	 // REPORT_COUNT (1)
    0x75,0x02,
    0x81,0x03,
    0xc0, 			 // END_COLLECTION

   
    0x05, 0x01,                    // USAGE_PAGE (Generic Desktop)
    0x09, 0x02,                    // USAGE (Mouse)
    0xa1, 0x01,                    // COLLECTION (Application)
    0x85, 0x02, 				   // Report ID (1)
    0x09, 0x01,                    //   USAGE (Pointer)
    0xa1, 0x00,                    //   COLLECTION (Physical)
    0x05, 0x09,                    //     USAGE_PAGE (Button)
    0x19, 0x01,                    //     USAGE_MINIMUM (Button 1)
    0x29, 0x05,                    //     USAGE_MAXIMUM (Button 3)
    0x15, 0x00,                    //     LOGICAL_MINIMUM (0)
    0x25, 0x01,                    //     LOGICAL_MAXIMUM (1)
    0x95, 0x05,                    //     REPORT_COUNT (5)
    0x75, 0x01,                    //     REPORT_SIZE (1)
    0x81, 0x02,                    //     INPUT (Data,Var,Abs)
    0x95, 0x01,                    //     REPORT_COUNT (1)
    0x75, 0x03,                    //     REPORT_SIZE (3)
    0x81, 0x01,                    //     INPUT (Cnst,Var,Abs)
    0x05, 0x01,                    //     USAGE_PAGE (Generic Desktop)
    0x09, 0x30,                    //     USAGE (X)
    0x09, 0x31,                    //     USAGE (Y) 
    0x15, 0x81,			           //	  Logical Minimum (-127)
    0x25, 0x7F,     			   //	  Logical Maximum (127)
    0x75, 0x08,                    //     REPORT_SIZE (8)
    0x95, 0x02,                    //     REPORT_COUNT (2)
    0x81, 0x06,                    //     INPUT (Data,Var,Rel)
    0x09, 0x38,                    //     USAGE (Wheel)
    0x15, 0x81,                    //     LOGICAL_MINIMUM (-127)
    0x25, 0x7f,                    //     LOGICAL_MAXIMUM (127)
    0x75, 0x08,                    //     REPORT_SIZE (8)
    0x95, 0x01,                    //     REPORT_COUNT (1)
    0x81, 0x06,                    //     INPUT (Data,Var,Rel)
    0xc0,                          //   END_COLLECTION
    0xc0,                           // END_COLLECTION
};


const BTBYTE Service_Name[]=
{    
    0x25,0x05,
    'B','E','K','E','N'
};
const BTBYTE Service_Description[]=
{
    0x25,0x0C,
    'B','l','u','e','t','o','o','t','h',' ','K','B'
};
const BTBYTE Provider_Name[]=
{
    0x25,0x08,
    'K','e','y','b','o','a','r','d'
};

static
const SDP_DB_ATTRIBUTE_T spp_record[] =
{
    {0x0000, (BTPBYTE)"\x0a\x00\x01\x00\x01", 0x05},
    {0x0001, (BTPBYTE)"\x35\x03\x19\x11\x01", 0x05},  
    {0x0004, (BTPBYTE)"\x35\x0c\x35\x03\x19\x01\x00\x35\x05\x19\x00\x03\x08\x01", 0x0e},
    {0x0005, (BTPBYTE)"\x35\x03\x19\x10\x02", 0x05},
    {0x0008, (BTPBYTE)"\x08\xff", 0x02},
    {0x0100, (BTPBYTE)"\x25\x05Port", 0x07},   
};


static
const
SDP_DB_ATTRIBUTE_T hid_record[] =
{
    {0x0000, (BTPBYTE)"\x0a\x00\x01\x00\x02", 0x05},
    {0x0001, (BTPBYTE)"\x35\x03\x19\x11\x24", 0x05},
    {0x0004, (BTPBYTE)"\x35\x0d\x35\x06\x19\x01\x00\x09\x00\x11\x35\x03\x19\x00\x11", 0x0f},
    {0x0005, (BTPBYTE)"\x35\x03\x19\x10\x02", 0x05},
    {0x0006, (BTPBYTE)"\x35\x09\x09\x65\x6e\x09\x00\x6a\x09\x01\x00", 0x0b},
    {0x0009, (BTPBYTE)"\x35\x08\x35\x06\x19\x11\x24\x09\x01\x00", 0x0a},
    {0x000d, (BTPBYTE)"\x35\x0f\x35\x0d\x35\x06\x19\x01\x00\x09\x00\x13\x35\x03\x19\x00\x11", 0x11},
    {0x0100, (BTPBYTE)Provider_Name, sizeof(Provider_Name)},
    {0x0101, (BTPBYTE)Service_Description, sizeof(Service_Description)},
    {0x0102, (BTPBYTE)Service_Name, sizeof(Service_Name)},
    {0x0200, (BTPBYTE)"\x09\x01\x00", 0x03},
    {0x0201, (BTPBYTE)"\x09\x01\x11", 0x03},

    {0x0202, (BTPBYTE)"\x08\xC0", 0x02},

    {0x0203, (BTPBYTE)"\x08\x21", 0x02},
    {0x0204, (BTPBYTE)"\x28\x01", 0x02},
    {0x0205, (BTPBYTE)"\x28\x01", 0x02},

    {0x0206, (BTPBYTE)hid_mouse, sizeof(hid_mouse)},

    {0x0207, (BTPBYTE)"\x35\x08\x35\x06\x09\x04\x09\x09\x01\x00", 0x0a},
    {0x0208, (BTPBYTE)"\x28\x00", 0x02},
    {0x0209, (BTPBYTE)"\x28\x01", 0x02},
    {0x020a, (BTPBYTE)"\x28\x00", 0x02},
    {0x020b, (BTPBYTE)"\x09\x01\x00", 0x03},
    {0x020c, (BTPBYTE)"\x09\x1f\x40", 0x03},
    {0x020d, (BTPBYTE)"\x28\x01", 0x02},
    {0x020e, (BTPBYTE)"\x28\x00", 0x02},  
    {0x020f, (BTPBYTE)"\x09\x06\x40", 0x03}, 
    {0x0210, (BTPBYTE)"\x09\x03\x20",0x03},  
};
static
const
SDP_DB_ATTRIBUTE_T hid_record_IOS[] =
{
    {0x0000, (BTPBYTE)"\x0a\x00\x01\x00\x02", 0x05},
    {0x0001, (BTPBYTE)"\x35\x03\x19\x11\x24", 0x05},
    {0x0004, (BTPBYTE)"\x35\x0d\x35\x06\x19\x01\x00\x09\x00\x11\x35\x03\x19\x00\x11", 0x0f},
    {0x0005, (BTPBYTE)"\x35\x03\x19\x10\x02", 0x05},
    {0x0006, (BTPBYTE)"\x35\x09\x09\x65\x6e\x09\x00\x6a\x09\x01\x00", 0x0b},
    {0x0009, (BTPBYTE)"\x35\x08\x35\x06\x19\x11\x24\x09\x01\x00", 0x0a},
    {0x000d, (BTPBYTE)"\x35\x0f\x35\x0d\x35\x06\x19\x01\x00\x09\x00\x13\x35\x03\x19\x00\x11", 0x11},
    {0x0100, (BTPBYTE)Provider_Name, sizeof(Provider_Name)},
    {0x0101, (BTPBYTE)Service_Description, sizeof(Service_Description)},
    {0x0102, (BTPBYTE)Service_Name, sizeof(Service_Name)},
    {0x0200, (BTPBYTE)"\x09\x01\x00", 0x03},
    {0x0201, (BTPBYTE)"\x09\x01\x11", 0x03}, 
    {0x0202, (BTPBYTE)"\x08\x40", 0x02},
    {0x0203, (BTPBYTE)"\x08\x21", 0x02},
    {0x0204, (BTPBYTE)"\x28\x01", 0x02},
    {0x0205, (BTPBYTE)"\x28\x01", 0x02},
    {0x0206, (BTPBYTE)hid, sizeof(hid)},
    {0x0207, (BTPBYTE)"\x35\x08\x35\x06\x09\x04\x09\x09\x01\x00", 0x0a},
    {0x0208, (BTPBYTE)"\x28\x00", 0x02},
    {0x0209, (BTPBYTE)"\x28\x01", 0x02},
    {0x020a, (BTPBYTE)"\x28\x00", 0x02},
    {0x020b, (BTPBYTE)"\x09\x01\x00", 0x03},
    {0x020c, (BTPBYTE)"\x09\x1f\x40", 0x03},
    {0x020d, (BTPBYTE)"\x28\x01", 0x02},
    {0x020e, (BTPBYTE)"\x28\x00", 0x02},  
    {0x020f, (BTPBYTE)"\x09\x06\x40", 0x03}, 
    {0x0210, (BTPBYTE)"\x09\x03\x20",0x03},  
};

static
const
SDP_DB_ATTRIBUTE_T pnp_record[] =
{
    {0x0000, (BTPBYTE)"\x0a\x00\x01\x00\x03", 0x05},
    {0x0001, (BTPBYTE)"\x35\x03\x19\x12\x00", 0x05},
    {0x0004, (BTPBYTE)"\x35\x0d\x35\x06\x19\x01\x00\x09\x00\x01\x35\x03\x19\x00\x01", 15},
    {0x0005, (BTPBYTE)"\x35\x03\x19\x10\x02", 0x05},
    {0x0006, (BTPBYTE)"\x35\x09\x09\x65\x6e\x09\x00\x6a\x09\x01\x00", 11},
    {0x0009, (BTPBYTE)"\x35\x08\x35\x06\x19\x12\x00\x09\x01\x00", 10},    
    {0x0200, (BTPBYTE)"\x09\x01\x00", 0x03},//SpecificationID
    {0x0201, (BTPBYTE)"\x09\x04\xe8", 0x03},//VID
    {0x0202, (BTPBYTE)"\x09\x70\x21", 0x03},//PID
    {0x0203, (BTPBYTE)"\x09\x00\x01", 0x03},//
    {0x0204, (BTPBYTE)"\x28\x01", 0x02},//PrimaryRecord
    {0x0205, (BTPBYTE)"\x09\x00\x02", 0x03},//VendorIDSource

};




void
DeviceSdpdb_Doreg(
    DEVICEBTJ_ADAPTER_P adapter,
    DEVICEBTJ_SERVICE_P service,
    DEVICEBTJ_OBJECT object
)
{
    if (adapter != BTNULL && service != BTNULL)
    {
        SDP_DATBASE_P sdp_db = &service->sdp_database;
        if (sdp_db != BTNULL)
        {
            switch (object)
            {
            case DEVICEBTJ_OBJECT_SPP:
            {
                sdp_db->busy    = BTFALSE;
                sdp_db->uuid    = SDP_DB_UUID_SERIAL_PORT;
                sdp_db->index   = 0x00;
                sdp_db->channel = 0x01;
                sdp_db->handle  = SDP_DB_HDL_BASE + sdp_db->channel;

				
                sdp_db->counts  = sizeof(spp_record)/sizeof(spp_record[0x00]);
                sdp_db->attrib  = (SDP_DB_ATTRIBUTE_P)&spp_record;
            }
            break;
            case DEVICEBTJ_OBJECT_HID:
            {
                sdp_db->busy    = BTFALSE;
                sdp_db->uuid    = SDP_DB_UUID_HUMAN_INTERFACE_DEVICE_SERVICE;
                sdp_db->index   = 0x00;
                sdp_db->channel = 0x02;
                sdp_db->handle  = SDP_DB_HDL_BASE + sdp_db->channel;

				if(sys_flag&FLAG_HOST_IOS_INIT)
                {
                    sdp_db->counts  = sizeof(hid_record_IOS)/sizeof(hid_record_IOS[0x00]);
                    sdp_db->attrib  = (SDP_DB_ATTRIBUTE_P)&hid_record_IOS;
                    sys_flag|=FLAG_HOST_IOS;
                    //bprintf("ios\n");
                } 
                else
                {
                    sdp_db->counts  = sizeof(hid_record)/sizeof(hid_record[0x00]);
                    sdp_db->attrib  = (SDP_DB_ATTRIBUTE_P)&hid_record;
                    sys_flag &= ~FLAG_HOST_IOS;
                    //bprintf("android\n");
                }
                
            }
            break;
            case DEVICEBTJ_OBJECT_PNP:
            {
                sdp_db->busy    = BTFALSE;
                sdp_db->uuid    = SDP_DB_UUID_PNP_INFORMATION;
                sdp_db->index   = 0x00;
                sdp_db->channel = 0x03;
                sdp_db->handle  = SDP_DB_HDL_BASE + sdp_db->channel;
                sdp_db->counts  = sizeof(pnp_record)/sizeof(pnp_record[0x00]);
                sdp_db->attrib  = (SDP_DB_ATTRIBUTE_P)&pnp_record;
            }
            break;
            }
        }
    }
}
SDP_DATBASE_P
DeviceSdpdb_Get_Database(
    DEVICEBTJ_ADAPTER_P adapter,
    BTDWORD             handle
)
{
    if ( handle > 0x00000000)
    {
        DEVICEBTJ_SERVICE_P app_service_header = adapter->app_service_header;
        while (app_service_header != BTNULL)
        {
            if (app_service_header->sdp_database.handle == handle)
            {
                return &app_service_header->sdp_database;
            }
            app_service_header = app_service_header->next;
        }
    }
    return BTNULL;
}


