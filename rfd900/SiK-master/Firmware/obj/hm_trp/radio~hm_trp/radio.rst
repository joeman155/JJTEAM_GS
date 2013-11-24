                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:04 2013
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
                             26 	.globl _PIN_ENABLE
                             27 	.globl _PIN_CONFIG
                             28 	.globl _LED_GREEN
                             29 	.globl _LED_RED
                             30 	.globl _SPI0EN
                             31 	.globl _TXBMT0
                             32 	.globl _NSS0MD0
                             33 	.globl _NSS0MD1
                             34 	.globl _RXOVRN0
                             35 	.globl _MODF0
                             36 	.globl _WCOL0
                             37 	.globl _SPIF0
                             38 	.globl _AD0CM0
                             39 	.globl _AD0CM1
                             40 	.globl _AD0CM2
                             41 	.globl _AD0WINT
                             42 	.globl _AD0BUSY
                             43 	.globl _AD0INT
                             44 	.globl _BURSTEN
                             45 	.globl _AD0EN
                             46 	.globl _CCF0
                             47 	.globl _CCF1
                             48 	.globl _CCF2
                             49 	.globl _CCF3
                             50 	.globl _CCF4
                             51 	.globl _CCF5
                             52 	.globl _CR
                             53 	.globl _CF
                             54 	.globl _P
                             55 	.globl _F1
                             56 	.globl _OV
                             57 	.globl _RS0
                             58 	.globl _RS1
                             59 	.globl _F0
                             60 	.globl _AC
                             61 	.globl _CY
                             62 	.globl _T2XCLK
                             63 	.globl _T2RCLK
                             64 	.globl _TR2
                             65 	.globl _T2SPLIT
                             66 	.globl _TF2CEN
                             67 	.globl _TF2LEN
                             68 	.globl _TF2L
                             69 	.globl _TF2H
                             70 	.globl _SI
                             71 	.globl _ACK
                             72 	.globl _ARBLOST
                             73 	.globl _ACKRQ
                             74 	.globl _STO
                             75 	.globl _STA
                             76 	.globl _TXMODE
                             77 	.globl _MASTER
                             78 	.globl _PX0
                             79 	.globl _PT0
                             80 	.globl _PX1
                             81 	.globl _PT1
                             82 	.globl _PS0
                             83 	.globl _PT2
                             84 	.globl _PSPI0
                             85 	.globl _SPI1EN
                             86 	.globl _TXBMT1
                             87 	.globl _NSS1MD0
                             88 	.globl _NSS1MD1
                             89 	.globl _RXOVRN1
                             90 	.globl _MODF1
                             91 	.globl _WCOL1
                             92 	.globl _SPIF1
                             93 	.globl _EX0
                             94 	.globl _ET0
                             95 	.globl _EX1
                             96 	.globl _ET1
                             97 	.globl _ES0
                             98 	.globl _ET2
                             99 	.globl _ESPI0
                            100 	.globl _EA
                            101 	.globl _RI0
                            102 	.globl _TI0
                            103 	.globl _RB80
                            104 	.globl _TB80
                            105 	.globl _REN0
                            106 	.globl _MCE0
                            107 	.globl _S0MODE
                            108 	.globl _CRC0VAL
                            109 	.globl _CRC0INIT
                            110 	.globl _CRC0SEL
                            111 	.globl _IT0
                            112 	.globl _IE0
                            113 	.globl _IT1
                            114 	.globl _IE1
                            115 	.globl _TR0
                            116 	.globl _TF0
                            117 	.globl _TR1
                            118 	.globl _TF1
                            119 	.globl _PCA0CP4
                            120 	.globl _PCA0CP0
                            121 	.globl _PCA0
                            122 	.globl _PCA0CP3
                            123 	.globl _PCA0CP2
                            124 	.globl _PCA0CP1
                            125 	.globl _PCA0CP5
                            126 	.globl _TMR2
                            127 	.globl _TMR2RL
                            128 	.globl _ADC0LT
                            129 	.globl _ADC0GT
                            130 	.globl _ADC0
                            131 	.globl _TMR3
                            132 	.globl _TMR3RL
                            133 	.globl _TOFF
                            134 	.globl _DP
                            135 	.globl _VDM0CN
                            136 	.globl _PCA0CPH4
                            137 	.globl _PCA0CPL4
                            138 	.globl _PCA0CPH0
                            139 	.globl _PCA0CPL0
                            140 	.globl _PCA0H
                            141 	.globl _PCA0L
                            142 	.globl _SPI0CN
                            143 	.globl _EIP2
                            144 	.globl _EIP1
                            145 	.globl _SMB0ADM
                            146 	.globl _SMB0ADR
                            147 	.globl _P2MDIN
                            148 	.globl _P1MDIN
                            149 	.globl _P0MDIN
                            150 	.globl _B
                            151 	.globl _RSTSRC
                            152 	.globl _PCA0CPH3
                            153 	.globl _PCA0CPL3
                            154 	.globl _PCA0CPH2
                            155 	.globl _PCA0CPL2
                            156 	.globl _PCA0CPH1
                            157 	.globl _PCA0CPL1
                            158 	.globl _ADC0CN
                            159 	.globl _EIE2
                            160 	.globl _EIE1
                            161 	.globl _FLWR
                            162 	.globl _IT01CF
                            163 	.globl _XBR2
                            164 	.globl _XBR1
                            165 	.globl _XBR0
                            166 	.globl _ACC
                            167 	.globl _PCA0PWM
                            168 	.globl _PCA0CPM4
                            169 	.globl _PCA0CPM3
                            170 	.globl _PCA0CPM2
                            171 	.globl _PCA0CPM1
                            172 	.globl _PCA0CPM0
                            173 	.globl _PCA0MD
                            174 	.globl _PCA0CN
                            175 	.globl _P0MAT
                            176 	.globl _P2SKIP
                            177 	.globl _P1SKIP
                            178 	.globl _P0SKIP
                            179 	.globl _PCA0CPH5
                            180 	.globl _PCA0CPL5
                            181 	.globl _REF0CN
                            182 	.globl _PSW
                            183 	.globl _P1MAT
                            184 	.globl _PCA0CPM5
                            185 	.globl _TMR2H
                            186 	.globl _TMR2L
                            187 	.globl _TMR2RLH
                            188 	.globl _TMR2RLL
                            189 	.globl _REG0CN
                            190 	.globl _TMR2CN
                            191 	.globl _P0MASK
                            192 	.globl _ADC0LTH
                            193 	.globl _ADC0LTL
                            194 	.globl _ADC0GTH
                            195 	.globl _ADC0GTL
                            196 	.globl _SMB0DAT
                            197 	.globl _SMB0CF
                            198 	.globl _SMB0CN
                            199 	.globl _P1MASK
                            200 	.globl _ADC0H
                            201 	.globl _ADC0L
                            202 	.globl _ADC0TK
                            203 	.globl _ADC0CF
                            204 	.globl _ADC0MX
                            205 	.globl _ADC0PWR
                            206 	.globl _ADC0AC
                            207 	.globl _IREF0CN
                            208 	.globl _IP
                            209 	.globl _FLKEY
                            210 	.globl _FLSCL
                            211 	.globl _PMU0CF
                            212 	.globl _OSCICL
                            213 	.globl _OSCICN
                            214 	.globl _OSCXCN
                            215 	.globl _SPI1CN
                            216 	.globl _ONESHOT
                            217 	.globl _EMI0TC
                            218 	.globl _RTC0KEY
                            219 	.globl _RTC0DAT
                            220 	.globl _RTC0ADR
                            221 	.globl _EMI0CF
                            222 	.globl _EMI0CN
                            223 	.globl _CLKSEL
                            224 	.globl _IE
                            225 	.globl _SFRPAGE
                            226 	.globl _P2DRV
                            227 	.globl _P2MDOUT
                            228 	.globl _P1DRV
                            229 	.globl _P1MDOUT
                            230 	.globl _P0DRV
                            231 	.globl _P0MDOUT
                            232 	.globl _SPI0DAT
                            233 	.globl _SPI0CKR
                            234 	.globl _SPI0CFG
                            235 	.globl _P2
                            236 	.globl _CPT0MX
                            237 	.globl _CPT1MX
                            238 	.globl _CPT0MD
                            239 	.globl _CPT1MD
                            240 	.globl _CPT0CN
                            241 	.globl _CPT1CN
                            242 	.globl _SBUF0
                            243 	.globl _SCON0
                            244 	.globl _CRC0CNT
                            245 	.globl _DC0CN
                            246 	.globl _CRC0AUTO
                            247 	.globl _DC0CF
                            248 	.globl _TMR3H
                            249 	.globl _CRC0FLIP
                            250 	.globl _TMR3L
                            251 	.globl _CRC0IN
                            252 	.globl _TMR3RLH
                            253 	.globl _CRC0CN
                            254 	.globl _TMR3RLL
                            255 	.globl _CRC0DAT
                            256 	.globl _TMR3CN
                            257 	.globl _P1
                            258 	.globl _PSCTL
                            259 	.globl _CKCON
                            260 	.globl _TH1
                            261 	.globl _TH0
                            262 	.globl _TL1
                            263 	.globl _TL0
                            264 	.globl _TMOD
                            265 	.globl _TCON
                            266 	.globl _PCON
                            267 	.globl _TOFFH
                            268 	.globl _SPI1DAT
                            269 	.globl _TOFFL
                            270 	.globl _SPI1CKR
                            271 	.globl _SPI1CFG
                            272 	.globl _DPH
                            273 	.globl _DPL
                            274 	.globl _SP
                            275 	.globl _P0
                            276 	.globl _radio_buffer
                            277 	.globl _radio_transmit_PARM_3
                            278 	.globl _radio_transmit_PARM_2
                            279 	.globl _radio_receive_packet_PARM_2
                            280 	.globl _settings
                            281 	.globl _netid
                            282 	.globl _last_rssi
                            283 	.globl _partial_packet_length
                            284 	.globl _receive_packet_length
                            285 	.globl _radio_set_diversity_PARM_1
                            286 	.globl _radio_receive_packet
                            287 	.globl _radio_receive_in_progress
                            288 	.globl _radio_preamble_detected
                            289 	.globl _radio_last_rssi
                            290 	.globl _radio_current_rssi
                            291 	.globl _radio_air_rate
                            292 	.globl _radio_transmit
                            293 	.globl _radio_receiver_on
                            294 	.globl _radio_initialise
                            295 	.globl _radio_set_frequency
                            296 	.globl _radio_set_channel_spacing
                            297 	.globl _radio_set_channel
                            298 	.globl _radio_get_channel
                            299 	.globl _radio_configure
                            300 	.globl _radio_set_transmit_power
                            301 	.globl _radio_get_transmit_power
                            302 	.globl _radio_set_network_id
                            303 	.globl _radio_temperature
                            304 	.globl _radio_set_diversity
                            305 ;--------------------------------------------------------
                            306 ; special function registers
                            307 ;--------------------------------------------------------
                            308 	.area RSEG    (ABS,DATA)
   0000                     309 	.org 0x0000
                     0080   310 _P0	=	0x0080
                     0081   311 _SP	=	0x0081
                     0082   312 _DPL	=	0x0082
                     0083   313 _DPH	=	0x0083
                     0084   314 _SPI1CFG	=	0x0084
                     0085   315 _SPI1CKR	=	0x0085
                     0085   316 _TOFFL	=	0x0085
                     0086   317 _SPI1DAT	=	0x0086
                     0086   318 _TOFFH	=	0x0086
                     0087   319 _PCON	=	0x0087
                     0088   320 _TCON	=	0x0088
                     0089   321 _TMOD	=	0x0089
                     008A   322 _TL0	=	0x008a
                     008B   323 _TL1	=	0x008b
                     008C   324 _TH0	=	0x008c
                     008D   325 _TH1	=	0x008d
                     008E   326 _CKCON	=	0x008e
                     008F   327 _PSCTL	=	0x008f
                     0090   328 _P1	=	0x0090
                     0091   329 _TMR3CN	=	0x0091
                     0091   330 _CRC0DAT	=	0x0091
                     0092   331 _TMR3RLL	=	0x0092
                     0092   332 _CRC0CN	=	0x0092
                     0093   333 _TMR3RLH	=	0x0093
                     0093   334 _CRC0IN	=	0x0093
                     0094   335 _TMR3L	=	0x0094
                     0095   336 _CRC0FLIP	=	0x0095
                     0095   337 _TMR3H	=	0x0095
                     0096   338 _DC0CF	=	0x0096
                     0096   339 _CRC0AUTO	=	0x0096
                     0097   340 _DC0CN	=	0x0097
                     0097   341 _CRC0CNT	=	0x0097
                     0098   342 _SCON0	=	0x0098
                     0099   343 _SBUF0	=	0x0099
                     009A   344 _CPT1CN	=	0x009a
                     009B   345 _CPT0CN	=	0x009b
                     009C   346 _CPT1MD	=	0x009c
                     009D   347 _CPT0MD	=	0x009d
                     009E   348 _CPT1MX	=	0x009e
                     009F   349 _CPT0MX	=	0x009f
                     00A0   350 _P2	=	0x00a0
                     00A1   351 _SPI0CFG	=	0x00a1
                     00A2   352 _SPI0CKR	=	0x00a2
                     00A3   353 _SPI0DAT	=	0x00a3
                     00A4   354 _P0MDOUT	=	0x00a4
                     00A4   355 _P0DRV	=	0x00a4
                     00A5   356 _P1MDOUT	=	0x00a5
                     00A5   357 _P1DRV	=	0x00a5
                     00A6   358 _P2MDOUT	=	0x00a6
                     00A6   359 _P2DRV	=	0x00a6
                     00A7   360 _SFRPAGE	=	0x00a7
                     00A8   361 _IE	=	0x00a8
                     00A9   362 _CLKSEL	=	0x00a9
                     00AA   363 _EMI0CN	=	0x00aa
                     00AB   364 _EMI0CF	=	0x00ab
                     00AC   365 _RTC0ADR	=	0x00ac
                     00AD   366 _RTC0DAT	=	0x00ad
                     00AE   367 _RTC0KEY	=	0x00ae
                     00AF   368 _EMI0TC	=	0x00af
                     00AF   369 _ONESHOT	=	0x00af
                     00B0   370 _SPI1CN	=	0x00b0
                     00B1   371 _OSCXCN	=	0x00b1
                     00B2   372 _OSCICN	=	0x00b2
                     00B3   373 _OSCICL	=	0x00b3
                     00B5   374 _PMU0CF	=	0x00b5
                     00B6   375 _FLSCL	=	0x00b6
                     00B7   376 _FLKEY	=	0x00b7
                     00B8   377 _IP	=	0x00b8
                     00B9   378 _IREF0CN	=	0x00b9
                     00BA   379 _ADC0AC	=	0x00ba
                     00BA   380 _ADC0PWR	=	0x00ba
                     00BB   381 _ADC0MX	=	0x00bb
                     00BC   382 _ADC0CF	=	0x00bc
                     00BD   383 _ADC0TK	=	0x00bd
                     00BD   384 _ADC0L	=	0x00bd
                     00BE   385 _ADC0H	=	0x00be
                     00BF   386 _P1MASK	=	0x00bf
                     00C0   387 _SMB0CN	=	0x00c0
                     00C1   388 _SMB0CF	=	0x00c1
                     00C2   389 _SMB0DAT	=	0x00c2
                     00C3   390 _ADC0GTL	=	0x00c3
                     00C4   391 _ADC0GTH	=	0x00c4
                     00C5   392 _ADC0LTL	=	0x00c5
                     00C6   393 _ADC0LTH	=	0x00c6
                     00C7   394 _P0MASK	=	0x00c7
                     00C8   395 _TMR2CN	=	0x00c8
                     00C9   396 _REG0CN	=	0x00c9
                     00CA   397 _TMR2RLL	=	0x00ca
                     00CB   398 _TMR2RLH	=	0x00cb
                     00CC   399 _TMR2L	=	0x00cc
                     00CD   400 _TMR2H	=	0x00cd
                     00CE   401 _PCA0CPM5	=	0x00ce
                     00CF   402 _P1MAT	=	0x00cf
                     00D0   403 _PSW	=	0x00d0
                     00D1   404 _REF0CN	=	0x00d1
                     00D2   405 _PCA0CPL5	=	0x00d2
                     00D3   406 _PCA0CPH5	=	0x00d3
                     00D4   407 _P0SKIP	=	0x00d4
                     00D5   408 _P1SKIP	=	0x00d5
                     00D6   409 _P2SKIP	=	0x00d6
                     00D7   410 _P0MAT	=	0x00d7
                     00D8   411 _PCA0CN	=	0x00d8
                     00D9   412 _PCA0MD	=	0x00d9
                     00DA   413 _PCA0CPM0	=	0x00da
                     00DB   414 _PCA0CPM1	=	0x00db
                     00DC   415 _PCA0CPM2	=	0x00dc
                     00DD   416 _PCA0CPM3	=	0x00dd
                     00DE   417 _PCA0CPM4	=	0x00de
                     00DF   418 _PCA0PWM	=	0x00df
                     00E0   419 _ACC	=	0x00e0
                     00E1   420 _XBR0	=	0x00e1
                     00E2   421 _XBR1	=	0x00e2
                     00E3   422 _XBR2	=	0x00e3
                     00E4   423 _IT01CF	=	0x00e4
                     00E5   424 _FLWR	=	0x00e5
                     00E6   425 _EIE1	=	0x00e6
                     00E7   426 _EIE2	=	0x00e7
                     00E8   427 _ADC0CN	=	0x00e8
                     00E9   428 _PCA0CPL1	=	0x00e9
                     00EA   429 _PCA0CPH1	=	0x00ea
                     00EB   430 _PCA0CPL2	=	0x00eb
                     00EC   431 _PCA0CPH2	=	0x00ec
                     00ED   432 _PCA0CPL3	=	0x00ed
                     00EE   433 _PCA0CPH3	=	0x00ee
                     00EF   434 _RSTSRC	=	0x00ef
                     00F0   435 _B	=	0x00f0
                     00F1   436 _P0MDIN	=	0x00f1
                     00F2   437 _P1MDIN	=	0x00f2
                     00F3   438 _P2MDIN	=	0x00f3
                     00F4   439 _SMB0ADR	=	0x00f4
                     00F5   440 _SMB0ADM	=	0x00f5
                     00F6   441 _EIP1	=	0x00f6
                     00F7   442 _EIP2	=	0x00f7
                     00F8   443 _SPI0CN	=	0x00f8
                     00F9   444 _PCA0L	=	0x00f9
                     00FA   445 _PCA0H	=	0x00fa
                     00FB   446 _PCA0CPL0	=	0x00fb
                     00FC   447 _PCA0CPH0	=	0x00fc
                     00FD   448 _PCA0CPL4	=	0x00fd
                     00FE   449 _PCA0CPH4	=	0x00fe
                     00FF   450 _VDM0CN	=	0x00ff
                     8382   451 _DP	=	0x8382
                     8685   452 _TOFF	=	0x8685
                     9392   453 _TMR3RL	=	0x9392
                     9594   454 _TMR3	=	0x9594
                     BEBD   455 _ADC0	=	0xbebd
                     C4C3   456 _ADC0GT	=	0xc4c3
                     C6C5   457 _ADC0LT	=	0xc6c5
                     CBCA   458 _TMR2RL	=	0xcbca
                     CDCC   459 _TMR2	=	0xcdcc
                     D3D2   460 _PCA0CP5	=	0xd3d2
                     EAE9   461 _PCA0CP1	=	0xeae9
                     ECEB   462 _PCA0CP2	=	0xeceb
                     EEED   463 _PCA0CP3	=	0xeeed
                     FAF9   464 _PCA0	=	0xfaf9
                     FCFB   465 _PCA0CP0	=	0xfcfb
                     FEFD   466 _PCA0CP4	=	0xfefd
                            467 ;--------------------------------------------------------
                            468 ; special function bits
                            469 ;--------------------------------------------------------
                            470 	.area RSEG    (ABS,DATA)
   0000                     471 	.org 0x0000
                     008F   472 _TF1	=	0x008f
                     008E   473 _TR1	=	0x008e
                     008D   474 _TF0	=	0x008d
                     008C   475 _TR0	=	0x008c
                     008B   476 _IE1	=	0x008b
                     008A   477 _IT1	=	0x008a
                     0089   478 _IE0	=	0x0089
                     0088   479 _IT0	=	0x0088
                     0096   480 _CRC0SEL	=	0x0096
                     0095   481 _CRC0INIT	=	0x0095
                     0094   482 _CRC0VAL	=	0x0094
                     009F   483 _S0MODE	=	0x009f
                     009D   484 _MCE0	=	0x009d
                     009C   485 _REN0	=	0x009c
                     009B   486 _TB80	=	0x009b
                     009A   487 _RB80	=	0x009a
                     0099   488 _TI0	=	0x0099
                     0098   489 _RI0	=	0x0098
                     00AF   490 _EA	=	0x00af
                     00AE   491 _ESPI0	=	0x00ae
                     00AD   492 _ET2	=	0x00ad
                     00AC   493 _ES0	=	0x00ac
                     00AB   494 _ET1	=	0x00ab
                     00AA   495 _EX1	=	0x00aa
                     00A9   496 _ET0	=	0x00a9
                     00A8   497 _EX0	=	0x00a8
                     00B7   498 _SPIF1	=	0x00b7
                     00B6   499 _WCOL1	=	0x00b6
                     00B5   500 _MODF1	=	0x00b5
                     00B4   501 _RXOVRN1	=	0x00b4
                     00B3   502 _NSS1MD1	=	0x00b3
                     00B2   503 _NSS1MD0	=	0x00b2
                     00B1   504 _TXBMT1	=	0x00b1
                     00B0   505 _SPI1EN	=	0x00b0
                     00BE   506 _PSPI0	=	0x00be
                     00BD   507 _PT2	=	0x00bd
                     00BC   508 _PS0	=	0x00bc
                     00BB   509 _PT1	=	0x00bb
                     00BA   510 _PX1	=	0x00ba
                     00B9   511 _PT0	=	0x00b9
                     00B8   512 _PX0	=	0x00b8
                     00C7   513 _MASTER	=	0x00c7
                     00C6   514 _TXMODE	=	0x00c6
                     00C5   515 _STA	=	0x00c5
                     00C4   516 _STO	=	0x00c4
                     00C3   517 _ACKRQ	=	0x00c3
                     00C2   518 _ARBLOST	=	0x00c2
                     00C1   519 _ACK	=	0x00c1
                     00C0   520 _SI	=	0x00c0
                     00CF   521 _TF2H	=	0x00cf
                     00CE   522 _TF2L	=	0x00ce
                     00CD   523 _TF2LEN	=	0x00cd
                     00CC   524 _TF2CEN	=	0x00cc
                     00CB   525 _T2SPLIT	=	0x00cb
                     00CA   526 _TR2	=	0x00ca
                     00C9   527 _T2RCLK	=	0x00c9
                     00C8   528 _T2XCLK	=	0x00c8
                     00D7   529 _CY	=	0x00d7
                     00D6   530 _AC	=	0x00d6
                     00D5   531 _F0	=	0x00d5
                     00D4   532 _RS1	=	0x00d4
                     00D3   533 _RS0	=	0x00d3
                     00D2   534 _OV	=	0x00d2
                     00D1   535 _F1	=	0x00d1
                     00D0   536 _P	=	0x00d0
                     00DF   537 _CF	=	0x00df
                     00DE   538 _CR	=	0x00de
                     00DD   539 _CCF5	=	0x00dd
                     00DC   540 _CCF4	=	0x00dc
                     00DB   541 _CCF3	=	0x00db
                     00DA   542 _CCF2	=	0x00da
                     00D9   543 _CCF1	=	0x00d9
                     00D8   544 _CCF0	=	0x00d8
                     00EF   545 _AD0EN	=	0x00ef
                     00EE   546 _BURSTEN	=	0x00ee
                     00ED   547 _AD0INT	=	0x00ed
                     00EC   548 _AD0BUSY	=	0x00ec
                     00EB   549 _AD0WINT	=	0x00eb
                     00EA   550 _AD0CM2	=	0x00ea
                     00E9   551 _AD0CM1	=	0x00e9
                     00E8   552 _AD0CM0	=	0x00e8
                     00FF   553 _SPIF0	=	0x00ff
                     00FE   554 _WCOL0	=	0x00fe
                     00FD   555 _MODF0	=	0x00fd
                     00FC   556 _RXOVRN0	=	0x00fc
                     00FB   557 _NSS0MD1	=	0x00fb
                     00FA   558 _NSS0MD0	=	0x00fa
                     00F9   559 _TXBMT0	=	0x00f9
                     00F8   560 _SPI0EN	=	0x00f8
                     0096   561 _LED_RED	=	0x0096
                     0095   562 _LED_GREEN	=	0x0095
                     0082   563 _PIN_CONFIG	=	0x0082
                     0083   564 _PIN_ENABLE	=	0x0083
                     0087   565 _IRQ	=	0x0087
                     0094   566 _NSS1	=	0x0094
                     00A6   567 _SDN	=	0x00a6
                            568 ;--------------------------------------------------------
                            569 ; overlayable register banks
                            570 ;--------------------------------------------------------
                            571 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     572 	.ds 8
                            573 ;--------------------------------------------------------
                            574 ; overlayable bit register bank
                            575 ;--------------------------------------------------------
                            576 	.area BIT_BANK	(REL,OVR,DATA)
   0027                     577 bits:
   0027                     578 	.ds 1
                     8000   579 	b0 = bits[0]
                     8100   580 	b1 = bits[1]
                     8200   581 	b2 = bits[2]
                     8300   582 	b3 = bits[3]
                     8400   583 	b4 = bits[4]
                     8500   584 	b5 = bits[5]
                     8600   585 	b6 = bits[6]
                     8700   586 	b7 = bits[7]
                            587 ;--------------------------------------------------------
                            588 ; internal ram data
                            589 ;--------------------------------------------------------
                            590 	.area DSEG    (DATA)
   004C                     591 _radio_receive_packet_crc1_1_135:
   004C                     592 	.ds 2
   004E                     593 _radio_transmit_golay_elen_1_186:
   004E                     594 	.ds 1
                            595 ;--------------------------------------------------------
                            596 ; overlayable items in internal ram 
                            597 ;--------------------------------------------------------
                            598 	.area	OSEG    (OVR,DATA)
                            599 ;--------------------------------------------------------
                            600 ; indirectly addressable internal ram data
                            601 ;--------------------------------------------------------
                            602 	.area ISEG    (DATA)
                            603 ;--------------------------------------------------------
                            604 ; absolute internal ram data
                            605 ;--------------------------------------------------------
                            606 	.area IABS    (ABS,DATA)
                            607 	.area IABS    (ABS,DATA)
                            608 ;--------------------------------------------------------
                            609 ; bit data
                            610 ;--------------------------------------------------------
                            611 	.area BSEG    (BIT)
   0016                     612 _packet_received:
   0016                     613 	.ds 1
   0017                     614 _preamble_detected:
   0017                     615 	.ds 1
   0018                     616 _radio_preamble_detected_EX0_saved_1_157:
   0018                     617 	.ds 1
   0019                     618 _radio_transmit_simple_transmit_started_1_170:
   0019                     619 	.ds 1
   001A                     620 _radio_transmit_golay_sloc0_1_0:
   001A                     621 	.ds 1
   001B                     622 _radio_transmit_EX0_saved_1_189:
   001B                     623 	.ds 1
   001C                     624 _radio_transmit_sloc0_1_0:
   001C                     625 	.ds 1
   001D                     626 _radio_initialise_sloc0_1_0:
   001D                     627 	.ds 1
   001E                     628 _radio_set_diversity_PARM_1:
   001E                     629 	.ds 1
                            630 ;--------------------------------------------------------
                            631 ; paged external ram data
                            632 ;--------------------------------------------------------
                            633 	.area PSEG    (PAG,XDATA)
   0079                     634 _receive_packet_length::
   0079                     635 	.ds 1
   007A                     636 _partial_packet_length::
   007A                     637 	.ds 1
   007B                     638 _last_rssi::
   007B                     639 	.ds 1
   007C                     640 _netid::
   007C                     641 	.ds 2
   007E                     642 _settings::
   007E                     643 	.ds 12
   008A                     644 _radio_receive_packet_PARM_2:
   008A                     645 	.ds 2
   008C                     646 _radio_write_transmit_fifo_PARM_2:
   008C                     647 	.ds 2
   008E                     648 _radio_transmit_simple_PARM_2:
   008E                     649 	.ds 2
   0090                     650 _radio_transmit_simple_PARM_3:
   0090                     651 	.ds 2
   0092                     652 _radio_transmit_golay_PARM_2:
   0092                     653 	.ds 2
   0094                     654 _radio_transmit_golay_PARM_3:
   0094                     655 	.ds 2
   0096                     656 _radio_transmit_PARM_2:
   0096                     657 	.ds 2
   0098                     658 _radio_transmit_PARM_3:
   0098                     659 	.ds 2
   009A                     660 _scale_uint32_PARM_2:
   009A                     661 	.ds 4
   009E                     662 _scale_uint32_value_1_248:
   009E                     663 	.ds 4
   00A2                     664 _set_frequency_registers_frequency_1_256:
   00A2                     665 	.ds 4
                            666 ;--------------------------------------------------------
                            667 ; external ram data
                            668 ;--------------------------------------------------------
                            669 	.area XSEG    (XDATA)
   0364                     670 _radio_buffer::
   0364                     671 	.ds 252
   0460                     672 _radio_receive_packet_length_1_134:
   0460                     673 	.ds 3
   0463                     674 _radio_receive_packet_gout_1_135:
   0463                     675 	.ds 3
   0466                     676 _radio_transmit_golay_length_1_185:
   0466                     677 	.ds 1
   0467                     678 _radio_transmit_golay_gin_1_186:
   0467                     679 	.ds 3
   046A                     680 _radio_transmit_length_1_188:
   046A                     681 	.ds 1
   046B                     682 _radio_set_channel_channel_1_206:
   046B                     683 	.ds 1
   046C                     684 _radio_set_transmit_power_power_1_230:
   046C                     685 	.ds 1
   046D                     686 _radio_set_transmit_power_i_1_231:
   046D                     687 	.ds 1
   046E                     688 _radio_set_network_id_id_1_236:
   046E                     689 	.ds 2
   0470                     690 _set_frequency_registers_band_1_257:
   0470                     691 	.ds 1
                            692 ;--------------------------------------------------------
                            693 ; absolute external ram data
                            694 ;--------------------------------------------------------
                            695 	.area XABS    (ABS,XDATA)
                            696 ;--------------------------------------------------------
                            697 ; external initialized ram data
                            698 ;--------------------------------------------------------
                            699 	.area XISEG   (XDATA)
                            700 	.area HOME    (CODE)
                            701 	.area GSINIT0 (CODE)
                            702 	.area GSINIT1 (CODE)
                            703 	.area GSINIT2 (CODE)
                            704 	.area GSINIT3 (CODE)
                            705 	.area GSINIT4 (CODE)
                            706 	.area GSINIT5 (CODE)
                            707 	.area GSINIT  (CODE)
                            708 	.area GSFINAL (CODE)
                            709 	.area CSEG    (CODE)
                            710 ;--------------------------------------------------------
                            711 ; global & static initialisations
                            712 ;--------------------------------------------------------
                            713 	.area HOME    (CODE)
                            714 	.area GSINIT  (CODE)
                            715 	.area GSFINAL (CODE)
                            716 	.area GSINIT  (CODE)
                            717 ;--------------------------------------------------------
                            718 ; Home
                            719 ;--------------------------------------------------------
                            720 	.area HOME    (CODE)
                            721 	.area HOME    (CODE)
                            722 ;--------------------------------------------------------
                            723 ; code
                            724 ;--------------------------------------------------------
                            725 	.area CSEG    (CODE)
                            726 ;------------------------------------------------------------
                            727 ;Allocation info for local variables in function 'radio_receive_packet'
                            728 ;------------------------------------------------------------
                            729 ;crc1                      Allocated with name '_radio_receive_packet_crc1_1_135'
                            730 ;crc2                      Allocated to registers r5 r7 
                            731 ;errcount                  Allocated to registers r6 
                            732 ;elen                      Allocated to registers r7 
                            733 ;length                    Allocated with name '_radio_receive_packet_length_1_134'
                            734 ;gout                      Allocated with name '_radio_receive_packet_gout_1_135'
                            735 ;------------------------------------------------------------
                            736 ;	radio/radio.c:77: radio_receive_packet(uint8_t *length, __xdata uint8_t * __pdata buf)
                            737 ;	-----------------------------------------
                            738 ;	 function radio_receive_packet
                            739 ;	-----------------------------------------
   2DD0                     740 _radio_receive_packet:
                     0007   741 	ar7 = 0x07
                     0006   742 	ar6 = 0x06
                     0005   743 	ar5 = 0x05
                     0004   744 	ar4 = 0x04
                     0003   745 	ar3 = 0x03
                     0002   746 	ar2 = 0x02
                     0001   747 	ar1 = 0x01
                     0000   748 	ar0 = 0x00
   2DD0 AF F0         [24]  749 	mov	r7,b
   2DD2 AE 83         [24]  750 	mov	r6,dph
   2DD4 E5 82         [12]  751 	mov	a,dpl
   2DD6 90 04 60      [24]  752 	mov	dptr,#_radio_receive_packet_length_1_134
   2DD9 F0            [24]  753 	movx	@dptr,a
   2DDA EE            [12]  754 	mov	a,r6
   2DDB A3            [24]  755 	inc	dptr
   2DDC F0            [24]  756 	movx	@dptr,a
   2DDD EF            [12]  757 	mov	a,r7
   2DDE A3            [24]  758 	inc	dptr
   2DDF F0            [24]  759 	movx	@dptr,a
                            760 ;	radio/radio.c:84: if (!packet_received) {
   2DE0 20 16 02      [24]  761 	jb	_packet_received,00102$
                            762 ;	radio/radio.c:85: return false;
   2DE3 C3            [12]  763 	clr	c
   2DE4 22            [24]  764 	ret
   2DE5                     765 00102$:
                            766 ;	radio/radio.c:88: if (receive_packet_length > MAX_PACKET_LENGTH) {
   2DE5 78 79         [12]  767 	mov	r0,#_receive_packet_length
   2DE7 C3            [12]  768 	clr	c
   2DE8 E2            [24]  769 	movx	a,@r0
   2DE9 F5 F0         [12]  770 	mov	b,a
   2DEB 74 FC         [12]  771 	mov	a,#0xFC
   2DED 95 F0         [12]  772 	subb	a,b
   2DEF 50 06         [24]  773 	jnc	00104$
                            774 ;	radio/radio.c:89: radio_receiver_on();
   2DF1 12 34 40      [24]  775 	lcall	_radio_receiver_on
                            776 ;	radio/radio.c:90: goto failed;
   2DF4 02 30 10      [24]  777 	ljmp	00126$
   2DF7                     778 00104$:
                            779 ;	radio/radio.c:101: if (!feature_golay) {
   2DF7 20 04 45      [24]  780 	jb	_feature_golay,00106$
                            781 ;	radio/radio.c:103: *length = receive_packet_length;
   2DFA 90 04 60      [24]  782 	mov	dptr,#_radio_receive_packet_length_1_134
   2DFD E0            [24]  783 	movx	a,@dptr
   2DFE FD            [12]  784 	mov	r5,a
   2DFF A3            [24]  785 	inc	dptr
   2E00 E0            [24]  786 	movx	a,@dptr
   2E01 FE            [12]  787 	mov	r6,a
   2E02 A3            [24]  788 	inc	dptr
   2E03 E0            [24]  789 	movx	a,@dptr
   2E04 FF            [12]  790 	mov	r7,a
   2E05 8D 82         [24]  791 	mov	dpl,r5
   2E07 8E 83         [24]  792 	mov	dph,r6
   2E09 8F F0         [24]  793 	mov	b,r7
   2E0B 78 79         [12]  794 	mov	r0,#_receive_packet_length
   2E0D E2            [24]  795 	movx	a,@r0
   2E0E 12 5E 29      [24]  796 	lcall	__gptrput
                            797 ;	radio/radio.c:104: memcpy(buf, radio_buffer, receive_packet_length);
   2E11 78 8A         [12]  798 	mov	r0,#_radio_receive_packet_PARM_2
   2E13 E2            [24]  799 	movx	a,@r0
   2E14 FD            [12]  800 	mov	r5,a
   2E15 08            [12]  801 	inc	r0
   2E16 E2            [24]  802 	movx	a,@r0
   2E17 FE            [12]  803 	mov	r6,a
   2E18 7F 00         [12]  804 	mov	r7,#0x00
   2E1A 90 05 C1      [24]  805 	mov	dptr,#_memcpy_PARM_2
   2E1D 74 64         [12]  806 	mov	a,#_radio_buffer
   2E1F F0            [24]  807 	movx	@dptr,a
   2E20 74 03         [12]  808 	mov	a,#(_radio_buffer >> 8)
   2E22 A3            [24]  809 	inc	dptr
   2E23 F0            [24]  810 	movx	@dptr,a
   2E24 E4            [12]  811 	clr	a
   2E25 A3            [24]  812 	inc	dptr
   2E26 F0            [24]  813 	movx	@dptr,a
   2E27 78 79         [12]  814 	mov	r0,#_receive_packet_length
   2E29 90 05 C4      [24]  815 	mov	dptr,#_memcpy_PARM_3
   2E2C E2            [24]  816 	movx	a,@r0
   2E2D F0            [24]  817 	movx	@dptr,a
   2E2E E4            [12]  818 	clr	a
   2E2F A3            [24]  819 	inc	dptr
   2E30 F0            [24]  820 	movx	@dptr,a
   2E31 8D 82         [24]  821 	mov	dpl,r5
   2E33 8E 83         [24]  822 	mov	dph,r6
   2E35 8F F0         [24]  823 	mov	b,r7
   2E37 12 5D 9C      [24]  824 	lcall	_memcpy
                            825 ;	radio/radio.c:105: radio_receiver_on();
   2E3A 12 34 40      [24]  826 	lcall	_radio_receiver_on
                            827 ;	radio/radio.c:106: return true;
   2E3D D3            [12]  828 	setb	c
   2E3E 22            [24]  829 	ret
   2E3F                     830 00106$:
                            831 ;	radio/radio.c:112: memcpy(buf, radio_buffer, receive_packet_length);
   2E3F 78 8A         [12]  832 	mov	r0,#_radio_receive_packet_PARM_2
   2E41 E2            [24]  833 	movx	a,@r0
   2E42 FD            [12]  834 	mov	r5,a
   2E43 08            [12]  835 	inc	r0
   2E44 E2            [24]  836 	movx	a,@r0
   2E45 FE            [12]  837 	mov	r6,a
   2E46 7F 00         [12]  838 	mov	r7,#0x00
   2E48 90 05 C1      [24]  839 	mov	dptr,#_memcpy_PARM_2
   2E4B 74 64         [12]  840 	mov	a,#_radio_buffer
   2E4D F0            [24]  841 	movx	@dptr,a
   2E4E 74 03         [12]  842 	mov	a,#(_radio_buffer >> 8)
   2E50 A3            [24]  843 	inc	dptr
   2E51 F0            [24]  844 	movx	@dptr,a
   2E52 E4            [12]  845 	clr	a
   2E53 A3            [24]  846 	inc	dptr
   2E54 F0            [24]  847 	movx	@dptr,a
   2E55 78 79         [12]  848 	mov	r0,#_receive_packet_length
   2E57 90 05 C4      [24]  849 	mov	dptr,#_memcpy_PARM_3
   2E5A E2            [24]  850 	movx	a,@r0
   2E5B F0            [24]  851 	movx	@dptr,a
   2E5C E4            [12]  852 	clr	a
   2E5D A3            [24]  853 	inc	dptr
   2E5E F0            [24]  854 	movx	@dptr,a
   2E5F 8D 82         [24]  855 	mov	dpl,r5
   2E61 8E 83         [24]  856 	mov	dph,r6
   2E63 8F F0         [24]  857 	mov	b,r7
   2E65 12 5D 9C      [24]  858 	lcall	_memcpy
                            859 ;	radio/radio.c:116: elen = receive_packet_length;
   2E68 78 79         [12]  860 	mov	r0,#_receive_packet_length
   2E6A E2            [24]  861 	movx	a,@r0
   2E6B FF            [12]  862 	mov	r7,a
                            863 ;	radio/radio.c:117: radio_receiver_on();	
   2E6C C0 07         [24]  864 	push	ar7
   2E6E 12 34 40      [24]  865 	lcall	_radio_receiver_on
   2E71 D0 07         [24]  866 	pop	ar7
                            867 ;	radio/radio.c:119: if (elen < 12 || (elen%6) != 0) {
   2E73 BF 0C 00      [24]  868 	cjne	r7,#0x0C,00176$
   2E76                     869 00176$:
   2E76 50 03         [24]  870 	jnc	00177$
   2E78 02 30 10      [24]  871 	ljmp	00126$
   2E7B                     872 00177$:
   2E7B 75 F0 06      [24]  873 	mov	b,#0x06
   2E7E EF            [12]  874 	mov	a,r7
   2E7F 84            [48]  875 	div	ab
   2E80 E5 F0         [12]  876 	mov	a,b
   2E82 60 03         [24]  877 	jz	00178$
   2E84 02 30 10      [24]  878 	ljmp	00126$
   2E87                     879 00178$:
                            880 ;	radio/radio.c:126: errcount = golay_decode(6, buf, gout);
   2E87 78 8A         [12]  881 	mov	r0,#_radio_receive_packet_PARM_2
   2E89 79 2D         [12]  882 	mov	r1,#_golay_decode_PARM_2
   2E8B E2            [24]  883 	movx	a,@r0
   2E8C F3            [24]  884 	movx	@r1,a
   2E8D 08            [12]  885 	inc	r0
   2E8E E2            [24]  886 	movx	a,@r0
   2E8F 09            [12]  887 	inc	r1
   2E90 F3            [24]  888 	movx	@r1,a
   2E91 78 2F         [12]  889 	mov	r0,#_golay_decode_PARM_3
   2E93 74 63         [12]  890 	mov	a,#_radio_receive_packet_gout_1_135
   2E95 F2            [24]  891 	movx	@r0,a
   2E96 08            [12]  892 	inc	r0
   2E97 74 04         [12]  893 	mov	a,#(_radio_receive_packet_gout_1_135 >> 8)
   2E99 F2            [24]  894 	movx	@r0,a
   2E9A 75 82 06      [24]  895 	mov	dpl,#0x06
   2E9D C0 07         [24]  896 	push	ar7
   2E9F 12 10 B6      [24]  897 	lcall	_golay_decode
   2EA2 AE 82         [24]  898 	mov	r6,dpl
   2EA4 D0 07         [24]  899 	pop	ar7
                            900 ;	radio/radio.c:127: if (gout[0] != netid[0] ||
   2EA6 90 04 63      [24]  901 	mov	dptr,#_radio_receive_packet_gout_1_135
   2EA9 E0            [24]  902 	movx	a,@dptr
   2EAA FD            [12]  903 	mov	r5,a
   2EAB 78 7C         [12]  904 	mov	r0,#_netid
   2EAD E2            [24]  905 	movx	a,@r0
   2EAE FC            [12]  906 	mov	r4,a
   2EAF ED            [12]  907 	mov	a,r5
   2EB0 B5 04 02      [24]  908 	cjne	a,ar4,00179$
   2EB3 80 03         [24]  909 	sjmp	00180$
   2EB5                     910 00179$:
   2EB5 02 30 10      [24]  911 	ljmp	00126$
   2EB8                     912 00180$:
                            913 ;	radio/radio.c:128: gout[1] != netid[1]) {
   2EB8 90 04 64      [24]  914 	mov	dptr,#(_radio_receive_packet_gout_1_135 + 0x0001)
   2EBB E0            [24]  915 	movx	a,@dptr
   2EBC FD            [12]  916 	mov	r5,a
   2EBD 78 7D         [12]  917 	mov	r0,#(_netid + 0x0001)
   2EBF E2            [24]  918 	movx	a,@r0
   2EC0 FC            [12]  919 	mov	r4,a
   2EC1 ED            [12]  920 	mov	a,r5
   2EC2 B5 04 02      [24]  921 	cjne	a,ar4,00181$
   2EC5 80 03         [24]  922 	sjmp	00182$
   2EC7                     923 00181$:
   2EC7 02 30 10      [24]  924 	ljmp	00126$
   2ECA                     925 00182$:
                            926 ;	radio/radio.c:136: if (6*((gout[2]+2)/3+2) != elen) {
   2ECA 90 04 65      [24]  927 	mov	dptr,#(_radio_receive_packet_gout_1_135 + 0x0002)
   2ECD E0            [24]  928 	movx	a,@dptr
   2ECE FD            [12]  929 	mov	r5,a
   2ECF 7C 00         [12]  930 	mov	r4,#0x00
   2ED1 74 02         [12]  931 	mov	a,#0x02
   2ED3 2D            [12]  932 	add	a,r5
   2ED4 FD            [12]  933 	mov	r5,a
   2ED5 E4            [12]  934 	clr	a
   2ED6 3C            [12]  935 	addc	a,r4
   2ED7 FC            [12]  936 	mov	r4,a
   2ED8 90 05 E8      [24]  937 	mov	dptr,#__divsint_PARM_2
   2EDB 74 03         [12]  938 	mov	a,#0x03
   2EDD F0            [24]  939 	movx	@dptr,a
   2EDE E4            [12]  940 	clr	a
   2EDF A3            [24]  941 	inc	dptr
   2EE0 F0            [24]  942 	movx	@dptr,a
   2EE1 8D 82         [24]  943 	mov	dpl,r5
   2EE3 8C 83         [24]  944 	mov	dph,r4
   2EE5 C0 07         [24]  945 	push	ar7
   2EE7 C0 06         [24]  946 	push	ar6
   2EE9 12 61 80      [24]  947 	lcall	__divsint
   2EEC E5 82         [12]  948 	mov	a,dpl
   2EEE 85 83 F0      [24]  949 	mov	b,dph
   2EF1 90 05 CB      [24]  950 	mov	dptr,#__mulint_PARM_2
   2EF4 24 02         [12]  951 	add	a,#0x02
   2EF6 F0            [24]  952 	movx	@dptr,a
   2EF7 E4            [12]  953 	clr	a
   2EF8 35 F0         [12]  954 	addc	a,b
   2EFA A3            [24]  955 	inc	dptr
   2EFB F0            [24]  956 	movx	@dptr,a
   2EFC 90 00 06      [24]  957 	mov	dptr,#0x0006
   2EFF 12 5E 74      [24]  958 	lcall	__mulint
   2F02 AC 82         [24]  959 	mov	r4,dpl
   2F04 AD 83         [24]  960 	mov	r5,dph
   2F06 D0 06         [24]  961 	pop	ar6
   2F08 D0 07         [24]  962 	pop	ar7
   2F0A 8F 02         [24]  963 	mov	ar2,r7
   2F0C 7B 00         [12]  964 	mov	r3,#0x00
   2F0E EC            [12]  965 	mov	a,r4
   2F0F B5 02 06      [24]  966 	cjne	a,ar2,00183$
   2F12 ED            [12]  967 	mov	a,r5
   2F13 B5 03 02      [24]  968 	cjne	a,ar3,00183$
   2F16 80 03         [24]  969 	sjmp	00184$
   2F18                     970 00183$:
   2F18 02 30 10      [24]  971 	ljmp	00126$
   2F1B                     972 00184$:
                            973 ;	radio/radio.c:144: errcount += golay_decode(6, &buf[6], gout);
   2F1B 78 8A         [12]  974 	mov	r0,#_radio_receive_packet_PARM_2
   2F1D 79 2D         [12]  975 	mov	r1,#_golay_decode_PARM_2
   2F1F E2            [24]  976 	movx	a,@r0
   2F20 24 06         [12]  977 	add	a,#0x06
   2F22 F3            [24]  978 	movx	@r1,a
   2F23 08            [12]  979 	inc	r0
   2F24 E2            [24]  980 	movx	a,@r0
   2F25 34 00         [12]  981 	addc	a,#0x00
   2F27 09            [12]  982 	inc	r1
   2F28 F3            [24]  983 	movx	@r1,a
   2F29 78 2F         [12]  984 	mov	r0,#_golay_decode_PARM_3
   2F2B 74 63         [12]  985 	mov	a,#_radio_receive_packet_gout_1_135
   2F2D F2            [24]  986 	movx	@r0,a
   2F2E 08            [12]  987 	inc	r0
   2F2F 74 04         [12]  988 	mov	a,#(_radio_receive_packet_gout_1_135 >> 8)
   2F31 F2            [24]  989 	movx	@r0,a
   2F32 75 82 06      [24]  990 	mov	dpl,#0x06
   2F35 C0 07         [24]  991 	push	ar7
   2F37 C0 06         [24]  992 	push	ar6
   2F39 12 10 B6      [24]  993 	lcall	_golay_decode
   2F3C AD 82         [24]  994 	mov	r5,dpl
   2F3E D0 06         [24]  995 	pop	ar6
   2F40 D0 07         [24]  996 	pop	ar7
   2F42 ED            [12]  997 	mov	a,r5
   2F43 2E            [12]  998 	add	a,r6
   2F44 FE            [12]  999 	mov	r6,a
                           1000 ;	radio/radio.c:145: crc1 = gout[0] | (((uint16_t)gout[1])<<8);
   2F45 90 04 63      [24] 1001 	mov	dptr,#_radio_receive_packet_gout_1_135
   2F48 E0            [24] 1002 	movx	a,@dptr
   2F49 FD            [12] 1003 	mov	r5,a
   2F4A 90 04 64      [24] 1004 	mov	dptr,#(_radio_receive_packet_gout_1_135 + 0x0001)
   2F4D E0            [24] 1005 	movx	a,@dptr
   2F4E FB            [12] 1006 	mov	r3,a
   2F4F E4            [12] 1007 	clr	a
   2F50 FC            [12] 1008 	mov	r4,a
   2F51 FA            [12] 1009 	mov	r2,a
   2F52 4D            [12] 1010 	orl	a,r5
   2F53 F5 4C         [12] 1011 	mov	_radio_receive_packet_crc1_1_135,a
   2F55 EB            [12] 1012 	mov	a,r3
   2F56 4A            [12] 1013 	orl	a,r2
   2F57 F5 4D         [12] 1014 	mov	(_radio_receive_packet_crc1_1_135 + 1),a
                           1015 ;	radio/radio.c:147: if (elen != 12) {
   2F59 BF 0C 02      [24] 1016 	cjne	r7,#0x0C,00185$
   2F5C 80 2A         [24] 1017 	sjmp	00116$
   2F5E                    1018 00185$:
                           1019 ;	radio/radio.c:148: errcount += golay_decode(elen-12, &buf[12], buf);
   2F5E EF            [12] 1020 	mov	a,r7
   2F5F 24 F4         [12] 1021 	add	a,#0xF4
   2F61 FF            [12] 1022 	mov	r7,a
   2F62 78 8A         [12] 1023 	mov	r0,#_radio_receive_packet_PARM_2
   2F64 79 2D         [12] 1024 	mov	r1,#_golay_decode_PARM_2
   2F66 E2            [24] 1025 	movx	a,@r0
   2F67 24 0C         [12] 1026 	add	a,#0x0C
   2F69 F3            [24] 1027 	movx	@r1,a
   2F6A 08            [12] 1028 	inc	r0
   2F6B E2            [24] 1029 	movx	a,@r0
   2F6C 34 00         [12] 1030 	addc	a,#0x00
   2F6E 09            [12] 1031 	inc	r1
   2F6F F3            [24] 1032 	movx	@r1,a
   2F70 78 8A         [12] 1033 	mov	r0,#_radio_receive_packet_PARM_2
   2F72 79 2F         [12] 1034 	mov	r1,#_golay_decode_PARM_3
   2F74 E2            [24] 1035 	movx	a,@r0
   2F75 F3            [24] 1036 	movx	@r1,a
   2F76 08            [12] 1037 	inc	r0
   2F77 E2            [24] 1038 	movx	a,@r0
   2F78 09            [12] 1039 	inc	r1
   2F79 F3            [24] 1040 	movx	@r1,a
   2F7A 8F 82         [24] 1041 	mov	dpl,r7
   2F7C C0 06         [24] 1042 	push	ar6
   2F7E 12 10 B6      [24] 1043 	lcall	_golay_decode
   2F81 AF 82         [24] 1044 	mov	r7,dpl
   2F83 D0 06         [24] 1045 	pop	ar6
   2F85 EF            [12] 1046 	mov	a,r7
   2F86 2E            [12] 1047 	add	a,r6
   2F87 FE            [12] 1048 	mov	r6,a
   2F88                    1049 00116$:
                           1050 ;	radio/radio.c:151: *length = gout[2];
   2F88 90 04 60      [24] 1051 	mov	dptr,#_radio_receive_packet_length_1_134
   2F8B E0            [24] 1052 	movx	a,@dptr
   2F8C FA            [12] 1053 	mov	r2,a
   2F8D A3            [24] 1054 	inc	dptr
   2F8E E0            [24] 1055 	movx	a,@dptr
   2F8F FB            [12] 1056 	mov	r3,a
   2F90 A3            [24] 1057 	inc	dptr
   2F91 E0            [24] 1058 	movx	a,@dptr
   2F92 FF            [12] 1059 	mov	r7,a
   2F93 90 04 65      [24] 1060 	mov	dptr,#(_radio_receive_packet_gout_1_135 + 0x0002)
   2F96 E0            [24] 1061 	movx	a,@dptr
   2F97 FD            [12] 1062 	mov	r5,a
   2F98 8A 82         [24] 1063 	mov	dpl,r2
   2F9A 8B 83         [24] 1064 	mov	dph,r3
   2F9C 8F F0         [24] 1065 	mov	b,r7
   2F9E 12 5E 29      [24] 1066 	lcall	__gptrput
                           1067 ;	radio/radio.c:153: crc2 = crc16(*length, buf);
   2FA1 78 8A         [12] 1068 	mov	r0,#_radio_receive_packet_PARM_2
   2FA3 E2            [24] 1069 	movx	a,@r0
   2FA4 F5 0C         [12] 1070 	mov	_crc16_PARM_2,a
   2FA6 08            [12] 1071 	inc	r0
   2FA7 E2            [24] 1072 	movx	a,@r0
   2FA8 F5 0D         [12] 1073 	mov	(_crc16_PARM_2 + 1),a
   2FAA 8D 82         [24] 1074 	mov	dpl,r5
   2FAC C0 06         [24] 1075 	push	ar6
   2FAE 12 0A 2A      [24] 1076 	lcall	_crc16
   2FB1 AD 82         [24] 1077 	mov	r5,dpl
   2FB3 AF 83         [24] 1078 	mov	r7,dph
   2FB5 D0 06         [24] 1079 	pop	ar6
                           1080 ;	radio/radio.c:155: if (crc1 != crc2) {
   2FB7 ED            [12] 1081 	mov	a,r5
   2FB8 B5 4C 55      [24] 1082 	cjne	a,_radio_receive_packet_crc1_1_135,00126$
   2FBB EF            [12] 1083 	mov	a,r7
   2FBC B5 4D 51      [24] 1084 	cjne	a,(_radio_receive_packet_crc1_1_135 + 1),00126$
                           1085 ;	radio/radio.c:165: if (errcount != 0) {
   2FBF EE            [12] 1086 	mov	a,r6
   2FC0 60 4C         [24] 1087 	jz	00125$
                           1088 ;	radio/radio.c:166: if ((uint16_t)(0xFFFF - errcount) > errors.corrected_errors) {
   2FC2 7F 00         [12] 1089 	mov	r7,#0x00
   2FC4 74 FF         [12] 1090 	mov	a,#0xFF
   2FC6 C3            [12] 1091 	clr	c
   2FC7 9E            [12] 1092 	subb	a,r6
   2FC8 FC            [12] 1093 	mov	r4,a
   2FC9 74 FF         [12] 1094 	mov	a,#0xFF
   2FCB 9F            [12] 1095 	subb	a,r7
   2FCC FD            [12] 1096 	mov	r5,a
   2FCD 78 3C         [12] 1097 	mov	r0,#(_errors + 0x0008)
   2FCF E2            [24] 1098 	movx	a,@r0
   2FD0 FA            [12] 1099 	mov	r2,a
   2FD1 08            [12] 1100 	inc	r0
   2FD2 E2            [24] 1101 	movx	a,@r0
   2FD3 FB            [12] 1102 	mov	r3,a
   2FD4 C3            [12] 1103 	clr	c
   2FD5 EA            [12] 1104 	mov	a,r2
   2FD6 9C            [12] 1105 	subb	a,r4
   2FD7 EB            [12] 1106 	mov	a,r3
   2FD8 9D            [12] 1107 	subb	a,r5
   2FD9 50 0F         [24] 1108 	jnc	00120$
                           1109 ;	radio/radio.c:167: errors.corrected_errors += errcount;
   2FDB EE            [12] 1110 	mov	a,r6
   2FDC 2A            [12] 1111 	add	a,r2
   2FDD FE            [12] 1112 	mov	r6,a
   2FDE EF            [12] 1113 	mov	a,r7
   2FDF 3B            [12] 1114 	addc	a,r3
   2FE0 FF            [12] 1115 	mov	r7,a
   2FE1 78 3C         [12] 1116 	mov	r0,#(_errors + 0x0008)
   2FE3 EE            [12] 1117 	mov	a,r6
   2FE4 F2            [24] 1118 	movx	@r0,a
   2FE5 08            [12] 1119 	inc	r0
   2FE6 EF            [12] 1120 	mov	a,r7
   2FE7 F2            [24] 1121 	movx	@r0,a
   2FE8 80 09         [24] 1122 	sjmp	00121$
   2FEA                    1123 00120$:
                           1124 ;	radio/radio.c:169: errors.corrected_errors = 0xFFFF;
   2FEA 78 3C         [12] 1125 	mov	r0,#(_errors + 0x0008)
   2FEC 74 FF         [12] 1126 	mov	a,#0xFF
   2FEE F2            [24] 1127 	movx	@r0,a
   2FEF 08            [12] 1128 	inc	r0
   2FF0 74 FF         [12] 1129 	mov	a,#0xFF
   2FF2 F2            [24] 1130 	movx	@r0,a
   2FF3                    1131 00121$:
                           1132 ;	radio/radio.c:171: if (errors.corrected_packets != 0xFFFF) {
   2FF3 78 3E         [12] 1133 	mov	r0,#(_errors + 0x000a)
   2FF5 E2            [24] 1134 	movx	a,@r0
   2FF6 FE            [12] 1135 	mov	r6,a
   2FF7 08            [12] 1136 	inc	r0
   2FF8 E2            [24] 1137 	movx	a,@r0
   2FF9 FF            [12] 1138 	mov	r7,a
   2FFA BE FF 05      [24] 1139 	cjne	r6,#0xFF,00190$
   2FFD BF FF 02      [24] 1140 	cjne	r7,#0xFF,00190$
   3000 80 0C         [24] 1141 	sjmp	00125$
   3002                    1142 00190$:
                           1143 ;	radio/radio.c:172: errors.corrected_packets++;
   3002 0E            [12] 1144 	inc	r6
   3003 BE 00 01      [24] 1145 	cjne	r6,#0x00,00191$
   3006 0F            [12] 1146 	inc	r7
   3007                    1147 00191$:
   3007 78 3E         [12] 1148 	mov	r0,#(_errors + 0x000a)
   3009 EE            [12] 1149 	mov	a,r6
   300A F2            [24] 1150 	movx	@r0,a
   300B 08            [12] 1151 	inc	r0
   300C EF            [12] 1152 	mov	a,r7
   300D F2            [24] 1153 	movx	@r0,a
   300E                    1154 00125$:
                           1155 ;	radio/radio.c:176: return true;
   300E D3            [12] 1156 	setb	c
                           1157 ;	radio/radio.c:178: failed:
   300F 22            [24] 1158 	ret
   3010                    1159 00126$:
                           1160 ;	radio/radio.c:179: if (errors.rx_errors != 0xFFFF) {
   3010 78 34         [12] 1161 	mov	r0,#_errors
   3012 E2            [24] 1162 	movx	a,@r0
   3013 FE            [12] 1163 	mov	r6,a
   3014 08            [12] 1164 	inc	r0
   3015 E2            [24] 1165 	movx	a,@r0
   3016 FF            [12] 1166 	mov	r7,a
   3017 BE FF 05      [24] 1167 	cjne	r6,#0xFF,00192$
   301A BF FF 02      [24] 1168 	cjne	r7,#0xFF,00192$
   301D 80 0C         [24] 1169 	sjmp	00128$
   301F                    1170 00192$:
                           1171 ;	radio/radio.c:180: errors.rx_errors++;
   301F 0E            [12] 1172 	inc	r6
   3020 BE 00 01      [24] 1173 	cjne	r6,#0x00,00193$
   3023 0F            [12] 1174 	inc	r7
   3024                    1175 00193$:
   3024 78 34         [12] 1176 	mov	r0,#_errors
   3026 EE            [12] 1177 	mov	a,r6
   3027 F2            [24] 1178 	movx	@r0,a
   3028 08            [12] 1179 	inc	r0
   3029 EF            [12] 1180 	mov	a,r7
   302A F2            [24] 1181 	movx	@r0,a
   302B                    1182 00128$:
                           1183 ;	radio/radio.c:182: return false;
   302B C3            [12] 1184 	clr	c
   302C 22            [24] 1185 	ret
                           1186 ;------------------------------------------------------------
                           1187 ;Allocation info for local variables in function 'radio_write_transmit_fifo'
                           1188 ;------------------------------------------------------------
                           1189 ;n                         Allocated to registers r7 
                           1190 ;------------------------------------------------------------
                           1191 ;	radio/radio.c:189: radio_write_transmit_fifo(register uint8_t n, __xdata uint8_t * __pdata buffer)
                           1192 ;	-----------------------------------------
                           1193 ;	 function radio_write_transmit_fifo
                           1194 ;	-----------------------------------------
   302D                    1195 _radio_write_transmit_fifo:
   302D AF 82         [24] 1196 	mov	r7,dpl
                           1197 ;	radio/radio.c:191: NSS1 = 0;
   302F C2 94         [12] 1198 	clr	_NSS1
                           1199 ;	radio/radio.c:192: SPIF1 = 0;
   3031 C2 B7         [12] 1200 	clr	_SPIF1
                           1201 ;	radio/radio.c:193: SPI1DAT = (0x80 | EZRADIOPRO_FIFO_ACCESS);
   3033 75 86 FF      [24] 1202 	mov	_SPI1DAT,#0xFF
                           1203 ;	radio/radio.c:195: while (n--) {
   3036 78 8C         [12] 1204 	mov	r0,#_radio_write_transmit_fifo_PARM_2
   3038 E2            [24] 1205 	movx	a,@r0
   3039 FD            [12] 1206 	mov	r5,a
   303A 08            [12] 1207 	inc	r0
   303B E2            [24] 1208 	movx	a,@r0
   303C FE            [12] 1209 	mov	r6,a
   303D                    1210 00104$:
   303D 8F 04         [24] 1211 	mov	ar4,r7
   303F 1F            [12] 1212 	dec	r7
   3040 EC            [12] 1213 	mov	a,r4
   3041 60 11         [24] 1214 	jz	00107$
                           1215 ;	radio/radio.c:196: while (!TXBMT1) /* noop */;
   3043                    1216 00101$:
   3043 30 B1 FD      [24] 1217 	jnb	_TXBMT1,00101$
                           1218 ;	radio/radio.c:197: SPI1DAT = *buffer++;
   3046 8D 82         [24] 1219 	mov	dpl,r5
   3048 8E 83         [24] 1220 	mov	dph,r6
   304A E0            [24] 1221 	movx	a,@dptr
   304B F5 86         [12] 1222 	mov	_SPI1DAT,a
   304D A3            [24] 1223 	inc	dptr
   304E AD 82         [24] 1224 	mov	r5,dpl
   3050 AE 83         [24] 1225 	mov	r6,dph
                           1226 ;	radio/radio.c:200: while (!TXBMT1) /* noop */;
   3052 80 E9         [24] 1227 	sjmp	00104$
   3054                    1228 00107$:
   3054 30 B1 FD      [24] 1229 	jnb	_TXBMT1,00107$
                           1230 ;	radio/radio.c:201: while ((SPI1CFG & 0x80) == 0x80);
   3057                    1231 00110$:
   3057 74 80         [12] 1232 	mov	a,#0x80
   3059 55 84         [12] 1233 	anl	a,_SPI1CFG
   305B FF            [12] 1234 	mov	r7,a
   305C BF 80 02      [24] 1235 	cjne	r7,#0x80,00137$
   305F 80 F6         [24] 1236 	sjmp	00110$
   3061                    1237 00137$:
                           1238 ;	radio/radio.c:203: SPIF1 = 0;
   3061 C2 B7         [12] 1239 	clr	_SPIF1
                           1240 ;	radio/radio.c:204: NSS1 = 1;
   3063 D2 94         [12] 1241 	setb	_NSS1
   3065 22            [24] 1242 	ret
                           1243 ;------------------------------------------------------------
                           1244 ;Allocation info for local variables in function 'radio_receive_in_progress'
                           1245 ;------------------------------------------------------------
                           1246 ;	radio/radio.c:210: radio_receive_in_progress(void)
                           1247 ;	-----------------------------------------
                           1248 ;	 function radio_receive_in_progress
                           1249 ;	-----------------------------------------
   3066                    1250 _radio_receive_in_progress:
                           1251 ;	radio/radio.c:212: if (packet_received ||
   3066 20 16 05      [24] 1252 	jb	_packet_received,00101$
                           1253 ;	radio/radio.c:213: partial_packet_length != 0) {
   3069 78 7A         [12] 1254 	mov	r0,#_partial_packet_length
   306B E2            [24] 1255 	movx	a,@r0
   306C 60 02         [24] 1256 	jz	00102$
   306E                    1257 00101$:
                           1258 ;	radio/radio.c:214: return true;
   306E D3            [12] 1259 	setb	c
   306F 22            [24] 1260 	ret
   3070                    1261 00102$:
                           1262 ;	radio/radio.c:218: if (register_read(EZRADIOPRO_EZMAC_STATUS) & EZRADIOPRO_PKRX) {
   3070 75 82 31      [24] 1263 	mov	dpl,#0x31
   3073 12 39 3F      [24] 1264 	lcall	_register_read
   3076 E5 82         [12] 1265 	mov	a,dpl
   3078 30 E4 02      [24] 1266 	jnb	acc.4,00105$
                           1267 ;	radio/radio.c:219: return true;
   307B D3            [12] 1268 	setb	c
   307C 22            [24] 1269 	ret
   307D                    1270 00105$:
                           1271 ;	radio/radio.c:221: return false;
   307D C3            [12] 1272 	clr	c
   307E 22            [24] 1273 	ret
                           1274 ;------------------------------------------------------------
                           1275 ;Allocation info for local variables in function 'radio_preamble_detected'
                           1276 ;------------------------------------------------------------
                           1277 ;	radio/radio.c:228: radio_preamble_detected(void)
                           1278 ;	-----------------------------------------
                           1279 ;	 function radio_preamble_detected
                           1280 ;	-----------------------------------------
   307F                    1281 _radio_preamble_detected:
                           1282 ;	radio/radio.c:230: EX0_SAVE_DISABLE;
   307F A2 A8         [12] 1283 	mov	c,_EX0
   3081 92 18         [24] 1284 	mov	_radio_preamble_detected_EX0_saved_1_157,c
   3083 C2 A8         [12] 1285 	clr	_EX0
                           1286 ;	radio/radio.c:231: if (preamble_detected) {
                           1287 ;	radio/radio.c:232: preamble_detected = 0;
   3085 10 17 02      [24] 1288 	jbc	_preamble_detected,00108$
   3088 80 06         [24] 1289 	sjmp	00102$
   308A                    1290 00108$:
                           1291 ;	radio/radio.c:233: EX0_RESTORE;
   308A A2 18         [12] 1292 	mov	c,_radio_preamble_detected_EX0_saved_1_157
   308C 92 A8         [24] 1293 	mov	_EX0,c
                           1294 ;	radio/radio.c:234: return true;
   308E D3            [12] 1295 	setb	c
   308F 22            [24] 1296 	ret
   3090                    1297 00102$:
                           1298 ;	radio/radio.c:236: EX0_RESTORE;
   3090 A2 18         [12] 1299 	mov	c,_radio_preamble_detected_EX0_saved_1_157
   3092 92 A8         [24] 1300 	mov	_EX0,c
                           1301 ;	radio/radio.c:237: return false;
   3094 C3            [12] 1302 	clr	c
   3095 22            [24] 1303 	ret
                           1304 ;------------------------------------------------------------
                           1305 ;Allocation info for local variables in function 'radio_last_rssi'
                           1306 ;------------------------------------------------------------
                           1307 ;	radio/radio.c:245: radio_last_rssi(void)
                           1308 ;	-----------------------------------------
                           1309 ;	 function radio_last_rssi
                           1310 ;	-----------------------------------------
   3096                    1311 _radio_last_rssi:
                           1312 ;	radio/radio.c:247: return last_rssi;
   3096 78 7B         [12] 1313 	mov	r0,#_last_rssi
   3098 E2            [24] 1314 	movx	a,@r0
   3099 F5 82         [12] 1315 	mov	dpl,a
   309B 22            [24] 1316 	ret
                           1317 ;------------------------------------------------------------
                           1318 ;Allocation info for local variables in function 'radio_current_rssi'
                           1319 ;------------------------------------------------------------
                           1320 ;	radio/radio.c:253: radio_current_rssi(void)
                           1321 ;	-----------------------------------------
                           1322 ;	 function radio_current_rssi
                           1323 ;	-----------------------------------------
   309C                    1324 _radio_current_rssi:
                           1325 ;	radio/radio.c:255: return register_read(EZRADIOPRO_RECEIVED_SIGNAL_STRENGTH_INDICATOR);
   309C 75 82 26      [24] 1326 	mov	dpl,#0x26
   309F 02 39 3F      [24] 1327 	ljmp	_register_read
                           1328 ;------------------------------------------------------------
                           1329 ;Allocation info for local variables in function 'radio_air_rate'
                           1330 ;------------------------------------------------------------
                           1331 ;	radio/radio.c:261: radio_air_rate(void)
                           1332 ;	-----------------------------------------
                           1333 ;	 function radio_air_rate
                           1334 ;	-----------------------------------------
   30A2                    1335 _radio_air_rate:
                           1336 ;	radio/radio.c:263: return settings.air_data_rate;
   30A2 78 86         [12] 1337 	mov	r0,#(_settings + 0x0008)
   30A4 E2            [24] 1338 	movx	a,@r0
   30A5 F5 82         [12] 1339 	mov	dpl,a
   30A7 22            [24] 1340 	ret
                           1341 ;------------------------------------------------------------
                           1342 ;Allocation info for local variables in function 'radio_clear_transmit_fifo'
                           1343 ;------------------------------------------------------------
                           1344 ;control                   Allocated to registers r7 
                           1345 ;------------------------------------------------------------
                           1346 ;	radio/radio.c:269: radio_clear_transmit_fifo(void)
                           1347 ;	-----------------------------------------
                           1348 ;	 function radio_clear_transmit_fifo
                           1349 ;	-----------------------------------------
   30A8                    1350 _radio_clear_transmit_fifo:
                           1351 ;	radio/radio.c:272: control = register_read(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2);
   30A8 75 82 08      [24] 1352 	mov	dpl,#0x08
   30AB 12 39 3F      [24] 1353 	lcall	_register_read
   30AE AF 82         [24] 1354 	mov	r7,dpl
                           1355 ;	radio/radio.c:273: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, control | EZRADIOPRO_FFCLRTX);
   30B0 74 01         [12] 1356 	mov	a,#0x01
   30B2 4F            [12] 1357 	orl	a,r7
   30B3 FE            [12] 1358 	mov	r6,a
   30B4 C0 07         [24] 1359 	push	ar7
   30B6 C0 06         [24] 1360 	push	ar6
   30B8 75 82 08      [24] 1361 	mov	dpl,#0x08
   30BB 12 39 0F      [24] 1362 	lcall	_register_write
   30BE 15 81         [12] 1363 	dec	sp
   30C0 D0 07         [24] 1364 	pop	ar7
                           1365 ;	radio/radio.c:274: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, control & ~EZRADIOPRO_FFCLRTX);
   30C2 53 07 FE      [24] 1366 	anl	ar7,#0xFE
   30C5 C0 07         [24] 1367 	push	ar7
   30C7 75 82 08      [24] 1368 	mov	dpl,#0x08
   30CA 12 39 0F      [24] 1369 	lcall	_register_write
   30CD 15 81         [12] 1370 	dec	sp
   30CF 22            [24] 1371 	ret
                           1372 ;------------------------------------------------------------
                           1373 ;Allocation info for local variables in function 'radio_clear_receive_fifo'
                           1374 ;------------------------------------------------------------
                           1375 ;control                   Allocated to registers r7 
                           1376 ;------------------------------------------------------------
                           1377 ;	radio/radio.c:281: radio_clear_receive_fifo(void) __reentrant
                           1378 ;	-----------------------------------------
                           1379 ;	 function radio_clear_receive_fifo
                           1380 ;	-----------------------------------------
   30D0                    1381 _radio_clear_receive_fifo:
                           1382 ;	radio/radio.c:284: control = register_read(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2);
   30D0 75 82 08      [24] 1383 	mov	dpl,#0x08
   30D3 12 39 3F      [24] 1384 	lcall	_register_read
   30D6 AF 82         [24] 1385 	mov	r7,dpl
                           1386 ;	radio/radio.c:285: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, control | EZRADIOPRO_FFCLRRX);
   30D8 74 02         [12] 1387 	mov	a,#0x02
   30DA 4F            [12] 1388 	orl	a,r7
   30DB FE            [12] 1389 	mov	r6,a
   30DC C0 07         [24] 1390 	push	ar7
   30DE C0 06         [24] 1391 	push	ar6
   30E0 75 82 08      [24] 1392 	mov	dpl,#0x08
   30E3 12 39 0F      [24] 1393 	lcall	_register_write
   30E6 15 81         [12] 1394 	dec	sp
   30E8 D0 07         [24] 1395 	pop	ar7
                           1396 ;	radio/radio.c:286: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, control & ~EZRADIOPRO_FFCLRRX);
   30EA 53 07 FD      [24] 1397 	anl	ar7,#0xFD
   30ED C0 07         [24] 1398 	push	ar7
   30EF 75 82 08      [24] 1399 	mov	dpl,#0x08
   30F2 12 39 0F      [24] 1400 	lcall	_register_write
   30F5 15 81         [12] 1401 	dec	sp
   30F7 22            [24] 1402 	ret
                           1403 ;------------------------------------------------------------
                           1404 ;Allocation info for local variables in function 'radio_transmit_simple'
                           1405 ;------------------------------------------------------------
                           1406 ;length                    Allocated to registers r7 
                           1407 ;n                         Allocated to registers r6 
                           1408 ;status                    Allocated to registers r3 
                           1409 ;------------------------------------------------------------
                           1410 ;	radio/radio.c:298: radio_transmit_simple(__data uint8_t length, __xdata uint8_t * __pdata buf, __pdata uint16_t timeout_ticks)
                           1411 ;	-----------------------------------------
                           1412 ;	 function radio_transmit_simple
                           1413 ;	-----------------------------------------
   30F8                    1414 _radio_transmit_simple:
                           1415 ;	radio/radio.c:304: if (length > sizeof(radio_buffer)) {
   30F8 E5 82         [12] 1416 	mov	a,dpl
   30FA FF            [12] 1417 	mov	r7,a
   30FB 24 03         [12] 1418 	add	a,#0xff - 0xFC
   30FD 50 19         [24] 1419 	jnc	00102$
                           1420 ;	radio/radio.c:305: panic("oversized packet");
   30FF C0 07         [24] 1421 	push	ar7
   3101 74 BB         [12] 1422 	mov	a,#__str_0
   3103 C0 E0         [24] 1423 	push	acc
   3105 74 C9         [12] 1424 	mov	a,#(__str_0 >> 8)
   3107 C0 E0         [24] 1425 	push	acc
   3109 74 80         [12] 1426 	mov	a,#0x80
   310B C0 E0         [24] 1427 	push	acc
   310D 12 11 F8      [24] 1428 	lcall	_panic
   3110 15 81         [12] 1429 	dec	sp
   3112 15 81         [12] 1430 	dec	sp
   3114 15 81         [12] 1431 	dec	sp
   3116 D0 07         [24] 1432 	pop	ar7
   3118                    1433 00102$:
                           1434 ;	radio/radio.c:308: radio_clear_transmit_fifo();
   3118 C0 07         [24] 1435 	push	ar7
   311A 12 30 A8      [24] 1436 	lcall	_radio_clear_transmit_fifo
   311D D0 07         [24] 1437 	pop	ar7
                           1438 ;	radio/radio.c:310: register_write(EZRADIOPRO_TRANSMIT_PACKET_LENGTH, length);
   311F C0 07         [24] 1439 	push	ar7
   3121 C0 07         [24] 1440 	push	ar7
   3123 75 82 3E      [24] 1441 	mov	dpl,#0x3E
   3126 12 39 0F      [24] 1442 	lcall	_register_write
   3129 15 81         [12] 1443 	dec	sp
   312B D0 07         [24] 1444 	pop	ar7
                           1445 ;	radio/radio.c:313: n = length;
                           1446 ;	radio/radio.c:314: if (n > TX_FIFO_THRESHOLD_LOW) {
   312D EF            [12] 1447 	mov	a,r7
   312E FE            [12] 1448 	mov	r6,a
   312F 24 DF         [12] 1449 	add	a,#0xff - 0x20
   3131 50 02         [24] 1450 	jnc	00104$
                           1451 ;	radio/radio.c:315: n = TX_FIFO_THRESHOLD_LOW;
   3133 7E 20         [12] 1452 	mov	r6,#0x20
   3135                    1453 00104$:
                           1454 ;	radio/radio.c:317: radio_write_transmit_fifo(n, buf);
   3135 78 8E         [12] 1455 	mov	r0,#_radio_transmit_simple_PARM_2
   3137 79 8C         [12] 1456 	mov	r1,#_radio_write_transmit_fifo_PARM_2
   3139 E2            [24] 1457 	movx	a,@r0
   313A F3            [24] 1458 	movx	@r1,a
   313B 08            [12] 1459 	inc	r0
   313C E2            [24] 1460 	movx	a,@r0
   313D 09            [12] 1461 	inc	r1
   313E F3            [24] 1462 	movx	@r1,a
   313F 8E 82         [24] 1463 	mov	dpl,r6
   3141 C0 07         [24] 1464 	push	ar7
   3143 C0 06         [24] 1465 	push	ar6
   3145 12 30 2D      [24] 1466 	lcall	_radio_write_transmit_fifo
   3148 D0 06         [24] 1467 	pop	ar6
   314A D0 07         [24] 1468 	pop	ar7
                           1469 ;	radio/radio.c:318: length -= n;
   314C EF            [12] 1470 	mov	a,r7
   314D C3            [12] 1471 	clr	c
   314E 9E            [12] 1472 	subb	a,r6
   314F FF            [12] 1473 	mov	r7,a
                           1474 ;	radio/radio.c:319: buf += n;
   3150 78 8E         [12] 1475 	mov	r0,#_radio_transmit_simple_PARM_2
   3152 E2            [24] 1476 	movx	a,@r0
   3153 2E            [12] 1477 	add	a,r6
   3154 F2            [24] 1478 	movx	@r0,a
   3155 08            [12] 1479 	inc	r0
   3156 E2            [24] 1480 	movx	a,@r0
   3157 34 00         [12] 1481 	addc	a,#0x00
   3159 F2            [24] 1482 	movx	@r0,a
                           1483 ;	radio/radio.c:322: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0);
   315A C0 07         [24] 1484 	push	ar7
   315C E4            [12] 1485 	clr	a
   315D C0 E0         [24] 1486 	push	acc
   315F 75 82 05      [24] 1487 	mov	dpl,#0x05
   3162 12 39 0F      [24] 1488 	lcall	_register_write
   3165 15 81         [12] 1489 	dec	sp
                           1490 ;	radio/radio.c:323: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, 0);
   3167 E4            [12] 1491 	clr	a
   3168 C0 E0         [24] 1492 	push	acc
   316A 75 82 06      [24] 1493 	mov	dpl,#0x06
   316D 12 39 0F      [24] 1494 	lcall	_register_write
   3170 15 81         [12] 1495 	dec	sp
                           1496 ;	radio/radio.c:325: preamble_detected = 0;
   3172 C2 17         [12] 1497 	clr	_preamble_detected
                           1498 ;	radio/radio.c:326: transmit_started = false;
   3174 C2 19         [12] 1499 	clr	_radio_transmit_simple_transmit_started_1_170
                           1500 ;	radio/radio.c:329: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_1, EZRADIOPRO_TXON | EZRADIOPRO_XTON);
   3176 74 09         [12] 1501 	mov	a,#0x09
   3178 C0 E0         [24] 1502 	push	acc
   317A 75 82 07      [24] 1503 	mov	dpl,#0x07
   317D 12 39 0F      [24] 1504 	lcall	_register_write
   3180 15 81         [12] 1505 	dec	sp
                           1506 ;	radio/radio.c:332: tstart = timer2_tick();
   3182 12 56 FD      [24] 1507 	lcall	_timer2_tick
   3185 AC 82         [24] 1508 	mov	r4,dpl
   3187 AD 83         [24] 1509 	mov	r5,dph
   3189 D0 07         [24] 1510 	pop	ar7
                           1511 ;	radio/radio.c:333: while ((uint16_t)(timer2_tick() - tstart) < timeout_ticks) {
   318B                    1512 00130$:
   318B C0 07         [24] 1513 	push	ar7
   318D C0 05         [24] 1514 	push	ar5
   318F C0 04         [24] 1515 	push	ar4
   3191 12 56 FD      [24] 1516 	lcall	_timer2_tick
   3194 AA 82         [24] 1517 	mov	r2,dpl
   3196 AB 83         [24] 1518 	mov	r3,dph
   3198 D0 04         [24] 1519 	pop	ar4
   319A D0 05         [24] 1520 	pop	ar5
   319C D0 07         [24] 1521 	pop	ar7
   319E EA            [12] 1522 	mov	a,r2
   319F C3            [12] 1523 	clr	c
   31A0 9C            [12] 1524 	subb	a,r4
   31A1 FA            [12] 1525 	mov	r2,a
   31A2 EB            [12] 1526 	mov	a,r3
   31A3 9D            [12] 1527 	subb	a,r5
   31A4 FB            [12] 1528 	mov	r3,a
   31A5 78 90         [12] 1529 	mov	r0,#_radio_transmit_simple_PARM_3
   31A7 C3            [12] 1530 	clr	c
   31A8 E2            [24] 1531 	movx	a,@r0
   31A9 F5 F0         [12] 1532 	mov	b,a
   31AB EA            [12] 1533 	mov	a,r2
   31AC 95 F0         [12] 1534 	subb	a,b
   31AE 08            [12] 1535 	inc	r0
   31AF E2            [24] 1536 	movx	a,@r0
   31B0 F5 F0         [12] 1537 	mov	b,a
   31B2 EB            [12] 1538 	mov	a,r3
   31B3 95 F0         [12] 1539 	subb	a,b
   31B5 40 03         [24] 1540 	jc	00199$
   31B7 02 32 C4      [24] 1541 	ljmp	00132$
   31BA                    1542 00199$:
                           1543 ;	radio/radio.c:337: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_1);
   31BA 75 82 03      [24] 1544 	mov	dpl,#0x03
   31BD C0 07         [24] 1545 	push	ar7
   31BF C0 05         [24] 1546 	push	ar5
   31C1 C0 04         [24] 1547 	push	ar4
   31C3 12 39 3F      [24] 1548 	lcall	_register_read
   31C6 AB 82         [24] 1549 	mov	r3,dpl
   31C8 D0 04         [24] 1550 	pop	ar4
   31CA D0 05         [24] 1551 	pop	ar5
   31CC D0 07         [24] 1552 	pop	ar7
                           1553 ;	radio/radio.c:338: if (transmit_started && length != 0 && (status & EZRADIOPRO_ITXFFAEM)) {
   31CE 30 19 40      [24] 1554 	jnb	_radio_transmit_simple_transmit_started_1_170,00108$
   31D1 EF            [12] 1555 	mov	a,r7
   31D2 60 3D         [24] 1556 	jz	00108$
   31D4 EB            [12] 1557 	mov	a,r3
   31D5 30 E5 39      [24] 1558 	jnb	acc.5,00108$
                           1559 ;	radio/radio.c:345: n = 4;
   31D8 7E 04         [12] 1560 	mov	r6,#0x04
                           1561 ;	radio/radio.c:346: if (n > length) {
   31DA BF 04 00      [24] 1562 	cjne	r7,#0x04,00203$
   31DD                    1563 00203$:
   31DD 50 02         [24] 1564 	jnc	00106$
                           1565 ;	radio/radio.c:347: n = length;
   31DF 8F 06         [24] 1566 	mov	ar6,r7
   31E1                    1567 00106$:
                           1568 ;	radio/radio.c:349: radio_write_transmit_fifo(n, buf);
   31E1 78 8E         [12] 1569 	mov	r0,#_radio_transmit_simple_PARM_2
   31E3 79 8C         [12] 1570 	mov	r1,#_radio_write_transmit_fifo_PARM_2
   31E5 E2            [24] 1571 	movx	a,@r0
   31E6 F3            [24] 1572 	movx	@r1,a
   31E7 08            [12] 1573 	inc	r0
   31E8 E2            [24] 1574 	movx	a,@r0
   31E9 09            [12] 1575 	inc	r1
   31EA F3            [24] 1576 	movx	@r1,a
   31EB 8E 82         [24] 1577 	mov	dpl,r6
   31ED C0 07         [24] 1578 	push	ar7
   31EF C0 06         [24] 1579 	push	ar6
   31F1 C0 05         [24] 1580 	push	ar5
   31F3 C0 04         [24] 1581 	push	ar4
   31F5 12 30 2D      [24] 1582 	lcall	_radio_write_transmit_fifo
   31F8 D0 04         [24] 1583 	pop	ar4
   31FA D0 05         [24] 1584 	pop	ar5
   31FC D0 06         [24] 1585 	pop	ar6
   31FE D0 07         [24] 1586 	pop	ar7
                           1587 ;	radio/radio.c:350: length -= n;
   3200 EF            [12] 1588 	mov	a,r7
   3201 C3            [12] 1589 	clr	c
   3202 9E            [12] 1590 	subb	a,r6
   3203 FF            [12] 1591 	mov	r7,a
                           1592 ;	radio/radio.c:351: buf += n;
   3204 78 8E         [12] 1593 	mov	r0,#_radio_transmit_simple_PARM_2
   3206 E2            [24] 1594 	movx	a,@r0
   3207 2E            [12] 1595 	add	a,r6
   3208 F2            [24] 1596 	movx	@r0,a
   3209 08            [12] 1597 	inc	r0
   320A E2            [24] 1598 	movx	a,@r0
   320B 34 00         [12] 1599 	addc	a,#0x00
   320D F2            [24] 1600 	movx	@r0,a
                           1601 ;	radio/radio.c:352: continue;
   320E 02 31 8B      [24] 1602 	ljmp	00130$
   3211                    1603 00108$:
                           1604 ;	radio/radio.c:354: if (transmit_started && length != 0 && (status & EZRADIOPRO_ITXFFAFULL) == 0) {
   3211 30 19 40      [24] 1605 	jnb	_radio_transmit_simple_transmit_started_1_170,00114$
   3214 EF            [12] 1606 	mov	a,r7
   3215 60 3D         [24] 1607 	jz	00114$
   3217 EB            [12] 1608 	mov	a,r3
   3218 20 E6 39      [24] 1609 	jb	acc.6,00114$
                           1610 ;	radio/radio.c:358: n = 4;
   321B 7E 04         [12] 1611 	mov	r6,#0x04
                           1612 ;	radio/radio.c:359: if (n > length) {
   321D BF 04 00      [24] 1613 	cjne	r7,#0x04,00208$
   3220                    1614 00208$:
   3220 50 02         [24] 1615 	jnc	00112$
                           1616 ;	radio/radio.c:360: n = length;
   3222 8F 06         [24] 1617 	mov	ar6,r7
   3224                    1618 00112$:
                           1619 ;	radio/radio.c:362: radio_write_transmit_fifo(n, buf);
   3224 78 8E         [12] 1620 	mov	r0,#_radio_transmit_simple_PARM_2
   3226 79 8C         [12] 1621 	mov	r1,#_radio_write_transmit_fifo_PARM_2
   3228 E2            [24] 1622 	movx	a,@r0
   3229 F3            [24] 1623 	movx	@r1,a
   322A 08            [12] 1624 	inc	r0
   322B E2            [24] 1625 	movx	a,@r0
   322C 09            [12] 1626 	inc	r1
   322D F3            [24] 1627 	movx	@r1,a
   322E 8E 82         [24] 1628 	mov	dpl,r6
   3230 C0 07         [24] 1629 	push	ar7
   3232 C0 06         [24] 1630 	push	ar6
   3234 C0 05         [24] 1631 	push	ar5
   3236 C0 04         [24] 1632 	push	ar4
   3238 12 30 2D      [24] 1633 	lcall	_radio_write_transmit_fifo
   323B D0 04         [24] 1634 	pop	ar4
   323D D0 05         [24] 1635 	pop	ar5
   323F D0 06         [24] 1636 	pop	ar6
   3241 D0 07         [24] 1637 	pop	ar7
                           1638 ;	radio/radio.c:363: length -= n;
   3243 EF            [12] 1639 	mov	a,r7
   3244 C3            [12] 1640 	clr	c
   3245 9E            [12] 1641 	subb	a,r6
   3246 FF            [12] 1642 	mov	r7,a
                           1643 ;	radio/radio.c:364: buf += n;
   3247 78 8E         [12] 1644 	mov	r0,#_radio_transmit_simple_PARM_2
   3249 E2            [24] 1645 	movx	a,@r0
   324A 2E            [12] 1646 	add	a,r6
   324B F2            [24] 1647 	movx	@r0,a
   324C 08            [12] 1648 	inc	r0
   324D E2            [24] 1649 	movx	a,@r0
   324E 34 00         [12] 1650 	addc	a,#0x00
   3250 F2            [24] 1651 	movx	@r0,a
                           1652 ;	radio/radio.c:365: continue;
   3251 02 31 8B      [24] 1653 	ljmp	00130$
   3254                    1654 00114$:
                           1655 ;	radio/radio.c:368: if (status & EZRADIOPRO_IFFERR) {
   3254 EB            [12] 1656 	mov	a,r3
   3255 30 E7 20      [24] 1657 	jnb	acc.7,00120$
                           1658 ;	radio/radio.c:370: radio_clear_transmit_fifo();
   3258 12 30 A8      [24] 1659 	lcall	_radio_clear_transmit_fifo
                           1660 ;	radio/radio.c:372: if (errors.tx_errors != 0xFFFF) {
   325B 78 36         [12] 1661 	mov	r0,#(_errors + 0x0002)
   325D E2            [24] 1662 	movx	a,@r0
   325E FA            [12] 1663 	mov	r2,a
   325F 08            [12] 1664 	inc	r0
   3260 E2            [24] 1665 	movx	a,@r0
   3261 FE            [12] 1666 	mov	r6,a
   3262 BA FF 05      [24] 1667 	cjne	r2,#0xFF,00211$
   3265 BE FF 02      [24] 1668 	cjne	r6,#0xFF,00211$
   3268 80 0C         [24] 1669 	sjmp	00118$
   326A                    1670 00211$:
                           1671 ;	radio/radio.c:373: errors.tx_errors++;
   326A 0A            [12] 1672 	inc	r2
   326B BA 00 01      [24] 1673 	cjne	r2,#0x00,00212$
   326E 0E            [12] 1674 	inc	r6
   326F                    1675 00212$:
   326F 78 36         [12] 1676 	mov	r0,#(_errors + 0x0002)
   3271 EA            [12] 1677 	mov	a,r2
   3272 F2            [24] 1678 	movx	@r0,a
   3273 08            [12] 1679 	inc	r0
   3274 EE            [12] 1680 	mov	a,r6
   3275 F2            [24] 1681 	movx	@r0,a
   3276                    1682 00118$:
                           1683 ;	radio/radio.c:375: return false;
   3276 C3            [12] 1684 	clr	c
   3277 22            [24] 1685 	ret
   3278                    1686 00120$:
                           1687 ;	radio/radio.c:380: status = register_read(EZRADIOPRO_DEVICE_STATUS);
   3278 75 82 02      [24] 1688 	mov	dpl,#0x02
   327B C0 07         [24] 1689 	push	ar7
   327D C0 05         [24] 1690 	push	ar5
   327F C0 04         [24] 1691 	push	ar4
   3281 12 39 3F      [24] 1692 	lcall	_register_read
   3284 AB 82         [24] 1693 	mov	r3,dpl
   3286 D0 04         [24] 1694 	pop	ar4
   3288 D0 05         [24] 1695 	pop	ar5
   328A D0 07         [24] 1696 	pop	ar7
                           1697 ;	radio/radio.c:381: if (status & 0x02) {
   328C EB            [12] 1698 	mov	a,r3
   328D 30 E1 05      [24] 1699 	jnb	acc.1,00122$
                           1700 ;	radio/radio.c:383: transmit_started = true;
   3290 D2 19         [12] 1701 	setb	_radio_transmit_simple_transmit_started_1_170
                           1702 ;	radio/radio.c:384: continue;
   3292 02 31 8B      [24] 1703 	ljmp	00130$
   3295                    1704 00122$:
                           1705 ;	radio/radio.c:386: if (transmit_started && (status & 0x02) == 0) {
   3295 20 19 03      [24] 1706 	jb	_radio_transmit_simple_transmit_started_1_170,00214$
   3298 02 31 8B      [24] 1707 	ljmp	00130$
   329B                    1708 00214$:
   329B EB            [12] 1709 	mov	a,r3
   329C 30 E1 03      [24] 1710 	jnb	acc.1,00215$
   329F 02 31 8B      [24] 1711 	ljmp	00130$
   32A2                    1712 00215$:
                           1713 ;	radio/radio.c:389: if (length != 0) {
   32A2 EF            [12] 1714 	mov	a,r7
   32A3 60 1D         [24] 1715 	jz	00126$
                           1716 ;	radio/radio.c:391: if (errors.tx_errors != 0xFFFF) {
   32A5 78 36         [12] 1717 	mov	r0,#(_errors + 0x0002)
   32A7 E2            [24] 1718 	movx	a,@r0
   32A8 FE            [12] 1719 	mov	r6,a
   32A9 08            [12] 1720 	inc	r0
   32AA E2            [24] 1721 	movx	a,@r0
   32AB FF            [12] 1722 	mov	r7,a
   32AC BE FF 05      [24] 1723 	cjne	r6,#0xFF,00217$
   32AF BF FF 02      [24] 1724 	cjne	r7,#0xFF,00217$
   32B2 80 0C         [24] 1725 	sjmp	00124$
   32B4                    1726 00217$:
                           1727 ;	radio/radio.c:392: errors.tx_errors++;
   32B4 0E            [12] 1728 	inc	r6
   32B5 BE 00 01      [24] 1729 	cjne	r6,#0x00,00218$
   32B8 0F            [12] 1730 	inc	r7
   32B9                    1731 00218$:
   32B9 78 36         [12] 1732 	mov	r0,#(_errors + 0x0002)
   32BB EE            [12] 1733 	mov	a,r6
   32BC F2            [24] 1734 	movx	@r0,a
   32BD 08            [12] 1735 	inc	r0
   32BE EF            [12] 1736 	mov	a,r7
   32BF F2            [24] 1737 	movx	@r0,a
   32C0                    1738 00124$:
                           1739 ;	radio/radio.c:394: return false;
   32C0 C3            [12] 1740 	clr	c
   32C1 22            [24] 1741 	ret
   32C2                    1742 00126$:
                           1743 ;	radio/radio.c:396: return true;			
   32C2 D3            [12] 1744 	setb	c
   32C3 22            [24] 1745 	ret
   32C4                    1746 00132$:
                           1747 ;	radio/radio.c:407: if (errors.tx_errors != 0xFFFF) {
   32C4 78 36         [12] 1748 	mov	r0,#(_errors + 0x0002)
   32C6 E2            [24] 1749 	movx	a,@r0
   32C7 FE            [12] 1750 	mov	r6,a
   32C8 08            [12] 1751 	inc	r0
   32C9 E2            [24] 1752 	movx	a,@r0
   32CA FF            [12] 1753 	mov	r7,a
   32CB BE FF 05      [24] 1754 	cjne	r6,#0xFF,00219$
   32CE BF FF 02      [24] 1755 	cjne	r7,#0xFF,00219$
   32D1 80 0C         [24] 1756 	sjmp	00134$
   32D3                    1757 00219$:
                           1758 ;	radio/radio.c:408: errors.tx_errors++;
   32D3 0E            [12] 1759 	inc	r6
   32D4 BE 00 01      [24] 1760 	cjne	r6,#0x00,00220$
   32D7 0F            [12] 1761 	inc	r7
   32D8                    1762 00220$:
   32D8 78 36         [12] 1763 	mov	r0,#(_errors + 0x0002)
   32DA EE            [12] 1764 	mov	a,r6
   32DB F2            [24] 1765 	movx	@r0,a
   32DC 08            [12] 1766 	inc	r0
   32DD EF            [12] 1767 	mov	a,r7
   32DE F2            [24] 1768 	movx	@r0,a
   32DF                    1769 00134$:
                           1770 ;	radio/radio.c:411: return false;
   32DF C3            [12] 1771 	clr	c
   32E0 22            [24] 1772 	ret
                           1773 ;------------------------------------------------------------
                           1774 ;Allocation info for local variables in function 'radio_transmit_golay'
                           1775 ;------------------------------------------------------------
                           1776 ;elen                      Allocated with name '_radio_transmit_golay_elen_1_186'
                           1777 ;rlen                      Allocated to registers r5 
                           1778 ;length                    Allocated with name '_radio_transmit_golay_length_1_185'
                           1779 ;gin                       Allocated with name '_radio_transmit_golay_gin_1_186'
                           1780 ;------------------------------------------------------------
                           1781 ;	radio/radio.c:424: radio_transmit_golay(uint8_t length, __xdata uint8_t * __pdata buf, __pdata uint16_t timeout_ticks)
                           1782 ;	-----------------------------------------
                           1783 ;	 function radio_transmit_golay
                           1784 ;	-----------------------------------------
   32E1                    1785 _radio_transmit_golay:
   32E1 E5 82         [12] 1786 	mov	a,dpl
                           1787 ;	radio/radio.c:430: if (length > (sizeof(radio_buffer)/2)-6) {
   32E3 90 04 66      [24] 1788 	mov	dptr,#_radio_transmit_golay_length_1_185
   32E6 F0            [24] 1789 	movx	@dptr,a
   32E7 FF            [12] 1790 	mov  r7,a
   32E8 24 87         [12] 1791 	add	a,#0xff - 0x78
   32EA 50 19         [24] 1792 	jnc	00102$
                           1793 ;	radio/radio.c:432: panic("oversized golay packet");		
   32EC C0 07         [24] 1794 	push	ar7
   32EE 74 CC         [12] 1795 	mov	a,#__str_1
   32F0 C0 E0         [24] 1796 	push	acc
   32F2 74 C9         [12] 1797 	mov	a,#(__str_1 >> 8)
   32F4 C0 E0         [24] 1798 	push	acc
   32F6 74 80         [12] 1799 	mov	a,#0x80
   32F8 C0 E0         [24] 1800 	push	acc
   32FA 12 11 F8      [24] 1801 	lcall	_panic
   32FD 15 81         [12] 1802 	dec	sp
   32FF 15 81         [12] 1803 	dec	sp
   3301 15 81         [12] 1804 	dec	sp
   3303 D0 07         [24] 1805 	pop	ar7
   3305                    1806 00102$:
                           1807 ;	radio/radio.c:436: rlen = ((length+2)/3)*3;
   3305 8F 05         [24] 1808 	mov	ar5,r7
   3307 7E 00         [12] 1809 	mov	r6,#0x00
   3309 74 02         [12] 1810 	mov	a,#0x02
   330B 2D            [12] 1811 	add	a,r5
   330C FD            [12] 1812 	mov	r5,a
   330D E4            [12] 1813 	clr	a
   330E 3E            [12] 1814 	addc	a,r6
   330F FE            [12] 1815 	mov	r6,a
   3310 90 05 E8      [24] 1816 	mov	dptr,#__divsint_PARM_2
   3313 74 03         [12] 1817 	mov	a,#0x03
   3315 F0            [24] 1818 	movx	@dptr,a
   3316 E4            [12] 1819 	clr	a
   3317 A3            [24] 1820 	inc	dptr
   3318 F0            [24] 1821 	movx	@dptr,a
   3319 8D 82         [24] 1822 	mov	dpl,r5
   331B 8E 83         [24] 1823 	mov	dph,r6
   331D C0 07         [24] 1824 	push	ar7
   331F 12 61 80      [24] 1825 	lcall	__divsint
   3322 AD 82         [24] 1826 	mov	r5,dpl
   3324 D0 07         [24] 1827 	pop	ar7
   3326 ED            [12] 1828 	mov	a,r5
   3327 75 F0 03      [24] 1829 	mov	b,#0x03
   332A A4            [48] 1830 	mul	ab
                           1831 ;	radio/radio.c:439: elen = (rlen+6)*2;
   332B FD            [12] 1832 	mov	r5,a
   332C 24 06         [12] 1833 	add	a,#0x06
   332E 25 E0         [12] 1834 	add	a,acc
   3330 F5 4E         [12] 1835 	mov	_radio_transmit_golay_elen_1_186,a
                           1836 ;	radio/radio.c:442: gin[0] = netid[0];
   3332 78 7C         [12] 1837 	mov	r0,#_netid
   3334 E2            [24] 1838 	movx	a,@r0
   3335 90 04 67      [24] 1839 	mov	dptr,#_radio_transmit_golay_gin_1_186
   3338 F0            [24] 1840 	movx	@dptr,a
                           1841 ;	radio/radio.c:443: gin[1] = netid[1];
   3339 78 7D         [12] 1842 	mov	r0,#(_netid + 0x0001)
   333B E2            [24] 1843 	movx	a,@r0
   333C 90 04 68      [24] 1844 	mov	dptr,#(_radio_transmit_golay_gin_1_186 + 0x0001)
   333F F0            [24] 1845 	movx	@dptr,a
                           1846 ;	radio/radio.c:444: gin[2] = length;
   3340 90 04 69      [24] 1847 	mov	dptr,#(_radio_transmit_golay_gin_1_186 + 0x0002)
   3343 EF            [12] 1848 	mov	a,r7
   3344 F0            [24] 1849 	movx	@dptr,a
                           1850 ;	radio/radio.c:447: golay_encode(3, gin, radio_buffer);
   3345 78 28         [12] 1851 	mov	r0,#_golay_encode_PARM_2
   3347 74 67         [12] 1852 	mov	a,#_radio_transmit_golay_gin_1_186
   3349 F2            [24] 1853 	movx	@r0,a
   334A 08            [12] 1854 	inc	r0
   334B 74 04         [12] 1855 	mov	a,#(_radio_transmit_golay_gin_1_186 >> 8)
   334D F2            [24] 1856 	movx	@r0,a
   334E 78 2A         [12] 1857 	mov	r0,#_golay_encode_PARM_3
   3350 74 64         [12] 1858 	mov	a,#_radio_buffer
   3352 F2            [24] 1859 	movx	@r0,a
   3353 08            [12] 1860 	inc	r0
   3354 74 03         [12] 1861 	mov	a,#(_radio_buffer >> 8)
   3356 F2            [24] 1862 	movx	@r0,a
   3357 75 82 03      [24] 1863 	mov	dpl,#0x03
   335A C0 07         [24] 1864 	push	ar7
   335C C0 05         [24] 1865 	push	ar5
   335E 12 0E 17      [24] 1866 	lcall	_golay_encode
   3361 D0 05         [24] 1867 	pop	ar5
   3363 D0 07         [24] 1868 	pop	ar7
                           1869 ;	radio/radio.c:451: crc = crc16(length, buf);
   3365 78 92         [12] 1870 	mov	r0,#_radio_transmit_golay_PARM_2
   3367 E2            [24] 1871 	movx	a,@r0
   3368 F5 0C         [12] 1872 	mov	_crc16_PARM_2,a
   336A 08            [12] 1873 	inc	r0
   336B E2            [24] 1874 	movx	a,@r0
   336C F5 0D         [12] 1875 	mov	(_crc16_PARM_2 + 1),a
   336E 8F 82         [24] 1876 	mov	dpl,r7
   3370 C0 07         [24] 1877 	push	ar7
   3372 C0 05         [24] 1878 	push	ar5
   3374 12 0A 2A      [24] 1879 	lcall	_crc16
   3377 AB 82         [24] 1880 	mov	r3,dpl
   3379 AC 83         [24] 1881 	mov	r4,dph
   337B D0 05         [24] 1882 	pop	ar5
   337D D0 07         [24] 1883 	pop	ar7
                           1884 ;	radio/radio.c:452: gin[0] = crc&0xFF;
   337F 8B 02         [24] 1885 	mov	ar2,r3
   3381 90 04 67      [24] 1886 	mov	dptr,#_radio_transmit_golay_gin_1_186
   3384 EA            [12] 1887 	mov	a,r2
   3385 F0            [24] 1888 	movx	@dptr,a
                           1889 ;	radio/radio.c:453: gin[1] = crc>>8;
   3386 8C 03         [24] 1890 	mov	ar3,r4
   3388 90 04 68      [24] 1891 	mov	dptr,#(_radio_transmit_golay_gin_1_186 + 0x0001)
   338B EB            [12] 1892 	mov	a,r3
   338C F0            [24] 1893 	movx	@dptr,a
                           1894 ;	radio/radio.c:454: gin[2] = length;
   338D 90 04 69      [24] 1895 	mov	dptr,#(_radio_transmit_golay_gin_1_186 + 0x0002)
   3390 EF            [12] 1896 	mov	a,r7
   3391 F0            [24] 1897 	movx	@dptr,a
                           1898 ;	radio/radio.c:457: golay_encode(3, gin, &radio_buffer[6]);
   3392 78 2A         [12] 1899 	mov	r0,#_golay_encode_PARM_3
   3394 74 06         [12] 1900 	mov	a,#0x06
   3396 24 64         [12] 1901 	add	a,#_radio_buffer
   3398 F2            [24] 1902 	movx	@r0,a
   3399 E4            [12] 1903 	clr	a
   339A 34 03         [12] 1904 	addc	a,#(_radio_buffer >> 8)
   339C 08            [12] 1905 	inc	r0
   339D F2            [24] 1906 	movx	@r0,a
   339E 78 28         [12] 1907 	mov	r0,#_golay_encode_PARM_2
   33A0 74 67         [12] 1908 	mov	a,#_radio_transmit_golay_gin_1_186
   33A2 F2            [24] 1909 	movx	@r0,a
   33A3 08            [12] 1910 	inc	r0
   33A4 74 04         [12] 1911 	mov	a,#(_radio_transmit_golay_gin_1_186 >> 8)
   33A6 F2            [24] 1912 	movx	@r0,a
   33A7 75 82 03      [24] 1913 	mov	dpl,#0x03
   33AA C0 05         [24] 1914 	push	ar5
   33AC 12 0E 17      [24] 1915 	lcall	_golay_encode
   33AF D0 05         [24] 1916 	pop	ar5
                           1917 ;	radio/radio.c:460: golay_encode(rlen, buf, &radio_buffer[12]);
   33B1 78 2A         [12] 1918 	mov	r0,#_golay_encode_PARM_3
   33B3 74 0C         [12] 1919 	mov	a,#0x0C
   33B5 24 64         [12] 1920 	add	a,#_radio_buffer
   33B7 F2            [24] 1921 	movx	@r0,a
   33B8 E4            [12] 1922 	clr	a
   33B9 34 03         [12] 1923 	addc	a,#(_radio_buffer >> 8)
   33BB 08            [12] 1924 	inc	r0
   33BC F2            [24] 1925 	movx	@r0,a
   33BD 78 92         [12] 1926 	mov	r0,#_radio_transmit_golay_PARM_2
   33BF 79 28         [12] 1927 	mov	r1,#_golay_encode_PARM_2
   33C1 E2            [24] 1928 	movx	a,@r0
   33C2 F3            [24] 1929 	movx	@r1,a
   33C3 08            [12] 1930 	inc	r0
   33C4 E2            [24] 1931 	movx	a,@r0
   33C5 09            [12] 1932 	inc	r1
   33C6 F3            [24] 1933 	movx	@r1,a
   33C7 8D 82         [24] 1934 	mov	dpl,r5
   33C9 12 0E 17      [24] 1935 	lcall	_golay_encode
                           1936 ;	radio/radio.c:462: return radio_transmit_simple(elen, radio_buffer, timeout_ticks);
   33CC 78 8E         [12] 1937 	mov	r0,#_radio_transmit_simple_PARM_2
   33CE 74 64         [12] 1938 	mov	a,#_radio_buffer
   33D0 F2            [24] 1939 	movx	@r0,a
   33D1 08            [12] 1940 	inc	r0
   33D2 74 03         [12] 1941 	mov	a,#(_radio_buffer >> 8)
   33D4 F2            [24] 1942 	movx	@r0,a
   33D5 78 94         [12] 1943 	mov	r0,#_radio_transmit_golay_PARM_3
   33D7 79 90         [12] 1944 	mov	r1,#_radio_transmit_simple_PARM_3
   33D9 E2            [24] 1945 	movx	a,@r0
   33DA F3            [24] 1946 	movx	@r1,a
   33DB 08            [12] 1947 	inc	r0
   33DC E2            [24] 1948 	movx	a,@r0
   33DD 09            [12] 1949 	inc	r1
   33DE F3            [24] 1950 	movx	@r1,a
   33DF 85 4E 82      [24] 1951 	mov	dpl,_radio_transmit_golay_elen_1_186
   33E2 12 30 F8      [24] 1952 	lcall	_radio_transmit_simple
   33E5 92 1A         [24] 1953 	mov  _radio_transmit_golay_sloc0_1_0,c
   33E7 22            [24] 1954 	ret
                           1955 ;------------------------------------------------------------
                           1956 ;Allocation info for local variables in function 'radio_transmit'
                           1957 ;------------------------------------------------------------
                           1958 ;length                    Allocated with name '_radio_transmit_length_1_188'
                           1959 ;------------------------------------------------------------
                           1960 ;	radio/radio.c:474: radio_transmit(uint8_t length, __xdata uint8_t * __pdata buf, __pdata uint16_t timeout_ticks)
                           1961 ;	-----------------------------------------
                           1962 ;	 function radio_transmit
                           1963 ;	-----------------------------------------
   33E8                    1964 _radio_transmit:
   33E8 E5 82         [12] 1965 	mov	a,dpl
   33EA 90 04 6A      [24] 1966 	mov	dptr,#_radio_transmit_length_1_188
   33ED F0            [24] 1967 	movx	@dptr,a
                           1968 ;	radio/radio.c:477: EX0_SAVE_DISABLE;
   33EE A2 A8         [12] 1969 	mov	c,_EX0
   33F0 92 1B         [24] 1970 	mov	_radio_transmit_EX0_saved_1_189,c
   33F2 C2 A8         [12] 1971 	clr	_EX0
                           1972 ;	radio/radio.c:483: if (!feature_golay) {
   33F4 20 04 22      [24] 1973 	jb	_feature_golay,00102$
                           1974 ;	radio/radio.c:484: ret = radio_transmit_simple(length, buf, timeout_ticks);
   33F7 90 04 6A      [24] 1975 	mov	dptr,#_radio_transmit_length_1_188
   33FA E0            [24] 1976 	movx	a,@dptr
   33FB FF            [12] 1977 	mov	r7,a
   33FC 78 96         [12] 1978 	mov	r0,#_radio_transmit_PARM_2
   33FE 79 8E         [12] 1979 	mov	r1,#_radio_transmit_simple_PARM_2
   3400 E2            [24] 1980 	movx	a,@r0
   3401 F3            [24] 1981 	movx	@r1,a
   3402 08            [12] 1982 	inc	r0
   3403 E2            [24] 1983 	movx	a,@r0
   3404 09            [12] 1984 	inc	r1
   3405 F3            [24] 1985 	movx	@r1,a
   3406 78 98         [12] 1986 	mov	r0,#_radio_transmit_PARM_3
   3408 79 90         [12] 1987 	mov	r1,#_radio_transmit_simple_PARM_3
   340A E2            [24] 1988 	movx	a,@r0
   340B F3            [24] 1989 	movx	@r1,a
   340C 08            [12] 1990 	inc	r0
   340D E2            [24] 1991 	movx	a,@r0
   340E 09            [12] 1992 	inc	r1
   340F F3            [24] 1993 	movx	@r1,a
   3410 8F 82         [24] 1994 	mov	dpl,r7
   3412 12 30 F8      [24] 1995 	lcall	_radio_transmit_simple
   3415 92 1C         [24] 1996 	mov	_radio_transmit_sloc0_1_0,c
   3417 80 20         [24] 1997 	sjmp	00103$
   3419                    1998 00102$:
                           1999 ;	radio/radio.c:486: ret = radio_transmit_golay(length, buf, timeout_ticks);
   3419 90 04 6A      [24] 2000 	mov	dptr,#_radio_transmit_length_1_188
   341C E0            [24] 2001 	movx	a,@dptr
   341D FF            [12] 2002 	mov	r7,a
   341E 78 96         [12] 2003 	mov	r0,#_radio_transmit_PARM_2
   3420 79 92         [12] 2004 	mov	r1,#_radio_transmit_golay_PARM_2
   3422 E2            [24] 2005 	movx	a,@r0
   3423 F3            [24] 2006 	movx	@r1,a
   3424 08            [12] 2007 	inc	r0
   3425 E2            [24] 2008 	movx	a,@r0
   3426 09            [12] 2009 	inc	r1
   3427 F3            [24] 2010 	movx	@r1,a
   3428 78 98         [12] 2011 	mov	r0,#_radio_transmit_PARM_3
   342A 79 94         [12] 2012 	mov	r1,#_radio_transmit_golay_PARM_3
   342C E2            [24] 2013 	movx	a,@r0
   342D F3            [24] 2014 	movx	@r1,a
   342E 08            [12] 2015 	inc	r0
   342F E2            [24] 2016 	movx	a,@r0
   3430 09            [12] 2017 	inc	r1
   3431 F3            [24] 2018 	movx	@r1,a
   3432 8F 82         [24] 2019 	mov	dpl,r7
   3434 12 32 E1      [24] 2020 	lcall	_radio_transmit_golay
   3437 92 1C         [24] 2021 	mov	_radio_transmit_sloc0_1_0,c
   3439                    2022 00103$:
                           2023 ;	radio/radio.c:491: EX0_RESTORE;
   3439 A2 1B         [12] 2024 	mov	c,_radio_transmit_EX0_saved_1_189
   343B 92 A8         [24] 2025 	mov	_EX0,c
                           2026 ;	radio/radio.c:492: return ret;
   343D A2 1C         [12] 2027 	mov	c,_radio_transmit_sloc0_1_0
   343F 22            [24] 2028 	ret
                           2029 ;------------------------------------------------------------
                           2030 ;Allocation info for local variables in function 'radio_receiver_on'
                           2031 ;------------------------------------------------------------
                           2032 ;	radio/radio.c:499: radio_receiver_on(void)
                           2033 ;	-----------------------------------------
                           2034 ;	 function radio_receiver_on
                           2035 ;	-----------------------------------------
   3440                    2036 _radio_receiver_on:
                           2037 ;	radio/radio.c:501: EX0 = 0;
   3440 C2 A8         [12] 2038 	clr	_EX0
                           2039 ;	radio/radio.c:503: packet_received = 0;
   3442 C2 16         [12] 2040 	clr	_packet_received
                           2041 ;	radio/radio.c:504: receive_packet_length = 0;
   3444 78 79         [12] 2042 	mov	r0,#_receive_packet_length
   3446 E4            [12] 2043 	clr	a
   3447 F2            [24] 2044 	movx	@r0,a
                           2045 ;	radio/radio.c:505: preamble_detected = 0;
   3448 C2 17         [12] 2046 	clr	_preamble_detected
                           2047 ;	radio/radio.c:506: partial_packet_length = 0;
   344A 78 7A         [12] 2048 	mov	r0,#_partial_packet_length
   344C E4            [12] 2049 	clr	a
   344D F2            [24] 2050 	movx	@r0,a
                           2051 ;	radio/radio.c:509: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, RADIO_RX_INTERRUPTS);
   344E 74 13         [12] 2052 	mov	a,#0x13
   3450 C0 E0         [24] 2053 	push	acc
   3452 75 82 05      [24] 2054 	mov	dpl,#0x05
   3455 12 39 0F      [24] 2055 	lcall	_register_write
   3458 15 81         [12] 2056 	dec	sp
                           2057 ;	radio/radio.c:510: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, EZRADIOPRO_ENPREAVAL);
   345A 74 40         [12] 2058 	mov	a,#0x40
   345C C0 E0         [24] 2059 	push	acc
   345E 75 82 06      [24] 2060 	mov	dpl,#0x06
   3461 12 39 0F      [24] 2061 	lcall	_register_write
   3464 15 81         [12] 2062 	dec	sp
                           2063 ;	radio/radio.c:512: clear_status_registers();
   3466 12 39 A7      [24] 2064 	lcall	_clear_status_registers
                           2065 ;	radio/radio.c:513: radio_clear_transmit_fifo();
   3469 12 30 A8      [24] 2066 	lcall	_radio_clear_transmit_fifo
                           2067 ;	radio/radio.c:514: radio_clear_receive_fifo();
   346C 12 30 D0      [24] 2068 	lcall	_radio_clear_receive_fifo
                           2069 ;	radio/radio.c:517: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_1, EZRADIOPRO_RXON | EZRADIOPRO_XTON);
   346F 74 05         [12] 2070 	mov	a,#0x05
   3471 C0 E0         [24] 2071 	push	acc
   3473 75 82 07      [24] 2072 	mov	dpl,#0x07
   3476 12 39 0F      [24] 2073 	lcall	_register_write
   3479 15 81         [12] 2074 	dec	sp
                           2075 ;	radio/radio.c:520: EX0 = 1;
   347B D2 A8         [12] 2076 	setb	_EX0
                           2077 ;	radio/radio.c:522: return true;
   347D D3            [12] 2078 	setb	c
   347E 22            [24] 2079 	ret
                           2080 ;------------------------------------------------------------
                           2081 ;Allocation info for local variables in function 'radio_initialise'
                           2082 ;------------------------------------------------------------
                           2083 ;status                    Allocated with name '_radio_initialise_status_1_195'
                           2084 ;------------------------------------------------------------
                           2085 ;	radio/radio.c:529: radio_initialise(void)
                           2086 ;	-----------------------------------------
                           2087 ;	 function radio_initialise
                           2088 ;	-----------------------------------------
   347F                    2089 _radio_initialise:
                           2090 ;	radio/radio.c:533: delay_msec(50);
   347F 90 00 32      [24] 2091 	mov	dptr,#0x0032
   3482 12 56 8C      [24] 2092 	lcall	_delay_msec
                           2093 ;	radio/radio.c:536: status = register_read(EZRADIOPRO_DEVICE_VERSION);
   3485 75 82 01      [24] 2094 	mov	dpl,#0x01
   3488 12 39 3F      [24] 2095 	lcall	_register_read
   348B AF 82         [24] 2096 	mov	r7,dpl
                           2097 ;	radio/radio.c:537: if (status == 0xFF || status < 5) {
   348D BF FF 02      [24] 2098 	cjne	r7,#0xFF,00133$
   3490 80 05         [24] 2099 	sjmp	00101$
   3492                    2100 00133$:
   3492 BF 05 00      [24] 2101 	cjne	r7,#0x05,00134$
   3495                    2102 00134$:
   3495 50 02         [24] 2103 	jnc	00102$
   3497                    2104 00101$:
                           2105 ;	radio/radio.c:539: return false;
   3497 C3            [12] 2106 	clr	c
   3498 22            [24] 2107 	ret
   3499                    2108 00102$:
                           2109 ;	radio/radio.c:542: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_2);
   3499 75 82 04      [24] 2110 	mov	dpl,#0x04
   349C 12 39 3F      [24] 2111 	lcall	_register_read
                           2112 ;	radio/radio.c:544: if ((status & EZRADIOPRO_IPOR) == 0) {
   349F E5 82         [12] 2113 	mov	a,dpl
   34A1 FF            [12] 2114 	mov	r7,a
   34A2 20 E0 06      [24] 2115 	jb	acc.0,00105$
                           2116 ;	radio/radio.c:546: return software_reset();
   34A5 12 3A 07      [24] 2117 	lcall	_software_reset
   34A8 92 1D         [24] 2118 	mov  _radio_initialise_sloc0_1_0,c
   34AA 22            [24] 2119 	ret
   34AB                    2120 00105$:
                           2121 ;	radio/radio.c:549: if (status & EZRADIOPRO_ICHIPRDY) {
   34AB EF            [12] 2122 	mov	a,r7
   34AC 30 E1 02      [24] 2123 	jnb	acc.1,00107$
                           2124 ;	radio/radio.c:551: return true;
   34AF D3            [12] 2125 	setb	c
   34B0 22            [24] 2126 	ret
   34B1                    2127 00107$:
                           2128 ;	radio/radio.c:555: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0);
   34B1 E4            [12] 2129 	clr	a
   34B2 C0 E0         [24] 2130 	push	acc
   34B4 75 82 05      [24] 2131 	mov	dpl,#0x05
   34B7 12 39 0F      [24] 2132 	lcall	_register_write
   34BA 15 81         [12] 2133 	dec	sp
                           2134 ;	radio/radio.c:556: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, EZRADIOPRO_ENCHIPRDY);
   34BC 74 02         [12] 2135 	mov	a,#0x02
   34BE C0 E0         [24] 2136 	push	acc
   34C0 75 82 06      [24] 2137 	mov	dpl,#0x06
   34C3 12 39 0F      [24] 2138 	lcall	_register_write
   34C6 15 81         [12] 2139 	dec	sp
                           2140 ;	radio/radio.c:559: delay_set(50);
   34C8 90 00 32      [24] 2141 	mov	dptr,#0x0032
   34CB 12 56 53      [24] 2142 	lcall	_delay_set
                           2143 ;	radio/radio.c:560: while (!delay_expired()) {
   34CE                    2144 00110$:
   34CE 12 56 84      [24] 2145 	lcall	_delay_expired
   34D1 40 13         [24] 2146 	jc	00112$
                           2147 ;	radio/radio.c:561: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_1);
   34D3 75 82 03      [24] 2148 	mov	dpl,#0x03
   34D6 12 39 3F      [24] 2149 	lcall	_register_read
                           2150 ;	radio/radio.c:562: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_2);
   34D9 75 82 04      [24] 2151 	mov	dpl,#0x04
   34DC 12 39 3F      [24] 2152 	lcall	_register_read
   34DF E5 82         [12] 2153 	mov	a,dpl
                           2154 ;	radio/radio.c:563: if (status & EZRADIOPRO_ICHIPRDY) {
   34E1 30 E1 EA      [24] 2155 	jnb	acc.1,00110$
                           2156 ;	radio/radio.c:564: return true;
   34E4 D3            [12] 2157 	setb	c
   34E5 22            [24] 2158 	ret
   34E6                    2159 00112$:
                           2160 ;	radio/radio.c:568: return false;
   34E6 C3            [12] 2161 	clr	c
   34E7 22            [24] 2162 	ret
                           2163 ;------------------------------------------------------------
                           2164 ;Allocation info for local variables in function 'radio_set_frequency'
                           2165 ;------------------------------------------------------------
                           2166 ;	radio/radio.c:575: radio_set_frequency(__pdata uint32_t value)
                           2167 ;	-----------------------------------------
                           2168 ;	 function radio_set_frequency
                           2169 ;	-----------------------------------------
   34E8                    2170 _radio_set_frequency:
   34E8 AC 82         [24] 2171 	mov	r4,dpl
   34EA AD 83         [24] 2172 	mov	r5,dph
   34EC AE F0         [24] 2173 	mov	r6,b
   34EE FF            [12] 2174 	mov	r7,a
                           2175 ;	radio/radio.c:577: if (value < 240000000UL || value > 935000000UL) {
   34EF C3            [12] 2176 	clr	c
   34F0 ED            [12] 2177 	mov	a,r5
   34F1 94 1C         [12] 2178 	subb	a,#0x1C
   34F3 EE            [12] 2179 	mov	a,r6
   34F4 94 4E         [12] 2180 	subb	a,#0x4E
   34F6 EF            [12] 2181 	mov	a,r7
   34F7 94 0E         [12] 2182 	subb	a,#0x0E
   34F9 40 0E         [24] 2183 	jc	00101$
   34FB 74 C0         [12] 2184 	mov	a,#0xC0
   34FD 9C            [12] 2185 	subb	a,r4
   34FE 74 F7         [12] 2186 	mov	a,#0xF7
   3500 9D            [12] 2187 	subb	a,r5
   3501 74 BA         [12] 2188 	mov	a,#0xBA
   3503 9E            [12] 2189 	subb	a,r6
   3504 74 37         [12] 2190 	mov	a,#0x37
   3506 9F            [12] 2191 	subb	a,r7
   3507 50 02         [24] 2192 	jnc	00102$
   3509                    2193 00101$:
                           2194 ;	radio/radio.c:578: return false;
   3509 C3            [12] 2195 	clr	c
   350A 22            [24] 2196 	ret
   350B                    2197 00102$:
                           2198 ;	radio/radio.c:580: settings.frequency = value;
   350B 78 7E         [12] 2199 	mov	r0,#_settings
   350D EC            [12] 2200 	mov	a,r4
   350E F2            [24] 2201 	movx	@r0,a
   350F 08            [12] 2202 	inc	r0
   3510 ED            [12] 2203 	mov	a,r5
   3511 F2            [24] 2204 	movx	@r0,a
   3512 08            [12] 2205 	inc	r0
   3513 EE            [12] 2206 	mov	a,r6
   3514 F2            [24] 2207 	movx	@r0,a
   3515 08            [12] 2208 	inc	r0
   3516 EF            [12] 2209 	mov	a,r7
   3517 F2            [24] 2210 	movx	@r0,a
                           2211 ;	radio/radio.c:581: set_frequency_registers(value);
   3518 8C 82         [24] 2212 	mov	dpl,r4
   351A 8D 83         [24] 2213 	mov	dph,r5
   351C 8E F0         [24] 2214 	mov	b,r6
   351E EF            [12] 2215 	mov	a,r7
   351F 12 3A 73      [24] 2216 	lcall	_set_frequency_registers
                           2217 ;	radio/radio.c:582: return true;
   3522 D3            [12] 2218 	setb	c
   3523 22            [24] 2219 	ret
                           2220 ;------------------------------------------------------------
                           2221 ;Allocation info for local variables in function 'radio_set_channel_spacing'
                           2222 ;------------------------------------------------------------
                           2223 ;	radio/radio.c:589: radio_set_channel_spacing(__pdata uint32_t value)
                           2224 ;	-----------------------------------------
                           2225 ;	 function radio_set_channel_spacing
                           2226 ;	-----------------------------------------
   3524                    2227 _radio_set_channel_spacing:
   3524 AC 82         [24] 2228 	mov	r4,dpl
   3526 AD 83         [24] 2229 	mov	r5,dph
   3528 AE F0         [24] 2230 	mov	r6,b
   352A FF            [12] 2231 	mov	r7,a
                           2232 ;	radio/radio.c:591: if (value > 2550000L)
   352B C3            [12] 2233 	clr	c
   352C 74 F0         [12] 2234 	mov	a,#0xF0
   352E 9C            [12] 2235 	subb	a,r4
   352F 74 E8         [12] 2236 	mov	a,#0xE8
   3531 9D            [12] 2237 	subb	a,r5
   3532 74 26         [12] 2238 	mov	a,#0x26
   3534 9E            [12] 2239 	subb	a,r6
   3535 E4            [12] 2240 	clr	a
   3536 9F            [12] 2241 	subb	a,r7
   3537 50 02         [24] 2242 	jnc	00102$
                           2243 ;	radio/radio.c:592: return false;
   3539 C3            [12] 2244 	clr	c
   353A 22            [24] 2245 	ret
   353B                    2246 00102$:
                           2247 ;	radio/radio.c:593: value = scale_uint32(value, 10000);
   353B 90 00 9A      [24] 2248 	mov	dptr,#_scale_uint32_PARM_2
   353E 74 10         [12] 2249 	mov	a,#0x10
   3540 F0            [24] 2250 	movx	@dptr,a
   3541 74 27         [12] 2251 	mov	a,#0x27
   3543 A3            [24] 2252 	inc	dptr
   3544 F0            [24] 2253 	movx	@dptr,a
   3545 E4            [12] 2254 	clr	a
   3546 A3            [24] 2255 	inc	dptr
   3547 F0            [24] 2256 	movx	@dptr,a
   3548 E4            [12] 2257 	clr	a
   3549 A3            [24] 2258 	inc	dptr
   354A F0            [24] 2259 	movx	@dptr,a
   354B 8C 82         [24] 2260 	mov	dpl,r4
   354D 8D 83         [24] 2261 	mov	dph,r5
   354F 8E F0         [24] 2262 	mov	b,r6
   3551 EF            [12] 2263 	mov	a,r7
   3552 12 39 B3      [24] 2264 	lcall	_scale_uint32
   3555 AC 82         [24] 2265 	mov	r4,dpl
   3557 AD 83         [24] 2266 	mov	r5,dph
   3559 AE F0         [24] 2267 	mov	r6,b
   355B FF            [12] 2268 	mov	r7,a
                           2269 ;	radio/radio.c:594: settings.channel_spacing = value;
   355C 78 82         [12] 2270 	mov	r0,#(_settings + 0x0004)
   355E EC            [12] 2271 	mov	a,r4
   355F F2            [24] 2272 	movx	@r0,a
   3560 08            [12] 2273 	inc	r0
   3561 ED            [12] 2274 	mov	a,r5
   3562 F2            [24] 2275 	movx	@r0,a
   3563 08            [12] 2276 	inc	r0
   3564 EE            [12] 2277 	mov	a,r6
   3565 F2            [24] 2278 	movx	@r0,a
   3566 08            [12] 2279 	inc	r0
   3567 EF            [12] 2280 	mov	a,r7
   3568 F2            [24] 2281 	movx	@r0,a
                           2282 ;	radio/radio.c:595: register_write(EZRADIOPRO_FREQUENCY_HOPPING_STEP_SIZE, value);
   3569 C0 04         [24] 2283 	push	ar4
   356B 75 82 7A      [24] 2284 	mov	dpl,#0x7A
   356E 12 39 0F      [24] 2285 	lcall	_register_write
   3571 15 81         [12] 2286 	dec	sp
                           2287 ;	radio/radio.c:596: return true;
   3573 D3            [12] 2288 	setb	c
   3574 22            [24] 2289 	ret
                           2290 ;------------------------------------------------------------
                           2291 ;Allocation info for local variables in function 'radio_set_channel'
                           2292 ;------------------------------------------------------------
                           2293 ;channel                   Allocated with name '_radio_set_channel_channel_1_206'
                           2294 ;------------------------------------------------------------
                           2295 ;	radio/radio.c:602: radio_set_channel(uint8_t channel)
                           2296 ;	-----------------------------------------
                           2297 ;	 function radio_set_channel
                           2298 ;	-----------------------------------------
   3575                    2299 _radio_set_channel:
   3575 E5 82         [12] 2300 	mov	a,dpl
   3577 90 04 6B      [24] 2301 	mov	dptr,#_radio_set_channel_channel_1_206
   357A F0            [24] 2302 	movx	@dptr,a
                           2303 ;	radio/radio.c:604: if (channel != settings.current_channel) {
   357B 78 87         [12] 2304 	mov	r0,#(_settings + 0x0009)
   357D E2            [24] 2305 	movx	a,@r0
   357E FF            [12] 2306 	mov	r7,a
   357F 90 04 6B      [24] 2307 	mov	dptr,#_radio_set_channel_channel_1_206
   3582 E0            [24] 2308 	movx	a,@dptr
   3583 FE            [12] 2309 	mov	r6,a
   3584 B5 07 01      [24] 2310 	cjne	a,ar7,00108$
   3587 22            [24] 2311 	ret
   3588                    2312 00108$:
                           2313 ;	radio/radio.c:605: settings.current_channel = channel;
   3588 78 87         [12] 2314 	mov	r0,#(_settings + 0x0009)
   358A EE            [12] 2315 	mov	a,r6
   358B F2            [24] 2316 	movx	@r0,a
                           2317 ;	radio/radio.c:606: register_write(EZRADIOPRO_FREQUENCY_HOPPING_CHANNEL_SELECT, channel);
   358C C0 06         [24] 2318 	push	ar6
   358E 75 82 79      [24] 2319 	mov	dpl,#0x79
   3591 12 39 0F      [24] 2320 	lcall	_register_write
   3594 15 81         [12] 2321 	dec	sp
                           2322 ;	radio/radio.c:607: preamble_detected = 0;
   3596 C2 17         [12] 2323 	clr	_preamble_detected
   3598 22            [24] 2324 	ret
                           2325 ;------------------------------------------------------------
                           2326 ;Allocation info for local variables in function 'radio_get_channel'
                           2327 ;------------------------------------------------------------
                           2328 ;	radio/radio.c:614: radio_get_channel(void)
                           2329 ;	-----------------------------------------
                           2330 ;	 function radio_get_channel
                           2331 ;	-----------------------------------------
   3599                    2332 _radio_get_channel:
                           2333 ;	radio/radio.c:616: return settings.current_channel;
   3599 78 87         [12] 2334 	mov	r0,#(_settings + 0x0009)
   359B E2            [24] 2335 	movx	a,@r0
   359C F5 82         [12] 2336 	mov	dpl,a
   359E 22            [24] 2337 	ret
                           2338 ;------------------------------------------------------------
                           2339 ;Allocation info for local variables in function 'radio_configure'
                           2340 ;------------------------------------------------------------
                           2341 ;	radio/radio.c:713: radio_configure(__pdata uint8_t air_rate)
                           2342 ;	-----------------------------------------
                           2343 ;	 function radio_configure
                           2344 ;	-----------------------------------------
   359F                    2345 _radio_configure:
   359F AF 82         [24] 2346 	mov	r7,dpl
                           2347 ;	radio/radio.c:718: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0x00);
   35A1 C0 07         [24] 2348 	push	ar7
   35A3 E4            [12] 2349 	clr	a
   35A4 C0 E0         [24] 2350 	push	acc
   35A6 75 82 05      [24] 2351 	mov	dpl,#0x05
   35A9 12 39 0F      [24] 2352 	lcall	_register_write
   35AC 15 81         [12] 2353 	dec	sp
                           2354 ;	radio/radio.c:719: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, 0x00);
   35AE E4            [12] 2355 	clr	a
   35AF C0 E0         [24] 2356 	push	acc
   35B1 75 82 06      [24] 2357 	mov	dpl,#0x06
   35B4 12 39 0F      [24] 2358 	lcall	_register_write
   35B7 15 81         [12] 2359 	dec	sp
                           2360 ;	radio/radio.c:721: clear_status_registers();
   35B9 12 39 A7      [24] 2361 	lcall	_clear_status_registers
                           2362 ;	radio/radio.c:731: register_write(EZRADIOPRO_GPIO0_CONFIGURATION, 0x15);	// RX state (output)
   35BC 74 15         [12] 2363 	mov	a,#0x15
   35BE C0 E0         [24] 2364 	push	acc
   35C0 75 82 0B      [24] 2365 	mov	dpl,#0x0B
   35C3 12 39 0F      [24] 2366 	lcall	_register_write
   35C6 15 81         [12] 2367 	dec	sp
                           2368 ;	radio/radio.c:732: register_write(EZRADIOPRO_GPIO1_CONFIGURATION, 0x12);	// TX state (output)
   35C8 74 12         [12] 2369 	mov	a,#0x12
   35CA C0 E0         [24] 2370 	push	acc
   35CC 75 82 0C      [24] 2371 	mov	dpl,#0x0C
   35CF 12 39 0F      [24] 2372 	lcall	_register_write
   35D2 15 81         [12] 2373 	dec	sp
                           2374 ;	radio/radio.c:750: register_write(EZRADIOPRO_CRYSTAL_OSCILLATOR_LOAD_CAPACITANCE, EZRADIOPRO_OSC_CAP_VALUE);
   35D4 74 CC         [12] 2375 	mov	a,#0xCC
   35D6 C0 E0         [24] 2376 	push	acc
   35D8 75 82 09      [24] 2377 	mov	dpl,#0x09
   35DB 12 39 0F      [24] 2378 	lcall	_register_write
   35DE 15 81         [12] 2379 	dec	sp
   35E0 D0 07         [24] 2380 	pop	ar7
                           2381 ;	radio/radio.c:753: if (air_rate > 100) {
   35E2 EF            [12] 2382 	mov	a,r7
   35E3 24 9B         [12] 2383 	add	a,#0xff - 0x64
   35E5 50 10         [24] 2384 	jnc	00102$
                           2385 ;	radio/radio.c:754: register_write(EZRADIOPRO_CHARGEPUMP_CURRENT_TRIMMING_OVERRIDE, 0xC0);
   35E7 C0 07         [24] 2386 	push	ar7
   35E9 74 C0         [12] 2387 	mov	a,#0xC0
   35EB C0 E0         [24] 2388 	push	acc
   35ED 75 82 58      [24] 2389 	mov	dpl,#0x58
   35F0 12 39 0F      [24] 2390 	lcall	_register_write
   35F3 15 81         [12] 2391 	dec	sp
   35F5 D0 07         [24] 2392 	pop	ar7
   35F7                    2393 00102$:
                           2394 ;	radio/radio.c:758: set_frequency_registers(settings.frequency);
   35F7 78 7E         [12] 2395 	mov	r0,#_settings
   35F9 E2            [24] 2396 	movx	a,@r0
   35FA FB            [12] 2397 	mov	r3,a
   35FB 08            [12] 2398 	inc	r0
   35FC E2            [24] 2399 	movx	a,@r0
   35FD FC            [12] 2400 	mov	r4,a
   35FE 08            [12] 2401 	inc	r0
   35FF E2            [24] 2402 	movx	a,@r0
   3600 FD            [12] 2403 	mov	r5,a
   3601 08            [12] 2404 	inc	r0
   3602 E2            [24] 2405 	movx	a,@r0
   3603 8B 82         [24] 2406 	mov	dpl,r3
   3605 8C 83         [24] 2407 	mov	dph,r4
   3607 8D F0         [24] 2408 	mov	b,r5
   3609 C0 07         [24] 2409 	push	ar7
   360B 12 3A 73      [24] 2410 	lcall	_set_frequency_registers
                           2411 ;	radio/radio.c:759: register_write(EZRADIOPRO_FREQUENCY_HOPPING_STEP_SIZE, settings.channel_spacing);
   360E 78 82         [12] 2412 	mov	r0,#(_settings + 0x0004)
   3610 E2            [24] 2413 	movx	a,@r0
   3611 FB            [12] 2414 	mov	r3,a
   3612 08            [12] 2415 	inc	r0
   3613 E2            [24] 2416 	movx	a,@r0
   3614 08            [12] 2417 	inc	r0
   3615 E2            [24] 2418 	movx	a,@r0
   3616 08            [12] 2419 	inc	r0
   3617 E2            [24] 2420 	movx	a,@r0
   3618 C0 03         [24] 2421 	push	ar3
   361A 75 82 7A      [24] 2422 	mov	dpl,#0x7A
   361D 12 39 0F      [24] 2423 	lcall	_register_write
   3620 15 81         [12] 2424 	dec	sp
   3622 D0 07         [24] 2425 	pop	ar7
                           2426 ;	radio/radio.c:761: if (feature_golay) {
   3624 30 04 29      [24] 2427 	jnb	_feature_golay,00104$
                           2428 ;	radio/radio.c:765: register_write(EZRADIOPRO_DATA_ACCESS_CONTROL,
   3627 C0 07         [24] 2429 	push	ar7
   3629 74 88         [12] 2430 	mov	a,#0x88
   362B C0 E0         [24] 2431 	push	acc
   362D 75 82 30      [24] 2432 	mov	dpl,#0x30
   3630 12 39 0F      [24] 2433 	lcall	_register_write
   3633 15 81         [12] 2434 	dec	sp
                           2435 ;	radio/radio.c:769: register_write(EZRADIOPRO_HEADER_CONTROL_2, EZRADIOPRO_HDLEN_0BYTE | EZRADIOPRO_SYNCLEN_2BYTE);
   3635 74 02         [12] 2436 	mov	a,#0x02
   3637 C0 E0         [24] 2437 	push	acc
   3639 75 82 33      [24] 2438 	mov	dpl,#0x33
   363C 12 39 0F      [24] 2439 	lcall	_register_write
   363F 15 81         [12] 2440 	dec	sp
                           2441 ;	radio/radio.c:772: register_write(EZRADIOPRO_HEADER_CONTROL_1, 0x00);
   3641 E4            [12] 2442 	clr	a
   3642 C0 E0         [24] 2443 	push	acc
   3644 75 82 32      [24] 2444 	mov	dpl,#0x32
   3647 12 39 0F      [24] 2445 	lcall	_register_write
   364A 15 81         [12] 2446 	dec	sp
   364C D0 07         [24] 2447 	pop	ar7
   364E 80 40         [24] 2448 	sjmp	00105$
   3650                    2449 00104$:
                           2450 ;	radio/radio.c:774: register_write(EZRADIOPRO_DATA_ACCESS_CONTROL,
   3650 C0 07         [24] 2451 	push	ar7
   3652 74 8D         [12] 2452 	mov	a,#0x8D
   3654 C0 E0         [24] 2453 	push	acc
   3656 75 82 30      [24] 2454 	mov	dpl,#0x30
   3659 12 39 0F      [24] 2455 	lcall	_register_write
   365C 15 81         [12] 2456 	dec	sp
                           2457 ;	radio/radio.c:780: register_write(EZRADIOPRO_HEADER_CONTROL_2, EZRADIOPRO_HDLEN_2BYTE | EZRADIOPRO_SYNCLEN_2BYTE);
   365E 74 22         [12] 2458 	mov	a,#0x22
   3660 C0 E0         [24] 2459 	push	acc
   3662 75 82 33      [24] 2460 	mov	dpl,#0x33
   3665 12 39 0F      [24] 2461 	lcall	_register_write
   3668 15 81         [12] 2462 	dec	sp
                           2463 ;	radio/radio.c:782: register_write(EZRADIOPRO_HEADER_CONTROL_1, 0x0C);
   366A 74 0C         [12] 2464 	mov	a,#0x0C
   366C C0 E0         [24] 2465 	push	acc
   366E 75 82 32      [24] 2466 	mov	dpl,#0x32
   3671 12 39 0F      [24] 2467 	lcall	_register_write
   3674 15 81         [12] 2468 	dec	sp
                           2469 ;	radio/radio.c:783: register_write(EZRADIOPRO_HEADER_ENABLE_3, 0xFF);
   3676 74 FF         [12] 2470 	mov	a,#0xFF
   3678 C0 E0         [24] 2471 	push	acc
   367A 75 82 43      [24] 2472 	mov	dpl,#0x43
   367D 12 39 0F      [24] 2473 	lcall	_register_write
   3680 15 81         [12] 2474 	dec	sp
                           2475 ;	radio/radio.c:784: register_write(EZRADIOPRO_HEADER_ENABLE_2, 0xFF);
   3682 74 FF         [12] 2476 	mov	a,#0xFF
   3684 C0 E0         [24] 2477 	push	acc
   3686 75 82 44      [24] 2478 	mov	dpl,#0x44
   3689 12 39 0F      [24] 2479 	lcall	_register_write
   368C 15 81         [12] 2480 	dec	sp
   368E D0 07         [24] 2481 	pop	ar7
   3690                    2482 00105$:
                           2483 ;	radio/radio.c:789: register_write(EZRADIOPRO_TX_FIFO_CONTROL_1, TX_FIFO_THRESHOLD_HIGH);
   3690 C0 07         [24] 2484 	push	ar7
   3692 74 3C         [12] 2485 	mov	a,#0x3C
   3694 C0 E0         [24] 2486 	push	acc
   3696 75 82 7C      [24] 2487 	mov	dpl,#0x7C
   3699 12 39 0F      [24] 2488 	lcall	_register_write
   369C 15 81         [12] 2489 	dec	sp
                           2490 ;	radio/radio.c:790: register_write(EZRADIOPRO_TX_FIFO_CONTROL_2, TX_FIFO_THRESHOLD_LOW);
   369E 74 20         [12] 2491 	mov	a,#0x20
   36A0 C0 E0         [24] 2492 	push	acc
   36A2 75 82 7D      [24] 2493 	mov	dpl,#0x7D
   36A5 12 39 0F      [24] 2494 	lcall	_register_write
   36A8 15 81         [12] 2495 	dec	sp
                           2496 ;	radio/radio.c:791: register_write(EZRADIOPRO_RX_FIFO_CONTROL, RX_FIFO_THRESHOLD_HIGH);
   36AA 74 32         [12] 2497 	mov	a,#0x32
   36AC C0 E0         [24] 2498 	push	acc
   36AE 75 82 7E      [24] 2499 	mov	dpl,#0x7E
   36B1 12 39 0F      [24] 2500 	lcall	_register_write
   36B4 15 81         [12] 2501 	dec	sp
                           2502 ;	radio/radio.c:793: settings.preamble_length = 16;
   36B6 78 89         [12] 2503 	mov	r0,#(_settings + 0x000b)
   36B8 74 10         [12] 2504 	mov	a,#0x10
   36BA F2            [24] 2505 	movx	@r0,a
                           2506 ;	radio/radio.c:795: register_write(EZRADIOPRO_PREAMBLE_LENGTH, settings.preamble_length); // nibbles 
   36BB 78 89         [12] 2507 	mov	r0,#(_settings + 0x000b)
   36BD E2            [24] 2508 	movx	a,@r0
   36BE FE            [12] 2509 	mov	r6,a
   36BF C0 06         [24] 2510 	push	ar6
   36C1 75 82 34      [24] 2511 	mov	dpl,#0x34
   36C4 12 39 0F      [24] 2512 	lcall	_register_write
   36C7 15 81         [12] 2513 	dec	sp
                           2514 ;	radio/radio.c:796: register_write(EZRADIOPRO_PREAMBLE_DETECTION_CONTROL, 5<<3); // 5 nibbles
   36C9 74 28         [12] 2515 	mov	a,#0x28
   36CB C0 E0         [24] 2516 	push	acc
   36CD 75 82 35      [24] 2517 	mov	dpl,#0x35
   36D0 12 39 0F      [24] 2518 	lcall	_register_write
   36D3 15 81         [12] 2519 	dec	sp
                           2520 ;	radio/radio.c:799: radio_set_transmit_power(0);
   36D5 75 82 00      [24] 2521 	mov	dpl,#0x00
   36D8 12 38 72      [24] 2522 	lcall	_radio_set_transmit_power
   36DB D0 07         [24] 2523 	pop	ar7
                           2524 ;	radio/radio.c:802: for (i = 0; i < NUM_DATA_RATES - 1; i++) {
   36DD 7E 00         [12] 2525 	mov	r6,#0x00
   36DF                    2526 00131$:
                           2527 ;	radio/radio.c:803: if (air_data_rates[i] >= air_rate) break;
   36DF EE            [12] 2528 	mov	a,r6
   36E0 90 C9 EF      [24] 2529 	mov	dptr,#_air_data_rates
   36E3 93            [24] 2530 	movc	a,@a+dptr
   36E4 FD            [12] 2531 	mov	r5,a
   36E5 C3            [12] 2532 	clr	c
   36E6 9F            [12] 2533 	subb	a,r7
   36E7 50 06         [24] 2534 	jnc	00108$
                           2535 ;	radio/radio.c:802: for (i = 0; i < NUM_DATA_RATES - 1; i++) {
   36E9 0E            [12] 2536 	inc	r6
   36EA BE 0C 00      [24] 2537 	cjne	r6,#0x0C,00205$
   36ED                    2538 00205$:
   36ED 40 F0         [24] 2539 	jc	00131$
   36EF                    2540 00108$:
                           2541 ;	radio/radio.c:805: rate_selection = i;
                           2542 ;	radio/radio.c:807: settings.air_data_rate = air_data_rates[rate_selection];
   36EF EE            [12] 2543 	mov	a,r6
   36F0 FF            [12] 2544 	mov	r7,a
   36F1 90 C9 EF      [24] 2545 	mov	dptr,#_air_data_rates
   36F4 93            [24] 2546 	movc	a,@a+dptr
   36F5 FE            [12] 2547 	mov	r6,a
   36F6 78 86         [12] 2548 	mov	r0,#(_settings + 0x0008)
   36F8 F2            [24] 2549 	movx	@r0,a
                           2550 ;	radio/radio.c:809: if (settings.air_data_rate >= 32) {
   36F9 BE 20 00      [24] 2551 	cjne	r6,#0x20,00207$
   36FC                    2552 00207$:
   36FC 40 04         [24] 2553 	jc	00110$
                           2554 ;	radio/radio.c:810: control = 0x0D;
   36FE 7E 0D         [12] 2555 	mov	r6,#0x0D
   3700 80 02         [24] 2556 	sjmp	00111$
   3702                    2557 00110$:
                           2558 ;	radio/radio.c:812: control = 0x2D;
   3702 7E 2D         [12] 2559 	mov	r6,#0x2D
   3704                    2560 00111$:
                           2561 ;	radio/radio.c:814: if (param_get(PARAM_MANCHESTER) && settings.air_data_rate <= 128) {
   3704 75 82 0D      [24] 2562 	mov	dpl,#0x0D
   3707 C0 07         [24] 2563 	push	ar7
   3709 C0 06         [24] 2564 	push	ar6
   370B 12 27 64      [24] 2565 	lcall	_param_get
   370E AA 82         [24] 2566 	mov	r2,dpl
   3710 AB 83         [24] 2567 	mov	r3,dph
   3712 AC F0         [24] 2568 	mov	r4,b
   3714 FD            [12] 2569 	mov	r5,a
   3715 D0 06         [24] 2570 	pop	ar6
   3717 D0 07         [24] 2571 	pop	ar7
   3719 EA            [12] 2572 	mov	a,r2
   371A 4B            [12] 2573 	orl	a,r3
   371B 4C            [12] 2574 	orl	a,r4
   371C 4D            [12] 2575 	orl	a,r5
   371D 60 0B         [24] 2576 	jz	00113$
   371F 78 86         [12] 2577 	mov	r0,#(_settings + 0x0008)
   3721 E2            [24] 2578 	movx	a,@r0
   3722 FD            [12] 2579 	mov  r5,a
   3723 24 7F         [12] 2580 	add	a,#0xff - 0x80
   3725 40 03         [24] 2581 	jc	00113$
                           2582 ;	radio/radio.c:816: control |= EZRADIOPRO_ENMANCH;
   3727 43 06 02      [24] 2583 	orl	ar6,#0x02
   372A                    2584 00113$:
                           2585 ;	radio/radio.c:818: register_write(EZRADIOPRO_MODULATION_MODE_CONTROL_1, control);
   372A C0 07         [24] 2586 	push	ar7
   372C C0 06         [24] 2587 	push	ar6
   372E 75 82 70      [24] 2588 	mov	dpl,#0x70
   3731 12 39 0F      [24] 2589 	lcall	_register_write
   3734 15 81         [12] 2590 	dec	sp
                           2591 ;	radio/radio.c:820: register_write(EZRADIOPRO_MODULATION_MODE_CONTROL_2, 0x23);
   3736 74 23         [12] 2592 	mov	a,#0x23
   3738 C0 E0         [24] 2593 	push	acc
   373A 75 82 71      [24] 2594 	mov	dpl,#0x71
   373D 12 39 0F      [24] 2595 	lcall	_register_write
   3740 15 81         [12] 2596 	dec	sp
                           2597 ;	radio/radio.c:824: register_write(EZRADIOPRO_AFC_LOOP_GEARSHIFT_OVERRIDE, 0x44);
   3742 74 44         [12] 2598 	mov	a,#0x44
   3744 C0 E0         [24] 2599 	push	acc
   3746 75 82 1D      [24] 2600 	mov	dpl,#0x1D
   3749 12 39 0F      [24] 2601 	lcall	_register_write
   374C 15 81         [12] 2602 	dec	sp
   374E D0 07         [24] 2603 	pop	ar7
                           2604 ;	radio/radio.c:828: if (settings.air_data_rate < 200) {
   3750 78 86         [12] 2605 	mov	r0,#(_settings + 0x0008)
   3752 E2            [24] 2606 	movx	a,@r0
   3753 FE            [12] 2607 	mov	r6,a
   3754 BE C8 00      [24] 2608 	cjne	r6,#0xC8,00211$
   3757                    2609 00211$:
   3757 50 12         [24] 2610 	jnc	00116$
                           2611 ;	radio/radio.c:829: register_write(EZRADIOPRO_AFC_TIMING_CONTROL, 0x0A);
   3759 C0 07         [24] 2612 	push	ar7
   375B 74 0A         [12] 2613 	mov	a,#0x0A
   375D C0 E0         [24] 2614 	push	acc
   375F 75 82 1E      [24] 2615 	mov	dpl,#0x1E
   3762 12 39 0F      [24] 2616 	lcall	_register_write
   3765 15 81         [12] 2617 	dec	sp
   3767 D0 07         [24] 2618 	pop	ar7
   3769 80 10         [24] 2619 	sjmp	00117$
   376B                    2620 00116$:
                           2621 ;	radio/radio.c:831: register_write(EZRADIOPRO_AFC_TIMING_CONTROL, 0x02);
   376B C0 07         [24] 2622 	push	ar7
   376D 74 02         [12] 2623 	mov	a,#0x02
   376F C0 E0         [24] 2624 	push	acc
   3771 75 82 1E      [24] 2625 	mov	dpl,#0x1E
   3774 12 39 0F      [24] 2626 	lcall	_register_write
   3777 15 81         [12] 2627 	dec	sp
   3779 D0 07         [24] 2628 	pop	ar7
   377B                    2629 00117$:
                           2630 ;	radio/radio.c:835: if (g_board_frequency == FREQ_433) {
   377B 78 32         [12] 2631 	mov	r0,#_g_board_frequency
   377D E2            [24] 2632 	movx	a,@r0
   377E B4 43 3A      [24] 2633 	cjne	a,#0x43,00129$
                           2634 ;	radio/radio.c:836: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   3781 7E 00         [12] 2635 	mov	r6,#0x00
   3783                    2636 00133$:
                           2637 ;	radio/radio.c:838: reg_table_433[i][rate_selection]);
   3783 EE            [12] 2638 	mov	a,r6
   3784 75 F0 0D      [24] 2639 	mov	b,#0x0D
   3787 A4            [48] 2640 	mul	ab
   3788 24 FC         [12] 2641 	add	a,#_reg_table_433
   378A FC            [12] 2642 	mov	r4,a
   378B 74 C9         [12] 2643 	mov	a,#(_reg_table_433 >> 8)
   378D 35 F0         [12] 2644 	addc	a,b
   378F FD            [12] 2645 	mov	r5,a
   3790 EF            [12] 2646 	mov	a,r7
   3791 2C            [12] 2647 	add	a,r4
   3792 F5 82         [12] 2648 	mov	dpl,a
   3794 E4            [12] 2649 	clr	a
   3795 3D            [12] 2650 	addc	a,r5
   3796 F5 83         [12] 2651 	mov	dph,a
   3798 E4            [12] 2652 	clr	a
   3799 93            [24] 2653 	movc	a,@a+dptr
   379A FD            [12] 2654 	mov	r5,a
                           2655 ;	radio/radio.c:837: register_write(reg_index[i],
   379B EE            [12] 2656 	mov	a,r6
   379C 90 C9 E3      [24] 2657 	mov	dptr,#_reg_index
   379F 93            [24] 2658 	movc	a,@a+dptr
   37A0 FC            [12] 2659 	mov	r4,a
   37A1 C0 07         [24] 2660 	push	ar7
   37A3 C0 06         [24] 2661 	push	ar6
   37A5 C0 05         [24] 2662 	push	ar5
   37A7 8C 82         [24] 2663 	mov	dpl,r4
   37A9 12 39 0F      [24] 2664 	lcall	_register_write
   37AC 15 81         [12] 2665 	dec	sp
   37AE D0 06         [24] 2666 	pop	ar6
   37B0 D0 07         [24] 2667 	pop	ar7
                           2668 ;	radio/radio.c:836: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   37B2 0E            [12] 2669 	inc	r6
   37B3 BE 0C 00      [24] 2670 	cjne	r6,#0x0C,00215$
   37B6                    2671 00215$:
   37B6 40 CB         [24] 2672 	jc	00133$
   37B8 02 38 70      [24] 2673 	ljmp	00130$
   37BB                    2674 00129$:
                           2675 ;	radio/radio.c:840: } else if (g_board_frequency == FREQ_470) {
   37BB 78 32         [12] 2676 	mov	r0,#_g_board_frequency
   37BD E2            [24] 2677 	movx	a,@r0
   37BE B4 47 39      [24] 2678 	cjne	a,#0x47,00126$
                           2679 ;	radio/radio.c:841: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   37C1 7E 00         [12] 2680 	mov	r6,#0x00
   37C3                    2681 00135$:
                           2682 ;	radio/radio.c:843: reg_table_470[i][rate_selection]);
   37C3 EE            [12] 2683 	mov	a,r6
   37C4 75 F0 0D      [24] 2684 	mov	b,#0x0D
   37C7 A4            [48] 2685 	mul	ab
   37C8 24 98         [12] 2686 	add	a,#_reg_table_470
   37CA FC            [12] 2687 	mov	r4,a
   37CB 74 CA         [12] 2688 	mov	a,#(_reg_table_470 >> 8)
   37CD 35 F0         [12] 2689 	addc	a,b
   37CF FD            [12] 2690 	mov	r5,a
   37D0 EF            [12] 2691 	mov	a,r7
   37D1 2C            [12] 2692 	add	a,r4
   37D2 F5 82         [12] 2693 	mov	dpl,a
   37D4 E4            [12] 2694 	clr	a
   37D5 3D            [12] 2695 	addc	a,r5
   37D6 F5 83         [12] 2696 	mov	dph,a
   37D8 E4            [12] 2697 	clr	a
   37D9 93            [24] 2698 	movc	a,@a+dptr
   37DA FD            [12] 2699 	mov	r5,a
                           2700 ;	radio/radio.c:842: register_write(reg_index[i],
   37DB EE            [12] 2701 	mov	a,r6
   37DC 90 C9 E3      [24] 2702 	mov	dptr,#_reg_index
   37DF 93            [24] 2703 	movc	a,@a+dptr
   37E0 FC            [12] 2704 	mov	r4,a
   37E1 C0 07         [24] 2705 	push	ar7
   37E3 C0 06         [24] 2706 	push	ar6
   37E5 C0 05         [24] 2707 	push	ar5
   37E7 8C 82         [24] 2708 	mov	dpl,r4
   37E9 12 39 0F      [24] 2709 	lcall	_register_write
   37EC 15 81         [12] 2710 	dec	sp
   37EE D0 06         [24] 2711 	pop	ar6
   37F0 D0 07         [24] 2712 	pop	ar7
                           2713 ;	radio/radio.c:841: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   37F2 0E            [12] 2714 	inc	r6
   37F3 BE 0C 00      [24] 2715 	cjne	r6,#0x0C,00219$
   37F6                    2716 00219$:
   37F6 40 CB         [24] 2717 	jc	00135$
   37F8 80 76         [24] 2718 	sjmp	00130$
   37FA                    2719 00126$:
                           2720 ;	radio/radio.c:845: } else if (g_board_frequency == FREQ_868) {
   37FA 78 32         [12] 2721 	mov	r0,#_g_board_frequency
   37FC E2            [24] 2722 	movx	a,@r0
   37FD B4 86 39      [24] 2723 	cjne	a,#0x86,00160$
                           2724 ;	radio/radio.c:846: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   3800 7E 00         [12] 2725 	mov	r6,#0x00
   3802                    2726 00137$:
                           2727 ;	radio/radio.c:848: reg_table_868[i][rate_selection]);
   3802 EE            [12] 2728 	mov	a,r6
   3803 75 F0 0D      [24] 2729 	mov	b,#0x0D
   3806 A4            [48] 2730 	mul	ab
   3807 24 34         [12] 2731 	add	a,#_reg_table_868
   3809 FC            [12] 2732 	mov	r4,a
   380A 74 CB         [12] 2733 	mov	a,#(_reg_table_868 >> 8)
   380C 35 F0         [12] 2734 	addc	a,b
   380E FD            [12] 2735 	mov	r5,a
   380F EF            [12] 2736 	mov	a,r7
   3810 2C            [12] 2737 	add	a,r4
   3811 F5 82         [12] 2738 	mov	dpl,a
   3813 E4            [12] 2739 	clr	a
   3814 3D            [12] 2740 	addc	a,r5
   3815 F5 83         [12] 2741 	mov	dph,a
   3817 E4            [12] 2742 	clr	a
   3818 93            [24] 2743 	movc	a,@a+dptr
   3819 FD            [12] 2744 	mov	r5,a
                           2745 ;	radio/radio.c:847: register_write(reg_index[i],
   381A EE            [12] 2746 	mov	a,r6
   381B 90 C9 E3      [24] 2747 	mov	dptr,#_reg_index
   381E 93            [24] 2748 	movc	a,@a+dptr
   381F FC            [12] 2749 	mov	r4,a
   3820 C0 07         [24] 2750 	push	ar7
   3822 C0 06         [24] 2751 	push	ar6
   3824 C0 05         [24] 2752 	push	ar5
   3826 8C 82         [24] 2753 	mov	dpl,r4
   3828 12 39 0F      [24] 2754 	lcall	_register_write
   382B 15 81         [12] 2755 	dec	sp
   382D D0 06         [24] 2756 	pop	ar6
   382F D0 07         [24] 2757 	pop	ar7
                           2758 ;	radio/radio.c:846: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   3831 0E            [12] 2759 	inc	r6
   3832 BE 0C 00      [24] 2760 	cjne	r6,#0x0C,00223$
   3835                    2761 00223$:
   3835 40 CB         [24] 2762 	jc	00137$
                           2763 ;	radio/radio.c:851: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   3837 80 37         [24] 2764 	sjmp	00130$
   3839                    2765 00160$:
   3839 7E 00         [12] 2766 	mov	r6,#0x00
   383B                    2767 00139$:
                           2768 ;	radio/radio.c:853: reg_table_915[i][rate_selection]);
   383B EE            [12] 2769 	mov	a,r6
   383C 75 F0 0D      [24] 2770 	mov	b,#0x0D
   383F A4            [48] 2771 	mul	ab
   3840 24 D0         [12] 2772 	add	a,#_reg_table_915
   3842 FC            [12] 2773 	mov	r4,a
   3843 74 CB         [12] 2774 	mov	a,#(_reg_table_915 >> 8)
   3845 35 F0         [12] 2775 	addc	a,b
   3847 FD            [12] 2776 	mov	r5,a
   3848 EF            [12] 2777 	mov	a,r7
   3849 2C            [12] 2778 	add	a,r4
   384A F5 82         [12] 2779 	mov	dpl,a
   384C E4            [12] 2780 	clr	a
   384D 3D            [12] 2781 	addc	a,r5
   384E F5 83         [12] 2782 	mov	dph,a
   3850 E4            [12] 2783 	clr	a
   3851 93            [24] 2784 	movc	a,@a+dptr
   3852 FD            [12] 2785 	mov	r5,a
                           2786 ;	radio/radio.c:852: register_write(reg_index[i],
   3853 EE            [12] 2787 	mov	a,r6
   3854 90 C9 E3      [24] 2788 	mov	dptr,#_reg_index
   3857 93            [24] 2789 	movc	a,@a+dptr
   3858 FC            [12] 2790 	mov	r4,a
   3859 C0 07         [24] 2791 	push	ar7
   385B C0 06         [24] 2792 	push	ar6
   385D C0 05         [24] 2793 	push	ar5
   385F 8C 82         [24] 2794 	mov	dpl,r4
   3861 12 39 0F      [24] 2795 	lcall	_register_write
   3864 15 81         [12] 2796 	dec	sp
   3866 D0 06         [24] 2797 	pop	ar6
   3868 D0 07         [24] 2798 	pop	ar7
                           2799 ;	radio/radio.c:851: for (i = 0; i < NUM_RADIO_REGISTERS; i++) {
   386A 0E            [12] 2800 	inc	r6
   386B BE 0C 00      [24] 2801 	cjne	r6,#0x0C,00225$
   386E                    2802 00225$:
   386E 40 CB         [24] 2803 	jc	00139$
   3870                    2804 00130$:
                           2805 ;	radio/radio.c:857: return true;
   3870 D3            [12] 2806 	setb	c
   3871 22            [24] 2807 	ret
                           2808 ;------------------------------------------------------------
                           2809 ;Allocation info for local variables in function 'radio_set_transmit_power'
                           2810 ;------------------------------------------------------------
                           2811 ;power                     Allocated with name '_radio_set_transmit_power_power_1_230'
                           2812 ;i                         Allocated with name '_radio_set_transmit_power_i_1_231'
                           2813 ;------------------------------------------------------------
                           2814 ;	radio/radio.c:884: radio_set_transmit_power(uint8_t power)
                           2815 ;	-----------------------------------------
                           2816 ;	 function radio_set_transmit_power
                           2817 ;	-----------------------------------------
   3872                    2818 _radio_set_transmit_power:
   3872 E5 82         [12] 2819 	mov	a,dpl
                           2820 ;	radio/radio.c:903: for (i=0; i<NUM_POWER_LEVELS; i++) {
   3874 90 04 6C      [24] 2821 	mov	dptr,#_radio_set_transmit_power_power_1_230
   3877 F0            [24] 2822 	movx	@dptr,a
   3878 FF            [12] 2823 	mov	r7,a
   3879 7E 00         [12] 2824 	mov	r6,#0x00
   387B                    2825 00106$:
                           2826 ;	radio/radio.c:904: if (power <= power_levels[i]) break;
   387B EE            [12] 2827 	mov	a,r6
   387C 90 CC 6C      [24] 2828 	mov	dptr,#_power_levels
   387F 93            [24] 2829 	movc	a,@a+dptr
   3880 FD            [12] 2830 	mov	r5,a
   3881 C3            [12] 2831 	clr	c
   3882 9F            [12] 2832 	subb	a,r7
   3883 50 06         [24] 2833 	jnc	00113$
                           2834 ;	radio/radio.c:903: for (i=0; i<NUM_POWER_LEVELS; i++) {
   3885 0E            [12] 2835 	inc	r6
   3886 BE 08 00      [24] 2836 	cjne	r6,#0x08,00121$
   3889                    2837 00121$:
   3889 40 F0         [24] 2838 	jc	00106$
   388B                    2839 00113$:
   388B 90 04 6D      [24] 2840 	mov	dptr,#_radio_set_transmit_power_i_1_231
   388E EE            [12] 2841 	mov	a,r6
   388F F0            [24] 2842 	movx	@dptr,a
                           2843 ;	radio/radio.c:906: if (i == NUM_POWER_LEVELS) {
   3890 BE 08 06      [24] 2844 	cjne	r6,#0x08,00105$
                           2845 ;	radio/radio.c:907: i = NUM_POWER_LEVELS-1;
   3893 90 04 6D      [24] 2846 	mov	dptr,#_radio_set_transmit_power_i_1_231
   3896 74 07         [12] 2847 	mov	a,#0x07
   3898 F0            [24] 2848 	movx	@dptr,a
   3899                    2849 00105$:
                           2850 ;	radio/radio.c:909: settings.transmit_power = power_levels[i];
   3899 90 04 6D      [24] 2851 	mov	dptr,#_radio_set_transmit_power_i_1_231
   389C E0            [24] 2852 	movx	a,@dptr
   389D FF            [12] 2853 	mov	r7,a
   389E 90 CC 6C      [24] 2854 	mov	dptr,#_power_levels
   38A1 93            [24] 2855 	movc	a,@a+dptr
   38A2 FE            [12] 2856 	mov	r6,a
   38A3 78 88         [12] 2857 	mov	r0,#(_settings + 0x000a)
   38A5 EE            [12] 2858 	mov	a,r6
   38A6 F2            [24] 2859 	movx	@r0,a
                           2860 ;	radio/radio.c:910: register_write(EZRADIOPRO_TX_POWER, i);
   38A7 C0 07         [24] 2861 	push	ar7
   38A9 75 82 6D      [24] 2862 	mov	dpl,#0x6D
   38AC 12 39 0F      [24] 2863 	lcall	_register_write
   38AF 15 81         [12] 2864 	dec	sp
   38B1 22            [24] 2865 	ret
                           2866 ;------------------------------------------------------------
                           2867 ;Allocation info for local variables in function 'radio_get_transmit_power'
                           2868 ;------------------------------------------------------------
                           2869 ;	radio/radio.c:917: radio_get_transmit_power(void)
                           2870 ;	-----------------------------------------
                           2871 ;	 function radio_get_transmit_power
                           2872 ;	-----------------------------------------
   38B2                    2873 _radio_get_transmit_power:
                           2874 ;	radio/radio.c:919: return settings.transmit_power;
   38B2 78 88         [12] 2875 	mov	r0,#(_settings + 0x000a)
   38B4 E2            [24] 2876 	movx	a,@r0
   38B5 F5 82         [12] 2877 	mov	dpl,a
   38B7 22            [24] 2878 	ret
                           2879 ;------------------------------------------------------------
                           2880 ;Allocation info for local variables in function 'radio_set_network_id'
                           2881 ;------------------------------------------------------------
                           2882 ;id                        Allocated with name '_radio_set_network_id_id_1_236'
                           2883 ;------------------------------------------------------------
                           2884 ;	radio/radio.c:925: radio_set_network_id(uint16_t id)
                           2885 ;	-----------------------------------------
                           2886 ;	 function radio_set_network_id
                           2887 ;	-----------------------------------------
   38B8                    2888 _radio_set_network_id:
   38B8 AF 83         [24] 2889 	mov	r7,dph
   38BA E5 82         [12] 2890 	mov	a,dpl
   38BC 90 04 6E      [24] 2891 	mov	dptr,#_radio_set_network_id_id_1_236
   38BF F0            [24] 2892 	movx	@dptr,a
   38C0 EF            [12] 2893 	mov	a,r7
   38C1 A3            [24] 2894 	inc	dptr
   38C2 F0            [24] 2895 	movx	@dptr,a
                           2896 ;	radio/radio.c:927: netid[0] = id&0xFF;
   38C3 90 04 6E      [24] 2897 	mov	dptr,#_radio_set_network_id_id_1_236
   38C6 E0            [24] 2898 	movx	a,@dptr
   38C7 FE            [12] 2899 	mov	r6,a
   38C8 A3            [24] 2900 	inc	dptr
   38C9 E0            [24] 2901 	movx	a,@dptr
   38CA FF            [12] 2902 	mov	r7,a
   38CB 8E 04         [24] 2903 	mov	ar4,r6
   38CD 78 7C         [12] 2904 	mov	r0,#_netid
   38CF EC            [12] 2905 	mov	a,r4
   38D0 F2            [24] 2906 	movx	@r0,a
                           2907 ;	radio/radio.c:928: netid[1] = id>>8;
   38D1 8F 05         [24] 2908 	mov	ar5,r7
   38D3 78 7D         [12] 2909 	mov	r0,#(_netid + 0x0001)
   38D5 ED            [12] 2910 	mov	a,r5
   38D6 F2            [24] 2911 	movx	@r0,a
                           2912 ;	radio/radio.c:929: if (!feature_golay) {
   38D7 20 04 34      [24] 2913 	jb	_feature_golay,00103$
                           2914 ;	radio/radio.c:932: register_write(EZRADIOPRO_TRANSMIT_HEADER_3, id >> 8);
   38DA C0 07         [24] 2915 	push	ar7
   38DC C0 06         [24] 2916 	push	ar6
   38DE C0 05         [24] 2917 	push	ar5
   38E0 C0 05         [24] 2918 	push	ar5
   38E2 75 82 3A      [24] 2919 	mov	dpl,#0x3A
   38E5 12 39 0F      [24] 2920 	lcall	_register_write
   38E8 15 81         [12] 2921 	dec	sp
   38EA D0 05         [24] 2922 	pop	ar5
   38EC D0 06         [24] 2923 	pop	ar6
   38EE D0 07         [24] 2924 	pop	ar7
                           2925 ;	radio/radio.c:933: register_write(EZRADIOPRO_TRANSMIT_HEADER_2, id & 0xFF);
   38F0 C0 06         [24] 2926 	push	ar6
   38F2 C0 05         [24] 2927 	push	ar5
   38F4 C0 06         [24] 2928 	push	ar6
   38F6 75 82 3B      [24] 2929 	mov	dpl,#0x3B
   38F9 12 39 0F      [24] 2930 	lcall	_register_write
   38FC 15 81         [12] 2931 	dec	sp
                           2932 ;	radio/radio.c:934: register_write(EZRADIOPRO_CHECK_HEADER_3, id >> 8);
   38FE 75 82 3F      [24] 2933 	mov	dpl,#0x3F
   3901 12 39 0F      [24] 2934 	lcall	_register_write
   3904 15 81         [12] 2935 	dec	sp
                           2936 ;	radio/radio.c:935: register_write(EZRADIOPRO_CHECK_HEADER_2, id & 0xFF);
   3906 75 82 40      [24] 2937 	mov	dpl,#0x40
   3909 12 39 0F      [24] 2938 	lcall	_register_write
   390C 15 81         [12] 2939 	dec	sp
   390E                    2940 00103$:
   390E 22            [24] 2941 	ret
                           2942 ;------------------------------------------------------------
                           2943 ;Allocation info for local variables in function 'register_write'
                           2944 ;------------------------------------------------------------
                           2945 ;value                     Allocated to stack - sp -2
                           2946 ;reg                       Allocated to registers r7 
                           2947 ;EX0_saved                 Allocated to registers b0 
                           2948 ;------------------------------------------------------------
                           2949 ;	radio/radio.c:946: register_write(uint8_t reg, uint8_t value) __reentrant
                           2950 ;	-----------------------------------------
                           2951 ;	 function register_write
                           2952 ;	-----------------------------------------
   390F                    2953 _register_write:
   390F AF 82         [24] 2954 	mov	r7,dpl
                           2955 ;	radio/radio.c:948: EX0_SAVE_DISABLE;
   3911 A2 A8         [12] 2956 	mov	c,_EX0
   3913 92 38         [24] 2957 	mov	b0,c
   3915 C2 A8         [12] 2958 	clr	_EX0
                           2959 ;	radio/radio.c:950: NSS1 = 0;                           // drive NSS low
   3917 C2 94         [12] 2960 	clr	_NSS1
                           2961 ;	radio/radio.c:951: SPIF1 = 0;                          // clear SPIF
   3919 C2 B7         [12] 2962 	clr	_SPIF1
                           2963 ;	radio/radio.c:952: SPI1DAT = (reg | 0x80);             // write reg address
   391B 74 80         [12] 2964 	mov	a,#0x80
   391D 4F            [12] 2965 	orl	a,r7
   391E F5 86         [12] 2966 	mov	_SPI1DAT,a
                           2967 ;	radio/radio.c:953: while (!TXBMT1);                    // wait on TXBMT
   3920                    2968 00101$:
   3920 30 B1 FD      [24] 2969 	jnb	_TXBMT1,00101$
                           2970 ;	radio/radio.c:954: SPI1DAT = value;                    // write value
   3923 A8 81         [24] 2971 	mov	r0,sp
   3925 18            [12] 2972 	dec	r0
   3926 18            [12] 2973 	dec	r0
   3927 86 86         [24] 2974 	mov	_SPI1DAT,@r0
                           2975 ;	radio/radio.c:955: while (!TXBMT1);                    // wait on TXBMT
   3929                    2976 00104$:
   3929 30 B1 FD      [24] 2977 	jnb	_TXBMT1,00104$
                           2978 ;	radio/radio.c:956: while ((SPI1CFG & 0x80) == 0x80);   // wait on SPIBSY
   392C                    2979 00107$:
   392C 74 80         [12] 2980 	mov	a,#0x80
   392E 55 84         [12] 2981 	anl	a,_SPI1CFG
   3930 FF            [12] 2982 	mov	r7,a
   3931 BF 80 02      [24] 2983 	cjne	r7,#0x80,00129$
   3934 80 F6         [24] 2984 	sjmp	00107$
   3936                    2985 00129$:
                           2986 ;	radio/radio.c:958: SPIF1 = 0;                          // leave SPIF cleared
   3936 C2 B7         [12] 2987 	clr	_SPIF1
                           2988 ;	radio/radio.c:959: NSS1 = 1;                           // drive NSS high
   3938 D2 94         [12] 2989 	setb	_NSS1
                           2990 ;	radio/radio.c:961: EX0_RESTORE;
   393A A2 38         [12] 2991 	mov	c,b0
   393C 92 A8         [24] 2992 	mov	_EX0,c
   393E 22            [24] 2993 	ret
                           2994 ;------------------------------------------------------------
                           2995 ;Allocation info for local variables in function 'register_read'
                           2996 ;------------------------------------------------------------
                           2997 ;reg                       Allocated to registers r7 
                           2998 ;value                     Allocated to registers r7 
                           2999 ;EX0_saved                 Allocated to registers b0 
                           3000 ;------------------------------------------------------------
                           3001 ;	radio/radio.c:971: register_read(uint8_t reg) __reentrant
                           3002 ;	-----------------------------------------
                           3003 ;	 function register_read
                           3004 ;	-----------------------------------------
   393F                    3005 _register_read:
   393F AF 82         [24] 3006 	mov	r7,dpl
                           3007 ;	radio/radio.c:974: EX0_SAVE_DISABLE;
   3941 A2 A8         [12] 3008 	mov	c,_EX0
   3943 92 38         [24] 3009 	mov	b0,c
   3945 C2 A8         [12] 3010 	clr	_EX0
                           3011 ;	radio/radio.c:976: NSS1 = 0;				// dsrive NSS low
   3947 C2 94         [12] 3012 	clr	_NSS1
                           3013 ;	radio/radio.c:977: SPIF1 = 0;				// clear SPIF
   3949 C2 B7         [12] 3014 	clr	_SPIF1
                           3015 ;	radio/radio.c:978: SPI1DAT = (reg);			// write reg address
   394B 8F 86         [24] 3016 	mov	_SPI1DAT,r7
                           3017 ;	radio/radio.c:979: while (!TXBMT1);			// wait on TXBMT
   394D                    3018 00101$:
   394D 30 B1 FD      [24] 3019 	jnb	_TXBMT1,00101$
                           3020 ;	radio/radio.c:980: SPI1DAT = 0x00;				// write anything
   3950 75 86 00      [24] 3021 	mov	_SPI1DAT,#0x00
                           3022 ;	radio/radio.c:981: while (!TXBMT1);			// wait on TXBMT
   3953                    3023 00104$:
   3953 30 B1 FD      [24] 3024 	jnb	_TXBMT1,00104$
                           3025 ;	radio/radio.c:982: while ((SPI1CFG & 0x80) == 0x80);	// wait on SPIBSY
   3956                    3026 00107$:
   3956 74 80         [12] 3027 	mov	a,#0x80
   3958 55 84         [12] 3028 	anl	a,_SPI1CFG
   395A FF            [12] 3029 	mov	r7,a
   395B BF 80 02      [24] 3030 	cjne	r7,#0x80,00129$
   395E 80 F6         [24] 3031 	sjmp	00107$
   3960                    3032 00129$:
                           3033 ;	radio/radio.c:983: value = SPI1DAT;			// read value
   3960 AF 86         [24] 3034 	mov	r7,_SPI1DAT
                           3035 ;	radio/radio.c:984: SPIF1 = 0;				// leave SPIF cleared
   3962 C2 B7         [12] 3036 	clr	_SPIF1
                           3037 ;	radio/radio.c:985: NSS1 = 1;				// drive NSS high
   3964 D2 94         [12] 3038 	setb	_NSS1
                           3039 ;	radio/radio.c:987: EX0_RESTORE;
   3966 A2 38         [12] 3040 	mov	c,b0
   3968 92 A8         [24] 3041 	mov	_EX0,c
                           3042 ;	radio/radio.c:989: return value;
   396A 8F 82         [24] 3043 	mov	dpl,r7
   396C 22            [24] 3044 	ret
                           3045 ;------------------------------------------------------------
                           3046 ;Allocation info for local variables in function 'read_receive_fifo'
                           3047 ;------------------------------------------------------------
                           3048 ;buf                       Allocated to stack - sp -3
                           3049 ;n                         Allocated to registers r7 
                           3050 ;------------------------------------------------------------
                           3051 ;	radio/radio.c:996: read_receive_fifo(register uint8_t n, __xdata uint8_t * buf) __reentrant
                           3052 ;	-----------------------------------------
                           3053 ;	 function read_receive_fifo
                           3054 ;	-----------------------------------------
   396D                    3055 _read_receive_fifo:
   396D AF 82         [24] 3056 	mov	r7,dpl
                           3057 ;	radio/radio.c:998: NSS1 = 0;				// drive NSS low
   396F C2 94         [12] 3058 	clr	_NSS1
                           3059 ;	radio/radio.c:999: SPIF1 = 0;				// clear SPIF
   3971 C2 B7         [12] 3060 	clr	_SPIF1
                           3061 ;	radio/radio.c:1000: SPI1DAT = EZRADIOPRO_FIFO_ACCESS;
   3973 75 86 7F      [24] 3062 	mov	_SPI1DAT,#0x7F
                           3063 ;	radio/radio.c:1001: while (!SPIF1);				// wait on SPIF
   3976                    3064 00101$:
   3976 30 B7 FD      [24] 3065 	jnb	_SPIF1,00101$
                           3066 ;	radio/radio.c:1002: ACC = SPI1DAT;				// discard first byte
   3979 85 86 E0      [24] 3067 	mov	_ACC,_SPI1DAT
                           3068 ;	radio/radio.c:1004: while (n--) {
   397C E5 81         [12] 3069 	mov	a,sp
   397E 24 FD         [12] 3070 	add	a,#0xfd
   3980 F8            [12] 3071 	mov	r0,a
   3981 86 05         [24] 3072 	mov	ar5,@r0
   3983 08            [12] 3073 	inc	r0
   3984 86 06         [24] 3074 	mov	ar6,@r0
   3986                    3075 00107$:
   3986 8F 04         [24] 3076 	mov	ar4,r7
   3988 1F            [12] 3077 	dec	r7
   3989 EC            [12] 3078 	mov	a,r4
   398A 60 16         [24] 3079 	jz	00109$
                           3080 ;	radio/radio.c:1005: SPIF1 = 0;			// clear SPIF
   398C C2 B7         [12] 3081 	clr	_SPIF1
                           3082 ;	radio/radio.c:1006: SPI1DAT = 0x00;			// write anything
   398E 75 86 00      [24] 3083 	mov	_SPI1DAT,#0x00
                           3084 ;	radio/radio.c:1007: while (!SPIF1);			// wait on SPIF
   3991                    3085 00104$:
   3991 30 B7 FD      [24] 3086 	jnb	_SPIF1,00104$
                           3087 ;	radio/radio.c:1008: *buf++ = SPI1DAT;		// copy to buffer
   3994 8D 82         [24] 3088 	mov	dpl,r5
   3996 8E 83         [24] 3089 	mov	dph,r6
   3998 E5 86         [12] 3090 	mov	a,_SPI1DAT
   399A F0            [24] 3091 	movx	@dptr,a
   399B A3            [24] 3092 	inc	dptr
   399C AD 82         [24] 3093 	mov	r5,dpl
   399E AE 83         [24] 3094 	mov	r6,dph
   39A0 80 E4         [24] 3095 	sjmp	00107$
   39A2                    3096 00109$:
                           3097 ;	radio/radio.c:1011: SPIF1 = 0;				// leave SPIF cleared
   39A2 C2 B7         [12] 3098 	clr	_SPIF1
                           3099 ;	radio/radio.c:1012: NSS1 = 1;				// drive NSS high
   39A4 D2 94         [12] 3100 	setb	_NSS1
   39A6 22            [24] 3101 	ret
                           3102 ;------------------------------------------------------------
                           3103 ;Allocation info for local variables in function 'clear_status_registers'
                           3104 ;------------------------------------------------------------
                           3105 ;	radio/radio.c:1018: clear_status_registers(void)
                           3106 ;	-----------------------------------------
                           3107 ;	 function clear_status_registers
                           3108 ;	-----------------------------------------
   39A7                    3109 _clear_status_registers:
                           3110 ;	radio/radio.c:1020: register_read(EZRADIOPRO_INTERRUPT_STATUS_1);
   39A7 75 82 03      [24] 3111 	mov	dpl,#0x03
   39AA 12 39 3F      [24] 3112 	lcall	_register_read
                           3113 ;	radio/radio.c:1021: register_read(EZRADIOPRO_INTERRUPT_STATUS_2);
   39AD 75 82 04      [24] 3114 	mov	dpl,#0x04
   39B0 02 39 3F      [24] 3115 	ljmp	_register_read
                           3116 ;------------------------------------------------------------
                           3117 ;Allocation info for local variables in function 'scale_uint32'
                           3118 ;------------------------------------------------------------
                           3119 ;	radio/radio.c:1031: scale_uint32(__pdata uint32_t value, __pdata uint32_t scale)
                           3120 ;	-----------------------------------------
                           3121 ;	 function scale_uint32
                           3122 ;	-----------------------------------------
   39B3                    3123 _scale_uint32:
   39B3 AF 82         [24] 3124 	mov	r7,dpl
   39B5 AE 83         [24] 3125 	mov	r6,dph
   39B7 AD F0         [24] 3126 	mov	r5,b
   39B9 FC            [12] 3127 	mov	r4,a
   39BA 78 9E         [12] 3128 	mov	r0,#_scale_uint32_value_1_248
   39BC EF            [12] 3129 	mov	a,r7
   39BD F2            [24] 3130 	movx	@r0,a
   39BE 08            [12] 3131 	inc	r0
   39BF EE            [12] 3132 	mov	a,r6
   39C0 F2            [24] 3133 	movx	@r0,a
   39C1 08            [12] 3134 	inc	r0
   39C2 ED            [12] 3135 	mov	a,r5
   39C3 F2            [24] 3136 	movx	@r0,a
   39C4 08            [12] 3137 	inc	r0
   39C5 EC            [12] 3138 	mov	a,r4
   39C6 F2            [24] 3139 	movx	@r0,a
                           3140 ;	radio/radio.c:1033: return (value + (scale >> 1)) / scale;
   39C7 78 9D         [12] 3141 	mov	r0,#(_scale_uint32_PARM_2 + 3)
   39C9 E2            [24] 3142 	movx	a,@r0
   39CA C3            [12] 3143 	clr	c
   39CB 13            [12] 3144 	rrc	a
   39CC FF            [12] 3145 	mov	r7,a
   39CD 18            [12] 3146 	dec	r0
   39CE E2            [24] 3147 	movx	a,@r0
   39CF 13            [12] 3148 	rrc	a
   39D0 FE            [12] 3149 	mov	r6,a
   39D1 18            [12] 3150 	dec	r0
   39D2 E2            [24] 3151 	movx	a,@r0
   39D3 13            [12] 3152 	rrc	a
   39D4 FB            [12] 3153 	mov	r3,a
   39D5 18            [12] 3154 	dec	r0
   39D6 E2            [24] 3155 	movx	a,@r0
   39D7 13            [12] 3156 	rrc	a
   39D8 FA            [12] 3157 	mov	r2,a
   39D9 78 9E         [12] 3158 	mov	r0,#_scale_uint32_value_1_248
   39DB E2            [24] 3159 	movx	a,@r0
   39DC 2A            [12] 3160 	add	a,r2
   39DD FA            [12] 3161 	mov	r2,a
   39DE 08            [12] 3162 	inc	r0
   39DF E2            [24] 3163 	movx	a,@r0
   39E0 3B            [12] 3164 	addc	a,r3
   39E1 FB            [12] 3165 	mov	r3,a
   39E2 08            [12] 3166 	inc	r0
   39E3 E2            [24] 3167 	movx	a,@r0
   39E4 3E            [12] 3168 	addc	a,r6
   39E5 FE            [12] 3169 	mov	r6,a
   39E6 08            [12] 3170 	inc	r0
   39E7 E2            [24] 3171 	movx	a,@r0
   39E8 3F            [12] 3172 	addc	a,r7
   39E9 FF            [12] 3173 	mov	r7,a
   39EA 78 9A         [12] 3174 	mov	r0,#_scale_uint32_PARM_2
   39EC 90 05 B2      [24] 3175 	mov	dptr,#__divulong_PARM_2
   39EF E2            [24] 3176 	movx	a,@r0
   39F0 F0            [24] 3177 	movx	@dptr,a
   39F1 08            [12] 3178 	inc	r0
   39F2 E2            [24] 3179 	movx	a,@r0
   39F3 A3            [24] 3180 	inc	dptr
   39F4 F0            [24] 3181 	movx	@dptr,a
   39F5 08            [12] 3182 	inc	r0
   39F6 E2            [24] 3183 	movx	a,@r0
   39F7 A3            [24] 3184 	inc	dptr
   39F8 F0            [24] 3185 	movx	@dptr,a
   39F9 08            [12] 3186 	inc	r0
   39FA E2            [24] 3187 	movx	a,@r0
   39FB A3            [24] 3188 	inc	dptr
   39FC F0            [24] 3189 	movx	@dptr,a
   39FD 8A 82         [24] 3190 	mov	dpl,r2
   39FF 8B 83         [24] 3191 	mov	dph,r3
   3A01 8E F0         [24] 3192 	mov	b,r6
   3A03 EF            [12] 3193 	mov	a,r7
   3A04 02 5C 33      [24] 3194 	ljmp	__divulong
                           3195 ;------------------------------------------------------------
                           3196 ;Allocation info for local variables in function 'software_reset'
                           3197 ;------------------------------------------------------------
                           3198 ;status                    Allocated with name '_software_reset_status_1_251'
                           3199 ;------------------------------------------------------------
                           3200 ;	radio/radio.c:1041: software_reset(void)
                           3201 ;	-----------------------------------------
                           3202 ;	 function software_reset
                           3203 ;	-----------------------------------------
   3A07                    3204 _software_reset:
                           3205 ;	radio/radio.c:1046: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0);
   3A07 E4            [12] 3206 	clr	a
   3A08 C0 E0         [24] 3207 	push	acc
   3A0A 75 82 05      [24] 3208 	mov	dpl,#0x05
   3A0D 12 39 0F      [24] 3209 	lcall	_register_write
   3A10 15 81         [12] 3210 	dec	sp
                           3211 ;	radio/radio.c:1047: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, 0);
   3A12 E4            [12] 3212 	clr	a
   3A13 C0 E0         [24] 3213 	push	acc
   3A15 75 82 06      [24] 3214 	mov	dpl,#0x06
   3A18 12 39 0F      [24] 3215 	lcall	_register_write
   3A1B 15 81         [12] 3216 	dec	sp
                           3217 ;	radio/radio.c:1049: clear_status_registers();
   3A1D 12 39 A7      [24] 3218 	lcall	_clear_status_registers
                           3219 ;	radio/radio.c:1052: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_1, (EZRADIOPRO_SWRES | EZRADIOPRO_XTON));
   3A20 74 81         [12] 3220 	mov	a,#0x81
   3A22 C0 E0         [24] 3221 	push	acc
   3A24 75 82 07      [24] 3222 	mov	dpl,#0x07
   3A27 12 39 0F      [24] 3223 	lcall	_register_write
   3A2A 15 81         [12] 3224 	dec	sp
                           3225 ;	radio/radio.c:1055: delay_set(2);
   3A2C 90 00 02      [24] 3226 	mov	dptr,#0x0002
   3A2F 12 56 53      [24] 3227 	lcall	_delay_set
                           3228 ;	radio/radio.c:1056: while (IRQ) {
   3A32                    3229 00103$:
   3A32 30 87 07      [24] 3230 	jnb	_IRQ,00105$
                           3231 ;	radio/radio.c:1057: if (delay_expired()) {
   3A35 12 56 84      [24] 3232 	lcall	_delay_expired
   3A38 50 F8         [24] 3233 	jnc	00103$
                           3234 ;	radio/radio.c:1058: return false;
   3A3A C3            [12] 3235 	clr	c
   3A3B 22            [24] 3236 	ret
   3A3C                    3237 00105$:
                           3238 ;	radio/radio.c:1063: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0);
   3A3C E4            [12] 3239 	clr	a
   3A3D C0 E0         [24] 3240 	push	acc
   3A3F 75 82 05      [24] 3241 	mov	dpl,#0x05
   3A42 12 39 0F      [24] 3242 	lcall	_register_write
   3A45 15 81         [12] 3243 	dec	sp
                           3244 ;	radio/radio.c:1064: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, EZRADIOPRO_ENCHIPRDY);
   3A47 74 02         [12] 3245 	mov	a,#0x02
   3A49 C0 E0         [24] 3246 	push	acc
   3A4B 75 82 06      [24] 3247 	mov	dpl,#0x06
   3A4E 12 39 0F      [24] 3248 	lcall	_register_write
   3A51 15 81         [12] 3249 	dec	sp
                           3250 ;	radio/radio.c:1066: delay_set(20);
   3A53 90 00 14      [24] 3251 	mov	dptr,#0x0014
   3A56 12 56 53      [24] 3252 	lcall	_delay_set
                           3253 ;	radio/radio.c:1067: while (!delay_expired()) {
   3A59                    3254 00108$:
   3A59 12 56 84      [24] 3255 	lcall	_delay_expired
   3A5C 40 13         [24] 3256 	jc	00110$
                           3257 ;	radio/radio.c:1068: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_1);
   3A5E 75 82 03      [24] 3258 	mov	dpl,#0x03
   3A61 12 39 3F      [24] 3259 	lcall	_register_read
                           3260 ;	radio/radio.c:1069: status = register_read(EZRADIOPRO_INTERRUPT_STATUS_2);
   3A64 75 82 04      [24] 3261 	mov	dpl,#0x04
   3A67 12 39 3F      [24] 3262 	lcall	_register_read
   3A6A E5 82         [12] 3263 	mov	a,dpl
                           3264 ;	radio/radio.c:1070: if (status & EZRADIOPRO_ICHIPRDY) {
   3A6C 30 E1 EA      [24] 3265 	jnb	acc.1,00108$
                           3266 ;	radio/radio.c:1071: return true;
   3A6F D3            [12] 3267 	setb	c
   3A70 22            [24] 3268 	ret
   3A71                    3269 00110$:
                           3270 ;	radio/radio.c:1074: return false;
   3A71 C3            [12] 3271 	clr	c
   3A72 22            [24] 3272 	ret
                           3273 ;------------------------------------------------------------
                           3274 ;Allocation info for local variables in function 'set_frequency_registers'
                           3275 ;------------------------------------------------------------
                           3276 ;band                      Allocated with name '_set_frequency_registers_band_1_257'
                           3277 ;------------------------------------------------------------
                           3278 ;	radio/radio.c:1081: set_frequency_registers(__pdata uint32_t frequency)
                           3279 ;	-----------------------------------------
                           3280 ;	 function set_frequency_registers
                           3281 ;	-----------------------------------------
   3A73                    3282 _set_frequency_registers:
   3A73 AF 82         [24] 3283 	mov	r7,dpl
   3A75 AE 83         [24] 3284 	mov	r6,dph
   3A77 AD F0         [24] 3285 	mov	r5,b
   3A79 FC            [12] 3286 	mov	r4,a
   3A7A 78 A2         [12] 3287 	mov	r0,#_set_frequency_registers_frequency_1_256
   3A7C EF            [12] 3288 	mov	a,r7
   3A7D F2            [24] 3289 	movx	@r0,a
   3A7E 08            [12] 3290 	inc	r0
   3A7F EE            [12] 3291 	mov	a,r6
   3A80 F2            [24] 3292 	movx	@r0,a
   3A81 08            [12] 3293 	inc	r0
   3A82 ED            [12] 3294 	mov	a,r5
   3A83 F2            [24] 3295 	movx	@r0,a
   3A84 08            [12] 3296 	inc	r0
   3A85 EC            [12] 3297 	mov	a,r4
   3A86 F2            [24] 3298 	movx	@r0,a
                           3299 ;	radio/radio.c:1086: if (frequency > 480000000UL) {
   3A87 78 A2         [12] 3300 	mov	r0,#_set_frequency_registers_frequency_1_256
   3A89 C3            [12] 3301 	clr	c
   3A8A E2            [24] 3302 	movx	a,@r0
   3A8B F5 F0         [12] 3303 	mov	b,a
   3A8D E4            [12] 3304 	clr	a
   3A8E 95 F0         [12] 3305 	subb	a,b
   3A90 08            [12] 3306 	inc	r0
   3A91 E2            [24] 3307 	movx	a,@r0
   3A92 F5 F0         [12] 3308 	mov	b,a
   3A94 74 38         [12] 3309 	mov	a,#0x38
   3A96 95 F0         [12] 3310 	subb	a,b
   3A98 08            [12] 3311 	inc	r0
   3A99 E2            [24] 3312 	movx	a,@r0
   3A9A F5 F0         [12] 3313 	mov	b,a
   3A9C 74 9C         [12] 3314 	mov	a,#0x9C
   3A9E 95 F0         [12] 3315 	subb	a,b
   3AA0 08            [12] 3316 	inc	r0
   3AA1 E2            [24] 3317 	movx	a,@r0
   3AA2 F5 F0         [12] 3318 	mov	b,a
   3AA4 74 1C         [12] 3319 	mov	a,#0x1C
   3AA6 95 F0         [12] 3320 	subb	a,b
   3AA8 40 03         [24] 3321 	jc	00109$
   3AAA 02 3B 69      [24] 3322 	ljmp	00102$
   3AAD                    3323 00109$:
                           3324 ;	radio/radio.c:1087: frequency -= 480000000UL;
   3AAD 78 A3         [12] 3325 	mov	r0,#(_set_frequency_registers_frequency_1_256 + 1)
   3AAF E2            [24] 3326 	movx	a,@r0
   3AB0 24 C8         [12] 3327 	add	a,#0xC8
   3AB2 F2            [24] 3328 	movx	@r0,a
   3AB3 08            [12] 3329 	inc	r0
   3AB4 E2            [24] 3330 	movx	a,@r0
   3AB5 34 63         [12] 3331 	addc	a,#0x63
   3AB7 F2            [24] 3332 	movx	@r0,a
   3AB8 08            [12] 3333 	inc	r0
   3AB9 E2            [24] 3334 	movx	a,@r0
   3ABA 34 E3         [12] 3335 	addc	a,#0xE3
   3ABC F2            [24] 3336 	movx	@r0,a
                           3337 ;	radio/radio.c:1088: band  = frequency / 20000000UL;
   3ABD 90 05 B2      [24] 3338 	mov	dptr,#__divulong_PARM_2
   3AC0 E4            [12] 3339 	clr	a
   3AC1 F0            [24] 3340 	movx	@dptr,a
   3AC2 74 2D         [12] 3341 	mov	a,#0x2D
   3AC4 A3            [24] 3342 	inc	dptr
   3AC5 F0            [24] 3343 	movx	@dptr,a
   3AC6 74 31         [12] 3344 	mov	a,#0x31
   3AC8 A3            [24] 3345 	inc	dptr
   3AC9 F0            [24] 3346 	movx	@dptr,a
   3ACA 74 01         [12] 3347 	mov	a,#0x01
   3ACC A3            [24] 3348 	inc	dptr
   3ACD F0            [24] 3349 	movx	@dptr,a
   3ACE 78 A2         [12] 3350 	mov	r0,#_set_frequency_registers_frequency_1_256
   3AD0 E2            [24] 3351 	movx	a,@r0
   3AD1 F5 82         [12] 3352 	mov	dpl,a
   3AD3 08            [12] 3353 	inc	r0
   3AD4 E2            [24] 3354 	movx	a,@r0
   3AD5 F5 83         [12] 3355 	mov	dph,a
   3AD7 08            [12] 3356 	inc	r0
   3AD8 E2            [24] 3357 	movx	a,@r0
   3AD9 F5 F0         [12] 3358 	mov	b,a
   3ADB 08            [12] 3359 	inc	r0
   3ADC E2            [24] 3360 	movx	a,@r0
   3ADD 12 5C 33      [24] 3361 	lcall	__divulong
   3AE0 AA 82         [24] 3362 	mov	r2,dpl
   3AE2 90 04 70      [24] 3363 	mov	dptr,#_set_frequency_registers_band_1_257
   3AE5 EA            [12] 3364 	mov	a,r2
   3AE6 F0            [24] 3365 	movx	@dptr,a
                           3366 ;	radio/radio.c:1089: frequency -= (uint32_t)band * 20000000UL;
   3AE7 90 05 D7      [24] 3367 	mov	dptr,#__mullong_PARM_2
   3AEA EA            [12] 3368 	mov	a,r2
   3AEB F0            [24] 3369 	movx	@dptr,a
   3AEC E4            [12] 3370 	clr	a
   3AED A3            [24] 3371 	inc	dptr
   3AEE F0            [24] 3372 	movx	@dptr,a
   3AEF E4            [12] 3373 	clr	a
   3AF0 A3            [24] 3374 	inc	dptr
   3AF1 F0            [24] 3375 	movx	@dptr,a
   3AF2 E4            [12] 3376 	clr	a
   3AF3 A3            [24] 3377 	inc	dptr
   3AF4 F0            [24] 3378 	movx	@dptr,a
   3AF5 90 2D 00      [24] 3379 	mov	dptr,#0x2D00
   3AF8 75 F0 31      [24] 3380 	mov	b,#0x31
   3AFB 74 01         [12] 3381 	mov	a,#0x01
   3AFD 12 5F 91      [24] 3382 	lcall	__mullong
   3B00 AC 82         [24] 3383 	mov	r4,dpl
   3B02 AD 83         [24] 3384 	mov	r5,dph
   3B04 AE F0         [24] 3385 	mov	r6,b
   3B06 FF            [12] 3386 	mov	r7,a
   3B07 78 A2         [12] 3387 	mov	r0,#_set_frequency_registers_frequency_1_256
   3B09 E2            [24] 3388 	movx	a,@r0
   3B0A C3            [12] 3389 	clr	c
   3B0B 9C            [12] 3390 	subb	a,r4
   3B0C F2            [24] 3391 	movx	@r0,a
   3B0D 08            [12] 3392 	inc	r0
   3B0E E2            [24] 3393 	movx	a,@r0
   3B0F 9D            [12] 3394 	subb	a,r5
   3B10 F2            [24] 3395 	movx	@r0,a
   3B11 08            [12] 3396 	inc	r0
   3B12 E2            [24] 3397 	movx	a,@r0
   3B13 9E            [12] 3398 	subb	a,r6
   3B14 F2            [24] 3399 	movx	@r0,a
   3B15 08            [12] 3400 	inc	r0
   3B16 E2            [24] 3401 	movx	a,@r0
   3B17 9F            [12] 3402 	subb	a,r7
   3B18 F2            [24] 3403 	movx	@r0,a
                           3404 ;	radio/radio.c:1090: frequency  = scale_uint32(frequency, 625);
   3B19 78 9A         [12] 3405 	mov	r0,#_scale_uint32_PARM_2
   3B1B 74 71         [12] 3406 	mov	a,#0x71
   3B1D F2            [24] 3407 	movx	@r0,a
   3B1E 08            [12] 3408 	inc	r0
   3B1F 74 02         [12] 3409 	mov	a,#0x02
   3B21 F2            [24] 3410 	movx	@r0,a
   3B22 08            [12] 3411 	inc	r0
   3B23 E4            [12] 3412 	clr	a
   3B24 F2            [24] 3413 	movx	@r0,a
   3B25 08            [12] 3414 	inc	r0
   3B26 F2            [24] 3415 	movx	@r0,a
   3B27 78 A2         [12] 3416 	mov	r0,#_set_frequency_registers_frequency_1_256
   3B29 E2            [24] 3417 	movx	a,@r0
   3B2A F5 82         [12] 3418 	mov	dpl,a
   3B2C 08            [12] 3419 	inc	r0
   3B2D E2            [24] 3420 	movx	a,@r0
   3B2E F5 83         [12] 3421 	mov	dph,a
   3B30 08            [12] 3422 	inc	r0
   3B31 E2            [24] 3423 	movx	a,@r0
   3B32 F5 F0         [12] 3424 	mov	b,a
   3B34 08            [12] 3425 	inc	r0
   3B35 E2            [24] 3426 	movx	a,@r0
   3B36 12 39 B3      [24] 3427 	lcall	_scale_uint32
   3B39 78 A2         [12] 3428 	mov	r0,#_set_frequency_registers_frequency_1_256
   3B3B C0 E0         [24] 3429 	push	acc
   3B3D E5 82         [12] 3430 	mov	a,dpl
   3B3F F2            [24] 3431 	movx	@r0,a
   3B40 08            [12] 3432 	inc	r0
   3B41 E5 83         [12] 3433 	mov	a,dph
   3B43 F2            [24] 3434 	movx	@r0,a
   3B44 08            [12] 3435 	inc	r0
   3B45 E5 F0         [12] 3436 	mov	a,b
   3B47 F2            [24] 3437 	movx	@r0,a
   3B48 D0 E0         [24] 3438 	pop	acc
   3B4A 08            [12] 3439 	inc	r0
   3B4B F2            [24] 3440 	movx	@r0,a
                           3441 ;	radio/radio.c:1091: frequency <<= 1;
   3B4C 78 A2         [12] 3442 	mov	r0,#_set_frequency_registers_frequency_1_256
   3B4E E2            [24] 3443 	movx	a,@r0
   3B4F 25 E0         [12] 3444 	add	a,acc
   3B51 F2            [24] 3445 	movx	@r0,a
   3B52 08            [12] 3446 	inc	r0
   3B53 E2            [24] 3447 	movx	a,@r0
   3B54 33            [12] 3448 	rlc	a
   3B55 F2            [24] 3449 	movx	@r0,a
   3B56 08            [12] 3450 	inc	r0
   3B57 E2            [24] 3451 	movx	a,@r0
   3B58 33            [12] 3452 	rlc	a
   3B59 F2            [24] 3453 	movx	@r0,a
   3B5A 08            [12] 3454 	inc	r0
   3B5B E2            [24] 3455 	movx	a,@r0
   3B5C 33            [12] 3456 	rlc	a
   3B5D F2            [24] 3457 	movx	@r0,a
                           3458 ;	radio/radio.c:1092: band |= EZRADIOPRO_HBSEL;
   3B5E 90 04 70      [24] 3459 	mov	dptr,#_set_frequency_registers_band_1_257
   3B61 E0            [24] 3460 	movx	a,@dptr
   3B62 FF            [12] 3461 	mov	r7,a
   3B63 44 20         [12] 3462 	orl	a,#0x20
   3B65 F0            [24] 3463 	movx	@dptr,a
   3B66 02 3C 2C      [24] 3464 	ljmp	00103$
   3B69                    3465 00102$:
                           3466 ;	radio/radio.c:1094: frequency -= 240000000UL;
   3B69 78 A3         [12] 3467 	mov	r0,#(_set_frequency_registers_frequency_1_256 + 1)
   3B6B E2            [24] 3468 	movx	a,@r0
   3B6C 24 E4         [12] 3469 	add	a,#0xE4
   3B6E F2            [24] 3470 	movx	@r0,a
   3B6F 08            [12] 3471 	inc	r0
   3B70 E2            [24] 3472 	movx	a,@r0
   3B71 34 B1         [12] 3473 	addc	a,#0xB1
   3B73 F2            [24] 3474 	movx	@r0,a
   3B74 08            [12] 3475 	inc	r0
   3B75 E2            [24] 3476 	movx	a,@r0
   3B76 34 F1         [12] 3477 	addc	a,#0xF1
   3B78 F2            [24] 3478 	movx	@r0,a
                           3479 ;	radio/radio.c:1095: band  = frequency / 10000000UL;
   3B79 90 05 B2      [24] 3480 	mov	dptr,#__divulong_PARM_2
   3B7C 74 80         [12] 3481 	mov	a,#0x80
   3B7E F0            [24] 3482 	movx	@dptr,a
   3B7F 74 96         [12] 3483 	mov	a,#0x96
   3B81 A3            [24] 3484 	inc	dptr
   3B82 F0            [24] 3485 	movx	@dptr,a
   3B83 74 98         [12] 3486 	mov	a,#0x98
   3B85 A3            [24] 3487 	inc	dptr
   3B86 F0            [24] 3488 	movx	@dptr,a
   3B87 E4            [12] 3489 	clr	a
   3B88 A3            [24] 3490 	inc	dptr
   3B89 F0            [24] 3491 	movx	@dptr,a
   3B8A 78 A2         [12] 3492 	mov	r0,#_set_frequency_registers_frequency_1_256
   3B8C E2            [24] 3493 	movx	a,@r0
   3B8D F5 82         [12] 3494 	mov	dpl,a
   3B8F 08            [12] 3495 	inc	r0
   3B90 E2            [24] 3496 	movx	a,@r0
   3B91 F5 83         [12] 3497 	mov	dph,a
   3B93 08            [12] 3498 	inc	r0
   3B94 E2            [24] 3499 	movx	a,@r0
   3B95 F5 F0         [12] 3500 	mov	b,a
   3B97 08            [12] 3501 	inc	r0
   3B98 E2            [24] 3502 	movx	a,@r0
   3B99 12 5C 33      [24] 3503 	lcall	__divulong
   3B9C AC 82         [24] 3504 	mov	r4,dpl
   3B9E 90 04 70      [24] 3505 	mov	dptr,#_set_frequency_registers_band_1_257
   3BA1 EC            [12] 3506 	mov	a,r4
   3BA2 F0            [24] 3507 	movx	@dptr,a
                           3508 ;	radio/radio.c:1096: frequency -= (uint32_t)band * 10000000UL;
   3BA3 90 05 D7      [24] 3509 	mov	dptr,#__mullong_PARM_2
   3BA6 EC            [12] 3510 	mov	a,r4
   3BA7 F0            [24] 3511 	movx	@dptr,a
   3BA8 E4            [12] 3512 	clr	a
   3BA9 A3            [24] 3513 	inc	dptr
   3BAA F0            [24] 3514 	movx	@dptr,a
   3BAB E4            [12] 3515 	clr	a
   3BAC A3            [24] 3516 	inc	dptr
   3BAD F0            [24] 3517 	movx	@dptr,a
   3BAE E4            [12] 3518 	clr	a
   3BAF A3            [24] 3519 	inc	dptr
   3BB0 F0            [24] 3520 	movx	@dptr,a
   3BB1 90 96 80      [24] 3521 	mov	dptr,#0x9680
   3BB4 75 F0 98      [24] 3522 	mov	b,#0x98
   3BB7 E4            [12] 3523 	clr	a
   3BB8 12 5F 91      [24] 3524 	lcall	__mullong
   3BBB AC 82         [24] 3525 	mov	r4,dpl
   3BBD AD 83         [24] 3526 	mov	r5,dph
   3BBF AE F0         [24] 3527 	mov	r6,b
   3BC1 FF            [12] 3528 	mov	r7,a
   3BC2 78 A2         [12] 3529 	mov	r0,#_set_frequency_registers_frequency_1_256
   3BC4 E2            [24] 3530 	movx	a,@r0
   3BC5 C3            [12] 3531 	clr	c
   3BC6 9C            [12] 3532 	subb	a,r4
   3BC7 F2            [24] 3533 	movx	@r0,a
   3BC8 08            [12] 3534 	inc	r0
   3BC9 E2            [24] 3535 	movx	a,@r0
   3BCA 9D            [12] 3536 	subb	a,r5
   3BCB F2            [24] 3537 	movx	@r0,a
   3BCC 08            [12] 3538 	inc	r0
   3BCD E2            [24] 3539 	movx	a,@r0
   3BCE 9E            [12] 3540 	subb	a,r6
   3BCF F2            [24] 3541 	movx	@r0,a
   3BD0 08            [12] 3542 	inc	r0
   3BD1 E2            [24] 3543 	movx	a,@r0
   3BD2 9F            [12] 3544 	subb	a,r7
   3BD3 F2            [24] 3545 	movx	@r0,a
                           3546 ;	radio/radio.c:1097: frequency  = scale_uint32(frequency, 625);
   3BD4 78 9A         [12] 3547 	mov	r0,#_scale_uint32_PARM_2
   3BD6 74 71         [12] 3548 	mov	a,#0x71
   3BD8 F2            [24] 3549 	movx	@r0,a
   3BD9 08            [12] 3550 	inc	r0
   3BDA 74 02         [12] 3551 	mov	a,#0x02
   3BDC F2            [24] 3552 	movx	@r0,a
   3BDD 08            [12] 3553 	inc	r0
   3BDE E4            [12] 3554 	clr	a
   3BDF F2            [24] 3555 	movx	@r0,a
   3BE0 08            [12] 3556 	inc	r0
   3BE1 F2            [24] 3557 	movx	@r0,a
   3BE2 78 A2         [12] 3558 	mov	r0,#_set_frequency_registers_frequency_1_256
   3BE4 E2            [24] 3559 	movx	a,@r0
   3BE5 F5 82         [12] 3560 	mov	dpl,a
   3BE7 08            [12] 3561 	inc	r0
   3BE8 E2            [24] 3562 	movx	a,@r0
   3BE9 F5 83         [12] 3563 	mov	dph,a
   3BEB 08            [12] 3564 	inc	r0
   3BEC E2            [24] 3565 	movx	a,@r0
   3BED F5 F0         [12] 3566 	mov	b,a
   3BEF 08            [12] 3567 	inc	r0
   3BF0 E2            [24] 3568 	movx	a,@r0
   3BF1 12 39 B3      [24] 3569 	lcall	_scale_uint32
   3BF4 78 A2         [12] 3570 	mov	r0,#_set_frequency_registers_frequency_1_256
   3BF6 C0 E0         [24] 3571 	push	acc
   3BF8 E5 82         [12] 3572 	mov	a,dpl
   3BFA F2            [24] 3573 	movx	@r0,a
   3BFB 08            [12] 3574 	inc	r0
   3BFC E5 83         [12] 3575 	mov	a,dph
   3BFE F2            [24] 3576 	movx	@r0,a
   3BFF 08            [12] 3577 	inc	r0
   3C00 E5 F0         [12] 3578 	mov	a,b
   3C02 F2            [24] 3579 	movx	@r0,a
   3C03 D0 E0         [24] 3580 	pop	acc
   3C05 08            [12] 3581 	inc	r0
   3C06 F2            [24] 3582 	movx	@r0,a
                           3583 ;	radio/radio.c:1098: frequency <<= 2;
   3C07 78 A2         [12] 3584 	mov	r0,#_set_frequency_registers_frequency_1_256
   3C09 E2            [24] 3585 	movx	a,@r0
   3C0A 25 E0         [12] 3586 	add	a,acc
   3C0C F2            [24] 3587 	movx	@r0,a
   3C0D 08            [12] 3588 	inc	r0
   3C0E E2            [24] 3589 	movx	a,@r0
   3C0F 33            [12] 3590 	rlc	a
   3C10 F2            [24] 3591 	movx	@r0,a
   3C11 08            [12] 3592 	inc	r0
   3C12 E2            [24] 3593 	movx	a,@r0
   3C13 33            [12] 3594 	rlc	a
   3C14 F2            [24] 3595 	movx	@r0,a
   3C15 08            [12] 3596 	inc	r0
   3C16 E2            [24] 3597 	movx	a,@r0
   3C17 33            [12] 3598 	rlc	a
   3C18 F2            [24] 3599 	movx	@r0,a
   3C19 18            [12] 3600 	dec	r0
   3C1A 18            [12] 3601 	dec	r0
   3C1B 18            [12] 3602 	dec	r0
   3C1C E2            [24] 3603 	movx	a,@r0
   3C1D 25 E0         [12] 3604 	add	a,acc
   3C1F F2            [24] 3605 	movx	@r0,a
   3C20 08            [12] 3606 	inc	r0
   3C21 E2            [24] 3607 	movx	a,@r0
   3C22 33            [12] 3608 	rlc	a
   3C23 F2            [24] 3609 	movx	@r0,a
   3C24 08            [12] 3610 	inc	r0
   3C25 E2            [24] 3611 	movx	a,@r0
   3C26 33            [12] 3612 	rlc	a
   3C27 F2            [24] 3613 	movx	@r0,a
   3C28 08            [12] 3614 	inc	r0
   3C29 E2            [24] 3615 	movx	a,@r0
   3C2A 33            [12] 3616 	rlc	a
   3C2B F2            [24] 3617 	movx	@r0,a
   3C2C                    3618 00103$:
                           3619 ;	radio/radio.c:1101: band |= EZRADIOPRO_SBSEL;
   3C2C 90 04 70      [24] 3620 	mov	dptr,#_set_frequency_registers_band_1_257
   3C2F E0            [24] 3621 	movx	a,@dptr
   3C30 44 40         [12] 3622 	orl	a,#0x40
   3C32 F0            [24] 3623 	movx	@dptr,a
                           3624 ;	radio/radio.c:1102: carrier = (uint16_t)frequency;
   3C33 78 A2         [12] 3625 	mov	r0,#_set_frequency_registers_frequency_1_256
   3C35 E2            [24] 3626 	movx	a,@r0
   3C36 FC            [12] 3627 	mov	r4,a
   3C37 08            [12] 3628 	inc	r0
   3C38 E2            [24] 3629 	movx	a,@r0
   3C39 FD            [12] 3630 	mov	r5,a
                           3631 ;	radio/radio.c:1104: register_write(EZRADIOPRO_FREQUENCY_BAND_SELECT, band);
   3C3A C0 05         [24] 3632 	push	ar5
   3C3C C0 04         [24] 3633 	push	ar4
   3C3E 90 04 70      [24] 3634 	mov	dptr,#_set_frequency_registers_band_1_257
   3C41 E0            [24] 3635 	movx	a,@dptr
   3C42 C0 E0         [24] 3636 	push	acc
   3C44 75 82 75      [24] 3637 	mov	dpl,#0x75
   3C47 12 39 0F      [24] 3638 	lcall	_register_write
   3C4A 15 81         [12] 3639 	dec	sp
   3C4C D0 04         [24] 3640 	pop	ar4
   3C4E D0 05         [24] 3641 	pop	ar5
                           3642 ;	radio/radio.c:1105: register_write(EZRADIOPRO_NOMINAL_CARRIER_FREQUENCY_1, carrier >> 8);
   3C50 8D 07         [24] 3643 	mov	ar7,r5
   3C52 C0 05         [24] 3644 	push	ar5
   3C54 C0 04         [24] 3645 	push	ar4
   3C56 C0 07         [24] 3646 	push	ar7
   3C58 75 82 76      [24] 3647 	mov	dpl,#0x76
   3C5B 12 39 0F      [24] 3648 	lcall	_register_write
   3C5E 15 81         [12] 3649 	dec	sp
   3C60 D0 04         [24] 3650 	pop	ar4
   3C62 D0 05         [24] 3651 	pop	ar5
                           3652 ;	radio/radio.c:1106: register_write(EZRADIOPRO_NOMINAL_CARRIER_FREQUENCY_0, carrier & 0xFF);
   3C64 C0 04         [24] 3653 	push	ar4
   3C66 75 82 77      [24] 3654 	mov	dpl,#0x77
   3C69 12 39 0F      [24] 3655 	lcall	_register_write
   3C6C 15 81         [12] 3656 	dec	sp
   3C6E 22            [24] 3657 	ret
                           3658 ;------------------------------------------------------------
                           3659 ;Allocation info for local variables in function 'radio_temperature'
                           3660 ;------------------------------------------------------------
                           3661 ;temp_local                Allocated to registers r6 r7 
                           3662 ;------------------------------------------------------------
                           3663 ;	radio/radio.c:1115: radio_temperature(void)
                           3664 ;	-----------------------------------------
                           3665 ;	 function radio_temperature
                           3666 ;	-----------------------------------------
   3C6F                    3667 _radio_temperature:
                           3668 ;	radio/radio.c:1119: AD0BUSY = 1;		// Start ADC conversion
   3C6F D2 EC         [12] 3669 	setb	_AD0BUSY
                           3670 ;	radio/radio.c:1120: while (AD0BUSY) ;  	// Wait for completion of conversion
   3C71                    3671 00101$:
   3C71 20 EC FD      [24] 3672 	jb	_AD0BUSY,00101$
                           3673 ;	radio/radio.c:1122: temp_local = (ADC0H << 8) | ADC0L;
   3C74 AF BE         [24] 3674 	mov	r7,_ADC0H
   3C76 7E 00         [12] 3675 	mov	r6,#0x00
   3C78 AC BD         [24] 3676 	mov	r4,_ADC0L
   3C7A 7D 00         [12] 3677 	mov	r5,#0x00
   3C7C EC            [12] 3678 	mov	a,r4
   3C7D 42 06         [12] 3679 	orl	ar6,a
   3C7F ED            [12] 3680 	mov	a,r5
   3C80 42 07         [12] 3681 	orl	ar7,a
                           3682 ;	radio/radio.c:1123: temp_local *= 1.64060;  // convert reading into mV ( (val/1024) * 1680 )  vref=1680mV
   3C82 8E 82         [24] 3683 	mov	dpl,r6
   3C84 8F 83         [24] 3684 	mov	dph,r7
   3C86 12 62 AC      [24] 3685 	lcall	___sint2fs
   3C89 AA 82         [24] 3686 	mov	r2,dpl
   3C8B AB 83         [24] 3687 	mov	r3,dph
   3C8D AC F0         [24] 3688 	mov	r4,b
   3C8F FD            [12] 3689 	mov	r5,a
   3C90 C0 02         [24] 3690 	push	ar2
   3C92 C0 03         [24] 3691 	push	ar3
   3C94 C0 04         [24] 3692 	push	ar4
   3C96 C0 05         [24] 3693 	push	ar5
   3C98 90 FF 2E      [24] 3694 	mov	dptr,#0xFF2E
   3C9B 75 F0 D1      [24] 3695 	mov	b,#0xD1
   3C9E 74 3F         [12] 3696 	mov	a,#0x3F
   3CA0 12 5A E6      [24] 3697 	lcall	___fsmul
   3CA3 AA 82         [24] 3698 	mov	r2,dpl
   3CA5 AB 83         [24] 3699 	mov	r3,dph
   3CA7 AC F0         [24] 3700 	mov	r4,b
   3CA9 FD            [12] 3701 	mov	r5,a
   3CAA E5 81         [12] 3702 	mov	a,sp
   3CAC 24 FC         [12] 3703 	add	a,#0xfc
   3CAE F5 81         [12] 3704 	mov	sp,a
   3CB0 8A 82         [24] 3705 	mov	dpl,r2
   3CB2 8B 83         [24] 3706 	mov	dph,r3
   3CB4 8C F0         [24] 3707 	mov	b,r4
   3CB6 ED            [12] 3708 	mov	a,r5
   3CB7 12 62 B9      [24] 3709 	lcall	___fs2sint
   3CBA AE 82         [24] 3710 	mov	r6,dpl
   3CBC AF 83         [24] 3711 	mov	r7,dph
                           3712 ;	radio/radio.c:1124: temp_local = 25.0 + (temp_local - 1025) / 3.4; // convert mV reading into degC.
   3CBE EE            [12] 3713 	mov	a,r6
   3CBF 24 FF         [12] 3714 	add	a,#0xFF
   3CC1 FC            [12] 3715 	mov	r4,a
   3CC2 EF            [12] 3716 	mov	a,r7
   3CC3 34 FB         [12] 3717 	addc	a,#0xFB
   3CC5 FD            [12] 3718 	mov	r5,a
   3CC6 8C 82         [24] 3719 	mov	dpl,r4
   3CC8 8D 83         [24] 3720 	mov	dph,r5
   3CCA 12 62 AC      [24] 3721 	lcall	___sint2fs
   3CCD AA 82         [24] 3722 	mov	r2,dpl
   3CCF AB 83         [24] 3723 	mov	r3,dph
   3CD1 AC F0         [24] 3724 	mov	r4,b
   3CD3 FD            [12] 3725 	mov	r5,a
   3CD4 74 9A         [12] 3726 	mov	a,#0x9A
   3CD6 C0 E0         [24] 3727 	push	acc
   3CD8 74 99         [12] 3728 	mov	a,#0x99
   3CDA C0 E0         [24] 3729 	push	acc
   3CDC 74 59         [12] 3730 	mov	a,#0x59
   3CDE C0 E0         [24] 3731 	push	acc
   3CE0 74 40         [12] 3732 	mov	a,#0x40
   3CE2 C0 E0         [24] 3733 	push	acc
   3CE4 8A 82         [24] 3734 	mov	dpl,r2
   3CE6 8B 83         [24] 3735 	mov	dph,r3
   3CE8 8C F0         [24] 3736 	mov	b,r4
   3CEA ED            [12] 3737 	mov	a,r5
   3CEB 12 64 11      [24] 3738 	lcall	___fsdiv
   3CEE AA 82         [24] 3739 	mov	r2,dpl
   3CF0 AB 83         [24] 3740 	mov	r3,dph
   3CF2 AC F0         [24] 3741 	mov	r4,b
   3CF4 FD            [12] 3742 	mov	r5,a
   3CF5 E5 81         [12] 3743 	mov	a,sp
   3CF7 24 FC         [12] 3744 	add	a,#0xfc
   3CF9 F5 81         [12] 3745 	mov	sp,a
   3CFB E4            [12] 3746 	clr	a
   3CFC C0 E0         [24] 3747 	push	acc
   3CFE C0 E0         [24] 3748 	push	acc
   3D00 74 C8         [12] 3749 	mov	a,#0xC8
   3D02 C0 E0         [24] 3750 	push	acc
   3D04 74 41         [12] 3751 	mov	a,#0x41
   3D06 C0 E0         [24] 3752 	push	acc
   3D08 8A 82         [24] 3753 	mov	dpl,r2
   3D0A 8B 83         [24] 3754 	mov	dph,r3
   3D0C 8C F0         [24] 3755 	mov	b,r4
   3D0E ED            [12] 3756 	mov	a,r5
   3D0F 12 61 F1      [24] 3757 	lcall	___fsadd
   3D12 AA 82         [24] 3758 	mov	r2,dpl
   3D14 AB 83         [24] 3759 	mov	r3,dph
   3D16 AC F0         [24] 3760 	mov	r4,b
   3D18 FD            [12] 3761 	mov	r5,a
   3D19 E5 81         [12] 3762 	mov	a,sp
   3D1B 24 FC         [12] 3763 	add	a,#0xfc
   3D1D F5 81         [12] 3764 	mov	sp,a
   3D1F 8A 82         [24] 3765 	mov	dpl,r2
   3D21 8B 83         [24] 3766 	mov	dph,r3
   3D23 8C F0         [24] 3767 	mov	b,r4
   3D25 ED            [12] 3768 	mov	a,r5
                           3769 ;	radio/radio.c:1126: return temp_local;
   3D26 02 62 B9      [24] 3770 	ljmp	___fs2sint
                           3771 ;------------------------------------------------------------
                           3772 ;Allocation info for local variables in function 'radio_set_diversity'
                           3773 ;------------------------------------------------------------
                           3774 ;	radio/radio.c:1132: radio_set_diversity(bool enable)
                           3775 ;	-----------------------------------------
                           3776 ;	 function radio_set_diversity
                           3777 ;	-----------------------------------------
   3D29                    3778 _radio_set_diversity:
                           3779 ;	radio/radio.c:1134: if (enable)
   3D29 30 1E 25      [24] 3780 	jnb	_radio_set_diversity_PARM_1,00102$
                           3781 ;	radio/radio.c:1136: register_write(EZRADIOPRO_GPIO2_CONFIGURATION, 0x18);
   3D2C 74 18         [12] 3782 	mov	a,#0x18
   3D2E C0 E0         [24] 3783 	push	acc
   3D30 75 82 0D      [24] 3784 	mov	dpl,#0x0D
   3D33 12 39 0F      [24] 3785 	lcall	_register_write
   3D36 15 81         [12] 3786 	dec	sp
                           3787 ;	radio/radio.c:1138: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, (register_read(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2) & ~EZRADIOPRO_ANTDIV_MASK) | 0x80);
   3D38 75 82 08      [24] 3788 	mov	dpl,#0x08
   3D3B 12 39 3F      [24] 3789 	lcall	_register_read
   3D3E AF 82         [24] 3790 	mov	r7,dpl
   3D40 74 1F         [12] 3791 	mov	a,#0x1F
   3D42 5F            [12] 3792 	anl	a,r7
   3D43 44 80         [12] 3793 	orl	a,#0x80
   3D45 FF            [12] 3794 	mov	r7,a
   3D46 C0 07         [24] 3795 	push	ar7
   3D48 75 82 08      [24] 3796 	mov	dpl,#0x08
   3D4B 12 39 0F      [24] 3797 	lcall	_register_write
   3D4E 15 81         [12] 3798 	dec	sp
   3D50 22            [24] 3799 	ret
   3D51                    3800 00102$:
                           3801 ;	radio/radio.c:1143: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2, (register_read(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_2) & ~EZRADIOPRO_ANTDIV_MASK));
   3D51 75 82 08      [24] 3802 	mov	dpl,#0x08
   3D54 12 39 3F      [24] 3803 	lcall	_register_read
   3D57 AF 82         [24] 3804 	mov	r7,dpl
   3D59 53 07 1F      [24] 3805 	anl	ar7,#0x1F
   3D5C C0 07         [24] 3806 	push	ar7
   3D5E 75 82 08      [24] 3807 	mov	dpl,#0x08
   3D61 12 39 0F      [24] 3808 	lcall	_register_write
   3D64 15 81         [12] 3809 	dec	sp
                           3810 ;	radio/radio.c:1145: register_write(EZRADIOPRO_GPIO2_CONFIGURATION, 0x0A);	// GPIO2 (ANT1) output set high fixed
   3D66 74 0A         [12] 3811 	mov	a,#0x0A
   3D68 C0 E0         [24] 3812 	push	acc
   3D6A 75 82 0D      [24] 3813 	mov	dpl,#0x0D
   3D6D 12 39 0F      [24] 3814 	lcall	_register_write
   3D70 15 81         [12] 3815 	dec	sp
                           3816 ;	radio/radio.c:1146: register_write(EZRADIOPRO_IO_PORT_CONFIGURATION, 0x04);	// GPIO2 output set high (fixed on ant 1)
   3D72 74 04         [12] 3817 	mov	a,#0x04
   3D74 C0 E0         [24] 3818 	push	acc
   3D76 75 82 0E      [24] 3819 	mov	dpl,#0x0E
   3D79 12 39 0F      [24] 3820 	lcall	_register_write
   3D7C 15 81         [12] 3821 	dec	sp
   3D7E 22            [24] 3822 	ret
                           3823 ;------------------------------------------------------------
                           3824 ;Allocation info for local variables in function 'Receiver_ISR'
                           3825 ;------------------------------------------------------------
                           3826 ;status                    Allocated to registers r6 
                           3827 ;status2                   Allocated to registers r7 
                           3828 ;len                       Allocated to registers r7 
                           3829 ;------------------------------------------------------------
                           3830 ;	radio/radio.c:1158: INTERRUPT(Receiver_ISR, INTERRUPT_INT0)
                           3831 ;	-----------------------------------------
                           3832 ;	 function Receiver_ISR
                           3833 ;	-----------------------------------------
   3D7F                    3834 _Receiver_ISR:
   3D7F C0 27         [24] 3835 	push	bits
   3D81 C0 E0         [24] 3836 	push	acc
   3D83 C0 F0         [24] 3837 	push	b
   3D85 C0 82         [24] 3838 	push	dpl
   3D87 C0 83         [24] 3839 	push	dph
   3D89 C0 07         [24] 3840 	push	(0+7)
   3D8B C0 06         [24] 3841 	push	(0+6)
   3D8D C0 05         [24] 3842 	push	(0+5)
   3D8F C0 04         [24] 3843 	push	(0+4)
   3D91 C0 03         [24] 3844 	push	(0+3)
   3D93 C0 02         [24] 3845 	push	(0+2)
   3D95 C0 01         [24] 3846 	push	(0+1)
   3D97 C0 00         [24] 3847 	push	(0+0)
   3D99 C0 D0         [24] 3848 	push	psw
   3D9B 75 D0 00      [24] 3849 	mov	psw,#0x00
                           3850 ;	radio/radio.c:1162: status2 = register_read(EZRADIOPRO_INTERRUPT_STATUS_2);
   3D9E 75 82 04      [24] 3851 	mov	dpl,#0x04
   3DA1 12 39 3F      [24] 3852 	lcall	_register_read
   3DA4 AF 82         [24] 3853 	mov	r7,dpl
                           3854 ;	radio/radio.c:1163: status  = register_read(EZRADIOPRO_INTERRUPT_STATUS_1);
   3DA6 75 82 03      [24] 3855 	mov	dpl,#0x03
   3DA9 C0 07         [24] 3856 	push	ar7
   3DAB 12 39 3F      [24] 3857 	lcall	_register_read
   3DAE AE 82         [24] 3858 	mov	r6,dpl
   3DB0 D0 07         [24] 3859 	pop	ar7
                           3860 ;	radio/radio.c:1165: if (status & EZRADIOPRO_IRXFFAFULL) {
   3DB2 EE            [12] 3861 	mov	a,r6
   3DB3 30 E4 49      [24] 3862 	jnb	acc.4,00104$
                           3863 ;	radio/radio.c:1166: if (RX_FIFO_THRESHOLD_HIGH + (uint16_t)partial_packet_length > MAX_PACKET_LENGTH) {
   3DB6 78 7A         [12] 3864 	mov	r0,#_partial_packet_length
   3DB8 E2            [24] 3865 	movx	a,@r0
   3DB9 FC            [12] 3866 	mov	r4,a
   3DBA 7D 00         [12] 3867 	mov	r5,#0x00
   3DBC 74 32         [12] 3868 	mov	a,#0x32
   3DBE 2C            [12] 3869 	add	a,r4
   3DBF FC            [12] 3870 	mov	r4,a
   3DC0 E4            [12] 3871 	clr	a
   3DC1 3D            [12] 3872 	addc	a,r5
   3DC2 FD            [12] 3873 	mov	r5,a
   3DC3 C3            [12] 3874 	clr	c
   3DC4 74 FC         [12] 3875 	mov	a,#0xFC
   3DC6 9C            [12] 3876 	subb	a,r4
   3DC7 E4            [12] 3877 	clr	a
   3DC8 9D            [12] 3878 	subb	a,r5
   3DC9 50 03         [24] 3879 	jnc	00150$
   3DCB 02 3E 8A      [24] 3880 	ljmp	00117$
   3DCE                    3881 00150$:
                           3882 ;	radio/radio.c:1170: read_receive_fifo(RX_FIFO_THRESHOLD_HIGH, &radio_buffer[partial_packet_length]);
   3DCE 78 7A         [12] 3883 	mov	r0,#_partial_packet_length
   3DD0 E2            [24] 3884 	movx	a,@r0
   3DD1 24 64         [12] 3885 	add	a,#_radio_buffer
   3DD3 FC            [12] 3886 	mov	r4,a
   3DD4 E4            [12] 3887 	clr	a
   3DD5 34 03         [12] 3888 	addc	a,#(_radio_buffer >> 8)
   3DD7 FD            [12] 3889 	mov	r5,a
   3DD8 C0 07         [24] 3890 	push	ar7
   3DDA C0 06         [24] 3891 	push	ar6
   3DDC C0 04         [24] 3892 	push	ar4
   3DDE C0 05         [24] 3893 	push	ar5
   3DE0 75 82 32      [24] 3894 	mov	dpl,#0x32
   3DE3 12 39 6D      [24] 3895 	lcall	_read_receive_fifo
   3DE6 15 81         [12] 3896 	dec	sp
   3DE8 15 81         [12] 3897 	dec	sp
                           3898 ;	radio/radio.c:1171: partial_packet_length += RX_FIFO_THRESHOLD_HIGH;
   3DEA 78 7A         [12] 3899 	mov	r0,#_partial_packet_length
   3DEC E2            [24] 3900 	movx	a,@r0
   3DED 24 32         [12] 3901 	add	a,#0x32
   3DEF F2            [24] 3902 	movx	@r0,a
                           3903 ;	radio/radio.c:1172: last_rssi = register_read(EZRADIOPRO_RECEIVED_SIGNAL_STRENGTH_INDICATOR);
   3DF0 75 82 26      [24] 3904 	mov	dpl,#0x26
   3DF3 12 39 3F      [24] 3905 	lcall	_register_read
   3DF6 E5 82         [12] 3906 	mov	a,dpl
   3DF8 D0 06         [24] 3907 	pop	ar6
   3DFA D0 07         [24] 3908 	pop	ar7
   3DFC 78 7B         [12] 3909 	mov	r0,#_last_rssi
   3DFE F2            [24] 3910 	movx	@r0,a
   3DFF                    3911 00104$:
                           3912 ;	radio/radio.c:1175: if (status2 & EZRADIOPRO_IPREAVAL) {
   3DFF EF            [12] 3913 	mov	a,r7
   3E00 30 E6 11      [24] 3914 	jnb	acc.6,00106$
                           3915 ;	radio/radio.c:1177: preamble_detected = true;
   3E03 D2 17         [12] 3916 	setb	_preamble_detected
                           3917 ;	radio/radio.c:1180: last_rssi = register_read(EZRADIOPRO_RECEIVED_SIGNAL_STRENGTH_INDICATOR);
   3E05 75 82 26      [24] 3918 	mov	dpl,#0x26
   3E08 C0 06         [24] 3919 	push	ar6
   3E0A 12 39 3F      [24] 3920 	lcall	_register_read
   3E0D E5 82         [12] 3921 	mov	a,dpl
   3E0F D0 06         [24] 3922 	pop	ar6
   3E11 78 7B         [12] 3923 	mov	r0,#_last_rssi
   3E13 F2            [24] 3924 	movx	@r0,a
   3E14                    3925 00106$:
                           3926 ;	radio/radio.c:1183: if (feature_golay == false && (status & EZRADIOPRO_ICRCERROR)) {
   3E14 20 04 04      [24] 3927 	jb	_feature_golay,00108$
   3E17 EE            [12] 3928 	mov	a,r6
   3E18 20 E0 6F      [24] 3929 	jb	acc.0,00117$
                           3930 ;	radio/radio.c:1184: goto rxfail;
   3E1B                    3931 00108$:
                           3932 ;	radio/radio.c:1187: if (status & EZRADIOPRO_IPKVALID) {
   3E1B EE            [12] 3933 	mov	a,r6
   3E1C 30 E1 69      [24] 3934 	jnb	acc.1,00116$
                           3935 ;	radio/radio.c:1188: __data uint8_t len = register_read(EZRADIOPRO_RECEIVED_PACKET_LENGTH);
   3E1F 75 82 4B      [24] 3936 	mov	dpl,#0x4B
   3E22 12 39 3F      [24] 3937 	lcall	_register_read
                           3938 ;	radio/radio.c:1189: if (len > MAX_PACKET_LENGTH || partial_packet_length > len) {
   3E25 E5 82         [12] 3939 	mov	a,dpl
   3E27 FF            [12] 3940 	mov	r7,a
   3E28 24 03         [12] 3941 	add	a,#0xff - 0xFC
   3E2A 40 5E         [24] 3942 	jc	00117$
   3E2C 78 7A         [12] 3943 	mov	r0,#_partial_packet_length
   3E2E C3            [12] 3944 	clr	c
   3E2F E2            [24] 3945 	movx	a,@r0
   3E30 F5 F0         [12] 3946 	mov	b,a
   3E32 EF            [12] 3947 	mov	a,r7
   3E33 95 F0         [12] 3948 	subb	a,b
   3E35 40 53         [24] 3949 	jc	00117$
                           3950 ;	radio/radio.c:1193: if (partial_packet_length < len) {
   3E37 78 7A         [12] 3951 	mov	r0,#_partial_packet_length
   3E39 C3            [12] 3952 	clr	c
   3E3A E2            [24] 3953 	movx	a,@r0
   3E3B 9F            [12] 3954 	subb	a,r7
   3E3C 50 22         [24] 3955 	jnc	00114$
                           3956 ;	radio/radio.c:1194: read_receive_fifo(len-partial_packet_length, &radio_buffer[partial_packet_length]);
   3E3E 78 7A         [12] 3957 	mov	r0,#_partial_packet_length
   3E40 E2            [24] 3958 	movx	a,@r0
   3E41 24 64         [12] 3959 	add	a,#_radio_buffer
   3E43 FD            [12] 3960 	mov	r5,a
   3E44 E4            [12] 3961 	clr	a
   3E45 34 03         [12] 3962 	addc	a,#(_radio_buffer >> 8)
   3E47 FE            [12] 3963 	mov	r6,a
   3E48 78 7A         [12] 3964 	mov	r0,#_partial_packet_length
   3E4A D3            [12] 3965 	setb	c
   3E4B E2            [24] 3966 	movx	a,@r0
   3E4C 9F            [12] 3967 	subb	a,r7
   3E4D F4            [12] 3968 	cpl	a
   3E4E FC            [12] 3969 	mov	r4,a
   3E4F C0 07         [24] 3970 	push	ar7
   3E51 C0 05         [24] 3971 	push	ar5
   3E53 C0 06         [24] 3972 	push	ar6
   3E55 8C 82         [24] 3973 	mov	dpl,r4
   3E57 12 39 6D      [24] 3974 	lcall	_read_receive_fifo
   3E5A 15 81         [12] 3975 	dec	sp
   3E5C 15 81         [12] 3976 	dec	sp
   3E5E D0 07         [24] 3977 	pop	ar7
   3E60                    3978 00114$:
                           3979 ;	radio/radio.c:1196: receive_packet_length = len;
   3E60 78 79         [12] 3980 	mov	r0,#_receive_packet_length
   3E62 EF            [12] 3981 	mov	a,r7
   3E63 F2            [24] 3982 	movx	@r0,a
                           3983 ;	radio/radio.c:1199: packet_received = true;
   3E64 D2 16         [12] 3984 	setb	_packet_received
                           3985 ;	radio/radio.c:1202: register_write(EZRADIOPRO_INTERRUPT_ENABLE_1, 0);
   3E66 E4            [12] 3986 	clr	a
   3E67 C0 E0         [24] 3987 	push	acc
   3E69 75 82 05      [24] 3988 	mov	dpl,#0x05
   3E6C 12 39 0F      [24] 3989 	lcall	_register_write
   3E6F 15 81         [12] 3990 	dec	sp
                           3991 ;	radio/radio.c:1203: register_write(EZRADIOPRO_INTERRUPT_ENABLE_2, 0);
   3E71 E4            [12] 3992 	clr	a
   3E72 C0 E0         [24] 3993 	push	acc
   3E74 75 82 06      [24] 3994 	mov	dpl,#0x06
   3E77 12 39 0F      [24] 3995 	lcall	_register_write
   3E7A 15 81         [12] 3996 	dec	sp
                           3997 ;	radio/radio.c:1206: register_write(EZRADIOPRO_OPERATING_AND_FUNCTION_CONTROL_1, EZRADIOPRO_PLLON);
   3E7C 74 02         [12] 3998 	mov	a,#0x02
   3E7E C0 E0         [24] 3999 	push	acc
   3E80 75 82 07      [24] 4000 	mov	dpl,#0x07
   3E83 12 39 0F      [24] 4001 	lcall	_register_write
   3E86 15 81         [12] 4002 	dec	sp
   3E88                    4003 00116$:
                           4004 ;	radio/radio.c:1208: return;
                           4005 ;	radio/radio.c:1210: rxfail:
   3E88 80 1E         [24] 4006 	sjmp	00120$
   3E8A                    4007 00117$:
                           4008 ;	radio/radio.c:1211: if (errors.rx_errors != 0xFFFF) {
   3E8A 78 34         [12] 4009 	mov	r0,#_errors
   3E8C E2            [24] 4010 	movx	a,@r0
   3E8D FE            [12] 4011 	mov	r6,a
   3E8E 08            [12] 4012 	inc	r0
   3E8F E2            [24] 4013 	movx	a,@r0
   3E90 FF            [12] 4014 	mov	r7,a
   3E91 BE FF 05      [24] 4015 	cjne	r6,#0xFF,00158$
   3E94 BF FF 02      [24] 4016 	cjne	r7,#0xFF,00158$
   3E97 80 0C         [24] 4017 	sjmp	00119$
   3E99                    4018 00158$:
                           4019 ;	radio/radio.c:1212: errors.rx_errors++;
   3E99 0E            [12] 4020 	inc	r6
   3E9A BE 00 01      [24] 4021 	cjne	r6,#0x00,00159$
   3E9D 0F            [12] 4022 	inc	r7
   3E9E                    4023 00159$:
   3E9E 78 34         [12] 4024 	mov	r0,#_errors
   3EA0 EE            [12] 4025 	mov	a,r6
   3EA1 F2            [24] 4026 	movx	@r0,a
   3EA2 08            [12] 4027 	inc	r0
   3EA3 EF            [12] 4028 	mov	a,r7
   3EA4 F2            [24] 4029 	movx	@r0,a
   3EA5                    4030 00119$:
                           4031 ;	radio/radio.c:1214: radio_receiver_on();
   3EA5 12 34 40      [24] 4032 	lcall	_radio_receiver_on
   3EA8                    4033 00120$:
   3EA8 D0 D0         [24] 4034 	pop	psw
   3EAA D0 00         [24] 4035 	pop	(0+0)
   3EAC D0 01         [24] 4036 	pop	(0+1)
   3EAE D0 02         [24] 4037 	pop	(0+2)
   3EB0 D0 03         [24] 4038 	pop	(0+3)
   3EB2 D0 04         [24] 4039 	pop	(0+4)
   3EB4 D0 05         [24] 4040 	pop	(0+5)
   3EB6 D0 06         [24] 4041 	pop	(0+6)
   3EB8 D0 07         [24] 4042 	pop	(0+7)
   3EBA D0 83         [24] 4043 	pop	dph
   3EBC D0 82         [24] 4044 	pop	dpl
   3EBE D0 F0         [24] 4045 	pop	b
   3EC0 D0 E0         [24] 4046 	pop	acc
   3EC2 D0 27         [24] 4047 	pop	bits
   3EC4 32            [24] 4048 	reti
                           4049 	.area CSEG    (CODE)
                           4050 	.area CONST   (CODE)
   C9BB                    4051 __str_0:
   C9BB 6F 76 65 72 73 69  4052 	.ascii "oversized packet"
        7A 65 64 20 70 61
        63 6B 65 74
   C9CB 00                 4053 	.db 0x00
   C9CC                    4054 __str_1:
   C9CC 6F 76 65 72 73 69  4055 	.ascii "oversized golay packet"
        7A 65 64 20 67 6F
        6C 61 79 20 70 61
        63 6B 65 74
   C9E2 00                 4056 	.db 0x00
   C9E3                    4057 _reg_index:
   C9E3 1C                 4058 	.db #0x1C	; 28
   C9E4 1F                 4059 	.db #0x1F	; 31
   C9E5 20                 4060 	.db #0x20	; 32
   C9E6 21                 4061 	.db #0x21	; 33
   C9E7 22                 4062 	.db #0x22	; 34
   C9E8 23                 4063 	.db #0x23	; 35
   C9E9 24                 4064 	.db #0x24	; 36
   C9EA 25                 4065 	.db #0x25	; 37
   C9EB 2A                 4066 	.db #0x2A	; 42
   C9EC 6E                 4067 	.db #0x6E	; 110	'n'
   C9ED 6F                 4068 	.db #0x6F	; 111	'o'
   C9EE 72                 4069 	.db #0x72	; 114	'r'
   C9EF                    4070 _air_data_rates:
   C9EF 02                 4071 	.db #0x02	; 2
   C9F0 04                 4072 	.db #0x04	; 4
   C9F1 08                 4073 	.db #0x08	; 8
   C9F2 10                 4074 	.db #0x10	; 16
   C9F3 13                 4075 	.db #0x13	; 19
   C9F4 18                 4076 	.db #0x18	; 24
   C9F5 20                 4077 	.db #0x20	; 32
   C9F6 30                 4078 	.db #0x30	; 48	'0'
   C9F7 40                 4079 	.db #0x40	; 64
   C9F8 60                 4080 	.db #0x60	; 96
   C9F9 80                 4081 	.db #0x80	; 128
   C9FA C0                 4082 	.db #0xC0	; 192
   C9FB FA                 4083 	.db #0xFA	; 250
   C9FC                    4084 _reg_table_433:
   C9FC 27                 4085 	.db #0x27	; 39
   C9FD 27                 4086 	.db #0x27	; 39
   C9FE 27                 4087 	.db #0x27	; 39
   C9FF 2E                 4088 	.db #0x2E	; 46
   CA00 16                 4089 	.db #0x16	; 22
   CA01 01                 4090 	.db #0x01	; 1
   CA02 05                 4091 	.db #0x05	; 5
   CA03 0B                 4092 	.db #0x0B	; 11
   CA04 9A                 4093 	.db #0x9A	; 154
   CA05 88                 4094 	.db #0x88	; 136
   CA06 8A                 4095 	.db #0x8A	; 138
   CA07 8C                 4096 	.db #0x8C	; 140
   CA08 8D                 4097 	.db #0x8D	; 141
   CA09 03                 4098 	.db #0x03	; 3
   CA0A 03                 4099 	.db #0x03	; 3
   CA0B 03                 4100 	.db #0x03	; 3
   CA0C 03                 4101 	.db #0x03	; 3
   CA0D 03                 4102 	.db #0x03	; 3
   CA0E 03                 4103 	.db #0x03	; 3
   CA0F 03                 4104 	.db #0x03	; 3
   CA10 03                 4105 	.db #0x03	; 3
   CA11 03                 4106 	.db #0x03	; 3
   CA12 03                 4107 	.db #0x03	; 3
   CA13 03                 4108 	.db #0x03	; 3
   CA14 03                 4109 	.db #0x03	; 3
   CA15 03                 4110 	.db #0x03	; 3
   CA16 F4                 4111 	.db #0xF4	; 244
   CA17 FA                 4112 	.db #0xFA	; 250
   CA18 7D                 4113 	.db #0x7D	; 125
   CA19 3F                 4114 	.db #0x3F	; 63
   CA1A 69                 4115 	.db #0x69	; 105	'i'
   CA1B A7                 4116 	.db #0xA7	; 167
   CA1C 7D                 4117 	.db #0x7D	; 125
   CA1D 53                 4118 	.db #0x53	; 83	'S'
   CA1E 5E                 4119 	.db #0x5E	; 94
   CA1F 7D                 4120 	.db #0x7D	; 125
   CA20 5E                 4121 	.db #0x5E	; 94
   CA21 3F                 4122 	.db #0x3F	; 63
   CA22 30                 4123 	.db #0x30	; 48	'0'
   CA23 20                 4124 	.db #0x20	; 32
   CA24 00                 4125 	.db #0x00	; 0
   CA25 01                 4126 	.db #0x01	; 1
   CA26 02                 4127 	.db #0x02	; 2
   CA27 01                 4128 	.db #0x01	; 1
   CA28 00                 4129 	.db #0x00	; 0
   CA29 01                 4130 	.db #0x01	; 1
   CA2A 01                 4131 	.db #0x01	; 1
   CA2B 01                 4132 	.db #0x01	; 1
   CA2C 01                 4133 	.db #0x01	; 1
   CA2D 01                 4134 	.db #0x01	; 1
   CA2E 02                 4135 	.db #0x02	; 2
   CA2F 02                 4136 	.db #0x02	; 2
   CA30 41                 4137 	.db #0x41	; 65	'A'
   CA31 83                 4138 	.db #0x83	; 131
   CA32 06                 4139 	.db #0x06	; 6
   CA33 0C                 4140 	.db #0x0C	; 12
   CA34 37                 4141 	.db #0x37	; 55	'7'
   CA35 C4                 4142 	.db #0xC4	; 196
   CA36 06                 4143 	.db #0x06	; 6
   CA37 89                 4144 	.db #0x89	; 137
   CA38 5D                 4145 	.db #0x5D	; 93
   CA39 06                 4146 	.db #0x06	; 6
   CA3A 5D                 4147 	.db #0x5D	; 93
   CA3B 0C                 4148 	.db #0x0C	; 12
   CA3C AA                 4149 	.db #0xAA	; 170
   CA3D 89                 4150 	.db #0x89	; 137
   CA3E 12                 4151 	.db #0x12	; 18
   CA3F 25                 4152 	.db #0x25	; 37
   CA40 4A                 4153 	.db #0x4A	; 74	'J'
   CA41 4C                 4154 	.db #0x4C	; 76	'L'
   CA42 9C                 4155 	.db #0x9C	; 156
   CA43 25                 4156 	.db #0x25	; 37
   CA44 37                 4157 	.db #0x37	; 55	'7'
   CA45 86                 4158 	.db #0x86	; 134
   CA46 25                 4159 	.db #0x25	; 37
   CA47 86                 4160 	.db #0x86	; 134
   CA48 4A                 4161 	.db #0x4A	; 74	'J'
   CA49 AB                 4162 	.db #0xAB	; 171
   CA4A 00                 4163 	.db #0x00	; 0
   CA4B 01                 4164 	.db #0x01	; 1
   CA4C 02                 4165 	.db #0x02	; 2
   CA4D 04                 4166 	.db #0x04	; 4
   CA4E 02                 4167 	.db #0x02	; 2
   CA4F 01                 4168 	.db #0x01	; 1
   CA50 02                 4169 	.db #0x02	; 2
   CA51 03                 4170 	.db #0x03	; 3
   CA52 02                 4171 	.db #0x02	; 2
   CA53 02                 4172 	.db #0x02	; 2
   CA54 02                 4173 	.db #0x02	; 2
   CA55 04                 4174 	.db #0x04	; 4
   CA56 07                 4175 	.db #0x07	; 7
   CA57 85                 4176 	.db #0x85	; 133
   CA58 08                 4177 	.db #0x08	; 8
   CA59 0E                 4178 	.db #0x0E	; 14
   CA5A 12                 4179 	.db #0x12	; 18
   CA5B 72                 4180 	.db #0x72	; 114	'r'
   CA5C 8A                 4181 	.db #0x8A	; 138
   CA5D 0E                 4182 	.db #0x0E	; 14
   CA5E 18                 4183 	.db #0x18	; 24
   CA5F BB                 4184 	.db #0xBB	; 187
   CA60 0E                 4185 	.db #0x0E	; 14
   CA61 BB                 4186 	.db #0xBB	; 187
   CA62 EA                 4187 	.db #0xEA	; 234
   CA63 FF                 4188 	.db #0xFF	; 255
   CA64 1D                 4189 	.db #0x1D	; 29
   CA65 1D                 4190 	.db #0x1D	; 29
   CA66 1D                 4191 	.db #0x1D	; 29
   CA67 1E                 4192 	.db #0x1E	; 30
   CA68 1E                 4193 	.db #0x1E	; 30
   CA69 1E                 4194 	.db #0x1E	; 30
   CA6A 20                 4195 	.db #0x20	; 32
   CA6B 30                 4196 	.db #0x30	; 48	'0'
   CA6C 41                 4197 	.db #0x41	; 65	'A'
   CA6D 50                 4198 	.db #0x50	; 80	'P'
   CA6E 50                 4199 	.db #0x50	; 80	'P'
   CA6F 50                 4200 	.db #0x50	; 80	'P'
   CA70 50                 4201 	.db #0x50	; 80	'P'
   CA71 10                 4202 	.db #0x10	; 16
   CA72 20                 4203 	.db #0x20	; 32
   CA73 41                 4204 	.db #0x41	; 65	'A'
   CA74 83                 4205 	.db #0x83	; 131
   CA75 9B                 4206 	.db #0x9B	; 155
   CA76 C4                 4207 	.db #0xC4	; 196
   CA77 08                 4208 	.db #0x08	; 8
   CA78 0C                 4209 	.db #0x0C	; 12
   CA79 10                 4210 	.db #0x10	; 16
   CA7A 18                 4211 	.db #0x18	; 24
   CA7B 20                 4212 	.db #0x20	; 32
   CA7C 31                 4213 	.db #0x31	; 49	'1'
   CA7D 40                 4214 	.db #0x40	; 64
   CA7E 62                 4215 	.db #0x62	; 98	'b'
   CA7F C5                 4216 	.db #0xC5	; 197
   CA80 89                 4217 	.db #0x89	; 137
   CA81 12                 4218 	.db #0x12	; 18
   CA82 A6                 4219 	.db #0xA6	; 166
   CA83 9C                 4220 	.db #0x9C	; 156
   CA84 31                 4221 	.db #0x31	; 49	'1'
   CA85 4A                 4222 	.db #0x4A	; 74	'J'
   CA86 62                 4223 	.db #0x62	; 98	'b'
   CA87 93                 4224 	.db #0x93	; 147
   CA88 C5                 4225 	.db #0xC5	; 197
   CA89 27                 4226 	.db #0x27	; 39
   CA8A 00                 4227 	.db #0x00	; 0
   CA8B 03                 4228 	.db #0x03	; 3
   CA8C 06                 4229 	.db #0x06	; 6
   CA8D 0D                 4230 	.db #0x0D	; 13
   CA8E 1A                 4231 	.db #0x1A	; 26
   CA8F 1E                 4232 	.db #0x1E	; 30
   CA90 26                 4233 	.db #0x26	; 38
   CA91 33                 4234 	.db #0x33	; 51	'3'
   CA92 4D                 4235 	.db #0x4D	; 77	'M'
   CA93 66                 4236 	.db #0x66	; 102	'f'
   CA94 9A                 4237 	.db #0x9A	; 154
   CA95 CD                 4238 	.db #0xCD	; 205
   CA96 FE                 4239 	.db #0xFE	; 254
   CA97 FE                 4240 	.db #0xFE	; 254
   CA98                    4241 _reg_table_470:
   CA98 2B                 4242 	.db #0x2B	; 43
   CA99 2B                 4243 	.db #0x2B	; 43
   CA9A 2B                 4244 	.db #0x2B	; 43
   CA9B 2E                 4245 	.db #0x2E	; 46
   CA9C 16                 4246 	.db #0x16	; 22
   CA9D 01                 4247 	.db #0x01	; 1
   CA9E 05                 4248 	.db #0x05	; 5
   CA9F 0B                 4249 	.db #0x0B	; 11
   CAA0 9A                 4250 	.db #0x9A	; 154
   CAA1 88                 4251 	.db #0x88	; 136
   CAA2 8A                 4252 	.db #0x8A	; 138
   CAA3 8C                 4253 	.db #0x8C	; 140
   CAA4 8D                 4254 	.db #0x8D	; 141
   CAA5 03                 4255 	.db #0x03	; 3
   CAA6 03                 4256 	.db #0x03	; 3
   CAA7 03                 4257 	.db #0x03	; 3
   CAA8 03                 4258 	.db #0x03	; 3
   CAA9 03                 4259 	.db #0x03	; 3
   CAAA 03                 4260 	.db #0x03	; 3
   CAAB 03                 4261 	.db #0x03	; 3
   CAAC 03                 4262 	.db #0x03	; 3
   CAAD 03                 4263 	.db #0x03	; 3
   CAAE 03                 4264 	.db #0x03	; 3
   CAAF 03                 4265 	.db #0x03	; 3
   CAB0 03                 4266 	.db #0x03	; 3
   CAB1 03                 4267 	.db #0x03	; 3
   CAB2 F4                 4268 	.db #0xF4	; 244
   CAB3 FA                 4269 	.db #0xFA	; 250
   CAB4 7D                 4270 	.db #0x7D	; 125
   CAB5 3F                 4271 	.db #0x3F	; 63
   CAB6 69                 4272 	.db #0x69	; 105	'i'
   CAB7 A7                 4273 	.db #0xA7	; 167
   CAB8 7D                 4274 	.db #0x7D	; 125
   CAB9 53                 4275 	.db #0x53	; 83	'S'
   CABA 5E                 4276 	.db #0x5E	; 94
   CABB 7D                 4277 	.db #0x7D	; 125
   CABC 5E                 4278 	.db #0x5E	; 94
   CABD 3F                 4279 	.db #0x3F	; 63
   CABE 30                 4280 	.db #0x30	; 48	'0'
   CABF 20                 4281 	.db #0x20	; 32
   CAC0 00                 4282 	.db #0x00	; 0
   CAC1 01                 4283 	.db #0x01	; 1
   CAC2 02                 4284 	.db #0x02	; 2
   CAC3 01                 4285 	.db #0x01	; 1
   CAC4 00                 4286 	.db #0x00	; 0
   CAC5 01                 4287 	.db #0x01	; 1
   CAC6 01                 4288 	.db #0x01	; 1
   CAC7 01                 4289 	.db #0x01	; 1
   CAC8 01                 4290 	.db #0x01	; 1
   CAC9 01                 4291 	.db #0x01	; 1
   CACA 02                 4292 	.db #0x02	; 2
   CACB 02                 4293 	.db #0x02	; 2
   CACC 41                 4294 	.db #0x41	; 65	'A'
   CACD 83                 4295 	.db #0x83	; 131
   CACE 06                 4296 	.db #0x06	; 6
   CACF 0C                 4297 	.db #0x0C	; 12
   CAD0 37                 4298 	.db #0x37	; 55	'7'
   CAD1 C4                 4299 	.db #0xC4	; 196
   CAD2 06                 4300 	.db #0x06	; 6
   CAD3 89                 4301 	.db #0x89	; 137
   CAD4 5D                 4302 	.db #0x5D	; 93
   CAD5 06                 4303 	.db #0x06	; 6
   CAD6 5D                 4304 	.db #0x5D	; 93
   CAD7 0C                 4305 	.db #0x0C	; 12
   CAD8 AA                 4306 	.db #0xAA	; 170
   CAD9 89                 4307 	.db #0x89	; 137
   CADA 12                 4308 	.db #0x12	; 18
   CADB 25                 4309 	.db #0x25	; 37
   CADC 4A                 4310 	.db #0x4A	; 74	'J'
   CADD 4C                 4311 	.db #0x4C	; 76	'L'
   CADE 9C                 4312 	.db #0x9C	; 156
   CADF 25                 4313 	.db #0x25	; 37
   CAE0 37                 4314 	.db #0x37	; 55	'7'
   CAE1 86                 4315 	.db #0x86	; 134
   CAE2 25                 4316 	.db #0x25	; 37
   CAE3 86                 4317 	.db #0x86	; 134
   CAE4 4A                 4318 	.db #0x4A	; 74	'J'
   CAE5 AB                 4319 	.db #0xAB	; 171
   CAE6 00                 4320 	.db #0x00	; 0
   CAE7 01                 4321 	.db #0x01	; 1
   CAE8 02                 4322 	.db #0x02	; 2
   CAE9 04                 4323 	.db #0x04	; 4
   CAEA 02                 4324 	.db #0x02	; 2
   CAEB 01                 4325 	.db #0x01	; 1
   CAEC 02                 4326 	.db #0x02	; 2
   CAED 03                 4327 	.db #0x03	; 3
   CAEE 02                 4328 	.db #0x02	; 2
   CAEF 02                 4329 	.db #0x02	; 2
   CAF0 02                 4330 	.db #0x02	; 2
   CAF1 04                 4331 	.db #0x04	; 4
   CAF2 07                 4332 	.db #0x07	; 7
   CAF3 85                 4333 	.db #0x85	; 133
   CAF4 08                 4334 	.db #0x08	; 8
   CAF5 0E                 4335 	.db #0x0E	; 14
   CAF6 12                 4336 	.db #0x12	; 18
   CAF7 72                 4337 	.db #0x72	; 114	'r'
   CAF8 8A                 4338 	.db #0x8A	; 138
   CAF9 0E                 4339 	.db #0x0E	; 14
   CAFA 18                 4340 	.db #0x18	; 24
   CAFB BB                 4341 	.db #0xBB	; 187
   CAFC 0E                 4342 	.db #0x0E	; 14
   CAFD BB                 4343 	.db #0xBB	; 187
   CAFE EA                 4344 	.db #0xEA	; 234
   CAFF FF                 4345 	.db #0xFF	; 255
   CB00 1E                 4346 	.db #0x1E	; 30
   CB01 1E                 4347 	.db #0x1E	; 30
   CB02 1E                 4348 	.db #0x1E	; 30
   CB03 21                 4349 	.db #0x21	; 33
   CB04 21                 4350 	.db #0x21	; 33
   CB05 21                 4351 	.db #0x21	; 33
   CB06 21                 4352 	.db #0x21	; 33
   CB07 30                 4353 	.db #0x30	; 48	'0'
   CB08 41                 4354 	.db #0x41	; 65	'A'
   CB09 50                 4355 	.db #0x50	; 80	'P'
   CB0A 50                 4356 	.db #0x50	; 80	'P'
   CB0B 50                 4357 	.db #0x50	; 80	'P'
   CB0C 50                 4358 	.db #0x50	; 80	'P'
   CB0D 10                 4359 	.db #0x10	; 16
   CB0E 20                 4360 	.db #0x20	; 32
   CB0F 41                 4361 	.db #0x41	; 65	'A'
   CB10 83                 4362 	.db #0x83	; 131
   CB11 9B                 4363 	.db #0x9B	; 155
   CB12 C4                 4364 	.db #0xC4	; 196
   CB13 08                 4365 	.db #0x08	; 8
   CB14 0C                 4366 	.db #0x0C	; 12
   CB15 10                 4367 	.db #0x10	; 16
   CB16 18                 4368 	.db #0x18	; 24
   CB17 20                 4369 	.db #0x20	; 32
   CB18 31                 4370 	.db #0x31	; 49	'1'
   CB19 40                 4371 	.db #0x40	; 64
   CB1A 62                 4372 	.db #0x62	; 98	'b'
   CB1B C5                 4373 	.db #0xC5	; 197
   CB1C 89                 4374 	.db #0x89	; 137
   CB1D 12                 4375 	.db #0x12	; 18
   CB1E A6                 4376 	.db #0xA6	; 166
   CB1F 9C                 4377 	.db #0x9C	; 156
   CB20 31                 4378 	.db #0x31	; 49	'1'
   CB21 4A                 4379 	.db #0x4A	; 74	'J'
   CB22 62                 4380 	.db #0x62	; 98	'b'
   CB23 93                 4381 	.db #0x93	; 147
   CB24 C5                 4382 	.db #0xC5	; 197
   CB25 27                 4383 	.db #0x27	; 39
   CB26 00                 4384 	.db #0x00	; 0
   CB27 03                 4385 	.db #0x03	; 3
   CB28 06                 4386 	.db #0x06	; 6
   CB29 0D                 4387 	.db #0x0D	; 13
   CB2A 1A                 4388 	.db #0x1A	; 26
   CB2B 1E                 4389 	.db #0x1E	; 30
   CB2C 26                 4390 	.db #0x26	; 38
   CB2D 33                 4391 	.db #0x33	; 51	'3'
   CB2E 4D                 4392 	.db #0x4D	; 77	'M'
   CB2F 66                 4393 	.db #0x66	; 102	'f'
   CB30 9A                 4394 	.db #0x9A	; 154
   CB31 CD                 4395 	.db #0xCD	; 205
   CB32 FE                 4396 	.db #0xFE	; 254
   CB33 FE                 4397 	.db #0xFE	; 254
   CB34                    4398 _reg_table_868:
   CB34 01                 4399 	.db #0x01	; 1
   CB35 01                 4400 	.db #0x01	; 1
   CB36 01                 4401 	.db #0x01	; 1
   CB37 01                 4402 	.db #0x01	; 1
   CB38 01                 4403 	.db #0x01	; 1
   CB39 01                 4404 	.db #0x01	; 1
   CB3A 05                 4405 	.db #0x05	; 5
   CB3B 0B                 4406 	.db #0x0B	; 11
   CB3C 9A                 4407 	.db #0x9A	; 154
   CB3D 88                 4408 	.db #0x88	; 136
   CB3E 8A                 4409 	.db #0x8A	; 138
   CB3F 8C                 4410 	.db #0x8C	; 140
   CB40 8D                 4411 	.db #0x8D	; 141
   CB41 03                 4412 	.db #0x03	; 3
   CB42 03                 4413 	.db #0x03	; 3
   CB43 03                 4414 	.db #0x03	; 3
   CB44 03                 4415 	.db #0x03	; 3
   CB45 03                 4416 	.db #0x03	; 3
   CB46 03                 4417 	.db #0x03	; 3
   CB47 03                 4418 	.db #0x03	; 3
   CB48 03                 4419 	.db #0x03	; 3
   CB49 03                 4420 	.db #0x03	; 3
   CB4A 03                 4421 	.db #0x03	; 3
   CB4B 03                 4422 	.db #0x03	; 3
   CB4C 03                 4423 	.db #0x03	; 3
   CB4D 03                 4424 	.db #0x03	; 3
   CB4E D0                 4425 	.db #0xD0	; 208
   CB4F E8                 4426 	.db #0xE8	; 232
   CB50 F4                 4427 	.db #0xF4	; 244
   CB51 FA                 4428 	.db #0xFA	; 250
   CB52 D3                 4429 	.db #0xD3	; 211
   CB53 A7                 4430 	.db #0xA7	; 167
   CB54 7D                 4431 	.db #0x7D	; 125
   CB55 53                 4432 	.db #0x53	; 83	'S'
   CB56 5E                 4433 	.db #0x5E	; 94
   CB57 7D                 4434 	.db #0x7D	; 125
   CB58 5E                 4435 	.db #0x5E	; 94
   CB59 3F                 4436 	.db #0x3F	; 63
   CB5A 30                 4437 	.db #0x30	; 48	'0'
   CB5B E0                 4438 	.db #0xE0	; 224
   CB5C 60                 4439 	.db #0x60	; 96
   CB5D 20                 4440 	.db #0x20	; 32
   CB5E 00                 4441 	.db #0x00	; 0
   CB5F 00                 4442 	.db #0x00	; 0
   CB60 00                 4443 	.db #0x00	; 0
   CB61 01                 4444 	.db #0x01	; 1
   CB62 01                 4445 	.db #0x01	; 1
   CB63 01                 4446 	.db #0x01	; 1
   CB64 01                 4447 	.db #0x01	; 1
   CB65 01                 4448 	.db #0x01	; 1
   CB66 02                 4449 	.db #0x02	; 2
   CB67 02                 4450 	.db #0x02	; 2
   CB68 10                 4451 	.db #0x10	; 16
   CB69 20                 4452 	.db #0x20	; 32
   CB6A 41                 4453 	.db #0x41	; 65	'A'
   CB6B 83                 4454 	.db #0x83	; 131
   CB6C 9B                 4455 	.db #0x9B	; 155
   CB6D C4                 4456 	.db #0xC4	; 196
   CB6E 06                 4457 	.db #0x06	; 6
   CB6F 89                 4458 	.db #0x89	; 137
   CB70 5D                 4459 	.db #0x5D	; 93
   CB71 06                 4460 	.db #0x06	; 6
   CB72 5D                 4461 	.db #0x5D	; 93
   CB73 0C                 4462 	.db #0x0C	; 12
   CB74 AA                 4463 	.db #0xAA	; 170
   CB75 62                 4464 	.db #0x62	; 98	'b'
   CB76 C5                 4465 	.db #0xC5	; 197
   CB77 89                 4466 	.db #0x89	; 137
   CB78 12                 4467 	.db #0x12	; 18
   CB79 A6                 4468 	.db #0xA6	; 166
   CB7A 9C                 4469 	.db #0x9C	; 156
   CB7B 25                 4470 	.db #0x25	; 37
   CB7C 37                 4471 	.db #0x37	; 55	'7'
   CB7D 86                 4472 	.db #0x86	; 134
   CB7E 25                 4473 	.db #0x25	; 37
   CB7F 86                 4474 	.db #0x86	; 134
   CB80 4A                 4475 	.db #0x4A	; 74	'J'
   CB81 AB                 4476 	.db #0xAB	; 171
   CB82 00                 4477 	.db #0x00	; 0
   CB83 00                 4478 	.db #0x00	; 0
   CB84 00                 4479 	.db #0x00	; 0
   CB85 01                 4480 	.db #0x01	; 1
   CB86 01                 4481 	.db #0x01	; 1
   CB87 01                 4482 	.db #0x01	; 1
   CB88 02                 4483 	.db #0x02	; 2
   CB89 03                 4484 	.db #0x03	; 3
   CB8A 02                 4485 	.db #0x02	; 2
   CB8B 02                 4486 	.db #0x02	; 2
   CB8C 02                 4487 	.db #0x02	; 2
   CB8D 04                 4488 	.db #0x04	; 4
   CB8E 07                 4489 	.db #0x07	; 7
   CB8F 23                 4490 	.db #0x23	; 35
   CB90 44                 4491 	.db #0x44	; 68	'D'
   CB91 85                 4492 	.db #0x85	; 133
   CB92 08                 4493 	.db #0x08	; 8
   CB93 39                 4494 	.db #0x39	; 57	'9'
   CB94 8A                 4495 	.db #0x8A	; 138
   CB95 0E                 4496 	.db #0x0E	; 14
   CB96 18                 4497 	.db #0x18	; 24
   CB97 BB                 4498 	.db #0xBB	; 187
   CB98 0E                 4499 	.db #0x0E	; 14
   CB99 BB                 4500 	.db #0xBB	; 187
   CB9A EA                 4501 	.db #0xEA	; 234
   CB9B FF                 4502 	.db #0xFF	; 255
   CB9C 1C                 4503 	.db #0x1C	; 28
   CB9D 1C                 4504 	.db #0x1C	; 28
   CB9E 1C                 4505 	.db #0x1C	; 28
   CB9F 1C                 4506 	.db #0x1C	; 28
   CBA0 1C                 4507 	.db #0x1C	; 28
   CBA1 1E                 4508 	.db #0x1E	; 30
   CBA2 20                 4509 	.db #0x20	; 32
   CBA3 30                 4510 	.db #0x30	; 48	'0'
   CBA4 41                 4511 	.db #0x41	; 65	'A'
   CBA5 50                 4512 	.db #0x50	; 80	'P'
   CBA6 50                 4513 	.db #0x50	; 80	'P'
   CBA7 50                 4514 	.db #0x50	; 80	'P'
   CBA8 50                 4515 	.db #0x50	; 80	'P'
   CBA9 10                 4516 	.db #0x10	; 16
   CBAA 20                 4517 	.db #0x20	; 32
   CBAB 41                 4518 	.db #0x41	; 65	'A'
   CBAC 83                 4519 	.db #0x83	; 131
   CBAD 9B                 4520 	.db #0x9B	; 155
   CBAE C4                 4521 	.db #0xC4	; 196
   CBAF 08                 4522 	.db #0x08	; 8
   CBB0 0C                 4523 	.db #0x0C	; 12
   CBB1 10                 4524 	.db #0x10	; 16
   CBB2 18                 4525 	.db #0x18	; 24
   CBB3 20                 4526 	.db #0x20	; 32
   CBB4 31                 4527 	.db #0x31	; 49	'1'
   CBB5 40                 4528 	.db #0x40	; 64
   CBB6 62                 4529 	.db #0x62	; 98	'b'
   CBB7 C5                 4530 	.db #0xC5	; 197
   CBB8 89                 4531 	.db #0x89	; 137
   CBB9 12                 4532 	.db #0x12	; 18
   CBBA A6                 4533 	.db #0xA6	; 166
   CBBB 9C                 4534 	.db #0x9C	; 156
   CBBC 31                 4535 	.db #0x31	; 49	'1'
   CBBD 4A                 4536 	.db #0x4A	; 74	'J'
   CBBE 62                 4537 	.db #0x62	; 98	'b'
   CBBF 93                 4538 	.db #0x93	; 147
   CBC0 C5                 4539 	.db #0xC5	; 197
   CBC1 27                 4540 	.db #0x27	; 39
   CBC2 00                 4541 	.db #0x00	; 0
   CBC3 03                 4542 	.db #0x03	; 3
   CBC4 06                 4543 	.db #0x06	; 6
   CBC5 0D                 4544 	.db #0x0D	; 13
   CBC6 1A                 4545 	.db #0x1A	; 26
   CBC7 1E                 4546 	.db #0x1E	; 30
   CBC8 26                 4547 	.db #0x26	; 38
   CBC9 33                 4548 	.db #0x33	; 51	'3'
   CBCA 4D                 4549 	.db #0x4D	; 77	'M'
   CBCB 66                 4550 	.db #0x66	; 102	'f'
   CBCC 9A                 4551 	.db #0x9A	; 154
   CBCD CD                 4552 	.db #0xCD	; 205
   CBCE FE                 4553 	.db #0xFE	; 254
   CBCF FE                 4554 	.db #0xFE	; 254
   CBD0                    4555 _reg_table_915:
   CBD0 01                 4556 	.db #0x01	; 1
   CBD1 01                 4557 	.db #0x01	; 1
   CBD2 01                 4558 	.db #0x01	; 1
   CBD3 01                 4559 	.db #0x01	; 1
   CBD4 01                 4560 	.db #0x01	; 1
   CBD5 01                 4561 	.db #0x01	; 1
   CBD6 05                 4562 	.db #0x05	; 5
   CBD7 0B                 4563 	.db #0x0B	; 11
   CBD8 9A                 4564 	.db #0x9A	; 154
   CBD9 88                 4565 	.db #0x88	; 136
   CBDA 8A                 4566 	.db #0x8A	; 138
   CBDB 8C                 4567 	.db #0x8C	; 140
   CBDC 8D                 4568 	.db #0x8D	; 141
   CBDD 03                 4569 	.db #0x03	; 3
   CBDE 03                 4570 	.db #0x03	; 3
   CBDF 03                 4571 	.db #0x03	; 3
   CBE0 03                 4572 	.db #0x03	; 3
   CBE1 03                 4573 	.db #0x03	; 3
   CBE2 03                 4574 	.db #0x03	; 3
   CBE3 03                 4575 	.db #0x03	; 3
   CBE4 03                 4576 	.db #0x03	; 3
   CBE5 03                 4577 	.db #0x03	; 3
   CBE6 03                 4578 	.db #0x03	; 3
   CBE7 03                 4579 	.db #0x03	; 3
   CBE8 03                 4580 	.db #0x03	; 3
   CBE9 03                 4581 	.db #0x03	; 3
   CBEA D0                 4582 	.db #0xD0	; 208
   CBEB E8                 4583 	.db #0xE8	; 232
   CBEC F4                 4584 	.db #0xF4	; 244
   CBED FA                 4585 	.db #0xFA	; 250
   CBEE D3                 4586 	.db #0xD3	; 211
   CBEF A7                 4587 	.db #0xA7	; 167
   CBF0 7D                 4588 	.db #0x7D	; 125
   CBF1 53                 4589 	.db #0x53	; 83	'S'
   CBF2 5E                 4590 	.db #0x5E	; 94
   CBF3 7D                 4591 	.db #0x7D	; 125
   CBF4 5E                 4592 	.db #0x5E	; 94
   CBF5 3F                 4593 	.db #0x3F	; 63
   CBF6 30                 4594 	.db #0x30	; 48	'0'
   CBF7 E0                 4595 	.db #0xE0	; 224
   CBF8 60                 4596 	.db #0x60	; 96
   CBF9 20                 4597 	.db #0x20	; 32
   CBFA 00                 4598 	.db #0x00	; 0
   CBFB 00                 4599 	.db #0x00	; 0
   CBFC 00                 4600 	.db #0x00	; 0
   CBFD 01                 4601 	.db #0x01	; 1
   CBFE 01                 4602 	.db #0x01	; 1
   CBFF 01                 4603 	.db #0x01	; 1
   CC00 01                 4604 	.db #0x01	; 1
   CC01 01                 4605 	.db #0x01	; 1
   CC02 02                 4606 	.db #0x02	; 2
   CC03 02                 4607 	.db #0x02	; 2
   CC04 10                 4608 	.db #0x10	; 16
   CC05 20                 4609 	.db #0x20	; 32
   CC06 41                 4610 	.db #0x41	; 65	'A'
   CC07 83                 4611 	.db #0x83	; 131
   CC08 9B                 4612 	.db #0x9B	; 155
   CC09 C4                 4613 	.db #0xC4	; 196
   CC0A 06                 4614 	.db #0x06	; 6
   CC0B 89                 4615 	.db #0x89	; 137
   CC0C 5D                 4616 	.db #0x5D	; 93
   CC0D 06                 4617 	.db #0x06	; 6
   CC0E 5D                 4618 	.db #0x5D	; 93
   CC0F 0C                 4619 	.db #0x0C	; 12
   CC10 AA                 4620 	.db #0xAA	; 170
   CC11 62                 4621 	.db #0x62	; 98	'b'
   CC12 C5                 4622 	.db #0xC5	; 197
   CC13 89                 4623 	.db #0x89	; 137
   CC14 12                 4624 	.db #0x12	; 18
   CC15 A6                 4625 	.db #0xA6	; 166
   CC16 9C                 4626 	.db #0x9C	; 156
   CC17 25                 4627 	.db #0x25	; 37
   CC18 37                 4628 	.db #0x37	; 55	'7'
   CC19 86                 4629 	.db #0x86	; 134
   CC1A 25                 4630 	.db #0x25	; 37
   CC1B 86                 4631 	.db #0x86	; 134
   CC1C 4A                 4632 	.db #0x4A	; 74	'J'
   CC1D AB                 4633 	.db #0xAB	; 171
   CC1E 00                 4634 	.db #0x00	; 0
   CC1F 00                 4635 	.db #0x00	; 0
   CC20 00                 4636 	.db #0x00	; 0
   CC21 01                 4637 	.db #0x01	; 1
   CC22 01                 4638 	.db #0x01	; 1
   CC23 01                 4639 	.db #0x01	; 1
   CC24 02                 4640 	.db #0x02	; 2
   CC25 03                 4641 	.db #0x03	; 3
   CC26 02                 4642 	.db #0x02	; 2
   CC27 02                 4643 	.db #0x02	; 2
   CC28 02                 4644 	.db #0x02	; 2
   CC29 04                 4645 	.db #0x04	; 4
   CC2A 07                 4646 	.db #0x07	; 7
   CC2B 23                 4647 	.db #0x23	; 35
   CC2C 44                 4648 	.db #0x44	; 68	'D'
   CC2D 85                 4649 	.db #0x85	; 133
   CC2E 08                 4650 	.db #0x08	; 8
   CC2F 39                 4651 	.db #0x39	; 57	'9'
   CC30 8A                 4652 	.db #0x8A	; 138
   CC31 0E                 4653 	.db #0x0E	; 14
   CC32 18                 4654 	.db #0x18	; 24
   CC33 BB                 4655 	.db #0xBB	; 187
   CC34 0E                 4656 	.db #0x0E	; 14
   CC35 BB                 4657 	.db #0xBB	; 187
   CC36 EA                 4658 	.db #0xEA	; 234
   CC37 FF                 4659 	.db #0xFF	; 255
   CC38 1E                 4660 	.db #0x1E	; 30
   CC39 1E                 4661 	.db #0x1E	; 30
   CC3A 1E                 4662 	.db #0x1E	; 30
   CC3B 1E                 4663 	.db #0x1E	; 30
   CC3C 1E                 4664 	.db #0x1E	; 30
   CC3D 1E                 4665 	.db #0x1E	; 30
   CC3E 20                 4666 	.db #0x20	; 32
   CC3F 30                 4667 	.db #0x30	; 48	'0'
   CC40 41                 4668 	.db #0x41	; 65	'A'
   CC41 50                 4669 	.db #0x50	; 80	'P'
   CC42 50                 4670 	.db #0x50	; 80	'P'
   CC43 50                 4671 	.db #0x50	; 80	'P'
   CC44 50                 4672 	.db #0x50	; 80	'P'
   CC45 10                 4673 	.db #0x10	; 16
   CC46 20                 4674 	.db #0x20	; 32
   CC47 41                 4675 	.db #0x41	; 65	'A'
   CC48 83                 4676 	.db #0x83	; 131
   CC49 9B                 4677 	.db #0x9B	; 155
   CC4A C4                 4678 	.db #0xC4	; 196
   CC4B 08                 4679 	.db #0x08	; 8
   CC4C 0C                 4680 	.db #0x0C	; 12
   CC4D 10                 4681 	.db #0x10	; 16
   CC4E 18                 4682 	.db #0x18	; 24
   CC4F 20                 4683 	.db #0x20	; 32
   CC50 31                 4684 	.db #0x31	; 49	'1'
   CC51 40                 4685 	.db #0x40	; 64
   CC52 62                 4686 	.db #0x62	; 98	'b'
   CC53 C5                 4687 	.db #0xC5	; 197
   CC54 89                 4688 	.db #0x89	; 137
   CC55 12                 4689 	.db #0x12	; 18
   CC56 A6                 4690 	.db #0xA6	; 166
   CC57 9C                 4691 	.db #0x9C	; 156
   CC58 31                 4692 	.db #0x31	; 49	'1'
   CC59 4A                 4693 	.db #0x4A	; 74	'J'
   CC5A 62                 4694 	.db #0x62	; 98	'b'
   CC5B 93                 4695 	.db #0x93	; 147
   CC5C C5                 4696 	.db #0xC5	; 197
   CC5D 27                 4697 	.db #0x27	; 39
   CC5E 00                 4698 	.db #0x00	; 0
   CC5F 03                 4699 	.db #0x03	; 3
   CC60 06                 4700 	.db #0x06	; 6
   CC61 0D                 4701 	.db #0x0D	; 13
   CC62 1A                 4702 	.db #0x1A	; 26
   CC63 1E                 4703 	.db #0x1E	; 30
   CC64 26                 4704 	.db #0x26	; 38
   CC65 33                 4705 	.db #0x33	; 51	'3'
   CC66 4D                 4706 	.db #0x4D	; 77	'M'
   CC67 66                 4707 	.db #0x66	; 102	'f'
   CC68 9A                 4708 	.db #0x9A	; 154
   CC69 CD                 4709 	.db #0xCD	; 205
   CC6A FE                 4710 	.db #0xFE	; 254
   CC6B FE                 4711 	.db #0xFE	; 254
   CC6C                    4712 _power_levels:
   CC6C 01                 4713 	.db #0x01	; 1
   CC6D 02                 4714 	.db #0x02	; 2
   CC6E 05                 4715 	.db #0x05	; 5
   CC6F 08                 4716 	.db #0x08	; 8
   CC70 0B                 4717 	.db #0x0B	; 11
   CC71 0E                 4718 	.db #0x0E	; 14
   CC72 11                 4719 	.db #0x11	; 17
   CC73 14                 4720 	.db #0x14	; 20
                           4721 	.area XINIT   (CODE)
                           4722 	.area CABS    (ABS,CODE)
