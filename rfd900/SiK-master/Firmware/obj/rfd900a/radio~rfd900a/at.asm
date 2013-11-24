;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.0 #8604 (May 11 2013) (Linux)
; This file was generated Sun Nov 24 17:43:08 2013
;--------------------------------------------------------
	.module at
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tdm_show_rssi
	.globl _tdm_change_phase
	.globl _tdm_remote_at
	.globl _tdm_report_timing
	.globl _radio_set_diversity
	.globl _printfl
	.globl _calibration_lock
	.globl _calibration_get
	.globl _calibration_set
	.globl _param_default
	.globl _param_save
	.globl _param_name
	.globl _param_get
	.globl _param_set
	.globl _strcmp
	.globl _putchar
	.globl _isprint
	.globl _islower
	.globl _isdigit
	.globl _TDM_SYNC_PIN
	.globl _NSS1
	.globl _IRQ
	.globl _PA_ENABLE
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
	.globl _idx
	.globl _at_testmode
	.globl _at_cmd_len
	.globl _at_cmd
	.globl _pdata_canary
	.globl _at_cmd_ready
	.globl _at_mode_active
	.globl _at_input
	.globl _at_plus_detector
	.globl _at_timer
	.globl _at_command
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
_PA_ENABLE	=	0x00a5
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
_at_i_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
_at_mode_active::
	.ds 1
_at_cmd_ready::
	.ds 1
_at_plus_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
_pdata_canary::
	.ds 1
_at_cmd::
	.ds 17
_at_cmd_len::
	.ds 1
_at_testmode::
	.ds 1
_at_plus_state:
	.ds 1
_at_plus_counter:
	.ds 1
_idx::
	.ds 1
_at_plus_val_1_176:
	.ds 4
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_at_ampersand_x_3_170:
	.ds 1
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;	radio/at.c:42: __pdata uint8_t pdata_canary = 0x41;
	mov	r0,#_pdata_canary
	mov	a,#0x41
	movx	@r0,a
