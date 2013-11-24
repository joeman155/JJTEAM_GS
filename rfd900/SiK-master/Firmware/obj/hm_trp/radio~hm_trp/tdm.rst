                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:04 2013
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
                             54 	.globl _PIN_ENABLE
                             55 	.globl _PIN_CONFIG
                             56 	.globl _LED_GREEN
                             57 	.globl _LED_RED
                             58 	.globl _SPI0EN
                             59 	.globl _TXBMT0
                             60 	.globl _NSS0MD0
                             61 	.globl _NSS0MD1
                             62 	.globl _RXOVRN0
                             63 	.globl _MODF0
                             64 	.globl _WCOL0
                             65 	.globl _SPIF0
                             66 	.globl _AD0CM0
                             67 	.globl _AD0CM1
                             68 	.globl _AD0CM2
                             69 	.globl _AD0WINT
                             70 	.globl _AD0BUSY
                             71 	.globl _AD0INT
                             72 	.globl _BURSTEN
                             73 	.globl _AD0EN
                             74 	.globl _CCF0
                             75 	.globl _CCF1
                             76 	.globl _CCF2
                             77 	.globl _CCF3
                             78 	.globl _CCF4
                             79 	.globl _CCF5
                             80 	.globl _CR
                             81 	.globl _CF
                             82 	.globl _P
                             83 	.globl _F1
                             84 	.globl _OV
                             85 	.globl _RS0
                             86 	.globl _RS1
                             87 	.globl _F0
                             88 	.globl _AC
                             89 	.globl _CY
                             90 	.globl _T2XCLK
                             91 	.globl _T2RCLK
                             92 	.globl _TR2
                             93 	.globl _T2SPLIT
                             94 	.globl _TF2CEN
                             95 	.globl _TF2LEN
                             96 	.globl _TF2L
                             97 	.globl _TF2H
                             98 	.globl _SI
                             99 	.globl _ACK
                            100 	.globl _ARBLOST
                            101 	.globl _ACKRQ
                            102 	.globl _STO
                            103 	.globl _STA
                            104 	.globl _TXMODE
                            105 	.globl _MASTER
                            106 	.globl _PX0
                            107 	.globl _PT0
                            108 	.globl _PX1
                            109 	.globl _PT1
                            110 	.globl _PS0
                            111 	.globl _PT2
                            112 	.globl _PSPI0
                            113 	.globl _SPI1EN
                            114 	.globl _TXBMT1
                            115 	.globl _NSS1MD0
                            116 	.globl _NSS1MD1
                            117 	.globl _RXOVRN1
                            118 	.globl _MODF1
                            119 	.globl _WCOL1
                            120 	.globl _SPIF1
                            121 	.globl _EX0
                            122 	.globl _ET0
                            123 	.globl _EX1
                            124 	.globl _ET1
                            125 	.globl _ES0
                            126 	.globl _ET2
                            127 	.globl _ESPI0
                            128 	.globl _EA
                            129 	.globl _RI0
                            130 	.globl _TI0
                            131 	.globl _RB80
                            132 	.globl _TB80
                            133 	.globl _REN0
                            134 	.globl _MCE0
                            135 	.globl _S0MODE
                            136 	.globl _CRC0VAL
                            137 	.globl _CRC0INIT
                            138 	.globl _CRC0SEL
                            139 	.globl _IT0
                            140 	.globl _IE0
                            141 	.globl _IT1
                            142 	.globl _IE1
                            143 	.globl _TR0
                            144 	.globl _TF0
                            145 	.globl _TR1
                            146 	.globl _TF1
                            147 	.globl _PCA0CP4
                            148 	.globl _PCA0CP0
                            149 	.globl _PCA0
                            150 	.globl _PCA0CP3
                            151 	.globl _PCA0CP2
                            152 	.globl _PCA0CP1
                            153 	.globl _PCA0CP5
                            154 	.globl _TMR2
                            155 	.globl _TMR2RL
                            156 	.globl _ADC0LT
                            157 	.globl _ADC0GT
                            158 	.globl _ADC0
                            159 	.globl _TMR3
                            160 	.globl _TMR3RL
                            161 	.globl _TOFF
                            162 	.globl _DP
                            163 	.globl _VDM0CN
                            164 	.globl _PCA0CPH4
                            165 	.globl _PCA0CPL4
                            166 	.globl _PCA0CPH0
                            167 	.globl _PCA0CPL0
                            168 	.globl _PCA0H
                            169 	.globl _PCA0L
                            170 	.globl _SPI0CN
                            171 	.globl _EIP2
                            172 	.globl _EIP1
                            173 	.globl _SMB0ADM
                            174 	.globl _SMB0ADR
                            175 	.globl _P2MDIN
                            176 	.globl _P1MDIN
                            177 	.globl _P0MDIN
                            178 	.globl _B
                            179 	.globl _RSTSRC
                            180 	.globl _PCA0CPH3
                            181 	.globl _PCA0CPL3
                            182 	.globl _PCA0CPH2
                            183 	.globl _PCA0CPL2
                            184 	.globl _PCA0CPH1
                            185 	.globl _PCA0CPL1
                            186 	.globl _ADC0CN
                            187 	.globl _EIE2
                            188 	.globl _EIE1
                            189 	.globl _FLWR
                            190 	.globl _IT01CF
                            191 	.globl _XBR2
                            192 	.globl _XBR1
                            193 	.globl _XBR0
                            194 	.globl _ACC
                            195 	.globl _PCA0PWM
                            196 	.globl _PCA0CPM4
                            197 	.globl _PCA0CPM3
                            198 	.globl _PCA0CPM2
                            199 	.globl _PCA0CPM1
                            200 	.globl _PCA0CPM0
                            201 	.globl _PCA0MD
                            202 	.globl _PCA0CN
                            203 	.globl _P0MAT
                            204 	.globl _P2SKIP
                            205 	.globl _P1SKIP
                            206 	.globl _P0SKIP
                            207 	.globl _PCA0CPH5
                            208 	.globl _PCA0CPL5
                            209 	.globl _REF0CN
                            210 	.globl _PSW
                            211 	.globl _P1MAT
                            212 	.globl _PCA0CPM5
                            213 	.globl _TMR2H
                            214 	.globl _TMR2L
                            215 	.globl _TMR2RLH
                            216 	.globl _TMR2RLL
                            217 	.globl _REG0CN
                            218 	.globl _TMR2CN
                            219 	.globl _P0MASK
                            220 	.globl _ADC0LTH
                            221 	.globl _ADC0LTL
                            222 	.globl _ADC0GTH
                            223 	.globl _ADC0GTL
                            224 	.globl _SMB0DAT
                            225 	.globl _SMB0CF
                            226 	.globl _SMB0CN
                            227 	.globl _P1MASK
                            228 	.globl _ADC0H
                            229 	.globl _ADC0L
                            230 	.globl _ADC0TK
                            231 	.globl _ADC0CF
                            232 	.globl _ADC0MX
                            233 	.globl _ADC0PWR
                            234 	.globl _ADC0AC
                            235 	.globl _IREF0CN
                            236 	.globl _IP
                            237 	.globl _FLKEY
                            238 	.globl _FLSCL
                            239 	.globl _PMU0CF
                            240 	.globl _OSCICL
                            241 	.globl _OSCICN
                            242 	.globl _OSCXCN
                            243 	.globl _SPI1CN
                            244 	.globl _ONESHOT
                            245 	.globl _EMI0TC
                            246 	.globl _RTC0KEY
                            247 	.globl _RTC0DAT
                            248 	.globl _RTC0ADR
                            249 	.globl _EMI0CF
                            250 	.globl _EMI0CN
                            251 	.globl _CLKSEL
                            252 	.globl _IE
                            253 	.globl _SFRPAGE
                            254 	.globl _P2DRV
                            255 	.globl _P2MDOUT
                            256 	.globl _P1DRV
                            257 	.globl _P1MDOUT
                            258 	.globl _P0DRV
                            259 	.globl _P0MDOUT
                            260 	.globl _SPI0DAT
                            261 	.globl _SPI0CKR
                            262 	.globl _SPI0CFG
                            263 	.globl _P2
                            264 	.globl _CPT0MX
                            265 	.globl _CPT1MX
                            266 	.globl _CPT0MD
                            267 	.globl _CPT1MD
                            268 	.globl _CPT0CN
                            269 	.globl _CPT1CN
                            270 	.globl _SBUF0
                            271 	.globl _SCON0
                            272 	.globl _CRC0CNT
                            273 	.globl _DC0CN
                            274 	.globl _CRC0AUTO
                            275 	.globl _DC0CF
                            276 	.globl _TMR3H
                            277 	.globl _CRC0FLIP
                            278 	.globl _TMR3L
                            279 	.globl _CRC0IN
                            280 	.globl _TMR3RLH
                            281 	.globl _CRC0CN
                            282 	.globl _TMR3RLL
                            283 	.globl _CRC0DAT
                            284 	.globl _TMR3CN
                            285 	.globl _P1
                            286 	.globl _PSCTL
                            287 	.globl _CKCON
                            288 	.globl _TH1
                            289 	.globl _TH0
                            290 	.globl _TL1
                            291 	.globl _TL0
                            292 	.globl _TMOD
                            293 	.globl _TCON
                            294 	.globl _PCON
                            295 	.globl _TOFFH
                            296 	.globl _SPI1DAT
                            297 	.globl _TOFFL
                            298 	.globl _SPI1CKR
                            299 	.globl _SPI1CFG
                            300 	.globl _DPH
                            301 	.globl _DPL
                            302 	.globl _SP
                            303 	.globl _P0
                            304 	.globl _pbuf
                            305 	.globl _trailer
                            306 	.globl _test_display
                            307 	.globl _lbt_rssi
                            308 	.globl _duty_cycle_offset
                            309 	.globl _duty_cycle
                            310 	.globl _transmit_wait
                            311 	.globl __canary
                            312 	.globl _tdm_show_rssi
                            313 	.globl _tdm_change_phase
                            314 	.globl _tdm_remote_at
                            315 	.globl _tdm_serial_loop
                            316 	.globl _tdm_init
                            317 	.globl _tdm_report_timing
                            318 ;--------------------------------------------------------
                            319 ; special function registers
                            320 ;--------------------------------------------------------
                            321 	.area RSEG    (ABS,DATA)
   0000                     322 	.org 0x0000
                     0080   323 _P0	=	0x0080
                     0081   324 _SP	=	0x0081
                     0082   325 _DPL	=	0x0082
                     0083   326 _DPH	=	0x0083
                     0084   327 _SPI1CFG	=	0x0084
                     0085   328 _SPI1CKR	=	0x0085
                     0085   329 _TOFFL	=	0x0085
                     0086   330 _SPI1DAT	=	0x0086
                     0086   331 _TOFFH	=	0x0086
                     0087   332 _PCON	=	0x0087
                     0088   333 _TCON	=	0x0088
                     0089   334 _TMOD	=	0x0089
                     008A   335 _TL0	=	0x008a
                     008B   336 _TL1	=	0x008b
                     008C   337 _TH0	=	0x008c
                     008D   338 _TH1	=	0x008d
                     008E   339 _CKCON	=	0x008e
                     008F   340 _PSCTL	=	0x008f
                     0090   341 _P1	=	0x0090
                     0091   342 _TMR3CN	=	0x0091
                     0091   343 _CRC0DAT	=	0x0091
                     0092   344 _TMR3RLL	=	0x0092
                     0092   345 _CRC0CN	=	0x0092
                     0093   346 _TMR3RLH	=	0x0093
                     0093   347 _CRC0IN	=	0x0093
                     0094   348 _TMR3L	=	0x0094
                     0095   349 _CRC0FLIP	=	0x0095
                     0095   350 _TMR3H	=	0x0095
                     0096   351 _DC0CF	=	0x0096
                     0096   352 _CRC0AUTO	=	0x0096
                     0097   353 _DC0CN	=	0x0097
                     0097   354 _CRC0CNT	=	0x0097
                     0098   355 _SCON0	=	0x0098
                     0099   356 _SBUF0	=	0x0099
                     009A   357 _CPT1CN	=	0x009a
                     009B   358 _CPT0CN	=	0x009b
                     009C   359 _CPT1MD	=	0x009c
                     009D   360 _CPT0MD	=	0x009d
                     009E   361 _CPT1MX	=	0x009e
                     009F   362 _CPT0MX	=	0x009f
                     00A0   363 _P2	=	0x00a0
                     00A1   364 _SPI0CFG	=	0x00a1
                     00A2   365 _SPI0CKR	=	0x00a2
                     00A3   366 _SPI0DAT	=	0x00a3
                     00A4   367 _P0MDOUT	=	0x00a4
                     00A4   368 _P0DRV	=	0x00a4
                     00A5   369 _P1MDOUT	=	0x00a5
                     00A5   370 _P1DRV	=	0x00a5
                     00A6   371 _P2MDOUT	=	0x00a6
                     00A6   372 _P2DRV	=	0x00a6
                     00A7   373 _SFRPAGE	=	0x00a7
                     00A8   374 _IE	=	0x00a8
                     00A9   375 _CLKSEL	=	0x00a9
                     00AA   376 _EMI0CN	=	0x00aa
                     00AB   377 _EMI0CF	=	0x00ab
                     00AC   378 _RTC0ADR	=	0x00ac
                     00AD   379 _RTC0DAT	=	0x00ad
                     00AE   380 _RTC0KEY	=	0x00ae
                     00AF   381 _EMI0TC	=	0x00af
                     00AF   382 _ONESHOT	=	0x00af
                     00B0   383 _SPI1CN	=	0x00b0
                     00B1   384 _OSCXCN	=	0x00b1
                     00B2   385 _OSCICN	=	0x00b2
                     00B3   386 _OSCICL	=	0x00b3
                     00B5   387 _PMU0CF	=	0x00b5
                     00B6   388 _FLSCL	=	0x00b6
                     00B7   389 _FLKEY	=	0x00b7
                     00B8   390 _IP	=	0x00b8
                     00B9   391 _IREF0CN	=	0x00b9
                     00BA   392 _ADC0AC	=	0x00ba
                     00BA   393 _ADC0PWR	=	0x00ba
                     00BB   394 _ADC0MX	=	0x00bb
                     00BC   395 _ADC0CF	=	0x00bc
                     00BD   396 _ADC0TK	=	0x00bd
                     00BD   397 _ADC0L	=	0x00bd
                     00BE   398 _ADC0H	=	0x00be
                     00BF   399 _P1MASK	=	0x00bf
                     00C0   400 _SMB0CN	=	0x00c0
                     00C1   401 _SMB0CF	=	0x00c1
                     00C2   402 _SMB0DAT	=	0x00c2
                     00C3   403 _ADC0GTL	=	0x00c3
                     00C4   404 _ADC0GTH	=	0x00c4
                     00C5   405 _ADC0LTL	=	0x00c5
                     00C6   406 _ADC0LTH	=	0x00c6
                     00C7   407 _P0MASK	=	0x00c7
                     00C8   408 _TMR2CN	=	0x00c8
                     00C9   409 _REG0CN	=	0x00c9
                     00CA   410 _TMR2RLL	=	0x00ca
                     00CB   411 _TMR2RLH	=	0x00cb
                     00CC   412 _TMR2L	=	0x00cc
                     00CD   413 _TMR2H	=	0x00cd
                     00CE   414 _PCA0CPM5	=	0x00ce
                     00CF   415 _P1MAT	=	0x00cf
                     00D0   416 _PSW	=	0x00d0
                     00D1   417 _REF0CN	=	0x00d1
                     00D2   418 _PCA0CPL5	=	0x00d2
                     00D3   419 _PCA0CPH5	=	0x00d3
                     00D4   420 _P0SKIP	=	0x00d4
                     00D5   421 _P1SKIP	=	0x00d5
                     00D6   422 _P2SKIP	=	0x00d6
                     00D7   423 _P0MAT	=	0x00d7
                     00D8   424 _PCA0CN	=	0x00d8
                     00D9   425 _PCA0MD	=	0x00d9
                     00DA   426 _PCA0CPM0	=	0x00da
                     00DB   427 _PCA0CPM1	=	0x00db
                     00DC   428 _PCA0CPM2	=	0x00dc
                     00DD   429 _PCA0CPM3	=	0x00dd
                     00DE   430 _PCA0CPM4	=	0x00de
                     00DF   431 _PCA0PWM	=	0x00df
                     00E0   432 _ACC	=	0x00e0
                     00E1   433 _XBR0	=	0x00e1
                     00E2   434 _XBR1	=	0x00e2
                     00E3   435 _XBR2	=	0x00e3
                     00E4   436 _IT01CF	=	0x00e4
                     00E5   437 _FLWR	=	0x00e5
                     00E6   438 _EIE1	=	0x00e6
                     00E7   439 _EIE2	=	0x00e7
                     00E8   440 _ADC0CN	=	0x00e8
                     00E9   441 _PCA0CPL1	=	0x00e9
                     00EA   442 _PCA0CPH1	=	0x00ea
                     00EB   443 _PCA0CPL2	=	0x00eb
                     00EC   444 _PCA0CPH2	=	0x00ec
                     00ED   445 _PCA0CPL3	=	0x00ed
                     00EE   446 _PCA0CPH3	=	0x00ee
                     00EF   447 _RSTSRC	=	0x00ef
                     00F0   448 _B	=	0x00f0
                     00F1   449 _P0MDIN	=	0x00f1
                     00F2   450 _P1MDIN	=	0x00f2
                     00F3   451 _P2MDIN	=	0x00f3
                     00F4   452 _SMB0ADR	=	0x00f4
                     00F5   453 _SMB0ADM	=	0x00f5
                     00F6   454 _EIP1	=	0x00f6
                     00F7   455 _EIP2	=	0x00f7
                     00F8   456 _SPI0CN	=	0x00f8
                     00F9   457 _PCA0L	=	0x00f9
                     00FA   458 _PCA0H	=	0x00fa
                     00FB   459 _PCA0CPL0	=	0x00fb
                     00FC   460 _PCA0CPH0	=	0x00fc
                     00FD   461 _PCA0CPL4	=	0x00fd
                     00FE   462 _PCA0CPH4	=	0x00fe
                     00FF   463 _VDM0CN	=	0x00ff
                     8382   464 _DP	=	0x8382
                     8685   465 _TOFF	=	0x8685
                     9392   466 _TMR3RL	=	0x9392
                     9594   467 _TMR3	=	0x9594
                     BEBD   468 _ADC0	=	0xbebd
                     C4C3   469 _ADC0GT	=	0xc4c3
                     C6C5   470 _ADC0LT	=	0xc6c5
                     CBCA   471 _TMR2RL	=	0xcbca
                     CDCC   472 _TMR2	=	0xcdcc
                     D3D2   473 _PCA0CP5	=	0xd3d2
                     EAE9   474 _PCA0CP1	=	0xeae9
                     ECEB   475 _PCA0CP2	=	0xeceb
                     EEED   476 _PCA0CP3	=	0xeeed
                     FAF9   477 _PCA0	=	0xfaf9
                     FCFB   478 _PCA0CP0	=	0xfcfb
                     FEFD   479 _PCA0CP4	=	0xfefd
                            480 ;--------------------------------------------------------
                            481 ; special function bits
                            482 ;--------------------------------------------------------
                            483 	.area RSEG    (ABS,DATA)
   0000                     484 	.org 0x0000
                     008F   485 _TF1	=	0x008f
                     008E   486 _TR1	=	0x008e
                     008D   487 _TF0	=	0x008d
                     008C   488 _TR0	=	0x008c
                     008B   489 _IE1	=	0x008b
                     008A   490 _IT1	=	0x008a
                     0089   491 _IE0	=	0x0089
                     0088   492 _IT0	=	0x0088
                     0096   493 _CRC0SEL	=	0x0096
                     0095   494 _CRC0INIT	=	0x0095
                     0094   495 _CRC0VAL	=	0x0094
                     009F   496 _S0MODE	=	0x009f
                     009D   497 _MCE0	=	0x009d
                     009C   498 _REN0	=	0x009c
                     009B   499 _TB80	=	0x009b
                     009A   500 _RB80	=	0x009a
                     0099   501 _TI0	=	0x0099
                     0098   502 _RI0	=	0x0098
                     00AF   503 _EA	=	0x00af
                     00AE   504 _ESPI0	=	0x00ae
                     00AD   505 _ET2	=	0x00ad
                     00AC   506 _ES0	=	0x00ac
                     00AB   507 _ET1	=	0x00ab
                     00AA   508 _EX1	=	0x00aa
                     00A9   509 _ET0	=	0x00a9
                     00A8   510 _EX0	=	0x00a8
                     00B7   511 _SPIF1	=	0x00b7
                     00B6   512 _WCOL1	=	0x00b6
                     00B5   513 _MODF1	=	0x00b5
                     00B4   514 _RXOVRN1	=	0x00b4
                     00B3   515 _NSS1MD1	=	0x00b3
                     00B2   516 _NSS1MD0	=	0x00b2
                     00B1   517 _TXBMT1	=	0x00b1
                     00B0   518 _SPI1EN	=	0x00b0
                     00BE   519 _PSPI0	=	0x00be
                     00BD   520 _PT2	=	0x00bd
                     00BC   521 _PS0	=	0x00bc
                     00BB   522 _PT1	=	0x00bb
                     00BA   523 _PX1	=	0x00ba
                     00B9   524 _PT0	=	0x00b9
                     00B8   525 _PX0	=	0x00b8
                     00C7   526 _MASTER	=	0x00c7
                     00C6   527 _TXMODE	=	0x00c6
                     00C5   528 _STA	=	0x00c5
                     00C4   529 _STO	=	0x00c4
                     00C3   530 _ACKRQ	=	0x00c3
                     00C2   531 _ARBLOST	=	0x00c2
                     00C1   532 _ACK	=	0x00c1
                     00C0   533 _SI	=	0x00c0
                     00CF   534 _TF2H	=	0x00cf
                     00CE   535 _TF2L	=	0x00ce
                     00CD   536 _TF2LEN	=	0x00cd
                     00CC   537 _TF2CEN	=	0x00cc
                     00CB   538 _T2SPLIT	=	0x00cb
                     00CA   539 _TR2	=	0x00ca
                     00C9   540 _T2RCLK	=	0x00c9
                     00C8   541 _T2XCLK	=	0x00c8
                     00D7   542 _CY	=	0x00d7
                     00D6   543 _AC	=	0x00d6
                     00D5   544 _F0	=	0x00d5
                     00D4   545 _RS1	=	0x00d4
                     00D3   546 _RS0	=	0x00d3
                     00D2   547 _OV	=	0x00d2
                     00D1   548 _F1	=	0x00d1
                     00D0   549 _P	=	0x00d0
                     00DF   550 _CF	=	0x00df
                     00DE   551 _CR	=	0x00de
                     00DD   552 _CCF5	=	0x00dd
                     00DC   553 _CCF4	=	0x00dc
                     00DB   554 _CCF3	=	0x00db
                     00DA   555 _CCF2	=	0x00da
                     00D9   556 _CCF1	=	0x00d9
                     00D8   557 _CCF0	=	0x00d8
                     00EF   558 _AD0EN	=	0x00ef
                     00EE   559 _BURSTEN	=	0x00ee
                     00ED   560 _AD0INT	=	0x00ed
                     00EC   561 _AD0BUSY	=	0x00ec
                     00EB   562 _AD0WINT	=	0x00eb
                     00EA   563 _AD0CM2	=	0x00ea
                     00E9   564 _AD0CM1	=	0x00e9
                     00E8   565 _AD0CM0	=	0x00e8
                     00FF   566 _SPIF0	=	0x00ff
                     00FE   567 _WCOL0	=	0x00fe
                     00FD   568 _MODF0	=	0x00fd
                     00FC   569 _RXOVRN0	=	0x00fc
                     00FB   570 _NSS0MD1	=	0x00fb
                     00FA   571 _NSS0MD0	=	0x00fa
                     00F9   572 _TXBMT0	=	0x00f9
                     00F8   573 _SPI0EN	=	0x00f8
                     0096   574 _LED_RED	=	0x0096
                     0095   575 _LED_GREEN	=	0x0095
                     0082   576 _PIN_CONFIG	=	0x0082
                     0083   577 _PIN_ENABLE	=	0x0083
                     0087   578 _IRQ	=	0x0087
                     0094   579 _NSS1	=	0x0094
                     00A6   580 _SDN	=	0x00a6
                     00A6   581 _TDM_SYNC_PIN	=	0x00a6
                            582 ;--------------------------------------------------------
                            583 ; overlayable register banks
                            584 ;--------------------------------------------------------
                            585 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     586 	.ds 8
                            587 ;--------------------------------------------------------
                            588 ; internal ram data
                            589 ;--------------------------------------------------------
                            590 	.area DSEG    (DATA)
   0053                     591 _average_duty_cycle:
   0053                     592 	.ds 4
   0057                     593 _tdm_show_rssi_sloc0_1_0:
   0057                     594 	.ds 2
   0059                     595 _tdm_show_rssi_sloc1_1_0:
   0059                     596 	.ds 2
   005B                     597 _tdm_show_rssi_sloc2_1_0:
   005B                     598 	.ds 2
   005D                     599 _tdm_show_rssi_sloc3_1_0:
   005D                     600 	.ds 2
   005F                     601 _tdm_show_rssi_sloc4_1_0:
   005F                     602 	.ds 2
   0061                     603 _sync_tx_windows_old_state_1_155:
   0061                     604 	.ds 1
   0062                     605 _tdm_state_update_sloc0_1_0:
   0062                     606 	.ds 2
   0064                     607 _tdm_state_update_sloc1_1_0:
   0064                     608 	.ds 4
   0068                     609 _tdm_state_update_sloc2_1_0:
   0068                     610 	.ds 4
   006C                     611 _tdm_init_sloc0_1_0:
   006C                     612 	.ds 4
                            613 ;--------------------------------------------------------
                            614 ; overlayable items in internal ram 
                            615 ;--------------------------------------------------------
                            616 ;--------------------------------------------------------
                            617 ; indirectly addressable internal ram data
                            618 ;--------------------------------------------------------
                            619 	.area ISEG    (DATA)
                     00FF   620 __canary	=	0x00ff
                            621 ;--------------------------------------------------------
                            622 ; absolute internal ram data
                            623 ;--------------------------------------------------------
                            624 	.area IABS    (ABS,DATA)
                            625 	.area IABS    (ABS,DATA)
                            626 ;--------------------------------------------------------
                            627 ; bit data
                            628 ;--------------------------------------------------------
                            629 	.area BSEG    (BIT)
   0027                     630 _bonus_transmit:
   0027                     631 	.ds 1
   0028                     632 _transmit_yield:
   0028                     633 	.ds 1
   0029                     634 _blink_state:
   0029                     635 	.ds 1
   002A                     636 _received_packet:
   002A                     637 	.ds 1
   002B                     638 _duty_cycle_wait:
   002B                     639 	.ds 1
   002C                     640 _send_statistics:
   002C                     641 	.ds 1
   002D                     642 _send_at_command:
   002D                     643 	.ds 1
   002E                     644 _sync_tx_windows_sloc0_1_0:
   002E                     645 	.ds 1
   002F                     646 _tdm_state_update_sloc3_1_0:
   002F                     647 	.ds 1
   0030                     648 _tdm_serial_loop_sloc0_1_0:
   0030                     649 	.ds 1
                            650 ;--------------------------------------------------------
                            651 ; paged external ram data
                            652 ;--------------------------------------------------------
                            653 	.area PSEG    (PAG,XDATA)
   00B6                     654 _tdm_state:
   00B6                     655 	.ds 1
   00B7                     656 _tdm_state_remaining:
   00B7                     657 	.ds 2
   00B9                     658 _tx_window_width:
   00B9                     659 	.ds 2
   00BB                     660 _max_data_packet_length:
   00BB                     661 	.ds 1
   00BC                     662 _silence_period:
   00BC                     663 	.ds 2
   00BE                     664 _packet_latency:
   00BE                     665 	.ds 2
   00C0                     666 _ticks_per_byte:
   00C0                     667 	.ds 2
   00C2                     668 _transmit_wait::
   00C2                     669 	.ds 2
   00C4                     670 _duty_cycle::
   00C4                     671 	.ds 1
   00C5                     672 _duty_cycle_offset::
   00C5                     673 	.ds 1
   00C6                     674 _transmitted_ticks:
   00C6                     675 	.ds 2
   00C8                     676 _lbt_rssi::
   00C8                     677 	.ds 1
   00C9                     678 _lbt_listen_time:
   00C9                     679 	.ds 2
   00CB                     680 _lbt_min_time:
   00CB                     681 	.ds 2
   00CD                     682 _lbt_rand:
   00CD                     683 	.ds 2
   00CF                     684 _test_display::
   00CF                     685 	.ds 1
   00D0                     686 _trailer::
   00D0                     687 	.ds 2
   00D2                     688 _remote_at_cmd:
   00D2                     689 	.ds 17
   00E3                     690 _sync_tx_windows_delta_2_162:
   00E3                     691 	.ds 2
   00E5                     692 _tdm_serial_loop_last_t_1_207:
   00E5                     693 	.ds 2
   00E7                     694 _tdm_serial_loop_last_link_update_1_207:
   00E7                     695 	.ds 2
   00E9                     696 _tdm_serial_loop_len_2_208:
   00E9                     697 	.ds 1
   00EA                     698 _tdm_serial_loop_tdelta_2_208:
   00EA                     699 	.ds 2
                            700 ;--------------------------------------------------------
                            701 ; external ram data
                            702 ;--------------------------------------------------------
                            703 	.area XSEG    (XDATA)
   0472                     704 _pbuf::
   0472                     705 	.ds 252
   056E                     706 _link_update_unlock_count_1_185:
   056E                     707 	.ds 1
   056F                     708 _link_update_temperature_count_1_185:
   056F                     709 	.ds 1
                            710 ;--------------------------------------------------------
                            711 ; absolute external ram data
                            712 ;--------------------------------------------------------
                            713 	.area XABS    (ABS,XDATA)
                            714 ;--------------------------------------------------------
                            715 ; external initialized ram data
                            716 ;--------------------------------------------------------
                            717 	.area XISEG   (XDATA)
                            718 	.area HOME    (CODE)
                            719 	.area GSINIT0 (CODE)
                            720 	.area GSINIT1 (CODE)
                            721 	.area GSINIT2 (CODE)
                            722 	.area GSINIT3 (CODE)
                            723 	.area GSINIT4 (CODE)
                            724 	.area GSINIT5 (CODE)
                            725 	.area GSINIT  (CODE)
                            726 	.area GSFINAL (CODE)
                            727 	.area CSEG    (CODE)
                            728 ;--------------------------------------------------------
                            729 ; global & static initialisations
                            730 ;--------------------------------------------------------
                            731 	.area HOME    (CODE)
                            732 	.area GSINIT  (CODE)
                            733 	.area GSFINAL (CODE)
                            734 	.area GSINIT  (CODE)
                            735 ;--------------------------------------------------------
                            736 ; Home
                            737 ;--------------------------------------------------------
                            738 	.area HOME    (CODE)
                            739 	.area HOME    (CODE)
                            740 ;--------------------------------------------------------
                            741 ; code
                            742 ;--------------------------------------------------------
                            743 	.area CSEG    (CODE)
                            744 ;------------------------------------------------------------
                            745 ;Allocation info for local variables in function 'tdm_show_rssi'
                            746 ;------------------------------------------------------------
                            747 ;sloc0                     Allocated with name '_tdm_show_rssi_sloc0_1_0'
                            748 ;sloc1                     Allocated with name '_tdm_show_rssi_sloc1_1_0'
                            749 ;sloc2                     Allocated with name '_tdm_show_rssi_sloc2_1_0'
                            750 ;sloc3                     Allocated with name '_tdm_show_rssi_sloc3_1_0'
                            751 ;sloc4                     Allocated with name '_tdm_show_rssi_sloc4_1_0'
                            752 ;------------------------------------------------------------
                            753 ;	radio/tdm.c:152: tdm_show_rssi(void)
                            754 ;	-----------------------------------------
                            755 ;	 function tdm_show_rssi
                            756 ;	-----------------------------------------
   4588                     757 _tdm_show_rssi:
                     0007   758 	ar7 = 0x07
                     0006   759 	ar6 = 0x06
                     0005   760 	ar5 = 0x05
                     0004   761 	ar4 = 0x04
                     0003   762 	ar3 = 0x03
                     0002   763 	ar2 = 0x02
                     0001   764 	ar1 = 0x01
                     0000   765 	ar0 = 0x00
                            766 ;	radio/tdm.c:154: printf("L/R RSSI: %u/%u  L/R noise: %u/%u pkts: %u ",
   4588 78 42         [12]  767 	mov	r0,#(_statistics + 0x0002)
   458A E2            [24]  768 	movx	a,@r0
   458B FE            [12]  769 	mov	r6,a
   458C 08            [12]  770 	inc	r0
   458D E2            [24]  771 	movx	a,@r0
   458E FF            [12]  772 	mov	r7,a
   458F 78 45         [12]  773 	mov	r0,#(_remote_statistics + 0x0001)
   4591 E2            [24]  774 	movx	a,@r0
   4592 FD            [12]  775 	mov	r5,a
   4593 7C 00         [12]  776 	mov	r4,#0x00
   4595 78 41         [12]  777 	mov	r0,#(_statistics + 0x0001)
   4597 E2            [24]  778 	movx	a,@r0
   4598 FB            [12]  779 	mov	r3,a
   4599 8B 57         [24]  780 	mov	_tdm_show_rssi_sloc0_1_0,r3
   459B 75 58 00      [24]  781 	mov	(_tdm_show_rssi_sloc0_1_0 + 1),#0x00
   459E 78 44         [12]  782 	mov	r0,#_remote_statistics
   45A0 E2            [24]  783 	movx	a,@r0
   45A1 FB            [12]  784 	mov	r3,a
   45A2 8B 59         [24]  785 	mov	_tdm_show_rssi_sloc1_1_0,r3
   45A4 75 5A 00      [24]  786 	mov	(_tdm_show_rssi_sloc1_1_0 + 1),#0x00
   45A7 78 40         [12]  787 	mov	r0,#_statistics
   45A9 E2            [24]  788 	movx	a,@r0
   45AA FB            [12]  789 	mov	r3,a
   45AB 7A 00         [12]  790 	mov	r2,#0x00
   45AD C0 06         [24]  791 	push	ar6
   45AF C0 07         [24]  792 	push	ar7
   45B1 C0 05         [24]  793 	push	ar5
   45B3 C0 04         [24]  794 	push	ar4
   45B5 C0 57         [24]  795 	push	_tdm_show_rssi_sloc0_1_0
   45B7 C0 58         [24]  796 	push	(_tdm_show_rssi_sloc0_1_0 + 1)
   45B9 C0 59         [24]  797 	push	_tdm_show_rssi_sloc1_1_0
   45BB C0 5A         [24]  798 	push	(_tdm_show_rssi_sloc1_1_0 + 1)
   45BD C0 03         [24]  799 	push	ar3
   45BF C0 02         [24]  800 	push	ar2
   45C1 74 8F         [12]  801 	mov	a,#__str_0
   45C3 C0 E0         [24]  802 	push	acc
   45C5 74 CC         [12]  803 	mov	a,#(__str_0 >> 8)
   45C7 C0 E0         [24]  804 	push	acc
   45C9 74 80         [12]  805 	mov	a,#0x80
   45CB C0 E0         [24]  806 	push	acc
   45CD 12 2D B6      [24]  807 	lcall	_printfl
   45D0 E5 81         [12]  808 	mov	a,sp
   45D2 24 F3         [12]  809 	add	a,#0xf3
   45D4 F5 81         [12]  810 	mov	sp,a
                            811 ;	radio/tdm.c:160: printf(" txe=%u rxe=%u stx=%u srx=%u ecc=%u/%u temp=%d dco=%u\n",
   45D6 78 C5         [12]  812 	mov	r0,#_duty_cycle_offset
   45D8 E2            [24]  813 	movx	a,@r0
   45D9 FE            [12]  814 	mov	r6,a
   45DA 7F 00         [12]  815 	mov	r7,#0x00
   45DC C0 07         [24]  816 	push	ar7
   45DE C0 06         [24]  817 	push	ar6
   45E0 12 3C 6F      [24]  818 	lcall	_radio_temperature
   45E3 AC 82         [24]  819 	mov	r4,dpl
   45E5 AD 83         [24]  820 	mov	r5,dph
   45E7 D0 06         [24]  821 	pop	ar6
   45E9 D0 07         [24]  822 	pop	ar7
   45EB 78 3E         [12]  823 	mov	r0,#(_errors + 0x000a)
   45ED E2            [24]  824 	movx	a,@r0
   45EE F5 59         [12]  825 	mov	_tdm_show_rssi_sloc1_1_0,a
   45F0 08            [12]  826 	inc	r0
   45F1 E2            [24]  827 	movx	a,@r0
   45F2 F5 5A         [12]  828 	mov	(_tdm_show_rssi_sloc1_1_0 + 1),a
   45F4 78 3C         [12]  829 	mov	r0,#(_errors + 0x0008)
   45F6 E2            [24]  830 	movx	a,@r0
   45F7 F5 57         [12]  831 	mov	_tdm_show_rssi_sloc0_1_0,a
   45F9 08            [12]  832 	inc	r0
   45FA E2            [24]  833 	movx	a,@r0
   45FB F5 58         [12]  834 	mov	(_tdm_show_rssi_sloc0_1_0 + 1),a
   45FD 78 3A         [12]  835 	mov	r0,#(_errors + 0x0006)
   45FF E2            [24]  836 	movx	a,@r0
   4600 F5 5B         [12]  837 	mov	_tdm_show_rssi_sloc2_1_0,a
   4602 08            [12]  838 	inc	r0
   4603 E2            [24]  839 	movx	a,@r0
   4604 F5 5C         [12]  840 	mov	(_tdm_show_rssi_sloc2_1_0 + 1),a
   4606 78 38         [12]  841 	mov	r0,#(_errors + 0x0004)
   4608 E2            [24]  842 	movx	a,@r0
   4609 F5 5D         [12]  843 	mov	_tdm_show_rssi_sloc3_1_0,a
   460B 08            [12]  844 	inc	r0
   460C E2            [24]  845 	movx	a,@r0
   460D F5 5E         [12]  846 	mov	(_tdm_show_rssi_sloc3_1_0 + 1),a
   460F 78 34         [12]  847 	mov	r0,#_errors
   4611 E2            [24]  848 	movx	a,@r0
   4612 F5 5F         [12]  849 	mov	_tdm_show_rssi_sloc4_1_0,a
   4614 08            [12]  850 	inc	r0
   4615 E2            [24]  851 	movx	a,@r0
   4616 F5 60         [12]  852 	mov	(_tdm_show_rssi_sloc4_1_0 + 1),a
   4618 78 36         [12]  853 	mov	r0,#(_errors + 0x0002)
   461A E2            [24]  854 	movx	a,@r0
   461B FA            [12]  855 	mov	r2,a
   461C 08            [12]  856 	inc	r0
   461D E2            [24]  857 	movx	a,@r0
   461E FB            [12]  858 	mov	r3,a
   461F C0 06         [24]  859 	push	ar6
   4621 C0 07         [24]  860 	push	ar7
   4623 C0 04         [24]  861 	push	ar4
   4625 C0 05         [24]  862 	push	ar5
   4627 C0 59         [24]  863 	push	_tdm_show_rssi_sloc1_1_0
   4629 C0 5A         [24]  864 	push	(_tdm_show_rssi_sloc1_1_0 + 1)
   462B C0 57         [24]  865 	push	_tdm_show_rssi_sloc0_1_0
   462D C0 58         [24]  866 	push	(_tdm_show_rssi_sloc0_1_0 + 1)
   462F C0 5B         [24]  867 	push	_tdm_show_rssi_sloc2_1_0
   4631 C0 5C         [24]  868 	push	(_tdm_show_rssi_sloc2_1_0 + 1)
   4633 C0 5D         [24]  869 	push	_tdm_show_rssi_sloc3_1_0
   4635 C0 5E         [24]  870 	push	(_tdm_show_rssi_sloc3_1_0 + 1)
   4637 C0 5F         [24]  871 	push	_tdm_show_rssi_sloc4_1_0
   4639 C0 60         [24]  872 	push	(_tdm_show_rssi_sloc4_1_0 + 1)
   463B C0 02         [24]  873 	push	ar2
   463D C0 03         [24]  874 	push	ar3
   463F 74 BB         [12]  875 	mov	a,#__str_1
   4641 C0 E0         [24]  876 	push	acc
   4643 74 CC         [12]  877 	mov	a,#(__str_1 >> 8)
   4645 C0 E0         [24]  878 	push	acc
   4647 74 80         [12]  879 	mov	a,#0x80
   4649 C0 E0         [24]  880 	push	acc
   464B 12 2D B6      [24]  881 	lcall	_printfl
   464E E5 81         [12]  882 	mov	a,sp
   4650 24 ED         [12]  883 	add	a,#0xed
   4652 F5 81         [12]  884 	mov	sp,a
                            885 ;	radio/tdm.c:169: statistics.receive_count = 0;
   4654 78 42         [12]  886 	mov	r0,#(_statistics + 0x0002)
   4656 E4            [12]  887 	clr	a
   4657 F2            [24]  888 	movx	@r0,a
   4658 08            [12]  889 	inc	r0
   4659 F2            [24]  890 	movx	@r0,a
   465A 22            [24]  891 	ret
                            892 ;------------------------------------------------------------
                            893 ;Allocation info for local variables in function 'display_test_output'
                            894 ;------------------------------------------------------------
                            895 ;	radio/tdm.c:175: display_test_output(void)
                            896 ;	-----------------------------------------
                            897 ;	 function display_test_output
                            898 ;	-----------------------------------------
   465B                     899 _display_test_output:
                            900 ;	radio/tdm.c:177: if (test_display & AT_TEST_RSSI) {
   465B 78 CF         [12]  901 	mov	r0,#_test_display
   465D E2            [24]  902 	movx	a,@r0
   465E 54 01         [12]  903 	anl	a,#0x01
   4660 60 03         [24]  904 	jz	00103$
                            905 ;	radio/tdm.c:178: tdm_show_rssi();
   4662 02 45 88      [24]  906 	ljmp	_tdm_show_rssi
   4665                     907 00103$:
   4665 22            [24]  908 	ret
                            909 ;------------------------------------------------------------
                            910 ;Allocation info for local variables in function 'flight_time_estimate'
                            911 ;------------------------------------------------------------
                            912 ;	radio/tdm.c:188: static uint16_t flight_time_estimate(__pdata uint8_t packet_len)
                            913 ;	-----------------------------------------
                            914 ;	 function flight_time_estimate
                            915 ;	-----------------------------------------
   4666                     916 _flight_time_estimate:
   4666 AF 82         [24]  917 	mov	r7,dpl
                            918 ;	radio/tdm.c:190: return packet_latency + (packet_len * ticks_per_byte);
   4668 7E 00         [12]  919 	mov	r6,#0x00
   466A 78 C0         [12]  920 	mov	r0,#_ticks_per_byte
   466C 90 05 CB      [24]  921 	mov	dptr,#__mulint_PARM_2
   466F E2            [24]  922 	movx	a,@r0
   4670 F0            [24]  923 	movx	@dptr,a
   4671 08            [12]  924 	inc	r0
   4672 E2            [24]  925 	movx	a,@r0
   4673 A3            [24]  926 	inc	dptr
   4674 F0            [24]  927 	movx	@dptr,a
   4675 8F 82         [24]  928 	mov	dpl,r7
   4677 8E 83         [24]  929 	mov	dph,r6
   4679 12 5E 74      [24]  930 	lcall	__mulint
   467C AE 82         [24]  931 	mov	r6,dpl
   467E AF 83         [24]  932 	mov	r7,dph
   4680 78 BE         [12]  933 	mov	r0,#_packet_latency
   4682 E2            [24]  934 	movx	a,@r0
   4683 2E            [12]  935 	add	a,r6
   4684 FE            [12]  936 	mov	r6,a
   4685 08            [12]  937 	inc	r0
   4686 E2            [24]  938 	movx	a,@r0
   4687 3F            [12]  939 	addc	a,r7
   4688 8E 82         [24]  940 	mov	dpl,r6
   468A F5 83         [12]  941 	mov	dph,a
   468C 22            [24]  942 	ret
                            943 ;------------------------------------------------------------
                            944 ;Allocation info for local variables in function 'sync_tx_windows'
                            945 ;------------------------------------------------------------
                            946 ;old_state                 Allocated with name '_sync_tx_windows_old_state_1_155'
                            947 ;------------------------------------------------------------
                            948 ;	radio/tdm.c:204: sync_tx_windows(__pdata uint8_t packet_length)
                            949 ;	-----------------------------------------
                            950 ;	 function sync_tx_windows
                            951 ;	-----------------------------------------
   468D                     952 _sync_tx_windows:
   468D AF 82         [24]  953 	mov	r7,dpl
                            954 ;	radio/tdm.c:206: __data enum tdm_state old_state = tdm_state;
   468F 78 B6         [12]  955 	mov	r0,#_tdm_state
   4691 E2            [24]  956 	movx	a,@r0
   4692 F5 61         [12]  957 	mov	_sync_tx_windows_old_state_1_155,a
                            958 ;	radio/tdm.c:207: __pdata uint16_t old_remaining = tdm_state_remaining;
   4694 78 B7         [12]  959 	mov	r0,#_tdm_state_remaining
   4696 E2            [24]  960 	movx	a,@r0
   4697 FC            [12]  961 	mov	r4,a
   4698 08            [12]  962 	inc	r0
   4699 E2            [24]  963 	movx	a,@r0
   469A FD            [12]  964 	mov	r5,a
                            965 ;	radio/tdm.c:209: if (trailer.bonus) {
   469B 78 D1         [12]  966 	mov	r0,#(_trailer + 0x0001)
   469D E2            [24]  967 	movx	a,@r0
   469E 30 E6 46      [24]  968 	jnb	acc.6,00109$
                            969 ;	radio/tdm.c:212: if (old_state == TDM_SILENCE1) {
   46A1 74 01         [12]  970 	mov	a,#0x01
   46A3 B5 61 10      [24]  971 	cjne	a,_sync_tx_windows_old_state_1_155,00106$
                            972 ;	radio/tdm.c:218: tdm_state_remaining = silence_period;
   46A6 78 BC         [12]  973 	mov	r0,#_silence_period
   46A8 E2            [24]  974 	movx	a,@r0
   46A9 FA            [12]  975 	mov	r2,a
   46AA 08            [12]  976 	inc	r0
   46AB E2            [24]  977 	movx	a,@r0
   46AC FB            [12]  978 	mov	r3,a
   46AD 78 B7         [12]  979 	mov	r0,#_tdm_state_remaining
   46AF EA            [12]  980 	mov	a,r2
   46B0 F2            [24]  981 	movx	@r0,a
   46B1 08            [12]  982 	inc	r0
   46B2 EB            [12]  983 	mov	a,r3
   46B3 F2            [24]  984 	movx	@r0,a
   46B4 80 46         [24]  985 	sjmp	00110$
   46B6                     986 00106$:
                            987 ;	radio/tdm.c:219: } else if (old_state == TDM_RECEIVE || old_state == TDM_SILENCE2) {
   46B6 74 02         [12]  988 	mov	a,#0x02
   46B8 B5 61 02      [24]  989 	cjne	a,_sync_tx_windows_old_state_1_155,00151$
   46BB 80 05         [24]  990 	sjmp	00101$
   46BD                     991 00151$:
   46BD 74 03         [12]  992 	mov	a,#0x03
   46BF B5 61 0F      [24]  993 	cjne	a,_sync_tx_windows_old_state_1_155,00102$
   46C2                     994 00101$:
                            995 ;	radio/tdm.c:224: tdm_state = TDM_SILENCE2;
   46C2 78 B6         [12]  996 	mov	r0,#_tdm_state
   46C4 74 03         [12]  997 	mov	a,#0x03
   46C6 F2            [24]  998 	movx	@r0,a
                            999 ;	radio/tdm.c:225: tdm_state_remaining = 1;
   46C7 78 B7         [12] 1000 	mov	r0,#_tdm_state_remaining
   46C9 74 01         [12] 1001 	mov	a,#0x01
   46CB F2            [24] 1002 	movx	@r0,a
   46CC 08            [12] 1003 	inc	r0
   46CD E4            [12] 1004 	clr	a
   46CE F2            [24] 1005 	movx	@r0,a
   46CF 80 2B         [24] 1006 	sjmp	00110$
   46D1                    1007 00102$:
                           1008 ;	radio/tdm.c:227: tdm_state = TDM_TRANSMIT;
   46D1 78 B6         [12] 1009 	mov	r0,#_tdm_state
   46D3 E4            [12] 1010 	clr	a
   46D4 F2            [24] 1011 	movx	@r0,a
                           1012 ;	radio/tdm.c:228: tdm_state_remaining = trailer.window;
   46D5 78 D0         [12] 1013 	mov	r0,#_trailer
   46D7 E2            [24] 1014 	movx	a,@r0
   46D8 FA            [12] 1015 	mov	r2,a
   46D9 08            [12] 1016 	inc	r0
   46DA E2            [24] 1017 	movx	a,@r0
   46DB 54 1F         [12] 1018 	anl	a,#0x1F
   46DD FB            [12] 1019 	mov	r3,a
   46DE 78 B7         [12] 1020 	mov	r0,#_tdm_state_remaining
   46E0 EA            [12] 1021 	mov	a,r2
   46E1 F2            [24] 1022 	movx	@r0,a
   46E2 08            [12] 1023 	inc	r0
   46E3 EB            [12] 1024 	mov	a,r3
   46E4 F2            [24] 1025 	movx	@r0,a
   46E5 80 15         [24] 1026 	sjmp	00110$
   46E7                    1027 00109$:
                           1028 ;	radio/tdm.c:233: tdm_state = TDM_RECEIVE;
   46E7 78 B6         [12] 1029 	mov	r0,#_tdm_state
   46E9 74 02         [12] 1030 	mov	a,#0x02
   46EB F2            [24] 1031 	movx	@r0,a
                           1032 ;	radio/tdm.c:234: tdm_state_remaining = trailer.window;
   46EC 78 D0         [12] 1033 	mov	r0,#_trailer
   46EE E2            [24] 1034 	movx	a,@r0
   46EF FA            [12] 1035 	mov	r2,a
   46F0 08            [12] 1036 	inc	r0
   46F1 E2            [24] 1037 	movx	a,@r0
   46F2 54 1F         [12] 1038 	anl	a,#0x1F
   46F4 FB            [12] 1039 	mov	r3,a
   46F5 78 B7         [12] 1040 	mov	r0,#_tdm_state_remaining
   46F7 EA            [12] 1041 	mov	a,r2
   46F8 F2            [24] 1042 	movx	@r0,a
   46F9 08            [12] 1043 	inc	r0
   46FA EB            [12] 1044 	mov	a,r3
   46FB F2            [24] 1045 	movx	@r0,a
   46FC                    1046 00110$:
                           1047 ;	radio/tdm.c:239: bonus_transmit = (tdm_state == TDM_RECEIVE && packet_length==0);
   46FC 78 B6         [12] 1048 	mov	r0,#_tdm_state
   46FE E2            [24] 1049 	movx	a,@r0
   46FF B4 02 08      [24] 1050 	cjne	a,#0x02,00121$
   4702 EF            [12] 1051 	mov	a,r7
   4703 B4 01 00      [24] 1052 	cjne	a,#0x01,00156$
   4706                    1053 00156$:
   4706 92 2E         [24] 1054 	mov	_sync_tx_windows_sloc0_1_0,c
   4708 40 04         [24] 1055 	jc	00122$
   470A                    1056 00121$:
   470A C2 2E         [12] 1057 	clr	_sync_tx_windows_sloc0_1_0
   470C 80 02         [24] 1058 	sjmp	00123$
   470E                    1059 00122$:
   470E D2 2E         [12] 1060 	setb	_sync_tx_windows_sloc0_1_0
   4710                    1061 00123$:
   4710 A2 2E         [12] 1062 	mov	c,_sync_tx_windows_sloc0_1_0
   4712 92 27         [24] 1063 	mov	_bonus_transmit,c
                           1064 ;	radio/tdm.c:242: if (tdm_state != TDM_TRANSMIT) {
   4714 78 B6         [12] 1065 	mov	r0,#_tdm_state
   4716 E2            [24] 1066 	movx	a,@r0
   4717 60 02         [24] 1067 	jz	00112$
                           1068 ;	radio/tdm.c:243: transmit_yield = 0;
   4719 C2 28         [12] 1069 	clr	_transmit_yield
   471B                    1070 00112$:
                           1071 ;	radio/tdm.c:246: if (at_testmode & AT_TEST_TDM) {
   471B 78 13         [12] 1072 	mov	r0,#_at_testmode
   471D E2            [24] 1073 	movx	a,@r0
   471E 54 02         [12] 1074 	anl	a,#0x02
   4720 70 01         [24] 1075 	jnz	00159$
   4722 22            [24] 1076 	ret
   4723                    1077 00159$:
                           1078 ;	radio/tdm.c:248: delta = old_remaining - tdm_state_remaining;
   4723 78 B7         [12] 1079 	mov	r0,#_tdm_state_remaining
   4725 79 E3         [12] 1080 	mov	r1,#_sync_tx_windows_delta_2_162
   4727 D3            [12] 1081 	setb	c
   4728 E2            [24] 1082 	movx	a,@r0
   4729 9C            [12] 1083 	subb	a,r4
   472A F4            [12] 1084 	cpl	a
   472B B3            [12] 1085 	cpl	c
   472C F3            [24] 1086 	movx	@r1,a
   472D B3            [12] 1087 	cpl	c
   472E 08            [12] 1088 	inc	r0
   472F E2            [24] 1089 	movx	a,@r0
   4730 9D            [12] 1090 	subb	a,r5
   4731 F4            [12] 1091 	cpl	a
   4732 09            [12] 1092 	inc	r1
   4733 F3            [24] 1093 	movx	@r1,a
                           1094 ;	radio/tdm.c:249: if (old_state != tdm_state ||
   4734 78 B6         [12] 1095 	mov	r0,#_tdm_state
   4736 E2            [24] 1096 	movx	a,@r0
   4737 B5 61 6E      [24] 1097 	cjne	a,_sync_tx_windows_old_state_1_155,00113$
                           1098 ;	radio/tdm.c:250: delta > (int16_t)packet_latency/2 ||
   473A C0 07         [24] 1099 	push	ar7
   473C 78 BE         [12] 1100 	mov	r0,#_packet_latency
   473E E2            [24] 1101 	movx	a,@r0
   473F FA            [12] 1102 	mov	r2,a
   4740 08            [12] 1103 	inc	r0
   4741 E2            [24] 1104 	movx	a,@r0
   4742 FB            [12] 1105 	mov	r3,a
   4743 90 05 E8      [24] 1106 	mov	dptr,#__divsint_PARM_2
   4746 74 02         [12] 1107 	mov	a,#0x02
   4748 F0            [24] 1108 	movx	@dptr,a
   4749 E4            [12] 1109 	clr	a
   474A A3            [24] 1110 	inc	dptr
   474B F0            [24] 1111 	movx	@dptr,a
   474C 8A 82         [24] 1112 	mov	dpl,r2
   474E 8B 83         [24] 1113 	mov	dph,r3
   4750 C0 03         [24] 1114 	push	ar3
   4752 C0 02         [24] 1115 	push	ar2
   4754 12 61 80      [24] 1116 	lcall	__divsint
   4757 AE 82         [24] 1117 	mov	r6,dpl
   4759 AF 83         [24] 1118 	mov	r7,dph
   475B D0 02         [24] 1119 	pop	ar2
   475D D0 03         [24] 1120 	pop	ar3
   475F 78 E3         [12] 1121 	mov	r0,#_sync_tx_windows_delta_2_162
   4761 C3            [12] 1122 	clr	c
   4762 E2            [24] 1123 	movx	a,@r0
   4763 F5 F0         [12] 1124 	mov	b,a
   4765 EE            [12] 1125 	mov	a,r6
   4766 95 F0         [12] 1126 	subb	a,b
   4768 08            [12] 1127 	inc	r0
   4769 E2            [24] 1128 	movx	a,@r0
   476A F5 F0         [12] 1129 	mov	b,a
   476C EF            [12] 1130 	mov	a,r7
   476D 64 80         [12] 1131 	xrl	a,#0x80
   476F 63 F0 80      [24] 1132 	xrl	b,#0x80
   4772 95 F0         [12] 1133 	subb	a,b
   4774 D0 07         [24] 1134 	pop	ar7
                           1135 ;	radio/tdm.c:251: delta < -(int16_t)packet_latency/2) {
   4776 40 30         [24] 1136 	jc	00113$
   4778 E4            [12] 1137 	clr	a
   4779 9A            [12] 1138 	subb	a,r2
   477A FA            [12] 1139 	mov	r2,a
   477B E4            [12] 1140 	clr	a
   477C 9B            [12] 1141 	subb	a,r3
   477D FB            [12] 1142 	mov	r3,a
   477E 90 05 E8      [24] 1143 	mov	dptr,#__divsint_PARM_2
   4781 74 02         [12] 1144 	mov	a,#0x02
   4783 F0            [24] 1145 	movx	@dptr,a
   4784 E4            [12] 1146 	clr	a
   4785 A3            [24] 1147 	inc	dptr
   4786 F0            [24] 1148 	movx	@dptr,a
   4787 8A 82         [24] 1149 	mov	dpl,r2
   4789 8B 83         [24] 1150 	mov	dph,r3
   478B C0 07         [24] 1151 	push	ar7
   478D 12 61 80      [24] 1152 	lcall	__divsint
   4790 AB 82         [24] 1153 	mov	r3,dpl
   4792 AE 83         [24] 1154 	mov	r6,dph
   4794 D0 07         [24] 1155 	pop	ar7
   4796 78 E3         [12] 1156 	mov	r0,#_sync_tx_windows_delta_2_162
   4798 C3            [12] 1157 	clr	c
   4799 E2            [24] 1158 	movx	a,@r0
   479A 9B            [12] 1159 	subb	a,r3
   479B 08            [12] 1160 	inc	r0
   479C E2            [24] 1161 	movx	a,@r0
   479D 64 80         [12] 1162 	xrl	a,#0x80
   479F 8E F0         [24] 1163 	mov	b,r6
   47A1 63 F0 80      [24] 1164 	xrl	b,#0x80
   47A4 95 F0         [12] 1165 	subb	a,b
   47A6 50 4B         [24] 1166 	jnc	00119$
   47A8                    1167 00113$:
                           1168 ;	radio/tdm.c:252: printf("TDM: %u/%u len=%u ",
   47A8 7E 00         [12] 1169 	mov	r6,#0x00
   47AA 78 B6         [12] 1170 	mov	r0,#_tdm_state
   47AC E2            [24] 1171 	movx	a,@r0
   47AD FA            [12] 1172 	mov	r2,a
   47AE 7B 00         [12] 1173 	mov	r3,#0x00
   47B0 AC 61         [24] 1174 	mov	r4,_sync_tx_windows_old_state_1_155
   47B2 7D 00         [12] 1175 	mov	r5,#0x00
   47B4 C0 07         [24] 1176 	push	ar7
   47B6 C0 06         [24] 1177 	push	ar6
   47B8 C0 02         [24] 1178 	push	ar2
   47BA C0 03         [24] 1179 	push	ar3
   47BC C0 04         [24] 1180 	push	ar4
   47BE C0 05         [24] 1181 	push	ar5
   47C0 74 F2         [12] 1182 	mov	a,#__str_2
   47C2 C0 E0         [24] 1183 	push	acc
   47C4 74 CC         [12] 1184 	mov	a,#(__str_2 >> 8)
   47C6 C0 E0         [24] 1185 	push	acc
   47C8 74 80         [12] 1186 	mov	a,#0x80
   47CA C0 E0         [24] 1187 	push	acc
   47CC 12 2D B6      [24] 1188 	lcall	_printfl
   47CF E5 81         [12] 1189 	mov	a,sp
   47D1 24 F7         [12] 1190 	add	a,#0xf7
   47D3 F5 81         [12] 1191 	mov	sp,a
                           1192 ;	radio/tdm.c:256: printf(" delta: %d\n",
   47D5 78 E3         [12] 1193 	mov	r0,#_sync_tx_windows_delta_2_162
   47D7 E2            [24] 1194 	movx	a,@r0
   47D8 C0 E0         [24] 1195 	push	acc
   47DA 08            [12] 1196 	inc	r0
   47DB E2            [24] 1197 	movx	a,@r0
   47DC C0 E0         [24] 1198 	push	acc
   47DE 74 05         [12] 1199 	mov	a,#__str_3
   47E0 C0 E0         [24] 1200 	push	acc
   47E2 74 CD         [12] 1201 	mov	a,#(__str_3 >> 8)
   47E4 C0 E0         [24] 1202 	push	acc
   47E6 74 80         [12] 1203 	mov	a,#0x80
   47E8 C0 E0         [24] 1204 	push	acc
   47EA 12 2D B6      [24] 1205 	lcall	_printfl
   47ED E5 81         [12] 1206 	mov	a,sp
   47EF 24 FB         [12] 1207 	add	a,#0xfb
   47F1 F5 81         [12] 1208 	mov	sp,a
   47F3                    1209 00119$:
   47F3 22            [24] 1210 	ret
                           1211 ;------------------------------------------------------------
                           1212 ;Allocation info for local variables in function 'tdm_state_update'
                           1213 ;------------------------------------------------------------
                           1214 ;sloc0                     Allocated with name '_tdm_state_update_sloc0_1_0'
                           1215 ;sloc1                     Allocated with name '_tdm_state_update_sloc1_1_0'
                           1216 ;sloc2                     Allocated with name '_tdm_state_update_sloc2_1_0'
                           1217 ;------------------------------------------------------------
                           1218 ;	radio/tdm.c:265: tdm_state_update(__pdata uint16_t tdelta)
                           1219 ;	-----------------------------------------
                           1220 ;	 function tdm_state_update
                           1221 ;	-----------------------------------------
   47F4                    1222 _tdm_state_update:
   47F4 AE 82         [24] 1223 	mov	r6,dpl
   47F6 AF 83         [24] 1224 	mov	r7,dph
                           1225 ;	radio/tdm.c:269: if (tdelta > transmit_wait) {
   47F8 78 C2         [12] 1226 	mov	r0,#_transmit_wait
   47FA C3            [12] 1227 	clr	c
   47FB E2            [24] 1228 	movx	a,@r0
   47FC 9E            [12] 1229 	subb	a,r6
   47FD 08            [12] 1230 	inc	r0
   47FE E2            [24] 1231 	movx	a,@r0
   47FF 9F            [12] 1232 	subb	a,r7
   4800 50 08         [24] 1233 	jnc	00102$
                           1234 ;	radio/tdm.c:270: transmit_wait = 0;
   4802 78 C2         [12] 1235 	mov	r0,#_transmit_wait
   4804 E4            [12] 1236 	clr	a
   4805 F2            [24] 1237 	movx	@r0,a
   4806 08            [12] 1238 	inc	r0
   4807 F2            [24] 1239 	movx	@r0,a
   4808 80 0A         [24] 1240 	sjmp	00116$
   480A                    1241 00102$:
                           1242 ;	radio/tdm.c:272: transmit_wait -= tdelta;
   480A 78 C2         [12] 1243 	mov	r0,#_transmit_wait
   480C E2            [24] 1244 	movx	a,@r0
   480D C3            [12] 1245 	clr	c
   480E 9E            [12] 1246 	subb	a,r6
   480F F2            [24] 1247 	movx	@r0,a
   4810 08            [12] 1248 	inc	r0
   4811 E2            [24] 1249 	movx	a,@r0
   4812 9F            [12] 1250 	subb	a,r7
   4813 F2            [24] 1251 	movx	@r0,a
                           1252 ;	radio/tdm.c:276: while (tdelta >= tdm_state_remaining) {
   4814                    1253 00116$:
   4814 78 B7         [12] 1254 	mov	r0,#_tdm_state_remaining
   4816 C3            [12] 1255 	clr	c
   4817 E2            [24] 1256 	movx	a,@r0
   4818 F5 F0         [12] 1257 	mov	b,a
   481A EE            [12] 1258 	mov	a,r6
   481B 95 F0         [12] 1259 	subb	a,b
   481D 08            [12] 1260 	inc	r0
   481E E2            [24] 1261 	movx	a,@r0
   481F F5 F0         [12] 1262 	mov	b,a
   4821 EF            [12] 1263 	mov	a,r7
   4822 95 F0         [12] 1264 	subb	a,b
   4824 50 03         [24] 1265 	jnc	00146$
   4826 02 4A 5B      [24] 1266 	ljmp	00118$
   4829                    1267 00146$:
                           1268 ;	radio/tdm.c:278: tdm_state = (tdm_state+1) % 4;
   4829 78 B6         [12] 1269 	mov	r0,#_tdm_state
   482B E2            [24] 1270 	movx	a,@r0
   482C FC            [12] 1271 	mov	r4,a
   482D 7D 00         [12] 1272 	mov	r5,#0x00
   482F 0C            [12] 1273 	inc	r4
   4830 BC 00 01      [24] 1274 	cjne	r4,#0x00,00147$
   4833 0D            [12] 1275 	inc	r5
   4834                    1276 00147$:
   4834 90 05 D3      [24] 1277 	mov	dptr,#__modsint_PARM_2
   4837 74 04         [12] 1278 	mov	a,#0x04
   4839 F0            [24] 1279 	movx	@dptr,a
   483A E4            [12] 1280 	clr	a
   483B A3            [24] 1281 	inc	dptr
   483C F0            [24] 1282 	movx	@dptr,a
   483D 8C 82         [24] 1283 	mov	dpl,r4
   483F 8D 83         [24] 1284 	mov	dph,r5
   4841 C0 07         [24] 1285 	push	ar7
   4843 C0 06         [24] 1286 	push	ar6
   4845 12 5F 28      [24] 1287 	lcall	__modsint
   4848 AC 82         [24] 1288 	mov	r4,dpl
   484A AD 83         [24] 1289 	mov	r5,dph
   484C D0 06         [24] 1290 	pop	ar6
   484E D0 07         [24] 1291 	pop	ar7
   4850 78 B6         [12] 1292 	mov	r0,#_tdm_state
   4852 EC            [12] 1293 	mov	a,r4
   4853 F2            [24] 1294 	movx	@r0,a
                           1295 ;	radio/tdm.c:281: tdelta -= tdm_state_remaining;
   4854 78 B7         [12] 1296 	mov	r0,#_tdm_state_remaining
   4856 D3            [12] 1297 	setb	c
   4857 E2            [24] 1298 	movx	a,@r0
   4858 9E            [12] 1299 	subb	a,r6
   4859 F4            [12] 1300 	cpl	a
   485A B3            [12] 1301 	cpl	c
   485B FE            [12] 1302 	mov	r6,a
   485C B3            [12] 1303 	cpl	c
   485D 08            [12] 1304 	inc	r0
   485E E2            [24] 1305 	movx	a,@r0
   485F 9F            [12] 1306 	subb	a,r7
   4860 F4            [12] 1307 	cpl	a
   4861 FF            [12] 1308 	mov	r7,a
                           1309 ;	radio/tdm.c:283: if (tdm_state == TDM_TRANSMIT || tdm_state == TDM_RECEIVE) {
   4862 78 B6         [12] 1310 	mov	r0,#_tdm_state
   4864 E2            [24] 1311 	movx	a,@r0
   4865 60 06         [24] 1312 	jz	00104$
   4867 78 B6         [12] 1313 	mov	r0,#_tdm_state
   4869 E2            [24] 1314 	movx	a,@r0
   486A B4 02 10      [24] 1315 	cjne	a,#0x02,00105$
   486D                    1316 00104$:
                           1317 ;	radio/tdm.c:284: tdm_state_remaining = tx_window_width;
   486D 78 B9         [12] 1318 	mov	r0,#_tx_window_width
   486F E2            [24] 1319 	movx	a,@r0
   4870 FC            [12] 1320 	mov	r4,a
   4871 08            [12] 1321 	inc	r0
   4872 E2            [24] 1322 	movx	a,@r0
   4873 FD            [12] 1323 	mov	r5,a
   4874 78 B7         [12] 1324 	mov	r0,#_tdm_state_remaining
   4876 EC            [12] 1325 	mov	a,r4
   4877 F2            [24] 1326 	movx	@r0,a
   4878 08            [12] 1327 	inc	r0
   4879 ED            [12] 1328 	mov	a,r5
   487A F2            [24] 1329 	movx	@r0,a
   487B 80 0E         [24] 1330 	sjmp	00106$
   487D                    1331 00105$:
                           1332 ;	radio/tdm.c:286: tdm_state_remaining = silence_period;
   487D 78 BC         [12] 1333 	mov	r0,#_silence_period
   487F E2            [24] 1334 	movx	a,@r0
   4880 FC            [12] 1335 	mov	r4,a
   4881 08            [12] 1336 	inc	r0
   4882 E2            [24] 1337 	movx	a,@r0
   4883 FD            [12] 1338 	mov	r5,a
   4884 78 B7         [12] 1339 	mov	r0,#_tdm_state_remaining
   4886 EC            [12] 1340 	mov	a,r4
   4887 F2            [24] 1341 	movx	@r0,a
   4888 08            [12] 1342 	inc	r0
   4889 ED            [12] 1343 	mov	a,r5
   488A F2            [24] 1344 	movx	@r0,a
   488B                    1345 00106$:
                           1346 ;	radio/tdm.c:292: if (tdm_state == TDM_TRANSMIT || tdm_state == TDM_SILENCE1) {
   488B 78 B6         [12] 1347 	mov	r0,#_tdm_state
   488D E2            [24] 1348 	movx	a,@r0
   488E 60 06         [24] 1349 	jz	00110$
   4890 78 B6         [12] 1350 	mov	r0,#_tdm_state
   4892 E2            [24] 1351 	movx	a,@r0
   4893 B4 01 26      [24] 1352 	cjne	a,#0x01,00111$
   4896                    1353 00110$:
                           1354 ;	radio/tdm.c:293: fhop_window_change();
   4896 C0 07         [24] 1355 	push	ar7
   4898 C0 06         [24] 1356 	push	ar6
   489A 12 0C 27      [24] 1357 	lcall	_fhop_window_change
                           1358 ;	radio/tdm.c:294: radio_receiver_on();
   489D 12 34 40      [24] 1359 	lcall	_radio_receiver_on
   48A0 D0 06         [24] 1360 	pop	ar6
   48A2 D0 07         [24] 1361 	pop	ar7
                           1362 ;	radio/tdm.c:296: if (num_fh_channels > 1) {
   48A4 78 18         [12] 1363 	mov	r0,#_num_fh_channels
   48A6 C3            [12] 1364 	clr	c
   48A7 E2            [24] 1365 	movx	a,@r0
   48A8 F5 F0         [12] 1366 	mov	b,a
   48AA 74 01         [12] 1367 	mov	a,#0x01
   48AC 95 F0         [12] 1368 	subb	a,b
   48AE 50 0C         [24] 1369 	jnc	00111$
                           1370 ;	radio/tdm.c:298: lbt_listen_time = 0;
   48B0 78 C9         [12] 1371 	mov	r0,#_lbt_listen_time
   48B2 E4            [12] 1372 	clr	a
   48B3 F2            [24] 1373 	movx	@r0,a
   48B4 08            [12] 1374 	inc	r0
   48B5 F2            [24] 1375 	movx	@r0,a
                           1376 ;	radio/tdm.c:299: lbt_rand = 0;
   48B6 78 CD         [12] 1377 	mov	r0,#_lbt_rand
   48B8 E4            [12] 1378 	clr	a
   48B9 F2            [24] 1379 	movx	@r0,a
   48BA 08            [12] 1380 	inc	r0
   48BB F2            [24] 1381 	movx	@r0,a
   48BC                    1382 00111$:
                           1383 ;	radio/tdm.c:303: if (tdm_state == TDM_TRANSMIT && (duty_cycle - duty_cycle_offset) != 100) {
   48BC 78 B6         [12] 1384 	mov	r0,#_tdm_state
   48BE E2            [24] 1385 	movx	a,@r0
   48BF 60 03         [24] 1386 	jz	00155$
   48C1 02 4A 4E      [24] 1387 	ljmp	00114$
   48C4                    1388 00155$:
   48C4 C0 06         [24] 1389 	push	ar6
   48C6 C0 07         [24] 1390 	push	ar7
   48C8 78 C4         [12] 1391 	mov	r0,#_duty_cycle
   48CA E2            [24] 1392 	movx	a,@r0
   48CB FC            [12] 1393 	mov	r4,a
   48CC 7D 00         [12] 1394 	mov	r5,#0x00
   48CE 78 C5         [12] 1395 	mov	r0,#_duty_cycle_offset
   48D0 E2            [24] 1396 	movx	a,@r0
   48D1 F5 62         [12] 1397 	mov	_tdm_state_update_sloc0_1_0,a
   48D3 75 63 00      [24] 1398 	mov	(_tdm_state_update_sloc0_1_0 + 1),#0x00
   48D6 EC            [12] 1399 	mov	a,r4
   48D7 C3            [12] 1400 	clr	c
   48D8 95 62         [12] 1401 	subb	a,_tdm_state_update_sloc0_1_0
   48DA FE            [12] 1402 	mov	r6,a
   48DB ED            [12] 1403 	mov	a,r5
   48DC 95 63         [12] 1404 	subb	a,(_tdm_state_update_sloc0_1_0 + 1)
   48DE FF            [12] 1405 	mov	r7,a
   48DF BE 64 0A      [24] 1406 	cjne	r6,#0x64,00156$
   48E2 BF 00 07      [24] 1407 	cjne	r7,#0x00,00156$
   48E5 D0 07         [24] 1408 	pop	ar7
   48E7 D0 06         [24] 1409 	pop	ar6
   48E9 02 4A 4E      [24] 1410 	ljmp	00114$
   48EC                    1411 00156$:
   48EC D0 07         [24] 1412 	pop	ar7
   48EE D0 06         [24] 1413 	pop	ar6
                           1414 ;	radio/tdm.c:305: average_duty_cycle = (0.95*average_duty_cycle) + (0.05*(100.0*transmitted_ticks)/(2*(silence_period+tx_window_width)));
   48F0 C0 06         [24] 1415 	push	ar6
   48F2 C0 07         [24] 1416 	push	ar7
   48F4 C0 07         [24] 1417 	push	ar7
   48F6 C0 06         [24] 1418 	push	ar6
   48F8 C0 05         [24] 1419 	push	ar5
   48FA C0 04         [24] 1420 	push	ar4
   48FC C0 53         [24] 1421 	push	_average_duty_cycle
   48FE C0 54         [24] 1422 	push	(_average_duty_cycle + 1)
   4900 C0 55         [24] 1423 	push	(_average_duty_cycle + 2)
   4902 C0 56         [24] 1424 	push	(_average_duty_cycle + 3)
   4904 90 33 33      [24] 1425 	mov	dptr,#0x3333
   4907 75 F0 73      [24] 1426 	mov	b,#0x73
   490A 74 3F         [12] 1427 	mov	a,#0x3F
   490C 12 5A E6      [24] 1428 	lcall	___fsmul
   490F 85 82 64      [24] 1429 	mov	_tdm_state_update_sloc1_1_0,dpl
   4912 85 83 65      [24] 1430 	mov	(_tdm_state_update_sloc1_1_0 + 1),dph
   4915 85 F0 66      [24] 1431 	mov	(_tdm_state_update_sloc1_1_0 + 2),b
   4918 F5 67         [12] 1432 	mov	(_tdm_state_update_sloc1_1_0 + 3),a
   491A E5 81         [12] 1433 	mov	a,sp
   491C 24 FC         [12] 1434 	add	a,#0xfc
   491E F5 81         [12] 1435 	mov	sp,a
   4920 D0 04         [24] 1436 	pop	ar4
   4922 D0 05         [24] 1437 	pop	ar5
   4924 D0 06         [24] 1438 	pop	ar6
   4926 D0 07         [24] 1439 	pop	ar7
   4928 78 C6         [12] 1440 	mov	r0,#_transmitted_ticks
   492A E2            [24] 1441 	movx	a,@r0
   492B F5 82         [12] 1442 	mov	dpl,a
   492D 08            [12] 1443 	inc	r0
   492E E2            [24] 1444 	movx	a,@r0
   492F F5 83         [12] 1445 	mov	dph,a
   4931 C0 05         [24] 1446 	push	ar5
   4933 C0 04         [24] 1447 	push	ar4
   4935 12 62 ED      [24] 1448 	lcall	___uint2fs
   4938 AA 82         [24] 1449 	mov	r2,dpl
   493A AB 83         [24] 1450 	mov	r3,dph
   493C AE F0         [24] 1451 	mov	r6,b
   493E FF            [12] 1452 	mov	r7,a
   493F D0 04         [24] 1453 	pop	ar4
   4941 D0 05         [24] 1454 	pop	ar5
   4943 C0 07         [24] 1455 	push	ar7
   4945 C0 06         [24] 1456 	push	ar6
   4947 C0 05         [24] 1457 	push	ar5
   4949 C0 04         [24] 1458 	push	ar4
   494B C0 02         [24] 1459 	push	ar2
   494D C0 03         [24] 1460 	push	ar3
   494F C0 06         [24] 1461 	push	ar6
   4951 C0 07         [24] 1462 	push	ar7
   4953 90 00 00      [24] 1463 	mov	dptr,#0x0000
   4956 75 F0 A0      [24] 1464 	mov	b,#0xA0
   4959 74 40         [12] 1465 	mov	a,#0x40
   495B 12 5A E6      [24] 1466 	lcall	___fsmul
   495E 85 82 68      [24] 1467 	mov	_tdm_state_update_sloc2_1_0,dpl
   4961 85 83 69      [24] 1468 	mov	(_tdm_state_update_sloc2_1_0 + 1),dph
   4964 85 F0 6A      [24] 1469 	mov	(_tdm_state_update_sloc2_1_0 + 2),b
   4967 F5 6B         [12] 1470 	mov	(_tdm_state_update_sloc2_1_0 + 3),a
   4969 E5 81         [12] 1471 	mov	a,sp
   496B 24 FC         [12] 1472 	add	a,#0xfc
   496D F5 81         [12] 1473 	mov	sp,a
   496F D0 04         [24] 1474 	pop	ar4
   4971 D0 05         [24] 1475 	pop	ar5
   4973 D0 06         [24] 1476 	pop	ar6
   4975 D0 07         [24] 1477 	pop	ar7
   4977 78 BC         [12] 1478 	mov	r0,#_silence_period
   4979 79 B9         [12] 1479 	mov	r1,#_tx_window_width
   497B E3            [24] 1480 	movx	a,@r1
   497C C5 F0         [12] 1481 	xch	a,b
   497E E2            [24] 1482 	movx	a,@r0
   497F 25 F0         [12] 1483 	add	a,b
   4981 FE            [12] 1484 	mov	r6,a
   4982 09            [12] 1485 	inc	r1
   4983 E3            [24] 1486 	movx	a,@r1
   4984 C5 F0         [12] 1487 	xch	a,b
   4986 08            [12] 1488 	inc	r0
   4987 E2            [24] 1489 	movx	a,@r0
   4988 35 F0         [12] 1490 	addc	a,b
   498A CE            [12] 1491 	xch	a,r6
   498B 25 E0         [12] 1492 	add	a,acc
   498D CE            [12] 1493 	xch	a,r6
   498E 33            [12] 1494 	rlc	a
   498F FF            [12] 1495 	mov	r7,a
   4990 8E 82         [24] 1496 	mov	dpl,r6
   4992 8F 83         [24] 1497 	mov	dph,r7
   4994 C0 05         [24] 1498 	push	ar5
   4996 C0 04         [24] 1499 	push	ar4
   4998 12 62 ED      [24] 1500 	lcall	___uint2fs
   499B AA 82         [24] 1501 	mov	r2,dpl
   499D AB 83         [24] 1502 	mov	r3,dph
   499F AE F0         [24] 1503 	mov	r6,b
   49A1 FF            [12] 1504 	mov	r7,a
   49A2 C0 02         [24] 1505 	push	ar2
   49A4 C0 03         [24] 1506 	push	ar3
   49A6 C0 06         [24] 1507 	push	ar6
   49A8 C0 07         [24] 1508 	push	ar7
   49AA 85 68 82      [24] 1509 	mov	dpl,_tdm_state_update_sloc2_1_0
   49AD 85 69 83      [24] 1510 	mov	dph,(_tdm_state_update_sloc2_1_0 + 1)
   49B0 85 6A F0      [24] 1511 	mov	b,(_tdm_state_update_sloc2_1_0 + 2)
   49B3 E5 6B         [12] 1512 	mov	a,(_tdm_state_update_sloc2_1_0 + 3)
   49B5 12 64 11      [24] 1513 	lcall	___fsdiv
   49B8 AA 82         [24] 1514 	mov	r2,dpl
   49BA AB 83         [24] 1515 	mov	r3,dph
   49BC AE F0         [24] 1516 	mov	r6,b
   49BE FF            [12] 1517 	mov	r7,a
   49BF E5 81         [12] 1518 	mov	a,sp
   49C1 24 FC         [12] 1519 	add	a,#0xfc
   49C3 F5 81         [12] 1520 	mov	sp,a
   49C5 D0 04         [24] 1521 	pop	ar4
   49C7 D0 05         [24] 1522 	pop	ar5
   49C9 C0 07         [24] 1523 	push	ar7
   49CB C0 06         [24] 1524 	push	ar6
   49CD C0 05         [24] 1525 	push	ar5
   49CF C0 04         [24] 1526 	push	ar4
   49D1 C0 02         [24] 1527 	push	ar2
   49D3 C0 03         [24] 1528 	push	ar3
   49D5 C0 06         [24] 1529 	push	ar6
   49D7 C0 07         [24] 1530 	push	ar7
   49D9 85 64 82      [24] 1531 	mov	dpl,_tdm_state_update_sloc1_1_0
   49DC 85 65 83      [24] 1532 	mov	dph,(_tdm_state_update_sloc1_1_0 + 1)
   49DF 85 66 F0      [24] 1533 	mov	b,(_tdm_state_update_sloc1_1_0 + 2)
   49E2 E5 67         [12] 1534 	mov	a,(_tdm_state_update_sloc1_1_0 + 3)
   49E4 12 61 F1      [24] 1535 	lcall	___fsadd
   49E7 85 82 53      [24] 1536 	mov	_average_duty_cycle,dpl
   49EA 85 83 54      [24] 1537 	mov	(_average_duty_cycle + 1),dph
   49ED 85 F0 55      [24] 1538 	mov	(_average_duty_cycle + 2),b
   49F0 F5 56         [12] 1539 	mov	(_average_duty_cycle + 3),a
   49F2 E5 81         [12] 1540 	mov	a,sp
   49F4 24 FC         [12] 1541 	add	a,#0xfc
   49F6 F5 81         [12] 1542 	mov	sp,a
   49F8 D0 04         [24] 1543 	pop	ar4
   49FA D0 05         [24] 1544 	pop	ar5
   49FC D0 06         [24] 1545 	pop	ar6
   49FE D0 07         [24] 1546 	pop	ar7
                           1547 ;	radio/tdm.c:306: transmitted_ticks = 0;
   4A00 78 C6         [12] 1548 	mov	r0,#_transmitted_ticks
   4A02 E4            [12] 1549 	clr	a
   4A03 F2            [24] 1550 	movx	@r0,a
   4A04 08            [12] 1551 	inc	r0
   4A05 F2            [24] 1552 	movx	@r0,a
                           1553 ;	radio/tdm.c:307: duty_cycle_wait = (average_duty_cycle >= (duty_cycle - duty_cycle_offset));
   4A06 EC            [12] 1554 	mov	a,r4
   4A07 C3            [12] 1555 	clr	c
   4A08 95 62         [12] 1556 	subb	a,_tdm_state_update_sloc0_1_0
   4A0A FC            [12] 1557 	mov	r4,a
   4A0B ED            [12] 1558 	mov	a,r5
   4A0C 95 63         [12] 1559 	subb	a,(_tdm_state_update_sloc0_1_0 + 1)
   4A0E FD            [12] 1560 	mov	r5,a
   4A0F 8C 82         [24] 1561 	mov	dpl,r4
   4A11 8D 83         [24] 1562 	mov	dph,r5
   4A13 12 62 AC      [24] 1563 	lcall	___sint2fs
   4A16 AC 82         [24] 1564 	mov	r4,dpl
   4A18 AD 83         [24] 1565 	mov	r5,dph
   4A1A AE F0         [24] 1566 	mov	r6,b
   4A1C FF            [12] 1567 	mov	r7,a
   4A1D C0 07         [24] 1568 	push	ar7
   4A1F C0 06         [24] 1569 	push	ar6
   4A21 C0 04         [24] 1570 	push	ar4
   4A23 C0 05         [24] 1571 	push	ar5
   4A25 C0 06         [24] 1572 	push	ar6
   4A27 C0 07         [24] 1573 	push	ar7
   4A29 85 53 82      [24] 1574 	mov	dpl,_average_duty_cycle
   4A2C 85 54 83      [24] 1575 	mov	dph,(_average_duty_cycle + 1)
   4A2F 85 55 F0      [24] 1576 	mov	b,(_average_duty_cycle + 2)
   4A32 E5 56         [12] 1577 	mov	a,(_average_duty_cycle + 3)
   4A34 12 5E 44      [24] 1578 	lcall	___fslt
   4A37 E5 81         [12] 1579 	mov	a,sp
   4A39 24 FC         [12] 1580 	add	a,#0xfc
   4A3B F5 81         [12] 1581 	mov	sp,a
   4A3D D0 06         [24] 1582 	pop	ar6
   4A3F D0 07         [24] 1583 	pop	ar7
   4A41 E5 82         [12] 1584 	mov	a,dpl
   4A43 24 FF         [12] 1585 	add	a,#0xFF
   4A45 92 2F         [24] 1586 	mov  _tdm_state_update_sloc3_1_0,c
   4A47 B3            [12] 1587 	cpl	c
   4A48 92 2B         [24] 1588 	mov	_duty_cycle_wait,c
                           1589 ;	radio/tdm.c:320: tdm_state_remaining -= tdelta;
   4A4A D0 07         [24] 1590 	pop	ar7
   4A4C D0 06         [24] 1591 	pop	ar6
                           1592 ;	radio/tdm.c:307: duty_cycle_wait = (average_duty_cycle >= (duty_cycle - duty_cycle_offset));
   4A4E                    1593 00114$:
                           1594 ;	radio/tdm.c:311: bonus_transmit = 0;
   4A4E C2 27         [12] 1595 	clr	_bonus_transmit
                           1596 ;	radio/tdm.c:314: transmit_yield = 0;
   4A50 C2 28         [12] 1597 	clr	_transmit_yield
                           1598 ;	radio/tdm.c:317: transmit_wait = 0;
   4A52 78 C2         [12] 1599 	mov	r0,#_transmit_wait
   4A54 E4            [12] 1600 	clr	a
   4A55 F2            [24] 1601 	movx	@r0,a
   4A56 08            [12] 1602 	inc	r0
   4A57 F2            [24] 1603 	movx	@r0,a
   4A58 02 48 14      [24] 1604 	ljmp	00116$
   4A5B                    1605 00118$:
                           1606 ;	radio/tdm.c:320: tdm_state_remaining -= tdelta;
   4A5B 78 B7         [12] 1607 	mov	r0,#_tdm_state_remaining
   4A5D E2            [24] 1608 	movx	a,@r0
   4A5E C3            [12] 1609 	clr	c
   4A5F 9E            [12] 1610 	subb	a,r6
   4A60 F2            [24] 1611 	movx	@r0,a
   4A61 08            [12] 1612 	inc	r0
   4A62 E2            [24] 1613 	movx	a,@r0
   4A63 9F            [12] 1614 	subb	a,r7
   4A64 F2            [24] 1615 	movx	@r0,a
   4A65 22            [24] 1616 	ret
                           1617 ;------------------------------------------------------------
                           1618 ;Allocation info for local variables in function 'tdm_change_phase'
                           1619 ;------------------------------------------------------------
                           1620 ;	radio/tdm.c:326: tdm_change_phase(void)
                           1621 ;	-----------------------------------------
                           1622 ;	 function tdm_change_phase
                           1623 ;	-----------------------------------------
   4A66                    1624 _tdm_change_phase:
                           1625 ;	radio/tdm.c:328: tdm_state = (tdm_state+2) % 4;
   4A66 78 B6         [12] 1626 	mov	r0,#_tdm_state
   4A68 E2            [24] 1627 	movx	a,@r0
   4A69 FE            [12] 1628 	mov	r6,a
   4A6A 7F 00         [12] 1629 	mov	r7,#0x00
   4A6C 74 02         [12] 1630 	mov	a,#0x02
   4A6E 2E            [12] 1631 	add	a,r6
   4A6F FE            [12] 1632 	mov	r6,a
   4A70 E4            [12] 1633 	clr	a
   4A71 3F            [12] 1634 	addc	a,r7
   4A72 FF            [12] 1635 	mov	r7,a
   4A73 90 05 D3      [24] 1636 	mov	dptr,#__modsint_PARM_2
   4A76 74 04         [12] 1637 	mov	a,#0x04
   4A78 F0            [24] 1638 	movx	@dptr,a
   4A79 E4            [12] 1639 	clr	a
   4A7A A3            [24] 1640 	inc	dptr
   4A7B F0            [24] 1641 	movx	@dptr,a
   4A7C 8E 82         [24] 1642 	mov	dpl,r6
   4A7E 8F 83         [24] 1643 	mov	dph,r7
   4A80 12 5F 28      [24] 1644 	lcall	__modsint
   4A83 AE 82         [24] 1645 	mov	r6,dpl
   4A85 78 B6         [12] 1646 	mov	r0,#_tdm_state
   4A87 EE            [12] 1647 	mov	a,r6
   4A88 F2            [24] 1648 	movx	@r0,a
   4A89 22            [24] 1649 	ret
                           1650 ;------------------------------------------------------------
                           1651 ;Allocation info for local variables in function 'temperature_update'
                           1652 ;------------------------------------------------------------
                           1653 ;diff                      Allocated to registers r6 r7 
                           1654 ;------------------------------------------------------------
                           1655 ;	radio/tdm.c:333: static void temperature_update(void)
                           1656 ;	-----------------------------------------
                           1657 ;	 function temperature_update
                           1658 ;	-----------------------------------------
   4A8A                    1659 _temperature_update:
                           1660 ;	radio/tdm.c:336: if (radio_get_transmit_power() <= 20) {
   4A8A 12 38 B2      [24] 1661 	lcall	_radio_get_transmit_power
   4A8D E5 82         [12] 1662 	mov	a,dpl
   4A8F FF            [12] 1663 	mov	r7,a
   4A90 24 EB         [12] 1664 	add	a,#0xff - 0x14
   4A92 40 05         [24] 1665 	jc	00102$
                           1666 ;	radio/tdm.c:337: duty_cycle_offset = 0;
   4A94 78 C5         [12] 1667 	mov	r0,#_duty_cycle_offset
   4A96 E4            [12] 1668 	clr	a
   4A97 F2            [24] 1669 	movx	@r0,a
                           1670 ;	radio/tdm.c:338: return;
   4A98 22            [24] 1671 	ret
   4A99                    1672 00102$:
                           1673 ;	radio/tdm.c:341: diff = radio_temperature() - MAX_PA_TEMPERATURE;
   4A99 12 3C 6F      [24] 1674 	lcall	_radio_temperature
   4A9C E5 82         [12] 1675 	mov	a,dpl
   4A9E 85 83 F0      [24] 1676 	mov	b,dph
   4AA1 24 9C         [12] 1677 	add	a,#0x9C
   4AA3 FE            [12] 1678 	mov	r6,a
   4AA4 E5 F0         [12] 1679 	mov	a,b
   4AA6 34 FF         [12] 1680 	addc	a,#0xFF
   4AA8 FF            [12] 1681 	mov	r7,a
                           1682 ;	radio/tdm.c:342: if (diff <= 0 && duty_cycle_offset > 0) {
   4AA9 C3            [12] 1683 	clr	c
   4AAA E4            [12] 1684 	clr	a
   4AAB 9E            [12] 1685 	subb	a,r6
   4AAC E4            [12] 1686 	clr	a
   4AAD 64 80         [12] 1687 	xrl	a,#0x80
   4AAF 8F F0         [24] 1688 	mov	b,r7
   4AB1 63 F0 80      [24] 1689 	xrl	b,#0x80
   4AB4 95 F0         [12] 1690 	subb	a,b
   4AB6 E4            [12] 1691 	clr	a
   4AB7 33            [12] 1692 	rlc	a
   4AB8 FD            [12] 1693 	mov	r5,a
   4AB9 70 0C         [24] 1694 	jnz	00112$
   4ABB 78 C5         [12] 1695 	mov	r0,#_duty_cycle_offset
   4ABD E2            [24] 1696 	movx	a,@r0
   4ABE 60 07         [24] 1697 	jz	00112$
                           1698 ;	radio/tdm.c:344: duty_cycle_offset -= 1;
   4AC0 78 C5         [12] 1699 	mov	r0,#_duty_cycle_offset
   4AC2 E2            [24] 1700 	movx	a,@r0
   4AC3 14            [12] 1701 	dec	a
   4AC4 F2            [24] 1702 	movx	@r0,a
   4AC5 80 39         [24] 1703 	sjmp	00113$
   4AC7                    1704 00112$:
                           1705 ;	radio/tdm.c:345: } else if (diff > 10) {
   4AC7 C3            [12] 1706 	clr	c
   4AC8 74 0A         [12] 1707 	mov	a,#0x0A
   4ACA 9E            [12] 1708 	subb	a,r6
   4ACB E4            [12] 1709 	clr	a
   4ACC 64 80         [12] 1710 	xrl	a,#0x80
   4ACE 8F F0         [24] 1711 	mov	b,r7
   4AD0 63 F0 80      [24] 1712 	xrl	b,#0x80
   4AD3 95 F0         [12] 1713 	subb	a,b
   4AD5 50 08         [24] 1714 	jnc	00109$
                           1715 ;	radio/tdm.c:347: duty_cycle_offset += 10;
   4AD7 78 C5         [12] 1716 	mov	r0,#_duty_cycle_offset
   4AD9 E2            [24] 1717 	movx	a,@r0
   4ADA 24 0A         [12] 1718 	add	a,#0x0A
   4ADC F2            [24] 1719 	movx	@r0,a
   4ADD 80 21         [24] 1720 	sjmp	00113$
   4ADF                    1721 00109$:
                           1722 ;	radio/tdm.c:348: } else if (diff > 5) {
   4ADF C3            [12] 1723 	clr	c
   4AE0 74 05         [12] 1724 	mov	a,#0x05
   4AE2 9E            [12] 1725 	subb	a,r6
   4AE3 E4            [12] 1726 	clr	a
   4AE4 64 80         [12] 1727 	xrl	a,#0x80
   4AE6 8F F0         [24] 1728 	mov	b,r7
   4AE8 63 F0 80      [24] 1729 	xrl	b,#0x80
   4AEB 95 F0         [12] 1730 	subb	a,b
   4AED 50 08         [24] 1731 	jnc	00106$
                           1732 ;	radio/tdm.c:350: duty_cycle_offset += 5;
   4AEF 78 C5         [12] 1733 	mov	r0,#_duty_cycle_offset
   4AF1 E2            [24] 1734 	movx	a,@r0
   4AF2 24 05         [12] 1735 	add	a,#0x05
   4AF4 F2            [24] 1736 	movx	@r0,a
   4AF5 80 09         [24] 1737 	sjmp	00113$
   4AF7                    1738 00106$:
                           1739 ;	radio/tdm.c:351: } else if (diff > 0) {
   4AF7 ED            [12] 1740 	mov	a,r5
   4AF8 60 06         [24] 1741 	jz	00113$
                           1742 ;	radio/tdm.c:353: duty_cycle_offset += 1;				
   4AFA 78 C5         [12] 1743 	mov	r0,#_duty_cycle_offset
   4AFC E2            [24] 1744 	movx	a,@r0
   4AFD 24 01         [12] 1745 	add	a,#0x01
   4AFF F2            [24] 1746 	movx	@r0,a
   4B00                    1747 00113$:
                           1748 ;	radio/tdm.c:356: if ((duty_cycle-duty_cycle_offset) < 20) {
   4B00 78 C4         [12] 1749 	mov	r0,#_duty_cycle
   4B02 E2            [24] 1750 	movx	a,@r0
   4B03 FE            [12] 1751 	mov	r6,a
   4B04 7F 00         [12] 1752 	mov	r7,#0x00
   4B06 78 C5         [12] 1753 	mov	r0,#_duty_cycle_offset
   4B08 E2            [24] 1754 	movx	a,@r0
   4B09 FC            [12] 1755 	mov	r4,a
   4B0A 7D 00         [12] 1756 	mov	r5,#0x00
   4B0C EE            [12] 1757 	mov	a,r6
   4B0D C3            [12] 1758 	clr	c
   4B0E 9C            [12] 1759 	subb	a,r4
   4B0F FE            [12] 1760 	mov	r6,a
   4B10 EF            [12] 1761 	mov	a,r7
   4B11 9D            [12] 1762 	subb	a,r5
   4B12 FF            [12] 1763 	mov	r7,a
   4B13 C3            [12] 1764 	clr	c
   4B14 EE            [12] 1765 	mov	a,r6
   4B15 94 14         [12] 1766 	subb	a,#0x14
   4B17 EF            [12] 1767 	mov	a,r7
   4B18 64 80         [12] 1768 	xrl	a,#0x80
   4B1A 94 80         [12] 1769 	subb	a,#0x80
   4B1C 50 08         [24] 1770 	jnc	00117$
                           1771 ;	radio/tdm.c:357: duty_cycle_offset = duty_cycle - 20;
   4B1E 78 C4         [12] 1772 	mov	r0,#_duty_cycle
   4B20 79 C5         [12] 1773 	mov	r1,#_duty_cycle_offset
   4B22 E2            [24] 1774 	movx	a,@r0
   4B23 24 EC         [12] 1775 	add	a,#0xEC
   4B25 F3            [24] 1776 	movx	@r1,a
   4B26                    1777 00117$:
   4B26 22            [24] 1778 	ret
                           1779 ;------------------------------------------------------------
                           1780 ;Allocation info for local variables in function 'link_update'
                           1781 ;------------------------------------------------------------
                           1782 ;old_remaining             Allocated to registers r6 r7 
                           1783 ;unlock_count              Allocated with name '_link_update_unlock_count_1_185'
                           1784 ;temperature_count         Allocated with name '_link_update_temperature_count_1_185'
                           1785 ;------------------------------------------------------------
                           1786 ;	radio/tdm.c:365: link_update(void)
                           1787 ;	-----------------------------------------
                           1788 ;	 function link_update
                           1789 ;	-----------------------------------------
   4B27                    1790 _link_update:
                           1791 ;	radio/tdm.c:368: if (received_packet) {
   4B27 30 2A 0B      [24] 1792 	jnb	_received_packet,00102$
                           1793 ;	radio/tdm.c:369: unlock_count = 0;
   4B2A 90 05 6E      [24] 1794 	mov	dptr,#_link_update_unlock_count_1_185
   4B2D E4            [12] 1795 	clr	a
   4B2E F0            [24] 1796 	movx	@dptr,a
                           1797 ;	radio/tdm.c:370: received_packet = false;
   4B2F C2 2A         [12] 1798 	clr	_received_packet
                           1799 ;	radio/tdm.c:372: TDM_SYNC_PIN = true;
   4B31 D2 A6         [12] 1800 	setb	_TDM_SYNC_PIN
   4B33 80 07         [24] 1801 	sjmp	00103$
   4B35                    1802 00102$:
                           1803 ;	radio/tdm.c:375: unlock_count++;
   4B35 90 05 6E      [24] 1804 	mov	dptr,#_link_update_unlock_count_1_185
   4B38 E0            [24] 1805 	movx	a,@dptr
   4B39 24 01         [12] 1806 	add	a,#0x01
   4B3B F0            [24] 1807 	movx	@dptr,a
   4B3C                    1808 00103$:
                           1809 ;	radio/tdm.c:377: if (unlock_count < 6) {
   4B3C 90 05 6E      [24] 1810 	mov	dptr,#_link_update_unlock_count_1_185
   4B3F E0            [24] 1811 	movx	a,@dptr
   4B40 FF            [12] 1812 	mov	r7,a
   4B41 BF 06 00      [24] 1813 	cjne	r7,#0x06,00157$
   4B44                    1814 00157$:
   4B44 50 04         [24] 1815 	jnc	00105$
                           1816 ;	radio/tdm.c:378: LED_RADIO = LED_ON;
   4B46 C2 95         [12] 1817 	clr	_LED_GREEN
   4B48 80 08         [24] 1818 	sjmp	00106$
   4B4A                    1819 00105$:
                           1820 ;	radio/tdm.c:381: TDM_SYNC_PIN = false;
   4B4A C2 A6         [12] 1821 	clr	_TDM_SYNC_PIN
                           1822 ;	radio/tdm.c:384: LED_RADIO = blink_state;
   4B4C A2 29         [12] 1823 	mov	c,_blink_state
   4B4E 92 95         [24] 1824 	mov	_LED_GREEN,c
                           1825 ;	radio/tdm.c:385: blink_state = !blink_state;
   4B50 B2 29         [12] 1826 	cpl	_blink_state
   4B52                    1827 00106$:
                           1828 ;	radio/tdm.c:387: if (unlock_count > 40) {
   4B52 EF            [12] 1829 	mov	a,r7
   4B53 24 D7         [12] 1830 	add	a,#0xff - 0x28
   4B55 40 03         [24] 1831 	jc	00159$
   4B57 02 4B E2      [24] 1832 	ljmp	00117$
   4B5A                    1833 00159$:
                           1834 ;	radio/tdm.c:391: unlock_count = 5;
   4B5A 90 05 6E      [24] 1835 	mov	dptr,#_link_update_unlock_count_1_185
   4B5D 74 05         [12] 1836 	mov	a,#0x05
   4B5F F0            [24] 1837 	movx	@dptr,a
                           1838 ;	radio/tdm.c:395: if (timer_entropy() & 1) {
   4B60 12 57 53      [24] 1839 	lcall	_timer_entropy
   4B63 E5 82         [12] 1840 	mov	a,dpl
   4B65 30 E0 59      [24] 1841 	jnb	acc.0,00113$
                           1842 ;	radio/tdm.c:396: register uint16_t old_remaining = tdm_state_remaining;
   4B68 78 B7         [12] 1843 	mov	r0,#_tdm_state_remaining
   4B6A E2            [24] 1844 	movx	a,@r0
   4B6B FE            [12] 1845 	mov	r6,a
   4B6C 08            [12] 1846 	inc	r0
   4B6D E2            [24] 1847 	movx	a,@r0
   4B6E FF            [12] 1848 	mov	r7,a
                           1849 ;	radio/tdm.c:397: if (tdm_state_remaining > silence_period) {
   4B6F 78 BC         [12] 1850 	mov	r0,#_silence_period
   4B71 C3            [12] 1851 	clr	c
   4B72 E2            [24] 1852 	movx	a,@r0
   4B73 9E            [12] 1853 	subb	a,r6
   4B74 08            [12] 1854 	inc	r0
   4B75 E2            [24] 1855 	movx	a,@r0
   4B76 9F            [12] 1856 	subb	a,r7
   4B77 50 17         [24] 1857 	jnc	00108$
                           1858 ;	radio/tdm.c:398: tdm_state_remaining -= packet_latency;
   4B79 78 BE         [12] 1859 	mov	r0,#_packet_latency
   4B7B D3            [12] 1860 	setb	c
   4B7C E2            [24] 1861 	movx	a,@r0
   4B7D 9E            [12] 1862 	subb	a,r6
   4B7E F4            [12] 1863 	cpl	a
   4B7F B3            [12] 1864 	cpl	c
   4B80 FC            [12] 1865 	mov	r4,a
   4B81 B3            [12] 1866 	cpl	c
   4B82 08            [12] 1867 	inc	r0
   4B83 E2            [24] 1868 	movx	a,@r0
   4B84 9F            [12] 1869 	subb	a,r7
   4B85 F4            [12] 1870 	cpl	a
   4B86 FD            [12] 1871 	mov	r5,a
   4B87 78 B7         [12] 1872 	mov	r0,#_tdm_state_remaining
   4B89 EC            [12] 1873 	mov	a,r4
   4B8A F2            [24] 1874 	movx	@r0,a
   4B8B 08            [12] 1875 	inc	r0
   4B8C ED            [12] 1876 	mov	a,r5
   4B8D F2            [24] 1877 	movx	@r0,a
   4B8E 80 08         [24] 1878 	sjmp	00109$
   4B90                    1879 00108$:
                           1880 ;	radio/tdm.c:400: tdm_state_remaining = 1;
   4B90 78 B7         [12] 1881 	mov	r0,#_tdm_state_remaining
   4B92 74 01         [12] 1882 	mov	a,#0x01
   4B94 F2            [24] 1883 	movx	@r0,a
   4B95 08            [12] 1884 	inc	r0
   4B96 E4            [12] 1885 	clr	a
   4B97 F2            [24] 1886 	movx	@r0,a
   4B98                    1887 00109$:
                           1888 ;	radio/tdm.c:402: if (at_testmode & AT_TEST_TDM) {
   4B98 78 13         [12] 1889 	mov	r0,#_at_testmode
   4B9A E2            [24] 1890 	movx	a,@r0
   4B9B 54 02         [12] 1891 	anl	a,#0x02
   4B9D 60 22         [24] 1892 	jz	00113$
                           1893 ;	radio/tdm.c:403: printf("TDM: change timing %u/%u\n",
   4B9F 78 B7         [12] 1894 	mov	r0,#_tdm_state_remaining
   4BA1 E2            [24] 1895 	movx	a,@r0
   4BA2 C0 E0         [24] 1896 	push	acc
   4BA4 08            [12] 1897 	inc	r0
   4BA5 E2            [24] 1898 	movx	a,@r0
   4BA6 C0 E0         [24] 1899 	push	acc
   4BA8 C0 06         [24] 1900 	push	ar6
   4BAA C0 07         [24] 1901 	push	ar7
   4BAC 74 11         [12] 1902 	mov	a,#__str_4
   4BAE C0 E0         [24] 1903 	push	acc
   4BB0 74 CD         [12] 1904 	mov	a,#(__str_4 >> 8)
   4BB2 C0 E0         [24] 1905 	push	acc
   4BB4 74 80         [12] 1906 	mov	a,#0x80
   4BB6 C0 E0         [24] 1907 	push	acc
   4BB8 12 2D B6      [24] 1908 	lcall	_printfl
   4BBB E5 81         [12] 1909 	mov	a,sp
   4BBD 24 F9         [12] 1910 	add	a,#0xf9
   4BBF F5 81         [12] 1911 	mov	sp,a
   4BC1                    1912 00113$:
                           1913 ;	radio/tdm.c:408: if (at_testmode & AT_TEST_TDM) {
   4BC1 78 13         [12] 1914 	mov	r0,#_at_testmode
   4BC3 E2            [24] 1915 	movx	a,@r0
   4BC4 54 02         [12] 1916 	anl	a,#0x02
   4BC6 60 15         [24] 1917 	jz	00115$
                           1918 ;	radio/tdm.c:409: printf("TDM: scanning\n");
   4BC8 74 2B         [12] 1919 	mov	a,#__str_5
   4BCA C0 E0         [24] 1920 	push	acc
   4BCC 74 CD         [12] 1921 	mov	a,#(__str_5 >> 8)
   4BCE C0 E0         [24] 1922 	push	acc
   4BD0 74 80         [12] 1923 	mov	a,#0x80
   4BD2 C0 E0         [24] 1924 	push	acc
   4BD4 12 2D B6      [24] 1925 	lcall	_printfl
   4BD7 15 81         [12] 1926 	dec	sp
   4BD9 15 81         [12] 1927 	dec	sp
   4BDB 15 81         [12] 1928 	dec	sp
   4BDD                    1929 00115$:
                           1930 ;	radio/tdm.c:411: fhop_set_locked(false);
   4BDD C2 03         [12] 1931 	clr	_fhop_set_locked_PARM_1
   4BDF 12 0C 89      [24] 1932 	lcall	_fhop_set_locked
   4BE2                    1933 00117$:
                           1934 ;	radio/tdm.c:414: if (unlock_count != 0) {
   4BE2 90 05 6E      [24] 1935 	mov	dptr,#_link_update_unlock_count_1_185
   4BE5 E0            [24] 1936 	movx	a,@dptr
   4BE6 FF            [12] 1937 	mov	r7,a
   4BE7 60 3D         [24] 1938 	jz	00119$
                           1939 ;	radio/tdm.c:415: statistics.average_rssi = (radio_last_rssi() + 3*(uint16_t)statistics.average_rssi)/4;
   4BE9 12 30 96      [24] 1940 	lcall	_radio_last_rssi
   4BEC AF 82         [24] 1941 	mov	r7,dpl
   4BEE 7E 00         [12] 1942 	mov	r6,#0x00
   4BF0 78 40         [12] 1943 	mov	r0,#_statistics
   4BF2 E2            [24] 1944 	movx	a,@r0
   4BF3 90 05 CB      [24] 1945 	mov	dptr,#__mulint_PARM_2
   4BF6 F0            [24] 1946 	movx	@dptr,a
   4BF7 E4            [12] 1947 	clr	a
   4BF8 A3            [24] 1948 	inc	dptr
   4BF9 F0            [24] 1949 	movx	@dptr,a
   4BFA 90 00 03      [24] 1950 	mov	dptr,#0x0003
   4BFD C0 07         [24] 1951 	push	ar7
   4BFF C0 06         [24] 1952 	push	ar6
   4C01 12 5E 74      [24] 1953 	lcall	__mulint
   4C04 AC 82         [24] 1954 	mov	r4,dpl
   4C06 AD 83         [24] 1955 	mov	r5,dph
   4C08 D0 06         [24] 1956 	pop	ar6
   4C0A D0 07         [24] 1957 	pop	ar7
   4C0C EC            [12] 1958 	mov	a,r4
   4C0D 2F            [12] 1959 	add	a,r7
   4C0E FC            [12] 1960 	mov	r4,a
   4C0F ED            [12] 1961 	mov	a,r5
   4C10 3E            [12] 1962 	addc	a,r6
   4C11 C3            [12] 1963 	clr	c
   4C12 13            [12] 1964 	rrc	a
   4C13 CC            [12] 1965 	xch	a,r4
   4C14 13            [12] 1966 	rrc	a
   4C15 CC            [12] 1967 	xch	a,r4
   4C16 C3            [12] 1968 	clr	c
   4C17 13            [12] 1969 	rrc	a
   4C18 CC            [12] 1970 	xch	a,r4
   4C19 13            [12] 1971 	rrc	a
   4C1A CC            [12] 1972 	xch	a,r4
   4C1B FD            [12] 1973 	mov	r5,a
   4C1C 78 40         [12] 1974 	mov	r0,#_statistics
   4C1E EC            [12] 1975 	mov	a,r4
   4C1F F2            [24] 1976 	movx	@r0,a
                           1977 ;	radio/tdm.c:418: statistics.receive_count = 0;
   4C20 78 42         [12] 1978 	mov	r0,#(_statistics + 0x0002)
   4C22 E4            [12] 1979 	clr	a
   4C23 F2            [24] 1980 	movx	@r0,a
   4C24 08            [12] 1981 	inc	r0
   4C25 F2            [24] 1982 	movx	@r0,a
   4C26                    1983 00119$:
                           1984 ;	radio/tdm.c:420: if (unlock_count > 5) {
   4C26 90 05 6E      [24] 1985 	mov	dptr,#_link_update_unlock_count_1_185
   4C29 E0            [24] 1986 	movx	a,@dptr
   4C2A FF            [12] 1987 	mov  r7,a
   4C2B 24 FA         [12] 1988 	add	a,#0xff - 0x05
   4C2D 50 17         [24] 1989 	jnc	00121$
                           1990 ;	radio/tdm.c:421: memset(&remote_statistics, 0, sizeof(remote_statistics));
   4C2F 90 05 BE      [24] 1991 	mov	dptr,#_memset_PARM_2
   4C32 E4            [12] 1992 	clr	a
   4C33 F0            [24] 1993 	movx	@dptr,a
   4C34 90 05 BF      [24] 1994 	mov	dptr,#_memset_PARM_3
   4C37 74 04         [12] 1995 	mov	a,#0x04
   4C39 F0            [24] 1996 	movx	@dptr,a
   4C3A E4            [12] 1997 	clr	a
   4C3B A3            [24] 1998 	inc	dptr
   4C3C F0            [24] 1999 	movx	@dptr,a
   4C3D 90 00 44      [24] 2000 	mov	dptr,#_remote_statistics
   4C40 75 F0 60      [24] 2001 	mov	b,#0x60
   4C43 12 5D 74      [24] 2002 	lcall	_memset
   4C46                    2003 00121$:
                           2004 ;	radio/tdm.c:424: test_display = at_testmode;
   4C46 78 13         [12] 2005 	mov	r0,#_at_testmode
   4C48 E2            [24] 2006 	movx	a,@r0
   4C49 78 CF         [12] 2007 	mov	r0,#_test_display
   4C4B F2            [24] 2008 	movx	@r0,a
                           2009 ;	radio/tdm.c:425: send_statistics = 1;
   4C4C D2 2C         [12] 2010 	setb	_send_statistics
                           2011 ;	radio/tdm.c:427: temperature_count++;
   4C4E 90 05 6F      [24] 2012 	mov	dptr,#_link_update_temperature_count_1_185
   4C51 E0            [24] 2013 	movx	a,@dptr
   4C52 24 01         [12] 2014 	add	a,#0x01
   4C54 F0            [24] 2015 	movx	@dptr,a
                           2016 ;	radio/tdm.c:428: if (temperature_count == 4) {
   4C55 90 05 6F      [24] 2017 	mov	dptr,#_link_update_temperature_count_1_185
   4C58 E0            [24] 2018 	movx	a,@dptr
   4C59 FF            [12] 2019 	mov	r7,a
   4C5A BF 04 08      [24] 2020 	cjne	r7,#0x04,00124$
                           2021 ;	radio/tdm.c:430: temperature_update();
   4C5D 12 4A 8A      [24] 2022 	lcall	_temperature_update
                           2023 ;	radio/tdm.c:431: temperature_count = 0;
   4C60 90 05 6F      [24] 2024 	mov	dptr,#_link_update_temperature_count_1_185
   4C63 E4            [12] 2025 	clr	a
   4C64 F0            [24] 2026 	movx	@dptr,a
   4C65                    2027 00124$:
   4C65 22            [24] 2028 	ret
                           2029 ;------------------------------------------------------------
                           2030 ;Allocation info for local variables in function 'tdm_remote_at'
                           2031 ;------------------------------------------------------------
                           2032 ;	radio/tdm.c:437: tdm_remote_at(void)
                           2033 ;	-----------------------------------------
                           2034 ;	 function tdm_remote_at
                           2035 ;	-----------------------------------------
   4C66                    2036 _tdm_remote_at:
                           2037 ;	radio/tdm.c:439: memcpy(remote_at_cmd, at_cmd, strlen(at_cmd)+1);
   4C66 90 00 01      [24] 2038 	mov	dptr,#_at_cmd
   4C69 75 F0 60      [24] 2039 	mov	b,#0x60
   4C6C 12 63 F9      [24] 2040 	lcall	_strlen
   4C6F E5 82         [12] 2041 	mov	a,dpl
   4C71 85 83 F0      [24] 2042 	mov	b,dph
   4C74 24 01         [12] 2043 	add	a,#0x01
   4C76 FE            [12] 2044 	mov	r6,a
   4C77 E4            [12] 2045 	clr	a
   4C78 35 F0         [12] 2046 	addc	a,b
   4C7A FF            [12] 2047 	mov	r7,a
   4C7B 90 05 C1      [24] 2048 	mov	dptr,#_memcpy_PARM_2
   4C7E 74 01         [12] 2049 	mov	a,#_at_cmd
   4C80 F0            [24] 2050 	movx	@dptr,a
   4C81 74 00         [12] 2051 	mov	a,#(_at_cmd >> 8)
   4C83 A3            [24] 2052 	inc	dptr
   4C84 F0            [24] 2053 	movx	@dptr,a
   4C85 74 60         [12] 2054 	mov	a,#0x60
   4C87 A3            [24] 2055 	inc	dptr
   4C88 F0            [24] 2056 	movx	@dptr,a
   4C89 90 05 C4      [24] 2057 	mov	dptr,#_memcpy_PARM_3
   4C8C EE            [12] 2058 	mov	a,r6
   4C8D F0            [24] 2059 	movx	@dptr,a
   4C8E EF            [12] 2060 	mov	a,r7
   4C8F A3            [24] 2061 	inc	dptr
   4C90 F0            [24] 2062 	movx	@dptr,a
   4C91 90 00 D2      [24] 2063 	mov	dptr,#_remote_at_cmd
   4C94 75 F0 60      [24] 2064 	mov	b,#0x60
   4C97 12 5D 9C      [24] 2065 	lcall	_memcpy
                           2066 ;	radio/tdm.c:440: send_at_command = true;
   4C9A D2 2D         [12] 2067 	setb	_send_at_command
   4C9C 22            [24] 2068 	ret
                           2069 ;------------------------------------------------------------
                           2070 ;Allocation info for local variables in function 'handle_at_command'
                           2071 ;------------------------------------------------------------
                           2072 ;i                         Allocated to registers r6 
                           2073 ;------------------------------------------------------------
                           2074 ;	radio/tdm.c:445: handle_at_command(__pdata uint8_t len)
                           2075 ;	-----------------------------------------
                           2076 ;	 function handle_at_command
                           2077 ;	-----------------------------------------
   4C9D                    2078 _handle_at_command:
   4C9D AF 82         [24] 2079 	mov	r7,dpl
                           2080 ;	radio/tdm.c:447: if (len < 2 || len > AT_CMD_MAXLEN || 
   4C9F BF 02 00      [24] 2081 	cjne	r7,#0x02,00133$
   4CA2                    2082 00133$:
   4CA2 40 17         [24] 2083 	jc	00118$
   4CA4 EF            [12] 2084 	mov	a,r7
   4CA5 24 EF         [12] 2085 	add	a,#0xff - 0x10
   4CA7 40 12         [24] 2086 	jc	00118$
                           2087 ;	radio/tdm.c:448: pbuf[0] != (uint8_t)'R' || 
   4CA9 90 04 72      [24] 2088 	mov	dptr,#_pbuf
   4CAC E0            [24] 2089 	movx	a,@dptr
   4CAD FE            [12] 2090 	mov	r6,a
   4CAE BE 52 0A      [24] 2091 	cjne	r6,#0x52,00118$
                           2092 ;	radio/tdm.c:449: pbuf[1] != (uint8_t)'T') {
   4CB1 90 04 73      [24] 2093 	mov	dptr,#(_pbuf + 0x0001)
   4CB4 E0            [24] 2094 	movx	a,@dptr
   4CB5 FE            [12] 2095 	mov	r6,a
   4CB6 BE 54 02      [24] 2096 	cjne	r6,#0x54,00138$
   4CB9 80 23         [24] 2097 	sjmp	00103$
   4CBB                    2098 00138$:
                           2099 ;	radio/tdm.c:452: for (i=0; i<len; i++) {
   4CBB                    2100 00118$:
   4CBB 7E 00         [12] 2101 	mov	r6,#0x00
   4CBD                    2102 00110$:
   4CBD C3            [12] 2103 	clr	c
   4CBE EE            [12] 2104 	mov	a,r6
   4CBF 9F            [12] 2105 	subb	a,r7
   4CC0 50 1B         [24] 2106 	jnc	00101$
                           2107 ;	radio/tdm.c:453: putchar(pbuf[i]);
   4CC2 EE            [12] 2108 	mov	a,r6
   4CC3 24 72         [12] 2109 	add	a,#_pbuf
   4CC5 F5 82         [12] 2110 	mov	dpl,a
   4CC7 E4            [12] 2111 	clr	a
   4CC8 34 04         [12] 2112 	addc	a,#(_pbuf >> 8)
   4CCA F5 83         [12] 2113 	mov	dph,a
   4CCC E0            [24] 2114 	movx	a,@dptr
   4CCD F5 82         [12] 2115 	mov	dpl,a
   4CCF C0 07         [24] 2116 	push	ar7
   4CD1 C0 06         [24] 2117 	push	ar6
   4CD3 12 44 D9      [24] 2118 	lcall	_putchar
   4CD6 D0 06         [24] 2119 	pop	ar6
   4CD8 D0 07         [24] 2120 	pop	ar7
                           2121 ;	radio/tdm.c:452: for (i=0; i<len; i++) {
   4CDA 0E            [12] 2122 	inc	r6
   4CDB 80 E0         [24] 2123 	sjmp	00110$
   4CDD                    2124 00101$:
                           2125 ;	radio/tdm.c:455: return;
   4CDD 22            [24] 2126 	ret
   4CDE                    2127 00103$:
                           2128 ;	radio/tdm.c:459: memcpy(at_cmd, pbuf, len);
   4CDE 90 05 C1      [24] 2129 	mov	dptr,#_memcpy_PARM_2
   4CE1 74 72         [12] 2130 	mov	a,#_pbuf
   4CE3 F0            [24] 2131 	movx	@dptr,a
   4CE4 74 04         [12] 2132 	mov	a,#(_pbuf >> 8)
   4CE6 A3            [24] 2133 	inc	dptr
   4CE7 F0            [24] 2134 	movx	@dptr,a
   4CE8 E4            [12] 2135 	clr	a
   4CE9 A3            [24] 2136 	inc	dptr
   4CEA F0            [24] 2137 	movx	@dptr,a
   4CEB 90 05 C4      [24] 2138 	mov	dptr,#_memcpy_PARM_3
   4CEE EF            [12] 2139 	mov	a,r7
   4CEF F0            [24] 2140 	movx	@dptr,a
   4CF0 E4            [12] 2141 	clr	a
   4CF1 A3            [24] 2142 	inc	dptr
   4CF2 F0            [24] 2143 	movx	@dptr,a
   4CF3 90 00 01      [24] 2144 	mov	dptr,#_at_cmd
   4CF6 75 F0 60      [24] 2145 	mov	b,#0x60
   4CF9 C0 07         [24] 2146 	push	ar7
   4CFB 12 5D 9C      [24] 2147 	lcall	_memcpy
   4CFE D0 07         [24] 2148 	pop	ar7
                           2149 ;	radio/tdm.c:460: at_cmd[len] = 0;
   4D00 EF            [12] 2150 	mov	a,r7
   4D01 24 01         [12] 2151 	add	a,#_at_cmd
   4D03 F8            [12] 2152 	mov	r0,a
   4D04 E4            [12] 2153 	clr	a
   4D05 F2            [24] 2154 	movx	@r0,a
                           2155 ;	radio/tdm.c:461: at_cmd[0] = 'A'; // replace 'R'
   4D06 78 01         [12] 2156 	mov	r0,#_at_cmd
   4D08 74 41         [12] 2157 	mov	a,#0x41
   4D0A F2            [24] 2158 	movx	@r0,a
                           2159 ;	radio/tdm.c:462: at_cmd_len = len;
   4D0B 78 12         [12] 2160 	mov	r0,#_at_cmd_len
   4D0D EF            [12] 2161 	mov	a,r7
   4D0E F2            [24] 2162 	movx	@r0,a
                           2163 ;	radio/tdm.c:463: at_cmd_ready = true;
   4D0F D2 01         [12] 2164 	setb	_at_cmd_ready
                           2165 ;	radio/tdm.c:468: printf_start_capture(pbuf, sizeof(pbuf));
   4D11 90 03 61      [24] 2166 	mov	dptr,#_printf_start_capture_PARM_2
   4D14 74 FC         [12] 2167 	mov	a,#0xFC
   4D16 F0            [24] 2168 	movx	@dptr,a
   4D17 90 04 72      [24] 2169 	mov	dptr,#_pbuf
   4D1A 12 2A FD      [24] 2170 	lcall	_printf_start_capture
                           2171 ;	radio/tdm.c:469: at_command();
   4D1D 12 06 12      [24] 2172 	lcall	_at_command
                           2173 ;	radio/tdm.c:470: len = printf_end_capture();
   4D20 12 2B 26      [24] 2174 	lcall	_printf_end_capture
                           2175 ;	radio/tdm.c:471: if (len > 0) {
   4D23 E5 82         [12] 2176 	mov	a,dpl
   4D25 FF            [12] 2177 	mov	r7,a
   4D26 60 0A         [24] 2178 	jz	00112$
                           2179 ;	radio/tdm.c:472: packet_inject(pbuf, len);
   4D28 78 68         [12] 2180 	mov	r0,#_packet_inject_PARM_2
   4D2A EF            [12] 2181 	mov	a,r7
   4D2B F2            [24] 2182 	movx	@r0,a
   4D2C 90 04 72      [24] 2183 	mov	dptr,#_pbuf
   4D2F 02 25 11      [24] 2184 	ljmp	_packet_inject
   4D32                    2185 00112$:
   4D32 22            [24] 2186 	ret
                           2187 ;------------------------------------------------------------
                           2188 ;Allocation info for local variables in function 'tdm_serial_loop'
                           2189 ;------------------------------------------------------------
                           2190 ;	radio/tdm.c:482: tdm_serial_loop(void)
                           2191 ;	-----------------------------------------
                           2192 ;	 function tdm_serial_loop
                           2193 ;	-----------------------------------------
   4D33                    2194 _tdm_serial_loop:
                           2195 ;	radio/tdm.c:484: __pdata uint16_t last_t = timer2_tick();
   4D33 12 56 FD      [24] 2196 	lcall	_timer2_tick
   4D36 78 E5         [12] 2197 	mov	r0,#_tdm_serial_loop_last_t_1_207
   4D38 E5 82         [12] 2198 	mov	a,dpl
   4D3A F2            [24] 2199 	movx	@r0,a
   4D3B 08            [12] 2200 	inc	r0
   4D3C E5 83         [12] 2201 	mov	a,dph
   4D3E F2            [24] 2202 	movx	@r0,a
                           2203 ;	radio/tdm.c:485: __pdata uint16_t last_link_update = last_t;
   4D3F 78 E5         [12] 2204 	mov	r0,#_tdm_serial_loop_last_t_1_207
   4D41 79 E7         [12] 2205 	mov	r1,#_tdm_serial_loop_last_link_update_1_207
   4D43 E2            [24] 2206 	movx	a,@r0
   4D44 F3            [24] 2207 	movx	@r1,a
   4D45 08            [12] 2208 	inc	r0
   4D46 E2            [24] 2209 	movx	a,@r0
   4D47 09            [12] 2210 	inc	r1
   4D48 F3            [24] 2211 	movx	@r1,a
                           2212 ;	radio/tdm.c:487: _canary = 42;
   4D49 78 FF         [12] 2213 	mov	r0,#__canary
   4D4B 76 2A         [12] 2214 	mov	@r0,#0x2A
   4D4D                    2215 00192$:
                           2216 ;	radio/tdm.c:494: if (_canary != 42) {
   4D4D 78 FF         [12] 2217 	mov	r0,#__canary
   4D4F B6 2A 02      [24] 2218 	cjne	@r0,#0x2A,00339$
   4D52 80 15         [24] 2219 	sjmp	00102$
   4D54                    2220 00339$:
                           2221 ;	radio/tdm.c:495: panic("stack blown\n");
   4D54 74 3A         [12] 2222 	mov	a,#__str_6
   4D56 C0 E0         [24] 2223 	push	acc
   4D58 74 CD         [12] 2224 	mov	a,#(__str_6 >> 8)
   4D5A C0 E0         [24] 2225 	push	acc
   4D5C 74 80         [12] 2226 	mov	a,#0x80
   4D5E C0 E0         [24] 2227 	push	acc
   4D60 12 11 F8      [24] 2228 	lcall	_panic
   4D63 15 81         [12] 2229 	dec	sp
   4D65 15 81         [12] 2230 	dec	sp
   4D67 15 81         [12] 2231 	dec	sp
   4D69                    2232 00102$:
                           2233 ;	radio/tdm.c:498: if (pdata_canary != 0x41) {
   4D69 78 00         [12] 2234 	mov	r0,#_pdata_canary
   4D6B E2            [24] 2235 	movx	a,@r0
   4D6C B4 41 02      [24] 2236 	cjne	a,#0x41,00340$
   4D6F 80 15         [24] 2237 	sjmp	00104$
   4D71                    2238 00340$:
                           2239 ;	radio/tdm.c:499: panic("pdata canary changed\n");
   4D71 74 47         [12] 2240 	mov	a,#__str_7
   4D73 C0 E0         [24] 2241 	push	acc
   4D75 74 CD         [12] 2242 	mov	a,#(__str_7 >> 8)
   4D77 C0 E0         [24] 2243 	push	acc
   4D79 74 80         [12] 2244 	mov	a,#0x80
   4D7B C0 E0         [24] 2245 	push	acc
   4D7D 12 11 F8      [24] 2246 	lcall	_panic
   4D80 15 81         [12] 2247 	dec	sp
   4D82 15 81         [12] 2248 	dec	sp
   4D84 15 81         [12] 2249 	dec	sp
   4D86                    2250 00104$:
                           2251 ;	radio/tdm.c:503: at_command();
   4D86 12 06 12      [24] 2252 	lcall	_at_command
                           2253 ;	radio/tdm.c:506: if (test_display) {
   4D89 78 CF         [12] 2254 	mov	r0,#_test_display
   4D8B E2            [24] 2255 	movx	a,@r0
   4D8C 60 07         [24] 2256 	jz	00106$
                           2257 ;	radio/tdm.c:507: display_test_output();
   4D8E 12 46 5B      [24] 2258 	lcall	_display_test_output
                           2259 ;	radio/tdm.c:508: test_display = 0;
   4D91 78 CF         [12] 2260 	mov	r0,#_test_display
   4D93 E4            [12] 2261 	clr	a
   4D94 F2            [24] 2262 	movx	@r0,a
   4D95                    2263 00106$:
                           2264 ;	radio/tdm.c:511: if (seen_mavlink && feature_mavlink_framing && !at_mode_active) {
   4D95 30 0D 0B      [24] 2265 	jnb	_seen_mavlink,00108$
   4D98 30 06 08      [24] 2266 	jnb	_feature_mavlink_framing,00108$
   4D9B 20 00 05      [24] 2267 	jb	_at_mode_active,00108$
                           2268 ;	radio/tdm.c:512: seen_mavlink = false;
   4D9E C2 0D         [12] 2269 	clr	_seen_mavlink
                           2270 ;	radio/tdm.c:513: MAVLink_report();
   4DA0 12 1B F2      [24] 2271 	lcall	_MAVLink_report
   4DA3                    2272 00108$:
                           2273 ;	radio/tdm.c:517: radio_set_channel(fhop_receive_channel());
   4DA3 12 0C 17      [24] 2274 	lcall	_fhop_receive_channel
   4DA6 12 35 75      [24] 2275 	lcall	_radio_set_channel
                           2276 ;	radio/tdm.c:520: tnow = timer2_tick();
   4DA9 12 56 FD      [24] 2277 	lcall	_timer2_tick
   4DAC AA 82         [24] 2278 	mov	r2,dpl
   4DAE AB 83         [24] 2279 	mov	r3,dph
                           2280 ;	radio/tdm.c:523: if (radio_receive_packet(&len, pbuf)) {
   4DB0 78 8A         [12] 2281 	mov	r0,#_radio_receive_packet_PARM_2
   4DB2 74 72         [12] 2282 	mov	a,#_pbuf
   4DB4 F2            [24] 2283 	movx	@r0,a
   4DB5 08            [12] 2284 	inc	r0
   4DB6 74 04         [12] 2285 	mov	a,#(_pbuf >> 8)
   4DB8 F2            [24] 2286 	movx	@r0,a
   4DB9 90 00 E9      [24] 2287 	mov	dptr,#_tdm_serial_loop_len_2_208
   4DBC 75 F0 60      [24] 2288 	mov	b,#0x60
   4DBF C0 03         [24] 2289 	push	ar3
   4DC1 C0 02         [24] 2290 	push	ar2
   4DC3 12 2D D0      [24] 2291 	lcall	_radio_receive_packet
   4DC6 D0 02         [24] 2292 	pop	ar2
   4DC8 D0 03         [24] 2293 	pop	ar3
   4DCA 40 03         [24] 2294 	jc	00345$
   4DCC 02 4F 45      [24] 2295 	ljmp	00129$
   4DCF                    2296 00345$:
                           2297 ;	radio/tdm.c:526: received_packet = true;
   4DCF D2 2A         [12] 2298 	setb	_received_packet
                           2299 ;	radio/tdm.c:527: fhop_set_locked(true);
   4DD1 D2 03         [12] 2300 	setb	_fhop_set_locked_PARM_1
   4DD3 C0 03         [24] 2301 	push	ar3
   4DD5 C0 02         [24] 2302 	push	ar2
   4DD7 12 0C 89      [24] 2303 	lcall	_fhop_set_locked
                           2304 ;	radio/tdm.c:530: statistics.average_rssi = (radio_last_rssi() + 7*(uint16_t)statistics.average_rssi)/8;
   4DDA 12 30 96      [24] 2305 	lcall	_radio_last_rssi
   4DDD AD 82         [24] 2306 	mov	r5,dpl
   4DDF D0 02         [24] 2307 	pop	ar2
   4DE1 D0 03         [24] 2308 	pop	ar3
   4DE3 7C 00         [12] 2309 	mov	r4,#0x00
   4DE5 78 40         [12] 2310 	mov	r0,#_statistics
   4DE7 E2            [24] 2311 	movx	a,@r0
   4DE8 90 05 CB      [24] 2312 	mov	dptr,#__mulint_PARM_2
   4DEB F0            [24] 2313 	movx	@dptr,a
   4DEC E4            [12] 2314 	clr	a
   4DED A3            [24] 2315 	inc	dptr
   4DEE F0            [24] 2316 	movx	@dptr,a
   4DEF 90 00 07      [24] 2317 	mov	dptr,#0x0007
   4DF2 C0 05         [24] 2318 	push	ar5
   4DF4 C0 04         [24] 2319 	push	ar4
   4DF6 C0 03         [24] 2320 	push	ar3
   4DF8 C0 02         [24] 2321 	push	ar2
   4DFA 12 5E 74      [24] 2322 	lcall	__mulint
   4DFD AE 82         [24] 2323 	mov	r6,dpl
   4DFF AF 83         [24] 2324 	mov	r7,dph
   4E01 D0 02         [24] 2325 	pop	ar2
   4E03 D0 03         [24] 2326 	pop	ar3
   4E05 D0 04         [24] 2327 	pop	ar4
   4E07 D0 05         [24] 2328 	pop	ar5
   4E09 EE            [12] 2329 	mov	a,r6
   4E0A 2D            [12] 2330 	add	a,r5
   4E0B FE            [12] 2331 	mov	r6,a
   4E0C EF            [12] 2332 	mov	a,r7
   4E0D 3C            [12] 2333 	addc	a,r4
   4E0E C4            [12] 2334 	swap	a
   4E0F 23            [12] 2335 	rl	a
   4E10 CE            [12] 2336 	xch	a,r6
   4E11 C4            [12] 2337 	swap	a
   4E12 23            [12] 2338 	rl	a
   4E13 54 1F         [12] 2339 	anl	a,#0x1F
   4E15 6E            [12] 2340 	xrl	a,r6
   4E16 CE            [12] 2341 	xch	a,r6
   4E17 54 1F         [12] 2342 	anl	a,#0x1F
   4E19 CE            [12] 2343 	xch	a,r6
   4E1A 6E            [12] 2344 	xrl	a,r6
   4E1B CE            [12] 2345 	xch	a,r6
   4E1C 78 40         [12] 2346 	mov	r0,#_statistics
   4E1E EE            [12] 2347 	mov	a,r6
   4E1F F2            [24] 2348 	movx	@r0,a
                           2349 ;	radio/tdm.c:531: statistics.receive_count++;
   4E20 78 42         [12] 2350 	mov	r0,#(_statistics + 0x0002)
   4E22 E2            [24] 2351 	movx	a,@r0
   4E23 FE            [12] 2352 	mov	r6,a
   4E24 08            [12] 2353 	inc	r0
   4E25 E2            [24] 2354 	movx	a,@r0
   4E26 FF            [12] 2355 	mov	r7,a
   4E27 0E            [12] 2356 	inc	r6
   4E28 BE 00 01      [24] 2357 	cjne	r6,#0x00,00346$
   4E2B 0F            [12] 2358 	inc	r7
   4E2C                    2359 00346$:
   4E2C 78 42         [12] 2360 	mov	r0,#(_statistics + 0x0002)
   4E2E EE            [12] 2361 	mov	a,r6
   4E2F F2            [24] 2362 	movx	@r0,a
   4E30 08            [12] 2363 	inc	r0
   4E31 EF            [12] 2364 	mov	a,r7
   4E32 F2            [24] 2365 	movx	@r0,a
                           2366 ;	radio/tdm.c:535: transmit_wait = 0;
   4E33 78 C2         [12] 2367 	mov	r0,#_transmit_wait
   4E35 E4            [12] 2368 	clr	a
   4E36 F2            [24] 2369 	movx	@r0,a
   4E37 08            [12] 2370 	inc	r0
   4E38 F2            [24] 2371 	movx	@r0,a
                           2372 ;	radio/tdm.c:537: if (len < 2) {
   4E39 78 E9         [12] 2373 	mov	r0,#_tdm_serial_loop_len_2_208
   4E3B E2            [24] 2374 	movx	a,@r0
   4E3C B4 02 00      [24] 2375 	cjne	a,#0x02,00347$
   4E3F                    2376 00347$:
   4E3F 50 03         [24] 2377 	jnc	00348$
   4E41 02 4D 4D      [24] 2378 	ljmp	00192$
   4E44                    2379 00348$:
                           2380 ;	radio/tdm.c:544: memcpy(&trailer, &pbuf[len-sizeof(trailer)], sizeof(trailer));
   4E44 78 E9         [12] 2381 	mov	r0,#_tdm_serial_loop_len_2_208
   4E46 E2            [24] 2382 	movx	a,@r0
   4E47 24 FE         [12] 2383 	add	a,#0xFE
   4E49 24 72         [12] 2384 	add	a,#_pbuf
   4E4B FE            [12] 2385 	mov	r6,a
   4E4C E4            [12] 2386 	clr	a
   4E4D 34 04         [12] 2387 	addc	a,#(_pbuf >> 8)
   4E4F FF            [12] 2388 	mov	r7,a
   4E50 90 05 C1      [24] 2389 	mov	dptr,#_memcpy_PARM_2
   4E53 EE            [12] 2390 	mov	a,r6
   4E54 F0            [24] 2391 	movx	@dptr,a
   4E55 EF            [12] 2392 	mov	a,r7
   4E56 A3            [24] 2393 	inc	dptr
   4E57 F0            [24] 2394 	movx	@dptr,a
   4E58 E4            [12] 2395 	clr	a
   4E59 A3            [24] 2396 	inc	dptr
   4E5A F0            [24] 2397 	movx	@dptr,a
   4E5B 90 05 C4      [24] 2398 	mov	dptr,#_memcpy_PARM_3
   4E5E 74 02         [12] 2399 	mov	a,#0x02
   4E60 F0            [24] 2400 	movx	@dptr,a
   4E61 E4            [12] 2401 	clr	a
   4E62 A3            [24] 2402 	inc	dptr
   4E63 F0            [24] 2403 	movx	@dptr,a
   4E64 90 00 D0      [24] 2404 	mov	dptr,#_trailer
   4E67 75 F0 60      [24] 2405 	mov	b,#0x60
   4E6A C0 03         [24] 2406 	push	ar3
   4E6C C0 02         [24] 2407 	push	ar2
   4E6E 12 5D 9C      [24] 2408 	lcall	_memcpy
   4E71 D0 02         [24] 2409 	pop	ar2
   4E73 D0 03         [24] 2410 	pop	ar3
                           2411 ;	radio/tdm.c:545: len -= sizeof(trailer);
   4E75 78 E9         [12] 2412 	mov	r0,#_tdm_serial_loop_len_2_208
   4E77 E2            [24] 2413 	movx	a,@r0
   4E78 14            [12] 2414 	dec	a
   4E79 14            [12] 2415 	dec	a
   4E7A F2            [24] 2416 	movx	@r0,a
                           2417 ;	radio/tdm.c:547: if (trailer.window == 0 && len != 0) {
   4E7B 78 D0         [12] 2418 	mov	r0,#_trailer
   4E7D E2            [24] 2419 	movx	a,@r0
   4E7E FE            [12] 2420 	mov	r6,a
   4E7F 08            [12] 2421 	inc	r0
   4E80 E2            [24] 2422 	movx	a,@r0
   4E81 54 1F         [12] 2423 	anl	a,#0x1F
   4E83 FF            [12] 2424 	mov	r7,a
   4E84 4E            [12] 2425 	orl	a,r6
   4E85 70 41         [24] 2426 	jnz	00125$
   4E87 78 E9         [12] 2427 	mov	r0,#_tdm_serial_loop_len_2_208
   4E89 E2            [24] 2428 	movx	a,@r0
   4E8A 60 3C         [24] 2429 	jz	00125$
                           2430 ;	radio/tdm.c:549: if (len == sizeof(struct statistics)) {
   4E8C 78 E9         [12] 2431 	mov	r0,#_tdm_serial_loop_len_2_208
   4E8E E2            [24] 2432 	movx	a,@r0
   4E8F B4 04 20      [24] 2433 	cjne	a,#0x04,00114$
                           2434 ;	radio/tdm.c:550: memcpy(&remote_statistics, pbuf, len);
   4E92 90 05 C1      [24] 2435 	mov	dptr,#_memcpy_PARM_2
   4E95 74 72         [12] 2436 	mov	a,#_pbuf
   4E97 F0            [24] 2437 	movx	@dptr,a
   4E98 74 04         [12] 2438 	mov	a,#(_pbuf >> 8)
   4E9A A3            [24] 2439 	inc	dptr
   4E9B F0            [24] 2440 	movx	@dptr,a
   4E9C E4            [12] 2441 	clr	a
   4E9D A3            [24] 2442 	inc	dptr
   4E9E F0            [24] 2443 	movx	@dptr,a
   4E9F 78 E9         [12] 2444 	mov	r0,#_tdm_serial_loop_len_2_208
   4EA1 90 05 C4      [24] 2445 	mov	dptr,#_memcpy_PARM_3
   4EA4 E2            [24] 2446 	movx	a,@r0
   4EA5 F0            [24] 2447 	movx	@dptr,a
   4EA6 E4            [12] 2448 	clr	a
   4EA7 A3            [24] 2449 	inc	dptr
   4EA8 F0            [24] 2450 	movx	@dptr,a
   4EA9 90 00 44      [24] 2451 	mov	dptr,#_remote_statistics
   4EAC 75 F0 60      [24] 2452 	mov	b,#0x60
   4EAF 12 5D 9C      [24] 2453 	lcall	_memcpy
   4EB2                    2454 00114$:
                           2455 ;	radio/tdm.c:554: statistics.receive_count--;
   4EB2 78 42         [12] 2456 	mov	r0,#(_statistics + 0x0002)
   4EB4 E2            [24] 2457 	movx	a,@r0
   4EB5 FE            [12] 2458 	mov	r6,a
   4EB6 08            [12] 2459 	inc	r0
   4EB7 E2            [24] 2460 	movx	a,@r0
   4EB8 FF            [12] 2461 	mov	r7,a
   4EB9 1E            [12] 2462 	dec	r6
   4EBA BE FF 01      [24] 2463 	cjne	r6,#0xFF,00353$
   4EBD 1F            [12] 2464 	dec	r7
   4EBE                    2465 00353$:
   4EBE 78 42         [12] 2466 	mov	r0,#(_statistics + 0x0002)
   4EC0 EE            [12] 2467 	mov	a,r6
   4EC1 F2            [24] 2468 	movx	@r0,a
   4EC2 08            [12] 2469 	inc	r0
   4EC3 EF            [12] 2470 	mov	a,r7
   4EC4 F2            [24] 2471 	movx	@r0,a
   4EC5 02 4D 4D      [24] 2472 	ljmp	00192$
   4EC8                    2473 00125$:
                           2474 ;	radio/tdm.c:555: } else if (trailer.window != 0) {
   4EC8 78 D0         [12] 2475 	mov	r0,#_trailer
   4ECA E2            [24] 2476 	movx	a,@r0
   4ECB FE            [12] 2477 	mov	r6,a
   4ECC 08            [12] 2478 	inc	r0
   4ECD E2            [24] 2479 	movx	a,@r0
   4ECE 54 1F         [12] 2480 	anl	a,#0x1F
   4ED0 FF            [12] 2481 	mov	r7,a
   4ED1 4E            [12] 2482 	orl	a,r6
   4ED2 70 03         [24] 2483 	jnz	00354$
   4ED4 02 4D 4D      [24] 2484 	ljmp	00192$
   4ED7                    2485 00354$:
                           2486 ;	radio/tdm.c:558: sync_tx_windows(len);
   4ED7 78 E9         [12] 2487 	mov	r0,#_tdm_serial_loop_len_2_208
   4ED9 E2            [24] 2488 	movx	a,@r0
   4EDA F5 82         [12] 2489 	mov	dpl,a
   4EDC C0 03         [24] 2490 	push	ar3
   4EDE C0 02         [24] 2491 	push	ar2
   4EE0 12 46 8D      [24] 2492 	lcall	_sync_tx_windows
   4EE3 D0 02         [24] 2493 	pop	ar2
   4EE5 D0 03         [24] 2494 	pop	ar3
                           2495 ;	radio/tdm.c:559: last_t = tnow;
   4EE7 78 E5         [12] 2496 	mov	r0,#_tdm_serial_loop_last_t_1_207
   4EE9 EA            [12] 2497 	mov	a,r2
   4EEA F2            [24] 2498 	movx	@r0,a
   4EEB 08            [12] 2499 	inc	r0
   4EEC EB            [12] 2500 	mov	a,r3
   4EED F2            [24] 2501 	movx	@r0,a
                           2502 ;	radio/tdm.c:561: if (trailer.command == 1) {
   4EEE 78 D1         [12] 2503 	mov	r0,#(_trailer + 0x0001)
   4EF0 E2            [24] 2504 	movx	a,@r0
   4EF1 C4            [12] 2505 	swap	a
   4EF2 03            [12] 2506 	rr	a
   4EF3 54 01         [12] 2507 	anl	a,#0x01
   4EF5 FF            [12] 2508 	mov	r7,a
   4EF6 BF 01 0B      [24] 2509 	cjne	r7,#0x01,00120$
                           2510 ;	radio/tdm.c:562: handle_at_command(len);
   4EF9 78 E9         [12] 2511 	mov	r0,#_tdm_serial_loop_len_2_208
   4EFB E2            [24] 2512 	movx	a,@r0
   4EFC F5 82         [12] 2513 	mov	dpl,a
   4EFE 12 4C 9D      [24] 2514 	lcall	_handle_at_command
   4F01 02 4D 4D      [24] 2515 	ljmp	00192$
   4F04                    2516 00120$:
                           2517 ;	radio/tdm.c:563: } else if (len != 0 && 
   4F04 78 E9         [12] 2518 	mov	r0,#_tdm_serial_loop_len_2_208
   4F06 E2            [24] 2519 	movx	a,@r0
   4F07 70 03         [24] 2520 	jnz	00357$
   4F09 02 4D 4D      [24] 2521 	ljmp	00192$
   4F0C                    2522 00357$:
                           2523 ;	radio/tdm.c:564: !packet_is_duplicate(len, pbuf, trailer.resend) &&
   4F0C 78 D1         [12] 2524 	mov	r0,#(_trailer + 0x0001)
   4F0E E2            [24] 2525 	movx	a,@r0
   4F0F 23            [12] 2526 	rl	a
   4F10 54 01         [12] 2527 	anl	a,#0x01
   4F12 24 FF         [12] 2528 	add	a,#0xff
   4F14 92 0F         [24] 2529 	mov	_packet_is_duplicate_PARM_3,c
   4F16 78 66         [12] 2530 	mov	r0,#_packet_is_duplicate_PARM_2
   4F18 74 72         [12] 2531 	mov	a,#_pbuf
   4F1A F2            [24] 2532 	movx	@r0,a
   4F1B 08            [12] 2533 	inc	r0
   4F1C 74 04         [12] 2534 	mov	a,#(_pbuf >> 8)
   4F1E F2            [24] 2535 	movx	@r0,a
   4F1F 78 E9         [12] 2536 	mov	r0,#_tdm_serial_loop_len_2_208
   4F21 E2            [24] 2537 	movx	a,@r0
   4F22 F5 82         [12] 2538 	mov	dpl,a
   4F24 12 24 91      [24] 2539 	lcall	_packet_is_duplicate
   4F27 50 03         [24] 2540 	jnc	00358$
   4F29 02 4D 4D      [24] 2541 	ljmp	00192$
   4F2C                    2542 00358$:
                           2543 ;	radio/tdm.c:565: !at_mode_active) {
   4F2C 30 00 03      [24] 2544 	jnb	_at_mode_active,00359$
   4F2F 02 4D 4D      [24] 2545 	ljmp	00192$
   4F32                    2546 00359$:
                           2547 ;	radio/tdm.c:569: LED_ACTIVITY = LED_ON;
   4F32 C2 96         [12] 2548 	clr	_LED_RED
                           2549 ;	radio/tdm.c:570: serial_write_buf(pbuf, len);
   4F34 78 E9         [12] 2550 	mov	r0,#_tdm_serial_loop_len_2_208
   4F36 79 B2         [12] 2551 	mov	r1,#_serial_write_buf_PARM_2
   4F38 E2            [24] 2552 	movx	a,@r0
   4F39 F3            [24] 2553 	movx	@r1,a
   4F3A 90 04 72      [24] 2554 	mov	dptr,#_pbuf
   4F3D 12 41 03      [24] 2555 	lcall	_serial_write_buf
                           2556 ;	radio/tdm.c:571: LED_ACTIVITY = LED_OFF;
   4F40 D2 96         [12] 2557 	setb	_LED_RED
                           2558 ;	radio/tdm.c:575: continue;
   4F42 02 4D 4D      [24] 2559 	ljmp	00192$
   4F45                    2560 00129$:
                           2561 ;	radio/tdm.c:581: tnow = timer2_tick();
   4F45 12 56 FD      [24] 2562 	lcall	_timer2_tick
   4F48 AA 82         [24] 2563 	mov	r2,dpl
   4F4A AB 83         [24] 2564 	mov	r3,dph
                           2565 ;	radio/tdm.c:582: tdelta = tnow - last_t;
   4F4C 78 E5         [12] 2566 	mov	r0,#_tdm_serial_loop_last_t_1_207
   4F4E 79 EA         [12] 2567 	mov	r1,#_tdm_serial_loop_tdelta_2_208
   4F50 D3            [12] 2568 	setb	c
   4F51 E2            [24] 2569 	movx	a,@r0
   4F52 9A            [12] 2570 	subb	a,r2
   4F53 F4            [12] 2571 	cpl	a
   4F54 B3            [12] 2572 	cpl	c
   4F55 F3            [24] 2573 	movx	@r1,a
   4F56 B3            [12] 2574 	cpl	c
   4F57 08            [12] 2575 	inc	r0
   4F58 E2            [24] 2576 	movx	a,@r0
   4F59 9B            [12] 2577 	subb	a,r3
   4F5A F4            [12] 2578 	cpl	a
   4F5B 09            [12] 2579 	inc	r1
   4F5C F3            [24] 2580 	movx	@r1,a
                           2581 ;	radio/tdm.c:583: tdm_state_update(tdelta);
   4F5D 78 EA         [12] 2582 	mov	r0,#_tdm_serial_loop_tdelta_2_208
   4F5F E2            [24] 2583 	movx	a,@r0
   4F60 F5 82         [12] 2584 	mov	dpl,a
   4F62 08            [12] 2585 	inc	r0
   4F63 E2            [24] 2586 	movx	a,@r0
   4F64 F5 83         [12] 2587 	mov	dph,a
   4F66 C0 03         [24] 2588 	push	ar3
   4F68 C0 02         [24] 2589 	push	ar2
   4F6A 12 47 F4      [24] 2590 	lcall	_tdm_state_update
   4F6D D0 02         [24] 2591 	pop	ar2
   4F6F D0 03         [24] 2592 	pop	ar3
                           2593 ;	radio/tdm.c:584: last_t = tnow;
   4F71 78 E5         [12] 2594 	mov	r0,#_tdm_serial_loop_last_t_1_207
   4F73 EA            [12] 2595 	mov	a,r2
   4F74 F2            [24] 2596 	movx	@r0,a
   4F75 08            [12] 2597 	inc	r0
   4F76 EB            [12] 2598 	mov	a,r3
   4F77 F2            [24] 2599 	movx	@r0,a
                           2600 ;	radio/tdm.c:587: if (tnow - last_link_update > 32768) {
   4F78 78 E7         [12] 2601 	mov	r0,#_tdm_serial_loop_last_link_update_1_207
   4F7A D3            [12] 2602 	setb	c
   4F7B E2            [24] 2603 	movx	a,@r0
   4F7C 9A            [12] 2604 	subb	a,r2
   4F7D F4            [12] 2605 	cpl	a
   4F7E B3            [12] 2606 	cpl	c
   4F7F FC            [12] 2607 	mov	r4,a
   4F80 B3            [12] 2608 	cpl	c
   4F81 08            [12] 2609 	inc	r0
   4F82 E2            [24] 2610 	movx	a,@r0
   4F83 9B            [12] 2611 	subb	a,r3
   4F84 F4            [12] 2612 	cpl	a
   4F85 FD            [12] 2613 	mov	r5,a
   4F86 7E 00         [12] 2614 	mov	r6,#0x00
   4F88 7F 00         [12] 2615 	mov	r7,#0x00
   4F8A C3            [12] 2616 	clr	c
   4F8B E4            [12] 2617 	clr	a
   4F8C 9C            [12] 2618 	subb	a,r4
   4F8D 74 80         [12] 2619 	mov	a,#0x80
   4F8F 9D            [12] 2620 	subb	a,r5
   4F90 E4            [12] 2621 	clr	a
   4F91 9E            [12] 2622 	subb	a,r6
   4F92 E4            [12] 2623 	clr	a
   4F93 64 80         [12] 2624 	xrl	a,#0x80
   4F95 8F F0         [24] 2625 	mov	b,r7
   4F97 63 F0 80      [24] 2626 	xrl	b,#0x80
   4F9A 95 F0         [12] 2627 	subb	a,b
   4F9C 50 12         [24] 2628 	jnc	00131$
                           2629 ;	radio/tdm.c:588: link_update();
   4F9E C0 03         [24] 2630 	push	ar3
   4FA0 C0 02         [24] 2631 	push	ar2
   4FA2 12 4B 27      [24] 2632 	lcall	_link_update
   4FA5 D0 02         [24] 2633 	pop	ar2
   4FA7 D0 03         [24] 2634 	pop	ar3
                           2635 ;	radio/tdm.c:589: last_link_update = tnow;
   4FA9 78 E7         [12] 2636 	mov	r0,#_tdm_serial_loop_last_link_update_1_207
   4FAB EA            [12] 2637 	mov	a,r2
   4FAC F2            [24] 2638 	movx	@r0,a
   4FAD 08            [12] 2639 	inc	r0
   4FAE EB            [12] 2640 	mov	a,r3
   4FAF F2            [24] 2641 	movx	@r0,a
   4FB0                    2642 00131$:
                           2643 ;	radio/tdm.c:592: if (lbt_rssi != 0) {
   4FB0 78 C8         [12] 2644 	mov	r0,#_lbt_rssi
   4FB2 E2            [24] 2645 	movx	a,@r0
   4FB3 70 03         [24] 2646 	jnz	00361$
   4FB5 02 50 35      [24] 2647 	ljmp	00140$
   4FB8                    2648 00361$:
                           2649 ;	radio/tdm.c:594: if (radio_current_rssi() < lbt_rssi) {
   4FB8 12 30 9C      [24] 2650 	lcall	_radio_current_rssi
   4FBB AF 82         [24] 2651 	mov	r7,dpl
   4FBD 78 C8         [12] 2652 	mov	r0,#_lbt_rssi
   4FBF C3            [12] 2653 	clr	c
   4FC0 E2            [24] 2654 	movx	a,@r0
   4FC1 F5 F0         [12] 2655 	mov	b,a
   4FC3 EF            [12] 2656 	mov	a,r7
   4FC4 95 F0         [12] 2657 	subb	a,b
   4FC6 50 16         [24] 2658 	jnc	00135$
                           2659 ;	radio/tdm.c:595: lbt_listen_time += tdelta;
   4FC8 78 C9         [12] 2660 	mov	r0,#_lbt_listen_time
   4FCA 79 EA         [12] 2661 	mov	r1,#_tdm_serial_loop_tdelta_2_208
   4FCC E3            [24] 2662 	movx	a,@r1
   4FCD C5 F0         [12] 2663 	xch	a,b
   4FCF E2            [24] 2664 	movx	a,@r0
   4FD0 25 F0         [12] 2665 	add	a,b
   4FD2 F2            [24] 2666 	movx	@r0,a
   4FD3 09            [12] 2667 	inc	r1
   4FD4 E3            [24] 2668 	movx	a,@r1
   4FD5 C5 F0         [12] 2669 	xch	a,b
   4FD7 08            [12] 2670 	inc	r0
   4FD8 E2            [24] 2671 	movx	a,@r0
   4FD9 35 F0         [12] 2672 	addc	a,b
   4FDB F2            [24] 2673 	movx	@r0,a
   4FDC 80 36         [24] 2674 	sjmp	00136$
   4FDE                    2675 00135$:
                           2676 ;	radio/tdm.c:597: lbt_listen_time = 0;
   4FDE 78 C9         [12] 2677 	mov	r0,#_lbt_listen_time
   4FE0 E4            [12] 2678 	clr	a
   4FE1 F2            [24] 2679 	movx	@r0,a
   4FE2 08            [12] 2680 	inc	r0
   4FE3 F2            [24] 2681 	movx	@r0,a
                           2682 ;	radio/tdm.c:598: if (lbt_rand == 0) {
   4FE4 78 CD         [12] 2683 	mov	r0,#_lbt_rand
   4FE6 E2            [24] 2684 	movx	a,@r0
   4FE7 F5 F0         [12] 2685 	mov	b,a
   4FE9 08            [12] 2686 	inc	r0
   4FEA E2            [24] 2687 	movx	a,@r0
   4FEB 45 F0         [12] 2688 	orl	a,b
   4FED 70 25         [24] 2689 	jnz	00136$
                           2690 ;	radio/tdm.c:599: lbt_rand = ((uint16_t)rand()) % lbt_min_time;
   4FEF 12 5B 89      [24] 2691 	lcall	_rand
   4FF2 AE 82         [24] 2692 	mov	r6,dpl
   4FF4 AF 83         [24] 2693 	mov	r7,dph
   4FF6 78 CB         [12] 2694 	mov	r0,#_lbt_min_time
   4FF8 90 05 DB      [24] 2695 	mov	dptr,#__moduint_PARM_2
   4FFB E2            [24] 2696 	movx	a,@r0
   4FFC F0            [24] 2697 	movx	@dptr,a
   4FFD 08            [12] 2698 	inc	r0
   4FFE E2            [24] 2699 	movx	a,@r0
   4FFF A3            [24] 2700 	inc	dptr
   5000 F0            [24] 2701 	movx	@dptr,a
   5001 8E 82         [24] 2702 	mov	dpl,r6
   5003 8F 83         [24] 2703 	mov	dph,r7
   5005 12 5F FD      [24] 2704 	lcall	__moduint
   5008 E5 82         [12] 2705 	mov	a,dpl
   500A 85 83 F0      [24] 2706 	mov	b,dph
   500D 78 CD         [12] 2707 	mov	r0,#_lbt_rand
   500F F2            [24] 2708 	movx	@r0,a
   5010 08            [12] 2709 	inc	r0
   5011 E5 F0         [12] 2710 	mov	a,b
   5013 F2            [24] 2711 	movx	@r0,a
   5014                    2712 00136$:
                           2713 ;	radio/tdm.c:602: if (lbt_listen_time < lbt_min_time + lbt_rand) {
   5014 78 CB         [12] 2714 	mov	r0,#_lbt_min_time
   5016 79 CD         [12] 2715 	mov	r1,#_lbt_rand
   5018 E3            [24] 2716 	movx	a,@r1
   5019 C5 F0         [12] 2717 	xch	a,b
   501B E2            [24] 2718 	movx	a,@r0
   501C 25 F0         [12] 2719 	add	a,b
   501E FE            [12] 2720 	mov	r6,a
   501F 09            [12] 2721 	inc	r1
   5020 E3            [24] 2722 	movx	a,@r1
   5021 C5 F0         [12] 2723 	xch	a,b
   5023 08            [12] 2724 	inc	r0
   5024 E2            [24] 2725 	movx	a,@r0
   5025 35 F0         [12] 2726 	addc	a,b
   5027 FF            [12] 2727 	mov	r7,a
   5028 78 C9         [12] 2728 	mov	r0,#_lbt_listen_time
   502A C3            [12] 2729 	clr	c
   502B E2            [24] 2730 	movx	a,@r0
   502C 9E            [12] 2731 	subb	a,r6
   502D 08            [12] 2732 	inc	r0
   502E E2            [24] 2733 	movx	a,@r0
   502F 9F            [12] 2734 	subb	a,r7
   5030 50 03         [24] 2735 	jnc	00364$
   5032 02 4D 4D      [24] 2736 	ljmp	00192$
   5035                    2737 00364$:
                           2738 ;	radio/tdm.c:604: continue;
   5035                    2739 00140$:
                           2740 ;	radio/tdm.c:612: if (tdm_state != TDM_TRANSMIT &&
   5035 78 B6         [12] 2741 	mov	r0,#_tdm_state
   5037 E2            [24] 2742 	movx	a,@r0
   5038 60 11         [24] 2743 	jz	00142$
                           2744 ;	radio/tdm.c:613: !(bonus_transmit && tdm_state == TDM_RECEIVE)) {
   503A 20 27 03      [24] 2745 	jb	_bonus_transmit,00366$
   503D 02 4D 4D      [24] 2746 	ljmp	00192$
   5040                    2747 00366$:
   5040 78 B6         [12] 2748 	mov	r0,#_tdm_state
   5042 E2            [24] 2749 	movx	a,@r0
   5043 B4 02 02      [24] 2750 	cjne	a,#0x02,00367$
   5046 80 03         [24] 2751 	sjmp	00368$
   5048                    2752 00367$:
   5048 02 4D 4D      [24] 2753 	ljmp	00192$
   504B                    2754 00368$:
                           2755 ;	radio/tdm.c:615: continue;
   504B                    2756 00142$:
                           2757 ;	radio/tdm.c:623: if (transmit_yield != 0) {
   504B 30 28 03      [24] 2758 	jnb	_transmit_yield,00369$
   504E 02 4D 4D      [24] 2759 	ljmp	00192$
   5051                    2760 00369$:
                           2761 ;	radio/tdm.c:628: if (transmit_wait != 0) {
   5051 78 C2         [12] 2762 	mov	r0,#_transmit_wait
   5053 E2            [24] 2763 	movx	a,@r0
   5054 F5 F0         [12] 2764 	mov	b,a
   5056 08            [12] 2765 	inc	r0
   5057 E2            [24] 2766 	movx	a,@r0
   5058 45 F0         [12] 2767 	orl	a,b
   505A 60 03         [24] 2768 	jz	00370$
   505C 02 4D 4D      [24] 2769 	ljmp	00192$
   505F                    2770 00370$:
                           2771 ;	radio/tdm.c:633: if (!received_packet &&
   505F 20 2A 05      [24] 2772 	jb	_received_packet,00152$
                           2773 ;	radio/tdm.c:634: radio_preamble_detected() ||
   5062 12 30 7F      [24] 2774 	lcall	_radio_preamble_detected
   5065 40 05         [24] 2775 	jc	00149$
   5067                    2776 00152$:
                           2777 ;	radio/tdm.c:635: radio_receive_in_progress()) {
   5067 12 30 66      [24] 2778 	lcall	_radio_receive_in_progress
   506A 50 11         [24] 2779 	jnc	00150$
   506C                    2780 00149$:
                           2781 ;	radio/tdm.c:638: transmit_wait = packet_latency;
   506C 78 BE         [12] 2782 	mov	r0,#_packet_latency
   506E E2            [24] 2783 	movx	a,@r0
   506F FE            [12] 2784 	mov	r6,a
   5070 08            [12] 2785 	inc	r0
   5071 E2            [24] 2786 	movx	a,@r0
   5072 FF            [12] 2787 	mov	r7,a
   5073 78 C2         [12] 2788 	mov	r0,#_transmit_wait
   5075 EE            [12] 2789 	mov	a,r6
   5076 F2            [24] 2790 	movx	@r0,a
   5077 08            [12] 2791 	inc	r0
   5078 EF            [12] 2792 	mov	a,r7
   5079 F2            [24] 2793 	movx	@r0,a
                           2794 ;	radio/tdm.c:639: continue;
   507A 02 4D 4D      [24] 2795 	ljmp	00192$
   507D                    2796 00150$:
                           2797 ;	radio/tdm.c:645: statistics.average_noise = (radio_current_rssi() + 3*(uint16_t)statistics.average_noise)/4;
   507D 12 30 9C      [24] 2798 	lcall	_radio_current_rssi
   5080 AF 82         [24] 2799 	mov	r7,dpl
   5082 7E 00         [12] 2800 	mov	r6,#0x00
   5084 78 41         [12] 2801 	mov	r0,#(_statistics + 0x0001)
   5086 E2            [24] 2802 	movx	a,@r0
   5087 90 05 CB      [24] 2803 	mov	dptr,#__mulint_PARM_2
   508A F0            [24] 2804 	movx	@dptr,a
   508B E4            [12] 2805 	clr	a
   508C A3            [24] 2806 	inc	dptr
   508D F0            [24] 2807 	movx	@dptr,a
   508E 90 00 03      [24] 2808 	mov	dptr,#0x0003
   5091 C0 07         [24] 2809 	push	ar7
   5093 C0 06         [24] 2810 	push	ar6
   5095 12 5E 74      [24] 2811 	lcall	__mulint
   5098 AC 82         [24] 2812 	mov	r4,dpl
   509A AD 83         [24] 2813 	mov	r5,dph
   509C D0 06         [24] 2814 	pop	ar6
   509E D0 07         [24] 2815 	pop	ar7
   50A0 EC            [12] 2816 	mov	a,r4
   50A1 2F            [12] 2817 	add	a,r7
   50A2 FC            [12] 2818 	mov	r4,a
   50A3 ED            [12] 2819 	mov	a,r5
   50A4 3E            [12] 2820 	addc	a,r6
   50A5 C3            [12] 2821 	clr	c
   50A6 13            [12] 2822 	rrc	a
   50A7 CC            [12] 2823 	xch	a,r4
   50A8 13            [12] 2824 	rrc	a
   50A9 CC            [12] 2825 	xch	a,r4
   50AA C3            [12] 2826 	clr	c
   50AB 13            [12] 2827 	rrc	a
   50AC CC            [12] 2828 	xch	a,r4
   50AD 13            [12] 2829 	rrc	a
   50AE CC            [12] 2830 	xch	a,r4
   50AF FD            [12] 2831 	mov	r5,a
   50B0 78 41         [12] 2832 	mov	r0,#(_statistics + 0x0001)
   50B2 EC            [12] 2833 	mov	a,r4
   50B3 F2            [24] 2834 	movx	@r0,a
                           2835 ;	radio/tdm.c:647: if (duty_cycle_wait) {
   50B4 30 2B 03      [24] 2836 	jnb	_duty_cycle_wait,00374$
   50B7 02 4D 4D      [24] 2837 	ljmp	00192$
   50BA                    2838 00374$:
                           2839 ;	radio/tdm.c:654: if (tdm_state_remaining < packet_latency) {
   50BA 78 B7         [12] 2840 	mov	r0,#_tdm_state_remaining
   50BC 79 BE         [12] 2841 	mov	r1,#_packet_latency
   50BE C3            [12] 2842 	clr	c
   50BF E3            [24] 2843 	movx	a,@r1
   50C0 F5 F0         [12] 2844 	mov	b,a
   50C2 E2            [24] 2845 	movx	a,@r0
   50C3 95 F0         [12] 2846 	subb	a,b
   50C5 09            [12] 2847 	inc	r1
   50C6 E3            [24] 2848 	movx	a,@r1
   50C7 F5 F0         [12] 2849 	mov	b,a
   50C9 08            [12] 2850 	inc	r0
   50CA E2            [24] 2851 	movx	a,@r0
   50CB 95 F0         [12] 2852 	subb	a,b
   50CD 50 03         [24] 2853 	jnc	00375$
   50CF 02 4D 4D      [24] 2854 	ljmp	00192$
   50D2                    2855 00375$:
                           2856 ;	radio/tdm.c:658: max_xmit = (tdm_state_remaining - packet_latency) / ticks_per_byte;
   50D2 78 B7         [12] 2857 	mov	r0,#_tdm_state_remaining
   50D4 79 BE         [12] 2858 	mov	r1,#_packet_latency
   50D6 E3            [24] 2859 	movx	a,@r1
   50D7 F5 F0         [12] 2860 	mov	b,a
   50D9 C3            [12] 2861 	clr	c
   50DA E2            [24] 2862 	movx	a,@r0
   50DB 95 F0         [12] 2863 	subb	a,b
   50DD FE            [12] 2864 	mov	r6,a
   50DE 09            [12] 2865 	inc	r1
   50DF E3            [24] 2866 	movx	a,@r1
   50E0 F5 F0         [12] 2867 	mov	b,a
   50E2 08            [12] 2868 	inc	r0
   50E3 E2            [24] 2869 	movx	a,@r0
   50E4 95 F0         [12] 2870 	subb	a,b
   50E6 FF            [12] 2871 	mov	r7,a
   50E7 78 C0         [12] 2872 	mov	r0,#_ticks_per_byte
   50E9 90 05 70      [24] 2873 	mov	dptr,#__divuint_PARM_2
   50EC E2            [24] 2874 	movx	a,@r0
   50ED F0            [24] 2875 	movx	@dptr,a
   50EE 08            [12] 2876 	inc	r0
   50EF E2            [24] 2877 	movx	a,@r0
   50F0 A3            [24] 2878 	inc	dptr
   50F1 F0            [24] 2879 	movx	@dptr,a
   50F2 8E 82         [24] 2880 	mov	dpl,r6
   50F4 8F 83         [24] 2881 	mov	dph,r7
   50F6 12 57 57      [24] 2882 	lcall	__divuint
   50F9 AE 82         [24] 2883 	mov	r6,dpl
   50FB AF 83         [24] 2884 	mov	r7,dph
                           2885 ;	radio/tdm.c:659: if (max_xmit < sizeof(trailer)+1) {
   50FD BE 03 00      [24] 2886 	cjne	r6,#0x03,00376$
   5100                    2887 00376$:
   5100 50 03         [24] 2888 	jnc	00377$
   5102 02 4D 4D      [24] 2889 	ljmp	00192$
   5105                    2890 00377$:
                           2891 ;	radio/tdm.c:663: max_xmit -= sizeof(trailer)+1;
   5105 1E            [12] 2892 	dec	r6
   5106 1E            [12] 2893 	dec	r6
   5107 1E            [12] 2894 	dec	r6
                           2895 ;	radio/tdm.c:664: if (max_xmit > max_data_packet_length) {
   5108 78 BB         [12] 2896 	mov	r0,#_max_data_packet_length
   510A C3            [12] 2897 	clr	c
   510B E2            [24] 2898 	movx	a,@r0
   510C 9E            [12] 2899 	subb	a,r6
   510D 50 04         [24] 2900 	jnc	00160$
                           2901 ;	radio/tdm.c:665: max_xmit = max_data_packet_length;
   510F 78 BB         [12] 2902 	mov	r0,#_max_data_packet_length
   5111 E2            [24] 2903 	movx	a,@r0
   5112 FE            [12] 2904 	mov	r6,a
   5113                    2905 00160$:
                           2906 ;	radio/tdm.c:669: if (send_at_command && 
   5113 30 2D 57      [24] 2907 	jnb	_send_at_command,00162$
                           2908 ;	radio/tdm.c:670: max_xmit >= strlen(remote_at_cmd)) {
   5116 90 00 D2      [24] 2909 	mov	dptr,#_remote_at_cmd
   5119 75 F0 60      [24] 2910 	mov	b,#0x60
   511C C0 06         [24] 2911 	push	ar6
   511E 12 63 F9      [24] 2912 	lcall	_strlen
   5121 AD 82         [24] 2913 	mov	r5,dpl
   5123 AF 83         [24] 2914 	mov	r7,dph
   5125 D0 06         [24] 2915 	pop	ar6
   5127 8E 03         [24] 2916 	mov	ar3,r6
   5129 7C 00         [12] 2917 	mov	r4,#0x00
   512B C3            [12] 2918 	clr	c
   512C EB            [12] 2919 	mov	a,r3
   512D 9D            [12] 2920 	subb	a,r5
   512E EC            [12] 2921 	mov	a,r4
   512F 9F            [12] 2922 	subb	a,r7
   5130 40 3B         [24] 2923 	jc	00162$
                           2924 ;	radio/tdm.c:672: len = strlen(remote_at_cmd);
   5132 90 00 D2      [24] 2925 	mov	dptr,#_remote_at_cmd
   5135 75 F0 60      [24] 2926 	mov	b,#0x60
   5138 C0 06         [24] 2927 	push	ar6
   513A 12 63 F9      [24] 2928 	lcall	_strlen
   513D AD 82         [24] 2929 	mov	r5,dpl
   513F 78 E9         [12] 2930 	mov	r0,#_tdm_serial_loop_len_2_208
   5141 ED            [12] 2931 	mov	a,r5
   5142 F2            [24] 2932 	movx	@r0,a
                           2933 ;	radio/tdm.c:673: memcpy(pbuf, remote_at_cmd, len);
   5143 90 05 C1      [24] 2934 	mov	dptr,#_memcpy_PARM_2
   5146 74 D2         [12] 2935 	mov	a,#_remote_at_cmd
   5148 F0            [24] 2936 	movx	@dptr,a
   5149 E4            [12] 2937 	clr	a
   514A A3            [24] 2938 	inc	dptr
   514B F0            [24] 2939 	movx	@dptr,a
   514C 74 60         [12] 2940 	mov	a,#0x60
   514E A3            [24] 2941 	inc	dptr
   514F F0            [24] 2942 	movx	@dptr,a
   5150 90 05 C4      [24] 2943 	mov	dptr,#_memcpy_PARM_3
   5153 ED            [12] 2944 	mov	a,r5
   5154 F0            [24] 2945 	movx	@dptr,a
   5155 E4            [12] 2946 	clr	a
   5156 A3            [24] 2947 	inc	dptr
   5157 F0            [24] 2948 	movx	@dptr,a
   5158 90 04 72      [24] 2949 	mov	dptr,#_pbuf
   515B 75 F0 00      [24] 2950 	mov	b,#0x00
   515E 12 5D 9C      [24] 2951 	lcall	_memcpy
   5161 D0 06         [24] 2952 	pop	ar6
                           2953 ;	radio/tdm.c:674: trailer.command = 1;
   5163 78 D1         [12] 2954 	mov	r0,#(_trailer + 0x0001)
   5165 E2            [24] 2955 	movx	a,@r0
   5166 44 20         [12] 2956 	orl	a,#0x20
   5168 F2            [24] 2957 	movx	@r0,a
                           2958 ;	radio/tdm.c:675: send_at_command = false;
   5169 C2 2D         [12] 2959 	clr	_send_at_command
   516B 80 26         [24] 2960 	sjmp	00163$
   516D                    2961 00162$:
                           2962 ;	radio/tdm.c:678: len = packet_get_next(max_xmit, pbuf);
   516D 78 64         [12] 2963 	mov	r0,#_packet_get_next_PARM_2
   516F 74 72         [12] 2964 	mov	a,#_pbuf
   5171 F2            [24] 2965 	movx	@r0,a
   5172 08            [12] 2966 	inc	r0
   5173 74 04         [12] 2967 	mov	a,#(_pbuf >> 8)
   5175 F2            [24] 2968 	movx	@r0,a
   5176 8E 82         [24] 2969 	mov	dpl,r6
   5178 C0 06         [24] 2970 	push	ar6
   517A 12 1F 98      [24] 2971 	lcall	_packet_get_next
   517D E5 82         [12] 2972 	mov	a,dpl
   517F 78 E9         [12] 2973 	mov	r0,#_tdm_serial_loop_len_2_208
   5181 F2            [24] 2974 	movx	@r0,a
                           2975 ;	radio/tdm.c:679: trailer.command = packet_is_injected();
   5182 12 24 3A      [24] 2976 	lcall	_packet_is_injected
   5185 D0 06         [24] 2977 	pop	ar6
   5187 92 30         [24] 2978 	mov  _tdm_serial_loop_sloc0_1_0,c
   5189 E4            [12] 2979 	clr	a
   518A 33            [12] 2980 	rlc	a
   518B FF            [12] 2981 	mov	r7,a
   518C 78 D1         [12] 2982 	mov	r0,#(_trailer + 0x0001)
   518E 13            [12] 2983 	rrc	a
   518F E2            [24] 2984 	movx	a,@r0
   5190 92 E5         [24] 2985 	mov	acc.5,c
   5192 F2            [24] 2986 	movx	@r0,a
   5193                    2987 00163$:
                           2988 ;	radio/tdm.c:682: if (len > max_data_packet_length) {
   5193 78 E9         [12] 2989 	mov	r0,#_tdm_serial_loop_len_2_208
   5195 79 BB         [12] 2990 	mov	r1,#_max_data_packet_length
   5197 C3            [12] 2991 	clr	c
   5198 E2            [24] 2992 	movx	a,@r0
   5199 F5 F0         [12] 2993 	mov	b,a
   519B E3            [24] 2994 	movx	a,@r1
   519C 95 F0         [12] 2995 	subb	a,b
   519E 50 19         [24] 2996 	jnc	00166$
                           2997 ;	radio/tdm.c:683: panic("oversized tdm packet");
   51A0 C0 06         [24] 2998 	push	ar6
   51A2 74 5D         [12] 2999 	mov	a,#__str_8
   51A4 C0 E0         [24] 3000 	push	acc
   51A6 74 CD         [12] 3001 	mov	a,#(__str_8 >> 8)
   51A8 C0 E0         [24] 3002 	push	acc
   51AA 74 80         [12] 3003 	mov	a,#0x80
   51AC C0 E0         [24] 3004 	push	acc
   51AE 12 11 F8      [24] 3005 	lcall	_panic
   51B1 15 81         [12] 3006 	dec	sp
   51B3 15 81         [12] 3007 	dec	sp
   51B5 15 81         [12] 3008 	dec	sp
   51B7 D0 06         [24] 3009 	pop	ar6
   51B9                    3010 00166$:
                           3011 ;	radio/tdm.c:686: trailer.bonus = (tdm_state == TDM_RECEIVE);
   51B9 78 B6         [12] 3012 	mov	r0,#_tdm_state
   51BB E2            [24] 3013 	movx	a,@r0
   51BC B4 02 03      [24] 3014 	cjne	a,#0x02,00382$
   51BF D3            [12] 3015 	setb	c
   51C0 80 01         [24] 3016 	sjmp	00383$
   51C2                    3017 00382$:
   51C2 C3            [12] 3018 	clr	c
   51C3                    3019 00383$:
   51C3 92 30         [24] 3020 	mov  _tdm_serial_loop_sloc0_1_0,c
   51C5 E4            [12] 3021 	clr	a
   51C6 33            [12] 3022 	rlc	a
   51C7 78 D1         [12] 3023 	mov	r0,#(_trailer + 0x0001)
   51C9 13            [12] 3024 	rrc	a
   51CA E2            [24] 3025 	movx	a,@r0
   51CB 92 E6         [24] 3026 	mov	acc.6,c
   51CD F2            [24] 3027 	movx	@r0,a
                           3028 ;	radio/tdm.c:687: trailer.resend = packet_is_resend();
   51CE C0 06         [24] 3029 	push	ar6
   51D0 12 24 37      [24] 3030 	lcall	_packet_is_resend
   51D3 D0 06         [24] 3031 	pop	ar6
   51D5 92 30         [24] 3032 	mov  _tdm_serial_loop_sloc0_1_0,c
   51D7 E4            [12] 3033 	clr	a
   51D8 33            [12] 3034 	rlc	a
   51D9 FF            [12] 3035 	mov	r7,a
   51DA 78 D1         [12] 3036 	mov	r0,#(_trailer + 0x0001)
   51DC 13            [12] 3037 	rrc	a
   51DD E2            [24] 3038 	movx	a,@r0
   51DE 92 E7         [24] 3039 	mov	acc.7,c
   51E0 F2            [24] 3040 	movx	@r0,a
                           3041 ;	radio/tdm.c:689: if (tdm_state == TDM_TRANSMIT &&
   51E1 78 B6         [12] 3042 	mov	r0,#_tdm_state
   51E3 E2            [24] 3043 	movx	a,@r0
   51E4 70 44         [24] 3044 	jnz	00168$
                           3045 ;	radio/tdm.c:690: len == 0 && 
   51E6 78 E9         [12] 3046 	mov	r0,#_tdm_serial_loop_len_2_208
   51E8 E2            [24] 3047 	movx	a,@r0
   51E9 70 3F         [24] 3048 	jnz	00168$
                           3049 ;	radio/tdm.c:691: send_statistics && 
   51EB 30 2C 3C      [24] 3050 	jnb	_send_statistics,00168$
                           3051 ;	radio/tdm.c:692: max_xmit >= sizeof(statistics)) {
   51EE BE 04 00      [24] 3052 	cjne	r6,#0x04,00387$
   51F1                    3053 00387$:
   51F1 40 37         [24] 3054 	jc	00168$
                           3055 ;	radio/tdm.c:694: send_statistics = 0;
   51F3 C2 2C         [12] 3056 	clr	_send_statistics
                           3057 ;	radio/tdm.c:695: memcpy(pbuf, &statistics, sizeof(statistics));
   51F5 90 05 C1      [24] 3058 	mov	dptr,#_memcpy_PARM_2
   51F8 74 40         [12] 3059 	mov	a,#_statistics
   51FA F0            [24] 3060 	movx	@dptr,a
   51FB E4            [12] 3061 	clr	a
   51FC A3            [24] 3062 	inc	dptr
   51FD F0            [24] 3063 	movx	@dptr,a
   51FE 74 60         [12] 3064 	mov	a,#0x60
   5200 A3            [24] 3065 	inc	dptr
   5201 F0            [24] 3066 	movx	@dptr,a
   5202 90 05 C4      [24] 3067 	mov	dptr,#_memcpy_PARM_3
   5205 74 04         [12] 3068 	mov	a,#0x04
   5207 F0            [24] 3069 	movx	@dptr,a
   5208 E4            [12] 3070 	clr	a
   5209 A3            [24] 3071 	inc	dptr
   520A F0            [24] 3072 	movx	@dptr,a
   520B 90 04 72      [24] 3073 	mov	dptr,#_pbuf
   520E 75 F0 00      [24] 3074 	mov	b,#0x00
   5211 12 5D 9C      [24] 3075 	lcall	_memcpy
                           3076 ;	radio/tdm.c:696: len = sizeof(statistics);
   5214 78 E9         [12] 3077 	mov	r0,#_tdm_serial_loop_len_2_208
   5216 74 04         [12] 3078 	mov	a,#0x04
   5218 F2            [24] 3079 	movx	@r0,a
                           3080 ;	radio/tdm.c:699: trailer.window = 0;
   5219 78 D0         [12] 3081 	mov	r0,#_trailer
   521B E4            [12] 3082 	clr	a
   521C F2            [24] 3083 	movx	@r0,a
   521D 08            [12] 3084 	inc	r0
   521E E2            [24] 3085 	movx	a,@r0
   521F 54 E0         [12] 3086 	anl	a,#0xE0
   5221 F2            [24] 3087 	movx	@r0,a
                           3088 ;	radio/tdm.c:700: trailer.resend = 0;
   5222 78 D1         [12] 3089 	mov	r0,#(_trailer + 0x0001)
   5224 E2            [24] 3090 	movx	a,@r0
   5225 54 7F         [12] 3091 	anl	a,#0x7F
   5227 F2            [24] 3092 	movx	@r0,a
   5228 80 28         [24] 3093 	sjmp	00169$
   522A                    3094 00168$:
                           3095 ;	radio/tdm.c:705: trailer.window = (uint16_t)(tdm_state_remaining - flight_time_estimate(len+sizeof(trailer)));
   522A 78 E9         [12] 3096 	mov	r0,#_tdm_serial_loop_len_2_208
   522C E2            [24] 3097 	movx	a,@r0
   522D 24 02         [12] 3098 	add	a,#0x02
   522F F5 82         [12] 3099 	mov	dpl,a
   5231 12 46 66      [24] 3100 	lcall	_flight_time_estimate
   5234 AE 82         [24] 3101 	mov	r6,dpl
   5236 AF 83         [24] 3102 	mov	r7,dph
   5238 78 B7         [12] 3103 	mov	r0,#_tdm_state_remaining
   523A E2            [24] 3104 	movx	a,@r0
   523B C3            [12] 3105 	clr	c
   523C 9E            [12] 3106 	subb	a,r6
   523D FE            [12] 3107 	mov	r6,a
   523E 08            [12] 3108 	inc	r0
   523F E2            [24] 3109 	movx	a,@r0
   5240 9F            [12] 3110 	subb	a,r7
   5241 FF            [12] 3111 	mov	r7,a
   5242 78 D0         [12] 3112 	mov	r0,#_trailer
   5244 EE            [12] 3113 	mov	a,r6
   5245 F2            [24] 3114 	movx	@r0,a
   5246 08            [12] 3115 	inc	r0
   5247 EF            [12] 3116 	mov	a,r7
   5248 54 1F         [12] 3117 	anl	a,#0x1F
   524A F5 F0         [12] 3118 	mov	b,a
   524C E2            [24] 3119 	movx	a,@r0
   524D 54 E0         [12] 3120 	anl	a,#0xE0
   524F 45 F0         [12] 3121 	orl	a,b
   5251 F2            [24] 3122 	movx	@r0,a
   5252                    3123 00169$:
                           3124 ;	radio/tdm.c:709: radio_set_channel(fhop_transmit_channel());
   5252 12 0C 07      [24] 3125 	lcall	_fhop_transmit_channel
   5255 12 35 75      [24] 3126 	lcall	_radio_set_channel
                           3127 ;	radio/tdm.c:711: memcpy(&pbuf[len], &trailer, sizeof(trailer));
   5258 78 E9         [12] 3128 	mov	r0,#_tdm_serial_loop_len_2_208
   525A E2            [24] 3129 	movx	a,@r0
   525B 24 72         [12] 3130 	add	a,#_pbuf
   525D FE            [12] 3131 	mov	r6,a
   525E E4            [12] 3132 	clr	a
   525F 34 04         [12] 3133 	addc	a,#(_pbuf >> 8)
   5261 FF            [12] 3134 	mov	r7,a
   5262 7D 00         [12] 3135 	mov	r5,#0x00
   5264 90 05 C1      [24] 3136 	mov	dptr,#_memcpy_PARM_2
   5267 74 D0         [12] 3137 	mov	a,#_trailer
   5269 F0            [24] 3138 	movx	@dptr,a
   526A E4            [12] 3139 	clr	a
   526B A3            [24] 3140 	inc	dptr
   526C F0            [24] 3141 	movx	@dptr,a
   526D 74 60         [12] 3142 	mov	a,#0x60
   526F A3            [24] 3143 	inc	dptr
   5270 F0            [24] 3144 	movx	@dptr,a
   5271 90 05 C4      [24] 3145 	mov	dptr,#_memcpy_PARM_3
   5274 74 02         [12] 3146 	mov	a,#0x02
   5276 F0            [24] 3147 	movx	@dptr,a
   5277 E4            [12] 3148 	clr	a
   5278 A3            [24] 3149 	inc	dptr
   5279 F0            [24] 3150 	movx	@dptr,a
   527A 8E 82         [24] 3151 	mov	dpl,r6
   527C 8F 83         [24] 3152 	mov	dph,r7
   527E 8D F0         [24] 3153 	mov	b,r5
   5280 12 5D 9C      [24] 3154 	lcall	_memcpy
                           3155 ;	radio/tdm.c:713: if (len != 0 && trailer.window != 0) {
   5283 78 E9         [12] 3156 	mov	r0,#_tdm_serial_loop_len_2_208
   5285 E2            [24] 3157 	movx	a,@r0
   5286 60 0E         [24] 3158 	jz	00174$
   5288 78 D0         [12] 3159 	mov	r0,#_trailer
   528A E2            [24] 3160 	movx	a,@r0
   528B FE            [12] 3161 	mov	r6,a
   528C 08            [12] 3162 	inc	r0
   528D E2            [24] 3163 	movx	a,@r0
   528E 54 1F         [12] 3164 	anl	a,#0x1F
   5290 FF            [12] 3165 	mov	r7,a
   5291 4E            [12] 3166 	orl	a,r6
   5292 60 02         [24] 3167 	jz	00174$
                           3168 ;	radio/tdm.c:715: LED_ACTIVITY = LED_ON;
   5294 C2 96         [12] 3169 	clr	_LED_RED
   5296                    3170 00174$:
                           3171 ;	radio/tdm.c:718: if (len == 0) {
   5296 78 E9         [12] 3172 	mov	r0,#_tdm_serial_loop_len_2_208
   5298 E2            [24] 3173 	movx	a,@r0
   5299 70 02         [24] 3174 	jnz	00177$
                           3175 ;	radio/tdm.c:722: transmit_yield = 1;
   529B D2 28         [12] 3176 	setb	_transmit_yield
   529D                    3177 00177$:
                           3178 ;	radio/tdm.c:728: transmit_wait = packet_latency;
   529D 78 BE         [12] 3179 	mov	r0,#_packet_latency
   529F E2            [24] 3180 	movx	a,@r0
   52A0 FE            [12] 3181 	mov	r6,a
   52A1 08            [12] 3182 	inc	r0
   52A2 E2            [24] 3183 	movx	a,@r0
   52A3 FF            [12] 3184 	mov	r7,a
   52A4 78 C2         [12] 3185 	mov	r0,#_transmit_wait
   52A6 EE            [12] 3186 	mov	a,r6
   52A7 F2            [24] 3187 	movx	@r0,a
   52A8 08            [12] 3188 	inc	r0
   52A9 EF            [12] 3189 	mov	a,r7
   52AA F2            [24] 3190 	movx	@r0,a
                           3191 ;	radio/tdm.c:732: if ((duty_cycle - duty_cycle_offset) != 100) {
   52AB 78 C4         [12] 3192 	mov	r0,#_duty_cycle
   52AD E2            [24] 3193 	movx	a,@r0
   52AE FE            [12] 3194 	mov	r6,a
   52AF 7F 00         [12] 3195 	mov	r7,#0x00
   52B1 78 C5         [12] 3196 	mov	r0,#_duty_cycle_offset
   52B3 E2            [24] 3197 	movx	a,@r0
   52B4 FC            [12] 3198 	mov	r4,a
   52B5 7D 00         [12] 3199 	mov	r5,#0x00
   52B7 EE            [12] 3200 	mov	a,r6
   52B8 C3            [12] 3201 	clr	c
   52B9 9C            [12] 3202 	subb	a,r4
   52BA FE            [12] 3203 	mov	r6,a
   52BB EF            [12] 3204 	mov	a,r7
   52BC 9D            [12] 3205 	subb	a,r5
   52BD FF            [12] 3206 	mov	r7,a
   52BE BE 64 05      [24] 3207 	cjne	r6,#0x64,00392$
   52C1 BF 00 02      [24] 3208 	cjne	r7,#0x00,00392$
   52C4 80 17         [24] 3209 	sjmp	00179$
   52C6                    3210 00392$:
                           3211 ;	radio/tdm.c:733: transmitted_ticks += flight_time_estimate(len+sizeof(trailer));
   52C6 78 E9         [12] 3212 	mov	r0,#_tdm_serial_loop_len_2_208
   52C8 E2            [24] 3213 	movx	a,@r0
   52C9 24 02         [12] 3214 	add	a,#0x02
   52CB F5 82         [12] 3215 	mov	dpl,a
   52CD 12 46 66      [24] 3216 	lcall	_flight_time_estimate
   52D0 AE 82         [24] 3217 	mov	r6,dpl
   52D2 AF 83         [24] 3218 	mov	r7,dph
   52D4 78 C6         [12] 3219 	mov	r0,#_transmitted_ticks
   52D6 E2            [24] 3220 	movx	a,@r0
   52D7 2E            [12] 3221 	add	a,r6
   52D8 F2            [24] 3222 	movx	@r0,a
   52D9 08            [12] 3223 	inc	r0
   52DA E2            [24] 3224 	movx	a,@r0
   52DB 3F            [12] 3225 	addc	a,r7
   52DC F2            [24] 3226 	movx	@r0,a
   52DD                    3227 00179$:
                           3228 ;	radio/tdm.c:737: if (!radio_transmit(len + sizeof(trailer), pbuf, tdm_state_remaining + (silence_period/2)) &&
   52DD 78 E9         [12] 3229 	mov	r0,#_tdm_serial_loop_len_2_208
   52DF E2            [24] 3230 	movx	a,@r0
   52E0 24 02         [12] 3231 	add	a,#0x02
   52E2 FF            [12] 3232 	mov	r7,a
   52E3 78 BC         [12] 3233 	mov	r0,#_silence_period
   52E5 E2            [24] 3234 	movx	a,@r0
   52E6 FD            [12] 3235 	mov	r5,a
   52E7 08            [12] 3236 	inc	r0
   52E8 E2            [24] 3237 	movx	a,@r0
   52E9 C3            [12] 3238 	clr	c
   52EA 13            [12] 3239 	rrc	a
   52EB CD            [12] 3240 	xch	a,r5
   52EC 13            [12] 3241 	rrc	a
   52ED CD            [12] 3242 	xch	a,r5
   52EE FE            [12] 3243 	mov	r6,a
   52EF 78 B7         [12] 3244 	mov	r0,#_tdm_state_remaining
   52F1 E2            [24] 3245 	movx	a,@r0
   52F2 2D            [12] 3246 	add	a,r5
   52F3 FD            [12] 3247 	mov	r5,a
   52F4 08            [12] 3248 	inc	r0
   52F5 E2            [24] 3249 	movx	a,@r0
   52F6 3E            [12] 3250 	addc	a,r6
   52F7 FE            [12] 3251 	mov	r6,a
   52F8 78 96         [12] 3252 	mov	r0,#_radio_transmit_PARM_2
   52FA 74 72         [12] 3253 	mov	a,#_pbuf
   52FC F2            [24] 3254 	movx	@r0,a
   52FD 08            [12] 3255 	inc	r0
   52FE 74 04         [12] 3256 	mov	a,#(_pbuf >> 8)
   5300 F2            [24] 3257 	movx	@r0,a
   5301 78 98         [12] 3258 	mov	r0,#_radio_transmit_PARM_3
   5303 ED            [12] 3259 	mov	a,r5
   5304 F2            [24] 3260 	movx	@r0,a
   5305 08            [12] 3261 	inc	r0
   5306 EE            [12] 3262 	mov	a,r6
   5307 F2            [24] 3263 	movx	@r0,a
   5308 8F 82         [24] 3264 	mov	dpl,r7
   530A 12 33 E8      [24] 3265 	lcall	_radio_transmit
   530D 40 1A         [24] 3266 	jc	00181$
                           3267 ;	radio/tdm.c:738: len != 0 && trailer.window != 0 && trailer.command == 0) {
   530F 78 E9         [12] 3268 	mov	r0,#_tdm_serial_loop_len_2_208
   5311 E2            [24] 3269 	movx	a,@r0
   5312 60 15         [24] 3270 	jz	00181$
   5314 78 D0         [12] 3271 	mov	r0,#_trailer
   5316 E2            [24] 3272 	movx	a,@r0
   5317 FE            [12] 3273 	mov	r6,a
   5318 08            [12] 3274 	inc	r0
   5319 E2            [24] 3275 	movx	a,@r0
   531A 54 1F         [12] 3276 	anl	a,#0x1F
   531C FF            [12] 3277 	mov	r7,a
   531D 4E            [12] 3278 	orl	a,r6
   531E 60 09         [24] 3279 	jz	00181$
   5320 78 D1         [12] 3280 	mov	r0,#(_trailer + 0x0001)
   5322 E2            [24] 3281 	movx	a,@r0
   5323 20 E5 03      [24] 3282 	jb	acc.5,00181$
                           3283 ;	radio/tdm.c:739: packet_force_resend();
   5326 12 24 3D      [24] 3284 	lcall	_packet_force_resend
   5329                    3285 00181$:
                           3286 ;	radio/tdm.c:742: if (lbt_rssi != 0) {
   5329 78 C8         [12] 3287 	mov	r0,#_lbt_rssi
   532B E2            [24] 3288 	movx	a,@r0
   532C 60 0C         [24] 3289 	jz	00186$
                           3290 ;	radio/tdm.c:744: lbt_listen_time = 0;
   532E 78 C9         [12] 3291 	mov	r0,#_lbt_listen_time
   5330 E4            [12] 3292 	clr	a
   5331 F2            [24] 3293 	movx	@r0,a
   5332 08            [12] 3294 	inc	r0
   5333 F2            [24] 3295 	movx	@r0,a
                           3296 ;	radio/tdm.c:745: lbt_rand = 0;
   5334 78 CD         [12] 3297 	mov	r0,#_lbt_rand
   5336 E4            [12] 3298 	clr	a
   5337 F2            [24] 3299 	movx	@r0,a
   5338 08            [12] 3300 	inc	r0
   5339 F2            [24] 3301 	movx	@r0,a
   533A                    3302 00186$:
                           3303 ;	radio/tdm.c:749: radio_set_channel(fhop_receive_channel());
   533A 12 0C 17      [24] 3304 	lcall	_fhop_receive_channel
   533D 12 35 75      [24] 3305 	lcall	_radio_set_channel
                           3306 ;	radio/tdm.c:752: radio_receiver_on();
   5340 12 34 40      [24] 3307 	lcall	_radio_receiver_on
                           3308 ;	radio/tdm.c:754: if (len != 0 && trailer.window != 0) {
   5343 78 E9         [12] 3309 	mov	r0,#_tdm_serial_loop_len_2_208
   5345 E2            [24] 3310 	movx	a,@r0
   5346 70 03         [24] 3311 	jnz	00398$
   5348 02 4D 4D      [24] 3312 	ljmp	00192$
   534B                    3313 00398$:
   534B 78 D0         [12] 3314 	mov	r0,#_trailer
   534D E2            [24] 3315 	movx	a,@r0
   534E FE            [12] 3316 	mov	r6,a
   534F 08            [12] 3317 	inc	r0
   5350 E2            [24] 3318 	movx	a,@r0
   5351 54 1F         [12] 3319 	anl	a,#0x1F
   5353 FF            [12] 3320 	mov	r7,a
   5354 4E            [12] 3321 	orl	a,r6
   5355 70 03         [24] 3322 	jnz	00399$
   5357 02 4D 4D      [24] 3323 	ljmp	00192$
   535A                    3324 00399$:
                           3325 ;	radio/tdm.c:755: LED_ACTIVITY = LED_OFF;
   535A D2 96         [12] 3326 	setb	_LED_RED
   535C 02 4D 4D      [24] 3327 	ljmp	00192$
                           3328 ;------------------------------------------------------------
                           3329 ;Allocation info for local variables in function 'tdm_init'
                           3330 ;------------------------------------------------------------
                           3331 ;sloc0                     Allocated with name '_tdm_init_sloc0_1_0'
                           3332 ;------------------------------------------------------------
                           3333 ;	radio/tdm.c:873: tdm_init(void)
                           3334 ;	-----------------------------------------
                           3335 ;	 function tdm_init
                           3336 ;	-----------------------------------------
   535F                    3337 _tdm_init:
                           3338 ;	radio/tdm.c:876: __pdata uint8_t air_rate = radio_air_rate();
   535F 12 30 A2      [24] 3339 	lcall	_radio_air_rate
   5362 AF 82         [24] 3340 	mov	r7,dpl
                           3341 ;	radio/tdm.c:885: ticks_per_byte = (8+(8000000UL/(air_rate*1000UL)))/16;
   5364 90 05 D7      [24] 3342 	mov	dptr,#__mullong_PARM_2
   5367 EF            [12] 3343 	mov	a,r7
   5368 F0            [24] 3344 	movx	@dptr,a
   5369 E4            [12] 3345 	clr	a
   536A A3            [24] 3346 	inc	dptr
   536B F0            [24] 3347 	movx	@dptr,a
   536C E4            [12] 3348 	clr	a
   536D A3            [24] 3349 	inc	dptr
   536E F0            [24] 3350 	movx	@dptr,a
   536F E4            [12] 3351 	clr	a
   5370 A3            [24] 3352 	inc	dptr
   5371 F0            [24] 3353 	movx	@dptr,a
   5372 90 03 E8      [24] 3354 	mov	dptr,#0x03E8
   5375 E4            [12] 3355 	clr	a
   5376 F5 F0         [12] 3356 	mov	b,a
   5378 12 5F 91      [24] 3357 	lcall	__mullong
   537B AC 82         [24] 3358 	mov	r4,dpl
   537D AD 83         [24] 3359 	mov	r5,dph
   537F AE F0         [24] 3360 	mov	r6,b
   5381 FF            [12] 3361 	mov	r7,a
   5382 90 05 B2      [24] 3362 	mov	dptr,#__divulong_PARM_2
   5385 EC            [12] 3363 	mov	a,r4
   5386 F0            [24] 3364 	movx	@dptr,a
   5387 ED            [12] 3365 	mov	a,r5
   5388 A3            [24] 3366 	inc	dptr
   5389 F0            [24] 3367 	movx	@dptr,a
   538A EE            [12] 3368 	mov	a,r6
   538B A3            [24] 3369 	inc	dptr
   538C F0            [24] 3370 	movx	@dptr,a
   538D EF            [12] 3371 	mov	a,r7
   538E A3            [24] 3372 	inc	dptr
   538F F0            [24] 3373 	movx	@dptr,a
   5390 90 12 00      [24] 3374 	mov	dptr,#0x1200
   5393 75 F0 7A      [24] 3375 	mov	b,#0x7A
   5396 E4            [12] 3376 	clr	a
   5397 12 5C 33      [24] 3377 	lcall	__divulong
   539A AC 82         [24] 3378 	mov	r4,dpl
   539C AD 83         [24] 3379 	mov	r5,dph
   539E AE F0         [24] 3380 	mov	r6,b
   53A0 FF            [12] 3381 	mov	r7,a
   53A1 74 08         [12] 3382 	mov	a,#0x08
   53A3 2C            [12] 3383 	add	a,r4
   53A4 FC            [12] 3384 	mov	r4,a
   53A5 E4            [12] 3385 	clr	a
   53A6 3D            [12] 3386 	addc	a,r5
   53A7 FD            [12] 3387 	mov	r5,a
   53A8 E4            [12] 3388 	clr	a
   53A9 3E            [12] 3389 	addc	a,r6
   53AA FE            [12] 3390 	mov	r6,a
   53AB E4            [12] 3391 	clr	a
   53AC 3F            [12] 3392 	addc	a,r7
   53AD FF            [12] 3393 	mov	r7,a
   53AE ED            [12] 3394 	mov	a,r5
   53AF C4            [12] 3395 	swap	a
   53B0 CC            [12] 3396 	xch	a,r4
   53B1 C4            [12] 3397 	swap	a
   53B2 54 0F         [12] 3398 	anl	a,#0x0F
   53B4 6C            [12] 3399 	xrl	a,r4
   53B5 CC            [12] 3400 	xch	a,r4
   53B6 54 0F         [12] 3401 	anl	a,#0x0F
   53B8 CC            [12] 3402 	xch	a,r4
   53B9 6C            [12] 3403 	xrl	a,r4
   53BA CC            [12] 3404 	xch	a,r4
   53BB FD            [12] 3405 	mov	r5,a
   53BC EE            [12] 3406 	mov	a,r6
   53BD C4            [12] 3407 	swap	a
   53BE 54 F0         [12] 3408 	anl	a,#0xF0
   53C0 4D            [12] 3409 	orl	a,r5
   53C1 FD            [12] 3410 	mov	r5,a
   53C2 EF            [12] 3411 	mov	a,r7
   53C3 C4            [12] 3412 	swap	a
   53C4 CE            [12] 3413 	xch	a,r6
   53C5 C4            [12] 3414 	swap	a
   53C6 54 0F         [12] 3415 	anl	a,#0x0F
   53C8 6E            [12] 3416 	xrl	a,r6
   53C9 CE            [12] 3417 	xch	a,r6
   53CA 54 0F         [12] 3418 	anl	a,#0x0F
   53CC CE            [12] 3419 	xch	a,r6
   53CD 6E            [12] 3420 	xrl	a,r6
   53CE CE            [12] 3421 	xch	a,r6
   53CF 78 C0         [12] 3422 	mov	r0,#_ticks_per_byte
   53D1 EC            [12] 3423 	mov	a,r4
   53D2 F2            [24] 3424 	movx	@r0,a
   53D3 08            [12] 3425 	inc	r0
   53D4 ED            [12] 3426 	mov	a,r5
   53D5 F2            [24] 3427 	movx	@r0,a
                           3428 ;	radio/tdm.c:892: packet_latency = (8+(10/2)) * ticks_per_byte + 13;
   53D6 90 05 CB      [24] 3429 	mov	dptr,#__mulint_PARM_2
   53D9 EC            [12] 3430 	mov	a,r4
   53DA F0            [24] 3431 	movx	@dptr,a
   53DB ED            [12] 3432 	mov	a,r5
   53DC A3            [24] 3433 	inc	dptr
   53DD F0            [24] 3434 	movx	@dptr,a
   53DE 90 00 0D      [24] 3435 	mov	dptr,#0x000D
   53E1 C0 05         [24] 3436 	push	ar5
   53E3 C0 04         [24] 3437 	push	ar4
   53E5 12 5E 74      [24] 3438 	lcall	__mulint
   53E8 E5 82         [12] 3439 	mov	a,dpl
   53EA 85 83 F0      [24] 3440 	mov	b,dph
   53ED D0 04         [24] 3441 	pop	ar4
   53EF D0 05         [24] 3442 	pop	ar5
   53F1 24 0D         [12] 3443 	add	a,#0x0D
   53F3 FE            [12] 3444 	mov	r6,a
   53F4 E4            [12] 3445 	clr	a
   53F5 35 F0         [12] 3446 	addc	a,b
   53F7 FF            [12] 3447 	mov	r7,a
   53F8 78 BE         [12] 3448 	mov	r0,#_packet_latency
   53FA EE            [12] 3449 	mov	a,r6
   53FB F2            [24] 3450 	movx	@r0,a
   53FC 08            [12] 3451 	inc	r0
   53FD EF            [12] 3452 	mov	a,r7
   53FE F2            [24] 3453 	movx	@r0,a
                           3454 ;	radio/tdm.c:894: if (feature_golay) {
   53FF 30 04 2E      [24] 3455 	jnb	_feature_golay,00102$
                           3456 ;	radio/tdm.c:895: max_data_packet_length = (MAX_PACKET_LENGTH/2) - (6+sizeof(trailer));
   5402 78 BB         [12] 3457 	mov	r0,#_max_data_packet_length
   5404 74 76         [12] 3458 	mov	a,#0x76
   5406 F2            [24] 3459 	movx	@r0,a
                           3460 ;	radio/tdm.c:898: ticks_per_byte *= 2;
   5407 ED            [12] 3461 	mov	a,r5
   5408 CC            [12] 3462 	xch	a,r4
   5409 25 E0         [12] 3463 	add	a,acc
   540B CC            [12] 3464 	xch	a,r4
   540C 33            [12] 3465 	rlc	a
   540D FD            [12] 3466 	mov	r5,a
   540E 78 C0         [12] 3467 	mov	r0,#_ticks_per_byte
   5410 EC            [12] 3468 	mov	a,r4
   5411 F2            [24] 3469 	movx	@r0,a
   5412 08            [12] 3470 	inc	r0
   5413 ED            [12] 3471 	mov	a,r5
   5414 F2            [24] 3472 	movx	@r0,a
                           3473 ;	radio/tdm.c:901: packet_latency += 4*ticks_per_byte;
   5415 ED            [12] 3474 	mov	a,r5
   5416 CC            [12] 3475 	xch	a,r4
   5417 25 E0         [12] 3476 	add	a,acc
   5419 CC            [12] 3477 	xch	a,r4
   541A 33            [12] 3478 	rlc	a
   541B CC            [12] 3479 	xch	a,r4
   541C 25 E0         [12] 3480 	add	a,acc
   541E CC            [12] 3481 	xch	a,r4
   541F 33            [12] 3482 	rlc	a
   5420 FD            [12] 3483 	mov	r5,a
   5421 EC            [12] 3484 	mov	a,r4
   5422 2E            [12] 3485 	add	a,r6
   5423 FE            [12] 3486 	mov	r6,a
   5424 ED            [12] 3487 	mov	a,r5
   5425 3F            [12] 3488 	addc	a,r7
   5426 FF            [12] 3489 	mov	r7,a
   5427 78 BE         [12] 3490 	mov	r0,#_packet_latency
   5429 EE            [12] 3491 	mov	a,r6
   542A F2            [24] 3492 	movx	@r0,a
   542B 08            [12] 3493 	inc	r0
   542C EF            [12] 3494 	mov	a,r7
   542D F2            [24] 3495 	movx	@r0,a
   542E 80 05         [24] 3496 	sjmp	00103$
   5430                    3497 00102$:
                           3498 ;	radio/tdm.c:903: max_data_packet_length = MAX_PACKET_LENGTH - sizeof(trailer);
   5430 78 BB         [12] 3499 	mov	r0,#_max_data_packet_length
   5432 74 FA         [12] 3500 	mov	a,#0xFA
   5434 F2            [24] 3501 	movx	@r0,a
   5435                    3502 00103$:
                           3503 ;	radio/tdm.c:907: silence_period = 2*packet_latency;
   5435 78 BE         [12] 3504 	mov	r0,#_packet_latency
   5437 79 BC         [12] 3505 	mov	r1,#_silence_period
   5439 E2            [24] 3506 	movx	a,@r0
   543A F3            [24] 3507 	movx	@r1,a
   543B 08            [12] 3508 	inc	r0
   543C E2            [24] 3509 	movx	a,@r0
   543D F5 F0         [12] 3510 	mov	b,a
   543F E3            [24] 3511 	movx	a,@r1
   5440 25 E0         [12] 3512 	add	a,acc
   5442 C5 F0         [12] 3513 	xch	a,b
   5444 33            [12] 3514 	rlc	a
   5445 C5 F0         [12] 3515 	xch	a,b
   5447 F3            [24] 3516 	movx	@r1,a
   5448 09            [12] 3517 	inc	r1
   5449 E5 F0         [12] 3518 	mov	a,b
   544B F3            [24] 3519 	movx	@r1,a
                           3520 ;	radio/tdm.c:910: window_width = 3*(packet_latency+(max_data_packet_length*(uint32_t)ticks_per_byte));
   544C 78 C0         [12] 3521 	mov	r0,#_ticks_per_byte
   544E 90 05 D7      [24] 3522 	mov	dptr,#__mullong_PARM_2
   5451 E2            [24] 3523 	movx	a,@r0
   5452 F0            [24] 3524 	movx	@dptr,a
   5453 08            [12] 3525 	inc	r0
   5454 E2            [24] 3526 	movx	a,@r0
   5455 A3            [24] 3527 	inc	dptr
   5456 F0            [24] 3528 	movx	@dptr,a
   5457 E4            [12] 3529 	clr	a
   5458 A3            [24] 3530 	inc	dptr
   5459 F0            [24] 3531 	movx	@dptr,a
   545A E4            [12] 3532 	clr	a
   545B A3            [24] 3533 	inc	dptr
   545C F0            [24] 3534 	movx	@dptr,a
   545D 78 BB         [12] 3535 	mov	r0,#_max_data_packet_length
   545F E2            [24] 3536 	movx	a,@r0
   5460 FC            [12] 3537 	mov	r4,a
   5461 7D 00         [12] 3538 	mov	r5,#0x00
   5463 7E 00         [12] 3539 	mov	r6,#0x00
   5465 7F 00         [12] 3540 	mov	r7,#0x00
   5467 8C 82         [24] 3541 	mov	dpl,r4
   5469 8D 83         [24] 3542 	mov	dph,r5
   546B 8E F0         [24] 3543 	mov	b,r6
   546D EF            [12] 3544 	mov	a,r7
   546E 12 5F 91      [24] 3545 	lcall	__mullong
   5471 85 82 6C      [24] 3546 	mov	_tdm_init_sloc0_1_0,dpl
   5474 85 83 6D      [24] 3547 	mov	(_tdm_init_sloc0_1_0 + 1),dph
   5477 85 F0 6E      [24] 3548 	mov	(_tdm_init_sloc0_1_0 + 2),b
   547A F5 6F         [12] 3549 	mov	(_tdm_init_sloc0_1_0 + 3),a
   547C 78 BE         [12] 3550 	mov	r0,#_packet_latency
   547E E2            [24] 3551 	movx	a,@r0
   547F FA            [12] 3552 	mov	r2,a
   5480 08            [12] 3553 	inc	r0
   5481 E2            [24] 3554 	movx	a,@r0
   5482 FB            [12] 3555 	mov	r3,a
   5483 7E 00         [12] 3556 	mov	r6,#0x00
   5485 7F 00         [12] 3557 	mov	r7,#0x00
   5487 90 05 D7      [24] 3558 	mov	dptr,#__mullong_PARM_2
   548A E5 6C         [12] 3559 	mov	a,_tdm_init_sloc0_1_0
   548C 2A            [12] 3560 	add	a,r2
   548D F0            [24] 3561 	movx	@dptr,a
   548E E5 6D         [12] 3562 	mov	a,(_tdm_init_sloc0_1_0 + 1)
   5490 3B            [12] 3563 	addc	a,r3
   5491 A3            [24] 3564 	inc	dptr
   5492 F0            [24] 3565 	movx	@dptr,a
   5493 E5 6E         [12] 3566 	mov	a,(_tdm_init_sloc0_1_0 + 2)
   5495 3E            [12] 3567 	addc	a,r6
   5496 A3            [24] 3568 	inc	dptr
   5497 F0            [24] 3569 	movx	@dptr,a
   5498 E5 6F         [12] 3570 	mov	a,(_tdm_init_sloc0_1_0 + 3)
   549A 3F            [12] 3571 	addc	a,r7
   549B A3            [24] 3572 	inc	dptr
   549C F0            [24] 3573 	movx	@dptr,a
   549D 90 00 03      [24] 3574 	mov	dptr,#(0x03&0x00ff)
   54A0 E4            [12] 3575 	clr	a
   54A1 F5 F0         [12] 3576 	mov	b,a
   54A3 12 5F 91      [24] 3577 	lcall	__mullong
   54A6 AC 82         [24] 3578 	mov	r4,dpl
   54A8 AD 83         [24] 3579 	mov	r5,dph
   54AA AE F0         [24] 3580 	mov	r6,b
   54AC FF            [12] 3581 	mov	r7,a
                           3582 ;	radio/tdm.c:913: if (lbt_rssi != 0) {
   54AD 78 C8         [12] 3583 	mov	r0,#_lbt_rssi
   54AF E2            [24] 3584 	movx	a,@r0
   54B0 60 35         [24] 3585 	jz	00105$
                           3586 ;	radio/tdm.c:915: lbt_min_time = LBT_MIN_TIME_USEC/16;
   54B2 78 CB         [12] 3587 	mov	r0,#_lbt_min_time
   54B4 74 38         [12] 3588 	mov	a,#0x38
   54B6 F2            [24] 3589 	movx	@r0,a
   54B7 08            [12] 3590 	inc	r0
   54B8 74 01         [12] 3591 	mov	a,#0x01
   54BA F2            [24] 3592 	movx	@r0,a
                           3593 ;	radio/tdm.c:916: window_width = constrain(window_width, 3*lbt_min_time, window_width);
   54BB 78 6F         [12] 3594 	mov	r0,#_constrain_PARM_2
   54BD 74 A8         [12] 3595 	mov	a,#0xA8
   54BF F2            [24] 3596 	movx	@r0,a
   54C0 08            [12] 3597 	inc	r0
   54C1 74 03         [12] 3598 	mov	a,#0x03
   54C3 F2            [24] 3599 	movx	@r0,a
   54C4 08            [12] 3600 	inc	r0
   54C5 E4            [12] 3601 	clr	a
   54C6 F2            [24] 3602 	movx	@r0,a
   54C7 08            [12] 3603 	inc	r0
   54C8 F2            [24] 3604 	movx	@r0,a
   54C9 78 73         [12] 3605 	mov	r0,#_constrain_PARM_3
   54CB EC            [12] 3606 	mov	a,r4
   54CC F2            [24] 3607 	movx	@r0,a
   54CD 08            [12] 3608 	inc	r0
   54CE ED            [12] 3609 	mov	a,r5
   54CF F2            [24] 3610 	movx	@r0,a
   54D0 08            [12] 3611 	inc	r0
   54D1 EE            [12] 3612 	mov	a,r6
   54D2 F2            [24] 3613 	movx	@r0,a
   54D3 08            [12] 3614 	inc	r0
   54D4 EF            [12] 3615 	mov	a,r7
   54D5 F2            [24] 3616 	movx	@r0,a
   54D6 8C 82         [24] 3617 	mov	dpl,r4
   54D8 8D 83         [24] 3618 	mov	dph,r5
   54DA 8E F0         [24] 3619 	mov	b,r6
   54DC EF            [12] 3620 	mov	a,r7
   54DD 12 2A 72      [24] 3621 	lcall	_constrain
   54E0 AC 82         [24] 3622 	mov	r4,dpl
   54E2 AD 83         [24] 3623 	mov	r5,dph
   54E4 AE F0         [24] 3624 	mov	r6,b
   54E6 FF            [12] 3625 	mov	r7,a
   54E7                    3626 00105$:
                           3627 ;	radio/tdm.c:921: if (window_width >= REGULATORY_MAX_WINDOW) {
   54E7 C3            [12] 3628 	clr	c
   54E8 EC            [12] 3629 	mov	a,r4
   54E9 94 A8         [12] 3630 	subb	a,#0xA8
   54EB ED            [12] 3631 	mov	a,r5
   54EC 94 61         [12] 3632 	subb	a,#0x61
   54EE EE            [12] 3633 	mov	a,r6
   54EF 94 00         [12] 3634 	subb	a,#0x00
   54F1 EF            [12] 3635 	mov	a,r7
   54F2 94 00         [12] 3636 	subb	a,#0x00
   54F4 40 08         [24] 3637 	jc	00108$
                           3638 ;	radio/tdm.c:922: window_width = REGULATORY_MAX_WINDOW;
   54F6 7C A8         [12] 3639 	mov	r4,#0xA8
   54F8 7D 61         [12] 3640 	mov	r5,#0x61
   54FA 7E 00         [12] 3641 	mov	r6,#0x00
   54FC 7F 00         [12] 3642 	mov	r7,#0x00
                           3643 ;	radio/tdm.c:926: while (window_width > 0x1FFF) {
   54FE                    3644 00108$:
   54FE ED            [12] 3645 	mov	a,r5
   54FF 54 E0         [12] 3646 	anl	a,#0xE0
   5501 70 06         [24] 3647 	jnz	00136$
   5503 EE            [12] 3648 	mov	a,r6
   5504 70 03         [24] 3649 	jnz	00136$
   5506 EF            [12] 3650 	mov	a,r7
   5507 60 0A         [24] 3651 	jz	00110$
   5509                    3652 00136$:
                           3653 ;	radio/tdm.c:927: window_width = 0x1FFF;
   5509 7C FF         [12] 3654 	mov	r4,#0xFF
   550B 7D 1F         [12] 3655 	mov	r5,#0x1F
   550D 7E 00         [12] 3656 	mov	r6,#0x00
   550F 7F 00         [12] 3657 	mov	r7,#0x00
   5511 80 EB         [24] 3658 	sjmp	00108$
   5513                    3659 00110$:
                           3660 ;	radio/tdm.c:930: tx_window_width = window_width;
   5513 78 B9         [12] 3661 	mov	r0,#_tx_window_width
   5515 EC            [12] 3662 	mov	a,r4
   5516 F2            [24] 3663 	movx	@r0,a
   5517 08            [12] 3664 	inc	r0
   5518 ED            [12] 3665 	mov	a,r5
   5519 F2            [24] 3666 	movx	@r0,a
                           3667 ;	radio/tdm.c:935: packet_latency += ((settings.preamble_length-10)/2) * ticks_per_byte;
   551A 78 89         [12] 3668 	mov	r0,#(_settings + 0x000b)
   551C E2            [24] 3669 	movx	a,@r0
   551D 7E 00         [12] 3670 	mov	r6,#0x00
   551F 24 F6         [12] 3671 	add	a,#0xF6
   5521 FF            [12] 3672 	mov	r7,a
   5522 EE            [12] 3673 	mov	a,r6
   5523 34 FF         [12] 3674 	addc	a,#0xFF
   5525 FE            [12] 3675 	mov	r6,a
   5526 90 05 E8      [24] 3676 	mov	dptr,#__divsint_PARM_2
   5529 74 02         [12] 3677 	mov	a,#0x02
   552B F0            [24] 3678 	movx	@dptr,a
   552C E4            [12] 3679 	clr	a
   552D A3            [24] 3680 	inc	dptr
   552E F0            [24] 3681 	movx	@dptr,a
   552F 8F 82         [24] 3682 	mov	dpl,r7
   5531 8E 83         [24] 3683 	mov	dph,r6
   5533 C0 05         [24] 3684 	push	ar5
   5535 C0 04         [24] 3685 	push	ar4
   5537 12 61 80      [24] 3686 	lcall	__divsint
   553A AE 82         [24] 3687 	mov	r6,dpl
   553C AF 83         [24] 3688 	mov	r7,dph
   553E 78 C0         [12] 3689 	mov	r0,#_ticks_per_byte
   5540 90 05 CB      [24] 3690 	mov	dptr,#__mulint_PARM_2
   5543 E2            [24] 3691 	movx	a,@r0
   5544 F0            [24] 3692 	movx	@dptr,a
   5545 08            [12] 3693 	inc	r0
   5546 E2            [24] 3694 	movx	a,@r0
   5547 A3            [24] 3695 	inc	dptr
   5548 F0            [24] 3696 	movx	@dptr,a
   5549 8E 82         [24] 3697 	mov	dpl,r6
   554B 8F 83         [24] 3698 	mov	dph,r7
   554D 12 5E 74      [24] 3699 	lcall	__mulint
   5550 AE 82         [24] 3700 	mov	r6,dpl
   5552 AF 83         [24] 3701 	mov	r7,dph
   5554 D0 04         [24] 3702 	pop	ar4
   5556 D0 05         [24] 3703 	pop	ar5
   5558 78 BE         [12] 3704 	mov	r0,#_packet_latency
   555A E2            [24] 3705 	movx	a,@r0
   555B 2E            [12] 3706 	add	a,r6
   555C F2            [24] 3707 	movx	@r0,a
   555D 08            [12] 3708 	inc	r0
   555E E2            [24] 3709 	movx	a,@r0
   555F 3F            [12] 3710 	addc	a,r7
   5560 F2            [24] 3711 	movx	@r0,a
                           3712 ;	radio/tdm.c:939: i = (tx_window_width - packet_latency) / ticks_per_byte;
   5561 78 BE         [12] 3713 	mov	r0,#_packet_latency
   5563 D3            [12] 3714 	setb	c
   5564 E2            [24] 3715 	movx	a,@r0
   5565 9C            [12] 3716 	subb	a,r4
   5566 F4            [12] 3717 	cpl	a
   5567 B3            [12] 3718 	cpl	c
   5568 FC            [12] 3719 	mov	r4,a
   5569 B3            [12] 3720 	cpl	c
   556A 08            [12] 3721 	inc	r0
   556B E2            [24] 3722 	movx	a,@r0
   556C 9D            [12] 3723 	subb	a,r5
   556D F4            [12] 3724 	cpl	a
   556E FD            [12] 3725 	mov	r5,a
   556F 78 C0         [12] 3726 	mov	r0,#_ticks_per_byte
   5571 90 05 70      [24] 3727 	mov	dptr,#__divuint_PARM_2
   5574 E2            [24] 3728 	movx	a,@r0
   5575 F0            [24] 3729 	movx	@dptr,a
   5576 08            [12] 3730 	inc	r0
   5577 E2            [24] 3731 	movx	a,@r0
   5578 A3            [24] 3732 	inc	dptr
   5579 F0            [24] 3733 	movx	@dptr,a
   557A 8C 82         [24] 3734 	mov	dpl,r4
   557C 8D 83         [24] 3735 	mov	dph,r5
   557E 12 57 57      [24] 3736 	lcall	__divuint
   5581 AE 82         [24] 3737 	mov	r6,dpl
   5583 AF 83         [24] 3738 	mov	r7,dph
                           3739 ;	radio/tdm.c:940: if (i > max_data_packet_length) {
   5585 78 BB         [12] 3740 	mov	r0,#_max_data_packet_length
   5587 E2            [24] 3741 	movx	a,@r0
   5588 FC            [12] 3742 	mov	r4,a
   5589 7D 00         [12] 3743 	mov	r5,#0x00
   558B C3            [12] 3744 	clr	c
   558C EC            [12] 3745 	mov	a,r4
   558D 9E            [12] 3746 	subb	a,r6
   558E ED            [12] 3747 	mov	a,r5
   558F 9F            [12] 3748 	subb	a,r7
   5590 50 04         [24] 3749 	jnc	00112$
                           3750 ;	radio/tdm.c:941: i = max_data_packet_length;
   5592 8C 06         [24] 3751 	mov	ar6,r4
   5594 8D 07         [24] 3752 	mov	ar7,r5
   5596                    3753 00112$:
                           3754 ;	radio/tdm.c:943: packet_set_max_xmit(i);
   5596 8E 82         [24] 3755 	mov	dpl,r6
   5598 12 24 40      [24] 3756 	lcall	_packet_set_max_xmit
                           3757 ;	radio/tdm.c:946: TDM_SYNC_PIN = false;
   559B C2 A6         [12] 3758 	clr	_TDM_SYNC_PIN
   559D 22            [24] 3759 	ret
                           3760 ;------------------------------------------------------------
                           3761 ;Allocation info for local variables in function 'tdm_report_timing'
                           3762 ;------------------------------------------------------------
                           3763 ;	radio/tdm.c:960: tdm_report_timing(void)
                           3764 ;	-----------------------------------------
                           3765 ;	 function tdm_report_timing
                           3766 ;	-----------------------------------------
   559E                    3767 _tdm_report_timing:
                           3768 ;	radio/tdm.c:962: printf("silence_period: %u\n", (unsigned)silence_period); delay_msec(1);
   559E 78 BC         [12] 3769 	mov	r0,#_silence_period
   55A0 E2            [24] 3770 	movx	a,@r0
   55A1 C0 E0         [24] 3771 	push	acc
   55A3 08            [12] 3772 	inc	r0
   55A4 E2            [24] 3773 	movx	a,@r0
   55A5 C0 E0         [24] 3774 	push	acc
   55A7 74 72         [12] 3775 	mov	a,#__str_9
   55A9 C0 E0         [24] 3776 	push	acc
   55AB 74 CD         [12] 3777 	mov	a,#(__str_9 >> 8)
   55AD C0 E0         [24] 3778 	push	acc
   55AF 74 80         [12] 3779 	mov	a,#0x80
   55B1 C0 E0         [24] 3780 	push	acc
   55B3 12 2D B6      [24] 3781 	lcall	_printfl
   55B6 E5 81         [12] 3782 	mov	a,sp
   55B8 24 FB         [12] 3783 	add	a,#0xfb
   55BA F5 81         [12] 3784 	mov	sp,a
   55BC 90 00 01      [24] 3785 	mov	dptr,#0x0001
   55BF 12 56 8C      [24] 3786 	lcall	_delay_msec
                           3787 ;	radio/tdm.c:963: printf("tx_window_width: %u\n", (unsigned)tx_window_width); delay_msec(1);
   55C2 78 B9         [12] 3788 	mov	r0,#_tx_window_width
   55C4 E2            [24] 3789 	movx	a,@r0
   55C5 C0 E0         [24] 3790 	push	acc
   55C7 08            [12] 3791 	inc	r0
   55C8 E2            [24] 3792 	movx	a,@r0
   55C9 C0 E0         [24] 3793 	push	acc
   55CB 74 86         [12] 3794 	mov	a,#__str_10
   55CD C0 E0         [24] 3795 	push	acc
   55CF 74 CD         [12] 3796 	mov	a,#(__str_10 >> 8)
   55D1 C0 E0         [24] 3797 	push	acc
   55D3 74 80         [12] 3798 	mov	a,#0x80
   55D5 C0 E0         [24] 3799 	push	acc
   55D7 12 2D B6      [24] 3800 	lcall	_printfl
   55DA E5 81         [12] 3801 	mov	a,sp
   55DC 24 FB         [12] 3802 	add	a,#0xfb
   55DE F5 81         [12] 3803 	mov	sp,a
   55E0 90 00 01      [24] 3804 	mov	dptr,#0x0001
   55E3 12 56 8C      [24] 3805 	lcall	_delay_msec
                           3806 ;	radio/tdm.c:964: printf("max_data_packet_length: %u\n", (unsigned)max_data_packet_length); delay_msec(1);
   55E6 78 BB         [12] 3807 	mov	r0,#_max_data_packet_length
   55E8 E2            [24] 3808 	movx	a,@r0
   55E9 FE            [12] 3809 	mov	r6,a
   55EA 7F 00         [12] 3810 	mov	r7,#0x00
   55EC C0 06         [24] 3811 	push	ar6
   55EE C0 07         [24] 3812 	push	ar7
   55F0 74 9B         [12] 3813 	mov	a,#__str_11
   55F2 C0 E0         [24] 3814 	push	acc
   55F4 74 CD         [12] 3815 	mov	a,#(__str_11 >> 8)
   55F6 C0 E0         [24] 3816 	push	acc
   55F8 74 80         [12] 3817 	mov	a,#0x80
   55FA C0 E0         [24] 3818 	push	acc
   55FC 12 2D B6      [24] 3819 	lcall	_printfl
   55FF E5 81         [12] 3820 	mov	a,sp
   5601 24 FB         [12] 3821 	add	a,#0xfb
   5603 F5 81         [12] 3822 	mov	sp,a
   5605 90 00 01      [24] 3823 	mov	dptr,#0x0001
   5608 02 56 8C      [24] 3824 	ljmp	_delay_msec
                           3825 	.area CSEG    (CODE)
                           3826 	.area CONST   (CODE)
   CC8F                    3827 __str_0:
   CC8F 4C 2F 52 20 52 53  3828 	.ascii "L/R RSSI: %u/%u  L/R noise: %u/%u pkts: %u "
        53 49 3A 20 25 75
        2F 25 75 20 20 4C
        2F 52 20 6E 6F 69
        73 65 3A 20 25 75
        2F 25 75 20 70 6B
        74 73 3A 20 25 75
        20
   CCBA 00                 3829 	.db 0x00
   CCBB                    3830 __str_1:
   CCBB 20 74 78 65 3D 25  3831 	.ascii " txe=%u rxe=%u stx=%u srx=%u ecc=%u/%u temp=%d dco=%u"
        75 20 72 78 65 3D
        25 75 20 73 74 78
        3D 25 75 20 73 72
        78 3D 25 75 20 65
        63 63 3D 25 75 2F
        25 75 20 74 65 6D
        70 3D 25 64 20 64
        63 6F 3D 25 75
   CCF0 0A                 3832 	.db 0x0A
   CCF1 00                 3833 	.db 0x00
   CCF2                    3834 __str_2:
   CCF2 54 44 4D 3A 20 25  3835 	.ascii "TDM: %u/%u len=%u "
        75 2F 25 75 20 6C
        65 6E 3D 25 75 20
   CD04 00                 3836 	.db 0x00
   CD05                    3837 __str_3:
   CD05 20 64 65 6C 74 61  3838 	.ascii " delta: %d"
        3A 20 25 64
   CD0F 0A                 3839 	.db 0x0A
   CD10 00                 3840 	.db 0x00
   CD11                    3841 __str_4:
   CD11 54 44 4D 3A 20 63  3842 	.ascii "TDM: change timing %u/%u"
        68 61 6E 67 65 20
        74 69 6D 69 6E 67
        20 25 75 2F 25 75
   CD29 0A                 3843 	.db 0x0A
   CD2A 00                 3844 	.db 0x00
   CD2B                    3845 __str_5:
   CD2B 54 44 4D 3A 20 73  3846 	.ascii "TDM: scanning"
        63 61 6E 6E 69 6E
        67
   CD38 0A                 3847 	.db 0x0A
   CD39 00                 3848 	.db 0x00
   CD3A                    3849 __str_6:
   CD3A 73 74 61 63 6B 20  3850 	.ascii "stack blown"
        62 6C 6F 77 6E
   CD45 0A                 3851 	.db 0x0A
   CD46 00                 3852 	.db 0x00
   CD47                    3853 __str_7:
   CD47 70 64 61 74 61 20  3854 	.ascii "pdata canary changed"
        63 61 6E 61 72 79
        20 63 68 61 6E 67
        65 64
   CD5B 0A                 3855 	.db 0x0A
   CD5C 00                 3856 	.db 0x00
   CD5D                    3857 __str_8:
   CD5D 6F 76 65 72 73 69  3858 	.ascii "oversized tdm packet"
        7A 65 64 20 74 64
        6D 20 70 61 63 6B
        65 74
   CD71 00                 3859 	.db 0x00
   CD72                    3860 __str_9:
   CD72 73 69 6C 65 6E 63  3861 	.ascii "silence_period: %u"
        65 5F 70 65 72 69
        6F 64 3A 20 25 75
   CD84 0A                 3862 	.db 0x0A
   CD85 00                 3863 	.db 0x00
   CD86                    3864 __str_10:
   CD86 74 78 5F 77 69 6E  3865 	.ascii "tx_window_width: %u"
        64 6F 77 5F 77 69
        64 74 68 3A 20 25
        75
   CD99 0A                 3866 	.db 0x0A
   CD9A 00                 3867 	.db 0x00
   CD9B                    3868 __str_11:
   CD9B 6D 61 78 5F 64 61  3869 	.ascii "max_data_packet_length: %u"
        74 61 5F 70 61 63
        6B 65 74 5F 6C 65
        6E 67 74 68 3A 20
        25 75
   CDB5 0A                 3870 	.db 0x0A
   CDB6 00                 3871 	.db 0x00
                           3872 	.area XINIT   (CODE)
                           3873 	.area CABS    (ABS,CODE)
