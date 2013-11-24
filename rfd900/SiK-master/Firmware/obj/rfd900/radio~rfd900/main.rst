                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:12 2013
                              5 ;--------------------------------------------------------
                              6 	.module main
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _g_version_string
                             13 	.globl _g_banner_string
                             14 	.globl _main
                             15 	.globl _fhop_init
                             16 	.globl _delay_msec
                             17 	.globl _timer_init
                             18 	.globl _tdm_serial_loop
                             19 	.globl _tdm_init
                             20 	.globl _radio_get_transmit_power
                             21 	.globl _radio_set_transmit_power
                             22 	.globl _radio_air_rate
                             23 	.globl _radio_set_network_id
                             24 	.globl _radio_configure
                             25 	.globl _radio_set_channel
                             26 	.globl _radio_set_channel_spacing
                             27 	.globl _radio_set_frequency
                             28 	.globl _radio_initialise
                             29 	.globl _radio_receiver_on
                             30 	.globl _vprintfl
                             31 	.globl _constrain
                             32 	.globl _param_load
                             33 	.globl _param_get
                             34 	.globl _param_set
                             35 	.globl _serial_init
                             36 	.globl _srand
                             37 	.globl _rand
                             38 	.globl _puts
                             39 	.globl _TDM_SYNC_PIN
                             40 	.globl _NSS1
                             41 	.globl _IRQ
                             42 	.globl _PIN_ENABLE
                             43 	.globl _PIN_CONFIG
                             44 	.globl _LED_GREEN
                             45 	.globl _LED_RED
                             46 	.globl _SPI0EN
                             47 	.globl _TXBMT0
                             48 	.globl _NSS0MD0
                             49 	.globl _NSS0MD1
                             50 	.globl _RXOVRN0
                             51 	.globl _MODF0
                             52 	.globl _WCOL0
                             53 	.globl _SPIF0
                             54 	.globl _AD0CM0
                             55 	.globl _AD0CM1
                             56 	.globl _AD0CM2
                             57 	.globl _AD0WINT
                             58 	.globl _AD0BUSY
                             59 	.globl _AD0INT
                             60 	.globl _BURSTEN
                             61 	.globl _AD0EN
                             62 	.globl _CCF0
                             63 	.globl _CCF1
                             64 	.globl _CCF2
                             65 	.globl _CCF3
                             66 	.globl _CCF4
                             67 	.globl _CCF5
                             68 	.globl _CR
                             69 	.globl _CF
                             70 	.globl _P
                             71 	.globl _F1
                             72 	.globl _OV
                             73 	.globl _RS0
                             74 	.globl _RS1
                             75 	.globl _F0
                             76 	.globl _AC
                             77 	.globl _CY
                             78 	.globl _T2XCLK
                             79 	.globl _T2RCLK
                             80 	.globl _TR2
                             81 	.globl _T2SPLIT
                             82 	.globl _TF2CEN
                             83 	.globl _TF2LEN
                             84 	.globl _TF2L
                             85 	.globl _TF2H
                             86 	.globl _SI
                             87 	.globl _ACK
                             88 	.globl _ARBLOST
                             89 	.globl _ACKRQ
                             90 	.globl _STO
                             91 	.globl _STA
                             92 	.globl _TXMODE
                             93 	.globl _MASTER
                             94 	.globl _PX0
                             95 	.globl _PT0
                             96 	.globl _PX1
                             97 	.globl _PT1
                             98 	.globl _PS0
                             99 	.globl _PT2
                            100 	.globl _PSPI0
                            101 	.globl _SPI1EN
                            102 	.globl _TXBMT1
                            103 	.globl _NSS1MD0
                            104 	.globl _NSS1MD1
                            105 	.globl _RXOVRN1
                            106 	.globl _MODF1
                            107 	.globl _WCOL1
                            108 	.globl _SPIF1
                            109 	.globl _EX0
                            110 	.globl _ET0
                            111 	.globl _EX1
                            112 	.globl _ET1
                            113 	.globl _ES0
                            114 	.globl _ET2
                            115 	.globl _ESPI0
                            116 	.globl _EA
                            117 	.globl _RI0
                            118 	.globl _TI0
                            119 	.globl _RB80
                            120 	.globl _TB80
                            121 	.globl _REN0
                            122 	.globl _MCE0
                            123 	.globl _S0MODE
                            124 	.globl _CRC0VAL
                            125 	.globl _CRC0INIT
                            126 	.globl _CRC0SEL
                            127 	.globl _IT0
                            128 	.globl _IE0
                            129 	.globl _IT1
                            130 	.globl _IE1
                            131 	.globl _TR0
                            132 	.globl _TF0
                            133 	.globl _TR1
                            134 	.globl _TF1
                            135 	.globl _PCA0CP4
                            136 	.globl _PCA0CP0
                            137 	.globl _PCA0
                            138 	.globl _PCA0CP3
                            139 	.globl _PCA0CP2
                            140 	.globl _PCA0CP1
                            141 	.globl _PCA0CP5
                            142 	.globl _TMR2
                            143 	.globl _TMR2RL
                            144 	.globl _ADC0LT
                            145 	.globl _ADC0GT
                            146 	.globl _ADC0
                            147 	.globl _TMR3
                            148 	.globl _TMR3RL
                            149 	.globl _TOFF
                            150 	.globl _DP
                            151 	.globl _VDM0CN
                            152 	.globl _PCA0CPH4
                            153 	.globl _PCA0CPL4
                            154 	.globl _PCA0CPH0
                            155 	.globl _PCA0CPL0
                            156 	.globl _PCA0H
                            157 	.globl _PCA0L
                            158 	.globl _SPI0CN
                            159 	.globl _EIP2
                            160 	.globl _EIP1
                            161 	.globl _SMB0ADM
                            162 	.globl _SMB0ADR
                            163 	.globl _P2MDIN
                            164 	.globl _P1MDIN
                            165 	.globl _P0MDIN
                            166 	.globl _B
                            167 	.globl _RSTSRC
                            168 	.globl _PCA0CPH3
                            169 	.globl _PCA0CPL3
                            170 	.globl _PCA0CPH2
                            171 	.globl _PCA0CPL2
                            172 	.globl _PCA0CPH1
                            173 	.globl _PCA0CPL1
                            174 	.globl _ADC0CN
                            175 	.globl _EIE2
                            176 	.globl _EIE1
                            177 	.globl _FLWR
                            178 	.globl _IT01CF
                            179 	.globl _XBR2
                            180 	.globl _XBR1
                            181 	.globl _XBR0
                            182 	.globl _ACC
                            183 	.globl _PCA0PWM
                            184 	.globl _PCA0CPM4
                            185 	.globl _PCA0CPM3
                            186 	.globl _PCA0CPM2
                            187 	.globl _PCA0CPM1
                            188 	.globl _PCA0CPM0
                            189 	.globl _PCA0MD
                            190 	.globl _PCA0CN
                            191 	.globl _P0MAT
                            192 	.globl _P2SKIP
                            193 	.globl _P1SKIP
                            194 	.globl _P0SKIP
                            195 	.globl _PCA0CPH5
                            196 	.globl _PCA0CPL5
                            197 	.globl _REF0CN
                            198 	.globl _PSW
                            199 	.globl _P1MAT
                            200 	.globl _PCA0CPM5
                            201 	.globl _TMR2H
                            202 	.globl _TMR2L
                            203 	.globl _TMR2RLH
                            204 	.globl _TMR2RLL
                            205 	.globl _REG0CN
                            206 	.globl _TMR2CN
                            207 	.globl _P0MASK
                            208 	.globl _ADC0LTH
                            209 	.globl _ADC0LTL
                            210 	.globl _ADC0GTH
                            211 	.globl _ADC0GTL
                            212 	.globl _SMB0DAT
                            213 	.globl _SMB0CF
                            214 	.globl _SMB0CN
                            215 	.globl _P1MASK
                            216 	.globl _ADC0H
                            217 	.globl _ADC0L
                            218 	.globl _ADC0TK
                            219 	.globl _ADC0CF
                            220 	.globl _ADC0MX
                            221 	.globl _ADC0PWR
                            222 	.globl _ADC0AC
                            223 	.globl _IREF0CN
                            224 	.globl _IP
                            225 	.globl _FLKEY
                            226 	.globl _FLSCL
                            227 	.globl _PMU0CF
                            228 	.globl _OSCICL
                            229 	.globl _OSCICN
                            230 	.globl _OSCXCN
                            231 	.globl _SPI1CN
                            232 	.globl _ONESHOT
                            233 	.globl _EMI0TC
                            234 	.globl _RTC0KEY
                            235 	.globl _RTC0DAT
                            236 	.globl _RTC0ADR
                            237 	.globl _EMI0CF
                            238 	.globl _EMI0CN
                            239 	.globl _CLKSEL
                            240 	.globl _IE
                            241 	.globl _SFRPAGE
                            242 	.globl _P2DRV
                            243 	.globl _P2MDOUT
                            244 	.globl _P1DRV
                            245 	.globl _P1MDOUT
                            246 	.globl _P0DRV
                            247 	.globl _P0MDOUT
                            248 	.globl _SPI0DAT
                            249 	.globl _SPI0CKR
                            250 	.globl _SPI0CFG
                            251 	.globl _P2
                            252 	.globl _CPT0MX
                            253 	.globl _CPT1MX
                            254 	.globl _CPT0MD
                            255 	.globl _CPT1MD
                            256 	.globl _CPT0CN
                            257 	.globl _CPT1CN
                            258 	.globl _SBUF0
                            259 	.globl _SCON0
                            260 	.globl _CRC0CNT
                            261 	.globl _DC0CN
                            262 	.globl _CRC0AUTO
                            263 	.globl _DC0CF
                            264 	.globl _TMR3H
                            265 	.globl _CRC0FLIP
                            266 	.globl _TMR3L
                            267 	.globl _CRC0IN
                            268 	.globl _TMR3RLH
                            269 	.globl _CRC0CN
                            270 	.globl _TMR3RLL
                            271 	.globl _CRC0DAT
                            272 	.globl _TMR3CN
                            273 	.globl _P1
                            274 	.globl _PSCTL
                            275 	.globl _CKCON
                            276 	.globl _TH1
                            277 	.globl _TH0
                            278 	.globl _TL1
                            279 	.globl _TL0
                            280 	.globl _TMOD
                            281 	.globl _TCON
                            282 	.globl _PCON
                            283 	.globl _TOFFH
                            284 	.globl _SPI1DAT
                            285 	.globl _TOFFL
                            286 	.globl _SPI1CKR
                            287 	.globl _SPI1CFG
                            288 	.globl _DPH
                            289 	.globl _DPL
                            290 	.globl _SP
                            291 	.globl _P0
                            292 	.globl _remote_statistics
                            293 	.globl _statistics
                            294 	.globl _errors
                            295 	.globl _g_board_bl_version
                            296 	.globl _g_board_frequency
                            297 	.globl _feature_rtscts
                            298 	.globl _feature_mavlink_framing
                            299 	.globl _feature_opportunistic_resend
                            300 	.globl _feature_golay
                            301 	.globl _panic
                            302 ;--------------------------------------------------------
                            303 ; special function registers
                            304 ;--------------------------------------------------------
                            305 	.area RSEG    (ABS,DATA)
   0000                     306 	.org 0x0000
                     0080   307 _P0	=	0x0080
                     0081   308 _SP	=	0x0081
                     0082   309 _DPL	=	0x0082
                     0083   310 _DPH	=	0x0083
                     0084   311 _SPI1CFG	=	0x0084
                     0085   312 _SPI1CKR	=	0x0085
                     0085   313 _TOFFL	=	0x0085
                     0086   314 _SPI1DAT	=	0x0086
                     0086   315 _TOFFH	=	0x0086
                     0087   316 _PCON	=	0x0087
                     0088   317 _TCON	=	0x0088
                     0089   318 _TMOD	=	0x0089
                     008A   319 _TL0	=	0x008a
                     008B   320 _TL1	=	0x008b
                     008C   321 _TH0	=	0x008c
                     008D   322 _TH1	=	0x008d
                     008E   323 _CKCON	=	0x008e
                     008F   324 _PSCTL	=	0x008f
                     0090   325 _P1	=	0x0090
                     0091   326 _TMR3CN	=	0x0091
                     0091   327 _CRC0DAT	=	0x0091
                     0092   328 _TMR3RLL	=	0x0092
                     0092   329 _CRC0CN	=	0x0092
                     0093   330 _TMR3RLH	=	0x0093
                     0093   331 _CRC0IN	=	0x0093
                     0094   332 _TMR3L	=	0x0094
                     0095   333 _CRC0FLIP	=	0x0095
                     0095   334 _TMR3H	=	0x0095
                     0096   335 _DC0CF	=	0x0096
                     0096   336 _CRC0AUTO	=	0x0096
                     0097   337 _DC0CN	=	0x0097
                     0097   338 _CRC0CNT	=	0x0097
                     0098   339 _SCON0	=	0x0098
                     0099   340 _SBUF0	=	0x0099
                     009A   341 _CPT1CN	=	0x009a
                     009B   342 _CPT0CN	=	0x009b
                     009C   343 _CPT1MD	=	0x009c
                     009D   344 _CPT0MD	=	0x009d
                     009E   345 _CPT1MX	=	0x009e
                     009F   346 _CPT0MX	=	0x009f
                     00A0   347 _P2	=	0x00a0
                     00A1   348 _SPI0CFG	=	0x00a1
                     00A2   349 _SPI0CKR	=	0x00a2
                     00A3   350 _SPI0DAT	=	0x00a3
                     00A4   351 _P0MDOUT	=	0x00a4
                     00A4   352 _P0DRV	=	0x00a4
                     00A5   353 _P1MDOUT	=	0x00a5
                     00A5   354 _P1DRV	=	0x00a5
                     00A6   355 _P2MDOUT	=	0x00a6
                     00A6   356 _P2DRV	=	0x00a6
                     00A7   357 _SFRPAGE	=	0x00a7
                     00A8   358 _IE	=	0x00a8
                     00A9   359 _CLKSEL	=	0x00a9
                     00AA   360 _EMI0CN	=	0x00aa
                     00AB   361 _EMI0CF	=	0x00ab
                     00AC   362 _RTC0ADR	=	0x00ac
                     00AD   363 _RTC0DAT	=	0x00ad
                     00AE   364 _RTC0KEY	=	0x00ae
                     00AF   365 _EMI0TC	=	0x00af
                     00AF   366 _ONESHOT	=	0x00af
                     00B0   367 _SPI1CN	=	0x00b0
                     00B1   368 _OSCXCN	=	0x00b1
                     00B2   369 _OSCICN	=	0x00b2
                     00B3   370 _OSCICL	=	0x00b3
                     00B5   371 _PMU0CF	=	0x00b5
                     00B6   372 _FLSCL	=	0x00b6
                     00B7   373 _FLKEY	=	0x00b7
                     00B8   374 _IP	=	0x00b8
                     00B9   375 _IREF0CN	=	0x00b9
                     00BA   376 _ADC0AC	=	0x00ba
                     00BA   377 _ADC0PWR	=	0x00ba
                     00BB   378 _ADC0MX	=	0x00bb
                     00BC   379 _ADC0CF	=	0x00bc
                     00BD   380 _ADC0TK	=	0x00bd
                     00BD   381 _ADC0L	=	0x00bd
                     00BE   382 _ADC0H	=	0x00be
                     00BF   383 _P1MASK	=	0x00bf
                     00C0   384 _SMB0CN	=	0x00c0
                     00C1   385 _SMB0CF	=	0x00c1
                     00C2   386 _SMB0DAT	=	0x00c2
                     00C3   387 _ADC0GTL	=	0x00c3
                     00C4   388 _ADC0GTH	=	0x00c4
                     00C5   389 _ADC0LTL	=	0x00c5
                     00C6   390 _ADC0LTH	=	0x00c6
                     00C7   391 _P0MASK	=	0x00c7
                     00C8   392 _TMR2CN	=	0x00c8
                     00C9   393 _REG0CN	=	0x00c9
                     00CA   394 _TMR2RLL	=	0x00ca
                     00CB   395 _TMR2RLH	=	0x00cb
                     00CC   396 _TMR2L	=	0x00cc
                     00CD   397 _TMR2H	=	0x00cd
                     00CE   398 _PCA0CPM5	=	0x00ce
                     00CF   399 _P1MAT	=	0x00cf
                     00D0   400 _PSW	=	0x00d0
                     00D1   401 _REF0CN	=	0x00d1
                     00D2   402 _PCA0CPL5	=	0x00d2
                     00D3   403 _PCA0CPH5	=	0x00d3
                     00D4   404 _P0SKIP	=	0x00d4
                     00D5   405 _P1SKIP	=	0x00d5
                     00D6   406 _P2SKIP	=	0x00d6
                     00D7   407 _P0MAT	=	0x00d7
                     00D8   408 _PCA0CN	=	0x00d8
                     00D9   409 _PCA0MD	=	0x00d9
                     00DA   410 _PCA0CPM0	=	0x00da
                     00DB   411 _PCA0CPM1	=	0x00db
                     00DC   412 _PCA0CPM2	=	0x00dc
                     00DD   413 _PCA0CPM3	=	0x00dd
                     00DE   414 _PCA0CPM4	=	0x00de
                     00DF   415 _PCA0PWM	=	0x00df
                     00E0   416 _ACC	=	0x00e0
                     00E1   417 _XBR0	=	0x00e1
                     00E2   418 _XBR1	=	0x00e2
                     00E3   419 _XBR2	=	0x00e3
                     00E4   420 _IT01CF	=	0x00e4
                     00E5   421 _FLWR	=	0x00e5
                     00E6   422 _EIE1	=	0x00e6
                     00E7   423 _EIE2	=	0x00e7
                     00E8   424 _ADC0CN	=	0x00e8
                     00E9   425 _PCA0CPL1	=	0x00e9
                     00EA   426 _PCA0CPH1	=	0x00ea
                     00EB   427 _PCA0CPL2	=	0x00eb
                     00EC   428 _PCA0CPH2	=	0x00ec
                     00ED   429 _PCA0CPL3	=	0x00ed
                     00EE   430 _PCA0CPH3	=	0x00ee
                     00EF   431 _RSTSRC	=	0x00ef
                     00F0   432 _B	=	0x00f0
                     00F1   433 _P0MDIN	=	0x00f1
                     00F2   434 _P1MDIN	=	0x00f2
                     00F3   435 _P2MDIN	=	0x00f3
                     00F4   436 _SMB0ADR	=	0x00f4
                     00F5   437 _SMB0ADM	=	0x00f5
                     00F6   438 _EIP1	=	0x00f6
                     00F7   439 _EIP2	=	0x00f7
                     00F8   440 _SPI0CN	=	0x00f8
                     00F9   441 _PCA0L	=	0x00f9
                     00FA   442 _PCA0H	=	0x00fa
                     00FB   443 _PCA0CPL0	=	0x00fb
                     00FC   444 _PCA0CPH0	=	0x00fc
                     00FD   445 _PCA0CPL4	=	0x00fd
                     00FE   446 _PCA0CPH4	=	0x00fe
                     00FF   447 _VDM0CN	=	0x00ff
                     8382   448 _DP	=	0x8382
                     8685   449 _TOFF	=	0x8685
                     9392   450 _TMR3RL	=	0x9392
                     9594   451 _TMR3	=	0x9594
                     BEBD   452 _ADC0	=	0xbebd
                     C4C3   453 _ADC0GT	=	0xc4c3
                     C6C5   454 _ADC0LT	=	0xc6c5
                     CBCA   455 _TMR2RL	=	0xcbca
                     CDCC   456 _TMR2	=	0xcdcc
                     D3D2   457 _PCA0CP5	=	0xd3d2
                     EAE9   458 _PCA0CP1	=	0xeae9
                     ECEB   459 _PCA0CP2	=	0xeceb
                     EEED   460 _PCA0CP3	=	0xeeed
                     FAF9   461 _PCA0	=	0xfaf9
                     FCFB   462 _PCA0CP0	=	0xfcfb
                     FEFD   463 _PCA0CP4	=	0xfefd
                            464 ;--------------------------------------------------------
                            465 ; special function bits
                            466 ;--------------------------------------------------------
                            467 	.area RSEG    (ABS,DATA)
   0000                     468 	.org 0x0000
                     008F   469 _TF1	=	0x008f
                     008E   470 _TR1	=	0x008e
                     008D   471 _TF0	=	0x008d
                     008C   472 _TR0	=	0x008c
                     008B   473 _IE1	=	0x008b
                     008A   474 _IT1	=	0x008a
                     0089   475 _IE0	=	0x0089
                     0088   476 _IT0	=	0x0088
                     0096   477 _CRC0SEL	=	0x0096
                     0095   478 _CRC0INIT	=	0x0095
                     0094   479 _CRC0VAL	=	0x0094
                     009F   480 _S0MODE	=	0x009f
                     009D   481 _MCE0	=	0x009d
                     009C   482 _REN0	=	0x009c
                     009B   483 _TB80	=	0x009b
                     009A   484 _RB80	=	0x009a
                     0099   485 _TI0	=	0x0099
                     0098   486 _RI0	=	0x0098
                     00AF   487 _EA	=	0x00af
                     00AE   488 _ESPI0	=	0x00ae
                     00AD   489 _ET2	=	0x00ad
                     00AC   490 _ES0	=	0x00ac
                     00AB   491 _ET1	=	0x00ab
                     00AA   492 _EX1	=	0x00aa
                     00A9   493 _ET0	=	0x00a9
                     00A8   494 _EX0	=	0x00a8
                     00B7   495 _SPIF1	=	0x00b7
                     00B6   496 _WCOL1	=	0x00b6
                     00B5   497 _MODF1	=	0x00b5
                     00B4   498 _RXOVRN1	=	0x00b4
                     00B3   499 _NSS1MD1	=	0x00b3
                     00B2   500 _NSS1MD0	=	0x00b2
                     00B1   501 _TXBMT1	=	0x00b1
                     00B0   502 _SPI1EN	=	0x00b0
                     00BE   503 _PSPI0	=	0x00be
                     00BD   504 _PT2	=	0x00bd
                     00BC   505 _PS0	=	0x00bc
                     00BB   506 _PT1	=	0x00bb
                     00BA   507 _PX1	=	0x00ba
                     00B9   508 _PT0	=	0x00b9
                     00B8   509 _PX0	=	0x00b8
                     00C7   510 _MASTER	=	0x00c7
                     00C6   511 _TXMODE	=	0x00c6
                     00C5   512 _STA	=	0x00c5
                     00C4   513 _STO	=	0x00c4
                     00C3   514 _ACKRQ	=	0x00c3
                     00C2   515 _ARBLOST	=	0x00c2
                     00C1   516 _ACK	=	0x00c1
                     00C0   517 _SI	=	0x00c0
                     00CF   518 _TF2H	=	0x00cf
                     00CE   519 _TF2L	=	0x00ce
                     00CD   520 _TF2LEN	=	0x00cd
                     00CC   521 _TF2CEN	=	0x00cc
                     00CB   522 _T2SPLIT	=	0x00cb
                     00CA   523 _TR2	=	0x00ca
                     00C9   524 _T2RCLK	=	0x00c9
                     00C8   525 _T2XCLK	=	0x00c8
                     00D7   526 _CY	=	0x00d7
                     00D6   527 _AC	=	0x00d6
                     00D5   528 _F0	=	0x00d5
                     00D4   529 _RS1	=	0x00d4
                     00D3   530 _RS0	=	0x00d3
                     00D2   531 _OV	=	0x00d2
                     00D1   532 _F1	=	0x00d1
                     00D0   533 _P	=	0x00d0
                     00DF   534 _CF	=	0x00df
                     00DE   535 _CR	=	0x00de
                     00DD   536 _CCF5	=	0x00dd
                     00DC   537 _CCF4	=	0x00dc
                     00DB   538 _CCF3	=	0x00db
                     00DA   539 _CCF2	=	0x00da
                     00D9   540 _CCF1	=	0x00d9
                     00D8   541 _CCF0	=	0x00d8
                     00EF   542 _AD0EN	=	0x00ef
                     00EE   543 _BURSTEN	=	0x00ee
                     00ED   544 _AD0INT	=	0x00ed
                     00EC   545 _AD0BUSY	=	0x00ec
                     00EB   546 _AD0WINT	=	0x00eb
                     00EA   547 _AD0CM2	=	0x00ea
                     00E9   548 _AD0CM1	=	0x00e9
                     00E8   549 _AD0CM0	=	0x00e8
                     00FF   550 _SPIF0	=	0x00ff
                     00FE   551 _WCOL0	=	0x00fe
                     00FD   552 _MODF0	=	0x00fd
                     00FC   553 _RXOVRN0	=	0x00fc
                     00FB   554 _NSS0MD1	=	0x00fb
                     00FA   555 _NSS0MD0	=	0x00fa
                     00F9   556 _TXBMT0	=	0x00f9
                     00F8   557 _SPI0EN	=	0x00f8
                     0096   558 _LED_RED	=	0x0096
                     0095   559 _LED_GREEN	=	0x0095
                     0082   560 _PIN_CONFIG	=	0x0082
                     0083   561 _PIN_ENABLE	=	0x0083
                     0087   562 _IRQ	=	0x0087
                     0094   563 _NSS1	=	0x0094
                     00A6   564 _TDM_SYNC_PIN	=	0x00a6
                            565 ;--------------------------------------------------------
                            566 ; overlayable register banks
                            567 ;--------------------------------------------------------
                            568 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     569 	.ds 8
                            570 ;--------------------------------------------------------
                            571 ; internal ram data
                            572 ;--------------------------------------------------------
                            573 	.area DSEG    (DATA)
                            574 ;--------------------------------------------------------
                            575 ; overlayable items in internal ram 
                            576 ;--------------------------------------------------------
                            577 ;--------------------------------------------------------
                            578 ; Stack segment in internal ram 
                            579 ;--------------------------------------------------------
                            580 	.area	SSEG	(DATA)
   008C                     581 __start__stack:
   008C                     582 	.ds	1
                            583 
                            584 ;--------------------------------------------------------
                            585 ; indirectly addressable internal ram data
                            586 ;--------------------------------------------------------
                            587 	.area ISEG    (DATA)
                            588 ;--------------------------------------------------------
                            589 ; absolute internal ram data
                            590 ;--------------------------------------------------------
                            591 	.area IABS    (ABS,DATA)
                            592 	.area IABS    (ABS,DATA)
                            593 ;--------------------------------------------------------
                            594 ; bit data
                            595 ;--------------------------------------------------------
                            596 	.area BSEG    (BIT)
   0004                     597 _feature_golay::
   0004                     598 	.ds 1
   0005                     599 _feature_opportunistic_resend::
   0005                     600 	.ds 1
   0006                     601 _feature_mavlink_framing::
   0006                     602 	.ds 1
   0007                     603 _feature_rtscts::
   0007                     604 	.ds 1
                            605 ;--------------------------------------------------------
                            606 ; paged external ram data
                            607 ;--------------------------------------------------------
                            608 	.area PSEG    (PAG,XDATA)
   0032                     609 _g_board_frequency::
   0032                     610 	.ds 1
   0033                     611 _g_board_bl_version::
   0033                     612 	.ds 1
   0034                     613 _errors::
   0034                     614 	.ds 12
   0040                     615 _statistics::
   0040                     616 	.ds 4
   0044                     617 _remote_statistics::
   0044                     618 	.ds 4
   0048                     619 _radio_init_freq_min_1_151:
   0048                     620 	.ds 4
   004C                     621 _radio_init_freq_max_1_151:
   004C                     622 	.ds 4
   0050                     623 _radio_init_channel_spacing_1_151:
   0050                     624 	.ds 4
   0054                     625 _radio_init_txpower_1_151:
   0054                     626 	.ds 1
                            627 ;--------------------------------------------------------
                            628 ; external ram data
                            629 ;--------------------------------------------------------
                            630 	.area XSEG    (XDATA)
                            631 ;--------------------------------------------------------
                            632 ; absolute external ram data
                            633 ;--------------------------------------------------------
                            634 	.area XABS    (ABS,XDATA)
                            635 ;--------------------------------------------------------
                            636 ; external initialized ram data
                            637 ;--------------------------------------------------------
                            638 	.area XISEG   (XDATA)
                            639 	.area HOME    (CODE)
                            640 	.area GSINIT0 (CODE)
                            641 	.area GSINIT1 (CODE)
                            642 	.area GSINIT2 (CODE)
                            643 	.area GSINIT3 (CODE)
                            644 	.area GSINIT4 (CODE)
                            645 	.area GSINIT5 (CODE)
                            646 	.area GSINIT  (CODE)
                            647 	.area GSFINAL (CODE)
                            648 	.area CSEG    (CODE)
                            649 ;--------------------------------------------------------
                            650 ; interrupt vector 
                            651 ;--------------------------------------------------------
                            652 	.area HOME    (CODE)
   0400                     653 __interrupt_vect:
   0400 02 04 79      [24]  654 	ljmp	__sdcc_gsinit_startup
   0403 02 3D 86      [24]  655 	ljmp	_Receiver_ISR
   0406                     656 	.ds	5
   040B 32            [24]  657 	reti
   040C                     658 	.ds	7
   0413 32            [24]  659 	reti
   0414                     660 	.ds	7
   041B 32            [24]  661 	reti
   041C                     662 	.ds	7
   0423 02 3E CC      [24]  663 	ljmp	_serial_interrupt
   0426                     664 	.ds	5
   042B 02 56 9C      [24]  665 	ljmp	_T2_ISR
   042E                     666 	.ds	5
   0433 32            [24]  667 	reti
   0434                     668 	.ds	7
   043B 32            [24]  669 	reti
   043C                     670 	.ds	7
   0443 32            [24]  671 	reti
   0444                     672 	.ds	7
   044B 32            [24]  673 	reti
   044C                     674 	.ds	7
   0453 32            [24]  675 	reti
   0454                     676 	.ds	7
   045B 32            [24]  677 	reti
   045C                     678 	.ds	7
   0463 32            [24]  679 	reti
   0464                     680 	.ds	7
   046B 32            [24]  681 	reti
   046C                     682 	.ds	7
   0473 02 56 12      [24]  683 	ljmp	_T3_ISR
                            684 ;--------------------------------------------------------
                            685 ; global & static initialisations
                            686 ;--------------------------------------------------------
                            687 	.area HOME    (CODE)
                            688 	.area GSINIT  (CODE)
                            689 	.area GSFINAL (CODE)
                            690 	.area GSINIT  (CODE)
                            691 	.globl __sdcc_gsinit_startup
                            692 	.globl __sdcc_program_startup
                            693 	.globl __start__stack
                            694 	.globl __mcs51_genXINIT
                            695 	.globl __mcs51_genXRAMCLEAR
                            696 	.globl __mcs51_genRAMCLEAR
                            697 	.area GSFINAL (CODE)
   04F6 02 04 76      [24]  698 	ljmp	__sdcc_program_startup
                            699 ;--------------------------------------------------------
                            700 ; Home
                            701 ;--------------------------------------------------------
                            702 	.area HOME    (CODE)
                            703 	.area HOME    (CODE)
   0476                     704 __sdcc_program_startup:
   0476 02 11 72      [24]  705 	ljmp	_main
                            706 ;	return from main will return to caller
                            707 ;--------------------------------------------------------
                            708 ; code
                            709 ;--------------------------------------------------------
                            710 	.area CSEG    (CODE)
                            711 ;------------------------------------------------------------
                            712 ;Allocation info for local variables in function 'main'
                            713 ;------------------------------------------------------------
                            714 ;	radio/main.c:97: main(void)
                            715 ;	-----------------------------------------
                            716 ;	 function main
                            717 ;	-----------------------------------------
   1172                     718 _main:
                     0007   719 	ar7 = 0x07
                     0006   720 	ar6 = 0x06
                     0005   721 	ar5 = 0x05
                     0004   722 	ar4 = 0x04
                     0003   723 	ar3 = 0x03
                     0002   724 	ar2 = 0x02
                     0001   725 	ar1 = 0x01
                     0000   726 	ar0 = 0x00
                            727 ;	radio/main.c:102: g_board_frequency = BOARD_FREQUENCY_REG;
   1172 AF C4         [24]  728 	mov	r7,_ADC0GTH
   1174 78 32         [12]  729 	mov	r0,#_g_board_frequency
   1176 EF            [12]  730 	mov	a,r7
   1177 F2            [24]  731 	movx	@r0,a
                            732 ;	radio/main.c:103: g_board_bl_version = BOARD_BL_VERSION_REG;
   1178 AF C3         [24]  733 	mov	r7,_ADC0GTL
   117A 78 33         [12]  734 	mov	r0,#_g_board_bl_version
   117C EF            [12]  735 	mov	a,r7
   117D F2            [24]  736 	movx	@r0,a
                            737 ;	radio/main.c:107: param_load();
   117E 12 27 94      [24]  738 	lcall	_param_load
                            739 ;	radio/main.c:110: feature_mavlink_framing = param_get(PARAM_MAVLINK)?true:false;
   1181 75 82 06      [24]  740 	mov	dpl,#0x06
   1184 12 27 66      [24]  741 	lcall	_param_get
   1187 AC 82         [24]  742 	mov	r4,dpl
   1189 AD 83         [24]  743 	mov	r5,dph
   118B AE F0         [24]  744 	mov	r6,b
   118D FF            [12]  745 	mov	r7,a
   118E EC            [12]  746 	mov	a,r4
   118F 4D            [12]  747 	orl	a,r5
   1190 4E            [12]  748 	orl	a,r6
   1191 4F            [12]  749 	orl	a,r7
   1192 24 FF         [12]  750 	add	a,#0xff
   1194 92 06         [24]  751 	mov	_feature_mavlink_framing,c
                            752 ;	radio/main.c:111: feature_opportunistic_resend = param_get(PARAM_OPPRESEND)?true:false;
   1196 75 82 07      [24]  753 	mov	dpl,#0x07
   1199 12 27 66      [24]  754 	lcall	_param_get
   119C AC 82         [24]  755 	mov	r4,dpl
   119E AD 83         [24]  756 	mov	r5,dph
   11A0 AE F0         [24]  757 	mov	r6,b
   11A2 FF            [12]  758 	mov	r7,a
   11A3 EC            [12]  759 	mov	a,r4
   11A4 4D            [12]  760 	orl	a,r5
   11A5 4E            [12]  761 	orl	a,r6
   11A6 4F            [12]  762 	orl	a,r7
   11A7 24 FF         [12]  763 	add	a,#0xff
   11A9 92 05         [24]  764 	mov	_feature_opportunistic_resend,c
                            765 ;	radio/main.c:112: feature_golay = param_get(PARAM_ECC)?true:false;
   11AB 75 82 05      [24]  766 	mov	dpl,#0x05
   11AE 12 27 66      [24]  767 	lcall	_param_get
   11B1 AC 82         [24]  768 	mov	r4,dpl
   11B3 AD 83         [24]  769 	mov	r5,dph
   11B5 AE F0         [24]  770 	mov	r6,b
   11B7 FF            [12]  771 	mov	r7,a
   11B8 EC            [12]  772 	mov	a,r4
   11B9 4D            [12]  773 	orl	a,r5
   11BA 4E            [12]  774 	orl	a,r6
   11BB 4F            [12]  775 	orl	a,r7
   11BC 24 FF         [12]  776 	add	a,#0xff
   11BE 92 04         [24]  777 	mov	_feature_golay,c
                            778 ;	radio/main.c:113: feature_rtscts = param_get(PARAM_RTSCTS)?true:false;
   11C0 75 82 0E      [24]  779 	mov	dpl,#0x0E
   11C3 12 27 66      [24]  780 	lcall	_param_get
   11C6 AC 82         [24]  781 	mov	r4,dpl
   11C8 AD 83         [24]  782 	mov	r5,dph
   11CA AE F0         [24]  783 	mov	r6,b
   11CC FF            [12]  784 	mov	r7,a
   11CD EC            [12]  785 	mov	a,r4
   11CE 4D            [12]  786 	orl	a,r5
   11CF 4E            [12]  787 	orl	a,r6
   11D0 4F            [12]  788 	orl	a,r7
   11D1 24 FF         [12]  789 	add	a,#0xff
   11D3 92 07         [24]  790 	mov	_feature_rtscts,c
                            791 ;	radio/main.c:116: hardware_init();
   11D5 12 12 32      [24]  792 	lcall	_hardware_init
                            793 ;	radio/main.c:119: radio_init();
   11D8 12 12 B3      [24]  794 	lcall	_radio_init
                            795 ;	radio/main.c:122: if (!radio_receiver_on()) {
   11DB 12 34 42      [24]  796 	lcall	_radio_receiver_on
   11DE 40 15         [24]  797 	jc	00102$
                            798 ;	radio/main.c:123: panic("failed to enable receiver");
   11E0 74 66         [12]  799 	mov	a,#__str_0
   11E2 C0 E0         [24]  800 	push	acc
   11E4 74 C8         [12]  801 	mov	a,#(__str_0 >> 8)
   11E6 C0 E0         [24]  802 	push	acc
   11E8 74 80         [12]  803 	mov	a,#0x80
   11EA C0 E0         [24]  804 	push	acc
   11EC 12 11 F8      [24]  805 	lcall	_panic
   11EF 15 81         [12]  806 	dec	sp
   11F1 15 81         [12]  807 	dec	sp
   11F3 15 81         [12]  808 	dec	sp
   11F5                     809 00102$:
                            810 ;	radio/main.c:126: tdm_serial_loop();
   11F5 02 4D 3A      [24]  811 	ljmp	_tdm_serial_loop
                            812 ;------------------------------------------------------------
                            813 ;Allocation info for local variables in function 'panic'
                            814 ;------------------------------------------------------------
                            815 ;fmt                       Allocated to stack - sp -4
                            816 ;ap                        Allocated to registers r7 
                            817 ;------------------------------------------------------------
                            818 ;	radio/main.c:130: panic(char *fmt, ...)
                            819 ;	-----------------------------------------
                            820 ;	 function panic
                            821 ;	-----------------------------------------
   11F8                     822 _panic:
                            823 ;	radio/main.c:134: puts("\n**PANIC**");
   11F8 90 C8 80      [24]  824 	mov	dptr,#__str_1
   11FB 75 F0 80      [24]  825 	mov	b,#0x80
   11FE 12 63 19      [24]  826 	lcall	_puts
                            827 ;	radio/main.c:135: va_start(ap, fmt);
   1201 E5 81         [12]  828 	mov	a,sp
   1203 24 FC         [12]  829 	add	a,#0xFC
   1205 FF            [12]  830 	mov	r7,a
                            831 ;	radio/main.c:136: vprintf(fmt, ap);
   1206 C0 07         [24]  832 	push	ar7
   1208 E5 81         [12]  833 	mov	a,sp
   120A 24 FB         [12]  834 	add	a,#0xfb
   120C F8            [12]  835 	mov	r0,a
   120D 86 82         [24]  836 	mov	dpl,@r0
   120F 08            [12]  837 	inc	r0
   1210 86 83         [24]  838 	mov	dph,@r0
   1212 08            [12]  839 	inc	r0
   1213 86 F0         [24]  840 	mov	b,@r0
   1215 12 2B 30      [24]  841 	lcall	_vprintfl
   1218 15 81         [12]  842 	dec	sp
                            843 ;	radio/main.c:137: puts("");
   121A 90 C8 8B      [24]  844 	mov	dptr,#__str_2
   121D 75 F0 80      [24]  845 	mov	b,#0x80
   1220 12 63 19      [24]  846 	lcall	_puts
                            847 ;	radio/main.c:139: EA = 1;
   1223 D2 AF         [12]  848 	setb	_EA
                            849 ;	radio/main.c:140: ES0 = 1;
   1225 D2 AC         [12]  850 	setb	_ES0
                            851 ;	radio/main.c:142: delay_msec(1000);
   1227 90 03 E8      [24]  852 	mov	dptr,#0x03E8
   122A 12 56 93      [24]  853 	lcall	_delay_msec
                            854 ;	radio/main.c:145: RSTSRC |= (1 << 4);
   122D 43 EF 10      [24]  855 	orl	_RSTSRC,#0x10
   1230                     856 00103$:
   1230 80 FE         [24]  857 	sjmp	00103$
                            858 ;------------------------------------------------------------
                            859 ;Allocation info for local variables in function 'hardware_init'
                            860 ;------------------------------------------------------------
                            861 ;	radio/main.c:151: hardware_init(void)
                            862 ;	-----------------------------------------
                            863 ;	 function hardware_init
                            864 ;	-----------------------------------------
   1232                     865 _hardware_init:
                            866 ;	radio/main.c:156: PCA0MD	&= ~0x40;
   1232 AF D9         [24]  867 	mov	r7,_PCA0MD
   1234 74 BF         [12]  868 	mov	a,#0xBF
   1236 5F            [12]  869 	anl	a,r7
   1237 F5 D9         [12]  870 	mov	_PCA0MD,a
                            871 ;	radio/main.c:159: FLSCL	 =  0x40;
   1239 75 B6 40      [24]  872 	mov	_FLSCL,#0x40
                            873 ;	radio/main.c:160: OSCICN	 =  0x8F;
   123C 75 B2 8F      [24]  874 	mov	_OSCICN,#0x8F
                            875 ;	radio/main.c:161: CLKSEL	 =  0x00;
   123F 75 A9 00      [24]  876 	mov	_CLKSEL,#0x00
                            877 ;	radio/main.c:164: VDM0CN	 =  0x80;
   1242 75 FF 80      [24]  878 	mov	_VDM0CN,#0x80
                            879 ;	radio/main.c:165: for (i = 0; i < 350; i++);	// Wait 100us for initialization
   1245 7E 5E         [12]  880 	mov	r6,#0x5E
   1247 7F 01         [12]  881 	mov	r7,#0x01
   1249                     882 00104$:
   1249 1E            [12]  883 	dec	r6
   124A BE FF 01      [24]  884 	cjne	r6,#0xFF,00114$
   124D 1F            [12]  885 	dec	r7
   124E                     886 00114$:
   124E EE            [12]  887 	mov	a,r6
   124F 4F            [12]  888 	orl	a,r7
   1250 70 F7         [24]  889 	jnz	00104$
                            890 ;	radio/main.c:166: RSTSRC	 =  0x06;		// enable brown out and missing clock reset sources
   1252 75 EF 06      [24]  891 	mov	_RSTSRC,#0x06
                            892 ;	radio/main.c:175: P0MDOUT	 =  0x10;		// UART Tx push-pull
   1255 75 A4 10      [24]  893 	mov	_P0MDOUT,#0x10
                            894 ;	radio/main.c:176: SFRPAGE	 =  CONFIG_PAGE;
   1258 75 A7 0F      [24]  895 	mov	_SFRPAGE,#0x0F
                            896 ;	radio/main.c:177: P0DRV	 =  0x10;		// UART TX
   125B 75 A4 10      [24]  897 	mov	_P0DRV,#0x10
                            898 ;	radio/main.c:178: SFRPAGE	 =  LEGACY_PAGE;
   125E 75 A7 00      [24]  899 	mov	_SFRPAGE,#0x00
                            900 ;	radio/main.c:179: XBR0	 =  0x01;		// UART enable
   1261 75 E1 01      [24]  901 	mov	_XBR0,#0x01
                            902 ;	radio/main.c:187: XBR1	|= 0x40;	// enable SPI in 3-wire mode
   1264 43 E2 40      [24]  903 	orl	_XBR1,#0x40
                            904 ;	radio/main.c:188: P1MDOUT	|= 0xF5;	// SCK1, MOSI1, MISO1 push-pull
   1267 43 A5 F5      [24]  905 	orl	_P1MDOUT,#0xF5
                            906 ;	radio/main.c:190: SFRPAGE	 = CONFIG_PAGE;
   126A 75 A7 0F      [24]  907 	mov	_SFRPAGE,#0x0F
                            908 ;	radio/main.c:191: P1DRV	|= 0xF5;	// SPI signals use high-current mode, LEDs and PAEN High current drive
   126D 43 A5 F5      [24]  909 	orl	_P1DRV,#0xF5
                            910 ;	radio/main.c:192: P2DRV	|= 0xFF;	
   1270 E5 A6         [12]  911 	mov	a,_P2DRV
   1272 75 A6 FF      [24]  912 	mov	_P2DRV,#0xFF
                            913 ;	radio/main.c:193: SFRPAGE	 = LEGACY_PAGE;
   1275 75 A7 00      [24]  914 	mov	_SFRPAGE,#0x00
                            915 ;	radio/main.c:194: SPI1CFG	 = 0x40;	// master mode
   1278 75 84 40      [24]  916 	mov	_SPI1CFG,#0x40
                            917 ;	radio/main.c:195: SPI1CN	 = 0x00;	// 3 wire master mode
   127B 75 B0 00      [24]  918 	mov	_SPI1CN,#0x00
                            919 ;	radio/main.c:196: SPI1CKR	 = 0x00;	// Initialise SPI prescaler to divide-by-2 (12.25MHz, technically out of spec)
   127E 75 85 00      [24]  920 	mov	_SPI1CKR,#0x00
                            921 ;	radio/main.c:197: SPI1CN	|= 0x01;	// enable SPI
   1281 43 B0 01      [24]  922 	orl	_SPI1CN,#0x01
                            923 ;	radio/main.c:198: NSS1	 = 1;		// set NSS high
   1284 D2 94         [12]  924 	setb	_NSS1
                            925 ;	radio/main.c:201: IE0	 = 0;
   1286 C2 89         [12]  926 	clr	_IE0
                            927 ;	radio/main.c:204: timer_init();
   1288 12 57 42      [24]  928 	lcall	_timer_init
                            929 ;	radio/main.c:207: serial_init(param_get(PARAM_SERIAL_SPEED));
   128B 75 82 01      [24]  930 	mov	dpl,#0x01
   128E 12 27 66      [24]  931 	lcall	_param_get
   1291 AC 82         [24]  932 	mov	r4,dpl
   1293 8C 82         [24]  933 	mov	dpl,r4
   1295 12 40 34      [24]  934 	lcall	_serial_init
                            935 ;	radio/main.c:210: IP = 0;
   1298 75 B8 00      [24]  936 	mov	_IP,#0x00
                            937 ;	radio/main.c:213: EA = 1;
   129B D2 AF         [12]  938 	setb	_EA
                            939 ;	radio/main.c:216: LED_RADIO = LED_ON;
   129D D2 95         [12]  940 	setb	_LED_GREEN
                            941 ;	radio/main.c:217: LED_BOOTLOADER = LED_OFF;
   129F C2 96         [12]  942 	clr	_LED_RED
                            943 ;	radio/main.c:220: AD0EN = 1;	// Enable ADC0
   12A1 D2 EF         [12]  944 	setb	_AD0EN
                            945 ;	radio/main.c:221: ADC0CF = 0xF9;  // Set amp0gn=1 (1:1)
   12A3 75 BC F9      [24]  946 	mov	_ADC0CF,#0xF9
                            947 ;	radio/main.c:222: ADC0AC = 0x00;
   12A6 75 BA 00      [24]  948 	mov	_ADC0AC,#0x00
                            949 ;	radio/main.c:223: ADC0MX = 0x1B;	// Set ADC0MX to temp sensor
   12A9 75 BB 1B      [24]  950 	mov	_ADC0MX,#0x1B
                            951 ;	radio/main.c:224: REF0CN = 0x07;	// Define reference and enable temp sensor
   12AC 75 D1 07      [24]  952 	mov	_REF0CN,#0x07
                            953 ;	radio/main.c:234: XBR2	 =  0x40;		// Crossbar (GPIO) enable
   12AF 75 E3 40      [24]  954 	mov	_XBR2,#0x40
   12B2 22            [24]  955 	ret
                            956 ;------------------------------------------------------------
                            957 ;Allocation info for local variables in function 'radio_init'
                            958 ;------------------------------------------------------------
                            959 ;	radio/main.c:238: radio_init(void)
                            960 ;	-----------------------------------------
                            961 ;	 function radio_init
                            962 ;	-----------------------------------------
   12B3                     963 _radio_init:
                            964 ;	radio/main.c:245: if (!radio_initialise()) {
   12B3 12 34 81      [24]  965 	lcall	_radio_initialise
   12B6 40 15         [24]  966 	jc	00102$
                            967 ;	radio/main.c:246: panic("radio_initialise failed");
   12B8 74 8C         [12]  968 	mov	a,#__str_3
   12BA C0 E0         [24]  969 	push	acc
   12BC 74 C8         [12]  970 	mov	a,#(__str_3 >> 8)
   12BE C0 E0         [24]  971 	push	acc
   12C0 74 80         [12]  972 	mov	a,#0x80
   12C2 C0 E0         [24]  973 	push	acc
   12C4 12 11 F8      [24]  974 	lcall	_panic
   12C7 15 81         [12]  975 	dec	sp
   12C9 15 81         [12]  976 	dec	sp
   12CB 15 81         [12]  977 	dec	sp
   12CD                     978 00102$:
                            979 ;	radio/main.c:249: switch (g_board_frequency) {
   12CD 78 32         [12]  980 	mov	r0,#_g_board_frequency
   12CF E2            [24]  981 	movx	a,@r0
   12D0 B4 43 02      [24]  982 	cjne	a,#0x43,00193$
   12D3 80 1C         [24]  983 	sjmp	00103$
   12D5                     984 00193$:
   12D5 78 32         [12]  985 	mov	r0,#_g_board_frequency
   12D7 E2            [24]  986 	movx	a,@r0
   12D8 B4 47 02      [24]  987 	cjne	a,#0x47,00194$
   12DB 80 43         [24]  988 	sjmp	00104$
   12DD                     989 00194$:
   12DD 78 32         [12]  990 	mov	r0,#_g_board_frequency
   12DF E2            [24]  991 	movx	a,@r0
   12E0 B4 86 02      [24]  992 	cjne	a,#0x86,00195$
   12E3 80 6A         [24]  993 	sjmp	00105$
   12E5                     994 00195$:
   12E5 78 32         [12]  995 	mov	r0,#_g_board_frequency
   12E7 E2            [24]  996 	movx	a,@r0
   12E8 B4 91 03      [24]  997 	cjne	a,#0x91,00196$
   12EB 02 13 7C      [24]  998 	ljmp	00106$
   12EE                     999 00196$:
   12EE 02 13 A9      [24] 1000 	ljmp	00107$
                           1001 ;	radio/main.c:250: case FREQ_433:
   12F1                    1002 00103$:
                           1003 ;	radio/main.c:251: freq_min = 433050000UL;
   12F1 78 48         [12] 1004 	mov	r0,#_radio_init_freq_min_1_151
   12F3 74 90         [12] 1005 	mov	a,#0x90
   12F5 F2            [24] 1006 	movx	@r0,a
   12F6 08            [12] 1007 	inc	r0
   12F7 74 D1         [12] 1008 	mov	a,#0xD1
   12F9 F2            [24] 1009 	movx	@r0,a
   12FA 08            [12] 1010 	inc	r0
   12FB 74 CF         [12] 1011 	mov	a,#0xCF
   12FD F2            [24] 1012 	movx	@r0,a
   12FE 08            [12] 1013 	inc	r0
   12FF 74 19         [12] 1014 	mov	a,#0x19
   1301 F2            [24] 1015 	movx	@r0,a
                           1016 ;	radio/main.c:252: freq_max = 434790000UL;
   1302 78 4C         [12] 1017 	mov	r0,#_radio_init_freq_max_1_151
   1304 74 70         [12] 1018 	mov	a,#0x70
   1306 F2            [24] 1019 	movx	@r0,a
   1307 08            [12] 1020 	inc	r0
   1308 74 5E         [12] 1021 	mov	a,#0x5E
   130A F2            [24] 1022 	movx	@r0,a
   130B 08            [12] 1023 	inc	r0
   130C 74 EA         [12] 1024 	mov	a,#0xEA
   130E F2            [24] 1025 	movx	@r0,a
   130F 08            [12] 1026 	inc	r0
   1310 74 19         [12] 1027 	mov	a,#0x19
   1312 F2            [24] 1028 	movx	@r0,a
                           1029 ;	radio/main.c:253: txpower = 10;
   1313 78 54         [12] 1030 	mov	r0,#_radio_init_txpower_1_151
   1315 74 0A         [12] 1031 	mov	a,#0x0A
   1317 F2            [24] 1032 	movx	@r0,a
                           1033 ;	radio/main.c:254: num_fh_channels = 10;
   1318 78 18         [12] 1034 	mov	r0,#_num_fh_channels
   131A 74 0A         [12] 1035 	mov	a,#0x0A
   131C F2            [24] 1036 	movx	@r0,a
                           1037 ;	radio/main.c:255: break;
   131D 02 13 E0      [24] 1038 	ljmp	00108$
                           1039 ;	radio/main.c:256: case FREQ_470:
   1320                    1040 00104$:
                           1041 ;	radio/main.c:257: freq_min = 470000000UL;
   1320 78 48         [12] 1042 	mov	r0,#_radio_init_freq_min_1_151
   1322 74 80         [12] 1043 	mov	a,#0x80
   1324 F2            [24] 1044 	movx	@r0,a
   1325 08            [12] 1045 	inc	r0
   1326 74 A1         [12] 1046 	mov	a,#0xA1
   1328 F2            [24] 1047 	movx	@r0,a
   1329 08            [12] 1048 	inc	r0
   132A 74 03         [12] 1049 	mov	a,#0x03
   132C F2            [24] 1050 	movx	@r0,a
   132D 08            [12] 1051 	inc	r0
   132E 74 1C         [12] 1052 	mov	a,#0x1C
   1330 F2            [24] 1053 	movx	@r0,a
                           1054 ;	radio/main.c:258: freq_max = 471000000UL;
   1331 78 4C         [12] 1055 	mov	r0,#_radio_init_freq_max_1_151
   1333 74 C0         [12] 1056 	mov	a,#0xC0
   1335 F2            [24] 1057 	movx	@r0,a
   1336 08            [12] 1058 	inc	r0
   1337 74 E3         [12] 1059 	mov	a,#0xE3
   1339 F2            [24] 1060 	movx	@r0,a
   133A 08            [12] 1061 	inc	r0
   133B 74 12         [12] 1062 	mov	a,#0x12
   133D F2            [24] 1063 	movx	@r0,a
   133E 08            [12] 1064 	inc	r0
   133F 74 1C         [12] 1065 	mov	a,#0x1C
   1341 F2            [24] 1066 	movx	@r0,a
                           1067 ;	radio/main.c:259: txpower = 10;
   1342 78 54         [12] 1068 	mov	r0,#_radio_init_txpower_1_151
   1344 74 0A         [12] 1069 	mov	a,#0x0A
   1346 F2            [24] 1070 	movx	@r0,a
                           1071 ;	radio/main.c:260: num_fh_channels = 10;
   1347 78 18         [12] 1072 	mov	r0,#_num_fh_channels
   1349 74 0A         [12] 1073 	mov	a,#0x0A
   134B F2            [24] 1074 	movx	@r0,a
                           1075 ;	radio/main.c:261: break;
   134C 02 13 E0      [24] 1076 	ljmp	00108$
                           1077 ;	radio/main.c:262: case FREQ_868:
   134F                    1078 00105$:
                           1079 ;	radio/main.c:263: freq_min = 868000000UL;
   134F 78 48         [12] 1080 	mov	r0,#_radio_init_freq_min_1_151
   1351 E4            [12] 1081 	clr	a
   1352 F2            [24] 1082 	movx	@r0,a
   1353 08            [12] 1083 	inc	r0
   1354 74 A1         [12] 1084 	mov	a,#0xA1
   1356 F2            [24] 1085 	movx	@r0,a
   1357 08            [12] 1086 	inc	r0
   1358 74 BC         [12] 1087 	mov	a,#0xBC
   135A F2            [24] 1088 	movx	@r0,a
   135B 08            [12] 1089 	inc	r0
   135C 74 33         [12] 1090 	mov	a,#0x33
   135E F2            [24] 1091 	movx	@r0,a
                           1092 ;	radio/main.c:264: freq_max = 869000000UL;
   135F 78 4C         [12] 1093 	mov	r0,#_radio_init_freq_max_1_151
   1361 74 40         [12] 1094 	mov	a,#0x40
   1363 F2            [24] 1095 	movx	@r0,a
   1364 08            [12] 1096 	inc	r0
   1365 74 E3         [12] 1097 	mov	a,#0xE3
   1367 F2            [24] 1098 	movx	@r0,a
   1368 08            [12] 1099 	inc	r0
   1369 74 CB         [12] 1100 	mov	a,#0xCB
   136B F2            [24] 1101 	movx	@r0,a
   136C 08            [12] 1102 	inc	r0
   136D 74 33         [12] 1103 	mov	a,#0x33
   136F F2            [24] 1104 	movx	@r0,a
                           1105 ;	radio/main.c:265: txpower = 10;
   1370 78 54         [12] 1106 	mov	r0,#_radio_init_txpower_1_151
   1372 74 0A         [12] 1107 	mov	a,#0x0A
   1374 F2            [24] 1108 	movx	@r0,a
                           1109 ;	radio/main.c:266: num_fh_channels = 10;
   1375 78 18         [12] 1110 	mov	r0,#_num_fh_channels
   1377 74 0A         [12] 1111 	mov	a,#0x0A
   1379 F2            [24] 1112 	movx	@r0,a
                           1113 ;	radio/main.c:267: break;
                           1114 ;	radio/main.c:268: case FREQ_915:
   137A 80 64         [24] 1115 	sjmp	00108$
   137C                    1116 00106$:
                           1117 ;	radio/main.c:269: freq_min = 915000000UL;
   137C 78 48         [12] 1118 	mov	r0,#_radio_init_freq_min_1_151
   137E 74 C0         [12] 1119 	mov	a,#0xC0
   1380 F2            [24] 1120 	movx	@r0,a
   1381 08            [12] 1121 	inc	r0
   1382 74 CA         [12] 1122 	mov	a,#0xCA
   1384 F2            [24] 1123 	movx	@r0,a
   1385 08            [12] 1124 	inc	r0
   1386 74 89         [12] 1125 	mov	a,#0x89
   1388 F2            [24] 1126 	movx	@r0,a
   1389 08            [12] 1127 	inc	r0
   138A 74 36         [12] 1128 	mov	a,#0x36
   138C F2            [24] 1129 	movx	@r0,a
                           1130 ;	radio/main.c:270: freq_max = 928000000UL;
   138D 78 4C         [12] 1131 	mov	r0,#_radio_init_freq_max_1_151
   138F E4            [12] 1132 	clr	a
   1390 F2            [24] 1133 	movx	@r0,a
   1391 08            [12] 1134 	inc	r0
   1392 74 28         [12] 1135 	mov	a,#0x28
   1394 F2            [24] 1136 	movx	@r0,a
   1395 08            [12] 1137 	inc	r0
   1396 74 50         [12] 1138 	mov	a,#0x50
   1398 F2            [24] 1139 	movx	@r0,a
   1399 08            [12] 1140 	inc	r0
   139A 74 37         [12] 1141 	mov	a,#0x37
   139C F2            [24] 1142 	movx	@r0,a
                           1143 ;	radio/main.c:271: txpower = 20;
   139D 78 54         [12] 1144 	mov	r0,#_radio_init_txpower_1_151
   139F 74 14         [12] 1145 	mov	a,#0x14
   13A1 F2            [24] 1146 	movx	@r0,a
                           1147 ;	radio/main.c:272: num_fh_channels = MAX_FREQ_CHANNELS;
   13A2 78 18         [12] 1148 	mov	r0,#_num_fh_channels
   13A4 74 32         [12] 1149 	mov	a,#0x32
   13A6 F2            [24] 1150 	movx	@r0,a
                           1151 ;	radio/main.c:273: break;
                           1152 ;	radio/main.c:274: default:
   13A7 80 37         [24] 1153 	sjmp	00108$
   13A9                    1154 00107$:
                           1155 ;	radio/main.c:275: freq_min = 0;
   13A9 78 48         [12] 1156 	mov	r0,#_radio_init_freq_min_1_151
   13AB E4            [12] 1157 	clr	a
   13AC F2            [24] 1158 	movx	@r0,a
   13AD 08            [12] 1159 	inc	r0
   13AE F2            [24] 1160 	movx	@r0,a
   13AF 08            [12] 1161 	inc	r0
   13B0 F2            [24] 1162 	movx	@r0,a
   13B1 08            [12] 1163 	inc	r0
   13B2 F2            [24] 1164 	movx	@r0,a
                           1165 ;	radio/main.c:276: freq_max = 0;
   13B3 78 4C         [12] 1166 	mov	r0,#_radio_init_freq_max_1_151
   13B5 E4            [12] 1167 	clr	a
   13B6 F2            [24] 1168 	movx	@r0,a
   13B7 08            [12] 1169 	inc	r0
   13B8 F2            [24] 1170 	movx	@r0,a
   13B9 08            [12] 1171 	inc	r0
   13BA F2            [24] 1172 	movx	@r0,a
   13BB 08            [12] 1173 	inc	r0
   13BC F2            [24] 1174 	movx	@r0,a
                           1175 ;	radio/main.c:277: txpower = 0;
   13BD 78 54         [12] 1176 	mov	r0,#_radio_init_txpower_1_151
   13BF E4            [12] 1177 	clr	a
   13C0 F2            [24] 1178 	movx	@r0,a
                           1179 ;	radio/main.c:278: panic("bad board frequency %d", g_board_frequency);
   13C1 78 32         [12] 1180 	mov	r0,#_g_board_frequency
   13C3 E2            [24] 1181 	movx	a,@r0
   13C4 FA            [12] 1182 	mov	r2,a
   13C5 7B 00         [12] 1183 	mov	r3,#0x00
   13C7 C0 02         [24] 1184 	push	ar2
   13C9 C0 03         [24] 1185 	push	ar3
   13CB 74 A4         [12] 1186 	mov	a,#__str_4
   13CD C0 E0         [24] 1187 	push	acc
   13CF 74 C8         [12] 1188 	mov	a,#(__str_4 >> 8)
   13D1 C0 E0         [24] 1189 	push	acc
   13D3 74 80         [12] 1190 	mov	a,#0x80
   13D5 C0 E0         [24] 1191 	push	acc
   13D7 12 11 F8      [24] 1192 	lcall	_panic
   13DA E5 81         [12] 1193 	mov	a,sp
   13DC 24 FB         [12] 1194 	add	a,#0xfb
   13DE F5 81         [12] 1195 	mov	sp,a
                           1196 ;	radio/main.c:280: }
   13E0                    1197 00108$:
                           1198 ;	radio/main.c:282: if (param_get(PARAM_NUM_CHANNELS) != 0) {
   13E0 75 82 0A      [24] 1199 	mov	dpl,#0x0A
   13E3 12 27 66      [24] 1200 	lcall	_param_get
   13E6 AA 82         [24] 1201 	mov	r2,dpl
   13E8 AB 83         [24] 1202 	mov	r3,dph
   13EA AE F0         [24] 1203 	mov	r6,b
   13EC FF            [12] 1204 	mov	r7,a
   13ED EA            [12] 1205 	mov	a,r2
   13EE 4B            [12] 1206 	orl	a,r3
   13EF 4E            [12] 1207 	orl	a,r6
   13F0 4F            [12] 1208 	orl	a,r7
   13F1 60 11         [24] 1209 	jz	00110$
                           1210 ;	radio/main.c:283: num_fh_channels = param_get(PARAM_NUM_CHANNELS);
   13F3 75 82 0A      [24] 1211 	mov	dpl,#0x0A
   13F6 12 27 66      [24] 1212 	lcall	_param_get
   13F9 AC 82         [24] 1213 	mov	r4,dpl
   13FB AD 83         [24] 1214 	mov	r5,dph
   13FD AE F0         [24] 1215 	mov	r6,b
   13FF FF            [12] 1216 	mov	r7,a
   1400 78 18         [12] 1217 	mov	r0,#_num_fh_channels
   1402 EC            [12] 1218 	mov	a,r4
   1403 F2            [24] 1219 	movx	@r0,a
   1404                    1220 00110$:
                           1221 ;	radio/main.c:285: if (param_get(PARAM_MIN_FREQ) != 0) {
   1404 75 82 08      [24] 1222 	mov	dpl,#0x08
   1407 12 27 66      [24] 1223 	lcall	_param_get
   140A AC 82         [24] 1224 	mov	r4,dpl
   140C AD 83         [24] 1225 	mov	r5,dph
   140E AE F0         [24] 1226 	mov	r6,b
   1410 FF            [12] 1227 	mov	r7,a
   1411 EC            [12] 1228 	mov	a,r4
   1412 4D            [12] 1229 	orl	a,r5
   1413 4E            [12] 1230 	orl	a,r6
   1414 4F            [12] 1231 	orl	a,r7
   1415 60 37         [24] 1232 	jz	00112$
                           1233 ;	radio/main.c:286: freq_min        = param_get(PARAM_MIN_FREQ) * 1000UL;
   1417 75 82 08      [24] 1234 	mov	dpl,#0x08
   141A 12 27 66      [24] 1235 	lcall	_param_get
   141D AC 82         [24] 1236 	mov	r4,dpl
   141F AD 83         [24] 1237 	mov	r5,dph
   1421 AE F0         [24] 1238 	mov	r6,b
   1423 FF            [12] 1239 	mov	r7,a
   1424 90 05 D7      [24] 1240 	mov	dptr,#__mullong_PARM_2
   1427 EC            [12] 1241 	mov	a,r4
   1428 F0            [24] 1242 	movx	@dptr,a
   1429 ED            [12] 1243 	mov	a,r5
   142A A3            [24] 1244 	inc	dptr
   142B F0            [24] 1245 	movx	@dptr,a
   142C EE            [12] 1246 	mov	a,r6
   142D A3            [24] 1247 	inc	dptr
   142E F0            [24] 1248 	movx	@dptr,a
   142F EF            [12] 1249 	mov	a,r7
   1430 A3            [24] 1250 	inc	dptr
   1431 F0            [24] 1251 	movx	@dptr,a
   1432 90 03 E8      [24] 1252 	mov	dptr,#0x03E8
   1435 E4            [12] 1253 	clr	a
   1436 F5 F0         [12] 1254 	mov	b,a
   1438 12 5F 98      [24] 1255 	lcall	__mullong
   143B 78 48         [12] 1256 	mov	r0,#_radio_init_freq_min_1_151
   143D C0 E0         [24] 1257 	push	acc
   143F E5 82         [12] 1258 	mov	a,dpl
   1441 F2            [24] 1259 	movx	@r0,a
   1442 08            [12] 1260 	inc	r0
   1443 E5 83         [12] 1261 	mov	a,dph
   1445 F2            [24] 1262 	movx	@r0,a
   1446 08            [12] 1263 	inc	r0
   1447 E5 F0         [12] 1264 	mov	a,b
   1449 F2            [24] 1265 	movx	@r0,a
   144A D0 E0         [24] 1266 	pop	acc
   144C 08            [12] 1267 	inc	r0
   144D F2            [24] 1268 	movx	@r0,a
   144E                    1269 00112$:
                           1270 ;	radio/main.c:288: if (param_get(PARAM_MAX_FREQ) != 0) {
   144E 75 82 09      [24] 1271 	mov	dpl,#0x09
   1451 12 27 66      [24] 1272 	lcall	_param_get
   1454 AC 82         [24] 1273 	mov	r4,dpl
   1456 AD 83         [24] 1274 	mov	r5,dph
   1458 AE F0         [24] 1275 	mov	r6,b
   145A FF            [12] 1276 	mov	r7,a
   145B EC            [12] 1277 	mov	a,r4
   145C 4D            [12] 1278 	orl	a,r5
   145D 4E            [12] 1279 	orl	a,r6
   145E 4F            [12] 1280 	orl	a,r7
   145F 60 37         [24] 1281 	jz	00114$
                           1282 ;	radio/main.c:289: freq_max        = param_get(PARAM_MAX_FREQ) * 1000UL;
   1461 75 82 09      [24] 1283 	mov	dpl,#0x09
   1464 12 27 66      [24] 1284 	lcall	_param_get
   1467 AC 82         [24] 1285 	mov	r4,dpl
   1469 AD 83         [24] 1286 	mov	r5,dph
   146B AE F0         [24] 1287 	mov	r6,b
   146D FF            [12] 1288 	mov	r7,a
   146E 90 05 D7      [24] 1289 	mov	dptr,#__mullong_PARM_2
   1471 EC            [12] 1290 	mov	a,r4
   1472 F0            [24] 1291 	movx	@dptr,a
   1473 ED            [12] 1292 	mov	a,r5
   1474 A3            [24] 1293 	inc	dptr
   1475 F0            [24] 1294 	movx	@dptr,a
   1476 EE            [12] 1295 	mov	a,r6
   1477 A3            [24] 1296 	inc	dptr
   1478 F0            [24] 1297 	movx	@dptr,a
   1479 EF            [12] 1298 	mov	a,r7
   147A A3            [24] 1299 	inc	dptr
   147B F0            [24] 1300 	movx	@dptr,a
   147C 90 03 E8      [24] 1301 	mov	dptr,#0x03E8
   147F E4            [12] 1302 	clr	a
   1480 F5 F0         [12] 1303 	mov	b,a
   1482 12 5F 98      [24] 1304 	lcall	__mullong
   1485 78 4C         [12] 1305 	mov	r0,#_radio_init_freq_max_1_151
   1487 C0 E0         [24] 1306 	push	acc
   1489 E5 82         [12] 1307 	mov	a,dpl
   148B F2            [24] 1308 	movx	@r0,a
   148C 08            [12] 1309 	inc	r0
   148D E5 83         [12] 1310 	mov	a,dph
   148F F2            [24] 1311 	movx	@r0,a
   1490 08            [12] 1312 	inc	r0
   1491 E5 F0         [12] 1313 	mov	a,b
   1493 F2            [24] 1314 	movx	@r0,a
   1494 D0 E0         [24] 1315 	pop	acc
   1496 08            [12] 1316 	inc	r0
   1497 F2            [24] 1317 	movx	@r0,a
   1498                    1318 00114$:
                           1319 ;	radio/main.c:291: if (param_get(PARAM_TXPOWER) != 0) {
   1498 75 82 04      [24] 1320 	mov	dpl,#0x04
   149B 12 27 66      [24] 1321 	lcall	_param_get
   149E AC 82         [24] 1322 	mov	r4,dpl
   14A0 AD 83         [24] 1323 	mov	r5,dph
   14A2 AE F0         [24] 1324 	mov	r6,b
   14A4 FF            [12] 1325 	mov	r7,a
   14A5 EC            [12] 1326 	mov	a,r4
   14A6 4D            [12] 1327 	orl	a,r5
   14A7 4E            [12] 1328 	orl	a,r6
   14A8 4F            [12] 1329 	orl	a,r7
   14A9 60 11         [24] 1330 	jz	00116$
                           1331 ;	radio/main.c:292: txpower = param_get(PARAM_TXPOWER);
   14AB 75 82 04      [24] 1332 	mov	dpl,#0x04
   14AE 12 27 66      [24] 1333 	lcall	_param_get
   14B1 AC 82         [24] 1334 	mov	r4,dpl
   14B3 AD 83         [24] 1335 	mov	r5,dph
   14B5 AE F0         [24] 1336 	mov	r6,b
   14B7 FF            [12] 1337 	mov	r7,a
   14B8 78 54         [12] 1338 	mov	r0,#_radio_init_txpower_1_151
   14BA EC            [12] 1339 	mov	a,r4
   14BB F2            [24] 1340 	movx	@r0,a
   14BC                    1341 00116$:
                           1342 ;	radio/main.c:296: txpower = constrain(txpower, BOARD_MINTXPOWER, BOARD_MAXTXPOWER);
   14BC 78 54         [12] 1343 	mov	r0,#_radio_init_txpower_1_151
   14BE E2            [24] 1344 	movx	a,@r0
   14BF FB            [12] 1345 	mov	r3,a
   14C0 7D 00         [12] 1346 	mov	r5,#0x00
   14C2 7E 00         [12] 1347 	mov	r6,#0x00
   14C4 7F 00         [12] 1348 	mov	r7,#0x00
   14C6 78 6F         [12] 1349 	mov	r0,#_constrain_PARM_2
   14C8 74 11         [12] 1350 	mov	a,#0x11
   14CA F2            [24] 1351 	movx	@r0,a
   14CB 08            [12] 1352 	inc	r0
   14CC E4            [12] 1353 	clr	a
   14CD F2            [24] 1354 	movx	@r0,a
   14CE 08            [12] 1355 	inc	r0
   14CF F2            [24] 1356 	movx	@r0,a
   14D0 08            [12] 1357 	inc	r0
   14D1 F2            [24] 1358 	movx	@r0,a
   14D2 78 73         [12] 1359 	mov	r0,#_constrain_PARM_3
   14D4 74 1E         [12] 1360 	mov	a,#0x1E
   14D6 F2            [24] 1361 	movx	@r0,a
   14D7 08            [12] 1362 	inc	r0
   14D8 E4            [12] 1363 	clr	a
   14D9 F2            [24] 1364 	movx	@r0,a
   14DA 08            [12] 1365 	inc	r0
   14DB F2            [24] 1366 	movx	@r0,a
   14DC 08            [12] 1367 	inc	r0
   14DD F2            [24] 1368 	movx	@r0,a
   14DE 8B 82         [24] 1369 	mov	dpl,r3
   14E0 8D 83         [24] 1370 	mov	dph,r5
   14E2 8E F0         [24] 1371 	mov	b,r6
   14E4 EF            [12] 1372 	mov	a,r7
   14E5 12 2A 74      [24] 1373 	lcall	_constrain
   14E8 AC 82         [24] 1374 	mov	r4,dpl
   14EA 78 54         [12] 1375 	mov	r0,#_radio_init_txpower_1_151
   14EC EC            [12] 1376 	mov	a,r4
   14ED F2            [24] 1377 	movx	@r0,a
                           1378 ;	radio/main.c:297: num_fh_channels = constrain(num_fh_channels, 1, MAX_FREQ_CHANNELS);
   14EE 78 18         [12] 1379 	mov	r0,#_num_fh_channels
   14F0 E2            [24] 1380 	movx	a,@r0
   14F1 FC            [12] 1381 	mov	r4,a
   14F2 7D 00         [12] 1382 	mov	r5,#0x00
   14F4 7E 00         [12] 1383 	mov	r6,#0x00
   14F6 7F 00         [12] 1384 	mov	r7,#0x00
   14F8 78 6F         [12] 1385 	mov	r0,#_constrain_PARM_2
   14FA 74 01         [12] 1386 	mov	a,#0x01
   14FC F2            [24] 1387 	movx	@r0,a
   14FD 08            [12] 1388 	inc	r0
   14FE E4            [12] 1389 	clr	a
   14FF F2            [24] 1390 	movx	@r0,a
   1500 08            [12] 1391 	inc	r0
   1501 F2            [24] 1392 	movx	@r0,a
   1502 08            [12] 1393 	inc	r0
   1503 F2            [24] 1394 	movx	@r0,a
   1504 78 73         [12] 1395 	mov	r0,#_constrain_PARM_3
   1506 74 32         [12] 1396 	mov	a,#0x32
   1508 F2            [24] 1397 	movx	@r0,a
   1509 08            [12] 1398 	inc	r0
   150A E4            [12] 1399 	clr	a
   150B F2            [24] 1400 	movx	@r0,a
   150C 08            [12] 1401 	inc	r0
   150D F2            [24] 1402 	movx	@r0,a
   150E 08            [12] 1403 	inc	r0
   150F F2            [24] 1404 	movx	@r0,a
   1510 8C 82         [24] 1405 	mov	dpl,r4
   1512 8D 83         [24] 1406 	mov	dph,r5
   1514 8E F0         [24] 1407 	mov	b,r6
   1516 EF            [12] 1408 	mov	a,r7
   1517 12 2A 74      [24] 1409 	lcall	_constrain
   151A AC 82         [24] 1410 	mov	r4,dpl
   151C AD 83         [24] 1411 	mov	r5,dph
   151E AE F0         [24] 1412 	mov	r6,b
   1520 FF            [12] 1413 	mov	r7,a
   1521 78 18         [12] 1414 	mov	r0,#_num_fh_channels
   1523 EC            [12] 1415 	mov	a,r4
   1524 F2            [24] 1416 	movx	@r0,a
                           1417 ;	radio/main.c:300: switch (g_board_frequency) {
   1525 78 32         [12] 1418 	mov	r0,#_g_board_frequency
   1527 E2            [24] 1419 	movx	a,@r0
   1528 B4 43 02      [24] 1420 	cjne	a,#0x43,00201$
   152B 80 1E         [24] 1421 	sjmp	00117$
   152D                    1422 00201$:
   152D 78 32         [12] 1423 	mov	r0,#_g_board_frequency
   152F E2            [24] 1424 	movx	a,@r0
   1530 B4 47 03      [24] 1425 	cjne	a,#0x47,00202$
   1533 02 15 DA      [24] 1426 	ljmp	00118$
   1536                    1427 00202$:
   1536 78 32         [12] 1428 	mov	r0,#_g_board_frequency
   1538 E2            [24] 1429 	movx	a,@r0
   1539 B4 86 03      [24] 1430 	cjne	a,#0x86,00203$
   153C 02 16 6B      [24] 1431 	ljmp	00119$
   153F                    1432 00203$:
   153F 78 32         [12] 1433 	mov	r0,#_g_board_frequency
   1541 E2            [24] 1434 	movx	a,@r0
   1542 B4 91 03      [24] 1435 	cjne	a,#0x91,00204$
   1545 02 16 FC      [24] 1436 	ljmp	00120$
   1548                    1437 00204$:
   1548 02 17 8A      [24] 1438 	ljmp	00121$
                           1439 ;	radio/main.c:301: case FREQ_433:
   154B                    1440 00117$:
                           1441 ;	radio/main.c:302: freq_min = constrain(freq_min, 414000000UL, 460000000UL);
   154B 78 6F         [12] 1442 	mov	r0,#_constrain_PARM_2
   154D 74 80         [12] 1443 	mov	a,#0x80
   154F F2            [24] 1444 	movx	@r0,a
   1550 08            [12] 1445 	inc	r0
   1551 74 23         [12] 1446 	mov	a,#0x23
   1553 F2            [24] 1447 	movx	@r0,a
   1554 08            [12] 1448 	inc	r0
   1555 74 AD         [12] 1449 	mov	a,#0xAD
   1557 F2            [24] 1450 	movx	@r0,a
   1558 08            [12] 1451 	inc	r0
   1559 74 18         [12] 1452 	mov	a,#0x18
   155B F2            [24] 1453 	movx	@r0,a
   155C 78 73         [12] 1454 	mov	r0,#_constrain_PARM_3
   155E E4            [12] 1455 	clr	a
   155F F2            [24] 1456 	movx	@r0,a
   1560 08            [12] 1457 	inc	r0
   1561 74 0B         [12] 1458 	mov	a,#0x0B
   1563 F2            [24] 1459 	movx	@r0,a
   1564 08            [12] 1460 	inc	r0
   1565 74 6B         [12] 1461 	mov	a,#0x6B
   1567 F2            [24] 1462 	movx	@r0,a
   1568 08            [12] 1463 	inc	r0
   1569 74 1B         [12] 1464 	mov	a,#0x1B
   156B F2            [24] 1465 	movx	@r0,a
   156C 78 48         [12] 1466 	mov	r0,#_radio_init_freq_min_1_151
   156E E2            [24] 1467 	movx	a,@r0
   156F F5 82         [12] 1468 	mov	dpl,a
   1571 08            [12] 1469 	inc	r0
   1572 E2            [24] 1470 	movx	a,@r0
   1573 F5 83         [12] 1471 	mov	dph,a
   1575 08            [12] 1472 	inc	r0
   1576 E2            [24] 1473 	movx	a,@r0
   1577 F5 F0         [12] 1474 	mov	b,a
   1579 08            [12] 1475 	inc	r0
   157A E2            [24] 1476 	movx	a,@r0
   157B 12 2A 74      [24] 1477 	lcall	_constrain
   157E 78 48         [12] 1478 	mov	r0,#_radio_init_freq_min_1_151
   1580 C0 E0         [24] 1479 	push	acc
   1582 E5 82         [12] 1480 	mov	a,dpl
   1584 F2            [24] 1481 	movx	@r0,a
   1585 08            [12] 1482 	inc	r0
   1586 E5 83         [12] 1483 	mov	a,dph
   1588 F2            [24] 1484 	movx	@r0,a
   1589 08            [12] 1485 	inc	r0
   158A E5 F0         [12] 1486 	mov	a,b
   158C F2            [24] 1487 	movx	@r0,a
   158D D0 E0         [24] 1488 	pop	acc
   158F 08            [12] 1489 	inc	r0
   1590 F2            [24] 1490 	movx	@r0,a
                           1491 ;	radio/main.c:303: freq_max = constrain(freq_max, 414000000UL, 460000000UL);
   1591 78 6F         [12] 1492 	mov	r0,#_constrain_PARM_2
   1593 74 80         [12] 1493 	mov	a,#0x80
   1595 F2            [24] 1494 	movx	@r0,a
   1596 08            [12] 1495 	inc	r0
   1597 74 23         [12] 1496 	mov	a,#0x23
   1599 F2            [24] 1497 	movx	@r0,a
   159A 08            [12] 1498 	inc	r0
   159B 74 AD         [12] 1499 	mov	a,#0xAD
   159D F2            [24] 1500 	movx	@r0,a
   159E 08            [12] 1501 	inc	r0
   159F 74 18         [12] 1502 	mov	a,#0x18
   15A1 F2            [24] 1503 	movx	@r0,a
   15A2 78 73         [12] 1504 	mov	r0,#_constrain_PARM_3
   15A4 E4            [12] 1505 	clr	a
   15A5 F2            [24] 1506 	movx	@r0,a
   15A6 08            [12] 1507 	inc	r0
   15A7 74 0B         [12] 1508 	mov	a,#0x0B
   15A9 F2            [24] 1509 	movx	@r0,a
   15AA 08            [12] 1510 	inc	r0
   15AB 74 6B         [12] 1511 	mov	a,#0x6B
   15AD F2            [24] 1512 	movx	@r0,a
   15AE 08            [12] 1513 	inc	r0
   15AF 74 1B         [12] 1514 	mov	a,#0x1B
   15B1 F2            [24] 1515 	movx	@r0,a
   15B2 78 4C         [12] 1516 	mov	r0,#_radio_init_freq_max_1_151
   15B4 E2            [24] 1517 	movx	a,@r0
   15B5 F5 82         [12] 1518 	mov	dpl,a
   15B7 08            [12] 1519 	inc	r0
   15B8 E2            [24] 1520 	movx	a,@r0
   15B9 F5 83         [12] 1521 	mov	dph,a
   15BB 08            [12] 1522 	inc	r0
   15BC E2            [24] 1523 	movx	a,@r0
   15BD F5 F0         [12] 1524 	mov	b,a
   15BF 08            [12] 1525 	inc	r0
   15C0 E2            [24] 1526 	movx	a,@r0
   15C1 12 2A 74      [24] 1527 	lcall	_constrain
   15C4 78 4C         [12] 1528 	mov	r0,#_radio_init_freq_max_1_151
   15C6 C0 E0         [24] 1529 	push	acc
   15C8 E5 82         [12] 1530 	mov	a,dpl
   15CA F2            [24] 1531 	movx	@r0,a
   15CB 08            [12] 1532 	inc	r0
   15CC E5 83         [12] 1533 	mov	a,dph
   15CE F2            [24] 1534 	movx	@r0,a
   15CF 08            [12] 1535 	inc	r0
   15D0 E5 F0         [12] 1536 	mov	a,b
   15D2 F2            [24] 1537 	movx	@r0,a
   15D3 D0 E0         [24] 1538 	pop	acc
   15D5 08            [12] 1539 	inc	r0
   15D6 F2            [24] 1540 	movx	@r0,a
                           1541 ;	radio/main.c:304: break;
   15D7 02 17 A9      [24] 1542 	ljmp	00122$
                           1543 ;	radio/main.c:305: case FREQ_470:
   15DA                    1544 00118$:
                           1545 ;	radio/main.c:306: freq_min = constrain(freq_min, 450000000UL, 490000000UL);
   15DA 78 6F         [12] 1546 	mov	r0,#_constrain_PARM_2
   15DC 74 80         [12] 1547 	mov	a,#0x80
   15DE F2            [24] 1548 	movx	@r0,a
   15DF 08            [12] 1549 	inc	r0
   15E0 74 74         [12] 1550 	mov	a,#0x74
   15E2 F2            [24] 1551 	movx	@r0,a
   15E3 08            [12] 1552 	inc	r0
   15E4 74 D2         [12] 1553 	mov	a,#0xD2
   15E6 F2            [24] 1554 	movx	@r0,a
   15E7 08            [12] 1555 	inc	r0
   15E8 74 1A         [12] 1556 	mov	a,#0x1A
   15EA F2            [24] 1557 	movx	@r0,a
   15EB 78 73         [12] 1558 	mov	r0,#_constrain_PARM_3
   15ED 74 80         [12] 1559 	mov	a,#0x80
   15EF F2            [24] 1560 	movx	@r0,a
   15F0 08            [12] 1561 	inc	r0
   15F1 74 CE         [12] 1562 	mov	a,#0xCE
   15F3 F2            [24] 1563 	movx	@r0,a
   15F4 08            [12] 1564 	inc	r0
   15F5 74 34         [12] 1565 	mov	a,#0x34
   15F7 F2            [24] 1566 	movx	@r0,a
   15F8 08            [12] 1567 	inc	r0
   15F9 74 1D         [12] 1568 	mov	a,#0x1D
   15FB F2            [24] 1569 	movx	@r0,a
   15FC 78 48         [12] 1570 	mov	r0,#_radio_init_freq_min_1_151
   15FE E2            [24] 1571 	movx	a,@r0
   15FF F5 82         [12] 1572 	mov	dpl,a
   1601 08            [12] 1573 	inc	r0
   1602 E2            [24] 1574 	movx	a,@r0
   1603 F5 83         [12] 1575 	mov	dph,a
   1605 08            [12] 1576 	inc	r0
   1606 E2            [24] 1577 	movx	a,@r0
   1607 F5 F0         [12] 1578 	mov	b,a
   1609 08            [12] 1579 	inc	r0
   160A E2            [24] 1580 	movx	a,@r0
   160B 12 2A 74      [24] 1581 	lcall	_constrain
   160E 78 48         [12] 1582 	mov	r0,#_radio_init_freq_min_1_151
   1610 C0 E0         [24] 1583 	push	acc
   1612 E5 82         [12] 1584 	mov	a,dpl
   1614 F2            [24] 1585 	movx	@r0,a
   1615 08            [12] 1586 	inc	r0
   1616 E5 83         [12] 1587 	mov	a,dph
   1618 F2            [24] 1588 	movx	@r0,a
   1619 08            [12] 1589 	inc	r0
   161A E5 F0         [12] 1590 	mov	a,b
   161C F2            [24] 1591 	movx	@r0,a
   161D D0 E0         [24] 1592 	pop	acc
   161F 08            [12] 1593 	inc	r0
   1620 F2            [24] 1594 	movx	@r0,a
                           1595 ;	radio/main.c:307: freq_max = constrain(freq_max, 450000000UL, 490000000UL);
   1621 78 6F         [12] 1596 	mov	r0,#_constrain_PARM_2
   1623 74 80         [12] 1597 	mov	a,#0x80
   1625 F2            [24] 1598 	movx	@r0,a
   1626 08            [12] 1599 	inc	r0
   1627 74 74         [12] 1600 	mov	a,#0x74
   1629 F2            [24] 1601 	movx	@r0,a
   162A 08            [12] 1602 	inc	r0
   162B 74 D2         [12] 1603 	mov	a,#0xD2
   162D F2            [24] 1604 	movx	@r0,a
   162E 08            [12] 1605 	inc	r0
   162F 74 1A         [12] 1606 	mov	a,#0x1A
   1631 F2            [24] 1607 	movx	@r0,a
   1632 78 73         [12] 1608 	mov	r0,#_constrain_PARM_3
   1634 74 80         [12] 1609 	mov	a,#0x80
   1636 F2            [24] 1610 	movx	@r0,a
   1637 08            [12] 1611 	inc	r0
   1638 74 CE         [12] 1612 	mov	a,#0xCE
   163A F2            [24] 1613 	movx	@r0,a
   163B 08            [12] 1614 	inc	r0
   163C 74 34         [12] 1615 	mov	a,#0x34
   163E F2            [24] 1616 	movx	@r0,a
   163F 08            [12] 1617 	inc	r0
   1640 74 1D         [12] 1618 	mov	a,#0x1D
   1642 F2            [24] 1619 	movx	@r0,a
   1643 78 4C         [12] 1620 	mov	r0,#_radio_init_freq_max_1_151
   1645 E2            [24] 1621 	movx	a,@r0
   1646 F5 82         [12] 1622 	mov	dpl,a
   1648 08            [12] 1623 	inc	r0
   1649 E2            [24] 1624 	movx	a,@r0
   164A F5 83         [12] 1625 	mov	dph,a
   164C 08            [12] 1626 	inc	r0
   164D E2            [24] 1627 	movx	a,@r0
   164E F5 F0         [12] 1628 	mov	b,a
   1650 08            [12] 1629 	inc	r0
   1651 E2            [24] 1630 	movx	a,@r0
   1652 12 2A 74      [24] 1631 	lcall	_constrain
   1655 78 4C         [12] 1632 	mov	r0,#_radio_init_freq_max_1_151
   1657 C0 E0         [24] 1633 	push	acc
   1659 E5 82         [12] 1634 	mov	a,dpl
   165B F2            [24] 1635 	movx	@r0,a
   165C 08            [12] 1636 	inc	r0
   165D E5 83         [12] 1637 	mov	a,dph
   165F F2            [24] 1638 	movx	@r0,a
   1660 08            [12] 1639 	inc	r0
   1661 E5 F0         [12] 1640 	mov	a,b
   1663 F2            [24] 1641 	movx	@r0,a
   1664 D0 E0         [24] 1642 	pop	acc
   1666 08            [12] 1643 	inc	r0
   1667 F2            [24] 1644 	movx	@r0,a
                           1645 ;	radio/main.c:308: break;
   1668 02 17 A9      [24] 1646 	ljmp	00122$
                           1647 ;	radio/main.c:309: case FREQ_868:
   166B                    1648 00119$:
                           1649 ;	radio/main.c:310: freq_min = constrain(freq_min, 849000000UL, 889000000UL);
   166B 78 6F         [12] 1650 	mov	r0,#_constrain_PARM_2
   166D 74 40         [12] 1651 	mov	a,#0x40
   166F F2            [24] 1652 	movx	@r0,a
   1670 08            [12] 1653 	inc	r0
   1671 74 B6         [12] 1654 	mov	a,#0xB6
   1673 F2            [24] 1655 	movx	@r0,a
   1674 08            [12] 1656 	inc	r0
   1675 74 9A         [12] 1657 	mov	a,#0x9A
   1677 F2            [24] 1658 	movx	@r0,a
   1678 08            [12] 1659 	inc	r0
   1679 74 32         [12] 1660 	mov	a,#0x32
   167B F2            [24] 1661 	movx	@r0,a
   167C 78 73         [12] 1662 	mov	r0,#_constrain_PARM_3
   167E 74 40         [12] 1663 	mov	a,#0x40
   1680 F2            [24] 1664 	movx	@r0,a
   1681 08            [12] 1665 	inc	r0
   1682 74 10         [12] 1666 	mov	a,#0x10
   1684 F2            [24] 1667 	movx	@r0,a
   1685 08            [12] 1668 	inc	r0
   1686 74 FD         [12] 1669 	mov	a,#0xFD
   1688 F2            [24] 1670 	movx	@r0,a
   1689 08            [12] 1671 	inc	r0
   168A 74 34         [12] 1672 	mov	a,#0x34
   168C F2            [24] 1673 	movx	@r0,a
   168D 78 48         [12] 1674 	mov	r0,#_radio_init_freq_min_1_151
   168F E2            [24] 1675 	movx	a,@r0
   1690 F5 82         [12] 1676 	mov	dpl,a
   1692 08            [12] 1677 	inc	r0
   1693 E2            [24] 1678 	movx	a,@r0
   1694 F5 83         [12] 1679 	mov	dph,a
   1696 08            [12] 1680 	inc	r0
   1697 E2            [24] 1681 	movx	a,@r0
   1698 F5 F0         [12] 1682 	mov	b,a
   169A 08            [12] 1683 	inc	r0
   169B E2            [24] 1684 	movx	a,@r0
   169C 12 2A 74      [24] 1685 	lcall	_constrain
   169F 78 48         [12] 1686 	mov	r0,#_radio_init_freq_min_1_151
   16A1 C0 E0         [24] 1687 	push	acc
   16A3 E5 82         [12] 1688 	mov	a,dpl
   16A5 F2            [24] 1689 	movx	@r0,a
   16A6 08            [12] 1690 	inc	r0
   16A7 E5 83         [12] 1691 	mov	a,dph
   16A9 F2            [24] 1692 	movx	@r0,a
   16AA 08            [12] 1693 	inc	r0
   16AB E5 F0         [12] 1694 	mov	a,b
   16AD F2            [24] 1695 	movx	@r0,a
   16AE D0 E0         [24] 1696 	pop	acc
   16B0 08            [12] 1697 	inc	r0
   16B1 F2            [24] 1698 	movx	@r0,a
                           1699 ;	radio/main.c:311: freq_max = constrain(freq_max, 849000000UL, 889000000UL);
   16B2 78 6F         [12] 1700 	mov	r0,#_constrain_PARM_2
   16B4 74 40         [12] 1701 	mov	a,#0x40
   16B6 F2            [24] 1702 	movx	@r0,a
   16B7 08            [12] 1703 	inc	r0
   16B8 74 B6         [12] 1704 	mov	a,#0xB6
   16BA F2            [24] 1705 	movx	@r0,a
   16BB 08            [12] 1706 	inc	r0
   16BC 74 9A         [12] 1707 	mov	a,#0x9A
   16BE F2            [24] 1708 	movx	@r0,a
   16BF 08            [12] 1709 	inc	r0
   16C0 74 32         [12] 1710 	mov	a,#0x32
   16C2 F2            [24] 1711 	movx	@r0,a
   16C3 78 73         [12] 1712 	mov	r0,#_constrain_PARM_3
   16C5 74 40         [12] 1713 	mov	a,#0x40
   16C7 F2            [24] 1714 	movx	@r0,a
   16C8 08            [12] 1715 	inc	r0
   16C9 74 10         [12] 1716 	mov	a,#0x10
   16CB F2            [24] 1717 	movx	@r0,a
   16CC 08            [12] 1718 	inc	r0
   16CD 74 FD         [12] 1719 	mov	a,#0xFD
   16CF F2            [24] 1720 	movx	@r0,a
   16D0 08            [12] 1721 	inc	r0
   16D1 74 34         [12] 1722 	mov	a,#0x34
   16D3 F2            [24] 1723 	movx	@r0,a
   16D4 78 4C         [12] 1724 	mov	r0,#_radio_init_freq_max_1_151
   16D6 E2            [24] 1725 	movx	a,@r0
   16D7 F5 82         [12] 1726 	mov	dpl,a
   16D9 08            [12] 1727 	inc	r0
   16DA E2            [24] 1728 	movx	a,@r0
   16DB F5 83         [12] 1729 	mov	dph,a
   16DD 08            [12] 1730 	inc	r0
   16DE E2            [24] 1731 	movx	a,@r0
   16DF F5 F0         [12] 1732 	mov	b,a
   16E1 08            [12] 1733 	inc	r0
   16E2 E2            [24] 1734 	movx	a,@r0
   16E3 12 2A 74      [24] 1735 	lcall	_constrain
   16E6 78 4C         [12] 1736 	mov	r0,#_radio_init_freq_max_1_151
   16E8 C0 E0         [24] 1737 	push	acc
   16EA E5 82         [12] 1738 	mov	a,dpl
   16EC F2            [24] 1739 	movx	@r0,a
   16ED 08            [12] 1740 	inc	r0
   16EE E5 83         [12] 1741 	mov	a,dph
   16F0 F2            [24] 1742 	movx	@r0,a
   16F1 08            [12] 1743 	inc	r0
   16F2 E5 F0         [12] 1744 	mov	a,b
   16F4 F2            [24] 1745 	movx	@r0,a
   16F5 D0 E0         [24] 1746 	pop	acc
   16F7 08            [12] 1747 	inc	r0
   16F8 F2            [24] 1748 	movx	@r0,a
                           1749 ;	radio/main.c:312: break;
   16F9 02 17 A9      [24] 1750 	ljmp	00122$
                           1751 ;	radio/main.c:313: case FREQ_915:
   16FC                    1752 00120$:
                           1753 ;	radio/main.c:314: freq_min = constrain(freq_min, 868000000UL, 935000000UL);
   16FC 78 6F         [12] 1754 	mov	r0,#_constrain_PARM_2
   16FE E4            [12] 1755 	clr	a
   16FF F2            [24] 1756 	movx	@r0,a
   1700 08            [12] 1757 	inc	r0
   1701 74 A1         [12] 1758 	mov	a,#0xA1
   1703 F2            [24] 1759 	movx	@r0,a
   1704 08            [12] 1760 	inc	r0
   1705 74 BC         [12] 1761 	mov	a,#0xBC
   1707 F2            [24] 1762 	movx	@r0,a
   1708 08            [12] 1763 	inc	r0
   1709 74 33         [12] 1764 	mov	a,#0x33
   170B F2            [24] 1765 	movx	@r0,a
   170C 78 73         [12] 1766 	mov	r0,#_constrain_PARM_3
   170E 74 C0         [12] 1767 	mov	a,#0xC0
   1710 F2            [24] 1768 	movx	@r0,a
   1711 08            [12] 1769 	inc	r0
   1712 74 F7         [12] 1770 	mov	a,#0xF7
   1714 F2            [24] 1771 	movx	@r0,a
   1715 08            [12] 1772 	inc	r0
   1716 74 BA         [12] 1773 	mov	a,#0xBA
   1718 F2            [24] 1774 	movx	@r0,a
   1719 08            [12] 1775 	inc	r0
   171A 74 37         [12] 1776 	mov	a,#0x37
   171C F2            [24] 1777 	movx	@r0,a
   171D 78 48         [12] 1778 	mov	r0,#_radio_init_freq_min_1_151
   171F E2            [24] 1779 	movx	a,@r0
   1720 F5 82         [12] 1780 	mov	dpl,a
   1722 08            [12] 1781 	inc	r0
   1723 E2            [24] 1782 	movx	a,@r0
   1724 F5 83         [12] 1783 	mov	dph,a
   1726 08            [12] 1784 	inc	r0
   1727 E2            [24] 1785 	movx	a,@r0
   1728 F5 F0         [12] 1786 	mov	b,a
   172A 08            [12] 1787 	inc	r0
   172B E2            [24] 1788 	movx	a,@r0
   172C 12 2A 74      [24] 1789 	lcall	_constrain
   172F 78 48         [12] 1790 	mov	r0,#_radio_init_freq_min_1_151
   1731 C0 E0         [24] 1791 	push	acc
   1733 E5 82         [12] 1792 	mov	a,dpl
   1735 F2            [24] 1793 	movx	@r0,a
   1736 08            [12] 1794 	inc	r0
   1737 E5 83         [12] 1795 	mov	a,dph
   1739 F2            [24] 1796 	movx	@r0,a
   173A 08            [12] 1797 	inc	r0
   173B E5 F0         [12] 1798 	mov	a,b
   173D F2            [24] 1799 	movx	@r0,a
   173E D0 E0         [24] 1800 	pop	acc
   1740 08            [12] 1801 	inc	r0
   1741 F2            [24] 1802 	movx	@r0,a
                           1803 ;	radio/main.c:315: freq_max = constrain(freq_max, 868000000UL, 935000000UL);
   1742 78 6F         [12] 1804 	mov	r0,#_constrain_PARM_2
   1744 E4            [12] 1805 	clr	a
   1745 F2            [24] 1806 	movx	@r0,a
   1746 08            [12] 1807 	inc	r0
   1747 74 A1         [12] 1808 	mov	a,#0xA1
   1749 F2            [24] 1809 	movx	@r0,a
   174A 08            [12] 1810 	inc	r0
   174B 74 BC         [12] 1811 	mov	a,#0xBC
   174D F2            [24] 1812 	movx	@r0,a
   174E 08            [12] 1813 	inc	r0
   174F 74 33         [12] 1814 	mov	a,#0x33
   1751 F2            [24] 1815 	movx	@r0,a
   1752 78 73         [12] 1816 	mov	r0,#_constrain_PARM_3
   1754 74 C0         [12] 1817 	mov	a,#0xC0
   1756 F2            [24] 1818 	movx	@r0,a
   1757 08            [12] 1819 	inc	r0
   1758 74 F7         [12] 1820 	mov	a,#0xF7
   175A F2            [24] 1821 	movx	@r0,a
   175B 08            [12] 1822 	inc	r0
   175C 74 BA         [12] 1823 	mov	a,#0xBA
   175E F2            [24] 1824 	movx	@r0,a
   175F 08            [12] 1825 	inc	r0
   1760 74 37         [12] 1826 	mov	a,#0x37
   1762 F2            [24] 1827 	movx	@r0,a
   1763 78 4C         [12] 1828 	mov	r0,#_radio_init_freq_max_1_151
   1765 E2            [24] 1829 	movx	a,@r0
   1766 F5 82         [12] 1830 	mov	dpl,a
   1768 08            [12] 1831 	inc	r0
   1769 E2            [24] 1832 	movx	a,@r0
   176A F5 83         [12] 1833 	mov	dph,a
   176C 08            [12] 1834 	inc	r0
   176D E2            [24] 1835 	movx	a,@r0
   176E F5 F0         [12] 1836 	mov	b,a
   1770 08            [12] 1837 	inc	r0
   1771 E2            [24] 1838 	movx	a,@r0
   1772 12 2A 74      [24] 1839 	lcall	_constrain
   1775 78 4C         [12] 1840 	mov	r0,#_radio_init_freq_max_1_151
   1777 C0 E0         [24] 1841 	push	acc
   1779 E5 82         [12] 1842 	mov	a,dpl
   177B F2            [24] 1843 	movx	@r0,a
   177C 08            [12] 1844 	inc	r0
   177D E5 83         [12] 1845 	mov	a,dph
   177F F2            [24] 1846 	movx	@r0,a
   1780 08            [12] 1847 	inc	r0
   1781 E5 F0         [12] 1848 	mov	a,b
   1783 F2            [24] 1849 	movx	@r0,a
   1784 D0 E0         [24] 1850 	pop	acc
   1786 08            [12] 1851 	inc	r0
   1787 F2            [24] 1852 	movx	@r0,a
                           1853 ;	radio/main.c:316: break;
                           1854 ;	radio/main.c:317: default:
   1788 80 1F         [24] 1855 	sjmp	00122$
   178A                    1856 00121$:
                           1857 ;	radio/main.c:318: panic("bad board frequency %d", g_board_frequency);
   178A 78 32         [12] 1858 	mov	r0,#_g_board_frequency
   178C E2            [24] 1859 	movx	a,@r0
   178D FE            [12] 1860 	mov	r6,a
   178E 7F 00         [12] 1861 	mov	r7,#0x00
   1790 C0 06         [24] 1862 	push	ar6
   1792 C0 07         [24] 1863 	push	ar7
   1794 74 A4         [12] 1864 	mov	a,#__str_4
   1796 C0 E0         [24] 1865 	push	acc
   1798 74 C8         [12] 1866 	mov	a,#(__str_4 >> 8)
   179A C0 E0         [24] 1867 	push	acc
   179C 74 80         [12] 1868 	mov	a,#0x80
   179E C0 E0         [24] 1869 	push	acc
   17A0 12 11 F8      [24] 1870 	lcall	_panic
   17A3 E5 81         [12] 1871 	mov	a,sp
   17A5 24 FB         [12] 1872 	add	a,#0xfb
   17A7 F5 81         [12] 1873 	mov	sp,a
                           1874 ;	radio/main.c:320: }
   17A9                    1875 00122$:
                           1876 ;	radio/main.c:322: if (freq_max == freq_min) {
   17A9 78 4C         [12] 1877 	mov	r0,#_radio_init_freq_max_1_151
   17AB 79 48         [12] 1878 	mov	r1,#_radio_init_freq_min_1_151
   17AD E2            [24] 1879 	movx	a,@r0
   17AE F5 F0         [12] 1880 	mov	b,a
   17B0 E3            [24] 1881 	movx	a,@r1
   17B1 B5 F0 1D      [24] 1882 	cjne	a,b,00205$
   17B4 08            [12] 1883 	inc	r0
   17B5 E2            [24] 1884 	movx	a,@r0
   17B6 F5 F0         [12] 1885 	mov	b,a
   17B8 09            [12] 1886 	inc	r1
   17B9 E3            [24] 1887 	movx	a,@r1
   17BA B5 F0 14      [24] 1888 	cjne	a,b,00205$
   17BD 08            [12] 1889 	inc	r0
   17BE E2            [24] 1890 	movx	a,@r0
   17BF F5 F0         [12] 1891 	mov	b,a
   17C1 09            [12] 1892 	inc	r1
   17C2 E3            [24] 1893 	movx	a,@r1
   17C3 B5 F0 0B      [24] 1894 	cjne	a,b,00205$
   17C6 08            [12] 1895 	inc	r0
   17C7 E2            [24] 1896 	movx	a,@r0
   17C8 F5 F0         [12] 1897 	mov	b,a
   17CA 09            [12] 1898 	inc	r1
   17CB E3            [24] 1899 	movx	a,@r1
   17CC B5 F0 02      [24] 1900 	cjne	a,b,00205$
   17CF 80 02         [24] 1901 	sjmp	00206$
   17D1                    1902 00205$:
   17D1 80 1A         [24] 1903 	sjmp	00124$
   17D3                    1904 00206$:
                           1905 ;	radio/main.c:323: freq_max = freq_min + 1000000UL;
   17D3 78 48         [12] 1906 	mov	r0,#_radio_init_freq_min_1_151
   17D5 79 4C         [12] 1907 	mov	r1,#_radio_init_freq_max_1_151
   17D7 E2            [24] 1908 	movx	a,@r0
   17D8 24 40         [12] 1909 	add	a,#0x40
   17DA F3            [24] 1910 	movx	@r1,a
   17DB 08            [12] 1911 	inc	r0
   17DC E2            [24] 1912 	movx	a,@r0
   17DD 34 42         [12] 1913 	addc	a,#0x42
   17DF 09            [12] 1914 	inc	r1
   17E0 F3            [24] 1915 	movx	@r1,a
   17E1 08            [12] 1916 	inc	r0
   17E2 E2            [24] 1917 	movx	a,@r0
   17E3 34 0F         [12] 1918 	addc	a,#0x0F
   17E5 09            [12] 1919 	inc	r1
   17E6 F3            [24] 1920 	movx	@r1,a
   17E7 08            [12] 1921 	inc	r0
   17E8 E2            [24] 1922 	movx	a,@r0
   17E9 34 00         [12] 1923 	addc	a,#0x00
   17EB 09            [12] 1924 	inc	r1
   17EC F3            [24] 1925 	movx	@r1,a
   17ED                    1926 00124$:
                           1927 ;	radio/main.c:327: duty_cycle = param_get(PARAM_DUTY_CYCLE);
   17ED 75 82 0B      [24] 1928 	mov	dpl,#0x0B
   17F0 12 27 66      [24] 1929 	lcall	_param_get
   17F3 AC 82         [24] 1930 	mov	r4,dpl
   17F5 78 C4         [12] 1931 	mov	r0,#_duty_cycle
   17F7 EC            [12] 1932 	mov	a,r4
   17F8 F2            [24] 1933 	movx	@r0,a
                           1934 ;	radio/main.c:328: duty_cycle = constrain(duty_cycle, 0, 100);
   17F9 7F 00         [12] 1935 	mov	r7,#0x00
   17FB 7E 00         [12] 1936 	mov	r6,#0x00
   17FD 7D 00         [12] 1937 	mov	r5,#0x00
   17FF 78 6F         [12] 1938 	mov	r0,#_constrain_PARM_2
   1801 E4            [12] 1939 	clr	a
   1802 F2            [24] 1940 	movx	@r0,a
   1803 08            [12] 1941 	inc	r0
   1804 F2            [24] 1942 	movx	@r0,a
   1805 08            [12] 1943 	inc	r0
   1806 F2            [24] 1944 	movx	@r0,a
   1807 08            [12] 1945 	inc	r0
   1808 F2            [24] 1946 	movx	@r0,a
   1809 78 73         [12] 1947 	mov	r0,#_constrain_PARM_3
   180B 74 64         [12] 1948 	mov	a,#0x64
   180D F2            [24] 1949 	movx	@r0,a
   180E 08            [12] 1950 	inc	r0
   180F E4            [12] 1951 	clr	a
   1810 F2            [24] 1952 	movx	@r0,a
   1811 08            [12] 1953 	inc	r0
   1812 F2            [24] 1954 	movx	@r0,a
   1813 08            [12] 1955 	inc	r0
   1814 F2            [24] 1956 	movx	@r0,a
   1815 8C 82         [24] 1957 	mov	dpl,r4
   1817 8F 83         [24] 1958 	mov	dph,r7
   1819 8E F0         [24] 1959 	mov	b,r6
   181B ED            [12] 1960 	mov	a,r5
   181C 12 2A 74      [24] 1961 	lcall	_constrain
   181F AC 82         [24] 1962 	mov	r4,dpl
   1821 78 C4         [12] 1963 	mov	r0,#_duty_cycle
   1823 EC            [12] 1964 	mov	a,r4
   1824 F2            [24] 1965 	movx	@r0,a
                           1966 ;	radio/main.c:329: param_set(PARAM_DUTY_CYCLE, duty_cycle);
   1825 78 69         [12] 1967 	mov	r0,#_param_set_PARM_2
   1827 EC            [12] 1968 	mov	a,r4
   1828 F2            [24] 1969 	movx	@r0,a
   1829 08            [12] 1970 	inc	r0
   182A E4            [12] 1971 	clr	a
   182B F2            [24] 1972 	movx	@r0,a
   182C 08            [12] 1973 	inc	r0
   182D F2            [24] 1974 	movx	@r0,a
   182E 08            [12] 1975 	inc	r0
   182F F2            [24] 1976 	movx	@r0,a
   1830 75 82 0B      [24] 1977 	mov	dpl,#0x0B
   1833 12 25 C3      [24] 1978 	lcall	_param_set
                           1979 ;	radio/main.c:332: lbt_rssi = param_get(PARAM_LBT_RSSI);
   1836 75 82 0C      [24] 1980 	mov	dpl,#0x0C
   1839 12 27 66      [24] 1981 	lcall	_param_get
   183C AC 82         [24] 1982 	mov	r4,dpl
   183E AD 83         [24] 1983 	mov	r5,dph
   1840 AE F0         [24] 1984 	mov	r6,b
   1842 FF            [12] 1985 	mov	r7,a
   1843 78 C8         [12] 1986 	mov	r0,#_lbt_rssi
   1845 EC            [12] 1987 	mov	a,r4
   1846 F2            [24] 1988 	movx	@r0,a
                           1989 ;	radio/main.c:333: if (lbt_rssi != 0) {
   1847 EC            [12] 1990 	mov	a,r4
   1848 60 33         [24] 1991 	jz	00126$
                           1992 ;	radio/main.c:335: lbt_rssi = constrain(lbt_rssi, 25, 220);
   184A 7F 00         [12] 1993 	mov	r7,#0x00
   184C 7E 00         [12] 1994 	mov	r6,#0x00
   184E 7D 00         [12] 1995 	mov	r5,#0x00
   1850 78 6F         [12] 1996 	mov	r0,#_constrain_PARM_2
   1852 74 19         [12] 1997 	mov	a,#0x19
   1854 F2            [24] 1998 	movx	@r0,a
   1855 08            [12] 1999 	inc	r0
   1856 E4            [12] 2000 	clr	a
   1857 F2            [24] 2001 	movx	@r0,a
   1858 08            [12] 2002 	inc	r0
   1859 F2            [24] 2003 	movx	@r0,a
   185A 08            [12] 2004 	inc	r0
   185B F2            [24] 2005 	movx	@r0,a
   185C 78 73         [12] 2006 	mov	r0,#_constrain_PARM_3
   185E 74 DC         [12] 2007 	mov	a,#0xDC
   1860 F2            [24] 2008 	movx	@r0,a
   1861 08            [12] 2009 	inc	r0
   1862 E4            [12] 2010 	clr	a
   1863 F2            [24] 2011 	movx	@r0,a
   1864 08            [12] 2012 	inc	r0
   1865 F2            [24] 2013 	movx	@r0,a
   1866 08            [12] 2014 	inc	r0
   1867 F2            [24] 2015 	movx	@r0,a
   1868 8C 82         [24] 2016 	mov	dpl,r4
   186A 8F 83         [24] 2017 	mov	dph,r7
   186C 8E F0         [24] 2018 	mov	b,r6
   186E ED            [12] 2019 	mov	a,r5
   186F 12 2A 74      [24] 2020 	lcall	_constrain
   1872 AC 82         [24] 2021 	mov	r4,dpl
   1874 AD 83         [24] 2022 	mov	r5,dph
   1876 AE F0         [24] 2023 	mov	r6,b
   1878 FF            [12] 2024 	mov	r7,a
   1879 78 C8         [12] 2025 	mov	r0,#_lbt_rssi
   187B EC            [12] 2026 	mov	a,r4
   187C F2            [24] 2027 	movx	@r0,a
   187D                    2028 00126$:
                           2029 ;	radio/main.c:337: param_set(PARAM_LBT_RSSI, lbt_rssi);
   187D 78 C8         [12] 2030 	mov	r0,#_lbt_rssi
   187F 79 69         [12] 2031 	mov	r1,#_param_set_PARM_2
   1881 E2            [24] 2032 	movx	a,@r0
   1882 F3            [24] 2033 	movx	@r1,a
   1883 09            [12] 2034 	inc	r1
   1884 E4            [12] 2035 	clr	a
   1885 F3            [24] 2036 	movx	@r1,a
   1886 09            [12] 2037 	inc	r1
   1887 F3            [24] 2038 	movx	@r1,a
   1888 09            [12] 2039 	inc	r1
   1889 F3            [24] 2040 	movx	@r1,a
   188A 75 82 0C      [24] 2041 	mov	dpl,#0x0C
   188D 12 25 C3      [24] 2042 	lcall	_param_set
                           2043 ;	radio/main.c:340: param_set(PARAM_MIN_FREQ, freq_min/1000);
   1890 90 05 B2      [24] 2044 	mov	dptr,#__divulong_PARM_2
   1893 74 E8         [12] 2045 	mov	a,#0xE8
   1895 F0            [24] 2046 	movx	@dptr,a
   1896 74 03         [12] 2047 	mov	a,#0x03
   1898 A3            [24] 2048 	inc	dptr
   1899 F0            [24] 2049 	movx	@dptr,a
   189A E4            [12] 2050 	clr	a
   189B A3            [24] 2051 	inc	dptr
   189C F0            [24] 2052 	movx	@dptr,a
   189D E4            [12] 2053 	clr	a
   189E A3            [24] 2054 	inc	dptr
   189F F0            [24] 2055 	movx	@dptr,a
   18A0 78 48         [12] 2056 	mov	r0,#_radio_init_freq_min_1_151
   18A2 E2            [24] 2057 	movx	a,@r0
   18A3 F5 82         [12] 2058 	mov	dpl,a
   18A5 08            [12] 2059 	inc	r0
   18A6 E2            [24] 2060 	movx	a,@r0
   18A7 F5 83         [12] 2061 	mov	dph,a
   18A9 08            [12] 2062 	inc	r0
   18AA E2            [24] 2063 	movx	a,@r0
   18AB F5 F0         [12] 2064 	mov	b,a
   18AD 08            [12] 2065 	inc	r0
   18AE E2            [24] 2066 	movx	a,@r0
   18AF 12 5C 3A      [24] 2067 	lcall	__divulong
   18B2 AC 82         [24] 2068 	mov	r4,dpl
   18B4 AD 83         [24] 2069 	mov	r5,dph
   18B6 AE F0         [24] 2070 	mov	r6,b
   18B8 FF            [12] 2071 	mov	r7,a
   18B9 78 69         [12] 2072 	mov	r0,#_param_set_PARM_2
   18BB EC            [12] 2073 	mov	a,r4
   18BC F2            [24] 2074 	movx	@r0,a
   18BD 08            [12] 2075 	inc	r0
   18BE ED            [12] 2076 	mov	a,r5
   18BF F2            [24] 2077 	movx	@r0,a
   18C0 08            [12] 2078 	inc	r0
   18C1 EE            [12] 2079 	mov	a,r6
   18C2 F2            [24] 2080 	movx	@r0,a
   18C3 08            [12] 2081 	inc	r0
   18C4 EF            [12] 2082 	mov	a,r7
   18C5 F2            [24] 2083 	movx	@r0,a
   18C6 75 82 08      [24] 2084 	mov	dpl,#0x08
   18C9 12 25 C3      [24] 2085 	lcall	_param_set
                           2086 ;	radio/main.c:341: param_set(PARAM_MAX_FREQ, freq_max/1000);
   18CC 90 05 B2      [24] 2087 	mov	dptr,#__divulong_PARM_2
   18CF 74 E8         [12] 2088 	mov	a,#0xE8
   18D1 F0            [24] 2089 	movx	@dptr,a
   18D2 74 03         [12] 2090 	mov	a,#0x03
   18D4 A3            [24] 2091 	inc	dptr
   18D5 F0            [24] 2092 	movx	@dptr,a
   18D6 E4            [12] 2093 	clr	a
   18D7 A3            [24] 2094 	inc	dptr
   18D8 F0            [24] 2095 	movx	@dptr,a
   18D9 E4            [12] 2096 	clr	a
   18DA A3            [24] 2097 	inc	dptr
   18DB F0            [24] 2098 	movx	@dptr,a
   18DC 78 4C         [12] 2099 	mov	r0,#_radio_init_freq_max_1_151
   18DE E2            [24] 2100 	movx	a,@r0
   18DF F5 82         [12] 2101 	mov	dpl,a
   18E1 08            [12] 2102 	inc	r0
   18E2 E2            [24] 2103 	movx	a,@r0
   18E3 F5 83         [12] 2104 	mov	dph,a
   18E5 08            [12] 2105 	inc	r0
   18E6 E2            [24] 2106 	movx	a,@r0
   18E7 F5 F0         [12] 2107 	mov	b,a
   18E9 08            [12] 2108 	inc	r0
   18EA E2            [24] 2109 	movx	a,@r0
   18EB 12 5C 3A      [24] 2110 	lcall	__divulong
   18EE AC 82         [24] 2111 	mov	r4,dpl
   18F0 AD 83         [24] 2112 	mov	r5,dph
   18F2 AE F0         [24] 2113 	mov	r6,b
   18F4 FF            [12] 2114 	mov	r7,a
   18F5 78 69         [12] 2115 	mov	r0,#_param_set_PARM_2
   18F7 EC            [12] 2116 	mov	a,r4
   18F8 F2            [24] 2117 	movx	@r0,a
   18F9 08            [12] 2118 	inc	r0
   18FA ED            [12] 2119 	mov	a,r5
   18FB F2            [24] 2120 	movx	@r0,a
   18FC 08            [12] 2121 	inc	r0
   18FD EE            [12] 2122 	mov	a,r6
   18FE F2            [24] 2123 	movx	@r0,a
   18FF 08            [12] 2124 	inc	r0
   1900 EF            [12] 2125 	mov	a,r7
   1901 F2            [24] 2126 	movx	@r0,a
   1902 75 82 09      [24] 2127 	mov	dpl,#0x09
   1905 12 25 C3      [24] 2128 	lcall	_param_set
                           2129 ;	radio/main.c:342: param_set(PARAM_NUM_CHANNELS, num_fh_channels);
   1908 78 18         [12] 2130 	mov	r0,#_num_fh_channels
   190A 79 69         [12] 2131 	mov	r1,#_param_set_PARM_2
   190C E2            [24] 2132 	movx	a,@r0
   190D F3            [24] 2133 	movx	@r1,a
   190E 09            [12] 2134 	inc	r1
   190F E4            [12] 2135 	clr	a
   1910 F3            [24] 2136 	movx	@r1,a
   1911 09            [12] 2137 	inc	r1
   1912 F3            [24] 2138 	movx	@r1,a
   1913 09            [12] 2139 	inc	r1
   1914 F3            [24] 2140 	movx	@r1,a
   1915 75 82 0A      [24] 2141 	mov	dpl,#0x0A
   1918 12 25 C3      [24] 2142 	lcall	_param_set
                           2143 ;	radio/main.c:344: channel_spacing = (freq_max - freq_min) / (num_fh_channels+2);
   191B 78 4C         [12] 2144 	mov	r0,#_radio_init_freq_max_1_151
   191D 79 48         [12] 2145 	mov	r1,#_radio_init_freq_min_1_151
   191F E3            [24] 2146 	movx	a,@r1
   1920 F5 F0         [12] 2147 	mov	b,a
   1922 C3            [12] 2148 	clr	c
   1923 E2            [24] 2149 	movx	a,@r0
   1924 95 F0         [12] 2150 	subb	a,b
   1926 FC            [12] 2151 	mov	r4,a
   1927 09            [12] 2152 	inc	r1
   1928 E3            [24] 2153 	movx	a,@r1
   1929 F5 F0         [12] 2154 	mov	b,a
   192B 08            [12] 2155 	inc	r0
   192C E2            [24] 2156 	movx	a,@r0
   192D 95 F0         [12] 2157 	subb	a,b
   192F FD            [12] 2158 	mov	r5,a
   1930 09            [12] 2159 	inc	r1
   1931 E3            [24] 2160 	movx	a,@r1
   1932 F5 F0         [12] 2161 	mov	b,a
   1934 08            [12] 2162 	inc	r0
   1935 E2            [24] 2163 	movx	a,@r0
   1936 95 F0         [12] 2164 	subb	a,b
   1938 FE            [12] 2165 	mov	r6,a
   1939 09            [12] 2166 	inc	r1
   193A E3            [24] 2167 	movx	a,@r1
   193B F5 F0         [12] 2168 	mov	b,a
   193D 08            [12] 2169 	inc	r0
   193E E2            [24] 2170 	movx	a,@r0
   193F 95 F0         [12] 2171 	subb	a,b
   1941 FF            [12] 2172 	mov	r7,a
   1942 78 18         [12] 2173 	mov	r0,#_num_fh_channels
   1944 E2            [24] 2174 	movx	a,@r0
   1945 FA            [12] 2175 	mov	r2,a
   1946 7B 00         [12] 2176 	mov	r3,#0x00
   1948 74 02         [12] 2177 	mov	a,#0x02
   194A 2A            [12] 2178 	add	a,r2
   194B FA            [12] 2179 	mov	r2,a
   194C E4            [12] 2180 	clr	a
   194D 3B            [12] 2181 	addc	a,r3
   194E FB            [12] 2182 	mov	r3,a
   194F 90 05 B2      [24] 2183 	mov	dptr,#__divulong_PARM_2
   1952 EA            [12] 2184 	mov	a,r2
   1953 F0            [24] 2185 	movx	@dptr,a
   1954 EB            [12] 2186 	mov	a,r3
   1955 A3            [24] 2187 	inc	dptr
   1956 F0            [24] 2188 	movx	@dptr,a
   1957 EB            [12] 2189 	mov	a,r3
   1958 33            [12] 2190 	rlc	a
   1959 95 E0         [12] 2191 	subb	a,acc
   195B A3            [24] 2192 	inc	dptr
   195C F0            [24] 2193 	movx	@dptr,a
   195D A3            [24] 2194 	inc	dptr
   195E F0            [24] 2195 	movx	@dptr,a
   195F 8C 82         [24] 2196 	mov	dpl,r4
   1961 8D 83         [24] 2197 	mov	dph,r5
   1963 8E F0         [24] 2198 	mov	b,r6
   1965 EF            [12] 2199 	mov	a,r7
   1966 12 5C 3A      [24] 2200 	lcall	__divulong
   1969 78 50         [12] 2201 	mov	r0,#_radio_init_channel_spacing_1_151
   196B C0 E0         [24] 2202 	push	acc
   196D E5 82         [12] 2203 	mov	a,dpl
   196F F2            [24] 2204 	movx	@r0,a
   1970 08            [12] 2205 	inc	r0
   1971 E5 83         [12] 2206 	mov	a,dph
   1973 F2            [24] 2207 	movx	@r0,a
   1974 08            [12] 2208 	inc	r0
   1975 E5 F0         [12] 2209 	mov	a,b
   1977 F2            [24] 2210 	movx	@r0,a
   1978 D0 E0         [24] 2211 	pop	acc
   197A 08            [12] 2212 	inc	r0
   197B F2            [24] 2213 	movx	@r0,a
                           2214 ;	radio/main.c:348: freq_min += channel_spacing/2;
   197C 78 53         [12] 2215 	mov	r0,#(_radio_init_channel_spacing_1_151 + 3)
   197E E2            [24] 2216 	movx	a,@r0
   197F C3            [12] 2217 	clr	c
   1980 13            [12] 2218 	rrc	a
   1981 FF            [12] 2219 	mov	r7,a
   1982 18            [12] 2220 	dec	r0
   1983 E2            [24] 2221 	movx	a,@r0
   1984 13            [12] 2222 	rrc	a
   1985 FE            [12] 2223 	mov	r6,a
   1986 18            [12] 2224 	dec	r0
   1987 E2            [24] 2225 	movx	a,@r0
   1988 13            [12] 2226 	rrc	a
   1989 FB            [12] 2227 	mov	r3,a
   198A 18            [12] 2228 	dec	r0
   198B E2            [24] 2229 	movx	a,@r0
   198C 13            [12] 2230 	rrc	a
   198D FA            [12] 2231 	mov	r2,a
   198E 78 48         [12] 2232 	mov	r0,#_radio_init_freq_min_1_151
   1990 E2            [24] 2233 	movx	a,@r0
   1991 2A            [12] 2234 	add	a,r2
   1992 F2            [24] 2235 	movx	@r0,a
   1993 08            [12] 2236 	inc	r0
   1994 E2            [24] 2237 	movx	a,@r0
   1995 3B            [12] 2238 	addc	a,r3
   1996 F2            [24] 2239 	movx	@r0,a
   1997 08            [12] 2240 	inc	r0
   1998 E2            [24] 2241 	movx	a,@r0
   1999 3E            [12] 2242 	addc	a,r6
   199A F2            [24] 2243 	movx	@r0,a
   199B 08            [12] 2244 	inc	r0
   199C E2            [24] 2245 	movx	a,@r0
   199D 3F            [12] 2246 	addc	a,r7
   199E F2            [24] 2247 	movx	@r0,a
                           2248 ;	radio/main.c:353: srand(param_get(PARAM_NETID));
   199F 75 82 03      [24] 2249 	mov	dpl,#0x03
   19A2 12 27 66      [24] 2250 	lcall	_param_get
   19A5 12 5B EA      [24] 2251 	lcall	_srand
                           2252 ;	radio/main.c:354: if (num_fh_channels > 5) {
   19A8 78 18         [12] 2253 	mov	r0,#_num_fh_channels
   19AA C3            [12] 2254 	clr	c
   19AB E2            [24] 2255 	movx	a,@r0
   19AC F5 F0         [12] 2256 	mov	b,a
   19AE 74 05         [12] 2257 	mov	a,#0x05
   19B0 95 F0         [12] 2258 	subb	a,b
   19B2 50 54         [24] 2259 	jnc	00128$
                           2260 ;	radio/main.c:355: freq_min += ((unsigned long)(rand()*625)) % channel_spacing;
   19B4 12 5B 90      [24] 2261 	lcall	_rand
   19B7 AE 82         [24] 2262 	mov	r6,dpl
   19B9 AF 83         [24] 2263 	mov	r7,dph
   19BB 90 05 CB      [24] 2264 	mov	dptr,#__mulint_PARM_2
   19BE EE            [12] 2265 	mov	a,r6
   19BF F0            [24] 2266 	movx	@dptr,a
   19C0 EF            [12] 2267 	mov	a,r7
   19C1 A3            [24] 2268 	inc	dptr
   19C2 F0            [24] 2269 	movx	@dptr,a
   19C3 90 02 71      [24] 2270 	mov	dptr,#0x0271
   19C6 12 5E 7B      [24] 2271 	lcall	__mulint
   19C9 AE 82         [24] 2272 	mov	r6,dpl
   19CB E5 83         [12] 2273 	mov	a,dph
   19CD FF            [12] 2274 	mov	r7,a
   19CE 33            [12] 2275 	rlc	a
   19CF 95 E0         [12] 2276 	subb	a,acc
   19D1 FD            [12] 2277 	mov	r5,a
   19D2 FC            [12] 2278 	mov	r4,a
   19D3 78 50         [12] 2279 	mov	r0,#_radio_init_channel_spacing_1_151
   19D5 90 05 A7      [24] 2280 	mov	dptr,#__modulong_PARM_2
   19D8 E2            [24] 2281 	movx	a,@r0
   19D9 F0            [24] 2282 	movx	@dptr,a
   19DA 08            [12] 2283 	inc	r0
   19DB E2            [24] 2284 	movx	a,@r0
   19DC A3            [24] 2285 	inc	dptr
   19DD F0            [24] 2286 	movx	@dptr,a
   19DE 08            [12] 2287 	inc	r0
   19DF E2            [24] 2288 	movx	a,@r0
   19E0 A3            [24] 2289 	inc	dptr
   19E1 F0            [24] 2290 	movx	@dptr,a
   19E2 08            [12] 2291 	inc	r0
   19E3 E2            [24] 2292 	movx	a,@r0
   19E4 A3            [24] 2293 	inc	dptr
   19E5 F0            [24] 2294 	movx	@dptr,a
   19E6 8E 82         [24] 2295 	mov	dpl,r6
   19E8 8F 83         [24] 2296 	mov	dph,r7
   19EA 8D F0         [24] 2297 	mov	b,r5
   19EC EC            [12] 2298 	mov	a,r4
   19ED 12 59 AC      [24] 2299 	lcall	__modulong
   19F0 AC 82         [24] 2300 	mov	r4,dpl
   19F2 AD 83         [24] 2301 	mov	r5,dph
   19F4 AE F0         [24] 2302 	mov	r6,b
   19F6 FF            [12] 2303 	mov	r7,a
   19F7 78 48         [12] 2304 	mov	r0,#_radio_init_freq_min_1_151
   19F9 E2            [24] 2305 	movx	a,@r0
   19FA 2C            [12] 2306 	add	a,r4
   19FB F2            [24] 2307 	movx	@r0,a
   19FC 08            [12] 2308 	inc	r0
   19FD E2            [24] 2309 	movx	a,@r0
   19FE 3D            [12] 2310 	addc	a,r5
   19FF F2            [24] 2311 	movx	@r0,a
   1A00 08            [12] 2312 	inc	r0
   1A01 E2            [24] 2313 	movx	a,@r0
   1A02 3E            [12] 2314 	addc	a,r6
   1A03 F2            [24] 2315 	movx	@r0,a
   1A04 08            [12] 2316 	inc	r0
   1A05 E2            [24] 2317 	movx	a,@r0
   1A06 3F            [12] 2318 	addc	a,r7
   1A07 F2            [24] 2319 	movx	@r0,a
   1A08                    2320 00128$:
                           2321 ;	radio/main.c:363: radio_set_frequency(freq_min);
   1A08 78 48         [12] 2322 	mov	r0,#_radio_init_freq_min_1_151
   1A0A E2            [24] 2323 	movx	a,@r0
   1A0B F5 82         [12] 2324 	mov	dpl,a
   1A0D 08            [12] 2325 	inc	r0
   1A0E E2            [24] 2326 	movx	a,@r0
   1A0F F5 83         [12] 2327 	mov	dph,a
   1A11 08            [12] 2328 	inc	r0
   1A12 E2            [24] 2329 	movx	a,@r0
   1A13 F5 F0         [12] 2330 	mov	b,a
   1A15 08            [12] 2331 	inc	r0
   1A16 E2            [24] 2332 	movx	a,@r0
   1A17 12 34 EA      [24] 2333 	lcall	_radio_set_frequency
                           2334 ;	radio/main.c:366: radio_set_channel_spacing(channel_spacing);
   1A1A 78 50         [12] 2335 	mov	r0,#_radio_init_channel_spacing_1_151
   1A1C E2            [24] 2336 	movx	a,@r0
   1A1D F5 82         [12] 2337 	mov	dpl,a
   1A1F 08            [12] 2338 	inc	r0
   1A20 E2            [24] 2339 	movx	a,@r0
   1A21 F5 83         [12] 2340 	mov	dph,a
   1A23 08            [12] 2341 	inc	r0
   1A24 E2            [24] 2342 	movx	a,@r0
   1A25 F5 F0         [12] 2343 	mov	b,a
   1A27 08            [12] 2344 	inc	r0
   1A28 E2            [24] 2345 	movx	a,@r0
   1A29 12 35 26      [24] 2346 	lcall	_radio_set_channel_spacing
                           2347 ;	radio/main.c:369: radio_set_channel(param_get(PARAM_NETID) % num_fh_channels);
   1A2C 75 82 03      [24] 2348 	mov	dpl,#0x03
   1A2F 12 27 66      [24] 2349 	lcall	_param_get
   1A32 AC 82         [24] 2350 	mov	r4,dpl
   1A34 AD 83         [24] 2351 	mov	r5,dph
   1A36 AE F0         [24] 2352 	mov	r6,b
   1A38 FF            [12] 2353 	mov	r7,a
   1A39 78 18         [12] 2354 	mov	r0,#_num_fh_channels
   1A3B 90 05 A7      [24] 2355 	mov	dptr,#__modulong_PARM_2
   1A3E E2            [24] 2356 	movx	a,@r0
   1A3F F0            [24] 2357 	movx	@dptr,a
   1A40 E4            [12] 2358 	clr	a
   1A41 A3            [24] 2359 	inc	dptr
   1A42 F0            [24] 2360 	movx	@dptr,a
   1A43 E4            [12] 2361 	clr	a
   1A44 A3            [24] 2362 	inc	dptr
   1A45 F0            [24] 2363 	movx	@dptr,a
   1A46 E4            [12] 2364 	clr	a
   1A47 A3            [24] 2365 	inc	dptr
   1A48 F0            [24] 2366 	movx	@dptr,a
   1A49 8C 82         [24] 2367 	mov	dpl,r4
   1A4B 8D 83         [24] 2368 	mov	dph,r5
   1A4D 8E F0         [24] 2369 	mov	b,r6
   1A4F EF            [12] 2370 	mov	a,r7
   1A50 12 59 AC      [24] 2371 	lcall	__modulong
   1A53 AC 82         [24] 2372 	mov	r4,dpl
   1A55 8C 82         [24] 2373 	mov	dpl,r4
   1A57 12 35 77      [24] 2374 	lcall	_radio_set_channel
                           2375 ;	radio/main.c:372: if (!radio_configure(param_get(PARAM_AIR_SPEED)) &&
   1A5A 75 82 02      [24] 2376 	mov	dpl,#0x02
   1A5D 12 27 66      [24] 2377 	lcall	_param_get
   1A60 AC 82         [24] 2378 	mov	r4,dpl
   1A62 8C 82         [24] 2379 	mov	dpl,r4
   1A64 12 35 A1      [24] 2380 	lcall	_radio_configure
   1A67 40 33         [24] 2381 	jc	00130$
                           2382 ;	radio/main.c:373: !radio_configure(param_get(PARAM_AIR_SPEED)) &&
   1A69 75 82 02      [24] 2383 	mov	dpl,#0x02
   1A6C 12 27 66      [24] 2384 	lcall	_param_get
   1A6F AC 82         [24] 2385 	mov	r4,dpl
   1A71 8C 82         [24] 2386 	mov	dpl,r4
   1A73 12 35 A1      [24] 2387 	lcall	_radio_configure
   1A76 40 24         [24] 2388 	jc	00130$
                           2389 ;	radio/main.c:374: !radio_configure(param_get(PARAM_AIR_SPEED))) {
   1A78 75 82 02      [24] 2390 	mov	dpl,#0x02
   1A7B 12 27 66      [24] 2391 	lcall	_param_get
   1A7E AC 82         [24] 2392 	mov	r4,dpl
   1A80 8C 82         [24] 2393 	mov	dpl,r4
   1A82 12 35 A1      [24] 2394 	lcall	_radio_configure
   1A85 40 15         [24] 2395 	jc	00130$
                           2396 ;	radio/main.c:375: panic("radio_configure failed");
   1A87 74 BB         [12] 2397 	mov	a,#__str_5
   1A89 C0 E0         [24] 2398 	push	acc
   1A8B 74 C8         [12] 2399 	mov	a,#(__str_5 >> 8)
   1A8D C0 E0         [24] 2400 	push	acc
   1A8F 74 80         [12] 2401 	mov	a,#0x80
   1A91 C0 E0         [24] 2402 	push	acc
   1A93 12 11 F8      [24] 2403 	lcall	_panic
   1A96 15 81         [12] 2404 	dec	sp
   1A98 15 81         [12] 2405 	dec	sp
   1A9A 15 81         [12] 2406 	dec	sp
   1A9C                    2407 00130$:
                           2408 ;	radio/main.c:379: param_set(PARAM_AIR_SPEED, radio_air_rate());
   1A9C 12 30 A4      [24] 2409 	lcall	_radio_air_rate
   1A9F AF 82         [24] 2410 	mov	r7,dpl
   1AA1 78 69         [12] 2411 	mov	r0,#_param_set_PARM_2
   1AA3 EF            [12] 2412 	mov	a,r7
   1AA4 F2            [24] 2413 	movx	@r0,a
   1AA5 08            [12] 2414 	inc	r0
   1AA6 E4            [12] 2415 	clr	a
   1AA7 F2            [24] 2416 	movx	@r0,a
   1AA8 08            [12] 2417 	inc	r0
   1AA9 F2            [24] 2418 	movx	@r0,a
   1AAA 08            [12] 2419 	inc	r0
   1AAB F2            [24] 2420 	movx	@r0,a
   1AAC 75 82 02      [24] 2421 	mov	dpl,#0x02
   1AAF 12 25 C3      [24] 2422 	lcall	_param_set
                           2423 ;	radio/main.c:382: radio_set_network_id(param_get(PARAM_NETID));
   1AB2 75 82 03      [24] 2424 	mov	dpl,#0x03
   1AB5 12 27 66      [24] 2425 	lcall	_param_get
   1AB8 12 38 BF      [24] 2426 	lcall	_radio_set_network_id
                           2427 ;	radio/main.c:385: radio_set_transmit_power(txpower);
   1ABB 78 54         [12] 2428 	mov	r0,#_radio_init_txpower_1_151
   1ABD E2            [24] 2429 	movx	a,@r0
   1ABE F5 82         [12] 2430 	mov	dpl,a
   1AC0 12 38 79      [24] 2431 	lcall	_radio_set_transmit_power
                           2432 ;	radio/main.c:388: param_set(PARAM_TXPOWER, radio_get_transmit_power());
   1AC3 12 38 B9      [24] 2433 	lcall	_radio_get_transmit_power
   1AC6 AF 82         [24] 2434 	mov	r7,dpl
   1AC8 78 69         [12] 2435 	mov	r0,#_param_set_PARM_2
   1ACA EF            [12] 2436 	mov	a,r7
   1ACB F2            [24] 2437 	movx	@r0,a
   1ACC 08            [12] 2438 	inc	r0
   1ACD E4            [12] 2439 	clr	a
   1ACE F2            [24] 2440 	movx	@r0,a
   1ACF 08            [12] 2441 	inc	r0
   1AD0 F2            [24] 2442 	movx	@r0,a
   1AD1 08            [12] 2443 	inc	r0
   1AD2 F2            [24] 2444 	movx	@r0,a
   1AD3 75 82 04      [24] 2445 	mov	dpl,#0x04
   1AD6 12 25 C3      [24] 2446 	lcall	_param_set
                           2447 ;	radio/main.c:396: fhop_init(param_get(PARAM_NETID));
   1AD9 75 82 03      [24] 2448 	mov	dpl,#0x03
   1ADC 12 27 66      [24] 2449 	lcall	_param_get
   1ADF 12 0B 6C      [24] 2450 	lcall	_fhop_init
                           2451 ;	radio/main.c:399: tdm_init();
   1AE2 02 53 66      [24] 2452 	ljmp	_tdm_init
                           2453 	.area CSEG    (CODE)
                           2454 	.area CONST   (CODE)
   C850                    2455 _g_banner_string:
   C850 53 69 4B 20 31 2E  2456 	.ascii "SiK 1.7 on RFD900"
        37 20 6F 6E 20 52
        46 44 39 30 30
   C861 00                 2457 	.db 0x00
   C862                    2458 _g_version_string:
   C862 31 2E 37           2459 	.ascii "1.7"
   C865 00                 2460 	.db 0x00
   C866                    2461 __str_0:
   C866 66 61 69 6C 65 64  2462 	.ascii "failed to enable receiver"
        20 74 6F 20 65 6E
        61 62 6C 65 20 72
        65 63 65 69 76 65
        72
   C87F 00                 2463 	.db 0x00
   C880                    2464 __str_1:
   C880 0A                 2465 	.db 0x0A
   C881 2A 2A 50 41 4E 49  2466 	.ascii "**PANIC**"
        43 2A 2A
   C88A 00                 2467 	.db 0x00
   C88B                    2468 __str_2:
   C88B 00                 2469 	.db 0x00
   C88C                    2470 __str_3:
   C88C 72 61 64 69 6F 5F  2471 	.ascii "radio_initialise failed"
        69 6E 69 74 69 61
        6C 69 73 65 20 66
        61 69 6C 65 64
   C8A3 00                 2472 	.db 0x00
   C8A4                    2473 __str_4:
   C8A4 62 61 64 20 62 6F  2474 	.ascii "bad board frequency %d"
        61 72 64 20 66 72
        65 71 75 65 6E 63
        79 20 25 64
   C8BA 00                 2475 	.db 0x00
   C8BB                    2476 __str_5:
   C8BB 72 61 64 69 6F 5F  2477 	.ascii "radio_configure failed"
        63 6F 6E 66 69 67
        75 72 65 20 66 61
        69 6C 65 64
   C8D1 00                 2478 	.db 0x00
                           2479 	.area XINIT   (CODE)
                           2480 	.area CABS    (ABS,CODE)
