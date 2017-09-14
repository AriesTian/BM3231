;
; MODULE:         sys_boot_chimera.s
; MAINTAINER:     
; CREATION DATE:  21 November 2000
; DESCRIPTION:    system boot code for Chimera (ARM7DI - XR7)
;
; SOURCE CONTROL:
;
; REVISION HISTORY:
;
; LICENSE:
;     This source code is copyright (c) 2000-2004 Ceva Inc.,
;     All rights reserved.
;
; Intended to be included in sys_boot_arm.s
;

;----------------------------------------------------------------------------
;  External Device Setup Registers (Accessed via Chip Select Pins)

ROML0S          EQU     0x10000 ;ROM CS 0 setup, size and wait state register (RW)
ROML1S          EQU     0x10004 ;ROM CS 1 setup, size and wait state register (RW)
RAMLS           EQU     0x10008 ;RAM CS   setup, size and wait state register (RW)
EXL0S           EQU     0x1000C ;EXT CS 0 setup, size and wait state register (RW)
EXL1S           EQU     0x10010 ;EXT CS 1 setup, size and wait state register (RW)
EXL2S           EQU     0x10014 ;EXT CS 2 setup, size and wait state register (RW)

;----------------------------------------------------------------------------
;  System Configuration Registers

SREGA           EQU     0x10100 ;config reg A - Clock source register (RW)
SREGB           EQU     0x10104 ;config reg B - I/O BUS OUT 7..0 options (RW)
SREGC           EQU     0x10108 ;config reg C - I/O BUS OUT 15..8 options (RW)
SREGD           EQU     0x1010C ;config reg D - I/O BUS IN options (RW)
SREGE           EQU     0x10110 ;config reg E - I/O BUS test options (RW)
SREGF           EQU     0x10114 ;config reg F - non I/O BUS options (RW)

;----------------------------------------------------------------------------
;  System Interrupt Control/Status Registers Base Address and Registers
;  relative to the Base Address

INT_base        EQU     0x10200 ;Base address of Interrupt Registers

FIQ_ST_ofst     EQU     0x00    ;FIQ Status Register (RO)
FIQ_MSK_ofst    EQU     0x04    ;FIQ Control Register (WO)
IRQ_HPS_ofst    EQU     0x08    ;IRQ Highest Priority Status Register (RO)
IRQ_ST_ofst     EQU     0x0C    ;IRQ Status Register (RO)
INT_ST_ofst     EQU     0x10    ;INT RAW Status Register (RO)
IRQ_MSK_ofst    EQU     0x14    ;IRQ Enable Mask Register(RW)
IRQ_MAP_ofst    EQU     0x18    ;IRQ Interrupt Map Register (RW)
FIQ_MAP_ofst    EQU     0x1C    ;FIQ Interrupt Map Register (RW)
EXT_MAP_ofst    EQU     0x20    ;EXT Interrupt Map Register (RW)
IRQ_PRI_ofst    EQU     0x24    ;IRQ Priority Selection Register (RW)
IRQ_CLR_ofst    EQU     0x28    ;IRQ Clear Selection Register (WO)
INT_CFG_ofst    EQU     0x2C    ;Interrupt Configuration Register (RW)
IOB_IC_ofst     EQU     0x40    ;I/O Bus Interrupt Control Register (RW)
IOB_IS_ofst     EQU     0x44    ;I/O Bus Interrupt Setup Register (RW)
IOB_MSK_ofst    EQU     0x4C    ;I/O Bus Interrupt Mask Register (RW)
IOB_ST_ofst     EQU     0x50    ;I/O Bus Raw Status Register (RO)
ITR_A_ofst      EQU     0x54    ;Interrupt Test Register A (WO)
ITR_B_ofst      EQU     0x58    ;Interrupt Test Register B (RO)

;----------------------------------------------------------------------------
;  System Reset Registers

