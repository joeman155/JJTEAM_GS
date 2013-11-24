                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:14 2013
                              5 ;--------------------------------------------------------
                              6 	.module timer
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _T2_ISR
                             13 	.globl _T3_ISR
                             14 	.globl _at_timer
                             15 	.globl _serial_check_rts
                             16 	.globl _NSS1
                             17 	.globl _IRQ
                             18 	.globl _PIN_ENABLE
                             19 	.globl _PIN_CONFIG
                             20 	.globl _LED_GREEN
                             21 	.globl _LED_RED
                             22 	.globl _SPI0EN
                             23 	.globl _TXBMT0
                             24 	.globl _NSS0MD0
                             25 	.globl _NSS0MD1
                             26 	.globl _RXOVRN0
                             27 	.globl _MODF0
                             28 	.globl _WCOL0
                             29 	.globl _SPIF0
                             30 	.globl _AD0CM0
                             31 	.globl _AD0CM1
                             32 	.globl _AD0CM2
                             33 	.globl _AD0WINT
                             34 	.globl _AD0BUSY
                             35 	.globl _AD0INT
                             36 	.globl _BURSTEN
                             37 	.globl _AD0EN
                             38 	.globl _CCF0
                             39 	.globl _CCF1
                             40 	.globl _CCF2
                             41 	.globl _CCF3
                             42 	.globl _CCF4
                             43 	.globl _CCF5
                             44 	.globl _CR
                             45 	.globl _CF
                             46 	.globl _P
                             47 	.globl _F1
                             48 	.globl _OV
                             49 	.globl _RS0
                             50 	.globl _RS1
                             51 	.globl _F0
                             52 	.globl _AC
                             53 	.globl _CY
                             54 	.globl _T2XCLK
                             55 	.globl _T2RCLK
                             56 	.globl _TR2
                             57 	.globl _T2SPLIT
                             58 	.globl _TF2CEN
                             59 	.globl _TF2LEN
                             60 	.globl _TF2L
                             61 	.globl _TF2H
                             62 	.globl _SI
                             63 	.globl _ACK
                             64 	.globl _ARBLOST
                             65 	.globl _ACKRQ
                             66 	.globl _STO
                             67 	.globl _STA
                             68 	.globl _TXMODE
                             69 	.globl _MASTER
                             70 	.globl _PX0
                             71 	.globl _PT0
                             72 	.globl _PX1
                             73 	.globl _PT1
                             74 	.globl _PS0
                             75 	.globl _PT2
                             76 	.globl _PSPI0
                             77 	.globl _SPI1EN
                             78 	.globl _TXBMT1
                             79 	.globl _NSS1MD0
                             80 	.globl _NSS1MD1
                             81 	.globl _RXOVRN1
                             82 	.globl _MODF1
                             83 	.globl _WCOL1
                             84 	.globl _SPIF1
                             85 	.globl _EX0
                             86 	.globl _ET0
                             87 	.globl _EX1
                             88 	.globl _ET1
                             89 	.globl _ES0
                             90 	.globl _ET2
                             91 	.globl _ESPI0
                             92 	.globl _EA
                             93 	.globl _RI0
                             94 	.globl _TI0
                             95 	.globl _RB80
                             96 	.globl _TB80
                             97 	.globl _REN0
                             98 	.globl _MCE0
                             99 	.globl _S0MODE
                            100 	.globl _CRC0VAL
                            101 	.globl _CRC0INIT
                            102 	.globl _CRC0SEL
                            103 	.globl _IT0
                            104 	.globl _IE0
                            105 	.globl _IT1
                            106 	.globl _IE1
                            107 	.globl _TR0
                            108 	.globl _TF0
                            109 	.globl _TR1
                            110 	.globl _TF1
                            111 	.globl _PCA0CP4
                            112 	.globl _PCA0CP0
                            113 	.globl _PCA0
                            114 	.globl _PCA0CP3
                            115 	.globl _PCA0CP2
                            116 	.globl _PCA0CP1
                            117 	.globl _PCA0CP5
                            118 	.globl _TMR2
                            119 	.globl _TMR2RL
                            120 	.globl _ADC0LT
                            121 	.globl _ADC0GT
                            122 	.globl _ADC0
                            123 	.globl _TMR3
                            124 	.globl _TMR3RL
                            125 	.globl _TOFF
                            126 	.globl _DP
                            127 	.globl _VDM0CN
                            128 	.globl _PCA0CPH4
                            129 	.globl _PCA0CPL4
                            130 	.globl _PCA0CPH0
                            131 	.globl _PCA0CPL0
                            132 	.globl _PCA0H
                            133 	.globl _PCA0L
                            134 	.globl _SPI0CN
                            135 	.globl _EIP2
                            136 	.globl _EIP1
                            137 	.globl _SMB0ADM
                            138 	.globl _SMB0ADR
                            139 	.globl _P2MDIN
                            140 	.globl _P1MDIN
                            141 	.globl _P0MDIN
                            142 	.globl _B
                            143 	.globl _RSTSRC
                            144 	.globl _PCA0CPH3
                            145 	.globl _PCA0CPL3
                            146 	.globl _PCA0CPH2
                            147 	.globl _PCA0CPL2
                            148 	.globl _PCA0CPH1
                            149 	.globl _PCA0CPL1
                            150 	.globl _ADC0CN
                            151 	.globl _EIE2
                            152 	.globl _EIE1
                            153 	.globl _FLWR
                            154 	.globl _IT01CF
                            155 	.globl _XBR2
                            156 	.globl _XBR1
                            157 	.globl _XBR0
                            158 	.globl _ACC
                            159 	.globl _PCA0PWM
                            160 	.globl _PCA0CPM4
                            161 	.globl _PCA0CPM3
                            162 	.globl _PCA0CPM2
                            163 	.globl _PCA0CPM1
                            164 	.globl _PCA0CPM0
                            165 	.globl _PCA0MD
                            166 	.globl _PCA0CN
                            167 	.globl _P0MAT
                            168 	.globl _P2SKIP
                            169 	.globl _P1SKIP
                            170 	.globl _P0SKIP
                            171 	.globl _PCA0CPH5
                            172 	.globl _PCA0CPL5
                            173 	.globl _REF0CN
                            174 	.globl _PSW
                            175 	.globl _P1MAT
                            176 	.globl _PCA0CPM5
                            177 	.globl _TMR2H
                            178 	.globl _TMR2L
                            179 	.globl _TMR2RLH
                            180 	.globl _TMR2RLL
                            181 	.globl _REG0CN
                            182 	.globl _TMR2CN
                            183 	.globl _P0MASK
                            184 	.globl _ADC0LTH
                            185 	.globl _ADC0LTL
                            186 	.globl _ADC0GTH
                            187 	.globl _ADC0GTL
                            188 	.globl _SMB0DAT
                            189 	.globl _SMB0CF
                            190 	.globl _SMB0CN
                            191 	.globl _P1MASK
                            192 	.globl _ADC0H
                            193 	.globl _ADC0L
                            194 	.globl _ADC0TK
                            195 	.globl _ADC0CF
                            196 	.globl _ADC0MX
                            197 	.globl _ADC0PWR
                            198 	.globl _ADC0AC
                            199 	.globl _IREF0CN
                            200 	.globl _IP
                            201 	.globl _FLKEY
                            202 	.globl _FLSCL
                            203 	.globl _PMU0CF
                            204 	.globl _OSCICL
                            205 	.globl _OSCICN
                            206 	.globl _OSCXCN
                            207 	.globl _SPI1CN
                            208 	.globl _ONESHOT
                            209 	.globl _EMI0TC
                            210 	.globl _RTC0KEY
                            211 	.globl _RTC0DAT
                            212 	.globl _RTC0ADR
                            213 	.globl _EMI0CF
                            214 	.globl _EMI0CN
                            215 	.globl _CLKSEL
                            216 	.globl _IE
                            217 	.globl _SFRPAGE
                            218 	.globl _P2DRV
                            219 	.globl _P2MDOUT
                            220 	.globl _P1DRV
                            221 	.globl _P1MDOUT
                            222 	.globl _P0DRV
                            223 	.globl _P0MDOUT
                            224 	.globl _SPI0DAT
                            225 	.globl _SPI0CKR
                            226 	.globl _SPI0CFG
                            227 	.globl _P2
                            228 	.globl _CPT0MX
                            229 	.globl _CPT1MX
                            230 	.globl _CPT0MD
                            231 	.globl _CPT1MD
                            232 	.globl _CPT0CN
                            233 	.globl _CPT1CN
                            234 	.globl _SBUF0
                            235 	.globl _SCON0
                            236 	.globl _CRC0CNT
                            237 	.globl _DC0CN
                            238 	.globl _CRC0AUTO
                            239 	.globl _DC0CF
                            240 	.globl _TMR3H
                            241 	.globl _CRC0FLIP
                            242 	.globl _TMR3L
                            243 	.globl _CRC0IN
                            244 	.globl _TMR3RLH
                            245 	.globl _CRC0CN
                            246 	.globl _TMR3RLL
                            247 	.globl _CRC0DAT
                            248 	.globl _TMR3CN
                            249 	.globl _P1
                            250 	.globl _PSCTL
                            251 	.globl _CKCON
                            252 	.globl _TH1
                            253 	.globl _TH0
                            254 	.globl _TL1
                            255 	.globl _TL0
                            256 	.globl _TMOD
                            257 	.globl _TCON
                            258 	.globl _PCON
                            259 	.globl _TOFFH
                            260 	.globl _SPI1DAT
                            261 	.globl _TOFFL
                            262 	.globl _SPI1CKR
                            263 	.globl _SPI1CFG
                            264 	.globl _DPH
                            265 	.globl _DPL
                            266 	.globl _SP
                            267 	.globl _P0
                            268 	.globl _delay_set
                            269 	.globl _delay_set_ticks
                            270 	.globl _delay_expired
                            271 	.globl _delay_msec
                            272 	.globl _timer2_16
                            273 	.globl _timer2_tick
                            274 	.globl _timer_init
                            275 	.globl _timer_entropy
                            276 ;--------------------------------------------------------
                            277 ; special function registers
                            278 ;--------------------------------------------------------
                            279 	.area RSEG    (ABS,DATA)
   0000                     280 	.org 0x0000
                     0080   281 _P0	=	0x0080
                     0081   282 _SP	=	0x0081
                     0082   283 _DPL	=	0x0082
                     0083   284 _DPH	=	0x0083
                     0084   285 _SPI1CFG	=	0x0084
                     0085   286 _SPI1CKR	=	0x0085
                     0085   287 _TOFFL	=	0x0085
                     0086   288 _SPI1DAT	=	0x0086
                     0086   289 _TOFFH	=	0x0086
                     0087   290 _PCON	=	0x0087
                     0088   291 _TCON	=	0x0088
                     0089   292 _TMOD	=	0x0089
                     008A   293 _TL0	=	0x008a
                     008B   294 _TL1	=	0x008b
                     008C   295 _TH0	=	0x008c
                     008D   296 _TH1	=	0x008d
                     008E   297 _CKCON	=	0x008e
                     008F   298 _PSCTL	=	0x008f
                     0090   299 _P1	=	0x0090
                     0091   300 _TMR3CN	=	0x0091
                     0091   301 _CRC0DAT	=	0x0091
                     0092   302 _TMR3RLL	=	0x0092
                     0092   303 _CRC0CN	=	0x0092
                     0093   304 _TMR3RLH	=	0x0093
                     0093   305 _CRC0IN	=	0x0093
                     0094   306 _TMR3L	=	0x0094
                     0095   307 _CRC0FLIP	=	0x0095
                     0095   308 _TMR3H	=	0x0095
                     0096   309 _DC0CF	=	0x0096
                     0096   310 _CRC0AUTO	=	0x0096
                     0097   311 _DC0CN	=	0x0097
                     0097   312 _CRC0CNT	=	0x0097
                     0098   313 _SCON0	=	0x0098
                     0099   314 _SBUF0	=	0x0099
                     009A   315 _CPT1CN	=	0x009a
                     009B   316 _CPT0CN	=	0x009b
                     009C   317 _CPT1MD	=	0x009c
                     009D   318 _CPT0MD	=	0x009d
                     009E   319 _CPT1MX	=	0x009e
                     009F   320 _CPT0MX	=	0x009f
                     00A0   321 _P2	=	0x00a0
                     00A1   322 _SPI0CFG	=	0x00a1
                     00A2   323 _SPI0CKR	=	0x00a2
                     00A3   324 _SPI0DAT	=	0x00a3
                     00A4   325 _P0MDOUT	=	0x00a4
                     00A4   326 _P0DRV	=	0x00a4
                     00A5   327 _P1MDOUT	=	0x00a5
                     00A5   328 _P1DRV	=	0x00a5
                     00A6   329 _P2MDOUT	=	0x00a6
                     00A6   330 _P2DRV	=	0x00a6
                     00A7   331 _SFRPAGE	=	0x00a7
                     00A8   332 _IE	=	0x00a8
                     00A9   333 _CLKSEL	=	0x00a9
                     00AA   334 _EMI0CN	=	0x00aa
                     00AB   335 _EMI0CF	=	0x00ab
                     00AC   336 _RTC0ADR	=	0x00ac
                     00AD   337 _RTC0DAT	=	0x00ad
                     00AE   338 _RTC0KEY	=	0x00ae
                     00AF   339 _EMI0TC	=	0x00af
                     00AF   340 _ONESHOT	=	0x00af
                     00B0   341 _SPI1CN	=	0x00b0
                     00B1   342 _OSCXCN	=	0x00b1
                     00B2   343 _OSCICN	=	0x00b2
                     00B3   344 _OSCICL	=	0x00b3
                     00B5   345 _PMU0CF	=	0x00b5
                     00B6   346 _FLSCL	=	0x00b6
                     00B7   347 _FLKEY	=	0x00b7
                     00B8   348 _IP	=	0x00b8
                     00B9   349 _IREF0CN	=	0x00b9
                     00BA   350 _ADC0AC	=	0x00ba
                     00BA   351 _ADC0PWR	=	0x00ba
                     00BB   352 _ADC0MX	=	0x00bb
                     00BC   353 _ADC0CF	=	0x00bc
                     00BD   354 _ADC0TK	=	0x00bd
                     00BD   355 _ADC0L	=	0x00bd
                     00BE   356 _ADC0H	=	0x00be
                     00BF   357 _P1MASK	=	0x00bf
                     00C0   358 _SMB0CN	=	0x00c0
                     00C1   359 _SMB0CF	=	0x00c1
                     00C2   360 _SMB0DAT	=	0x00c2
                     00C3   361 _ADC0GTL	=	0x00c3
                     00C4   362 _ADC0GTH	=	0x00c4
                     00C5   363 _ADC0LTL	=	0x00c5
                     00C6   364 _ADC0LTH	=	0x00c6
                     00C7   365 _P0MASK	=	0x00c7
                     00C8   366 _TMR2CN	=	0x00c8
                     00C9   367 _REG0CN	=	0x00c9
                     00CA   368 _TMR2RLL	=	0x00ca
                     00CB   369 _TMR2RLH	=	0x00cb
                     00CC   370 _TMR2L	=	0x00cc
                     00CD   371 _TMR2H	=	0x00cd
                     00CE   372 _PCA0CPM5	=	0x00ce
                     00CF   373 _P1MAT	=	0x00cf
                     00D0   374 _PSW	=	0x00d0
                     00D1   375 _REF0CN	=	0x00d1
                     00D2   376 _PCA0CPL5	=	0x00d2
                     00D3   377 _PCA0CPH5	=	0x00d3
                     00D4   378 _P0SKIP	=	0x00d4
                     00D5   379 _P1SKIP	=	0x00d5
                     00D6   380 _P2SKIP	=	0x00d6
                     00D7   381 _P0MAT	=	0x00d7
                     00D8   382 _PCA0CN	=	0x00d8
                     00D9   383 _PCA0MD	=	0x00d9
                     00DA   384 _PCA0CPM0	=	0x00da
                     00DB   385 _PCA0CPM1	=	0x00db
                     00DC   386 _PCA0CPM2	=	0x00dc
                     00DD   387 _PCA0CPM3	=	0x00dd
                     00DE   388 _PCA0CPM4	=	0x00de
                     00DF   389 _PCA0PWM	=	0x00df
                     00E0   390 _ACC	=	0x00e0
                     00E1   391 _XBR0	=	0x00e1
                     00E2   392 _XBR1	=	0x00e2
                     00E3   393 _XBR2	=	0x00e3
                     00E4   394 _IT01CF	=	0x00e4
                     00E5   395 _FLWR	=	0x00e5
                     00E6   396 _EIE1	=	0x00e6
                     00E7   397 _EIE2	=	0x00e7
                     00E8   398 _ADC0CN	=	0x00e8
                     00E9   399 _PCA0CPL1	=	0x00e9
                     00EA   400 _PCA0CPH1	=	0x00ea
                     00EB   401 _PCA0CPL2	=	0x00eb
                     00EC   402 _PCA0CPH2	=	0x00ec
                     00ED   403 _PCA0CPL3	=	0x00ed
                     00EE   404 _PCA0CPH3	=	0x00ee
                     00EF   405 _RSTSRC	=	0x00ef
                     00F0   406 _B	=	0x00f0
                     00F1   407 _P0MDIN	=	0x00f1
                     00F2   408 _P1MDIN	=	0x00f2
                     00F3   409 _P2MDIN	=	0x00f3
                     00F4   410 _SMB0ADR	=	0x00f4
                     00F5   411 _SMB0ADM	=	0x00f5
                     00F6   412 _EIP1	=	0x00f6
                     00F7   413 _EIP2	=	0x00f7
                     00F8   414 _SPI0CN	=	0x00f8
                     00F9   415 _PCA0L	=	0x00f9
                     00FA   416 _PCA0H	=	0x00fa
                     00FB   417 _PCA0CPL0	=	0x00fb
                     00FC   418 _PCA0CPH0	=	0x00fc
                     00FD   419 _PCA0CPL4	=	0x00fd
                     00FE   420 _PCA0CPH4	=	0x00fe
                     00FF   421 _VDM0CN	=	0x00ff
                     8382   422 _DP	=	0x8382
                     8685   423 _TOFF	=	0x8685
                     9392   424 _TMR3RL	=	0x9392
                     9594   425 _TMR3	=	0x9594
                     BEBD   426 _ADC0	=	0xbebd
                     C4C3   427 _ADC0GT	=	0xc4c3
                     C6C5   428 _ADC0LT	=	0xc6c5
                     CBCA   429 _TMR2RL	=	0xcbca
                     CDCC   430 _TMR2	=	0xcdcc
                     D3D2   431 _PCA0CP5	=	0xd3d2
                     EAE9   432 _PCA0CP1	=	0xeae9
                     ECEB   433 _PCA0CP2	=	0xeceb
                     EEED   434 _PCA0CP3	=	0xeeed
                     FAF9   435 _PCA0	=	0xfaf9
                     FCFB   436 _PCA0CP0	=	0xfcfb
                     FEFD   437 _PCA0CP4	=	0xfefd
                            438 ;--------------------------------------------------------
                            439 ; special function bits
                            440 ;--------------------------------------------------------
                            441 	.area RSEG    (ABS,DATA)
   0000                     442 	.org 0x0000
                     008F   443 _TF1	=	0x008f
                     008E   444 _TR1	=	0x008e
                     008D   445 _TF0	=	0x008d
                     008C   446 _TR0	=	0x008c
                     008B   447 _IE1	=	0x008b
                     008A   448 _IT1	=	0x008a
                     0089   449 _IE0	=	0x0089
                     0088   450 _IT0	=	0x0088
                     0096   451 _CRC0SEL	=	0x0096
                     0095   452 _CRC0INIT	=	0x0095
                     0094   453 _CRC0VAL	=	0x0094
                     009F   454 _S0MODE	=	0x009f
                     009D   455 _MCE0	=	0x009d
                     009C   456 _REN0	=	0x009c
                     009B   457 _TB80	=	0x009b
                     009A   458 _RB80	=	0x009a
                     0099   459 _TI0	=	0x0099
                     0098   460 _RI0	=	0x0098
                     00AF   461 _EA	=	0x00af
                     00AE   462 _ESPI0	=	0x00ae
                     00AD   463 _ET2	=	0x00ad
                     00AC   464 _ES0	=	0x00ac
                     00AB   465 _ET1	=	0x00ab
                     00AA   466 _EX1	=	0x00aa
                     00A9   467 _ET0	=	0x00a9
                     00A8   468 _EX0	=	0x00a8
                     00B7   469 _SPIF1	=	0x00b7
                     00B6   470 _WCOL1	=	0x00b6
                     00B5   471 _MODF1	=	0x00b5
                     00B4   472 _RXOVRN1	=	0x00b4
                     00B3   473 _NSS1MD1	=	0x00b3
                     00B2   474 _NSS1MD0	=	0x00b2
                     00B1   475 _TXBMT1	=	0x00b1
                     00B0   476 _SPI1EN	=	0x00b0
                     00BE   477 _PSPI0	=	0x00be
                     00BD   478 _PT2	=	0x00bd
                     00BC   479 _PS0	=	0x00bc
                     00BB   480 _PT1	=	0x00bb
                     00BA   481 _PX1	=	0x00ba
                     00B9   482 _PT0	=	0x00b9
                     00B8   483 _PX0	=	0x00b8
                     00C7   484 _MASTER	=	0x00c7
                     00C6   485 _TXMODE	=	0x00c6
                     00C5   486 _STA	=	0x00c5
                     00C4   487 _STO	=	0x00c4
                     00C3   488 _ACKRQ	=	0x00c3
                     00C2   489 _ARBLOST	=	0x00c2
                     00C1   490 _ACK	=	0x00c1
                     00C0   491 _SI	=	0x00c0
                     00CF   492 _TF2H	=	0x00cf
                     00CE   493 _TF2L	=	0x00ce
                     00CD   494 _TF2LEN	=	0x00cd
                     00CC   495 _TF2CEN	=	0x00cc
                     00CB   496 _T2SPLIT	=	0x00cb
                     00CA   497 _TR2	=	0x00ca
                     00C9   498 _T2RCLK	=	0x00c9
                     00C8   499 _T2XCLK	=	0x00c8
                     00D7   500 _CY	=	0x00d7
                     00D6   501 _AC	=	0x00d6
                     00D5   502 _F0	=	0x00d5
                     00D4   503 _RS1	=	0x00d4
                     00D3   504 _RS0	=	0x00d3
                     00D2   505 _OV	=	0x00d2
                     00D1   506 _F1	=	0x00d1
                     00D0   507 _P	=	0x00d0
                     00DF   508 _CF	=	0x00df
                     00DE   509 _CR	=	0x00de
                     00DD   510 _CCF5	=	0x00dd
                     00DC   511 _CCF4	=	0x00dc
                     00DB   512 _CCF3	=	0x00db
                     00DA   513 _CCF2	=	0x00da
                     00D9   514 _CCF1	=	0x00d9
                     00D8   515 _CCF0	=	0x00d8
                     00EF   516 _AD0EN	=	0x00ef
                     00EE   517 _BURSTEN	=	0x00ee
                     00ED   518 _AD0INT	=	0x00ed
                     00EC   519 _AD0BUSY	=	0x00ec
                     00EB   520 _AD0WINT	=	0x00eb
                     00EA   521 _AD0CM2	=	0x00ea
                     00E9   522 _AD0CM1	=	0x00e9
                     00E8   523 _AD0CM0	=	0x00e8
                     00FF   524 _SPIF0	=	0x00ff
                     00FE   525 _WCOL0	=	0x00fe
                     00FD   526 _MODF0	=	0x00fd
                     00FC   527 _RXOVRN0	=	0x00fc
                     00FB   528 _NSS0MD1	=	0x00fb
                     00FA   529 _NSS0MD0	=	0x00fa
                     00F9   530 _TXBMT0	=	0x00f9
                     00F8   531 _SPI0EN	=	0x00f8
                     0096   532 _LED_RED	=	0x0096
                     0095   533 _LED_GREEN	=	0x0095
                     0082   534 _PIN_CONFIG	=	0x0082
                     0083   535 _PIN_ENABLE	=	0x0083
                     0087   536 _IRQ	=	0x0087
                     0094   537 _NSS1	=	0x0094
                            538 ;--------------------------------------------------------
                            539 ; overlayable register banks
                            540 ;--------------------------------------------------------
                            541 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     542 	.ds 8
                            543 ;--------------------------------------------------------
                            544 ; overlayable bit register bank
                            545 ;--------------------------------------------------------
                            546 	.area BIT_BANK	(REL,OVR,DATA)
   0027                     547 bits:
   0027                     548 	.ds 1
                     8000   549 	b0 = bits[0]
                     8100   550 	b1 = bits[1]
                     8200   551 	b2 = bits[2]
                     8300   552 	b3 = bits[3]
                     8400   553 	b4 = bits[4]
                     8500   554 	b5 = bits[5]
                     8600   555 	b6 = bits[6]
                     8700   556 	b7 = bits[7]
                            557 ;--------------------------------------------------------
                            558 ; internal ram data
                            559 ;--------------------------------------------------------
                            560 	.area DSEG    (DATA)
   0070                     561 _delay_counter:
   0070                     562 	.ds 1
   0071                     563 _timer2_high:
   0071                     564 	.ds 2
                            565 ;--------------------------------------------------------
                            566 ; overlayable items in internal ram 
                            567 ;--------------------------------------------------------
                            568 	.area	OSEG    (OVR,DATA)
                            569 	.area	OSEG    (OVR,DATA)
                            570 ;--------------------------------------------------------
                            571 ; indirectly addressable internal ram data
                            572 ;--------------------------------------------------------
                            573 	.area ISEG    (DATA)
                            574 ;--------------------------------------------------------
                            575 ; absolute internal ram data
                            576 ;--------------------------------------------------------
                            577 	.area IABS    (ABS,DATA)
                            578 	.area IABS    (ABS,DATA)
                            579 ;--------------------------------------------------------
                            580 ; bit data
                            581 ;--------------------------------------------------------
                            582 	.area BSEG    (BIT)
   0031                     583 _delay_expired_sloc0_1_0:
   0031                     584 	.ds 1
                            585 ;--------------------------------------------------------
                            586 ; paged external ram data
                            587 ;--------------------------------------------------------
                            588 	.area PSEG    (PAG,XDATA)
                            589 ;--------------------------------------------------------
                            590 ; external ram data
                            591 ;--------------------------------------------------------
                            592 	.area XSEG    (XDATA)
                            593 ;--------------------------------------------------------
                            594 ; absolute external ram data
                            595 ;--------------------------------------------------------
                            596 	.area XABS    (ABS,XDATA)
                            597 ;--------------------------------------------------------
                            598 ; external initialized ram data
                            599 ;--------------------------------------------------------
                            600 	.area XISEG   (XDATA)
                            601 	.area HOME    (CODE)
                            602 	.area GSINIT0 (CODE)
                            603 	.area GSINIT1 (CODE)
                            604 	.area GSINIT2 (CODE)
                            605 	.area GSINIT3 (CODE)
                            606 	.area GSINIT4 (CODE)
                            607 	.area GSINIT5 (CODE)
                            608 	.area GSINIT  (CODE)
                            609 	.area GSFINAL (CODE)
                            610 	.area CSEG    (CODE)
                            611 ;--------------------------------------------------------
                            612 ; global & static initialisations
                            613 ;--------------------------------------------------------
                            614 	.area HOME    (CODE)
                            615 	.area GSINIT  (CODE)
                            616 	.area GSFINAL (CODE)
                            617 	.area GSINIT  (CODE)
                            618 ;--------------------------------------------------------
                            619 ; Home
                            620 ;--------------------------------------------------------
                            621 	.area HOME    (CODE)
                            622 	.area HOME    (CODE)
                            623 ;--------------------------------------------------------
                            624 ; code
                            625 ;--------------------------------------------------------
                            626 	.area CSEG    (CODE)
                            627 ;------------------------------------------------------------
                            628 ;Allocation info for local variables in function 'T3_ISR'
                            629 ;------------------------------------------------------------
                            630 ;	radio/timer.c:41: INTERRUPT(T3_ISR, INTERRUPT_TIMER3)
                            631 ;	-----------------------------------------
                            632 ;	 function T3_ISR
                            633 ;	-----------------------------------------
   5612                     634 _T3_ISR:
                     0007   635 	ar7 = 0x07
                     0006   636 	ar6 = 0x06
                     0005   637 	ar5 = 0x05
                     0004   638 	ar4 = 0x04
                     0003   639 	ar3 = 0x03
                     0002   640 	ar2 = 0x02
                     0001   641 	ar1 = 0x01
                     0000   642 	ar0 = 0x00
   5612 C0 27         [24]  643 	push	bits
   5614 C0 E0         [24]  644 	push	acc
   5616 C0 F0         [24]  645 	push	b
   5618 C0 82         [24]  646 	push	dpl
   561A C0 83         [24]  647 	push	dph
   561C C0 07         [24]  648 	push	(0+7)
   561E C0 06         [24]  649 	push	(0+6)
   5620 C0 05         [24]  650 	push	(0+5)
   5622 C0 04         [24]  651 	push	(0+4)
   5624 C0 03         [24]  652 	push	(0+3)
   5626 C0 02         [24]  653 	push	(0+2)
   5628 C0 01         [24]  654 	push	(0+1)
   562A C0 00         [24]  655 	push	(0+0)
   562C C0 D0         [24]  656 	push	psw
   562E 75 D0 00      [24]  657 	mov	psw,#0x00
                            658 ;	radio/timer.c:44: TMR3CN = 0x04;
   5631 75 91 04      [24]  659 	mov	_TMR3CN,#0x04
                            660 ;	radio/timer.c:47: at_timer();
   5634 12 05 D4      [24]  661 	lcall	_at_timer
                            662 ;	radio/timer.c:50: if (delay_counter > 0)
   5637 E5 70         [12]  663 	mov	a,_delay_counter
   5639 60 02         [24]  664 	jz	00103$
                            665 ;	radio/timer.c:51: delay_counter--;
   563B 15 70         [12]  666 	dec	_delay_counter
   563D                     667 00103$:
   563D D0 D0         [24]  668 	pop	psw
   563F D0 00         [24]  669 	pop	(0+0)
   5641 D0 01         [24]  670 	pop	(0+1)
   5643 D0 02         [24]  671 	pop	(0+2)
   5645 D0 03         [24]  672 	pop	(0+3)
   5647 D0 04         [24]  673 	pop	(0+4)
   5649 D0 05         [24]  674 	pop	(0+5)
   564B D0 06         [24]  675 	pop	(0+6)
   564D D0 07         [24]  676 	pop	(0+7)
   564F D0 83         [24]  677 	pop	dph
   5651 D0 82         [24]  678 	pop	dpl
   5653 D0 F0         [24]  679 	pop	b
   5655 D0 E0         [24]  680 	pop	acc
   5657 D0 27         [24]  681 	pop	bits
   5659 32            [24]  682 	reti
                            683 ;------------------------------------------------------------
                            684 ;Allocation info for local variables in function 'delay_set'
                            685 ;------------------------------------------------------------
                            686 ;msec                      Allocated to registers r6 r7 
                            687 ;------------------------------------------------------------
                            688 ;	radio/timer.c:55: delay_set(register uint16_t msec)
                            689 ;	-----------------------------------------
                            690 ;	 function delay_set
                            691 ;	-----------------------------------------
   565A                     692 _delay_set:
   565A AE 82         [24]  693 	mov	r6,dpl
   565C AF 83         [24]  694 	mov	r7,dph
                            695 ;	radio/timer.c:57: if (msec >= 2550) {
   565E C3            [12]  696 	clr	c
   565F EE            [12]  697 	mov	a,r6
   5660 94 F6         [12]  698 	subb	a,#0xF6
   5662 EF            [12]  699 	mov	a,r7
   5663 94 09         [12]  700 	subb	a,#0x09
   5665 40 04         [24]  701 	jc	00102$
                            702 ;	radio/timer.c:58: delay_counter = 255;
   5667 75 70 FF      [24]  703 	mov	_delay_counter,#0xFF
   566A 22            [24]  704 	ret
   566B                     705 00102$:
                            706 ;	radio/timer.c:60: delay_counter = (msec + 9) / 10;
   566B 74 09         [12]  707 	mov	a,#0x09
   566D 2E            [12]  708 	add	a,r6
   566E FE            [12]  709 	mov	r6,a
   566F E4            [12]  710 	clr	a
   5670 3F            [12]  711 	addc	a,r7
   5671 FF            [12]  712 	mov	r7,a
   5672 90 05 70      [24]  713 	mov	dptr,#__divuint_PARM_2
   5675 74 0A         [12]  714 	mov	a,#0x0A
   5677 F0            [24]  715 	movx	@dptr,a
   5678 E4            [12]  716 	clr	a
   5679 A3            [24]  717 	inc	dptr
   567A F0            [24]  718 	movx	@dptr,a
   567B 8E 82         [24]  719 	mov	dpl,r6
   567D 8F 83         [24]  720 	mov	dph,r7
   567F 12 57 5E      [24]  721 	lcall	__divuint
   5682 AE 82         [24]  722 	mov	r6,dpl
   5684 8E 70         [24]  723 	mov	_delay_counter,r6
   5686 22            [24]  724 	ret
                            725 ;------------------------------------------------------------
                            726 ;Allocation info for local variables in function 'delay_set_ticks'
                            727 ;------------------------------------------------------------
                            728 ;ticks                     Allocated to registers 
                            729 ;------------------------------------------------------------
                            730 ;	radio/timer.c:65: delay_set_ticks(register uint8_t ticks)
                            731 ;	-----------------------------------------
                            732 ;	 function delay_set_ticks
                            733 ;	-----------------------------------------
   5687                     734 _delay_set_ticks:
   5687 85 82 70      [24]  735 	mov	_delay_counter,dpl
                            736 ;	radio/timer.c:67: delay_counter = ticks;
   568A 22            [24]  737 	ret
                            738 ;------------------------------------------------------------
                            739 ;Allocation info for local variables in function 'delay_expired'
                            740 ;------------------------------------------------------------
                            741 ;	radio/timer.c:71: delay_expired(void)
                            742 ;	-----------------------------------------
                            743 ;	 function delay_expired
                            744 ;	-----------------------------------------
   568B                     745 _delay_expired:
                            746 ;	radio/timer.c:73: return delay_counter == 0;
   568B E5 70         [12]  747 	mov	a,_delay_counter
   568D B4 01 00      [24]  748 	cjne	a,#0x01,00103$
   5690                     749 00103$:
   5690 92 31         [24]  750 	mov  _delay_expired_sloc0_1_0,c
   5692 22            [24]  751 	ret
                            752 ;------------------------------------------------------------
                            753 ;Allocation info for local variables in function 'delay_msec'
                            754 ;------------------------------------------------------------
                            755 ;msec                      Allocated to registers r6 r7 
                            756 ;------------------------------------------------------------
                            757 ;	radio/timer.c:77: delay_msec(register uint16_t msec)
                            758 ;	-----------------------------------------
                            759 ;	 function delay_msec
                            760 ;	-----------------------------------------
   5693                     761 _delay_msec:
                            762 ;	radio/timer.c:79: delay_set(msec);
   5693 12 56 5A      [24]  763 	lcall	_delay_set
                            764 ;	radio/timer.c:80: while (!delay_expired())
   5696                     765 00101$:
   5696 12 56 8B      [24]  766 	lcall	_delay_expired
   5699 50 FB         [24]  767 	jnc	00101$
   569B 22            [24]  768 	ret
                            769 ;------------------------------------------------------------
                            770 ;Allocation info for local variables in function 'T2_ISR'
                            771 ;------------------------------------------------------------
                            772 ;	radio/timer.c:86: INTERRUPT(T2_ISR, INTERRUPT_TIMER2)
                            773 ;	-----------------------------------------
                            774 ;	 function T2_ISR
                            775 ;	-----------------------------------------
   569C                     776 _T2_ISR:
   569C C0 27         [24]  777 	push	bits
   569E C0 E0         [24]  778 	push	acc
   56A0 C0 F0         [24]  779 	push	b
   56A2 C0 82         [24]  780 	push	dpl
   56A4 C0 83         [24]  781 	push	dph
   56A6 C0 07         [24]  782 	push	(0+7)
   56A8 C0 06         [24]  783 	push	(0+6)
   56AA C0 05         [24]  784 	push	(0+5)
   56AC C0 04         [24]  785 	push	(0+4)
   56AE C0 03         [24]  786 	push	(0+3)
   56B0 C0 02         [24]  787 	push	(0+2)
   56B2 C0 01         [24]  788 	push	(0+1)
   56B4 C0 00         [24]  789 	push	(0+0)
   56B6 C0 D0         [24]  790 	push	psw
   56B8 75 D0 00      [24]  791 	mov	psw,#0x00
                            792 ;	radio/timer.c:89: TMR2CN = 0x04;
   56BB 75 C8 04      [24]  793 	mov	_TMR2CN,#0x04
                            794 ;	radio/timer.c:92: timer2_high++;
   56BE 74 01         [12]  795 	mov	a,#0x01
   56C0 25 71         [12]  796 	add	a,_timer2_high
   56C2 F5 71         [12]  797 	mov	_timer2_high,a
   56C4 E4            [12]  798 	clr	a
   56C5 35 72         [12]  799 	addc	a,(_timer2_high + 1)
   56C7 F5 72         [12]  800 	mov	(_timer2_high + 1),a
                            801 ;	radio/timer.c:94: if (feature_rtscts) {
   56C9 30 07 03      [24]  802 	jnb	_feature_rtscts,00103$
                            803 ;	radio/timer.c:95: serial_check_rts();
   56CC 12 40 18      [24]  804 	lcall	_serial_check_rts
   56CF                     805 00103$:
   56CF D0 D0         [24]  806 	pop	psw
   56D1 D0 00         [24]  807 	pop	(0+0)
   56D3 D0 01         [24]  808 	pop	(0+1)
   56D5 D0 02         [24]  809 	pop	(0+2)
   56D7 D0 03         [24]  810 	pop	(0+3)
   56D9 D0 04         [24]  811 	pop	(0+4)
   56DB D0 05         [24]  812 	pop	(0+5)
   56DD D0 06         [24]  813 	pop	(0+6)
   56DF D0 07         [24]  814 	pop	(0+7)
   56E1 D0 83         [24]  815 	pop	dph
   56E3 D0 82         [24]  816 	pop	dpl
   56E5 D0 F0         [24]  817 	pop	b
   56E7 D0 E0         [24]  818 	pop	acc
   56E9 D0 27         [24]  819 	pop	bits
   56EB 32            [24]  820 	reti
                            821 ;------------------------------------------------------------
                            822 ;Allocation info for local variables in function 'timer2_16'
                            823 ;------------------------------------------------------------
                            824 ;low                       Allocated to registers r6 
                            825 ;high                      Allocated to registers r7 
                            826 ;------------------------------------------------------------
                            827 ;	radio/timer.c:102: timer2_16(void)
                            828 ;	-----------------------------------------
                            829 ;	 function timer2_16
                            830 ;	-----------------------------------------
   56EC                     831 _timer2_16:
                            832 ;	radio/timer.c:105: do {
   56EC                     833 00101$:
                            834 ;	radio/timer.c:108: high = TMR2H;
   56EC AF CD         [24]  835 	mov	r7,_TMR2H
                            836 ;	radio/timer.c:109: low = TMR2L;
   56EE AE CC         [24]  837 	mov	r6,_TMR2L
                            838 ;	radio/timer.c:110: } while (high != TMR2H);
   56F0 EF            [12]  839 	mov	a,r7
   56F1 B5 CD F8      [24]  840 	cjne	a,_TMR2H,00101$
                            841 ;	radio/timer.c:111: return low | (((uint16_t)high)<<8);
   56F4 8F 05         [24]  842 	mov	ar5,r7
   56F6 E4            [12]  843 	clr	a
   56F7 FF            [12]  844 	mov	r7,a
   56F8 FC            [12]  845 	mov	r4,a
   56F9 EE            [12]  846 	mov	a,r6
   56FA 42 07         [12]  847 	orl	ar7,a
   56FC EC            [12]  848 	mov	a,r4
   56FD 42 05         [12]  849 	orl	ar5,a
   56FF 8F 82         [24]  850 	mov	dpl,r7
   5701 8D 83         [24]  851 	mov	dph,r5
   5703 22            [24]  852 	ret
                            853 ;------------------------------------------------------------
                            854 ;Allocation info for local variables in function 'timer2_tick'
                            855 ;------------------------------------------------------------
                            856 ;low                       Allocated to registers r4 r5 
                            857 ;high                      Allocated to registers r6 r7 
                            858 ;------------------------------------------------------------
                            859 ;	radio/timer.c:132: timer2_tick(void)
                            860 ;	-----------------------------------------
                            861 ;	 function timer2_tick
                            862 ;	-----------------------------------------
   5704                     863 _timer2_tick:
                            864 ;	radio/timer.c:135: do {
   5704                     865 00101$:
                            866 ;	radio/timer.c:136: high = timer2_high;
   5704 AE 71         [24]  867 	mov	r6,_timer2_high
   5706 AF 72         [24]  868 	mov	r7,(_timer2_high + 1)
                            869 ;	radio/timer.c:137: low = timer2_16();
   5708 C0 07         [24]  870 	push	ar7
   570A C0 06         [24]  871 	push	ar6
   570C 12 56 EC      [24]  872 	lcall	_timer2_16
   570F AC 82         [24]  873 	mov	r4,dpl
   5711 AD 83         [24]  874 	mov	r5,dph
   5713 D0 06         [24]  875 	pop	ar6
   5715 D0 07         [24]  876 	pop	ar7
                            877 ;	radio/timer.c:138: } while (high != timer2_high);
   5717 EE            [12]  878 	mov	a,r6
   5718 B5 71 E9      [24]  879 	cjne	a,_timer2_high,00101$
   571B EF            [12]  880 	mov	a,r7
   571C B5 72 E5      [24]  881 	cjne	a,(_timer2_high + 1),00101$
                            882 ;	radio/timer.c:141: return (high<<11) | (low>>5);
   571F EE            [12]  883 	mov	a,r6
   5720 C4            [12]  884 	swap	a
   5721 03            [12]  885 	rr	a
   5722 54 F8         [12]  886 	anl	a,#0xF8
   5724 FF            [12]  887 	mov	r7,a
   5725 7E 00         [12]  888 	mov	r6,#0x00
   5727 ED            [12]  889 	mov	a,r5
   5728 C4            [12]  890 	swap	a
   5729 03            [12]  891 	rr	a
   572A CC            [12]  892 	xch	a,r4
   572B C4            [12]  893 	swap	a
   572C 03            [12]  894 	rr	a
   572D 54 07         [12]  895 	anl	a,#0x07
   572F 6C            [12]  896 	xrl	a,r4
   5730 CC            [12]  897 	xch	a,r4
   5731 54 07         [12]  898 	anl	a,#0x07
   5733 CC            [12]  899 	xch	a,r4
   5734 6C            [12]  900 	xrl	a,r4
   5735 CC            [12]  901 	xch	a,r4
   5736 FD            [12]  902 	mov	r5,a
   5737 EC            [12]  903 	mov	a,r4
   5738 42 06         [12]  904 	orl	ar6,a
   573A ED            [12]  905 	mov	a,r5
   573B 42 07         [12]  906 	orl	ar7,a
   573D 8E 82         [24]  907 	mov	dpl,r6
   573F 8F 83         [24]  908 	mov	dph,r7
   5741 22            [24]  909 	ret
                            910 ;------------------------------------------------------------
                            911 ;Allocation info for local variables in function 'timer_init'
                            912 ;------------------------------------------------------------
                            913 ;	radio/timer.c:146: timer_init(void)
                            914 ;	-----------------------------------------
                            915 ;	 function timer_init
                            916 ;	-----------------------------------------
   5742                     917 _timer_init:
                            918 ;	radio/timer.c:150: TMR3RLL	 = (65536UL - ((SYSCLK / 12) / 100)) & 0xff;
   5742 75 92 40      [24]  919 	mov	_TMR3RLL,#0x40
                            920 ;	radio/timer.c:151: TMR3RLH	 = ((65536UL - ((SYSCLK / 12) / 100)) >> 8) & 0xff;
   5745 75 93 B0      [24]  921 	mov	_TMR3RLH,#0xB0
                            922 ;	radio/timer.c:152: TMR3CN	 = 0x04;	// count at SYSCLK / 12 and start
   5748 75 91 04      [24]  923 	mov	_TMR3CN,#0x04
                            924 ;	radio/timer.c:153: EIE1	|= 0x80;
   574B 43 E6 80      [24]  925 	orl	_EIE1,#0x80
                            926 ;	radio/timer.c:156: TMR2RLL = 0;
   574E 75 CA 00      [24]  927 	mov	_TMR2RLL,#0x00
                            928 ;	radio/timer.c:157: TMR2RLH = 0;
   5751 75 CB 00      [24]  929 	mov	_TMR2RLH,#0x00
                            930 ;	radio/timer.c:158: TMR2CN  = 0x04; // start running, count at SYSCLK/12
   5754 75 C8 04      [24]  931 	mov	_TMR2CN,#0x04
                            932 ;	radio/timer.c:159: ET2 = 1;
   5757 D2 AD         [12]  933 	setb	_ET2
   5759 22            [24]  934 	ret
                            935 ;------------------------------------------------------------
                            936 ;Allocation info for local variables in function 'timer_entropy'
                            937 ;------------------------------------------------------------
                            938 ;	radio/timer.c:164: timer_entropy(void)
                            939 ;	-----------------------------------------
                            940 ;	 function timer_entropy
                            941 ;	-----------------------------------------
   575A                     942 _timer_entropy:
                            943 ;	radio/timer.c:167: return TMR2L;
   575A 85 CC 82      [24]  944 	mov	dpl,_TMR2L
   575D 22            [24]  945 	ret
                            946 	.area CSEG    (CODE)
                            947 	.area CONST   (CODE)
                            948 	.area XINIT   (CODE)
                            949 	.area CABS    (ABS,CODE)
