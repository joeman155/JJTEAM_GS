                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:07 2013
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
                             21 	.globl _param_get
                             22 	.globl _memcpy
                             23 	.globl _SDN
                             24 	.globl _NSS1
                             25 	.globl _IRQ
                             26 	.globl _BUTTON_DOWN
                             27 	.globl _BUTTON_UP
                             28 	.globl _BUTTON_ENTER
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
                     00A0   562 _LED_RED	=	0x00a0
                     00A5   563 _LED_GREEN	=	0x00a5
                     0086   564 _BUTTON_ENTER	=	0x0086
                     0095   565 _BUTTON_UP	=	0x0095
                     0096   566 _BUTTON_DOWN	=	0x0096
                     0087   567 _IRQ	=	0x0087
                     0094   568 _NSS1	=	0x0094
                     00A6   569 _SDN	=	0x00a6
                            570 ;--------------------------------------------------------
                            571 ; overlayable register banks
                            572 ;--------------------------------------------------------
                            573 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     574 	.ds 8
                            575 ;--------------------------------------------------------
                            576 ; overlayable bit register bank
                            577 ;--------------------------------------------------------
                            578 	.area BIT_BANK	(REL,OVR,DATA)
   0027                     579 bits:
   0027                     580 	.ds 1
                     8000   581 	b0 = bits[0]
                     8100   582 	b1 = bits[1]
                     8200   583 	b2 = bits[2]
                     8300   584 	b3 = bits[3]
                     8400   585 	b4 = bits[4]
                     8500   586 	b5 = bits[5]
                     8600   587 	b6 = bits[6]
                     8700   588 	b7 = bits[7]
                            589 ;--------------------------------------------------------
                            590 ; internal ram data
                            591 ;--------------------------------------------------------
                            592 	.area DSEG    (DATA)
   004C                     593 _radio_receive_packet_crc1_1_135:
   004C                     594 	.ds 2
   004E                     595 _radio_transmit_golay_elen_1_186:
   004E                     596 	.ds 1
                            597 ;--------------------------------------------------------
                            598 ; overlayable items in internal ram 
                            599 ;--------------------------------------------------------
                            600 	.area	OSEG    (OVR,DATA)
                            601 ;--------------------------------------------------------
                            602 ; indirectly addressable internal ram data
                            603 ;--------------------------------------------------------
                            604 	.area ISEG    (DATA)
                            605 ;--------------------------------------------------------
                            606 ; absolute internal ram data
                            607 ;--------------------------------------------------------
                            608 	.area IABS    (ABS,DATA)
                            609 	.area IABS    (ABS,DATA)
                            610 ;--------------------------------------------------------
                            611 ; bit data
                            612 ;--------------------------------------------------------
                            613 	.area BSEG    (BIT)
   0016                     614 _packet_received:
   0016                     615 	.ds 1
   0017                     616 _preamble_detected:
   0017                     617 	.ds 1
   0018                     618 _radio_preamble_detected_EX0_saved_1_157:
   0018                     619 	.ds 1
   0019                     620 _radio_transmit_simple_transmit_started_1_170:
   0019                     621 	.ds 1
   001A                     622 _radio_transmit_golay_sloc0_1_0:
   001A                     623 	.ds 1
   001B                     624 _radio_transmit_EX0_saved_1_189:
   001B                     625 	.ds 1
   001C                     626 _radio_transmit_sloc0_1_0:
   001C                     627 	.ds 1
   001D                     628 _radio_initialise_sloc0_1_0:
   001D                     629 	.ds 1
   001E                     630 _radio_set_diversity_PARM_1:
   001E                     631 	.ds 1
                            632 ;--------------------------------------------------------
                            633 ; paged external ram data
                            634 ;--------------------------------------------------------
                            635 	.area PSEG    (PAG,XDATA)
   0079                     636 _receive_packet_length::
   0079                     637 	.ds 1
   007A                     638 _partial_packet_length::
   007A                     639 	.ds 1
   007B                     640 _last_rssi::
   007B                     641 	.ds 1
   007C                     642 _netid::
   007C                     643 	.ds 2
   007E                     644 _settings::
   007E                     645 	.ds 12
   008A                     646 _radio_receive_packet_PARM_2:
   008A                     647 	.ds 2
   008C                     648 _radio_write_transmit_fifo_PARM_2:
   008C                     649 	.ds 2
   008E                     650 _radio_transmit_simple_PARM_2:
   008E                     651 	.ds 2
   0090                     652 _radio_transmit_simple_PARM_3:
   0090                     653 	.ds 2
   0092                     654 _radio_transmit_golay_PARM_2:
   0092                     655 	.ds 2
   0094                     656 _radio_transmit_golay_PARM_3:
   0094                     657 	.ds 2
   0096                     658 _radio_transmit_PARM_2:
   0096                     659 	.ds 2
   0098                     660 _radio_transmit_PARM_3:
   0098                     661 	.ds 2
   009A                     662 _scale_uint32_PARM_2:
   009A                     663 	.ds 4
   009E                     664 _scale_uint32_value_1_248:
   009E                     665 	.ds 4
   00A2                     666 _set_frequency_registers_frequency_1_256:
   00A2                     667 	.ds 4
                            668 ;--------------------------------------------------------
                            669 ; external ram data
                            670 ;--------------------------------------------------------
                            671 	.area XSEG    (XDATA)
   0364                     672 _radio_buffer::
   0364                     673 	.ds 252
   0460                     674 _radio_receive_packet_length_1_134:
   0460                     675 	.ds 3
   0463                     676 _radio_receive_packet_gout_1_135:
   0463                     677 	.ds 3
   0466                     678 _radio_transmit_golay_length_1_185:
   0466                     679 	.ds 1
   0467                     680 _radio_transmit_golay_gin_1_186:
   0467                     681 	.ds 3
   046A                     682 _radio_transmit_length_1_188:
   046A                     683 	.ds 1
   046B                     684 _radio_set_channel_channel_1_206:
   046B                     685 	.ds 1
   046C                     686 _radio_set_transmit_power_power_1_230:
   046C                     687 	.ds 1
   046D                     688 _radio_set_transmit_power_i_1_231:
   046D                     689 	.ds 1
   046E                     690 _radio_set_network_id_id_1_236:
   046E                     691 	.ds 2
   0470                     692 _set_frequency_registers_band_1_257:
   0470                     693 	.ds 1
                            694 ;--------------------------------------------------------
                            695 ; absolute external ram data
                            696 ;--------------------------------------------------------
                            697 	.area XABS    (ABS,XDATA)
                            698 ;--------------------------------------------------------
                            699 ; external initialized ram data
                            700 ;--------------------------------------------------------
                            701 	.area XISEG   (XDATA)
                            702 	.area HOME    (CODE)
                            703 	.area GSINIT0 (CODE)
                            704 	.area GSINIT1 (CODE)
                            705 	.area GSINIT2 (CODE)
                            706 	.area GSINIT3 (CODE)
                            707 	.area GSINIT4 (CODE)
                            708 	.area GSINIT5 (CODE)
                            709 	.area GSINIT  (CODE)
                            710 	.area GSFINAL (CODE)
                            711 	.area CSEG    (CODE)
                            712 ;--------------------------------------------------------
                            713 ; global & static initialisations
                            714 ;--------------------------------------------------------
                            715 	.area HOME    (CODE)
                            716 	.area GSINIT  (CODE)
                            717 	.area GSFINAL (CODE)
                            718 	.area GSINIT  (CODE)
                            719 ;--------------------------------------------------------
                            720 ; Home
                            721 ;--------------------------------------------------------
                            722 	.area HOME    (CODE)
                            723 	.area HOME    (CODE)
                            724 ;--------------------------------------------------------
                            725 ; code
                            726 ;--------------------------------------------------------
                            727 	.area CSEG    (CODE)
                            728 ;------------------------------------------------------------
                            729 ;Allocation info for local variables in function 'radio_receive_packet'
                            730 ;------------------------------------------------------------
                            731 ;crc1                      Allocated with name '_radio_receive_packet_crc1_1_135'
                            732 ;crc2                      Allocated to registers r5 r7 
                            733 ;errcount                  Allocated to registers r6 
                            734 ;elen                      Allocated to registers r7 
                            735 ;length                    Allocated with name '_radio_receive_packet_length_1_134'
                            736 ;gout                      Allocated with name '_radio_receive_packet_gout_1_135'
                            737 ;------------------------------------------------------------
                            738 ;	radio/radio.c:77: radio_receive_packet(uint8_t *length, __xdata uint8_t * __pdata buf)
                            739 ;	-----------------------------------------
                            740 ;	 function radio_receive_packet
                            741 ;	-----------------------------------------
   2DD0                     742 _radio_receive_packet:
                     0007   743 	ar7 = 0x07
                     0006   744 	ar6 = 0x06
                     0005   745 	ar5 = 0x05
                     0004   746 	ar4 = 0x04
                     0003   747 	ar3 = 0x03
                     0002   748 	ar2 = 0x02
                     0001   749 	ar1 = 0x01
                     0000   750 	ar0 = 0x00
   2DD0 AF F0         [24]  751 	mov	r7,b
   2DD2 AE 83         [24]  752 	mov	r6,dph
   2DD4 E5 82         [12]  753 	mov	a,dpl
   2DD6 90 04 60      [24]  754 	mov	dptr,#_radio_receive_packet_length_1_134
   2DD9 F0            [24]  755 	movx	@dptr,a
   2DDA EE            [12]  756 	mov	a,r6
   2DDB A3            [24]  757 	inc	dptr
   2DDC F0            [24]  758 	movx	@dptr,a
   2DDD EF            [12]  759 	mov	a,r7
   2DDE A3            [24]  760 	inc	dptr
   2DDF F0            [24]  761 	movx	@dptr,a
                            762 ;	radio/radio.c:84: if (!packet_received) {
   2DE0 20 16 02      [24]  763 	jb	_packet_received,00102$
                            764 ;	radio/radio.c:85: return false;
   2DE3 C3            [12]  765 	clr	c
   2DE4 22            [24]  766 	ret
   2DE5                     767 00102$:
                            768 ;	radio/radio.c:88: if (receive_packet_length > MAX_PACKET_LENGTH) {
   2DE5 78 79         [12]  769 	mov	r0,#_receive_packet_length
   2DE7 C3            [12]  770 	clr	c
   2DE8 E2            [24]  771 	movx	a,@r0
   2DE9 F5 F0         [12]  772 	mov	b,a
   2DEB 74 FC         [12]  773 	mov	a,#0xFC
   2DED 95 F0         [12]  774 	subb	a,b
   2DEF 50 06         [24]  775 	jnc	00104$
                            776 ;	radio/radio.c:89: radio_receiver_on();
   2DF1 12 34 40      [24]  777 	lcall	_radio_receiver_on
                            778 ;	radio/radio.c:90: goto failed;
   2DF4 02 30 10      [24]  779 	ljmp	00126$
   2DF7                     780 00104$:
                            781 ;	radio/radio.c:101: if (!feature_golay) {
   2DF7 20 04 45      [24]  782 	jb	_feature_golay,00106$
                            783 ;	radio/radio.c:103: *length = receive_packet_length;
   2DFA 90 04 60      [24]  784 	mov	dptr,#_radio_receive_packet_length_1_134
   2DFD E0            [24]  785 	movx	a,@dptr
   2DFE FD            [12]  786 	mov	r5,a
   2DFF A3            [24]  787 	inc	dptr
   2E00 E0            [24]  788 	movx	a,@dptr
   2E01 FE            [12]  789 	mov	r6,a
   2E02 A3            [24]  790 	inc	dptr
   2E03 E0            [24]  791 	movx	a,@dptr
   2E04 FF            [12]  792 	mov	r7,a
   2E05 8D 82         [24]  793 	mov	dpl,r5
   2E07 8E 83         [24]  794 	mov	dph,r6
   2E09 8F F0         [24]  795 	mov	b,r7
   2E0B 78 79         [12]  796 	mov	r0,#_receive_packet_length
   2E0D E2            [24]  797 	movx	a,@r0
   2E0E 12 5D 7C      [24]  798 	lcall	__gptrput
                            799 ;	radio/radio.c:104: memcpy(buf, radio_buffer, receive_packet_length);
   2E11 78 8A         [12]  800 	mov	r0,#_radio_receive_packet_PARM_2
   2E13 E2            [24]  801 	movx	a,@r0
   2E14 FD            [12]  802 	mov	r5,a
   2E15 08            [12]  803 	inc	r0
   2E16 E2            [24]  804 	movx	a,@r0
   2E17 FE            [12]  805 	mov	r6,a
   2E18 7F 00         [12]  806 	mov	r7,#0x00
   2E1A 90 05 C1      [24]  807 	mov	dptr,#_memcpy_PARM_2
   2E1D 74 64         [12]  808 	mov	a,#_radio_buffer
   2E1F F0            [24]  809 	movx	@dptr,a
   2E20 74 03         [12]  810 	mov	a,#(_radio_buffer >> 8)
   2E22 A3            [24]  811 	inc	dptr
   2E23 F0            [24]  812 	movx	@dptr,a
   2E24 E4            [12]  813 	clr	a
   2E25 A3            [24]  814 	inc	dptr
   2E26 F0            [24]  815 	movx	@dptr,a
   2E27 78 79         [12]  816 	mov	r0,#_receive_packet_length
   2E29 90 05 C4      [24]  817 	mov	dptr,#_memcpy_PARM_3
   2E2C E2            [24]  818 	movx	a,@r0
   2E2D F0            [24]  819 	movx	@dptr,a
   2E2E E4            [12]  820 	clr	a
   2E2F A3            [24]  821 	inc	dptr
   2E30 F0            [24]  822 	movx	@dptr,a
   2E31 8D 82         [24]  823 	mov	dpl,r5
   2E33 8E 83         [24]  824 	mov	dph,r6
   2E35 8F F0         [24]  825 	mov	b,r7
   2E37 12 5C EF      [24]  826 	lcall	_memcpy
                            827 ;	radio/radio.c:105: radio_receiver_on();
   2E3A 12 34 40      [24]  828 	lcall	_radio_receiver_on
                            829 ;	radio/radio.c:106: return true;
   2E3D D3            [12]  830 	setb	c
   2E3E 22            [24]  831 	ret
   2E3F                     832 00106$:
                            833 ;	radio/radio.c:112: memcpy(buf, radio_buffer, receive_packet_length);
   2E3F 78 8A         [12]  834 	mov	r0,#_radio_receive_packet_PARM_2
   2E41 E2            [24]  835 	movx	a,@r0
   2E42 FD            [12]  836 	mov	r5,a
   2E43 08            [12]  837 	inc	r0
   2E44 E2            [24]  838 	movx	a,@r0
   2E45 FE            [12]  839 	mov	r6,a
   2E46 7F 00         [12]  840 	mov	r7,#0x00
   2E48 90 05 C1      [24]  841 	mov	dptr,#_memcpy_PARM_2
   2E4B 74 64         [12]  842 	mov	a,#_radio_buffer
   2E4D F0            [24]  843 	movx	@dptr,a
   2E4E 74 03         [12]  844 	mov	a,#(_radio_buffer >> 8)
   2E50 A3            [24]  845 	inc	dptr
   2E51 F0            [24]  846 	movx	@dptr,a
   2E52 E4            [12]  847 	clr	a
   2E53 A3            [24]  848 	inc	dptr
   2E54 F0            [24]  849 	movx	@dptr,a
   2E55 78 79         [12]  850 	mov	r0,#_receive_packet_length
   2E57 90 05 C4      [24]  851 	mov	dptr,#_memcpy_PARM_3
   2E5A E2            [24]  852 	movx	a,@r0
   2E5B F0            [24]  853 	movx	@dptr,a
   2E5C E4            [12]  854 	clr	a
   2E5D A3            [24]  855 	inc	dptr
   2E5E F0            [24]  856 	movx	@dptr,a
   2E5F 8D 82         [24]  857 	mov	dpl,r5
   2E61 8E 83         [24]  858 	mov	dph,r6
   2E63 8F F0         [24]  859 	mov	b,r7
   2E65 12 5C EF      [24]  860 	lcall	_memcpy
                            861 ;	radio/radio.c:116: elen = receive_packet_length;
   2E68 78 79         [12]  862 	mov	r0,#_receive_packet_length
   2E6A E2            [24]  863 	movx	a,@r0
   2E6B FF            [12]  864 	mov	r7,a
                            865 ;	radio/radio.c:117: radio_receiver_on();	
   2E6C C0 07         [24]  866 	push	ar7
   2E6E 12 34 40      [24]  867 	lcall	_radio_receiver_on
   2E71 D0 07         [24]  868 	pop	ar7
                            869 ;	radio/radio.c:119: if (elen < 12 || (elen%6) != 0) {
   2E73 BF 0C 00      [24]  870 	cjne	r7,#0x0C,00176$
   2E76                     871 00176$:
   2E76 50 03         [24]  872 	jnc	00177$
   2E78 02 30 10      [24]  873 	ljmp	00126$
   2E7B                     874 00177$:
   2E7B 75 F0 06      [24]  875 	mov	b,#0x06
   2E7E EF            [12]  876 	mov	a,r7
   2E7F 84            [48]  877 	div	ab
   2E80 E5 F0         [12]  878 	mov	a,b
   2E82 60 03         [24]  879 	jz	00178$
   2E84 02 30 10      [24]  880 	ljmp	00126$
   2E87                     881 00178$:
                            882 ;	radio/radio.c:126: errcount = golay_decode(6, buf, gout);
   2E87 78 8A         [12]  883 	mov	r0,#_radio_receive_packet_PARM_2
   2E89 79 2D         [12]  884 	mov	r1,#_golay_decode_PARM_2
   2E8B E2            [24]  885 	movx	a,@r0
   2E8C F3            [24]  886 	movx	@r1,a
   2E8D 08            [12]  887 	inc	r0
   2E8E E2            [24]  888 	movx	a,@r0
   2E8F 09            [12]  889 	inc	r1
   2E90 F3            [24]  890 	movx	@r1,a
   2E91 78 2F         [12]  891 	mov	r0,#_golay_decode_PARM_3
   2E93 74 63         [12]  892 	mov	a,#_radio_receive_packet_gout_1_135
   2E95 F2            [24]  893 	movx	@r0,a
   2E96 08            [12]  894 	inc	r0
   2E97 74 04         [12]  895 	mov	a,#(_radio_receive_packet_gout_1_135 >> 8)
   2E99 F2            [24]  896 	movx	@r0,a
   2E9A 75 82 06      [24]  897 	mov	dpl,#0x06
   2E9D C0 07         [24]  898 	push	ar7
   2E9F 12 10 B6      [24]  899 	lcall	_golay_decode
   2EA2 AE 82         [24]  900 	mov	r6,dpl
   2EA4 D0 07         [24]  901 	pop	ar7
                            902 ;	radio/radio.c:127: if (gout[0] != netid[0] ||
   2EA6 90 04 63      [24]  903 	mov	dptr,#_radio_receive_packet_gout_1_135
   2EA9 E0            [24]  904 	movx	a,@dptr
   2EAA FD            [12]  905 	mov	r5,a
   2EAB 78 7C         [12]  906 	mov	r0,#_netid
   2EAD E2            [24]  907 	movx	a,@r0
   2EAE FC            [12]  908 	mov	r4,a
   2EAF ED            [12]  909 	mov	a,r5
   2EB0 B5 04 02      [24]  910 	cjne	a,ar4,00179$
   2EB3 80 03         [24]  911 	sjmp	00180$
   2EB5                     912 00179$:
   2EB5 02 30 10      [24]  913 	ljmp	00126$
   2EB8                     914 00180$:
                            915 ;	radio/radio.c:128: gout[1] != netid[1]) {
   2EB8 90 04 64      [24]  916 	mov	dptr,#(_radio_receive_packet_gout_1_135 + 0x0001)
   2EBB E0            [24]  917 	movx	a,@dptr
   2EBC FD            [12]  918 	mov	r5,a
   2EBD 78 7D         [12]  919 	mov	r0,#(_netid + 0x0001)
   2EBF E2            [24]  920 	movx	a,@r0
   2EC0 FC            [12]  921 	mov	r4,a
   2EC1 ED            [12]  922 	mov	a,r5
   2EC2 B5 04 02      [24]  923 	cjne	a,ar4,00181$
   2EC5 80 03         [24]  924 	sjmp	00182$
   2EC7                     925 00181$:
   2EC7 02 30 10      [24]  926 	ljmp	00126$
   2ECA                     927 00182$:
                            928 ;	radio/radio.c:136: if (6*((gout[2]+2)/3+2) != elen) {
   2ECA 90 04 65      [24]  929 	mov	dptr,#(_radio_receive_packet_gout_1_135 + 0x0002)
   2ECD E0            [24]  930 	movx	a,@dptr
   2ECE FD            [12]  931 	mov	r5,a
   2ECF 7C 00         [12]  932 	mov	r4,#0x00
   2ED1 74 02         [12]  933 	mov	a,#0x02
   2ED3 2D            [12]  934 	add	a,r5
   2ED4 FD            [12]  935 	mov	r5,a
   2ED5 E4            [12]  936 	clr	a
   2ED6 3C            [12]  937 	addc	a,r4
   2ED7 FC            [12]  938 	mov	r4,a
   2ED8 90 05 E8      [24]  939 	mov	dptr,#__divsint_PARM_2
   2EDB 74 03         [12]  940 	mov	a,#0x03
   2EDD F0            [24]  941 	movx	@dptr,a
   2EDE E4            [12]  942 	clr	a
   2EDF A3            [24]  943 	inc	dptr
   2EE0 F0            [24]  944 	movx	@dptr,a
   2EE1 8D 82         [24]  945 	mov	dpl,r5
   2EE3 8C 83         [24]  946 	mov	dph,r4
   2EE5 C0 07         [24]  947 	push	ar7
   2EE7 C0 06         [24]  948 	push	ar6
   2EE9 12 60 D3      [24]  949 	lcall	__divsint
   2EEC E5 82         [12]  950 	mov	a,dpl
   2EEE 85 83 F0      [24]  951 	mov	b,dph
   2EF1 90 05 CB      [24]  952 	mov	dptr,#__mulint_PARM_2
   2EF4 24 02         [12]  953 	add	a,#0x02
   2EF6 F0            [24]  954 	movx	@dptr,a
   2EF7 E4            [12]  955 	clr	a
   2EF8 35 F0         [12]  956 	addc	a,b
   2EFA A3            [24]  957 	inc	dptr
   2EFB F0            [24]  958 	movx	@dptr,a
   2EFC 90 00 06      [24]  959 	mov	dptr,#0x0006
   2EFF 12 5D C7      [24]  960 	lcall	__mulint
   2F02 AC 82         [24]  961 	mov	r4,dpl
   2F04 AD 83         [24]  962 	mov	r5,dph
   2F06 D0 06         [24]  963 	pop	ar6
   2F08 D0 07         [24]  964 	pop	ar7
   2F0A 8F 02         [24]  965 	mov	ar2,r7
   2F0C 7B 00         [12]  966 	mov	r3,#0x00
   2F0E EC            [12]  967 	mov	a,r4
   2F0F B5 02 06      [24]  968 	cjne	a,ar2,00183$
   2F12 ED            [12]  969 	mov	a,r5
   2F13 B5 03 02      [24]  970 	cjne	a,ar3,00183$
   2F16 80 03         [24]  971 	sjmp	00184$
   2F18                     972 00183$:
   2F18 02 30 10      [24]  973 	ljmp	00126$
   2F1B                     974 00184$:
                            975 ;	radio/radio.c:144: errcount += golay_decode(6, &buf[6], gout);
   2F1B 78 8A         [12]  976 	mov	r0,#_radio_receive_packet_PARM_2
   2F1D 79 2D         [12]  977 	mov	r1,#_golay_decode_PARM_2
   2F1F E2            [24]  978 	movx	a,@r0
   2F20 24 06         [12]  979 	add	a,#0x06
   2F22 F3            [24]  980 	movx	@r1,a
   2F23 08            [12]  981 	inc	r0
   2F24 E2            [24]  982 	movx	a,@r0
   2F25 34 00         [12]  983 	addc	a,#0x00
   2F27 09            [12]  984 	inc	r1
   2F28 F3            [24]  985 	movx	@r1,a
   2F29 78 2F         [12]  986 	mov	r0,#_golay_decode_PARM_3
   2F2B 74 63         [12]  987 	mov	a,#_radio_receive_packet_gout_1_135
   2F2D F2            [24]  988 	movx	@r0,a
   2F2E 08            [12]  989 	inc	r0
   2F2F 74 04         [12]  990 	mov	a,#(_radio_receive_packet_gout_1_135 >> 8)
   2F31 F2            [24]  991 	movx	@r0,a
   2F32 75 82 06      [24]  992 	mov	dpl,#0x06
   2F35 C0 07         [24]  993 	push	ar7
   2F37 C0 06         [24]  994 	push	ar6
   2F39 12 10 B6      [24]  995 	lcall	_golay_decode
   2F3C AD 82         [24]  996 	mov	r5,dpl
   2F3E D0 06         [24]  997 	pop	ar6
   2F40 D0 07         [24]  998 	pop	ar7
   2F42 ED            [12]  999 	mov	a,r5
   2F43 2E            [12] 1000 	add	a,r6
   2F44 FE            [12] 1001 	mov	r6,a
                           1002 ;	radio/radio.c:145: crc1 = gout[0] | (((uint16_t)gout[1])<<8);
   2F45 90 04 63      [24] 1003 	mov	dptr,#_radio_receive_packet_gout_1_135
   2F48 E0            [24] 1004 	movx	a,@dptr
   2F49 FD            [12] 1005 	mov	r5,a
   2F4A 90 04 64      [24] 1006 	mov	dptr,#(_radio_receive_packet_gout_1_135 + 0x0001)
   2F4D E0            [24] 1007 	movx	a,@dptr
   2F4E FB            [12] 1008 	mov	r3,a
   2F4F E4            [12] 1009 	clr	a
   2F50 FC            [12] 1010 	mov	r4,a
   2F51 FA            [12] 1011 	mov	r2,a
   2F52 4D            [12] 1012 	orl	a,r5
   2F53 F5 4C         [12] 1013 	mov	_radio_receive_packet_crc1_1_135,a
   2F55 EB            [12] 1014 	mov	a,r3
   2F56 4A            [12] 1015 	orl	a,r2
   2F57 F5 4D         [12] 1016 	mov	(_radio_receive_packet_crc1_1_135 + 1),a
                           1017 ;	radio/radio.c:147: if (elen != 12) {
   2F59 BF 0C 02      [24] 1018 	cjne	r7,#0x0C,00185$
   2F5C 80 2A         [24] 1019 	sjmp	00116$
   2F5E                    1020 00185$:
                           1021 ;	radio/radio.c:148: errcount += golay_decode(elen-12, &buf[12], buf);
   2F5E EF            [12] 1022 	mov	a,r7
   2F5F 24 F4         [12] 1023 	add	a,#0xF4
   2F61 FF            [12] 1024 	mov	r7,a
   2F62 78 8A         [12] 1025 	mov	r0,#_radio_receive_packet_PARM_2
   2F64 79 2D         [12] 1026 	mov	r1,#_golay_decode_PARM_2
   2F66 E2            [24] 1027 	movx	a,@r0
   2F67 24 0C         [12] 1028 	add	a,#0x0C
   2F69 F3            [24] 1029 	movx	@r1,a
   2F6A 08            [12] 1030 	inc	r0
   2F6B E2            [24] 1031 	movx	a,@r0
   2F6C 34 00         [12] 1032 	addc	a,#0x00
   2F6E 09            [12] 1033 	inc	r1
   2F6F F3            [24] 1034 	movx	@r1,a
   2F70 78 8A         [12] 1035 	mov	r0,#_radio_receive_packet_PARM_2
   2F72 79 2F         [12] 1036 	mov	r1,#_golay_decode_PARM_3
   2F74 E2            [24] 1037 	movx	a,@r0
   2F75 F3            [24] 1038 	movx	@r1,a
   2F76 08            [12] 1039 	inc	r0
   2F77 E2            [24] 1040 	movx	a,@r0
   2F78 09            [12] 1041 	inc	r1
   2F79 F3            [24] 1042 	movx	@r1,a
   2F7A 8F 82         [24] 1043 	mov	dpl,r7
   2F7C C0 06         [24] 1044 	push	ar6
   2F7E 12 10 B6      [24] 1045 	lcall	_golay_decode
   2F81 AF 82         [24] 1046 	mov	r7,dpl
   2F83 D0 06         [24] 1047 	pop	ar6
   2F85 EF            [12] 1048 	mov	a,r7
   2F86 2E            [12] 1049 	add	a,r6
   2F87 FE            [12] 1050 	mov	r6,a
   2F88                    1051 00116$:
                           1052 ;	radio/radio.c:151: *length = gout[2];
   2F88 90 04 60      [24] 1053 	mov	dptr,#_radio_receive_packet_length_1_134
   2F8B E0            [24] 1054 	movx	a,@dptr
   2F8C FA            [12] 1055 	mov	r2,a
   2F8D A3            [24] 1056 	inc	dptr
   2F8E E0            [24] 1057 	movx	a,@dptr
   2F8F FB            [12] 1058 	mov	r3,a
   2F90 A3            [24] 1059 	inc	dptr
   2F91 E0            [24] 1060 	movx	a,@dptr
   2F92 FF            [12] 1061 	mov	r7,a
   2F93 90 04 65      [24] 1062 	mov	dptr,#(_radio_receive_packet_gout_1_135 + 0x0002)
   2F96 E0            [24] 1063 	movx	a,@dptr
   2F97 FD            [12] 1064 	mov	r5,a
   2F98 8A 82         [24] 1065 	mov	dpl,r2
   2F9A 8B 83         [24] 1066 	mov	dph,r3
   2F9C 8F F0         [24] 1067 	mov	b,r7
   2F9E 12 5D 7C      [24] 1068 	lcall	__gptrput
                           1069 ;	radio/radio.c:153: crc2 = crc16(*length, buf);
   2FA1 78 8A         [12] 1070 	mov	r0,#_radio_receive_packet_PARM_2
   2FA3 E2            [24] 1071 	movx	a,@r0
   2FA4 F5 0C         [12] 1072 	mov	_crc16_PARM_2,a
   2FA6 08            [12] 1073 	inc	r0
   2FA7 E2            [24] 1074 	movx	a,@r0
   2FA8 F5 0D         [12] 1075 	mov	(_crc16_PARM_2 + 1),a
   2FAA 8D 82         [24] 1076 	mov	dpl,r5
   2FAC C0 06         [24] 1077 	push	ar6
   2FAE 12 0A 2A      [24] 1078 	lcall	_crc16
   2FB1 AD 82         [24] 1079 	mov	r5,dpl
   2FB3 AF 83         [24] 1080 	mov	r7,dph
   2FB5 D0 06         [24] 1081 	pop	ar6
                           1082 ;	radio/radio.c:155: if (crc1 != crc2) {
   2FB7 ED            [12] 1083 	mov	a,r5
   2FB8 B5 4C 55      [24] 1084 	cjne	a,_radio_receive_packet_crc1_1_135,00126$
   2FBB EF            [12] 1085 	mov	a,r7
   2FBC B5 4D 51      [24] 1086 	cjne	a,(_radio_receive_packet_crc1_1_135 + 1),00126$
                           1087 ;	radio/radio.c:165: if (errcount != 0) {
   2FBF EE            [12] 1088 	mov	a,r6
   2FC0 60 4C         [24] 1089 	jz	00125$
                           1090 ;	radio/radio.c:166: if ((uint16_t)(0xFFFF - errcount) > errors.corrected_errors) {
   2FC2 7F 00         [12] 1091 	mov	r7,#0x00
   2FC4 74 FF         [12] 1092 	mov	a,#0xFF
   2FC6 C3            [12] 1093 	clr	c
   2FC7 9E            [12] 1094 	subb	a,r6
   2FC8 FC            [12] 1095 	mov	r4,a
   2FC9 74 FF         [12] 1096 	mov	a,#0xFF
   2FCB 9F            [12] 1097 	subb	a,r7
   2FCC FD            [12] 1098 	mov	r5,a
   2FCD 78 3C         [12] 1099 	mov	r0,#(_errors + 0x0008)
   2FCF E2            [24] 1100 	movx	a,@r0
   2FD0 FA            [12] 1101 	mov	r2,a
   2FD1 08            [12] 1102 	inc	r0
   2FD2 E2            [24] 1103 	movx	a,@r0
   2FD3 FB            [12] 1104 	mov	r3,a
   2FD4 C3            [12] 1105 	clr	c
   2FD5 EA            [12] 1106 	mov	a,r2
   2FD6 9C            [12] 1107 	subb	a,r4
   2FD7 EB            [12] 1108 	mov	a,r3
   2FD8 9D            [12] 1109 	subb	a,r5
   2FD9 50 0F         [24] 1110 	jnc	00120$
                           1111 ;	radio/radio.c:167: errors.corrected_errors += errcount;
   2FDB EE            [12] 1112 	mov	a,r6
   2FDC 2A            [12] 1113 	add	a,r2
   2FDD FE            [12] 1114 	mov	r6,a
   2FDE EF            [12] 1115 	mov	a,r7
   2FDF 3B            [12] 1116 	addc	a,r3
   2FE0 FF            [12] 1117 	mov	r7,a
   2FE1 78 3C         [12] 1118 	mov	r0,#(_errors + 0x0008)
   2FE3 EE            [12] 1119 	mov	a,r6
   2FE4 F2            [24] 1120 	movx	@r0,a
   2FE5 08            [12] 1121 	inc	r0
   2FE6 EF            [12] 1122 	mov	a,r7
   2FE7 F2            [24] 1123 	movx	@r0,a
   2FE8 80 09         [24] 1124 	sjmp	00121$
   2FEA                    1125 00120$:
                           1126 ;	radio/radio.c:169: errors.corrected_errors = 0xFFFF;
   2FEA 78 3C         [12] 1127 	mov	r0,#(_errors + 0x0008)
   2FEC 74 FF         [12] 1128 	mov	a,#0xFF
   2FEE F2            [24] 1129 	movx	@r0,a
   2FEF 08            [12] 1130 	inc	r0
   2FF0 74 FF         [12] 1131 	mov	a,#0xFF
   2FF2 F2            [24] 1132 	movx	@r0,a
   2FF3                    1133 00121$:
                           1134 ;	radio/radio.c:171: if (errors.corrected_packets != 0xFFFF) {
   2FF3 78 3E         [12] 1135 	mov	r0,#(_errors + 0x000a)
   2FF5 E2            [24] 1136 	movx	a,@r0
   2FF6 FE            [12] 1137 	mov	r6,a
   2FF7 08            [12] 1138 	inc	r0
   2FF8 E2            [24] 1139 	movx	a,@r0
   2FF9 FF            [12] 1140 	mov	r7,a
   2FFA BE FF 05      [24] 1141 	cjne	r6,#0xFF,00190$
   2FFD BF FF 02      [24] 1142 	cjne	r7,#0xFF,00190$
   3000 80 0C         [24] 1143 	sjmp	00125$
   3002                    1144 00190$:
                           1145 ;	radio/radio.c:172: errors.corrected_packets++;
   3002 0E            [12] 1146 	inc	r6
   3003 BE 00 01      [24] 1147 	cjne	r6,#0x00,00191$
   3006 0F            [12] 1148 	inc	r7
   3007                    1149 00191$:
   3007 78 3E         [12] 1150 	mov	r0,#(_errors + 0x000a)
   3009 EE            [12] 1151 	mov	a,r6
   300A F2            [24] 1152 	movx	@r0,a
   300B 08            [12] 1153 	inc	r0
   300C EF            [12] 1154 	mov	a,r7
   300D F2            [24] 1155 	movx	@r0,a
   300E                    1156 00125$:
                           1157 ;	radio/radio.c:176: return true;
   300E D3            [12] 1158 	setb	c
                           1159 ;	radio/radio.c:178: failed:
   300F 22            [24] 1160 	ret
   3010                    1161 00126$:
                           1162 ;	radio/radio.c:179: if (errors.rx_errors != 0xFFFF) {
   3010 78 34         [12] 1163 	mov	r0,#_errors
   3012 E2            [24] 1164 	movx	a,@r0
   3013 FE            [12] 1165 	mov	r6,a
   3014 08            [12] 1166 	inc	r0
   3015 E2            [24] 1167 	movx	a,@r0
   3016 FF            [12] 1168 	mov	r7,a
   3017 BE FF 05      [24] 1169 	cjne	r6,#0xFF,00192$
   301A BF FF 02      [24] 1170 	cjne	r7,#0xFF,00192$
   301D 80 0C         [24] 1171 	sjmp	00128$
   301F                    1172 00192$:
                           1173 ;	radio/radio.c:180: errors.rx_errors++;
   301F 0E            [12] 1174 	inc	r6
   3020 BE 00 01      [24] 1175 	cjne	r6,#0x00,00193$
   3023 0F            [12] 1176 	inc	r7
   3024                    1177 00193$:
   3024 78 34         [12] 1178 	mov	r0,#_errors
   3026 EE            [12] 1179 	mov	a,r6
   3027 F2            [24] 1180 	movx	@r0,a
   3028 08            [12] 1181 	inc	r0
   3029 EF            [12] 1182 	mov	a,r7
   302A F2            [24] 1183 	movx	@r0,a
   302B                    1184 00128$:
                           1185 ;	radio/radio.c:182: return false;
   302B C3            [12] 1186 	clr	c
   302C 22            [24] 1187 	ret
                           1188 ;------------------------------------------------------------
                           1189 ;Allocation info for local variables in function 'radio_write_transmit_fifo'
                           1190 ;------------------------------------------------------------
                           1191 ;n                         Allocated to registers r7 
                           1192 ;------------------------------------------------------------
                           1193 ;	radio/radio.c:189: radio_write_transmit_fifo(register uint8_t n, __xdata uint8_t * __pdata buffer)
                           1194 ;	-----------------------------------------
                           1195 ;	 function radio_write_transmit_fifo
                           1196 ;	-----------------------------------------
   302D                    1197 _radio_write_transmit_fifo:
   302D AF 82         [24] 1198 	mov	r7,dpl
                           1199 ;	radio/radio.c:191: NSS1 = 0;
   302F C2 94         [12] 1200 	clr	_NSS1
                           1201 ;	radio/radio.c:192: SPIF1 = 0;
   3031 C2 B7         [12] 1202 	clr	_SPIF1
                           1203 ;	radio/radio.c:193: SPI1DAT = (0x80 | EZRADIOPRO_FIFO_ACCESS);
   3033 75 86 FF      [24] 1204 	mov	_SPI1DAT,#0xFF
                           1205 ;	radio/radio.c:195: while (n--) {
   3036 78 8C         [12] 1206 	mov	r0,#_radio_write_transmit_fifo_PARM_2
   3038 E2            [24] 1207 	movx	a,@r0
   3039 FD            [12] 1208 	mov	r5,a
   303A 08            [12] 1209 	inc	r0
   303B E2            [24] 1210 	movx	a,@r0
   303C FE            [12] 1211 	mov	r6,a
   303D                    1212 00104$:
   303D 8F 04         [24] 1213 	mov	ar4,r7
   303F 1F            [12] 1214 	dec	r7
   3040 EC            [12] 1215 	mov	a,r4
   3041 60 11         [24] 1216 	jz	00107$
                           1217 ;	radio/radio.c:196: while (!TXBMT1) /* noop */;
   3043                    1218 00101$:
   3043 30 B1 FD      [24] 1219 	jnb	_TXBMT1,00101$
                           1220 ;	radio/radio.c:197: SPI1DAT = *buffer++;
   3046 8D 82         [24] 1221 	mov	dpl,r5
   3048 8E 83         [24] 1222 	mov	dph,r6
   304A E0            [24] 1223 	movx	a,@dptr
   304B F5 86         [12] 1224 	mov	_SPI1DAT,a
   304D A3            [24] 1225 	inc	dptr
   304E AD 82         [24] 1226 	mov	r5,dpl
   3050 AE 83         [24] 1227 	mov	r6,dph
                           1228 ;	radio/radio.c:200: while (!TXBMT1) /* noop */;
   3052 80 E9         [24] 1229 	sjmp	00104$
   3054                    1230 00107$:
   3054 30 B1 FD      [24] 1231 	jnb	_TXBMT1,00107$
                           1232 ;	radio/radio.c:201: while ((SPI1CFG & 0x80) == 0x80);
   3057                    1233 00110$:
   3057 74 80         [12] 1234 	mov	a,#0x80
   3059 55 84         [12] 1235 	anl	a,_SPI1CFG
   305B FF            [12] 1236 	mov	r7,a
   305C BF 80 02      [24] 1237 	cjne	r7,#0x80,00137$
   305F 80 F6         [24] 1238 	sjmp	00110$
   3061                    1239 00137$:
                           1240 ;	radio/radio.c:203: SPIF1 = 0;
   3061 C2 B7         [12] 1241 	clr	_SPIF1
                           1242 ;	radio/radio.c:204: NSS1 = 1;
   3063 D2 94         [12] 1243 	setb	_NSS1
   3065 22            [24] 1244 	ret
                           1245 ;------------------------------------------------------------
                           1246 ;Allocation info for local variables in function 'radio_receive_in_progress'
                           1247 ;------------------------------------------------------------
                           1248 ;	radio/radio.c:210: radio_receive_in_progress(void)
                           1249 ;	-----------------------------------------
                           1250 ;	 function radio_receive_in_progress
                           1251 ;	-----------------------------------------
   3066                    1252 _radio_receive_in_progress:
                           1253 ;	radio/radio.c:212: if (packet_received ||
   3066 20 16 05      [24] 1254 	jb	_packet_received,00101$
                           1255 ;	radio/radio.c:213: partial_packet_length != 0) {
   3069 78 7A         [12] 1256 	mov	r0,#_partial_packet_length
   306B E2            [24] 1257 	movx	a,@r0
   306C 60 02         [24] 1258 	jz	00102$
   306E                    1259 00101$:
                           1260 ;	radio/radio.c:214: return true;
   306E D3            [12] 1261 	setb	c
   306F 22            [24] 1262 	ret
   3070                    1263 00102$:
                           1264 ;	radio/radio.c:218: if (register_read(EZRADIOPRO_EZMAC_STATUS) & EZRADIOPRO_PKRX) {
   3070 75 82 31      [24] 1265 	mov	dpl,#0x31
   3073 12 39 3F      [24] 1266 	lcall	_register_read
   3076 E5 82         [12] 1267 	mov	a,dpl
   3078 30 E4 02      [24] 1268 	jnb	acc.4,00105$
                           1269 ;	radio/radio.c:219: return true;
   307B D3            [12] 1270 	setb	c
   307C 22            [24] 1271 	ret
   307D                    1272 00105$:
                           1273 ;	radio/radio.c:221: return false;
   307D C3            [12] 1274 	clr	c
   307E 22            [24] 1275 	ret
                           1276 ;------------------------------------------------------------
                           1277 ;Allocation info for local variables in function 'radio_preamble_detected'
                           1278 ;------------------------------------------------------------
                           1279 ;	radio/radio.c:228: radio_preamble_detected(void)
                           1280 ;	-----------------------------------------
                           1281 ;	 function radio_preamble_detected
                           1282 ;	-----------------------------------------
   307F                    1283 _radio_preamble_detected:
                           1284 ;	radio/radio.c:230: EX0_SAVE_DISABLE;
   307F A2 A8         [12] 1285 	mov	c,_EX0
   3081 92 18         [24] 1286 	mov	_radio_preamble_detected_EX0_saved_1_157,c
   3083 C2 A8         [12] 1287 	clr	_EX0
                           1288 ;	radio/radio.c:231: if (preamble_detected) {
                           1289 ;	radio/radio.c:232: preamble_detected = 0;
   3085 10 17 02      [24] 1290 	jbc	_preamble_detected,00108$
   3088 80 06         [24] 1291 	sjmp	00102$
   308A                    1292 00108$:
                           1293 ;	radio/radio.c:233: EX0_RESTORE;
   308A A2 18         [12] 1294 	mov	c,_radio_preamble_detected_EX0_saved_1_157
   308C 92 A8         [24] 1295 	mov	_EX0,c
                           1296 ;	radio/radio.c:234: return true;
   308E D3            [12] 1297 	setb	c
   308F 22            [24] 1298 	ret
   3090                    1299 00102$:
                           1300 ;	radio/radio.c:236: EX0_RESTORE;
   3090 A2 18         [12] 1301 	mov	c,_radio_preamble_detected_EX0_saved_1_157
   3092 92 A8         [24] 1302 	mov	_EX0,c
                           1303 ;	radio/radio.c:237: return false;
   3094 C3            [12] 1304 	clr	c
   3095 22            [24] 1305 	ret
                           1306 ;------------------------------------------------------------
                           1307 ;Allocation info for local variables in function 'radio_last_rssi'
                           1308 ;------------------------------------------------------------
                           1309 ;	radio/radio.c:245: radio_last_rssi(void)
                           1310 ;	-----------------------------------------
                           1311 ;	 function radio_last_rssi
                           1312 ;	-----------------------------------------
   3096                    1313 _radio_last_rssi:
                           1314 ;	radio/radio.c:247: return last_rssi;
   3096 78 7B         [12] 1315 	mov	r0,#_last_rssi
   3098 E2            [24] 1316 	movx	a,@r0
   3099 F5 82         [12] 1317 	mov	dpl,a
   309B 22            [24] 1318 	ret
                           1319 ;------------------------------------------------------------
                           1320 ;Allocation info for local variables in function 'radio_current_rssi'
                           1321 ;------------------------------------------------------------
                           1322 ;	radio/radio.c:253: radio_current_rssi(void)
                           1323 ;	-----------------------------------------
                           1324 ;	 function radio_current_rssi
                           1325 ;	-----------------------------------------
   309C                    1326 _radio_current_rssi:
                           1327 ;	radio/radio.c:255: return register_read(EZRADIOPRO_RECEIVED_SIGNAL_STRENGTH_INDICATOR);
   309C 75 82 26      [24] 1328 	mov	dpl,#0x26
   309F 02 39 3F      [24] 1329 	ljmp	_register_read
                           1330 ;------------------------------------------------------------
                           1331 ;Allocation info for local variables in function 'radio_air_rate'
                           1332 ;------------------------------------------------------------
                           1333 ;	radio/radio.c:261: radio_air_rate(void)
                           1334 ;	-----------------------------------------
                           1335 ;	 function radio_air_rate
                           1336 ;	-----------------------------------------
   30A2                    1337 _radio_air_rate:
                           1338 ;	radio/radio.c:263: return settings.air_data_rate;
   30A2 78 86         [12] 1339 	mov	r0,#(_settings + 0x0008)
   30A4 E2            [24] 1340 	movx	a,@r0
   30A5 F5 82         [12] 1341 	mov	dpl,a
   30A7 22            [24] 1342 	ret
                           1343 ;------------------------------------------------------------
                           1344 ;Allocation info for local variables in function 'radio_clear_transmit_fifo'
                           1345 ;------------------------------------------------------------
                           1346 ;control                   Allocated to registers r7 
                           1347 ;------------------------------------------------------------
                           1348 ;	radio/radio.c:269: radio_clear_transmit_fifo(void)
                           1349 ;	-----------------------------------------
                           1350 ;	 function radio_clear_transmit_fifo
                           1351 ;	-----------------------------------------
   30A8                    1352 _radio_clear_transmit_fifo:
                           1353 ;	radio/radio.c:272: control = register_read(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2);
   30A8 75 82 08      [24] 1354 	mov	dpl,#0x08
   30AB 12 39 3F      [24] 1355 	lcall	_register_read
   30AE AF 82         [24] 1356 	mov	r7,dpl
                           1357 ;	radio/radio.c:273: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, control | EZRADIOPRO_FFCLRTX);
   30B0 74 01         [12] 1358 	mov	a,#0x01
   30B2 4F            [12] 1359 	orl	a,r7
   30B3 FE            [12] 1360 	mov	r6,a
   30B4 C0 07         [24] 1361 	push	ar7
   30B6 C0 06         [24] 1362 	push	ar6
   30B8 75 82 08      [24] 1363 	mov	dpl,#0x08
   30BB 12 39 0F      [24] 1364 	lcall	_register_write
   30BE 15 81         [12] 1365 	dec	sp
   30C0 D0 07         [24] 1366 	pop	ar7
                           1367 ;	radio/radio.c:274: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, control & ~EZRADIOPRO_FFCLRTX);
   30C2 53 07 FE      [24] 1368 	anl	ar7,#0xFE
   30C5 C0 07         [24] 1369 	push	ar7
   30C7 75 82 08      [24] 1370 	mov	dpl,#0x08
   30CA 12 39 0F      [24] 1371 	lcall	_register_write
   30CD 15 81         [12] 1372 	dec	sp
   30CF 22            [24] 1373 	ret
                           1374 ;------------------------------------------------------------
                           1375 ;Allocation info for local variables in function 'radio_clear_receive_fifo'
                           1376 ;------------------------------------------------------------
                           1377 ;control                   Allocated to registers r7 
                           1378 ;------------------------------------------------------------
                           1379 ;	radio/radio.c:281: radio_clear_receive_fifo(void) __reentrant
                           1380 ;	-----------------------------------------
                           1381 ;	 function radio_clear_receive_fifo
                           1382 ;	-----------------------------------------
   30D0                    1383 _radio_clear_receive_fifo:
                           1384 ;	radio/radio.c:284: control = register_read(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2);
   30D0 75 82 08      [24] 1385 	mov	dpl,#0x08
   30D3 12 39 3F      [24] 1386 	lcall	_register_read
   30D6 AF 82         [24] 1387 	mov	r7,dpl
                           1388 ;	radio/radio.c:285: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, control | EZRADIOPRO_FFCLRRX);
   30D8 74 02         [12] 1389 	mov	a,#0x02
   30DA 4F            [12] 1390 	orl	a,r7
   30DB FE            [12] 1391 	mov	r6,a
   30DC C0 07         [24] 1392 	push	ar7
   30DE C0 06         [24] 1393 	push	ar6
   30E0 75 82 08      [24] 1394 	mov	dpl,#0x08
   30E3 12 39 0F      [24] 1395 	lcall	_register_write
   30E6 15 81         [12] 1396 	dec	sp
   30E8 D0 07         [24] 1397 	pop	ar7
                           1398 ;	radio/radio.c:286: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, control & ~EZRADIOPRO_FFCLRRX);
   30EA 53 07 FD      [24] 1399 	anl	ar7,#0xFD
   30ED C0 07         [24] 1400 	push	ar7
   30EF 75 82 08      [24] 1401 	mov	dpl,#0x08
   30F2 12 39 0F      [24] 1402 	lcall	_register_write
   30F5 15 81         [12] 1403 	dec	sp
   30F7 22            [24] 1404 	ret
                           1405 ;------------------------------------------------------------
                           1406 ;Allocation info for local variables in function 'radio_transmit_simple'
                           1407 ;------------------------------------------------------------
                           1408 ;length                    Allocated to registers r7 
                           1409 ;n                         Allocated to registers r6 
                           1410 ;status                    Allocated to registers r3 
                           1411 ;------------------------------------------------------------
                           1412 ;	radio/radio.c:298: radio_transmit_simple(__data uint8_t length, __xdata uint8_t * __pdata buf, __pdata uint16_t timeout_ticks)
                           1413 ;	-----------------------------------------
                           1414 ;	 function radio_transmit_simple
                           1415 ;	-----------------------------------------
   30F8                    1416 _radio_transmit_simple:
                           1417 ;	radio/radio.c:304: if (length > sizeof(radio_buffer)) {
   30F8 E5 82         [12] 1418 	mov	a,dpl
   30FA FF            [12] 1419 	mov	r7,a
   30FB 24 03         [12] 1420 	add	a,#0xff - 0xFC
   30FD 50 19         [24] 1421 	jnc	00102$
                           1422 ;	radio/radio.c:305: panic("oversized packet");
   30FF C0 07         [24] 1423 	push	ar7
   3101 74 11         [12] 1424 	mov	a,#__str_0
   3103 C0 E0         [24] 1425 	push	acc
   3105 74 C9         [12] 1426 	mov	a,#(__str_0 >> 8)
   3107 C0 E0         [24] 1427 	push	acc
   3109 74 80         [12] 1428 	mov	a,#0x80
   310B C0 E0         [24] 1429 	push	acc
   310D 12 11 F8      [24] 1430 	lcall	_panic
   3110 15 81         [12] 1431 	dec	sp
   3112 15 81         [12] 1432 	dec	sp
   3114 15 81         [12] 1433 	dec	sp
   3116 D0 07         [24] 1434 	pop	ar7
   3118                    1435 00102$:
                           1436 ;	radio/radio.c:308: radio_clear_transmit_fifo();
   3118 C0 07         [24] 1437 	push	ar7
   311A 12 30 A8      [24] 1438 	lcall	_radio_clear_transmit_fifo
   311D D0 07         [24] 1439 	pop	ar7
                           1440 ;	radio/radio.c:310: register_write(EZRADIOPRO_TRANSMIT_PACKET_LENGTH, length);
   311F C0 07         [24] 1441 	push	ar7
   3121 C0 07         [24] 1442 	push	ar7
   3123 75 82 3E      [24] 1443 	mov	dpl,#0x3E
   3126 12 39 0F      [24] 1444 	lcall	_register_write
   3129 15 81         [12] 1445 	dec	sp
   312B D0 07         [24] 1446 	pop	ar7
                           1447 ;	radio/radio.c:313: n = length;
                           1448 ;	radio/radio.c:314: if (n > TX_FIFO_THRESHOLD_LOW) {
   312D EF            [12] 1449 	mov	a,r7
   312E FE            [12] 1450 	mov	r6,a
   312F 24 DF         [12] 1451 	add	a,#0xff - 0x20
   3131 50 02         [24] 1452 	jnc	00104$
                           1453 ;	radio/radio.c:315: n = TX_FIFO_THRESHOLD_LOW;
   3133 7E 20         [12] 1454 	mov	r6,#0x20
   3135                    1455 00104$:
                           1456 ;	radio/radio.c:317: radio_write_transmit_fifo(n, buf);
   3135 78 8E         [12] 1457 	mov	r0,#_radio_transmit_simple_PARM_2
   3137 79 8C         [12] 1458 	mov	r1,#_radio_write_transmit_fifo_PARM_2
   3139 E2            [24] 1459 	movx	a,@r0
   313A F3            [24] 1460 	movx	@r1,a
   313B 08            [12] 1461 	inc	r0
   313C E2            [24] 1462 	movx	a,@r0
   313D 09            [12] 1463 	inc	r1
   313E F3            [24] 1464 	movx	@r1,a
   313F 8E 82         [24] 1465 	mov	dpl,r6
   3141 C0 07         [24] 1466 	push	ar7
   3143 C0 06         [24] 1467 	push	ar6
   3145 12 30 2D      [24] 1468 	lcall	_radio_write_transmit_fifo
   3148 D0 06         [24] 1469 	pop	ar6
   314A D0 07         [24] 1470 	pop	ar7
                           1471 ;	radio/radio.c:318: length -= n;
   314C EF            [12] 1472 	mov	a,r7
   314D C3            [12] 1473 	clr	c
   314E 9E            [12] 1474 	subb	a,r6
   314F FF            [12] 1475 	mov	r7,a
                           1476 ;	radio/radio.c:319: buf += n;
   3150 78 8E         [12] 1477 	mov	r0,#_radio_transmit_simple_PARM_2
   3152 E2            [24] 1478 	movx	a,@r0
   3153 2E            [12] 1479 	add	a,r6
   3154 F2            [24] 1480 	movx	@r0,a
   3155 08            [12] 1481 	inc	r0
   3156 E2            [24] 1482 	movx	a,@r0
   3157 34 00         [12] 1483 	addc	a,#0x00
   3159 F2            [24] 1484 	movx	@r0,a
                           1485 ;	radio/radio.c:322: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0);
   315A C0 07         [24] 1486 	push	ar7
   315C E4            [12] 1487 	clr	a
   315D C0 E0         [24] 1488 	push	acc
   315F 75 82 05      [24] 1489 	mov	dpl,#0x05
   3162 12 39 0F      [24] 1490 	lcall	_register_write
   3165 15 81         [12] 1491 	dec	sp
                           1492 ;	radio/radio.c:323: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, 0);
   3167 E4            [12] 1493 	clr	a
   3168 C0 E0         [24] 1494 	push	acc
   316A 75 82 06      [24] 1495 	mov	dpl,#0x06
   316D 12 39 0F      [24] 1496 	lcall	_register_write
   3170 15 81         [12] 1497 	dec	sp
                           1498 ;	radio/radio.c:325: preamble_detected = 0;
   3172 C2 17         [12] 1499 	clr	_preamble_detected
                           1500 ;	radio/radio.c:326: transmit_started = false;
   3174 C2 19         [12] 1501 	clr	_radio_transmit_simple_transmit_started_1_170
                           1502 ;	radio/radio.c:329: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_1, EZRADIOPRO_TXON | EZRADIOPRO_XTON);
   3176 74 09         [12] 1503 	mov	a,#0x09
   3178 C0 E0         [24] 1504 	push	acc
   317A 75 82 07      [24] 1505 	mov	dpl,#0x07
   317D 12 39 0F      [24] 1506 	lcall	_register_write
   3180 15 81         [12] 1507 	dec	sp
                           1508 ;	radio/radio.c:332: tstart = timer2_tick();
   3182 12 56 50      [24] 1509 	lcall	_timer2_tick
   3185 AC 82         [24] 1510 	mov	r4,dpl
   3187 AD 83         [24] 1511 	mov	r5,dph
   3189 D0 07         [24] 1512 	pop	ar7
                           1513 ;	radio/radio.c:333: while ((uint16_t)(timer2_tick() - tstart) < timeout_ticks) {
   318B                    1514 00130$:
   318B C0 07         [24] 1515 	push	ar7
   318D C0 05         [24] 1516 	push	ar5
   318F C0 04         [24] 1517 	push	ar4
   3191 12 56 50      [24] 1518 	lcall	_timer2_tick
   3194 AA 82         [24] 1519 	mov	r2,dpl
   3196 AB 83         [24] 1520 	mov	r3,dph
   3198 D0 04         [24] 1521 	pop	ar4
   319A D0 05         [24] 1522 	pop	ar5
   319C D0 07         [24] 1523 	pop	ar7
   319E EA            [12] 1524 	mov	a,r2
   319F C3            [12] 1525 	clr	c
   31A0 9C            [12] 1526 	subb	a,r4
   31A1 FA            [12] 1527 	mov	r2,a
   31A2 EB            [12] 1528 	mov	a,r3
   31A3 9D            [12] 1529 	subb	a,r5
   31A4 FB            [12] 1530 	mov	r3,a
   31A5 78 90         [12] 1531 	mov	r0,#_radio_transmit_simple_PARM_3
   31A7 C3            [12] 1532 	clr	c
   31A8 E2            [24] 1533 	movx	a,@r0
   31A9 F5 F0         [12] 1534 	mov	b,a
   31AB EA            [12] 1535 	mov	a,r2
   31AC 95 F0         [12] 1536 	subb	a,b
   31AE 08            [12] 1537 	inc	r0
   31AF E2            [24] 1538 	movx	a,@r0
   31B0 F5 F0         [12] 1539 	mov	b,a
   31B2 EB            [12] 1540 	mov	a,r3
   31B3 95 F0         [12] 1541 	subb	a,b
   31B5 40 03         [24] 1542 	jc	00199$
   31B7 02 32 C4      [24] 1543 	ljmp	00132$
   31BA                    1544 00199$:
                           1545 ;	radio/radio.c:337: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_1);
   31BA 75 82 03      [24] 1546 	mov	dpl,#0x03
   31BD C0 07         [24] 1547 	push	ar7
   31BF C0 05         [24] 1548 	push	ar5
   31C1 C0 04         [24] 1549 	push	ar4
   31C3 12 39 3F      [24] 1550 	lcall	_register_read
   31C6 AB 82         [24] 1551 	mov	r3,dpl
   31C8 D0 04         [24] 1552 	pop	ar4
   31CA D0 05         [24] 1553 	pop	ar5
   31CC D0 07         [24] 1554 	pop	ar7
                           1555 ;	radio/radio.c:338: if (transmit_started && length != 0 && (status & EZRADIOPRO_ITXFFAEM)) {
   31CE 30 19 40      [24] 1556 	jnb	_radio_transmit_simple_transmit_started_1_170,00108$
   31D1 EF            [12] 1557 	mov	a,r7
   31D2 60 3D         [24] 1558 	jz	00108$
   31D4 EB            [12] 1559 	mov	a,r3
   31D5 30 E5 39      [24] 1560 	jnb	acc.5,00108$
                           1561 ;	radio/radio.c:345: n = 4;
   31D8 7E 04         [12] 1562 	mov	r6,#0x04
                           1563 ;	radio/radio.c:346: if (n > length) {
   31DA BF 04 00      [24] 1564 	cjne	r7,#0x04,00203$
   31DD                    1565 00203$:
   31DD 50 02         [24] 1566 	jnc	00106$
                           1567 ;	radio/radio.c:347: n = length;
   31DF 8F 06         [24] 1568 	mov	ar6,r7
   31E1                    1569 00106$:
                           1570 ;	radio/radio.c:349: radio_write_transmit_fifo(n, buf);
   31E1 78 8E         [12] 1571 	mov	r0,#_radio_transmit_simple_PARM_2
   31E3 79 8C         [12] 1572 	mov	r1,#_radio_write_transmit_fifo_PARM_2
   31E5 E2            [24] 1573 	movx	a,@r0
   31E6 F3            [24] 1574 	movx	@r1,a
   31E7 08            [12] 1575 	inc	r0
   31E8 E2            [24] 1576 	movx	a,@r0
   31E9 09            [12] 1577 	inc	r1
   31EA F3            [24] 1578 	movx	@r1,a
   31EB 8E 82         [24] 1579 	mov	dpl,r6
   31ED C0 07         [24] 1580 	push	ar7
   31EF C0 06         [24] 1581 	push	ar6
   31F1 C0 05         [24] 1582 	push	ar5
   31F3 C0 04         [24] 1583 	push	ar4
   31F5 12 30 2D      [24] 1584 	lcall	_radio_write_transmit_fifo
   31F8 D0 04         [24] 1585 	pop	ar4
   31FA D0 05         [24] 1586 	pop	ar5
   31FC D0 06         [24] 1587 	pop	ar6
   31FE D0 07         [24] 1588 	pop	ar7
                           1589 ;	radio/radio.c:350: length -= n;
   3200 EF            [12] 1590 	mov	a,r7
   3201 C3            [12] 1591 	clr	c
   3202 9E            [12] 1592 	subb	a,r6
   3203 FF            [12] 1593 	mov	r7,a
                           1594 ;	radio/radio.c:351: buf += n;
   3204 78 8E         [12] 1595 	mov	r0,#_radio_transmit_simple_PARM_2
   3206 E2            [24] 1596 	movx	a,@r0
   3207 2E            [12] 1597 	add	a,r6
   3208 F2            [24] 1598 	movx	@r0,a
   3209 08            [12] 1599 	inc	r0
   320A E2            [24] 1600 	movx	a,@r0
   320B 34 00         [12] 1601 	addc	a,#0x00
   320D F2            [24] 1602 	movx	@r0,a
                           1603 ;	radio/radio.c:352: continue;
   320E 02 31 8B      [24] 1604 	ljmp	00130$
   3211                    1605 00108$:
                           1606 ;	radio/radio.c:354: if (transmit_started && length != 0 && (status & EZRADIOPRO_ITXFFAFULL) == 0) {
   3211 30 19 40      [24] 1607 	jnb	_radio_transmit_simple_transmit_started_1_170,00114$
   3214 EF            [12] 1608 	mov	a,r7
   3215 60 3D         [24] 1609 	jz	00114$
   3217 EB            [12] 1610 	mov	a,r3
   3218 20 E6 39      [24] 1611 	jb	acc.6,00114$
                           1612 ;	radio/radio.c:358: n = 4;
   321B 7E 04         [12] 1613 	mov	r6,#0x04
                           1614 ;	radio/radio.c:359: if (n > length) {
   321D BF 04 00      [24] 1615 	cjne	r7,#0x04,00208$
   3220                    1616 00208$:
   3220 50 02         [24] 1617 	jnc	00112$
                           1618 ;	radio/radio.c:360: n = length;
   3222 8F 06         [24] 1619 	mov	ar6,r7
   3224                    1620 00112$:
                           1621 ;	radio/radio.c:362: radio_write_transmit_fifo(n, buf);
   3224 78 8E         [12] 1622 	mov	r0,#_radio_transmit_simple_PARM_2
   3226 79 8C         [12] 1623 	mov	r1,#_radio_write_transmit_fifo_PARM_2
   3228 E2            [24] 1624 	movx	a,@r0
   3229 F3            [24] 1625 	movx	@r1,a
   322A 08            [12] 1626 	inc	r0
   322B E2            [24] 1627 	movx	a,@r0
   322C 09            [12] 1628 	inc	r1
   322D F3            [24] 1629 	movx	@r1,a
   322E 8E 82         [24] 1630 	mov	dpl,r6
   3230 C0 07         [24] 1631 	push	ar7
   3232 C0 06         [24] 1632 	push	ar6
   3234 C0 05         [24] 1633 	push	ar5
   3236 C0 04         [24] 1634 	push	ar4
   3238 12 30 2D      [24] 1635 	lcall	_radio_write_transmit_fifo
   323B D0 04         [24] 1636 	pop	ar4
   323D D0 05         [24] 1637 	pop	ar5
   323F D0 06         [24] 1638 	pop	ar6
   3241 D0 07         [24] 1639 	pop	ar7
                           1640 ;	radio/radio.c:363: length -= n;
   3243 EF            [12] 1641 	mov	a,r7
   3244 C3            [12] 1642 	clr	c
   3245 9E            [12] 1643 	subb	a,r6
   3246 FF            [12] 1644 	mov	r7,a
                           1645 ;	radio/radio.c:364: buf += n;
   3247 78 8E         [12] 1646 	mov	r0,#_radio_transmit_simple_PARM_2
   3249 E2            [24] 1647 	movx	a,@r0
   324A 2E            [12] 1648 	add	a,r6
   324B F2            [24] 1649 	movx	@r0,a
   324C 08            [12] 1650 	inc	r0
   324D E2            [24] 1651 	movx	a,@r0
   324E 34 00         [12] 1652 	addc	a,#0x00
   3250 F2            [24] 1653 	movx	@r0,a
                           1654 ;	radio/radio.c:365: continue;
   3251 02 31 8B      [24] 1655 	ljmp	00130$
   3254                    1656 00114$:
                           1657 ;	radio/radio.c:368: if (status & EZRADIOPRO_IFFERR) {
   3254 EB            [12] 1658 	mov	a,r3
   3255 30 E7 20      [24] 1659 	jnb	acc.7,00120$
                           1660 ;	radio/radio.c:370: radio_clear_transmit_fifo();
   3258 12 30 A8      [24] 1661 	lcall	_radio_clear_transmit_fifo
                           1662 ;	radio/radio.c:372: if (errors.tx_errors != 0xFFFF) {
   325B 78 36         [12] 1663 	mov	r0,#(_errors + 0x0002)
   325D E2            [24] 1664 	movx	a,@r0
   325E FA            [12] 1665 	mov	r2,a
   325F 08            [12] 1666 	inc	r0
   3260 E2            [24] 1667 	movx	a,@r0
   3261 FE            [12] 1668 	mov	r6,a
   3262 BA FF 05      [24] 1669 	cjne	r2,#0xFF,00211$
   3265 BE FF 02      [24] 1670 	cjne	r6,#0xFF,00211$
   3268 80 0C         [24] 1671 	sjmp	00118$
   326A                    1672 00211$:
                           1673 ;	radio/radio.c:373: errors.tx_errors++;
   326A 0A            [12] 1674 	inc	r2
   326B BA 00 01      [24] 1675 	cjne	r2,#0x00,00212$
   326E 0E            [12] 1676 	inc	r6
   326F                    1677 00212$:
   326F 78 36         [12] 1678 	mov	r0,#(_errors + 0x0002)
   3271 EA            [12] 1679 	mov	a,r2
   3272 F2            [24] 1680 	movx	@r0,a
   3273 08            [12] 1681 	inc	r0
   3274 EE            [12] 1682 	mov	a,r6
   3275 F2            [24] 1683 	movx	@r0,a
   3276                    1684 00118$:
                           1685 ;	radio/radio.c:375: return false;
   3276 C3            [12] 1686 	clr	c
   3277 22            [24] 1687 	ret
   3278                    1688 00120$:
                           1689 ;	radio/radio.c:380: status = register_read(EZRADIOPRO_DEVICE_STATUS);
   3278 75 82 02      [24] 1690 	mov	dpl,#0x02
   327B C0 07         [24] 1691 	push	ar7
   327D C0 05         [24] 1692 	push	ar5
   327F C0 04         [24] 1693 	push	ar4
   3281 12 39 3F      [24] 1694 	lcall	_register_read
   3284 AB 82         [24] 1695 	mov	r3,dpl
   3286 D0 04         [24] 1696 	pop	ar4
   3288 D0 05         [24] 1697 	pop	ar5
   328A D0 07         [24] 1698 	pop	ar7
                           1699 ;	radio/radio.c:381: if (status & 0x02) {
   328C EB            [12] 1700 	mov	a,r3
   328D 30 E1 05      [24] 1701 	jnb	acc.1,00122$
                           1702 ;	radio/radio.c:383: transmit_started = true;
   3290 D2 19         [12] 1703 	setb	_radio_transmit_simple_transmit_started_1_170
                           1704 ;	radio/radio.c:384: continue;
   3292 02 31 8B      [24] 1705 	ljmp	00130$
   3295                    1706 00122$:
                           1707 ;	radio/radio.c:386: if (transmit_started && (status & 0x02) == 0) {
   3295 20 19 03      [24] 1708 	jb	_radio_transmit_simple_transmit_started_1_170,00214$
   3298 02 31 8B      [24] 1709 	ljmp	00130$
   329B                    1710 00214$:
   329B EB            [12] 1711 	mov	a,r3
   329C 30 E1 03      [24] 1712 	jnb	acc.1,00215$
   329F 02 31 8B      [24] 1713 	ljmp	00130$
   32A2                    1714 00215$:
                           1715 ;	radio/radio.c:389: if (length != 0) {
   32A2 EF            [12] 1716 	mov	a,r7
   32A3 60 1D         [24] 1717 	jz	00126$
                           1718 ;	radio/radio.c:391: if (errors.tx_errors != 0xFFFF) {
   32A5 78 36         [12] 1719 	mov	r0,#(_errors + 0x0002)
   32A7 E2            [24] 1720 	movx	a,@r0
   32A8 FE            [12] 1721 	mov	r6,a
   32A9 08            [12] 1722 	inc	r0
   32AA E2            [24] 1723 	movx	a,@r0
   32AB FF            [12] 1724 	mov	r7,a
   32AC BE FF 05      [24] 1725 	cjne	r6,#0xFF,00217$
   32AF BF FF 02      [24] 1726 	cjne	r7,#0xFF,00217$
   32B2 80 0C         [24] 1727 	sjmp	00124$
   32B4                    1728 00217$:
                           1729 ;	radio/radio.c:392: errors.tx_errors++;
   32B4 0E            [12] 1730 	inc	r6
   32B5 BE 00 01      [24] 1731 	cjne	r6,#0x00,00218$
   32B8 0F            [12] 1732 	inc	r7
   32B9                    1733 00218$:
   32B9 78 36         [12] 1734 	mov	r0,#(_errors + 0x0002)
   32BB EE            [12] 1735 	mov	a,r6
   32BC F2            [24] 1736 	movx	@r0,a
   32BD 08            [12] 1737 	inc	r0
   32BE EF            [12] 1738 	mov	a,r7
   32BF F2            [24] 1739 	movx	@r0,a
   32C0                    1740 00124$:
                           1741 ;	radio/radio.c:394: return false;
   32C0 C3            [12] 1742 	clr	c
   32C1 22            [24] 1743 	ret
   32C2                    1744 00126$:
                           1745 ;	radio/radio.c:396: return true;			
   32C2 D3            [12] 1746 	setb	c
   32C3 22            [24] 1747 	ret
   32C4                    1748 00132$:
                           1749 ;	radio/radio.c:407: if (errors.tx_errors != 0xFFFF) {
   32C4 78 36         [12] 1750 	mov	r0,#(_errors + 0x0002)
   32C6 E2            [24] 1751 	movx	a,@r0
   32C7 FE            [12] 1752 	mov	r6,a
   32C8 08            [12] 1753 	inc	r0
   32C9 E2            [24] 1754 	movx	a,@r0
   32CA FF            [12] 1755 	mov	r7,a
   32CB BE FF 05      [24] 1756 	cjne	r6,#0xFF,00219$
   32CE BF FF 02      [24] 1757 	cjne	r7,#0xFF,00219$
   32D1 80 0C         [24] 1758 	sjmp	00134$
   32D3                    1759 00219$:
                           1760 ;	radio/radio.c:408: errors.tx_errors++;
   32D3 0E            [12] 1761 	inc	r6
   32D4 BE 00 01      [24] 1762 	cjne	r6,#0x00,00220$
   32D7 0F            [12] 1763 	inc	r7
   32D8                    1764 00220$:
   32D8 78 36         [12] 1765 	mov	r0,#(_errors + 0x0002)
   32DA EE            [12] 1766 	mov	a,r6
   32DB F2            [24] 1767 	movx	@r0,a
   32DC 08            [12] 1768 	inc	r0
   32DD EF            [12] 1769 	mov	a,r7
   32DE F2            [24] 1770 	movx	@r0,a
   32DF                    1771 00134$:
                           1772 ;	radio/radio.c:411: return false;
   32DF C3            [12] 1773 	clr	c
   32E0 22            [24] 1774 	ret
                           1775 ;------------------------------------------------------------
                           1776 ;Allocation info for local variables in function 'radio_transmit_golay'
                           1777 ;------------------------------------------------------------
                           1778 ;elen                      Allocated with name '_radio_transmit_golay_elen_1_186'
                           1779 ;rlen                      Allocated to registers r5 
                           1780 ;length                    Allocated with name '_radio_transmit_golay_length_1_185'
                           1781 ;gin                       Allocated with name '_radio_transmit_golay_gin_1_186'
                           1782 ;------------------------------------------------------------
                           1783 ;	radio/radio.c:424: radio_transmit_golay(uint8_t length, __xdata uint8_t * __pdata buf, __pdata uint16_t timeout_ticks)
                           1784 ;	-----------------------------------------
                           1785 ;	 function radio_transmit_golay
                           1786 ;	-----------------------------------------
   32E1                    1787 _radio_transmit_golay:
   32E1 E5 82         [12] 1788 	mov	a,dpl
                           1789 ;	radio/radio.c:430: if (length > (sizeof(radio_buffer)/2)-6) {
   32E3 90 04 66      [24] 1790 	mov	dptr,#_radio_transmit_golay_length_1_185
   32E6 F0            [24] 1791 	movx	@dptr,a
   32E7 FF            [12] 1792 	mov  r7,a
   32E8 24 87         [12] 1793 	add	a,#0xff - 0x78
   32EA 50 19         [24] 1794 	jnc	00102$
                           1795 ;	radio/radio.c:432: panic("oversized golay packet");		
   32EC C0 07         [24] 1796 	push	ar7
   32EE 74 22         [12] 1797 	mov	a,#__str_1
   32F0 C0 E0         [24] 1798 	push	acc
   32F2 74 C9         [12] 1799 	mov	a,#(__str_1 >> 8)
   32F4 C0 E0         [24] 1800 	push	acc
   32F6 74 80         [12] 1801 	mov	a,#0x80
   32F8 C0 E0         [24] 1802 	push	acc
   32FA 12 11 F8      [24] 1803 	lcall	_panic
   32FD 15 81         [12] 1804 	dec	sp
   32FF 15 81         [12] 1805 	dec	sp
   3301 15 81         [12] 1806 	dec	sp
   3303 D0 07         [24] 1807 	pop	ar7
   3305                    1808 00102$:
                           1809 ;	radio/radio.c:436: rlen = ((length+2)/3)*3;
   3305 8F 05         [24] 1810 	mov	ar5,r7
   3307 7E 00         [12] 1811 	mov	r6,#0x00
   3309 74 02         [12] 1812 	mov	a,#0x02
   330B 2D            [12] 1813 	add	a,r5
   330C FD            [12] 1814 	mov	r5,a
   330D E4            [12] 1815 	clr	a
   330E 3E            [12] 1816 	addc	a,r6
   330F FE            [12] 1817 	mov	r6,a
   3310 90 05 E8      [24] 1818 	mov	dptr,#__divsint_PARM_2
   3313 74 03         [12] 1819 	mov	a,#0x03
   3315 F0            [24] 1820 	movx	@dptr,a
   3316 E4            [12] 1821 	clr	a
   3317 A3            [24] 1822 	inc	dptr
   3318 F0            [24] 1823 	movx	@dptr,a
   3319 8D 82         [24] 1824 	mov	dpl,r5
   331B 8E 83         [24] 1825 	mov	dph,r6
   331D C0 07         [24] 1826 	push	ar7
   331F 12 60 D3      [24] 1827 	lcall	__divsint
   3322 AD 82         [24] 1828 	mov	r5,dpl
   3324 D0 07         [24] 1829 	pop	ar7
   3326 ED            [12] 1830 	mov	a,r5
   3327 75 F0 03      [24] 1831 	mov	b,#0x03
   332A A4            [48] 1832 	mul	ab
                           1833 ;	radio/radio.c:439: elen = (rlen+6)*2;
   332B FD            [12] 1834 	mov	r5,a
   332C 24 06         [12] 1835 	add	a,#0x06
   332E 25 E0         [12] 1836 	add	a,acc
   3330 F5 4E         [12] 1837 	mov	_radio_transmit_golay_elen_1_186,a
                           1838 ;	radio/radio.c:442: gin[0] = netid[0];
   3332 78 7C         [12] 1839 	mov	r0,#_netid
   3334 E2            [24] 1840 	movx	a,@r0
   3335 90 04 67      [24] 1841 	mov	dptr,#_radio_transmit_golay_gin_1_186
   3338 F0            [24] 1842 	movx	@dptr,a
                           1843 ;	radio/radio.c:443: gin[1] = netid[1];
   3339 78 7D         [12] 1844 	mov	r0,#(_netid + 0x0001)
   333B E2            [24] 1845 	movx	a,@r0
   333C 90 04 68      [24] 1846 	mov	dptr,#(_radio_transmit_golay_gin_1_186 + 0x0001)
   333F F0            [24] 1847 	movx	@dptr,a
                           1848 ;	radio/radio.c:444: gin[2] = length;
   3340 90 04 69      [24] 1849 	mov	dptr,#(_radio_transmit_golay_gin_1_186 + 0x0002)
   3343 EF            [12] 1850 	mov	a,r7
   3344 F0            [24] 1851 	movx	@dptr,a
                           1852 ;	radio/radio.c:447: golay_encode(3, gin, radio_buffer);
   3345 78 28         [12] 1853 	mov	r0,#_golay_encode_PARM_2
   3347 74 67         [12] 1854 	mov	a,#_radio_transmit_golay_gin_1_186
   3349 F2            [24] 1855 	movx	@r0,a
   334A 08            [12] 1856 	inc	r0
   334B 74 04         [12] 1857 	mov	a,#(_radio_transmit_golay_gin_1_186 >> 8)
   334D F2            [24] 1858 	movx	@r0,a
   334E 78 2A         [12] 1859 	mov	r0,#_golay_encode_PARM_3
   3350 74 64         [12] 1860 	mov	a,#_radio_buffer
   3352 F2            [24] 1861 	movx	@r0,a
   3353 08            [12] 1862 	inc	r0
   3354 74 03         [12] 1863 	mov	a,#(_radio_buffer >> 8)
   3356 F2            [24] 1864 	movx	@r0,a
   3357 75 82 03      [24] 1865 	mov	dpl,#0x03
   335A C0 07         [24] 1866 	push	ar7
   335C C0 05         [24] 1867 	push	ar5
   335E 12 0E 17      [24] 1868 	lcall	_golay_encode
   3361 D0 05         [24] 1869 	pop	ar5
   3363 D0 07         [24] 1870 	pop	ar7
                           1871 ;	radio/radio.c:451: crc = crc16(length, buf);
   3365 78 92         [12] 1872 	mov	r0,#_radio_transmit_golay_PARM_2
   3367 E2            [24] 1873 	movx	a,@r0
   3368 F5 0C         [12] 1874 	mov	_crc16_PARM_2,a
   336A 08            [12] 1875 	inc	r0
   336B E2            [24] 1876 	movx	a,@r0
   336C F5 0D         [12] 1877 	mov	(_crc16_PARM_2 + 1),a
   336E 8F 82         [24] 1878 	mov	dpl,r7
   3370 C0 07         [24] 1879 	push	ar7
   3372 C0 05         [24] 1880 	push	ar5
   3374 12 0A 2A      [24] 1881 	lcall	_crc16
   3377 AB 82         [24] 1882 	mov	r3,dpl
   3379 AC 83         [24] 1883 	mov	r4,dph
   337B D0 05         [24] 1884 	pop	ar5
   337D D0 07         [24] 1885 	pop	ar7
                           1886 ;	radio/radio.c:452: gin[0] = crc&0xFF;
   337F 8B 02         [24] 1887 	mov	ar2,r3
   3381 90 04 67      [24] 1888 	mov	dptr,#_radio_transmit_golay_gin_1_186
   3384 EA            [12] 1889 	mov	a,r2
   3385 F0            [24] 1890 	movx	@dptr,a
                           1891 ;	radio/radio.c:453: gin[1] = crc>>8;
   3386 8C 03         [24] 1892 	mov	ar3,r4
   3388 90 04 68      [24] 1893 	mov	dptr,#(_radio_transmit_golay_gin_1_186 + 0x0001)
   338B EB            [12] 1894 	mov	a,r3
   338C F0            [24] 1895 	movx	@dptr,a
                           1896 ;	radio/radio.c:454: gin[2] = length;
   338D 90 04 69      [24] 1897 	mov	dptr,#(_radio_transmit_golay_gin_1_186 + 0x0002)
   3390 EF            [12] 1898 	mov	a,r7
   3391 F0            [24] 1899 	movx	@dptr,a
                           1900 ;	radio/radio.c:457: golay_encode(3, gin, &radio_buffer[6]);
   3392 78 2A         [12] 1901 	mov	r0,#_golay_encode_PARM_3
   3394 74 06         [12] 1902 	mov	a,#0x06
   3396 24 64         [12] 1903 	add	a,#_radio_buffer
   3398 F2            [24] 1904 	movx	@r0,a
   3399 E4            [12] 1905 	clr	a
   339A 34 03         [12] 1906 	addc	a,#(_radio_buffer >> 8)
   339C 08            [12] 1907 	inc	r0
   339D F2            [24] 1908 	movx	@r0,a
   339E 78 28         [12] 1909 	mov	r0,#_golay_encode_PARM_2
   33A0 74 67         [12] 1910 	mov	a,#_radio_transmit_golay_gin_1_186
   33A2 F2            [24] 1911 	movx	@r0,a
   33A3 08            [12] 1912 	inc	r0
   33A4 74 04         [12] 1913 	mov	a,#(_radio_transmit_golay_gin_1_186 >> 8)
   33A6 F2            [24] 1914 	movx	@r0,a
   33A7 75 82 03      [24] 1915 	mov	dpl,#0x03
   33AA C0 05         [24] 1916 	push	ar5
   33AC 12 0E 17      [24] 1917 	lcall	_golay_encode
   33AF D0 05         [24] 1918 	pop	ar5
                           1919 ;	radio/radio.c:460: golay_encode(rlen, buf, &radio_buffer[12]);
   33B1 78 2A         [12] 1920 	mov	r0,#_golay_encode_PARM_3
   33B3 74 0C         [12] 1921 	mov	a,#0x0C
   33B5 24 64         [12] 1922 	add	a,#_radio_buffer
   33B7 F2            [24] 1923 	movx	@r0,a
   33B8 E4            [12] 1924 	clr	a
   33B9 34 03         [12] 1925 	addc	a,#(_radio_buffer >> 8)
   33BB 08            [12] 1926 	inc	r0
   33BC F2            [24] 1927 	movx	@r0,a
   33BD 78 92         [12] 1928 	mov	r0,#_radio_transmit_golay_PARM_2
   33BF 79 28         [12] 1929 	mov	r1,#_golay_encode_PARM_2
   33C1 E2            [24] 1930 	movx	a,@r0
   33C2 F3            [24] 1931 	movx	@r1,a
   33C3 08            [12] 1932 	inc	r0
   33C4 E2            [24] 1933 	movx	a,@r0
   33C5 09            [12] 1934 	inc	r1
   33C6 F3            [24] 1935 	movx	@r1,a
   33C7 8D 82         [24] 1936 	mov	dpl,r5
   33C9 12 0E 17      [24] 1937 	lcall	_golay_encode
                           1938 ;	radio/radio.c:462: return radio_transmit_simple(elen, radio_buffer, timeout_ticks);
   33CC 78 8E         [12] 1939 	mov	r0,#_radio_transmit_simple_PARM_2
   33CE 74 64         [12] 1940 	mov	a,#_radio_buffer
   33D0 F2            [24] 1941 	movx	@r0,a
   33D1 08            [12] 1942 	inc	r0
   33D2 74 03         [12] 1943 	mov	a,#(_radio_buffer >> 8)
   33D4 F2            [24] 1944 	movx	@r0,a
   33D5 78 94         [12] 1945 	mov	r0,#_radio_transmit_golay_PARM_3
   33D7 79 90         [12] 1946 	mov	r1,#_radio_transmit_simple_PARM_3
   33D9 E2            [24] 1947 	movx	a,@r0
   33DA F3            [24] 1948 	movx	@r1,a
   33DB 08            [12] 1949 	inc	r0
   33DC E2            [24] 1950 	movx	a,@r0
   33DD 09            [12] 1951 	inc	r1
   33DE F3            [24] 1952 	movx	@r1,a
   33DF 85 4E 82      [24] 1953 	mov	dpl,_radio_transmit_golay_elen_1_186
   33E2 12 30 F8      [24] 1954 	lcall	_radio_transmit_simple
   33E5 92 1A         [24] 1955 	mov  _radio_transmit_golay_sloc0_1_0,c
   33E7 22            [24] 1956 	ret
                           1957 ;------------------------------------------------------------
                           1958 ;Allocation info for local variables in function 'radio_transmit'
                           1959 ;------------------------------------------------------------
                           1960 ;length                    Allocated with name '_radio_transmit_length_1_188'
                           1961 ;------------------------------------------------------------
                           1962 ;	radio/radio.c:474: radio_transmit(uint8_t length, __xdata uint8_t * __pdata buf, __pdata uint16_t timeout_ticks)
                           1963 ;	-----------------------------------------
                           1964 ;	 function radio_transmit
                           1965 ;	-----------------------------------------
   33E8                    1966 _radio_transmit:
   33E8 E5 82         [12] 1967 	mov	a,dpl
   33EA 90 04 6A      [24] 1968 	mov	dptr,#_radio_transmit_length_1_188
   33ED F0            [24] 1969 	movx	@dptr,a
                           1970 ;	radio/radio.c:477: EX0_SAVE_DISABLE;
   33EE A2 A8         [12] 1971 	mov	c,_EX0
   33F0 92 1B         [24] 1972 	mov	_radio_transmit_EX0_saved_1_189,c
   33F2 C2 A8         [12] 1973 	clr	_EX0
                           1974 ;	radio/radio.c:483: if (!feature_golay) {
   33F4 20 04 22      [24] 1975 	jb	_feature_golay,00102$
                           1976 ;	radio/radio.c:484: ret = radio_transmit_simple(length, buf, timeout_ticks);
   33F7 90 04 6A      [24] 1977 	mov	dptr,#_radio_transmit_length_1_188
   33FA E0            [24] 1978 	movx	a,@dptr
   33FB FF            [12] 1979 	mov	r7,a
   33FC 78 96         [12] 1980 	mov	r0,#_radio_transmit_PARM_2
   33FE 79 8E         [12] 1981 	mov	r1,#_radio_transmit_simple_PARM_2
   3400 E2            [24] 1982 	movx	a,@r0
   3401 F3            [24] 1983 	movx	@r1,a
   3402 08            [12] 1984 	inc	r0
   3403 E2            [24] 1985 	movx	a,@r0
   3404 09            [12] 1986 	inc	r1
   3405 F3            [24] 1987 	movx	@r1,a
   3406 78 98         [12] 1988 	mov	r0,#_radio_transmit_PARM_3
   3408 79 90         [12] 1989 	mov	r1,#_radio_transmit_simple_PARM_3
   340A E2            [24] 1990 	movx	a,@r0
   340B F3            [24] 1991 	movx	@r1,a
   340C 08            [12] 1992 	inc	r0
   340D E2            [24] 1993 	movx	a,@r0
   340E 09            [12] 1994 	inc	r1
   340F F3            [24] 1995 	movx	@r1,a
   3410 8F 82         [24] 1996 	mov	dpl,r7
   3412 12 30 F8      [24] 1997 	lcall	_radio_transmit_simple
   3415 92 1C         [24] 1998 	mov	_radio_transmit_sloc0_1_0,c
   3417 80 20         [24] 1999 	sjmp	00103$
   3419                    2000 00102$:
                           2001 ;	radio/radio.c:486: ret = radio_transmit_golay(length, buf, timeout_ticks);
   3419 90 04 6A      [24] 2002 	mov	dptr,#_radio_transmit_length_1_188
   341C E0            [24] 2003 	movx	a,@dptr
   341D FF            [12] 2004 	mov	r7,a
   341E 78 96         [12] 2005 	mov	r0,#_radio_transmit_PARM_2
   3420 79 92         [12] 2006 	mov	r1,#_radio_transmit_golay_PARM_2
   3422 E2            [24] 2007 	movx	a,@r0
   3423 F3            [24] 2008 	movx	@r1,a
   3424 08            [12] 2009 	inc	r0
   3425 E2            [24] 2010 	movx	a,@r0
   3426 09            [12] 2011 	inc	r1
   3427 F3            [24] 2012 	movx	@r1,a
   3428 78 98         [12] 2013 	mov	r0,#_radio_transmit_PARM_3
   342A 79 94         [12] 2014 	mov	r1,#_radio_transmit_golay_PARM_3
   342C E2            [24] 2015 	movx	a,@r0
   342D F3            [24] 2016 	movx	@r1,a
   342E 08            [12] 2017 	inc	r0
   342F E2            [24] 2018 	movx	a,@r0
   3430 09            [12] 2019 	inc	r1
   3431 F3            [24] 2020 	movx	@r1,a
   3432 8F 82         [24] 2021 	mov	dpl,r7
   3434 12 32 E1      [24] 2022 	lcall	_radio_transmit_golay
   3437 92 1C         [24] 2023 	mov	_radio_transmit_sloc0_1_0,c
   3439                    2024 00103$:
                           2025 ;	radio/radio.c:491: EX0_RESTORE;
   3439 A2 1B         [12] 2026 	mov	c,_radio_transmit_EX0_saved_1_189
   343B 92 A8         [24] 2027 	mov	_EX0,c
                           2028 ;	radio/radio.c:492: return ret;
   343D A2 1C         [12] 2029 	mov	c,_radio_transmit_sloc0_1_0
   343F 22            [24] 2030 	ret
                           2031 ;------------------------------------------------------------
                           2032 ;Allocation info for local variables in function 'radio_receiver_on'
                           2033 ;------------------------------------------------------------
                           2034 ;	radio/radio.c:499: radio_receiver_on(void)
                           2035 ;	-----------------------------------------
                           2036 ;	 function radio_receiver_on
                           2037 ;	-----------------------------------------
   3440                    2038 _radio_receiver_on:
                           2039 ;	radio/radio.c:501: EX0 = 0;
   3440 C2 A8         [12] 2040 	clr	_EX0
                           2041 ;	radio/radio.c:503: packet_received = 0;
   3442 C2 16         [12] 2042 	clr	_packet_received
                           2043 ;	radio/radio.c:504: receive_packet_length = 0;
   3444 78 79         [12] 2044 	mov	r0,#_receive_packet_length
   3446 E4            [12] 2045 	clr	a
   3447 F2            [24] 2046 	movx	@r0,a
                           2047 ;	radio/radio.c:505: preamble_detected = 0;
   3448 C2 17         [12] 2048 	clr	_preamble_detected
                           2049 ;	radio/radio.c:506: partial_packet_length = 0;
   344A 78 7A         [12] 2050 	mov	r0,#_partial_packet_length
   344C E4            [12] 2051 	clr	a
   344D F2            [24] 2052 	movx	@r0,a
                           2053 ;	radio/radio.c:509: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, RADIO_RX_INTERRUPTS);
   344E 74 13         [12] 2054 	mov	a,#0x13
   3450 C0 E0         [24] 2055 	push	acc
   3452 75 82 05      [24] 2056 	mov	dpl,#0x05
   3455 12 39 0F      [24] 2057 	lcall	_register_write
   3458 15 81         [12] 2058 	dec	sp
                           2059 ;	radio/radio.c:510: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, EZRADIOPRO_ENPREAVAL);
   345A 74 40         [12] 2060 	mov	a,#0x40
   345C C0 E0         [24] 2061 	push	acc
   345E 75 82 06      [24] 2062 	mov	dpl,#0x06
   3461 12 39 0F      [24] 2063 	lcall	_register_write
   3464 15 81         [12] 2064 	dec	sp
                           2065 ;	radio/radio.c:512: clear_status_registers();
   3466 12 39 A7      [24] 2066 	lcall	_clear_status_registers
                           2067 ;	radio/radio.c:513: radio_clear_transmit_fifo();
   3469 12 30 A8      [24] 2068 	lcall	_radio_clear_transmit_fifo
                           2069 ;	radio/radio.c:514: radio_clear_receive_fifo();
   346C 12 30 D0      [24] 2070 	lcall	_radio_clear_receive_fifo
                           2071 ;	radio/radio.c:517: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_1, EZRADIOPRO_RXON | EZRADIOPRO_XTON);
   346F 74 05         [12] 2072 	mov	a,#0x05
   3471 C0 E0         [24] 2073 	push	acc
   3473 75 82 07      [24] 2074 	mov	dpl,#0x07
   3476 12 39 0F      [24] 2075 	lcall	_register_write
   3479 15 81         [12] 2076 	dec	sp
                           2077 ;	radio/radio.c:520: EX0 = 1;
   347B D2 A8         [12] 2078 	setb	_EX0
                           2079 ;	radio/radio.c:522: return true;
   347D D3            [12] 2080 	setb	c
   347E 22            [24] 2081 	ret
                           2082 ;------------------------------------------------------------
                           2083 ;Allocation info for local variables in function 'radio_initialise'
                           2084 ;------------------------------------------------------------
                           2085 ;status                    Allocated with name '_radio_initialise_status_1_195'
                           2086 ;------------------------------------------------------------
                           2087 ;	radio/radio.c:529: radio_initialise(void)
                           2088 ;	-----------------------------------------
                           2089 ;	 function radio_initialise
                           2090 ;	-----------------------------------------
   347F                    2091 _radio_initialise:
                           2092 ;	radio/radio.c:533: delay_msec(50);
   347F 90 00 32      [24] 2093 	mov	dptr,#0x0032
   3482 12 55 DF      [24] 2094 	lcall	_delay_msec
                           2095 ;	radio/radio.c:536: status = register_read(EZRADIOPRO_DEVICE_VERSION);
   3485 75 82 01      [24] 2096 	mov	dpl,#0x01
   3488 12 39 3F      [24] 2097 	lcall	_register_read
   348B AF 82         [24] 2098 	mov	r7,dpl
                           2099 ;	radio/radio.c:537: if (status == 0xFF || status < 5) {
   348D BF FF 02      [24] 2100 	cjne	r7,#0xFF,00133$
   3490 80 05         [24] 2101 	sjmp	00101$
   3492                    2102 00133$:
   3492 BF 05 00      [24] 2103 	cjne	r7,#0x05,00134$
   3495                    2104 00134$:
   3495 50 02         [24] 2105 	jnc	00102$
   3497                    2106 00101$:
                           2107 ;	radio/radio.c:539: return false;
   3497 C3            [12] 2108 	clr	c
   3498 22            [24] 2109 	ret
   3499                    2110 00102$:
                           2111 ;	radio/radio.c:542: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_2);
   3499 75 82 04      [24] 2112 	mov	dpl,#0x04
   349C 12 39 3F      [24] 2113 	lcall	_register_read
                           2114 ;	radio/radio.c:544: if ((status & EZRADIOPRO_IPOR) == 0) {
   349F E5 82         [12] 2115 	mov	a,dpl
   34A1 FF            [12] 2116 	mov	r7,a
   34A2 20 E0 06      [24] 2117 	jb	acc.0,00105$
                           2118 ;	radio/radio.c:546: return software_reset();
   34A5 12 3A 07      [24] 2119 	lcall	_software_reset
   34A8 92 1D         [24] 2120 	mov  _radio_initialise_sloc0_1_0,c
   34AA 22            [24] 2121 	ret
   34AB                    2122 00105$:
                           2123 ;	radio/radio.c:549: if (status & EZRADIOPRO_ICHIPRDY) {
   34AB EF            [12] 2124 	mov	a,r7
   34AC 30 E1 02      [24] 2125 	jnb	acc.1,00107$
                           2126 ;	radio/radio.c:551: return true;
   34AF D3            [12] 2127 	setb	c
   34B0 22            [24] 2128 	ret
   34B1                    2129 00107$:
                           2130 ;	radio/radio.c:555: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0);
   34B1 E4            [12] 2131 	clr	a
   34B2 C0 E0         [24] 2132 	push	acc
   34B4 75 82 05      [24] 2133 	mov	dpl,#0x05
   34B7 12 39 0F      [24] 2134 	lcall	_register_write
   34BA 15 81         [12] 2135 	dec	sp
                           2136 ;	radio/radio.c:556: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, EZRADIOPRO_ENCHIPRDY);
   34BC 74 02         [12] 2137 	mov	a,#0x02
   34BE C0 E0         [24] 2138 	push	acc
   34C0 75 82 06      [24] 2139 	mov	dpl,#0x06
   34C3 12 39 0F      [24] 2140 	lcall	_register_write
   34C6 15 81         [12] 2141 	dec	sp
                           2142 ;	radio/radio.c:559: delay_set(50);
   34C8 90 00 32      [24] 2143 	mov	dptr,#0x0032
   34CB 12 55 A6      [24] 2144 	lcall	_delay_set
                           2145 ;	radio/radio.c:560: while (!delay_expired()) {
   34CE                    2146 00110$:
   34CE 12 55 D7      [24] 2147 	lcall	_delay_expired
   34D1 40 13         [24] 2148 	jc	00112$
                           2149 ;	radio/radio.c:561: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_1);
   34D3 75 82 03      [24] 2150 	mov	dpl,#0x03
   34D6 12 39 3F      [24] 2151 	lcall	_register_read
                           2152 ;	radio/radio.c:562: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_2);
   34D9 75 82 04      [24] 2153 	mov	dpl,#0x04
   34DC 12 39 3F      [24] 2154 	lcall	_register_read
   34DF E5 82         [12] 2155 	mov	a,dpl
                           2156 ;	radio/radio.c:563: if (status & EZRADIOPRO_ICHIPRDY) {
   34E1 30 E1 EA      [24] 2157 	jnb	acc.1,00110$
                           2158 ;	radio/radio.c:564: return true;
   34E4 D3            [12] 2159 	setb	c
   34E5 22            [24] 2160 	ret
   34E6                    2161 00112$:
                           2162 ;	radio/radio.c:568: return false;
   34E6 C3            [12] 2163 	clr	c
   34E7 22            [24] 2164 	ret
                           2165 ;------------------------------------------------------------
                           2166 ;Allocation info for local variables in function 'radio_set_frequency'
                           2167 ;------------------------------------------------------------
                           2168 ;	radio/radio.c:575: radio_set_frequency(__pdata uint32_t value)
                           2169 ;	-----------------------------------------
                           2170 ;	 function radio_set_frequency
                           2171 ;	-----------------------------------------
   34E8                    2172 _radio_set_frequency:
   34E8 AC 82         [24] 2173 	mov	r4,dpl
   34EA AD 83         [24] 2174 	mov	r5,dph
   34EC AE F0         [24] 2175 	mov	r6,b
   34EE FF            [12] 2176 	mov	r7,a
                           2177 ;	radio/radio.c:577: if (value < 240000000UL || value > 935000000UL) {
   34EF C3            [12] 2178 	clr	c
   34F0 ED            [12] 2179 	mov	a,r5
   34F1 94 1C         [12] 2180 	subb	a,#0x1C
   34F3 EE            [12] 2181 	mov	a,r6
   34F4 94 4E         [12] 2182 	subb	a,#0x4E
   34F6 EF            [12] 2183 	mov	a,r7
   34F7 94 0E         [12] 2184 	subb	a,#0x0E
   34F9 40 0E         [24] 2185 	jc	00101$
   34FB 74 C0         [12] 2186 	mov	a,#0xC0
   34FD 9C            [12] 2187 	subb	a,r4
   34FE 74 F7         [12] 2188 	mov	a,#0xF7
   3500 9D            [12] 2189 	subb	a,r5
   3501 74 BA         [12] 2190 	mov	a,#0xBA
   3503 9E            [12] 2191 	subb	a,r6
   3504 74 37         [12] 2192 	mov	a,#0x37
   3506 9F            [12] 2193 	subb	a,r7
   3507 50 02         [24] 2194 	jnc	00102$
   3509                    2195 00101$:
                           2196 ;	radio/radio.c:578: return false;
   3509 C3            [12] 2197 	clr	c
   350A 22            [24] 2198 	ret
   350B                    2199 00102$:
                           2200 ;	radio/radio.c:580: settings.frequency = value;
   350B 78 7E         [12] 2201 	mov	r0,#_settings
   350D EC            [12] 2202 	mov	a,r4
   350E F2            [24] 2203 	movx	@r0,a
   350F 08            [12] 2204 	inc	r0
   3510 ED            [12] 2205 	mov	a,r5
   3511 F2            [24] 2206 	movx	@r0,a
   3512 08            [12] 2207 	inc	r0
   3513 EE            [12] 2208 	mov	a,r6
   3514 F2            [24] 2209 	movx	@r0,a
   3515 08            [12] 2210 	inc	r0
   3516 EF            [12] 2211 	mov	a,r7
   3517 F2            [24] 2212 	movx	@r0,a
                           2213 ;	radio/radio.c:581: set_frequency_registers(value);
   3518 8C 82         [24] 2214 	mov	dpl,r4
   351A 8D 83         [24] 2215 	mov	dph,r5
   351C 8E F0         [24] 2216 	mov	b,r6
   351E EF            [12] 2217 	mov	a,r7
   351F 12 3A 73      [24] 2218 	lcall	_set_frequency_registers
                           2219 ;	radio/radio.c:582: return true;
   3522 D3            [12] 2220 	setb	c
   3523 22            [24] 2221 	ret
                           2222 ;------------------------------------------------------------
                           2223 ;Allocation info for local variables in function 'radio_set_channel_spacing'
                           2224 ;------------------------------------------------------------
                           2225 ;	radio/radio.c:589: radio_set_channel_spacing(__pdata uint32_t value)
                           2226 ;	-----------------------------------------
                           2227 ;	 function radio_set_channel_spacing
                           2228 ;	-----------------------------------------
   3524                    2229 _radio_set_channel_spacing:
   3524 AC 82         [24] 2230 	mov	r4,dpl
   3526 AD 83         [24] 2231 	mov	r5,dph
   3528 AE F0         [24] 2232 	mov	r6,b
   352A FF            [12] 2233 	mov	r7,a
                           2234 ;	radio/radio.c:591: if (value > 2550000L)
   352B C3            [12] 2235 	clr	c
   352C 74 F0         [12] 2236 	mov	a,#0xF0
   352E 9C            [12] 2237 	subb	a,r4
   352F 74 E8         [12] 2238 	mov	a,#0xE8
   3531 9D            [12] 2239 	subb	a,r5
   3532 74 26         [12] 2240 	mov	a,#0x26
   3534 9E            [12] 2241 	subb	a,r6
   3535 E4            [12] 2242 	clr	a
   3536 9F            [12] 2243 	subb	a,r7
   3537 50 02         [24] 2244 	jnc	00102$
                           2245 ;	radio/radio.c:592: return false;
   3539 C3            [12] 2246 	clr	c
   353A 22            [24] 2247 	ret
   353B                    2248 00102$:
                           2249 ;	radio/radio.c:593: value = scale_uint32(value, 10000);
   353B 90 00 9A      [24] 2250 	mov	dptr,#_scale_uint32_PARM_2
   353E 74 10         [12] 2251 	mov	a,#0x10
   3540 F0            [24] 2252 	movx	@dptr,a
   3541 74 27         [12] 2253 	mov	a,#0x27
   3543 A3            [24] 2254 	inc	dptr
   3544 F0            [24] 2255 	movx	@dptr,a
   3545 E4            [12] 2256 	clr	a
   3546 A3            [24] 2257 	inc	dptr
   3547 F0            [24] 2258 	movx	@dptr,a
   3548 E4            [12] 2259 	clr	a
   3549 A3            [24] 2260 	inc	dptr
   354A F0            [24] 2261 	movx	@dptr,a
   354B 8C 82         [24] 2262 	mov	dpl,r4
   354D 8D 83         [24] 2263 	mov	dph,r5
   354F 8E F0         [24] 2264 	mov	b,r6
   3551 EF            [12] 2265 	mov	a,r7
   3552 12 39 B3      [24] 2266 	lcall	_scale_uint32
   3555 AC 82         [24] 2267 	mov	r4,dpl
   3557 AD 83         [24] 2268 	mov	r5,dph
   3559 AE F0         [24] 2269 	mov	r6,b
   355B FF            [12] 2270 	mov	r7,a
                           2271 ;	radio/radio.c:594: settings.channel_spacing = value;
   355C 78 82         [12] 2272 	mov	r0,#(_settings + 0x0004)
   355E EC            [12] 2273 	mov	a,r4
   355F F2            [24] 2274 	movx	@r0,a
   3560 08            [12] 2275 	inc	r0
   3561 ED            [12] 2276 	mov	a,r5
   3562 F2            [24] 2277 	movx	@r0,a
   3563 08            [12] 2278 	inc	r0
   3564 EE            [12] 2279 	mov	a,r6
   3565 F2            [24] 2280 	movx	@r0,a
   3566 08            [12] 2281 	inc	r0
   3567 EF            [12] 2282 	mov	a,r7
   3568 F2            [24] 2283 	movx	@r0,a
                           2284 ;	radio/radio.c:595: register_write(EZRADIOPRO_FREQUENCY_HOPPING_STEP_SIZE, value);
   3569 C0 04         [24] 2285 	push	ar4
   356B 75 82 7A      [24] 2286 	mov	dpl,#0x7A
   356E 12 39 0F      [24] 2287 	lcall	_register_write
   3571 15 81         [12] 2288 	dec	sp
                           2289 ;	radio/radio.c:596: return true;
   3573 D3            [12] 2290 	setb	c
   3574 22            [24] 2291 	ret
                           2292 ;------------------------------------------------------------
                           2293 ;Allocation info for local variables in function 'radio_set_channel'
                           2294 ;------------------------------------------------------------
                           2295 ;channel                   Allocated with name '_radio_set_channel_channel_1_206'
                           2296 ;------------------------------------------------------------
                           2297 ;	radio/radio.c:602: radio_set_channel(uint8_t channel)
                           2298 ;	-----------------------------------------
                           2299 ;	 function radio_set_channel
                           2300 ;	-----------------------------------------
   3575                    2301 _radio_set_channel:
   3575 E5 82         [12] 2302 	mov	a,dpl
   3577 90 04 6B      [24] 2303 	mov	dptr,#_radio_set_channel_channel_1_206
   357A F0            [24] 2304 	movx	@dptr,a
                           2305 ;	radio/radio.c:604: if (channel != settings.current_channel) {
   357B 78 87         [12] 2306 	mov	r0,#(_settings + 0x0009)
   357D E2            [24] 2307 	movx	a,@r0
   357E FF            [12] 2308 	mov	r7,a
   357F 90 04 6B      [24] 2309 	mov	dptr,#_radio_set_channel_channel_1_206
   3582 E0            [24] 2310 	movx	a,@dptr
   3583 FE            [12] 2311 	mov	r6,a
   3584 B5 07 01      [24] 2312 	cjne	a,ar7,00108$
   3587 22            [24] 2313 	ret
   3588                    2314 00108$:
                           2315 ;	radio/radio.c:605: settings.current_channel = channel;
   3588 78 87         [12] 2316 	mov	r0,#(_settings + 0x0009)
   358A EE            [12] 2317 	mov	a,r6
   358B F2            [24] 2318 	movx	@r0,a
                           2319 ;	radio/radio.c:606: register_write(EZRADIOPRO_FREQUENCY_HOPPING_CHANNEL_SELECT, channel);
   358C C0 06         [24] 2320 	push	ar6
   358E 75 82 79      [24] 2321 	mov	dpl,#0x79
   3591 12 39 0F      [24] 2322 	lcall	_register_write
   3594 15 81         [12] 2323 	dec	sp
                           2324 ;	radio/radio.c:607: preamble_detected = 0;
   3596 C2 17         [12] 2325 	clr	_preamble_detected
   3598 22            [24] 2326 	ret
                           2327 ;------------------------------------------------------------
                           2328 ;Allocation info for local variables in function 'radio_get_channel'
                           2329 ;------------------------------------------------------------
                           2330 ;	radio/radio.c:614: radio_get_channel(void)
                           2331 ;	-----------------------------------------
                           2332 ;	 function radio_get_channel
                           2333 ;	-----------------------------------------
   3599                    2334 _radio_get_channel:
                           2335 ;	radio/radio.c:616: return settings.current_channel;
   3599 78 87         [12] 2336 	mov	r0,#(_settings + 0x0009)
   359B E2            [24] 2337 	movx	a,@r0
   359C F5 82         [12] 2338 	mov	dpl,a
   359E 22            [24] 2339 	ret
                           2340 ;------------------------------------------------------------
                           2341 ;Allocation info for local variables in function 'radio_configure'
                           2342 ;------------------------------------------------------------
                           2343 ;	radio/radio.c:713: radio_configure(__pdata uint8_t air_rate)
                           2344 ;	-----------------------------------------
                           2345 ;	 function radio_configure
                           2346 ;	-----------------------------------------
   359F                    2347 _radio_configure:
   359F AF 82         [24] 2348 	mov	r7,dpl
                           2349 ;	radio/radio.c:718: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0x00);
   35A1 C0 07         [24] 2350 	push	ar7
   35A3 E4            [12] 2351 	clr	a
   35A4 C0 E0         [24] 2352 	push	acc
   35A6 75 82 05      [24] 2353 	mov	dpl,#0x05
   35A9 12 39 0F      [24] 2354 	lcall	_register_write
   35AC 15 81         [12] 2355 	dec	sp
                           2356 ;	radio/radio.c:719: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, 0x00);
   35AE E4            [12] 2357 	clr	a
   35AF C0 E0         [24] 2358 	push	acc
   35B1 75 82 06      [24] 2359 	mov	dpl,#0x06
   35B4 12 39 0F      [24] 2360 	lcall	_register_write
   35B7 15 81         [12] 2361 	dec	sp
                           2362 ;	radio/radio.c:721: clear_status_registers();
   35B9 12 39 A7      [24] 2363 	lcall	_clear_status_registers
                           2364 ;	radio/radio.c:731: register_write(EZRADIOPRO_GPIO0_CONFIGURATION, 0x15);	// RX state (output)
   35BC 74 15         [12] 2365 	mov	a,#0x15
   35BE C0 E0         [24] 2366 	push	acc
   35C0 75 82 0B      [24] 2367 	mov	dpl,#0x0B
   35C3 12 39 0F      [24] 2368 	lcall	_register_write
   35C6 15 81         [12] 2369 	dec	sp
                           2370 ;	radio/radio.c:732: register_write(EZRADIOPRO_GPIO1_CONFIGURATION, 0x12);	// TX state (output)
   35C8 74 12         [12] 2371 	mov	a,#0x12
   35CA C0 E0         [24] 2372 	push	acc
   35CC 75 82 0C      [24] 2373 	mov	dpl,#0x0C
   35CF 12 39 0F      [24] 2374 	lcall	_register_write
   35D2 15 81         [12] 2375 	dec	sp
                           2376 ;	radio/radio.c:750: register_write(EZRADIOPRO_CRYSTAL_OSCILLATOR_LOAD_CAPACITANCE, EZRADIOPRO_OSC_CAP_VALUE);
   35D4 74 B4         [12] 2377 	mov	a,#0xB4
   35D6 C0 E0         [24] 2378 	push	acc
   35D8 75 82 09      [24] 2379 	mov	dpl,#0x09
   35DB 12 39 0F      [24] 2380 	lcall	_register_write
   35DE 15 81         [12] 2381 	dec	sp
   35E0 D0 07         [24] 2382 	pop	ar7
                           2383 ;	radio/radio.c:753: if (air_rate > 100) {
   35E2 EF            [12] 2384 	mov	a,r7
   35E3 24 9B         [12] 2385 	add	a,#0xff - 0x64
   35E5 50 10         [24] 2386 	jnc	00102$
                           2387 ;	radio/radio.c:754: register_write(EZRADIOPRO_CHARGEPUMP_CURRENT_TRIMMING_OVERRIDE, 0xC0);
   35E7 C0 07         [24] 2388 	push	ar7
   35E9 74 C0         [12] 2389 	mov	a,#0xC0
   35EB C0 E0         [24] 2390 	push	acc
   35ED 75 82 58      [24] 2391 	mov	dpl,#0x58
   35F0 12 39 0F      [24] 2392 	lcall	_register_write
   35F3 15 81         [12] 2393 	dec	sp
   35F5 D0 07         [24] 2394 	pop	ar7
   35F7                    2395 00102$:
                           2396 ;	radio/radio.c:758: set_frequency_registers(settings.frequency);
   35F7 78 7E         [12] 2397 	mov	r0,#_settings
   35F9 E2            [24] 2398 	movx	a,@r0
   35FA FB            [12] 2399 	mov	r3,a
   35FB 08            [12] 2400 	inc	r0
   35FC E2            [24] 2401 	movx	a,@r0
   35FD FC            [12] 2402 	mov	r4,a
   35FE 08            [12] 2403 	inc	r0
   35FF E2            [24] 2404 	movx	a,@r0
   3600 FD            [12] 2405 	mov	r5,a
   3601 08            [12] 2406 	inc	r0
   3602 E2            [24] 2407 	movx	a,@r0
   3603 8B 82         [24] 2408 	mov	dpl,r3
   3605 8C 83         [24] 2409 	mov	dph,r4
   3607 8D F0         [24] 2410 	mov	b,r5
   3609 C0 07         [24] 2411 	push	ar7
   360B 12 3A 73      [24] 2412 	lcall	_set_frequency_registers
                           2413 ;	radio/radio.c:759: register_write(EZRADIOPRO_FREQUENCY_HOPPING_STEP_SIZE, settings.channel_spacing);
   360E 78 82         [12] 2414 	mov	r0,#(_settings + 0x0004)
   3610 E2            [24] 2415 	movx	a,@r0
   3611 FB            [12] 2416 	mov	r3,a
   3612 08            [12] 2417 	inc	r0
   3613 E2            [24] 2418 	movx	a,@r0
   3614 08            [12] 2419 	inc	r0
   3615 E2            [24] 2420 	movx	a,@r0
   3616 08            [12] 2421 	inc	r0
   3617 E2            [24] 2422 	movx	a,@r0
   3618 C0 03         [24] 2423 	push	ar3
   361A 75 82 7A      [24] 2424 	mov	dpl,#0x7A
   361D 12 39 0F      [24] 2425 	lcall	_register_write
   3620 15 81         [12] 2426 	dec	sp
   3622 D0 07         [24] 2427 	pop	ar7
                           2428 ;	radio/radio.c:761: if (feature_golay) {
   3624 30 04 29      [24] 2429 	jnb	_feature_golay,00104$
                           2430 ;	radio/radio.c:765: register_write(EZRADIOPRO_DATA_ACCESS_CONTROL,
   3627 C0 07         [24] 2431 	push	ar7
   3629 74 88         [12] 2432 	mov	a,#0x88
   362B C0 E0         [24] 2433 	push	acc
   362D 75 82 30      [24] 2434 	mov	dpl,#0x30
   3630 12 39 0F      [24] 2435 	lcall	_register_write
   3633 15 81         [12] 2436 	dec	sp
                           2437 ;	radio/radio.c:769: register_write(EZRADIOPRO_HEADER_CONTROL_2, EZRADIOPRO_HDLEN_0BYTE | EZRADIOPRO_SYNCLEN_2BYTE);
   3635 74 02         [12] 2438 	mov	a,#0x02
   3637 C0 E0         [24] 2439 	push	acc
   3639 75 82 33      [24] 2440 	mov	dpl,#0x33
   363C 12 39 0F      [24] 2441 	lcall	_register_write
   363F 15 81         [12] 2442 	dec	sp
                           2443 ;	radio/radio.c:772: register_write(EZRADIOPRO_HEADER_CONTROL_1, 0x00);
   3641 E4            [12] 2444 	clr	a
   3642 C0 E0         [24] 2445 	push	acc
   3644 75 82 32      [24] 2446 	mov	dpl,#0x32
   3647 12 39 0F      [24] 2447 	lcall	_register_write
   364A 15 81         [12] 2448 	dec	sp
   364C D0 07         [24] 2449 	pop	ar7
   364E 80 40         [24] 2450 	sjmp	00105$
   3650                    2451 00104$:
                           2452 ;	radio/radio.c:774: register_write(EZRADIOPRO_DATA_ACCESS_CONTROL,
   3650 C0 07         [24] 2453 	push	ar7
   3652 74 8D         [12] 2454 	mov	a,#0x8D
   3654 C0 E0         [24] 2455 	push	acc
   3656 75 82 30      [24] 2456 	mov	dpl,#0x30
   3659 12 39 0F      [24] 2457 	lcall	_register_write
   365C 15 81         [12] 2458 	dec	sp
                           2459 ;	radio/radio.c:780: register_write(EZRADIOPRO_HEADER_CONTROL_2, EZRADIOPRO_HDLEN_2BYTE | EZRADIOPRO_SYNCLEN_2BYTE);
   365E 74 22         [12] 2460 	mov	a,#0x22
   3660 C0 E0         [24] 2461 	push	acc
   3662 75 82 33      [24] 2462 	mov	dpl,#0x33
   3665 12 39 0F      [24] 2463 	lcall	_register_write
   3668 15 81         [12] 2464 	dec	sp
                           2465 ;	radio/radio.c:782: register_write(EZRADIOPRO_HEADER_CONTROL_1, 0x0C);
   366A 74 0C         [12] 2466 	mov	a,#0x0C
   366C C0 E0         [24] 2467 	push	acc
   366E 75 82 32      [24] 2468 	mov	dpl,#0x32
   3671 12 39 0F      [24] 2469 	lcall	_register_write
   3674 15 81         [12] 2470 	dec	sp
                           2471 ;	radio/radio.c:783: register_write(EZRADIOPRO_HEADER_ENABLE_3, 0xFF);
   3676 74 FF         [12] 2472 	mov	a,#0xFF
   3678 C0 E0         [24] 2473 	push	acc
   367A 75 82 43      [24] 2474 	mov	dpl,#0x43
   367D 12 39 0F      [24] 2475 	lcall	_register_write
   3680 15 81         [12] 2476 	dec	sp
                           2477 ;	radio/radio.c:784: register_write(EZRADIOPRO_HEADER_ENABLE_2, 0xFF);
   3682 74 FF         [12] 2478 	mov	a,#0xFF
   3684 C0 E0         [24] 2479 	push	acc
   3686 75 82 44      [24] 2480 	mov	dpl,#0x44
   3689 12 39 0F      [24] 2481 	lcall	_register_write
   368C 15 81         [12] 2482 	dec	sp
   368E D0 07         [24] 2483 	pop	ar7
   3690                    2484 00105$:
                           2485 ;	radio/radio.c:789: register_write(EZRADIOPRO_TX_FIFO_CONTROL_1, TX_FIFO_THRESHOLD_HIGH);
   3690 C0 07         [24] 2486 	push	ar7
   3692 74 3C         [12] 2487 	mov	a,#0x3C
   3694 C0 E0         [24] 2488 	push	acc
   3696 75 82 7C      [24] 2489 	mov	dpl,#0x7C
   3699 12 39 0F      [24] 2490 	lcall	_register_write
   369C 15 81         [12] 2491 	dec	sp
                           2492 ;	radio/radio.c:790: register_write(EZRADIOPRO_TX_FIFO_CONTROL_2, TX_FIFO_THRESHOLD_LOW);
   369E 74 20         [12] 2493 	mov	a,#0x20
   36A0 C0 E0         [24] 2494 	push	acc
   36A2 75 82 7D      [24] 2495 	mov	dpl,#0x7D
   36A5 12 39 0F      [24] 2496 	lcall	_register_write
   36A8 15 81         [12] 2497 	dec	sp
                           2498 ;	radio/radio.c:791: register_write(EZRADIOPRO_RX_FIFO_CONTROL, RX_FIFO_THRESHOLD_HIGH);
   36AA 74 32         [12] 2499 	mov	a,#0x32
   36AC C0 E0         [24] 2500 	push	acc
   36AE 75 82 7E      [24] 2501 	mov	dpl,#0x7E
   36B1 12 39 0F      [24] 2502 	lcall	_register_write
   36B4 15 81         [12] 2503 	dec	sp
                           2504 ;	radio/radio.c:793: settings.preamble_length = 16;
   36B6 78 89         [12] 2505 	mov	r0,#(_settings + 0x000b)
   36B8 74 10         [12] 2506 	mov	a,#0x10
   36BA F2            [24] 2507 	movx	@r0,a
                           2508 ;	radio/radio.c:795: register_write(EZRADIOPRO_PREAMBLE_LENGTH, settings.preamble_length); // nibbles 
   36BB 78 89         [12] 2509 	mov	r0,#(_settings + 0x000b)
   36BD E2            [24] 2510 	movx	a,@r0
   36BE FE            [12] 2511 	mov	r6,a
   36BF C0 06         [24] 2512 	push	ar6
   36C1 75 82 34      [24] 2513 	mov	dpl,#0x34
   36C4 12 39 0F      [24] 2514 	lcall	_register_write
   36C7 15 81         [12] 2515 	dec	sp
                           2516 ;	radio/radio.c:796: register_write(EZRADIOPRO_PREAMBLE_DETECTION_CONTROL, 5<<3); // 5 nibbles
   36C9 74 28         [12] 2517 	mov	a,#0x28
   36CB C0 E0         [24] 2518 	push	acc
   36CD 75 82 35      [24] 2519 	mov	dpl,#0x35
   36D0 12 39 0F      [24] 2520 	lcall	_register_write
   36D3 15 81         [12] 2521 	dec	sp
                           2522 ;	radio/radio.c:799: radio_set_transmit_power(0);
   36D5 75 82 00      [24] 2523 	mov	dpl,#0x00
   36D8 12 38 72      [24] 2524 	lcall	_radio_set_transmit_power
   36DB D0 07         [24] 2525 	pop	ar7
                           2526 ;	radio/radio.c:802: for (i = 0; i < NUM_DATA_RATES - 1; i++) {
   36DD 7E 00         [12] 2527 	mov	r6,#0x00
   36DF                    2528 00131$:
                           2529 ;	radio/radio.c:803: if (air_data_rates[i] >= air_rate) break;
   36DF EE            [12] 2530 	mov	a,r6
   36E0 90 C9 45      [24] 2531 	mov	dptr,#_air_data_rates
   36E3 93            [24] 2532 	movc	a,@a+dptr
   36E4 FD            [12] 2533 	mov	r5,a
   36E5 C3            [12] 2534 	clr	c
   36E6 9F            [12] 2535 	subb	a,r7
   36E7 50 06         [24] 2536 	jnc	00108$
                           2537 ;	radio/radio.c:802: for (i = 0; i < NUM_DATA_RATES - 1; i++) {
   36E9 0E            [12] 2538 	inc	r6
   36EA BE 0C 00      [24] 2539 	cjne	r6,#0x0C,00205$
   36ED                    2540 00205$:
   36ED 40 F0         [24] 2541 	jc	00131$
   36EF                    2542 00108$:
                           2543 ;	radio/radio.c:805: rate_selection = i;
                           2544 ;	radio/radio.c:807: settings.air_data_rate = air_data_rates[rate_selection];
   36EF EE            [12] 2545 	mov	a,r6
   36F0 FF            [12] 2546 	mov	r7,a
   36F1 90 C9 45      [24] 2547 	mov	dptr,#_air_data_rates
   36F4 93            [24] 2548 	movc	a,@a+dptr
   36F5 FE            [12] 2549 	mov	r6,a
   36F6 78 86         [12] 2550 	mov	r0,#(_settings + 0x0008)
   36F8 F2            [24] 2551 	movx	@r0,a
                           2552 ;	radio/radio.c:809: if (settings.air_data_rate >= 32) {
   36F9 BE 20 00      [24] 2553 	cjne	r6,#0x20,00207$
   36FC                    2554 00207$:
   36FC 40 04         [24] 2555 	jc	00110$
                           2556 ;	radio/radio.c:810: control = 0x0D;
   36FE 7E 0D         [12] 2557 	mov	r6,#0x0D
   3700 80 02         [24] 2558 	sjmp	00111$
   3702                    2559 00110$:
                           2560 ;	radio/radio.c:812: control = 0x2D;
   3702 7E 2D         [12] 2561 	mov	r6,#0x2D
   3704                    2562 00111$:
                           2563 ;	radio/radio.c:814: if (param_get(PARAM_MANCHESTER) && settings.air_data_rate <= 128) {
   3704 75 82 0D      [24] 2564 	mov	dpl,#0x0D
   3707 C0 07         [24] 2565 	push	ar7
   3709 C0 06         [24] 2566 	push	ar6
   370B 12 27 64      [24] 2567 	lcall	_param_get
   370E AA 82         [24] 2568 	mov	r2,dpl
   3710 AB 83         [24] 2569 	mov	r3,dph
   3712 AC F0         [24] 2570 	mov	r4,b
   3714 FD            [12] 2571 	mov	r5,a
   3715 D0 06         [24] 2572 	pop	ar6
   3717 D0 07         [24] 2573 	pop	ar7
   3719 EA            [12] 2574 	mov	a,r2
   371A 4B            [12] 2575 	orl	a,r3
   371B 4C            [12] 2576 	orl	a,r4
   371C 4D            [12] 2577 	orl	a,r5
   371D 60 0B         [24] 2578 	jz	00113$
   371F 78 86         [12] 2579 	mov	r0,#(_settings + 0x0008)
   3721 E2            [24] 2580 	movx	a,@r0
   3722 FD            [12] 2581 	mov  r5,a
   3723 24 7F         [12] 2582 	add	a,#0xff - 0x80
   3725 40 03         [24] 2583 	jc	00113$
                           2584 ;	radio/radio.c:816: control |= EZRADIOPRO_ENMANCH;
   3727 43 06 02      [24] 2585 	orl	ar6,#0x02
   372A                    2586 00113$:
                           2587 ;	radio/radio.c:818: register_write(EZRADIOPRO_MODULATION_MODE_CONTROL_1, control);
   372A C0 07         [24] 2588 	push	ar7
   372C C0 06         [24] 2589 	push	ar6
   372E 75 82 70      [24] 2590 	mov	dpl,#0x70
   3731 12 39 0F      [24] 2591 	lcall	_register_write
   3734 15 81         [12] 2592 	dec	sp
                           2593 ;	radio/radio.c:820: register_write(EZRADIOPRO_MODULATION_MODE_CONTROL_2, 0x23);
   3736 74 23         [12] 2594 	mov	a,#0x23
   3738 C0 E0         [24] 2595 	push	acc
   373A 75 82 71      [24] 2596 	mov	dpl,#0x71
   373D 12 39 0F      [24] 2597 	lcall	_register_write
   3740 15 81         [12] 2598 	dec	sp
                           2599 ;	radio/radio.c:824: register_write(EZRADIOPRO_AFC_LOOP_GEARSHIFT_OVERRIDE, 0x44);
   3742 74 44         [12] 2600 	mov	a,#0x44
   3744 C0 E0         [24] 2601 	push	acc
   3746 75 82 1D      [24] 2602 	mov	dpl,#0x1D
   3749 12 39 0F      [24] 2603 	lcall	_register_write
   374C 15 81         [12] 2604 	dec	sp
   374E D0 07         [24] 2605 	pop	ar7
                           2606 ;	radio/radio.c:828: if (settings.air_data_rate < 200) {
   3750 78 86         [12] 2607 	mov	r0,#(_settings + 0x0008)
   3752 E2            [24] 2608 	movx	a,@r0
   3753 FE            [12] 2609 	mov	r6,a
   3754 BE C8 00      [24] 2610 	cjne	r6,#0xC8,00211$
   3757                    2611 00211$:
   3757 50 12         [24] 2612 	jnc	00116$
                           2613 ;	radio/radio.c:829: register_write(EZRADIOPRO_AFC_TIMING_CONTROL, 0x0A);
   3759 C0 07         [24] 2614 	push	ar7
   375B 74 0A         [12] 2615 	mov	a,#0x0A
   375D C0 E0         [24] 2616 	push	acc
   375F 75 82 1E      [24] 2617 	mov	dpl,#0x1E
   3762 12 39 0F      [24] 2618 	lcall	_register_write
   3765 15 81         [12] 2619 	dec	sp
   3767 D0 07         [24] 2620 	pop	ar7
   3769 80 10         [24] 2621 	sjmp	00117$
   376B                    2622 00116$:
                           2623 ;	radio/radio.c:831: register_write(EZRADIOPRO_AFC_TIMING_CONTROL, 0x02);
   376B C0 07         [24] 2624 	push	ar7
   376D 74 02         [12] 2625 	mov	a,#0x02
   376F C0 E0         [24] 2626 	push	acc
   3771 75 82 1E      [24] 2627 	mov	dpl,#0x1E
   3774 12 39 0F      [24] 2628 	lcall	_register_write
   3777 15 81         [12] 2629 	dec	sp
   3779 D0 07         [24] 2630 	pop	ar7
   377B                    2631 00117$:
                           2632 ;	radio/radio.c:835: if (g_board_frequency == FREQ_433) {
   377B 78 32         [12] 2633 	mov	r0,#_g_board_frequency
   377D E2            [24] 2634 	movx	a,@r0
   377E B4 43 3A      [24] 2635 	cjne	a,#0x43,00129$
                           2636 ;	radio/radio.c:836: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   3781 7E 00         [12] 2637 	mov	r6,#0x00
   3783                    2638 00133$:
                           2639 ;	radio/radio.c:838: reg_table_433[i][rate_selection]);
   3783 EE            [12] 2640 	mov	a,r6
   3784 75 F0 0D      [24] 2641 	mov	b,#0x0D
   3787 A4            [48] 2642 	mul	ab
   3788 24 52         [12] 2643 	add	a,#_reg_table_433
   378A FC            [12] 2644 	mov	r4,a
   378B 74 C9         [12] 2645 	mov	a,#(_reg_table_433 >> 8)
   378D 35 F0         [12] 2646 	addc	a,b
   378F FD            [12] 2647 	mov	r5,a
   3790 EF            [12] 2648 	mov	a,r7
   3791 2C            [12] 2649 	add	a,r4
   3792 F5 82         [12] 2650 	mov	dpl,a
   3794 E4            [12] 2651 	clr	a
   3795 3D            [12] 2652 	addc	a,r5
   3796 F5 83         [12] 2653 	mov	dph,a
   3798 E4            [12] 2654 	clr	a
   3799 93            [24] 2655 	movc	a,@a+dptr
   379A FD            [12] 2656 	mov	r5,a
                           2657 ;	radio/radio.c:837: register_write(reg_index[i],
   379B EE            [12] 2658 	mov	a,r6
   379C 90 C9 39      [24] 2659 	mov	dptr,#_reg_index
   379F 93            [24] 2660 	movc	a,@a+dptr
   37A0 FC            [12] 2661 	mov	r4,a
   37A1 C0 07         [24] 2662 	push	ar7
   37A3 C0 06         [24] 2663 	push	ar6
   37A5 C0 05         [24] 2664 	push	ar5
   37A7 8C 82         [24] 2665 	mov	dpl,r4
   37A9 12 39 0F      [24] 2666 	lcall	_register_write
   37AC 15 81         [12] 2667 	dec	sp
   37AE D0 06         [24] 2668 	pop	ar6
   37B0 D0 07         [24] 2669 	pop	ar7
                           2670 ;	radio/radio.c:836: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   37B2 0E            [12] 2671 	inc	r6
   37B3 BE 0C 00      [24] 2672 	cjne	r6,#0x0C,00215$
   37B6                    2673 00215$:
   37B6 40 CB         [24] 2674 	jc	00133$
   37B8 02 38 70      [24] 2675 	ljmp	00130$
   37BB                    2676 00129$:
                           2677 ;	radio/radio.c:840: } else if (g_board_frequency == FREQ_470) {
   37BB 78 32         [12] 2678 	mov	r0,#_g_board_frequency
   37BD E2            [24] 2679 	movx	a,@r0
   37BE B4 47 39      [24] 2680 	cjne	a,#0x47,00126$
                           2681 ;	radio/radio.c:841: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   37C1 7E 00         [12] 2682 	mov	r6,#0x00
   37C3                    2683 00135$:
                           2684 ;	radio/radio.c:843: reg_table_470[i][rate_selection]);
   37C3 EE            [12] 2685 	mov	a,r6
   37C4 75 F0 0D      [24] 2686 	mov	b,#0x0D
   37C7 A4            [48] 2687 	mul	ab
   37C8 24 EE         [12] 2688 	add	a,#_reg_table_470
   37CA FC            [12] 2689 	mov	r4,a
   37CB 74 C9         [12] 2690 	mov	a,#(_reg_table_470 >> 8)
   37CD 35 F0         [12] 2691 	addc	a,b
   37CF FD            [12] 2692 	mov	r5,a
   37D0 EF            [12] 2693 	mov	a,r7
   37D1 2C            [12] 2694 	add	a,r4
   37D2 F5 82         [12] 2695 	mov	dpl,a
   37D4 E4            [12] 2696 	clr	a
   37D5 3D            [12] 2697 	addc	a,r5
   37D6 F5 83         [12] 2698 	mov	dph,a
   37D8 E4            [12] 2699 	clr	a
   37D9 93            [24] 2700 	movc	a,@a+dptr
   37DA FD            [12] 2701 	mov	r5,a
                           2702 ;	radio/radio.c:842: register_write(reg_index[i],
   37DB EE            [12] 2703 	mov	a,r6
   37DC 90 C9 39      [24] 2704 	mov	dptr,#_reg_index
   37DF 93            [24] 2705 	movc	a,@a+dptr
   37E0 FC            [12] 2706 	mov	r4,a
   37E1 C0 07         [24] 2707 	push	ar7
   37E3 C0 06         [24] 2708 	push	ar6
   37E5 C0 05         [24] 2709 	push	ar5
   37E7 8C 82         [24] 2710 	mov	dpl,r4
   37E9 12 39 0F      [24] 2711 	lcall	_register_write
   37EC 15 81         [12] 2712 	dec	sp
   37EE D0 06         [24] 2713 	pop	ar6
   37F0 D0 07         [24] 2714 	pop	ar7
                           2715 ;	radio/radio.c:841: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   37F2 0E            [12] 2716 	inc	r6
   37F3 BE 0C 00      [24] 2717 	cjne	r6,#0x0C,00219$
   37F6                    2718 00219$:
   37F6 40 CB         [24] 2719 	jc	00135$
   37F8 80 76         [24] 2720 	sjmp	00130$
   37FA                    2721 00126$:
                           2722 ;	radio/radio.c:845: } else if (g_board_frequency == FREQ_868) {
   37FA 78 32         [12] 2723 	mov	r0,#_g_board_frequency
   37FC E2            [24] 2724 	movx	a,@r0
   37FD B4 86 39      [24] 2725 	cjne	a,#0x86,00160$
                           2726 ;	radio/radio.c:846: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   3800 7E 00         [12] 2727 	mov	r6,#0x00
   3802                    2728 00137$:
                           2729 ;	radio/radio.c:848: reg_table_868[i][rate_selection]);
   3802 EE            [12] 2730 	mov	a,r6
   3803 75 F0 0D      [24] 2731 	mov	b,#0x0D
   3806 A4            [48] 2732 	mul	ab
   3807 24 8A         [12] 2733 	add	a,#_reg_table_868
   3809 FC            [12] 2734 	mov	r4,a
   380A 74 CA         [12] 2735 	mov	a,#(_reg_table_868 >> 8)
   380C 35 F0         [12] 2736 	addc	a,b
   380E FD            [12] 2737 	mov	r5,a
   380F EF            [12] 2738 	mov	a,r7
   3810 2C            [12] 2739 	add	a,r4
   3811 F5 82         [12] 2740 	mov	dpl,a
   3813 E4            [12] 2741 	clr	a
   3814 3D            [12] 2742 	addc	a,r5
   3815 F5 83         [12] 2743 	mov	dph,a
   3817 E4            [12] 2744 	clr	a
   3818 93            [24] 2745 	movc	a,@a+dptr
   3819 FD            [12] 2746 	mov	r5,a
                           2747 ;	radio/radio.c:847: register_write(reg_index[i],
   381A EE            [12] 2748 	mov	a,r6
   381B 90 C9 39      [24] 2749 	mov	dptr,#_reg_index
   381E 93            [24] 2750 	movc	a,@a+dptr
   381F FC            [12] 2751 	mov	r4,a
   3820 C0 07         [24] 2752 	push	ar7
   3822 C0 06         [24] 2753 	push	ar6
   3824 C0 05         [24] 2754 	push	ar5
   3826 8C 82         [24] 2755 	mov	dpl,r4
   3828 12 39 0F      [24] 2756 	lcall	_register_write
   382B 15 81         [12] 2757 	dec	sp
   382D D0 06         [24] 2758 	pop	ar6
   382F D0 07         [24] 2759 	pop	ar7
                           2760 ;	radio/radio.c:846: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   3831 0E            [12] 2761 	inc	r6
   3832 BE 0C 00      [24] 2762 	cjne	r6,#0x0C,00223$
   3835                    2763 00223$:
   3835 40 CB         [24] 2764 	jc	00137$
                           2765 ;	radio/radio.c:851: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   3837 80 37         [24] 2766 	sjmp	00130$
   3839                    2767 00160$:
   3839 7E 00         [12] 2768 	mov	r6,#0x00
   383B                    2769 00139$:
                           2770 ;	radio/radio.c:853: reg_table_915[i][rate_selection]);
   383B EE            [12] 2771 	mov	a,r6
   383C 75 F0 0D      [24] 2772 	mov	b,#0x0D
   383F A4            [48] 2773 	mul	ab
   3840 24 26         [12] 2774 	add	a,#_reg_table_915
   3842 FC            [12] 2775 	mov	r4,a
   3843 74 CB         [12] 2776 	mov	a,#(_reg_table_915 >> 8)
   3845 35 F0         [12] 2777 	addc	a,b
   3847 FD            [12] 2778 	mov	r5,a
   3848 EF            [12] 2779 	mov	a,r7
   3849 2C            [12] 2780 	add	a,r4
   384A F5 82         [12] 2781 	mov	dpl,a
   384C E4            [12] 2782 	clr	a
   384D 3D            [12] 2783 	addc	a,r5
   384E F5 83         [12] 2784 	mov	dph,a
   3850 E4            [12] 2785 	clr	a
   3851 93            [24] 2786 	movc	a,@a+dptr
   3852 FD            [12] 2787 	mov	r5,a
                           2788 ;	radio/radio.c:852: register_write(reg_index[i],
   3853 EE            [12] 2789 	mov	a,r6
   3854 90 C9 39      [24] 2790 	mov	dptr,#_reg_index
   3857 93            [24] 2791 	movc	a,@a+dptr
   3858 FC            [12] 2792 	mov	r4,a
   3859 C0 07         [24] 2793 	push	ar7
   385B C0 06         [24] 2794 	push	ar6
   385D C0 05         [24] 2795 	push	ar5
   385F 8C 82         [24] 2796 	mov	dpl,r4
   3861 12 39 0F      [24] 2797 	lcall	_register_write
   3864 15 81         [12] 2798 	dec	sp
   3866 D0 06         [24] 2799 	pop	ar6
   3868 D0 07         [24] 2800 	pop	ar7
                           2801 ;	radio/radio.c:851: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   386A 0E            [12] 2802 	inc	r6
   386B BE 0C 00      [24] 2803 	cjne	r6,#0x0C,00225$
   386E                    2804 00225$:
   386E 40 CB         [24] 2805 	jc	00139$
   3870                    2806 00130$:
                           2807 ;	radio/radio.c:857: return true;
   3870 D3            [12] 2808 	setb	c
   3871 22            [24] 2809 	ret
                           2810 ;------------------------------------------------------------
                           2811 ;Allocation info for local variables in function 'radio_set_transmit_power'
                           2812 ;------------------------------------------------------------
                           2813 ;power                     Allocated with name '_radio_set_transmit_power_power_1_230'
                           2814 ;i                         Allocated with name '_radio_set_transmit_power_i_1_231'
                           2815 ;------------------------------------------------------------
                           2816 ;	radio/radio.c:884: radio_set_transmit_power(uint8_t power)
                           2817 ;	-----------------------------------------
                           2818 ;	 function radio_set_transmit_power
                           2819 ;	-----------------------------------------
   3872                    2820 _radio_set_transmit_power:
   3872 E5 82         [12] 2821 	mov	a,dpl
                           2822 ;	radio/radio.c:903: for (i=0; i<NUM_POWER_LEVELS; i++) {
   3874 90 04 6C      [24] 2823 	mov	dptr,#_radio_set_transmit_power_power_1_230
   3877 F0            [24] 2824 	movx	@dptr,a
   3878 FF            [12] 2825 	mov	r7,a
   3879 7E 00         [12] 2826 	mov	r6,#0x00
   387B                    2827 00106$:
                           2828 ;	radio/radio.c:904: if (power <= power_levels[i]) break;
   387B EE            [12] 2829 	mov	a,r6
   387C 90 CB C2      [24] 2830 	mov	dptr,#_power_levels
   387F 93            [24] 2831 	movc	a,@a+dptr
   3880 FD            [12] 2832 	mov	r5,a
   3881 C3            [12] 2833 	clr	c
   3882 9F            [12] 2834 	subb	a,r7
   3883 50 06         [24] 2835 	jnc	00113$
                           2836 ;	radio/radio.c:903: for (i=0; i<NUM_POWER_LEVELS; i++) {
   3885 0E            [12] 2837 	inc	r6
   3886 BE 08 00      [24] 2838 	cjne	r6,#0x08,00121$
   3889                    2839 00121$:
   3889 40 F0         [24] 2840 	jc	00106$
   388B                    2841 00113$:
   388B 90 04 6D      [24] 2842 	mov	dptr,#_radio_set_transmit_power_i_1_231
   388E EE            [12] 2843 	mov	a,r6
   388F F0            [24] 2844 	movx	@dptr,a
                           2845 ;	radio/radio.c:906: if (i == NUM_POWER_LEVELS) {
   3890 BE 08 06      [24] 2846 	cjne	r6,#0x08,00105$
                           2847 ;	radio/radio.c:907: i = NUM_POWER_LEVELS-1;
   3893 90 04 6D      [24] 2848 	mov	dptr,#_radio_set_transmit_power_i_1_231
   3896 74 07         [12] 2849 	mov	a,#0x07
   3898 F0            [24] 2850 	movx	@dptr,a
   3899                    2851 00105$:
                           2852 ;	radio/radio.c:909: settings.transmit_power = power_levels[i];
   3899 90 04 6D      [24] 2853 	mov	dptr,#_radio_set_transmit_power_i_1_231
   389C E0            [24] 2854 	movx	a,@dptr
   389D FF            [12] 2855 	mov	r7,a
   389E 90 CB C2      [24] 2856 	mov	dptr,#_power_levels
   38A1 93            [24] 2857 	movc	a,@a+dptr
   38A2 FE            [12] 2858 	mov	r6,a
   38A3 78 88         [12] 2859 	mov	r0,#(_settings + 0x000a)
   38A5 EE            [12] 2860 	mov	a,r6
   38A6 F2            [24] 2861 	movx	@r0,a
                           2862 ;	radio/radio.c:910: register_write(EZRADIOPRO_TX_POWER, i);
   38A7 C0 07         [24] 2863 	push	ar7
   38A9 75 82 6D      [24] 2864 	mov	dpl,#0x6D
   38AC 12 39 0F      [24] 2865 	lcall	_register_write
   38AF 15 81         [12] 2866 	dec	sp
   38B1 22            [24] 2867 	ret
                           2868 ;------------------------------------------------------------
                           2869 ;Allocation info for local variables in function 'radio_get_transmit_power'
                           2870 ;------------------------------------------------------------
                           2871 ;	radio/radio.c:917: radio_get_transmit_power(void)
                           2872 ;	-----------------------------------------
                           2873 ;	 function radio_get_transmit_power
                           2874 ;	-----------------------------------------
   38B2                    2875 _radio_get_transmit_power:
                           2876 ;	radio/radio.c:919: return settings.transmit_power;
   38B2 78 88         [12] 2877 	mov	r0,#(_settings + 0x000a)
   38B4 E2            [24] 2878 	movx	a,@r0
   38B5 F5 82         [12] 2879 	mov	dpl,a
   38B7 22            [24] 2880 	ret
                           2881 ;------------------------------------------------------------
                           2882 ;Allocation info for local variables in function 'radio_set_network_id'
                           2883 ;------------------------------------------------------------
                           2884 ;id                        Allocated with name '_radio_set_network_id_id_1_236'
                           2885 ;------------------------------------------------------------
                           2886 ;	radio/radio.c:925: radio_set_network_id(uint16_t id)
                           2887 ;	-----------------------------------------
                           2888 ;	 function radio_set_network_id
                           2889 ;	-----------------------------------------
   38B8                    2890 _radio_set_network_id:
   38B8 AF 83         [24] 2891 	mov	r7,dph
   38BA E5 82         [12] 2892 	mov	a,dpl
   38BC 90 04 6E      [24] 2893 	mov	dptr,#_radio_set_network_id_id_1_236
   38BF F0            [24] 2894 	movx	@dptr,a
   38C0 EF            [12] 2895 	mov	a,r7
   38C1 A3            [24] 2896 	inc	dptr
   38C2 F0            [24] 2897 	movx	@dptr,a
                           2898 ;	radio/radio.c:927: netid[0] = id&0xFF;
   38C3 90 04 6E      [24] 2899 	mov	dptr,#_radio_set_network_id_id_1_236
   38C6 E0            [24] 2900 	movx	a,@dptr
   38C7 FE            [12] 2901 	mov	r6,a
   38C8 A3            [24] 2902 	inc	dptr
   38C9 E0            [24] 2903 	movx	a,@dptr
   38CA FF            [12] 2904 	mov	r7,a
   38CB 8E 04         [24] 2905 	mov	ar4,r6
   38CD 78 7C         [12] 2906 	mov	r0,#_netid
   38CF EC            [12] 2907 	mov	a,r4
   38D0 F2            [24] 2908 	movx	@r0,a
                           2909 ;	radio/radio.c:928: netid[1] = id>>8;
   38D1 8F 05         [24] 2910 	mov	ar5,r7
   38D3 78 7D         [12] 2911 	mov	r0,#(_netid + 0x0001)
   38D5 ED            [12] 2912 	mov	a,r5
   38D6 F2            [24] 2913 	movx	@r0,a
                           2914 ;	radio/radio.c:929: if (!feature_golay) {
   38D7 20 04 34      [24] 2915 	jb	_feature_golay,00103$
                           2916 ;	radio/radio.c:932: register_write(EZRADIOPRO_TRANSMIT_HEADER_3, id >> 8);
   38DA C0 07         [24] 2917 	push	ar7
   38DC C0 06         [24] 2918 	push	ar6
   38DE C0 05         [24] 2919 	push	ar5
   38E0 C0 05         [24] 2920 	push	ar5
   38E2 75 82 3A      [24] 2921 	mov	dpl,#0x3A
   38E5 12 39 0F      [24] 2922 	lcall	_register_write
   38E8 15 81         [12] 2923 	dec	sp
   38EA D0 05         [24] 2924 	pop	ar5
   38EC D0 06         [24] 2925 	pop	ar6
   38EE D0 07         [24] 2926 	pop	ar7
                           2927 ;	radio/radio.c:933: register_write(EZRADIOPRO_TRANSMIT_HEADER_2, id & 0xFF);
   38F0 C0 06         [24] 2928 	push	ar6
   38F2 C0 05         [24] 2929 	push	ar5
   38F4 C0 06         [24] 2930 	push	ar6
   38F6 75 82 3B      [24] 2931 	mov	dpl,#0x3B
   38F9 12 39 0F      [24] 2932 	lcall	_register_write
   38FC 15 81         [12] 2933 	dec	sp
                           2934 ;	radio/radio.c:934: register_write(EZRADIOPRO_CHECK_HEADER_3, id >> 8);
   38FE 75 82 3F      [24] 2935 	mov	dpl,#0x3F
   3901 12 39 0F      [24] 2936 	lcall	_register_write
   3904 15 81         [12] 2937 	dec	sp
                           2938 ;	radio/radio.c:935: register_write(EZRADIOPRO_CHECK_HEADER_2, id & 0xFF);
   3906 75 82 40      [24] 2939 	mov	dpl,#0x40
   3909 12 39 0F      [24] 2940 	lcall	_register_write
   390C 15 81         [12] 2941 	dec	sp
   390E                    2942 00103$:
   390E 22            [24] 2943 	ret
                           2944 ;------------------------------------------------------------
                           2945 ;Allocation info for local variables in function 'register_write'
                           2946 ;------------------------------------------------------------
                           2947 ;value                     Allocated to stack - sp -2
                           2948 ;reg                       Allocated to registers r7 
                           2949 ;EX0_saved                 Allocated to registers b0 
                           2950 ;------------------------------------------------------------
                           2951 ;	radio/radio.c:946: register_write(uint8_t reg, uint8_t value) __reentrant
                           2952 ;	-----------------------------------------
                           2953 ;	 function register_write
                           2954 ;	-----------------------------------------
   390F                    2955 _register_write:
   390F AF 82         [24] 2956 	mov	r7,dpl
                           2957 ;	radio/radio.c:948: EX0_SAVE_DISABLE;
   3911 A2 A8         [12] 2958 	mov	c,_EX0
   3913 92 38         [24] 2959 	mov	b0,c
   3915 C2 A8         [12] 2960 	clr	_EX0
                           2961 ;	radio/radio.c:950: NSS1 = 0;                           // drive NSS low
   3917 C2 94         [12] 2962 	clr	_NSS1
                           2963 ;	radio/radio.c:951: SPIF1 = 0;                          // clear SPIF
   3919 C2 B7         [12] 2964 	clr	_SPIF1
                           2965 ;	radio/radio.c:952: SPI1DAT = (reg | 0x80);             // write reg address
   391B 74 80         [12] 2966 	mov	a,#0x80
   391D 4F            [12] 2967 	orl	a,r7
   391E F5 86         [12] 2968 	mov	_SPI1DAT,a
                           2969 ;	radio/radio.c:953: while (!TXBMT1);                    // wait on TXBMT
   3920                    2970 00101$:
   3920 30 B1 FD      [24] 2971 	jnb	_TXBMT1,00101$
                           2972 ;	radio/radio.c:954: SPI1DAT = value;                    // write value
   3923 A8 81         [24] 2973 	mov	r0,sp
   3925 18            [12] 2974 	dec	r0
   3926 18            [12] 2975 	dec	r0
   3927 86 86         [24] 2976 	mov	_SPI1DAT,@r0
                           2977 ;	radio/radio.c:955: while (!TXBMT1);                    // wait on TXBMT
   3929                    2978 00104$:
   3929 30 B1 FD      [24] 2979 	jnb	_TXBMT1,00104$
                           2980 ;	radio/radio.c:956: while ((SPI1CFG & 0x80) == 0x80);   // wait on SPIBSY
   392C                    2981 00107$:
   392C 74 80         [12] 2982 	mov	a,#0x80
   392E 55 84         [12] 2983 	anl	a,_SPI1CFG
   3930 FF            [12] 2984 	mov	r7,a
   3931 BF 80 02      [24] 2985 	cjne	r7,#0x80,00129$
   3934 80 F6         [24] 2986 	sjmp	00107$
   3936                    2987 00129$:
                           2988 ;	radio/radio.c:958: SPIF1 = 0;                          // leave SPIF cleared
   3936 C2 B7         [12] 2989 	clr	_SPIF1
                           2990 ;	radio/radio.c:959: NSS1 = 1;                           // drive NSS high
   3938 D2 94         [12] 2991 	setb	_NSS1
                           2992 ;	radio/radio.c:961: EX0_RESTORE;
   393A A2 38         [12] 2993 	mov	c,b0
   393C 92 A8         [24] 2994 	mov	_EX0,c
   393E 22            [24] 2995 	ret
                           2996 ;------------------------------------------------------------
                           2997 ;Allocation info for local variables in function 'register_read'
                           2998 ;------------------------------------------------------------
                           2999 ;reg                       Allocated to registers r7 
                           3000 ;value                     Allocated to registers r7 
                           3001 ;EX0_saved                 Allocated to registers b0 
                           3002 ;------------------------------------------------------------
                           3003 ;	radio/radio.c:971: register_read(uint8_t reg) __reentrant
                           3004 ;	-----------------------------------------
                           3005 ;	 function register_read
                           3006 ;	-----------------------------------------
   393F                    3007 _register_read:
   393F AF 82         [24] 3008 	mov	r7,dpl
                           3009 ;	radio/radio.c:974: EX0_SAVE_DISABLE;
   3941 A2 A8         [12] 3010 	mov	c,_EX0
   3943 92 38         [24] 3011 	mov	b0,c
   3945 C2 A8         [12] 3012 	clr	_EX0
                           3013 ;	radio/radio.c:976: NSS1 = 0;				// dsrive NSS low
   3947 C2 94         [12] 3014 	clr	_NSS1
                           3015 ;	radio/radio.c:977: SPIF1 = 0;				// clear SPIF
   3949 C2 B7         [12] 3016 	clr	_SPIF1
                           3017 ;	radio/radio.c:978: SPI1DAT = (reg);			// write reg address
   394B 8F 86         [24] 3018 	mov	_SPI1DAT,r7
                           3019 ;	radio/radio.c:979: while (!TXBMT1);			// wait on TXBMT
   394D                    3020 00101$:
   394D 30 B1 FD      [24] 3021 	jnb	_TXBMT1,00101$
                           3022 ;	radio/radio.c:980: SPI1DAT = 0x00;				// write anything
   3950 75 86 00      [24] 3023 	mov	_SPI1DAT,#0x00
                           3024 ;	radio/radio.c:981: while (!TXBMT1);			// wait on TXBMT
   3953                    3025 00104$:
   3953 30 B1 FD      [24] 3026 	jnb	_TXBMT1,00104$
                           3027 ;	radio/radio.c:982: while ((SPI1CFG & 0x80) == 0x80);	// wait on SPIBSY
   3956                    3028 00107$:
   3956 74 80         [12] 3029 	mov	a,#0x80
   3958 55 84         [12] 3030 	anl	a,_SPI1CFG
   395A FF            [12] 3031 	mov	r7,a
   395B BF 80 02      [24] 3032 	cjne	r7,#0x80,00129$
   395E 80 F6         [24] 3033 	sjmp	00107$
   3960                    3034 00129$:
                           3035 ;	radio/radio.c:983: value = SPI1DAT;			// read value
   3960 AF 86         [24] 3036 	mov	r7,_SPI1DAT
                           3037 ;	radio/radio.c:984: SPIF1 = 0;				// leave SPIF cleared
   3962 C2 B7         [12] 3038 	clr	_SPIF1
                           3039 ;	radio/radio.c:985: NSS1 = 1;				// drive NSS high
   3964 D2 94         [12] 3040 	setb	_NSS1
                           3041 ;	radio/radio.c:987: EX0_RESTORE;
   3966 A2 38         [12] 3042 	mov	c,b0
   3968 92 A8         [24] 3043 	mov	_EX0,c
                           3044 ;	radio/radio.c:989: return value;
   396A 8F 82         [24] 3045 	mov	dpl,r7
   396C 22            [24] 3046 	ret
                           3047 ;------------------------------------------------------------
                           3048 ;Allocation info for local variables in function 'read_receive_fifo'
                           3049 ;------------------------------------------------------------
                           3050 ;buf                       Allocated to stack - sp -3
                           3051 ;n                         Allocated to registers r7 
                           3052 ;------------------------------------------------------------
                           3053 ;	radio/radio.c:996: read_receive_fifo(register uint8_t n, __xdata uint8_t * buf) __reentrant
                           3054 ;	-----------------------------------------
                           3055 ;	 function read_receive_fifo
                           3056 ;	-----------------------------------------
   396D                    3057 _read_receive_fifo:
   396D AF 82         [24] 3058 	mov	r7,dpl
                           3059 ;	radio/radio.c:998: NSS1 = 0;				// drive NSS low
   396F C2 94         [12] 3060 	clr	_NSS1
                           3061 ;	radio/radio.c:999: SPIF1 = 0;				// clear SPIF
   3971 C2 B7         [12] 3062 	clr	_SPIF1
                           3063 ;	radio/radio.c:1000: SPI1DAT = EZRADIOPRO_FIFO_ACCESS;
   3973 75 86 7F      [24] 3064 	mov	_SPI1DAT,#0x7F
                           3065 ;	radio/radio.c:1001: while (!SPIF1);				// wait on SPIF
   3976                    3066 00101$:
   3976 30 B7 FD      [24] 3067 	jnb	_SPIF1,00101$
                           3068 ;	radio/radio.c:1002: ACC = SPI1DAT;				// discard first byte
   3979 85 86 E0      [24] 3069 	mov	_ACC,_SPI1DAT
                           3070 ;	radio/radio.c:1004: while (n--) {
   397C E5 81         [12] 3071 	mov	a,sp
   397E 24 FD         [12] 3072 	add	a,#0xfd
   3980 F8            [12] 3073 	mov	r0,a
   3981 86 05         [24] 3074 	mov	ar5,@r0
   3983 08            [12] 3075 	inc	r0
   3984 86 06         [24] 3076 	mov	ar6,@r0
   3986                    3077 00107$:
   3986 8F 04         [24] 3078 	mov	ar4,r7
   3988 1F            [12] 3079 	dec	r7
   3989 EC            [12] 3080 	mov	a,r4
   398A 60 16         [24] 3081 	jz	00109$
                           3082 ;	radio/radio.c:1005: SPIF1 = 0;			// clear SPIF
   398C C2 B7         [12] 3083 	clr	_SPIF1
                           3084 ;	radio/radio.c:1006: SPI1DAT = 0x00;			// write anything
   398E 75 86 00      [24] 3085 	mov	_SPI1DAT,#0x00
                           3086 ;	radio/radio.c:1007: while (!SPIF1);			// wait on SPIF
   3991                    3087 00104$:
   3991 30 B7 FD      [24] 3088 	jnb	_SPIF1,00104$
                           3089 ;	radio/radio.c:1008: *buf++ = SPI1DAT;		// copy to buffer
   3994 8D 82         [24] 3090 	mov	dpl,r5
   3996 8E 83         [24] 3091 	mov	dph,r6
   3998 E5 86         [12] 3092 	mov	a,_SPI1DAT
   399A F0            [24] 3093 	movx	@dptr,a
   399B A3            [24] 3094 	inc	dptr
   399C AD 82         [24] 3095 	mov	r5,dpl
   399E AE 83         [24] 3096 	mov	r6,dph
   39A0 80 E4         [24] 3097 	sjmp	00107$
   39A2                    3098 00109$:
                           3099 ;	radio/radio.c:1011: SPIF1 = 0;				// leave SPIF cleared
   39A2 C2 B7         [12] 3100 	clr	_SPIF1
                           3101 ;	radio/radio.c:1012: NSS1 = 1;				// drive NSS high
   39A4 D2 94         [12] 3102 	setb	_NSS1
   39A6 22            [24] 3103 	ret
                           3104 ;------------------------------------------------------------
                           3105 ;Allocation info for local variables in function 'clear_status_registers'
                           3106 ;------------------------------------------------------------
                           3107 ;	radio/radio.c:1018: clear_status_registers(void)
                           3108 ;	-----------------------------------------
                           3109 ;	 function clear_status_registers
                           3110 ;	-----------------------------------------
   39A7                    3111 _clear_status_registers:
                           3112 ;	radio/radio.c:1020: register_read(EZRADIOPRO_INTERRUPT_STATUS_1);
   39A7 75 82 03      [24] 3113 	mov	dpl,#0x03
   39AA 12 39 3F      [24] 3114 	lcall	_register_read
                           3115 ;	radio/radio.c:1021: register_read(EZRADIOPRO_INTERRUPT_STATUS_2);
   39AD 75 82 04      [24] 3116 	mov	dpl,#0x04
   39B0 02 39 3F      [24] 3117 	ljmp	_register_read
                           3118 ;------------------------------------------------------------
                           3119 ;Allocation info for local variables in function 'scale_uint32'
                           3120 ;------------------------------------------------------------
                           3121 ;	radio/radio.c:1031: scale_uint32(__pdata uint32_t value, __pdata uint32_t scale)
                           3122 ;	-----------------------------------------
                           3123 ;	 function scale_uint32
                           3124 ;	-----------------------------------------
   39B3                    3125 _scale_uint32:
   39B3 AF 82         [24] 3126 	mov	r7,dpl
   39B5 AE 83         [24] 3127 	mov	r6,dph
   39B7 AD F0         [24] 3128 	mov	r5,b
   39B9 FC            [12] 3129 	mov	r4,a
   39BA 78 9E         [12] 3130 	mov	r0,#_scale_uint32_value_1_248
   39BC EF            [12] 3131 	mov	a,r7
   39BD F2            [24] 3132 	movx	@r0,a
   39BE 08            [12] 3133 	inc	r0
   39BF EE            [12] 3134 	mov	a,r6
   39C0 F2            [24] 3135 	movx	@r0,a
   39C1 08            [12] 3136 	inc	r0
   39C2 ED            [12] 3137 	mov	a,r5
   39C3 F2            [24] 3138 	movx	@r0,a
   39C4 08            [12] 3139 	inc	r0
   39C5 EC            [12] 3140 	mov	a,r4
   39C6 F2            [24] 3141 	movx	@r0,a
                           3142 ;	radio/radio.c:1033: return (value + (scale >> 1)) / scale;
   39C7 78 9D         [12] 3143 	mov	r0,#(_scale_uint32_PARM_2 + 3)
   39C9 E2            [24] 3144 	movx	a,@r0
   39CA C3            [12] 3145 	clr	c
   39CB 13            [12] 3146 	rrc	a
   39CC FF            [12] 3147 	mov	r7,a
   39CD 18            [12] 3148 	dec	r0
   39CE E2            [24] 3149 	movx	a,@r0
   39CF 13            [12] 3150 	rrc	a
   39D0 FE            [12] 3151 	mov	r6,a
   39D1 18            [12] 3152 	dec	r0
   39D2 E2            [24] 3153 	movx	a,@r0
   39D3 13            [12] 3154 	rrc	a
   39D4 FB            [12] 3155 	mov	r3,a
   39D5 18            [12] 3156 	dec	r0
   39D6 E2            [24] 3157 	movx	a,@r0
   39D7 13            [12] 3158 	rrc	a
   39D8 FA            [12] 3159 	mov	r2,a
   39D9 78 9E         [12] 3160 	mov	r0,#_scale_uint32_value_1_248
   39DB E2            [24] 3161 	movx	a,@r0
   39DC 2A            [12] 3162 	add	a,r2
   39DD FA            [12] 3163 	mov	r2,a
   39DE 08            [12] 3164 	inc	r0
   39DF E2            [24] 3165 	movx	a,@r0
   39E0 3B            [12] 3166 	addc	a,r3
   39E1 FB            [12] 3167 	mov	r3,a
   39E2 08            [12] 3168 	inc	r0
   39E3 E2            [24] 3169 	movx	a,@r0
   39E4 3E            [12] 3170 	addc	a,r6
   39E5 FE            [12] 3171 	mov	r6,a
   39E6 08            [12] 3172 	inc	r0
   39E7 E2            [24] 3173 	movx	a,@r0
   39E8 3F            [12] 3174 	addc	a,r7
   39E9 FF            [12] 3175 	mov	r7,a
   39EA 78 9A         [12] 3176 	mov	r0,#_scale_uint32_PARM_2
   39EC 90 05 B2      [24] 3177 	mov	dptr,#__divulong_PARM_2
   39EF E2            [24] 3178 	movx	a,@r0
   39F0 F0            [24] 3179 	movx	@dptr,a
   39F1 08            [12] 3180 	inc	r0
   39F2 E2            [24] 3181 	movx	a,@r0
   39F3 A3            [24] 3182 	inc	dptr
   39F4 F0            [24] 3183 	movx	@dptr,a
   39F5 08            [12] 3184 	inc	r0
   39F6 E2            [24] 3185 	movx	a,@r0
   39F7 A3            [24] 3186 	inc	dptr
   39F8 F0            [24] 3187 	movx	@dptr,a
   39F9 08            [12] 3188 	inc	r0
   39FA E2            [24] 3189 	movx	a,@r0
   39FB A3            [24] 3190 	inc	dptr
   39FC F0            [24] 3191 	movx	@dptr,a
   39FD 8A 82         [24] 3192 	mov	dpl,r2
   39FF 8B 83         [24] 3193 	mov	dph,r3
   3A01 8E F0         [24] 3194 	mov	b,r6
   3A03 EF            [12] 3195 	mov	a,r7
   3A04 02 5B 86      [24] 3196 	ljmp	__divulong
                           3197 ;------------------------------------------------------------
                           3198 ;Allocation info for local variables in function 'software_reset'
                           3199 ;------------------------------------------------------------
                           3200 ;status                    Allocated with name '_software_reset_status_1_251'
                           3201 ;------------------------------------------------------------
                           3202 ;	radio/radio.c:1041: software_reset(void)
                           3203 ;	-----------------------------------------
                           3204 ;	 function software_reset
                           3205 ;	-----------------------------------------
   3A07                    3206 _software_reset:
                           3207 ;	radio/radio.c:1046: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0);
   3A07 E4            [12] 3208 	clr	a
   3A08 C0 E0         [24] 3209 	push	acc
   3A0A 75 82 05      [24] 3210 	mov	dpl,#0x05
   3A0D 12 39 0F      [24] 3211 	lcall	_register_write
   3A10 15 81         [12] 3212 	dec	sp
                           3213 ;	radio/radio.c:1047: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, 0);
   3A12 E4            [12] 3214 	clr	a
   3A13 C0 E0         [24] 3215 	push	acc
   3A15 75 82 06      [24] 3216 	mov	dpl,#0x06
   3A18 12 39 0F      [24] 3217 	lcall	_register_write
   3A1B 15 81         [12] 3218 	dec	sp
                           3219 ;	radio/radio.c:1049: clear_status_registers();
   3A1D 12 39 A7      [24] 3220 	lcall	_clear_status_registers
                           3221 ;	radio/radio.c:1052: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_1, (EZRADIOPRO_SWRES | EZRADIOPRO_XTON));
   3A20 74 81         [12] 3222 	mov	a,#0x81
   3A22 C0 E0         [24] 3223 	push	acc
   3A24 75 82 07      [24] 3224 	mov	dpl,#0x07
   3A27 12 39 0F      [24] 3225 	lcall	_register_write
   3A2A 15 81         [12] 3226 	dec	sp
                           3227 ;	radio/radio.c:1055: delay_set(2);
   3A2C 90 00 02      [24] 3228 	mov	dptr,#0x0002
   3A2F 12 55 A6      [24] 3229 	lcall	_delay_set
                           3230 ;	radio/radio.c:1056: while (IRQ) {
   3A32                    3231 00103$:
   3A32 30 87 07      [24] 3232 	jnb	_IRQ,00105$
                           3233 ;	radio/radio.c:1057: if (delay_expired()) {
   3A35 12 55 D7      [24] 3234 	lcall	_delay_expired
   3A38 50 F8         [24] 3235 	jnc	00103$
                           3236 ;	radio/radio.c:1058: return false;
   3A3A C3            [12] 3237 	clr	c
   3A3B 22            [24] 3238 	ret
   3A3C                    3239 00105$:
                           3240 ;	radio/radio.c:1063: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0);
   3A3C E4            [12] 3241 	clr	a
   3A3D C0 E0         [24] 3242 	push	acc
   3A3F 75 82 05      [24] 3243 	mov	dpl,#0x05
   3A42 12 39 0F      [24] 3244 	lcall	_register_write
   3A45 15 81         [12] 3245 	dec	sp
                           3246 ;	radio/radio.c:1064: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, EZRADIOPRO_ENCHIPRDY);
   3A47 74 02         [12] 3247 	mov	a,#0x02
   3A49 C0 E0         [24] 3248 	push	acc
   3A4B 75 82 06      [24] 3249 	mov	dpl,#0x06
   3A4E 12 39 0F      [24] 3250 	lcall	_register_write
   3A51 15 81         [12] 3251 	dec	sp
                           3252 ;	radio/radio.c:1066: delay_set(20);
   3A53 90 00 14      [24] 3253 	mov	dptr,#0x0014
   3A56 12 55 A6      [24] 3254 	lcall	_delay_set
                           3255 ;	radio/radio.c:1067: while (!delay_expired()) {
   3A59                    3256 00108$:
   3A59 12 55 D7      [24] 3257 	lcall	_delay_expired
   3A5C 40 13         [24] 3258 	jc	00110$
                           3259 ;	radio/radio.c:1068: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_1);
   3A5E 75 82 03      [24] 3260 	mov	dpl,#0x03
   3A61 12 39 3F      [24] 3261 	lcall	_register_read
                           3262 ;	radio/radio.c:1069: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_2);
   3A64 75 82 04      [24] 3263 	mov	dpl,#0x04
   3A67 12 39 3F      [24] 3264 	lcall	_register_read
   3A6A E5 82         [12] 3265 	mov	a,dpl
                           3266 ;	radio/radio.c:1070: if (status & EZRADIOPRO_ICHIPRDY) {
   3A6C 30 E1 EA      [24] 3267 	jnb	acc.1,00108$
                           3268 ;	radio/radio.c:1071: return true;
   3A6F D3            [12] 3269 	setb	c
   3A70 22            [24] 3270 	ret
   3A71                    3271 00110$:
                           3272 ;	radio/radio.c:1074: return false;
   3A71 C3            [12] 3273 	clr	c
   3A72 22            [24] 3274 	ret
                           3275 ;------------------------------------------------------------
                           3276 ;Allocation info for local variables in function 'set_frequency_registers'
                           3277 ;------------------------------------------------------------
                           3278 ;band                      Allocated with name '_set_frequency_registers_band_1_257'
                           3279 ;------------------------------------------------------------
                           3280 ;	radio/radio.c:1081: set_frequency_registers(__pdata uint32_t frequency)
                           3281 ;	-----------------------------------------
                           3282 ;	 function set_frequency_registers
                           3283 ;	-----------------------------------------
   3A73                    3284 _set_frequency_registers:
   3A73 AF 82         [24] 3285 	mov	r7,dpl
   3A75 AE 83         [24] 3286 	mov	r6,dph
   3A77 AD F0         [24] 3287 	mov	r5,b
   3A79 FC            [12] 3288 	mov	r4,a
   3A7A 78 A2         [12] 3289 	mov	r0,#_set_frequency_registers_frequency_1_256
   3A7C EF            [12] 3290 	mov	a,r7
   3A7D F2            [24] 3291 	movx	@r0,a
   3A7E 08            [12] 3292 	inc	r0
   3A7F EE            [12] 3293 	mov	a,r6
   3A80 F2            [24] 3294 	movx	@r0,a
   3A81 08            [12] 3295 	inc	r0
   3A82 ED            [12] 3296 	mov	a,r5
   3A83 F2            [24] 3297 	movx	@r0,a
   3A84 08            [12] 3298 	inc	r0
   3A85 EC            [12] 3299 	mov	a,r4
   3A86 F2            [24] 3300 	movx	@r0,a
                           3301 ;	radio/radio.c:1086: if (frequency > 480000000UL) {
   3A87 78 A2         [12] 3302 	mov	r0,#_set_frequency_registers_frequency_1_256
   3A89 C3            [12] 3303 	clr	c
   3A8A E2            [24] 3304 	movx	a,@r0
   3A8B F5 F0         [12] 3305 	mov	b,a
   3A8D E4            [12] 3306 	clr	a
   3A8E 95 F0         [12] 3307 	subb	a,b
   3A90 08            [12] 3308 	inc	r0
   3A91 E2            [24] 3309 	movx	a,@r0
   3A92 F5 F0         [12] 3310 	mov	b,a
   3A94 74 38         [12] 3311 	mov	a,#0x38
   3A96 95 F0         [12] 3312 	subb	a,b
   3A98 08            [12] 3313 	inc	r0
   3A99 E2            [24] 3314 	movx	a,@r0
   3A9A F5 F0         [12] 3315 	mov	b,a
   3A9C 74 9C         [12] 3316 	mov	a,#0x9C
   3A9E 95 F0         [12] 3317 	subb	a,b
   3AA0 08            [12] 3318 	inc	r0
   3AA1 E2            [24] 3319 	movx	a,@r0
   3AA2 F5 F0         [12] 3320 	mov	b,a
   3AA4 74 1C         [12] 3321 	mov	a,#0x1C
   3AA6 95 F0         [12] 3322 	subb	a,b
   3AA8 40 03         [24] 3323 	jc	00109$
   3AAA 02 3B 69      [24] 3324 	ljmp	00102$
   3AAD                    3325 00109$:
                           3326 ;	radio/radio.c:1087: frequency -= 480000000UL;
   3AAD 78 A3         [12] 3327 	mov	r0,#(_set_frequency_registers_frequency_1_256 + 1)
   3AAF E2            [24] 3328 	movx	a,@r0
   3AB0 24 C8         [12] 3329 	add	a,#0xC8
   3AB2 F2            [24] 3330 	movx	@r0,a
   3AB3 08            [12] 3331 	inc	r0
   3AB4 E2            [24] 3332 	movx	a,@r0
   3AB5 34 63         [12] 3333 	addc	a,#0x63
   3AB7 F2            [24] 3334 	movx	@r0,a
   3AB8 08            [12] 3335 	inc	r0
   3AB9 E2            [24] 3336 	movx	a,@r0
   3ABA 34 E3         [12] 3337 	addc	a,#0xE3
   3ABC F2            [24] 3338 	movx	@r0,a
                           3339 ;	radio/radio.c:1088: band  = frequency / 20000000UL;
   3ABD 90 05 B2      [24] 3340 	mov	dptr,#__divulong_PARM_2
   3AC0 E4            [12] 3341 	clr	a
   3AC1 F0            [24] 3342 	movx	@dptr,a
   3AC2 74 2D         [12] 3343 	mov	a,#0x2D
   3AC4 A3            [24] 3344 	inc	dptr
   3AC5 F0            [24] 3345 	movx	@dptr,a
   3AC6 74 31         [12] 3346 	mov	a,#0x31
   3AC8 A3            [24] 3347 	inc	dptr
   3AC9 F0            [24] 3348 	movx	@dptr,a
   3ACA 74 01         [12] 3349 	mov	a,#0x01
   3ACC A3            [24] 3350 	inc	dptr
   3ACD F0            [24] 3351 	movx	@dptr,a
   3ACE 78 A2         [12] 3352 	mov	r0,#_set_frequency_registers_frequency_1_256
   3AD0 E2            [24] 3353 	movx	a,@r0
   3AD1 F5 82         [12] 3354 	mov	dpl,a
   3AD3 08            [12] 3355 	inc	r0
   3AD4 E2            [24] 3356 	movx	a,@r0
   3AD5 F5 83         [12] 3357 	mov	dph,a
   3AD7 08            [12] 3358 	inc	r0
   3AD8 E2            [24] 3359 	movx	a,@r0
   3AD9 F5 F0         [12] 3360 	mov	b,a
   3ADB 08            [12] 3361 	inc	r0
   3ADC E2            [24] 3362 	movx	a,@r0
   3ADD 12 5B 86      [24] 3363 	lcall	__divulong
   3AE0 AA 82         [24] 3364 	mov	r2,dpl
   3AE2 90 04 70      [24] 3365 	mov	dptr,#_set_frequency_registers_band_1_257
   3AE5 EA            [12] 3366 	mov	a,r2
   3AE6 F0            [24] 3367 	movx	@dptr,a
                           3368 ;	radio/radio.c:1089: frequency -= (uint32_t)band * 20000000UL;
   3AE7 90 05 D7      [24] 3369 	mov	dptr,#__mullong_PARM_2
   3AEA EA            [12] 3370 	mov	a,r2
   3AEB F0            [24] 3371 	movx	@dptr,a
   3AEC E4            [12] 3372 	clr	a
   3AED A3            [24] 3373 	inc	dptr
   3AEE F0            [24] 3374 	movx	@dptr,a
   3AEF E4            [12] 3375 	clr	a
   3AF0 A3            [24] 3376 	inc	dptr
   3AF1 F0            [24] 3377 	movx	@dptr,a
   3AF2 E4            [12] 3378 	clr	a
   3AF3 A3            [24] 3379 	inc	dptr
   3AF4 F0            [24] 3380 	movx	@dptr,a
   3AF5 90 2D 00      [24] 3381 	mov	dptr,#0x2D00
   3AF8 75 F0 31      [24] 3382 	mov	b,#0x31
   3AFB 74 01         [12] 3383 	mov	a,#0x01
   3AFD 12 5E E4      [24] 3384 	lcall	__mullong
   3B00 AC 82         [24] 3385 	mov	r4,dpl
   3B02 AD 83         [24] 3386 	mov	r5,dph
   3B04 AE F0         [24] 3387 	mov	r6,b
   3B06 FF            [12] 3388 	mov	r7,a
   3B07 78 A2         [12] 3389 	mov	r0,#_set_frequency_registers_frequency_1_256
   3B09 E2            [24] 3390 	movx	a,@r0
   3B0A C3            [12] 3391 	clr	c
   3B0B 9C            [12] 3392 	subb	a,r4
   3B0C F2            [24] 3393 	movx	@r0,a
   3B0D 08            [12] 3394 	inc	r0
   3B0E E2            [24] 3395 	movx	a,@r0
   3B0F 9D            [12] 3396 	subb	a,r5
   3B10 F2            [24] 3397 	movx	@r0,a
   3B11 08            [12] 3398 	inc	r0
   3B12 E2            [24] 3399 	movx	a,@r0
   3B13 9E            [12] 3400 	subb	a,r6
   3B14 F2            [24] 3401 	movx	@r0,a
   3B15 08            [12] 3402 	inc	r0
   3B16 E2            [24] 3403 	movx	a,@r0
   3B17 9F            [12] 3404 	subb	a,r7
   3B18 F2            [24] 3405 	movx	@r0,a
                           3406 ;	radio/radio.c:1090: frequency  = scale_uint32(frequency, 625);
   3B19 78 9A         [12] 3407 	mov	r0,#_scale_uint32_PARM_2
   3B1B 74 71         [12] 3408 	mov	a,#0x71
   3B1D F2            [24] 3409 	movx	@r0,a
   3B1E 08            [12] 3410 	inc	r0
   3B1F 74 02         [12] 3411 	mov	a,#0x02
   3B21 F2            [24] 3412 	movx	@r0,a
   3B22 08            [12] 3413 	inc	r0
   3B23 E4            [12] 3414 	clr	a
   3B24 F2            [24] 3415 	movx	@r0,a
   3B25 08            [12] 3416 	inc	r0
   3B26 F2            [24] 3417 	movx	@r0,a
   3B27 78 A2         [12] 3418 	mov	r0,#_set_frequency_registers_frequency_1_256
   3B29 E2            [24] 3419 	movx	a,@r0
   3B2A F5 82         [12] 3420 	mov	dpl,a
   3B2C 08            [12] 3421 	inc	r0
   3B2D E2            [24] 3422 	movx	a,@r0
   3B2E F5 83         [12] 3423 	mov	dph,a
   3B30 08            [12] 3424 	inc	r0
   3B31 E2            [24] 3425 	movx	a,@r0
   3B32 F5 F0         [12] 3426 	mov	b,a
   3B34 08            [12] 3427 	inc	r0
   3B35 E2            [24] 3428 	movx	a,@r0
   3B36 12 39 B3      [24] 3429 	lcall	_scale_uint32
   3B39 78 A2         [12] 3430 	mov	r0,#_set_frequency_registers_frequency_1_256
   3B3B C0 E0         [24] 3431 	push	acc
   3B3D E5 82         [12] 3432 	mov	a,dpl
   3B3F F2            [24] 3433 	movx	@r0,a
   3B40 08            [12] 3434 	inc	r0
   3B41 E5 83         [12] 3435 	mov	a,dph
   3B43 F2            [24] 3436 	movx	@r0,a
   3B44 08            [12] 3437 	inc	r0
   3B45 E5 F0         [12] 3438 	mov	a,b
   3B47 F2            [24] 3439 	movx	@r0,a
   3B48 D0 E0         [24] 3440 	pop	acc
   3B4A 08            [12] 3441 	inc	r0
   3B4B F2            [24] 3442 	movx	@r0,a
                           3443 ;	radio/radio.c:1091: frequency <<= 1;
   3B4C 78 A2         [12] 3444 	mov	r0,#_set_frequency_registers_frequency_1_256
   3B4E E2            [24] 3445 	movx	a,@r0
   3B4F 25 E0         [12] 3446 	add	a,acc
   3B51 F2            [24] 3447 	movx	@r0,a
   3B52 08            [12] 3448 	inc	r0
   3B53 E2            [24] 3449 	movx	a,@r0
   3B54 33            [12] 3450 	rlc	a
   3B55 F2            [24] 3451 	movx	@r0,a
   3B56 08            [12] 3452 	inc	r0
   3B57 E2            [24] 3453 	movx	a,@r0
   3B58 33            [12] 3454 	rlc	a
   3B59 F2            [24] 3455 	movx	@r0,a
   3B5A 08            [12] 3456 	inc	r0
   3B5B E2            [24] 3457 	movx	a,@r0
   3B5C 33            [12] 3458 	rlc	a
   3B5D F2            [24] 3459 	movx	@r0,a
                           3460 ;	radio/radio.c:1092: band |= EZRADIOPRO_HBSEL;
   3B5E 90 04 70      [24] 3461 	mov	dptr,#_set_frequency_registers_band_1_257
   3B61 E0            [24] 3462 	movx	a,@dptr
   3B62 FF            [12] 3463 	mov	r7,a
   3B63 44 20         [12] 3464 	orl	a,#0x20
   3B65 F0            [24] 3465 	movx	@dptr,a
   3B66 02 3C 2C      [24] 3466 	ljmp	00103$
   3B69                    3467 00102$:
                           3468 ;	radio/radio.c:1094: frequency -= 240000000UL;
   3B69 78 A3         [12] 3469 	mov	r0,#(_set_frequency_registers_frequency_1_256 + 1)
   3B6B E2            [24] 3470 	movx	a,@r0
   3B6C 24 E4         [12] 3471 	add	a,#0xE4
   3B6E F2            [24] 3472 	movx	@r0,a
   3B6F 08            [12] 3473 	inc	r0
   3B70 E2            [24] 3474 	movx	a,@r0
   3B71 34 B1         [12] 3475 	addc	a,#0xB1
   3B73 F2            [24] 3476 	movx	@r0,a
   3B74 08            [12] 3477 	inc	r0
   3B75 E2            [24] 3478 	movx	a,@r0
   3B76 34 F1         [12] 3479 	addc	a,#0xF1
   3B78 F2            [24] 3480 	movx	@r0,a
                           3481 ;	radio/radio.c:1095: band  = frequency / 10000000UL;
   3B79 90 05 B2      [24] 3482 	mov	dptr,#__divulong_PARM_2
   3B7C 74 80         [12] 3483 	mov	a,#0x80
   3B7E F0            [24] 3484 	movx	@dptr,a
   3B7F 74 96         [12] 3485 	mov	a,#0x96
   3B81 A3            [24] 3486 	inc	dptr
   3B82 F0            [24] 3487 	movx	@dptr,a
   3B83 74 98         [12] 3488 	mov	a,#0x98
   3B85 A3            [24] 3489 	inc	dptr
   3B86 F0            [24] 3490 	movx	@dptr,a
   3B87 E4            [12] 3491 	clr	a
   3B88 A3            [24] 3492 	inc	dptr
   3B89 F0            [24] 3493 	movx	@dptr,a
   3B8A 78 A2         [12] 3494 	mov	r0,#_set_frequency_registers_frequency_1_256
   3B8C E2            [24] 3495 	movx	a,@r0
   3B8D F5 82         [12] 3496 	mov	dpl,a
   3B8F 08            [12] 3497 	inc	r0
   3B90 E2            [24] 3498 	movx	a,@r0
   3B91 F5 83         [12] 3499 	mov	dph,a
   3B93 08            [12] 3500 	inc	r0
   3B94 E2            [24] 3501 	movx	a,@r0
   3B95 F5 F0         [12] 3502 	mov	b,a
   3B97 08            [12] 3503 	inc	r0
   3B98 E2            [24] 3504 	movx	a,@r0
   3B99 12 5B 86      [24] 3505 	lcall	__divulong
   3B9C AC 82         [24] 3506 	mov	r4,dpl
   3B9E 90 04 70      [24] 3507 	mov	dptr,#_set_frequency_registers_band_1_257
   3BA1 EC            [12] 3508 	mov	a,r4
   3BA2 F0            [24] 3509 	movx	@dptr,a
                           3510 ;	radio/radio.c:1096: frequency -= (uint32_t)band * 10000000UL;
   3BA3 90 05 D7      [24] 3511 	mov	dptr,#__mullong_PARM_2
   3BA6 EC            [12] 3512 	mov	a,r4
   3BA7 F0            [24] 3513 	movx	@dptr,a
   3BA8 E4            [12] 3514 	clr	a
   3BA9 A3            [24] 3515 	inc	dptr
   3BAA F0            [24] 3516 	movx	@dptr,a
   3BAB E4            [12] 3517 	clr	a
   3BAC A3            [24] 3518 	inc	dptr
   3BAD F0            [24] 3519 	movx	@dptr,a
   3BAE E4            [12] 3520 	clr	a
   3BAF A3            [24] 3521 	inc	dptr
   3BB0 F0            [24] 3522 	movx	@dptr,a
   3BB1 90 96 80      [24] 3523 	mov	dptr,#0x9680
   3BB4 75 F0 98      [24] 3524 	mov	b,#0x98
   3BB7 E4            [12] 3525 	clr	a
   3BB8 12 5E E4      [24] 3526 	lcall	__mullong
   3BBB AC 82         [24] 3527 	mov	r4,dpl
   3BBD AD 83         [24] 3528 	mov	r5,dph
   3BBF AE F0         [24] 3529 	mov	r6,b
   3BC1 FF            [12] 3530 	mov	r7,a
   3BC2 78 A2         [12] 3531 	mov	r0,#_set_frequency_registers_frequency_1_256
   3BC4 E2            [24] 3532 	movx	a,@r0
   3BC5 C3            [12] 3533 	clr	c
   3BC6 9C            [12] 3534 	subb	a,r4
   3BC7 F2            [24] 3535 	movx	@r0,a
   3BC8 08            [12] 3536 	inc	r0
   3BC9 E2            [24] 3537 	movx	a,@r0
   3BCA 9D            [12] 3538 	subb	a,r5
   3BCB F2            [24] 3539 	movx	@r0,a
   3BCC 08            [12] 3540 	inc	r0
   3BCD E2            [24] 3541 	movx	a,@r0
   3BCE 9E            [12] 3542 	subb	a,r6
   3BCF F2            [24] 3543 	movx	@r0,a
   3BD0 08            [12] 3544 	inc	r0
   3BD1 E2            [24] 3545 	movx	a,@r0
   3BD2 9F            [12] 3546 	subb	a,r7
   3BD3 F2            [24] 3547 	movx	@r0,a
                           3548 ;	radio/radio.c:1097: frequency  = scale_uint32(frequency, 625);
   3BD4 78 9A         [12] 3549 	mov	r0,#_scale_uint32_PARM_2
   3BD6 74 71         [12] 3550 	mov	a,#0x71
   3BD8 F2            [24] 3551 	movx	@r0,a
   3BD9 08            [12] 3552 	inc	r0
   3BDA 74 02         [12] 3553 	mov	a,#0x02
   3BDC F2            [24] 3554 	movx	@r0,a
   3BDD 08            [12] 3555 	inc	r0
   3BDE E4            [12] 3556 	clr	a
   3BDF F2            [24] 3557 	movx	@r0,a
   3BE0 08            [12] 3558 	inc	r0
   3BE1 F2            [24] 3559 	movx	@r0,a
   3BE2 78 A2         [12] 3560 	mov	r0,#_set_frequency_registers_frequency_1_256
   3BE4 E2            [24] 3561 	movx	a,@r0
   3BE5 F5 82         [12] 3562 	mov	dpl,a
   3BE7 08            [12] 3563 	inc	r0
   3BE8 E2            [24] 3564 	movx	a,@r0
   3BE9 F5 83         [12] 3565 	mov	dph,a
   3BEB 08            [12] 3566 	inc	r0
   3BEC E2            [24] 3567 	movx	a,@r0
   3BED F5 F0         [12] 3568 	mov	b,a
   3BEF 08            [12] 3569 	inc	r0
   3BF0 E2            [24] 3570 	movx	a,@r0
   3BF1 12 39 B3      [24] 3571 	lcall	_scale_uint32
   3BF4 78 A2         [12] 3572 	mov	r0,#_set_frequency_registers_frequency_1_256
   3BF6 C0 E0         [24] 3573 	push	acc
   3BF8 E5 82         [12] 3574 	mov	a,dpl
   3BFA F2            [24] 3575 	movx	@r0,a
   3BFB 08            [12] 3576 	inc	r0
   3BFC E5 83         [12] 3577 	mov	a,dph
   3BFE F2            [24] 3578 	movx	@r0,a
   3BFF 08            [12] 3579 	inc	r0
   3C00 E5 F0         [12] 3580 	mov	a,b
   3C02 F2            [24] 3581 	movx	@r0,a
   3C03 D0 E0         [24] 3582 	pop	acc
   3C05 08            [12] 3583 	inc	r0
   3C06 F2            [24] 3584 	movx	@r0,a
                           3585 ;	radio/radio.c:1098: frequency <<= 2;
   3C07 78 A2         [12] 3586 	mov	r0,#_set_frequency_registers_frequency_1_256
   3C09 E2            [24] 3587 	movx	a,@r0
   3C0A 25 E0         [12] 3588 	add	a,acc
   3C0C F2            [24] 3589 	movx	@r0,a
   3C0D 08            [12] 3590 	inc	r0
   3C0E E2            [24] 3591 	movx	a,@r0
   3C0F 33            [12] 3592 	rlc	a
   3C10 F2            [24] 3593 	movx	@r0,a
   3C11 08            [12] 3594 	inc	r0
   3C12 E2            [24] 3595 	movx	a,@r0
   3C13 33            [12] 3596 	rlc	a
   3C14 F2            [24] 3597 	movx	@r0,a
   3C15 08            [12] 3598 	inc	r0
   3C16 E2            [24] 3599 	movx	a,@r0
   3C17 33            [12] 3600 	rlc	a
   3C18 F2            [24] 3601 	movx	@r0,a
   3C19 18            [12] 3602 	dec	r0
   3C1A 18            [12] 3603 	dec	r0
   3C1B 18            [12] 3604 	dec	r0
   3C1C E2            [24] 3605 	movx	a,@r0
   3C1D 25 E0         [12] 3606 	add	a,acc
   3C1F F2            [24] 3607 	movx	@r0,a
   3C20 08            [12] 3608 	inc	r0
   3C21 E2            [24] 3609 	movx	a,@r0
   3C22 33            [12] 3610 	rlc	a
   3C23 F2            [24] 3611 	movx	@r0,a
   3C24 08            [12] 3612 	inc	r0
   3C25 E2            [24] 3613 	movx	a,@r0
   3C26 33            [12] 3614 	rlc	a
   3C27 F2            [24] 3615 	movx	@r0,a
   3C28 08            [12] 3616 	inc	r0
   3C29 E2            [24] 3617 	movx	a,@r0
   3C2A 33            [12] 3618 	rlc	a
   3C2B F2            [24] 3619 	movx	@r0,a
   3C2C                    3620 00103$:
                           3621 ;	radio/radio.c:1101: band |= EZRADIOPRO_SBSEL;
   3C2C 90 04 70      [24] 3622 	mov	dptr,#_set_frequency_registers_band_1_257
   3C2F E0            [24] 3623 	movx	a,@dptr
   3C30 44 40         [12] 3624 	orl	a,#0x40
   3C32 F0            [24] 3625 	movx	@dptr,a
                           3626 ;	radio/radio.c:1102: carrier = (uint16_t)frequency;
   3C33 78 A2         [12] 3627 	mov	r0,#_set_frequency_registers_frequency_1_256
   3C35 E2            [24] 3628 	movx	a,@r0
   3C36 FC            [12] 3629 	mov	r4,a
   3C37 08            [12] 3630 	inc	r0
   3C38 E2            [24] 3631 	movx	a,@r0
   3C39 FD            [12] 3632 	mov	r5,a
                           3633 ;	radio/radio.c:1104: register_write(EZRADIOPRO_FREQUENCY_BAND_SELECT, band);
   3C3A C0 05         [24] 3634 	push	ar5
   3C3C C0 04         [24] 3635 	push	ar4
   3C3E 90 04 70      [24] 3636 	mov	dptr,#_set_frequency_registers_band_1_257
   3C41 E0            [24] 3637 	movx	a,@dptr
   3C42 C0 E0         [24] 3638 	push	acc
   3C44 75 82 75      [24] 3639 	mov	dpl,#0x75
   3C47 12 39 0F      [24] 3640 	lcall	_register_write
   3C4A 15 81         [12] 3641 	dec	sp
   3C4C D0 04         [24] 3642 	pop	ar4
   3C4E D0 05         [24] 3643 	pop	ar5
                           3644 ;	radio/radio.c:1105: register_write(EZRADIOPRO_NOMINAL_CARRIER_FREQUENCY_1, carrier >> 8);
   3C50 8D 07         [24] 3645 	mov	ar7,r5
   3C52 C0 05         [24] 3646 	push	ar5
   3C54 C0 04         [24] 3647 	push	ar4
   3C56 C0 07         [24] 3648 	push	ar7
   3C58 75 82 76      [24] 3649 	mov	dpl,#0x76
   3C5B 12 39 0F      [24] 3650 	lcall	_register_write
   3C5E 15 81         [12] 3651 	dec	sp
   3C60 D0 04         [24] 3652 	pop	ar4
   3C62 D0 05         [24] 3653 	pop	ar5
                           3654 ;	radio/radio.c:1106: register_write(EZRADIOPRO_NOMINAL_CARRIER_FREQUENCY_0, carrier & 0xFF);
   3C64 C0 04         [24] 3655 	push	ar4
   3C66 75 82 77      [24] 3656 	mov	dpl,#0x77
   3C69 12 39 0F      [24] 3657 	lcall	_register_write
   3C6C 15 81         [12] 3658 	dec	sp
   3C6E 22            [24] 3659 	ret
                           3660 ;------------------------------------------------------------
                           3661 ;Allocation info for local variables in function 'radio_temperature'
                           3662 ;------------------------------------------------------------
                           3663 ;temp_local                Allocated to registers r6 r7 
                           3664 ;------------------------------------------------------------
                           3665 ;	radio/radio.c:1115: radio_temperature(void)
                           3666 ;	-----------------------------------------
                           3667 ;	 function radio_temperature
                           3668 ;	-----------------------------------------
   3C6F                    3669 _radio_temperature:
                           3670 ;	radio/radio.c:1119: AD0BUSY = 1;		// Start ADC conversion
   3C6F D2 EC         [12] 3671 	setb	_AD0BUSY
                           3672 ;	radio/radio.c:1120: while (AD0BUSY) ;  	// Wait for completion of conversion
   3C71                    3673 00101$:
   3C71 20 EC FD      [24] 3674 	jb	_AD0BUSY,00101$
                           3675 ;	radio/radio.c:1122: temp_local = (ADC0H << 8) | ADC0L;
   3C74 AF BE         [24] 3676 	mov	r7,_ADC0H
   3C76 7E 00         [12] 3677 	mov	r6,#0x00
   3C78 AC BD         [24] 3678 	mov	r4,_ADC0L
   3C7A 7D 00         [12] 3679 	mov	r5,#0x00
   3C7C EC            [12] 3680 	mov	a,r4
   3C7D 42 06         [12] 3681 	orl	ar6,a
   3C7F ED            [12] 3682 	mov	a,r5
   3C80 42 07         [12] 3683 	orl	ar7,a
                           3684 ;	radio/radio.c:1123: temp_local *= 1.64060;  // convert reading into mV ( (val/1024) * 1680 )  vref=1680mV
   3C82 8E 82         [24] 3685 	mov	dpl,r6
   3C84 8F 83         [24] 3686 	mov	dph,r7
   3C86 12 61 FF      [24] 3687 	lcall	___sint2fs
   3C89 AA 82         [24] 3688 	mov	r2,dpl
   3C8B AB 83         [24] 3689 	mov	r3,dph
   3C8D AC F0         [24] 3690 	mov	r4,b
   3C8F FD            [12] 3691 	mov	r5,a
   3C90 C0 02         [24] 3692 	push	ar2
   3C92 C0 03         [24] 3693 	push	ar3
   3C94 C0 04         [24] 3694 	push	ar4
   3C96 C0 05         [24] 3695 	push	ar5
   3C98 90 FF 2E      [24] 3696 	mov	dptr,#0xFF2E
   3C9B 75 F0 D1      [24] 3697 	mov	b,#0xD1
   3C9E 74 3F         [12] 3698 	mov	a,#0x3F
   3CA0 12 5A 39      [24] 3699 	lcall	___fsmul
   3CA3 AA 82         [24] 3700 	mov	r2,dpl
   3CA5 AB 83         [24] 3701 	mov	r3,dph
   3CA7 AC F0         [24] 3702 	mov	r4,b
   3CA9 FD            [12] 3703 	mov	r5,a
   3CAA E5 81         [12] 3704 	mov	a,sp
   3CAC 24 FC         [12] 3705 	add	a,#0xfc
   3CAE F5 81         [12] 3706 	mov	sp,a
   3CB0 8A 82         [24] 3707 	mov	dpl,r2
   3CB2 8B 83         [24] 3708 	mov	dph,r3
   3CB4 8C F0         [24] 3709 	mov	b,r4
   3CB6 ED            [12] 3710 	mov	a,r5
   3CB7 12 62 0C      [24] 3711 	lcall	___fs2sint
   3CBA AE 82         [24] 3712 	mov	r6,dpl
   3CBC AF 83         [24] 3713 	mov	r7,dph
                           3714 ;	radio/radio.c:1124: temp_local = 25.0 + (temp_local - 1025) / 3.4; // convert mV reading into degC.
   3CBE EE            [12] 3715 	mov	a,r6
   3CBF 24 FF         [12] 3716 	add	a,#0xFF
   3CC1 FC            [12] 3717 	mov	r4,a
   3CC2 EF            [12] 3718 	mov	a,r7
   3CC3 34 FB         [12] 3719 	addc	a,#0xFB
   3CC5 FD            [12] 3720 	mov	r5,a
   3CC6 8C 82         [24] 3721 	mov	dpl,r4
   3CC8 8D 83         [24] 3722 	mov	dph,r5
   3CCA 12 61 FF      [24] 3723 	lcall	___sint2fs
   3CCD AA 82         [24] 3724 	mov	r2,dpl
   3CCF AB 83         [24] 3725 	mov	r3,dph
   3CD1 AC F0         [24] 3726 	mov	r4,b
   3CD3 FD            [12] 3727 	mov	r5,a
   3CD4 74 9A         [12] 3728 	mov	a,#0x9A
   3CD6 C0 E0         [24] 3729 	push	acc
   3CD8 74 99         [12] 3730 	mov	a,#0x99
   3CDA C0 E0         [24] 3731 	push	acc
   3CDC 74 59         [12] 3732 	mov	a,#0x59
   3CDE C0 E0         [24] 3733 	push	acc
   3CE0 74 40         [12] 3734 	mov	a,#0x40
   3CE2 C0 E0         [24] 3735 	push	acc
   3CE4 8A 82         [24] 3736 	mov	dpl,r2
   3CE6 8B 83         [24] 3737 	mov	dph,r3
   3CE8 8C F0         [24] 3738 	mov	b,r4
   3CEA ED            [12] 3739 	mov	a,r5
   3CEB 12 63 64      [24] 3740 	lcall	___fsdiv
   3CEE AA 82         [24] 3741 	mov	r2,dpl
   3CF0 AB 83         [24] 3742 	mov	r3,dph
   3CF2 AC F0         [24] 3743 	mov	r4,b
   3CF4 FD            [12] 3744 	mov	r5,a
   3CF5 E5 81         [12] 3745 	mov	a,sp
   3CF7 24 FC         [12] 3746 	add	a,#0xfc
   3CF9 F5 81         [12] 3747 	mov	sp,a
   3CFB E4            [12] 3748 	clr	a
   3CFC C0 E0         [24] 3749 	push	acc
   3CFE C0 E0         [24] 3750 	push	acc
   3D00 74 C8         [12] 3751 	mov	a,#0xC8
   3D02 C0 E0         [24] 3752 	push	acc
   3D04 74 41         [12] 3753 	mov	a,#0x41
   3D06 C0 E0         [24] 3754 	push	acc
   3D08 8A 82         [24] 3755 	mov	dpl,r2
   3D0A 8B 83         [24] 3756 	mov	dph,r3
   3D0C 8C F0         [24] 3757 	mov	b,r4
   3D0E ED            [12] 3758 	mov	a,r5
   3D0F 12 61 44      [24] 3759 	lcall	___fsadd
   3D12 AA 82         [24] 3760 	mov	r2,dpl
   3D14 AB 83         [24] 3761 	mov	r3,dph
   3D16 AC F0         [24] 3762 	mov	r4,b
   3D18 FD            [12] 3763 	mov	r5,a
   3D19 E5 81         [12] 3764 	mov	a,sp
   3D1B 24 FC         [12] 3765 	add	a,#0xfc
   3D1D F5 81         [12] 3766 	mov	sp,a
   3D1F 8A 82         [24] 3767 	mov	dpl,r2
   3D21 8B 83         [24] 3768 	mov	dph,r3
   3D23 8C F0         [24] 3769 	mov	b,r4
   3D25 ED            [12] 3770 	mov	a,r5
                           3771 ;	radio/radio.c:1126: return temp_local;
   3D26 02 62 0C      [24] 3772 	ljmp	___fs2sint
                           3773 ;------------------------------------------------------------
                           3774 ;Allocation info for local variables in function 'radio_set_diversity'
                           3775 ;------------------------------------------------------------
                           3776 ;	radio/radio.c:1132: radio_set_diversity(bool enable)
                           3777 ;	-----------------------------------------
                           3778 ;	 function radio_set_diversity
                           3779 ;	-----------------------------------------
   3D29                    3780 _radio_set_diversity:
                           3781 ;	radio/radio.c:1134: if (enable)
   3D29 30 1E 25      [24] 3782 	jnb	_radio_set_diversity_PARM_1,00102$
                           3783 ;	radio/radio.c:1136: register_write(EZRADIOPRO_GPIO2_CONFIGURATION, 0x18);
   3D2C 74 18         [12] 3784 	mov	a,#0x18
   3D2E C0 E0         [24] 3785 	push	acc
   3D30 75 82 0D      [24] 3786 	mov	dpl,#0x0D
   3D33 12 39 0F      [24] 3787 	lcall	_register_write
   3D36 15 81         [12] 3788 	dec	sp
                           3789 ;	radio/radio.c:1138: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, (register_read(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2) & ~EZRADIOPRO_ANTDIV_MASK) | 0x80);
   3D38 75 82 08      [24] 3790 	mov	dpl,#0x08
   3D3B 12 39 3F      [24] 3791 	lcall	_register_read
   3D3E AF 82         [24] 3792 	mov	r7,dpl
   3D40 74 1F         [12] 3793 	mov	a,#0x1F
   3D42 5F            [12] 3794 	anl	a,r7
   3D43 44 80         [12] 3795 	orl	a,#0x80
   3D45 FF            [12] 3796 	mov	r7,a
   3D46 C0 07         [24] 3797 	push	ar7
   3D48 75 82 08      [24] 3798 	mov	dpl,#0x08
   3D4B 12 39 0F      [24] 3799 	lcall	_register_write
   3D4E 15 81         [12] 3800 	dec	sp
   3D50 22            [24] 3801 	ret
   3D51                    3802 00102$:
                           3803 ;	radio/radio.c:1143: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, (register_read(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2) & ~EZRADIOPRO_ANTDIV_MASK));
   3D51 75 82 08      [24] 3804 	mov	dpl,#0x08
   3D54 12 39 3F      [24] 3805 	lcall	_register_read
   3D57 AF 82         [24] 3806 	mov	r7,dpl
   3D59 53 07 1F      [24] 3807 	anl	ar7,#0x1F
   3D5C C0 07         [24] 3808 	push	ar7
   3D5E 75 82 08      [24] 3809 	mov	dpl,#0x08
   3D61 12 39 0F      [24] 3810 	lcall	_register_write
   3D64 15 81         [12] 3811 	dec	sp
                           3812 ;	radio/radio.c:1145: register_write(EZRADIOPRO_GPIO2_CONFIGURATION, 0x0A);	// GPIO2 (ANT1) output set high fixed
   3D66 74 0A         [12] 3813 	mov	a,#0x0A
   3D68 C0 E0         [24] 3814 	push	acc
   3D6A 75 82 0D      [24] 3815 	mov	dpl,#0x0D
   3D6D 12 39 0F      [24] 3816 	lcall	_register_write
   3D70 15 81         [12] 3817 	dec	sp
                           3818 ;	radio/radio.c:1146: register_write(EZRADIOPRO_IO_PORT_CONFIGURATION, 0x04);	// GPIO2 output set high (fixed on ant 1)
   3D72 74 04         [12] 3819 	mov	a,#0x04
   3D74 C0 E0         [24] 3820 	push	acc
   3D76 75 82 0E      [24] 3821 	mov	dpl,#0x0E
   3D79 12 39 0F      [24] 3822 	lcall	_register_write
   3D7C 15 81         [12] 3823 	dec	sp
   3D7E 22            [24] 3824 	ret
                           3825 ;------------------------------------------------------------
                           3826 ;Allocation info for local variables in function 'Receiver_ISR'
                           3827 ;------------------------------------------------------------
                           3828 ;status                    Allocated to registers r6 
                           3829 ;status2                   Allocated to registers r7 
                           3830 ;len                       Allocated to registers r7 
                           3831 ;------------------------------------------------------------
                           3832 ;	radio/radio.c:1158: INTERRUPT(Receiver_ISR, INTERRUPT_INT0)
                           3833 ;	-----------------------------------------
                           3834 ;	 function Receiver_ISR
                           3835 ;	-----------------------------------------
   3D7F                    3836 _Receiver_ISR:
   3D7F C0 27         [24] 3837 	push	bits
   3D81 C0 E0         [24] 3838 	push	acc
   3D83 C0 F0         [24] 3839 	push	b
   3D85 C0 82         [24] 3840 	push	dpl
   3D87 C0 83         [24] 3841 	push	dph
   3D89 C0 07         [24] 3842 	push	(0+7)
   3D8B C0 06         [24] 3843 	push	(0+6)
   3D8D C0 05         [24] 3844 	push	(0+5)
   3D8F C0 04         [24] 3845 	push	(0+4)
   3D91 C0 03         [24] 3846 	push	(0+3)
   3D93 C0 02         [24] 3847 	push	(0+2)
   3D95 C0 01         [24] 3848 	push	(0+1)
   3D97 C0 00         [24] 3849 	push	(0+0)
   3D99 C0 D0         [24] 3850 	push	psw
   3D9B 75 D0 00      [24] 3851 	mov	psw,#0x00
                           3852 ;	radio/radio.c:1162: status2 = register_read(EZRADIOPRO_INTERRUPT_STATUS_2);
   3D9E 75 82 04      [24] 3853 	mov	dpl,#0x04
   3DA1 12 39 3F      [24] 3854 	lcall	_register_read
   3DA4 AF 82         [24] 3855 	mov	r7,dpl
                           3856 ;	radio/radio.c:1163: status  = register_read(EZRADIOPRO_INTERRUPT_STATUS_1);
   3DA6 75 82 03      [24] 3857 	mov	dpl,#0x03
   3DA9 C0 07         [24] 3858 	push	ar7
   3DAB 12 39 3F      [24] 3859 	lcall	_register_read
   3DAE AE 82         [24] 3860 	mov	r6,dpl
   3DB0 D0 07         [24] 3861 	pop	ar7
                           3862 ;	radio/radio.c:1165: if (status & EZRADIOPRO_IRXFFAFULL) {
   3DB2 EE            [12] 3863 	mov	a,r6
   3DB3 30 E4 49      [24] 3864 	jnb	acc.4,00104$
                           3865 ;	radio/radio.c:1166: if (RX_FIFO_THRESHOLD_HIGH + (uint16_t)partial_packet_length > MAX_PACKET_LENGTH) {
   3DB6 78 7A         [12] 3866 	mov	r0,#_partial_packet_length
   3DB8 E2            [24] 3867 	movx	a,@r0
   3DB9 FC            [12] 3868 	mov	r4,a
   3DBA 7D 00         [12] 3869 	mov	r5,#0x00
   3DBC 74 32         [12] 3870 	mov	a,#0x32
   3DBE 2C            [12] 3871 	add	a,r4
   3DBF FC            [12] 3872 	mov	r4,a
   3DC0 E4            [12] 3873 	clr	a
   3DC1 3D            [12] 3874 	addc	a,r5
   3DC2 FD            [12] 3875 	mov	r5,a
   3DC3 C3            [12] 3876 	clr	c
   3DC4 74 FC         [12] 3877 	mov	a,#0xFC
   3DC6 9C            [12] 3878 	subb	a,r4
   3DC7 E4            [12] 3879 	clr	a
   3DC8 9D            [12] 3880 	subb	a,r5
   3DC9 50 03         [24] 3881 	jnc	00150$
   3DCB 02 3E 8A      [24] 3882 	ljmp	00117$
   3DCE                    3883 00150$:
                           3884 ;	radio/radio.c:1170: read_receive_fifo(RX_FIFO_THRESHOLD_HIGH, &radio_buffer[partial_packet_length]);
   3DCE 78 7A         [12] 3885 	mov	r0,#_partial_packet_length
   3DD0 E2            [24] 3886 	movx	a,@r0
   3DD1 24 64         [12] 3887 	add	a,#_radio_buffer
   3DD3 FC            [12] 3888 	mov	r4,a
   3DD4 E4            [12] 3889 	clr	a
   3DD5 34 03         [12] 3890 	addc	a,#(_radio_buffer >> 8)
   3DD7 FD            [12] 3891 	mov	r5,a
   3DD8 C0 07         [24] 3892 	push	ar7
   3DDA C0 06         [24] 3893 	push	ar6
   3DDC C0 04         [24] 3894 	push	ar4
   3DDE C0 05         [24] 3895 	push	ar5
   3DE0 75 82 32      [24] 3896 	mov	dpl,#0x32
   3DE3 12 39 6D      [24] 3897 	lcall	_read_receive_fifo
   3DE6 15 81         [12] 3898 	dec	sp
   3DE8 15 81         [12] 3899 	dec	sp
                           3900 ;	radio/radio.c:1171: partial_packet_length += RX_FIFO_THRESHOLD_HIGH;
   3DEA 78 7A         [12] 3901 	mov	r0,#_partial_packet_length
   3DEC E2            [24] 3902 	movx	a,@r0
   3DED 24 32         [12] 3903 	add	a,#0x32
   3DEF F2            [24] 3904 	movx	@r0,a
                           3905 ;	radio/radio.c:1172: last_rssi = register_read(EZRADIOPRO_RECEIVED_SIGNAL_STRENGTH_INDICATOR);
   3DF0 75 82 26      [24] 3906 	mov	dpl,#0x26
   3DF3 12 39 3F      [24] 3907 	lcall	_register_read
   3DF6 E5 82         [12] 3908 	mov	a,dpl
   3DF8 D0 06         [24] 3909 	pop	ar6
   3DFA D0 07         [24] 3910 	pop	ar7
   3DFC 78 7B         [12] 3911 	mov	r0,#_last_rssi
   3DFE F2            [24] 3912 	movx	@r0,a
   3DFF                    3913 00104$:
                           3914 ;	radio/radio.c:1175: if (status2 & EZRADIOPRO_IPREAVAL) {
   3DFF EF            [12] 3915 	mov	a,r7
   3E00 30 E6 11      [24] 3916 	jnb	acc.6,00106$
                           3917 ;	radio/radio.c:1177: preamble_detected = true;
   3E03 D2 17         [12] 3918 	setb	_preamble_detected
                           3919 ;	radio/radio.c:1180: last_rssi = register_read(EZRADIOPRO_RECEIVED_SIGNAL_STRENGTH_INDICATOR);
   3E05 75 82 26      [24] 3920 	mov	dpl,#0x26
   3E08 C0 06         [24] 3921 	push	ar6
   3E0A 12 39 3F      [24] 3922 	lcall	_register_read
   3E0D E5 82         [12] 3923 	mov	a,dpl
   3E0F D0 06         [24] 3924 	pop	ar6
   3E11 78 7B         [12] 3925 	mov	r0,#_last_rssi
   3E13 F2            [24] 3926 	movx	@r0,a
   3E14                    3927 00106$:
                           3928 ;	radio/radio.c:1183: if (feature_golay == false && (status & EZRADIOPRO_ICRCERROR)) {
   3E14 20 04 04      [24] 3929 	jb	_feature_golay,00108$
   3E17 EE            [12] 3930 	mov	a,r6
   3E18 20 E0 6F      [24] 3931 	jb	acc.0,00117$
                           3932 ;	radio/radio.c:1184: goto rxfail;
   3E1B                    3933 00108$:
                           3934 ;	radio/radio.c:1187: if (status & EZRADIOPRO_IPKVALID) {
   3E1B EE            [12] 3935 	mov	a,r6
   3E1C 30 E1 69      [24] 3936 	jnb	acc.1,00116$
                           3937 ;	radio/radio.c:1188: __data uint8_t len = register_read(EZRADIOPRO_RECEIVED_PACKET_LENGTH);
   3E1F 75 82 4B      [24] 3938 	mov	dpl,#0x4B
   3E22 12 39 3F      [24] 3939 	lcall	_register_read
                           3940 ;	radio/radio.c:1189: if (len > MAX_PACKET_LENGTH || partial_packet_length > len) {
   3E25 E5 82         [12] 3941 	mov	a,dpl
   3E27 FF            [12] 3942 	mov	r7,a
   3E28 24 03         [12] 3943 	add	a,#0xff - 0xFC
   3E2A 40 5E         [24] 3944 	jc	00117$
   3E2C 78 7A         [12] 3945 	mov	r0,#_partial_packet_length
   3E2E C3            [12] 3946 	clr	c
   3E2F E2            [24] 3947 	movx	a,@r0
   3E30 F5 F0         [12] 3948 	mov	b,a
   3E32 EF            [12] 3949 	mov	a,r7
   3E33 95 F0         [12] 3950 	subb	a,b
   3E35 40 53         [24] 3951 	jc	00117$
                           3952 ;	radio/radio.c:1193: if (partial_packet_length < len) {
   3E37 78 7A         [12] 3953 	mov	r0,#_partial_packet_length
   3E39 C3            [12] 3954 	clr	c
   3E3A E2            [24] 3955 	movx	a,@r0
   3E3B 9F            [12] 3956 	subb	a,r7
   3E3C 50 22         [24] 3957 	jnc	00114$
                           3958 ;	radio/radio.c:1194: read_receive_fifo(len-partial_packet_length, &radio_buffer[partial_packet_length]);
   3E3E 78 7A         [12] 3959 	mov	r0,#_partial_packet_length
   3E40 E2            [24] 3960 	movx	a,@r0
   3E41 24 64         [12] 3961 	add	a,#_radio_buffer
   3E43 FD            [12] 3962 	mov	r5,a
   3E44 E4            [12] 3963 	clr	a
   3E45 34 03         [12] 3964 	addc	a,#(_radio_buffer >> 8)
   3E47 FE            [12] 3965 	mov	r6,a
   3E48 78 7A         [12] 3966 	mov	r0,#_partial_packet_length
   3E4A D3            [12] 3967 	setb	c
   3E4B E2            [24] 3968 	movx	a,@r0
   3E4C 9F            [12] 3969 	subb	a,r7
   3E4D F4            [12] 3970 	cpl	a
   3E4E FC            [12] 3971 	mov	r4,a
   3E4F C0 07         [24] 3972 	push	ar7
   3E51 C0 05         [24] 3973 	push	ar5
   3E53 C0 06         [24] 3974 	push	ar6
   3E55 8C 82         [24] 3975 	mov	dpl,r4
   3E57 12 39 6D      [24] 3976 	lcall	_read_receive_fifo
   3E5A 15 81         [12] 3977 	dec	sp
   3E5C 15 81         [12] 3978 	dec	sp
   3E5E D0 07         [24] 3979 	pop	ar7
   3E60                    3980 00114$:
                           3981 ;	radio/radio.c:1196: receive_packet_length = len;
   3E60 78 79         [12] 3982 	mov	r0,#_receive_packet_length
   3E62 EF            [12] 3983 	mov	a,r7
   3E63 F2            [24] 3984 	movx	@r0,a
                           3985 ;	radio/radio.c:1199: packet_received = true;
   3E64 D2 16         [12] 3986 	setb	_packet_received
                           3987 ;	radio/radio.c:1202: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0);
   3E66 E4            [12] 3988 	clr	a
   3E67 C0 E0         [24] 3989 	push	acc
   3E69 75 82 05      [24] 3990 	mov	dpl,#0x05
   3E6C 12 39 0F      [24] 3991 	lcall	_register_write
   3E6F 15 81         [12] 3992 	dec	sp
                           3993 ;	radio/radio.c:1203: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, 0);
   3E71 E4            [12] 3994 	clr	a
   3E72 C0 E0         [24] 3995 	push	acc
   3E74 75 82 06      [24] 3996 	mov	dpl,#0x06
   3E77 12 39 0F      [24] 3997 	lcall	_register_write
   3E7A 15 81         [12] 3998 	dec	sp
                           3999 ;	radio/radio.c:1206: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_1, EZRADIOPRO_PLLON);
   3E7C 74 02         [12] 4000 	mov	a,#0x02
   3E7E C0 E0         [24] 4001 	push	acc
   3E80 75 82 07      [24] 4002 	mov	dpl,#0x07
   3E83 12 39 0F      [24] 4003 	lcall	_register_write
   3E86 15 81         [12] 4004 	dec	sp
   3E88                    4005 00116$:
                           4006 ;	radio/radio.c:1208: return;
                           4007 ;	radio/radio.c:1210: rxfail:
   3E88 80 1E         [24] 4008 	sjmp	00120$
   3E8A                    4009 00117$:
                           4010 ;	radio/radio.c:1211: if (errors.rx_errors != 0xFFFF) {
   3E8A 78 34         [12] 4011 	mov	r0,#_errors
   3E8C E2            [24] 4012 	movx	a,@r0
   3E8D FE            [12] 4013 	mov	r6,a
   3E8E 08            [12] 4014 	inc	r0
   3E8F E2            [24] 4015 	movx	a,@r0
   3E90 FF            [12] 4016 	mov	r7,a
   3E91 BE FF 05      [24] 4017 	cjne	r6,#0xFF,00158$
   3E94 BF FF 02      [24] 4018 	cjne	r7,#0xFF,00158$
   3E97 80 0C         [24] 4019 	sjmp	00119$
   3E99                    4020 00158$:
                           4021 ;	radio/radio.c:1212: errors.rx_errors++;
   3E99 0E            [12] 4022 	inc	r6
   3E9A BE 00 01      [24] 4023 	cjne	r6,#0x00,00159$
   3E9D 0F            [12] 4024 	inc	r7
   3E9E                    4025 00159$:
   3E9E 78 34         [12] 4026 	mov	r0,#_errors
   3EA0 EE            [12] 4027 	mov	a,r6
   3EA1 F2            [24] 4028 	movx	@r0,a
   3EA2 08            [12] 4029 	inc	r0
   3EA3 EF            [12] 4030 	mov	a,r7
   3EA4 F2            [24] 4031 	movx	@r0,a
   3EA5                    4032 00119$:
                           4033 ;	radio/radio.c:1214: radio_receiver_on();
   3EA5 12 34 40      [24] 4034 	lcall	_radio_receiver_on
   3EA8                    4035 00120$:
   3EA8 D0 D0         [24] 4036 	pop	psw
   3EAA D0 00         [24] 4037 	pop	(0+0)
   3EAC D0 01         [24] 4038 	pop	(0+1)
   3EAE D0 02         [24] 4039 	pop	(0+2)
   3EB0 D0 03         [24] 4040 	pop	(0+3)
   3EB2 D0 04         [24] 4041 	pop	(0+4)
   3EB4 D0 05         [24] 4042 	pop	(0+5)
   3EB6 D0 06         [24] 4043 	pop	(0+6)
   3EB8 D0 07         [24] 4044 	pop	(0+7)
   3EBA D0 83         [24] 4045 	pop	dph
   3EBC D0 82         [24] 4046 	pop	dpl
   3EBE D0 F0         [24] 4047 	pop	b
   3EC0 D0 E0         [24] 4048 	pop	acc
   3EC2 D0 27         [24] 4049 	pop	bits
   3EC4 32            [24] 4050 	reti
                           4051 	.area CSEG    (CODE)
                           4052 	.area CONST   (CODE)
   C911                    4053 __str_0:
   C911 6F 76 65 72 73 69  4054 	.ascii "oversized packet"
        7A 65 64 20 70 61
        63 6B 65 74
   C921 00                 4055 	.db 0x00
   C922                    4056 __str_1:
   C922 6F 76 65 72 73 69  4057 	.ascii "oversized golay packet"
        7A 65 64 20 67 6F
        6C 61 79 20 70 61
        63 6B 65 74
   C938 00                 4058 	.db 0x00
   C939                    4059 _reg_index:
   C939 1C                 4060 	.db #0x1C	; 28
   C93A 1F                 4061 	.db #0x1F	; 31
   C93B 20                 4062 	.db #0x20	; 32
   C93C 21                 4063 	.db #0x21	; 33
   C93D 22                 4064 	.db #0x22	; 34
   C93E 23                 4065 	.db #0x23	; 35
   C93F 24                 4066 	.db #0x24	; 36
   C940 25                 4067 	.db #0x25	; 37
   C941 2A                 4068 	.db #0x2A	; 42
   C942 6E                 4069 	.db #0x6E	; 110	'n'
   C943 6F                 4070 	.db #0x6F	; 111	'o'
   C944 72                 4071 	.db #0x72	; 114	'r'
   C945                    4072 _air_data_rates:
   C945 02                 4073 	.db #0x02	; 2
   C946 04                 4074 	.db #0x04	; 4
   C947 08                 4075 	.db #0x08	; 8
   C948 10                 4076 	.db #0x10	; 16
   C949 13                 4077 	.db #0x13	; 19
   C94A 18                 4078 	.db #0x18	; 24
   C94B 20                 4079 	.db #0x20	; 32
   C94C 30                 4080 	.db #0x30	; 48	'0'
   C94D 40                 4081 	.db #0x40	; 64
   C94E 60                 4082 	.db #0x60	; 96
   C94F 80                 4083 	.db #0x80	; 128
   C950 C0                 4084 	.db #0xC0	; 192
   C951 FA                 4085 	.db #0xFA	; 250
   C952                    4086 _reg_table_433:
   C952 27                 4087 	.db #0x27	; 39
   C953 27                 4088 	.db #0x27	; 39
   C954 27                 4089 	.db #0x27	; 39
   C955 2E                 4090 	.db #0x2E	; 46
   C956 16                 4091 	.db #0x16	; 22
   C957 01                 4092 	.db #0x01	; 1
   C958 05                 4093 	.db #0x05	; 5
   C959 0B                 4094 	.db #0x0B	; 11
   C95A 9A                 4095 	.db #0x9A	; 154
   C95B 88                 4096 	.db #0x88	; 136
   C95C 8A                 4097 	.db #0x8A	; 138
   C95D 8C                 4098 	.db #0x8C	; 140
   C95E 8D                 4099 	.db #0x8D	; 141
   C95F 03                 4100 	.db #0x03	; 3
   C960 03                 4101 	.db #0x03	; 3
   C961 03                 4102 	.db #0x03	; 3
   C962 03                 4103 	.db #0x03	; 3
   C963 03                 4104 	.db #0x03	; 3
   C964 03                 4105 	.db #0x03	; 3
   C965 03                 4106 	.db #0x03	; 3
   C966 03                 4107 	.db #0x03	; 3
   C967 03                 4108 	.db #0x03	; 3
   C968 03                 4109 	.db #0x03	; 3
   C969 03                 4110 	.db #0x03	; 3
   C96A 03                 4111 	.db #0x03	; 3
   C96B 03                 4112 	.db #0x03	; 3
   C96C F4                 4113 	.db #0xF4	; 244
   C96D FA                 4114 	.db #0xFA	; 250
   C96E 7D                 4115 	.db #0x7D	; 125
   C96F 3F                 4116 	.db #0x3F	; 63
   C970 69                 4117 	.db #0x69	; 105	'i'
   C971 A7                 4118 	.db #0xA7	; 167
   C972 7D                 4119 	.db #0x7D	; 125
   C973 53                 4120 	.db #0x53	; 83	'S'
   C974 5E                 4121 	.db #0x5E	; 94
   C975 7D                 4122 	.db #0x7D	; 125
   C976 5E                 4123 	.db #0x5E	; 94
   C977 3F                 4124 	.db #0x3F	; 63
   C978 30                 4125 	.db #0x30	; 48	'0'
   C979 20                 4126 	.db #0x20	; 32
   C97A 00                 4127 	.db #0x00	; 0
   C97B 01                 4128 	.db #0x01	; 1
   C97C 02                 4129 	.db #0x02	; 2
   C97D 01                 4130 	.db #0x01	; 1
   C97E 00                 4131 	.db #0x00	; 0
   C97F 01                 4132 	.db #0x01	; 1
   C980 01                 4133 	.db #0x01	; 1
   C981 01                 4134 	.db #0x01	; 1
   C982 01                 4135 	.db #0x01	; 1
   C983 01                 4136 	.db #0x01	; 1
   C984 02                 4137 	.db #0x02	; 2
   C985 02                 4138 	.db #0x02	; 2
   C986 41                 4139 	.db #0x41	; 65	'A'
   C987 83                 4140 	.db #0x83	; 131
   C988 06                 4141 	.db #0x06	; 6
   C989 0C                 4142 	.db #0x0C	; 12
   C98A 37                 4143 	.db #0x37	; 55	'7'
   C98B C4                 4144 	.db #0xC4	; 196
   C98C 06                 4145 	.db #0x06	; 6
   C98D 89                 4146 	.db #0x89	; 137
   C98E 5D                 4147 	.db #0x5D	; 93
   C98F 06                 4148 	.db #0x06	; 6
   C990 5D                 4149 	.db #0x5D	; 93
   C991 0C                 4150 	.db #0x0C	; 12
   C992 AA                 4151 	.db #0xAA	; 170
   C993 89                 4152 	.db #0x89	; 137
   C994 12                 4153 	.db #0x12	; 18
   C995 25                 4154 	.db #0x25	; 37
   C996 4A                 4155 	.db #0x4A	; 74	'J'
   C997 4C                 4156 	.db #0x4C	; 76	'L'
   C998 9C                 4157 	.db #0x9C	; 156
   C999 25                 4158 	.db #0x25	; 37
   C99A 37                 4159 	.db #0x37	; 55	'7'
   C99B 86                 4160 	.db #0x86	; 134
   C99C 25                 4161 	.db #0x25	; 37
   C99D 86                 4162 	.db #0x86	; 134
   C99E 4A                 4163 	.db #0x4A	; 74	'J'
   C99F AB                 4164 	.db #0xAB	; 171
   C9A0 00                 4165 	.db #0x00	; 0
   C9A1 01                 4166 	.db #0x01	; 1
   C9A2 02                 4167 	.db #0x02	; 2
   C9A3 04                 4168 	.db #0x04	; 4
   C9A4 02                 4169 	.db #0x02	; 2
   C9A5 01                 4170 	.db #0x01	; 1
   C9A6 02                 4171 	.db #0x02	; 2
   C9A7 03                 4172 	.db #0x03	; 3
   C9A8 02                 4173 	.db #0x02	; 2
   C9A9 02                 4174 	.db #0x02	; 2
   C9AA 02                 4175 	.db #0x02	; 2
   C9AB 04                 4176 	.db #0x04	; 4
   C9AC 07                 4177 	.db #0x07	; 7
   C9AD 85                 4178 	.db #0x85	; 133
   C9AE 08                 4179 	.db #0x08	; 8
   C9AF 0E                 4180 	.db #0x0E	; 14
   C9B0 12                 4181 	.db #0x12	; 18
   C9B1 72                 4182 	.db #0x72	; 114	'r'
   C9B2 8A                 4183 	.db #0x8A	; 138
   C9B3 0E                 4184 	.db #0x0E	; 14
   C9B4 18                 4185 	.db #0x18	; 24
   C9B5 BB                 4186 	.db #0xBB	; 187
   C9B6 0E                 4187 	.db #0x0E	; 14
   C9B7 BB                 4188 	.db #0xBB	; 187
   C9B8 EA                 4189 	.db #0xEA	; 234
   C9B9 FF                 4190 	.db #0xFF	; 255
   C9BA 1D                 4191 	.db #0x1D	; 29
   C9BB 1D                 4192 	.db #0x1D	; 29
   C9BC 1D                 4193 	.db #0x1D	; 29
   C9BD 1E                 4194 	.db #0x1E	; 30
   C9BE 1E                 4195 	.db #0x1E	; 30
   C9BF 1E                 4196 	.db #0x1E	; 30
   C9C0 20                 4197 	.db #0x20	; 32
   C9C1 30                 4198 	.db #0x30	; 48	'0'
   C9C2 41                 4199 	.db #0x41	; 65	'A'
   C9C3 50                 4200 	.db #0x50	; 80	'P'
   C9C4 50                 4201 	.db #0x50	; 80	'P'
   C9C5 50                 4202 	.db #0x50	; 80	'P'
   C9C6 50                 4203 	.db #0x50	; 80	'P'
   C9C7 10                 4204 	.db #0x10	; 16
   C9C8 20                 4205 	.db #0x20	; 32
   C9C9 41                 4206 	.db #0x41	; 65	'A'
   C9CA 83                 4207 	.db #0x83	; 131
   C9CB 9B                 4208 	.db #0x9B	; 155
   C9CC C4                 4209 	.db #0xC4	; 196
   C9CD 08                 4210 	.db #0x08	; 8
   C9CE 0C                 4211 	.db #0x0C	; 12
   C9CF 10                 4212 	.db #0x10	; 16
   C9D0 18                 4213 	.db #0x18	; 24
   C9D1 20                 4214 	.db #0x20	; 32
   C9D2 31                 4215 	.db #0x31	; 49	'1'
   C9D3 40                 4216 	.db #0x40	; 64
   C9D4 62                 4217 	.db #0x62	; 98	'b'
   C9D5 C5                 4218 	.db #0xC5	; 197
   C9D6 89                 4219 	.db #0x89	; 137
   C9D7 12                 4220 	.db #0x12	; 18
   C9D8 A6                 4221 	.db #0xA6	; 166
   C9D9 9C                 4222 	.db #0x9C	; 156
   C9DA 31                 4223 	.db #0x31	; 49	'1'
   C9DB 4A                 4224 	.db #0x4A	; 74	'J'
   C9DC 62                 4225 	.db #0x62	; 98	'b'
   C9DD 93                 4226 	.db #0x93	; 147
   C9DE C5                 4227 	.db #0xC5	; 197
   C9DF 27                 4228 	.db #0x27	; 39
   C9E0 00                 4229 	.db #0x00	; 0
   C9E1 03                 4230 	.db #0x03	; 3
   C9E2 06                 4231 	.db #0x06	; 6
   C9E3 0D                 4232 	.db #0x0D	; 13
   C9E4 1A                 4233 	.db #0x1A	; 26
   C9E5 1E                 4234 	.db #0x1E	; 30
   C9E6 26                 4235 	.db #0x26	; 38
   C9E7 33                 4236 	.db #0x33	; 51	'3'
   C9E8 4D                 4237 	.db #0x4D	; 77	'M'
   C9E9 66                 4238 	.db #0x66	; 102	'f'
   C9EA 9A                 4239 	.db #0x9A	; 154
   C9EB CD                 4240 	.db #0xCD	; 205
   C9EC FE                 4241 	.db #0xFE	; 254
   C9ED FE                 4242 	.db #0xFE	; 254
   C9EE                    4243 _reg_table_470:
   C9EE 2B                 4244 	.db #0x2B	; 43
   C9EF 2B                 4245 	.db #0x2B	; 43
   C9F0 2B                 4246 	.db #0x2B	; 43
   C9F1 2E                 4247 	.db #0x2E	; 46
   C9F2 16                 4248 	.db #0x16	; 22
   C9F3 01                 4249 	.db #0x01	; 1
   C9F4 05                 4250 	.db #0x05	; 5
   C9F5 0B                 4251 	.db #0x0B	; 11
   C9F6 9A                 4252 	.db #0x9A	; 154
   C9F7 88                 4253 	.db #0x88	; 136
   C9F8 8A                 4254 	.db #0x8A	; 138
   C9F9 8C                 4255 	.db #0x8C	; 140
   C9FA 8D                 4256 	.db #0x8D	; 141
   C9FB 03                 4257 	.db #0x03	; 3
   C9FC 03                 4258 	.db #0x03	; 3
   C9FD 03                 4259 	.db #0x03	; 3
   C9FE 03                 4260 	.db #0x03	; 3
   C9FF 03                 4261 	.db #0x03	; 3
   CA00 03                 4262 	.db #0x03	; 3
   CA01 03                 4263 	.db #0x03	; 3
   CA02 03                 4264 	.db #0x03	; 3
   CA03 03                 4265 	.db #0x03	; 3
   CA04 03                 4266 	.db #0x03	; 3
   CA05 03                 4267 	.db #0x03	; 3
   CA06 03                 4268 	.db #0x03	; 3
   CA07 03                 4269 	.db #0x03	; 3
   CA08 F4                 4270 	.db #0xF4	; 244
   CA09 FA                 4271 	.db #0xFA	; 250
   CA0A 7D                 4272 	.db #0x7D	; 125
   CA0B 3F                 4273 	.db #0x3F	; 63
   CA0C 69                 4274 	.db #0x69	; 105	'i'
   CA0D A7                 4275 	.db #0xA7	; 167
   CA0E 7D                 4276 	.db #0x7D	; 125
   CA0F 53                 4277 	.db #0x53	; 83	'S'
   CA10 5E                 4278 	.db #0x5E	; 94
   CA11 7D                 4279 	.db #0x7D	; 125
   CA12 5E                 4280 	.db #0x5E	; 94
   CA13 3F                 4281 	.db #0x3F	; 63
   CA14 30                 4282 	.db #0x30	; 48	'0'
   CA15 20                 4283 	.db #0x20	; 32
   CA16 00                 4284 	.db #0x00	; 0
   CA17 01                 4285 	.db #0x01	; 1
   CA18 02                 4286 	.db #0x02	; 2
   CA19 01                 4287 	.db #0x01	; 1
   CA1A 00                 4288 	.db #0x00	; 0
   CA1B 01                 4289 	.db #0x01	; 1
   CA1C 01                 4290 	.db #0x01	; 1
   CA1D 01                 4291 	.db #0x01	; 1
   CA1E 01                 4292 	.db #0x01	; 1
   CA1F 01                 4293 	.db #0x01	; 1
   CA20 02                 4294 	.db #0x02	; 2
   CA21 02                 4295 	.db #0x02	; 2
   CA22 41                 4296 	.db #0x41	; 65	'A'
   CA23 83                 4297 	.db #0x83	; 131
   CA24 06                 4298 	.db #0x06	; 6
   CA25 0C                 4299 	.db #0x0C	; 12
   CA26 37                 4300 	.db #0x37	; 55	'7'
   CA27 C4                 4301 	.db #0xC4	; 196
   CA28 06                 4302 	.db #0x06	; 6
   CA29 89                 4303 	.db #0x89	; 137
   CA2A 5D                 4304 	.db #0x5D	; 93
   CA2B 06                 4305 	.db #0x06	; 6
   CA2C 5D                 4306 	.db #0x5D	; 93
   CA2D 0C                 4307 	.db #0x0C	; 12
   CA2E AA                 4308 	.db #0xAA	; 170
   CA2F 89                 4309 	.db #0x89	; 137
   CA30 12                 4310 	.db #0x12	; 18
   CA31 25                 4311 	.db #0x25	; 37
   CA32 4A                 4312 	.db #0x4A	; 74	'J'
   CA33 4C                 4313 	.db #0x4C	; 76	'L'
   CA34 9C                 4314 	.db #0x9C	; 156
   CA35 25                 4315 	.db #0x25	; 37
   CA36 37                 4316 	.db #0x37	; 55	'7'
   CA37 86                 4317 	.db #0x86	; 134
   CA38 25                 4318 	.db #0x25	; 37
   CA39 86                 4319 	.db #0x86	; 134
   CA3A 4A                 4320 	.db #0x4A	; 74	'J'
   CA3B AB                 4321 	.db #0xAB	; 171
   CA3C 00                 4322 	.db #0x00	; 0
   CA3D 01                 4323 	.db #0x01	; 1
   CA3E 02                 4324 	.db #0x02	; 2
   CA3F 04                 4325 	.db #0x04	; 4
   CA40 02                 4326 	.db #0x02	; 2
   CA41 01                 4327 	.db #0x01	; 1
   CA42 02                 4328 	.db #0x02	; 2
   CA43 03                 4329 	.db #0x03	; 3
   CA44 02                 4330 	.db #0x02	; 2
   CA45 02                 4331 	.db #0x02	; 2
   CA46 02                 4332 	.db #0x02	; 2
   CA47 04                 4333 	.db #0x04	; 4
   CA48 07                 4334 	.db #0x07	; 7
   CA49 85                 4335 	.db #0x85	; 133
   CA4A 08                 4336 	.db #0x08	; 8
   CA4B 0E                 4337 	.db #0x0E	; 14
   CA4C 12                 4338 	.db #0x12	; 18
   CA4D 72                 4339 	.db #0x72	; 114	'r'
   CA4E 8A                 4340 	.db #0x8A	; 138
   CA4F 0E                 4341 	.db #0x0E	; 14
   CA50 18                 4342 	.db #0x18	; 24
   CA51 BB                 4343 	.db #0xBB	; 187
   CA52 0E                 4344 	.db #0x0E	; 14
   CA53 BB                 4345 	.db #0xBB	; 187
   CA54 EA                 4346 	.db #0xEA	; 234
   CA55 FF                 4347 	.db #0xFF	; 255
   CA56 1E                 4348 	.db #0x1E	; 30
   CA57 1E                 4349 	.db #0x1E	; 30
   CA58 1E                 4350 	.db #0x1E	; 30
   CA59 21                 4351 	.db #0x21	; 33
   CA5A 21                 4352 	.db #0x21	; 33
   CA5B 21                 4353 	.db #0x21	; 33
   CA5C 21                 4354 	.db #0x21	; 33
   CA5D 30                 4355 	.db #0x30	; 48	'0'
   CA5E 41                 4356 	.db #0x41	; 65	'A'
   CA5F 50                 4357 	.db #0x50	; 80	'P'
   CA60 50                 4358 	.db #0x50	; 80	'P'
   CA61 50                 4359 	.db #0x50	; 80	'P'
   CA62 50                 4360 	.db #0x50	; 80	'P'
   CA63 10                 4361 	.db #0x10	; 16
   CA64 20                 4362 	.db #0x20	; 32
   CA65 41                 4363 	.db #0x41	; 65	'A'
   CA66 83                 4364 	.db #0x83	; 131
   CA67 9B                 4365 	.db #0x9B	; 155
   CA68 C4                 4366 	.db #0xC4	; 196
   CA69 08                 4367 	.db #0x08	; 8
   CA6A 0C                 4368 	.db #0x0C	; 12
   CA6B 10                 4369 	.db #0x10	; 16
   CA6C 18                 4370 	.db #0x18	; 24
   CA6D 20                 4371 	.db #0x20	; 32
   CA6E 31                 4372 	.db #0x31	; 49	'1'
   CA6F 40                 4373 	.db #0x40	; 64
   CA70 62                 4374 	.db #0x62	; 98	'b'
   CA71 C5                 4375 	.db #0xC5	; 197
   CA72 89                 4376 	.db #0x89	; 137
   CA73 12                 4377 	.db #0x12	; 18
   CA74 A6                 4378 	.db #0xA6	; 166
   CA75 9C                 4379 	.db #0x9C	; 156
   CA76 31                 4380 	.db #0x31	; 49	'1'
   CA77 4A                 4381 	.db #0x4A	; 74	'J'
   CA78 62                 4382 	.db #0x62	; 98	'b'
   CA79 93                 4383 	.db #0x93	; 147
   CA7A C5                 4384 	.db #0xC5	; 197
   CA7B 27                 4385 	.db #0x27	; 39
   CA7C 00                 4386 	.db #0x00	; 0
   CA7D 03                 4387 	.db #0x03	; 3
   CA7E 06                 4388 	.db #0x06	; 6
   CA7F 0D                 4389 	.db #0x0D	; 13
   CA80 1A                 4390 	.db #0x1A	; 26
   CA81 1E                 4391 	.db #0x1E	; 30
   CA82 26                 4392 	.db #0x26	; 38
   CA83 33                 4393 	.db #0x33	; 51	'3'
   CA84 4D                 4394 	.db #0x4D	; 77	'M'
   CA85 66                 4395 	.db #0x66	; 102	'f'
   CA86 9A                 4396 	.db #0x9A	; 154
   CA87 CD                 4397 	.db #0xCD	; 205
   CA88 FE                 4398 	.db #0xFE	; 254
   CA89 FE                 4399 	.db #0xFE	; 254
   CA8A                    4400 _reg_table_868:
   CA8A 01                 4401 	.db #0x01	; 1
   CA8B 01                 4402 	.db #0x01	; 1
   CA8C 01                 4403 	.db #0x01	; 1
   CA8D 01                 4404 	.db #0x01	; 1
   CA8E 01                 4405 	.db #0x01	; 1
   CA8F 01                 4406 	.db #0x01	; 1
   CA90 05                 4407 	.db #0x05	; 5
   CA91 0B                 4408 	.db #0x0B	; 11
   CA92 9A                 4409 	.db #0x9A	; 154
   CA93 88                 4410 	.db #0x88	; 136
   CA94 8A                 4411 	.db #0x8A	; 138
   CA95 8C                 4412 	.db #0x8C	; 140
   CA96 8D                 4413 	.db #0x8D	; 141
   CA97 03                 4414 	.db #0x03	; 3
   CA98 03                 4415 	.db #0x03	; 3
   CA99 03                 4416 	.db #0x03	; 3
   CA9A 03                 4417 	.db #0x03	; 3
   CA9B 03                 4418 	.db #0x03	; 3
   CA9C 03                 4419 	.db #0x03	; 3
   CA9D 03                 4420 	.db #0x03	; 3
   CA9E 03                 4421 	.db #0x03	; 3
   CA9F 03                 4422 	.db #0x03	; 3
   CAA0 03                 4423 	.db #0x03	; 3
   CAA1 03                 4424 	.db #0x03	; 3
   CAA2 03                 4425 	.db #0x03	; 3
   CAA3 03                 4426 	.db #0x03	; 3
   CAA4 D0                 4427 	.db #0xD0	; 208
   CAA5 E8                 4428 	.db #0xE8	; 232
   CAA6 F4                 4429 	.db #0xF4	; 244
   CAA7 FA                 4430 	.db #0xFA	; 250
   CAA8 D3                 4431 	.db #0xD3	; 211
   CAA9 A7                 4432 	.db #0xA7	; 167
   CAAA 7D                 4433 	.db #0x7D	; 125
   CAAB 53                 4434 	.db #0x53	; 83	'S'
   CAAC 5E                 4435 	.db #0x5E	; 94
   CAAD 7D                 4436 	.db #0x7D	; 125
   CAAE 5E                 4437 	.db #0x5E	; 94
   CAAF 3F                 4438 	.db #0x3F	; 63
   CAB0 30                 4439 	.db #0x30	; 48	'0'
   CAB1 E0                 4440 	.db #0xE0	; 224
   CAB2 60                 4441 	.db #0x60	; 96
   CAB3 20                 4442 	.db #0x20	; 32
   CAB4 00                 4443 	.db #0x00	; 0
   CAB5 00                 4444 	.db #0x00	; 0
   CAB6 00                 4445 	.db #0x00	; 0
   CAB7 01                 4446 	.db #0x01	; 1
   CAB8 01                 4447 	.db #0x01	; 1
   CAB9 01                 4448 	.db #0x01	; 1
   CABA 01                 4449 	.db #0x01	; 1
   CABB 01                 4450 	.db #0x01	; 1
   CABC 02                 4451 	.db #0x02	; 2
   CABD 02                 4452 	.db #0x02	; 2
   CABE 10                 4453 	.db #0x10	; 16
   CABF 20                 4454 	.db #0x20	; 32
   CAC0 41                 4455 	.db #0x41	; 65	'A'
   CAC1 83                 4456 	.db #0x83	; 131
   CAC2 9B                 4457 	.db #0x9B	; 155
   CAC3 C4                 4458 	.db #0xC4	; 196
   CAC4 06                 4459 	.db #0x06	; 6
   CAC5 89                 4460 	.db #0x89	; 137
   CAC6 5D                 4461 	.db #0x5D	; 93
   CAC7 06                 4462 	.db #0x06	; 6
   CAC8 5D                 4463 	.db #0x5D	; 93
   CAC9 0C                 4464 	.db #0x0C	; 12
   CACA AA                 4465 	.db #0xAA	; 170
   CACB 62                 4466 	.db #0x62	; 98	'b'
   CACC C5                 4467 	.db #0xC5	; 197
   CACD 89                 4468 	.db #0x89	; 137
   CACE 12                 4469 	.db #0x12	; 18
   CACF A6                 4470 	.db #0xA6	; 166
   CAD0 9C                 4471 	.db #0x9C	; 156
   CAD1 25                 4472 	.db #0x25	; 37
   CAD2 37                 4473 	.db #0x37	; 55	'7'
   CAD3 86                 4474 	.db #0x86	; 134
   CAD4 25                 4475 	.db #0x25	; 37
   CAD5 86                 4476 	.db #0x86	; 134
   CAD6 4A                 4477 	.db #0x4A	; 74	'J'
   CAD7 AB                 4478 	.db #0xAB	; 171
   CAD8 00                 4479 	.db #0x00	; 0
   CAD9 00                 4480 	.db #0x00	; 0
   CADA 00                 4481 	.db #0x00	; 0
   CADB 01                 4482 	.db #0x01	; 1
   CADC 01                 4483 	.db #0x01	; 1
   CADD 01                 4484 	.db #0x01	; 1
   CADE 02                 4485 	.db #0x02	; 2
   CADF 03                 4486 	.db #0x03	; 3
   CAE0 02                 4487 	.db #0x02	; 2
   CAE1 02                 4488 	.db #0x02	; 2
   CAE2 02                 4489 	.db #0x02	; 2
   CAE3 04                 4490 	.db #0x04	; 4
   CAE4 07                 4491 	.db #0x07	; 7
   CAE5 23                 4492 	.db #0x23	; 35
   CAE6 44                 4493 	.db #0x44	; 68	'D'
   CAE7 85                 4494 	.db #0x85	; 133
   CAE8 08                 4495 	.db #0x08	; 8
   CAE9 39                 4496 	.db #0x39	; 57	'9'
   CAEA 8A                 4497 	.db #0x8A	; 138
   CAEB 0E                 4498 	.db #0x0E	; 14
   CAEC 18                 4499 	.db #0x18	; 24
   CAED BB                 4500 	.db #0xBB	; 187
   CAEE 0E                 4501 	.db #0x0E	; 14
   CAEF BB                 4502 	.db #0xBB	; 187
   CAF0 EA                 4503 	.db #0xEA	; 234
   CAF1 FF                 4504 	.db #0xFF	; 255
   CAF2 1C                 4505 	.db #0x1C	; 28
   CAF3 1C                 4506 	.db #0x1C	; 28
   CAF4 1C                 4507 	.db #0x1C	; 28
   CAF5 1C                 4508 	.db #0x1C	; 28
   CAF6 1C                 4509 	.db #0x1C	; 28
   CAF7 1E                 4510 	.db #0x1E	; 30
   CAF8 20                 4511 	.db #0x20	; 32
   CAF9 30                 4512 	.db #0x30	; 48	'0'
   CAFA 41                 4513 	.db #0x41	; 65	'A'
   CAFB 50                 4514 	.db #0x50	; 80	'P'
   CAFC 50                 4515 	.db #0x50	; 80	'P'
   CAFD 50                 4516 	.db #0x50	; 80	'P'
   CAFE 50                 4517 	.db #0x50	; 80	'P'
   CAFF 10                 4518 	.db #0x10	; 16
   CB00 20                 4519 	.db #0x20	; 32
   CB01 41                 4520 	.db #0x41	; 65	'A'
   CB02 83                 4521 	.db #0x83	; 131
   CB03 9B                 4522 	.db #0x9B	; 155
   CB04 C4                 4523 	.db #0xC4	; 196
   CB05 08                 4524 	.db #0x08	; 8
   CB06 0C                 4525 	.db #0x0C	; 12
   CB07 10                 4526 	.db #0x10	; 16
   CB08 18                 4527 	.db #0x18	; 24
   CB09 20                 4528 	.db #0x20	; 32
   CB0A 31                 4529 	.db #0x31	; 49	'1'
   CB0B 40                 4530 	.db #0x40	; 64
   CB0C 62                 4531 	.db #0x62	; 98	'b'
   CB0D C5                 4532 	.db #0xC5	; 197
   CB0E 89                 4533 	.db #0x89	; 137
   CB0F 12                 4534 	.db #0x12	; 18
   CB10 A6                 4535 	.db #0xA6	; 166
   CB11 9C                 4536 	.db #0x9C	; 156
   CB12 31                 4537 	.db #0x31	; 49	'1'
   CB13 4A                 4538 	.db #0x4A	; 74	'J'
   CB14 62                 4539 	.db #0x62	; 98	'b'
   CB15 93                 4540 	.db #0x93	; 147
   CB16 C5                 4541 	.db #0xC5	; 197
   CB17 27                 4542 	.db #0x27	; 39
   CB18 00                 4543 	.db #0x00	; 0
   CB19 03                 4544 	.db #0x03	; 3
   CB1A 06                 4545 	.db #0x06	; 6
   CB1B 0D                 4546 	.db #0x0D	; 13
   CB1C 1A                 4547 	.db #0x1A	; 26
   CB1D 1E                 4548 	.db #0x1E	; 30
   CB1E 26                 4549 	.db #0x26	; 38
   CB1F 33                 4550 	.db #0x33	; 51	'3'
   CB20 4D                 4551 	.db #0x4D	; 77	'M'
   CB21 66                 4552 	.db #0x66	; 102	'f'
   CB22 9A                 4553 	.db #0x9A	; 154
   CB23 CD                 4554 	.db #0xCD	; 205
   CB24 FE                 4555 	.db #0xFE	; 254
   CB25 FE                 4556 	.db #0xFE	; 254
   CB26                    4557 _reg_table_915:
   CB26 01                 4558 	.db #0x01	; 1
   CB27 01                 4559 	.db #0x01	; 1
   CB28 01                 4560 	.db #0x01	; 1
   CB29 01                 4561 	.db #0x01	; 1
   CB2A 01                 4562 	.db #0x01	; 1
   CB2B 01                 4563 	.db #0x01	; 1
   CB2C 05                 4564 	.db #0x05	; 5
   CB2D 0B                 4565 	.db #0x0B	; 11
   CB2E 9A                 4566 	.db #0x9A	; 154
   CB2F 88                 4567 	.db #0x88	; 136
   CB30 8A                 4568 	.db #0x8A	; 138
   CB31 8C                 4569 	.db #0x8C	; 140
   CB32 8D                 4570 	.db #0x8D	; 141
   CB33 03                 4571 	.db #0x03	; 3
   CB34 03                 4572 	.db #0x03	; 3
   CB35 03                 4573 	.db #0x03	; 3
   CB36 03                 4574 	.db #0x03	; 3
   CB37 03                 4575 	.db #0x03	; 3
   CB38 03                 4576 	.db #0x03	; 3
   CB39 03                 4577 	.db #0x03	; 3
   CB3A 03                 4578 	.db #0x03	; 3
   CB3B 03                 4579 	.db #0x03	; 3
   CB3C 03                 4580 	.db #0x03	; 3
   CB3D 03                 4581 	.db #0x03	; 3
   CB3E 03                 4582 	.db #0x03	; 3
   CB3F 03                 4583 	.db #0x03	; 3
   CB40 D0                 4584 	.db #0xD0	; 208
   CB41 E8                 4585 	.db #0xE8	; 232
   CB42 F4                 4586 	.db #0xF4	; 244
   CB43 FA                 4587 	.db #0xFA	; 250
   CB44 D3                 4588 	.db #0xD3	; 211
   CB45 A7                 4589 	.db #0xA7	; 167
   CB46 7D                 4590 	.db #0x7D	; 125
   CB47 53                 4591 	.db #0x53	; 83	'S'
   CB48 5E                 4592 	.db #0x5E	; 94
   CB49 7D                 4593 	.db #0x7D	; 125
   CB4A 5E                 4594 	.db #0x5E	; 94
   CB4B 3F                 4595 	.db #0x3F	; 63
   CB4C 30                 4596 	.db #0x30	; 48	'0'
   CB4D E0                 4597 	.db #0xE0	; 224
   CB4E 60                 4598 	.db #0x60	; 96
   CB4F 20                 4599 	.db #0x20	; 32
   CB50 00                 4600 	.db #0x00	; 0
   CB51 00                 4601 	.db #0x00	; 0
   CB52 00                 4602 	.db #0x00	; 0
   CB53 01                 4603 	.db #0x01	; 1
   CB54 01                 4604 	.db #0x01	; 1
   CB55 01                 4605 	.db #0x01	; 1
   CB56 01                 4606 	.db #0x01	; 1
   CB57 01                 4607 	.db #0x01	; 1
   CB58 02                 4608 	.db #0x02	; 2
   CB59 02                 4609 	.db #0x02	; 2
   CB5A 10                 4610 	.db #0x10	; 16
   CB5B 20                 4611 	.db #0x20	; 32
   CB5C 41                 4612 	.db #0x41	; 65	'A'
   CB5D 83                 4613 	.db #0x83	; 131
   CB5E 9B                 4614 	.db #0x9B	; 155
   CB5F C4                 4615 	.db #0xC4	; 196
   CB60 06                 4616 	.db #0x06	; 6
   CB61 89                 4617 	.db #0x89	; 137
   CB62 5D                 4618 	.db #0x5D	; 93
   CB63 06                 4619 	.db #0x06	; 6
   CB64 5D                 4620 	.db #0x5D	; 93
   CB65 0C                 4621 	.db #0x0C	; 12
   CB66 AA                 4622 	.db #0xAA	; 170
   CB67 62                 4623 	.db #0x62	; 98	'b'
   CB68 C5                 4624 	.db #0xC5	; 197
   CB69 89                 4625 	.db #0x89	; 137
   CB6A 12                 4626 	.db #0x12	; 18
   CB6B A6                 4627 	.db #0xA6	; 166
   CB6C 9C                 4628 	.db #0x9C	; 156
   CB6D 25                 4629 	.db #0x25	; 37
   CB6E 37                 4630 	.db #0x37	; 55	'7'
   CB6F 86                 4631 	.db #0x86	; 134
   CB70 25                 4632 	.db #0x25	; 37
   CB71 86                 4633 	.db #0x86	; 134
   CB72 4A                 4634 	.db #0x4A	; 74	'J'
   CB73 AB                 4635 	.db #0xAB	; 171
   CB74 00                 4636 	.db #0x00	; 0
   CB75 00                 4637 	.db #0x00	; 0
   CB76 00                 4638 	.db #0x00	; 0
   CB77 01                 4639 	.db #0x01	; 1
   CB78 01                 4640 	.db #0x01	; 1
   CB79 01                 4641 	.db #0x01	; 1
   CB7A 02                 4642 	.db #0x02	; 2
   CB7B 03                 4643 	.db #0x03	; 3
   CB7C 02                 4644 	.db #0x02	; 2
   CB7D 02                 4645 	.db #0x02	; 2
   CB7E 02                 4646 	.db #0x02	; 2
   CB7F 04                 4647 	.db #0x04	; 4
   CB80 07                 4648 	.db #0x07	; 7
   CB81 23                 4649 	.db #0x23	; 35
   CB82 44                 4650 	.db #0x44	; 68	'D'
   CB83 85                 4651 	.db #0x85	; 133
   CB84 08                 4652 	.db #0x08	; 8
   CB85 39                 4653 	.db #0x39	; 57	'9'
   CB86 8A                 4654 	.db #0x8A	; 138
   CB87 0E                 4655 	.db #0x0E	; 14
   CB88 18                 4656 	.db #0x18	; 24
   CB89 BB                 4657 	.db #0xBB	; 187
   CB8A 0E                 4658 	.db #0x0E	; 14
   CB8B BB                 4659 	.db #0xBB	; 187
   CB8C EA                 4660 	.db #0xEA	; 234
   CB8D FF                 4661 	.db #0xFF	; 255
   CB8E 1E                 4662 	.db #0x1E	; 30
   CB8F 1E                 4663 	.db #0x1E	; 30
   CB90 1E                 4664 	.db #0x1E	; 30
   CB91 1E                 4665 	.db #0x1E	; 30
   CB92 1E                 4666 	.db #0x1E	; 30
   CB93 1E                 4667 	.db #0x1E	; 30
   CB94 20                 4668 	.db #0x20	; 32
   CB95 30                 4669 	.db #0x30	; 48	'0'
   CB96 41                 4670 	.db #0x41	; 65	'A'
   CB97 50                 4671 	.db #0x50	; 80	'P'
   CB98 50                 4672 	.db #0x50	; 80	'P'
   CB99 50                 4673 	.db #0x50	; 80	'P'
   CB9A 50                 4674 	.db #0x50	; 80	'P'
   CB9B 10                 4675 	.db #0x10	; 16
   CB9C 20                 4676 	.db #0x20	; 32
   CB9D 41                 4677 	.db #0x41	; 65	'A'
   CB9E 83                 4678 	.db #0x83	; 131
   CB9F 9B                 4679 	.db #0x9B	; 155
   CBA0 C4                 4680 	.db #0xC4	; 196
   CBA1 08                 4681 	.db #0x08	; 8
   CBA2 0C                 4682 	.db #0x0C	; 12
   CBA3 10                 4683 	.db #0x10	; 16
   CBA4 18                 4684 	.db #0x18	; 24
   CBA5 20                 4685 	.db #0x20	; 32
   CBA6 31                 4686 	.db #0x31	; 49	'1'
   CBA7 40                 4687 	.db #0x40	; 64
   CBA8 62                 4688 	.db #0x62	; 98	'b'
   CBA9 C5                 4689 	.db #0xC5	; 197
   CBAA 89                 4690 	.db #0x89	; 137
   CBAB 12                 4691 	.db #0x12	; 18
   CBAC A6                 4692 	.db #0xA6	; 166
   CBAD 9C                 4693 	.db #0x9C	; 156
   CBAE 31                 4694 	.db #0x31	; 49	'1'
   CBAF 4A                 4695 	.db #0x4A	; 74	'J'
   CBB0 62                 4696 	.db #0x62	; 98	'b'
   CBB1 93                 4697 	.db #0x93	; 147
   CBB2 C5                 4698 	.db #0xC5	; 197
   CBB3 27                 4699 	.db #0x27	; 39
   CBB4 00                 4700 	.db #0x00	; 0
   CBB5 03                 4701 	.db #0x03	; 3
   CBB6 06                 4702 	.db #0x06	; 6
   CBB7 0D                 4703 	.db #0x0D	; 13
   CBB8 1A                 4704 	.db #0x1A	; 26
   CBB9 1E                 4705 	.db #0x1E	; 30
   CBBA 26                 4706 	.db #0x26	; 38
   CBBB 33                 4707 	.db #0x33	; 51	'3'
   CBBC 4D                 4708 	.db #0x4D	; 77	'M'
   CBBD 66                 4709 	.db #0x66	; 102	'f'
   CBBE 9A                 4710 	.db #0x9A	; 154
   CBBF CD                 4711 	.db #0xCD	; 205
   CBC0 FE                 4712 	.db #0xFE	; 254
   CBC1 FE                 4713 	.db #0xFE	; 254
   CBC2                    4714 _power_levels:
   CBC2 01                 4715 	.db #0x01	; 1
   CBC3 02                 4716 	.db #0x02	; 2
   CBC4 05                 4717 	.db #0x05	; 5
   CBC5 08                 4718 	.db #0x08	; 8
   CBC6 0B                 4719 	.db #0x0B	; 11
   CBC7 0E                 4720 	.db #0x0E	; 14
   CBC8 11                 4721 	.db #0x11	; 17
   CBC9 14                 4722 	.db #0x14	; 20
                           4723 	.area XINIT   (CODE)
                           4724 	.area CABS    (ABS,CODE)
