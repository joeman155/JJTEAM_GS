;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.0 #8604 (May 11 2013) (Linux)
; This file was generated Sun Nov 24 17:43:12 2013
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _g_version_string
	.globl _g_banner_string
	.globl _main
	.globl _fhop_init
	.globl _delay_msec
	.globl _timer_init
	.globl _tdm_serial_loop
	.globl _tdm_init
	.globl _radio_get_transmit_power
	.globl _radio_set_transmit_power
	.globl _radio_air_rate
	.globl _radio_set_network_id
	.globl _radio_configure
	.globl _radio_set_channel
	.globl _radio_set_channel_spacing
	.globl _radio_set_frequency
	.globl _radio_initialise
	.globl _radio_receiver_on
	.globl _vprintfl
	.globl _constrain
	.globl _param_load
	.globl _param_get
	.globl _param_set
	.globl _serial_init
	.globl _srand
	.globl _rand
	.globl _puts
	.globl _TDM_SYNC_PIN
	.globl _NSS1
	.globl _IRQ
	.globl _PIN_ENABLE
	.globl _PIN_CONFIG
	.globl _LED_GREEN
	.globl _LED_RED
	.globl _SPI0EN
	.globl _TXBMT0
	.globl _NSS0MD0
	.globl _NSS0MD1
	.globl _RXOVRN0
	.globl _MODF0
	.globl _WCOL0
	.globl _SPIF0
	.globl _AD0CM0
	.globl _AD0CM1
	.globl _AD0CM2
	.globl _AD0WINT
	.globl _AD0BUSY
	.globl _AD0INT
	.globl _BURSTEN
	.globl _AD0EN
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CCF5
	.globl _CR
	.globl _CF
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _T2XCLK
	.globl _T2RCLK
	.globl _TR2
	.globl _T2SPLIT
	.globl _TF2CEN
	.globl _TF2LEN
	.globl _TF2L
	.globl _TF2H
	.globl _SI
	.globl _ACK
	.globl _ARBLOST
	.globl _ACKRQ
	.globl _STO
	.globl _STA
	.globl _TXMODE
	.globl _MASTER
	.globl _PX0
	.globl _PT0
	.globl _PX1
	.globl _PT1
	.globl _PS0
	.globl _PT2
	.globl _PSPI0
	.globl _SPI1EN
	.globl _TXBMT1
	.globl _NSS1MD0
	.globl _NSS1MD1
	.globl _RXOVRN1
	.globl _MODF1
	.globl _WCOL1
	.globl _SPIF1
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES0
	.globl _ET2
	.globl _ESPI0
	.globl _EA
	.globl _RI0
	.globl _TI0
	.globl _RB80
	.globl _TB80
	.globl _REN0
	.globl _MCE0
	.globl _S0MODE
	.globl _CRC0VAL
	.globl _CRC0INIT
	.globl _CRC0SEL
	.globl _IT0
	.globl _IE0
	.globl _IT1
	.globl _IE1
	.globl _TR0
	.globl _TF0
	.globl _TR1
	.globl _TF1
	.globl _PCA0CP4
	.globl _PCA0CP0
	.globl _PCA0
	.globl _PCA0CP3
	.globl _PCA0CP2
	.globl _PCA0CP1
	.globl _PCA0CP5
	.globl _TMR2
	.globl _TMR2RL
	.globl _ADC0LT
	.globl _ADC0GT
	.globl _ADC0
	.globl _TMR3
	.globl _TMR3RL
	.globl _TOFF
	.globl _DP
	.globl _VDM0CN
	.globl _PCA0CPH4
	.globl _PCA0CPL4
	.globl _PCA0CPH0
	.globl _PCA0CPL0
	.globl _PCA0H
	.globl _PCA0L
	.globl _SPI0CN
	.globl _EIP2
	.globl _EIP1
	.globl _SMB0ADM
	.globl _SMB0ADR
	.globl _P2MDIN
	.globl _P1MDIN
	.globl _P0MDIN
	.globl _B
	.globl _RSTSRC
	.globl _PCA0CPH3
	.globl _PCA0CPL3
	.globl _PCA0CPH2
	.globl _PCA0CPL2
	.globl _PCA0CPH1
	.globl _PCA0CPL1
	.globl _ADC0CN
	.globl _EIE2
	.globl _EIE1
	.globl _FLWR
	.globl _IT01CF
	.globl _XBR2
	.globl _XBR1
	.globl _XBR0
	.globl _ACC
	.globl _PCA0PWM
	.globl _PCA0CPM4
	.globl _PCA0CPM3
	.globl _PCA0CPM2
	.globl _PCA0CPM1
	.globl _PCA0CPM0
	.globl _PCA0MD
	.globl _PCA0CN
	.globl _P0MAT
	.globl _P2SKIP
	.globl _P1SKIP
	.globl _P0SKIP
	.globl _PCA0CPH5
	.globl _PCA0CPL5
	.globl _REF0CN
	.globl _PSW
	.globl _P1MAT
	.globl _PCA0CPM5
	.globl _TMR2H
	.globl _TMR2L
	.globl _TMR2RLH
	.globl _TMR2RLL
	.globl _REG0CN
	.globl _TMR2CN
	.globl _P0MASK
	.globl _ADC0LTH
	.globl _ADC0LTL
	.globl _ADC0GTH
	.globl _ADC0GTL
	.globl _SMB0DAT
	.globl _SMB0CF
	.globl _SMB0CN
	.globl _P1MASK
	.globl _ADC0H
	.globl _ADC0L
	.globl _ADC0TK
	.globl _ADC0CF
	.globl _ADC0MX
	.globl _ADC0PWR
	.globl _ADC0AC
	.globl _IREF0CN
	.globl _IP
	.globl _FLKEY
	.globl _FLSCL
	.globl _PMU0CF
	.globl _OSCICL
	.globl _OSCICN
	.globl _OSCXCN
	.globl _SPI1CN
	.globl _ONESHOT
	.globl _EMI0TC
	.globl _RTC0KEY
	.globl _RTC0DAT
	.globl _RTC0ADR
	.globl _EMI0CF
	.globl _EMI0CN
	.globl _CLKSEL
	.globl _IE
	.globl _SFRPAGE
	.globl _P2DRV
	.globl _P2MDOUT
	.globl _P1DRV
	.globl _P1MDOUT
	.globl _P0DRV
	.globl _P0MDOUT
	.globl _SPI0DAT
	.globl _SPI0CKR
	.globl _SPI0CFG
	.globl _P2
	.globl _CPT0MX
	.globl _CPT1MX
	.globl _CPT0MD
	.globl _CPT1MD
	.globl _CPT0CN
	.globl _CPT1CN
	.globl _SBUF0
	.globl _SCON0
	.globl _CRC0CNT
	.globl _DC0CN
	.globl _CRC0AUTO
	.globl _DC0CF
	.globl _TMR3H
	.globl _CRC0FLIP
	.globl _TMR3L
	.globl _CRC0IN
	.globl _TMR3RLH
	.globl _CRC0CN
	.globl _TMR3RLL
	.globl _CRC0DAT
	.globl _TMR3CN
	.globl _P1
	.globl _PSCTL
	.globl _CKCON
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _TOFFH
	.globl _SPI1DAT
	.globl _TOFFL
	.globl _SPI1CKR
	.globl _SPI1CFG
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _remote_statistics
	.globl _statistics
	.globl _errors
	.globl _g_board_bl_version
	.globl _g_board_frequency
	.globl _feature_rtscts
	.globl _feature_mavlink_framing
	.globl _feature_opportunistic_resend
	.globl _feature_golay
	.globl _panic
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_SPI1CFG	=	0x0084
_SPI1CKR	=	0x0085
_TOFFL	=	0x0085
_SPI1DAT	=	0x0086
_TOFFH	=	0x0086
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_CKCON	=	0x008e
_PSCTL	=	0x008f
_P1	=	0x0090
_TMR3CN	=	0x0091
_CRC0DAT	=	0x0091
_TMR3RLL	=	0x0092
_CRC0CN	=	0x0092
_TMR3RLH	=	0x0093
_CRC0IN	=	0x0093
_TMR3L	=	0x0094
_CRC0FLIP	=	0x0095
_TMR3H	=	0x0095
_DC0CF	=	0x0096
_CRC0AUTO	=	0x0096
_DC0CN	=	0x0097
_CRC0CNT	=	0x0097
_SCON0	=	0x0098
_SBUF0	=	0x0099
_CPT1CN	=	0x009a
_CPT0CN	=	0x009b
_CPT1MD	=	0x009c
_CPT0MD	=	0x009d
_CPT1MX	=	0x009e
_CPT0MX	=	0x009f
_P2	=	0x00a0
_SPI0CFG	=	0x00a1
_SPI0CKR	=	0x00a2
_SPI0DAT	=	0x00a3
_P0MDOUT	=	0x00a4
_P0DRV	=	0x00a4
_P1MDOUT	=	0x00a5
_P1DRV	=	0x00a5
_P2MDOUT	=	0x00a6
_P2DRV	=	0x00a6
_SFRPAGE	=	0x00a7
_IE	=	0x00a8
_CLKSEL	=	0x00a9
_EMI0CN	=	0x00aa
_EMI0CF	=	0x00ab
_RTC0ADR	=	0x00ac
_RTC0DAT	=	0x00ad
_RTC0KEY	=	0x00ae
_EMI0TC	=	0x00af
_ONESHOT	=	0x00af
_SPI1CN	=	0x00b0
_OSCXCN	=	0x00b1
_OSCICN	=	0x00b2
_OSCICL	=	0x00b3
_PMU0CF	=	0x00b5
_FLSCL	=	0x00b6
_FLKEY	=	0x00b7
_IP	=	0x00b8
_IREF0CN	=	0x00b9
_ADC0AC	=	0x00ba
_ADC0PWR	=	0x00ba
_ADC0MX	=	0x00bb
_ADC0CF	=	0x00bc
_ADC0TK	=	0x00bd
_ADC0L	=	0x00bd
_ADC0H	=	0x00be
_P1MASK	=	0x00bf
_SMB0CN	=	0x00c0
_SMB0CF	=	0x00c1
_SMB0DAT	=	0x00c2
_ADC0GTL	=	0x00c3
_ADC0GTH	=	0x00c4
_ADC0LTL	=	0x00c5
_ADC0LTH	=	0x00c6
_P0MASK	=	0x00c7
_TMR2CN	=	0x00c8
_REG0CN	=	0x00c9
_TMR2RLL	=	0x00ca
_TMR2RLH	=	0x00cb
_TMR2L	=	0x00cc
_TMR2H	=	0x00cd
_PCA0CPM5	=	0x00ce
_P1MAT	=	0x00cf
_PSW	=	0x00d0
_REF0CN	=	0x00d1
_PCA0CPL5	=	0x00d2
_PCA0CPH5	=	0x00d3
_P0SKIP	=	0x00d4
_P1SKIP	=	0x00d5
_P2SKIP	=	0x00d6
_P0MAT	=	0x00d7
_PCA0CN	=	0x00d8
_PCA0MD	=	0x00d9
_PCA0CPM0	=	0x00da
_PCA0CPM1	=	0x00db
_PCA0CPM2	=	0x00dc
_PCA0CPM3	=	0x00dd
_PCA0CPM4	=	0x00de
_PCA0PWM	=	0x00df
_ACC	=	0x00e0
_XBR0	=	0x00e1
_XBR1	=	0x00e2
_XBR2	=	0x00e3
_IT01CF	=	0x00e4
_FLWR	=	0x00e5
_EIE1	=	0x00e6
_EIE2	=	0x00e7
_ADC0CN	=	0x00e8
_PCA0CPL1	=	0x00e9
_PCA0CPH1	=	0x00ea
_PCA0CPL2	=	0x00eb
_PCA0CPH2	=	0x00ec
_PCA0CPL3	=	0x00ed
_PCA0CPH3	=	0x00ee
_RSTSRC	=	0x00ef
_B	=	0x00f0
_P0MDIN	=	0x00f1
_P1MDIN	=	0x00f2
_P2MDIN	=	0x00f3
_SMB0ADR	=	0x00f4
_SMB0ADM	=	0x00f5
_EIP1	=	0x00f6
_EIP2	=	0x00f7
_SPI0CN	=	0x00f8
_PCA0L	=	0x00f9
_PCA0H	=	0x00fa
_PCA0CPL0	=	0x00fb
_PCA0CPH0	=	0x00fc
_PCA0CPL4	=	0x00fd
_PCA0CPH4	=	0x00fe
_VDM0CN	=	0x00ff
_DP	=	0x8382
_TOFF	=	0x8685
_TMR3RL	=	0x9392
_TMR3	=	0x9594
_ADC0	=	0xbebd
_ADC0GT	=	0xc4c3
_ADC0LT	=	0xc6c5
_TMR2RL	=	0xcbca
_TMR2	=	0xcdcc
_PCA0CP5	=	0xd3d2
_PCA0CP1	=	0xeae9
_PCA0CP2	=	0xeceb
_PCA0CP3	=	0xeeed
_PCA0	=	0xfaf9
_PCA0CP0	=	0xfcfb
_PCA0CP4	=	0xfefd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_TF1	=	0x008f
_TR1	=	0x008e
_TF0	=	0x008d
_TR0	=	0x008c
_IE1	=	0x008b
_IT1	=	0x008a
_IE0	=	0x0089
_IT0	=	0x0088
_CRC0SEL	=	0x0096
_CRC0INIT	=	0x0095
_CRC0VAL	=	0x0094
_S0MODE	=	0x009f
_MCE0	=	0x009d
_REN0	=	0x009c
_TB80	=	0x009b
_RB80	=	0x009a
_TI0	=	0x0099
_RI0	=	0x0098
_EA	=	0x00af
_ESPI0	=	0x00ae
_ET2	=	0x00ad
_ES0	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_SPIF1	=	0x00b7
_WCOL1	=	0x00b6
_MODF1	=	0x00b5
_RXOVRN1	=	0x00b4
_NSS1MD1	=	0x00b3
_NSS1MD0	=	0x00b2
_TXBMT1	=	0x00b1
_SPI1EN	=	0x00b0
_PSPI0	=	0x00be
_PT2	=	0x00bd
_PS0	=	0x00bc
_PT1	=	0x00bb
_PX1	=	0x00ba
_PT0	=	0x00b9
_PX0	=	0x00b8
_MASTER	=	0x00c7
_TXMODE	=	0x00c6
_STA	=	0x00c5
_STO	=	0x00c4
_ACKRQ	=	0x00c3
_ARBLOST	=	0x00c2
_ACK	=	0x00c1
_SI	=	0x00c0
_TF2H	=	0x00cf
_TF2L	=	0x00ce
_TF2LEN	=	0x00cd
_TF2CEN	=	0x00cc
_T2SPLIT	=	0x00cb
_TR2	=	0x00ca
_T2RCLK	=	0x00c9
_T2XCLK	=	0x00c8
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_CF	=	0x00df
_CR	=	0x00de
_CCF5	=	0x00dd
_CCF4	=	0x00dc
_CCF3	=	0x00db
_CCF2	=	0x00da
_CCF1	=	0x00d9
_CCF0	=	0x00d8
_AD0EN	=	0x00ef
_BURSTEN	=	0x00ee
_AD0INT	=	0x00ed
_AD0BUSY	=	0x00ec
_AD0WINT	=	0x00eb
_AD0CM2	=	0x00ea
_AD0CM1	=	0x00e9
_AD0CM0	=	0x00e8
_SPIF0	=	0x00ff
_WCOL0	=	0x00fe
_MODF0	=	0x00fd
_RXOVRN0	=	0x00fc
_NSS0MD1	=	0x00fb
_NSS0MD0	=	0x00fa
_TXBMT0	=	0x00f9
_SPI0EN	=	0x00f8
_LED_RED	=	0x0096
_LED_GREEN	=	0x0095
_PIN_CONFIG	=	0x0082
_PIN_ENABLE	=	0x0083
_IRQ	=	0x0087
_NSS1	=	0x0094
_TDM_SYNC_PIN	=	0x00a6
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_feature_golay::
	.ds 1
