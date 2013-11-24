;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.0 #8604 (May 11 2013) (Linux)
; This file was generated Sun Nov 24 17:43:14 2013
;--------------------------------------------------------
	.module tdm
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fhop_set_locked
	.globl _fhop_window_change
	.globl _fhop_receive_channel
	.globl _fhop_transmit_channel
	.globl _packet_inject
	.globl _packet_set_max_xmit
	.globl _packet_force_resend
	.globl _packet_is_duplicate
	.globl _packet_is_injected
	.globl _packet_is_resend
	.globl _packet_get_next
	.globl _timer_entropy
	.globl _delay_msec
	.globl _timer2_tick
	.globl _radio_temperature
	.globl _MAVLink_report
	.globl _radio_receive_in_progress
	.globl _radio_get_transmit_power
	.globl _radio_air_rate
	.globl _radio_current_rssi
	.globl _radio_last_rssi
	.globl _radio_set_channel
	.globl _radio_receiver_on
	.globl _radio_transmit
	.globl _radio_preamble_detected
	.globl _radio_receive_packet
	.globl _printf_end_capture
	.globl _printf_start_capture
	.globl _printfl
	.globl _panic
	.globl _at_command
	.globl _constrain
	.globl _serial_write_buf
	.globl _strlen
	.globl _memset
	.globl _memcpy
	.globl _rand
	.globl _putchar
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
	.globl _pbuf
	.globl _trailer
	.globl _test_display
	.globl _lbt_rssi
	.globl _duty_cycle_offset
	.globl _duty_cycle
	.globl _transmit_wait
	.globl __canary
	.globl _tdm_show_rssi
	.globl _tdm_change_phase
	.globl _tdm_remote_at
	.globl _tdm_serial_loop
	.globl _tdm_init
	.globl _tdm_report_timing
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
_average_duty_cycle:
	.ds 4
_tdm_show_rssi_sloc0_1_0:
	.ds 2
_tdm_show_rssi_sloc1_1_0:
	.ds 2
_tdm_show_rssi_sloc2_1_0:
	.ds 2
_tdm_show_rssi_sloc3_1_0:
	.ds 2
_tdm_show_rssi_sloc4_1_0:
	.ds 2
_sync_tx_windows_old_state_1_155:
	.ds 1
_tdm_state_update_sloc0_1_0:
	.ds 2
_tdm_state_update_sloc1_1_0:
	.ds 4
_tdm_state_update_sloc2_1_0:
	.ds 4
_tdm_init_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
__canary	=	0x00ff
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_bonus_transmit:
	.ds 1
_transmit_yield:
	.ds 1
_blink_state:
	.ds 1
_received_packet:
	.ds 1
_duty_cycle_wait:
	.ds 1
_send_statistics:
	.ds 1
_send_at_command:
	.ds 1
_sync_tx_windows_sloc0_1_0:
	.ds 1
_tdm_state_update_sloc3_1_0:
	.ds 1
_tdm_serial_loop_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
_tdm_state:
	.ds 1
_tdm_state_remaining:
	.ds 2
_tx_window_width:
	.ds 2
_max_data_packet_length:
	.ds 1
_silence_period:
	.ds 2
_packet_latency:
	.ds 2
_ticks_per_byte:
	.ds 2
_transmit_wait::
	.ds 2
_duty_cycle::
	.ds 1
_duty_cycle_offset::
	.ds 1
_transmitted_ticks:
	.ds 2
_lbt_rssi::
	.ds 1
_lbt_listen_time:
	.ds 2
_lbt_min_time:
	.ds 2
_lbt_rand:
	.ds 2
_test_display::
	.ds 1
_trailer::
	.ds 2
_remote_at_cmd:
	.ds 17
_sync_tx_windows_delta_2_162:
	.ds 2
_tdm_serial_loop_last_t_1_207:
	.ds 2
_tdm_serial_loop_last_link_update_1_207:
	.ds 2
_tdm_serial_loop_len_2_208:
	.ds 1
_tdm_serial_loop_tdelta_2_208:
	.ds 2
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_pbuf::
	.ds 252
_link_update_unlock_count_1_185:
	.ds 1
_link_update_temperature_count_1_185:
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
;Allocation info for local variables in function 'tdm_show_rssi'
;------------------------------------------------------------
;sloc0                     Allocated with name '_tdm_show_rssi_sloc0_1_0'
;sloc1                     Allocated with name '_tdm_show_rssi_sloc1_1_0'
;sloc2                     Allocated with name '_tdm_show_rssi_sloc2_1_0'
;sloc3                     Allocated with name '_tdm_show_rssi_sloc3_1_0'
;sloc4                     Allocated with name '_tdm_show_rssi_sloc4_1_0'
;------------------------------------------------------------
;	radio/tdm.c:152: tdm_show_rssi(void)
;	-----------------------------------------
;	 function tdm_show_rssi
;	-----------------------------------------
_tdm_show_rssi:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	radio/tdm.c:154: printf("L/R RSSI: %u/%u  L/R noise: %u/%u pkts: %u ",
	mov	r0,#(_statistics + 0x0002)
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	r0,#(_remote_statistics + 0x0001)
	movx	a,@r0
	mov	r5,a
	mov	r4,#0x00
	mov	r0,#(_statistics + 0x0001)
	movx	a,@r0
	mov	r3,a
	mov	_tdm_show_rssi_sloc0_1_0,r3
	mov	(_tdm_show_rssi_sloc0_1_0 + 1),#0x00
	mov	r0,#_remote_statistics
	movx	a,@r0
	mov	r3,a
	mov	_tdm_show_rssi_sloc1_1_0,r3
	mov	(_tdm_show_rssi_sloc1_1_0 + 1),#0x00
	mov	r0,#_statistics
	movx	a,@r0
	mov	r3,a
	mov	r2,#0x00
	push	ar6
	push	ar7
	push	ar5
	push	ar4
	push	_tdm_show_rssi_sloc0_1_0
	push	(_tdm_show_rssi_sloc0_1_0 + 1)
	push	_tdm_show_rssi_sloc1_1_0
	push	(_tdm_show_rssi_sloc1_1_0 + 1)
	push	ar3
	push	ar2
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printfl
	mov	a,sp
	add	a,#0xf3
	mov	sp,a
;	radio/tdm.c:160: printf(" txe=%u rxe=%u stx=%u srx=%u ecc=%u/%u temp=%d dco=%u\n",
	mov	r0,#_duty_cycle_offset
	movx	a,@r0
	mov	r6,a
	mov	r7,#0x00
	push	ar7
	push	ar6
	lcall	_radio_temperature
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	r0,#(_errors + 0x000a)
	movx	a,@r0
	mov	_tdm_show_rssi_sloc1_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_tdm_show_rssi_sloc1_1_0 + 1),a
	mov	r0,#(_errors + 0x0008)
	movx	a,@r0
	mov	_tdm_show_rssi_sloc0_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_tdm_show_rssi_sloc0_1_0 + 1),a
	mov	r0,#(_errors + 0x0006)
	movx	a,@r0
	mov	_tdm_show_rssi_sloc2_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_tdm_show_rssi_sloc2_1_0 + 1),a
	mov	r0,#(_errors + 0x0004)
	movx	a,@r0
	mov	_tdm_show_rssi_sloc3_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_tdm_show_rssi_sloc3_1_0 + 1),a
	mov	r0,#_errors
	movx	a,@r0
	mov	_tdm_show_rssi_sloc4_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_tdm_show_rssi_sloc4_1_0 + 1),a
	mov	r0,#(_errors + 0x0002)
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	push	ar6
	push	ar7
	push	ar4
	push	ar5
	push	_tdm_show_rssi_sloc1_1_0
	push	(_tdm_show_rssi_sloc1_1_0 + 1)
	push	_tdm_show_rssi_sloc0_1_0
	push	(_tdm_show_rssi_sloc0_1_0 + 1)
	push	_tdm_show_rssi_sloc2_1_0
	push	(_tdm_show_rssi_sloc2_1_0 + 1)
	push	_tdm_show_rssi_sloc3_1_0
	push	(_tdm_show_rssi_sloc3_1_0 + 1)
	push	_tdm_show_rssi_sloc4_1_0
	push	(_tdm_show_rssi_sloc4_1_0 + 1)
	push	ar2
	push	ar3
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printfl
	mov	a,sp
	add	a,#0xed
	mov	sp,a
