;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.0 #8604 (May 11 2013) (Linux)
; This file was generated Sun Nov 24 17:43:01 2013
;--------------------------------------------------------
	.module bootloader
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _bl_main
	.globl _cin
	.globl _cout
	.globl _flash_transfer_calibration
	.globl _flash_read_byte
	.globl _flash_write_byte
	.globl _flash_erase_scratch
	.globl _flash_erase_app
	.globl _flash_app_valid
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
	.globl _app_valid
	.globl _debounce_count
	.globl _reset_source
	.globl _buf
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
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_buf::
	.ds 64
_reset_source::
	.ds 1
_debounce_count::
	.ds 1
_bootloader_address_1_32:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
_app_valid::
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
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
;Allocation info for local variables in function 'bl_main'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
;	bootloader/bootloader.c:70: bl_main(void)
;	-----------------------------------------
;	 function bl_main
;	-----------------------------------------
_bl_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	bootloader/bootloader.c:75: hardware_init();
	lcall	_hardware_init
;	bootloader/bootloader.c:80: reset_source = RSTSRC;
;	bootloader/bootloader.c:81: if (reset_source & (1 << 1))
	mov	a,_RSTSRC
	mov	_reset_source,a
	jnb	acc.1,00102$
;	bootloader/bootloader.c:82: reset_source = 1 << 1;
	mov	_reset_source,#0x02
00102$:
;	bootloader/bootloader.c:85: app_valid = flash_app_valid();
	lcall	_flash_app_valid
	mov	a,dpl
	add	a,#0xff
	mov	_app_valid,c
;	bootloader/bootloader.c:89: debounce_count = 0;
	mov	_debounce_count,#0x00
