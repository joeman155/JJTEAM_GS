;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.0 #8604 (May 11 2013) (Linux)
; This file was generated Sun Nov 24 17:43:13 2013
;--------------------------------------------------------
	.module packet
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _timer2_tick
	.globl _serial_read_available
	.globl _serial_read_buf
	.globl _serial_peek2
	.globl _serial_peek
	.globl _serial_read
	.globl _memcmp
	.globl _memcpy
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
	.globl _packet_inject_PARM_2
	.globl _packet_is_duplicate_PARM_2
	.globl _packet_get_next_PARM_2
	.globl _packet_is_duplicate_PARM_3
	.globl _using_mavlink_10
	.globl _seen_mavlink
	.globl _packet_get_next
	.globl _packet_is_resend
	.globl _packet_is_injected
	.globl _packet_force_resend
	.globl _packet_set_max_xmit
	.globl _packet_set_serial_speed
	.globl _packet_is_duplicate
	.globl _packet_inject
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
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_mavlink_frame_slen_1_138:
	.ds 2
_mavlink_frame_c_2_139:
	.ds 1
_mavlink_frame_sloc0_1_0:
	.ds 1
_mavlink_frame_sloc1_1_0:
	.ds 2
_packet_get_next_max_xmit_1_143:
	.ds 1
_packet_get_next_slen_1_144:
	.ds 2
_packet_get_next_sloc0_1_0:
	.ds 2
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
_last_sent_is_resend:
	.ds 1
_last_sent_is_injected:
	.ds 1
_last_recv_is_resend:
	.ds 1
_force_resend:
	.ds 1
_injected_packet:
	.ds 1
_seen_mavlink::
	.ds 1
_using_mavlink_10::
	.ds 1
_packet_is_duplicate_PARM_3:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
_last_sent_len:
	.ds 1
_last_recv_len:
	.ds 1
_serial_rate:
	.ds 2
_mav_pkt_len:
	.ds 1
_mav_pkt_start_time:
	.ds 2
_mav_pkt_max_time:
	.ds 2
_mav_max_xmit:
	.ds 1
_mavlink_frame_PARM_2:
	.ds 2
_packet_get_next_PARM_2:
	.ds 2
_packet_is_duplicate_PARM_2:
	.ds 2
_packet_inject_PARM_2:
	.ds 1
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_last_received:
	.ds 252
_last_sent:
	.ds 252
_mavlink_frame_max_xmit_1_137:
	.ds 1
_packet_set_max_xmit_max_1_175:
	.ds 1
_packet_set_serial_speed_speed_1_177:
	.ds 2