RSTLST          EQU     0x10300 ;Type of last reset register (RO)
RSTCRL          EQU     0x10304 ;ARM processor reset control register (RW)
RMAP            EQU     0x10308 ;REMAP mode register (RW)

;----------------------------------------------------------------------------
;  UART Base Addresses and Registers relative to the Base Addresses

UART1_base      EQU     0x10400 ;Base address of UART 1
UART2_base      EQU     0x10500 ;Base address of UART 2
UART3_base      EQU     0x10600 ;Base address of UART 3

; UART Register offsets to base address

RBR_ofst        EQU     0x00    ;RBR (Receive Buffer Register) register (RO)
THR_ofst        EQU     0x00    ;THR (Transmit Holding Register) register (WO)
DLL_ofst        EQU     0x00    ;DLL (Divisor Latch LSB) register (RW)
DLM_ofst        EQU     0x04    ;DLM (Divisor Latch MSB) register (RW)
IER_ofst        EQU     0x04    ;IER (Interrupt Enable Register) register (RW)
IIR_ofst        EQU     0x08    ;IIR (Identification Register) register (RO)
FCR_ofst        EQU     0x08    ;FCR (FIFO Control Register) register (WO)
LCR_ofst        EQU     0x0C    ;LCR (Line Control Register) register (RW)
MCR_ofst        EQU     0x10    ;MCR (Modem Control Register) register (RW)*
LSR_ofst        EQU     0x14    ;LSR (Line Status Register) register (RO)
MSR_ofst        EQU     0x18    ;MSR (Modem Status Register) register (RO)*
SCR_ofst        EQU     0x1C    ;SCR (Scratch Pad Register) register (RW)
;
;  * these two registers are only implemented in UART 2
;    they are reserved in UART 1 and UART 3 and should not be used

;----------------------------------------------------------------------------
;  Manchester Encoder Registers Base Address
;  and Registers relative to the Base Address
;  (also contains IRDA and UART Control registers)

MAN_base        EQU     0x10700 ;Base address of Manchester Encoder Registers

; Manchester Encoder Register offsets to base address

IRDACR_ofst     EQU     0x00    ;IRDA Control Register (WO)
MANCR_ofst      EQU     0x04    ;Manchester Encoder Control Register (WO)
MANDIN_ofst     EQU     0x08    ;Manchester Encoder Data TX Register (WO)
MANFLAG_ofst    EQU     0x0C    ;Manchester Encoder Flag Register (RW)
MANST_ofst      EQU     0x10    ;Manchester Encoder Status Register (RO)
USWITCH_ofst    EQU     0x14    ;UART control switch (RW)

;----------------------------------------------------------------------------
;  General Purpose Peripheral Registers

PWM1            EQU     0x10800 ;Width of PWM1 Register (WO)
PWM2            EQU     0x10804 ;Width of PWM2 Register (WO)
PWM3            EQU     0x10808 ;Width of PWM3 Register (WO)
PWM_CLOCK       EQU     0x1080C ;PWM1,2,3 Clock Source Selection Register (WO)

;----------------------------------------------------------------------------
;  Timer / NCO Registers Base Address and Registers relative to the Base Address

NCO_base        EQU     0x10A00 ;Base address of Timer / NCO Registers

; Timer / NCO Register offsets to base address

NCO_FREQL_ofst  EQU     0x00    ;Timer NCO Freq LSB Register (WO)
NCO_FREQH_ofst  EQU     0x04    ;Timer NCO Freq MSB Register (WO)
NCO_PHASE_ofst  EQU     0x08    ;Timer NCO Phase Register (WO)
NCO_MODE_ofst   EQU     0x0C    ;Timer NCO Control Register (WO)

;----------------------------------------------------------------------------
;  PPS Timing Registers Base Address and Registers relative to the Base Address

PPS_base        EQU     0x10C00 ;Base address of PPS Registers

; PPS Register offsets to base address

