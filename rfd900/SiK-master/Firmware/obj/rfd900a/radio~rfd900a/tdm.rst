                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:11 2013
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
                             51 	.globl _NSS1
                             52 	.globl _IRQ
                             53 	.globl _PA_ENABLE
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
                     00A5   578 _PA_ENABLE	=	0x00a5
                     0087   579 _IRQ	=	0x0087
                     0094   580 _NSS1	=	0x0094
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
   0061                     603 _sync_tx_windows_old_state_1_157:
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
   0028                     630 _bonus_transmit:
   0028                     631 	.ds 1
   0029                     632 _transmit_yield:
   0029                     633 	.ds 1
   002A                     634 _blink_state:
   002A                     635 	.ds 1
   002B                     636 _received_packet:
   002B                     637 	.ds 1
   002C                     638 _duty_cycle_wait:
   002C                     639 	.ds 1
   002D                     640 _send_statistics:
   002D                     641 	.ds 1
   002E                     642 _send_at_command:
   002E                     643 	.ds 1
   002F                     644 _sync_tx_windows_sloc0_1_0:
   002F                     645 	.ds 1
   0030                     646 _tdm_state_update_sloc3_1_0:
   0030                     647 	.ds 1
   0031                     648 _tdm_serial_loop_sloc0_1_0:
   0031                     649 	.ds 1
                            650 ;--------------------------------------------------------
                            651 ; paged external ram data
                            652 ;--------------------------------------------------------
                            653 	.area PSEG    (PAG,XDATA)
   00BA                     654 _tdm_state:
   00BA                     655 	.ds 1
   00BB                     656 _tdm_state_remaining:
   00BB                     657 	.ds 2
   00BD                     658 _tx_window_width:
   00BD                     659 	.ds 2
   00BF                     660 _max_data_packet_length:
   00BF                     661 	.ds 1
   00C0                     662 _silence_period:
   00C0                     663 	.ds 2
   00C2                     664 _packet_latency:
   00C2                     665 	.ds 2
   00C4                     666 _ticks_per_byte:
   00C4                     667 	.ds 2
   00C6                     668 _transmit_wait::
   00C6                     669 	.ds 2
   00C8                     670 _duty_cycle::
   00C8                     671 	.ds 1
   00C9                     672 _duty_cycle_offset::
   00C9                     673 	.ds 1
   00CA                     674 _transmitted_ticks:
   00CA                     675 	.ds 2
   00CC                     676 _lbt_rssi::
   00CC                     677 	.ds 1
   00CD                     678 _lbt_listen_time:
   00CD                     679 	.ds 2
   00CF                     680 _lbt_min_time:
   00CF                     681 	.ds 2
   00D1                     682 _lbt_rand:
   00D1                     683 	.ds 2
   00D3                     684 _test_display::
   00D3                     685 	.ds 1
   00D4                     686 _trailer::
   00D4                     687 	.ds 2
   00D6                     688 _remote_at_cmd:
   00D6                     689 	.ds 17
   00E7                     690 _sync_tx_windows_delta_2_164:
   00E7                     691 	.ds 2
   00E9                     692 _tdm_serial_loop_last_t_1_209:
   00E9                     693 	.ds 2
   00EB                     694 _tdm_serial_loop_last_link_update_1_209:
   00EB                     695 	.ds 2
   00ED                     696 _tdm_serial_loop_len_2_210:
   00ED                     697 	.ds 1
   00EE                     698 _tdm_serial_loop_tdelta_2_210:
   00EE                     699 	.ds 2
                            700 ;--------------------------------------------------------
                            701 ; external ram data
                            702 ;--------------------------------------------------------
                            703 	.area XSEG    (XDATA)
   0475                     704 _pbuf::
   0475                     705 	.ds 252
   0571                     706 _link_update_unlock_count_1_187:
   0571                     707 	.ds 1
   0572                     708 _link_update_temperature_count_1_187:
   0572                     709 	.ds 1
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
   47E6                     757 _tdm_show_rssi:
                     0007   758 	ar7 = 0x07
                     0006   759 	ar6 = 0x06
                     0005   760 	ar5 = 0x05
                     0004   761 	ar4 = 0x04
                     0003   762 	ar3 = 0x03
                     0002   763 	ar2 = 0x02
                     0001   764 	ar1 = 0x01
                     0000   765 	ar0 = 0x00
                            766 ;	radio/tdm.c:154: printf("L/R RSSI: %u/%u  L/R noise: %u/%u pkts: %u ",
   47E6 78 46         [12]  767 	mov	r0,#(_statistics + 0x0002)
   47E8 E2            [24]  768 	movx	a,@r0
   47E9 FE            [12]  769 	mov	r6,a
   47EA 08            [12]  770 	inc	r0
   47EB E2            [24]  771 	movx	a,@r0
   47EC FF            [12]  772 	mov	r7,a
   47ED 78 49         [12]  773 	mov	r0,#(_remote_statistics + 0x0001)
   47EF E2            [24]  774 	movx	a,@r0
   47F0 FD            [12]  775 	mov	r5,a
   47F1 7C 00         [12]  776 	mov	r4,#0x00
   47F3 78 45         [12]  777 	mov	r0,#(_statistics + 0x0001)
   47F5 E2            [24]  778 	movx	a,@r0
   47F6 FB            [12]  779 	mov	r3,a
   47F7 8B 57         [24]  780 	mov	_tdm_show_rssi_sloc0_1_0,r3
   47F9 75 58 00      [24]  781 	mov	(_tdm_show_rssi_sloc0_1_0 + 1),#0x00
   47FC 78 48         [12]  782 	mov	r0,#_remote_statistics
   47FE E2            [24]  783 	movx	a,@r0
   47FF FB            [12]  784 	mov	r3,a
   4800 8B 59         [24]  785 	mov	_tdm_show_rssi_sloc1_1_0,r3
   4802 75 5A 00      [24]  786 	mov	(_tdm_show_rssi_sloc1_1_0 + 1),#0x00
   4805 78 44         [12]  787 	mov	r0,#_statistics
   4807 E2            [24]  788 	movx	a,@r0
   4808 FB            [12]  789 	mov	r3,a
   4809 7A 00         [12]  790 	mov	r2,#0x00
   480B C0 06         [24]  791 	push	ar6
   480D C0 07         [24]  792 	push	ar7
   480F C0 05         [24]  793 	push	ar5
   4811 C0 04         [24]  794 	push	ar4
   4813 C0 57         [24]  795 	push	_tdm_show_rssi_sloc0_1_0
   4815 C0 58         [24]  796 	push	(_tdm_show_rssi_sloc0_1_0 + 1)
   4817 C0 59         [24]  797 	push	_tdm_show_rssi_sloc1_1_0
   4819 C0 5A         [24]  798 	push	(_tdm_show_rssi_sloc1_1_0 + 1)
   481B C0 03         [24]  799 	push	ar3
   481D C0 02         [24]  800 	push	ar2
   481F 74 13         [12]  801 	mov	a,#__str_0
   4821 C0 E0         [24]  802 	push	acc
   4823 74 CF         [12]  803 	mov	a,#(__str_0 >> 8)
   4825 C0 E0         [24]  804 	push	acc
   4827 74 80         [12]  805 	mov	a,#0x80
   4829 C0 E0         [24]  806 	push	acc
   482B 12 30 0B      [24]  807 	lcall	_printfl
   482E E5 81         [12]  808 	mov	a,sp
   4830 24 F3         [12]  809 	add	a,#0xf3
   4832 F5 81         [12]  810 	mov	sp,a
                            811 ;	radio/tdm.c:160: printf(" txe=%u rxe=%u stx=%u srx=%u ecc=%u/%u temp=%d dco=%u\n",
   4834 78 C9         [12]  812 	mov	r0,#_duty_cycle_offset
   4836 E2            [24]  813 	movx	a,@r0
   4837 FE            [12]  814 	mov	r6,a
   4838 7F 00         [12]  815 	mov	r7,#0x00
   483A C0 07         [24]  816 	push	ar7
   483C C0 06         [24]  817 	push	ar6
   483E 12 3E CD      [24]  818 	lcall	_radio_temperature
   4841 AC 82         [24]  819 	mov	r4,dpl
   4843 AD 83         [24]  820 	mov	r5,dph
   4845 D0 06         [24]  821 	pop	ar6
   4847 D0 07         [24]  822 	pop	ar7
   4849 78 42         [12]  823 	mov	r0,#(_errors + 0x000a)
   484B E2            [24]  824 	movx	a,@r0
   484C F5 59         [12]  825 	mov	_tdm_show_rssi_sloc1_1_0,a
   484E 08            [12]  826 	inc	r0
   484F E2            [24]  827 	movx	a,@r0
   4850 F5 5A         [12]  828 	mov	(_tdm_show_rssi_sloc1_1_0 + 1),a
   4852 78 40         [12]  829 	mov	r0,#(_errors + 0x0008)
   4854 E2            [24]  830 	movx	a,@r0
   4855 F5 57         [12]  831 	mov	_tdm_show_rssi_sloc0_1_0,a
   4857 08            [12]  832 	inc	r0
   4858 E2            [24]  833 	movx	a,@r0
   4859 F5 58         [12]  834 	mov	(_tdm_show_rssi_sloc0_1_0 + 1),a
   485B 78 3E         [12]  835 	mov	r0,#(_errors + 0x0006)
   485D E2            [24]  836 	movx	a,@r0
   485E F5 5B         [12]  837 	mov	_tdm_show_rssi_sloc2_1_0,a
   4860 08            [12]  838 	inc	r0
   4861 E2            [24]  839 	movx	a,@r0
   4862 F5 5C         [12]  840 	mov	(_tdm_show_rssi_sloc2_1_0 + 1),a
   4864 78 3C         [12]  841 	mov	r0,#(_errors + 0x0004)
   4866 E2            [24]  842 	movx	a,@r0
   4867 F5 5D         [12]  843 	mov	_tdm_show_rssi_sloc3_1_0,a
   4869 08            [12]  844 	inc	r0
   486A E2            [24]  845 	movx	a,@r0
   486B F5 5E         [12]  846 	mov	(_tdm_show_rssi_sloc3_1_0 + 1),a
   486D 78 38         [12]  847 	mov	r0,#_errors
   486F E2            [24]  848 	movx	a,@r0
   4870 F5 5F         [12]  849 	mov	_tdm_show_rssi_sloc4_1_0,a
   4872 08            [12]  850 	inc	r0
   4873 E2            [24]  851 	movx	a,@r0
   4874 F5 60         [12]  852 	mov	(_tdm_show_rssi_sloc4_1_0 + 1),a
   4876 78 3A         [12]  853 	mov	r0,#(_errors + 0x0002)
   4878 E2            [24]  854 	movx	a,@r0
   4879 FA            [12]  855 	mov	r2,a
   487A 08            [12]  856 	inc	r0
   487B E2            [24]  857 	movx	a,@r0
   487C FB            [12]  858 	mov	r3,a
   487D C0 06         [24]  859 	push	ar6
   487F C0 07         [24]  860 	push	ar7
   4881 C0 04         [24]  861 	push	ar4
   4883 C0 05         [24]  862 	push	ar5
   4885 C0 59         [24]  863 	push	_tdm_show_rssi_sloc1_1_0
   4887 C0 5A         [24]  864 	push	(_tdm_show_rssi_sloc1_1_0 + 1)
   4889 C0 57         [24]  865 	push	_tdm_show_rssi_sloc0_1_0
   488B C0 58         [24]  866 	push	(_tdm_show_rssi_sloc0_1_0 + 1)
   488D C0 5B         [24]  867 	push	_tdm_show_rssi_sloc2_1_0
   488F C0 5C         [24]  868 	push	(_tdm_show_rssi_sloc2_1_0 + 1)
   4891 C0 5D         [24]  869 	push	_tdm_show_rssi_sloc3_1_0
   4893 C0 5E         [24]  870 	push	(_tdm_show_rssi_sloc3_1_0 + 1)
   4895 C0 5F         [24]  871 	push	_tdm_show_rssi_sloc4_1_0
   4897 C0 60         [24]  872 	push	(_tdm_show_rssi_sloc4_1_0 + 1)
   4899 C0 02         [24]  873 	push	ar2
   489B C0 03         [24]  874 	push	ar3
   489D 74 3F         [12]  875 	mov	a,#__str_1
   489F C0 E0         [24]  876 	push	acc
   48A1 74 CF         [12]  877 	mov	a,#(__str_1 >> 8)
   48A3 C0 E0         [24]  878 	push	acc
   48A5 74 80         [12]  879 	mov	a,#0x80
   48A7 C0 E0         [24]  880 	push	acc
   48A9 12 30 0B      [24]  881 	lcall	_printfl
   48AC E5 81         [12]  882 	mov	a,sp
   48AE 24 ED         [12]  883 	add	a,#0xed
   48B0 F5 81         [12]  884 	mov	sp,a
                            885 ;	radio/tdm.c:169: statistics.receive_count = 0;
   48B2 78 46         [12]  886 	mov	r0,#(_statistics + 0x0002)
   48B4 E4            [12]  887 	clr	a
   48B5 F2            [24]  888 	movx	@r0,a
   48B6 08            [12]  889 	inc	r0
   48B7 F2            [24]  890 	movx	@r0,a
   48B8 22            [24]  891 	ret
                            892 ;------------------------------------------------------------
                            893 ;Allocation info for local variables in function 'display_test_output'
                            894 ;------------------------------------------------------------
                            895 ;	radio/tdm.c:175: display_test_output(void)
                            896 ;	-----------------------------------------
                            897 ;	 function display_test_output
                            898 ;	-----------------------------------------
   48B9                     899 _display_test_output:
                            900 ;	radio/tdm.c:177: if (test_display & AT_TEST_RSSI) {
   48B9 78 D3         [12]  901 	mov	r0,#_test_display
   48BB E2            [24]  902 	movx	a,@r0
   48BC 54 01         [12]  903 	anl	a,#0x01
   48BE 60 03         [24]  904 	jz	00103$
                            905 ;	radio/tdm.c:178: tdm_show_rssi();
   48C0 02 47 E6      [24]  906 	ljmp	_tdm_show_rssi
   48C3                     907 00103$:
   48C3 22            [24]  908 	ret
                            909 ;------------------------------------------------------------
                            910 ;Allocation info for local variables in function 'flight_time_estimate'
                            911 ;------------------------------------------------------------
                            912 ;	radio/tdm.c:188: static uint16_t flight_time_estimate(__pdata uint8_t packet_len)
                            913 ;	-----------------------------------------
                            914 ;	 function flight_time_estimate
                            915 ;	-----------------------------------------
   48C4                     916 _flight_time_estimate:
   48C4 AF 82         [24]  917 	mov	r7,dpl
                            918 ;	radio/tdm.c:190: return packet_latency + (packet_len * ticks_per_byte);
   48C6 7E 00         [12]  919 	mov	r6,#0x00
   48C8 78 C4         [12]  920 	mov	r0,#_ticks_per_byte
   48CA 90 05 CE      [24]  921 	mov	dptr,#__mulint_PARM_2
   48CD E2            [24]  922 	movx	a,@r0
   48CE F0            [24]  923 	movx	@dptr,a
   48CF 08            [12]  924 	inc	r0
   48D0 E2            [24]  925 	movx	a,@r0
   48D1 A3            [24]  926 	inc	dptr
   48D2 F0            [24]  927 	movx	@dptr,a
   48D3 8F 82         [24]  928 	mov	dpl,r7
   48D5 8E 83         [24]  929 	mov	dph,r6
   48D7 12 60 D2      [24]  930 	lcall	__mulint
   48DA AE 82         [24]  931 	mov	r6,dpl
   48DC AF 83         [24]  932 	mov	r7,dph
   48DE 78 C2         [12]  933 	mov	r0,#_packet_latency
   48E0 E2            [24]  934 	movx	a,@r0
   48E1 2E            [12]  935 	add	a,r6
   48E2 FE            [12]  936 	mov	r6,a
   48E3 08            [12]  937 	inc	r0
   48E4 E2            [24]  938 	movx	a,@r0
   48E5 3F            [12]  939 	addc	a,r7
   48E6 8E 82         [24]  940 	mov	dpl,r6
   48E8 F5 83         [12]  941 	mov	dph,a
   48EA 22            [24]  942 	ret
                            943 ;------------------------------------------------------------
                            944 ;Allocation info for local variables in function 'sync_tx_windows'
                            945 ;------------------------------------------------------------
                            946 ;old_state                 Allocated with name '_sync_tx_windows_old_state_1_157'
                            947 ;------------------------------------------------------------
                            948 ;	radio/tdm.c:204: sync_tx_windows(__pdata uint8_t packet_length)
                            949 ;	-----------------------------------------
                            950 ;	 function sync_tx_windows
                            951 ;	-----------------------------------------
   48EB                     952 _sync_tx_windows:
   48EB AF 82         [24]  953 	mov	r7,dpl
                            954 ;	radio/tdm.c:206: __data enum tdm_state old_state = tdm_state;
   48ED 78 BA         [12]  955 	mov	r0,#_tdm_state
   48EF E2            [24]  956 	movx	a,@r0
   48F0 F5 61         [12]  957 	mov	_sync_tx_windows_old_state_1_157,a
                            958 ;	radio/tdm.c:207: __pdata uint16_t old_remaining = tdm_state_remaining;
   48F2 78 BB         [12]  959 	mov	r0,#_tdm_state_remaining
   48F4 E2            [24]  960 	movx	a,@r0
   48F5 FC            [12]  961 	mov	r4,a
   48F6 08            [12]  962 	inc	r0
   48F7 E2            [24]  963 	movx	a,@r0
   48F8 FD            [12]  964 	mov	r5,a
                            965 ;	radio/tdm.c:209: if (trailer.bonus) {
   48F9 78 D5         [12]  966 	mov	r0,#(_trailer + 0x0001)
   48FB E2            [24]  967 	movx	a,@r0
   48FC 30 E6 46      [24]  968 	jnb	acc.6,00109$
                            969 ;	radio/tdm.c:212: if (old_state == TDM_SILENCE1) {
   48FF 74 01         [12]  970 	mov	a,#0x01
   4901 B5 61 10      [24]  971 	cjne	a,_sync_tx_windows_old_state_1_157,00106$
                            972 ;	radio/tdm.c:218: tdm_state_remaining = silence_period;
   4904 78 C0         [12]  973 	mov	r0,#_silence_period
   4906 E2            [24]  974 	movx	a,@r0
   4907 FA            [12]  975 	mov	r2,a
   4908 08            [12]  976 	inc	r0
   4909 E2            [24]  977 	movx	a,@r0
   490A FB            [12]  978 	mov	r3,a
   490B 78 BB         [12]  979 	mov	r0,#_tdm_state_remaining
   490D EA            [12]  980 	mov	a,r2
   490E F2            [24]  981 	movx	@r0,a
   490F 08            [12]  982 	inc	r0
   4910 EB            [12]  983 	mov	a,r3
   4911 F2            [24]  984 	movx	@r0,a
   4912 80 46         [24]  985 	sjmp	00110$
   4914                     986 00106$:
                            987 ;	radio/tdm.c:219: } else if (old_state == TDM_RECEIVE || old_state == TDM_SILENCE2) {
   4914 74 02         [12]  988 	mov	a,#0x02
   4916 B5 61 02      [24]  989 	cjne	a,_sync_tx_windows_old_state_1_157,00151$
   4919 80 05         [24]  990 	sjmp	00101$
   491B                     991 00151$:
   491B 74 03         [12]  992 	mov	a,#0x03
   491D B5 61 0F      [24]  993 	cjne	a,_sync_tx_windows_old_state_1_157,00102$
   4920                     994 00101$:
                            995 ;	radio/tdm.c:224: tdm_state = TDM_SILENCE2;
   4920 78 BA         [12]  996 	mov	r0,#_tdm_state
   4922 74 03         [12]  997 	mov	a,#0x03
   4924 F2            [24]  998 	movx	@r0,a
                            999 ;	radio/tdm.c:225: tdm_state_remaining = 1;
   4925 78 BB         [12] 1000 	mov	r0,#_tdm_state_remaining
   4927 74 01         [12] 1001 	mov	a,#0x01
   4929 F2            [24] 1002 	movx	@r0,a
   492A 08            [12] 1003 	inc	r0
   492B E4            [12] 1004 	clr	a
   492C F2            [24] 1005 	movx	@r0,a
   492D 80 2B         [24] 1006 	sjmp	00110$
   492F                    1007 00102$:
                           1008 ;	radio/tdm.c:227: tdm_state = TDM_TRANSMIT;
   492F 78 BA         [12] 1009 	mov	r0,#_tdm_state
   4931 E4            [12] 1010 	clr	a
   4932 F2            [24] 1011 	movx	@r0,a
                           1012 ;	radio/tdm.c:228: tdm_state_remaining = trailer.window;
   4933 78 D4         [12] 1013 	mov	r0,#_trailer
   4935 E2            [24] 1014 	movx	a,@r0
   4936 FA            [12] 1015 	mov	r2,a
   4937 08            [12] 1016 	inc	r0
   4938 E2            [24] 1017 	movx	a,@r0
   4939 54 1F         [12] 1018 	anl	a,#0x1F
   493B FB            [12] 1019 	mov	r3,a
   493C 78 BB         [12] 1020 	mov	r0,#_tdm_state_remaining
   493E EA            [12] 1021 	mov	a,r2
   493F F2            [24] 1022 	movx	@r0,a
   4940 08            [12] 1023 	inc	r0
   4941 EB            [12] 1024 	mov	a,r3
   4942 F2            [24] 1025 	movx	@r0,a
   4943 80 15         [24] 1026 	sjmp	00110$
   4945                    1027 00109$:
                           1028 ;	radio/tdm.c:233: tdm_state = TDM_RECEIVE;
   4945 78 BA         [12] 1029 	mov	r0,#_tdm_state
   4947 74 02         [12] 1030 	mov	a,#0x02
   4949 F2            [24] 1031 	movx	@r0,a
                           1032 ;	radio/tdm.c:234: tdm_state_remaining = trailer.window;
   494A 78 D4         [12] 1033 	mov	r0,#_trailer
   494C E2            [24] 1034 	movx	a,@r0
   494D FA            [12] 1035 	mov	r2,a
   494E 08            [12] 1036 	inc	r0
   494F E2            [24] 1037 	movx	a,@r0
   4950 54 1F         [12] 1038 	anl	a,#0x1F
   4952 FB            [12] 1039 	mov	r3,a
   4953 78 BB         [12] 1040 	mov	r0,#_tdm_state_remaining
   4955 EA            [12] 1041 	mov	a,r2
   4956 F2            [24] 1042 	movx	@r0,a
   4957 08            [12] 1043 	inc	r0
   4958 EB            [12] 1044 	mov	a,r3
   4959 F2            [24] 1045 	movx	@r0,a
   495A                    1046 00110$:
                           1047 ;	radio/tdm.c:239: bonus_transmit = (tdm_state == TDM_RECEIVE && packet_length==0);
   495A 78 BA         [12] 1048 	mov	r0,#_tdm_state
   495C E2            [24] 1049 	movx	a,@r0
   495D B4 02 08      [24] 1050 	cjne	a,#0x02,00121$
   4960 EF            [12] 1051 	mov	a,r7
   4961 B4 01 00      [24] 1052 	cjne	a,#0x01,00156$
   4964                    1053 00156$:
   4964 92 2F         [24] 1054 	mov	_sync_tx_windows_sloc0_1_0,c
   4966 40 04         [24] 1055 	jc	00122$
   4968                    1056 00121$:
   4968 C2 2F         [12] 1057 	clr	_sync_tx_windows_sloc0_1_0
   496A 80 02         [24] 1058 	sjmp	00123$
   496C                    1059 00122$:
   496C D2 2F         [12] 1060 	setb	_sync_tx_windows_sloc0_1_0
   496E                    1061 00123$:
   496E A2 2F         [12] 1062 	mov	c,_sync_tx_windows_sloc0_1_0
   4970 92 28         [24] 1063 	mov	_bonus_transmit,c
                           1064 ;	radio/tdm.c:242: if (tdm_state != TDM_TRANSMIT) {
   4972 78 BA         [12] 1065 	mov	r0,#_tdm_state
   4974 E2            [24] 1066 	movx	a,@r0
   4975 60 02         [24] 1067 	jz	00112$
                           1068 ;	radio/tdm.c:243: transmit_yield = 0;
   4977 C2 29         [12] 1069 	clr	_transmit_yield
   4979                    1070 00112$:
                           1071 ;	radio/tdm.c:246: if (at_testmode & AT_TEST_TDM) {
   4979 78 13         [12] 1072 	mov	r0,#_at_testmode
   497B E2            [24] 1073 	movx	a,@r0
   497C 54 02         [12] 1074 	anl	a,#0x02
   497E 70 01         [24] 1075 	jnz	00159$
   4980 22            [24] 1076 	ret
   4981                    1077 00159$:
                           1078 ;	radio/tdm.c:248: delta = old_remaining - tdm_state_remaining;
   4981 78 BB         [12] 1079 	mov	r0,#_tdm_state_remaining
   4983 79 E7         [12] 1080 	mov	r1,#_sync_tx_windows_delta_2_164
   4985 D3            [12] 1081 	setb	c
   4986 E2            [24] 1082 	movx	a,@r0
   4987 9C            [12] 1083 	subb	a,r4
   4988 F4            [12] 1084 	cpl	a
   4989 B3            [12] 1085 	cpl	c
   498A F3            [24] 1086 	movx	@r1,a
   498B B3            [12] 1087 	cpl	c
   498C 08            [12] 1088 	inc	r0
   498D E2            [24] 1089 	movx	a,@r0
   498E 9D            [12] 1090 	subb	a,r5
   498F F4            [12] 1091 	cpl	a
   4990 09            [12] 1092 	inc	r1
   4991 F3            [24] 1093 	movx	@r1,a
                           1094 ;	radio/tdm.c:249: if (old_state != tdm_state ||
   4992 78 BA         [12] 1095 	mov	r0,#_tdm_state
   4994 E2            [24] 1096 	movx	a,@r0
   4995 B5 61 6E      [24] 1097 	cjne	a,_sync_tx_windows_old_state_1_157,00113$
                           1098 ;	radio/tdm.c:250: delta > (int16_t)packet_latency/2 ||
   4998 C0 07         [24] 1099 	push	ar7
   499A 78 C2         [12] 1100 	mov	r0,#_packet_latency
   499C E2            [24] 1101 	movx	a,@r0
   499D FA            [12] 1102 	mov	r2,a
   499E 08            [12] 1103 	inc	r0
   499F E2            [24] 1104 	movx	a,@r0
   49A0 FB            [12] 1105 	mov	r3,a
   49A1 90 05 EB      [24] 1106 	mov	dptr,#__divsint_PARM_2
   49A4 74 02         [12] 1107 	mov	a,#0x02
   49A6 F0            [24] 1108 	movx	@dptr,a
   49A7 E4            [12] 1109 	clr	a
   49A8 A3            [24] 1110 	inc	dptr
   49A9 F0            [24] 1111 	movx	@dptr,a
   49AA 8A 82         [24] 1112 	mov	dpl,r2
   49AC 8B 83         [24] 1113 	mov	dph,r3
   49AE C0 03         [24] 1114 	push	ar3
   49B0 C0 02         [24] 1115 	push	ar2
   49B2 12 63 DE      [24] 1116 	lcall	__divsint
   49B5 AE 82         [24] 1117 	mov	r6,dpl
   49B7 AF 83         [24] 1118 	mov	r7,dph
   49B9 D0 02         [24] 1119 	pop	ar2
   49BB D0 03         [24] 1120 	pop	ar3
   49BD 78 E7         [12] 1121 	mov	r0,#_sync_tx_windows_delta_2_164
   49BF C3            [12] 1122 	clr	c
   49C0 E2            [24] 1123 	movx	a,@r0
   49C1 F5 F0         [12] 1124 	mov	b,a
   49C3 EE            [12] 1125 	mov	a,r6
   49C4 95 F0         [12] 1126 	subb	a,b
   49C6 08            [12] 1127 	inc	r0
   49C7 E2            [24] 1128 	movx	a,@r0
   49C8 F5 F0         [12] 1129 	mov	b,a
   49CA EF            [12] 1130 	mov	a,r7
   49CB 64 80         [12] 1131 	xrl	a,#0x80
   49CD 63 F0 80      [24] 1132 	xrl	b,#0x80
   49D0 95 F0         [12] 1133 	subb	a,b
   49D2 D0 07         [24] 1134 	pop	ar7
                           1135 ;	radio/tdm.c:251: delta < -(int16_t)packet_latency/2) {
   49D4 40 30         [24] 1136 	jc	00113$
   49D6 E4            [12] 1137 	clr	a
   49D7 9A            [12] 1138 	subb	a,r2
   49D8 FA            [12] 1139 	mov	r2,a
   49D9 E4            [12] 1140 	clr	a
   49DA 9B            [12] 1141 	subb	a,r3
   49DB FB            [12] 1142 	mov	r3,a
   49DC 90 05 EB      [24] 1143 	mov	dptr,#__divsint_PARM_2
   49DF 74 02         [12] 1144 	mov	a,#0x02
   49E1 F0            [24] 1145 	movx	@dptr,a
   49E2 E4            [12] 1146 	clr	a
   49E3 A3            [24] 1147 	inc	dptr
   49E4 F0            [24] 1148 	movx	@dptr,a
   49E5 8A 82         [24] 1149 	mov	dpl,r2
   49E7 8B 83         [24] 1150 	mov	dph,r3
   49E9 C0 07         [24] 1151 	push	ar7
   49EB 12 63 DE      [24] 1152 	lcall	__divsint
   49EE AB 82         [24] 1153 	mov	r3,dpl
   49F0 AE 83         [24] 1154 	mov	r6,dph
   49F2 D0 07         [24] 1155 	pop	ar7
   49F4 78 E7         [12] 1156 	mov	r0,#_sync_tx_windows_delta_2_164
   49F6 C3            [12] 1157 	clr	c
   49F7 E2            [24] 1158 	movx	a,@r0
   49F8 9B            [12] 1159 	subb	a,r3
   49F9 08            [12] 1160 	inc	r0
   49FA E2            [24] 1161 	movx	a,@r0
   49FB 64 80         [12] 1162 	xrl	a,#0x80
   49FD 8E F0         [24] 1163 	mov	b,r6
   49FF 63 F0 80      [24] 1164 	xrl	b,#0x80
   4A02 95 F0         [12] 1165 	subb	a,b
   4A04 50 4B         [24] 1166 	jnc	00119$
   4A06                    1167 00113$:
                           1168 ;	radio/tdm.c:252: printf("TDM: %u/%u len=%u ",
   4A06 7E 00         [12] 1169 	mov	r6,#0x00
   4A08 78 BA         [12] 1170 	mov	r0,#_tdm_state
   4A0A E2            [24] 1171 	movx	a,@r0
   4A0B FA            [12] 1172 	mov	r2,a
   4A0C 7B 00         [12] 1173 	mov	r3,#0x00
   4A0E AC 61         [24] 1174 	mov	r4,_sync_tx_windows_old_state_1_157
   4A10 7D 00         [12] 1175 	mov	r5,#0x00
   4A12 C0 07         [24] 1176 	push	ar7
   4A14 C0 06         [24] 1177 	push	ar6
   4A16 C0 02         [24] 1178 	push	ar2
   4A18 C0 03         [24] 1179 	push	ar3
   4A1A C0 04         [24] 1180 	push	ar4
   4A1C C0 05         [24] 1181 	push	ar5
   4A1E 74 76         [12] 1182 	mov	a,#__str_2
   4A20 C0 E0         [24] 1183 	push	acc
   4A22 74 CF         [12] 1184 	mov	a,#(__str_2 >> 8)
   4A24 C0 E0         [24] 1185 	push	acc
   4A26 74 80         [12] 1186 	mov	a,#0x80
   4A28 C0 E0         [24] 1187 	push	acc
   4A2A 12 30 0B      [24] 1188 	lcall	_printfl
   4A2D E5 81         [12] 1189 	mov	a,sp
   4A2F 24 F7         [12] 1190 	add	a,#0xf7
   4A31 F5 81         [12] 1191 	mov	sp,a
                           1192 ;	radio/tdm.c:256: printf(" delta: %d\n",
   4A33 78 E7         [12] 1193 	mov	r0,#_sync_tx_windows_delta_2_164
   4A35 E2            [24] 1194 	movx	a,@r0
   4A36 C0 E0         [24] 1195 	push	acc
   4A38 08            [12] 1196 	inc	r0
   4A39 E2            [24] 1197 	movx	a,@r0
   4A3A C0 E0         [24] 1198 	push	acc
   4A3C 74 89         [12] 1199 	mov	a,#__str_3
   4A3E C0 E0         [24] 1200 	push	acc
   4A40 74 CF         [12] 1201 	mov	a,#(__str_3 >> 8)
   4A42 C0 E0         [24] 1202 	push	acc
   4A44 74 80         [12] 1203 	mov	a,#0x80
   4A46 C0 E0         [24] 1204 	push	acc
   4A48 12 30 0B      [24] 1205 	lcall	_printfl
   4A4B E5 81         [12] 1206 	mov	a,sp
   4A4D 24 FB         [12] 1207 	add	a,#0xfb
   4A4F F5 81         [12] 1208 	mov	sp,a
   4A51                    1209 00119$:
   4A51 22            [24] 1210 	ret
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
   4A52                    1222 _tdm_state_update:
   4A52 AE 82         [24] 1223 	mov	r6,dpl
   4A54 AF 83         [24] 1224 	mov	r7,dph
                           1225 ;	radio/tdm.c:269: if (tdelta > transmit_wait) {
   4A56 78 C6         [12] 1226 	mov	r0,#_transmit_wait
   4A58 C3            [12] 1227 	clr	c
   4A59 E2            [24] 1228 	movx	a,@r0
   4A5A 9E            [12] 1229 	subb	a,r6
   4A5B 08            [12] 1230 	inc	r0
   4A5C E2            [24] 1231 	movx	a,@r0
   4A5D 9F            [12] 1232 	subb	a,r7
   4A5E 50 08         [24] 1233 	jnc	00102$
                           1234 ;	radio/tdm.c:270: transmit_wait = 0;
   4A60 78 C6         [12] 1235 	mov	r0,#_transmit_wait
   4A62 E4            [12] 1236 	clr	a
   4A63 F2            [24] 1237 	movx	@r0,a
   4A64 08            [12] 1238 	inc	r0
   4A65 F2            [24] 1239 	movx	@r0,a
   4A66 80 0A         [24] 1240 	sjmp	00116$
   4A68                    1241 00102$:
                           1242 ;	radio/tdm.c:272: transmit_wait -= tdelta;
   4A68 78 C6         [12] 1243 	mov	r0,#_transmit_wait
   4A6A E2            [24] 1244 	movx	a,@r0
   4A6B C3            [12] 1245 	clr	c
   4A6C 9E            [12] 1246 	subb	a,r6
   4A6D F2            [24] 1247 	movx	@r0,a
   4A6E 08            [12] 1248 	inc	r0
   4A6F E2            [24] 1249 	movx	a,@r0
   4A70 9F            [12] 1250 	subb	a,r7
   4A71 F2            [24] 1251 	movx	@r0,a
                           1252 ;	radio/tdm.c:276: while (tdelta >= tdm_state_remaining) {
   4A72                    1253 00116$:
   4A72 78 BB         [12] 1254 	mov	r0,#_tdm_state_remaining
   4A74 C3            [12] 1255 	clr	c
   4A75 E2            [24] 1256 	movx	a,@r0
   4A76 F5 F0         [12] 1257 	mov	b,a
   4A78 EE            [12] 1258 	mov	a,r6
   4A79 95 F0         [12] 1259 	subb	a,b
   4A7B 08            [12] 1260 	inc	r0
   4A7C E2            [24] 1261 	movx	a,@r0
   4A7D F5 F0         [12] 1262 	mov	b,a
   4A7F EF            [12] 1263 	mov	a,r7
   4A80 95 F0         [12] 1264 	subb	a,b
   4A82 50 03         [24] 1265 	jnc	00146$
   4A84 02 4C B9      [24] 1266 	ljmp	00118$
   4A87                    1267 00146$:
                           1268 ;	radio/tdm.c:278: tdm_state = (tdm_state+1) % 4;
   4A87 78 BA         [12] 1269 	mov	r0,#_tdm_state
   4A89 E2            [24] 1270 	movx	a,@r0
   4A8A FC            [12] 1271 	mov	r4,a
   4A8B 7D 00         [12] 1272 	mov	r5,#0x00
   4A8D 0C            [12] 1273 	inc	r4
   4A8E BC 00 01      [24] 1274 	cjne	r4,#0x00,00147$
   4A91 0D            [12] 1275 	inc	r5
   4A92                    1276 00147$:
   4A92 90 05 D6      [24] 1277 	mov	dptr,#__modsint_PARM_2
   4A95 74 04         [12] 1278 	mov	a,#0x04
   4A97 F0            [24] 1279 	movx	@dptr,a
   4A98 E4            [12] 1280 	clr	a
   4A99 A3            [24] 1281 	inc	dptr
   4A9A F0            [24] 1282 	movx	@dptr,a
   4A9B 8C 82         [24] 1283 	mov	dpl,r4
   4A9D 8D 83         [24] 1284 	mov	dph,r5
   4A9F C0 07         [24] 1285 	push	ar7
   4AA1 C0 06         [24] 1286 	push	ar6
   4AA3 12 61 86      [24] 1287 	lcall	__modsint
   4AA6 AC 82         [24] 1288 	mov	r4,dpl
   4AA8 AD 83         [24] 1289 	mov	r5,dph
   4AAA D0 06         [24] 1290 	pop	ar6
   4AAC D0 07         [24] 1291 	pop	ar7
   4AAE 78 BA         [12] 1292 	mov	r0,#_tdm_state
   4AB0 EC            [12] 1293 	mov	a,r4
   4AB1 F2            [24] 1294 	movx	@r0,a
                           1295 ;	radio/tdm.c:281: tdelta -= tdm_state_remaining;
   4AB2 78 BB         [12] 1296 	mov	r0,#_tdm_state_remaining
   4AB4 D3            [12] 1297 	setb	c
   4AB5 E2            [24] 1298 	movx	a,@r0
   4AB6 9E            [12] 1299 	subb	a,r6
   4AB7 F4            [12] 1300 	cpl	a
   4AB8 B3            [12] 1301 	cpl	c
   4AB9 FE            [12] 1302 	mov	r6,a
   4ABA B3            [12] 1303 	cpl	c
   4ABB 08            [12] 1304 	inc	r0
   4ABC E2            [24] 1305 	movx	a,@r0
   4ABD 9F            [12] 1306 	subb	a,r7
   4ABE F4            [12] 1307 	cpl	a
   4ABF FF            [12] 1308 	mov	r7,a
                           1309 ;	radio/tdm.c:283: if (tdm_state == TDM_TRANSMIT || tdm_state == TDM_RECEIVE) {
   4AC0 78 BA         [12] 1310 	mov	r0,#_tdm_state
   4AC2 E2            [24] 1311 	movx	a,@r0
   4AC3 60 06         [24] 1312 	jz	00104$
   4AC5 78 BA         [12] 1313 	mov	r0,#_tdm_state
   4AC7 E2            [24] 1314 	movx	a,@r0
   4AC8 B4 02 10      [24] 1315 	cjne	a,#0x02,00105$
   4ACB                    1316 00104$:
                           1317 ;	radio/tdm.c:284: tdm_state_remaining = tx_window_width;
   4ACB 78 BD         [12] 1318 	mov	r0,#_tx_window_width
   4ACD E2            [24] 1319 	movx	a,@r0
   4ACE FC            [12] 1320 	mov	r4,a
   4ACF 08            [12] 1321 	inc	r0
   4AD0 E2            [24] 1322 	movx	a,@r0
   4AD1 FD            [12] 1323 	mov	r5,a
   4AD2 78 BB         [12] 1324 	mov	r0,#_tdm_state_remaining
   4AD4 EC            [12] 1325 	mov	a,r4
   4AD5 F2            [24] 1326 	movx	@r0,a
   4AD6 08            [12] 1327 	inc	r0
   4AD7 ED            [12] 1328 	mov	a,r5
   4AD8 F2            [24] 1329 	movx	@r0,a
   4AD9 80 0E         [24] 1330 	sjmp	00106$
   4ADB                    1331 00105$:
                           1332 ;	radio/tdm.c:286: tdm_state_remaining = silence_period;
   4ADB 78 C0         [12] 1333 	mov	r0,#_silence_period
   4ADD E2            [24] 1334 	movx	a,@r0
   4ADE FC            [12] 1335 	mov	r4,a
   4ADF 08            [12] 1336 	inc	r0
   4AE0 E2            [24] 1337 	movx	a,@r0
   4AE1 FD            [12] 1338 	mov	r5,a
   4AE2 78 BB         [12] 1339 	mov	r0,#_tdm_state_remaining
   4AE4 EC            [12] 1340 	mov	a,r4
   4AE5 F2            [24] 1341 	movx	@r0,a
   4AE6 08            [12] 1342 	inc	r0
   4AE7 ED            [12] 1343 	mov	a,r5
   4AE8 F2            [24] 1344 	movx	@r0,a
   4AE9                    1345 00106$:
                           1346 ;	radio/tdm.c:292: if (tdm_state == TDM_TRANSMIT || tdm_state == TDM_SILENCE1) {
   4AE9 78 BA         [12] 1347 	mov	r0,#_tdm_state
   4AEB E2            [24] 1348 	movx	a,@r0
   4AEC 60 06         [24] 1349 	jz	00110$
   4AEE 78 BA         [12] 1350 	mov	r0,#_tdm_state
   4AF0 E2            [24] 1351 	movx	a,@r0
   4AF1 B4 01 26      [24] 1352 	cjne	a,#0x01,00111$
   4AF4                    1353 00110$:
                           1354 ;	radio/tdm.c:293: fhop_window_change();
   4AF4 C0 07         [24] 1355 	push	ar7
   4AF6 C0 06         [24] 1356 	push	ar6
   4AF8 12 0D 33      [24] 1357 	lcall	_fhop_window_change
                           1358 ;	radio/tdm.c:294: radio_receiver_on();
   4AFB 12 36 99      [24] 1359 	lcall	_radio_receiver_on
   4AFE D0 06         [24] 1360 	pop	ar6
   4B00 D0 07         [24] 1361 	pop	ar7
                           1362 ;	radio/tdm.c:296: if (num_fh_channels > 1) {
   4B02 78 1C         [12] 1363 	mov	r0,#_num_fh_channels
   4B04 C3            [12] 1364 	clr	c
   4B05 E2            [24] 1365 	movx	a,@r0
   4B06 F5 F0         [12] 1366 	mov	b,a
   4B08 74 01         [12] 1367 	mov	a,#0x01
   4B0A 95 F0         [12] 1368 	subb	a,b
   4B0C 50 0C         [24] 1369 	jnc	00111$
                           1370 ;	radio/tdm.c:298: lbt_listen_time = 0;
   4B0E 78 CD         [12] 1371 	mov	r0,#_lbt_listen_time
   4B10 E4            [12] 1372 	clr	a
   4B11 F2            [24] 1373 	movx	@r0,a
   4B12 08            [12] 1374 	inc	r0
   4B13 F2            [24] 1375 	movx	@r0,a
                           1376 ;	radio/tdm.c:299: lbt_rand = 0;
   4B14 78 D1         [12] 1377 	mov	r0,#_lbt_rand
   4B16 E4            [12] 1378 	clr	a
   4B17 F2            [24] 1379 	movx	@r0,a
   4B18 08            [12] 1380 	inc	r0
   4B19 F2            [24] 1381 	movx	@r0,a
   4B1A                    1382 00111$:
                           1383 ;	radio/tdm.c:303: if (tdm_state == TDM_TRANSMIT && (duty_cycle - duty_cycle_offset) != 100) {
   4B1A 78 BA         [12] 1384 	mov	r0,#_tdm_state
   4B1C E2            [24] 1385 	movx	a,@r0
   4B1D 60 03         [24] 1386 	jz	00155$
   4B1F 02 4C AC      [24] 1387 	ljmp	00114$
   4B22                    1388 00155$:
   4B22 C0 06         [24] 1389 	push	ar6
   4B24 C0 07         [24] 1390 	push	ar7
   4B26 78 C8         [12] 1391 	mov	r0,#_duty_cycle
   4B28 E2            [24] 1392 	movx	a,@r0
   4B29 FC            [12] 1393 	mov	r4,a
   4B2A 7D 00         [12] 1394 	mov	r5,#0x00
   4B2C 78 C9         [12] 1395 	mov	r0,#_duty_cycle_offset
   4B2E E2            [24] 1396 	movx	a,@r0
   4B2F F5 62         [12] 1397 	mov	_tdm_state_update_sloc0_1_0,a
   4B31 75 63 00      [24] 1398 	mov	(_tdm_state_update_sloc0_1_0 + 1),#0x00
   4B34 EC            [12] 1399 	mov	a,r4
   4B35 C3            [12] 1400 	clr	c
   4B36 95 62         [12] 1401 	subb	a,_tdm_state_update_sloc0_1_0
   4B38 FE            [12] 1402 	mov	r6,a
   4B39 ED            [12] 1403 	mov	a,r5
   4B3A 95 63         [12] 1404 	subb	a,(_tdm_state_update_sloc0_1_0 + 1)
   4B3C FF            [12] 1405 	mov	r7,a
   4B3D BE 64 0A      [24] 1406 	cjne	r6,#0x64,00156$
   4B40 BF 00 07      [24] 1407 	cjne	r7,#0x00,00156$
   4B43 D0 07         [24] 1408 	pop	ar7
   4B45 D0 06         [24] 1409 	pop	ar6
   4B47 02 4C AC      [24] 1410 	ljmp	00114$
   4B4A                    1411 00156$:
   4B4A D0 07         [24] 1412 	pop	ar7
   4B4C D0 06         [24] 1413 	pop	ar6
                           1414 ;	radio/tdm.c:305: average_duty_cycle = (0.95*average_duty_cycle) + (0.05*(100.0*transmitted_ticks)/(2*(silence_period+tx_window_width)));
   4B4E C0 06         [24] 1415 	push	ar6
   4B50 C0 07         [24] 1416 	push	ar7
   4B52 C0 07         [24] 1417 	push	ar7
   4B54 C0 06         [24] 1418 	push	ar6
   4B56 C0 05         [24] 1419 	push	ar5
   4B58 C0 04         [24] 1420 	push	ar4
   4B5A C0 53         [24] 1421 	push	_average_duty_cycle
   4B5C C0 54         [24] 1422 	push	(_average_duty_cycle + 1)
   4B5E C0 55         [24] 1423 	push	(_average_duty_cycle + 2)
   4B60 C0 56         [24] 1424 	push	(_average_duty_cycle + 3)
   4B62 90 33 33      [24] 1425 	mov	dptr,#0x3333
   4B65 75 F0 73      [24] 1426 	mov	b,#0x73
   4B68 74 3F         [12] 1427 	mov	a,#0x3F
   4B6A 12 5D 44      [24] 1428 	lcall	___fsmul
   4B6D 85 82 64      [24] 1429 	mov	_tdm_state_update_sloc1_1_0,dpl
   4B70 85 83 65      [24] 1430 	mov	(_tdm_state_update_sloc1_1_0 + 1),dph
   4B73 85 F0 66      [24] 1431 	mov	(_tdm_state_update_sloc1_1_0 + 2),b
   4B76 F5 67         [12] 1432 	mov	(_tdm_state_update_sloc1_1_0 + 3),a
   4B78 E5 81         [12] 1433 	mov	a,sp
   4B7A 24 FC         [12] 1434 	add	a,#0xfc
   4B7C F5 81         [12] 1435 	mov	sp,a
   4B7E D0 04         [24] 1436 	pop	ar4
   4B80 D0 05         [24] 1437 	pop	ar5
   4B82 D0 06         [24] 1438 	pop	ar6
   4B84 D0 07         [24] 1439 	pop	ar7
   4B86 78 CA         [12] 1440 	mov	r0,#_transmitted_ticks
   4B88 E2            [24] 1441 	movx	a,@r0
   4B89 F5 82         [12] 1442 	mov	dpl,a
   4B8B 08            [12] 1443 	inc	r0
   4B8C E2            [24] 1444 	movx	a,@r0
   4B8D F5 83         [12] 1445 	mov	dph,a
   4B8F C0 05         [24] 1446 	push	ar5
   4B91 C0 04         [24] 1447 	push	ar4
   4B93 12 65 4B      [24] 1448 	lcall	___uint2fs
   4B96 AA 82         [24] 1449 	mov	r2,dpl
   4B98 AB 83         [24] 1450 	mov	r3,dph
   4B9A AE F0         [24] 1451 	mov	r6,b
   4B9C FF            [12] 1452 	mov	r7,a
   4B9D D0 04         [24] 1453 	pop	ar4
   4B9F D0 05         [24] 1454 	pop	ar5
   4BA1 C0 07         [24] 1455 	push	ar7
   4BA3 C0 06         [24] 1456 	push	ar6
   4BA5 C0 05         [24] 1457 	push	ar5
   4BA7 C0 04         [24] 1458 	push	ar4
   4BA9 C0 02         [24] 1459 	push	ar2
   4BAB C0 03         [24] 1460 	push	ar3
   4BAD C0 06         [24] 1461 	push	ar6
   4BAF C0 07         [24] 1462 	push	ar7
   4BB1 90 00 00      [24] 1463 	mov	dptr,#0x0000
   4BB4 75 F0 A0      [24] 1464 	mov	b,#0xA0
   4BB7 74 40         [12] 1465 	mov	a,#0x40
   4BB9 12 5D 44      [24] 1466 	lcall	___fsmul
   4BBC 85 82 68      [24] 1467 	mov	_tdm_state_update_sloc2_1_0,dpl
   4BBF 85 83 69      [24] 1468 	mov	(_tdm_state_update_sloc2_1_0 + 1),dph
   4BC2 85 F0 6A      [24] 1469 	mov	(_tdm_state_update_sloc2_1_0 + 2),b
   4BC5 F5 6B         [12] 1470 	mov	(_tdm_state_update_sloc2_1_0 + 3),a
   4BC7 E5 81         [12] 1471 	mov	a,sp
   4BC9 24 FC         [12] 1472 	add	a,#0xfc
   4BCB F5 81         [12] 1473 	mov	sp,a
   4BCD D0 04         [24] 1474 	pop	ar4
   4BCF D0 05         [24] 1475 	pop	ar5
   4BD1 D0 06         [24] 1476 	pop	ar6
   4BD3 D0 07         [24] 1477 	pop	ar7
   4BD5 78 C0         [12] 1478 	mov	r0,#_silence_period
   4BD7 79 BD         [12] 1479 	mov	r1,#_tx_window_width
   4BD9 E3            [24] 1480 	movx	a,@r1
   4BDA C5 F0         [12] 1481 	xch	a,b
   4BDC E2            [24] 1482 	movx	a,@r0
   4BDD 25 F0         [12] 1483 	add	a,b
   4BDF FE            [12] 1484 	mov	r6,a
   4BE0 09            [12] 1485 	inc	r1
   4BE1 E3            [24] 1486 	movx	a,@r1
   4BE2 C5 F0         [12] 1487 	xch	a,b
   4BE4 08            [12] 1488 	inc	r0
   4BE5 E2            [24] 1489 	movx	a,@r0
   4BE6 35 F0         [12] 1490 	addc	a,b
   4BE8 CE            [12] 1491 	xch	a,r6
   4BE9 25 E0         [12] 1492 	add	a,acc
   4BEB CE            [12] 1493 	xch	a,r6
   4BEC 33            [12] 1494 	rlc	a
   4BED FF            [12] 1495 	mov	r7,a
   4BEE 8E 82         [24] 1496 	mov	dpl,r6
   4BF0 8F 83         [24] 1497 	mov	dph,r7
   4BF2 C0 05         [24] 1498 	push	ar5
   4BF4 C0 04         [24] 1499 	push	ar4
   4BF6 12 65 4B      [24] 1500 	lcall	___uint2fs
   4BF9 AA 82         [24] 1501 	mov	r2,dpl
   4BFB AB 83         [24] 1502 	mov	r3,dph
   4BFD AE F0         [24] 1503 	mov	r6,b
   4BFF FF            [12] 1504 	mov	r7,a
   4C00 C0 02         [24] 1505 	push	ar2
   4C02 C0 03         [24] 1506 	push	ar3
   4C04 C0 06         [24] 1507 	push	ar6
   4C06 C0 07         [24] 1508 	push	ar7
   4C08 85 68 82      [24] 1509 	mov	dpl,_tdm_state_update_sloc2_1_0
   4C0B 85 69 83      [24] 1510 	mov	dph,(_tdm_state_update_sloc2_1_0 + 1)
   4C0E 85 6A F0      [24] 1511 	mov	b,(_tdm_state_update_sloc2_1_0 + 2)
   4C11 E5 6B         [12] 1512 	mov	a,(_tdm_state_update_sloc2_1_0 + 3)
   4C13 12 66 6F      [24] 1513 	lcall	___fsdiv
   4C16 AA 82         [24] 1514 	mov	r2,dpl
   4C18 AB 83         [24] 1515 	mov	r3,dph
   4C1A AE F0         [24] 1516 	mov	r6,b
   4C1C FF            [12] 1517 	mov	r7,a
   4C1D E5 81         [12] 1518 	mov	a,sp
   4C1F 24 FC         [12] 1519 	add	a,#0xfc
   4C21 F5 81         [12] 1520 	mov	sp,a
   4C23 D0 04         [24] 1521 	pop	ar4
   4C25 D0 05         [24] 1522 	pop	ar5
   4C27 C0 07         [24] 1523 	push	ar7
   4C29 C0 06         [24] 1524 	push	ar6
   4C2B C0 05         [24] 1525 	push	ar5
   4C2D C0 04         [24] 1526 	push	ar4
   4C2F C0 02         [24] 1527 	push	ar2
   4C31 C0 03         [24] 1528 	push	ar3
   4C33 C0 06         [24] 1529 	push	ar6
   4C35 C0 07         [24] 1530 	push	ar7
   4C37 85 64 82      [24] 1531 	mov	dpl,_tdm_state_update_sloc1_1_0
   4C3A 85 65 83      [24] 1532 	mov	dph,(_tdm_state_update_sloc1_1_0 + 1)
   4C3D 85 66 F0      [24] 1533 	mov	b,(_tdm_state_update_sloc1_1_0 + 2)
   4C40 E5 67         [12] 1534 	mov	a,(_tdm_state_update_sloc1_1_0 + 3)
   4C42 12 64 4F      [24] 1535 	lcall	___fsadd
   4C45 85 82 53      [24] 1536 	mov	_average_duty_cycle,dpl
   4C48 85 83 54      [24] 1537 	mov	(_average_duty_cycle + 1),dph
   4C4B 85 F0 55      [24] 1538 	mov	(_average_duty_cycle + 2),b
   4C4E F5 56         [12] 1539 	mov	(_average_duty_cycle + 3),a
   4C50 E5 81         [12] 1540 	mov	a,sp
   4C52 24 FC         [12] 1541 	add	a,#0xfc
   4C54 F5 81         [12] 1542 	mov	sp,a
   4C56 D0 04         [24] 1543 	pop	ar4
   4C58 D0 05         [24] 1544 	pop	ar5
   4C5A D0 06         [24] 1545 	pop	ar6
   4C5C D0 07         [24] 1546 	pop	ar7
                           1547 ;	radio/tdm.c:306: transmitted_ticks = 0;
   4C5E 78 CA         [12] 1548 	mov	r0,#_transmitted_ticks
   4C60 E4            [12] 1549 	clr	a
   4C61 F2            [24] 1550 	movx	@r0,a
   4C62 08            [12] 1551 	inc	r0
   4C63 F2            [24] 1552 	movx	@r0,a
                           1553 ;	radio/tdm.c:307: duty_cycle_wait = (average_duty_cycle >= (duty_cycle - duty_cycle_offset));
   4C64 EC            [12] 1554 	mov	a,r4
   4C65 C3            [12] 1555 	clr	c
   4C66 95 62         [12] 1556 	subb	a,_tdm_state_update_sloc0_1_0
   4C68 FC            [12] 1557 	mov	r4,a
   4C69 ED            [12] 1558 	mov	a,r5
   4C6A 95 63         [12] 1559 	subb	a,(_tdm_state_update_sloc0_1_0 + 1)
   4C6C FD            [12] 1560 	mov	r5,a
   4C6D 8C 82         [24] 1561 	mov	dpl,r4
   4C6F 8D 83         [24] 1562 	mov	dph,r5
   4C71 12 65 0A      [24] 1563 	lcall	___sint2fs
   4C74 AC 82         [24] 1564 	mov	r4,dpl
   4C76 AD 83         [24] 1565 	mov	r5,dph
   4C78 AE F0         [24] 1566 	mov	r6,b
   4C7A FF            [12] 1567 	mov	r7,a
   4C7B C0 07         [24] 1568 	push	ar7
   4C7D C0 06         [24] 1569 	push	ar6
   4C7F C0 04         [24] 1570 	push	ar4
   4C81 C0 05         [24] 1571 	push	ar5
   4C83 C0 06         [24] 1572 	push	ar6
   4C85 C0 07         [24] 1573 	push	ar7
   4C87 85 53 82      [24] 1574 	mov	dpl,_average_duty_cycle
   4C8A 85 54 83      [24] 1575 	mov	dph,(_average_duty_cycle + 1)
   4C8D 85 55 F0      [24] 1576 	mov	b,(_average_duty_cycle + 2)
   4C90 E5 56         [12] 1577 	mov	a,(_average_duty_cycle + 3)
   4C92 12 60 A2      [24] 1578 	lcall	___fslt
   4C95 E5 81         [12] 1579 	mov	a,sp
   4C97 24 FC         [12] 1580 	add	a,#0xfc
   4C99 F5 81         [12] 1581 	mov	sp,a
   4C9B D0 06         [24] 1582 	pop	ar6
   4C9D D0 07         [24] 1583 	pop	ar7
   4C9F E5 82         [12] 1584 	mov	a,dpl
   4CA1 24 FF         [12] 1585 	add	a,#0xFF
   4CA3 92 30         [24] 1586 	mov  _tdm_state_update_sloc3_1_0,c
   4CA5 B3            [12] 1587 	cpl	c
   4CA6 92 2C         [24] 1588 	mov	_duty_cycle_wait,c
                           1589 ;	radio/tdm.c:320: tdm_state_remaining -= tdelta;
   4CA8 D0 07         [24] 1590 	pop	ar7
   4CAA D0 06         [24] 1591 	pop	ar6
                           1592 ;	radio/tdm.c:307: duty_cycle_wait = (average_duty_cycle >= (duty_cycle - duty_cycle_offset));
   4CAC                    1593 00114$:
                           1594 ;	radio/tdm.c:311: bonus_transmit = 0;
   4CAC C2 28         [12] 1595 	clr	_bonus_transmit
                           1596 ;	radio/tdm.c:314: transmit_yield = 0;
   4CAE C2 29         [12] 1597 	clr	_transmit_yield
                           1598 ;	radio/tdm.c:317: transmit_wait = 0;
   4CB0 78 C6         [12] 1599 	mov	r0,#_transmit_wait
   4CB2 E4            [12] 1600 	clr	a
   4CB3 F2            [24] 1601 	movx	@r0,a
   4CB4 08            [12] 1602 	inc	r0
   4CB5 F2            [24] 1603 	movx	@r0,a
   4CB6 02 4A 72      [24] 1604 	ljmp	00116$
   4CB9                    1605 00118$:
                           1606 ;	radio/tdm.c:320: tdm_state_remaining -= tdelta;
   4CB9 78 BB         [12] 1607 	mov	r0,#_tdm_state_remaining
   4CBB E2            [24] 1608 	movx	a,@r0
   4CBC C3            [12] 1609 	clr	c
   4CBD 9E            [12] 1610 	subb	a,r6
   4CBE F2            [24] 1611 	movx	@r0,a
   4CBF 08            [12] 1612 	inc	r0
   4CC0 E2            [24] 1613 	movx	a,@r0
   4CC1 9F            [12] 1614 	subb	a,r7
   4CC2 F2            [24] 1615 	movx	@r0,a
   4CC3 22            [24] 1616 	ret
                           1617 ;------------------------------------------------------------
                           1618 ;Allocation info for local variables in function 'tdm_change_phase'
                           1619 ;------------------------------------------------------------
                           1620 ;	radio/tdm.c:326: tdm_change_phase(void)
                           1621 ;	-----------------------------------------
                           1622 ;	 function tdm_change_phase
                           1623 ;	-----------------------------------------
   4CC4                    1624 _tdm_change_phase:
                           1625 ;	radio/tdm.c:328: tdm_state = (tdm_state+2) % 4;
   4CC4 78 BA         [12] 1626 	mov	r0,#_tdm_state
   4CC6 E2            [24] 1627 	movx	a,@r0
   4CC7 FE            [12] 1628 	mov	r6,a
   4CC8 7F 00         [12] 1629 	mov	r7,#0x00
   4CCA 74 02         [12] 1630 	mov	a,#0x02
   4CCC 2E            [12] 1631 	add	a,r6
   4CCD FE            [12] 1632 	mov	r6,a
   4CCE E4            [12] 1633 	clr	a
   4CCF 3F            [12] 1634 	addc	a,r7
   4CD0 FF            [12] 1635 	mov	r7,a
   4CD1 90 05 D6      [24] 1636 	mov	dptr,#__modsint_PARM_2
   4CD4 74 04         [12] 1637 	mov	a,#0x04
   4CD6 F0            [24] 1638 	movx	@dptr,a
   4CD7 E4            [12] 1639 	clr	a
   4CD8 A3            [24] 1640 	inc	dptr
   4CD9 F0            [24] 1641 	movx	@dptr,a
   4CDA 8E 82         [24] 1642 	mov	dpl,r6
   4CDC 8F 83         [24] 1643 	mov	dph,r7
   4CDE 12 61 86      [24] 1644 	lcall	__modsint
   4CE1 AE 82         [24] 1645 	mov	r6,dpl
   4CE3 78 BA         [12] 1646 	mov	r0,#_tdm_state
   4CE5 EE            [12] 1647 	mov	a,r6
   4CE6 F2            [24] 1648 	movx	@r0,a
   4CE7 22            [24] 1649 	ret
                           1650 ;------------------------------------------------------------
                           1651 ;Allocation info for local variables in function 'temperature_update'
                           1652 ;------------------------------------------------------------
                           1653 ;diff                      Allocated to registers r6 r7 
                           1654 ;------------------------------------------------------------
                           1655 ;	radio/tdm.c:333: static void temperature_update(void)
                           1656 ;	-----------------------------------------
                           1657 ;	 function temperature_update
                           1658 ;	-----------------------------------------
   4CE8                    1659 _temperature_update:
                           1660 ;	radio/tdm.c:336: if (radio_get_transmit_power() <= 20) {
   4CE8 12 3B 10      [24] 1661 	lcall	_radio_get_transmit_power
   4CEB E5 82         [12] 1662 	mov	a,dpl
   4CED FF            [12] 1663 	mov	r7,a
   4CEE 24 EB         [12] 1664 	add	a,#0xff - 0x14
   4CF0 40 05         [24] 1665 	jc	00102$
                           1666 ;	radio/tdm.c:337: duty_cycle_offset = 0;
   4CF2 78 C9         [12] 1667 	mov	r0,#_duty_cycle_offset
   4CF4 E4            [12] 1668 	clr	a
   4CF5 F2            [24] 1669 	movx	@r0,a
                           1670 ;	radio/tdm.c:338: return;
   4CF6 22            [24] 1671 	ret
   4CF7                    1672 00102$:
                           1673 ;	radio/tdm.c:341: diff = radio_temperature() - MAX_PA_TEMPERATURE;
   4CF7 12 3E CD      [24] 1674 	lcall	_radio_temperature
   4CFA E5 82         [12] 1675 	mov	a,dpl
   4CFC 85 83 F0      [24] 1676 	mov	b,dph
   4CFF 24 9C         [12] 1677 	add	a,#0x9C
   4D01 FE            [12] 1678 	mov	r6,a
   4D02 E5 F0         [12] 1679 	mov	a,b
   4D04 34 FF         [12] 1680 	addc	a,#0xFF
   4D06 FF            [12] 1681 	mov	r7,a
                           1682 ;	radio/tdm.c:342: if (diff <= 0 && duty_cycle_offset > 0) {
   4D07 C3            [12] 1683 	clr	c
   4D08 E4            [12] 1684 	clr	a
   4D09 9E            [12] 1685 	subb	a,r6
   4D0A E4            [12] 1686 	clr	a
   4D0B 64 80         [12] 1687 	xrl	a,#0x80
   4D0D 8F F0         [24] 1688 	mov	b,r7
   4D0F 63 F0 80      [24] 1689 	xrl	b,#0x80
   4D12 95 F0         [12] 1690 	subb	a,b
   4D14 E4            [12] 1691 	clr	a
   4D15 33            [12] 1692 	rlc	a
   4D16 FD            [12] 1693 	mov	r5,a
   4D17 70 0C         [24] 1694 	jnz	00112$
   4D19 78 C9         [12] 1695 	mov	r0,#_duty_cycle_offset
   4D1B E2            [24] 1696 	movx	a,@r0
   4D1C 60 07         [24] 1697 	jz	00112$
                           1698 ;	radio/tdm.c:344: duty_cycle_offset -= 1;
   4D1E 78 C9         [12] 1699 	mov	r0,#_duty_cycle_offset
   4D20 E2            [24] 1700 	movx	a,@r0
   4D21 14            [12] 1701 	dec	a
   4D22 F2            [24] 1702 	movx	@r0,a
   4D23 80 39         [24] 1703 	sjmp	00113$
   4D25                    1704 00112$:
                           1705 ;	radio/tdm.c:345: } else if (diff > 10) {
   4D25 C3            [12] 1706 	clr	c
   4D26 74 0A         [12] 1707 	mov	a,#0x0A
   4D28 9E            [12] 1708 	subb	a,r6
   4D29 E4            [12] 1709 	clr	a
   4D2A 64 80         [12] 1710 	xrl	a,#0x80
   4D2C 8F F0         [24] 1711 	mov	b,r7
   4D2E 63 F0 80      [24] 1712 	xrl	b,#0x80
   4D31 95 F0         [12] 1713 	subb	a,b
   4D33 50 08         [24] 1714 	jnc	00109$
                           1715 ;	radio/tdm.c:347: duty_cycle_offset += 10;
   4D35 78 C9         [12] 1716 	mov	r0,#_duty_cycle_offset
   4D37 E2            [24] 1717 	movx	a,@r0
   4D38 24 0A         [12] 1718 	add	a,#0x0A
   4D3A F2            [24] 1719 	movx	@r0,a
   4D3B 80 21         [24] 1720 	sjmp	00113$
   4D3D                    1721 00109$:
                           1722 ;	radio/tdm.c:348: } else if (diff > 5) {
   4D3D C3            [12] 1723 	clr	c
   4D3E 74 05         [12] 1724 	mov	a,#0x05
   4D40 9E            [12] 1725 	subb	a,r6
   4D41 E4            [12] 1726 	clr	a
   4D42 64 80         [12] 1727 	xrl	a,#0x80
   4D44 8F F0         [24] 1728 	mov	b,r7
   4D46 63 F0 80      [24] 1729 	xrl	b,#0x80
   4D49 95 F0         [12] 1730 	subb	a,b
   4D4B 50 08         [24] 1731 	jnc	00106$
                           1732 ;	radio/tdm.c:350: duty_cycle_offset += 5;
   4D4D 78 C9         [12] 1733 	mov	r0,#_duty_cycle_offset
   4D4F E2            [24] 1734 	movx	a,@r0
   4D50 24 05         [12] 1735 	add	a,#0x05
   4D52 F2            [24] 1736 	movx	@r0,a
   4D53 80 09         [24] 1737 	sjmp	00113$
   4D55                    1738 00106$:
                           1739 ;	radio/tdm.c:351: } else if (diff > 0) {
   4D55 ED            [12] 1740 	mov	a,r5
   4D56 60 06         [24] 1741 	jz	00113$
                           1742 ;	radio/tdm.c:353: duty_cycle_offset += 1;				
   4D58 78 C9         [12] 1743 	mov	r0,#_duty_cycle_offset
   4D5A E2            [24] 1744 	movx	a,@r0
   4D5B 24 01         [12] 1745 	add	a,#0x01
   4D5D F2            [24] 1746 	movx	@r0,a
   4D5E                    1747 00113$:
                           1748 ;	radio/tdm.c:356: if ((duty_cycle-duty_cycle_offset) < 20) {
   4D5E 78 C8         [12] 1749 	mov	r0,#_duty_cycle
   4D60 E2            [24] 1750 	movx	a,@r0
   4D61 FE            [12] 1751 	mov	r6,a
   4D62 7F 00         [12] 1752 	mov	r7,#0x00
   4D64 78 C9         [12] 1753 	mov	r0,#_duty_cycle_offset
   4D66 E2            [24] 1754 	movx	a,@r0
   4D67 FC            [12] 1755 	mov	r4,a
   4D68 7D 00         [12] 1756 	mov	r5,#0x00
   4D6A EE            [12] 1757 	mov	a,r6
   4D6B C3            [12] 1758 	clr	c
   4D6C 9C            [12] 1759 	subb	a,r4
   4D6D FE            [12] 1760 	mov	r6,a
   4D6E EF            [12] 1761 	mov	a,r7
   4D6F 9D            [12] 1762 	subb	a,r5
   4D70 FF            [12] 1763 	mov	r7,a
   4D71 C3            [12] 1764 	clr	c
   4D72 EE            [12] 1765 	mov	a,r6
   4D73 94 14         [12] 1766 	subb	a,#0x14
   4D75 EF            [12] 1767 	mov	a,r7
   4D76 64 80         [12] 1768 	xrl	a,#0x80
   4D78 94 80         [12] 1769 	subb	a,#0x80
   4D7A 50 08         [24] 1770 	jnc	00117$
                           1771 ;	radio/tdm.c:357: duty_cycle_offset = duty_cycle - 20;
   4D7C 78 C8         [12] 1772 	mov	r0,#_duty_cycle
   4D7E 79 C9         [12] 1773 	mov	r1,#_duty_cycle_offset
   4D80 E2            [24] 1774 	movx	a,@r0
   4D81 24 EC         [12] 1775 	add	a,#0xEC
   4D83 F3            [24] 1776 	movx	@r1,a
   4D84                    1777 00117$:
   4D84 22            [24] 1778 	ret
                           1779 ;------------------------------------------------------------
                           1780 ;Allocation info for local variables in function 'link_update'
                           1781 ;------------------------------------------------------------
                           1782 ;old_remaining             Allocated to registers r6 r7 
                           1783 ;unlock_count              Allocated with name '_link_update_unlock_count_1_187'
                           1784 ;temperature_count         Allocated with name '_link_update_temperature_count_1_187'
                           1785 ;------------------------------------------------------------
                           1786 ;	radio/tdm.c:365: link_update(void)
                           1787 ;	-----------------------------------------
                           1788 ;	 function link_update
                           1789 ;	-----------------------------------------
   4D85                    1790 _link_update:
                           1791 ;	radio/tdm.c:368: if (received_packet) {
   4D85 30 2B 0B      [24] 1792 	jnb	_received_packet,00102$
                           1793 ;	radio/tdm.c:369: unlock_count = 0;
   4D88 90 05 71      [24] 1794 	mov	dptr,#_link_update_unlock_count_1_187
   4D8B E4            [12] 1795 	clr	a
   4D8C F0            [24] 1796 	movx	@dptr,a
                           1797 ;	radio/tdm.c:370: received_packet = false;
   4D8D C2 2B         [12] 1798 	clr	_received_packet
                           1799 ;	radio/tdm.c:372: TDM_SYNC_PIN = true;
   4D8F D2 A6         [12] 1800 	setb	_TDM_SYNC_PIN
   4D91 80 07         [24] 1801 	sjmp	00103$
   4D93                    1802 00102$:
                           1803 ;	radio/tdm.c:375: unlock_count++;
   4D93 90 05 71      [24] 1804 	mov	dptr,#_link_update_unlock_count_1_187
   4D96 E0            [24] 1805 	movx	a,@dptr
   4D97 24 01         [12] 1806 	add	a,#0x01
   4D99 F0            [24] 1807 	movx	@dptr,a
   4D9A                    1808 00103$:
                           1809 ;	radio/tdm.c:377: if (unlock_count < 6) {
   4D9A 90 05 71      [24] 1810 	mov	dptr,#_link_update_unlock_count_1_187
   4D9D E0            [24] 1811 	movx	a,@dptr
   4D9E FF            [12] 1812 	mov	r7,a
   4D9F BF 06 00      [24] 1813 	cjne	r7,#0x06,00157$
   4DA2                    1814 00157$:
   4DA2 50 04         [24] 1815 	jnc	00105$
                           1816 ;	radio/tdm.c:378: LED_RADIO = LED_ON;
   4DA4 D2 95         [12] 1817 	setb	_LED_GREEN
   4DA6 80 08         [24] 1818 	sjmp	00106$
   4DA8                    1819 00105$:
                           1820 ;	radio/tdm.c:381: TDM_SYNC_PIN = false;
   4DA8 C2 A6         [12] 1821 	clr	_TDM_SYNC_PIN
                           1822 ;	radio/tdm.c:384: LED_RADIO = blink_state;
   4DAA A2 2A         [12] 1823 	mov	c,_blink_state
   4DAC 92 95         [24] 1824 	mov	_LED_GREEN,c
                           1825 ;	radio/tdm.c:385: blink_state = !blink_state;
   4DAE B2 2A         [12] 1826 	cpl	_blink_state
   4DB0                    1827 00106$:
                           1828 ;	radio/tdm.c:387: if (unlock_count > 40) {
   4DB0 EF            [12] 1829 	mov	a,r7
   4DB1 24 D7         [12] 1830 	add	a,#0xff - 0x28
   4DB3 40 03         [24] 1831 	jc	00159$
   4DB5 02 4E 40      [24] 1832 	ljmp	00117$
   4DB8                    1833 00159$:
                           1834 ;	radio/tdm.c:391: unlock_count = 5;
   4DB8 90 05 71      [24] 1835 	mov	dptr,#_link_update_unlock_count_1_187
   4DBB 74 05         [12] 1836 	mov	a,#0x05
   4DBD F0            [24] 1837 	movx	@dptr,a
                           1838 ;	radio/tdm.c:395: if (timer_entropy() & 1) {
   4DBE 12 59 B1      [24] 1839 	lcall	_timer_entropy
   4DC1 E5 82         [12] 1840 	mov	a,dpl
   4DC3 30 E0 59      [24] 1841 	jnb	acc.0,00113$
                           1842 ;	radio/tdm.c:396: register uint16_t old_remaining = tdm_state_remaining;
   4DC6 78 BB         [12] 1843 	mov	r0,#_tdm_state_remaining
   4DC8 E2            [24] 1844 	movx	a,@r0
   4DC9 FE            [12] 1845 	mov	r6,a
   4DCA 08            [12] 1846 	inc	r0
   4DCB E2            [24] 1847 	movx	a,@r0
   4DCC FF            [12] 1848 	mov	r7,a
                           1849 ;	radio/tdm.c:397: if (tdm_state_remaining > silence_period) {
   4DCD 78 C0         [12] 1850 	mov	r0,#_silence_period
   4DCF C3            [12] 1851 	clr	c
   4DD0 E2            [24] 1852 	movx	a,@r0
   4DD1 9E            [12] 1853 	subb	a,r6
   4DD2 08            [12] 1854 	inc	r0
   4DD3 E2            [24] 1855 	movx	a,@r0
   4DD4 9F            [12] 1856 	subb	a,r7
   4DD5 50 17         [24] 1857 	jnc	00108$
                           1858 ;	radio/tdm.c:398: tdm_state_remaining -= packet_latency;
   4DD7 78 C2         [12] 1859 	mov	r0,#_packet_latency
   4DD9 D3            [12] 1860 	setb	c
   4DDA E2            [24] 1861 	movx	a,@r0
   4DDB 9E            [12] 1862 	subb	a,r6
   4DDC F4            [12] 1863 	cpl	a
   4DDD B3            [12] 1864 	cpl	c
   4DDE FC            [12] 1865 	mov	r4,a
   4DDF B3            [12] 1866 	cpl	c
   4DE0 08            [12] 1867 	inc	r0
   4DE1 E2            [24] 1868 	movx	a,@r0
   4DE2 9F            [12] 1869 	subb	a,r7
   4DE3 F4            [12] 1870 	cpl	a
   4DE4 FD            [12] 1871 	mov	r5,a
   4DE5 78 BB         [12] 1872 	mov	r0,#_tdm_state_remaining
   4DE7 EC            [12] 1873 	mov	a,r4
   4DE8 F2            [24] 1874 	movx	@r0,a
   4DE9 08            [12] 1875 	inc	r0
   4DEA ED            [12] 1876 	mov	a,r5
   4DEB F2            [24] 1877 	movx	@r0,a
   4DEC 80 08         [24] 1878 	sjmp	00109$
   4DEE                    1879 00108$:
                           1880 ;	radio/tdm.c:400: tdm_state_remaining = 1;
   4DEE 78 BB         [12] 1881 	mov	r0,#_tdm_state_remaining
   4DF0 74 01         [12] 1882 	mov	a,#0x01
   4DF2 F2            [24] 1883 	movx	@r0,a
   4DF3 08            [12] 1884 	inc	r0
   4DF4 E4            [12] 1885 	clr	a
   4DF5 F2            [24] 1886 	movx	@r0,a
   4DF6                    1887 00109$:
                           1888 ;	radio/tdm.c:402: if (at_testmode & AT_TEST_TDM) {
   4DF6 78 13         [12] 1889 	mov	r0,#_at_testmode
   4DF8 E2            [24] 1890 	movx	a,@r0
   4DF9 54 02         [12] 1891 	anl	a,#0x02
   4DFB 60 22         [24] 1892 	jz	00113$
                           1893 ;	radio/tdm.c:403: printf("TDM: change timing %u/%u\n",
   4DFD 78 BB         [12] 1894 	mov	r0,#_tdm_state_remaining
   4DFF E2            [24] 1895 	movx	a,@r0
   4E00 C0 E0         [24] 1896 	push	acc
   4E02 08            [12] 1897 	inc	r0
   4E03 E2            [24] 1898 	movx	a,@r0
   4E04 C0 E0         [24] 1899 	push	acc
   4E06 C0 06         [24] 1900 	push	ar6
   4E08 C0 07         [24] 1901 	push	ar7
   4E0A 74 95         [12] 1902 	mov	a,#__str_4
   4E0C C0 E0         [24] 1903 	push	acc
   4E0E 74 CF         [12] 1904 	mov	a,#(__str_4 >> 8)
   4E10 C0 E0         [24] 1905 	push	acc
   4E12 74 80         [12] 1906 	mov	a,#0x80
   4E14 C0 E0         [24] 1907 	push	acc
   4E16 12 30 0B      [24] 1908 	lcall	_printfl
   4E19 E5 81         [12] 1909 	mov	a,sp
   4E1B 24 F9         [12] 1910 	add	a,#0xf9
   4E1D F5 81         [12] 1911 	mov	sp,a
   4E1F                    1912 00113$:
                           1913 ;	radio/tdm.c:408: if (at_testmode & AT_TEST_TDM) {
   4E1F 78 13         [12] 1914 	mov	r0,#_at_testmode
   4E21 E2            [24] 1915 	movx	a,@r0
   4E22 54 02         [12] 1916 	anl	a,#0x02
   4E24 60 15         [24] 1917 	jz	00115$
                           1918 ;	radio/tdm.c:409: printf("TDM: scanning\n");
   4E26 74 AF         [12] 1919 	mov	a,#__str_5
   4E28 C0 E0         [24] 1920 	push	acc
   4E2A 74 CF         [12] 1921 	mov	a,#(__str_5 >> 8)
   4E2C C0 E0         [24] 1922 	push	acc
   4E2E 74 80         [12] 1923 	mov	a,#0x80
   4E30 C0 E0         [24] 1924 	push	acc
   4E32 12 30 0B      [24] 1925 	lcall	_printfl
   4E35 15 81         [12] 1926 	dec	sp
   4E37 15 81         [12] 1927 	dec	sp
   4E39 15 81         [12] 1928 	dec	sp
   4E3B                    1929 00115$:
                           1930 ;	radio/tdm.c:411: fhop_set_locked(false);
   4E3B C2 04         [12] 1931 	clr	_fhop_set_locked_PARM_1
   4E3D 12 0D 95      [24] 1932 	lcall	_fhop_set_locked
   4E40                    1933 00117$:
                           1934 ;	radio/tdm.c:414: if (unlock_count != 0) {
   4E40 90 05 71      [24] 1935 	mov	dptr,#_link_update_unlock_count_1_187
   4E43 E0            [24] 1936 	movx	a,@dptr
   4E44 FF            [12] 1937 	mov	r7,a
   4E45 60 3D         [24] 1938 	jz	00119$
                           1939 ;	radio/tdm.c:415: statistics.average_rssi = (radio_last_rssi() + 3*(uint16_t)statistics.average_rssi)/4;
   4E47 12 32 EB      [24] 1940 	lcall	_radio_last_rssi
   4E4A AF 82         [24] 1941 	mov	r7,dpl
   4E4C 7E 00         [12] 1942 	mov	r6,#0x00
   4E4E 78 44         [12] 1943 	mov	r0,#_statistics
   4E50 E2            [24] 1944 	movx	a,@r0
   4E51 90 05 CE      [24] 1945 	mov	dptr,#__mulint_PARM_2
   4E54 F0            [24] 1946 	movx	@dptr,a
   4E55 E4            [12] 1947 	clr	a
   4E56 A3            [24] 1948 	inc	dptr
   4E57 F0            [24] 1949 	movx	@dptr,a
   4E58 90 00 03      [24] 1950 	mov	dptr,#0x0003
   4E5B C0 07         [24] 1951 	push	ar7
   4E5D C0 06         [24] 1952 	push	ar6
   4E5F 12 60 D2      [24] 1953 	lcall	__mulint
   4E62 AC 82         [24] 1954 	mov	r4,dpl
   4E64 AD 83         [24] 1955 	mov	r5,dph
   4E66 D0 06         [24] 1956 	pop	ar6
   4E68 D0 07         [24] 1957 	pop	ar7
   4E6A EC            [12] 1958 	mov	a,r4
   4E6B 2F            [12] 1959 	add	a,r7
   4E6C FC            [12] 1960 	mov	r4,a
   4E6D ED            [12] 1961 	mov	a,r5
   4E6E 3E            [12] 1962 	addc	a,r6
   4E6F C3            [12] 1963 	clr	c
   4E70 13            [12] 1964 	rrc	a
   4E71 CC            [12] 1965 	xch	a,r4
   4E72 13            [12] 1966 	rrc	a
   4E73 CC            [12] 1967 	xch	a,r4
   4E74 C3            [12] 1968 	clr	c
   4E75 13            [12] 1969 	rrc	a
   4E76 CC            [12] 1970 	xch	a,r4
   4E77 13            [12] 1971 	rrc	a
   4E78 CC            [12] 1972 	xch	a,r4
   4E79 FD            [12] 1973 	mov	r5,a
   4E7A 78 44         [12] 1974 	mov	r0,#_statistics
   4E7C EC            [12] 1975 	mov	a,r4
   4E7D F2            [24] 1976 	movx	@r0,a
                           1977 ;	radio/tdm.c:418: statistics.receive_count = 0;
   4E7E 78 46         [12] 1978 	mov	r0,#(_statistics + 0x0002)
   4E80 E4            [12] 1979 	clr	a
   4E81 F2            [24] 1980 	movx	@r0,a
   4E82 08            [12] 1981 	inc	r0
   4E83 F2            [24] 1982 	movx	@r0,a
   4E84                    1983 00119$:
                           1984 ;	radio/tdm.c:420: if (unlock_count > 5) {
   4E84 90 05 71      [24] 1985 	mov	dptr,#_link_update_unlock_count_1_187
   4E87 E0            [24] 1986 	movx	a,@dptr
   4E88 FF            [12] 1987 	mov  r7,a
   4E89 24 FA         [12] 1988 	add	a,#0xff - 0x05
   4E8B 50 17         [24] 1989 	jnc	00121$
                           1990 ;	radio/tdm.c:421: memset(&remote_statistics, 0, sizeof(remote_statistics));
   4E8D 90 05 C1      [24] 1991 	mov	dptr,#_memset_PARM_2
   4E90 E4            [12] 1992 	clr	a
   4E91 F0            [24] 1993 	movx	@dptr,a
   4E92 90 05 C2      [24] 1994 	mov	dptr,#_memset_PARM_3
   4E95 74 04         [12] 1995 	mov	a,#0x04
   4E97 F0            [24] 1996 	movx	@dptr,a
   4E98 E4            [12] 1997 	clr	a
   4E99 A3            [24] 1998 	inc	dptr
   4E9A F0            [24] 1999 	movx	@dptr,a
   4E9B 90 00 48      [24] 2000 	mov	dptr,#_remote_statistics
   4E9E 75 F0 60      [24] 2001 	mov	b,#0x60
   4EA1 12 5F D2      [24] 2002 	lcall	_memset
   4EA4                    2003 00121$:
                           2004 ;	radio/tdm.c:424: test_display = at_testmode;
   4EA4 78 13         [12] 2005 	mov	r0,#_at_testmode
   4EA6 E2            [24] 2006 	movx	a,@r0
   4EA7 78 D3         [12] 2007 	mov	r0,#_test_display
   4EA9 F2            [24] 2008 	movx	@r0,a
                           2009 ;	radio/tdm.c:425: send_statistics = 1;
   4EAA D2 2D         [12] 2010 	setb	_send_statistics
                           2011 ;	radio/tdm.c:427: temperature_count++;
   4EAC 90 05 72      [24] 2012 	mov	dptr,#_link_update_temperature_count_1_187
   4EAF E0            [24] 2013 	movx	a,@dptr
   4EB0 24 01         [12] 2014 	add	a,#0x01
   4EB2 F0            [24] 2015 	movx	@dptr,a
                           2016 ;	radio/tdm.c:428: if (temperature_count == 4) {
   4EB3 90 05 72      [24] 2017 	mov	dptr,#_link_update_temperature_count_1_187
   4EB6 E0            [24] 2018 	movx	a,@dptr
   4EB7 FF            [12] 2019 	mov	r7,a
   4EB8 BF 04 08      [24] 2020 	cjne	r7,#0x04,00124$
                           2021 ;	radio/tdm.c:430: temperature_update();
   4EBB 12 4C E8      [24] 2022 	lcall	_temperature_update
                           2023 ;	radio/tdm.c:431: temperature_count = 0;
   4EBE 90 05 72      [24] 2024 	mov	dptr,#_link_update_temperature_count_1_187
   4EC1 E4            [12] 2025 	clr	a
   4EC2 F0            [24] 2026 	movx	@dptr,a
   4EC3                    2027 00124$:
   4EC3 22            [24] 2028 	ret
                           2029 ;------------------------------------------------------------
                           2030 ;Allocation info for local variables in function 'tdm_remote_at'
                           2031 ;------------------------------------------------------------
                           2032 ;	radio/tdm.c:437: tdm_remote_at(void)
                           2033 ;	-----------------------------------------
                           2034 ;	 function tdm_remote_at
                           2035 ;	-----------------------------------------
   4EC4                    2036 _tdm_remote_at:
                           2037 ;	radio/tdm.c:439: memcpy(remote_at_cmd, at_cmd, strlen(at_cmd)+1);
   4EC4 90 00 01      [24] 2038 	mov	dptr,#_at_cmd
   4EC7 75 F0 60      [24] 2039 	mov	b,#0x60
   4ECA 12 66 57      [24] 2040 	lcall	_strlen
   4ECD E5 82         [12] 2041 	mov	a,dpl
   4ECF 85 83 F0      [24] 2042 	mov	b,dph
   4ED2 24 01         [12] 2043 	add	a,#0x01
   4ED4 FE            [12] 2044 	mov	r6,a
   4ED5 E4            [12] 2045 	clr	a
   4ED6 35 F0         [12] 2046 	addc	a,b
   4ED8 FF            [12] 2047 	mov	r7,a
   4ED9 90 05 C4      [24] 2048 	mov	dptr,#_memcpy_PARM_2
   4EDC 74 01         [12] 2049 	mov	a,#_at_cmd
   4EDE F0            [24] 2050 	movx	@dptr,a
   4EDF 74 00         [12] 2051 	mov	a,#(_at_cmd >> 8)
   4EE1 A3            [24] 2052 	inc	dptr
   4EE2 F0            [24] 2053 	movx	@dptr,a
   4EE3 74 60         [12] 2054 	mov	a,#0x60
   4EE5 A3            [24] 2055 	inc	dptr
   4EE6 F0            [24] 2056 	movx	@dptr,a
   4EE7 90 05 C7      [24] 2057 	mov	dptr,#_memcpy_PARM_3
   4EEA EE            [12] 2058 	mov	a,r6
   4EEB F0            [24] 2059 	movx	@dptr,a
   4EEC EF            [12] 2060 	mov	a,r7
   4EED A3            [24] 2061 	inc	dptr
   4EEE F0            [24] 2062 	movx	@dptr,a
   4EEF 90 00 D6      [24] 2063 	mov	dptr,#_remote_at_cmd
   4EF2 75 F0 60      [24] 2064 	mov	b,#0x60
   4EF5 12 5F FA      [24] 2065 	lcall	_memcpy
                           2066 ;	radio/tdm.c:440: send_at_command = true;
   4EF8 D2 2E         [12] 2067 	setb	_send_at_command
   4EFA 22            [24] 2068 	ret
                           2069 ;------------------------------------------------------------
                           2070 ;Allocation info for local variables in function 'handle_at_command'
                           2071 ;------------------------------------------------------------
                           2072 ;i                         Allocated to registers r6 
                           2073 ;------------------------------------------------------------
                           2074 ;	radio/tdm.c:445: handle_at_command(__pdata uint8_t len)
                           2075 ;	-----------------------------------------
                           2076 ;	 function handle_at_command
                           2077 ;	-----------------------------------------
   4EFB                    2078 _handle_at_command:
   4EFB AF 82         [24] 2079 	mov	r7,dpl
                           2080 ;	radio/tdm.c:447: if (len < 2 || len > AT_CMD_MAXLEN || 
   4EFD BF 02 00      [24] 2081 	cjne	r7,#0x02,00133$
   4F00                    2082 00133$:
   4F00 40 17         [24] 2083 	jc	00118$
   4F02 EF            [12] 2084 	mov	a,r7
   4F03 24 EF         [12] 2085 	add	a,#0xff - 0x10
   4F05 40 12         [24] 2086 	jc	00118$
                           2087 ;	radio/tdm.c:448: pbuf[0] != (uint8_t)'R' || 
   4F07 90 04 75      [24] 2088 	mov	dptr,#_pbuf
   4F0A E0            [24] 2089 	movx	a,@dptr
   4F0B FE            [12] 2090 	mov	r6,a
   4F0C BE 52 0A      [24] 2091 	cjne	r6,#0x52,00118$
                           2092 ;	radio/tdm.c:449: pbuf[1] != (uint8_t)'T') {
   4F0F 90 04 76      [24] 2093 	mov	dptr,#(_pbuf + 0x0001)
   4F12 E0            [24] 2094 	movx	a,@dptr
   4F13 FE            [12] 2095 	mov	r6,a
   4F14 BE 54 02      [24] 2096 	cjne	r6,#0x54,00138$
   4F17 80 23         [24] 2097 	sjmp	00103$
   4F19                    2098 00138$:
                           2099 ;	radio/tdm.c:452: for (i=0; i<len; i++) {
   4F19                    2100 00118$:
   4F19 7E 00         [12] 2101 	mov	r6,#0x00
   4F1B                    2102 00110$:
   4F1B C3            [12] 2103 	clr	c
   4F1C EE            [12] 2104 	mov	a,r6
   4F1D 9F            [12] 2105 	subb	a,r7
   4F1E 50 1B         [24] 2106 	jnc	00101$
                           2107 ;	radio/tdm.c:453: putchar(pbuf[i]);
   4F20 EE            [12] 2108 	mov	a,r6
   4F21 24 75         [12] 2109 	add	a,#_pbuf
   4F23 F5 82         [12] 2110 	mov	dpl,a
   4F25 E4            [12] 2111 	clr	a
   4F26 34 04         [12] 2112 	addc	a,#(_pbuf >> 8)
   4F28 F5 83         [12] 2113 	mov	dph,a
   4F2A E0            [24] 2114 	movx	a,@dptr
   4F2B F5 82         [12] 2115 	mov	dpl,a
   4F2D C0 07         [24] 2116 	push	ar7
   4F2F C0 06         [24] 2117 	push	ar6
   4F31 12 47 37      [24] 2118 	lcall	_putchar
   4F34 D0 06         [24] 2119 	pop	ar6
   4F36 D0 07         [24] 2120 	pop	ar7
                           2121 ;	radio/tdm.c:452: for (i=0; i<len; i++) {
   4F38 0E            [12] 2122 	inc	r6
   4F39 80 E0         [24] 2123 	sjmp	00110$
   4F3B                    2124 00101$:
                           2125 ;	radio/tdm.c:455: return;
   4F3B 22            [24] 2126 	ret
   4F3C                    2127 00103$:
                           2128 ;	radio/tdm.c:459: memcpy(at_cmd, pbuf, len);
   4F3C 90 05 C4      [24] 2129 	mov	dptr,#_memcpy_PARM_2
   4F3F 74 75         [12] 2130 	mov	a,#_pbuf
   4F41 F0            [24] 2131 	movx	@dptr,a
   4F42 74 04         [12] 2132 	mov	a,#(_pbuf >> 8)
   4F44 A3            [24] 2133 	inc	dptr
   4F45 F0            [24] 2134 	movx	@dptr,a
   4F46 E4            [12] 2135 	clr	a
   4F47 A3            [24] 2136 	inc	dptr
   4F48 F0            [24] 2137 	movx	@dptr,a
   4F49 90 05 C7      [24] 2138 	mov	dptr,#_memcpy_PARM_3
   4F4C EF            [12] 2139 	mov	a,r7
   4F4D F0            [24] 2140 	movx	@dptr,a
   4F4E E4            [12] 2141 	clr	a
   4F4F A3            [24] 2142 	inc	dptr
   4F50 F0            [24] 2143 	movx	@dptr,a
   4F51 90 00 01      [24] 2144 	mov	dptr,#_at_cmd
   4F54 75 F0 60      [24] 2145 	mov	b,#0x60
   4F57 C0 07         [24] 2146 	push	ar7
   4F59 12 5F FA      [24] 2147 	lcall	_memcpy
   4F5C D0 07         [24] 2148 	pop	ar7
                           2149 ;	radio/tdm.c:460: at_cmd[len] = 0;
   4F5E EF            [12] 2150 	mov	a,r7
   4F5F 24 01         [12] 2151 	add	a,#_at_cmd
   4F61 F8            [12] 2152 	mov	r0,a
   4F62 E4            [12] 2153 	clr	a
   4F63 F2            [24] 2154 	movx	@r0,a
                           2155 ;	radio/tdm.c:461: at_cmd[0] = 'A'; // replace 'R'
   4F64 78 01         [12] 2156 	mov	r0,#_at_cmd
   4F66 74 41         [12] 2157 	mov	a,#0x41
   4F68 F2            [24] 2158 	movx	@r0,a
                           2159 ;	radio/tdm.c:462: at_cmd_len = len;
   4F69 78 12         [12] 2160 	mov	r0,#_at_cmd_len
   4F6B EF            [12] 2161 	mov	a,r7
   4F6C F2            [24] 2162 	movx	@r0,a
                           2163 ;	radio/tdm.c:463: at_cmd_ready = true;
   4F6D D2 01         [12] 2164 	setb	_at_cmd_ready
                           2165 ;	radio/tdm.c:468: printf_start_capture(pbuf, sizeof(pbuf));
   4F6F 90 03 65      [24] 2166 	mov	dptr,#_printf_start_capture_PARM_2
   4F72 74 FC         [12] 2167 	mov	a,#0xFC
   4F74 F0            [24] 2168 	movx	@dptr,a
   4F75 90 04 75      [24] 2169 	mov	dptr,#_pbuf
   4F78 12 2D 52      [24] 2170 	lcall	_printf_start_capture
                           2171 ;	radio/tdm.c:469: at_command();
   4F7B 12 06 12      [24] 2172 	lcall	_at_command
                           2173 ;	radio/tdm.c:470: len = printf_end_capture();
   4F7E 12 2D 7B      [24] 2174 	lcall	_printf_end_capture
                           2175 ;	radio/tdm.c:471: if (len > 0) {
   4F81 E5 82         [12] 2176 	mov	a,dpl
   4F83 FF            [12] 2177 	mov	r7,a
   4F84 60 0A         [24] 2178 	jz	00112$
                           2179 ;	radio/tdm.c:472: packet_inject(pbuf, len);
   4F86 78 6C         [12] 2180 	mov	r0,#_packet_inject_PARM_2
   4F88 EF            [12] 2181 	mov	a,r7
   4F89 F2            [24] 2182 	movx	@r0,a
   4F8A 90 04 75      [24] 2183 	mov	dptr,#_pbuf
   4F8D 02 26 3A      [24] 2184 	ljmp	_packet_inject
   4F90                    2185 00112$:
   4F90 22            [24] 2186 	ret
                           2187 ;------------------------------------------------------------
                           2188 ;Allocation info for local variables in function 'tdm_serial_loop'
                           2189 ;------------------------------------------------------------
                           2190 ;	radio/tdm.c:482: tdm_serial_loop(void)
                           2191 ;	-----------------------------------------
                           2192 ;	 function tdm_serial_loop
                           2193 ;	-----------------------------------------
   4F91                    2194 _tdm_serial_loop:
                           2195 ;	radio/tdm.c:484: __pdata uint16_t last_t = timer2_tick();
   4F91 12 59 5B      [24] 2196 	lcall	_timer2_tick
   4F94 78 E9         [12] 2197 	mov	r0,#_tdm_serial_loop_last_t_1_209
   4F96 E5 82         [12] 2198 	mov	a,dpl
   4F98 F2            [24] 2199 	movx	@r0,a
   4F99 08            [12] 2200 	inc	r0
   4F9A E5 83         [12] 2201 	mov	a,dph
   4F9C F2            [24] 2202 	movx	@r0,a
                           2203 ;	radio/tdm.c:485: __pdata uint16_t last_link_update = last_t;
   4F9D 78 E9         [12] 2204 	mov	r0,#_tdm_serial_loop_last_t_1_209
   4F9F 79 EB         [12] 2205 	mov	r1,#_tdm_serial_loop_last_link_update_1_209
   4FA1 E2            [24] 2206 	movx	a,@r0
   4FA2 F3            [24] 2207 	movx	@r1,a
   4FA3 08            [12] 2208 	inc	r0
   4FA4 E2            [24] 2209 	movx	a,@r0
   4FA5 09            [12] 2210 	inc	r1
   4FA6 F3            [24] 2211 	movx	@r1,a
                           2212 ;	radio/tdm.c:487: _canary = 42;
   4FA7 78 FF         [12] 2213 	mov	r0,#__canary
   4FA9 76 2A         [12] 2214 	mov	@r0,#0x2A
   4FAB                    2215 00192$:
                           2216 ;	radio/tdm.c:494: if (_canary != 42) {
   4FAB 78 FF         [12] 2217 	mov	r0,#__canary
   4FAD B6 2A 02      [24] 2218 	cjne	@r0,#0x2A,00339$
   4FB0 80 15         [24] 2219 	sjmp	00102$
   4FB2                    2220 00339$:
                           2221 ;	radio/tdm.c:495: panic("stack blown\n");
   4FB2 74 BE         [12] 2222 	mov	a,#__str_6
   4FB4 C0 E0         [24] 2223 	push	acc
   4FB6 74 CF         [12] 2224 	mov	a,#(__str_6 >> 8)
   4FB8 C0 E0         [24] 2225 	push	acc
   4FBA 74 80         [12] 2226 	mov	a,#0x80
   4FBC C0 E0         [24] 2227 	push	acc
   4FBE 12 13 04      [24] 2228 	lcall	_panic
   4FC1 15 81         [12] 2229 	dec	sp
   4FC3 15 81         [12] 2230 	dec	sp
   4FC5 15 81         [12] 2231 	dec	sp
   4FC7                    2232 00102$:
                           2233 ;	radio/tdm.c:498: if (pdata_canary != 0x41) {
   4FC7 78 00         [12] 2234 	mov	r0,#_pdata_canary
   4FC9 E2            [24] 2235 	movx	a,@r0
   4FCA B4 41 02      [24] 2236 	cjne	a,#0x41,00340$
   4FCD 80 15         [24] 2237 	sjmp	00104$
   4FCF                    2238 00340$:
                           2239 ;	radio/tdm.c:499: panic("pdata canary changed\n");
   4FCF 74 CB         [12] 2240 	mov	a,#__str_7
   4FD1 C0 E0         [24] 2241 	push	acc
   4FD3 74 CF         [12] 2242 	mov	a,#(__str_7 >> 8)
   4FD5 C0 E0         [24] 2243 	push	acc
   4FD7 74 80         [12] 2244 	mov	a,#0x80
   4FD9 C0 E0         [24] 2245 	push	acc
   4FDB 12 13 04      [24] 2246 	lcall	_panic
   4FDE 15 81         [12] 2247 	dec	sp
   4FE0 15 81         [12] 2248 	dec	sp
   4FE2 15 81         [12] 2249 	dec	sp
   4FE4                    2250 00104$:
                           2251 ;	radio/tdm.c:503: at_command();
   4FE4 12 06 12      [24] 2252 	lcall	_at_command
                           2253 ;	radio/tdm.c:506: if (test_display) {
   4FE7 78 D3         [12] 2254 	mov	r0,#_test_display
   4FE9 E2            [24] 2255 	movx	a,@r0
   4FEA 60 07         [24] 2256 	jz	00106$
                           2257 ;	radio/tdm.c:507: display_test_output();
   4FEC 12 48 B9      [24] 2258 	lcall	_display_test_output
                           2259 ;	radio/tdm.c:508: test_display = 0;
   4FEF 78 D3         [12] 2260 	mov	r0,#_test_display
   4FF1 E4            [12] 2261 	clr	a
   4FF2 F2            [24] 2262 	movx	@r0,a
   4FF3                    2263 00106$:
                           2264 ;	radio/tdm.c:511: if (seen_mavlink && feature_mavlink_framing && !at_mode_active) {
   4FF3 30 0E 0B      [24] 2265 	jnb	_seen_mavlink,00108$
   4FF6 30 07 08      [24] 2266 	jnb	_feature_mavlink_framing,00108$
   4FF9 20 00 05      [24] 2267 	jb	_at_mode_active,00108$
                           2268 ;	radio/tdm.c:512: seen_mavlink = false;
   4FFC C2 0E         [12] 2269 	clr	_seen_mavlink
                           2270 ;	radio/tdm.c:513: MAVLink_report();
   4FFE 12 1D 1B      [24] 2271 	lcall	_MAVLink_report
   5001                    2272 00108$:
                           2273 ;	radio/tdm.c:517: radio_set_channel(fhop_receive_channel());
   5001 12 0D 23      [24] 2274 	lcall	_fhop_receive_channel
   5004 12 37 CE      [24] 2275 	lcall	_radio_set_channel
                           2276 ;	radio/tdm.c:520: tnow = timer2_tick();
   5007 12 59 5B      [24] 2277 	lcall	_timer2_tick
   500A AA 82         [24] 2278 	mov	r2,dpl
   500C AB 83         [24] 2279 	mov	r3,dph
                           2280 ;	radio/tdm.c:523: if (radio_receive_packet(&len, pbuf)) {
   500E 78 8E         [12] 2281 	mov	r0,#_radio_receive_packet_PARM_2
   5010 74 75         [12] 2282 	mov	a,#_pbuf
   5012 F2            [24] 2283 	movx	@r0,a
   5013 08            [12] 2284 	inc	r0
   5014 74 04         [12] 2285 	mov	a,#(_pbuf >> 8)
   5016 F2            [24] 2286 	movx	@r0,a
   5017 90 00 ED      [24] 2287 	mov	dptr,#_tdm_serial_loop_len_2_210
   501A 75 F0 60      [24] 2288 	mov	b,#0x60
   501D C0 03         [24] 2289 	push	ar3
   501F C0 02         [24] 2290 	push	ar2
   5021 12 30 25      [24] 2291 	lcall	_radio_receive_packet
   5024 D0 02         [24] 2292 	pop	ar2
   5026 D0 03         [24] 2293 	pop	ar3
   5028 40 03         [24] 2294 	jc	00345$
   502A 02 51 A3      [24] 2295 	ljmp	00129$
   502D                    2296 00345$:
                           2297 ;	radio/tdm.c:526: received_packet = true;
   502D D2 2B         [12] 2298 	setb	_received_packet
                           2299 ;	radio/tdm.c:527: fhop_set_locked(true);
   502F D2 04         [12] 2300 	setb	_fhop_set_locked_PARM_1
   5031 C0 03         [24] 2301 	push	ar3
   5033 C0 02         [24] 2302 	push	ar2
   5035 12 0D 95      [24] 2303 	lcall	_fhop_set_locked
                           2304 ;	radio/tdm.c:530: statistics.average_rssi = (radio_last_rssi() + 7*(uint16_t)statistics.average_rssi)/8;
   5038 12 32 EB      [24] 2305 	lcall	_radio_last_rssi
   503B AD 82         [24] 2306 	mov	r5,dpl
   503D D0 02         [24] 2307 	pop	ar2
   503F D0 03         [24] 2308 	pop	ar3
   5041 7C 00         [12] 2309 	mov	r4,#0x00
   5043 78 44         [12] 2310 	mov	r0,#_statistics
   5045 E2            [24] 2311 	movx	a,@r0
   5046 90 05 CE      [24] 2312 	mov	dptr,#__mulint_PARM_2
   5049 F0            [24] 2313 	movx	@dptr,a
   504A E4            [12] 2314 	clr	a
   504B A3            [24] 2315 	inc	dptr
   504C F0            [24] 2316 	movx	@dptr,a
   504D 90 00 07      [24] 2317 	mov	dptr,#0x0007
   5050 C0 05         [24] 2318 	push	ar5
   5052 C0 04         [24] 2319 	push	ar4
   5054 C0 03         [24] 2320 	push	ar3
   5056 C0 02         [24] 2321 	push	ar2
   5058 12 60 D2      [24] 2322 	lcall	__mulint
   505B AE 82         [24] 2323 	mov	r6,dpl
   505D AF 83         [24] 2324 	mov	r7,dph
   505F D0 02         [24] 2325 	pop	ar2
   5061 D0 03         [24] 2326 	pop	ar3
   5063 D0 04         [24] 2327 	pop	ar4
   5065 D0 05         [24] 2328 	pop	ar5
   5067 EE            [12] 2329 	mov	a,r6
   5068 2D            [12] 2330 	add	a,r5
   5069 FE            [12] 2331 	mov	r6,a
   506A EF            [12] 2332 	mov	a,r7
   506B 3C            [12] 2333 	addc	a,r4
   506C C4            [12] 2334 	swap	a
   506D 23            [12] 2335 	rl	a
   506E CE            [12] 2336 	xch	a,r6
   506F C4            [12] 2337 	swap	a
   5070 23            [12] 2338 	rl	a
   5071 54 1F         [12] 2339 	anl	a,#0x1F
   5073 6E            [12] 2340 	xrl	a,r6
   5074 CE            [12] 2341 	xch	a,r6
   5075 54 1F         [12] 2342 	anl	a,#0x1F
   5077 CE            [12] 2343 	xch	a,r6
   5078 6E            [12] 2344 	xrl	a,r6
   5079 CE            [12] 2345 	xch	a,r6
   507A 78 44         [12] 2346 	mov	r0,#_statistics
   507C EE            [12] 2347 	mov	a,r6
   507D F2            [24] 2348 	movx	@r0,a
                           2349 ;	radio/tdm.c:531: statistics.receive_count++;
   507E 78 46         [12] 2350 	mov	r0,#(_statistics + 0x0002)
   5080 E2            [24] 2351 	movx	a,@r0
   5081 FE            [12] 2352 	mov	r6,a
   5082 08            [12] 2353 	inc	r0
   5083 E2            [24] 2354 	movx	a,@r0
   5084 FF            [12] 2355 	mov	r7,a
   5085 0E            [12] 2356 	inc	r6
   5086 BE 00 01      [24] 2357 	cjne	r6,#0x00,00346$
   5089 0F            [12] 2358 	inc	r7
   508A                    2359 00346$:
   508A 78 46         [12] 2360 	mov	r0,#(_statistics + 0x0002)
   508C EE            [12] 2361 	mov	a,r6
   508D F2            [24] 2362 	movx	@r0,a
   508E 08            [12] 2363 	inc	r0
   508F EF            [12] 2364 	mov	a,r7
   5090 F2            [24] 2365 	movx	@r0,a
                           2366 ;	radio/tdm.c:535: transmit_wait = 0;
   5091 78 C6         [12] 2367 	mov	r0,#_transmit_wait
   5093 E4            [12] 2368 	clr	a
   5094 F2            [24] 2369 	movx	@r0,a
   5095 08            [12] 2370 	inc	r0
   5096 F2            [24] 2371 	movx	@r0,a
                           2372 ;	radio/tdm.c:537: if (len < 2) {
   5097 78 ED         [12] 2373 	mov	r0,#_tdm_serial_loop_len_2_210
   5099 E2            [24] 2374 	movx	a,@r0
   509A B4 02 00      [24] 2375 	cjne	a,#0x02,00347$
   509D                    2376 00347$:
   509D 50 03         [24] 2377 	jnc	00348$
   509F 02 4F AB      [24] 2378 	ljmp	00192$
   50A2                    2379 00348$:
                           2380 ;	radio/tdm.c:544: memcpy(&trailer, &pbuf[len-sizeof(trailer)], sizeof(trailer));
   50A2 78 ED         [12] 2381 	mov	r0,#_tdm_serial_loop_len_2_210
   50A4 E2            [24] 2382 	movx	a,@r0
   50A5 24 FE         [12] 2383 	add	a,#0xFE
   50A7 24 75         [12] 2384 	add	a,#_pbuf
   50A9 FE            [12] 2385 	mov	r6,a
   50AA E4            [12] 2386 	clr	a
   50AB 34 04         [12] 2387 	addc	a,#(_pbuf >> 8)
   50AD FF            [12] 2388 	mov	r7,a
   50AE 90 05 C4      [24] 2389 	mov	dptr,#_memcpy_PARM_2
   50B1 EE            [12] 2390 	mov	a,r6
   50B2 F0            [24] 2391 	movx	@dptr,a
   50B3 EF            [12] 2392 	mov	a,r7
   50B4 A3            [24] 2393 	inc	dptr
   50B5 F0            [24] 2394 	movx	@dptr,a
   50B6 E4            [12] 2395 	clr	a
   50B7 A3            [24] 2396 	inc	dptr
   50B8 F0            [24] 2397 	movx	@dptr,a
   50B9 90 05 C7      [24] 2398 	mov	dptr,#_memcpy_PARM_3
   50BC 74 02         [12] 2399 	mov	a,#0x02
   50BE F0            [24] 2400 	movx	@dptr,a
   50BF E4            [12] 2401 	clr	a
   50C0 A3            [24] 2402 	inc	dptr
   50C1 F0            [24] 2403 	movx	@dptr,a
   50C2 90 00 D4      [24] 2404 	mov	dptr,#_trailer
   50C5 75 F0 60      [24] 2405 	mov	b,#0x60
   50C8 C0 03         [24] 2406 	push	ar3
   50CA C0 02         [24] 2407 	push	ar2
   50CC 12 5F FA      [24] 2408 	lcall	_memcpy
   50CF D0 02         [24] 2409 	pop	ar2
   50D1 D0 03         [24] 2410 	pop	ar3
                           2411 ;	radio/tdm.c:545: len -= sizeof(trailer);
   50D3 78 ED         [12] 2412 	mov	r0,#_tdm_serial_loop_len_2_210
   50D5 E2            [24] 2413 	movx	a,@r0
   50D6 14            [12] 2414 	dec	a
   50D7 14            [12] 2415 	dec	a
   50D8 F2            [24] 2416 	movx	@r0,a
                           2417 ;	radio/tdm.c:547: if (trailer.window == 0 && len != 0) {
   50D9 78 D4         [12] 2418 	mov	r0,#_trailer
   50DB E2            [24] 2419 	movx	a,@r0
   50DC FE            [12] 2420 	mov	r6,a
   50DD 08            [12] 2421 	inc	r0
   50DE E2            [24] 2422 	movx	a,@r0
   50DF 54 1F         [12] 2423 	anl	a,#0x1F
   50E1 FF            [12] 2424 	mov	r7,a
   50E2 4E            [12] 2425 	orl	a,r6
   50E3 70 41         [24] 2426 	jnz	00125$
   50E5 78 ED         [12] 2427 	mov	r0,#_tdm_serial_loop_len_2_210
   50E7 E2            [24] 2428 	movx	a,@r0
   50E8 60 3C         [24] 2429 	jz	00125$
                           2430 ;	radio/tdm.c:549: if (len == sizeof(struct statistics)) {
   50EA 78 ED         [12] 2431 	mov	r0,#_tdm_serial_loop_len_2_210
   50EC E2            [24] 2432 	movx	a,@r0
   50ED B4 04 20      [24] 2433 	cjne	a,#0x04,00114$
                           2434 ;	radio/tdm.c:550: memcpy(&remote_statistics, pbuf, len);
   50F0 90 05 C4      [24] 2435 	mov	dptr,#_memcpy_PARM_2
   50F3 74 75         [12] 2436 	mov	a,#_pbuf
   50F5 F0            [24] 2437 	movx	@dptr,a
   50F6 74 04         [12] 2438 	mov	a,#(_pbuf >> 8)
   50F8 A3            [24] 2439 	inc	dptr
   50F9 F0            [24] 2440 	movx	@dptr,a
   50FA E4            [12] 2441 	clr	a
   50FB A3            [24] 2442 	inc	dptr
   50FC F0            [24] 2443 	movx	@dptr,a
   50FD 78 ED         [12] 2444 	mov	r0,#_tdm_serial_loop_len_2_210
   50FF 90 05 C7      [24] 2445 	mov	dptr,#_memcpy_PARM_3
   5102 E2            [24] 2446 	movx	a,@r0
   5103 F0            [24] 2447 	movx	@dptr,a
   5104 E4            [12] 2448 	clr	a
   5105 A3            [24] 2449 	inc	dptr
   5106 F0            [24] 2450 	movx	@dptr,a
   5107 90 00 48      [24] 2451 	mov	dptr,#_remote_statistics
   510A 75 F0 60      [24] 2452 	mov	b,#0x60
   510D 12 5F FA      [24] 2453 	lcall	_memcpy
   5110                    2454 00114$:
                           2455 ;	radio/tdm.c:554: statistics.receive_count--;
   5110 78 46         [12] 2456 	mov	r0,#(_statistics + 0x0002)
   5112 E2            [24] 2457 	movx	a,@r0
   5113 FE            [12] 2458 	mov	r6,a
   5114 08            [12] 2459 	inc	r0
   5115 E2            [24] 2460 	movx	a,@r0
   5116 FF            [12] 2461 	mov	r7,a
   5117 1E            [12] 2462 	dec	r6
   5118 BE FF 01      [24] 2463 	cjne	r6,#0xFF,00353$
   511B 1F            [12] 2464 	dec	r7
   511C                    2465 00353$:
   511C 78 46         [12] 2466 	mov	r0,#(_statistics + 0x0002)
   511E EE            [12] 2467 	mov	a,r6
   511F F2            [24] 2468 	movx	@r0,a
   5120 08            [12] 2469 	inc	r0
   5121 EF            [12] 2470 	mov	a,r7
   5122 F2            [24] 2471 	movx	@r0,a
   5123 02 4F AB      [24] 2472 	ljmp	00192$
   5126                    2473 00125$:
                           2474 ;	radio/tdm.c:555: } else if (trailer.window != 0) {
   5126 78 D4         [12] 2475 	mov	r0,#_trailer
   5128 E2            [24] 2476 	movx	a,@r0
   5129 FE            [12] 2477 	mov	r6,a
   512A 08            [12] 2478 	inc	r0
   512B E2            [24] 2479 	movx	a,@r0
   512C 54 1F         [12] 2480 	anl	a,#0x1F
   512E FF            [12] 2481 	mov	r7,a
   512F 4E            [12] 2482 	orl	a,r6
   5130 70 03         [24] 2483 	jnz	00354$
   5132 02 4F AB      [24] 2484 	ljmp	00192$
   5135                    2485 00354$:
                           2486 ;	radio/tdm.c:558: sync_tx_windows(len);
   5135 78 ED         [12] 2487 	mov	r0,#_tdm_serial_loop_len_2_210
   5137 E2            [24] 2488 	movx	a,@r0
   5138 F5 82         [12] 2489 	mov	dpl,a
   513A C0 03         [24] 2490 	push	ar3
   513C C0 02         [24] 2491 	push	ar2
   513E 12 48 EB      [24] 2492 	lcall	_sync_tx_windows
   5141 D0 02         [24] 2493 	pop	ar2
   5143 D0 03         [24] 2494 	pop	ar3
                           2495 ;	radio/tdm.c:559: last_t = tnow;
   5145 78 E9         [12] 2496 	mov	r0,#_tdm_serial_loop_last_t_1_209
   5147 EA            [12] 2497 	mov	a,r2
   5148 F2            [24] 2498 	movx	@r0,a
   5149 08            [12] 2499 	inc	r0
   514A EB            [12] 2500 	mov	a,r3
   514B F2            [24] 2501 	movx	@r0,a
                           2502 ;	radio/tdm.c:561: if (trailer.command == 1) {
   514C 78 D5         [12] 2503 	mov	r0,#(_trailer + 0x0001)
   514E E2            [24] 2504 	movx	a,@r0
   514F C4            [12] 2505 	swap	a
   5150 03            [12] 2506 	rr	a
   5151 54 01         [12] 2507 	anl	a,#0x01
   5153 FF            [12] 2508 	mov	r7,a
   5154 BF 01 0B      [24] 2509 	cjne	r7,#0x01,00120$
                           2510 ;	radio/tdm.c:562: handle_at_command(len);
   5157 78 ED         [12] 2511 	mov	r0,#_tdm_serial_loop_len_2_210
   5159 E2            [24] 2512 	movx	a,@r0
   515A F5 82         [12] 2513 	mov	dpl,a
   515C 12 4E FB      [24] 2514 	lcall	_handle_at_command
   515F 02 4F AB      [24] 2515 	ljmp	00192$
   5162                    2516 00120$:
                           2517 ;	radio/tdm.c:563: } else if (len != 0 && 
   5162 78 ED         [12] 2518 	mov	r0,#_tdm_serial_loop_len_2_210
   5164 E2            [24] 2519 	movx	a,@r0
   5165 70 03         [24] 2520 	jnz	00357$
   5167 02 4F AB      [24] 2521 	ljmp	00192$
   516A                    2522 00357$:
                           2523 ;	radio/tdm.c:564: !packet_is_duplicate(len, pbuf, trailer.resend) &&
   516A 78 D5         [12] 2524 	mov	r0,#(_trailer + 0x0001)
   516C E2            [24] 2525 	movx	a,@r0
   516D 23            [12] 2526 	rl	a
   516E 54 01         [12] 2527 	anl	a,#0x01
   5170 24 FF         [12] 2528 	add	a,#0xff
   5172 92 10         [24] 2529 	mov	_packet_is_duplicate_PARM_3,c
   5174 78 6A         [12] 2530 	mov	r0,#_packet_is_duplicate_PARM_2
   5176 74 75         [12] 2531 	mov	a,#_pbuf
   5178 F2            [24] 2532 	movx	@r0,a
   5179 08            [12] 2533 	inc	r0
   517A 74 04         [12] 2534 	mov	a,#(_pbuf >> 8)
   517C F2            [24] 2535 	movx	@r0,a
   517D 78 ED         [12] 2536 	mov	r0,#_tdm_serial_loop_len_2_210
   517F E2            [24] 2537 	movx	a,@r0
   5180 F5 82         [12] 2538 	mov	dpl,a
   5182 12 25 BA      [24] 2539 	lcall	_packet_is_duplicate
   5185 50 03         [24] 2540 	jnc	00358$
   5187 02 4F AB      [24] 2541 	ljmp	00192$
   518A                    2542 00358$:
                           2543 ;	radio/tdm.c:565: !at_mode_active) {
   518A 30 00 03      [24] 2544 	jnb	_at_mode_active,00359$
   518D 02 4F AB      [24] 2545 	ljmp	00192$
   5190                    2546 00359$:
                           2547 ;	radio/tdm.c:569: LED_ACTIVITY = LED_ON;
   5190 D2 96         [12] 2548 	setb	_LED_RED
                           2549 ;	radio/tdm.c:570: serial_write_buf(pbuf, len);
   5192 78 ED         [12] 2550 	mov	r0,#_tdm_serial_loop_len_2_210
   5194 79 B6         [12] 2551 	mov	r1,#_serial_write_buf_PARM_2
   5196 E2            [24] 2552 	movx	a,@r0
   5197 F3            [24] 2553 	movx	@r1,a
   5198 90 04 75      [24] 2554 	mov	dptr,#_pbuf
   519B 12 43 61      [24] 2555 	lcall	_serial_write_buf
                           2556 ;	radio/tdm.c:571: LED_ACTIVITY = LED_OFF;
   519E C2 96         [12] 2557 	clr	_LED_RED
                           2558 ;	radio/tdm.c:575: continue;
   51A0 02 4F AB      [24] 2559 	ljmp	00192$
   51A3                    2560 00129$:
                           2561 ;	radio/tdm.c:581: tnow = timer2_tick();
   51A3 12 59 5B      [24] 2562 	lcall	_timer2_tick
   51A6 AA 82         [24] 2563 	mov	r2,dpl
   51A8 AB 83         [24] 2564 	mov	r3,dph
                           2565 ;	radio/tdm.c:582: tdelta = tnow - last_t;
   51AA 78 E9         [12] 2566 	mov	r0,#_tdm_serial_loop_last_t_1_209
   51AC 79 EE         [12] 2567 	mov	r1,#_tdm_serial_loop_tdelta_2_210
   51AE D3            [12] 2568 	setb	c
   51AF E2            [24] 2569 	movx	a,@r0
   51B0 9A            [12] 2570 	subb	a,r2
   51B1 F4            [12] 2571 	cpl	a
   51B2 B3            [12] 2572 	cpl	c
   51B3 F3            [24] 2573 	movx	@r1,a
   51B4 B3            [12] 2574 	cpl	c
   51B5 08            [12] 2575 	inc	r0
   51B6 E2            [24] 2576 	movx	a,@r0
   51B7 9B            [12] 2577 	subb	a,r3
   51B8 F4            [12] 2578 	cpl	a
   51B9 09            [12] 2579 	inc	r1
   51BA F3            [24] 2580 	movx	@r1,a
                           2581 ;	radio/tdm.c:583: tdm_state_update(tdelta);
   51BB 78 EE         [12] 2582 	mov	r0,#_tdm_serial_loop_tdelta_2_210
   51BD E2            [24] 2583 	movx	a,@r0
   51BE F5 82         [12] 2584 	mov	dpl,a
   51C0 08            [12] 2585 	inc	r0
   51C1 E2            [24] 2586 	movx	a,@r0
   51C2 F5 83         [12] 2587 	mov	dph,a
   51C4 C0 03         [24] 2588 	push	ar3
   51C6 C0 02         [24] 2589 	push	ar2
   51C8 12 4A 52      [24] 2590 	lcall	_tdm_state_update
   51CB D0 02         [24] 2591 	pop	ar2
   51CD D0 03         [24] 2592 	pop	ar3
                           2593 ;	radio/tdm.c:584: last_t = tnow;
   51CF 78 E9         [12] 2594 	mov	r0,#_tdm_serial_loop_last_t_1_209
   51D1 EA            [12] 2595 	mov	a,r2
   51D2 F2            [24] 2596 	movx	@r0,a
   51D3 08            [12] 2597 	inc	r0
   51D4 EB            [12] 2598 	mov	a,r3
   51D5 F2            [24] 2599 	movx	@r0,a
                           2600 ;	radio/tdm.c:587: if (tnow - last_link_update > 32768) {
   51D6 78 EB         [12] 2601 	mov	r0,#_tdm_serial_loop_last_link_update_1_209
   51D8 D3            [12] 2602 	setb	c
   51D9 E2            [24] 2603 	movx	a,@r0
   51DA 9A            [12] 2604 	subb	a,r2
   51DB F4            [12] 2605 	cpl	a
   51DC B3            [12] 2606 	cpl	c
   51DD FC            [12] 2607 	mov	r4,a
   51DE B3            [12] 2608 	cpl	c
   51DF 08            [12] 2609 	inc	r0
   51E0 E2            [24] 2610 	movx	a,@r0
   51E1 9B            [12] 2611 	subb	a,r3
   51E2 F4            [12] 2612 	cpl	a
   51E3 FD            [12] 2613 	mov	r5,a
   51E4 7E 00         [12] 2614 	mov	r6,#0x00
   51E6 7F 00         [12] 2615 	mov	r7,#0x00
   51E8 C3            [12] 2616 	clr	c
   51E9 E4            [12] 2617 	clr	a
   51EA 9C            [12] 2618 	subb	a,r4
   51EB 74 80         [12] 2619 	mov	a,#0x80
   51ED 9D            [12] 2620 	subb	a,r5
   51EE E4            [12] 2621 	clr	a
   51EF 9E            [12] 2622 	subb	a,r6
   51F0 E4            [12] 2623 	clr	a
   51F1 64 80         [12] 2624 	xrl	a,#0x80
   51F3 8F F0         [24] 2625 	mov	b,r7
   51F5 63 F0 80      [24] 2626 	xrl	b,#0x80
   51F8 95 F0         [12] 2627 	subb	a,b
   51FA 50 12         [24] 2628 	jnc	00131$
                           2629 ;	radio/tdm.c:588: link_update();
   51FC C0 03         [24] 2630 	push	ar3
   51FE C0 02         [24] 2631 	push	ar2
   5200 12 4D 85      [24] 2632 	lcall	_link_update
   5203 D0 02         [24] 2633 	pop	ar2
   5205 D0 03         [24] 2634 	pop	ar3
                           2635 ;	radio/tdm.c:589: last_link_update = tnow;
   5207 78 EB         [12] 2636 	mov	r0,#_tdm_serial_loop_last_link_update_1_209
   5209 EA            [12] 2637 	mov	a,r2
   520A F2            [24] 2638 	movx	@r0,a
   520B 08            [12] 2639 	inc	r0
   520C EB            [12] 2640 	mov	a,r3
   520D F2            [24] 2641 	movx	@r0,a
   520E                    2642 00131$:
                           2643 ;	radio/tdm.c:592: if (lbt_rssi != 0) {
   520E 78 CC         [12] 2644 	mov	r0,#_lbt_rssi
   5210 E2            [24] 2645 	movx	a,@r0
   5211 70 03         [24] 2646 	jnz	00361$
   5213 02 52 93      [24] 2647 	ljmp	00140$
   5216                    2648 00361$:
                           2649 ;	radio/tdm.c:594: if (radio_current_rssi() < lbt_rssi) {
   5216 12 32 F1      [24] 2650 	lcall	_radio_current_rssi
   5219 AF 82         [24] 2651 	mov	r7,dpl
   521B 78 CC         [12] 2652 	mov	r0,#_lbt_rssi
   521D C3            [12] 2653 	clr	c
   521E E2            [24] 2654 	movx	a,@r0
   521F F5 F0         [12] 2655 	mov	b,a
   5221 EF            [12] 2656 	mov	a,r7
   5222 95 F0         [12] 2657 	subb	a,b
   5224 50 16         [24] 2658 	jnc	00135$
                           2659 ;	radio/tdm.c:595: lbt_listen_time += tdelta;
   5226 78 CD         [12] 2660 	mov	r0,#_lbt_listen_time
   5228 79 EE         [12] 2661 	mov	r1,#_tdm_serial_loop_tdelta_2_210
   522A E3            [24] 2662 	movx	a,@r1
   522B C5 F0         [12] 2663 	xch	a,b
   522D E2            [24] 2664 	movx	a,@r0
   522E 25 F0         [12] 2665 	add	a,b
   5230 F2            [24] 2666 	movx	@r0,a
   5231 09            [12] 2667 	inc	r1
   5232 E3            [24] 2668 	movx	a,@r1
   5233 C5 F0         [12] 2669 	xch	a,b
   5235 08            [12] 2670 	inc	r0
   5236 E2            [24] 2671 	movx	a,@r0
   5237 35 F0         [12] 2672 	addc	a,b
   5239 F2            [24] 2673 	movx	@r0,a
   523A 80 36         [24] 2674 	sjmp	00136$
   523C                    2675 00135$:
                           2676 ;	radio/tdm.c:597: lbt_listen_time = 0;
   523C 78 CD         [12] 2677 	mov	r0,#_lbt_listen_time
   523E E4            [12] 2678 	clr	a
   523F F2            [24] 2679 	movx	@r0,a
   5240 08            [12] 2680 	inc	r0
   5241 F2            [24] 2681 	movx	@r0,a
                           2682 ;	radio/tdm.c:598: if (lbt_rand == 0) {
   5242 78 D1         [12] 2683 	mov	r0,#_lbt_rand
   5244 E2            [24] 2684 	movx	a,@r0
   5245 F5 F0         [12] 2685 	mov	b,a
   5247 08            [12] 2686 	inc	r0
   5248 E2            [24] 2687 	movx	a,@r0
   5249 45 F0         [12] 2688 	orl	a,b
   524B 70 25         [24] 2689 	jnz	00136$
                           2690 ;	radio/tdm.c:599: lbt_rand = ((uint16_t)rand()) % lbt_min_time;
   524D 12 5D E7      [24] 2691 	lcall	_rand
   5250 AE 82         [24] 2692 	mov	r6,dpl
   5252 AF 83         [24] 2693 	mov	r7,dph
   5254 78 CF         [12] 2694 	mov	r0,#_lbt_min_time
   5256 90 05 DE      [24] 2695 	mov	dptr,#__moduint_PARM_2
   5259 E2            [24] 2696 	movx	a,@r0
   525A F0            [24] 2697 	movx	@dptr,a
   525B 08            [12] 2698 	inc	r0
   525C E2            [24] 2699 	movx	a,@r0
   525D A3            [24] 2700 	inc	dptr
   525E F0            [24] 2701 	movx	@dptr,a
   525F 8E 82         [24] 2702 	mov	dpl,r6
   5261 8F 83         [24] 2703 	mov	dph,r7
   5263 12 62 5B      [24] 2704 	lcall	__moduint
   5266 E5 82         [12] 2705 	mov	a,dpl
   5268 85 83 F0      [24] 2706 	mov	b,dph
   526B 78 D1         [12] 2707 	mov	r0,#_lbt_rand
   526D F2            [24] 2708 	movx	@r0,a
   526E 08            [12] 2709 	inc	r0
   526F E5 F0         [12] 2710 	mov	a,b
   5271 F2            [24] 2711 	movx	@r0,a
   5272                    2712 00136$:
                           2713 ;	radio/tdm.c:602: if (lbt_listen_time < lbt_min_time + lbt_rand) {
   5272 78 CF         [12] 2714 	mov	r0,#_lbt_min_time
   5274 79 D1         [12] 2715 	mov	r1,#_lbt_rand
   5276 E3            [24] 2716 	movx	a,@r1
   5277 C5 F0         [12] 2717 	xch	a,b
   5279 E2            [24] 2718 	movx	a,@r0
   527A 25 F0         [12] 2719 	add	a,b
   527C FE            [12] 2720 	mov	r6,a
   527D 09            [12] 2721 	inc	r1
   527E E3            [24] 2722 	movx	a,@r1
   527F C5 F0         [12] 2723 	xch	a,b
   5281 08            [12] 2724 	inc	r0
   5282 E2            [24] 2725 	movx	a,@r0
   5283 35 F0         [12] 2726 	addc	a,b
   5285 FF            [12] 2727 	mov	r7,a
   5286 78 CD         [12] 2728 	mov	r0,#_lbt_listen_time
   5288 C3            [12] 2729 	clr	c
   5289 E2            [24] 2730 	movx	a,@r0
   528A 9E            [12] 2731 	subb	a,r6
   528B 08            [12] 2732 	inc	r0
   528C E2            [24] 2733 	movx	a,@r0
   528D 9F            [12] 2734 	subb	a,r7
   528E 50 03         [24] 2735 	jnc	00364$
   5290 02 4F AB      [24] 2736 	ljmp	00192$
   5293                    2737 00364$:
                           2738 ;	radio/tdm.c:604: continue;
   5293                    2739 00140$:
                           2740 ;	radio/tdm.c:612: if (tdm_state != TDM_TRANSMIT &&
   5293 78 BA         [12] 2741 	mov	r0,#_tdm_state
   5295 E2            [24] 2742 	movx	a,@r0
   5296 60 11         [24] 2743 	jz	00142$
                           2744 ;	radio/tdm.c:613: !(bonus_transmit && tdm_state == TDM_RECEIVE)) {
   5298 20 28 03      [24] 2745 	jb	_bonus_transmit,00366$
   529B 02 4F AB      [24] 2746 	ljmp	00192$
   529E                    2747 00366$:
   529E 78 BA         [12] 2748 	mov	r0,#_tdm_state
   52A0 E2            [24] 2749 	movx	a,@r0
   52A1 B4 02 02      [24] 2750 	cjne	a,#0x02,00367$
   52A4 80 03         [24] 2751 	sjmp	00368$
   52A6                    2752 00367$:
   52A6 02 4F AB      [24] 2753 	ljmp	00192$
   52A9                    2754 00368$:
                           2755 ;	radio/tdm.c:615: continue;
   52A9                    2756 00142$:
                           2757 ;	radio/tdm.c:623: if (transmit_yield != 0) {
   52A9 30 29 03      [24] 2758 	jnb	_transmit_yield,00369$
   52AC 02 4F AB      [24] 2759 	ljmp	00192$
   52AF                    2760 00369$:
                           2761 ;	radio/tdm.c:628: if (transmit_wait != 0) {
   52AF 78 C6         [12] 2762 	mov	r0,#_transmit_wait
   52B1 E2            [24] 2763 	movx	a,@r0
   52B2 F5 F0         [12] 2764 	mov	b,a
   52B4 08            [12] 2765 	inc	r0
   52B5 E2            [24] 2766 	movx	a,@r0
   52B6 45 F0         [12] 2767 	orl	a,b
   52B8 60 03         [24] 2768 	jz	00370$
   52BA 02 4F AB      [24] 2769 	ljmp	00192$
   52BD                    2770 00370$:
                           2771 ;	radio/tdm.c:633: if (!received_packet &&
   52BD 20 2B 05      [24] 2772 	jb	_received_packet,00152$
                           2773 ;	radio/tdm.c:634: radio_preamble_detected() ||
   52C0 12 32 D4      [24] 2774 	lcall	_radio_preamble_detected
   52C3 40 05         [24] 2775 	jc	00149$
   52C5                    2776 00152$:
                           2777 ;	radio/tdm.c:635: radio_receive_in_progress()) {
   52C5 12 32 BB      [24] 2778 	lcall	_radio_receive_in_progress
   52C8 50 11         [24] 2779 	jnc	00150$
   52CA                    2780 00149$:
                           2781 ;	radio/tdm.c:638: transmit_wait = packet_latency;
   52CA 78 C2         [12] 2782 	mov	r0,#_packet_latency
   52CC E2            [24] 2783 	movx	a,@r0
   52CD FE            [12] 2784 	mov	r6,a
   52CE 08            [12] 2785 	inc	r0
   52CF E2            [24] 2786 	movx	a,@r0
   52D0 FF            [12] 2787 	mov	r7,a
   52D1 78 C6         [12] 2788 	mov	r0,#_transmit_wait
   52D3 EE            [12] 2789 	mov	a,r6
   52D4 F2            [24] 2790 	movx	@r0,a
   52D5 08            [12] 2791 	inc	r0
   52D6 EF            [12] 2792 	mov	a,r7
   52D7 F2            [24] 2793 	movx	@r0,a
                           2794 ;	radio/tdm.c:639: continue;
   52D8 02 4F AB      [24] 2795 	ljmp	00192$
   52DB                    2796 00150$:
                           2797 ;	radio/tdm.c:645: statistics.average_noise = (radio_current_rssi() + 3*(uint16_t)statistics.average_noise)/4;
   52DB 12 32 F1      [24] 2798 	lcall	_radio_current_rssi
   52DE AF 82         [24] 2799 	mov	r7,dpl
   52E0 7E 00         [12] 2800 	mov	r6,#0x00
   52E2 78 45         [12] 2801 	mov	r0,#(_statistics + 0x0001)
   52E4 E2            [24] 2802 	movx	a,@r0
   52E5 90 05 CE      [24] 2803 	mov	dptr,#__mulint_PARM_2
   52E8 F0            [24] 2804 	movx	@dptr,a
   52E9 E4            [12] 2805 	clr	a
   52EA A3            [24] 2806 	inc	dptr
   52EB F0            [24] 2807 	movx	@dptr,a
   52EC 90 00 03      [24] 2808 	mov	dptr,#0x0003
   52EF C0 07         [24] 2809 	push	ar7
   52F1 C0 06         [24] 2810 	push	ar6
   52F3 12 60 D2      [24] 2811 	lcall	__mulint
   52F6 AC 82         [24] 2812 	mov	r4,dpl
   52F8 AD 83         [24] 2813 	mov	r5,dph
   52FA D0 06         [24] 2814 	pop	ar6
   52FC D0 07         [24] 2815 	pop	ar7
   52FE EC            [12] 2816 	mov	a,r4
   52FF 2F            [12] 2817 	add	a,r7
   5300 FC            [12] 2818 	mov	r4,a
   5301 ED            [12] 2819 	mov	a,r5
   5302 3E            [12] 2820 	addc	a,r6
   5303 C3            [12] 2821 	clr	c
   5304 13            [12] 2822 	rrc	a
   5305 CC            [12] 2823 	xch	a,r4
   5306 13            [12] 2824 	rrc	a
   5307 CC            [12] 2825 	xch	a,r4
   5308 C3            [12] 2826 	clr	c
   5309 13            [12] 2827 	rrc	a
   530A CC            [12] 2828 	xch	a,r4
   530B 13            [12] 2829 	rrc	a
   530C CC            [12] 2830 	xch	a,r4
   530D FD            [12] 2831 	mov	r5,a
   530E 78 45         [12] 2832 	mov	r0,#(_statistics + 0x0001)
   5310 EC            [12] 2833 	mov	a,r4
   5311 F2            [24] 2834 	movx	@r0,a
                           2835 ;	radio/tdm.c:647: if (duty_cycle_wait) {
   5312 30 2C 03      [24] 2836 	jnb	_duty_cycle_wait,00374$
   5315 02 4F AB      [24] 2837 	ljmp	00192$
   5318                    2838 00374$:
                           2839 ;	radio/tdm.c:654: if (tdm_state_remaining < packet_latency) {
   5318 78 BB         [12] 2840 	mov	r0,#_tdm_state_remaining
   531A 79 C2         [12] 2841 	mov	r1,#_packet_latency
   531C C3            [12] 2842 	clr	c
   531D E3            [24] 2843 	movx	a,@r1
   531E F5 F0         [12] 2844 	mov	b,a
   5320 E2            [24] 2845 	movx	a,@r0
   5321 95 F0         [12] 2846 	subb	a,b
   5323 09            [12] 2847 	inc	r1
   5324 E3            [24] 2848 	movx	a,@r1
   5325 F5 F0         [12] 2849 	mov	b,a
   5327 08            [12] 2850 	inc	r0
   5328 E2            [24] 2851 	movx	a,@r0
   5329 95 F0         [12] 2852 	subb	a,b
   532B 50 03         [24] 2853 	jnc	00375$
   532D 02 4F AB      [24] 2854 	ljmp	00192$
   5330                    2855 00375$:
                           2856 ;	radio/tdm.c:658: max_xmit = (tdm_state_remaining - packet_latency) / ticks_per_byte;
   5330 78 BB         [12] 2857 	mov	r0,#_tdm_state_remaining
   5332 79 C2         [12] 2858 	mov	r1,#_packet_latency
   5334 E3            [24] 2859 	movx	a,@r1
   5335 F5 F0         [12] 2860 	mov	b,a
   5337 C3            [12] 2861 	clr	c
   5338 E2            [24] 2862 	movx	a,@r0
   5339 95 F0         [12] 2863 	subb	a,b
   533B FE            [12] 2864 	mov	r6,a
   533C 09            [12] 2865 	inc	r1
   533D E3            [24] 2866 	movx	a,@r1
   533E F5 F0         [12] 2867 	mov	b,a
   5340 08            [12] 2868 	inc	r0
   5341 E2            [24] 2869 	movx	a,@r0
   5342 95 F0         [12] 2870 	subb	a,b
   5344 FF            [12] 2871 	mov	r7,a
   5345 78 C4         [12] 2872 	mov	r0,#_ticks_per_byte
   5347 90 05 73      [24] 2873 	mov	dptr,#__divuint_PARM_2
   534A E2            [24] 2874 	movx	a,@r0
   534B F0            [24] 2875 	movx	@dptr,a
   534C 08            [12] 2876 	inc	r0
   534D E2            [24] 2877 	movx	a,@r0
   534E A3            [24] 2878 	inc	dptr
   534F F0            [24] 2879 	movx	@dptr,a
   5350 8E 82         [24] 2880 	mov	dpl,r6
   5352 8F 83         [24] 2881 	mov	dph,r7
   5354 12 59 B5      [24] 2882 	lcall	__divuint
   5357 AE 82         [24] 2883 	mov	r6,dpl
   5359 AF 83         [24] 2884 	mov	r7,dph
                           2885 ;	radio/tdm.c:659: if (max_xmit < sizeof(trailer)+1) {
   535B BE 03 00      [24] 2886 	cjne	r6,#0x03,00376$
   535E                    2887 00376$:
   535E 50 03         [24] 2888 	jnc	00377$
   5360 02 4F AB      [24] 2889 	ljmp	00192$
   5363                    2890 00377$:
                           2891 ;	radio/tdm.c:663: max_xmit -= sizeof(trailer)+1;
   5363 1E            [12] 2892 	dec	r6
   5364 1E            [12] 2893 	dec	r6
   5365 1E            [12] 2894 	dec	r6
                           2895 ;	radio/tdm.c:664: if (max_xmit > max_data_packet_length) {
   5366 78 BF         [12] 2896 	mov	r0,#_max_data_packet_length
   5368 C3            [12] 2897 	clr	c
   5369 E2            [24] 2898 	movx	a,@r0
   536A 9E            [12] 2899 	subb	a,r6
   536B 50 04         [24] 2900 	jnc	00160$
                           2901 ;	radio/tdm.c:665: max_xmit = max_data_packet_length;
   536D 78 BF         [12] 2902 	mov	r0,#_max_data_packet_length
   536F E2            [24] 2903 	movx	a,@r0
   5370 FE            [12] 2904 	mov	r6,a
   5371                    2905 00160$:
                           2906 ;	radio/tdm.c:669: if (send_at_command && 
   5371 30 2E 57      [24] 2907 	jnb	_send_at_command,00162$
                           2908 ;	radio/tdm.c:670: max_xmit >= strlen(remote_at_cmd)) {
   5374 90 00 D6      [24] 2909 	mov	dptr,#_remote_at_cmd
   5377 75 F0 60      [24] 2910 	mov	b,#0x60
   537A C0 06         [24] 2911 	push	ar6
   537C 12 66 57      [24] 2912 	lcall	_strlen
   537F AD 82         [24] 2913 	mov	r5,dpl
   5381 AF 83         [24] 2914 	mov	r7,dph
   5383 D0 06         [24] 2915 	pop	ar6
   5385 8E 03         [24] 2916 	mov	ar3,r6
   5387 7C 00         [12] 2917 	mov	r4,#0x00
   5389 C3            [12] 2918 	clr	c
   538A EB            [12] 2919 	mov	a,r3
   538B 9D            [12] 2920 	subb	a,r5
   538C EC            [12] 2921 	mov	a,r4
   538D 9F            [12] 2922 	subb	a,r7
   538E 40 3B         [24] 2923 	jc	00162$
                           2924 ;	radio/tdm.c:672: len = strlen(remote_at_cmd);
   5390 90 00 D6      [24] 2925 	mov	dptr,#_remote_at_cmd
   5393 75 F0 60      [24] 2926 	mov	b,#0x60
   5396 C0 06         [24] 2927 	push	ar6
   5398 12 66 57      [24] 2928 	lcall	_strlen
   539B AD 82         [24] 2929 	mov	r5,dpl
   539D 78 ED         [12] 2930 	mov	r0,#_tdm_serial_loop_len_2_210
   539F ED            [12] 2931 	mov	a,r5
   53A0 F2            [24] 2932 	movx	@r0,a
                           2933 ;	radio/tdm.c:673: memcpy(pbuf, remote_at_cmd, len);
   53A1 90 05 C4      [24] 2934 	mov	dptr,#_memcpy_PARM_2
   53A4 74 D6         [12] 2935 	mov	a,#_remote_at_cmd
   53A6 F0            [24] 2936 	movx	@dptr,a
   53A7 E4            [12] 2937 	clr	a
   53A8 A3            [24] 2938 	inc	dptr
   53A9 F0            [24] 2939 	movx	@dptr,a
   53AA 74 60         [12] 2940 	mov	a,#0x60
   53AC A3            [24] 2941 	inc	dptr
   53AD F0            [24] 2942 	movx	@dptr,a
   53AE 90 05 C7      [24] 2943 	mov	dptr,#_memcpy_PARM_3
   53B1 ED            [12] 2944 	mov	a,r5
   53B2 F0            [24] 2945 	movx	@dptr,a
   53B3 E4            [12] 2946 	clr	a
   53B4 A3            [24] 2947 	inc	dptr
   53B5 F0            [24] 2948 	movx	@dptr,a
   53B6 90 04 75      [24] 2949 	mov	dptr,#_pbuf
   53B9 75 F0 00      [24] 2950 	mov	b,#0x00
   53BC 12 5F FA      [24] 2951 	lcall	_memcpy
   53BF D0 06         [24] 2952 	pop	ar6
                           2953 ;	radio/tdm.c:674: trailer.command = 1;
   53C1 78 D5         [12] 2954 	mov	r0,#(_trailer + 0x0001)
   53C3 E2            [24] 2955 	movx	a,@r0
   53C4 44 20         [12] 2956 	orl	a,#0x20
   53C6 F2            [24] 2957 	movx	@r0,a
                           2958 ;	radio/tdm.c:675: send_at_command = false;
   53C7 C2 2E         [12] 2959 	clr	_send_at_command
   53C9 80 26         [24] 2960 	sjmp	00163$
   53CB                    2961 00162$:
                           2962 ;	radio/tdm.c:678: len = packet_get_next(max_xmit, pbuf);
   53CB 78 68         [12] 2963 	mov	r0,#_packet_get_next_PARM_2
   53CD 74 75         [12] 2964 	mov	a,#_pbuf
   53CF F2            [24] 2965 	movx	@r0,a
   53D0 08            [12] 2966 	inc	r0
   53D1 74 04         [12] 2967 	mov	a,#(_pbuf >> 8)
   53D3 F2            [24] 2968 	movx	@r0,a
   53D4 8E 82         [24] 2969 	mov	dpl,r6
   53D6 C0 06         [24] 2970 	push	ar6
   53D8 12 20 C1      [24] 2971 	lcall	_packet_get_next
   53DB E5 82         [12] 2972 	mov	a,dpl
   53DD 78 ED         [12] 2973 	mov	r0,#_tdm_serial_loop_len_2_210
   53DF F2            [24] 2974 	movx	@r0,a
                           2975 ;	radio/tdm.c:679: trailer.command = packet_is_injected();
   53E0 12 25 63      [24] 2976 	lcall	_packet_is_injected
   53E3 D0 06         [24] 2977 	pop	ar6
   53E5 92 31         [24] 2978 	mov  _tdm_serial_loop_sloc0_1_0,c
   53E7 E4            [12] 2979 	clr	a
   53E8 33            [12] 2980 	rlc	a
   53E9 FF            [12] 2981 	mov	r7,a
   53EA 78 D5         [12] 2982 	mov	r0,#(_trailer + 0x0001)
   53EC 13            [12] 2983 	rrc	a
   53ED E2            [24] 2984 	movx	a,@r0
   53EE 92 E5         [24] 2985 	mov	acc.5,c
   53F0 F2            [24] 2986 	movx	@r0,a
   53F1                    2987 00163$:
                           2988 ;	radio/tdm.c:682: if (len > max_data_packet_length) {
   53F1 78 ED         [12] 2989 	mov	r0,#_tdm_serial_loop_len_2_210
   53F3 79 BF         [12] 2990 	mov	r1,#_max_data_packet_length
   53F5 C3            [12] 2991 	clr	c
   53F6 E2            [24] 2992 	movx	a,@r0
   53F7 F5 F0         [12] 2993 	mov	b,a
   53F9 E3            [24] 2994 	movx	a,@r1
   53FA 95 F0         [12] 2995 	subb	a,b
   53FC 50 19         [24] 2996 	jnc	00166$
                           2997 ;	radio/tdm.c:683: panic("oversized tdm packet");
   53FE C0 06         [24] 2998 	push	ar6
   5400 74 E1         [12] 2999 	mov	a,#__str_8
   5402 C0 E0         [24] 3000 	push	acc
   5404 74 CF         [12] 3001 	mov	a,#(__str_8 >> 8)
   5406 C0 E0         [24] 3002 	push	acc
   5408 74 80         [12] 3003 	mov	a,#0x80
   540A C0 E0         [24] 3004 	push	acc
   540C 12 13 04      [24] 3005 	lcall	_panic
   540F 15 81         [12] 3006 	dec	sp
   5411 15 81         [12] 3007 	dec	sp
   5413 15 81         [12] 3008 	dec	sp
   5415 D0 06         [24] 3009 	pop	ar6
   5417                    3010 00166$:
                           3011 ;	radio/tdm.c:686: trailer.bonus = (tdm_state == TDM_RECEIVE);
   5417 78 BA         [12] 3012 	mov	r0,#_tdm_state
   5419 E2            [24] 3013 	movx	a,@r0
   541A B4 02 03      [24] 3014 	cjne	a,#0x02,00382$
   541D D3            [12] 3015 	setb	c
   541E 80 01         [24] 3016 	sjmp	00383$
   5420                    3017 00382$:
   5420 C3            [12] 3018 	clr	c
   5421                    3019 00383$:
   5421 92 31         [24] 3020 	mov  _tdm_serial_loop_sloc0_1_0,c
   5423 E4            [12] 3021 	clr	a
   5424 33            [12] 3022 	rlc	a
   5425 78 D5         [12] 3023 	mov	r0,#(_trailer + 0x0001)
   5427 13            [12] 3024 	rrc	a
   5428 E2            [24] 3025 	movx	a,@r0
   5429 92 E6         [24] 3026 	mov	acc.6,c
   542B F2            [24] 3027 	movx	@r0,a
                           3028 ;	radio/tdm.c:687: trailer.resend = packet_is_resend();
   542C C0 06         [24] 3029 	push	ar6
   542E 12 25 60      [24] 3030 	lcall	_packet_is_resend
   5431 D0 06         [24] 3031 	pop	ar6
   5433 92 31         [24] 3032 	mov  _tdm_serial_loop_sloc0_1_0,c
   5435 E4            [12] 3033 	clr	a
   5436 33            [12] 3034 	rlc	a
   5437 FF            [12] 3035 	mov	r7,a
   5438 78 D5         [12] 3036 	mov	r0,#(_trailer + 0x0001)
   543A 13            [12] 3037 	rrc	a
   543B E2            [24] 3038 	movx	a,@r0
   543C 92 E7         [24] 3039 	mov	acc.7,c
   543E F2            [24] 3040 	movx	@r0,a
                           3041 ;	radio/tdm.c:689: if (tdm_state == TDM_TRANSMIT &&
   543F 78 BA         [12] 3042 	mov	r0,#_tdm_state
   5441 E2            [24] 3043 	movx	a,@r0
   5442 70 44         [24] 3044 	jnz	00168$
                           3045 ;	radio/tdm.c:690: len == 0 && 
   5444 78 ED         [12] 3046 	mov	r0,#_tdm_serial_loop_len_2_210
   5446 E2            [24] 3047 	movx	a,@r0
   5447 70 3F         [24] 3048 	jnz	00168$
                           3049 ;	radio/tdm.c:691: send_statistics && 
   5449 30 2D 3C      [24] 3050 	jnb	_send_statistics,00168$
                           3051 ;	radio/tdm.c:692: max_xmit >= sizeof(statistics)) {
   544C BE 04 00      [24] 3052 	cjne	r6,#0x04,00387$
   544F                    3053 00387$:
   544F 40 37         [24] 3054 	jc	00168$
                           3055 ;	radio/tdm.c:694: send_statistics = 0;
   5451 C2 2D         [12] 3056 	clr	_send_statistics
                           3057 ;	radio/tdm.c:695: memcpy(pbuf, &statistics, sizeof(statistics));
   5453 90 05 C4      [24] 3058 	mov	dptr,#_memcpy_PARM_2
   5456 74 44         [12] 3059 	mov	a,#_statistics
   5458 F0            [24] 3060 	movx	@dptr,a
   5459 E4            [12] 3061 	clr	a
   545A A3            [24] 3062 	inc	dptr
   545B F0            [24] 3063 	movx	@dptr,a
   545C 74 60         [12] 3064 	mov	a,#0x60
   545E A3            [24] 3065 	inc	dptr
   545F F0            [24] 3066 	movx	@dptr,a
   5460 90 05 C7      [24] 3067 	mov	dptr,#_memcpy_PARM_3
   5463 74 04         [12] 3068 	mov	a,#0x04
   5465 F0            [24] 3069 	movx	@dptr,a
   5466 E4            [12] 3070 	clr	a
   5467 A3            [24] 3071 	inc	dptr
   5468 F0            [24] 3072 	movx	@dptr,a
   5469 90 04 75      [24] 3073 	mov	dptr,#_pbuf
   546C 75 F0 00      [24] 3074 	mov	b,#0x00
   546F 12 5F FA      [24] 3075 	lcall	_memcpy
                           3076 ;	radio/tdm.c:696: len = sizeof(statistics);
   5472 78 ED         [12] 3077 	mov	r0,#_tdm_serial_loop_len_2_210
   5474 74 04         [12] 3078 	mov	a,#0x04
   5476 F2            [24] 3079 	movx	@r0,a
                           3080 ;	radio/tdm.c:699: trailer.window = 0;
   5477 78 D4         [12] 3081 	mov	r0,#_trailer
   5479 E4            [12] 3082 	clr	a
   547A F2            [24] 3083 	movx	@r0,a
   547B 08            [12] 3084 	inc	r0
   547C E2            [24] 3085 	movx	a,@r0
   547D 54 E0         [12] 3086 	anl	a,#0xE0
   547F F2            [24] 3087 	movx	@r0,a
                           3088 ;	radio/tdm.c:700: trailer.resend = 0;
   5480 78 D5         [12] 3089 	mov	r0,#(_trailer + 0x0001)
   5482 E2            [24] 3090 	movx	a,@r0
   5483 54 7F         [12] 3091 	anl	a,#0x7F
   5485 F2            [24] 3092 	movx	@r0,a
   5486 80 28         [24] 3093 	sjmp	00169$
   5488                    3094 00168$:
                           3095 ;	radio/tdm.c:705: trailer.window = (uint16_t)(tdm_state_remaining - flight_time_estimate(len+sizeof(trailer)));
   5488 78 ED         [12] 3096 	mov	r0,#_tdm_serial_loop_len_2_210
   548A E2            [24] 3097 	movx	a,@r0
   548B 24 02         [12] 3098 	add	a,#0x02
   548D F5 82         [12] 3099 	mov	dpl,a
   548F 12 48 C4      [24] 3100 	lcall	_flight_time_estimate
   5492 AE 82         [24] 3101 	mov	r6,dpl
   5494 AF 83         [24] 3102 	mov	r7,dph
   5496 78 BB         [12] 3103 	mov	r0,#_tdm_state_remaining
   5498 E2            [24] 3104 	movx	a,@r0
   5499 C3            [12] 3105 	clr	c
   549A 9E            [12] 3106 	subb	a,r6
   549B FE            [12] 3107 	mov	r6,a
   549C 08            [12] 3108 	inc	r0
   549D E2            [24] 3109 	movx	a,@r0
   549E 9F            [12] 3110 	subb	a,r7
   549F FF            [12] 3111 	mov	r7,a
   54A0 78 D4         [12] 3112 	mov	r0,#_trailer
   54A2 EE            [12] 3113 	mov	a,r6
   54A3 F2            [24] 3114 	movx	@r0,a
   54A4 08            [12] 3115 	inc	r0
   54A5 EF            [12] 3116 	mov	a,r7
   54A6 54 1F         [12] 3117 	anl	a,#0x1F
   54A8 F5 F0         [12] 3118 	mov	b,a
   54AA E2            [24] 3119 	movx	a,@r0
   54AB 54 E0         [12] 3120 	anl	a,#0xE0
   54AD 45 F0         [12] 3121 	orl	a,b
   54AF F2            [24] 3122 	movx	@r0,a
   54B0                    3123 00169$:
                           3124 ;	radio/tdm.c:709: radio_set_channel(fhop_transmit_channel());
   54B0 12 0D 13      [24] 3125 	lcall	_fhop_transmit_channel
   54B3 12 37 CE      [24] 3126 	lcall	_radio_set_channel
                           3127 ;	radio/tdm.c:711: memcpy(&pbuf[len], &trailer, sizeof(trailer));
   54B6 78 ED         [12] 3128 	mov	r0,#_tdm_serial_loop_len_2_210
   54B8 E2            [24] 3129 	movx	a,@r0
   54B9 24 75         [12] 3130 	add	a,#_pbuf
   54BB FE            [12] 3131 	mov	r6,a
   54BC E4            [12] 3132 	clr	a
   54BD 34 04         [12] 3133 	addc	a,#(_pbuf >> 8)
   54BF FF            [12] 3134 	mov	r7,a
   54C0 7D 00         [12] 3135 	mov	r5,#0x00
   54C2 90 05 C4      [24] 3136 	mov	dptr,#_memcpy_PARM_2
   54C5 74 D4         [12] 3137 	mov	a,#_trailer
   54C7 F0            [24] 3138 	movx	@dptr,a
   54C8 E4            [12] 3139 	clr	a
   54C9 A3            [24] 3140 	inc	dptr
   54CA F0            [24] 3141 	movx	@dptr,a
   54CB 74 60         [12] 3142 	mov	a,#0x60
   54CD A3            [24] 3143 	inc	dptr
   54CE F0            [24] 3144 	movx	@dptr,a
   54CF 90 05 C7      [24] 3145 	mov	dptr,#_memcpy_PARM_3
   54D2 74 02         [12] 3146 	mov	a,#0x02
   54D4 F0            [24] 3147 	movx	@dptr,a
   54D5 E4            [12] 3148 	clr	a
   54D6 A3            [24] 3149 	inc	dptr
   54D7 F0            [24] 3150 	movx	@dptr,a
   54D8 8E 82         [24] 3151 	mov	dpl,r6
   54DA 8F 83         [24] 3152 	mov	dph,r7
   54DC 8D F0         [24] 3153 	mov	b,r5
   54DE 12 5F FA      [24] 3154 	lcall	_memcpy
                           3155 ;	radio/tdm.c:713: if (len != 0 && trailer.window != 0) {
   54E1 78 ED         [12] 3156 	mov	r0,#_tdm_serial_loop_len_2_210
   54E3 E2            [24] 3157 	movx	a,@r0
   54E4 60 0E         [24] 3158 	jz	00174$
   54E6 78 D4         [12] 3159 	mov	r0,#_trailer
   54E8 E2            [24] 3160 	movx	a,@r0
   54E9 FE            [12] 3161 	mov	r6,a
   54EA 08            [12] 3162 	inc	r0
   54EB E2            [24] 3163 	movx	a,@r0
   54EC 54 1F         [12] 3164 	anl	a,#0x1F
   54EE FF            [12] 3165 	mov	r7,a
   54EF 4E            [12] 3166 	orl	a,r6
   54F0 60 02         [24] 3167 	jz	00174$
                           3168 ;	radio/tdm.c:715: LED_ACTIVITY = LED_ON;
   54F2 D2 96         [12] 3169 	setb	_LED_RED
   54F4                    3170 00174$:
                           3171 ;	radio/tdm.c:718: if (len == 0) {
   54F4 78 ED         [12] 3172 	mov	r0,#_tdm_serial_loop_len_2_210
   54F6 E2            [24] 3173 	movx	a,@r0
   54F7 70 02         [24] 3174 	jnz	00177$
                           3175 ;	radio/tdm.c:722: transmit_yield = 1;
   54F9 D2 29         [12] 3176 	setb	_transmit_yield
   54FB                    3177 00177$:
                           3178 ;	radio/tdm.c:728: transmit_wait = packet_latency;
   54FB 78 C2         [12] 3179 	mov	r0,#_packet_latency
   54FD E2            [24] 3180 	movx	a,@r0
   54FE FE            [12] 3181 	mov	r6,a
   54FF 08            [12] 3182 	inc	r0
   5500 E2            [24] 3183 	movx	a,@r0
   5501 FF            [12] 3184 	mov	r7,a
   5502 78 C6         [12] 3185 	mov	r0,#_transmit_wait
   5504 EE            [12] 3186 	mov	a,r6
   5505 F2            [24] 3187 	movx	@r0,a
   5506 08            [12] 3188 	inc	r0
   5507 EF            [12] 3189 	mov	a,r7
   5508 F2            [24] 3190 	movx	@r0,a
                           3191 ;	radio/tdm.c:732: if ((duty_cycle - duty_cycle_offset) != 100) {
   5509 78 C8         [12] 3192 	mov	r0,#_duty_cycle
   550B E2            [24] 3193 	movx	a,@r0
   550C FE            [12] 3194 	mov	r6,a
   550D 7F 00         [12] 3195 	mov	r7,#0x00
   550F 78 C9         [12] 3196 	mov	r0,#_duty_cycle_offset
   5511 E2            [24] 3197 	movx	a,@r0
   5512 FC            [12] 3198 	mov	r4,a
   5513 7D 00         [12] 3199 	mov	r5,#0x00
   5515 EE            [12] 3200 	mov	a,r6
   5516 C3            [12] 3201 	clr	c
   5517 9C            [12] 3202 	subb	a,r4
   5518 FE            [12] 3203 	mov	r6,a
   5519 EF            [12] 3204 	mov	a,r7
   551A 9D            [12] 3205 	subb	a,r5
   551B FF            [12] 3206 	mov	r7,a
   551C BE 64 05      [24] 3207 	cjne	r6,#0x64,00392$
   551F BF 00 02      [24] 3208 	cjne	r7,#0x00,00392$
   5522 80 17         [24] 3209 	sjmp	00179$
   5524                    3210 00392$:
                           3211 ;	radio/tdm.c:733: transmitted_ticks += flight_time_estimate(len+sizeof(trailer));
   5524 78 ED         [12] 3212 	mov	r0,#_tdm_serial_loop_len_2_210
   5526 E2            [24] 3213 	movx	a,@r0
   5527 24 02         [12] 3214 	add	a,#0x02
   5529 F5 82         [12] 3215 	mov	dpl,a
   552B 12 48 C4      [24] 3216 	lcall	_flight_time_estimate
   552E AE 82         [24] 3217 	mov	r6,dpl
   5530 AF 83         [24] 3218 	mov	r7,dph
   5532 78 CA         [12] 3219 	mov	r0,#_transmitted_ticks
   5534 E2            [24] 3220 	movx	a,@r0
   5535 2E            [12] 3221 	add	a,r6
   5536 F2            [24] 3222 	movx	@r0,a
   5537 08            [12] 3223 	inc	r0
   5538 E2            [24] 3224 	movx	a,@r0
   5539 3F            [12] 3225 	addc	a,r7
   553A F2            [24] 3226 	movx	@r0,a
   553B                    3227 00179$:
                           3228 ;	radio/tdm.c:737: if (!radio_transmit(len + sizeof(trailer), pbuf, tdm_state_remaining + (silence_period/2)) &&
   553B 78 ED         [12] 3229 	mov	r0,#_tdm_serial_loop_len_2_210
   553D E2            [24] 3230 	movx	a,@r0
   553E 24 02         [12] 3231 	add	a,#0x02
   5540 FF            [12] 3232 	mov	r7,a
   5541 78 C0         [12] 3233 	mov	r0,#_silence_period
   5543 E2            [24] 3234 	movx	a,@r0
   5544 FD            [12] 3235 	mov	r5,a
   5545 08            [12] 3236 	inc	r0
   5546 E2            [24] 3237 	movx	a,@r0
   5547 C3            [12] 3238 	clr	c
   5548 13            [12] 3239 	rrc	a
   5549 CD            [12] 3240 	xch	a,r5
   554A 13            [12] 3241 	rrc	a
   554B CD            [12] 3242 	xch	a,r5
   554C FE            [12] 3243 	mov	r6,a
   554D 78 BB         [12] 3244 	mov	r0,#_tdm_state_remaining
   554F E2            [24] 3245 	movx	a,@r0
   5550 2D            [12] 3246 	add	a,r5
   5551 FD            [12] 3247 	mov	r5,a
   5552 08            [12] 3248 	inc	r0
   5553 E2            [24] 3249 	movx	a,@r0
   5554 3E            [12] 3250 	addc	a,r6
   5555 FE            [12] 3251 	mov	r6,a
   5556 78 9A         [12] 3252 	mov	r0,#_radio_transmit_PARM_2
   5558 74 75         [12] 3253 	mov	a,#_pbuf
   555A F2            [24] 3254 	movx	@r0,a
   555B 08            [12] 3255 	inc	r0
   555C 74 04         [12] 3256 	mov	a,#(_pbuf >> 8)
   555E F2            [24] 3257 	movx	@r0,a
   555F 78 9C         [12] 3258 	mov	r0,#_radio_transmit_PARM_3
   5561 ED            [12] 3259 	mov	a,r5
   5562 F2            [24] 3260 	movx	@r0,a
   5563 08            [12] 3261 	inc	r0
   5564 EE            [12] 3262 	mov	a,r6
   5565 F2            [24] 3263 	movx	@r0,a
   5566 8F 82         [24] 3264 	mov	dpl,r7
   5568 12 36 3D      [24] 3265 	lcall	_radio_transmit
   556B 40 1A         [24] 3266 	jc	00181$
                           3267 ;	radio/tdm.c:738: len != 0 && trailer.window != 0 && trailer.command == 0) {
   556D 78 ED         [12] 3268 	mov	r0,#_tdm_serial_loop_len_2_210
   556F E2            [24] 3269 	movx	a,@r0
   5570 60 15         [24] 3270 	jz	00181$
   5572 78 D4         [12] 3271 	mov	r0,#_trailer
   5574 E2            [24] 3272 	movx	a,@r0
   5575 FE            [12] 3273 	mov	r6,a
   5576 08            [12] 3274 	inc	r0
   5577 E2            [24] 3275 	movx	a,@r0
   5578 54 1F         [12] 3276 	anl	a,#0x1F
   557A FF            [12] 3277 	mov	r7,a
   557B 4E            [12] 3278 	orl	a,r6
   557C 60 09         [24] 3279 	jz	00181$
   557E 78 D5         [12] 3280 	mov	r0,#(_trailer + 0x0001)
   5580 E2            [24] 3281 	movx	a,@r0
   5581 20 E5 03      [24] 3282 	jb	acc.5,00181$
                           3283 ;	radio/tdm.c:739: packet_force_resend();
   5584 12 25 66      [24] 3284 	lcall	_packet_force_resend
   5587                    3285 00181$:
                           3286 ;	radio/tdm.c:742: if (lbt_rssi != 0) {
   5587 78 CC         [12] 3287 	mov	r0,#_lbt_rssi
   5589 E2            [24] 3288 	movx	a,@r0
   558A 60 0C         [24] 3289 	jz	00186$
                           3290 ;	radio/tdm.c:744: lbt_listen_time = 0;
   558C 78 CD         [12] 3291 	mov	r0,#_lbt_listen_time
   558E E4            [12] 3292 	clr	a
   558F F2            [24] 3293 	movx	@r0,a
   5590 08            [12] 3294 	inc	r0
   5591 F2            [24] 3295 	movx	@r0,a
                           3296 ;	radio/tdm.c:745: lbt_rand = 0;
   5592 78 D1         [12] 3297 	mov	r0,#_lbt_rand
   5594 E4            [12] 3298 	clr	a
   5595 F2            [24] 3299 	movx	@r0,a
   5596 08            [12] 3300 	inc	r0
   5597 F2            [24] 3301 	movx	@r0,a
   5598                    3302 00186$:
                           3303 ;	radio/tdm.c:749: radio_set_channel(fhop_receive_channel());
   5598 12 0D 23      [24] 3304 	lcall	_fhop_receive_channel
   559B 12 37 CE      [24] 3305 	lcall	_radio_set_channel
                           3306 ;	radio/tdm.c:752: radio_receiver_on();
   559E 12 36 99      [24] 3307 	lcall	_radio_receiver_on
                           3308 ;	radio/tdm.c:754: if (len != 0 && trailer.window != 0) {
   55A1 78 ED         [12] 3309 	mov	r0,#_tdm_serial_loop_len_2_210
   55A3 E2            [24] 3310 	movx	a,@r0
   55A4 70 03         [24] 3311 	jnz	00398$
   55A6 02 4F AB      [24] 3312 	ljmp	00192$
   55A9                    3313 00398$:
   55A9 78 D4         [12] 3314 	mov	r0,#_trailer
   55AB E2            [24] 3315 	movx	a,@r0
   55AC FE            [12] 3316 	mov	r6,a
   55AD 08            [12] 3317 	inc	r0
   55AE E2            [24] 3318 	movx	a,@r0
   55AF 54 1F         [12] 3319 	anl	a,#0x1F
   55B1 FF            [12] 3320 	mov	r7,a
   55B2 4E            [12] 3321 	orl	a,r6
   55B3 70 03         [24] 3322 	jnz	00399$
   55B5 02 4F AB      [24] 3323 	ljmp	00192$
   55B8                    3324 00399$:
                           3325 ;	radio/tdm.c:755: LED_ACTIVITY = LED_OFF;
   55B8 C2 96         [12] 3326 	clr	_LED_RED
   55BA 02 4F AB      [24] 3327 	ljmp	00192$
                           3328 ;------------------------------------------------------------
                           3329 ;Allocation info for local variables in function 'tdm_init'
                           3330 ;------------------------------------------------------------
                           3331 ;sloc0                     Allocated with name '_tdm_init_sloc0_1_0'
                           3332 ;------------------------------------------------------------
                           3333 ;	radio/tdm.c:873: tdm_init(void)
                           3334 ;	-----------------------------------------
                           3335 ;	 function tdm_init
                           3336 ;	-----------------------------------------
   55BD                    3337 _tdm_init:
                           3338 ;	radio/tdm.c:876: __pdata uint8_t air_rate = radio_air_rate();
   55BD 12 32 F7      [24] 3339 	lcall	_radio_air_rate
   55C0 AF 82         [24] 3340 	mov	r7,dpl
                           3341 ;	radio/tdm.c:885: ticks_per_byte = (8+(8000000UL/(air_rate*1000UL)))/16;
   55C2 90 05 DA      [24] 3342 	mov	dptr,#__mullong_PARM_2
   55C5 EF            [12] 3343 	mov	a,r7
   55C6 F0            [24] 3344 	movx	@dptr,a
   55C7 E4            [12] 3345 	clr	a
   55C8 A3            [24] 3346 	inc	dptr
   55C9 F0            [24] 3347 	movx	@dptr,a
   55CA E4            [12] 3348 	clr	a
   55CB A3            [24] 3349 	inc	dptr
   55CC F0            [24] 3350 	movx	@dptr,a
   55CD E4            [12] 3351 	clr	a
   55CE A3            [24] 3352 	inc	dptr
   55CF F0            [24] 3353 	movx	@dptr,a
   55D0 90 03 E8      [24] 3354 	mov	dptr,#0x03E8
   55D3 E4            [12] 3355 	clr	a
   55D4 F5 F0         [12] 3356 	mov	b,a
   55D6 12 61 EF      [24] 3357 	lcall	__mullong
   55D9 AC 82         [24] 3358 	mov	r4,dpl
   55DB AD 83         [24] 3359 	mov	r5,dph
   55DD AE F0         [24] 3360 	mov	r6,b
   55DF FF            [12] 3361 	mov	r7,a
   55E0 90 05 B5      [24] 3362 	mov	dptr,#__divulong_PARM_2
   55E3 EC            [12] 3363 	mov	a,r4
   55E4 F0            [24] 3364 	movx	@dptr,a
   55E5 ED            [12] 3365 	mov	a,r5
   55E6 A3            [24] 3366 	inc	dptr
   55E7 F0            [24] 3367 	movx	@dptr,a
   55E8 EE            [12] 3368 	mov	a,r6
   55E9 A3            [24] 3369 	inc	dptr
   55EA F0            [24] 3370 	movx	@dptr,a
   55EB EF            [12] 3371 	mov	a,r7
   55EC A3            [24] 3372 	inc	dptr
   55ED F0            [24] 3373 	movx	@dptr,a
   55EE 90 12 00      [24] 3374 	mov	dptr,#0x1200
   55F1 75 F0 7A      [24] 3375 	mov	b,#0x7A
   55F4 E4            [12] 3376 	clr	a
   55F5 12 5E 91      [24] 3377 	lcall	__divulong
   55F8 AC 82         [24] 3378 	mov	r4,dpl
   55FA AD 83         [24] 3379 	mov	r5,dph
   55FC AE F0         [24] 3380 	mov	r6,b
   55FE FF            [12] 3381 	mov	r7,a
   55FF 74 08         [12] 3382 	mov	a,#0x08
   5601 2C            [12] 3383 	add	a,r4
   5602 FC            [12] 3384 	mov	r4,a
   5603 E4            [12] 3385 	clr	a
   5604 3D            [12] 3386 	addc	a,r5
   5605 FD            [12] 3387 	mov	r5,a
   5606 E4            [12] 3388 	clr	a
   5607 3E            [12] 3389 	addc	a,r6
   5608 FE            [12] 3390 	mov	r6,a
   5609 E4            [12] 3391 	clr	a
   560A 3F            [12] 3392 	addc	a,r7
   560B FF            [12] 3393 	mov	r7,a
   560C ED            [12] 3394 	mov	a,r5
   560D C4            [12] 3395 	swap	a
   560E CC            [12] 3396 	xch	a,r4
   560F C4            [12] 3397 	swap	a
   5610 54 0F         [12] 3398 	anl	a,#0x0F
   5612 6C            [12] 3399 	xrl	a,r4
   5613 CC            [12] 3400 	xch	a,r4
   5614 54 0F         [12] 3401 	anl	a,#0x0F
   5616 CC            [12] 3402 	xch	a,r4
   5617 6C            [12] 3403 	xrl	a,r4
   5618 CC            [12] 3404 	xch	a,r4
   5619 FD            [12] 3405 	mov	r5,a
   561A EE            [12] 3406 	mov	a,r6
   561B C4            [12] 3407 	swap	a
   561C 54 F0         [12] 3408 	anl	a,#0xF0
   561E 4D            [12] 3409 	orl	a,r5
   561F FD            [12] 3410 	mov	r5,a
   5620 EF            [12] 3411 	mov	a,r7
   5621 C4            [12] 3412 	swap	a
   5622 CE            [12] 3413 	xch	a,r6
   5623 C4            [12] 3414 	swap	a
   5624 54 0F         [12] 3415 	anl	a,#0x0F
   5626 6E            [12] 3416 	xrl	a,r6
   5627 CE            [12] 3417 	xch	a,r6
   5628 54 0F         [12] 3418 	anl	a,#0x0F
   562A CE            [12] 3419 	xch	a,r6
   562B 6E            [12] 3420 	xrl	a,r6
   562C CE            [12] 3421 	xch	a,r6
   562D 78 C4         [12] 3422 	mov	r0,#_ticks_per_byte
   562F EC            [12] 3423 	mov	a,r4
   5630 F2            [24] 3424 	movx	@r0,a
   5631 08            [12] 3425 	inc	r0
   5632 ED            [12] 3426 	mov	a,r5
   5633 F2            [24] 3427 	movx	@r0,a
                           3428 ;	radio/tdm.c:892: packet_latency = (8+(10/2)) * ticks_per_byte + 13;
   5634 90 05 CE      [24] 3429 	mov	dptr,#__mulint_PARM_2
   5637 EC            [12] 3430 	mov	a,r4
   5638 F0            [24] 3431 	movx	@dptr,a
   5639 ED            [12] 3432 	mov	a,r5
   563A A3            [24] 3433 	inc	dptr
   563B F0            [24] 3434 	movx	@dptr,a
   563C 90 00 0D      [24] 3435 	mov	dptr,#0x000D
   563F C0 05         [24] 3436 	push	ar5
   5641 C0 04         [24] 3437 	push	ar4
   5643 12 60 D2      [24] 3438 	lcall	__mulint
   5646 E5 82         [12] 3439 	mov	a,dpl
   5648 85 83 F0      [24] 3440 	mov	b,dph
   564B D0 04         [24] 3441 	pop	ar4
   564D D0 05         [24] 3442 	pop	ar5
   564F 24 0D         [12] 3443 	add	a,#0x0D
   5651 FE            [12] 3444 	mov	r6,a
   5652 E4            [12] 3445 	clr	a
   5653 35 F0         [12] 3446 	addc	a,b
   5655 FF            [12] 3447 	mov	r7,a
   5656 78 C2         [12] 3448 	mov	r0,#_packet_latency
   5658 EE            [12] 3449 	mov	a,r6
   5659 F2            [24] 3450 	movx	@r0,a
   565A 08            [12] 3451 	inc	r0
   565B EF            [12] 3452 	mov	a,r7
   565C F2            [24] 3453 	movx	@r0,a
                           3454 ;	radio/tdm.c:894: if (feature_golay) {
   565D 30 05 2E      [24] 3455 	jnb	_feature_golay,00102$
                           3456 ;	radio/tdm.c:895: max_data_packet_length = (MAX_PACKET_LENGTH/2) - (6+sizeof(trailer));
   5660 78 BF         [12] 3457 	mov	r0,#_max_data_packet_length
   5662 74 76         [12] 3458 	mov	a,#0x76
   5664 F2            [24] 3459 	movx	@r0,a
                           3460 ;	radio/tdm.c:898: ticks_per_byte *= 2;
   5665 ED            [12] 3461 	mov	a,r5
   5666 CC            [12] 3462 	xch	a,r4
   5667 25 E0         [12] 3463 	add	a,acc
   5669 CC            [12] 3464 	xch	a,r4
   566A 33            [12] 3465 	rlc	a
   566B FD            [12] 3466 	mov	r5,a
   566C 78 C4         [12] 3467 	mov	r0,#_ticks_per_byte
   566E EC            [12] 3468 	mov	a,r4
   566F F2            [24] 3469 	movx	@r0,a
   5670 08            [12] 3470 	inc	r0
   5671 ED            [12] 3471 	mov	a,r5
   5672 F2            [24] 3472 	movx	@r0,a
                           3473 ;	radio/tdm.c:901: packet_latency += 4*ticks_per_byte;
   5673 ED            [12] 3474 	mov	a,r5
   5674 CC            [12] 3475 	xch	a,r4
   5675 25 E0         [12] 3476 	add	a,acc
   5677 CC            [12] 3477 	xch	a,r4
   5678 33            [12] 3478 	rlc	a
   5679 CC            [12] 3479 	xch	a,r4
   567A 25 E0         [12] 3480 	add	a,acc
   567C CC            [12] 3481 	xch	a,r4
   567D 33            [12] 3482 	rlc	a
   567E FD            [12] 3483 	mov	r5,a
   567F EC            [12] 3484 	mov	a,r4
   5680 2E            [12] 3485 	add	a,r6
   5681 FE            [12] 3486 	mov	r6,a
   5682 ED            [12] 3487 	mov	a,r5
   5683 3F            [12] 3488 	addc	a,r7
   5684 FF            [12] 3489 	mov	r7,a
   5685 78 C2         [12] 3490 	mov	r0,#_packet_latency
   5687 EE            [12] 3491 	mov	a,r6
   5688 F2            [24] 3492 	movx	@r0,a
   5689 08            [12] 3493 	inc	r0
   568A EF            [12] 3494 	mov	a,r7
   568B F2            [24] 3495 	movx	@r0,a
   568C 80 05         [24] 3496 	sjmp	00103$
   568E                    3497 00102$:
                           3498 ;	radio/tdm.c:903: max_data_packet_length = MAX_PACKET_LENGTH - sizeof(trailer);
   568E 78 BF         [12] 3499 	mov	r0,#_max_data_packet_length
   5690 74 FA         [12] 3500 	mov	a,#0xFA
   5692 F2            [24] 3501 	movx	@r0,a
   5693                    3502 00103$:
                           3503 ;	radio/tdm.c:907: silence_period = 2*packet_latency;
   5693 78 C2         [12] 3504 	mov	r0,#_packet_latency
   5695 79 C0         [12] 3505 	mov	r1,#_silence_period
   5697 E2            [24] 3506 	movx	a,@r0
   5698 F3            [24] 3507 	movx	@r1,a
   5699 08            [12] 3508 	inc	r0
   569A E2            [24] 3509 	movx	a,@r0
   569B F5 F0         [12] 3510 	mov	b,a
   569D E3            [24] 3511 	movx	a,@r1
   569E 25 E0         [12] 3512 	add	a,acc
   56A0 C5 F0         [12] 3513 	xch	a,b
   56A2 33            [12] 3514 	rlc	a
   56A3 C5 F0         [12] 3515 	xch	a,b
   56A5 F3            [24] 3516 	movx	@r1,a
   56A6 09            [12] 3517 	inc	r1
   56A7 E5 F0         [12] 3518 	mov	a,b
   56A9 F3            [24] 3519 	movx	@r1,a
                           3520 ;	radio/tdm.c:910: window_width = 3*(packet_latency+(max_data_packet_length*(uint32_t)ticks_per_byte));
   56AA 78 C4         [12] 3521 	mov	r0,#_ticks_per_byte
   56AC 90 05 DA      [24] 3522 	mov	dptr,#__mullong_PARM_2
   56AF E2            [24] 3523 	movx	a,@r0
   56B0 F0            [24] 3524 	movx	@dptr,a
   56B1 08            [12] 3525 	inc	r0
   56B2 E2            [24] 3526 	movx	a,@r0
   56B3 A3            [24] 3527 	inc	dptr
   56B4 F0            [24] 3528 	movx	@dptr,a
   56B5 E4            [12] 3529 	clr	a
   56B6 A3            [24] 3530 	inc	dptr
   56B7 F0            [24] 3531 	movx	@dptr,a
   56B8 E4            [12] 3532 	clr	a
   56B9 A3            [24] 3533 	inc	dptr
   56BA F0            [24] 3534 	movx	@dptr,a
   56BB 78 BF         [12] 3535 	mov	r0,#_max_data_packet_length
   56BD E2            [24] 3536 	movx	a,@r0
   56BE FC            [12] 3537 	mov	r4,a
   56BF 7D 00         [12] 3538 	mov	r5,#0x00
   56C1 7E 00         [12] 3539 	mov	r6,#0x00
   56C3 7F 00         [12] 3540 	mov	r7,#0x00
   56C5 8C 82         [24] 3541 	mov	dpl,r4
   56C7 8D 83         [24] 3542 	mov	dph,r5
   56C9 8E F0         [24] 3543 	mov	b,r6
   56CB EF            [12] 3544 	mov	a,r7
   56CC 12 61 EF      [24] 3545 	lcall	__mullong
   56CF 85 82 6C      [24] 3546 	mov	_tdm_init_sloc0_1_0,dpl
   56D2 85 83 6D      [24] 3547 	mov	(_tdm_init_sloc0_1_0 + 1),dph
   56D5 85 F0 6E      [24] 3548 	mov	(_tdm_init_sloc0_1_0 + 2),b
   56D8 F5 6F         [12] 3549 	mov	(_tdm_init_sloc0_1_0 + 3),a
   56DA 78 C2         [12] 3550 	mov	r0,#_packet_latency
   56DC E2            [24] 3551 	movx	a,@r0
   56DD FA            [12] 3552 	mov	r2,a
   56DE 08            [12] 3553 	inc	r0
   56DF E2            [24] 3554 	movx	a,@r0
   56E0 FB            [12] 3555 	mov	r3,a
   56E1 7E 00         [12] 3556 	mov	r6,#0x00
   56E3 7F 00         [12] 3557 	mov	r7,#0x00
   56E5 90 05 DA      [24] 3558 	mov	dptr,#__mullong_PARM_2
   56E8 E5 6C         [12] 3559 	mov	a,_tdm_init_sloc0_1_0
   56EA 2A            [12] 3560 	add	a,r2
   56EB F0            [24] 3561 	movx	@dptr,a
   56EC E5 6D         [12] 3562 	mov	a,(_tdm_init_sloc0_1_0 + 1)
   56EE 3B            [12] 3563 	addc	a,r3
   56EF A3            [24] 3564 	inc	dptr
   56F0 F0            [24] 3565 	movx	@dptr,a
   56F1 E5 6E         [12] 3566 	mov	a,(_tdm_init_sloc0_1_0 + 2)
   56F3 3E            [12] 3567 	addc	a,r6
   56F4 A3            [24] 3568 	inc	dptr
   56F5 F0            [24] 3569 	movx	@dptr,a
   56F6 E5 6F         [12] 3570 	mov	a,(_tdm_init_sloc0_1_0 + 3)
   56F8 3F            [12] 3571 	addc	a,r7
   56F9 A3            [24] 3572 	inc	dptr
   56FA F0            [24] 3573 	movx	@dptr,a
   56FB 90 00 03      [24] 3574 	mov	dptr,#(0x03&0x00ff)
   56FE E4            [12] 3575 	clr	a
   56FF F5 F0         [12] 3576 	mov	b,a
   5701 12 61 EF      [24] 3577 	lcall	__mullong
   5704 AC 82         [24] 3578 	mov	r4,dpl
   5706 AD 83         [24] 3579 	mov	r5,dph
   5708 AE F0         [24] 3580 	mov	r6,b
   570A FF            [12] 3581 	mov	r7,a
                           3582 ;	radio/tdm.c:913: if (lbt_rssi != 0) {
   570B 78 CC         [12] 3583 	mov	r0,#_lbt_rssi
   570D E2            [24] 3584 	movx	a,@r0
   570E 60 35         [24] 3585 	jz	00105$
                           3586 ;	radio/tdm.c:915: lbt_min_time = LBT_MIN_TIME_USEC/16;
   5710 78 CF         [12] 3587 	mov	r0,#_lbt_min_time
   5712 74 38         [12] 3588 	mov	a,#0x38
   5714 F2            [24] 3589 	movx	@r0,a
   5715 08            [12] 3590 	inc	r0
   5716 74 01         [12] 3591 	mov	a,#0x01
   5718 F2            [24] 3592 	movx	@r0,a
                           3593 ;	radio/tdm.c:916: window_width = constrain(window_width, 3*lbt_min_time, window_width);
   5719 78 73         [12] 3594 	mov	r0,#_constrain_PARM_2
   571B 74 A8         [12] 3595 	mov	a,#0xA8
   571D F2            [24] 3596 	movx	@r0,a
   571E 08            [12] 3597 	inc	r0
   571F 74 03         [12] 3598 	mov	a,#0x03
   5721 F2            [24] 3599 	movx	@r0,a
   5722 08            [12] 3600 	inc	r0
   5723 E4            [12] 3601 	clr	a
   5724 F2            [24] 3602 	movx	@r0,a
   5725 08            [12] 3603 	inc	r0
   5726 F2            [24] 3604 	movx	@r0,a
   5727 78 77         [12] 3605 	mov	r0,#_constrain_PARM_3
   5729 EC            [12] 3606 	mov	a,r4
   572A F2            [24] 3607 	movx	@r0,a
   572B 08            [12] 3608 	inc	r0
   572C ED            [12] 3609 	mov	a,r5
   572D F2            [24] 3610 	movx	@r0,a
   572E 08            [12] 3611 	inc	r0
   572F EE            [12] 3612 	mov	a,r6
   5730 F2            [24] 3613 	movx	@r0,a
   5731 08            [12] 3614 	inc	r0
   5732 EF            [12] 3615 	mov	a,r7
   5733 F2            [24] 3616 	movx	@r0,a
   5734 8C 82         [24] 3617 	mov	dpl,r4
   5736 8D 83         [24] 3618 	mov	dph,r5
   5738 8E F0         [24] 3619 	mov	b,r6
   573A EF            [12] 3620 	mov	a,r7
   573B 12 2B 9B      [24] 3621 	lcall	_constrain
   573E AC 82         [24] 3622 	mov	r4,dpl
   5740 AD 83         [24] 3623 	mov	r5,dph
   5742 AE F0         [24] 3624 	mov	r6,b
   5744 FF            [12] 3625 	mov	r7,a
   5745                    3626 00105$:
                           3627 ;	radio/tdm.c:921: if (window_width >= REGULATORY_MAX_WINDOW) {
   5745 C3            [12] 3628 	clr	c
   5746 EC            [12] 3629 	mov	a,r4
   5747 94 A8         [12] 3630 	subb	a,#0xA8
   5749 ED            [12] 3631 	mov	a,r5
   574A 94 61         [12] 3632 	subb	a,#0x61
   574C EE            [12] 3633 	mov	a,r6
   574D 94 00         [12] 3634 	subb	a,#0x00
   574F EF            [12] 3635 	mov	a,r7
   5750 94 00         [12] 3636 	subb	a,#0x00
   5752 40 08         [24] 3637 	jc	00108$
                           3638 ;	radio/tdm.c:922: window_width = REGULATORY_MAX_WINDOW;
   5754 7C A8         [12] 3639 	mov	r4,#0xA8
   5756 7D 61         [12] 3640 	mov	r5,#0x61
   5758 7E 00         [12] 3641 	mov	r6,#0x00
   575A 7F 00         [12] 3642 	mov	r7,#0x00
                           3643 ;	radio/tdm.c:926: while (window_width > 0x1FFF) {
   575C                    3644 00108$:
   575C ED            [12] 3645 	mov	a,r5
   575D 54 E0         [12] 3646 	anl	a,#0xE0
   575F 70 06         [24] 3647 	jnz	00136$
   5761 EE            [12] 3648 	mov	a,r6
   5762 70 03         [24] 3649 	jnz	00136$
   5764 EF            [12] 3650 	mov	a,r7
   5765 60 0A         [24] 3651 	jz	00110$
   5767                    3652 00136$:
                           3653 ;	radio/tdm.c:927: window_width = 0x1FFF;
   5767 7C FF         [12] 3654 	mov	r4,#0xFF
   5769 7D 1F         [12] 3655 	mov	r5,#0x1F
   576B 7E 00         [12] 3656 	mov	r6,#0x00
   576D 7F 00         [12] 3657 	mov	r7,#0x00
   576F 80 EB         [24] 3658 	sjmp	00108$
   5771                    3659 00110$:
                           3660 ;	radio/tdm.c:930: tx_window_width = window_width;
   5771 78 BD         [12] 3661 	mov	r0,#_tx_window_width
   5773 EC            [12] 3662 	mov	a,r4
   5774 F2            [24] 3663 	movx	@r0,a
   5775 08            [12] 3664 	inc	r0
   5776 ED            [12] 3665 	mov	a,r5
   5777 F2            [24] 3666 	movx	@r0,a
                           3667 ;	radio/tdm.c:935: packet_latency += ((settings.preamble_length-10)/2) * ticks_per_byte;
   5778 78 8D         [12] 3668 	mov	r0,#(_settings + 0x000b)
   577A E2            [24] 3669 	movx	a,@r0
   577B 7E 00         [12] 3670 	mov	r6,#0x00
   577D 24 F6         [12] 3671 	add	a,#0xF6
   577F FF            [12] 3672 	mov	r7,a
   5780 EE            [12] 3673 	mov	a,r6
   5781 34 FF         [12] 3674 	addc	a,#0xFF
   5783 FE            [12] 3675 	mov	r6,a
   5784 90 05 EB      [24] 3676 	mov	dptr,#__divsint_PARM_2
   5787 74 02         [12] 3677 	mov	a,#0x02
   5789 F0            [24] 3678 	movx	@dptr,a
   578A E4            [12] 3679 	clr	a
   578B A3            [24] 3680 	inc	dptr
   578C F0            [24] 3681 	movx	@dptr,a
   578D 8F 82         [24] 3682 	mov	dpl,r7
   578F 8E 83         [24] 3683 	mov	dph,r6
   5791 C0 05         [24] 3684 	push	ar5
   5793 C0 04         [24] 3685 	push	ar4
   5795 12 63 DE      [24] 3686 	lcall	__divsint
   5798 AE 82         [24] 3687 	mov	r6,dpl
   579A AF 83         [24] 3688 	mov	r7,dph
   579C 78 C4         [12] 3689 	mov	r0,#_ticks_per_byte
   579E 90 05 CE      [24] 3690 	mov	dptr,#__mulint_PARM_2
   57A1 E2            [24] 3691 	movx	a,@r0
   57A2 F0            [24] 3692 	movx	@dptr,a
   57A3 08            [12] 3693 	inc	r0
   57A4 E2            [24] 3694 	movx	a,@r0
   57A5 A3            [24] 3695 	inc	dptr
   57A6 F0            [24] 3696 	movx	@dptr,a
   57A7 8E 82         [24] 3697 	mov	dpl,r6
   57A9 8F 83         [24] 3698 	mov	dph,r7
   57AB 12 60 D2      [24] 3699 	lcall	__mulint
   57AE AE 82         [24] 3700 	mov	r6,dpl
   57B0 AF 83         [24] 3701 	mov	r7,dph
   57B2 D0 04         [24] 3702 	pop	ar4
   57B4 D0 05         [24] 3703 	pop	ar5
   57B6 78 C2         [12] 3704 	mov	r0,#_packet_latency
   57B8 E2            [24] 3705 	movx	a,@r0
   57B9 2E            [12] 3706 	add	a,r6
   57BA F2            [24] 3707 	movx	@r0,a
   57BB 08            [12] 3708 	inc	r0
   57BC E2            [24] 3709 	movx	a,@r0
   57BD 3F            [12] 3710 	addc	a,r7
   57BE F2            [24] 3711 	movx	@r0,a
                           3712 ;	radio/tdm.c:939: i = (tx_window_width - packet_latency) / ticks_per_byte;
   57BF 78 C2         [12] 3713 	mov	r0,#_packet_latency
   57C1 D3            [12] 3714 	setb	c
   57C2 E2            [24] 3715 	movx	a,@r0
   57C3 9C            [12] 3716 	subb	a,r4
   57C4 F4            [12] 3717 	cpl	a
   57C5 B3            [12] 3718 	cpl	c
   57C6 FC            [12] 3719 	mov	r4,a
   57C7 B3            [12] 3720 	cpl	c
   57C8 08            [12] 3721 	inc	r0
   57C9 E2            [24] 3722 	movx	a,@r0
   57CA 9D            [12] 3723 	subb	a,r5
   57CB F4            [12] 3724 	cpl	a
   57CC FD            [12] 3725 	mov	r5,a
   57CD 78 C4         [12] 3726 	mov	r0,#_ticks_per_byte
   57CF 90 05 73      [24] 3727 	mov	dptr,#__divuint_PARM_2
   57D2 E2            [24] 3728 	movx	a,@r0
   57D3 F0            [24] 3729 	movx	@dptr,a
   57D4 08            [12] 3730 	inc	r0
   57D5 E2            [24] 3731 	movx	a,@r0
   57D6 A3            [24] 3732 	inc	dptr
   57D7 F0            [24] 3733 	movx	@dptr,a
   57D8 8C 82         [24] 3734 	mov	dpl,r4
   57DA 8D 83         [24] 3735 	mov	dph,r5
   57DC 12 59 B5      [24] 3736 	lcall	__divuint
   57DF AE 82         [24] 3737 	mov	r6,dpl
   57E1 AF 83         [24] 3738 	mov	r7,dph
                           3739 ;	radio/tdm.c:940: if (i > max_data_packet_length) {
   57E3 78 BF         [12] 3740 	mov	r0,#_max_data_packet_length
   57E5 E2            [24] 3741 	movx	a,@r0
   57E6 FC            [12] 3742 	mov	r4,a
   57E7 7D 00         [12] 3743 	mov	r5,#0x00
   57E9 C3            [12] 3744 	clr	c
   57EA EC            [12] 3745 	mov	a,r4
   57EB 9E            [12] 3746 	subb	a,r6
   57EC ED            [12] 3747 	mov	a,r5
   57ED 9F            [12] 3748 	subb	a,r7
   57EE 50 04         [24] 3749 	jnc	00112$
                           3750 ;	radio/tdm.c:941: i = max_data_packet_length;
   57F0 8C 06         [24] 3751 	mov	ar6,r4
   57F2 8D 07         [24] 3752 	mov	ar7,r5
   57F4                    3753 00112$:
                           3754 ;	radio/tdm.c:943: packet_set_max_xmit(i);
   57F4 8E 82         [24] 3755 	mov	dpl,r6
   57F6 12 25 69      [24] 3756 	lcall	_packet_set_max_xmit
                           3757 ;	radio/tdm.c:946: TDM_SYNC_PIN = false;
   57F9 C2 A6         [12] 3758 	clr	_TDM_SYNC_PIN
   57FB 22            [24] 3759 	ret
                           3760 ;------------------------------------------------------------
                           3761 ;Allocation info for local variables in function 'tdm_report_timing'
                           3762 ;------------------------------------------------------------
                           3763 ;	radio/tdm.c:960: tdm_report_timing(void)
                           3764 ;	-----------------------------------------
                           3765 ;	 function tdm_report_timing
                           3766 ;	-----------------------------------------
   57FC                    3767 _tdm_report_timing:
                           3768 ;	radio/tdm.c:962: printf("silence_period: %u\n", (unsigned)silence_period); delay_msec(1);
   57FC 78 C0         [12] 3769 	mov	r0,#_silence_period
   57FE E2            [24] 3770 	movx	a,@r0
   57FF C0 E0         [24] 3771 	push	acc
   5801 08            [12] 3772 	inc	r0
   5802 E2            [24] 3773 	movx	a,@r0
   5803 C0 E0         [24] 3774 	push	acc
   5805 74 F6         [12] 3775 	mov	a,#__str_9
   5807 C0 E0         [24] 3776 	push	acc
   5809 74 CF         [12] 3777 	mov	a,#(__str_9 >> 8)
   580B C0 E0         [24] 3778 	push	acc
   580D 74 80         [12] 3779 	mov	a,#0x80
   580F C0 E0         [24] 3780 	push	acc
   5811 12 30 0B      [24] 3781 	lcall	_printfl
   5814 E5 81         [12] 3782 	mov	a,sp
   5816 24 FB         [12] 3783 	add	a,#0xfb
   5818 F5 81         [12] 3784 	mov	sp,a
   581A 90 00 01      [24] 3785 	mov	dptr,#0x0001
   581D 12 58 EA      [24] 3786 	lcall	_delay_msec
                           3787 ;	radio/tdm.c:963: printf("tx_window_width: %u\n", (unsigned)tx_window_width); delay_msec(1);
   5820 78 BD         [12] 3788 	mov	r0,#_tx_window_width
   5822 E2            [24] 3789 	movx	a,@r0
   5823 C0 E0         [24] 3790 	push	acc
   5825 08            [12] 3791 	inc	r0
   5826 E2            [24] 3792 	movx	a,@r0
   5827 C0 E0         [24] 3793 	push	acc
   5829 74 0A         [12] 3794 	mov	a,#__str_10
   582B C0 E0         [24] 3795 	push	acc
   582D 74 D0         [12] 3796 	mov	a,#(__str_10 >> 8)
   582F C0 E0         [24] 3797 	push	acc
   5831 74 80         [12] 3798 	mov	a,#0x80
   5833 C0 E0         [24] 3799 	push	acc
   5835 12 30 0B      [24] 3800 	lcall	_printfl
   5838 E5 81         [12] 3801 	mov	a,sp
   583A 24 FB         [12] 3802 	add	a,#0xfb
   583C F5 81         [12] 3803 	mov	sp,a
   583E 90 00 01      [24] 3804 	mov	dptr,#0x0001
   5841 12 58 EA      [24] 3805 	lcall	_delay_msec
                           3806 ;	radio/tdm.c:964: printf("max_data_packet_length: %u\n", (unsigned)max_data_packet_length); delay_msec(1);
   5844 78 BF         [12] 3807 	mov	r0,#_max_data_packet_length
   5846 E2            [24] 3808 	movx	a,@r0
   5847 FE            [12] 3809 	mov	r6,a
   5848 7F 00         [12] 3810 	mov	r7,#0x00
   584A C0 06         [24] 3811 	push	ar6
   584C C0 07         [24] 3812 	push	ar7
   584E 74 1F         [12] 3813 	mov	a,#__str_11
   5850 C0 E0         [24] 3814 	push	acc
   5852 74 D0         [12] 3815 	mov	a,#(__str_11 >> 8)
   5854 C0 E0         [24] 3816 	push	acc
   5856 74 80         [12] 3817 	mov	a,#0x80
   5858 C0 E0         [24] 3818 	push	acc
   585A 12 30 0B      [24] 3819 	lcall	_printfl
   585D E5 81         [12] 3820 	mov	a,sp
   585F 24 FB         [12] 3821 	add	a,#0xfb
   5861 F5 81         [12] 3822 	mov	sp,a
   5863 90 00 01      [24] 3823 	mov	dptr,#0x0001
   5866 02 58 EA      [24] 3824 	ljmp	_delay_msec
                           3825 	.area CSEG    (CODE)
                           3826 	.area CONST   (CODE)
   CF13                    3827 __str_0:
   CF13 4C 2F 52 20 52 53  3828 	.ascii "L/R RSSI: %u/%u  L/R noise: %u/%u pkts: %u "
        53 49 3A 20 25 75
        2F 25 75 20 20 4C
        2F 52 20 6E 6F 69
        73 65 3A 20 25 75
        2F 25 75 20 70 6B
        74 73 3A 20 25 75
        20
   CF3E 00                 3829 	.db 0x00
   CF3F                    3830 __str_1:
   CF3F 20 74 78 65 3D 25  3831 	.ascii " txe=%u rxe=%u stx=%u srx=%u ecc=%u/%u temp=%d dco=%u"
        75 20 72 78 65 3D
        25 75 20 73 74 78
        3D 25 75 20 73 72
        78 3D 25 75 20 65
        63 63 3D 25 75 2F
        25 75 20 74 65 6D
        70 3D 25 64 20 64
        63 6F 3D 25 75
   CF74 0A                 3832 	.db 0x0A
   CF75 00                 3833 	.db 0x00
   CF76                    3834 __str_2:
   CF76 54 44 4D 3A 20 25  3835 	.ascii "TDM: %u/%u len=%u "
        75 2F 25 75 20 6C
        65 6E 3D 25 75 20
   CF88 00                 3836 	.db 0x00
   CF89                    3837 __str_3:
   CF89 20 64 65 6C 74 61  3838 	.ascii " delta: %d"
        3A 20 25 64
   CF93 0A                 3839 	.db 0x0A
   CF94 00                 3840 	.db 0x00
   CF95                    3841 __str_4:
   CF95 54 44 4D 3A 20 63  3842 	.ascii "TDM: change timing %u/%u"
        68 61 6E 67 65 20
        74 69 6D 69 6E 67
        20 25 75 2F 25 75
   CFAD 0A                 3843 	.db 0x0A
   CFAE 00                 3844 	.db 0x00
   CFAF                    3845 __str_5:
   CFAF 54 44 4D 3A 20 73  3846 	.ascii "TDM: scanning"
        63 61 6E 6E 69 6E
        67
   CFBC 0A                 3847 	.db 0x0A
   CFBD 00                 3848 	.db 0x00
   CFBE                    3849 __str_6:
   CFBE 73 74 61 63 6B 20  3850 	.ascii "stack blown"
        62 6C 6F 77 6E
   CFC9 0A                 3851 	.db 0x0A
   CFCA 00                 3852 	.db 0x00
   CFCB                    3853 __str_7:
   CFCB 70 64 61 74 61 20  3854 	.ascii "pdata canary changed"
        63 61 6E 61 72 79
        20 63 68 61 6E 67
        65 64
   CFDF 0A                 3855 	.db 0x0A
   CFE0 00                 3856 	.db 0x00
   CFE1                    3857 __str_8:
   CFE1 6F 76 65 72 73 69  3858 	.ascii "oversized tdm packet"
        7A 65 64 20 74 64
        6D 20 70 61 63 6B
        65 74
   CFF5 00                 3859 	.db 0x00
   CFF6                    3860 __str_9:
   CFF6 73 69 6C 65 6E 63  3861 	.ascii "silence_period: %u"
        65 5F 70 65 72 69
        6F 64 3A 20 25 75
   D008 0A                 3862 	.db 0x0A
   D009 00                 3863 	.db 0x00
   D00A                    3864 __str_10:
   D00A 74 78 5F 77 69 6E  3865 	.ascii "tx_window_width: %u"
        64 6F 77 5F 77 69
        64 74 68 3A 20 25
        75
   D01D 0A                 3866 	.db 0x0A
   D01E 00                 3867 	.db 0x00
   D01F                    3868 __str_11:
   D01F 6D 61 78 5F 64 61  3869 	.ascii "max_data_packet_length: %u"
        74 61 5F 70 61 63
        6B 65 74 5F 6C 65
        6E 67 74 68 3A 20
        25 75
   D039 0A                 3870 	.db 0x0A
   D03A 00                 3871 	.db 0x00
                           3872 	.area XINIT   (CODE)
                           3873 	.area CABS    (ABS,CODE)
