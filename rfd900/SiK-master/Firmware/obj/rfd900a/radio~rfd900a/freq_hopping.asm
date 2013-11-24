;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.0 #8604 (May 11 2013) (Linux)
; This file was generated Sun Nov 24 17:43:08 2013
;--------------------------------------------------------
	.module freq_hopping
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _srand
	.globl _rand
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
	.globl _num_fh_channels
	.globl _fhop_set_locked_PARM_1
	.globl _fhop_init
	.globl _fhop_transmit_channel
	.globl _fhop_receive_channel
	.globl _fhop_window_change
	.globl _fhop_set_locked
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
_shuffle_sloc0_1_0:
	.ds 1
_fhop_init_sloc0_1_0:
	.ds 1
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
_have_radio_lock:
	.ds 1
_fhop_set_locked_PARM_1:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
_num_fh_channels::
	.ds 1
_transmit_channel:
	.ds 1
_receive_channel:
	.ds 1
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_channel_map:
	.ds 50
_shuffle_PARM_2:
	.ds 1
_shuffle_array_1_123:
	.ds 2
_fhop_init_netid_1_126:
	.ds 2
_fhop_init_array_3_130:
	.ds 2
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
;Allocation info for local variables in function 'shuffle'
;------------------------------------------------------------
;sloc0                     Allocated with name '_shuffle_sloc0_1_0'
;n                         Allocated with name '_shuffle_PARM_2'
;array                     Allocated with name '_shuffle_array_1_123'
;i                         Allocated with name '_shuffle_i_1_124'
;j                         Allocated with name '_shuffle_j_2_125'
;t                         Allocated with name '_shuffle_t_2_125'
;------------------------------------------------------------
;	radio/freq_hopping.c:63: static inline void shuffle(__xdata uint8_t *array, uint8_t n)
;	-----------------------------------------
;	 function shuffle
;	-----------------------------------------
_shuffle:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_shuffle_array_1_123
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	radio/freq_hopping.c:66: for (i = 0; i < n - 1; i++) {
	mov	dptr,#_shuffle_array_1_123
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_shuffle_PARM_2
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
00103$:
	mov	ar2,r5
	mov	r3,#0x00
	dec	r2
	cjne	r2,#0xFF,00114$
	dec	r3
00114$:
	mov	ar0,r4
	mov	r1,#0x00
	clr	c
	mov	a,r0
	subb	a,r2
	mov	a,r1
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
;	radio/freq_hopping.c:67: uint8_t j = ((uint8_t)rand()) % n;
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_rand
	mov	r2,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	b,r5
	mov	a,r2
	div	ab
;	radio/freq_hopping.c:68: uint8_t t = array[j];
	mov	a,b
	add	a,r6
	mov	r2,a
	clr	a
	addc	a,r7
	mov	r3,a
	mov	dpl,r2
	mov	dph,r3
	movx	a,@dptr
	mov	_shuffle_sloc0_1_0,a
;	radio/freq_hopping.c:69: array[j] = array[i];
	push	ar5
	mov	a,r4
	add	a,r6
	mov	r0,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	dpl,r0
	mov	dph,r5
	movx	a,@dptr
	mov	r1,a
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
;	radio/freq_hopping.c:70: array[i] = t;
	mov	dpl,r0
	mov	dph,r5
	mov	a,_shuffle_sloc0_1_0
	movx	@dptr,a
;	radio/freq_hopping.c:66: for (i = 0; i < n - 1; i++) {
	inc	r4
	pop	ar5
	sjmp	00103$
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fhop_init'
;------------------------------------------------------------
;sloc0                     Allocated with name '_fhop_init_sloc0_1_0'
;netid                     Allocated with name '_fhop_init_netid_1_126'
;i                         Allocated with name '_fhop_init_i_1_127'
;__00020001                Allocated with name '_fhop_init___00020001_3_130'
;__00020002                Allocated with name '_fhop_init___00020002_3_130'
;array                     Allocated with name '_fhop_init_array_3_130'
;n                         Allocated with name '_fhop_init_n_3_130'
;i                         Allocated with name '_fhop_init_i_4_131'
;j                         Allocated with name '_fhop_init_j_5_132'
;t                         Allocated with name '_fhop_init_t_5_132'
;------------------------------------------------------------
;	radio/freq_hopping.c:76: fhop_init(uint16_t netid)
;	-----------------------------------------
;	 function fhop_init
;	-----------------------------------------
_fhop_init:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_fhop_init_netid_1_126
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	radio/freq_hopping.c:81: for (i = 0; i < num_fh_channels; i++) {
	mov	r7,#0x00
00105$:
	mov	r0,#_num_fh_channels
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,r7
	subb	a,b
	jnc	00101$
;	radio/freq_hopping.c:82: channel_map[i] = i;
	mov	a,r7
	add	a,#_channel_map
	mov	dpl,a
	clr	a
	addc	a,#(_channel_map >> 8)
	mov	dph,a
	mov	a,r7
	movx	@dptr,a
;	radio/freq_hopping.c:81: for (i = 0; i < num_fh_channels; i++) {
	inc	r7
	sjmp	00105$
00101$:
;	radio/freq_hopping.c:84: srand(netid);
	mov	dptr,#_fhop_init_netid_1_126
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_srand
;	radio/freq_hopping.c:85: shuffle(channel_map, num_fh_channels);
	mov	r0,#_num_fh_channels
	movx	a,@r0
	mov	r7,a
;	radio/freq_hopping.c:66: for (i = 0; i < n - 1; i++) {
	mov	r6,#0x00
00108$:
	mov	ar4,r7
	mov	r5,#0x00
	dec	r4
	cjne	r4,#0xFF,00127$
	dec	r5
00127$:
	mov	ar2,r6
	mov	r3,#0x00
	clr	c
	mov	a,r2
	subb	a,r4
	mov	a,r3
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00110$
;	radio/freq_hopping.c:67: uint8_t j = ((uint8_t)rand()) % n;
	push	ar7
	push	ar6
	lcall	_rand
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	b,r7
	mov	a,r4
	div	ab
;	radio/freq_hopping.c:68: uint8_t t = array[j];
	mov	a,b
	add	a,#_channel_map
	mov	r4,a
	clr	a
	addc	a,#(_channel_map >> 8)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	_fhop_init_sloc0_1_0,a
;	radio/freq_hopping.c:69: array[j] = array[i];
	push	ar7
	mov	a,r6
	add	a,#_channel_map
	mov	r2,a
	clr	a
	addc	a,#(_channel_map >> 8)
	mov	r7,a
	mov	dpl,r2
	mov	dph,r7
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
;	radio/freq_hopping.c:70: array[i] = t;
	mov	dpl,r2
	mov	dph,r7
	mov	a,_fhop_init_sloc0_1_0
	movx	@dptr,a
;	radio/freq_hopping.c:66: for (i = 0; i < n - 1; i++) {
	inc	r6
	pop	ar7
;	radio/freq_hopping.c:85: shuffle(channel_map, num_fh_channels);
	sjmp	00108$
00110$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fhop_transmit_channel'
;------------------------------------------------------------
;	radio/freq_hopping.c:90: fhop_transmit_channel(void)
;	-----------------------------------------
;	 function fhop_transmit_channel
;	-----------------------------------------
_fhop_transmit_channel:
;	radio/freq_hopping.c:92: return channel_map[transmit_channel];
	mov	r0,#_transmit_channel
	movx	a,@r0
	add	a,#_channel_map
	mov	dpl,a
	clr	a
	addc	a,#(_channel_map >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fhop_receive_channel'
;------------------------------------------------------------
;	radio/freq_hopping.c:97: fhop_receive_channel(void)
;	-----------------------------------------
;	 function fhop_receive_channel
;	-----------------------------------------
_fhop_receive_channel:
;	radio/freq_hopping.c:99: return channel_map[receive_channel];
	mov	r0,#_receive_channel
	movx	a,@r0
	add	a,#_channel_map
	mov	dpl,a
	clr	a
	addc	a,#(_channel_map >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fhop_window_change'
;------------------------------------------------------------
;	radio/freq_hopping.c:104: fhop_window_change(void)
;	-----------------------------------------
;	 function fhop_window_change
;	-----------------------------------------
_fhop_window_change:
;	radio/freq_hopping.c:106: transmit_channel = (transmit_channel + 1) % num_fh_channels;
	mov	r0,#_transmit_channel
	movx	a,@r0
	mov	r6,a
	mov	r7,#0x00
	inc	r6
	cjne	r6,#0x00,00114$
	inc	r7
00114$:
	mov	r0,#_num_fh_channels
	movx	a,@r0
	mov	r4,a
	mov	r5,#0x00
	mov	dptr,#__modsint_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar4
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	pop	ar5
	mov	r0,#_transmit_channel
	mov	a,r6
	movx	@r0,a
;	radio/freq_hopping.c:107: if (have_radio_lock) {
	jnb	_have_radio_lock,00104$
;	radio/freq_hopping.c:110: receive_channel = transmit_channel;
	mov	r0,#_transmit_channel
	mov	r1,#_receive_channel
	movx	a,@r0
	movx	@r1,a
	ret
00104$:
;	radio/freq_hopping.c:111: } else if (transmit_channel == 0) {
	mov	r0,#_transmit_channel
	movx	a,@r0
	jnz	00106$
;	radio/freq_hopping.c:114: receive_channel = (receive_channel + 1) % num_fh_channels;
	mov	r0,#_receive_channel
	movx	a,@r0
	mov	r6,a
	mov	r7,#0x00
	inc	r6
	cjne	r6,#0x00,00117$
	inc	r7
00117$:
	mov	dptr,#__modsint_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	r0,#_receive_channel
	mov	a,r6
	movx	@r0,a
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'fhop_set_locked'
;------------------------------------------------------------
;	radio/freq_hopping.c:121: fhop_set_locked(bool locked)
;	-----------------------------------------
;	 function fhop_set_locked
;	-----------------------------------------
_fhop_set_locked:
;	radio/freq_hopping.c:128: have_radio_lock = locked;
	mov	c,_fhop_set_locked_PARM_1
;	radio/freq_hopping.c:129: if (have_radio_lock) {
	mov	_have_radio_lock,c
	jnc	00102$
;	radio/freq_hopping.c:133: transmit_channel = receive_channel;
	mov	r0,#_receive_channel
	mov	r1,#_transmit_channel
	movx	a,@r0
	movx	@r1,a
	ret
00102$:
;	radio/freq_hopping.c:136: receive_channel = (receive_channel+1) % num_fh_channels;
	mov	r0,#_receive_channel
	movx	a,@r0
	mov	r6,a
	mov	r7,#0x00
	inc	r6
	cjne	r6,#0x00,00110$
	inc	r7
00110$:
	mov	r0,#_num_fh_channels
	mov	dptr,#__modsint_PARM_2
	movx	a,@r0
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	r0,#_receive_channel
	mov	a,r6
	movx	@r0,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