PPSA_STA_ofst   EQU     0x00    ;PPS A Start Register (WO)
PPSA_DUR_ofst   EQU     0x04    ;PPS A Duration Register (WO)
PPSA_CTR_ofst   EQU     0x08    ;PPS A Control Register (WO)
PPSB_STA_ofst   EQU     0x10    ;PPS B Start Register (WO)
PPSB_DUR_ofst   EQU     0x14    ;PPS B Duration Register (WO)
PPSB_CTR_ofst   EQU     0x18    ;PPS B Control Register (WO)
PPSC_STA_ofst   EQU     0x20    ;PPS C Start Register (WO)
PPSC_DUR_ofst   EQU     0x24    ;PPS C Duration Register (WO)
PPSC_CTR_ofst   EQU     0x28    ;PPS C Control Register (WO)

;----------------------------------------------------------------------------
;  E1/T1 Timing Registers Base Address and Registers relative to the Base Address

E1T1_base       EQU     0x10D00 ;Base address of E1/T1 Registers

; E1/T1 Register offsets to base address

T1_LO_ofst      EQU     0x00    ;Low 16 bits of 24 bit F pattern (WO)
T1_HI_ofst      EQU     0x04    ;High 8 bits of 24 bit F pattern (WO)
E1_B1_ofst      EQU     0x08    ;Bit 1 of frames for 16 frame multiframe (WO)
E1_FB_ofst      EQU     0x0C    ;Frame allignment byte & non alignmemt byte (WO)
E1_C0_ofst      EQU     0x10    ;Frame 0 of the 16 frame CAS multiframe (WO)
E1_C1_ofst      EQU     0x14    ;CAS multiframe Frame 1 to 15 data (WO)
TE_SETUP_ofst   EQU     0x18    ;Output configuration (WO)
TE_STATUS_ofst  EQU     0x1C    ;Interface status (RO)

;----------------------------------------------------------------------------
;  Event Timer Registers Base Address and Registers relative to the Base Address

EVENT_base      EQU     0x10E00 ;Base address of EVENT TIMER Registers

; EVENT TIMER Register offsets to base address

EV_FUNC_ofst    EQU     0x00    ;Function Control register (WO)
EV_FREQ_ofst    EQU     0x04    ;Frequency Control register (WO)
EV_T1_ofst      EQU     0x08    ;Timer 1 LS 16 Bits register (RO)
EV_T2_ofst      EQU     0x0C    ;Timer 2 LS 16 Bits register  (RO)
EV_MSB_ofst     EQU     0x10    ;MS Bit of Timers and Status Bits register (RO)
EV_C1_ofst      EQU     0x14    ;16 Bit Count for Event Counter 1 (RO)
EV_C2_ofst      EQU     0x18    ;16 Bit Count for Event Counter 2 (RO)
;----------------------------------------------------------------------------
;  N2W (Navstar 2 Wire) Base Address and Registers relative to the Base Address

N2W_base        EQU     0x11000 ;Base address of N2W interface

; N2W Register offsets to base address

RX2_ofst        EQU     0x00    ;RX (Receive FIFO) register (RO)
TX2_ofst        EQU     0x00    ;TX (Transmit FIFO) register (WO)
STS_ofst        EQU     0x04    ;STS (Status Register) register (RO)
CTL_ofst        EQU     0x08    ;CTL (Control Register) register (RW)
CLK_ofst        EQU     0x0C    ;CLK (Clock Register) register (RW)
ADR_ofst        EQU     0x10    ;ADR (Slave Address Register) register (R0)

; bit definition of N2W Status register (N2W.STS)