;	radio/at.c:133: static __pdata uint8_t	at_plus_counter = ATP_COUNT_1S;
	mov	r0,#_at_plus_counter
	mov	a,#0x64
	movx	@r0,a
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'at_input'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	radio/at.c:66: at_input(register uint8_t c)
;	-----------------------------------------
;	 function at_input
;	-----------------------------------------
_at_input:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	radio/at.c:69: switch (c) {
	mov	ar6,r7
	cjne	r6,#0x08,00137$
	sjmp	00103$
00137$:
	cjne	r6,#0x0D,00138$
	sjmp	00101$
00138$:
;	radio/at.c:71: case '\r':
	cjne	r6,#0x7F,00106$
	sjmp	00103$
00101$:
;	radio/at.c:72: putchar('\n');
	mov	dpl,#0x0A
	lcall	_putchar
;	radio/at.c:73: at_cmd[at_cmd_len] = 0;
	mov	r0,#_at_cmd_len
	movx	a,@r0
	add	a,#_at_cmd
	mov	r0,a
	clr	a
	movx	@r0,a
;	radio/at.c:74: at_cmd_ready = true;
	setb	_at_cmd_ready
;	radio/at.c:75: break;
;	radio/at.c:80: case '\x7f':
	ret
00103$:
;	radio/at.c:81: if (at_cmd_len > 0) {
	mov	r0,#_at_cmd_len
	movx	a,@r0
	jz	00112$
;	radio/at.c:82: putchar('\b');
	mov	dpl,#0x08
	lcall	_putchar
;	radio/at.c:83: putchar(' ');
	mov	dpl,#0x20
	lcall	_putchar
;	radio/at.c:84: putchar('\b');
	mov	dpl,#0x08
	lcall	_putchar
;	radio/at.c:85: at_cmd_len--;
	mov	r0,#_at_cmd_len
	movx	a,@r0
	dec	a
	movx	@r0,a
;	radio/at.c:87: break;
;	radio/at.c:90: default:
	ret
00106$:
;	radio/at.c:91: if (at_cmd_len < AT_CMD_MAXLEN) {
	mov	r0,#_at_cmd_len
	movx	a,@r0
	cjne	a,#0x10,00141$
00141$:
	jnc	00110$
;	radio/at.c:92: if (isprint(c)) {
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_isprint
	mov	a,dpl
	pop	ar6
	pop	ar7
	jz	00112$
;	radio/at.c:93: c = toupper(c);
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_islower
	mov	a,dpl
	pop	ar6
	pop	ar7
	jz	00114$
	anl	ar6,#0xDF
	sjmp	00115$
00114$:
	mov	ar6,r7
00115$:
	mov	ar7,r6
;	radio/at.c:94: at_cmd[at_cmd_len++] = c;
	mov	r0,#_at_cmd_len
	movx	a,@r0
	mov	r6,a
	mov	r0,#_at_cmd_len
	inc	a
	movx	@r0,a
	mov	a,r6
	add	a,#_at_cmd
	mov	r0,a
	mov	a,r7
	movx	@r0,a
;	radio/at.c:95: putchar(c);
	mov	dpl,r7
;	radio/at.c:97: break;
	ljmp	_putchar
00110$:
;	radio/at.c:105: at_mode_active = 0;
	clr	_at_mode_active
;	radio/at.c:106: at_cmd_len = 0;
	mov	r0,#_at_cmd_len
	clr	a
	movx	@r0,a
;	radio/at.c:108: }
00112$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'at_plus_detector'
;------------------------------------------------------------
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	radio/at.c:138: at_plus_detector(register uint8_t c)
;	-----------------------------------------
;	 function at_plus_detector
;	-----------------------------------------
_at_plus_detector:
	mov	r7,dpl
;	radio/at.c:144: if (c != (uint8_t)'+')
	cjne	r7,#0x2B,00118$
	sjmp	00102$
00118$:
;	radio/at.c:145: at_plus_state = ATP_WAIT_FOR_IDLE;
	mov	r0,#_at_plus_state
	clr	a
	movx	@r0,a
00102$:
;	radio/at.c:149: switch (at_plus_state) {
	mov	r0,#_at_plus_state
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,#0x04
	subb	a,b
	jc	00106$
	mov	r0,#_at_plus_state
	movx	a,@r0
	mov	b,#0x03
	mul	ab
	mov	dptr,#00120$
	jmp	@a+dptr
00120$:
	ljmp	00107$
	ljmp	00103$
	ljmp	00104$
	ljmp	00105$
	ljmp	00108$
;	radio/at.c:151: case ATP_WAIT_FOR_PLUS1:
00103$:
;	radio/at.c:152: case ATP_WAIT_FOR_PLUS2:
00104$:
;	radio/at.c:153: at_plus_state++;
	mov	r0,#_at_plus_state
	movx	a,@r0
	add	a,#0x01
	movx	@r0,a
;	radio/at.c:154: break;
;	radio/at.c:156: case ATP_WAIT_FOR_PLUS3:
	ret
00105$:
;	radio/at.c:157: at_plus_state = ATP_WAIT_FOR_ENABLE;
	mov	r0,#_at_plus_state
	mov	a,#0x04
	movx	@r0,a
;	radio/at.c:158: at_plus_counter = ATP_COUNT_1S;
	mov	r0,#_at_plus_counter
	mov	a,#0x64
	movx	@r0,a
;	radio/at.c:159: break;
;	radio/at.c:161: default:
	ret
00106$:
;	radio/at.c:162: at_plus_state = ATP_WAIT_FOR_IDLE;
	mov	r0,#_at_plus_state
	clr	a
	movx	@r0,a
;	radio/at.c:164: case ATP_WAIT_FOR_IDLE:
00107$:
;	radio/at.c:165: case ATP_WAIT_FOR_ENABLE:
00108$:
;	radio/at.c:166: at_plus_counter = ATP_COUNT_1S;
	mov	r0,#_at_plus_counter
	mov	a,#0x64
	movx	@r0,a
;	radio/at.c:168: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'at_timer'
;------------------------------------------------------------
;	radio/at.c:175: at_timer(void)
;	-----------------------------------------
;	 function at_timer
;	-----------------------------------------
_at_timer:
;	radio/at.c:178: if (at_plus_counter > 0) {
	mov	r0,#_at_plus_counter
	movx	a,@r0
	jz	00109$
;	radio/at.c:181: if (--at_plus_counter == 0) {
	mov	r0,#_at_plus_counter
	movx	a,@r0
	dec	a
	movx	@r0,a
	mov	r0,#_at_plus_counter
	movx	a,@r0
	jnz	00109$
;	radio/at.c:184: switch (at_plus_state) {
	mov	r0,#_at_plus_state
	movx	a,@r0
	jz	00101$
	mov	r0,#_at_plus_state
	movx	a,@r0
;	radio/at.c:185: case ATP_WAIT_FOR_IDLE:
	cjne	a,#0x04,00109$
	sjmp	00102$
00101$:
;	radio/at.c:186: at_plus_state = ATP_WAIT_FOR_PLUS1;
	mov	r0,#_at_plus_state
	mov	a,#0x01
	movx	@r0,a
;	radio/at.c:187: break;
;	radio/at.c:189: case ATP_WAIT_FOR_ENABLE:
	ret
00102$:
;	radio/at.c:190: at_mode_active = true;
	setb	_at_mode_active
;	radio/at.c:191: at_plus_state = ATP_WAIT_FOR_IDLE;
	mov	r0,#_at_plus_state
	clr	a
	movx	@r0,a
;	radio/at.c:194: at_cmd[0] = 'A';
	mov	r0,#_at_cmd
	mov	a,#0x41
	movx	@r0,a
;	radio/at.c:195: at_cmd[1] = 'T';
	mov	r0,#(_at_cmd + 0x0001)
	mov	a,#0x54
	movx	@r0,a
;	radio/at.c:196: at_cmd[2] = '\0';
	mov	r0,#(_at_cmd + 0x0002)
	clr	a
	movx	@r0,a
;	radio/at.c:197: at_cmd_len = 2;
	mov	r0,#_at_cmd_len
	mov	a,#0x02
	movx	@r0,a
;	radio/at.c:198: at_cmd_ready = true;
	setb	_at_cmd_ready
;	radio/at.c:202: }
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'at_command'
;------------------------------------------------------------
;	radio/at.c:209: at_command(void)
;	-----------------------------------------
;	 function at_command
;	-----------------------------------------
_at_command:
;	radio/at.c:212: if (at_cmd_ready) {
	jb	_at_cmd_ready,00170$
	ret
00170$:
;	radio/at.c:213: if ((at_cmd_len >= 2) && (at_cmd[0] == 'R') && (at_cmd[1] == 'T')) {
	mov	r0,#_at_cmd_len
	movx	a,@r0
	cjne	a,#0x02,00171$
00171$:
	clr	a
	rlc	a
	mov	r7,a
	jnz	00102$
	mov	r0,#_at_cmd
	movx	a,@r0
	mov	r6,a
	cjne	r6,#0x52,00102$
	mov	r0,#(_at_cmd + 0x0001)
	movx	a,@r0
	mov	r6,a
	cjne	r6,#0x54,00102$
;	radio/at.c:216: tdm_remote_at();
	lcall	_tdm_remote_at
;	radio/at.c:217: at_cmd_len = 0;
	mov	r0,#_at_cmd_len
	clr	a
	movx	@r0,a
;	radio/at.c:218: at_cmd_ready = false;
	clr	_at_cmd_ready
;	radio/at.c:219: return;
	ret
00102$:
;	radio/at.c:222: if ((at_cmd_len >= 2) && (at_cmd[0] == 'A') && (at_cmd[1] == 'T')) {
	mov	a,r7
	jnz	00116$
	mov	r0,#_at_cmd
	movx	a,@r0
	mov	r7,a
	cjne	r7,#0x41,00116$
	mov	r0,#(_at_cmd + 0x0001)
	movx	a,@r0
	mov	r7,a
	cjne	r7,#0x54,00116$
;	radio/at.c:225: switch (at_cmd[2]) {
	mov	r0,#(_at_cmd + 0x0002)
	movx	a,@r0
	mov	r7,a
	jz	00105$
	cjne	r7,#0x26,00183$
	sjmp	00106$
00183$:
	cjne	r7,#0x2B,00184$
	sjmp	00107$
00184$:
	cjne	r7,#0x49,00185$
	sjmp	00108$
00185$:
	cjne	r7,#0x4F,00186$
	sjmp	00109$
00186$:
	cjne	r7,#0x53,00187$
	sjmp	00110$
00187$:
;	radio/at.c:226: case '\0':		// no command -> OK
	cjne	r7,#0x5A,00113$
	sjmp	00111$
00105$:
;	radio/at.c:227: at_ok();
	lcall	_at_ok
;	radio/at.c:228: break;
;	radio/at.c:229: case '&':
	sjmp	00116$
00106$:
;	radio/at.c:230: at_ampersand();
	lcall	_at_ampersand
;	radio/at.c:231: break;
;	radio/at.c:232: case '+':
	sjmp	00116$
00107$:
;	radio/at.c:233: at_plus();
	lcall	_at_plus
;	radio/at.c:234: break;
;	radio/at.c:235: case 'I':
	sjmp	00116$
00108$:
;	radio/at.c:236: at_i();
	lcall	_at_i
;	radio/at.c:237: break;
;	radio/at.c:238: case 'O':		// O -> go online (exit command mode)
	sjmp	00116$
00109$:
;	radio/at.c:239: at_plus_counter = ATP_COUNT_1S;
	mov	r0,#_at_plus_counter
	mov	a,#0x64
	movx	@r0,a
;	radio/at.c:240: at_mode_active = 0;
	clr	_at_mode_active
;	radio/at.c:241: break;
;	radio/at.c:242: case 'S':
	sjmp	00116$
00110$:
;	radio/at.c:243: at_s();
	lcall	_at_s
;	radio/at.c:244: break;
;	radio/at.c:246: case 'Z':
	sjmp	00116$
00111$:
;	radio/at.c:248: RSTSRC |= (1 << 4);
	orl	_RSTSRC,#0x10
00122$:
;	radio/at.c:252: default:
	sjmp	00122$
00113$:
;	radio/at.c:253: at_error();
	lcall	_at_error
;	radio/at.c:254: }
00116$:
;	radio/at.c:258: at_cmd_len = 0;
	mov	r0,#_at_cmd_len
	clr	a
	movx	@r0,a
;	radio/at.c:259: at_cmd_ready = false;
	clr	_at_cmd_ready
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'at_ok'
;------------------------------------------------------------
;	radio/at.c:264: at_ok(void)
;	-----------------------------------------
;	 function at_ok
;	-----------------------------------------
_at_ok:
;	radio/at.c:266: printf("%s\n", "OK");
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printfl
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'at_error'
;------------------------------------------------------------
;	radio/at.c:270: at_error(void)
;	-----------------------------------------
;	 function at_error
;	-----------------------------------------
_at_error:
;	radio/at.c:272: printf("%s\n", "ERROR");
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printfl
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'at_parse_number'
;------------------------------------------------------------
;reg                       Allocated to registers r4 r5 r6 r7 
;c                         Allocated to registers r3 
;sloc0                     Allocated to stack - sp +2
;sloc1                     Allocated to stack - sp -3
;------------------------------------------------------------
;	radio/at.c:278: at_parse_number() __reentrant
;	-----------------------------------------
;	 function at_parse_number
;	-----------------------------------------
_at_parse_number:
	mov	a,sp
	add	a,#0x04
	mov	sp,a
;	radio/at.c:283: reg = 0;
	mov	r4,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
00104$:
;	radio/at.c:285: c = at_cmd[idx];
	mov	r0,#_idx
	movx	a,@r0
	add	a,#_at_cmd
	mov	r1,a
	movx	a,@r1
;	radio/at.c:286: if (!isdigit(c))
	mov	r3,a
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_isdigit
	mov	a,dpl
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00103$
;	radio/at.c:288: reg = (reg * 10) + (c - '0');
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
	mov	dptr,#(0x0A&0x00ff)
	clr	a
	mov	b,a
	push	ar3
	lcall	__mullong
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	pop	ar3
	mov	ar2,r3
	mov	r3,#0x00
	mov	a,r2
	add	a,#0xD0
	mov	r2,a
	mov	a,r3
	addc	a,#0xFF
	mov	r3,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar3
	mov	a,r3
	rlc	a
	subb	a,acc
	inc	r0
	mov	@r0,a
	inc	r0
	mov	@r0,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	a,@r0
	add	a,r7
	mov	@r0,a
	inc	r0
	mov	a,@r0
	addc	a,r6
	mov	@r0,a
	inc	r0
	mov	a,@r0
	addc	a,r5
	mov	@r0,a
	inc	r0
	mov	a,@r0
	addc	a,r4
	mov	@r0,a
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
;	radio/at.c:289: idx++;
	mov	r0,#_idx
	movx	a,@r0
	add	a,#0x01
	movx	@r0,a
	ljmp	00104$
00103$:
;	radio/at.c:291: return reg;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	xch	a,r0
	mov	a,sp
	add	a,#0xFC
	mov	sp,a
	xch	a,r0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'at_i'
;------------------------------------------------------------
;sloc0                     Allocated with name '_at_i_sloc0_1_0'
;id                        Allocated with name '_at_i_id_3_159'
;------------------------------------------------------------
;	radio/at.c:295: at_i(void)
;	-----------------------------------------
;	 function at_i
;	-----------------------------------------
_at_i:
;	radio/at.c:297: switch (at_cmd[3]) {
	mov	r0,#(_at_cmd + 0x0003)
	movx	a,@r0
	mov	r7,a
	jz	00102$
	cjne	r7,#0x30,00152$
	sjmp	00102$
00152$:
	cjne	r7,#0x31,00153$
	sjmp	00103$
00153$:
	cjne	r7,#0x32,00154$
	sjmp	00104$
00154$:
	cjne	r7,#0x33,00155$
	ljmp	00105$
00155$:
	cjne	r7,#0x34,00156$
	ljmp	00106$
00156$:
	cjne	r7,#0x35,00157$
	ljmp	00126$
00157$:
	cjne	r7,#0x36,00158$
	ljmp	00109$
00158$:
	cjne	r7,#0x37,00159$
	ljmp	00110$
00159$:
	ljmp	00111$
;	radio/at.c:299: case '0':
00102$:
;	radio/at.c:300: printf("%s\n", g_banner_string);
	mov	a,#_g_banner_string
	push	acc
	mov	a,#(_g_banner_string >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printfl
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	radio/at.c:301: return;
	ret
;	radio/at.c:302: case '1':
00103$:
;	radio/at.c:303: printf("%s\n", g_version_string);
	mov	a,#_g_version_string
	push	acc
	mov	a,#(_g_version_string >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printfl
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	radio/at.c:304: return;
	ret
;	radio/at.c:305: case '2':
00104$:
;	radio/at.c:306: printf("%u\n", BOARD_ID);
	mov	a,#0x43
	push	acc
	clr	a
	push	acc
	mov	a,#__str_3
	push	acc
	mov	a,#(__str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printfl
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	radio/at.c:307: break;
	ret
;	radio/at.c:308: case '3':
00105$:
;	radio/at.c:309: printf("%u\n", g_board_frequency);
	mov	r0,#_g_board_frequency
	movx	a,@r0
	mov	r6,a
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	a,#__str_3
	push	acc
	mov	a,#(__str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printfl
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	radio/at.c:310: break;
	ret
;	radio/at.c:311: case '4':
00106$:
;	radio/at.c:312: printf("%u\n", g_board_bl_version);
	mov	r0,#_g_board_bl_version
	movx	a,@r0
	mov	r6,a
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	a,#__str_3
	push	acc
	mov	a,#(__str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printfl
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	radio/at.c:313: return;
;	radio/at.c:317: for (id = 0; id < PARAM_MAX; id++) {
	ret
00126$:
	mov	r7,#0x00
00113$:
;	radio/at.c:318: printf("S%u: %s=%lu\n", 
	mov	dpl,r7
	push	ar7
	lcall	_param_get
	mov	_at_i_sloc0_1_0,dpl
	mov	(_at_i_sloc0_1_0 + 1),dph
	mov	(_at_i_sloc0_1_0 + 2),b
	mov	(_at_i_sloc0_1_0 + 3),a
	pop	ar7
	mov	dpl,r7
	push	ar7
	lcall	_param_name
	mov	r2,dpl
	mov	r5,dph
	mov	r6,b
	pop	ar7
	mov	ar3,r7
	mov	r4,#0x00
	push	ar7
	push	_at_i_sloc0_1_0
	push	(_at_i_sloc0_1_0 + 1)
	push	(_at_i_sloc0_1_0 + 2)
	push	(_at_i_sloc0_1_0 + 3)
	push	ar2
	push	ar5
	push	ar6
	push	ar3
	push	ar4
	mov	a,#__str_4
	push	acc
	mov	a,#(__str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printfl
	mov	a,sp
	add	a,#0xf4
	mov	sp,a
	pop	ar7
;	radio/at.c:317: for (id = 0; id < PARAM_MAX; id++) {
	inc	r7
	cjne	r7,#0x0F,00160$
00160$:
	jc	00113$
;	radio/at.c:323: return;
;	radio/at.c:325: case '6':
	ret
00109$:
;	radio/at.c:326: tdm_report_timing();
;	radio/at.c:327: return;
;	radio/at.c:328: case '7':
	ljmp	_tdm_report_timing
00110$:
;	radio/at.c:329: tdm_show_rssi();
;	radio/at.c:330: return;
;	radio/at.c:331: default:
	ljmp	_tdm_show_rssi
00111$:
;	radio/at.c:332: at_error();
;	radio/at.c:333: return;
;	radio/at.c:334: }
	ljmp	_at_error
;------------------------------------------------------------
;Allocation info for local variables in function 'at_s'
;------------------------------------------------------------
;	radio/at.c:338: at_s(void)
;	-----------------------------------------
;	 function at_s
;	-----------------------------------------
_at_s:
;	radio/at.c:344: idx = 3;
	mov	r0,#_idx
	mov	a,#0x03
	movx	@r0,a
;	radio/at.c:345: sreg = at_parse_number();
	lcall	_at_parse_number
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	radio/at.c:347: if (sreg >= PARAM_MAX) {
	cjne	r4,#0x0F,00127$
00127$:
	jc	00102$
;	radio/at.c:348: at_error();
;	radio/at.c:349: return;
	ljmp	_at_error
00102$:
;	radio/at.c:352: switch (at_cmd[idx]) {
	mov	r0,#_idx
	movx	a,@r0
	add	a,#_at_cmd
	mov	r1,a
	movx	a,@r1
	mov	r7,a
	cjne	r7,#0x3D,00129$
	sjmp	00104$
00129$:
	cjne	r7,#0x3F,00109$
;	radio/at.c:354: val = param_get(sreg);
	mov	dpl,r4
	lcall	_param_get
	mov	r3,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	radio/at.c:355: printf("%lu\n", val);
	push	ar3
	push	ar5
	push	ar6
	push	ar7
	mov	a,#__str_5
	push	acc
	mov	a,#(__str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printfl
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	radio/at.c:356: return;
;	radio/at.c:358: case '=':
	ret
00104$:
;	radio/at.c:359: if (sreg > 0) {
	mov	a,r4
	jz	00109$
;	radio/at.c:360: idx++;
	mov	r0,#_idx
	movx	a,@r0
	add	a,#0x01
	movx	@r0,a
;	radio/at.c:361: val = at_parse_number();
	push	ar4
	lcall	_at_parse_number
	mov	r3,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	pop	ar4
;	radio/at.c:362: if (param_set(sreg, val)) {
	mov	r0,#_param_set_PARM_2
	mov	a,r3
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
	mov	dpl,r4
	lcall	_param_set
	jnc	00109$
;	radio/at.c:363: at_ok();
;	radio/at.c:364: return;
;	radio/at.c:368: }
	ljmp	_at_ok
00109$:
;	radio/at.c:369: at_error();
	ljmp	_at_error
;------------------------------------------------------------
;Allocation info for local variables in function 'at_ampersand'
;------------------------------------------------------------
;x                         Allocated with name '_at_ampersand_x_3_170'
;------------------------------------------------------------
;	radio/at.c:373: at_ampersand(void)
;	-----------------------------------------
;	 function at_ampersand
;	-----------------------------------------
_at_ampersand:
;	radio/at.c:375: switch (at_cmd[3]) {
	mov	r0,#(_at_cmd + 0x0003)
	movx	a,@r0
	mov	r7,a
	cjne	r7,#0x46,00154$
	sjmp	00101$
00154$:
	cjne	r7,#0x50,00155$
	sjmp	00107$
00155$:
	cjne	r7,#0x54,00156$
	sjmp	00108$
00156$:
	cjne	r7,#0x55,00157$
	sjmp	00103$
00157$:
	cjne	r7,#0x57,00158$
	sjmp	00102$
00158$:
	ljmp	00118$
;	radio/at.c:376: case 'F':
00101$:
;	radio/at.c:377: param_default();
	lcall	_param_default
;	radio/at.c:378: at_ok();
;	radio/at.c:379: break;
	ljmp	_at_ok
;	radio/at.c:380: case 'W':
00102$:
;	radio/at.c:381: param_save();
	lcall	_param_save
;	radio/at.c:382: at_ok();
;	radio/at.c:383: break;
	ljmp	_at_ok
;	radio/at.c:385: case 'U':
00103$:
;	radio/at.c:386: if (!strcmp(at_cmd + 4, "PDATE")) {
	mov	dptr,#_strcmp_PARM_2
	mov	a,#__str_6
	movx	@dptr,a
	mov	a,#(__str_6 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_at_cmd + 0x0004)
	mov	b,#0x60
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00106$
;	radio/at.c:388: volatile char x = *(__code volatile char *)0xfc00;
	mov	dptr,#0xFC00
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_at_ampersand_x_3_170
	movx	@dptr,a
00121$:
	sjmp	00121$
00106$:
;	radio/at.c:392: at_error();
;	radio/at.c:393: break;
	ljmp	_at_error
;	radio/at.c:395: case 'P':
00107$:
;	radio/at.c:396: tdm_change_phase();
;	radio/at.c:397: break;
	ljmp	_tdm_change_phase
;	radio/at.c:399: case 'T':
00108$:
;	radio/at.c:401: if (!strcmp(at_cmd + 4, "")) {
	mov	dptr,#_strcmp_PARM_2
	mov	a,#__str_7
	movx	@dptr,a
	mov	a,#(__str_7 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_at_cmd + 0x0004)
	mov	b,#0x60
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00116$
;	radio/at.c:403: at_testmode = 0;
	mov	r0,#_at_testmode
	clr	a
	movx	@r0,a
	ret
00116$:
;	radio/at.c:404: } else if (!strcmp(at_cmd + 4, "=RSSI")) {
	mov	dptr,#_strcmp_PARM_2
	mov	a,#__str_8
	movx	@dptr,a
	mov	a,#(__str_8 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_at_cmd + 0x0004)
	mov	b,#0x60
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00113$
;	radio/at.c:406: at_testmode ^= AT_TEST_RSSI;
	mov	r0,#_at_testmode
	movx	a,@r0
	xrl	a,#0x01
	movx	@r0,a
	ret
00113$:
;	radio/at.c:407: } else if (!strcmp(at_cmd + 4, "=TDM")) {
	mov	dptr,#_strcmp_PARM_2
	mov	a,#__str_9
	movx	@dptr,a
	mov	a,#(__str_9 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_at_cmd + 0x0004)
	mov	b,#0x60
	lcall	_strcmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00110$
;	radio/at.c:409: at_testmode ^= AT_TEST_TDM;
	mov	r0,#_at_testmode
	movx	a,@r0
	xrl	a,#0x02
	movx	@r0,a
	ret
00110$:
;	radio/at.c:411: at_error();
;	radio/at.c:413: break;
;	radio/at.c:415: default:
	ljmp	_at_error
00118$:
;	radio/at.c:416: at_error();
;	radio/at.c:418: }
	ljmp	_at_error
;------------------------------------------------------------
;Allocation info for local variables in function 'at_plus'
;------------------------------------------------------------
;	radio/at.c:422: at_plus(void)
;	-----------------------------------------
;	 function at_plus
;	-----------------------------------------
_at_plus:
;	radio/at.c:429: idx = 4;
	mov	r0,#_idx
	mov	a,#0x04
	movx	@r0,a
;	radio/at.c:430: creg = at_parse_number();
	lcall	_at_parse_number
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
;	radio/at.c:432: switch (at_cmd[3])
	mov	r0,#(_at_cmd + 0x0003)
	movx	a,@r0
	mov	r7,a
	cjne	r7,#0x43,00142$
	sjmp	00104$
00142$:
	cjne	r7,#0x4C,00143$
	ljmp	00111$
00143$:
	cjne	r7,#0x50,00144$
	sjmp	00145$
00144$:
	ljmp	00115$
00145$:
;	radio/at.c:435: if (at_cmd[4] != '=')
	mov	r0,#(_at_cmd + 0x0004)
	movx	a,@r0
	mov	r7,a
	cjne	r7,#0x3D,00146$
	sjmp	00147$
00146$:
	ljmp	00115$
00147$:
;	radio/at.c:439: idx = 5;
	mov	r0,#_idx
	mov	a,#0x05
	movx	@r0,a
;	radio/at.c:440: val = at_parse_number();
	lcall	_at_parse_number
	mov	r0,#_at_plus_val_1_176
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
;	radio/at.c:441: PCA0CPH0 = val & 0xFF;
	mov	r0,#_at_plus_val_1_176
	movx	a,@r0
	anl	a,#0xFF
	mov	r2,a
	inc	r0
	movx	a,@r0
	anl	a,#0x00
	inc	r0
	movx	a,@r0
	anl	a,#0x00
	inc	r0
	movx	a,@r0
	anl	a,#0x00
	mov	_PCA0CPH0,r2
;	radio/at.c:442: radio_set_diversity(false);
	clr	_radio_set_diversity_PARM_1
	lcall	_radio_set_diversity
;	radio/at.c:443: at_ok();
;	radio/at.c:444: return;
	ljmp	_at_ok
;	radio/at.c:445: case 'C': // AT+Cx=y write calibration value
00104$:
;	radio/at.c:446: switch (at_cmd[idx])
	mov	r0,#_idx
	movx	a,@r0
	add	a,#_at_cmd
	mov	r1,a
	movx	a,@r1
	mov	r7,a
	cjne	r7,#0x3D,00148$
	sjmp	00106$
00148$:
	cjne	r7,#0x3F,00149$
	sjmp	00150$
00149$:
	ljmp	00115$
00150$:
;	radio/at.c:449: val = calibration_get(creg);
	mov	dpl,r4
	lcall	_calibration_get
	mov	r7,dpl
	mov	r0,#_at_plus_val_1_176
	mov	a,r7
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
;	radio/at.c:450: printf("%lu\n",val);
	mov	r0,#_at_plus_val_1_176
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	a,#__str_5
	push	acc
	mov	a,#(__str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printfl
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
;	radio/at.c:451: return;
;	radio/at.c:452: case '=':
	ret
00106$:
;	radio/at.c:453: idx++;
	mov	r0,#_idx
	movx	a,@r0
	add	a,#0x01
	movx	@r0,a
;	radio/at.c:454: val = at_parse_number();
	push	ar4
	lcall	_at_parse_number
	mov	r0,#_at_plus_val_1_176
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
	pop	ar4
;	radio/at.c:455: if (calibration_set(creg, val&0xFF))
	mov	r0,#_at_plus_val_1_176
	movx	a,@r0
	anl	a,#0xFF
	mov	r3,a
	inc	r0
	movx	a,@r0
	anl	a,#0x00
	inc	r0
	movx	a,@r0
	anl	a,#0x00
	inc	r0
	movx	a,@r0
	anl	a,#0x00
	push	ar3
	mov	dpl,r4
	lcall	_calibration_set
	dec	sp
	mov	_at_plus_sloc0_1_0,c
	jnc	00108$
;	radio/at.c:457: at_ok();
	lcall	_at_ok
	sjmp	00109$
00108$:
;	radio/at.c:459: at_error();
;	radio/at.c:461: return;
;	radio/at.c:464: case 'L': // AT+L lock bootloader area if all calibrations written
	ljmp	_at_error
00109$:
	ret
00111$:
;	radio/at.c:465: if (calibration_lock())
	lcall	_calibration_lock
	jnc	00113$
;	radio/at.c:467: at_ok();
	lcall	_at_ok
	sjmp	00114$
00113$:
;	radio/at.c:469: at_error();
;	radio/at.c:471: return;
;	radio/at.c:472: }
	ljmp	_at_error
00114$:
	ret
00115$:
;	radio/at.c:474: at_error();
	ljmp	_at_error
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.ascii "%s"
	.db 0x0A
	.db 0x00
__str_1:
	.ascii "OK"
	.db 0x00
__str_2:
	.ascii "ERROR"
	.db 0x00
__str_3:
	.ascii "%u"
	.db 0x0A
	.db 0x00
__str_4:
	.ascii "S%u: %s=%lu"
	.db 0x0A
	.db 0x00
__str_5:
	.ascii "%lu"
	.db 0x0A
	.db 0x00
__str_6:
	.ascii "PDATE"
	.db 0x00
__str_7:
	.db 0x00
__str_8:
	.ascii "=RSSI"
	.db 0x00
__str_9:
	.ascii "=TDM"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