;	radio/tdm.c:169: statistics.receive_count = 0;
	mov	r0,#(_statistics + 0x0002)
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display_test_output'
;------------------------------------------------------------
;	radio/tdm.c:175: display_test_output(void)
;	-----------------------------------------
;	 function display_test_output
;	-----------------------------------------
_display_test_output:
;	radio/tdm.c:177: if (test_display & AT_TEST_RSSI) {
	mov	r0,#_test_display
	movx	a,@r0
	anl	a,#0x01
	jz	00103$
;	radio/tdm.c:178: tdm_show_rssi();
	ljmp	_tdm_show_rssi
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'flight_time_estimate'
;------------------------------------------------------------
;	radio/tdm.c:188: static uint16_t flight_time_estimate(__pdata uint8_t packet_len)
;	-----------------------------------------
;	 function flight_time_estimate
;	-----------------------------------------
_flight_time_estimate:
	mov	r7,dpl
;	radio/tdm.c:190: return packet_latency + (packet_len * ticks_per_byte);
	mov	r6,#0x00
	mov	r0,#_ticks_per_byte
	mov	dptr,#__mulint_PARM_2
	movx	a,@r0
	movx	@dptr,a
	inc	r0
	movx	a,@r0
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r6
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	r0,#_packet_latency
	movx	a,@r0
	add	a,r6
	mov	r6,a
	inc	r0
	movx	a,@r0
	addc	a,r7
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sync_tx_windows'
;------------------------------------------------------------
;old_state                 Allocated with name '_sync_tx_windows_old_state_1_155'
;------------------------------------------------------------
;	radio/tdm.c:204: sync_tx_windows(__pdata uint8_t packet_length)
;	-----------------------------------------
;	 function sync_tx_windows
;	-----------------------------------------
_sync_tx_windows:
	mov	r7,dpl
;	radio/tdm.c:206: __data enum tdm_state old_state = tdm_state;
	mov	r0,#_tdm_state
	movx	a,@r0
	mov	_sync_tx_windows_old_state_1_155,a
;	radio/tdm.c:207: __pdata uint16_t old_remaining = tdm_state_remaining;
	mov	r0,#_tdm_state_remaining
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
;	radio/tdm.c:209: if (trailer.bonus) {
	mov	r0,#(_trailer + 0x0001)
	movx	a,@r0
	jnb	acc.6,00109$
;	radio/tdm.c:212: if (old_state == TDM_SILENCE1) {
	mov	a,#0x01
	cjne	a,_sync_tx_windows_old_state_1_155,00106$
;	radio/tdm.c:218: tdm_state_remaining = silence_period;
	mov	r0,#_silence_period
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	mov	r0,#_tdm_state_remaining
	mov	a,r2
	movx	@r0,a
	inc	r0
	mov	a,r3
	movx	@r0,a
	sjmp	00110$
00106$:
;	radio/tdm.c:219: } else if (old_state == TDM_RECEIVE || old_state == TDM_SILENCE2) {
	mov	a,#0x02
	cjne	a,_sync_tx_windows_old_state_1_155,00151$
	sjmp	00101$
00151$:
	mov	a,#0x03
	cjne	a,_sync_tx_windows_old_state_1_155,00102$
00101$:
;	radio/tdm.c:224: tdm_state = TDM_SILENCE2;
	mov	r0,#_tdm_state
	mov	a,#0x03
	movx	@r0,a
;	radio/tdm.c:225: tdm_state_remaining = 1;
	mov	r0,#_tdm_state_remaining
	mov	a,#0x01
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	sjmp	00110$
00102$:
;	radio/tdm.c:227: tdm_state = TDM_TRANSMIT;
	mov	r0,#_tdm_state
	clr	a
	movx	@r0,a
;	radio/tdm.c:228: tdm_state_remaining = trailer.window;
	mov	r0,#_trailer
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	anl	a,#0x1F
	mov	r3,a
	mov	r0,#_tdm_state_remaining
	mov	a,r2
	movx	@r0,a
	inc	r0
	mov	a,r3
	movx	@r0,a
	sjmp	00110$
00109$:
;	radio/tdm.c:233: tdm_state = TDM_RECEIVE;
	mov	r0,#_tdm_state
	mov	a,#0x02
	movx	@r0,a
;	radio/tdm.c:234: tdm_state_remaining = trailer.window;
	mov	r0,#_trailer
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	anl	a,#0x1F
	mov	r3,a
	mov	r0,#_tdm_state_remaining
	mov	a,r2
	movx	@r0,a
	inc	r0
	mov	a,r3
	movx	@r0,a
00110$:
;	radio/tdm.c:239: bonus_transmit = (tdm_state == TDM_RECEIVE && packet_length==0);
	mov	r0,#_tdm_state
	movx	a,@r0
	cjne	a,#0x02,00121$
	mov	a,r7
	cjne	a,#0x01,00156$
00156$:
	mov	_sync_tx_windows_sloc0_1_0,c
	jc	00122$
00121$:
	clr	_sync_tx_windows_sloc0_1_0
	sjmp	00123$
00122$:
	setb	_sync_tx_windows_sloc0_1_0
00123$:
	mov	c,_sync_tx_windows_sloc0_1_0
	mov	_bonus_transmit,c
;	radio/tdm.c:242: if (tdm_state != TDM_TRANSMIT) {
	mov	r0,#_tdm_state
	movx	a,@r0
	jz	00112$
;	radio/tdm.c:243: transmit_yield = 0;
	clr	_transmit_yield
00112$:
;	radio/tdm.c:246: if (at_testmode & AT_TEST_TDM) {
	mov	r0,#_at_testmode
	movx	a,@r0
	anl	a,#0x02
	jnz	00159$
	ret
00159$:
;	radio/tdm.c:248: delta = old_remaining - tdm_state_remaining;
	mov	r0,#_tdm_state_remaining
	mov	r1,#_sync_tx_windows_delta_2_162
	setb	c
	movx	a,@r0
	subb	a,r4
	cpl	a
	cpl	c
	movx	@r1,a
	cpl	c
	inc	r0
	movx	a,@r0
	subb	a,r5
	cpl	a
	inc	r1
	movx	@r1,a
;	radio/tdm.c:249: if (old_state != tdm_state ||
	mov	r0,#_tdm_state
	movx	a,@r0
	cjne	a,_sync_tx_windows_old_state_1_155,00113$
;	radio/tdm.c:250: delta > (int16_t)packet_latency/2 ||
	push	ar7
	mov	r0,#_packet_latency
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	push	ar3
	push	ar2
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	mov	r0,#_sync_tx_windows_delta_2_162
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,r6
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,r7
	xrl	a,#0x80
	xrl	b,#0x80
	subb	a,b
	pop	ar7
;	radio/tdm.c:251: delta < -(int16_t)packet_latency/2) {
	jc	00113$
	clr	a
	subb	a,r2
	mov	r2,a
	clr	a
	subb	a,r3
	mov	r3,a
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	push	ar7
	lcall	__divsint
	mov	r3,dpl
	mov	r6,dph
	pop	ar7
	mov	r0,#_sync_tx_windows_delta_2_162
	clr	c
	movx	a,@r0
	subb	a,r3
	inc	r0
	movx	a,@r0
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00119$
00113$:
;	radio/tdm.c:252: printf("TDM: %u/%u len=%u ",
	mov	r6,#0x00
	mov	r0,#_tdm_state
	movx	a,@r0
	mov	r2,a
	mov	r3,#0x00
	mov	r4,_sync_tx_windows_old_state_1_155
	mov	r5,#0x00
	push	ar7
	push	ar6
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printfl
	mov	a,sp
	add	a,#0xf7
	mov	sp,a
;	radio/tdm.c:256: printf(" delta: %d\n",
	mov	r0,#_sync_tx_windows_delta_2_162
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
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
00119$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'tdm_state_update'
;------------------------------------------------------------
;sloc0                     Allocated with name '_tdm_state_update_sloc0_1_0'
;sloc1                     Allocated with name '_tdm_state_update_sloc1_1_0'
;sloc2                     Allocated with name '_tdm_state_update_sloc2_1_0'
;------------------------------------------------------------
;	radio/tdm.c:265: tdm_state_update(__pdata uint16_t tdelta)
;	-----------------------------------------
;	 function tdm_state_update
;	-----------------------------------------
_tdm_state_update:
	mov	r6,dpl
	mov	r7,dph
;	radio/tdm.c:269: if (tdelta > transmit_wait) {
	mov	r0,#_transmit_wait
	clr	c
	movx	a,@r0
	subb	a,r6
	inc	r0
	movx	a,@r0
	subb	a,r7
	jnc	00102$
;	radio/tdm.c:270: transmit_wait = 0;
	mov	r0,#_transmit_wait
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	sjmp	00116$
00102$:
;	radio/tdm.c:272: transmit_wait -= tdelta;
	mov	r0,#_transmit_wait
	movx	a,@r0
	clr	c
	subb	a,r6
	movx	@r0,a
	inc	r0
	movx	a,@r0
	subb	a,r7
	movx	@r0,a
;	radio/tdm.c:276: while (tdelta >= tdm_state_remaining) {
00116$:
	mov	r0,#_tdm_state_remaining
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,r6
	subb	a,b
	inc	r0
	movx	a,@r0
	mov	b,a
	mov	a,r7
	subb	a,b
	jnc	00146$
	ljmp	00118$
00146$:
;	radio/tdm.c:278: tdm_state = (tdm_state+1) % 4;
	mov	r0,#_tdm_state
	movx	a,@r0
	mov	r4,a
	mov	r5,#0x00
	inc	r4
	cjne	r4,#0x00,00147$
	inc	r5
00147$:
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	push	ar7
	push	ar6
	lcall	__modsint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	r0,#_tdm_state
	mov	a,r4
	movx	@r0,a
;	radio/tdm.c:281: tdelta -= tdm_state_remaining;
	mov	r0,#_tdm_state_remaining
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
;	radio/tdm.c:283: if (tdm_state == TDM_TRANSMIT || tdm_state == TDM_RECEIVE) {
	mov	r0,#_tdm_state
	movx	a,@r0
	jz	00104$
	mov	r0,#_tdm_state
	movx	a,@r0
	cjne	a,#0x02,00105$
00104$:
;	radio/tdm.c:284: tdm_state_remaining = tx_window_width;
	mov	r0,#_tx_window_width
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	mov	r0,#_tdm_state_remaining
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	sjmp	00106$
00105$:
;	radio/tdm.c:286: tdm_state_remaining = silence_period;
	mov	r0,#_silence_period
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	mov	r0,#_tdm_state_remaining
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
00106$:
;	radio/tdm.c:292: if (tdm_state == TDM_TRANSMIT || tdm_state == TDM_SILENCE1) {
	mov	r0,#_tdm_state
	movx	a,@r0
	jz	00110$
	mov	r0,#_tdm_state
	movx	a,@r0
	cjne	a,#0x01,00111$
00110$:
;	radio/tdm.c:293: fhop_window_change();
	push	ar7
	push	ar6
	lcall	_fhop_window_change
;	radio/tdm.c:294: radio_receiver_on();
	lcall	_radio_receiver_on
	pop	ar6
	pop	ar7
;	radio/tdm.c:296: if (num_fh_channels > 1) {
	mov	r0,#_num_fh_channels
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,#0x01
	subb	a,b
	jnc	00111$
;	radio/tdm.c:298: lbt_listen_time = 0;
	mov	r0,#_lbt_listen_time
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
;	radio/tdm.c:299: lbt_rand = 0;
	mov	r0,#_lbt_rand
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
00111$:
;	radio/tdm.c:303: if (tdm_state == TDM_TRANSMIT && (duty_cycle - duty_cycle_offset) != 100) {
	mov	r0,#_tdm_state
	movx	a,@r0
	jz	00155$
	ljmp	00114$
00155$:
	push	ar6
	push	ar7
	mov	r0,#_duty_cycle
	movx	a,@r0
	mov	r4,a
	mov	r5,#0x00
	mov	r0,#_duty_cycle_offset
	movx	a,@r0
	mov	_tdm_state_update_sloc0_1_0,a
	mov	(_tdm_state_update_sloc0_1_0 + 1),#0x00
	mov	a,r4
	clr	c
	subb	a,_tdm_state_update_sloc0_1_0
	mov	r6,a
	mov	a,r5
	subb	a,(_tdm_state_update_sloc0_1_0 + 1)
	mov	r7,a
	cjne	r6,#0x64,00156$
	cjne	r7,#0x00,00156$
	pop	ar7
	pop	ar6
	ljmp	00114$
00156$:
	pop	ar7
	pop	ar6
;	radio/tdm.c:305: average_duty_cycle = (0.95*average_duty_cycle) + (0.05*(100.0*transmitted_ticks)/(2*(silence_period+tx_window_width)));
	push	ar6
	push	ar7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	_average_duty_cycle
	push	(_average_duty_cycle + 1)
	push	(_average_duty_cycle + 2)
	push	(_average_duty_cycle + 3)
	mov	dptr,#0x3333
	mov	b,#0x73
	mov	a,#0x3F
	lcall	___fsmul
	mov	_tdm_state_update_sloc1_1_0,dpl
	mov	(_tdm_state_update_sloc1_1_0 + 1),dph
	mov	(_tdm_state_update_sloc1_1_0 + 2),b
	mov	(_tdm_state_update_sloc1_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,#_transmitted_ticks
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	push	ar5
	push	ar4
	lcall	___uint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	pop	ar4
	pop	ar5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	dptr,#0x0000
	mov	b,#0xA0
	mov	a,#0x40
	lcall	___fsmul
	mov	_tdm_state_update_sloc2_1_0,dpl
	mov	(_tdm_state_update_sloc2_1_0 + 1),dph
	mov	(_tdm_state_update_sloc2_1_0 + 2),b
	mov	(_tdm_state_update_sloc2_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,#_silence_period
	mov	r1,#_tx_window_width
	movx	a,@r1
	xch	a,b
	movx	a,@r0
	add	a,b
	mov	r6,a
	inc	r1
	movx	a,@r1
	xch	a,b
	inc	r0
	movx	a,@r0
	addc	a,b
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar4
	lcall	___uint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	dpl,_tdm_state_update_sloc2_1_0
	mov	dph,(_tdm_state_update_sloc2_1_0 + 1)
	mov	b,(_tdm_state_update_sloc2_1_0 + 2)
	mov	a,(_tdm_state_update_sloc2_1_0 + 3)
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar2
	push	ar3
	push	ar6
	push	ar7
	mov	dpl,_tdm_state_update_sloc1_1_0
	mov	dph,(_tdm_state_update_sloc1_1_0 + 1)
	mov	b,(_tdm_state_update_sloc1_1_0 + 2)
	mov	a,(_tdm_state_update_sloc1_1_0 + 3)
	lcall	___fsadd
	mov	_average_duty_cycle,dpl
	mov	(_average_duty_cycle + 1),dph
	mov	(_average_duty_cycle + 2),b
	mov	(_average_duty_cycle + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	radio/tdm.c:306: transmitted_ticks = 0;
	mov	r0,#_transmitted_ticks
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
;	radio/tdm.c:307: duty_cycle_wait = (average_duty_cycle >= (duty_cycle - duty_cycle_offset));
	mov	a,r4
	clr	c
	subb	a,_tdm_state_update_sloc0_1_0
	mov	r4,a
	mov	a,r5
	subb	a,(_tdm_state_update_sloc0_1_0 + 1)
	mov	r5,a
	mov	dpl,r4
	mov	dph,r5
	lcall	___sint2fs
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar7
	push	ar6
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,_average_duty_cycle
	mov	dph,(_average_duty_cycle + 1)
	mov	b,(_average_duty_cycle + 2)
	mov	a,(_average_duty_cycle + 3)
	lcall	___fslt
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
	mov	a,dpl
	add	a,#0xFF
	mov  _tdm_state_update_sloc3_1_0,c
	cpl	c
	mov	_duty_cycle_wait,c
;	radio/tdm.c:320: tdm_state_remaining -= tdelta;
	pop	ar7
	pop	ar6
;	radio/tdm.c:307: duty_cycle_wait = (average_duty_cycle >= (duty_cycle - duty_cycle_offset));
00114$:
;	radio/tdm.c:311: bonus_transmit = 0;
	clr	_bonus_transmit
;	radio/tdm.c:314: transmit_yield = 0;
	clr	_transmit_yield
;	radio/tdm.c:317: transmit_wait = 0;
	mov	r0,#_transmit_wait
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	ljmp	00116$
00118$:
;	radio/tdm.c:320: tdm_state_remaining -= tdelta;
	mov	r0,#_tdm_state_remaining
	movx	a,@r0
	clr	c
	subb	a,r6
	movx	@r0,a
	inc	r0
	movx	a,@r0
	subb	a,r7
	movx	@r0,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'tdm_change_phase'
;------------------------------------------------------------
;	radio/tdm.c:326: tdm_change_phase(void)
;	-----------------------------------------
;	 function tdm_change_phase
;	-----------------------------------------
_tdm_change_phase:
;	radio/tdm.c:328: tdm_state = (tdm_state+2) % 4;
	mov	r0,#_tdm_state
	movx	a,@r0
	mov	r6,a
	mov	r7,#0x00
	mov	a,#0x02
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dptr,#__modsint_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	r0,#_tdm_state
	mov	a,r6
	movx	@r0,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'temperature_update'
;------------------------------------------------------------
;diff                      Allocated to registers r6 r7 
;------------------------------------------------------------
;	radio/tdm.c:333: static void temperature_update(void)
;	-----------------------------------------
;	 function temperature_update
;	-----------------------------------------
_temperature_update:
;	radio/tdm.c:336: if (radio_get_transmit_power() <= 20) {
	lcall	_radio_get_transmit_power
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x14
	jc	00102$
;	radio/tdm.c:337: duty_cycle_offset = 0;
	mov	r0,#_duty_cycle_offset
	clr	a
	movx	@r0,a
;	radio/tdm.c:338: return;
	ret
00102$:
;	radio/tdm.c:341: diff = radio_temperature() - MAX_PA_TEMPERATURE;
	lcall	_radio_temperature
	mov	a,dpl
	mov	b,dph
	add	a,#0x9C
	mov	r6,a
	mov	a,b
	addc	a,#0xFF
	mov	r7,a
;	radio/tdm.c:342: if (diff <= 0 && duty_cycle_offset > 0) {
	clr	c
	clr	a
	subb	a,r6
	clr	a
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	clr	a
	rlc	a
	mov	r5,a
	jnz	00112$
	mov	r0,#_duty_cycle_offset
	movx	a,@r0
	jz	00112$
;	radio/tdm.c:344: duty_cycle_offset -= 1;
	mov	r0,#_duty_cycle_offset
	movx	a,@r0
	dec	a
	movx	@r0,a
	sjmp	00113$
00112$:
;	radio/tdm.c:345: } else if (diff > 10) {
	clr	c
	mov	a,#0x0A
	subb	a,r6
	clr	a
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	radio/tdm.c:347: duty_cycle_offset += 10;
	mov	r0,#_duty_cycle_offset
	movx	a,@r0
	add	a,#0x0A
	movx	@r0,a
	sjmp	00113$
00109$:
;	radio/tdm.c:348: } else if (diff > 5) {
	clr	c
	mov	a,#0x05
	subb	a,r6
	clr	a
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00106$
;	radio/tdm.c:350: duty_cycle_offset += 5;
	mov	r0,#_duty_cycle_offset
	movx	a,@r0
	add	a,#0x05
	movx	@r0,a
	sjmp	00113$
00106$:
;	radio/tdm.c:351: } else if (diff > 0) {
	mov	a,r5
	jz	00113$
;	radio/tdm.c:353: duty_cycle_offset += 1;				
	mov	r0,#_duty_cycle_offset
	movx	a,@r0
	add	a,#0x01
	movx	@r0,a
00113$:
;	radio/tdm.c:356: if ((duty_cycle-duty_cycle_offset) < 20) {
	mov	r0,#_duty_cycle
	movx	a,@r0
	mov	r6,a
	mov	r7,#0x00
	mov	r0,#_duty_cycle_offset
	movx	a,@r0
	mov	r4,a
	mov	r5,#0x00
	mov	a,r6
	clr	c
	subb	a,r4
	mov	r6,a
	mov	a,r7
	subb	a,r5
	mov	r7,a
	clr	c
	mov	a,r6
	subb	a,#0x14
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00117$
;	radio/tdm.c:357: duty_cycle_offset = duty_cycle - 20;
	mov	r0,#_duty_cycle
	mov	r1,#_duty_cycle_offset
	movx	a,@r0
	add	a,#0xEC
	movx	@r1,a
00117$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'link_update'
;------------------------------------------------------------
;old_remaining             Allocated to registers r6 r7 
;unlock_count              Allocated with name '_link_update_unlock_count_1_185'
;temperature_count         Allocated with name '_link_update_temperature_count_1_185'
;------------------------------------------------------------
;	radio/tdm.c:365: link_update(void)
;	-----------------------------------------
;	 function link_update
;	-----------------------------------------
_link_update:
;	radio/tdm.c:368: if (received_packet) {
	jnb	_received_packet,00102$
;	radio/tdm.c:369: unlock_count = 0;
	mov	dptr,#_link_update_unlock_count_1_185
	clr	a
	movx	@dptr,a
;	radio/tdm.c:370: received_packet = false;
	clr	_received_packet
;	radio/tdm.c:372: TDM_SYNC_PIN = true;
	setb	_TDM_SYNC_PIN
	sjmp	00103$
00102$:
;	radio/tdm.c:375: unlock_count++;
	mov	dptr,#_link_update_unlock_count_1_185
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
00103$:
;	radio/tdm.c:377: if (unlock_count < 6) {
	mov	dptr,#_link_update_unlock_count_1_185
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x06,00157$
00157$:
	jnc	00105$
;	radio/tdm.c:378: LED_RADIO = LED_ON;
	setb	_LED_GREEN
	sjmp	00106$
00105$:
;	radio/tdm.c:381: TDM_SYNC_PIN = false;
	clr	_TDM_SYNC_PIN
;	radio/tdm.c:384: LED_RADIO = blink_state;
	mov	c,_blink_state
	mov	_LED_GREEN,c
;	radio/tdm.c:385: blink_state = !blink_state;
	cpl	_blink_state
00106$:
;	radio/tdm.c:387: if (unlock_count > 40) {
	mov	a,r7
	add	a,#0xff - 0x28
	jc	00159$
	ljmp	00117$
00159$:
;	radio/tdm.c:391: unlock_count = 5;
	mov	dptr,#_link_update_unlock_count_1_185
	mov	a,#0x05
	movx	@dptr,a
;	radio/tdm.c:395: if (timer_entropy() & 1) {
	lcall	_timer_entropy
	mov	a,dpl
	jnb	acc.0,00113$
;	radio/tdm.c:396: register uint16_t old_remaining = tdm_state_remaining;
	mov	r0,#_tdm_state_remaining
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
;	radio/tdm.c:397: if (tdm_state_remaining > silence_period) {
	mov	r0,#_silence_period
	clr	c
	movx	a,@r0
	subb	a,r6
	inc	r0
	movx	a,@r0
	subb	a,r7
	jnc	00108$
;	radio/tdm.c:398: tdm_state_remaining -= packet_latency;
	mov	r0,#_packet_latency
	setb	c
	movx	a,@r0
	subb	a,r6
	cpl	a
	cpl	c
	mov	r4,a
	cpl	c
	inc	r0
	movx	a,@r0
	subb	a,r7
	cpl	a
	mov	r5,a
	mov	r0,#_tdm_state_remaining
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
	sjmp	00109$
00108$:
;	radio/tdm.c:400: tdm_state_remaining = 1;
	mov	r0,#_tdm_state_remaining
	mov	a,#0x01
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
00109$:
;	radio/tdm.c:402: if (at_testmode & AT_TEST_TDM) {
	mov	r0,#_at_testmode
	movx	a,@r0
	anl	a,#0x02
	jz	00113$
;	radio/tdm.c:403: printf("TDM: change timing %u/%u\n",
	mov	r0,#_tdm_state_remaining
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	push	ar6
	push	ar7
	mov	a,#__str_4
	push	acc
	mov	a,#(__str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printfl
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
00113$:
;	radio/tdm.c:408: if (at_testmode & AT_TEST_TDM) {
	mov	r0,#_at_testmode
	movx	a,@r0
	anl	a,#0x02
	jz	00115$
;	radio/tdm.c:409: printf("TDM: scanning\n");
	mov	a,#__str_5
	push	acc
	mov	a,#(__str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printfl
	dec	sp
	dec	sp
	dec	sp
00115$:
;	radio/tdm.c:411: fhop_set_locked(false);
	clr	_fhop_set_locked_PARM_1
	lcall	_fhop_set_locked
00117$:
;	radio/tdm.c:414: if (unlock_count != 0) {
	mov	dptr,#_link_update_unlock_count_1_185
	movx	a,@dptr
	mov	r7,a
	jz	00119$
;	radio/tdm.c:415: statistics.average_rssi = (radio_last_rssi() + 3*(uint16_t)statistics.average_rssi)/4;
	lcall	_radio_last_rssi
	mov	r7,dpl
	mov	r6,#0x00
	mov	r0,#_statistics
	movx	a,@r0
	mov	dptr,#__mulint_PARM_2
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0003
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,r7
	mov	r4,a
	mov	a,r5
	addc	a,r6
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	r5,a
	mov	r0,#_statistics
	mov	a,r4
	movx	@r0,a
;	radio/tdm.c:418: statistics.receive_count = 0;
	mov	r0,#(_statistics + 0x0002)
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
00119$:
;	radio/tdm.c:420: if (unlock_count > 5) {
	mov	dptr,#_link_update_unlock_count_1_185
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x05
	jnc	00121$
;	radio/tdm.c:421: memset(&remote_statistics, 0, sizeof(remote_statistics));
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_remote_statistics
	mov	b,#0x60
	lcall	_memset
00121$:
;	radio/tdm.c:424: test_display = at_testmode;
	mov	r0,#_at_testmode
	movx	a,@r0
	mov	r0,#_test_display
	movx	@r0,a
;	radio/tdm.c:425: send_statistics = 1;
	setb	_send_statistics
;	radio/tdm.c:427: temperature_count++;
	mov	dptr,#_link_update_temperature_count_1_185
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	radio/tdm.c:428: if (temperature_count == 4) {
	mov	dptr,#_link_update_temperature_count_1_185
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00124$
;	radio/tdm.c:430: temperature_update();
	lcall	_temperature_update
;	radio/tdm.c:431: temperature_count = 0;
	mov	dptr,#_link_update_temperature_count_1_185
	clr	a
	movx	@dptr,a
00124$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'tdm_remote_at'
;------------------------------------------------------------
;	radio/tdm.c:437: tdm_remote_at(void)
;	-----------------------------------------
;	 function tdm_remote_at
;	-----------------------------------------
_tdm_remote_at:
;	radio/tdm.c:439: memcpy(remote_at_cmd, at_cmd, strlen(at_cmd)+1);
	mov	dptr,#_at_cmd
	mov	b,#0x60
	lcall	_strlen
	mov	a,dpl
	mov	b,dph
	add	a,#0x01
	mov	r6,a
	clr	a
	addc	a,b
	mov	r7,a
	mov	dptr,#_memcpy_PARM_2
	mov	a,#_at_cmd
	movx	@dptr,a
	mov	a,#(_at_cmd >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x60
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcpy_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_remote_at_cmd
	mov	b,#0x60
	lcall	_memcpy
;	radio/tdm.c:440: send_at_command = true;
	setb	_send_at_command
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handle_at_command'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	radio/tdm.c:445: handle_at_command(__pdata uint8_t len)
;	-----------------------------------------
;	 function handle_at_command
;	-----------------------------------------
_handle_at_command:
	mov	r7,dpl
;	radio/tdm.c:447: if (len < 2 || len > AT_CMD_MAXLEN || 
	cjne	r7,#0x02,00133$
00133$:
	jc	00118$
	mov	a,r7
	add	a,#0xff - 0x10
	jc	00118$
;	radio/tdm.c:448: pbuf[0] != (uint8_t)'R' || 
	mov	dptr,#_pbuf
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x52,00118$
;	radio/tdm.c:449: pbuf[1] != (uint8_t)'T') {
	mov	dptr,#(_pbuf + 0x0001)
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x54,00138$
	sjmp	00103$
00138$:
;	radio/tdm.c:452: for (i=0; i<len; i++) {
00118$:
	mov	r6,#0x00
00110$:
	clr	c
	mov	a,r6
	subb	a,r7
	jnc	00101$
;	radio/tdm.c:453: putchar(pbuf[i]);
	mov	a,r6
	add	a,#_pbuf
	mov	dpl,a
	clr	a
	addc	a,#(_pbuf >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_putchar
	pop	ar6
	pop	ar7
;	radio/tdm.c:452: for (i=0; i<len; i++) {
	inc	r6
	sjmp	00110$
00101$:
;	radio/tdm.c:455: return;
	ret
00103$:
;	radio/tdm.c:459: memcpy(at_cmd, pbuf, len);
	mov	dptr,#_memcpy_PARM_2
	mov	a,#_pbuf
	movx	@dptr,a
	mov	a,#(_pbuf >> 8)
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
	mov	dptr,#_at_cmd
	mov	b,#0x60
	push	ar7
	lcall	_memcpy
	pop	ar7
;	radio/tdm.c:460: at_cmd[len] = 0;
	mov	a,r7
	add	a,#_at_cmd
	mov	r0,a
	clr	a
	movx	@r0,a
;	radio/tdm.c:461: at_cmd[0] = 'A'; // replace 'R'
	mov	r0,#_at_cmd
	mov	a,#0x41
	movx	@r0,a
;	radio/tdm.c:462: at_cmd_len = len;
	mov	r0,#_at_cmd_len
	mov	a,r7
	movx	@r0,a
;	radio/tdm.c:463: at_cmd_ready = true;
	setb	_at_cmd_ready
;	radio/tdm.c:468: printf_start_capture(pbuf, sizeof(pbuf));
	mov	dptr,#_printf_start_capture_PARM_2
	mov	a,#0xFC
	movx	@dptr,a
	mov	dptr,#_pbuf
	lcall	_printf_start_capture
;	radio/tdm.c:469: at_command();
	lcall	_at_command
;	radio/tdm.c:470: len = printf_end_capture();
	lcall	_printf_end_capture
;	radio/tdm.c:471: if (len > 0) {
	mov	a,dpl
	mov	r7,a
	jz	00112$
;	radio/tdm.c:472: packet_inject(pbuf, len);
	mov	r0,#_packet_inject_PARM_2
	mov	a,r7
	movx	@r0,a
	mov	dptr,#_pbuf
	ljmp	_packet_inject
00112$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'tdm_serial_loop'
;------------------------------------------------------------
;	radio/tdm.c:482: tdm_serial_loop(void)
;	-----------------------------------------
;	 function tdm_serial_loop
;	-----------------------------------------
_tdm_serial_loop:
;	radio/tdm.c:484: __pdata uint16_t last_t = timer2_tick();
	lcall	_timer2_tick
	mov	r0,#_tdm_serial_loop_last_t_1_207
	mov	a,dpl
	movx	@r0,a
	inc	r0
	mov	a,dph
	movx	@r0,a
;	radio/tdm.c:485: __pdata uint16_t last_link_update = last_t;
	mov	r0,#_tdm_serial_loop_last_t_1_207
	mov	r1,#_tdm_serial_loop_last_link_update_1_207
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
;	radio/tdm.c:487: _canary = 42;
	mov	r0,#__canary
	mov	@r0,#0x2A
00192$:
;	radio/tdm.c:494: if (_canary != 42) {
	mov	r0,#__canary
	cjne	@r0,#0x2A,00339$
	sjmp	00102$
00339$:
;	radio/tdm.c:495: panic("stack blown\n");
	mov	a,#__str_6
	push	acc
	mov	a,#(__str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_panic
	dec	sp
	dec	sp
	dec	sp
00102$:
;	radio/tdm.c:498: if (pdata_canary != 0x41) {
	mov	r0,#_pdata_canary
	movx	a,@r0
	cjne	a,#0x41,00340$
	sjmp	00104$
00340$:
;	radio/tdm.c:499: panic("pdata canary changed\n");
	mov	a,#__str_7
	push	acc
	mov	a,#(__str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_panic
	dec	sp
	dec	sp
	dec	sp
00104$:
;	radio/tdm.c:503: at_command();
	lcall	_at_command
;	radio/tdm.c:506: if (test_display) {
	mov	r0,#_test_display
	movx	a,@r0
	jz	00106$
;	radio/tdm.c:507: display_test_output();
	lcall	_display_test_output
;	radio/tdm.c:508: test_display = 0;
	mov	r0,#_test_display
	clr	a
	movx	@r0,a
00106$:
;	radio/tdm.c:511: if (seen_mavlink && feature_mavlink_framing && !at_mode_active) {
	jnb	_seen_mavlink,00108$
	jnb	_feature_mavlink_framing,00108$
	jb	_at_mode_active,00108$
;	radio/tdm.c:512: seen_mavlink = false;
	clr	_seen_mavlink
;	radio/tdm.c:513: MAVLink_report();
	lcall	_MAVLink_report
00108$:
;	radio/tdm.c:517: radio_set_channel(fhop_receive_channel());
	lcall	_fhop_receive_channel
	lcall	_radio_set_channel
;	radio/tdm.c:520: tnow = timer2_tick();
	lcall	_timer2_tick
	mov	r2,dpl
	mov	r3,dph
;	radio/tdm.c:523: if (radio_receive_packet(&len, pbuf)) {
	mov	r0,#_radio_receive_packet_PARM_2
	mov	a,#_pbuf
	movx	@r0,a
	inc	r0
	mov	a,#(_pbuf >> 8)
	movx	@r0,a
	mov	dptr,#_tdm_serial_loop_len_2_208
	mov	b,#0x60
	push	ar3
	push	ar2
	lcall	_radio_receive_packet
	pop	ar2
	pop	ar3
	jc	00345$
	ljmp	00129$
00345$:
;	radio/tdm.c:526: received_packet = true;
	setb	_received_packet
;	radio/tdm.c:527: fhop_set_locked(true);
	setb	_fhop_set_locked_PARM_1
	push	ar3
	push	ar2
	lcall	_fhop_set_locked
;	radio/tdm.c:530: statistics.average_rssi = (radio_last_rssi() + 7*(uint16_t)statistics.average_rssi)/8;
	lcall	_radio_last_rssi
	mov	r5,dpl
	pop	ar2
	pop	ar3
	mov	r4,#0x00
	mov	r0,#_statistics
	movx	a,@r0
	mov	dptr,#__mulint_PARM_2
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0007
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	mov	a,r6
	add	a,r5
	mov	r6,a
	mov	a,r7
	addc	a,r4
	swap	a
	rl	a
	xch	a,r6
	swap	a
	rl	a
	anl	a,#0x1F
	xrl	a,r6
	xch	a,r6
	anl	a,#0x1F
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	r0,#_statistics
	mov	a,r6
	movx	@r0,a
;	radio/tdm.c:531: statistics.receive_count++;
	mov	r0,#(_statistics + 0x0002)
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	inc	r6
	cjne	r6,#0x00,00346$
	inc	r7
00346$:
	mov	r0,#(_statistics + 0x0002)
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
;	radio/tdm.c:535: transmit_wait = 0;
	mov	r0,#_transmit_wait
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
;	radio/tdm.c:537: if (len < 2) {
	mov	r0,#_tdm_serial_loop_len_2_208
	movx	a,@r0
	cjne	a,#0x02,00347$
00347$:
	jnc	00348$
	ljmp	00192$
00348$:
;	radio/tdm.c:544: memcpy(&trailer, &pbuf[len-sizeof(trailer)], sizeof(trailer));
	mov	r0,#_tdm_serial_loop_len_2_208
	movx	a,@r0
	add	a,#0xFE
	add	a,#_pbuf
	mov	r6,a
	clr	a
	addc	a,#(_pbuf >> 8)
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
	mov	dptr,#_memcpy_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_trailer
	mov	b,#0x60
	push	ar3
	push	ar2
	lcall	_memcpy
	pop	ar2
	pop	ar3
;	radio/tdm.c:545: len -= sizeof(trailer);
	mov	r0,#_tdm_serial_loop_len_2_208
	movx	a,@r0
	dec	a
	dec	a
	movx	@r0,a
;	radio/tdm.c:547: if (trailer.window == 0 && len != 0) {
	mov	r0,#_trailer
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	anl	a,#0x1F
	mov	r7,a
	orl	a,r6
	jnz	00125$
	mov	r0,#_tdm_serial_loop_len_2_208
	movx	a,@r0
	jz	00125$
;	radio/tdm.c:549: if (len == sizeof(struct statistics)) {
	mov	r0,#_tdm_serial_loop_len_2_208
	movx	a,@r0
	cjne	a,#0x04,00114$
;	radio/tdm.c:550: memcpy(&remote_statistics, pbuf, len);
	mov	dptr,#_memcpy_PARM_2
	mov	a,#_pbuf
	movx	@dptr,a
	mov	a,#(_pbuf >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	r0,#_tdm_serial_loop_len_2_208
	mov	dptr,#_memcpy_PARM_3
	movx	a,@r0
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_remote_statistics
	mov	b,#0x60
	lcall	_memcpy
00114$:
;	radio/tdm.c:554: statistics.receive_count--;
	mov	r0,#(_statistics + 0x0002)
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	dec	r6
	cjne	r6,#0xFF,00353$
	dec	r7
00353$:
	mov	r0,#(_statistics + 0x0002)
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	ljmp	00192$
00125$:
;	radio/tdm.c:555: } else if (trailer.window != 0) {
	mov	r0,#_trailer
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	anl	a,#0x1F
	mov	r7,a
	orl	a,r6
	jnz	00354$
	ljmp	00192$
00354$:
;	radio/tdm.c:558: sync_tx_windows(len);
	mov	r0,#_tdm_serial_loop_len_2_208
	movx	a,@r0
	mov	dpl,a
	push	ar3
	push	ar2
	lcall	_sync_tx_windows
	pop	ar2
	pop	ar3
;	radio/tdm.c:559: last_t = tnow;
	mov	r0,#_tdm_serial_loop_last_t_1_207
	mov	a,r2
	movx	@r0,a
	inc	r0
	mov	a,r3
	movx	@r0,a
;	radio/tdm.c:561: if (trailer.command == 1) {
	mov	r0,#(_trailer + 0x0001)
	movx	a,@r0
	swap	a
	rr	a
	anl	a,#0x01
	mov	r7,a
	cjne	r7,#0x01,00120$
;	radio/tdm.c:562: handle_at_command(len);
	mov	r0,#_tdm_serial_loop_len_2_208
	movx	a,@r0
	mov	dpl,a
	lcall	_handle_at_command
	ljmp	00192$
00120$:
;	radio/tdm.c:563: } else if (len != 0 && 
	mov	r0,#_tdm_serial_loop_len_2_208
	movx	a,@r0
	jnz	00357$
	ljmp	00192$
00357$:
;	radio/tdm.c:564: !packet_is_duplicate(len, pbuf, trailer.resend) &&
	mov	r0,#(_trailer + 0x0001)
	movx	a,@r0
	rl	a
	anl	a,#0x01
	add	a,#0xff
	mov	_packet_is_duplicate_PARM_3,c
	mov	r0,#_packet_is_duplicate_PARM_2
	mov	a,#_pbuf
	movx	@r0,a
	inc	r0
	mov	a,#(_pbuf >> 8)
	movx	@r0,a
	mov	r0,#_tdm_serial_loop_len_2_208
	movx	a,@r0
	mov	dpl,a
	lcall	_packet_is_duplicate
	jnc	00358$
	ljmp	00192$
00358$:
;	radio/tdm.c:565: !at_mode_active) {
	jnb	_at_mode_active,00359$
	ljmp	00192$
00359$:
;	radio/tdm.c:569: LED_ACTIVITY = LED_ON;
	setb	_LED_RED
;	radio/tdm.c:570: serial_write_buf(pbuf, len);
	mov	r0,#_tdm_serial_loop_len_2_208
	mov	r1,#_serial_write_buf_PARM_2
	movx	a,@r0
	movx	@r1,a
	mov	dptr,#_pbuf
	lcall	_serial_write_buf
;	radio/tdm.c:571: LED_ACTIVITY = LED_OFF;
	clr	_LED_RED
;	radio/tdm.c:575: continue;
	ljmp	00192$
00129$:
;	radio/tdm.c:581: tnow = timer2_tick();
	lcall	_timer2_tick
	mov	r2,dpl
	mov	r3,dph
;	radio/tdm.c:582: tdelta = tnow - last_t;
	mov	r0,#_tdm_serial_loop_last_t_1_207
	mov	r1,#_tdm_serial_loop_tdelta_2_208
	setb	c
	movx	a,@r0
	subb	a,r2
	cpl	a
	cpl	c
	movx	@r1,a
	cpl	c
	inc	r0
	movx	a,@r0
	subb	a,r3
	cpl	a
	inc	r1
	movx	@r1,a
;	radio/tdm.c:583: tdm_state_update(tdelta);
	mov	r0,#_tdm_serial_loop_tdelta_2_208
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	push	ar3
	push	ar2
	lcall	_tdm_state_update
	pop	ar2
	pop	ar3
;	radio/tdm.c:584: last_t = tnow;
	mov	r0,#_tdm_serial_loop_last_t_1_207
	mov	a,r2
	movx	@r0,a
	inc	r0
	mov	a,r3
	movx	@r0,a
;	radio/tdm.c:587: if (tnow - last_link_update > 32768) {
	mov	r0,#_tdm_serial_loop_last_link_update_1_207
	setb	c
	movx	a,@r0
	subb	a,r2
	cpl	a
	cpl	c
	mov	r4,a
	cpl	c
	inc	r0
	movx	a,@r0
	subb	a,r3
	cpl	a
	mov	r5,a
	mov	r6,#0x00
	mov	r7,#0x00
	clr	c
	clr	a
	subb	a,r4
	mov	a,#0x80
	subb	a,r5
	clr	a
	subb	a,r6
	clr	a
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00131$
;	radio/tdm.c:588: link_update();
	push	ar3
	push	ar2
	lcall	_link_update
	pop	ar2
	pop	ar3
;	radio/tdm.c:589: last_link_update = tnow;
	mov	r0,#_tdm_serial_loop_last_link_update_1_207
	mov	a,r2
	movx	@r0,a
	inc	r0
	mov	a,r3
	movx	@r0,a
00131$:
;	radio/tdm.c:592: if (lbt_rssi != 0) {
	mov	r0,#_lbt_rssi
	movx	a,@r0
	jnz	00361$
	ljmp	00140$
00361$:
;	radio/tdm.c:594: if (radio_current_rssi() < lbt_rssi) {
	lcall	_radio_current_rssi
	mov	r7,dpl
	mov	r0,#_lbt_rssi
	clr	c
	movx	a,@r0
	mov	b,a
	mov	a,r7
	subb	a,b
	jnc	00135$
;	radio/tdm.c:595: lbt_listen_time += tdelta;
	mov	r0,#_lbt_listen_time
	mov	r1,#_tdm_serial_loop_tdelta_2_208
	movx	a,@r1
	xch	a,b
	movx	a,@r0
	add	a,b
	movx	@r0,a
	inc	r1
	movx	a,@r1
	xch	a,b
	inc	r0
	movx	a,@r0
	addc	a,b
	movx	@r0,a
	sjmp	00136$
00135$:
;	radio/tdm.c:597: lbt_listen_time = 0;
	mov	r0,#_lbt_listen_time
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
;	radio/tdm.c:598: if (lbt_rand == 0) {
	mov	r0,#_lbt_rand
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jnz	00136$
;	radio/tdm.c:599: lbt_rand = ((uint16_t)rand()) % lbt_min_time;
	lcall	_rand
	mov	r6,dpl
	mov	r7,dph
	mov	r0,#_lbt_min_time
	mov	dptr,#__moduint_PARM_2
	movx	a,@r0
	movx	@dptr,a
	inc	r0
	movx	a,@r0
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__moduint
	mov	a,dpl
	mov	b,dph
	mov	r0,#_lbt_rand
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
00136$:
;	radio/tdm.c:602: if (lbt_listen_time < lbt_min_time + lbt_rand) {
	mov	r0,#_lbt_min_time
	mov	r1,#_lbt_rand
	movx	a,@r1
	xch	a,b
	movx	a,@r0
	add	a,b
	mov	r6,a
	inc	r1
	movx	a,@r1
	xch	a,b
	inc	r0
	movx	a,@r0
	addc	a,b
	mov	r7,a
	mov	r0,#_lbt_listen_time
	clr	c
	movx	a,@r0
	subb	a,r6
	inc	r0
	movx	a,@r0
	subb	a,r7
	jnc	00364$
	ljmp	00192$
00364$:
;	radio/tdm.c:604: continue;
00140$:
;	radio/tdm.c:612: if (tdm_state != TDM_TRANSMIT &&
	mov	r0,#_tdm_state
	movx	a,@r0
	jz	00142$
;	radio/tdm.c:613: !(bonus_transmit && tdm_state == TDM_RECEIVE)) {
	jb	_bonus_transmit,00366$
	ljmp	00192$
00366$:
	mov	r0,#_tdm_state
	movx	a,@r0
	cjne	a,#0x02,00367$
	sjmp	00368$
00367$:
	ljmp	00192$
00368$:
;	radio/tdm.c:615: continue;
00142$:
;	radio/tdm.c:623: if (transmit_yield != 0) {
	jnb	_transmit_yield,00369$
	ljmp	00192$
00369$:
;	radio/tdm.c:628: if (transmit_wait != 0) {
	mov	r0,#_transmit_wait
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jz	00370$
	ljmp	00192$
00370$:
;	radio/tdm.c:633: if (!received_packet &&
	jb	_received_packet,00152$
;	radio/tdm.c:634: radio_preamble_detected() ||
	lcall	_radio_preamble_detected
	jc	00149$
00152$:
;	radio/tdm.c:635: radio_receive_in_progress()) {
	lcall	_radio_receive_in_progress
	jnc	00150$
00149$:
;	radio/tdm.c:638: transmit_wait = packet_latency;
	mov	r0,#_packet_latency
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	r0,#_transmit_wait
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
;	radio/tdm.c:639: continue;
	ljmp	00192$
00150$:
;	radio/tdm.c:645: statistics.average_noise = (radio_current_rssi() + 3*(uint16_t)statistics.average_noise)/4;
	lcall	_radio_current_rssi
	mov	r7,dpl
	mov	r6,#0x00
	mov	r0,#(_statistics + 0x0001)
	movx	a,@r0
	mov	dptr,#__mulint_PARM_2
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0003
	push	ar7
	push	ar6
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,r7
	mov	r4,a
	mov	a,r5
	addc	a,r6
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	r5,a
	mov	r0,#(_statistics + 0x0001)
	mov	a,r4
	movx	@r0,a
;	radio/tdm.c:647: if (duty_cycle_wait) {
	jnb	_duty_cycle_wait,00374$
	ljmp	00192$
00374$:
;	radio/tdm.c:654: if (tdm_state_remaining < packet_latency) {
	mov	r0,#_tdm_state_remaining
	mov	r1,#_packet_latency
	clr	c
	movx	a,@r1
	mov	b,a
	movx	a,@r0
	subb	a,b
	inc	r1
	movx	a,@r1
	mov	b,a
	inc	r0
	movx	a,@r0
	subb	a,b
	jnc	00375$
	ljmp	00192$
00375$:
;	radio/tdm.c:658: max_xmit = (tdm_state_remaining - packet_latency) / ticks_per_byte;
	mov	r0,#_tdm_state_remaining
	mov	r1,#_packet_latency
	movx	a,@r1
	mov	b,a
	clr	c
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
	mov	r0,#_ticks_per_byte
	mov	dptr,#__divuint_PARM_2
	movx	a,@r0
	movx	@dptr,a
	inc	r0
	movx	a,@r0
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
;	radio/tdm.c:659: if (max_xmit < sizeof(trailer)+1) {
	cjne	r6,#0x03,00376$
00376$:
	jnc	00377$
	ljmp	00192$
00377$:
;	radio/tdm.c:663: max_xmit -= sizeof(trailer)+1;
	dec	r6
	dec	r6
	dec	r6
;	radio/tdm.c:664: if (max_xmit > max_data_packet_length) {
	mov	r0,#_max_data_packet_length
	clr	c
	movx	a,@r0
	subb	a,r6
	jnc	00160$
;	radio/tdm.c:665: max_xmit = max_data_packet_length;
	mov	r0,#_max_data_packet_length
	movx	a,@r0
	mov	r6,a
00160$:
;	radio/tdm.c:669: if (send_at_command && 
	jnb	_send_at_command,00162$
;	radio/tdm.c:670: max_xmit >= strlen(remote_at_cmd)) {
	mov	dptr,#_remote_at_cmd
	mov	b,#0x60
	push	ar6
	lcall	_strlen
	mov	r5,dpl
	mov	r7,dph
	pop	ar6
	mov	ar3,r6
	mov	r4,#0x00
	clr	c
	mov	a,r3
	subb	a,r5
	mov	a,r4
	subb	a,r7
	jc	00162$
;	radio/tdm.c:672: len = strlen(remote_at_cmd);
	mov	dptr,#_remote_at_cmd
	mov	b,#0x60
	push	ar6
	lcall	_strlen
	mov	r5,dpl
	mov	r0,#_tdm_serial_loop_len_2_208
	mov	a,r5
	movx	@r0,a
;	radio/tdm.c:673: memcpy(pbuf, remote_at_cmd, len);
	mov	dptr,#_memcpy_PARM_2
	mov	a,#_remote_at_cmd
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	a,#0x60
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcpy_PARM_3
	mov	a,r5
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_pbuf
	mov	b,#0x00
	lcall	_memcpy
	pop	ar6
;	radio/tdm.c:674: trailer.command = 1;
	mov	r0,#(_trailer + 0x0001)
	movx	a,@r0
	orl	a,#0x20
	movx	@r0,a
;	radio/tdm.c:675: send_at_command = false;
	clr	_send_at_command
	sjmp	00163$
00162$:
;	radio/tdm.c:678: len = packet_get_next(max_xmit, pbuf);
	mov	r0,#_packet_get_next_PARM_2
	mov	a,#_pbuf
	movx	@r0,a
	inc	r0
	mov	a,#(_pbuf >> 8)
	movx	@r0,a
	mov	dpl,r6
	push	ar6
	lcall	_packet_get_next
	mov	a,dpl
	mov	r0,#_tdm_serial_loop_len_2_208
	movx	@r0,a
;	radio/tdm.c:679: trailer.command = packet_is_injected();
	lcall	_packet_is_injected
	pop	ar6
	mov  _tdm_serial_loop_sloc0_1_0,c
	clr	a
	rlc	a
	mov	r7,a
	mov	r0,#(_trailer + 0x0001)
	rrc	a
	movx	a,@r0
	mov	acc.5,c
	movx	@r0,a
00163$:
;	radio/tdm.c:682: if (len > max_data_packet_length) {
	mov	r0,#_tdm_serial_loop_len_2_208
	mov	r1,#_max_data_packet_length
	clr	c
	movx	a,@r0
	mov	b,a
	movx	a,@r1
	subb	a,b
	jnc	00166$
;	radio/tdm.c:683: panic("oversized tdm packet");
	push	ar6
	mov	a,#__str_8
	push	acc
	mov	a,#(__str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_panic
	dec	sp
	dec	sp
	dec	sp
	pop	ar6
00166$:
;	radio/tdm.c:686: trailer.bonus = (tdm_state == TDM_RECEIVE);
	mov	r0,#_tdm_state
	movx	a,@r0
	cjne	a,#0x02,00382$
	setb	c
	sjmp	00383$
00382$:
	clr	c
00383$:
	mov  _tdm_serial_loop_sloc0_1_0,c
	clr	a
	rlc	a
	mov	r0,#(_trailer + 0x0001)
	rrc	a
	movx	a,@r0
	mov	acc.6,c
	movx	@r0,a
;	radio/tdm.c:687: trailer.resend = packet_is_resend();
	push	ar6
	lcall	_packet_is_resend
	pop	ar6
	mov  _tdm_serial_loop_sloc0_1_0,c
	clr	a
	rlc	a
	mov	r7,a
	mov	r0,#(_trailer + 0x0001)
	rrc	a
	movx	a,@r0
	mov	acc.7,c
	movx	@r0,a
;	radio/tdm.c:689: if (tdm_state == TDM_TRANSMIT &&
	mov	r0,#_tdm_state
	movx	a,@r0
	jnz	00168$
;	radio/tdm.c:690: len == 0 && 
	mov	r0,#_tdm_serial_loop_len_2_208
	movx	a,@r0
	jnz	00168$
;	radio/tdm.c:691: send_statistics && 
	jnb	_send_statistics,00168$
;	radio/tdm.c:692: max_xmit >= sizeof(statistics)) {
	cjne	r6,#0x04,00387$
00387$:
	jc	00168$
;	radio/tdm.c:694: send_statistics = 0;
	clr	_send_statistics
;	radio/tdm.c:695: memcpy(pbuf, &statistics, sizeof(statistics));
	mov	dptr,#_memcpy_PARM_2
	mov	a,#_statistics
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	a,#0x60
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcpy_PARM_3
	mov	a,#0x04
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_pbuf
	mov	b,#0x00
	lcall	_memcpy
;	radio/tdm.c:696: len = sizeof(statistics);
	mov	r0,#_tdm_serial_loop_len_2_208
	mov	a,#0x04
	movx	@r0,a
;	radio/tdm.c:699: trailer.window = 0;
	mov	r0,#_trailer
	clr	a
	movx	@r0,a
	inc	r0
	movx	a,@r0
	anl	a,#0xE0
	movx	@r0,a
;	radio/tdm.c:700: trailer.resend = 0;
	mov	r0,#(_trailer + 0x0001)
	movx	a,@r0
	anl	a,#0x7F
	movx	@r0,a
	sjmp	00169$
00168$:
;	radio/tdm.c:705: trailer.window = (uint16_t)(tdm_state_remaining - flight_time_estimate(len+sizeof(trailer)));
	mov	r0,#_tdm_serial_loop_len_2_208
	movx	a,@r0
	add	a,#0x02
	mov	dpl,a
	lcall	_flight_time_estimate
	mov	r6,dpl
	mov	r7,dph
	mov	r0,#_tdm_state_remaining
	movx	a,@r0
	clr	c
	subb	a,r6
	mov	r6,a
	inc	r0
	movx	a,@r0
	subb	a,r7
	mov	r7,a
	mov	r0,#_trailer
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	anl	a,#0x1F
	mov	b,a
	movx	a,@r0
	anl	a,#0xE0
	orl	a,b
	movx	@r0,a
00169$:
;	radio/tdm.c:709: radio_set_channel(fhop_transmit_channel());
	lcall	_fhop_transmit_channel
	lcall	_radio_set_channel
;	radio/tdm.c:711: memcpy(&pbuf[len], &trailer, sizeof(trailer));
	mov	r0,#_tdm_serial_loop_len_2_208
	movx	a,@r0
	add	a,#_pbuf
	mov	r6,a
	clr	a
	addc	a,#(_pbuf >> 8)
	mov	r7,a
	mov	r5,#0x00
	mov	dptr,#_memcpy_PARM_2
	mov	a,#_trailer
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	a,#0x60
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcpy_PARM_3
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_memcpy
;	radio/tdm.c:713: if (len != 0 && trailer.window != 0) {
	mov	r0,#_tdm_serial_loop_len_2_208
	movx	a,@r0
	jz	00174$
	mov	r0,#_trailer
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	anl	a,#0x1F
	mov	r7,a
	orl	a,r6
	jz	00174$
;	radio/tdm.c:715: LED_ACTIVITY = LED_ON;
	setb	_LED_RED
00174$:
;	radio/tdm.c:718: if (len == 0) {
	mov	r0,#_tdm_serial_loop_len_2_208
	movx	a,@r0
	jnz	00177$
;	radio/tdm.c:722: transmit_yield = 1;
	setb	_transmit_yield
00177$:
;	radio/tdm.c:728: transmit_wait = packet_latency;
	mov	r0,#_packet_latency
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
	mov	r0,#_transmit_wait
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
;	radio/tdm.c:732: if ((duty_cycle - duty_cycle_offset) != 100) {
	mov	r0,#_duty_cycle
	movx	a,@r0
	mov	r6,a
	mov	r7,#0x00
	mov	r0,#_duty_cycle_offset
	movx	a,@r0
	mov	r4,a
	mov	r5,#0x00
	mov	a,r6
	clr	c
	subb	a,r4
	mov	r6,a
	mov	a,r7
	subb	a,r5
	mov	r7,a
	cjne	r6,#0x64,00392$
	cjne	r7,#0x00,00392$
	sjmp	00179$
00392$:
;	radio/tdm.c:733: transmitted_ticks += flight_time_estimate(len+sizeof(trailer));
	mov	r0,#_tdm_serial_loop_len_2_208
	movx	a,@r0
	add	a,#0x02
	mov	dpl,a
	lcall	_flight_time_estimate
	mov	r6,dpl
	mov	r7,dph
	mov	r0,#_transmitted_ticks
	movx	a,@r0
	add	a,r6
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r7
	movx	@r0,a
00179$:
;	radio/tdm.c:737: if (!radio_transmit(len + sizeof(trailer), pbuf, tdm_state_remaining + (silence_period/2)) &&
	mov	r0,#_tdm_serial_loop_len_2_208
	movx	a,@r0
	add	a,#0x02
	mov	r7,a
	mov	r0,#_silence_period
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	clr	c
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	mov	r6,a
	mov	r0,#_tdm_state_remaining
	movx	a,@r0
	add	a,r5
	mov	r5,a
	inc	r0
	movx	a,@r0
	addc	a,r6
	mov	r6,a
	mov	r0,#_radio_transmit_PARM_2
	mov	a,#_pbuf
	movx	@r0,a
	inc	r0
	mov	a,#(_pbuf >> 8)
	movx	@r0,a
	mov	r0,#_radio_transmit_PARM_3
	mov	a,r5
	movx	@r0,a
	inc	r0
	mov	a,r6
	movx	@r0,a
	mov	dpl,r7
	lcall	_radio_transmit
	jc	00181$
;	radio/tdm.c:738: len != 0 && trailer.window != 0 && trailer.command == 0) {
	mov	r0,#_tdm_serial_loop_len_2_208
	movx	a,@r0
	jz	00181$
	mov	r0,#_trailer
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	anl	a,#0x1F
	mov	r7,a
	orl	a,r6
	jz	00181$
	mov	r0,#(_trailer + 0x0001)
	movx	a,@r0
	jb	acc.5,00181$
;	radio/tdm.c:739: packet_force_resend();
	lcall	_packet_force_resend
00181$:
;	radio/tdm.c:742: if (lbt_rssi != 0) {
	mov	r0,#_lbt_rssi
	movx	a,@r0
	jz	00186$
;	radio/tdm.c:744: lbt_listen_time = 0;
	mov	r0,#_lbt_listen_time
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
;	radio/tdm.c:745: lbt_rand = 0;
	mov	r0,#_lbt_rand
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
00186$:
;	radio/tdm.c:749: radio_set_channel(fhop_receive_channel());
	lcall	_fhop_receive_channel
	lcall	_radio_set_channel
;	radio/tdm.c:752: radio_receiver_on();
	lcall	_radio_receiver_on
;	radio/tdm.c:754: if (len != 0 && trailer.window != 0) {
	mov	r0,#_tdm_serial_loop_len_2_208
	movx	a,@r0
	jnz	00398$
	ljmp	00192$
00398$:
	mov	r0,#_trailer
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	anl	a,#0x1F
	mov	r7,a
	orl	a,r6
	jnz	00399$
	ljmp	00192$
00399$:
;	radio/tdm.c:755: LED_ACTIVITY = LED_OFF;
	clr	_LED_RED
	ljmp	00192$
;------------------------------------------------------------
;Allocation info for local variables in function 'tdm_init'
;------------------------------------------------------------
;sloc0                     Allocated with name '_tdm_init_sloc0_1_0'
;------------------------------------------------------------
;	radio/tdm.c:873: tdm_init(void)
;	-----------------------------------------
;	 function tdm_init
;	-----------------------------------------
_tdm_init:
;	radio/tdm.c:876: __pdata uint8_t air_rate = radio_air_rate();
	lcall	_radio_air_rate
	mov	r7,dpl
;	radio/tdm.c:885: ticks_per_byte = (8+(8000000UL/(air_rate*1000UL)))/16;
	mov	dptr,#__mullong_PARM_2
	mov	a,r7
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
	mov	dptr,#0x03E8
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#__divulong_PARM_2
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
	mov	dptr,#0x1200
	mov	b,#0x7A
	clr	a
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,#0x08
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	a,r5
	swap	a
	xch	a,r4
	swap	a
	anl	a,#0x0F
	xrl	a,r4
	xch	a,r4
	anl	a,#0x0F
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	mov	r5,a
	mov	a,r6
	swap	a
	anl	a,#0xF0
	orl	a,r5
	mov	r5,a
	mov	a,r7
	swap	a
	xch	a,r6
	swap	a
	anl	a,#0x0F
	xrl	a,r6
	xch	a,r6
	anl	a,#0x0F
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	mov	r0,#_ticks_per_byte
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
;	radio/tdm.c:892: packet_latency = (8+(10/2)) * ticks_per_byte + 13;
	mov	dptr,#__mulint_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000D
	push	ar5
	push	ar4
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	pop	ar4
	pop	ar5
	add	a,#0x0D
	mov	r6,a
	clr	a
	addc	a,b
	mov	r7,a
	mov	r0,#_packet_latency
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
;	radio/tdm.c:894: if (feature_golay) {
	jnb	_feature_golay,00102$
;	radio/tdm.c:895: max_data_packet_length = (MAX_PACKET_LENGTH/2) - (6+sizeof(trailer));
	mov	r0,#_max_data_packet_length
	mov	a,#0x76
	movx	@r0,a
;	radio/tdm.c:898: ticks_per_byte *= 2;
	mov	a,r5
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	mov	r5,a
	mov	r0,#_ticks_per_byte
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
;	radio/tdm.c:901: packet_latency += 4*ticks_per_byte;
	mov	a,r5
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	xch	a,r4
	add	a,acc
	xch	a,r4
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	mov	r7,a
	mov	r0,#_packet_latency
	mov	a,r6
	movx	@r0,a
	inc	r0
	mov	a,r7
	movx	@r0,a
	sjmp	00103$
00102$:
;	radio/tdm.c:903: max_data_packet_length = MAX_PACKET_LENGTH - sizeof(trailer);
	mov	r0,#_max_data_packet_length
	mov	a,#0xFA
	movx	@r0,a
00103$:
;	radio/tdm.c:907: silence_period = 2*packet_latency;
	mov	r0,#_packet_latency
	mov	r1,#_silence_period
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	mov	b,a
	movx	a,@r1
	add	a,acc
	xch	a,b
	rlc	a
	xch	a,b
	movx	@r1,a
	inc	r1
	mov	a,b
	movx	@r1,a
;	radio/tdm.c:910: window_width = 3*(packet_latency+(max_data_packet_length*(uint32_t)ticks_per_byte));
	mov	r0,#_ticks_per_byte
	mov	dptr,#__mullong_PARM_2
	movx	a,@r0
	movx	@dptr,a
	inc	r0
	movx	a,@r0
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	r0,#_max_data_packet_length
	movx	a,@r0
	mov	r4,a
	mov	r5,#0x00
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	__mullong
	mov	_tdm_init_sloc0_1_0,dpl
	mov	(_tdm_init_sloc0_1_0 + 1),dph
	mov	(_tdm_init_sloc0_1_0 + 2),b
	mov	(_tdm_init_sloc0_1_0 + 3),a
	mov	r0,#_packet_latency
	movx	a,@r0
	mov	r2,a
	inc	r0
	movx	a,@r0
	mov	r3,a
	mov	r6,#0x00
	mov	r7,#0x00
	mov	dptr,#__mullong_PARM_2
	mov	a,_tdm_init_sloc0_1_0
	add	a,r2
	movx	@dptr,a
	mov	a,(_tdm_init_sloc0_1_0 + 1)
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,(_tdm_init_sloc0_1_0 + 2)
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,(_tdm_init_sloc0_1_0 + 3)
	addc	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(0x03&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	radio/tdm.c:913: if (lbt_rssi != 0) {
	mov	r0,#_lbt_rssi
	movx	a,@r0
	jz	00105$
;	radio/tdm.c:915: lbt_min_time = LBT_MIN_TIME_USEC/16;
	mov	r0,#_lbt_min_time
	mov	a,#0x38
	movx	@r0,a
	inc	r0
	mov	a,#0x01
	movx	@r0,a
;	radio/tdm.c:916: window_width = constrain(window_width, 3*lbt_min_time, window_width);
	mov	r0,#_constrain_PARM_2
	mov	a,#0xA8
	movx	@r0,a
	inc	r0
	mov	a,#0x03
	movx	@r0,a
	inc	r0
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	mov	r0,#_constrain_PARM_3
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
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_constrain
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
00105$:
;	radio/tdm.c:921: if (window_width >= REGULATORY_MAX_WINDOW) {
	clr	c
	mov	a,r4
	subb	a,#0xA8
	mov	a,r5
	subb	a,#0x61
	mov	a,r6
	subb	a,#0x00
	mov	a,r7
	subb	a,#0x00
	jc	00108$
;	radio/tdm.c:922: window_width = REGULATORY_MAX_WINDOW;
	mov	r4,#0xA8
	mov	r5,#0x61
	mov	r6,#0x00
	mov	r7,#0x00
;	radio/tdm.c:926: while (window_width > 0x1FFF) {
00108$:
	mov	a,r5
	anl	a,#0xE0
	jnz	00136$
	mov	a,r6
	jnz	00136$
	mov	a,r7
	jz	00110$
00136$:
;	radio/tdm.c:927: window_width = 0x1FFF;
	mov	r4,#0xFF
	mov	r5,#0x1F
	mov	r6,#0x00
	mov	r7,#0x00
	sjmp	00108$
00110$:
;	radio/tdm.c:930: tx_window_width = window_width;
	mov	r0,#_tx_window_width
	mov	a,r4
	movx	@r0,a
	inc	r0
	mov	a,r5
	movx	@r0,a
;	radio/tdm.c:935: packet_latency += ((settings.preamble_length-10)/2) * ticks_per_byte;
	mov	r0,#(_settings + 0x000b)
	movx	a,@r0
	mov	r6,#0x00
	add	a,#0xF6
	mov	r7,a
	mov	a,r6
	addc	a,#0xFF
	mov	r6,a
	mov	dptr,#__divsint_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r6
	push	ar5
	push	ar4
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	mov	r0,#_ticks_per_byte
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
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	pop	ar5
	mov	r0,#_packet_latency
	movx	a,@r0
	add	a,r6
	movx	@r0,a
	inc	r0
	movx	a,@r0
	addc	a,r7
	movx	@r0,a
;	radio/tdm.c:939: i = (tx_window_width - packet_latency) / ticks_per_byte;
	mov	r0,#_packet_latency
	setb	c
	movx	a,@r0
	subb	a,r4
	cpl	a
	cpl	c
	mov	r4,a
	cpl	c
	inc	r0
	movx	a,@r0
	subb	a,r5
	cpl	a
	mov	r5,a
	mov	r0,#_ticks_per_byte
	mov	dptr,#__divuint_PARM_2
	movx	a,@r0
	movx	@dptr,a
	inc	r0
	movx	a,@r0
	inc	dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	lcall	__divuint
	mov	r6,dpl
	mov	r7,dph
;	radio/tdm.c:940: if (i > max_data_packet_length) {
	mov	r0,#_max_data_packet_length
	movx	a,@r0
	mov	r4,a
	mov	r5,#0x00
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	subb	a,r7
	jnc	00112$
;	radio/tdm.c:941: i = max_data_packet_length;
	mov	ar6,r4
	mov	ar7,r5
00112$:
;	radio/tdm.c:943: packet_set_max_xmit(i);
	mov	dpl,r6
	lcall	_packet_set_max_xmit
;	radio/tdm.c:946: TDM_SYNC_PIN = false;
	clr	_TDM_SYNC_PIN
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'tdm_report_timing'
;------------------------------------------------------------
;	radio/tdm.c:960: tdm_report_timing(void)
;	-----------------------------------------
;	 function tdm_report_timing
;	-----------------------------------------
_tdm_report_timing:
;	radio/tdm.c:962: printf("silence_period: %u\n", (unsigned)silence_period); delay_msec(1);
	mov	r0,#_silence_period
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	a,#__str_9
	push	acc
	mov	a,#(__str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printfl
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	dptr,#0x0001
	lcall	_delay_msec
;	radio/tdm.c:963: printf("tx_window_width: %u\n", (unsigned)tx_window_width); delay_msec(1);
	mov	r0,#_tx_window_width
	movx	a,@r0
	push	acc
	inc	r0
	movx	a,@r0
	push	acc
	mov	a,#__str_10
	push	acc
	mov	a,#(__str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printfl
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	dptr,#0x0001
	lcall	_delay_msec
;	radio/tdm.c:964: printf("max_data_packet_length: %u\n", (unsigned)max_data_packet_length); delay_msec(1);
	mov	r0,#_max_data_packet_length
	movx	a,@r0
	mov	r6,a
	mov	r7,#0x00
	push	ar6
	push	ar7
	mov	a,#__str_11
	push	acc
	mov	a,#(__str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printfl
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	mov	dptr,#0x0001
	ljmp	_delay_msec
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.ascii "L/R RSSI: %u/%u  L/R noise: %u/%u pkts: %u "
	.db 0x00
__str_1:
	.ascii " txe=%u rxe=%u stx=%u srx=%u ecc=%u/%u temp=%d dco=%u"
	.db 0x0A
	.db 0x00
__str_2:
	.ascii "TDM: %u/%u len=%u "
	.db 0x00
__str_3:
	.ascii " delta: %d"
	.db 0x0A
	.db 0x00
__str_4:
	.ascii "TDM: change timing %u/%u"
	.db 0x0A
	.db 0x00
__str_5:
	.ascii "TDM: scanning"
	.db 0x0A
	.db 0x00
__str_6:
	.ascii "stack blown"
	.db 0x0A
	.db 0x00
__str_7:
	.ascii "pdata canary changed"
	.db 0x0A
	.db 0x00
__str_8:
	.ascii "oversized tdm packet"
	.db 0x00
__str_9:
	.ascii "silence_period: %u"
	.db 0x0A
	.db 0x00
__str_10:
	.ascii "tx_window_width: %u"
	.db 0x0A
	.db 0x00
__str_11:
	.ascii "max_data_packet_length: %u"
	.db 0x0A
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