_feature_opportunistic_resend::
	.ds 1
_feature_mavlink_framing::
	.ds 1
_feature_rtscts::
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
_g_board_frequency::
	.ds 1
_g_board_bl_version::
	.ds 1
_errors::
	.ds 12
_statistics::
	.ds 4
_remote_statistics::
	.ds 4
_radio_init_freq_min_1_151:
	.ds 4
_radio_init_freq_max_1_151:
	.ds 4
_radio_init_channel_spacing_1_151:
	.ds 4
_radio_init_txpower_1_151:
	.ds 1
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_Receiver_ISR
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_serial_interrupt
	.ds	5
	ljmp	_T2_ISR
	.ds	5
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_T3_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	radio/main.c:97: main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	radio/main.c:102: g_board_frequency = BOARD_FREQUENCY_REG;
	mov	r7,_ADC0GTH
	mov	r0,#_g_board_frequency
	mov	a,r7
	movx	@r0,a
;	radio/main.c:103: g_board_bl_version = BOARD_BL_VERSION_REG;
	mov	r7,_ADC0GTL
	mov	r0,#_g_board_bl_version
	mov	a,r7
	movx	@r0,a
;	radio/main.c:107: param_load();
	lcall	_param_load
;	radio/main.c:110: feature_mavlink_framing = param_get(PARAM_MAVLINK)?true:false;
	mov	dpl,#0x06
	lcall	_param_get
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	add	a,#0xff
	mov	_feature_mavlink_framing,c
