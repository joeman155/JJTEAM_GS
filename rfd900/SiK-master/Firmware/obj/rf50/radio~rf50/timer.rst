                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:08 2013
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
                             16 	.globl _SDN
                             17 	.globl _NSS1
                             18 	.globl _IRQ
                             19 	.globl _BUTTON_DOWN
                             20 	.globl _BUTTON_UP
                             21 	.globl _BUTTON_ENTER
                             22 	.globl _LED_GREEN
                             23 	.globl _LED_RED
                             24 	.globl _SPI0EN
                             25 	.globl _TXBMT0
                             26 	.globl _NSS0MD0
                             27 	.globl _NSS0MD1
                             28 	.globl _RXOVRN0
                             29 	.globl _MODF0
                             30 	.globl _WCOL0
                             31 	.globl _SPIF0
                             32 	.globl _AD0CM0
                             33 	.globl _AD0CM1
                             34 	.globl _AD0CM2
                             35 	.globl _AD0WINT
                             36 	.globl _AD0BUSY
                             37 	.globl _AD0INT
                             38 	.globl _BURSTEN
                             39 	.globl _AD0EN
                             40 	.globl _CCF0
                             41 	.globl _CCF1
                             42 	.globl _CCF2
                             43 	.globl _CCF3
                             44 	.globl _CCF4
                             45 	.globl _CCF5
                             46 	.globl _CR
                             47 	.globl _CF
                             48 	.globl _P
                             49 	.globl _F1
                             50 	.globl _OV
                             51 	.globl _RS0
                             52 	.globl _RS1
                             53 	.globl _F0
                             54 	.globl _AC
                             55 	.globl _CY
                             56 	.globl _T2XCLK
                             57 	.globl _T2RCLK
                             58 	.globl _TR2
                             59 	.globl _T2SPLIT
                             60 	.globl _TF2CEN
                             61 	.globl _TF2LEN
                             62 	.globl _TF2L
                             63 	.globl _TF2H
                             64 	.globl _SI
                             65 	.globl _ACK
                             66 	.globl _ARBLOST
                             67 	.globl _ACKRQ
                             68 	.globl _STO
                             69 	.globl _STA
                             70 	.globl _TXMODE
                             71 	.globl _MASTER
                             72 	.globl _PX0
                             73 	.globl _PT0
                             74 	.globl _PX1
                             75 	.globl _PT1
                             76 	.globl _PS0
                             77 	.globl _PT2
                             78 	.globl _PSPI0
                             79 	.globl _SPI1EN
                             80 	.globl _TXBMT1
                             81 	.globl _NSS1MD0
                             82 	.globl _NSS1MD1
                             83 	.globl _RXOVRN1
                             84 	.globl _MODF1
                             85 	.globl _WCOL1
                             86 	.globl _SPIF1
                             87 	.globl _EX0
                             88 	.globl _ET0
                             89 	.globl _EX1
                             90 	.globl _ET1
                             91 	.globl _ES0
                             92 	.globl _ET2
                             93 	.globl _ESPI0
                             94 	.globl _EA
                             95 	.globl _RI0
                             96 	.globl _TI0
                             97 	.globl _RB80
                             98 	.globl _TB80
                             99 	.globl _REN0
                            100 	.globl _MCE0
                            101 	.globl _S0MODE
                            102 	.globl _CRC0VAL
                            103 	.globl _CRC0INIT
                            104 	.globl _CRC0SEL
                            105 	.globl _IT0
                            106 	.globl _IE0
                            107 	.globl _IT1
                            108 	.globl _IE1
                            109 	.globl _TR0
                            110 	.globl _TF0
                            111 	.globl _TR1
                            112 	.globl _TF1
                            113 	.globl _PCA0CP4
                            114 	.globl _PCA0CP0
                            115 	.globl _PCA0
                            116 	.globl _PCA0CP3
                            117 	.globl _PCA0CP2
                            118 	.globl _PCA0CP1
                            119 	.globl _PCA0CP5
                            120 	.globl _TMR2
                            121 	.globl _TMR2RL
                            122 	.globl _ADC0LT
                            123 	.globl _ADC0GT
                            124 	.globl _ADC0
                            125 	.globl _TMR3
                            126 	.globl _TMR3RL
                            127 	.globl _TOFF
                            128 	.globl _DP
                            129 	.globl _VDM0CN
                            130 	.globl _PCA0CPH4
                            131 	.globl _PCA0CPL4
                            132 	.globl _PCA0CPH0
                            133 	.globl _PCA0CPL0
                            134 	.globl _PCA0H
                            135 	.globl _PCA0L
                            136 	.globl _SPI0CN
                            137 	.globl _EIP2
                            138 	.globl _EIP1
                            139 	.globl _SMB0ADM
                            140 	.globl _SMB0ADR
                            141 	.globl _P2MDIN
                            142 	.globl _P1MDIN
                            143 	.globl _P0MDIN
                            144 	.globl _B
                            145 	.globl _RSTSRC
                            146 	.globl _PCA0CPH3
                            147 	.globl _PCA0CPL3
                            148 	.globl _PCA0CPH2
                            149 	.globl _PCA0CPL2
                            150 	.globl _PCA0CPH1
                            151 	.globl _PCA0CPL1
                            152 	.globl _ADC0CN
                            153 	.globl _EIE2
                            154 	.globl _EIE1
                            155 	.globl _FLWR
                            156 	.globl _IT01CF
                            157 	.globl _XBR2
                            158 	.globl _XBR1
                            159 	.globl _XBR0
                            160 	.globl _ACC
                            161 	.globl _PCA0PWM
                            162 	.globl _PCA0CPM4
                            163 	.globl _PCA0CPM3
                            164 	.globl _PCA0CPM2
                            165 	.globl _PCA0CPM1
                            166 	.globl _PCA0CPM0
                            167 	.globl _PCA0MD
                            168 	.globl _PCA0CN
                            169 	.globl _P0MAT
                            170 	.globl _P2SKIP
                            171 	.globl _P1SKIP
                            172 	.globl _P0SKIP
                            173 	.globl _PCA0CPH5
                            174 	.globl _PCA0CPL5
                            175 	.globl _REF0CN
                            176 	.globl _PSW
                            177 	.globl _P1MAT
                            178 	.globl _PCA0CPM5
                            179 	.globl _TMR2H
                            180 	.globl _TMR2L
                            181 	.globl _TMR2RLH
                            182 	.globl _TMR2RLL
                            183 	.globl _REG0CN
                            184 	.globl _TMR2CN
                            185 	.globl _P0MASK
                            186 	.globl _ADC0LTH
                            187 	.globl _ADC0LTL
                            188 	.globl _ADC0GTH
                            189 	.globl _ADC0GTL
                            190 	.globl _SMB0DAT
                            191 	.globl _SMB0CF
                            192 	.globl _SMB0CN
                            193 	.globl _P1MASK
                            194 	.globl _ADC0H
                            195 	.globl _ADC0L
                            196 	.globl _ADC0TK
                            197 	.globl _ADC0CF
                            198 	.globl _ADC0MX
                            199 	.globl _ADC0PWR
                            200 	.globl _ADC0AC
                            201 	.globl _IREF0CN
                            202 	.globl _IP
                            203 	.globl _FLKEY
                            204 	.globl _FLSCL
                            205 	.globl _PMU0CF
                            206 	.globl _OSCICL
                            207 	.globl _OSCICN
                            208 	.globl _OSCXCN
                            209 	.globl _SPI1CN
                            210 	.globl _ONESHOT
                            211 	.globl _EMI0TC
                            212 	.globl _RTC0KEY
                            213 	.globl _RTC0DAT
                            214 	.globl _RTC0ADR
                            215 	.globl _EMI0CF
                            216 	.globl _EMI0CN
                            217 	.globl _CLKSEL
                            218 	.globl _IE
                            219 	.globl _SFRPAGE
                            220 	.globl _P2DRV
                            221 	.globl _P2MDOUT
                            222 	.globl _P1DRV
                            223 	.globl _P1MDOUT
                            224 	.globl _P0DRV
                            225 	.globl _P0MDOUT
                            226 	.globl _SPI0DAT
                            227 	.globl _SPI0CKR
                            228 	.globl _SPI0CFG
                            229 	.globl _P2
                            230 	.globl _CPT0MX
                            231 	.globl _CPT1MX
                            232 	.globl _CPT0MD
                            233 	.globl _CPT1MD
                            234 	.globl _CPT0CN
                            235 	.globl _CPT1CN
                            236 	.globl _SBUF0
                            237 	.globl _SCON0
                            238 	.globl _CRC0CNT
                            239 	.globl _DC0CN
                            240 	.globl _CRC0AUTO
                            241 	.globl _DC0CF
                            242 	.globl _TMR3H
                            243 	.globl _CRC0FLIP
                            244 	.globl _TMR3L
                            245 	.globl _CRC0IN
                            246 	.globl _TMR3RLH
                            247 	.globl _CRC0CN
                            248 	.globl _TMR3RLL
                            249 	.globl _CRC0DAT
                            250 	.globl _TMR3CN
                            251 	.globl _P1
                            252 	.globl _PSCTL
                            253 	.globl _CKCON
                            254 	.globl _TH1
                            255 	.globl _TH0
                            256 	.globl _TL1
                            257 	.globl _TL0
                            258 	.globl _TMOD
                            259 	.globl _TCON
                            260 	.globl _PCON
                            261 	.globl _TOFFH
                            262 	.globl _SPI1DAT
                            263 	.globl _TOFFL
                            264 	.globl _SPI1CKR
                            265 	.globl _SPI1CFG
                            266 	.globl _DPH
                            267 	.globl _DPL
                            268 	.globl _SP
                            269 	.globl _P0
                            270 	.globl _delay_set
                            271 	.globl _delay_set_ticks
                            272 	.globl _delay_expired
                            273 	.globl _delay_msec
                            274 	.globl _timer2_16
                            275 	.globl _timer2_tick
                            276 	.globl _timer_init
                            277 	.globl _timer_entropy
                            278 ;--------------------------------------------------------
                            279 ; special function registers
                            280 ;--------------------------------------------------------
                            281 	.area RSEG    (ABS,DATA)
   0000                     282 	.org 0x0000
                     0080   283 _P0	=	0x0080
                     0081   284 _SP	=	0x0081
                     0082   285 _DPL	=	0x0082
                     0083   286 _DPH	=	0x0083
                     0084   287 _SPI1CFG	=	0x0084
                     0085   288 _SPI1CKR	=	0x0085
                     0085   289 _TOFFL	=	0x0085
                     0086   290 _SPI1DAT	=	0x0086
                     0086   291 _TOFFH	=	0x0086
                     0087   292 _PCON	=	0x0087
                     0088   293 _TCON	=	0x0088
                     0089   294 _TMOD	=	0x0089
                     008A   295 _TL0	=	0x008a
                     008B   296 _TL1	=	0x008b
                     008C   297 _TH0	=	0x008c
                     008D   298 _TH1	=	0x008d
                     008E   299 _CKCON	=	0x008e
                     008F   300 _PSCTL	=	0x008f
                     0090   301 _P1	=	0x0090
                     0091   302 _TMR3CN	=	0x0091
                     0091   303 _CRC0DAT	=	0x0091
                     0092   304 _TMR3RLL	=	0x0092
                     0092   305 _CRC0CN	=	0x0092
                     0093   306 _TMR3RLH	=	0x0093
                     0093   307 _CRC0IN	=	0x0093
                     0094   308 _TMR3L	=	0x0094
                     0095   309 _CRC0FLIP	=	0x0095
                     0095   310 _TMR3H	=	0x0095
                     0096   311 _DC0CF	=	0x0096
                     0096   312 _CRC0AUTO	=	0x0096
                     0097   313 _DC0CN	=	0x0097
                     0097   314 _CRC0CNT	=	0x0097
                     0098   315 _SCON0	=	0x0098
                     0099   316 _SBUF0	=	0x0099
                     009A   317 _CPT1CN	=	0x009a
                     009B   318 _CPT0CN	=	0x009b
                     009C   319 _CPT1MD	=	0x009c
                     009D   320 _CPT0MD	=	0x009d
                     009E   321 _CPT1MX	=	0x009e
                     009F   322 _CPT0MX	=	0x009f
                     00A0   323 _P2	=	0x00a0
                     00A1   324 _SPI0CFG	=	0x00a1
                     00A2   325 _SPI0CKR	=	0x00a2
                     00A3   326 _SPI0DAT	=	0x00a3
                     00A4   327 _P0MDOUT	=	0x00a4
                     00A4   328 _P0DRV	=	0x00a4
                     00A5   329 _P1MDOUT	=	0x00a5
                     00A5   330 _P1DRV	=	0x00a5
                     00A6   331 _P2MDOUT	=	0x00a6
                     00A6   332 _P2DRV	=	0x00a6
                     00A7   333 _SFRPAGE	=	0x00a7
                     00A8   334 _IE	=	0x00a8
                     00A9   335 _CLKSEL	=	0x00a9
                     00AA   336 _EMI0CN	=	0x00aa
                     00AB   337 _EMI0CF	=	0x00ab
                     00AC   338 _RTC0ADR	=	0x00ac
                     00AD   339 _RTC0DAT	=	0x00ad
                     00AE   340 _RTC0KEY	=	0x00ae
                     00AF   341 _EMI0TC	=	0x00af
                     00AF   342 _ONESHOT	=	0x00af
                     00B0   343 _SPI1CN	=	0x00b0
                     00B1   344 _OSCXCN	=	0x00b1
                     00B2   345 _OSCICN	=	0x00b2
                     00B3   346 _OSCICL	=	0x00b3
                     00B5   347 _PMU0CF	=	0x00b5
                     00B6   348 _FLSCL	=	0x00b6
                     00B7   349 _FLKEY	=	0x00b7
                     00B8   350 _IP	=	0x00b8
                     00B9   351 _IREF0CN	=	0x00b9
                     00BA   352 _ADC0AC	=	0x00ba
                     00BA   353 _ADC0PWR	=	0x00ba
                     00BB   354 _ADC0MX	=	0x00bb
                     00BC   355 _ADC0CF	=	0x00bc
                     00BD   356 _ADC0TK	=	0x00bd
                     00BD   357 _ADC0L	=	0x00bd
                     00BE   358 _ADC0H	=	0x00be
                     00BF   359 _P1MASK	=	0x00bf
                     00C0   360 _SMB0CN	=	0x00c0
                     00C1   361 _SMB0CF	=	0x00c1
                     00C2   362 _SMB0DAT	=	0x00c2
                     00C3   363 _ADC0GTL	=	0x00c3
                     00C4   364 _ADC0GTH	=	0x00c4
                     00C5   365 _ADC0LTL	=	0x00c5
                     00C6   366 _ADC0LTH	=	0x00c6
                     00C7   367 _P0MASK	=	0x00c7
                     00C8   368 _TMR2CN	=	0x00c8
                     00C9   369 _REG0CN	=	0x00c9
                     00CA   370 _TMR2RLL	=	0x00ca
                     00CB   371 _TMR2RLH	=	0x00cb
                     00CC   372 _TMR2L	=	0x00cc
                     00CD   373 _TMR2H	=	0x00cd
                     00CE   374 _PCA0CPM5	=	0x00ce
                     00CF   375 _P1MAT	=	0x00cf
                     00D0   376 _PSW	=	0x00d0
                     00D1   377 _REF0CN	=	0x00d1
                     00D2   378 _PCA0CPL5	=	0x00d2
                     00D3   379 _PCA0CPH5	=	0x00d3
                     00D4   380 _P0SKIP	=	0x00d4
                     00D5   381 _P1SKIP	=	0x00d5
                     00D6   382 _P2SKIP	=	0x00d6
                     00D7   383 _P0MAT	=	0x00d7
                     00D8   384 _PCA0CN	=	0x00d8
                     00D9   385 _PCA0MD	=	0x00d9
                     00DA   386 _PCA0CPM0	=	0x00da
                     00DB   387 _PCA0CPM1	=	0x00db
                     00DC   388 _PCA0CPM2	=	0x00dc
                     00DD   389 _PCA0CPM3	=	0x00dd
                     00DE   390 _PCA0CPM4	=	0x00de
                     00DF   391 _PCA0PWM	=	0x00df
                     00E0   392 _ACC	=	0x00e0
                     00E1   393 _XBR0	=	0x00e1
                     00E2   394 _XBR1	=	0x00e2
                     00E3   395 _XBR2	=	0x00e3
                     00E4   396 _IT01CF	=	0x00e4
                     00E5   397 _FLWR	=	0x00e5
                     00E6   398 _EIE1	=	0x00e6
                     00E7   399 _EIE2	=	0x00e7
                     00E8   400 _ADC0CN	=	0x00e8
                     00E9   401 _PCA0CPL1	=	0x00e9
                     00EA   402 _PCA0CPH1	=	0x00ea
                     00EB   403 _PCA0CPL2	=	0x00eb
                     00EC   404 _PCA0CPH2	=	0x00ec
                     00ED   405 _PCA0CPL3	=	0x00ed
                     00EE   406 _PCA0CPH3	=	0x00ee
                     00EF   407 _RSTSRC	=	0x00ef
                     00F0   408 _B	=	0x00f0
                     00F1   409 _P0MDIN	=	0x00f1
                     00F2   410 _P1MDIN	=	0x00f2
                     00F3   411 _P2MDIN	=	0x00f3
                     00F4   412 _SMB0ADR	=	0x00f4
                     00F5   413 _SMB0ADM	=	0x00f5
                     00F6   414 _EIP1	=	0x00f6
                     00F7   415 _EIP2	=	0x00f7
                     00F8   416 _SPI0CN	=	0x00f8
                     00F9   417 _PCA0L	=	0x00f9
                     00FA   418 _PCA0H	=	0x00fa
                     00FB   419 _PCA0CPL0	=	0x00fb
                     00FC   420 _PCA0CPH0	=	0x00fc
                     00FD   421 _PCA0CPL4	=	0x00fd
                     00FE   422 _PCA0CPH4	=	0x00fe
                     00FF   423 _VDM0CN	=	0x00ff
                     8382   424 _DP	=	0x8382
                     8685   425 _TOFF	=	0x8685
                     9392   426 _TMR3RL	=	0x9392
                     9594   427 _TMR3	=	0x9594
                     BEBD   428 _ADC0	=	0xbebd
                     C4C3   429 _ADC0GT	=	0xc4c3
                     C6C5   430 _ADC0LT	=	0xc6c5
                     CBCA   431 _TMR2RL	=	0xcbca
                     CDCC   432 _TMR2	=	0xcdcc
                     D3D2   433 _PCA0CP5	=	0xd3d2
                     EAE9   434 _PCA0CP1	=	0xeae9
                     ECEB   435 _PCA0CP2	=	0xeceb
                     EEED   436 _PCA0CP3	=	0xeeed
                     FAF9   437 _PCA0	=	0xfaf9
                     FCFB   438 _PCA0CP0	=	0xfcfb
                     FEFD   439 _PCA0CP4	=	0xfefd
                            440 ;--------------------------------------------------------
                            441 ; special function bits
                            442 ;--------------------------------------------------------
                            443 	.area RSEG    (ABS,DATA)
   0000                     444 	.org 0x0000
                     008F   445 _TF1	=	0x008f
                     008E   446 _TR1	=	0x008e
                     008D   447 _TF0	=	0x008d
                     008C   448 _TR0	=	0x008c
                     008B   449 _IE1	=	0x008b
                     008A   450 _IT1	=	0x008a
                     0089   451 _IE0	=	0x0089
                     0088   452 _IT0	=	0x0088
                     0096   453 _CRC0SEL	=	0x0096
                     0095   454 _CRC0INIT	=	0x0095
                     0094   455 _CRC0VAL	=	0x0094
                     009F   456 _S0MODE	=	0x009f
                     009D   457 _MCE0	=	0x009d
                     009C   458 _REN0	=	0x009c
                     009B   459 _TB80	=	0x009b
                     009A   460 _RB80	=	0x009a
                     0099   461 _TI0	=	0x0099
                     0098   462 _RI0	=	0x0098
                     00AF   463 _EA	=	0x00af
                     00AE   464 _ESPI0	=	0x00ae
                     00AD   465 _ET2	=	0x00ad
                     00AC   466 _ES0	=	0x00ac
                     00AB   467 _ET1	=	0x00ab
                     00AA   468 _EX1	=	0x00aa
                     00A9   469 _ET0	=	0x00a9
                     00A8   470 _EX0	=	0x00a8
                     00B7   471 _SPIF1	=	0x00b7
                     00B6   472 _WCOL1	=	0x00b6
                     00B5   473 _MODF1	=	0x00b5
                     00B4   474 _RXOVRN1	=	0x00b4
                     00B3   475 _NSS1MD1	=	0x00b3
                     00B2   476 _NSS1MD0	=	0x00b2
                     00B1   477 _TXBMT1	=	0x00b1
                     00B0   478 _SPI1EN	=	0x00b0
                     00BE   479 _PSPI0	=	0x00be
                     00BD   480 _PT2	=	0x00bd
                     00BC   481 _PS0	=	0x00bc
                     00BB   482 _PT1	=	0x00bb
                     00BA   483 _PX1	=	0x00ba
                     00B9   484 _PT0	=	0x00b9
                     00B8   485 _PX0	=	0x00b8
                     00C7   486 _MASTER	=	0x00c7
                     00C6   487 _TXMODE	=	0x00c6
                     00C5   488 _STA	=	0x00c5
                     00C4   489 _STO	=	0x00c4
                     00C3   490 _ACKRQ	=	0x00c3
                     00C2   491 _ARBLOST	=	0x00c2
                     00C1   492 _ACK	=	0x00c1
                     00C0   493 _SI	=	0x00c0
                     00CF   494 _TF2H	=	0x00cf
                     00CE   495 _TF2L	=	0x00ce
                     00CD   496 _TF2LEN	=	0x00cd
                     00CC   497 _TF2CEN	=	0x00cc
                     00CB   498 _T2SPLIT	=	0x00cb
                     00CA   499 _TR2	=	0x00ca
                     00C9   500 _T2RCLK	=	0x00c9
                     00C8   501 _T2XCLK	=	0x00c8
                     00D7   502 _CY	=	0x00d7
                     00D6   503 _AC	=	0x00d6
                     00D5   504 _F0	=	0x00d5
                     00D4   505 _RS1	=	0x00d4
                     00D3   506 _RS0	=	0x00d3
                     00D2   507 _OV	=	0x00d2
                     00D1   508 _F1	=	0x00d1
                     00D0   509 _P	=	0x00d0
                     00DF   510 _CF	=	0x00df
                     00DE   511 _CR	=	0x00de
                     00DD   512 _CCF5	=	0x00dd
                     00DC   513 _CCF4	=	0x00dc
                     00DB   514 _CCF3	=	0x00db
                     00DA   515 _CCF2	=	0x00da
                     00D9   516 _CCF1	=	0x00d9
                     00D8   517 _CCF0	=	0x00d8
                     00EF   518 _AD0EN	=	0x00ef
                     00EE   519 _BURSTEN	=	0x00ee
                     00ED   520 _AD0INT	=	0x00ed
                     00EC   521 _AD0BUSY	=	0x00ec
                     00EB   522 _AD0WINT	=	0x00eb
                     00EA   523 _AD0CM2	=	0x00ea
                     00E9   524 _AD0CM1	=	0x00e9
                     00E8   525 _AD0CM0	=	0x00e8
                     00FF   526 _SPIF0	=	0x00ff
                     00FE   527 _WCOL0	=	0x00fe
                     00FD   528 _MODF0	=	0x00fd
                     00FC   529 _RXOVRN0	=	0x00fc
                     00FB   530 _NSS0MD1	=	0x00fb
                     00FA   531 _NSS0MD0	=	0x00fa
                     00F9   532 _TXBMT0	=	0x00f9
                     00F8   533 _SPI0EN	=	0x00f8
                     00A0   534 _LED_RED	=	0x00a0
                     00A5   535 _LED_GREEN	=	0x00a5
                     0086   536 _BUTTON_ENTER	=	0x0086
                     0095   537 _BUTTON_UP	=	0x0095
                     0096   538 _BUTTON_DOWN	=	0x0096
                     0087   539 _IRQ	=	0x0087
                     0094   540 _NSS1	=	0x0094
                     00A6   541 _SDN	=	0x00a6
                            542 ;--------------------------------------------------------
                            543 ; overlayable register banks
                            544 ;--------------------------------------------------------
                            545 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     546 	.ds 8
                            547 ;--------------------------------------------------------
                            548 ; overlayable bit register bank
                            549 ;--------------------------------------------------------
                            550 	.area BIT_BANK	(REL,OVR,DATA)
   0027                     551 bits:
   0027                     552 	.ds 1
                     8000   553 	b0 = bits[0]
                     8100   554 	b1 = bits[1]
                     8200   555 	b2 = bits[2]
                     8300   556 	b3 = bits[3]
                     8400   557 	b4 = bits[4]
                     8500   558 	b5 = bits[5]
                     8600   559 	b6 = bits[6]
                     8700   560 	b7 = bits[7]
                            561 ;--------------------------------------------------------
                            562 ; internal ram data
                            563 ;--------------------------------------------------------
                            564 	.area DSEG    (DATA)
   0070                     565 _delay_counter:
   0070                     566 	.ds 1
   0071                     567 _timer2_high:
   0071                     568 	.ds 2
                            569 ;--------------------------------------------------------
                            570 ; overlayable items in internal ram 
                            571 ;--------------------------------------------------------
                            572 	.area	OSEG    (OVR,DATA)
                            573 	.area	OSEG    (OVR,DATA)
                            574 ;--------------------------------------------------------
                            575 ; indirectly addressable internal ram data
                            576 ;--------------------------------------------------------
                            577 	.area ISEG    (DATA)
                            578 ;--------------------------------------------------------
                            579 ; absolute internal ram data
                            580 ;--------------------------------------------------------
                            581 	.area IABS    (ABS,DATA)
                            582 	.area IABS    (ABS,DATA)
                            583 ;--------------------------------------------------------
                            584 ; bit data
                            585 ;--------------------------------------------------------
                            586 	.area BSEG    (BIT)
   0031                     587 _delay_expired_sloc0_1_0:
   0031                     588 	.ds 1
                            589 ;--------------------------------------------------------
                            590 ; paged external ram data
                            591 ;--------------------------------------------------------
                            592 	.area PSEG    (PAG,XDATA)
                            593 ;--------------------------------------------------------
                            594 ; external ram data
                            595 ;--------------------------------------------------------
                            596 	.area XSEG    (XDATA)
                            597 ;--------------------------------------------------------
                            598 ; absolute external ram data
                            599 ;--------------------------------------------------------
                            600 	.area XABS    (ABS,XDATA)
                            601 ;--------------------------------------------------------
                            602 ; external initialized ram data
                            603 ;--------------------------------------------------------
                            604 	.area XISEG   (XDATA)
                            605 	.area HOME    (CODE)
                            606 	.area GSINIT0 (CODE)
                            607 	.area GSINIT1 (CODE)
                            608 	.area GSINIT2 (CODE)
                            609 	.area GSINIT3 (CODE)
                            610 	.area GSINIT4 (CODE)
                            611 	.area GSINIT5 (CODE)
                            612 	.area GSINIT  (CODE)
                            613 	.area GSFINAL (CODE)
                            614 	.area CSEG    (CODE)
                            615 ;--------------------------------------------------------
                            616 ; global & static initialisations
                            617 ;--------------------------------------------------------
                            618 	.area HOME    (CODE)
                            619 	.area GSINIT  (CODE)
                            620 	.area GSFINAL (CODE)
                            621 	.area GSINIT  (CODE)
                            622 ;--------------------------------------------------------
                            623 ; Home
                            624 ;--------------------------------------------------------
                            625 	.area HOME    (CODE)
                            626 	.area HOME    (CODE)
                            627 ;--------------------------------------------------------
                            628 ; code
                            629 ;--------------------------------------------------------
                            630 	.area CSEG    (CODE)
                            631 ;------------------------------------------------------------
                            632 ;Allocation info for local variables in function 'T3_ISR'
                            633 ;------------------------------------------------------------
                            634 ;	radio/timer.c:41: INTERRUPT(T3_ISR, INTERRUPT_TIMER3)
                            635 ;	-----------------------------------------
                            636 ;	 function T3_ISR
                            637 ;	-----------------------------------------
   555E                     638 _T3_ISR:
                     0007   639 	ar7 = 0x07
                     0006   640 	ar6 = 0x06
                     0005   641 	ar5 = 0x05
                     0004   642 	ar4 = 0x04
                     0003   643 	ar3 = 0x03
                     0002   644 	ar2 = 0x02
                     0001   645 	ar1 = 0x01
                     0000   646 	ar0 = 0x00
   555E C0 27         [24]  647 	push	bits
   5560 C0 E0         [24]  648 	push	acc
   5562 C0 F0         [24]  649 	push	b
   5564 C0 82         [24]  650 	push	dpl
   5566 C0 83         [24]  651 	push	dph
   5568 C0 07         [24]  652 	push	(0+7)
   556A C0 06         [24]  653 	push	(0+6)
   556C C0 05         [24]  654 	push	(0+5)
   556E C0 04         [24]  655 	push	(0+4)
   5570 C0 03         [24]  656 	push	(0+3)
   5572 C0 02         [24]  657 	push	(0+2)
   5574 C0 01         [24]  658 	push	(0+1)
   5576 C0 00         [24]  659 	push	(0+0)
   5578 C0 D0         [24]  660 	push	psw
   557A 75 D0 00      [24]  661 	mov	psw,#0x00
                            662 ;	radio/timer.c:44: TMR3CN = 0x04;
   557D 75 91 04      [24]  663 	mov	_TMR3CN,#0x04
                            664 ;	radio/timer.c:47: at_timer();
   5580 12 05 D4      [24]  665 	lcall	_at_timer
                            666 ;	radio/timer.c:50: if (delay_counter > 0)
   5583 E5 70         [12]  667 	mov	a,_delay_counter
   5585 60 02         [24]  668 	jz	00103$
                            669 ;	radio/timer.c:51: delay_counter--;
   5587 15 70         [12]  670 	dec	_delay_counter
   5589                     671 00103$:
   5589 D0 D0         [24]  672 	pop	psw
   558B D0 00         [24]  673 	pop	(0+0)
   558D D0 01         [24]  674 	pop	(0+1)
   558F D0 02         [24]  675 	pop	(0+2)
   5591 D0 03         [24]  676 	pop	(0+3)
   5593 D0 04         [24]  677 	pop	(0+4)
   5595 D0 05         [24]  678 	pop	(0+5)
   5597 D0 06         [24]  679 	pop	(0+6)
   5599 D0 07         [24]  680 	pop	(0+7)
   559B D0 83         [24]  681 	pop	dph
   559D D0 82         [24]  682 	pop	dpl
   559F D0 F0         [24]  683 	pop	b
   55A1 D0 E0         [24]  684 	pop	acc
   55A3 D0 27         [24]  685 	pop	bits
   55A5 32            [24]  686 	reti
                            687 ;------------------------------------------------------------
                            688 ;Allocation info for local variables in function 'delay_set'
                            689 ;------------------------------------------------------------
                            690 ;msec                      Allocated to registers r6 r7 
                            691 ;------------------------------------------------------------
                            692 ;	radio/timer.c:55: delay_set(register uint16_t msec)
                            693 ;	-----------------------------------------
                            694 ;	 function delay_set
                            695 ;	-----------------------------------------
   55A6                     696 _delay_set:
   55A6 AE 82         [24]  697 	mov	r6,dpl
   55A8 AF 83         [24]  698 	mov	r7,dph
                            699 ;	radio/timer.c:57: if (msec >= 2550) {
   55AA C3            [12]  700 	clr	c
   55AB EE            [12]  701 	mov	a,r6
   55AC 94 F6         [12]  702 	subb	a,#0xF6
   55AE EF            [12]  703 	mov	a,r7
   55AF 94 09         [12]  704 	subb	a,#0x09
   55B1 40 04         [24]  705 	jc	00102$
                            706 ;	radio/timer.c:58: delay_counter = 255;
   55B3 75 70 FF      [24]  707 	mov	_delay_counter,#0xFF
   55B6 22            [24]  708 	ret
   55B7                     709 00102$:
                            710 ;	radio/timer.c:60: delay_counter = (msec + 9) / 10;
   55B7 74 09         [12]  711 	mov	a,#0x09
   55B9 2E            [12]  712 	add	a,r6
   55BA FE            [12]  713 	mov	r6,a
   55BB E4            [12]  714 	clr	a
   55BC 3F            [12]  715 	addc	a,r7
   55BD FF            [12]  716 	mov	r7,a
   55BE 90 05 70      [24]  717 	mov	dptr,#__divuint_PARM_2
   55C1 74 0A         [12]  718 	mov	a,#0x0A
   55C3 F0            [24]  719 	movx	@dptr,a
   55C4 E4            [12]  720 	clr	a
   55C5 A3            [24]  721 	inc	dptr
   55C6 F0            [24]  722 	movx	@dptr,a
   55C7 8E 82         [24]  723 	mov	dpl,r6
   55C9 8F 83         [24]  724 	mov	dph,r7
   55CB 12 56 AA      [24]  725 	lcall	__divuint
   55CE AE 82         [24]  726 	mov	r6,dpl
   55D0 8E 70         [24]  727 	mov	_delay_counter,r6
   55D2 22            [24]  728 	ret
                            729 ;------------------------------------------------------------
                            730 ;Allocation info for local variables in function 'delay_set_ticks'
                            731 ;------------------------------------------------------------
                            732 ;ticks                     Allocated to registers 
                            733 ;------------------------------------------------------------
                            734 ;	radio/timer.c:65: delay_set_ticks(register uint8_t ticks)
                            735 ;	-----------------------------------------
                            736 ;	 function delay_set_ticks
                            737 ;	-----------------------------------------
   55D3                     738 _delay_set_ticks:
   55D3 85 82 70      [24]  739 	mov	_delay_counter,dpl
                            740 ;	radio/timer.c:67: delay_counter = ticks;
   55D6 22            [24]  741 	ret
                            742 ;------------------------------------------------------------
                            743 ;Allocation info for local variables in function 'delay_expired'
                            744 ;------------------------------------------------------------
                            745 ;	radio/timer.c:71: delay_expired(void)
                            746 ;	-----------------------------------------
                            747 ;	 function delay_expired
                            748 ;	-----------------------------------------
   55D7                     749 _delay_expired:
                            750 ;	radio/timer.c:73: return delay_counter == 0;
   55D7 E5 70         [12]  751 	mov	a,_delay_counter
   55D9 B4 01 00      [24]  752 	cjne	a,#0x01,00103$
   55DC                     753 00103$:
   55DC 92 31         [24]  754 	mov  _delay_expired_sloc0_1_0,c
   55DE 22            [24]  755 	ret
                            756 ;------------------------------------------------------------
                            757 ;Allocation info for local variables in function 'delay_msec'
                            758 ;------------------------------------------------------------
                            759 ;msec                      Allocated to registers r6 r7 
                            760 ;------------------------------------------------------------
                            761 ;	radio/timer.c:77: delay_msec(register uint16_t msec)
                            762 ;	-----------------------------------------
                            763 ;	 function delay_msec
                            764 ;	-----------------------------------------
   55DF                     765 _delay_msec:
                            766 ;	radio/timer.c:79: delay_set(msec);
   55DF 12 55 A6      [24]  767 	lcall	_delay_set
                            768 ;	radio/timer.c:80: while (!delay_expired())
   55E2                     769 00101$:
   55E2 12 55 D7      [24]  770 	lcall	_delay_expired
   55E5 50 FB         [24]  771 	jnc	00101$
   55E7 22            [24]  772 	ret
                            773 ;------------------------------------------------------------
                            774 ;Allocation info for local variables in function 'T2_ISR'
                            775 ;------------------------------------------------------------
                            776 ;	radio/timer.c:86: INTERRUPT(T2_ISR, INTERRUPT_TIMER2)
                            777 ;	-----------------------------------------
                            778 ;	 function T2_ISR
                            779 ;	-----------------------------------------
   55E8                     780 _T2_ISR:
   55E8 C0 27         [24]  781 	push	bits
   55EA C0 E0         [24]  782 	push	acc
   55EC C0 F0         [24]  783 	push	b
   55EE C0 82         [24]  784 	push	dpl
   55F0 C0 83         [24]  785 	push	dph
   55F2 C0 07         [24]  786 	push	(0+7)
   55F4 C0 06         [24]  787 	push	(0+6)
   55F6 C0 05         [24]  788 	push	(0+5)
   55F8 C0 04         [24]  789 	push	(0+4)
   55FA C0 03         [24]  790 	push	(0+3)
   55FC C0 02         [24]  791 	push	(0+2)
   55FE C0 01         [24]  792 	push	(0+1)
   5600 C0 00         [24]  793 	push	(0+0)
   5602 C0 D0         [24]  794 	push	psw
   5604 75 D0 00      [24]  795 	mov	psw,#0x00
                            796 ;	radio/timer.c:89: TMR2CN = 0x04;
   5607 75 C8 04      [24]  797 	mov	_TMR2CN,#0x04
                            798 ;	radio/timer.c:92: timer2_high++;
   560A 74 01         [12]  799 	mov	a,#0x01
   560C 25 71         [12]  800 	add	a,_timer2_high
   560E F5 71         [12]  801 	mov	_timer2_high,a
   5610 E4            [12]  802 	clr	a
   5611 35 72         [12]  803 	addc	a,(_timer2_high + 1)
   5613 F5 72         [12]  804 	mov	(_timer2_high + 1),a
                            805 ;	radio/timer.c:94: if (feature_rtscts) {
   5615 30 07 03      [24]  806 	jnb	_feature_rtscts,00103$
                            807 ;	radio/timer.c:95: serial_check_rts();
   5618 12 3F D5      [24]  808 	lcall	_serial_check_rts
   561B                     809 00103$:
   561B D0 D0         [24]  810 	pop	psw
   561D D0 00         [24]  811 	pop	(0+0)
   561F D0 01         [24]  812 	pop	(0+1)
   5621 D0 02         [24]  813 	pop	(0+2)
   5623 D0 03         [24]  814 	pop	(0+3)
   5625 D0 04         [24]  815 	pop	(0+4)
   5627 D0 05         [24]  816 	pop	(0+5)
   5629 D0 06         [24]  817 	pop	(0+6)
   562B D0 07         [24]  818 	pop	(0+7)
   562D D0 83         [24]  819 	pop	dph
   562F D0 82         [24]  820 	pop	dpl
   5631 D0 F0         [24]  821 	pop	b
   5633 D0 E0         [24]  822 	pop	acc
   5635 D0 27         [24]  823 	pop	bits
   5637 32            [24]  824 	reti
                            825 ;------------------------------------------------------------
                            826 ;Allocation info for local variables in function 'timer2_16'
                            827 ;------------------------------------------------------------
                            828 ;low                       Allocated to registers r6 
                            829 ;high                      Allocated to registers r7 
                            830 ;------------------------------------------------------------
                            831 ;	radio/timer.c:102: timer2_16(void)
                            832 ;	-----------------------------------------
                            833 ;	 function timer2_16
                            834 ;	-----------------------------------------
   5638                     835 _timer2_16:
                            836 ;	radio/timer.c:105: do {
   5638                     837 00101$:
                            838 ;	radio/timer.c:108: high = TMR2H;
   5638 AF CD         [24]  839 	mov	r7,_TMR2H
                            840 ;	radio/timer.c:109: low = TMR2L;
   563A AE CC         [24]  841 	mov	r6,_TMR2L
                            842 ;	radio/timer.c:110: } while (high != TMR2H);
   563C EF            [12]  843 	mov	a,r7
   563D B5 CD F8      [24]  844 	cjne	a,_TMR2H,00101$
                            845 ;	radio/timer.c:111: return low | (((uint16_t)high)<<8);
   5640 8F 05         [24]  846 	mov	ar5,r7
   5642 E4            [12]  847 	clr	a
   5643 FF            [12]  848 	mov	r7,a
   5644 FC            [12]  849 	mov	r4,a
   5645 EE            [12]  850 	mov	a,r6
   5646 42 07         [12]  851 	orl	ar7,a
   5648 EC            [12]  852 	mov	a,r4
   5649 42 05         [12]  853 	orl	ar5,a
   564B 8F 82         [24]  854 	mov	dpl,r7
   564D 8D 83         [24]  855 	mov	dph,r5
   564F 22            [24]  856 	ret
                            857 ;------------------------------------------------------------
                            858 ;Allocation info for local variables in function 'timer2_tick'
                            859 ;------------------------------------------------------------
                            860 ;low                       Allocated to registers r4 r5 
                            861 ;high                      Allocated to registers r6 r7 
                            862 ;------------------------------------------------------------
                            863 ;	radio/timer.c:132: timer2_tick(void)
                            864 ;	-----------------------------------------
                            865 ;	 function timer2_tick
                            866 ;	-----------------------------------------
   5650                     867 _timer2_tick:
                            868 ;	radio/timer.c:135: do {
   5650                     869 00101$:
                            870 ;	radio/timer.c:136: high = timer2_high;
   5650 AE 71         [24]  871 	mov	r6,_timer2_high
   5652 AF 72         [24]  872 	mov	r7,(_timer2_high + 1)
                            873 ;	radio/timer.c:137: low = timer2_16();
   5654 C0 07         [24]  874 	push	ar7
   5656 C0 06         [24]  875 	push	ar6
   5658 12 56 38      [24]  876 	lcall	_timer2_16
   565B AC 82         [24]  877 	mov	r4,dpl
   565D AD 83         [24]  878 	mov	r5,dph
   565F D0 06         [24]  879 	pop	ar6
   5661 D0 07         [24]  880 	pop	ar7
                            881 ;	radio/timer.c:138: } while (high != timer2_high);
   5663 EE            [12]  882 	mov	a,r6
   5664 B5 71 E9      [24]  883 	cjne	a,_timer2_high,00101$
   5667 EF            [12]  884 	mov	a,r7
   5668 B5 72 E5      [24]  885 	cjne	a,(_timer2_high + 1),00101$
                            886 ;	radio/timer.c:141: return (high<<11) | (low>>5);
   566B EE            [12]  887 	mov	a,r6
   566C C4            [12]  888 	swap	a
   566D 03            [12]  889 	rr	a
   566E 54 F8         [12]  890 	anl	a,#0xF8
   5670 FF            [12]  891 	mov	r7,a
   5671 7E 00         [12]  892 	mov	r6,#0x00
   5673 ED            [12]  893 	mov	a,r5
   5674 C4            [12]  894 	swap	a
   5675 03            [12]  895 	rr	a
   5676 CC            [12]  896 	xch	a,r4
   5677 C4            [12]  897 	swap	a
   5678 03            [12]  898 	rr	a
   5679 54 07         [12]  899 	anl	a,#0x07
   567B 6C            [12]  900 	xrl	a,r4
   567C CC            [12]  901 	xch	a,r4
   567D 54 07         [12]  902 	anl	a,#0x07
   567F CC            [12]  903 	xch	a,r4
   5680 6C            [12]  904 	xrl	a,r4
   5681 CC            [12]  905 	xch	a,r4
   5682 FD            [12]  906 	mov	r5,a
   5683 EC            [12]  907 	mov	a,r4
   5684 42 06         [12]  908 	orl	ar6,a
   5686 ED            [12]  909 	mov	a,r5
   5687 42 07         [12]  910 	orl	ar7,a
   5689 8E 82         [24]  911 	mov	dpl,r6
   568B 8F 83         [24]  912 	mov	dph,r7
   568D 22            [24]  913 	ret
                            914 ;------------------------------------------------------------
                            915 ;Allocation info for local variables in function 'timer_init'
                            916 ;------------------------------------------------------------
                            917 ;	radio/timer.c:146: timer_init(void)
                            918 ;	-----------------------------------------
                            919 ;	 function timer_init
                            920 ;	-----------------------------------------
   568E                     921 _timer_init:
                            922 ;	radio/timer.c:150: TMR3RLL	 = (65536UL - ((SYSCLK / 12) / 100)) & 0xff;
   568E 75 92 40      [24]  923 	mov	_TMR3RLL,#0x40
                            924 ;	radio/timer.c:151: TMR3RLH	 = ((65536UL - ((SYSCLK / 12) / 100)) >> 8) & 0xff;
   5691 75 93 B0      [24]  925 	mov	_TMR3RLH,#0xB0
                            926 ;	radio/timer.c:152: TMR3CN	 = 0x04;	// count at SYSCLK / 12 and start
   5694 75 91 04      [24]  927 	mov	_TMR3CN,#0x04
                            928 ;	radio/timer.c:153: EIE1	|= 0x80;
   5697 43 E6 80      [24]  929 	orl	_EIE1,#0x80
                            930 ;	radio/timer.c:156: TMR2RLL = 0;
   569A 75 CA 00      [24]  931 	mov	_TMR2RLL,#0x00
                            932 ;	radio/timer.c:157: TMR2RLH = 0;
   569D 75 CB 00      [24]  933 	mov	_TMR2RLH,#0x00
                            934 ;	radio/timer.c:158: TMR2CN  = 0x04; // start running, count at SYSCLK/12
   56A0 75 C8 04      [24]  935 	mov	_TMR2CN,#0x04
                            936 ;	radio/timer.c:159: ET2 = 1;
   56A3 D2 AD         [12]  937 	setb	_ET2
   56A5 22            [24]  938 	ret
                            939 ;------------------------------------------------------------
                            940 ;Allocation info for local variables in function 'timer_entropy'
                            941 ;------------------------------------------------------------
                            942 ;	radio/timer.c:164: timer_entropy(void)
                            943 ;	-----------------------------------------
                            944 ;	 function timer_entropy
                            945 ;	-----------------------------------------
   56A6                     946 _timer_entropy:
                            947 ;	radio/timer.c:167: return TMR2L;
   56A6 85 CC 82      [24]  948 	mov	dpl,_TMR2L
   56A9 22            [24]  949 	ret
                            950 	.area CSEG    (CODE)
                            951 	.area CONST   (CODE)
                            952 	.area XINIT   (CODE)
                            953 	.area CABS    (ABS,CODE)