TDI_bit         EQU     0x001   ;1 = Transaction done
DRI_bit         EQU     0x002   ;1 = Transmitter needs data
NAI_bit         EQU     0x004   ;1 = No ack for last transmission
AFI_bit         EQU     0x008   ;1 = Arbitration failure
RFF_bit         EQU     0x010   ;1 = Receive FIFO full
RFE_bit         EQU     0x020   ;1 = Receive FIFO empty
TFF_bit         EQU     0x040   ;1 = Transmit FIFO full
TFE_bit         EQU     0x080   ;1 = Transmit FIFO empty
ACT_bit         EQU     0x100   ;1 = bus active
SCL_bit         EQU     0x200   ;SCL signal state
SSA_bit         EQU     0x400   ;SDA signal state

WRITE_bit       EQU     0x001   ;Write bit in address register

;----------------------------------------------------------------------------
;  N4W (Navstar 4 Wire) Base Address and Registers relative to the Base Address

N4W_base        EQU     0x11100 ;Base address of N4W interface

; N4W Register offsets to base address

TX4_ofst        EQU     0x00    ;TX (Transmit) register (WO)
RX4_ofst        EQU     0x04    ;RX (Receive) register (RO)
MODE4_ofst      EQU     0x08    ;Control register (WO)
STAT4_ofst      EQU     0x0C    ;Device Status register (RO)

;----------------------------------------------------------------------------
; IOBUS Base Address and Registers relative to the Base Address

IOBUS_base      EQU     0x11200 ;Base address of IOBUS

; IOBUS Register offsets to base address

PA_IN_ofst      EQU     0x00    ;Port A Input Status register (RO)
PA_OUT_ofst     EQU     0x04    ;Port A Output Latch register (RW)
PA_SET_ofst     EQU     0x08    ;Port A Output Latch Set Bits register (RW)
PA_CLR_ofst     EQU     0x0C    ;Port A Output Latch Clear Bits register (RW)
PA_TGL_ofst     EQU     0x10    ;Port A Output Latch Toggle Bits register (RW)
PA_DIR_ofst     EQU     0x14    ;Port A Direction register (RW)

PB_IN_ofst      EQU     0x18    ;Port B Input Status register (RO)
PB_OUT_ofst     EQU     0x1C    ;Port B Output Latch register (RW)

;----------------------------------------------------------------------------
; Analog Control Registers Base Address and Registers relative to the Base Address

ANALOG_base     EQU     0x11400 ;Base address of Analog Registers

; Analog Control Register offsets to base address

ADCDATA_ofst    EQU     0x00    ;ADC 10 bit Data register (R0)
ADCCTR_ofst     EQU     0x04    ;ADC Control register (RW)
DACDATA_ofst    EQU     0x08    ;DAC 10 bit Data register  (RW)
DACCTR_ofst     EQU     0x0C    ;DAC Control register (RW)
PLLCTR_ofst     EQU     0x10    ;Phase Lock Loop Control register (RW)

;----------------------------------------------------------------------------
; ICON (PLD) Base Address and Registers relative to the Base Address

PLD_base        EQU     0x11800 ;Base address of PLD

; ICON (PLD) Register offsets to base address

CNT_PGM_ofst    EQU     0x00    ;PLD Counter Program register (WO)
COMB_PGM_ofst   EQU     0x04    ;PLD Combinatorial Program register (WO)
COMB_FCN0_ofst  EQU     0x08    ;PLD Combinatorial Function 0 register (WO)
COMB_FCN1_ofst  EQU     0x0C    ;PLD Combinatorial Function 1 register (WO)
COMB_FCN2_ofst  EQU     0x10    ;PLD Combinatorial Function 2 register (WO)
COMB_FCN3_ofst  EQU     0x14    ;PLD Combinatorial Function 3 register (WO)
DEC_PGM_ofst    EQU     0x18    ;PLD Decoder Block Program register (WO)
CORE_PGM_ofst   EQU     0x1C    ;PLD I/O Core Program register (WO)
CELL_PGM0_ofst  EQU     0x20    ;PLD I/O Cell 0 Program register (WO)
CELL_PGM1_ofst  EQU     0x24    ;PLD I/O Cell 1 Program register (WO)
CELL_PGM2_ofst  EQU     0x28    ;PLD I/O Cell 2 Program register (WO)
CELL_PGM3_ofst  EQU     0x2C    ;PLD I/O Cell 3 Program register (WO)
CELL_PGM4_ofst  EQU     0x30    ;PLD I/O Cell 4 Program register (WO)
CELL_PGM5_ofst  EQU     0x34    ;PLD I/O Cell 5 Program register (WO)
CELL_PGM6_ofst  EQU     0x38    ;PLD I/O Cell 6 Program register (WO)
CELL_PGM7_ofst  EQU     0x3C    ;PLD I/O Cell 7 Program register (WO)
IN_REG_ofst     EQU     0x40    ;PLD Direct Input register (WO)

