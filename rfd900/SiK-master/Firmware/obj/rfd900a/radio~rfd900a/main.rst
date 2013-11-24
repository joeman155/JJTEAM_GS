                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:09 2013
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
                             42 	.globl _PA_ENABLE
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
                     00A5   563 _PA_ENABLE	=	0x00a5
                     0087   564 _IRQ	=	0x0087
                     0094   565 _NSS1	=	0x0094
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
   0005                     599 _feature_golay::
   0005                     600 	.ds 1
   0006                     601 _feature_opportunistic_resend::
   0006                     602 	.ds 1
   0007                     603 _feature_mavlink_framing::
   0007                     604 	.ds 1
   0008                     605 _feature_rtscts::
   0008                     606 	.ds 1
                            607 ;--------------------------------------------------------
                            608 ; paged external ram data
                            609 ;--------------------------------------------------------
                            610 	.area PSEG    (PAG,XDATA)
   0036                     611 _g_board_frequency::
   0036                     612 	.ds 1
   0037                     613 _g_board_bl_version::
   0037                     614 	.ds 1
   0038                     615 _errors::
   0038                     616 	.ds 12
   0044                     617 _statistics::
   0044                     618 	.ds 4
   0048                     619 _remote_statistics::
   0048                     620 	.ds 4
   004C                     621 _radio_init_freq_min_1_153:
   004C                     622 	.ds 4
   0050                     623 _radio_init_freq_max_1_153:
   0050                     624 	.ds 4
   0054                     625 _radio_init_channel_spacing_1_153:
   0054                     626 	.ds 4
   0058                     627 _radio_init_txpower_1_153:
   0058                     628 	.ds 1
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
   0403 02 3F DD      [24]  657 	ljmp	_Receiver_ISR
   0406                     658 	.ds	5
   040B 32            [24]  659 	reti
   040C                     660 	.ds	7
   0413 32            [24]  661 	reti
   0414                     662 	.ds	7
   041B 32            [24]  663 	reti
   041C                     664 	.ds	7
   0423 02 41 23      [24]  665 	ljmp	_serial_interrupt
   0426                     666 	.ds	5
   042B 02 58 F3      [24]  667 	ljmp	_T2_ISR
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
   0473 02 58 69      [24]  685 	ljmp	_T3_ISR
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
   0476 02 12 7E      [24]  707 	ljmp	_main
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
   127E                     720 _main:
                     0007   721 	ar7 = 0x07
                     0006   722 	ar6 = 0x06
                     0005   723 	ar5 = 0x05
                     0004   724 	ar4 = 0x04
                     0003   725 	ar3 = 0x03
                     0002   726 	ar2 = 0x02
                     0001   727 	ar1 = 0x01
                     0000   728 	ar0 = 0x00
                            729 ;	radio/main.c:102: g_board_frequency = BOARD_FREQUENCY_REG;
   127E AF C4         [24]  730 	mov	r7,_ADC0GTH
   1280 78 36         [12]  731 	mov	r0,#_g_board_frequency
   1282 EF            [12]  732 	mov	a,r7
   1283 F2            [24]  733 	movx	@r0,a
                            734 ;	radio/main.c:103: g_board_bl_version = BOARD_BL_VERSION_REG;
   1284 AF C3         [24]  735 	mov	r7,_ADC0GTL
   1286 78 37         [12]  736 	mov	r0,#_g_board_bl_version
   1288 EF            [12]  737 	mov	a,r7
   1289 F2            [24]  738 	movx	@r0,a
                            739 ;	radio/main.c:107: param_load();
   128A 12 28 BB      [24]  740 	lcall	_param_load
                            741 ;	radio/main.c:110: feature_mavlink_framing = param_get(PARAM_MAVLINK)?true:false;
   128D 75 82 06      [24]  742 	mov	dpl,#0x06
   1290 12 28 8D      [24]  743 	lcall	_param_get
   1293 AC 82         [24]  744 	mov	r4,dpl
   1295 AD 83         [24]  745 	mov	r5,dph
   1297 AE F0         [24]  746 	mov	r6,b
   1299 FF            [12]  747 	mov	r7,a
   129A EC            [12]  748 	mov	a,r4
   129B 4D            [12]  749 	orl	a,r5
   129C 4E            [12]  750 	orl	a,r6
   129D 4F            [12]  751 	orl	a,r7
   129E 24 FF         [12]  752 	add	a,#0xff
   12A0 92 07         [24]  753 	mov	_feature_mavlink_framing,c
                            754 ;	radio/main.c:111: feature_opportunistic_resend = param_get(PARAM_OPPRESEND)?true:false;
   12A2 75 82 07      [24]  755 	mov	dpl,#0x07
   12A5 12 28 8D      [24]  756 	lcall	_param_get
   12A8 AC 82         [24]  757 	mov	r4,dpl
   12AA AD 83         [24]  758 	mov	r5,dph
   12AC AE F0         [24]  759 	mov	r6,b
   12AE FF            [12]  760 	mov	r7,a
   12AF EC            [12]  761 	mov	a,r4
   12B0 4D            [12]  762 	orl	a,r5
   12B1 4E            [12]  763 	orl	a,r6
   12B2 4F            [12]  764 	orl	a,r7
   12B3 24 FF         [12]  765 	add	a,#0xff
   12B5 92 06         [24]  766 	mov	_feature_opportunistic_resend,c
                            767 ;	radio/main.c:112: feature_golay = param_get(PARAM_ECC)?true:false;
   12B7 75 82 05      [24]  768 	mov	dpl,#0x05
   12BA 12 28 8D      [24]  769 	lcall	_param_get
   12BD AC 82         [24]  770 	mov	r4,dpl
   12BF AD 83         [24]  771 	mov	r5,dph
   12C1 AE F0         [24]  772 	mov	r6,b
   12C3 FF            [12]  773 	mov	r7,a
   12C4 EC            [12]  774 	mov	a,r4
   12C5 4D            [12]  775 	orl	a,r5
   12C6 4E            [12]  776 	orl	a,r6
   12C7 4F            [12]  777 	orl	a,r7
   12C8 24 FF         [12]  778 	add	a,#0xff
   12CA 92 05         [24]  779 	mov	_feature_golay,c
                            780 ;	radio/main.c:113: feature_rtscts = param_get(PARAM_RTSCTS)?true:false;
   12CC 75 82 0E      [24]  781 	mov	dpl,#0x0E
   12CF 12 28 8D      [24]  782 	lcall	_param_get
   12D2 AC 82         [24]  783 	mov	r4,dpl
   12D4 AD 83         [24]  784 	mov	r5,dph
   12D6 AE F0         [24]  785 	mov	r6,b
   12D8 FF            [12]  786 	mov	r7,a
   12D9 EC            [12]  787 	mov	a,r4
   12DA 4D            [12]  788 	orl	a,r5
   12DB 4E            [12]  789 	orl	a,r6
   12DC 4F            [12]  790 	orl	a,r7
   12DD 24 FF         [12]  791 	add	a,#0xff
   12DF 92 08         [24]  792 	mov	_feature_rtscts,c
                            793 ;	radio/main.c:116: hardware_init();
   12E1 12 13 3E      [24]  794 	lcall	_hardware_init
                            795 ;	radio/main.c:119: radio_init();
   12E4 12 13 DC      [24]  796 	lcall	_radio_init
                            797 ;	radio/main.c:122: if (!radio_receiver_on()) {
   12E7 12 36 99      [24]  798 	lcall	_radio_receiver_on
   12EA 40 15         [24]  799 	jc	00102$
                            800 ;	radio/main.c:123: panic("failed to enable receiver");
   12EC 74 BE         [12]  801 	mov	a,#__str_0
   12EE C0 E0         [24]  802 	push	acc
   12F0 74 CA         [12]  803 	mov	a,#(__str_0 >> 8)
   12F2 C0 E0         [24]  804 	push	acc
   12F4 74 80         [12]  805 	mov	a,#0x80
   12F6 C0 E0         [24]  806 	push	acc
   12F8 12 13 04      [24]  807 	lcall	_panic
   12FB 15 81         [12]  808 	dec	sp
   12FD 15 81         [12]  809 	dec	sp
   12FF 15 81         [12]  810 	dec	sp
   1301                     811 00102$:
                            812 ;	radio/main.c:126: tdm_serial_loop();
   1301 02 4F 91      [24]  813 	ljmp	_tdm_serial_loop
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
   1304                     824 _panic:
                            825 ;	radio/main.c:134: puts("\n**PANIC**");
   1304 90 CA D8      [24]  826 	mov	dptr,#__str_1
   1307 75 F0 80      [24]  827 	mov	b,#0x80
   130A 12 65 70      [24]  828 	lcall	_puts
                            829 ;	radio/main.c:135: va_start(ap, fmt);
   130D E5 81         [12]  830 	mov	a,sp
   130F 24 FC         [12]  831 	add	a,#0xFC
   1311 FF            [12]  832 	mov	r7,a
                            833 ;	radio/main.c:136: vprintf(fmt, ap);
   1312 C0 07         [24]  834 	push	ar7
   1314 E5 81         [12]  835 	mov	a,sp
   1316 24 FB         [12]  836 	add	a,#0xfb
   1318 F8            [12]  837 	mov	r0,a
   1319 86 82         [24]  838 	mov	dpl,@r0
   131B 08            [12]  839 	inc	r0
   131C 86 83         [24]  840 	mov	dph,@r0
   131E 08            [12]  841 	inc	r0
   131F 86 F0         [24]  842 	mov	b,@r0
   1321 12 2D 83      [24]  843 	lcall	_vprintfl
   1324 15 81         [12]  844 	dec	sp
                            845 ;	radio/main.c:137: puts("");
   1326 90 CA E3      [24]  846 	mov	dptr,#__str_2
   1329 75 F0 80      [24]  847 	mov	b,#0x80
   132C 12 65 70      [24]  848 	lcall	_puts
                            849 ;	radio/main.c:139: EA = 1;
   132F D2 AF         [12]  850 	setb	_EA
                            851 ;	radio/main.c:140: ES0 = 1;
   1331 D2 AC         [12]  852 	setb	_ES0
                            853 ;	radio/main.c:142: delay_msec(1000);
   1333 90 03 E8      [24]  854 	mov	dptr,#0x03E8
   1336 12 58 EA      [24]  855 	lcall	_delay_msec
                            856 ;	radio/main.c:145: RSTSRC |= (1 << 4);
   1339 43 EF 10      [24]  857 	orl	_RSTSRC,#0x10
   133C                     858 00103$:
   133C 80 FE         [24]  859 	sjmp	00103$
                            860 ;------------------------------------------------------------
                            861 ;Allocation info for local variables in function 'hardware_init'
                            862 ;------------------------------------------------------------
                            863 ;	radio/main.c:151: hardware_init(void)
                            864 ;	-----------------------------------------
                            865 ;	 function hardware_init
                            866 ;	-----------------------------------------
   133E                     867 _hardware_init:
                            868 ;	radio/main.c:156: PCA0MD	&= ~0x40;
   133E AF D9         [24]  869 	mov	r7,_PCA0MD
   1340 74 BF         [12]  870 	mov	a,#0xBF
   1342 5F            [12]  871 	anl	a,r7
   1343 F5 D9         [12]  872 	mov	_PCA0MD,a
                            873 ;	radio/main.c:159: FLSCL	 =  0x40;
   1345 75 B6 40      [24]  874 	mov	_FLSCL,#0x40
                            875 ;	radio/main.c:160: OSCICN	 =  0x8F;
   1348 75 B2 8F      [24]  876 	mov	_OSCICN,#0x8F
                            877 ;	radio/main.c:161: CLKSEL	 =  0x00;
   134B 75 A9 00      [24]  878 	mov	_CLKSEL,#0x00
                            879 ;	radio/main.c:164: VDM0CN	 =  0x80;
   134E 75 FF 80      [24]  880 	mov	_VDM0CN,#0x80
                            881 ;	radio/main.c:165: for (i = 0; i < 350; i++);	// Wait 100us for initialization
   1351 7E 5E         [12]  882 	mov	r6,#0x5E
   1353 7F 01         [12]  883 	mov	r7,#0x01
   1355                     884 00104$:
   1355 1E            [12]  885 	dec	r6
   1356 BE FF 01      [24]  886 	cjne	r6,#0xFF,00114$
   1359 1F            [12]  887 	dec	r7
   135A                     888 00114$:
   135A EE            [12]  889 	mov	a,r6
   135B 4F            [12]  890 	orl	a,r7
   135C 70 F7         [24]  891 	jnz	00104$
                            892 ;	radio/main.c:166: RSTSRC	 =  0x06;		// enable brown out and missing clock reset sources
   135E 75 EF 06      [24]  893 	mov	_RSTSRC,#0x06
                            894 ;	radio/main.c:169: P0SKIP  =  0xCF;                // P0 UART avail on XBAR
   1361 75 D4 CF      [24]  895 	mov	_P0SKIP,#0xCF
                            896 ;	radio/main.c:170: P1SKIP  =  0xF8;                // P1 SPI1 avail on XBAR 
   1364 75 D5 F8      [24]  897 	mov	_P1SKIP,#0xF8
                            898 ;	radio/main.c:171: P2SKIP  =  0x8F;                // P2 CEX0 avail on XBAR P2.4, rest GPIO
   1367 75 D6 8F      [24]  899 	mov	_P2SKIP,#0x8F
                            900 ;	radio/main.c:175: P0MDOUT	 =  0x10;		// UART Tx push-pull
   136A 75 A4 10      [24]  901 	mov	_P0MDOUT,#0x10
                            902 ;	radio/main.c:176: SFRPAGE	 =  CONFIG_PAGE;
   136D 75 A7 0F      [24]  903 	mov	_SFRPAGE,#0x0F
                            904 ;	radio/main.c:177: P0DRV	 =  0x10;		// UART TX
   1370 75 A4 10      [24]  905 	mov	_P0DRV,#0x10
                            906 ;	radio/main.c:178: SFRPAGE	 =  LEGACY_PAGE;
   1373 75 A7 00      [24]  907 	mov	_SFRPAGE,#0x00
                            908 ;	radio/main.c:179: XBR0	 =  0x01;		// UART enable
   1376 75 E1 01      [24]  909 	mov	_XBR0,#0x01
                            910 ;	radio/main.c:183: XBR1	|= 0x44;	// enable SPI in 3-wire mode
   1379 43 E2 44      [24]  911 	orl	_XBR1,#0x44
                            912 ;	radio/main.c:184: P1MDOUT	|= 0xF5;	// SCK1, MOSI1, MISO1 push-pull
   137C 43 A5 F5      [24]  913 	orl	_P1MDOUT,#0xF5
                            914 ;	radio/main.c:185: P2MDOUT	|= 0xFF;	// SCK1, MOSI1, MISO1 push-pull
   137F E5 A6         [12]  915 	mov	a,_P2MDOUT
   1381 75 A6 FF      [24]  916 	mov	_P2MDOUT,#0xFF
                            917 ;	radio/main.c:190: SFRPAGE	 = CONFIG_PAGE;
   1384 75 A7 0F      [24]  918 	mov	_SFRPAGE,#0x0F
                            919 ;	radio/main.c:191: P1DRV	|= 0xF5;	// SPI signals use high-current mode, LEDs and PAEN High current drive
   1387 43 A5 F5      [24]  920 	orl	_P1DRV,#0xF5
                            921 ;	radio/main.c:192: P2DRV	|= 0xFF;	
   138A E5 A6         [12]  922 	mov	a,_P2DRV
   138C 75 A6 FF      [24]  923 	mov	_P2DRV,#0xFF
                            924 ;	radio/main.c:193: SFRPAGE	 = LEGACY_PAGE;
   138F 75 A7 00      [24]  925 	mov	_SFRPAGE,#0x00
                            926 ;	radio/main.c:194: SPI1CFG	 = 0x40;	// master mode
   1392 75 84 40      [24]  927 	mov	_SPI1CFG,#0x40
                            928 ;	radio/main.c:195: SPI1CN	 = 0x00;	// 3 wire master mode
   1395 75 B0 00      [24]  929 	mov	_SPI1CN,#0x00
                            930 ;	radio/main.c:196: SPI1CKR	 = 0x00;	// Initialise SPI prescaler to divide-by-2 (12.25MHz, technically out of spec)
   1398 75 85 00      [24]  931 	mov	_SPI1CKR,#0x00
                            932 ;	radio/main.c:197: SPI1CN	|= 0x01;	// enable SPI
   139B 43 B0 01      [24]  933 	orl	_SPI1CN,#0x01
                            934 ;	radio/main.c:198: NSS1	 = 1;		// set NSS high
   139E D2 94         [12]  935 	setb	_NSS1
                            936 ;	radio/main.c:201: IE0	 = 0;
   13A0 C2 89         [12]  937 	clr	_IE0
                            938 ;	radio/main.c:204: timer_init();
   13A2 12 59 99      [24]  939 	lcall	_timer_init
                            940 ;	radio/main.c:207: serial_init(param_get(PARAM_SERIAL_SPEED));
   13A5 75 82 01      [24]  941 	mov	dpl,#0x01
   13A8 12 28 8D      [24]  942 	lcall	_param_get
   13AB AC 82         [24]  943 	mov	r4,dpl
   13AD 8C 82         [24]  944 	mov	dpl,r4
   13AF 12 42 8B      [24]  945 	lcall	_serial_init
                            946 ;	radio/main.c:210: IP = 0;
   13B2 75 B8 00      [24]  947 	mov	_IP,#0x00
                            948 ;	radio/main.c:213: EA = 1;
   13B5 D2 AF         [12]  949 	setb	_EA
                            950 ;	radio/main.c:216: LED_RADIO = LED_ON;
   13B7 D2 95         [12]  951 	setb	_LED_GREEN
                            952 ;	radio/main.c:217: LED_BOOTLOADER = LED_OFF;
   13B9 C2 96         [12]  953 	clr	_LED_RED
                            954 ;	radio/main.c:220: AD0EN = 1;	// Enable ADC0
   13BB D2 EF         [12]  955 	setb	_AD0EN
                            956 ;	radio/main.c:221: ADC0CF = 0xF9;  // Set amp0gn=1 (1:1)
   13BD 75 BC F9      [24]  957 	mov	_ADC0CF,#0xF9
                            958 ;	radio/main.c:222: ADC0AC = 0x00;
   13C0 75 BA 00      [24]  959 	mov	_ADC0AC,#0x00
                            960 ;	radio/main.c:223: ADC0MX = 0x1B;	// Set ADC0MX to temp sensor
   13C3 75 BB 1B      [24]  961 	mov	_ADC0MX,#0x1B
                            962 ;	radio/main.c:224: REF0CN = 0x07;	// Define reference and enable temp sensor
   13C6 75 D1 07      [24]  963 	mov	_REF0CN,#0x07
                            964 ;	radio/main.c:228: PCA0MD = 0x88;
   13C9 75 D9 88      [24]  965 	mov	_PCA0MD,#0x88
                            966 ;	radio/main.c:229: PCA0PWM = 0x00;
   13CC 75 DF 00      [24]  967 	mov	_PCA0PWM,#0x00
                            968 ;	radio/main.c:230: PCA0CPM0 = 0x42;
   13CF 75 DA 42      [24]  969 	mov	_PCA0CPM0,#0x42
                            970 ;	radio/main.c:231: PCA0CPH0 = 0x80;
   13D2 75 FC 80      [24]  971 	mov	_PCA0CPH0,#0x80
                            972 ;	radio/main.c:232: PCA0CN = 0x40;
   13D5 75 D8 40      [24]  973 	mov	_PCA0CN,#0x40
                            974 ;	radio/main.c:234: XBR2	 =  0x40;		// Crossbar (GPIO) enable
   13D8 75 E3 40      [24]  975 	mov	_XBR2,#0x40
   13DB 22            [24]  976 	ret
                            977 ;------------------------------------------------------------
                            978 ;Allocation info for local variables in function 'radio_init'
                            979 ;------------------------------------------------------------
                            980 ;	radio/main.c:238: radio_init(void)
                            981 ;	-----------------------------------------
                            982 ;	 function radio_init
                            983 ;	-----------------------------------------
   13DC                     984 _radio_init:
                            985 ;	radio/main.c:245: if (!radio_initialise()) {
   13DC 12 36 D8      [24]  986 	lcall	_radio_initialise
   13DF 40 15         [24]  987 	jc	00102$
                            988 ;	radio/main.c:246: panic("radio_initialise failed");
   13E1 74 E4         [12]  989 	mov	a,#__str_3
   13E3 C0 E0         [24]  990 	push	acc
   13E5 74 CA         [12]  991 	mov	a,#(__str_3 >> 8)
   13E7 C0 E0         [24]  992 	push	acc
   13E9 74 80         [12]  993 	mov	a,#0x80
   13EB C0 E0         [24]  994 	push	acc
   13ED 12 13 04      [24]  995 	lcall	_panic
   13F0 15 81         [12]  996 	dec	sp
   13F2 15 81         [12]  997 	dec	sp
   13F4 15 81         [12]  998 	dec	sp
   13F6                     999 00102$:
                           1000 ;	radio/main.c:249: switch (g_board_frequency) {
   13F6 78 36         [12] 1001 	mov	r0,#_g_board_frequency
   13F8 E2            [24] 1002 	movx	a,@r0
   13F9 B4 43 02      [24] 1003 	cjne	a,#0x43,00193$
   13FC 80 1C         [24] 1004 	sjmp	00103$
   13FE                    1005 00193$:
   13FE 78 36         [12] 1006 	mov	r0,#_g_board_frequency
   1400 E2            [24] 1007 	movx	a,@r0
   1401 B4 47 02      [24] 1008 	cjne	a,#0x47,00194$
   1404 80 43         [24] 1009 	sjmp	00104$
   1406                    1010 00194$:
   1406 78 36         [12] 1011 	mov	r0,#_g_board_frequency
   1408 E2            [24] 1012 	movx	a,@r0
   1409 B4 86 02      [24] 1013 	cjne	a,#0x86,00195$
   140C 80 6A         [24] 1014 	sjmp	00105$
   140E                    1015 00195$:
   140E 78 36         [12] 1016 	mov	r0,#_g_board_frequency
   1410 E2            [24] 1017 	movx	a,@r0
   1411 B4 91 03      [24] 1018 	cjne	a,#0x91,00196$
   1414 02 14 A5      [24] 1019 	ljmp	00106$
   1417                    1020 00196$:
   1417 02 14 D2      [24] 1021 	ljmp	00107$
                           1022 ;	radio/main.c:250: case FREQ_433:
   141A                    1023 00103$:
                           1024 ;	radio/main.c:251: freq_min = 433050000UL;
   141A 78 4C         [12] 1025 	mov	r0,#_radio_init_freq_min_1_153
   141C 74 90         [12] 1026 	mov	a,#0x90
   141E F2            [24] 1027 	movx	@r0,a
   141F 08            [12] 1028 	inc	r0
   1420 74 D1         [12] 1029 	mov	a,#0xD1
   1422 F2            [24] 1030 	movx	@r0,a
   1423 08            [12] 1031 	inc	r0
   1424 74 CF         [12] 1032 	mov	a,#0xCF
   1426 F2            [24] 1033 	movx	@r0,a
   1427 08            [12] 1034 	inc	r0
   1428 74 19         [12] 1035 	mov	a,#0x19
   142A F2            [24] 1036 	movx	@r0,a
                           1037 ;	radio/main.c:252: freq_max = 434790000UL;
   142B 78 50         [12] 1038 	mov	r0,#_radio_init_freq_max_1_153
   142D 74 70         [12] 1039 	mov	a,#0x70
   142F F2            [24] 1040 	movx	@r0,a
   1430 08            [12] 1041 	inc	r0
   1431 74 5E         [12] 1042 	mov	a,#0x5E
   1433 F2            [24] 1043 	movx	@r0,a
   1434 08            [12] 1044 	inc	r0
   1435 74 EA         [12] 1045 	mov	a,#0xEA
   1437 F2            [24] 1046 	movx	@r0,a
   1438 08            [12] 1047 	inc	r0
   1439 74 19         [12] 1048 	mov	a,#0x19
   143B F2            [24] 1049 	movx	@r0,a
                           1050 ;	radio/main.c:253: txpower = 10;
   143C 78 58         [12] 1051 	mov	r0,#_radio_init_txpower_1_153
   143E 74 0A         [12] 1052 	mov	a,#0x0A
   1440 F2            [24] 1053 	movx	@r0,a
                           1054 ;	radio/main.c:254: num_fh_channels = 10;
   1441 78 1C         [12] 1055 	mov	r0,#_num_fh_channels
   1443 74 0A         [12] 1056 	mov	a,#0x0A
   1445 F2            [24] 1057 	movx	@r0,a
                           1058 ;	radio/main.c:255: break;
   1446 02 15 09      [24] 1059 	ljmp	00108$
                           1060 ;	radio/main.c:256: case FREQ_470:
   1449                    1061 00104$:
                           1062 ;	radio/main.c:257: freq_min = 470000000UL;
   1449 78 4C         [12] 1063 	mov	r0,#_radio_init_freq_min_1_153
   144B 74 80         [12] 1064 	mov	a,#0x80
   144D F2            [24] 1065 	movx	@r0,a
   144E 08            [12] 1066 	inc	r0
   144F 74 A1         [12] 1067 	mov	a,#0xA1
   1451 F2            [24] 1068 	movx	@r0,a
   1452 08            [12] 1069 	inc	r0
   1453 74 03         [12] 1070 	mov	a,#0x03
   1455 F2            [24] 1071 	movx	@r0,a
   1456 08            [12] 1072 	inc	r0
   1457 74 1C         [12] 1073 	mov	a,#0x1C
   1459 F2            [24] 1074 	movx	@r0,a
                           1075 ;	radio/main.c:258: freq_max = 471000000UL;
   145A 78 50         [12] 1076 	mov	r0,#_radio_init_freq_max_1_153
   145C 74 C0         [12] 1077 	mov	a,#0xC0
   145E F2            [24] 1078 	movx	@r0,a
   145F 08            [12] 1079 	inc	r0
   1460 74 E3         [12] 1080 	mov	a,#0xE3
   1462 F2            [24] 1081 	movx	@r0,a
   1463 08            [12] 1082 	inc	r0
   1464 74 12         [12] 1083 	mov	a,#0x12
   1466 F2            [24] 1084 	movx	@r0,a
   1467 08            [12] 1085 	inc	r0
   1468 74 1C         [12] 1086 	mov	a,#0x1C
   146A F2            [24] 1087 	movx	@r0,a
                           1088 ;	radio/main.c:259: txpower = 10;
   146B 78 58         [12] 1089 	mov	r0,#_radio_init_txpower_1_153
   146D 74 0A         [12] 1090 	mov	a,#0x0A
   146F F2            [24] 1091 	movx	@r0,a
                           1092 ;	radio/main.c:260: num_fh_channels = 10;
   1470 78 1C         [12] 1093 	mov	r0,#_num_fh_channels
   1472 74 0A         [12] 1094 	mov	a,#0x0A
   1474 F2            [24] 1095 	movx	@r0,a
                           1096 ;	radio/main.c:261: break;
   1475 02 15 09      [24] 1097 	ljmp	00108$
                           1098 ;	radio/main.c:262: case FREQ_868:
   1478                    1099 00105$:
                           1100 ;	radio/main.c:263: freq_min = 868000000UL;
   1478 78 4C         [12] 1101 	mov	r0,#_radio_init_freq_min_1_153
   147A E4            [12] 1102 	clr	a
   147B F2            [24] 1103 	movx	@r0,a
   147C 08            [12] 1104 	inc	r0
   147D 74 A1         [12] 1105 	mov	a,#0xA1
   147F F2            [24] 1106 	movx	@r0,a
   1480 08            [12] 1107 	inc	r0
   1481 74 BC         [12] 1108 	mov	a,#0xBC
   1483 F2            [24] 1109 	movx	@r0,a
   1484 08            [12] 1110 	inc	r0
   1485 74 33         [12] 1111 	mov	a,#0x33
   1487 F2            [24] 1112 	movx	@r0,a
                           1113 ;	radio/main.c:264: freq_max = 869000000UL;
   1488 78 50         [12] 1114 	mov	r0,#_radio_init_freq_max_1_153
   148A 74 40         [12] 1115 	mov	a,#0x40
   148C F2            [24] 1116 	movx	@r0,a
   148D 08            [12] 1117 	inc	r0
   148E 74 E3         [12] 1118 	mov	a,#0xE3
   1490 F2            [24] 1119 	movx	@r0,a
   1491 08            [12] 1120 	inc	r0
   1492 74 CB         [12] 1121 	mov	a,#0xCB
   1494 F2            [24] 1122 	movx	@r0,a
   1495 08            [12] 1123 	inc	r0
   1496 74 33         [12] 1124 	mov	a,#0x33
   1498 F2            [24] 1125 	movx	@r0,a
                           1126 ;	radio/main.c:265: txpower = 10;
   1499 78 58         [12] 1127 	mov	r0,#_radio_init_txpower_1_153
   149B 74 0A         [12] 1128 	mov	a,#0x0A
   149D F2            [24] 1129 	movx	@r0,a
                           1130 ;	radio/main.c:266: num_fh_channels = 10;
   149E 78 1C         [12] 1131 	mov	r0,#_num_fh_channels
   14A0 74 0A         [12] 1132 	mov	a,#0x0A
   14A2 F2            [24] 1133 	movx	@r0,a
                           1134 ;	radio/main.c:267: break;
                           1135 ;	radio/main.c:268: case FREQ_915:
   14A3 80 64         [24] 1136 	sjmp	00108$
   14A5                    1137 00106$:
                           1138 ;	radio/main.c:269: freq_min = 915000000UL;
   14A5 78 4C         [12] 1139 	mov	r0,#_radio_init_freq_min_1_153
   14A7 74 C0         [12] 1140 	mov	a,#0xC0
   14A9 F2            [24] 1141 	movx	@r0,a
   14AA 08            [12] 1142 	inc	r0
   14AB 74 CA         [12] 1143 	mov	a,#0xCA
   14AD F2            [24] 1144 	movx	@r0,a
   14AE 08            [12] 1145 	inc	r0
   14AF 74 89         [12] 1146 	mov	a,#0x89
   14B1 F2            [24] 1147 	movx	@r0,a
   14B2 08            [12] 1148 	inc	r0
   14B3 74 36         [12] 1149 	mov	a,#0x36
   14B5 F2            [24] 1150 	movx	@r0,a
                           1151 ;	radio/main.c:270: freq_max = 928000000UL;
   14B6 78 50         [12] 1152 	mov	r0,#_radio_init_freq_max_1_153
   14B8 E4            [12] 1153 	clr	a
   14B9 F2            [24] 1154 	movx	@r0,a
   14BA 08            [12] 1155 	inc	r0
   14BB 74 28         [12] 1156 	mov	a,#0x28
   14BD F2            [24] 1157 	movx	@r0,a
   14BE 08            [12] 1158 	inc	r0
   14BF 74 50         [12] 1159 	mov	a,#0x50
   14C1 F2            [24] 1160 	movx	@r0,a
   14C2 08            [12] 1161 	inc	r0
   14C3 74 37         [12] 1162 	mov	a,#0x37
   14C5 F2            [24] 1163 	movx	@r0,a
                           1164 ;	radio/main.c:271: txpower = 20;
   14C6 78 58         [12] 1165 	mov	r0,#_radio_init_txpower_1_153
   14C8 74 14         [12] 1166 	mov	a,#0x14
   14CA F2            [24] 1167 	movx	@r0,a
                           1168 ;	radio/main.c:272: num_fh_channels = MAX_FREQ_CHANNELS;
   14CB 78 1C         [12] 1169 	mov	r0,#_num_fh_channels
   14CD 74 32         [12] 1170 	mov	a,#0x32
   14CF F2            [24] 1171 	movx	@r0,a
                           1172 ;	radio/main.c:273: break;
                           1173 ;	radio/main.c:274: default:
   14D0 80 37         [24] 1174 	sjmp	00108$
   14D2                    1175 00107$:
                           1176 ;	radio/main.c:275: freq_min = 0;
   14D2 78 4C         [12] 1177 	mov	r0,#_radio_init_freq_min_1_153
   14D4 E4            [12] 1178 	clr	a
   14D5 F2            [24] 1179 	movx	@r0,a
   14D6 08            [12] 1180 	inc	r0
   14D7 F2            [24] 1181 	movx	@r0,a
   14D8 08            [12] 1182 	inc	r0
   14D9 F2            [24] 1183 	movx	@r0,a
   14DA 08            [12] 1184 	inc	r0
   14DB F2            [24] 1185 	movx	@r0,a
                           1186 ;	radio/main.c:276: freq_max = 0;
   14DC 78 50         [12] 1187 	mov	r0,#_radio_init_freq_max_1_153
   14DE E4            [12] 1188 	clr	a
   14DF F2            [24] 1189 	movx	@r0,a
   14E0 08            [12] 1190 	inc	r0
   14E1 F2            [24] 1191 	movx	@r0,a
   14E2 08            [12] 1192 	inc	r0
   14E3 F2            [24] 1193 	movx	@r0,a
   14E4 08            [12] 1194 	inc	r0
   14E5 F2            [24] 1195 	movx	@r0,a
                           1196 ;	radio/main.c:277: txpower = 0;
   14E6 78 58         [12] 1197 	mov	r0,#_radio_init_txpower_1_153
   14E8 E4            [12] 1198 	clr	a
   14E9 F2            [24] 1199 	movx	@r0,a
                           1200 ;	radio/main.c:278: panic("bad board frequency %d", g_board_frequency);
   14EA 78 36         [12] 1201 	mov	r0,#_g_board_frequency
   14EC E2            [24] 1202 	movx	a,@r0
   14ED FA            [12] 1203 	mov	r2,a
   14EE 7B 00         [12] 1204 	mov	r3,#0x00
   14F0 C0 02         [24] 1205 	push	ar2
   14F2 C0 03         [24] 1206 	push	ar3
   14F4 74 FC         [12] 1207 	mov	a,#__str_4
   14F6 C0 E0         [24] 1208 	push	acc
   14F8 74 CA         [12] 1209 	mov	a,#(__str_4 >> 8)
   14FA C0 E0         [24] 1210 	push	acc
   14FC 74 80         [12] 1211 	mov	a,#0x80
   14FE C0 E0         [24] 1212 	push	acc
   1500 12 13 04      [24] 1213 	lcall	_panic
   1503 E5 81         [12] 1214 	mov	a,sp
   1505 24 FB         [12] 1215 	add	a,#0xfb
   1507 F5 81         [12] 1216 	mov	sp,a
                           1217 ;	radio/main.c:280: }
   1509                    1218 00108$:
                           1219 ;	radio/main.c:282: if (param_get(PARAM_NUM_CHANNELS) != 0) {
   1509 75 82 0A      [24] 1220 	mov	dpl,#0x0A
   150C 12 28 8D      [24] 1221 	lcall	_param_get
   150F AA 82         [24] 1222 	mov	r2,dpl
   1511 AB 83         [24] 1223 	mov	r3,dph
   1513 AE F0         [24] 1224 	mov	r6,b
   1515 FF            [12] 1225 	mov	r7,a
   1516 EA            [12] 1226 	mov	a,r2
   1517 4B            [12] 1227 	orl	a,r3
   1518 4E            [12] 1228 	orl	a,r6
   1519 4F            [12] 1229 	orl	a,r7
   151A 60 11         [24] 1230 	jz	00110$
                           1231 ;	radio/main.c:283: num_fh_channels = param_get(PARAM_NUM_CHANNELS);
   151C 75 82 0A      [24] 1232 	mov	dpl,#0x0A
   151F 12 28 8D      [24] 1233 	lcall	_param_get
   1522 AC 82         [24] 1234 	mov	r4,dpl
   1524 AD 83         [24] 1235 	mov	r5,dph
   1526 AE F0         [24] 1236 	mov	r6,b
   1528 FF            [12] 1237 	mov	r7,a
   1529 78 1C         [12] 1238 	mov	r0,#_num_fh_channels
   152B EC            [12] 1239 	mov	a,r4
   152C F2            [24] 1240 	movx	@r0,a
   152D                    1241 00110$:
                           1242 ;	radio/main.c:285: if (param_get(PARAM_MIN_FREQ) != 0) {
   152D 75 82 08      [24] 1243 	mov	dpl,#0x08
   1530 12 28 8D      [24] 1244 	lcall	_param_get
   1533 AC 82         [24] 1245 	mov	r4,dpl
   1535 AD 83         [24] 1246 	mov	r5,dph
   1537 AE F0         [24] 1247 	mov	r6,b
   1539 FF            [12] 1248 	mov	r7,a
   153A EC            [12] 1249 	mov	a,r4
   153B 4D            [12] 1250 	orl	a,r5
   153C 4E            [12] 1251 	orl	a,r6
   153D 4F            [12] 1252 	orl	a,r7
   153E 60 37         [24] 1253 	jz	00112$
                           1254 ;	radio/main.c:286: freq_min        = param_get(PARAM_MIN_FREQ) * 1000UL;
   1540 75 82 08      [24] 1255 	mov	dpl,#0x08
   1543 12 28 8D      [24] 1256 	lcall	_param_get
   1546 AC 82         [24] 1257 	mov	r4,dpl
   1548 AD 83         [24] 1258 	mov	r5,dph
   154A AE F0         [24] 1259 	mov	r6,b
   154C FF            [12] 1260 	mov	r7,a
   154D 90 05 DA      [24] 1261 	mov	dptr,#__mullong_PARM_2
   1550 EC            [12] 1262 	mov	a,r4
   1551 F0            [24] 1263 	movx	@dptr,a
   1552 ED            [12] 1264 	mov	a,r5
   1553 A3            [24] 1265 	inc	dptr
   1554 F0            [24] 1266 	movx	@dptr,a
   1555 EE            [12] 1267 	mov	a,r6
   1556 A3            [24] 1268 	inc	dptr
   1557 F0            [24] 1269 	movx	@dptr,a
   1558 EF            [12] 1270 	mov	a,r7
   1559 A3            [24] 1271 	inc	dptr
   155A F0            [24] 1272 	movx	@dptr,a
   155B 90 03 E8      [24] 1273 	mov	dptr,#0x03E8
   155E E4            [12] 1274 	clr	a
   155F F5 F0         [12] 1275 	mov	b,a
   1561 12 61 EF      [24] 1276 	lcall	__mullong
   1564 78 4C         [12] 1277 	mov	r0,#_radio_init_freq_min_1_153
   1566 C0 E0         [24] 1278 	push	acc
   1568 E5 82         [12] 1279 	mov	a,dpl
   156A F2            [24] 1280 	movx	@r0,a
   156B 08            [12] 1281 	inc	r0
   156C E5 83         [12] 1282 	mov	a,dph
   156E F2            [24] 1283 	movx	@r0,a
   156F 08            [12] 1284 	inc	r0
   1570 E5 F0         [12] 1285 	mov	a,b
   1572 F2            [24] 1286 	movx	@r0,a
   1573 D0 E0         [24] 1287 	pop	acc
   1575 08            [12] 1288 	inc	r0
   1576 F2            [24] 1289 	movx	@r0,a
   1577                    1290 00112$:
                           1291 ;	radio/main.c:288: if (param_get(PARAM_MAX_FREQ) != 0) {
   1577 75 82 09      [24] 1292 	mov	dpl,#0x09
   157A 12 28 8D      [24] 1293 	lcall	_param_get
   157D AC 82         [24] 1294 	mov	r4,dpl
   157F AD 83         [24] 1295 	mov	r5,dph
   1581 AE F0         [24] 1296 	mov	r6,b
   1583 FF            [12] 1297 	mov	r7,a
   1584 EC            [12] 1298 	mov	a,r4
   1585 4D            [12] 1299 	orl	a,r5
   1586 4E            [12] 1300 	orl	a,r6
   1587 4F            [12] 1301 	orl	a,r7
   1588 60 37         [24] 1302 	jz	00114$
                           1303 ;	radio/main.c:289: freq_max        = param_get(PARAM_MAX_FREQ) * 1000UL;
   158A 75 82 09      [24] 1304 	mov	dpl,#0x09
   158D 12 28 8D      [24] 1305 	lcall	_param_get
   1590 AC 82         [24] 1306 	mov	r4,dpl
   1592 AD 83         [24] 1307 	mov	r5,dph
   1594 AE F0         [24] 1308 	mov	r6,b
   1596 FF            [12] 1309 	mov	r7,a
   1597 90 05 DA      [24] 1310 	mov	dptr,#__mullong_PARM_2
   159A EC            [12] 1311 	mov	a,r4
   159B F0            [24] 1312 	movx	@dptr,a
   159C ED            [12] 1313 	mov	a,r5
   159D A3            [24] 1314 	inc	dptr
   159E F0            [24] 1315 	movx	@dptr,a
   159F EE            [12] 1316 	mov	a,r6
   15A0 A3            [24] 1317 	inc	dptr
   15A1 F0            [24] 1318 	movx	@dptr,a
   15A2 EF            [12] 1319 	mov	a,r7
   15A3 A3            [24] 1320 	inc	dptr
   15A4 F0            [24] 1321 	movx	@dptr,a
   15A5 90 03 E8      [24] 1322 	mov	dptr,#0x03E8
   15A8 E4            [12] 1323 	clr	a
   15A9 F5 F0         [12] 1324 	mov	b,a
   15AB 12 61 EF      [24] 1325 	lcall	__mullong
   15AE 78 50         [12] 1326 	mov	r0,#_radio_init_freq_max_1_153
   15B0 C0 E0         [24] 1327 	push	acc
   15B2 E5 82         [12] 1328 	mov	a,dpl
   15B4 F2            [24] 1329 	movx	@r0,a
   15B5 08            [12] 1330 	inc	r0
   15B6 E5 83         [12] 1331 	mov	a,dph
   15B8 F2            [24] 1332 	movx	@r0,a
   15B9 08            [12] 1333 	inc	r0
   15BA E5 F0         [12] 1334 	mov	a,b
   15BC F2            [24] 1335 	movx	@r0,a
   15BD D0 E0         [24] 1336 	pop	acc
   15BF 08            [12] 1337 	inc	r0
   15C0 F2            [24] 1338 	movx	@r0,a
   15C1                    1339 00114$:
                           1340 ;	radio/main.c:291: if (param_get(PARAM_TXPOWER) != 0) {
   15C1 75 82 04      [24] 1341 	mov	dpl,#0x04
   15C4 12 28 8D      [24] 1342 	lcall	_param_get
   15C7 AC 82         [24] 1343 	mov	r4,dpl
   15C9 AD 83         [24] 1344 	mov	r5,dph
   15CB AE F0         [24] 1345 	mov	r6,b
   15CD FF            [12] 1346 	mov	r7,a
   15CE EC            [12] 1347 	mov	a,r4
   15CF 4D            [12] 1348 	orl	a,r5
   15D0 4E            [12] 1349 	orl	a,r6
   15D1 4F            [12] 1350 	orl	a,r7
   15D2 60 11         [24] 1351 	jz	00116$
                           1352 ;	radio/main.c:292: txpower = param_get(PARAM_TXPOWER);
   15D4 75 82 04      [24] 1353 	mov	dpl,#0x04
   15D7 12 28 8D      [24] 1354 	lcall	_param_get
   15DA AC 82         [24] 1355 	mov	r4,dpl
   15DC AD 83         [24] 1356 	mov	r5,dph
   15DE AE F0         [24] 1357 	mov	r6,b
   15E0 FF            [12] 1358 	mov	r7,a
   15E1 78 58         [12] 1359 	mov	r0,#_radio_init_txpower_1_153
   15E3 EC            [12] 1360 	mov	a,r4
   15E4 F2            [24] 1361 	movx	@r0,a
   15E5                    1362 00116$:
                           1363 ;	radio/main.c:296: txpower = constrain(txpower, BOARD_MINTXPOWER, BOARD_MAXTXPOWER);
   15E5 78 58         [12] 1364 	mov	r0,#_radio_init_txpower_1_153
   15E7 E2            [24] 1365 	movx	a,@r0
   15E8 FB            [12] 1366 	mov	r3,a
   15E9 7D 00         [12] 1367 	mov	r5,#0x00
   15EB 7E 00         [12] 1368 	mov	r6,#0x00
   15ED 7F 00         [12] 1369 	mov	r7,#0x00
   15EF 78 73         [12] 1370 	mov	r0,#_constrain_PARM_2
   15F1 E4            [12] 1371 	clr	a
   15F2 F2            [24] 1372 	movx	@r0,a
   15F3 08            [12] 1373 	inc	r0
   15F4 F2            [24] 1374 	movx	@r0,a
   15F5 08            [12] 1375 	inc	r0
   15F6 F2            [24] 1376 	movx	@r0,a
   15F7 08            [12] 1377 	inc	r0
   15F8 F2            [24] 1378 	movx	@r0,a
   15F9 78 77         [12] 1379 	mov	r0,#_constrain_PARM_3
   15FB 74 1E         [12] 1380 	mov	a,#0x1E
   15FD F2            [24] 1381 	movx	@r0,a
   15FE 08            [12] 1382 	inc	r0
   15FF E4            [12] 1383 	clr	a
   1600 F2            [24] 1384 	movx	@r0,a
   1601 08            [12] 1385 	inc	r0
   1602 F2            [24] 1386 	movx	@r0,a
   1603 08            [12] 1387 	inc	r0
   1604 F2            [24] 1388 	movx	@r0,a
   1605 8B 82         [24] 1389 	mov	dpl,r3
   1607 8D 83         [24] 1390 	mov	dph,r5
   1609 8E F0         [24] 1391 	mov	b,r6
   160B EF            [12] 1392 	mov	a,r7
   160C 12 2B 9B      [24] 1393 	lcall	_constrain
   160F AC 82         [24] 1394 	mov	r4,dpl
   1611 78 58         [12] 1395 	mov	r0,#_radio_init_txpower_1_153
   1613 EC            [12] 1396 	mov	a,r4
   1614 F2            [24] 1397 	movx	@r0,a
                           1398 ;	radio/main.c:297: num_fh_channels = constrain(num_fh_channels, 1, MAX_FREQ_CHANNELS);
   1615 78 1C         [12] 1399 	mov	r0,#_num_fh_channels
   1617 E2            [24] 1400 	movx	a,@r0
   1618 FC            [12] 1401 	mov	r4,a
   1619 7D 00         [12] 1402 	mov	r5,#0x00
   161B 7E 00         [12] 1403 	mov	r6,#0x00
   161D 7F 00         [12] 1404 	mov	r7,#0x00
   161F 78 73         [12] 1405 	mov	r0,#_constrain_PARM_2
   1621 74 01         [12] 1406 	mov	a,#0x01
   1623 F2            [24] 1407 	movx	@r0,a
   1624 08            [12] 1408 	inc	r0
   1625 E4            [12] 1409 	clr	a
   1626 F2            [24] 1410 	movx	@r0,a
   1627 08            [12] 1411 	inc	r0
   1628 F2            [24] 1412 	movx	@r0,a
   1629 08            [12] 1413 	inc	r0
   162A F2            [24] 1414 	movx	@r0,a
   162B 78 77         [12] 1415 	mov	r0,#_constrain_PARM_3
   162D 74 32         [12] 1416 	mov	a,#0x32
   162F F2            [24] 1417 	movx	@r0,a
   1630 08            [12] 1418 	inc	r0
   1631 E4            [12] 1419 	clr	a
   1632 F2            [24] 1420 	movx	@r0,a
   1633 08            [12] 1421 	inc	r0
   1634 F2            [24] 1422 	movx	@r0,a
   1635 08            [12] 1423 	inc	r0
   1636 F2            [24] 1424 	movx	@r0,a
   1637 8C 82         [24] 1425 	mov	dpl,r4
   1639 8D 83         [24] 1426 	mov	dph,r5
   163B 8E F0         [24] 1427 	mov	b,r6
   163D EF            [12] 1428 	mov	a,r7
   163E 12 2B 9B      [24] 1429 	lcall	_constrain
   1641 AC 82         [24] 1430 	mov	r4,dpl
   1643 AD 83         [24] 1431 	mov	r5,dph
   1645 AE F0         [24] 1432 	mov	r6,b
   1647 FF            [12] 1433 	mov	r7,a
   1648 78 1C         [12] 1434 	mov	r0,#_num_fh_channels
   164A EC            [12] 1435 	mov	a,r4
   164B F2            [24] 1436 	movx	@r0,a
                           1437 ;	radio/main.c:300: switch (g_board_frequency) {
   164C 78 36         [12] 1438 	mov	r0,#_g_board_frequency
   164E E2            [24] 1439 	movx	a,@r0
   164F B4 43 02      [24] 1440 	cjne	a,#0x43,00201$
   1652 80 1E         [24] 1441 	sjmp	00117$
   1654                    1442 00201$:
   1654 78 36         [12] 1443 	mov	r0,#_g_board_frequency
   1656 E2            [24] 1444 	movx	a,@r0
   1657 B4 47 03      [24] 1445 	cjne	a,#0x47,00202$
   165A 02 17 01      [24] 1446 	ljmp	00118$
   165D                    1447 00202$:
   165D 78 36         [12] 1448 	mov	r0,#_g_board_frequency
   165F E2            [24] 1449 	movx	a,@r0
   1660 B4 86 03      [24] 1450 	cjne	a,#0x86,00203$
   1663 02 17 92      [24] 1451 	ljmp	00119$
   1666                    1452 00203$:
   1666 78 36         [12] 1453 	mov	r0,#_g_board_frequency
   1668 E2            [24] 1454 	movx	a,@r0
   1669 B4 91 03      [24] 1455 	cjne	a,#0x91,00204$
   166C 02 18 23      [24] 1456 	ljmp	00120$
   166F                    1457 00204$:
   166F 02 18 B1      [24] 1458 	ljmp	00121$
                           1459 ;	radio/main.c:301: case FREQ_433:
   1672                    1460 00117$:
                           1461 ;	radio/main.c:302: freq_min = constrain(freq_min, 414000000UL, 460000000UL);
   1672 78 73         [12] 1462 	mov	r0,#_constrain_PARM_2
   1674 74 80         [12] 1463 	mov	a,#0x80
   1676 F2            [24] 1464 	movx	@r0,a
   1677 08            [12] 1465 	inc	r0
   1678 74 23         [12] 1466 	mov	a,#0x23
   167A F2            [24] 1467 	movx	@r0,a
   167B 08            [12] 1468 	inc	r0
   167C 74 AD         [12] 1469 	mov	a,#0xAD
   167E F2            [24] 1470 	movx	@r0,a
   167F 08            [12] 1471 	inc	r0
   1680 74 18         [12] 1472 	mov	a,#0x18
   1682 F2            [24] 1473 	movx	@r0,a
   1683 78 77         [12] 1474 	mov	r0,#_constrain_PARM_3
   1685 E4            [12] 1475 	clr	a
   1686 F2            [24] 1476 	movx	@r0,a
   1687 08            [12] 1477 	inc	r0
   1688 74 0B         [12] 1478 	mov	a,#0x0B
   168A F2            [24] 1479 	movx	@r0,a
   168B 08            [12] 1480 	inc	r0
   168C 74 6B         [12] 1481 	mov	a,#0x6B
   168E F2            [24] 1482 	movx	@r0,a
   168F 08            [12] 1483 	inc	r0
   1690 74 1B         [12] 1484 	mov	a,#0x1B
   1692 F2            [24] 1485 	movx	@r0,a
   1693 78 4C         [12] 1486 	mov	r0,#_radio_init_freq_min_1_153
   1695 E2            [24] 1487 	movx	a,@r0
   1696 F5 82         [12] 1488 	mov	dpl,a
   1698 08            [12] 1489 	inc	r0
   1699 E2            [24] 1490 	movx	a,@r0
   169A F5 83         [12] 1491 	mov	dph,a
   169C 08            [12] 1492 	inc	r0
   169D E2            [24] 1493 	movx	a,@r0
   169E F5 F0         [12] 1494 	mov	b,a
   16A0 08            [12] 1495 	inc	r0
   16A1 E2            [24] 1496 	movx	a,@r0
   16A2 12 2B 9B      [24] 1497 	lcall	_constrain
   16A5 78 4C         [12] 1498 	mov	r0,#_radio_init_freq_min_1_153
   16A7 C0 E0         [24] 1499 	push	acc
   16A9 E5 82         [12] 1500 	mov	a,dpl
   16AB F2            [24] 1501 	movx	@r0,a
   16AC 08            [12] 1502 	inc	r0
   16AD E5 83         [12] 1503 	mov	a,dph
   16AF F2            [24] 1504 	movx	@r0,a
   16B0 08            [12] 1505 	inc	r0
   16B1 E5 F0         [12] 1506 	mov	a,b
   16B3 F2            [24] 1507 	movx	@r0,a
   16B4 D0 E0         [24] 1508 	pop	acc
   16B6 08            [12] 1509 	inc	r0
   16B7 F2            [24] 1510 	movx	@r0,a
                           1511 ;	radio/main.c:303: freq_max = constrain(freq_max, 414000000UL, 460000000UL);
   16B8 78 73         [12] 1512 	mov	r0,#_constrain_PARM_2
   16BA 74 80         [12] 1513 	mov	a,#0x80
   16BC F2            [24] 1514 	movx	@r0,a
   16BD 08            [12] 1515 	inc	r0
   16BE 74 23         [12] 1516 	mov	a,#0x23
   16C0 F2            [24] 1517 	movx	@r0,a
   16C1 08            [12] 1518 	inc	r0
   16C2 74 AD         [12] 1519 	mov	a,#0xAD
   16C4 F2            [24] 1520 	movx	@r0,a
   16C5 08            [12] 1521 	inc	r0
   16C6 74 18         [12] 1522 	mov	a,#0x18
   16C8 F2            [24] 1523 	movx	@r0,a
   16C9 78 77         [12] 1524 	mov	r0,#_constrain_PARM_3
   16CB E4            [12] 1525 	clr	a
   16CC F2            [24] 1526 	movx	@r0,a
   16CD 08            [12] 1527 	inc	r0
   16CE 74 0B         [12] 1528 	mov	a,#0x0B
   16D0 F2            [24] 1529 	movx	@r0,a
   16D1 08            [12] 1530 	inc	r0
   16D2 74 6B         [12] 1531 	mov	a,#0x6B
   16D4 F2            [24] 1532 	movx	@r0,a
   16D5 08            [12] 1533 	inc	r0
   16D6 74 1B         [12] 1534 	mov	a,#0x1B
   16D8 F2            [24] 1535 	movx	@r0,a
   16D9 78 50         [12] 1536 	mov	r0,#_radio_init_freq_max_1_153
   16DB E2            [24] 1537 	movx	a,@r0
   16DC F5 82         [12] 1538 	mov	dpl,a
   16DE 08            [12] 1539 	inc	r0
   16DF E2            [24] 1540 	movx	a,@r0
   16E0 F5 83         [12] 1541 	mov	dph,a
   16E2 08            [12] 1542 	inc	r0
   16E3 E2            [24] 1543 	movx	a,@r0
   16E4 F5 F0         [12] 1544 	mov	b,a
   16E6 08            [12] 1545 	inc	r0
   16E7 E2            [24] 1546 	movx	a,@r0
   16E8 12 2B 9B      [24] 1547 	lcall	_constrain
   16EB 78 50         [12] 1548 	mov	r0,#_radio_init_freq_max_1_153
   16ED C0 E0         [24] 1549 	push	acc
   16EF E5 82         [12] 1550 	mov	a,dpl
   16F1 F2            [24] 1551 	movx	@r0,a
   16F2 08            [12] 1552 	inc	r0
   16F3 E5 83         [12] 1553 	mov	a,dph
   16F5 F2            [24] 1554 	movx	@r0,a
   16F6 08            [12] 1555 	inc	r0
   16F7 E5 F0         [12] 1556 	mov	a,b
   16F9 F2            [24] 1557 	movx	@r0,a
   16FA D0 E0         [24] 1558 	pop	acc
   16FC 08            [12] 1559 	inc	r0
   16FD F2            [24] 1560 	movx	@r0,a
                           1561 ;	radio/main.c:304: break;
   16FE 02 18 D0      [24] 1562 	ljmp	00122$
                           1563 ;	radio/main.c:305: case FREQ_470:
   1701                    1564 00118$:
                           1565 ;	radio/main.c:306: freq_min = constrain(freq_min, 450000000UL, 490000000UL);
   1701 78 73         [12] 1566 	mov	r0,#_constrain_PARM_2
   1703 74 80         [12] 1567 	mov	a,#0x80
   1705 F2            [24] 1568 	movx	@r0,a
   1706 08            [12] 1569 	inc	r0
   1707 74 74         [12] 1570 	mov	a,#0x74
   1709 F2            [24] 1571 	movx	@r0,a
   170A 08            [12] 1572 	inc	r0
   170B 74 D2         [12] 1573 	mov	a,#0xD2
   170D F2            [24] 1574 	movx	@r0,a
   170E 08            [12] 1575 	inc	r0
   170F 74 1A         [12] 1576 	mov	a,#0x1A
   1711 F2            [24] 1577 	movx	@r0,a
   1712 78 77         [12] 1578 	mov	r0,#_constrain_PARM_3
   1714 74 80         [12] 1579 	mov	a,#0x80
   1716 F2            [24] 1580 	movx	@r0,a
   1717 08            [12] 1581 	inc	r0
   1718 74 CE         [12] 1582 	mov	a,#0xCE
   171A F2            [24] 1583 	movx	@r0,a
   171B 08            [12] 1584 	inc	r0
   171C 74 34         [12] 1585 	mov	a,#0x34
   171E F2            [24] 1586 	movx	@r0,a
   171F 08            [12] 1587 	inc	r0
   1720 74 1D         [12] 1588 	mov	a,#0x1D
   1722 F2            [24] 1589 	movx	@r0,a
   1723 78 4C         [12] 1590 	mov	r0,#_radio_init_freq_min_1_153
   1725 E2            [24] 1591 	movx	a,@r0
   1726 F5 82         [12] 1592 	mov	dpl,a
   1728 08            [12] 1593 	inc	r0
   1729 E2            [24] 1594 	movx	a,@r0
   172A F5 83         [12] 1595 	mov	dph,a
   172C 08            [12] 1596 	inc	r0
   172D E2            [24] 1597 	movx	a,@r0
   172E F5 F0         [12] 1598 	mov	b,a
   1730 08            [12] 1599 	inc	r0
   1731 E2            [24] 1600 	movx	a,@r0
   1732 12 2B 9B      [24] 1601 	lcall	_constrain
   1735 78 4C         [12] 1602 	mov	r0,#_radio_init_freq_min_1_153
   1737 C0 E0         [24] 1603 	push	acc
   1739 E5 82         [12] 1604 	mov	a,dpl
   173B F2            [24] 1605 	movx	@r0,a
   173C 08            [12] 1606 	inc	r0
   173D E5 83         [12] 1607 	mov	a,dph
   173F F2            [24] 1608 	movx	@r0,a
   1740 08            [12] 1609 	inc	r0
   1741 E5 F0         [12] 1610 	mov	a,b
   1743 F2            [24] 1611 	movx	@r0,a
   1744 D0 E0         [24] 1612 	pop	acc
   1746 08            [12] 1613 	inc	r0
   1747 F2            [24] 1614 	movx	@r0,a
                           1615 ;	radio/main.c:307: freq_max = constrain(freq_max, 450000000UL, 490000000UL);
   1748 78 73         [12] 1616 	mov	r0,#_constrain_PARM_2
   174A 74 80         [12] 1617 	mov	a,#0x80
   174C F2            [24] 1618 	movx	@r0,a
   174D 08            [12] 1619 	inc	r0
   174E 74 74         [12] 1620 	mov	a,#0x74
   1750 F2            [24] 1621 	movx	@r0,a
   1751 08            [12] 1622 	inc	r0
   1752 74 D2         [12] 1623 	mov	a,#0xD2
   1754 F2            [24] 1624 	movx	@r0,a
   1755 08            [12] 1625 	inc	r0
   1756 74 1A         [12] 1626 	mov	a,#0x1A
   1758 F2            [24] 1627 	movx	@r0,a
   1759 78 77         [12] 1628 	mov	r0,#_constrain_PARM_3
   175B 74 80         [12] 1629 	mov	a,#0x80
   175D F2            [24] 1630 	movx	@r0,a
   175E 08            [12] 1631 	inc	r0
   175F 74 CE         [12] 1632 	mov	a,#0xCE
   1761 F2            [24] 1633 	movx	@r0,a
   1762 08            [12] 1634 	inc	r0
   1763 74 34         [12] 1635 	mov	a,#0x34
   1765 F2            [24] 1636 	movx	@r0,a
   1766 08            [12] 1637 	inc	r0
   1767 74 1D         [12] 1638 	mov	a,#0x1D
   1769 F2            [24] 1639 	movx	@r0,a
   176A 78 50         [12] 1640 	mov	r0,#_radio_init_freq_max_1_153
   176C E2            [24] 1641 	movx	a,@r0
   176D F5 82         [12] 1642 	mov	dpl,a
   176F 08            [12] 1643 	inc	r0
   1770 E2            [24] 1644 	movx	a,@r0
   1771 F5 83         [12] 1645 	mov	dph,a
   1773 08            [12] 1646 	inc	r0
   1774 E2            [24] 1647 	movx	a,@r0
   1775 F5 F0         [12] 1648 	mov	b,a
   1777 08            [12] 1649 	inc	r0
   1778 E2            [24] 1650 	movx	a,@r0
   1779 12 2B 9B      [24] 1651 	lcall	_constrain
   177C 78 50         [12] 1652 	mov	r0,#_radio_init_freq_max_1_153
   177E C0 E0         [24] 1653 	push	acc
   1780 E5 82         [12] 1654 	mov	a,dpl
   1782 F2            [24] 1655 	movx	@r0,a
   1783 08            [12] 1656 	inc	r0
   1784 E5 83         [12] 1657 	mov	a,dph
   1786 F2            [24] 1658 	movx	@r0,a
   1787 08            [12] 1659 	inc	r0
   1788 E5 F0         [12] 1660 	mov	a,b
   178A F2            [24] 1661 	movx	@r0,a
   178B D0 E0         [24] 1662 	pop	acc
   178D 08            [12] 1663 	inc	r0
   178E F2            [24] 1664 	movx	@r0,a
                           1665 ;	radio/main.c:308: break;
   178F 02 18 D0      [24] 1666 	ljmp	00122$
                           1667 ;	radio/main.c:309: case FREQ_868:
   1792                    1668 00119$:
                           1669 ;	radio/main.c:310: freq_min = constrain(freq_min, 849000000UL, 889000000UL);
   1792 78 73         [12] 1670 	mov	r0,#_constrain_PARM_2
   1794 74 40         [12] 1671 	mov	a,#0x40
   1796 F2            [24] 1672 	movx	@r0,a
   1797 08            [12] 1673 	inc	r0
   1798 74 B6         [12] 1674 	mov	a,#0xB6
   179A F2            [24] 1675 	movx	@r0,a
   179B 08            [12] 1676 	inc	r0
   179C 74 9A         [12] 1677 	mov	a,#0x9A
   179E F2            [24] 1678 	movx	@r0,a
   179F 08            [12] 1679 	inc	r0
   17A0 74 32         [12] 1680 	mov	a,#0x32
   17A2 F2            [24] 1681 	movx	@r0,a
   17A3 78 77         [12] 1682 	mov	r0,#_constrain_PARM_3
   17A5 74 40         [12] 1683 	mov	a,#0x40
   17A7 F2            [24] 1684 	movx	@r0,a
   17A8 08            [12] 1685 	inc	r0
   17A9 74 10         [12] 1686 	mov	a,#0x10
   17AB F2            [24] 1687 	movx	@r0,a
   17AC 08            [12] 1688 	inc	r0
   17AD 74 FD         [12] 1689 	mov	a,#0xFD
   17AF F2            [24] 1690 	movx	@r0,a
   17B0 08            [12] 1691 	inc	r0
   17B1 74 34         [12] 1692 	mov	a,#0x34
   17B3 F2            [24] 1693 	movx	@r0,a
   17B4 78 4C         [12] 1694 	mov	r0,#_radio_init_freq_min_1_153
   17B6 E2            [24] 1695 	movx	a,@r0
   17B7 F5 82         [12] 1696 	mov	dpl,a
   17B9 08            [12] 1697 	inc	r0
   17BA E2            [24] 1698 	movx	a,@r0
   17BB F5 83         [12] 1699 	mov	dph,a
   17BD 08            [12] 1700 	inc	r0
   17BE E2            [24] 1701 	movx	a,@r0
   17BF F5 F0         [12] 1702 	mov	b,a
   17C1 08            [12] 1703 	inc	r0
   17C2 E2            [24] 1704 	movx	a,@r0
   17C3 12 2B 9B      [24] 1705 	lcall	_constrain
   17C6 78 4C         [12] 1706 	mov	r0,#_radio_init_freq_min_1_153
   17C8 C0 E0         [24] 1707 	push	acc
   17CA E5 82         [12] 1708 	mov	a,dpl
   17CC F2            [24] 1709 	movx	@r0,a
   17CD 08            [12] 1710 	inc	r0
   17CE E5 83         [12] 1711 	mov	a,dph
   17D0 F2            [24] 1712 	movx	@r0,a
   17D1 08            [12] 1713 	inc	r0
   17D2 E5 F0         [12] 1714 	mov	a,b
   17D4 F2            [24] 1715 	movx	@r0,a
   17D5 D0 E0         [24] 1716 	pop	acc
   17D7 08            [12] 1717 	inc	r0
   17D8 F2            [24] 1718 	movx	@r0,a
                           1719 ;	radio/main.c:311: freq_max = constrain(freq_max, 849000000UL, 889000000UL);
   17D9 78 73         [12] 1720 	mov	r0,#_constrain_PARM_2
   17DB 74 40         [12] 1721 	mov	a,#0x40
   17DD F2            [24] 1722 	movx	@r0,a
   17DE 08            [12] 1723 	inc	r0
   17DF 74 B6         [12] 1724 	mov	a,#0xB6
   17E1 F2            [24] 1725 	movx	@r0,a
   17E2 08            [12] 1726 	inc	r0
   17E3 74 9A         [12] 1727 	mov	a,#0x9A
   17E5 F2            [24] 1728 	movx	@r0,a
   17E6 08            [12] 1729 	inc	r0
   17E7 74 32         [12] 1730 	mov	a,#0x32
   17E9 F2            [24] 1731 	movx	@r0,a
   17EA 78 77         [12] 1732 	mov	r0,#_constrain_PARM_3
   17EC 74 40         [12] 1733 	mov	a,#0x40
   17EE F2            [24] 1734 	movx	@r0,a
   17EF 08            [12] 1735 	inc	r0
   17F0 74 10         [12] 1736 	mov	a,#0x10
   17F2 F2            [24] 1737 	movx	@r0,a
   17F3 08            [12] 1738 	inc	r0
   17F4 74 FD         [12] 1739 	mov	a,#0xFD
   17F6 F2            [24] 1740 	movx	@r0,a
   17F7 08            [12] 1741 	inc	r0
   17F8 74 34         [12] 1742 	mov	a,#0x34
   17FA F2            [24] 1743 	movx	@r0,a
   17FB 78 50         [12] 1744 	mov	r0,#_radio_init_freq_max_1_153
   17FD E2            [24] 1745 	movx	a,@r0
   17FE F5 82         [12] 1746 	mov	dpl,a
   1800 08            [12] 1747 	inc	r0
   1801 E2            [24] 1748 	movx	a,@r0
   1802 F5 83         [12] 1749 	mov	dph,a
   1804 08            [12] 1750 	inc	r0
   1805 E2            [24] 1751 	movx	a,@r0
   1806 F5 F0         [12] 1752 	mov	b,a
   1808 08            [12] 1753 	inc	r0
   1809 E2            [24] 1754 	movx	a,@r0
   180A 12 2B 9B      [24] 1755 	lcall	_constrain
   180D 78 50         [12] 1756 	mov	r0,#_radio_init_freq_max_1_153
   180F C0 E0         [24] 1757 	push	acc
   1811 E5 82         [12] 1758 	mov	a,dpl
   1813 F2            [24] 1759 	movx	@r0,a
   1814 08            [12] 1760 	inc	r0
   1815 E5 83         [12] 1761 	mov	a,dph
   1817 F2            [24] 1762 	movx	@r0,a
   1818 08            [12] 1763 	inc	r0
   1819 E5 F0         [12] 1764 	mov	a,b
   181B F2            [24] 1765 	movx	@r0,a
   181C D0 E0         [24] 1766 	pop	acc
   181E 08            [12] 1767 	inc	r0
   181F F2            [24] 1768 	movx	@r0,a
                           1769 ;	radio/main.c:312: break;
   1820 02 18 D0      [24] 1770 	ljmp	00122$
                           1771 ;	radio/main.c:313: case FREQ_915:
   1823                    1772 00120$:
                           1773 ;	radio/main.c:314: freq_min = constrain(freq_min, 868000000UL, 935000000UL);
   1823 78 73         [12] 1774 	mov	r0,#_constrain_PARM_2
   1825 E4            [12] 1775 	clr	a
   1826 F2            [24] 1776 	movx	@r0,a
   1827 08            [12] 1777 	inc	r0
   1828 74 A1         [12] 1778 	mov	a,#0xA1
   182A F2            [24] 1779 	movx	@r0,a
   182B 08            [12] 1780 	inc	r0
   182C 74 BC         [12] 1781 	mov	a,#0xBC
   182E F2            [24] 1782 	movx	@r0,a
   182F 08            [12] 1783 	inc	r0
   1830 74 33         [12] 1784 	mov	a,#0x33
   1832 F2            [24] 1785 	movx	@r0,a
   1833 78 77         [12] 1786 	mov	r0,#_constrain_PARM_3
   1835 74 C0         [12] 1787 	mov	a,#0xC0
   1837 F2            [24] 1788 	movx	@r0,a
   1838 08            [12] 1789 	inc	r0
   1839 74 F7         [12] 1790 	mov	a,#0xF7
   183B F2            [24] 1791 	movx	@r0,a
   183C 08            [12] 1792 	inc	r0
   183D 74 BA         [12] 1793 	mov	a,#0xBA
   183F F2            [24] 1794 	movx	@r0,a
   1840 08            [12] 1795 	inc	r0
   1841 74 37         [12] 1796 	mov	a,#0x37
   1843 F2            [24] 1797 	movx	@r0,a
   1844 78 4C         [12] 1798 	mov	r0,#_radio_init_freq_min_1_153
   1846 E2            [24] 1799 	movx	a,@r0
   1847 F5 82         [12] 1800 	mov	dpl,a
   1849 08            [12] 1801 	inc	r0
   184A E2            [24] 1802 	movx	a,@r0
   184B F5 83         [12] 1803 	mov	dph,a
   184D 08            [12] 1804 	inc	r0
   184E E2            [24] 1805 	movx	a,@r0
   184F F5 F0         [12] 1806 	mov	b,a
   1851 08            [12] 1807 	inc	r0
   1852 E2            [24] 1808 	movx	a,@r0
   1853 12 2B 9B      [24] 1809 	lcall	_constrain
   1856 78 4C         [12] 1810 	mov	r0,#_radio_init_freq_min_1_153
   1858 C0 E0         [24] 1811 	push	acc
   185A E5 82         [12] 1812 	mov	a,dpl
   185C F2            [24] 1813 	movx	@r0,a
   185D 08            [12] 1814 	inc	r0
   185E E5 83         [12] 1815 	mov	a,dph
   1860 F2            [24] 1816 	movx	@r0,a
   1861 08            [12] 1817 	inc	r0
   1862 E5 F0         [12] 1818 	mov	a,b
   1864 F2            [24] 1819 	movx	@r0,a
   1865 D0 E0         [24] 1820 	pop	acc
   1867 08            [12] 1821 	inc	r0
   1868 F2            [24] 1822 	movx	@r0,a
                           1823 ;	radio/main.c:315: freq_max = constrain(freq_max, 868000000UL, 935000000UL);
   1869 78 73         [12] 1824 	mov	r0,#_constrain_PARM_2
   186B E4            [12] 1825 	clr	a
   186C F2            [24] 1826 	movx	@r0,a
   186D 08            [12] 1827 	inc	r0
   186E 74 A1         [12] 1828 	mov	a,#0xA1
   1870 F2            [24] 1829 	movx	@r0,a
   1871 08            [12] 1830 	inc	r0
   1872 74 BC         [12] 1831 	mov	a,#0xBC
   1874 F2            [24] 1832 	movx	@r0,a
   1875 08            [12] 1833 	inc	r0
   1876 74 33         [12] 1834 	mov	a,#0x33
   1878 F2            [24] 1835 	movx	@r0,a
   1879 78 77         [12] 1836 	mov	r0,#_constrain_PARM_3
   187B 74 C0         [12] 1837 	mov	a,#0xC0
   187D F2            [24] 1838 	movx	@r0,a
   187E 08            [12] 1839 	inc	r0
   187F 74 F7         [12] 1840 	mov	a,#0xF7
   1881 F2            [24] 1841 	movx	@r0,a
   1882 08            [12] 1842 	inc	r0
   1883 74 BA         [12] 1843 	mov	a,#0xBA
   1885 F2            [24] 1844 	movx	@r0,a
   1886 08            [12] 1845 	inc	r0
   1887 74 37         [12] 1846 	mov	a,#0x37
   1889 F2            [24] 1847 	movx	@r0,a
   188A 78 50         [12] 1848 	mov	r0,#_radio_init_freq_max_1_153
   188C E2            [24] 1849 	movx	a,@r0
   188D F5 82         [12] 1850 	mov	dpl,a
   188F 08            [12] 1851 	inc	r0
   1890 E2            [24] 1852 	movx	a,@r0
   1891 F5 83         [12] 1853 	mov	dph,a
   1893 08            [12] 1854 	inc	r0
   1894 E2            [24] 1855 	movx	a,@r0
   1895 F5 F0         [12] 1856 	mov	b,a
   1897 08            [12] 1857 	inc	r0
   1898 E2            [24] 1858 	movx	a,@r0
   1899 12 2B 9B      [24] 1859 	lcall	_constrain
   189C 78 50         [12] 1860 	mov	r0,#_radio_init_freq_max_1_153
   189E C0 E0         [24] 1861 	push	acc
   18A0 E5 82         [12] 1862 	mov	a,dpl
   18A2 F2            [24] 1863 	movx	@r0,a
   18A3 08            [12] 1864 	inc	r0
   18A4 E5 83         [12] 1865 	mov	a,dph
   18A6 F2            [24] 1866 	movx	@r0,a
   18A7 08            [12] 1867 	inc	r0
   18A8 E5 F0         [12] 1868 	mov	a,b
   18AA F2            [24] 1869 	movx	@r0,a
   18AB D0 E0         [24] 1870 	pop	acc
   18AD 08            [12] 1871 	inc	r0
   18AE F2            [24] 1872 	movx	@r0,a
                           1873 ;	radio/main.c:316: break;
                           1874 ;	radio/main.c:317: default:
   18AF 80 1F         [24] 1875 	sjmp	00122$
   18B1                    1876 00121$:
                           1877 ;	radio/main.c:318: panic("bad board frequency %d", g_board_frequency);
   18B1 78 36         [12] 1878 	mov	r0,#_g_board_frequency
   18B3 E2            [24] 1879 	movx	a,@r0
   18B4 FE            [12] 1880 	mov	r6,a
   18B5 7F 00         [12] 1881 	mov	r7,#0x00
   18B7 C0 06         [24] 1882 	push	ar6
   18B9 C0 07         [24] 1883 	push	ar7
   18BB 74 FC         [12] 1884 	mov	a,#__str_4
   18BD C0 E0         [24] 1885 	push	acc
   18BF 74 CA         [12] 1886 	mov	a,#(__str_4 >> 8)
   18C1 C0 E0         [24] 1887 	push	acc
   18C3 74 80         [12] 1888 	mov	a,#0x80
   18C5 C0 E0         [24] 1889 	push	acc
   18C7 12 13 04      [24] 1890 	lcall	_panic
   18CA E5 81         [12] 1891 	mov	a,sp
   18CC 24 FB         [12] 1892 	add	a,#0xfb
   18CE F5 81         [12] 1893 	mov	sp,a
                           1894 ;	radio/main.c:320: }
   18D0                    1895 00122$:
                           1896 ;	radio/main.c:322: if (freq_max == freq_min) {
   18D0 78 50         [12] 1897 	mov	r0,#_radio_init_freq_max_1_153
   18D2 79 4C         [12] 1898 	mov	r1,#_radio_init_freq_min_1_153
   18D4 E2            [24] 1899 	movx	a,@r0
   18D5 F5 F0         [12] 1900 	mov	b,a
   18D7 E3            [24] 1901 	movx	a,@r1
   18D8 B5 F0 1D      [24] 1902 	cjne	a,b,00205$
   18DB 08            [12] 1903 	inc	r0
   18DC E2            [24] 1904 	movx	a,@r0
   18DD F5 F0         [12] 1905 	mov	b,a
   18DF 09            [12] 1906 	inc	r1
   18E0 E3            [24] 1907 	movx	a,@r1
   18E1 B5 F0 14      [24] 1908 	cjne	a,b,00205$
   18E4 08            [12] 1909 	inc	r0
   18E5 E2            [24] 1910 	movx	a,@r0
   18E6 F5 F0         [12] 1911 	mov	b,a
   18E8 09            [12] 1912 	inc	r1
   18E9 E3            [24] 1913 	movx	a,@r1
   18EA B5 F0 0B      [24] 1914 	cjne	a,b,00205$
   18ED 08            [12] 1915 	inc	r0
   18EE E2            [24] 1916 	movx	a,@r0
   18EF F5 F0         [12] 1917 	mov	b,a
   18F1 09            [12] 1918 	inc	r1
   18F2 E3            [24] 1919 	movx	a,@r1
   18F3 B5 F0 02      [24] 1920 	cjne	a,b,00205$
   18F6 80 02         [24] 1921 	sjmp	00206$
   18F8                    1922 00205$:
   18F8 80 1A         [24] 1923 	sjmp	00124$
   18FA                    1924 00206$:
                           1925 ;	radio/main.c:323: freq_max = freq_min + 1000000UL;
   18FA 78 4C         [12] 1926 	mov	r0,#_radio_init_freq_min_1_153
   18FC 79 50         [12] 1927 	mov	r1,#_radio_init_freq_max_1_153
   18FE E2            [24] 1928 	movx	a,@r0
   18FF 24 40         [12] 1929 	add	a,#0x40
   1901 F3            [24] 1930 	movx	@r1,a
   1902 08            [12] 1931 	inc	r0
   1903 E2            [24] 1932 	movx	a,@r0
   1904 34 42         [12] 1933 	addc	a,#0x42
   1906 09            [12] 1934 	inc	r1
   1907 F3            [24] 1935 	movx	@r1,a
   1908 08            [12] 1936 	inc	r0
   1909 E2            [24] 1937 	movx	a,@r0
   190A 34 0F         [12] 1938 	addc	a,#0x0F
   190C 09            [12] 1939 	inc	r1
   190D F3            [24] 1940 	movx	@r1,a
   190E 08            [12] 1941 	inc	r0
   190F E2            [24] 1942 	movx	a,@r0
   1910 34 00         [12] 1943 	addc	a,#0x00
   1912 09            [12] 1944 	inc	r1
   1913 F3            [24] 1945 	movx	@r1,a
   1914                    1946 00124$:
                           1947 ;	radio/main.c:327: duty_cycle = param_get(PARAM_DUTY_CYCLE);
   1914 75 82 0B      [24] 1948 	mov	dpl,#0x0B
   1917 12 28 8D      [24] 1949 	lcall	_param_get
   191A AC 82         [24] 1950 	mov	r4,dpl
   191C 78 C8         [12] 1951 	mov	r0,#_duty_cycle
   191E EC            [12] 1952 	mov	a,r4
   191F F2            [24] 1953 	movx	@r0,a
                           1954 ;	radio/main.c:328: duty_cycle = constrain(duty_cycle, 0, 100);
   1920 7F 00         [12] 1955 	mov	r7,#0x00
   1922 7E 00         [12] 1956 	mov	r6,#0x00
   1924 7D 00         [12] 1957 	mov	r5,#0x00
   1926 78 73         [12] 1958 	mov	r0,#_constrain_PARM_2
   1928 E4            [12] 1959 	clr	a
   1929 F2            [24] 1960 	movx	@r0,a
   192A 08            [12] 1961 	inc	r0
   192B F2            [24] 1962 	movx	@r0,a
   192C 08            [12] 1963 	inc	r0
   192D F2            [24] 1964 	movx	@r0,a
   192E 08            [12] 1965 	inc	r0
   192F F2            [24] 1966 	movx	@r0,a
   1930 78 77         [12] 1967 	mov	r0,#_constrain_PARM_3
   1932 74 64         [12] 1968 	mov	a,#0x64
   1934 F2            [24] 1969 	movx	@r0,a
   1935 08            [12] 1970 	inc	r0
   1936 E4            [12] 1971 	clr	a
   1937 F2            [24] 1972 	movx	@r0,a
   1938 08            [12] 1973 	inc	r0
   1939 F2            [24] 1974 	movx	@r0,a
   193A 08            [12] 1975 	inc	r0
   193B F2            [24] 1976 	movx	@r0,a
   193C 8C 82         [24] 1977 	mov	dpl,r4
   193E 8F 83         [24] 1978 	mov	dph,r7
   1940 8E F0         [24] 1979 	mov	b,r6
   1942 ED            [12] 1980 	mov	a,r5
   1943 12 2B 9B      [24] 1981 	lcall	_constrain
   1946 AC 82         [24] 1982 	mov	r4,dpl
   1948 78 C8         [12] 1983 	mov	r0,#_duty_cycle
   194A EC            [12] 1984 	mov	a,r4
   194B F2            [24] 1985 	movx	@r0,a
                           1986 ;	radio/main.c:329: param_set(PARAM_DUTY_CYCLE, duty_cycle);
   194C 78 6D         [12] 1987 	mov	r0,#_param_set_PARM_2
   194E EC            [12] 1988 	mov	a,r4
   194F F2            [24] 1989 	movx	@r0,a
   1950 08            [12] 1990 	inc	r0
   1951 E4            [12] 1991 	clr	a
   1952 F2            [24] 1992 	movx	@r0,a
   1953 08            [12] 1993 	inc	r0
   1954 F2            [24] 1994 	movx	@r0,a
   1955 08            [12] 1995 	inc	r0
   1956 F2            [24] 1996 	movx	@r0,a
   1957 75 82 0B      [24] 1997 	mov	dpl,#0x0B
   195A 12 26 EA      [24] 1998 	lcall	_param_set
                           1999 ;	radio/main.c:332: lbt_rssi = param_get(PARAM_LBT_RSSI);
   195D 75 82 0C      [24] 2000 	mov	dpl,#0x0C
   1960 12 28 8D      [24] 2001 	lcall	_param_get
   1963 AC 82         [24] 2002 	mov	r4,dpl
   1965 AD 83         [24] 2003 	mov	r5,dph
   1967 AE F0         [24] 2004 	mov	r6,b
   1969 FF            [12] 2005 	mov	r7,a
   196A 78 CC         [12] 2006 	mov	r0,#_lbt_rssi
   196C EC            [12] 2007 	mov	a,r4
   196D F2            [24] 2008 	movx	@r0,a
                           2009 ;	radio/main.c:333: if (lbt_rssi != 0) {
   196E EC            [12] 2010 	mov	a,r4
   196F 60 33         [24] 2011 	jz	00126$
                           2012 ;	radio/main.c:335: lbt_rssi = constrain(lbt_rssi, 25, 220);
   1971 7F 00         [12] 2013 	mov	r7,#0x00
   1973 7E 00         [12] 2014 	mov	r6,#0x00
   1975 7D 00         [12] 2015 	mov	r5,#0x00
   1977 78 73         [12] 2016 	mov	r0,#_constrain_PARM_2
   1979 74 19         [12] 2017 	mov	a,#0x19
   197B F2            [24] 2018 	movx	@r0,a
   197C 08            [12] 2019 	inc	r0
   197D E4            [12] 2020 	clr	a
   197E F2            [24] 2021 	movx	@r0,a
   197F 08            [12] 2022 	inc	r0
   1980 F2            [24] 2023 	movx	@r0,a
   1981 08            [12] 2024 	inc	r0
   1982 F2            [24] 2025 	movx	@r0,a
   1983 78 77         [12] 2026 	mov	r0,#_constrain_PARM_3
   1985 74 DC         [12] 2027 	mov	a,#0xDC
   1987 F2            [24] 2028 	movx	@r0,a
   1988 08            [12] 2029 	inc	r0
   1989 E4            [12] 2030 	clr	a
   198A F2            [24] 2031 	movx	@r0,a
   198B 08            [12] 2032 	inc	r0
   198C F2            [24] 2033 	movx	@r0,a
   198D 08            [12] 2034 	inc	r0
   198E F2            [24] 2035 	movx	@r0,a
   198F 8C 82         [24] 2036 	mov	dpl,r4
   1991 8F 83         [24] 2037 	mov	dph,r7
   1993 8E F0         [24] 2038 	mov	b,r6
   1995 ED            [12] 2039 	mov	a,r5
   1996 12 2B 9B      [24] 2040 	lcall	_constrain
   1999 AC 82         [24] 2041 	mov	r4,dpl
   199B AD 83         [24] 2042 	mov	r5,dph
   199D AE F0         [24] 2043 	mov	r6,b
   199F FF            [12] 2044 	mov	r7,a
   19A0 78 CC         [12] 2045 	mov	r0,#_lbt_rssi
   19A2 EC            [12] 2046 	mov	a,r4
   19A3 F2            [24] 2047 	movx	@r0,a
   19A4                    2048 00126$:
                           2049 ;	radio/main.c:337: param_set(PARAM_LBT_RSSI, lbt_rssi);
   19A4 78 CC         [12] 2050 	mov	r0,#_lbt_rssi
   19A6 79 6D         [12] 2051 	mov	r1,#_param_set_PARM_2
   19A8 E2            [24] 2052 	movx	a,@r0
   19A9 F3            [24] 2053 	movx	@r1,a
   19AA 09            [12] 2054 	inc	r1
   19AB E4            [12] 2055 	clr	a
   19AC F3            [24] 2056 	movx	@r1,a
   19AD 09            [12] 2057 	inc	r1
   19AE F3            [24] 2058 	movx	@r1,a
   19AF 09            [12] 2059 	inc	r1
   19B0 F3            [24] 2060 	movx	@r1,a
   19B1 75 82 0C      [24] 2061 	mov	dpl,#0x0C
   19B4 12 26 EA      [24] 2062 	lcall	_param_set
                           2063 ;	radio/main.c:340: param_set(PARAM_MIN_FREQ, freq_min/1000);
   19B7 90 05 B5      [24] 2064 	mov	dptr,#__divulong_PARM_2
   19BA 74 E8         [12] 2065 	mov	a,#0xE8
   19BC F0            [24] 2066 	movx	@dptr,a
   19BD 74 03         [12] 2067 	mov	a,#0x03
   19BF A3            [24] 2068 	inc	dptr
   19C0 F0            [24] 2069 	movx	@dptr,a
   19C1 E4            [12] 2070 	clr	a
   19C2 A3            [24] 2071 	inc	dptr
   19C3 F0            [24] 2072 	movx	@dptr,a
   19C4 E4            [12] 2073 	clr	a
   19C5 A3            [24] 2074 	inc	dptr
   19C6 F0            [24] 2075 	movx	@dptr,a
   19C7 78 4C         [12] 2076 	mov	r0,#_radio_init_freq_min_1_153
   19C9 E2            [24] 2077 	movx	a,@r0
   19CA F5 82         [12] 2078 	mov	dpl,a
   19CC 08            [12] 2079 	inc	r0
   19CD E2            [24] 2080 	movx	a,@r0
   19CE F5 83         [12] 2081 	mov	dph,a
   19D0 08            [12] 2082 	inc	r0
   19D1 E2            [24] 2083 	movx	a,@r0
   19D2 F5 F0         [12] 2084 	mov	b,a
   19D4 08            [12] 2085 	inc	r0
   19D5 E2            [24] 2086 	movx	a,@r0
   19D6 12 5E 91      [24] 2087 	lcall	__divulong
   19D9 AC 82         [24] 2088 	mov	r4,dpl
   19DB AD 83         [24] 2089 	mov	r5,dph
   19DD AE F0         [24] 2090 	mov	r6,b
   19DF FF            [12] 2091 	mov	r7,a
   19E0 78 6D         [12] 2092 	mov	r0,#_param_set_PARM_2
   19E2 EC            [12] 2093 	mov	a,r4
   19E3 F2            [24] 2094 	movx	@r0,a
   19E4 08            [12] 2095 	inc	r0
   19E5 ED            [12] 2096 	mov	a,r5
   19E6 F2            [24] 2097 	movx	@r0,a
   19E7 08            [12] 2098 	inc	r0
   19E8 EE            [12] 2099 	mov	a,r6
   19E9 F2            [24] 2100 	movx	@r0,a
   19EA 08            [12] 2101 	inc	r0
   19EB EF            [12] 2102 	mov	a,r7
   19EC F2            [24] 2103 	movx	@r0,a
   19ED 75 82 08      [24] 2104 	mov	dpl,#0x08
   19F0 12 26 EA      [24] 2105 	lcall	_param_set
                           2106 ;	radio/main.c:341: param_set(PARAM_MAX_FREQ, freq_max/1000);
   19F3 90 05 B5      [24] 2107 	mov	dptr,#__divulong_PARM_2
   19F6 74 E8         [12] 2108 	mov	a,#0xE8
   19F8 F0            [24] 2109 	movx	@dptr,a
   19F9 74 03         [12] 2110 	mov	a,#0x03
   19FB A3            [24] 2111 	inc	dptr
   19FC F0            [24] 2112 	movx	@dptr,a
   19FD E4            [12] 2113 	clr	a
   19FE A3            [24] 2114 	inc	dptr
   19FF F0            [24] 2115 	movx	@dptr,a
   1A00 E4            [12] 2116 	clr	a
   1A01 A3            [24] 2117 	inc	dptr
   1A02 F0            [24] 2118 	movx	@dptr,a
   1A03 78 50         [12] 2119 	mov	r0,#_radio_init_freq_max_1_153
   1A05 E2            [24] 2120 	movx	a,@r0
   1A06 F5 82         [12] 2121 	mov	dpl,a
   1A08 08            [12] 2122 	inc	r0
   1A09 E2            [24] 2123 	movx	a,@r0
   1A0A F5 83         [12] 2124 	mov	dph,a
   1A0C 08            [12] 2125 	inc	r0
   1A0D E2            [24] 2126 	movx	a,@r0
   1A0E F5 F0         [12] 2127 	mov	b,a
   1A10 08            [12] 2128 	inc	r0
   1A11 E2            [24] 2129 	movx	a,@r0
   1A12 12 5E 91      [24] 2130 	lcall	__divulong
   1A15 AC 82         [24] 2131 	mov	r4,dpl
   1A17 AD 83         [24] 2132 	mov	r5,dph
   1A19 AE F0         [24] 2133 	mov	r6,b
   1A1B FF            [12] 2134 	mov	r7,a
   1A1C 78 6D         [12] 2135 	mov	r0,#_param_set_PARM_2
   1A1E EC            [12] 2136 	mov	a,r4
   1A1F F2            [24] 2137 	movx	@r0,a
   1A20 08            [12] 2138 	inc	r0
   1A21 ED            [12] 2139 	mov	a,r5
   1A22 F2            [24] 2140 	movx	@r0,a
   1A23 08            [12] 2141 	inc	r0
   1A24 EE            [12] 2142 	mov	a,r6
   1A25 F2            [24] 2143 	movx	@r0,a
   1A26 08            [12] 2144 	inc	r0
   1A27 EF            [12] 2145 	mov	a,r7
   1A28 F2            [24] 2146 	movx	@r0,a
   1A29 75 82 09      [24] 2147 	mov	dpl,#0x09
   1A2C 12 26 EA      [24] 2148 	lcall	_param_set
                           2149 ;	radio/main.c:342: param_set(PARAM_NUM_CHANNELS, num_fh_channels);
   1A2F 78 1C         [12] 2150 	mov	r0,#_num_fh_channels
   1A31 79 6D         [12] 2151 	mov	r1,#_param_set_PARM_2
   1A33 E2            [24] 2152 	movx	a,@r0
   1A34 F3            [24] 2153 	movx	@r1,a
   1A35 09            [12] 2154 	inc	r1
   1A36 E4            [12] 2155 	clr	a
   1A37 F3            [24] 2156 	movx	@r1,a
   1A38 09            [12] 2157 	inc	r1
   1A39 F3            [24] 2158 	movx	@r1,a
   1A3A 09            [12] 2159 	inc	r1
   1A3B F3            [24] 2160 	movx	@r1,a
   1A3C 75 82 0A      [24] 2161 	mov	dpl,#0x0A
   1A3F 12 26 EA      [24] 2162 	lcall	_param_set
                           2163 ;	radio/main.c:344: channel_spacing = (freq_max - freq_min) / (num_fh_channels+2);
   1A42 78 50         [12] 2164 	mov	r0,#_radio_init_freq_max_1_153
   1A44 79 4C         [12] 2165 	mov	r1,#_radio_init_freq_min_1_153
   1A46 E3            [24] 2166 	movx	a,@r1
   1A47 F5 F0         [12] 2167 	mov	b,a
   1A49 C3            [12] 2168 	clr	c
   1A4A E2            [24] 2169 	movx	a,@r0
   1A4B 95 F0         [12] 2170 	subb	a,b
   1A4D FC            [12] 2171 	mov	r4,a
   1A4E 09            [12] 2172 	inc	r1
   1A4F E3            [24] 2173 	movx	a,@r1
   1A50 F5 F0         [12] 2174 	mov	b,a
   1A52 08            [12] 2175 	inc	r0
   1A53 E2            [24] 2176 	movx	a,@r0
   1A54 95 F0         [12] 2177 	subb	a,b
   1A56 FD            [12] 2178 	mov	r5,a
   1A57 09            [12] 2179 	inc	r1
   1A58 E3            [24] 2180 	movx	a,@r1
   1A59 F5 F0         [12] 2181 	mov	b,a
   1A5B 08            [12] 2182 	inc	r0
   1A5C E2            [24] 2183 	movx	a,@r0
   1A5D 95 F0         [12] 2184 	subb	a,b
   1A5F FE            [12] 2185 	mov	r6,a
   1A60 09            [12] 2186 	inc	r1
   1A61 E3            [24] 2187 	movx	a,@r1
   1A62 F5 F0         [12] 2188 	mov	b,a
   1A64 08            [12] 2189 	inc	r0
   1A65 E2            [24] 2190 	movx	a,@r0
   1A66 95 F0         [12] 2191 	subb	a,b
   1A68 FF            [12] 2192 	mov	r7,a
   1A69 78 1C         [12] 2193 	mov	r0,#_num_fh_channels
   1A6B E2            [24] 2194 	movx	a,@r0
   1A6C FA            [12] 2195 	mov	r2,a
   1A6D 7B 00         [12] 2196 	mov	r3,#0x00
   1A6F 74 02         [12] 2197 	mov	a,#0x02
   1A71 2A            [12] 2198 	add	a,r2
   1A72 FA            [12] 2199 	mov	r2,a
   1A73 E4            [12] 2200 	clr	a
   1A74 3B            [12] 2201 	addc	a,r3
   1A75 FB            [12] 2202 	mov	r3,a
   1A76 90 05 B5      [24] 2203 	mov	dptr,#__divulong_PARM_2
   1A79 EA            [12] 2204 	mov	a,r2
   1A7A F0            [24] 2205 	movx	@dptr,a
   1A7B EB            [12] 2206 	mov	a,r3
   1A7C A3            [24] 2207 	inc	dptr
   1A7D F0            [24] 2208 	movx	@dptr,a
   1A7E EB            [12] 2209 	mov	a,r3
   1A7F 33            [12] 2210 	rlc	a
   1A80 95 E0         [12] 2211 	subb	a,acc
   1A82 A3            [24] 2212 	inc	dptr
   1A83 F0            [24] 2213 	movx	@dptr,a
   1A84 A3            [24] 2214 	inc	dptr
   1A85 F0            [24] 2215 	movx	@dptr,a
   1A86 8C 82         [24] 2216 	mov	dpl,r4
   1A88 8D 83         [24] 2217 	mov	dph,r5
   1A8A 8E F0         [24] 2218 	mov	b,r6
   1A8C EF            [12] 2219 	mov	a,r7
   1A8D 12 5E 91      [24] 2220 	lcall	__divulong
   1A90 78 54         [12] 2221 	mov	r0,#_radio_init_channel_spacing_1_153
   1A92 C0 E0         [24] 2222 	push	acc
   1A94 E5 82         [12] 2223 	mov	a,dpl
   1A96 F2            [24] 2224 	movx	@r0,a
   1A97 08            [12] 2225 	inc	r0
   1A98 E5 83         [12] 2226 	mov	a,dph
   1A9A F2            [24] 2227 	movx	@r0,a
   1A9B 08            [12] 2228 	inc	r0
   1A9C E5 F0         [12] 2229 	mov	a,b
   1A9E F2            [24] 2230 	movx	@r0,a
   1A9F D0 E0         [24] 2231 	pop	acc
   1AA1 08            [12] 2232 	inc	r0
   1AA2 F2            [24] 2233 	movx	@r0,a
                           2234 ;	radio/main.c:348: freq_min += channel_spacing/2;
   1AA3 78 57         [12] 2235 	mov	r0,#(_radio_init_channel_spacing_1_153 + 3)
   1AA5 E2            [24] 2236 	movx	a,@r0
   1AA6 C3            [12] 2237 	clr	c
   1AA7 13            [12] 2238 	rrc	a
   1AA8 FF            [12] 2239 	mov	r7,a
   1AA9 18            [12] 2240 	dec	r0
   1AAA E2            [24] 2241 	movx	a,@r0
   1AAB 13            [12] 2242 	rrc	a
   1AAC FE            [12] 2243 	mov	r6,a
   1AAD 18            [12] 2244 	dec	r0
   1AAE E2            [24] 2245 	movx	a,@r0
   1AAF 13            [12] 2246 	rrc	a
   1AB0 FB            [12] 2247 	mov	r3,a
   1AB1 18            [12] 2248 	dec	r0
   1AB2 E2            [24] 2249 	movx	a,@r0
   1AB3 13            [12] 2250 	rrc	a
   1AB4 FA            [12] 2251 	mov	r2,a
   1AB5 78 4C         [12] 2252 	mov	r0,#_radio_init_freq_min_1_153
   1AB7 E2            [24] 2253 	movx	a,@r0
   1AB8 2A            [12] 2254 	add	a,r2
   1AB9 F2            [24] 2255 	movx	@r0,a
   1ABA 08            [12] 2256 	inc	r0
   1ABB E2            [24] 2257 	movx	a,@r0
   1ABC 3B            [12] 2258 	addc	a,r3
   1ABD F2            [24] 2259 	movx	@r0,a
   1ABE 08            [12] 2260 	inc	r0
   1ABF E2            [24] 2261 	movx	a,@r0
   1AC0 3E            [12] 2262 	addc	a,r6
   1AC1 F2            [24] 2263 	movx	@r0,a
   1AC2 08            [12] 2264 	inc	r0
   1AC3 E2            [24] 2265 	movx	a,@r0
   1AC4 3F            [12] 2266 	addc	a,r7
   1AC5 F2            [24] 2267 	movx	@r0,a
                           2268 ;	radio/main.c:353: srand(param_get(PARAM_NETID));
   1AC6 75 82 03      [24] 2269 	mov	dpl,#0x03
   1AC9 12 28 8D      [24] 2270 	lcall	_param_get
   1ACC 12 5E 41      [24] 2271 	lcall	_srand
                           2272 ;	radio/main.c:354: if (num_fh_channels > 5) {
   1ACF 78 1C         [12] 2273 	mov	r0,#_num_fh_channels
   1AD1 C3            [12] 2274 	clr	c
   1AD2 E2            [24] 2275 	movx	a,@r0
   1AD3 F5 F0         [12] 2276 	mov	b,a
   1AD5 74 05         [12] 2277 	mov	a,#0x05
   1AD7 95 F0         [12] 2278 	subb	a,b
   1AD9 50 54         [24] 2279 	jnc	00128$
                           2280 ;	radio/main.c:355: freq_min += ((unsigned long)(rand()*625)) % channel_spacing;
   1ADB 12 5D E7      [24] 2281 	lcall	_rand
   1ADE AE 82         [24] 2282 	mov	r6,dpl
   1AE0 AF 83         [24] 2283 	mov	r7,dph
   1AE2 90 05 CE      [24] 2284 	mov	dptr,#__mulint_PARM_2
   1AE5 EE            [12] 2285 	mov	a,r6
   1AE6 F0            [24] 2286 	movx	@dptr,a
   1AE7 EF            [12] 2287 	mov	a,r7
   1AE8 A3            [24] 2288 	inc	dptr
   1AE9 F0            [24] 2289 	movx	@dptr,a
   1AEA 90 02 71      [24] 2290 	mov	dptr,#0x0271
   1AED 12 60 D2      [24] 2291 	lcall	__mulint
   1AF0 AE 82         [24] 2292 	mov	r6,dpl
   1AF2 E5 83         [12] 2293 	mov	a,dph
   1AF4 FF            [12] 2294 	mov	r7,a
   1AF5 33            [12] 2295 	rlc	a
   1AF6 95 E0         [12] 2296 	subb	a,acc
   1AF8 FD            [12] 2297 	mov	r5,a
   1AF9 FC            [12] 2298 	mov	r4,a
   1AFA 78 54         [12] 2299 	mov	r0,#_radio_init_channel_spacing_1_153
   1AFC 90 05 AA      [24] 2300 	mov	dptr,#__modulong_PARM_2
   1AFF E2            [24] 2301 	movx	a,@r0
   1B00 F0            [24] 2302 	movx	@dptr,a
   1B01 08            [12] 2303 	inc	r0
   1B02 E2            [24] 2304 	movx	a,@r0
   1B03 A3            [24] 2305 	inc	dptr
   1B04 F0            [24] 2306 	movx	@dptr,a
   1B05 08            [12] 2307 	inc	r0
   1B06 E2            [24] 2308 	movx	a,@r0
   1B07 A3            [24] 2309 	inc	dptr
   1B08 F0            [24] 2310 	movx	@dptr,a
   1B09 08            [12] 2311 	inc	r0
   1B0A E2            [24] 2312 	movx	a,@r0
   1B0B A3            [24] 2313 	inc	dptr
   1B0C F0            [24] 2314 	movx	@dptr,a
   1B0D 8E 82         [24] 2315 	mov	dpl,r6
   1B0F 8F 83         [24] 2316 	mov	dph,r7
   1B11 8D F0         [24] 2317 	mov	b,r5
   1B13 EC            [12] 2318 	mov	a,r4
   1B14 12 5C 03      [24] 2319 	lcall	__modulong
   1B17 AC 82         [24] 2320 	mov	r4,dpl
   1B19 AD 83         [24] 2321 	mov	r5,dph
   1B1B AE F0         [24] 2322 	mov	r6,b
   1B1D FF            [12] 2323 	mov	r7,a
   1B1E 78 4C         [12] 2324 	mov	r0,#_radio_init_freq_min_1_153
   1B20 E2            [24] 2325 	movx	a,@r0
   1B21 2C            [12] 2326 	add	a,r4
   1B22 F2            [24] 2327 	movx	@r0,a
   1B23 08            [12] 2328 	inc	r0
   1B24 E2            [24] 2329 	movx	a,@r0
   1B25 3D            [12] 2330 	addc	a,r5
   1B26 F2            [24] 2331 	movx	@r0,a
   1B27 08            [12] 2332 	inc	r0
   1B28 E2            [24] 2333 	movx	a,@r0
   1B29 3E            [12] 2334 	addc	a,r6
   1B2A F2            [24] 2335 	movx	@r0,a
   1B2B 08            [12] 2336 	inc	r0
   1B2C E2            [24] 2337 	movx	a,@r0
   1B2D 3F            [12] 2338 	addc	a,r7
   1B2E F2            [24] 2339 	movx	@r0,a
   1B2F                    2340 00128$:
                           2341 ;	radio/main.c:363: radio_set_frequency(freq_min);
   1B2F 78 4C         [12] 2342 	mov	r0,#_radio_init_freq_min_1_153
   1B31 E2            [24] 2343 	movx	a,@r0
   1B32 F5 82         [12] 2344 	mov	dpl,a
   1B34 08            [12] 2345 	inc	r0
   1B35 E2            [24] 2346 	movx	a,@r0
   1B36 F5 83         [12] 2347 	mov	dph,a
   1B38 08            [12] 2348 	inc	r0
   1B39 E2            [24] 2349 	movx	a,@r0
   1B3A F5 F0         [12] 2350 	mov	b,a
   1B3C 08            [12] 2351 	inc	r0
   1B3D E2            [24] 2352 	movx	a,@r0
   1B3E 12 37 41      [24] 2353 	lcall	_radio_set_frequency
                           2354 ;	radio/main.c:366: radio_set_channel_spacing(channel_spacing);
   1B41 78 54         [12] 2355 	mov	r0,#_radio_init_channel_spacing_1_153
   1B43 E2            [24] 2356 	movx	a,@r0
   1B44 F5 82         [12] 2357 	mov	dpl,a
   1B46 08            [12] 2358 	inc	r0
   1B47 E2            [24] 2359 	movx	a,@r0
   1B48 F5 83         [12] 2360 	mov	dph,a
   1B4A 08            [12] 2361 	inc	r0
   1B4B E2            [24] 2362 	movx	a,@r0
   1B4C F5 F0         [12] 2363 	mov	b,a
   1B4E 08            [12] 2364 	inc	r0
   1B4F E2            [24] 2365 	movx	a,@r0
   1B50 12 37 7D      [24] 2366 	lcall	_radio_set_channel_spacing
                           2367 ;	radio/main.c:369: radio_set_channel(param_get(PARAM_NETID) % num_fh_channels);
   1B53 75 82 03      [24] 2368 	mov	dpl,#0x03
   1B56 12 28 8D      [24] 2369 	lcall	_param_get
   1B59 AC 82         [24] 2370 	mov	r4,dpl
   1B5B AD 83         [24] 2371 	mov	r5,dph
   1B5D AE F0         [24] 2372 	mov	r6,b
   1B5F FF            [12] 2373 	mov	r7,a
   1B60 78 1C         [12] 2374 	mov	r0,#_num_fh_channels
   1B62 90 05 AA      [24] 2375 	mov	dptr,#__modulong_PARM_2
   1B65 E2            [24] 2376 	movx	a,@r0
   1B66 F0            [24] 2377 	movx	@dptr,a
   1B67 E4            [12] 2378 	clr	a
   1B68 A3            [24] 2379 	inc	dptr
   1B69 F0            [24] 2380 	movx	@dptr,a
   1B6A E4            [12] 2381 	clr	a
   1B6B A3            [24] 2382 	inc	dptr
   1B6C F0            [24] 2383 	movx	@dptr,a
   1B6D E4            [12] 2384 	clr	a
   1B6E A3            [24] 2385 	inc	dptr
   1B6F F0            [24] 2386 	movx	@dptr,a
   1B70 8C 82         [24] 2387 	mov	dpl,r4
   1B72 8D 83         [24] 2388 	mov	dph,r5
   1B74 8E F0         [24] 2389 	mov	b,r6
   1B76 EF            [12] 2390 	mov	a,r7
   1B77 12 5C 03      [24] 2391 	lcall	__modulong
   1B7A AC 82         [24] 2392 	mov	r4,dpl
   1B7C 8C 82         [24] 2393 	mov	dpl,r4
   1B7E 12 37 CE      [24] 2394 	lcall	_radio_set_channel
                           2395 ;	radio/main.c:372: if (!radio_configure(param_get(PARAM_AIR_SPEED)) &&
   1B81 75 82 02      [24] 2396 	mov	dpl,#0x02
   1B84 12 28 8D      [24] 2397 	lcall	_param_get
   1B87 AC 82         [24] 2398 	mov	r4,dpl
   1B89 8C 82         [24] 2399 	mov	dpl,r4
   1B8B 12 37 F8      [24] 2400 	lcall	_radio_configure
   1B8E 40 33         [24] 2401 	jc	00130$
                           2402 ;	radio/main.c:373: !radio_configure(param_get(PARAM_AIR_SPEED)) &&
   1B90 75 82 02      [24] 2403 	mov	dpl,#0x02
   1B93 12 28 8D      [24] 2404 	lcall	_param_get
   1B96 AC 82         [24] 2405 	mov	r4,dpl
   1B98 8C 82         [24] 2406 	mov	dpl,r4
   1B9A 12 37 F8      [24] 2407 	lcall	_radio_configure
   1B9D 40 24         [24] 2408 	jc	00130$
                           2409 ;	radio/main.c:374: !radio_configure(param_get(PARAM_AIR_SPEED))) {
   1B9F 75 82 02      [24] 2410 	mov	dpl,#0x02
   1BA2 12 28 8D      [24] 2411 	lcall	_param_get
   1BA5 AC 82         [24] 2412 	mov	r4,dpl
   1BA7 8C 82         [24] 2413 	mov	dpl,r4
   1BA9 12 37 F8      [24] 2414 	lcall	_radio_configure
   1BAC 40 15         [24] 2415 	jc	00130$
                           2416 ;	radio/main.c:375: panic("radio_configure failed");
   1BAE 74 13         [12] 2417 	mov	a,#__str_5
   1BB0 C0 E0         [24] 2418 	push	acc
   1BB2 74 CB         [12] 2419 	mov	a,#(__str_5 >> 8)
   1BB4 C0 E0         [24] 2420 	push	acc
   1BB6 74 80         [12] 2421 	mov	a,#0x80
   1BB8 C0 E0         [24] 2422 	push	acc
   1BBA 12 13 04      [24] 2423 	lcall	_panic
   1BBD 15 81         [12] 2424 	dec	sp
   1BBF 15 81         [12] 2425 	dec	sp
   1BC1 15 81         [12] 2426 	dec	sp
   1BC3                    2427 00130$:
                           2428 ;	radio/main.c:379: param_set(PARAM_AIR_SPEED, radio_air_rate());
   1BC3 12 32 F7      [24] 2429 	lcall	_radio_air_rate
   1BC6 AF 82         [24] 2430 	mov	r7,dpl
   1BC8 78 6D         [12] 2431 	mov	r0,#_param_set_PARM_2
   1BCA EF            [12] 2432 	mov	a,r7
   1BCB F2            [24] 2433 	movx	@r0,a
   1BCC 08            [12] 2434 	inc	r0
   1BCD E4            [12] 2435 	clr	a
   1BCE F2            [24] 2436 	movx	@r0,a
   1BCF 08            [12] 2437 	inc	r0
   1BD0 F2            [24] 2438 	movx	@r0,a
   1BD1 08            [12] 2439 	inc	r0
   1BD2 F2            [24] 2440 	movx	@r0,a
   1BD3 75 82 02      [24] 2441 	mov	dpl,#0x02
   1BD6 12 26 EA      [24] 2442 	lcall	_param_set
                           2443 ;	radio/main.c:382: radio_set_network_id(param_get(PARAM_NETID));
   1BD9 75 82 03      [24] 2444 	mov	dpl,#0x03
   1BDC 12 28 8D      [24] 2445 	lcall	_param_get
   1BDF 12 3B 16      [24] 2446 	lcall	_radio_set_network_id
                           2447 ;	radio/main.c:385: radio_set_transmit_power(txpower);
   1BE2 78 58         [12] 2448 	mov	r0,#_radio_init_txpower_1_153
   1BE4 E2            [24] 2449 	movx	a,@r0
   1BE5 F5 82         [12] 2450 	mov	dpl,a
   1BE7 12 3A D0      [24] 2451 	lcall	_radio_set_transmit_power
                           2452 ;	radio/main.c:388: param_set(PARAM_TXPOWER, radio_get_transmit_power());
   1BEA 12 3B 10      [24] 2453 	lcall	_radio_get_transmit_power
   1BED AF 82         [24] 2454 	mov	r7,dpl
   1BEF 78 6D         [12] 2455 	mov	r0,#_param_set_PARM_2
   1BF1 EF            [12] 2456 	mov	a,r7
   1BF2 F2            [24] 2457 	movx	@r0,a
   1BF3 08            [12] 2458 	inc	r0
   1BF4 E4            [12] 2459 	clr	a
   1BF5 F2            [24] 2460 	movx	@r0,a
   1BF6 08            [12] 2461 	inc	r0
   1BF7 F2            [24] 2462 	movx	@r0,a
   1BF8 08            [12] 2463 	inc	r0
   1BF9 F2            [24] 2464 	movx	@r0,a
   1BFA 75 82 04      [24] 2465 	mov	dpl,#0x04
   1BFD 12 26 EA      [24] 2466 	lcall	_param_set
                           2467 ;	radio/main.c:396: fhop_init(param_get(PARAM_NETID));
   1C00 75 82 03      [24] 2468 	mov	dpl,#0x03
   1C03 12 28 8D      [24] 2469 	lcall	_param_get
   1C06 12 0C 78      [24] 2470 	lcall	_fhop_init
                           2471 ;	radio/main.c:399: tdm_init();
   1C09 02 55 BD      [24] 2472 	ljmp	_tdm_init
                           2473 	.area CSEG    (CODE)
                           2474 	.area CONST   (CODE)
   CAA7                    2475 _g_banner_string:
   CAA7 53 69 4B 20 31 2E  2476 	.ascii "SiK 1.7 on RFD900A"
        37 20 6F 6E 20 52
        46 44 39 30 30 41
   CAB9 00                 2477 	.db 0x00
   CABA                    2478 _g_version_string:
   CABA 31 2E 37           2479 	.ascii "1.7"
   CABD 00                 2480 	.db 0x00
   CABE                    2481 __str_0:
   CABE 66 61 69 6C 65 64  2482 	.ascii "failed to enable receiver"
        20 74 6F 20 65 6E
        61 62 6C 65 20 72
        65 63 65 69 76 65
        72
   CAD7 00                 2483 	.db 0x00
   CAD8                    2484 __str_1:
   CAD8 0A                 2485 	.db 0x0A
   CAD9 2A 2A 50 41 4E 49  2486 	.ascii "**PANIC**"
        43 2A 2A
   CAE2 00                 2487 	.db 0x00
   CAE3                    2488 __str_2:
   CAE3 00                 2489 	.db 0x00
   CAE4                    2490 __str_3:
   CAE4 72 61 64 69 6F 5F  2491 	.ascii "radio_initialise failed"
        69 6E 69 74 69 61
        6C 69 73 65 20 66
        61 69 6C 65 64
   CAFB 00                 2492 	.db 0x00
   CAFC                    2493 __str_4:
   CAFC 62 61 64 20 62 6F  2494 	.ascii "bad board frequency %d"
        61 72 64 20 66 72
        65 71 75 65 6E 63
        79 20 25 64
   CB12 00                 2495 	.db 0x00
   CB13                    2496 __str_5:
   CB13 72 61 64 69 6F 5F  2497 	.ascii "radio_configure failed"
        63 6F 6E 66 69 67
        75 72 65 20 66 61
        69 6C 65 64
   CB29 00                 2498 	.db 0x00
                           2499 	.area XINIT   (CODE)
                           2500 	.area CABS    (ABS,CODE)
