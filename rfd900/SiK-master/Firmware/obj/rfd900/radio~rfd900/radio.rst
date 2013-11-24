                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:13 2013
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
                             23 	.globl _NSS1
                             24 	.globl _IRQ
                             25 	.globl _PIN_ENABLE
                             26 	.globl _PIN_CONFIG
                             27 	.globl _LED_GREEN
                             28 	.globl _LED_RED
                             29 	.globl _SPI0EN
                             30 	.globl _TXBMT0
                             31 	.globl _NSS0MD0
                             32 	.globl _NSS0MD1
                             33 	.globl _RXOVRN0
                             34 	.globl _MODF0
                             35 	.globl _WCOL0
                             36 	.globl _SPIF0
                             37 	.globl _AD0CM0
                             38 	.globl _AD0CM1
                             39 	.globl _AD0CM2
                             40 	.globl _AD0WINT
                             41 	.globl _AD0BUSY
                             42 	.globl _AD0INT
                             43 	.globl _BURSTEN
                             44 	.globl _AD0EN
                             45 	.globl _CCF0
                             46 	.globl _CCF1
                             47 	.globl _CCF2
                             48 	.globl _CCF3
                             49 	.globl _CCF4
                             50 	.globl _CCF5
                             51 	.globl _CR
                             52 	.globl _CF
                             53 	.globl _P
                             54 	.globl _F1
                             55 	.globl _OV
                             56 	.globl _RS0
                             57 	.globl _RS1
                             58 	.globl _F0
                             59 	.globl _AC
                             60 	.globl _CY
                             61 	.globl _T2XCLK
                             62 	.globl _T2RCLK
                             63 	.globl _TR2
                             64 	.globl _T2SPLIT
                             65 	.globl _TF2CEN
                             66 	.globl _TF2LEN
                             67 	.globl _TF2L
                             68 	.globl _TF2H
                             69 	.globl _SI
                             70 	.globl _ACK
                             71 	.globl _ARBLOST
                             72 	.globl _ACKRQ
                             73 	.globl _STO
                             74 	.globl _STA
                             75 	.globl _TXMODE
                             76 	.globl _MASTER
                             77 	.globl _PX0
                             78 	.globl _PT0
                             79 	.globl _PX1
                             80 	.globl _PT1
                             81 	.globl _PS0
                             82 	.globl _PT2
                             83 	.globl _PSPI0
                             84 	.globl _SPI1EN
                             85 	.globl _TXBMT1
                             86 	.globl _NSS1MD0
                             87 	.globl _NSS1MD1
                             88 	.globl _RXOVRN1
                             89 	.globl _MODF1
                             90 	.globl _WCOL1
                             91 	.globl _SPIF1
                             92 	.globl _EX0
                             93 	.globl _ET0
                             94 	.globl _EX1
                             95 	.globl _ET1
                             96 	.globl _ES0
                             97 	.globl _ET2
                             98 	.globl _ESPI0
                             99 	.globl _EA
                            100 	.globl _RI0
                            101 	.globl _TI0
                            102 	.globl _RB80
                            103 	.globl _TB80
                            104 	.globl _REN0
                            105 	.globl _MCE0
                            106 	.globl _S0MODE
                            107 	.globl _CRC0VAL
                            108 	.globl _CRC0INIT
                            109 	.globl _CRC0SEL
                            110 	.globl _IT0
                            111 	.globl _IE0
                            112 	.globl _IT1
                            113 	.globl _IE1
                            114 	.globl _TR0
                            115 	.globl _TF0
                            116 	.globl _TR1
                            117 	.globl _TF1
                            118 	.globl _PCA0CP4
                            119 	.globl _PCA0CP0
                            120 	.globl _PCA0
                            121 	.globl _PCA0CP3
                            122 	.globl _PCA0CP2
                            123 	.globl _PCA0CP1
                            124 	.globl _PCA0CP5
                            125 	.globl _TMR2
                            126 	.globl _TMR2RL
                            127 	.globl _ADC0LT
                            128 	.globl _ADC0GT
                            129 	.globl _ADC0
                            130 	.globl _TMR3
                            131 	.globl _TMR3RL
                            132 	.globl _TOFF
                            133 	.globl _DP
                            134 	.globl _VDM0CN
                            135 	.globl _PCA0CPH4
                            136 	.globl _PCA0CPL4
                            137 	.globl _PCA0CPH0
                            138 	.globl _PCA0CPL0
                            139 	.globl _PCA0H
                            140 	.globl _PCA0L
                            141 	.globl _SPI0CN
                            142 	.globl _EIP2
                            143 	.globl _EIP1
                            144 	.globl _SMB0ADM
                            145 	.globl _SMB0ADR
                            146 	.globl _P2MDIN
                            147 	.globl _P1MDIN
                            148 	.globl _P0MDIN
                            149 	.globl _B
                            150 	.globl _RSTSRC
                            151 	.globl _PCA0CPH3
                            152 	.globl _PCA0CPL3
                            153 	.globl _PCA0CPH2
                            154 	.globl _PCA0CPL2
                            155 	.globl _PCA0CPH1
                            156 	.globl _PCA0CPL1
                            157 	.globl _ADC0CN
                            158 	.globl _EIE2
                            159 	.globl _EIE1
                            160 	.globl _FLWR
                            161 	.globl _IT01CF
                            162 	.globl _XBR2
                            163 	.globl _XBR1
                            164 	.globl _XBR0
                            165 	.globl _ACC
                            166 	.globl _PCA0PWM
                            167 	.globl _PCA0CPM4
                            168 	.globl _PCA0CPM3
                            169 	.globl _PCA0CPM2
                            170 	.globl _PCA0CPM1
                            171 	.globl _PCA0CPM0
                            172 	.globl _PCA0MD
                            173 	.globl _PCA0CN
                            174 	.globl _P0MAT
                            175 	.globl _P2SKIP
                            176 	.globl _P1SKIP
                            177 	.globl _P0SKIP
                            178 	.globl _PCA0CPH5
                            179 	.globl _PCA0CPL5
                            180 	.globl _REF0CN
                            181 	.globl _PSW
                            182 	.globl _P1MAT
                            183 	.globl _PCA0CPM5
                            184 	.globl _TMR2H
                            185 	.globl _TMR2L
                            186 	.globl _TMR2RLH
                            187 	.globl _TMR2RLL
                            188 	.globl _REG0CN
                            189 	.globl _TMR2CN
                            190 	.globl _P0MASK
                            191 	.globl _ADC0LTH
                            192 	.globl _ADC0LTL
                            193 	.globl _ADC0GTH
                            194 	.globl _ADC0GTL
                            195 	.globl _SMB0DAT
                            196 	.globl _SMB0CF
                            197 	.globl _SMB0CN
                            198 	.globl _P1MASK
                            199 	.globl _ADC0H
                            200 	.globl _ADC0L
                            201 	.globl _ADC0TK
                            202 	.globl _ADC0CF
                            203 	.globl _ADC0MX
                            204 	.globl _ADC0PWR
                            205 	.globl _ADC0AC
                            206 	.globl _IREF0CN
                            207 	.globl _IP
                            208 	.globl _FLKEY
                            209 	.globl _FLSCL
                            210 	.globl _PMU0CF
                            211 	.globl _OSCICL
                            212 	.globl _OSCICN
                            213 	.globl _OSCXCN
                            214 	.globl _SPI1CN
                            215 	.globl _ONESHOT
                            216 	.globl _EMI0TC
                            217 	.globl _RTC0KEY
                            218 	.globl _RTC0DAT
                            219 	.globl _RTC0ADR
                            220 	.globl _EMI0CF
                            221 	.globl _EMI0CN
                            222 	.globl _CLKSEL
                            223 	.globl _IE
                            224 	.globl _SFRPAGE
                            225 	.globl _P2DRV
                            226 	.globl _P2MDOUT
                            227 	.globl _P1DRV
                            228 	.globl _P1MDOUT
                            229 	.globl _P0DRV
                            230 	.globl _P0MDOUT
                            231 	.globl _SPI0DAT
                            232 	.globl _SPI0CKR
                            233 	.globl _SPI0CFG
                            234 	.globl _P2
                            235 	.globl _CPT0MX
                            236 	.globl _CPT1MX
                            237 	.globl _CPT0MD
                            238 	.globl _CPT1MD
                            239 	.globl _CPT0CN
                            240 	.globl _CPT1CN
                            241 	.globl _SBUF0
                            242 	.globl _SCON0
                            243 	.globl _CRC0CNT
                            244 	.globl _DC0CN
                            245 	.globl _CRC0AUTO
                            246 	.globl _DC0CF
                            247 	.globl _TMR3H
                            248 	.globl _CRC0FLIP
                            249 	.globl _TMR3L
                            250 	.globl _CRC0IN
                            251 	.globl _TMR3RLH
                            252 	.globl _CRC0CN
                            253 	.globl _TMR3RLL
                            254 	.globl _CRC0DAT
                            255 	.globl _TMR3CN
                            256 	.globl _P1
                            257 	.globl _PSCTL
                            258 	.globl _CKCON
                            259 	.globl _TH1
                            260 	.globl _TH0
                            261 	.globl _TL1
                            262 	.globl _TL0
                            263 	.globl _TMOD
                            264 	.globl _TCON
                            265 	.globl _PCON
                            266 	.globl _TOFFH
                            267 	.globl _SPI1DAT
                            268 	.globl _TOFFL
                            269 	.globl _SPI1CKR
                            270 	.globl _SPI1CFG
                            271 	.globl _DPH
                            272 	.globl _DPL
                            273 	.globl _SP
                            274 	.globl _P0
                            275 	.globl _radio_buffer
                            276 	.globl _radio_transmit_PARM_3
                            277 	.globl _radio_transmit_PARM_2
                            278 	.globl _radio_receive_packet_PARM_2
                            279 	.globl _settings
                            280 	.globl _netid
                            281 	.globl _last_rssi
                            282 	.globl _partial_packet_length
                            283 	.globl _receive_packet_length
                            284 	.globl _radio_set_diversity_PARM_1
                            285 	.globl _radio_receive_packet
                            286 	.globl _radio_receive_in_progress
                            287 	.globl _radio_preamble_detected
                            288 	.globl _radio_last_rssi
                            289 	.globl _radio_current_rssi
                            290 	.globl _radio_air_rate
                            291 	.globl _radio_transmit
                            292 	.globl _radio_receiver_on
                            293 	.globl _radio_initialise
                            294 	.globl _radio_set_frequency
                            295 	.globl _radio_set_channel_spacing
                            296 	.globl _radio_set_channel
                            297 	.globl _radio_get_channel
                            298 	.globl _radio_configure
                            299 	.globl _radio_set_transmit_power
                            300 	.globl _radio_get_transmit_power
                            301 	.globl _radio_set_network_id
                            302 	.globl _radio_temperature
                            303 	.globl _radio_set_diversity
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
                     0096   560 _LED_RED	=	0x0096
                     0095   561 _LED_GREEN	=	0x0095
                     0082   562 _PIN_CONFIG	=	0x0082
                     0083   563 _PIN_ENABLE	=	0x0083
                     0087   564 _IRQ	=	0x0087
                     0094   565 _NSS1	=	0x0094
                            566 ;--------------------------------------------------------
                            567 ; overlayable register banks
                            568 ;--------------------------------------------------------
                            569 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     570 	.ds 8
                            571 ;--------------------------------------------------------
                            572 ; overlayable bit register bank
                            573 ;--------------------------------------------------------
                            574 	.area BIT_BANK	(REL,OVR,DATA)
   0027                     575 bits:
   0027                     576 	.ds 1
                     8000   577 	b0 = bits[0]
                     8100   578 	b1 = bits[1]
                     8200   579 	b2 = bits[2]
                     8300   580 	b3 = bits[3]
                     8400   581 	b4 = bits[4]
                     8500   582 	b5 = bits[5]
                     8600   583 	b6 = bits[6]
                     8700   584 	b7 = bits[7]
                            585 ;--------------------------------------------------------
                            586 ; internal ram data
                            587 ;--------------------------------------------------------
                            588 	.area DSEG    (DATA)
   004C                     589 _radio_receive_packet_crc1_1_135:
   004C                     590 	.ds 2
   004E                     591 _radio_transmit_golay_elen_1_186:
   004E                     592 	.ds 1
                            593 ;--------------------------------------------------------
                            594 ; overlayable items in internal ram 
                            595 ;--------------------------------------------------------
                            596 	.area	OSEG    (OVR,DATA)
                            597 ;--------------------------------------------------------
                            598 ; indirectly addressable internal ram data
                            599 ;--------------------------------------------------------
                            600 	.area ISEG    (DATA)
                            601 ;--------------------------------------------------------
                            602 ; absolute internal ram data
                            603 ;--------------------------------------------------------
                            604 	.area IABS    (ABS,DATA)
                            605 	.area IABS    (ABS,DATA)
                            606 ;--------------------------------------------------------
                            607 ; bit data
                            608 ;--------------------------------------------------------
                            609 	.area BSEG    (BIT)
   0016                     610 _packet_received:
   0016                     611 	.ds 1
   0017                     612 _preamble_detected:
   0017                     613 	.ds 1
   0018                     614 _radio_preamble_detected_EX0_saved_1_157:
   0018                     615 	.ds 1
   0019                     616 _radio_transmit_simple_transmit_started_1_170:
   0019                     617 	.ds 1
   001A                     618 _radio_transmit_golay_sloc0_1_0:
   001A                     619 	.ds 1
   001B                     620 _radio_transmit_EX0_saved_1_189:
   001B                     621 	.ds 1
   001C                     622 _radio_transmit_sloc0_1_0:
   001C                     623 	.ds 1
   001D                     624 _radio_initialise_sloc0_1_0:
   001D                     625 	.ds 1
   001E                     626 _radio_set_diversity_PARM_1:
   001E                     627 	.ds 1
                            628 ;--------------------------------------------------------
                            629 ; paged external ram data
                            630 ;--------------------------------------------------------
                            631 	.area PSEG    (PAG,XDATA)
   0079                     632 _receive_packet_length::
   0079                     633 	.ds 1
   007A                     634 _partial_packet_length::
   007A                     635 	.ds 1
   007B                     636 _last_rssi::
   007B                     637 	.ds 1
   007C                     638 _netid::
   007C                     639 	.ds 2
   007E                     640 _settings::
   007E                     641 	.ds 12
   008A                     642 _radio_receive_packet_PARM_2:
   008A                     643 	.ds 2
   008C                     644 _radio_write_transmit_fifo_PARM_2:
   008C                     645 	.ds 2
   008E                     646 _radio_transmit_simple_PARM_2:
   008E                     647 	.ds 2
   0090                     648 _radio_transmit_simple_PARM_3:
   0090                     649 	.ds 2
   0092                     650 _radio_transmit_golay_PARM_2:
   0092                     651 	.ds 2
   0094                     652 _radio_transmit_golay_PARM_3:
   0094                     653 	.ds 2
   0096                     654 _radio_transmit_PARM_2:
   0096                     655 	.ds 2
   0098                     656 _radio_transmit_PARM_3:
   0098                     657 	.ds 2
   009A                     658 _scale_uint32_PARM_2:
   009A                     659 	.ds 4
   009E                     660 _scale_uint32_value_1_248:
   009E                     661 	.ds 4
   00A2                     662 _set_frequency_registers_frequency_1_256:
   00A2                     663 	.ds 4
                            664 ;--------------------------------------------------------
                            665 ; external ram data
                            666 ;--------------------------------------------------------
                            667 	.area XSEG    (XDATA)
   0364                     668 _radio_buffer::
   0364                     669 	.ds 252
   0460                     670 _radio_receive_packet_length_1_134:
   0460                     671 	.ds 3
   0463                     672 _radio_receive_packet_gout_1_135:
   0463                     673 	.ds 3
   0466                     674 _radio_transmit_golay_length_1_185:
   0466                     675 	.ds 1
   0467                     676 _radio_transmit_golay_gin_1_186:
   0467                     677 	.ds 3
   046A                     678 _radio_transmit_length_1_188:
   046A                     679 	.ds 1
   046B                     680 _radio_set_channel_channel_1_206:
   046B                     681 	.ds 1
   046C                     682 _radio_set_transmit_power_power_1_230:
   046C                     683 	.ds 1
   046D                     684 _radio_set_transmit_power_i_1_231:
   046D                     685 	.ds 1
   046E                     686 _radio_set_network_id_id_1_236:
   046E                     687 	.ds 2
   0470                     688 _set_frequency_registers_band_1_257:
   0470                     689 	.ds 1
                            690 ;--------------------------------------------------------
                            691 ; absolute external ram data
                            692 ;--------------------------------------------------------
                            693 	.area XABS    (ABS,XDATA)
                            694 ;--------------------------------------------------------
                            695 ; external initialized ram data
                            696 ;--------------------------------------------------------
                            697 	.area XISEG   (XDATA)
                            698 	.area HOME    (CODE)
                            699 	.area GSINIT0 (CODE)
                            700 	.area GSINIT1 (CODE)
                            701 	.area GSINIT2 (CODE)
                            702 	.area GSINIT3 (CODE)
                            703 	.area GSINIT4 (CODE)
                            704 	.area GSINIT5 (CODE)
                            705 	.area GSINIT  (CODE)
                            706 	.area GSFINAL (CODE)
                            707 	.area CSEG    (CODE)
                            708 ;--------------------------------------------------------
                            709 ; global & static initialisations
                            710 ;--------------------------------------------------------
                            711 	.area HOME    (CODE)
                            712 	.area GSINIT  (CODE)
                            713 	.area GSFINAL (CODE)
                            714 	.area GSINIT  (CODE)
                            715 ;--------------------------------------------------------
                            716 ; Home
                            717 ;--------------------------------------------------------
                            718 	.area HOME    (CODE)
                            719 	.area HOME    (CODE)
                            720 ;--------------------------------------------------------
                            721 ; code
                            722 ;--------------------------------------------------------
                            723 	.area CSEG    (CODE)
                            724 ;------------------------------------------------------------
                            725 ;Allocation info for local variables in function 'radio_receive_packet'
                            726 ;------------------------------------------------------------
                            727 ;crc1                      Allocated with name '_radio_receive_packet_crc1_1_135'
                            728 ;crc2                      Allocated to registers r5 r7 
                            729 ;errcount                  Allocated to registers r6 
                            730 ;elen                      Allocated to registers r7 
                            731 ;length                    Allocated with name '_radio_receive_packet_length_1_134'
                            732 ;gout                      Allocated with name '_radio_receive_packet_gout_1_135'
                            733 ;------------------------------------------------------------
                            734 ;	radio/radio.c:77: radio_receive_packet(uint8_t *length, __xdata uint8_t * __pdata buf)
                            735 ;	-----------------------------------------
                            736 ;	 function radio_receive_packet
                            737 ;	-----------------------------------------
   2DD2                     738 _radio_receive_packet:
                     0007   739 	ar7 = 0x07
                     0006   740 	ar6 = 0x06
                     0005   741 	ar5 = 0x05
                     0004   742 	ar4 = 0x04
                     0003   743 	ar3 = 0x03
                     0002   744 	ar2 = 0x02
                     0001   745 	ar1 = 0x01
                     0000   746 	ar0 = 0x00
   2DD2 AF F0         [24]  747 	mov	r7,b
   2DD4 AE 83         [24]  748 	mov	r6,dph
   2DD6 E5 82         [12]  749 	mov	a,dpl
   2DD8 90 04 60      [24]  750 	mov	dptr,#_radio_receive_packet_length_1_134
   2DDB F0            [24]  751 	movx	@dptr,a
   2DDC EE            [12]  752 	mov	a,r6
   2DDD A3            [24]  753 	inc	dptr
   2DDE F0            [24]  754 	movx	@dptr,a
   2DDF EF            [12]  755 	mov	a,r7
   2DE0 A3            [24]  756 	inc	dptr
   2DE1 F0            [24]  757 	movx	@dptr,a
                            758 ;	radio/radio.c:84: if (!packet_received) {
   2DE2 20 16 02      [24]  759 	jb	_packet_received,00102$
                            760 ;	radio/radio.c:85: return false;
   2DE5 C3            [12]  761 	clr	c
   2DE6 22            [24]  762 	ret
   2DE7                     763 00102$:
                            764 ;	radio/radio.c:88: if (receive_packet_length > MAX_PACKET_LENGTH) {
   2DE7 78 79         [12]  765 	mov	r0,#_receive_packet_length
   2DE9 C3            [12]  766 	clr	c
   2DEA E2            [24]  767 	movx	a,@r0
   2DEB F5 F0         [12]  768 	mov	b,a
   2DED 74 FC         [12]  769 	mov	a,#0xFC
   2DEF 95 F0         [12]  770 	subb	a,b
   2DF1 50 06         [24]  771 	jnc	00104$
                            772 ;	radio/radio.c:89: radio_receiver_on();
   2DF3 12 34 42      [24]  773 	lcall	_radio_receiver_on
                            774 ;	radio/radio.c:90: goto failed;
   2DF6 02 30 12      [24]  775 	ljmp	00126$
   2DF9                     776 00104$:
                            777 ;	radio/radio.c:101: if (!feature_golay) {
   2DF9 20 04 45      [24]  778 	jb	_feature_golay,00106$
                            779 ;	radio/radio.c:103: *length = receive_packet_length;
   2DFC 90 04 60      [24]  780 	mov	dptr,#_radio_receive_packet_length_1_134
   2DFF E0            [24]  781 	movx	a,@dptr
   2E00 FD            [12]  782 	mov	r5,a
   2E01 A3            [24]  783 	inc	dptr
   2E02 E0            [24]  784 	movx	a,@dptr
   2E03 FE            [12]  785 	mov	r6,a
   2E04 A3            [24]  786 	inc	dptr
   2E05 E0            [24]  787 	movx	a,@dptr
   2E06 FF            [12]  788 	mov	r7,a
   2E07 8D 82         [24]  789 	mov	dpl,r5
   2E09 8E 83         [24]  790 	mov	dph,r6
   2E0B 8F F0         [24]  791 	mov	b,r7
   2E0D 78 79         [12]  792 	mov	r0,#_receive_packet_length
   2E0F E2            [24]  793 	movx	a,@r0
   2E10 12 5E 30      [24]  794 	lcall	__gptrput
                            795 ;	radio/radio.c:104: memcpy(buf, radio_buffer, receive_packet_length);
   2E13 78 8A         [12]  796 	mov	r0,#_radio_receive_packet_PARM_2
   2E15 E2            [24]  797 	movx	a,@r0
   2E16 FD            [12]  798 	mov	r5,a
   2E17 08            [12]  799 	inc	r0
   2E18 E2            [24]  800 	movx	a,@r0
   2E19 FE            [12]  801 	mov	r6,a
   2E1A 7F 00         [12]  802 	mov	r7,#0x00
   2E1C 90 05 C1      [24]  803 	mov	dptr,#_memcpy_PARM_2
   2E1F 74 64         [12]  804 	mov	a,#_radio_buffer
   2E21 F0            [24]  805 	movx	@dptr,a
   2E22 74 03         [12]  806 	mov	a,#(_radio_buffer >> 8)
   2E24 A3            [24]  807 	inc	dptr
   2E25 F0            [24]  808 	movx	@dptr,a
   2E26 E4            [12]  809 	clr	a
   2E27 A3            [24]  810 	inc	dptr
   2E28 F0            [24]  811 	movx	@dptr,a
   2E29 78 79         [12]  812 	mov	r0,#_receive_packet_length
   2E2B 90 05 C4      [24]  813 	mov	dptr,#_memcpy_PARM_3
   2E2E E2            [24]  814 	movx	a,@r0
   2E2F F0            [24]  815 	movx	@dptr,a
   2E30 E4            [12]  816 	clr	a
   2E31 A3            [24]  817 	inc	dptr
   2E32 F0            [24]  818 	movx	@dptr,a
   2E33 8D 82         [24]  819 	mov	dpl,r5
   2E35 8E 83         [24]  820 	mov	dph,r6
   2E37 8F F0         [24]  821 	mov	b,r7
   2E39 12 5D A3      [24]  822 	lcall	_memcpy
                            823 ;	radio/radio.c:105: radio_receiver_on();
   2E3C 12 34 42      [24]  824 	lcall	_radio_receiver_on
                            825 ;	radio/radio.c:106: return true;
   2E3F D3            [12]  826 	setb	c
   2E40 22            [24]  827 	ret
   2E41                     828 00106$:
                            829 ;	radio/radio.c:112: memcpy(buf, radio_buffer, receive_packet_length);
   2E41 78 8A         [12]  830 	mov	r0,#_radio_receive_packet_PARM_2
   2E43 E2            [24]  831 	movx	a,@r0
   2E44 FD            [12]  832 	mov	r5,a
   2E45 08            [12]  833 	inc	r0
   2E46 E2            [24]  834 	movx	a,@r0
   2E47 FE            [12]  835 	mov	r6,a
   2E48 7F 00         [12]  836 	mov	r7,#0x00
   2E4A 90 05 C1      [24]  837 	mov	dptr,#_memcpy_PARM_2
   2E4D 74 64         [12]  838 	mov	a,#_radio_buffer
   2E4F F0            [24]  839 	movx	@dptr,a
   2E50 74 03         [12]  840 	mov	a,#(_radio_buffer >> 8)
   2E52 A3            [24]  841 	inc	dptr
   2E53 F0            [24]  842 	movx	@dptr,a
   2E54 E4            [12]  843 	clr	a
   2E55 A3            [24]  844 	inc	dptr
   2E56 F0            [24]  845 	movx	@dptr,a
   2E57 78 79         [12]  846 	mov	r0,#_receive_packet_length
   2E59 90 05 C4      [24]  847 	mov	dptr,#_memcpy_PARM_3
   2E5C E2            [24]  848 	movx	a,@r0
   2E5D F0            [24]  849 	movx	@dptr,a
   2E5E E4            [12]  850 	clr	a
   2E5F A3            [24]  851 	inc	dptr
   2E60 F0            [24]  852 	movx	@dptr,a
   2E61 8D 82         [24]  853 	mov	dpl,r5
   2E63 8E 83         [24]  854 	mov	dph,r6
   2E65 8F F0         [24]  855 	mov	b,r7
   2E67 12 5D A3      [24]  856 	lcall	_memcpy
                            857 ;	radio/radio.c:116: elen = receive_packet_length;
   2E6A 78 79         [12]  858 	mov	r0,#_receive_packet_length
   2E6C E2            [24]  859 	movx	a,@r0
   2E6D FF            [12]  860 	mov	r7,a
                            861 ;	radio/radio.c:117: radio_receiver_on();	
   2E6E C0 07         [24]  862 	push	ar7
   2E70 12 34 42      [24]  863 	lcall	_radio_receiver_on
   2E73 D0 07         [24]  864 	pop	ar7
                            865 ;	radio/radio.c:119: if (elen < 12 || (elen%6) != 0) {
   2E75 BF 0C 00      [24]  866 	cjne	r7,#0x0C,00176$
   2E78                     867 00176$:
   2E78 50 03         [24]  868 	jnc	00177$
   2E7A 02 30 12      [24]  869 	ljmp	00126$
   2E7D                     870 00177$:
   2E7D 75 F0 06      [24]  871 	mov	b,#0x06
   2E80 EF            [12]  872 	mov	a,r7
   2E81 84            [48]  873 	div	ab
   2E82 E5 F0         [12]  874 	mov	a,b
   2E84 60 03         [24]  875 	jz	00178$
   2E86 02 30 12      [24]  876 	ljmp	00126$
   2E89                     877 00178$:
                            878 ;	radio/radio.c:126: errcount = golay_decode(6, buf, gout);
   2E89 78 8A         [12]  879 	mov	r0,#_radio_receive_packet_PARM_2
   2E8B 79 2D         [12]  880 	mov	r1,#_golay_decode_PARM_2
   2E8D E2            [24]  881 	movx	a,@r0
   2E8E F3            [24]  882 	movx	@r1,a
   2E8F 08            [12]  883 	inc	r0
   2E90 E2            [24]  884 	movx	a,@r0
   2E91 09            [12]  885 	inc	r1
   2E92 F3            [24]  886 	movx	@r1,a
   2E93 78 2F         [12]  887 	mov	r0,#_golay_decode_PARM_3
   2E95 74 63         [12]  888 	mov	a,#_radio_receive_packet_gout_1_135
   2E97 F2            [24]  889 	movx	@r0,a
   2E98 08            [12]  890 	inc	r0
   2E99 74 04         [12]  891 	mov	a,#(_radio_receive_packet_gout_1_135 >> 8)
   2E9B F2            [24]  892 	movx	@r0,a
   2E9C 75 82 06      [24]  893 	mov	dpl,#0x06
   2E9F C0 07         [24]  894 	push	ar7
   2EA1 12 10 B6      [24]  895 	lcall	_golay_decode
   2EA4 AE 82         [24]  896 	mov	r6,dpl
   2EA6 D0 07         [24]  897 	pop	ar7
                            898 ;	radio/radio.c:127: if (gout[0] != netid[0] ||
   2EA8 90 04 63      [24]  899 	mov	dptr,#_radio_receive_packet_gout_1_135
   2EAB E0            [24]  900 	movx	a,@dptr
   2EAC FD            [12]  901 	mov	r5,a
   2EAD 78 7C         [12]  902 	mov	r0,#_netid
   2EAF E2            [24]  903 	movx	a,@r0
   2EB0 FC            [12]  904 	mov	r4,a
   2EB1 ED            [12]  905 	mov	a,r5
   2EB2 B5 04 02      [24]  906 	cjne	a,ar4,00179$
   2EB5 80 03         [24]  907 	sjmp	00180$
   2EB7                     908 00179$:
   2EB7 02 30 12      [24]  909 	ljmp	00126$
   2EBA                     910 00180$:
                            911 ;	radio/radio.c:128: gout[1] != netid[1]) {
   2EBA 90 04 64      [24]  912 	mov	dptr,#(_radio_receive_packet_gout_1_135 + 0x0001)
   2EBD E0            [24]  913 	movx	a,@dptr
   2EBE FD            [12]  914 	mov	r5,a
   2EBF 78 7D         [12]  915 	mov	r0,#(_netid + 0x0001)
   2EC1 E2            [24]  916 	movx	a,@r0
   2EC2 FC            [12]  917 	mov	r4,a
   2EC3 ED            [12]  918 	mov	a,r5
   2EC4 B5 04 02      [24]  919 	cjne	a,ar4,00181$
   2EC7 80 03         [24]  920 	sjmp	00182$
   2EC9                     921 00181$:
   2EC9 02 30 12      [24]  922 	ljmp	00126$
   2ECC                     923 00182$:
                            924 ;	radio/radio.c:136: if (6*((gout[2]+2)/3+2) != elen) {
   2ECC 90 04 65      [24]  925 	mov	dptr,#(_radio_receive_packet_gout_1_135 + 0x0002)
   2ECF E0            [24]  926 	movx	a,@dptr
   2ED0 FD            [12]  927 	mov	r5,a
   2ED1 7C 00         [12]  928 	mov	r4,#0x00
   2ED3 74 02         [12]  929 	mov	a,#0x02
   2ED5 2D            [12]  930 	add	a,r5
   2ED6 FD            [12]  931 	mov	r5,a
   2ED7 E4            [12]  932 	clr	a
   2ED8 3C            [12]  933 	addc	a,r4
   2ED9 FC            [12]  934 	mov	r4,a
   2EDA 90 05 E8      [24]  935 	mov	dptr,#__divsint_PARM_2
   2EDD 74 03         [12]  936 	mov	a,#0x03
   2EDF F0            [24]  937 	movx	@dptr,a
   2EE0 E4            [12]  938 	clr	a
   2EE1 A3            [24]  939 	inc	dptr
   2EE2 F0            [24]  940 	movx	@dptr,a
   2EE3 8D 82         [24]  941 	mov	dpl,r5
   2EE5 8C 83         [24]  942 	mov	dph,r4
   2EE7 C0 07         [24]  943 	push	ar7
   2EE9 C0 06         [24]  944 	push	ar6
   2EEB 12 61 87      [24]  945 	lcall	__divsint
   2EEE E5 82         [12]  946 	mov	a,dpl
   2EF0 85 83 F0      [24]  947 	mov	b,dph
   2EF3 90 05 CB      [24]  948 	mov	dptr,#__mulint_PARM_2
   2EF6 24 02         [12]  949 	add	a,#0x02
   2EF8 F0            [24]  950 	movx	@dptr,a
   2EF9 E4            [12]  951 	clr	a
   2EFA 35 F0         [12]  952 	addc	a,b
   2EFC A3            [24]  953 	inc	dptr
   2EFD F0            [24]  954 	movx	@dptr,a
   2EFE 90 00 06      [24]  955 	mov	dptr,#0x0006
   2F01 12 5E 7B      [24]  956 	lcall	__mulint
   2F04 AC 82         [24]  957 	mov	r4,dpl
   2F06 AD 83         [24]  958 	mov	r5,dph
   2F08 D0 06         [24]  959 	pop	ar6
   2F0A D0 07         [24]  960 	pop	ar7
   2F0C 8F 02         [24]  961 	mov	ar2,r7
   2F0E 7B 00         [12]  962 	mov	r3,#0x00
   2F10 EC            [12]  963 	mov	a,r4
   2F11 B5 02 06      [24]  964 	cjne	a,ar2,00183$
   2F14 ED            [12]  965 	mov	a,r5
   2F15 B5 03 02      [24]  966 	cjne	a,ar3,00183$
   2F18 80 03         [24]  967 	sjmp	00184$
   2F1A                     968 00183$:
   2F1A 02 30 12      [24]  969 	ljmp	00126$
   2F1D                     970 00184$:
                            971 ;	radio/radio.c:144: errcount += golay_decode(6, &buf[6], gout);
   2F1D 78 8A         [12]  972 	mov	r0,#_radio_receive_packet_PARM_2
   2F1F 79 2D         [12]  973 	mov	r1,#_golay_decode_PARM_2
   2F21 E2            [24]  974 	movx	a,@r0
   2F22 24 06         [12]  975 	add	a,#0x06
   2F24 F3            [24]  976 	movx	@r1,a
   2F25 08            [12]  977 	inc	r0
   2F26 E2            [24]  978 	movx	a,@r0
   2F27 34 00         [12]  979 	addc	a,#0x00
   2F29 09            [12]  980 	inc	r1
   2F2A F3            [24]  981 	movx	@r1,a
   2F2B 78 2F         [12]  982 	mov	r0,#_golay_decode_PARM_3
   2F2D 74 63         [12]  983 	mov	a,#_radio_receive_packet_gout_1_135
   2F2F F2            [24]  984 	movx	@r0,a
   2F30 08            [12]  985 	inc	r0
   2F31 74 04         [12]  986 	mov	a,#(_radio_receive_packet_gout_1_135 >> 8)
   2F33 F2            [24]  987 	movx	@r0,a
   2F34 75 82 06      [24]  988 	mov	dpl,#0x06
   2F37 C0 07         [24]  989 	push	ar7
   2F39 C0 06         [24]  990 	push	ar6
   2F3B 12 10 B6      [24]  991 	lcall	_golay_decode
   2F3E AD 82         [24]  992 	mov	r5,dpl
   2F40 D0 06         [24]  993 	pop	ar6
   2F42 D0 07         [24]  994 	pop	ar7
   2F44 ED            [12]  995 	mov	a,r5
   2F45 2E            [12]  996 	add	a,r6
   2F46 FE            [12]  997 	mov	r6,a
                            998 ;	radio/radio.c:145: crc1 = gout[0] | (((uint16_t)gout[1])<<8);
   2F47 90 04 63      [24]  999 	mov	dptr,#_radio_receive_packet_gout_1_135
   2F4A E0            [24] 1000 	movx	a,@dptr
   2F4B FD            [12] 1001 	mov	r5,a
   2F4C 90 04 64      [24] 1002 	mov	dptr,#(_radio_receive_packet_gout_1_135 + 0x0001)
   2F4F E0            [24] 1003 	movx	a,@dptr
   2F50 FB            [12] 1004 	mov	r3,a
   2F51 E4            [12] 1005 	clr	a
   2F52 FC            [12] 1006 	mov	r4,a
   2F53 FA            [12] 1007 	mov	r2,a
   2F54 4D            [12] 1008 	orl	a,r5
   2F55 F5 4C         [12] 1009 	mov	_radio_receive_packet_crc1_1_135,a
   2F57 EB            [12] 1010 	mov	a,r3
   2F58 4A            [12] 1011 	orl	a,r2
   2F59 F5 4D         [12] 1012 	mov	(_radio_receive_packet_crc1_1_135 + 1),a
                           1013 ;	radio/radio.c:147: if (elen != 12) {
   2F5B BF 0C 02      [24] 1014 	cjne	r7,#0x0C,00185$
   2F5E 80 2A         [24] 1015 	sjmp	00116$
   2F60                    1016 00185$:
                           1017 ;	radio/radio.c:148: errcount += golay_decode(elen-12, &buf[12], buf);
   2F60 EF            [12] 1018 	mov	a,r7
   2F61 24 F4         [12] 1019 	add	a,#0xF4
   2F63 FF            [12] 1020 	mov	r7,a
   2F64 78 8A         [12] 1021 	mov	r0,#_radio_receive_packet_PARM_2
   2F66 79 2D         [12] 1022 	mov	r1,#_golay_decode_PARM_2
   2F68 E2            [24] 1023 	movx	a,@r0
   2F69 24 0C         [12] 1024 	add	a,#0x0C
   2F6B F3            [24] 1025 	movx	@r1,a
   2F6C 08            [12] 1026 	inc	r0
   2F6D E2            [24] 1027 	movx	a,@r0
   2F6E 34 00         [12] 1028 	addc	a,#0x00
   2F70 09            [12] 1029 	inc	r1
   2F71 F3            [24] 1030 	movx	@r1,a
   2F72 78 8A         [12] 1031 	mov	r0,#_radio_receive_packet_PARM_2
   2F74 79 2F         [12] 1032 	mov	r1,#_golay_decode_PARM_3
   2F76 E2            [24] 1033 	movx	a,@r0
   2F77 F3            [24] 1034 	movx	@r1,a
   2F78 08            [12] 1035 	inc	r0
   2F79 E2            [24] 1036 	movx	a,@r0
   2F7A 09            [12] 1037 	inc	r1
   2F7B F3            [24] 1038 	movx	@r1,a
   2F7C 8F 82         [24] 1039 	mov	dpl,r7
   2F7E C0 06         [24] 1040 	push	ar6
   2F80 12 10 B6      [24] 1041 	lcall	_golay_decode
   2F83 AF 82         [24] 1042 	mov	r7,dpl
   2F85 D0 06         [24] 1043 	pop	ar6
   2F87 EF            [12] 1044 	mov	a,r7
   2F88 2E            [12] 1045 	add	a,r6
   2F89 FE            [12] 1046 	mov	r6,a
   2F8A                    1047 00116$:
                           1048 ;	radio/radio.c:151: *length = gout[2];
   2F8A 90 04 60      [24] 1049 	mov	dptr,#_radio_receive_packet_length_1_134
   2F8D E0            [24] 1050 	movx	a,@dptr
   2F8E FA            [12] 1051 	mov	r2,a
   2F8F A3            [24] 1052 	inc	dptr
   2F90 E0            [24] 1053 	movx	a,@dptr
   2F91 FB            [12] 1054 	mov	r3,a
   2F92 A3            [24] 1055 	inc	dptr
   2F93 E0            [24] 1056 	movx	a,@dptr
   2F94 FF            [12] 1057 	mov	r7,a
   2F95 90 04 65      [24] 1058 	mov	dptr,#(_radio_receive_packet_gout_1_135 + 0x0002)
   2F98 E0            [24] 1059 	movx	a,@dptr
   2F99 FD            [12] 1060 	mov	r5,a
   2F9A 8A 82         [24] 1061 	mov	dpl,r2
   2F9C 8B 83         [24] 1062 	mov	dph,r3
   2F9E 8F F0         [24] 1063 	mov	b,r7
   2FA0 12 5E 30      [24] 1064 	lcall	__gptrput
                           1065 ;	radio/radio.c:153: crc2 = crc16(*length, buf);
   2FA3 78 8A         [12] 1066 	mov	r0,#_radio_receive_packet_PARM_2
   2FA5 E2            [24] 1067 	movx	a,@r0
   2FA6 F5 0C         [12] 1068 	mov	_crc16_PARM_2,a
   2FA8 08            [12] 1069 	inc	r0
   2FA9 E2            [24] 1070 	movx	a,@r0
   2FAA F5 0D         [12] 1071 	mov	(_crc16_PARM_2 + 1),a
   2FAC 8D 82         [24] 1072 	mov	dpl,r5
   2FAE C0 06         [24] 1073 	push	ar6
   2FB0 12 0A 2A      [24] 1074 	lcall	_crc16
   2FB3 AD 82         [24] 1075 	mov	r5,dpl
   2FB5 AF 83         [24] 1076 	mov	r7,dph
   2FB7 D0 06         [24] 1077 	pop	ar6
                           1078 ;	radio/radio.c:155: if (crc1 != crc2) {
   2FB9 ED            [12] 1079 	mov	a,r5
   2FBA B5 4C 55      [24] 1080 	cjne	a,_radio_receive_packet_crc1_1_135,00126$
   2FBD EF            [12] 1081 	mov	a,r7
   2FBE B5 4D 51      [24] 1082 	cjne	a,(_radio_receive_packet_crc1_1_135 + 1),00126$
                           1083 ;	radio/radio.c:165: if (errcount != 0) {
   2FC1 EE            [12] 1084 	mov	a,r6
   2FC2 60 4C         [24] 1085 	jz	00125$
                           1086 ;	radio/radio.c:166: if ((uint16_t)(0xFFFF - errcount) > errors.corrected_errors) {
   2FC4 7F 00         [12] 1087 	mov	r7,#0x00
   2FC6 74 FF         [12] 1088 	mov	a,#0xFF
   2FC8 C3            [12] 1089 	clr	c
   2FC9 9E            [12] 1090 	subb	a,r6
   2FCA FC            [12] 1091 	mov	r4,a
   2FCB 74 FF         [12] 1092 	mov	a,#0xFF
   2FCD 9F            [12] 1093 	subb	a,r7
   2FCE FD            [12] 1094 	mov	r5,a
   2FCF 78 3C         [12] 1095 	mov	r0,#(_errors + 0x0008)
   2FD1 E2            [24] 1096 	movx	a,@r0
   2FD2 FA            [12] 1097 	mov	r2,a
   2FD3 08            [12] 1098 	inc	r0
   2FD4 E2            [24] 1099 	movx	a,@r0
   2FD5 FB            [12] 1100 	mov	r3,a
   2FD6 C3            [12] 1101 	clr	c
   2FD7 EA            [12] 1102 	mov	a,r2
   2FD8 9C            [12] 1103 	subb	a,r4
   2FD9 EB            [12] 1104 	mov	a,r3
   2FDA 9D            [12] 1105 	subb	a,r5
   2FDB 50 0F         [24] 1106 	jnc	00120$
                           1107 ;	radio/radio.c:167: errors.corrected_errors += errcount;
   2FDD EE            [12] 1108 	mov	a,r6
   2FDE 2A            [12] 1109 	add	a,r2
   2FDF FE            [12] 1110 	mov	r6,a
   2FE0 EF            [12] 1111 	mov	a,r7
   2FE1 3B            [12] 1112 	addc	a,r3
   2FE2 FF            [12] 1113 	mov	r7,a
   2FE3 78 3C         [12] 1114 	mov	r0,#(_errors + 0x0008)
   2FE5 EE            [12] 1115 	mov	a,r6
   2FE6 F2            [24] 1116 	movx	@r0,a
   2FE7 08            [12] 1117 	inc	r0
   2FE8 EF            [12] 1118 	mov	a,r7
   2FE9 F2            [24] 1119 	movx	@r0,a
   2FEA 80 09         [24] 1120 	sjmp	00121$
   2FEC                    1121 00120$:
                           1122 ;	radio/radio.c:169: errors.corrected_errors = 0xFFFF;
   2FEC 78 3C         [12] 1123 	mov	r0,#(_errors + 0x0008)
   2FEE 74 FF         [12] 1124 	mov	a,#0xFF
   2FF0 F2            [24] 1125 	movx	@r0,a
   2FF1 08            [12] 1126 	inc	r0
   2FF2 74 FF         [12] 1127 	mov	a,#0xFF
   2FF4 F2            [24] 1128 	movx	@r0,a
   2FF5                    1129 00121$:
                           1130 ;	radio/radio.c:171: if (errors.corrected_packets != 0xFFFF) {
   2FF5 78 3E         [12] 1131 	mov	r0,#(_errors + 0x000a)
   2FF7 E2            [24] 1132 	movx	a,@r0
   2FF8 FE            [12] 1133 	mov	r6,a
   2FF9 08            [12] 1134 	inc	r0
   2FFA E2            [24] 1135 	movx	a,@r0
   2FFB FF            [12] 1136 	mov	r7,a
   2FFC BE FF 05      [24] 1137 	cjne	r6,#0xFF,00190$
   2FFF BF FF 02      [24] 1138 	cjne	r7,#0xFF,00190$
   3002 80 0C         [24] 1139 	sjmp	00125$
   3004                    1140 00190$:
                           1141 ;	radio/radio.c:172: errors.corrected_packets++;
   3004 0E            [12] 1142 	inc	r6
   3005 BE 00 01      [24] 1143 	cjne	r6,#0x00,00191$
   3008 0F            [12] 1144 	inc	r7
   3009                    1145 00191$:
   3009 78 3E         [12] 1146 	mov	r0,#(_errors + 0x000a)
   300B EE            [12] 1147 	mov	a,r6
   300C F2            [24] 1148 	movx	@r0,a
   300D 08            [12] 1149 	inc	r0
   300E EF            [12] 1150 	mov	a,r7
   300F F2            [24] 1151 	movx	@r0,a
   3010                    1152 00125$:
                           1153 ;	radio/radio.c:176: return true;
   3010 D3            [12] 1154 	setb	c
                           1155 ;	radio/radio.c:178: failed:
   3011 22            [24] 1156 	ret
   3012                    1157 00126$:
                           1158 ;	radio/radio.c:179: if (errors.rx_errors != 0xFFFF) {
   3012 78 34         [12] 1159 	mov	r0,#_errors
   3014 E2            [24] 1160 	movx	a,@r0
   3015 FE            [12] 1161 	mov	r6,a
   3016 08            [12] 1162 	inc	r0
   3017 E2            [24] 1163 	movx	a,@r0
   3018 FF            [12] 1164 	mov	r7,a
   3019 BE FF 05      [24] 1165 	cjne	r6,#0xFF,00192$
   301C BF FF 02      [24] 1166 	cjne	r7,#0xFF,00192$
   301F 80 0C         [24] 1167 	sjmp	00128$
   3021                    1168 00192$:
                           1169 ;	radio/radio.c:180: errors.rx_errors++;
   3021 0E            [12] 1170 	inc	r6
   3022 BE 00 01      [24] 1171 	cjne	r6,#0x00,00193$
   3025 0F            [12] 1172 	inc	r7
   3026                    1173 00193$:
   3026 78 34         [12] 1174 	mov	r0,#_errors
   3028 EE            [12] 1175 	mov	a,r6
   3029 F2            [24] 1176 	movx	@r0,a
   302A 08            [12] 1177 	inc	r0
   302B EF            [12] 1178 	mov	a,r7
   302C F2            [24] 1179 	movx	@r0,a
   302D                    1180 00128$:
                           1181 ;	radio/radio.c:182: return false;
   302D C3            [12] 1182 	clr	c
   302E 22            [24] 1183 	ret
                           1184 ;------------------------------------------------------------
                           1185 ;Allocation info for local variables in function 'radio_write_transmit_fifo'
                           1186 ;------------------------------------------------------------
                           1187 ;n                         Allocated to registers r7 
                           1188 ;------------------------------------------------------------
                           1189 ;	radio/radio.c:189: radio_write_transmit_fifo(register uint8_t n, __xdata uint8_t * __pdata buffer)
                           1190 ;	-----------------------------------------
                           1191 ;	 function radio_write_transmit_fifo
                           1192 ;	-----------------------------------------
   302F                    1193 _radio_write_transmit_fifo:
   302F AF 82         [24] 1194 	mov	r7,dpl
                           1195 ;	radio/radio.c:191: NSS1 = 0;
   3031 C2 94         [12] 1196 	clr	_NSS1
                           1197 ;	radio/radio.c:192: SPIF1 = 0;
   3033 C2 B7         [12] 1198 	clr	_SPIF1
                           1199 ;	radio/radio.c:193: SPI1DAT = (0x80 | EZRADIOPRO_FIFO_ACCESS);
   3035 75 86 FF      [24] 1200 	mov	_SPI1DAT,#0xFF
                           1201 ;	radio/radio.c:195: while (n--) {
   3038 78 8C         [12] 1202 	mov	r0,#_radio_write_transmit_fifo_PARM_2
   303A E2            [24] 1203 	movx	a,@r0
   303B FD            [12] 1204 	mov	r5,a
   303C 08            [12] 1205 	inc	r0
   303D E2            [24] 1206 	movx	a,@r0
   303E FE            [12] 1207 	mov	r6,a
   303F                    1208 00104$:
   303F 8F 04         [24] 1209 	mov	ar4,r7
   3041 1F            [12] 1210 	dec	r7
   3042 EC            [12] 1211 	mov	a,r4
   3043 60 11         [24] 1212 	jz	00107$
                           1213 ;	radio/radio.c:196: while (!TXBMT1) /* noop */;
   3045                    1214 00101$:
   3045 30 B1 FD      [24] 1215 	jnb	_TXBMT1,00101$
                           1216 ;	radio/radio.c:197: SPI1DAT = *buffer++;
   3048 8D 82         [24] 1217 	mov	dpl,r5
   304A 8E 83         [24] 1218 	mov	dph,r6
   304C E0            [24] 1219 	movx	a,@dptr
   304D F5 86         [12] 1220 	mov	_SPI1DAT,a
   304F A3            [24] 1221 	inc	dptr
   3050 AD 82         [24] 1222 	mov	r5,dpl
   3052 AE 83         [24] 1223 	mov	r6,dph
                           1224 ;	radio/radio.c:200: while (!TXBMT1) /* noop */;
   3054 80 E9         [24] 1225 	sjmp	00104$
   3056                    1226 00107$:
   3056 30 B1 FD      [24] 1227 	jnb	_TXBMT1,00107$
                           1228 ;	radio/radio.c:201: while ((SPI1CFG & 0x80) == 0x80);
   3059                    1229 00110$:
   3059 74 80         [12] 1230 	mov	a,#0x80
   305B 55 84         [12] 1231 	anl	a,_SPI1CFG
   305D FF            [12] 1232 	mov	r7,a
   305E BF 80 02      [24] 1233 	cjne	r7,#0x80,00137$
   3061 80 F6         [24] 1234 	sjmp	00110$
   3063                    1235 00137$:
                           1236 ;	radio/radio.c:203: SPIF1 = 0;
   3063 C2 B7         [12] 1237 	clr	_SPIF1
                           1238 ;	radio/radio.c:204: NSS1 = 1;
   3065 D2 94         [12] 1239 	setb	_NSS1
   3067 22            [24] 1240 	ret
                           1241 ;------------------------------------------------------------
                           1242 ;Allocation info for local variables in function 'radio_receive_in_progress'
                           1243 ;------------------------------------------------------------
                           1244 ;	radio/radio.c:210: radio_receive_in_progress(void)
                           1245 ;	-----------------------------------------
                           1246 ;	 function radio_receive_in_progress
                           1247 ;	-----------------------------------------
   3068                    1248 _radio_receive_in_progress:
                           1249 ;	radio/radio.c:212: if (packet_received ||
   3068 20 16 05      [24] 1250 	jb	_packet_received,00101$
                           1251 ;	radio/radio.c:213: partial_packet_length != 0) {
   306B 78 7A         [12] 1252 	mov	r0,#_partial_packet_length
   306D E2            [24] 1253 	movx	a,@r0
   306E 60 02         [24] 1254 	jz	00102$
   3070                    1255 00101$:
                           1256 ;	radio/radio.c:214: return true;
   3070 D3            [12] 1257 	setb	c
   3071 22            [24] 1258 	ret
   3072                    1259 00102$:
                           1260 ;	radio/radio.c:218: if (register_read(EZRADIOPRO_EZMAC_STATUS) & EZRADIOPRO_PKRX) {
   3072 75 82 31      [24] 1261 	mov	dpl,#0x31
   3075 12 39 46      [24] 1262 	lcall	_register_read
   3078 E5 82         [12] 1263 	mov	a,dpl
   307A 30 E4 02      [24] 1264 	jnb	acc.4,00105$
                           1265 ;	radio/radio.c:219: return true;
   307D D3            [12] 1266 	setb	c
   307E 22            [24] 1267 	ret
   307F                    1268 00105$:
                           1269 ;	radio/radio.c:221: return false;
   307F C3            [12] 1270 	clr	c
   3080 22            [24] 1271 	ret
                           1272 ;------------------------------------------------------------
                           1273 ;Allocation info for local variables in function 'radio_preamble_detected'
                           1274 ;------------------------------------------------------------
                           1275 ;	radio/radio.c:228: radio_preamble_detected(void)
                           1276 ;	-----------------------------------------
                           1277 ;	 function radio_preamble_detected
                           1278 ;	-----------------------------------------
   3081                    1279 _radio_preamble_detected:
                           1280 ;	radio/radio.c:230: EX0_SAVE_DISABLE;
   3081 A2 A8         [12] 1281 	mov	c,_EX0
   3083 92 18         [24] 1282 	mov	_radio_preamble_detected_EX0_saved_1_157,c
   3085 C2 A8         [12] 1283 	clr	_EX0
                           1284 ;	radio/radio.c:231: if (preamble_detected) {
                           1285 ;	radio/radio.c:232: preamble_detected = 0;
   3087 10 17 02      [24] 1286 	jbc	_preamble_detected,00108$
   308A 80 06         [24] 1287 	sjmp	00102$
   308C                    1288 00108$:
                           1289 ;	radio/radio.c:233: EX0_RESTORE;
   308C A2 18         [12] 1290 	mov	c,_radio_preamble_detected_EX0_saved_1_157
   308E 92 A8         [24] 1291 	mov	_EX0,c
                           1292 ;	radio/radio.c:234: return true;
   3090 D3            [12] 1293 	setb	c
   3091 22            [24] 1294 	ret
   3092                    1295 00102$:
                           1296 ;	radio/radio.c:236: EX0_RESTORE;
   3092 A2 18         [12] 1297 	mov	c,_radio_preamble_detected_EX0_saved_1_157
   3094 92 A8         [24] 1298 	mov	_EX0,c
                           1299 ;	radio/radio.c:237: return false;
   3096 C3            [12] 1300 	clr	c
   3097 22            [24] 1301 	ret
                           1302 ;------------------------------------------------------------
                           1303 ;Allocation info for local variables in function 'radio_last_rssi'
                           1304 ;------------------------------------------------------------
                           1305 ;	radio/radio.c:245: radio_last_rssi(void)
                           1306 ;	-----------------------------------------
                           1307 ;	 function radio_last_rssi
                           1308 ;	-----------------------------------------
   3098                    1309 _radio_last_rssi:
                           1310 ;	radio/radio.c:247: return last_rssi;
   3098 78 7B         [12] 1311 	mov	r0,#_last_rssi
   309A E2            [24] 1312 	movx	a,@r0
   309B F5 82         [12] 1313 	mov	dpl,a
   309D 22            [24] 1314 	ret
                           1315 ;------------------------------------------------------------
                           1316 ;Allocation info for local variables in function 'radio_current_rssi'
                           1317 ;------------------------------------------------------------
                           1318 ;	radio/radio.c:253: radio_current_rssi(void)
                           1319 ;	-----------------------------------------
                           1320 ;	 function radio_current_rssi
                           1321 ;	-----------------------------------------
   309E                    1322 _radio_current_rssi:
                           1323 ;	radio/radio.c:255: return register_read(EZRADIOPRO_RECEIVED_SIGNAL_STRENGTH_INDICATOR);
   309E 75 82 26      [24] 1324 	mov	dpl,#0x26
   30A1 02 39 46      [24] 1325 	ljmp	_register_read
                           1326 ;------------------------------------------------------------
                           1327 ;Allocation info for local variables in function 'radio_air_rate'
                           1328 ;------------------------------------------------------------
                           1329 ;	radio/radio.c:261: radio_air_rate(void)
                           1330 ;	-----------------------------------------
                           1331 ;	 function radio_air_rate
                           1332 ;	-----------------------------------------
   30A4                    1333 _radio_air_rate:
                           1334 ;	radio/radio.c:263: return settings.air_data_rate;
   30A4 78 86         [12] 1335 	mov	r0,#(_settings + 0x0008)
   30A6 E2            [24] 1336 	movx	a,@r0
   30A7 F5 82         [12] 1337 	mov	dpl,a
   30A9 22            [24] 1338 	ret
                           1339 ;------------------------------------------------------------
                           1340 ;Allocation info for local variables in function 'radio_clear_transmit_fifo'
                           1341 ;------------------------------------------------------------
                           1342 ;control                   Allocated to registers r7 
                           1343 ;------------------------------------------------------------
                           1344 ;	radio/radio.c:269: radio_clear_transmit_fifo(void)
                           1345 ;	-----------------------------------------
                           1346 ;	 function radio_clear_transmit_fifo
                           1347 ;	-----------------------------------------
   30AA                    1348 _radio_clear_transmit_fifo:
                           1349 ;	radio/radio.c:272: control = register_read(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2);
   30AA 75 82 08      [24] 1350 	mov	dpl,#0x08
   30AD 12 39 46      [24] 1351 	lcall	_register_read
   30B0 AF 82         [24] 1352 	mov	r7,dpl
                           1353 ;	radio/radio.c:273: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, control | EZRADIOPRO_FFCLRTX);
   30B2 74 01         [12] 1354 	mov	a,#0x01
   30B4 4F            [12] 1355 	orl	a,r7
   30B5 FE            [12] 1356 	mov	r6,a
   30B6 C0 07         [24] 1357 	push	ar7
   30B8 C0 06         [24] 1358 	push	ar6
   30BA 75 82 08      [24] 1359 	mov	dpl,#0x08
   30BD 12 39 16      [24] 1360 	lcall	_register_write
   30C0 15 81         [12] 1361 	dec	sp
   30C2 D0 07         [24] 1362 	pop	ar7
                           1363 ;	radio/radio.c:274: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, control & ~EZRADIOPRO_FFCLRTX);
   30C4 53 07 FE      [24] 1364 	anl	ar7,#0xFE
   30C7 C0 07         [24] 1365 	push	ar7
   30C9 75 82 08      [24] 1366 	mov	dpl,#0x08
   30CC 12 39 16      [24] 1367 	lcall	_register_write
   30CF 15 81         [12] 1368 	dec	sp
   30D1 22            [24] 1369 	ret
                           1370 ;------------------------------------------------------------
                           1371 ;Allocation info for local variables in function 'radio_clear_receive_fifo'
                           1372 ;------------------------------------------------------------
                           1373 ;control                   Allocated to registers r7 
                           1374 ;------------------------------------------------------------
                           1375 ;	radio/radio.c:281: radio_clear_receive_fifo(void) __reentrant
                           1376 ;	-----------------------------------------
                           1377 ;	 function radio_clear_receive_fifo
                           1378 ;	-----------------------------------------
   30D2                    1379 _radio_clear_receive_fifo:
                           1380 ;	radio/radio.c:284: control = register_read(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2);
   30D2 75 82 08      [24] 1381 	mov	dpl,#0x08
   30D5 12 39 46      [24] 1382 	lcall	_register_read
   30D8 AF 82         [24] 1383 	mov	r7,dpl
                           1384 ;	radio/radio.c:285: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, control | EZRADIOPRO_FFCLRRX);
   30DA 74 02         [12] 1385 	mov	a,#0x02
   30DC 4F            [12] 1386 	orl	a,r7
   30DD FE            [12] 1387 	mov	r6,a
   30DE C0 07         [24] 1388 	push	ar7
   30E0 C0 06         [24] 1389 	push	ar6
   30E2 75 82 08      [24] 1390 	mov	dpl,#0x08
   30E5 12 39 16      [24] 1391 	lcall	_register_write
   30E8 15 81         [12] 1392 	dec	sp
   30EA D0 07         [24] 1393 	pop	ar7
                           1394 ;	radio/radio.c:286: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, control & ~EZRADIOPRO_FFCLRRX);
   30EC 53 07 FD      [24] 1395 	anl	ar7,#0xFD
   30EF C0 07         [24] 1396 	push	ar7
   30F1 75 82 08      [24] 1397 	mov	dpl,#0x08
   30F4 12 39 16      [24] 1398 	lcall	_register_write
   30F7 15 81         [12] 1399 	dec	sp
   30F9 22            [24] 1400 	ret
                           1401 ;------------------------------------------------------------
                           1402 ;Allocation info for local variables in function 'radio_transmit_simple'
                           1403 ;------------------------------------------------------------
                           1404 ;length                    Allocated to registers r7 
                           1405 ;n                         Allocated to registers r6 
                           1406 ;status                    Allocated to registers r3 
                           1407 ;------------------------------------------------------------
                           1408 ;	radio/radio.c:298: radio_transmit_simple(__data uint8_t length, __xdata uint8_t * __pdata buf, __pdata uint16_t timeout_ticks)
                           1409 ;	-----------------------------------------
                           1410 ;	 function radio_transmit_simple
                           1411 ;	-----------------------------------------
   30FA                    1412 _radio_transmit_simple:
                           1413 ;	radio/radio.c:304: if (length > sizeof(radio_buffer)) {
   30FA E5 82         [12] 1414 	mov	a,dpl
   30FC FF            [12] 1415 	mov	r7,a
   30FD 24 03         [12] 1416 	add	a,#0xff - 0xFC
   30FF 50 19         [24] 1417 	jnc	00102$
                           1418 ;	radio/radio.c:305: panic("oversized packet");
   3101 C0 07         [24] 1419 	push	ar7
   3103 74 C2         [12] 1420 	mov	a,#__str_0
   3105 C0 E0         [24] 1421 	push	acc
   3107 74 C9         [12] 1422 	mov	a,#(__str_0 >> 8)
   3109 C0 E0         [24] 1423 	push	acc
   310B 74 80         [12] 1424 	mov	a,#0x80
   310D C0 E0         [24] 1425 	push	acc
   310F 12 11 F8      [24] 1426 	lcall	_panic
   3112 15 81         [12] 1427 	dec	sp
   3114 15 81         [12] 1428 	dec	sp
   3116 15 81         [12] 1429 	dec	sp
   3118 D0 07         [24] 1430 	pop	ar7
   311A                    1431 00102$:
                           1432 ;	radio/radio.c:308: radio_clear_transmit_fifo();
   311A C0 07         [24] 1433 	push	ar7
   311C 12 30 AA      [24] 1434 	lcall	_radio_clear_transmit_fifo
   311F D0 07         [24] 1435 	pop	ar7
                           1436 ;	radio/radio.c:310: register_write(EZRADIOPRO_TRANSMIT_PACKET_LENGTH, length);
   3121 C0 07         [24] 1437 	push	ar7
   3123 C0 07         [24] 1438 	push	ar7
   3125 75 82 3E      [24] 1439 	mov	dpl,#0x3E
   3128 12 39 16      [24] 1440 	lcall	_register_write
   312B 15 81         [12] 1441 	dec	sp
   312D D0 07         [24] 1442 	pop	ar7
                           1443 ;	radio/radio.c:313: n = length;
                           1444 ;	radio/radio.c:314: if (n > TX_FIFO_THRESHOLD_LOW) {
   312F EF            [12] 1445 	mov	a,r7
   3130 FE            [12] 1446 	mov	r6,a
   3131 24 DF         [12] 1447 	add	a,#0xff - 0x20
   3133 50 02         [24] 1448 	jnc	00104$
                           1449 ;	radio/radio.c:315: n = TX_FIFO_THRESHOLD_LOW;
   3135 7E 20         [12] 1450 	mov	r6,#0x20
   3137                    1451 00104$:
                           1452 ;	radio/radio.c:317: radio_write_transmit_fifo(n, buf);
   3137 78 8E         [12] 1453 	mov	r0,#_radio_transmit_simple_PARM_2
   3139 79 8C         [12] 1454 	mov	r1,#_radio_write_transmit_fifo_PARM_2
   313B E2            [24] 1455 	movx	a,@r0
   313C F3            [24] 1456 	movx	@r1,a
   313D 08            [12] 1457 	inc	r0
   313E E2            [24] 1458 	movx	a,@r0
   313F 09            [12] 1459 	inc	r1
   3140 F3            [24] 1460 	movx	@r1,a
   3141 8E 82         [24] 1461 	mov	dpl,r6
   3143 C0 07         [24] 1462 	push	ar7
   3145 C0 06         [24] 1463 	push	ar6
   3147 12 30 2F      [24] 1464 	lcall	_radio_write_transmit_fifo
   314A D0 06         [24] 1465 	pop	ar6
   314C D0 07         [24] 1466 	pop	ar7
                           1467 ;	radio/radio.c:318: length -= n;
   314E EF            [12] 1468 	mov	a,r7
   314F C3            [12] 1469 	clr	c
   3150 9E            [12] 1470 	subb	a,r6
   3151 FF            [12] 1471 	mov	r7,a
                           1472 ;	radio/radio.c:319: buf += n;
   3152 78 8E         [12] 1473 	mov	r0,#_radio_transmit_simple_PARM_2
   3154 E2            [24] 1474 	movx	a,@r0
   3155 2E            [12] 1475 	add	a,r6
   3156 F2            [24] 1476 	movx	@r0,a
   3157 08            [12] 1477 	inc	r0
   3158 E2            [24] 1478 	movx	a,@r0
   3159 34 00         [12] 1479 	addc	a,#0x00
   315B F2            [24] 1480 	movx	@r0,a
                           1481 ;	radio/radio.c:322: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0);
   315C C0 07         [24] 1482 	push	ar7
   315E E4            [12] 1483 	clr	a
   315F C0 E0         [24] 1484 	push	acc
   3161 75 82 05      [24] 1485 	mov	dpl,#0x05
   3164 12 39 16      [24] 1486 	lcall	_register_write
   3167 15 81         [12] 1487 	dec	sp
                           1488 ;	radio/radio.c:323: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, 0);
   3169 E4            [12] 1489 	clr	a
   316A C0 E0         [24] 1490 	push	acc
   316C 75 82 06      [24] 1491 	mov	dpl,#0x06
   316F 12 39 16      [24] 1492 	lcall	_register_write
   3172 15 81         [12] 1493 	dec	sp
                           1494 ;	radio/radio.c:325: preamble_detected = 0;
   3174 C2 17         [12] 1495 	clr	_preamble_detected
                           1496 ;	radio/radio.c:326: transmit_started = false;
   3176 C2 19         [12] 1497 	clr	_radio_transmit_simple_transmit_started_1_170
                           1498 ;	radio/radio.c:329: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_1, EZRADIOPRO_TXON | EZRADIOPRO_XTON);
   3178 74 09         [12] 1499 	mov	a,#0x09
   317A C0 E0         [24] 1500 	push	acc
   317C 75 82 07      [24] 1501 	mov	dpl,#0x07
   317F 12 39 16      [24] 1502 	lcall	_register_write
   3182 15 81         [12] 1503 	dec	sp
                           1504 ;	radio/radio.c:332: tstart = timer2_tick();
   3184 12 57 04      [24] 1505 	lcall	_timer2_tick
   3187 AC 82         [24] 1506 	mov	r4,dpl
   3189 AD 83         [24] 1507 	mov	r5,dph
   318B D0 07         [24] 1508 	pop	ar7
                           1509 ;	radio/radio.c:333: while ((uint16_t)(timer2_tick() - tstart) < timeout_ticks) {
   318D                    1510 00130$:
   318D C0 07         [24] 1511 	push	ar7
   318F C0 05         [24] 1512 	push	ar5
   3191 C0 04         [24] 1513 	push	ar4
   3193 12 57 04      [24] 1514 	lcall	_timer2_tick
   3196 AA 82         [24] 1515 	mov	r2,dpl
   3198 AB 83         [24] 1516 	mov	r3,dph
   319A D0 04         [24] 1517 	pop	ar4
   319C D0 05         [24] 1518 	pop	ar5
   319E D0 07         [24] 1519 	pop	ar7
   31A0 EA            [12] 1520 	mov	a,r2
   31A1 C3            [12] 1521 	clr	c
   31A2 9C            [12] 1522 	subb	a,r4
   31A3 FA            [12] 1523 	mov	r2,a
   31A4 EB            [12] 1524 	mov	a,r3
   31A5 9D            [12] 1525 	subb	a,r5
   31A6 FB            [12] 1526 	mov	r3,a
   31A7 78 90         [12] 1527 	mov	r0,#_radio_transmit_simple_PARM_3
   31A9 C3            [12] 1528 	clr	c
   31AA E2            [24] 1529 	movx	a,@r0
   31AB F5 F0         [12] 1530 	mov	b,a
   31AD EA            [12] 1531 	mov	a,r2
   31AE 95 F0         [12] 1532 	subb	a,b
   31B0 08            [12] 1533 	inc	r0
   31B1 E2            [24] 1534 	movx	a,@r0
   31B2 F5 F0         [12] 1535 	mov	b,a
   31B4 EB            [12] 1536 	mov	a,r3
   31B5 95 F0         [12] 1537 	subb	a,b
   31B7 40 03         [24] 1538 	jc	00199$
   31B9 02 32 C6      [24] 1539 	ljmp	00132$
   31BC                    1540 00199$:
                           1541 ;	radio/radio.c:337: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_1);
   31BC 75 82 03      [24] 1542 	mov	dpl,#0x03
   31BF C0 07         [24] 1543 	push	ar7
   31C1 C0 05         [24] 1544 	push	ar5
   31C3 C0 04         [24] 1545 	push	ar4
   31C5 12 39 46      [24] 1546 	lcall	_register_read
   31C8 AB 82         [24] 1547 	mov	r3,dpl
   31CA D0 04         [24] 1548 	pop	ar4
   31CC D0 05         [24] 1549 	pop	ar5
   31CE D0 07         [24] 1550 	pop	ar7
                           1551 ;	radio/radio.c:338: if (transmit_started && length != 0 && (status & EZRADIOPRO_ITXFFAEM)) {
   31D0 30 19 40      [24] 1552 	jnb	_radio_transmit_simple_transmit_started_1_170,00108$
   31D3 EF            [12] 1553 	mov	a,r7
   31D4 60 3D         [24] 1554 	jz	00108$
   31D6 EB            [12] 1555 	mov	a,r3
   31D7 30 E5 39      [24] 1556 	jnb	acc.5,00108$
                           1557 ;	radio/radio.c:345: n = 4;
   31DA 7E 04         [12] 1558 	mov	r6,#0x04
                           1559 ;	radio/radio.c:346: if (n > length) {
   31DC BF 04 00      [24] 1560 	cjne	r7,#0x04,00203$
   31DF                    1561 00203$:
   31DF 50 02         [24] 1562 	jnc	00106$
                           1563 ;	radio/radio.c:347: n = length;
   31E1 8F 06         [24] 1564 	mov	ar6,r7
   31E3                    1565 00106$:
                           1566 ;	radio/radio.c:349: radio_write_transmit_fifo(n, buf);
   31E3 78 8E         [12] 1567 	mov	r0,#_radio_transmit_simple_PARM_2
   31E5 79 8C         [12] 1568 	mov	r1,#_radio_write_transmit_fifo_PARM_2
   31E7 E2            [24] 1569 	movx	a,@r0
   31E8 F3            [24] 1570 	movx	@r1,a
   31E9 08            [12] 1571 	inc	r0
   31EA E2            [24] 1572 	movx	a,@r0
   31EB 09            [12] 1573 	inc	r1
   31EC F3            [24] 1574 	movx	@r1,a
   31ED 8E 82         [24] 1575 	mov	dpl,r6
   31EF C0 07         [24] 1576 	push	ar7
   31F1 C0 06         [24] 1577 	push	ar6
   31F3 C0 05         [24] 1578 	push	ar5
   31F5 C0 04         [24] 1579 	push	ar4
   31F7 12 30 2F      [24] 1580 	lcall	_radio_write_transmit_fifo
   31FA D0 04         [24] 1581 	pop	ar4
   31FC D0 05         [24] 1582 	pop	ar5
   31FE D0 06         [24] 1583 	pop	ar6
   3200 D0 07         [24] 1584 	pop	ar7
                           1585 ;	radio/radio.c:350: length -= n;
   3202 EF            [12] 1586 	mov	a,r7
   3203 C3            [12] 1587 	clr	c
   3204 9E            [12] 1588 	subb	a,r6
   3205 FF            [12] 1589 	mov	r7,a
                           1590 ;	radio/radio.c:351: buf += n;
   3206 78 8E         [12] 1591 	mov	r0,#_radio_transmit_simple_PARM_2
   3208 E2            [24] 1592 	movx	a,@r0
   3209 2E            [12] 1593 	add	a,r6
   320A F2            [24] 1594 	movx	@r0,a
   320B 08            [12] 1595 	inc	r0
   320C E2            [24] 1596 	movx	a,@r0
   320D 34 00         [12] 1597 	addc	a,#0x00
   320F F2            [24] 1598 	movx	@r0,a
                           1599 ;	radio/radio.c:352: continue;
   3210 02 31 8D      [24] 1600 	ljmp	00130$
   3213                    1601 00108$:
                           1602 ;	radio/radio.c:354: if (transmit_started && length != 0 && (status & EZRADIOPRO_ITXFFAFULL) == 0) {
   3213 30 19 40      [24] 1603 	jnb	_radio_transmit_simple_transmit_started_1_170,00114$
   3216 EF            [12] 1604 	mov	a,r7
   3217 60 3D         [24] 1605 	jz	00114$
   3219 EB            [12] 1606 	mov	a,r3
   321A 20 E6 39      [24] 1607 	jb	acc.6,00114$
                           1608 ;	radio/radio.c:358: n = 4;
   321D 7E 04         [12] 1609 	mov	r6,#0x04
                           1610 ;	radio/radio.c:359: if (n > length) {
   321F BF 04 00      [24] 1611 	cjne	r7,#0x04,00208$
   3222                    1612 00208$:
   3222 50 02         [24] 1613 	jnc	00112$
                           1614 ;	radio/radio.c:360: n = length;
   3224 8F 06         [24] 1615 	mov	ar6,r7
   3226                    1616 00112$:
                           1617 ;	radio/radio.c:362: radio_write_transmit_fifo(n, buf);
   3226 78 8E         [12] 1618 	mov	r0,#_radio_transmit_simple_PARM_2
   3228 79 8C         [12] 1619 	mov	r1,#_radio_write_transmit_fifo_PARM_2
   322A E2            [24] 1620 	movx	a,@r0
   322B F3            [24] 1621 	movx	@r1,a
   322C 08            [12] 1622 	inc	r0
   322D E2            [24] 1623 	movx	a,@r0
   322E 09            [12] 1624 	inc	r1
   322F F3            [24] 1625 	movx	@r1,a
   3230 8E 82         [24] 1626 	mov	dpl,r6
   3232 C0 07         [24] 1627 	push	ar7
   3234 C0 06         [24] 1628 	push	ar6
   3236 C0 05         [24] 1629 	push	ar5
   3238 C0 04         [24] 1630 	push	ar4
   323A 12 30 2F      [24] 1631 	lcall	_radio_write_transmit_fifo
   323D D0 04         [24] 1632 	pop	ar4
   323F D0 05         [24] 1633 	pop	ar5
   3241 D0 06         [24] 1634 	pop	ar6
   3243 D0 07         [24] 1635 	pop	ar7
                           1636 ;	radio/radio.c:363: length -= n;
   3245 EF            [12] 1637 	mov	a,r7
   3246 C3            [12] 1638 	clr	c
   3247 9E            [12] 1639 	subb	a,r6
   3248 FF            [12] 1640 	mov	r7,a
                           1641 ;	radio/radio.c:364: buf += n;
   3249 78 8E         [12] 1642 	mov	r0,#_radio_transmit_simple_PARM_2
   324B E2            [24] 1643 	movx	a,@r0
   324C 2E            [12] 1644 	add	a,r6
   324D F2            [24] 1645 	movx	@r0,a
   324E 08            [12] 1646 	inc	r0
   324F E2            [24] 1647 	movx	a,@r0
   3250 34 00         [12] 1648 	addc	a,#0x00
   3252 F2            [24] 1649 	movx	@r0,a
                           1650 ;	radio/radio.c:365: continue;
   3253 02 31 8D      [24] 1651 	ljmp	00130$
   3256                    1652 00114$:
                           1653 ;	radio/radio.c:368: if (status & EZRADIOPRO_IFFERR) {
   3256 EB            [12] 1654 	mov	a,r3
   3257 30 E7 20      [24] 1655 	jnb	acc.7,00120$
                           1656 ;	radio/radio.c:370: radio_clear_transmit_fifo();
   325A 12 30 AA      [24] 1657 	lcall	_radio_clear_transmit_fifo
                           1658 ;	radio/radio.c:372: if (errors.tx_errors != 0xFFFF) {
   325D 78 36         [12] 1659 	mov	r0,#(_errors + 0x0002)
   325F E2            [24] 1660 	movx	a,@r0
   3260 FA            [12] 1661 	mov	r2,a
   3261 08            [12] 1662 	inc	r0
   3262 E2            [24] 1663 	movx	a,@r0
   3263 FE            [12] 1664 	mov	r6,a
   3264 BA FF 05      [24] 1665 	cjne	r2,#0xFF,00211$
   3267 BE FF 02      [24] 1666 	cjne	r6,#0xFF,00211$
   326A 80 0C         [24] 1667 	sjmp	00118$
   326C                    1668 00211$:
                           1669 ;	radio/radio.c:373: errors.tx_errors++;
   326C 0A            [12] 1670 	inc	r2
   326D BA 00 01      [24] 1671 	cjne	r2,#0x00,00212$
   3270 0E            [12] 1672 	inc	r6
   3271                    1673 00212$:
   3271 78 36         [12] 1674 	mov	r0,#(_errors + 0x0002)
   3273 EA            [12] 1675 	mov	a,r2
   3274 F2            [24] 1676 	movx	@r0,a
   3275 08            [12] 1677 	inc	r0
   3276 EE            [12] 1678 	mov	a,r6
   3277 F2            [24] 1679 	movx	@r0,a
   3278                    1680 00118$:
                           1681 ;	radio/radio.c:375: return false;
   3278 C3            [12] 1682 	clr	c
   3279 22            [24] 1683 	ret
   327A                    1684 00120$:
                           1685 ;	radio/radio.c:380: status = register_read(EZRADIOPRO_DEVICE_STATUS);
   327A 75 82 02      [24] 1686 	mov	dpl,#0x02
   327D C0 07         [24] 1687 	push	ar7
   327F C0 05         [24] 1688 	push	ar5
   3281 C0 04         [24] 1689 	push	ar4
   3283 12 39 46      [24] 1690 	lcall	_register_read
   3286 AB 82         [24] 1691 	mov	r3,dpl
   3288 D0 04         [24] 1692 	pop	ar4
   328A D0 05         [24] 1693 	pop	ar5
   328C D0 07         [24] 1694 	pop	ar7
                           1695 ;	radio/radio.c:381: if (status & 0x02) {
   328E EB            [12] 1696 	mov	a,r3
   328F 30 E1 05      [24] 1697 	jnb	acc.1,00122$
                           1698 ;	radio/radio.c:383: transmit_started = true;
   3292 D2 19         [12] 1699 	setb	_radio_transmit_simple_transmit_started_1_170
                           1700 ;	radio/radio.c:384: continue;
   3294 02 31 8D      [24] 1701 	ljmp	00130$
   3297                    1702 00122$:
                           1703 ;	radio/radio.c:386: if (transmit_started && (status & 0x02) == 0) {
   3297 20 19 03      [24] 1704 	jb	_radio_transmit_simple_transmit_started_1_170,00214$
   329A 02 31 8D      [24] 1705 	ljmp	00130$
   329D                    1706 00214$:
   329D EB            [12] 1707 	mov	a,r3
   329E 30 E1 03      [24] 1708 	jnb	acc.1,00215$
   32A1 02 31 8D      [24] 1709 	ljmp	00130$
   32A4                    1710 00215$:
                           1711 ;	radio/radio.c:389: if (length != 0) {
   32A4 EF            [12] 1712 	mov	a,r7
   32A5 60 1D         [24] 1713 	jz	00126$
                           1714 ;	radio/radio.c:391: if (errors.tx_errors != 0xFFFF) {
   32A7 78 36         [12] 1715 	mov	r0,#(_errors + 0x0002)
   32A9 E2            [24] 1716 	movx	a,@r0
   32AA FE            [12] 1717 	mov	r6,a
   32AB 08            [12] 1718 	inc	r0
   32AC E2            [24] 1719 	movx	a,@r0
   32AD FF            [12] 1720 	mov	r7,a
   32AE BE FF 05      [24] 1721 	cjne	r6,#0xFF,00217$
   32B1 BF FF 02      [24] 1722 	cjne	r7,#0xFF,00217$
   32B4 80 0C         [24] 1723 	sjmp	00124$
   32B6                    1724 00217$:
                           1725 ;	radio/radio.c:392: errors.tx_errors++;
   32B6 0E            [12] 1726 	inc	r6
   32B7 BE 00 01      [24] 1727 	cjne	r6,#0x00,00218$
   32BA 0F            [12] 1728 	inc	r7
   32BB                    1729 00218$:
   32BB 78 36         [12] 1730 	mov	r0,#(_errors + 0x0002)
   32BD EE            [12] 1731 	mov	a,r6
   32BE F2            [24] 1732 	movx	@r0,a
   32BF 08            [12] 1733 	inc	r0
   32C0 EF            [12] 1734 	mov	a,r7
   32C1 F2            [24] 1735 	movx	@r0,a
   32C2                    1736 00124$:
                           1737 ;	radio/radio.c:394: return false;
   32C2 C3            [12] 1738 	clr	c
   32C3 22            [24] 1739 	ret
   32C4                    1740 00126$:
                           1741 ;	radio/radio.c:396: return true;			
   32C4 D3            [12] 1742 	setb	c
   32C5 22            [24] 1743 	ret
   32C6                    1744 00132$:
                           1745 ;	radio/radio.c:407: if (errors.tx_errors != 0xFFFF) {
   32C6 78 36         [12] 1746 	mov	r0,#(_errors + 0x0002)
   32C8 E2            [24] 1747 	movx	a,@r0
   32C9 FE            [12] 1748 	mov	r6,a
   32CA 08            [12] 1749 	inc	r0
   32CB E2            [24] 1750 	movx	a,@r0
   32CC FF            [12] 1751 	mov	r7,a
   32CD BE FF 05      [24] 1752 	cjne	r6,#0xFF,00219$
   32D0 BF FF 02      [24] 1753 	cjne	r7,#0xFF,00219$
   32D3 80 0C         [24] 1754 	sjmp	00134$
   32D5                    1755 00219$:
                           1756 ;	radio/radio.c:408: errors.tx_errors++;
   32D5 0E            [12] 1757 	inc	r6
   32D6 BE 00 01      [24] 1758 	cjne	r6,#0x00,00220$
   32D9 0F            [12] 1759 	inc	r7
   32DA                    1760 00220$:
   32DA 78 36         [12] 1761 	mov	r0,#(_errors + 0x0002)
   32DC EE            [12] 1762 	mov	a,r6
   32DD F2            [24] 1763 	movx	@r0,a
   32DE 08            [12] 1764 	inc	r0
   32DF EF            [12] 1765 	mov	a,r7
   32E0 F2            [24] 1766 	movx	@r0,a
   32E1                    1767 00134$:
                           1768 ;	radio/radio.c:411: return false;
   32E1 C3            [12] 1769 	clr	c
   32E2 22            [24] 1770 	ret
                           1771 ;------------------------------------------------------------
                           1772 ;Allocation info for local variables in function 'radio_transmit_golay'
                           1773 ;------------------------------------------------------------
                           1774 ;elen                      Allocated with name '_radio_transmit_golay_elen_1_186'
                           1775 ;rlen                      Allocated to registers r5 
                           1776 ;length                    Allocated with name '_radio_transmit_golay_length_1_185'
                           1777 ;gin                       Allocated with name '_radio_transmit_golay_gin_1_186'
                           1778 ;------------------------------------------------------------
                           1779 ;	radio/radio.c:424: radio_transmit_golay(uint8_t length, __xdata uint8_t * __pdata buf, __pdata uint16_t timeout_ticks)
                           1780 ;	-----------------------------------------
                           1781 ;	 function radio_transmit_golay
                           1782 ;	-----------------------------------------
   32E3                    1783 _radio_transmit_golay:
   32E3 E5 82         [12] 1784 	mov	a,dpl
                           1785 ;	radio/radio.c:430: if (length > (sizeof(radio_buffer)/2)-6) {
   32E5 90 04 66      [24] 1786 	mov	dptr,#_radio_transmit_golay_length_1_185
   32E8 F0            [24] 1787 	movx	@dptr,a
   32E9 FF            [12] 1788 	mov  r7,a
   32EA 24 87         [12] 1789 	add	a,#0xff - 0x78
   32EC 50 19         [24] 1790 	jnc	00102$
                           1791 ;	radio/radio.c:432: panic("oversized golay packet");		
   32EE C0 07         [24] 1792 	push	ar7
   32F0 74 D3         [12] 1793 	mov	a,#__str_1
   32F2 C0 E0         [24] 1794 	push	acc
   32F4 74 C9         [12] 1795 	mov	a,#(__str_1 >> 8)
   32F6 C0 E0         [24] 1796 	push	acc
   32F8 74 80         [12] 1797 	mov	a,#0x80
   32FA C0 E0         [24] 1798 	push	acc
   32FC 12 11 F8      [24] 1799 	lcall	_panic
   32FF 15 81         [12] 1800 	dec	sp
   3301 15 81         [12] 1801 	dec	sp
   3303 15 81         [12] 1802 	dec	sp
   3305 D0 07         [24] 1803 	pop	ar7
   3307                    1804 00102$:
                           1805 ;	radio/radio.c:436: rlen = ((length+2)/3)*3;
   3307 8F 05         [24] 1806 	mov	ar5,r7
   3309 7E 00         [12] 1807 	mov	r6,#0x00
   330B 74 02         [12] 1808 	mov	a,#0x02
   330D 2D            [12] 1809 	add	a,r5
   330E FD            [12] 1810 	mov	r5,a
   330F E4            [12] 1811 	clr	a
   3310 3E            [12] 1812 	addc	a,r6
   3311 FE            [12] 1813 	mov	r6,a
   3312 90 05 E8      [24] 1814 	mov	dptr,#__divsint_PARM_2
   3315 74 03         [12] 1815 	mov	a,#0x03
   3317 F0            [24] 1816 	movx	@dptr,a
   3318 E4            [12] 1817 	clr	a
   3319 A3            [24] 1818 	inc	dptr
   331A F0            [24] 1819 	movx	@dptr,a
   331B 8D 82         [24] 1820 	mov	dpl,r5
   331D 8E 83         [24] 1821 	mov	dph,r6
   331F C0 07         [24] 1822 	push	ar7
   3321 12 61 87      [24] 1823 	lcall	__divsint
   3324 AD 82         [24] 1824 	mov	r5,dpl
   3326 D0 07         [24] 1825 	pop	ar7
   3328 ED            [12] 1826 	mov	a,r5
   3329 75 F0 03      [24] 1827 	mov	b,#0x03
   332C A4            [48] 1828 	mul	ab
                           1829 ;	radio/radio.c:439: elen = (rlen+6)*2;
   332D FD            [12] 1830 	mov	r5,a
   332E 24 06         [12] 1831 	add	a,#0x06
   3330 25 E0         [12] 1832 	add	a,acc
   3332 F5 4E         [12] 1833 	mov	_radio_transmit_golay_elen_1_186,a
                           1834 ;	radio/radio.c:442: gin[0] = netid[0];
   3334 78 7C         [12] 1835 	mov	r0,#_netid
   3336 E2            [24] 1836 	movx	a,@r0
   3337 90 04 67      [24] 1837 	mov	dptr,#_radio_transmit_golay_gin_1_186
   333A F0            [24] 1838 	movx	@dptr,a
                           1839 ;	radio/radio.c:443: gin[1] = netid[1];
   333B 78 7D         [12] 1840 	mov	r0,#(_netid + 0x0001)
   333D E2            [24] 1841 	movx	a,@r0
   333E 90 04 68      [24] 1842 	mov	dptr,#(_radio_transmit_golay_gin_1_186 + 0x0001)
   3341 F0            [24] 1843 	movx	@dptr,a
                           1844 ;	radio/radio.c:444: gin[2] = length;
   3342 90 04 69      [24] 1845 	mov	dptr,#(_radio_transmit_golay_gin_1_186 + 0x0002)
   3345 EF            [12] 1846 	mov	a,r7
   3346 F0            [24] 1847 	movx	@dptr,a
                           1848 ;	radio/radio.c:447: golay_encode(3, gin, radio_buffer);
   3347 78 28         [12] 1849 	mov	r0,#_golay_encode_PARM_2
   3349 74 67         [12] 1850 	mov	a,#_radio_transmit_golay_gin_1_186
   334B F2            [24] 1851 	movx	@r0,a
   334C 08            [12] 1852 	inc	r0
   334D 74 04         [12] 1853 	mov	a,#(_radio_transmit_golay_gin_1_186 >> 8)
   334F F2            [24] 1854 	movx	@r0,a
   3350 78 2A         [12] 1855 	mov	r0,#_golay_encode_PARM_3
   3352 74 64         [12] 1856 	mov	a,#_radio_buffer
   3354 F2            [24] 1857 	movx	@r0,a
   3355 08            [12] 1858 	inc	r0
   3356 74 03         [12] 1859 	mov	a,#(_radio_buffer >> 8)
   3358 F2            [24] 1860 	movx	@r0,a
   3359 75 82 03      [24] 1861 	mov	dpl,#0x03
   335C C0 07         [24] 1862 	push	ar7
   335E C0 05         [24] 1863 	push	ar5
   3360 12 0E 17      [24] 1864 	lcall	_golay_encode
   3363 D0 05         [24] 1865 	pop	ar5
   3365 D0 07         [24] 1866 	pop	ar7
                           1867 ;	radio/radio.c:451: crc = crc16(length, buf);
   3367 78 92         [12] 1868 	mov	r0,#_radio_transmit_golay_PARM_2
   3369 E2            [24] 1869 	movx	a,@r0
   336A F5 0C         [12] 1870 	mov	_crc16_PARM_2,a
   336C 08            [12] 1871 	inc	r0
   336D E2            [24] 1872 	movx	a,@r0
   336E F5 0D         [12] 1873 	mov	(_crc16_PARM_2 + 1),a
   3370 8F 82         [24] 1874 	mov	dpl,r7
   3372 C0 07         [24] 1875 	push	ar7
   3374 C0 05         [24] 1876 	push	ar5
   3376 12 0A 2A      [24] 1877 	lcall	_crc16
   3379 AB 82         [24] 1878 	mov	r3,dpl
   337B AC 83         [24] 1879 	mov	r4,dph
   337D D0 05         [24] 1880 	pop	ar5
   337F D0 07         [24] 1881 	pop	ar7
                           1882 ;	radio/radio.c:452: gin[0] = crc&0xFF;
   3381 8B 02         [24] 1883 	mov	ar2,r3
   3383 90 04 67      [24] 1884 	mov	dptr,#_radio_transmit_golay_gin_1_186
   3386 EA            [12] 1885 	mov	a,r2
   3387 F0            [24] 1886 	movx	@dptr,a
                           1887 ;	radio/radio.c:453: gin[1] = crc>>8;
   3388 8C 03         [24] 1888 	mov	ar3,r4
   338A 90 04 68      [24] 1889 	mov	dptr,#(_radio_transmit_golay_gin_1_186 + 0x0001)
   338D EB            [12] 1890 	mov	a,r3
   338E F0            [24] 1891 	movx	@dptr,a
                           1892 ;	radio/radio.c:454: gin[2] = length;
   338F 90 04 69      [24] 1893 	mov	dptr,#(_radio_transmit_golay_gin_1_186 + 0x0002)
   3392 EF            [12] 1894 	mov	a,r7
   3393 F0            [24] 1895 	movx	@dptr,a
                           1896 ;	radio/radio.c:457: golay_encode(3, gin, &radio_buffer[6]);
   3394 78 2A         [12] 1897 	mov	r0,#_golay_encode_PARM_3
   3396 74 06         [12] 1898 	mov	a,#0x06
   3398 24 64         [12] 1899 	add	a,#_radio_buffer
   339A F2            [24] 1900 	movx	@r0,a
   339B E4            [12] 1901 	clr	a
   339C 34 03         [12] 1902 	addc	a,#(_radio_buffer >> 8)
   339E 08            [12] 1903 	inc	r0
   339F F2            [24] 1904 	movx	@r0,a
   33A0 78 28         [12] 1905 	mov	r0,#_golay_encode_PARM_2
   33A2 74 67         [12] 1906 	mov	a,#_radio_transmit_golay_gin_1_186
   33A4 F2            [24] 1907 	movx	@r0,a
   33A5 08            [12] 1908 	inc	r0
   33A6 74 04         [12] 1909 	mov	a,#(_radio_transmit_golay_gin_1_186 >> 8)
   33A8 F2            [24] 1910 	movx	@r0,a
   33A9 75 82 03      [24] 1911 	mov	dpl,#0x03
   33AC C0 05         [24] 1912 	push	ar5
   33AE 12 0E 17      [24] 1913 	lcall	_golay_encode
   33B1 D0 05         [24] 1914 	pop	ar5
                           1915 ;	radio/radio.c:460: golay_encode(rlen, buf, &radio_buffer[12]);
   33B3 78 2A         [12] 1916 	mov	r0,#_golay_encode_PARM_3
   33B5 74 0C         [12] 1917 	mov	a,#0x0C
   33B7 24 64         [12] 1918 	add	a,#_radio_buffer
   33B9 F2            [24] 1919 	movx	@r0,a
   33BA E4            [12] 1920 	clr	a
   33BB 34 03         [12] 1921 	addc	a,#(_radio_buffer >> 8)
   33BD 08            [12] 1922 	inc	r0
   33BE F2            [24] 1923 	movx	@r0,a
   33BF 78 92         [12] 1924 	mov	r0,#_radio_transmit_golay_PARM_2
   33C1 79 28         [12] 1925 	mov	r1,#_golay_encode_PARM_2
   33C3 E2            [24] 1926 	movx	a,@r0
   33C4 F3            [24] 1927 	movx	@r1,a
   33C5 08            [12] 1928 	inc	r0
   33C6 E2            [24] 1929 	movx	a,@r0
   33C7 09            [12] 1930 	inc	r1
   33C8 F3            [24] 1931 	movx	@r1,a
   33C9 8D 82         [24] 1932 	mov	dpl,r5
   33CB 12 0E 17      [24] 1933 	lcall	_golay_encode
                           1934 ;	radio/radio.c:462: return radio_transmit_simple(elen, radio_buffer, timeout_ticks);
   33CE 78 8E         [12] 1935 	mov	r0,#_radio_transmit_simple_PARM_2
   33D0 74 64         [12] 1936 	mov	a,#_radio_buffer
   33D2 F2            [24] 1937 	movx	@r0,a
   33D3 08            [12] 1938 	inc	r0
   33D4 74 03         [12] 1939 	mov	a,#(_radio_buffer >> 8)
   33D6 F2            [24] 1940 	movx	@r0,a
   33D7 78 94         [12] 1941 	mov	r0,#_radio_transmit_golay_PARM_3
   33D9 79 90         [12] 1942 	mov	r1,#_radio_transmit_simple_PARM_3
   33DB E2            [24] 1943 	movx	a,@r0
   33DC F3            [24] 1944 	movx	@r1,a
   33DD 08            [12] 1945 	inc	r0
   33DE E2            [24] 1946 	movx	a,@r0
   33DF 09            [12] 1947 	inc	r1
   33E0 F3            [24] 1948 	movx	@r1,a
   33E1 85 4E 82      [24] 1949 	mov	dpl,_radio_transmit_golay_elen_1_186
   33E4 12 30 FA      [24] 1950 	lcall	_radio_transmit_simple
   33E7 92 1A         [24] 1951 	mov  _radio_transmit_golay_sloc0_1_0,c
   33E9 22            [24] 1952 	ret
                           1953 ;------------------------------------------------------------
                           1954 ;Allocation info for local variables in function 'radio_transmit'
                           1955 ;------------------------------------------------------------
                           1956 ;length                    Allocated with name '_radio_transmit_length_1_188'
                           1957 ;------------------------------------------------------------
                           1958 ;	radio/radio.c:474: radio_transmit(uint8_t length, __xdata uint8_t * __pdata buf, __pdata uint16_t timeout_ticks)
                           1959 ;	-----------------------------------------
                           1960 ;	 function radio_transmit
                           1961 ;	-----------------------------------------
   33EA                    1962 _radio_transmit:
   33EA E5 82         [12] 1963 	mov	a,dpl
   33EC 90 04 6A      [24] 1964 	mov	dptr,#_radio_transmit_length_1_188
   33EF F0            [24] 1965 	movx	@dptr,a
                           1966 ;	radio/radio.c:477: EX0_SAVE_DISABLE;
   33F0 A2 A8         [12] 1967 	mov	c,_EX0
   33F2 92 1B         [24] 1968 	mov	_radio_transmit_EX0_saved_1_189,c
   33F4 C2 A8         [12] 1969 	clr	_EX0
                           1970 ;	radio/radio.c:483: if (!feature_golay) {
   33F6 20 04 22      [24] 1971 	jb	_feature_golay,00102$
                           1972 ;	radio/radio.c:484: ret = radio_transmit_simple(length, buf, timeout_ticks);
   33F9 90 04 6A      [24] 1973 	mov	dptr,#_radio_transmit_length_1_188
   33FC E0            [24] 1974 	movx	a,@dptr
   33FD FF            [12] 1975 	mov	r7,a
   33FE 78 96         [12] 1976 	mov	r0,#_radio_transmit_PARM_2
   3400 79 8E         [12] 1977 	mov	r1,#_radio_transmit_simple_PARM_2
   3402 E2            [24] 1978 	movx	a,@r0
   3403 F3            [24] 1979 	movx	@r1,a
   3404 08            [12] 1980 	inc	r0
   3405 E2            [24] 1981 	movx	a,@r0
   3406 09            [12] 1982 	inc	r1
   3407 F3            [24] 1983 	movx	@r1,a
   3408 78 98         [12] 1984 	mov	r0,#_radio_transmit_PARM_3
   340A 79 90         [12] 1985 	mov	r1,#_radio_transmit_simple_PARM_3
   340C E2            [24] 1986 	movx	a,@r0
   340D F3            [24] 1987 	movx	@r1,a
   340E 08            [12] 1988 	inc	r0
   340F E2            [24] 1989 	movx	a,@r0
   3410 09            [12] 1990 	inc	r1
   3411 F3            [24] 1991 	movx	@r1,a
   3412 8F 82         [24] 1992 	mov	dpl,r7
   3414 12 30 FA      [24] 1993 	lcall	_radio_transmit_simple
   3417 92 1C         [24] 1994 	mov	_radio_transmit_sloc0_1_0,c
   3419 80 20         [24] 1995 	sjmp	00103$
   341B                    1996 00102$:
                           1997 ;	radio/radio.c:486: ret = radio_transmit_golay(length, buf, timeout_ticks);
   341B 90 04 6A      [24] 1998 	mov	dptr,#_radio_transmit_length_1_188
   341E E0            [24] 1999 	movx	a,@dptr
   341F FF            [12] 2000 	mov	r7,a
   3420 78 96         [12] 2001 	mov	r0,#_radio_transmit_PARM_2
   3422 79 92         [12] 2002 	mov	r1,#_radio_transmit_golay_PARM_2
   3424 E2            [24] 2003 	movx	a,@r0
   3425 F3            [24] 2004 	movx	@r1,a
   3426 08            [12] 2005 	inc	r0
   3427 E2            [24] 2006 	movx	a,@r0
   3428 09            [12] 2007 	inc	r1
   3429 F3            [24] 2008 	movx	@r1,a
   342A 78 98         [12] 2009 	mov	r0,#_radio_transmit_PARM_3
   342C 79 94         [12] 2010 	mov	r1,#_radio_transmit_golay_PARM_3
   342E E2            [24] 2011 	movx	a,@r0
   342F F3            [24] 2012 	movx	@r1,a
   3430 08            [12] 2013 	inc	r0
   3431 E2            [24] 2014 	movx	a,@r0
   3432 09            [12] 2015 	inc	r1
   3433 F3            [24] 2016 	movx	@r1,a
   3434 8F 82         [24] 2017 	mov	dpl,r7
   3436 12 32 E3      [24] 2018 	lcall	_radio_transmit_golay
   3439 92 1C         [24] 2019 	mov	_radio_transmit_sloc0_1_0,c
   343B                    2020 00103$:
                           2021 ;	radio/radio.c:491: EX0_RESTORE;
   343B A2 1B         [12] 2022 	mov	c,_radio_transmit_EX0_saved_1_189
   343D 92 A8         [24] 2023 	mov	_EX0,c
                           2024 ;	radio/radio.c:492: return ret;
   343F A2 1C         [12] 2025 	mov	c,_radio_transmit_sloc0_1_0
   3441 22            [24] 2026 	ret
                           2027 ;------------------------------------------------------------
                           2028 ;Allocation info for local variables in function 'radio_receiver_on'
                           2029 ;------------------------------------------------------------
                           2030 ;	radio/radio.c:499: radio_receiver_on(void)
                           2031 ;	-----------------------------------------
                           2032 ;	 function radio_receiver_on
                           2033 ;	-----------------------------------------
   3442                    2034 _radio_receiver_on:
                           2035 ;	radio/radio.c:501: EX0 = 0;
   3442 C2 A8         [12] 2036 	clr	_EX0
                           2037 ;	radio/radio.c:503: packet_received = 0;
   3444 C2 16         [12] 2038 	clr	_packet_received
                           2039 ;	radio/radio.c:504: receive_packet_length = 0;
   3446 78 79         [12] 2040 	mov	r0,#_receive_packet_length
   3448 E4            [12] 2041 	clr	a
   3449 F2            [24] 2042 	movx	@r0,a
                           2043 ;	radio/radio.c:505: preamble_detected = 0;
   344A C2 17         [12] 2044 	clr	_preamble_detected
                           2045 ;	radio/radio.c:506: partial_packet_length = 0;
   344C 78 7A         [12] 2046 	mov	r0,#_partial_packet_length
   344E E4            [12] 2047 	clr	a
   344F F2            [24] 2048 	movx	@r0,a
                           2049 ;	radio/radio.c:509: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, RADIO_RX_INTERRUPTS);
   3450 74 13         [12] 2050 	mov	a,#0x13
   3452 C0 E0         [24] 2051 	push	acc
   3454 75 82 05      [24] 2052 	mov	dpl,#0x05
   3457 12 39 16      [24] 2053 	lcall	_register_write
   345A 15 81         [12] 2054 	dec	sp
                           2055 ;	radio/radio.c:510: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, EZRADIOPRO_ENPREAVAL);
   345C 74 40         [12] 2056 	mov	a,#0x40
   345E C0 E0         [24] 2057 	push	acc
   3460 75 82 06      [24] 2058 	mov	dpl,#0x06
   3463 12 39 16      [24] 2059 	lcall	_register_write
   3466 15 81         [12] 2060 	dec	sp
                           2061 ;	radio/radio.c:512: clear_status_registers();
   3468 12 39 AE      [24] 2062 	lcall	_clear_status_registers
                           2063 ;	radio/radio.c:513: radio_clear_transmit_fifo();
   346B 12 30 AA      [24] 2064 	lcall	_radio_clear_transmit_fifo
                           2065 ;	radio/radio.c:514: radio_clear_receive_fifo();
   346E 12 30 D2      [24] 2066 	lcall	_radio_clear_receive_fifo
                           2067 ;	radio/radio.c:517: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_1, EZRADIOPRO_RXON | EZRADIOPRO_XTON);
   3471 74 05         [12] 2068 	mov	a,#0x05
   3473 C0 E0         [24] 2069 	push	acc
   3475 75 82 07      [24] 2070 	mov	dpl,#0x07
   3478 12 39 16      [24] 2071 	lcall	_register_write
   347B 15 81         [12] 2072 	dec	sp
                           2073 ;	radio/radio.c:520: EX0 = 1;
   347D D2 A8         [12] 2074 	setb	_EX0
                           2075 ;	radio/radio.c:522: return true;
   347F D3            [12] 2076 	setb	c
   3480 22            [24] 2077 	ret
                           2078 ;------------------------------------------------------------
                           2079 ;Allocation info for local variables in function 'radio_initialise'
                           2080 ;------------------------------------------------------------
                           2081 ;status                    Allocated with name '_radio_initialise_status_1_195'
                           2082 ;------------------------------------------------------------
                           2083 ;	radio/radio.c:529: radio_initialise(void)
                           2084 ;	-----------------------------------------
                           2085 ;	 function radio_initialise
                           2086 ;	-----------------------------------------
   3481                    2087 _radio_initialise:
                           2088 ;	radio/radio.c:533: delay_msec(50);
   3481 90 00 32      [24] 2089 	mov	dptr,#0x0032
   3484 12 56 93      [24] 2090 	lcall	_delay_msec
                           2091 ;	radio/radio.c:536: status = register_read(EZRADIOPRO_DEVICE_VERSION);
   3487 75 82 01      [24] 2092 	mov	dpl,#0x01
   348A 12 39 46      [24] 2093 	lcall	_register_read
   348D AF 82         [24] 2094 	mov	r7,dpl
                           2095 ;	radio/radio.c:537: if (status == 0xFF || status < 5) {
   348F BF FF 02      [24] 2096 	cjne	r7,#0xFF,00133$
   3492 80 05         [24] 2097 	sjmp	00101$
   3494                    2098 00133$:
   3494 BF 05 00      [24] 2099 	cjne	r7,#0x05,00134$
   3497                    2100 00134$:
   3497 50 02         [24] 2101 	jnc	00102$
   3499                    2102 00101$:
                           2103 ;	radio/radio.c:539: return false;
   3499 C3            [12] 2104 	clr	c
   349A 22            [24] 2105 	ret
   349B                    2106 00102$:
                           2107 ;	radio/radio.c:542: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_2);
   349B 75 82 04      [24] 2108 	mov	dpl,#0x04
   349E 12 39 46      [24] 2109 	lcall	_register_read
                           2110 ;	radio/radio.c:544: if ((status & EZRADIOPRO_IPOR) == 0) {
   34A1 E5 82         [12] 2111 	mov	a,dpl
   34A3 FF            [12] 2112 	mov	r7,a
   34A4 20 E0 06      [24] 2113 	jb	acc.0,00105$
                           2114 ;	radio/radio.c:546: return software_reset();
   34A7 12 3A 0E      [24] 2115 	lcall	_software_reset
   34AA 92 1D         [24] 2116 	mov  _radio_initialise_sloc0_1_0,c
   34AC 22            [24] 2117 	ret
   34AD                    2118 00105$:
                           2119 ;	radio/radio.c:549: if (status & EZRADIOPRO_ICHIPRDY) {
   34AD EF            [12] 2120 	mov	a,r7
   34AE 30 E1 02      [24] 2121 	jnb	acc.1,00107$
                           2122 ;	radio/radio.c:551: return true;
   34B1 D3            [12] 2123 	setb	c
   34B2 22            [24] 2124 	ret
   34B3                    2125 00107$:
                           2126 ;	radio/radio.c:555: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0);
   34B3 E4            [12] 2127 	clr	a
   34B4 C0 E0         [24] 2128 	push	acc
   34B6 75 82 05      [24] 2129 	mov	dpl,#0x05
   34B9 12 39 16      [24] 2130 	lcall	_register_write
   34BC 15 81         [12] 2131 	dec	sp
                           2132 ;	radio/radio.c:556: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, EZRADIOPRO_ENCHIPRDY);
   34BE 74 02         [12] 2133 	mov	a,#0x02
   34C0 C0 E0         [24] 2134 	push	acc
   34C2 75 82 06      [24] 2135 	mov	dpl,#0x06
   34C5 12 39 16      [24] 2136 	lcall	_register_write
   34C8 15 81         [12] 2137 	dec	sp
                           2138 ;	radio/radio.c:559: delay_set(50);
   34CA 90 00 32      [24] 2139 	mov	dptr,#0x0032
   34CD 12 56 5A      [24] 2140 	lcall	_delay_set
                           2141 ;	radio/radio.c:560: while (!delay_expired()) {
   34D0                    2142 00110$:
   34D0 12 56 8B      [24] 2143 	lcall	_delay_expired
   34D3 40 13         [24] 2144 	jc	00112$
                           2145 ;	radio/radio.c:561: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_1);
   34D5 75 82 03      [24] 2146 	mov	dpl,#0x03
   34D8 12 39 46      [24] 2147 	lcall	_register_read
                           2148 ;	radio/radio.c:562: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_2);
   34DB 75 82 04      [24] 2149 	mov	dpl,#0x04
   34DE 12 39 46      [24] 2150 	lcall	_register_read
   34E1 E5 82         [12] 2151 	mov	a,dpl
                           2152 ;	radio/radio.c:563: if (status & EZRADIOPRO_ICHIPRDY) {
   34E3 30 E1 EA      [24] 2153 	jnb	acc.1,00110$
                           2154 ;	radio/radio.c:564: return true;
   34E6 D3            [12] 2155 	setb	c
   34E7 22            [24] 2156 	ret
   34E8                    2157 00112$:
                           2158 ;	radio/radio.c:568: return false;
   34E8 C3            [12] 2159 	clr	c
   34E9 22            [24] 2160 	ret
                           2161 ;------------------------------------------------------------
                           2162 ;Allocation info for local variables in function 'radio_set_frequency'
                           2163 ;------------------------------------------------------------
                           2164 ;	radio/radio.c:575: radio_set_frequency(__pdata uint32_t value)
                           2165 ;	-----------------------------------------
                           2166 ;	 function radio_set_frequency
                           2167 ;	-----------------------------------------
   34EA                    2168 _radio_set_frequency:
   34EA AC 82         [24] 2169 	mov	r4,dpl
   34EC AD 83         [24] 2170 	mov	r5,dph
   34EE AE F0         [24] 2171 	mov	r6,b
   34F0 FF            [12] 2172 	mov	r7,a
                           2173 ;	radio/radio.c:577: if (value < 240000000UL || value > 935000000UL) {
   34F1 C3            [12] 2174 	clr	c
   34F2 ED            [12] 2175 	mov	a,r5
   34F3 94 1C         [12] 2176 	subb	a,#0x1C
   34F5 EE            [12] 2177 	mov	a,r6
   34F6 94 4E         [12] 2178 	subb	a,#0x4E
   34F8 EF            [12] 2179 	mov	a,r7
   34F9 94 0E         [12] 2180 	subb	a,#0x0E
   34FB 40 0E         [24] 2181 	jc	00101$
   34FD 74 C0         [12] 2182 	mov	a,#0xC0
   34FF 9C            [12] 2183 	subb	a,r4
   3500 74 F7         [12] 2184 	mov	a,#0xF7
   3502 9D            [12] 2185 	subb	a,r5
   3503 74 BA         [12] 2186 	mov	a,#0xBA
   3505 9E            [12] 2187 	subb	a,r6
   3506 74 37         [12] 2188 	mov	a,#0x37
   3508 9F            [12] 2189 	subb	a,r7
   3509 50 02         [24] 2190 	jnc	00102$
   350B                    2191 00101$:
                           2192 ;	radio/radio.c:578: return false;
   350B C3            [12] 2193 	clr	c
   350C 22            [24] 2194 	ret
   350D                    2195 00102$:
                           2196 ;	radio/radio.c:580: settings.frequency = value;
   350D 78 7E         [12] 2197 	mov	r0,#_settings
   350F EC            [12] 2198 	mov	a,r4
   3510 F2            [24] 2199 	movx	@r0,a
   3511 08            [12] 2200 	inc	r0
   3512 ED            [12] 2201 	mov	a,r5
   3513 F2            [24] 2202 	movx	@r0,a
   3514 08            [12] 2203 	inc	r0
   3515 EE            [12] 2204 	mov	a,r6
   3516 F2            [24] 2205 	movx	@r0,a
   3517 08            [12] 2206 	inc	r0
   3518 EF            [12] 2207 	mov	a,r7
   3519 F2            [24] 2208 	movx	@r0,a
                           2209 ;	radio/radio.c:581: set_frequency_registers(value);
   351A 8C 82         [24] 2210 	mov	dpl,r4
   351C 8D 83         [24] 2211 	mov	dph,r5
   351E 8E F0         [24] 2212 	mov	b,r6
   3520 EF            [12] 2213 	mov	a,r7
   3521 12 3A 7A      [24] 2214 	lcall	_set_frequency_registers
                           2215 ;	radio/radio.c:582: return true;
   3524 D3            [12] 2216 	setb	c
   3525 22            [24] 2217 	ret
                           2218 ;------------------------------------------------------------
                           2219 ;Allocation info for local variables in function 'radio_set_channel_spacing'
                           2220 ;------------------------------------------------------------
                           2221 ;	radio/radio.c:589: radio_set_channel_spacing(__pdata uint32_t value)
                           2222 ;	-----------------------------------------
                           2223 ;	 function radio_set_channel_spacing
                           2224 ;	-----------------------------------------
   3526                    2225 _radio_set_channel_spacing:
   3526 AC 82         [24] 2226 	mov	r4,dpl
   3528 AD 83         [24] 2227 	mov	r5,dph
   352A AE F0         [24] 2228 	mov	r6,b
   352C FF            [12] 2229 	mov	r7,a
                           2230 ;	radio/radio.c:591: if (value > 2550000L)
   352D C3            [12] 2231 	clr	c
   352E 74 F0         [12] 2232 	mov	a,#0xF0
   3530 9C            [12] 2233 	subb	a,r4
   3531 74 E8         [12] 2234 	mov	a,#0xE8
   3533 9D            [12] 2235 	subb	a,r5
   3534 74 26         [12] 2236 	mov	a,#0x26
   3536 9E            [12] 2237 	subb	a,r6
   3537 E4            [12] 2238 	clr	a
   3538 9F            [12] 2239 	subb	a,r7
   3539 50 02         [24] 2240 	jnc	00102$
                           2241 ;	radio/radio.c:592: return false;
   353B C3            [12] 2242 	clr	c
   353C 22            [24] 2243 	ret
   353D                    2244 00102$:
                           2245 ;	radio/radio.c:593: value = scale_uint32(value, 10000);
   353D 90 00 9A      [24] 2246 	mov	dptr,#_scale_uint32_PARM_2
   3540 74 10         [12] 2247 	mov	a,#0x10
   3542 F0            [24] 2248 	movx	@dptr,a
   3543 74 27         [12] 2249 	mov	a,#0x27
   3545 A3            [24] 2250 	inc	dptr
   3546 F0            [24] 2251 	movx	@dptr,a
   3547 E4            [12] 2252 	clr	a
   3548 A3            [24] 2253 	inc	dptr
   3549 F0            [24] 2254 	movx	@dptr,a
   354A E4            [12] 2255 	clr	a
   354B A3            [24] 2256 	inc	dptr
   354C F0            [24] 2257 	movx	@dptr,a
   354D 8C 82         [24] 2258 	mov	dpl,r4
   354F 8D 83         [24] 2259 	mov	dph,r5
   3551 8E F0         [24] 2260 	mov	b,r6
   3553 EF            [12] 2261 	mov	a,r7
   3554 12 39 BA      [24] 2262 	lcall	_scale_uint32
   3557 AC 82         [24] 2263 	mov	r4,dpl
   3559 AD 83         [24] 2264 	mov	r5,dph
   355B AE F0         [24] 2265 	mov	r6,b
   355D FF            [12] 2266 	mov	r7,a
                           2267 ;	radio/radio.c:594: settings.channel_spacing = value;
   355E 78 82         [12] 2268 	mov	r0,#(_settings + 0x0004)
   3560 EC            [12] 2269 	mov	a,r4
   3561 F2            [24] 2270 	movx	@r0,a
   3562 08            [12] 2271 	inc	r0
   3563 ED            [12] 2272 	mov	a,r5
   3564 F2            [24] 2273 	movx	@r0,a
   3565 08            [12] 2274 	inc	r0
   3566 EE            [12] 2275 	mov	a,r6
   3567 F2            [24] 2276 	movx	@r0,a
   3568 08            [12] 2277 	inc	r0
   3569 EF            [12] 2278 	mov	a,r7
   356A F2            [24] 2279 	movx	@r0,a
                           2280 ;	radio/radio.c:595: register_write(EZRADIOPRO_FREQUENCY_HOPPING_STEP_SIZE, value);
   356B C0 04         [24] 2281 	push	ar4
   356D 75 82 7A      [24] 2282 	mov	dpl,#0x7A
   3570 12 39 16      [24] 2283 	lcall	_register_write
   3573 15 81         [12] 2284 	dec	sp
                           2285 ;	radio/radio.c:596: return true;
   3575 D3            [12] 2286 	setb	c
   3576 22            [24] 2287 	ret
                           2288 ;------------------------------------------------------------
                           2289 ;Allocation info for local variables in function 'radio_set_channel'
                           2290 ;------------------------------------------------------------
                           2291 ;channel                   Allocated with name '_radio_set_channel_channel_1_206'
                           2292 ;------------------------------------------------------------
                           2293 ;	radio/radio.c:602: radio_set_channel(uint8_t channel)
                           2294 ;	-----------------------------------------
                           2295 ;	 function radio_set_channel
                           2296 ;	-----------------------------------------
   3577                    2297 _radio_set_channel:
   3577 E5 82         [12] 2298 	mov	a,dpl
   3579 90 04 6B      [24] 2299 	mov	dptr,#_radio_set_channel_channel_1_206
   357C F0            [24] 2300 	movx	@dptr,a
                           2301 ;	radio/radio.c:604: if (channel != settings.current_channel) {
   357D 78 87         [12] 2302 	mov	r0,#(_settings + 0x0009)
   357F E2            [24] 2303 	movx	a,@r0
   3580 FF            [12] 2304 	mov	r7,a
   3581 90 04 6B      [24] 2305 	mov	dptr,#_radio_set_channel_channel_1_206
   3584 E0            [24] 2306 	movx	a,@dptr
   3585 FE            [12] 2307 	mov	r6,a
   3586 B5 07 01      [24] 2308 	cjne	a,ar7,00108$
   3589 22            [24] 2309 	ret
   358A                    2310 00108$:
                           2311 ;	radio/radio.c:605: settings.current_channel = channel;
   358A 78 87         [12] 2312 	mov	r0,#(_settings + 0x0009)
   358C EE            [12] 2313 	mov	a,r6
   358D F2            [24] 2314 	movx	@r0,a
                           2315 ;	radio/radio.c:606: register_write(EZRADIOPRO_FREQUENCY_HOPPING_CHANNEL_SELECT, channel);
   358E C0 06         [24] 2316 	push	ar6
   3590 75 82 79      [24] 2317 	mov	dpl,#0x79
   3593 12 39 16      [24] 2318 	lcall	_register_write
   3596 15 81         [12] 2319 	dec	sp
                           2320 ;	radio/radio.c:607: preamble_detected = 0;
   3598 C2 17         [12] 2321 	clr	_preamble_detected
   359A 22            [24] 2322 	ret
                           2323 ;------------------------------------------------------------
                           2324 ;Allocation info for local variables in function 'radio_get_channel'
                           2325 ;------------------------------------------------------------
                           2326 ;	radio/radio.c:614: radio_get_channel(void)
                           2327 ;	-----------------------------------------
                           2328 ;	 function radio_get_channel
                           2329 ;	-----------------------------------------
   359B                    2330 _radio_get_channel:
                           2331 ;	radio/radio.c:616: return settings.current_channel;
   359B 78 87         [12] 2332 	mov	r0,#(_settings + 0x0009)
   359D E2            [24] 2333 	movx	a,@r0
   359E F5 82         [12] 2334 	mov	dpl,a
   35A0 22            [24] 2335 	ret
                           2336 ;------------------------------------------------------------
                           2337 ;Allocation info for local variables in function 'radio_configure'
                           2338 ;------------------------------------------------------------
                           2339 ;	radio/radio.c:713: radio_configure(__pdata uint8_t air_rate)
                           2340 ;	-----------------------------------------
                           2341 ;	 function radio_configure
                           2342 ;	-----------------------------------------
   35A1                    2343 _radio_configure:
   35A1 AF 82         [24] 2344 	mov	r7,dpl
                           2345 ;	radio/radio.c:718: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0x00);
   35A3 C0 07         [24] 2346 	push	ar7
   35A5 E4            [12] 2347 	clr	a
   35A6 C0 E0         [24] 2348 	push	acc
   35A8 75 82 05      [24] 2349 	mov	dpl,#0x05
   35AB 12 39 16      [24] 2350 	lcall	_register_write
   35AE 15 81         [12] 2351 	dec	sp
                           2352 ;	radio/radio.c:719: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, 0x00);
   35B0 E4            [12] 2353 	clr	a
   35B1 C0 E0         [24] 2354 	push	acc
   35B3 75 82 06      [24] 2355 	mov	dpl,#0x06
   35B6 12 39 16      [24] 2356 	lcall	_register_write
   35B9 15 81         [12] 2357 	dec	sp
                           2358 ;	radio/radio.c:721: clear_status_registers();
   35BB 12 39 AE      [24] 2359 	lcall	_clear_status_registers
                           2360 ;	radio/radio.c:735: register_write(EZRADIOPRO_GPIO0_CONFIGURATION, 0x15);	// RX data (output)
   35BE 74 15         [12] 2361 	mov	a,#0x15
   35C0 C0 E0         [24] 2362 	push	acc
   35C2 75 82 0B      [24] 2363 	mov	dpl,#0x0B
   35C5 12 39 16      [24] 2364 	lcall	_register_write
   35C8 15 81         [12] 2365 	dec	sp
                           2366 ;	radio/radio.c:736: register_write(EZRADIOPRO_GPIO1_CONFIGURATION, 0x12);	// RX data (output)
   35CA 74 12         [12] 2367 	mov	a,#0x12
   35CC C0 E0         [24] 2368 	push	acc
   35CE 75 82 0C      [24] 2369 	mov	dpl,#0x0C
   35D1 12 39 16      [24] 2370 	lcall	_register_write
   35D4 15 81         [12] 2371 	dec	sp
                           2372 ;	radio/radio.c:738: radio_set_diversity(true);
   35D6 D2 1E         [12] 2373 	setb	_radio_set_diversity_PARM_1
   35D8 12 3D 30      [24] 2374 	lcall	_radio_set_diversity
                           2375 ;	radio/radio.c:750: register_write(EZRADIOPRO_CRYSTAL_OSCILLATOR_LOAD_CAPACITANCE, EZRADIOPRO_OSC_CAP_VALUE);
   35DB 74 B6         [12] 2376 	mov	a,#0xB6
   35DD C0 E0         [24] 2377 	push	acc
   35DF 75 82 09      [24] 2378 	mov	dpl,#0x09
   35E2 12 39 16      [24] 2379 	lcall	_register_write
   35E5 15 81         [12] 2380 	dec	sp
   35E7 D0 07         [24] 2381 	pop	ar7
                           2382 ;	radio/radio.c:753: if (air_rate > 100) {
   35E9 EF            [12] 2383 	mov	a,r7
   35EA 24 9B         [12] 2384 	add	a,#0xff - 0x64
   35EC 50 10         [24] 2385 	jnc	00102$
                           2386 ;	radio/radio.c:754: register_write(EZRADIOPRO_CHARGEPUMP_CURRENT_TRIMMING_OVERRIDE, 0xC0);
   35EE C0 07         [24] 2387 	push	ar7
   35F0 74 C0         [12] 2388 	mov	a,#0xC0
   35F2 C0 E0         [24] 2389 	push	acc
   35F4 75 82 58      [24] 2390 	mov	dpl,#0x58
   35F7 12 39 16      [24] 2391 	lcall	_register_write
   35FA 15 81         [12] 2392 	dec	sp
   35FC D0 07         [24] 2393 	pop	ar7
   35FE                    2394 00102$:
                           2395 ;	radio/radio.c:758: set_frequency_registers(settings.frequency);
   35FE 78 7E         [12] 2396 	mov	r0,#_settings
   3600 E2            [24] 2397 	movx	a,@r0
   3601 FB            [12] 2398 	mov	r3,a
   3602 08            [12] 2399 	inc	r0
   3603 E2            [24] 2400 	movx	a,@r0
   3604 FC            [12] 2401 	mov	r4,a
   3605 08            [12] 2402 	inc	r0
   3606 E2            [24] 2403 	movx	a,@r0
   3607 FD            [12] 2404 	mov	r5,a
   3608 08            [12] 2405 	inc	r0
   3609 E2            [24] 2406 	movx	a,@r0
   360A 8B 82         [24] 2407 	mov	dpl,r3
   360C 8C 83         [24] 2408 	mov	dph,r4
   360E 8D F0         [24] 2409 	mov	b,r5
   3610 C0 07         [24] 2410 	push	ar7
   3612 12 3A 7A      [24] 2411 	lcall	_set_frequency_registers
                           2412 ;	radio/radio.c:759: register_write(EZRADIOPRO_FREQUENCY_HOPPING_STEP_SIZE, settings.channel_spacing);
   3615 78 82         [12] 2413 	mov	r0,#(_settings + 0x0004)
   3617 E2            [24] 2414 	movx	a,@r0
   3618 FB            [12] 2415 	mov	r3,a
   3619 08            [12] 2416 	inc	r0
   361A E2            [24] 2417 	movx	a,@r0
   361B 08            [12] 2418 	inc	r0
   361C E2            [24] 2419 	movx	a,@r0
   361D 08            [12] 2420 	inc	r0
   361E E2            [24] 2421 	movx	a,@r0
   361F C0 03         [24] 2422 	push	ar3
   3621 75 82 7A      [24] 2423 	mov	dpl,#0x7A
   3624 12 39 16      [24] 2424 	lcall	_register_write
   3627 15 81         [12] 2425 	dec	sp
   3629 D0 07         [24] 2426 	pop	ar7
                           2427 ;	radio/radio.c:761: if (feature_golay) {
   362B 30 04 29      [24] 2428 	jnb	_feature_golay,00104$
                           2429 ;	radio/radio.c:765: register_write(EZRADIOPRO_DATA_ACCESS_CONTROL,
   362E C0 07         [24] 2430 	push	ar7
   3630 74 88         [12] 2431 	mov	a,#0x88
   3632 C0 E0         [24] 2432 	push	acc
   3634 75 82 30      [24] 2433 	mov	dpl,#0x30
   3637 12 39 16      [24] 2434 	lcall	_register_write
   363A 15 81         [12] 2435 	dec	sp
                           2436 ;	radio/radio.c:769: register_write(EZRADIOPRO_HEADER_CONTROL_2, EZRADIOPRO_HDLEN_0BYTE | EZRADIOPRO_SYNCLEN_2BYTE);
   363C 74 02         [12] 2437 	mov	a,#0x02
   363E C0 E0         [24] 2438 	push	acc
   3640 75 82 33      [24] 2439 	mov	dpl,#0x33
   3643 12 39 16      [24] 2440 	lcall	_register_write
   3646 15 81         [12] 2441 	dec	sp
                           2442 ;	radio/radio.c:772: register_write(EZRADIOPRO_HEADER_CONTROL_1, 0x00);
   3648 E4            [12] 2443 	clr	a
   3649 C0 E0         [24] 2444 	push	acc
   364B 75 82 32      [24] 2445 	mov	dpl,#0x32
   364E 12 39 16      [24] 2446 	lcall	_register_write
   3651 15 81         [12] 2447 	dec	sp
   3653 D0 07         [24] 2448 	pop	ar7
   3655 80 40         [24] 2449 	sjmp	00105$
   3657                    2450 00104$:
                           2451 ;	radio/radio.c:774: register_write(EZRADIOPRO_DATA_ACCESS_CONTROL,
   3657 C0 07         [24] 2452 	push	ar7
   3659 74 8D         [12] 2453 	mov	a,#0x8D
   365B C0 E0         [24] 2454 	push	acc
   365D 75 82 30      [24] 2455 	mov	dpl,#0x30
   3660 12 39 16      [24] 2456 	lcall	_register_write
   3663 15 81         [12] 2457 	dec	sp
                           2458 ;	radio/radio.c:780: register_write(EZRADIOPRO_HEADER_CONTROL_2, EZRADIOPRO_HDLEN_2BYTE | EZRADIOPRO_SYNCLEN_2BYTE);
   3665 74 22         [12] 2459 	mov	a,#0x22
   3667 C0 E0         [24] 2460 	push	acc
   3669 75 82 33      [24] 2461 	mov	dpl,#0x33
   366C 12 39 16      [24] 2462 	lcall	_register_write
   366F 15 81         [12] 2463 	dec	sp
                           2464 ;	radio/radio.c:782: register_write(EZRADIOPRO_HEADER_CONTROL_1, 0x0C);
   3671 74 0C         [12] 2465 	mov	a,#0x0C
   3673 C0 E0         [24] 2466 	push	acc
   3675 75 82 32      [24] 2467 	mov	dpl,#0x32
   3678 12 39 16      [24] 2468 	lcall	_register_write
   367B 15 81         [12] 2469 	dec	sp
                           2470 ;	radio/radio.c:783: register_write(EZRADIOPRO_HEADER_ENABLE_3, 0xFF);
   367D 74 FF         [12] 2471 	mov	a,#0xFF
   367F C0 E0         [24] 2472 	push	acc
   3681 75 82 43      [24] 2473 	mov	dpl,#0x43
   3684 12 39 16      [24] 2474 	lcall	_register_write
   3687 15 81         [12] 2475 	dec	sp
                           2476 ;	radio/radio.c:784: register_write(EZRADIOPRO_HEADER_ENABLE_2, 0xFF);
   3689 74 FF         [12] 2477 	mov	a,#0xFF
   368B C0 E0         [24] 2478 	push	acc
   368D 75 82 44      [24] 2479 	mov	dpl,#0x44
   3690 12 39 16      [24] 2480 	lcall	_register_write
   3693 15 81         [12] 2481 	dec	sp
   3695 D0 07         [24] 2482 	pop	ar7
   3697                    2483 00105$:
                           2484 ;	radio/radio.c:789: register_write(EZRADIOPRO_TX_FIFO_CONTROL_1, TX_FIFO_THRESHOLD_HIGH);
   3697 C0 07         [24] 2485 	push	ar7
   3699 74 3C         [12] 2486 	mov	a,#0x3C
   369B C0 E0         [24] 2487 	push	acc
   369D 75 82 7C      [24] 2488 	mov	dpl,#0x7C
   36A0 12 39 16      [24] 2489 	lcall	_register_write
   36A3 15 81         [12] 2490 	dec	sp
                           2491 ;	radio/radio.c:790: register_write(EZRADIOPRO_TX_FIFO_CONTROL_2, TX_FIFO_THRESHOLD_LOW);
   36A5 74 20         [12] 2492 	mov	a,#0x20
   36A7 C0 E0         [24] 2493 	push	acc
   36A9 75 82 7D      [24] 2494 	mov	dpl,#0x7D
   36AC 12 39 16      [24] 2495 	lcall	_register_write
   36AF 15 81         [12] 2496 	dec	sp
                           2497 ;	radio/radio.c:791: register_write(EZRADIOPRO_RX_FIFO_CONTROL, RX_FIFO_THRESHOLD_HIGH);
   36B1 74 32         [12] 2498 	mov	a,#0x32
   36B3 C0 E0         [24] 2499 	push	acc
   36B5 75 82 7E      [24] 2500 	mov	dpl,#0x7E
   36B8 12 39 16      [24] 2501 	lcall	_register_write
   36BB 15 81         [12] 2502 	dec	sp
                           2503 ;	radio/radio.c:793: settings.preamble_length = 16;
   36BD 78 89         [12] 2504 	mov	r0,#(_settings + 0x000b)
   36BF 74 10         [12] 2505 	mov	a,#0x10
   36C1 F2            [24] 2506 	movx	@r0,a
                           2507 ;	radio/radio.c:795: register_write(EZRADIOPRO_PREAMBLE_LENGTH, settings.preamble_length); // nibbles 
   36C2 78 89         [12] 2508 	mov	r0,#(_settings + 0x000b)
   36C4 E2            [24] 2509 	movx	a,@r0
   36C5 FE            [12] 2510 	mov	r6,a
   36C6 C0 06         [24] 2511 	push	ar6
   36C8 75 82 34      [24] 2512 	mov	dpl,#0x34
   36CB 12 39 16      [24] 2513 	lcall	_register_write
   36CE 15 81         [12] 2514 	dec	sp
                           2515 ;	radio/radio.c:796: register_write(EZRADIOPRO_PREAMBLE_DETECTION_CONTROL, 5<<3); // 5 nibbles
   36D0 74 28         [12] 2516 	mov	a,#0x28
   36D2 C0 E0         [24] 2517 	push	acc
   36D4 75 82 35      [24] 2518 	mov	dpl,#0x35
   36D7 12 39 16      [24] 2519 	lcall	_register_write
   36DA 15 81         [12] 2520 	dec	sp
                           2521 ;	radio/radio.c:799: radio_set_transmit_power(0);
   36DC 75 82 00      [24] 2522 	mov	dpl,#0x00
   36DF 12 38 79      [24] 2523 	lcall	_radio_set_transmit_power
   36E2 D0 07         [24] 2524 	pop	ar7
                           2525 ;	radio/radio.c:802: for (i = 0; i < NUM_DATA_RATES - 1; i++) {
   36E4 7E 00         [12] 2526 	mov	r6,#0x00
   36E6                    2527 00131$:
                           2528 ;	radio/radio.c:803: if (air_data_rates[i] >= air_rate) break;
   36E6 EE            [12] 2529 	mov	a,r6
   36E7 90 C9 F6      [24] 2530 	mov	dptr,#_air_data_rates
   36EA 93            [24] 2531 	movc	a,@a+dptr
   36EB FD            [12] 2532 	mov	r5,a
   36EC C3            [12] 2533 	clr	c
   36ED 9F            [12] 2534 	subb	a,r7
   36EE 50 06         [24] 2535 	jnc	00108$
                           2536 ;	radio/radio.c:802: for (i = 0; i < NUM_DATA_RATES - 1; i++) {
   36F0 0E            [12] 2537 	inc	r6
   36F1 BE 0C 00      [24] 2538 	cjne	r6,#0x0C,00205$
   36F4                    2539 00205$:
   36F4 40 F0         [24] 2540 	jc	00131$
   36F6                    2541 00108$:
                           2542 ;	radio/radio.c:805: rate_selection = i;
                           2543 ;	radio/radio.c:807: settings.air_data_rate = air_data_rates[rate_selection];
   36F6 EE            [12] 2544 	mov	a,r6
   36F7 FF            [12] 2545 	mov	r7,a
   36F8 90 C9 F6      [24] 2546 	mov	dptr,#_air_data_rates
   36FB 93            [24] 2547 	movc	a,@a+dptr
   36FC FE            [12] 2548 	mov	r6,a
   36FD 78 86         [12] 2549 	mov	r0,#(_settings + 0x0008)
   36FF F2            [24] 2550 	movx	@r0,a
                           2551 ;	radio/radio.c:809: if (settings.air_data_rate >= 32) {
   3700 BE 20 00      [24] 2552 	cjne	r6,#0x20,00207$
   3703                    2553 00207$:
   3703 40 04         [24] 2554 	jc	00110$
                           2555 ;	radio/radio.c:810: control = 0x0D;
   3705 7E 0D         [12] 2556 	mov	r6,#0x0D
   3707 80 02         [24] 2557 	sjmp	00111$
   3709                    2558 00110$:
                           2559 ;	radio/radio.c:812: control = 0x2D;
   3709 7E 2D         [12] 2560 	mov	r6,#0x2D
   370B                    2561 00111$:
                           2562 ;	radio/radio.c:814: if (param_get(PARAM_MANCHESTER) && settings.air_data_rate <= 128) {
   370B 75 82 0D      [24] 2563 	mov	dpl,#0x0D
   370E C0 07         [24] 2564 	push	ar7
   3710 C0 06         [24] 2565 	push	ar6
   3712 12 27 66      [24] 2566 	lcall	_param_get
   3715 AA 82         [24] 2567 	mov	r2,dpl
   3717 AB 83         [24] 2568 	mov	r3,dph
   3719 AC F0         [24] 2569 	mov	r4,b
   371B FD            [12] 2570 	mov	r5,a
   371C D0 06         [24] 2571 	pop	ar6
   371E D0 07         [24] 2572 	pop	ar7
   3720 EA            [12] 2573 	mov	a,r2
   3721 4B            [12] 2574 	orl	a,r3
   3722 4C            [12] 2575 	orl	a,r4
   3723 4D            [12] 2576 	orl	a,r5
   3724 60 0B         [24] 2577 	jz	00113$
   3726 78 86         [12] 2578 	mov	r0,#(_settings + 0x0008)
   3728 E2            [24] 2579 	movx	a,@r0
   3729 FD            [12] 2580 	mov  r5,a
   372A 24 7F         [12] 2581 	add	a,#0xff - 0x80
   372C 40 03         [24] 2582 	jc	00113$
                           2583 ;	radio/radio.c:816: control |= EZRADIOPRO_ENMANCH;
   372E 43 06 02      [24] 2584 	orl	ar6,#0x02
   3731                    2585 00113$:
                           2586 ;	radio/radio.c:818: register_write(EZRADIOPRO_MODULATION_MODE_CONTROL_1, control);
   3731 C0 07         [24] 2587 	push	ar7
   3733 C0 06         [24] 2588 	push	ar6
   3735 75 82 70      [24] 2589 	mov	dpl,#0x70
   3738 12 39 16      [24] 2590 	lcall	_register_write
   373B 15 81         [12] 2591 	dec	sp
                           2592 ;	radio/radio.c:820: register_write(EZRADIOPRO_MODULATION_MODE_CONTROL_2, 0x23);
   373D 74 23         [12] 2593 	mov	a,#0x23
   373F C0 E0         [24] 2594 	push	acc
   3741 75 82 71      [24] 2595 	mov	dpl,#0x71
   3744 12 39 16      [24] 2596 	lcall	_register_write
   3747 15 81         [12] 2597 	dec	sp
                           2598 ;	radio/radio.c:824: register_write(EZRADIOPRO_AFC_LOOP_GEARSHIFT_OVERRIDE, 0x44);
   3749 74 44         [12] 2599 	mov	a,#0x44
   374B C0 E0         [24] 2600 	push	acc
   374D 75 82 1D      [24] 2601 	mov	dpl,#0x1D
   3750 12 39 16      [24] 2602 	lcall	_register_write
   3753 15 81         [12] 2603 	dec	sp
   3755 D0 07         [24] 2604 	pop	ar7
                           2605 ;	radio/radio.c:828: if (settings.air_data_rate < 200) {
   3757 78 86         [12] 2606 	mov	r0,#(_settings + 0x0008)
   3759 E2            [24] 2607 	movx	a,@r0
   375A FE            [12] 2608 	mov	r6,a
   375B BE C8 00      [24] 2609 	cjne	r6,#0xC8,00211$
   375E                    2610 00211$:
   375E 50 12         [24] 2611 	jnc	00116$
                           2612 ;	radio/radio.c:829: register_write(EZRADIOPRO_AFC_TIMING_CONTROL, 0x0A);
   3760 C0 07         [24] 2613 	push	ar7
   3762 74 0A         [12] 2614 	mov	a,#0x0A
   3764 C0 E0         [24] 2615 	push	acc
   3766 75 82 1E      [24] 2616 	mov	dpl,#0x1E
   3769 12 39 16      [24] 2617 	lcall	_register_write
   376C 15 81         [12] 2618 	dec	sp
   376E D0 07         [24] 2619 	pop	ar7
   3770 80 10         [24] 2620 	sjmp	00117$
   3772                    2621 00116$:
                           2622 ;	radio/radio.c:831: register_write(EZRADIOPRO_AFC_TIMING_CONTROL, 0x02);
   3772 C0 07         [24] 2623 	push	ar7
   3774 74 02         [12] 2624 	mov	a,#0x02
   3776 C0 E0         [24] 2625 	push	acc
   3778 75 82 1E      [24] 2626 	mov	dpl,#0x1E
   377B 12 39 16      [24] 2627 	lcall	_register_write
   377E 15 81         [12] 2628 	dec	sp
   3780 D0 07         [24] 2629 	pop	ar7
   3782                    2630 00117$:
                           2631 ;	radio/radio.c:835: if (g_board_frequency == FREQ_433) {
   3782 78 32         [12] 2632 	mov	r0,#_g_board_frequency
   3784 E2            [24] 2633 	movx	a,@r0
   3785 B4 43 3A      [24] 2634 	cjne	a,#0x43,00129$
                           2635 ;	radio/radio.c:836: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   3788 7E 00         [12] 2636 	mov	r6,#0x00
   378A                    2637 00133$:
                           2638 ;	radio/radio.c:838: reg_table_433[i][rate_selection]);
   378A EE            [12] 2639 	mov	a,r6
   378B 75 F0 0D      [24] 2640 	mov	b,#0x0D
   378E A4            [48] 2641 	mul	ab
   378F 24 03         [12] 2642 	add	a,#_reg_table_433
   3791 FC            [12] 2643 	mov	r4,a
   3792 74 CA         [12] 2644 	mov	a,#(_reg_table_433 >> 8)
   3794 35 F0         [12] 2645 	addc	a,b
   3796 FD            [12] 2646 	mov	r5,a
   3797 EF            [12] 2647 	mov	a,r7
   3798 2C            [12] 2648 	add	a,r4
   3799 F5 82         [12] 2649 	mov	dpl,a
   379B E4            [12] 2650 	clr	a
   379C 3D            [12] 2651 	addc	a,r5
   379D F5 83         [12] 2652 	mov	dph,a
   379F E4            [12] 2653 	clr	a
   37A0 93            [24] 2654 	movc	a,@a+dptr
   37A1 FD            [12] 2655 	mov	r5,a
                           2656 ;	radio/radio.c:837: register_write(reg_index[i],
   37A2 EE            [12] 2657 	mov	a,r6
   37A3 90 C9 EA      [24] 2658 	mov	dptr,#_reg_index
   37A6 93            [24] 2659 	movc	a,@a+dptr
   37A7 FC            [12] 2660 	mov	r4,a
   37A8 C0 07         [24] 2661 	push	ar7
   37AA C0 06         [24] 2662 	push	ar6
   37AC C0 05         [24] 2663 	push	ar5
   37AE 8C 82         [24] 2664 	mov	dpl,r4
   37B0 12 39 16      [24] 2665 	lcall	_register_write
   37B3 15 81         [12] 2666 	dec	sp
   37B5 D0 06         [24] 2667 	pop	ar6
   37B7 D0 07         [24] 2668 	pop	ar7
                           2669 ;	radio/radio.c:836: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   37B9 0E            [12] 2670 	inc	r6
   37BA BE 0C 00      [24] 2671 	cjne	r6,#0x0C,00215$
   37BD                    2672 00215$:
   37BD 40 CB         [24] 2673 	jc	00133$
   37BF 02 38 77      [24] 2674 	ljmp	00130$
   37C2                    2675 00129$:
                           2676 ;	radio/radio.c:840: } else if (g_board_frequency == FREQ_470) {
   37C2 78 32         [12] 2677 	mov	r0,#_g_board_frequency
   37C4 E2            [24] 2678 	movx	a,@r0
   37C5 B4 47 39      [24] 2679 	cjne	a,#0x47,00126$
                           2680 ;	radio/radio.c:841: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   37C8 7E 00         [12] 2681 	mov	r6,#0x00
   37CA                    2682 00135$:
                           2683 ;	radio/radio.c:843: reg_table_470[i][rate_selection]);
   37CA EE            [12] 2684 	mov	a,r6
   37CB 75 F0 0D      [24] 2685 	mov	b,#0x0D
   37CE A4            [48] 2686 	mul	ab
   37CF 24 9F         [12] 2687 	add	a,#_reg_table_470
   37D1 FC            [12] 2688 	mov	r4,a
   37D2 74 CA         [12] 2689 	mov	a,#(_reg_table_470 >> 8)
   37D4 35 F0         [12] 2690 	addc	a,b
   37D6 FD            [12] 2691 	mov	r5,a
   37D7 EF            [12] 2692 	mov	a,r7
   37D8 2C            [12] 2693 	add	a,r4
   37D9 F5 82         [12] 2694 	mov	dpl,a
   37DB E4            [12] 2695 	clr	a
   37DC 3D            [12] 2696 	addc	a,r5
   37DD F5 83         [12] 2697 	mov	dph,a
   37DF E4            [12] 2698 	clr	a
   37E0 93            [24] 2699 	movc	a,@a+dptr
   37E1 FD            [12] 2700 	mov	r5,a
                           2701 ;	radio/radio.c:842: register_write(reg_index[i],
   37E2 EE            [12] 2702 	mov	a,r6
   37E3 90 C9 EA      [24] 2703 	mov	dptr,#_reg_index
   37E6 93            [24] 2704 	movc	a,@a+dptr
   37E7 FC            [12] 2705 	mov	r4,a
   37E8 C0 07         [24] 2706 	push	ar7
   37EA C0 06         [24] 2707 	push	ar6
   37EC C0 05         [24] 2708 	push	ar5
   37EE 8C 82         [24] 2709 	mov	dpl,r4
   37F0 12 39 16      [24] 2710 	lcall	_register_write
   37F3 15 81         [12] 2711 	dec	sp
   37F5 D0 06         [24] 2712 	pop	ar6
   37F7 D0 07         [24] 2713 	pop	ar7
                           2714 ;	radio/radio.c:841: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   37F9 0E            [12] 2715 	inc	r6
   37FA BE 0C 00      [24] 2716 	cjne	r6,#0x0C,00219$
   37FD                    2717 00219$:
   37FD 40 CB         [24] 2718 	jc	00135$
   37FF 80 76         [24] 2719 	sjmp	00130$
   3801                    2720 00126$:
                           2721 ;	radio/radio.c:845: } else if (g_board_frequency == FREQ_868) {
   3801 78 32         [12] 2722 	mov	r0,#_g_board_frequency
   3803 E2            [24] 2723 	movx	a,@r0
   3804 B4 86 39      [24] 2724 	cjne	a,#0x86,00160$
                           2725 ;	radio/radio.c:846: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   3807 7E 00         [12] 2726 	mov	r6,#0x00
   3809                    2727 00137$:
                           2728 ;	radio/radio.c:848: reg_table_868[i][rate_selection]);
   3809 EE            [12] 2729 	mov	a,r6
   380A 75 F0 0D      [24] 2730 	mov	b,#0x0D
   380D A4            [48] 2731 	mul	ab
   380E 24 3B         [12] 2732 	add	a,#_reg_table_868
   3810 FC            [12] 2733 	mov	r4,a
   3811 74 CB         [12] 2734 	mov	a,#(_reg_table_868 >> 8)
   3813 35 F0         [12] 2735 	addc	a,b
   3815 FD            [12] 2736 	mov	r5,a
   3816 EF            [12] 2737 	mov	a,r7
   3817 2C            [12] 2738 	add	a,r4
   3818 F5 82         [12] 2739 	mov	dpl,a
   381A E4            [12] 2740 	clr	a
   381B 3D            [12] 2741 	addc	a,r5
   381C F5 83         [12] 2742 	mov	dph,a
   381E E4            [12] 2743 	clr	a
   381F 93            [24] 2744 	movc	a,@a+dptr
   3820 FD            [12] 2745 	mov	r5,a
                           2746 ;	radio/radio.c:847: register_write(reg_index[i],
   3821 EE            [12] 2747 	mov	a,r6
   3822 90 C9 EA      [24] 2748 	mov	dptr,#_reg_index
   3825 93            [24] 2749 	movc	a,@a+dptr
   3826 FC            [12] 2750 	mov	r4,a
   3827 C0 07         [24] 2751 	push	ar7
   3829 C0 06         [24] 2752 	push	ar6
   382B C0 05         [24] 2753 	push	ar5
   382D 8C 82         [24] 2754 	mov	dpl,r4
   382F 12 39 16      [24] 2755 	lcall	_register_write
   3832 15 81         [12] 2756 	dec	sp
   3834 D0 06         [24] 2757 	pop	ar6
   3836 D0 07         [24] 2758 	pop	ar7
                           2759 ;	radio/radio.c:846: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   3838 0E            [12] 2760 	inc	r6
   3839 BE 0C 00      [24] 2761 	cjne	r6,#0x0C,00223$
   383C                    2762 00223$:
   383C 40 CB         [24] 2763 	jc	00137$
                           2764 ;	radio/radio.c:851: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   383E 80 37         [24] 2765 	sjmp	00130$
   3840                    2766 00160$:
   3840 7E 00         [12] 2767 	mov	r6,#0x00
   3842                    2768 00139$:
                           2769 ;	radio/radio.c:853: reg_table_915[i][rate_selection]);
   3842 EE            [12] 2770 	mov	a,r6
   3843 75 F0 0D      [24] 2771 	mov	b,#0x0D
   3846 A4            [48] 2772 	mul	ab
   3847 24 D7         [12] 2773 	add	a,#_reg_table_915
   3849 FC            [12] 2774 	mov	r4,a
   384A 74 CB         [12] 2775 	mov	a,#(_reg_table_915 >> 8)
   384C 35 F0         [12] 2776 	addc	a,b
   384E FD            [12] 2777 	mov	r5,a
   384F EF            [12] 2778 	mov	a,r7
   3850 2C            [12] 2779 	add	a,r4
   3851 F5 82         [12] 2780 	mov	dpl,a
   3853 E4            [12] 2781 	clr	a
   3854 3D            [12] 2782 	addc	a,r5
   3855 F5 83         [12] 2783 	mov	dph,a
   3857 E4            [12] 2784 	clr	a
   3858 93            [24] 2785 	movc	a,@a+dptr
   3859 FD            [12] 2786 	mov	r5,a
                           2787 ;	radio/radio.c:852: register_write(reg_index[i],
   385A EE            [12] 2788 	mov	a,r6
   385B 90 C9 EA      [24] 2789 	mov	dptr,#_reg_index
   385E 93            [24] 2790 	movc	a,@a+dptr
   385F FC            [12] 2791 	mov	r4,a
   3860 C0 07         [24] 2792 	push	ar7
   3862 C0 06         [24] 2793 	push	ar6
   3864 C0 05         [24] 2794 	push	ar5
   3866 8C 82         [24] 2795 	mov	dpl,r4
   3868 12 39 16      [24] 2796 	lcall	_register_write
   386B 15 81         [12] 2797 	dec	sp
   386D D0 06         [24] 2798 	pop	ar6
   386F D0 07         [24] 2799 	pop	ar7
                           2800 ;	radio/radio.c:851: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   3871 0E            [12] 2801 	inc	r6
   3872 BE 0C 00      [24] 2802 	cjne	r6,#0x0C,00225$
   3875                    2803 00225$:
   3875 40 CB         [24] 2804 	jc	00139$
   3877                    2805 00130$:
                           2806 ;	radio/radio.c:857: return true;
   3877 D3            [12] 2807 	setb	c
   3878 22            [24] 2808 	ret
                           2809 ;------------------------------------------------------------
                           2810 ;Allocation info for local variables in function 'radio_set_transmit_power'
                           2811 ;------------------------------------------------------------
                           2812 ;power                     Allocated with name '_radio_set_transmit_power_power_1_230'
                           2813 ;i                         Allocated with name '_radio_set_transmit_power_i_1_231'
                           2814 ;------------------------------------------------------------
                           2815 ;	radio/radio.c:884: radio_set_transmit_power(uint8_t power)
                           2816 ;	-----------------------------------------
                           2817 ;	 function radio_set_transmit_power
                           2818 ;	-----------------------------------------
   3879                    2819 _radio_set_transmit_power:
   3879 E5 82         [12] 2820 	mov	a,dpl
                           2821 ;	radio/radio.c:903: for (i=0; i<NUM_POWER_LEVELS; i++) {
   387B 90 04 6C      [24] 2822 	mov	dptr,#_radio_set_transmit_power_power_1_230
   387E F0            [24] 2823 	movx	@dptr,a
   387F FF            [12] 2824 	mov	r7,a
   3880 7E 00         [12] 2825 	mov	r6,#0x00
   3882                    2826 00106$:
                           2827 ;	radio/radio.c:904: if (power <= power_levels[i]) break;
   3882 EE            [12] 2828 	mov	a,r6
   3883 90 CC 73      [24] 2829 	mov	dptr,#_power_levels
   3886 93            [24] 2830 	movc	a,@a+dptr
   3887 FD            [12] 2831 	mov	r5,a
   3888 C3            [12] 2832 	clr	c
   3889 9F            [12] 2833 	subb	a,r7
   388A 50 06         [24] 2834 	jnc	00113$
                           2835 ;	radio/radio.c:903: for (i=0; i<NUM_POWER_LEVELS; i++) {
   388C 0E            [12] 2836 	inc	r6
   388D BE 05 00      [24] 2837 	cjne	r6,#0x05,00121$
   3890                    2838 00121$:
   3890 40 F0         [24] 2839 	jc	00106$
   3892                    2840 00113$:
   3892 90 04 6D      [24] 2841 	mov	dptr,#_radio_set_transmit_power_i_1_231
   3895 EE            [12] 2842 	mov	a,r6
   3896 F0            [24] 2843 	movx	@dptr,a
                           2844 ;	radio/radio.c:906: if (i == NUM_POWER_LEVELS) {
   3897 BE 05 06      [24] 2845 	cjne	r6,#0x05,00105$
                           2846 ;	radio/radio.c:907: i = NUM_POWER_LEVELS-1;
   389A 90 04 6D      [24] 2847 	mov	dptr,#_radio_set_transmit_power_i_1_231
   389D 74 04         [12] 2848 	mov	a,#0x04
   389F F0            [24] 2849 	movx	@dptr,a
   38A0                    2850 00105$:
                           2851 ;	radio/radio.c:909: settings.transmit_power = power_levels[i];
   38A0 90 04 6D      [24] 2852 	mov	dptr,#_radio_set_transmit_power_i_1_231
   38A3 E0            [24] 2853 	movx	a,@dptr
   38A4 FF            [12] 2854 	mov	r7,a
   38A5 90 CC 73      [24] 2855 	mov	dptr,#_power_levels
   38A8 93            [24] 2856 	movc	a,@a+dptr
   38A9 FE            [12] 2857 	mov	r6,a
   38AA 78 88         [12] 2858 	mov	r0,#(_settings + 0x000a)
   38AC EE            [12] 2859 	mov	a,r6
   38AD F2            [24] 2860 	movx	@r0,a
                           2861 ;	radio/radio.c:910: register_write(EZRADIOPRO_TX_POWER, i);
   38AE C0 07         [24] 2862 	push	ar7
   38B0 75 82 6D      [24] 2863 	mov	dpl,#0x6D
   38B3 12 39 16      [24] 2864 	lcall	_register_write
   38B6 15 81         [12] 2865 	dec	sp
   38B8 22            [24] 2866 	ret
                           2867 ;------------------------------------------------------------
                           2868 ;Allocation info for local variables in function 'radio_get_transmit_power'
                           2869 ;------------------------------------------------------------
                           2870 ;	radio/radio.c:917: radio_get_transmit_power(void)
                           2871 ;	-----------------------------------------
                           2872 ;	 function radio_get_transmit_power
                           2873 ;	-----------------------------------------
   38B9                    2874 _radio_get_transmit_power:
                           2875 ;	radio/radio.c:919: return settings.transmit_power;
   38B9 78 88         [12] 2876 	mov	r0,#(_settings + 0x000a)
   38BB E2            [24] 2877 	movx	a,@r0
   38BC F5 82         [12] 2878 	mov	dpl,a
   38BE 22            [24] 2879 	ret
                           2880 ;------------------------------------------------------------
                           2881 ;Allocation info for local variables in function 'radio_set_network_id'
                           2882 ;------------------------------------------------------------
                           2883 ;id                        Allocated with name '_radio_set_network_id_id_1_236'
                           2884 ;------------------------------------------------------------
                           2885 ;	radio/radio.c:925: radio_set_network_id(uint16_t id)
                           2886 ;	-----------------------------------------
                           2887 ;	 function radio_set_network_id
                           2888 ;	-----------------------------------------
   38BF                    2889 _radio_set_network_id:
   38BF AF 83         [24] 2890 	mov	r7,dph
   38C1 E5 82         [12] 2891 	mov	a,dpl
   38C3 90 04 6E      [24] 2892 	mov	dptr,#_radio_set_network_id_id_1_236
   38C6 F0            [24] 2893 	movx	@dptr,a
   38C7 EF            [12] 2894 	mov	a,r7
   38C8 A3            [24] 2895 	inc	dptr
   38C9 F0            [24] 2896 	movx	@dptr,a
                           2897 ;	radio/radio.c:927: netid[0] = id&0xFF;
   38CA 90 04 6E      [24] 2898 	mov	dptr,#_radio_set_network_id_id_1_236
   38CD E0            [24] 2899 	movx	a,@dptr
   38CE FE            [12] 2900 	mov	r6,a
   38CF A3            [24] 2901 	inc	dptr
   38D0 E0            [24] 2902 	movx	a,@dptr
   38D1 FF            [12] 2903 	mov	r7,a
   38D2 8E 04         [24] 2904 	mov	ar4,r6
   38D4 78 7C         [12] 2905 	mov	r0,#_netid
   38D6 EC            [12] 2906 	mov	a,r4
   38D7 F2            [24] 2907 	movx	@r0,a
                           2908 ;	radio/radio.c:928: netid[1] = id>>8;
   38D8 8F 05         [24] 2909 	mov	ar5,r7
   38DA 78 7D         [12] 2910 	mov	r0,#(_netid + 0x0001)
   38DC ED            [12] 2911 	mov	a,r5
   38DD F2            [24] 2912 	movx	@r0,a
                           2913 ;	radio/radio.c:929: if (!feature_golay) {
   38DE 20 04 34      [24] 2914 	jb	_feature_golay,00103$
                           2915 ;	radio/radio.c:932: register_write(EZRADIOPRO_TRANSMIT_HEADER_3, id >> 8);
   38E1 C0 07         [24] 2916 	push	ar7
   38E3 C0 06         [24] 2917 	push	ar6
   38E5 C0 05         [24] 2918 	push	ar5
   38E7 C0 05         [24] 2919 	push	ar5
   38E9 75 82 3A      [24] 2920 	mov	dpl,#0x3A
   38EC 12 39 16      [24] 2921 	lcall	_register_write
   38EF 15 81         [12] 2922 	dec	sp
   38F1 D0 05         [24] 2923 	pop	ar5
   38F3 D0 06         [24] 2924 	pop	ar6
   38F5 D0 07         [24] 2925 	pop	ar7
                           2926 ;	radio/radio.c:933: register_write(EZRADIOPRO_TRANSMIT_HEADER_2, id & 0xFF);
   38F7 C0 06         [24] 2927 	push	ar6
   38F9 C0 05         [24] 2928 	push	ar5
   38FB C0 06         [24] 2929 	push	ar6
   38FD 75 82 3B      [24] 2930 	mov	dpl,#0x3B
   3900 12 39 16      [24] 2931 	lcall	_register_write
   3903 15 81         [12] 2932 	dec	sp
                           2933 ;	radio/radio.c:934: register_write(EZRADIOPRO_CHECK_HEADER_3, id >> 8);
   3905 75 82 3F      [24] 2934 	mov	dpl,#0x3F
   3908 12 39 16      [24] 2935 	lcall	_register_write
   390B 15 81         [12] 2936 	dec	sp
                           2937 ;	radio/radio.c:935: register_write(EZRADIOPRO_CHECK_HEADER_2, id & 0xFF);
   390D 75 82 40      [24] 2938 	mov	dpl,#0x40
   3910 12 39 16      [24] 2939 	lcall	_register_write
   3913 15 81         [12] 2940 	dec	sp
   3915                    2941 00103$:
   3915 22            [24] 2942 	ret
                           2943 ;------------------------------------------------------------
                           2944 ;Allocation info for local variables in function 'register_write'
                           2945 ;------------------------------------------------------------
                           2946 ;value                     Allocated to stack - sp -2
                           2947 ;reg                       Allocated to registers r7 
                           2948 ;EX0_saved                 Allocated to registers b0 
                           2949 ;------------------------------------------------------------
                           2950 ;	radio/radio.c:946: register_write(uint8_t reg, uint8_t value) __reentrant
                           2951 ;	-----------------------------------------
                           2952 ;	 function register_write
                           2953 ;	-----------------------------------------
   3916                    2954 _register_write:
   3916 AF 82         [24] 2955 	mov	r7,dpl
                           2956 ;	radio/radio.c:948: EX0_SAVE_DISABLE;
   3918 A2 A8         [12] 2957 	mov	c,_EX0
   391A 92 38         [24] 2958 	mov	b0,c
   391C C2 A8         [12] 2959 	clr	_EX0
                           2960 ;	radio/radio.c:950: NSS1 = 0;                           // drive NSS low
   391E C2 94         [12] 2961 	clr	_NSS1
                           2962 ;	radio/radio.c:951: SPIF1 = 0;                          // clear SPIF
   3920 C2 B7         [12] 2963 	clr	_SPIF1
                           2964 ;	radio/radio.c:952: SPI1DAT = (reg | 0x80);             // write reg address
   3922 74 80         [12] 2965 	mov	a,#0x80
   3924 4F            [12] 2966 	orl	a,r7
   3925 F5 86         [12] 2967 	mov	_SPI1DAT,a
                           2968 ;	radio/radio.c:953: while (!TXBMT1);                    // wait on TXBMT
   3927                    2969 00101$:
   3927 30 B1 FD      [24] 2970 	jnb	_TXBMT1,00101$
                           2971 ;	radio/radio.c:954: SPI1DAT = value;                    // write value
   392A A8 81         [24] 2972 	mov	r0,sp
   392C 18            [12] 2973 	dec	r0
   392D 18            [12] 2974 	dec	r0
   392E 86 86         [24] 2975 	mov	_SPI1DAT,@r0
                           2976 ;	radio/radio.c:955: while (!TXBMT1);                    // wait on TXBMT
   3930                    2977 00104$:
   3930 30 B1 FD      [24] 2978 	jnb	_TXBMT1,00104$
                           2979 ;	radio/radio.c:956: while ((SPI1CFG & 0x80) == 0x80);   // wait on SPIBSY
   3933                    2980 00107$:
   3933 74 80         [12] 2981 	mov	a,#0x80
   3935 55 84         [12] 2982 	anl	a,_SPI1CFG
   3937 FF            [12] 2983 	mov	r7,a
   3938 BF 80 02      [24] 2984 	cjne	r7,#0x80,00129$
   393B 80 F6         [24] 2985 	sjmp	00107$
   393D                    2986 00129$:
                           2987 ;	radio/radio.c:958: SPIF1 = 0;                          // leave SPIF cleared
   393D C2 B7         [12] 2988 	clr	_SPIF1
                           2989 ;	radio/radio.c:959: NSS1 = 1;                           // drive NSS high
   393F D2 94         [12] 2990 	setb	_NSS1
                           2991 ;	radio/radio.c:961: EX0_RESTORE;
   3941 A2 38         [12] 2992 	mov	c,b0
   3943 92 A8         [24] 2993 	mov	_EX0,c
   3945 22            [24] 2994 	ret
                           2995 ;------------------------------------------------------------
                           2996 ;Allocation info for local variables in function 'register_read'
                           2997 ;------------------------------------------------------------
                           2998 ;reg                       Allocated to registers r7 
                           2999 ;value                     Allocated to registers r7 
                           3000 ;EX0_saved                 Allocated to registers b0 
                           3001 ;------------------------------------------------------------
                           3002 ;	radio/radio.c:971: register_read(uint8_t reg) __reentrant
                           3003 ;	-----------------------------------------
                           3004 ;	 function register_read
                           3005 ;	-----------------------------------------
   3946                    3006 _register_read:
   3946 AF 82         [24] 3007 	mov	r7,dpl
                           3008 ;	radio/radio.c:974: EX0_SAVE_DISABLE;
   3948 A2 A8         [12] 3009 	mov	c,_EX0
   394A 92 38         [24] 3010 	mov	b0,c
   394C C2 A8         [12] 3011 	clr	_EX0
                           3012 ;	radio/radio.c:976: NSS1 = 0;				// dsrive NSS low
   394E C2 94         [12] 3013 	clr	_NSS1
                           3014 ;	radio/radio.c:977: SPIF1 = 0;				// clear SPIF
   3950 C2 B7         [12] 3015 	clr	_SPIF1
                           3016 ;	radio/radio.c:978: SPI1DAT = (reg);			// write reg address
   3952 8F 86         [24] 3017 	mov	_SPI1DAT,r7
                           3018 ;	radio/radio.c:979: while (!TXBMT1);			// wait on TXBMT
   3954                    3019 00101$:
   3954 30 B1 FD      [24] 3020 	jnb	_TXBMT1,00101$
                           3021 ;	radio/radio.c:980: SPI1DAT = 0x00;				// write anything
   3957 75 86 00      [24] 3022 	mov	_SPI1DAT,#0x00
                           3023 ;	radio/radio.c:981: while (!TXBMT1);			// wait on TXBMT
   395A                    3024 00104$:
   395A 30 B1 FD      [24] 3025 	jnb	_TXBMT1,00104$
                           3026 ;	radio/radio.c:982: while ((SPI1CFG & 0x80) == 0x80);	// wait on SPIBSY
   395D                    3027 00107$:
   395D 74 80         [12] 3028 	mov	a,#0x80
   395F 55 84         [12] 3029 	anl	a,_SPI1CFG
   3961 FF            [12] 3030 	mov	r7,a
   3962 BF 80 02      [24] 3031 	cjne	r7,#0x80,00129$
   3965 80 F6         [24] 3032 	sjmp	00107$
   3967                    3033 00129$:
                           3034 ;	radio/radio.c:983: value = SPI1DAT;			// read value
   3967 AF 86         [24] 3035 	mov	r7,_SPI1DAT
                           3036 ;	radio/radio.c:984: SPIF1 = 0;				// leave SPIF cleared
   3969 C2 B7         [12] 3037 	clr	_SPIF1
                           3038 ;	radio/radio.c:985: NSS1 = 1;				// drive NSS high
   396B D2 94         [12] 3039 	setb	_NSS1
                           3040 ;	radio/radio.c:987: EX0_RESTORE;
   396D A2 38         [12] 3041 	mov	c,b0
   396F 92 A8         [24] 3042 	mov	_EX0,c
                           3043 ;	radio/radio.c:989: return value;
   3971 8F 82         [24] 3044 	mov	dpl,r7
   3973 22            [24] 3045 	ret
                           3046 ;------------------------------------------------------------
                           3047 ;Allocation info for local variables in function 'read_receive_fifo'
                           3048 ;------------------------------------------------------------
                           3049 ;buf                       Allocated to stack - sp -3
                           3050 ;n                         Allocated to registers r7 
                           3051 ;------------------------------------------------------------
                           3052 ;	radio/radio.c:996: read_receive_fifo(register uint8_t n, __xdata uint8_t * buf) __reentrant
                           3053 ;	-----------------------------------------
                           3054 ;	 function read_receive_fifo
                           3055 ;	-----------------------------------------
   3974                    3056 _read_receive_fifo:
   3974 AF 82         [24] 3057 	mov	r7,dpl
                           3058 ;	radio/radio.c:998: NSS1 = 0;				// drive NSS low
   3976 C2 94         [12] 3059 	clr	_NSS1
                           3060 ;	radio/radio.c:999: SPIF1 = 0;				// clear SPIF
   3978 C2 B7         [12] 3061 	clr	_SPIF1
                           3062 ;	radio/radio.c:1000: SPI1DAT = EZRADIOPRO_FIFO_ACCESS;
   397A 75 86 7F      [24] 3063 	mov	_SPI1DAT,#0x7F
                           3064 ;	radio/radio.c:1001: while (!SPIF1);				// wait on SPIF
   397D                    3065 00101$:
   397D 30 B7 FD      [24] 3066 	jnb	_SPIF1,00101$
                           3067 ;	radio/radio.c:1002: ACC = SPI1DAT;				// discard first byte
   3980 85 86 E0      [24] 3068 	mov	_ACC,_SPI1DAT
                           3069 ;	radio/radio.c:1004: while (n--) {
   3983 E5 81         [12] 3070 	mov	a,sp
   3985 24 FD         [12] 3071 	add	a,#0xfd
   3987 F8            [12] 3072 	mov	r0,a
   3988 86 05         [24] 3073 	mov	ar5,@r0
   398A 08            [12] 3074 	inc	r0
   398B 86 06         [24] 3075 	mov	ar6,@r0
   398D                    3076 00107$:
   398D 8F 04         [24] 3077 	mov	ar4,r7
   398F 1F            [12] 3078 	dec	r7
   3990 EC            [12] 3079 	mov	a,r4
   3991 60 16         [24] 3080 	jz	00109$
                           3081 ;	radio/radio.c:1005: SPIF1 = 0;			// clear SPIF
   3993 C2 B7         [12] 3082 	clr	_SPIF1
                           3083 ;	radio/radio.c:1006: SPI1DAT = 0x00;			// write anything
   3995 75 86 00      [24] 3084 	mov	_SPI1DAT,#0x00
                           3085 ;	radio/radio.c:1007: while (!SPIF1);			// wait on SPIF
   3998                    3086 00104$:
   3998 30 B7 FD      [24] 3087 	jnb	_SPIF1,00104$
                           3088 ;	radio/radio.c:1008: *buf++ = SPI1DAT;		// copy to buffer
   399B 8D 82         [24] 3089 	mov	dpl,r5
   399D 8E 83         [24] 3090 	mov	dph,r6
   399F E5 86         [12] 3091 	mov	a,_SPI1DAT
   39A1 F0            [24] 3092 	movx	@dptr,a
   39A2 A3            [24] 3093 	inc	dptr
   39A3 AD 82         [24] 3094 	mov	r5,dpl
   39A5 AE 83         [24] 3095 	mov	r6,dph
   39A7 80 E4         [24] 3096 	sjmp	00107$
   39A9                    3097 00109$:
                           3098 ;	radio/radio.c:1011: SPIF1 = 0;				// leave SPIF cleared
   39A9 C2 B7         [12] 3099 	clr	_SPIF1
                           3100 ;	radio/radio.c:1012: NSS1 = 1;				// drive NSS high
   39AB D2 94         [12] 3101 	setb	_NSS1
   39AD 22            [24] 3102 	ret
                           3103 ;------------------------------------------------------------
                           3104 ;Allocation info for local variables in function 'clear_status_registers'
                           3105 ;------------------------------------------------------------
                           3106 ;	radio/radio.c:1018: clear_status_registers(void)
                           3107 ;	-----------------------------------------
                           3108 ;	 function clear_status_registers
                           3109 ;	-----------------------------------------
   39AE                    3110 _clear_status_registers:
                           3111 ;	radio/radio.c:1020: register_read(EZRADIOPRO_INTERRUPT_STATUS_1);
   39AE 75 82 03      [24] 3112 	mov	dpl,#0x03
   39B1 12 39 46      [24] 3113 	lcall	_register_read
                           3114 ;	radio/radio.c:1021: register_read(EZRADIOPRO_INTERRUPT_STATUS_2);
   39B4 75 82 04      [24] 3115 	mov	dpl,#0x04
   39B7 02 39 46      [24] 3116 	ljmp	_register_read
                           3117 ;------------------------------------------------------------
                           3118 ;Allocation info for local variables in function 'scale_uint32'
                           3119 ;------------------------------------------------------------
                           3120 ;	radio/radio.c:1031: scale_uint32(__pdata uint32_t value, __pdata uint32_t scale)
                           3121 ;	-----------------------------------------
                           3122 ;	 function scale_uint32
                           3123 ;	-----------------------------------------
   39BA                    3124 _scale_uint32:
   39BA AF 82         [24] 3125 	mov	r7,dpl
   39BC AE 83         [24] 3126 	mov	r6,dph
   39BE AD F0         [24] 3127 	mov	r5,b
   39C0 FC            [12] 3128 	mov	r4,a
   39C1 78 9E         [12] 3129 	mov	r0,#_scale_uint32_value_1_248
   39C3 EF            [12] 3130 	mov	a,r7
   39C4 F2            [24] 3131 	movx	@r0,a
   39C5 08            [12] 3132 	inc	r0
   39C6 EE            [12] 3133 	mov	a,r6
   39C7 F2            [24] 3134 	movx	@r0,a
   39C8 08            [12] 3135 	inc	r0
   39C9 ED            [12] 3136 	mov	a,r5
   39CA F2            [24] 3137 	movx	@r0,a
   39CB 08            [12] 3138 	inc	r0
   39CC EC            [12] 3139 	mov	a,r4
   39CD F2            [24] 3140 	movx	@r0,a
                           3141 ;	radio/radio.c:1033: return (value + (scale >> 1)) / scale;
   39CE 78 9D         [12] 3142 	mov	r0,#(_scale_uint32_PARM_2 + 3)
   39D0 E2            [24] 3143 	movx	a,@r0
   39D1 C3            [12] 3144 	clr	c
   39D2 13            [12] 3145 	rrc	a
   39D3 FF            [12] 3146 	mov	r7,a
   39D4 18            [12] 3147 	dec	r0
   39D5 E2            [24] 3148 	movx	a,@r0
   39D6 13            [12] 3149 	rrc	a
   39D7 FE            [12] 3150 	mov	r6,a
   39D8 18            [12] 3151 	dec	r0
   39D9 E2            [24] 3152 	movx	a,@r0
   39DA 13            [12] 3153 	rrc	a
   39DB FB            [12] 3154 	mov	r3,a
   39DC 18            [12] 3155 	dec	r0
   39DD E2            [24] 3156 	movx	a,@r0
   39DE 13            [12] 3157 	rrc	a
   39DF FA            [12] 3158 	mov	r2,a
   39E0 78 9E         [12] 3159 	mov	r0,#_scale_uint32_value_1_248
   39E2 E2            [24] 3160 	movx	a,@r0
   39E3 2A            [12] 3161 	add	a,r2
   39E4 FA            [12] 3162 	mov	r2,a
   39E5 08            [12] 3163 	inc	r0
   39E6 E2            [24] 3164 	movx	a,@r0
   39E7 3B            [12] 3165 	addc	a,r3
   39E8 FB            [12] 3166 	mov	r3,a
   39E9 08            [12] 3167 	inc	r0
   39EA E2            [24] 3168 	movx	a,@r0
   39EB 3E            [12] 3169 	addc	a,r6
   39EC FE            [12] 3170 	mov	r6,a
   39ED 08            [12] 3171 	inc	r0
   39EE E2            [24] 3172 	movx	a,@r0
   39EF 3F            [12] 3173 	addc	a,r7
   39F0 FF            [12] 3174 	mov	r7,a
   39F1 78 9A         [12] 3175 	mov	r0,#_scale_uint32_PARM_2
   39F3 90 05 B2      [24] 3176 	mov	dptr,#__divulong_PARM_2
   39F6 E2            [24] 3177 	movx	a,@r0
   39F7 F0            [24] 3178 	movx	@dptr,a
   39F8 08            [12] 3179 	inc	r0
   39F9 E2            [24] 3180 	movx	a,@r0
   39FA A3            [24] 3181 	inc	dptr
   39FB F0            [24] 3182 	movx	@dptr,a
   39FC 08            [12] 3183 	inc	r0
   39FD E2            [24] 3184 	movx	a,@r0
   39FE A3            [24] 3185 	inc	dptr
   39FF F0            [24] 3186 	movx	@dptr,a
   3A00 08            [12] 3187 	inc	r0
   3A01 E2            [24] 3188 	movx	a,@r0
   3A02 A3            [24] 3189 	inc	dptr
   3A03 F0            [24] 3190 	movx	@dptr,a
   3A04 8A 82         [24] 3191 	mov	dpl,r2
   3A06 8B 83         [24] 3192 	mov	dph,r3
   3A08 8E F0         [24] 3193 	mov	b,r6
   3A0A EF            [12] 3194 	mov	a,r7
   3A0B 02 5C 3A      [24] 3195 	ljmp	__divulong
                           3196 ;------------------------------------------------------------
                           3197 ;Allocation info for local variables in function 'software_reset'
                           3198 ;------------------------------------------------------------
                           3199 ;status                    Allocated with name '_software_reset_status_1_251'
                           3200 ;------------------------------------------------------------
                           3201 ;	radio/radio.c:1041: software_reset(void)
                           3202 ;	-----------------------------------------
                           3203 ;	 function software_reset
                           3204 ;	-----------------------------------------
   3A0E                    3205 _software_reset:
                           3206 ;	radio/radio.c:1046: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0);
   3A0E E4            [12] 3207 	clr	a
   3A0F C0 E0         [24] 3208 	push	acc
   3A11 75 82 05      [24] 3209 	mov	dpl,#0x05
   3A14 12 39 16      [24] 3210 	lcall	_register_write
   3A17 15 81         [12] 3211 	dec	sp
                           3212 ;	radio/radio.c:1047: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, 0);
   3A19 E4            [12] 3213 	clr	a
   3A1A C0 E0         [24] 3214 	push	acc
   3A1C 75 82 06      [24] 3215 	mov	dpl,#0x06
   3A1F 12 39 16      [24] 3216 	lcall	_register_write
   3A22 15 81         [12] 3217 	dec	sp
                           3218 ;	radio/radio.c:1049: clear_status_registers();
   3A24 12 39 AE      [24] 3219 	lcall	_clear_status_registers
                           3220 ;	radio/radio.c:1052: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_1, (EZRADIOPRO_SWRES | EZRADIOPRO_XTON));
   3A27 74 81         [12] 3221 	mov	a,#0x81
   3A29 C0 E0         [24] 3222 	push	acc
   3A2B 75 82 07      [24] 3223 	mov	dpl,#0x07
   3A2E 12 39 16      [24] 3224 	lcall	_register_write
   3A31 15 81         [12] 3225 	dec	sp
                           3226 ;	radio/radio.c:1055: delay_set(2);
   3A33 90 00 02      [24] 3227 	mov	dptr,#0x0002
   3A36 12 56 5A      [24] 3228 	lcall	_delay_set
                           3229 ;	radio/radio.c:1056: while (IRQ) {
   3A39                    3230 00103$:
   3A39 30 87 07      [24] 3231 	jnb	_IRQ,00105$
                           3232 ;	radio/radio.c:1057: if (delay_expired()) {
   3A3C 12 56 8B      [24] 3233 	lcall	_delay_expired
   3A3F 50 F8         [24] 3234 	jnc	00103$
                           3235 ;	radio/radio.c:1058: return false;
   3A41 C3            [12] 3236 	clr	c
   3A42 22            [24] 3237 	ret
   3A43                    3238 00105$:
                           3239 ;	radio/radio.c:1063: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0);
   3A43 E4            [12] 3240 	clr	a
   3A44 C0 E0         [24] 3241 	push	acc
   3A46 75 82 05      [24] 3242 	mov	dpl,#0x05
   3A49 12 39 16      [24] 3243 	lcall	_register_write
   3A4C 15 81         [12] 3244 	dec	sp
                           3245 ;	radio/radio.c:1064: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, EZRADIOPRO_ENCHIPRDY);
   3A4E 74 02         [12] 3246 	mov	a,#0x02
   3A50 C0 E0         [24] 3247 	push	acc
   3A52 75 82 06      [24] 3248 	mov	dpl,#0x06
   3A55 12 39 16      [24] 3249 	lcall	_register_write
   3A58 15 81         [12] 3250 	dec	sp
                           3251 ;	radio/radio.c:1066: delay_set(20);
   3A5A 90 00 14      [24] 3252 	mov	dptr,#0x0014
   3A5D 12 56 5A      [24] 3253 	lcall	_delay_set
                           3254 ;	radio/radio.c:1067: while (!delay_expired()) {
   3A60                    3255 00108$:
   3A60 12 56 8B      [24] 3256 	lcall	_delay_expired
   3A63 40 13         [24] 3257 	jc	00110$
                           3258 ;	radio/radio.c:1068: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_1);
   3A65 75 82 03      [24] 3259 	mov	dpl,#0x03
   3A68 12 39 46      [24] 3260 	lcall	_register_read
                           3261 ;	radio/radio.c:1069: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_2);
   3A6B 75 82 04      [24] 3262 	mov	dpl,#0x04
   3A6E 12 39 46      [24] 3263 	lcall	_register_read
   3A71 E5 82         [12] 3264 	mov	a,dpl
                           3265 ;	radio/radio.c:1070: if (status & EZRADIOPRO_ICHIPRDY) {
   3A73 30 E1 EA      [24] 3266 	jnb	acc.1,00108$
                           3267 ;	radio/radio.c:1071: return true;
   3A76 D3            [12] 3268 	setb	c
   3A77 22            [24] 3269 	ret
   3A78                    3270 00110$:
                           3271 ;	radio/radio.c:1074: return false;
   3A78 C3            [12] 3272 	clr	c
   3A79 22            [24] 3273 	ret
                           3274 ;------------------------------------------------------------
                           3275 ;Allocation info for local variables in function 'set_frequency_registers'
                           3276 ;------------------------------------------------------------
                           3277 ;band                      Allocated with name '_set_frequency_registers_band_1_257'
                           3278 ;------------------------------------------------------------
                           3279 ;	radio/radio.c:1081: set_frequency_registers(__pdata uint32_t frequency)
                           3280 ;	-----------------------------------------
                           3281 ;	 function set_frequency_registers
                           3282 ;	-----------------------------------------
   3A7A                    3283 _set_frequency_registers:
   3A7A AF 82         [24] 3284 	mov	r7,dpl
   3A7C AE 83         [24] 3285 	mov	r6,dph
   3A7E AD F0         [24] 3286 	mov	r5,b
   3A80 FC            [12] 3287 	mov	r4,a
   3A81 78 A2         [12] 3288 	mov	r0,#_set_frequency_registers_frequency_1_256
   3A83 EF            [12] 3289 	mov	a,r7
   3A84 F2            [24] 3290 	movx	@r0,a
   3A85 08            [12] 3291 	inc	r0
   3A86 EE            [12] 3292 	mov	a,r6
   3A87 F2            [24] 3293 	movx	@r0,a
   3A88 08            [12] 3294 	inc	r0
   3A89 ED            [12] 3295 	mov	a,r5
   3A8A F2            [24] 3296 	movx	@r0,a
   3A8B 08            [12] 3297 	inc	r0
   3A8C EC            [12] 3298 	mov	a,r4
   3A8D F2            [24] 3299 	movx	@r0,a
                           3300 ;	radio/radio.c:1086: if (frequency > 480000000UL) {
   3A8E 78 A2         [12] 3301 	mov	r0,#_set_frequency_registers_frequency_1_256
   3A90 C3            [12] 3302 	clr	c
   3A91 E2            [24] 3303 	movx	a,@r0
   3A92 F5 F0         [12] 3304 	mov	b,a
   3A94 E4            [12] 3305 	clr	a
   3A95 95 F0         [12] 3306 	subb	a,b
   3A97 08            [12] 3307 	inc	r0
   3A98 E2            [24] 3308 	movx	a,@r0
   3A99 F5 F0         [12] 3309 	mov	b,a
   3A9B 74 38         [12] 3310 	mov	a,#0x38
   3A9D 95 F0         [12] 3311 	subb	a,b
   3A9F 08            [12] 3312 	inc	r0
   3AA0 E2            [24] 3313 	movx	a,@r0
   3AA1 F5 F0         [12] 3314 	mov	b,a
   3AA3 74 9C         [12] 3315 	mov	a,#0x9C
   3AA5 95 F0         [12] 3316 	subb	a,b
   3AA7 08            [12] 3317 	inc	r0
   3AA8 E2            [24] 3318 	movx	a,@r0
   3AA9 F5 F0         [12] 3319 	mov	b,a
   3AAB 74 1C         [12] 3320 	mov	a,#0x1C
   3AAD 95 F0         [12] 3321 	subb	a,b
   3AAF 40 03         [24] 3322 	jc	00109$
   3AB1 02 3B 70      [24] 3323 	ljmp	00102$
   3AB4                    3324 00109$:
                           3325 ;	radio/radio.c:1087: frequency -= 480000000UL;
   3AB4 78 A3         [12] 3326 	mov	r0,#(_set_frequency_registers_frequency_1_256 + 1)
   3AB6 E2            [24] 3327 	movx	a,@r0
   3AB7 24 C8         [12] 3328 	add	a,#0xC8
   3AB9 F2            [24] 3329 	movx	@r0,a
   3ABA 08            [12] 3330 	inc	r0
   3ABB E2            [24] 3331 	movx	a,@r0
   3ABC 34 63         [12] 3332 	addc	a,#0x63
   3ABE F2            [24] 3333 	movx	@r0,a
   3ABF 08            [12] 3334 	inc	r0
   3AC0 E2            [24] 3335 	movx	a,@r0
   3AC1 34 E3         [12] 3336 	addc	a,#0xE3
   3AC3 F2            [24] 3337 	movx	@r0,a
                           3338 ;	radio/radio.c:1088: band  = frequency / 20000000UL;
   3AC4 90 05 B2      [24] 3339 	mov	dptr,#__divulong_PARM_2
   3AC7 E4            [12] 3340 	clr	a
   3AC8 F0            [24] 3341 	movx	@dptr,a
   3AC9 74 2D         [12] 3342 	mov	a,#0x2D
   3ACB A3            [24] 3343 	inc	dptr
   3ACC F0            [24] 3344 	movx	@dptr,a
   3ACD 74 31         [12] 3345 	mov	a,#0x31
   3ACF A3            [24] 3346 	inc	dptr
   3AD0 F0            [24] 3347 	movx	@dptr,a
   3AD1 74 01         [12] 3348 	mov	a,#0x01
   3AD3 A3            [24] 3349 	inc	dptr
   3AD4 F0            [24] 3350 	movx	@dptr,a
   3AD5 78 A2         [12] 3351 	mov	r0,#_set_frequency_registers_frequency_1_256
   3AD7 E2            [24] 3352 	movx	a,@r0
   3AD8 F5 82         [12] 3353 	mov	dpl,a
   3ADA 08            [12] 3354 	inc	r0
   3ADB E2            [24] 3355 	movx	a,@r0
   3ADC F5 83         [12] 3356 	mov	dph,a
   3ADE 08            [12] 3357 	inc	r0
   3ADF E2            [24] 3358 	movx	a,@r0
   3AE0 F5 F0         [12] 3359 	mov	b,a
   3AE2 08            [12] 3360 	inc	r0
   3AE3 E2            [24] 3361 	movx	a,@r0
   3AE4 12 5C 3A      [24] 3362 	lcall	__divulong
   3AE7 AA 82         [24] 3363 	mov	r2,dpl
   3AE9 90 04 70      [24] 3364 	mov	dptr,#_set_frequency_registers_band_1_257
   3AEC EA            [12] 3365 	mov	a,r2
   3AED F0            [24] 3366 	movx	@dptr,a
                           3367 ;	radio/radio.c:1089: frequency -= (uint32_t)band * 20000000UL;
   3AEE 90 05 D7      [24] 3368 	mov	dptr,#__mullong_PARM_2
   3AF1 EA            [12] 3369 	mov	a,r2
   3AF2 F0            [24] 3370 	movx	@dptr,a
   3AF3 E4            [12] 3371 	clr	a
   3AF4 A3            [24] 3372 	inc	dptr
   3AF5 F0            [24] 3373 	movx	@dptr,a
   3AF6 E4            [12] 3374 	clr	a
   3AF7 A3            [24] 3375 	inc	dptr
   3AF8 F0            [24] 3376 	movx	@dptr,a
   3AF9 E4            [12] 3377 	clr	a
   3AFA A3            [24] 3378 	inc	dptr
   3AFB F0            [24] 3379 	movx	@dptr,a
   3AFC 90 2D 00      [24] 3380 	mov	dptr,#0x2D00
   3AFF 75 F0 31      [24] 3381 	mov	b,#0x31
   3B02 74 01         [12] 3382 	mov	a,#0x01
   3B04 12 5F 98      [24] 3383 	lcall	__mullong
   3B07 AC 82         [24] 3384 	mov	r4,dpl
   3B09 AD 83         [24] 3385 	mov	r5,dph
   3B0B AE F0         [24] 3386 	mov	r6,b
   3B0D FF            [12] 3387 	mov	r7,a
   3B0E 78 A2         [12] 3388 	mov	r0,#_set_frequency_registers_frequency_1_256
   3B10 E2            [24] 3389 	movx	a,@r0
   3B11 C3            [12] 3390 	clr	c
   3B12 9C            [12] 3391 	subb	a,r4
   3B13 F2            [24] 3392 	movx	@r0,a
   3B14 08            [12] 3393 	inc	r0
   3B15 E2            [24] 3394 	movx	a,@r0
   3B16 9D            [12] 3395 	subb	a,r5
   3B17 F2            [24] 3396 	movx	@r0,a
   3B18 08            [12] 3397 	inc	r0
   3B19 E2            [24] 3398 	movx	a,@r0
   3B1A 9E            [12] 3399 	subb	a,r6
   3B1B F2            [24] 3400 	movx	@r0,a
   3B1C 08            [12] 3401 	inc	r0
   3B1D E2            [24] 3402 	movx	a,@r0
   3B1E 9F            [12] 3403 	subb	a,r7
   3B1F F2            [24] 3404 	movx	@r0,a
                           3405 ;	radio/radio.c:1090: frequency  = scale_uint32(frequency, 625);
   3B20 78 9A         [12] 3406 	mov	r0,#_scale_uint32_PARM_2
   3B22 74 71         [12] 3407 	mov	a,#0x71
   3B24 F2            [24] 3408 	movx	@r0,a
   3B25 08            [12] 3409 	inc	r0
   3B26 74 02         [12] 3410 	mov	a,#0x02
   3B28 F2            [24] 3411 	movx	@r0,a
   3B29 08            [12] 3412 	inc	r0
   3B2A E4            [12] 3413 	clr	a
   3B2B F2            [24] 3414 	movx	@r0,a
   3B2C 08            [12] 3415 	inc	r0
   3B2D F2            [24] 3416 	movx	@r0,a
   3B2E 78 A2         [12] 3417 	mov	r0,#_set_frequency_registers_frequency_1_256
   3B30 E2            [24] 3418 	movx	a,@r0
   3B31 F5 82         [12] 3419 	mov	dpl,a
   3B33 08            [12] 3420 	inc	r0
   3B34 E2            [24] 3421 	movx	a,@r0
   3B35 F5 83         [12] 3422 	mov	dph,a
   3B37 08            [12] 3423 	inc	r0
   3B38 E2            [24] 3424 	movx	a,@r0
   3B39 F5 F0         [12] 3425 	mov	b,a
   3B3B 08            [12] 3426 	inc	r0
   3B3C E2            [24] 3427 	movx	a,@r0
   3B3D 12 39 BA      [24] 3428 	lcall	_scale_uint32
   3B40 78 A2         [12] 3429 	mov	r0,#_set_frequency_registers_frequency_1_256
   3B42 C0 E0         [24] 3430 	push	acc
   3B44 E5 82         [12] 3431 	mov	a,dpl
   3B46 F2            [24] 3432 	movx	@r0,a
   3B47 08            [12] 3433 	inc	r0
   3B48 E5 83         [12] 3434 	mov	a,dph
   3B4A F2            [24] 3435 	movx	@r0,a
   3B4B 08            [12] 3436 	inc	r0
   3B4C E5 F0         [12] 3437 	mov	a,b
   3B4E F2            [24] 3438 	movx	@r0,a
   3B4F D0 E0         [24] 3439 	pop	acc
   3B51 08            [12] 3440 	inc	r0
   3B52 F2            [24] 3441 	movx	@r0,a
                           3442 ;	radio/radio.c:1091: frequency <<= 1;
   3B53 78 A2         [12] 3443 	mov	r0,#_set_frequency_registers_frequency_1_256
   3B55 E2            [24] 3444 	movx	a,@r0
   3B56 25 E0         [12] 3445 	add	a,acc
   3B58 F2            [24] 3446 	movx	@r0,a
   3B59 08            [12] 3447 	inc	r0
   3B5A E2            [24] 3448 	movx	a,@r0
   3B5B 33            [12] 3449 	rlc	a
   3B5C F2            [24] 3450 	movx	@r0,a
   3B5D 08            [12] 3451 	inc	r0
   3B5E E2            [24] 3452 	movx	a,@r0
   3B5F 33            [12] 3453 	rlc	a
   3B60 F2            [24] 3454 	movx	@r0,a
   3B61 08            [12] 3455 	inc	r0
   3B62 E2            [24] 3456 	movx	a,@r0
   3B63 33            [12] 3457 	rlc	a
   3B64 F2            [24] 3458 	movx	@r0,a
                           3459 ;	radio/radio.c:1092: band |= EZRADIOPRO_HBSEL;
   3B65 90 04 70      [24] 3460 	mov	dptr,#_set_frequency_registers_band_1_257
   3B68 E0            [24] 3461 	movx	a,@dptr
   3B69 FF            [12] 3462 	mov	r7,a
   3B6A 44 20         [12] 3463 	orl	a,#0x20
   3B6C F0            [24] 3464 	movx	@dptr,a
   3B6D 02 3C 33      [24] 3465 	ljmp	00103$
   3B70                    3466 00102$:
                           3467 ;	radio/radio.c:1094: frequency -= 240000000UL;
   3B70 78 A3         [12] 3468 	mov	r0,#(_set_frequency_registers_frequency_1_256 + 1)
   3B72 E2            [24] 3469 	movx	a,@r0
   3B73 24 E4         [12] 3470 	add	a,#0xE4
   3B75 F2            [24] 3471 	movx	@r0,a
   3B76 08            [12] 3472 	inc	r0
   3B77 E2            [24] 3473 	movx	a,@r0
   3B78 34 B1         [12] 3474 	addc	a,#0xB1
   3B7A F2            [24] 3475 	movx	@r0,a
   3B7B 08            [12] 3476 	inc	r0
   3B7C E2            [24] 3477 	movx	a,@r0
   3B7D 34 F1         [12] 3478 	addc	a,#0xF1
   3B7F F2            [24] 3479 	movx	@r0,a
                           3480 ;	radio/radio.c:1095: band  = frequency / 10000000UL;
   3B80 90 05 B2      [24] 3481 	mov	dptr,#__divulong_PARM_2
   3B83 74 80         [12] 3482 	mov	a,#0x80
   3B85 F0            [24] 3483 	movx	@dptr,a
   3B86 74 96         [12] 3484 	mov	a,#0x96
   3B88 A3            [24] 3485 	inc	dptr
   3B89 F0            [24] 3486 	movx	@dptr,a
   3B8A 74 98         [12] 3487 	mov	a,#0x98
   3B8C A3            [24] 3488 	inc	dptr
   3B8D F0            [24] 3489 	movx	@dptr,a
   3B8E E4            [12] 3490 	clr	a
   3B8F A3            [24] 3491 	inc	dptr
   3B90 F0            [24] 3492 	movx	@dptr,a
   3B91 78 A2         [12] 3493 	mov	r0,#_set_frequency_registers_frequency_1_256
   3B93 E2            [24] 3494 	movx	a,@r0
   3B94 F5 82         [12] 3495 	mov	dpl,a
   3B96 08            [12] 3496 	inc	r0
   3B97 E2            [24] 3497 	movx	a,@r0
   3B98 F5 83         [12] 3498 	mov	dph,a
   3B9A 08            [12] 3499 	inc	r0
   3B9B E2            [24] 3500 	movx	a,@r0
   3B9C F5 F0         [12] 3501 	mov	b,a
   3B9E 08            [12] 3502 	inc	r0
   3B9F E2            [24] 3503 	movx	a,@r0
   3BA0 12 5C 3A      [24] 3504 	lcall	__divulong
   3BA3 AC 82         [24] 3505 	mov	r4,dpl
   3BA5 90 04 70      [24] 3506 	mov	dptr,#_set_frequency_registers_band_1_257
   3BA8 EC            [12] 3507 	mov	a,r4
   3BA9 F0            [24] 3508 	movx	@dptr,a
                           3509 ;	radio/radio.c:1096: frequency -= (uint32_t)band * 10000000UL;
   3BAA 90 05 D7      [24] 3510 	mov	dptr,#__mullong_PARM_2
   3BAD EC            [12] 3511 	mov	a,r4
   3BAE F0            [24] 3512 	movx	@dptr,a
   3BAF E4            [12] 3513 	clr	a
   3BB0 A3            [24] 3514 	inc	dptr
   3BB1 F0            [24] 3515 	movx	@dptr,a
   3BB2 E4            [12] 3516 	clr	a
   3BB3 A3            [24] 3517 	inc	dptr
   3BB4 F0            [24] 3518 	movx	@dptr,a
   3BB5 E4            [12] 3519 	clr	a
   3BB6 A3            [24] 3520 	inc	dptr
   3BB7 F0            [24] 3521 	movx	@dptr,a
   3BB8 90 96 80      [24] 3522 	mov	dptr,#0x9680
   3BBB 75 F0 98      [24] 3523 	mov	b,#0x98
   3BBE E4            [12] 3524 	clr	a
   3BBF 12 5F 98      [24] 3525 	lcall	__mullong
   3BC2 AC 82         [24] 3526 	mov	r4,dpl
   3BC4 AD 83         [24] 3527 	mov	r5,dph
   3BC6 AE F0         [24] 3528 	mov	r6,b
   3BC8 FF            [12] 3529 	mov	r7,a
   3BC9 78 A2         [12] 3530 	mov	r0,#_set_frequency_registers_frequency_1_256
   3BCB E2            [24] 3531 	movx	a,@r0
   3BCC C3            [12] 3532 	clr	c
   3BCD 9C            [12] 3533 	subb	a,r4
   3BCE F2            [24] 3534 	movx	@r0,a
   3BCF 08            [12] 3535 	inc	r0
   3BD0 E2            [24] 3536 	movx	a,@r0
   3BD1 9D            [12] 3537 	subb	a,r5
   3BD2 F2            [24] 3538 	movx	@r0,a
   3BD3 08            [12] 3539 	inc	r0
   3BD4 E2            [24] 3540 	movx	a,@r0
   3BD5 9E            [12] 3541 	subb	a,r6
   3BD6 F2            [24] 3542 	movx	@r0,a
   3BD7 08            [12] 3543 	inc	r0
   3BD8 E2            [24] 3544 	movx	a,@r0
   3BD9 9F            [12] 3545 	subb	a,r7
   3BDA F2            [24] 3546 	movx	@r0,a
                           3547 ;	radio/radio.c:1097: frequency  = scale_uint32(frequency, 625);
   3BDB 78 9A         [12] 3548 	mov	r0,#_scale_uint32_PARM_2
   3BDD 74 71         [12] 3549 	mov	a,#0x71
   3BDF F2            [24] 3550 	movx	@r0,a
   3BE0 08            [12] 3551 	inc	r0
   3BE1 74 02         [12] 3552 	mov	a,#0x02
   3BE3 F2            [24] 3553 	movx	@r0,a
   3BE4 08            [12] 3554 	inc	r0
   3BE5 E4            [12] 3555 	clr	a
   3BE6 F2            [24] 3556 	movx	@r0,a
   3BE7 08            [12] 3557 	inc	r0
   3BE8 F2            [24] 3558 	movx	@r0,a
   3BE9 78 A2         [12] 3559 	mov	r0,#_set_frequency_registers_frequency_1_256
   3BEB E2            [24] 3560 	movx	a,@r0
   3BEC F5 82         [12] 3561 	mov	dpl,a
   3BEE 08            [12] 3562 	inc	r0
   3BEF E2            [24] 3563 	movx	a,@r0
   3BF0 F5 83         [12] 3564 	mov	dph,a
   3BF2 08            [12] 3565 	inc	r0
   3BF3 E2            [24] 3566 	movx	a,@r0
   3BF4 F5 F0         [12] 3567 	mov	b,a
   3BF6 08            [12] 3568 	inc	r0
   3BF7 E2            [24] 3569 	movx	a,@r0
   3BF8 12 39 BA      [24] 3570 	lcall	_scale_uint32
   3BFB 78 A2         [12] 3571 	mov	r0,#_set_frequency_registers_frequency_1_256
   3BFD C0 E0         [24] 3572 	push	acc
   3BFF E5 82         [12] 3573 	mov	a,dpl
   3C01 F2            [24] 3574 	movx	@r0,a
   3C02 08            [12] 3575 	inc	r0
   3C03 E5 83         [12] 3576 	mov	a,dph
   3C05 F2            [24] 3577 	movx	@r0,a
   3C06 08            [12] 3578 	inc	r0
   3C07 E5 F0         [12] 3579 	mov	a,b
   3C09 F2            [24] 3580 	movx	@r0,a
   3C0A D0 E0         [24] 3581 	pop	acc
   3C0C 08            [12] 3582 	inc	r0
   3C0D F2            [24] 3583 	movx	@r0,a
                           3584 ;	radio/radio.c:1098: frequency <<= 2;
   3C0E 78 A2         [12] 3585 	mov	r0,#_set_frequency_registers_frequency_1_256
   3C10 E2            [24] 3586 	movx	a,@r0
   3C11 25 E0         [12] 3587 	add	a,acc
   3C13 F2            [24] 3588 	movx	@r0,a
   3C14 08            [12] 3589 	inc	r0
   3C15 E2            [24] 3590 	movx	a,@r0
   3C16 33            [12] 3591 	rlc	a
   3C17 F2            [24] 3592 	movx	@r0,a
   3C18 08            [12] 3593 	inc	r0
   3C19 E2            [24] 3594 	movx	a,@r0
   3C1A 33            [12] 3595 	rlc	a
   3C1B F2            [24] 3596 	movx	@r0,a
   3C1C 08            [12] 3597 	inc	r0
   3C1D E2            [24] 3598 	movx	a,@r0
   3C1E 33            [12] 3599 	rlc	a
   3C1F F2            [24] 3600 	movx	@r0,a
   3C20 18            [12] 3601 	dec	r0
   3C21 18            [12] 3602 	dec	r0
   3C22 18            [12] 3603 	dec	r0
   3C23 E2            [24] 3604 	movx	a,@r0
   3C24 25 E0         [12] 3605 	add	a,acc
   3C26 F2            [24] 3606 	movx	@r0,a
   3C27 08            [12] 3607 	inc	r0
   3C28 E2            [24] 3608 	movx	a,@r0
   3C29 33            [12] 3609 	rlc	a
   3C2A F2            [24] 3610 	movx	@r0,a
   3C2B 08            [12] 3611 	inc	r0
   3C2C E2            [24] 3612 	movx	a,@r0
   3C2D 33            [12] 3613 	rlc	a
   3C2E F2            [24] 3614 	movx	@r0,a
   3C2F 08            [12] 3615 	inc	r0
   3C30 E2            [24] 3616 	movx	a,@r0
   3C31 33            [12] 3617 	rlc	a
   3C32 F2            [24] 3618 	movx	@r0,a
   3C33                    3619 00103$:
                           3620 ;	radio/radio.c:1101: band |= EZRADIOPRO_SBSEL;
   3C33 90 04 70      [24] 3621 	mov	dptr,#_set_frequency_registers_band_1_257
   3C36 E0            [24] 3622 	movx	a,@dptr
   3C37 44 40         [12] 3623 	orl	a,#0x40
   3C39 F0            [24] 3624 	movx	@dptr,a
                           3625 ;	radio/radio.c:1102: carrier = (uint16_t)frequency;
   3C3A 78 A2         [12] 3626 	mov	r0,#_set_frequency_registers_frequency_1_256
   3C3C E2            [24] 3627 	movx	a,@r0
   3C3D FC            [12] 3628 	mov	r4,a
   3C3E 08            [12] 3629 	inc	r0
   3C3F E2            [24] 3630 	movx	a,@r0
   3C40 FD            [12] 3631 	mov	r5,a
                           3632 ;	radio/radio.c:1104: register_write(EZRADIOPRO_FREQUENCY_BAND_SELECT, band);
   3C41 C0 05         [24] 3633 	push	ar5
   3C43 C0 04         [24] 3634 	push	ar4
   3C45 90 04 70      [24] 3635 	mov	dptr,#_set_frequency_registers_band_1_257
   3C48 E0            [24] 3636 	movx	a,@dptr
   3C49 C0 E0         [24] 3637 	push	acc
   3C4B 75 82 75      [24] 3638 	mov	dpl,#0x75
   3C4E 12 39 16      [24] 3639 	lcall	_register_write
   3C51 15 81         [12] 3640 	dec	sp
   3C53 D0 04         [24] 3641 	pop	ar4
   3C55 D0 05         [24] 3642 	pop	ar5
                           3643 ;	radio/radio.c:1105: register_write(EZRADIOPRO_NOMINAL_CARRIER_FREQUENCY_1, carrier >> 8);
   3C57 8D 07         [24] 3644 	mov	ar7,r5
   3C59 C0 05         [24] 3645 	push	ar5
   3C5B C0 04         [24] 3646 	push	ar4
   3C5D C0 07         [24] 3647 	push	ar7
   3C5F 75 82 76      [24] 3648 	mov	dpl,#0x76
   3C62 12 39 16      [24] 3649 	lcall	_register_write
   3C65 15 81         [12] 3650 	dec	sp
   3C67 D0 04         [24] 3651 	pop	ar4
   3C69 D0 05         [24] 3652 	pop	ar5
                           3653 ;	radio/radio.c:1106: register_write(EZRADIOPRO_NOMINAL_CARRIER_FREQUENCY_0, carrier & 0xFF);
   3C6B C0 04         [24] 3654 	push	ar4
   3C6D 75 82 77      [24] 3655 	mov	dpl,#0x77
   3C70 12 39 16      [24] 3656 	lcall	_register_write
   3C73 15 81         [12] 3657 	dec	sp
   3C75 22            [24] 3658 	ret
                           3659 ;------------------------------------------------------------
                           3660 ;Allocation info for local variables in function 'radio_temperature'
                           3661 ;------------------------------------------------------------
                           3662 ;temp_local                Allocated to registers r6 r7 
                           3663 ;------------------------------------------------------------
                           3664 ;	radio/radio.c:1115: radio_temperature(void)
                           3665 ;	-----------------------------------------
                           3666 ;	 function radio_temperature
                           3667 ;	-----------------------------------------
   3C76                    3668 _radio_temperature:
                           3669 ;	radio/radio.c:1119: AD0BUSY = 1;		// Start ADC conversion
   3C76 D2 EC         [12] 3670 	setb	_AD0BUSY
                           3671 ;	radio/radio.c:1120: while (AD0BUSY) ;  	// Wait for completion of conversion
   3C78                    3672 00101$:
   3C78 20 EC FD      [24] 3673 	jb	_AD0BUSY,00101$
                           3674 ;	radio/radio.c:1122: temp_local = (ADC0H << 8) | ADC0L;
   3C7B AF BE         [24] 3675 	mov	r7,_ADC0H
   3C7D 7E 00         [12] 3676 	mov	r6,#0x00
   3C7F AC BD         [24] 3677 	mov	r4,_ADC0L
   3C81 7D 00         [12] 3678 	mov	r5,#0x00
   3C83 EC            [12] 3679 	mov	a,r4
   3C84 42 06         [12] 3680 	orl	ar6,a
   3C86 ED            [12] 3681 	mov	a,r5
   3C87 42 07         [12] 3682 	orl	ar7,a
                           3683 ;	radio/radio.c:1123: temp_local *= 1.64060;  // convert reading into mV ( (val/1024) * 1680 )  vref=1680mV
   3C89 8E 82         [24] 3684 	mov	dpl,r6
   3C8B 8F 83         [24] 3685 	mov	dph,r7
   3C8D 12 62 B3      [24] 3686 	lcall	___sint2fs
   3C90 AA 82         [24] 3687 	mov	r2,dpl
   3C92 AB 83         [24] 3688 	mov	r3,dph
   3C94 AC F0         [24] 3689 	mov	r4,b
   3C96 FD            [12] 3690 	mov	r5,a
   3C97 C0 02         [24] 3691 	push	ar2
   3C99 C0 03         [24] 3692 	push	ar3
   3C9B C0 04         [24] 3693 	push	ar4
   3C9D C0 05         [24] 3694 	push	ar5
   3C9F 90 FF 2E      [24] 3695 	mov	dptr,#0xFF2E
   3CA2 75 F0 D1      [24] 3696 	mov	b,#0xD1
   3CA5 74 3F         [12] 3697 	mov	a,#0x3F
   3CA7 12 5A ED      [24] 3698 	lcall	___fsmul
   3CAA AA 82         [24] 3699 	mov	r2,dpl
   3CAC AB 83         [24] 3700 	mov	r3,dph
   3CAE AC F0         [24] 3701 	mov	r4,b
   3CB0 FD            [12] 3702 	mov	r5,a
   3CB1 E5 81         [12] 3703 	mov	a,sp
   3CB3 24 FC         [12] 3704 	add	a,#0xfc
   3CB5 F5 81         [12] 3705 	mov	sp,a
   3CB7 8A 82         [24] 3706 	mov	dpl,r2
   3CB9 8B 83         [24] 3707 	mov	dph,r3
   3CBB 8C F0         [24] 3708 	mov	b,r4
   3CBD ED            [12] 3709 	mov	a,r5
   3CBE 12 62 C0      [24] 3710 	lcall	___fs2sint
   3CC1 AE 82         [24] 3711 	mov	r6,dpl
   3CC3 AF 83         [24] 3712 	mov	r7,dph
                           3713 ;	radio/radio.c:1124: temp_local = 25.0 + (temp_local - 1025) / 3.4; // convert mV reading into degC.
   3CC5 EE            [12] 3714 	mov	a,r6
   3CC6 24 FF         [12] 3715 	add	a,#0xFF
   3CC8 FC            [12] 3716 	mov	r4,a
   3CC9 EF            [12] 3717 	mov	a,r7
   3CCA 34 FB         [12] 3718 	addc	a,#0xFB
   3CCC FD            [12] 3719 	mov	r5,a
   3CCD 8C 82         [24] 3720 	mov	dpl,r4
   3CCF 8D 83         [24] 3721 	mov	dph,r5
   3CD1 12 62 B3      [24] 3722 	lcall	___sint2fs
   3CD4 AA 82         [24] 3723 	mov	r2,dpl
   3CD6 AB 83         [24] 3724 	mov	r3,dph
   3CD8 AC F0         [24] 3725 	mov	r4,b
   3CDA FD            [12] 3726 	mov	r5,a
   3CDB 74 9A         [12] 3727 	mov	a,#0x9A
   3CDD C0 E0         [24] 3728 	push	acc
   3CDF 74 99         [12] 3729 	mov	a,#0x99
   3CE1 C0 E0         [24] 3730 	push	acc
   3CE3 74 59         [12] 3731 	mov	a,#0x59
   3CE5 C0 E0         [24] 3732 	push	acc
   3CE7 74 40         [12] 3733 	mov	a,#0x40
   3CE9 C0 E0         [24] 3734 	push	acc
   3CEB 8A 82         [24] 3735 	mov	dpl,r2
   3CED 8B 83         [24] 3736 	mov	dph,r3
   3CEF 8C F0         [24] 3737 	mov	b,r4
   3CF1 ED            [12] 3738 	mov	a,r5
   3CF2 12 64 18      [24] 3739 	lcall	___fsdiv
   3CF5 AA 82         [24] 3740 	mov	r2,dpl
   3CF7 AB 83         [24] 3741 	mov	r3,dph
   3CF9 AC F0         [24] 3742 	mov	r4,b
   3CFB FD            [12] 3743 	mov	r5,a
   3CFC E5 81         [12] 3744 	mov	a,sp
   3CFE 24 FC         [12] 3745 	add	a,#0xfc
   3D00 F5 81         [12] 3746 	mov	sp,a
   3D02 E4            [12] 3747 	clr	a
   3D03 C0 E0         [24] 3748 	push	acc
   3D05 C0 E0         [24] 3749 	push	acc
   3D07 74 C8         [12] 3750 	mov	a,#0xC8
   3D09 C0 E0         [24] 3751 	push	acc
   3D0B 74 41         [12] 3752 	mov	a,#0x41
   3D0D C0 E0         [24] 3753 	push	acc
   3D0F 8A 82         [24] 3754 	mov	dpl,r2
   3D11 8B 83         [24] 3755 	mov	dph,r3
   3D13 8C F0         [24] 3756 	mov	b,r4
   3D15 ED            [12] 3757 	mov	a,r5
   3D16 12 61 F8      [24] 3758 	lcall	___fsadd
   3D19 AA 82         [24] 3759 	mov	r2,dpl
   3D1B AB 83         [24] 3760 	mov	r3,dph
   3D1D AC F0         [24] 3761 	mov	r4,b
   3D1F FD            [12] 3762 	mov	r5,a
   3D20 E5 81         [12] 3763 	mov	a,sp
   3D22 24 FC         [12] 3764 	add	a,#0xfc
   3D24 F5 81         [12] 3765 	mov	sp,a
   3D26 8A 82         [24] 3766 	mov	dpl,r2
   3D28 8B 83         [24] 3767 	mov	dph,r3
   3D2A 8C F0         [24] 3768 	mov	b,r4
   3D2C ED            [12] 3769 	mov	a,r5
                           3770 ;	radio/radio.c:1126: return temp_local;
   3D2D 02 62 C0      [24] 3771 	ljmp	___fs2sint
                           3772 ;------------------------------------------------------------
                           3773 ;Allocation info for local variables in function 'radio_set_diversity'
                           3774 ;------------------------------------------------------------
                           3775 ;	radio/radio.c:1132: radio_set_diversity(bool enable)
                           3776 ;	-----------------------------------------
                           3777 ;	 function radio_set_diversity
                           3778 ;	-----------------------------------------
   3D30                    3779 _radio_set_diversity:
                           3780 ;	radio/radio.c:1134: if (enable)
   3D30 30 1E 25      [24] 3781 	jnb	_radio_set_diversity_PARM_1,00102$
                           3782 ;	radio/radio.c:1136: register_write(EZRADIOPRO_GPIO2_CONFIGURATION, 0x18);
   3D33 74 18         [12] 3783 	mov	a,#0x18
   3D35 C0 E0         [24] 3784 	push	acc
   3D37 75 82 0D      [24] 3785 	mov	dpl,#0x0D
   3D3A 12 39 16      [24] 3786 	lcall	_register_write
   3D3D 15 81         [12] 3787 	dec	sp
                           3788 ;	radio/radio.c:1138: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, (register_read(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2) & ~EZRADIOPRO_ANTDIV_MASK) | 0x80);
   3D3F 75 82 08      [24] 3789 	mov	dpl,#0x08
   3D42 12 39 46      [24] 3790 	lcall	_register_read
   3D45 AF 82         [24] 3791 	mov	r7,dpl
   3D47 74 1F         [12] 3792 	mov	a,#0x1F
   3D49 5F            [12] 3793 	anl	a,r7
   3D4A 44 80         [12] 3794 	orl	a,#0x80
   3D4C FF            [12] 3795 	mov	r7,a
   3D4D C0 07         [24] 3796 	push	ar7
   3D4F 75 82 08      [24] 3797 	mov	dpl,#0x08
   3D52 12 39 16      [24] 3798 	lcall	_register_write
   3D55 15 81         [12] 3799 	dec	sp
   3D57 22            [24] 3800 	ret
   3D58                    3801 00102$:
                           3802 ;	radio/radio.c:1143: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, (register_read(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2) & ~EZRADIOPRO_ANTDIV_MASK));
   3D58 75 82 08      [24] 3803 	mov	dpl,#0x08
   3D5B 12 39 46      [24] 3804 	lcall	_register_read
   3D5E AF 82         [24] 3805 	mov	r7,dpl
   3D60 53 07 1F      [24] 3806 	anl	ar7,#0x1F
   3D63 C0 07         [24] 3807 	push	ar7
   3D65 75 82 08      [24] 3808 	mov	dpl,#0x08
   3D68 12 39 16      [24] 3809 	lcall	_register_write
   3D6B 15 81         [12] 3810 	dec	sp
                           3811 ;	radio/radio.c:1145: register_write(EZRADIOPRO_GPIO2_CONFIGURATION, 0x0A);	// GPIO2 (ANT1) output set high fixed
   3D6D 74 0A         [12] 3812 	mov	a,#0x0A
   3D6F C0 E0         [24] 3813 	push	acc
   3D71 75 82 0D      [24] 3814 	mov	dpl,#0x0D
   3D74 12 39 16      [24] 3815 	lcall	_register_write
   3D77 15 81         [12] 3816 	dec	sp
                           3817 ;	radio/radio.c:1146: register_write(EZRADIOPRO_IO_PORT_CONFIGURATION, 0x04);	// GPIO2 output set high (fixed on ant 1)
   3D79 74 04         [12] 3818 	mov	a,#0x04
   3D7B C0 E0         [24] 3819 	push	acc
   3D7D 75 82 0E      [24] 3820 	mov	dpl,#0x0E
   3D80 12 39 16      [24] 3821 	lcall	_register_write
   3D83 15 81         [12] 3822 	dec	sp
   3D85 22            [24] 3823 	ret
                           3824 ;------------------------------------------------------------
                           3825 ;Allocation info for local variables in function 'Receiver_ISR'
                           3826 ;------------------------------------------------------------
                           3827 ;status                    Allocated to registers r6 
                           3828 ;status2                   Allocated to registers r7 
                           3829 ;len                       Allocated to registers r7 
                           3830 ;------------------------------------------------------------
                           3831 ;	radio/radio.c:1158: INTERRUPT(Receiver_ISR, INTERRUPT_INT0)
                           3832 ;	-----------------------------------------
                           3833 ;	 function Receiver_ISR
                           3834 ;	-----------------------------------------
   3D86                    3835 _Receiver_ISR:
   3D86 C0 27         [24] 3836 	push	bits
   3D88 C0 E0         [24] 3837 	push	acc
   3D8A C0 F0         [24] 3838 	push	b
   3D8C C0 82         [24] 3839 	push	dpl
   3D8E C0 83         [24] 3840 	push	dph
   3D90 C0 07         [24] 3841 	push	(0+7)
   3D92 C0 06         [24] 3842 	push	(0+6)
   3D94 C0 05         [24] 3843 	push	(0+5)
   3D96 C0 04         [24] 3844 	push	(0+4)
   3D98 C0 03         [24] 3845 	push	(0+3)
   3D9A C0 02         [24] 3846 	push	(0+2)
   3D9C C0 01         [24] 3847 	push	(0+1)
   3D9E C0 00         [24] 3848 	push	(0+0)
   3DA0 C0 D0         [24] 3849 	push	psw
   3DA2 75 D0 00      [24] 3850 	mov	psw,#0x00
                           3851 ;	radio/radio.c:1162: status2 = register_read(EZRADIOPRO_INTERRUPT_STATUS_2);
   3DA5 75 82 04      [24] 3852 	mov	dpl,#0x04
   3DA8 12 39 46      [24] 3853 	lcall	_register_read
   3DAB AF 82         [24] 3854 	mov	r7,dpl
                           3855 ;	radio/radio.c:1163: status  = register_read(EZRADIOPRO_INTERRUPT_STATUS_1);
   3DAD 75 82 03      [24] 3856 	mov	dpl,#0x03
   3DB0 C0 07         [24] 3857 	push	ar7
   3DB2 12 39 46      [24] 3858 	lcall	_register_read
   3DB5 AE 82         [24] 3859 	mov	r6,dpl
   3DB7 D0 07         [24] 3860 	pop	ar7
                           3861 ;	radio/radio.c:1165: if (status & EZRADIOPRO_IRXFFAFULL) {
   3DB9 EE            [12] 3862 	mov	a,r6
   3DBA 30 E4 49      [24] 3863 	jnb	acc.4,00104$
                           3864 ;	radio/radio.c:1166: if (RX_FIFO_THRESHOLD_HIGH + (uint16_t)partial_packet_length > MAX_PACKET_LENGTH) {
   3DBD 78 7A         [12] 3865 	mov	r0,#_partial_packet_length
   3DBF E2            [24] 3866 	movx	a,@r0
   3DC0 FC            [12] 3867 	mov	r4,a
   3DC1 7D 00         [12] 3868 	mov	r5,#0x00
   3DC3 74 32         [12] 3869 	mov	a,#0x32
   3DC5 2C            [12] 3870 	add	a,r4
   3DC6 FC            [12] 3871 	mov	r4,a
   3DC7 E4            [12] 3872 	clr	a
   3DC8 3D            [12] 3873 	addc	a,r5
   3DC9 FD            [12] 3874 	mov	r5,a
   3DCA C3            [12] 3875 	clr	c
   3DCB 74 FC         [12] 3876 	mov	a,#0xFC
   3DCD 9C            [12] 3877 	subb	a,r4
   3DCE E4            [12] 3878 	clr	a
   3DCF 9D            [12] 3879 	subb	a,r5
   3DD0 50 03         [24] 3880 	jnc	00150$
   3DD2 02 3E 91      [24] 3881 	ljmp	00117$
   3DD5                    3882 00150$:
                           3883 ;	radio/radio.c:1170: read_receive_fifo(RX_FIFO_THRESHOLD_HIGH, &radio_buffer[partial_packet_length]);
   3DD5 78 7A         [12] 3884 	mov	r0,#_partial_packet_length
   3DD7 E2            [24] 3885 	movx	a,@r0
   3DD8 24 64         [12] 3886 	add	a,#_radio_buffer
   3DDA FC            [12] 3887 	mov	r4,a
   3DDB E4            [12] 3888 	clr	a
   3DDC 34 03         [12] 3889 	addc	a,#(_radio_buffer >> 8)
   3DDE FD            [12] 3890 	mov	r5,a
   3DDF C0 07         [24] 3891 	push	ar7
   3DE1 C0 06         [24] 3892 	push	ar6
   3DE3 C0 04         [24] 3893 	push	ar4
   3DE5 C0 05         [24] 3894 	push	ar5
   3DE7 75 82 32      [24] 3895 	mov	dpl,#0x32
   3DEA 12 39 74      [24] 3896 	lcall	_read_receive_fifo
   3DED 15 81         [12] 3897 	dec	sp
   3DEF 15 81         [12] 3898 	dec	sp
                           3899 ;	radio/radio.c:1171: partial_packet_length += RX_FIFO_THRESHOLD_HIGH;
   3DF1 78 7A         [12] 3900 	mov	r0,#_partial_packet_length
   3DF3 E2            [24] 3901 	movx	a,@r0
   3DF4 24 32         [12] 3902 	add	a,#0x32
   3DF6 F2            [24] 3903 	movx	@r0,a
                           3904 ;	radio/radio.c:1172: last_rssi = register_read(EZRADIOPRO_RECEIVED_SIGNAL_STRENGTH_INDICATOR);
   3DF7 75 82 26      [24] 3905 	mov	dpl,#0x26
   3DFA 12 39 46      [24] 3906 	lcall	_register_read
   3DFD E5 82         [12] 3907 	mov	a,dpl
   3DFF D0 06         [24] 3908 	pop	ar6
   3E01 D0 07         [24] 3909 	pop	ar7
   3E03 78 7B         [12] 3910 	mov	r0,#_last_rssi
   3E05 F2            [24] 3911 	movx	@r0,a
   3E06                    3912 00104$:
                           3913 ;	radio/radio.c:1175: if (status2 & EZRADIOPRO_IPREAVAL) {
   3E06 EF            [12] 3914 	mov	a,r7
   3E07 30 E6 11      [24] 3915 	jnb	acc.6,00106$
                           3916 ;	radio/radio.c:1177: preamble_detected = true;
   3E0A D2 17         [12] 3917 	setb	_preamble_detected
                           3918 ;	radio/radio.c:1180: last_rssi = register_read(EZRADIOPRO_RECEIVED_SIGNAL_STRENGTH_INDICATOR);
   3E0C 75 82 26      [24] 3919 	mov	dpl,#0x26
   3E0F C0 06         [24] 3920 	push	ar6
   3E11 12 39 46      [24] 3921 	lcall	_register_read
   3E14 E5 82         [12] 3922 	mov	a,dpl
   3E16 D0 06         [24] 3923 	pop	ar6
   3E18 78 7B         [12] 3924 	mov	r0,#_last_rssi
   3E1A F2            [24] 3925 	movx	@r0,a
   3E1B                    3926 00106$:
                           3927 ;	radio/radio.c:1183: if (feature_golay == false && (status & EZRADIOPRO_ICRCERROR)) {
   3E1B 20 04 04      [24] 3928 	jb	_feature_golay,00108$
   3E1E EE            [12] 3929 	mov	a,r6
   3E1F 20 E0 6F      [24] 3930 	jb	acc.0,00117$
                           3931 ;	radio/radio.c:1184: goto rxfail;
   3E22                    3932 00108$:
                           3933 ;	radio/radio.c:1187: if (status & EZRADIOPRO_IPKVALID) {
   3E22 EE            [12] 3934 	mov	a,r6
   3E23 30 E1 69      [24] 3935 	jnb	acc.1,00116$
                           3936 ;	radio/radio.c:1188: __data uint8_t len = register_read(EZRADIOPRO_RECEIVED_PACKET_LENGTH);
   3E26 75 82 4B      [24] 3937 	mov	dpl,#0x4B
   3E29 12 39 46      [24] 3938 	lcall	_register_read
                           3939 ;	radio/radio.c:1189: if (len > MAX_PACKET_LENGTH || partial_packet_length > len) {
   3E2C E5 82         [12] 3940 	mov	a,dpl
   3E2E FF            [12] 3941 	mov	r7,a
   3E2F 24 03         [12] 3942 	add	a,#0xff - 0xFC
   3E31 40 5E         [24] 3943 	jc	00117$
   3E33 78 7A         [12] 3944 	mov	r0,#_partial_packet_length
   3E35 C3            [12] 3945 	clr	c
   3E36 E2            [24] 3946 	movx	a,@r0
   3E37 F5 F0         [12] 3947 	mov	b,a
   3E39 EF            [12] 3948 	mov	a,r7
   3E3A 95 F0         [12] 3949 	subb	a,b
   3E3C 40 53         [24] 3950 	jc	00117$
                           3951 ;	radio/radio.c:1193: if (partial_packet_length < len) {
   3E3E 78 7A         [12] 3952 	mov	r0,#_partial_packet_length
   3E40 C3            [12] 3953 	clr	c
   3E41 E2            [24] 3954 	movx	a,@r0
   3E42 9F            [12] 3955 	subb	a,r7
   3E43 50 22         [24] 3956 	jnc	00114$
                           3957 ;	radio/radio.c:1194: read_receive_fifo(len-partial_packet_length, &radio_buffer[partial_packet_length]);
   3E45 78 7A         [12] 3958 	mov	r0,#_partial_packet_length
   3E47 E2            [24] 3959 	movx	a,@r0
   3E48 24 64         [12] 3960 	add	a,#_radio_buffer
   3E4A FD            [12] 3961 	mov	r5,a
   3E4B E4            [12] 3962 	clr	a
   3E4C 34 03         [12] 3963 	addc	a,#(_radio_buffer >> 8)
   3E4E FE            [12] 3964 	mov	r6,a
   3E4F 78 7A         [12] 3965 	mov	r0,#_partial_packet_length
   3E51 D3            [12] 3966 	setb	c
   3E52 E2            [24] 3967 	movx	a,@r0
   3E53 9F            [12] 3968 	subb	a,r7
   3E54 F4            [12] 3969 	cpl	a
   3E55 FC            [12] 3970 	mov	r4,a
   3E56 C0 07         [24] 3971 	push	ar7
   3E58 C0 05         [24] 3972 	push	ar5
   3E5A C0 06         [24] 3973 	push	ar6
   3E5C 8C 82         [24] 3974 	mov	dpl,r4
   3E5E 12 39 74      [24] 3975 	lcall	_read_receive_fifo
   3E61 15 81         [12] 3976 	dec	sp
   3E63 15 81         [12] 3977 	dec	sp
   3E65 D0 07         [24] 3978 	pop	ar7
   3E67                    3979 00114$:
                           3980 ;	radio/radio.c:1196: receive_packet_length = len;
   3E67 78 79         [12] 3981 	mov	r0,#_receive_packet_length
   3E69 EF            [12] 3982 	mov	a,r7
   3E6A F2            [24] 3983 	movx	@r0,a
                           3984 ;	radio/radio.c:1199: packet_received = true;
   3E6B D2 16         [12] 3985 	setb	_packet_received
                           3986 ;	radio/radio.c:1202: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0);
   3E6D E4            [12] 3987 	clr	a
   3E6E C0 E0         [24] 3988 	push	acc
   3E70 75 82 05      [24] 3989 	mov	dpl,#0x05
   3E73 12 39 16      [24] 3990 	lcall	_register_write
   3E76 15 81         [12] 3991 	dec	sp
                           3992 ;	radio/radio.c:1203: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, 0);
   3E78 E4            [12] 3993 	clr	a
   3E79 C0 E0         [24] 3994 	push	acc
   3E7B 75 82 06      [24] 3995 	mov	dpl,#0x06
   3E7E 12 39 16      [24] 3996 	lcall	_register_write
   3E81 15 81         [12] 3997 	dec	sp
                           3998 ;	radio/radio.c:1206: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_1, EZRADIOPRO_PLLON);
   3E83 74 02         [12] 3999 	mov	a,#0x02
   3E85 C0 E0         [24] 4000 	push	acc
   3E87 75 82 07      [24] 4001 	mov	dpl,#0x07
   3E8A 12 39 16      [24] 4002 	lcall	_register_write
   3E8D 15 81         [12] 4003 	dec	sp
   3E8F                    4004 00116$:
                           4005 ;	radio/radio.c:1208: return;
                           4006 ;	radio/radio.c:1210: rxfail:
   3E8F 80 1E         [24] 4007 	sjmp	00120$
   3E91                    4008 00117$:
                           4009 ;	radio/radio.c:1211: if (errors.rx_errors != 0xFFFF) {
   3E91 78 34         [12] 4010 	mov	r0,#_errors
   3E93 E2            [24] 4011 	movx	a,@r0
   3E94 FE            [12] 4012 	mov	r6,a
   3E95 08            [12] 4013 	inc	r0
   3E96 E2            [24] 4014 	movx	a,@r0
   3E97 FF            [12] 4015 	mov	r7,a
   3E98 BE FF 05      [24] 4016 	cjne	r6,#0xFF,00158$
   3E9B BF FF 02      [24] 4017 	cjne	r7,#0xFF,00158$
   3E9E 80 0C         [24] 4018 	sjmp	00119$
   3EA0                    4019 00158$:
                           4020 ;	radio/radio.c:1212: errors.rx_errors++;
   3EA0 0E            [12] 4021 	inc	r6
   3EA1 BE 00 01      [24] 4022 	cjne	r6,#0x00,00159$
   3EA4 0F            [12] 4023 	inc	r7
   3EA5                    4024 00159$:
   3EA5 78 34         [12] 4025 	mov	r0,#_errors
   3EA7 EE            [12] 4026 	mov	a,r6
   3EA8 F2            [24] 4027 	movx	@r0,a
   3EA9 08            [12] 4028 	inc	r0
   3EAA EF            [12] 4029 	mov	a,r7
   3EAB F2            [24] 4030 	movx	@r0,a
   3EAC                    4031 00119$:
                           4032 ;	radio/radio.c:1214: radio_receiver_on();
   3EAC 12 34 42      [24] 4033 	lcall	_radio_receiver_on
   3EAF                    4034 00120$:
   3EAF D0 D0         [24] 4035 	pop	psw
   3EB1 D0 00         [24] 4036 	pop	(0+0)
   3EB3 D0 01         [24] 4037 	pop	(0+1)
   3EB5 D0 02         [24] 4038 	pop	(0+2)
   3EB7 D0 03         [24] 4039 	pop	(0+3)
   3EB9 D0 04         [24] 4040 	pop	(0+4)
   3EBB D0 05         [24] 4041 	pop	(0+5)
   3EBD D0 06         [24] 4042 	pop	(0+6)
   3EBF D0 07         [24] 4043 	pop	(0+7)
   3EC1 D0 83         [24] 4044 	pop	dph
   3EC3 D0 82         [24] 4045 	pop	dpl
   3EC5 D0 F0         [24] 4046 	pop	b
   3EC7 D0 E0         [24] 4047 	pop	acc
   3EC9 D0 27         [24] 4048 	pop	bits
   3ECB 32            [24] 4049 	reti
                           4050 	.area CSEG    (CODE)
                           4051 	.area CONST   (CODE)
   C9C2                    4052 __str_0:
   C9C2 6F 76 65 72 73 69  4053 	.ascii "oversized packet"
        7A 65 64 20 70 61
        63 6B 65 74
   C9D2 00                 4054 	.db 0x00
   C9D3                    4055 __str_1:
   C9D3 6F 76 65 72 73 69  4056 	.ascii "oversized golay packet"
        7A 65 64 20 67 6F
        6C 61 79 20 70 61
        63 6B 65 74
   C9E9 00                 4057 	.db 0x00
   C9EA                    4058 _reg_index:
   C9EA 1C                 4059 	.db #0x1C	; 28
   C9EB 1F                 4060 	.db #0x1F	; 31
   C9EC 20                 4061 	.db #0x20	; 32
   C9ED 21                 4062 	.db #0x21	; 33
   C9EE 22                 4063 	.db #0x22	; 34
   C9EF 23                 4064 	.db #0x23	; 35
   C9F0 24                 4065 	.db #0x24	; 36
   C9F1 25                 4066 	.db #0x25	; 37
   C9F2 2A                 4067 	.db #0x2A	; 42
   C9F3 6E                 4068 	.db #0x6E	; 110	'n'
   C9F4 6F                 4069 	.db #0x6F	; 111	'o'
   C9F5 72                 4070 	.db #0x72	; 114	'r'
   C9F6                    4071 _air_data_rates:
   C9F6 02                 4072 	.db #0x02	; 2
   C9F7 04                 4073 	.db #0x04	; 4
   C9F8 08                 4074 	.db #0x08	; 8
   C9F9 10                 4075 	.db #0x10	; 16
   C9FA 13                 4076 	.db #0x13	; 19
   C9FB 18                 4077 	.db #0x18	; 24
   C9FC 20                 4078 	.db #0x20	; 32
   C9FD 30                 4079 	.db #0x30	; 48	'0'
   C9FE 40                 4080 	.db #0x40	; 64
   C9FF 60                 4081 	.db #0x60	; 96
   CA00 80                 4082 	.db #0x80	; 128
   CA01 C0                 4083 	.db #0xC0	; 192
   CA02 FA                 4084 	.db #0xFA	; 250
   CA03                    4085 _reg_table_433:
   CA03 27                 4086 	.db #0x27	; 39
   CA04 27                 4087 	.db #0x27	; 39
   CA05 27                 4088 	.db #0x27	; 39
   CA06 2E                 4089 	.db #0x2E	; 46
   CA07 16                 4090 	.db #0x16	; 22
   CA08 01                 4091 	.db #0x01	; 1
   CA09 05                 4092 	.db #0x05	; 5
   CA0A 0B                 4093 	.db #0x0B	; 11
   CA0B 9A                 4094 	.db #0x9A	; 154
   CA0C 88                 4095 	.db #0x88	; 136
   CA0D 8A                 4096 	.db #0x8A	; 138
   CA0E 8C                 4097 	.db #0x8C	; 140
   CA0F 8D                 4098 	.db #0x8D	; 141
   CA10 03                 4099 	.db #0x03	; 3
   CA11 03                 4100 	.db #0x03	; 3
   CA12 03                 4101 	.db #0x03	; 3
   CA13 03                 4102 	.db #0x03	; 3
   CA14 03                 4103 	.db #0x03	; 3
   CA15 03                 4104 	.db #0x03	; 3
   CA16 03                 4105 	.db #0x03	; 3
   CA17 03                 4106 	.db #0x03	; 3
   CA18 03                 4107 	.db #0x03	; 3
   CA19 03                 4108 	.db #0x03	; 3
   CA1A 03                 4109 	.db #0x03	; 3
   CA1B 03                 4110 	.db #0x03	; 3
   CA1C 03                 4111 	.db #0x03	; 3
   CA1D F4                 4112 	.db #0xF4	; 244
   CA1E FA                 4113 	.db #0xFA	; 250
   CA1F 7D                 4114 	.db #0x7D	; 125
   CA20 3F                 4115 	.db #0x3F	; 63
   CA21 69                 4116 	.db #0x69	; 105	'i'
   CA22 A7                 4117 	.db #0xA7	; 167
   CA23 7D                 4118 	.db #0x7D	; 125
   CA24 53                 4119 	.db #0x53	; 83	'S'
   CA25 5E                 4120 	.db #0x5E	; 94
   CA26 7D                 4121 	.db #0x7D	; 125
   CA27 5E                 4122 	.db #0x5E	; 94
   CA28 3F                 4123 	.db #0x3F	; 63
   CA29 30                 4124 	.db #0x30	; 48	'0'
   CA2A 20                 4125 	.db #0x20	; 32
   CA2B 00                 4126 	.db #0x00	; 0
   CA2C 01                 4127 	.db #0x01	; 1
   CA2D 02                 4128 	.db #0x02	; 2
   CA2E 01                 4129 	.db #0x01	; 1
   CA2F 00                 4130 	.db #0x00	; 0
   CA30 01                 4131 	.db #0x01	; 1
   CA31 01                 4132 	.db #0x01	; 1
   CA32 01                 4133 	.db #0x01	; 1
   CA33 01                 4134 	.db #0x01	; 1
   CA34 01                 4135 	.db #0x01	; 1
   CA35 02                 4136 	.db #0x02	; 2
   CA36 02                 4137 	.db #0x02	; 2
   CA37 41                 4138 	.db #0x41	; 65	'A'
   CA38 83                 4139 	.db #0x83	; 131
   CA39 06                 4140 	.db #0x06	; 6
   CA3A 0C                 4141 	.db #0x0C	; 12
   CA3B 37                 4142 	.db #0x37	; 55	'7'
   CA3C C4                 4143 	.db #0xC4	; 196
   CA3D 06                 4144 	.db #0x06	; 6
   CA3E 89                 4145 	.db #0x89	; 137
   CA3F 5D                 4146 	.db #0x5D	; 93
   CA40 06                 4147 	.db #0x06	; 6
   CA41 5D                 4148 	.db #0x5D	; 93
   CA42 0C                 4149 	.db #0x0C	; 12
   CA43 AA                 4150 	.db #0xAA	; 170
   CA44 89                 4151 	.db #0x89	; 137
   CA45 12                 4152 	.db #0x12	; 18
   CA46 25                 4153 	.db #0x25	; 37
   CA47 4A                 4154 	.db #0x4A	; 74	'J'
   CA48 4C                 4155 	.db #0x4C	; 76	'L'
   CA49 9C                 4156 	.db #0x9C	; 156
   CA4A 25                 4157 	.db #0x25	; 37
   CA4B 37                 4158 	.db #0x37	; 55	'7'
   CA4C 86                 4159 	.db #0x86	; 134
   CA4D 25                 4160 	.db #0x25	; 37
   CA4E 86                 4161 	.db #0x86	; 134
   CA4F 4A                 4162 	.db #0x4A	; 74	'J'
   CA50 AB                 4163 	.db #0xAB	; 171
   CA51 00                 4164 	.db #0x00	; 0
   CA52 01                 4165 	.db #0x01	; 1
   CA53 02                 4166 	.db #0x02	; 2
   CA54 04                 4167 	.db #0x04	; 4
   CA55 02                 4168 	.db #0x02	; 2
   CA56 01                 4169 	.db #0x01	; 1
   CA57 02                 4170 	.db #0x02	; 2
   CA58 03                 4171 	.db #0x03	; 3
   CA59 02                 4172 	.db #0x02	; 2
   CA5A 02                 4173 	.db #0x02	; 2
   CA5B 02                 4174 	.db #0x02	; 2
   CA5C 04                 4175 	.db #0x04	; 4
   CA5D 07                 4176 	.db #0x07	; 7
   CA5E 85                 4177 	.db #0x85	; 133
   CA5F 08                 4178 	.db #0x08	; 8
   CA60 0E                 4179 	.db #0x0E	; 14
   CA61 12                 4180 	.db #0x12	; 18
   CA62 72                 4181 	.db #0x72	; 114	'r'
   CA63 8A                 4182 	.db #0x8A	; 138
   CA64 0E                 4183 	.db #0x0E	; 14
   CA65 18                 4184 	.db #0x18	; 24
   CA66 BB                 4185 	.db #0xBB	; 187
   CA67 0E                 4186 	.db #0x0E	; 14
   CA68 BB                 4187 	.db #0xBB	; 187
   CA69 EA                 4188 	.db #0xEA	; 234
   CA6A FF                 4189 	.db #0xFF	; 255
   CA6B 1D                 4190 	.db #0x1D	; 29
   CA6C 1D                 4191 	.db #0x1D	; 29
   CA6D 1D                 4192 	.db #0x1D	; 29
   CA6E 1E                 4193 	.db #0x1E	; 30
   CA6F 1E                 4194 	.db #0x1E	; 30
   CA70 1E                 4195 	.db #0x1E	; 30
   CA71 20                 4196 	.db #0x20	; 32
   CA72 30                 4197 	.db #0x30	; 48	'0'
   CA73 41                 4198 	.db #0x41	; 65	'A'
   CA74 50                 4199 	.db #0x50	; 80	'P'
   CA75 50                 4200 	.db #0x50	; 80	'P'
   CA76 50                 4201 	.db #0x50	; 80	'P'
   CA77 50                 4202 	.db #0x50	; 80	'P'
   CA78 10                 4203 	.db #0x10	; 16
   CA79 20                 4204 	.db #0x20	; 32
   CA7A 41                 4205 	.db #0x41	; 65	'A'
   CA7B 83                 4206 	.db #0x83	; 131
   CA7C 9B                 4207 	.db #0x9B	; 155
   CA7D C4                 4208 	.db #0xC4	; 196
   CA7E 08                 4209 	.db #0x08	; 8
   CA7F 0C                 4210 	.db #0x0C	; 12
   CA80 10                 4211 	.db #0x10	; 16
   CA81 18                 4212 	.db #0x18	; 24
   CA82 20                 4213 	.db #0x20	; 32
   CA83 31                 4214 	.db #0x31	; 49	'1'
   CA84 40                 4215 	.db #0x40	; 64
   CA85 62                 4216 	.db #0x62	; 98	'b'
   CA86 C5                 4217 	.db #0xC5	; 197
   CA87 89                 4218 	.db #0x89	; 137
   CA88 12                 4219 	.db #0x12	; 18
   CA89 A6                 4220 	.db #0xA6	; 166
   CA8A 9C                 4221 	.db #0x9C	; 156
   CA8B 31                 4222 	.db #0x31	; 49	'1'
   CA8C 4A                 4223 	.db #0x4A	; 74	'J'
   CA8D 62                 4224 	.db #0x62	; 98	'b'
   CA8E 93                 4225 	.db #0x93	; 147
   CA8F C5                 4226 	.db #0xC5	; 197
   CA90 27                 4227 	.db #0x27	; 39
   CA91 00                 4228 	.db #0x00	; 0
   CA92 03                 4229 	.db #0x03	; 3
   CA93 06                 4230 	.db #0x06	; 6
   CA94 0D                 4231 	.db #0x0D	; 13
   CA95 1A                 4232 	.db #0x1A	; 26
   CA96 1E                 4233 	.db #0x1E	; 30
   CA97 26                 4234 	.db #0x26	; 38
   CA98 33                 4235 	.db #0x33	; 51	'3'
   CA99 4D                 4236 	.db #0x4D	; 77	'M'
   CA9A 66                 4237 	.db #0x66	; 102	'f'
   CA9B 9A                 4238 	.db #0x9A	; 154
   CA9C CD                 4239 	.db #0xCD	; 205
   CA9D FE                 4240 	.db #0xFE	; 254
   CA9E FE                 4241 	.db #0xFE	; 254
   CA9F                    4242 _reg_table_470:
   CA9F 2B                 4243 	.db #0x2B	; 43
   CAA0 2B                 4244 	.db #0x2B	; 43
   CAA1 2B                 4245 	.db #0x2B	; 43
   CAA2 2E                 4246 	.db #0x2E	; 46
   CAA3 16                 4247 	.db #0x16	; 22
   CAA4 01                 4248 	.db #0x01	; 1
   CAA5 05                 4249 	.db #0x05	; 5
   CAA6 0B                 4250 	.db #0x0B	; 11
   CAA7 9A                 4251 	.db #0x9A	; 154
   CAA8 88                 4252 	.db #0x88	; 136
   CAA9 8A                 4253 	.db #0x8A	; 138
   CAAA 8C                 4254 	.db #0x8C	; 140
   CAAB 8D                 4255 	.db #0x8D	; 141
   CAAC 03                 4256 	.db #0x03	; 3
   CAAD 03                 4257 	.db #0x03	; 3
   CAAE 03                 4258 	.db #0x03	; 3
   CAAF 03                 4259 	.db #0x03	; 3
   CAB0 03                 4260 	.db #0x03	; 3
   CAB1 03                 4261 	.db #0x03	; 3
   CAB2 03                 4262 	.db #0x03	; 3
   CAB3 03                 4263 	.db #0x03	; 3
   CAB4 03                 4264 	.db #0x03	; 3
   CAB5 03                 4265 	.db #0x03	; 3
   CAB6 03                 4266 	.db #0x03	; 3
   CAB7 03                 4267 	.db #0x03	; 3
   CAB8 03                 4268 	.db #0x03	; 3
   CAB9 F4                 4269 	.db #0xF4	; 244
   CABA FA                 4270 	.db #0xFA	; 250
   CABB 7D                 4271 	.db #0x7D	; 125
   CABC 3F                 4272 	.db #0x3F	; 63
   CABD 69                 4273 	.db #0x69	; 105	'i'
   CABE A7                 4274 	.db #0xA7	; 167
   CABF 7D                 4275 	.db #0x7D	; 125
   CAC0 53                 4276 	.db #0x53	; 83	'S'
   CAC1 5E                 4277 	.db #0x5E	; 94
   CAC2 7D                 4278 	.db #0x7D	; 125
   CAC3 5E                 4279 	.db #0x5E	; 94
   CAC4 3F                 4280 	.db #0x3F	; 63
   CAC5 30                 4281 	.db #0x30	; 48	'0'
   CAC6 20                 4282 	.db #0x20	; 32
   CAC7 00                 4283 	.db #0x00	; 0
   CAC8 01                 4284 	.db #0x01	; 1
   CAC9 02                 4285 	.db #0x02	; 2
   CACA 01                 4286 	.db #0x01	; 1
   CACB 00                 4287 	.db #0x00	; 0
   CACC 01                 4288 	.db #0x01	; 1
   CACD 01                 4289 	.db #0x01	; 1
   CACE 01                 4290 	.db #0x01	; 1
   CACF 01                 4291 	.db #0x01	; 1
   CAD0 01                 4292 	.db #0x01	; 1
   CAD1 02                 4293 	.db #0x02	; 2
   CAD2 02                 4294 	.db #0x02	; 2
   CAD3 41                 4295 	.db #0x41	; 65	'A'
   CAD4 83                 4296 	.db #0x83	; 131
   CAD5 06                 4297 	.db #0x06	; 6
   CAD6 0C                 4298 	.db #0x0C	; 12
   CAD7 37                 4299 	.db #0x37	; 55	'7'
   CAD8 C4                 4300 	.db #0xC4	; 196
   CAD9 06                 4301 	.db #0x06	; 6
   CADA 89                 4302 	.db #0x89	; 137
   CADB 5D                 4303 	.db #0x5D	; 93
   CADC 06                 4304 	.db #0x06	; 6
   CADD 5D                 4305 	.db #0x5D	; 93
   CADE 0C                 4306 	.db #0x0C	; 12
   CADF AA                 4307 	.db #0xAA	; 170
   CAE0 89                 4308 	.db #0x89	; 137
   CAE1 12                 4309 	.db #0x12	; 18
   CAE2 25                 4310 	.db #0x25	; 37
   CAE3 4A                 4311 	.db #0x4A	; 74	'J'
   CAE4 4C                 4312 	.db #0x4C	; 76	'L'
   CAE5 9C                 4313 	.db #0x9C	; 156
   CAE6 25                 4314 	.db #0x25	; 37
   CAE7 37                 4315 	.db #0x37	; 55	'7'
   CAE8 86                 4316 	.db #0x86	; 134
   CAE9 25                 4317 	.db #0x25	; 37
   CAEA 86                 4318 	.db #0x86	; 134
   CAEB 4A                 4319 	.db #0x4A	; 74	'J'
   CAEC AB                 4320 	.db #0xAB	; 171
   CAED 00                 4321 	.db #0x00	; 0
   CAEE 01                 4322 	.db #0x01	; 1
   CAEF 02                 4323 	.db #0x02	; 2
   CAF0 04                 4324 	.db #0x04	; 4
   CAF1 02                 4325 	.db #0x02	; 2
   CAF2 01                 4326 	.db #0x01	; 1
   CAF3 02                 4327 	.db #0x02	; 2
   CAF4 03                 4328 	.db #0x03	; 3
   CAF5 02                 4329 	.db #0x02	; 2
   CAF6 02                 4330 	.db #0x02	; 2
   CAF7 02                 4331 	.db #0x02	; 2
   CAF8 04                 4332 	.db #0x04	; 4
   CAF9 07                 4333 	.db #0x07	; 7
   CAFA 85                 4334 	.db #0x85	; 133
   CAFB 08                 4335 	.db #0x08	; 8
   CAFC 0E                 4336 	.db #0x0E	; 14
   CAFD 12                 4337 	.db #0x12	; 18
   CAFE 72                 4338 	.db #0x72	; 114	'r'
   CAFF 8A                 4339 	.db #0x8A	; 138
   CB00 0E                 4340 	.db #0x0E	; 14
   CB01 18                 4341 	.db #0x18	; 24
   CB02 BB                 4342 	.db #0xBB	; 187
   CB03 0E                 4343 	.db #0x0E	; 14
   CB04 BB                 4344 	.db #0xBB	; 187
   CB05 EA                 4345 	.db #0xEA	; 234
   CB06 FF                 4346 	.db #0xFF	; 255
   CB07 1E                 4347 	.db #0x1E	; 30
   CB08 1E                 4348 	.db #0x1E	; 30
   CB09 1E                 4349 	.db #0x1E	; 30
   CB0A 21                 4350 	.db #0x21	; 33
   CB0B 21                 4351 	.db #0x21	; 33
   CB0C 21                 4352 	.db #0x21	; 33
   CB0D 21                 4353 	.db #0x21	; 33
   CB0E 30                 4354 	.db #0x30	; 48	'0'
   CB0F 41                 4355 	.db #0x41	; 65	'A'
   CB10 50                 4356 	.db #0x50	; 80	'P'
   CB11 50                 4357 	.db #0x50	; 80	'P'
   CB12 50                 4358 	.db #0x50	; 80	'P'
   CB13 50                 4359 	.db #0x50	; 80	'P'
   CB14 10                 4360 	.db #0x10	; 16
   CB15 20                 4361 	.db #0x20	; 32
   CB16 41                 4362 	.db #0x41	; 65	'A'
   CB17 83                 4363 	.db #0x83	; 131
   CB18 9B                 4364 	.db #0x9B	; 155
   CB19 C4                 4365 	.db #0xC4	; 196
   CB1A 08                 4366 	.db #0x08	; 8
   CB1B 0C                 4367 	.db #0x0C	; 12
   CB1C 10                 4368 	.db #0x10	; 16
   CB1D 18                 4369 	.db #0x18	; 24
   CB1E 20                 4370 	.db #0x20	; 32
   CB1F 31                 4371 	.db #0x31	; 49	'1'
   CB20 40                 4372 	.db #0x40	; 64
   CB21 62                 4373 	.db #0x62	; 98	'b'
   CB22 C5                 4374 	.db #0xC5	; 197
   CB23 89                 4375 	.db #0x89	; 137
   CB24 12                 4376 	.db #0x12	; 18
   CB25 A6                 4377 	.db #0xA6	; 166
   CB26 9C                 4378 	.db #0x9C	; 156
   CB27 31                 4379 	.db #0x31	; 49	'1'
   CB28 4A                 4380 	.db #0x4A	; 74	'J'
   CB29 62                 4381 	.db #0x62	; 98	'b'
   CB2A 93                 4382 	.db #0x93	; 147
   CB2B C5                 4383 	.db #0xC5	; 197
   CB2C 27                 4384 	.db #0x27	; 39
   CB2D 00                 4385 	.db #0x00	; 0
   CB2E 03                 4386 	.db #0x03	; 3
   CB2F 06                 4387 	.db #0x06	; 6
   CB30 0D                 4388 	.db #0x0D	; 13
   CB31 1A                 4389 	.db #0x1A	; 26
   CB32 1E                 4390 	.db #0x1E	; 30
   CB33 26                 4391 	.db #0x26	; 38
   CB34 33                 4392 	.db #0x33	; 51	'3'
   CB35 4D                 4393 	.db #0x4D	; 77	'M'
   CB36 66                 4394 	.db #0x66	; 102	'f'
   CB37 9A                 4395 	.db #0x9A	; 154
   CB38 CD                 4396 	.db #0xCD	; 205
   CB39 FE                 4397 	.db #0xFE	; 254
   CB3A FE                 4398 	.db #0xFE	; 254
   CB3B                    4399 _reg_table_868:
   CB3B 01                 4400 	.db #0x01	; 1
   CB3C 01                 4401 	.db #0x01	; 1
   CB3D 01                 4402 	.db #0x01	; 1
   CB3E 01                 4403 	.db #0x01	; 1
   CB3F 01                 4404 	.db #0x01	; 1
   CB40 01                 4405 	.db #0x01	; 1
   CB41 05                 4406 	.db #0x05	; 5
   CB42 0B                 4407 	.db #0x0B	; 11
   CB43 9A                 4408 	.db #0x9A	; 154
   CB44 88                 4409 	.db #0x88	; 136
   CB45 8A                 4410 	.db #0x8A	; 138
   CB46 8C                 4411 	.db #0x8C	; 140
   CB47 8D                 4412 	.db #0x8D	; 141
   CB48 03                 4413 	.db #0x03	; 3
   CB49 03                 4414 	.db #0x03	; 3
   CB4A 03                 4415 	.db #0x03	; 3
   CB4B 03                 4416 	.db #0x03	; 3
   CB4C 03                 4417 	.db #0x03	; 3
   CB4D 03                 4418 	.db #0x03	; 3
   CB4E 03                 4419 	.db #0x03	; 3
   CB4F 03                 4420 	.db #0x03	; 3
   CB50 03                 4421 	.db #0x03	; 3
   CB51 03                 4422 	.db #0x03	; 3
   CB52 03                 4423 	.db #0x03	; 3
   CB53 03                 4424 	.db #0x03	; 3
   CB54 03                 4425 	.db #0x03	; 3
   CB55 D0                 4426 	.db #0xD0	; 208
   CB56 E8                 4427 	.db #0xE8	; 232
   CB57 F4                 4428 	.db #0xF4	; 244
   CB58 FA                 4429 	.db #0xFA	; 250
   CB59 D3                 4430 	.db #0xD3	; 211
   CB5A A7                 4431 	.db #0xA7	; 167
   CB5B 7D                 4432 	.db #0x7D	; 125
   CB5C 53                 4433 	.db #0x53	; 83	'S'
   CB5D 5E                 4434 	.db #0x5E	; 94
   CB5E 7D                 4435 	.db #0x7D	; 125
   CB5F 5E                 4436 	.db #0x5E	; 94
   CB60 3F                 4437 	.db #0x3F	; 63
   CB61 30                 4438 	.db #0x30	; 48	'0'
   CB62 E0                 4439 	.db #0xE0	; 224
   CB63 60                 4440 	.db #0x60	; 96
   CB64 20                 4441 	.db #0x20	; 32
   CB65 00                 4442 	.db #0x00	; 0
   CB66 00                 4443 	.db #0x00	; 0
   CB67 00                 4444 	.db #0x00	; 0
   CB68 01                 4445 	.db #0x01	; 1
   CB69 01                 4446 	.db #0x01	; 1
   CB6A 01                 4447 	.db #0x01	; 1
   CB6B 01                 4448 	.db #0x01	; 1
   CB6C 01                 4449 	.db #0x01	; 1
   CB6D 02                 4450 	.db #0x02	; 2
   CB6E 02                 4451 	.db #0x02	; 2
   CB6F 10                 4452 	.db #0x10	; 16
   CB70 20                 4453 	.db #0x20	; 32
   CB71 41                 4454 	.db #0x41	; 65	'A'
   CB72 83                 4455 	.db #0x83	; 131
   CB73 9B                 4456 	.db #0x9B	; 155
   CB74 C4                 4457 	.db #0xC4	; 196
   CB75 06                 4458 	.db #0x06	; 6
   CB76 89                 4459 	.db #0x89	; 137
   CB77 5D                 4460 	.db #0x5D	; 93
   CB78 06                 4461 	.db #0x06	; 6
   CB79 5D                 4462 	.db #0x5D	; 93
   CB7A 0C                 4463 	.db #0x0C	; 12
   CB7B AA                 4464 	.db #0xAA	; 170
   CB7C 62                 4465 	.db #0x62	; 98	'b'
   CB7D C5                 4466 	.db #0xC5	; 197
   CB7E 89                 4467 	.db #0x89	; 137
   CB7F 12                 4468 	.db #0x12	; 18
   CB80 A6                 4469 	.db #0xA6	; 166
   CB81 9C                 4470 	.db #0x9C	; 156
   CB82 25                 4471 	.db #0x25	; 37
   CB83 37                 4472 	.db #0x37	; 55	'7'
   CB84 86                 4473 	.db #0x86	; 134
   CB85 25                 4474 	.db #0x25	; 37
   CB86 86                 4475 	.db #0x86	; 134
   CB87 4A                 4476 	.db #0x4A	; 74	'J'
   CB88 AB                 4477 	.db #0xAB	; 171
   CB89 00                 4478 	.db #0x00	; 0
   CB8A 00                 4479 	.db #0x00	; 0
   CB8B 00                 4480 	.db #0x00	; 0
   CB8C 01                 4481 	.db #0x01	; 1
   CB8D 01                 4482 	.db #0x01	; 1
   CB8E 01                 4483 	.db #0x01	; 1
   CB8F 02                 4484 	.db #0x02	; 2
   CB90 03                 4485 	.db #0x03	; 3
   CB91 02                 4486 	.db #0x02	; 2
   CB92 02                 4487 	.db #0x02	; 2
   CB93 02                 4488 	.db #0x02	; 2
   CB94 04                 4489 	.db #0x04	; 4
   CB95 07                 4490 	.db #0x07	; 7
   CB96 23                 4491 	.db #0x23	; 35
   CB97 44                 4492 	.db #0x44	; 68	'D'
   CB98 85                 4493 	.db #0x85	; 133
   CB99 08                 4494 	.db #0x08	; 8
   CB9A 39                 4495 	.db #0x39	; 57	'9'
   CB9B 8A                 4496 	.db #0x8A	; 138
   CB9C 0E                 4497 	.db #0x0E	; 14
   CB9D 18                 4498 	.db #0x18	; 24
   CB9E BB                 4499 	.db #0xBB	; 187
   CB9F 0E                 4500 	.db #0x0E	; 14
   CBA0 BB                 4501 	.db #0xBB	; 187
   CBA1 EA                 4502 	.db #0xEA	; 234
   CBA2 FF                 4503 	.db #0xFF	; 255
   CBA3 1C                 4504 	.db #0x1C	; 28
   CBA4 1C                 4505 	.db #0x1C	; 28
   CBA5 1C                 4506 	.db #0x1C	; 28
   CBA6 1C                 4507 	.db #0x1C	; 28
   CBA7 1C                 4508 	.db #0x1C	; 28
   CBA8 1E                 4509 	.db #0x1E	; 30
   CBA9 20                 4510 	.db #0x20	; 32
   CBAA 30                 4511 	.db #0x30	; 48	'0'
   CBAB 41                 4512 	.db #0x41	; 65	'A'
   CBAC 50                 4513 	.db #0x50	; 80	'P'
   CBAD 50                 4514 	.db #0x50	; 80	'P'
   CBAE 50                 4515 	.db #0x50	; 80	'P'
   CBAF 50                 4516 	.db #0x50	; 80	'P'
   CBB0 10                 4517 	.db #0x10	; 16
   CBB1 20                 4518 	.db #0x20	; 32
   CBB2 41                 4519 	.db #0x41	; 65	'A'
   CBB3 83                 4520 	.db #0x83	; 131
   CBB4 9B                 4521 	.db #0x9B	; 155
   CBB5 C4                 4522 	.db #0xC4	; 196
   CBB6 08                 4523 	.db #0x08	; 8
   CBB7 0C                 4524 	.db #0x0C	; 12
   CBB8 10                 4525 	.db #0x10	; 16
   CBB9 18                 4526 	.db #0x18	; 24
   CBBA 20                 4527 	.db #0x20	; 32
   CBBB 31                 4528 	.db #0x31	; 49	'1'
   CBBC 40                 4529 	.db #0x40	; 64
   CBBD 62                 4530 	.db #0x62	; 98	'b'
   CBBE C5                 4531 	.db #0xC5	; 197
   CBBF 89                 4532 	.db #0x89	; 137
   CBC0 12                 4533 	.db #0x12	; 18
   CBC1 A6                 4534 	.db #0xA6	; 166
   CBC2 9C                 4535 	.db #0x9C	; 156
   CBC3 31                 4536 	.db #0x31	; 49	'1'
   CBC4 4A                 4537 	.db #0x4A	; 74	'J'
   CBC5 62                 4538 	.db #0x62	; 98	'b'
   CBC6 93                 4539 	.db #0x93	; 147
   CBC7 C5                 4540 	.db #0xC5	; 197
   CBC8 27                 4541 	.db #0x27	; 39
   CBC9 00                 4542 	.db #0x00	; 0
   CBCA 03                 4543 	.db #0x03	; 3
   CBCB 06                 4544 	.db #0x06	; 6
   CBCC 0D                 4545 	.db #0x0D	; 13
   CBCD 1A                 4546 	.db #0x1A	; 26
   CBCE 1E                 4547 	.db #0x1E	; 30
   CBCF 26                 4548 	.db #0x26	; 38
   CBD0 33                 4549 	.db #0x33	; 51	'3'
   CBD1 4D                 4550 	.db #0x4D	; 77	'M'
   CBD2 66                 4551 	.db #0x66	; 102	'f'
   CBD3 9A                 4552 	.db #0x9A	; 154
   CBD4 CD                 4553 	.db #0xCD	; 205
   CBD5 FE                 4554 	.db #0xFE	; 254
   CBD6 FE                 4555 	.db #0xFE	; 254
   CBD7                    4556 _reg_table_915:
   CBD7 01                 4557 	.db #0x01	; 1
   CBD8 01                 4558 	.db #0x01	; 1
   CBD9 01                 4559 	.db #0x01	; 1
   CBDA 01                 4560 	.db #0x01	; 1
   CBDB 01                 4561 	.db #0x01	; 1
   CBDC 01                 4562 	.db #0x01	; 1
   CBDD 05                 4563 	.db #0x05	; 5
   CBDE 0B                 4564 	.db #0x0B	; 11
   CBDF 9A                 4565 	.db #0x9A	; 154
   CBE0 88                 4566 	.db #0x88	; 136
   CBE1 8A                 4567 	.db #0x8A	; 138
   CBE2 8C                 4568 	.db #0x8C	; 140
   CBE3 8D                 4569 	.db #0x8D	; 141
   CBE4 03                 4570 	.db #0x03	; 3
   CBE5 03                 4571 	.db #0x03	; 3
   CBE6 03                 4572 	.db #0x03	; 3
   CBE7 03                 4573 	.db #0x03	; 3
   CBE8 03                 4574 	.db #0x03	; 3
   CBE9 03                 4575 	.db #0x03	; 3
   CBEA 03                 4576 	.db #0x03	; 3
   CBEB 03                 4577 	.db #0x03	; 3
   CBEC 03                 4578 	.db #0x03	; 3
   CBED 03                 4579 	.db #0x03	; 3
   CBEE 03                 4580 	.db #0x03	; 3
   CBEF 03                 4581 	.db #0x03	; 3
   CBF0 03                 4582 	.db #0x03	; 3
   CBF1 D0                 4583 	.db #0xD0	; 208
   CBF2 E8                 4584 	.db #0xE8	; 232
   CBF3 F4                 4585 	.db #0xF4	; 244
   CBF4 FA                 4586 	.db #0xFA	; 250
   CBF5 D3                 4587 	.db #0xD3	; 211
   CBF6 A7                 4588 	.db #0xA7	; 167
   CBF7 7D                 4589 	.db #0x7D	; 125
   CBF8 53                 4590 	.db #0x53	; 83	'S'
   CBF9 5E                 4591 	.db #0x5E	; 94
   CBFA 7D                 4592 	.db #0x7D	; 125
   CBFB 5E                 4593 	.db #0x5E	; 94
   CBFC 3F                 4594 	.db #0x3F	; 63
   CBFD 30                 4595 	.db #0x30	; 48	'0'
   CBFE E0                 4596 	.db #0xE0	; 224
   CBFF 60                 4597 	.db #0x60	; 96
   CC00 20                 4598 	.db #0x20	; 32
   CC01 00                 4599 	.db #0x00	; 0
   CC02 00                 4600 	.db #0x00	; 0
   CC03 00                 4601 	.db #0x00	; 0
   CC04 01                 4602 	.db #0x01	; 1
   CC05 01                 4603 	.db #0x01	; 1
   CC06 01                 4604 	.db #0x01	; 1
   CC07 01                 4605 	.db #0x01	; 1
   CC08 01                 4606 	.db #0x01	; 1
   CC09 02                 4607 	.db #0x02	; 2
   CC0A 02                 4608 	.db #0x02	; 2
   CC0B 10                 4609 	.db #0x10	; 16
   CC0C 20                 4610 	.db #0x20	; 32
   CC0D 41                 4611 	.db #0x41	; 65	'A'
   CC0E 83                 4612 	.db #0x83	; 131
   CC0F 9B                 4613 	.db #0x9B	; 155
   CC10 C4                 4614 	.db #0xC4	; 196
   CC11 06                 4615 	.db #0x06	; 6
   CC12 89                 4616 	.db #0x89	; 137
   CC13 5D                 4617 	.db #0x5D	; 93
   CC14 06                 4618 	.db #0x06	; 6
   CC15 5D                 4619 	.db #0x5D	; 93
   CC16 0C                 4620 	.db #0x0C	; 12
   CC17 AA                 4621 	.db #0xAA	; 170
   CC18 62                 4622 	.db #0x62	; 98	'b'
   CC19 C5                 4623 	.db #0xC5	; 197
   CC1A 89                 4624 	.db #0x89	; 137
   CC1B 12                 4625 	.db #0x12	; 18
   CC1C A6                 4626 	.db #0xA6	; 166
   CC1D 9C                 4627 	.db #0x9C	; 156
   CC1E 25                 4628 	.db #0x25	; 37
   CC1F 37                 4629 	.db #0x37	; 55	'7'
   CC20 86                 4630 	.db #0x86	; 134
   CC21 25                 4631 	.db #0x25	; 37
   CC22 86                 4632 	.db #0x86	; 134
   CC23 4A                 4633 	.db #0x4A	; 74	'J'
   CC24 AB                 4634 	.db #0xAB	; 171
   CC25 00                 4635 	.db #0x00	; 0
   CC26 00                 4636 	.db #0x00	; 0
   CC27 00                 4637 	.db #0x00	; 0
   CC28 01                 4638 	.db #0x01	; 1
   CC29 01                 4639 	.db #0x01	; 1
   CC2A 01                 4640 	.db #0x01	; 1
   CC2B 02                 4641 	.db #0x02	; 2
   CC2C 03                 4642 	.db #0x03	; 3
   CC2D 02                 4643 	.db #0x02	; 2
   CC2E 02                 4644 	.db #0x02	; 2
   CC2F 02                 4645 	.db #0x02	; 2
   CC30 04                 4646 	.db #0x04	; 4
   CC31 07                 4647 	.db #0x07	; 7
   CC32 23                 4648 	.db #0x23	; 35
   CC33 44                 4649 	.db #0x44	; 68	'D'
   CC34 85                 4650 	.db #0x85	; 133
   CC35 08                 4651 	.db #0x08	; 8
   CC36 39                 4652 	.db #0x39	; 57	'9'
   CC37 8A                 4653 	.db #0x8A	; 138
   CC38 0E                 4654 	.db #0x0E	; 14
   CC39 18                 4655 	.db #0x18	; 24
   CC3A BB                 4656 	.db #0xBB	; 187
   CC3B 0E                 4657 	.db #0x0E	; 14
   CC3C BB                 4658 	.db #0xBB	; 187
   CC3D EA                 4659 	.db #0xEA	; 234
   CC3E FF                 4660 	.db #0xFF	; 255
   CC3F 1E                 4661 	.db #0x1E	; 30
   CC40 1E                 4662 	.db #0x1E	; 30
   CC41 1E                 4663 	.db #0x1E	; 30
   CC42 1E                 4664 	.db #0x1E	; 30
   CC43 1E                 4665 	.db #0x1E	; 30
   CC44 1E                 4666 	.db #0x1E	; 30
   CC45 20                 4667 	.db #0x20	; 32
   CC46 30                 4668 	.db #0x30	; 48	'0'
   CC47 41                 4669 	.db #0x41	; 65	'A'
   CC48 50                 4670 	.db #0x50	; 80	'P'
   CC49 50                 4671 	.db #0x50	; 80	'P'
   CC4A 50                 4672 	.db #0x50	; 80	'P'
   CC4B 50                 4673 	.db #0x50	; 80	'P'
   CC4C 10                 4674 	.db #0x10	; 16
   CC4D 20                 4675 	.db #0x20	; 32
   CC4E 41                 4676 	.db #0x41	; 65	'A'
   CC4F 83                 4677 	.db #0x83	; 131
   CC50 9B                 4678 	.db #0x9B	; 155
   CC51 C4                 4679 	.db #0xC4	; 196
   CC52 08                 4680 	.db #0x08	; 8
   CC53 0C                 4681 	.db #0x0C	; 12
   CC54 10                 4682 	.db #0x10	; 16
   CC55 18                 4683 	.db #0x18	; 24
   CC56 20                 4684 	.db #0x20	; 32
   CC57 31                 4685 	.db #0x31	; 49	'1'
   CC58 40                 4686 	.db #0x40	; 64
   CC59 62                 4687 	.db #0x62	; 98	'b'
   CC5A C5                 4688 	.db #0xC5	; 197
   CC5B 89                 4689 	.db #0x89	; 137
   CC5C 12                 4690 	.db #0x12	; 18
   CC5D A6                 4691 	.db #0xA6	; 166
   CC5E 9C                 4692 	.db #0x9C	; 156
   CC5F 31                 4693 	.db #0x31	; 49	'1'
   CC60 4A                 4694 	.db #0x4A	; 74	'J'
   CC61 62                 4695 	.db #0x62	; 98	'b'
   CC62 93                 4696 	.db #0x93	; 147
   CC63 C5                 4697 	.db #0xC5	; 197
   CC64 27                 4698 	.db #0x27	; 39
   CC65 00                 4699 	.db #0x00	; 0
   CC66 03                 4700 	.db #0x03	; 3
   CC67 06                 4701 	.db #0x06	; 6
   CC68 0D                 4702 	.db #0x0D	; 13
   CC69 1A                 4703 	.db #0x1A	; 26
   CC6A 1E                 4704 	.db #0x1E	; 30
   CC6B 26                 4705 	.db #0x26	; 38
   CC6C 33                 4706 	.db #0x33	; 51	'3'
   CC6D 4D                 4707 	.db #0x4D	; 77	'M'
   CC6E 66                 4708 	.db #0x66	; 102	'f'
   CC6F 9A                 4709 	.db #0x9A	; 154
   CC70 CD                 4710 	.db #0xCD	; 205
   CC71 FE                 4711 	.db #0xFE	; 254
   CC72 FE                 4712 	.db #0xFE	; 254
   CC73                    4713 _power_levels:
   CC73 11                 4714 	.db #0x11	; 17
   CC74 14                 4715 	.db #0x14	; 20
   CC75 1B                 4716 	.db #0x1B	; 27
   CC76 1D                 4717 	.db #0x1D	; 29
   CC77 1E                 4718 	.db #0x1E	; 30
                           4719 	.area XINIT   (CODE)
                           4720 	.area CABS    (ABS,CODE)