;----------------------------------------------------------------------------
; Real Time Clock (RTC) Base Addresses and Registers relative to the Base Addresses

RTC_base        EQU     0x13800 ;Base address of RTC

; Real Time Clock (RTC)  Register offsets to base address

PRE_ofst        EQU     0x04    ;Prescale register (RO)
CR_ofst         EQU     0x08    ;Clock register (RW)
SEC_ofst        EQU     0x20    ;Seconds register (RW)
MIN_ofst        EQU     0x24    ;Minutes register (RW)
HR_ofst         EQU     0x28    ;Hours register (RW)
DOM_ofst        EQU     0x2C    ;Day of Month register (RW)
DOY_ofst        EQU     0x34    ;Day of Year register (RW)
MON_ofst        EQU     0x38    ;Month register (RW)
YR_ofst         EQU     0x3C    ;Year register (RW)

;----------------------------------------------------------------------------
; Individual GPS Channels Base Address

GPSBASE1        EQU     0x18000 ;GPS Channel 1 Base Address
GPSBASE2        EQU     0x18400 ;GPS Channel 2 Base Address
GPSBASE3        EQU     0x18800 ;GPS Channel 3 Base Address
GPSBASE4        EQU     0x18C00 ;GPS Channel 4 Base Address
GPSBASE5        EQU     0x19000 ;GPS Channel 5 Base Address
GPSBASE6        EQU     0x19400 ;GPS Channel 6 Base Address
GPSBASE7        EQU     0x19800 ;GPS Channel 7 Base Address
GPSBASE8        EQU     0x19C00 ;GPS Channel 8 Base Address
GPSBASE9        EQU     0x1A000 ;GPS Channel 9 Base Address
GPSBASE10       EQU     0x1A400 ;GPS Channel 10 Base Address
GPSBASE11       EQU     0x1A800 ;GPS Channel 11 Base Address
GPSBASE12       EQU     0x1AC00 ;GPS Channel 12 Base Address
GPSBASE13       EQU     0x1B000 ;Virtual Chan 13 Base Adr (Chan 11 extensions)
GPSBASE14       EQU     0x1B400 ;Virtual Chan 14 Base Adr (Chan 12 extensions)
GPSBASE16       EQU     0x1BC00 ;Virtual Chan 16 Base Adr (All chans in parallel)

CHAN_SPACING    EQU     GPSBASE2-GPSBASE1 ;Channel Spacing

; (Note GPSBASE15 contains setup registers and is defined later)
;----------------------------------------------------------------------------
; Offset of Individual GPS Channel registers relative to the Channel Base Address