;	radio/main.c:111: feature_opportunistic_resend = param_get(PARAM_OPPRESEND)?true:false;
	mov	dpl,#0x07
	lcall	_param_get
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	add	a,#0xff
	mov	_feature_opportunistic_resend,c
;	radio/main.c:112: feature_golay = param_get(PARAM_ECC)?true:false;
	mov	dpl,#0x05
	lcall	_param_get
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	add	a,#0xff
	mov	_feature_golay,c
;	radio/main.c:113: feature_rtscts = param_get(PARAM_RTSCTS)?true:false;
	mov	dpl,#0x0E
	lcall	_param_get
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	add	a,#0xff
	mov	_feature_rtscts,c
;	radio/main.c:116: hardware_init();
	lcall	_hardware_init
;	radio/main.c:119: radio_init();
	lcall	_radio_init
;	radio/main.c:122: if (!radio_receiver_on()) {
	lcall	_radio_receiver_on
	jc	00102$
;	radio/main.c:123: panic("failed to enable receiver");
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_panic
	dec	sp
	dec	sp
	dec	sp
00102$:
;	radio/main.c:126: tdm_serial_loop();
	ljmp	_tdm_serial_loop
;------------------------------------------------------------
;Allocation info for local variables in function 'panic'
;------------------------------------------------------------
;fmt                       Allocated to stack - sp -4
;ap                        Allocated to registers r7 
;------------------------------------------------------------
;	radio/main.c:130: panic(char *fmt, ...)
;	-----------------------------------------
;	 function panic
;	-----------------------------------------
_panic:
;	radio/main.c:134: puts("\n**PANIC**");
	mov	dptr,#__str_1
	mov	b,#0x80
	lcall	_puts
;	radio/main.c:135: va_start(ap, fmt);
	mov	a,sp
	add	a,#0xFC
	mov	r7,a
;	radio/main.c:136: vprintf(fmt, ap);
	push	ar7
	mov	a,sp
	add	a,#0xfb
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	lcall	_vprintfl
	dec	sp
;	radio/main.c:137: puts("");
	mov	dptr,#__str_2
	mov	b,#0x80
	lcall	_puts
;	radio/main.c:139: EA = 1;
	setb	_EA
;	radio/main.c:140: ES0 = 1;
	setb	_ES0
;	radio/main.c:142: delay_msec(1000);
	mov	dptr,#0x03E8
	lcall	_delay_msec
;	radio/main.c:145: RSTSRC |= (1 << 4);
	orl	_RSTSRC,#0x10
00103$:
	sjmp	00103$
;------------------------------------------------------------
;Allocation info for local variables in function 'hardware_init'
;------------------------------------------------------------
;	radio/main.c:151: hardware_init(void)
;	-----------------------------------------
;	 function hardware_init
;	-----------------------------------------
_hardware_init:
;	radio/main.c:156: PCA0MD	&= ~0x40;
	mov	r7,_PCA0MD
	mov	a,#0xBF
	anl	a,r7
	mov	_PCA0MD,a
;	radio/main.c:159: FLSCL	 =  0x40;
	mov	_FLSCL,#0x40
;	radio/main.c:160: OSCICN	 =  0x8F;
	mov	_OSCICN,#0x8F
;	radio/main.c:161: CLKSEL	 =  0x00;
	mov	_CLKSEL,#0x00
;	radio/main.c:164: VDM0CN	 =  0x80;
	mov	_VDM0CN,#0x80
;	radio/main.c:165: for (i = 0; i < 350; i++);	// Wait 100us for initialization
	mov	r6,#0x5E
	mov	r7,#0x01
00104$:
	dec	r6
	cjne	r6,#0xFF,00114$
	dec	r7
00114$:
	mov	a,r6
	orl	a,r7
	jnz	00104$
;	radio/main.c:166: RSTSRC	 =  0x06;		// enable brown out and missing clock reset sources
	mov	_RSTSRC,#0x06
;	radio/main.c:175: P0MDOUT	 =  0x10;		// UART Tx push-pull
	mov	_P0MDOUT,#0x10
;	radio/main.c:176: SFRPAGE	 =  CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
;	radio/main.c:177: P0DRV	 =  0x10;		// UART TX
	mov	_P0DRV,#0x10
;	radio/main.c:178: SFRPAGE	 =  LEGACY_PAGE;
	mov	_SFRPAGE,#0x00
;	radio/main.c:179: XBR0	 =  0x01;		// UART enable
	mov	_XBR0,#0x01
;	radio/main.c:187: XBR1	|= 0x40;	// enable SPI in 3-wire mode
	orl	_XBR1,#0x40
;	radio/main.c:188: P1MDOUT	|= 0xF5;	// SCK1, MOSI1, MISO1 push-pull
	orl	_P1MDOUT,#0xF5
;	radio/main.c:190: SFRPAGE	 = CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
;	radio/main.c:191: P1DRV	|= 0xF5;	// SPI signals use high-current mode, LEDs and PAEN High current drive
	orl	_P1DRV,#0xF5
;	radio/main.c:192: P2DRV	|= 0xFF;	
	mov	a,_P2DRV
	mov	_P2DRV,#0xFF
;	radio/main.c:193: SFRPAGE	 = LEGACY_PAGE;
	mov	_SFRPAGE,#0x00
;	radio/main.c:194: SPI1CFG	 = 0x40;	// master mode
	mov	_SPI1CFG,#0x40
;	radio/main.c:195: SPI1CN	 = 0x00;	// 3 wire master mode
	mov	_SPI1CN,#0x00
;	radio/main.c:196: SPI1CKR	 = 0x00;	// Initialise SPI prescaler to divide-by-2 (12.25MHz, technically out of spec)
	mov	_SPI1CKR,#0x00
;	radio/main.c:197: SPI1CN	|= 0x01;	// enable SPI
	orl	_SPI1CN,#0x01
;	radio/main.c:198: NSS1	 = 1;		// set NSS high
	setb	_NSS1
;	radio/main.c:201: IE0	 = 0;
	clr	_IE0
;	radio/main.c:204: timer_init();
	lcall	_timer_init
;	radio/main.c:207: serial_init(param_get(PARAM_SERIAL_SPEED));
	mov	dpl,#0x01
	lcall	_param_get
	mov	r4,dpl
	mov	dpl,r4
	lcall	_serial_init
;	radio/main.c:210: IP = 0;
	mov	_IP,#0x00
;	radio/main.c:213: EA = 1;
	setb	_EA
;	radio/main.c:216: LED_RADIO = LED_ON;
	setb	_LED_GREEN
;	radio/main.c:217: LED_BOOTLOADER = LED_OFF;
	clr	_LED_RED
;	radio/main.c:220: AD0EN = 1;	// Enable ADC0
	setb	_AD0EN
;	radio/main.c:221: ADC0CF = 0xF9;  // Set amp0gn=1 (1:1)
	mov	_ADC0CF,#0xF9
;	radio/main.c:222: ADC0AC = 0x00;
	mov	_ADC0AC,#0x00
;	radio/main.c:223: ADC0MX = 0x1B;	// Set ADC0MX to temp sensor
	mov	_ADC0MX,#0x1B
;	radio/main.c:224: REF0CN = 0x07;	// Define reference and enable temp sensor
	mov	_REF0CN,#0x07
;	radio/main.c:234: XBR2	 =  0x40;		// Crossbar (GPIO) enable
	mov	_XBR2,#0x40
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radio_init'
;------------------------------------------------------------
;	radio/main.c:238: radio_init(void)
;	-----------------------------------------
;	 function radio_init
;	-----------------------------------------
_radio_init:
;	radio/main.c:245: if (!radio_initialise()) {
	lcall	_radio_initialise
	jc	00102$
;	radio/main.c:246: panic("radio_initialise failed");
	mov	a,#__str_3
	push	acc
	mov	a,#(__str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_panic
	dec	sp
	dec	sp
	dec	sp
00102$:
;	radio/main.c:249: switch (g_board_frequency) {
	mov	r0,#_g_board_frequency
	movx	a,@r0
	cjne	a,#0x43,00193$
	sjmp	00103$
00193$:
	mov	r0,#_g_board_frequency
	movx	a,@r0
	cjne	a,#0x47,00194$
	sjmp	00104$
00194$:
	mov	r0,#_g_board_frequency
	movx	a,@r0
	cjne	a,#0x86,00195$
	sjmp	00105$
00195$:
	mov	r0,#_g_board_frequency
	movx	a,@r0
	cjne	a,#0x91,00196$
	ljmp	00106$
00196$:
	ljmp	00107$
;	radio/main.c:250: case FREQ_433:
00103$:
;	radio/main.c:251: freq_min = 433050000UL;
	mov	r0,#_radio_init_freq_min_1_151
	mov	a,#0x90
	movx	@r0,a
	inc	r0
	mov	a,#0xD1
	movx	@r0,a
	inc	r0
	mov	a,#0xCF
	movx	@r0,a
	inc	r0
	mov	a,#0x19
	movx	@r0,a
;	radio/main.c:252: freq_max = 434790000UL;
	mov	r0,#_radio_init_freq_max_1_151
	mov	a,#0x70
	movx	@r0,a
	inc	r0
	mov	a,#0x5E
	movx	@r0,a
	inc	r0
	mov	a,#0xEA
	movx	@r0,a
	inc	r0
	mov	a,#0x19
	movx	@r0,a
;	radio/main.c:253: txpower = 10;
	mov	r0,#_radio_init_txpower_1_151
	mov	a,#0x0A
	movx	@r0,a
;	radio/main.c:254: num_fh_channels = 10;
	mov	r0,#_num_fh_channels
	mov	a,#0x0A
	movx	@r0,a
;	radio/main.c:255: break;
	ljmp	00108$
;	radio/main.c:256: case FREQ_470:
00104$:
;	radio/main.c:257: freq_min = 470000000UL;
	mov	r0,#_radio_init_freq_min_1_151
	mov	a,#0x80
	movx	@r0,a
	inc	r0
	mov	a,#0xA1
	movx	@r0,a
	inc	r0
	mov	a,#0x03
	movx	@r0,a
	inc	r0
	mov	a,#0x1C
	movx	@r0,a
;	radio/main.c:258: freq_max = 471000000UL;
	mov	r0,#_radio_init_freq_max_1_151
	mov	a,#0xC0
	movx	@r0,a
	inc	r0
	mov	a,#0xE3
	movx	@r0,a
	inc	r0
	mov	a,#0x12
	movx	@r0,a
	inc	r0
	mov	a,#0x1C
	movx	@r0,a
;	radio/main.c:259: txpower = 10;
	mov	r0,#_radio_init_txpower_1_151
	mov	a,#0x0A
	movx	@r0,a
;	radio/main.c:260: num_fh_channels = 10;
	mov	r0,#_num_fh_channels
	mov	a,#0x0A
	movx	@r0,a
;	radio/main.c:261: break;
	ljmp	00108$
;	radio/main.c:262: case FREQ_868:
00105$:
;	radio/main.c:263: freq_min = 868000000UL;
	mov	r0,#_radio_init_freq_min_1_151
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0xA1
	movx	@r0,a
	inc	r0
	mov	a,#0xBC
	movx	@r0,a
	inc	r0
	mov	a,#0x33
	movx	@r0,a
;	radio/main.c:264: freq_max = 869000000UL;
	mov	r0,#_radio_init_freq_max_1_151
	mov	a,#0x40
	movx	@r0,a
	inc	r0
	mov	a,#0xE3
	movx	@r0,a
	inc	r0
	mov	a,#0xCB
	movx	@r0,a
	inc	r0
	mov	a,#0x33
	movx	@r0,a
;	radio/main.c:265: txpower = 10;
	mov	r0,#_radio_init_txpower_1_151
	mov	a,#0x0A
	movx	@r0,a
;	radio/main.c:266: num_fh_channels = 10;
	mov	r0,#_num_fh_channels
	mov	a,#0x0A
	movx	@r0,a
;	radio/main.c:267: break;
;	radio/main.c:268: case FREQ_915:
	sjmp	00108$
00106$:
;	radio/main.c:269: freq_min = 915000000UL;
	mov	r0,#_radio_init_freq_min_1_151
	mov	a,#0xC0
	movx	@r0,a
	inc	r0
	mov	a,#0xCA
	movx	@r0,a
	inc	r0
	mov	a,#0x89
	movx	@r0,a
	inc	r0
	mov	a,#0x36
	movx	@r0,a
;	radio/main.c:270: freq_max = 928000000UL;
	mov	r0,#_radio_init_freq_max_1_151
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x28
	movx	@r0,a
	inc	r0
	mov	a,#0x50
	movx	@r0,a
	inc	r0
	mov	a,#0x37
	movx	@r0,a
;	radio/main.c:271: txpower = 20;
	mov	r0,#_radio_init_txpower_1_151
	mov	a,#0x14
	movx	@r0,a
;	radio/main.c:272: num_fh_channels = MAX_FREQ_CHANNELS;
	mov	r0,#_num_fh_channels
	mov	a,#0x32
	movx	@r0,a
;	radio/main.c:273: break;
;	radio/main.c:274: default:
	sjmp	00108$
00107$:
;	radio/main.c:275: freq_min = 0;
	mov	r0,#_radio_init_freq_min_1_151
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
;	radio/main.c:276: freq_max = 0;
	mov	r0,#_radio_init_freq_max_1_151
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
;	radio/main.c:277: txpower = 0;
	mov	r0,#_radio_init_txpower_1_151
	clr	a
	movx	@r0,a
;	radio/main.c:278: panic("bad board frequency %d", g_board_frequency);
	mov	r0,#_g_board_frequency
	movx	a,@r0
	mov	r2,a
	mov	r3,#0x00
	push	ar2
	push	ar3
	mov	a,#__str_4
	push	acc
	mov	a,#(__str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_panic
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	radio/main.c:280: }
00108$:
;	radio/main.c:282: if (param_get(PARAM_NUM_CHANNELS) != 0) {
	mov	dpl,#0x0A
	lcall	_param_get
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,r2
	orl	a,r3
	orl	a,r6
	orl	a,r7
	jz	00110$
;	radio/main.c:283: num_fh_channels = param_get(PARAM_NUM_CHANNELS);
	mov	dpl,#0x0A
	lcall	_param_get
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,#_num_fh_channels
	mov	a,r4
	movx	@r0,a
00110$:
;	radio/main.c:285: if (param_get(PARAM_MIN_FREQ) != 0) {
	mov	dpl,#0x08
	lcall	_param_get
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00112$
;	radio/main.c:286: freq_min        = param_get(PARAM_MIN_FREQ) * 1000UL;
	mov	dpl,#0x08
	lcall	_param_get
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#__mullong_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x03E8
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r0,#_radio_init_freq_min_1_151
	push	acc
	mov	a,dpl
	movx	@r0,a
	inc	r0
	mov	a,dph
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
00112$:
;	radio/main.c:288: if (param_get(PARAM_MAX_FREQ) != 0) {
	mov	dpl,#0x09
	lcall	_param_get
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00114$
;	radio/main.c:289: freq_max        = param_get(PARAM_MAX_FREQ) * 1000UL;
	mov	dpl,#0x09
	lcall	_param_get
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#__mullong_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x03E8
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r0,#_radio_init_freq_max_1_151
	push	acc
	mov	a,dpl
	movx	@r0,a
	inc	r0
	mov	a,dph
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
00114$:
;	radio/main.c:291: if (param_get(PARAM_TXPOWER) != 0) {
	mov	dpl,#0x04
	lcall	_param_get
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00116$
;	radio/main.c:292: txpower = param_get(PARAM_TXPOWER);
	mov	dpl,#0x04
	lcall	_param_get
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,#_radio_init_txpower_1_151
	mov	a,r4
	movx	@r0,a
00116$:
;	radio/main.c:296: txpower = constrain(txpower, BOARD_MINTXPOWER, BOARD_MAXTXPOWER);
	mov	r0,#_radio_init_txpower_1_151
	movx	a,@r0
	mov	r3,a
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r0,#_constrain_PARM_2
	mov	a,#0x11
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#_constrain_PARM_3
	mov	a,#0x1E
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	dpl,r3
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_constrain
	mov	r4,dpl
	mov	r0,#_radio_init_txpower_1_151
	mov	a,r4
	movx	@r0,a
;	radio/main.c:297: num_fh_channels = constrain(num_fh_channels, 1, MAX_FREQ_CHANNELS);
	mov	r0,#_num_fh_channels
	movx	a,@r0
	mov	r4,a
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	r0,#_constrain_PARM_2
	mov	a,#0x01
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#_constrain_PARM_3
	mov	a,#0x32
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_constrain
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,#_num_fh_channels
	mov	a,r4
	movx	@r0,a
;	radio/main.c:300: switch (g_board_frequency) {
	mov	r0,#_g_board_frequency
	movx	a,@r0
	cjne	a,#0x43,00201$
	sjmp	00117$
00201$:
	mov	r0,#_g_board_frequency
	movx	a,@r0
	cjne	a,#0x47,00202$
	ljmp	00118$
00202$:
	mov	r0,#_g_board_frequency
	movx	a,@r0
	cjne	a,#0x86,00203$
	ljmp	00119$
00203$:
	mov	r0,#_g_board_frequency
	movx	a,@r0
	cjne	a,#0x91,00204$
	ljmp	00120$
00204$:
	ljmp	00121$
;	radio/main.c:301: case FREQ_433:
00117$:
;	radio/main.c:302: freq_min = constrain(freq_min, 414000000UL, 460000000UL);
	mov	r0,#_constrain_PARM_2
	mov	a,#0x80
	movx	@r0,a
	inc	r0
	mov	a,#0x23
	movx	@r0,a
	inc	r0
	mov	a,#0xAD
	movx	@r0,a
	inc	r0
	mov	a,#0x18
	movx	@r0,a
	mov	r0,#_constrain_PARM_3
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x0B
	movx	@r0,a
	inc	r0
	mov	a,#0x6B
	movx	@r0,a
	inc	r0
	mov	a,#0x1B
	movx	@r0,a
	mov	r0,#_radio_init_freq_min_1_151
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	_constrain
	mov	r0,#_radio_init_freq_min_1_151
	push	acc
	mov	a,dpl
	movx	@r0,a
	inc	r0
	mov	a,dph
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
;	radio/main.c:303: freq_max = constrain(freq_max, 414000000UL, 460000000UL);
	mov	r0,#_constrain_PARM_2
	mov	a,#0x80
	movx	@r0,a
	inc	r0
	mov	a,#0x23
	movx	@r0,a
	inc	r0
	mov	a,#0xAD
	movx	@r0,a
	inc	r0
	mov	a,#0x18
	movx	@r0,a
	mov	r0,#_constrain_PARM_3
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0x0B
	movx	@r0,a
	inc	r0
	mov	a,#0x6B
	movx	@r0,a
	inc	r0
	mov	a,#0x1B
	movx	@r0,a
	mov	r0,#_radio_init_freq_max_1_151
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	_constrain
	mov	r0,#_radio_init_freq_max_1_151
	push	acc
	mov	a,dpl
	movx	@r0,a
	inc	r0
	mov	a,dph
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
;	radio/main.c:304: break;
	ljmp	00122$
;	radio/main.c:305: case FREQ_470:
00118$:
;	radio/main.c:306: freq_min = constrain(freq_min, 450000000UL, 490000000UL);
	mov	r0,#_constrain_PARM_2
	mov	a,#0x80
	movx	@r0,a
	inc	r0
	mov	a,#0x74
	movx	@r0,a
	inc	r0
	mov	a,#0xD2
	movx	@r0,a
	inc	r0
	mov	a,#0x1A
	movx	@r0,a
	mov	r0,#_constrain_PARM_3
	mov	a,#0x80
	movx	@r0,a
	inc	r0
	mov	a,#0xCE
	movx	@r0,a
	inc	r0
	mov	a,#0x34
	movx	@r0,a
	inc	r0
	mov	a,#0x1D
	movx	@r0,a
	mov	r0,#_radio_init_freq_min_1_151
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	_constrain
	mov	r0,#_radio_init_freq_min_1_151
	push	acc
	mov	a,dpl
	movx	@r0,a
	inc	r0
	mov	a,dph
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
;	radio/main.c:307: freq_max = constrain(freq_max, 450000000UL, 490000000UL);
	mov	r0,#_constrain_PARM_2
	mov	a,#0x80
	movx	@r0,a
	inc	r0
	mov	a,#0x74
	movx	@r0,a
	inc	r0
	mov	a,#0xD2
	movx	@r0,a
	inc	r0
	mov	a,#0x1A
	movx	@r0,a
	mov	r0,#_constrain_PARM_3
	mov	a,#0x80
	movx	@r0,a
	inc	r0
	mov	a,#0xCE
	movx	@r0,a
	inc	r0
	mov	a,#0x34
	movx	@r0,a
	inc	r0
	mov	a,#0x1D
	movx	@r0,a
	mov	r0,#_radio_init_freq_max_1_151
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	_constrain
	mov	r0,#_radio_init_freq_max_1_151
	push	acc
	mov	a,dpl
	movx	@r0,a
	inc	r0
	mov	a,dph
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
;	radio/main.c:308: break;
	ljmp	00122$
;	radio/main.c:309: case FREQ_868:
00119$:
;	radio/main.c:310: freq_min = constrain(freq_min, 849000000UL, 889000000UL);
	mov	r0,#_constrain_PARM_2
	mov	a,#0x40
	movx	@r0,a
	inc	r0
	mov	a,#0xB6
	movx	@r0,a
	inc	r0
	mov	a,#0x9A
	movx	@r0,a
	inc	r0
	mov	a,#0x32
	movx	@r0,a
	mov	r0,#_constrain_PARM_3
	mov	a,#0x40
	movx	@r0,a
	inc	r0
	mov	a,#0x10
	movx	@r0,a
	inc	r0
	mov	a,#0xFD
	movx	@r0,a
	inc	r0
	mov	a,#0x34
	movx	@r0,a
	mov	r0,#_radio_init_freq_min_1_151
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	_constrain
	mov	r0,#_radio_init_freq_min_1_151
	push	acc
	mov	a,dpl
	movx	@r0,a
	inc	r0
	mov	a,dph
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
;	radio/main.c:311: freq_max = constrain(freq_max, 849000000UL, 889000000UL);
	mov	r0,#_constrain_PARM_2
	mov	a,#0x40
	movx	@r0,a
	inc	r0
	mov	a,#0xB6
	movx	@r0,a
	inc	r0
	mov	a,#0x9A
	movx	@r0,a
	inc	r0
	mov	a,#0x32
	movx	@r0,a
	mov	r0,#_constrain_PARM_3
	mov	a,#0x40
	movx	@r0,a
	inc	r0
	mov	a,#0x10
	movx	@r0,a
	inc	r0
	mov	a,#0xFD
	movx	@r0,a
	inc	r0
	mov	a,#0x34
	movx	@r0,a
	mov	r0,#_radio_init_freq_max_1_151
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	_constrain
	mov	r0,#_radio_init_freq_max_1_151
	push	acc
	mov	a,dpl
	movx	@r0,a
	inc	r0
	mov	a,dph
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
;	radio/main.c:312: break;
	ljmp	00122$
;	radio/main.c:313: case FREQ_915:
00120$:
;	radio/main.c:314: freq_min = constrain(freq_min, 868000000UL, 935000000UL);
	mov	r0,#_constrain_PARM_2
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0xA1
	movx	@r0,a
	inc	r0
	mov	a,#0xBC
	movx	@r0,a
	inc	r0
	mov	a,#0x33
	movx	@r0,a
	mov	r0,#_constrain_PARM_3
	mov	a,#0xC0
	movx	@r0,a
	inc	r0
	mov	a,#0xF7
	movx	@r0,a
	inc	r0
	mov	a,#0xBA
	movx	@r0,a
	inc	r0
	mov	a,#0x37
	movx	@r0,a
	mov	r0,#_radio_init_freq_min_1_151
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	_constrain
	mov	r0,#_radio_init_freq_min_1_151
	push	acc
	mov	a,dpl
	movx	@r0,a
	inc	r0
	mov	a,dph
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
;	radio/main.c:315: freq_max = constrain(freq_max, 868000000UL, 935000000UL);
	mov	r0,#_constrain_PARM_2
	clr	a
	movx	@r0,a
	inc	r0
	mov	a,#0xA1
	movx	@r0,a
	inc	r0
	mov	a,#0xBC
	movx	@r0,a
	inc	r0
	mov	a,#0x33
	movx	@r0,a
	mov	r0,#_constrain_PARM_3
	mov	a,#0xC0
	movx	@r0,a
	inc	r0
	mov	a,#0xF7
	movx	@r0,a
	inc	r0
	mov	a,#0xBA
	movx	@r0,a
	inc	r0
	mov	a,#0x37
	movx	@r0,a
	mov	r0,#_radio_init_freq_max_1_151
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	_constrain
	mov	r0,#_radio_init_freq_max_1_151
	push	acc
	mov	a,dpl
	movx	@r0,a
	inc	r0
	mov	a,dph
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
;	radio/main.c:316: break;
;	radio/main.c:317: default:
	sjmp	00122$
00121$:
;	radio/main.c:318: panic("bad board frequency %d", g_board_frequency);
	mov	r0,#_g_board_frequency
	movx	a,@r0
	mov	r6,a
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	a,#__str_4
	push	acc
	mov	a,#(__str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_panic
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	radio/main.c:320: }
00122$:
;	radio/main.c:322: if (freq_max == freq_min) {
	mov	r0,#_radio_init_freq_max_1_151
	mov	r1,#_radio_init_freq_min_1_151
	movx	a,@r0
	mov	b,a
	movx	a,@r1
	cjne	a,b,00205$
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r1
	movx	a,@r1
	cjne	a,b,00205$
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r1
	movx	a,@r1
	cjne	a,b,00205$
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r1
	movx	a,@r1
	cjne	a,b,00205$
	sjmp	00206$
00205$:
	sjmp	00124$
00206$:
;	radio/main.c:323: freq_max = freq_min + 1000000UL;
	mov	r0,#_radio_init_freq_min_1_151
	mov	r1,#_radio_init_freq_max_1_151
	movx	a,@r0
	add	a,#0x40
	movx	@r1,a
	inc	r0
	movx	a,@r0
	addc	a,#0x42
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	addc	a,#0x0F
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	inc	r1
	movx	@r1,a
00124$:
;	radio/main.c:327: duty_cycle = param_get(PARAM_DUTY_CYCLE);
	mov	dpl,#0x0B
	lcall	_param_get
	mov	r4,dpl
	mov	r0,#_duty_cycle
	mov	a,r4
	movx	@r0,a
;	radio/main.c:328: duty_cycle = constrain(duty_cycle, 0, 100);
	mov	r7,#0x00
	mov	r6,#0x00
	mov	r5,#0x00
	mov	r0,#_constrain_PARM_2
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#_constrain_PARM_3
	mov	a,#0x64
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	dpl,r4
	mov	dph,r7
	mov	b,r6
	mov	a,r5
	lcall	_constrain
	mov	r4,dpl
	mov	r0,#_duty_cycle
	mov	a,r4
	movx	@r0,a
;	radio/main.c:329: param_set(PARAM_DUTY_CYCLE, duty_cycle);
	mov	r0,#_param_set_PARM_2
	mov	a,r4
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	dpl,#0x0B
	lcall	_param_set
;	radio/main.c:332: lbt_rssi = param_get(PARAM_LBT_RSSI);
	mov	dpl,#0x0C
	lcall	_param_get
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,#_lbt_rssi
	mov	a,r4
	movx	@r0,a
;	radio/main.c:333: if (lbt_rssi != 0) {
	mov	a,r4
	jz	00126$
;	radio/main.c:335: lbt_rssi = constrain(lbt_rssi, 25, 220);
	mov	r7,#0x00
	mov	r6,#0x00
	mov	r5,#0x00
	mov	r0,#_constrain_PARM_2
	mov	a,#0x19
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#_constrain_PARM_3
	mov	a,#0xDC
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	dpl,r4
	mov	dph,r7
	mov	b,r6
	mov	a,r5
	lcall	_constrain
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,#_lbt_rssi
	mov	a,r4
	movx	@r0,a
00126$:
;	radio/main.c:337: param_set(PARAM_LBT_RSSI, lbt_rssi);
	mov	r0,#_lbt_rssi
	mov	r1,#_param_set_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r1
	clr	a
	movx	@r1,a
	inc	r1
	movx	@r1,a
	inc	r1
	movx	@r1,a
	mov	dpl,#0x0C
	lcall	_param_set
;	radio/main.c:340: param_set(PARAM_MIN_FREQ, freq_min/1000);
	mov	dptr,#__divulong_PARM_2
	mov	a,#0xE8
	movx	@dptr,a
	mov	a,#0x03
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	r0,#_radio_init_freq_min_1_151
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,#_param_set_PARM_2
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	mov	dpl,#0x08
	lcall	_param_set
;	radio/main.c:341: param_set(PARAM_MAX_FREQ, freq_max/1000);
	mov	dptr,#__divulong_PARM_2
	mov	a,#0xE8
	movx	@dptr,a
	mov	a,#0x03
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	r0,#_radio_init_freq_max_1_151
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,#_param_set_PARM_2
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	mov	dpl,#0x09
	lcall	_param_set
;	radio/main.c:342: param_set(PARAM_NUM_CHANNELS, num_fh_channels);
	mov	r0,#_num_fh_channels
	mov	r1,#_param_set_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r1
	clr	a
	movx	@r1,a
	inc	r1
	movx	@r1,a
	inc	r1
	movx	@r1,a
	mov	dpl,#0x0A
	lcall	_param_set
;	radio/main.c:344: channel_spacing = (freq_max - freq_min) / (num_fh_channels+2);
	mov	r0,#_radio_init_freq_max_1_151
	mov	r1,#_radio_init_freq_min_1_151
	movx	a,@r1
	mov	b,a
	clr	c
	movx	a,@r0
	subb	a,b
	mov	r4,a
	inc	r1
	movx	a,@r1
	mov	b,a
	inc	r0
	movx	a,@r0
	subb	a,b
	mov	r5,a
	inc	r1
	movx	a,@r1
	mov	b,a
	inc	r0
	movx	a,@r0
	subb	a,b
	mov	r6,a
	inc	r1
	movx	a,@r1
	mov	b,a
	inc	r0
	movx	a,@r0
	subb	a,b
	mov	r7,a
	mov	r0,#_num_fh_channels
	movx	a,@r0
	mov	r2,a
	mov	r3,#0x00
	mov	a,#0x02
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	dptr,#__divulong_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	rlc	a
	subb	a,acc
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__divulong
	mov	r0,#_radio_init_channel_spacing_1_151
	push	acc
	mov	a,dpl
	movx	@r0,a
	inc	r0
	mov	a,dph
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
;	radio/main.c:348: freq_min += channel_spacing/2;
	mov	r0,#(_radio_init_channel_spacing_1_151 + 3)
	movx	a,@r0
	clr	c
	rrc	a
	mov	r7,a
	dec	r0
	movx	a,@r0
	rrc	a
	mov	r6,a
	dec	r0
	movx	a,@r0
	rrc	a
	mov	r3,a
	dec	r0
	movx	a,@r0
	rrc	a
	mov	r2,a
	mov	r0,#_radio_init_freq_min_1_151
	movx	a,@r0
	add	a,r2
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r3
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r6
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r7
	movx	@r0,a
;	radio/main.c:353: srand(param_get(PARAM_NETID));
	mov	dpl,#0x03
	lcall	_param_get
	lcall	_srand
;	radio/main.c:354: if (num_fh_channels > 5) {
	mov	r0,#_num_fh_channels
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,#0x05
	subb	a,b
	jnc	00128$
;	radio/main.c:355: freq_min += ((unsigned long)(rand()*625)) % channel_spacing;
	lcall	_rand
	mov	r6,dpl
	mov	r7,dph
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0271
	lcall	__mulint
	mov	r6,dpl
	mov	a,dph
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	r4,a
	mov	r0,#_radio_init_channel_spacing_1_151
	mov	dptr,#__modulong_PARM_2
	movx	a,@r0
	movx	@dptr,a
	inc	r0
	movx	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	movx	a,@r0
	inc	dptr
	movx	@dptr,a
	inc	r0
	movx	a,@r0
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	mov	a,r4
	lcall	__modulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,#_radio_init_freq_min_1_151
	movx	a,@r0
	add	a,r4
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r5
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r6
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r7
	movx	@r0,a
00128$:
;	radio/main.c:363: radio_set_frequency(freq_min);
	mov	r0,#_radio_init_freq_min_1_151
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	_radio_set_frequency
;	radio/main.c:366: radio_set_channel_spacing(channel_spacing);
	mov	r0,#_radio_init_channel_spacing_1_151
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	lcall	_radio_set_channel_spacing
;	radio/main.c:369: radio_set_channel(param_get(PARAM_NETID) % num_fh_channels);
	mov	dpl,#0x03
	lcall	_param_get
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,#_num_fh_channels
	mov	dptr,#__modulong_PARM_2
	movx	a,@r0
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__modulong
	mov	r4,dpl
	mov	dpl,r4
	lcall	_radio_set_channel
;	radio/main.c:372: if (!radio_configure(param_get(PARAM_AIR_SPEED)) &&
	mov	dpl,#0x02
	lcall	_param_get
	mov	r4,dpl
	mov	dpl,r4
	lcall	_radio_configure
	jc	00130$
;	radio/main.c:373: !radio_configure(param_get(PARAM_AIR_SPEED)) &&
	mov	dpl,#0x02
	lcall	_param_get
	mov	r4,dpl
	mov	dpl,r4
	lcall	_radio_configure
	jc	00130$
;	radio/main.c:374: !radio_configure(param_get(PARAM_AIR_SPEED))) {
	mov	dpl,#0x02
	lcall	_param_get
	mov	r4,dpl
	mov	dpl,r4
	lcall	_radio_configure
	jc	00130$
;	radio/main.c:375: panic("radio_configure failed");
	mov	a,#__str_5
	push	acc
	mov	a,#(__str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_panic
	dec	sp
	dec	sp
	dec	sp
00130$:
;	radio/main.c:379: param_set(PARAM_AIR_SPEED, radio_air_rate());
	lcall	_radio_air_rate
	mov	r7,dpl
	mov	r0,#_param_set_PARM_2
	mov	a,r7
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	dpl,#0x02
	lcall	_param_set
;	radio/main.c:382: radio_set_network_id(param_get(PARAM_NETID));
	mov	dpl,#0x03
	lcall	_param_get
	lcall	_radio_set_network_id
;	radio/main.c:385: radio_set_transmit_power(txpower);
	mov	r0,#_radio_init_txpower_1_151
	movx	a,@r0
	mov	dpl,a
	lcall	_radio_set_transmit_power
;	radio/main.c:388: param_set(PARAM_TXPOWER, radio_get_transmit_power());
	lcall	_radio_get_transmit_power
	mov	r7,dpl
	mov	r0,#_param_set_PARM_2
	mov	a,r7
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	dpl,#0x04
	lcall	_param_set
;	radio/main.c:396: fhop_init(param_get(PARAM_NETID));
	mov	dpl,#0x03
	lcall	_param_get
	lcall	_fhop_init
;	radio/main.c:399: tdm_init();
	ljmp	_tdm_init
	.area CSEG    (CODE)
	.area CONST   (CODE)
_g_banner_string:
	.ascii "SiK 1.7 on RFD900"
	.db 0x00
_g_version_string:
	.ascii "1.7"
	.db 0x00
__str_0:
	.ascii "failed to enable receiver"
	.db 0x00
__str_1:
	.db 0x0A
	.ascii "**PANIC**"
	.db 0x00
__str_2:
	.db 0x00
__str_3:
	.ascii "radio_initialise failed"
	.db 0x00
__str_4:
	.ascii "bad board frequency %d"
	.db 0x00
__str_5:
	.ascii "radio_configure failed"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
