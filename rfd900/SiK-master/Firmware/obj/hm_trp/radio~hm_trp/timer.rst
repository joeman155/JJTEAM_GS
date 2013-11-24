                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:05 2013
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
                             19 	.globl _PIN_ENABLE
                             20 	.globl _PIN_CONFIG
                             21 	.globl _LED_GREEN
                             22 	.globl _LED_RED
                             23 	.globl _SPI0EN
                             24 	.globl _TXBMT0
                             25 	.globl _NSS0MD0
                             26 	.globl _NSS0MD1
                             27 	.globl _RXOVRN0
                             28 	.globl _MODF0
                             29 	.globl _WCOL0
                             30 	.globl _SPIF0
                             31 	.globl _AD0CM0
                             32 	.globl _AD0CM1
                             33 	.globl _AD0CM2
                             34 	.globl _AD0WINT
                             35 	.globl _AD0BUSY
                             36 	.globl _AD0INT
                             37 	.globl _BURSTEN
                             38 	.globl _AD0EN
                             39 	.globl _CCF0
                             40 	.globl _CCF1
                             41 	.globl _CCF2
                             42 	.globl _CCF3
                             43 	.globl _CCF4
                             44 	.globl _CCF5
                             45 	.globl _CR
                             46 	.globl _CF
                             47 	.globl _P
                             48 	.globl _F1
                             49 	.globl _OV
                             50 	.globl _RS0
                             51 	.globl _RS1
                             52 	.globl _F0
                             53 	.globl _AC
                             54 	.globl _CY
                             55 	.globl _T2XCLK
                             56 	.globl _T2RCLK
                             57 	.globl _TR2
                             58 	.globl _T2SPLIT
                             59 	.globl _TF2CEN
                             60 	.globl _TF2LEN
                             61 	.globl _TF2L
                             62 	.globl _TF2H
                             63 	.globl _SI
                             64 	.globl _ACK
                             65 	.globl _ARBLOST
                             66 	.globl _ACKRQ
                             67 	.globl _STO
                             68 	.globl _STA
                             69 	.globl _TXMODE
                             70 	.globl _MASTER
                             71 	.globl _PX0
                             72 	.globl _PT0
                             73 	.globl _PX1
                             74 	.globl _PT1
                             75 	.globl _PS0
                             76 	.globl _PT2
                             77 	.globl _PSPI0
                             78 	.globl _SPI1EN
                             79 	.globl _TXBMT1
                             80 	.globl _NSS1MD0
                             81 	.globl _NSS1MD1
                             82 	.globl _RXOVRN1
                             83 	.globl _MODF1
                             84 	.globl _WCOL1
                             85 	.globl _SPIF1
                             86 	.globl _EX0
                             87 	.globl _ET0
                             88 	.globl _EX1
                             89 	.globl _ET1
                             90 	.globl _ES0
                             91 	.globl _ET2
                             92 	.globl _ESPI0
                             93 	.globl _EA
                             94 	.globl _RI0
                             95 	.globl _TI0
                             96 	.globl _RB80
                             97 	.globl _TB80
                             98 	.globl _REN0
                             99 	.globl _MCE0
                            100 	.globl _S0MODE
                            101 	.globl _CRC0VAL
                            102 	.globl _CRC0INIT
                            103 	.globl _CRC0SEL
                            104 	.globl _IT0
                            105 	.globl _IE0
                            106 	.globl _IT1
                            107 	.globl _IE1
                            108 	.globl _TR0
                            109 	.globl _TF0
                            110 	.globl _TR1
                            111 	.globl _TF1
                            112 	.globl _PCA0CP4
                            113 	.globl _PCA0CP0
                            114 	.globl _PCA0
                            115 	.globl _PCA0CP3
                            116 	.globl _PCA0CP2
                            117 	.globl _PCA0CP1
                            118 	.globl _PCA0CP5
                            119 	.globl _TMR2
                            120 	.globl _TMR2RL
                            121 	.globl _ADC0LT
                            122 	.globl _ADC0GT
                            123 	.globl _ADC0
                            124 	.globl _TMR3
                            125 	.globl _TMR3RL
                            126 	.globl _TOFF
                            127 	.globl _DP
                            128 	.globl _VDM0CN
                            129 	.globl _PCA0CPH4
                            130 	.globl _PCA0CPL4
                            131 	.globl _PCA0CPH0
                            132 	.globl _PCA0CPL0
                            133 	.globl _PCA0H
                            134 	.globl _PCA0L
                            135 	.globl _SPI0CN
                            136 	.globl _EIP2
                            137 	.globl _EIP1
                            138 	.globl _SMB0ADM
                            139 	.globl _SMB0ADR
                            140 	.globl _P2MDIN
                            141 	.globl _P1MDIN
                            142 	.globl _P0MDIN
                            143 	.globl _B
                            144 	.globl _RSTSRC
                            145 	.globl _PCA0CPH3
                            146 	.globl _PCA0CPL3
                            147 	.globl _PCA0CPH2
                            148 	.globl _PCA0CPL2
                            149 	.globl _PCA0CPH1
                            150 	.globl _PCA0CPL1
                            151 	.globl _ADC0CN
                            152 	.globl _EIE2
                            153 	.globl _EIE1
                            154 	.globl _FLWR
                            155 	.globl _IT01CF
                            156 	.globl _XBR2
                            157 	.globl _XBR1
                            158 	.globl _XBR0
                            159 	.globl _ACC
                            160 	.globl _PCA0PWM
                            161 	.globl _PCA0CPM4
                            162 	.globl _PCA0CPM3
                            163 	.globl _PCA0CPM2
                            164 	.globl _PCA0CPM1
                            165 	.globl _PCA0CPM0
                            166 	.globl _PCA0MD
                            167 	.globl _PCA0CN
                            168 	.globl _P0MAT
                            169 	.globl _P2SKIP
                            170 	.globl _P1SKIP
                            171 	.globl _P0SKIP
                            172 	.globl _PCA0CPH5
                            173 	.globl _PCA0CPL5
                            174 	.globl _REF0CN
                            175 	.globl _PSW
                            176 	.globl _P1MAT
                            177 	.globl _PCA0CPM5
                            178 	.globl _TMR2H
                            179 	.globl _TMR2L
                            180 	.globl _TMR2RLH
                            181 	.globl _TMR2RLL
                            182 	.globl _REG0CN
                            183 	.globl _TMR2CN
                            184 	.globl _P0MASK
                            185 	.globl _ADC0LTH
                            186 	.globl _ADC0LTL
                            187 	.globl _ADC0GTH
                            188 	.globl _ADC0GTL
                            189 	.globl _SMB0DAT
                            190 	.globl _SMB0CF
                            191 	.globl _SMB0CN
                            192 	.globl _P1MASK
                            193 	.globl _ADC0H
                            194 	.globl _ADC0L
                            195 	.globl _ADC0TK
                            196 	.globl _ADC0CF
                            197 	.globl _ADC0MX
                            198 	.globl _ADC0PWR
                            199 	.globl _ADC0AC
                            200 	.globl _IREF0CN
                            201 	.globl _IP
                            202 	.globl _FLKEY
                            203 	.globl _FLSCL
                            204 	.globl _PMU0CF
                            205 	.globl _OSCICL
                            206 	.globl _OSCICN
                            207 	.globl _OSCXCN
                            208 	.globl _SPI1CN
                            209 	.globl _ONESHOT
                            210 	.globl _EMI0TC
                            211 	.globl _RTC0KEY
                            212 	.globl _RTC0DAT
                            213 	.globl _RTC0ADR
                            214 	.globl _EMI0CF
                            215 	.globl _EMI0CN
                            216 	.globl _CLKSEL
                            217 	.globl _IE
                            218 	.globl _SFRPAGE
                            219 	.globl _P2DRV
                            220 	.globl _P2MDOUT
                            221 	.globl _P1DRV
                            222 	.globl _P1MDOUT
                            223 	.globl _P0DRV
                            224 	.globl _P0MDOUT
                            225 	.globl _SPI0DAT
                            226 	.globl _SPI0CKR
                            227 	.globl _SPI0CFG
                            228 	.globl _P2
                            229 	.globl _CPT0MX
                            230 	.globl _CPT1MX
                            231 	.globl _CPT0MD
                            232 	.globl _CPT1MD
                            233 	.globl _CPT0CN
                            234 	.globl _CPT1CN
                            235 	.globl _SBUF0
                            236 	.globl _SCON0
                            237 	.globl _CRC0CNT
                            238 	.globl _DC0CN
                            239 	.globl _CRC0AUTO
                            240 	.globl _DC0CF
                            241 	.globl _TMR3H
                            242 	.globl _CRC0FLIP
                            243 	.globl _TMR3L
                            244 	.globl _CRC0IN
                            245 	.globl _TMR3RLH
                            246 	.globl _CRC0CN
                            247 	.globl _TMR3RLL
                            248 	.globl _CRC0DAT
                            249 	.globl _TMR3CN
                            250 	.globl _P1
                            251 	.globl _PSCTL
                            252 	.globl _CKCON
                            253 	.globl _TH1
                            254 	.globl _TH0
                            255 	.globl _TL1
                            256 	.globl _TL0
                            257 	.globl _TMOD
                            258 	.globl _TCON
                            259 	.globl _PCON
                            260 	.globl _TOFFH
                            261 	.globl _SPI1DAT
                            262 	.globl _TOFFL
                            263 	.globl _SPI1CKR
                            264 	.globl _SPI1CFG
                            265 	.globl _DPH
                            266 	.globl _DPL
                            267 	.globl _SP
                            268 	.globl _P0
                            269 	.globl _delay_set
                            270 	.globl _delay_set_ticks
                            271 	.globl _delay_expired
                            272 	.globl _delay_msec
                            273 	.globl _timer2_16
                            274 	.globl _timer2_tick
                            275 	.globl _timer_init
                            276 	.globl _timer_entropy
                            277 ;--------------------------------------------------------
                            278 ; special function registers
                            279 ;--------------------------------------------------------
                            280 	.area RSEG    (ABS,DATA)
   0000                     281 	.org 0x0000
                     0080   282 _P0	=	0x0080
                     0081   283 _SP	=	0x0081
                     0082   284 _DPL	=	0x0082
                     0083   285 _DPH	=	0x0083
                     0084   286 _SPI1CFG	=	0x0084
                     0085   287 _SPI1CKR	=	0x0085
                     0085   288 _TOFFL	=	0x0085
                     0086   289 _SPI1DAT	=	0x0086
                     0086   290 _TOFFH	=	0x0086
                     0087   291 _PCON	=	0x0087
                     0088   292 _TCON	=	0x0088
                     0089   293 _TMOD	=	0x0089
                     008A   294 _TL0	=	0x008a
                     008B   295 _TL1	=	0x008b
                     008C   296 _TH0	=	0x008c
                     008D   297 _TH1	=	0x008d
                     008E   298 _CKCON	=	0x008e
                     008F   299 _PSCTL	=	0x008f
                     0090   300 _P1	=	0x0090
                     0091   301 _TMR3CN	=	0x0091
                     0091   302 _CRC0DAT	=	0x0091
                     0092   303 _TMR3RLL	=	0x0092
                     0092   304 _CRC0CN	=	0x0092
                     0093   305 _TMR3RLH	=	0x0093
                     0093   306 _CRC0IN	=	0x0093
                     0094   307 _TMR3L	=	0x0094
                     0095   308 _CRC0FLIP	=	0x0095
                     0095   309 _TMR3H	=	0x0095
                     0096   310 _DC0CF	=	0x0096
                     0096   311 _CRC0AUTO	=	0x0096
                     0097   312 _DC0CN	=	0x0097
                     0097   313 _CRC0CNT	=	0x0097
                     0098   314 _SCON0	=	0x0098
                     0099   315 _SBUF0	=	0x0099
                     009A   316 _CPT1CN	=	0x009a
                     009B   317 _CPT0CN	=	0x009b
                     009C   318 _CPT1MD	=	0x009c
                     009D   319 _CPT0MD	=	0x009d
                     009E   320 _CPT1MX	=	0x009e
                     009F   321 _CPT0MX	=	0x009f
                     00A0   322 _P2	=	0x00a0
                     00A1   323 _SPI0CFG	=	0x00a1
                     00A2   324 _SPI0CKR	=	0x00a2
                     00A3   325 _SPI0DAT	=	0x00a3
                     00A4   326 _P0MDOUT	=	0x00a4
                     00A4   327 _P0DRV	=	0x00a4
                     00A5   328 _P1MDOUT	=	0x00a5
                     00A5   329 _P1DRV	=	0x00a5
                     00A6   330 _P2MDOUT	=	0x00a6
                     00A6   331 _P2DRV	=	0x00a6
                     00A7   332 _SFRPAGE	=	0x00a7
                     00A8   333 _IE	=	0x00a8
                     00A9   334 _CLKSEL	=	0x00a9
                     00AA   335 _EMI0CN	=	0x00aa
                     00AB   336 _EMI0CF	=	0x00ab
                     00AC   337 _RTC0ADR	=	0x00ac
                     00AD   338 _RTC0DAT	=	0x00ad
                     00AE   339 _RTC0KEY	=	0x00ae
                     00AF   340 _EMI0TC	=	0x00af
                     00AF   341 _ONESHOT	=	0x00af
                     00B0   342 _SPI1CN	=	0x00b0
                     00B1   343 _OSCXCN	=	0x00b1
                     00B2   344 _OSCICN	=	0x00b2
                     00B3   345 _OSCICL	=	0x00b3
                     00B5   346 _PMU0CF	=	0x00b5
                     00B6   347 _FLSCL	=	0x00b6
                     00B7   348 _FLKEY	=	0x00b7
                     00B8   349 _IP	=	0x00b8
                     00B9   350 _IREF0CN	=	0x00b9
                     00BA   351 _ADC0AC	=	0x00ba
                     00BA   352 _ADC0PWR	=	0x00ba
                     00BB   353 _ADC0MX	=	0x00bb
                     00BC   354 _ADC0CF	=	0x00bc
                     00BD   355 _ADC0TK	=	0x00bd
                     00BD   356 _ADC0L	=	0x00bd
                     00BE   357 _ADC0H	=	0x00be
                     00BF   358 _P1MASK	=	0x00bf
                     00C0   359 _SMB0CN	=	0x00c0
                     00C1   360 _SMB0CF	=	0x00c1
                     00C2   361 _SMB0DAT	=	0x00c2
                     00C3   362 _ADC0GTL	=	0x00c3
                     00C4   363 _ADC0GTH	=	0x00c4
                     00C5   364 _ADC0LTL	=	0x00c5
                     00C6   365 _ADC0LTH	=	0x00c6
                     00C7   366 _P0MASK	=	0x00c7
                     00C8   367 _TMR2CN	=	0x00c8
                     00C9   368 _REG0CN	=	0x00c9
                     00CA   369 _TMR2RLL	=	0x00ca
                     00CB   370 _TMR2RLH	=	0x00cb
                     00CC   371 _TMR2L	=	0x00cc
                     00CD   372 _TMR2H	=	0x00cd
                     00CE   373 _PCA0CPM5	=	0x00ce
                     00CF   374 _P1MAT	=	0x00cf
                     00D0   375 _PSW	=	0x00d0
                     00D1   376 _REF0CN	=	0x00d1
                     00D2   377 _PCA0CPL5	=	0x00d2
                     00D3   378 _PCA0CPH5	=	0x00d3
                     00D4   379 _P0SKIP	=	0x00d4
                     00D5   380 _P1SKIP	=	0x00d5
                     00D6   381 _P2SKIP	=	0x00d6
                     00D7   382 _P0MAT	=	0x00d7
                     00D8   383 _PCA0CN	=	0x00d8
                     00D9   384 _PCA0MD	=	0x00d9
                     00DA   385 _PCA0CPM0	=	0x00da
                     00DB   386 _PCA0CPM1	=	0x00db
                     00DC   387 _PCA0CPM2	=	0x00dc
                     00DD   388 _PCA0CPM3	=	0x00dd
                     00DE   389 _PCA0CPM4	=	0x00de
                     00DF   390 _PCA0PWM	=	0x00df
                     00E0   391 _ACC	=	0x00e0
                     00E1   392 _XBR0	=	0x00e1
                     00E2   393 _XBR1	=	0x00e2
                     00E3   394 _XBR2	=	0x00e3
                     00E4   395 _IT01CF	=	0x00e4
                     00E5   396 _FLWR	=	0x00e5
                     00E6   397 _EIE1	=	0x00e6
                     00E7   398 _EIE2	=	0x00e7
                     00E8   399 _ADC0CN	=	0x00e8
                     00E9   400 _PCA0CPL1	=	0x00e9
                     00EA   401 _PCA0CPH1	=	0x00ea
                     00EB   402 _PCA0CPL2	=	0x00eb
                     00EC   403 _PCA0CPH2	=	0x00ec
                     00ED   404 _PCA0CPL3	=	0x00ed
                     00EE   405 _PCA0CPH3	=	0x00ee
                     00EF   406 _RSTSRC	=	0x00ef
                     00F0   407 _B	=	0x00f0
                     00F1   408 _P0MDIN	=	0x00f1
                     00F2   409 _P1MDIN	=	0x00f2
                     00F3   410 _P2MDIN	=	0x00f3
                     00F4   411 _SMB0ADR	=	0x00f4
                     00F5   412 _SMB0ADM	=	0x00f5
                     00F6   413 _EIP1	=	0x00f6
                     00F7   414 _EIP2	=	0x00f7
                     00F8   415 _SPI0CN	=	0x00f8
                     00F9   416 _PCA0L	=	0x00f9
                     00FA   417 _PCA0H	=	0x00fa
                     00FB   418 _PCA0CPL0	=	0x00fb
                     00FC   419 _PCA0CPH0	=	0x00fc
                     00FD   420 _PCA0CPL4	=	0x00fd
                     00FE   421 _PCA0CPH4	=	0x00fe
                     00FF   422 _VDM0CN	=	0x00ff
                     8382   423 _DP	=	0x8382
                     8685   424 _TOFF	=	0x8685
                     9392   425 _TMR3RL	=	0x9392
                     9594   426 _TMR3	=	0x9594
                     BEBD   427 _ADC0	=	0xbebd
                     C4C3   428 _ADC0GT	=	0xc4c3
                     C6C5   429 _ADC0LT	=	0xc6c5
                     CBCA   430 _TMR2RL	=	0xcbca
                     CDCC   431 _TMR2	=	0xcdcc
                     D3D2   432 _PCA0CP5	=	0xd3d2
                     EAE9   433 _PCA0CP1	=	0xeae9
                     ECEB   434 _PCA0CP2	=	0xeceb
                     EEED   435 _PCA0CP3	=	0xeeed
                     FAF9   436 _PCA0	=	0xfaf9
                     FCFB   437 _PCA0CP0	=	0xfcfb
                     FEFD   438 _PCA0CP4	=	0xfefd
                            439 ;--------------------------------------------------------
                            440 ; special function bits
                            441 ;--------------------------------------------------------
                            442 	.area RSEG    (ABS,DATA)
   0000                     443 	.org 0x0000
                     008F   444 _TF1	=	0x008f
                     008E   445 _TR1	=	0x008e
                     008D   446 _TF0	=	0x008d
                     008C   447 _TR0	=	0x008c
                     008B   448 _IE1	=	0x008b
                     008A   449 _IT1	=	0x008a
                     0089   450 _IE0	=	0x0089
                     0088   451 _IT0	=	0x0088
                     0096   452 _CRC0SEL	=	0x0096
                     0095   453 _CRC0INIT	=	0x0095
                     0094   454 _CRC0VAL	=	0x0094
                     009F   455 _S0MODE	=	0x009f
                     009D   456 _MCE0	=	0x009d
                     009C   457 _REN0	=	0x009c
                     009B   458 _TB80	=	0x009b
                     009A   459 _RB80	=	0x009a
                     0099   460 _TI0	=	0x0099
                     0098   461 _RI0	=	0x0098
                     00AF   462 _EA	=	0x00af
                     00AE   463 _ESPI0	=	0x00ae
                     00AD   464 _ET2	=	0x00ad
                     00AC   465 _ES0	=	0x00ac
                     00AB   466 _ET1	=	0x00ab
                     00AA   467 _EX1	=	0x00aa
                     00A9   468 _ET0	=	0x00a9
                     00A8   469 _EX0	=	0x00a8
                     00B7   470 _SPIF1	=	0x00b7
                     00B6   471 _WCOL1	=	0x00b6
                     00B5   472 _MODF1	=	0x00b5
                     00B4   473 _RXOVRN1	=	0x00b4
                     00B3   474 _NSS1MD1	=	0x00b3
                     00B2   475 _NSS1MD0	=	0x00b2
                     00B1   476 _TXBMT1	=	0x00b1
                     00B0   477 _SPI1EN	=	0x00b0
                     00BE   478 _PSPI0	=	0x00be
                     00BD   479 _PT2	=	0x00bd
                     00BC   480 _PS0	=	0x00bc
                     00BB   481 _PT1	=	0x00bb
                     00BA   482 _PX1	=	0x00ba
                     00B9   483 _PT0	=	0x00b9
                     00B8   484 _PX0	=	0x00b8
                     00C7   485 _MASTER	=	0x00c7
                     00C6   486 _TXMODE	=	0x00c6
                     00C5   487 _STA	=	0x00c5
                     00C4   488 _STO	=	0x00c4
                     00C3   489 _ACKRQ	=	0x00c3
                     00C2   490 _ARBLOST	=	0x00c2
                     00C1   491 _ACK	=	0x00c1
                     00C0   492 _SI	=	0x00c0
                     00CF   493 _TF2H	=	0x00cf
                     00CE   494 _TF2L	=	0x00ce
                     00CD   495 _TF2LEN	=	0x00cd
                     00CC   496 _TF2CEN	=	0x00cc
                     00CB   497 _T2SPLIT	=	0x00cb
                     00CA   498 _TR2	=	0x00ca
                     00C9   499 _T2RCLK	=	0x00c9
                     00C8   500 _T2XCLK	=	0x00c8
                     00D7   501 _CY	=	0x00d7
                     00D6   502 _AC	=	0x00d6
                     00D5   503 _F0	=	0x00d5
                     00D4   504 _RS1	=	0x00d4
                     00D3   505 _RS0	=	0x00d3
                     00D2   506 _OV	=	0x00d2
                     00D1   507 _F1	=	0x00d1
                     00D0   508 _P	=	0x00d0
                     00DF   509 _CF	=	0x00df
                     00DE   510 _CR	=	0x00de
                     00DD   511 _CCF5	=	0x00dd
                     00DC   512 _CCF4	=	0x00dc
                     00DB   513 _CCF3	=	0x00db
                     00DA   514 _CCF2	=	0x00da
                     00D9   515 _CCF1	=	0x00d9
                     00D8   516 _CCF0	=	0x00d8
                     00EF   517 _AD0EN	=	0x00ef
                     00EE   518 _BURSTEN	=	0x00ee
                     00ED   519 _AD0INT	=	0x00ed
                     00EC   520 _AD0BUSY	=	0x00ec
                     00EB   521 _AD0WINT	=	0x00eb
                     00EA   522 _AD0CM2	=	0x00ea
                     00E9   523 _AD0CM1	=	0x00e9
                     00E8   524 _AD0CM0	=	0x00e8
                     00FF   525 _SPIF0	=	0x00ff
                     00FE   526 _WCOL0	=	0x00fe
                     00FD   527 _MODF0	=	0x00fd
                     00FC   528 _RXOVRN0	=	0x00fc
                     00FB   529 _NSS0MD1	=	0x00fb
                     00FA   530 _NSS0MD0	=	0x00fa
                     00F9   531 _TXBMT0	=	0x00f9
                     00F8   532 _SPI0EN	=	0x00f8
                     0096   533 _LED_RED	=	0x0096
                     0095   534 _LED_GREEN	=	0x0095
                     0082   535 _PIN_CONFIG	=	0x0082
                     0083   536 _PIN_ENABLE	=	0x0083
                     0087   537 _IRQ	=	0x0087
                     0094   538 _NSS1	=	0x0094
                     00A6   539 _SDN	=	0x00a6
                            540 ;--------------------------------------------------------
                            541 ; overlayable register banks
                            542 ;--------------------------------------------------------
                            543 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     544 	.ds 8
                            545 ;--------------------------------------------------------
                            546 ; overlayable bit register bank
                            547 ;--------------------------------------------------------
                            548 	.area BIT_BANK	(REL,OVR,DATA)
   0027                     549 bits:
   0027                     550 	.ds 1
                     8000   551 	b0 = bits[0]
                     8100   552 	b1 = bits[1]
                     8200   553 	b2 = bits[2]
                     8300   554 	b3 = bits[3]
                     8400   555 	b4 = bits[4]
                     8500   556 	b5 = bits[5]
                     8600   557 	b6 = bits[6]
                     8700   558 	b7 = bits[7]
                            559 ;--------------------------------------------------------
                            560 ; internal ram data
                            561 ;--------------------------------------------------------
                            562 	.area DSEG    (DATA)
   0070                     563 _delay_counter:
   0070                     564 	.ds 1
   0071                     565 _timer2_high:
   0071                     566 	.ds 2
                            567 ;--------------------------------------------------------
                            568 ; overlayable items in internal ram 
                            569 ;--------------------------------------------------------
                            570 	.area	OSEG    (OVR,DATA)
                            571 	.area	OSEG    (OVR,DATA)
                            572 ;--------------------------------------------------------
                            573 ; indirectly addressable internal ram data
                            574 ;--------------------------------------------------------
                            575 	.area ISEG    (DATA)
                            576 ;--------------------------------------------------------
                            577 ; absolute internal ram data
                            578 ;--------------------------------------------------------
                            579 	.area IABS    (ABS,DATA)
                            580 	.area IABS    (ABS,DATA)
                            581 ;--------------------------------------------------------
                            582 ; bit data
                            583 ;--------------------------------------------------------
                            584 	.area BSEG    (BIT)
   0031                     585 _delay_expired_sloc0_1_0:
   0031                     586 	.ds 1
                            587 ;--------------------------------------------------------
                            588 ; paged external ram data
                            589 ;--------------------------------------------------------
                            590 	.area PSEG    (PAG,XDATA)
                            591 ;--------------------------------------------------------
                            592 ; external ram data
                            593 ;--------------------------------------------------------
                            594 	.area XSEG    (XDATA)
                            595 ;--------------------------------------------------------
                            596 ; absolute external ram data
                            597 ;--------------------------------------------------------
                            598 	.area XABS    (ABS,XDATA)
                            599 ;--------------------------------------------------------
                            600 ; external initialized ram data
                            601 ;--------------------------------------------------------
                            602 	.area XISEG   (XDATA)
                            603 	.area HOME    (CODE)
                            604 	.area GSINIT0 (CODE)
                            605 	.area GSINIT1 (CODE)
                            606 	.area GSINIT2 (CODE)
                            607 	.area GSINIT3 (CODE)
                            608 	.area GSINIT4 (CODE)
                            609 	.area GSINIT5 (CODE)
                            610 	.area GSINIT  (CODE)
                            611 	.area GSFINAL (CODE)
                            612 	.area CSEG    (CODE)
                            613 ;--------------------------------------------------------
                            614 ; global & static initialisations
                            615 ;--------------------------------------------------------
                            616 	.area HOME    (CODE)
                            617 	.area GSINIT  (CODE)
                            618 	.area GSFINAL (CODE)
                            619 	.area GSINIT  (CODE)
                            620 ;--------------------------------------------------------
                            621 ; Home
                            622 ;--------------------------------------------------------
                            623 	.area HOME    (CODE)
                            624 	.area HOME    (CODE)
                            625 ;--------------------------------------------------------
                            626 ; code
                            627 ;--------------------------------------------------------
                            628 	.area CSEG    (CODE)
                            629 ;------------------------------------------------------------
                            630 ;Allocation info for local variables in function 'T3_ISR'
                            631 ;------------------------------------------------------------
                            632 ;	radio/timer.c:41: INTERRUPT(T3_ISR, INTERRUPT_TIMER3)
                            633 ;	-----------------------------------------
                            634 ;	 function T3_ISR
                            635 ;	-----------------------------------------
   560B                     636 _T3_ISR:
                     0007   637 	ar7 = 0x07
                     0006   638 	ar6 = 0x06
                     0005   639 	ar5 = 0x05
                     0004   640 	ar4 = 0x04
                     0003   641 	ar3 = 0x03
                     0002   642 	ar2 = 0x02
                     0001   643 	ar1 = 0x01
                     0000   644 	ar0 = 0x00
   560B C0 27         [24]  645 	push	bits
   560D C0 E0         [24]  646 	push	acc
   560F C0 F0         [24]  647 	push	b
   5611 C0 82         [24]  648 	push	dpl
   5613 C0 83         [24]  649 	push	dph
   5615 C0 07         [24]  650 	push	(0+7)
   5617 C0 06         [24]  651 	push	(0+6)
   5619 C0 05         [24]  652 	push	(0+5)
   561B C0 04         [24]  653 	push	(0+4)
   561D C0 03         [24]  654 	push	(0+3)
   561F C0 02         [24]  655 	push	(0+2)
   5621 C0 01         [24]  656 	push	(0+1)
   5623 C0 00         [24]  657 	push	(0+0)
   5625 C0 D0         [24]  658 	push	psw
   5627 75 D0 00      [24]  659 	mov	psw,#0x00
                            660 ;	radio/timer.c:44: TMR3CN = 0x04;
   562A 75 91 04      [24]  661 	mov	_TMR3CN,#0x04
                            662 ;	radio/timer.c:47: at_timer();
   562D 12 05 D4      [24]  663 	lcall	_at_timer
                            664 ;	radio/timer.c:50: if (delay_counter > 0)
   5630 E5 70         [12]  665 	mov	a,_delay_counter
   5632 60 02         [24]  666 	jz	00103$
                            667 ;	radio/timer.c:51: delay_counter--;
   5634 15 70         [12]  668 	dec	_delay_counter
   5636                     669 00103$:
   5636 D0 D0         [24]  670 	pop	psw
   5638 D0 00         [24]  671 	pop	(0+0)
   563A D0 01         [24]  672 	pop	(0+1)
   563C D0 02         [24]  673 	pop	(0+2)
   563E D0 03         [24]  674 	pop	(0+3)
   5640 D0 04         [24]  675 	pop	(0+4)
   5642 D0 05         [24]  676 	pop	(0+5)
   5644 D0 06         [24]  677 	pop	(0+6)
   5646 D0 07         [24]  678 	pop	(0+7)
   5648 D0 83         [24]  679 	pop	dph
   564A D0 82         [24]  680 	pop	dpl
   564C D0 F0         [24]  681 	pop	b
   564E D0 E0         [24]  682 	pop	acc
   5650 D0 27         [24]  683 	pop	bits
   5652 32            [24]  684 	reti
                            685 ;------------------------------------------------------------
                            686 ;Allocation info for local variables in function 'delay_set'
                            687 ;------------------------------------------------------------
                            688 ;msec                      Allocated to registers r6 r7 
                            689 ;------------------------------------------------------------
                            690 ;	radio/timer.c:55: delay_set(register uint16_t msec)
                            691 ;	-----------------------------------------
                            692 ;	 function delay_set
                            693 ;	-----------------------------------------
   5653                     694 _delay_set:
   5653 AE 82         [24]  695 	mov	r6,dpl
   5655 AF 83         [24]  696 	mov	r7,dph
                            697 ;	radio/timer.c:57: if (msec >= 2550) {
   5657 C3            [12]  698 	clr	c
   5658 EE            [12]  699 	mov	a,r6
   5659 94 F6         [12]  700 	subb	a,#0xF6
   565B EF            [12]  701 	mov	a,r7
   565C 94 09         [12]  702 	subb	a,#0x09
   565E 40 04         [24]  703 	jc	00102$
                            704 ;	radio/timer.c:58: delay_counter = 255;
   5660 75 70 FF      [24]  705 	mov	_delay_counter,#0xFF
   5663 22            [24]  706 	ret
   5664                     707 00102$:
                            708 ;	radio/timer.c:60: delay_counter = (msec + 9) / 10;
   5664 74 09         [12]  709 	mov	a,#0x09
   5666 2E            [12]  710 	add	a,r6
   5667 FE            [12]  711 	mov	r6,a
   5668 E4            [12]  712 	clr	a
   5669 3F            [12]  713 	addc	a,r7
   566A FF            [12]  714 	mov	r7,a
   566B 90 05 70      [24]  715 	mov	dptr,#__divuint_PARM_2
   566E 74 0A         [12]  716 	mov	a,#0x0A
   5670 F0            [24]  717 	movx	@dptr,a
   5671 E4            [12]  718 	clr	a
   5672 A3            [24]  719 	inc	dptr
   5673 F0            [24]  720 	movx	@dptr,a
   5674 8E 82         [24]  721 	mov	dpl,r6
   5676 8F 83         [24]  722 	mov	dph,r7
   5678 12 57 57      [24]  723 	lcall	__divuint
   567B AE 82         [24]  724 	mov	r6,dpl
   567D 8E 70         [24]  725 	mov	_delay_counter,r6
   567F 22            [24]  726 	ret
                            727 ;------------------------------------------------------------
                            728 ;Allocation info for local variables in function 'delay_set_ticks'
                            729 ;------------------------------------------------------------
                            730 ;ticks                     Allocated to registers 
                            731 ;------------------------------------------------------------
                            732 ;	radio/timer.c:65: delay_set_ticks(register uint8_t ticks)
                            733 ;	-----------------------------------------
                            734 ;	 function delay_set_ticks
                            735 ;	-----------------------------------------
   5680                     736 _delay_set_ticks:
   5680 85 82 70      [24]  737 	mov	_delay_counter,dpl
                            738 ;	radio/timer.c:67: delay_counter = ticks;
   5683 22            [24]  739 	ret
                            740 ;------------------------------------------------------------
                            741 ;Allocation info for local variables in function 'delay_expired'
                            742 ;------------------------------------------------------------
                            743 ;	radio/timer.c:71: delay_expired(void)
                            744 ;	-----------------------------------------
                            745 ;	 function delay_expired
                            746 ;	-----------------------------------------
   5684                     747 _delay_expired:
                            748 ;	radio/timer.c:73: return delay_counter == 0;
   5684 E5 70         [12]  749 	mov	a,_delay_counter
   5686 B4 01 00      [24]  750 	cjne	a,#0x01,00103$
   5689                     751 00103$:
   5689 92 31         [24]  752 	mov  _delay_expired_sloc0_1_0,c
   568B 22            [24]  753 	ret
                            754 ;------------------------------------------------------------
                            755 ;Allocation info for local variables in function 'delay_msec'
                            756 ;------------------------------------------------------------
                            757 ;msec                      Allocated to registers r6 r7 
                            758 ;------------------------------------------------------------
                            759 ;	radio/timer.c:77: delay_msec(register uint16_t msec)
                            760 ;	-----------------------------------------
                            761 ;	 function delay_msec
                            762 ;	-----------------------------------------
   568C                     763 _delay_msec:
                            764 ;	radio/timer.c:79: delay_set(msec);
   568C 12 56 53      [24]  765 	lcall	_delay_set
                            766 ;	radio/timer.c:80: while (!delay_expired())
   568F                     767 00101$:
   568F 12 56 84      [24]  768 	lcall	_delay_expired
   5692 50 FB         [24]  769 	jnc	00101$
   5694 22            [24]  770 	ret
                            771 ;------------------------------------------------------------
                            772 ;Allocation info for local variables in function 'T2_ISR'
                            773 ;------------------------------------------------------------
                            774 ;	radio/timer.c:86: INTERRUPT(T2_ISR, INTERRUPT_TIMER2)
                            775 ;	-----------------------------------------
                            776 ;	 function T2_ISR
                            777 ;	-----------------------------------------
   5695                     778 _T2_ISR:
   5695 C0 27         [24]  779 	push	bits
   5697 C0 E0         [24]  780 	push	acc
   5699 C0 F0         [24]  781 	push	b
   569B C0 82         [24]  782 	push	dpl
   569D C0 83         [24]  783 	push	dph
   569F C0 07         [24]  784 	push	(0+7)
   56A1 C0 06         [24]  785 	push	(0+6)
   56A3 C0 05         [24]  786 	push	(0+5)
   56A5 C0 04         [24]  787 	push	(0+4)
   56A7 C0 03         [24]  788 	push	(0+3)
   56A9 C0 02         [24]  789 	push	(0+2)
   56AB C0 01         [24]  790 	push	(0+1)
   56AD C0 00         [24]  791 	push	(0+0)
   56AF C0 D0         [24]  792 	push	psw
   56B1 75 D0 00      [24]  793 	mov	psw,#0x00
                            794 ;	radio/timer.c:89: TMR2CN = 0x04;
   56B4 75 C8 04      [24]  795 	mov	_TMR2CN,#0x04
                            796 ;	radio/timer.c:92: timer2_high++;
   56B7 74 01         [12]  797 	mov	a,#0x01
   56B9 25 71         [12]  798 	add	a,_timer2_high
   56BB F5 71         [12]  799 	mov	_timer2_high,a
   56BD E4            [12]  800 	clr	a
   56BE 35 72         [12]  801 	addc	a,(_timer2_high + 1)
   56C0 F5 72         [12]  802 	mov	(_timer2_high + 1),a
                            803 ;	radio/timer.c:94: if (feature_rtscts) {
   56C2 30 07 03      [24]  804 	jnb	_feature_rtscts,00103$
                            805 ;	radio/timer.c:95: serial_check_rts();
   56C5 12 40 11      [24]  806 	lcall	_serial_check_rts
   56C8                     807 00103$:
   56C8 D0 D0         [24]  808 	pop	psw
   56CA D0 00         [24]  809 	pop	(0+0)
   56CC D0 01         [24]  810 	pop	(0+1)
   56CE D0 02         [24]  811 	pop	(0+2)
   56D0 D0 03         [24]  812 	pop	(0+3)
   56D2 D0 04         [24]  813 	pop	(0+4)
   56D4 D0 05         [24]  814 	pop	(0+5)
   56D6 D0 06         [24]  815 	pop	(0+6)
   56D8 D0 07         [24]  816 	pop	(0+7)
   56DA D0 83         [24]  817 	pop	dph
   56DC D0 82         [24]  818 	pop	dpl
   56DE D0 F0         [24]  819 	pop	b
   56E0 D0 E0         [24]  820 	pop	acc
   56E2 D0 27         [24]  821 	pop	bits
   56E4 32            [24]  822 	reti
                            823 ;------------------------------------------------------------
                            824 ;Allocation info for local variables in function 'timer2_16'
                            825 ;------------------------------------------------------------
                            826 ;low                       Allocated to registers r6 
                            827 ;high                      Allocated to registers r7 
                            828 ;------------------------------------------------------------
                            829 ;	radio/timer.c:102: timer2_16(void)
                            830 ;	-----------------------------------------
                            831 ;	 function timer2_16
                            832 ;	-----------------------------------------
   56E5                     833 _timer2_16:
                            834 ;	radio/timer.c:105: do {
   56E5                     835 00101$:
                            836 ;	radio/timer.c:108: high = TMR2H;
   56E5 AF CD         [24]  837 	mov	r7,_TMR2H
                            838 ;	radio/timer.c:109: low = TMR2L;
   56E7 AE CC         [24]  839 	mov	r6,_TMR2L
                            840 ;	radio/timer.c:110: } while (high != TMR2H);
   56E9 EF            [12]  841 	mov	a,r7
   56EA B5 CD F8      [24]  842 	cjne	a,_TMR2H,00101$
                            843 ;	radio/timer.c:111: return low | (((uint16_t)high)<<8);
   56ED 8F 05         [24]  844 	mov	ar5,r7
   56EF E4            [12]  845 	clr	a
   56F0 FF            [12]  846 	mov	r7,a
   56F1 FC            [12]  847 	mov	r4,a
   56F2 EE            [12]  848 	mov	a,r6
   56F3 42 07         [12]  849 	orl	ar7,a
   56F5 EC            [12]  850 	mov	a,r4
   56F6 42 05         [12]  851 	orl	ar5,a
   56F8 8F 82         [24]  852 	mov	dpl,r7
   56FA 8D 83         [24]  853 	mov	dph,r5
   56FC 22            [24]  854 	ret
                            855 ;------------------------------------------------------------
                            856 ;Allocation info for local variables in function 'timer2_tick'
                            857 ;------------------------------------------------------------
                            858 ;low                       Allocated to registers r4 r5 
                            859 ;high                      Allocated to registers r6 r7 
                            860 ;------------------------------------------------------------
                            861 ;	radio/timer.c:132: timer2_tick(void)
                            862 ;	-----------------------------------------
                            863 ;	 function timer2_tick
                            864 ;	-----------------------------------------
   56FD                     865 _timer2_tick:
                            866 ;	radio/timer.c:135: do {
   56FD                     867 00101$:
                            868 ;	radio/timer.c:136: high = timer2_high;
   56FD AE 71         [24]  869 	mov	r6,_timer2_high
   56FF AF 72         [24]  870 	mov	r7,(_timer2_high + 1)
                            871 ;	radio/timer.c:137: low = timer2_16();
   5701 C0 07         [24]  872 	push	ar7
   5703 C0 06         [24]  873 	push	ar6
   5705 12 56 E5      [24]  874 	lcall	_timer2_16
   5708 AC 82         [24]  875 	mov	r4,dpl
   570A AD 83         [24]  876 	mov	r5,dph
   570C D0 06         [24]  877 	pop	ar6
   570E D0 07         [24]  878 	pop	ar7
                            879 ;	radio/timer.c:138: } while (high != timer2_high);
   5710 EE            [12]  880 	mov	a,r6
   5711 B5 71 E9      [24]  881 	cjne	a,_timer2_high,00101$
   5714 EF            [12]  882 	mov	a,r7
   5715 B5 72 E5      [24]  883 	cjne	a,(_timer2_high + 1),00101$
                            884 ;	radio/timer.c:141: return (high<<11) | (low>>5);
   5718 EE            [12]  885 	mov	a,r6
   5719 C4            [12]  886 	swap	a
   571A 03            [12]  887 	rr	a
   571B 54 F8         [12]  888 	anl	a,#0xF8
   571D FF            [12]  889 	mov	r7,a
   571E 7E 00         [12]  890 	mov	r6,#0x00
   5720 ED            [12]  891 	mov	a,r5
   5721 C4            [12]  892 	swap	a
   5722 03            [12]  893 	rr	a
   5723 CC            [12]  894 	xch	a,r4
   5724 C4            [12]  895 	swap	a
   5725 03            [12]  896 	rr	a
   5726 54 07         [12]  897 	anl	a,#0x07
   5728 6C            [12]  898 	xrl	a,r4
   5729 CC            [12]  899 	xch	a,r4
   572A 54 07         [12]  900 	anl	a,#0x07
   572C CC            [12]  901 	xch	a,r4
   572D 6C            [12]  902 	xrl	a,r4
   572E CC            [12]  903 	xch	a,r4
   572F FD            [12]  904 	mov	r5,a
   5730 EC            [12]  905 	mov	a,r4
   5731 42 06         [12]  906 	orl	ar6,a
   5733 ED            [12]  907 	mov	a,r5
   5734 42 07         [12]  908 	orl	ar7,a
   5736 8E 82         [24]  909 	mov	dpl,r6
   5738 8F 83         [24]  910 	mov	dph,r7
   573A 22            [24]  911 	ret
                            912 ;------------------------------------------------------------
                            913 ;Allocation info for local variables in function 'timer_init'
                            914 ;------------------------------------------------------------
                            915 ;	radio/timer.c:146: timer_init(void)
                            916 ;	-----------------------------------------
                            917 ;	 function timer_init
                            918 ;	-----------------------------------------
   573B                     919 _timer_init:
                            920 ;	radio/timer.c:150: TMR3RLL	 = (65536UL - ((SYSCLK / 12) / 100)) & 0xff;
   573B 75 92 40      [24]  921 	mov	_TMR3RLL,#0x40
                            922 ;	radio/timer.c:151: TMR3RLH	 = ((65536UL - ((SYSCLK / 12) / 100)) >> 8) & 0xff;
   573E 75 93 B0      [24]  923 	mov	_TMR3RLH,#0xB0
                            924 ;	radio/timer.c:152: TMR3CN	 = 0x04;	// count at SYSCLK / 12 and start
   5741 75 91 04      [24]  925 	mov	_TMR3CN,#0x04
                            926 ;	radio/timer.c:153: EIE1	|= 0x80;
   5744 43 E6 80      [24]  927 	orl	_EIE1,#0x80
                            928 ;	radio/timer.c:156: TMR2RLL = 0;
   5747 75 CA 00      [24]  929 	mov	_TMR2RLL,#0x00
                            930 ;	radio/timer.c:157: TMR2RLH = 0;
   574A 75 CB 00      [24]  931 	mov	_TMR2RLH,#0x00
                            932 ;	radio/timer.c:158: TMR2CN  = 0x04; // start running, count at SYSCLK/12
   574D 75 C8 04      [24]  933 	mov	_TMR2CN,#0x04
                            934 ;	radio/timer.c:159: ET2 = 1;
   5750 D2 AD         [12]  935 	setb	_ET2
   5752 22            [24]  936 	ret
                            937 ;------------------------------------------------------------
                            938 ;Allocation info for local variables in function 'timer_entropy'
                            939 ;------------------------------------------------------------
                            940 ;	radio/timer.c:164: timer_entropy(void)
                            941 ;	-----------------------------------------
                            942 ;	 function timer_entropy
                            943 ;	-----------------------------------------
   5753                     944 _timer_entropy:
                            945 ;	radio/timer.c:167: return TMR2L;
   5753 85 CC 82      [24]  946 	mov	dpl,_TMR2L
   5756 22            [24]  947 	ret
                            948 	.area CSEG    (CODE)
                            949 	.area CONST   (CODE)
                            950 	.area XINIT   (CODE)
                            951 	.area CABS    (ABS,CODE)