_packet_is_duplicate_len_1_179:
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
;Allocation info for local variables in function 'check_heartbeat'
;------------------------------------------------------------
;	radio/packet.c:81: static void check_heartbeat(__xdata uint8_t * __pdata buf)
;	-----------------------------------------
;	 function check_heartbeat
;	-----------------------------------------
_check_heartbeat:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	radio/packet.c:83: if (buf[0] == MAVLINK09_STX &&
	mov	r6,dpl
	mov  r7,dph
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x55,00106$
;	radio/packet.c:84: buf[1] == 3 && buf[5] == 0) {
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x03,00106$
	mov	a,#0x05
	add	a,r6
	mov	r3,a
	clr	a
	addc	a,r7
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	jnz	00106$
;	radio/packet.c:86: using_mavlink_10 = false;
	clr	_using_mavlink_10
;	radio/packet.c:87: seen_mavlink = true;
	setb	_seen_mavlink
	ret
00106$:
;	radio/packet.c:88: } else if (buf[0] == MAVLINK10_STX &&
	cjne	r5,#0xFE,00110$
;	radio/packet.c:89: buf[1] == 9 && buf[5] == 0) {
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	cjne	r5,#0x09,00110$
	mov	a,#0x05
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	jnz	00110$
;	radio/packet.c:91: using_mavlink_10 = true;
	setb	_using_mavlink_10
;	radio/packet.c:92: seen_mavlink = true;
	setb	_seen_mavlink
00110$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mavlink_frame'
;------------------------------------------------------------
;slen                      Allocated with name '_mavlink_frame_slen_1_138'
;c                         Allocated with name '_mavlink_frame_c_2_139'
;sloc0                     Allocated with name '_mavlink_frame_sloc0_1_0'
;sloc1                     Allocated with name '_mavlink_frame_sloc1_1_0'
;max_xmit                  Allocated with name '_mavlink_frame_max_xmit_1_137'
;------------------------------------------------------------
;	radio/packet.c:99: uint8_t mavlink_frame(uint8_t max_xmit, __xdata uint8_t * __pdata buf)
;	-----------------------------------------
;	 function mavlink_frame
;	-----------------------------------------
_mavlink_frame:
	mov	a,dpl
	mov	dptr,#_mavlink_frame_max_xmit_1_137
	movx	@dptr,a
;	radio/packet.c:103: serial_read_buf(last_sent, mav_pkt_len);
	mov	r0,#_mav_pkt_len
	mov	r1,#_serial_read_buf_PARM_2
	movx	a,@r0
	movx	@r1,a
	mov	dptr,#_last_sent
	lcall	_serial_read_buf
;	radio/packet.c:104: last_sent_len = mav_pkt_len;
	mov	r0,#_mav_pkt_len
	movx	a,@r0
	mov	r7,a
	mov	r0,#_last_sent_len
	movx	@r0,a
;	radio/packet.c:105: memcpy(buf, last_sent, last_sent_len);
	mov	r0,#_mavlink_frame_PARM_2
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	mov	r6,#0x00
	mov	dptr,#_memcpy_PARM_2
	mov	a,#_last_sent
	movx	@dptr,a
	mov	a,#(_last_sent >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcpy_PARM_3
	mov	a,r7
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_memcpy
;	radio/packet.c:106: mav_pkt_len = 0;
	mov	r0,#_mav_pkt_len
	clr	a
	movx	@r0,a
;	radio/packet.c:108: check_heartbeat(buf);
	mov	r0,#_mavlink_frame_PARM_2
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	lcall	_check_heartbeat
;	radio/packet.c:110: slen = serial_read_available();
	lcall	_serial_read_available
	mov	_mavlink_frame_slen_1_138,dpl
	mov	(_mavlink_frame_slen_1_138 + 1),dph
;	radio/packet.c:114: while (slen >= 8) {
	mov	dptr,#_mavlink_frame_max_xmit_1_137
	movx	a,@dptr
	mov	_mavlink_frame_sloc0_1_0,a
00109$:
	clr	c
	mov	a,_mavlink_frame_slen_1_138
	subb	a,#0x08
	mov	a,(_mavlink_frame_slen_1_138 + 1)
	subb	a,#0x00
	jnc	00135$
	ljmp	00111$
00135$:
;	radio/packet.c:115: register uint8_t c = serial_peek();
	lcall	_serial_peek
	mov	_mavlink_frame_c_2_139,dpl
;	radio/packet.c:116: if (c != MAVLINK09_STX && c != MAVLINK10_STX) {
	mov	a,#0x55
	cjne	a,_mavlink_frame_c_2_139,00136$
	sjmp	00102$
00136$:
	mov	a,#0xFE
	cjne	a,_mavlink_frame_c_2_139,00137$
	sjmp	00102$
00137$:
;	radio/packet.c:118: return last_sent_len;			
	mov	r0,#_last_sent_len
	movx	a,@r0
	mov	dpl,a
	ret
00102$:
;	radio/packet.c:120: c = serial_peek2();
	lcall	_serial_peek2
	mov	_mavlink_frame_c_2_139,dpl
;	radio/packet.c:121: if (c >= 255 - 8 || 
	mov	a,#0x100 - 0xF7
	add	a,_mavlink_frame_c_2_139
	jnc	00138$
	ljmp	00111$
00138$:
;	radio/packet.c:122: c+8 > max_xmit - last_sent_len) {
	mov	r2,_mavlink_frame_c_2_139
	mov	r3,#0x00
	mov	a,#0x08
	add	a,r2
	mov	r6,a
	clr	a
	addc	a,r3
	mov	r7,a
	mov	_mavlink_frame_sloc1_1_0,_mavlink_frame_sloc0_1_0
	mov	(_mavlink_frame_sloc1_1_0 + 1),#0x00
	mov	r0,#_last_sent_len
	movx	a,@r0
	mov	r4,a
	mov	r5,#0x00
	mov	a,_mavlink_frame_sloc1_1_0
	clr	c
	subb	a,r4
	mov	r4,a
	mov	a,(_mavlink_frame_sloc1_1_0 + 1)
	subb	a,r5
	mov	r5,a
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00139$
	ljmp	00111$
00139$:
;	radio/packet.c:126: if (c+8 > slen) {
	mov	a,#0x08
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	clr	c
	mov	a,_mavlink_frame_slen_1_138
	subb	a,r2
	mov	a,(_mavlink_frame_slen_1_138 + 1)
	subb	a,r3
	jnc	00140$
	ljmp	00111$
00140$:
;	radio/packet.c:132: c += 8;
	mov	a,#0x08
	add	a,_mavlink_frame_c_2_139
	mov	_mavlink_frame_c_2_139,a
;	radio/packet.c:135: serial_read_buf(&last_sent[last_sent_len], c);
	mov	r0,#_last_sent_len
	movx	a,@r0
	add	a,#_last_sent
	mov	r6,a
	clr	a
	addc	a,#(_last_sent >> 8)
	mov	r7,a
	mov	r0,#_serial_read_buf_PARM_2
	mov	a,_mavlink_frame_c_2_139
	movx	@r0,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_serial_read_buf
;	radio/packet.c:136: memcpy(&buf[last_sent_len], &last_sent[last_sent_len], c);
	mov	r0,#_mavlink_frame_PARM_2
	mov	r1,#_last_sent_len
	movx	a,@r1
	xch	a,b
	movx	a,@r0
	add	a,b
	mov	r6,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r7,a
	mov	r5,#0x00
	mov	r0,#_last_sent_len
	movx	a,@r0
	add	a,#_last_sent
	mov	r3,a
	clr	a
	addc	a,#(_last_sent >> 8)
	mov	r4,a
	mov	dptr,#_memcpy_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcpy_PARM_3
	mov	a,_mavlink_frame_c_2_139
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_memcpy
;	radio/packet.c:138: check_heartbeat(buf+last_sent_len);
	mov	r0,#_mavlink_frame_PARM_2
	mov	r1,#_last_sent_len
	movx	a,@r1
	xch	a,b
	movx	a,@r0
	add	a,b
	mov	r6,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_check_heartbeat
;	radio/packet.c:140: last_sent_len += c;
	mov	r0,#_last_sent_len
	movx	a,@r0
	add	a,_mavlink_frame_c_2_139
	movx	@r0,a
;	radio/packet.c:141: slen -= c;
	mov	r4,_mavlink_frame_c_2_139
	mov	r7,#0x00
	mov	a,_mavlink_frame_slen_1_138
	clr	c
	subb	a,r4
	mov	_mavlink_frame_slen_1_138,a
	mov	a,(_mavlink_frame_slen_1_138 + 1)
	subb	a,r7
	mov	(_mavlink_frame_slen_1_138 + 1),a
	ljmp	00109$
00111$:
;	radio/packet.c:144: return last_sent_len;
	mov	r0,#_last_sent_len
	movx	a,@r0
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packet_get_next'
;------------------------------------------------------------
;max_xmit                  Allocated with name '_packet_get_next_max_xmit_1_143'
;slen                      Allocated with name '_packet_get_next_slen_1_144'
;c                         Allocated to registers r7 
;sloc0                     Allocated with name '_packet_get_next_sloc0_1_0'
;------------------------------------------------------------
;	radio/packet.c:150: packet_get_next(register uint8_t max_xmit, __xdata uint8_t * __pdata buf)
;	-----------------------------------------
;	 function packet_get_next
;	-----------------------------------------
_packet_get_next:
	mov	_packet_get_next_max_xmit_1_143,dpl
;	radio/packet.c:154: slen = serial_read_available();
	lcall	_serial_read_available
	mov	_packet_get_next_slen_1_144,dpl
	mov	(_packet_get_next_slen_1_144 + 1),dph
;	radio/packet.c:155: if (force_resend ||
	jb	_force_resend,00103$
;	radio/packet.c:156: (feature_opportunistic_resend &&
	jnb	_feature_opportunistic_resend,00104$
	jb	_last_sent_is_resend,00104$
;	radio/packet.c:158: last_sent_len != 0 && 
	mov	r0,#_last_sent_len
	movx	a,@r0
	jz	00104$
;	radio/packet.c:159: slen < PACKET_RESEND_THRESHOLD)) {
	clr	c
	mov	a,_packet_get_next_slen_1_144
	subb	a,#0x20
	mov	a,(_packet_get_next_slen_1_144 + 1)
	subb	a,#0x00
	jnc	00104$
00103$:
;	radio/packet.c:160: if (max_xmit < last_sent_len) {
	mov	r0,#_last_sent_len
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,_packet_get_next_max_xmit_1_143
	subb	a,b
	jnc	00102$
;	radio/packet.c:161: last_sent_len = 0;
	mov	r0,#_last_sent_len
	clr	a
	movx	@r0,a
;	radio/packet.c:162: return 0;
	mov	dpl,#0x00
	ret
00102$:
;	radio/packet.c:164: last_sent_is_resend = true;
	setb	_last_sent_is_resend
;	radio/packet.c:165: force_resend = false;
	clr	_force_resend
;	radio/packet.c:166: memcpy(buf, last_sent, last_sent_len);
	mov	r0,#_packet_get_next_PARM_2
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	mov	r4,#0x00
	mov	dptr,#_memcpy_PARM_2
	mov	a,#_last_sent
	movx	@dptr,a
	mov	a,#(_last_sent >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	r0,#_last_sent_len
	mov	dptr,#_memcpy_PARM_3
	movx	a,@r0
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	_memcpy
;	radio/packet.c:167: slen = last_sent_len;
	mov	r0,#_last_sent_len
	movx	a,@r0
	mov	_packet_get_next_slen_1_144,a
	mov	(_packet_get_next_slen_1_144 + 1),#0x00
;	radio/packet.c:168: last_sent_len = 0;
	mov	r0,#_last_sent_len
	clr	a
	movx	@r0,a
;	radio/packet.c:169: return (slen & 0xFF);
	mov	r3,_packet_get_next_slen_1_144
	mov	dpl,r3
	ret
00104$:
;	radio/packet.c:172: last_sent_is_resend = false;
	clr	_last_sent_is_resend
;	radio/packet.c:174: if (injected_packet) {
	jb	_injected_packet,00241$
	ljmp	00112$
00241$:
;	radio/packet.c:176: slen = last_sent_len;
	mov	r0,#_last_sent_len
	movx	a,@r0
	mov	r3,a
	mov	r4,#0x00
	mov	_packet_get_next_slen_1_144,r3
	mov	(_packet_get_next_slen_1_144 + 1),r4
;	radio/packet.c:177: if (max_xmit < slen) {
	mov	_packet_get_next_sloc0_1_0,_packet_get_next_max_xmit_1_143
	mov	(_packet_get_next_sloc0_1_0 + 1),#0x00
	clr	c
	mov	a,_packet_get_next_sloc0_1_0
	subb	a,_packet_get_next_slen_1_144
	mov	a,(_packet_get_next_sloc0_1_0 + 1)
	subb	a,(_packet_get_next_slen_1_144 + 1)
	jnc	00110$
;	radio/packet.c:179: memcpy(buf, last_sent, max_xmit);
	mov	r0,#_packet_get_next_PARM_2
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#_memcpy_PARM_2
	mov	a,#_last_sent
	movx	@dptr,a
	mov	a,#(_last_sent >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcpy_PARM_3
	mov	a,_packet_get_next_sloc0_1_0
	movx	@dptr,a
	mov	a,(_packet_get_next_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
;	radio/packet.c:180: memcpy(last_sent, &last_sent[max_xmit], slen - max_xmit);
	mov	a,_packet_get_next_max_xmit_1_143
	add	a,#_last_sent
	mov	r6,a
	clr	a
	addc	a,#(_last_sent >> 8)
	mov	r7,a
	mov	dptr,#_memcpy_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	r6,_packet_get_next_max_xmit_1_143
	mov	r7,#0x00
	mov	dptr,#_memcpy_PARM_3
	mov	a,_packet_get_next_slen_1_144
	clr	c
	subb	a,r6
	movx	@dptr,a
	mov	a,(_packet_get_next_slen_1_144 + 1)
	subb	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_last_sent
	mov	b,#0x00
	lcall	_memcpy
;	radio/packet.c:181: last_sent_len = slen - max_xmit;
	mov	a,_packet_get_next_slen_1_144
	clr	c
	subb	a,_packet_get_next_max_xmit_1_143
	mov	r0,#_last_sent_len
	movx	@r0,a
;	radio/packet.c:182: last_sent_is_injected = true;
	setb	_last_sent_is_injected
;	radio/packet.c:183: return max_xmit;
	mov	dpl,_packet_get_next_max_xmit_1_143
	ret
00110$:
;	radio/packet.c:186: memcpy(buf, last_sent, last_sent_len);
	mov	r0,#_packet_get_next_PARM_2
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#_memcpy_PARM_2
	mov	a,#_last_sent
	movx	@dptr,a
	mov	a,#(_last_sent >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcpy_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
;	radio/packet.c:187: injected_packet = false;
	clr	_injected_packet
;	radio/packet.c:188: last_sent_is_injected = true;
	setb	_last_sent_is_injected
;	radio/packet.c:189: return last_sent_len;
	mov	r0,#_last_sent_len
	movx	a,@r0
	mov	dpl,a
	ret
00112$:
;	radio/packet.c:192: last_sent_is_injected = false;
	clr	_last_sent_is_injected
;	radio/packet.c:196: if (slen > max_xmit) {
	mov	r6,_packet_get_next_max_xmit_1_143
	mov	r7,#0x00
	clr	c
	mov	a,r6
	subb	a,_packet_get_next_slen_1_144
	mov	a,r7
	subb	a,(_packet_get_next_slen_1_144 + 1)
	jnc	00114$
;	radio/packet.c:197: slen = max_xmit;
	mov	_packet_get_next_slen_1_144,r6
	mov	(_packet_get_next_slen_1_144 + 1),r7
00114$:
;	radio/packet.c:200: last_sent_len = 0;
	mov	r0,#_last_sent_len
	clr	a
	movx	@r0,a
;	radio/packet.c:202: if (slen == 0) {
	mov	a,_packet_get_next_slen_1_144
	orl	a,(_packet_get_next_slen_1_144 + 1)
;	radio/packet.c:204: return 0;
	jnz	00116$
	mov	dpl,a
	ret
00116$:
;	radio/packet.c:207: if (!feature_mavlink_framing) {
	jb	_feature_mavlink_framing,00122$
;	radio/packet.c:209: if (slen > 0 && serial_read_buf(buf, slen)) {
	mov	a,_packet_get_next_slen_1_144
	orl	a,(_packet_get_next_slen_1_144 + 1)
	jz	00118$
	mov	r5,_packet_get_next_slen_1_144
	mov	r0,#_serial_read_buf_PARM_2
	mov	a,r5
	movx	@r0,a
	mov	r0,#_packet_get_next_PARM_2
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	push	ar5
	lcall	_serial_read_buf
	pop	ar5
	jnc	00118$
;	radio/packet.c:210: memcpy(last_sent, buf, slen);
	mov	r0,#_packet_get_next_PARM_2
	mov	dptr,#_memcpy_PARM_2
	movx	a,@r0
	movx	@dptr,a
	inc	r0
	movx	a,@r0
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcpy_PARM_3
	mov	a,_packet_get_next_slen_1_144
	movx	@dptr,a
	mov	a,(_packet_get_next_slen_1_144 + 1)
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_last_sent
	mov	b,#0x00
	push	ar5
	lcall	_memcpy
	pop	ar5
;	radio/packet.c:211: last_sent_len = slen;
	mov	r0,#_last_sent_len
	mov	a,r5
	movx	@r0,a
	sjmp	00119$
00118$:
;	radio/packet.c:213: last_sent_len = 0;
	mov	r0,#_last_sent_len
	clr	a
	movx	@r0,a
00119$:
;	radio/packet.c:215: return last_sent_len;
	mov	r0,#_last_sent_len
	movx	a,@r0
	mov	dpl,a
	ret
00122$:
;	radio/packet.c:220: if (mav_pkt_len == 1) {
	mov	r0,#_mav_pkt_len
	movx	a,@r0
	cjne	a,#0x01,00248$
	sjmp	00249$
00248$:
	ljmp	00128$
00249$:
;	radio/packet.c:222: if (slen == 1) {
	mov	a,#0x01
	cjne	a,_packet_get_next_slen_1_144,00250$
	clr	a
	cjne	a,(_packet_get_next_slen_1_144 + 1),00250$
	sjmp	00251$
00250$:
	sjmp	00126$
00251$:
;	radio/packet.c:223: if ((uint16_t)(timer2_tick() - mav_pkt_start_time) > mav_pkt_max_time) {
	lcall	_timer2_tick
	mov	r6,dpl
	mov	r7,dph
	mov	r0,#_mav_pkt_start_time
	setb	c
	movx	a,@r0
	subb	a,r6
	cpl	a
	cpl	c
	mov	r6,a
	cpl	c
	inc	r0
	movx	a,@r0
	subb	a,r7
	cpl	a
	mov	r7,a
	mov	r0,#_mav_pkt_max_time
	clr	c
	movx	a,@r0
	subb	a,r6
	inc	r0
	movx	a,@r0
	subb	a,r7
	jnc	00124$
;	radio/packet.c:225: last_sent[last_sent_len++] = serial_read();
	mov	r0,#_last_sent_len
	movx	a,@r0
	mov	r7,a
	mov	r0,#_last_sent_len
	inc	a
	movx	@r0,a
	mov	a,r7
	add	a,#_last_sent
	mov	r7,a
	clr	a
	addc	a,#(_last_sent >> 8)
	mov	r6,a
	push	ar7
	push	ar6
	lcall	_serial_read
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	dpl,r7
	mov	dph,r6
	mov	a,r5
	movx	@dptr,a
;	radio/packet.c:226: memcpy(buf, last_sent, last_sent_len);				
	mov	r0,#_packet_get_next_PARM_2
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#_memcpy_PARM_2
	mov	a,#_last_sent
	movx	@dptr,a
	mov	a,#(_last_sent >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	r0,#_last_sent_len
	mov	dptr,#_memcpy_PARM_3
	movx	a,@r0
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
;	radio/packet.c:227: mav_pkt_len = 0;
	mov	r0,#_mav_pkt_len
	clr	a
	movx	@r0,a
;	radio/packet.c:228: return last_sent_len;
	mov	r0,#_last_sent_len
	movx	a,@r0
	mov	dpl,a
	ret
00124$:
;	radio/packet.c:231: return 0;
	mov	dpl,#0x00
	ret
00126$:
;	radio/packet.c:235: mav_pkt_len = 0;
	mov	r0,#_mav_pkt_len
	clr	a
	movx	@r0,a
00128$:
;	radio/packet.c:239: if (mav_pkt_len != 0) {
	mov	r0,#_mav_pkt_len
	movx	a,@r0
	jnz	00253$
	ljmp	00180$
00253$:
;	radio/packet.c:240: if (slen < mav_pkt_len) {
	mov	r0,#_mav_pkt_len
	movx	a,@r0
	mov	r6,a
	mov	r7,#0x00
	clr	c
	mov	a,_packet_get_next_slen_1_144
	subb	a,r6
	mov	a,(_packet_get_next_slen_1_144 + 1)
	subb	a,r7
	jnc	00132$
;	radio/packet.c:241: if ((uint16_t)(timer2_tick() - mav_pkt_start_time) > mav_pkt_max_time) {
	lcall	_timer2_tick
	mov	r6,dpl
	mov	r7,dph
	mov	r0,#_mav_pkt_start_time
	setb	c
	movx	a,@r0
	subb	a,r6
	cpl	a
	cpl	c
	mov	r6,a
	cpl	c
	inc	r0
	movx	a,@r0
	subb	a,r7
	cpl	a
	mov	r7,a
	mov	r0,#_mav_pkt_max_time
	clr	c
	movx	a,@r0
	subb	a,r6
	inc	r0
	movx	a,@r0
	subb	a,r7
	jnc	00130$
;	radio/packet.c:244: serial_read_buf(last_sent, slen);
	mov	r5,_packet_get_next_slen_1_144
	mov	r0,#_serial_read_buf_PARM_2
	mov	a,r5
	movx	@r0,a
	mov	dptr,#_last_sent
	push	ar5
	lcall	_serial_read_buf
	pop	ar5
;	radio/packet.c:245: last_sent_len = slen;
	mov	r0,#_last_sent_len
	mov	a,r5
	movx	@r0,a
;	radio/packet.c:246: memcpy(buf, last_sent, last_sent_len);
	mov	r0,#_packet_get_next_PARM_2
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#_memcpy_PARM_2
	mov	a,#_last_sent
	movx	@dptr,a
	mov	a,#(_last_sent >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcpy_PARM_3
	mov	a,r5
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
;	radio/packet.c:247: mav_pkt_len = 0;
	mov	r0,#_mav_pkt_len
	clr	a
	movx	@r0,a
;	radio/packet.c:248: return last_sent_len;
	mov	r0,#_last_sent_len
	movx	a,@r0
	mov	dpl,a
	ret
00130$:
;	radio/packet.c:252: return 0;
	mov	dpl,#0x00
	ret
00132$:
;	radio/packet.c:256: return mavlink_frame(max_xmit, buf);
	mov	r0,#_packet_get_next_PARM_2
	mov	r1,#_mavlink_frame_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	dpl,_packet_get_next_max_xmit_1_143
	ljmp	_mavlink_frame
;	radio/packet.c:259: while (slen > 0) {
00180$:
00152$:
	mov	a,_packet_get_next_slen_1_144
	orl	a,(_packet_get_next_slen_1_144 + 1)
	jnz	00256$
	ljmp	00154$
00256$:
;	radio/packet.c:260: register uint8_t c = serial_peek();
	lcall	_serial_peek
	mov	r7,dpl
;	radio/packet.c:261: if (c == MAVLINK09_STX || c == MAVLINK10_STX) {
	cjne	r7,#0x55,00257$
	sjmp	00148$
00257$:
	cjne	r7,#0xFE,00258$
	sjmp	00259$
00258$:
	ljmp	00149$
00259$:
00148$:
;	radio/packet.c:262: if (slen == 1) {
	mov	a,#0x01
	cjne	a,_packet_get_next_slen_1_144,00260$
	clr	a
	cjne	a,(_packet_get_next_slen_1_144 + 1),00260$
	sjmp	00261$
00260$:
	sjmp	00138$
00261$:
;	radio/packet.c:264: if (last_sent_len == 0) {
	mov	r0,#_last_sent_len
	movx	a,@r0
	jz	00262$
	ljmp	00154$
00262$:
;	radio/packet.c:267: mav_pkt_len = 1;
	mov	r0,#_mav_pkt_len
	mov	a,#0x01
	movx	@r0,a
;	radio/packet.c:268: mav_pkt_start_time = timer2_tick();
	lcall	_timer2_tick
	mov	a,dpl
	mov	b,dph
	mov	r0,#_mav_pkt_start_time
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
;	radio/packet.c:269: mav_pkt_max_time = serial_rate;
	mov	r0,#_serial_rate
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	r0,#_mav_pkt_max_time
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
;	radio/packet.c:270: return 0;
	mov	dpl,#0x00
	ret
;	radio/packet.c:272: break;
00138$:
;	radio/packet.c:274: mav_pkt_len = serial_peek2();
	lcall	_serial_peek2
	mov	r7,dpl
	mov	r0,#_mav_pkt_len
	mov	a,r7
	movx	@r0,a
;	radio/packet.c:275: if (mav_pkt_len >= 255-8 ||
	cjne	r7,#0xF7,00263$
00263$:
	jnc	00139$
;	radio/packet.c:276: mav_pkt_len+8 > mav_max_xmit) {
	mov	ar5,r7
	mov	r6,#0x00
	mov	a,#0x08
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	r0,#_mav_max_xmit
	movx	a,@r0
	mov	r3,a
	mov	r4,#0x00
	clr	c
	mov	a,r3
	subb	a,r5
	mov	a,r4
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00140$
00139$:
;	radio/packet.c:278: mav_pkt_len = 0;
	mov	r0,#_mav_pkt_len
	clr	a
	movx	@r0,a
;	radio/packet.c:279: last_sent[last_sent_len++] = serial_read();
	mov	r0,#_last_sent_len
	movx	a,@r0
	mov	r6,a
	mov	r0,#_last_sent_len
	inc	a
	movx	@r0,a
	mov	a,r6
	add	a,#_last_sent
	mov	r6,a
	clr	a
	addc	a,#(_last_sent >> 8)
	mov	r5,a
	push	ar6
	push	ar5
	lcall	_serial_read
	mov	r4,dpl
	pop	ar5
	pop	ar6
	mov	dpl,r6
	mov	dph,r5
	mov	a,r4
	movx	@dptr,a
;	radio/packet.c:280: slen--;				
	dec	_packet_get_next_slen_1_144
	mov	a,#0xFF
	cjne	a,_packet_get_next_slen_1_144,00266$
	dec	(_packet_get_next_slen_1_144 + 1)
00266$:
;	radio/packet.c:281: continue;
	ljmp	00152$
00140$:
;	radio/packet.c:286: mav_pkt_len += 8;
	mov	a,#0x08
	add	a,r7
	mov	r7,a
	mov	r0,#_mav_pkt_len
	movx	@r0,a
;	radio/packet.c:288: if (last_sent_len != 0) {
	mov	r0,#_last_sent_len
	movx	a,@r0
	jz	00146$
;	radio/packet.c:292: memcpy(buf, last_sent, last_sent_len);
	mov	r0,#_packet_get_next_PARM_2
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	mov	r6,#0x00
	mov	dptr,#_memcpy_PARM_2
	mov	a,#_last_sent
	movx	@dptr,a
	mov	a,#(_last_sent >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	r0,#_last_sent_len
	mov	dptr,#_memcpy_PARM_3
	movx	a,@r0
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_memcpy
;	radio/packet.c:293: mav_pkt_start_time = timer2_tick();
	lcall	_timer2_tick
	mov	a,dpl
	mov	b,dph
	mov	r0,#_mav_pkt_start_time
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
;	radio/packet.c:294: mav_pkt_max_time = mav_pkt_len * serial_rate;
	mov	r0,#_mav_pkt_len
	movx	a,@r0
	mov	r5,a
	mov	r6,#0x00
	mov	r0,#_serial_rate
	mov	dptr,#__mulint_PARM_2
	movx	a,@r0
	movx	@dptr,a
	inc	r0
	movx	a,@r0
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	mov	r0,#_mav_pkt_max_time
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
;	radio/packet.c:295: return last_sent_len;
	mov	r0,#_last_sent_len
	movx	a,@r0
	mov	dpl,a
	ret
00146$:
;	radio/packet.c:296: } else if (mav_pkt_len > slen) {
	mov	r6,#0x00
	clr	c
	mov	a,_packet_get_next_slen_1_144
	subb	a,r7
	mov	a,(_packet_get_next_slen_1_144 + 1)
	subb	a,r6
	jnc	00143$
;	radio/packet.c:299: mav_pkt_start_time = timer2_tick();
	lcall	_timer2_tick
	mov	a,dpl
	mov	b,dph
	mov	r0,#_mav_pkt_start_time
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
;	radio/packet.c:300: mav_pkt_max_time = mav_pkt_len * serial_rate;
	mov	r0,#_mav_pkt_len
	movx	a,@r0
	mov	r6,a
	mov	r7,#0x00
	mov	r0,#_serial_rate
	mov	dptr,#__mulint_PARM_2
	movx	a,@r0
	movx	@dptr,a
	inc	r0
	movx	a,@r0
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	mov	r0,#_mav_pkt_max_time
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
;	radio/packet.c:301: return 0;					
	mov	dpl,#0x00
	ret
00143$:
;	radio/packet.c:305: return mavlink_frame(max_xmit, buf);
	mov	r0,#_packet_get_next_PARM_2
	mov	r1,#_mavlink_frame_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	dpl,_packet_get_next_max_xmit_1_143
	ljmp	_mavlink_frame
00149$:
;	radio/packet.c:308: last_sent[last_sent_len++] = serial_read();
	mov	r0,#_last_sent_len
	movx	a,@r0
	mov	r7,a
	mov	r0,#_last_sent_len
	inc	a
	movx	@r0,a
	mov	a,r7
	add	a,#_last_sent
	mov	r7,a
	clr	a
	addc	a,#(_last_sent >> 8)
	mov	r6,a
	push	ar7
	push	ar6
	lcall	_serial_read
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	dpl,r7
	mov	dph,r6
	mov	a,r5
	movx	@dptr,a
;	radio/packet.c:309: slen--;
	dec	_packet_get_next_slen_1_144
	mov	a,#0xFF
	cjne	a,_packet_get_next_slen_1_144,00269$
	dec	(_packet_get_next_slen_1_144 + 1)
00269$:
	ljmp	00152$
00154$:
;	radio/packet.c:313: memcpy(buf, last_sent, last_sent_len);
	mov	r0,#_packet_get_next_PARM_2
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#_memcpy_PARM_2
	mov	a,#_last_sent
	movx	@dptr,a
	mov	a,#(_last_sent >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	r0,#_last_sent_len
	mov	dptr,#_memcpy_PARM_3
	movx	a,@r0
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
;	radio/packet.c:314: return last_sent_len;
	mov	r0,#_last_sent_len
	movx	a,@r0
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packet_is_resend'
;------------------------------------------------------------
;	radio/packet.c:320: packet_is_resend(void)
;	-----------------------------------------
;	 function packet_is_resend
;	-----------------------------------------
_packet_is_resend:
;	radio/packet.c:322: return last_sent_is_resend;
	mov	c,_last_sent_is_resend
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packet_is_injected'
;------------------------------------------------------------
;	radio/packet.c:328: packet_is_injected(void)
;	-----------------------------------------
;	 function packet_is_injected
;	-----------------------------------------
_packet_is_injected:
;	radio/packet.c:330: return last_sent_is_injected;
	mov	c,_last_sent_is_injected
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packet_force_resend'
;------------------------------------------------------------
;	radio/packet.c:335: packet_force_resend(void)
;	-----------------------------------------
;	 function packet_force_resend
;	-----------------------------------------
_packet_force_resend:
;	radio/packet.c:337: force_resend = true;
	setb	_force_resend
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packet_set_max_xmit'
;------------------------------------------------------------
;max                       Allocated with name '_packet_set_max_xmit_max_1_175'
;------------------------------------------------------------
;	radio/packet.c:342: packet_set_max_xmit(uint8_t max)
;	-----------------------------------------
;	 function packet_set_max_xmit
;	-----------------------------------------
_packet_set_max_xmit:
	mov	a,dpl
;	radio/packet.c:344: mav_max_xmit = max;
	mov	dptr,#_packet_set_max_xmit_max_1_175
	movx	@dptr,a
	mov	r0,#_mav_max_xmit
	movx	@r0,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packet_set_serial_speed'
;------------------------------------------------------------
;speed                     Allocated with name '_packet_set_serial_speed_speed_1_177'
;------------------------------------------------------------
;	radio/packet.c:349: packet_set_serial_speed(uint16_t speed)
;	-----------------------------------------
;	 function packet_set_serial_speed
;	-----------------------------------------
_packet_set_serial_speed:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_packet_set_serial_speed_speed_1_177
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	radio/packet.c:352: serial_rate = (65536UL / speed) + 1;
	mov	dptr,#_packet_set_serial_speed_speed_1_177
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__divulong_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0000
	mov	b,#0x01
	clr	a
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	inc	r4
	cjne	r4,#0x00,00103$
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
00103$:
	mov	r0,#_serial_rate
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packet_is_duplicate'
;------------------------------------------------------------
;len                       Allocated with name '_packet_is_duplicate_len_1_179'
;------------------------------------------------------------
;	radio/packet.c:357: packet_is_duplicate(uint8_t len, __xdata uint8_t * __pdata buf, bool is_resend)
;	-----------------------------------------
;	 function packet_is_duplicate
;	-----------------------------------------
_packet_is_duplicate:
	mov	a,dpl
	mov	dptr,#_packet_is_duplicate_len_1_179
	movx	@dptr,a
;	radio/packet.c:359: if (!is_resend) {
	jb	_packet_is_duplicate_PARM_3,00102$
;	radio/packet.c:360: memcpy(last_received, buf, len);
	mov	r0,#_packet_is_duplicate_PARM_2
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#_packet_is_duplicate_len_1_179
	movx	a,@dptr
	mov	r4,a
	mov	r2,a
	mov	r3,#0x00
	mov	dptr,#_memcpy_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcpy_PARM_3
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_last_received
	mov	b,#0x00
	push	ar4
	lcall	_memcpy
	pop	ar4
;	radio/packet.c:361: last_recv_len = len;
	mov	r0,#_last_recv_len
	mov	a,r4
	movx	@r0,a
;	radio/packet.c:362: last_recv_is_resend = false;
	clr	_last_recv_is_resend
;	radio/packet.c:363: return false;
	clr	c
	ret
00102$:
;	radio/packet.c:367: memcmp(last_received, buf, len) == 0) {
	jb	_last_recv_is_resend,00104$
;	radio/packet.c:366: len == last_recv_len &&
	mov	dptr,#_packet_is_duplicate_len_1_179
	movx	a,@dptr
	mov	r7,a
	mov	r0,#_last_recv_len
	movx	a,@r0
	cjne	a,ar7,00104$
;	radio/packet.c:367: memcmp(last_received, buf, len) == 0) {
	mov	r0,#_packet_is_duplicate_PARM_2
	mov	dptr,#_memcmp_PARM_2
	movx	a,@r0
	movx	@dptr,a
	inc	r0
	movx	a,@r0
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcmp_PARM_3
	mov	a,r7
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_last_received
	mov	b,#0x00
	lcall	_memcmp
	mov	a,dpl
	mov	b,dph
	orl	a,b
	jnz	00104$
;	radio/packet.c:368: last_recv_is_resend = false;
	clr	_last_recv_is_resend
;	radio/packet.c:369: return true;
	setb	c
	ret
00104$:
;	radio/packet.c:377: last_recv_is_resend = true;
	setb	_last_recv_is_resend
;	radio/packet.c:378: return false;
	clr	c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'packet_inject'
;------------------------------------------------------------
;	radio/packet.c:383: packet_inject(__xdata uint8_t * __pdata buf, __pdata uint8_t len)
;	-----------------------------------------
;	 function packet_inject
;	-----------------------------------------
_packet_inject:
	mov	r6,dpl
	mov	r7,dph
;	radio/packet.c:385: if (len > sizeof(last_sent)) {
	mov	r0,#_packet_inject_PARM_2
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,#0xFC
	subb	a,b
	jnc	00102$
;	radio/packet.c:386: len = sizeof(last_sent);
	mov	r0,#_packet_inject_PARM_2
	mov	a,#0xFC
	movx	@r0,a
00102$:
;	radio/packet.c:388: memcpy(last_sent, buf, len);
	mov	dptr,#_memcpy_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	r0,#_packet_inject_PARM_2
	mov	dptr,#_memcpy_PARM_3
	movx	a,@r0
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_last_sent
	mov	b,#0x00
	lcall	_memcpy
;	radio/packet.c:389: last_sent_len = len;
	mov	r0,#_packet_inject_PARM_2
	movx	a,@r0
	mov	r0,#_last_sent_len
	movx	@r0,a
;	radio/packet.c:390: last_sent_is_resend = false;
	clr	_last_sent_is_resend
;	radio/packet.c:391: injected_packet = true;
	setb	_injected_packet
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
