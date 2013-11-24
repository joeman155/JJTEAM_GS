                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:02 2013
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
                             40 	.globl _SDN
                             41 	.globl _NSS1
                             42 	.globl _IRQ
                             43 	.globl _PIN_ENABLE
                             44 	.globl _PIN_CONFIG
                             45 	.globl _LED_GREEN
                             46 	.globl _LED_RED
                             47 	.globl _SPI0EN
                             48 	.globl _TXBMT0
                             49 	.globl _NSS0MD0
                             50 	.globl _NSS0MD1
                             51 	.globl _RXOVRN0
                             52 	.globl _MODF0
                             53 	.globl _WCOL0
                             54 	.globl _SPIF0
                             55 	.globl _AD0CM0
                             56 	.globl _AD0CM1
                             57 	.globl _AD0CM2
                             58 	.globl _AD0WINT
                             59 	.globl _AD0BUSY
                             60 	.globl _AD0INT
                             61 	.globl _BURSTEN
                             62 	.globl _AD0EN
                             63 	.globl _CCF0
                             64 	.globl _CCF1
                             65 	.globl _CCF2
                             66 	.globl _CCF3
                             67 	.globl _CCF4
                             68 	.globl _CCF5
                             69 	.globl _CR
                             70 	.globl _CF
                             71 	.globl _P
                             72 	.globl _F1
                             73 	.globl _OV
                             74 	.globl _RS0
                             75 	.globl _RS1
                             76 	.globl _F0
                             77 	.globl _AC
                             78 	.globl _CY
                             79 	.globl _T2XCLK
                             80 	.globl _T2RCLK
                             81 	.globl _TR2
                             82 	.globl _T2SPLIT
                             83 	.globl _TF2CEN
                             84 	.globl _TF2LEN
                             85 	.globl _TF2L
                             86 	.globl _TF2H
                             87 	.globl _SI
                             88 	.globl _ACK
                             89 	.globl _ARBLOST
                             90 	.globl _ACKRQ
                             91 	.globl _STO
                             92 	.globl _STA
                             93 	.globl _TXMODE
                             94 	.globl _MASTER
                             95 	.globl _PX0
                             96 	.globl _PT0
                             97 	.globl _PX1
                             98 	.globl _PT1
                             99 	.globl _PS0
                            100 	.globl _PT2
                            101 	.globl _PSPI0
                            102 	.globl _SPI1EN
                            103 	.globl _TXBMT1
                            104 	.globl _NSS1MD0
                            105 	.globl _NSS1MD1
                            106 	.globl _RXOVRN1
                            107 	.globl _MODF1
                            108 	.globl _WCOL1
                            109 	.globl _SPIF1
                            110 	.globl _EX0
                            111 	.globl _ET0
                            112 	.globl _EX1
                            113 	.globl _ET1
                            114 	.globl _ES0
                            115 	.globl _ET2
                            116 	.globl _ESPI0
                            117 	.globl _EA
                            118 	.globl _RI0
                            119 	.globl _TI0
                            120 	.globl _RB80
                            121 	.globl _TB80
                            122 	.globl _REN0
                            123 	.globl _MCE0
                            124 	.globl _S0MODE
                            125 	.globl _CRC0VAL
                            126 	.globl _CRC0INIT
                            127 	.globl _CRC0SEL
                            128 	.globl _IT0
                            129 	.globl _IE0
                            130 	.globl _IT1
                            131 	.globl _IE1
                            132 	.globl _TR0
                            133 	.globl _TF0
                            134 	.globl _TR1
                            135 	.globl _TF1
                            136 	.globl _PCA0CP4
                            137 	.globl _PCA0CP0
                            138 	.globl _PCA0
                            139 	.globl _PCA0CP3
                            140 	.globl _PCA0CP2
                            141 	.globl _PCA0CP1
                            142 	.globl _PCA0CP5
                            143 	.globl _TMR2
                            144 	.globl _TMR2RL
                            145 	.globl _ADC0LT
                            146 	.globl _ADC0GT
                            147 	.globl _ADC0
                            148 	.globl _TMR3
                            149 	.globl _TMR3RL
                            150 	.globl _TOFF
                            151 	.globl _DP
                            152 	.globl _VDM0CN
                            153 	.globl _PCA0CPH4
                            154 	.globl _PCA0CPL4
                            155 	.globl _PCA0CPH0
                            156 	.globl _PCA0CPL0
                            157 	.globl _PCA0H
                            158 	.globl _PCA0L
                            159 	.globl _SPI0CN
                            160 	.globl _EIP2
                            161 	.globl _EIP1
                            162 	.globl _SMB0ADM
                            163 	.globl _SMB0ADR
                            164 	.globl _P2MDIN
                            165 	.globl _P1MDIN
                            166 	.globl _P0MDIN
                            167 	.globl _B
                            168 	.globl _RSTSRC
                            169 	.globl _PCA0CPH3
                            170 	.globl _PCA0CPL3
                            171 	.globl _PCA0CPH2
                            172 	.globl _PCA0CPL2
                            173 	.globl _PCA0CPH1
                            174 	.globl _PCA0CPL1
                            175 	.globl _ADC0CN
                            176 	.globl _EIE2
                            177 	.globl _EIE1
                            178 	.globl _FLWR
                            179 	.globl _IT01CF
                            180 	.globl _XBR2
                            181 	.globl _XBR1
                            182 	.globl _XBR0
                            183 	.globl _ACC
                            184 	.globl _PCA0PWM
                            185 	.globl _PCA0CPM4
                            186 	.globl _PCA0CPM3
                            187 	.globl _PCA0CPM2
                            188 	.globl _PCA0CPM1
                            189 	.globl _PCA0CPM0
                            190 	.globl _PCA0MD
                            191 	.globl _PCA0CN
                            192 	.globl _P0MAT
                            193 	.globl _P2SKIP
                            194 	.globl _P1SKIP
                            195 	.globl _P0SKIP
                            196 	.globl _PCA0CPH5
                            197 	.globl _PCA0CPL5
                            198 	.globl _REF0CN
                            199 	.globl _PSW
                            200 	.globl _P1MAT
                            201 	.globl _PCA0CPM5
                            202 	.globl _TMR2H
                            203 	.globl _TMR2L
                            204 	.globl _TMR2RLH
                            205 	.globl _TMR2RLL
                            206 	.globl _REG0CN
                            207 	.globl _TMR2CN
                            208 	.globl _P0MASK
                            209 	.globl _ADC0LTH
                            210 	.globl _ADC0LTL
                            211 	.globl _ADC0GTH
                            212 	.globl _ADC0GTL
                            213 	.globl _SMB0DAT
                            214 	.globl _SMB0CF
                            215 	.globl _SMB0CN
                            216 	.globl _P1MASK
                            217 	.globl _ADC0H
                            218 	.globl _ADC0L
                            219 	.globl _ADC0TK
                            220 	.globl _ADC0CF
                            221 	.globl _ADC0MX
                            222 	.globl _ADC0PWR
                            223 	.globl _ADC0AC
                            224 	.globl _IREF0CN
                            225 	.globl _IP
                            226 	.globl _FLKEY
                            227 	.globl _FLSCL
                            228 	.globl _PMU0CF
                            229 	.globl _OSCICL
                            230 	.globl _OSCICN
                            231 	.globl _OSCXCN
                            232 	.globl _SPI1CN
                            233 	.globl _ONESHOT
                            234 	.globl _EMI0TC
                            235 	.globl _RTC0KEY
                            236 	.globl _RTC0DAT
                            237 	.globl _RTC0ADR
                            238 	.globl _EMI0CF
                            239 	.globl _EMI0CN
                            240 	.globl _CLKSEL
                            241 	.globl _IE
                            242 	.globl _SFRPAGE
                            243 	.globl _P2DRV
                            244 	.globl _P2MDOUT
                            245 	.globl _P1DRV
                            246 	.globl _P1MDOUT
                            247 	.globl _P0DRV
                            248 	.globl _P0MDOUT
                            249 	.globl _SPI0DAT
                            250 	.globl _SPI0CKR
                            251 	.globl _SPI0CFG
                            252 	.globl _P2
                            253 	.globl _CPT0MX
                            254 	.globl _CPT1MX
                            255 	.globl _CPT0MD
                            256 	.globl _CPT1MD
                            257 	.globl _CPT0CN
                            258 	.globl _CPT1CN
                            259 	.globl _SBUF0
                            260 	.globl _SCON0
                            261 	.globl _CRC0CNT
                            262 	.globl _DC0CN
                            263 	.globl _CRC0AUTO
                            264 	.globl _DC0CF
                            265 	.globl _TMR3H
                            266 	.globl _CRC0FLIP
                            267 	.globl _TMR3L
                            268 	.globl _CRC0IN
                            269 	.globl _TMR3RLH
                            270 	.globl _CRC0CN
                            271 	.globl _TMR3RLL
                            272 	.globl _CRC0DAT
                            273 	.globl _TMR3CN
                            274 	.globl _P1
                            275 	.globl _PSCTL
                            276 	.globl _CKCON
                            277 	.globl _TH1
                            278 	.globl _TH0
                            279 	.globl _TL1
                            280 	.globl _TL0
                            281 	.globl _TMOD
                            282 	.globl _TCON
                            283 	.globl _PCON
                            284 	.globl _TOFFH
                            285 	.globl _SPI1DAT
                            286 	.globl _TOFFL
                            287 	.globl _SPI1CKR
                            288 	.globl _SPI1CFG
                            289 	.globl _DPH
                            290 	.globl _DPL
                            291 	.globl _SP
                            292 	.globl _P0
                            293 	.globl _remote_statistics
                            294 	.globl _statistics
                            295 	.globl _errors
                            296 	.globl _g_board_bl_version
                            297 	.globl _g_board_frequency
                            298 	.globl _feature_rtscts
                            299 	.globl _feature_mavlink_framing
                            300 	.globl _feature_opportunistic_resend
                            301 	.globl _feature_golay
                            302 	.globl _panic
                            303 ;--------------------------------------------------------
                            304 ; special function registers
                            305 ;--------------------------------------------------------
                            306 	.area RSEG    (ABS,DATA)
   0000                     307 	.org 0x0000
                     0080   308 _P0	=	0x0080
                     0081   309 _SP	=	0x0081
                     0082   310 _DPL	=	0x0082
                     0083   311 _DPH	=	0x0083
                     0084   312 _SPI1CFG	=	0x0084
                     0085   313 _SPI1CKR	=	0x0085
                     0085   314 _TOFFL	=	0x0085
                     0086   315 _SPI1DAT	=	0x0086
                     0086   316 _TOFFH	=	0x0086
                     0087   317 _PCON	=	0x0087
                     0088   318 _TCON	=	0x0088
                     0089   319 _TMOD	=	0x0089
                     008A   320 _TL0	=	0x008a
                     008B   321 _TL1	=	0x008b
                     008C   322 _TH0	=	0x008c
                     008D   323 _TH1	=	0x008d
                     008E   324 _CKCON	=	0x008e
                     008F   325 _PSCTL	=	0x008f
                     0090   326 _P1	=	0x0090
                     0091   327 _TMR3CN	=	0x0091
                     0091   328 _CRC0DAT	=	0x0091
                     0092   329 _TMR3RLL	=	0x0092
                     0092   330 _CRC0CN	=	0x0092
                     0093   331 _TMR3RLH	=	0x0093
                     0093   332 _CRC0IN	=	0x0093
                     0094   333 _TMR3L	=	0x0094
                     0095   334 _CRC0FLIP	=	0x0095
                     0095   335 _TMR3H	=	0x0095
                     0096   336 _DC0CF	=	0x0096
                     0096   337 _CRC0AUTO	=	0x0096
                     0097   338 _DC0CN	=	0x0097
                     0097   339 _CRC0CNT	=	0x0097
                     0098   340 _SCON0	=	0x0098
                     0099   341 _SBUF0	=	0x0099
                     009A   342 _CPT1CN	=	0x009a
                     009B   343 _CPT0CN	=	0x009b
                     009C   344 _CPT1MD	=	0x009c
                     009D   345 _CPT0MD	=	0x009d
                     009E   346 _CPT1MX	=	0x009e
                     009F   347 _CPT0MX	=	0x009f
                     00A0   348 _P2	=	0x00a0
                     00A1   349 _SPI0CFG	=	0x00a1
                     00A2   350 _SPI0CKR	=	0x00a2
                     00A3   351 _SPI0DAT	=	0x00a3
                     00A4   352 _P0MDOUT	=	0x00a4
                     00A4   353 _P0DRV	=	0x00a4
                     00A5   354 _P1MDOUT	=	0x00a5
                     00A5   355 _P1DRV	=	0x00a5
                     00A6   356 _P2MDOUT	=	0x00a6
                     00A6   357 _P2DRV	=	0x00a6
                     00A7   358 _SFRPAGE	=	0x00a7
                     00A8   359 _IE	=	0x00a8
                     00A9   360 _CLKSEL	=	0x00a9
                     00AA   361 _EMI0CN	=	0x00aa
                     00AB   362 _EMI0CF	=	0x00ab
                     00AC   363 _RTC0ADR	=	0x00ac
                     00AD   364 _RTC0DAT	=	0x00ad
                     00AE   365 _RTC0KEY	=	0x00ae
                     00AF   366 _EMI0TC	=	0x00af
                     00AF   367 _ONESHOT	=	0x00af
                     00B0   368 _SPI1CN	=	0x00b0
                     00B1   369 _OSCXCN	=	0x00b1
                     00B2   370 _OSCICN	=	0x00b2
                     00B3   371 _OSCICL	=	0x00b3
                     00B5   372 _PMU0CF	=	0x00b5
                     00B6   373 _FLSCL	=	0x00b6
                     00B7   374 _FLKEY	=	0x00b7
                     00B8   375 _IP	=	0x00b8
                     00B9   376 _IREF0CN	=	0x00b9
                     00BA   377 _ADC0AC	=	0x00ba
                     00BA   378 _ADC0PWR	=	0x00ba
                     00BB   379 _ADC0MX	=	0x00bb
                     00BC   380 _ADC0CF	=	0x00bc
                     00BD   381 _ADC0TK	=	0x00bd
                     00BD   382 _ADC0L	=	0x00bd
                     00BE   383 _ADC0H	=	0x00be
                     00BF   384 _P1MASK	=	0x00bf
                     00C0   385 _SMB0CN	=	0x00c0
                     00C1   386 _SMB0CF	=	0x00c1
                     00C2   387 _SMB0DAT	=	0x00c2
                     00C3   388 _ADC0GTL	=	0x00c3
                     00C4   389 _ADC0GTH	=	0x00c4
                     00C5   390 _ADC0LTL	=	0x00c5
                     00C6   391 _ADC0LTH	=	0x00c6
                     00C7   392 _P0MASK	=	0x00c7
                     00C8   393 _TMR2CN	=	0x00c8
                     00C9   394 _REG0CN	=	0x00c9
                     00CA   395 _TMR2RLL	=	0x00ca
                     00CB   396 _TMR2RLH	=	0x00cb
                     00CC   397 _TMR2L	=	0x00cc
                     00CD   398 _TMR2H	=	0x00cd
                     00CE   399 _PCA0CPM5	=	0x00ce
                     00CF   400 _P1MAT	=	0x00cf
                     00D0   401 _PSW	=	0x00d0
                     00D1   402 _REF0CN	=	0x00d1
                     00D2   403 _PCA0CPL5	=	0x00d2
                     00D3   404 _PCA0CPH5	=	0x00d3
                     00D4   405 _P0SKIP	=	0x00d4
                     00D5   406 _P1SKIP	=	0x00d5
                     00D6   407 _P2SKIP	=	0x00d6
                     00D7   408 _P0MAT	=	0x00d7
                     00D8   409 _PCA0CN	=	0x00d8
                     00D9   410 _PCA0MD	=	0x00d9
                     00DA   411 _PCA0CPM0	=	0x00da
                     00DB   412 _PCA0CPM1	=	0x00db
                     00DC   413 _PCA0CPM2	=	0x00dc
                     00DD   414 _PCA0CPM3	=	0x00dd
                     00DE   415 _PCA0CPM4	=	0x00de
                     00DF   416 _PCA0PWM	=	0x00df
                     00E0   417 _ACC	=	0x00e0
                     00E1   418 _XBR0	=	0x00e1
                     00E2   419 _XBR1	=	0x00e2
                     00E3   420 _XBR2	=	0x00e3
                     00E4   421 _IT01CF	=	0x00e4
                     00E5   422 _FLWR	=	0x00e5
                     00E6   423 _EIE1	=	0x00e6
                     00E7   424 _EIE2	=	0x00e7
                     00E8   425 _ADC0CN	=	0x00e8
                     00E9   426 _PCA0CPL1	=	0x00e9
                     00EA   427 _PCA0CPH1	=	0x00ea
                     00EB   428 _PCA0CPL2	=	0x00eb
                     00EC   429 _PCA0CPH2	=	0x00ec
                     00ED   430 _PCA0CPL3	=	0x00ed
                     00EE   431 _PCA0CPH3	=	0x00ee
                     00EF   432 _RSTSRC	=	0x00ef
                     00F0   433 _B	=	0x00f0
                     00F1   434 _P0MDIN	=	0x00f1
                     00F2   435 _P1MDIN	=	0x00f2
                     00F3   436 _P2MDIN	=	0x00f3
                     00F4   437 _SMB0ADR	=	0x00f4
                     00F5   438 _SMB0ADM	=	0x00f5
                     00F6   439 _EIP1	=	0x00f6
                     00F7   440 _EIP2	=	0x00f7
                     00F8   441 _SPI0CN	=	0x00f8
                     00F9   442 _PCA0L	=	0x00f9
                     00FA   443 _PCA0H	=	0x00fa
                     00FB   444 _PCA0CPL0	=	0x00fb
                     00FC   445 _PCA0CPH0	=	0x00fc
                     00FD   446 _PCA0CPL4	=	0x00fd
                     00FE   447 _PCA0CPH4	=	0x00fe
                     00FF   448 _VDM0CN	=	0x00ff
                     8382   449 _DP	=	0x8382
                     8685   450 _TOFF	=	0x8685
                     9392   451 _TMR3RL	=	0x9392
                     9594   452 _TMR3	=	0x9594
                     BEBD   453 _ADC0	=	0xbebd
                     C4C3   454 _ADC0GT	=	0xc4c3
                     C6C5   455 _ADC0LT	=	0xc6c5
                     CBCA   456 _TMR2RL	=	0xcbca
                     CDCC   457 _TMR2	=	0xcdcc
                     D3D2   458 _PCA0CP5	=	0xd3d2
                     EAE9   459 _PCA0CP1	=	0xeae9
                     ECEB   460 _PCA0CP2	=	0xeceb
                     EEED   461 _PCA0CP3	=	0xeeed
                     FAF9   462 _PCA0	=	0xfaf9
                     FCFB   463 _PCA0CP0	=	0xfcfb
                     FEFD   464 _PCA0CP4	=	0xfefd
                            465 ;--------------------------------------------------------
                            466 ; special function bits
                            467 ;--------------------------------------------------------
                            468 	.area RSEG    (ABS,DATA)
   0000                     469 	.org 0x0000
                     008F   470 _TF1	=	0x008f
                     008E   471 _TR1	=	0x008e
                     008D   472 _TF0	=	0x008d
                     008C   473 _TR0	=	0x008c
                     008B   474 _IE1	=	0x008b
                     008A   475 _IT1	=	0x008a
                     0089   476 _IE0	=	0x0089
                     0088   477 _IT0	=	0x0088
                     0096   478 _CRC0SEL	=	0x0096
                     0095   479 _CRC0INIT	=	0x0095
                     0094   480 _CRC0VAL	=	0x0094
                     009F   481 _S0MODE	=	0x009f
                     009D   482 _MCE0	=	0x009d
                     009C   483 _REN0	=	0x009c
                     009B   484 _TB80	=	0x009b
                     009A   485 _RB80	=	0x009a
                     0099   486 _TI0	=	0x0099
                     0098   487 _RI0	=	0x0098
                     00AF   488 _EA	=	0x00af
                     00AE   489 _ESPI0	=	0x00ae
                     00AD   490 _ET2	=	0x00ad
                     00AC   491 _ES0	=	0x00ac
                     00AB   492 _ET1	=	0x00ab
                     00AA   493 _EX1	=	0x00aa
                     00A9   494 _ET0	=	0x00a9
                     00A8   495 _EX0	=	0x00a8
                     00B7   496 _SPIF1	=	0x00b7
                     00B6   497 _WCOL1	=	0x00b6
                     00B5   498 _MODF1	=	0x00b5
                     00B4   499 _RXOVRN1	=	0x00b4
                     00B3   500 _NSS1MD1	=	0x00b3
                     00B2   501 _NSS1MD0	=	0x00b2
                     00B1   502 _TXBMT1	=	0x00b1
                     00B0   503 _SPI1EN	=	0x00b0
                     00BE   504 _PSPI0	=	0x00be
                     00BD   505 _PT2	=	0x00bd
                     00BC   506 _PS0	=	0x00bc
                     00BB   507 _PT1	=	0x00bb
                     00BA   508 _PX1	=	0x00ba
                     00B9   509 _PT0	=	0x00b9
                     00B8   510 _PX0	=	0x00b8
                     00C7   511 _MASTER	=	0x00c7
                     00C6   512 _TXMODE	=	0x00c6
                     00C5   513 _STA	=	0x00c5
                     00C4   514 _STO	=	0x00c4
                     00C3   515 _ACKRQ	=	0x00c3
                     00C2   516 _ARBLOST	=	0x00c2
                     00C1   517 _ACK	=	0x00c1
                     00C0   518 _SI	=	0x00c0
                     00CF   519 _TF2H	=	0x00cf
                     00CE   520 _TF2L	=	0x00ce
                     00CD   521 _TF2LEN	=	0x00cd
                     00CC   522 _TF2CEN	=	0x00cc
                     00CB   523 _T2SPLIT	=	0x00cb
                     00CA   524 _TR2	=	0x00ca
                     00C9   525 _T2RCLK	=	0x00c9
                     00C8   526 _T2XCLK	=	0x00c8
                     00D7   527 _CY	=	0x00d7
                     00D6   528 _AC	=	0x00d6
                     00D5   529 _F0	=	0x00d5
                     00D4   530 _RS1	=	0x00d4
                     00D3   531 _RS0	=	0x00d3
                     00D2   532 _OV	=	0x00d2
                     00D1   533 _F1	=	0x00d1
                     00D0   534 _P	=	0x00d0
                     00DF   535 _CF	=	0x00df
                     00DE   536 _CR	=	0x00de
                     00DD   537 _CCF5	=	0x00dd
                     00DC   538 _CCF4	=	0x00dc
                     00DB   539 _CCF3	=	0x00db
                     00DA   540 _CCF2	=	0x00da
                     00D9   541 _CCF1	=	0x00d9
                     00D8   542 _CCF0	=	0x00d8
                     00EF   543 _AD0EN	=	0x00ef
                     00EE   544 _BURSTEN	=	0x00ee
                     00ED   545 _AD0INT	=	0x00ed
                     00EC   546 _AD0BUSY	=	0x00ec
                     00EB   547 _AD0WINT	=	0x00eb
                     00EA   548 _AD0CM2	=	0x00ea
                     00E9   549 _AD0CM1	=	0x00e9
                     00E8   550 _AD0CM0	=	0x00e8
                     00FF   551 _SPIF0	=	0x00ff
                     00FE   552 _WCOL0	=	0x00fe
                     00FD   553 _MODF0	=	0x00fd
                     00FC   554 _RXOVRN0	=	0x00fc
                     00FB   555 _NSS0MD1	=	0x00fb
                     00FA   556 _NSS0MD0	=	0x00fa
                     00F9   557 _TXBMT0	=	0x00f9
                     00F8   558 _SPI0EN	=	0x00f8
                     0096   559 _LED_RED	=	0x0096
                     0095   560 _LED_GREEN	=	0x0095
                     0082   561 _PIN_CONFIG	=	0x0082
                     0083   562 _PIN_ENABLE	=	0x0083
                     0087   563 _IRQ	=	0x0087
                     0094   564 _NSS1	=	0x0094
                     00A6   565 _SDN	=	0x00a6
                     00A6   566 _TDM_SYNC_PIN	=	0x00a6
                            567 ;--------------------------------------------------------
                            568 ; overlayable register banks
                            569 ;--------------------------------------------------------
                            570 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     571 	.ds 8
                            572 ;--------------------------------------------------------
                            573 ; internal ram data
                            574 ;--------------------------------------------------------
                            575 	.area DSEG    (DATA)
                            576 ;--------------------------------------------------------
                            577 ; overlayable items in internal ram 
                            578 ;--------------------------------------------------------
                            579 ;--------------------------------------------------------
                            580 ; Stack segment in internal ram 
                            581 ;--------------------------------------------------------
                            582 	.area	SSEG	(DATA)
   008C                     583 __start__stack:
   008C                     584 	.ds	1
                            585 
                            586 ;--------------------------------------------------------
                            587 ; indirectly addressable internal ram data
                            588 ;--------------------------------------------------------
                            589 	.area ISEG    (DATA)
                            590 ;--------------------------------------------------------
                            591 ; absolute internal ram data
                            592 ;--------------------------------------------------------
                            593 	.area IABS    (ABS,DATA)
                            594 	.area IABS    (ABS,DATA)
                            595 ;--------------------------------------------------------
                            596 ; bit data
                            597 ;--------------------------------------------------------
                            598 	.area BSEG    (BIT)
   0004                     599 _feature_golay::
   0004                     600 	.ds 1
   0005                     601 _feature_opportunistic_resend::
   0005                     602 	.ds 1
   0006                     603 _feature_mavlink_framing::
   0006                     604 	.ds 1
   0007                     605 _feature_rtscts::
   0007                     606 	.ds 1
                            607 ;--------------------------------------------------------
                            608 ; paged external ram data
                            609 ;--------------------------------------------------------
                            610 	.area PSEG    (PAG,XDATA)
   0032                     611 _g_board_frequency::
   0032                     612 	.ds 1
   0033                     613 _g_board_bl_version::
   0033                     614 	.ds 1
   0034                     615 _errors::
   0034                     616 	.ds 12
   0040                     617 _statistics::
   0040                     618 	.ds 4
   0044                     619 _remote_statistics::
   0044                     620 	.ds 4
   0048                     621 _radio_init_freq_min_1_151:
   0048                     622 	.ds 4
   004C                     623 _radio_init_freq_max_1_151:
   004C                     624 	.ds 4
   0050                     625 _radio_init_channel_spacing_1_151:
   0050                     626 	.ds 4
   0054                     627 _radio_init_txpower_1_151:
   0054                     628 	.ds 1
                            629 ;--------------------------------------------------------
                            630 ; external ram data
                            631 ;--------------------------------------------------------
                            632 	.area XSEG    (XDATA)
                            633 ;--------------------------------------------------------
                            634 ; absolute external ram data
                            635 ;--------------------------------------------------------
                            636 	.area XABS    (ABS,XDATA)
                            637 ;--------------------------------------------------------
                            638 ; external initialized ram data
                            639 ;--------------------------------------------------------
                            640 	.area XISEG   (XDATA)
                            641 	.area HOME    (CODE)
                            642 	.area GSINIT0 (CODE)
                            643 	.area GSINIT1 (CODE)
                            644 	.area GSINIT2 (CODE)
                            645 	.area GSINIT3 (CODE)
                            646 	.area GSINIT4 (CODE)
                            647 	.area GSINIT5 (CODE)
                            648 	.area GSINIT  (CODE)
                            649 	.area GSFINAL (CODE)
                            650 	.area CSEG    (CODE)
                            651 ;--------------------------------------------------------
                            652 ; interrupt vector 
                            653 ;--------------------------------------------------------
                            654 	.area HOME    (CODE)
   0400                     655 __interrupt_vect:
   0400 02 04 79      [24]  656 	ljmp	__sdcc_gsinit_startup
   0403 02 3D 7F      [24]  657 	ljmp	_Receiver_ISR
   0406                     658 	.ds	5
   040B 32            [24]  659 	reti
   040C                     660 	.ds	7
   0413 32            [24]  661 	reti
   0414                     662 	.ds	7
   041B 32            [24]  663 	reti
   041C                     664 	.ds	7
   0423 02 3E C5      [24]  665 	ljmp	_serial_interrupt
   0426                     666 	.ds	5
   042B 02 56 95      [24]  667 	ljmp	_T2_ISR
   042E                     668 	.ds	5
   0433 32            [24]  669 	reti
   0434                     670 	.ds	7
   043B 32            [24]  671 	reti
   043C                     672 	.ds	7
   0443 32            [24]  673 	reti
   0444                     674 	.ds	7
   044B 32            [24]  675 	reti
   044C                     676 	.ds	7
   0453 32            [24]  677 	reti
   0454                     678 	.ds	7
   045B 32            [24]  679 	reti
   045C                     680 	.ds	7
   0463 32            [24]  681 	reti
   0464                     682 	.ds	7
   046B 32            [24]  683 	reti
   046C                     684 	.ds	7
   0473 02 56 0B      [24]  685 	ljmp	_T3_ISR
                            686 ;--------------------------------------------------------
                            687 ; global & static initialisations
                            688 ;--------------------------------------------------------
                            689 	.area HOME    (CODE)
                            690 	.area GSINIT  (CODE)
                            691 	.area GSFINAL (CODE)
                            692 	.area GSINIT  (CODE)
                            693 	.globl __sdcc_gsinit_startup
                            694 	.globl __sdcc_program_startup
                            695 	.globl __start__stack
                            696 	.globl __mcs51_genXINIT
                            697 	.globl __mcs51_genXRAMCLEAR
                            698 	.globl __mcs51_genRAMCLEAR
                            699 	.area GSFINAL (CODE)
   04F6 02 04 76      [24]  700 	ljmp	__sdcc_program_startup
                            701 ;--------------------------------------------------------
                            702 ; Home
                            703 ;--------------------------------------------------------
                            704 	.area HOME    (CODE)
                            705 	.area HOME    (CODE)
   0476                     706 __sdcc_program_startup:
   0476 02 11 72      [24]  707 	ljmp	_main
                            708 ;	return from main will return to caller
                            709 ;--------------------------------------------------------
                            710 ; code
                            711 ;--------------------------------------------------------
                            712 	.area CSEG    (CODE)
                            713 ;------------------------------------------------------------
                            714 ;Allocation info for local variables in function 'main'
                            715 ;------------------------------------------------------------
                            716 ;	radio/main.c:97: main(void)
                            717 ;	-----------------------------------------
                            718 ;	 function main
                            719 ;	-----------------------------------------
   1172                     720 _main:
                     0007   721 	ar7 = 0x07
                     0006   722 	ar6 = 0x06
                     0005   723 	ar5 = 0x05
                     0004   724 	ar4 = 0x04
                     0003   725 	ar3 = 0x03
                     0002   726 	ar2 = 0x02
                     0001   727 	ar1 = 0x01
                     0000   728 	ar0 = 0x00
                            729 ;	radio/main.c:102: g_board_frequency = BOARD_FREQUENCY_REG;
   1172 AF C4         [24]  730 	mov	r7,_ADC0GTH
   1174 78 32         [12]  731 	mov	r0,#_g_board_frequency
   1176 EF            [12]  732 	mov	a,r7
   1177 F2            [24]  733 	movx	@r0,a
                            734 ;	radio/main.c:103: g_board_bl_version = BOARD_BL_VERSION_REG;
   1178 AF C3         [24]  735 	mov	r7,_ADC0GTL
   117A 78 33         [12]  736 	mov	r0,#_g_board_bl_version
   117C EF            [12]  737 	mov	a,r7
   117D F2            [24]  738 	movx	@r0,a
                            739 ;	radio/main.c:107: param_load();
   117E 12 27 92      [24]  740 	lcall	_param_load
                            741 ;	radio/main.c:110: feature_mavlink_framing = param_get(PARAM_MAVLINK)?true:false;
   1181 75 82 06      [24]  742 	mov	dpl,#0x06
   1184 12 27 64      [24]  743 	lcall	_param_get
   1187 AC 82         [24]  744 	mov	r4,dpl
   1189 AD 83         [24]  745 	mov	r5,dph
   118B AE F0         [24]  746 	mov	r6,b
   118D FF            [12]  747 	mov	r7,a
   118E EC            [12]  748 	mov	a,r4
   118F 4D            [12]  749 	orl	a,r5
   1190 4E            [12]  750 	orl	a,r6
   1191 4F            [12]  751 	orl	a,r7
   1192 24 FF         [12]  752 	add	a,#0xff
   1194 92 06         [24]  753 	mov	_feature_mavlink_framing,c
                            754 ;	radio/main.c:111: feature_opportunistic_resend = param_get(PARAM_OPPRESEND)?true:false;
   1196 75 82 07      [24]  755 	mov	dpl,#0x07
   1199 12 27 64      [24]  756 	lcall	_param_get
   119C AC 82         [24]  757 	mov	r4,dpl
   119E AD 83         [24]  758 	mov	r5,dph
   11A0 AE F0         [24]  759 	mov	r6,b
   11A2 FF            [12]  760 	mov	r7,a
   11A3 EC            [12]  761 	mov	a,r4
   11A4 4D            [12]  762 	orl	a,r5
   11A5 4E            [12]  763 	orl	a,r6
   11A6 4F            [12]  764 	orl	a,r7
   11A7 24 FF         [12]  765 	add	a,#0xff
   11A9 92 05         [24]  766 	mov	_feature_opportunistic_resend,c
                            767 ;	radio/main.c:112: feature_golay = param_get(PARAM_ECC)?true:false;
   11AB 75 82 05      [24]  768 	mov	dpl,#0x05
   11AE 12 27 64      [24]  769 	lcall	_param_get
   11B1 AC 82         [24]  770 	mov	r4,dpl
   11B3 AD 83         [24]  771 	mov	r5,dph
   11B5 AE F0         [24]  772 	mov	r6,b
   11B7 FF            [12]  773 	mov	r7,a
   11B8 EC            [12]  774 	mov	a,r4
   11B9 4D            [12]  775 	orl	a,r5
   11BA 4E            [12]  776 	orl	a,r6
   11BB 4F            [12]  777 	orl	a,r7
   11BC 24 FF         [12]  778 	add	a,#0xff
   11BE 92 04         [24]  779 	mov	_feature_golay,c
                            780 ;	radio/main.c:113: feature_rtscts = param_get(PARAM_RTSCTS)?true:false;
   11C0 75 82 0E      [24]  781 	mov	dpl,#0x0E
   11C3 12 27 64      [24]  782 	lcall	_param_get
   11C6 AC 82         [24]  783 	mov	r4,dpl
   11C8 AD 83         [24]  784 	mov	r5,dph
   11CA AE F0         [24]  785 	mov	r6,b
   11CC FF            [12]  786 	mov	r7,a
   11CD EC            [12]  787 	mov	a,r4
   11CE 4D            [12]  788 	orl	a,r5
   11CF 4E            [12]  789 	orl	a,r6
   11D0 4F            [12]  790 	orl	a,r7
   11D1 24 FF         [12]  791 	add	a,#0xff
   11D3 92 07         [24]  792 	mov	_feature_rtscts,c
                            793 ;	radio/main.c:116: hardware_init();
   11D5 12 12 32      [24]  794 	lcall	_hardware_init
                            795 ;	radio/main.c:119: radio_init();
   11D8 12 12 B3      [24]  796 	lcall	_radio_init
                            797 ;	radio/main.c:122: if (!radio_receiver_on()) {
   11DB 12 34 40      [24]  798 	lcall	_radio_receiver_on
   11DE 40 15         [24]  799 	jc	00102$
                            800 ;	radio/main.c:123: panic("failed to enable receiver");
   11E0 74 5F         [12]  801 	mov	a,#__str_0
   11E2 C0 E0         [24]  802 	push	acc
   11E4 74 C8         [12]  803 	mov	a,#(__str_0 >> 8)
   11E6 C0 E0         [24]  804 	push	acc
   11E8 74 80         [12]  805 	mov	a,#0x80
   11EA C0 E0         [24]  806 	push	acc
   11EC 12 11 F8      [24]  807 	lcall	_panic
   11EF 15 81         [12]  808 	dec	sp
   11F1 15 81         [12]  809 	dec	sp
   11F3 15 81         [12]  810 	dec	sp
   11F5                     811 00102$:
                            812 ;	radio/main.c:126: tdm_serial_loop();
   11F5 02 4D 33      [24]  813 	ljmp	_tdm_serial_loop
                            814 ;------------------------------------------------------------
                            815 ;Allocation info for local variables in function 'panic'
                            816 ;------------------------------------------------------------
                            817 ;fmt                       Allocated to stack - sp -4
                            818 ;ap                        Allocated to registers r7 
                            819 ;------------------------------------------------------------
                            820 ;	radio/main.c:130: panic(char *fmt, ...)
                            821 ;	-----------------------------------------
                            822 ;	 function panic
                            823 ;	-----------------------------------------
   11F8                     824 _panic:
                            825 ;	radio/main.c:134: puts("\n**PANIC**");
   11F8 90 C8 79      [24]  826 	mov	dptr,#__str_1
   11FB 75 F0 80      [24]  827 	mov	b,#0x80
   11FE 12 63 12      [24]  828 	lcall	_puts
                            829 ;	radio/main.c:135: va_start(ap, fmt);
   1201 E5 81         [12]  830 	mov	a,sp
   1203 24 FC         [12]  831 	add	a,#0xFC
   1205 FF            [12]  832 	mov	r7,a
                            833 ;	radio/main.c:136: vprintf(fmt, ap);
   1206 C0 07         [24]  834 	push	ar7
   1208 E5 81         [12]  835 	mov	a,sp
   120A 24 FB         [12]  836 	add	a,#0xfb
   120C F8            [12]  837 	mov	r0,a
   120D 86 82         [24]  838 	mov	dpl,@r0
   120F 08            [12]  839 	inc	r0
   1210 86 83         [24]  840 	mov	dph,@r0
   1212 08            [12]  841 	inc	r0
   1213 86 F0         [24]  842 	mov	b,@r0
   1215 12 2B 2E      [24]  843 	lcall	_vprintfl
   1218 15 81         [12]  844 	dec	sp
                            845 ;	radio/main.c:137: puts("");
   121A 90 C8 84      [24]  846 	mov	dptr,#__str_2
   121D 75 F0 80      [24]  847 	mov	b,#0x80
   1220 12 63 12      [24]  848 	lcall	_puts
                            849 ;	radio/main.c:139: EA = 1;
   1223 D2 AF         [12]  850 	setb	_EA
                            851 ;	radio/main.c:140: ES0 = 1;
   1225 D2 AC         [12]  852 	setb	_ES0
                            853 ;	radio/main.c:142: delay_msec(1000);
   1227 90 03 E8      [24]  854 	mov	dptr,#0x03E8
   122A 12 56 8C      [24]  855 	lcall	_delay_msec
                            856 ;	radio/main.c:145: RSTSRC |= (1 << 4);
   122D 43 EF 10      [24]  857 	orl	_RSTSRC,#0x10
   1230                     858 00103$:
   1230 80 FE         [24]  859 	sjmp	00103$
                            860 ;------------------------------------------------------------
                            861 ;Allocation info for local variables in function 'hardware_init'
                            862 ;------------------------------------------------------------
                            863 ;	radio/main.c:151: hardware_init(void)
                            864 ;	-----------------------------------------
                            865 ;	 function hardware_init
                            866 ;	-----------------------------------------
   1232                     867 _hardware_init:
                            868 ;	radio/main.c:156: PCA0MD	&= ~0x40;
   1232 AF D9         [24]  869 	mov	r7,_PCA0MD
   1234 74 BF         [12]  870 	mov	a,#0xBF
   1236 5F            [12]  871 	anl	a,r7
   1237 F5 D9         [12]  872 	mov	_PCA0MD,a
                            873 ;	radio/main.c:159: FLSCL	 =  0x40;
   1239 75 B6 40      [24]  874 	mov	_FLSCL,#0x40
                            875 ;	radio/main.c:160: OSCICN	 =  0x8F;
   123C 75 B2 8F      [24]  876 	mov	_OSCICN,#0x8F
                            877 ;	radio/main.c:161: CLKSEL	 =  0x00;
   123F 75 A9 00      [24]  878 	mov	_CLKSEL,#0x00
                            879 ;	radio/main.c:164: VDM0CN	 =  0x80;
   1242 75 FF 80      [24]  880 	mov	_VDM0CN,#0x80
                            881 ;	radio/main.c:165: for (i = 0; i < 350; i++);	// Wait 100us for initialization
   1245 7E 5E         [12]  882 	mov	r6,#0x5E
   1247 7F 01         [12]  883 	mov	r7,#0x01
   1249                     884 00104$:
   1249 1E            [12]  885 	dec	r6
   124A BE FF 01      [24]  886 	cjne	r6,#0xFF,00114$
   124D 1F            [12]  887 	dec	r7
   124E                     888 00114$:
   124E EE            [12]  889 	mov	a,r6
   124F 4F            [12]  890 	orl	a,r7
   1250 70 F7         [24]  891 	jnz	00104$
                            892 ;	radio/main.c:166: RSTSRC	 =  0x06;		// enable brown out and missing clock reset sources
   1252 75 EF 06      [24]  893 	mov	_RSTSRC,#0x06
                            894 ;	radio/main.c:175: P0MDOUT	 =  0x10;		// UART Tx push-pull
   1255 75 A4 10      [24]  895 	mov	_P0MDOUT,#0x10
                            896 ;	radio/main.c:176: SFRPAGE	 =  CONFIG_PAGE;
   1258 75 A7 0F      [24]  897 	mov	_SFRPAGE,#0x0F
                            898 ;	radio/main.c:177: P0DRV	 =  0x10;		// UART TX
   125B 75 A4 10      [24]  899 	mov	_P0DRV,#0x10
                            900 ;	radio/main.c:178: SFRPAGE	 =  LEGACY_PAGE;
   125E 75 A7 00      [24]  901 	mov	_SFRPAGE,#0x00
                            902 ;	radio/main.c:179: XBR0	 =  0x01;		// UART enable
   1261 75 E1 01      [24]  903 	mov	_XBR0,#0x01
                            904 ;	radio/main.c:187: XBR1	|= 0x40;	// enable SPI in 3-wire mode
   1264 43 E2 40      [24]  905 	orl	_XBR1,#0x40
                            906 ;	radio/main.c:188: P1MDOUT	|= 0xF5;	// SCK1, MOSI1, MISO1 push-pull
   1267 43 A5 F5      [24]  907 	orl	_P1MDOUT,#0xF5
                            908 ;	radio/main.c:190: SFRPAGE	 = CONFIG_PAGE;
   126A 75 A7 0F      [24]  909 	mov	_SFRPAGE,#0x0F
                            910 ;	radio/main.c:191: P1DRV	|= 0xF5;	// SPI signals use high-current mode, LEDs and PAEN High current drive
   126D 43 A5 F5      [24]  911 	orl	_P1DRV,#0xF5
                            912 ;	radio/main.c:192: P2DRV	|= 0xFF;	
   1270 E5 A6         [12]  913 	mov	a,_P2DRV
   1272 75 A6 FF      [24]  914 	mov	_P2DRV,#0xFF
                            915 ;	radio/main.c:193: SFRPAGE	 = LEGACY_PAGE;
   1275 75 A7 00      [24]  916 	mov	_SFRPAGE,#0x00
                            917 ;	radio/main.c:194: SPI1CFG	 = 0x40;	// master mode
   1278 75 84 40      [24]  918 	mov	_SPI1CFG,#0x40
                            919 ;	radio/main.c:195: SPI1CN	 = 0x00;	// 3 wire master mode
   127B 75 B0 00      [24]  920 	mov	_SPI1CN,#0x00
                            921 ;	radio/main.c:196: SPI1CKR	 = 0x00;	// Initialise SPI prescaler to divide-by-2 (12.25MHz, technically out of spec)
   127E 75 85 00      [24]  922 	mov	_SPI1CKR,#0x00
                            923 ;	radio/main.c:197: SPI1CN	|= 0x01;	// enable SPI
   1281 43 B0 01      [24]  924 	orl	_SPI1CN,#0x01
                            925 ;	radio/main.c:198: NSS1	 = 1;		// set NSS high
   1284 D2 94         [12]  926 	setb	_NSS1
                            927 ;	radio/main.c:201: IE0	 = 0;
   1286 C2 89         [12]  928 	clr	_IE0
                            929 ;	radio/main.c:204: timer_init();
   1288 12 57 3B      [24]  930 	lcall	_timer_init
                            931 ;	radio/main.c:207: serial_init(param_get(PARAM_SERIAL_SPEED));
   128B 75 82 01      [24]  932 	mov	dpl,#0x01
   128E 12 27 64      [24]  933 	lcall	_param_get
   1291 AC 82         [24]  934 	mov	r4,dpl
   1293 8C 82         [24]  935 	mov	dpl,r4
   1295 12 40 2D      [24]  936 	lcall	_serial_init
                            937 ;	radio/main.c:210: IP = 0;
   1298 75 B8 00      [24]  938 	mov	_IP,#0x00
                            939 ;	radio/main.c:213: EA = 1;
   129B D2 AF         [12]  940 	setb	_EA
                            941 ;	radio/main.c:216: LED_RADIO = LED_ON;
   129D C2 95         [12]  942 	clr	_LED_GREEN
                            943 ;	radio/main.c:217: LED_BOOTLOADER = LED_OFF;
   129F D2 96         [12]  944 	setb	_LED_RED
                            945 ;	radio/main.c:220: AD0EN = 1;	// Enable ADC0
   12A1 D2 EF         [12]  946 	setb	_AD0EN
                            947 ;	radio/main.c:221: ADC0CF = 0xF9;  // Set amp0gn=1 (1:1)
   12A3 75 BC F9      [24]  948 	mov	_ADC0CF,#0xF9
                            949 ;	radio/main.c:222: ADC0AC = 0x00;
   12A6 75 BA 00      [24]  950 	mov	_ADC0AC,#0x00
                            951 ;	radio/main.c:223: ADC0MX = 0x1B;	// Set ADC0MX to temp sensor
   12A9 75 BB 1B      [24]  952 	mov	_ADC0MX,#0x1B
                            953 ;	radio/main.c:224: REF0CN = 0x07;	// Define reference and enable temp sensor
   12AC 75 D1 07      [24]  954 	mov	_REF0CN,#0x07
                            955 ;	radio/main.c:234: XBR2	 =  0x40;		// Crossbar (GPIO) enable
   12AF 75 E3 40      [24]  956 	mov	_XBR2,#0x40
   12B2 22            [24]  957 	ret
                            958 ;------------------------------------------------------------
                            959 ;Allocation info for local variables in function 'radio_init'
                            960 ;------------------------------------------------------------
                            961 ;	radio/main.c:238: radio_init(void)
                            962 ;	-----------------------------------------
                            963 ;	 function radio_init
                            964 ;	-----------------------------------------
   12B3                     965 _radio_init:
                            966 ;	radio/main.c:245: if (!radio_initialise()) {
   12B3 12 34 7F      [24]  967 	lcall	_radio_initialise
   12B6 40 15         [24]  968 	jc	00102$
                            969 ;	radio/main.c:246: panic("radio_initialise failed");
   12B8 74 85         [12]  970 	mov	a,#__str_3
   12BA C0 E0         [24]  971 	push	acc
   12BC 74 C8         [12]  972 	mov	a,#(__str_3 >> 8)
   12BE C0 E0         [24]  973 	push	acc
   12C0 74 80         [12]  974 	mov	a,#0x80
   12C2 C0 E0         [24]  975 	push	acc
   12C4 12 11 F8      [24]  976 	lcall	_panic
   12C7 15 81         [12]  977 	dec	sp
   12C9 15 81         [12]  978 	dec	sp
   12CB 15 81         [12]  979 	dec	sp
   12CD                     980 00102$:
                            981 ;	radio/main.c:249: switch (g_board_frequency) {
   12CD 78 32         [12]  982 	mov	r0,#_g_board_frequency
   12CF E2            [24]  983 	movx	a,@r0
   12D0 B4 43 02      [24]  984 	cjne	a,#0x43,00193$
   12D3 80 1C         [24]  985 	sjmp	00103$
   12D5                     986 00193$:
   12D5 78 32         [12]  987 	mov	r0,#_g_board_frequency
   12D7 E2            [24]  988 	movx	a,@r0
   12D8 B4 47 02      [24]  989 	cjne	a,#0x47,00194$
   12DB 80 43         [24]  990 	sjmp	00104$
   12DD                     991 00194$:
   12DD 78 32         [12]  992 	mov	r0,#_g_board_frequency
   12DF E2            [24]  993 	movx	a,@r0
   12E0 B4 86 02      [24]  994 	cjne	a,#0x86,00195$
   12E3 80 6A         [24]  995 	sjmp	00105$
   12E5                     996 00195$:
   12E5 78 32         [12]  997 	mov	r0,#_g_board_frequency
   12E7 E2            [24]  998 	movx	a,@r0
   12E8 B4 91 03      [24]  999 	cjne	a,#0x91,00196$
   12EB 02 13 7C      [24] 1000 	ljmp	00106$
   12EE                    1001 00196$:
   12EE 02 13 A9      [24] 1002 	ljmp	00107$
                           1003 ;	radio/main.c:250: case FREQ_433:
   12F1                    1004 00103$:
                           1005 ;	radio/main.c:251: freq_min = 433050000UL;
   12F1 78 48         [12] 1006 	mov	r0,#_radio_init_freq_min_1_151
   12F3 74 90         [12] 1007 	mov	a,#0x90
   12F5 F2            [24] 1008 	movx	@r0,a
   12F6 08            [12] 1009 	inc	r0
   12F7 74 D1         [12] 1010 	mov	a,#0xD1
   12F9 F2            [24] 1011 	movx	@r0,a
   12FA 08            [12] 1012 	inc	r0
   12FB 74 CF         [12] 1013 	mov	a,#0xCF
   12FD F2            [24] 1014 	movx	@r0,a
   12FE 08            [12] 1015 	inc	r0
   12FF 74 19         [12] 1016 	mov	a,#0x19
   1301 F2            [24] 1017 	movx	@r0,a
                           1018 ;	radio/main.c:252: freq_max = 434790000UL;
   1302 78 4C         [12] 1019 	mov	r0,#_radio_init_freq_max_1_151
   1304 74 70         [12] 1020 	mov	a,#0x70
   1306 F2            [24] 1021 	movx	@r0,a
   1307 08            [12] 1022 	inc	r0
   1308 74 5E         [12] 1023 	mov	a,#0x5E
   130A F2            [24] 1024 	movx	@r0,a
   130B 08            [12] 1025 	inc	r0
   130C 74 EA         [12] 1026 	mov	a,#0xEA
   130E F2            [24] 1027 	movx	@r0,a
   130F 08            [12] 1028 	inc	r0
   1310 74 19         [12] 1029 	mov	a,#0x19
   1312 F2            [24] 1030 	movx	@r0,a
                           1031 ;	radio/main.c:253: txpower = 10;
   1313 78 54         [12] 1032 	mov	r0,#_radio_init_txpower_1_151
   1315 74 0A         [12] 1033 	mov	a,#0x0A
   1317 F2            [24] 1034 	movx	@r0,a
                           1035 ;	radio/main.c:254: num_fh_channels = 10;
   1318 78 18         [12] 1036 	mov	r0,#_num_fh_channels
   131A 74 0A         [12] 1037 	mov	a,#0x0A
   131C F2            [24] 1038 	movx	@r0,a
                           1039 ;	radio/main.c:255: break;
   131D 02 13 E0      [24] 1040 	ljmp	00108$
                           1041 ;	radio/main.c:256: case FREQ_470:
   1320                    1042 00104$:
                           1043 ;	radio/main.c:257: freq_min = 470000000UL;
   1320 78 48         [12] 1044 	mov	r0,#_radio_init_freq_min_1_151
   1322 74 80         [12] 1045 	mov	a,#0x80
   1324 F2            [24] 1046 	movx	@r0,a
   1325 08            [12] 1047 	inc	r0
   1326 74 A1         [12] 1048 	mov	a,#0xA1
   1328 F2            [24] 1049 	movx	@r0,a
   1329 08            [12] 1050 	inc	r0
   132A 74 03         [12] 1051 	mov	a,#0x03
   132C F2            [24] 1052 	movx	@r0,a
   132D 08            [12] 1053 	inc	r0
   132E 74 1C         [12] 1054 	mov	a,#0x1C
   1330 F2            [24] 1055 	movx	@r0,a
                           1056 ;	radio/main.c:258: freq_max = 471000000UL;
   1331 78 4C         [12] 1057 	mov	r0,#_radio_init_freq_max_1_151
   1333 74 C0         [12] 1058 	mov	a,#0xC0
   1335 F2            [24] 1059 	movx	@r0,a
   1336 08            [12] 1060 	inc	r0
   1337 74 E3         [12] 1061 	mov	a,#0xE3
   1339 F2            [24] 1062 	movx	@r0,a
   133A 08            [12] 1063 	inc	r0
   133B 74 12         [12] 1064 	mov	a,#0x12
   133D F2            [24] 1065 	movx	@r0,a
   133E 08            [12] 1066 	inc	r0
   133F 74 1C         [12] 1067 	mov	a,#0x1C
   1341 F2            [24] 1068 	movx	@r0,a
                           1069 ;	radio/main.c:259: txpower = 10;
   1342 78 54         [12] 1070 	mov	r0,#_radio_init_txpower_1_151
   1344 74 0A         [12] 1071 	mov	a,#0x0A
   1346 F2            [24] 1072 	movx	@r0,a
                           1073 ;	radio/main.c:260: num_fh_channels = 10;
   1347 78 18         [12] 1074 	mov	r0,#_num_fh_channels
   1349 74 0A         [12] 1075 	mov	a,#0x0A
   134B F2            [24] 1076 	movx	@r0,a
                           1077 ;	radio/main.c:261: break;
   134C 02 13 E0      [24] 1078 	ljmp	00108$
                           1079 ;	radio/main.c:262: case FREQ_868:
   134F                    1080 00105$:
                           1081 ;	radio/main.c:263: freq_min = 868000000UL;
   134F 78 48         [12] 1082 	mov	r0,#_radio_init_freq_min_1_151
   1351 E4            [12] 1083 	clr	a
   1352 F2            [24] 1084 	movx	@r0,a
   1353 08            [12] 1085 	inc	r0
   1354 74 A1         [12] 1086 	mov	a,#0xA1
   1356 F2            [24] 1087 	movx	@r0,a
   1357 08            [12] 1088 	inc	r0
   1358 74 BC         [12] 1089 	mov	a,#0xBC
   135A F2            [24] 1090 	movx	@r0,a
   135B 08            [12] 1091 	inc	r0
   135C 74 33         [12] 1092 	mov	a,#0x33
   135E F2            [24] 1093 	movx	@r0,a
                           1094 ;	radio/main.c:264: freq_max = 869000000UL;
   135F 78 4C         [12] 1095 	mov	r0,#_radio_init_freq_max_1_151
   1361 74 40         [12] 1096 	mov	a,#0x40
   1363 F2            [24] 1097 	movx	@r0,a
   1364 08            [12] 1098 	inc	r0
   1365 74 E3         [12] 1099 	mov	a,#0xE3
   1367 F2            [24] 1100 	movx	@r0,a
   1368 08            [12] 1101 	inc	r0
   1369 74 CB         [12] 1102 	mov	a,#0xCB
   136B F2            [24] 1103 	movx	@r0,a
   136C 08            [12] 1104 	inc	r0
   136D 74 33         [12] 1105 	mov	a,#0x33
   136F F2            [24] 1106 	movx	@r0,a
                           1107 ;	radio/main.c:265: txpower = 10;
   1370 78 54         [12] 1108 	mov	r0,#_radio_init_txpower_1_151
   1372 74 0A         [12] 1109 	mov	a,#0x0A
   1374 F2            [24] 1110 	movx	@r0,a
                           1111 ;	radio/main.c:266: num_fh_channels = 10;
   1375 78 18         [12] 1112 	mov	r0,#_num_fh_channels
   1377 74 0A         [12] 1113 	mov	a,#0x0A
   1379 F2            [24] 1114 	movx	@r0,a
                           1115 ;	radio/main.c:267: break;
                           1116 ;	radio/main.c:268: case FREQ_915:
   137A 80 64         [24] 1117 	sjmp	00108$
   137C                    1118 00106$:
                           1119 ;	radio/main.c:269: freq_min = 915000000UL;
   137C 78 48         [12] 1120 	mov	r0,#_radio_init_freq_min_1_151
   137E 74 C0         [12] 1121 	mov	a,#0xC0
   1380 F2            [24] 1122 	movx	@r0,a
   1381 08            [12] 1123 	inc	r0
   1382 74 CA         [12] 1124 	mov	a,#0xCA
   1384 F2            [24] 1125 	movx	@r0,a
   1385 08            [12] 1126 	inc	r0
   1386 74 89         [12] 1127 	mov	a,#0x89
   1388 F2            [24] 1128 	movx	@r0,a
   1389 08            [12] 1129 	inc	r0
   138A 74 36         [12] 1130 	mov	a,#0x36
   138C F2            [24] 1131 	movx	@r0,a
                           1132 ;	radio/main.c:270: freq_max = 928000000UL;
   138D 78 4C         [12] 1133 	mov	r0,#_radio_init_freq_max_1_151
   138F E4            [12] 1134 	clr	a
   1390 F2            [24] 1135 	movx	@r0,a
   1391 08            [12] 1136 	inc	r0
   1392 74 28         [12] 1137 	mov	a,#0x28
   1394 F2            [24] 1138 	movx	@r0,a
   1395 08            [12] 1139 	inc	r0
   1396 74 50         [12] 1140 	mov	a,#0x50
   1398 F2            [24] 1141 	movx	@r0,a
   1399 08            [12] 1142 	inc	r0
   139A 74 37         [12] 1143 	mov	a,#0x37
   139C F2            [24] 1144 	movx	@r0,a
                           1145 ;	radio/main.c:271: txpower = 20;
   139D 78 54         [12] 1146 	mov	r0,#_radio_init_txpower_1_151
   139F 74 14         [12] 1147 	mov	a,#0x14
   13A1 F2            [24] 1148 	movx	@r0,a
                           1149 ;	radio/main.c:272: num_fh_channels = MAX_FREQ_CHANNELS;
   13A2 78 18         [12] 1150 	mov	r0,#_num_fh_channels
   13A4 74 32         [12] 1151 	mov	a,#0x32
   13A6 F2            [24] 1152 	movx	@r0,a
                           1153 ;	radio/main.c:273: break;
                           1154 ;	radio/main.c:274: default:
   13A7 80 37         [24] 1155 	sjmp	00108$
   13A9                    1156 00107$:
                           1157 ;	radio/main.c:275: freq_min = 0;
   13A9 78 48         [12] 1158 	mov	r0,#_radio_init_freq_min_1_151
   13AB E4            [12] 1159 	clr	a
   13AC F2            [24] 1160 	movx	@r0,a
   13AD 08            [12] 1161 	inc	r0
   13AE F2            [24] 1162 	movx	@r0,a
   13AF 08            [12] 1163 	inc	r0
   13B0 F2            [24] 1164 	movx	@r0,a
   13B1 08            [12] 1165 	inc	r0
   13B2 F2            [24] 1166 	movx	@r0,a
                           1167 ;	radio/main.c:276: freq_max = 0;
   13B3 78 4C         [12] 1168 	mov	r0,#_radio_init_freq_max_1_151
   13B5 E4            [12] 1169 	clr	a
   13B6 F2            [24] 1170 	movx	@r0,a
   13B7 08            [12] 1171 	inc	r0
   13B8 F2            [24] 1172 	movx	@r0,a
   13B9 08            [12] 1173 	inc	r0
   13BA F2            [24] 1174 	movx	@r0,a
   13BB 08            [12] 1175 	inc	r0
   13BC F2            [24] 1176 	movx	@r0,a
                           1177 ;	radio/main.c:277: txpower = 0;
   13BD 78 54         [12] 1178 	mov	r0,#_radio_init_txpower_1_151
   13BF E4            [12] 1179 	clr	a
   13C0 F2            [24] 1180 	movx	@r0,a
                           1181 ;	radio/main.c:278: panic("bad board frequency %d", g_board_frequency);
   13C1 78 32         [12] 1182 	mov	r0,#_g_board_frequency
   13C3 E2            [24] 1183 	movx	a,@r0
   13C4 FA            [12] 1184 	mov	r2,a
   13C5 7B 00         [12] 1185 	mov	r3,#0x00
   13C7 C0 02         [24] 1186 	push	ar2
   13C9 C0 03         [24] 1187 	push	ar3
   13CB 74 9D         [12] 1188 	mov	a,#__str_4
   13CD C0 E0         [24] 1189 	push	acc
   13CF 74 C8         [12] 1190 	mov	a,#(__str_4 >> 8)
   13D1 C0 E0         [24] 1191 	push	acc
   13D3 74 80         [12] 1192 	mov	a,#0x80
   13D5 C0 E0         [24] 1193 	push	acc
   13D7 12 11 F8      [24] 1194 	lcall	_panic
   13DA E5 81         [12] 1195 	mov	a,sp
   13DC 24 FB         [12] 1196 	add	a,#0xfb
   13DE F5 81         [12] 1197 	mov	sp,a
                           1198 ;	radio/main.c:280: }
   13E0                    1199 00108$:
                           1200 ;	radio/main.c:282: if (param_get(PARAM_NUM_CHANNELS) != 0) {
   13E0 75 82 0A      [24] 1201 	mov	dpl,#0x0A
   13E3 12 27 64      [24] 1202 	lcall	_param_get
   13E6 AA 82         [24] 1203 	mov	r2,dpl
   13E8 AB 83         [24] 1204 	mov	r3,dph
   13EA AE F0         [24] 1205 	mov	r6,b
   13EC FF            [12] 1206 	mov	r7,a
   13ED EA            [12] 1207 	mov	a,r2
   13EE 4B            [12] 1208 	orl	a,r3
   13EF 4E            [12] 1209 	orl	a,r6
   13F0 4F            [12] 1210 	orl	a,r7
   13F1 60 11         [24] 1211 	jz	00110$
                           1212 ;	radio/main.c:283: num_fh_channels = param_get(PARAM_NUM_CHANNELS);
   13F3 75 82 0A      [24] 1213 	mov	dpl,#0x0A
   13F6 12 27 64      [24] 1214 	lcall	_param_get
   13F9 AC 82         [24] 1215 	mov	r4,dpl
   13FB AD 83         [24] 1216 	mov	r5,dph
   13FD AE F0         [24] 1217 	mov	r6,b
   13FF FF            [12] 1218 	mov	r7,a
   1400 78 18         [12] 1219 	mov	r0,#_num_fh_channels
   1402 EC            [12] 1220 	mov	a,r4
   1403 F2            [24] 1221 	movx	@r0,a
   1404                    1222 00110$:
                           1223 ;	radio/main.c:285: if (param_get(PARAM_MIN_FREQ) != 0) {
   1404 75 82 08      [24] 1224 	mov	dpl,#0x08
   1407 12 27 64      [24] 1225 	lcall	_param_get
   140A AC 82         [24] 1226 	mov	r4,dpl
   140C AD 83         [24] 1227 	mov	r5,dph
   140E AE F0         [24] 1228 	mov	r6,b
   1410 FF            [12] 1229 	mov	r7,a
   1411 EC            [12] 1230 	mov	a,r4
   1412 4D            [12] 1231 	orl	a,r5
   1413 4E            [12] 1232 	orl	a,r6
   1414 4F            [12] 1233 	orl	a,r7
   1415 60 37         [24] 1234 	jz	00112$
                           1235 ;	radio/main.c:286: freq_min        = param_get(PARAM_MIN_FREQ) * 1000UL;
   1417 75 82 08      [24] 1236 	mov	dpl,#0x08
   141A 12 27 64      [24] 1237 	lcall	_param_get
   141D AC 82         [24] 1238 	mov	r4,dpl
   141F AD 83         [24] 1239 	mov	r5,dph
   1421 AE F0         [24] 1240 	mov	r6,b
   1423 FF            [12] 1241 	mov	r7,a
   1424 90 05 D7      [24] 1242 	mov	dptr,#__mullong_PARM_2
   1427 EC            [12] 1243 	mov	a,r4
   1428 F0            [24] 1244 	movx	@dptr,a
   1429 ED            [12] 1245 	mov	a,r5
   142A A3            [24] 1246 	inc	dptr
   142B F0            [24] 1247 	movx	@dptr,a
   142C EE            [12] 1248 	mov	a,r6
   142D A3            [24] 1249 	inc	dptr
   142E F0            [24] 1250 	movx	@dptr,a
   142F EF            [12] 1251 	mov	a,r7
   1430 A3            [24] 1252 	inc	dptr
   1431 F0            [24] 1253 	movx	@dptr,a
   1432 90 03 E8      [24] 1254 	mov	dptr,#0x03E8
   1435 E4            [12] 1255 	clr	a
   1436 F5 F0         [12] 1256 	mov	b,a
   1438 12 5F 91      [24] 1257 	lcall	__mullong
   143B 78 48         [12] 1258 	mov	r0,#_radio_init_freq_min_1_151
   143D C0 E0         [24] 1259 	push	acc
   143F E5 82         [12] 1260 	mov	a,dpl
   1441 F2            [24] 1261 	movx	@r0,a
   1442 08            [12] 1262 	inc	r0
   1443 E5 83         [12] 1263 	mov	a,dph
   1445 F2            [24] 1264 	movx	@r0,a
   1446 08            [12] 1265 	inc	r0
   1447 E5 F0         [12] 1266 	mov	a,b
   1449 F2            [24] 1267 	movx	@r0,a
   144A D0 E0         [24] 1268 	pop	acc
   144C 08            [12] 1269 	inc	r0
   144D F2            [24] 1270 	movx	@r0,a
   144E                    1271 00112$:
                           1272 ;	radio/main.c:288: if (param_get(PARAM_MAX_FREQ) != 0) {
   144E 75 82 09      [24] 1273 	mov	dpl,#0x09
   1451 12 27 64      [24] 1274 	lcall	_param_get
   1454 AC 82         [24] 1275 	mov	r4,dpl
   1456 AD 83         [24] 1276 	mov	r5,dph
   1458 AE F0         [24] 1277 	mov	r6,b
   145A FF            [12] 1278 	mov	r7,a
   145B EC            [12] 1279 	mov	a,r4
   145C 4D            [12] 1280 	orl	a,r5
   145D 4E            [12] 1281 	orl	a,r6
   145E 4F            [12] 1282 	orl	a,r7
   145F 60 37         [24] 1283 	jz	00114$
                           1284 ;	radio/main.c:289: freq_max        = param_get(PARAM_MAX_FREQ) * 1000UL;
   1461 75 82 09      [24] 1285 	mov	dpl,#0x09
   1464 12 27 64      [24] 1286 	lcall	_param_get
   1467 AC 82         [24] 1287 	mov	r4,dpl
   1469 AD 83         [24] 1288 	mov	r5,dph
   146B AE F0         [24] 1289 	mov	r6,b
   146D FF            [12] 1290 	mov	r7,a
   146E 90 05 D7      [24] 1291 	mov	dptr,#__mullong_PARM_2
   1471 EC            [12] 1292 	mov	a,r4
   1472 F0            [24] 1293 	movx	@dptr,a
   1473 ED            [12] 1294 	mov	a,r5
   1474 A3            [24] 1295 	inc	dptr
   1475 F0            [24] 1296 	movx	@dptr,a
   1476 EE            [12] 1297 	mov	a,r6
   1477 A3            [24] 1298 	inc	dptr
   1478 F0            [24] 1299 	movx	@dptr,a
   1479 EF            [12] 1300 	mov	a,r7
   147A A3            [24] 1301 	inc	dptr
   147B F0            [24] 1302 	movx	@dptr,a
   147C 90 03 E8      [24] 1303 	mov	dptr,#0x03E8
   147F E4            [12] 1304 	clr	a
   1480 F5 F0         [12] 1305 	mov	b,a
   1482 12 5F 91      [24] 1306 	lcall	__mullong
   1485 78 4C         [12] 1307 	mov	r0,#_radio_init_freq_max_1_151
   1487 C0 E0         [24] 1308 	push	acc
   1489 E5 82         [12] 1309 	mov	a,dpl
   148B F2            [24] 1310 	movx	@r0,a
   148C 08            [12] 1311 	inc	r0
   148D E5 83         [12] 1312 	mov	a,dph
   148F F2            [24] 1313 	movx	@r0,a
   1490 08            [12] 1314 	inc	r0
   1491 E5 F0         [12] 1315 	mov	a,b
   1493 F2            [24] 1316 	movx	@r0,a
   1494 D0 E0         [24] 1317 	pop	acc
   1496 08            [12] 1318 	inc	r0
   1497 F2            [24] 1319 	movx	@r0,a
   1498                    1320 00114$:
                           1321 ;	radio/main.c:291: if (param_get(PARAM_TXPOWER) != 0) {
   1498 75 82 04      [24] 1322 	mov	dpl,#0x04
   149B 12 27 64      [24] 1323 	lcall	_param_get
   149E AC 82         [24] 1324 	mov	r4,dpl
   14A0 AD 83         [24] 1325 	mov	r5,dph
   14A2 AE F0         [24] 1326 	mov	r6,b
   14A4 FF            [12] 1327 	mov	r7,a
   14A5 EC            [12] 1328 	mov	a,r4
   14A6 4D            [12] 1329 	orl	a,r5
   14A7 4E            [12] 1330 	orl	a,r6
   14A8 4F            [12] 1331 	orl	a,r7
   14A9 60 11         [24] 1332 	jz	00116$
                           1333 ;	radio/main.c:292: txpower = param_get(PARAM_TXPOWER);
   14AB 75 82 04      [24] 1334 	mov	dpl,#0x04
   14AE 12 27 64      [24] 1335 	lcall	_param_get
   14B1 AC 82         [24] 1336 	mov	r4,dpl
   14B3 AD 83         [24] 1337 	mov	r5,dph
   14B5 AE F0         [24] 1338 	mov	r6,b
   14B7 FF            [12] 1339 	mov	r7,a
   14B8 78 54         [12] 1340 	mov	r0,#_radio_init_txpower_1_151
   14BA EC            [12] 1341 	mov	a,r4
   14BB F2            [24] 1342 	movx	@r0,a
   14BC                    1343 00116$:
                           1344 ;	radio/main.c:296: txpower = constrain(txpower, BOARD_MINTXPOWER, BOARD_MAXTXPOWER);
   14BC 78 54         [12] 1345 	mov	r0,#_radio_init_txpower_1_151
   14BE E2            [24] 1346 	movx	a,@r0
   14BF FB            [12] 1347 	mov	r3,a
   14C0 7D 00         [12] 1348 	mov	r5,#0x00
   14C2 7E 00         [12] 1349 	mov	r6,#0x00
   14C4 7F 00         [12] 1350 	mov	r7,#0x00
   14C6 78 6F         [12] 1351 	mov	r0,#_constrain_PARM_2
   14C8 E4            [12] 1352 	clr	a
   14C9 F2            [24] 1353 	movx	@r0,a
   14CA 08            [12] 1354 	inc	r0
   14CB F2            [24] 1355 	movx	@r0,a
   14CC 08            [12] 1356 	inc	r0
   14CD F2            [24] 1357 	movx	@r0,a
   14CE 08            [12] 1358 	inc	r0
   14CF F2            [24] 1359 	movx	@r0,a
   14D0 78 73         [12] 1360 	mov	r0,#_constrain_PARM_3
   14D2 74 14         [12] 1361 	mov	a,#0x14
   14D4 F2            [24] 1362 	movx	@r0,a
   14D5 08            [12] 1363 	inc	r0
   14D6 E4            [12] 1364 	clr	a
   14D7 F2            [24] 1365 	movx	@r0,a
   14D8 08            [12] 1366 	inc	r0
   14D9 F2            [24] 1367 	movx	@r0,a
   14DA 08            [12] 1368 	inc	r0
   14DB F2            [24] 1369 	movx	@r0,a
   14DC 8B 82         [24] 1370 	mov	dpl,r3
   14DE 8D 83         [24] 1371 	mov	dph,r5
   14E0 8E F0         [24] 1372 	mov	b,r6
   14E2 EF            [12] 1373 	mov	a,r7
   14E3 12 2A 72      [24] 1374 	lcall	_constrain
   14E6 AC 82         [24] 1375 	mov	r4,dpl
   14E8 78 54         [12] 1376 	mov	r0,#_radio_init_txpower_1_151
   14EA EC            [12] 1377 	mov	a,r4
   14EB F2            [24] 1378 	movx	@r0,a
                           1379 ;	radio/main.c:297: num_fh_channels = constrain(num_fh_channels, 1, MAX_FREQ_CHANNELS);
   14EC 78 18         [12] 1380 	mov	r0,#_num_fh_channels
   14EE E2            [24] 1381 	movx	a,@r0
   14EF FC            [12] 1382 	mov	r4,a
   14F0 7D 00         [12] 1383 	mov	r5,#0x00
   14F2 7E 00         [12] 1384 	mov	r6,#0x00
   14F4 7F 00         [12] 1385 	mov	r7,#0x00
   14F6 78 6F         [12] 1386 	mov	r0,#_constrain_PARM_2
   14F8 74 01         [12] 1387 	mov	a,#0x01
   14FA F2            [24] 1388 	movx	@r0,a
   14FB 08            [12] 1389 	inc	r0
   14FC E4            [12] 1390 	clr	a
   14FD F2            [24] 1391 	movx	@r0,a
   14FE 08            [12] 1392 	inc	r0
   14FF F2            [24] 1393 	movx	@r0,a
   1500 08            [12] 1394 	inc	r0
   1501 F2            [24] 1395 	movx	@r0,a
   1502 78 73         [12] 1396 	mov	r0,#_constrain_PARM_3
   1504 74 32         [12] 1397 	mov	a,#0x32
   1506 F2            [24] 1398 	movx	@r0,a
   1507 08            [12] 1399 	inc	r0
   1508 E4            [12] 1400 	clr	a
   1509 F2            [24] 1401 	movx	@r0,a
   150A 08            [12] 1402 	inc	r0
   150B F2            [24] 1403 	movx	@r0,a
   150C 08            [12] 1404 	inc	r0
   150D F2            [24] 1405 	movx	@r0,a
   150E 8C 82         [24] 1406 	mov	dpl,r4
   1510 8D 83         [24] 1407 	mov	dph,r5
   1512 8E F0         [24] 1408 	mov	b,r6
   1514 EF            [12] 1409 	mov	a,r7
   1515 12 2A 72      [24] 1410 	lcall	_constrain
   1518 AC 82         [24] 1411 	mov	r4,dpl
   151A AD 83         [24] 1412 	mov	r5,dph
   151C AE F0         [24] 1413 	mov	r6,b
   151E FF            [12] 1414 	mov	r7,a
   151F 78 18         [12] 1415 	mov	r0,#_num_fh_channels
   1521 EC            [12] 1416 	mov	a,r4
   1522 F2            [24] 1417 	movx	@r0,a
                           1418 ;	radio/main.c:300: switch (g_board_frequency) {
   1523 78 32         [12] 1419 	mov	r0,#_g_board_frequency
   1525 E2            [24] 1420 	movx	a,@r0
   1526 B4 43 02      [24] 1421 	cjne	a,#0x43,00201$
   1529 80 1E         [24] 1422 	sjmp	00117$
   152B                    1423 00201$:
   152B 78 32         [12] 1424 	mov	r0,#_g_board_frequency
   152D E2            [24] 1425 	movx	a,@r0
   152E B4 47 03      [24] 1426 	cjne	a,#0x47,00202$
   1531 02 15 D8      [24] 1427 	ljmp	00118$
   1534                    1428 00202$:
   1534 78 32         [12] 1429 	mov	r0,#_g_board_frequency
   1536 E2            [24] 1430 	movx	a,@r0
   1537 B4 86 03      [24] 1431 	cjne	a,#0x86,00203$
   153A 02 16 69      [24] 1432 	ljmp	00119$
   153D                    1433 00203$:
   153D 78 32         [12] 1434 	mov	r0,#_g_board_frequency
   153F E2            [24] 1435 	movx	a,@r0
   1540 B4 91 03      [24] 1436 	cjne	a,#0x91,00204$
   1543 02 16 FA      [24] 1437 	ljmp	00120$
   1546                    1438 00204$:
   1546 02 17 88      [24] 1439 	ljmp	00121$
                           1440 ;	radio/main.c:301: case FREQ_433:
   1549                    1441 00117$:
                           1442 ;	radio/main.c:302: freq_min = constrain(freq_min, 414000000UL, 460000000UL);
   1549 78 6F         [12] 1443 	mov	r0,#_constrain_PARM_2
   154B 74 80         [12] 1444 	mov	a,#0x80
   154D F2            [24] 1445 	movx	@r0,a
   154E 08            [12] 1446 	inc	r0
   154F 74 23         [12] 1447 	mov	a,#0x23
   1551 F2            [24] 1448 	movx	@r0,a
   1552 08            [12] 1449 	inc	r0
   1553 74 AD         [12] 1450 	mov	a,#0xAD
   1555 F2            [24] 1451 	movx	@r0,a
   1556 08            [12] 1452 	inc	r0
   1557 74 18         [12] 1453 	mov	a,#0x18
   1559 F2            [24] 1454 	movx	@r0,a
   155A 78 73         [12] 1455 	mov	r0,#_constrain_PARM_3
   155C E4            [12] 1456 	clr	a
   155D F2            [24] 1457 	movx	@r0,a
   155E 08            [12] 1458 	inc	r0
   155F 74 0B         [12] 1459 	mov	a,#0x0B
   1561 F2            [24] 1460 	movx	@r0,a
   1562 08            [12] 1461 	inc	r0
   1563 74 6B         [12] 1462 	mov	a,#0x6B
   1565 F2            [24] 1463 	movx	@r0,a
   1566 08            [12] 1464 	inc	r0
   1567 74 1B         [12] 1465 	mov	a,#0x1B
   1569 F2            [24] 1466 	movx	@r0,a
   156A 78 48         [12] 1467 	mov	r0,#_radio_init_freq_min_1_151
   156C E2            [24] 1468 	movx	a,@r0
   156D F5 82         [12] 1469 	mov	dpl,a
   156F 08            [12] 1470 	inc	r0
   1570 E2            [24] 1471 	movx	a,@r0
   1571 F5 83         [12] 1472 	mov	dph,a
   1573 08            [12] 1473 	inc	r0
   1574 E2            [24] 1474 	movx	a,@r0
   1575 F5 F0         [12] 1475 	mov	b,a
   1577 08            [12] 1476 	inc	r0
   1578 E2            [24] 1477 	movx	a,@r0
   1579 12 2A 72      [24] 1478 	lcall	_constrain
   157C 78 48         [12] 1479 	mov	r0,#_radio_init_freq_min_1_151
   157E C0 E0         [24] 1480 	push	acc
   1580 E5 82         [12] 1481 	mov	a,dpl
   1582 F2            [24] 1482 	movx	@r0,a
   1583 08            [12] 1483 	inc	r0
   1584 E5 83         [12] 1484 	mov	a,dph
   1586 F2            [24] 1485 	movx	@r0,a
   1587 08            [12] 1486 	inc	r0
   1588 E5 F0         [12] 1487 	mov	a,b
   158A F2            [24] 1488 	movx	@r0,a
   158B D0 E0         [24] 1489 	pop	acc
   158D 08            [12] 1490 	inc	r0
   158E F2            [24] 1491 	movx	@r0,a
                           1492 ;	radio/main.c:303: freq_max = constrain(freq_max, 414000000UL, 460000000UL);
   158F 78 6F         [12] 1493 	mov	r0,#_constrain_PARM_2
   1591 74 80         [12] 1494 	mov	a,#0x80
   1593 F2            [24] 1495 	movx	@r0,a
   1594 08            [12] 1496 	inc	r0
   1595 74 23         [12] 1497 	mov	a,#0x23
   1597 F2            [24] 1498 	movx	@r0,a
   1598 08            [12] 1499 	inc	r0
   1599 74 AD         [12] 1500 	mov	a,#0xAD
   159B F2            [24] 1501 	movx	@r0,a
   159C 08            [12] 1502 	inc	r0
   159D 74 18         [12] 1503 	mov	a,#0x18
   159F F2            [24] 1504 	movx	@r0,a
   15A0 78 73         [12] 1505 	mov	r0,#_constrain_PARM_3
   15A2 E4            [12] 1506 	clr	a
   15A3 F2            [24] 1507 	movx	@r0,a
   15A4 08            [12] 1508 	inc	r0
   15A5 74 0B         [12] 1509 	mov	a,#0x0B
   15A7 F2            [24] 1510 	movx	@r0,a
   15A8 08            [12] 1511 	inc	r0
   15A9 74 6B         [12] 1512 	mov	a,#0x6B
   15AB F2            [24] 1513 	movx	@r0,a
   15AC 08            [12] 1514 	inc	r0
   15AD 74 1B         [12] 1515 	mov	a,#0x1B
   15AF F2            [24] 1516 	movx	@r0,a
   15B0 78 4C         [12] 1517 	mov	r0,#_radio_init_freq_max_1_151
   15B2 E2            [24] 1518 	movx	a,@r0
   15B3 F5 82         [12] 1519 	mov	dpl,a
   15B5 08            [12] 1520 	inc	r0
   15B6 E2            [24] 1521 	movx	a,@r0
   15B7 F5 83         [12] 1522 	mov	dph,a
   15B9 08            [12] 1523 	inc	r0
   15BA E2            [24] 1524 	movx	a,@r0
   15BB F5 F0         [12] 1525 	mov	b,a
   15BD 08            [12] 1526 	inc	r0
   15BE E2            [24] 1527 	movx	a,@r0
   15BF 12 2A 72      [24] 1528 	lcall	_constrain
   15C2 78 4C         [12] 1529 	mov	r0,#_radio_init_freq_max_1_151
   15C4 C0 E0         [24] 1530 	push	acc
   15C6 E5 82         [12] 1531 	mov	a,dpl
   15C8 F2            [24] 1532 	movx	@r0,a
   15C9 08            [12] 1533 	inc	r0
   15CA E5 83         [12] 1534 	mov	a,dph
   15CC F2            [24] 1535 	movx	@r0,a
   15CD 08            [12] 1536 	inc	r0
   15CE E5 F0         [12] 1537 	mov	a,b
   15D0 F2            [24] 1538 	movx	@r0,a
   15D1 D0 E0         [24] 1539 	pop	acc
   15D3 08            [12] 1540 	inc	r0
   15D4 F2            [24] 1541 	movx	@r0,a
                           1542 ;	radio/main.c:304: break;
   15D5 02 17 A7      [24] 1543 	ljmp	00122$
                           1544 ;	radio/main.c:305: case FREQ_470:
   15D8                    1545 00118$:
                           1546 ;	radio/main.c:306: freq_min = constrain(freq_min, 450000000UL, 490000000UL);
   15D8 78 6F         [12] 1547 	mov	r0,#_constrain_PARM_2
   15DA 74 80         [12] 1548 	mov	a,#0x80
   15DC F2            [24] 1549 	movx	@r0,a
   15DD 08            [12] 1550 	inc	r0
   15DE 74 74         [12] 1551 	mov	a,#0x74
   15E0 F2            [24] 1552 	movx	@r0,a
   15E1 08            [12] 1553 	inc	r0
   15E2 74 D2         [12] 1554 	mov	a,#0xD2
   15E4 F2            [24] 1555 	movx	@r0,a
   15E5 08            [12] 1556 	inc	r0
   15E6 74 1A         [12] 1557 	mov	a,#0x1A
   15E8 F2            [24] 1558 	movx	@r0,a
   15E9 78 73         [12] 1559 	mov	r0,#_constrain_PARM_3
   15EB 74 80         [12] 1560 	mov	a,#0x80
   15ED F2            [24] 1561 	movx	@r0,a
   15EE 08            [12] 1562 	inc	r0
   15EF 74 CE         [12] 1563 	mov	a,#0xCE
   15F1 F2            [24] 1564 	movx	@r0,a
   15F2 08            [12] 1565 	inc	r0
   15F3 74 34         [12] 1566 	mov	a,#0x34
   15F5 F2            [24] 1567 	movx	@r0,a
   15F6 08            [12] 1568 	inc	r0
   15F7 74 1D         [12] 1569 	mov	a,#0x1D
   15F9 F2            [24] 1570 	movx	@r0,a
   15FA 78 48         [12] 1571 	mov	r0,#_radio_init_freq_min_1_151
   15FC E2            [24] 1572 	movx	a,@r0
   15FD F5 82         [12] 1573 	mov	dpl,a
   15FF 08            [12] 1574 	inc	r0
   1600 E2            [24] 1575 	movx	a,@r0
   1601 F5 83         [12] 1576 	mov	dph,a
   1603 08            [12] 1577 	inc	r0
   1604 E2            [24] 1578 	movx	a,@r0
   1605 F5 F0         [12] 1579 	mov	b,a
   1607 08            [12] 1580 	inc	r0
   1608 E2            [24] 1581 	movx	a,@r0
   1609 12 2A 72      [24] 1582 	lcall	_constrain
   160C 78 48         [12] 1583 	mov	r0,#_radio_init_freq_min_1_151
   160E C0 E0         [24] 1584 	push	acc
   1610 E5 82         [12] 1585 	mov	a,dpl
   1612 F2            [24] 1586 	movx	@r0,a
   1613 08            [12] 1587 	inc	r0
   1614 E5 83         [12] 1588 	mov	a,dph
   1616 F2            [24] 1589 	movx	@r0,a
   1617 08            [12] 1590 	inc	r0
   1618 E5 F0         [12] 1591 	mov	a,b
   161A F2            [24] 1592 	movx	@r0,a
   161B D0 E0         [24] 1593 	pop	acc
   161D 08            [12] 1594 	inc	r0
   161E F2            [24] 1595 	movx	@r0,a
                           1596 ;	radio/main.c:307: freq_max = constrain(freq_max, 450000000UL, 490000000UL);
   161F 78 6F         [12] 1597 	mov	r0,#_constrain_PARM_2
   1621 74 80         [12] 1598 	mov	a,#0x80
   1623 F2            [24] 1599 	movx	@r0,a
   1624 08            [12] 1600 	inc	r0
   1625 74 74         [12] 1601 	mov	a,#0x74
   1627 F2            [24] 1602 	movx	@r0,a
   1628 08            [12] 1603 	inc	r0
   1629 74 D2         [12] 1604 	mov	a,#0xD2
   162B F2            [24] 1605 	movx	@r0,a
   162C 08            [12] 1606 	inc	r0
   162D 74 1A         [12] 1607 	mov	a,#0x1A
   162F F2            [24] 1608 	movx	@r0,a
   1630 78 73         [12] 1609 	mov	r0,#_constrain_PARM_3
   1632 74 80         [12] 1610 	mov	a,#0x80
   1634 F2            [24] 1611 	movx	@r0,a
   1635 08            [12] 1612 	inc	r0
   1636 74 CE         [12] 1613 	mov	a,#0xCE
   1638 F2            [24] 1614 	movx	@r0,a
   1639 08            [12] 1615 	inc	r0
   163A 74 34         [12] 1616 	mov	a,#0x34
   163C F2            [24] 1617 	movx	@r0,a
   163D 08            [12] 1618 	inc	r0
   163E 74 1D         [12] 1619 	mov	a,#0x1D
   1640 F2            [24] 1620 	movx	@r0,a
   1641 78 4C         [12] 1621 	mov	r0,#_radio_init_freq_max_1_151
   1643 E2            [24] 1622 	movx	a,@r0
   1644 F5 82         [12] 1623 	mov	dpl,a
   1646 08            [12] 1624 	inc	r0
   1647 E2            [24] 1625 	movx	a,@r0
   1648 F5 83         [12] 1626 	mov	dph,a
   164A 08            [12] 1627 	inc	r0
   164B E2            [24] 1628 	movx	a,@r0
   164C F5 F0         [12] 1629 	mov	b,a
   164E 08            [12] 1630 	inc	r0
   164F E2            [24] 1631 	movx	a,@r0
   1650 12 2A 72      [24] 1632 	lcall	_constrain
   1653 78 4C         [12] 1633 	mov	r0,#_radio_init_freq_max_1_151
   1655 C0 E0         [24] 1634 	push	acc
   1657 E5 82         [12] 1635 	mov	a,dpl
   1659 F2            [24] 1636 	movx	@r0,a
   165A 08            [12] 1637 	inc	r0
   165B E5 83         [12] 1638 	mov	a,dph
   165D F2            [24] 1639 	movx	@r0,a
   165E 08            [12] 1640 	inc	r0
   165F E5 F0         [12] 1641 	mov	a,b
   1661 F2            [24] 1642 	movx	@r0,a
   1662 D0 E0         [24] 1643 	pop	acc
   1664 08            [12] 1644 	inc	r0
   1665 F2            [24] 1645 	movx	@r0,a
                           1646 ;	radio/main.c:308: break;
   1666 02 17 A7      [24] 1647 	ljmp	00122$
                           1648 ;	radio/main.c:309: case FREQ_868:
   1669                    1649 00119$:
                           1650 ;	radio/main.c:310: freq_min = constrain(freq_min, 849000000UL, 889000000UL);
   1669 78 6F         [12] 1651 	mov	r0,#_constrain_PARM_2
   166B 74 40         [12] 1652 	mov	a,#0x40
   166D F2            [24] 1653 	movx	@r0,a
   166E 08            [12] 1654 	inc	r0
   166F 74 B6         [12] 1655 	mov	a,#0xB6
   1671 F2            [24] 1656 	movx	@r0,a
   1672 08            [12] 1657 	inc	r0
   1673 74 9A         [12] 1658 	mov	a,#0x9A
   1675 F2            [24] 1659 	movx	@r0,a
   1676 08            [12] 1660 	inc	r0
   1677 74 32         [12] 1661 	mov	a,#0x32
   1679 F2            [24] 1662 	movx	@r0,a
   167A 78 73         [12] 1663 	mov	r0,#_constrain_PARM_3
   167C 74 40         [12] 1664 	mov	a,#0x40
   167E F2            [24] 1665 	movx	@r0,a
   167F 08            [12] 1666 	inc	r0
   1680 74 10         [12] 1667 	mov	a,#0x10
   1682 F2            [24] 1668 	movx	@r0,a
   1683 08            [12] 1669 	inc	r0
   1684 74 FD         [12] 1670 	mov	a,#0xFD
   1686 F2            [24] 1671 	movx	@r0,a
   1687 08            [12] 1672 	inc	r0
   1688 74 34         [12] 1673 	mov	a,#0x34
   168A F2            [24] 1674 	movx	@r0,a
   168B 78 48         [12] 1675 	mov	r0,#_radio_init_freq_min_1_151
   168D E2            [24] 1676 	movx	a,@r0
   168E F5 82         [12] 1677 	mov	dpl,a
   1690 08            [12] 1678 	inc	r0
   1691 E2            [24] 1679 	movx	a,@r0
   1692 F5 83         [12] 1680 	mov	dph,a
   1694 08            [12] 1681 	inc	r0
   1695 E2            [24] 1682 	movx	a,@r0
   1696 F5 F0         [12] 1683 	mov	b,a
   1698 08            [12] 1684 	inc	r0
   1699 E2            [24] 1685 	movx	a,@r0
   169A 12 2A 72      [24] 1686 	lcall	_constrain
   169D 78 48         [12] 1687 	mov	r0,#_radio_init_freq_min_1_151
   169F C0 E0         [24] 1688 	push	acc
   16A1 E5 82         [12] 1689 	mov	a,dpl
   16A3 F2            [24] 1690 	movx	@r0,a
   16A4 08            [12] 1691 	inc	r0
   16A5 E5 83         [12] 1692 	mov	a,dph
   16A7 F2            [24] 1693 	movx	@r0,a
   16A8 08            [12] 1694 	inc	r0
   16A9 E5 F0         [12] 1695 	mov	a,b
   16AB F2            [24] 1696 	movx	@r0,a
   16AC D0 E0         [24] 1697 	pop	acc
   16AE 08            [12] 1698 	inc	r0
   16AF F2            [24] 1699 	movx	@r0,a
                           1700 ;	radio/main.c:311: freq_max = constrain(freq_max, 849000000UL, 889000000UL);
   16B0 78 6F         [12] 1701 	mov	r0,#_constrain_PARM_2
   16B2 74 40         [12] 1702 	mov	a,#0x40
   16B4 F2            [24] 1703 	movx	@r0,a
   16B5 08            [12] 1704 	inc	r0
   16B6 74 B6         [12] 1705 	mov	a,#0xB6
   16B8 F2            [24] 1706 	movx	@r0,a
   16B9 08            [12] 1707 	inc	r0
   16BA 74 9A         [12] 1708 	mov	a,#0x9A
   16BC F2            [24] 1709 	movx	@r0,a
   16BD 08            [12] 1710 	inc	r0
   16BE 74 32         [12] 1711 	mov	a,#0x32
   16C0 F2            [24] 1712 	movx	@r0,a
   16C1 78 73         [12] 1713 	mov	r0,#_constrain_PARM_3
   16C3 74 40         [12] 1714 	mov	a,#0x40
   16C5 F2            [24] 1715 	movx	@r0,a
   16C6 08            [12] 1716 	inc	r0
   16C7 74 10         [12] 1717 	mov	a,#0x10
   16C9 F2            [24] 1718 	movx	@r0,a
   16CA 08            [12] 1719 	inc	r0
   16CB 74 FD         [12] 1720 	mov	a,#0xFD
   16CD F2            [24] 1721 	movx	@r0,a
   16CE 08            [12] 1722 	inc	r0
   16CF 74 34         [12] 1723 	mov	a,#0x34
   16D1 F2            [24] 1724 	movx	@r0,a
   16D2 78 4C         [12] 1725 	mov	r0,#_radio_init_freq_max_1_151
   16D4 E2            [24] 1726 	movx	a,@r0
   16D5 F5 82         [12] 1727 	mov	dpl,a
   16D7 08            [12] 1728 	inc	r0
   16D8 E2            [24] 1729 	movx	a,@r0
   16D9 F5 83         [12] 1730 	mov	dph,a
   16DB 08            [12] 1731 	inc	r0
   16DC E2            [24] 1732 	movx	a,@r0
   16DD F5 F0         [12] 1733 	mov	b,a
   16DF 08            [12] 1734 	inc	r0
   16E0 E2            [24] 1735 	movx	a,@r0
   16E1 12 2A 72      [24] 1736 	lcall	_constrain
   16E4 78 4C         [12] 1737 	mov	r0,#_radio_init_freq_max_1_151
   16E6 C0 E0         [24] 1738 	push	acc
   16E8 E5 82         [12] 1739 	mov	a,dpl
   16EA F2            [24] 1740 	movx	@r0,a
   16EB 08            [12] 1741 	inc	r0
   16EC E5 83         [12] 1742 	mov	a,dph
   16EE F2            [24] 1743 	movx	@r0,a
   16EF 08            [12] 1744 	inc	r0
   16F0 E5 F0         [12] 1745 	mov	a,b
   16F2 F2            [24] 1746 	movx	@r0,a
   16F3 D0 E0         [24] 1747 	pop	acc
   16F5 08            [12] 1748 	inc	r0
   16F6 F2            [24] 1749 	movx	@r0,a
                           1750 ;	radio/main.c:312: break;
   16F7 02 17 A7      [24] 1751 	ljmp	00122$
                           1752 ;	radio/main.c:313: case FREQ_915:
   16FA                    1753 00120$:
                           1754 ;	radio/main.c:314: freq_min = constrain(freq_min, 868000000UL, 935000000UL);
   16FA 78 6F         [12] 1755 	mov	r0,#_constrain_PARM_2
   16FC E4            [12] 1756 	clr	a
   16FD F2            [24] 1757 	movx	@r0,a
   16FE 08            [12] 1758 	inc	r0
   16FF 74 A1         [12] 1759 	mov	a,#0xA1
   1701 F2            [24] 1760 	movx	@r0,a
   1702 08            [12] 1761 	inc	r0
   1703 74 BC         [12] 1762 	mov	a,#0xBC
   1705 F2            [24] 1763 	movx	@r0,a
   1706 08            [12] 1764 	inc	r0
   1707 74 33         [12] 1765 	mov	a,#0x33
   1709 F2            [24] 1766 	movx	@r0,a
   170A 78 73         [12] 1767 	mov	r0,#_constrain_PARM_3
   170C 74 C0         [12] 1768 	mov	a,#0xC0
   170E F2            [24] 1769 	movx	@r0,a
   170F 08            [12] 1770 	inc	r0
   1710 74 F7         [12] 1771 	mov	a,#0xF7
   1712 F2            [24] 1772 	movx	@r0,a
   1713 08            [12] 1773 	inc	r0
   1714 74 BA         [12] 1774 	mov	a,#0xBA
   1716 F2            [24] 1775 	movx	@r0,a
   1717 08            [12] 1776 	inc	r0
   1718 74 37         [12] 1777 	mov	a,#0x37
   171A F2            [24] 1778 	movx	@r0,a
   171B 78 48         [12] 1779 	mov	r0,#_radio_init_freq_min_1_151
   171D E2            [24] 1780 	movx	a,@r0
   171E F5 82         [12] 1781 	mov	dpl,a
   1720 08            [12] 1782 	inc	r0
   1721 E2            [24] 1783 	movx	a,@r0
   1722 F5 83         [12] 1784 	mov	dph,a
   1724 08            [12] 1785 	inc	r0
   1725 E2            [24] 1786 	movx	a,@r0
   1726 F5 F0         [12] 1787 	mov	b,a
   1728 08            [12] 1788 	inc	r0
   1729 E2            [24] 1789 	movx	a,@r0
   172A 12 2A 72      [24] 1790 	lcall	_constrain
   172D 78 48         [12] 1791 	mov	r0,#_radio_init_freq_min_1_151
   172F C0 E0         [24] 1792 	push	acc
   1731 E5 82         [12] 1793 	mov	a,dpl
   1733 F2            [24] 1794 	movx	@r0,a
   1734 08            [12] 1795 	inc	r0
   1735 E5 83         [12] 1796 	mov	a,dph
   1737 F2            [24] 1797 	movx	@r0,a
   1738 08            [12] 1798 	inc	r0
   1739 E5 F0         [12] 1799 	mov	a,b
   173B F2            [24] 1800 	movx	@r0,a
   173C D0 E0         [24] 1801 	pop	acc
   173E 08            [12] 1802 	inc	r0
   173F F2            [24] 1803 	movx	@r0,a
                           1804 ;	radio/main.c:315: freq_max = constrain(freq_max, 868000000UL, 935000000UL);
   1740 78 6F         [12] 1805 	mov	r0,#_constrain_PARM_2
   1742 E4            [12] 1806 	clr	a
   1743 F2            [24] 1807 	movx	@r0,a
   1744 08            [12] 1808 	inc	r0
   1745 74 A1         [12] 1809 	mov	a,#0xA1
   1747 F2            [24] 1810 	movx	@r0,a
   1748 08            [12] 1811 	inc	r0
   1749 74 BC         [12] 1812 	mov	a,#0xBC
   174B F2            [24] 1813 	movx	@r0,a
   174C 08            [12] 1814 	inc	r0
   174D 74 33         [12] 1815 	mov	a,#0x33
   174F F2            [24] 1816 	movx	@r0,a
   1750 78 73         [12] 1817 	mov	r0,#_constrain_PARM_3
   1752 74 C0         [12] 1818 	mov	a,#0xC0
   1754 F2            [24] 1819 	movx	@r0,a
   1755 08            [12] 1820 	inc	r0
   1756 74 F7         [12] 1821 	mov	a,#0xF7
   1758 F2            [24] 1822 	movx	@r0,a
   1759 08            [12] 1823 	inc	r0
   175A 74 BA         [12] 1824 	mov	a,#0xBA
   175C F2            [24] 1825 	movx	@r0,a
   175D 08            [12] 1826 	inc	r0
   175E 74 37         [12] 1827 	mov	a,#0x37
   1760 F2            [24] 1828 	movx	@r0,a
   1761 78 4C         [12] 1829 	mov	r0,#_radio_init_freq_max_1_151
   1763 E2            [24] 1830 	movx	a,@r0
   1764 F5 82         [12] 1831 	mov	dpl,a
   1766 08            [12] 1832 	inc	r0
   1767 E2            [24] 1833 	movx	a,@r0
   1768 F5 83         [12] 1834 	mov	dph,a
   176A 08            [12] 1835 	inc	r0
   176B E2            [24] 1836 	movx	a,@r0
   176C F5 F0         [12] 1837 	mov	b,a
   176E 08            [12] 1838 	inc	r0
   176F E2            [24] 1839 	movx	a,@r0
   1770 12 2A 72      [24] 1840 	lcall	_constrain
   1773 78 4C         [12] 1841 	mov	r0,#_radio_init_freq_max_1_151
   1775 C0 E0         [24] 1842 	push	acc
   1777 E5 82         [12] 1843 	mov	a,dpl
   1779 F2            [24] 1844 	movx	@r0,a
   177A 08            [12] 1845 	inc	r0
   177B E5 83         [12] 1846 	mov	a,dph
   177D F2            [24] 1847 	movx	@r0,a
   177E 08            [12] 1848 	inc	r0
   177F E5 F0         [12] 1849 	mov	a,b
   1781 F2            [24] 1850 	movx	@r0,a
   1782 D0 E0         [24] 1851 	pop	acc
   1784 08            [12] 1852 	inc	r0
   1785 F2            [24] 1853 	movx	@r0,a
                           1854 ;	radio/main.c:316: break;
                           1855 ;	radio/main.c:317: default:
   1786 80 1F         [24] 1856 	sjmp	00122$
   1788                    1857 00121$:
                           1858 ;	radio/main.c:318: panic("bad board frequency %d", g_board_frequency);
   1788 78 32         [12] 1859 	mov	r0,#_g_board_frequency
   178A E2            [24] 1860 	movx	a,@r0
   178B FE            [12] 1861 	mov	r6,a
   178C 7F 00         [12] 1862 	mov	r7,#0x00
   178E C0 06         [24] 1863 	push	ar6
   1790 C0 07         [24] 1864 	push	ar7
   1792 74 9D         [12] 1865 	mov	a,#__str_4
   1794 C0 E0         [24] 1866 	push	acc
   1796 74 C8         [12] 1867 	mov	a,#(__str_4 >> 8)
   1798 C0 E0         [24] 1868 	push	acc
   179A 74 80         [12] 1869 	mov	a,#0x80
   179C C0 E0         [24] 1870 	push	acc
   179E 12 11 F8      [24] 1871 	lcall	_panic
   17A1 E5 81         [12] 1872 	mov	a,sp
   17A3 24 FB         [12] 1873 	add	a,#0xfb
   17A5 F5 81         [12] 1874 	mov	sp,a
                           1875 ;	radio/main.c:320: }
   17A7                    1876 00122$:
                           1877 ;	radio/main.c:322: if (freq_max == freq_min) {
   17A7 78 4C         [12] 1878 	mov	r0,#_radio_init_freq_max_1_151
   17A9 79 48         [12] 1879 	mov	r1,#_radio_init_freq_min_1_151
   17AB E2            [24] 1880 	movx	a,@r0
   17AC F5 F0         [12] 1881 	mov	b,a
   17AE E3            [24] 1882 	movx	a,@r1
   17AF B5 F0 1D      [24] 1883 	cjne	a,b,00205$
   17B2 08            [12] 1884 	inc	r0
   17B3 E2            [24] 1885 	movx	a,@r0
   17B4 F5 F0         [12] 1886 	mov	b,a
   17B6 09            [12] 1887 	inc	r1
   17B7 E3            [24] 1888 	movx	a,@r1
   17B8 B5 F0 14      [24] 1889 	cjne	a,b,00205$
   17BB 08            [12] 1890 	inc	r0
   17BC E2            [24] 1891 	movx	a,@r0
   17BD F5 F0         [12] 1892 	mov	b,a
   17BF 09            [12] 1893 	inc	r1
   17C0 E3            [24] 1894 	movx	a,@r1
   17C1 B5 F0 0B      [24] 1895 	cjne	a,b,00205$
   17C4 08            [12] 1896 	inc	r0
   17C5 E2            [24] 1897 	movx	a,@r0
   17C6 F5 F0         [12] 1898 	mov	b,a
   17C8 09            [12] 1899 	inc	r1
   17C9 E3            [24] 1900 	movx	a,@r1
   17CA B5 F0 02      [24] 1901 	cjne	a,b,00205$
   17CD 80 02         [24] 1902 	sjmp	00206$
   17CF                    1903 00205$:
   17CF 80 1A         [24] 1904 	sjmp	00124$
   17D1                    1905 00206$:
                           1906 ;	radio/main.c:323: freq_max = freq_min + 1000000UL;
   17D1 78 48         [12] 1907 	mov	r0,#_radio_init_freq_min_1_151
   17D3 79 4C         [12] 1908 	mov	r1,#_radio_init_freq_max_1_151
   17D5 E2            [24] 1909 	movx	a,@r0
   17D6 24 40         [12] 1910 	add	a,#0x40
   17D8 F3            [24] 1911 	movx	@r1,a
   17D9 08            [12] 1912 	inc	r0
   17DA E2            [24] 1913 	movx	a,@r0
   17DB 34 42         [12] 1914 	addc	a,#0x42
   17DD 09            [12] 1915 	inc	r1
   17DE F3            [24] 1916 	movx	@r1,a
   17DF 08            [12] 1917 	inc	r0
   17E0 E2            [24] 1918 	movx	a,@r0
   17E1 34 0F         [12] 1919 	addc	a,#0x0F
   17E3 09            [12] 1920 	inc	r1
   17E4 F3            [24] 1921 	movx	@r1,a
   17E5 08            [12] 1922 	inc	r0
   17E6 E2            [24] 1923 	movx	a,@r0
   17E7 34 00         [12] 1924 	addc	a,#0x00
   17E9 09            [12] 1925 	inc	r1
   17EA F3            [24] 1926 	movx	@r1,a
   17EB                    1927 00124$:
                           1928 ;	radio/main.c:327: duty_cycle = param_get(PARAM_DUTY_CYCLE);
   17EB 75 82 0B      [24] 1929 	mov	dpl,#0x0B
   17EE 12 27 64      [24] 1930 	lcall	_param_get
   17F1 AC 82         [24] 1931 	mov	r4,dpl
   17F3 78 C4         [12] 1932 	mov	r0,#_duty_cycle
   17F5 EC            [12] 1933 	mov	a,r4
   17F6 F2            [24] 1934 	movx	@r0,a
                           1935 ;	radio/main.c:328: duty_cycle = constrain(duty_cycle, 0, 100);
   17F7 7F 00         [12] 1936 	mov	r7,#0x00
   17F9 7E 00         [12] 1937 	mov	r6,#0x00
   17FB 7D 00         [12] 1938 	mov	r5,#0x00
   17FD 78 6F         [12] 1939 	mov	r0,#_constrain_PARM_2
   17FF E4            [12] 1940 	clr	a
   1800 F2            [24] 1941 	movx	@r0,a
   1801 08            [12] 1942 	inc	r0
   1802 F2            [24] 1943 	movx	@r0,a
   1803 08            [12] 1944 	inc	r0
   1804 F2            [24] 1945 	movx	@r0,a
   1805 08            [12] 1946 	inc	r0
   1806 F2            [24] 1947 	movx	@r0,a
   1807 78 73         [12] 1948 	mov	r0,#_constrain_PARM_3
   1809 74 64         [12] 1949 	mov	a,#0x64
   180B F2            [24] 1950 	movx	@r0,a
   180C 08            [12] 1951 	inc	r0
   180D E4            [12] 1952 	clr	a
   180E F2            [24] 1953 	movx	@r0,a
   180F 08            [12] 1954 	inc	r0
   1810 F2            [24] 1955 	movx	@r0,a
   1811 08            [12] 1956 	inc	r0
   1812 F2            [24] 1957 	movx	@r0,a
   1813 8C 82         [24] 1958 	mov	dpl,r4
   1815 8F 83         [24] 1959 	mov	dph,r7
   1817 8E F0         [24] 1960 	mov	b,r6
   1819 ED            [12] 1961 	mov	a,r5
   181A 12 2A 72      [24] 1962 	lcall	_constrain
   181D AC 82         [24] 1963 	mov	r4,dpl
   181F 78 C4         [12] 1964 	mov	r0,#_duty_cycle
   1821 EC            [12] 1965 	mov	a,r4
   1822 F2            [24] 1966 	movx	@r0,a
                           1967 ;	radio/main.c:329: param_set(PARAM_DUTY_CYCLE, duty_cycle);
   1823 78 69         [12] 1968 	mov	r0,#_param_set_PARM_2
   1825 EC            [12] 1969 	mov	a,r4
   1826 F2            [24] 1970 	movx	@r0,a
   1827 08            [12] 1971 	inc	r0
   1828 E4            [12] 1972 	clr	a
   1829 F2            [24] 1973 	movx	@r0,a
   182A 08            [12] 1974 	inc	r0
   182B F2            [24] 1975 	movx	@r0,a
   182C 08            [12] 1976 	inc	r0
   182D F2            [24] 1977 	movx	@r0,a
   182E 75 82 0B      [24] 1978 	mov	dpl,#0x0B
   1831 12 25 C1      [24] 1979 	lcall	_param_set
                           1980 ;	radio/main.c:332: lbt_rssi = param_get(PARAM_LBT_RSSI);
   1834 75 82 0C      [24] 1981 	mov	dpl,#0x0C
   1837 12 27 64      [24] 1982 	lcall	_param_get
   183A AC 82         [24] 1983 	mov	r4,dpl
   183C AD 83         [24] 1984 	mov	r5,dph
   183E AE F0         [24] 1985 	mov	r6,b
   1840 FF            [12] 1986 	mov	r7,a
   1841 78 C8         [12] 1987 	mov	r0,#_lbt_rssi
   1843 EC            [12] 1988 	mov	a,r4
   1844 F2            [24] 1989 	movx	@r0,a
                           1990 ;	radio/main.c:333: if (lbt_rssi != 0) {
   1845 EC            [12] 1991 	mov	a,r4
   1846 60 33         [24] 1992 	jz	00126$
                           1993 ;	radio/main.c:335: lbt_rssi = constrain(lbt_rssi, 25, 220);
   1848 7F 00         [12] 1994 	mov	r7,#0x00
   184A 7E 00         [12] 1995 	mov	r6,#0x00
   184C 7D 00         [12] 1996 	mov	r5,#0x00
   184E 78 6F         [12] 1997 	mov	r0,#_constrain_PARM_2
   1850 74 19         [12] 1998 	mov	a,#0x19
   1852 F2            [24] 1999 	movx	@r0,a
   1853 08            [12] 2000 	inc	r0
   1854 E4            [12] 2001 	clr	a
   1855 F2            [24] 2002 	movx	@r0,a
   1856 08            [12] 2003 	inc	r0
   1857 F2            [24] 2004 	movx	@r0,a
   1858 08            [12] 2005 	inc	r0
   1859 F2            [24] 2006 	movx	@r0,a
   185A 78 73         [12] 2007 	mov	r0,#_constrain_PARM_3
   185C 74 DC         [12] 2008 	mov	a,#0xDC
   185E F2            [24] 2009 	movx	@r0,a
   185F 08            [12] 2010 	inc	r0
   1860 E4            [12] 2011 	clr	a
   1861 F2            [24] 2012 	movx	@r0,a
   1862 08            [12] 2013 	inc	r0
   1863 F2            [24] 2014 	movx	@r0,a
   1864 08            [12] 2015 	inc	r0
   1865 F2            [24] 2016 	movx	@r0,a
   1866 8C 82         [24] 2017 	mov	dpl,r4
   1868 8F 83         [24] 2018 	mov	dph,r7
   186A 8E F0         [24] 2019 	mov	b,r6
   186C ED            [12] 2020 	mov	a,r5
   186D 12 2A 72      [24] 2021 	lcall	_constrain
   1870 AC 82         [24] 2022 	mov	r4,dpl
   1872 AD 83         [24] 2023 	mov	r5,dph
   1874 AE F0         [24] 2024 	mov	r6,b
   1876 FF            [12] 2025 	mov	r7,a
   1877 78 C8         [12] 2026 	mov	r0,#_lbt_rssi
   1879 EC            [12] 2027 	mov	a,r4
   187A F2            [24] 2028 	movx	@r0,a
   187B                    2029 00126$:
                           2030 ;	radio/main.c:337: param_set(PARAM_LBT_RSSI, lbt_rssi);
   187B 78 C8         [12] 2031 	mov	r0,#_lbt_rssi
   187D 79 69         [12] 2032 	mov	r1,#_param_set_PARM_2
   187F E2            [24] 2033 	movx	a,@r0
   1880 F3            [24] 2034 	movx	@r1,a
   1881 09            [12] 2035 	inc	r1
   1882 E4            [12] 2036 	clr	a
   1883 F3            [24] 2037 	movx	@r1,a
   1884 09            [12] 2038 	inc	r1
   1885 F3            [24] 2039 	movx	@r1,a
   1886 09            [12] 2040 	inc	r1
   1887 F3            [24] 2041 	movx	@r1,a
   1888 75 82 0C      [24] 2042 	mov	dpl,#0x0C
   188B 12 25 C1      [24] 2043 	lcall	_param_set
                           2044 ;	radio/main.c:340: param_set(PARAM_MIN_FREQ, freq_min/1000);
   188E 90 05 B2      [24] 2045 	mov	dptr,#__divulong_PARM_2
   1891 74 E8         [12] 2046 	mov	a,#0xE8
   1893 F0            [24] 2047 	movx	@dptr,a
   1894 74 03         [12] 2048 	mov	a,#0x03
   1896 A3            [24] 2049 	inc	dptr
   1897 F0            [24] 2050 	movx	@dptr,a
   1898 E4            [12] 2051 	clr	a
   1899 A3            [24] 2052 	inc	dptr
   189A F0            [24] 2053 	movx	@dptr,a
   189B E4            [12] 2054 	clr	a
   189C A3            [24] 2055 	inc	dptr
   189D F0            [24] 2056 	movx	@dptr,a
   189E 78 48         [12] 2057 	mov	r0,#_radio_init_freq_min_1_151
   18A0 E2            [24] 2058 	movx	a,@r0
   18A1 F5 82         [12] 2059 	mov	dpl,a
   18A3 08            [12] 2060 	inc	r0
   18A4 E2            [24] 2061 	movx	a,@r0
   18A5 F5 83         [12] 2062 	mov	dph,a
   18A7 08            [12] 2063 	inc	r0
   18A8 E2            [24] 2064 	movx	a,@r0
   18A9 F5 F0         [12] 2065 	mov	b,a
   18AB 08            [12] 2066 	inc	r0
   18AC E2            [24] 2067 	movx	a,@r0
   18AD 12 5C 33      [24] 2068 	lcall	__divulong
   18B0 AC 82         [24] 2069 	mov	r4,dpl
   18B2 AD 83         [24] 2070 	mov	r5,dph
   18B4 AE F0         [24] 2071 	mov	r6,b
   18B6 FF            [12] 2072 	mov	r7,a
   18B7 78 69         [12] 2073 	mov	r0,#_param_set_PARM_2
   18B9 EC            [12] 2074 	mov	a,r4
   18BA F2            [24] 2075 	movx	@r0,a
   18BB 08            [12] 2076 	inc	r0
   18BC ED            [12] 2077 	mov	a,r5
   18BD F2            [24] 2078 	movx	@r0,a
   18BE 08            [12] 2079 	inc	r0
   18BF EE            [12] 2080 	mov	a,r6
   18C0 F2            [24] 2081 	movx	@r0,a
   18C1 08            [12] 2082 	inc	r0
   18C2 EF            [12] 2083 	mov	a,r7
   18C3 F2            [24] 2084 	movx	@r0,a
   18C4 75 82 08      [24] 2085 	mov	dpl,#0x08
   18C7 12 25 C1      [24] 2086 	lcall	_param_set
                           2087 ;	radio/main.c:341: param_set(PARAM_MAX_FREQ, freq_max/1000);
   18CA 90 05 B2      [24] 2088 	mov	dptr,#__divulong_PARM_2
   18CD 74 E8         [12] 2089 	mov	a,#0xE8
   18CF F0            [24] 2090 	movx	@dptr,a
   18D0 74 03         [12] 2091 	mov	a,#0x03
   18D2 A3            [24] 2092 	inc	dptr
   18D3 F0            [24] 2093 	movx	@dptr,a
   18D4 E4            [12] 2094 	clr	a
   18D5 A3            [24] 2095 	inc	dptr
   18D6 F0            [24] 2096 	movx	@dptr,a
   18D7 E4            [12] 2097 	clr	a
   18D8 A3            [24] 2098 	inc	dptr
   18D9 F0            [24] 2099 	movx	@dptr,a
   18DA 78 4C         [12] 2100 	mov	r0,#_radio_init_freq_max_1_151
   18DC E2            [24] 2101 	movx	a,@r0
   18DD F5 82         [12] 2102 	mov	dpl,a
   18DF 08            [12] 2103 	inc	r0
   18E0 E2            [24] 2104 	movx	a,@r0
   18E1 F5 83         [12] 2105 	mov	dph,a
   18E3 08            [12] 2106 	inc	r0
   18E4 E2            [24] 2107 	movx	a,@r0
   18E5 F5 F0         [12] 2108 	mov	b,a
   18E7 08            [12] 2109 	inc	r0
   18E8 E2            [24] 2110 	movx	a,@r0
   18E9 12 5C 33      [24] 2111 	lcall	__divulong
   18EC AC 82         [24] 2112 	mov	r4,dpl
   18EE AD 83         [24] 2113 	mov	r5,dph
   18F0 AE F0         [24] 2114 	mov	r6,b
   18F2 FF            [12] 2115 	mov	r7,a
   18F3 78 69         [12] 2116 	mov	r0,#_param_set_PARM_2
   18F5 EC            [12] 2117 	mov	a,r4
   18F6 F2            [24] 2118 	movx	@r0,a
   18F7 08            [12] 2119 	inc	r0
   18F8 ED            [12] 2120 	mov	a,r5
   18F9 F2            [24] 2121 	movx	@r0,a
   18FA 08            [12] 2122 	inc	r0
   18FB EE            [12] 2123 	mov	a,r6
   18FC F2            [24] 2124 	movx	@r0,a
   18FD 08            [12] 2125 	inc	r0
   18FE EF            [12] 2126 	mov	a,r7
   18FF F2            [24] 2127 	movx	@r0,a
   1900 75 82 09      [24] 2128 	mov	dpl,#0x09
   1903 12 25 C1      [24] 2129 	lcall	_param_set
                           2130 ;	radio/main.c:342: param_set(PARAM_NUM_CHANNELS, num_fh_channels);
   1906 78 18         [12] 2131 	mov	r0,#_num_fh_channels
   1908 79 69         [12] 2132 	mov	r1,#_param_set_PARM_2
   190A E2            [24] 2133 	movx	a,@r0
   190B F3            [24] 2134 	movx	@r1,a
   190C 09            [12] 2135 	inc	r1
   190D E4            [12] 2136 	clr	a
   190E F3            [24] 2137 	movx	@r1,a
   190F 09            [12] 2138 	inc	r1
   1910 F3            [24] 2139 	movx	@r1,a
   1911 09            [12] 2140 	inc	r1
   1912 F3            [24] 2141 	movx	@r1,a
   1913 75 82 0A      [24] 2142 	mov	dpl,#0x0A
   1916 12 25 C1      [24] 2143 	lcall	_param_set
                           2144 ;	radio/main.c:344: channel_spacing = (freq_max - freq_min) / (num_fh_channels+2);
   1919 78 4C         [12] 2145 	mov	r0,#_radio_init_freq_max_1_151
   191B 79 48         [12] 2146 	mov	r1,#_radio_init_freq_min_1_151
   191D E3            [24] 2147 	movx	a,@r1
   191E F5 F0         [12] 2148 	mov	b,a
   1920 C3            [12] 2149 	clr	c
   1921 E2            [24] 2150 	movx	a,@r0
   1922 95 F0         [12] 2151 	subb	a,b
   1924 FC            [12] 2152 	mov	r4,a
   1925 09            [12] 2153 	inc	r1
   1926 E3            [24] 2154 	movx	a,@r1
   1927 F5 F0         [12] 2155 	mov	b,a
   1929 08            [12] 2156 	inc	r0
   192A E2            [24] 2157 	movx	a,@r0
   192B 95 F0         [12] 2158 	subb	a,b
   192D FD            [12] 2159 	mov	r5,a
   192E 09            [12] 2160 	inc	r1
   192F E3            [24] 2161 	movx	a,@r1
   1930 F5 F0         [12] 2162 	mov	b,a
   1932 08            [12] 2163 	inc	r0
   1933 E2            [24] 2164 	movx	a,@r0
   1934 95 F0         [12] 2165 	subb	a,b
   1936 FE            [12] 2166 	mov	r6,a
   1937 09            [12] 2167 	inc	r1
   1938 E3            [24] 2168 	movx	a,@r1
   1939 F5 F0         [12] 2169 	mov	b,a
   193B 08            [12] 2170 	inc	r0
   193C E2            [24] 2171 	movx	a,@r0
   193D 95 F0         [12] 2172 	subb	a,b
   193F FF            [12] 2173 	mov	r7,a
   1940 78 18         [12] 2174 	mov	r0,#_num_fh_channels
   1942 E2            [24] 2175 	movx	a,@r0
   1943 FA            [12] 2176 	mov	r2,a
   1944 7B 00         [12] 2177 	mov	r3,#0x00
   1946 74 02         [12] 2178 	mov	a,#0x02
   1948 2A            [12] 2179 	add	a,r2
   1949 FA            [12] 2180 	mov	r2,a
   194A E4            [12] 2181 	clr	a
   194B 3B            [12] 2182 	addc	a,r3
   194C FB            [12] 2183 	mov	r3,a
   194D 90 05 B2      [24] 2184 	mov	dptr,#__divulong_PARM_2
   1950 EA            [12] 2185 	mov	a,r2
   1951 F0            [24] 2186 	movx	@dptr,a
   1952 EB            [12] 2187 	mov	a,r3
   1953 A3            [24] 2188 	inc	dptr
   1954 F0            [24] 2189 	movx	@dptr,a
   1955 EB            [12] 2190 	mov	a,r3
   1956 33            [12] 2191 	rlc	a
   1957 95 E0         [12] 2192 	subb	a,acc
   1959 A3            [24] 2193 	inc	dptr
   195A F0            [24] 2194 	movx	@dptr,a
   195B A3            [24] 2195 	inc	dptr
   195C F0            [24] 2196 	movx	@dptr,a
   195D 8C 82         [24] 2197 	mov	dpl,r4
   195F 8D 83         [24] 2198 	mov	dph,r5
   1961 8E F0         [24] 2199 	mov	b,r6
   1963 EF            [12] 2200 	mov	a,r7
   1964 12 5C 33      [24] 2201 	lcall	__divulong
   1967 78 50         [12] 2202 	mov	r0,#_radio_init_channel_spacing_1_151
   1969 C0 E0         [24] 2203 	push	acc
   196B E5 82         [12] 2204 	mov	a,dpl
   196D F2            [24] 2205 	movx	@r0,a
   196E 08            [12] 2206 	inc	r0
   196F E5 83         [12] 2207 	mov	a,dph
   1971 F2            [24] 2208 	movx	@r0,a
   1972 08            [12] 2209 	inc	r0
   1973 E5 F0         [12] 2210 	mov	a,b
   1975 F2            [24] 2211 	movx	@r0,a
   1976 D0 E0         [24] 2212 	pop	acc
   1978 08            [12] 2213 	inc	r0
   1979 F2            [24] 2214 	movx	@r0,a
                           2215 ;	radio/main.c:348: freq_min += channel_spacing/2;
   197A 78 53         [12] 2216 	mov	r0,#(_radio_init_channel_spacing_1_151 + 3)
   197C E2            [24] 2217 	movx	a,@r0
   197D C3            [12] 2218 	clr	c
   197E 13            [12] 2219 	rrc	a
   197F FF            [12] 2220 	mov	r7,a
   1980 18            [12] 2221 	dec	r0
   1981 E2            [24] 2222 	movx	a,@r0
   1982 13            [12] 2223 	rrc	a
   1983 FE            [12] 2224 	mov	r6,a
   1984 18            [12] 2225 	dec	r0
   1985 E2            [24] 2226 	movx	a,@r0
   1986 13            [12] 2227 	rrc	a
   1987 FB            [12] 2228 	mov	r3,a
   1988 18            [12] 2229 	dec	r0
   1989 E2            [24] 2230 	movx	a,@r0
   198A 13            [12] 2231 	rrc	a
   198B FA            [12] 2232 	mov	r2,a
   198C 78 48         [12] 2233 	mov	r0,#_radio_init_freq_min_1_151
   198E E2            [24] 2234 	movx	a,@r0
   198F 2A            [12] 2235 	add	a,r2
   1990 F2            [24] 2236 	movx	@r0,a
   1991 08            [12] 2237 	inc	r0
   1992 E2            [24] 2238 	movx	a,@r0
   1993 3B            [12] 2239 	addc	a,r3
   1994 F2            [24] 2240 	movx	@r0,a
   1995 08            [12] 2241 	inc	r0
   1996 E2            [24] 2242 	movx	a,@r0
   1997 3E            [12] 2243 	addc	a,r6
   1998 F2            [24] 2244 	movx	@r0,a
   1999 08            [12] 2245 	inc	r0
   199A E2            [24] 2246 	movx	a,@r0
   199B 3F            [12] 2247 	addc	a,r7
   199C F2            [24] 2248 	movx	@r0,a
                           2249 ;	radio/main.c:353: srand(param_get(PARAM_NETID));
   199D 75 82 03      [24] 2250 	mov	dpl,#0x03
   19A0 12 27 64      [24] 2251 	lcall	_param_get
   19A3 12 5B E3      [24] 2252 	lcall	_srand
                           2253 ;	radio/main.c:354: if (num_fh_channels > 5) {
   19A6 78 18         [12] 2254 	mov	r0,#_num_fh_channels
   19A8 C3            [12] 2255 	clr	c
   19A9 E2            [24] 2256 	movx	a,@r0
   19AA F5 F0         [12] 2257 	mov	b,a
   19AC 74 05         [12] 2258 	mov	a,#0x05
   19AE 95 F0         [12] 2259 	subb	a,b
   19B0 50 54         [24] 2260 	jnc	00128$
                           2261 ;	radio/main.c:355: freq_min += ((unsigned long)(rand()*625)) % channel_spacing;
   19B2 12 5B 89      [24] 2262 	lcall	_rand
   19B5 AE 82         [24] 2263 	mov	r6,dpl
   19B7 AF 83         [24] 2264 	mov	r7,dph
   19B9 90 05 CB      [24] 2265 	mov	dptr,#__mulint_PARM_2
   19BC EE            [12] 2266 	mov	a,r6
   19BD F0            [24] 2267 	movx	@dptr,a
   19BE EF            [12] 2268 	mov	a,r7
   19BF A3            [24] 2269 	inc	dptr
   19C0 F0            [24] 2270 	movx	@dptr,a
   19C1 90 02 71      [24] 2271 	mov	dptr,#0x0271
   19C4 12 5E 74      [24] 2272 	lcall	__mulint
   19C7 AE 82         [24] 2273 	mov	r6,dpl
   19C9 E5 83         [12] 2274 	mov	a,dph
   19CB FF            [12] 2275 	mov	r7,a
   19CC 33            [12] 2276 	rlc	a
   19CD 95 E0         [12] 2277 	subb	a,acc
   19CF FD            [12] 2278 	mov	r5,a
   19D0 FC            [12] 2279 	mov	r4,a
   19D1 78 50         [12] 2280 	mov	r0,#_radio_init_channel_spacing_1_151
   19D3 90 05 A7      [24] 2281 	mov	dptr,#__modulong_PARM_2
   19D6 E2            [24] 2282 	movx	a,@r0
   19D7 F0            [24] 2283 	movx	@dptr,a
   19D8 08            [12] 2284 	inc	r0
   19D9 E2            [24] 2285 	movx	a,@r0
   19DA A3            [24] 2286 	inc	dptr
   19DB F0            [24] 2287 	movx	@dptr,a
   19DC 08            [12] 2288 	inc	r0
   19DD E2            [24] 2289 	movx	a,@r0
   19DE A3            [24] 2290 	inc	dptr
   19DF F0            [24] 2291 	movx	@dptr,a
   19E0 08            [12] 2292 	inc	r0
   19E1 E2            [24] 2293 	movx	a,@r0
   19E2 A3            [24] 2294 	inc	dptr
   19E3 F0            [24] 2295 	movx	@dptr,a
   19E4 8E 82         [24] 2296 	mov	dpl,r6
   19E6 8F 83         [24] 2297 	mov	dph,r7
   19E8 8D F0         [24] 2298 	mov	b,r5
   19EA EC            [12] 2299 	mov	a,r4
   19EB 12 59 A5      [24] 2300 	lcall	__modulong
   19EE AC 82         [24] 2301 	mov	r4,dpl
   19F0 AD 83         [24] 2302 	mov	r5,dph
   19F2 AE F0         [24] 2303 	mov	r6,b
   19F4 FF            [12] 2304 	mov	r7,a
   19F5 78 48         [12] 2305 	mov	r0,#_radio_init_freq_min_1_151
   19F7 E2            [24] 2306 	movx	a,@r0
   19F8 2C            [12] 2307 	add	a,r4
   19F9 F2            [24] 2308 	movx	@r0,a
   19FA 08            [12] 2309 	inc	r0
   19FB E2            [24] 2310 	movx	a,@r0
   19FC 3D            [12] 2311 	addc	a,r5
   19FD F2            [24] 2312 	movx	@r0,a
   19FE 08            [12] 2313 	inc	r0
   19FF E2            [24] 2314 	movx	a,@r0
   1A00 3E            [12] 2315 	addc	a,r6
   1A01 F2            [24] 2316 	movx	@r0,a
   1A02 08            [12] 2317 	inc	r0
   1A03 E2            [24] 2318 	movx	a,@r0
   1A04 3F            [12] 2319 	addc	a,r7
   1A05 F2            [24] 2320 	movx	@r0,a
   1A06                    2321 00128$:
                           2322 ;	radio/main.c:363: radio_set_frequency(freq_min);
   1A06 78 48         [12] 2323 	mov	r0,#_radio_init_freq_min_1_151
   1A08 E2            [24] 2324 	movx	a,@r0
   1A09 F5 82         [12] 2325 	mov	dpl,a
   1A0B 08            [12] 2326 	inc	r0
   1A0C E2            [24] 2327 	movx	a,@r0
   1A0D F5 83         [12] 2328 	mov	dph,a
   1A0F 08            [12] 2329 	inc	r0
   1A10 E2            [24] 2330 	movx	a,@r0
   1A11 F5 F0         [12] 2331 	mov	b,a
   1A13 08            [12] 2332 	inc	r0
   1A14 E2            [24] 2333 	movx	a,@r0
   1A15 12 34 E8      [24] 2334 	lcall	_radio_set_frequency
                           2335 ;	radio/main.c:366: radio_set_channel_spacing(channel_spacing);
   1A18 78 50         [12] 2336 	mov	r0,#_radio_init_channel_spacing_1_151
   1A1A E2            [24] 2337 	movx	a,@r0
   1A1B F5 82         [12] 2338 	mov	dpl,a
   1A1D 08            [12] 2339 	inc	r0
   1A1E E2            [24] 2340 	movx	a,@r0
   1A1F F5 83         [12] 2341 	mov	dph,a
   1A21 08            [12] 2342 	inc	r0
   1A22 E2            [24] 2343 	movx	a,@r0
   1A23 F5 F0         [12] 2344 	mov	b,a
   1A25 08            [12] 2345 	inc	r0
   1A26 E2            [24] 2346 	movx	a,@r0
   1A27 12 35 24      [24] 2347 	lcall	_radio_set_channel_spacing
                           2348 ;	radio/main.c:369: radio_set_channel(param_get(PARAM_NETID) % num_fh_channels);
   1A2A 75 82 03      [24] 2349 	mov	dpl,#0x03
   1A2D 12 27 64      [24] 2350 	lcall	_param_get
   1A30 AC 82         [24] 2351 	mov	r4,dpl
   1A32 AD 83         [24] 2352 	mov	r5,dph
   1A34 AE F0         [24] 2353 	mov	r6,b
   1A36 FF            [12] 2354 	mov	r7,a
   1A37 78 18         [12] 2355 	mov	r0,#_num_fh_channels
   1A39 90 05 A7      [24] 2356 	mov	dptr,#__modulong_PARM_2
   1A3C E2            [24] 2357 	movx	a,@r0
   1A3D F0            [24] 2358 	movx	@dptr,a
   1A3E E4            [12] 2359 	clr	a
   1A3F A3            [24] 2360 	inc	dptr
   1A40 F0            [24] 2361 	movx	@dptr,a
   1A41 E4            [12] 2362 	clr	a
   1A42 A3            [24] 2363 	inc	dptr
   1A43 F0            [24] 2364 	movx	@dptr,a
   1A44 E4            [12] 2365 	clr	a
   1A45 A3            [24] 2366 	inc	dptr
   1A46 F0            [24] 2367 	movx	@dptr,a
   1A47 8C 82         [24] 2368 	mov	dpl,r4
   1A49 8D 83         [24] 2369 	mov	dph,r5
   1A4B 8E F0         [24] 2370 	mov	b,r6
   1A4D EF            [12] 2371 	mov	a,r7
   1A4E 12 59 A5      [24] 2372 	lcall	__modulong
   1A51 AC 82         [24] 2373 	mov	r4,dpl
   1A53 8C 82         [24] 2374 	mov	dpl,r4
   1A55 12 35 75      [24] 2375 	lcall	_radio_set_channel
                           2376 ;	radio/main.c:372: if (!radio_configure(param_get(PARAM_AIR_SPEED)) &&
   1A58 75 82 02      [24] 2377 	mov	dpl,#0x02
   1A5B 12 27 64      [24] 2378 	lcall	_param_get
   1A5E AC 82         [24] 2379 	mov	r4,dpl
   1A60 8C 82         [24] 2380 	mov	dpl,r4
   1A62 12 35 9F      [24] 2381 	lcall	_radio_configure
   1A65 40 33         [24] 2382 	jc	00130$
                           2383 ;	radio/main.c:373: !radio_configure(param_get(PARAM_AIR_SPEED)) &&
   1A67 75 82 02      [24] 2384 	mov	dpl,#0x02
   1A6A 12 27 64      [24] 2385 	lcall	_param_get
   1A6D AC 82         [24] 2386 	mov	r4,dpl
   1A6F 8C 82         [24] 2387 	mov	dpl,r4
   1A71 12 35 9F      [24] 2388 	lcall	_radio_configure
   1A74 40 24         [24] 2389 	jc	00130$
                           2390 ;	radio/main.c:374: !radio_configure(param_get(PARAM_AIR_SPEED))) {
   1A76 75 82 02      [24] 2391 	mov	dpl,#0x02
   1A79 12 27 64      [24] 2392 	lcall	_param_get
   1A7C AC 82         [24] 2393 	mov	r4,dpl
   1A7E 8C 82         [24] 2394 	mov	dpl,r4
   1A80 12 35 9F      [24] 2395 	lcall	_radio_configure
   1A83 40 15         [24] 2396 	jc	00130$
                           2397 ;	radio/main.c:375: panic("radio_configure failed");
   1A85 74 B4         [12] 2398 	mov	a,#__str_5
   1A87 C0 E0         [24] 2399 	push	acc
   1A89 74 C8         [12] 2400 	mov	a,#(__str_5 >> 8)
   1A8B C0 E0         [24] 2401 	push	acc
   1A8D 74 80         [12] 2402 	mov	a,#0x80
   1A8F C0 E0         [24] 2403 	push	acc
   1A91 12 11 F8      [24] 2404 	lcall	_panic
   1A94 15 81         [12] 2405 	dec	sp
   1A96 15 81         [12] 2406 	dec	sp
   1A98 15 81         [12] 2407 	dec	sp
   1A9A                    2408 00130$:
                           2409 ;	radio/main.c:379: param_set(PARAM_AIR_SPEED, radio_air_rate());
   1A9A 12 30 A2      [24] 2410 	lcall	_radio_air_rate
   1A9D AF 82         [24] 2411 	mov	r7,dpl
   1A9F 78 69         [12] 2412 	mov	r0,#_param_set_PARM_2
   1AA1 EF            [12] 2413 	mov	a,r7
   1AA2 F2            [24] 2414 	movx	@r0,a
   1AA3 08            [12] 2415 	inc	r0
   1AA4 E4            [12] 2416 	clr	a
   1AA5 F2            [24] 2417 	movx	@r0,a
   1AA6 08            [12] 2418 	inc	r0
   1AA7 F2            [24] 2419 	movx	@r0,a
   1AA8 08            [12] 2420 	inc	r0
   1AA9 F2            [24] 2421 	movx	@r0,a
   1AAA 75 82 02      [24] 2422 	mov	dpl,#0x02
   1AAD 12 25 C1      [24] 2423 	lcall	_param_set
                           2424 ;	radio/main.c:382: radio_set_network_id(param_get(PARAM_NETID));
   1AB0 75 82 03      [24] 2425 	mov	dpl,#0x03
   1AB3 12 27 64      [24] 2426 	lcall	_param_get
   1AB6 12 38 B8      [24] 2427 	lcall	_radio_set_network_id
                           2428 ;	radio/main.c:385: radio_set_transmit_power(txpower);
   1AB9 78 54         [12] 2429 	mov	r0,#_radio_init_txpower_1_151
   1ABB E2            [24] 2430 	movx	a,@r0
   1ABC F5 82         [12] 2431 	mov	dpl,a
   1ABE 12 38 72      [24] 2432 	lcall	_radio_set_transmit_power
                           2433 ;	radio/main.c:388: param_set(PARAM_TXPOWER, radio_get_transmit_power());
   1AC1 12 38 B2      [24] 2434 	lcall	_radio_get_transmit_power
   1AC4 AF 82         [24] 2435 	mov	r7,dpl
   1AC6 78 69         [12] 2436 	mov	r0,#_param_set_PARM_2
   1AC8 EF            [12] 2437 	mov	a,r7
   1AC9 F2            [24] 2438 	movx	@r0,a
   1ACA 08            [12] 2439 	inc	r0
   1ACB E4            [12] 2440 	clr	a
   1ACC F2            [24] 2441 	movx	@r0,a
   1ACD 08            [12] 2442 	inc	r0
   1ACE F2            [24] 2443 	movx	@r0,a
   1ACF 08            [12] 2444 	inc	r0
   1AD0 F2            [24] 2445 	movx	@r0,a
   1AD1 75 82 04      [24] 2446 	mov	dpl,#0x04
   1AD4 12 25 C1      [24] 2447 	lcall	_param_set
                           2448 ;	radio/main.c:396: fhop_init(param_get(PARAM_NETID));
   1AD7 75 82 03      [24] 2449 	mov	dpl,#0x03
   1ADA 12 27 64      [24] 2450 	lcall	_param_get
   1ADD 12 0B 6C      [24] 2451 	lcall	_fhop_init
                           2452 ;	radio/main.c:399: tdm_init();
   1AE0 02 53 5F      [24] 2453 	ljmp	_tdm_init
                           2454 	.area CSEG    (CODE)
                           2455 	.area CONST   (CODE)
   C849                    2456 _g_banner_string:
   C849 53 69 4B 20 31 2E  2457 	.ascii "SiK 1.7 on HM-TRP"
        37 20 6F 6E 20 48
        4D 2D 54 52 50
   C85A 00                 2458 	.db 0x00
   C85B                    2459 _g_version_string:
   C85B 31 2E 37           2460 	.ascii "1.7"
   C85E 00                 2461 	.db 0x00
   C85F                    2462 __str_0:
   C85F 66 61 69 6C 65 64  2463 	.ascii "failed to enable receiver"
        20 74 6F 20 65 6E
        61 62 6C 65 20 72
        65 63 65 69 76 65
        72
   C878 00                 2464 	.db 0x00
   C879                    2465 __str_1:
   C879 0A                 2466 	.db 0x0A
   C87A 2A 2A 50 41 4E 49  2467 	.ascii "**PANIC**"
        43 2A 2A
   C883 00                 2468 	.db 0x00
   C884                    2469 __str_2:
   C884 00                 2470 	.db 0x00
   C885                    2471 __str_3:
   C885 72 61 64 69 6F 5F  2472 	.ascii "radio_initialise failed"
        69 6E 69 74 69 61
        6C 69 73 65 20 66
        61 69 6C 65 64
   C89C 00                 2473 	.db 0x00
   C89D                    2474 __str_4:
   C89D 62 61 64 20 62 6F  2475 	.ascii "bad board frequency %d"
        61 72 64 20 66 72
        65 71 75 65 6E 63
        79 20 25 64
   C8B3 00                 2476 	.db 0x00
   C8B4                    2477 __str_5:
   C8B4 72 61 64 69 6F 5F  2478 	.ascii "radio_configure failed"
        63 6F 6E 66 69 67
        75 72 65 20 66 61
        69 6C 65 64
   C8CA 00                 2479 	.db 0x00
                           2480 	.area XINIT   (CODE)
                           2481 	.area CABS    (ABS,CODE)
