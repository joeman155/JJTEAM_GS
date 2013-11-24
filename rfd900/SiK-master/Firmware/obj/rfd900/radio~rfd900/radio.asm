;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.0 #8604 (May 11 2013) (Linux)
; This file was generated Sun Nov 24 17:43:13 2013
;--------------------------------------------------------
	.module radio
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Receiver_ISR
	.globl _crc16
	.globl _golay_decode
	.globl _golay_encode
	.globl _delay_msec
	.globl _delay_expired
	.globl _delay_set
	.globl _timer2_tick
	.globl _panic
	.globl _param_get
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
	.globl _radio_buffer
	.globl _radio_transmit_PARM_3
	.globl _radio_transmit_PARM_2
	.globl _radio_receive_packet_PARM_2
	.globl _settings
	.globl _netid
	.globl _last_rssi
	.globl _partial_packet_length
	.globl _receive_packet_length
	.globl _radio_set_diversity_PARM_1
	.globl _radio_receive_packet
	.globl _radio_receive_in_progress
	.globl _radio_preamble_detected
	.globl _radio_last_rssi
	.globl _radio_current_rssi
	.globl _radio_air_rate
	.globl _radio_transmit
	.globl _radio_receiver_on
	.globl _radio_initialise
	.globl _radio_set_frequency
	.globl _radio_set_channel_spacing
	.globl _radio_set_channel
	.globl _radio_get_channel
	.globl _radio_configure
	.globl _radio_set_transmit_power
	.globl _radio_get_transmit_power
	.globl _radio_set_network_id
	.globl _radio_temperature
	.globl _radio_set_diversity
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_radio_receive_packet_crc1_1_135:
	.ds 2
_radio_transmit_golay_elen_1_186:
	.ds 1
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
_packet_received:
	.ds 1
_preamble_detected:
	.ds 1
_radio_preamble_detected_EX0_saved_1_157:
	.ds 1
_radio_transmit_simple_transmit_started_1_170:
	.ds 1
_radio_transmit_golay_sloc0_1_0:
	.ds 1
_radio_transmit_EX0_saved_1_189:
	.ds 1
_radio_transmit_sloc0_1_0:
	.ds 1
_radio_initialise_sloc0_1_0:
	.ds 1
_radio_set_diversity_PARM_1:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
_receive_packet_length::
	.ds 1
_partial_packet_length::
	.ds 1
_last_rssi::
	.ds 1
_netid::
	.ds 2
_settings::
	.ds 12
_radio_receive_packet_PARM_2:
	.ds 2
_radio_write_transmit_fifo_PARM_2:
	.ds 2
_radio_transmit_simple_PARM_2:
	.ds 2
_radio_transmit_simple_PARM_3:
	.ds 2
_radio_transmit_golay_PARM_2:
	.ds 2
_radio_transmit_golay_PARM_3:
	.ds 2
_radio_transmit_PARM_2:
	.ds 2
_radio_transmit_PARM_3:
	.ds 2
_scale_uint32_PARM_2:
	.ds 4
_scale_uint32_value_1_248:
	.ds 4
_set_frequency_registers_frequency_1_256:
	.ds 4
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_radio_buffer::
	.ds 252
_radio_receive_packet_length_1_134:
	.ds 3
_radio_receive_packet_gout_1_135:
	.ds 3
_radio_transmit_golay_length_1_185:
	.ds 1
_radio_transmit_golay_gin_1_186:
	.ds 3
_radio_transmit_length_1_188:
	.ds 1
_radio_set_channel_channel_1_206:
	.ds 1
_radio_set_transmit_power_power_1_230:
	.ds 1
_radio_set_transmit_power_i_1_231:
	.ds 1
_radio_set_network_id_id_1_236:
	.ds 2