;	bootloader/bootloader.c:90: for (i = 0; i < 255; i++) {
	mov	r7,#0xFF
00114$:
;	bootloader/bootloader.c:91: if (BUTTON_BOOTLOAD == BUTTON_ACTIVE)
	jb	_PIN_CONFIG,00104$
;	bootloader/bootloader.c:92: debounce_count++;
	inc	_debounce_count
00104$:
	mov	ar6,r7
	mov	a,r6
	dec	a
;	bootloader/bootloader.c:90: for (i = 0; i < 255; i++) {
	mov	r7,a
	jnz	00114$
;	bootloader/bootloader.c:96: LED_BOOTLOADER = LED_ON;
	setb	_LED_RED
;	bootloader/bootloader.c:105: if (!(reset_source & (1 << 6)) && app_valid) {
	mov	a,_reset_source
	jb	acc.6,00115$
	jnb	_app_valid,00115$
;	bootloader/bootloader.c:110: if (debounce_count < 200) {
	mov	a,#0x100 - 0xC8
	add	a,_debounce_count
	jc	00115$
;	bootloader/bootloader.c:113: flash_transfer_calibration();
	lcall	_flash_transfer_calibration
;	bootloader/bootloader.c:119: BOARD_FREQUENCY_REG = board_frequency;
	mov	dptr,#_board_frequency
	clr	a
	movc	a,@a+dptr
	mov	_ADC0GTH,a
;	bootloader/bootloader.c:120: BOARD_BL_VERSION_REG = BL_VERSION;
	mov	_ADC0GTL,#0x01
;	bootloader/bootloader.c:123: ((void (__code *)(void))FLASH_APP_START)();
	lcall	0x0400
00115$:
;	bootloader/bootloader.c:130: bootloader();
	lcall	_bootloader
	sjmp	00115$
;------------------------------------------------------------
;Allocation info for local variables in function 'bootloader'
;------------------------------------------------------------
;address                   Allocated with name '_bootloader_address_1_32'
;c                         Allocated to registers r7 
;count                     Allocated to registers r6 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	bootloader/bootloader.c:136: bootloader(void)
;	-----------------------------------------
;	 function bootloader
;	-----------------------------------------
_bootloader:
;	bootloader/bootloader.c:143: LED_BOOTLOADER = LED_ON;
	setb	_LED_RED
;	bootloader/bootloader.c:144: c = cin();
	lcall	_cin
	mov	r7,dpl
;	bootloader/bootloader.c:145: LED_BOOTLOADER = LED_OFF;
	clr	_LED_RED
;	bootloader/bootloader.c:148: switch (c) {
	cjne	r7,#0x21,00205$
	sjmp	00106$
00205$:
	cjne	r7,#0x22,00206$
	sjmp	00106$
00206$:
	cjne	r7,#0x23,00207$
	sjmp	00106$
00207$:
	cjne	r7,#0x26,00208$
	sjmp	00106$
00208$:
	cjne	r7,#0x29,00209$
	sjmp	00106$
00209$:
	cjne	r7,#0x31,00109$
;	bootloader/bootloader.c:154: case PROTO_DEBUG:
00106$:
;	bootloader/bootloader.c:155: if (cin() != PROTO_EOC)
	push	ar7
	lcall	_cin
	mov	r6,dpl
	pop	ar7
	cjne	r6,#0x20,00212$
	sjmp	00213$
00212$:
	ret
00213$:
;	bootloader/bootloader.c:157: }
00109$:
;	bootloader/bootloader.c:159: switch (c) {
	cjne	r7,#0x21,00214$
00214$:
	jnc	00215$
	ret
00215$:
	mov	a,r7
	add	a,#0xff - 0x31
	jnc	00216$
	ret
00216$:
	mov	a,r7
	add	a,#0xDF
	mov	r6,a
	add	a,#(00217$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r6
	add	a,#(00218$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00217$:
	.db	00110$
	.db	00111$
	.db	00112$
	.db	00114$
	.db	00117$
	.db	00120$
	.db	00121$
	.db	00128$
	.db	00113$
	.db	00134$
	.db	00134$
	.db	00134$
	.db	00134$
	.db	00134$
	.db	00134$
	.db	00132$
	.db	00133$
00218$:
	.db	00110$>>8
	.db	00111$>>8
	.db	00112$>>8
	.db	00114$>>8
	.db	00117$>>8
	.db	00120$>>8
	.db	00121$>>8
	.db	00128$>>8
	.db	00113$>>8
	.db	00134$>>8
	.db	00134$>>8
	.db	00134$>>8
	.db	00134$>>8
	.db	00134$>>8
	.db	00134$>>8
	.db	00132$>>8
	.db	00133$>>8
;	bootloader/bootloader.c:161: case PROTO_GET_SYNC:		// sync
00110$:
;	bootloader/bootloader.c:162: break;
	ljmp	00135$
;	bootloader/bootloader.c:164: case PROTO_GET_DEVICE:
00111$:
;	bootloader/bootloader.c:165: cout(BOARD_ID);
	mov	dpl,#0x43
	lcall	_cout
;	bootloader/bootloader.c:166: cout(board_frequency);
	mov	dptr,#_board_frequency
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_cout
;	bootloader/bootloader.c:167: break;
	ljmp	00135$
;	bootloader/bootloader.c:169: case PROTO_CHIP_ERASE:		// erase the program area
00112$:
;	bootloader/bootloader.c:170: flash_erase_app();
	lcall	_flash_erase_app
;	bootloader/bootloader.c:171: break;
	ljmp	00135$
;	bootloader/bootloader.c:173: case PROTO_PARAM_ERASE:
00113$:
;	bootloader/bootloader.c:174: flash_erase_scratch();
	lcall	_flash_erase_scratch
;	bootloader/bootloader.c:175: break;
	ljmp	00135$
;	bootloader/bootloader.c:177: case PROTO_LOAD_ADDRESS:	// set address
00114$:
;	bootloader/bootloader.c:178: address = cin();
	lcall	_cin
	mov	r6,dpl
	mov	_bootloader_address_1_32,r6
	mov	(_bootloader_address_1_32 + 1),#0x00
;	bootloader/bootloader.c:179: address |= (uint16_t)cin() << 8;
	lcall	_cin
	mov	r6,dpl
	mov	ar5,r6
	clr	a
	orl	_bootloader_address_1_32,a
	mov	a,r5
	orl	(_bootloader_address_1_32 + 1),a
;	bootloader/bootloader.c:180: if (cin() != PROTO_EOC)
	lcall	_cin
	mov	r6,dpl
	cjne	r6,#0x20,00219$
	ljmp	00135$
00219$:
;	bootloader/bootloader.c:181: goto cmd_bad;
	ret
;	bootloader/bootloader.c:184: case PROTO_PROG_FLASH:		// program byte
00117$:
;	bootloader/bootloader.c:185: c = cin();
	lcall	_cin
	mov	r7,dpl
;	bootloader/bootloader.c:186: if (cin() != PROTO_EOC)
	push	ar7
	lcall	_cin
	mov	r6,dpl
	pop	ar7
	cjne	r6,#0x20,00220$
	sjmp	00221$
00220$:
	ret
00221$:
;	bootloader/bootloader.c:188: flash_write_byte(address++, c);
	mov	dpl,_bootloader_address_1_32
	mov	dph,(_bootloader_address_1_32 + 1)
	inc	_bootloader_address_1_32
	clr	a
	cjne	a,_bootloader_address_1_32,00222$
	inc	(_bootloader_address_1_32 + 1)
00222$:
	mov	_flash_write_byte_PARM_2,r7
	lcall	_flash_write_byte
;	bootloader/bootloader.c:189: break;
	ljmp	00135$
;	bootloader/bootloader.c:191: case PROTO_READ_FLASH:		// readback byte
00120$:
;	bootloader/bootloader.c:192: c = flash_read_byte(address++);
	mov	dpl,_bootloader_address_1_32
	mov	dph,(_bootloader_address_1_32 + 1)
	inc	_bootloader_address_1_32
	clr	a
	cjne	a,_bootloader_address_1_32,00223$
	inc	(_bootloader_address_1_32 + 1)
00223$:
	lcall	_flash_read_byte
;	bootloader/bootloader.c:193: cout(c);
	lcall	_cout
;	bootloader/bootloader.c:194: break;
	ljmp	00135$
;	bootloader/bootloader.c:196: case PROTO_PROG_MULTI:
00121$:
;	bootloader/bootloader.c:197: count = cin();
	lcall	_cin
;	bootloader/bootloader.c:198: if (count > sizeof(buf))
	mov	a,dpl
	mov	r6,a
	add	a,#0xff - 0x40
	jnc	00224$
	ret
00224$:
;	bootloader/bootloader.c:200: for (i = 0; i < count; i++)
	mov	r5,#0x00
00138$:
	clr	c
	mov	a,r5
	subb	a,r6
	jnc	00124$
;	bootloader/bootloader.c:201: buf[i] = cin();
	mov	a,r5
	add	a,#_buf
	mov	r1,a
	push	ar6
	push	ar5
	push	ar1
	lcall	_cin
	mov	a,dpl
	pop	ar1
	pop	ar5
	pop	ar6
	mov	@r1,a
;	bootloader/bootloader.c:200: for (i = 0; i < count; i++)
	inc	r5
	sjmp	00138$
00124$:
;	bootloader/bootloader.c:202: if (cin() != PROTO_EOC)
	push	ar6
	lcall	_cin
	mov	r5,dpl
	pop	ar6
	cjne	r5,#0x20,00136$
;	bootloader/bootloader.c:204: for (i = 0; i < count; i++)
	mov	r5,#0x00
00141$:
	clr	c
	mov	a,r5
	subb	a,r6
	jnc	00135$
;	bootloader/bootloader.c:205: flash_write_byte(address++, buf[i]);
	mov	dpl,_bootloader_address_1_32
	mov	dph,(_bootloader_address_1_32 + 1)
	inc	_bootloader_address_1_32
	clr	a
	cjne	a,_bootloader_address_1_32,00229$
	inc	(_bootloader_address_1_32 + 1)
00229$:
	mov	a,r5
	add	a,#_buf
	mov	r1,a
	mov	_flash_write_byte_PARM_2,@r1
	push	ar6
	push	ar5
	lcall	_flash_write_byte
	pop	ar5
	pop	ar6
;	bootloader/bootloader.c:204: for (i = 0; i < count; i++)
	inc	r5
;	bootloader/bootloader.c:208: case PROTO_READ_MULTI:
	sjmp	00141$
00128$:
;	bootloader/bootloader.c:209: count = cin();
	lcall	_cin
	mov	r6,dpl
;	bootloader/bootloader.c:210: if (cin() != PROTO_EOC)
	push	ar6
	lcall	_cin
	mov	r5,dpl
	pop	ar6
	cjne	r5,#0x20,00136$
;	bootloader/bootloader.c:212: for (i = 0; i < count; i++) {
	mov	r5,#0x00
00144$:
	clr	c
	mov	a,r5
	subb	a,r6
	jnc	00135$
;	bootloader/bootloader.c:213: c = flash_read_byte(address++);
	mov	dpl,_bootloader_address_1_32
	mov	dph,(_bootloader_address_1_32 + 1)
	inc	_bootloader_address_1_32
	clr	a
	cjne	a,_bootloader_address_1_32,00233$
	inc	(_bootloader_address_1_32 + 1)
00233$:
	push	ar6
	push	ar5
	lcall	_flash_read_byte
;	bootloader/bootloader.c:214: cout(c);
	lcall	_cout
	pop	ar5
	pop	ar6
;	bootloader/bootloader.c:212: for (i = 0; i < count; i++) {
	inc	r5
;	bootloader/bootloader.c:218: case PROTO_REBOOT:
	sjmp	00144$
00132$:
;	bootloader/bootloader.c:220: RSTSRC |= (1 << 4);
	orl	_RSTSRC,#0x10
;	bootloader/bootloader.c:222: case PROTO_DEBUG:
00133$:
;	bootloader/bootloader.c:224: break;
;	bootloader/bootloader.c:226: default:
	sjmp	00135$
00134$:
;	bootloader/bootloader.c:227: goto cmd_bad;
;	bootloader/bootloader.c:228: }
	ret
00135$:
;	bootloader/bootloader.c:229: sync_response();
;	bootloader/bootloader.c:230: cmd_bad:
;	bootloader/bootloader.c:231: return;
	ljmp	_sync_response
00136$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sync_response'
;------------------------------------------------------------
;	bootloader/bootloader.c:235: sync_response(void)
;	-----------------------------------------
;	 function sync_response
;	-----------------------------------------
_sync_response:
;	bootloader/bootloader.c:237: cout(PROTO_INSYNC);	// "in sync"
	mov	dpl,#0x12
	lcall	_cout
;	bootloader/bootloader.c:238: cout(PROTO_OK);		// "OK"
	mov	dpl,#0x10
	ljmp	_cout
;------------------------------------------------------------
;Allocation info for local variables in function 'hardware_init'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	bootloader/bootloader.c:244: hardware_init(void)
;	-----------------------------------------
;	 function hardware_init
;	-----------------------------------------
_hardware_init:
;	bootloader/bootloader.c:250: EA	 =  0x00;
	clr	_EA
;	bootloader/bootloader.c:253: PCA0MD	&= ~0x40;
	mov	r7,_PCA0MD
	mov	a,#0xBF
	anl	a,r7
	mov	_PCA0MD,a
;	bootloader/bootloader.c:256: FLSCL	 =  0x40;
	mov	_FLSCL,#0x40
;	bootloader/bootloader.c:257: OSCICN	 =  0x8F;
	mov	_OSCICN,#0x8F
;	bootloader/bootloader.c:258: CLKSEL	 =  0x00;
	mov	_CLKSEL,#0x00
;	bootloader/bootloader.c:261: TCON	 =  0x40;		// Timer1 on
	mov	_TCON,#0x40
;	bootloader/bootloader.c:262: TMOD	 =  0x20;		// Timer1 8-bit auto-reload
	mov	_TMOD,#0x20
;	bootloader/bootloader.c:263: CKCON	 =  0x08;		// Timer1 from SYSCLK
	mov	_CKCON,#0x08
;	bootloader/bootloader.c:264: TH1	 =  0x96;		// 115200 bps
	mov	_TH1,#0x96
;	bootloader/bootloader.c:267: SCON0	 =  0x12;		// enable receiver, set TX ready
	mov	_SCON0,#0x12
;	bootloader/bootloader.c:270: VDM0CN	 =  0x80;
	mov	_VDM0CN,#0x80
;	bootloader/bootloader.c:271: for (i = 0; i < 350; i++);	// Wait 100us for initialization
	mov	r6,#0x5E
	mov	r7,#0x01
00107$:
	dec	r6
	cjne	r6,#0xFF,00117$
	dec	r7
00117$:
	mov	a,r6
	orl	a,r7
	jnz	00107$
;	bootloader/bootloader.c:272: RSTSRC	 =  0x06;		// enable brown out and missing clock reset sources
	mov	_RSTSRC,#0x06
;	bootloader/bootloader.c:275: P0MDOUT	 =  0x10;		// UART Tx push-pull
	mov	_P0MDOUT,#0x10
;	bootloader/bootloader.c:276: SFRPAGE	 =  CONFIG_PAGE;
	mov	_SFRPAGE,#0x0F
;	bootloader/bootloader.c:277: P0DRV	 =  0x10;		// UART TX
	mov	_P0DRV,#0x10
;	bootloader/bootloader.c:278: SFRPAGE	 =  LEGACY_PAGE;
	mov	_SFRPAGE,#0x00
;	bootloader/bootloader.c:279: XBR0	 =  0x01;		// UART enable
	mov	_XBR0,#0x01
;	bootloader/bootloader.c:282: HW_INIT;
	orl	_P0SKIP,#0xCF
	orl	_P1SKIP,#0x78
	mov	a,_P2SKIP
	mov	_P2SKIP,#0xFF
	mov	_SFRPAGE,#0x0F
	orl	_P1MDOUT,#0xF5
	orl	_P1DRV,#0xF5
	orl	_P2MDOUT,#0x20
	orl	_P2DRV,#0x20
	mov	_SFRPAGE,#0x00
	mov	a,#0x0F
	anl	a,_IT01CF
	orl	a,#0x07
	mov	_IT01CF,a
	clr	_IT0
;	bootloader/bootloader.c:284: XBR2	 =  0x40;		// Crossbar (GPIO) enable
	mov	_XBR2,#0x40
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CABS    (ABS,CODE)
