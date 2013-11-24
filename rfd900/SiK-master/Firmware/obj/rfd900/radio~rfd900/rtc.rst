                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:14 2013
                              5 ;--------------------------------------------------------
                              6 	.module rtc
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _NSS1
                             13 	.globl _IRQ
                             14 	.globl _PIN_ENABLE
                             15 	.globl _PIN_CONFIG
                             16 	.globl _LED_GREEN
                             17 	.globl _LED_RED
                             18 	.globl _SPI0EN
                             19 	.globl _TXBMT0
                             20 	.globl _NSS0MD0
                             21 	.globl _NSS0MD1
                             22 	.globl _RXOVRN0
                             23 	.globl _MODF0
                             24 	.globl _WCOL0
                             25 	.globl _SPIF0
                             26 	.globl _AD0CM0
                             27 	.globl _AD0CM1
                             28 	.globl _AD0CM2
                             29 	.globl _AD0WINT
                             30 	.globl _AD0BUSY
                             31 	.globl _AD0INT
                             32 	.globl _BURSTEN
                             33 	.globl _AD0EN
                             34 	.globl _CCF0
                             35 	.globl _CCF1
                             36 	.globl _CCF2
                             37 	.globl _CCF3
                             38 	.globl _CCF4
                             39 	.globl _CCF5
                             40 	.globl _CR
                             41 	.globl _CF
                             42 	.globl _P
                             43 	.globl _F1
                             44 	.globl _OV
                             45 	.globl _RS0
                             46 	.globl _RS1
                             47 	.globl _F0
                             48 	.globl _AC
                             49 	.globl _CY
                             50 	.globl _T2XCLK
                             51 	.globl _T2RCLK
                             52 	.globl _TR2
                             53 	.globl _T2SPLIT
                             54 	.globl _TF2CEN
                             55 	.globl _TF2LEN
                             56 	.globl _TF2L
                             57 	.globl _TF2H
                             58 	.globl _SI
                             59 	.globl _ACK
                             60 	.globl _ARBLOST
                             61 	.globl _ACKRQ
                             62 	.globl _STO
                             63 	.globl _STA
                             64 	.globl _TXMODE
                             65 	.globl _MASTER
                             66 	.globl _PX0
                             67 	.globl _PT0
                             68 	.globl _PX1
                             69 	.globl _PT1
                             70 	.globl _PS0
                             71 	.globl _PT2
                             72 	.globl _PSPI0
                             73 	.globl _SPI1EN
                             74 	.globl _TXBMT1
                             75 	.globl _NSS1MD0
                             76 	.globl _NSS1MD1
                             77 	.globl _RXOVRN1
                             78 	.globl _MODF1
                             79 	.globl _WCOL1
                             80 	.globl _SPIF1
                             81 	.globl _EX0
                             82 	.globl _ET0
                             83 	.globl _EX1
                             84 	.globl _ET1
                             85 	.globl _ES0
                             86 	.globl _ET2
                             87 	.globl _ESPI0
                             88 	.globl _EA
                             89 	.globl _RI0
                             90 	.globl _TI0
                             91 	.globl _RB80
                             92 	.globl _TB80
                             93 	.globl _REN0
                             94 	.globl _MCE0
                             95 	.globl _S0MODE
                             96 	.globl _CRC0VAL
                             97 	.globl _CRC0INIT
                             98 	.globl _CRC0SEL
                             99 	.globl _IT0
                            100 	.globl _IE0
                            101 	.globl _IT1
                            102 	.globl _IE1
                            103 	.globl _TR0
                            104 	.globl _TF0
                            105 	.globl _TR1
                            106 	.globl _TF1
                            107 	.globl _PCA0CP4
                            108 	.globl _PCA0CP0
                            109 	.globl _PCA0
                            110 	.globl _PCA0CP3
                            111 	.globl _PCA0CP2
                            112 	.globl _PCA0CP1
                            113 	.globl _PCA0CP5
                            114 	.globl _TMR2
                            115 	.globl _TMR2RL
                            116 	.globl _ADC0LT
                            117 	.globl _ADC0GT
                            118 	.globl _ADC0
                            119 	.globl _TMR3
                            120 	.globl _TMR3RL
                            121 	.globl _TOFF
                            122 	.globl _DP
                            123 	.globl _VDM0CN
                            124 	.globl _PCA0CPH4
                            125 	.globl _PCA0CPL4
                            126 	.globl _PCA0CPH0
                            127 	.globl _PCA0CPL0
                            128 	.globl _PCA0H
                            129 	.globl _PCA0L
                            130 	.globl _SPI0CN
                            131 	.globl _EIP2
                            132 	.globl _EIP1
                            133 	.globl _SMB0ADM
                            134 	.globl _SMB0ADR
                            135 	.globl _P2MDIN
                            136 	.globl _P1MDIN
                            137 	.globl _P0MDIN
                            138 	.globl _B
                            139 	.globl _RSTSRC
                            140 	.globl _PCA0CPH3
                            141 	.globl _PCA0CPL3
                            142 	.globl _PCA0CPH2
                            143 	.globl _PCA0CPL2
                            144 	.globl _PCA0CPH1
                            145 	.globl _PCA0CPL1
                            146 	.globl _ADC0CN
                            147 	.globl _EIE2
                            148 	.globl _EIE1
                            149 	.globl _FLWR
                            150 	.globl _IT01CF
                            151 	.globl _XBR2
                            152 	.globl _XBR1
                            153 	.globl _XBR0
                            154 	.globl _ACC
                            155 	.globl _PCA0PWM
                            156 	.globl _PCA0CPM4
                            157 	.globl _PCA0CPM3
                            158 	.globl _PCA0CPM2
                            159 	.globl _PCA0CPM1
                            160 	.globl _PCA0CPM0
                            161 	.globl _PCA0MD
                            162 	.globl _PCA0CN
                            163 	.globl _P0MAT
                            164 	.globl _P2SKIP
                            165 	.globl _P1SKIP
                            166 	.globl _P0SKIP
                            167 	.globl _PCA0CPH5
                            168 	.globl _PCA0CPL5
                            169 	.globl _REF0CN
                            170 	.globl _PSW
                            171 	.globl _P1MAT
                            172 	.globl _PCA0CPM5
                            173 	.globl _TMR2H
                            174 	.globl _TMR2L
                            175 	.globl _TMR2RLH
                            176 	.globl _TMR2RLL
                            177 	.globl _REG0CN
                            178 	.globl _TMR2CN
                            179 	.globl _P0MASK
                            180 	.globl _ADC0LTH
                            181 	.globl _ADC0LTL
                            182 	.globl _ADC0GTH
                            183 	.globl _ADC0GTL
                            184 	.globl _SMB0DAT
                            185 	.globl _SMB0CF
                            186 	.globl _SMB0CN
                            187 	.globl _P1MASK
                            188 	.globl _ADC0H
                            189 	.globl _ADC0L
                            190 	.globl _ADC0TK
                            191 	.globl _ADC0CF
                            192 	.globl _ADC0MX
                            193 	.globl _ADC0PWR
                            194 	.globl _ADC0AC
                            195 	.globl _IREF0CN
                            196 	.globl _IP
                            197 	.globl _FLKEY
                            198 	.globl _FLSCL
                            199 	.globl _PMU0CF
                            200 	.globl _OSCICL
                            201 	.globl _OSCICN
                            202 	.globl _OSCXCN
                            203 	.globl _SPI1CN
                            204 	.globl _ONESHOT
                            205 	.globl _EMI0TC
                            206 	.globl _RTC0KEY
                            207 	.globl _RTC0DAT
                            208 	.globl _RTC0ADR
                            209 	.globl _EMI0CF
                            210 	.globl _EMI0CN
                            211 	.globl _CLKSEL
                            212 	.globl _IE
                            213 	.globl _SFRPAGE
                            214 	.globl _P2DRV
                            215 	.globl _P2MDOUT
                            216 	.globl _P1DRV
                            217 	.globl _P1MDOUT
                            218 	.globl _P0DRV
                            219 	.globl _P0MDOUT
                            220 	.globl _SPI0DAT
                            221 	.globl _SPI0CKR
                            222 	.globl _SPI0CFG
                            223 	.globl _P2
                            224 	.globl _CPT0MX
                            225 	.globl _CPT1MX
                            226 	.globl _CPT0MD
                            227 	.globl _CPT1MD
                            228 	.globl _CPT0CN
                            229 	.globl _CPT1CN
                            230 	.globl _SBUF0
                            231 	.globl _SCON0
                            232 	.globl _CRC0CNT
                            233 	.globl _DC0CN
                            234 	.globl _CRC0AUTO
                            235 	.globl _DC0CF
                            236 	.globl _TMR3H
                            237 	.globl _CRC0FLIP
                            238 	.globl _TMR3L
                            239 	.globl _CRC0IN
                            240 	.globl _TMR3RLH
                            241 	.globl _CRC0CN
                            242 	.globl _TMR3RLL
                            243 	.globl _CRC0DAT
                            244 	.globl _TMR3CN
                            245 	.globl _P1
                            246 	.globl _PSCTL
                            247 	.globl _CKCON
                            248 	.globl _TH1
                            249 	.globl _TH0
                            250 	.globl _TL1
                            251 	.globl _TL0
                            252 	.globl _TMOD
                            253 	.globl _TCON
                            254 	.globl _PCON
                            255 	.globl _TOFFH
                            256 	.globl _SPI1DAT
                            257 	.globl _TOFFL
                            258 	.globl _SPI1CKR
                            259 	.globl _SPI1CFG
                            260 	.globl _DPH
                            261 	.globl _DPL
                            262 	.globl _SP
                            263 	.globl _P0
                            264 ;--------------------------------------------------------
                            265 ; special function registers
                            266 ;--------------------------------------------------------
                            267 	.area RSEG    (ABS,DATA)
   0000                     268 	.org 0x0000
                     0080   269 _P0	=	0x0080
                     0081   270 _SP	=	0x0081
                     0082   271 _DPL	=	0x0082
                     0083   272 _DPH	=	0x0083
                     0084   273 _SPI1CFG	=	0x0084
                     0085   274 _SPI1CKR	=	0x0085
                     0085   275 _TOFFL	=	0x0085
                     0086   276 _SPI1DAT	=	0x0086
                     0086   277 _TOFFH	=	0x0086
                     0087   278 _PCON	=	0x0087
                     0088   279 _TCON	=	0x0088
                     0089   280 _TMOD	=	0x0089
                     008A   281 _TL0	=	0x008a
                     008B   282 _TL1	=	0x008b
                     008C   283 _TH0	=	0x008c
                     008D   284 _TH1	=	0x008d
                     008E   285 _CKCON	=	0x008e
                     008F   286 _PSCTL	=	0x008f
                     0090   287 _P1	=	0x0090
                     0091   288 _TMR3CN	=	0x0091
                     0091   289 _CRC0DAT	=	0x0091
                     0092   290 _TMR3RLL	=	0x0092
                     0092   291 _CRC0CN	=	0x0092
                     0093   292 _TMR3RLH	=	0x0093
                     0093   293 _CRC0IN	=	0x0093
                     0094   294 _TMR3L	=	0x0094
                     0095   295 _CRC0FLIP	=	0x0095
                     0095   296 _TMR3H	=	0x0095
                     0096   297 _DC0CF	=	0x0096
                     0096   298 _CRC0AUTO	=	0x0096
                     0097   299 _DC0CN	=	0x0097
                     0097   300 _CRC0CNT	=	0x0097
                     0098   301 _SCON0	=	0x0098
                     0099   302 _SBUF0	=	0x0099
                     009A   303 _CPT1CN	=	0x009a
                     009B   304 _CPT0CN	=	0x009b
                     009C   305 _CPT1MD	=	0x009c
                     009D   306 _CPT0MD	=	0x009d
                     009E   307 _CPT1MX	=	0x009e
                     009F   308 _CPT0MX	=	0x009f
                     00A0   309 _P2	=	0x00a0
                     00A1   310 _SPI0CFG	=	0x00a1
                     00A2   311 _SPI0CKR	=	0x00a2
                     00A3   312 _SPI0DAT	=	0x00a3
                     00A4   313 _P0MDOUT	=	0x00a4
                     00A4   314 _P0DRV	=	0x00a4
                     00A5   315 _P1MDOUT	=	0x00a5
                     00A5   316 _P1DRV	=	0x00a5
                     00A6   317 _P2MDOUT	=	0x00a6
                     00A6   318 _P2DRV	=	0x00a6
                     00A7   319 _SFRPAGE	=	0x00a7
                     00A8   320 _IE	=	0x00a8
                     00A9   321 _CLKSEL	=	0x00a9
                     00AA   322 _EMI0CN	=	0x00aa
                     00AB   323 _EMI0CF	=	0x00ab
                     00AC   324 _RTC0ADR	=	0x00ac
                     00AD   325 _RTC0DAT	=	0x00ad
                     00AE   326 _RTC0KEY	=	0x00ae
                     00AF   327 _EMI0TC	=	0x00af
                     00AF   328 _ONESHOT	=	0x00af
                     00B0   329 _SPI1CN	=	0x00b0
                     00B1   330 _OSCXCN	=	0x00b1
                     00B2   331 _OSCICN	=	0x00b2
                     00B3   332 _OSCICL	=	0x00b3
                     00B5   333 _PMU0CF	=	0x00b5
                     00B6   334 _FLSCL	=	0x00b6
                     00B7   335 _FLKEY	=	0x00b7
                     00B8   336 _IP	=	0x00b8
                     00B9   337 _IREF0CN	=	0x00b9
                     00BA   338 _ADC0AC	=	0x00ba
                     00BA   339 _ADC0PWR	=	0x00ba
                     00BB   340 _ADC0MX	=	0x00bb
                     00BC   341 _ADC0CF	=	0x00bc
                     00BD   342 _ADC0TK	=	0x00bd
                     00BD   343 _ADC0L	=	0x00bd
                     00BE   344 _ADC0H	=	0x00be
                     00BF   345 _P1MASK	=	0x00bf
                     00C0   346 _SMB0CN	=	0x00c0
                     00C1   347 _SMB0CF	=	0x00c1
                     00C2   348 _SMB0DAT	=	0x00c2
                     00C3   349 _ADC0GTL	=	0x00c3
                     00C4   350 _ADC0GTH	=	0x00c4
                     00C5   351 _ADC0LTL	=	0x00c5
                     00C6   352 _ADC0LTH	=	0x00c6
                     00C7   353 _P0MASK	=	0x00c7
                     00C8   354 _TMR2CN	=	0x00c8
                     00C9   355 _REG0CN	=	0x00c9
                     00CA   356 _TMR2RLL	=	0x00ca
                     00CB   357 _TMR2RLH	=	0x00cb
                     00CC   358 _TMR2L	=	0x00cc
                     00CD   359 _TMR2H	=	0x00cd
                     00CE   360 _PCA0CPM5	=	0x00ce
                     00CF   361 _P1MAT	=	0x00cf
                     00D0   362 _PSW	=	0x00d0
                     00D1   363 _REF0CN	=	0x00d1
                     00D2   364 _PCA0CPL5	=	0x00d2
                     00D3   365 _PCA0CPH5	=	0x00d3
                     00D4   366 _P0SKIP	=	0x00d4
                     00D5   367 _P1SKIP	=	0x00d5
                     00D6   368 _P2SKIP	=	0x00d6
                     00D7   369 _P0MAT	=	0x00d7
                     00D8   370 _PCA0CN	=	0x00d8
                     00D9   371 _PCA0MD	=	0x00d9
                     00DA   372 _PCA0CPM0	=	0x00da
                     00DB   373 _PCA0CPM1	=	0x00db
                     00DC   374 _PCA0CPM2	=	0x00dc
                     00DD   375 _PCA0CPM3	=	0x00dd
                     00DE   376 _PCA0CPM4	=	0x00de
                     00DF   377 _PCA0PWM	=	0x00df
                     00E0   378 _ACC	=	0x00e0
                     00E1   379 _XBR0	=	0x00e1
                     00E2   380 _XBR1	=	0x00e2
                     00E3   381 _XBR2	=	0x00e3
                     00E4   382 _IT01CF	=	0x00e4
                     00E5   383 _FLWR	=	0x00e5
                     00E6   384 _EIE1	=	0x00e6
                     00E7   385 _EIE2	=	0x00e7
                     00E8   386 _ADC0CN	=	0x00e8
                     00E9   387 _PCA0CPL1	=	0x00e9
                     00EA   388 _PCA0CPH1	=	0x00ea
                     00EB   389 _PCA0CPL2	=	0x00eb
                     00EC   390 _PCA0CPH2	=	0x00ec
                     00ED   391 _PCA0CPL3	=	0x00ed
                     00EE   392 _PCA0CPH3	=	0x00ee
                     00EF   393 _RSTSRC	=	0x00ef
                     00F0   394 _B	=	0x00f0
                     00F1   395 _P0MDIN	=	0x00f1
                     00F2   396 _P1MDIN	=	0x00f2
                     00F3   397 _P2MDIN	=	0x00f3
                     00F4   398 _SMB0ADR	=	0x00f4
                     00F5   399 _SMB0ADM	=	0x00f5
                     00F6   400 _EIP1	=	0x00f6
                     00F7   401 _EIP2	=	0x00f7
                     00F8   402 _SPI0CN	=	0x00f8
                     00F9   403 _PCA0L	=	0x00f9
                     00FA   404 _PCA0H	=	0x00fa
                     00FB   405 _PCA0CPL0	=	0x00fb
                     00FC   406 _PCA0CPH0	=	0x00fc
                     00FD   407 _PCA0CPL4	=	0x00fd
                     00FE   408 _PCA0CPH4	=	0x00fe
                     00FF   409 _VDM0CN	=	0x00ff
                     8382   410 _DP	=	0x8382
                     8685   411 _TOFF	=	0x8685
                     9392   412 _TMR3RL	=	0x9392
                     9594   413 _TMR3	=	0x9594
                     BEBD   414 _ADC0	=	0xbebd
                     C4C3   415 _ADC0GT	=	0xc4c3
                     C6C5   416 _ADC0LT	=	0xc6c5
                     CBCA   417 _TMR2RL	=	0xcbca
                     CDCC   418 _TMR2	=	0xcdcc
                     D3D2   419 _PCA0CP5	=	0xd3d2
                     EAE9   420 _PCA0CP1	=	0xeae9
                     ECEB   421 _PCA0CP2	=	0xeceb
                     EEED   422 _PCA0CP3	=	0xeeed
                     FAF9   423 _PCA0	=	0xfaf9
                     FCFB   424 _PCA0CP0	=	0xfcfb
                     FEFD   425 _PCA0CP4	=	0xfefd
                            426 ;--------------------------------------------------------
                            427 ; special function bits
                            428 ;--------------------------------------------------------
                            429 	.area RSEG    (ABS,DATA)
   0000                     430 	.org 0x0000
                     008F   431 _TF1	=	0x008f
                     008E   432 _TR1	=	0x008e
                     008D   433 _TF0	=	0x008d
                     008C   434 _TR0	=	0x008c
                     008B   435 _IE1	=	0x008b
                     008A   436 _IT1	=	0x008a
                     0089   437 _IE0	=	0x0089
                     0088   438 _IT0	=	0x0088
                     0096   439 _CRC0SEL	=	0x0096
                     0095   440 _CRC0INIT	=	0x0095
                     0094   441 _CRC0VAL	=	0x0094
                     009F   442 _S0MODE	=	0x009f
                     009D   443 _MCE0	=	0x009d
                     009C   444 _REN0	=	0x009c
                     009B   445 _TB80	=	0x009b
                     009A   446 _RB80	=	0x009a
                     0099   447 _TI0	=	0x0099
                     0098   448 _RI0	=	0x0098
                     00AF   449 _EA	=	0x00af
                     00AE   450 _ESPI0	=	0x00ae
                     00AD   451 _ET2	=	0x00ad
                     00AC   452 _ES0	=	0x00ac
                     00AB   453 _ET1	=	0x00ab
                     00AA   454 _EX1	=	0x00aa
                     00A9   455 _ET0	=	0x00a9
                     00A8   456 _EX0	=	0x00a8
                     00B7   457 _SPIF1	=	0x00b7
                     00B6   458 _WCOL1	=	0x00b6
                     00B5   459 _MODF1	=	0x00b5
                     00B4   460 _RXOVRN1	=	0x00b4
                     00B3   461 _NSS1MD1	=	0x00b3
                     00B2   462 _NSS1MD0	=	0x00b2
                     00B1   463 _TXBMT1	=	0x00b1
                     00B0   464 _SPI1EN	=	0x00b0
                     00BE   465 _PSPI0	=	0x00be
                     00BD   466 _PT2	=	0x00bd
                     00BC   467 _PS0	=	0x00bc
                     00BB   468 _PT1	=	0x00bb
                     00BA   469 _PX1	=	0x00ba
                     00B9   470 _PT0	=	0x00b9
                     00B8   471 _PX0	=	0x00b8
                     00C7   472 _MASTER	=	0x00c7
                     00C6   473 _TXMODE	=	0x00c6
                     00C5   474 _STA	=	0x00c5
                     00C4   475 _STO	=	0x00c4
                     00C3   476 _ACKRQ	=	0x00c3
                     00C2   477 _ARBLOST	=	0x00c2
                     00C1   478 _ACK	=	0x00c1
                     00C0   479 _SI	=	0x00c0
                     00CF   480 _TF2H	=	0x00cf
                     00CE   481 _TF2L	=	0x00ce
                     00CD   482 _TF2LEN	=	0x00cd
                     00CC   483 _TF2CEN	=	0x00cc
                     00CB   484 _T2SPLIT	=	0x00cb
                     00CA   485 _TR2	=	0x00ca
                     00C9   486 _T2RCLK	=	0x00c9
                     00C8   487 _T2XCLK	=	0x00c8
                     00D7   488 _CY	=	0x00d7
                     00D6   489 _AC	=	0x00d6
                     00D5   490 _F0	=	0x00d5
                     00D4   491 _RS1	=	0x00d4
                     00D3   492 _RS0	=	0x00d3
                     00D2   493 _OV	=	0x00d2
                     00D1   494 _F1	=	0x00d1
                     00D0   495 _P	=	0x00d0
                     00DF   496 _CF	=	0x00df
                     00DE   497 _CR	=	0x00de
                     00DD   498 _CCF5	=	0x00dd
                     00DC   499 _CCF4	=	0x00dc
                     00DB   500 _CCF3	=	0x00db
                     00DA   501 _CCF2	=	0x00da
                     00D9   502 _CCF1	=	0x00d9
                     00D8   503 _CCF0	=	0x00d8
                     00EF   504 _AD0EN	=	0x00ef
                     00EE   505 _BURSTEN	=	0x00ee
                     00ED   506 _AD0INT	=	0x00ed
                     00EC   507 _AD0BUSY	=	0x00ec
                     00EB   508 _AD0WINT	=	0x00eb
                     00EA   509 _AD0CM2	=	0x00ea
                     00E9   510 _AD0CM1	=	0x00e9
                     00E8   511 _AD0CM0	=	0x00e8
                     00FF   512 _SPIF0	=	0x00ff
                     00FE   513 _WCOL0	=	0x00fe
                     00FD   514 _MODF0	=	0x00fd
                     00FC   515 _RXOVRN0	=	0x00fc
                     00FB   516 _NSS0MD1	=	0x00fb
                     00FA   517 _NSS0MD0	=	0x00fa
                     00F9   518 _TXBMT0	=	0x00f9
                     00F8   519 _SPI0EN	=	0x00f8
                     0096   520 _LED_RED	=	0x0096
                     0095   521 _LED_GREEN	=	0x0095
                     0082   522 _PIN_CONFIG	=	0x0082
                     0083   523 _PIN_ENABLE	=	0x0083
                     0087   524 _IRQ	=	0x0087
                     0094   525 _NSS1	=	0x0094
                            526 ;--------------------------------------------------------
                            527 ; overlayable register banks
                            528 ;--------------------------------------------------------
                            529 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     530 	.ds 8
                            531 ;--------------------------------------------------------
                            532 ; internal ram data
                            533 ;--------------------------------------------------------
                            534 	.area DSEG    (DATA)
                            535 ;--------------------------------------------------------
                            536 ; overlayable items in internal ram 
                            537 ;--------------------------------------------------------
                            538 ;--------------------------------------------------------
                            539 ; indirectly addressable internal ram data
                            540 ;--------------------------------------------------------
                            541 	.area ISEG    (DATA)
                            542 ;--------------------------------------------------------
                            543 ; absolute internal ram data
                            544 ;--------------------------------------------------------
                            545 	.area IABS    (ABS,DATA)
                            546 	.area IABS    (ABS,DATA)
                            547 ;--------------------------------------------------------
                            548 ; bit data
                            549 ;--------------------------------------------------------
                            550 	.area BSEG    (BIT)
                            551 ;--------------------------------------------------------
                            552 ; paged external ram data
                            553 ;--------------------------------------------------------
                            554 	.area PSEG    (PAG,XDATA)
                            555 ;--------------------------------------------------------
                            556 ; external ram data
                            557 ;--------------------------------------------------------
                            558 	.area XSEG    (XDATA)
                            559 ;--------------------------------------------------------
                            560 ; absolute external ram data
                            561 ;--------------------------------------------------------
                            562 	.area XABS    (ABS,XDATA)
                            563 ;--------------------------------------------------------
                            564 ; external initialized ram data
                            565 ;--------------------------------------------------------
                            566 	.area XISEG   (XDATA)
                            567 	.area HOME    (CODE)
                            568 	.area GSINIT0 (CODE)
                            569 	.area GSINIT1 (CODE)
                            570 	.area GSINIT2 (CODE)
                            571 	.area GSINIT3 (CODE)
                            572 	.area GSINIT4 (CODE)
                            573 	.area GSINIT5 (CODE)
                            574 	.area GSINIT  (CODE)
                            575 	.area GSFINAL (CODE)
                            576 	.area CSEG    (CODE)
                            577 ;--------------------------------------------------------
                            578 ; global & static initialisations
                            579 ;--------------------------------------------------------
                            580 	.area HOME    (CODE)
                            581 	.area GSINIT  (CODE)
                            582 	.area GSFINAL (CODE)
                            583 	.area GSINIT  (CODE)
                            584 ;--------------------------------------------------------
                            585 ; Home
                            586 ;--------------------------------------------------------
                            587 	.area HOME    (CODE)
                            588 	.area HOME    (CODE)
                            589 ;--------------------------------------------------------
                            590 ; code
                            591 ;--------------------------------------------------------
                            592 	.area CSEG    (CODE)
                            593 	.area CSEG    (CODE)
                            594 	.area CONST   (CODE)
                            595 	.area XINIT   (CODE)
                            596 	.area CABS    (ABS,CODE)
