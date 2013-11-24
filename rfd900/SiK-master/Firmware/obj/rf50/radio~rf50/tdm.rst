                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:08 2013
                              5 ;--------------------------------------------------------
                              6 	.module tdm
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _fhop_set_locked
                             13 	.globl _fhop_window_change
                             14 	.globl _fhop_receive_channel
                             15 	.globl _fhop_transmit_channel
                             16 	.globl _packet_inject
                             17 	.globl _packet_set_max_xmit
                             18 	.globl _packet_force_resend
                             19 	.globl _packet_is_duplicate
                             20 	.globl _packet_is_injected
                             21 	.globl _packet_is_resend
                             22 	.globl _packet_get_next
                             23 	.globl _timer_entropy
                             24 	.globl _delay_msec
                             25 	.globl _timer2_tick
                             26 	.globl _radio_temperature
                             27 	.globl _MAVLink_report
                             28 	.globl _radio_receive_in_progress
                             29 	.globl _radio_get_transmit_power
                             30 	.globl _radio_air_rate
                             31 	.globl _radio_current_rssi
                             32 	.globl _radio_last_rssi
                             33 	.globl _radio_set_channel
                             34 	.globl _radio_receiver_on
                             35 	.globl _radio_transmit
                             36 	.globl _radio_preamble_detected
                             37 	.globl _radio_receive_packet
                             38 	.globl _printf_end_capture
                             39 	.globl _printf_start_capture
                             40 	.globl _printfl
                             41 	.globl _panic
                             42 	.globl _at_command
                             43 	.globl _constrain
                             44 	.globl _serial_write_buf
                             45 	.globl _strlen
                             46 	.globl _memset
                             47 	.globl _memcpy
                             48 	.globl _rand
                             49 	.globl _putchar
                             50 	.globl _TDM_SYNC_PIN
                             51 	.globl _SDN
                             52 	.globl _NSS1
                             53 	.globl _IRQ
                             54 	.globl _BUTTON_DOWN
                             55 	.globl _BUTTON_UP
                             56 	.globl _BUTTON_ENTER
                             57 	.globl _LED_GREEN
                             58 	.globl _LED_RED
                             59 	.globl _SPI0EN
                             60 	.globl _TXBMT0
                             61 	.globl _NSS0MD0
                             62 	.globl _NSS0MD1
                             63 	.globl _RXOVRN0
                             64 	.globl _MODF0
                             65 	.globl _WCOL0
                             66 	.globl _SPIF0
                             67 	.globl _AD0CM0
                             68 	.globl _AD0CM1
                             69 	.globl _AD0CM2
                             70 	.globl _AD0WINT
                             71 	.globl _AD0BUSY
                             72 	.globl _AD0INT
                             73 	.globl _BURSTEN
                             74 	.globl _AD0EN
                             75 	.globl _CCF0
                             76 	.globl _CCF1
                             77 	.globl _CCF2
                             78 	.globl _CCF3
                             79 	.globl _CCF4
                             80 	.globl _CCF5
                             81 	.globl _CR
                             82 	.globl _CF
                             83 	.globl _P
                             84 	.globl _F1
                             85 	.globl _OV
                             86 	.globl _RS0
                             87 	.globl _RS1
                             88 	.globl _F0
                             89 	.globl _AC
                             90 	.globl _CY
                             91 	.globl _T2XCLK
                             92 	.globl _T2RCLK
                             93 	.globl _TR2
                             94 	.globl _T2SPLIT
                             95 	.globl _TF2CEN
                             96 	.globl _TF2LEN
                             97 	.globl _TF2L
                             98 	.globl _TF2H
                             99 	.globl _SI
                            100 	.globl _ACK
                            101 	.globl _ARBLOST
                            102 	.globl _ACKRQ
                            103 	.globl _STO
                            104 	.globl _STA
                            105 	.globl _TXMODE
                            106 	.globl _MASTER
                            107 	.globl _PX0
                            108 	.globl _PT0
                            109 	.globl _PX1
                            110 	.globl _PT1
                            111 	.globl _PS0
                            112 	.globl _PT2
                            113 	.globl _PSPI0
                            114 	.globl _SPI1EN
                            115 	.globl _TXBMT1
                            116 	.globl _NSS1MD0
                            117 	.globl _NSS1MD1
                            118 	.globl _RXOVRN1
                            119 	.globl _MODF1
                            120 	.globl _WCOL1
                            121 	.globl _SPIF1
                            122 	.globl _EX0
                            123 	.globl _ET0
                            124 	.globl _EX1
                            125 	.globl _ET1
                            126 	.globl _ES0
                            127 	.globl _ET2
                            128 	.globl _ESPI0
                            129 	.globl _EA
                            130 	.globl _RI0
                            131 	.globl _TI0
                            132 	.globl _RB80
                            133 	.globl _TB80
                            134 	.globl _REN0
                            135 	.globl _MCE0
                            136 	.globl _S0MODE
                            137 	.globl _CRC0VAL
                            138 	.globl _CRC0INIT
                            139 	.globl _CRC0SEL
                            140 	.globl _IT0
                            141 	.globl _IE0
                            142 	.globl _IT1
                            143 	.globl _IE1
                            144 	.globl _TR0
                            145 	.globl _TF0
                            146 	.globl _TR1
                            147 	.globl _TF1
                            148 	.globl _PCA0CP4
                            149 	.globl _PCA0CP0
                            150 	.globl _PCA0
                            151 	.globl _PCA0CP3
                            152 	.globl _PCA0CP2
                            153 	.globl _PCA0CP1
                            154 	.globl _PCA0CP5
                            155 	.globl _TMR2
                            156 	.globl _TMR2RL
                            157 	.globl _ADC0LT
                            158 	.globl _ADC0GT
                            159 	.globl _ADC0
                            160 	.globl _TMR3
                            161 	.globl _TMR3RL
                            162 	.globl _TOFF
                            163 	.globl _DP
                            164 	.globl _VDM0CN
                            165 	.globl _PCA0CPH4
                            166 	.globl _PCA0CPL4
                            167 	.globl _PCA0CPH0
                            168 	.globl _PCA0CPL0
                            169 	.globl _PCA0H
                            170 	.globl _PCA0L
                            171 	.globl _SPI0CN
                            172 	.globl _EIP2
                            173 	.globl _EIP1
                            174 	.globl _SMB0ADM
                            175 	.globl _SMB0ADR
                            176 	.globl _P2MDIN
                            177 	.globl _P1MDIN
                            178 	.globl _P0MDIN
                            179 	.globl _B
                            180 	.globl _RSTSRC
                            181 	.globl _PCA0CPH3
                            182 	.globl _PCA0CPL3
                            183 	.globl _PCA0CPH2
                            184 	.globl _PCA0CPL2
                            185 	.globl _PCA0CPH1
                            186 	.globl _PCA0CPL1
                            187 	.globl _ADC0CN
                            188 	.globl _EIE2
                            189 	.globl _EIE1
                            190 	.globl _FLWR
                            191 	.globl _IT01CF
                            192 	.globl _XBR2
                            193 	.globl _XBR1
                            194 	.globl _XBR0
                            195 	.globl _ACC
                            196 	.globl _PCA0PWM
                            197 	.globl _PCA0CPM4
                            198 	.globl _PCA0CPM3
                            199 	.globl _PCA0CPM2
                            200 	.globl _PCA0CPM1
                            201 	.globl _PCA0CPM0
                            202 	.globl _PCA0MD
                            203 	.globl _PCA0CN
                            204 	.globl _P0MAT
                            205 	.globl _P2SKIP
                            206 	.globl _P1SKIP
                            207 	.globl _P0SKIP
                            208 	.globl _PCA0CPH5
                            209 	.globl _PCA0CPL5
                            210 	.globl _REF0CN
                            211 	.globl _PSW
                            212 	.globl _P1MAT
                            213 	.globl _PCA0CPM5
                            214 	.globl _TMR2H
                            215 	.globl _TMR2L
                            216 	.globl _TMR2RLH
                            217 	.globl _TMR2RLL
                            218 	.globl _REG0CN
                            219 	.globl _TMR2CN
                            220 	.globl _P0MASK
                            221 	.globl _ADC0LTH
                            222 	.globl _ADC0LTL
                            223 	.globl _ADC0GTH
                            224 	.globl _ADC0GTL
                            225 	.globl _SMB0DAT
                            226 	.globl _SMB0CF
                            227 	.globl _SMB0CN
                            228 	.globl _P1MASK
                            229 	.globl _ADC0H
                            230 	.globl _ADC0L
                            231 	.globl _ADC0TK
                            232 	.globl _ADC0CF
                            233 	.globl _ADC0MX
                            234 	.globl _ADC0PWR
                            235 	.globl _ADC0AC
                            236 	.globl _IREF0CN
                            237 	.globl _IP
                            238 	.globl _FLKEY
                            239 	.globl _FLSCL
                            240 	.globl _PMU0CF
                            241 	.globl _OSCICL
                            242 	.globl _OSCICN
                            243 	.globl _OSCXCN
                            244 	.globl _SPI1CN
                            245 	.globl _ONESHOT
                            246 	.globl _EMI0TC
                            247 	.globl _RTC0KEY
                            248 	.globl _RTC0DAT
                            249 	.globl _RTC0ADR
                            250 	.globl _EMI0CF
                            251 	.globl _EMI0CN
                            252 	.globl _CLKSEL
                            253 	.globl _IE
                            254 	.globl _SFRPAGE
                            255 	.globl _P2DRV
                            256 	.globl _P2MDOUT
                            257 	.globl _P1DRV
                            258 	.globl _P1MDOUT
                            259 	.globl _P0DRV
                            260 	.globl _P0MDOUT
                            261 	.globl _SPI0DAT
                            262 	.globl _SPI0CKR
                            263 	.globl _SPI0CFG
                            264 	.globl _P2
                            265 	.globl _CPT0MX
                            266 	.globl _CPT1MX
                            267 	.globl _CPT0MD
                            268 	.globl _CPT1MD
                            269 	.globl _CPT0CN
                            270 	.globl _CPT1CN
                            271 	.globl _SBUF0
                            272 	.globl _SCON0
                            273 	.globl _CRC0CNT
                            274 	.globl _DC0CN
                            275 	.globl _CRC0AUTO
                            276 	.globl _DC0CF
                            277 	.globl _TMR3H
                            278 	.globl _CRC0FLIP
                            279 	.globl _TMR3L
                            280 	.globl _CRC0IN
                            281 	.globl _TMR3RLH
                            282 	.globl _CRC0CN
                            283 	.globl _TMR3RLL
                            284 	.globl _CRC0DAT
                            285 	.globl _TMR3CN
                            286 	.globl _P1
                            287 	.globl _PSCTL
                            288 	.globl _CKCON
                            289 	.globl _TH1
                            290 	.globl _TH0
                            291 	.globl _TL1
                            292 	.globl _TL0
                            293 	.globl _TMOD
                            294 	.globl _TCON
                            295 	.globl _PCON
                            296 	.globl _TOFFH
                            297 	.globl _SPI1DAT
                            298 	.globl _TOFFL
                            299 	.globl _SPI1CKR
                            300 	.globl _SPI1CFG
                            301 	.globl _DPH
                            302 	.globl _DPL
                            303 	.globl _SP
                            304 	.globl _P0
                            305 	.globl _pbuf
                            306 	.globl _trailer
                            307 	.globl _test_display
                            308 	.globl _lbt_rssi
                            309 	.globl _duty_cycle_offset
                            310 	.globl _duty_cycle
                            311 	.globl _transmit_wait
                            312 	.globl __canary
                            313 	.globl _tdm_show_rssi
                            314 	.globl _tdm_change_phase
                            315 	.globl _tdm_remote_at
                            316 	.globl _tdm_serial_loop
                            317 	.globl _tdm_init
                            318 	.globl _tdm_report_timing
                            319 ;--------------------------------------------------------
                            320 ; special function registers
                            321 ;--------------------------------------------------------
                            322 	.area RSEG    (ABS,DATA)
   0000                     323 	.org 0x0000
                     0080   324 _P0	=	0x0080
                     0081   325 _SP	=	0x0081
                     0082   326 _DPL	=	0x0082
                     0083   327 _DPH	=	0x0083
                     0084   328 _SPI1CFG	=	0x0084
                     0085   329 _SPI1CKR	=	0x0085
                     0085   330 _TOFFL	=	0x0085
                     0086   331 _SPI1DAT	=	0x0086
                     0086   332 _TOFFH	=	0x0086
                     0087   333 _PCON	=	0x0087
                     0088   334 _TCON	=	0x0088
                     0089   335 _TMOD	=	0x0089
                     008A   336 _TL0	=	0x008a
                     008B   337 _TL1	=	0x008b
                     008C   338 _TH0	=	0x008c
                     008D   339 _TH1	=	0x008d
                     008E   340 _CKCON	=	0x008e
                     008F   341 _PSCTL	=	0x008f
                     0090   342 _P1	=	0x0090
                     0091   343 _TMR3CN	=	0x0091
                     0091   344 _CRC0DAT	=	0x0091
                     0092   345 _TMR3RLL	=	0x0092
                     0092   346 _CRC0CN	=	0x0092
                     0093   347 _TMR3RLH	=	0x0093
                     0093   348 _CRC0IN	=	0x0093
                     0094   349 _TMR3L	=	0x0094
                     0095   350 _CRC0FLIP	=	0x0095
                     0095   351 _TMR3H	=	0x0095
                     0096   352 _DC0CF	=	0x0096
                     0096   353 _CRC0AUTO	=	0x0096
                     0097   354 _DC0CN	=	0x0097
                     0097   355 _CRC0CNT	=	0x0097
                     0098   356 _SCON0	=	0x0098
                     0099   357 _SBUF0	=	0x0099
                     009A   358 _CPT1CN	=	0x009a
                     009B   359 _CPT0CN	=	0x009b
                     009C   360 _CPT1MD	=	0x009c
                     009D   361 _CPT0MD	=	0x009d
                     009E   362 _CPT1MX	=	0x009e
                     009F   363 _CPT0MX	=	0x009f
                     00A0   364 _P2	=	0x00a0
                     00A1   365 _SPI0CFG	=	0x00a1
                     00A2   366 _SPI0CKR	=	0x00a2
                     00A3   367 _SPI0DAT	=	0x00a3
                     00A4   368 _P0MDOUT	=	0x00a4
                     00A4   369 _P0DRV	=	0x00a4
                     00A5   370 _P1MDOUT	=	0x00a5
                     00A5   371 _P1DRV	=	0x00a5
                     00A6   372 _P2MDOUT	=	0x00a6
                     00A6   373 _P2DRV	=	0x00a6
                     00A7   374 _SFRPAGE	=	0x00a7
                     00A8   375 _IE	=	0x00a8
                     00A9   376 _CLKSEL	=	0x00a9
                     00AA   377 _EMI0CN	=	0x00aa
                     00AB   378 _EMI0CF	=	0x00ab
                     00AC   379 _RTC0ADR	=	0x00ac
                     00AD   380 _RTC0DAT	=	0x00ad
                     00AE   381 _RTC0KEY	=	0x00ae
                     00AF   382 _EMI0TC	=	0x00af
                     00AF   383 _ONESHOT	=	0x00af
                     00B0   384 _SPI1CN	=	0x00b0
                     00B1   385 _OSCXCN	=	0x00b1
                     00B2   386 _OSCICN	=	0x00b2
                     00B3   387 _OSCICL	=	0x00b3
                     00B5   388 _PMU0CF	=	0x00b5
                     00B6   389 _FLSCL	=	0x00b6
                     00B7   390 _FLKEY	=	0x00b7
                     00B8   391 _IP	=	0x00b8
                     00B9   392 _IREF0CN	=	0x00b9
                     00BA   393 _ADC0AC	=	0x00ba
                     00BA   394 _ADC0PWR	=	0x00ba
                     00BB   395 _ADC0MX	=	0x00bb
                     00BC   396 _ADC0CF	=	0x00bc
                     00BD   397 _ADC0TK	=	0x00bd
                     00BD   398 _ADC0L	=	0x00bd
                     00BE   399 _ADC0H	=	0x00be
                     00BF   400 _P1MASK	=	0x00bf
                     00C0   401 _SMB0CN	=	0x00c0
                     00C1   402 _SMB0CF	=	0x00c1
                     00C2   403 _SMB0DAT	=	0x00c2
                     00C3   404 _ADC0GTL	=	0x00c3
                     00C4   405 _ADC0GTH	=	0x00c4
                     00C5   406 _ADC0LTL	=	0x00c5
                     00C6   407 _ADC0LTH	=	0x00c6
                     00C7   408 _P0MASK	=	0x00c7
                     00C8   409 _TMR2CN	=	0x00c8
                     00C9   410 _REG0CN	=	0x00c9
                     00CA   411 _TMR2RLL	=	0x00ca
                     00CB   412 _TMR2RLH	=	0x00cb
                     00CC   413 _TMR2L	=	0x00cc
                     00CD   414 _TMR2H	=	0x00cd
                     00CE   415 _PCA0CPM5	=	0x00ce
                     00CF   416 _P1MAT	=	0x00cf
                     00D0   417 _PSW	=	0x00d0
                     00D1   418 _REF0CN	=	0x00d1
                     00D2   419 _PCA0CPL5	=	0x00d2
                     00D3   420 _PCA0CPH5	=	0x00d3
                     00D4   421 _P0SKIP	=	0x00d4
                     00D5   422 _P1SKIP	=	0x00d5
                     00D6   423 _P2SKIP	=	0x00d6
                     00D7   424 _P0MAT	=	0x00d7
                     00D8   425 _PCA0CN	=	0x00d8
                     00D9   426 _PCA0MD	=	0x00d9
                     00DA   427 _PCA0CPM0	=	0x00da
                     00DB   428 _PCA0CPM1	=	0x00db
                     00DC   429 _PCA0CPM2	=	0x00dc
                     00DD   430 _PCA0CPM3	=	0x00dd
                     00DE   431 _PCA0CPM4	=	0x00de
                     00DF   432 _PCA0PWM	=	0x00df
                     00E0   433 _ACC	=	0x00e0
                     00E1   434 _XBR0	=	0x00e1
                     00E2   435 _XBR1	=	0x00e2
                     00E3   436 _XBR2	=	0x00e3
                     00E4   437 _IT01CF	=	0x00e4
                     00E5   438 _FLWR	=	0x00e5
                     00E6   439 _EIE1	=	0x00e6
                     00E7   440 _EIE2	=	0x00e7
                     00E8   441 _ADC0CN	=	0x00e8
                     00E9   442 _PCA0CPL1	=	0x00e9
                     00EA   443 _PCA0CPH1	=	0x00ea
                     00EB   444 _PCA0CPL2	=	0x00eb
                     00EC   445 _PCA0CPH2	=	0x00ec
                     00ED   446 _PCA0CPL3	=	0x00ed
                     00EE   447 _PCA0CPH3	=	0x00ee
                     00EF   448 _RSTSRC	=	0x00ef
                     00F0   449 _B	=	0x00f0
                     00F1   450 _P0MDIN	=	0x00f1
                     00F2   451 _P1MDIN	=	0x00f2
                     00F3   452 _P2MDIN	=	0x00f3
                     00F4   453 _SMB0ADR	=	0x00f4
                     00F5   454 _SMB0ADM	=	0x00f5
                     00F6   455 _EIP1	=	0x00f6
                     00F7   456 _EIP2	=	0x00f7
                     00F8   457 _SPI0CN	=	0x00f8
                     00F9   458 _PCA0L	=	0x00f9
                     00FA   459 _PCA0H	=	0x00fa
                     00FB   460 _PCA0CPL0	=	0x00fb
                     00FC   461 _PCA0CPH0	=	0x00fc
                     00FD   462 _PCA0CPL4	=	0x00fd
                     00FE   463 _PCA0CPH4	=	0x00fe
                     00FF   464 _VDM0CN	=	0x00ff
                     8382   465 _DP	=	0x8382
                     8685   466 _TOFF	=	0x8685
                     9392   467 _TMR3RL	=	0x9392
                     9594   468 _TMR3	=	0x9594
                     BEBD   469 _ADC0	=	0xbebd
                     C4C3   470 _ADC0GT	=	0xc4c3
                     C6C5   471 _ADC0LT	=	0xc6c5
                     CBCA   472 _TMR2RL	=	0xcbca
                     CDCC   473 _TMR2	=	0xcdcc
                     D3D2   474 _PCA0CP5	=	0xd3d2
                     EAE9   475 _PCA0CP1	=	0xeae9
                     ECEB   476 _PCA0CP2	=	0xeceb
                     EEED   477 _PCA0CP3	=	0xeeed
                     FAF9   478 _PCA0	=	0xfaf9
                     FCFB   479 _PCA0CP0	=	0xfcfb
                     FEFD   480 _PCA0CP4	=	0xfefd
                            481 ;--------------------------------------------------------
                            482 ; special function bits
                            483 ;--------------------------------------------------------
                            484 	.area RSEG    (ABS,DATA)
   0000                     485 	.org 0x0000
                     008F   486 _TF1	=	0x008f
                     008E   487 _TR1	=	0x008e
                     008D   488 _TF0	=	0x008d
                     008C   489 _TR0	=	0x008c
                     008B   490 _IE1	=	0x008b
                     008A   491 _IT1	=	0x008a
                     0089   492 _IE0	=	0x0089
                     0088   493 _IT0	=	0x0088
                     0096   494 _CRC0SEL	=	0x0096
                     0095   495 _CRC0INIT	=	0x0095
                     0094   496 _CRC0VAL	=	0x0094
                     009F   497 _S0MODE	=	0x009f
                     009D   498 _MCE0	=	0x009d
                     009C   499 _REN0	=	0x009c
                     009B   500 _TB80	=	0x009b
                     009A   501 _RB80	=	0x009a
                     0099   502 _TI0	=	0x0099
                     0098   503 _RI0	=	0x0098
                     00AF   504 _EA	=	0x00af
                     00AE   505 _ESPI0	=	0x00ae
                     00AD   506 _ET2	=	0x00ad
                     00AC   507 _ES0	=	0x00ac
                     00AB   508 _ET1	=	0x00ab
                     00AA   509 _EX1	=	0x00aa
                     00A9   510 _ET0	=	0x00a9
                     00A8   511 _EX0	=	0x00a8
                     00B7   512 _SPIF1	=	0x00b7
                     00B6   513 _WCOL1	=	0x00b6
                     00B5   514 _MODF1	=	0x00b5
                     00B4   515 _RXOVRN1	=	0x00b4
                     00B3   516 _NSS1MD1	=	0x00b3
                     00B2   517 _NSS1MD0	=	0x00b2
                     00B1   518 _TXBMT1	=	0x00b1
                     00B0   519 _SPI1EN	=	0x00b0
                     00BE   520 _PSPI0	=	0x00be
                     00BD   521 _PT2	=	0x00bd
                     00BC   522 _PS0	=	0x00bc
                     00BB   523 _PT1	=	0x00bb
                     00BA   524 _PX1	=	0x00ba
                     00B9   525 _PT0	=	0x00b9
                     00B8   526 _PX0	=	0x00b8
                     00C7   527 _MASTER	=	0x00c7
                     00C6   528 _TXMODE	=	0x00c6
                     00C5   529 _STA	=	0x00c5
                     00C4   530 _STO	=	0x00c4
                     00C3   531 _ACKRQ	=	0x00c3
                     00C2   532 _ARBLOST	=	0x00c2
                     00C1   533 _ACK	=	0x00c1
                     00C0   534 _SI	=	0x00c0
                     00CF   535 _TF2H	=	0x00cf
                     00CE   536 _TF2L	=	0x00ce
                     00CD   537 _TF2LEN	=	0x00cd
                     00CC   538 _TF2CEN	=	0x00cc
                     00CB   539 _T2SPLIT	=	0x00cb
                     00CA   540 _TR2	=	0x00ca
                     00C9   541 _T2RCLK	=	0x00c9
                     00C8   542 _T2XCLK	=	0x00c8
                     00D7   543 _CY	=	0x00d7
                     00D6   544 _AC	=	0x00d6
                     00D5   545 _F0	=	0x00d5
                     00D4   546 _RS1	=	0x00d4
                     00D3   547 _RS0	=	0x00d3
                     00D2   548 _OV	=	0x00d2
                     00D1   549 _F1	=	0x00d1
                     00D0   550 _P	=	0x00d0
                     00DF   551 _CF	=	0x00df
                     00DE   552 _CR	=	0x00de
                     00DD   553 _CCF5	=	0x00dd
                     00DC   554 _CCF4	=	0x00dc
                     00DB   555 _CCF3	=	0x00db
                     00DA   556 _CCF2	=	0x00da
                     00D9   557 _CCF1	=	0x00d9
                     00D8   558 _CCF0	=	0x00d8
                     00EF   559 _AD0EN	=	0x00ef
                     00EE   560 _BURSTEN	=	0x00ee
                     00ED   561 _AD0INT	=	0x00ed
                     00EC   562 _AD0BUSY	=	0x00ec
                     00EB   563 _AD0WINT	=	0x00eb
                     00EA   564 _AD0CM2	=	0x00ea
                     00E9   565 _AD0CM1	=	0x00e9
                     00E8   566 _AD0CM0	=	0x00e8
                     00FF   567 _SPIF0	=	0x00ff
                     00FE   568 _WCOL0	=	0x00fe
                     00FD   569 _MODF0	=	0x00fd
                     00FC   570 _RXOVRN0	=	0x00fc
                     00FB   571 _NSS0MD1	=	0x00fb
                     00FA   572 _NSS0MD0	=	0x00fa
                     00F9   573 _TXBMT0	=	0x00f9
                     00F8   574 _SPI0EN	=	0x00f8
                     00A0   575 _LED_RED	=	0x00a0
                     00A5   576 _LED_GREEN	=	0x00a5
                     0086   577 _BUTTON_ENTER	=	0x0086
                     0095   578 _BUTTON_UP	=	0x0095
                     0096   579 _BUTTON_DOWN	=	0x0096
                     0087   580 _IRQ	=	0x0087
                     0094   581 _NSS1	=	0x0094
                     00A6   582 _SDN	=	0x00a6
                     00A6   583 _TDM_SYNC_PIN	=	0x00a6
                            584 ;--------------------------------------------------------
                            585 ; overlayable register banks
                            586 ;--------------------------------------------------------
                            587 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     588 	.ds 8
                            589 ;--------------------------------------------------------
                            590 ; internal ram data
                            591 ;--------------------------------------------------------
                            592 	.area DSEG    (DATA)
   0053                     593 _average_duty_cycle:
   0053                     594 	.ds 4
   0057                     595 _tdm_show_rssi_sloc0_1_0:
   0057                     596 	.ds 2
   0059                     597 _tdm_show_rssi_sloc1_1_0:
   0059                     598 	.ds 2
   005B                     599 _tdm_show_rssi_sloc2_1_0:
   005B                     600 	.ds 2
   005D                     601 _tdm_show_rssi_sloc3_1_0:
   005D                     602 	.ds 2
   005F                     603 _tdm_show_rssi_sloc4_1_0:
   005F                     604 	.ds 2
   0061                     605 _sync_tx_windows_old_state_1_155:
   0061                     606 	.ds 1
   0062                     607 _tdm_state_update_sloc0_1_0:
   0062                     608 	.ds 2
   0064                     609 _tdm_state_update_sloc1_1_0:
   0064                     610 	.ds 4
   0068                     611 _tdm_state_update_sloc2_1_0:
   0068                     612 	.ds 4
   006C                     613 _tdm_init_sloc0_1_0:
   006C                     614 	.ds 4
                            615 ;--------------------------------------------------------
                            616 ; overlayable items in internal ram 
                            617 ;--------------------------------------------------------
                            618 ;--------------------------------------------------------
                            619 ; indirectly addressable internal ram data
                            620 ;--------------------------------------------------------
                            621 	.area ISEG    (DATA)
                     00FF   622 __canary	=	0x00ff
                            623 ;--------------------------------------------------------
                            624 ; absolute internal ram data
                            625 ;--------------------------------------------------------
                            626 	.area IABS    (ABS,DATA)
                            627 	.area IABS    (ABS,DATA)
                            628 ;--------------------------------------------------------
                            629 ; bit data
                            630 ;--------------------------------------------------------
                            631 	.area BSEG    (BIT)
   0027                     632 _bonus_transmit:
   0027                     633 	.ds 1
   0028                     634 _transmit_yield:
   0028                     635 	.ds 1
   0029                     636 _blink_state:
   0029                     637 	.ds 1
   002A                     638 _received_packet:
   002A                     639 	.ds 1
   002B                     640 _duty_cycle_wait:
   002B                     641 	.ds 1
   002C                     642 _send_statistics:
   002C                     643 	.ds 1
   002D                     644 _send_at_command:
   002D                     645 	.ds 1
   002E                     646 _sync_tx_windows_sloc0_1_0:
   002E                     647 	.ds 1
   002F                     648 _tdm_state_update_sloc3_1_0:
   002F                     649 	.ds 1
   0030                     650 _tdm_serial_loop_sloc0_1_0:
   0030                     651 	.ds 1
                            652 ;--------------------------------------------------------
                            653 ; paged external ram data
                            654 ;--------------------------------------------------------
                            655 	.area PSEG    (PAG,XDATA)
   00B6                     656 _tdm_state:
   00B6                     657 	.ds 1
   00B7                     658 _tdm_state_remaining:
   00B7                     659 	.ds 2
   00B9                     660 _tx_window_width:
   00B9                     661 	.ds 2
   00BB                     662 _max_data_packet_length:
   00BB                     663 	.ds 1
   00BC                     664 _silence_period:
   00BC                     665 	.ds 2
   00BE                     666 _packet_latency:
   00BE                     667 	.ds 2
   00C0                     668 _ticks_per_byte:
   00C0                     669 	.ds 2
   00C2                     670 _transmit_wait::
   00C2                     671 	.ds 2
   00C4                     672 _duty_cycle::
   00C4                     673 	.ds 1
   00C5                     674 _duty_cycle_offset::
   00C5                     675 	.ds 1
   00C6                     676 _transmitted_ticks:
   00C6                     677 	.ds 2
   00C8                     678 _lbt_rssi::
   00C8                     679 	.ds 1
   00C9                     680 _lbt_listen_time:
   00C9                     681 	.ds 2
   00CB                     682 _lbt_min_time:
   00CB                     683 	.ds 2
   00CD                     684 _lbt_rand:
   00CD                     685 	.ds 2
   00CF                     686 _test_display::
   00CF                     687 	.ds 1
   00D0                     688 _trailer::
   00D0                     689 	.ds 2
   00D2                     690 _remote_at_cmd:
   00D2                     691 	.ds 17
   00E3                     692 _sync_tx_windows_delta_2_162:
   00E3                     693 	.ds 2
   00E5                     694 _tdm_serial_loop_last_t_1_207:
   00E5                     695 	.ds 2
   00E7                     696 _tdm_serial_loop_last_link_update_1_207:
   00E7                     697 	.ds 2
   00E9                     698 _tdm_serial_loop_len_2_208:
   00E9                     699 	.ds 1
   00EA                     700 _tdm_serial_loop_tdelta_2_208:
   00EA                     701 	.ds 2
                            702 ;--------------------------------------------------------
                            703 ; external ram data
                            704 ;--------------------------------------------------------
                            705 	.area XSEG    (XDATA)
   0472                     706 _pbuf::
   0472                     707 	.ds 252
   056E                     708 _link_update_unlock_count_1_185:
   056E                     709 	.ds 1
   056F                     710 _link_update_temperature_count_1_185:
   056F                     711 	.ds 1
                            712 ;--------------------------------------------------------
                            713 ; absolute external ram data
                            714 ;--------------------------------------------------------
                            715 	.area XABS    (ABS,XDATA)
                            716 ;--------------------------------------------------------
                            717 ; external initialized ram data
                            718 ;--------------------------------------------------------
                            719 	.area XISEG   (XDATA)
                            720 	.area HOME    (CODE)
                            721 	.area GSINIT0 (CODE)
                            722 	.area GSINIT1 (CODE)
                            723 	.area GSINIT2 (CODE)
                            724 	.area GSINIT3 (CODE)
                            725 	.area GSINIT4 (CODE)
                            726 	.area GSINIT5 (CODE)
                            727 	.area GSINIT  (CODE)
                            728 	.area GSFINAL (CODE)
                            729 	.area CSEG    (CODE)
                            730 ;--------------------------------------------------------
                            731 ; global & static initialisations
                            732 ;--------------------------------------------------------
                            733 	.area HOME    (CODE)
                            734 	.area GSINIT  (CODE)
                            735 	.area GSFINAL (CODE)
                            736 	.area GSINIT  (CODE)
                            737 ;--------------------------------------------------------
                            738 ; Home
                            739 ;--------------------------------------------------------
                            740 	.area HOME    (CODE)
                            741 	.area HOME    (CODE)
                            742 ;--------------------------------------------------------
                            743 ; code
                            744 ;--------------------------------------------------------
                            745 	.area CSEG    (CODE)
                            746 ;------------------------------------------------------------
                            747 ;Allocation info for local variables in function 'tdm_show_rssi'
                            748 ;------------------------------------------------------------
                            749 ;sloc0                     Allocated with name '_tdm_show_rssi_sloc0_1_0'
                            750 ;sloc1                     Allocated with name '_tdm_show_rssi_sloc1_1_0'
                            751 ;sloc2                     Allocated with name '_tdm_show_rssi_sloc2_1_0'
                            752 ;sloc3                     Allocated with name '_tdm_show_rssi_sloc3_1_0'
                            753 ;sloc4                     Allocated with name '_tdm_show_rssi_sloc4_1_0'
                            754 ;------------------------------------------------------------
                            755 ;	radio/tdm.c:152: tdm_show_rssi(void)
                            756 ;	-----------------------------------------
                            757 ;	 function tdm_show_rssi
                            758 ;	-----------------------------------------
   44DB                     759 _tdm_show_rssi:
                     0007   760 	ar7 = 0x07
                     0006   761 	ar6 = 0x06
                     0005   762 	ar5 = 0x05
                     0004   763 	ar4 = 0x04
                     0003   764 	ar3 = 0x03
                     0002   765 	ar2 = 0x02
                     0001   766 	ar1 = 0x01
                     0000   767 	ar0 = 0x00
                            768 ;	radio/tdm.c:154: printf("L/R RSSI: %u/%u  L/R noise: %u/%u pkts: %u ",
   44DB 78 42         [12]  769 	mov	r0,#(_statistics + 0x0002)
   44DD E2            [24]  770 	movx	a,@r0
   44DE FE            [12]  771 	mov	r6,a
   44DF 08            [12]  772 	inc	r0
   44E0 E2            [24]  773 	movx	a,@r0
   44E1 FF            [12]  774 	mov	r7,a
   44E2 78 45         [12]  775 	mov	r0,#(_remote_statistics + 0x0001)
   44E4 E2            [24]  776 	movx	a,@r0
   44E5 FD            [12]  777 	mov	r5,a
   44E6 7C 00         [12]  778 	mov	r4,#0x00
   44E8 78 41         [12]  779 	mov	r0,#(_statistics + 0x0001)
   44EA E2            [24]  780 	movx	a,@r0
   44EB FB            [12]  781 	mov	r3,a
   44EC 8B 57         [24]  782 	mov	_tdm_show_rssi_sloc0_1_0,r3
   44EE 75 58 00      [24]  783 	mov	(_tdm_show_rssi_sloc0_1_0 + 1),#0x00
   44F1 78 44         [12]  784 	mov	r0,#_remote_statistics
   44F3 E2            [24]  785 	movx	a,@r0
   44F4 FB            [12]  786 	mov	r3,a
   44F5 8B 59         [24]  787 	mov	_tdm_show_rssi_sloc1_1_0,r3
   44F7 75 5A 00      [24]  788 	mov	(_tdm_show_rssi_sloc1_1_0 + 1),#0x00
   44FA 78 40         [12]  789 	mov	r0,#_statistics
   44FC E2            [24]  790 	movx	a,@r0
   44FD FB            [12]  791 	mov	r3,a
   44FE 7A 00         [12]  792 	mov	r2,#0x00
   4500 C0 06         [24]  793 	push	ar6
   4502 C0 07         [24]  794 	push	ar7
   4504 C0 05         [24]  795 	push	ar5
   4506 C0 04         [24]  796 	push	ar4
   4508 C0 57         [24]  797 	push	_tdm_show_rssi_sloc0_1_0
   450A C0 58         [24]  798 	push	(_tdm_show_rssi_sloc0_1_0 + 1)
   450C C0 59         [24]  799 	push	_tdm_show_rssi_sloc1_1_0
   450E C0 5A         [24]  800 	push	(_tdm_show_rssi_sloc1_1_0 + 1)
   4510 C0 03         [24]  801 	push	ar3
   4512 C0 02         [24]  802 	push	ar2
   4514 74 E5         [12]  803 	mov	a,#__str_0
   4516 C0 E0         [24]  804 	push	acc
   4518 74 CB         [12]  805 	mov	a,#(__str_0 >> 8)
   451A C0 E0         [24]  806 	push	acc
   451C 74 80         [12]  807 	mov	a,#0x80
   451E C0 E0         [24]  808 	push	acc
   4520 12 2D B6      [24]  809 	lcall	_printfl
   4523 E5 81         [12]  810 	mov	a,sp
   4525 24 F3         [12]  811 	add	a,#0xf3
   4527 F5 81         [12]  812 	mov	sp,a
                            813 ;	radio/tdm.c:160: printf(" txe=%u rxe=%u stx=%u srx=%u ecc=%u/%u temp=%d dco=%u\n",
   4529 78 C5         [12]  814 	mov	r0,#_duty_cycle_offset
   452B E2            [24]  815 	movx	a,@r0
   452C FE            [12]  816 	mov	r6,a
   452D 7F 00         [12]  817 	mov	r7,#0x00
   452F C0 07         [24]  818 	push	ar7
   4531 C0 06         [24]  819 	push	ar6
   4533 12 3C 6F      [24]  820 	lcall	_radio_temperature
   4536 AC 82         [24]  821 	mov	r4,dpl
   4538 AD 83         [24]  822 	mov	r5,dph
   453A D0 06         [24]  823 	pop	ar6
   453C D0 07         [24]  824 	pop	ar7
   453E 78 3E         [12]  825 	mov	r0,#(_errors + 0x000a)
   4540 E2            [24]  826 	movx	a,@r0
   4541 F5 59         [12]  827 	mov	_tdm_show_rssi_sloc1_1_0,a
   4543 08            [12]  828 	inc	r0
   4544 E2            [24]  829 	movx	a,@r0
   4545 F5 5A         [12]  830 	mov	(_tdm_show_rssi_sloc1_1_0 + 1),a
   4547 78 3C         [12]  831 	mov	r0,#(_errors + 0x0008)
   4549 E2            [24]  832 	movx	a,@r0
   454A F5 57         [12]  833 	mov	_tdm_show_rssi_sloc0_1_0,a
   454C 08            [12]  834 	inc	r0
   454D E2            [24]  835 	movx	a,@r0
   454E F5 58         [12]  836 	mov	(_tdm_show_rssi_sloc0_1_0 + 1),a
   4550 78 3A         [12]  837 	mov	r0,#(_errors + 0x0006)
   4552 E2            [24]  838 	movx	a,@r0
   4553 F5 5B         [12]  839 	mov	_tdm_show_rssi_sloc2_1_0,a
   4555 08            [12]  840 	inc	r0
   4556 E2            [24]  841 	movx	a,@r0
   4557 F5 5C         [12]  842 	mov	(_tdm_show_rssi_sloc2_1_0 + 1),a
   4559 78 38         [12]  843 	mov	r0,#(_errors + 0x0004)
   455B E2            [24]  844 	movx	a,@r0
   455C F5 5D         [12]  845 	mov	_tdm_show_rssi_sloc3_1_0,a
   455E 08            [12]  846 	inc	r0
   455F E2            [24]  847 	movx	a,@r0
   4560 F5 5E         [12]  848 	mov	(_tdm_show_rssi_sloc3_1_0 + 1),a
   4562 78 34         [12]  849 	mov	r0,#_errors
   4564 E2            [24]  850 	movx	a,@r0
   4565 F5 5F         [12]  851 	mov	_tdm_show_rssi_sloc4_1_0,a
   4567 08            [12]  852 	inc	r0
   4568 E2            [24]  853 	movx	a,@r0
   4569 F5 60         [12]  854 	mov	(_tdm_show_rssi_sloc4_1_0 + 1),a
   456B 78 36         [12]  855 	mov	r0,#(_errors + 0x0002)
   456D E2            [24]  856 	movx	a,@r0
   456E FA            [12]  857 	mov	r2,a
   456F 08            [12]  858 	inc	r0
   4570 E2            [24]  859 	movx	a,@r0
   4571 FB            [12]  860 	mov	r3,a
   4572 C0 06         [24]  861 	push	ar6
   4574 C0 07         [24]  862 	push	ar7
   4576 C0 04         [24]  863 	push	ar4
   4578 C0 05         [24]  864 	push	ar5
   457A C0 59         [24]  865 	push	_tdm_show_rssi_sloc1_1_0
   457C C0 5A         [24]  866 	push	(_tdm_show_rssi_sloc1_1_0 + 1)
   457E C0 57         [24]  867 	push	_tdm_show_rssi_sloc0_1_0
   4580 C0 58         [24]  868 	push	(_tdm_show_rssi_sloc0_1_0 + 1)
   4582 C0 5B         [24]  869 	push	_tdm_show_rssi_sloc2_1_0
   4584 C0 5C         [24]  870 	push	(_tdm_show_rssi_sloc2_1_0 + 1)
   4586 C0 5D         [24]  871 	push	_tdm_show_rssi_sloc3_1_0
   4588 C0 5E         [24]  872 	push	(_tdm_show_rssi_sloc3_1_0 + 1)
   458A C0 5F         [24]  873 	push	_tdm_show_rssi_sloc4_1_0
   458C C0 60         [24]  874 	push	(_tdm_show_rssi_sloc4_1_0 + 1)
   458E C0 02         [24]  875 	push	ar2
   4590 C0 03         [24]  876 	push	ar3
   4592 74 11         [12]  877 	mov	a,#__str_1
   4594 C0 E0         [24]  878 	push	acc
   4596 74 CC         [12]  879 	mov	a,#(__str_1 >> 8)
   4598 C0 E0         [24]  880 	push	acc
   459A 74 80         [12]  881 	mov	a,#0x80
   459C C0 E0         [24]  882 	push	acc
   459E 12 2D B6      [24]  883 	lcall	_printfl
   45A1 E5 81         [12]  884 	mov	a,sp
   45A3 24 ED         [12]  885 	add	a,#0xed
   45A5 F5 81         [12]  886 	mov	sp,a
                            887 ;	radio/tdm.c:169: statistics.receive_count = 0;
   45A7 78 42         [12]  888 	mov	r0,#(_statistics + 0x0002)
   45A9 E4            [12]  889 	clr	a
   45AA F2            [24]  890 	movx	@r0,a
   45AB 08            [12]  891 	inc	r0
   45AC F2            [24]  892 	movx	@r0,a
   45AD 22            [24]  893 	ret
                            894 ;------------------------------------------------------------
                            895 ;Allocation info for local variables in function 'display_test_output'
                            896 ;------------------------------------------------------------
                            897 ;	radio/tdm.c:175: display_test_output(void)
                            898 ;	-----------------------------------------
                            899 ;	 function display_test_output
                            900 ;	-----------------------------------------
   45AE                     901 _display_test_output:
                            902 ;	radio/tdm.c:177: if (test_display & AT_TEST_RSSI) {
   45AE 78 CF         [12]  903 	mov	r0,#_test_display
   45B0 E2            [24]  904 	movx	a,@r0
   45B1 54 01         [12]  905 	anl	a,#0x01
   45B3 60 03         [24]  906 	jz	00103$
                            907 ;	radio/tdm.c:178: tdm_show_rssi();
   45B5 02 44 DB      [24]  908 	ljmp	_tdm_show_rssi
   45B8                     909 00103$:
   45B8 22            [24]  910 	ret
                            911 ;------------------------------------------------------------
                            912 ;Allocation info for local variables in function 'flight_time_estimate'
                            913 ;------------------------------------------------------------
                            914 ;	radio/tdm.c:188: static uint16_t flight_time_estimate(__pdata uint8_t packet_len)
                            915 ;	-----------------------------------------
                            916 ;	 function flight_time_estimate
                            917 ;	-----------------------------------------
   45B9                     918 _flight_time_estimate:
   45B9 AF 82         [24]  919 	mov	r7,dpl
                            920 ;	radio/tdm.c:190: return packet_latency + (packet_len * ticks_per_byte);
   45BB 7E 00         [12]  921 	mov	r6,#0x00
   45BD 78 C0         [12]  922 	mov	r0,#_ticks_per_byte
   45BF 90 05 CB      [24]  923 	mov	dptr,#__mulint_PARM_2
   45C2 E2            [24]  924 	movx	a,@r0
   45C3 F0            [24]  925 	movx	@dptr,a
   45C4 08            [12]  926 	inc	r0
   45C5 E2            [24]  927 	movx	a,@r0
   45C6 A3            [24]  928 	inc	dptr
   45C7 F0            [24]  929 	movx	@dptr,a
   45C8 8F 82         [24]  930 	mov	dpl,r7
   45CA 8E 83         [24]  931 	mov	dph,r6
   45CC 12 5D C7      [24]  932 	lcall	__mulint
   45CF AE 82         [24]  933 	mov	r6,dpl
   45D1 AF 83         [24]  934 	mov	r7,dph
   45D3 78 BE         [12]  935 	mov	r0,#_packet_latency
   45D5 E2            [24]  936 	movx	a,@r0
   45D6 2E            [12]  937 	add	a,r6
   45D7 FE            [12]  938 	mov	r6,a
   45D8 08            [12]  939 	inc	r0
   45D9 E2            [24]  940 	movx	a,@r0
   45DA 3F            [12]  941 	addc	a,r7
   45DB 8E 82         [24]  942 	mov	dpl,r6
   45DD F5 83         [12]  943 	mov	dph,a
   45DF 22            [24]  944 	ret
                            945 ;------------------------------------------------------------
                            946 ;Allocation info for local variables in function 'sync_tx_windows'
                            947 ;------------------------------------------------------------
                            948 ;old_state                 Allocated with name '_sync_tx_windows_old_state_1_155'
                            949 ;------------------------------------------------------------
                            950 ;	radio/tdm.c:204: sync_tx_windows(__pdata uint8_t packet_length)
                            951 ;	-----------------------------------------
                            952 ;	 function sync_tx_windows
                            953 ;	-----------------------------------------
   45E0                     954 _sync_tx_windows:
   45E0 AF 82         [24]  955 	mov	r7,dpl
                            956 ;	radio/tdm.c:206: __data enum tdm_state old_state = tdm_state;
   45E2 78 B6         [12]  957 	mov	r0,#_tdm_state
   45E4 E2            [24]  958 	movx	a,@r0
   45E5 F5 61         [12]  959 	mov	_sync_tx_windows_old_state_1_155,a
                            960 ;	radio/tdm.c:207: __pdata uint16_t old_remaining = tdm_state_remaining;
   45E7 78 B7         [12]  961 	mov	r0,#_tdm_state_remaining
   45E9 E2            [24]  962 	movx	a,@r0
   45EA FC            [12]  963 	mov	r4,a
   45EB 08            [12]  964 	inc	r0
   45EC E2            [24]  965 	movx	a,@r0
   45ED FD            [12]  966 	mov	r5,a
                            967 ;	radio/tdm.c:209: if (trailer.bonus) {
   45EE 78 D1         [12]  968 	mov	r0,#(_trailer + 0x0001)
   45F0 E2            [24]  969 	movx	a,@r0
   45F1 30 E6 46      [24]  970 	jnb	acc.6,00109$
                            971 ;	radio/tdm.c:212: if (old_state == TDM_SILENCE1) {
   45F4 74 01         [12]  972 	mov	a,#0x01
   45F6 B5 61 10      [24]  973 	cjne	a,_sync_tx_windows_old_state_1_155,00106$
                            974 ;	radio/tdm.c:218: tdm_state_remaining = silence_period;
   45F9 78 BC         [12]  975 	mov	r0,#_silence_period
   45FB E2            [24]  976 	movx	a,@r0
   45FC FA            [12]  977 	mov	r2,a
   45FD 08            [12]  978 	inc	r0
   45FE E2            [24]  979 	movx	a,@r0
   45FF FB            [12]  980 	mov	r3,a
   4600 78 B7         [12]  981 	mov	r0,#_tdm_state_remaining
   4602 EA            [12]  982 	mov	a,r2
   4603 F2            [24]  983 	movx	@r0,a
   4604 08            [12]  984 	inc	r0
   4605 EB            [12]  985 	mov	a,r3
   4606 F2            [24]  986 	movx	@r0,a
   4607 80 46         [24]  987 	sjmp	00110$
   4609                     988 00106$:
                            989 ;	radio/tdm.c:219: } else if (old_state == TDM_RECEIVE || old_state == TDM_SILENCE2) {
   4609 74 02         [12]  990 	mov	a,#0x02
   460B B5 61 02      [24]  991 	cjne	a,_sync_tx_windows_old_state_1_155,00151$
   460E 80 05         [24]  992 	sjmp	00101$
   4610                     993 00151$:
   4610 74 03         [12]  994 	mov	a,#0x03
   4612 B5 61 0F      [24]  995 	cjne	a,_sync_tx_windows_old_state_1_155,00102$
   4615                     996 00101$:
                            997 ;	radio/tdm.c:224: tdm_state = TDM_SILENCE2;
   4615 78 B6         [12]  998 	mov	r0,#_tdm_state
   4617 74 03         [12]  999 	mov	a,#0x03
   4619 F2            [24] 1000 	movx	@r0,a
                           1001 ;	radio/tdm.c:225: tdm_state_remaining = 1;
   461A 78 B7         [12] 1002 	mov	r0,#_tdm_state_remaining
   461C 74 01         [12] 1003 	mov	a,#0x01
   461E F2            [24] 1004 	movx	@r0,a
   461F 08            [12] 1005 	inc	r0
   4620 E4            [12] 1006 	clr	a
   4621 F2            [24] 1007 	movx	@r0,a
   4622 80 2B         [24] 1008 	sjmp	00110$
   4624                    1009 00102$:
                           1010 ;	radio/tdm.c:227: tdm_state = TDM_TRANSMIT;
   4624 78 B6         [12] 1011 	mov	r0,#_tdm_state
   4626 E4            [12] 1012 	clr	a
   4627 F2            [24] 1013 	movx	@r0,a
                           1014 ;	radio/tdm.c:228: tdm_state_remaining = trailer.window;
   4628 78 D0         [12] 1015 	mov	r0,#_trailer
   462A E2            [24] 1016 	movx	a,@r0
   462B FA            [12] 1017 	mov	r2,a
   462C 08            [12] 1018 	inc	r0
   462D E2            [24] 1019 	movx	a,@r0
   462E 54 1F         [12] 1020 	anl	a,#0x1F
   4630 FB            [12] 1021 	mov	r3,a
   4631 78 B7         [12] 1022 	mov	r0,#_tdm_state_remaining
   4633 EA            [12] 1023 	mov	a,r2
   4634 F2            [24] 1024 	movx	@r0,a
   4635 08            [12] 1025 	inc	r0
   4636 EB            [12] 1026 	mov	a,r3
   4637 F2            [24] 1027 	movx	@r0,a
   4638 80 15         [24] 1028 	sjmp	00110$
   463A                    1029 00109$:
                           1030 ;	radio/tdm.c:233: tdm_state = TDM_RECEIVE;
   463A 78 B6         [12] 1031 	mov	r0,#_tdm_state
   463C 74 02         [12] 1032 	mov	a,#0x02
   463E F2            [24] 1033 	movx	@r0,a
                           1034 ;	radio/tdm.c:234: tdm_state_remaining = trailer.window;
   463F 78 D0         [12] 1035 	mov	r0,#_trailer
   4641 E2            [24] 1036 	movx	a,@r0
   4642 FA            [12] 1037 	mov	r2,a
   4643 08            [12] 1038 	inc	r0
   4644 E2            [24] 1039 	movx	a,@r0
   4645 54 1F         [12] 1040 	anl	a,#0x1F
   4647 FB            [12] 1041 	mov	r3,a
   4648 78 B7         [12] 1042 	mov	r0,#_tdm_state_remaining
   464A EA            [12] 1043 	mov	a,r2
   464B F2            [24] 1044 	movx	@r0,a
   464C 08            [12] 1045 	inc	r0
   464D EB            [12] 1046 	mov	a,r3
   464E F2            [24] 1047 	movx	@r0,a
   464F                    1048 00110$:
                           1049 ;	radio/tdm.c:239: bonus_transmit = (tdm_state == TDM_RECEIVE && packet_length==0);
   464F 78 B6         [12] 1050 	mov	r0,#_tdm_state
   4651 E2            [24] 1051 	movx	a,@r0
   4652 B4 02 08      [24] 1052 	cjne	a,#0x02,00121$
   4655 EF            [12] 1053 	mov	a,r7
   4656 B4 01 00      [24] 1054 	cjne	a,#0x01,00156$
   4659                    1055 00156$:
   4659 92 2E         [24] 1056 	mov	_sync_tx_windows_sloc0_1_0,c
   465B 40 04         [24] 1057 	jc	00122$
   465D                    1058 00121$:
   465D C2 2E         [12] 1059 	clr	_sync_tx_windows_sloc0_1_0
   465F 80 02         [24] 1060 	sjmp	00123$
   4661                    1061 00122$:
   4661 D2 2E         [12] 1062 	setb	_sync_tx_windows_sloc0_1_0
   4663                    1063 00123$:
   4663 A2 2E         [12] 1064 	mov	c,_sync_tx_windows_sloc0_1_0
   4665 92 27         [24] 1065 	mov	_bonus_transmit,c
                           1066 ;	radio/tdm.c:242: if (tdm_state != TDM_TRANSMIT) {
   4667 78 B6         [12] 1067 	mov	r0,#_tdm_state
   4669 E2            [24] 1068 	movx	a,@r0
   466A 60 02         [24] 1069 	jz	00112$
                           1070 ;	radio/tdm.c:243: transmit_yield = 0;
   466C C2 28         [12] 1071 	clr	_transmit_yield
   466E                    1072 00112$:
                           1073 ;	radio/tdm.c:246: if (at_testmode & AT_TEST_TDM) {
   466E 78 13         [12] 1074 	mov	r0,#_at_testmode
   4670 E2            [24] 1075 	movx	a,@r0
   4671 54 02         [12] 1076 	anl	a,#0x02
   4673 70 01         [24] 1077 	jnz	00159$
   4675 22            [24] 1078 	ret
   4676                    1079 00159$:
                           1080 ;	radio/tdm.c:248: delta = old_remaining - tdm_state_remaining;
   4676 78 B7         [12] 1081 	mov	r0,#_tdm_state_remaining
   4678 79 E3         [12] 1082 	mov	r1,#_sync_tx_windows_delta_2_162
   467A D3            [12] 1083 	setb	c
   467B E2            [24] 1084 	movx	a,@r0
   467C 9C            [12] 1085 	subb	a,r4
   467D F4            [12] 1086 	cpl	a
   467E B3            [12] 1087 	cpl	c
   467F F3            [24] 1088 	movx	@r1,a
   4680 B3            [12] 1089 	cpl	c
   4681 08            [12] 1090 	inc	r0
   4682 E2            [24] 1091 	movx	a,@r0
   4683 9D            [12] 1092 	subb	a,r5
   4684 F4            [12] 1093 	cpl	a
   4685 09            [12] 1094 	inc	r1
   4686 F3            [24] 1095 	movx	@r1,a
                           1096 ;	radio/tdm.c:249: if (old_state != tdm_state ||
   4687 78 B6         [12] 1097 	mov	r0,#_tdm_state
   4689 E2            [24] 1098 	movx	a,@r0
   468A B5 61 6E      [24] 1099 	cjne	a,_sync_tx_windows_old_state_1_155,00113$
                           1100 ;	radio/tdm.c:250: delta > (int16_t)packet_latency/2 ||
   468D C0 07         [24] 1101 	push	ar7
   468F 78 BE         [12] 1102 	mov	r0,#_packet_latency
   4691 E2            [24] 1103 	movx	a,@r0
   4692 FA            [12] 1104 	mov	r2,a
   4693 08            [12] 1105 	inc	r0
   4694 E2            [24] 1106 	movx	a,@r0
   4695 FB            [12] 1107 	mov	r3,a
   4696 90 05 E8      [24] 1108 	mov	dptr,#__divsint_PARM_2
   4699 74 02         [12] 1109 	mov	a,#0x02
   469B F0            [24] 1110 	movx	@dptr,a
   469C E4            [12] 1111 	clr	a
   469D A3            [24] 1112 	inc	dptr
   469E F0            [24] 1113 	movx	@dptr,a
   469F 8A 82         [24] 1114 	mov	dpl,r2
   46A1 8B 83         [24] 1115 	mov	dph,r3
   46A3 C0 03         [24] 1116 	push	ar3
   46A5 C0 02         [24] 1117 	push	ar2
   46A7 12 60 D3      [24] 1118 	lcall	__divsint
   46AA AE 82         [24] 1119 	mov	r6,dpl
   46AC AF 83         [24] 1120 	mov	r7,dph
   46AE D0 02         [24] 1121 	pop	ar2
   46B0 D0 03         [24] 1122 	pop	ar3
   46B2 78 E3         [12] 1123 	mov	r0,#_sync_tx_windows_delta_2_162
   46B4 C3            [12] 1124 	clr	c
   46B5 E2            [24] 1125 	movx	a,@r0
   46B6 F5 F0         [12] 1126 	mov	b,a
   46B8 EE            [12] 1127 	mov	a,r6
   46B9 95 F0         [12] 1128 	subb	a,b
   46BB 08            [12] 1129 	inc	r0
   46BC E2            [24] 1130 	movx	a,@r0
   46BD F5 F0         [12] 1131 	mov	b,a
   46BF EF            [12] 1132 	mov	a,r7
   46C0 64 80         [12] 1133 	xrl	a,#0x80
   46C2 63 F0 80      [24] 1134 	xrl	b,#0x80
   46C5 95 F0         [12] 1135 	subb	a,b
   46C7 D0 07         [24] 1136 	pop	ar7
                           1137 ;	radio/tdm.c:251: delta < -(int16_t)packet_latency/2) {
   46C9 40 30         [24] 1138 	jc	00113$
   46CB E4            [12] 1139 	clr	a
   46CC 9A            [12] 1140 	subb	a,r2
   46CD FA            [12] 1141 	mov	r2,a
   46CE E4            [12] 1142 	clr	a
   46CF 9B            [12] 1143 	subb	a,r3
   46D0 FB            [12] 1144 	mov	r3,a
   46D1 90 05 E8      [24] 1145 	mov	dptr,#__divsint_PARM_2
   46D4 74 02         [12] 1146 	mov	a,#0x02
   46D6 F0            [24] 1147 	movx	@dptr,a
   46D7 E4            [12] 1148 	clr	a
   46D8 A3            [24] 1149 	inc	dptr
   46D9 F0            [24] 1150 	movx	@dptr,a
   46DA 8A 82         [24] 1151 	mov	dpl,r2
   46DC 8B 83         [24] 1152 	mov	dph,r3
   46DE C0 07         [24] 1153 	push	ar7
   46E0 12 60 D3      [24] 1154 	lcall	__divsint
   46E3 AB 82         [24] 1155 	mov	r3,dpl
   46E5 AE 83         [24] 1156 	mov	r6,dph
   46E7 D0 07         [24] 1157 	pop	ar7
   46E9 78 E3         [12] 1158 	mov	r0,#_sync_tx_windows_delta_2_162
   46EB C3            [12] 1159 	clr	c
   46EC E2            [24] 1160 	movx	a,@r0
   46ED 9B            [12] 1161 	subb	a,r3
   46EE 08            [12] 1162 	inc	r0
   46EF E2            [24] 1163 	movx	a,@r0
   46F0 64 80         [12] 1164 	xrl	a,#0x80
   46F2 8E F0         [24] 1165 	mov	b,r6
   46F4 63 F0 80      [24] 1166 	xrl	b,#0x80
   46F7 95 F0         [12] 1167 	subb	a,b
   46F9 50 4B         [24] 1168 	jnc	00119$
   46FB                    1169 00113$:
                           1170 ;	radio/tdm.c:252: printf("TDM: %u/%u len=%u ",
   46FB 7E 00         [12] 1171 	mov	r6,#0x00
   46FD 78 B6         [12] 1172 	mov	r0,#_tdm_state
   46FF E2            [24] 1173 	movx	a,@r0
   4700 FA            [12] 1174 	mov	r2,a
   4701 7B 00         [12] 1175 	mov	r3,#0x00
   4703 AC 61         [24] 1176 	mov	r4,_sync_tx_windows_old_state_1_155
   4705 7D 00         [12] 1177 	mov	r5,#0x00
   4707 C0 07         [24] 1178 	push	ar7
   4709 C0 06         [24] 1179 	push	ar6
   470B C0 02         [24] 1180 	push	ar2
   470D C0 03         [24] 1181 	push	ar3
   470F C0 04         [24] 1182 	push	ar4
   4711 C0 05         [24] 1183 	push	ar5
   4713 74 48         [12] 1184 	mov	a,#__str_2
   4715 C0 E0         [24] 1185 	push	acc
   4717 74 CC         [12] 1186 	mov	a,#(__str_2 >> 8)
   4719 C0 E0         [24] 1187 	push	acc
   471B 74 80         [12] 1188 	mov	a,#0x80
   471D C0 E0         [24] 1189 	push	acc
   471F 12 2D B6      [24] 1190 	lcall	_printfl
   4722 E5 81         [12] 1191 	mov	a,sp
   4724 24 F7         [12] 1192 	add	a,#0xf7
   4726 F5 81         [12] 1193 	mov	sp,a
                           1194 ;	radio/tdm.c:256: printf(" delta: %d\n",
   4728 78 E3         [12] 1195 	mov	r0,#_sync_tx_windows_delta_2_162
   472A E2            [24] 1196 	movx	a,@r0
   472B C0 E0         [24] 1197 	push	acc
   472D 08            [12] 1198 	inc	r0
   472E E2            [24] 1199 	movx	a,@r0
   472F C0 E0         [24] 1200 	push	acc
   4731 74 5B         [12] 1201 	mov	a,#__str_3
   4733 C0 E0         [24] 1202 	push	acc
   4735 74 CC         [12] 1203 	mov	a,#(__str_3 >> 8)
   4737 C0 E0         [24] 1204 	push	acc
   4739 74 80         [12] 1205 	mov	a,#0x80
   473B C0 E0         [24] 1206 	push	acc
   473D 12 2D B6      [24] 1207 	lcall	_printfl
   4740 E5 81         [12] 1208 	mov	a,sp
   4742 24 FB         [12] 1209 	add	a,#0xfb
   4744 F5 81         [12] 1210 	mov	sp,a
   4746                    1211 00119$:
   4746 22            [24] 1212 	ret
                           1213 ;------------------------------------------------------------
                           1214 ;Allocation info for local variables in function 'tdm_state_update'
                           1215 ;------------------------------------------------------------
                           1216 ;sloc0                     Allocated with name '_tdm_state_update_sloc0_1_0'
                           1217 ;sloc1                     Allocated with name '_tdm_state_update_sloc1_1_0'
                           1218 ;sloc2                     Allocated with name '_tdm_state_update_sloc2_1_0'
                           1219 ;------------------------------------------------------------
                           1220 ;	radio/tdm.c:265: tdm_state_update(__pdata uint16_t tdelta)
                           1221 ;	-----------------------------------------
                           1222 ;	 function tdm_state_update
                           1223 ;	-----------------------------------------
   4747                    1224 _tdm_state_update:
   4747 AE 82         [24] 1225 	mov	r6,dpl
   4749 AF 83         [24] 1226 	mov	r7,dph
                           1227 ;	radio/tdm.c:269: if (tdelta > transmit_wait) {
   474B 78 C2         [12] 1228 	mov	r0,#_transmit_wait
   474D C3            [12] 1229 	clr	c
   474E E2            [24] 1230 	movx	a,@r0
   474F 9E            [12] 1231 	subb	a,r6
   4750 08            [12] 1232 	inc	r0
   4751 E2            [24] 1233 	movx	a,@r0
   4752 9F            [12] 1234 	subb	a,r7
   4753 50 08         [24] 1235 	jnc	00102$
                           1236 ;	radio/tdm.c:270: transmit_wait = 0;
   4755 78 C2         [12] 1237 	mov	r0,#_transmit_wait
   4757 E4            [12] 1238 	clr	a
   4758 F2            [24] 1239 	movx	@r0,a
   4759 08            [12] 1240 	inc	r0
   475A F2            [24] 1241 	movx	@r0,a
   475B 80 0A         [24] 1242 	sjmp	00116$
   475D                    1243 00102$:
                           1244 ;	radio/tdm.c:272: transmit_wait -= tdelta;
   475D 78 C2         [12] 1245 	mov	r0,#_transmit_wait
   475F E2            [24] 1246 	movx	a,@r0
   4760 C3            [12] 1247 	clr	c
   4761 9E            [12] 1248 	subb	a,r6
   4762 F2            [24] 1249 	movx	@r0,a
   4763 08            [12] 1250 	inc	r0
   4764 E2            [24] 1251 	movx	a,@r0
   4765 9F            [12] 1252 	subb	a,r7
   4766 F2            [24] 1253 	movx	@r0,a
                           1254 ;	radio/tdm.c:276: while (tdelta >= tdm_state_remaining) {
   4767                    1255 00116$:
   4767 78 B7         [12] 1256 	mov	r0,#_tdm_state_remaining
   4769 C3            [12] 1257 	clr	c
   476A E2            [24] 1258 	movx	a,@r0
   476B F5 F0         [12] 1259 	mov	b,a
   476D EE            [12] 1260 	mov	a,r6
   476E 95 F0         [12] 1261 	subb	a,b
   4770 08            [12] 1262 	inc	r0
   4771 E2            [24] 1263 	movx	a,@r0
   4772 F5 F0         [12] 1264 	mov	b,a
   4774 EF            [12] 1265 	mov	a,r7
   4775 95 F0         [12] 1266 	subb	a,b
   4777 50 03         [24] 1267 	jnc	00146$
   4779 02 49 AE      [24] 1268 	ljmp	00118$
   477C                    1269 00146$:
                           1270 ;	radio/tdm.c:278: tdm_state = (tdm_state+1) % 4;
   477C 78 B6         [12] 1271 	mov	r0,#_tdm_state
   477E E2            [24] 1272 	movx	a,@r0
   477F FC            [12] 1273 	mov	r4,a
   4780 7D 00         [12] 1274 	mov	r5,#0x00
   4782 0C            [12] 1275 	inc	r4
   4783 BC 00 01      [24] 1276 	cjne	r4,#0x00,00147$
   4786 0D            [12] 1277 	inc	r5
   4787                    1278 00147$:
   4787 90 05 D3      [24] 1279 	mov	dptr,#__modsint_PARM_2
   478A 74 04         [12] 1280 	mov	a,#0x04
   478C F0            [24] 1281 	movx	@dptr,a
   478D E4            [12] 1282 	clr	a
   478E A3            [24] 1283 	inc	dptr
   478F F0            [24] 1284 	movx	@dptr,a
   4790 8C 82         [24] 1285 	mov	dpl,r4
   4792 8D 83         [24] 1286 	mov	dph,r5
   4794 C0 07         [24] 1287 	push	ar7
   4796 C0 06         [24] 1288 	push	ar6
   4798 12 5E 7B      [24] 1289 	lcall	__modsint
   479B AC 82         [24] 1290 	mov	r4,dpl
   479D AD 83         [24] 1291 	mov	r5,dph
   479F D0 06         [24] 1292 	pop	ar6
   47A1 D0 07         [24] 1293 	pop	ar7
   47A3 78 B6         [12] 1294 	mov	r0,#_tdm_state
   47A5 EC            [12] 1295 	mov	a,r4
   47A6 F2            [24] 1296 	movx	@r0,a
                           1297 ;	radio/tdm.c:281: tdelta -= tdm_state_remaining;
   47A7 78 B7         [12] 1298 	mov	r0,#_tdm_state_remaining
   47A9 D3            [12] 1299 	setb	c
   47AA E2            [24] 1300 	movx	a,@r0
   47AB 9E            [12] 1301 	subb	a,r6
   47AC F4            [12] 1302 	cpl	a
   47AD B3            [12] 1303 	cpl	c
   47AE FE            [12] 1304 	mov	r6,a
   47AF B3            [12] 1305 	cpl	c
   47B0 08            [12] 1306 	inc	r0
   47B1 E2            [24] 1307 	movx	a,@r0
   47B2 9F            [12] 1308 	subb	a,r7
   47B3 F4            [12] 1309 	cpl	a
   47B4 FF            [12] 1310 	mov	r7,a
                           1311 ;	radio/tdm.c:283: if (tdm_state == TDM_TRANSMIT || tdm_state == TDM_RECEIVE) {
   47B5 78 B6         [12] 1312 	mov	r0,#_tdm_state
   47B7 E2            [24] 1313 	movx	a,@r0
   47B8 60 06         [24] 1314 	jz	00104$
   47BA 78 B6         [12] 1315 	mov	r0,#_tdm_state
   47BC E2            [24] 1316 	movx	a,@r0
   47BD B4 02 10      [24] 1317 	cjne	a,#0x02,00105$
   47C0                    1318 00104$:
                           1319 ;	radio/tdm.c:284: tdm_state_remaining = tx_window_width;
   47C0 78 B9         [12] 1320 	mov	r0,#_tx_window_width
   47C2 E2            [24] 1321 	movx	a,@r0
   47C3 FC            [12] 1322 	mov	r4,a
   47C4 08            [12] 1323 	inc	r0
   47C5 E2            [24] 1324 	movx	a,@r0
   47C6 FD            [12] 1325 	mov	r5,a
   47C7 78 B7         [12] 1326 	mov	r0,#_tdm_state_remaining
   47C9 EC            [12] 1327 	mov	a,r4
   47CA F2            [24] 1328 	movx	@r0,a
   47CB 08            [12] 1329 	inc	r0
   47CC ED            [12] 1330 	mov	a,r5
   47CD F2            [24] 1331 	movx	@r0,a
   47CE 80 0E         [24] 1332 	sjmp	00106$
   47D0                    1333 00105$:
                           1334 ;	radio/tdm.c:286: tdm_state_remaining = silence_period;
   47D0 78 BC         [12] 1335 	mov	r0,#_silence_period
   47D2 E2            [24] 1336 	movx	a,@r0
   47D3 FC            [12] 1337 	mov	r4,a
   47D4 08            [12] 1338 	inc	r0
   47D5 E2            [24] 1339 	movx	a,@r0
   47D6 FD            [12] 1340 	mov	r5,a
   47D7 78 B7         [12] 1341 	mov	r0,#_tdm_state_remaining
   47D9 EC            [12] 1342 	mov	a,r4
   47DA F2            [24] 1343 	movx	@r0,a
   47DB 08            [12] 1344 	inc	r0
   47DC ED            [12] 1345 	mov	a,r5
   47DD F2            [24] 1346 	movx	@r0,a
   47DE                    1347 00106$:
                           1348 ;	radio/tdm.c:292: if (tdm_state == TDM_TRANSMIT || tdm_state == TDM_SILENCE1) {
   47DE 78 B6         [12] 1349 	mov	r0,#_tdm_state
   47E0 E2            [24] 1350 	movx	a,@r0
   47E1 60 06         [24] 1351 	jz	00110$
   47E3 78 B6         [12] 1352 	mov	r0,#_tdm_state
   47E5 E2            [24] 1353 	movx	a,@r0
   47E6 B4 01 26      [24] 1354 	cjne	a,#0x01,00111$
   47E9                    1355 00110$:
                           1356 ;	radio/tdm.c:293: fhop_window_change();
   47E9 C0 07         [24] 1357 	push	ar7
   47EB C0 06         [24] 1358 	push	ar6
   47ED 12 0C 27      [24] 1359 	lcall	_fhop_window_change
                           1360 ;	radio/tdm.c:294: radio_receiver_on();
   47F0 12 34 40      [24] 1361 	lcall	_radio_receiver_on
   47F3 D0 06         [24] 1362 	pop	ar6
   47F5 D0 07         [24] 1363 	pop	ar7
                           1364 ;	radio/tdm.c:296: if (num_fh_channels > 1) {
   47F7 78 18         [12] 1365 	mov	r0,#_num_fh_channels
   47F9 C3            [12] 1366 	clr	c
   47FA E2            [24] 1367 	movx	a,@r0
   47FB F5 F0         [12] 1368 	mov	b,a
   47FD 74 01         [12] 1369 	mov	a,#0x01
   47FF 95 F0         [12] 1370 	subb	a,b
   4801 50 0C         [24] 1371 	jnc	00111$
                           1372 ;	radio/tdm.c:298: lbt_listen_time = 0;
   4803 78 C9         [12] 1373 	mov	r0,#_lbt_listen_time
   4805 E4            [12] 1374 	clr	a
   4806 F2            [24] 1375 	movx	@r0,a
   4807 08            [12] 1376 	inc	r0
   4808 F2            [24] 1377 	movx	@r0,a
                           1378 ;	radio/tdm.c:299: lbt_rand = 0;
   4809 78 CD         [12] 1379 	mov	r0,#_lbt_rand
   480B E4            [12] 1380 	clr	a
   480C F2            [24] 1381 	movx	@r0,a
   480D 08            [12] 1382 	inc	r0
   480E F2            [24] 1383 	movx	@r0,a
   480F                    1384 00111$:
                           1385 ;	radio/tdm.c:303: if (tdm_state == TDM_TRANSMIT && (duty_cycle - duty_cycle_offset) != 100) {
   480F 78 B6         [12] 1386 	mov	r0,#_tdm_state
   4811 E2            [24] 1387 	movx	a,@r0
   4812 60 03         [24] 1388 	jz	00155$
   4814 02 49 A1      [24] 1389 	ljmp	00114$
   4817                    1390 00155$:
   4817 C0 06         [24] 1391 	push	ar6
   4819 C0 07         [24] 1392 	push	ar7
   481B 78 C4         [12] 1393 	mov	r0,#_duty_cycle
   481D E2            [24] 1394 	movx	a,@r0
   481E FC            [12] 1395 	mov	r4,a
   481F 7D 00         [12] 1396 	mov	r5,#0x00
   4821 78 C5         [12] 1397 	mov	r0,#_duty_cycle_offset
   4823 E2            [24] 1398 	movx	a,@r0
   4824 F5 62         [12] 1399 	mov	_tdm_state_update_sloc0_1_0,a
   4826 75 63 00      [24] 1400 	mov	(_tdm_state_update_sloc0_1_0 + 1),#0x00
   4829 EC            [12] 1401 	mov	a,r4
   482A C3            [12] 1402 	clr	c
   482B 95 62         [12] 1403 	subb	a,_tdm_state_update_sloc0_1_0
   482D FE            [12] 1404 	mov	r6,a
   482E ED            [12] 1405 	mov	a,r5
   482F 95 63         [12] 1406 	subb	a,(_tdm_state_update_sloc0_1_0 + 1)
   4831 FF            [12] 1407 	mov	r7,a
   4832 BE 64 0A      [24] 1408 	cjne	r6,#0x64,00156$
   4835 BF 00 07      [24] 1409 	cjne	r7,#0x00,00156$
   4838 D0 07         [24] 1410 	pop	ar7
   483A D0 06         [24] 1411 	pop	ar6
   483C 02 49 A1      [24] 1412 	ljmp	00114$
   483F                    1413 00156$:
   483F D0 07         [24] 1414 	pop	ar7
   4841 D0 06         [24] 1415 	pop	ar6
                           1416 ;	radio/tdm.c:305: average_duty_cycle = (0.95*average_duty_cycle) + (0.05*(100.0*transmitted_ticks)/(2*(silence_period+tx_window_width)));
   4843 C0 06         [24] 1417 	push	ar6
   4845 C0 07         [24] 1418 	push	ar7
   4847 C0 07         [24] 1419 	push	ar7
   4849 C0 06         [24] 1420 	push	ar6
   484B C0 05         [24] 1421 	push	ar5
   484D C0 04         [24] 1422 	push	ar4
   484F C0 53         [24] 1423 	push	_average_duty_cycle
   4851 C0 54         [24] 1424 	push	(_average_duty_cycle + 1)
   4853 C0 55         [24] 1425 	push	(_average_duty_cycle + 2)
   4855 C0 56         [24] 1426 	push	(_average_duty_cycle + 3)
   4857 90 33 33      [24] 1427 	mov	dptr,#0x3333
   485A 75 F0 73      [24] 1428 	mov	b,#0x73
   485D 74 3F         [12] 1429 	mov	a,#0x3F
   485F 12 5A 39      [24] 1430 	lcall	___fsmul
   4862 85 82 64      [24] 1431 	mov	_tdm_state_update_sloc1_1_0,dpl
   4865 85 83 65      [24] 1432 	mov	(_tdm_state_update_sloc1_1_0 + 1),dph
   4868 85 F0 66      [24] 1433 	mov	(_tdm_state_update_sloc1_1_0 + 2),b
   486B F5 67         [12] 1434 	mov	(_tdm_state_update_sloc1_1_0 + 3),a
   486D E5 81         [12] 1435 	mov	a,sp
   486F 24 FC         [12] 1436 	add	a,#0xfc
   4871 F5 81         [12] 1437 	mov	sp,a
   4873 D0 04         [24] 1438 	pop	ar4
   4875 D0 05         [24] 1439 	pop	ar5
   4877 D0 06         [24] 1440 	pop	ar6
   4879 D0 07         [24] 1441 	pop	ar7
   487B 78 C6         [12] 1442 	mov	r0,#_transmitted_ticks
   487D E2            [24] 1443 	movx	a,@r0
   487E F5 82         [12] 1444 	mov	dpl,a
   4880 08            [12] 1445 	inc	r0
   4881 E2            [24] 1446 	movx	a,@r0
   4882 F5 83         [12] 1447 	mov	dph,a
   4884 C0 05         [24] 1448 	push	ar5
   4886 C0 04         [24] 1449 	push	ar4
   4888 12 62 40      [24] 1450 	lcall	___uint2fs
   488B AA 82         [24] 1451 	mov	r2,dpl
   488D AB 83         [24] 1452 	mov	r3,dph
   488F AE F0         [24] 1453 	mov	r6,b
   4891 FF            [12] 1454 	mov	r7,a
   4892 D0 04         [24] 1455 	pop	ar4
   4894 D0 05         [24] 1456 	pop	ar5
   4896 C0 07         [24] 1457 	push	ar7
   4898 C0 06         [24] 1458 	push	ar6
   489A C0 05         [24] 1459 	push	ar5
   489C C0 04         [24] 1460 	push	ar4
   489E C0 02         [24] 1461 	push	ar2
   48A0 C0 03         [24] 1462 	push	ar3
   48A2 C0 06         [24] 1463 	push	ar6
   48A4 C0 07         [24] 1464 	push	ar7
   48A6 90 00 00      [24] 1465 	mov	dptr,#0x0000
   48A9 75 F0 A0      [24] 1466 	mov	b,#0xA0
   48AC 74 40         [12] 1467 	mov	a,#0x40
   48AE 12 5A 39      [24] 1468 	lcall	___fsmul
   48B1 85 82 68      [24] 1469 	mov	_tdm_state_update_sloc2_1_0,dpl
   48B4 85 83 69      [24] 1470 	mov	(_tdm_state_update_sloc2_1_0 + 1),dph
   48B7 85 F0 6A      [24] 1471 	mov	(_tdm_state_update_sloc2_1_0 + 2),b
   48BA F5 6B         [12] 1472 	mov	(_tdm_state_update_sloc2_1_0 + 3),a
   48BC E5 81         [12] 1473 	mov	a,sp
   48BE 24 FC         [12] 1474 	add	a,#0xfc
   48C0 F5 81         [12] 1475 	mov	sp,a
   48C2 D0 04         [24] 1476 	pop	ar4
   48C4 D0 05         [24] 1477 	pop	ar5
   48C6 D0 06         [24] 1478 	pop	ar6
   48C8 D0 07         [24] 1479 	pop	ar7
   48CA 78 BC         [12] 1480 	mov	r0,#_silence_period
   48CC 79 B9         [12] 1481 	mov	r1,#_tx_window_width
   48CE E3            [24] 1482 	movx	a,@r1
   48CF C5 F0         [12] 1483 	xch	a,b
   48D1 E2            [24] 1484 	movx	a,@r0
   48D2 25 F0         [12] 1485 	add	a,b
   48D4 FE            [12] 1486 	mov	r6,a
   48D5 09            [12] 1487 	inc	r1
   48D6 E3            [24] 1488 	movx	a,@r1
   48D7 C5 F0         [12] 1489 	xch	a,b
   48D9 08            [12] 1490 	inc	r0
   48DA E2            [24] 1491 	movx	a,@r0
   48DB 35 F0         [12] 1492 	addc	a,b
   48DD CE            [12] 1493 	xch	a,r6
   48DE 25 E0         [12] 1494 	add	a,acc
   48E0 CE            [12] 1495 	xch	a,r6
   48E1 33            [12] 1496 	rlc	a
   48E2 FF            [12] 1497 	mov	r7,a
   48E3 8E 82         [24] 1498 	mov	dpl,r6
   48E5 8F 83         [24] 1499 	mov	dph,r7
   48E7 C0 05         [24] 1500 	push	ar5
   48E9 C0 04         [24] 1501 	push	ar4
   48EB 12 62 40      [24] 1502 	lcall	___uint2fs
   48EE AA 82         [24] 1503 	mov	r2,dpl
   48F0 AB 83         [24] 1504 	mov	r3,dph
   48F2 AE F0         [24] 1505 	mov	r6,b
   48F4 FF            [12] 1506 	mov	r7,a
   48F5 C0 02         [24] 1507 	push	ar2
   48F7 C0 03         [24] 1508 	push	ar3
   48F9 C0 06         [24] 1509 	push	ar6
   48FB C0 07         [24] 1510 	push	ar7
   48FD 85 68 82      [24] 1511 	mov	dpl,_tdm_state_update_sloc2_1_0
   4900 85 69 83      [24] 1512 	mov	dph,(_tdm_state_update_sloc2_1_0 + 1)
   4903 85 6A F0      [24] 1513 	mov	b,(_tdm_state_update_sloc2_1_0 + 2)
   4906 E5 6B         [12] 1514 	mov	a,(_tdm_state_update_sloc2_1_0 + 3)
   4908 12 63 64      [24] 1515 	lcall	___fsdiv
   490B AA 82         [24] 1516 	mov	r2,dpl
   490D AB 83         [24] 1517 	mov	r3,dph
   490F AE F0         [24] 1518 	mov	r6,b
   4911 FF            [12] 1519 	mov	r7,a
   4912 E5 81         [12] 1520 	mov	a,sp
   4914 24 FC         [12] 1521 	add	a,#0xfc
   4916 F5 81         [12] 1522 	mov	sp,a
   4918 D0 04         [24] 1523 	pop	ar4
   491A D0 05         [24] 1524 	pop	ar5
   491C C0 07         [24] 1525 	push	ar7
   491E C0 06         [24] 1526 	push	ar6
   4920 C0 05         [24] 1527 	push	ar5
   4922 C0 04         [24] 1528 	push	ar4
   4924 C0 02         [24] 1529 	push	ar2
   4926 C0 03         [24] 1530 	push	ar3
   4928 C0 06         [24] 1531 	push	ar6
   492A C0 07         [24] 1532 	push	ar7
   492C 85 64 82      [24] 1533 	mov	dpl,_tdm_state_update_sloc1_1_0
   492F 85 65 83      [24] 1534 	mov	dph,(_tdm_state_update_sloc1_1_0 + 1)
   4932 85 66 F0      [24] 1535 	mov	b,(_tdm_state_update_sloc1_1_0 + 2)
   4935 E5 67         [12] 1536 	mov	a,(_tdm_state_update_sloc1_1_0 + 3)
   4937 12 61 44      [24] 1537 	lcall	___fsadd
   493A 85 82 53      [24] 1538 	mov	_average_duty_cycle,dpl
   493D 85 83 54      [24] 1539 	mov	(_average_duty_cycle + 1),dph
   4940 85 F0 55      [24] 1540 	mov	(_average_duty_cycle + 2),b
   4943 F5 56         [12] 1541 	mov	(_average_duty_cycle + 3),a
   4945 E5 81         [12] 1542 	mov	a,sp
   4947 24 FC         [12] 1543 	add	a,#0xfc
   4949 F5 81         [12] 1544 	mov	sp,a
   494B D0 04         [24] 1545 	pop	ar4
   494D D0 05         [24] 1546 	pop	ar5
   494F D0 06         [24] 1547 	pop	ar6
   4951 D0 07         [24] 1548 	pop	ar7
                           1549 ;	radio/tdm.c:306: transmitted_ticks = 0;
   4953 78 C6         [12] 1550 	mov	r0,#_transmitted_ticks
   4955 E4            [12] 1551 	clr	a
   4956 F2            [24] 1552 	movx	@r0,a
   4957 08            [12] 1553 	inc	r0
   4958 F2            [24] 1554 	movx	@r0,a
                           1555 ;	radio/tdm.c:307: duty_cycle_wait = (average_duty_cycle >= (duty_cycle - duty_cycle_offset));
   4959 EC            [12] 1556 	mov	a,r4
   495A C3            [12] 1557 	clr	c
   495B 95 62         [12] 1558 	subb	a,_tdm_state_update_sloc0_1_0
   495D FC            [12] 1559 	mov	r4,a
   495E ED            [12] 1560 	mov	a,r5
   495F 95 63         [12] 1561 	subb	a,(_tdm_state_update_sloc0_1_0 + 1)
   4961 FD            [12] 1562 	mov	r5,a
   4962 8C 82         [24] 1563 	mov	dpl,r4
   4964 8D 83         [24] 1564 	mov	dph,r5
   4966 12 61 FF      [24] 1565 	lcall	___sint2fs
   4969 AC 82         [24] 1566 	mov	r4,dpl
   496B AD 83         [24] 1567 	mov	r5,dph
   496D AE F0         [24] 1568 	mov	r6,b
   496F FF            [12] 1569 	mov	r7,a
   4970 C0 07         [24] 1570 	push	ar7
   4972 C0 06         [24] 1571 	push	ar6
   4974 C0 04         [24] 1572 	push	ar4
   4976 C0 05         [24] 1573 	push	ar5
   4978 C0 06         [24] 1574 	push	ar6
   497A C0 07         [24] 1575 	push	ar7
   497C 85 53 82      [24] 1576 	mov	dpl,_average_duty_cycle
   497F 85 54 83      [24] 1577 	mov	dph,(_average_duty_cycle + 1)
   4982 85 55 F0      [24] 1578 	mov	b,(_average_duty_cycle + 2)
   4985 E5 56         [12] 1579 	mov	a,(_average_duty_cycle + 3)
   4987 12 5D 97      [24] 1580 	lcall	___fslt
   498A E5 81         [12] 1581 	mov	a,sp
   498C 24 FC         [12] 1582 	add	a,#0xfc
   498E F5 81         [12] 1583 	mov	sp,a
   4990 D0 06         [24] 1584 	pop	ar6
   4992 D0 07         [24] 1585 	pop	ar7
   4994 E5 82         [12] 1586 	mov	a,dpl
   4996 24 FF         [12] 1587 	add	a,#0xFF
   4998 92 2F         [24] 1588 	mov  _tdm_state_update_sloc3_1_0,c
   499A B3            [12] 1589 	cpl	c
   499B 92 2B         [24] 1590 	mov	_duty_cycle_wait,c
                           1591 ;	radio/tdm.c:320: tdm_state_remaining -= tdelta;
   499D D0 07         [24] 1592 	pop	ar7
   499F D0 06         [24] 1593 	pop	ar6
                           1594 ;	radio/tdm.c:307: duty_cycle_wait = (average_duty_cycle >= (duty_cycle - duty_cycle_offset));
   49A1                    1595 00114$:
                           1596 ;	radio/tdm.c:311: bonus_transmit = 0;
   49A1 C2 27         [12] 1597 	clr	_bonus_transmit
                           1598 ;	radio/tdm.c:314: transmit_yield = 0;
   49A3 C2 28         [12] 1599 	clr	_transmit_yield
                           1600 ;	radio/tdm.c:317: transmit_wait = 0;
   49A5 78 C2         [12] 1601 	mov	r0,#_transmit_wait
   49A7 E4            [12] 1602 	clr	a
   49A8 F2            [24] 1603 	movx	@r0,a
   49A9 08            [12] 1604 	inc	r0
   49AA F2            [24] 1605 	movx	@r0,a
   49AB 02 47 67      [24] 1606 	ljmp	00116$
   49AE                    1607 00118$:
                           1608 ;	radio/tdm.c:320: tdm_state_remaining -= tdelta;
   49AE 78 B7         [12] 1609 	mov	r0,#_tdm_state_remaining
   49B0 E2            [24] 1610 	movx	a,@r0
   49B1 C3            [12] 1611 	clr	c
   49B2 9E            [12] 1612 	subb	a,r6
   49B3 F2            [24] 1613 	movx	@r0,a
   49B4 08            [12] 1614 	inc	r0
   49B5 E2            [24] 1615 	movx	a,@r0
   49B6 9F            [12] 1616 	subb	a,r7
   49B7 F2            [24] 1617 	movx	@r0,a
   49B8 22            [24] 1618 	ret
                           1619 ;------------------------------------------------------------
                           1620 ;Allocation info for local variables in function 'tdm_change_phase'
                           1621 ;------------------------------------------------------------
                           1622 ;	radio/tdm.c:326: tdm_change_phase(void)
                           1623 ;	-----------------------------------------
                           1624 ;	 function tdm_change_phase
                           1625 ;	-----------------------------------------
   49B9                    1626 _tdm_change_phase:
                           1627 ;	radio/tdm.c:328: tdm_state = (tdm_state+2) % 4;
   49B9 78 B6         [12] 1628 	mov	r0,#_tdm_state
   49BB E2            [24] 1629 	movx	a,@r0
   49BC FE            [12] 1630 	mov	r6,a
   49BD 7F 00         [12] 1631 	mov	r7,#0x00
   49BF 74 02         [12] 1632 	mov	a,#0x02
   49C1 2E            [12] 1633 	add	a,r6
   49C2 FE            [12] 1634 	mov	r6,a
   49C3 E4            [12] 1635 	clr	a
   49C4 3F            [12] 1636 	addc	a,r7
   49C5 FF            [12] 1637 	mov	r7,a
   49C6 90 05 D3      [24] 1638 	mov	dptr,#__modsint_PARM_2
   49C9 74 04         [12] 1639 	mov	a,#0x04
   49CB F0            [24] 1640 	movx	@dptr,a
   49CC E4            [12] 1641 	clr	a
   49CD A3            [24] 1642 	inc	dptr
   49CE F0            [24] 1643 	movx	@dptr,a
   49CF 8E 82         [24] 1644 	mov	dpl,r6
   49D1 8F 83         [24] 1645 	mov	dph,r7
   49D3 12 5E 7B      [24] 1646 	lcall	__modsint
   49D6 AE 82         [24] 1647 	mov	r6,dpl
   49D8 78 B6         [12] 1648 	mov	r0,#_tdm_state
   49DA EE            [12] 1649 	mov	a,r6
   49DB F2            [24] 1650 	movx	@r0,a
   49DC 22            [24] 1651 	ret
                           1652 ;------------------------------------------------------------
                           1653 ;Allocation info for local variables in function 'temperature_update'
                           1654 ;------------------------------------------------------------
                           1655 ;diff                      Allocated to registers r6 r7 
                           1656 ;------------------------------------------------------------
                           1657 ;	radio/tdm.c:333: static void temperature_update(void)
                           1658 ;	-----------------------------------------
                           1659 ;	 function temperature_update
                           1660 ;	-----------------------------------------
   49DD                    1661 _temperature_update:
                           1662 ;	radio/tdm.c:336: if (radio_get_transmit_power() <= 20) {
   49DD 12 38 B2      [24] 1663 	lcall	_radio_get_transmit_power
   49E0 E5 82         [12] 1664 	mov	a,dpl
   49E2 FF            [12] 1665 	mov	r7,a
   49E3 24 EB         [12] 1666 	add	a,#0xff - 0x14
   49E5 40 05         [24] 1667 	jc	00102$
                           1668 ;	radio/tdm.c:337: duty_cycle_offset = 0;
   49E7 78 C5         [12] 1669 	mov	r0,#_duty_cycle_offset
   49E9 E4            [12] 1670 	clr	a
   49EA F2            [24] 1671 	movx	@r0,a
                           1672 ;	radio/tdm.c:338: return;
   49EB 22            [24] 1673 	ret
   49EC                    1674 00102$:
                           1675 ;	radio/tdm.c:341: diff = radio_temperature() - MAX_PA_TEMPERATURE;
   49EC 12 3C 6F      [24] 1676 	lcall	_radio_temperature
   49EF E5 82         [12] 1677 	mov	a,dpl
   49F1 85 83 F0      [24] 1678 	mov	b,dph
   49F4 24 9C         [12] 1679 	add	a,#0x9C
   49F6 FE            [12] 1680 	mov	r6,a
   49F7 E5 F0         [12] 1681 	mov	a,b
   49F9 34 FF         [12] 1682 	addc	a,#0xFF
   49FB FF            [12] 1683 	mov	r7,a
                           1684 ;	radio/tdm.c:342: if (diff <= 0 && duty_cycle_offset > 0) {
   49FC C3            [12] 1685 	clr	c
   49FD E4            [12] 1686 	clr	a
   49FE 9E            [12] 1687 	subb	a,r6
   49FF E4            [12] 1688 	clr	a
   4A00 64 80         [12] 1689 	xrl	a,#0x80
   4A02 8F F0         [24] 1690 	mov	b,r7
   4A04 63 F0 80      [24] 1691 	xrl	b,#0x80
   4A07 95 F0         [12] 1692 	subb	a,b
   4A09 E4            [12] 1693 	clr	a
   4A0A 33            [12] 1694 	rlc	a
   4A0B FD            [12] 1695 	mov	r5,a
   4A0C 70 0C         [24] 1696 	jnz	00112$
   4A0E 78 C5         [12] 1697 	mov	r0,#_duty_cycle_offset
   4A10 E2            [24] 1698 	movx	a,@r0
   4A11 60 07         [24] 1699 	jz	00112$
                           1700 ;	radio/tdm.c:344: duty_cycle_offset -= 1;
   4A13 78 C5         [12] 1701 	mov	r0,#_duty_cycle_offset
   4A15 E2            [24] 1702 	movx	a,@r0
   4A16 14            [12] 1703 	dec	a
   4A17 F2            [24] 1704 	movx	@r0,a
   4A18 80 39         [24] 1705 	sjmp	00113$
   4A1A                    1706 00112$:
                           1707 ;	radio/tdm.c:345: } else if (diff > 10) {
   4A1A C3            [12] 1708 	clr	c
   4A1B 74 0A         [12] 1709 	mov	a,#0x0A
   4A1D 9E            [12] 1710 	subb	a,r6
   4A1E E4            [12] 1711 	clr	a
   4A1F 64 80         [12] 1712 	xrl	a,#0x80
   4A21 8F F0         [24] 1713 	mov	b,r7
   4A23 63 F0 80      [24] 1714 	xrl	b,#0x80
   4A26 95 F0         [12] 1715 	subb	a,b
   4A28 50 08         [24] 1716 	jnc	00109$
                           1717 ;	radio/tdm.c:347: duty_cycle_offset += 10;
   4A2A 78 C5         [12] 1718 	mov	r0,#_duty_cycle_offset
   4A2C E2            [24] 1719 	movx	a,@r0
   4A2D 24 0A         [12] 1720 	add	a,#0x0A
   4A2F F2            [24] 1721 	movx	@r0,a
   4A30 80 21         [24] 1722 	sjmp	00113$
   4A32                    1723 00109$:
                           1724 ;	radio/tdm.c:348: } else if (diff > 5) {
   4A32 C3            [12] 1725 	clr	c
   4A33 74 05         [12] 1726 	mov	a,#0x05
   4A35 9E            [12] 1727 	subb	a,r6
   4A36 E4            [12] 1728 	clr	a
   4A37 64 80         [12] 1729 	xrl	a,#0x80
   4A39 8F F0         [24] 1730 	mov	b,r7
   4A3B 63 F0 80      [24] 1731 	xrl	b,#0x80
   4A3E 95 F0         [12] 1732 	subb	a,b
   4A40 50 08         [24] 1733 	jnc	00106$
                           1734 ;	radio/tdm.c:350: duty_cycle_offset += 5;
   4A42 78 C5         [12] 1735 	mov	r0,#_duty_cycle_offset
   4A44 E2            [24] 1736 	movx	a,@r0
   4A45 24 05         [12] 1737 	add	a,#0x05
   4A47 F2            [24] 1738 	movx	@r0,a
   4A48 80 09         [24] 1739 	sjmp	00113$
   4A4A                    1740 00106$:
                           1741 ;	radio/tdm.c:351: } else if (diff > 0) {
   4A4A ED            [12] 1742 	mov	a,r5
   4A4B 60 06         [24] 1743 	jz	00113$
                           1744 ;	radio/tdm.c:353: duty_cycle_offset += 1;				
   4A4D 78 C5         [12] 1745 	mov	r0,#_duty_cycle_offset
   4A4F E2            [24] 1746 	movx	a,@r0
   4A50 24 01         [12] 1747 	add	a,#0x01
   4A52 F2            [24] 1748 	movx	@r0,a
   4A53                    1749 00113$:
                           1750 ;	radio/tdm.c:356: if ((duty_cycle-duty_cycle_offset) < 20) {
   4A53 78 C4         [12] 1751 	mov	r0,#_duty_cycle
   4A55 E2            [24] 1752 	movx	a,@r0
   4A56 FE            [12] 1753 	mov	r6,a
   4A57 7F 00         [12] 1754 	mov	r7,#0x00
   4A59 78 C5         [12] 1755 	mov	r0,#_duty_cycle_offset
   4A5B E2            [24] 1756 	movx	a,@r0
   4A5C FC            [12] 1757 	mov	r4,a
   4A5D 7D 00         [12] 1758 	mov	r5,#0x00
   4A5F EE            [12] 1759 	mov	a,r6
   4A60 C3            [12] 1760 	clr	c
   4A61 9C            [12] 1761 	subb	a,r4
   4A62 FE            [12] 1762 	mov	r6,a
   4A63 EF            [12] 1763 	mov	a,r7
   4A64 9D            [12] 1764 	subb	a,r5
   4A65 FF            [12] 1765 	mov	r7,a
   4A66 C3            [12] 1766 	clr	c
   4A67 EE            [12] 1767 	mov	a,r6
   4A68 94 14         [12] 1768 	subb	a,#0x14
   4A6A EF            [12] 1769 	mov	a,r7
   4A6B 64 80         [12] 1770 	xrl	a,#0x80
   4A6D 94 80         [12] 1771 	subb	a,#0x80
   4A6F 50 08         [24] 1772 	jnc	00117$
                           1773 ;	radio/tdm.c:357: duty_cycle_offset = duty_cycle - 20;
   4A71 78 C4         [12] 1774 	mov	r0,#_duty_cycle
   4A73 79 C5         [12] 1775 	mov	r1,#_duty_cycle_offset
   4A75 E2            [24] 1776 	movx	a,@r0
   4A76 24 EC         [12] 1777 	add	a,#0xEC
   4A78 F3            [24] 1778 	movx	@r1,a
   4A79                    1779 00117$:
   4A79 22            [24] 1780 	ret
                           1781 ;------------------------------------------------------------
                           1782 ;Allocation info for local variables in function 'link_update'
                           1783 ;------------------------------------------------------------
                           1784 ;old_remaining             Allocated to registers r6 r7 
                           1785 ;unlock_count              Allocated with name '_link_update_unlock_count_1_185'
                           1786 ;temperature_count         Allocated with name '_link_update_temperature_count_1_185'
                           1787 ;------------------------------------------------------------
                           1788 ;	radio/tdm.c:365: link_update(void)
                           1789 ;	-----------------------------------------
                           1790 ;	 function link_update
                           1791 ;	-----------------------------------------
   4A7A                    1792 _link_update:
                           1793 ;	radio/tdm.c:368: if (received_packet) {
   4A7A 30 2A 0B      [24] 1794 	jnb	_received_packet,00102$
                           1795 ;	radio/tdm.c:369: unlock_count = 0;
   4A7D 90 05 6E      [24] 1796 	mov	dptr,#_link_update_unlock_count_1_185
   4A80 E4            [12] 1797 	clr	a
   4A81 F0            [24] 1798 	movx	@dptr,a
                           1799 ;	radio/tdm.c:370: received_packet = false;
   4A82 C2 2A         [12] 1800 	clr	_received_packet
                           1801 ;	radio/tdm.c:372: TDM_SYNC_PIN = true;
   4A84 D2 A6         [12] 1802 	setb	_TDM_SYNC_PIN
   4A86 80 07         [24] 1803 	sjmp	00103$
   4A88                    1804 00102$:
                           1805 ;	radio/tdm.c:375: unlock_count++;
   4A88 90 05 6E      [24] 1806 	mov	dptr,#_link_update_unlock_count_1_185
   4A8B E0            [24] 1807 	movx	a,@dptr
   4A8C 24 01         [12] 1808 	add	a,#0x01
   4A8E F0            [24] 1809 	movx	@dptr,a
   4A8F                    1810 00103$:
                           1811 ;	radio/tdm.c:377: if (unlock_count < 6) {
   4A8F 90 05 6E      [24] 1812 	mov	dptr,#_link_update_unlock_count_1_185
   4A92 E0            [24] 1813 	movx	a,@dptr
   4A93 FF            [12] 1814 	mov	r7,a
   4A94 BF 06 00      [24] 1815 	cjne	r7,#0x06,00157$
   4A97                    1816 00157$:
   4A97 50 04         [24] 1817 	jnc	00105$
                           1818 ;	radio/tdm.c:378: LED_RADIO = LED_ON;
   4A99 C2 A5         [12] 1819 	clr	_LED_GREEN
   4A9B 80 08         [24] 1820 	sjmp	00106$
   4A9D                    1821 00105$:
                           1822 ;	radio/tdm.c:381: TDM_SYNC_PIN = false;
   4A9D C2 A6         [12] 1823 	clr	_TDM_SYNC_PIN
                           1824 ;	radio/tdm.c:384: LED_RADIO = blink_state;
   4A9F A2 29         [12] 1825 	mov	c,_blink_state
   4AA1 92 A5         [24] 1826 	mov	_LED_GREEN,c
                           1827 ;	radio/tdm.c:385: blink_state = !blink_state;
   4AA3 B2 29         [12] 1828 	cpl	_blink_state
   4AA5                    1829 00106$:
                           1830 ;	radio/tdm.c:387: if (unlock_count > 40) {
   4AA5 EF            [12] 1831 	mov	a,r7
   4AA6 24 D7         [12] 1832 	add	a,#0xff - 0x28
   4AA8 40 03         [24] 1833 	jc	00159$
   4AAA 02 4B 35      [24] 1834 	ljmp	00117$
   4AAD                    1835 00159$:
                           1836 ;	radio/tdm.c:391: unlock_count = 5;
   4AAD 90 05 6E      [24] 1837 	mov	dptr,#_link_update_unlock_count_1_185
   4AB0 74 05         [12] 1838 	mov	a,#0x05
   4AB2 F0            [24] 1839 	movx	@dptr,a
                           1840 ;	radio/tdm.c:395: if (timer_entropy() & 1) {
   4AB3 12 56 A6      [24] 1841 	lcall	_timer_entropy
   4AB6 E5 82         [12] 1842 	mov	a,dpl
   4AB8 30 E0 59      [24] 1843 	jnb	acc.0,00113$
                           1844 ;	radio/tdm.c:396: register uint16_t old_remaining = tdm_state_remaining;
   4ABB 78 B7         [12] 1845 	mov	r0,#_tdm_state_remaining
   4ABD E2            [24] 1846 	movx	a,@r0
   4ABE FE            [12] 1847 	mov	r6,a
   4ABF 08            [12] 1848 	inc	r0
   4AC0 E2            [24] 1849 	movx	a,@r0
   4AC1 FF            [12] 1850 	mov	r7,a
                           1851 ;	radio/tdm.c:397: if (tdm_state_remaining > silence_period) {
   4AC2 78 BC         [12] 1852 	mov	r0,#_silence_period
   4AC4 C3            [12] 1853 	clr	c
   4AC5 E2            [24] 1854 	movx	a,@r0
   4AC6 9E            [12] 1855 	subb	a,r6
   4AC7 08            [12] 1856 	inc	r0
   4AC8 E2            [24] 1857 	movx	a,@r0
   4AC9 9F            [12] 1858 	subb	a,r7
   4ACA 50 17         [24] 1859 	jnc	00108$
                           1860 ;	radio/tdm.c:398: tdm_state_remaining -= packet_latency;
   4ACC 78 BE         [12] 1861 	mov	r0,#_packet_latency
   4ACE D3            [12] 1862 	setb	c
   4ACF E2            [24] 1863 	movx	a,@r0
   4AD0 9E            [12] 1864 	subb	a,r6
   4AD1 F4            [12] 1865 	cpl	a
   4AD2 B3            [12] 1866 	cpl	c
   4AD3 FC            [12] 1867 	mov	r4,a
   4AD4 B3            [12] 1868 	cpl	c
   4AD5 08            [12] 1869 	inc	r0
   4AD6 E2            [24] 1870 	movx	a,@r0
   4AD7 9F            [12] 1871 	subb	a,r7
   4AD8 F4            [12] 1872 	cpl	a
   4AD9 FD            [12] 1873 	mov	r5,a
   4ADA 78 B7         [12] 1874 	mov	r0,#_tdm_state_remaining
   4ADC EC            [12] 1875 	mov	a,r4
   4ADD F2            [24] 1876 	movx	@r0,a
   4ADE 08            [12] 1877 	inc	r0
   4ADF ED            [12] 1878 	mov	a,r5
   4AE0 F2            [24] 1879 	movx	@r0,a
   4AE1 80 08         [24] 1880 	sjmp	00109$
   4AE3                    1881 00108$:
                           1882 ;	radio/tdm.c:400: tdm_state_remaining = 1;
   4AE3 78 B7         [12] 1883 	mov	r0,#_tdm_state_remaining
   4AE5 74 01         [12] 1884 	mov	a,#0x01
   4AE7 F2            [24] 1885 	movx	@r0,a
   4AE8 08            [12] 1886 	inc	r0
   4AE9 E4            [12] 1887 	clr	a
   4AEA F2            [24] 1888 	movx	@r0,a
   4AEB                    1889 00109$:
                           1890 ;	radio/tdm.c:402: if (at_testmode & AT_TEST_TDM) {
   4AEB 78 13         [12] 1891 	mov	r0,#_at_testmode
   4AED E2            [24] 1892 	movx	a,@r0
   4AEE 54 02         [12] 1893 	anl	a,#0x02
   4AF0 60 22         [24] 1894 	jz	00113$
                           1895 ;	radio/tdm.c:403: printf("TDM: change timing %u/%u\n",
   4AF2 78 B7         [12] 1896 	mov	r0,#_tdm_state_remaining
   4AF4 E2            [24] 1897 	movx	a,@r0
   4AF5 C0 E0         [24] 1898 	push	acc
   4AF7 08            [12] 1899 	inc	r0
   4AF8 E2            [24] 1900 	movx	a,@r0
   4AF9 C0 E0         [24] 1901 	push	acc
   4AFB C0 06         [24] 1902 	push	ar6
   4AFD C0 07         [24] 1903 	push	ar7
   4AFF 74 67         [12] 1904 	mov	a,#__str_4
   4B01 C0 E0         [24] 1905 	push	acc
   4B03 74 CC         [12] 1906 	mov	a,#(__str_4 >> 8)
   4B05 C0 E0         [24] 1907 	push	acc
   4B07 74 80         [12] 1908 	mov	a,#0x80
   4B09 C0 E0         [24] 1909 	push	acc
   4B0B 12 2D B6      [24] 1910 	lcall	_printfl
   4B0E E5 81         [12] 1911 	mov	a,sp
   4B10 24 F9         [12] 1912 	add	a,#0xf9
   4B12 F5 81         [12] 1913 	mov	sp,a
   4B14                    1914 00113$:
                           1915 ;	radio/tdm.c:408: if (at_testmode & AT_TEST_TDM) {
   4B14 78 13         [12] 1916 	mov	r0,#_at_testmode
   4B16 E2            [24] 1917 	movx	a,@r0
   4B17 54 02         [12] 1918 	anl	a,#0x02
   4B19 60 15         [24] 1919 	jz	00115$
                           1920 ;	radio/tdm.c:409: printf("TDM: scanning\n");
   4B1B 74 81         [12] 1921 	mov	a,#__str_5
   4B1D C0 E0         [24] 1922 	push	acc
   4B1F 74 CC         [12] 1923 	mov	a,#(__str_5 >> 8)
   4B21 C0 E0         [24] 1924 	push	acc
   4B23 74 80         [12] 1925 	mov	a,#0x80
   4B25 C0 E0         [24] 1926 	push	acc
   4B27 12 2D B6      [24] 1927 	lcall	_printfl
   4B2A 15 81         [12] 1928 	dec	sp
   4B2C 15 81         [12] 1929 	dec	sp
   4B2E 15 81         [12] 1930 	dec	sp
   4B30                    1931 00115$:
                           1932 ;	radio/tdm.c:411: fhop_set_locked(false);
   4B30 C2 03         [12] 1933 	clr	_fhop_set_locked_PARM_1
   4B32 12 0C 89      [24] 1934 	lcall	_fhop_set_locked
   4B35                    1935 00117$:
                           1936 ;	radio/tdm.c:414: if (unlock_count != 0) {
   4B35 90 05 6E      [24] 1937 	mov	dptr,#_link_update_unlock_count_1_185
   4B38 E0            [24] 1938 	movx	a,@dptr
   4B39 FF            [12] 1939 	mov	r7,a
   4B3A 60 3D         [24] 1940 	jz	00119$
                           1941 ;	radio/tdm.c:415: statistics.average_rssi = (radio_last_rssi() + 3*(uint16_t)statistics.average_rssi)/4;
   4B3C 12 30 96      [24] 1942 	lcall	_radio_last_rssi
   4B3F AF 82         [24] 1943 	mov	r7,dpl
   4B41 7E 00         [12] 1944 	mov	r6,#0x00
   4B43 78 40         [12] 1945 	mov	r0,#_statistics
   4B45 E2            [24] 1946 	movx	a,@r0
   4B46 90 05 CB      [24] 1947 	mov	dptr,#__mulint_PARM_2
   4B49 F0            [24] 1948 	movx	@dptr,a
   4B4A E4            [12] 1949 	clr	a
   4B4B A3            [24] 1950 	inc	dptr
   4B4C F0            [24] 1951 	movx	@dptr,a
   4B4D 90 00 03      [24] 1952 	mov	dptr,#0x0003
   4B50 C0 07         [24] 1953 	push	ar7
   4B52 C0 06         [24] 1954 	push	ar6
   4B54 12 5D C7      [24] 1955 	lcall	__mulint
   4B57 AC 82         [24] 1956 	mov	r4,dpl
   4B59 AD 83         [24] 1957 	mov	r5,dph
   4B5B D0 06         [24] 1958 	pop	ar6
   4B5D D0 07         [24] 1959 	pop	ar7
   4B5F EC            [12] 1960 	mov	a,r4
   4B60 2F            [12] 1961 	add	a,r7
   4B61 FC            [12] 1962 	mov	r4,a
   4B62 ED            [12] 1963 	mov	a,r5
   4B63 3E            [12] 1964 	addc	a,r6
   4B64 C3            [12] 1965 	clr	c
   4B65 13            [12] 1966 	rrc	a
   4B66 CC            [12] 1967 	xch	a,r4
   4B67 13            [12] 1968 	rrc	a
   4B68 CC            [12] 1969 	xch	a,r4
   4B69 C3            [12] 1970 	clr	c
   4B6A 13            [12] 1971 	rrc	a
   4B6B CC            [12] 1972 	xch	a,r4
   4B6C 13            [12] 1973 	rrc	a
   4B6D CC            [12] 1974 	xch	a,r4
   4B6E FD            [12] 1975 	mov	r5,a
   4B6F 78 40         [12] 1976 	mov	r0,#_statistics
   4B71 EC            [12] 1977 	mov	a,r4
   4B72 F2            [24] 1978 	movx	@r0,a
                           1979 ;	radio/tdm.c:418: statistics.receive_count = 0;
   4B73 78 42         [12] 1980 	mov	r0,#(_statistics + 0x0002)
   4B75 E4            [12] 1981 	clr	a
   4B76 F2            [24] 1982 	movx	@r0,a
   4B77 08            [12] 1983 	inc	r0
   4B78 F2            [24] 1984 	movx	@r0,a
   4B79                    1985 00119$:
                           1986 ;	radio/tdm.c:420: if (unlock_count > 5) {
   4B79 90 05 6E      [24] 1987 	mov	dptr,#_link_update_unlock_count_1_185
   4B7C E0            [24] 1988 	movx	a,@dptr
   4B7D FF            [12] 1989 	mov  r7,a
   4B7E 24 FA         [12] 1990 	add	a,#0xff - 0x05
   4B80 50 17         [24] 1991 	jnc	00121$
                           1992 ;	radio/tdm.c:421: memset(&remote_statistics, 0, sizeof(remote_statistics));
   4B82 90 05 BE      [24] 1993 	mov	dptr,#_memset_PARM_2
   4B85 E4            [12] 1994 	clr	a
   4B86 F0            [24] 1995 	movx	@dptr,a
   4B87 90 05 BF      [24] 1996 	mov	dptr,#_memset_PARM_3
   4B8A 74 04         [12] 1997 	mov	a,#0x04
   4B8C F0            [24] 1998 	movx	@dptr,a
   4B8D E4            [12] 1999 	clr	a
   4B8E A3            [24] 2000 	inc	dptr
   4B8F F0            [24] 2001 	movx	@dptr,a
   4B90 90 00 44      [24] 2002 	mov	dptr,#_remote_statistics
   4B93 75 F0 60      [24] 2003 	mov	b,#0x60
   4B96 12 5C C7      [24] 2004 	lcall	_memset
   4B99                    2005 00121$:
                           2006 ;	radio/tdm.c:424: test_display = at_testmode;
   4B99 78 13         [12] 2007 	mov	r0,#_at_testmode
   4B9B E2            [24] 2008 	movx	a,@r0
   4B9C 78 CF         [12] 2009 	mov	r0,#_test_display
   4B9E F2            [24] 2010 	movx	@r0,a
                           2011 ;	radio/tdm.c:425: send_statistics = 1;
   4B9F D2 2C         [12] 2012 	setb	_send_statistics
                           2013 ;	radio/tdm.c:427: temperature_count++;
   4BA1 90 05 6F      [24] 2014 	mov	dptr,#_link_update_temperature_count_1_185
   4BA4 E0            [24] 2015 	movx	a,@dptr
   4BA5 24 01         [12] 2016 	add	a,#0x01
   4BA7 F0            [24] 2017 	movx	@dptr,a
                           2018 ;	radio/tdm.c:428: if (temperature_count == 4) {
   4BA8 90 05 6F      [24] 2019 	mov	dptr,#_link_update_temperature_count_1_185
   4BAB E0            [24] 2020 	movx	a,@dptr
   4BAC FF            [12] 2021 	mov	r7,a
   4BAD BF 04 08      [24] 2022 	cjne	r7,#0x04,00124$
                           2023 ;	radio/tdm.c:430: temperature_update();
   4BB0 12 49 DD      [24] 2024 	lcall	_temperature_update
                           2025 ;	radio/tdm.c:431: temperature_count = 0;
   4BB3 90 05 6F      [24] 2026 	mov	dptr,#_link_update_temperature_count_1_185
   4BB6 E4            [12] 2027 	clr	a
   4BB7 F0            [24] 2028 	movx	@dptr,a
   4BB8                    2029 00124$:
   4BB8 22            [24] 2030 	ret
                           2031 ;------------------------------------------------------------
                           2032 ;Allocation info for local variables in function 'tdm_remote_at'
                           2033 ;------------------------------------------------------------
                           2034 ;	radio/tdm.c:437: tdm_remote_at(void)
                           2035 ;	-----------------------------------------
                           2036 ;	 function tdm_remote_at
                           2037 ;	-----------------------------------------
   4BB9                    2038 _tdm_remote_at:
                           2039 ;	radio/tdm.c:439: memcpy(remote_at_cmd, at_cmd, strlen(at_cmd)+1);
   4BB9 90 00 01      [24] 2040 	mov	dptr,#_at_cmd
   4BBC 75 F0 60      [24] 2041 	mov	b,#0x60
   4BBF 12 63 4C      [24] 2042 	lcall	_strlen
   4BC2 E5 82         [12] 2043 	mov	a,dpl
   4BC4 85 83 F0      [24] 2044 	mov	b,dph
   4BC7 24 01         [12] 2045 	add	a,#0x01
   4BC9 FE            [12] 2046 	mov	r6,a
   4BCA E4            [12] 2047 	clr	a
   4BCB 35 F0         [12] 2048 	addc	a,b
   4BCD FF            [12] 2049 	mov	r7,a
   4BCE 90 05 C1      [24] 2050 	mov	dptr,#_memcpy_PARM_2
   4BD1 74 01         [12] 2051 	mov	a,#_at_cmd
   4BD3 F0            [24] 2052 	movx	@dptr,a
   4BD4 74 00         [12] 2053 	mov	a,#(_at_cmd >> 8)
   4BD6 A3            [24] 2054 	inc	dptr
   4BD7 F0            [24] 2055 	movx	@dptr,a
   4BD8 74 60         [12] 2056 	mov	a,#0x60
   4BDA A3            [24] 2057 	inc	dptr
   4BDB F0            [24] 2058 	movx	@dptr,a
   4BDC 90 05 C4      [24] 2059 	mov	dptr,#_memcpy_PARM_3
   4BDF EE            [12] 2060 	mov	a,r6
   4BE0 F0            [24] 2061 	movx	@dptr,a
   4BE1 EF            [12] 2062 	mov	a,r7
   4BE2 A3            [24] 2063 	inc	dptr
   4BE3 F0            [24] 2064 	movx	@dptr,a
   4BE4 90 00 D2      [24] 2065 	mov	dptr,#_remote_at_cmd
   4BE7 75 F0 60      [24] 2066 	mov	b,#0x60
   4BEA 12 5C EF      [24] 2067 	lcall	_memcpy
                           2068 ;	radio/tdm.c:440: send_at_command = true;
   4BED D2 2D         [12] 2069 	setb	_send_at_command
   4BEF 22            [24] 2070 	ret
                           2071 ;------------------------------------------------------------
                           2072 ;Allocation info for local variables in function 'handle_at_command'
                           2073 ;------------------------------------------------------------
                           2074 ;i                         Allocated to registers r6 
                           2075 ;------------------------------------------------------------
                           2076 ;	radio/tdm.c:445: handle_at_command(__pdata uint8_t len)
                           2077 ;	-----------------------------------------
                           2078 ;	 function handle_at_command
                           2079 ;	-----------------------------------------
   4BF0                    2080 _handle_at_command:
   4BF0 AF 82         [24] 2081 	mov	r7,dpl
                           2082 ;	radio/tdm.c:447: if (len < 2 || len > AT_CMD_MAXLEN || 
   4BF2 BF 02 00      [24] 2083 	cjne	r7,#0x02,00133$
   4BF5                    2084 00133$:
   4BF5 40 17         [24] 2085 	jc	00118$
   4BF7 EF            [12] 2086 	mov	a,r7
   4BF8 24 EF         [12] 2087 	add	a,#0xff - 0x10
   4BFA 40 12         [24] 2088 	jc	00118$
                           2089 ;	radio/tdm.c:448: pbuf[0] != (uint8_t)'R' || 
   4BFC 90 04 72      [24] 2090 	mov	dptr,#_pbuf
   4BFF E0            [24] 2091 	movx	a,@dptr
   4C00 FE            [12] 2092 	mov	r6,a
   4C01 BE 52 0A      [24] 2093 	cjne	r6,#0x52,00118$
                           2094 ;	radio/tdm.c:449: pbuf[1] != (uint8_t)'T') {
   4C04 90 04 73      [24] 2095 	mov	dptr,#(_pbuf + 0x0001)
   4C07 E0            [24] 2096 	movx	a,@dptr
   4C08 FE            [12] 2097 	mov	r6,a
   4C09 BE 54 02      [24] 2098 	cjne	r6,#0x54,00138$
   4C0C 80 23         [24] 2099 	sjmp	00103$
   4C0E                    2100 00138$:
                           2101 ;	radio/tdm.c:452: for (i=0; i<len; i++) {
   4C0E                    2102 00118$:
   4C0E 7E 00         [12] 2103 	mov	r6,#0x00
   4C10                    2104 00110$:
   4C10 C3            [12] 2105 	clr	c
   4C11 EE            [12] 2106 	mov	a,r6
   4C12 9F            [12] 2107 	subb	a,r7
   4C13 50 1B         [24] 2108 	jnc	00101$
                           2109 ;	radio/tdm.c:453: putchar(pbuf[i]);
   4C15 EE            [12] 2110 	mov	a,r6
   4C16 24 72         [12] 2111 	add	a,#_pbuf
   4C18 F5 82         [12] 2112 	mov	dpl,a
   4C1A E4            [12] 2113 	clr	a
   4C1B 34 04         [12] 2114 	addc	a,#(_pbuf >> 8)
   4C1D F5 83         [12] 2115 	mov	dph,a
   4C1F E0            [24] 2116 	movx	a,@dptr
   4C20 F5 82         [12] 2117 	mov	dpl,a
   4C22 C0 07         [24] 2118 	push	ar7
   4C24 C0 06         [24] 2119 	push	ar6
   4C26 12 44 2C      [24] 2120 	lcall	_putchar
   4C29 D0 06         [24] 2121 	pop	ar6
   4C2B D0 07         [24] 2122 	pop	ar7
                           2123 ;	radio/tdm.c:452: for (i=0; i<len; i++) {
   4C2D 0E            [12] 2124 	inc	r6
   4C2E 80 E0         [24] 2125 	sjmp	00110$
   4C30                    2126 00101$:
                           2127 ;	radio/tdm.c:455: return;
   4C30 22            [24] 2128 	ret
   4C31                    2129 00103$:
                           2130 ;	radio/tdm.c:459: memcpy(at_cmd, pbuf, len);
   4C31 90 05 C1      [24] 2131 	mov	dptr,#_memcpy_PARM_2
   4C34 74 72         [12] 2132 	mov	a,#_pbuf
   4C36 F0            [24] 2133 	movx	@dptr,a
   4C37 74 04         [12] 2134 	mov	a,#(_pbuf >> 8)
   4C39 A3            [24] 2135 	inc	dptr
   4C3A F0            [24] 2136 	movx	@dptr,a
   4C3B E4            [12] 2137 	clr	a
   4C3C A3            [24] 2138 	inc	dptr
   4C3D F0            [24] 2139 	movx	@dptr,a
   4C3E 90 05 C4      [24] 2140 	mov	dptr,#_memcpy_PARM_3
   4C41 EF            [12] 2141 	mov	a,r7
   4C42 F0            [24] 2142 	movx	@dptr,a
   4C43 E4            [12] 2143 	clr	a
   4C44 A3            [24] 2144 	inc	dptr
   4C45 F0            [24] 2145 	movx	@dptr,a
   4C46 90 00 01      [24] 2146 	mov	dptr,#_at_cmd
   4C49 75 F0 60      [24] 2147 	mov	b,#0x60
   4C4C C0 07         [24] 2148 	push	ar7
   4C4E 12 5C EF      [24] 2149 	lcall	_memcpy
   4C51 D0 07         [24] 2150 	pop	ar7
                           2151 ;	radio/tdm.c:460: at_cmd[len] = 0;
   4C53 EF            [12] 2152 	mov	a,r7
   4C54 24 01         [12] 2153 	add	a,#_at_cmd
   4C56 F8            [12] 2154 	mov	r0,a
   4C57 E4            [12] 2155 	clr	a
   4C58 F2            [24] 2156 	movx	@r0,a
                           2157 ;	radio/tdm.c:461: at_cmd[0] = 'A'; // replace 'R'
   4C59 78 01         [12] 2158 	mov	r0,#_at_cmd
   4C5B 74 41         [12] 2159 	mov	a,#0x41
   4C5D F2            [24] 2160 	movx	@r0,a
                           2161 ;	radio/tdm.c:462: at_cmd_len = len;
   4C5E 78 12         [12] 2162 	mov	r0,#_at_cmd_len
   4C60 EF            [12] 2163 	mov	a,r7
   4C61 F2            [24] 2164 	movx	@r0,a
                           2165 ;	radio/tdm.c:463: at_cmd_ready = true;
   4C62 D2 01         [12] 2166 	setb	_at_cmd_ready
                           2167 ;	radio/tdm.c:468: printf_start_capture(pbuf, sizeof(pbuf));
   4C64 90 03 61      [24] 2168 	mov	dptr,#_printf_start_capture_PARM_2
   4C67 74 FC         [12] 2169 	mov	a,#0xFC
   4C69 F0            [24] 2170 	movx	@dptr,a
   4C6A 90 04 72      [24] 2171 	mov	dptr,#_pbuf
   4C6D 12 2A FD      [24] 2172 	lcall	_printf_start_capture
                           2173 ;	radio/tdm.c:469: at_command();
   4C70 12 06 12      [24] 2174 	lcall	_at_command
                           2175 ;	radio/tdm.c:470: len = printf_end_capture();
   4C73 12 2B 26      [24] 2176 	lcall	_printf_end_capture
                           2177 ;	radio/tdm.c:471: if (len > 0) {
   4C76 E5 82         [12] 2178 	mov	a,dpl
   4C78 FF            [12] 2179 	mov	r7,a
   4C79 60 0A         [24] 2180 	jz	00112$
                           2181 ;	radio/tdm.c:472: packet_inject(pbuf, len);
   4C7B 78 68         [12] 2182 	mov	r0,#_packet_inject_PARM_2
   4C7D EF            [12] 2183 	mov	a,r7
   4C7E F2            [24] 2184 	movx	@r0,a
   4C7F 90 04 72      [24] 2185 	mov	dptr,#_pbuf
   4C82 02 25 11      [24] 2186 	ljmp	_packet_inject
   4C85                    2187 00112$:
   4C85 22            [24] 2188 	ret
                           2189 ;------------------------------------------------------------
                           2190 ;Allocation info for local variables in function 'tdm_serial_loop'
                           2191 ;------------------------------------------------------------
                           2192 ;	radio/tdm.c:482: tdm_serial_loop(void)
                           2193 ;	-----------------------------------------
                           2194 ;	 function tdm_serial_loop
                           2195 ;	-----------------------------------------
   4C86                    2196 _tdm_serial_loop:
                           2197 ;	radio/tdm.c:484: __pdata uint16_t last_t = timer2_tick();
   4C86 12 56 50      [24] 2198 	lcall	_timer2_tick
   4C89 78 E5         [12] 2199 	mov	r0,#_tdm_serial_loop_last_t_1_207
   4C8B E5 82         [12] 2200 	mov	a,dpl
   4C8D F2            [24] 2201 	movx	@r0,a
   4C8E 08            [12] 2202 	inc	r0
   4C8F E5 83         [12] 2203 	mov	a,dph
   4C91 F2            [24] 2204 	movx	@r0,a
                           2205 ;	radio/tdm.c:485: __pdata uint16_t last_link_update = last_t;
   4C92 78 E5         [12] 2206 	mov	r0,#_tdm_serial_loop_last_t_1_207
   4C94 79 E7         [12] 2207 	mov	r1,#_tdm_serial_loop_last_link_update_1_207
   4C96 E2            [24] 2208 	movx	a,@r0
   4C97 F3            [24] 2209 	movx	@r1,a
   4C98 08            [12] 2210 	inc	r0
   4C99 E2            [24] 2211 	movx	a,@r0
   4C9A 09            [12] 2212 	inc	r1
   4C9B F3            [24] 2213 	movx	@r1,a
                           2214 ;	radio/tdm.c:487: _canary = 42;
   4C9C 78 FF         [12] 2215 	mov	r0,#__canary
   4C9E 76 2A         [12] 2216 	mov	@r0,#0x2A
   4CA0                    2217 00192$:
                           2218 ;	radio/tdm.c:494: if (_canary != 42) {
   4CA0 78 FF         [12] 2219 	mov	r0,#__canary
   4CA2 B6 2A 02      [24] 2220 	cjne	@r0,#0x2A,00339$
   4CA5 80 15         [24] 2221 	sjmp	00102$
   4CA7                    2222 00339$:
                           2223 ;	radio/tdm.c:495: panic("stack blown\n");
   4CA7 74 90         [12] 2224 	mov	a,#__str_6
   4CA9 C0 E0         [24] 2225 	push	acc
   4CAB 74 CC         [12] 2226 	mov	a,#(__str_6 >> 8)
   4CAD C0 E0         [24] 2227 	push	acc
   4CAF 74 80         [12] 2228 	mov	a,#0x80
   4CB1 C0 E0         [24] 2229 	push	acc
   4CB3 12 11 F8      [24] 2230 	lcall	_panic
   4CB6 15 81         [12] 2231 	dec	sp
   4CB8 15 81         [12] 2232 	dec	sp
   4CBA 15 81         [12] 2233 	dec	sp
   4CBC                    2234 00102$:
                           2235 ;	radio/tdm.c:498: if (pdata_canary != 0x41) {
   4CBC 78 00         [12] 2236 	mov	r0,#_pdata_canary
   4CBE E2            [24] 2237 	movx	a,@r0
   4CBF B4 41 02      [24] 2238 	cjne	a,#0x41,00340$
   4CC2 80 15         [24] 2239 	sjmp	00104$
   4CC4                    2240 00340$:
                           2241 ;	radio/tdm.c:499: panic("pdata canary changed\n");
   4CC4 74 9D         [12] 2242 	mov	a,#__str_7
   4CC6 C0 E0         [24] 2243 	push	acc
   4CC8 74 CC         [12] 2244 	mov	a,#(__str_7 >> 8)
   4CCA C0 E0         [24] 2245 	push	acc
   4CCC 74 80         [12] 2246 	mov	a,#0x80
   4CCE C0 E0         [24] 2247 	push	acc
   4CD0 12 11 F8      [24] 2248 	lcall	_panic
   4CD3 15 81         [12] 2249 	dec	sp
   4CD5 15 81         [12] 2250 	dec	sp
   4CD7 15 81         [12] 2251 	dec	sp
   4CD9                    2252 00104$:
                           2253 ;	radio/tdm.c:503: at_command();
   4CD9 12 06 12      [24] 2254 	lcall	_at_command
                           2255 ;	radio/tdm.c:506: if (test_display) {
   4CDC 78 CF         [12] 2256 	mov	r0,#_test_display
   4CDE E2            [24] 2257 	movx	a,@r0
   4CDF 60 07         [24] 2258 	jz	00106$
                           2259 ;	radio/tdm.c:507: display_test_output();
   4CE1 12 45 AE      [24] 2260 	lcall	_display_test_output
                           2261 ;	radio/tdm.c:508: test_display = 0;
   4CE4 78 CF         [12] 2262 	mov	r0,#_test_display
   4CE6 E4            [12] 2263 	clr	a
   4CE7 F2            [24] 2264 	movx	@r0,a
   4CE8                    2265 00106$:
                           2266 ;	radio/tdm.c:511: if (seen_mavlink && feature_mavlink_framing && !at_mode_active) {
   4CE8 30 0D 0B      [24] 2267 	jnb	_seen_mavlink,00108$
   4CEB 30 06 08      [24] 2268 	jnb	_feature_mavlink_framing,00108$
   4CEE 20 00 05      [24] 2269 	jb	_at_mode_active,00108$
                           2270 ;	radio/tdm.c:512: seen_mavlink = false;
   4CF1 C2 0D         [12] 2271 	clr	_seen_mavlink
                           2272 ;	radio/tdm.c:513: MAVLink_report();
   4CF3 12 1B F2      [24] 2273 	lcall	_MAVLink_report
   4CF6                    2274 00108$:
                           2275 ;	radio/tdm.c:517: radio_set_channel(fhop_receive_channel());
   4CF6 12 0C 17      [24] 2276 	lcall	_fhop_receive_channel
   4CF9 12 35 75      [24] 2277 	lcall	_radio_set_channel
                           2278 ;	radio/tdm.c:520: tnow = timer2_tick();
   4CFC 12 56 50      [24] 2279 	lcall	_timer2_tick
   4CFF AA 82         [24] 2280 	mov	r2,dpl
   4D01 AB 83         [24] 2281 	mov	r3,dph
                           2282 ;	radio/tdm.c:523: if (radio_receive_packet(&len, pbuf)) {
   4D03 78 8A         [12] 2283 	mov	r0,#_radio_receive_packet_PARM_2
   4D05 74 72         [12] 2284 	mov	a,#_pbuf
   4D07 F2            [24] 2285 	movx	@r0,a
   4D08 08            [12] 2286 	inc	r0
   4D09 74 04         [12] 2287 	mov	a,#(_pbuf >> 8)
   4D0B F2            [24] 2288 	movx	@r0,a
   4D0C 90 00 E9      [24] 2289 	mov	dptr,#_tdm_serial_loop_len_2_208
   4D0F 75 F0 60      [24] 2290 	mov	b,#0x60
   4D12 C0 03         [24] 2291 	push	ar3
   4D14 C0 02         [24] 2292 	push	ar2
   4D16 12 2D D0      [24] 2293 	lcall	_radio_receive_packet
   4D19 D0 02         [24] 2294 	pop	ar2
   4D1B D0 03         [24] 2295 	pop	ar3
   4D1D 40 03         [24] 2296 	jc	00345$
   4D1F 02 4E 98      [24] 2297 	ljmp	00129$
   4D22                    2298 00345$:
                           2299 ;	radio/tdm.c:526: received_packet = true;
   4D22 D2 2A         [12] 2300 	setb	_received_packet
                           2301 ;	radio/tdm.c:527: fhop_set_locked(true);
   4D24 D2 03         [12] 2302 	setb	_fhop_set_locked_PARM_1
   4D26 C0 03         [24] 2303 	push	ar3
   4D28 C0 02         [24] 2304 	push	ar2
   4D2A 12 0C 89      [24] 2305 	lcall	_fhop_set_locked
                           2306 ;	radio/tdm.c:530: statistics.average_rssi = (radio_last_rssi() + 7*(uint16_t)statistics.average_rssi)/8;
   4D2D 12 30 96      [24] 2307 	lcall	_radio_last_rssi
   4D30 AD 82         [24] 2308 	mov	r5,dpl
   4D32 D0 02         [24] 2309 	pop	ar2
   4D34 D0 03         [24] 2310 	pop	ar3
   4D36 7C 00         [12] 2311 	mov	r4,#0x00
   4D38 78 40         [12] 2312 	mov	r0,#_statistics
   4D3A E2            [24] 2313 	movx	a,@r0
   4D3B 90 05 CB      [24] 2314 	mov	dptr,#__mulint_PARM_2
   4D3E F0            [24] 2315 	movx	@dptr,a
   4D3F E4            [12] 2316 	clr	a
   4D40 A3            [24] 2317 	inc	dptr
   4D41 F0            [24] 2318 	movx	@dptr,a
   4D42 90 00 07      [24] 2319 	mov	dptr,#0x0007
   4D45 C0 05         [24] 2320 	push	ar5
   4D47 C0 04         [24] 2321 	push	ar4
   4D49 C0 03         [24] 2322 	push	ar3
   4D4B C0 02         [24] 2323 	push	ar2
   4D4D 12 5D C7      [24] 2324 	lcall	__mulint
   4D50 AE 82         [24] 2325 	mov	r6,dpl
   4D52 AF 83         [24] 2326 	mov	r7,dph
   4D54 D0 02         [24] 2327 	pop	ar2
   4D56 D0 03         [24] 2328 	pop	ar3
   4D58 D0 04         [24] 2329 	pop	ar4
   4D5A D0 05         [24] 2330 	pop	ar5
   4D5C EE            [12] 2331 	mov	a,r6
   4D5D 2D            [12] 2332 	add	a,r5
   4D5E FE            [12] 2333 	mov	r6,a
   4D5F EF            [12] 2334 	mov	a,r7
   4D60 3C            [12] 2335 	addc	a,r4
   4D61 C4            [12] 2336 	swap	a
   4D62 23            [12] 2337 	rl	a
   4D63 CE            [12] 2338 	xch	a,r6
   4D64 C4            [12] 2339 	swap	a
   4D65 23            [12] 2340 	rl	a
   4D66 54 1F         [12] 2341 	anl	a,#0x1F
   4D68 6E            [12] 2342 	xrl	a,r6
   4D69 CE            [12] 2343 	xch	a,r6
   4D6A 54 1F         [12] 2344 	anl	a,#0x1F
   4D6C CE            [12] 2345 	xch	a,r6
   4D6D 6E            [12] 2346 	xrl	a,r6
   4D6E CE            [12] 2347 	xch	a,r6
   4D6F 78 40         [12] 2348 	mov	r0,#_statistics
   4D71 EE            [12] 2349 	mov	a,r6
   4D72 F2            [24] 2350 	movx	@r0,a
                           2351 ;	radio/tdm.c:531: statistics.receive_count++;
   4D73 78 42         [12] 2352 	mov	r0,#(_statistics + 0x0002)
   4D75 E2            [24] 2353 	movx	a,@r0
   4D76 FE            [12] 2354 	mov	r6,a
   4D77 08            [12] 2355 	inc	r0
   4D78 E2            [24] 2356 	movx	a,@r0
   4D79 FF            [12] 2357 	mov	r7,a
   4D7A 0E            [12] 2358 	inc	r6
   4D7B BE 00 01      [24] 2359 	cjne	r6,#0x00,00346$
   4D7E 0F            [12] 2360 	inc	r7
   4D7F                    2361 00346$:
   4D7F 78 42         [12] 2362 	mov	r0,#(_statistics + 0x0002)
   4D81 EE            [12] 2363 	mov	a,r6
   4D82 F2            [24] 2364 	movx	@r0,a
   4D83 08            [12] 2365 	inc	r0
   4D84 EF            [12] 2366 	mov	a,r7
   4D85 F2            [24] 2367 	movx	@r0,a
                           2368 ;	radio/tdm.c:535: transmit_wait = 0;
   4D86 78 C2         [12] 2369 	mov	r0,#_transmit_wait
   4D88 E4            [12] 2370 	clr	a
   4D89 F2            [24] 2371 	movx	@r0,a
   4D8A 08            [12] 2372 	inc	r0
   4D8B F2            [24] 2373 	movx	@r0,a
                           2374 ;	radio/tdm.c:537: if (len < 2) {
   4D8C 78 E9         [12] 2375 	mov	r0,#_tdm_serial_loop_len_2_208
   4D8E E2            [24] 2376 	movx	a,@r0
   4D8F B4 02 00      [24] 2377 	cjne	a,#0x02,00347$
   4D92                    2378 00347$:
   4D92 50 03         [24] 2379 	jnc	00348$
   4D94 02 4C A0      [24] 2380 	ljmp	00192$
   4D97                    2381 00348$:
                           2382 ;	radio/tdm.c:544: memcpy(&trailer, &pbuf[len-sizeof(trailer)], sizeof(trailer));
   4D97 78 E9         [12] 2383 	mov	r0,#_tdm_serial_loop_len_2_208
   4D99 E2            [24] 2384 	movx	a,@r0
   4D9A 24 FE         [12] 2385 	add	a,#0xFE
   4D9C 24 72         [12] 2386 	add	a,#_pbuf
   4D9E FE            [12] 2387 	mov	r6,a
   4D9F E4            [12] 2388 	clr	a
   4DA0 34 04         [12] 2389 	addc	a,#(_pbuf >> 8)
   4DA2 FF            [12] 2390 	mov	r7,a
   4DA3 90 05 C1      [24] 2391 	mov	dptr,#_memcpy_PARM_2
   4DA6 EE            [12] 2392 	mov	a,r6
   4DA7 F0            [24] 2393 	movx	@dptr,a
   4DA8 EF            [12] 2394 	mov	a,r7
   4DA9 A3            [24] 2395 	inc	dptr
   4DAA F0            [24] 2396 	movx	@dptr,a
   4DAB E4            [12] 2397 	clr	a
   4DAC A3            [24] 2398 	inc	dptr
   4DAD F0            [24] 2399 	movx	@dptr,a
   4DAE 90 05 C4      [24] 2400 	mov	dptr,#_memcpy_PARM_3
   4DB1 74 02         [12] 2401 	mov	a,#0x02
   4DB3 F0            [24] 2402 	movx	@dptr,a
   4DB4 E4            [12] 2403 	clr	a
   4DB5 A3            [24] 2404 	inc	dptr
   4DB6 F0            [24] 2405 	movx	@dptr,a
   4DB7 90 00 D0      [24] 2406 	mov	dptr,#_trailer
   4DBA 75 F0 60      [24] 2407 	mov	b,#0x60
   4DBD C0 03         [24] 2408 	push	ar3
   4DBF C0 02         [24] 2409 	push	ar2
   4DC1 12 5C EF      [24] 2410 	lcall	_memcpy
   4DC4 D0 02         [24] 2411 	pop	ar2
   4DC6 D0 03         [24] 2412 	pop	ar3
                           2413 ;	radio/tdm.c:545: len -= sizeof(trailer);
   4DC8 78 E9         [12] 2414 	mov	r0,#_tdm_serial_loop_len_2_208
   4DCA E2            [24] 2415 	movx	a,@r0
   4DCB 14            [12] 2416 	dec	a
   4DCC 14            [12] 2417 	dec	a
   4DCD F2            [24] 2418 	movx	@r0,a
                           2419 ;	radio/tdm.c:547: if (trailer.window == 0 && len != 0) {
   4DCE 78 D0         [12] 2420 	mov	r0,#_trailer
   4DD0 E2            [24] 2421 	movx	a,@r0
   4DD1 FE            [12] 2422 	mov	r6,a
   4DD2 08            [12] 2423 	inc	r0
   4DD3 E2            [24] 2424 	movx	a,@r0
   4DD4 54 1F         [12] 2425 	anl	a,#0x1F
   4DD6 FF            [12] 2426 	mov	r7,a
   4DD7 4E            [12] 2427 	orl	a,r6
   4DD8 70 41         [24] 2428 	jnz	00125$
   4DDA 78 E9         [12] 2429 	mov	r0,#_tdm_serial_loop_len_2_208
   4DDC E2            [24] 2430 	movx	a,@r0
   4DDD 60 3C         [24] 2431 	jz	00125$
                           2432 ;	radio/tdm.c:549: if (len == sizeof(struct statistics)) {
   4DDF 78 E9         [12] 2433 	mov	r0,#_tdm_serial_loop_len_2_208
   4DE1 E2            [24] 2434 	movx	a,@r0
   4DE2 B4 04 20      [24] 2435 	cjne	a,#0x04,00114$
                           2436 ;	radio/tdm.c:550: memcpy(&remote_statistics, pbuf, len);
   4DE5 90 05 C1      [24] 2437 	mov	dptr,#_memcpy_PARM_2
   4DE8 74 72         [12] 2438 	mov	a,#_pbuf
   4DEA F0            [24] 2439 	movx	@dptr,a
   4DEB 74 04         [12] 2440 	mov	a,#(_pbuf >> 8)
   4DED A3            [24] 2441 	inc	dptr
   4DEE F0            [24] 2442 	movx	@dptr,a
   4DEF E4            [12] 2443 	clr	a
   4DF0 A3            [24] 2444 	inc	dptr
   4DF1 F0            [24] 2445 	movx	@dptr,a
   4DF2 78 E9         [12] 2446 	mov	r0,#_tdm_serial_loop_len_2_208
   4DF4 90 05 C4      [24] 2447 	mov	dptr,#_memcpy_PARM_3
   4DF7 E2            [24] 2448 	movx	a,@r0
   4DF8 F0            [24] 2449 	movx	@dptr,a
   4DF9 E4            [12] 2450 	clr	a
   4DFA A3            [24] 2451 	inc	dptr
   4DFB F0            [24] 2452 	movx	@dptr,a
   4DFC 90 00 44      [24] 2453 	mov	dptr,#_remote_statistics
   4DFF 75 F0 60      [24] 2454 	mov	b,#0x60
   4E02 12 5C EF      [24] 2455 	lcall	_memcpy
   4E05                    2456 00114$:
                           2457 ;	radio/tdm.c:554: statistics.receive_count--;
   4E05 78 42         [12] 2458 	mov	r0,#(_statistics + 0x0002)
   4E07 E2            [24] 2459 	movx	a,@r0
   4E08 FE            [12] 2460 	mov	r6,a
   4E09 08            [12] 2461 	inc	r0
   4E0A E2            [24] 2462 	movx	a,@r0
   4E0B FF            [12] 2463 	mov	r7,a
   4E0C 1E            [12] 2464 	dec	r6
   4E0D BE FF 01      [24] 2465 	cjne	r6,#0xFF,00353$
   4E10 1F            [12] 2466 	dec	r7
   4E11                    2467 00353$:
   4E11 78 42         [12] 2468 	mov	r0,#(_statistics + 0x0002)
   4E13 EE            [12] 2469 	mov	a,r6
   4E14 F2            [24] 2470 	movx	@r0,a
   4E15 08            [12] 2471 	inc	r0
   4E16 EF            [12] 2472 	mov	a,r7
   4E17 F2            [24] 2473 	movx	@r0,a
   4E18 02 4C A0      [24] 2474 	ljmp	00192$
   4E1B                    2475 00125$:
                           2476 ;	radio/tdm.c:555: } else if (trailer.window != 0) {
   4E1B 78 D0         [12] 2477 	mov	r0,#_trailer
   4E1D E2            [24] 2478 	movx	a,@r0
   4E1E FE            [12] 2479 	mov	r6,a
   4E1F 08            [12] 2480 	inc	r0
   4E20 E2            [24] 2481 	movx	a,@r0
   4E21 54 1F         [12] 2482 	anl	a,#0x1F
   4E23 FF            [12] 2483 	mov	r7,a
   4E24 4E            [12] 2484 	orl	a,r6
   4E25 70 03         [24] 2485 	jnz	00354$
   4E27 02 4C A0      [24] 2486 	ljmp	00192$
   4E2A                    2487 00354$:
                           2488 ;	radio/tdm.c:558: sync_tx_windows(len);
   4E2A 78 E9         [12] 2489 	mov	r0,#_tdm_serial_loop_len_2_208
   4E2C E2            [24] 2490 	movx	a,@r0
   4E2D F5 82         [12] 2491 	mov	dpl,a
   4E2F C0 03         [24] 2492 	push	ar3
   4E31 C0 02         [24] 2493 	push	ar2
   4E33 12 45 E0      [24] 2494 	lcall	_sync_tx_windows
   4E36 D0 02         [24] 2495 	pop	ar2
   4E38 D0 03         [24] 2496 	pop	ar3
                           2497 ;	radio/tdm.c:559: last_t = tnow;
   4E3A 78 E5         [12] 2498 	mov	r0,#_tdm_serial_loop_last_t_1_207
   4E3C EA            [12] 2499 	mov	a,r2
   4E3D F2            [24] 2500 	movx	@r0,a
   4E3E 08            [12] 2501 	inc	r0
   4E3F EB            [12] 2502 	mov	a,r3
   4E40 F2            [24] 2503 	movx	@r0,a
                           2504 ;	radio/tdm.c:561: if (trailer.command == 1) {
   4E41 78 D1         [12] 2505 	mov	r0,#(_trailer + 0x0001)
   4E43 E2            [24] 2506 	movx	a,@r0
   4E44 C4            [12] 2507 	swap	a
   4E45 03            [12] 2508 	rr	a
   4E46 54 01         [12] 2509 	anl	a,#0x01
   4E48 FF            [12] 2510 	mov	r7,a
   4E49 BF 01 0B      [24] 2511 	cjne	r7,#0x01,00120$
                           2512 ;	radio/tdm.c:562: handle_at_command(len);
   4E4C 78 E9         [12] 2513 	mov	r0,#_tdm_serial_loop_len_2_208
   4E4E E2            [24] 2514 	movx	a,@r0
   4E4F F5 82         [12] 2515 	mov	dpl,a
   4E51 12 4B F0      [24] 2516 	lcall	_handle_at_command
   4E54 02 4C A0      [24] 2517 	ljmp	00192$
   4E57                    2518 00120$:
                           2519 ;	radio/tdm.c:563: } else if (len != 0 && 
   4E57 78 E9         [12] 2520 	mov	r0,#_tdm_serial_loop_len_2_208
   4E59 E2            [24] 2521 	movx	a,@r0
   4E5A 70 03         [24] 2522 	jnz	00357$
   4E5C 02 4C A0      [24] 2523 	ljmp	00192$
   4E5F                    2524 00357$:
                           2525 ;	radio/tdm.c:564: !packet_is_duplicate(len, pbuf, trailer.resend) &&
   4E5F 78 D1         [12] 2526 	mov	r0,#(_trailer + 0x0001)
   4E61 E2            [24] 2527 	movx	a,@r0
   4E62 23            [12] 2528 	rl	a
   4E63 54 01         [12] 2529 	anl	a,#0x01
   4E65 24 FF         [12] 2530 	add	a,#0xff
   4E67 92 0F         [24] 2531 	mov	_packet_is_duplicate_PARM_3,c
   4E69 78 66         [12] 2532 	mov	r0,#_packet_is_duplicate_PARM_2
   4E6B 74 72         [12] 2533 	mov	a,#_pbuf
   4E6D F2            [24] 2534 	movx	@r0,a
   4E6E 08            [12] 2535 	inc	r0
   4E6F 74 04         [12] 2536 	mov	a,#(_pbuf >> 8)
   4E71 F2            [24] 2537 	movx	@r0,a
   4E72 78 E9         [12] 2538 	mov	r0,#_tdm_serial_loop_len_2_208
   4E74 E2            [24] 2539 	movx	a,@r0
   4E75 F5 82         [12] 2540 	mov	dpl,a
   4E77 12 24 91      [24] 2541 	lcall	_packet_is_duplicate
   4E7A 50 03         [24] 2542 	jnc	00358$
   4E7C 02 4C A0      [24] 2543 	ljmp	00192$
   4E7F                    2544 00358$:
                           2545 ;	radio/tdm.c:565: !at_mode_active) {
   4E7F 30 00 03      [24] 2546 	jnb	_at_mode_active,00359$
   4E82 02 4C A0      [24] 2547 	ljmp	00192$
   4E85                    2548 00359$:
                           2549 ;	radio/tdm.c:569: LED_ACTIVITY = LED_ON;
   4E85 C2 A0         [12] 2550 	clr	_LED_RED
                           2551 ;	radio/tdm.c:570: serial_write_buf(pbuf, len);
   4E87 78 E9         [12] 2552 	mov	r0,#_tdm_serial_loop_len_2_208
   4E89 79 B2         [12] 2553 	mov	r1,#_serial_write_buf_PARM_2
   4E8B E2            [24] 2554 	movx	a,@r0
   4E8C F3            [24] 2555 	movx	@r1,a
   4E8D 90 04 72      [24] 2556 	mov	dptr,#_pbuf
   4E90 12 40 C5      [24] 2557 	lcall	_serial_write_buf
                           2558 ;	radio/tdm.c:571: LED_ACTIVITY = LED_OFF;
   4E93 D2 A0         [12] 2559 	setb	_LED_RED
                           2560 ;	radio/tdm.c:575: continue;
   4E95 02 4C A0      [24] 2561 	ljmp	00192$
   4E98                    2562 00129$:
                           2563 ;	radio/tdm.c:581: tnow = timer2_tick();
   4E98 12 56 50      [24] 2564 	lcall	_timer2_tick
   4E9B AA 82         [24] 2565 	mov	r2,dpl
   4E9D AB 83         [24] 2566 	mov	r3,dph
                           2567 ;	radio/tdm.c:582: tdelta = tnow - last_t;
   4E9F 78 E5         [12] 2568 	mov	r0,#_tdm_serial_loop_last_t_1_207
   4EA1 79 EA         [12] 2569 	mov	r1,#_tdm_serial_loop_tdelta_2_208
   4EA3 D3            [12] 2570 	setb	c
   4EA4 E2            [24] 2571 	movx	a,@r0
   4EA5 9A            [12] 2572 	subb	a,r2
   4EA6 F4            [12] 2573 	cpl	a
   4EA7 B3            [12] 2574 	cpl	c
   4EA8 F3            [24] 2575 	movx	@r1,a
   4EA9 B3            [12] 2576 	cpl	c
   4EAA 08            [12] 2577 	inc	r0
   4EAB E2            [24] 2578 	movx	a,@r0
   4EAC 9B            [12] 2579 	subb	a,r3
   4EAD F4            [12] 2580 	cpl	a
   4EAE 09            [12] 2581 	inc	r1
   4EAF F3            [24] 2582 	movx	@r1,a
                           2583 ;	radio/tdm.c:583: tdm_state_update(tdelta);
   4EB0 78 EA         [12] 2584 	mov	r0,#_tdm_serial_loop_tdelta_2_208
   4EB2 E2            [24] 2585 	movx	a,@r0
   4EB3 F5 82         [12] 2586 	mov	dpl,a
   4EB5 08            [12] 2587 	inc	r0
   4EB6 E2            [24] 2588 	movx	a,@r0
   4EB7 F5 83         [12] 2589 	mov	dph,a
   4EB9 C0 03         [24] 2590 	push	ar3
   4EBB C0 02         [24] 2591 	push	ar2
   4EBD 12 47 47      [24] 2592 	lcall	_tdm_state_update
   4EC0 D0 02         [24] 2593 	pop	ar2
   4EC2 D0 03         [24] 2594 	pop	ar3
                           2595 ;	radio/tdm.c:584: last_t = tnow;
   4EC4 78 E5         [12] 2596 	mov	r0,#_tdm_serial_loop_last_t_1_207
   4EC6 EA            [12] 2597 	mov	a,r2
   4EC7 F2            [24] 2598 	movx	@r0,a
   4EC8 08            [12] 2599 	inc	r0
   4EC9 EB            [12] 2600 	mov	a,r3
   4ECA F2            [24] 2601 	movx	@r0,a
                           2602 ;	radio/tdm.c:587: if (tnow - last_link_update > 32768) {
   4ECB 78 E7         [12] 2603 	mov	r0,#_tdm_serial_loop_last_link_update_1_207
   4ECD D3            [12] 2604 	setb	c
   4ECE E2            [24] 2605 	movx	a,@r0
   4ECF 9A            [12] 2606 	subb	a,r2
   4ED0 F4            [12] 2607 	cpl	a
   4ED1 B3            [12] 2608 	cpl	c
   4ED2 FC            [12] 2609 	mov	r4,a
   4ED3 B3            [12] 2610 	cpl	c
   4ED4 08            [12] 2611 	inc	r0
   4ED5 E2            [24] 2612 	movx	a,@r0
   4ED6 9B            [12] 2613 	subb	a,r3
   4ED7 F4            [12] 2614 	cpl	a
   4ED8 FD            [12] 2615 	mov	r5,a
   4ED9 7E 00         [12] 2616 	mov	r6,#0x00
   4EDB 7F 00         [12] 2617 	mov	r7,#0x00
   4EDD C3            [12] 2618 	clr	c
   4EDE E4            [12] 2619 	clr	a
   4EDF 9C            [12] 2620 	subb	a,r4
   4EE0 74 80         [12] 2621 	mov	a,#0x80
   4EE2 9D            [12] 2622 	subb	a,r5
   4EE3 E4            [12] 2623 	clr	a
   4EE4 9E            [12] 2624 	subb	a,r6
   4EE5 E4            [12] 2625 	clr	a
   4EE6 64 80         [12] 2626 	xrl	a,#0x80
   4EE8 8F F0         [24] 2627 	mov	b,r7
   4EEA 63 F0 80      [24] 2628 	xrl	b,#0x80
   4EED 95 F0         [12] 2629 	subb	a,b
   4EEF 50 12         [24] 2630 	jnc	00131$
                           2631 ;	radio/tdm.c:588: link_update();
   4EF1 C0 03         [24] 2632 	push	ar3
   4EF3 C0 02         [24] 2633 	push	ar2
   4EF5 12 4A 7A      [24] 2634 	lcall	_link_update
   4EF8 D0 02         [24] 2635 	pop	ar2
   4EFA D0 03         [24] 2636 	pop	ar3
                           2637 ;	radio/tdm.c:589: last_link_update = tnow;
   4EFC 78 E7         [12] 2638 	mov	r0,#_tdm_serial_loop_last_link_update_1_207
   4EFE EA            [12] 2639 	mov	a,r2
   4EFF F2            [24] 2640 	movx	@r0,a
   4F00 08            [12] 2641 	inc	r0
   4F01 EB            [12] 2642 	mov	a,r3
   4F02 F2            [24] 2643 	movx	@r0,a
   4F03                    2644 00131$:
                           2645 ;	radio/tdm.c:592: if (lbt_rssi != 0) {
   4F03 78 C8         [12] 2646 	mov	r0,#_lbt_rssi
   4F05 E2            [24] 2647 	movx	a,@r0
   4F06 70 03         [24] 2648 	jnz	00361$
   4F08 02 4F 88      [24] 2649 	ljmp	00140$
   4F0B                    2650 00361$:
                           2651 ;	radio/tdm.c:594: if (radio_current_rssi() < lbt_rssi) {
   4F0B 12 30 9C      [24] 2652 	lcall	_radio_current_rssi
   4F0E AF 82         [24] 2653 	mov	r7,dpl
   4F10 78 C8         [12] 2654 	mov	r0,#_lbt_rssi
   4F12 C3            [12] 2655 	clr	c
   4F13 E2            [24] 2656 	movx	a,@r0
   4F14 F5 F0         [12] 2657 	mov	b,a
   4F16 EF            [12] 2658 	mov	a,r7
   4F17 95 F0         [12] 2659 	subb	a,b
   4F19 50 16         [24] 2660 	jnc	00135$
                           2661 ;	radio/tdm.c:595: lbt_listen_time += tdelta;
   4F1B 78 C9         [12] 2662 	mov	r0,#_lbt_listen_time
   4F1D 79 EA         [12] 2663 	mov	r1,#_tdm_serial_loop_tdelta_2_208
   4F1F E3            [24] 2664 	movx	a,@r1
   4F20 C5 F0         [12] 2665 	xch	a,b
   4F22 E2            [24] 2666 	movx	a,@r0
   4F23 25 F0         [12] 2667 	add	a,b
   4F25 F2            [24] 2668 	movx	@r0,a
   4F26 09            [12] 2669 	inc	r1
   4F27 E3            [24] 2670 	movx	a,@r1
   4F28 C5 F0         [12] 2671 	xch	a,b
   4F2A 08            [12] 2672 	inc	r0
   4F2B E2            [24] 2673 	movx	a,@r0
   4F2C 35 F0         [12] 2674 	addc	a,b
   4F2E F2            [24] 2675 	movx	@r0,a
   4F2F 80 36         [24] 2676 	sjmp	00136$
   4F31                    2677 00135$:
                           2678 ;	radio/tdm.c:597: lbt_listen_time = 0;
   4F31 78 C9         [12] 2679 	mov	r0,#_lbt_listen_time
   4F33 E4            [12] 2680 	clr	a
   4F34 F2            [24] 2681 	movx	@r0,a
   4F35 08            [12] 2682 	inc	r0
   4F36 F2            [24] 2683 	movx	@r0,a
                           2684 ;	radio/tdm.c:598: if (lbt_rand == 0) {
   4F37 78 CD         [12] 2685 	mov	r0,#_lbt_rand
   4F39 E2            [24] 2686 	movx	a,@r0
   4F3A F5 F0         [12] 2687 	mov	b,a
   4F3C 08            [12] 2688 	inc	r0
   4F3D E2            [24] 2689 	movx	a,@r0
   4F3E 45 F0         [12] 2690 	orl	a,b
   4F40 70 25         [24] 2691 	jnz	00136$
                           2692 ;	radio/tdm.c:599: lbt_rand = ((uint16_t)rand()) % lbt_min_time;
   4F42 12 5A DC      [24] 2693 	lcall	_rand
   4F45 AE 82         [24] 2694 	mov	r6,dpl
   4F47 AF 83         [24] 2695 	mov	r7,dph
   4F49 78 CB         [12] 2696 	mov	r0,#_lbt_min_time
   4F4B 90 05 DB      [24] 2697 	mov	dptr,#__moduint_PARM_2
   4F4E E2            [24] 2698 	movx	a,@r0
   4F4F F0            [24] 2699 	movx	@dptr,a
   4F50 08            [12] 2700 	inc	r0
   4F51 E2            [24] 2701 	movx	a,@r0
   4F52 A3            [24] 2702 	inc	dptr
   4F53 F0            [24] 2703 	movx	@dptr,a
   4F54 8E 82         [24] 2704 	mov	dpl,r6
   4F56 8F 83         [24] 2705 	mov	dph,r7
   4F58 12 5F 50      [24] 2706 	lcall	__moduint
   4F5B E5 82         [12] 2707 	mov	a,dpl
   4F5D 85 83 F0      [24] 2708 	mov	b,dph
   4F60 78 CD         [12] 2709 	mov	r0,#_lbt_rand
   4F62 F2            [24] 2710 	movx	@r0,a
   4F63 08            [12] 2711 	inc	r0
   4F64 E5 F0         [12] 2712 	mov	a,b
   4F66 F2            [24] 2713 	movx	@r0,a
   4F67                    2714 00136$:
                           2715 ;	radio/tdm.c:602: if (lbt_listen_time < lbt_min_time + lbt_rand) {
   4F67 78 CB         [12] 2716 	mov	r0,#_lbt_min_time
   4F69 79 CD         [12] 2717 	mov	r1,#_lbt_rand
   4F6B E3            [24] 2718 	movx	a,@r1
   4F6C C5 F0         [12] 2719 	xch	a,b
   4F6E E2            [24] 2720 	movx	a,@r0
   4F6F 25 F0         [12] 2721 	add	a,b
   4F71 FE            [12] 2722 	mov	r6,a
   4F72 09            [12] 2723 	inc	r1
   4F73 E3            [24] 2724 	movx	a,@r1
   4F74 C5 F0         [12] 2725 	xch	a,b
   4F76 08            [12] 2726 	inc	r0
   4F77 E2            [24] 2727 	movx	a,@r0
   4F78 35 F0         [12] 2728 	addc	a,b
   4F7A FF            [12] 2729 	mov	r7,a
   4F7B 78 C9         [12] 2730 	mov	r0,#_lbt_listen_time
   4F7D C3            [12] 2731 	clr	c
   4F7E E2            [24] 2732 	movx	a,@r0
   4F7F 9E            [12] 2733 	subb	a,r6
   4F80 08            [12] 2734 	inc	r0
   4F81 E2            [24] 2735 	movx	a,@r0
   4F82 9F            [12] 2736 	subb	a,r7
   4F83 50 03         [24] 2737 	jnc	00364$
   4F85 02 4C A0      [24] 2738 	ljmp	00192$
   4F88                    2739 00364$:
                           2740 ;	radio/tdm.c:604: continue;
   4F88                    2741 00140$:
                           2742 ;	radio/tdm.c:612: if (tdm_state != TDM_TRANSMIT &&
   4F88 78 B6         [12] 2743 	mov	r0,#_tdm_state
   4F8A E2            [24] 2744 	movx	a,@r0
   4F8B 60 11         [24] 2745 	jz	00142$
                           2746 ;	radio/tdm.c:613: !(bonus_transmit && tdm_state == TDM_RECEIVE)) {
   4F8D 20 27 03      [24] 2747 	jb	_bonus_transmit,00366$
   4F90 02 4C A0      [24] 2748 	ljmp	00192$
   4F93                    2749 00366$:
   4F93 78 B6         [12] 2750 	mov	r0,#_tdm_state
   4F95 E2            [24] 2751 	movx	a,@r0
   4F96 B4 02 02      [24] 2752 	cjne	a,#0x02,00367$
   4F99 80 03         [24] 2753 	sjmp	00368$
   4F9B                    2754 00367$:
   4F9B 02 4C A0      [24] 2755 	ljmp	00192$
   4F9E                    2756 00368$:
                           2757 ;	radio/tdm.c:615: continue;
   4F9E                    2758 00142$:
                           2759 ;	radio/tdm.c:623: if (transmit_yield != 0) {
   4F9E 30 28 03      [24] 2760 	jnb	_transmit_yield,00369$
   4FA1 02 4C A0      [24] 2761 	ljmp	00192$
   4FA4                    2762 00369$:
                           2763 ;	radio/tdm.c:628: if (transmit_wait != 0) {
   4FA4 78 C2         [12] 2764 	mov	r0,#_transmit_wait
   4FA6 E2            [24] 2765 	movx	a,@r0
   4FA7 F5 F0         [12] 2766 	mov	b,a
   4FA9 08            [12] 2767 	inc	r0
   4FAA E2            [24] 2768 	movx	a,@r0
   4FAB 45 F0         [12] 2769 	orl	a,b
   4FAD 60 03         [24] 2770 	jz	00370$
   4FAF 02 4C A0      [24] 2771 	ljmp	00192$
   4FB2                    2772 00370$:
                           2773 ;	radio/tdm.c:633: if (!received_packet &&
   4FB2 20 2A 05      [24] 2774 	jb	_received_packet,00152$
                           2775 ;	radio/tdm.c:634: radio_preamble_detected() ||
   4FB5 12 30 7F      [24] 2776 	lcall	_radio_preamble_detected
   4FB8 40 05         [24] 2777 	jc	00149$
   4FBA                    2778 00152$:
                           2779 ;	radio/tdm.c:635: radio_receive_in_progress()) {
   4FBA 12 30 66      [24] 2780 	lcall	_radio_receive_in_progress
   4FBD 50 11         [24] 2781 	jnc	00150$
   4FBF                    2782 00149$:
                           2783 ;	radio/tdm.c:638: transmit_wait = packet_latency;
   4FBF 78 BE         [12] 2784 	mov	r0,#_packet_latency
   4FC1 E2            [24] 2785 	movx	a,@r0
   4FC2 FE            [12] 2786 	mov	r6,a
   4FC3 08            [12] 2787 	inc	r0
   4FC4 E2            [24] 2788 	movx	a,@r0
   4FC5 FF            [12] 2789 	mov	r7,a
   4FC6 78 C2         [12] 2790 	mov	r0,#_transmit_wait
   4FC8 EE            [12] 2791 	mov	a,r6
   4FC9 F2            [24] 2792 	movx	@r0,a
   4FCA 08            [12] 2793 	inc	r0
   4FCB EF            [12] 2794 	mov	a,r7
   4FCC F2            [24] 2795 	movx	@r0,a
                           2796 ;	radio/tdm.c:639: continue;
   4FCD 02 4C A0      [24] 2797 	ljmp	00192$
   4FD0                    2798 00150$:
                           2799 ;	radio/tdm.c:645: statistics.average_noise = (radio_current_rssi() + 3*(uint16_t)statistics.average_noise)/4;
   4FD0 12 30 9C      [24] 2800 	lcall	_radio_current_rssi
   4FD3 AF 82         [24] 2801 	mov	r7,dpl
   4FD5 7E 00         [12] 2802 	mov	r6,#0x00
   4FD7 78 41         [12] 2803 	mov	r0,#(_statistics + 0x0001)
   4FD9 E2            [24] 2804 	movx	a,@r0
   4FDA 90 05 CB      [24] 2805 	mov	dptr,#__mulint_PARM_2
   4FDD F0            [24] 2806 	movx	@dptr,a
   4FDE E4            [12] 2807 	clr	a
   4FDF A3            [24] 2808 	inc	dptr
   4FE0 F0            [24] 2809 	movx	@dptr,a
   4FE1 90 00 03      [24] 2810 	mov	dptr,#0x0003
   4FE4 C0 07         [24] 2811 	push	ar7
   4FE6 C0 06         [24] 2812 	push	ar6
   4FE8 12 5D C7      [24] 2813 	lcall	__mulint
   4FEB AC 82         [24] 2814 	mov	r4,dpl
   4FED AD 83         [24] 2815 	mov	r5,dph
   4FEF D0 06         [24] 2816 	pop	ar6
   4FF1 D0 07         [24] 2817 	pop	ar7
   4FF3 EC            [12] 2818 	mov	a,r4
   4FF4 2F            [12] 2819 	add	a,r7
   4FF5 FC            [12] 2820 	mov	r4,a
   4FF6 ED            [12] 2821 	mov	a,r5
   4FF7 3E            [12] 2822 	addc	a,r6
   4FF8 C3            [12] 2823 	clr	c
   4FF9 13            [12] 2824 	rrc	a
   4FFA CC            [12] 2825 	xch	a,r4
   4FFB 13            [12] 2826 	rrc	a
   4FFC CC            [12] 2827 	xch	a,r4
   4FFD C3            [12] 2828 	clr	c
   4FFE 13            [12] 2829 	rrc	a
   4FFF CC            [12] 2830 	xch	a,r4
   5000 13            [12] 2831 	rrc	a
   5001 CC            [12] 2832 	xch	a,r4
   5002 FD            [12] 2833 	mov	r5,a
   5003 78 41         [12] 2834 	mov	r0,#(_statistics + 0x0001)
   5005 EC            [12] 2835 	mov	a,r4
   5006 F2            [24] 2836 	movx	@r0,a
                           2837 ;	radio/tdm.c:647: if (duty_cycle_wait) {
   5007 30 2B 03      [24] 2838 	jnb	_duty_cycle_wait,00374$
   500A 02 4C A0      [24] 2839 	ljmp	00192$
   500D                    2840 00374$:
                           2841 ;	radio/tdm.c:654: if (tdm_state_remaining < packet_latency) {
   500D 78 B7         [12] 2842 	mov	r0,#_tdm_state_remaining
   500F 79 BE         [12] 2843 	mov	r1,#_packet_latency
   5011 C3            [12] 2844 	clr	c
   5012 E3            [24] 2845 	movx	a,@r1
   5013 F5 F0         [12] 2846 	mov	b,a
   5015 E2            [24] 2847 	movx	a,@r0
   5016 95 F0         [12] 2848 	subb	a,b
   5018 09            [12] 2849 	inc	r1
   5019 E3            [24] 2850 	movx	a,@r1
   501A F5 F0         [12] 2851 	mov	b,a
   501C 08            [12] 2852 	inc	r0
   501D E2            [24] 2853 	movx	a,@r0
   501E 95 F0         [12] 2854 	subb	a,b
   5020 50 03         [24] 2855 	jnc	00375$
   5022 02 4C A0      [24] 2856 	ljmp	00192$
   5025                    2857 00375$:
                           2858 ;	radio/tdm.c:658: max_xmit = (tdm_state_remaining - packet_latency) / ticks_per_byte;
   5025 78 B7         [12] 2859 	mov	r0,#_tdm_state_remaining
   5027 79 BE         [12] 2860 	mov	r1,#_packet_latency
   5029 E3            [24] 2861 	movx	a,@r1
   502A F5 F0         [12] 2862 	mov	b,a
   502C C3            [12] 2863 	clr	c
   502D E2            [24] 2864 	movx	a,@r0
   502E 95 F0         [12] 2865 	subb	a,b
   5030 FE            [12] 2866 	mov	r6,a
   5031 09            [12] 2867 	inc	r1
   5032 E3            [24] 2868 	movx	a,@r1
   5033 F5 F0         [12] 2869 	mov	b,a
   5035 08            [12] 2870 	inc	r0
   5036 E2            [24] 2871 	movx	a,@r0
   5037 95 F0         [12] 2872 	subb	a,b
   5039 FF            [12] 2873 	mov	r7,a
   503A 78 C0         [12] 2874 	mov	r0,#_ticks_per_byte
   503C 90 05 70      [24] 2875 	mov	dptr,#__divuint_PARM_2
   503F E2            [24] 2876 	movx	a,@r0
   5040 F0            [24] 2877 	movx	@dptr,a
   5041 08            [12] 2878 	inc	r0
   5042 E2            [24] 2879 	movx	a,@r0
   5043 A3            [24] 2880 	inc	dptr
   5044 F0            [24] 2881 	movx	@dptr,a
   5045 8E 82         [24] 2882 	mov	dpl,r6
   5047 8F 83         [24] 2883 	mov	dph,r7
   5049 12 56 AA      [24] 2884 	lcall	__divuint
   504C AE 82         [24] 2885 	mov	r6,dpl
   504E AF 83         [24] 2886 	mov	r7,dph
                           2887 ;	radio/tdm.c:659: if (max_xmit < sizeof(trailer)+1) {
   5050 BE 03 00      [24] 2888 	cjne	r6,#0x03,00376$
   5053                    2889 00376$:
   5053 50 03         [24] 2890 	jnc	00377$
   5055 02 4C A0      [24] 2891 	ljmp	00192$
   5058                    2892 00377$:
                           2893 ;	radio/tdm.c:663: max_xmit -= sizeof(trailer)+1;
   5058 1E            [12] 2894 	dec	r6
   5059 1E            [12] 2895 	dec	r6
   505A 1E            [12] 2896 	dec	r6
                           2897 ;	radio/tdm.c:664: if (max_xmit > max_data_packet_length) {
   505B 78 BB         [12] 2898 	mov	r0,#_max_data_packet_length
   505D C3            [12] 2899 	clr	c
   505E E2            [24] 2900 	movx	a,@r0
   505F 9E            [12] 2901 	subb	a,r6
   5060 50 04         [24] 2902 	jnc	00160$
                           2903 ;	radio/tdm.c:665: max_xmit = max_data_packet_length;
   5062 78 BB         [12] 2904 	mov	r0,#_max_data_packet_length
   5064 E2            [24] 2905 	movx	a,@r0
   5065 FE            [12] 2906 	mov	r6,a
   5066                    2907 00160$:
                           2908 ;	radio/tdm.c:669: if (send_at_command && 
   5066 30 2D 57      [24] 2909 	jnb	_send_at_command,00162$
                           2910 ;	radio/tdm.c:670: max_xmit >= strlen(remote_at_cmd)) {
   5069 90 00 D2      [24] 2911 	mov	dptr,#_remote_at_cmd
   506C 75 F0 60      [24] 2912 	mov	b,#0x60
   506F C0 06         [24] 2913 	push	ar6
   5071 12 63 4C      [24] 2914 	lcall	_strlen
   5074 AD 82         [24] 2915 	mov	r5,dpl
   5076 AF 83         [24] 2916 	mov	r7,dph
   5078 D0 06         [24] 2917 	pop	ar6
   507A 8E 03         [24] 2918 	mov	ar3,r6
   507C 7C 00         [12] 2919 	mov	r4,#0x00
   507E C3            [12] 2920 	clr	c
   507F EB            [12] 2921 	mov	a,r3
   5080 9D            [12] 2922 	subb	a,r5
   5081 EC            [12] 2923 	mov	a,r4
   5082 9F            [12] 2924 	subb	a,r7
   5083 40 3B         [24] 2925 	jc	00162$
                           2926 ;	radio/tdm.c:672: len = strlen(remote_at_cmd);
   5085 90 00 D2      [24] 2927 	mov	dptr,#_remote_at_cmd
   5088 75 F0 60      [24] 2928 	mov	b,#0x60
   508B C0 06         [24] 2929 	push	ar6
   508D 12 63 4C      [24] 2930 	lcall	_strlen
   5090 AD 82         [24] 2931 	mov	r5,dpl
   5092 78 E9         [12] 2932 	mov	r0,#_tdm_serial_loop_len_2_208
   5094 ED            [12] 2933 	mov	a,r5
   5095 F2            [24] 2934 	movx	@r0,a
                           2935 ;	radio/tdm.c:673: memcpy(pbuf, remote_at_cmd, len);
   5096 90 05 C1      [24] 2936 	mov	dptr,#_memcpy_PARM_2
   5099 74 D2         [12] 2937 	mov	a,#_remote_at_cmd
   509B F0            [24] 2938 	movx	@dptr,a
   509C E4            [12] 2939 	clr	a
   509D A3            [24] 2940 	inc	dptr
   509E F0            [24] 2941 	movx	@dptr,a
   509F 74 60         [12] 2942 	mov	a,#0x60
   50A1 A3            [24] 2943 	inc	dptr
   50A2 F0            [24] 2944 	movx	@dptr,a
   50A3 90 05 C4      [24] 2945 	mov	dptr,#_memcpy_PARM_3
   50A6 ED            [12] 2946 	mov	a,r5
   50A7 F0            [24] 2947 	movx	@dptr,a
   50A8 E4            [12] 2948 	clr	a
   50A9 A3            [24] 2949 	inc	dptr
   50AA F0            [24] 2950 	movx	@dptr,a
   50AB 90 04 72      [24] 2951 	mov	dptr,#_pbuf
   50AE 75 F0 00      [24] 2952 	mov	b,#0x00
   50B1 12 5C EF      [24] 2953 	lcall	_memcpy
   50B4 D0 06         [24] 2954 	pop	ar6
                           2955 ;	radio/tdm.c:674: trailer.command = 1;
   50B6 78 D1         [12] 2956 	mov	r0,#(_trailer + 0x0001)
   50B8 E2            [24] 2957 	movx	a,@r0
   50B9 44 20         [12] 2958 	orl	a,#0x20
   50BB F2            [24] 2959 	movx	@r0,a
                           2960 ;	radio/tdm.c:675: send_at_command = false;
   50BC C2 2D         [12] 2961 	clr	_send_at_command
   50BE 80 26         [24] 2962 	sjmp	00163$
   50C0                    2963 00162$:
                           2964 ;	radio/tdm.c:678: len = packet_get_next(max_xmit, pbuf);
   50C0 78 64         [12] 2965 	mov	r0,#_packet_get_next_PARM_2
   50C2 74 72         [12] 2966 	mov	a,#_pbuf
   50C4 F2            [24] 2967 	movx	@r0,a
   50C5 08            [12] 2968 	inc	r0
   50C6 74 04         [12] 2969 	mov	a,#(_pbuf >> 8)
   50C8 F2            [24] 2970 	movx	@r0,a
   50C9 8E 82         [24] 2971 	mov	dpl,r6
   50CB C0 06         [24] 2972 	push	ar6
   50CD 12 1F 98      [24] 2973 	lcall	_packet_get_next
   50D0 E5 82         [12] 2974 	mov	a,dpl
   50D2 78 E9         [12] 2975 	mov	r0,#_tdm_serial_loop_len_2_208
   50D4 F2            [24] 2976 	movx	@r0,a
                           2977 ;	radio/tdm.c:679: trailer.command = packet_is_injected();
   50D5 12 24 3A      [24] 2978 	lcall	_packet_is_injected
   50D8 D0 06         [24] 2979 	pop	ar6
   50DA 92 30         [24] 2980 	mov  _tdm_serial_loop_sloc0_1_0,c
   50DC E4            [12] 2981 	clr	a
   50DD 33            [12] 2982 	rlc	a
   50DE FF            [12] 2983 	mov	r7,a
   50DF 78 D1         [12] 2984 	mov	r0,#(_trailer + 0x0001)
   50E1 13            [12] 2985 	rrc	a
   50E2 E2            [24] 2986 	movx	a,@r0
   50E3 92 E5         [24] 2987 	mov	acc.5,c
   50E5 F2            [24] 2988 	movx	@r0,a
   50E6                    2989 00163$:
                           2990 ;	radio/tdm.c:682: if (len > max_data_packet_length) {
   50E6 78 E9         [12] 2991 	mov	r0,#_tdm_serial_loop_len_2_208
   50E8 79 BB         [12] 2992 	mov	r1,#_max_data_packet_length
   50EA C3            [12] 2993 	clr	c
   50EB E2            [24] 2994 	movx	a,@r0
   50EC F5 F0         [12] 2995 	mov	b,a
   50EE E3            [24] 2996 	movx	a,@r1
   50EF 95 F0         [12] 2997 	subb	a,b
   50F1 50 19         [24] 2998 	jnc	00166$
                           2999 ;	radio/tdm.c:683: panic("oversized tdm packet");
   50F3 C0 06         [24] 3000 	push	ar6
   50F5 74 B3         [12] 3001 	mov	a,#__str_8
   50F7 C0 E0         [24] 3002 	push	acc
   50F9 74 CC         [12] 3003 	mov	a,#(__str_8 >> 8)
   50FB C0 E0         [24] 3004 	push	acc
   50FD 74 80         [12] 3005 	mov	a,#0x80
   50FF C0 E0         [24] 3006 	push	acc
   5101 12 11 F8      [24] 3007 	lcall	_panic
   5104 15 81         [12] 3008 	dec	sp
   5106 15 81         [12] 3009 	dec	sp
   5108 15 81         [12] 3010 	dec	sp
   510A D0 06         [24] 3011 	pop	ar6
   510C                    3012 00166$:
                           3013 ;	radio/tdm.c:686: trailer.bonus = (tdm_state == TDM_RECEIVE);
   510C 78 B6         [12] 3014 	mov	r0,#_tdm_state
   510E E2            [24] 3015 	movx	a,@r0
   510F B4 02 03      [24] 3016 	cjne	a,#0x02,00382$
   5112 D3            [12] 3017 	setb	c
   5113 80 01         [24] 3018 	sjmp	00383$
   5115                    3019 00382$:
   5115 C3            [12] 3020 	clr	c
   5116                    3021 00383$:
   5116 92 30         [24] 3022 	mov  _tdm_serial_loop_sloc0_1_0,c
   5118 E4            [12] 3023 	clr	a
   5119 33            [12] 3024 	rlc	a
   511A 78 D1         [12] 3025 	mov	r0,#(_trailer + 0x0001)
   511C 13            [12] 3026 	rrc	a
   511D E2            [24] 3027 	movx	a,@r0
   511E 92 E6         [24] 3028 	mov	acc.6,c
   5120 F2            [24] 3029 	movx	@r0,a
                           3030 ;	radio/tdm.c:687: trailer.resend = packet_is_resend();
   5121 C0 06         [24] 3031 	push	ar6
   5123 12 24 37      [24] 3032 	lcall	_packet_is_resend
   5126 D0 06         [24] 3033 	pop	ar6
   5128 92 30         [24] 3034 	mov  _tdm_serial_loop_sloc0_1_0,c
   512A E4            [12] 3035 	clr	a
   512B 33            [12] 3036 	rlc	a
   512C FF            [12] 3037 	mov	r7,a
   512D 78 D1         [12] 3038 	mov	r0,#(_trailer + 0x0001)
   512F 13            [12] 3039 	rrc	a
   5130 E2            [24] 3040 	movx	a,@r0
   5131 92 E7         [24] 3041 	mov	acc.7,c
   5133 F2            [24] 3042 	movx	@r0,a
                           3043 ;	radio/tdm.c:689: if (tdm_state == TDM_TRANSMIT &&
   5134 78 B6         [12] 3044 	mov	r0,#_tdm_state
   5136 E2            [24] 3045 	movx	a,@r0
   5137 70 44         [24] 3046 	jnz	00168$
                           3047 ;	radio/tdm.c:690: len == 0 && 
   5139 78 E9         [12] 3048 	mov	r0,#_tdm_serial_loop_len_2_208
   513B E2            [24] 3049 	movx	a,@r0
   513C 70 3F         [24] 3050 	jnz	00168$
                           3051 ;	radio/tdm.c:691: send_statistics && 
   513E 30 2C 3C      [24] 3052 	jnb	_send_statistics,00168$
                           3053 ;	radio/tdm.c:692: max_xmit >= sizeof(statistics)) {
   5141 BE 04 00      [24] 3054 	cjne	r6,#0x04,00387$
   5144                    3055 00387$:
   5144 40 37         [24] 3056 	jc	00168$
                           3057 ;	radio/tdm.c:694: send_statistics = 0;
   5146 C2 2C         [12] 3058 	clr	_send_statistics
                           3059 ;	radio/tdm.c:695: memcpy(pbuf, &statistics, sizeof(statistics));
   5148 90 05 C1      [24] 3060 	mov	dptr,#_memcpy_PARM_2
   514B 74 40         [12] 3061 	mov	a,#_statistics
   514D F0            [24] 3062 	movx	@dptr,a
   514E E4            [12] 3063 	clr	a
   514F A3            [24] 3064 	inc	dptr
   5150 F0            [24] 3065 	movx	@dptr,a
   5151 74 60         [12] 3066 	mov	a,#0x60
   5153 A3            [24] 3067 	inc	dptr
   5154 F0            [24] 3068 	movx	@dptr,a
   5155 90 05 C4      [24] 3069 	mov	dptr,#_memcpy_PARM_3
   5158 74 04         [12] 3070 	mov	a,#0x04
   515A F0            [24] 3071 	movx	@dptr,a
   515B E4            [12] 3072 	clr	a
   515C A3            [24] 3073 	inc	dptr
   515D F0            [24] 3074 	movx	@dptr,a
   515E 90 04 72      [24] 3075 	mov	dptr,#_pbuf
   5161 75 F0 00      [24] 3076 	mov	b,#0x00
   5164 12 5C EF      [24] 3077 	lcall	_memcpy
                           3078 ;	radio/tdm.c:696: len = sizeof(statistics);
   5167 78 E9         [12] 3079 	mov	r0,#_tdm_serial_loop_len_2_208
   5169 74 04         [12] 3080 	mov	a,#0x04
   516B F2            [24] 3081 	movx	@r0,a
                           3082 ;	radio/tdm.c:699: trailer.window = 0;
   516C 78 D0         [12] 3083 	mov	r0,#_trailer
   516E E4            [12] 3084 	clr	a
   516F F2            [24] 3085 	movx	@r0,a
   5170 08            [12] 3086 	inc	r0
   5171 E2            [24] 3087 	movx	a,@r0
   5172 54 E0         [12] 3088 	anl	a,#0xE0
   5174 F2            [24] 3089 	movx	@r0,a
                           3090 ;	radio/tdm.c:700: trailer.resend = 0;
   5175 78 D1         [12] 3091 	mov	r0,#(_trailer + 0x0001)
   5177 E2            [24] 3092 	movx	a,@r0
   5178 54 7F         [12] 3093 	anl	a,#0x7F
   517A F2            [24] 3094 	movx	@r0,a
   517B 80 28         [24] 3095 	sjmp	00169$
   517D                    3096 00168$:
                           3097 ;	radio/tdm.c:705: trailer.window = (uint16_t)(tdm_state_remaining - flight_time_estimate(len+sizeof(trailer)));
   517D 78 E9         [12] 3098 	mov	r0,#_tdm_serial_loop_len_2_208
   517F E2            [24] 3099 	movx	a,@r0
   5180 24 02         [12] 3100 	add	a,#0x02
   5182 F5 82         [12] 3101 	mov	dpl,a
   5184 12 45 B9      [24] 3102 	lcall	_flight_time_estimate
   5187 AE 82         [24] 3103 	mov	r6,dpl
   5189 AF 83         [24] 3104 	mov	r7,dph
   518B 78 B7         [12] 3105 	mov	r0,#_tdm_state_remaining
   518D E2            [24] 3106 	movx	a,@r0
   518E C3            [12] 3107 	clr	c
   518F 9E            [12] 3108 	subb	a,r6
   5190 FE            [12] 3109 	mov	r6,a
   5191 08            [12] 3110 	inc	r0
   5192 E2            [24] 3111 	movx	a,@r0
   5193 9F            [12] 3112 	subb	a,r7
   5194 FF            [12] 3113 	mov	r7,a
   5195 78 D0         [12] 3114 	mov	r0,#_trailer
   5197 EE            [12] 3115 	mov	a,r6
   5198 F2            [24] 3116 	movx	@r0,a
   5199 08            [12] 3117 	inc	r0
   519A EF            [12] 3118 	mov	a,r7
   519B 54 1F         [12] 3119 	anl	a,#0x1F
   519D F5 F0         [12] 3120 	mov	b,a
   519F E2            [24] 3121 	movx	a,@r0
   51A0 54 E0         [12] 3122 	anl	a,#0xE0
   51A2 45 F0         [12] 3123 	orl	a,b
   51A4 F2            [24] 3124 	movx	@r0,a
   51A5                    3125 00169$:
                           3126 ;	radio/tdm.c:709: radio_set_channel(fhop_transmit_channel());
   51A5 12 0C 07      [24] 3127 	lcall	_fhop_transmit_channel
   51A8 12 35 75      [24] 3128 	lcall	_radio_set_channel
                           3129 ;	radio/tdm.c:711: memcpy(&pbuf[len], &trailer, sizeof(trailer));
   51AB 78 E9         [12] 3130 	mov	r0,#_tdm_serial_loop_len_2_208
   51AD E2            [24] 3131 	movx	a,@r0
   51AE 24 72         [12] 3132 	add	a,#_pbuf
   51B0 FE            [12] 3133 	mov	r6,a
   51B1 E4            [12] 3134 	clr	a
   51B2 34 04         [12] 3135 	addc	a,#(_pbuf >> 8)
   51B4 FF            [12] 3136 	mov	r7,a
   51B5 7D 00         [12] 3137 	mov	r5,#0x00
   51B7 90 05 C1      [24] 3138 	mov	dptr,#_memcpy_PARM_2
   51BA 74 D0         [12] 3139 	mov	a,#_trailer
   51BC F0            [24] 3140 	movx	@dptr,a
   51BD E4            [12] 3141 	clr	a
   51BE A3            [24] 3142 	inc	dptr
   51BF F0            [24] 3143 	movx	@dptr,a
   51C0 74 60         [12] 3144 	mov	a,#0x60
   51C2 A3            [24] 3145 	inc	dptr
   51C3 F0            [24] 3146 	movx	@dptr,a
   51C4 90 05 C4      [24] 3147 	mov	dptr,#_memcpy_PARM_3
   51C7 74 02         [12] 3148 	mov	a,#0x02
   51C9 F0            [24] 3149 	movx	@dptr,a
   51CA E4            [12] 3150 	clr	a
   51CB A3            [24] 3151 	inc	dptr
   51CC F0            [24] 3152 	movx	@dptr,a
   51CD 8E 82         [24] 3153 	mov	dpl,r6
   51CF 8F 83         [24] 3154 	mov	dph,r7
   51D1 8D F0         [24] 3155 	mov	b,r5
   51D3 12 5C EF      [24] 3156 	lcall	_memcpy
                           3157 ;	radio/tdm.c:713: if (len != 0 && trailer.window != 0) {
   51D6 78 E9         [12] 3158 	mov	r0,#_tdm_serial_loop_len_2_208
   51D8 E2            [24] 3159 	movx	a,@r0
   51D9 60 0E         [24] 3160 	jz	00174$
   51DB 78 D0         [12] 3161 	mov	r0,#_trailer
   51DD E2            [24] 3162 	movx	a,@r0
   51DE FE            [12] 3163 	mov	r6,a
   51DF 08            [12] 3164 	inc	r0
   51E0 E2            [24] 3165 	movx	a,@r0
   51E1 54 1F         [12] 3166 	anl	a,#0x1F
   51E3 FF            [12] 3167 	mov	r7,a
   51E4 4E            [12] 3168 	orl	a,r6
   51E5 60 02         [24] 3169 	jz	00174$
                           3170 ;	radio/tdm.c:715: LED_ACTIVITY = LED_ON;
   51E7 C2 A0         [12] 3171 	clr	_LED_RED
   51E9                    3172 00174$:
                           3173 ;	radio/tdm.c:718: if (len == 0) {
   51E9 78 E9         [12] 3174 	mov	r0,#_tdm_serial_loop_len_2_208
   51EB E2            [24] 3175 	movx	a,@r0
   51EC 70 02         [24] 3176 	jnz	00177$
                           3177 ;	radio/tdm.c:722: transmit_yield = 1;
   51EE D2 28         [12] 3178 	setb	_transmit_yield
   51F0                    3179 00177$:
                           3180 ;	radio/tdm.c:728: transmit_wait = packet_latency;
   51F0 78 BE         [12] 3181 	mov	r0,#_packet_latency
   51F2 E2            [24] 3182 	movx	a,@r0
   51F3 FE            [12] 3183 	mov	r6,a
   51F4 08            [12] 3184 	inc	r0
   51F5 E2            [24] 3185 	movx	a,@r0
   51F6 FF            [12] 3186 	mov	r7,a
   51F7 78 C2         [12] 3187 	mov	r0,#_transmit_wait
   51F9 EE            [12] 3188 	mov	a,r6
   51FA F2            [24] 3189 	movx	@r0,a
   51FB 08            [12] 3190 	inc	r0
   51FC EF            [12] 3191 	mov	a,r7
   51FD F2            [24] 3192 	movx	@r0,a
                           3193 ;	radio/tdm.c:732: if ((duty_cycle - duty_cycle_offset) != 100) {
   51FE 78 C4         [12] 3194 	mov	r0,#_duty_cycle
   5200 E2            [24] 3195 	movx	a,@r0
   5201 FE            [12] 3196 	mov	r6,a
   5202 7F 00         [12] 3197 	mov	r7,#0x00
   5204 78 C5         [12] 3198 	mov	r0,#_duty_cycle_offset
   5206 E2            [24] 3199 	movx	a,@r0
   5207 FC            [12] 3200 	mov	r4,a
   5208 7D 00         [12] 3201 	mov	r5,#0x00
   520A EE            [12] 3202 	mov	a,r6
   520B C3            [12] 3203 	clr	c
   520C 9C            [12] 3204 	subb	a,r4
   520D FE            [12] 3205 	mov	r6,a
   520E EF            [12] 3206 	mov	a,r7
   520F 9D            [12] 3207 	subb	a,r5
   5210 FF            [12] 3208 	mov	r7,a
   5211 BE 64 05      [24] 3209 	cjne	r6,#0x64,00392$
   5214 BF 00 02      [24] 3210 	cjne	r7,#0x00,00392$
   5217 80 17         [24] 3211 	sjmp	00179$
   5219                    3212 00392$:
                           3213 ;	radio/tdm.c:733: transmitted_ticks += flight_time_estimate(len+sizeof(trailer));
   5219 78 E9         [12] 3214 	mov	r0,#_tdm_serial_loop_len_2_208
   521B E2            [24] 3215 	movx	a,@r0
   521C 24 02         [12] 3216 	add	a,#0x02
   521E F5 82         [12] 3217 	mov	dpl,a
   5220 12 45 B9      [24] 3218 	lcall	_flight_time_estimate
   5223 AE 82         [24] 3219 	mov	r6,dpl
   5225 AF 83         [24] 3220 	mov	r7,dph
   5227 78 C6         [12] 3221 	mov	r0,#_transmitted_ticks
   5229 E2            [24] 3222 	movx	a,@r0
   522A 2E            [12] 3223 	add	a,r6
   522B F2            [24] 3224 	movx	@r0,a
   522C 08            [12] 3225 	inc	r0
   522D E2            [24] 3226 	movx	a,@r0
   522E 3F            [12] 3227 	addc	a,r7
   522F F2            [24] 3228 	movx	@r0,a
   5230                    3229 00179$:
                           3230 ;	radio/tdm.c:737: if (!radio_transmit(len + sizeof(trailer), pbuf, tdm_state_remaining + (silence_period/2)) &&
   5230 78 E9         [12] 3231 	mov	r0,#_tdm_serial_loop_len_2_208
   5232 E2            [24] 3232 	movx	a,@r0
   5233 24 02         [12] 3233 	add	a,#0x02
   5235 FF            [12] 3234 	mov	r7,a
   5236 78 BC         [12] 3235 	mov	r0,#_silence_period
   5238 E2            [24] 3236 	movx	a,@r0
   5239 FD            [12] 3237 	mov	r5,a
   523A 08            [12] 3238 	inc	r0
   523B E2            [24] 3239 	movx	a,@r0
   523C C3            [12] 3240 	clr	c
   523D 13            [12] 3241 	rrc	a
   523E CD            [12] 3242 	xch	a,r5
   523F 13            [12] 3243 	rrc	a
   5240 CD            [12] 3244 	xch	a,r5
   5241 FE            [12] 3245 	mov	r6,a
   5242 78 B7         [12] 3246 	mov	r0,#_tdm_state_remaining
   5244 E2            [24] 3247 	movx	a,@r0
   5245 2D            [12] 3248 	add	a,r5
   5246 FD            [12] 3249 	mov	r5,a
   5247 08            [12] 3250 	inc	r0
   5248 E2            [24] 3251 	movx	a,@r0
   5249 3E            [12] 3252 	addc	a,r6
   524A FE            [12] 3253 	mov	r6,a
   524B 78 96         [12] 3254 	mov	r0,#_radio_transmit_PARM_2
   524D 74 72         [12] 3255 	mov	a,#_pbuf
   524F F2            [24] 3256 	movx	@r0,a
   5250 08            [12] 3257 	inc	r0
   5251 74 04         [12] 3258 	mov	a,#(_pbuf >> 8)
   5253 F2            [24] 3259 	movx	@r0,a
   5254 78 98         [12] 3260 	mov	r0,#_radio_transmit_PARM_3
   5256 ED            [12] 3261 	mov	a,r5
   5257 F2            [24] 3262 	movx	@r0,a
   5258 08            [12] 3263 	inc	r0
   5259 EE            [12] 3264 	mov	a,r6
   525A F2            [24] 3265 	movx	@r0,a
   525B 8F 82         [24] 3266 	mov	dpl,r7
   525D 12 33 E8      [24] 3267 	lcall	_radio_transmit
   5260 40 1A         [24] 3268 	jc	00181$
                           3269 ;	radio/tdm.c:738: len != 0 && trailer.window != 0 && trailer.command == 0) {
   5262 78 E9         [12] 3270 	mov	r0,#_tdm_serial_loop_len_2_208
   5264 E2            [24] 3271 	movx	a,@r0
   5265 60 15         [24] 3272 	jz	00181$
   5267 78 D0         [12] 3273 	mov	r0,#_trailer
   5269 E2            [24] 3274 	movx	a,@r0
   526A FE            [12] 3275 	mov	r6,a
   526B 08            [12] 3276 	inc	r0
   526C E2            [24] 3277 	movx	a,@r0
   526D 54 1F         [12] 3278 	anl	a,#0x1F
   526F FF            [12] 3279 	mov	r7,a
   5270 4E            [12] 3280 	orl	a,r6
   5271 60 09         [24] 3281 	jz	00181$
   5273 78 D1         [12] 3282 	mov	r0,#(_trailer + 0x0001)
   5275 E2            [24] 3283 	movx	a,@r0
   5276 20 E5 03      [24] 3284 	jb	acc.5,00181$
                           3285 ;	radio/tdm.c:739: packet_force_resend();
   5279 12 24 3D      [24] 3286 	lcall	_packet_force_resend
   527C                    3287 00181$:
                           3288 ;	radio/tdm.c:742: if (lbt_rssi != 0) {
   527C 78 C8         [12] 3289 	mov	r0,#_lbt_rssi
   527E E2            [24] 3290 	movx	a,@r0
   527F 60 0C         [24] 3291 	jz	00186$
                           3292 ;	radio/tdm.c:744: lbt_listen_time = 0;
   5281 78 C9         [12] 3293 	mov	r0,#_lbt_listen_time
   5283 E4            [12] 3294 	clr	a
   5284 F2            [24] 3295 	movx	@r0,a
   5285 08            [12] 3296 	inc	r0
   5286 F2            [24] 3297 	movx	@r0,a
                           3298 ;	radio/tdm.c:745: lbt_rand = 0;
   5287 78 CD         [12] 3299 	mov	r0,#_lbt_rand
   5289 E4            [12] 3300 	clr	a
   528A F2            [24] 3301 	movx	@r0,a
   528B 08            [12] 3302 	inc	r0
   528C F2            [24] 3303 	movx	@r0,a
   528D                    3304 00186$:
                           3305 ;	radio/tdm.c:749: radio_set_channel(fhop_receive_channel());
   528D 12 0C 17      [24] 3306 	lcall	_fhop_receive_channel
   5290 12 35 75      [24] 3307 	lcall	_radio_set_channel
                           3308 ;	radio/tdm.c:752: radio_receiver_on();
   5293 12 34 40      [24] 3309 	lcall	_radio_receiver_on
                           3310 ;	radio/tdm.c:754: if (len != 0 && trailer.window != 0) {
   5296 78 E9         [12] 3311 	mov	r0,#_tdm_serial_loop_len_2_208
   5298 E2            [24] 3312 	movx	a,@r0
   5299 70 03         [24] 3313 	jnz	00398$
   529B 02 4C A0      [24] 3314 	ljmp	00192$
   529E                    3315 00398$:
   529E 78 D0         [12] 3316 	mov	r0,#_trailer
   52A0 E2            [24] 3317 	movx	a,@r0
   52A1 FE            [12] 3318 	mov	r6,a
   52A2 08            [12] 3319 	inc	r0
   52A3 E2            [24] 3320 	movx	a,@r0
   52A4 54 1F         [12] 3321 	anl	a,#0x1F
   52A6 FF            [12] 3322 	mov	r7,a
   52A7 4E            [12] 3323 	orl	a,r6
   52A8 70 03         [24] 3324 	jnz	00399$
   52AA 02 4C A0      [24] 3325 	ljmp	00192$
   52AD                    3326 00399$:
                           3327 ;	radio/tdm.c:755: LED_ACTIVITY = LED_OFF;
   52AD D2 A0         [12] 3328 	setb	_LED_RED
   52AF 02 4C A0      [24] 3329 	ljmp	00192$
                           3330 ;------------------------------------------------------------
                           3331 ;Allocation info for local variables in function 'tdm_init'
                           3332 ;------------------------------------------------------------
                           3333 ;sloc0                     Allocated with name '_tdm_init_sloc0_1_0'
                           3334 ;------------------------------------------------------------
                           3335 ;	radio/tdm.c:873: tdm_init(void)
                           3336 ;	-----------------------------------------
                           3337 ;	 function tdm_init
                           3338 ;	-----------------------------------------
   52B2                    3339 _tdm_init:
                           3340 ;	radio/tdm.c:876: __pdata uint8_t air_rate = radio_air_rate();
   52B2 12 30 A2      [24] 3341 	lcall	_radio_air_rate
   52B5 AF 82         [24] 3342 	mov	r7,dpl
                           3343 ;	radio/tdm.c:885: ticks_per_byte = (8+(8000000UL/(air_rate*1000UL)))/16;
   52B7 90 05 D7      [24] 3344 	mov	dptr,#__mullong_PARM_2
   52BA EF            [12] 3345 	mov	a,r7
   52BB F0            [24] 3346 	movx	@dptr,a
   52BC E4            [12] 3347 	clr	a
   52BD A3            [24] 3348 	inc	dptr
   52BE F0            [24] 3349 	movx	@dptr,a
   52BF E4            [12] 3350 	clr	a
   52C0 A3            [24] 3351 	inc	dptr
   52C1 F0            [24] 3352 	movx	@dptr,a
   52C2 E4            [12] 3353 	clr	a
   52C3 A3            [24] 3354 	inc	dptr
   52C4 F0            [24] 3355 	movx	@dptr,a
   52C5 90 03 E8      [24] 3356 	mov	dptr,#0x03E8
   52C8 E4            [12] 3357 	clr	a
   52C9 F5 F0         [12] 3358 	mov	b,a
   52CB 12 5E E4      [24] 3359 	lcall	__mullong
   52CE AC 82         [24] 3360 	mov	r4,dpl
   52D0 AD 83         [24] 3361 	mov	r5,dph
   52D2 AE F0         [24] 3362 	mov	r6,b
   52D4 FF            [12] 3363 	mov	r7,a
   52D5 90 05 B2      [24] 3364 	mov	dptr,#__divulong_PARM_2
   52D8 EC            [12] 3365 	mov	a,r4
   52D9 F0            [24] 3366 	movx	@dptr,a
   52DA ED            [12] 3367 	mov	a,r5
   52DB A3            [24] 3368 	inc	dptr
   52DC F0            [24] 3369 	movx	@dptr,a
   52DD EE            [12] 3370 	mov	a,r6
   52DE A3            [24] 3371 	inc	dptr
   52DF F0            [24] 3372 	movx	@dptr,a
   52E0 EF            [12] 3373 	mov	a,r7
   52E1 A3            [24] 3374 	inc	dptr
   52E2 F0            [24] 3375 	movx	@dptr,a
   52E3 90 12 00      [24] 3376 	mov	dptr,#0x1200
   52E6 75 F0 7A      [24] 3377 	mov	b,#0x7A
   52E9 E4            [12] 3378 	clr	a
   52EA 12 5B 86      [24] 3379 	lcall	__divulong
   52ED AC 82         [24] 3380 	mov	r4,dpl
   52EF AD 83         [24] 3381 	mov	r5,dph
   52F1 AE F0         [24] 3382 	mov	r6,b
   52F3 FF            [12] 3383 	mov	r7,a
   52F4 74 08         [12] 3384 	mov	a,#0x08
   52F6 2C            [12] 3385 	add	a,r4
   52F7 FC            [12] 3386 	mov	r4,a
   52F8 E4            [12] 3387 	clr	a
   52F9 3D            [12] 3388 	addc	a,r5
   52FA FD            [12] 3389 	mov	r5,a
   52FB E4            [12] 3390 	clr	a
   52FC 3E            [12] 3391 	addc	a,r6
   52FD FE            [12] 3392 	mov	r6,a
   52FE E4            [12] 3393 	clr	a
   52FF 3F            [12] 3394 	addc	a,r7
   5300 FF            [12] 3395 	mov	r7,a
   5301 ED            [12] 3396 	mov	a,r5
   5302 C4            [12] 3397 	swap	a
   5303 CC            [12] 3398 	xch	a,r4
   5304 C4            [12] 3399 	swap	a
   5305 54 0F         [12] 3400 	anl	a,#0x0F
   5307 6C            [12] 3401 	xrl	a,r4
   5308 CC            [12] 3402 	xch	a,r4
   5309 54 0F         [12] 3403 	anl	a,#0x0F
   530B CC            [12] 3404 	xch	a,r4
   530C 6C            [12] 3405 	xrl	a,r4
   530D CC            [12] 3406 	xch	a,r4
   530E FD            [12] 3407 	mov	r5,a
   530F EE            [12] 3408 	mov	a,r6
   5310 C4            [12] 3409 	swap	a
   5311 54 F0         [12] 3410 	anl	a,#0xF0
   5313 4D            [12] 3411 	orl	a,r5
   5314 FD            [12] 3412 	mov	r5,a
   5315 EF            [12] 3413 	mov	a,r7
   5316 C4            [12] 3414 	swap	a
   5317 CE            [12] 3415 	xch	a,r6
   5318 C4            [12] 3416 	swap	a
   5319 54 0F         [12] 3417 	anl	a,#0x0F
   531B 6E            [12] 3418 	xrl	a,r6
   531C CE            [12] 3419 	xch	a,r6
   531D 54 0F         [12] 3420 	anl	a,#0x0F
   531F CE            [12] 3421 	xch	a,r6
   5320 6E            [12] 3422 	xrl	a,r6
   5321 CE            [12] 3423 	xch	a,r6
   5322 78 C0         [12] 3424 	mov	r0,#_ticks_per_byte
   5324 EC            [12] 3425 	mov	a,r4
   5325 F2            [24] 3426 	movx	@r0,a
   5326 08            [12] 3427 	inc	r0
   5327 ED            [12] 3428 	mov	a,r5
   5328 F2            [24] 3429 	movx	@r0,a
                           3430 ;	radio/tdm.c:892: packet_latency = (8+(10/2)) * ticks_per_byte + 13;
   5329 90 05 CB      [24] 3431 	mov	dptr,#__mulint_PARM_2
   532C EC            [12] 3432 	mov	a,r4
   532D F0            [24] 3433 	movx	@dptr,a
   532E ED            [12] 3434 	mov	a,r5
   532F A3            [24] 3435 	inc	dptr
   5330 F0            [24] 3436 	movx	@dptr,a
   5331 90 00 0D      [24] 3437 	mov	dptr,#0x000D
   5334 C0 05         [24] 3438 	push	ar5
   5336 C0 04         [24] 3439 	push	ar4
   5338 12 5D C7      [24] 3440 	lcall	__mulint
   533B E5 82         [12] 3441 	mov	a,dpl
   533D 85 83 F0      [24] 3442 	mov	b,dph
   5340 D0 04         [24] 3443 	pop	ar4
   5342 D0 05         [24] 3444 	pop	ar5
   5344 24 0D         [12] 3445 	add	a,#0x0D
   5346 FE            [12] 3446 	mov	r6,a
   5347 E4            [12] 3447 	clr	a
   5348 35 F0         [12] 3448 	addc	a,b
   534A FF            [12] 3449 	mov	r7,a
   534B 78 BE         [12] 3450 	mov	r0,#_packet_latency
   534D EE            [12] 3451 	mov	a,r6
   534E F2            [24] 3452 	movx	@r0,a
   534F 08            [12] 3453 	inc	r0
   5350 EF            [12] 3454 	mov	a,r7
   5351 F2            [24] 3455 	movx	@r0,a
                           3456 ;	radio/tdm.c:894: if (feature_golay) {
   5352 30 04 2E      [24] 3457 	jnb	_feature_golay,00102$
                           3458 ;	radio/tdm.c:895: max_data_packet_length = (MAX_PACKET_LENGTH/2) - (6+sizeof(trailer));
   5355 78 BB         [12] 3459 	mov	r0,#_max_data_packet_length
   5357 74 76         [12] 3460 	mov	a,#0x76
   5359 F2            [24] 3461 	movx	@r0,a
                           3462 ;	radio/tdm.c:898: ticks_per_byte *= 2;
   535A ED            [12] 3463 	mov	a,r5
   535B CC            [12] 3464 	xch	a,r4
   535C 25 E0         [12] 3465 	add	a,acc
   535E CC            [12] 3466 	xch	a,r4
   535F 33            [12] 3467 	rlc	a
   5360 FD            [12] 3468 	mov	r5,a
   5361 78 C0         [12] 3469 	mov	r0,#_ticks_per_byte
   5363 EC            [12] 3470 	mov	a,r4
   5364 F2            [24] 3471 	movx	@r0,a
   5365 08            [12] 3472 	inc	r0
   5366 ED            [12] 3473 	mov	a,r5
   5367 F2            [24] 3474 	movx	@r0,a
                           3475 ;	radio/tdm.c:901: packet_latency += 4*ticks_per_byte;
   5368 ED            [12] 3476 	mov	a,r5
   5369 CC            [12] 3477 	xch	a,r4
   536A 25 E0         [12] 3478 	add	a,acc
   536C CC            [12] 3479 	xch	a,r4
   536D 33            [12] 3480 	rlc	a
   536E CC            [12] 3481 	xch	a,r4
   536F 25 E0         [12] 3482 	add	a,acc
   5371 CC            [12] 3483 	xch	a,r4
   5372 33            [12] 3484 	rlc	a
   5373 FD            [12] 3485 	mov	r5,a
   5374 EC            [12] 3486 	mov	a,r4
   5375 2E            [12] 3487 	add	a,r6
   5376 FE            [12] 3488 	mov	r6,a
   5377 ED            [12] 3489 	mov	a,r5
   5378 3F            [12] 3490 	addc	a,r7
   5379 FF            [12] 3491 	mov	r7,a
   537A 78 BE         [12] 3492 	mov	r0,#_packet_latency
   537C EE            [12] 3493 	mov	a,r6
   537D F2            [24] 3494 	movx	@r0,a
   537E 08            [12] 3495 	inc	r0
   537F EF            [12] 3496 	mov	a,r7
   5380 F2            [24] 3497 	movx	@r0,a
   5381 80 05         [24] 3498 	sjmp	00103$
   5383                    3499 00102$:
                           3500 ;	radio/tdm.c:903: max_data_packet_length = MAX_PACKET_LENGTH - sizeof(trailer);
   5383 78 BB         [12] 3501 	mov	r0,#_max_data_packet_length
   5385 74 FA         [12] 3502 	mov	a,#0xFA
   5387 F2            [24] 3503 	movx	@r0,a
   5388                    3504 00103$:
                           3505 ;	radio/tdm.c:907: silence_period = 2*packet_latency;
   5388 78 BE         [12] 3506 	mov	r0,#_packet_latency
   538A 79 BC         [12] 3507 	mov	r1,#_silence_period
   538C E2            [24] 3508 	movx	a,@r0
   538D F3            [24] 3509 	movx	@r1,a
   538E 08            [12] 3510 	inc	r0
   538F E2            [24] 3511 	movx	a,@r0
   5390 F5 F0         [12] 3512 	mov	b,a
   5392 E3            [24] 3513 	movx	a,@r1
   5393 25 E0         [12] 3514 	add	a,acc
   5395 C5 F0         [12] 3515 	xch	a,b
   5397 33            [12] 3516 	rlc	a
   5398 C5 F0         [12] 3517 	xch	a,b
   539A F3            [24] 3518 	movx	@r1,a
   539B 09            [12] 3519 	inc	r1
   539C E5 F0         [12] 3520 	mov	a,b
   539E F3            [24] 3521 	movx	@r1,a
                           3522 ;	radio/tdm.c:910: window_width = 3*(packet_latency+(max_data_packet_length*(uint32_t)ticks_per_byte));
   539F 78 C0         [12] 3523 	mov	r0,#_ticks_per_byte
   53A1 90 05 D7      [24] 3524 	mov	dptr,#__mullong_PARM_2
   53A4 E2            [24] 3525 	movx	a,@r0
   53A5 F0            [24] 3526 	movx	@dptr,a
   53A6 08            [12] 3527 	inc	r0
   53A7 E2            [24] 3528 	movx	a,@r0
   53A8 A3            [24] 3529 	inc	dptr
   53A9 F0            [24] 3530 	movx	@dptr,a
   53AA E4            [12] 3531 	clr	a
   53AB A3            [24] 3532 	inc	dptr
   53AC F0            [24] 3533 	movx	@dptr,a
   53AD E4            [12] 3534 	clr	a
   53AE A3            [24] 3535 	inc	dptr
   53AF F0            [24] 3536 	movx	@dptr,a
   53B0 78 BB         [12] 3537 	mov	r0,#_max_data_packet_length
   53B2 E2            [24] 3538 	movx	a,@r0
   53B3 FC            [12] 3539 	mov	r4,a
   53B4 7D 00         [12] 3540 	mov	r5,#0x00
   53B6 7E 00         [12] 3541 	mov	r6,#0x00
   53B8 7F 00         [12] 3542 	mov	r7,#0x00
   53BA 8C 82         [24] 3543 	mov	dpl,r4
   53BC 8D 83         [24] 3544 	mov	dph,r5
   53BE 8E F0         [24] 3545 	mov	b,r6
   53C0 EF            [12] 3546 	mov	a,r7
   53C1 12 5E E4      [24] 3547 	lcall	__mullong
   53C4 85 82 6C      [24] 3548 	mov	_tdm_init_sloc0_1_0,dpl
   53C7 85 83 6D      [24] 3549 	mov	(_tdm_init_sloc0_1_0 + 1),dph
   53CA 85 F0 6E      [24] 3550 	mov	(_tdm_init_sloc0_1_0 + 2),b
   53CD F5 6F         [12] 3551 	mov	(_tdm_init_sloc0_1_0 + 3),a
   53CF 78 BE         [12] 3552 	mov	r0,#_packet_latency
   53D1 E2            [24] 3553 	movx	a,@r0
   53D2 FA            [12] 3554 	mov	r2,a
   53D3 08            [12] 3555 	inc	r0
   53D4 E2            [24] 3556 	movx	a,@r0
   53D5 FB            [12] 3557 	mov	r3,a
   53D6 7E 00         [12] 3558 	mov	r6,#0x00
   53D8 7F 00         [12] 3559 	mov	r7,#0x00
   53DA 90 05 D7      [24] 3560 	mov	dptr,#__mullong_PARM_2
   53DD E5 6C         [12] 3561 	mov	a,_tdm_init_sloc0_1_0
   53DF 2A            [12] 3562 	add	a,r2
   53E0 F0            [24] 3563 	movx	@dptr,a
   53E1 E5 6D         [12] 3564 	mov	a,(_tdm_init_sloc0_1_0 + 1)
   53E3 3B            [12] 3565 	addc	a,r3
   53E4 A3            [24] 3566 	inc	dptr
   53E5 F0            [24] 3567 	movx	@dptr,a
   53E6 E5 6E         [12] 3568 	mov	a,(_tdm_init_sloc0_1_0 + 2)
   53E8 3E            [12] 3569 	addc	a,r6
   53E9 A3            [24] 3570 	inc	dptr
   53EA F0            [24] 3571 	movx	@dptr,a
   53EB E5 6F         [12] 3572 	mov	a,(_tdm_init_sloc0_1_0 + 3)
   53ED 3F            [12] 3573 	addc	a,r7
   53EE A3            [24] 3574 	inc	dptr
   53EF F0            [24] 3575 	movx	@dptr,a
   53F0 90 00 03      [24] 3576 	mov	dptr,#(0x03&0x00ff)
   53F3 E4            [12] 3577 	clr	a
   53F4 F5 F0         [12] 3578 	mov	b,a
   53F6 12 5E E4      [24] 3579 	lcall	__mullong
   53F9 AC 82         [24] 3580 	mov	r4,dpl
   53FB AD 83         [24] 3581 	mov	r5,dph
   53FD AE F0         [24] 3582 	mov	r6,b
   53FF FF            [12] 3583 	mov	r7,a
                           3584 ;	radio/tdm.c:913: if (lbt_rssi != 0) {
   5400 78 C8         [12] 3585 	mov	r0,#_lbt_rssi
   5402 E2            [24] 3586 	movx	a,@r0
   5403 60 35         [24] 3587 	jz	00105$
                           3588 ;	radio/tdm.c:915: lbt_min_time = LBT_MIN_TIME_USEC/16;
   5405 78 CB         [12] 3589 	mov	r0,#_lbt_min_time
   5407 74 38         [12] 3590 	mov	a,#0x38
   5409 F2            [24] 3591 	movx	@r0,a
   540A 08            [12] 3592 	inc	r0
   540B 74 01         [12] 3593 	mov	a,#0x01
   540D F2            [24] 3594 	movx	@r0,a
                           3595 ;	radio/tdm.c:916: window_width = constrain(window_width, 3*lbt_min_time, window_width);
   540E 78 6F         [12] 3596 	mov	r0,#_constrain_PARM_2
   5410 74 A8         [12] 3597 	mov	a,#0xA8
   5412 F2            [24] 3598 	movx	@r0,a
   5413 08            [12] 3599 	inc	r0
   5414 74 03         [12] 3600 	mov	a,#0x03
   5416 F2            [24] 3601 	movx	@r0,a
   5417 08            [12] 3602 	inc	r0
   5418 E4            [12] 3603 	clr	a
   5419 F2            [24] 3604 	movx	@r0,a
   541A 08            [12] 3605 	inc	r0
   541B F2            [24] 3606 	movx	@r0,a
   541C 78 73         [12] 3607 	mov	r0,#_constrain_PARM_3
   541E EC            [12] 3608 	mov	a,r4
   541F F2            [24] 3609 	movx	@r0,a
   5420 08            [12] 3610 	inc	r0
   5421 ED            [12] 3611 	mov	a,r5
   5422 F2            [24] 3612 	movx	@r0,a
   5423 08            [12] 3613 	inc	r0
   5424 EE            [12] 3614 	mov	a,r6
   5425 F2            [24] 3615 	movx	@r0,a
   5426 08            [12] 3616 	inc	r0
   5427 EF            [12] 3617 	mov	a,r7
   5428 F2            [24] 3618 	movx	@r0,a
   5429 8C 82         [24] 3619 	mov	dpl,r4
   542B 8D 83         [24] 3620 	mov	dph,r5
   542D 8E F0         [24] 3621 	mov	b,r6
   542F EF            [12] 3622 	mov	a,r7
   5430 12 2A 72      [24] 3623 	lcall	_constrain
   5433 AC 82         [24] 3624 	mov	r4,dpl
   5435 AD 83         [24] 3625 	mov	r5,dph
   5437 AE F0         [24] 3626 	mov	r6,b
   5439 FF            [12] 3627 	mov	r7,a
   543A                    3628 00105$:
                           3629 ;	radio/tdm.c:921: if (window_width >= REGULATORY_MAX_WINDOW) {
   543A C3            [12] 3630 	clr	c
   543B EC            [12] 3631 	mov	a,r4
   543C 94 A8         [12] 3632 	subb	a,#0xA8
   543E ED            [12] 3633 	mov	a,r5
   543F 94 61         [12] 3634 	subb	a,#0x61
   5441 EE            [12] 3635 	mov	a,r6
   5442 94 00         [12] 3636 	subb	a,#0x00
   5444 EF            [12] 3637 	mov	a,r7
   5445 94 00         [12] 3638 	subb	a,#0x00
   5447 40 08         [24] 3639 	jc	00108$
                           3640 ;	radio/tdm.c:922: window_width = REGULATORY_MAX_WINDOW;
   5449 7C A8         [12] 3641 	mov	r4,#0xA8
   544B 7D 61         [12] 3642 	mov	r5,#0x61
   544D 7E 00         [12] 3643 	mov	r6,#0x00
   544F 7F 00         [12] 3644 	mov	r7,#0x00
                           3645 ;	radio/tdm.c:926: while (window_width > 0x1FFF) {
   5451                    3646 00108$:
   5451 ED            [12] 3647 	mov	a,r5
   5452 54 E0         [12] 3648 	anl	a,#0xE0
   5454 70 06         [24] 3649 	jnz	00136$
   5456 EE            [12] 3650 	mov	a,r6
   5457 70 03         [24] 3651 	jnz	00136$
   5459 EF            [12] 3652 	mov	a,r7
   545A 60 0A         [24] 3653 	jz	00110$
   545C                    3654 00136$:
                           3655 ;	radio/tdm.c:927: window_width = 0x1FFF;
   545C 7C FF         [12] 3656 	mov	r4,#0xFF
   545E 7D 1F         [12] 3657 	mov	r5,#0x1F
   5460 7E 00         [12] 3658 	mov	r6,#0x00
   5462 7F 00         [12] 3659 	mov	r7,#0x00
   5464 80 EB         [24] 3660 	sjmp	00108$
   5466                    3661 00110$:
                           3662 ;	radio/tdm.c:930: tx_window_width = window_width;
   5466 78 B9         [12] 3663 	mov	r0,#_tx_window_width
   5468 EC            [12] 3664 	mov	a,r4
   5469 F2            [24] 3665 	movx	@r0,a
   546A 08            [12] 3666 	inc	r0
   546B ED            [12] 3667 	mov	a,r5
   546C F2            [24] 3668 	movx	@r0,a
                           3669 ;	radio/tdm.c:935: packet_latency += ((settings.preamble_length-10)/2) * ticks_per_byte;
   546D 78 89         [12] 3670 	mov	r0,#(_settings + 0x000b)
   546F E2            [24] 3671 	movx	a,@r0
   5470 7E 00         [12] 3672 	mov	r6,#0x00
   5472 24 F6         [12] 3673 	add	a,#0xF6
   5474 FF            [12] 3674 	mov	r7,a
   5475 EE            [12] 3675 	mov	a,r6
   5476 34 FF         [12] 3676 	addc	a,#0xFF
   5478 FE            [12] 3677 	mov	r6,a
   5479 90 05 E8      [24] 3678 	mov	dptr,#__divsint_PARM_2
   547C 74 02         [12] 3679 	mov	a,#0x02
   547E F0            [24] 3680 	movx	@dptr,a
   547F E4            [12] 3681 	clr	a
   5480 A3            [24] 3682 	inc	dptr
   5481 F0            [24] 3683 	movx	@dptr,a
   5482 8F 82         [24] 3684 	mov	dpl,r7
   5484 8E 83         [24] 3685 	mov	dph,r6
   5486 C0 05         [24] 3686 	push	ar5
   5488 C0 04         [24] 3687 	push	ar4
   548A 12 60 D3      [24] 3688 	lcall	__divsint
   548D AE 82         [24] 3689 	mov	r6,dpl
   548F AF 83         [24] 3690 	mov	r7,dph
   5491 78 C0         [12] 3691 	mov	r0,#_ticks_per_byte
   5493 90 05 CB      [24] 3692 	mov	dptr,#__mulint_PARM_2
   5496 E2            [24] 3693 	movx	a,@r0
   5497 F0            [24] 3694 	movx	@dptr,a
   5498 08            [12] 3695 	inc	r0
   5499 E2            [24] 3696 	movx	a,@r0
   549A A3            [24] 3697 	inc	dptr
   549B F0            [24] 3698 	movx	@dptr,a
   549C 8E 82         [24] 3699 	mov	dpl,r6
   549E 8F 83         [24] 3700 	mov	dph,r7
   54A0 12 5D C7      [24] 3701 	lcall	__mulint
   54A3 AE 82         [24] 3702 	mov	r6,dpl
   54A5 AF 83         [24] 3703 	mov	r7,dph
   54A7 D0 04         [24] 3704 	pop	ar4
   54A9 D0 05         [24] 3705 	pop	ar5
   54AB 78 BE         [12] 3706 	mov	r0,#_packet_latency
   54AD E2            [24] 3707 	movx	a,@r0
   54AE 2E            [12] 3708 	add	a,r6
   54AF F2            [24] 3709 	movx	@r0,a
   54B0 08            [12] 3710 	inc	r0
   54B1 E2            [24] 3711 	movx	a,@r0
   54B2 3F            [12] 3712 	addc	a,r7
   54B3 F2            [24] 3713 	movx	@r0,a
                           3714 ;	radio/tdm.c:939: i = (tx_window_width - packet_latency) / ticks_per_byte;
   54B4 78 BE         [12] 3715 	mov	r0,#_packet_latency
   54B6 D3            [12] 3716 	setb	c
   54B7 E2            [24] 3717 	movx	a,@r0
   54B8 9C            [12] 3718 	subb	a,r4
   54B9 F4            [12] 3719 	cpl	a
   54BA B3            [12] 3720 	cpl	c
   54BB FC            [12] 3721 	mov	r4,a
   54BC B3            [12] 3722 	cpl	c
   54BD 08            [12] 3723 	inc	r0
   54BE E2            [24] 3724 	movx	a,@r0
   54BF 9D            [12] 3725 	subb	a,r5
   54C0 F4            [12] 3726 	cpl	a
   54C1 FD            [12] 3727 	mov	r5,a
   54C2 78 C0         [12] 3728 	mov	r0,#_ticks_per_byte
   54C4 90 05 70      [24] 3729 	mov	dptr,#__divuint_PARM_2
   54C7 E2            [24] 3730 	movx	a,@r0
   54C8 F0            [24] 3731 	movx	@dptr,a
   54C9 08            [12] 3732 	inc	r0
   54CA E2            [24] 3733 	movx	a,@r0
   54CB A3            [24] 3734 	inc	dptr
   54CC F0            [24] 3735 	movx	@dptr,a
   54CD 8C 82         [24] 3736 	mov	dpl,r4
   54CF 8D 83         [24] 3737 	mov	dph,r5
   54D1 12 56 AA      [24] 3738 	lcall	__divuint
   54D4 AE 82         [24] 3739 	mov	r6,dpl
   54D6 AF 83         [24] 3740 	mov	r7,dph
                           3741 ;	radio/tdm.c:940: if (i > max_data_packet_length) {
   54D8 78 BB         [12] 3742 	mov	r0,#_max_data_packet_length
   54DA E2            [24] 3743 	movx	a,@r0
   54DB FC            [12] 3744 	mov	r4,a
   54DC 7D 00         [12] 3745 	mov	r5,#0x00
   54DE C3            [12] 3746 	clr	c
   54DF EC            [12] 3747 	mov	a,r4
   54E0 9E            [12] 3748 	subb	a,r6
   54E1 ED            [12] 3749 	mov	a,r5
   54E2 9F            [12] 3750 	subb	a,r7
   54E3 50 04         [24] 3751 	jnc	00112$
                           3752 ;	radio/tdm.c:941: i = max_data_packet_length;
   54E5 8C 06         [24] 3753 	mov	ar6,r4
   54E7 8D 07         [24] 3754 	mov	ar7,r5
   54E9                    3755 00112$:
                           3756 ;	radio/tdm.c:943: packet_set_max_xmit(i);
   54E9 8E 82         [24] 3757 	mov	dpl,r6
   54EB 12 24 40      [24] 3758 	lcall	_packet_set_max_xmit
                           3759 ;	radio/tdm.c:946: TDM_SYNC_PIN = false;
   54EE C2 A6         [12] 3760 	clr	_TDM_SYNC_PIN
   54F0 22            [24] 3761 	ret
                           3762 ;------------------------------------------------------------
                           3763 ;Allocation info for local variables in function 'tdm_report_timing'
                           3764 ;------------------------------------------------------------
                           3765 ;	radio/tdm.c:960: tdm_report_timing(void)
                           3766 ;	-----------------------------------------
                           3767 ;	 function tdm_report_timing
                           3768 ;	-----------------------------------------
   54F1                    3769 _tdm_report_timing:
                           3770 ;	radio/tdm.c:962: printf("silence_period: %u\n", (unsigned)silence_period); delay_msec(1);
   54F1 78 BC         [12] 3771 	mov	r0,#_silence_period
   54F3 E2            [24] 3772 	movx	a,@r0
   54F4 C0 E0         [24] 3773 	push	acc
   54F6 08            [12] 3774 	inc	r0
   54F7 E2            [24] 3775 	movx	a,@r0
   54F8 C0 E0         [24] 3776 	push	acc
   54FA 74 C8         [12] 3777 	mov	a,#__str_9
   54FC C0 E0         [24] 3778 	push	acc
   54FE 74 CC         [12] 3779 	mov	a,#(__str_9 >> 8)
   5500 C0 E0         [24] 3780 	push	acc
   5502 74 80         [12] 3781 	mov	a,#0x80
   5504 C0 E0         [24] 3782 	push	acc
   5506 12 2D B6      [24] 3783 	lcall	_printfl
   5509 E5 81         [12] 3784 	mov	a,sp
   550B 24 FB         [12] 3785 	add	a,#0xfb
   550D F5 81         [12] 3786 	mov	sp,a
   550F 90 00 01      [24] 3787 	mov	dptr,#0x0001
   5512 12 55 DF      [24] 3788 	lcall	_delay_msec
                           3789 ;	radio/tdm.c:963: printf("tx_window_width: %u\n", (unsigned)tx_window_width); delay_msec(1);
   5515 78 B9         [12] 3790 	mov	r0,#_tx_window_width
   5517 E2            [24] 3791 	movx	a,@r0
   5518 C0 E0         [24] 3792 	push	acc
   551A 08            [12] 3793 	inc	r0
   551B E2            [24] 3794 	movx	a,@r0
   551C C0 E0         [24] 3795 	push	acc
   551E 74 DC         [12] 3796 	mov	a,#__str_10
   5520 C0 E0         [24] 3797 	push	acc
   5522 74 CC         [12] 3798 	mov	a,#(__str_10 >> 8)
   5524 C0 E0         [24] 3799 	push	acc
   5526 74 80         [12] 3800 	mov	a,#0x80
   5528 C0 E0         [24] 3801 	push	acc
   552A 12 2D B6      [24] 3802 	lcall	_printfl
   552D E5 81         [12] 3803 	mov	a,sp
   552F 24 FB         [12] 3804 	add	a,#0xfb
   5531 F5 81         [12] 3805 	mov	sp,a
   5533 90 00 01      [24] 3806 	mov	dptr,#0x0001
   5536 12 55 DF      [24] 3807 	lcall	_delay_msec
                           3808 ;	radio/tdm.c:964: printf("max_data_packet_length: %u\n", (unsigned)max_data_packet_length); delay_msec(1);
   5539 78 BB         [12] 3809 	mov	r0,#_max_data_packet_length
   553B E2            [24] 3810 	movx	a,@r0
   553C FE            [12] 3811 	mov	r6,a
   553D 7F 00         [12] 3812 	mov	r7,#0x00
   553F C0 06         [24] 3813 	push	ar6
   5541 C0 07         [24] 3814 	push	ar7
   5543 74 F1         [12] 3815 	mov	a,#__str_11
   5545 C0 E0         [24] 3816 	push	acc
   5547 74 CC         [12] 3817 	mov	a,#(__str_11 >> 8)
   5549 C0 E0         [24] 3818 	push	acc
   554B 74 80         [12] 3819 	mov	a,#0x80
   554D C0 E0         [24] 3820 	push	acc
   554F 12 2D B6      [24] 3821 	lcall	_printfl
   5552 E5 81         [12] 3822 	mov	a,sp
   5554 24 FB         [12] 3823 	add	a,#0xfb
   5556 F5 81         [12] 3824 	mov	sp,a
   5558 90 00 01      [24] 3825 	mov	dptr,#0x0001
   555B 02 55 DF      [24] 3826 	ljmp	_delay_msec
                           3827 	.area CSEG    (CODE)
                           3828 	.area CONST   (CODE)
   CBE5                    3829 __str_0:
   CBE5 4C 2F 52 20 52 53  3830 	.ascii "L/R RSSI: %u/%u  L/R noise: %u/%u pkts: %u "
        53 49 3A 20 25 75
        2F 25 75 20 20 4C
        2F 52 20 6E 6F 69
        73 65 3A 20 25 75
        2F 25 75 20 70 6B
        74 73 3A 20 25 75
        20
   CC10 00                 3831 	.db 0x00
   CC11                    3832 __str_1:
   CC11 20 74 78 65 3D 25  3833 	.ascii " txe=%u rxe=%u stx=%u srx=%u ecc=%u/%u temp=%d dco=%u"
        75 20 72 78 65 3D
        25 75 20 73 74 78
        3D 25 75 20 73 72
        78 3D 25 75 20 65
        63 63 3D 25 75 2F
        25 75 20 74 65 6D
        70 3D 25 64 20 64
        63 6F 3D 25 75
   CC46 0A                 3834 	.db 0x0A
   CC47 00                 3835 	.db 0x00
   CC48                    3836 __str_2:
   CC48 54 44 4D 3A 20 25  3837 	.ascii "TDM: %u/%u len=%u "
        75 2F 25 75 20 6C
        65 6E 3D 25 75 20
   CC5A 00                 3838 	.db 0x00
   CC5B                    3839 __str_3:
   CC5B 20 64 65 6C 74 61  3840 	.ascii " delta: %d"
        3A 20 25 64
   CC65 0A                 3841 	.db 0x0A
   CC66 00                 3842 	.db 0x00
   CC67                    3843 __str_4:
   CC67 54 44 4D 3A 20 63  3844 	.ascii "TDM: change timing %u/%u"
        68 61 6E 67 65 20
        74 69 6D 69 6E 67
        20 25 75 2F 25 75
   CC7F 0A                 3845 	.db 0x0A
   CC80 00                 3846 	.db 0x00
   CC81                    3847 __str_5:
   CC81 54 44 4D 3A 20 73  3848 	.ascii "TDM: scanning"
        63 61 6E 6E 69 6E
        67
   CC8E 0A                 3849 	.db 0x0A
   CC8F 00                 3850 	.db 0x00
   CC90                    3851 __str_6:
   CC90 73 74 61 63 6B 20  3852 	.ascii "stack blown"
        62 6C 6F 77 6E
   CC9B 0A                 3853 	.db 0x0A
   CC9C 00                 3854 	.db 0x00
   CC9D                    3855 __str_7:
   CC9D 70 64 61 74 61 20  3856 	.ascii "pdata canary changed"
        63 61 6E 61 72 79
        20 63 68 61 6E 67
        65 64
   CCB1 0A                 3857 	.db 0x0A
   CCB2 00                 3858 	.db 0x00
   CCB3                    3859 __str_8:
   CCB3 6F 76 65 72 73 69  3860 	.ascii "oversized tdm packet"
        7A 65 64 20 74 64
        6D 20 70 61 63 6B
        65 74
   CCC7 00                 3861 	.db 0x00
   CCC8                    3862 __str_9:
   CCC8 73 69 6C 65 6E 63  3863 	.ascii "silence_period: %u"
        65 5F 70 65 72 69
        6F 64 3A 20 25 75
   CCDA 0A                 3864 	.db 0x0A
   CCDB 00                 3865 	.db 0x00
   CCDC                    3866 __str_10:
   CCDC 74 78 5F 77 69 6E  3867 	.ascii "tx_window_width: %u"
        64 6F 77 5F 77 69
        64 74 68 3A 20 25
        75
   CCEF 0A                 3868 	.db 0x0A
   CCF0 00                 3869 	.db 0x00
   CCF1                    3870 __str_11:
   CCF1 6D 61 78 5F 64 61  3871 	.ascii "max_data_packet_length: %u"
        74 61 5F 70 61 63
        6B 65 74 5F 6C 65
        6E 67 74 68 3A 20
        25 75
   CD0B 0A                 3872 	.db 0x0A
   CD0C 00                 3873 	.db 0x00
                           3874 	.area XINIT   (CODE)
                           3875 	.area CABS    (ABS,CODE)