TEST_ofst       EQU     0x00    ;Channel Test register (WO)
CAFREQ_ofst     EQU     0x18    ;Carrier NCO Frequency register (WO)
CAPHASE_ofst    EQU     0x1C    ;Carrier NCO Phase register (WO)
COPHASE_ofst    EQU     0x20    ;Coder NCO Phase register (WO)
G1G2CODE_ofst   EQU     0x24    ;Coder G1/G2 Code register (WO)
G1G2TAPS_ofst   EQU     0x28    ;Coder G1/G2 Taps register (WO)
CODEMODE_ofst   EQU     0x2C    ;Channel Control register (WO)
MASKI_ofst      EQU     0x30    ;Coder (E-L) I Mask register (WO)
MASKQ_ofst      EQU     0x34    ;Coder (E-L) Q Mask (register WO)
MASKP_ofst      EQU     0x38    ;Coder Prompt Mask register (WO)
MASKM_ofst      EQU     0x3C    ;Coder Setup Mask register (WO)
PRMTI_ofst      EQU     0x30    ;Correlator I Prompt register (RO)
PRMTQ_ofst      EQU     0x34    ;Correlator Q Prompt register (RO)
EMLI_ofst       EQU     0x38    ;Correlator I Early-Late register (RO)
EMLQ_ofst       EQU     0x3C    ;Correlator Q Early-Late register (RO)

;----------------------------------------------------------------------------
; Offset of registers specific to virtual channels 13 an 14 relative to the
; Channel Base Address

PRMTIO_ofst     EQU     0x30    ;I Prompt reg with offset accumulation time (RO)
PRMTQO_ofst     EQU     0x34    ;Q Prompt reg with offset accumulation time (RO)
EMLIO_ofst      EQU     0x38    ;I Early-Late reg with offset accumulation time (RO)
EMLQO_ofst      EQU     0x3C    ;I Early-Late reg with offset accumulation time (RO)
;----------------------------------------------------------------------------
;  GPS Setup Function Registers as offsets to the Base Address of channel 15

GPSBASE15       EQU     0x1B800 ;GPS Channel 15 Base Address (setup functions)

COPZEROA_ofst   EQU     0x20    ;Common Coder NCO #A Zero (WO)
COFREQA_ofst    EQU     0x24    ;Common Coder NCO #A Frequency (WO)
COPZEROB_ofst   EQU     0x28    ;Common Coder NCO #B Zero (WO)
COFREQB_ofst    EQU     0x2C    ;Common Coder NCO #B Frequency (WO)
CONTROL_ofst    EQU     0x30    ;GPS I/O Setup register (RW)
OSCOUNT2_ofst   EQU     0x34    ;Chan 12 mS offset register (RW)
OSCOUNT1_ofst   EQU     0x38    ;Chan 11 mS offset register (RW)
MSCOUNT_ofst    EQU     0x3C    ;mS Period Programming Write register (RW)

;----------------------------------------------------------------------------
;
; AEB1 Specific Definitions
;
;LSRAM_BASE  EQU    0x00000000
;LSRAM_LIMIT EQU    0x00000800

;SRAM_BASE   EQU    0x00400000
SRAM_LIMIT  EQU    0x00405FFC

IRQ_STACK   EQU    SRAM_LIMIT                        ;IRQ: 0x004077Ff- 0x00407FFC
FIQ_STACK   EQU    IRQ_STACK-512 ;//            ;FIQ: 0x00406fFf- 0x004077Ff
SVC_STACK   EQU    FIQ_STACK-1024 ;//            ;SVC: 0x004063Ff -0x00406fFf
USR_STACK   EQU    SVC_STACK-1024*2                   ;USER:
SYS_STACK   EQU    USR_STACK-12


;;;;
;0x00407FFC   --32K
;0x00407bfc   --31K (0x407ed0--0x407FFC)==0x12c=300
;0x004077fc   --30K 
;0x004073fc   --29K (0x407a90--0x00407bfc)=0x16c=364
;0x00406ffc   --28K (0x4070b0--0x004073fc)=0x34c=844
;0x00406bfc   --27K
;0x004067fc   --26K   


    EXPORT IRQ_STACK
    EXPORT FIQ_STACK
    EXPORT SVC_STACK
    EXPORT USR_STACK
;
; Chimera Function Implementations
;