_set_frequency_registers_band_1_257:
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
;Allocation info for local variables in function 'radio_receive_packet'
;------------------------------------------------------------
;crc1                      Allocated with name '_radio_receive_packet_crc1_1_135'
;crc2                      Allocated to registers r5 r7 
;errcount                  Allocated to registers r6 
;elen                      Allocated to registers r7 
;length                    Allocated with name '_radio_receive_packet_length_1_134'
;gout                      Allocated with name '_radio_receive_packet_gout_1_135'
;------------------------------------------------------------
;	radio/radio.c:77: radio_receive_packet(uint8_t *length, __xdata uint8_t * __pdata buf)
;	-----------------------------------------
;	 function radio_receive_packet
;	-----------------------------------------
_radio_receive_packet:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_radio_receive_packet_length_1_134
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	radio/radio.c:84: if (!packet_received) {
	jb	_packet_received,00102$
;	radio/radio.c:85: return false;
	clr	c
	ret
00102$:
;	radio/radio.c:88: if (receive_packet_length > MAX_PACKET_LENGTH) {
	mov	r0,#_receive_packet_length
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,#0xFC
	subb	a,b
	jnc	00104$
;	radio/radio.c:89: radio_receiver_on();
	lcall	_radio_receiver_on
;	radio/radio.c:90: goto failed;
	ljmp	00126$
00104$:
;	radio/radio.c:101: if (!feature_golay) {
	jb	_feature_golay,00106$
;	radio/radio.c:103: *length = receive_packet_length;
	mov	dptr,#_radio_receive_packet_length_1_134
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	r0,#_receive_packet_length
	movx	a,@r0
	lcall	__gptrput
;	radio/radio.c:104: memcpy(buf, radio_buffer, receive_packet_length);
	mov	r0,#_radio_receive_packet_PARM_2
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#_memcpy_PARM_2
	mov	a,#_radio_buffer
	movx	@dptr,a
	mov	a,#(_radio_buffer >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	r0,#_receive_packet_length
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
;	radio/radio.c:105: radio_receiver_on();
	lcall	_radio_receiver_on
;	radio/radio.c:106: return true;
	setb	c
	ret
00106$:
;	radio/radio.c:112: memcpy(buf, radio_buffer, receive_packet_length);
	mov	r0,#_radio_receive_packet_PARM_2
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#_memcpy_PARM_2
	mov	a,#_radio_buffer
	movx	@dptr,a
	mov	a,#(_radio_buffer >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	r0,#_receive_packet_length
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
;	radio/radio.c:116: elen = receive_packet_length;
	mov	r0,#_receive_packet_length
	movx	a,@r0
	mov	r7,a
;	radio/radio.c:117: radio_receiver_on();	
	push	ar7
	lcall	_radio_receiver_on
	pop	ar7
;	radio/radio.c:119: if (elen < 12 || (elen%6) != 0) {
	cjne	r7,#0x0C,00176$
00176$:
	jnc	00177$
	ljmp	00126$
00177$:
	mov	b,#0x06
	mov	a,r7
	div	ab
	mov	a,b
	jz	00178$
	ljmp	00126$
00178$:
;	radio/radio.c:126: errcount = golay_decode(6, buf, gout);
	mov	r0,#_radio_receive_packet_PARM_2
	mov	r1,#_golay_decode_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	r0,#_golay_decode_PARM_3
	mov	a,#_radio_receive_packet_gout_1_135
	movx	@r0,a
	inc	r0
	mov	a,#(_radio_receive_packet_gout_1_135 >> 8)
	movx	@r0,a
	mov	dpl,#0x06
	push	ar7
	lcall	_golay_decode
	mov	r6,dpl
	pop	ar7
;	radio/radio.c:127: if (gout[0] != netid[0] ||
	mov	dptr,#_radio_receive_packet_gout_1_135
	movx	a,@dptr
	mov	r5,a
	mov	r0,#_netid
	movx	a,@r0
	mov	r4,a
	mov	a,r5
	cjne	a,ar4,00179$
	sjmp	00180$
00179$:
	ljmp	00126$
00180$:
;	radio/radio.c:128: gout[1] != netid[1]) {
	mov	dptr,#(_radio_receive_packet_gout_1_135 + 0x0001)
	movx	a,@dptr
	mov	r5,a
	mov	r0,#(_netid + 0x0001)
	movx	a,@r0
	mov	r4,a
	mov	a,r5
	cjne	a,ar4,00181$
	sjmp	00182$
00181$:
	ljmp	00126$
00182$:
;	radio/radio.c:136: if (6*((gout[2]+2)/3+2) != elen) {
	mov	dptr,#(_radio_receive_packet_gout_1_135 + 0x0002)
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r4
	mov	r4,a
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r4
	push	ar7
	push	ar6
	lcall	__divsint
	mov	a,dpl
	mov	b,dph
	mov	dptr,#__mulint_PARM_2
	add	a,#0x02
	movx	@dptr,a
	clr	a
	addc	a,b
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0006
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	ar2,r7
	mov	r3,#0x00
	mov	a,r4
	cjne	a,ar2,00183$
	mov	a,r5
	cjne	a,ar3,00183$
	sjmp	00184$
00183$:
	ljmp	00126$
00184$:
;	radio/radio.c:144: errcount += golay_decode(6, &buf[6], gout);
	mov	r0,#_radio_receive_packet_PARM_2
	mov	r1,#_golay_decode_PARM_2
	movx	a,@r0
	add	a,#0x06
	movx	@r1,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	inc	r1
	movx	@r1,a
	mov	r0,#_golay_decode_PARM_3
	mov	a,#_radio_receive_packet_gout_1_135
	movx	@r0,a
	inc	r0
	mov	a,#(_radio_receive_packet_gout_1_135 >> 8)
	movx	@r0,a
	mov	dpl,#0x06
	push	ar7
	push	ar6
	lcall	_golay_decode
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	a,r5
	add	a,r6
	mov	r6,a
;	radio/radio.c:145: crc1 = gout[0] | (((uint16_t)gout[1])<<8);
	mov	dptr,#_radio_receive_packet_gout_1_135
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#(_radio_receive_packet_gout_1_135 + 0x0001)
	movx	a,@dptr
	mov	r3,a
	clr	a
	mov	r4,a
	mov	r2,a
	orl	a,r5
	mov	_radio_receive_packet_crc1_1_135,a
	mov	a,r3
	orl	a,r2
	mov	(_radio_receive_packet_crc1_1_135 + 1),a
;	radio/radio.c:147: if (elen != 12) {
	cjne	r7,#0x0C,00185$
	sjmp	00116$
00185$:
;	radio/radio.c:148: errcount += golay_decode(elen-12, &buf[12], buf);
	mov	a,r7
	add	a,#0xF4
	mov	r7,a
	mov	r0,#_radio_receive_packet_PARM_2
	mov	r1,#_golay_decode_PARM_2
	movx	a,@r0
	add	a,#0x0C
	movx	@r1,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	inc	r1
	movx	@r1,a
	mov	r0,#_radio_receive_packet_PARM_2
	mov	r1,#_golay_decode_PARM_3
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	dpl,r7
	push	ar6
	lcall	_golay_decode
	mov	r7,dpl
	pop	ar6
	mov	a,r7
	add	a,r6
	mov	r6,a
00116$:
;	radio/radio.c:151: *length = gout[2];
	mov	dptr,#_radio_receive_packet_length_1_134
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_radio_receive_packet_gout_1_135 + 0x0002)
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r7
	lcall	__gptrput
;	radio/radio.c:153: crc2 = crc16(*length, buf);
	mov	r0,#_radio_receive_packet_PARM_2
	movx	a,@r0
	mov	_crc16_PARM_2,a
	inc	r0
	movx	a,@r0
	mov	(_crc16_PARM_2 + 1),a
	mov	dpl,r5
	push	ar6
	lcall	_crc16
	mov	r5,dpl
	mov	r7,dph
	pop	ar6
;	radio/radio.c:155: if (crc1 != crc2) {
	mov	a,r5
	cjne	a,_radio_receive_packet_crc1_1_135,00126$
	mov	a,r7
	cjne	a,(_radio_receive_packet_crc1_1_135 + 1),00126$
;	radio/radio.c:165: if (errcount != 0) {
	mov	a,r6
	jz	00125$
;	radio/radio.c:166: if ((uint16_t)(0xFFFF - errcount) > errors.corrected_errors) {
	mov	r7,#0x00
	mov	a,#0xFF
	clr	c
	subb	a,r6
	mov	r4,a
	mov	a,#0xFF
	subb	a,r7
	mov	r5,a
	mov	r0,#(_errors + 0x0008)
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	clr	c
	mov	a,r2
	subb	a,r4
	mov	a,r3
	subb	a,r5
	jnc	00120$
;	radio/radio.c:167: errors.corrected_errors += errcount;
	mov	a,r6
	add	a,r2
	mov	r6,a
	mov	a,r7
	addc	a,r3
	mov	r7,a
	mov	r0,#(_errors + 0x0008)
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	sjmp	00121$
00120$:
;	radio/radio.c:169: errors.corrected_errors = 0xFFFF;
	mov	r0,#(_errors + 0x0008)
	mov	a,#0xFF
	movx	@r0,a
	inc	r0
	mov	a,#0xFF
	movx	@r0,a
00121$:
;	radio/radio.c:171: if (errors.corrected_packets != 0xFFFF) {
	mov	r0,#(_errors + 0x000a)
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	cjne	r6,#0xFF,00190$
	cjne	r7,#0xFF,00190$
	sjmp	00125$
00190$:
;	radio/radio.c:172: errors.corrected_packets++;
	inc	r6
	cjne	r6,#0x00,00191$
	inc	r7
00191$:
	mov	r0,#(_errors + 0x000a)
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
00125$:
;	radio/radio.c:176: return true;
	setb	c
;	radio/radio.c:178: failed:
	ret
00126$:
;	radio/radio.c:179: if (errors.rx_errors != 0xFFFF) {
	mov	r0,#_errors
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	cjne	r6,#0xFF,00192$
	cjne	r7,#0xFF,00192$
	sjmp	00128$
00192$:
;	radio/radio.c:180: errors.rx_errors++;
	inc	r6
	cjne	r6,#0x00,00193$
	inc	r7
00193$:
	mov	r0,#_errors
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
00128$:
;	radio/radio.c:182: return false;
	clr	c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radio_write_transmit_fifo'
;------------------------------------------------------------
;n                         Allocated to registers r7 
;------------------------------------------------------------
;	radio/radio.c:189: radio_write_transmit_fifo(register uint8_t n, __xdata uint8_t * __pdata buffer)
;	-----------------------------------------
;	 function radio_write_transmit_fifo
;	-----------------------------------------
_radio_write_transmit_fifo:
	mov	r7,dpl
;	radio/radio.c:191: NSS1 = 0;
	clr	_NSS1
;	radio/radio.c:192: SPIF1 = 0;
	clr	_SPIF1
;	radio/radio.c:193: SPI1DAT = (0x80 | EZRADIOPRO_FIFO_ACCESS);
	mov	_SPI1DAT,#0xFF
;	radio/radio.c:195: while (n--) {
	mov	r0,#_radio_write_transmit_fifo_PARM_2
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
00104$:
	mov	ar4,r7
	dec	r7
	mov	a,r4
	jz	00107$
;	radio/radio.c:196: while (!TXBMT1) /* noop */;
00101$:
	jnb	_TXBMT1,00101$
;	radio/radio.c:197: SPI1DAT = *buffer++;
	mov	dpl,r5
	mov	dph,r6
	movx	a,@dptr
	mov	_SPI1DAT,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	radio/radio.c:200: while (!TXBMT1) /* noop */;
	sjmp	00104$
00107$:
	jnb	_TXBMT1,00107$
;	radio/radio.c:201: while ((SPI1CFG & 0x80) == 0x80);
00110$:
	mov	a,#0x80
	anl	a,_SPI1CFG
	mov	r7,a
	cjne	r7,#0x80,00137$
	sjmp	00110$
00137$:
;	radio/radio.c:203: SPIF1 = 0;
	clr	_SPIF1
;	radio/radio.c:204: NSS1 = 1;
	setb	_NSS1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radio_receive_in_progress'
;------------------------------------------------------------
;	radio/radio.c:210: radio_receive_in_progress(void)
;	-----------------------------------------
;	 function radio_receive_in_progress
;	-----------------------------------------
_radio_receive_in_progress:
;	radio/radio.c:212: if (packet_received ||
	jb	_packet_received,00101$
;	radio/radio.c:213: partial_packet_length != 0) {
	mov	r0,#_partial_packet_length
	movx	a,@r0
	jz	00102$
00101$:
;	radio/radio.c:214: return true;
	setb	c
	ret
00102$:
;	radio/radio.c:218: if (register_read(EZRADIOPRO_EZMAC_STATUS) & EZRADIOPRO_PKRX) {
	mov	dpl,#0x31
	lcall	_register_read
	mov	a,dpl
	jnb	acc.4,00105$
;	radio/radio.c:219: return true;
	setb	c
	ret
00105$:
;	radio/radio.c:221: return false;
	clr	c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radio_preamble_detected'
;------------------------------------------------------------
;	radio/radio.c:228: radio_preamble_detected(void)
;	-----------------------------------------
;	 function radio_preamble_detected
;	-----------------------------------------
_radio_preamble_detected:
;	radio/radio.c:230: EX0_SAVE_DISABLE;
	mov	c,_EX0
	mov	_radio_preamble_detected_EX0_saved_1_157,c
	clr	_EX0
;	radio/radio.c:231: if (preamble_detected) {
;	radio/radio.c:232: preamble_detected = 0;
	jbc	_preamble_detected,00108$
	sjmp	00102$
00108$:
;	radio/radio.c:233: EX0_RESTORE;
	mov	c,_radio_preamble_detected_EX0_saved_1_157
	mov	_EX0,c
;	radio/radio.c:234: return true;
	setb	c
	ret
00102$:
;	radio/radio.c:236: EX0_RESTORE;
	mov	c,_radio_preamble_detected_EX0_saved_1_157
	mov	_EX0,c
;	radio/radio.c:237: return false;
	clr	c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radio_last_rssi'
;------------------------------------------------------------
;	radio/radio.c:245: radio_last_rssi(void)
;	-----------------------------------------
;	 function radio_last_rssi
;	-----------------------------------------
_radio_last_rssi:
;	radio/radio.c:247: return last_rssi;
	mov	r0,#_last_rssi
	movx	a,@r0
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radio_current_rssi'
;------------------------------------------------------------
;	radio/radio.c:253: radio_current_rssi(void)
;	-----------------------------------------
;	 function radio_current_rssi
;	-----------------------------------------
_radio_current_rssi:
;	radio/radio.c:255: return register_read(EZRADIOPRO_RECEIVED_SIGNAL_STRENGTH_INDICATOR);
	mov	dpl,#0x26
	ljmp	_register_read
;------------------------------------------------------------
;Allocation info for local variables in function 'radio_air_rate'
;------------------------------------------------------------
;	radio/radio.c:261: radio_air_rate(void)
;	-----------------------------------------
;	 function radio_air_rate
;	-----------------------------------------
_radio_air_rate:
;	radio/radio.c:263: return settings.air_data_rate;
	mov	r0,#(_settings + 0x0008)
	movx	a,@r0
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radio_clear_transmit_fifo'
;------------------------------------------------------------
;control                   Allocated to registers r7 
;------------------------------------------------------------
;	radio/radio.c:269: radio_clear_transmit_fifo(void)
;	-----------------------------------------
;	 function radio_clear_transmit_fifo
;	-----------------------------------------
_radio_clear_transmit_fifo:
;	radio/radio.c:272: control = register_read(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2);
	mov	dpl,#0x08
	lcall	_register_read
	mov	r7,dpl
;	radio/radio.c:273: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, control | EZRADIOPRO_FFCLRTX);
	mov	a,#0x01
	orl	a,r7
	mov	r6,a
	push	ar7
	push	ar6
	mov	dpl,#0x08
	lcall	_register_write
	dec	sp
	pop	ar7
;	radio/radio.c:274: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, control & ~EZRADIOPRO_FFCLRTX);
	anl	ar7,#0xFE
	push	ar7
	mov	dpl,#0x08
	lcall	_register_write
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radio_clear_receive_fifo'
;------------------------------------------------------------
;control                   Allocated to registers r7 
;------------------------------------------------------------
;	radio/radio.c:281: radio_clear_receive_fifo(void) __reentrant
;	-----------------------------------------
;	 function radio_clear_receive_fifo
;	-----------------------------------------
_radio_clear_receive_fifo:
;	radio/radio.c:284: control = register_read(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2);
	mov	dpl,#0x08
	lcall	_register_read
	mov	r7,dpl
;	radio/radio.c:285: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, control | EZRADIOPRO_FFCLRRX);
	mov	a,#0x02
	orl	a,r7
	mov	r6,a
	push	ar7
	push	ar6
	mov	dpl,#0x08
	lcall	_register_write
	dec	sp
	pop	ar7
;	radio/radio.c:286: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, control & ~EZRADIOPRO_FFCLRRX);
	anl	ar7,#0xFD
	push	ar7
	mov	dpl,#0x08
	lcall	_register_write
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radio_transmit_simple'
;------------------------------------------------------------
;length                    Allocated to registers r7 
;n                         Allocated to registers r6 
;status                    Allocated to registers r3 
;------------------------------------------------------------
;	radio/radio.c:298: radio_transmit_simple(__data uint8_t length, __xdata uint8_t * __pdata buf, __pdata uint16_t timeout_ticks)
;	-----------------------------------------
;	 function radio_transmit_simple
;	-----------------------------------------
_radio_transmit_simple:
;	radio/radio.c:304: if (length > sizeof(radio_buffer)) {
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0xFC
	jnc	00102$
;	radio/radio.c:305: panic("oversized packet");
	push	ar7
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
	pop	ar7
00102$:
;	radio/radio.c:308: radio_clear_transmit_fifo();
	push	ar7
	lcall	_radio_clear_transmit_fifo
	pop	ar7
;	radio/radio.c:310: register_write(EZRADIOPRO_TRANSMIT_PACKET_LENGTH, length);
	push	ar7
	push	ar7
	mov	dpl,#0x3E
	lcall	_register_write
	dec	sp
	pop	ar7
;	radio/radio.c:313: n = length;
;	radio/radio.c:314: if (n > TX_FIFO_THRESHOLD_LOW) {
	mov	a,r7
	mov	r6,a
	add	a,#0xff - 0x20
	jnc	00104$
;	radio/radio.c:315: n = TX_FIFO_THRESHOLD_LOW;
	mov	r6,#0x20
00104$:
;	radio/radio.c:317: radio_write_transmit_fifo(n, buf);
	mov	r0,#_radio_transmit_simple_PARM_2
	mov	r1,#_radio_write_transmit_fifo_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	dpl,r6
	push	ar7
	push	ar6
	lcall	_radio_write_transmit_fifo
	pop	ar6
	pop	ar7
;	radio/radio.c:318: length -= n;
	mov	a,r7
	clr	c
	subb	a,r6
	mov	r7,a
;	radio/radio.c:319: buf += n;
	mov	r0,#_radio_transmit_simple_PARM_2
	movx	a,@r0
	add	a,r6
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	movx	@r0,a
;	radio/radio.c:322: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0);
	push	ar7
	clr	a
	push	acc
	mov	dpl,#0x05
	lcall	_register_write
	dec	sp
;	radio/radio.c:323: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, 0);
	clr	a
	push	acc
	mov	dpl,#0x06
	lcall	_register_write
	dec	sp
;	radio/radio.c:325: preamble_detected = 0;
	clr	_preamble_detected
;	radio/radio.c:326: transmit_started = false;
	clr	_radio_transmit_simple_transmit_started_1_170
;	radio/radio.c:329: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_1, EZRADIOPRO_TXON | EZRADIOPRO_XTON);
	mov	a,#0x09
	push	acc
	mov	dpl,#0x07
	lcall	_register_write
	dec	sp
;	radio/radio.c:332: tstart = timer2_tick();
	lcall	_timer2_tick
	mov	r4,dpl
	mov	r5,dph
	pop	ar7
;	radio/radio.c:333: while ((uint16_t)(timer2_tick() - tstart) < timeout_ticks) {
00130$:
	push	ar7
	push	ar5
	push	ar4
	lcall	_timer2_tick
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar7
	mov	a,r2
	clr	c
	subb	a,r4
	mov	r2,a
	mov	a,r3
	subb	a,r5
	mov	r3,a
	mov	r0,#_radio_transmit_simple_PARM_3
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,r2
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,r3
	subb	a,b
	jc	00199$
	ljmp	00132$
00199$:
;	radio/radio.c:337: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_1);
	mov	dpl,#0x03
	push	ar7
	push	ar5
	push	ar4
	lcall	_register_read
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar7
;	radio/radio.c:338: if (transmit_started && length != 0 && (status & EZRADIOPRO_ITXFFAEM)) {
	jnb	_radio_transmit_simple_transmit_started_1_170,00108$
	mov	a,r7
	jz	00108$
	mov	a,r3
	jnb	acc.5,00108$
;	radio/radio.c:345: n = 4;
	mov	r6,#0x04
;	radio/radio.c:346: if (n > length) {
	cjne	r7,#0x04,00203$
00203$:
	jnc	00106$
;	radio/radio.c:347: n = length;
	mov	ar6,r7
00106$:
;	radio/radio.c:349: radio_write_transmit_fifo(n, buf);
	mov	r0,#_radio_transmit_simple_PARM_2
	mov	r1,#_radio_write_transmit_fifo_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	dpl,r6
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_radio_write_transmit_fifo
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	radio/radio.c:350: length -= n;
	mov	a,r7
	clr	c
	subb	a,r6
	mov	r7,a
;	radio/radio.c:351: buf += n;
	mov	r0,#_radio_transmit_simple_PARM_2
	movx	a,@r0
	add	a,r6
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	movx	@r0,a
;	radio/radio.c:352: continue;
	ljmp	00130$
00108$:
;	radio/radio.c:354: if (transmit_started && length != 0 && (status & EZRADIOPRO_ITXFFAFULL) == 0) {
	jnb	_radio_transmit_simple_transmit_started_1_170,00114$
	mov	a,r7
	jz	00114$
	mov	a,r3
	jb	acc.6,00114$
;	radio/radio.c:358: n = 4;
	mov	r6,#0x04
;	radio/radio.c:359: if (n > length) {
	cjne	r7,#0x04,00208$
00208$:
	jnc	00112$
;	radio/radio.c:360: n = length;
	mov	ar6,r7
00112$:
;	radio/radio.c:362: radio_write_transmit_fifo(n, buf);
	mov	r0,#_radio_transmit_simple_PARM_2
	mov	r1,#_radio_write_transmit_fifo_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	dpl,r6
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_radio_write_transmit_fifo
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	radio/radio.c:363: length -= n;
	mov	a,r7
	clr	c
	subb	a,r6
	mov	r7,a
;	radio/radio.c:364: buf += n;
	mov	r0,#_radio_transmit_simple_PARM_2
	movx	a,@r0
	add	a,r6
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,#0x00
	movx	@r0,a
;	radio/radio.c:365: continue;
	ljmp	00130$
00114$:
;	radio/radio.c:368: if (status & EZRADIOPRO_IFFERR) {
	mov	a,r3
	jnb	acc.7,00120$
;	radio/radio.c:370: radio_clear_transmit_fifo();
	lcall	_radio_clear_transmit_fifo
;	radio/radio.c:372: if (errors.tx_errors != 0xFFFF) {
	mov	r0,#(_errors + 0x0002)
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	cjne	r2,#0xFF,00211$
	cjne	r6,#0xFF,00211$
	sjmp	00118$
00211$:
;	radio/radio.c:373: errors.tx_errors++;
	inc	r2
	cjne	r2,#0x00,00212$
	inc	r6
00212$:
	mov	r0,#(_errors + 0x0002)
	mov	a,r2
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
00118$:
;	radio/radio.c:375: return false;
	clr	c
	ret
00120$:
;	radio/radio.c:380: status = register_read(EZRADIOPRO_DEVICE_STATUS);
	mov	dpl,#0x02
	push	ar7
	push	ar5
	push	ar4
	lcall	_register_read
	mov	r3,dpl
	pop	ar4
	pop	ar5
	pop	ar7
;	radio/radio.c:381: if (status & 0x02) {
	mov	a,r3
	jnb	acc.1,00122$
;	radio/radio.c:383: transmit_started = true;
	setb	_radio_transmit_simple_transmit_started_1_170
;	radio/radio.c:384: continue;
	ljmp	00130$
00122$:
;	radio/radio.c:386: if (transmit_started && (status & 0x02) == 0) {
	jb	_radio_transmit_simple_transmit_started_1_170,00214$
	ljmp	00130$
00214$:
	mov	a,r3
	jnb	acc.1,00215$
	ljmp	00130$
00215$:
;	radio/radio.c:389: if (length != 0) {
	mov	a,r7
	jz	00126$
;	radio/radio.c:391: if (errors.tx_errors != 0xFFFF) {
	mov	r0,#(_errors + 0x0002)
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	cjne	r6,#0xFF,00217$
	cjne	r7,#0xFF,00217$
	sjmp	00124$
00217$:
;	radio/radio.c:392: errors.tx_errors++;
	inc	r6
	cjne	r6,#0x00,00218$
	inc	r7
00218$:
	mov	r0,#(_errors + 0x0002)
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
00124$:
;	radio/radio.c:394: return false;
	clr	c
	ret
00126$:
;	radio/radio.c:396: return true;			
	setb	c
	ret
00132$:
;	radio/radio.c:407: if (errors.tx_errors != 0xFFFF) {
	mov	r0,#(_errors + 0x0002)
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	cjne	r6,#0xFF,00219$
	cjne	r7,#0xFF,00219$
	sjmp	00134$
00219$:
;	radio/radio.c:408: errors.tx_errors++;
	inc	r6
	cjne	r6,#0x00,00220$
	inc	r7
00220$:
	mov	r0,#(_errors + 0x0002)
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
00134$:
;	radio/radio.c:411: return false;
	clr	c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radio_transmit_golay'
;------------------------------------------------------------
;elen                      Allocated with name '_radio_transmit_golay_elen_1_186'
;rlen                      Allocated to registers r5 
;length                    Allocated with name '_radio_transmit_golay_length_1_185'
;gin                       Allocated with name '_radio_transmit_golay_gin_1_186'
;------------------------------------------------------------
;	radio/radio.c:424: radio_transmit_golay(uint8_t length, __xdata uint8_t * __pdata buf, __pdata uint16_t timeout_ticks)
;	-----------------------------------------
;	 function radio_transmit_golay
;	-----------------------------------------
_radio_transmit_golay:
	mov	a,dpl
;	radio/radio.c:430: if (length > (sizeof(radio_buffer)/2)-6) {
	mov	dptr,#_radio_transmit_golay_length_1_185
	movx	@dptr,a
	mov  r7,a
	add	a,#0xff - 0x78
	jnc	00102$
;	radio/radio.c:432: panic("oversized golay packet");		
	push	ar7
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_panic
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
00102$:
;	radio/radio.c:436: rlen = ((length+2)/3)*3;
	mov	ar5,r7
	mov	r6,#0x00
	mov	a,#0x02
	add	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	push	ar7
	lcall	__divsint
	mov	r5,dpl
	pop	ar7
	mov	a,r5
	mov	b,#0x03
	mul	ab
;	radio/radio.c:439: elen = (rlen+6)*2;
	mov	r5,a
	add	a,#0x06
	add	a,acc
	mov	_radio_transmit_golay_elen_1_186,a
;	radio/radio.c:442: gin[0] = netid[0];
	mov	r0,#_netid
	movx	a,@r0
	mov	dptr,#_radio_transmit_golay_gin_1_186
	movx	@dptr,a
;	radio/radio.c:443: gin[1] = netid[1];
	mov	r0,#(_netid + 0x0001)
	movx	a,@r0
	mov	dptr,#(_radio_transmit_golay_gin_1_186 + 0x0001)
	movx	@dptr,a
;	radio/radio.c:444: gin[2] = length;
	mov	dptr,#(_radio_transmit_golay_gin_1_186 + 0x0002)
	mov	a,r7
	movx	@dptr,a
;	radio/radio.c:447: golay_encode(3, gin, radio_buffer);
	mov	r0,#_golay_encode_PARM_2
	mov	a,#_radio_transmit_golay_gin_1_186
	movx	@r0,a
	inc	r0
	mov	a,#(_radio_transmit_golay_gin_1_186 >> 8)
	movx	@r0,a
	mov	r0,#_golay_encode_PARM_3
	mov	a,#_radio_buffer
	movx	@r0,a
	inc	r0
	mov	a,#(_radio_buffer >> 8)
	movx	@r0,a
	mov	dpl,#0x03
	push	ar7
	push	ar5
	lcall	_golay_encode
	pop	ar5
	pop	ar7
;	radio/radio.c:451: crc = crc16(length, buf);
	mov	r0,#_radio_transmit_golay_PARM_2
	movx	a,@r0
	mov	_crc16_PARM_2,a
	inc	r0
	movx	a,@r0
	mov	(_crc16_PARM_2 + 1),a
	mov	dpl,r7
	push	ar7
	push	ar5
	lcall	_crc16
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar7
;	radio/radio.c:452: gin[0] = crc&0xFF;
	mov	ar2,r3
	mov	dptr,#_radio_transmit_golay_gin_1_186
	mov	a,r2
	movx	@dptr,a
;	radio/radio.c:453: gin[1] = crc>>8;
	mov	ar3,r4
	mov	dptr,#(_radio_transmit_golay_gin_1_186 + 0x0001)
	mov	a,r3
	movx	@dptr,a
;	radio/radio.c:454: gin[2] = length;
	mov	dptr,#(_radio_transmit_golay_gin_1_186 + 0x0002)
	mov	a,r7
	movx	@dptr,a
;	radio/radio.c:457: golay_encode(3, gin, &radio_buffer[6]);
	mov	r0,#_golay_encode_PARM_3
	mov	a,#0x06
	add	a,#_radio_buffer
	movx	@r0,a
	clr	a
	addc	a,#(_radio_buffer >> 8)
	inc	r0
	movx	@r0,a
	mov	r0,#_golay_encode_PARM_2
	mov	a,#_radio_transmit_golay_gin_1_186
	movx	@r0,a
	inc	r0
	mov	a,#(_radio_transmit_golay_gin_1_186 >> 8)
	movx	@r0,a
	mov	dpl,#0x03
	push	ar5
	lcall	_golay_encode
	pop	ar5
;	radio/radio.c:460: golay_encode(rlen, buf, &radio_buffer[12]);
	mov	r0,#_golay_encode_PARM_3
	mov	a,#0x0C
	add	a,#_radio_buffer
	movx	@r0,a
	clr	a
	addc	a,#(_radio_buffer >> 8)
	inc	r0
	movx	@r0,a
	mov	r0,#_radio_transmit_golay_PARM_2
	mov	r1,#_golay_encode_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	dpl,r5
	lcall	_golay_encode
;	radio/radio.c:462: return radio_transmit_simple(elen, radio_buffer, timeout_ticks);
	mov	r0,#_radio_transmit_simple_PARM_2
	mov	a,#_radio_buffer
	movx	@r0,a
	inc	r0
	mov	a,#(_radio_buffer >> 8)
	movx	@r0,a
	mov	r0,#_radio_transmit_golay_PARM_3
	mov	r1,#_radio_transmit_simple_PARM_3
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	dpl,_radio_transmit_golay_elen_1_186
	lcall	_radio_transmit_simple
	mov  _radio_transmit_golay_sloc0_1_0,c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radio_transmit'
;------------------------------------------------------------
;length                    Allocated with name '_radio_transmit_length_1_188'
;------------------------------------------------------------
;	radio/radio.c:474: radio_transmit(uint8_t length, __xdata uint8_t * __pdata buf, __pdata uint16_t timeout_ticks)
;	-----------------------------------------
;	 function radio_transmit
;	-----------------------------------------
_radio_transmit:
	mov	a,dpl
	mov	dptr,#_radio_transmit_length_1_188
	movx	@dptr,a
;	radio/radio.c:477: EX0_SAVE_DISABLE;
	mov	c,_EX0
	mov	_radio_transmit_EX0_saved_1_189,c
	clr	_EX0
;	radio/radio.c:483: if (!feature_golay) {
	jb	_feature_golay,00102$
;	radio/radio.c:484: ret = radio_transmit_simple(length, buf, timeout_ticks);
	mov	dptr,#_radio_transmit_length_1_188
	movx	a,@dptr
	mov	r7,a
	mov	r0,#_radio_transmit_PARM_2
	mov	r1,#_radio_transmit_simple_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	r0,#_radio_transmit_PARM_3
	mov	r1,#_radio_transmit_simple_PARM_3
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	dpl,r7
	lcall	_radio_transmit_simple
	mov	_radio_transmit_sloc0_1_0,c
	sjmp	00103$
00102$:
;	radio/radio.c:486: ret = radio_transmit_golay(length, buf, timeout_ticks);
	mov	dptr,#_radio_transmit_length_1_188
	movx	a,@dptr
	mov	r7,a
	mov	r0,#_radio_transmit_PARM_2
	mov	r1,#_radio_transmit_golay_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	r0,#_radio_transmit_PARM_3
	mov	r1,#_radio_transmit_golay_PARM_3
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	dpl,r7
	lcall	_radio_transmit_golay
	mov	_radio_transmit_sloc0_1_0,c
00103$:
;	radio/radio.c:491: EX0_RESTORE;
	mov	c,_radio_transmit_EX0_saved_1_189
	mov	_EX0,c
;	radio/radio.c:492: return ret;
	mov	c,_radio_transmit_sloc0_1_0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radio_receiver_on'
;------------------------------------------------------------
;	radio/radio.c:499: radio_receiver_on(void)
;	-----------------------------------------
;	 function radio_receiver_on
;	-----------------------------------------
_radio_receiver_on:
;	radio/radio.c:501: EX0 = 0;
	clr	_EX0
;	radio/radio.c:503: packet_received = 0;
	clr	_packet_received
;	radio/radio.c:504: receive_packet_length = 0;
	mov	r0,#_receive_packet_length
	clr	a
	movx	@r0,a
;	radio/radio.c:505: preamble_detected = 0;
	clr	_preamble_detected
;	radio/radio.c:506: partial_packet_length = 0;
	mov	r0,#_partial_packet_length
	clr	a
	movx	@r0,a
;	radio/radio.c:509: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, RADIO_RX_INTERRUPTS);
	mov	a,#0x13
	push	acc
	mov	dpl,#0x05
	lcall	_register_write
	dec	sp
;	radio/radio.c:510: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, EZRADIOPRO_ENPREAVAL);
	mov	a,#0x40
	push	acc
	mov	dpl,#0x06
	lcall	_register_write
	dec	sp
;	radio/radio.c:512: clear_status_registers();
	lcall	_clear_status_registers
;	radio/radio.c:513: radio_clear_transmit_fifo();
	lcall	_radio_clear_transmit_fifo
;	radio/radio.c:514: radio_clear_receive_fifo();
	lcall	_radio_clear_receive_fifo
;	radio/radio.c:517: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_1, EZRADIOPRO_RXON | EZRADIOPRO_XTON);
	mov	a,#0x05
	push	acc
	mov	dpl,#0x07
	lcall	_register_write
	dec	sp
;	radio/radio.c:520: EX0 = 1;
	setb	_EX0
;	radio/radio.c:522: return true;
	setb	c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radio_initialise'
;------------------------------------------------------------
;status                    Allocated with name '_radio_initialise_status_1_195'
;------------------------------------------------------------
;	radio/radio.c:529: radio_initialise(void)
;	-----------------------------------------
;	 function radio_initialise
;	-----------------------------------------
_radio_initialise:
;	radio/radio.c:533: delay_msec(50);
	mov	dptr,#0x0032
	lcall	_delay_msec
;	radio/radio.c:536: status = register_read(EZRADIOPRO_DEVICE_VERSION);
	mov	dpl,#0x01
	lcall	_register_read
	mov	r7,dpl
;	radio/radio.c:537: if (status == 0xFF || status < 5) {
	cjne	r7,#0xFF,00133$
	sjmp	00101$
00133$:
	cjne	r7,#0x05,00134$
00134$:
	jnc	00102$
00101$:
;	radio/radio.c:539: return false;
	clr	c
	ret
00102$:
;	radio/radio.c:542: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_2);
	mov	dpl,#0x04
	lcall	_register_read
;	radio/radio.c:544: if ((status & EZRADIOPRO_IPOR) == 0) {
	mov	a,dpl
	mov	r7,a
	jb	acc.0,00105$
;	radio/radio.c:546: return software_reset();
	lcall	_software_reset
	mov  _radio_initialise_sloc0_1_0,c
	ret
00105$:
;	radio/radio.c:549: if (status & EZRADIOPRO_ICHIPRDY) {
	mov	a,r7
	jnb	acc.1,00107$
;	radio/radio.c:551: return true;
	setb	c
	ret
00107$:
;	radio/radio.c:555: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0);
	clr	a
	push	acc
	mov	dpl,#0x05
	lcall	_register_write
	dec	sp
;	radio/radio.c:556: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, EZRADIOPRO_ENCHIPRDY);
	mov	a,#0x02
	push	acc
	mov	dpl,#0x06
	lcall	_register_write
	dec	sp
;	radio/radio.c:559: delay_set(50);
	mov	dptr,#0x0032
	lcall	_delay_set
;	radio/radio.c:560: while (!delay_expired()) {
00110$:
	lcall	_delay_expired
	jc	00112$
;	radio/radio.c:561: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_1);
	mov	dpl,#0x03
	lcall	_register_read
;	radio/radio.c:562: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_2);
	mov	dpl,#0x04
	lcall	_register_read
	mov	a,dpl
;	radio/radio.c:563: if (status & EZRADIOPRO_ICHIPRDY) {
	jnb	acc.1,00110$
;	radio/radio.c:564: return true;
	setb	c
	ret
00112$:
;	radio/radio.c:568: return false;
	clr	c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radio_set_frequency'
;------------------------------------------------------------
;	radio/radio.c:575: radio_set_frequency(__pdata uint32_t value)
;	-----------------------------------------
;	 function radio_set_frequency
;	-----------------------------------------
_radio_set_frequency:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	radio/radio.c:577: if (value < 240000000UL || value > 935000000UL) {
	clr	c
	mov	a,r5
	subb	a,#0x1C
	mov	a,r6
	subb	a,#0x4E
	mov	a,r7
	subb	a,#0x0E
	jc	00101$
	mov	a,#0xC0
	subb	a,r4
	mov	a,#0xF7
	subb	a,r5
	mov	a,#0xBA
	subb	a,r6
	mov	a,#0x37
	subb	a,r7
	jnc	00102$
00101$:
;	radio/radio.c:578: return false;
	clr	c
	ret
00102$:
;	radio/radio.c:580: settings.frequency = value;
	mov	r0,#_settings
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
;	radio/radio.c:581: set_frequency_registers(value);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_set_frequency_registers
;	radio/radio.c:582: return true;
	setb	c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radio_set_channel_spacing'
;------------------------------------------------------------
;	radio/radio.c:589: radio_set_channel_spacing(__pdata uint32_t value)
;	-----------------------------------------
;	 function radio_set_channel_spacing
;	-----------------------------------------
_radio_set_channel_spacing:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	radio/radio.c:591: if (value > 2550000L)
	clr	c
	mov	a,#0xF0
	subb	a,r4
	mov	a,#0xE8
	subb	a,r5
	mov	a,#0x26
	subb	a,r6
	clr	a
	subb	a,r7
	jnc	00102$
;	radio/radio.c:592: return false;
	clr	c
	ret
00102$:
;	radio/radio.c:593: value = scale_uint32(value, 10000);
	mov	dptr,#_scale_uint32_PARM_2
	mov	a,#0x10
	movx	@dptr,a
	mov	a,#0x27
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
	lcall	_scale_uint32
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	radio/radio.c:594: settings.channel_spacing = value;
	mov	r0,#(_settings + 0x0004)
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
;	radio/radio.c:595: register_write(EZRADIOPRO_FREQUENCY_HOPPING_STEP_SIZE, value);
	push	ar4
	mov	dpl,#0x7A
	lcall	_register_write
	dec	sp
;	radio/radio.c:596: return true;
	setb	c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radio_set_channel'
;------------------------------------------------------------
;channel                   Allocated with name '_radio_set_channel_channel_1_206'
;------------------------------------------------------------
;	radio/radio.c:602: radio_set_channel(uint8_t channel)
;	-----------------------------------------
;	 function radio_set_channel
;	-----------------------------------------
_radio_set_channel:
	mov	a,dpl
	mov	dptr,#_radio_set_channel_channel_1_206
	movx	@dptr,a
;	radio/radio.c:604: if (channel != settings.current_channel) {
	mov	r0,#(_settings + 0x0009)
	movx	a,@r0
	mov	r7,a
	mov	dptr,#_radio_set_channel_channel_1_206
	movx	a,@dptr
	mov	r6,a
	cjne	a,ar7,00108$
	ret
00108$:
;	radio/radio.c:605: settings.current_channel = channel;
	mov	r0,#(_settings + 0x0009)
	mov	a,r6
	movx	@r0,a
;	radio/radio.c:606: register_write(EZRADIOPRO_FREQUENCY_HOPPING_CHANNEL_SELECT, channel);
	push	ar6
	mov	dpl,#0x79
	lcall	_register_write
	dec	sp
;	radio/radio.c:607: preamble_detected = 0;
	clr	_preamble_detected
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radio_get_channel'
;------------------------------------------------------------
;	radio/radio.c:614: radio_get_channel(void)
;	-----------------------------------------
;	 function radio_get_channel
;	-----------------------------------------
_radio_get_channel:
;	radio/radio.c:616: return settings.current_channel;
	mov	r0,#(_settings + 0x0009)
	movx	a,@r0
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radio_configure'
;------------------------------------------------------------
;	radio/radio.c:713: radio_configure(__pdata uint8_t air_rate)
;	-----------------------------------------
;	 function radio_configure
;	-----------------------------------------
_radio_configure:
	mov	r7,dpl
;	radio/radio.c:718: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0x00);
	push	ar7
	clr	a
	push	acc
	mov	dpl,#0x05
	lcall	_register_write
	dec	sp
;	radio/radio.c:719: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, 0x00);
	clr	a
	push	acc
	mov	dpl,#0x06
	lcall	_register_write
	dec	sp
;	radio/radio.c:721: clear_status_registers();
	lcall	_clear_status_registers
;	radio/radio.c:735: register_write(EZRADIOPRO_GPIO0_CONFIGURATION, 0x15);	// RX data (output)
	mov	a,#0x15
	push	acc
	mov	dpl,#0x0B
	lcall	_register_write
	dec	sp
;	radio/radio.c:736: register_write(EZRADIOPRO_GPIO1_CONFIGURATION, 0x12);	// RX data (output)
	mov	a,#0x12
	push	acc
	mov	dpl,#0x0C
	lcall	_register_write
	dec	sp
;	radio/radio.c:738: radio_set_diversity(true);
	setb	_radio_set_diversity_PARM_1
	lcall	_radio_set_diversity
;	radio/radio.c:750: register_write(EZRADIOPRO_CRYSTAL_OSCILLATOR_LOAD_CAPACITANCE, EZRADIOPRO_OSC_CAP_VALUE);
	mov	a,#0xB6
	push	acc
	mov	dpl,#0x09
	lcall	_register_write
	dec	sp
	pop	ar7
;	radio/radio.c:753: if (air_rate > 100) {
	mov	a,r7
	add	a,#0xff - 0x64
	jnc	00102$
;	radio/radio.c:754: register_write(EZRADIOPRO_CHARGEPUMP_CURRENT_TRIMMING_OVERRIDE, 0xC0);
	push	ar7
	mov	a,#0xC0
	push	acc
	mov	dpl,#0x58
	lcall	_register_write
	dec	sp
	pop	ar7
00102$:
;	radio/radio.c:758: set_frequency_registers(settings.frequency);
	mov	r0,#_settings
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	push	ar7
	lcall	_set_frequency_registers
;	radio/radio.c:759: register_write(EZRADIOPRO_FREQUENCY_HOPPING_STEP_SIZE, settings.channel_spacing);
	mov	r0,#(_settings + 0x0004)
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	inc	r0
	movx	a,@r0
	inc	r0
	movx	a,@r0
	push	ar3
	mov	dpl,#0x7A
	lcall	_register_write
	dec	sp
	pop	ar7
;	radio/radio.c:761: if (feature_golay) {
	jnb	_feature_golay,00104$
;	radio/radio.c:765: register_write(EZRADIOPRO_DATA_ACCESS_CONTROL,
	push	ar7
	mov	a,#0x88
	push	acc
	mov	dpl,#0x30
	lcall	_register_write
	dec	sp
;	radio/radio.c:769: register_write(EZRADIOPRO_HEADER_CONTROL_2, EZRADIOPRO_HDLEN_0BYTE | EZRADIOPRO_SYNCLEN_2BYTE);
	mov	a,#0x02
	push	acc
	mov	dpl,#0x33
	lcall	_register_write
	dec	sp
;	radio/radio.c:772: register_write(EZRADIOPRO_HEADER_CONTROL_1, 0x00);
	clr	a
	push	acc
	mov	dpl,#0x32
	lcall	_register_write
	dec	sp
	pop	ar7
	sjmp	00105$
00104$:
;	radio/radio.c:774: register_write(EZRADIOPRO_DATA_ACCESS_CONTROL,
	push	ar7
	mov	a,#0x8D
	push	acc
	mov	dpl,#0x30
	lcall	_register_write
	dec	sp
;	radio/radio.c:780: register_write(EZRADIOPRO_HEADER_CONTROL_2, EZRADIOPRO_HDLEN_2BYTE | EZRADIOPRO_SYNCLEN_2BYTE);
	mov	a,#0x22
	push	acc
	mov	dpl,#0x33
	lcall	_register_write
	dec	sp
;	radio/radio.c:782: register_write(EZRADIOPRO_HEADER_CONTROL_1, 0x0C);
	mov	a,#0x0C
	push	acc
	mov	dpl,#0x32
	lcall	_register_write
	dec	sp
;	radio/radio.c:783: register_write(EZRADIOPRO_HEADER_ENABLE_3, 0xFF);
	mov	a,#0xFF
	push	acc
	mov	dpl,#0x43
	lcall	_register_write
	dec	sp
;	radio/radio.c:784: register_write(EZRADIOPRO_HEADER_ENABLE_2, 0xFF);
	mov	a,#0xFF
	push	acc
	mov	dpl,#0x44
	lcall	_register_write
	dec	sp
	pop	ar7
00105$:
;	radio/radio.c:789: register_write(EZRADIOPRO_TX_FIFO_CONTROL_1, TX_FIFO_THRESHOLD_HIGH);
	push	ar7
	mov	a,#0x3C
	push	acc
	mov	dpl,#0x7C
	lcall	_register_write
	dec	sp
;	radio/radio.c:790: register_write(EZRADIOPRO_TX_FIFO_CONTROL_2, TX_FIFO_THRESHOLD_LOW);
	mov	a,#0x20
	push	acc
	mov	dpl,#0x7D
	lcall	_register_write
	dec	sp
;	radio/radio.c:791: register_write(EZRADIOPRO_RX_FIFO_CONTROL, RX_FIFO_THRESHOLD_HIGH);
	mov	a,#0x32
	push	acc
	mov	dpl,#0x7E
	lcall	_register_write
	dec	sp
;	radio/radio.c:793: settings.preamble_length = 16;
	mov	r0,#(_settings + 0x000b)
	mov	a,#0x10
	movx	@r0,a
;	radio/radio.c:795: register_write(EZRADIOPRO_PREAMBLE_LENGTH, settings.preamble_length); // nibbles 
	mov	r0,#(_settings + 0x000b)
	movx	a,@r0
	mov	r6,a
	push	ar6
	mov	dpl,#0x34
	lcall	_register_write
	dec	sp
;	radio/radio.c:796: register_write(EZRADIOPRO_PREAMBLE_DETECTION_CONTROL, 5<<3); // 5 nibbles
	mov	a,#0x28
	push	acc
	mov	dpl,#0x35
	lcall	_register_write
	dec	sp
;	radio/radio.c:799: radio_set_transmit_power(0);
	mov	dpl,#0x00
	lcall	_radio_set_transmit_power
	pop	ar7
;	radio/radio.c:802: for (i = 0; i < NUM_DATA_RATES - 1; i++) {
	mov	r6,#0x00
00131$:
;	radio/radio.c:803: if (air_data_rates[i] >= air_rate) break;
	mov	a,r6
	mov	dptr,#_air_data_rates
	movc	a,@a+dptr
	mov	r5,a
	clr	c
	subb	a,r7
	jnc	00108$
;	radio/radio.c:802: for (i = 0; i < NUM_DATA_RATES - 1; i++) {
	inc	r6
	cjne	r6,#0x0C,00205$
00205$:
	jc	00131$
00108$:
;	radio/radio.c:805: rate_selection = i;
;	radio/radio.c:807: settings.air_data_rate = air_data_rates[rate_selection];
	mov	a,r6
	mov	r7,a
	mov	dptr,#_air_data_rates
	movc	a,@a+dptr
	mov	r6,a
	mov	r0,#(_settings + 0x0008)
	movx	@r0,a
;	radio/radio.c:809: if (settings.air_data_rate >= 32) {
	cjne	r6,#0x20,00207$
00207$:
	jc	00110$
;	radio/radio.c:810: control = 0x0D;
	mov	r6,#0x0D
	sjmp	00111$
00110$:
;	radio/radio.c:812: control = 0x2D;
	mov	r6,#0x2D
00111$:
;	radio/radio.c:814: if (param_get(PARAM_MANCHESTER) && settings.air_data_rate <= 128) {
	mov	dpl,#0x0D
	push	ar7
	push	ar6
	lcall	_param_get
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	pop	ar6
	pop	ar7
	mov	a,r2
	orl	a,r3
	orl	a,r4
	orl	a,r5
	jz	00113$
	mov	r0,#(_settings + 0x0008)
	movx	a,@r0
	mov  r5,a
	add	a,#0xff - 0x80
	jc	00113$
;	radio/radio.c:816: control |= EZRADIOPRO_ENMANCH;
	orl	ar6,#0x02
00113$:
;	radio/radio.c:818: register_write(EZRADIOPRO_MODULATION_MODE_CONTROL_1, control);
	push	ar7
	push	ar6
	mov	dpl,#0x70
	lcall	_register_write
	dec	sp
;	radio/radio.c:820: register_write(EZRADIOPRO_MODULATION_MODE_CONTROL_2, 0x23);
	mov	a,#0x23
	push	acc
	mov	dpl,#0x71
	lcall	_register_write
	dec	sp
;	radio/radio.c:824: register_write(EZRADIOPRO_AFC_LOOP_GEARSHIFT_OVERRIDE, 0x44);
	mov	a,#0x44
	push	acc
	mov	dpl,#0x1D
	lcall	_register_write
	dec	sp
	pop	ar7
;	radio/radio.c:828: if (settings.air_data_rate < 200) {
	mov	r0,#(_settings + 0x0008)
	movx	a,@r0
	mov	r6,a
	cjne	r6,#0xC8,00211$
00211$:
	jnc	00116$
;	radio/radio.c:829: register_write(EZRADIOPRO_AFC_TIMING_CONTROL, 0x0A);
	push	ar7
	mov	a,#0x0A
	push	acc
	mov	dpl,#0x1E
	lcall	_register_write
	dec	sp
	pop	ar7
	sjmp	00117$
00116$:
;	radio/radio.c:831: register_write(EZRADIOPRO_AFC_TIMING_CONTROL, 0x02);
	push	ar7
	mov	a,#0x02
	push	acc
	mov	dpl,#0x1E
	lcall	_register_write
	dec	sp
	pop	ar7
00117$:
;	radio/radio.c:835: if (g_board_frequency == FREQ_433) {
	mov	r0,#_g_board_frequency
	movx	a,@r0
	cjne	a,#0x43,00129$
;	radio/radio.c:836: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
	mov	r6,#0x00
00133$:
;	radio/radio.c:838: reg_table_433[i][rate_selection]);
	mov	a,r6
	mov	b,#0x0D
	mul	ab
	add	a,#_reg_table_433
	mov	r4,a
	mov	a,#(_reg_table_433 >> 8)
	addc	a,b
	mov	r5,a
	mov	a,r7
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r5,a
;	radio/radio.c:837: register_write(reg_index[i],
	mov	a,r6
	mov	dptr,#_reg_index
	movc	a,@a+dptr
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r4
	lcall	_register_write
	dec	sp
	pop	ar6
	pop	ar7
;	radio/radio.c:836: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
	inc	r6
	cjne	r6,#0x0C,00215$
00215$:
	jc	00133$
	ljmp	00130$
00129$:
;	radio/radio.c:840: } else if (g_board_frequency == FREQ_470) {
	mov	r0,#_g_board_frequency
	movx	a,@r0
	cjne	a,#0x47,00126$
;	radio/radio.c:841: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
	mov	r6,#0x00
00135$:
;	radio/radio.c:843: reg_table_470[i][rate_selection]);
	mov	a,r6
	mov	b,#0x0D
	mul	ab
	add	a,#_reg_table_470
	mov	r4,a
	mov	a,#(_reg_table_470 >> 8)
	addc	a,b
	mov	r5,a
	mov	a,r7
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r5,a
;	radio/radio.c:842: register_write(reg_index[i],
	mov	a,r6
	mov	dptr,#_reg_index
	movc	a,@a+dptr
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r4
	lcall	_register_write
	dec	sp
	pop	ar6
	pop	ar7
;	radio/radio.c:841: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
	inc	r6
	cjne	r6,#0x0C,00219$
00219$:
	jc	00135$
	sjmp	00130$
00126$:
;	radio/radio.c:845: } else if (g_board_frequency == FREQ_868) {
	mov	r0,#_g_board_frequency
	movx	a,@r0
	cjne	a,#0x86,00160$
;	radio/radio.c:846: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
	mov	r6,#0x00
00137$:
;	radio/radio.c:848: reg_table_868[i][rate_selection]);
	mov	a,r6
	mov	b,#0x0D
	mul	ab
	add	a,#_reg_table_868
	mov	r4,a
	mov	a,#(_reg_table_868 >> 8)
	addc	a,b
	mov	r5,a
	mov	a,r7
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r5,a
;	radio/radio.c:847: register_write(reg_index[i],
	mov	a,r6
	mov	dptr,#_reg_index
	movc	a,@a+dptr
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r4
	lcall	_register_write
	dec	sp
	pop	ar6
	pop	ar7
;	radio/radio.c:846: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
	inc	r6
	cjne	r6,#0x0C,00223$
00223$:
	jc	00137$
;	radio/radio.c:851: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
	sjmp	00130$
00160$:
	mov	r6,#0x00
00139$:
;	radio/radio.c:853: reg_table_915[i][rate_selection]);
	mov	a,r6
	mov	b,#0x0D
	mul	ab
	add	a,#_reg_table_915
	mov	r4,a
	mov	a,#(_reg_table_915 >> 8)
	addc	a,b
	mov	r5,a
	mov	a,r7
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r5,a
;	radio/radio.c:852: register_write(reg_index[i],
	mov	a,r6
	mov	dptr,#_reg_index
	movc	a,@a+dptr
	mov	r4,a
	push	ar7
	push	ar6
	push	ar5
	mov	dpl,r4
	lcall	_register_write
	dec	sp
	pop	ar6
	pop	ar7
;	radio/radio.c:851: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
	inc	r6
	cjne	r6,#0x0C,00225$
00225$:
	jc	00139$
00130$:
;	radio/radio.c:857: return true;
	setb	c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radio_set_transmit_power'
;------------------------------------------------------------
;power                     Allocated with name '_radio_set_transmit_power_power_1_230'
;i                         Allocated with name '_radio_set_transmit_power_i_1_231'
;------------------------------------------------------------
;	radio/radio.c:884: radio_set_transmit_power(uint8_t power)
;	-----------------------------------------
;	 function radio_set_transmit_power
;	-----------------------------------------
_radio_set_transmit_power:
	mov	a,dpl
;	radio/radio.c:903: for (i=0; i<NUM_POWER_LEVELS; i++) {
	mov	dptr,#_radio_set_transmit_power_power_1_230
	movx	@dptr,a
	mov	r7,a
	mov	r6,#0x00
00106$:
;	radio/radio.c:904: if (power <= power_levels[i]) break;
	mov	a,r6
	mov	dptr,#_power_levels
	movc	a,@a+dptr
	mov	r5,a
	clr	c
	subb	a,r7
	jnc	00113$
;	radio/radio.c:903: for (i=0; i<NUM_POWER_LEVELS; i++) {
	inc	r6
	cjne	r6,#0x05,00121$
00121$:
	jc	00106$
00113$:
	mov	dptr,#_radio_set_transmit_power_i_1_231
	mov	a,r6
	movx	@dptr,a
;	radio/radio.c:906: if (i == NUM_POWER_LEVELS) {
	cjne	r6,#0x05,00105$
;	radio/radio.c:907: i = NUM_POWER_LEVELS-1;
	mov	dptr,#_radio_set_transmit_power_i_1_231
	mov	a,#0x04
	movx	@dptr,a
00105$:
;	radio/radio.c:909: settings.transmit_power = power_levels[i];
	mov	dptr,#_radio_set_transmit_power_i_1_231
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_power_levels
	movc	a,@a+dptr
	mov	r6,a
	mov	r0,#(_settings + 0x000a)
	mov	a,r6
	movx	@r0,a
;	radio/radio.c:910: register_write(EZRADIOPRO_TX_POWER, i);
	push	ar7
	mov	dpl,#0x6D
	lcall	_register_write
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radio_get_transmit_power'
;------------------------------------------------------------
;	radio/radio.c:917: radio_get_transmit_power(void)
;	-----------------------------------------
;	 function radio_get_transmit_power
;	-----------------------------------------
_radio_get_transmit_power:
;	radio/radio.c:919: return settings.transmit_power;
	mov	r0,#(_settings + 0x000a)
	movx	a,@r0
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radio_set_network_id'
;------------------------------------------------------------
;id                        Allocated with name '_radio_set_network_id_id_1_236'
;------------------------------------------------------------
;	radio/radio.c:925: radio_set_network_id(uint16_t id)
;	-----------------------------------------
;	 function radio_set_network_id
;	-----------------------------------------
_radio_set_network_id:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_radio_set_network_id_id_1_236
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	radio/radio.c:927: netid[0] = id&0xFF;
	mov	dptr,#_radio_set_network_id_id_1_236
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	ar4,r6
	mov	r0,#_netid
	mov	a,r4
	movx	@r0,a
;	radio/radio.c:928: netid[1] = id>>8;
	mov	ar5,r7
	mov	r0,#(_netid + 0x0001)
	mov	a,r5
	movx	@r0,a
;	radio/radio.c:929: if (!feature_golay) {
	jb	_feature_golay,00103$
;	radio/radio.c:932: register_write(EZRADIOPRO_TRANSMIT_HEADER_3, id >> 8);
	push	ar7
	push	ar6
	push	ar5
	push	ar5
	mov	dpl,#0x3A
	lcall	_register_write
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	radio/radio.c:933: register_write(EZRADIOPRO_TRANSMIT_HEADER_2, id & 0xFF);
	push	ar6
	push	ar5
	push	ar6
	mov	dpl,#0x3B
	lcall	_register_write
	dec	sp
;	radio/radio.c:934: register_write(EZRADIOPRO_CHECK_HEADER_3, id >> 8);
	mov	dpl,#0x3F
	lcall	_register_write
	dec	sp
;	radio/radio.c:935: register_write(EZRADIOPRO_CHECK_HEADER_2, id & 0xFF);
	mov	dpl,#0x40
	lcall	_register_write
	dec	sp
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'register_write'
;------------------------------------------------------------
;value                     Allocated to stack - sp -2
;reg                       Allocated to registers r7 
;EX0_saved                 Allocated to registers b0 
;------------------------------------------------------------
;	radio/radio.c:946: register_write(uint8_t reg, uint8_t value) __reentrant
;	-----------------------------------------
;	 function register_write
;	-----------------------------------------
_register_write:
	mov	r7,dpl
;	radio/radio.c:948: EX0_SAVE_DISABLE;
	mov	c,_EX0
	mov	b0,c
	clr	_EX0
;	radio/radio.c:950: NSS1 = 0;                           // drive NSS low
	clr	_NSS1
;	radio/radio.c:951: SPIF1 = 0;                          // clear SPIF
	clr	_SPIF1
;	radio/radio.c:952: SPI1DAT = (reg | 0x80);             // write reg address
	mov	a,#0x80
	orl	a,r7
	mov	_SPI1DAT,a
;	radio/radio.c:953: while (!TXBMT1);                    // wait on TXBMT
00101$:
	jnb	_TXBMT1,00101$
;	radio/radio.c:954: SPI1DAT = value;                    // write value
	mov	r0,sp
	dec	r0
	dec	r0
	mov	_SPI1DAT,@r0
;	radio/radio.c:955: while (!TXBMT1);                    // wait on TXBMT
00104$:
	jnb	_TXBMT1,00104$
;	radio/radio.c:956: while ((SPI1CFG & 0x80) == 0x80);   // wait on SPIBSY
00107$:
	mov	a,#0x80
	anl	a,_SPI1CFG
	mov	r7,a
	cjne	r7,#0x80,00129$
	sjmp	00107$
00129$:
;	radio/radio.c:958: SPIF1 = 0;                          // leave SPIF cleared
	clr	_SPIF1
;	radio/radio.c:959: NSS1 = 1;                           // drive NSS high
	setb	_NSS1
;	radio/radio.c:961: EX0_RESTORE;
	mov	c,b0
	mov	_EX0,c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'register_read'
;------------------------------------------------------------
;reg                       Allocated to registers r7 
;value                     Allocated to registers r7 
;EX0_saved                 Allocated to registers b0 
;------------------------------------------------------------
;	radio/radio.c:971: register_read(uint8_t reg) __reentrant
;	-----------------------------------------
;	 function register_read
;	-----------------------------------------
_register_read:
	mov	r7,dpl
;	radio/radio.c:974: EX0_SAVE_DISABLE;
	mov	c,_EX0
	mov	b0,c
	clr	_EX0
;	radio/radio.c:976: NSS1 = 0;				// dsrive NSS low
	clr	_NSS1
;	radio/radio.c:977: SPIF1 = 0;				// clear SPIF
	clr	_SPIF1
;	radio/radio.c:978: SPI1DAT = (reg);			// write reg address
	mov	_SPI1DAT,r7
;	radio/radio.c:979: while (!TXBMT1);			// wait on TXBMT
00101$:
	jnb	_TXBMT1,00101$
;	radio/radio.c:980: SPI1DAT = 0x00;				// write anything
	mov	_SPI1DAT,#0x00
;	radio/radio.c:981: while (!TXBMT1);			// wait on TXBMT
00104$:
	jnb	_TXBMT1,00104$
;	radio/radio.c:982: while ((SPI1CFG & 0x80) == 0x80);	// wait on SPIBSY
00107$:
	mov	a,#0x80
	anl	a,_SPI1CFG
	mov	r7,a
	cjne	r7,#0x80,00129$
	sjmp	00107$
00129$:
;	radio/radio.c:983: value = SPI1DAT;			// read value
	mov	r7,_SPI1DAT
;	radio/radio.c:984: SPIF1 = 0;				// leave SPIF cleared
	clr	_SPIF1
;	radio/radio.c:985: NSS1 = 1;				// drive NSS high
	setb	_NSS1
;	radio/radio.c:987: EX0_RESTORE;
	mov	c,b0
	mov	_EX0,c
;	radio/radio.c:989: return value;
	mov	dpl,r7
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_receive_fifo'
;------------------------------------------------------------
;buf                       Allocated to stack - sp -3
;n                         Allocated to registers r7 
;------------------------------------------------------------
;	radio/radio.c:996: read_receive_fifo(register uint8_t n, __xdata uint8_t * buf) __reentrant
;	-----------------------------------------
;	 function read_receive_fifo
;	-----------------------------------------
_read_receive_fifo:
	mov	r7,dpl
;	radio/radio.c:998: NSS1 = 0;				// drive NSS low
	clr	_NSS1
;	radio/radio.c:999: SPIF1 = 0;				// clear SPIF
	clr	_SPIF1
;	radio/radio.c:1000: SPI1DAT = EZRADIOPRO_FIFO_ACCESS;
	mov	_SPI1DAT,#0x7F
;	radio/radio.c:1001: while (!SPIF1);				// wait on SPIF
00101$:
	jnb	_SPIF1,00101$
;	radio/radio.c:1002: ACC = SPI1DAT;				// discard first byte
	mov	_ACC,_SPI1DAT
;	radio/radio.c:1004: while (n--) {
	mov	a,sp
	add	a,#0xfd
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
00107$:
	mov	ar4,r7
	dec	r7
	mov	a,r4
	jz	00109$
;	radio/radio.c:1005: SPIF1 = 0;			// clear SPIF
	clr	_SPIF1
;	radio/radio.c:1006: SPI1DAT = 0x00;			// write anything
	mov	_SPI1DAT,#0x00
;	radio/radio.c:1007: while (!SPIF1);			// wait on SPIF
00104$:
	jnb	_SPIF1,00104$
;	radio/radio.c:1008: *buf++ = SPI1DAT;		// copy to buffer
	mov	dpl,r5
	mov	dph,r6
	mov	a,_SPI1DAT
	movx	@dptr,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	sjmp	00107$
00109$:
;	radio/radio.c:1011: SPIF1 = 0;				// leave SPIF cleared
	clr	_SPIF1
;	radio/radio.c:1012: NSS1 = 1;				// drive NSS high
	setb	_NSS1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'clear_status_registers'
;------------------------------------------------------------
;	radio/radio.c:1018: clear_status_registers(void)
;	-----------------------------------------
;	 function clear_status_registers
;	-----------------------------------------
_clear_status_registers:
;	radio/radio.c:1020: register_read(EZRADIOPRO_INTERRUPT_STATUS_1);
	mov	dpl,#0x03
	lcall	_register_read
;	radio/radio.c:1021: register_read(EZRADIOPRO_INTERRUPT_STATUS_2);
	mov	dpl,#0x04
	ljmp	_register_read
;------------------------------------------------------------
;Allocation info for local variables in function 'scale_uint32'
;------------------------------------------------------------
;	radio/radio.c:1031: scale_uint32(__pdata uint32_t value, __pdata uint32_t scale)
;	-----------------------------------------
;	 function scale_uint32
;	-----------------------------------------
_scale_uint32:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	r0,#_scale_uint32_value_1_248
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
;	radio/radio.c:1033: return (value + (scale >> 1)) / scale;
	mov	r0,#(_scale_uint32_PARM_2 + 3)
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
	mov	r0,#_scale_uint32_value_1_248
	movx	a,@r0
	add	a,r2
	mov	r2,a
	inc	r0
	movx	a,@r0
	addc	a,r3
	mov	r3,a
	inc	r0
	movx	a,@r0
	addc	a,r6
	mov	r6,a
	inc	r0
	movx	a,@r0
	addc	a,r7
	mov	r7,a
	mov	r0,#_scale_uint32_PARM_2
	mov	dptr,#__divulong_PARM_2
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
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	ljmp	__divulong
;------------------------------------------------------------
;Allocation info for local variables in function 'software_reset'
;------------------------------------------------------------
;status                    Allocated with name '_software_reset_status_1_251'
;------------------------------------------------------------
;	radio/radio.c:1041: software_reset(void)
;	-----------------------------------------
;	 function software_reset
;	-----------------------------------------
_software_reset:
;	radio/radio.c:1046: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0);
	clr	a
	push	acc
	mov	dpl,#0x05
	lcall	_register_write
	dec	sp
;	radio/radio.c:1047: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, 0);
	clr	a
	push	acc
	mov	dpl,#0x06
	lcall	_register_write
	dec	sp
;	radio/radio.c:1049: clear_status_registers();
	lcall	_clear_status_registers
;	radio/radio.c:1052: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_1, (EZRADIOPRO_SWRES | EZRADIOPRO_XTON));
	mov	a,#0x81
	push	acc
	mov	dpl,#0x07
	lcall	_register_write
	dec	sp
;	radio/radio.c:1055: delay_set(2);
	mov	dptr,#0x0002
	lcall	_delay_set
;	radio/radio.c:1056: while (IRQ) {
00103$:
	jnb	_IRQ,00105$
;	radio/radio.c:1057: if (delay_expired()) {
	lcall	_delay_expired
	jnc	00103$
;	radio/radio.c:1058: return false;
	clr	c
	ret
00105$:
;	radio/radio.c:1063: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0);
	clr	a
	push	acc
	mov	dpl,#0x05
	lcall	_register_write
	dec	sp
;	radio/radio.c:1064: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, EZRADIOPRO_ENCHIPRDY);
	mov	a,#0x02
	push	acc
	mov	dpl,#0x06
	lcall	_register_write
	dec	sp
;	radio/radio.c:1066: delay_set(20);
	mov	dptr,#0x0014
	lcall	_delay_set
;	radio/radio.c:1067: while (!delay_expired()) {
00108$:
	lcall	_delay_expired
	jc	00110$
;	radio/radio.c:1068: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_1);
	mov	dpl,#0x03
	lcall	_register_read
;	radio/radio.c:1069: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_2);
	mov	dpl,#0x04
	lcall	_register_read
	mov	a,dpl
;	radio/radio.c:1070: if (status & EZRADIOPRO_ICHIPRDY) {
	jnb	acc.1,00108$
;	radio/radio.c:1071: return true;
	setb	c
	ret
00110$:
;	radio/radio.c:1074: return false;
	clr	c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'set_frequency_registers'
;------------------------------------------------------------
;band                      Allocated with name '_set_frequency_registers_band_1_257'
;------------------------------------------------------------
;	radio/radio.c:1081: set_frequency_registers(__pdata uint32_t frequency)
;	-----------------------------------------
;	 function set_frequency_registers
;	-----------------------------------------
_set_frequency_registers:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	r0,#_set_frequency_registers_frequency_1_256
	mov	a,r7
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
;	radio/radio.c:1086: if (frequency > 480000000UL) {
	mov	r0,#_set_frequency_registers_frequency_1_256
	clr	c
	movx	a,@r0
	mov	b,a
	clr	a
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,#0x38
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,#0x9C
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,#0x1C
	subb	a,b
	jc	00109$
	ljmp	00102$
00109$:
;	radio/radio.c:1087: frequency -= 480000000UL;
	mov	r0,#(_set_frequency_registers_frequency_1_256 + 1)
	movx	a,@r0
	add	a,#0xC8
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,#0x63
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,#0xE3
	movx	@r0,a
;	radio/radio.c:1088: band  = frequency / 20000000UL;
	mov	dptr,#__divulong_PARM_2
	clr	a
	movx	@dptr,a
	mov	a,#0x2D
	inc	dptr
	movx	@dptr,a
	mov	a,#0x31
	inc	dptr
	movx	@dptr,a
	mov	a,#0x01
	inc	dptr
	movx	@dptr,a
	mov	r0,#_set_frequency_registers_frequency_1_256
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
	mov	r2,dpl
	mov	dptr,#_set_frequency_registers_band_1_257
	mov	a,r2
	movx	@dptr,a
;	radio/radio.c:1089: frequency -= (uint32_t)band * 20000000UL;
	mov	dptr,#__mullong_PARM_2
	mov	a,r2
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
	mov	dptr,#0x2D00
	mov	b,#0x31
	mov	a,#0x01
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,#_set_frequency_registers_frequency_1_256
	movx	a,@r0
	clr	c
	subb	a,r4
	movx	@r0,a
	inc	r0
	movx	a,@r0
	subb	a,r5
	movx	@r0,a
	inc	r0
	movx	a,@r0
	subb	a,r6
	movx	@r0,a
	inc	r0
	movx	a,@r0
	subb	a,r7
	movx	@r0,a
;	radio/radio.c:1090: frequency  = scale_uint32(frequency, 625);
	mov	r0,#_scale_uint32_PARM_2
	mov	a,#0x71
	movx	@r0,a
	inc	r0
	mov	a,#0x02
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#_set_frequency_registers_frequency_1_256
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
	lcall	_scale_uint32
	mov	r0,#_set_frequency_registers_frequency_1_256
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
;	radio/radio.c:1091: frequency <<= 1;
	mov	r0,#_set_frequency_registers_frequency_1_256
	movx	a,@r0
	add	a,acc
	movx	@r0,a
	inc	r0
	movx	a,@r0
	rlc	a
	movx	@r0,a
	inc	r0
	movx	a,@r0
	rlc	a
	movx	@r0,a
	inc	r0
	movx	a,@r0
	rlc	a
	movx	@r0,a
;	radio/radio.c:1092: band |= EZRADIOPRO_HBSEL;
	mov	dptr,#_set_frequency_registers_band_1_257
	movx	a,@dptr
	mov	r7,a
	orl	a,#0x20
	movx	@dptr,a
	ljmp	00103$
00102$:
;	radio/radio.c:1094: frequency -= 240000000UL;
	mov	r0,#(_set_frequency_registers_frequency_1_256 + 1)
	movx	a,@r0
	add	a,#0xE4
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,#0xB1
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,#0xF1
	movx	@r0,a
;	radio/radio.c:1095: band  = frequency / 10000000UL;
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x80
	movx	@dptr,a
	mov	a,#0x96
	inc	dptr
	movx	@dptr,a
	mov	a,#0x98
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	r0,#_set_frequency_registers_frequency_1_256
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
	mov	dptr,#_set_frequency_registers_band_1_257
	mov	a,r4
	movx	@dptr,a
;	radio/radio.c:1096: frequency -= (uint32_t)band * 10000000UL;
	mov	dptr,#__mullong_PARM_2
	mov	a,r4
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
	mov	dptr,#0x9680
	mov	b,#0x98
	clr	a
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	r0,#_set_frequency_registers_frequency_1_256
	movx	a,@r0
	clr	c
	subb	a,r4
	movx	@r0,a
	inc	r0
	movx	a,@r0
	subb	a,r5
	movx	@r0,a
	inc	r0
	movx	a,@r0
	subb	a,r6
	movx	@r0,a
	inc	r0
	movx	a,@r0
	subb	a,r7
	movx	@r0,a
;	radio/radio.c:1097: frequency  = scale_uint32(frequency, 625);
	mov	r0,#_scale_uint32_PARM_2
	mov	a,#0x71
	movx	@r0,a
	inc	r0
	mov	a,#0x02
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#_set_frequency_registers_frequency_1_256
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
	lcall	_scale_uint32
	mov	r0,#_set_frequency_registers_frequency_1_256
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
;	radio/radio.c:1098: frequency <<= 2;
	mov	r0,#_set_frequency_registers_frequency_1_256
	movx	a,@r0
	add	a,acc
	movx	@r0,a
	inc	r0
	movx	a,@r0
	rlc	a
	movx	@r0,a
	inc	r0
	movx	a,@r0
	rlc	a
	movx	@r0,a
	inc	r0
	movx	a,@r0
	rlc	a
	movx	@r0,a
	dec	r0
	dec	r0
	dec	r0
	movx	a,@r0
	add	a,acc
	movx	@r0,a
	inc	r0
	movx	a,@r0
	rlc	a
	movx	@r0,a
	inc	r0
	movx	a,@r0
	rlc	a
	movx	@r0,a
	inc	r0
	movx	a,@r0
	rlc	a
	movx	@r0,a
00103$:
;	radio/radio.c:1101: band |= EZRADIOPRO_SBSEL;
	mov	dptr,#_set_frequency_registers_band_1_257
	movx	a,@dptr
	orl	a,#0x40
	movx	@dptr,a
;	radio/radio.c:1102: carrier = (uint16_t)frequency;
	mov	r0,#_set_frequency_registers_frequency_1_256
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
;	radio/radio.c:1104: register_write(EZRADIOPRO_FREQUENCY_BAND_SELECT, band);
	push	ar5
	push	ar4
	mov	dptr,#_set_frequency_registers_band_1_257
	movx	a,@dptr
	push	acc
	mov	dpl,#0x75
	lcall	_register_write
	dec	sp
	pop	ar4
	pop	ar5
;	radio/radio.c:1105: register_write(EZRADIOPRO_NOMINAL_CARRIER_FREQUENCY_1, carrier >> 8);
	mov	ar7,r5
	push	ar5
	push	ar4
	push	ar7
	mov	dpl,#0x76
	lcall	_register_write
	dec	sp
	pop	ar4
	pop	ar5
;	radio/radio.c:1106: register_write(EZRADIOPRO_NOMINAL_CARRIER_FREQUENCY_0, carrier & 0xFF);
	push	ar4
	mov	dpl,#0x77
	lcall	_register_write
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'radio_temperature'
;------------------------------------------------------------
;temp_local                Allocated to registers r6 r7 
;------------------------------------------------------------
;	radio/radio.c:1115: radio_temperature(void)
;	-----------------------------------------
;	 function radio_temperature
;	-----------------------------------------
_radio_temperature:
;	radio/radio.c:1119: AD0BUSY = 1;		// Start ADC conversion
	setb	_AD0BUSY
;	radio/radio.c:1120: while (AD0BUSY) ;  	// Wait for completion of conversion
00101$:
	jb	_AD0BUSY,00101$
;	radio/radio.c:1122: temp_local = (ADC0H << 8) | ADC0L;
	mov	r7,_ADC0H
	mov	r6,#0x00
	mov	r4,_ADC0L
	mov	r5,#0x00
	mov	a,r4
	orl	ar6,a
	mov	a,r5
	orl	ar7,a
;	radio/radio.c:1123: temp_local *= 1.64060;  // convert reading into mV ( (val/1024) * 1680 )  vref=1680mV
	mov	dpl,r6
	mov	dph,r7
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0xFF2E
	mov	b,#0xD1
	mov	a,#0x3F
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fs2sint
	mov	r6,dpl
	mov	r7,dph
;	radio/radio.c:1124: temp_local = 25.0 + (temp_local - 1025) / 3.4; // convert mV reading into degC.
	mov	a,r6
	add	a,#0xFF
	mov	r4,a
	mov	a,r7
	addc	a,#0xFB
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,#0x9A
	push	acc
	mov	a,#0x99
	push	acc
	mov	a,#0x59
	push	acc
	mov	a,#0x40
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	mov	a,#0xC8
	push	acc
	mov	a,#0x41
	push	acc
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
;	radio/radio.c:1126: return temp_local;
	ljmp	___fs2sint
;------------------------------------------------------------
;Allocation info for local variables in function 'radio_set_diversity'
;------------------------------------------------------------
;	radio/radio.c:1132: radio_set_diversity(bool enable)
;	-----------------------------------------
;	 function radio_set_diversity
;	-----------------------------------------
_radio_set_diversity:
;	radio/radio.c:1134: if (enable)
	jnb	_radio_set_diversity_PARM_1,00102$
;	radio/radio.c:1136: register_write(EZRADIOPRO_GPIO2_CONFIGURATION, 0x18);
	mov	a,#0x18
	push	acc
	mov	dpl,#0x0D
	lcall	_register_write
	dec	sp
;	radio/radio.c:1138: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, (register_read(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2) & ~EZRADIOPRO_ANTDIV_MASK) | 0x80);
	mov	dpl,#0x08
	lcall	_register_read
	mov	r7,dpl
	mov	a,#0x1F
	anl	a,r7
	orl	a,#0x80
	mov	r7,a
	push	ar7
	mov	dpl,#0x08
	lcall	_register_write
	dec	sp
	ret
00102$:
;	radio/radio.c:1143: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, (register_read(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2) & ~EZRADIOPRO_ANTDIV_MASK));
	mov	dpl,#0x08
	lcall	_register_read
	mov	r7,dpl
	anl	ar7,#0x1F
	push	ar7
	mov	dpl,#0x08
	lcall	_register_write
	dec	sp
;	radio/radio.c:1145: register_write(EZRADIOPRO_GPIO2_CONFIGURATION, 0x0A);	// GPIO2 (ANT1) output set high fixed
	mov	a,#0x0A
	push	acc
	mov	dpl,#0x0D
	lcall	_register_write
	dec	sp
;	radio/radio.c:1146: register_write(EZRADIOPRO_IO_PORT_CONFIGURATION, 0x04);	// GPIO2 output set high (fixed on ant 1)
	mov	a,#0x04
	push	acc
	mov	dpl,#0x0E
	lcall	_register_write
	dec	sp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Receiver_ISR'
;------------------------------------------------------------
;status                    Allocated to registers r6 
;status2                   Allocated to registers r7 
;len                       Allocated to registers r7 
;------------------------------------------------------------
;	radio/radio.c:1158: INTERRUPT(Receiver_ISR, INTERRUPT_INT0)
;	-----------------------------------------
;	 function Receiver_ISR
;	-----------------------------------------
_Receiver_ISR:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	radio/radio.c:1162: status2 = register_read(EZRADIOPRO_INTERRUPT_STATUS_2);
	mov	dpl,#0x04
	lcall	_register_read
	mov	r7,dpl
;	radio/radio.c:1163: status  = register_read(EZRADIOPRO_INTERRUPT_STATUS_1);
	mov	dpl,#0x03
	push	ar7
	lcall	_register_read
	mov	r6,dpl
	pop	ar7
;	radio/radio.c:1165: if (status & EZRADIOPRO_IRXFFAFULL) {
	mov	a,r6
	jnb	acc.4,00104$
;	radio/radio.c:1166: if (RX_FIFO_THRESHOLD_HIGH + (uint16_t)partial_packet_length > MAX_PACKET_LENGTH) {
	mov	r0,#_partial_packet_length
	movx	a,@r0
	mov	r4,a
	mov	r5,#0x00
	mov	a,#0x32
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	clr	c
	mov	a,#0xFC
	subb	a,r4
	clr	a
	subb	a,r5
	jnc	00150$
	ljmp	00117$
00150$:
;	radio/radio.c:1170: read_receive_fifo(RX_FIFO_THRESHOLD_HIGH, &radio_buffer[partial_packet_length]);
	mov	r0,#_partial_packet_length
	movx	a,@r0
	add	a,#_radio_buffer
	mov	r4,a
	clr	a
	addc	a,#(_radio_buffer >> 8)
	mov	r5,a
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	mov	dpl,#0x32
	lcall	_read_receive_fifo
	dec	sp
	dec	sp
;	radio/radio.c:1171: partial_packet_length += RX_FIFO_THRESHOLD_HIGH;
	mov	r0,#_partial_packet_length
	movx	a,@r0
	add	a,#0x32
	movx	@r0,a
;	radio/radio.c:1172: last_rssi = register_read(EZRADIOPRO_RECEIVED_SIGNAL_STRENGTH_INDICATOR);
	mov	dpl,#0x26
	lcall	_register_read
	mov	a,dpl
	pop	ar6
	pop	ar7
	mov	r0,#_last_rssi
	movx	@r0,a
00104$:
;	radio/radio.c:1175: if (status2 & EZRADIOPRO_IPREAVAL) {
	mov	a,r7
	jnb	acc.6,00106$
;	radio/radio.c:1177: preamble_detected = true;
	setb	_preamble_detected
;	radio/radio.c:1180: last_rssi = register_read(EZRADIOPRO_RECEIVED_SIGNAL_STRENGTH_INDICATOR);
	mov	dpl,#0x26
	push	ar6
	lcall	_register_read
	mov	a,dpl
	pop	ar6
	mov	r0,#_last_rssi
	movx	@r0,a
00106$:
;	radio/radio.c:1183: if (feature_golay == false && (status & EZRADIOPRO_ICRCERROR)) {
	jb	_feature_golay,00108$
	mov	a,r6
	jb	acc.0,00117$
;	radio/radio.c:1184: goto rxfail;
00108$:
;	radio/radio.c:1187: if (status & EZRADIOPRO_IPKVALID) {
	mov	a,r6
	jnb	acc.1,00116$
;	radio/radio.c:1188: __data uint8_t len = register_read(EZRADIOPRO_RECEIVED_PACKET_LENGTH);
	mov	dpl,#0x4B
	lcall	_register_read
;	radio/radio.c:1189: if (len > MAX_PACKET_LENGTH || partial_packet_length > len) {
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0xFC
	jc	00117$
	mov	r0,#_partial_packet_length
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,r7
	subb	a,b
	jc	00117$
;	radio/radio.c:1193: if (partial_packet_length < len) {
	mov	r0,#_partial_packet_length
	clr	c
	movx	a,@r0
	subb	a,r7
	jnc	00114$
;	radio/radio.c:1194: read_receive_fifo(len-partial_packet_length, &radio_buffer[partial_packet_length]);
	mov	r0,#_partial_packet_length
	movx	a,@r0
	add	a,#_radio_buffer
	mov	r5,a
	clr	a
	addc	a,#(_radio_buffer >> 8)
	mov	r6,a
	mov	r0,#_partial_packet_length
	setb	c
	movx	a,@r0
	subb	a,r7
	cpl	a
	mov	r4,a
	push	ar7
	push	ar5
	push	ar6
	mov	dpl,r4
	lcall	_read_receive_fifo
	dec	sp
	dec	sp
	pop	ar7
00114$:
;	radio/radio.c:1196: receive_packet_length = len;
	mov	r0,#_receive_packet_length
	mov	a,r7
	movx	@r0,a
;	radio/radio.c:1199: packet_received = true;
	setb	_packet_received
;	radio/radio.c:1202: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0);
	clr	a
	push	acc
	mov	dpl,#0x05
	lcall	_register_write
	dec	sp
;	radio/radio.c:1203: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, 0);
	clr	a
	push	acc
	mov	dpl,#0x06
	lcall	_register_write
	dec	sp
;	radio/radio.c:1206: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_1, EZRADIOPRO_PLLON);
	mov	a,#0x02
	push	acc
	mov	dpl,#0x07
	lcall	_register_write
	dec	sp
00116$:
;	radio/radio.c:1208: return;
;	radio/radio.c:1210: rxfail:
	sjmp	00120$
00117$:
;	radio/radio.c:1211: if (errors.rx_errors != 0xFFFF) {
	mov	r0,#_errors
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	cjne	r6,#0xFF,00158$
	cjne	r7,#0xFF,00158$
	sjmp	00119$
00158$:
;	radio/radio.c:1212: errors.rx_errors++;
	inc	r6
	cjne	r6,#0x00,00159$
	inc	r7
00159$:
	mov	r0,#_errors
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
00119$:
;	radio/radio.c:1214: radio_receiver_on();
	lcall	_radio_receiver_on
00120$:
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.ascii "oversized packet"
	.db 0x00
__str_1:
	.ascii "oversized golay packet"
	.db 0x00
_reg_index:
	.db #0x1C	; 28
	.db #0x1F	; 31
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x25	; 37
	.db #0x2A	; 42
	.db #0x6E	; 110	'n'
	.db #0x6F	; 111	'o'
	.db #0x72	; 114	'r'
_air_data_rates:
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x13	; 19
	.db #0x18	; 24
	.db #0x20	; 32
	.db #0x30	; 48	'0'
	.db #0x40	; 64
	.db #0x60	; 96
	.db #0x80	; 128
	.db #0xC0	; 192
	.db #0xFA	; 250
_reg_table_433:
	.db #0x27	; 39
	.db #0x27	; 39
	.db #0x27	; 39
	.db #0x2E	; 46
	.db #0x16	; 22
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x0B	; 11
	.db #0x9A	; 154
	.db #0x88	; 136
	.db #0x8A	; 138
	.db #0x8C	; 140
	.db #0x8D	; 141
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0xF4	; 244
	.db #0xFA	; 250
	.db #0x7D	; 125
	.db #0x3F	; 63
	.db #0x69	; 105	'i'
	.db #0xA7	; 167
	.db #0x7D	; 125
	.db #0x53	; 83	'S'
	.db #0x5E	; 94
	.db #0x7D	; 125
	.db #0x5E	; 94
	.db #0x3F	; 63
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x41	; 65	'A'
	.db #0x83	; 131
	.db #0x06	; 6
	.db #0x0C	; 12
	.db #0x37	; 55	'7'
	.db #0xC4	; 196
	.db #0x06	; 6
	.db #0x89	; 137
	.db #0x5D	; 93
	.db #0x06	; 6
	.db #0x5D	; 93
	.db #0x0C	; 12
	.db #0xAA	; 170
	.db #0x89	; 137
	.db #0x12	; 18
	.db #0x25	; 37
	.db #0x4A	; 74	'J'
	.db #0x4C	; 76	'L'
	.db #0x9C	; 156
	.db #0x25	; 37
	.db #0x37	; 55	'7'
	.db #0x86	; 134
	.db #0x25	; 37
	.db #0x86	; 134
	.db #0x4A	; 74	'J'
	.db #0xAB	; 171
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x85	; 133
	.db #0x08	; 8
	.db #0x0E	; 14
	.db #0x12	; 18
	.db #0x72	; 114	'r'
	.db #0x8A	; 138
	.db #0x0E	; 14
	.db #0x18	; 24
	.db #0xBB	; 187
	.db #0x0E	; 14
	.db #0xBB	; 187
	.db #0xEA	; 234
	.db #0xFF	; 255
	.db #0x1D	; 29
	.db #0x1D	; 29
	.db #0x1D	; 29
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x20	; 32
	.db #0x30	; 48	'0'
	.db #0x41	; 65	'A'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x41	; 65	'A'
	.db #0x83	; 131
	.db #0x9B	; 155
	.db #0xC4	; 196
	.db #0x08	; 8
	.db #0x0C	; 12
	.db #0x10	; 16
	.db #0x18	; 24
	.db #0x20	; 32
	.db #0x31	; 49	'1'
	.db #0x40	; 64
	.db #0x62	; 98	'b'
	.db #0xC5	; 197
	.db #0x89	; 137
	.db #0x12	; 18
	.db #0xA6	; 166
	.db #0x9C	; 156
	.db #0x31	; 49	'1'
	.db #0x4A	; 74	'J'
	.db #0x62	; 98	'b'
	.db #0x93	; 147
	.db #0xC5	; 197
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x0D	; 13
	.db #0x1A	; 26
	.db #0x1E	; 30
	.db #0x26	; 38
	.db #0x33	; 51	'3'
	.db #0x4D	; 77	'M'
	.db #0x66	; 102	'f'
	.db #0x9A	; 154
	.db #0xCD	; 205
	.db #0xFE	; 254
	.db #0xFE	; 254
_reg_table_470:
	.db #0x2B	; 43
	.db #0x2B	; 43
	.db #0x2B	; 43
	.db #0x2E	; 46
	.db #0x16	; 22
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x0B	; 11
	.db #0x9A	; 154
	.db #0x88	; 136
	.db #0x8A	; 138
	.db #0x8C	; 140
	.db #0x8D	; 141
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0xF4	; 244
	.db #0xFA	; 250
	.db #0x7D	; 125
	.db #0x3F	; 63
	.db #0x69	; 105	'i'
	.db #0xA7	; 167
	.db #0x7D	; 125
	.db #0x53	; 83	'S'
	.db #0x5E	; 94
	.db #0x7D	; 125
	.db #0x5E	; 94
	.db #0x3F	; 63
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x41	; 65	'A'
	.db #0x83	; 131
	.db #0x06	; 6
	.db #0x0C	; 12
	.db #0x37	; 55	'7'
	.db #0xC4	; 196
	.db #0x06	; 6
	.db #0x89	; 137
	.db #0x5D	; 93
	.db #0x06	; 6
	.db #0x5D	; 93
	.db #0x0C	; 12
	.db #0xAA	; 170
	.db #0x89	; 137
	.db #0x12	; 18
	.db #0x25	; 37
	.db #0x4A	; 74	'J'
	.db #0x4C	; 76	'L'
	.db #0x9C	; 156
	.db #0x25	; 37
	.db #0x37	; 55	'7'
	.db #0x86	; 134
	.db #0x25	; 37
	.db #0x86	; 134
	.db #0x4A	; 74	'J'
	.db #0xAB	; 171
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x85	; 133
	.db #0x08	; 8
	.db #0x0E	; 14
	.db #0x12	; 18
	.db #0x72	; 114	'r'
	.db #0x8A	; 138
	.db #0x0E	; 14
	.db #0x18	; 24
	.db #0xBB	; 187
	.db #0x0E	; 14
	.db #0xBB	; 187
	.db #0xEA	; 234
	.db #0xFF	; 255
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x21	; 33
	.db #0x30	; 48	'0'
	.db #0x41	; 65	'A'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x41	; 65	'A'
	.db #0x83	; 131
	.db #0x9B	; 155
	.db #0xC4	; 196
	.db #0x08	; 8
	.db #0x0C	; 12
	.db #0x10	; 16
	.db #0x18	; 24
	.db #0x20	; 32
	.db #0x31	; 49	'1'
	.db #0x40	; 64
	.db #0x62	; 98	'b'
	.db #0xC5	; 197
	.db #0x89	; 137
	.db #0x12	; 18
	.db #0xA6	; 166
	.db #0x9C	; 156
	.db #0x31	; 49	'1'
	.db #0x4A	; 74	'J'
	.db #0x62	; 98	'b'
	.db #0x93	; 147
	.db #0xC5	; 197
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x0D	; 13
	.db #0x1A	; 26
	.db #0x1E	; 30
	.db #0x26	; 38
	.db #0x33	; 51	'3'
	.db #0x4D	; 77	'M'
	.db #0x66	; 102	'f'
	.db #0x9A	; 154
	.db #0xCD	; 205
	.db #0xFE	; 254
	.db #0xFE	; 254
_reg_table_868:
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x0B	; 11
	.db #0x9A	; 154
	.db #0x88	; 136
	.db #0x8A	; 138
	.db #0x8C	; 140
	.db #0x8D	; 141
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0xD0	; 208
	.db #0xE8	; 232
	.db #0xF4	; 244
	.db #0xFA	; 250
	.db #0xD3	; 211
	.db #0xA7	; 167
	.db #0x7D	; 125
	.db #0x53	; 83	'S'
	.db #0x5E	; 94
	.db #0x7D	; 125
	.db #0x5E	; 94
	.db #0x3F	; 63
	.db #0x30	; 48	'0'
	.db #0xE0	; 224
	.db #0x60	; 96
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x41	; 65	'A'
	.db #0x83	; 131
	.db #0x9B	; 155
	.db #0xC4	; 196
	.db #0x06	; 6
	.db #0x89	; 137
	.db #0x5D	; 93
	.db #0x06	; 6
	.db #0x5D	; 93
	.db #0x0C	; 12
	.db #0xAA	; 170
	.db #0x62	; 98	'b'
	.db #0xC5	; 197
	.db #0x89	; 137
	.db #0x12	; 18
	.db #0xA6	; 166
	.db #0x9C	; 156
	.db #0x25	; 37
	.db #0x37	; 55	'7'
	.db #0x86	; 134
	.db #0x25	; 37
	.db #0x86	; 134
	.db #0x4A	; 74	'J'
	.db #0xAB	; 171
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x23	; 35
	.db #0x44	; 68	'D'
	.db #0x85	; 133
	.db #0x08	; 8
	.db #0x39	; 57	'9'
	.db #0x8A	; 138
	.db #0x0E	; 14
	.db #0x18	; 24
	.db #0xBB	; 187
	.db #0x0E	; 14
	.db #0xBB	; 187
	.db #0xEA	; 234
	.db #0xFF	; 255
	.db #0x1C	; 28
	.db #0x1C	; 28
	.db #0x1C	; 28
	.db #0x1C	; 28
	.db #0x1C	; 28
	.db #0x1E	; 30
	.db #0x20	; 32
	.db #0x30	; 48	'0'
	.db #0x41	; 65	'A'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x41	; 65	'A'
	.db #0x83	; 131
	.db #0x9B	; 155
	.db #0xC4	; 196
	.db #0x08	; 8
	.db #0x0C	; 12
	.db #0x10	; 16
	.db #0x18	; 24
	.db #0x20	; 32
	.db #0x31	; 49	'1'
	.db #0x40	; 64
	.db #0x62	; 98	'b'
	.db #0xC5	; 197
	.db #0x89	; 137
	.db #0x12	; 18
	.db #0xA6	; 166
	.db #0x9C	; 156
	.db #0x31	; 49	'1'
	.db #0x4A	; 74	'J'
	.db #0x62	; 98	'b'
	.db #0x93	; 147
	.db #0xC5	; 197
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x0D	; 13
	.db #0x1A	; 26
	.db #0x1E	; 30
	.db #0x26	; 38
	.db #0x33	; 51	'3'
	.db #0x4D	; 77	'M'
	.db #0x66	; 102	'f'
	.db #0x9A	; 154
	.db #0xCD	; 205
	.db #0xFE	; 254
	.db #0xFE	; 254
_reg_table_915:
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x05	; 5
	.db #0x0B	; 11
	.db #0x9A	; 154
	.db #0x88	; 136
	.db #0x8A	; 138
	.db #0x8C	; 140
	.db #0x8D	; 141
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0xD0	; 208
	.db #0xE8	; 232
	.db #0xF4	; 244
	.db #0xFA	; 250
	.db #0xD3	; 211
	.db #0xA7	; 167
	.db #0x7D	; 125
	.db #0x53	; 83	'S'
	.db #0x5E	; 94
	.db #0x7D	; 125
	.db #0x5E	; 94
	.db #0x3F	; 63
	.db #0x30	; 48	'0'
	.db #0xE0	; 224
	.db #0x60	; 96
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x41	; 65	'A'
	.db #0x83	; 131
	.db #0x9B	; 155
	.db #0xC4	; 196
	.db #0x06	; 6
	.db #0x89	; 137
	.db #0x5D	; 93
	.db #0x06	; 6
	.db #0x5D	; 93
	.db #0x0C	; 12
	.db #0xAA	; 170
	.db #0x62	; 98	'b'
	.db #0xC5	; 197
	.db #0x89	; 137
	.db #0x12	; 18
	.db #0xA6	; 166
	.db #0x9C	; 156
	.db #0x25	; 37
	.db #0x37	; 55	'7'
	.db #0x86	; 134
	.db #0x25	; 37
	.db #0x86	; 134
	.db #0x4A	; 74	'J'
	.db #0xAB	; 171
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x23	; 35
	.db #0x44	; 68	'D'
	.db #0x85	; 133
	.db #0x08	; 8
	.db #0x39	; 57	'9'
	.db #0x8A	; 138
	.db #0x0E	; 14
	.db #0x18	; 24
	.db #0xBB	; 187
	.db #0x0E	; 14
	.db #0xBB	; 187
	.db #0xEA	; 234
	.db #0xFF	; 255
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x1E	; 30
	.db #0x20	; 32
	.db #0x30	; 48	'0'
	.db #0x41	; 65	'A'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x41	; 65	'A'
	.db #0x83	; 131
	.db #0x9B	; 155
	.db #0xC4	; 196
	.db #0x08	; 8
	.db #0x0C	; 12
	.db #0x10	; 16
	.db #0x18	; 24
	.db #0x20	; 32
	.db #0x31	; 49	'1'
	.db #0x40	; 64
	.db #0x62	; 98	'b'
	.db #0xC5	; 197
	.db #0x89	; 137
	.db #0x12	; 18
	.db #0xA6	; 166
	.db #0x9C	; 156
	.db #0x31	; 49	'1'
	.db #0x4A	; 74	'J'
	.db #0x62	; 98	'b'
	.db #0x93	; 147
	.db #0xC5	; 197
	.db #0x27	; 39
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x0D	; 13
	.db #0x1A	; 26
	.db #0x1E	; 30
	.db #0x26	; 38
	.db #0x33	; 51	'3'
	.db #0x4D	; 77	'M'
	.db #0x66	; 102	'f'
	.db #0x9A	; 154
	.db #0xCD	; 205
	.db #0xFE	; 254
	.db #0xFE	; 254
_power_levels:
	.db #0x11	; 17
	.db #0x14	; 20
	.db #0x1B	; 27
	.db #0x1D	; 29
	.db #0x1E	; 30
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
