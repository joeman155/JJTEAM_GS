                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:06 2013
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
                             43 	.globl _BUTTON_DOWN
                             44 	.globl _BUTTON_UP
                             45 	.globl _BUTTON_ENTER
                             46 	.globl _LED_GREEN
                             47 	.globl _LED_RED
                             48 	.globl _SPI0EN
                             49 	.globl _TXBMT0
                             50 	.globl _NSS0MD0
                             51 	.globl _NSS0MD1
                             52 	.globl _RXOVRN0
                             53 	.globl _MODF0
                             54 	.globl _WCOL0
                             55 	.globl _SPIF0
                             56 	.globl _AD0CM0
                             57 	.globl _AD0CM1
                             58 	.globl _AD0CM2
                             59 	.globl _AD0WINT
                             60 	.globl _AD0BUSY
                             61 	.globl _AD0INT
                             62 	.globl _BURSTEN
                             63 	.globl _AD0EN
                             64 	.globl _CCF0
                             65 	.globl _CCF1
                             66 	.globl _CCF2
                             67 	.globl _CCF3
                             68 	.globl _CCF4
                             69 	.globl _CCF5
                             70 	.globl _CR
                             71 	.globl _CF
                             72 	.globl _P
                             73 	.globl _F1
                             74 	.globl _OV
                             75 	.globl _RS0
                             76 	.globl _RS1
                             77 	.globl _F0
                             78 	.globl _AC
                             79 	.globl _CY
                             80 	.globl _T2XCLK
                             81 	.globl _T2RCLK
                             82 	.globl _TR2
                             83 	.globl _T2SPLIT
                             84 	.globl _TF2CEN
                             85 	.globl _TF2LEN
                             86 	.globl _TF2L
                             87 	.globl _TF2H
                             88 	.globl _SI
                             89 	.globl _ACK
                             90 	.globl _ARBLOST
                             91 	.globl _ACKRQ
                             92 	.globl _STO
                             93 	.globl _STA
                             94 	.globl _TXMODE
                             95 	.globl _MASTER
                             96 	.globl _PX0
                             97 	.globl _PT0
                             98 	.globl _PX1
                             99 	.globl _PT1
                            100 	.globl _PS0
                            101 	.globl _PT2
                            102 	.globl _PSPI0
                            103 	.globl _SPI1EN
                            104 	.globl _TXBMT1
                            105 	.globl _NSS1MD0
                            106 	.globl _NSS1MD1
                            107 	.globl _RXOVRN1
                            108 	.globl _MODF1
                            109 	.globl _WCOL1
                            110 	.globl _SPIF1
                            111 	.globl _EX0
                            112 	.globl _ET0
                            113 	.globl _EX1
                            114 	.globl _ET1
                            115 	.globl _ES0
                            116 	.globl _ET2
                            117 	.globl _ESPI0
                            118 	.globl _EA
                            119 	.globl _RI0
                            120 	.globl _TI0
                            121 	.globl _RB80
                            122 	.globl _TB80
                            123 	.globl _REN0
                            124 	.globl _MCE0
                            125 	.globl _S0MODE
                            126 	.globl _CRC0VAL
                            127 	.globl _CRC0INIT
                            128 	.globl _CRC0SEL
                            129 	.globl _IT0
                            130 	.globl _IE0
                            131 	.globl _IT1
                            132 	.globl _IE1
                            133 	.globl _TR0
                            134 	.globl _TF0
                            135 	.globl _TR1
                            136 	.globl _TF1
                            137 	.globl _PCA0CP4
                            138 	.globl _PCA0CP0
                            139 	.globl _PCA0
                            140 	.globl _PCA0CP3
                            141 	.globl _PCA0CP2
                            142 	.globl _PCA0CP1
                            143 	.globl _PCA0CP5
                            144 	.globl _TMR2
                            145 	.globl _TMR2RL
                            146 	.globl _ADC0LT
                            147 	.globl _ADC0GT
                            148 	.globl _ADC0
                            149 	.globl _TMR3
                            150 	.globl _TMR3RL
                            151 	.globl _TOFF
                            152 	.globl _DP
                            153 	.globl _VDM0CN
                            154 	.globl _PCA0CPH4
                            155 	.globl _PCA0CPL4
                            156 	.globl _PCA0CPH0
                            157 	.globl _PCA0CPL0
                            158 	.globl _PCA0H
                            159 	.globl _PCA0L
                            160 	.globl _SPI0CN
                            161 	.globl _EIP2
                            162 	.globl _EIP1
                            163 	.globl _SMB0ADM
                            164 	.globl _SMB0ADR
                            165 	.globl _P2MDIN
                            166 	.globl _P1MDIN
                            167 	.globl _P0MDIN
                            168 	.globl _B
                            169 	.globl _RSTSRC
                            170 	.globl _PCA0CPH3
                            171 	.globl _PCA0CPL3
                            172 	.globl _PCA0CPH2
                            173 	.globl _PCA0CPL2
                            174 	.globl _PCA0CPH1
                            175 	.globl _PCA0CPL1
                            176 	.globl _ADC0CN
                            177 	.globl _EIE2
                            178 	.globl _EIE1
                            179 	.globl _FLWR
                            180 	.globl _IT01CF
                            181 	.globl _XBR2
                            182 	.globl _XBR1
                            183 	.globl _XBR0
                            184 	.globl _ACC
                            185 	.globl _PCA0PWM
                            186 	.globl _PCA0CPM4
                            187 	.globl _PCA0CPM3
                            188 	.globl _PCA0CPM2
                            189 	.globl _PCA0CPM1
                            190 	.globl _PCA0CPM0
                            191 	.globl _PCA0MD
                            192 	.globl _PCA0CN
                            193 	.globl _P0MAT
                            194 	.globl _P2SKIP
                            195 	.globl _P1SKIP
                            196 	.globl _P0SKIP
                            197 	.globl _PCA0CPH5
                            198 	.globl _PCA0CPL5
                            199 	.globl _REF0CN
                            200 	.globl _PSW
                            201 	.globl _P1MAT
                            202 	.globl _PCA0CPM5
                            203 	.globl _TMR2H
                            204 	.globl _TMR2L
                            205 	.globl _TMR2RLH
                            206 	.globl _TMR2RLL
                            207 	.globl _REG0CN
                            208 	.globl _TMR2CN
                            209 	.globl _P0MASK
                            210 	.globl _ADC0LTH
                            211 	.globl _ADC0LTL
                            212 	.globl _ADC0GTH
                            213 	.globl _ADC0GTL
                            214 	.globl _SMB0DAT
                            215 	.globl _SMB0CF
                            216 	.globl _SMB0CN
                            217 	.globl _P1MASK
                            218 	.globl _ADC0H
                            219 	.globl _ADC0L
                            220 	.globl _ADC0TK
                            221 	.globl _ADC0CF
                            222 	.globl _ADC0MX
                            223 	.globl _ADC0PWR
                            224 	.globl _ADC0AC
                            225 	.globl _IREF0CN
                            226 	.globl _IP
                            227 	.globl _FLKEY
                            228 	.globl _FLSCL
                            229 	.globl _PMU0CF
                            230 	.globl _OSCICL
                            231 	.globl _OSCICN
                            232 	.globl _OSCXCN
                            233 	.globl _SPI1CN
                            234 	.globl _ONESHOT
                            235 	.globl _EMI0TC
                            236 	.globl _RTC0KEY
                            237 	.globl _RTC0DAT
                            238 	.globl _RTC0ADR
                            239 	.globl _EMI0CF
                            240 	.globl _EMI0CN
                            241 	.globl _CLKSEL
                            242 	.globl _IE
                            243 	.globl _SFRPAGE
                            244 	.globl _P2DRV
                            245 	.globl _P2MDOUT
                            246 	.globl _P1DRV
                            247 	.globl _P1MDOUT
                            248 	.globl _P0DRV
                            249 	.globl _P0MDOUT
                            250 	.globl _SPI0DAT
                            251 	.globl _SPI0CKR
                            252 	.globl _SPI0CFG
                            253 	.globl _P2
                            254 	.globl _CPT0MX
                            255 	.globl _CPT1MX
                            256 	.globl _CPT0MD
                            257 	.globl _CPT1MD
                            258 	.globl _CPT0CN
                            259 	.globl _CPT1CN
                            260 	.globl _SBUF0
                            261 	.globl _SCON0
                            262 	.globl _CRC0CNT
                            263 	.globl _DC0CN
                            264 	.globl _CRC0AUTO
                            265 	.globl _DC0CF
                            266 	.globl _TMR3H
                            267 	.globl _CRC0FLIP
                            268 	.globl _TMR3L
                            269 	.globl _CRC0IN
                            270 	.globl _TMR3RLH
                            271 	.globl _CRC0CN
                            272 	.globl _TMR3RLL
                            273 	.globl _CRC0DAT
                            274 	.globl _TMR3CN
                            275 	.globl _P1
                            276 	.globl _PSCTL
                            277 	.globl _CKCON
                            278 	.globl _TH1
                            279 	.globl _TH0
                            280 	.globl _TL1
                            281 	.globl _TL0
                            282 	.globl _TMOD
                            283 	.globl _TCON
                            284 	.globl _PCON
                            285 	.globl _TOFFH
                            286 	.globl _SPI1DAT
                            287 	.globl _TOFFL
                            288 	.globl _SPI1CKR
                            289 	.globl _SPI1CFG
                            290 	.globl _DPH
                            291 	.globl _DPL
                            292 	.globl _SP
                            293 	.globl _P0
                            294 	.globl _remote_statistics
                            295 	.globl _statistics
                            296 	.globl _errors
                            297 	.globl _g_board_bl_version
                            298 	.globl _g_board_frequency
                            299 	.globl _feature_rtscts
                            300 	.globl _feature_mavlink_framing
                            301 	.globl _feature_opportunistic_resend
                            302 	.globl _feature_golay
                            303 	.globl _panic
                            304 ;--------------------------------------------------------
                            305 ; special function registers
                            306 ;--------------------------------------------------------
                            307 	.area RSEG    (ABS,DATA)
   0000                     308 	.org 0x0000
                     0080   309 _P0	=	0x0080
                     0081   310 _SP	=	0x0081
                     0082   311 _DPL	=	0x0082
                     0083   312 _DPH	=	0x0083
                     0084   313 _SPI1CFG	=	0x0084
                     0085   314 _SPI1CKR	=	0x0085
                     0085   315 _TOFFL	=	0x0085
                     0086   316 _SPI1DAT	=	0x0086
                     0086   317 _TOFFH	=	0x0086
                     0087   318 _PCON	=	0x0087
                     0088   319 _TCON	=	0x0088
                     0089   320 _TMOD	=	0x0089
                     008A   321 _TL0	=	0x008a
                     008B   322 _TL1	=	0x008b
                     008C   323 _TH0	=	0x008c
                     008D   324 _TH1	=	0x008d
                     008E   325 _CKCON	=	0x008e
                     008F   326 _PSCTL	=	0x008f
                     0090   327 _P1	=	0x0090
                     0091   328 _TMR3CN	=	0x0091
                     0091   329 _CRC0DAT	=	0x0091
                     0092   330 _TMR3RLL	=	0x0092
                     0092   331 _CRC0CN	=	0x0092
                     0093   332 _TMR3RLH	=	0x0093
                     0093   333 _CRC0IN	=	0x0093
                     0094   334 _TMR3L	=	0x0094
                     0095   335 _CRC0FLIP	=	0x0095
                     0095   336 _TMR3H	=	0x0095
                     0096   337 _DC0CF	=	0x0096
                     0096   338 _CRC0AUTO	=	0x0096
                     0097   339 _DC0CN	=	0x0097
                     0097   340 _CRC0CNT	=	0x0097
                     0098   341 _SCON0	=	0x0098
                     0099   342 _SBUF0	=	0x0099
                     009A   343 _CPT1CN	=	0x009a
                     009B   344 _CPT0CN	=	0x009b
                     009C   345 _CPT1MD	=	0x009c
                     009D   346 _CPT0MD	=	0x009d
                     009E   347 _CPT1MX	=	0x009e
                     009F   348 _CPT0MX	=	0x009f
                     00A0   349 _P2	=	0x00a0
                     00A1   350 _SPI0CFG	=	0x00a1
                     00A2   351 _SPI0CKR	=	0x00a2
                     00A3   352 _SPI0DAT	=	0x00a3
                     00A4   353 _P0MDOUT	=	0x00a4
                     00A4   354 _P0DRV	=	0x00a4
                     00A5   355 _P1MDOUT	=	0x00a5
                     00A5   356 _P1DRV	=	0x00a5
                     00A6   357 _P2MDOUT	=	0x00a6
                     00A6   358 _P2DRV	=	0x00a6
                     00A7   359 _SFRPAGE	=	0x00a7
                     00A8   360 _IE	=	0x00a8
                     00A9   361 _CLKSEL	=	0x00a9
                     00AA   362 _EMI0CN	=	0x00aa
                     00AB   363 _EMI0CF	=	0x00ab
                     00AC   364 _RTC0ADR	=	0x00ac
                     00AD   365 _RTC0DAT	=	0x00ad
                     00AE   366 _RTC0KEY	=	0x00ae
                     00AF   367 _EMI0TC	=	0x00af
                     00AF   368 _ONESHOT	=	0x00af
                     00B0   369 _SPI1CN	=	0x00b0
                     00B1   370 _OSCXCN	=	0x00b1
                     00B2   371 _OSCICN	=	0x00b2
                     00B3   372 _OSCICL	=	0x00b3
                     00B5   373 _PMU0CF	=	0x00b5
                     00B6   374 _FLSCL	=	0x00b6
                     00B7   375 _FLKEY	=	0x00b7
                     00B8   376 _IP	=	0x00b8
                     00B9   377 _IREF0CN	=	0x00b9
                     00BA   378 _ADC0AC	=	0x00ba
                     00BA   379 _ADC0PWR	=	0x00ba
                     00BB   380 _ADC0MX	=	0x00bb
                     00BC   381 _ADC0CF	=	0x00bc
                     00BD   382 _ADC0TK	=	0x00bd
                     00BD   383 _ADC0L	=	0x00bd
                     00BE   384 _ADC0H	=	0x00be
                     00BF   385 _P1MASK	=	0x00bf
                     00C0   386 _SMB0CN	=	0x00c0
                     00C1   387 _SMB0CF	=	0x00c1
                     00C2   388 _SMB0DAT	=	0x00c2
                     00C3   389 _ADC0GTL	=	0x00c3
                     00C4   390 _ADC0GTH	=	0x00c4
                     00C5   391 _ADC0LTL	=	0x00c5
                     00C6   392 _ADC0LTH	=	0x00c6
                     00C7   393 _P0MASK	=	0x00c7
                     00C8   394 _TMR2CN	=	0x00c8
                     00C9   395 _REG0CN	=	0x00c9
                     00CA   396 _TMR2RLL	=	0x00ca
                     00CB   397 _TMR2RLH	=	0x00cb
                     00CC   398 _TMR2L	=	0x00cc
                     00CD   399 _TMR2H	=	0x00cd
                     00CE   400 _PCA0CPM5	=	0x00ce
                     00CF   401 _P1MAT	=	0x00cf
                     00D0   402 _PSW	=	0x00d0
                     00D1   403 _REF0CN	=	0x00d1
                     00D2   404 _PCA0CPL5	=	0x00d2
                     00D3   405 _PCA0CPH5	=	0x00d3
                     00D4   406 _P0SKIP	=	0x00d4
                     00D5   407 _P1SKIP	=	0x00d5
                     00D6   408 _P2SKIP	=	0x00d6
                     00D7   409 _P0MAT	=	0x00d7
                     00D8   410 _PCA0CN	=	0x00d8
                     00D9   411 _PCA0MD	=	0x00d9
                     00DA   412 _PCA0CPM0	=	0x00da
                     00DB   413 _PCA0CPM1	=	0x00db
                     00DC   414 _PCA0CPM2	=	0x00dc
                     00DD   415 _PCA0CPM3	=	0x00dd
                     00DE   416 _PCA0CPM4	=	0x00de
                     00DF   417 _PCA0PWM	=	0x00df
                     00E0   418 _ACC	=	0x00e0
                     00E1   419 _XBR0	=	0x00e1
                     00E2   420 _XBR1	=	0x00e2
                     00E3   421 _XBR2	=	0x00e3
                     00E4   422 _IT01CF	=	0x00e4
                     00E5   423 _FLWR	=	0x00e5
                     00E6   424 _EIE1	=	0x00e6
                     00E7   425 _EIE2	=	0x00e7
                     00E8   426 _ADC0CN	=	0x00e8
                     00E9   427 _PCA0CPL1	=	0x00e9
                     00EA   428 _PCA0CPH1	=	0x00ea
                     00EB   429 _PCA0CPL2	=	0x00eb
                     00EC   430 _PCA0CPH2	=	0x00ec
                     00ED   431 _PCA0CPL3	=	0x00ed
                     00EE   432 _PCA0CPH3	=	0x00ee
                     00EF   433 _RSTSRC	=	0x00ef
                     00F0   434 _B	=	0x00f0
                     00F1   435 _P0MDIN	=	0x00f1
                     00F2   436 _P1MDIN	=	0x00f2
                     00F3   437 _P2MDIN	=	0x00f3
                     00F4   438 _SMB0ADR	=	0x00f4
                     00F5   439 _SMB0ADM	=	0x00f5
                     00F6   440 _EIP1	=	0x00f6
                     00F7   441 _EIP2	=	0x00f7
                     00F8   442 _SPI0CN	=	0x00f8
                     00F9   443 _PCA0L	=	0x00f9
                     00FA   444 _PCA0H	=	0x00fa
                     00FB   445 _PCA0CPL0	=	0x00fb
                     00FC   446 _PCA0CPH0	=	0x00fc
                     00FD   447 _PCA0CPL4	=	0x00fd
                     00FE   448 _PCA0CPH4	=	0x00fe
                     00FF   449 _VDM0CN	=	0x00ff
                     8382   450 _DP	=	0x8382
                     8685   451 _TOFF	=	0x8685
                     9392   452 _TMR3RL	=	0x9392
                     9594   453 _TMR3	=	0x9594
                     BEBD   454 _ADC0	=	0xbebd
                     C4C3   455 _ADC0GT	=	0xc4c3
                     C6C5   456 _ADC0LT	=	0xc6c5
                     CBCA   457 _TMR2RL	=	0xcbca
                     CDCC   458 _TMR2	=	0xcdcc
                     D3D2   459 _PCA0CP5	=	0xd3d2
                     EAE9   460 _PCA0CP1	=	0xeae9
                     ECEB   461 _PCA0CP2	=	0xeceb
                     EEED   462 _PCA0CP3	=	0xeeed
                     FAF9   463 _PCA0	=	0xfaf9
                     FCFB   464 _PCA0CP0	=	0xfcfb
                     FEFD   465 _PCA0CP4	=	0xfefd
                            466 ;--------------------------------------------------------
                            467 ; special function bits
                            468 ;--------------------------------------------------------
                            469 	.area RSEG    (ABS,DATA)
   0000                     470 	.org 0x0000
                     008F   471 _TF1	=	0x008f
                     008E   472 _TR1	=	0x008e
                     008D   473 _TF0	=	0x008d
                     008C   474 _TR0	=	0x008c
                     008B   475 _IE1	=	0x008b
                     008A   476 _IT1	=	0x008a
                     0089   477 _IE0	=	0x0089
                     0088   478 _IT0	=	0x0088
                     0096   479 _CRC0SEL	=	0x0096
                     0095   480 _CRC0INIT	=	0x0095
                     0094   481 _CRC0VAL	=	0x0094
                     009F   482 _S0MODE	=	0x009f
                     009D   483 _MCE0	=	0x009d
                     009C   484 _REN0	=	0x009c
                     009B   485 _TB80	=	0x009b
                     009A   486 _RB80	=	0x009a
                     0099   487 _TI0	=	0x0099
                     0098   488 _RI0	=	0x0098
                     00AF   489 _EA	=	0x00af
                     00AE   490 _ESPI0	=	0x00ae
                     00AD   491 _ET2	=	0x00ad
                     00AC   492 _ES0	=	0x00ac
                     00AB   493 _ET1	=	0x00ab
                     00AA   494 _EX1	=	0x00aa
                     00A9   495 _ET0	=	0x00a9
                     00A8   496 _EX0	=	0x00a8
                     00B7   497 _SPIF1	=	0x00b7
                     00B6   498 _WCOL1	=	0x00b6
                     00B5   499 _MODF1	=	0x00b5
                     00B4   500 _RXOVRN1	=	0x00b4
                     00B3   501 _NSS1MD1	=	0x00b3
                     00B2   502 _NSS1MD0	=	0x00b2
                     00B1   503 _TXBMT1	=	0x00b1
                     00B0   504 _SPI1EN	=	0x00b0
                     00BE   505 _PSPI0	=	0x00be
                     00BD   506 _PT2	=	0x00bd
                     00BC   507 _PS0	=	0x00bc
                     00BB   508 _PT1	=	0x00bb
                     00BA   509 _PX1	=	0x00ba
                     00B9   510 _PT0	=	0x00b9
                     00B8   511 _PX0	=	0x00b8
                     00C7   512 _MASTER	=	0x00c7
                     00C6   513 _TXMODE	=	0x00c6
                     00C5   514 _STA	=	0x00c5
                     00C4   515 _STO	=	0x00c4
                     00C3   516 _ACKRQ	=	0x00c3
                     00C2   517 _ARBLOST	=	0x00c2
                     00C1   518 _ACK	=	0x00c1
                     00C0   519 _SI	=	0x00c0
                     00CF   520 _TF2H	=	0x00cf
                     00CE   521 _TF2L	=	0x00ce
                     00CD   522 _TF2LEN	=	0x00cd
                     00CC   523 _TF2CEN	=	0x00cc
                     00CB   524 _T2SPLIT	=	0x00cb
                     00CA   525 _TR2	=	0x00ca
                     00C9   526 _T2RCLK	=	0x00c9
                     00C8   527 _T2XCLK	=	0x00c8
                     00D7   528 _CY	=	0x00d7
                     00D6   529 _AC	=	0x00d6
                     00D5   530 _F0	=	0x00d5
                     00D4   531 _RS1	=	0x00d4
                     00D3   532 _RS0	=	0x00d3
                     00D2   533 _OV	=	0x00d2
                     00D1   534 _F1	=	0x00d1
                     00D0   535 _P	=	0x00d0
                     00DF   536 _CF	=	0x00df
                     00DE   537 _CR	=	0x00de
                     00DD   538 _CCF5	=	0x00dd
                     00DC   539 _CCF4	=	0x00dc
                     00DB   540 _CCF3	=	0x00db
                     00DA   541 _CCF2	=	0x00da
                     00D9   542 _CCF1	=	0x00d9
                     00D8   543 _CCF0	=	0x00d8
                     00EF   544 _AD0EN	=	0x00ef
                     00EE   545 _BURSTEN	=	0x00ee
                     00ED   546 _AD0INT	=	0x00ed
                     00EC   547 _AD0BUSY	=	0x00ec
                     00EB   548 _AD0WINT	=	0x00eb
                     00EA   549 _AD0CM2	=	0x00ea
                     00E9   550 _AD0CM1	=	0x00e9
                     00E8   551 _AD0CM0	=	0x00e8
                     00FF   552 _SPIF0	=	0x00ff
                     00FE   553 _WCOL0	=	0x00fe
                     00FD   554 _MODF0	=	0x00fd
                     00FC   555 _RXOVRN0	=	0x00fc
                     00FB   556 _NSS0MD1	=	0x00fb
                     00FA   557 _NSS0MD0	=	0x00fa
                     00F9   558 _TXBMT0	=	0x00f9
                     00F8   559 _SPI0EN	=	0x00f8
                     00A0   560 _LED_RED	=	0x00a0
                     00A5   561 _LED_GREEN	=	0x00a5
                     0086   562 _BUTTON_ENTER	=	0x0086
                     0095   563 _BUTTON_UP	=	0x0095
                     0096   564 _BUTTON_DOWN	=	0x0096
                     0087   565 _IRQ	=	0x0087
                     0094   566 _NSS1	=	0x0094
                     00A6   567 _SDN	=	0x00a6
                     00A6   568 _TDM_SYNC_PIN	=	0x00a6
                            569 ;--------------------------------------------------------
                            570 ; overlayable register banks
                            571 ;--------------------------------------------------------
                            572 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     573 	.ds 8
                            574 ;--------------------------------------------------------
                            575 ; internal ram data
                            576 ;--------------------------------------------------------
                            577 	.area DSEG    (DATA)
                            578 ;--------------------------------------------------------
                            579 ; overlayable items in internal ram 
                            580 ;--------------------------------------------------------
                            581 ;--------------------------------------------------------
                            582 ; Stack segment in internal ram 
                            583 ;--------------------------------------------------------
                            584 	.area	SSEG	(DATA)
   008C                     585 __start__stack:
   008C                     586 	.ds	1
                            587 
                            588 ;--------------------------------------------------------
                            589 ; indirectly addressable internal ram data
                            590 ;--------------------------------------------------------
                            591 	.area ISEG    (DATA)
                            592 ;--------------------------------------------------------
                            593 ; absolute internal ram data
                            594 ;--------------------------------------------------------
                            595 	.area IABS    (ABS,DATA)
                            596 	.area IABS    (ABS,DATA)
                            597 ;--------------------------------------------------------
                            598 ; bit data
                            599 ;--------------------------------------------------------
                            600 	.area BSEG    (BIT)
   0004                     601 _feature_golay::
   0004                     602 	.ds 1
   0005                     603 _feature_opportunistic_resend::
   0005                     604 	.ds 1
   0006                     605 _feature_mavlink_framing::
   0006                     606 	.ds 1
   0007                     607 _feature_rtscts::
   0007                     608 	.ds 1
                            609 ;--------------------------------------------------------
                            610 ; paged external ram data
                            611 ;--------------------------------------------------------
                            612 	.area PSEG    (PAG,XDATA)
   0032                     613 _g_board_frequency::
   0032                     614 	.ds 1
   0033                     615 _g_board_bl_version::
   0033                     616 	.ds 1
   0034                     617 _errors::
   0034                     618 	.ds 12
   0040                     619 _statistics::
   0040                     620 	.ds 4
   0044                     621 _remote_statistics::
   0044                     622 	.ds 4
   0048                     623 _radio_init_freq_min_1_151:
   0048                     624 	.ds 4
   004C                     625 _radio_init_freq_max_1_151:
   004C                     626 	.ds 4
   0050                     627 _radio_init_channel_spacing_1_151:
   0050                     628 	.ds 4
   0054                     629 _radio_init_txpower_1_151:
   0054                     630 	.ds 1
                            631 ;--------------------------------------------------------
                            632 ; external ram data
                            633 ;--------------------------------------------------------
                            634 	.area XSEG    (XDATA)
                            635 ;--------------------------------------------------------
                            636 ; absolute external ram data
                            637 ;--------------------------------------------------------
                            638 	.area XABS    (ABS,XDATA)
                            639 ;--------------------------------------------------------
                            640 ; external initialized ram data
                            641 ;--------------------------------------------------------
                            642 	.area XISEG   (XDATA)
                            643 	.area HOME    (CODE)
                            644 	.area GSINIT0 (CODE)
                            645 	.area GSINIT1 (CODE)
                            646 	.area GSINIT2 (CODE)
                            647 	.area GSINIT3 (CODE)
                            648 	.area GSINIT4 (CODE)
                            649 	.area GSINIT5 (CODE)
                            650 	.area GSINIT  (CODE)
                            651 	.area GSFINAL (CODE)
                            652 	.area CSEG    (CODE)
                            653 ;--------------------------------------------------------
                            654 ; interrupt vector 
                            655 ;--------------------------------------------------------
                            656 	.area HOME    (CODE)
   0400                     657 __interrupt_vect:
   0400 02 04 79      [24]  658 	ljmp	__sdcc_gsinit_startup
   0403 02 3D 7F      [24]  659 	ljmp	_Receiver_ISR
   0406                     660 	.ds	5
   040B 32            [24]  661 	reti
   040C                     662 	.ds	7
   0413 32            [24]  663 	reti
   0414                     664 	.ds	7
   041B 32            [24]  665 	reti
   041C                     666 	.ds	7
   0423 02 3E C5      [24]  667 	ljmp	_serial_interrupt
   0426                     668 	.ds	5
   042B 02 55 E8      [24]  669 	ljmp	_T2_ISR
   042E                     670 	.ds	5
   0433 32            [24]  671 	reti
   0434                     672 	.ds	7
   043B 32            [24]  673 	reti
   043C                     674 	.ds	7
   0443 32            [24]  675 	reti
   0444                     676 	.ds	7
   044B 32            [24]  677 	reti
   044C                     678 	.ds	7
   0453 32            [24]  679 	reti
   0454                     680 	.ds	7
   045B 32            [24]  681 	reti
   045C                     682 	.ds	7
   0463 32            [24]  683 	reti
   0464                     684 	.ds	7
   046B 32            [24]  685 	reti
   046C                     686 	.ds	7
   0473 02 55 5E      [24]  687 	ljmp	_T3_ISR
                            688 ;--------------------------------------------------------
                            689 ; global & static initialisations
                            690 ;--------------------------------------------------------
                            691 	.area HOME    (CODE)
                            692 	.area GSINIT  (CODE)
                            693 	.area GSFINAL (CODE)
                            694 	.area GSINIT  (CODE)
                            695 	.globl __sdcc_gsinit_startup
                            696 	.globl __sdcc_program_startup
                            697 	.globl __start__stack
                            698 	.globl __mcs51_genXINIT
                            699 	.globl __mcs51_genXRAMCLEAR
                            700 	.globl __mcs51_genRAMCLEAR
                            701 	.area GSFINAL (CODE)
   04F6 02 04 76      [24]  702 	ljmp	__sdcc_program_startup
                            703 ;--------------------------------------------------------
                            704 ; Home
                            705 ;--------------------------------------------------------
                            706 	.area HOME    (CODE)
                            707 	.area HOME    (CODE)
   0476                     708 __sdcc_program_startup:
   0476 02 11 72      [24]  709 	ljmp	_main
                            710 ;	return from main will return to caller
                            711 ;--------------------------------------------------------
                            712 ; code
                            713 ;--------------------------------------------------------
                            714 	.area CSEG    (CODE)
                            715 ;------------------------------------------------------------
                            716 ;Allocation info for local variables in function 'main'
                            717 ;------------------------------------------------------------
                            718 ;	radio/main.c:97: main(void)
                            719 ;	-----------------------------------------
                            720 ;	 function main
                            721 ;	-----------------------------------------
   1172                     722 _main:
                     0007   723 	ar7 = 0x07
                     0006   724 	ar6 = 0x06
                     0005   725 	ar5 = 0x05
                     0004   726 	ar4 = 0x04
                     0003   727 	ar3 = 0x03
                     0002   728 	ar2 = 0x02
                     0001   729 	ar1 = 0x01
                     0000   730 	ar0 = 0x00
                            731 ;	radio/main.c:102: g_board_frequency = BOARD_FREQUENCY_REG;
   1172 AF C4         [24]  732 	mov	r7,_ADC0GTH
   1174 78 32         [12]  733 	mov	r0,#_g_board_frequency
   1176 EF            [12]  734 	mov	a,r7
   1177 F2            [24]  735 	movx	@r0,a
                            736 ;	radio/main.c:103: g_board_bl_version = BOARD_BL_VERSION_REG;
   1178 AF C3         [24]  737 	mov	r7,_ADC0GTL
   117A 78 33         [12]  738 	mov	r0,#_g_board_bl_version
   117C EF            [12]  739 	mov	a,r7
   117D F2            [24]  740 	movx	@r0,a
                            741 ;	radio/main.c:107: param_load();
   117E 12 27 92      [24]  742 	lcall	_param_load
                            743 ;	radio/main.c:110: feature_mavlink_framing = param_get(PARAM_MAVLINK)?true:false;
   1181 75 82 06      [24]  744 	mov	dpl,#0x06
   1184 12 27 64      [24]  745 	lcall	_param_get
   1187 AC 82         [24]  746 	mov	r4,dpl
   1189 AD 83         [24]  747 	mov	r5,dph
   118B AE F0         [24]  748 	mov	r6,b
   118D FF            [12]  749 	mov	r7,a
   118E EC            [12]  750 	mov	a,r4
   118F 4D            [12]  751 	orl	a,r5
   1190 4E            [12]  752 	orl	a,r6
   1191 4F            [12]  753 	orl	a,r7
   1192 24 FF         [12]  754 	add	a,#0xff
   1194 92 06         [24]  755 	mov	_feature_mavlink_framing,c
                            756 ;	radio/main.c:111: feature_opportunistic_resend = param_get(PARAM_OPPRESEND)?true:false;
   1196 75 82 07      [24]  757 	mov	dpl,#0x07
   1199 12 27 64      [24]  758 	lcall	_param_get
   119C AC 82         [24]  759 	mov	r4,dpl
   119E AD 83         [24]  760 	mov	r5,dph
   11A0 AE F0         [24]  761 	mov	r6,b
   11A2 FF            [12]  762 	mov	r7,a
   11A3 EC            [12]  763 	mov	a,r4
   11A4 4D            [12]  764 	orl	a,r5
   11A5 4E            [12]  765 	orl	a,r6
   11A6 4F            [12]  766 	orl	a,r7
   11A7 24 FF         [12]  767 	add	a,#0xff
   11A9 92 05         [24]  768 	mov	_feature_opportunistic_resend,c
                            769 ;	radio/main.c:112: feature_golay = param_get(PARAM_ECC)?true:false;
   11AB 75 82 05      [24]  770 	mov	dpl,#0x05
   11AE 12 27 64      [24]  771 	lcall	_param_get
   11B1 AC 82         [24]  772 	mov	r4,dpl
   11B3 AD 83         [24]  773 	mov	r5,dph
   11B5 AE F0         [24]  774 	mov	r6,b
   11B7 FF            [12]  775 	mov	r7,a
   11B8 EC            [12]  776 	mov	a,r4
   11B9 4D            [12]  777 	orl	a,r5
   11BA 4E            [12]  778 	orl	a,r6
   11BB 4F            [12]  779 	orl	a,r7
   11BC 24 FF         [12]  780 	add	a,#0xff
   11BE 92 04         [24]  781 	mov	_feature_golay,c
                            782 ;	radio/main.c:113: feature_rtscts = param_get(PARAM_RTSCTS)?true:false;
   11C0 75 82 0E      [24]  783 	mov	dpl,#0x0E
   11C3 12 27 64      [24]  784 	lcall	_param_get
   11C6 AC 82         [24]  785 	mov	r4,dpl
   11C8 AD 83         [24]  786 	mov	r5,dph
   11CA AE F0         [24]  787 	mov	r6,b
   11CC FF            [12]  788 	mov	r7,a
   11CD EC            [12]  789 	mov	a,r4
   11CE 4D            [12]  790 	orl	a,r5
   11CF 4E            [12]  791 	orl	a,r6
   11D0 4F            [12]  792 	orl	a,r7
   11D1 24 FF         [12]  793 	add	a,#0xff
   11D3 92 07         [24]  794 	mov	_feature_rtscts,c
                            795 ;	radio/main.c:116: hardware_init();
   11D5 12 12 32      [24]  796 	lcall	_hardware_init
                            797 ;	radio/main.c:119: radio_init();
   11D8 12 12 B3      [24]  798 	lcall	_radio_init
                            799 ;	radio/main.c:122: if (!radio_receiver_on()) {
   11DB 12 34 40      [24]  800 	lcall	_radio_receiver_on
   11DE 40 15         [24]  801 	jc	00102$
                            802 ;	radio/main.c:123: panic("failed to enable receiver");
   11E0 74 B5         [12]  803 	mov	a,#__str_0
   11E2 C0 E0         [24]  804 	push	acc
   11E4 74 C7         [12]  805 	mov	a,#(__str_0 >> 8)
   11E6 C0 E0         [24]  806 	push	acc
   11E8 74 80         [12]  807 	mov	a,#0x80
   11EA C0 E0         [24]  808 	push	acc
   11EC 12 11 F8      [24]  809 	lcall	_panic
   11EF 15 81         [12]  810 	dec	sp
   11F1 15 81         [12]  811 	dec	sp
   11F3 15 81         [12]  812 	dec	sp
   11F5                     813 00102$:
                            814 ;	radio/main.c:126: tdm_serial_loop();
   11F5 02 4C 86      [24]  815 	ljmp	_tdm_serial_loop
                            816 ;------------------------------------------------------------
                            817 ;Allocation info for local variables in function 'panic'
                            818 ;------------------------------------------------------------
                            819 ;fmt                       Allocated to stack - sp -4
                            820 ;ap                        Allocated to registers r7 
                            821 ;------------------------------------------------------------
                            822 ;	radio/main.c:130: panic(char *fmt, ...)
                            823 ;	-----------------------------------------
                            824 ;	 function panic
                            825 ;	-----------------------------------------
   11F8                     826 _panic:
                            827 ;	radio/main.c:134: puts("\n**PANIC**");
   11F8 90 C7 CF      [24]  828 	mov	dptr,#__str_1
   11FB 75 F0 80      [24]  829 	mov	b,#0x80
   11FE 12 62 65      [24]  830 	lcall	_puts
                            831 ;	radio/main.c:135: va_start(ap, fmt);
   1201 E5 81         [12]  832 	mov	a,sp
   1203 24 FC         [12]  833 	add	a,#0xFC
   1205 FF            [12]  834 	mov	r7,a
                            835 ;	radio/main.c:136: vprintf(fmt, ap);
   1206 C0 07         [24]  836 	push	ar7
   1208 E5 81         [12]  837 	mov	a,sp
   120A 24 FB         [12]  838 	add	a,#0xfb
   120C F8            [12]  839 	mov	r0,a
   120D 86 82         [24]  840 	mov	dpl,@r0
   120F 08            [12]  841 	inc	r0
   1210 86 83         [24]  842 	mov	dph,@r0
   1212 08            [12]  843 	inc	r0
   1213 86 F0         [24]  844 	mov	b,@r0
   1215 12 2B 2E      [24]  845 	lcall	_vprintfl
   1218 15 81         [12]  846 	dec	sp
                            847 ;	radio/main.c:137: puts("");
   121A 90 C7 DA      [24]  848 	mov	dptr,#__str_2
   121D 75 F0 80      [24]  849 	mov	b,#0x80
   1220 12 62 65      [24]  850 	lcall	_puts
                            851 ;	radio/main.c:139: EA = 1;
   1223 D2 AF         [12]  852 	setb	_EA
                            853 ;	radio/main.c:140: ES0 = 1;
   1225 D2 AC         [12]  854 	setb	_ES0
                            855 ;	radio/main.c:142: delay_msec(1000);
   1227 90 03 E8      [24]  856 	mov	dptr,#0x03E8
   122A 12 55 DF      [24]  857 	lcall	_delay_msec
                            858 ;	radio/main.c:145: RSTSRC |= (1 << 4);
   122D 43 EF 10      [24]  859 	orl	_RSTSRC,#0x10
   1230                     860 00103$:
   1230 80 FE         [24]  861 	sjmp	00103$
                            862 ;------------------------------------------------------------
                            863 ;Allocation info for local variables in function 'hardware_init'
                            864 ;------------------------------------------------------------
                            865 ;	radio/main.c:151: hardware_init(void)
                            866 ;	-----------------------------------------
                            867 ;	 function hardware_init
                            868 ;	-----------------------------------------
   1232                     869 _hardware_init:
                            870 ;	radio/main.c:156: PCA0MD	&= ~0x40;
   1232 AF D9         [24]  871 	mov	r7,_PCA0MD
   1234 74 BF         [12]  872 	mov	a,#0xBF
   1236 5F            [12]  873 	anl	a,r7
   1237 F5 D9         [12]  874 	mov	_PCA0MD,a
                            875 ;	radio/main.c:159: FLSCL	 =  0x40;
   1239 75 B6 40      [24]  876 	mov	_FLSCL,#0x40
                            877 ;	radio/main.c:160: OSCICN	 =  0x8F;
   123C 75 B2 8F      [24]  878 	mov	_OSCICN,#0x8F
                            879 ;	radio/main.c:161: CLKSEL	 =  0x00;
   123F 75 A9 00      [24]  880 	mov	_CLKSEL,#0x00
                            881 ;	radio/main.c:164: VDM0CN	 =  0x80;
   1242 75 FF 80      [24]  882 	mov	_VDM0CN,#0x80
                            883 ;	radio/main.c:165: for (i = 0; i < 350; i++);	// Wait 100us for initialization
   1245 7E 5E         [12]  884 	mov	r6,#0x5E
   1247 7F 01         [12]  885 	mov	r7,#0x01
   1249                     886 00104$:
   1249 1E            [12]  887 	dec	r6
   124A BE FF 01      [24]  888 	cjne	r6,#0xFF,00114$
   124D 1F            [12]  889 	dec	r7
   124E                     890 00114$:
   124E EE            [12]  891 	mov	a,r6
   124F 4F            [12]  892 	orl	a,r7
   1250 70 F7         [24]  893 	jnz	00104$
                            894 ;	radio/main.c:166: RSTSRC	 =  0x06;		// enable brown out and missing clock reset sources
   1252 75 EF 06      [24]  895 	mov	_RSTSRC,#0x06
                            896 ;	radio/main.c:175: P0MDOUT	 =  0x10;		// UART Tx push-pull
   1255 75 A4 10      [24]  897 	mov	_P0MDOUT,#0x10
                            898 ;	radio/main.c:176: SFRPAGE	 =  CONFIG_PAGE;
   1258 75 A7 0F      [24]  899 	mov	_SFRPAGE,#0x0F
                            900 ;	radio/main.c:177: P0DRV	 =  0x10;		// UART TX
   125B 75 A4 10      [24]  901 	mov	_P0DRV,#0x10
                            902 ;	radio/main.c:178: SFRPAGE	 =  LEGACY_PAGE;
   125E 75 A7 00      [24]  903 	mov	_SFRPAGE,#0x00
                            904 ;	radio/main.c:179: XBR0	 =  0x01;		// UART enable
   1261 75 E1 01      [24]  905 	mov	_XBR0,#0x01
                            906 ;	radio/main.c:187: XBR1	|= 0x40;	// enable SPI in 3-wire mode
   1264 43 E2 40      [24]  907 	orl	_XBR1,#0x40
                            908 ;	radio/main.c:188: P1MDOUT	|= 0xF5;	// SCK1, MOSI1, MISO1 push-pull
   1267 43 A5 F5      [24]  909 	orl	_P1MDOUT,#0xF5
                            910 ;	radio/main.c:190: SFRPAGE	 = CONFIG_PAGE;
   126A 75 A7 0F      [24]  911 	mov	_SFRPAGE,#0x0F
                            912 ;	radio/main.c:191: P1DRV	|= 0xF5;	// SPI signals use high-current mode, LEDs and PAEN High current drive
   126D 43 A5 F5      [24]  913 	orl	_P1DRV,#0xF5
                            914 ;	radio/main.c:192: P2DRV	|= 0xFF;	
   1270 E5 A6         [12]  915 	mov	a,_P2DRV
   1272 75 A6 FF      [24]  916 	mov	_P2DRV,#0xFF
                            917 ;	radio/main.c:193: SFRPAGE	 = LEGACY_PAGE;
   1275 75 A7 00      [24]  918 	mov	_SFRPAGE,#0x00
                            919 ;	radio/main.c:194: SPI1CFG	 = 0x40;	// master mode
   1278 75 84 40      [24]  920 	mov	_SPI1CFG,#0x40
                            921 ;	radio/main.c:195: SPI1CN	 = 0x00;	// 3 wire master mode
   127B 75 B0 00      [24]  922 	mov	_SPI1CN,#0x00
                            923 ;	radio/main.c:196: SPI1CKR	 = 0x00;	// Initialise SPI prescaler to divide-by-2 (12.25MHz, technically out of spec)
   127E 75 85 00      [24]  924 	mov	_SPI1CKR,#0x00
                            925 ;	radio/main.c:197: SPI1CN	|= 0x01;	// enable SPI
   1281 43 B0 01      [24]  926 	orl	_SPI1CN,#0x01
                            927 ;	radio/main.c:198: NSS1	 = 1;		// set NSS high
   1284 D2 94         [12]  928 	setb	_NSS1
                            929 ;	radio/main.c:201: IE0	 = 0;
   1286 C2 89         [12]  930 	clr	_IE0
                            931 ;	radio/main.c:204: timer_init();
   1288 12 56 8E      [24]  932 	lcall	_timer_init
                            933 ;	radio/main.c:207: serial_init(param_get(PARAM_SERIAL_SPEED));
   128B 75 82 01      [24]  934 	mov	dpl,#0x01
   128E 12 27 64      [24]  935 	lcall	_param_get
   1291 AC 82         [24]  936 	mov	r4,dpl
   1293 8C 82         [24]  937 	mov	dpl,r4
   1295 12 3F F1      [24]  938 	lcall	_serial_init
                            939 ;	radio/main.c:210: IP = 0;
   1298 75 B8 00      [24]  940 	mov	_IP,#0x00
                            941 ;	radio/main.c:213: EA = 1;
   129B D2 AF         [12]  942 	setb	_EA
                            943 ;	radio/main.c:216: LED_RADIO = LED_ON;
   129D C2 A5         [12]  944 	clr	_LED_GREEN
                            945 ;	radio/main.c:217: LED_BOOTLOADER = LED_OFF;
   129F D2 A0         [12]  946 	setb	_LED_RED
                            947 ;	radio/main.c:220: AD0EN = 1;	// Enable ADC0
   12A1 D2 EF         [12]  948 	setb	_AD0EN
                            949 ;	radio/main.c:221: ADC0CF = 0xF9;  // Set amp0gn=1 (1:1)
   12A3 75 BC F9      [24]  950 	mov	_ADC0CF,#0xF9
                            951 ;	radio/main.c:222: ADC0AC = 0x00;
   12A6 75 BA 00      [24]  952 	mov	_ADC0AC,#0x00
                            953 ;	radio/main.c:223: ADC0MX = 0x1B;	// Set ADC0MX to temp sensor
   12A9 75 BB 1B      [24]  954 	mov	_ADC0MX,#0x1B
                            955 ;	radio/main.c:224: REF0CN = 0x07;	// Define reference and enable temp sensor
   12AC 75 D1 07      [24]  956 	mov	_REF0CN,#0x07
                            957 ;	radio/main.c:234: XBR2	 =  0x40;		// Crossbar (GPIO) enable
   12AF 75 E3 40      [24]  958 	mov	_XBR2,#0x40
   12B2 22            [24]  959 	ret
                            960 ;------------------------------------------------------------
                            961 ;Allocation info for local variables in function 'radio_init'
                            962 ;------------------------------------------------------------
                            963 ;	radio/main.c:238: radio_init(void)
                            964 ;	-----------------------------------------
                            965 ;	 function radio_init
                            966 ;	-----------------------------------------
   12B3                     967 _radio_init:
                            968 ;	radio/main.c:245: if (!radio_initialise()) {
   12B3 12 34 7F      [24]  969 	lcall	_radio_initialise
   12B6 40 15         [24]  970 	jc	00102$
                            971 ;	radio/main.c:246: panic("radio_initialise failed");
   12B8 74 DB         [12]  972 	mov	a,#__str_3
   12BA C0 E0         [24]  973 	push	acc
   12BC 74 C7         [12]  974 	mov	a,#(__str_3 >> 8)
   12BE C0 E0         [24]  975 	push	acc
   12C0 74 80         [12]  976 	mov	a,#0x80
   12C2 C0 E0         [24]  977 	push	acc
   12C4 12 11 F8      [24]  978 	lcall	_panic
   12C7 15 81         [12]  979 	dec	sp
   12C9 15 81         [12]  980 	dec	sp
   12CB 15 81         [12]  981 	dec	sp
   12CD                     982 00102$:
                            983 ;	radio/main.c:249: switch (g_board_frequency) {
   12CD 78 32         [12]  984 	mov	r0,#_g_board_frequency
   12CF E2            [24]  985 	movx	a,@r0
   12D0 B4 43 02      [24]  986 	cjne	a,#0x43,00193$
   12D3 80 1C         [24]  987 	sjmp	00103$
   12D5                     988 00193$:
   12D5 78 32         [12]  989 	mov	r0,#_g_board_frequency
   12D7 E2            [24]  990 	movx	a,@r0
   12D8 B4 47 02      [24]  991 	cjne	a,#0x47,00194$
   12DB 80 43         [24]  992 	sjmp	00104$
   12DD                     993 00194$:
   12DD 78 32         [12]  994 	mov	r0,#_g_board_frequency
   12DF E2            [24]  995 	movx	a,@r0
   12E0 B4 86 02      [24]  996 	cjne	a,#0x86,00195$
   12E3 80 6A         [24]  997 	sjmp	00105$
   12E5                     998 00195$:
   12E5 78 32         [12]  999 	mov	r0,#_g_board_frequency
   12E7 E2            [24] 1000 	movx	a,@r0
   12E8 B4 91 03      [24] 1001 	cjne	a,#0x91,00196$
   12EB 02 13 7C      [24] 1002 	ljmp	00106$
   12EE                    1003 00196$:
   12EE 02 13 A9      [24] 1004 	ljmp	00107$
                           1005 ;	radio/main.c:250: case FREQ_433:
   12F1                    1006 00103$:
                           1007 ;	radio/main.c:251: freq_min = 433050000UL;
   12F1 78 48         [12] 1008 	mov	r0,#_radio_init_freq_min_1_151
   12F3 74 90         [12] 1009 	mov	a,#0x90
   12F5 F2            [24] 1010 	movx	@r0,a
   12F6 08            [12] 1011 	inc	r0
   12F7 74 D1         [12] 1012 	mov	a,#0xD1
   12F9 F2            [24] 1013 	movx	@r0,a
   12FA 08            [12] 1014 	inc	r0
   12FB 74 CF         [12] 1015 	mov	a,#0xCF
   12FD F2            [24] 1016 	movx	@r0,a
   12FE 08            [12] 1017 	inc	r0
   12FF 74 19         [12] 1018 	mov	a,#0x19
   1301 F2            [24] 1019 	movx	@r0,a
                           1020 ;	radio/main.c:252: freq_max = 434790000UL;
   1302 78 4C         [12] 1021 	mov	r0,#_radio_init_freq_max_1_151
   1304 74 70         [12] 1022 	mov	a,#0x70
   1306 F2            [24] 1023 	movx	@r0,a
   1307 08            [12] 1024 	inc	r0
   1308 74 5E         [12] 1025 	mov	a,#0x5E
   130A F2            [24] 1026 	movx	@r0,a
   130B 08            [12] 1027 	inc	r0
   130C 74 EA         [12] 1028 	mov	a,#0xEA
   130E F2            [24] 1029 	movx	@r0,a
   130F 08            [12] 1030 	inc	r0
   1310 74 19         [12] 1031 	mov	a,#0x19
   1312 F2            [24] 1032 	movx	@r0,a
                           1033 ;	radio/main.c:253: txpower = 10;
   1313 78 54         [12] 1034 	mov	r0,#_radio_init_txpower_1_151
   1315 74 0A         [12] 1035 	mov	a,#0x0A
   1317 F2            [24] 1036 	movx	@r0,a
                           1037 ;	radio/main.c:254: num_fh_channels = 10;
   1318 78 18         [12] 1038 	mov	r0,#_num_fh_channels
   131A 74 0A         [12] 1039 	mov	a,#0x0A
   131C F2            [24] 1040 	movx	@r0,a
                           1041 ;	radio/main.c:255: break;
   131D 02 13 E0      [24] 1042 	ljmp	00108$
                           1043 ;	radio/main.c:256: case FREQ_470:
   1320                    1044 00104$:
                           1045 ;	radio/main.c:257: freq_min = 470000000UL;
   1320 78 48         [12] 1046 	mov	r0,#_radio_init_freq_min_1_151
   1322 74 80         [12] 1047 	mov	a,#0x80
   1324 F2            [24] 1048 	movx	@r0,a
   1325 08            [12] 1049 	inc	r0
   1326 74 A1         [12] 1050 	mov	a,#0xA1
   1328 F2            [24] 1051 	movx	@r0,a
   1329 08            [12] 1052 	inc	r0
   132A 74 03         [12] 1053 	mov	a,#0x03
   132C F2            [24] 1054 	movx	@r0,a
   132D 08            [12] 1055 	inc	r0
   132E 74 1C         [12] 1056 	mov	a,#0x1C
   1330 F2            [24] 1057 	movx	@r0,a
                           1058 ;	radio/main.c:258: freq_max = 471000000UL;
   1331 78 4C         [12] 1059 	mov	r0,#_radio_init_freq_max_1_151
   1333 74 C0         [12] 1060 	mov	a,#0xC0
   1335 F2            [24] 1061 	movx	@r0,a
   1336 08            [12] 1062 	inc	r0
   1337 74 E3         [12] 1063 	mov	a,#0xE3
   1339 F2            [24] 1064 	movx	@r0,a
   133A 08            [12] 1065 	inc	r0
   133B 74 12         [12] 1066 	mov	a,#0x12
   133D F2            [24] 1067 	movx	@r0,a
   133E 08            [12] 1068 	inc	r0
   133F 74 1C         [12] 1069 	mov	a,#0x1C
   1341 F2            [24] 1070 	movx	@r0,a
                           1071 ;	radio/main.c:259: txpower = 10;
   1342 78 54         [12] 1072 	mov	r0,#_radio_init_txpower_1_151
   1344 74 0A         [12] 1073 	mov	a,#0x0A
   1346 F2            [24] 1074 	movx	@r0,a
                           1075 ;	radio/main.c:260: num_fh_channels = 10;
   1347 78 18         [12] 1076 	mov	r0,#_num_fh_channels
   1349 74 0A         [12] 1077 	mov	a,#0x0A
   134B F2            [24] 1078 	movx	@r0,a
                           1079 ;	radio/main.c:261: break;
   134C 02 13 E0      [24] 1080 	ljmp	00108$
                           1081 ;	radio/main.c:262: case FREQ_868:
   134F                    1082 00105$:
                           1083 ;	radio/main.c:263: freq_min = 868000000UL;
   134F 78 48         [12] 1084 	mov	r0,#_radio_init_freq_min_1_151
   1351 E4            [12] 1085 	clr	a
   1352 F2            [24] 1086 	movx	@r0,a
   1353 08            [12] 1087 	inc	r0
   1354 74 A1         [12] 1088 	mov	a,#0xA1
   1356 F2            [24] 1089 	movx	@r0,a
   1357 08            [12] 1090 	inc	r0
   1358 74 BC         [12] 1091 	mov	a,#0xBC
   135A F2            [24] 1092 	movx	@r0,a
   135B 08            [12] 1093 	inc	r0
   135C 74 33         [12] 1094 	mov	a,#0x33
   135E F2            [24] 1095 	movx	@r0,a
                           1096 ;	radio/main.c:264: freq_max = 869000000UL;
   135F 78 4C         [12] 1097 	mov	r0,#_radio_init_freq_max_1_151
   1361 74 40         [12] 1098 	mov	a,#0x40
   1363 F2            [24] 1099 	movx	@r0,a
   1364 08            [12] 1100 	inc	r0
   1365 74 E3         [12] 1101 	mov	a,#0xE3
   1367 F2            [24] 1102 	movx	@r0,a
   1368 08            [12] 1103 	inc	r0
   1369 74 CB         [12] 1104 	mov	a,#0xCB
   136B F2            [24] 1105 	movx	@r0,a
   136C 08            [12] 1106 	inc	r0
   136D 74 33         [12] 1107 	mov	a,#0x33
   136F F2            [24] 1108 	movx	@r0,a
                           1109 ;	radio/main.c:265: txpower = 10;
   1370 78 54         [12] 1110 	mov	r0,#_radio_init_txpower_1_151
   1372 74 0A         [12] 1111 	mov	a,#0x0A
   1374 F2            [24] 1112 	movx	@r0,a
                           1113 ;	radio/main.c:266: num_fh_channels = 10;
   1375 78 18         [12] 1114 	mov	r0,#_num_fh_channels
   1377 74 0A         [12] 1115 	mov	a,#0x0A
   1379 F2            [24] 1116 	movx	@r0,a
                           1117 ;	radio/main.c:267: break;
                           1118 ;	radio/main.c:268: case FREQ_915:
   137A 80 64         [24] 1119 	sjmp	00108$
   137C                    1120 00106$:
                           1121 ;	radio/main.c:269: freq_min = 915000000UL;
   137C 78 48         [12] 1122 	mov	r0,#_radio_init_freq_min_1_151
   137E 74 C0         [12] 1123 	mov	a,#0xC0
   1380 F2            [24] 1124 	movx	@r0,a
   1381 08            [12] 1125 	inc	r0
   1382 74 CA         [12] 1126 	mov	a,#0xCA
   1384 F2            [24] 1127 	movx	@r0,a
   1385 08            [12] 1128 	inc	r0
   1386 74 89         [12] 1129 	mov	a,#0x89
   1388 F2            [24] 1130 	movx	@r0,a
   1389 08            [12] 1131 	inc	r0
   138A 74 36         [12] 1132 	mov	a,#0x36
   138C F2            [24] 1133 	movx	@r0,a
                           1134 ;	radio/main.c:270: freq_max = 928000000UL;
   138D 78 4C         [12] 1135 	mov	r0,#_radio_init_freq_max_1_151
   138F E4            [12] 1136 	clr	a
   1390 F2            [24] 1137 	movx	@r0,a
   1391 08            [12] 1138 	inc	r0
   1392 74 28         [12] 1139 	mov	a,#0x28
   1394 F2            [24] 1140 	movx	@r0,a
   1395 08            [12] 1141 	inc	r0
   1396 74 50         [12] 1142 	mov	a,#0x50
   1398 F2            [24] 1143 	movx	@r0,a
   1399 08            [12] 1144 	inc	r0
   139A 74 37         [12] 1145 	mov	a,#0x37
   139C F2            [24] 1146 	movx	@r0,a
                           1147 ;	radio/main.c:271: txpower = 20;
   139D 78 54         [12] 1148 	mov	r0,#_radio_init_txpower_1_151
   139F 74 14         [12] 1149 	mov	a,#0x14
   13A1 F2            [24] 1150 	movx	@r0,a
                           1151 ;	radio/main.c:272: num_fh_channels = MAX_FREQ_CHANNELS;
   13A2 78 18         [12] 1152 	mov	r0,#_num_fh_channels
   13A4 74 32         [12] 1153 	mov	a,#0x32
   13A6 F2            [24] 1154 	movx	@r0,a
                           1155 ;	radio/main.c:273: break;
                           1156 ;	radio/main.c:274: default:
   13A7 80 37         [24] 1157 	sjmp	00108$
   13A9                    1158 00107$:
                           1159 ;	radio/main.c:275: freq_min = 0;
   13A9 78 48         [12] 1160 	mov	r0,#_radio_init_freq_min_1_151
   13AB E4            [12] 1161 	clr	a
   13AC F2            [24] 1162 	movx	@r0,a
   13AD 08            [12] 1163 	inc	r0
   13AE F2            [24] 1164 	movx	@r0,a
   13AF 08            [12] 1165 	inc	r0
   13B0 F2            [24] 1166 	movx	@r0,a
   13B1 08            [12] 1167 	inc	r0
   13B2 F2            [24] 1168 	movx	@r0,a
                           1169 ;	radio/main.c:276: freq_max = 0;
   13B3 78 4C         [12] 1170 	mov	r0,#_radio_init_freq_max_1_151
   13B5 E4            [12] 1171 	clr	a
   13B6 F2            [24] 1172 	movx	@r0,a
   13B7 08            [12] 1173 	inc	r0
   13B8 F2            [24] 1174 	movx	@r0,a
   13B9 08            [12] 1175 	inc	r0
   13BA F2            [24] 1176 	movx	@r0,a
   13BB 08            [12] 1177 	inc	r0
   13BC F2            [24] 1178 	movx	@r0,a
                           1179 ;	radio/main.c:277: txpower = 0;
   13BD 78 54         [12] 1180 	mov	r0,#_radio_init_txpower_1_151
   13BF E4            [12] 1181 	clr	a
   13C0 F2            [24] 1182 	movx	@r0,a
                           1183 ;	radio/main.c:278: panic("bad board frequency %d", g_board_frequency);
   13C1 78 32         [12] 1184 	mov	r0,#_g_board_frequency
   13C3 E2            [24] 1185 	movx	a,@r0
   13C4 FA            [12] 1186 	mov	r2,a
   13C5 7B 00         [12] 1187 	mov	r3,#0x00
   13C7 C0 02         [24] 1188 	push	ar2
   13C9 C0 03         [24] 1189 	push	ar3
   13CB 74 F3         [12] 1190 	mov	a,#__str_4
   13CD C0 E0         [24] 1191 	push	acc
   13CF 74 C7         [12] 1192 	mov	a,#(__str_4 >> 8)
   13D1 C0 E0         [24] 1193 	push	acc
   13D3 74 80         [12] 1194 	mov	a,#0x80
   13D5 C0 E0         [24] 1195 	push	acc
   13D7 12 11 F8      [24] 1196 	lcall	_panic
   13DA E5 81         [12] 1197 	mov	a,sp
   13DC 24 FB         [12] 1198 	add	a,#0xfb
   13DE F5 81         [12] 1199 	mov	sp,a
                           1200 ;	radio/main.c:280: }
   13E0                    1201 00108$:
                           1202 ;	radio/main.c:282: if (param_get(PARAM_NUM_CHANNELS) != 0) {
   13E0 75 82 0A      [24] 1203 	mov	dpl,#0x0A
   13E3 12 27 64      [24] 1204 	lcall	_param_get
   13E6 AA 82         [24] 1205 	mov	r2,dpl
   13E8 AB 83         [24] 1206 	mov	r3,dph
   13EA AE F0         [24] 1207 	mov	r6,b
   13EC FF            [12] 1208 	mov	r7,a
   13ED EA            [12] 1209 	mov	a,r2
   13EE 4B            [12] 1210 	orl	a,r3
   13EF 4E            [12] 1211 	orl	a,r6
   13F0 4F            [12] 1212 	orl	a,r7
   13F1 60 11         [24] 1213 	jz	00110$
                           1214 ;	radio/main.c:283: num_fh_channels = param_get(PARAM_NUM_CHANNELS);
   13F3 75 82 0A      [24] 1215 	mov	dpl,#0x0A
   13F6 12 27 64      [24] 1216 	lcall	_param_get
   13F9 AC 82         [24] 1217 	mov	r4,dpl
   13FB AD 83         [24] 1218 	mov	r5,dph
   13FD AE F0         [24] 1219 	mov	r6,b
   13FF FF            [12] 1220 	mov	r7,a
   1400 78 18         [12] 1221 	mov	r0,#_num_fh_channels
   1402 EC            [12] 1222 	mov	a,r4
   1403 F2            [24] 1223 	movx	@r0,a
   1404                    1224 00110$:
                           1225 ;	radio/main.c:285: if (param_get(PARAM_MIN_FREQ) != 0) {
   1404 75 82 08      [24] 1226 	mov	dpl,#0x08
   1407 12 27 64      [24] 1227 	lcall	_param_get
   140A AC 82         [24] 1228 	mov	r4,dpl
   140C AD 83         [24] 1229 	mov	r5,dph
   140E AE F0         [24] 1230 	mov	r6,b
   1410 FF            [12] 1231 	mov	r7,a
   1411 EC            [12] 1232 	mov	a,r4
   1412 4D            [12] 1233 	orl	a,r5
   1413 4E            [12] 1234 	orl	a,r6
   1414 4F            [12] 1235 	orl	a,r7
   1415 60 37         [24] 1236 	jz	00112$
                           1237 ;	radio/main.c:286: freq_min        = param_get(PARAM_MIN_FREQ) * 1000UL;
   1417 75 82 08      [24] 1238 	mov	dpl,#0x08
   141A 12 27 64      [24] 1239 	lcall	_param_get
   141D AC 82         [24] 1240 	mov	r4,dpl
   141F AD 83         [24] 1241 	mov	r5,dph
   1421 AE F0         [24] 1242 	mov	r6,b
   1423 FF            [12] 1243 	mov	r7,a
   1424 90 05 D7      [24] 1244 	mov	dptr,#__mullong_PARM_2
   1427 EC            [12] 1245 	mov	a,r4
   1428 F0            [24] 1246 	movx	@dptr,a
   1429 ED            [12] 1247 	mov	a,r5
   142A A3            [24] 1248 	inc	dptr
   142B F0            [24] 1249 	movx	@dptr,a
   142C EE            [12] 1250 	mov	a,r6
   142D A3            [24] 1251 	inc	dptr
   142E F0            [24] 1252 	movx	@dptr,a
   142F EF            [12] 1253 	mov	a,r7
   1430 A3            [24] 1254 	inc	dptr
   1431 F0            [24] 1255 	movx	@dptr,a
   1432 90 03 E8      [24] 1256 	mov	dptr,#0x03E8
   1435 E4            [12] 1257 	clr	a
   1436 F5 F0         [12] 1258 	mov	b,a
   1438 12 5E E4      [24] 1259 	lcall	__mullong
   143B 78 48         [12] 1260 	mov	r0,#_radio_init_freq_min_1_151
   143D C0 E0         [24] 1261 	push	acc
   143F E5 82         [12] 1262 	mov	a,dpl
   1441 F2            [24] 1263 	movx	@r0,a
   1442 08            [12] 1264 	inc	r0
   1443 E5 83         [12] 1265 	mov	a,dph
   1445 F2            [24] 1266 	movx	@r0,a
   1446 08            [12] 1267 	inc	r0
   1447 E5 F0         [12] 1268 	mov	a,b
   1449 F2            [24] 1269 	movx	@r0,a
   144A D0 E0         [24] 1270 	pop	acc
   144C 08            [12] 1271 	inc	r0
   144D F2            [24] 1272 	movx	@r0,a
   144E                    1273 00112$:
                           1274 ;	radio/main.c:288: if (param_get(PARAM_MAX_FREQ) != 0) {
   144E 75 82 09      [24] 1275 	mov	dpl,#0x09
   1451 12 27 64      [24] 1276 	lcall	_param_get
   1454 AC 82         [24] 1277 	mov	r4,dpl
   1456 AD 83         [24] 1278 	mov	r5,dph
   1458 AE F0         [24] 1279 	mov	r6,b
   145A FF            [12] 1280 	mov	r7,a
   145B EC            [12] 1281 	mov	a,r4
   145C 4D            [12] 1282 	orl	a,r5
   145D 4E            [12] 1283 	orl	a,r6
   145E 4F            [12] 1284 	orl	a,r7
   145F 60 37         [24] 1285 	jz	00114$
                           1286 ;	radio/main.c:289: freq_max        = param_get(PARAM_MAX_FREQ) * 1000UL;
   1461 75 82 09      [24] 1287 	mov	dpl,#0x09
   1464 12 27 64      [24] 1288 	lcall	_param_get
   1467 AC 82         [24] 1289 	mov	r4,dpl
   1469 AD 83         [24] 1290 	mov	r5,dph
   146B AE F0         [24] 1291 	mov	r6,b
   146D FF            [12] 1292 	mov	r7,a
   146E 90 05 D7      [24] 1293 	mov	dptr,#__mullong_PARM_2
   1471 EC            [12] 1294 	mov	a,r4
   1472 F0            [24] 1295 	movx	@dptr,a
   1473 ED            [12] 1296 	mov	a,r5
   1474 A3            [24] 1297 	inc	dptr
   1475 F0            [24] 1298 	movx	@dptr,a
   1476 EE            [12] 1299 	mov	a,r6
   1477 A3            [24] 1300 	inc	dptr
   1478 F0            [24] 1301 	movx	@dptr,a
   1479 EF            [12] 1302 	mov	a,r7
   147A A3            [24] 1303 	inc	dptr
   147B F0            [24] 1304 	movx	@dptr,a
   147C 90 03 E8      [24] 1305 	mov	dptr,#0x03E8
   147F E4            [12] 1306 	clr	a
   1480 F5 F0         [12] 1307 	mov	b,a
   1482 12 5E E4      [24] 1308 	lcall	__mullong
   1485 78 4C         [12] 1309 	mov	r0,#_radio_init_freq_max_1_151
   1487 C0 E0         [24] 1310 	push	acc
   1489 E5 82         [12] 1311 	mov	a,dpl
   148B F2            [24] 1312 	movx	@r0,a
   148C 08            [12] 1313 	inc	r0
   148D E5 83         [12] 1314 	mov	a,dph
   148F F2            [24] 1315 	movx	@r0,a
   1490 08            [12] 1316 	inc	r0
   1491 E5 F0         [12] 1317 	mov	a,b
   1493 F2            [24] 1318 	movx	@r0,a
   1494 D0 E0         [24] 1319 	pop	acc
   1496 08            [12] 1320 	inc	r0
   1497 F2            [24] 1321 	movx	@r0,a
   1498                    1322 00114$:
                           1323 ;	radio/main.c:291: if (param_get(PARAM_TXPOWER) != 0) {
   1498 75 82 04      [24] 1324 	mov	dpl,#0x04
   149B 12 27 64      [24] 1325 	lcall	_param_get
   149E AC 82         [24] 1326 	mov	r4,dpl
   14A0 AD 83         [24] 1327 	mov	r5,dph
   14A2 AE F0         [24] 1328 	mov	r6,b
   14A4 FF            [12] 1329 	mov	r7,a
   14A5 EC            [12] 1330 	mov	a,r4
   14A6 4D            [12] 1331 	orl	a,r5
   14A7 4E            [12] 1332 	orl	a,r6
   14A8 4F            [12] 1333 	orl	a,r7
   14A9 60 11         [24] 1334 	jz	00116$
                           1335 ;	radio/main.c:292: txpower = param_get(PARAM_TXPOWER);
   14AB 75 82 04      [24] 1336 	mov	dpl,#0x04
   14AE 12 27 64      [24] 1337 	lcall	_param_get
   14B1 AC 82         [24] 1338 	mov	r4,dpl
   14B3 AD 83         [24] 1339 	mov	r5,dph
   14B5 AE F0         [24] 1340 	mov	r6,b
   14B7 FF            [12] 1341 	mov	r7,a
   14B8 78 54         [12] 1342 	mov	r0,#_radio_init_txpower_1_151
   14BA EC            [12] 1343 	mov	a,r4
   14BB F2            [24] 1344 	movx	@r0,a
   14BC                    1345 00116$:
                           1346 ;	radio/main.c:296: txpower = constrain(txpower, BOARD_MINTXPOWER, BOARD_MAXTXPOWER);
   14BC 78 54         [12] 1347 	mov	r0,#_radio_init_txpower_1_151
   14BE E2            [24] 1348 	movx	a,@r0
   14BF FB            [12] 1349 	mov	r3,a
   14C0 7D 00         [12] 1350 	mov	r5,#0x00
   14C2 7E 00         [12] 1351 	mov	r6,#0x00
   14C4 7F 00         [12] 1352 	mov	r7,#0x00
   14C6 78 6F         [12] 1353 	mov	r0,#_constrain_PARM_2
   14C8 E4            [12] 1354 	clr	a
   14C9 F2            [24] 1355 	movx	@r0,a
   14CA 08            [12] 1356 	inc	r0
   14CB F2            [24] 1357 	movx	@r0,a
   14CC 08            [12] 1358 	inc	r0
   14CD F2            [24] 1359 	movx	@r0,a
   14CE 08            [12] 1360 	inc	r0
   14CF F2            [24] 1361 	movx	@r0,a
   14D0 78 73         [12] 1362 	mov	r0,#_constrain_PARM_3
   14D2 74 14         [12] 1363 	mov	a,#0x14
   14D4 F2            [24] 1364 	movx	@r0,a
   14D5 08            [12] 1365 	inc	r0
   14D6 E4            [12] 1366 	clr	a
   14D7 F2            [24] 1367 	movx	@r0,a
   14D8 08            [12] 1368 	inc	r0
   14D9 F2            [24] 1369 	movx	@r0,a
   14DA 08            [12] 1370 	inc	r0
   14DB F2            [24] 1371 	movx	@r0,a
   14DC 8B 82         [24] 1372 	mov	dpl,r3
   14DE 8D 83         [24] 1373 	mov	dph,r5
   14E0 8E F0         [24] 1374 	mov	b,r6
   14E2 EF            [12] 1375 	mov	a,r7
   14E3 12 2A 72      [24] 1376 	lcall	_constrain
   14E6 AC 82         [24] 1377 	mov	r4,dpl
   14E8 78 54         [12] 1378 	mov	r0,#_radio_init_txpower_1_151
   14EA EC            [12] 1379 	mov	a,r4
   14EB F2            [24] 1380 	movx	@r0,a
                           1381 ;	radio/main.c:297: num_fh_channels = constrain(num_fh_channels, 1, MAX_FREQ_CHANNELS);
   14EC 78 18         [12] 1382 	mov	r0,#_num_fh_channels
   14EE E2            [24] 1383 	movx	a,@r0
   14EF FC            [12] 1384 	mov	r4,a
   14F0 7D 00         [12] 1385 	mov	r5,#0x00
   14F2 7E 00         [12] 1386 	mov	r6,#0x00
   14F4 7F 00         [12] 1387 	mov	r7,#0x00
   14F6 78 6F         [12] 1388 	mov	r0,#_constrain_PARM_2
   14F8 74 01         [12] 1389 	mov	a,#0x01
   14FA F2            [24] 1390 	movx	@r0,a
   14FB 08            [12] 1391 	inc	r0
   14FC E4            [12] 1392 	clr	a
   14FD F2            [24] 1393 	movx	@r0,a
   14FE 08            [12] 1394 	inc	r0
   14FF F2            [24] 1395 	movx	@r0,a
   1500 08            [12] 1396 	inc	r0
   1501 F2            [24] 1397 	movx	@r0,a
   1502 78 73         [12] 1398 	mov	r0,#_constrain_PARM_3
   1504 74 32         [12] 1399 	mov	a,#0x32
   1506 F2            [24] 1400 	movx	@r0,a
   1507 08            [12] 1401 	inc	r0
   1508 E4            [12] 1402 	clr	a
   1509 F2            [24] 1403 	movx	@r0,a
   150A 08            [12] 1404 	inc	r0
   150B F2            [24] 1405 	movx	@r0,a
   150C 08            [12] 1406 	inc	r0
   150D F2            [24] 1407 	movx	@r0,a
   150E 8C 82         [24] 1408 	mov	dpl,r4
   1510 8D 83         [24] 1409 	mov	dph,r5
   1512 8E F0         [24] 1410 	mov	b,r6
   1514 EF            [12] 1411 	mov	a,r7
   1515 12 2A 72      [24] 1412 	lcall	_constrain
   1518 AC 82         [24] 1413 	mov	r4,dpl
   151A AD 83         [24] 1414 	mov	r5,dph
   151C AE F0         [24] 1415 	mov	r6,b
   151E FF            [12] 1416 	mov	r7,a
   151F 78 18         [12] 1417 	mov	r0,#_num_fh_channels
   1521 EC            [12] 1418 	mov	a,r4
   1522 F2            [24] 1419 	movx	@r0,a
                           1420 ;	radio/main.c:300: switch (g_board_frequency) {
   1523 78 32         [12] 1421 	mov	r0,#_g_board_frequency
   1525 E2            [24] 1422 	movx	a,@r0
   1526 B4 43 02      [24] 1423 	cjne	a,#0x43,00201$
   1529 80 1E         [24] 1424 	sjmp	00117$
   152B                    1425 00201$:
   152B 78 32         [12] 1426 	mov	r0,#_g_board_frequency
   152D E2            [24] 1427 	movx	a,@r0
   152E B4 47 03      [24] 1428 	cjne	a,#0x47,00202$
   1531 02 15 D8      [24] 1429 	ljmp	00118$
   1534                    1430 00202$:
   1534 78 32         [12] 1431 	mov	r0,#_g_board_frequency
   1536 E2            [24] 1432 	movx	a,@r0
   1537 B4 86 03      [24] 1433 	cjne	a,#0x86,00203$
   153A 02 16 69      [24] 1434 	ljmp	00119$
   153D                    1435 00203$:
   153D 78 32         [12] 1436 	mov	r0,#_g_board_frequency
   153F E2            [24] 1437 	movx	a,@r0
   1540 B4 91 03      [24] 1438 	cjne	a,#0x91,00204$
   1543 02 16 FA      [24] 1439 	ljmp	00120$
   1546                    1440 00204$:
   1546 02 17 88      [24] 1441 	ljmp	00121$
                           1442 ;	radio/main.c:301: case FREQ_433:
   1549                    1443 00117$:
                           1444 ;	radio/main.c:302: freq_min = constrain(freq_min, 414000000UL, 460000000UL);
   1549 78 6F         [12] 1445 	mov	r0,#_constrain_PARM_2
   154B 74 80         [12] 1446 	mov	a,#0x80
   154D F2            [24] 1447 	movx	@r0,a
   154E 08            [12] 1448 	inc	r0
   154F 74 23         [12] 1449 	mov	a,#0x23
   1551 F2            [24] 1450 	movx	@r0,a
   1552 08            [12] 1451 	inc	r0
   1553 74 AD         [12] 1452 	mov	a,#0xAD
   1555 F2            [24] 1453 	movx	@r0,a
   1556 08            [12] 1454 	inc	r0
   1557 74 18         [12] 1455 	mov	a,#0x18
   1559 F2            [24] 1456 	movx	@r0,a
   155A 78 73         [12] 1457 	mov	r0,#_constrain_PARM_3
   155C E4            [12] 1458 	clr	a
   155D F2            [24] 1459 	movx	@r0,a
   155E 08            [12] 1460 	inc	r0
   155F 74 0B         [12] 1461 	mov	a,#0x0B
   1561 F2            [24] 1462 	movx	@r0,a
   1562 08            [12] 1463 	inc	r0
   1563 74 6B         [12] 1464 	mov	a,#0x6B
   1565 F2            [24] 1465 	movx	@r0,a
   1566 08            [12] 1466 	inc	r0
   1567 74 1B         [12] 1467 	mov	a,#0x1B
   1569 F2            [24] 1468 	movx	@r0,a
   156A 78 48         [12] 1469 	mov	r0,#_radio_init_freq_min_1_151
   156C E2            [24] 1470 	movx	a,@r0
   156D F5 82         [12] 1471 	mov	dpl,a
   156F 08            [12] 1472 	inc	r0
   1570 E2            [24] 1473 	movx	a,@r0
   1571 F5 83         [12] 1474 	mov	dph,a
   1573 08            [12] 1475 	inc	r0
   1574 E2            [24] 1476 	movx	a,@r0
   1575 F5 F0         [12] 1477 	mov	b,a
   1577 08            [12] 1478 	inc	r0
   1578 E2            [24] 1479 	movx	a,@r0
   1579 12 2A 72      [24] 1480 	lcall	_constrain
   157C 78 48         [12] 1481 	mov	r0,#_radio_init_freq_min_1_151
   157E C0 E0         [24] 1482 	push	acc
   1580 E5 82         [12] 1483 	mov	a,dpl
   1582 F2            [24] 1484 	movx	@r0,a
   1583 08            [12] 1485 	inc	r0
   1584 E5 83         [12] 1486 	mov	a,dph
   1586 F2            [24] 1487 	movx	@r0,a
   1587 08            [12] 1488 	inc	r0
   1588 E5 F0         [12] 1489 	mov	a,b
   158A F2            [24] 1490 	movx	@r0,a
   158B D0 E0         [24] 1491 	pop	acc
   158D 08            [12] 1492 	inc	r0
   158E F2            [24] 1493 	movx	@r0,a
                           1494 ;	radio/main.c:303: freq_max = constrain(freq_max, 414000000UL, 460000000UL);
   158F 78 6F         [12] 1495 	mov	r0,#_constrain_PARM_2
   1591 74 80         [12] 1496 	mov	a,#0x80
   1593 F2            [24] 1497 	movx	@r0,a
   1594 08            [12] 1498 	inc	r0
   1595 74 23         [12] 1499 	mov	a,#0x23
   1597 F2            [24] 1500 	movx	@r0,a
   1598 08            [12] 1501 	inc	r0
   1599 74 AD         [12] 1502 	mov	a,#0xAD
   159B F2            [24] 1503 	movx	@r0,a
   159C 08            [12] 1504 	inc	r0
   159D 74 18         [12] 1505 	mov	a,#0x18
   159F F2            [24] 1506 	movx	@r0,a
   15A0 78 73         [12] 1507 	mov	r0,#_constrain_PARM_3
   15A2 E4            [12] 1508 	clr	a
   15A3 F2            [24] 1509 	movx	@r0,a
   15A4 08            [12] 1510 	inc	r0
   15A5 74 0B         [12] 1511 	mov	a,#0x0B
   15A7 F2            [24] 1512 	movx	@r0,a
   15A8 08            [12] 1513 	inc	r0
   15A9 74 6B         [12] 1514 	mov	a,#0x6B
   15AB F2            [24] 1515 	movx	@r0,a
   15AC 08            [12] 1516 	inc	r0
   15AD 74 1B         [12] 1517 	mov	a,#0x1B
   15AF F2            [24] 1518 	movx	@r0,a
   15B0 78 4C         [12] 1519 	mov	r0,#_radio_init_freq_max_1_151
   15B2 E2            [24] 1520 	movx	a,@r0
   15B3 F5 82         [12] 1521 	mov	dpl,a
   15B5 08            [12] 1522 	inc	r0
   15B6 E2            [24] 1523 	movx	a,@r0
   15B7 F5 83         [12] 1524 	mov	dph,a
   15B9 08            [12] 1525 	inc	r0
   15BA E2            [24] 1526 	movx	a,@r0
   15BB F5 F0         [12] 1527 	mov	b,a
   15BD 08            [12] 1528 	inc	r0
   15BE E2            [24] 1529 	movx	a,@r0
   15BF 12 2A 72      [24] 1530 	lcall	_constrain
   15C2 78 4C         [12] 1531 	mov	r0,#_radio_init_freq_max_1_151
   15C4 C0 E0         [24] 1532 	push	acc
   15C6 E5 82         [12] 1533 	mov	a,dpl
   15C8 F2            [24] 1534 	movx	@r0,a
   15C9 08            [12] 1535 	inc	r0
   15CA E5 83         [12] 1536 	mov	a,dph
   15CC F2            [24] 1537 	movx	@r0,a
   15CD 08            [12] 1538 	inc	r0
   15CE E5 F0         [12] 1539 	mov	a,b
   15D0 F2            [24] 1540 	movx	@r0,a
   15D1 D0 E0         [24] 1541 	pop	acc
   15D3 08            [12] 1542 	inc	r0
   15D4 F2            [24] 1543 	movx	@r0,a
                           1544 ;	radio/main.c:304: break;
   15D5 02 17 A7      [24] 1545 	ljmp	00122$
                           1546 ;	radio/main.c:305: case FREQ_470:
   15D8                    1547 00118$:
                           1548 ;	radio/main.c:306: freq_min = constrain(freq_min, 450000000UL, 490000000UL);
   15D8 78 6F         [12] 1549 	mov	r0,#_constrain_PARM_2
   15DA 74 80         [12] 1550 	mov	a,#0x80
   15DC F2            [24] 1551 	movx	@r0,a
   15DD 08            [12] 1552 	inc	r0
   15DE 74 74         [12] 1553 	mov	a,#0x74
   15E0 F2            [24] 1554 	movx	@r0,a
   15E1 08            [12] 1555 	inc	r0
   15E2 74 D2         [12] 1556 	mov	a,#0xD2
   15E4 F2            [24] 1557 	movx	@r0,a
   15E5 08            [12] 1558 	inc	r0
   15E6 74 1A         [12] 1559 	mov	a,#0x1A
   15E8 F2            [24] 1560 	movx	@r0,a
   15E9 78 73         [12] 1561 	mov	r0,#_constrain_PARM_3
   15EB 74 80         [12] 1562 	mov	a,#0x80
   15ED F2            [24] 1563 	movx	@r0,a
   15EE 08            [12] 1564 	inc	r0
   15EF 74 CE         [12] 1565 	mov	a,#0xCE
   15F1 F2            [24] 1566 	movx	@r0,a
   15F2 08            [12] 1567 	inc	r0
   15F3 74 34         [12] 1568 	mov	a,#0x34
   15F5 F2            [24] 1569 	movx	@r0,a
   15F6 08            [12] 1570 	inc	r0
   15F7 74 1D         [12] 1571 	mov	a,#0x1D
   15F9 F2            [24] 1572 	movx	@r0,a
   15FA 78 48         [12] 1573 	mov	r0,#_radio_init_freq_min_1_151
   15FC E2            [24] 1574 	movx	a,@r0
   15FD F5 82         [12] 1575 	mov	dpl,a
   15FF 08            [12] 1576 	inc	r0
   1600 E2            [24] 1577 	movx	a,@r0
   1601 F5 83         [12] 1578 	mov	dph,a
   1603 08            [12] 1579 	inc	r0
   1604 E2            [24] 1580 	movx	a,@r0
   1605 F5 F0         [12] 1581 	mov	b,a
   1607 08            [12] 1582 	inc	r0
   1608 E2            [24] 1583 	movx	a,@r0
   1609 12 2A 72      [24] 1584 	lcall	_constrain
   160C 78 48         [12] 1585 	mov	r0,#_radio_init_freq_min_1_151
   160E C0 E0         [24] 1586 	push	acc
   1610 E5 82         [12] 1587 	mov	a,dpl
   1612 F2            [24] 1588 	movx	@r0,a
   1613 08            [12] 1589 	inc	r0
   1614 E5 83         [12] 1590 	mov	a,dph
   1616 F2            [24] 1591 	movx	@r0,a
   1617 08            [12] 1592 	inc	r0
   1618 E5 F0         [12] 1593 	mov	a,b
   161A F2            [24] 1594 	movx	@r0,a
   161B D0 E0         [24] 1595 	pop	acc
   161D 08            [12] 1596 	inc	r0
   161E F2            [24] 1597 	movx	@r0,a
                           1598 ;	radio/main.c:307: freq_max = constrain(freq_max, 450000000UL, 490000000UL);
   161F 78 6F         [12] 1599 	mov	r0,#_constrain_PARM_2
   1621 74 80         [12] 1600 	mov	a,#0x80
   1623 F2            [24] 1601 	movx	@r0,a
   1624 08            [12] 1602 	inc	r0
   1625 74 74         [12] 1603 	mov	a,#0x74
   1627 F2            [24] 1604 	movx	@r0,a
   1628 08            [12] 1605 	inc	r0
   1629 74 D2         [12] 1606 	mov	a,#0xD2
   162B F2            [24] 1607 	movx	@r0,a
   162C 08            [12] 1608 	inc	r0
   162D 74 1A         [12] 1609 	mov	a,#0x1A
   162F F2            [24] 1610 	movx	@r0,a
   1630 78 73         [12] 1611 	mov	r0,#_constrain_PARM_3
   1632 74 80         [12] 1612 	mov	a,#0x80
   1634 F2            [24] 1613 	movx	@r0,a
   1635 08            [12] 1614 	inc	r0
   1636 74 CE         [12] 1615 	mov	a,#0xCE
   1638 F2            [24] 1616 	movx	@r0,a
   1639 08            [12] 1617 	inc	r0
   163A 74 34         [12] 1618 	mov	a,#0x34
   163C F2            [24] 1619 	movx	@r0,a
   163D 08            [12] 1620 	inc	r0
   163E 74 1D         [12] 1621 	mov	a,#0x1D
   1640 F2            [24] 1622 	movx	@r0,a
   1641 78 4C         [12] 1623 	mov	r0,#_radio_init_freq_max_1_151
   1643 E2            [24] 1624 	movx	a,@r0
   1644 F5 82         [12] 1625 	mov	dpl,a
   1646 08            [12] 1626 	inc	r0
   1647 E2            [24] 1627 	movx	a,@r0
   1648 F5 83         [12] 1628 	mov	dph,a
   164A 08            [12] 1629 	inc	r0
   164B E2            [24] 1630 	movx	a,@r0
   164C F5 F0         [12] 1631 	mov	b,a
   164E 08            [12] 1632 	inc	r0
   164F E2            [24] 1633 	movx	a,@r0
   1650 12 2A 72      [24] 1634 	lcall	_constrain
   1653 78 4C         [12] 1635 	mov	r0,#_radio_init_freq_max_1_151
   1655 C0 E0         [24] 1636 	push	acc
   1657 E5 82         [12] 1637 	mov	a,dpl
   1659 F2            [24] 1638 	movx	@r0,a
   165A 08            [12] 1639 	inc	r0
   165B E5 83         [12] 1640 	mov	a,dph
   165D F2            [24] 1641 	movx	@r0,a
   165E 08            [12] 1642 	inc	r0
   165F E5 F0         [12] 1643 	mov	a,b
   1661 F2            [24] 1644 	movx	@r0,a
   1662 D0 E0         [24] 1645 	pop	acc
   1664 08            [12] 1646 	inc	r0
   1665 F2            [24] 1647 	movx	@r0,a
                           1648 ;	radio/main.c:308: break;
   1666 02 17 A7      [24] 1649 	ljmp	00122$
                           1650 ;	radio/main.c:309: case FREQ_868:
   1669                    1651 00119$:
                           1652 ;	radio/main.c:310: freq_min = constrain(freq_min, 849000000UL, 889000000UL);
   1669 78 6F         [12] 1653 	mov	r0,#_constrain_PARM_2
   166B 74 40         [12] 1654 	mov	a,#0x40
   166D F2            [24] 1655 	movx	@r0,a
   166E 08            [12] 1656 	inc	r0
   166F 74 B6         [12] 1657 	mov	a,#0xB6
   1671 F2            [24] 1658 	movx	@r0,a
   1672 08            [12] 1659 	inc	r0
   1673 74 9A         [12] 1660 	mov	a,#0x9A
   1675 F2            [24] 1661 	movx	@r0,a
   1676 08            [12] 1662 	inc	r0
   1677 74 32         [12] 1663 	mov	a,#0x32
   1679 F2            [24] 1664 	movx	@r0,a
   167A 78 73         [12] 1665 	mov	r0,#_constrain_PARM_3
   167C 74 40         [12] 1666 	mov	a,#0x40
   167E F2            [24] 1667 	movx	@r0,a
   167F 08            [12] 1668 	inc	r0
   1680 74 10         [12] 1669 	mov	a,#0x10
   1682 F2            [24] 1670 	movx	@r0,a
   1683 08            [12] 1671 	inc	r0
   1684 74 FD         [12] 1672 	mov	a,#0xFD
   1686 F2            [24] 1673 	movx	@r0,a
   1687 08            [12] 1674 	inc	r0
   1688 74 34         [12] 1675 	mov	a,#0x34
   168A F2            [24] 1676 	movx	@r0,a
   168B 78 48         [12] 1677 	mov	r0,#_radio_init_freq_min_1_151
   168D E2            [24] 1678 	movx	a,@r0
   168E F5 82         [12] 1679 	mov	dpl,a
   1690 08            [12] 1680 	inc	r0
   1691 E2            [24] 1681 	movx	a,@r0
   1692 F5 83         [12] 1682 	mov	dph,a
   1694 08            [12] 1683 	inc	r0
   1695 E2            [24] 1684 	movx	a,@r0
   1696 F5 F0         [12] 1685 	mov	b,a
   1698 08            [12] 1686 	inc	r0
   1699 E2            [24] 1687 	movx	a,@r0
   169A 12 2A 72      [24] 1688 	lcall	_constrain
   169D 78 48         [12] 1689 	mov	r0,#_radio_init_freq_min_1_151
   169F C0 E0         [24] 1690 	push	acc
   16A1 E5 82         [12] 1691 	mov	a,dpl
   16A3 F2            [24] 1692 	movx	@r0,a
   16A4 08            [12] 1693 	inc	r0
   16A5 E5 83         [12] 1694 	mov	a,dph
   16A7 F2            [24] 1695 	movx	@r0,a
   16A8 08            [12] 1696 	inc	r0
   16A9 E5 F0         [12] 1697 	mov	a,b
   16AB F2            [24] 1698 	movx	@r0,a
   16AC D0 E0         [24] 1699 	pop	acc
   16AE 08            [12] 1700 	inc	r0
   16AF F2            [24] 1701 	movx	@r0,a
                           1702 ;	radio/main.c:311: freq_max = constrain(freq_max, 849000000UL, 889000000UL);
   16B0 78 6F         [12] 1703 	mov	r0,#_constrain_PARM_2
   16B2 74 40         [12] 1704 	mov	a,#0x40
   16B4 F2            [24] 1705 	movx	@r0,a
   16B5 08            [12] 1706 	inc	r0
   16B6 74 B6         [12] 1707 	mov	a,#0xB6
   16B8 F2            [24] 1708 	movx	@r0,a
   16B9 08            [12] 1709 	inc	r0
   16BA 74 9A         [12] 1710 	mov	a,#0x9A
   16BC F2            [24] 1711 	movx	@r0,a
   16BD 08            [12] 1712 	inc	r0
   16BE 74 32         [12] 1713 	mov	a,#0x32
   16C0 F2            [24] 1714 	movx	@r0,a
   16C1 78 73         [12] 1715 	mov	r0,#_constrain_PARM_3
   16C3 74 40         [12] 1716 	mov	a,#0x40
   16C5 F2            [24] 1717 	movx	@r0,a
   16C6 08            [12] 1718 	inc	r0
   16C7 74 10         [12] 1719 	mov	a,#0x10
   16C9 F2            [24] 1720 	movx	@r0,a
   16CA 08            [12] 1721 	inc	r0
   16CB 74 FD         [12] 1722 	mov	a,#0xFD
   16CD F2            [24] 1723 	movx	@r0,a
   16CE 08            [12] 1724 	inc	r0
   16CF 74 34         [12] 1725 	mov	a,#0x34
   16D1 F2            [24] 1726 	movx	@r0,a
   16D2 78 4C         [12] 1727 	mov	r0,#_radio_init_freq_max_1_151
   16D4 E2            [24] 1728 	movx	a,@r0
   16D5 F5 82         [12] 1729 	mov	dpl,a
   16D7 08            [12] 1730 	inc	r0
   16D8 E2            [24] 1731 	movx	a,@r0
   16D9 F5 83         [12] 1732 	mov	dph,a
   16DB 08            [12] 1733 	inc	r0
   16DC E2            [24] 1734 	movx	a,@r0
   16DD F5 F0         [12] 1735 	mov	b,a
   16DF 08            [12] 1736 	inc	r0
   16E0 E2            [24] 1737 	movx	a,@r0
   16E1 12 2A 72      [24] 1738 	lcall	_constrain
   16E4 78 4C         [12] 1739 	mov	r0,#_radio_init_freq_max_1_151
   16E6 C0 E0         [24] 1740 	push	acc
   16E8 E5 82         [12] 1741 	mov	a,dpl
   16EA F2            [24] 1742 	movx	@r0,a
   16EB 08            [12] 1743 	inc	r0
   16EC E5 83         [12] 1744 	mov	a,dph
   16EE F2            [24] 1745 	movx	@r0,a
   16EF 08            [12] 1746 	inc	r0
   16F0 E5 F0         [12] 1747 	mov	a,b
   16F2 F2            [24] 1748 	movx	@r0,a
   16F3 D0 E0         [24] 1749 	pop	acc
   16F5 08            [12] 1750 	inc	r0
   16F6 F2            [24] 1751 	movx	@r0,a
                           1752 ;	radio/main.c:312: break;
   16F7 02 17 A7      [24] 1753 	ljmp	00122$
                           1754 ;	radio/main.c:313: case FREQ_915:
   16FA                    1755 00120$:
                           1756 ;	radio/main.c:314: freq_min = constrain(freq_min, 868000000UL, 935000000UL);
   16FA 78 6F         [12] 1757 	mov	r0,#_constrain_PARM_2
   16FC E4            [12] 1758 	clr	a
   16FD F2            [24] 1759 	movx	@r0,a
   16FE 08            [12] 1760 	inc	r0
   16FF 74 A1         [12] 1761 	mov	a,#0xA1
   1701 F2            [24] 1762 	movx	@r0,a
   1702 08            [12] 1763 	inc	r0
   1703 74 BC         [12] 1764 	mov	a,#0xBC
   1705 F2            [24] 1765 	movx	@r0,a
   1706 08            [12] 1766 	inc	r0
   1707 74 33         [12] 1767 	mov	a,#0x33
   1709 F2            [24] 1768 	movx	@r0,a
   170A 78 73         [12] 1769 	mov	r0,#_constrain_PARM_3
   170C 74 C0         [12] 1770 	mov	a,#0xC0
   170E F2            [24] 1771 	movx	@r0,a
   170F 08            [12] 1772 	inc	r0
   1710 74 F7         [12] 1773 	mov	a,#0xF7
   1712 F2            [24] 1774 	movx	@r0,a
   1713 08            [12] 1775 	inc	r0
   1714 74 BA         [12] 1776 	mov	a,#0xBA
   1716 F2            [24] 1777 	movx	@r0,a
   1717 08            [12] 1778 	inc	r0
   1718 74 37         [12] 1779 	mov	a,#0x37
   171A F2            [24] 1780 	movx	@r0,a
   171B 78 48         [12] 1781 	mov	r0,#_radio_init_freq_min_1_151
   171D E2            [24] 1782 	movx	a,@r0
   171E F5 82         [12] 1783 	mov	dpl,a
   1720 08            [12] 1784 	inc	r0
   1721 E2            [24] 1785 	movx	a,@r0
   1722 F5 83         [12] 1786 	mov	dph,a
   1724 08            [12] 1787 	inc	r0
   1725 E2            [24] 1788 	movx	a,@r0
   1726 F5 F0         [12] 1789 	mov	b,a
   1728 08            [12] 1790 	inc	r0
   1729 E2            [24] 1791 	movx	a,@r0
   172A 12 2A 72      [24] 1792 	lcall	_constrain
   172D 78 48         [12] 1793 	mov	r0,#_radio_init_freq_min_1_151
   172F C0 E0         [24] 1794 	push	acc
   1731 E5 82         [12] 1795 	mov	a,dpl
   1733 F2            [24] 1796 	movx	@r0,a
   1734 08            [12] 1797 	inc	r0
   1735 E5 83         [12] 1798 	mov	a,dph
   1737 F2            [24] 1799 	movx	@r0,a
   1738 08            [12] 1800 	inc	r0
   1739 E5 F0         [12] 1801 	mov	a,b
   173B F2            [24] 1802 	movx	@r0,a
   173C D0 E0         [24] 1803 	pop	acc
   173E 08            [12] 1804 	inc	r0
   173F F2            [24] 1805 	movx	@r0,a
                           1806 ;	radio/main.c:315: freq_max = constrain(freq_max, 868000000UL, 935000000UL);
   1740 78 6F         [12] 1807 	mov	r0,#_constrain_PARM_2
   1742 E4            [12] 1808 	clr	a
   1743 F2            [24] 1809 	movx	@r0,a
   1744 08            [12] 1810 	inc	r0
   1745 74 A1         [12] 1811 	mov	a,#0xA1
   1747 F2            [24] 1812 	movx	@r0,a
   1748 08            [12] 1813 	inc	r0
   1749 74 BC         [12] 1814 	mov	a,#0xBC
   174B F2            [24] 1815 	movx	@r0,a
   174C 08            [12] 1816 	inc	r0
   174D 74 33         [12] 1817 	mov	a,#0x33
   174F F2            [24] 1818 	movx	@r0,a
   1750 78 73         [12] 1819 	mov	r0,#_constrain_PARM_3
   1752 74 C0         [12] 1820 	mov	a,#0xC0
   1754 F2            [24] 1821 	movx	@r0,a
   1755 08            [12] 1822 	inc	r0
   1756 74 F7         [12] 1823 	mov	a,#0xF7
   1758 F2            [24] 1824 	movx	@r0,a
   1759 08            [12] 1825 	inc	r0
   175A 74 BA         [12] 1826 	mov	a,#0xBA
   175C F2            [24] 1827 	movx	@r0,a
   175D 08            [12] 1828 	inc	r0
   175E 74 37         [12] 1829 	mov	a,#0x37
   1760 F2            [24] 1830 	movx	@r0,a
   1761 78 4C         [12] 1831 	mov	r0,#_radio_init_freq_max_1_151
   1763 E2            [24] 1832 	movx	a,@r0
   1764 F5 82         [12] 1833 	mov	dpl,a
   1766 08            [12] 1834 	inc	r0
   1767 E2            [24] 1835 	movx	a,@r0
   1768 F5 83         [12] 1836 	mov	dph,a
   176A 08            [12] 1837 	inc	r0
   176B E2            [24] 1838 	movx	a,@r0
   176C F5 F0         [12] 1839 	mov	b,a
   176E 08            [12] 1840 	inc	r0
   176F E2            [24] 1841 	movx	a,@r0
   1770 12 2A 72      [24] 1842 	lcall	_constrain
   1773 78 4C         [12] 1843 	mov	r0,#_radio_init_freq_max_1_151
   1775 C0 E0         [24] 1844 	push	acc
   1777 E5 82         [12] 1845 	mov	a,dpl
   1779 F2            [24] 1846 	movx	@r0,a
   177A 08            [12] 1847 	inc	r0
   177B E5 83         [12] 1848 	mov	a,dph
   177D F2            [24] 1849 	movx	@r0,a
   177E 08            [12] 1850 	inc	r0
   177F E5 F0         [12] 1851 	mov	a,b
   1781 F2            [24] 1852 	movx	@r0,a
   1782 D0 E0         [24] 1853 	pop	acc
   1784 08            [12] 1854 	inc	r0
   1785 F2            [24] 1855 	movx	@r0,a
                           1856 ;	radio/main.c:316: break;
                           1857 ;	radio/main.c:317: default:
   1786 80 1F         [24] 1858 	sjmp	00122$
   1788                    1859 00121$:
                           1860 ;	radio/main.c:318: panic("bad board frequency %d", g_board_frequency);
   1788 78 32         [12] 1861 	mov	r0,#_g_board_frequency
   178A E2            [24] 1862 	movx	a,@r0
   178B FE            [12] 1863 	mov	r6,a
   178C 7F 00         [12] 1864 	mov	r7,#0x00
   178E C0 06         [24] 1865 	push	ar6
   1790 C0 07         [24] 1866 	push	ar7
   1792 74 F3         [12] 1867 	mov	a,#__str_4
   1794 C0 E0         [24] 1868 	push	acc
   1796 74 C7         [12] 1869 	mov	a,#(__str_4 >> 8)
   1798 C0 E0         [24] 1870 	push	acc
   179A 74 80         [12] 1871 	mov	a,#0x80
   179C C0 E0         [24] 1872 	push	acc
   179E 12 11 F8      [24] 1873 	lcall	_panic
   17A1 E5 81         [12] 1874 	mov	a,sp
   17A3 24 FB         [12] 1875 	add	a,#0xfb
   17A5 F5 81         [12] 1876 	mov	sp,a
                           1877 ;	radio/main.c:320: }
   17A7                    1878 00122$:
                           1879 ;	radio/main.c:322: if (freq_max == freq_min) {
   17A7 78 4C         [12] 1880 	mov	r0,#_radio_init_freq_max_1_151
   17A9 79 48         [12] 1881 	mov	r1,#_radio_init_freq_min_1_151
   17AB E2            [24] 1882 	movx	a,@r0
   17AC F5 F0         [12] 1883 	mov	b,a
   17AE E3            [24] 1884 	movx	a,@r1
   17AF B5 F0 1D      [24] 1885 	cjne	a,b,00205$
   17B2 08            [12] 1886 	inc	r0
   17B3 E2            [24] 1887 	movx	a,@r0
   17B4 F5 F0         [12] 1888 	mov	b,a
   17B6 09            [12] 1889 	inc	r1
   17B7 E3            [24] 1890 	movx	a,@r1
   17B8 B5 F0 14      [24] 1891 	cjne	a,b,00205$
   17BB 08            [12] 1892 	inc	r0
   17BC E2            [24] 1893 	movx	a,@r0
   17BD F5 F0         [12] 1894 	mov	b,a
   17BF 09            [12] 1895 	inc	r1
   17C0 E3            [24] 1896 	movx	a,@r1
   17C1 B5 F0 0B      [24] 1897 	cjne	a,b,00205$
   17C4 08            [12] 1898 	inc	r0
   17C5 E2            [24] 1899 	movx	a,@r0
   17C6 F5 F0         [12] 1900 	mov	b,a
   17C8 09            [12] 1901 	inc	r1
   17C9 E3            [24] 1902 	movx	a,@r1
   17CA B5 F0 02      [24] 1903 	cjne	a,b,00205$
   17CD 80 02         [24] 1904 	sjmp	00206$
   17CF                    1905 00205$:
   17CF 80 1A         [24] 1906 	sjmp	00124$
   17D1                    1907 00206$:
                           1908 ;	radio/main.c:323: freq_max = freq_min + 1000000UL;
   17D1 78 48         [12] 1909 	mov	r0,#_radio_init_freq_min_1_151
   17D3 79 4C         [12] 1910 	mov	r1,#_radio_init_freq_max_1_151
   17D5 E2            [24] 1911 	movx	a,@r0
   17D6 24 40         [12] 1912 	add	a,#0x40
   17D8 F3            [24] 1913 	movx	@r1,a
   17D9 08            [12] 1914 	inc	r0
   17DA E2            [24] 1915 	movx	a,@r0
   17DB 34 42         [12] 1916 	addc	a,#0x42
   17DD 09            [12] 1917 	inc	r1
   17DE F3            [24] 1918 	movx	@r1,a
   17DF 08            [12] 1919 	inc	r0
   17E0 E2            [24] 1920 	movx	a,@r0
   17E1 34 0F         [12] 1921 	addc	a,#0x0F
   17E3 09            [12] 1922 	inc	r1
   17E4 F3            [24] 1923 	movx	@r1,a
   17E5 08            [12] 1924 	inc	r0
   17E6 E2            [24] 1925 	movx	a,@r0
   17E7 34 00         [12] 1926 	addc	a,#0x00
   17E9 09            [12] 1927 	inc	r1
   17EA F3            [24] 1928 	movx	@r1,a
   17EB                    1929 00124$:
                           1930 ;	radio/main.c:327: duty_cycle = param_get(PARAM_DUTY_CYCLE);
   17EB 75 82 0B      [24] 1931 	mov	dpl,#0x0B
   17EE 12 27 64      [24] 1932 	lcall	_param_get
   17F1 AC 82         [24] 1933 	mov	r4,dpl
   17F3 78 C4         [12] 1934 	mov	r0,#_duty_cycle
   17F5 EC            [12] 1935 	mov	a,r4
   17F6 F2            [24] 1936 	movx	@r0,a
                           1937 ;	radio/main.c:328: duty_cycle = constrain(duty_cycle, 0, 100);
   17F7 7F 00         [12] 1938 	mov	r7,#0x00
   17F9 7E 00         [12] 1939 	mov	r6,#0x00
   17FB 7D 00         [12] 1940 	mov	r5,#0x00
   17FD 78 6F         [12] 1941 	mov	r0,#_constrain_PARM_2
   17FF E4            [12] 1942 	clr	a
   1800 F2            [24] 1943 	movx	@r0,a
   1801 08            [12] 1944 	inc	r0
   1802 F2            [24] 1945 	movx	@r0,a
   1803 08            [12] 1946 	inc	r0
   1804 F2            [24] 1947 	movx	@r0,a
   1805 08            [12] 1948 	inc	r0
   1806 F2            [24] 1949 	movx	@r0,a
   1807 78 73         [12] 1950 	mov	r0,#_constrain_PARM_3
   1809 74 64         [12] 1951 	mov	a,#0x64
   180B F2            [24] 1952 	movx	@r0,a
   180C 08            [12] 1953 	inc	r0
   180D E4            [12] 1954 	clr	a
   180E F2            [24] 1955 	movx	@r0,a
   180F 08            [12] 1956 	inc	r0
   1810 F2            [24] 1957 	movx	@r0,a
   1811 08            [12] 1958 	inc	r0
   1812 F2            [24] 1959 	movx	@r0,a
   1813 8C 82         [24] 1960 	mov	dpl,r4
   1815 8F 83         [24] 1961 	mov	dph,r7
   1817 8E F0         [24] 1962 	mov	b,r6
   1819 ED            [12] 1963 	mov	a,r5
   181A 12 2A 72      [24] 1964 	lcall	_constrain
   181D AC 82         [24] 1965 	mov	r4,dpl
   181F 78 C4         [12] 1966 	mov	r0,#_duty_cycle
   1821 EC            [12] 1967 	mov	a,r4
   1822 F2            [24] 1968 	movx	@r0,a
                           1969 ;	radio/main.c:329: param_set(PARAM_DUTY_CYCLE, duty_cycle);
   1823 78 69         [12] 1970 	mov	r0,#_param_set_PARM_2
   1825 EC            [12] 1971 	mov	a,r4
   1826 F2            [24] 1972 	movx	@r0,a
   1827 08            [12] 1973 	inc	r0
   1828 E4            [12] 1974 	clr	a
   1829 F2            [24] 1975 	movx	@r0,a
   182A 08            [12] 1976 	inc	r0
   182B F2            [24] 1977 	movx	@r0,a
   182C 08            [12] 1978 	inc	r0
   182D F2            [24] 1979 	movx	@r0,a
   182E 75 82 0B      [24] 1980 	mov	dpl,#0x0B
   1831 12 25 C1      [24] 1981 	lcall	_param_set
                           1982 ;	radio/main.c:332: lbt_rssi = param_get(PARAM_LBT_RSSI);
   1834 75 82 0C      [24] 1983 	mov	dpl,#0x0C
   1837 12 27 64      [24] 1984 	lcall	_param_get
   183A AC 82         [24] 1985 	mov	r4,dpl
   183C AD 83         [24] 1986 	mov	r5,dph
   183E AE F0         [24] 1987 	mov	r6,b
   1840 FF            [12] 1988 	mov	r7,a
   1841 78 C8         [12] 1989 	mov	r0,#_lbt_rssi
   1843 EC            [12] 1990 	mov	a,r4
   1844 F2            [24] 1991 	movx	@r0,a
                           1992 ;	radio/main.c:333: if (lbt_rssi != 0) {
   1845 EC            [12] 1993 	mov	a,r4
   1846 60 33         [24] 1994 	jz	00126$
                           1995 ;	radio/main.c:335: lbt_rssi = constrain(lbt_rssi, 25, 220);
   1848 7F 00         [12] 1996 	mov	r7,#0x00
   184A 7E 00         [12] 1997 	mov	r6,#0x00
   184C 7D 00         [12] 1998 	mov	r5,#0x00
   184E 78 6F         [12] 1999 	mov	r0,#_constrain_PARM_2
   1850 74 19         [12] 2000 	mov	a,#0x19
   1852 F2            [24] 2001 	movx	@r0,a
   1853 08            [12] 2002 	inc	r0
   1854 E4            [12] 2003 	clr	a
   1855 F2            [24] 2004 	movx	@r0,a
   1856 08            [12] 2005 	inc	r0
   1857 F2            [24] 2006 	movx	@r0,a
   1858 08            [12] 2007 	inc	r0
   1859 F2            [24] 2008 	movx	@r0,a
   185A 78 73         [12] 2009 	mov	r0,#_constrain_PARM_3
   185C 74 DC         [12] 2010 	mov	a,#0xDC
   185E F2            [24] 2011 	movx	@r0,a
   185F 08            [12] 2012 	inc	r0
   1860 E4            [12] 2013 	clr	a
   1861 F2            [24] 2014 	movx	@r0,a
   1862 08            [12] 2015 	inc	r0
   1863 F2            [24] 2016 	movx	@r0,a
   1864 08            [12] 2017 	inc	r0
   1865 F2            [24] 2018 	movx	@r0,a
   1866 8C 82         [24] 2019 	mov	dpl,r4
   1868 8F 83         [24] 2020 	mov	dph,r7
   186A 8E F0         [24] 2021 	mov	b,r6
   186C ED            [12] 2022 	mov	a,r5
   186D 12 2A 72      [24] 2023 	lcall	_constrain
   1870 AC 82         [24] 2024 	mov	r4,dpl
   1872 AD 83         [24] 2025 	mov	r5,dph
   1874 AE F0         [24] 2026 	mov	r6,b
   1876 FF            [12] 2027 	mov	r7,a
   1877 78 C8         [12] 2028 	mov	r0,#_lbt_rssi
   1879 EC            [12] 2029 	mov	a,r4
   187A F2            [24] 2030 	movx	@r0,a
   187B                    2031 00126$:
                           2032 ;	radio/main.c:337: param_set(PARAM_LBT_RSSI, lbt_rssi);
   187B 78 C8         [12] 2033 	mov	r0,#_lbt_rssi
   187D 79 69         [12] 2034 	mov	r1,#_param_set_PARM_2
   187F E2            [24] 2035 	movx	a,@r0
   1880 F3            [24] 2036 	movx	@r1,a
   1881 09            [12] 2037 	inc	r1
   1882 E4            [12] 2038 	clr	a
   1883 F3            [24] 2039 	movx	@r1,a
   1884 09            [12] 2040 	inc	r1
   1885 F3            [24] 2041 	movx	@r1,a
   1886 09            [12] 2042 	inc	r1
   1887 F3            [24] 2043 	movx	@r1,a
   1888 75 82 0C      [24] 2044 	mov	dpl,#0x0C
   188B 12 25 C1      [24] 2045 	lcall	_param_set
                           2046 ;	radio/main.c:340: param_set(PARAM_MIN_FREQ, freq_min/1000);
   188E 90 05 B2      [24] 2047 	mov	dptr,#__divulong_PARM_2
   1891 74 E8         [12] 2048 	mov	a,#0xE8
   1893 F0            [24] 2049 	movx	@dptr,a
   1894 74 03         [12] 2050 	mov	a,#0x03
   1896 A3            [24] 2051 	inc	dptr
   1897 F0            [24] 2052 	movx	@dptr,a
   1898 E4            [12] 2053 	clr	a
   1899 A3            [24] 2054 	inc	dptr
   189A F0            [24] 2055 	movx	@dptr,a
   189B E4            [12] 2056 	clr	a
   189C A3            [24] 2057 	inc	dptr
   189D F0            [24] 2058 	movx	@dptr,a
   189E 78 48         [12] 2059 	mov	r0,#_radio_init_freq_min_1_151
   18A0 E2            [24] 2060 	movx	a,@r0
   18A1 F5 82         [12] 2061 	mov	dpl,a
   18A3 08            [12] 2062 	inc	r0
   18A4 E2            [24] 2063 	movx	a,@r0
   18A5 F5 83         [12] 2064 	mov	dph,a
   18A7 08            [12] 2065 	inc	r0
   18A8 E2            [24] 2066 	movx	a,@r0
   18A9 F5 F0         [12] 2067 	mov	b,a
   18AB 08            [12] 2068 	inc	r0
   18AC E2            [24] 2069 	movx	a,@r0
   18AD 12 5B 86      [24] 2070 	lcall	__divulong
   18B0 AC 82         [24] 2071 	mov	r4,dpl
   18B2 AD 83         [24] 2072 	mov	r5,dph
   18B4 AE F0         [24] 2073 	mov	r6,b
   18B6 FF            [12] 2074 	mov	r7,a
   18B7 78 69         [12] 2075 	mov	r0,#_param_set_PARM_2
   18B9 EC            [12] 2076 	mov	a,r4
   18BA F2            [24] 2077 	movx	@r0,a
   18BB 08            [12] 2078 	inc	r0
   18BC ED            [12] 2079 	mov	a,r5
   18BD F2            [24] 2080 	movx	@r0,a
   18BE 08            [12] 2081 	inc	r0
   18BF EE            [12] 2082 	mov	a,r6
   18C0 F2            [24] 2083 	movx	@r0,a
   18C1 08            [12] 2084 	inc	r0
   18C2 EF            [12] 2085 	mov	a,r7
   18C3 F2            [24] 2086 	movx	@r0,a
   18C4 75 82 08      [24] 2087 	mov	dpl,#0x08
   18C7 12 25 C1      [24] 2088 	lcall	_param_set
                           2089 ;	radio/main.c:341: param_set(PARAM_MAX_FREQ, freq_max/1000);
   18CA 90 05 B2      [24] 2090 	mov	dptr,#__divulong_PARM_2
   18CD 74 E8         [12] 2091 	mov	a,#0xE8
   18CF F0            [24] 2092 	movx	@dptr,a
   18D0 74 03         [12] 2093 	mov	a,#0x03
   18D2 A3            [24] 2094 	inc	dptr
   18D3 F0            [24] 2095 	movx	@dptr,a
   18D4 E4            [12] 2096 	clr	a
   18D5 A3            [24] 2097 	inc	dptr
   18D6 F0            [24] 2098 	movx	@dptr,a
   18D7 E4            [12] 2099 	clr	a
   18D8 A3            [24] 2100 	inc	dptr
   18D9 F0            [24] 2101 	movx	@dptr,a
   18DA 78 4C         [12] 2102 	mov	r0,#_radio_init_freq_max_1_151
   18DC E2            [24] 2103 	movx	a,@r0
   18DD F5 82         [12] 2104 	mov	dpl,a
   18DF 08            [12] 2105 	inc	r0
   18E0 E2            [24] 2106 	movx	a,@r0
   18E1 F5 83         [12] 2107 	mov	dph,a
   18E3 08            [12] 2108 	inc	r0
   18E4 E2            [24] 2109 	movx	a,@r0
   18E5 F5 F0         [12] 2110 	mov	b,a
   18E7 08            [12] 2111 	inc	r0
   18E8 E2            [24] 2112 	movx	a,@r0
   18E9 12 5B 86      [24] 2113 	lcall	__divulong
   18EC AC 82         [24] 2114 	mov	r4,dpl
   18EE AD 83         [24] 2115 	mov	r5,dph
   18F0 AE F0         [24] 2116 	mov	r6,b
   18F2 FF            [12] 2117 	mov	r7,a
   18F3 78 69         [12] 2118 	mov	r0,#_param_set_PARM_2
   18F5 EC            [12] 2119 	mov	a,r4
   18F6 F2            [24] 2120 	movx	@r0,a
   18F7 08            [12] 2121 	inc	r0
   18F8 ED            [12] 2122 	mov	a,r5
   18F9 F2            [24] 2123 	movx	@r0,a
   18FA 08            [12] 2124 	inc	r0
   18FB EE            [12] 2125 	mov	a,r6
   18FC F2            [24] 2126 	movx	@r0,a
   18FD 08            [12] 2127 	inc	r0
   18FE EF            [12] 2128 	mov	a,r7
   18FF F2            [24] 2129 	movx	@r0,a
   1900 75 82 09      [24] 2130 	mov	dpl,#0x09
   1903 12 25 C1      [24] 2131 	lcall	_param_set
                           2132 ;	radio/main.c:342: param_set(PARAM_NUM_CHANNELS, num_fh_channels);
   1906 78 18         [12] 2133 	mov	r0,#_num_fh_channels
   1908 79 69         [12] 2134 	mov	r1,#_param_set_PARM_2
   190A E2            [24] 2135 	movx	a,@r0
   190B F3            [24] 2136 	movx	@r1,a
   190C 09            [12] 2137 	inc	r1
   190D E4            [12] 2138 	clr	a
   190E F3            [24] 2139 	movx	@r1,a
   190F 09            [12] 2140 	inc	r1
   1910 F3            [24] 2141 	movx	@r1,a
   1911 09            [12] 2142 	inc	r1
   1912 F3            [24] 2143 	movx	@r1,a
   1913 75 82 0A      [24] 2144 	mov	dpl,#0x0A
   1916 12 25 C1      [24] 2145 	lcall	_param_set
                           2146 ;	radio/main.c:344: channel_spacing = (freq_max - freq_min) / (num_fh_channels+2);
   1919 78 4C         [12] 2147 	mov	r0,#_radio_init_freq_max_1_151
   191B 79 48         [12] 2148 	mov	r1,#_radio_init_freq_min_1_151
   191D E3            [24] 2149 	movx	a,@r1
   191E F5 F0         [12] 2150 	mov	b,a
   1920 C3            [12] 2151 	clr	c
   1921 E2            [24] 2152 	movx	a,@r0
   1922 95 F0         [12] 2153 	subb	a,b
   1924 FC            [12] 2154 	mov	r4,a
   1925 09            [12] 2155 	inc	r1
   1926 E3            [24] 2156 	movx	a,@r1
   1927 F5 F0         [12] 2157 	mov	b,a
   1929 08            [12] 2158 	inc	r0
   192A E2            [24] 2159 	movx	a,@r0
   192B 95 F0         [12] 2160 	subb	a,b
   192D FD            [12] 2161 	mov	r5,a
   192E 09            [12] 2162 	inc	r1
   192F E3            [24] 2163 	movx	a,@r1
   1930 F5 F0         [12] 2164 	mov	b,a
   1932 08            [12] 2165 	inc	r0
   1933 E2            [24] 2166 	movx	a,@r0
   1934 95 F0         [12] 2167 	subb	a,b
   1936 FE            [12] 2168 	mov	r6,a
   1937 09            [12] 2169 	inc	r1
   1938 E3            [24] 2170 	movx	a,@r1
   1939 F5 F0         [12] 2171 	mov	b,a
   193B 08            [12] 2172 	inc	r0
   193C E2            [24] 2173 	movx	a,@r0
   193D 95 F0         [12] 2174 	subb	a,b
   193F FF            [12] 2175 	mov	r7,a
   1940 78 18         [12] 2176 	mov	r0,#_num_fh_channels
   1942 E2            [24] 2177 	movx	a,@r0
   1943 FA            [12] 2178 	mov	r2,a
   1944 7B 00         [12] 2179 	mov	r3,#0x00
   1946 74 02         [12] 2180 	mov	a,#0x02
   1948 2A            [12] 2181 	add	a,r2
   1949 FA            [12] 2182 	mov	r2,a
   194A E4            [12] 2183 	clr	a
   194B 3B            [12] 2184 	addc	a,r3
   194C FB            [12] 2185 	mov	r3,a
   194D 90 05 B2      [24] 2186 	mov	dptr,#__divulong_PARM_2
   1950 EA            [12] 2187 	mov	a,r2
   1951 F0            [24] 2188 	movx	@dptr,a
   1952 EB            [12] 2189 	mov	a,r3
   1953 A3            [24] 2190 	inc	dptr
   1954 F0            [24] 2191 	movx	@dptr,a
   1955 EB            [12] 2192 	mov	a,r3
   1956 33            [12] 2193 	rlc	a
   1957 95 E0         [12] 2194 	subb	a,acc
   1959 A3            [24] 2195 	inc	dptr
   195A F0            [24] 2196 	movx	@dptr,a
   195B A3            [24] 2197 	inc	dptr
   195C F0            [24] 2198 	movx	@dptr,a
   195D 8C 82         [24] 2199 	mov	dpl,r4
   195F 8D 83         [24] 2200 	mov	dph,r5
   1961 8E F0         [24] 2201 	mov	b,r6
   1963 EF            [12] 2202 	mov	a,r7
   1964 12 5B 86      [24] 2203 	lcall	__divulong
   1967 78 50         [12] 2204 	mov	r0,#_radio_init_channel_spacing_1_151
   1969 C0 E0         [24] 2205 	push	acc
   196B E5 82         [12] 2206 	mov	a,dpl
   196D F2            [24] 2207 	movx	@r0,a
   196E 08            [12] 2208 	inc	r0
   196F E5 83         [12] 2209 	mov	a,dph
   1971 F2            [24] 2210 	movx	@r0,a
   1972 08            [12] 2211 	inc	r0
   1973 E5 F0         [12] 2212 	mov	a,b
   1975 F2            [24] 2213 	movx	@r0,a
   1976 D0 E0         [24] 2214 	pop	acc
   1978 08            [12] 2215 	inc	r0
   1979 F2            [24] 2216 	movx	@r0,a
                           2217 ;	radio/main.c:348: freq_min += channel_spacing/2;
   197A 78 53         [12] 2218 	mov	r0,#(_radio_init_channel_spacing_1_151 + 3)
   197C E2            [24] 2219 	movx	a,@r0
   197D C3            [12] 2220 	clr	c
   197E 13            [12] 2221 	rrc	a
   197F FF            [12] 2222 	mov	r7,a
   1980 18            [12] 2223 	dec	r0
   1981 E2            [24] 2224 	movx	a,@r0
   1982 13            [12] 2225 	rrc	a
   1983 FE            [12] 2226 	mov	r6,a
   1984 18            [12] 2227 	dec	r0
   1985 E2            [24] 2228 	movx	a,@r0
   1986 13            [12] 2229 	rrc	a
   1987 FB            [12] 2230 	mov	r3,a
   1988 18            [12] 2231 	dec	r0
   1989 E2            [24] 2232 	movx	a,@r0
   198A 13            [12] 2233 	rrc	a
   198B FA            [12] 2234 	mov	r2,a
   198C 78 48         [12] 2235 	mov	r0,#_radio_init_freq_min_1_151
   198E E2            [24] 2236 	movx	a,@r0
   198F 2A            [12] 2237 	add	a,r2
   1990 F2            [24] 2238 	movx	@r0,a
   1991 08            [12] 2239 	inc	r0
   1992 E2            [24] 2240 	movx	a,@r0
   1993 3B            [12] 2241 	addc	a,r3
   1994 F2            [24] 2242 	movx	@r0,a
   1995 08            [12] 2243 	inc	r0
   1996 E2            [24] 2244 	movx	a,@r0
   1997 3E            [12] 2245 	addc	a,r6
   1998 F2            [24] 2246 	movx	@r0,a
   1999 08            [12] 2247 	inc	r0
   199A E2            [24] 2248 	movx	a,@r0
   199B 3F            [12] 2249 	addc	a,r7
   199C F2            [24] 2250 	movx	@r0,a
                           2251 ;	radio/main.c:353: srand(param_get(PARAM_NETID));
   199D 75 82 03      [24] 2252 	mov	dpl,#0x03
   19A0 12 27 64      [24] 2253 	lcall	_param_get
   19A3 12 5B 36      [24] 2254 	lcall	_srand
                           2255 ;	radio/main.c:354: if (num_fh_channels > 5) {
   19A6 78 18         [12] 2256 	mov	r0,#_num_fh_channels
   19A8 C3            [12] 2257 	clr	c
   19A9 E2            [24] 2258 	movx	a,@r0
   19AA F5 F0         [12] 2259 	mov	b,a
   19AC 74 05         [12] 2260 	mov	a,#0x05
   19AE 95 F0         [12] 2261 	subb	a,b
   19B0 50 54         [24] 2262 	jnc	00128$
                           2263 ;	radio/main.c:355: freq_min += ((unsigned long)(rand()*625)) % channel_spacing;
   19B2 12 5A DC      [24] 2264 	lcall	_rand
   19B5 AE 82         [24] 2265 	mov	r6,dpl
   19B7 AF 83         [24] 2266 	mov	r7,dph
   19B9 90 05 CB      [24] 2267 	mov	dptr,#__mulint_PARM_2
   19BC EE            [12] 2268 	mov	a,r6
   19BD F0            [24] 2269 	movx	@dptr,a
   19BE EF            [12] 2270 	mov	a,r7
   19BF A3            [24] 2271 	inc	dptr
   19C0 F0            [24] 2272 	movx	@dptr,a
   19C1 90 02 71      [24] 2273 	mov	dptr,#0x0271
   19C4 12 5D C7      [24] 2274 	lcall	__mulint
   19C7 AE 82         [24] 2275 	mov	r6,dpl
   19C9 E5 83         [12] 2276 	mov	a,dph
   19CB FF            [12] 2277 	mov	r7,a
   19CC 33            [12] 2278 	rlc	a
   19CD 95 E0         [12] 2279 	subb	a,acc
   19CF FD            [12] 2280 	mov	r5,a
   19D0 FC            [12] 2281 	mov	r4,a
   19D1 78 50         [12] 2282 	mov	r0,#_radio_init_channel_spacing_1_151
   19D3 90 05 A7      [24] 2283 	mov	dptr,#__modulong_PARM_2
   19D6 E2            [24] 2284 	movx	a,@r0
   19D7 F0            [24] 2285 	movx	@dptr,a
   19D8 08            [12] 2286 	inc	r0
   19D9 E2            [24] 2287 	movx	a,@r0
   19DA A3            [24] 2288 	inc	dptr
   19DB F0            [24] 2289 	movx	@dptr,a
   19DC 08            [12] 2290 	inc	r0
   19DD E2            [24] 2291 	movx	a,@r0
   19DE A3            [24] 2292 	inc	dptr
   19DF F0            [24] 2293 	movx	@dptr,a
   19E0 08            [12] 2294 	inc	r0
   19E1 E2            [24] 2295 	movx	a,@r0
   19E2 A3            [24] 2296 	inc	dptr
   19E3 F0            [24] 2297 	movx	@dptr,a
   19E4 8E 82         [24] 2298 	mov	dpl,r6
   19E6 8F 83         [24] 2299 	mov	dph,r7
   19E8 8D F0         [24] 2300 	mov	b,r5
   19EA EC            [12] 2301 	mov	a,r4
   19EB 12 58 F8      [24] 2302 	lcall	__modulong
   19EE AC 82         [24] 2303 	mov	r4,dpl
   19F0 AD 83         [24] 2304 	mov	r5,dph
   19F2 AE F0         [24] 2305 	mov	r6,b
   19F4 FF            [12] 2306 	mov	r7,a
   19F5 78 48         [12] 2307 	mov	r0,#_radio_init_freq_min_1_151
   19F7 E2            [24] 2308 	movx	a,@r0
   19F8 2C            [12] 2309 	add	a,r4
   19F9 F2            [24] 2310 	movx	@r0,a
   19FA 08            [12] 2311 	inc	r0
   19FB E2            [24] 2312 	movx	a,@r0
   19FC 3D            [12] 2313 	addc	a,r5
   19FD F2            [24] 2314 	movx	@r0,a
   19FE 08            [12] 2315 	inc	r0
   19FF E2            [24] 2316 	movx	a,@r0
   1A00 3E            [12] 2317 	addc	a,r6
   1A01 F2            [24] 2318 	movx	@r0,a
   1A02 08            [12] 2319 	inc	r0
   1A03 E2            [24] 2320 	movx	a,@r0
   1A04 3F            [12] 2321 	addc	a,r7
   1A05 F2            [24] 2322 	movx	@r0,a
   1A06                    2323 00128$:
                           2324 ;	radio/main.c:363: radio_set_frequency(freq_min);
   1A06 78 48         [12] 2325 	mov	r0,#_radio_init_freq_min_1_151
   1A08 E2            [24] 2326 	movx	a,@r0
   1A09 F5 82         [12] 2327 	mov	dpl,a
   1A0B 08            [12] 2328 	inc	r0
   1A0C E2            [24] 2329 	movx	a,@r0
   1A0D F5 83         [12] 2330 	mov	dph,a
   1A0F 08            [12] 2331 	inc	r0
   1A10 E2            [24] 2332 	movx	a,@r0
   1A11 F5 F0         [12] 2333 	mov	b,a
   1A13 08            [12] 2334 	inc	r0
   1A14 E2            [24] 2335 	movx	a,@r0
   1A15 12 34 E8      [24] 2336 	lcall	_radio_set_frequency
                           2337 ;	radio/main.c:366: radio_set_channel_spacing(channel_spacing);
   1A18 78 50         [12] 2338 	mov	r0,#_radio_init_channel_spacing_1_151
   1A1A E2            [24] 2339 	movx	a,@r0
   1A1B F5 82         [12] 2340 	mov	dpl,a
   1A1D 08            [12] 2341 	inc	r0
   1A1E E2            [24] 2342 	movx	a,@r0
   1A1F F5 83         [12] 2343 	mov	dph,a
   1A21 08            [12] 2344 	inc	r0
   1A22 E2            [24] 2345 	movx	a,@r0
   1A23 F5 F0         [12] 2346 	mov	b,a
   1A25 08            [12] 2347 	inc	r0
   1A26 E2            [24] 2348 	movx	a,@r0
   1A27 12 35 24      [24] 2349 	lcall	_radio_set_channel_spacing
                           2350 ;	radio/main.c:369: radio_set_channel(param_get(PARAM_NETID) % num_fh_channels);
   1A2A 75 82 03      [24] 2351 	mov	dpl,#0x03
   1A2D 12 27 64      [24] 2352 	lcall	_param_get
   1A30 AC 82         [24] 2353 	mov	r4,dpl
   1A32 AD 83         [24] 2354 	mov	r5,dph
   1A34 AE F0         [24] 2355 	mov	r6,b
   1A36 FF            [12] 2356 	mov	r7,a
   1A37 78 18         [12] 2357 	mov	r0,#_num_fh_channels
   1A39 90 05 A7      [24] 2358 	mov	dptr,#__modulong_PARM_2
   1A3C E2            [24] 2359 	movx	a,@r0
   1A3D F0            [24] 2360 	movx	@dptr,a
   1A3E E4            [12] 2361 	clr	a
   1A3F A3            [24] 2362 	inc	dptr
   1A40 F0            [24] 2363 	movx	@dptr,a
   1A41 E4            [12] 2364 	clr	a
   1A42 A3            [24] 2365 	inc	dptr
   1A43 F0            [24] 2366 	movx	@dptr,a
   1A44 E4            [12] 2367 	clr	a
   1A45 A3            [24] 2368 	inc	dptr
   1A46 F0            [24] 2369 	movx	@dptr,a
   1A47 8C 82         [24] 2370 	mov	dpl,r4
   1A49 8D 83         [24] 2371 	mov	dph,r5
   1A4B 8E F0         [24] 2372 	mov	b,r6
   1A4D EF            [12] 2373 	mov	a,r7
   1A4E 12 58 F8      [24] 2374 	lcall	__modulong
   1A51 AC 82         [24] 2375 	mov	r4,dpl
   1A53 8C 82         [24] 2376 	mov	dpl,r4
   1A55 12 35 75      [24] 2377 	lcall	_radio_set_channel
                           2378 ;	radio/main.c:372: if (!radio_configure(param_get(PARAM_AIR_SPEED)) &&
   1A58 75 82 02      [24] 2379 	mov	dpl,#0x02
   1A5B 12 27 64      [24] 2380 	lcall	_param_get
   1A5E AC 82         [24] 2381 	mov	r4,dpl
   1A60 8C 82         [24] 2382 	mov	dpl,r4
   1A62 12 35 9F      [24] 2383 	lcall	_radio_configure
   1A65 40 33         [24] 2384 	jc	00130$
                           2385 ;	radio/main.c:373: !radio_configure(param_get(PARAM_AIR_SPEED)) &&
   1A67 75 82 02      [24] 2386 	mov	dpl,#0x02
   1A6A 12 27 64      [24] 2387 	lcall	_param_get
   1A6D AC 82         [24] 2388 	mov	r4,dpl
   1A6F 8C 82         [24] 2389 	mov	dpl,r4
   1A71 12 35 9F      [24] 2390 	lcall	_radio_configure
   1A74 40 24         [24] 2391 	jc	00130$
                           2392 ;	radio/main.c:374: !radio_configure(param_get(PARAM_AIR_SPEED))) {
   1A76 75 82 02      [24] 2393 	mov	dpl,#0x02
   1A79 12 27 64      [24] 2394 	lcall	_param_get
   1A7C AC 82         [24] 2395 	mov	r4,dpl
   1A7E 8C 82         [24] 2396 	mov	dpl,r4
   1A80 12 35 9F      [24] 2397 	lcall	_radio_configure
   1A83 40 15         [24] 2398 	jc	00130$
                           2399 ;	radio/main.c:375: panic("radio_configure failed");
   1A85 74 0A         [12] 2400 	mov	a,#__str_5
   1A87 C0 E0         [24] 2401 	push	acc
   1A89 74 C8         [12] 2402 	mov	a,#(__str_5 >> 8)
   1A8B C0 E0         [24] 2403 	push	acc
   1A8D 74 80         [12] 2404 	mov	a,#0x80
   1A8F C0 E0         [24] 2405 	push	acc
   1A91 12 11 F8      [24] 2406 	lcall	_panic
   1A94 15 81         [12] 2407 	dec	sp
   1A96 15 81         [12] 2408 	dec	sp
   1A98 15 81         [12] 2409 	dec	sp
   1A9A                    2410 00130$:
                           2411 ;	radio/main.c:379: param_set(PARAM_AIR_SPEED, radio_air_rate());
   1A9A 12 30 A2      [24] 2412 	lcall	_radio_air_rate
   1A9D AF 82         [24] 2413 	mov	r7,dpl
   1A9F 78 69         [12] 2414 	mov	r0,#_param_set_PARM_2
   1AA1 EF            [12] 2415 	mov	a,r7
   1AA2 F2            [24] 2416 	movx	@r0,a
   1AA3 08            [12] 2417 	inc	r0
   1AA4 E4            [12] 2418 	clr	a
   1AA5 F2            [24] 2419 	movx	@r0,a
   1AA6 08            [12] 2420 	inc	r0
   1AA7 F2            [24] 2421 	movx	@r0,a
   1AA8 08            [12] 2422 	inc	r0
   1AA9 F2            [24] 2423 	movx	@r0,a
   1AAA 75 82 02      [24] 2424 	mov	dpl,#0x02
   1AAD 12 25 C1      [24] 2425 	lcall	_param_set
                           2426 ;	radio/main.c:382: radio_set_network_id(param_get(PARAM_NETID));
   1AB0 75 82 03      [24] 2427 	mov	dpl,#0x03
   1AB3 12 27 64      [24] 2428 	lcall	_param_get
   1AB6 12 38 B8      [24] 2429 	lcall	_radio_set_network_id
                           2430 ;	radio/main.c:385: radio_set_transmit_power(txpower);
   1AB9 78 54         [12] 2431 	mov	r0,#_radio_init_txpower_1_151
   1ABB E2            [24] 2432 	movx	a,@r0
   1ABC F5 82         [12] 2433 	mov	dpl,a
   1ABE 12 38 72      [24] 2434 	lcall	_radio_set_transmit_power
                           2435 ;	radio/main.c:388: param_set(PARAM_TXPOWER, radio_get_transmit_power());
   1AC1 12 38 B2      [24] 2436 	lcall	_radio_get_transmit_power
   1AC4 AF 82         [24] 2437 	mov	r7,dpl
   1AC6 78 69         [12] 2438 	mov	r0,#_param_set_PARM_2
   1AC8 EF            [12] 2439 	mov	a,r7
   1AC9 F2            [24] 2440 	movx	@r0,a
   1ACA 08            [12] 2441 	inc	r0
   1ACB E4            [12] 2442 	clr	a
   1ACC F2            [24] 2443 	movx	@r0,a
   1ACD 08            [12] 2444 	inc	r0
   1ACE F2            [24] 2445 	movx	@r0,a
   1ACF 08            [12] 2446 	inc	r0
   1AD0 F2            [24] 2447 	movx	@r0,a
   1AD1 75 82 04      [24] 2448 	mov	dpl,#0x04
   1AD4 12 25 C1      [24] 2449 	lcall	_param_set
                           2450 ;	radio/main.c:396: fhop_init(param_get(PARAM_NETID));
   1AD7 75 82 03      [24] 2451 	mov	dpl,#0x03
   1ADA 12 27 64      [24] 2452 	lcall	_param_get
   1ADD 12 0B 6C      [24] 2453 	lcall	_fhop_init
                           2454 ;	radio/main.c:399: tdm_init();
   1AE0 02 52 B2      [24] 2455 	ljmp	_tdm_init
                           2456 	.area CSEG    (CODE)
                           2457 	.area CONST   (CODE)
   C79C                    2458 _g_banner_string:
   C79C 53 69 4B 20 31 2E  2459 	.ascii "SiK 1.7 on RF50_DEMO"
        37 20 6F 6E 20 52
        46 35 30 5F 44 45
        4D 4F
   C7B0 00                 2460 	.db 0x00
   C7B1                    2461 _g_version_string:
   C7B1 31 2E 37           2462 	.ascii "1.7"
   C7B4 00                 2463 	.db 0x00
   C7B5                    2464 __str_0:
   C7B5 66 61 69 6C 65 64  2465 	.ascii "failed to enable receiver"
        20 74 6F 20 65 6E
        61 62 6C 65 20 72
        65 63 65 69 76 65
        72
   C7CE 00                 2466 	.db 0x00
   C7CF                    2467 __str_1:
   C7CF 0A                 2468 	.db 0x0A
   C7D0 2A 2A 50 41 4E 49  2469 	.ascii "**PANIC**"
        43 2A 2A
   C7D9 00                 2470 	.db 0x00
   C7DA                    2471 __str_2:
   C7DA 00                 2472 	.db 0x00
   C7DB                    2473 __str_3:
   C7DB 72 61 64 69 6F 5F  2474 	.ascii "radio_initialise failed"
        69 6E 69 74 69 61
        6C 69 73 65 20 66
        61 69 6C 65 64
   C7F2 00                 2475 	.db 0x00
   C7F3                    2476 __str_4:
   C7F3 62 61 64 20 62 6F  2477 	.ascii "bad board frequency %d"
        61 72 64 20 66 72
        65 71 75 65 6E 63
        79 20 25 64
   C809 00                 2478 	.db 0x00
   C80A                    2479 __str_5:
   C80A 72 61 64 69 6F 5F  2480 	.ascii "radio_configure failed"
        63 6F 6E 66 69 67
        75 72 65 20 66 61
        69 6C 65 64
   C820 00                 2481 	.db 0x00
                           2482 	.area XINIT   (CODE)
                           2483 	.area CABS    (ABS,CODE)