;
; FUNCTION:     _SYSboot_Setup_Target_Specific
; DESCRIPTION:  Any target specific initialisation or setup code
;               
_SYSboot_Setup_Target_Specific
;----------------------------------------------------------------------------
;  Initialise External Device Setup Registers

	ldr	r1,=ROML0S	;ROM CS 0 setup, size and wait state register (RW)
	ldr	r0,=0x0025	;(def=0x0017) 5 wait states, 32 bit device
	strh	r0,[r1]

	ldr	r1,=ROML1S	;ROM CS 1 setup, size and wait state register (RW)
	ldr	r0,=0x0013	;(def=0x0017) 3 wait states, 16 bit device
	strh	r0,[r1]

	ldr	r1,=RAMLS	;RAM CS   setup, size and wait state register (RW)
	ldr	r0,=0x0021	;(def=0x0017) 1 wait state, 32 bit device
	strh	r0,[r1]

	ldr	r1,=EXL0S	;EXT CS 0 setup, size and wait state register (RW)
	ldr	r0,=0x00E5	;EXL0S and EXL1S were both 0x00E7
	strh	r0,[r1]

	ldr	r1,=EXL1S	;EXT CS 1 setup, size and wait state register (RW)
	ldr	r0,=0x00E5	;(def=0x0057) 5 wait state, 32 bit device
	strh	r0,[r1]
	
	ldr	r1,=EXL2S	;EXT CS 2 setup, size and wait state register (RW)
	ldr	r0,=0x0057	;(def=0x0057) <no device fitted> (recovery enabled)
	strh	r0,[r1]

    MOV     PC, LR       

;
; FUNCTION:     _SYSboot_Map_Flash_High
; DESCRIPTION:  Remap flash from 0x00000000 (boot address) to high memory
;
_SYSboot_Map_Flash_High
        MOV     PC, LR 

;
; FUNCTION:     _SYSboot_Config_LSRAM_Cache
; DESCRIPTION:  Setup any on-chip SRAM or cache
;
_SYSboot_Config_LSRAM_Cache
        MOV     PC, LR


;
; FUNCTION:     _SYSboot_Map_SRAM_Low
; DESCRIPTION:  Map SRAM in Low Memory
;
_SYSboot_Map_SRAM_Low
	ldr	r1,=RMAP		;REMAP mode register (RW)
	ldr	r0,=0x0002		;(def=0x000M) 0002 = on-chip RAM
	strh	r0,[r1]			;(where M=MAPMODE pins [2 ls bits only])
    MOV     PC, LR

;
; FUNCTION:     _SYSboot_Setup_Stacks_Disable_Intr
; DESCRIPTION:  Setup stack pointers for IRQ Mode, FIQ Mode, SVC Mode 
;               ensuring all the time that IRQ and FIQ are disabled
;
_SYSboot_Setup_Stacks_Disable_Intr
        LDR     R0, =0xDEADBEEF
        LDR     R1, =USR_STACK
        STR     R0, [R1]

        MOV     R0, #MODE_IRQ:OR:I_BIT:OR:F_BIT
        MSR     CPSR_c, R0
        LDR     R13, =IRQ_STACK

        MOV     R0, #MODE_FIQ:OR:I_BIT:OR:F_BIT
        MSR     CPSR_c, R0
        LDR     R13, =FIQ_STACK
        LDR     R0, =0xDEADBEEF
        STR     R0, [R13]

       MOV     R0, #MODE_SYS:OR:I_BIT:OR:F_BIT
        MSR     CPSR_c, R0
        LDR     R13, =SYS_STACK
        LDR     R0, =0xDEADBEEF
       STR     R0, [R13]

        MOV     R0, #MODE_SVC:OR:I_BIT:OR:F_BIT
        MSR     CPSR_c, R0
        LDR     R13, =SVC_STACK
        LDR     R0, =0xDEADBEEF
        STR     R0, [R13]
        MOV     PC, LR
    END
