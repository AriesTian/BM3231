

void Beken_Write_Register(u_int32 addr,u_int32 dat);
u_int32 Beken_Read_Register(u_int32 addr);
void Beken_Write_Patch_Addr(u_int8 number,u_int32 addr);
void Beken_Write_Patch_Jump_Code(u_int8 number,u_int32 jumpcode);
void Beken_Write_Patch_Memory(u_int32 addr,u_int32 dat);

void Beken_Start_BlueTooth(void);
void Beken_Stop_BlueTooth(void);



