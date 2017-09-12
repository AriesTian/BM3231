#ifndef __DEVICEBTJ_ENDIAN_DOT_H_
#define __DEVICEBTJ_ENDIAN_DOT_H_
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
#endif /* __DEVICEBTJ_ENDIAN_DOT_H_ */
