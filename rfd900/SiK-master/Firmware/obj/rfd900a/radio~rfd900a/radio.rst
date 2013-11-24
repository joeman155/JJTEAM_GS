                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:10 2013
                              5 ;--------------------------------------------------------
                              6 	.module radio
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _Receiver_ISR
                             13 	.globl _crc16
                             14 	.globl _golay_decode
                             15 	.globl _golay_encode
                             16 	.globl _delay_msec
                             17 	.globl _delay_expired
                             18 	.globl _delay_set
                             19 	.globl _timer2_tick
                             20 	.globl _panic
                             21 	.globl _calibration_get
                             22 	.globl _param_get
                             23 	.globl _memcpy
                             24 	.globl _NSS1
                             25 	.globl _IRQ
                             26 	.globl _PA_ENABLE
                             27 	.globl _PIN_ENABLE
                             28 	.globl _PIN_CONFIG
                             29 	.globl _LED_GREEN
                             30 	.globl _LED_RED
                             31 	.globl _SPI0EN
                             32 	.globl _TXBMT0
                             33 	.globl _NSS0MD0
                             34 	.globl _NSS0MD1
                             35 	.globl _RXOVRN0
                             36 	.globl _MODF0
                             37 	.globl _WCOL0
                             38 	.globl _SPIF0
                             39 	.globl _AD0CM0
                             40 	.globl _AD0CM1
                             41 	.globl _AD0CM2
                             42 	.globl _AD0WINT
                             43 	.globl _AD0BUSY
                             44 	.globl _AD0INT
                             45 	.globl _BURSTEN
                             46 	.globl _AD0EN
                             47 	.globl _CCF0
                             48 	.globl _CCF1
                             49 	.globl _CCF2
                             50 	.globl _CCF3
                             51 	.globl _CCF4
                             52 	.globl _CCF5
                             53 	.globl _CR
                             54 	.globl _CF
                             55 	.globl _P
                             56 	.globl _F1
                             57 	.globl _OV
                             58 	.globl _RS0
                             59 	.globl _RS1
                             60 	.globl _F0
                             61 	.globl _AC
                             62 	.globl _CY
                             63 	.globl _T2XCLK
                             64 	.globl _T2RCLK
                             65 	.globl _TR2
                             66 	.globl _T2SPLIT
                             67 	.globl _TF2CEN
                             68 	.globl _TF2LEN
                             69 	.globl _TF2L
                             70 	.globl _TF2H
                             71 	.globl _SI
                             72 	.globl _ACK
                             73 	.globl _ARBLOST
                             74 	.globl _ACKRQ
                             75 	.globl _STO
                             76 	.globl _STA
                             77 	.globl _TXMODE
                             78 	.globl _MASTER
                             79 	.globl _PX0
                             80 	.globl _PT0
                             81 	.globl _PX1
                             82 	.globl _PT1
                             83 	.globl _PS0
                             84 	.globl _PT2
                             85 	.globl _PSPI0
                             86 	.globl _SPI1EN
                             87 	.globl _TXBMT1
                             88 	.globl _NSS1MD0
                             89 	.globl _NSS1MD1
                             90 	.globl _RXOVRN1
                             91 	.globl _MODF1
                             92 	.globl _WCOL1
                             93 	.globl _SPIF1
                             94 	.globl _EX0
                             95 	.globl _ET0
                             96 	.globl _EX1
                             97 	.globl _ET1
                             98 	.globl _ES0
                             99 	.globl _ET2
                            100 	.globl _ESPI0
                            101 	.globl _EA
                            102 	.globl _RI0
                            103 	.globl _TI0
                            104 	.globl _RB80
                            105 	.globl _TB80
                            106 	.globl _REN0
                            107 	.globl _MCE0
                            108 	.globl _S0MODE
                            109 	.globl _CRC0VAL
                            110 	.globl _CRC0INIT
                            111 	.globl _CRC0SEL
                            112 	.globl _IT0
                            113 	.globl _IE0
                            114 	.globl _IT1
                            115 	.globl _IE1
                            116 	.globl _TR0
                            117 	.globl _TF0
                            118 	.globl _TR1
                            119 	.globl _TF1
                            120 	.globl _PCA0CP4
                            121 	.globl _PCA0CP0
                            122 	.globl _PCA0
                            123 	.globl _PCA0CP3
                            124 	.globl _PCA0CP2
                            125 	.globl _PCA0CP1
                            126 	.globl _PCA0CP5
                            127 	.globl _TMR2
                            128 	.globl _TMR2RL
                            129 	.globl _ADC0LT
                            130 	.globl _ADC0GT
                            131 	.globl _ADC0
                            132 	.globl _TMR3
                            133 	.globl _TMR3RL
                            134 	.globl _TOFF
                            135 	.globl _DP
                            136 	.globl _VDM0CN
                            137 	.globl _PCA0CPH4
                            138 	.globl _PCA0CPL4
                            139 	.globl _PCA0CPH0
                            140 	.globl _PCA0CPL0
                            141 	.globl _PCA0H
                            142 	.globl _PCA0L
                            143 	.globl _SPI0CN
                            144 	.globl _EIP2
                            145 	.globl _EIP1
                            146 	.globl _SMB0ADM
                            147 	.globl _SMB0ADR
                            148 	.globl _P2MDIN
                            149 	.globl _P1MDIN
                            150 	.globl _P0MDIN
                            151 	.globl _B
                            152 	.globl _RSTSRC
                            153 	.globl _PCA0CPH3
                            154 	.globl _PCA0CPL3
                            155 	.globl _PCA0CPH2
                            156 	.globl _PCA0CPL2
                            157 	.globl _PCA0CPH1
                            158 	.globl _PCA0CPL1
                            159 	.globl _ADC0CN
                            160 	.globl _EIE2
                            161 	.globl _EIE1
                            162 	.globl _FLWR
                            163 	.globl _IT01CF
                            164 	.globl _XBR2
                            165 	.globl _XBR1
                            166 	.globl _XBR0
                            167 	.globl _ACC
                            168 	.globl _PCA0PWM
                            169 	.globl _PCA0CPM4
                            170 	.globl _PCA0CPM3
                            171 	.globl _PCA0CPM2
                            172 	.globl _PCA0CPM1
                            173 	.globl _PCA0CPM0
                            174 	.globl _PCA0MD
                            175 	.globl _PCA0CN
                            176 	.globl _P0MAT
                            177 	.globl _P2SKIP
                            178 	.globl _P1SKIP
                            179 	.globl _P0SKIP
                            180 	.globl _PCA0CPH5
                            181 	.globl _PCA0CPL5
                            182 	.globl _REF0CN
                            183 	.globl _PSW
                            184 	.globl _P1MAT
                            185 	.globl _PCA0CPM5
                            186 	.globl _TMR2H
                            187 	.globl _TMR2L
                            188 	.globl _TMR2RLH
                            189 	.globl _TMR2RLL
                            190 	.globl _REG0CN
                            191 	.globl _TMR2CN
                            192 	.globl _P0MASK
                            193 	.globl _ADC0LTH
                            194 	.globl _ADC0LTL
                            195 	.globl _ADC0GTH
                            196 	.globl _ADC0GTL
                            197 	.globl _SMB0DAT
                            198 	.globl _SMB0CF
                            199 	.globl _SMB0CN
                            200 	.globl _P1MASK
                            201 	.globl _ADC0H
                            202 	.globl _ADC0L
                            203 	.globl _ADC0TK
                            204 	.globl _ADC0CF
                            205 	.globl _ADC0MX
                            206 	.globl _ADC0PWR
                            207 	.globl _ADC0AC
                            208 	.globl _IREF0CN
                            209 	.globl _IP
                            210 	.globl _FLKEY
                            211 	.globl _FLSCL
                            212 	.globl _PMU0CF
                            213 	.globl _OSCICL
                            214 	.globl _OSCICN
                            215 	.globl _OSCXCN
                            216 	.globl _SPI1CN
                            217 	.globl _ONESHOT
                            218 	.globl _EMI0TC
                            219 	.globl _RTC0KEY
                            220 	.globl _RTC0DAT
                            221 	.globl _RTC0ADR
                            222 	.globl _EMI0CF
                            223 	.globl _EMI0CN
                            224 	.globl _CLKSEL
                            225 	.globl _IE
                            226 	.globl _SFRPAGE
                            227 	.globl _P2DRV
                            228 	.globl _P2MDOUT
                            229 	.globl _P1DRV
                            230 	.globl _P1MDOUT
                            231 	.globl _P0DRV
                            232 	.globl _P0MDOUT
                            233 	.globl _SPI0DAT
                            234 	.globl _SPI0CKR
                            235 	.globl _SPI0CFG
                            236 	.globl _P2
                            237 	.globl _CPT0MX
                            238 	.globl _CPT1MX
                            239 	.globl _CPT0MD
                            240 	.globl _CPT1MD
                            241 	.globl _CPT0CN
                            242 	.globl _CPT1CN
                            243 	.globl _SBUF0
                            244 	.globl _SCON0
                            245 	.globl _CRC0CNT
                            246 	.globl _DC0CN
                            247 	.globl _CRC0AUTO
                            248 	.globl _DC0CF
                            249 	.globl _TMR3H
                            250 	.globl _CRC0FLIP
                            251 	.globl _TMR3L
                            252 	.globl _CRC0IN
                            253 	.globl _TMR3RLH
                            254 	.globl _CRC0CN
                            255 	.globl _TMR3RLL
                            256 	.globl _CRC0DAT
                            257 	.globl _TMR3CN
                            258 	.globl _P1
                            259 	.globl _PSCTL
                            260 	.globl _CKCON
                            261 	.globl _TH1
                            262 	.globl _TH0
                            263 	.globl _TL1
                            264 	.globl _TL0
                            265 	.globl _TMOD
                            266 	.globl _TCON
                            267 	.globl _PCON
                            268 	.globl _TOFFH
                            269 	.globl _SPI1DAT
                            270 	.globl _TOFFL
                            271 	.globl _SPI1CKR
                            272 	.globl _SPI1CFG
                            273 	.globl _DPH
                            274 	.globl _DPL
                            275 	.globl _SP
                            276 	.globl _P0
                            277 	.globl _radio_buffer
                            278 	.globl _radio_transmit_PARM_3
                            279 	.globl _radio_transmit_PARM_2
                            280 	.globl _radio_receive_packet_PARM_2
                            281 	.globl _settings
                            282 	.globl _netid
                            283 	.globl _last_rssi
                            284 	.globl _partial_packet_length
                            285 	.globl _receive_packet_length
                            286 	.globl _radio_set_diversity_PARM_1
                            287 	.globl _radio_receive_packet
                            288 	.globl _radio_receive_in_progress
                            289 	.globl _radio_preamble_detected
                            290 	.globl _radio_last_rssi
                            291 	.globl _radio_current_rssi
                            292 	.globl _radio_air_rate
                            293 	.globl _radio_transmit
                            294 	.globl _radio_receiver_on
                            295 	.globl _radio_initialise
                            296 	.globl _radio_set_frequency
                            297 	.globl _radio_set_channel_spacing
                            298 	.globl _radio_set_channel
                            299 	.globl _radio_get_channel
                            300 	.globl _radio_configure
                            301 	.globl _radio_set_transmit_power
                            302 	.globl _radio_get_transmit_power
                            303 	.globl _radio_set_network_id
                            304 	.globl _radio_temperature
                            305 	.globl _radio_set_diversity
                            306 ;--------------------------------------------------------
                            307 ; special function registers
                            308 ;--------------------------------------------------------
                            309 	.area RSEG    (ABS,DATA)
   0000                     310 	.org 0x0000
                     0080   311 _P0	=	0x0080
                     0081   312 _SP	=	0x0081
                     0082   313 _DPL	=	0x0082
                     0083   314 _DPH	=	0x0083
                     0084   315 _SPI1CFG	=	0x0084
                     0085   316 _SPI1CKR	=	0x0085
                     0085   317 _TOFFL	=	0x0085
                     0086   318 _SPI1DAT	=	0x0086
                     0086   319 _TOFFH	=	0x0086
                     0087   320 _PCON	=	0x0087
                     0088   321 _TCON	=	0x0088
                     0089   322 _TMOD	=	0x0089
                     008A   323 _TL0	=	0x008a
                     008B   324 _TL1	=	0x008b
                     008C   325 _TH0	=	0x008c
                     008D   326 _TH1	=	0x008d
                     008E   327 _CKCON	=	0x008e
                     008F   328 _PSCTL	=	0x008f
                     0090   329 _P1	=	0x0090
                     0091   330 _TMR3CN	=	0x0091
                     0091   331 _CRC0DAT	=	0x0091
                     0092   332 _TMR3RLL	=	0x0092
                     0092   333 _CRC0CN	=	0x0092
                     0093   334 _TMR3RLH	=	0x0093
                     0093   335 _CRC0IN	=	0x0093
                     0094   336 _TMR3L	=	0x0094
                     0095   337 _CRC0FLIP	=	0x0095
                     0095   338 _TMR3H	=	0x0095
                     0096   339 _DC0CF	=	0x0096
                     0096   340 _CRC0AUTO	=	0x0096
                     0097   341 _DC0CN	=	0x0097
                     0097   342 _CRC0CNT	=	0x0097
                     0098   343 _SCON0	=	0x0098
                     0099   344 _SBUF0	=	0x0099
                     009A   345 _CPT1CN	=	0x009a
                     009B   346 _CPT0CN	=	0x009b
                     009C   347 _CPT1MD	=	0x009c
                     009D   348 _CPT0MD	=	0x009d
                     009E   349 _CPT1MX	=	0x009e
                     009F   350 _CPT0MX	=	0x009f
                     00A0   351 _P2	=	0x00a0
                     00A1   352 _SPI0CFG	=	0x00a1
                     00A2   353 _SPI0CKR	=	0x00a2
                     00A3   354 _SPI0DAT	=	0x00a3
                     00A4   355 _P0MDOUT	=	0x00a4
                     00A4   356 _P0DRV	=	0x00a4
                     00A5   357 _P1MDOUT	=	0x00a5
                     00A5   358 _P1DRV	=	0x00a5
                     00A6   359 _P2MDOUT	=	0x00a6
                     00A6   360 _P2DRV	=	0x00a6
                     00A7   361 _SFRPAGE	=	0x00a7
                     00A8   362 _IE	=	0x00a8
                     00A9   363 _CLKSEL	=	0x00a9
                     00AA   364 _EMI0CN	=	0x00aa
                     00AB   365 _EMI0CF	=	0x00ab
                     00AC   366 _RTC0ADR	=	0x00ac
                     00AD   367 _RTC0DAT	=	0x00ad
                     00AE   368 _RTC0KEY	=	0x00ae
                     00AF   369 _EMI0TC	=	0x00af
                     00AF   370 _ONESHOT	=	0x00af
                     00B0   371 _SPI1CN	=	0x00b0
                     00B1   372 _OSCXCN	=	0x00b1
                     00B2   373 _OSCICN	=	0x00b2
                     00B3   374 _OSCICL	=	0x00b3
                     00B5   375 _PMU0CF	=	0x00b5
                     00B6   376 _FLSCL	=	0x00b6
                     00B7   377 _FLKEY	=	0x00b7
                     00B8   378 _IP	=	0x00b8
                     00B9   379 _IREF0CN	=	0x00b9
                     00BA   380 _ADC0AC	=	0x00ba
                     00BA   381 _ADC0PWR	=	0x00ba
                     00BB   382 _ADC0MX	=	0x00bb
                     00BC   383 _ADC0CF	=	0x00bc
                     00BD   384 _ADC0TK	=	0x00bd
                     00BD   385 _ADC0L	=	0x00bd
                     00BE   386 _ADC0H	=	0x00be
                     00BF   387 _P1MASK	=	0x00bf
                     00C0   388 _SMB0CN	=	0x00c0
                     00C1   389 _SMB0CF	=	0x00c1
                     00C2   390 _SMB0DAT	=	0x00c2
                     00C3   391 _ADC0GTL	=	0x00c3
                     00C4   392 _ADC0GTH	=	0x00c4
                     00C5   393 _ADC0LTL	=	0x00c5
                     00C6   394 _ADC0LTH	=	0x00c6
                     00C7   395 _P0MASK	=	0x00c7
                     00C8   396 _TMR2CN	=	0x00c8
                     00C9   397 _REG0CN	=	0x00c9
                     00CA   398 _TMR2RLL	=	0x00ca
                     00CB   399 _TMR2RLH	=	0x00cb
                     00CC   400 _TMR2L	=	0x00cc
                     00CD   401 _TMR2H	=	0x00cd
                     00CE   402 _PCA0CPM5	=	0x00ce
                     00CF   403 _P1MAT	=	0x00cf
                     00D0   404 _PSW	=	0x00d0
                     00D1   405 _REF0CN	=	0x00d1
                     00D2   406 _PCA0CPL5	=	0x00d2
                     00D3   407 _PCA0CPH5	=	0x00d3
                     00D4   408 _P0SKIP	=	0x00d4
                     00D5   409 _P1SKIP	=	0x00d5
                     00D6   410 _P2SKIP	=	0x00d6
                     00D7   411 _P0MAT	=	0x00d7
                     00D8   412 _PCA0CN	=	0x00d8
                     00D9   413 _PCA0MD	=	0x00d9
                     00DA   414 _PCA0CPM0	=	0x00da
                     00DB   415 _PCA0CPM1	=	0x00db
                     00DC   416 _PCA0CPM2	=	0x00dc
                     00DD   417 _PCA0CPM3	=	0x00dd
                     00DE   418 _PCA0CPM4	=	0x00de
                     00DF   419 _PCA0PWM	=	0x00df
                     00E0   420 _ACC	=	0x00e0
                     00E1   421 _XBR0	=	0x00e1
                     00E2   422 _XBR1	=	0x00e2
                     00E3   423 _XBR2	=	0x00e3
                     00E4   424 _IT01CF	=	0x00e4
                     00E5   425 _FLWR	=	0x00e5
                     00E6   426 _EIE1	=	0x00e6
                     00E7   427 _EIE2	=	0x00e7
                     00E8   428 _ADC0CN	=	0x00e8
                     00E9   429 _PCA0CPL1	=	0x00e9
                     00EA   430 _PCA0CPH1	=	0x00ea
                     00EB   431 _PCA0CPL2	=	0x00eb
                     00EC   432 _PCA0CPH2	=	0x00ec
                     00ED   433 _PCA0CPL3	=	0x00ed
                     00EE   434 _PCA0CPH3	=	0x00ee
                     00EF   435 _RSTSRC	=	0x00ef
                     00F0   436 _B	=	0x00f0
                     00F1   437 _P0MDIN	=	0x00f1
                     00F2   438 _P1MDIN	=	0x00f2
                     00F3   439 _P2MDIN	=	0x00f3
                     00F4   440 _SMB0ADR	=	0x00f4
                     00F5   441 _SMB0ADM	=	0x00f5
                     00F6   442 _EIP1	=	0x00f6
                     00F7   443 _EIP2	=	0x00f7
                     00F8   444 _SPI0CN	=	0x00f8
                     00F9   445 _PCA0L	=	0x00f9
                     00FA   446 _PCA0H	=	0x00fa
                     00FB   447 _PCA0CPL0	=	0x00fb
                     00FC   448 _PCA0CPH0	=	0x00fc
                     00FD   449 _PCA0CPL4	=	0x00fd
                     00FE   450 _PCA0CPH4	=	0x00fe
                     00FF   451 _VDM0CN	=	0x00ff
                     8382   452 _DP	=	0x8382
                     8685   453 _TOFF	=	0x8685
                     9392   454 _TMR3RL	=	0x9392
                     9594   455 _TMR3	=	0x9594
                     BEBD   456 _ADC0	=	0xbebd
                     C4C3   457 _ADC0GT	=	0xc4c3
                     C6C5   458 _ADC0LT	=	0xc6c5
                     CBCA   459 _TMR2RL	=	0xcbca
                     CDCC   460 _TMR2	=	0xcdcc
                     D3D2   461 _PCA0CP5	=	0xd3d2
                     EAE9   462 _PCA0CP1	=	0xeae9
                     ECEB   463 _PCA0CP2	=	0xeceb
                     EEED   464 _PCA0CP3	=	0xeeed
                     FAF9   465 _PCA0	=	0xfaf9
                     FCFB   466 _PCA0CP0	=	0xfcfb
                     FEFD   467 _PCA0CP4	=	0xfefd
                            468 ;--------------------------------------------------------
                            469 ; special function bits
                            470 ;--------------------------------------------------------
                            471 	.area RSEG    (ABS,DATA)
   0000                     472 	.org 0x0000
                     008F   473 _TF1	=	0x008f
                     008E   474 _TR1	=	0x008e
                     008D   475 _TF0	=	0x008d
                     008C   476 _TR0	=	0x008c
                     008B   477 _IE1	=	0x008b
                     008A   478 _IT1	=	0x008a
                     0089   479 _IE0	=	0x0089
                     0088   480 _IT0	=	0x0088
                     0096   481 _CRC0SEL	=	0x0096
                     0095   482 _CRC0INIT	=	0x0095
                     0094   483 _CRC0VAL	=	0x0094
                     009F   484 _S0MODE	=	0x009f
                     009D   485 _MCE0	=	0x009d
                     009C   486 _REN0	=	0x009c
                     009B   487 _TB80	=	0x009b
                     009A   488 _RB80	=	0x009a
                     0099   489 _TI0	=	0x0099
                     0098   490 _RI0	=	0x0098
                     00AF   491 _EA	=	0x00af
                     00AE   492 _ESPI0	=	0x00ae
                     00AD   493 _ET2	=	0x00ad
                     00AC   494 _ES0	=	0x00ac
                     00AB   495 _ET1	=	0x00ab
                     00AA   496 _EX1	=	0x00aa
                     00A9   497 _ET0	=	0x00a9
                     00A8   498 _EX0	=	0x00a8
                     00B7   499 _SPIF1	=	0x00b7
                     00B6   500 _WCOL1	=	0x00b6
                     00B5   501 _MODF1	=	0x00b5
                     00B4   502 _RXOVRN1	=	0x00b4
                     00B3   503 _NSS1MD1	=	0x00b3
                     00B2   504 _NSS1MD0	=	0x00b2
                     00B1   505 _TXBMT1	=	0x00b1
                     00B0   506 _SPI1EN	=	0x00b0
                     00BE   507 _PSPI0	=	0x00be
                     00BD   508 _PT2	=	0x00bd
                     00BC   509 _PS0	=	0x00bc
                     00BB   510 _PT1	=	0x00bb
                     00BA   511 _PX1	=	0x00ba
                     00B9   512 _PT0	=	0x00b9
                     00B8   513 _PX0	=	0x00b8
                     00C7   514 _MASTER	=	0x00c7
                     00C6   515 _TXMODE	=	0x00c6
                     00C5   516 _STA	=	0x00c5
                     00C4   517 _STO	=	0x00c4
                     00C3   518 _ACKRQ	=	0x00c3
                     00C2   519 _ARBLOST	=	0x00c2
                     00C1   520 _ACK	=	0x00c1
                     00C0   521 _SI	=	0x00c0
                     00CF   522 _TF2H	=	0x00cf
                     00CE   523 _TF2L	=	0x00ce
                     00CD   524 _TF2LEN	=	0x00cd
                     00CC   525 _TF2CEN	=	0x00cc
                     00CB   526 _T2SPLIT	=	0x00cb
                     00CA   527 _TR2	=	0x00ca
                     00C9   528 _T2RCLK	=	0x00c9
                     00C8   529 _T2XCLK	=	0x00c8
                     00D7   530 _CY	=	0x00d7
                     00D6   531 _AC	=	0x00d6
                     00D5   532 _F0	=	0x00d5
                     00D4   533 _RS1	=	0x00d4
                     00D3   534 _RS0	=	0x00d3
                     00D2   535 _OV	=	0x00d2
                     00D1   536 _F1	=	0x00d1
                     00D0   537 _P	=	0x00d0
                     00DF   538 _CF	=	0x00df
                     00DE   539 _CR	=	0x00de
                     00DD   540 _CCF5	=	0x00dd
                     00DC   541 _CCF4	=	0x00dc
                     00DB   542 _CCF3	=	0x00db
                     00DA   543 _CCF2	=	0x00da
                     00D9   544 _CCF1	=	0x00d9
                     00D8   545 _CCF0	=	0x00d8
                     00EF   546 _AD0EN	=	0x00ef
                     00EE   547 _BURSTEN	=	0x00ee
                     00ED   548 _AD0INT	=	0x00ed
                     00EC   549 _AD0BUSY	=	0x00ec
                     00EB   550 _AD0WINT	=	0x00eb
                     00EA   551 _AD0CM2	=	0x00ea
                     00E9   552 _AD0CM1	=	0x00e9
                     00E8   553 _AD0CM0	=	0x00e8
                     00FF   554 _SPIF0	=	0x00ff
                     00FE   555 _WCOL0	=	0x00fe
                     00FD   556 _MODF0	=	0x00fd
                     00FC   557 _RXOVRN0	=	0x00fc
                     00FB   558 _NSS0MD1	=	0x00fb
                     00FA   559 _NSS0MD0	=	0x00fa
                     00F9   560 _TXBMT0	=	0x00f9
                     00F8   561 _SPI0EN	=	0x00f8
                     0096   562 _LED_RED	=	0x0096
                     0095   563 _LED_GREEN	=	0x0095
                     0082   564 _PIN_CONFIG	=	0x0082
                     0083   565 _PIN_ENABLE	=	0x0083
                     00A5   566 _PA_ENABLE	=	0x00a5
                     0087   567 _IRQ	=	0x0087
                     0094   568 _NSS1	=	0x0094
                            569 ;--------------------------------------------------------
                            570 ; overlayable register banks
                            571 ;--------------------------------------------------------
                            572 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     573 	.ds 8
                            574 ;--------------------------------------------------------
                            575 ; overlayable bit register bank
                            576 ;--------------------------------------------------------
                            577 	.area BIT_BANK	(REL,OVR,DATA)
   0027                     578 bits:
   0027                     579 	.ds 1
                     8000   580 	b0 = bits[0]
                     8100   581 	b1 = bits[1]
                     8200   582 	b2 = bits[2]
                     8300   583 	b3 = bits[3]
                     8400   584 	b4 = bits[4]
                     8500   585 	b5 = bits[5]
                     8600   586 	b6 = bits[6]
                     8700   587 	b7 = bits[7]
                            588 ;--------------------------------------------------------
                            589 ; internal ram data
                            590 ;--------------------------------------------------------
                            591 	.area DSEG    (DATA)
   004C                     592 _radio_receive_packet_crc1_1_137:
   004C                     593 	.ds 2
   004E                     594 _radio_transmit_golay_elen_1_188:
   004E                     595 	.ds 1
                            596 ;--------------------------------------------------------
                            597 ; overlayable items in internal ram 
                            598 ;--------------------------------------------------------
                            599 	.area	OSEG    (OVR,DATA)
                            600 ;--------------------------------------------------------
                            601 ; indirectly addressable internal ram data
                            602 ;--------------------------------------------------------
                            603 	.area ISEG    (DATA)
                            604 ;--------------------------------------------------------
                            605 ; absolute internal ram data
                            606 ;--------------------------------------------------------
                            607 	.area IABS    (ABS,DATA)
                            608 	.area IABS    (ABS,DATA)
                            609 ;--------------------------------------------------------
                            610 ; bit data
                            611 ;--------------------------------------------------------
                            612 	.area BSEG    (BIT)
   0017                     613 _packet_received:
   0017                     614 	.ds 1
   0018                     615 _preamble_detected:
   0018                     616 	.ds 1
   0019                     617 _radio_preamble_detected_EX0_saved_1_159:
   0019                     618 	.ds 1
   001A                     619 _radio_transmit_simple_transmit_started_1_172:
   001A                     620 	.ds 1
   001B                     621 _radio_transmit_golay_sloc0_1_0:
   001B                     622 	.ds 1
   001C                     623 _radio_transmit_EX0_saved_1_191:
   001C                     624 	.ds 1
   001D                     625 _radio_transmit_sloc0_1_0:
   001D                     626 	.ds 1
   001E                     627 _radio_initialise_sloc0_1_0:
   001E                     628 	.ds 1
   001F                     629 _radio_set_diversity_PARM_1:
   001F                     630 	.ds 1
                            631 ;--------------------------------------------------------
                            632 ; paged external ram data
                            633 ;--------------------------------------------------------
                            634 	.area PSEG    (PAG,XDATA)
   007D                     635 _receive_packet_length::
   007D                     636 	.ds 1
   007E                     637 _partial_packet_length::
   007E                     638 	.ds 1
   007F                     639 _last_rssi::
   007F                     640 	.ds 1
   0080                     641 _netid::
   0080                     642 	.ds 2
   0082                     643 _settings::
   0082                     644 	.ds 12
   008E                     645 _radio_receive_packet_PARM_2:
   008E                     646 	.ds 2
   0090                     647 _radio_write_transmit_fifo_PARM_2:
   0090                     648 	.ds 2
   0092                     649 _radio_transmit_simple_PARM_2:
   0092                     650 	.ds 2
   0094                     651 _radio_transmit_simple_PARM_3:
   0094                     652 	.ds 2
   0096                     653 _radio_transmit_golay_PARM_2:
   0096                     654 	.ds 2
   0098                     655 _radio_transmit_golay_PARM_3:
   0098                     656 	.ds 2
   009A                     657 _radio_transmit_PARM_2:
   009A                     658 	.ds 2
   009C                     659 _radio_transmit_PARM_3:
   009C                     660 	.ds 2
   009E                     661 _scale_uint32_PARM_2:
   009E                     662 	.ds 4
   00A2                     663 _scale_uint32_value_1_250:
   00A2                     664 	.ds 4
   00A6                     665 _set_frequency_registers_frequency_1_258:
   00A6                     666 	.ds 4
                            667 ;--------------------------------------------------------
                            668 ; external ram data
                            669 ;--------------------------------------------------------
                            670 	.area XSEG    (XDATA)
   0368                     671 _radio_buffer::
   0368                     672 	.ds 252
   0464                     673 _radio_receive_packet_length_1_136:
   0464                     674 	.ds 3
   0467                     675 _radio_receive_packet_gout_1_137:
   0467                     676 	.ds 3
   046A                     677 _radio_transmit_golay_length_1_187:
   046A                     678 	.ds 1
   046B                     679 _radio_transmit_golay_gin_1_188:
   046B                     680 	.ds 3
   046E                     681 _radio_transmit_length_1_190:
   046E                     682 	.ds 1
   046F                     683 _radio_set_channel_channel_1_208:
   046F                     684 	.ds 1
   0470                     685 _radio_set_transmit_power_power_1_232:
   0470                     686 	.ds 1
   0471                     687 _radio_set_network_id_id_1_238:
   0471                     688 	.ds 2
   0473                     689 _set_frequency_registers_band_1_259:
   0473                     690 	.ds 1
                            691 ;--------------------------------------------------------
                            692 ; absolute external ram data
                            693 ;--------------------------------------------------------
                            694 	.area XABS    (ABS,XDATA)
                            695 ;--------------------------------------------------------
                            696 ; external initialized ram data
                            697 ;--------------------------------------------------------
                            698 	.area XISEG   (XDATA)
                            699 	.area HOME    (CODE)
                            700 	.area GSINIT0 (CODE)
                            701 	.area GSINIT1 (CODE)
                            702 	.area GSINIT2 (CODE)
                            703 	.area GSINIT3 (CODE)
                            704 	.area GSINIT4 (CODE)
                            705 	.area GSINIT5 (CODE)
                            706 	.area GSINIT  (CODE)
                            707 	.area GSFINAL (CODE)
                            708 	.area CSEG    (CODE)
                            709 ;--------------------------------------------------------
                            710 ; global & static initialisations
                            711 ;--------------------------------------------------------
                            712 	.area HOME    (CODE)
                            713 	.area GSINIT  (CODE)
                            714 	.area GSFINAL (CODE)
                            715 	.area GSINIT  (CODE)
                            716 ;--------------------------------------------------------
                            717 ; Home
                            718 ;--------------------------------------------------------
                            719 	.area HOME    (CODE)
                            720 	.area HOME    (CODE)
                            721 ;--------------------------------------------------------
                            722 ; code
                            723 ;--------------------------------------------------------
                            724 	.area CSEG    (CODE)
                            725 ;------------------------------------------------------------
                            726 ;Allocation info for local variables in function 'radio_receive_packet'
                            727 ;------------------------------------------------------------
                            728 ;crc1                      Allocated with name '_radio_receive_packet_crc1_1_137'
                            729 ;crc2                      Allocated to registers r5 r7 
                            730 ;errcount                  Allocated to registers r6 
                            731 ;elen                      Allocated to registers r7 
                            732 ;length                    Allocated with name '_radio_receive_packet_length_1_136'
                            733 ;gout                      Allocated with name '_radio_receive_packet_gout_1_137'
                            734 ;------------------------------------------------------------
                            735 ;	radio/radio.c:77: radio_receive_packet(uint8_t *length, __xdata uint8_t * __pdata buf)
                            736 ;	-----------------------------------------
                            737 ;	 function radio_receive_packet
                            738 ;	-----------------------------------------
   3025                     739 _radio_receive_packet:
                     0007   740 	ar7 = 0x07
                     0006   741 	ar6 = 0x06
                     0005   742 	ar5 = 0x05
                     0004   743 	ar4 = 0x04
                     0003   744 	ar3 = 0x03
                     0002   745 	ar2 = 0x02
                     0001   746 	ar1 = 0x01
                     0000   747 	ar0 = 0x00
   3025 AF F0         [24]  748 	mov	r7,b
   3027 AE 83         [24]  749 	mov	r6,dph
   3029 E5 82         [12]  750 	mov	a,dpl
   302B 90 04 64      [24]  751 	mov	dptr,#_radio_receive_packet_length_1_136
   302E F0            [24]  752 	movx	@dptr,a
   302F EE            [12]  753 	mov	a,r6
   3030 A3            [24]  754 	inc	dptr
   3031 F0            [24]  755 	movx	@dptr,a
   3032 EF            [12]  756 	mov	a,r7
   3033 A3            [24]  757 	inc	dptr
   3034 F0            [24]  758 	movx	@dptr,a
                            759 ;	radio/radio.c:84: if (!packet_received) {
   3035 20 17 02      [24]  760 	jb	_packet_received,00102$
                            761 ;	radio/radio.c:85: return false;
   3038 C3            [12]  762 	clr	c
   3039 22            [24]  763 	ret
   303A                     764 00102$:
                            765 ;	radio/radio.c:88: if (receive_packet_length > MAX_PACKET_LENGTH) {
   303A 78 7D         [12]  766 	mov	r0,#_receive_packet_length
   303C C3            [12]  767 	clr	c
   303D E2            [24]  768 	movx	a,@r0
   303E F5 F0         [12]  769 	mov	b,a
   3040 74 FC         [12]  770 	mov	a,#0xFC
   3042 95 F0         [12]  771 	subb	a,b
   3044 50 06         [24]  772 	jnc	00104$
                            773 ;	radio/radio.c:89: radio_receiver_on();
   3046 12 36 99      [24]  774 	lcall	_radio_receiver_on
                            775 ;	radio/radio.c:90: goto failed;
   3049 02 32 65      [24]  776 	ljmp	00126$
   304C                     777 00104$:
                            778 ;	radio/radio.c:101: if (!feature_golay) {
   304C 20 05 45      [24]  779 	jb	_feature_golay,00106$
                            780 ;	radio/radio.c:103: *length = receive_packet_length;
   304F 90 04 64      [24]  781 	mov	dptr,#_radio_receive_packet_length_1_136
   3052 E0            [24]  782 	movx	a,@dptr
   3053 FD            [12]  783 	mov	r5,a
   3054 A3            [24]  784 	inc	dptr
   3055 E0            [24]  785 	movx	a,@dptr
   3056 FE            [12]  786 	mov	r6,a
   3057 A3            [24]  787 	inc	dptr
   3058 E0            [24]  788 	movx	a,@dptr
   3059 FF            [12]  789 	mov	r7,a
   305A 8D 82         [24]  790 	mov	dpl,r5
   305C 8E 83         [24]  791 	mov	dph,r6
   305E 8F F0         [24]  792 	mov	b,r7
   3060 78 7D         [12]  793 	mov	r0,#_receive_packet_length
   3062 E2            [24]  794 	movx	a,@r0
   3063 12 60 87      [24]  795 	lcall	__gptrput
                            796 ;	radio/radio.c:104: memcpy(buf, radio_buffer, receive_packet_length);
   3066 78 8E         [12]  797 	mov	r0,#_radio_receive_packet_PARM_2
   3068 E2            [24]  798 	movx	a,@r0
   3069 FD            [12]  799 	mov	r5,a
   306A 08            [12]  800 	inc	r0
   306B E2            [24]  801 	movx	a,@r0
   306C FE            [12]  802 	mov	r6,a
   306D 7F 00         [12]  803 	mov	r7,#0x00
   306F 90 05 C4      [24]  804 	mov	dptr,#_memcpy_PARM_2
   3072 74 68         [12]  805 	mov	a,#_radio_buffer
   3074 F0            [24]  806 	movx	@dptr,a
   3075 74 03         [12]  807 	mov	a,#(_radio_buffer >> 8)
   3077 A3            [24]  808 	inc	dptr
   3078 F0            [24]  809 	movx	@dptr,a
   3079 E4            [12]  810 	clr	a
   307A A3            [24]  811 	inc	dptr
   307B F0            [24]  812 	movx	@dptr,a
   307C 78 7D         [12]  813 	mov	r0,#_receive_packet_length
   307E 90 05 C7      [24]  814 	mov	dptr,#_memcpy_PARM_3
   3081 E2            [24]  815 	movx	a,@r0
   3082 F0            [24]  816 	movx	@dptr,a
   3083 E4            [12]  817 	clr	a
   3084 A3            [24]  818 	inc	dptr
   3085 F0            [24]  819 	movx	@dptr,a
   3086 8D 82         [24]  820 	mov	dpl,r5
   3088 8E 83         [24]  821 	mov	dph,r6
   308A 8F F0         [24]  822 	mov	b,r7
   308C 12 5F FA      [24]  823 	lcall	_memcpy
                            824 ;	radio/radio.c:105: radio_receiver_on();
   308F 12 36 99      [24]  825 	lcall	_radio_receiver_on
                            826 ;	radio/radio.c:106: return true;
   3092 D3            [12]  827 	setb	c
   3093 22            [24]  828 	ret
   3094                     829 00106$:
                            830 ;	radio/radio.c:112: memcpy(buf, radio_buffer, receive_packet_length);
   3094 78 8E         [12]  831 	mov	r0,#_radio_receive_packet_PARM_2
   3096 E2            [24]  832 	movx	a,@r0
   3097 FD            [12]  833 	mov	r5,a
   3098 08            [12]  834 	inc	r0
   3099 E2            [24]  835 	movx	a,@r0
   309A FE            [12]  836 	mov	r6,a
   309B 7F 00         [12]  837 	mov	r7,#0x00
   309D 90 05 C4      [24]  838 	mov	dptr,#_memcpy_PARM_2
   30A0 74 68         [12]  839 	mov	a,#_radio_buffer
   30A2 F0            [24]  840 	movx	@dptr,a
   30A3 74 03         [12]  841 	mov	a,#(_radio_buffer >> 8)
   30A5 A3            [24]  842 	inc	dptr
   30A6 F0            [24]  843 	movx	@dptr,a
   30A7 E4            [12]  844 	clr	a
   30A8 A3            [24]  845 	inc	dptr
   30A9 F0            [24]  846 	movx	@dptr,a
   30AA 78 7D         [12]  847 	mov	r0,#_receive_packet_length
   30AC 90 05 C7      [24]  848 	mov	dptr,#_memcpy_PARM_3
   30AF E2            [24]  849 	movx	a,@r0
   30B0 F0            [24]  850 	movx	@dptr,a
   30B1 E4            [12]  851 	clr	a
   30B2 A3            [24]  852 	inc	dptr
   30B3 F0            [24]  853 	movx	@dptr,a
   30B4 8D 82         [24]  854 	mov	dpl,r5
   30B6 8E 83         [24]  855 	mov	dph,r6
   30B8 8F F0         [24]  856 	mov	b,r7
   30BA 12 5F FA      [24]  857 	lcall	_memcpy
                            858 ;	radio/radio.c:116: elen = receive_packet_length;
   30BD 78 7D         [12]  859 	mov	r0,#_receive_packet_length
   30BF E2            [24]  860 	movx	a,@r0
   30C0 FF            [12]  861 	mov	r7,a
                            862 ;	radio/radio.c:117: radio_receiver_on();	
   30C1 C0 07         [24]  863 	push	ar7
   30C3 12 36 99      [24]  864 	lcall	_radio_receiver_on
   30C6 D0 07         [24]  865 	pop	ar7
                            866 ;	radio/radio.c:119: if (elen < 12 || (elen%6) != 0) {
   30C8 BF 0C 00      [24]  867 	cjne	r7,#0x0C,00176$
   30CB                     868 00176$:
   30CB 50 03         [24]  869 	jnc	00177$
   30CD 02 32 65      [24]  870 	ljmp	00126$
   30D0                     871 00177$:
   30D0 75 F0 06      [24]  872 	mov	b,#0x06
   30D3 EF            [12]  873 	mov	a,r7
   30D4 84            [48]  874 	div	ab
   30D5 E5 F0         [12]  875 	mov	a,b
   30D7 60 03         [24]  876 	jz	00178$
   30D9 02 32 65      [24]  877 	ljmp	00126$
   30DC                     878 00178$:
                            879 ;	radio/radio.c:126: errcount = golay_decode(6, buf, gout);
   30DC 78 8E         [12]  880 	mov	r0,#_radio_receive_packet_PARM_2
   30DE 79 31         [12]  881 	mov	r1,#_golay_decode_PARM_2
   30E0 E2            [24]  882 	movx	a,@r0
   30E1 F3            [24]  883 	movx	@r1,a
   30E2 08            [12]  884 	inc	r0
   30E3 E2            [24]  885 	movx	a,@r0
   30E4 09            [12]  886 	inc	r1
   30E5 F3            [24]  887 	movx	@r1,a
   30E6 78 33         [12]  888 	mov	r0,#_golay_decode_PARM_3
   30E8 74 67         [12]  889 	mov	a,#_radio_receive_packet_gout_1_137
   30EA F2            [24]  890 	movx	@r0,a
   30EB 08            [12]  891 	inc	r0
   30EC 74 04         [12]  892 	mov	a,#(_radio_receive_packet_gout_1_137 >> 8)
   30EE F2            [24]  893 	movx	@r0,a
   30EF 75 82 06      [24]  894 	mov	dpl,#0x06
   30F2 C0 07         [24]  895 	push	ar7
   30F4 12 11 C2      [24]  896 	lcall	_golay_decode
   30F7 AE 82         [24]  897 	mov	r6,dpl
   30F9 D0 07         [24]  898 	pop	ar7
                            899 ;	radio/radio.c:127: if (gout[0] != netid[0] ||
   30FB 90 04 67      [24]  900 	mov	dptr,#_radio_receive_packet_gout_1_137
   30FE E0            [24]  901 	movx	a,@dptr
   30FF FD            [12]  902 	mov	r5,a
   3100 78 80         [12]  903 	mov	r0,#_netid
   3102 E2            [24]  904 	movx	a,@r0
   3103 FC            [12]  905 	mov	r4,a
   3104 ED            [12]  906 	mov	a,r5
   3105 B5 04 02      [24]  907 	cjne	a,ar4,00179$
   3108 80 03         [24]  908 	sjmp	00180$
   310A                     909 00179$:
   310A 02 32 65      [24]  910 	ljmp	00126$
   310D                     911 00180$:
                            912 ;	radio/radio.c:128: gout[1] != netid[1]) {
   310D 90 04 68      [24]  913 	mov	dptr,#(_radio_receive_packet_gout_1_137 + 0x0001)
   3110 E0            [24]  914 	movx	a,@dptr
   3111 FD            [12]  915 	mov	r5,a
   3112 78 81         [12]  916 	mov	r0,#(_netid + 0x0001)
   3114 E2            [24]  917 	movx	a,@r0
   3115 FC            [12]  918 	mov	r4,a
   3116 ED            [12]  919 	mov	a,r5
   3117 B5 04 02      [24]  920 	cjne	a,ar4,00181$
   311A 80 03         [24]  921 	sjmp	00182$
   311C                     922 00181$:
   311C 02 32 65      [24]  923 	ljmp	00126$
   311F                     924 00182$:
                            925 ;	radio/radio.c:136: if (6*((gout[2]+2)/3+2) != elen) {
   311F 90 04 69      [24]  926 	mov	dptr,#(_radio_receive_packet_gout_1_137 + 0x0002)
   3122 E0            [24]  927 	movx	a,@dptr
   3123 FD            [12]  928 	mov	r5,a
   3124 7C 00         [12]  929 	mov	r4,#0x00
   3126 74 02         [12]  930 	mov	a,#0x02
   3128 2D            [12]  931 	add	a,r5
   3129 FD            [12]  932 	mov	r5,a
   312A E4            [12]  933 	clr	a
   312B 3C            [12]  934 	addc	a,r4
   312C FC            [12]  935 	mov	r4,a
   312D 90 05 EB      [24]  936 	mov	dptr,#__divsint_PARM_2
   3130 74 03         [12]  937 	mov	a,#0x03
   3132 F0            [24]  938 	movx	@dptr,a
   3133 E4            [12]  939 	clr	a
   3134 A3            [24]  940 	inc	dptr
   3135 F0            [24]  941 	movx	@dptr,a
   3136 8D 82         [24]  942 	mov	dpl,r5
   3138 8C 83         [24]  943 	mov	dph,r4
   313A C0 07         [24]  944 	push	ar7
   313C C0 06         [24]  945 	push	ar6
   313E 12 63 DE      [24]  946 	lcall	__divsint
   3141 E5 82         [12]  947 	mov	a,dpl
   3143 85 83 F0      [24]  948 	mov	b,dph
   3146 90 05 CE      [24]  949 	mov	dptr,#__mulint_PARM_2
   3149 24 02         [12]  950 	add	a,#0x02
   314B F0            [24]  951 	movx	@dptr,a
   314C E4            [12]  952 	clr	a
   314D 35 F0         [12]  953 	addc	a,b
   314F A3            [24]  954 	inc	dptr
   3150 F0            [24]  955 	movx	@dptr,a
   3151 90 00 06      [24]  956 	mov	dptr,#0x0006
   3154 12 60 D2      [24]  957 	lcall	__mulint
   3157 AC 82         [24]  958 	mov	r4,dpl
   3159 AD 83         [24]  959 	mov	r5,dph
   315B D0 06         [24]  960 	pop	ar6
   315D D0 07         [24]  961 	pop	ar7
   315F 8F 02         [24]  962 	mov	ar2,r7
   3161 7B 00         [12]  963 	mov	r3,#0x00
   3163 EC            [12]  964 	mov	a,r4
   3164 B5 02 06      [24]  965 	cjne	a,ar2,00183$
   3167 ED            [12]  966 	mov	a,r5
   3168 B5 03 02      [24]  967 	cjne	a,ar3,00183$
   316B 80 03         [24]  968 	sjmp	00184$
   316D                     969 00183$:
   316D 02 32 65      [24]  970 	ljmp	00126$
   3170                     971 00184$:
                            972 ;	radio/radio.c:144: errcount += golay_decode(6, &buf[6], gout);
   3170 78 8E         [12]  973 	mov	r0,#_radio_receive_packet_PARM_2
   3172 79 31         [12]  974 	mov	r1,#_golay_decode_PARM_2
   3174 E2            [24]  975 	movx	a,@r0
   3175 24 06         [12]  976 	add	a,#0x06
   3177 F3            [24]  977 	movx	@r1,a
   3178 08            [12]  978 	inc	r0
   3179 E2            [24]  979 	movx	a,@r0
   317A 34 00         [12]  980 	addc	a,#0x00
   317C 09            [12]  981 	inc	r1
   317D F3            [24]  982 	movx	@r1,a
   317E 78 33         [12]  983 	mov	r0,#_golay_decode_PARM_3
   3180 74 67         [12]  984 	mov	a,#_radio_receive_packet_gout_1_137
   3182 F2            [24]  985 	movx	@r0,a
   3183 08            [12]  986 	inc	r0
   3184 74 04         [12]  987 	mov	a,#(_radio_receive_packet_gout_1_137 >> 8)
   3186 F2            [24]  988 	movx	@r0,a
   3187 75 82 06      [24]  989 	mov	dpl,#0x06
   318A C0 07         [24]  990 	push	ar7
   318C C0 06         [24]  991 	push	ar6
   318E 12 11 C2      [24]  992 	lcall	_golay_decode
   3191 AD 82         [24]  993 	mov	r5,dpl
   3193 D0 06         [24]  994 	pop	ar6
   3195 D0 07         [24]  995 	pop	ar7
   3197 ED            [12]  996 	mov	a,r5
   3198 2E            [12]  997 	add	a,r6
   3199 FE            [12]  998 	mov	r6,a
                            999 ;	radio/radio.c:145: crc1 = gout[0] | (((uint16_t)gout[1])<<8);
   319A 90 04 67      [24] 1000 	mov	dptr,#_radio_receive_packet_gout_1_137
   319D E0            [24] 1001 	movx	a,@dptr
   319E FD            [12] 1002 	mov	r5,a
   319F 90 04 68      [24] 1003 	mov	dptr,#(_radio_receive_packet_gout_1_137 + 0x0001)
   31A2 E0            [24] 1004 	movx	a,@dptr
   31A3 FB            [12] 1005 	mov	r3,a
   31A4 E4            [12] 1006 	clr	a
   31A5 FC            [12] 1007 	mov	r4,a
   31A6 FA            [12] 1008 	mov	r2,a
   31A7 4D            [12] 1009 	orl	a,r5
   31A8 F5 4C         [12] 1010 	mov	_radio_receive_packet_crc1_1_137,a
   31AA EB            [12] 1011 	mov	a,r3
   31AB 4A            [12] 1012 	orl	a,r2
   31AC F5 4D         [12] 1013 	mov	(_radio_receive_packet_crc1_1_137 + 1),a
                           1014 ;	radio/radio.c:147: if (elen != 12) {
   31AE BF 0C 02      [24] 1015 	cjne	r7,#0x0C,00185$
   31B1 80 2A         [24] 1016 	sjmp	00116$
   31B3                    1017 00185$:
                           1018 ;	radio/radio.c:148: errcount += golay_decode(elen-12, &buf[12], buf);
   31B3 EF            [12] 1019 	mov	a,r7
   31B4 24 F4         [12] 1020 	add	a,#0xF4
   31B6 FF            [12] 1021 	mov	r7,a
   31B7 78 8E         [12] 1022 	mov	r0,#_radio_receive_packet_PARM_2
   31B9 79 31         [12] 1023 	mov	r1,#_golay_decode_PARM_2
   31BB E2            [24] 1024 	movx	a,@r0
   31BC 24 0C         [12] 1025 	add	a,#0x0C
   31BE F3            [24] 1026 	movx	@r1,a
   31BF 08            [12] 1027 	inc	r0
   31C0 E2            [24] 1028 	movx	a,@r0
   31C1 34 00         [12] 1029 	addc	a,#0x00
   31C3 09            [12] 1030 	inc	r1
   31C4 F3            [24] 1031 	movx	@r1,a
   31C5 78 8E         [12] 1032 	mov	r0,#_radio_receive_packet_PARM_2
   31C7 79 33         [12] 1033 	mov	r1,#_golay_decode_PARM_3
   31C9 E2            [24] 1034 	movx	a,@r0
   31CA F3            [24] 1035 	movx	@r1,a
   31CB 08            [12] 1036 	inc	r0
   31CC E2            [24] 1037 	movx	a,@r0
   31CD 09            [12] 1038 	inc	r1
   31CE F3            [24] 1039 	movx	@r1,a
   31CF 8F 82         [24] 1040 	mov	dpl,r7
   31D1 C0 06         [24] 1041 	push	ar6
   31D3 12 11 C2      [24] 1042 	lcall	_golay_decode
   31D6 AF 82         [24] 1043 	mov	r7,dpl
   31D8 D0 06         [24] 1044 	pop	ar6
   31DA EF            [12] 1045 	mov	a,r7
   31DB 2E            [12] 1046 	add	a,r6
   31DC FE            [12] 1047 	mov	r6,a
   31DD                    1048 00116$:
                           1049 ;	radio/radio.c:151: *length = gout[2];
   31DD 90 04 64      [24] 1050 	mov	dptr,#_radio_receive_packet_length_1_136
   31E0 E0            [24] 1051 	movx	a,@dptr
   31E1 FA            [12] 1052 	mov	r2,a
   31E2 A3            [24] 1053 	inc	dptr
   31E3 E0            [24] 1054 	movx	a,@dptr
   31E4 FB            [12] 1055 	mov	r3,a
   31E5 A3            [24] 1056 	inc	dptr
   31E6 E0            [24] 1057 	movx	a,@dptr
   31E7 FF            [12] 1058 	mov	r7,a
   31E8 90 04 69      [24] 1059 	mov	dptr,#(_radio_receive_packet_gout_1_137 + 0x0002)
   31EB E0            [24] 1060 	movx	a,@dptr
   31EC FD            [12] 1061 	mov	r5,a
   31ED 8A 82         [24] 1062 	mov	dpl,r2
   31EF 8B 83         [24] 1063 	mov	dph,r3
   31F1 8F F0         [24] 1064 	mov	b,r7
   31F3 12 60 87      [24] 1065 	lcall	__gptrput
                           1066 ;	radio/radio.c:153: crc2 = crc16(*length, buf);
   31F6 78 8E         [12] 1067 	mov	r0,#_radio_receive_packet_PARM_2
   31F8 E2            [24] 1068 	movx	a,@r0
   31F9 F5 0C         [12] 1069 	mov	_crc16_PARM_2,a
   31FB 08            [12] 1070 	inc	r0
   31FC E2            [24] 1071 	movx	a,@r0
   31FD F5 0D         [12] 1072 	mov	(_crc16_PARM_2 + 1),a
   31FF 8D 82         [24] 1073 	mov	dpl,r5
   3201 C0 06         [24] 1074 	push	ar6
   3203 12 0B 36      [24] 1075 	lcall	_crc16
   3206 AD 82         [24] 1076 	mov	r5,dpl
   3208 AF 83         [24] 1077 	mov	r7,dph
   320A D0 06         [24] 1078 	pop	ar6
                           1079 ;	radio/radio.c:155: if (crc1 != crc2) {
   320C ED            [12] 1080 	mov	a,r5
   320D B5 4C 55      [24] 1081 	cjne	a,_radio_receive_packet_crc1_1_137,00126$
   3210 EF            [12] 1082 	mov	a,r7
   3211 B5 4D 51      [24] 1083 	cjne	a,(_radio_receive_packet_crc1_1_137 + 1),00126$
                           1084 ;	radio/radio.c:165: if (errcount != 0) {
   3214 EE            [12] 1085 	mov	a,r6
   3215 60 4C         [24] 1086 	jz	00125$
                           1087 ;	radio/radio.c:166: if ((uint16_t)(0xFFFF - errcount) > errors.corrected_errors) {
   3217 7F 00         [12] 1088 	mov	r7,#0x00
   3219 74 FF         [12] 1089 	mov	a,#0xFF
   321B C3            [12] 1090 	clr	c
   321C 9E            [12] 1091 	subb	a,r6
   321D FC            [12] 1092 	mov	r4,a
   321E 74 FF         [12] 1093 	mov	a,#0xFF
   3220 9F            [12] 1094 	subb	a,r7
   3221 FD            [12] 1095 	mov	r5,a
   3222 78 40         [12] 1096 	mov	r0,#(_errors + 0x0008)
   3224 E2            [24] 1097 	movx	a,@r0
   3225 FA            [12] 1098 	mov	r2,a
   3226 08            [12] 1099 	inc	r0
   3227 E2            [24] 1100 	movx	a,@r0
   3228 FB            [12] 1101 	mov	r3,a
   3229 C3            [12] 1102 	clr	c
   322A EA            [12] 1103 	mov	a,r2
   322B 9C            [12] 1104 	subb	a,r4
   322C EB            [12] 1105 	mov	a,r3
   322D 9D            [12] 1106 	subb	a,r5
   322E 50 0F         [24] 1107 	jnc	00120$
                           1108 ;	radio/radio.c:167: errors.corrected_errors += errcount;
   3230 EE            [12] 1109 	mov	a,r6
   3231 2A            [12] 1110 	add	a,r2
   3232 FE            [12] 1111 	mov	r6,a
   3233 EF            [12] 1112 	mov	a,r7
   3234 3B            [12] 1113 	addc	a,r3
   3235 FF            [12] 1114 	mov	r7,a
   3236 78 40         [12] 1115 	mov	r0,#(_errors + 0x0008)
   3238 EE            [12] 1116 	mov	a,r6
   3239 F2            [24] 1117 	movx	@r0,a
   323A 08            [12] 1118 	inc	r0
   323B EF            [12] 1119 	mov	a,r7
   323C F2            [24] 1120 	movx	@r0,a
   323D 80 09         [24] 1121 	sjmp	00121$
   323F                    1122 00120$:
                           1123 ;	radio/radio.c:169: errors.corrected_errors = 0xFFFF;
   323F 78 40         [12] 1124 	mov	r0,#(_errors + 0x0008)
   3241 74 FF         [12] 1125 	mov	a,#0xFF
   3243 F2            [24] 1126 	movx	@r0,a
   3244 08            [12] 1127 	inc	r0
   3245 74 FF         [12] 1128 	mov	a,#0xFF
   3247 F2            [24] 1129 	movx	@r0,a
   3248                    1130 00121$:
                           1131 ;	radio/radio.c:171: if (errors.corrected_packets != 0xFFFF) {
   3248 78 42         [12] 1132 	mov	r0,#(_errors + 0x000a)
   324A E2            [24] 1133 	movx	a,@r0
   324B FE            [12] 1134 	mov	r6,a
   324C 08            [12] 1135 	inc	r0
   324D E2            [24] 1136 	movx	a,@r0
   324E FF            [12] 1137 	mov	r7,a
   324F BE FF 05      [24] 1138 	cjne	r6,#0xFF,00190$
   3252 BF FF 02      [24] 1139 	cjne	r7,#0xFF,00190$
   3255 80 0C         [24] 1140 	sjmp	00125$
   3257                    1141 00190$:
                           1142 ;	radio/radio.c:172: errors.corrected_packets++;
   3257 0E            [12] 1143 	inc	r6
   3258 BE 00 01      [24] 1144 	cjne	r6,#0x00,00191$
   325B 0F            [12] 1145 	inc	r7
   325C                    1146 00191$:
   325C 78 42         [12] 1147 	mov	r0,#(_errors + 0x000a)
   325E EE            [12] 1148 	mov	a,r6
   325F F2            [24] 1149 	movx	@r0,a
   3260 08            [12] 1150 	inc	r0
   3261 EF            [12] 1151 	mov	a,r7
   3262 F2            [24] 1152 	movx	@r0,a
   3263                    1153 00125$:
                           1154 ;	radio/radio.c:176: return true;
   3263 D3            [12] 1155 	setb	c
                           1156 ;	radio/radio.c:178: failed:
   3264 22            [24] 1157 	ret
   3265                    1158 00126$:
                           1159 ;	radio/radio.c:179: if (errors.rx_errors != 0xFFFF) {
   3265 78 38         [12] 1160 	mov	r0,#_errors
   3267 E2            [24] 1161 	movx	a,@r0
   3268 FE            [12] 1162 	mov	r6,a
   3269 08            [12] 1163 	inc	r0
   326A E2            [24] 1164 	movx	a,@r0
   326B FF            [12] 1165 	mov	r7,a
   326C BE FF 05      [24] 1166 	cjne	r6,#0xFF,00192$
   326F BF FF 02      [24] 1167 	cjne	r7,#0xFF,00192$
   3272 80 0C         [24] 1168 	sjmp	00128$
   3274                    1169 00192$:
                           1170 ;	radio/radio.c:180: errors.rx_errors++;
   3274 0E            [12] 1171 	inc	r6
   3275 BE 00 01      [24] 1172 	cjne	r6,#0x00,00193$
   3278 0F            [12] 1173 	inc	r7
   3279                    1174 00193$:
   3279 78 38         [12] 1175 	mov	r0,#_errors
   327B EE            [12] 1176 	mov	a,r6
   327C F2            [24] 1177 	movx	@r0,a
   327D 08            [12] 1178 	inc	r0
   327E EF            [12] 1179 	mov	a,r7
   327F F2            [24] 1180 	movx	@r0,a
   3280                    1181 00128$:
                           1182 ;	radio/radio.c:182: return false;
   3280 C3            [12] 1183 	clr	c
   3281 22            [24] 1184 	ret
                           1185 ;------------------------------------------------------------
                           1186 ;Allocation info for local variables in function 'radio_write_transmit_fifo'
                           1187 ;------------------------------------------------------------
                           1188 ;n                         Allocated to registers r7 
                           1189 ;------------------------------------------------------------
                           1190 ;	radio/radio.c:189: radio_write_transmit_fifo(register uint8_t n, __xdata uint8_t * __pdata buffer)
                           1191 ;	-----------------------------------------
                           1192 ;	 function radio_write_transmit_fifo
                           1193 ;	-----------------------------------------
   3282                    1194 _radio_write_transmit_fifo:
   3282 AF 82         [24] 1195 	mov	r7,dpl
                           1196 ;	radio/radio.c:191: NSS1 = 0;
   3284 C2 94         [12] 1197 	clr	_NSS1
                           1198 ;	radio/radio.c:192: SPIF1 = 0;
   3286 C2 B7         [12] 1199 	clr	_SPIF1
                           1200 ;	radio/radio.c:193: SPI1DAT = (0x80 | EZRADIOPRO_FIFO_ACCESS);
   3288 75 86 FF      [24] 1201 	mov	_SPI1DAT,#0xFF
                           1202 ;	radio/radio.c:195: while (n--) {
   328B 78 90         [12] 1203 	mov	r0,#_radio_write_transmit_fifo_PARM_2
   328D E2            [24] 1204 	movx	a,@r0
   328E FD            [12] 1205 	mov	r5,a
   328F 08            [12] 1206 	inc	r0
   3290 E2            [24] 1207 	movx	a,@r0
   3291 FE            [12] 1208 	mov	r6,a
   3292                    1209 00104$:
   3292 8F 04         [24] 1210 	mov	ar4,r7
   3294 1F            [12] 1211 	dec	r7
   3295 EC            [12] 1212 	mov	a,r4
   3296 60 11         [24] 1213 	jz	00107$
                           1214 ;	radio/radio.c:196: while (!TXBMT1) /* noop */;
   3298                    1215 00101$:
   3298 30 B1 FD      [24] 1216 	jnb	_TXBMT1,00101$
                           1217 ;	radio/radio.c:197: SPI1DAT = *buffer++;
   329B 8D 82         [24] 1218 	mov	dpl,r5
   329D 8E 83         [24] 1219 	mov	dph,r6
   329F E0            [24] 1220 	movx	a,@dptr
   32A0 F5 86         [12] 1221 	mov	_SPI1DAT,a
   32A2 A3            [24] 1222 	inc	dptr
   32A3 AD 82         [24] 1223 	mov	r5,dpl
   32A5 AE 83         [24] 1224 	mov	r6,dph
                           1225 ;	radio/radio.c:200: while (!TXBMT1) /* noop */;
   32A7 80 E9         [24] 1226 	sjmp	00104$
   32A9                    1227 00107$:
   32A9 30 B1 FD      [24] 1228 	jnb	_TXBMT1,00107$
                           1229 ;	radio/radio.c:201: while ((SPI1CFG & 0x80) == 0x80);
   32AC                    1230 00110$:
   32AC 74 80         [12] 1231 	mov	a,#0x80
   32AE 55 84         [12] 1232 	anl	a,_SPI1CFG
   32B0 FF            [12] 1233 	mov	r7,a
   32B1 BF 80 02      [24] 1234 	cjne	r7,#0x80,00137$
   32B4 80 F6         [24] 1235 	sjmp	00110$
   32B6                    1236 00137$:
                           1237 ;	radio/radio.c:203: SPIF1 = 0;
   32B6 C2 B7         [12] 1238 	clr	_SPIF1
                           1239 ;	radio/radio.c:204: NSS1 = 1;
   32B8 D2 94         [12] 1240 	setb	_NSS1
   32BA 22            [24] 1241 	ret
                           1242 ;------------------------------------------------------------
                           1243 ;Allocation info for local variables in function 'radio_receive_in_progress'
                           1244 ;------------------------------------------------------------
                           1245 ;	radio/radio.c:210: radio_receive_in_progress(void)
                           1246 ;	-----------------------------------------
                           1247 ;	 function radio_receive_in_progress
                           1248 ;	-----------------------------------------
   32BB                    1249 _radio_receive_in_progress:
                           1250 ;	radio/radio.c:212: if (packet_received ||
   32BB 20 17 05      [24] 1251 	jb	_packet_received,00101$
                           1252 ;	radio/radio.c:213: partial_packet_length != 0) {
   32BE 78 7E         [12] 1253 	mov	r0,#_partial_packet_length
   32C0 E2            [24] 1254 	movx	a,@r0
   32C1 60 02         [24] 1255 	jz	00102$
   32C3                    1256 00101$:
                           1257 ;	radio/radio.c:214: return true;
   32C3 D3            [12] 1258 	setb	c
   32C4 22            [24] 1259 	ret
   32C5                    1260 00102$:
                           1261 ;	radio/radio.c:218: if (register_read(EZRADIOPRO_EZMAC_STATUS) & EZRADIOPRO_PKRX) {
   32C5 75 82 31      [24] 1262 	mov	dpl,#0x31
   32C8 12 3B 9D      [24] 1263 	lcall	_register_read
   32CB E5 82         [12] 1264 	mov	a,dpl
   32CD 30 E4 02      [24] 1265 	jnb	acc.4,00105$
                           1266 ;	radio/radio.c:219: return true;
   32D0 D3            [12] 1267 	setb	c
   32D1 22            [24] 1268 	ret
   32D2                    1269 00105$:
                           1270 ;	radio/radio.c:221: return false;
   32D2 C3            [12] 1271 	clr	c
   32D3 22            [24] 1272 	ret
                           1273 ;------------------------------------------------------------
                           1274 ;Allocation info for local variables in function 'radio_preamble_detected'
                           1275 ;------------------------------------------------------------
                           1276 ;	radio/radio.c:228: radio_preamble_detected(void)
                           1277 ;	-----------------------------------------
                           1278 ;	 function radio_preamble_detected
                           1279 ;	-----------------------------------------
   32D4                    1280 _radio_preamble_detected:
                           1281 ;	radio/radio.c:230: EX0_SAVE_DISABLE;
   32D4 A2 A8         [12] 1282 	mov	c,_EX0
   32D6 92 19         [24] 1283 	mov	_radio_preamble_detected_EX0_saved_1_159,c
   32D8 C2 A8         [12] 1284 	clr	_EX0
                           1285 ;	radio/radio.c:231: if (preamble_detected) {
                           1286 ;	radio/radio.c:232: preamble_detected = 0;
   32DA 10 18 02      [24] 1287 	jbc	_preamble_detected,00108$
   32DD 80 06         [24] 1288 	sjmp	00102$
   32DF                    1289 00108$:
                           1290 ;	radio/radio.c:233: EX0_RESTORE;
   32DF A2 19         [12] 1291 	mov	c,_radio_preamble_detected_EX0_saved_1_159
   32E1 92 A8         [24] 1292 	mov	_EX0,c
                           1293 ;	radio/radio.c:234: return true;
   32E3 D3            [12] 1294 	setb	c
   32E4 22            [24] 1295 	ret
   32E5                    1296 00102$:
                           1297 ;	radio/radio.c:236: EX0_RESTORE;
   32E5 A2 19         [12] 1298 	mov	c,_radio_preamble_detected_EX0_saved_1_159
   32E7 92 A8         [24] 1299 	mov	_EX0,c
                           1300 ;	radio/radio.c:237: return false;
   32E9 C3            [12] 1301 	clr	c
   32EA 22            [24] 1302 	ret
                           1303 ;------------------------------------------------------------
                           1304 ;Allocation info for local variables in function 'radio_last_rssi'
                           1305 ;------------------------------------------------------------
                           1306 ;	radio/radio.c:245: radio_last_rssi(void)
                           1307 ;	-----------------------------------------
                           1308 ;	 function radio_last_rssi
                           1309 ;	-----------------------------------------
   32EB                    1310 _radio_last_rssi:
                           1311 ;	radio/radio.c:247: return last_rssi;
   32EB 78 7F         [12] 1312 	mov	r0,#_last_rssi
   32ED E2            [24] 1313 	movx	a,@r0
   32EE F5 82         [12] 1314 	mov	dpl,a
   32F0 22            [24] 1315 	ret
                           1316 ;------------------------------------------------------------
                           1317 ;Allocation info for local variables in function 'radio_current_rssi'
                           1318 ;------------------------------------------------------------
                           1319 ;	radio/radio.c:253: radio_current_rssi(void)
                           1320 ;	-----------------------------------------
                           1321 ;	 function radio_current_rssi
                           1322 ;	-----------------------------------------
   32F1                    1323 _radio_current_rssi:
                           1324 ;	radio/radio.c:255: return register_read(EZRADIOPRO_RECEIVED_SIGNAL_STRENGTH_INDICATOR);
   32F1 75 82 26      [24] 1325 	mov	dpl,#0x26
   32F4 02 3B 9D      [24] 1326 	ljmp	_register_read
                           1327 ;------------------------------------------------------------
                           1328 ;Allocation info for local variables in function 'radio_air_rate'
                           1329 ;------------------------------------------------------------
                           1330 ;	radio/radio.c:261: radio_air_rate(void)
                           1331 ;	-----------------------------------------
                           1332 ;	 function radio_air_rate
                           1333 ;	-----------------------------------------
   32F7                    1334 _radio_air_rate:
                           1335 ;	radio/radio.c:263: return settings.air_data_rate;
   32F7 78 8A         [12] 1336 	mov	r0,#(_settings + 0x0008)
   32F9 E2            [24] 1337 	movx	a,@r0
   32FA F5 82         [12] 1338 	mov	dpl,a
   32FC 22            [24] 1339 	ret
                           1340 ;------------------------------------------------------------
                           1341 ;Allocation info for local variables in function 'radio_clear_transmit_fifo'
                           1342 ;------------------------------------------------------------
                           1343 ;control                   Allocated to registers r7 
                           1344 ;------------------------------------------------------------
                           1345 ;	radio/radio.c:269: radio_clear_transmit_fifo(void)
                           1346 ;	-----------------------------------------
                           1347 ;	 function radio_clear_transmit_fifo
                           1348 ;	-----------------------------------------
   32FD                    1349 _radio_clear_transmit_fifo:
                           1350 ;	radio/radio.c:272: control = register_read(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2);
   32FD 75 82 08      [24] 1351 	mov	dpl,#0x08
   3300 12 3B 9D      [24] 1352 	lcall	_register_read
   3303 AF 82         [24] 1353 	mov	r7,dpl
                           1354 ;	radio/radio.c:273: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, control | EZRADIOPRO_FFCLRTX);
   3305 74 01         [12] 1355 	mov	a,#0x01
   3307 4F            [12] 1356 	orl	a,r7
   3308 FE            [12] 1357 	mov	r6,a
   3309 C0 07         [24] 1358 	push	ar7
   330B C0 06         [24] 1359 	push	ar6
   330D 75 82 08      [24] 1360 	mov	dpl,#0x08
   3310 12 3B 6D      [24] 1361 	lcall	_register_write
   3313 15 81         [12] 1362 	dec	sp
   3315 D0 07         [24] 1363 	pop	ar7
                           1364 ;	radio/radio.c:274: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, control & ~EZRADIOPRO_FFCLRTX);
   3317 53 07 FE      [24] 1365 	anl	ar7,#0xFE
   331A C0 07         [24] 1366 	push	ar7
   331C 75 82 08      [24] 1367 	mov	dpl,#0x08
   331F 12 3B 6D      [24] 1368 	lcall	_register_write
   3322 15 81         [12] 1369 	dec	sp
   3324 22            [24] 1370 	ret
                           1371 ;------------------------------------------------------------
                           1372 ;Allocation info for local variables in function 'radio_clear_receive_fifo'
                           1373 ;------------------------------------------------------------
                           1374 ;control                   Allocated to registers r7 
                           1375 ;------------------------------------------------------------
                           1376 ;	radio/radio.c:281: radio_clear_receive_fifo(void) __reentrant
                           1377 ;	-----------------------------------------
                           1378 ;	 function radio_clear_receive_fifo
                           1379 ;	-----------------------------------------
   3325                    1380 _radio_clear_receive_fifo:
                           1381 ;	radio/radio.c:284: control = register_read(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2);
   3325 75 82 08      [24] 1382 	mov	dpl,#0x08
   3328 12 3B 9D      [24] 1383 	lcall	_register_read
   332B AF 82         [24] 1384 	mov	r7,dpl
                           1385 ;	radio/radio.c:285: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, control | EZRADIOPRO_FFCLRRX);
   332D 74 02         [12] 1386 	mov	a,#0x02
   332F 4F            [12] 1387 	orl	a,r7
   3330 FE            [12] 1388 	mov	r6,a
   3331 C0 07         [24] 1389 	push	ar7
   3333 C0 06         [24] 1390 	push	ar6
   3335 75 82 08      [24] 1391 	mov	dpl,#0x08
   3338 12 3B 6D      [24] 1392 	lcall	_register_write
   333B 15 81         [12] 1393 	dec	sp
   333D D0 07         [24] 1394 	pop	ar7
                           1395 ;	radio/radio.c:286: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, control & ~EZRADIOPRO_FFCLRRX);
   333F 53 07 FD      [24] 1396 	anl	ar7,#0xFD
   3342 C0 07         [24] 1397 	push	ar7
   3344 75 82 08      [24] 1398 	mov	dpl,#0x08
   3347 12 3B 6D      [24] 1399 	lcall	_register_write
   334A 15 81         [12] 1400 	dec	sp
   334C 22            [24] 1401 	ret
                           1402 ;------------------------------------------------------------
                           1403 ;Allocation info for local variables in function 'radio_transmit_simple'
                           1404 ;------------------------------------------------------------
                           1405 ;length                    Allocated to registers r7 
                           1406 ;n                         Allocated to registers r6 
                           1407 ;status                    Allocated to registers r3 
                           1408 ;------------------------------------------------------------
                           1409 ;	radio/radio.c:298: radio_transmit_simple(__data uint8_t length, __xdata uint8_t * __pdata buf, __pdata uint16_t timeout_ticks)
                           1410 ;	-----------------------------------------
                           1411 ;	 function radio_transmit_simple
                           1412 ;	-----------------------------------------
   334D                    1413 _radio_transmit_simple:
                           1414 ;	radio/radio.c:304: if (length > sizeof(radio_buffer)) {
   334D E5 82         [12] 1415 	mov	a,dpl
   334F FF            [12] 1416 	mov	r7,a
   3350 24 03         [12] 1417 	add	a,#0xff - 0xFC
   3352 50 19         [24] 1418 	jnc	00102$
                           1419 ;	radio/radio.c:305: panic("oversized packet");
   3354 C0 07         [24] 1420 	push	ar7
   3356 74 37         [12] 1421 	mov	a,#__str_0
   3358 C0 E0         [24] 1422 	push	acc
   335A 74 CC         [12] 1423 	mov	a,#(__str_0 >> 8)
   335C C0 E0         [24] 1424 	push	acc
   335E 74 80         [12] 1425 	mov	a,#0x80
   3360 C0 E0         [24] 1426 	push	acc
   3362 12 13 04      [24] 1427 	lcall	_panic
   3365 15 81         [12] 1428 	dec	sp
   3367 15 81         [12] 1429 	dec	sp
   3369 15 81         [12] 1430 	dec	sp
   336B D0 07         [24] 1431 	pop	ar7
   336D                    1432 00102$:
                           1433 ;	radio/radio.c:308: radio_clear_transmit_fifo();
   336D C0 07         [24] 1434 	push	ar7
   336F 12 32 FD      [24] 1435 	lcall	_radio_clear_transmit_fifo
   3372 D0 07         [24] 1436 	pop	ar7
                           1437 ;	radio/radio.c:310: register_write(EZRADIOPRO_TRANSMIT_PACKET_LENGTH, length);
   3374 C0 07         [24] 1438 	push	ar7
   3376 C0 07         [24] 1439 	push	ar7
   3378 75 82 3E      [24] 1440 	mov	dpl,#0x3E
   337B 12 3B 6D      [24] 1441 	lcall	_register_write
   337E 15 81         [12] 1442 	dec	sp
   3380 D0 07         [24] 1443 	pop	ar7
                           1444 ;	radio/radio.c:313: n = length;
                           1445 ;	radio/radio.c:314: if (n > TX_FIFO_THRESHOLD_LOW) {
   3382 EF            [12] 1446 	mov	a,r7
   3383 FE            [12] 1447 	mov	r6,a
   3384 24 DF         [12] 1448 	add	a,#0xff - 0x20
   3386 50 02         [24] 1449 	jnc	00104$
                           1450 ;	radio/radio.c:315: n = TX_FIFO_THRESHOLD_LOW;
   3388 7E 20         [12] 1451 	mov	r6,#0x20
   338A                    1452 00104$:
                           1453 ;	radio/radio.c:317: radio_write_transmit_fifo(n, buf);
   338A 78 92         [12] 1454 	mov	r0,#_radio_transmit_simple_PARM_2
   338C 79 90         [12] 1455 	mov	r1,#_radio_write_transmit_fifo_PARM_2
   338E E2            [24] 1456 	movx	a,@r0
   338F F3            [24] 1457 	movx	@r1,a
   3390 08            [12] 1458 	inc	r0
   3391 E2            [24] 1459 	movx	a,@r0
   3392 09            [12] 1460 	inc	r1
   3393 F3            [24] 1461 	movx	@r1,a
   3394 8E 82         [24] 1462 	mov	dpl,r6
   3396 C0 07         [24] 1463 	push	ar7
   3398 C0 06         [24] 1464 	push	ar6
   339A 12 32 82      [24] 1465 	lcall	_radio_write_transmit_fifo
   339D D0 06         [24] 1466 	pop	ar6
   339F D0 07         [24] 1467 	pop	ar7
                           1468 ;	radio/radio.c:318: length -= n;
   33A1 EF            [12] 1469 	mov	a,r7
   33A2 C3            [12] 1470 	clr	c
   33A3 9E            [12] 1471 	subb	a,r6
   33A4 FF            [12] 1472 	mov	r7,a
                           1473 ;	radio/radio.c:319: buf += n;
   33A5 78 92         [12] 1474 	mov	r0,#_radio_transmit_simple_PARM_2
   33A7 E2            [24] 1475 	movx	a,@r0
   33A8 2E            [12] 1476 	add	a,r6
   33A9 F2            [24] 1477 	movx	@r0,a
   33AA 08            [12] 1478 	inc	r0
   33AB E2            [24] 1479 	movx	a,@r0
   33AC 34 00         [12] 1480 	addc	a,#0x00
   33AE F2            [24] 1481 	movx	@r0,a
                           1482 ;	radio/radio.c:322: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0);
   33AF C0 07         [24] 1483 	push	ar7
   33B1 E4            [12] 1484 	clr	a
   33B2 C0 E0         [24] 1485 	push	acc
   33B4 75 82 05      [24] 1486 	mov	dpl,#0x05
   33B7 12 3B 6D      [24] 1487 	lcall	_register_write
   33BA 15 81         [12] 1488 	dec	sp
                           1489 ;	radio/radio.c:323: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, 0);
   33BC E4            [12] 1490 	clr	a
   33BD C0 E0         [24] 1491 	push	acc
   33BF 75 82 06      [24] 1492 	mov	dpl,#0x06
   33C2 12 3B 6D      [24] 1493 	lcall	_register_write
   33C5 15 81         [12] 1494 	dec	sp
                           1495 ;	radio/radio.c:325: preamble_detected = 0;
   33C7 C2 18         [12] 1496 	clr	_preamble_detected
                           1497 ;	radio/radio.c:326: transmit_started = false;
   33C9 C2 1A         [12] 1498 	clr	_radio_transmit_simple_transmit_started_1_172
                           1499 ;	radio/radio.c:329: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_1, EZRADIOPRO_TXON | EZRADIOPRO_XTON);
   33CB 74 09         [12] 1500 	mov	a,#0x09
   33CD C0 E0         [24] 1501 	push	acc
   33CF 75 82 07      [24] 1502 	mov	dpl,#0x07
   33D2 12 3B 6D      [24] 1503 	lcall	_register_write
   33D5 15 81         [12] 1504 	dec	sp
                           1505 ;	radio/radio.c:332: tstart = timer2_tick();
   33D7 12 59 5B      [24] 1506 	lcall	_timer2_tick
   33DA AC 82         [24] 1507 	mov	r4,dpl
   33DC AD 83         [24] 1508 	mov	r5,dph
   33DE D0 07         [24] 1509 	pop	ar7
                           1510 ;	radio/radio.c:333: while ((uint16_t)(timer2_tick() - tstart) < timeout_ticks) {
   33E0                    1511 00130$:
   33E0 C0 07         [24] 1512 	push	ar7
   33E2 C0 05         [24] 1513 	push	ar5
   33E4 C0 04         [24] 1514 	push	ar4
   33E6 12 59 5B      [24] 1515 	lcall	_timer2_tick
   33E9 AA 82         [24] 1516 	mov	r2,dpl
   33EB AB 83         [24] 1517 	mov	r3,dph
   33ED D0 04         [24] 1518 	pop	ar4
   33EF D0 05         [24] 1519 	pop	ar5
   33F1 D0 07         [24] 1520 	pop	ar7
   33F3 EA            [12] 1521 	mov	a,r2
   33F4 C3            [12] 1522 	clr	c
   33F5 9C            [12] 1523 	subb	a,r4
   33F6 FA            [12] 1524 	mov	r2,a
   33F7 EB            [12] 1525 	mov	a,r3
   33F8 9D            [12] 1526 	subb	a,r5
   33F9 FB            [12] 1527 	mov	r3,a
   33FA 78 94         [12] 1528 	mov	r0,#_radio_transmit_simple_PARM_3
   33FC C3            [12] 1529 	clr	c
   33FD E2            [24] 1530 	movx	a,@r0
   33FE F5 F0         [12] 1531 	mov	b,a
   3400 EA            [12] 1532 	mov	a,r2
   3401 95 F0         [12] 1533 	subb	a,b
   3403 08            [12] 1534 	inc	r0
   3404 E2            [24] 1535 	movx	a,@r0
   3405 F5 F0         [12] 1536 	mov	b,a
   3407 EB            [12] 1537 	mov	a,r3
   3408 95 F0         [12] 1538 	subb	a,b
   340A 40 03         [24] 1539 	jc	00199$
   340C 02 35 19      [24] 1540 	ljmp	00132$
   340F                    1541 00199$:
                           1542 ;	radio/radio.c:337: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_1);
   340F 75 82 03      [24] 1543 	mov	dpl,#0x03
   3412 C0 07         [24] 1544 	push	ar7
   3414 C0 05         [24] 1545 	push	ar5
   3416 C0 04         [24] 1546 	push	ar4
   3418 12 3B 9D      [24] 1547 	lcall	_register_read
   341B AB 82         [24] 1548 	mov	r3,dpl
   341D D0 04         [24] 1549 	pop	ar4
   341F D0 05         [24] 1550 	pop	ar5
   3421 D0 07         [24] 1551 	pop	ar7
                           1552 ;	radio/radio.c:338: if (transmit_started && length != 0 && (status & EZRADIOPRO_ITXFFAEM)) {
   3423 30 1A 40      [24] 1553 	jnb	_radio_transmit_simple_transmit_started_1_172,00108$
   3426 EF            [12] 1554 	mov	a,r7
   3427 60 3D         [24] 1555 	jz	00108$
   3429 EB            [12] 1556 	mov	a,r3
   342A 30 E5 39      [24] 1557 	jnb	acc.5,00108$
                           1558 ;	radio/radio.c:345: n = 4;
   342D 7E 04         [12] 1559 	mov	r6,#0x04
                           1560 ;	radio/radio.c:346: if (n > length) {
   342F BF 04 00      [24] 1561 	cjne	r7,#0x04,00203$
   3432                    1562 00203$:
   3432 50 02         [24] 1563 	jnc	00106$
                           1564 ;	radio/radio.c:347: n = length;
   3434 8F 06         [24] 1565 	mov	ar6,r7
   3436                    1566 00106$:
                           1567 ;	radio/radio.c:349: radio_write_transmit_fifo(n, buf);
   3436 78 92         [12] 1568 	mov	r0,#_radio_transmit_simple_PARM_2
   3438 79 90         [12] 1569 	mov	r1,#_radio_write_transmit_fifo_PARM_2
   343A E2            [24] 1570 	movx	a,@r0
   343B F3            [24] 1571 	movx	@r1,a
   343C 08            [12] 1572 	inc	r0
   343D E2            [24] 1573 	movx	a,@r0
   343E 09            [12] 1574 	inc	r1
   343F F3            [24] 1575 	movx	@r1,a
   3440 8E 82         [24] 1576 	mov	dpl,r6
   3442 C0 07         [24] 1577 	push	ar7
   3444 C0 06         [24] 1578 	push	ar6
   3446 C0 05         [24] 1579 	push	ar5
   3448 C0 04         [24] 1580 	push	ar4
   344A 12 32 82      [24] 1581 	lcall	_radio_write_transmit_fifo
   344D D0 04         [24] 1582 	pop	ar4
   344F D0 05         [24] 1583 	pop	ar5
   3451 D0 06         [24] 1584 	pop	ar6
   3453 D0 07         [24] 1585 	pop	ar7
                           1586 ;	radio/radio.c:350: length -= n;
   3455 EF            [12] 1587 	mov	a,r7
   3456 C3            [12] 1588 	clr	c
   3457 9E            [12] 1589 	subb	a,r6
   3458 FF            [12] 1590 	mov	r7,a
                           1591 ;	radio/radio.c:351: buf += n;
   3459 78 92         [12] 1592 	mov	r0,#_radio_transmit_simple_PARM_2
   345B E2            [24] 1593 	movx	a,@r0
   345C 2E            [12] 1594 	add	a,r6
   345D F2            [24] 1595 	movx	@r0,a
   345E 08            [12] 1596 	inc	r0
   345F E2            [24] 1597 	movx	a,@r0
   3460 34 00         [12] 1598 	addc	a,#0x00
   3462 F2            [24] 1599 	movx	@r0,a
                           1600 ;	radio/radio.c:352: continue;
   3463 02 33 E0      [24] 1601 	ljmp	00130$
   3466                    1602 00108$:
                           1603 ;	radio/radio.c:354: if (transmit_started && length != 0 && (status & EZRADIOPRO_ITXFFAFULL) == 0) {
   3466 30 1A 40      [24] 1604 	jnb	_radio_transmit_simple_transmit_started_1_172,00114$
   3469 EF            [12] 1605 	mov	a,r7
   346A 60 3D         [24] 1606 	jz	00114$
   346C EB            [12] 1607 	mov	a,r3
   346D 20 E6 39      [24] 1608 	jb	acc.6,00114$
                           1609 ;	radio/radio.c:358: n = 4;
   3470 7E 04         [12] 1610 	mov	r6,#0x04
                           1611 ;	radio/radio.c:359: if (n > length) {
   3472 BF 04 00      [24] 1612 	cjne	r7,#0x04,00208$
   3475                    1613 00208$:
   3475 50 02         [24] 1614 	jnc	00112$
                           1615 ;	radio/radio.c:360: n = length;
   3477 8F 06         [24] 1616 	mov	ar6,r7
   3479                    1617 00112$:
                           1618 ;	radio/radio.c:362: radio_write_transmit_fifo(n, buf);
   3479 78 92         [12] 1619 	mov	r0,#_radio_transmit_simple_PARM_2
   347B 79 90         [12] 1620 	mov	r1,#_radio_write_transmit_fifo_PARM_2
   347D E2            [24] 1621 	movx	a,@r0
   347E F3            [24] 1622 	movx	@r1,a
   347F 08            [12] 1623 	inc	r0
   3480 E2            [24] 1624 	movx	a,@r0
   3481 09            [12] 1625 	inc	r1
   3482 F3            [24] 1626 	movx	@r1,a
   3483 8E 82         [24] 1627 	mov	dpl,r6
   3485 C0 07         [24] 1628 	push	ar7
   3487 C0 06         [24] 1629 	push	ar6
   3489 C0 05         [24] 1630 	push	ar5
   348B C0 04         [24] 1631 	push	ar4
   348D 12 32 82      [24] 1632 	lcall	_radio_write_transmit_fifo
   3490 D0 04         [24] 1633 	pop	ar4
   3492 D0 05         [24] 1634 	pop	ar5
   3494 D0 06         [24] 1635 	pop	ar6
   3496 D0 07         [24] 1636 	pop	ar7
                           1637 ;	radio/radio.c:363: length -= n;
   3498 EF            [12] 1638 	mov	a,r7
   3499 C3            [12] 1639 	clr	c
   349A 9E            [12] 1640 	subb	a,r6
   349B FF            [12] 1641 	mov	r7,a
                           1642 ;	radio/radio.c:364: buf += n;
   349C 78 92         [12] 1643 	mov	r0,#_radio_transmit_simple_PARM_2
   349E E2            [24] 1644 	movx	a,@r0
   349F 2E            [12] 1645 	add	a,r6
   34A0 F2            [24] 1646 	movx	@r0,a
   34A1 08            [12] 1647 	inc	r0
   34A2 E2            [24] 1648 	movx	a,@r0
   34A3 34 00         [12] 1649 	addc	a,#0x00
   34A5 F2            [24] 1650 	movx	@r0,a
                           1651 ;	radio/radio.c:365: continue;
   34A6 02 33 E0      [24] 1652 	ljmp	00130$
   34A9                    1653 00114$:
                           1654 ;	radio/radio.c:368: if (status & EZRADIOPRO_IFFERR) {
   34A9 EB            [12] 1655 	mov	a,r3
   34AA 30 E7 20      [24] 1656 	jnb	acc.7,00120$
                           1657 ;	radio/radio.c:370: radio_clear_transmit_fifo();
   34AD 12 32 FD      [24] 1658 	lcall	_radio_clear_transmit_fifo
                           1659 ;	radio/radio.c:372: if (errors.tx_errors != 0xFFFF) {
   34B0 78 3A         [12] 1660 	mov	r0,#(_errors + 0x0002)
   34B2 E2            [24] 1661 	movx	a,@r0
   34B3 FA            [12] 1662 	mov	r2,a
   34B4 08            [12] 1663 	inc	r0
   34B5 E2            [24] 1664 	movx	a,@r0
   34B6 FE            [12] 1665 	mov	r6,a
   34B7 BA FF 05      [24] 1666 	cjne	r2,#0xFF,00211$
   34BA BE FF 02      [24] 1667 	cjne	r6,#0xFF,00211$
   34BD 80 0C         [24] 1668 	sjmp	00118$
   34BF                    1669 00211$:
                           1670 ;	radio/radio.c:373: errors.tx_errors++;
   34BF 0A            [12] 1671 	inc	r2
   34C0 BA 00 01      [24] 1672 	cjne	r2,#0x00,00212$
   34C3 0E            [12] 1673 	inc	r6
   34C4                    1674 00212$:
   34C4 78 3A         [12] 1675 	mov	r0,#(_errors + 0x0002)
   34C6 EA            [12] 1676 	mov	a,r2
   34C7 F2            [24] 1677 	movx	@r0,a
   34C8 08            [12] 1678 	inc	r0
   34C9 EE            [12] 1679 	mov	a,r6
   34CA F2            [24] 1680 	movx	@r0,a
   34CB                    1681 00118$:
                           1682 ;	radio/radio.c:375: return false;
   34CB C3            [12] 1683 	clr	c
   34CC 22            [24] 1684 	ret
   34CD                    1685 00120$:
                           1686 ;	radio/radio.c:380: status = register_read(EZRADIOPRO_DEVICE_STATUS);
   34CD 75 82 02      [24] 1687 	mov	dpl,#0x02
   34D0 C0 07         [24] 1688 	push	ar7
   34D2 C0 05         [24] 1689 	push	ar5
   34D4 C0 04         [24] 1690 	push	ar4
   34D6 12 3B 9D      [24] 1691 	lcall	_register_read
   34D9 AB 82         [24] 1692 	mov	r3,dpl
   34DB D0 04         [24] 1693 	pop	ar4
   34DD D0 05         [24] 1694 	pop	ar5
   34DF D0 07         [24] 1695 	pop	ar7
                           1696 ;	radio/radio.c:381: if (status & 0x02) {
   34E1 EB            [12] 1697 	mov	a,r3
   34E2 30 E1 05      [24] 1698 	jnb	acc.1,00122$
                           1699 ;	radio/radio.c:383: transmit_started = true;
   34E5 D2 1A         [12] 1700 	setb	_radio_transmit_simple_transmit_started_1_172
                           1701 ;	radio/radio.c:384: continue;
   34E7 02 33 E0      [24] 1702 	ljmp	00130$
   34EA                    1703 00122$:
                           1704 ;	radio/radio.c:386: if (transmit_started && (status & 0x02) == 0) {
   34EA 20 1A 03      [24] 1705 	jb	_radio_transmit_simple_transmit_started_1_172,00214$
   34ED 02 33 E0      [24] 1706 	ljmp	00130$
   34F0                    1707 00214$:
   34F0 EB            [12] 1708 	mov	a,r3
   34F1 30 E1 03      [24] 1709 	jnb	acc.1,00215$
   34F4 02 33 E0      [24] 1710 	ljmp	00130$
   34F7                    1711 00215$:
                           1712 ;	radio/radio.c:389: if (length != 0) {
   34F7 EF            [12] 1713 	mov	a,r7
   34F8 60 1D         [24] 1714 	jz	00126$
                           1715 ;	radio/radio.c:391: if (errors.tx_errors != 0xFFFF) {
   34FA 78 3A         [12] 1716 	mov	r0,#(_errors + 0x0002)
   34FC E2            [24] 1717 	movx	a,@r0
   34FD FE            [12] 1718 	mov	r6,a
   34FE 08            [12] 1719 	inc	r0
   34FF E2            [24] 1720 	movx	a,@r0
   3500 FF            [12] 1721 	mov	r7,a
   3501 BE FF 05      [24] 1722 	cjne	r6,#0xFF,00217$
   3504 BF FF 02      [24] 1723 	cjne	r7,#0xFF,00217$
   3507 80 0C         [24] 1724 	sjmp	00124$
   3509                    1725 00217$:
                           1726 ;	radio/radio.c:392: errors.tx_errors++;
   3509 0E            [12] 1727 	inc	r6
   350A BE 00 01      [24] 1728 	cjne	r6,#0x00,00218$
   350D 0F            [12] 1729 	inc	r7
   350E                    1730 00218$:
   350E 78 3A         [12] 1731 	mov	r0,#(_errors + 0x0002)
   3510 EE            [12] 1732 	mov	a,r6
   3511 F2            [24] 1733 	movx	@r0,a
   3512 08            [12] 1734 	inc	r0
   3513 EF            [12] 1735 	mov	a,r7
   3514 F2            [24] 1736 	movx	@r0,a
   3515                    1737 00124$:
                           1738 ;	radio/radio.c:394: return false;
   3515 C3            [12] 1739 	clr	c
   3516 22            [24] 1740 	ret
   3517                    1741 00126$:
                           1742 ;	radio/radio.c:396: return true;			
   3517 D3            [12] 1743 	setb	c
   3518 22            [24] 1744 	ret
   3519                    1745 00132$:
                           1746 ;	radio/radio.c:407: if (errors.tx_errors != 0xFFFF) {
   3519 78 3A         [12] 1747 	mov	r0,#(_errors + 0x0002)
   351B E2            [24] 1748 	movx	a,@r0
   351C FE            [12] 1749 	mov	r6,a
   351D 08            [12] 1750 	inc	r0
   351E E2            [24] 1751 	movx	a,@r0
   351F FF            [12] 1752 	mov	r7,a
   3520 BE FF 05      [24] 1753 	cjne	r6,#0xFF,00219$
   3523 BF FF 02      [24] 1754 	cjne	r7,#0xFF,00219$
   3526 80 0C         [24] 1755 	sjmp	00134$
   3528                    1756 00219$:
                           1757 ;	radio/radio.c:408: errors.tx_errors++;
   3528 0E            [12] 1758 	inc	r6
   3529 BE 00 01      [24] 1759 	cjne	r6,#0x00,00220$
   352C 0F            [12] 1760 	inc	r7
   352D                    1761 00220$:
   352D 78 3A         [12] 1762 	mov	r0,#(_errors + 0x0002)
   352F EE            [12] 1763 	mov	a,r6
   3530 F2            [24] 1764 	movx	@r0,a
   3531 08            [12] 1765 	inc	r0
   3532 EF            [12] 1766 	mov	a,r7
   3533 F2            [24] 1767 	movx	@r0,a
   3534                    1768 00134$:
                           1769 ;	radio/radio.c:411: return false;
   3534 C3            [12] 1770 	clr	c
   3535 22            [24] 1771 	ret
                           1772 ;------------------------------------------------------------
                           1773 ;Allocation info for local variables in function 'radio_transmit_golay'
                           1774 ;------------------------------------------------------------
                           1775 ;elen                      Allocated with name '_radio_transmit_golay_elen_1_188'
                           1776 ;rlen                      Allocated to registers r5 
                           1777 ;length                    Allocated with name '_radio_transmit_golay_length_1_187'
                           1778 ;gin                       Allocated with name '_radio_transmit_golay_gin_1_188'
                           1779 ;------------------------------------------------------------
                           1780 ;	radio/radio.c:424: radio_transmit_golay(uint8_t length, __xdata uint8_t * __pdata buf, __pdata uint16_t timeout_ticks)
                           1781 ;	-----------------------------------------
                           1782 ;	 function radio_transmit_golay
                           1783 ;	-----------------------------------------
   3536                    1784 _radio_transmit_golay:
   3536 E5 82         [12] 1785 	mov	a,dpl
                           1786 ;	radio/radio.c:430: if (length > (sizeof(radio_buffer)/2)-6) {
   3538 90 04 6A      [24] 1787 	mov	dptr,#_radio_transmit_golay_length_1_187
   353B F0            [24] 1788 	movx	@dptr,a
   353C FF            [12] 1789 	mov  r7,a
   353D 24 87         [12] 1790 	add	a,#0xff - 0x78
   353F 50 19         [24] 1791 	jnc	00102$
                           1792 ;	radio/radio.c:432: panic("oversized golay packet");		
   3541 C0 07         [24] 1793 	push	ar7
   3543 74 48         [12] 1794 	mov	a,#__str_1
   3545 C0 E0         [24] 1795 	push	acc
   3547 74 CC         [12] 1796 	mov	a,#(__str_1 >> 8)
   3549 C0 E0         [24] 1797 	push	acc
   354B 74 80         [12] 1798 	mov	a,#0x80
   354D C0 E0         [24] 1799 	push	acc
   354F 12 13 04      [24] 1800 	lcall	_panic
   3552 15 81         [12] 1801 	dec	sp
   3554 15 81         [12] 1802 	dec	sp
   3556 15 81         [12] 1803 	dec	sp
   3558 D0 07         [24] 1804 	pop	ar7
   355A                    1805 00102$:
                           1806 ;	radio/radio.c:436: rlen = ((length+2)/3)*3;
   355A 8F 05         [24] 1807 	mov	ar5,r7
   355C 7E 00         [12] 1808 	mov	r6,#0x00
   355E 74 02         [12] 1809 	mov	a,#0x02
   3560 2D            [12] 1810 	add	a,r5
   3561 FD            [12] 1811 	mov	r5,a
   3562 E4            [12] 1812 	clr	a
   3563 3E            [12] 1813 	addc	a,r6
   3564 FE            [12] 1814 	mov	r6,a
   3565 90 05 EB      [24] 1815 	mov	dptr,#__divsint_PARM_2
   3568 74 03         [12] 1816 	mov	a,#0x03
   356A F0            [24] 1817 	movx	@dptr,a
   356B E4            [12] 1818 	clr	a
   356C A3            [24] 1819 	inc	dptr
   356D F0            [24] 1820 	movx	@dptr,a
   356E 8D 82         [24] 1821 	mov	dpl,r5
   3570 8E 83         [24] 1822 	mov	dph,r6
   3572 C0 07         [24] 1823 	push	ar7
   3574 12 63 DE      [24] 1824 	lcall	__divsint
   3577 AD 82         [24] 1825 	mov	r5,dpl
   3579 D0 07         [24] 1826 	pop	ar7
   357B ED            [12] 1827 	mov	a,r5
   357C 75 F0 03      [24] 1828 	mov	b,#0x03
   357F A4            [48] 1829 	mul	ab
                           1830 ;	radio/radio.c:439: elen = (rlen+6)*2;
   3580 FD            [12] 1831 	mov	r5,a
   3581 24 06         [12] 1832 	add	a,#0x06
   3583 25 E0         [12] 1833 	add	a,acc
   3585 F5 4E         [12] 1834 	mov	_radio_transmit_golay_elen_1_188,a
                           1835 ;	radio/radio.c:442: gin[0] = netid[0];
   3587 78 80         [12] 1836 	mov	r0,#_netid
   3589 E2            [24] 1837 	movx	a,@r0
   358A 90 04 6B      [24] 1838 	mov	dptr,#_radio_transmit_golay_gin_1_188
   358D F0            [24] 1839 	movx	@dptr,a
                           1840 ;	radio/radio.c:443: gin[1] = netid[1];
   358E 78 81         [12] 1841 	mov	r0,#(_netid + 0x0001)
   3590 E2            [24] 1842 	movx	a,@r0
   3591 90 04 6C      [24] 1843 	mov	dptr,#(_radio_transmit_golay_gin_1_188 + 0x0001)
   3594 F0            [24] 1844 	movx	@dptr,a
                           1845 ;	radio/radio.c:444: gin[2] = length;
   3595 90 04 6D      [24] 1846 	mov	dptr,#(_radio_transmit_golay_gin_1_188 + 0x0002)
   3598 EF            [12] 1847 	mov	a,r7
   3599 F0            [24] 1848 	movx	@dptr,a
                           1849 ;	radio/radio.c:447: golay_encode(3, gin, radio_buffer);
   359A 78 2C         [12] 1850 	mov	r0,#_golay_encode_PARM_2
   359C 74 6B         [12] 1851 	mov	a,#_radio_transmit_golay_gin_1_188
   359E F2            [24] 1852 	movx	@r0,a
   359F 08            [12] 1853 	inc	r0
   35A0 74 04         [12] 1854 	mov	a,#(_radio_transmit_golay_gin_1_188 >> 8)
   35A2 F2            [24] 1855 	movx	@r0,a
   35A3 78 2E         [12] 1856 	mov	r0,#_golay_encode_PARM_3
   35A5 74 68         [12] 1857 	mov	a,#_radio_buffer
   35A7 F2            [24] 1858 	movx	@r0,a
   35A8 08            [12] 1859 	inc	r0
   35A9 74 03         [12] 1860 	mov	a,#(_radio_buffer >> 8)
   35AB F2            [24] 1861 	movx	@r0,a
   35AC 75 82 03      [24] 1862 	mov	dpl,#0x03
   35AF C0 07         [24] 1863 	push	ar7
   35B1 C0 05         [24] 1864 	push	ar5
   35B3 12 0F 23      [24] 1865 	lcall	_golay_encode
   35B6 D0 05         [24] 1866 	pop	ar5
   35B8 D0 07         [24] 1867 	pop	ar7
                           1868 ;	radio/radio.c:451: crc = crc16(length, buf);
   35BA 78 96         [12] 1869 	mov	r0,#_radio_transmit_golay_PARM_2
   35BC E2            [24] 1870 	movx	a,@r0
   35BD F5 0C         [12] 1871 	mov	_crc16_PARM_2,a
   35BF 08            [12] 1872 	inc	r0
   35C0 E2            [24] 1873 	movx	a,@r0
   35C1 F5 0D         [12] 1874 	mov	(_crc16_PARM_2 + 1),a
   35C3 8F 82         [24] 1875 	mov	dpl,r7
   35C5 C0 07         [24] 1876 	push	ar7
   35C7 C0 05         [24] 1877 	push	ar5
   35C9 12 0B 36      [24] 1878 	lcall	_crc16
   35CC AB 82         [24] 1879 	mov	r3,dpl
   35CE AC 83         [24] 1880 	mov	r4,dph
   35D0 D0 05         [24] 1881 	pop	ar5
   35D2 D0 07         [24] 1882 	pop	ar7
                           1883 ;	radio/radio.c:452: gin[0] = crc&0xFF;
   35D4 8B 02         [24] 1884 	mov	ar2,r3
   35D6 90 04 6B      [24] 1885 	mov	dptr,#_radio_transmit_golay_gin_1_188
   35D9 EA            [12] 1886 	mov	a,r2
   35DA F0            [24] 1887 	movx	@dptr,a
                           1888 ;	radio/radio.c:453: gin[1] = crc>>8;
   35DB 8C 03         [24] 1889 	mov	ar3,r4
   35DD 90 04 6C      [24] 1890 	mov	dptr,#(_radio_transmit_golay_gin_1_188 + 0x0001)
   35E0 EB            [12] 1891 	mov	a,r3
   35E1 F0            [24] 1892 	movx	@dptr,a
                           1893 ;	radio/radio.c:454: gin[2] = length;
   35E2 90 04 6D      [24] 1894 	mov	dptr,#(_radio_transmit_golay_gin_1_188 + 0x0002)
   35E5 EF            [12] 1895 	mov	a,r7
   35E6 F0            [24] 1896 	movx	@dptr,a
                           1897 ;	radio/radio.c:457: golay_encode(3, gin, &radio_buffer[6]);
   35E7 78 2E         [12] 1898 	mov	r0,#_golay_encode_PARM_3
   35E9 74 06         [12] 1899 	mov	a,#0x06
   35EB 24 68         [12] 1900 	add	a,#_radio_buffer
   35ED F2            [24] 1901 	movx	@r0,a
   35EE E4            [12] 1902 	clr	a
   35EF 34 03         [12] 1903 	addc	a,#(_radio_buffer >> 8)
   35F1 08            [12] 1904 	inc	r0
   35F2 F2            [24] 1905 	movx	@r0,a
   35F3 78 2C         [12] 1906 	mov	r0,#_golay_encode_PARM_2
   35F5 74 6B         [12] 1907 	mov	a,#_radio_transmit_golay_gin_1_188
   35F7 F2            [24] 1908 	movx	@r0,a
   35F8 08            [12] 1909 	inc	r0
   35F9 74 04         [12] 1910 	mov	a,#(_radio_transmit_golay_gin_1_188 >> 8)
   35FB F2            [24] 1911 	movx	@r0,a
   35FC 75 82 03      [24] 1912 	mov	dpl,#0x03
   35FF C0 05         [24] 1913 	push	ar5
   3601 12 0F 23      [24] 1914 	lcall	_golay_encode
   3604 D0 05         [24] 1915 	pop	ar5
                           1916 ;	radio/radio.c:460: golay_encode(rlen, buf, &radio_buffer[12]);
   3606 78 2E         [12] 1917 	mov	r0,#_golay_encode_PARM_3
   3608 74 0C         [12] 1918 	mov	a,#0x0C
   360A 24 68         [12] 1919 	add	a,#_radio_buffer
   360C F2            [24] 1920 	movx	@r0,a
   360D E4            [12] 1921 	clr	a
   360E 34 03         [12] 1922 	addc	a,#(_radio_buffer >> 8)
   3610 08            [12] 1923 	inc	r0
   3611 F2            [24] 1924 	movx	@r0,a
   3612 78 96         [12] 1925 	mov	r0,#_radio_transmit_golay_PARM_2
   3614 79 2C         [12] 1926 	mov	r1,#_golay_encode_PARM_2
   3616 E2            [24] 1927 	movx	a,@r0
   3617 F3            [24] 1928 	movx	@r1,a
   3618 08            [12] 1929 	inc	r0
   3619 E2            [24] 1930 	movx	a,@r0
   361A 09            [12] 1931 	inc	r1
   361B F3            [24] 1932 	movx	@r1,a
   361C 8D 82         [24] 1933 	mov	dpl,r5
   361E 12 0F 23      [24] 1934 	lcall	_golay_encode
                           1935 ;	radio/radio.c:462: return radio_transmit_simple(elen, radio_buffer, timeout_ticks);
   3621 78 92         [12] 1936 	mov	r0,#_radio_transmit_simple_PARM_2
   3623 74 68         [12] 1937 	mov	a,#_radio_buffer
   3625 F2            [24] 1938 	movx	@r0,a
   3626 08            [12] 1939 	inc	r0
   3627 74 03         [12] 1940 	mov	a,#(_radio_buffer >> 8)
   3629 F2            [24] 1941 	movx	@r0,a
   362A 78 98         [12] 1942 	mov	r0,#_radio_transmit_golay_PARM_3
   362C 79 94         [12] 1943 	mov	r1,#_radio_transmit_simple_PARM_3
   362E E2            [24] 1944 	movx	a,@r0
   362F F3            [24] 1945 	movx	@r1,a
   3630 08            [12] 1946 	inc	r0
   3631 E2            [24] 1947 	movx	a,@r0
   3632 09            [12] 1948 	inc	r1
   3633 F3            [24] 1949 	movx	@r1,a
   3634 85 4E 82      [24] 1950 	mov	dpl,_radio_transmit_golay_elen_1_188
   3637 12 33 4D      [24] 1951 	lcall	_radio_transmit_simple
   363A 92 1B         [24] 1952 	mov  _radio_transmit_golay_sloc0_1_0,c
   363C 22            [24] 1953 	ret
                           1954 ;------------------------------------------------------------
                           1955 ;Allocation info for local variables in function 'radio_transmit'
                           1956 ;------------------------------------------------------------
                           1957 ;length                    Allocated with name '_radio_transmit_length_1_190'
                           1958 ;------------------------------------------------------------
                           1959 ;	radio/radio.c:474: radio_transmit(uint8_t length, __xdata uint8_t * __pdata buf, __pdata uint16_t timeout_ticks)
                           1960 ;	-----------------------------------------
                           1961 ;	 function radio_transmit
                           1962 ;	-----------------------------------------
   363D                    1963 _radio_transmit:
   363D E5 82         [12] 1964 	mov	a,dpl
   363F 90 04 6E      [24] 1965 	mov	dptr,#_radio_transmit_length_1_190
   3642 F0            [24] 1966 	movx	@dptr,a
                           1967 ;	radio/radio.c:477: EX0_SAVE_DISABLE;
   3643 A2 A8         [12] 1968 	mov	c,_EX0
   3645 92 1C         [24] 1969 	mov	_radio_transmit_EX0_saved_1_191,c
   3647 C2 A8         [12] 1970 	clr	_EX0
                           1971 ;	radio/radio.c:480: PA_ENABLE = 1;		// Set PA_Enable to turn on PA prior to TX cycle
   3649 D2 A5         [12] 1972 	setb	_PA_ENABLE
                           1973 ;	radio/radio.c:483: if (!feature_golay) {
   364B 20 05 22      [24] 1974 	jb	_feature_golay,00102$
                           1975 ;	radio/radio.c:484: ret = radio_transmit_simple(length, buf, timeout_ticks);
   364E 90 04 6E      [24] 1976 	mov	dptr,#_radio_transmit_length_1_190
   3651 E0            [24] 1977 	movx	a,@dptr
   3652 FF            [12] 1978 	mov	r7,a
   3653 78 9A         [12] 1979 	mov	r0,#_radio_transmit_PARM_2
   3655 79 92         [12] 1980 	mov	r1,#_radio_transmit_simple_PARM_2
   3657 E2            [24] 1981 	movx	a,@r0
   3658 F3            [24] 1982 	movx	@r1,a
   3659 08            [12] 1983 	inc	r0
   365A E2            [24] 1984 	movx	a,@r0
   365B 09            [12] 1985 	inc	r1
   365C F3            [24] 1986 	movx	@r1,a
   365D 78 9C         [12] 1987 	mov	r0,#_radio_transmit_PARM_3
   365F 79 94         [12] 1988 	mov	r1,#_radio_transmit_simple_PARM_3
   3661 E2            [24] 1989 	movx	a,@r0
   3662 F3            [24] 1990 	movx	@r1,a
   3663 08            [12] 1991 	inc	r0
   3664 E2            [24] 1992 	movx	a,@r0
   3665 09            [12] 1993 	inc	r1
   3666 F3            [24] 1994 	movx	@r1,a
   3667 8F 82         [24] 1995 	mov	dpl,r7
   3669 12 33 4D      [24] 1996 	lcall	_radio_transmit_simple
   366C 92 1D         [24] 1997 	mov	_radio_transmit_sloc0_1_0,c
   366E 80 20         [24] 1998 	sjmp	00103$
   3670                    1999 00102$:
                           2000 ;	radio/radio.c:486: ret = radio_transmit_golay(length, buf, timeout_ticks);
   3670 90 04 6E      [24] 2001 	mov	dptr,#_radio_transmit_length_1_190
   3673 E0            [24] 2002 	movx	a,@dptr
   3674 FF            [12] 2003 	mov	r7,a
   3675 78 9A         [12] 2004 	mov	r0,#_radio_transmit_PARM_2
   3677 79 96         [12] 2005 	mov	r1,#_radio_transmit_golay_PARM_2
   3679 E2            [24] 2006 	movx	a,@r0
   367A F3            [24] 2007 	movx	@r1,a
   367B 08            [12] 2008 	inc	r0
   367C E2            [24] 2009 	movx	a,@r0
   367D 09            [12] 2010 	inc	r1
   367E F3            [24] 2011 	movx	@r1,a
   367F 78 9C         [12] 2012 	mov	r0,#_radio_transmit_PARM_3
   3681 79 98         [12] 2013 	mov	r1,#_radio_transmit_golay_PARM_3
   3683 E2            [24] 2014 	movx	a,@r0
   3684 F3            [24] 2015 	movx	@r1,a
   3685 08            [12] 2016 	inc	r0
   3686 E2            [24] 2017 	movx	a,@r0
   3687 09            [12] 2018 	inc	r1
   3688 F3            [24] 2019 	movx	@r1,a
   3689 8F 82         [24] 2020 	mov	dpl,r7
   368B 12 35 36      [24] 2021 	lcall	_radio_transmit_golay
   368E 92 1D         [24] 2022 	mov	_radio_transmit_sloc0_1_0,c
   3690                    2023 00103$:
                           2024 ;	radio/radio.c:489: PA_ENABLE = 0;		// Set PA_Enable to off the PA after TX cycle
   3690 C2 A5         [12] 2025 	clr	_PA_ENABLE
                           2026 ;	radio/radio.c:491: EX0_RESTORE;
   3692 A2 1C         [12] 2027 	mov	c,_radio_transmit_EX0_saved_1_191
   3694 92 A8         [24] 2028 	mov	_EX0,c
                           2029 ;	radio/radio.c:492: return ret;
   3696 A2 1D         [12] 2030 	mov	c,_radio_transmit_sloc0_1_0
   3698 22            [24] 2031 	ret
                           2032 ;------------------------------------------------------------
                           2033 ;Allocation info for local variables in function 'radio_receiver_on'
                           2034 ;------------------------------------------------------------
                           2035 ;	radio/radio.c:499: radio_receiver_on(void)
                           2036 ;	-----------------------------------------
                           2037 ;	 function radio_receiver_on
                           2038 ;	-----------------------------------------
   3699                    2039 _radio_receiver_on:
                           2040 ;	radio/radio.c:501: EX0 = 0;
   3699 C2 A8         [12] 2041 	clr	_EX0
                           2042 ;	radio/radio.c:503: packet_received = 0;
   369B C2 17         [12] 2043 	clr	_packet_received
                           2044 ;	radio/radio.c:504: receive_packet_length = 0;
   369D 78 7D         [12] 2045 	mov	r0,#_receive_packet_length
   369F E4            [12] 2046 	clr	a
   36A0 F2            [24] 2047 	movx	@r0,a
                           2048 ;	radio/radio.c:505: preamble_detected = 0;
   36A1 C2 18         [12] 2049 	clr	_preamble_detected
                           2050 ;	radio/radio.c:506: partial_packet_length = 0;
   36A3 78 7E         [12] 2051 	mov	r0,#_partial_packet_length
   36A5 E4            [12] 2052 	clr	a
   36A6 F2            [24] 2053 	movx	@r0,a
                           2054 ;	radio/radio.c:509: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, RADIO_RX_INTERRUPTS);
   36A7 74 13         [12] 2055 	mov	a,#0x13
   36A9 C0 E0         [24] 2056 	push	acc
   36AB 75 82 05      [24] 2057 	mov	dpl,#0x05
   36AE 12 3B 6D      [24] 2058 	lcall	_register_write
   36B1 15 81         [12] 2059 	dec	sp
                           2060 ;	radio/radio.c:510: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, EZRADIOPRO_ENPREAVAL);
   36B3 74 40         [12] 2061 	mov	a,#0x40
   36B5 C0 E0         [24] 2062 	push	acc
   36B7 75 82 06      [24] 2063 	mov	dpl,#0x06
   36BA 12 3B 6D      [24] 2064 	lcall	_register_write
   36BD 15 81         [12] 2065 	dec	sp
                           2066 ;	radio/radio.c:512: clear_status_registers();
   36BF 12 3C 05      [24] 2067 	lcall	_clear_status_registers
                           2068 ;	radio/radio.c:513: radio_clear_transmit_fifo();
   36C2 12 32 FD      [24] 2069 	lcall	_radio_clear_transmit_fifo
                           2070 ;	radio/radio.c:514: radio_clear_receive_fifo();
   36C5 12 33 25      [24] 2071 	lcall	_radio_clear_receive_fifo
                           2072 ;	radio/radio.c:517: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_1, EZRADIOPRO_RXON | EZRADIOPRO_XTON);
   36C8 74 05         [12] 2073 	mov	a,#0x05
   36CA C0 E0         [24] 2074 	push	acc
   36CC 75 82 07      [24] 2075 	mov	dpl,#0x07
   36CF 12 3B 6D      [24] 2076 	lcall	_register_write
   36D2 15 81         [12] 2077 	dec	sp
                           2078 ;	radio/radio.c:520: EX0 = 1;
   36D4 D2 A8         [12] 2079 	setb	_EX0
                           2080 ;	radio/radio.c:522: return true;
   36D6 D3            [12] 2081 	setb	c
   36D7 22            [24] 2082 	ret
                           2083 ;------------------------------------------------------------
                           2084 ;Allocation info for local variables in function 'radio_initialise'
                           2085 ;------------------------------------------------------------
                           2086 ;status                    Allocated with name '_radio_initialise_status_1_197'
                           2087 ;------------------------------------------------------------
                           2088 ;	radio/radio.c:529: radio_initialise(void)
                           2089 ;	-----------------------------------------
                           2090 ;	 function radio_initialise
                           2091 ;	-----------------------------------------
   36D8                    2092 _radio_initialise:
                           2093 ;	radio/radio.c:533: delay_msec(50);
   36D8 90 00 32      [24] 2094 	mov	dptr,#0x0032
   36DB 12 58 EA      [24] 2095 	lcall	_delay_msec
                           2096 ;	radio/radio.c:536: status = register_read(EZRADIOPRO_DEVICE_VERSION);
   36DE 75 82 01      [24] 2097 	mov	dpl,#0x01
   36E1 12 3B 9D      [24] 2098 	lcall	_register_read
   36E4 AF 82         [24] 2099 	mov	r7,dpl
                           2100 ;	radio/radio.c:537: if (status == 0xFF || status < 5) {
   36E6 BF FF 02      [24] 2101 	cjne	r7,#0xFF,00133$
   36E9 80 05         [24] 2102 	sjmp	00101$
   36EB                    2103 00133$:
   36EB BF 05 00      [24] 2104 	cjne	r7,#0x05,00134$
   36EE                    2105 00134$:
   36EE 50 02         [24] 2106 	jnc	00102$
   36F0                    2107 00101$:
                           2108 ;	radio/radio.c:539: return false;
   36F0 C3            [12] 2109 	clr	c
   36F1 22            [24] 2110 	ret
   36F2                    2111 00102$:
                           2112 ;	radio/radio.c:542: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_2);
   36F2 75 82 04      [24] 2113 	mov	dpl,#0x04
   36F5 12 3B 9D      [24] 2114 	lcall	_register_read
                           2115 ;	radio/radio.c:544: if ((status & EZRADIOPRO_IPOR) == 0) {
   36F8 E5 82         [12] 2116 	mov	a,dpl
   36FA FF            [12] 2117 	mov	r7,a
   36FB 20 E0 06      [24] 2118 	jb	acc.0,00105$
                           2119 ;	radio/radio.c:546: return software_reset();
   36FE 12 3C 65      [24] 2120 	lcall	_software_reset
   3701 92 1E         [24] 2121 	mov  _radio_initialise_sloc0_1_0,c
   3703 22            [24] 2122 	ret
   3704                    2123 00105$:
                           2124 ;	radio/radio.c:549: if (status & EZRADIOPRO_ICHIPRDY) {
   3704 EF            [12] 2125 	mov	a,r7
   3705 30 E1 02      [24] 2126 	jnb	acc.1,00107$
                           2127 ;	radio/radio.c:551: return true;
   3708 D3            [12] 2128 	setb	c
   3709 22            [24] 2129 	ret
   370A                    2130 00107$:
                           2131 ;	radio/radio.c:555: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0);
   370A E4            [12] 2132 	clr	a
   370B C0 E0         [24] 2133 	push	acc
   370D 75 82 05      [24] 2134 	mov	dpl,#0x05
   3710 12 3B 6D      [24] 2135 	lcall	_register_write
   3713 15 81         [12] 2136 	dec	sp
                           2137 ;	radio/radio.c:556: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, EZRADIOPRO_ENCHIPRDY);
   3715 74 02         [12] 2138 	mov	a,#0x02
   3717 C0 E0         [24] 2139 	push	acc
   3719 75 82 06      [24] 2140 	mov	dpl,#0x06
   371C 12 3B 6D      [24] 2141 	lcall	_register_write
   371F 15 81         [12] 2142 	dec	sp
                           2143 ;	radio/radio.c:559: delay_set(50);
   3721 90 00 32      [24] 2144 	mov	dptr,#0x0032
   3724 12 58 B1      [24] 2145 	lcall	_delay_set
                           2146 ;	radio/radio.c:560: while (!delay_expired()) {
   3727                    2147 00110$:
   3727 12 58 E2      [24] 2148 	lcall	_delay_expired
   372A 40 13         [24] 2149 	jc	00112$
                           2150 ;	radio/radio.c:561: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_1);
   372C 75 82 03      [24] 2151 	mov	dpl,#0x03
   372F 12 3B 9D      [24] 2152 	lcall	_register_read
                           2153 ;	radio/radio.c:562: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_2);
   3732 75 82 04      [24] 2154 	mov	dpl,#0x04
   3735 12 3B 9D      [24] 2155 	lcall	_register_read
   3738 E5 82         [12] 2156 	mov	a,dpl
                           2157 ;	radio/radio.c:563: if (status & EZRADIOPRO_ICHIPRDY) {
   373A 30 E1 EA      [24] 2158 	jnb	acc.1,00110$
                           2159 ;	radio/radio.c:564: return true;
   373D D3            [12] 2160 	setb	c
   373E 22            [24] 2161 	ret
   373F                    2162 00112$:
                           2163 ;	radio/radio.c:568: return false;
   373F C3            [12] 2164 	clr	c
   3740 22            [24] 2165 	ret
                           2166 ;------------------------------------------------------------
                           2167 ;Allocation info for local variables in function 'radio_set_frequency'
                           2168 ;------------------------------------------------------------
                           2169 ;	radio/radio.c:575: radio_set_frequency(__pdata uint32_t value)
                           2170 ;	-----------------------------------------
                           2171 ;	 function radio_set_frequency
                           2172 ;	-----------------------------------------
   3741                    2173 _radio_set_frequency:
   3741 AC 82         [24] 2174 	mov	r4,dpl
   3743 AD 83         [24] 2175 	mov	r5,dph
   3745 AE F0         [24] 2176 	mov	r6,b
   3747 FF            [12] 2177 	mov	r7,a
                           2178 ;	radio/radio.c:577: if (value < 240000000UL || value > 935000000UL) {
   3748 C3            [12] 2179 	clr	c
   3749 ED            [12] 2180 	mov	a,r5
   374A 94 1C         [12] 2181 	subb	a,#0x1C
   374C EE            [12] 2182 	mov	a,r6
   374D 94 4E         [12] 2183 	subb	a,#0x4E
   374F EF            [12] 2184 	mov	a,r7
   3750 94 0E         [12] 2185 	subb	a,#0x0E
   3752 40 0E         [24] 2186 	jc	00101$
   3754 74 C0         [12] 2187 	mov	a,#0xC0
   3756 9C            [12] 2188 	subb	a,r4
   3757 74 F7         [12] 2189 	mov	a,#0xF7
   3759 9D            [12] 2190 	subb	a,r5
   375A 74 BA         [12] 2191 	mov	a,#0xBA
   375C 9E            [12] 2192 	subb	a,r6
   375D 74 37         [12] 2193 	mov	a,#0x37
   375F 9F            [12] 2194 	subb	a,r7
   3760 50 02         [24] 2195 	jnc	00102$
   3762                    2196 00101$:
                           2197 ;	radio/radio.c:578: return false;
   3762 C3            [12] 2198 	clr	c
   3763 22            [24] 2199 	ret
   3764                    2200 00102$:
                           2201 ;	radio/radio.c:580: settings.frequency = value;
   3764 78 82         [12] 2202 	mov	r0,#_settings
   3766 EC            [12] 2203 	mov	a,r4
   3767 F2            [24] 2204 	movx	@r0,a
   3768 08            [12] 2205 	inc	r0
   3769 ED            [12] 2206 	mov	a,r5
   376A F2            [24] 2207 	movx	@r0,a
   376B 08            [12] 2208 	inc	r0
   376C EE            [12] 2209 	mov	a,r6
   376D F2            [24] 2210 	movx	@r0,a
   376E 08            [12] 2211 	inc	r0
   376F EF            [12] 2212 	mov	a,r7
   3770 F2            [24] 2213 	movx	@r0,a
                           2214 ;	radio/radio.c:581: set_frequency_registers(value);
   3771 8C 82         [24] 2215 	mov	dpl,r4
   3773 8D 83         [24] 2216 	mov	dph,r5
   3775 8E F0         [24] 2217 	mov	b,r6
   3777 EF            [12] 2218 	mov	a,r7
   3778 12 3C D1      [24] 2219 	lcall	_set_frequency_registers
                           2220 ;	radio/radio.c:582: return true;
   377B D3            [12] 2221 	setb	c
   377C 22            [24] 2222 	ret
                           2223 ;------------------------------------------------------------
                           2224 ;Allocation info for local variables in function 'radio_set_channel_spacing'
                           2225 ;------------------------------------------------------------
                           2226 ;	radio/radio.c:589: radio_set_channel_spacing(__pdata uint32_t value)
                           2227 ;	-----------------------------------------
                           2228 ;	 function radio_set_channel_spacing
                           2229 ;	-----------------------------------------
   377D                    2230 _radio_set_channel_spacing:
   377D AC 82         [24] 2231 	mov	r4,dpl
   377F AD 83         [24] 2232 	mov	r5,dph
   3781 AE F0         [24] 2233 	mov	r6,b
   3783 FF            [12] 2234 	mov	r7,a
                           2235 ;	radio/radio.c:591: if (value > 2550000L)
   3784 C3            [12] 2236 	clr	c
   3785 74 F0         [12] 2237 	mov	a,#0xF0
   3787 9C            [12] 2238 	subb	a,r4
   3788 74 E8         [12] 2239 	mov	a,#0xE8
   378A 9D            [12] 2240 	subb	a,r5
   378B 74 26         [12] 2241 	mov	a,#0x26
   378D 9E            [12] 2242 	subb	a,r6
   378E E4            [12] 2243 	clr	a
   378F 9F            [12] 2244 	subb	a,r7
   3790 50 02         [24] 2245 	jnc	00102$
                           2246 ;	radio/radio.c:592: return false;
   3792 C3            [12] 2247 	clr	c
   3793 22            [24] 2248 	ret
   3794                    2249 00102$:
                           2250 ;	radio/radio.c:593: value = scale_uint32(value, 10000);
   3794 90 00 9E      [24] 2251 	mov	dptr,#_scale_uint32_PARM_2
   3797 74 10         [12] 2252 	mov	a,#0x10
   3799 F0            [24] 2253 	movx	@dptr,a
   379A 74 27         [12] 2254 	mov	a,#0x27
   379C A3            [24] 2255 	inc	dptr
   379D F0            [24] 2256 	movx	@dptr,a
   379E E4            [12] 2257 	clr	a
   379F A3            [24] 2258 	inc	dptr
   37A0 F0            [24] 2259 	movx	@dptr,a
   37A1 E4            [12] 2260 	clr	a
   37A2 A3            [24] 2261 	inc	dptr
   37A3 F0            [24] 2262 	movx	@dptr,a
   37A4 8C 82         [24] 2263 	mov	dpl,r4
   37A6 8D 83         [24] 2264 	mov	dph,r5
   37A8 8E F0         [24] 2265 	mov	b,r6
   37AA EF            [12] 2266 	mov	a,r7
   37AB 12 3C 11      [24] 2267 	lcall	_scale_uint32
   37AE AC 82         [24] 2268 	mov	r4,dpl
   37B0 AD 83         [24] 2269 	mov	r5,dph
   37B2 AE F0         [24] 2270 	mov	r6,b
   37B4 FF            [12] 2271 	mov	r7,a
                           2272 ;	radio/radio.c:594: settings.channel_spacing = value;
   37B5 78 86         [12] 2273 	mov	r0,#(_settings + 0x0004)
   37B7 EC            [12] 2274 	mov	a,r4
   37B8 F2            [24] 2275 	movx	@r0,a
   37B9 08            [12] 2276 	inc	r0
   37BA ED            [12] 2277 	mov	a,r5
   37BB F2            [24] 2278 	movx	@r0,a
   37BC 08            [12] 2279 	inc	r0
   37BD EE            [12] 2280 	mov	a,r6
   37BE F2            [24] 2281 	movx	@r0,a
   37BF 08            [12] 2282 	inc	r0
   37C0 EF            [12] 2283 	mov	a,r7
   37C1 F2            [24] 2284 	movx	@r0,a
                           2285 ;	radio/radio.c:595: register_write(EZRADIOPRO_FREQUENCY_HOPPING_STEP_SIZE, value);
   37C2 C0 04         [24] 2286 	push	ar4
   37C4 75 82 7A      [24] 2287 	mov	dpl,#0x7A
   37C7 12 3B 6D      [24] 2288 	lcall	_register_write
   37CA 15 81         [12] 2289 	dec	sp
                           2290 ;	radio/radio.c:596: return true;
   37CC D3            [12] 2291 	setb	c
   37CD 22            [24] 2292 	ret
                           2293 ;------------------------------------------------------------
                           2294 ;Allocation info for local variables in function 'radio_set_channel'
                           2295 ;------------------------------------------------------------
                           2296 ;channel                   Allocated with name '_radio_set_channel_channel_1_208'
                           2297 ;------------------------------------------------------------
                           2298 ;	radio/radio.c:602: radio_set_channel(uint8_t channel)
                           2299 ;	-----------------------------------------
                           2300 ;	 function radio_set_channel
                           2301 ;	-----------------------------------------
   37CE                    2302 _radio_set_channel:
   37CE E5 82         [12] 2303 	mov	a,dpl
   37D0 90 04 6F      [24] 2304 	mov	dptr,#_radio_set_channel_channel_1_208
   37D3 F0            [24] 2305 	movx	@dptr,a
                           2306 ;	radio/radio.c:604: if (channel != settings.current_channel) {
   37D4 78 8B         [12] 2307 	mov	r0,#(_settings + 0x0009)
   37D6 E2            [24] 2308 	movx	a,@r0
   37D7 FF            [12] 2309 	mov	r7,a
   37D8 90 04 6F      [24] 2310 	mov	dptr,#_radio_set_channel_channel_1_208
   37DB E0            [24] 2311 	movx	a,@dptr
   37DC FE            [12] 2312 	mov	r6,a
   37DD B5 07 01      [24] 2313 	cjne	a,ar7,00108$
   37E0 22            [24] 2314 	ret
   37E1                    2315 00108$:
                           2316 ;	radio/radio.c:605: settings.current_channel = channel;
   37E1 78 8B         [12] 2317 	mov	r0,#(_settings + 0x0009)
   37E3 EE            [12] 2318 	mov	a,r6
   37E4 F2            [24] 2319 	movx	@r0,a
                           2320 ;	radio/radio.c:606: register_write(EZRADIOPRO_FREQUENCY_HOPPING_CHANNEL_SELECT, channel);
   37E5 C0 06         [24] 2321 	push	ar6
   37E7 75 82 79      [24] 2322 	mov	dpl,#0x79
   37EA 12 3B 6D      [24] 2323 	lcall	_register_write
   37ED 15 81         [12] 2324 	dec	sp
                           2325 ;	radio/radio.c:607: preamble_detected = 0;
   37EF C2 18         [12] 2326 	clr	_preamble_detected
   37F1 22            [24] 2327 	ret
                           2328 ;------------------------------------------------------------
                           2329 ;Allocation info for local variables in function 'radio_get_channel'
                           2330 ;------------------------------------------------------------
                           2331 ;	radio/radio.c:614: radio_get_channel(void)
                           2332 ;	-----------------------------------------
                           2333 ;	 function radio_get_channel
                           2334 ;	-----------------------------------------
   37F2                    2335 _radio_get_channel:
                           2336 ;	radio/radio.c:616: return settings.current_channel;
   37F2 78 8B         [12] 2337 	mov	r0,#(_settings + 0x0009)
   37F4 E2            [24] 2338 	movx	a,@r0
   37F5 F5 82         [12] 2339 	mov	dpl,a
   37F7 22            [24] 2340 	ret
                           2341 ;------------------------------------------------------------
                           2342 ;Allocation info for local variables in function 'radio_configure'
                           2343 ;------------------------------------------------------------
                           2344 ;	radio/radio.c:713: radio_configure(__pdata uint8_t air_rate)
                           2345 ;	-----------------------------------------
                           2346 ;	 function radio_configure
                           2347 ;	-----------------------------------------
   37F8                    2348 _radio_configure:
   37F8 AF 82         [24] 2349 	mov	r7,dpl
                           2350 ;	radio/radio.c:718: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0x00);
   37FA C0 07         [24] 2351 	push	ar7
   37FC E4            [12] 2352 	clr	a
   37FD C0 E0         [24] 2353 	push	acc
   37FF 75 82 05      [24] 2354 	mov	dpl,#0x05
   3802 12 3B 6D      [24] 2355 	lcall	_register_write
   3805 15 81         [12] 2356 	dec	sp
                           2357 ;	radio/radio.c:719: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, 0x00);
   3807 E4            [12] 2358 	clr	a
   3808 C0 E0         [24] 2359 	push	acc
   380A 75 82 06      [24] 2360 	mov	dpl,#0x06
   380D 12 3B 6D      [24] 2361 	lcall	_register_write
   3810 15 81         [12] 2362 	dec	sp
                           2363 ;	radio/radio.c:721: clear_status_registers();
   3812 12 3C 05      [24] 2364 	lcall	_clear_status_registers
                           2365 ;	radio/radio.c:735: register_write(EZRADIOPRO_GPIO0_CONFIGURATION, 0x15);	// RX data (output)
   3815 74 15         [12] 2366 	mov	a,#0x15
   3817 C0 E0         [24] 2367 	push	acc
   3819 75 82 0B      [24] 2368 	mov	dpl,#0x0B
   381C 12 3B 6D      [24] 2369 	lcall	_register_write
   381F 15 81         [12] 2370 	dec	sp
                           2371 ;	radio/radio.c:736: register_write(EZRADIOPRO_GPIO1_CONFIGURATION, 0x12);	// RX data (output)
   3821 74 12         [12] 2372 	mov	a,#0x12
   3823 C0 E0         [24] 2373 	push	acc
   3825 75 82 0C      [24] 2374 	mov	dpl,#0x0C
   3828 12 3B 6D      [24] 2375 	lcall	_register_write
   382B 15 81         [12] 2376 	dec	sp
                           2377 ;	radio/radio.c:738: radio_set_diversity(true);
   382D D2 1F         [12] 2378 	setb	_radio_set_diversity_PARM_1
   382F 12 3F 87      [24] 2379 	lcall	_radio_set_diversity
                           2380 ;	radio/radio.c:750: register_write(EZRADIOPRO_CRYSTAL_OSCILLATOR_LOAD_CAPACITANCE, EZRADIOPRO_OSC_CAP_VALUE);
   3832 74 B6         [12] 2381 	mov	a,#0xB6
   3834 C0 E0         [24] 2382 	push	acc
   3836 75 82 09      [24] 2383 	mov	dpl,#0x09
   3839 12 3B 6D      [24] 2384 	lcall	_register_write
   383C 15 81         [12] 2385 	dec	sp
   383E D0 07         [24] 2386 	pop	ar7
                           2387 ;	radio/radio.c:753: if (air_rate > 100) {
   3840 EF            [12] 2388 	mov	a,r7
   3841 24 9B         [12] 2389 	add	a,#0xff - 0x64
   3843 50 10         [24] 2390 	jnc	00102$
                           2391 ;	radio/radio.c:754: register_write(EZRADIOPRO_CHARGEPUMP_CURRENT_TRIMMING_OVERRIDE, 0xC0);
   3845 C0 07         [24] 2392 	push	ar7
   3847 74 C0         [12] 2393 	mov	a,#0xC0
   3849 C0 E0         [24] 2394 	push	acc
   384B 75 82 58      [24] 2395 	mov	dpl,#0x58
   384E 12 3B 6D      [24] 2396 	lcall	_register_write
   3851 15 81         [12] 2397 	dec	sp
   3853 D0 07         [24] 2398 	pop	ar7
   3855                    2399 00102$:
                           2400 ;	radio/radio.c:758: set_frequency_registers(settings.frequency);
   3855 78 82         [12] 2401 	mov	r0,#_settings
   3857 E2            [24] 2402 	movx	a,@r0
   3858 FB            [12] 2403 	mov	r3,a
   3859 08            [12] 2404 	inc	r0
   385A E2            [24] 2405 	movx	a,@r0
   385B FC            [12] 2406 	mov	r4,a
   385C 08            [12] 2407 	inc	r0
   385D E2            [24] 2408 	movx	a,@r0
   385E FD            [12] 2409 	mov	r5,a
   385F 08            [12] 2410 	inc	r0
   3860 E2            [24] 2411 	movx	a,@r0
   3861 8B 82         [24] 2412 	mov	dpl,r3
   3863 8C 83         [24] 2413 	mov	dph,r4
   3865 8D F0         [24] 2414 	mov	b,r5
   3867 C0 07         [24] 2415 	push	ar7
   3869 12 3C D1      [24] 2416 	lcall	_set_frequency_registers
                           2417 ;	radio/radio.c:759: register_write(EZRADIOPRO_FREQUENCY_HOPPING_STEP_SIZE, settings.channel_spacing);
   386C 78 86         [12] 2418 	mov	r0,#(_settings + 0x0004)
   386E E2            [24] 2419 	movx	a,@r0
   386F FB            [12] 2420 	mov	r3,a
   3870 08            [12] 2421 	inc	r0
   3871 E2            [24] 2422 	movx	a,@r0
   3872 08            [12] 2423 	inc	r0
   3873 E2            [24] 2424 	movx	a,@r0
   3874 08            [12] 2425 	inc	r0
   3875 E2            [24] 2426 	movx	a,@r0
   3876 C0 03         [24] 2427 	push	ar3
   3878 75 82 7A      [24] 2428 	mov	dpl,#0x7A
   387B 12 3B 6D      [24] 2429 	lcall	_register_write
   387E 15 81         [12] 2430 	dec	sp
   3880 D0 07         [24] 2431 	pop	ar7
                           2432 ;	radio/radio.c:761: if (feature_golay) {
   3882 30 05 29      [24] 2433 	jnb	_feature_golay,00104$
                           2434 ;	radio/radio.c:765: register_write(EZRADIOPRO_DATA_ACCESS_CONTROL,
   3885 C0 07         [24] 2435 	push	ar7
   3887 74 88         [12] 2436 	mov	a,#0x88
   3889 C0 E0         [24] 2437 	push	acc
   388B 75 82 30      [24] 2438 	mov	dpl,#0x30
   388E 12 3B 6D      [24] 2439 	lcall	_register_write
   3891 15 81         [12] 2440 	dec	sp
                           2441 ;	radio/radio.c:769: register_write(EZRADIOPRO_HEADER_CONTROL_2, EZRADIOPRO_HDLEN_0BYTE | EZRADIOPRO_SYNCLEN_2BYTE);
   3893 74 02         [12] 2442 	mov	a,#0x02
   3895 C0 E0         [24] 2443 	push	acc
   3897 75 82 33      [24] 2444 	mov	dpl,#0x33
   389A 12 3B 6D      [24] 2445 	lcall	_register_write
   389D 15 81         [12] 2446 	dec	sp
                           2447 ;	radio/radio.c:772: register_write(EZRADIOPRO_HEADER_CONTROL_1, 0x00);
   389F E4            [12] 2448 	clr	a
   38A0 C0 E0         [24] 2449 	push	acc
   38A2 75 82 32      [24] 2450 	mov	dpl,#0x32
   38A5 12 3B 6D      [24] 2451 	lcall	_register_write
   38A8 15 81         [12] 2452 	dec	sp
   38AA D0 07         [24] 2453 	pop	ar7
   38AC 80 40         [24] 2454 	sjmp	00105$
   38AE                    2455 00104$:
                           2456 ;	radio/radio.c:774: register_write(EZRADIOPRO_DATA_ACCESS_CONTROL,
   38AE C0 07         [24] 2457 	push	ar7
   38B0 74 8D         [12] 2458 	mov	a,#0x8D
   38B2 C0 E0         [24] 2459 	push	acc
   38B4 75 82 30      [24] 2460 	mov	dpl,#0x30
   38B7 12 3B 6D      [24] 2461 	lcall	_register_write
   38BA 15 81         [12] 2462 	dec	sp
                           2463 ;	radio/radio.c:780: register_write(EZRADIOPRO_HEADER_CONTROL_2, EZRADIOPRO_HDLEN_2BYTE | EZRADIOPRO_SYNCLEN_2BYTE);
   38BC 74 22         [12] 2464 	mov	a,#0x22
   38BE C0 E0         [24] 2465 	push	acc
   38C0 75 82 33      [24] 2466 	mov	dpl,#0x33
   38C3 12 3B 6D      [24] 2467 	lcall	_register_write
   38C6 15 81         [12] 2468 	dec	sp
                           2469 ;	radio/radio.c:782: register_write(EZRADIOPRO_HEADER_CONTROL_1, 0x0C);
   38C8 74 0C         [12] 2470 	mov	a,#0x0C
   38CA C0 E0         [24] 2471 	push	acc
   38CC 75 82 32      [24] 2472 	mov	dpl,#0x32
   38CF 12 3B 6D      [24] 2473 	lcall	_register_write
   38D2 15 81         [12] 2474 	dec	sp
                           2475 ;	radio/radio.c:783: register_write(EZRADIOPRO_HEADER_ENABLE_3, 0xFF);
   38D4 74 FF         [12] 2476 	mov	a,#0xFF
   38D6 C0 E0         [24] 2477 	push	acc
   38D8 75 82 43      [24] 2478 	mov	dpl,#0x43
   38DB 12 3B 6D      [24] 2479 	lcall	_register_write
   38DE 15 81         [12] 2480 	dec	sp
                           2481 ;	radio/radio.c:784: register_write(EZRADIOPRO_HEADER_ENABLE_2, 0xFF);
   38E0 74 FF         [12] 2482 	mov	a,#0xFF
   38E2 C0 E0         [24] 2483 	push	acc
   38E4 75 82 44      [24] 2484 	mov	dpl,#0x44
   38E7 12 3B 6D      [24] 2485 	lcall	_register_write
   38EA 15 81         [12] 2486 	dec	sp
   38EC D0 07         [24] 2487 	pop	ar7
   38EE                    2488 00105$:
                           2489 ;	radio/radio.c:789: register_write(EZRADIOPRO_TX_FIFO_CONTROL_1, TX_FIFO_THRESHOLD_HIGH);
   38EE C0 07         [24] 2490 	push	ar7
   38F0 74 3C         [12] 2491 	mov	a,#0x3C
   38F2 C0 E0         [24] 2492 	push	acc
   38F4 75 82 7C      [24] 2493 	mov	dpl,#0x7C
   38F7 12 3B 6D      [24] 2494 	lcall	_register_write
   38FA 15 81         [12] 2495 	dec	sp
                           2496 ;	radio/radio.c:790: register_write(EZRADIOPRO_TX_FIFO_CONTROL_2, TX_FIFO_THRESHOLD_LOW);
   38FC 74 20         [12] 2497 	mov	a,#0x20
   38FE C0 E0         [24] 2498 	push	acc
   3900 75 82 7D      [24] 2499 	mov	dpl,#0x7D
   3903 12 3B 6D      [24] 2500 	lcall	_register_write
   3906 15 81         [12] 2501 	dec	sp
                           2502 ;	radio/radio.c:791: register_write(EZRADIOPRO_RX_FIFO_CONTROL, RX_FIFO_THRESHOLD_HIGH);
   3908 74 32         [12] 2503 	mov	a,#0x32
   390A C0 E0         [24] 2504 	push	acc
   390C 75 82 7E      [24] 2505 	mov	dpl,#0x7E
   390F 12 3B 6D      [24] 2506 	lcall	_register_write
   3912 15 81         [12] 2507 	dec	sp
                           2508 ;	radio/radio.c:793: settings.preamble_length = 16;
   3914 78 8D         [12] 2509 	mov	r0,#(_settings + 0x000b)
   3916 74 10         [12] 2510 	mov	a,#0x10
   3918 F2            [24] 2511 	movx	@r0,a
                           2512 ;	radio/radio.c:795: register_write(EZRADIOPRO_PREAMBLE_LENGTH, settings.preamble_length); // nibbles 
   3919 78 8D         [12] 2513 	mov	r0,#(_settings + 0x000b)
   391B E2            [24] 2514 	movx	a,@r0
   391C FE            [12] 2515 	mov	r6,a
   391D C0 06         [24] 2516 	push	ar6
   391F 75 82 34      [24] 2517 	mov	dpl,#0x34
   3922 12 3B 6D      [24] 2518 	lcall	_register_write
   3925 15 81         [12] 2519 	dec	sp
                           2520 ;	radio/radio.c:796: register_write(EZRADIOPRO_PREAMBLE_DETECTION_CONTROL, 5<<3); // 5 nibbles
   3927 74 28         [12] 2521 	mov	a,#0x28
   3929 C0 E0         [24] 2522 	push	acc
   392B 75 82 35      [24] 2523 	mov	dpl,#0x35
   392E 12 3B 6D      [24] 2524 	lcall	_register_write
   3931 15 81         [12] 2525 	dec	sp
                           2526 ;	radio/radio.c:799: radio_set_transmit_power(0);
   3933 75 82 00      [24] 2527 	mov	dpl,#0x00
   3936 12 3A D0      [24] 2528 	lcall	_radio_set_transmit_power
   3939 D0 07         [24] 2529 	pop	ar7
                           2530 ;	radio/radio.c:802: for (i = 0; i < NUM_DATA_RATES - 1; i++) {
   393B 7E 00         [12] 2531 	mov	r6,#0x00
   393D                    2532 00131$:
                           2533 ;	radio/radio.c:803: if (air_data_rates[i] >= air_rate) break;
   393D EE            [12] 2534 	mov	a,r6
   393E 90 CC 6B      [24] 2535 	mov	dptr,#_air_data_rates
   3941 93            [24] 2536 	movc	a,@a+dptr
   3942 FD            [12] 2537 	mov	r5,a
   3943 C3            [12] 2538 	clr	c
   3944 9F            [12] 2539 	subb	a,r7
   3945 50 06         [24] 2540 	jnc	00108$
                           2541 ;	radio/radio.c:802: for (i = 0; i < NUM_DATA_RATES - 1; i++) {
   3947 0E            [12] 2542 	inc	r6
   3948 BE 0C 00      [24] 2543 	cjne	r6,#0x0C,00205$
   394B                    2544 00205$:
   394B 40 F0         [24] 2545 	jc	00131$
   394D                    2546 00108$:
                           2547 ;	radio/radio.c:805: rate_selection = i;
                           2548 ;	radio/radio.c:807: settings.air_data_rate = air_data_rates[rate_selection];
   394D EE            [12] 2549 	mov	a,r6
   394E FF            [12] 2550 	mov	r7,a
   394F 90 CC 6B      [24] 2551 	mov	dptr,#_air_data_rates
   3952 93            [24] 2552 	movc	a,@a+dptr
   3953 FE            [12] 2553 	mov	r6,a
   3954 78 8A         [12] 2554 	mov	r0,#(_settings + 0x0008)
   3956 F2            [24] 2555 	movx	@r0,a
                           2556 ;	radio/radio.c:809: if (settings.air_data_rate >= 32) {
   3957 BE 20 00      [24] 2557 	cjne	r6,#0x20,00207$
   395A                    2558 00207$:
   395A 40 04         [24] 2559 	jc	00110$
                           2560 ;	radio/radio.c:810: control = 0x0D;
   395C 7E 0D         [12] 2561 	mov	r6,#0x0D
   395E 80 02         [24] 2562 	sjmp	00111$
   3960                    2563 00110$:
                           2564 ;	radio/radio.c:812: control = 0x2D;
   3960 7E 2D         [12] 2565 	mov	r6,#0x2D
   3962                    2566 00111$:
                           2567 ;	radio/radio.c:814: if (param_get(PARAM_MANCHESTER) && settings.air_data_rate <= 128) {
   3962 75 82 0D      [24] 2568 	mov	dpl,#0x0D
   3965 C0 07         [24] 2569 	push	ar7
   3967 C0 06         [24] 2570 	push	ar6
   3969 12 28 8D      [24] 2571 	lcall	_param_get
   396C AA 82         [24] 2572 	mov	r2,dpl
   396E AB 83         [24] 2573 	mov	r3,dph
   3970 AC F0         [24] 2574 	mov	r4,b
   3972 FD            [12] 2575 	mov	r5,a
   3973 D0 06         [24] 2576 	pop	ar6
   3975 D0 07         [24] 2577 	pop	ar7
   3977 EA            [12] 2578 	mov	a,r2
   3978 4B            [12] 2579 	orl	a,r3
   3979 4C            [12] 2580 	orl	a,r4
   397A 4D            [12] 2581 	orl	a,r5
   397B 60 0B         [24] 2582 	jz	00113$
   397D 78 8A         [12] 2583 	mov	r0,#(_settings + 0x0008)
   397F E2            [24] 2584 	movx	a,@r0
   3980 FD            [12] 2585 	mov  r5,a
   3981 24 7F         [12] 2586 	add	a,#0xff - 0x80
   3983 40 03         [24] 2587 	jc	00113$
                           2588 ;	radio/radio.c:816: control |= EZRADIOPRO_ENMANCH;
   3985 43 06 02      [24] 2589 	orl	ar6,#0x02
   3988                    2590 00113$:
                           2591 ;	radio/radio.c:818: register_write(EZRADIOPRO_MODULATION_MODE_CONTROL_1, control);
   3988 C0 07         [24] 2592 	push	ar7
   398A C0 06         [24] 2593 	push	ar6
   398C 75 82 70      [24] 2594 	mov	dpl,#0x70
   398F 12 3B 6D      [24] 2595 	lcall	_register_write
   3992 15 81         [12] 2596 	dec	sp
                           2597 ;	radio/radio.c:820: register_write(EZRADIOPRO_MODULATION_MODE_CONTROL_2, 0x23);
   3994 74 23         [12] 2598 	mov	a,#0x23
   3996 C0 E0         [24] 2599 	push	acc
   3998 75 82 71      [24] 2600 	mov	dpl,#0x71
   399B 12 3B 6D      [24] 2601 	lcall	_register_write
   399E 15 81         [12] 2602 	dec	sp
                           2603 ;	radio/radio.c:824: register_write(EZRADIOPRO_AFC_LOOP_GEARSHIFT_OVERRIDE, 0x44);
   39A0 74 44         [12] 2604 	mov	a,#0x44
   39A2 C0 E0         [24] 2605 	push	acc
   39A4 75 82 1D      [24] 2606 	mov	dpl,#0x1D
   39A7 12 3B 6D      [24] 2607 	lcall	_register_write
   39AA 15 81         [12] 2608 	dec	sp
   39AC D0 07         [24] 2609 	pop	ar7
                           2610 ;	radio/radio.c:828: if (settings.air_data_rate < 200) {
   39AE 78 8A         [12] 2611 	mov	r0,#(_settings + 0x0008)
   39B0 E2            [24] 2612 	movx	a,@r0
   39B1 FE            [12] 2613 	mov	r6,a
   39B2 BE C8 00      [24] 2614 	cjne	r6,#0xC8,00211$
   39B5                    2615 00211$:
   39B5 50 12         [24] 2616 	jnc	00116$
                           2617 ;	radio/radio.c:829: register_write(EZRADIOPRO_AFC_TIMING_CONTROL, 0x0A);
   39B7 C0 07         [24] 2618 	push	ar7
   39B9 74 0A         [12] 2619 	mov	a,#0x0A
   39BB C0 E0         [24] 2620 	push	acc
   39BD 75 82 1E      [24] 2621 	mov	dpl,#0x1E
   39C0 12 3B 6D      [24] 2622 	lcall	_register_write
   39C3 15 81         [12] 2623 	dec	sp
   39C5 D0 07         [24] 2624 	pop	ar7
   39C7 80 10         [24] 2625 	sjmp	00117$
   39C9                    2626 00116$:
                           2627 ;	radio/radio.c:831: register_write(EZRADIOPRO_AFC_TIMING_CONTROL, 0x02);
   39C9 C0 07         [24] 2628 	push	ar7
   39CB 74 02         [12] 2629 	mov	a,#0x02
   39CD C0 E0         [24] 2630 	push	acc
   39CF 75 82 1E      [24] 2631 	mov	dpl,#0x1E
   39D2 12 3B 6D      [24] 2632 	lcall	_register_write
   39D5 15 81         [12] 2633 	dec	sp
   39D7 D0 07         [24] 2634 	pop	ar7
   39D9                    2635 00117$:
                           2636 ;	radio/radio.c:835: if (g_board_frequency == FREQ_433) {
   39D9 78 36         [12] 2637 	mov	r0,#_g_board_frequency
   39DB E2            [24] 2638 	movx	a,@r0
   39DC B4 43 3A      [24] 2639 	cjne	a,#0x43,00129$
                           2640 ;	radio/radio.c:836: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   39DF 7E 00         [12] 2641 	mov	r6,#0x00
   39E1                    2642 00133$:
                           2643 ;	radio/radio.c:838: reg_table_433[i][rate_selection]);
   39E1 EE            [12] 2644 	mov	a,r6
   39E2 75 F0 0D      [24] 2645 	mov	b,#0x0D
   39E5 A4            [48] 2646 	mul	ab
   39E6 24 78         [12] 2647 	add	a,#_reg_table_433
   39E8 FC            [12] 2648 	mov	r4,a
   39E9 74 CC         [12] 2649 	mov	a,#(_reg_table_433 >> 8)
   39EB 35 F0         [12] 2650 	addc	a,b
   39ED FD            [12] 2651 	mov	r5,a
   39EE EF            [12] 2652 	mov	a,r7
   39EF 2C            [12] 2653 	add	a,r4
   39F0 F5 82         [12] 2654 	mov	dpl,a
   39F2 E4            [12] 2655 	clr	a
   39F3 3D            [12] 2656 	addc	a,r5
   39F4 F5 83         [12] 2657 	mov	dph,a
   39F6 E4            [12] 2658 	clr	a
   39F7 93            [24] 2659 	movc	a,@a+dptr
   39F8 FD            [12] 2660 	mov	r5,a
                           2661 ;	radio/radio.c:837: register_write(reg_index[i],
   39F9 EE            [12] 2662 	mov	a,r6
   39FA 90 CC 5F      [24] 2663 	mov	dptr,#_reg_index
   39FD 93            [24] 2664 	movc	a,@a+dptr
   39FE FC            [12] 2665 	mov	r4,a
   39FF C0 07         [24] 2666 	push	ar7
   3A01 C0 06         [24] 2667 	push	ar6
   3A03 C0 05         [24] 2668 	push	ar5
   3A05 8C 82         [24] 2669 	mov	dpl,r4
   3A07 12 3B 6D      [24] 2670 	lcall	_register_write
   3A0A 15 81         [12] 2671 	dec	sp
   3A0C D0 06         [24] 2672 	pop	ar6
   3A0E D0 07         [24] 2673 	pop	ar7
                           2674 ;	radio/radio.c:836: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   3A10 0E            [12] 2675 	inc	r6
   3A11 BE 0C 00      [24] 2676 	cjne	r6,#0x0C,00215$
   3A14                    2677 00215$:
   3A14 40 CB         [24] 2678 	jc	00133$
   3A16 02 3A CE      [24] 2679 	ljmp	00130$
   3A19                    2680 00129$:
                           2681 ;	radio/radio.c:840: } else if (g_board_frequency == FREQ_470) {
   3A19 78 36         [12] 2682 	mov	r0,#_g_board_frequency
   3A1B E2            [24] 2683 	movx	a,@r0
   3A1C B4 47 39      [24] 2684 	cjne	a,#0x47,00126$
                           2685 ;	radio/radio.c:841: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   3A1F 7E 00         [12] 2686 	mov	r6,#0x00
   3A21                    2687 00135$:
                           2688 ;	radio/radio.c:843: reg_table_470[i][rate_selection]);
   3A21 EE            [12] 2689 	mov	a,r6
   3A22 75 F0 0D      [24] 2690 	mov	b,#0x0D
   3A25 A4            [48] 2691 	mul	ab
   3A26 24 14         [12] 2692 	add	a,#_reg_table_470
   3A28 FC            [12] 2693 	mov	r4,a
   3A29 74 CD         [12] 2694 	mov	a,#(_reg_table_470 >> 8)
   3A2B 35 F0         [12] 2695 	addc	a,b
   3A2D FD            [12] 2696 	mov	r5,a
   3A2E EF            [12] 2697 	mov	a,r7
   3A2F 2C            [12] 2698 	add	a,r4
   3A30 F5 82         [12] 2699 	mov	dpl,a
   3A32 E4            [12] 2700 	clr	a
   3A33 3D            [12] 2701 	addc	a,r5
   3A34 F5 83         [12] 2702 	mov	dph,a
   3A36 E4            [12] 2703 	clr	a
   3A37 93            [24] 2704 	movc	a,@a+dptr
   3A38 FD            [12] 2705 	mov	r5,a
                           2706 ;	radio/radio.c:842: register_write(reg_index[i],
   3A39 EE            [12] 2707 	mov	a,r6
   3A3A 90 CC 5F      [24] 2708 	mov	dptr,#_reg_index
   3A3D 93            [24] 2709 	movc	a,@a+dptr
   3A3E FC            [12] 2710 	mov	r4,a
   3A3F C0 07         [24] 2711 	push	ar7
   3A41 C0 06         [24] 2712 	push	ar6
   3A43 C0 05         [24] 2713 	push	ar5
   3A45 8C 82         [24] 2714 	mov	dpl,r4
   3A47 12 3B 6D      [24] 2715 	lcall	_register_write
   3A4A 15 81         [12] 2716 	dec	sp
   3A4C D0 06         [24] 2717 	pop	ar6
   3A4E D0 07         [24] 2718 	pop	ar7
                           2719 ;	radio/radio.c:841: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   3A50 0E            [12] 2720 	inc	r6
   3A51 BE 0C 00      [24] 2721 	cjne	r6,#0x0C,00219$
   3A54                    2722 00219$:
   3A54 40 CB         [24] 2723 	jc	00135$
   3A56 80 76         [24] 2724 	sjmp	00130$
   3A58                    2725 00126$:
                           2726 ;	radio/radio.c:845: } else if (g_board_frequency == FREQ_868) {
   3A58 78 36         [12] 2727 	mov	r0,#_g_board_frequency
   3A5A E2            [24] 2728 	movx	a,@r0
   3A5B B4 86 39      [24] 2729 	cjne	a,#0x86,00160$
                           2730 ;	radio/radio.c:846: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   3A5E 7E 00         [12] 2731 	mov	r6,#0x00
   3A60                    2732 00137$:
                           2733 ;	radio/radio.c:848: reg_table_868[i][rate_selection]);
   3A60 EE            [12] 2734 	mov	a,r6
   3A61 75 F0 0D      [24] 2735 	mov	b,#0x0D
   3A64 A4            [48] 2736 	mul	ab
   3A65 24 B0         [12] 2737 	add	a,#_reg_table_868
   3A67 FC            [12] 2738 	mov	r4,a
   3A68 74 CD         [12] 2739 	mov	a,#(_reg_table_868 >> 8)
   3A6A 35 F0         [12] 2740 	addc	a,b
   3A6C FD            [12] 2741 	mov	r5,a
   3A6D EF            [12] 2742 	mov	a,r7
   3A6E 2C            [12] 2743 	add	a,r4
   3A6F F5 82         [12] 2744 	mov	dpl,a
   3A71 E4            [12] 2745 	clr	a
   3A72 3D            [12] 2746 	addc	a,r5
   3A73 F5 83         [12] 2747 	mov	dph,a
   3A75 E4            [12] 2748 	clr	a
   3A76 93            [24] 2749 	movc	a,@a+dptr
   3A77 FD            [12] 2750 	mov	r5,a
                           2751 ;	radio/radio.c:847: register_write(reg_index[i],
   3A78 EE            [12] 2752 	mov	a,r6
   3A79 90 CC 5F      [24] 2753 	mov	dptr,#_reg_index
   3A7C 93            [24] 2754 	movc	a,@a+dptr
   3A7D FC            [12] 2755 	mov	r4,a
   3A7E C0 07         [24] 2756 	push	ar7
   3A80 C0 06         [24] 2757 	push	ar6
   3A82 C0 05         [24] 2758 	push	ar5
   3A84 8C 82         [24] 2759 	mov	dpl,r4
   3A86 12 3B 6D      [24] 2760 	lcall	_register_write
   3A89 15 81         [12] 2761 	dec	sp
   3A8B D0 06         [24] 2762 	pop	ar6
   3A8D D0 07         [24] 2763 	pop	ar7
                           2764 ;	radio/radio.c:846: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   3A8F 0E            [12] 2765 	inc	r6
   3A90 BE 0C 00      [24] 2766 	cjne	r6,#0x0C,00223$
   3A93                    2767 00223$:
   3A93 40 CB         [24] 2768 	jc	00137$
                           2769 ;	radio/radio.c:851: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   3A95 80 37         [24] 2770 	sjmp	00130$
   3A97                    2771 00160$:
   3A97 7E 00         [12] 2772 	mov	r6,#0x00
   3A99                    2773 00139$:
                           2774 ;	radio/radio.c:853: reg_table_915[i][rate_selection]);
   3A99 EE            [12] 2775 	mov	a,r6
   3A9A 75 F0 0D      [24] 2776 	mov	b,#0x0D
   3A9D A4            [48] 2777 	mul	ab
   3A9E 24 4C         [12] 2778 	add	a,#_reg_table_915
   3AA0 FC            [12] 2779 	mov	r4,a
   3AA1 74 CE         [12] 2780 	mov	a,#(_reg_table_915 >> 8)
   3AA3 35 F0         [12] 2781 	addc	a,b
   3AA5 FD            [12] 2782 	mov	r5,a
   3AA6 EF            [12] 2783 	mov	a,r7
   3AA7 2C            [12] 2784 	add	a,r4
   3AA8 F5 82         [12] 2785 	mov	dpl,a
   3AAA E4            [12] 2786 	clr	a
   3AAB 3D            [12] 2787 	addc	a,r5
   3AAC F5 83         [12] 2788 	mov	dph,a
   3AAE E4            [12] 2789 	clr	a
   3AAF 93            [24] 2790 	movc	a,@a+dptr
   3AB0 FD            [12] 2791 	mov	r5,a
                           2792 ;	radio/radio.c:852: register_write(reg_index[i],
   3AB1 EE            [12] 2793 	mov	a,r6
   3AB2 90 CC 5F      [24] 2794 	mov	dptr,#_reg_index
   3AB5 93            [24] 2795 	movc	a,@a+dptr
   3AB6 FC            [12] 2796 	mov	r4,a
   3AB7 C0 07         [24] 2797 	push	ar7
   3AB9 C0 06         [24] 2798 	push	ar6
   3ABB C0 05         [24] 2799 	push	ar5
   3ABD 8C 82         [24] 2800 	mov	dpl,r4
   3ABF 12 3B 6D      [24] 2801 	lcall	_register_write
   3AC2 15 81         [12] 2802 	dec	sp
   3AC4 D0 06         [24] 2803 	pop	ar6
   3AC6 D0 07         [24] 2804 	pop	ar7
                           2805 ;	radio/radio.c:851: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   3AC8 0E            [12] 2806 	inc	r6
   3AC9 BE 0C 00      [24] 2807 	cjne	r6,#0x0C,00225$
   3ACC                    2808 00225$:
   3ACC 40 CB         [24] 2809 	jc	00139$
   3ACE                    2810 00130$:
                           2811 ;	radio/radio.c:857: return true;
   3ACE D3            [12] 2812 	setb	c
   3ACF 22            [24] 2813 	ret
                           2814 ;------------------------------------------------------------
                           2815 ;Allocation info for local variables in function 'radio_set_transmit_power'
                           2816 ;------------------------------------------------------------
                           2817 ;power                     Allocated with name '_radio_set_transmit_power_power_1_232'
                           2818 ;i                         Allocated with name '_radio_set_transmit_power_i_1_233'
                           2819 ;------------------------------------------------------------
                           2820 ;	radio/radio.c:884: radio_set_transmit_power(uint8_t power)
                           2821 ;	-----------------------------------------
                           2822 ;	 function radio_set_transmit_power
                           2823 ;	-----------------------------------------
   3AD0                    2824 _radio_set_transmit_power:
   3AD0 E5 82         [12] 2825 	mov	a,dpl
   3AD2 90 04 70      [24] 2826 	mov	dptr,#_radio_set_transmit_power_power_1_232
   3AD5 F0            [24] 2827 	movx	@dptr,a
                           2828 ;	radio/radio.c:889: register_write(EZRADIOPRO_TX_POWER, 6); // Set output power of Si1002 to 6 = +10dBm as a nominal level
   3AD6 74 06         [12] 2829 	mov	a,#0x06
   3AD8 C0 E0         [24] 2830 	push	acc
   3ADA 75 82 6D      [24] 2831 	mov	dpl,#0x6D
   3ADD 12 3B 6D      [24] 2832 	lcall	_register_write
   3AE0 15 81         [12] 2833 	dec	sp
                           2834 ;	radio/radio.c:890: i = calibration_get(power);
   3AE2 90 04 70      [24] 2835 	mov	dptr,#_radio_set_transmit_power_power_1_232
   3AE5 E0            [24] 2836 	movx	a,@dptr
   3AE6 FF            [12] 2837 	mov	r7,a
   3AE7 F5 82         [12] 2838 	mov	dpl,a
   3AE9 C0 07         [24] 2839 	push	ar7
   3AEB 12 2C 6A      [24] 2840 	lcall	_calibration_get
   3AEE AE 82         [24] 2841 	mov	r6,dpl
   3AF0 D0 07         [24] 2842 	pop	ar7
                           2843 ;	radio/radio.c:891: if (i != 0xFF)
   3AF2 BE FF 02      [24] 2844 	cjne	r6,#0xFF,00109$
   3AF5 80 07         [24] 2845 	sjmp	00102$
   3AF7                    2846 00109$:
                           2847 ;	radio/radio.c:893: PCA0CPH0 = i;     // Set PWM for PA to correct duty cycle
   3AF7 8E FC         [24] 2848 	mov	_PCA0CPH0,r6
                           2849 ;	radio/radio.c:894: settings.transmit_power = power;
   3AF9 78 8C         [12] 2850 	mov	r0,#(_settings + 0x000a)
   3AFB EF            [12] 2851 	mov	a,r7
   3AFC F2            [24] 2852 	movx	@r0,a
   3AFD 22            [24] 2853 	ret
   3AFE                    2854 00102$:
                           2855 ;	radio/radio.c:898: i = power / POWER_LEVEL_STEP;
   3AFE EF            [12] 2856 	mov	a,r7
   3AFF C3            [12] 2857 	clr	c
   3B00 13            [12] 2858 	rrc	a
                           2859 ;	radio/radio.c:899: PCA0CPH0 = power_levels[i];     // Set PWM for PA to correct duty cycle
   3B01 FF            [12] 2860 	mov	r7,a
   3B02 90 CE E8      [24] 2861 	mov	dptr,#_power_levels
   3B05 93            [24] 2862 	movc	a,@a+dptr
   3B06 F5 FC         [12] 2863 	mov	_PCA0CPH0,a
                           2864 ;	radio/radio.c:900: settings.transmit_power = i * POWER_LEVEL_STEP;
   3B08 EF            [12] 2865 	mov	a,r7
   3B09 2F            [12] 2866 	add	a,r7
   3B0A FF            [12] 2867 	mov	r7,a
   3B0B 78 8C         [12] 2868 	mov	r0,#(_settings + 0x000a)
   3B0D EF            [12] 2869 	mov	a,r7
   3B0E F2            [24] 2870 	movx	@r0,a
   3B0F 22            [24] 2871 	ret
                           2872 ;------------------------------------------------------------
                           2873 ;Allocation info for local variables in function 'radio_get_transmit_power'
                           2874 ;------------------------------------------------------------
                           2875 ;	radio/radio.c:917: radio_get_transmit_power(void)
                           2876 ;	-----------------------------------------
                           2877 ;	 function radio_get_transmit_power
                           2878 ;	-----------------------------------------
   3B10                    2879 _radio_get_transmit_power:
                           2880 ;	radio/radio.c:919: return settings.transmit_power;
   3B10 78 8C         [12] 2881 	mov	r0,#(_settings + 0x000a)
   3B12 E2            [24] 2882 	movx	a,@r0
   3B13 F5 82         [12] 2883 	mov	dpl,a
   3B15 22            [24] 2884 	ret
                           2885 ;------------------------------------------------------------
                           2886 ;Allocation info for local variables in function 'radio_set_network_id'
                           2887 ;------------------------------------------------------------
                           2888 ;id                        Allocated with name '_radio_set_network_id_id_1_238'
                           2889 ;------------------------------------------------------------
                           2890 ;	radio/radio.c:925: radio_set_network_id(uint16_t id)
                           2891 ;	-----------------------------------------
                           2892 ;	 function radio_set_network_id
                           2893 ;	-----------------------------------------
   3B16                    2894 _radio_set_network_id:
   3B16 AF 83         [24] 2895 	mov	r7,dph
   3B18 E5 82         [12] 2896 	mov	a,dpl
   3B1A 90 04 71      [24] 2897 	mov	dptr,#_radio_set_network_id_id_1_238
   3B1D F0            [24] 2898 	movx	@dptr,a
   3B1E EF            [12] 2899 	mov	a,r7
   3B1F A3            [24] 2900 	inc	dptr
   3B20 F0            [24] 2901 	movx	@dptr,a
                           2902 ;	radio/radio.c:927: netid[0] = id&0xFF;
   3B21 90 04 71      [24] 2903 	mov	dptr,#_radio_set_network_id_id_1_238
   3B24 E0            [24] 2904 	movx	a,@dptr
   3B25 FE            [12] 2905 	mov	r6,a
   3B26 A3            [24] 2906 	inc	dptr
   3B27 E0            [24] 2907 	movx	a,@dptr
   3B28 FF            [12] 2908 	mov	r7,a
   3B29 8E 04         [24] 2909 	mov	ar4,r6
   3B2B 78 80         [12] 2910 	mov	r0,#_netid
   3B2D EC            [12] 2911 	mov	a,r4
   3B2E F2            [24] 2912 	movx	@r0,a
                           2913 ;	radio/radio.c:928: netid[1] = id>>8;
   3B2F 8F 05         [24] 2914 	mov	ar5,r7
   3B31 78 81         [12] 2915 	mov	r0,#(_netid + 0x0001)
   3B33 ED            [12] 2916 	mov	a,r5
   3B34 F2            [24] 2917 	movx	@r0,a
                           2918 ;	radio/radio.c:929: if (!feature_golay) {
   3B35 20 05 34      [24] 2919 	jb	_feature_golay,00103$
                           2920 ;	radio/radio.c:932: register_write(EZRADIOPRO_TRANSMIT_HEADER_3, id >> 8);
   3B38 C0 07         [24] 2921 	push	ar7
   3B3A C0 06         [24] 2922 	push	ar6
   3B3C C0 05         [24] 2923 	push	ar5
   3B3E C0 05         [24] 2924 	push	ar5
   3B40 75 82 3A      [24] 2925 	mov	dpl,#0x3A
   3B43 12 3B 6D      [24] 2926 	lcall	_register_write
   3B46 15 81         [12] 2927 	dec	sp
   3B48 D0 05         [24] 2928 	pop	ar5
   3B4A D0 06         [24] 2929 	pop	ar6
   3B4C D0 07         [24] 2930 	pop	ar7
                           2931 ;	radio/radio.c:933: register_write(EZRADIOPRO_TRANSMIT_HEADER_2, id & 0xFF);
   3B4E C0 06         [24] 2932 	push	ar6
   3B50 C0 05         [24] 2933 	push	ar5
   3B52 C0 06         [24] 2934 	push	ar6
   3B54 75 82 3B      [24] 2935 	mov	dpl,#0x3B
   3B57 12 3B 6D      [24] 2936 	lcall	_register_write
   3B5A 15 81         [12] 2937 	dec	sp
                           2938 ;	radio/radio.c:934: register_write(EZRADIOPRO_CHECK_HEADER_3, id >> 8);
   3B5C 75 82 3F      [24] 2939 	mov	dpl,#0x3F
   3B5F 12 3B 6D      [24] 2940 	lcall	_register_write
   3B62 15 81         [12] 2941 	dec	sp
                           2942 ;	radio/radio.c:935: register_write(EZRADIOPRO_CHECK_HEADER_2, id & 0xFF);
   3B64 75 82 40      [24] 2943 	mov	dpl,#0x40
   3B67 12 3B 6D      [24] 2944 	lcall	_register_write
   3B6A 15 81         [12] 2945 	dec	sp
   3B6C                    2946 00103$:
   3B6C 22            [24] 2947 	ret
                           2948 ;------------------------------------------------------------
                           2949 ;Allocation info for local variables in function 'register_write'
                           2950 ;------------------------------------------------------------
                           2951 ;value                     Allocated to stack - sp -2
                           2952 ;reg                       Allocated to registers r7 
                           2953 ;EX0_saved                 Allocated to registers b0 
                           2954 ;------------------------------------------------------------
                           2955 ;	radio/radio.c:946: register_write(uint8_t reg, uint8_t value) __reentrant
                           2956 ;	-----------------------------------------
                           2957 ;	 function register_write
                           2958 ;	-----------------------------------------
   3B6D                    2959 _register_write:
   3B6D AF 82         [24] 2960 	mov	r7,dpl
                           2961 ;	radio/radio.c:948: EX0_SAVE_DISABLE;
   3B6F A2 A8         [12] 2962 	mov	c,_EX0
   3B71 92 38         [24] 2963 	mov	b0,c
   3B73 C2 A8         [12] 2964 	clr	_EX0
                           2965 ;	radio/radio.c:950: NSS1 = 0;                           // drive NSS low
   3B75 C2 94         [12] 2966 	clr	_NSS1
                           2967 ;	radio/radio.c:951: SPIF1 = 0;                          // clear SPIF
   3B77 C2 B7         [12] 2968 	clr	_SPIF1
                           2969 ;	radio/radio.c:952: SPI1DAT = (reg | 0x80);             // write reg address
   3B79 74 80         [12] 2970 	mov	a,#0x80
   3B7B 4F            [12] 2971 	orl	a,r7
   3B7C F5 86         [12] 2972 	mov	_SPI1DAT,a
                           2973 ;	radio/radio.c:953: while (!TXBMT1);                    // wait on TXBMT
   3B7E                    2974 00101$:
   3B7E 30 B1 FD      [24] 2975 	jnb	_TXBMT1,00101$
                           2976 ;	radio/radio.c:954: SPI1DAT = value;                    // write value
   3B81 A8 81         [24] 2977 	mov	r0,sp
   3B83 18            [12] 2978 	dec	r0
   3B84 18            [12] 2979 	dec	r0
   3B85 86 86         [24] 2980 	mov	_SPI1DAT,@r0
                           2981 ;	radio/radio.c:955: while (!TXBMT1);                    // wait on TXBMT
   3B87                    2982 00104$:
   3B87 30 B1 FD      [24] 2983 	jnb	_TXBMT1,00104$
                           2984 ;	radio/radio.c:956: while ((SPI1CFG & 0x80) == 0x80);   // wait on SPIBSY
   3B8A                    2985 00107$:
   3B8A 74 80         [12] 2986 	mov	a,#0x80
   3B8C 55 84         [12] 2987 	anl	a,_SPI1CFG
   3B8E FF            [12] 2988 	mov	r7,a
   3B8F BF 80 02      [24] 2989 	cjne	r7,#0x80,00129$
   3B92 80 F6         [24] 2990 	sjmp	00107$
   3B94                    2991 00129$:
                           2992 ;	radio/radio.c:958: SPIF1 = 0;                          // leave SPIF cleared
   3B94 C2 B7         [12] 2993 	clr	_SPIF1
                           2994 ;	radio/radio.c:959: NSS1 = 1;                           // drive NSS high
   3B96 D2 94         [12] 2995 	setb	_NSS1
                           2996 ;	radio/radio.c:961: EX0_RESTORE;
   3B98 A2 38         [12] 2997 	mov	c,b0
   3B9A 92 A8         [24] 2998 	mov	_EX0,c
   3B9C 22            [24] 2999 	ret
                           3000 ;------------------------------------------------------------
                           3001 ;Allocation info for local variables in function 'register_read'
                           3002 ;------------------------------------------------------------
                           3003 ;reg                       Allocated to registers r7 
                           3004 ;value                     Allocated to registers r7 
                           3005 ;EX0_saved                 Allocated to registers b0 
                           3006 ;------------------------------------------------------------
                           3007 ;	radio/radio.c:971: register_read(uint8_t reg) __reentrant
                           3008 ;	-----------------------------------------
                           3009 ;	 function register_read
                           3010 ;	-----------------------------------------
   3B9D                    3011 _register_read:
   3B9D AF 82         [24] 3012 	mov	r7,dpl
                           3013 ;	radio/radio.c:974: EX0_SAVE_DISABLE;
   3B9F A2 A8         [12] 3014 	mov	c,_EX0
   3BA1 92 38         [24] 3015 	mov	b0,c
   3BA3 C2 A8         [12] 3016 	clr	_EX0
                           3017 ;	radio/radio.c:976: NSS1 = 0;				// dsrive NSS low
   3BA5 C2 94         [12] 3018 	clr	_NSS1
                           3019 ;	radio/radio.c:977: SPIF1 = 0;				// clear SPIF
   3BA7 C2 B7         [12] 3020 	clr	_SPIF1
                           3021 ;	radio/radio.c:978: SPI1DAT = (reg);			// write reg address
   3BA9 8F 86         [24] 3022 	mov	_SPI1DAT,r7
                           3023 ;	radio/radio.c:979: while (!TXBMT1);			// wait on TXBMT
   3BAB                    3024 00101$:
   3BAB 30 B1 FD      [24] 3025 	jnb	_TXBMT1,00101$
                           3026 ;	radio/radio.c:980: SPI1DAT = 0x00;				// write anything
   3BAE 75 86 00      [24] 3027 	mov	_SPI1DAT,#0x00
                           3028 ;	radio/radio.c:981: while (!TXBMT1);			// wait on TXBMT
   3BB1                    3029 00104$:
   3BB1 30 B1 FD      [24] 3030 	jnb	_TXBMT1,00104$
                           3031 ;	radio/radio.c:982: while ((SPI1CFG & 0x80) == 0x80);	// wait on SPIBSY
   3BB4                    3032 00107$:
   3BB4 74 80         [12] 3033 	mov	a,#0x80
   3BB6 55 84         [12] 3034 	anl	a,_SPI1CFG
   3BB8 FF            [12] 3035 	mov	r7,a
   3BB9 BF 80 02      [24] 3036 	cjne	r7,#0x80,00129$
   3BBC 80 F6         [24] 3037 	sjmp	00107$
   3BBE                    3038 00129$:
                           3039 ;	radio/radio.c:983: value = SPI1DAT;			// read value
   3BBE AF 86         [24] 3040 	mov	r7,_SPI1DAT
                           3041 ;	radio/radio.c:984: SPIF1 = 0;				// leave SPIF cleared
   3BC0 C2 B7         [12] 3042 	clr	_SPIF1
                           3043 ;	radio/radio.c:985: NSS1 = 1;				// drive NSS high
   3BC2 D2 94         [12] 3044 	setb	_NSS1
                           3045 ;	radio/radio.c:987: EX0_RESTORE;
   3BC4 A2 38         [12] 3046 	mov	c,b0
   3BC6 92 A8         [24] 3047 	mov	_EX0,c
                           3048 ;	radio/radio.c:989: return value;
   3BC8 8F 82         [24] 3049 	mov	dpl,r7
   3BCA 22            [24] 3050 	ret
                           3051 ;------------------------------------------------------------
                           3052 ;Allocation info for local variables in function 'read_receive_fifo'
                           3053 ;------------------------------------------------------------
                           3054 ;buf                       Allocated to stack - sp -3
                           3055 ;n                         Allocated to registers r7 
                           3056 ;------------------------------------------------------------
                           3057 ;	radio/radio.c:996: read_receive_fifo(register uint8_t n, __xdata uint8_t * buf) __reentrant
                           3058 ;	-----------------------------------------
                           3059 ;	 function read_receive_fifo
                           3060 ;	-----------------------------------------
   3BCB                    3061 _read_receive_fifo:
   3BCB AF 82         [24] 3062 	mov	r7,dpl
                           3063 ;	radio/radio.c:998: NSS1 = 0;				// drive NSS low
   3BCD C2 94         [12] 3064 	clr	_NSS1
                           3065 ;	radio/radio.c:999: SPIF1 = 0;				// clear SPIF
   3BCF C2 B7         [12] 3066 	clr	_SPIF1
                           3067 ;	radio/radio.c:1000: SPI1DAT = EZRADIOPRO_FIFO_ACCESS;
   3BD1 75 86 7F      [24] 3068 	mov	_SPI1DAT,#0x7F
                           3069 ;	radio/radio.c:1001: while (!SPIF1);				// wait on SPIF
   3BD4                    3070 00101$:
   3BD4 30 B7 FD      [24] 3071 	jnb	_SPIF1,00101$
                           3072 ;	radio/radio.c:1002: ACC = SPI1DAT;				// discard first byte
   3BD7 85 86 E0      [24] 3073 	mov	_ACC,_SPI1DAT
                           3074 ;	radio/radio.c:1004: while (n--) {
   3BDA E5 81         [12] 3075 	mov	a,sp
   3BDC 24 FD         [12] 3076 	add	a,#0xfd
   3BDE F8            [12] 3077 	mov	r0,a
   3BDF 86 05         [24] 3078 	mov	ar5,@r0
   3BE1 08            [12] 3079 	inc	r0
   3BE2 86 06         [24] 3080 	mov	ar6,@r0
   3BE4                    3081 00107$:
   3BE4 8F 04         [24] 3082 	mov	ar4,r7
   3BE6 1F            [12] 3083 	dec	r7
   3BE7 EC            [12] 3084 	mov	a,r4
   3BE8 60 16         [24] 3085 	jz	00109$
                           3086 ;	radio/radio.c:1005: SPIF1 = 0;			// clear SPIF
   3BEA C2 B7         [12] 3087 	clr	_SPIF1
                           3088 ;	radio/radio.c:1006: SPI1DAT = 0x00;			// write anything
   3BEC 75 86 00      [24] 3089 	mov	_SPI1DAT,#0x00
                           3090 ;	radio/radio.c:1007: while (!SPIF1);			// wait on SPIF
   3BEF                    3091 00104$:
   3BEF 30 B7 FD      [24] 3092 	jnb	_SPIF1,00104$
                           3093 ;	radio/radio.c:1008: *buf++ = SPI1DAT;		// copy to buffer
   3BF2 8D 82         [24] 3094 	mov	dpl,r5
   3BF4 8E 83         [24] 3095 	mov	dph,r6
   3BF6 E5 86         [12] 3096 	mov	a,_SPI1DAT
   3BF8 F0            [24] 3097 	movx	@dptr,a
   3BF9 A3            [24] 3098 	inc	dptr
   3BFA AD 82         [24] 3099 	mov	r5,dpl
   3BFC AE 83         [24] 3100 	mov	r6,dph
   3BFE 80 E4         [24] 3101 	sjmp	00107$
   3C00                    3102 00109$:
                           3103 ;	radio/radio.c:1011: SPIF1 = 0;				// leave SPIF cleared
   3C00 C2 B7         [12] 3104 	clr	_SPIF1
                           3105 ;	radio/radio.c:1012: NSS1 = 1;				// drive NSS high
   3C02 D2 94         [12] 3106 	setb	_NSS1
   3C04 22            [24] 3107 	ret
                           3108 ;------------------------------------------------------------
                           3109 ;Allocation info for local variables in function 'clear_status_registers'
                           3110 ;------------------------------------------------------------
                           3111 ;	radio/radio.c:1018: clear_status_registers(void)
                           3112 ;	-----------------------------------------
                           3113 ;	 function clear_status_registers
                           3114 ;	-----------------------------------------
   3C05                    3115 _clear_status_registers:
                           3116 ;	radio/radio.c:1020: register_read(EZRADIOPRO_INTERRUPT_STATUS_1);
   3C05 75 82 03      [24] 3117 	mov	dpl,#0x03
   3C08 12 3B 9D      [24] 3118 	lcall	_register_read
                           3119 ;	radio/radio.c:1021: register_read(EZRADIOPRO_INTERRUPT_STATUS_2);
   3C0B 75 82 04      [24] 3120 	mov	dpl,#0x04
   3C0E 02 3B 9D      [24] 3121 	ljmp	_register_read
                           3122 ;------------------------------------------------------------
                           3123 ;Allocation info for local variables in function 'scale_uint32'
                           3124 ;------------------------------------------------------------
                           3125 ;	radio/radio.c:1031: scale_uint32(__pdata uint32_t value, __pdata uint32_t scale)
                           3126 ;	-----------------------------------------
                           3127 ;	 function scale_uint32
                           3128 ;	-----------------------------------------
   3C11                    3129 _scale_uint32:
   3C11 AF 82         [24] 3130 	mov	r7,dpl
   3C13 AE 83         [24] 3131 	mov	r6,dph
   3C15 AD F0         [24] 3132 	mov	r5,b
   3C17 FC            [12] 3133 	mov	r4,a
   3C18 78 A2         [12] 3134 	mov	r0,#_scale_uint32_value_1_250
   3C1A EF            [12] 3135 	mov	a,r7
   3C1B F2            [24] 3136 	movx	@r0,a
   3C1C 08            [12] 3137 	inc	r0
   3C1D EE            [12] 3138 	mov	a,r6
   3C1E F2            [24] 3139 	movx	@r0,a
   3C1F 08            [12] 3140 	inc	r0
   3C20 ED            [12] 3141 	mov	a,r5
   3C21 F2            [24] 3142 	movx	@r0,a
   3C22 08            [12] 3143 	inc	r0
   3C23 EC            [12] 3144 	mov	a,r4
   3C24 F2            [24] 3145 	movx	@r0,a
                           3146 ;	radio/radio.c:1033: return (value + (scale >> 1)) / scale;
   3C25 78 A1         [12] 3147 	mov	r0,#(_scale_uint32_PARM_2 + 3)
   3C27 E2            [24] 3148 	movx	a,@r0
   3C28 C3            [12] 3149 	clr	c
   3C29 13            [12] 3150 	rrc	a
   3C2A FF            [12] 3151 	mov	r7,a
   3C2B 18            [12] 3152 	dec	r0
   3C2C E2            [24] 3153 	movx	a,@r0
   3C2D 13            [12] 3154 	rrc	a
   3C2E FE            [12] 3155 	mov	r6,a
   3C2F 18            [12] 3156 	dec	r0
   3C30 E2            [24] 3157 	movx	a,@r0
   3C31 13            [12] 3158 	rrc	a
   3C32 FB            [12] 3159 	mov	r3,a
   3C33 18            [12] 3160 	dec	r0
   3C34 E2            [24] 3161 	movx	a,@r0
   3C35 13            [12] 3162 	rrc	a
   3C36 FA            [12] 3163 	mov	r2,a
   3C37 78 A2         [12] 3164 	mov	r0,#_scale_uint32_value_1_250
   3C39 E2            [24] 3165 	movx	a,@r0
   3C3A 2A            [12] 3166 	add	a,r2
   3C3B FA            [12] 3167 	mov	r2,a
   3C3C 08            [12] 3168 	inc	r0
   3C3D E2            [24] 3169 	movx	a,@r0
   3C3E 3B            [12] 3170 	addc	a,r3
   3C3F FB            [12] 3171 	mov	r3,a
   3C40 08            [12] 3172 	inc	r0
   3C41 E2            [24] 3173 	movx	a,@r0
   3C42 3E            [12] 3174 	addc	a,r6
   3C43 FE            [12] 3175 	mov	r6,a
   3C44 08            [12] 3176 	inc	r0
   3C45 E2            [24] 3177 	movx	a,@r0
   3C46 3F            [12] 3178 	addc	a,r7
   3C47 FF            [12] 3179 	mov	r7,a
   3C48 78 9E         [12] 3180 	mov	r0,#_scale_uint32_PARM_2
   3C4A 90 05 B5      [24] 3181 	mov	dptr,#__divulong_PARM_2
   3C4D E2            [24] 3182 	movx	a,@r0
   3C4E F0            [24] 3183 	movx	@dptr,a
   3C4F 08            [12] 3184 	inc	r0
   3C50 E2            [24] 3185 	movx	a,@r0
   3C51 A3            [24] 3186 	inc	dptr
   3C52 F0            [24] 3187 	movx	@dptr,a
   3C53 08            [12] 3188 	inc	r0
   3C54 E2            [24] 3189 	movx	a,@r0
   3C55 A3            [24] 3190 	inc	dptr
   3C56 F0            [24] 3191 	movx	@dptr,a
   3C57 08            [12] 3192 	inc	r0
   3C58 E2            [24] 3193 	movx	a,@r0
   3C59 A3            [24] 3194 	inc	dptr
   3C5A F0            [24] 3195 	movx	@dptr,a
   3C5B 8A 82         [24] 3196 	mov	dpl,r2
   3C5D 8B 83         [24] 3197 	mov	dph,r3
   3C5F 8E F0         [24] 3198 	mov	b,r6
   3C61 EF            [12] 3199 	mov	a,r7
   3C62 02 5E 91      [24] 3200 	ljmp	__divulong
                           3201 ;------------------------------------------------------------
                           3202 ;Allocation info for local variables in function 'software_reset'
                           3203 ;------------------------------------------------------------
                           3204 ;status                    Allocated with name '_software_reset_status_1_253'
                           3205 ;------------------------------------------------------------
                           3206 ;	radio/radio.c:1041: software_reset(void)
                           3207 ;	-----------------------------------------
                           3208 ;	 function software_reset
                           3209 ;	-----------------------------------------
   3C65                    3210 _software_reset:
                           3211 ;	radio/radio.c:1046: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0);
   3C65 E4            [12] 3212 	clr	a
   3C66 C0 E0         [24] 3213 	push	acc
   3C68 75 82 05      [24] 3214 	mov	dpl,#0x05
   3C6B 12 3B 6D      [24] 3215 	lcall	_register_write
   3C6E 15 81         [12] 3216 	dec	sp
                           3217 ;	radio/radio.c:1047: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, 0);
   3C70 E4            [12] 3218 	clr	a
   3C71 C0 E0         [24] 3219 	push	acc
   3C73 75 82 06      [24] 3220 	mov	dpl,#0x06
   3C76 12 3B 6D      [24] 3221 	lcall	_register_write
   3C79 15 81         [12] 3222 	dec	sp
                           3223 ;	radio/radio.c:1049: clear_status_registers();
   3C7B 12 3C 05      [24] 3224 	lcall	_clear_status_registers
                           3225 ;	radio/radio.c:1052: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_1, (EZRADIOPRO_SWRES | EZRADIOPRO_XTON));
   3C7E 74 81         [12] 3226 	mov	a,#0x81
   3C80 C0 E0         [24] 3227 	push	acc
   3C82 75 82 07      [24] 3228 	mov	dpl,#0x07
   3C85 12 3B 6D      [24] 3229 	lcall	_register_write
   3C88 15 81         [12] 3230 	dec	sp
                           3231 ;	radio/radio.c:1055: delay_set(2);
   3C8A 90 00 02      [24] 3232 	mov	dptr,#0x0002
   3C8D 12 58 B1      [24] 3233 	lcall	_delay_set
                           3234 ;	radio/radio.c:1056: while (IRQ) {
   3C90                    3235 00103$:
   3C90 30 87 07      [24] 3236 	jnb	_IRQ,00105$
                           3237 ;	radio/radio.c:1057: if (delay_expired()) {
   3C93 12 58 E2      [24] 3238 	lcall	_delay_expired
   3C96 50 F8         [24] 3239 	jnc	00103$
                           3240 ;	radio/radio.c:1058: return false;
   3C98 C3            [12] 3241 	clr	c
   3C99 22            [24] 3242 	ret
   3C9A                    3243 00105$:
                           3244 ;	radio/radio.c:1063: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0);
   3C9A E4            [12] 3245 	clr	a
   3C9B C0 E0         [24] 3246 	push	acc
   3C9D 75 82 05      [24] 3247 	mov	dpl,#0x05
   3CA0 12 3B 6D      [24] 3248 	lcall	_register_write
   3CA3 15 81         [12] 3249 	dec	sp
                           3250 ;	radio/radio.c:1064: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, EZRADIOPRO_ENCHIPRDY);
   3CA5 74 02         [12] 3251 	mov	a,#0x02
   3CA7 C0 E0         [24] 3252 	push	acc
   3CA9 75 82 06      [24] 3253 	mov	dpl,#0x06
   3CAC 12 3B 6D      [24] 3254 	lcall	_register_write
   3CAF 15 81         [12] 3255 	dec	sp
                           3256 ;	radio/radio.c:1066: delay_set(20);
   3CB1 90 00 14      [24] 3257 	mov	dptr,#0x0014
   3CB4 12 58 B1      [24] 3258 	lcall	_delay_set
                           3259 ;	radio/radio.c:1067: while (!delay_expired()) {
   3CB7                    3260 00108$:
   3CB7 12 58 E2      [24] 3261 	lcall	_delay_expired
   3CBA 40 13         [24] 3262 	jc	00110$
                           3263 ;	radio/radio.c:1068: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_1);
   3CBC 75 82 03      [24] 3264 	mov	dpl,#0x03
   3CBF 12 3B 9D      [24] 3265 	lcall	_register_read
                           3266 ;	radio/radio.c:1069: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_2);
   3CC2 75 82 04      [24] 3267 	mov	dpl,#0x04
   3CC5 12 3B 9D      [24] 3268 	lcall	_register_read
   3CC8 E5 82         [12] 3269 	mov	a,dpl
                           3270 ;	radio/radio.c:1070: if (status & EZRADIOPRO_ICHIPRDY) {
   3CCA 30 E1 EA      [24] 3271 	jnb	acc.1,00108$
                           3272 ;	radio/radio.c:1071: return true;
   3CCD D3            [12] 3273 	setb	c
   3CCE 22            [24] 3274 	ret
   3CCF                    3275 00110$:
                           3276 ;	radio/radio.c:1074: return false;
   3CCF C3            [12] 3277 	clr	c
   3CD0 22            [24] 3278 	ret
                           3279 ;------------------------------------------------------------
                           3280 ;Allocation info for local variables in function 'set_frequency_registers'
                           3281 ;------------------------------------------------------------
                           3282 ;band                      Allocated with name '_set_frequency_registers_band_1_259'
                           3283 ;------------------------------------------------------------
                           3284 ;	radio/radio.c:1081: set_frequency_registers(__pdata uint32_t frequency)
                           3285 ;	-----------------------------------------
                           3286 ;	 function set_frequency_registers
                           3287 ;	-----------------------------------------
   3CD1                    3288 _set_frequency_registers:
   3CD1 AF 82         [24] 3289 	mov	r7,dpl
   3CD3 AE 83         [24] 3290 	mov	r6,dph
   3CD5 AD F0         [24] 3291 	mov	r5,b
   3CD7 FC            [12] 3292 	mov	r4,a
   3CD8 78 A6         [12] 3293 	mov	r0,#_set_frequency_registers_frequency_1_258
   3CDA EF            [12] 3294 	mov	a,r7
   3CDB F2            [24] 3295 	movx	@r0,a
   3CDC 08            [12] 3296 	inc	r0
   3CDD EE            [12] 3297 	mov	a,r6
   3CDE F2            [24] 3298 	movx	@r0,a
   3CDF 08            [12] 3299 	inc	r0
   3CE0 ED            [12] 3300 	mov	a,r5
   3CE1 F2            [24] 3301 	movx	@r0,a
   3CE2 08            [12] 3302 	inc	r0
   3CE3 EC            [12] 3303 	mov	a,r4
   3CE4 F2            [24] 3304 	movx	@r0,a
                           3305 ;	radio/radio.c:1086: if (frequency > 480000000UL) {
   3CE5 78 A6         [12] 3306 	mov	r0,#_set_frequency_registers_frequency_1_258
   3CE7 C3            [12] 3307 	clr	c
   3CE8 E2            [24] 3308 	movx	a,@r0
   3CE9 F5 F0         [12] 3309 	mov	b,a
   3CEB E4            [12] 3310 	clr	a
   3CEC 95 F0         [12] 3311 	subb	a,b
   3CEE 08            [12] 3312 	inc	r0
   3CEF E2            [24] 3313 	movx	a,@r0
   3CF0 F5 F0         [12] 3314 	mov	b,a
   3CF2 74 38         [12] 3315 	mov	a,#0x38
   3CF4 95 F0         [12] 3316 	subb	a,b
   3CF6 08            [12] 3317 	inc	r0
   3CF7 E2            [24] 3318 	movx	a,@r0
   3CF8 F5 F0         [12] 3319 	mov	b,a
   3CFA 74 9C         [12] 3320 	mov	a,#0x9C
   3CFC 95 F0         [12] 3321 	subb	a,b
   3CFE 08            [12] 3322 	inc	r0
   3CFF E2            [24] 3323 	movx	a,@r0
   3D00 F5 F0         [12] 3324 	mov	b,a
   3D02 74 1C         [12] 3325 	mov	a,#0x1C
   3D04 95 F0         [12] 3326 	subb	a,b
   3D06 40 03         [24] 3327 	jc	00109$
   3D08 02 3D C7      [24] 3328 	ljmp	00102$
   3D0B                    3329 00109$:
                           3330 ;	radio/radio.c:1087: frequency -= 480000000UL;
   3D0B 78 A7         [12] 3331 	mov	r0,#(_set_frequency_registers_frequency_1_258 + 1)
   3D0D E2            [24] 3332 	movx	a,@r0
   3D0E 24 C8         [12] 3333 	add	a,#0xC8
   3D10 F2            [24] 3334 	movx	@r0,a
   3D11 08            [12] 3335 	inc	r0
   3D12 E2            [24] 3336 	movx	a,@r0
   3D13 34 63         [12] 3337 	addc	a,#0x63
   3D15 F2            [24] 3338 	movx	@r0,a
   3D16 08            [12] 3339 	inc	r0
   3D17 E2            [24] 3340 	movx	a,@r0
   3D18 34 E3         [12] 3341 	addc	a,#0xE3
   3D1A F2            [24] 3342 	movx	@r0,a
                           3343 ;	radio/radio.c:1088: band  = frequency / 20000000UL;
   3D1B 90 05 B5      [24] 3344 	mov	dptr,#__divulong_PARM_2
   3D1E E4            [12] 3345 	clr	a
   3D1F F0            [24] 3346 	movx	@dptr,a
   3D20 74 2D         [12] 3347 	mov	a,#0x2D
   3D22 A3            [24] 3348 	inc	dptr
   3D23 F0            [24] 3349 	movx	@dptr,a
   3D24 74 31         [12] 3350 	mov	a,#0x31
   3D26 A3            [24] 3351 	inc	dptr
   3D27 F0            [24] 3352 	movx	@dptr,a
   3D28 74 01         [12] 3353 	mov	a,#0x01
   3D2A A3            [24] 3354 	inc	dptr
   3D2B F0            [24] 3355 	movx	@dptr,a
   3D2C 78 A6         [12] 3356 	mov	r0,#_set_frequency_registers_frequency_1_258
   3D2E E2            [24] 3357 	movx	a,@r0
   3D2F F5 82         [12] 3358 	mov	dpl,a
   3D31 08            [12] 3359 	inc	r0
   3D32 E2            [24] 3360 	movx	a,@r0
   3D33 F5 83         [12] 3361 	mov	dph,a
   3D35 08            [12] 3362 	inc	r0
   3D36 E2            [24] 3363 	movx	a,@r0
   3D37 F5 F0         [12] 3364 	mov	b,a
   3D39 08            [12] 3365 	inc	r0
   3D3A E2            [24] 3366 	movx	a,@r0
   3D3B 12 5E 91      [24] 3367 	lcall	__divulong
   3D3E AA 82         [24] 3368 	mov	r2,dpl
   3D40 90 04 73      [24] 3369 	mov	dptr,#_set_frequency_registers_band_1_259
   3D43 EA            [12] 3370 	mov	a,r2
   3D44 F0            [24] 3371 	movx	@dptr,a
                           3372 ;	radio/radio.c:1089: frequency -= (uint32_t)band * 20000000UL;
   3D45 90 05 DA      [24] 3373 	mov	dptr,#__mullong_PARM_2
   3D48 EA            [12] 3374 	mov	a,r2
   3D49 F0            [24] 3375 	movx	@dptr,a
   3D4A E4            [12] 3376 	clr	a
   3D4B A3            [24] 3377 	inc	dptr
   3D4C F0            [24] 3378 	movx	@dptr,a
   3D4D E4            [12] 3379 	clr	a
   3D4E A3            [24] 3380 	inc	dptr
   3D4F F0            [24] 3381 	movx	@dptr,a
   3D50 E4            [12] 3382 	clr	a
   3D51 A3            [24] 3383 	inc	dptr
   3D52 F0            [24] 3384 	movx	@dptr,a
   3D53 90 2D 00      [24] 3385 	mov	dptr,#0x2D00
   3D56 75 F0 31      [24] 3386 	mov	b,#0x31
   3D59 74 01         [12] 3387 	mov	a,#0x01
   3D5B 12 61 EF      [24] 3388 	lcall	__mullong
   3D5E AC 82         [24] 3389 	mov	r4,dpl
   3D60 AD 83         [24] 3390 	mov	r5,dph
   3D62 AE F0         [24] 3391 	mov	r6,b
   3D64 FF            [12] 3392 	mov	r7,a
   3D65 78 A6         [12] 3393 	mov	r0,#_set_frequency_registers_frequency_1_258
   3D67 E2            [24] 3394 	movx	a,@r0
   3D68 C3            [12] 3395 	clr	c
   3D69 9C            [12] 3396 	subb	a,r4
   3D6A F2            [24] 3397 	movx	@r0,a
   3D6B 08            [12] 3398 	inc	r0
   3D6C E2            [24] 3399 	movx	a,@r0
   3D6D 9D            [12] 3400 	subb	a,r5
   3D6E F2            [24] 3401 	movx	@r0,a
   3D6F 08            [12] 3402 	inc	r0
   3D70 E2            [24] 3403 	movx	a,@r0
   3D71 9E            [12] 3404 	subb	a,r6
   3D72 F2            [24] 3405 	movx	@r0,a
   3D73 08            [12] 3406 	inc	r0
   3D74 E2            [24] 3407 	movx	a,@r0
   3D75 9F            [12] 3408 	subb	a,r7
   3D76 F2            [24] 3409 	movx	@r0,a
                           3410 ;	radio/radio.c:1090: frequency  = scale_uint32(frequency, 625);
   3D77 78 9E         [12] 3411 	mov	r0,#_scale_uint32_PARM_2
   3D79 74 71         [12] 3412 	mov	a,#0x71
   3D7B F2            [24] 3413 	movx	@r0,a
   3D7C 08            [12] 3414 	inc	r0
   3D7D 74 02         [12] 3415 	mov	a,#0x02
   3D7F F2            [24] 3416 	movx	@r0,a
   3D80 08            [12] 3417 	inc	r0
   3D81 E4            [12] 3418 	clr	a
   3D82 F2            [24] 3419 	movx	@r0,a
   3D83 08            [12] 3420 	inc	r0
   3D84 F2            [24] 3421 	movx	@r0,a
   3D85 78 A6         [12] 3422 	mov	r0,#_set_frequency_registers_frequency_1_258
   3D87 E2            [24] 3423 	movx	a,@r0
   3D88 F5 82         [12] 3424 	mov	dpl,a
   3D8A 08            [12] 3425 	inc	r0
   3D8B E2            [24] 3426 	movx	a,@r0
   3D8C F5 83         [12] 3427 	mov	dph,a
   3D8E 08            [12] 3428 	inc	r0
   3D8F E2            [24] 3429 	movx	a,@r0
   3D90 F5 F0         [12] 3430 	mov	b,a
   3D92 08            [12] 3431 	inc	r0
   3D93 E2            [24] 3432 	movx	a,@r0
   3D94 12 3C 11      [24] 3433 	lcall	_scale_uint32
   3D97 78 A6         [12] 3434 	mov	r0,#_set_frequency_registers_frequency_1_258
   3D99 C0 E0         [24] 3435 	push	acc
   3D9B E5 82         [12] 3436 	mov	a,dpl
   3D9D F2            [24] 3437 	movx	@r0,a
   3D9E 08            [12] 3438 	inc	r0
   3D9F E5 83         [12] 3439 	mov	a,dph
   3DA1 F2            [24] 3440 	movx	@r0,a
   3DA2 08            [12] 3441 	inc	r0
   3DA3 E5 F0         [12] 3442 	mov	a,b
   3DA5 F2            [24] 3443 	movx	@r0,a
   3DA6 D0 E0         [24] 3444 	pop	acc
   3DA8 08            [12] 3445 	inc	r0
   3DA9 F2            [24] 3446 	movx	@r0,a
                           3447 ;	radio/radio.c:1091: frequency <<= 1;
   3DAA 78 A6         [12] 3448 	mov	r0,#_set_frequency_registers_frequency_1_258
   3DAC E2            [24] 3449 	movx	a,@r0
   3DAD 25 E0         [12] 3450 	add	a,acc
   3DAF F2            [24] 3451 	movx	@r0,a
   3DB0 08            [12] 3452 	inc	r0
   3DB1 E2            [24] 3453 	movx	a,@r0
   3DB2 33            [12] 3454 	rlc	a
   3DB3 F2            [24] 3455 	movx	@r0,a
   3DB4 08            [12] 3456 	inc	r0
   3DB5 E2            [24] 3457 	movx	a,@r0
   3DB6 33            [12] 3458 	rlc	a
   3DB7 F2            [24] 3459 	movx	@r0,a
   3DB8 08            [12] 3460 	inc	r0
   3DB9 E2            [24] 3461 	movx	a,@r0
   3DBA 33            [12] 3462 	rlc	a
   3DBB F2            [24] 3463 	movx	@r0,a
                           3464 ;	radio/radio.c:1092: band |= EZRADIOPRO_HBSEL;
   3DBC 90 04 73      [24] 3465 	mov	dptr,#_set_frequency_registers_band_1_259
   3DBF E0            [24] 3466 	movx	a,@dptr
   3DC0 FF            [12] 3467 	mov	r7,a
   3DC1 44 20         [12] 3468 	orl	a,#0x20
   3DC3 F0            [24] 3469 	movx	@dptr,a
   3DC4 02 3E 8A      [24] 3470 	ljmp	00103$
   3DC7                    3471 00102$:
                           3472 ;	radio/radio.c:1094: frequency -= 240000000UL;
   3DC7 78 A7         [12] 3473 	mov	r0,#(_set_frequency_registers_frequency_1_258 + 1)
   3DC9 E2            [24] 3474 	movx	a,@r0
   3DCA 24 E4         [12] 3475 	add	a,#0xE4
   3DCC F2            [24] 3476 	movx	@r0,a
   3DCD 08            [12] 3477 	inc	r0
   3DCE E2            [24] 3478 	movx	a,@r0
   3DCF 34 B1         [12] 3479 	addc	a,#0xB1
   3DD1 F2            [24] 3480 	movx	@r0,a
   3DD2 08            [12] 3481 	inc	r0
   3DD3 E2            [24] 3482 	movx	a,@r0
   3DD4 34 F1         [12] 3483 	addc	a,#0xF1
   3DD6 F2            [24] 3484 	movx	@r0,a
                           3485 ;	radio/radio.c:1095: band  = frequency / 10000000UL;
   3DD7 90 05 B5      [24] 3486 	mov	dptr,#__divulong_PARM_2
   3DDA 74 80         [12] 3487 	mov	a,#0x80
   3DDC F0            [24] 3488 	movx	@dptr,a
   3DDD 74 96         [12] 3489 	mov	a,#0x96
   3DDF A3            [24] 3490 	inc	dptr
   3DE0 F0            [24] 3491 	movx	@dptr,a
   3DE1 74 98         [12] 3492 	mov	a,#0x98
   3DE3 A3            [24] 3493 	inc	dptr
   3DE4 F0            [24] 3494 	movx	@dptr,a
   3DE5 E4            [12] 3495 	clr	a
   3DE6 A3            [24] 3496 	inc	dptr
   3DE7 F0            [24] 3497 	movx	@dptr,a
   3DE8 78 A6         [12] 3498 	mov	r0,#_set_frequency_registers_frequency_1_258
   3DEA E2            [24] 3499 	movx	a,@r0
   3DEB F5 82         [12] 3500 	mov	dpl,a
   3DED 08            [12] 3501 	inc	r0
   3DEE E2            [24] 3502 	movx	a,@r0
   3DEF F5 83         [12] 3503 	mov	dph,a
   3DF1 08            [12] 3504 	inc	r0
   3DF2 E2            [24] 3505 	movx	a,@r0
   3DF3 F5 F0         [12] 3506 	mov	b,a
   3DF5 08            [12] 3507 	inc	r0
   3DF6 E2            [24] 3508 	movx	a,@r0
   3DF7 12 5E 91      [24] 3509 	lcall	__divulong
   3DFA AC 82         [24] 3510 	mov	r4,dpl
   3DFC 90 04 73      [24] 3511 	mov	dptr,#_set_frequency_registers_band_1_259
   3DFF EC            [12] 3512 	mov	a,r4
   3E00 F0            [24] 3513 	movx	@dptr,a
                           3514 ;	radio/radio.c:1096: frequency -= (uint32_t)band * 10000000UL;
   3E01 90 05 DA      [24] 3515 	mov	dptr,#__mullong_PARM_2
   3E04 EC            [12] 3516 	mov	a,r4
   3E05 F0            [24] 3517 	movx	@dptr,a
   3E06 E4            [12] 3518 	clr	a
   3E07 A3            [24] 3519 	inc	dptr
   3E08 F0            [24] 3520 	movx	@dptr,a
   3E09 E4            [12] 3521 	clr	a
   3E0A A3            [24] 3522 	inc	dptr
   3E0B F0            [24] 3523 	movx	@dptr,a
   3E0C E4            [12] 3524 	clr	a
   3E0D A3            [24] 3525 	inc	dptr
   3E0E F0            [24] 3526 	movx	@dptr,a
   3E0F 90 96 80      [24] 3527 	mov	dptr,#0x9680
   3E12 75 F0 98      [24] 3528 	mov	b,#0x98
   3E15 E4            [12] 3529 	clr	a
   3E16 12 61 EF      [24] 3530 	lcall	__mullong
   3E19 AC 82         [24] 3531 	mov	r4,dpl
   3E1B AD 83         [24] 3532 	mov	r5,dph
   3E1D AE F0         [24] 3533 	mov	r6,b
   3E1F FF            [12] 3534 	mov	r7,a
   3E20 78 A6         [12] 3535 	mov	r0,#_set_frequency_registers_frequency_1_258
   3E22 E2            [24] 3536 	movx	a,@r0
   3E23 C3            [12] 3537 	clr	c
   3E24 9C            [12] 3538 	subb	a,r4
   3E25 F2            [24] 3539 	movx	@r0,a
   3E26 08            [12] 3540 	inc	r0
   3E27 E2            [24] 3541 	movx	a,@r0
   3E28 9D            [12] 3542 	subb	a,r5
   3E29 F2            [24] 3543 	movx	@r0,a
   3E2A 08            [12] 3544 	inc	r0
   3E2B E2            [24] 3545 	movx	a,@r0
   3E2C 9E            [12] 3546 	subb	a,r6
   3E2D F2            [24] 3547 	movx	@r0,a
   3E2E 08            [12] 3548 	inc	r0
   3E2F E2            [24] 3549 	movx	a,@r0
   3E30 9F            [12] 3550 	subb	a,r7
   3E31 F2            [24] 3551 	movx	@r0,a
                           3552 ;	radio/radio.c:1097: frequency  = scale_uint32(frequency, 625);
   3E32 78 9E         [12] 3553 	mov	r0,#_scale_uint32_PARM_2
   3E34 74 71         [12] 3554 	mov	a,#0x71
   3E36 F2            [24] 3555 	movx	@r0,a
   3E37 08            [12] 3556 	inc	r0
   3E38 74 02         [12] 3557 	mov	a,#0x02
   3E3A F2            [24] 3558 	movx	@r0,a
   3E3B 08            [12] 3559 	inc	r0
   3E3C E4            [12] 3560 	clr	a
   3E3D F2            [24] 3561 	movx	@r0,a
   3E3E 08            [12] 3562 	inc	r0
   3E3F F2            [24] 3563 	movx	@r0,a
   3E40 78 A6         [12] 3564 	mov	r0,#_set_frequency_registers_frequency_1_258
   3E42 E2            [24] 3565 	movx	a,@r0
   3E43 F5 82         [12] 3566 	mov	dpl,a
   3E45 08            [12] 3567 	inc	r0
   3E46 E2            [24] 3568 	movx	a,@r0
   3E47 F5 83         [12] 3569 	mov	dph,a
   3E49 08            [12] 3570 	inc	r0
   3E4A E2            [24] 3571 	movx	a,@r0
   3E4B F5 F0         [12] 3572 	mov	b,a
   3E4D 08            [12] 3573 	inc	r0
   3E4E E2            [24] 3574 	movx	a,@r0
   3E4F 12 3C 11      [24] 3575 	lcall	_scale_uint32
   3E52 78 A6         [12] 3576 	mov	r0,#_set_frequency_registers_frequency_1_258
   3E54 C0 E0         [24] 3577 	push	acc
   3E56 E5 82         [12] 3578 	mov	a,dpl
   3E58 F2            [24] 3579 	movx	@r0,a
   3E59 08            [12] 3580 	inc	r0
   3E5A E5 83         [12] 3581 	mov	a,dph
   3E5C F2            [24] 3582 	movx	@r0,a
   3E5D 08            [12] 3583 	inc	r0
   3E5E E5 F0         [12] 3584 	mov	a,b
   3E60 F2            [24] 3585 	movx	@r0,a
   3E61 D0 E0         [24] 3586 	pop	acc
   3E63 08            [12] 3587 	inc	r0
   3E64 F2            [24] 3588 	movx	@r0,a
                           3589 ;	radio/radio.c:1098: frequency <<= 2;
   3E65 78 A6         [12] 3590 	mov	r0,#_set_frequency_registers_frequency_1_258
   3E67 E2            [24] 3591 	movx	a,@r0
   3E68 25 E0         [12] 3592 	add	a,acc
   3E6A F2            [24] 3593 	movx	@r0,a
   3E6B 08            [12] 3594 	inc	r0
   3E6C E2            [24] 3595 	movx	a,@r0
   3E6D 33            [12] 3596 	rlc	a
   3E6E F2            [24] 3597 	movx	@r0,a
   3E6F 08            [12] 3598 	inc	r0
   3E70 E2            [24] 3599 	movx	a,@r0
   3E71 33            [12] 3600 	rlc	a
   3E72 F2            [24] 3601 	movx	@r0,a
   3E73 08            [12] 3602 	inc	r0
   3E74 E2            [24] 3603 	movx	a,@r0
   3E75 33            [12] 3604 	rlc	a
   3E76 F2            [24] 3605 	movx	@r0,a
   3E77 18            [12] 3606 	dec	r0
   3E78 18            [12] 3607 	dec	r0
   3E79 18            [12] 3608 	dec	r0
   3E7A E2            [24] 3609 	movx	a,@r0
   3E7B 25 E0         [12] 3610 	add	a,acc
   3E7D F2            [24] 3611 	movx	@r0,a
   3E7E 08            [12] 3612 	inc	r0
   3E7F E2            [24] 3613 	movx	a,@r0
   3E80 33            [12] 3614 	rlc	a
   3E81 F2            [24] 3615 	movx	@r0,a
   3E82 08            [12] 3616 	inc	r0
   3E83 E2            [24] 3617 	movx	a,@r0
   3E84 33            [12] 3618 	rlc	a
   3E85 F2            [24] 3619 	movx	@r0,a
   3E86 08            [12] 3620 	inc	r0
   3E87 E2            [24] 3621 	movx	a,@r0
   3E88 33            [12] 3622 	rlc	a
   3E89 F2            [24] 3623 	movx	@r0,a
   3E8A                    3624 00103$:
                           3625 ;	radio/radio.c:1101: band |= EZRADIOPRO_SBSEL;
   3E8A 90 04 73      [24] 3626 	mov	dptr,#_set_frequency_registers_band_1_259
   3E8D E0            [24] 3627 	movx	a,@dptr
   3E8E 44 40         [12] 3628 	orl	a,#0x40
   3E90 F0            [24] 3629 	movx	@dptr,a
                           3630 ;	radio/radio.c:1102: carrier = (uint16_t)frequency;
   3E91 78 A6         [12] 3631 	mov	r0,#_set_frequency_registers_frequency_1_258
   3E93 E2            [24] 3632 	movx	a,@r0
   3E94 FC            [12] 3633 	mov	r4,a
   3E95 08            [12] 3634 	inc	r0
   3E96 E2            [24] 3635 	movx	a,@r0
   3E97 FD            [12] 3636 	mov	r5,a
                           3637 ;	radio/radio.c:1104: register_write(EZRADIOPRO_FREQUENCY_BAND_SELECT, band);
   3E98 C0 05         [24] 3638 	push	ar5
   3E9A C0 04         [24] 3639 	push	ar4
   3E9C 90 04 73      [24] 3640 	mov	dptr,#_set_frequency_registers_band_1_259
   3E9F E0            [24] 3641 	movx	a,@dptr
   3EA0 C0 E0         [24] 3642 	push	acc
   3EA2 75 82 75      [24] 3643 	mov	dpl,#0x75
   3EA5 12 3B 6D      [24] 3644 	lcall	_register_write
   3EA8 15 81         [12] 3645 	dec	sp
   3EAA D0 04         [24] 3646 	pop	ar4
   3EAC D0 05         [24] 3647 	pop	ar5
                           3648 ;	radio/radio.c:1105: register_write(EZRADIOPRO_NOMINAL_CARRIER_FREQUENCY_1, carrier >> 8);
   3EAE 8D 07         [24] 3649 	mov	ar7,r5
   3EB0 C0 05         [24] 3650 	push	ar5
   3EB2 C0 04         [24] 3651 	push	ar4
   3EB4 C0 07         [24] 3652 	push	ar7
   3EB6 75 82 76      [24] 3653 	mov	dpl,#0x76
   3EB9 12 3B 6D      [24] 3654 	lcall	_register_write
   3EBC 15 81         [12] 3655 	dec	sp
   3EBE D0 04         [24] 3656 	pop	ar4
   3EC0 D0 05         [24] 3657 	pop	ar5
                           3658 ;	radio/radio.c:1106: register_write(EZRADIOPRO_NOMINAL_CARRIER_FREQUENCY_0, carrier & 0xFF);
   3EC2 C0 04         [24] 3659 	push	ar4
   3EC4 75 82 77      [24] 3660 	mov	dpl,#0x77
   3EC7 12 3B 6D      [24] 3661 	lcall	_register_write
   3ECA 15 81         [12] 3662 	dec	sp
   3ECC 22            [24] 3663 	ret
                           3664 ;------------------------------------------------------------
                           3665 ;Allocation info for local variables in function 'radio_temperature'
                           3666 ;------------------------------------------------------------
                           3667 ;temp_local                Allocated to registers r6 r7 
                           3668 ;------------------------------------------------------------
                           3669 ;	radio/radio.c:1115: radio_temperature(void)
                           3670 ;	-----------------------------------------
                           3671 ;	 function radio_temperature
                           3672 ;	-----------------------------------------
   3ECD                    3673 _radio_temperature:
                           3674 ;	radio/radio.c:1119: AD0BUSY = 1;		// Start ADC conversion
   3ECD D2 EC         [12] 3675 	setb	_AD0BUSY
                           3676 ;	radio/radio.c:1120: while (AD0BUSY) ;  	// Wait for completion of conversion
   3ECF                    3677 00101$:
   3ECF 20 EC FD      [24] 3678 	jb	_AD0BUSY,00101$
                           3679 ;	radio/radio.c:1122: temp_local = (ADC0H << 8) | ADC0L;
   3ED2 AF BE         [24] 3680 	mov	r7,_ADC0H
   3ED4 7E 00         [12] 3681 	mov	r6,#0x00
   3ED6 AC BD         [24] 3682 	mov	r4,_ADC0L
   3ED8 7D 00         [12] 3683 	mov	r5,#0x00
   3EDA EC            [12] 3684 	mov	a,r4
   3EDB 42 06         [12] 3685 	orl	ar6,a
   3EDD ED            [12] 3686 	mov	a,r5
   3EDE 42 07         [12] 3687 	orl	ar7,a
                           3688 ;	radio/radio.c:1123: temp_local *= 1.64060;  // convert reading into mV ( (val/1024) * 1680 )  vref=1680mV
   3EE0 8E 82         [24] 3689 	mov	dpl,r6
   3EE2 8F 83         [24] 3690 	mov	dph,r7
   3EE4 12 65 0A      [24] 3691 	lcall	___sint2fs
   3EE7 AA 82         [24] 3692 	mov	r2,dpl
   3EE9 AB 83         [24] 3693 	mov	r3,dph
   3EEB AC F0         [24] 3694 	mov	r4,b
   3EED FD            [12] 3695 	mov	r5,a
   3EEE C0 02         [24] 3696 	push	ar2
   3EF0 C0 03         [24] 3697 	push	ar3
   3EF2 C0 04         [24] 3698 	push	ar4
   3EF4 C0 05         [24] 3699 	push	ar5
   3EF6 90 FF 2E      [24] 3700 	mov	dptr,#0xFF2E
   3EF9 75 F0 D1      [24] 3701 	mov	b,#0xD1
   3EFC 74 3F         [12] 3702 	mov	a,#0x3F
   3EFE 12 5D 44      [24] 3703 	lcall	___fsmul
   3F01 AA 82         [24] 3704 	mov	r2,dpl
   3F03 AB 83         [24] 3705 	mov	r3,dph
   3F05 AC F0         [24] 3706 	mov	r4,b
   3F07 FD            [12] 3707 	mov	r5,a
   3F08 E5 81         [12] 3708 	mov	a,sp
   3F0A 24 FC         [12] 3709 	add	a,#0xfc
   3F0C F5 81         [12] 3710 	mov	sp,a
   3F0E 8A 82         [24] 3711 	mov	dpl,r2
   3F10 8B 83         [24] 3712 	mov	dph,r3
   3F12 8C F0         [24] 3713 	mov	b,r4
   3F14 ED            [12] 3714 	mov	a,r5
   3F15 12 65 17      [24] 3715 	lcall	___fs2sint
   3F18 AE 82         [24] 3716 	mov	r6,dpl
   3F1A AF 83         [24] 3717 	mov	r7,dph
                           3718 ;	radio/radio.c:1124: temp_local = 25.0 + (temp_local - 1025) / 3.4; // convert mV reading into degC.
   3F1C EE            [12] 3719 	mov	a,r6
   3F1D 24 FF         [12] 3720 	add	a,#0xFF
   3F1F FC            [12] 3721 	mov	r4,a
   3F20 EF            [12] 3722 	mov	a,r7
   3F21 34 FB         [12] 3723 	addc	a,#0xFB
   3F23 FD            [12] 3724 	mov	r5,a
   3F24 8C 82         [24] 3725 	mov	dpl,r4
   3F26 8D 83         [24] 3726 	mov	dph,r5
   3F28 12 65 0A      [24] 3727 	lcall	___sint2fs
   3F2B AA 82         [24] 3728 	mov	r2,dpl
   3F2D AB 83         [24] 3729 	mov	r3,dph
   3F2F AC F0         [24] 3730 	mov	r4,b
   3F31 FD            [12] 3731 	mov	r5,a
   3F32 74 9A         [12] 3732 	mov	a,#0x9A
   3F34 C0 E0         [24] 3733 	push	acc
   3F36 74 99         [12] 3734 	mov	a,#0x99
   3F38 C0 E0         [24] 3735 	push	acc
   3F3A 74 59         [12] 3736 	mov	a,#0x59
   3F3C C0 E0         [24] 3737 	push	acc
   3F3E 74 40         [12] 3738 	mov	a,#0x40
   3F40 C0 E0         [24] 3739 	push	acc
   3F42 8A 82         [24] 3740 	mov	dpl,r2
   3F44 8B 83         [24] 3741 	mov	dph,r3
   3F46 8C F0         [24] 3742 	mov	b,r4
   3F48 ED            [12] 3743 	mov	a,r5
   3F49 12 66 6F      [24] 3744 	lcall	___fsdiv
   3F4C AA 82         [24] 3745 	mov	r2,dpl
   3F4E AB 83         [24] 3746 	mov	r3,dph
   3F50 AC F0         [24] 3747 	mov	r4,b
   3F52 FD            [12] 3748 	mov	r5,a
   3F53 E5 81         [12] 3749 	mov	a,sp
   3F55 24 FC         [12] 3750 	add	a,#0xfc
   3F57 F5 81         [12] 3751 	mov	sp,a
   3F59 E4            [12] 3752 	clr	a
   3F5A C0 E0         [24] 3753 	push	acc
   3F5C C0 E0         [24] 3754 	push	acc
   3F5E 74 C8         [12] 3755 	mov	a,#0xC8
   3F60 C0 E0         [24] 3756 	push	acc
   3F62 74 41         [12] 3757 	mov	a,#0x41
   3F64 C0 E0         [24] 3758 	push	acc
   3F66 8A 82         [24] 3759 	mov	dpl,r2
   3F68 8B 83         [24] 3760 	mov	dph,r3
   3F6A 8C F0         [24] 3761 	mov	b,r4
   3F6C ED            [12] 3762 	mov	a,r5
   3F6D 12 64 4F      [24] 3763 	lcall	___fsadd
   3F70 AA 82         [24] 3764 	mov	r2,dpl
   3F72 AB 83         [24] 3765 	mov	r3,dph
   3F74 AC F0         [24] 3766 	mov	r4,b
   3F76 FD            [12] 3767 	mov	r5,a
   3F77 E5 81         [12] 3768 	mov	a,sp
   3F79 24 FC         [12] 3769 	add	a,#0xfc
   3F7B F5 81         [12] 3770 	mov	sp,a
   3F7D 8A 82         [24] 3771 	mov	dpl,r2
   3F7F 8B 83         [24] 3772 	mov	dph,r3
   3F81 8C F0         [24] 3773 	mov	b,r4
   3F83 ED            [12] 3774 	mov	a,r5
                           3775 ;	radio/radio.c:1126: return temp_local;
   3F84 02 65 17      [24] 3776 	ljmp	___fs2sint
                           3777 ;------------------------------------------------------------
                           3778 ;Allocation info for local variables in function 'radio_set_diversity'
                           3779 ;------------------------------------------------------------
                           3780 ;	radio/radio.c:1132: radio_set_diversity(bool enable)
                           3781 ;	-----------------------------------------
                           3782 ;	 function radio_set_diversity
                           3783 ;	-----------------------------------------
   3F87                    3784 _radio_set_diversity:
                           3785 ;	radio/radio.c:1134: if (enable)
   3F87 30 1F 25      [24] 3786 	jnb	_radio_set_diversity_PARM_1,00102$
                           3787 ;	radio/radio.c:1136: register_write(EZRADIOPRO_GPIO2_CONFIGURATION, 0x18);
   3F8A 74 18         [12] 3788 	mov	a,#0x18
   3F8C C0 E0         [24] 3789 	push	acc
   3F8E 75 82 0D      [24] 3790 	mov	dpl,#0x0D
   3F91 12 3B 6D      [24] 3791 	lcall	_register_write
   3F94 15 81         [12] 3792 	dec	sp
                           3793 ;	radio/radio.c:1138: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, (register_read(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2) & ~EZRADIOPRO_ANTDIV_MASK) | 0x80);
   3F96 75 82 08      [24] 3794 	mov	dpl,#0x08
   3F99 12 3B 9D      [24] 3795 	lcall	_register_read
   3F9C AF 82         [24] 3796 	mov	r7,dpl
   3F9E 74 1F         [12] 3797 	mov	a,#0x1F
   3FA0 5F            [12] 3798 	anl	a,r7
   3FA1 44 80         [12] 3799 	orl	a,#0x80
   3FA3 FF            [12] 3800 	mov	r7,a
   3FA4 C0 07         [24] 3801 	push	ar7
   3FA6 75 82 08      [24] 3802 	mov	dpl,#0x08
   3FA9 12 3B 6D      [24] 3803 	lcall	_register_write
   3FAC 15 81         [12] 3804 	dec	sp
   3FAE 22            [24] 3805 	ret
   3FAF                    3806 00102$:
                           3807 ;	radio/radio.c:1143: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, (register_read(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2) & ~EZRADIOPRO_ANTDIV_MASK));
   3FAF 75 82 08      [24] 3808 	mov	dpl,#0x08
   3FB2 12 3B 9D      [24] 3809 	lcall	_register_read
   3FB5 AF 82         [24] 3810 	mov	r7,dpl
   3FB7 53 07 1F      [24] 3811 	anl	ar7,#0x1F
   3FBA C0 07         [24] 3812 	push	ar7
   3FBC 75 82 08      [24] 3813 	mov	dpl,#0x08
   3FBF 12 3B 6D      [24] 3814 	lcall	_register_write
   3FC2 15 81         [12] 3815 	dec	sp
                           3816 ;	radio/radio.c:1145: register_write(EZRADIOPRO_GPIO2_CONFIGURATION, 0x0A);	// GPIO2 (ANT1) output set high fixed
   3FC4 74 0A         [12] 3817 	mov	a,#0x0A
   3FC6 C0 E0         [24] 3818 	push	acc
   3FC8 75 82 0D      [24] 3819 	mov	dpl,#0x0D
   3FCB 12 3B 6D      [24] 3820 	lcall	_register_write
   3FCE 15 81         [12] 3821 	dec	sp
                           3822 ;	radio/radio.c:1146: register_write(EZRADIOPRO_IO_PORT_CONFIGURATION, 0x04);	// GPIO2 output set high (fixed on ant 1)
   3FD0 74 04         [12] 3823 	mov	a,#0x04
   3FD2 C0 E0         [24] 3824 	push	acc
   3FD4 75 82 0E      [24] 3825 	mov	dpl,#0x0E
   3FD7 12 3B 6D      [24] 3826 	lcall	_register_write
   3FDA 15 81         [12] 3827 	dec	sp
   3FDC 22            [24] 3828 	ret
                           3829 ;------------------------------------------------------------
                           3830 ;Allocation info for local variables in function 'Receiver_ISR'
                           3831 ;------------------------------------------------------------
                           3832 ;status                    Allocated to registers r6 
                           3833 ;status2                   Allocated to registers r7 
                           3834 ;len                       Allocated to registers r7 
                           3835 ;------------------------------------------------------------
                           3836 ;	radio/radio.c:1158: INTERRUPT(Receiver_ISR, INTERRUPT_INT0)
                           3837 ;	-----------------------------------------
                           3838 ;	 function Receiver_ISR
                           3839 ;	-----------------------------------------
   3FDD                    3840 _Receiver_ISR:
   3FDD C0 27         [24] 3841 	push	bits
   3FDF C0 E0         [24] 3842 	push	acc
   3FE1 C0 F0         [24] 3843 	push	b
   3FE3 C0 82         [24] 3844 	push	dpl
   3FE5 C0 83         [24] 3845 	push	dph
   3FE7 C0 07         [24] 3846 	push	(0+7)
   3FE9 C0 06         [24] 3847 	push	(0+6)
   3FEB C0 05         [24] 3848 	push	(0+5)
   3FED C0 04         [24] 3849 	push	(0+4)
   3FEF C0 03         [24] 3850 	push	(0+3)
   3FF1 C0 02         [24] 3851 	push	(0+2)
   3FF3 C0 01         [24] 3852 	push	(0+1)
   3FF5 C0 00         [24] 3853 	push	(0+0)
   3FF7 C0 D0         [24] 3854 	push	psw
   3FF9 75 D0 00      [24] 3855 	mov	psw,#0x00
                           3856 ;	radio/radio.c:1162: status2 = register_read(EZRADIOPRO_INTERRUPT_STATUS_2);
   3FFC 75 82 04      [24] 3857 	mov	dpl,#0x04
   3FFF 12 3B 9D      [24] 3858 	lcall	_register_read
   4002 AF 82         [24] 3859 	mov	r7,dpl
                           3860 ;	radio/radio.c:1163: status  = register_read(EZRADIOPRO_INTERRUPT_STATUS_1);
   4004 75 82 03      [24] 3861 	mov	dpl,#0x03
   4007 C0 07         [24] 3862 	push	ar7
   4009 12 3B 9D      [24] 3863 	lcall	_register_read
   400C AE 82         [24] 3864 	mov	r6,dpl
   400E D0 07         [24] 3865 	pop	ar7
                           3866 ;	radio/radio.c:1165: if (status & EZRADIOPRO_IRXFFAFULL) {
   4010 EE            [12] 3867 	mov	a,r6
   4011 30 E4 49      [24] 3868 	jnb	acc.4,00104$
                           3869 ;	radio/radio.c:1166: if (RX_FIFO_THRESHOLD_HIGH + (uint16_t)partial_packet_length > MAX_PACKET_LENGTH) {
   4014 78 7E         [12] 3870 	mov	r0,#_partial_packet_length
   4016 E2            [24] 3871 	movx	a,@r0
   4017 FC            [12] 3872 	mov	r4,a
   4018 7D 00         [12] 3873 	mov	r5,#0x00
   401A 74 32         [12] 3874 	mov	a,#0x32
   401C 2C            [12] 3875 	add	a,r4
   401D FC            [12] 3876 	mov	r4,a
   401E E4            [12] 3877 	clr	a
   401F 3D            [12] 3878 	addc	a,r5
   4020 FD            [12] 3879 	mov	r5,a
   4021 C3            [12] 3880 	clr	c
   4022 74 FC         [12] 3881 	mov	a,#0xFC
   4024 9C            [12] 3882 	subb	a,r4
   4025 E4            [12] 3883 	clr	a
   4026 9D            [12] 3884 	subb	a,r5
   4027 50 03         [24] 3885 	jnc	00150$
   4029 02 40 E8      [24] 3886 	ljmp	00117$
   402C                    3887 00150$:
                           3888 ;	radio/radio.c:1170: read_receive_fifo(RX_FIFO_THRESHOLD_HIGH, &radio_buffer[partial_packet_length]);
   402C 78 7E         [12] 3889 	mov	r0,#_partial_packet_length
   402E E2            [24] 3890 	movx	a,@r0
   402F 24 68         [12] 3891 	add	a,#_radio_buffer
   4031 FC            [12] 3892 	mov	r4,a
   4032 E4            [12] 3893 	clr	a
   4033 34 03         [12] 3894 	addc	a,#(_radio_buffer >> 8)
   4035 FD            [12] 3895 	mov	r5,a
   4036 C0 07         [24] 3896 	push	ar7
   4038 C0 06         [24] 3897 	push	ar6
   403A C0 04         [24] 3898 	push	ar4
   403C C0 05         [24] 3899 	push	ar5
   403E 75 82 32      [24] 3900 	mov	dpl,#0x32
   4041 12 3B CB      [24] 3901 	lcall	_read_receive_fifo
   4044 15 81         [12] 3902 	dec	sp
   4046 15 81         [12] 3903 	dec	sp
                           3904 ;	radio/radio.c:1171: partial_packet_length += RX_FIFO_THRESHOLD_HIGH;
   4048 78 7E         [12] 3905 	mov	r0,#_partial_packet_length
   404A E2            [24] 3906 	movx	a,@r0
   404B 24 32         [12] 3907 	add	a,#0x32
   404D F2            [24] 3908 	movx	@r0,a
                           3909 ;	radio/radio.c:1172: last_rssi = register_read(EZRADIOPRO_RECEIVED_SIGNAL_STRENGTH_INDICATOR);
   404E 75 82 26      [24] 3910 	mov	dpl,#0x26
   4051 12 3B 9D      [24] 3911 	lcall	_register_read
   4054 E5 82         [12] 3912 	mov	a,dpl
   4056 D0 06         [24] 3913 	pop	ar6
   4058 D0 07         [24] 3914 	pop	ar7
   405A 78 7F         [12] 3915 	mov	r0,#_last_rssi
   405C F2            [24] 3916 	movx	@r0,a
   405D                    3917 00104$:
                           3918 ;	radio/radio.c:1175: if (status2 & EZRADIOPRO_IPREAVAL) {
   405D EF            [12] 3919 	mov	a,r7
   405E 30 E6 11      [24] 3920 	jnb	acc.6,00106$
                           3921 ;	radio/radio.c:1177: preamble_detected = true;
   4061 D2 18         [12] 3922 	setb	_preamble_detected
                           3923 ;	radio/radio.c:1180: last_rssi = register_read(EZRADIOPRO_RECEIVED_SIGNAL_STRENGTH_INDICATOR);
   4063 75 82 26      [24] 3924 	mov	dpl,#0x26
   4066 C0 06         [24] 3925 	push	ar6
   4068 12 3B 9D      [24] 3926 	lcall	_register_read
   406B E5 82         [12] 3927 	mov	a,dpl
   406D D0 06         [24] 3928 	pop	ar6
   406F 78 7F         [12] 3929 	mov	r0,#_last_rssi
   4071 F2            [24] 3930 	movx	@r0,a
   4072                    3931 00106$:
                           3932 ;	radio/radio.c:1183: if (feature_golay == false && (status & EZRADIOPRO_ICRCERROR)) {
   4072 20 05 04      [24] 3933 	jb	_feature_golay,00108$
   4075 EE            [12] 3934 	mov	a,r6
   4076 20 E0 6F      [24] 3935 	jb	acc.0,00117$
                           3936 ;	radio/radio.c:1184: goto rxfail;
   4079                    3937 00108$:
                           3938 ;	radio/radio.c:1187: if (status & EZRADIOPRO_IPKVALID) {
   4079 EE            [12] 3939 	mov	a,r6
   407A 30 E1 69      [24] 3940 	jnb	acc.1,00116$
                           3941 ;	radio/radio.c:1188: __data uint8_t len = register_read(EZRADIOPRO_RECEIVED_PACKET_LENGTH);
   407D 75 82 4B      [24] 3942 	mov	dpl,#0x4B
   4080 12 3B 9D      [24] 3943 	lcall	_register_read
                           3944 ;	radio/radio.c:1189: if (len > MAX_PACKET_LENGTH || partial_packet_length > len) {
   4083 E5 82         [12] 3945 	mov	a,dpl
   4085 FF            [12] 3946 	mov	r7,a
   4086 24 03         [12] 3947 	add	a,#0xff - 0xFC
   4088 40 5E         [24] 3948 	jc	00117$
   408A 78 7E         [12] 3949 	mov	r0,#_partial_packet_length
   408C C3            [12] 3950 	clr	c
   408D E2            [24] 3951 	movx	a,@r0
   408E F5 F0         [12] 3952 	mov	b,a
   4090 EF            [12] 3953 	mov	a,r7
   4091 95 F0         [12] 3954 	subb	a,b
   4093 40 53         [24] 3955 	jc	00117$
                           3956 ;	radio/radio.c:1193: if (partial_packet_length < len) {
   4095 78 7E         [12] 3957 	mov	r0,#_partial_packet_length
   4097 C3            [12] 3958 	clr	c
   4098 E2            [24] 3959 	movx	a,@r0
   4099 9F            [12] 3960 	subb	a,r7
   409A 50 22         [24] 3961 	jnc	00114$
                           3962 ;	radio/radio.c:1194: read_receive_fifo(len-partial_packet_length, &radio_buffer[partial_packet_length]);
   409C 78 7E         [12] 3963 	mov	r0,#_partial_packet_length
   409E E2            [24] 3964 	movx	a,@r0
   409F 24 68         [12] 3965 	add	a,#_radio_buffer
   40A1 FD            [12] 3966 	mov	r5,a
   40A2 E4            [12] 3967 	clr	a
   40A3 34 03         [12] 3968 	addc	a,#(_radio_buffer >> 8)
   40A5 FE            [12] 3969 	mov	r6,a
   40A6 78 7E         [12] 3970 	mov	r0,#_partial_packet_length
   40A8 D3            [12] 3971 	setb	c
   40A9 E2            [24] 3972 	movx	a,@r0
   40AA 9F            [12] 3973 	subb	a,r7
   40AB F4            [12] 3974 	cpl	a
   40AC FC            [12] 3975 	mov	r4,a
   40AD C0 07         [24] 3976 	push	ar7
   40AF C0 05         [24] 3977 	push	ar5
   40B1 C0 06         [24] 3978 	push	ar6
   40B3 8C 82         [24] 3979 	mov	dpl,r4
   40B5 12 3B CB      [24] 3980 	lcall	_read_receive_fifo
   40B8 15 81         [12] 3981 	dec	sp
   40BA 15 81         [12] 3982 	dec	sp
   40BC D0 07         [24] 3983 	pop	ar7
   40BE                    3984 00114$:
                           3985 ;	radio/radio.c:1196: receive_packet_length = len;
   40BE 78 7D         [12] 3986 	mov	r0,#_receive_packet_length
   40C0 EF            [12] 3987 	mov	a,r7
   40C1 F2            [24] 3988 	movx	@r0,a
                           3989 ;	radio/radio.c:1199: packet_received = true;
   40C2 D2 17         [12] 3990 	setb	_packet_received
                           3991 ;	radio/radio.c:1202: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0);
   40C4 E4            [12] 3992 	clr	a
   40C5 C0 E0         [24] 3993 	push	acc
   40C7 75 82 05      [24] 3994 	mov	dpl,#0x05
   40CA 12 3B 6D      [24] 3995 	lcall	_register_write
   40CD 15 81         [12] 3996 	dec	sp
                           3997 ;	radio/radio.c:1203: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, 0);
   40CF E4            [12] 3998 	clr	a
   40D0 C0 E0         [24] 3999 	push	acc
   40D2 75 82 06      [24] 4000 	mov	dpl,#0x06
   40D5 12 3B 6D      [24] 4001 	lcall	_register_write
   40D8 15 81         [12] 4002 	dec	sp
                           4003 ;	radio/radio.c:1206: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_1, EZRADIOPRO_PLLON);
   40DA 74 02         [12] 4004 	mov	a,#0x02
   40DC C0 E0         [24] 4005 	push	acc
   40DE 75 82 07      [24] 4006 	mov	dpl,#0x07
   40E1 12 3B 6D      [24] 4007 	lcall	_register_write
   40E4 15 81         [12] 4008 	dec	sp
   40E6                    4009 00116$:
                           4010 ;	radio/radio.c:1208: return;
                           4011 ;	radio/radio.c:1210: rxfail:
   40E6 80 1E         [24] 4012 	sjmp	00120$
   40E8                    4013 00117$:
                           4014 ;	radio/radio.c:1211: if (errors.rx_errors != 0xFFFF) {
   40E8 78 38         [12] 4015 	mov	r0,#_errors
   40EA E2            [24] 4016 	movx	a,@r0
   40EB FE            [12] 4017 	mov	r6,a
   40EC 08            [12] 4018 	inc	r0
   40ED E2            [24] 4019 	movx	a,@r0
   40EE FF            [12] 4020 	mov	r7,a
   40EF BE FF 05      [24] 4021 	cjne	r6,#0xFF,00158$
   40F2 BF FF 02      [24] 4022 	cjne	r7,#0xFF,00158$
   40F5 80 0C         [24] 4023 	sjmp	00119$
   40F7                    4024 00158$:
                           4025 ;	radio/radio.c:1212: errors.rx_errors++;
   40F7 0E            [12] 4026 	inc	r6
   40F8 BE 00 01      [24] 4027 	cjne	r6,#0x00,00159$
   40FB 0F            [12] 4028 	inc	r7
   40FC                    4029 00159$:
   40FC 78 38         [12] 4030 	mov	r0,#_errors
   40FE EE            [12] 4031 	mov	a,r6
   40FF F2            [24] 4032 	movx	@r0,a
   4100 08            [12] 4033 	inc	r0
   4101 EF            [12] 4034 	mov	a,r7
   4102 F2            [24] 4035 	movx	@r0,a
   4103                    4036 00119$:
                           4037 ;	radio/radio.c:1214: radio_receiver_on();
   4103 12 36 99      [24] 4038 	lcall	_radio_receiver_on
   4106                    4039 00120$:
   4106 D0 D0         [24] 4040 	pop	psw
   4108 D0 00         [24] 4041 	pop	(0+0)
   410A D0 01         [24] 4042 	pop	(0+1)
   410C D0 02         [24] 4043 	pop	(0+2)
   410E D0 03         [24] 4044 	pop	(0+3)
   4110 D0 04         [24] 4045 	pop	(0+4)
   4112 D0 05         [24] 4046 	pop	(0+5)
   4114 D0 06         [24] 4047 	pop	(0+6)
   4116 D0 07         [24] 4048 	pop	(0+7)
   4118 D0 83         [24] 4049 	pop	dph
   411A D0 82         [24] 4050 	pop	dpl
   411C D0 F0         [24] 4051 	pop	b
   411E D0 E0         [24] 4052 	pop	acc
   4120 D0 27         [24] 4053 	pop	bits
   4122 32            [24] 4054 	reti
                           4055 	.area CSEG    (CODE)
                           4056 	.area CONST   (CODE)
   CC37                    4057 __str_0:
   CC37 6F 76 65 72 73 69  4058 	.ascii "oversized packet"
        7A 65 64 20 70 61
        63 6B 65 74
   CC47 00                 4059 	.db 0x00
   CC48                    4060 __str_1:
   CC48 6F 76 65 72 73 69  4061 	.ascii "oversized golay packet"
        7A 65 64 20 67 6F
        6C 61 79 20 70 61
        63 6B 65 74
   CC5E 00                 4062 	.db 0x00
   CC5F                    4063 _reg_index:
   CC5F 1C                 4064 	.db #0x1C	; 28
   CC60 1F                 4065 	.db #0x1F	; 31
   CC61 20                 4066 	.db #0x20	; 32
   CC62 21                 4067 	.db #0x21	; 33
   CC63 22                 4068 	.db #0x22	; 34
   CC64 23                 4069 	.db #0x23	; 35
   CC65 24                 4070 	.db #0x24	; 36
   CC66 25                 4071 	.db #0x25	; 37
   CC67 2A                 4072 	.db #0x2A	; 42
   CC68 6E                 4073 	.db #0x6E	; 110	'n'
   CC69 6F                 4074 	.db #0x6F	; 111	'o'
   CC6A 72                 4075 	.db #0x72	; 114	'r'
   CC6B                    4076 _air_data_rates:
   CC6B 02                 4077 	.db #0x02	; 2
   CC6C 04                 4078 	.db #0x04	; 4
   CC6D 08                 4079 	.db #0x08	; 8
   CC6E 10                 4080 	.db #0x10	; 16
   CC6F 13                 4081 	.db #0x13	; 19
   CC70 18                 4082 	.db #0x18	; 24
   CC71 20                 4083 	.db #0x20	; 32
   CC72 30                 4084 	.db #0x30	; 48	'0'
   CC73 40                 4085 	.db #0x40	; 64
   CC74 60                 4086 	.db #0x60	; 96
   CC75 80                 4087 	.db #0x80	; 128
   CC76 C0                 4088 	.db #0xC0	; 192
   CC77 FA                 4089 	.db #0xFA	; 250
   CC78                    4090 _reg_table_433:
   CC78 27                 4091 	.db #0x27	; 39
   CC79 27                 4092 	.db #0x27	; 39
   CC7A 27                 4093 	.db #0x27	; 39
   CC7B 2E                 4094 	.db #0x2E	; 46
   CC7C 16                 4095 	.db #0x16	; 22
   CC7D 01                 4096 	.db #0x01	; 1
   CC7E 05                 4097 	.db #0x05	; 5
   CC7F 0B                 4098 	.db #0x0B	; 11
   CC80 9A                 4099 	.db #0x9A	; 154
   CC81 88                 4100 	.db #0x88	; 136
   CC82 8A                 4101 	.db #0x8A	; 138
   CC83 8C                 4102 	.db #0x8C	; 140
   CC84 8D                 4103 	.db #0x8D	; 141
   CC85 03                 4104 	.db #0x03	; 3
   CC86 03                 4105 	.db #0x03	; 3
   CC87 03                 4106 	.db #0x03	; 3
   CC88 03                 4107 	.db #0x03	; 3
   CC89 03                 4108 	.db #0x03	; 3
   CC8A 03                 4109 	.db #0x03	; 3
   CC8B 03                 4110 	.db #0x03	; 3
   CC8C 03                 4111 	.db #0x03	; 3
   CC8D 03                 4112 	.db #0x03	; 3
   CC8E 03                 4113 	.db #0x03	; 3
   CC8F 03                 4114 	.db #0x03	; 3
   CC90 03                 4115 	.db #0x03	; 3
   CC91 03                 4116 	.db #0x03	; 3
   CC92 F4                 4117 	.db #0xF4	; 244
   CC93 FA                 4118 	.db #0xFA	; 250
   CC94 7D                 4119 	.db #0x7D	; 125
   CC95 3F                 4120 	.db #0x3F	; 63
   CC96 69                 4121 	.db #0x69	; 105	'i'
   CC97 A7                 4122 	.db #0xA7	; 167
   CC98 7D                 4123 	.db #0x7D	; 125
   CC99 53                 4124 	.db #0x53	; 83	'S'
   CC9A 5E                 4125 	.db #0x5E	; 94
   CC9B 7D                 4126 	.db #0x7D	; 125
   CC9C 5E                 4127 	.db #0x5E	; 94
   CC9D 3F                 4128 	.db #0x3F	; 63
   CC9E 30                 4129 	.db #0x30	; 48	'0'
   CC9F 20                 4130 	.db #0x20	; 32
   CCA0 00                 4131 	.db #0x00	; 0
   CCA1 01                 4132 	.db #0x01	; 1
   CCA2 02                 4133 	.db #0x02	; 2
   CCA3 01                 4134 	.db #0x01	; 1
   CCA4 00                 4135 	.db #0x00	; 0
   CCA5 01                 4136 	.db #0x01	; 1
   CCA6 01                 4137 	.db #0x01	; 1
   CCA7 01                 4138 	.db #0x01	; 1
   CCA8 01                 4139 	.db #0x01	; 1
   CCA9 01                 4140 	.db #0x01	; 1
   CCAA 02                 4141 	.db #0x02	; 2
   CCAB 02                 4142 	.db #0x02	; 2
   CCAC 41                 4143 	.db #0x41	; 65	'A'
   CCAD 83                 4144 	.db #0x83	; 131
   CCAE 06                 4145 	.db #0x06	; 6
   CCAF 0C                 4146 	.db #0x0C	; 12
   CCB0 37                 4147 	.db #0x37	; 55	'7'
   CCB1 C4                 4148 	.db #0xC4	; 196
   CCB2 06                 4149 	.db #0x06	; 6
   CCB3 89                 4150 	.db #0x89	; 137
   CCB4 5D                 4151 	.db #0x5D	; 93
   CCB5 06                 4152 	.db #0x06	; 6
   CCB6 5D                 4153 	.db #0x5D	; 93
   CCB7 0C                 4154 	.db #0x0C	; 12
   CCB8 AA                 4155 	.db #0xAA	; 170
   CCB9 89                 4156 	.db #0x89	; 137
   CCBA 12                 4157 	.db #0x12	; 18
   CCBB 25                 4158 	.db #0x25	; 37
   CCBC 4A                 4159 	.db #0x4A	; 74	'J'
   CCBD 4C                 4160 	.db #0x4C	; 76	'L'
   CCBE 9C                 4161 	.db #0x9C	; 156
   CCBF 25                 4162 	.db #0x25	; 37
   CCC0 37                 4163 	.db #0x37	; 55	'7'
   CCC1 86                 4164 	.db #0x86	; 134
   CCC2 25                 4165 	.db #0x25	; 37
   CCC3 86                 4166 	.db #0x86	; 134
   CCC4 4A                 4167 	.db #0x4A	; 74	'J'
   CCC5 AB                 4168 	.db #0xAB	; 171
   CCC6 00                 4169 	.db #0x00	; 0
   CCC7 01                 4170 	.db #0x01	; 1
   CCC8 02                 4171 	.db #0x02	; 2
   CCC9 04                 4172 	.db #0x04	; 4
   CCCA 02                 4173 	.db #0x02	; 2
   CCCB 01                 4174 	.db #0x01	; 1
   CCCC 02                 4175 	.db #0x02	; 2
   CCCD 03                 4176 	.db #0x03	; 3
   CCCE 02                 4177 	.db #0x02	; 2
   CCCF 02                 4178 	.db #0x02	; 2
   CCD0 02                 4179 	.db #0x02	; 2
   CCD1 04                 4180 	.db #0x04	; 4
   CCD2 07                 4181 	.db #0x07	; 7
   CCD3 85                 4182 	.db #0x85	; 133
   CCD4 08                 4183 	.db #0x08	; 8
   CCD5 0E                 4184 	.db #0x0E	; 14
   CCD6 12                 4185 	.db #0x12	; 18
   CCD7 72                 4186 	.db #0x72	; 114	'r'
   CCD8 8A                 4187 	.db #0x8A	; 138
   CCD9 0E                 4188 	.db #0x0E	; 14
   CCDA 18                 4189 	.db #0x18	; 24
   CCDB BB                 4190 	.db #0xBB	; 187
   CCDC 0E                 4191 	.db #0x0E	; 14
   CCDD BB                 4192 	.db #0xBB	; 187
   CCDE EA                 4193 	.db #0xEA	; 234
   CCDF FF                 4194 	.db #0xFF	; 255
   CCE0 1D                 4195 	.db #0x1D	; 29
   CCE1 1D                 4196 	.db #0x1D	; 29
   CCE2 1D                 4197 	.db #0x1D	; 29
   CCE3 1E                 4198 	.db #0x1E	; 30
   CCE4 1E                 4199 	.db #0x1E	; 30
   CCE5 1E                 4200 	.db #0x1E	; 30
   CCE6 20                 4201 	.db #0x20	; 32
   CCE7 30                 4202 	.db #0x30	; 48	'0'
   CCE8 41                 4203 	.db #0x41	; 65	'A'
   CCE9 50                 4204 	.db #0x50	; 80	'P'
   CCEA 50                 4205 	.db #0x50	; 80	'P'
   CCEB 50                 4206 	.db #0x50	; 80	'P'
   CCEC 50                 4207 	.db #0x50	; 80	'P'
   CCED 10                 4208 	.db #0x10	; 16
   CCEE 20                 4209 	.db #0x20	; 32
   CCEF 41                 4210 	.db #0x41	; 65	'A'
   CCF0 83                 4211 	.db #0x83	; 131
   CCF1 9B                 4212 	.db #0x9B	; 155
   CCF2 C4                 4213 	.db #0xC4	; 196
   CCF3 08                 4214 	.db #0x08	; 8
   CCF4 0C                 4215 	.db #0x0C	; 12
   CCF5 10                 4216 	.db #0x10	; 16
   CCF6 18                 4217 	.db #0x18	; 24
   CCF7 20                 4218 	.db #0x20	; 32
   CCF8 31                 4219 	.db #0x31	; 49	'1'
   CCF9 40                 4220 	.db #0x40	; 64
   CCFA 62                 4221 	.db #0x62	; 98	'b'
   CCFB C5                 4222 	.db #0xC5	; 197
   CCFC 89                 4223 	.db #0x89	; 137
   CCFD 12                 4224 	.db #0x12	; 18
   CCFE A6                 4225 	.db #0xA6	; 166
   CCFF 9C                 4226 	.db #0x9C	; 156
   CD00 31                 4227 	.db #0x31	; 49	'1'
   CD01 4A                 4228 	.db #0x4A	; 74	'J'
   CD02 62                 4229 	.db #0x62	; 98	'b'
   CD03 93                 4230 	.db #0x93	; 147
   CD04 C5                 4231 	.db #0xC5	; 197
   CD05 27                 4232 	.db #0x27	; 39
   CD06 00                 4233 	.db #0x00	; 0
   CD07 03                 4234 	.db #0x03	; 3
   CD08 06                 4235 	.db #0x06	; 6
   CD09 0D                 4236 	.db #0x0D	; 13
   CD0A 1A                 4237 	.db #0x1A	; 26
   CD0B 1E                 4238 	.db #0x1E	; 30
   CD0C 26                 4239 	.db #0x26	; 38
   CD0D 33                 4240 	.db #0x33	; 51	'3'
   CD0E 4D                 4241 	.db #0x4D	; 77	'M'
   CD0F 66                 4242 	.db #0x66	; 102	'f'
   CD10 9A                 4243 	.db #0x9A	; 154
   CD11 CD                 4244 	.db #0xCD	; 205
   CD12 FE                 4245 	.db #0xFE	; 254
   CD13 FE                 4246 	.db #0xFE	; 254
   CD14                    4247 _reg_table_470:
   CD14 2B                 4248 	.db #0x2B	; 43
   CD15 2B                 4249 	.db #0x2B	; 43
   CD16 2B                 4250 	.db #0x2B	; 43
   CD17 2E                 4251 	.db #0x2E	; 46
   CD18 16                 4252 	.db #0x16	; 22
   CD19 01                 4253 	.db #0x01	; 1
   CD1A 05                 4254 	.db #0x05	; 5
   CD1B 0B                 4255 	.db #0x0B	; 11
   CD1C 9A                 4256 	.db #0x9A	; 154
   CD1D 88                 4257 	.db #0x88	; 136
   CD1E 8A                 4258 	.db #0x8A	; 138
   CD1F 8C                 4259 	.db #0x8C	; 140
   CD20 8D                 4260 	.db #0x8D	; 141
   CD21 03                 4261 	.db #0x03	; 3
   CD22 03                 4262 	.db #0x03	; 3
   CD23 03                 4263 	.db #0x03	; 3
   CD24 03                 4264 	.db #0x03	; 3
   CD25 03                 4265 	.db #0x03	; 3
   CD26 03                 4266 	.db #0x03	; 3
   CD27 03                 4267 	.db #0x03	; 3
   CD28 03                 4268 	.db #0x03	; 3
   CD29 03                 4269 	.db #0x03	; 3
   CD2A 03                 4270 	.db #0x03	; 3
   CD2B 03                 4271 	.db #0x03	; 3
   CD2C 03                 4272 	.db #0x03	; 3
   CD2D 03                 4273 	.db #0x03	; 3
   CD2E F4                 4274 	.db #0xF4	; 244
   CD2F FA                 4275 	.db #0xFA	; 250
   CD30 7D                 4276 	.db #0x7D	; 125
   CD31 3F                 4277 	.db #0x3F	; 63
   CD32 69                 4278 	.db #0x69	; 105	'i'
   CD33 A7                 4279 	.db #0xA7	; 167
   CD34 7D                 4280 	.db #0x7D	; 125
   CD35 53                 4281 	.db #0x53	; 83	'S'
   CD36 5E                 4282 	.db #0x5E	; 94
   CD37 7D                 4283 	.db #0x7D	; 125
   CD38 5E                 4284 	.db #0x5E	; 94
   CD39 3F                 4285 	.db #0x3F	; 63
   CD3A 30                 4286 	.db #0x30	; 48	'0'
   CD3B 20                 4287 	.db #0x20	; 32
   CD3C 00                 4288 	.db #0x00	; 0
   CD3D 01                 4289 	.db #0x01	; 1
   CD3E 02                 4290 	.db #0x02	; 2
   CD3F 01                 4291 	.db #0x01	; 1
   CD40 00                 4292 	.db #0x00	; 0
   CD41 01                 4293 	.db #0x01	; 1
   CD42 01                 4294 	.db #0x01	; 1
   CD43 01                 4295 	.db #0x01	; 1
   CD44 01                 4296 	.db #0x01	; 1
   CD45 01                 4297 	.db #0x01	; 1
   CD46 02                 4298 	.db #0x02	; 2
   CD47 02                 4299 	.db #0x02	; 2
   CD48 41                 4300 	.db #0x41	; 65	'A'
   CD49 83                 4301 	.db #0x83	; 131
   CD4A 06                 4302 	.db #0x06	; 6
   CD4B 0C                 4303 	.db #0x0C	; 12
   CD4C 37                 4304 	.db #0x37	; 55	'7'
   CD4D C4                 4305 	.db #0xC4	; 196
   CD4E 06                 4306 	.db #0x06	; 6
   CD4F 89                 4307 	.db #0x89	; 137
   CD50 5D                 4308 	.db #0x5D	; 93
   CD51 06                 4309 	.db #0x06	; 6
   CD52 5D                 4310 	.db #0x5D	; 93
   CD53 0C                 4311 	.db #0x0C	; 12
   CD54 AA                 4312 	.db #0xAA	; 170
   CD55 89                 4313 	.db #0x89	; 137
   CD56 12                 4314 	.db #0x12	; 18
   CD57 25                 4315 	.db #0x25	; 37
   CD58 4A                 4316 	.db #0x4A	; 74	'J'
   CD59 4C                 4317 	.db #0x4C	; 76	'L'
   CD5A 9C                 4318 	.db #0x9C	; 156
   CD5B 25                 4319 	.db #0x25	; 37
   CD5C 37                 4320 	.db #0x37	; 55	'7'
   CD5D 86                 4321 	.db #0x86	; 134
   CD5E 25                 4322 	.db #0x25	; 37
   CD5F 86                 4323 	.db #0x86	; 134
   CD60 4A                 4324 	.db #0x4A	; 74	'J'
   CD61 AB                 4325 	.db #0xAB	; 171
   CD62 00                 4326 	.db #0x00	; 0
   CD63 01                 4327 	.db #0x01	; 1
   CD64 02                 4328 	.db #0x02	; 2
   CD65 04                 4329 	.db #0x04	; 4
   CD66 02                 4330 	.db #0x02	; 2
   CD67 01                 4331 	.db #0x01	; 1
   CD68 02                 4332 	.db #0x02	; 2
   CD69 03                 4333 	.db #0x03	; 3
   CD6A 02                 4334 	.db #0x02	; 2
   CD6B 02                 4335 	.db #0x02	; 2
   CD6C 02                 4336 	.db #0x02	; 2
   CD6D 04                 4337 	.db #0x04	; 4
   CD6E 07                 4338 	.db #0x07	; 7
   CD6F 85                 4339 	.db #0x85	; 133
   CD70 08                 4340 	.db #0x08	; 8
   CD71 0E                 4341 	.db #0x0E	; 14
   CD72 12                 4342 	.db #0x12	; 18
   CD73 72                 4343 	.db #0x72	; 114	'r'
   CD74 8A                 4344 	.db #0x8A	; 138
   CD75 0E                 4345 	.db #0x0E	; 14
   CD76 18                 4346 	.db #0x18	; 24
   CD77 BB                 4347 	.db #0xBB	; 187
   CD78 0E                 4348 	.db #0x0E	; 14
   CD79 BB                 4349 	.db #0xBB	; 187
   CD7A EA                 4350 	.db #0xEA	; 234
   CD7B FF                 4351 	.db #0xFF	; 255
   CD7C 1E                 4352 	.db #0x1E	; 30
   CD7D 1E                 4353 	.db #0x1E	; 30
   CD7E 1E                 4354 	.db #0x1E	; 30
   CD7F 21                 4355 	.db #0x21	; 33
   CD80 21                 4356 	.db #0x21	; 33
   CD81 21                 4357 	.db #0x21	; 33
   CD82 21                 4358 	.db #0x21	; 33
   CD83 30                 4359 	.db #0x30	; 48	'0'
   CD84 41                 4360 	.db #0x41	; 65	'A'
   CD85 50                 4361 	.db #0x50	; 80	'P'
   CD86 50                 4362 	.db #0x50	; 80	'P'
   CD87 50                 4363 	.db #0x50	; 80	'P'
   CD88 50                 4364 	.db #0x50	; 80	'P'
   CD89 10                 4365 	.db #0x10	; 16
   CD8A 20                 4366 	.db #0x20	; 32
   CD8B 41                 4367 	.db #0x41	; 65	'A'
   CD8C 83                 4368 	.db #0x83	; 131
   CD8D 9B                 4369 	.db #0x9B	; 155
   CD8E C4                 4370 	.db #0xC4	; 196
   CD8F 08                 4371 	.db #0x08	; 8
   CD90 0C                 4372 	.db #0x0C	; 12
   CD91 10                 4373 	.db #0x10	; 16
   CD92 18                 4374 	.db #0x18	; 24
   CD93 20                 4375 	.db #0x20	; 32
   CD94 31                 4376 	.db #0x31	; 49	'1'
   CD95 40                 4377 	.db #0x40	; 64
   CD96 62                 4378 	.db #0x62	; 98	'b'
   CD97 C5                 4379 	.db #0xC5	; 197
   CD98 89                 4380 	.db #0x89	; 137
   CD99 12                 4381 	.db #0x12	; 18
   CD9A A6                 4382 	.db #0xA6	; 166
   CD9B 9C                 4383 	.db #0x9C	; 156
   CD9C 31                 4384 	.db #0x31	; 49	'1'
   CD9D 4A                 4385 	.db #0x4A	; 74	'J'
   CD9E 62                 4386 	.db #0x62	; 98	'b'
   CD9F 93                 4387 	.db #0x93	; 147
   CDA0 C5                 4388 	.db #0xC5	; 197
   CDA1 27                 4389 	.db #0x27	; 39
   CDA2 00                 4390 	.db #0x00	; 0
   CDA3 03                 4391 	.db #0x03	; 3
   CDA4 06                 4392 	.db #0x06	; 6
   CDA5 0D                 4393 	.db #0x0D	; 13
   CDA6 1A                 4394 	.db #0x1A	; 26
   CDA7 1E                 4395 	.db #0x1E	; 30
   CDA8 26                 4396 	.db #0x26	; 38
   CDA9 33                 4397 	.db #0x33	; 51	'3'
   CDAA 4D                 4398 	.db #0x4D	; 77	'M'
   CDAB 66                 4399 	.db #0x66	; 102	'f'
   CDAC 9A                 4400 	.db #0x9A	; 154
   CDAD CD                 4401 	.db #0xCD	; 205
   CDAE FE                 4402 	.db #0xFE	; 254
   CDAF FE                 4403 	.db #0xFE	; 254
   CDB0                    4404 _reg_table_868:
   CDB0 01                 4405 	.db #0x01	; 1
   CDB1 01                 4406 	.db #0x01	; 1
   CDB2 01                 4407 	.db #0x01	; 1
   CDB3 01                 4408 	.db #0x01	; 1
   CDB4 01                 4409 	.db #0x01	; 1
   CDB5 01                 4410 	.db #0x01	; 1
   CDB6 05                 4411 	.db #0x05	; 5
   CDB7 0B                 4412 	.db #0x0B	; 11
   CDB8 9A                 4413 	.db #0x9A	; 154
   CDB9 88                 4414 	.db #0x88	; 136
   CDBA 8A                 4415 	.db #0x8A	; 138
   CDBB 8C                 4416 	.db #0x8C	; 140
   CDBC 8D                 4417 	.db #0x8D	; 141
   CDBD 03                 4418 	.db #0x03	; 3
   CDBE 03                 4419 	.db #0x03	; 3
   CDBF 03                 4420 	.db #0x03	; 3
   CDC0 03                 4421 	.db #0x03	; 3
   CDC1 03                 4422 	.db #0x03	; 3
   CDC2 03                 4423 	.db #0x03	; 3
   CDC3 03                 4424 	.db #0x03	; 3
   CDC4 03                 4425 	.db #0x03	; 3
   CDC5 03                 4426 	.db #0x03	; 3
   CDC6 03                 4427 	.db #0x03	; 3
   CDC7 03                 4428 	.db #0x03	; 3
   CDC8 03                 4429 	.db #0x03	; 3
   CDC9 03                 4430 	.db #0x03	; 3
   CDCA D0                 4431 	.db #0xD0	; 208
   CDCB E8                 4432 	.db #0xE8	; 232
   CDCC F4                 4433 	.db #0xF4	; 244
   CDCD FA                 4434 	.db #0xFA	; 250
   CDCE D3                 4435 	.db #0xD3	; 211
   CDCF A7                 4436 	.db #0xA7	; 167
   CDD0 7D                 4437 	.db #0x7D	; 125
   CDD1 53                 4438 	.db #0x53	; 83	'S'
   CDD2 5E                 4439 	.db #0x5E	; 94
   CDD3 7D                 4440 	.db #0x7D	; 125
   CDD4 5E                 4441 	.db #0x5E	; 94
   CDD5 3F                 4442 	.db #0x3F	; 63
   CDD6 30                 4443 	.db #0x30	; 48	'0'
   CDD7 E0                 4444 	.db #0xE0	; 224
   CDD8 60                 4445 	.db #0x60	; 96
   CDD9 20                 4446 	.db #0x20	; 32
   CDDA 00                 4447 	.db #0x00	; 0
   CDDB 00                 4448 	.db #0x00	; 0
   CDDC 00                 4449 	.db #0x00	; 0
   CDDD 01                 4450 	.db #0x01	; 1
   CDDE 01                 4451 	.db #0x01	; 1
   CDDF 01                 4452 	.db #0x01	; 1
   CDE0 01                 4453 	.db #0x01	; 1
   CDE1 01                 4454 	.db #0x01	; 1
   CDE2 02                 4455 	.db #0x02	; 2
   CDE3 02                 4456 	.db #0x02	; 2
   CDE4 10                 4457 	.db #0x10	; 16
   CDE5 20                 4458 	.db #0x20	; 32
   CDE6 41                 4459 	.db #0x41	; 65	'A'
   CDE7 83                 4460 	.db #0x83	; 131
   CDE8 9B                 4461 	.db #0x9B	; 155
   CDE9 C4                 4462 	.db #0xC4	; 196
   CDEA 06                 4463 	.db #0x06	; 6
   CDEB 89                 4464 	.db #0x89	; 137
   CDEC 5D                 4465 	.db #0x5D	; 93
   CDED 06                 4466 	.db #0x06	; 6
   CDEE 5D                 4467 	.db #0x5D	; 93
   CDEF 0C                 4468 	.db #0x0C	; 12
   CDF0 AA                 4469 	.db #0xAA	; 170
   CDF1 62                 4470 	.db #0x62	; 98	'b'
   CDF2 C5                 4471 	.db #0xC5	; 197
   CDF3 89                 4472 	.db #0x89	; 137
   CDF4 12                 4473 	.db #0x12	; 18
   CDF5 A6                 4474 	.db #0xA6	; 166
   CDF6 9C                 4475 	.db #0x9C	; 156
   CDF7 25                 4476 	.db #0x25	; 37
   CDF8 37                 4477 	.db #0x37	; 55	'7'
   CDF9 86                 4478 	.db #0x86	; 134
   CDFA 25                 4479 	.db #0x25	; 37
   CDFB 86                 4480 	.db #0x86	; 134
   CDFC 4A                 4481 	.db #0x4A	; 74	'J'
   CDFD AB                 4482 	.db #0xAB	; 171
   CDFE 00                 4483 	.db #0x00	; 0
   CDFF 00                 4484 	.db #0x00	; 0
   CE00 00                 4485 	.db #0x00	; 0
   CE01 01                 4486 	.db #0x01	; 1
   CE02 01                 4487 	.db #0x01	; 1
   CE03 01                 4488 	.db #0x01	; 1
   CE04 02                 4489 	.db #0x02	; 2
   CE05 03                 4490 	.db #0x03	; 3
   CE06 02                 4491 	.db #0x02	; 2
   CE07 02                 4492 	.db #0x02	; 2
   CE08 02                 4493 	.db #0x02	; 2
   CE09 04                 4494 	.db #0x04	; 4
   CE0A 07                 4495 	.db #0x07	; 7
   CE0B 23                 4496 	.db #0x23	; 35
   CE0C 44                 4497 	.db #0x44	; 68	'D'
   CE0D 85                 4498 	.db #0x85	; 133
   CE0E 08                 4499 	.db #0x08	; 8
   CE0F 39                 4500 	.db #0x39	; 57	'9'
   CE10 8A                 4501 	.db #0x8A	; 138
   CE11 0E                 4502 	.db #0x0E	; 14
   CE12 18                 4503 	.db #0x18	; 24
   CE13 BB                 4504 	.db #0xBB	; 187
   CE14 0E                 4505 	.db #0x0E	; 14
   CE15 BB                 4506 	.db #0xBB	; 187
   CE16 EA                 4507 	.db #0xEA	; 234
   CE17 FF                 4508 	.db #0xFF	; 255
   CE18 1C                 4509 	.db #0x1C	; 28
   CE19 1C                 4510 	.db #0x1C	; 28
   CE1A 1C                 4511 	.db #0x1C	; 28
   CE1B 1C                 4512 	.db #0x1C	; 28
   CE1C 1C                 4513 	.db #0x1C	; 28
   CE1D 1E                 4514 	.db #0x1E	; 30
   CE1E 20                 4515 	.db #0x20	; 32
   CE1F 30                 4516 	.db #0x30	; 48	'0'
   CE20 41                 4517 	.db #0x41	; 65	'A'
   CE21 50                 4518 	.db #0x50	; 80	'P'
   CE22 50                 4519 	.db #0x50	; 80	'P'
   CE23 50                 4520 	.db #0x50	; 80	'P'
   CE24 50                 4521 	.db #0x50	; 80	'P'
   CE25 10                 4522 	.db #0x10	; 16
   CE26 20                 4523 	.db #0x20	; 32
   CE27 41                 4524 	.db #0x41	; 65	'A'
   CE28 83                 4525 	.db #0x83	; 131
   CE29 9B                 4526 	.db #0x9B	; 155
   CE2A C4                 4527 	.db #0xC4	; 196
   CE2B 08                 4528 	.db #0x08	; 8
   CE2C 0C                 4529 	.db #0x0C	; 12
   CE2D 10                 4530 	.db #0x10	; 16
   CE2E 18                 4531 	.db #0x18	; 24
   CE2F 20                 4532 	.db #0x20	; 32
   CE30 31                 4533 	.db #0x31	; 49	'1'
   CE31 40                 4534 	.db #0x40	; 64
   CE32 62                 4535 	.db #0x62	; 98	'b'
   CE33 C5                 4536 	.db #0xC5	; 197
   CE34 89                 4537 	.db #0x89	; 137
   CE35 12                 4538 	.db #0x12	; 18
   CE36 A6                 4539 	.db #0xA6	; 166
   CE37 9C                 4540 	.db #0x9C	; 156
   CE38 31                 4541 	.db #0x31	; 49	'1'
   CE39 4A                 4542 	.db #0x4A	; 74	'J'
   CE3A 62                 4543 	.db #0x62	; 98	'b'
   CE3B 93                 4544 	.db #0x93	; 147
   CE3C C5                 4545 	.db #0xC5	; 197
   CE3D 27                 4546 	.db #0x27	; 39
   CE3E 00                 4547 	.db #0x00	; 0
   CE3F 03                 4548 	.db #0x03	; 3
   CE40 06                 4549 	.db #0x06	; 6
   CE41 0D                 4550 	.db #0x0D	; 13
   CE42 1A                 4551 	.db #0x1A	; 26
   CE43 1E                 4552 	.db #0x1E	; 30
   CE44 26                 4553 	.db #0x26	; 38
   CE45 33                 4554 	.db #0x33	; 51	'3'
   CE46 4D                 4555 	.db #0x4D	; 77	'M'
   CE47 66                 4556 	.db #0x66	; 102	'f'
   CE48 9A                 4557 	.db #0x9A	; 154
   CE49 CD                 4558 	.db #0xCD	; 205
   CE4A FE                 4559 	.db #0xFE	; 254
   CE4B FE                 4560 	.db #0xFE	; 254
   CE4C                    4561 _reg_table_915:
   CE4C 01                 4562 	.db #0x01	; 1
   CE4D 01                 4563 	.db #0x01	; 1
   CE4E 01                 4564 	.db #0x01	; 1
   CE4F 01                 4565 	.db #0x01	; 1
   CE50 01                 4566 	.db #0x01	; 1
   CE51 01                 4567 	.db #0x01	; 1
   CE52 05                 4568 	.db #0x05	; 5
   CE53 0B                 4569 	.db #0x0B	; 11
   CE54 9A                 4570 	.db #0x9A	; 154
   CE55 88                 4571 	.db #0x88	; 136
   CE56 8A                 4572 	.db #0x8A	; 138
   CE57 8C                 4573 	.db #0x8C	; 140
   CE58 8D                 4574 	.db #0x8D	; 141
   CE59 03                 4575 	.db #0x03	; 3
   CE5A 03                 4576 	.db #0x03	; 3
   CE5B 03                 4577 	.db #0x03	; 3
   CE5C 03                 4578 	.db #0x03	; 3
   CE5D 03                 4579 	.db #0x03	; 3
   CE5E 03                 4580 	.db #0x03	; 3
   CE5F 03                 4581 	.db #0x03	; 3
   CE60 03                 4582 	.db #0x03	; 3
   CE61 03                 4583 	.db #0x03	; 3
   CE62 03                 4584 	.db #0x03	; 3
   CE63 03                 4585 	.db #0x03	; 3
   CE64 03                 4586 	.db #0x03	; 3
   CE65 03                 4587 	.db #0x03	; 3
   CE66 D0                 4588 	.db #0xD0	; 208
   CE67 E8                 4589 	.db #0xE8	; 232
   CE68 F4                 4590 	.db #0xF4	; 244
   CE69 FA                 4591 	.db #0xFA	; 250
   CE6A D3                 4592 	.db #0xD3	; 211
   CE6B A7                 4593 	.db #0xA7	; 167
   CE6C 7D                 4594 	.db #0x7D	; 125
   CE6D 53                 4595 	.db #0x53	; 83	'S'
   CE6E 5E                 4596 	.db #0x5E	; 94
   CE6F 7D                 4597 	.db #0x7D	; 125
   CE70 5E                 4598 	.db #0x5E	; 94
   CE71 3F                 4599 	.db #0x3F	; 63
   CE72 30                 4600 	.db #0x30	; 48	'0'
   CE73 E0                 4601 	.db #0xE0	; 224
   CE74 60                 4602 	.db #0x60	; 96
   CE75 20                 4603 	.db #0x20	; 32
   CE76 00                 4604 	.db #0x00	; 0
   CE77 00                 4605 	.db #0x00	; 0
   CE78 00                 4606 	.db #0x00	; 0
   CE79 01                 4607 	.db #0x01	; 1
   CE7A 01                 4608 	.db #0x01	; 1
   CE7B 01                 4609 	.db #0x01	; 1
   CE7C 01                 4610 	.db #0x01	; 1
   CE7D 01                 4611 	.db #0x01	; 1
   CE7E 02                 4612 	.db #0x02	; 2
   CE7F 02                 4613 	.db #0x02	; 2
   CE80 10                 4614 	.db #0x10	; 16
   CE81 20                 4615 	.db #0x20	; 32
   CE82 41                 4616 	.db #0x41	; 65	'A'
   CE83 83                 4617 	.db #0x83	; 131
   CE84 9B                 4618 	.db #0x9B	; 155
   CE85 C4                 4619 	.db #0xC4	; 196
   CE86 06                 4620 	.db #0x06	; 6
   CE87 89                 4621 	.db #0x89	; 137
   CE88 5D                 4622 	.db #0x5D	; 93
   CE89 06                 4623 	.db #0x06	; 6
   CE8A 5D                 4624 	.db #0x5D	; 93
   CE8B 0C                 4625 	.db #0x0C	; 12
   CE8C AA                 4626 	.db #0xAA	; 170
   CE8D 62                 4627 	.db #0x62	; 98	'b'
   CE8E C5                 4628 	.db #0xC5	; 197
   CE8F 89                 4629 	.db #0x89	; 137
   CE90 12                 4630 	.db #0x12	; 18
   CE91 A6                 4631 	.db #0xA6	; 166
   CE92 9C                 4632 	.db #0x9C	; 156
   CE93 25                 4633 	.db #0x25	; 37
   CE94 37                 4634 	.db #0x37	; 55	'7'
   CE95 86                 4635 	.db #0x86	; 134
   CE96 25                 4636 	.db #0x25	; 37
   CE97 86                 4637 	.db #0x86	; 134
   CE98 4A                 4638 	.db #0x4A	; 74	'J'
   CE99 AB                 4639 	.db #0xAB	; 171
   CE9A 00                 4640 	.db #0x00	; 0
   CE9B 00                 4641 	.db #0x00	; 0
   CE9C 00                 4642 	.db #0x00	; 0
   CE9D 01                 4643 	.db #0x01	; 1
   CE9E 01                 4644 	.db #0x01	; 1
   CE9F 01                 4645 	.db #0x01	; 1
   CEA0 02                 4646 	.db #0x02	; 2
   CEA1 03                 4647 	.db #0x03	; 3
   CEA2 02                 4648 	.db #0x02	; 2
   CEA3 02                 4649 	.db #0x02	; 2
   CEA4 02                 4650 	.db #0x02	; 2
   CEA5 04                 4651 	.db #0x04	; 4
   CEA6 07                 4652 	.db #0x07	; 7
   CEA7 23                 4653 	.db #0x23	; 35
   CEA8 44                 4654 	.db #0x44	; 68	'D'
   CEA9 85                 4655 	.db #0x85	; 133
   CEAA 08                 4656 	.db #0x08	; 8
   CEAB 39                 4657 	.db #0x39	; 57	'9'
   CEAC 8A                 4658 	.db #0x8A	; 138
   CEAD 0E                 4659 	.db #0x0E	; 14
   CEAE 18                 4660 	.db #0x18	; 24
   CEAF BB                 4661 	.db #0xBB	; 187
   CEB0 0E                 4662 	.db #0x0E	; 14
   CEB1 BB                 4663 	.db #0xBB	; 187
   CEB2 EA                 4664 	.db #0xEA	; 234
   CEB3 FF                 4665 	.db #0xFF	; 255
   CEB4 1E                 4666 	.db #0x1E	; 30
   CEB5 1E                 4667 	.db #0x1E	; 30
   CEB6 1E                 4668 	.db #0x1E	; 30
   CEB7 1E                 4669 	.db #0x1E	; 30
   CEB8 1E                 4670 	.db #0x1E	; 30
   CEB9 1E                 4671 	.db #0x1E	; 30
   CEBA 20                 4672 	.db #0x20	; 32
   CEBB 30                 4673 	.db #0x30	; 48	'0'
   CEBC 41                 4674 	.db #0x41	; 65	'A'
   CEBD 50                 4675 	.db #0x50	; 80	'P'
   CEBE 50                 4676 	.db #0x50	; 80	'P'
   CEBF 50                 4677 	.db #0x50	; 80	'P'
   CEC0 50                 4678 	.db #0x50	; 80	'P'
   CEC1 10                 4679 	.db #0x10	; 16
   CEC2 20                 4680 	.db #0x20	; 32
   CEC3 41                 4681 	.db #0x41	; 65	'A'
   CEC4 83                 4682 	.db #0x83	; 131
   CEC5 9B                 4683 	.db #0x9B	; 155
   CEC6 C4                 4684 	.db #0xC4	; 196
   CEC7 08                 4685 	.db #0x08	; 8
   CEC8 0C                 4686 	.db #0x0C	; 12
   CEC9 10                 4687 	.db #0x10	; 16
   CECA 18                 4688 	.db #0x18	; 24
   CECB 20                 4689 	.db #0x20	; 32
   CECC 31                 4690 	.db #0x31	; 49	'1'
   CECD 40                 4691 	.db #0x40	; 64
   CECE 62                 4692 	.db #0x62	; 98	'b'
   CECF C5                 4693 	.db #0xC5	; 197
   CED0 89                 4694 	.db #0x89	; 137
   CED1 12                 4695 	.db #0x12	; 18
   CED2 A6                 4696 	.db #0xA6	; 166
   CED3 9C                 4697 	.db #0x9C	; 156
   CED4 31                 4698 	.db #0x31	; 49	'1'
   CED5 4A                 4699 	.db #0x4A	; 74	'J'
   CED6 62                 4700 	.db #0x62	; 98	'b'
   CED7 93                 4701 	.db #0x93	; 147
   CED8 C5                 4702 	.db #0xC5	; 197
   CED9 27                 4703 	.db #0x27	; 39
   CEDA 00                 4704 	.db #0x00	; 0
   CEDB 03                 4705 	.db #0x03	; 3
   CEDC 06                 4706 	.db #0x06	; 6
   CEDD 0D                 4707 	.db #0x0D	; 13
   CEDE 1A                 4708 	.db #0x1A	; 26
   CEDF 1E                 4709 	.db #0x1E	; 30
   CEE0 26                 4710 	.db #0x26	; 38
   CEE1 33                 4711 	.db #0x33	; 51	'3'
   CEE2 4D                 4712 	.db #0x4D	; 77	'M'
   CEE3 66                 4713 	.db #0x66	; 102	'f'
   CEE4 9A                 4714 	.db #0x9A	; 154
   CEE5 CD                 4715 	.db #0xCD	; 205
   CEE6 FE                 4716 	.db #0xFE	; 254
   CEE7 FE                 4717 	.db #0xFE	; 254
   CEE8                    4718 _power_levels:
   CEE8 EB                 4719 	.db #0xEB	; 235
   CEE9 E6                 4720 	.db #0xE6	; 230
   CEEA E0                 4721 	.db #0xE0	; 224
   CEEB DA                 4722 	.db #0xDA	; 218
   CEEC D3                 4723 	.db #0xD3	; 211
   CEED CE                 4724 	.db #0xCE	; 206
   CEEE C9                 4725 	.db #0xC9	; 201
   CEEF C4                 4726 	.db #0xC4	; 196
   CEF0 BE                 4727 	.db #0xBE	; 190
   CEF1 B8                 4728 	.db #0xB8	; 184
   CEF2 B2                 4729 	.db #0xB2	; 178
   CEF3 AB                 4730 	.db #0xAB	; 171
   CEF4 A4                 4731 	.db #0xA4	; 164
   CEF5 96                 4732 	.db #0x96	; 150
   CEF6 88                 4733 	.db #0x88	; 136
   CEF7 50                 4734 	.db #0x50	; 80	'P'
                           4735 	.area XINIT   (CODE)
                           4736 	.area CABS    (ABS,CODE)
