                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:07 2013
                              5 ;--------------------------------------------------------
                              6 	.module rtc
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _SDN
                             13 	.globl _NSS1
                             14 	.globl _IRQ
                             15 	.globl _BUTTON_DOWN
                             16 	.globl _BUTTON_UP
                             17 	.globl _BUTTON_ENTER
                             18 	.globl _LED_GREEN
                             19 	.globl _LED_RED
                             20 	.globl _SPI0EN
                             21 	.globl _TXBMT0
                             22 	.globl _NSS0MD0
                             23 	.globl _NSS0MD1
                             24 	.globl _RXOVRN0
                             25 	.globl _MODF0
                             26 	.globl _WCOL0
                             27 	.globl _SPIF0
                             28 	.globl _AD0CM0
                             29 	.globl _AD0CM1
                             30 	.globl _AD0CM2
                             31 	.globl _AD0WINT
                             32 	.globl _AD0BUSY
                             33 	.globl _AD0INT
                             34 	.globl _BURSTEN
                             35 	.globl _AD0EN
                             36 	.globl _CCF0
                             37 	.globl _CCF1
                             38 	.globl _CCF2
                             39 	.globl _CCF3
                             40 	.globl _CCF4
                             41 	.globl _CCF5
                             42 	.globl _CR
                             43 	.globl _CF
                             44 	.globl _P
                             45 	.globl _F1
                             46 	.globl _OV
                             47 	.globl _RS0
                             48 	.globl _RS1
                             49 	.globl _F0
                             50 	.globl _AC
                             51 	.globl _CY
                             52 	.globl _T2XCLK
                             53 	.globl _T2RCLK
                             54 	.globl _TR2
                             55 	.globl _T2SPLIT
                             56 	.globl _TF2CEN
                             57 	.globl _TF2LEN
                             58 	.globl _TF2L
                             59 	.globl _TF2H
                             60 	.globl _SI
                             61 	.globl _ACK
                             62 	.globl _ARBLOST
                             63 	.globl _ACKRQ
                             64 	.globl _STO
                             65 	.globl _STA
                             66 	.globl _TXMODE
                             67 	.globl _MASTER
                             68 	.globl _PX0
                             69 	.globl _PT0
                             70 	.globl _PX1
                             71 	.globl _PT1
                             72 	.globl _PS0
                             73 	.globl _PT2
                             74 	.globl _PSPI0
                             75 	.globl _SPI1EN
                             76 	.globl _TXBMT1
                             77 	.globl _NSS1MD0
                             78 	.globl _NSS1MD1
                             79 	.globl _RXOVRN1
                             80 	.globl _MODF1
                             81 	.globl _WCOL1
                             82 	.globl _SPIF1
                             83 	.globl _EX0
                             84 	.globl _ET0
                             85 	.globl _EX1
                             86 	.globl _ET1
                             87 	.globl _ES0
                             88 	.globl _ET2
                             89 	.globl _ESPI0
                             90 	.globl _EA
                             91 	.globl _RI0
                             92 	.globl _TI0
                             93 	.globl _RB80
                             94 	.globl _TB80
                             95 	.globl _REN0
                             96 	.globl _MCE0
                             97 	.globl _S0MODE
                             98 	.globl _CRC0VAL
                             99 	.globl _CRC0INIT
                            100 	.globl _CRC0SEL
                            101 	.globl _IT0
                            102 	.globl _IE0
                            103 	.globl _IT1
                            104 	.globl _IE1
                            105 	.globl _TR0
                            106 	.globl _TF0
                            107 	.globl _TR1
                            108 	.globl _TF1
                            109 	.globl _PCA0CP4
                            110 	.globl _PCA0CP0
                            111 	.globl _PCA0
                            112 	.globl _PCA0CP3
                            113 	.globl _PCA0CP2
                            114 	.globl _PCA0CP1
                            115 	.globl _PCA0CP5
                            116 	.globl _TMR2
                            117 	.globl _TMR2RL
                            118 	.globl _ADC0LT
                            119 	.globl _ADC0GT
                            120 	.globl _ADC0
                            121 	.globl _TMR3
                            122 	.globl _TMR3RL
                            123 	.globl _TOFF
                            124 	.globl _DP
                            125 	.globl _VDM0CN
                            126 	.globl _PCA0CPH4
                            127 	.globl _PCA0CPL4
                            128 	.globl _PCA0CPH0
                            129 	.globl _PCA0CPL0
                            130 	.globl _PCA0H
                            131 	.globl _PCA0L
                            132 	.globl _SPI0CN
                            133 	.globl _EIP2
                            134 	.globl _EIP1
                            135 	.globl _SMB0ADM
                            136 	.globl _SMB0ADR
                            137 	.globl _P2MDIN
                            138 	.globl _P1MDIN
                            139 	.globl _P0MDIN
                            140 	.globl _B
                            141 	.globl _RSTSRC
                            142 	.globl _PCA0CPH3
                            143 	.globl _PCA0CPL3
                            144 	.globl _PCA0CPH2
                            145 	.globl _PCA0CPL2
                            146 	.globl _PCA0CPH1
                            147 	.globl _PCA0CPL1
                            148 	.globl _ADC0CN
                            149 	.globl _EIE2
                            150 	.globl _EIE1
                            151 	.globl _FLWR
                            152 	.globl _IT01CF
                            153 	.globl _XBR2
                            154 	.globl _XBR1
                            155 	.globl _XBR0
                            156 	.globl _ACC
                            157 	.globl _PCA0PWM
                            158 	.globl _PCA0CPM4
                            159 	.globl _PCA0CPM3
                            160 	.globl _PCA0CPM2
                            161 	.globl _PCA0CPM1
                            162 	.globl _PCA0CPM0
                            163 	.globl _PCA0MD
                            164 	.globl _PCA0CN
                            165 	.globl _P0MAT
                            166 	.globl _P2SKIP
                            167 	.globl _P1SKIP
                            168 	.globl _P0SKIP
                            169 	.globl _PCA0CPH5
                            170 	.globl _PCA0CPL5
                            171 	.globl _REF0CN
                            172 	.globl _PSW
                            173 	.globl _P1MAT
                            174 	.globl _PCA0CPM5
                            175 	.globl _TMR2H
                            176 	.globl _TMR2L
                            177 	.globl _TMR2RLH
                            178 	.globl _TMR2RLL
                            179 	.globl _REG0CN
                            180 	.globl _TMR2CN
                            181 	.globl _P0MASK
                            182 	.globl _ADC0LTH
                            183 	.globl _ADC0LTL
                            184 	.globl _ADC0GTH
                            185 	.globl _ADC0GTL
                            186 	.globl _SMB0DAT
                            187 	.globl _SMB0CF
                            188 	.globl _SMB0CN
                            189 	.globl _P1MASK
                            190 	.globl _ADC0H
                            191 	.globl _ADC0L
                            192 	.globl _ADC0TK
                            193 	.globl _ADC0CF
                            194 	.globl _ADC0MX
                            195 	.globl _ADC0PWR
                            196 	.globl _ADC0AC
                            197 	.globl _IREF0CN
                            198 	.globl _IP
                            199 	.globl _FLKEY
                            200 	.globl _FLSCL
                            201 	.globl _PMU0CF
                            202 	.globl _OSCICL
                            203 	.globl _OSCICN
                            204 	.globl _OSCXCN
                            205 	.globl _SPI1CN
                            206 	.globl _ONESHOT
                            207 	.globl _EMI0TC
                            208 	.globl _RTC0KEY
                            209 	.globl _RTC0DAT
                            210 	.globl _RTC0ADR
                            211 	.globl _EMI0CF
                            212 	.globl _EMI0CN
                            213 	.globl _CLKSEL
                            214 	.globl _IE
                            215 	.globl _SFRPAGE
                            216 	.globl _P2DRV
                            217 	.globl _P2MDOUT
                            218 	.globl _P1DRV
                            219 	.globl _P1MDOUT
                            220 	.globl _P0DRV
                            221 	.globl _P0MDOUT
                            222 	.globl _SPI0DAT
                            223 	.globl _SPI0CKR
                            224 	.globl _SPI0CFG
                            225 	.globl _P2
                            226 	.globl _CPT0MX
                            227 	.globl _CPT1MX
                            228 	.globl _CPT0MD
                            229 	.globl _CPT1MD
                            230 	.globl _CPT0CN
                            231 	.globl _CPT1CN
                            232 	.globl _SBUF0
                            233 	.globl _SCON0
                            234 	.globl _CRC0CNT
                            235 	.globl _DC0CN
                            236 	.globl _CRC0AUTO
                            237 	.globl _DC0CF
                            238 	.globl _TMR3H
                            239 	.globl _CRC0FLIP
                            240 	.globl _TMR3L
                            241 	.globl _CRC0IN
                            242 	.globl _TMR3RLH
                            243 	.globl _CRC0CN
                            244 	.globl _TMR3RLL
                            245 	.globl _CRC0DAT
                            246 	.globl _TMR3CN
                            247 	.globl _P1
                            248 	.globl _PSCTL
                            249 	.globl _CKCON
                            250 	.globl _TH1
                            251 	.globl _TH0
                            252 	.globl _TL1
                            253 	.globl _TL0
                            254 	.globl _TMOD
                            255 	.globl _TCON
                            256 	.globl _PCON
                            257 	.globl _TOFFH
                            258 	.globl _SPI1DAT
                            259 	.globl _TOFFL
                            260 	.globl _SPI1CKR
                            261 	.globl _SPI1CFG
                            262 	.globl _DPH
                            263 	.globl _DPL
                            264 	.globl _SP
                            265 	.globl _P0
                            266 ;--------------------------------------------------------
                            267 ; special function registers
                            268 ;--------------------------------------------------------
                            269 	.area RSEG    (ABS,DATA)
   0000                     270 	.org 0x0000
                     0080   271 _P0	=	0x0080
                     0081   272 _SP	=	0x0081
                     0082   273 _DPL	=	0x0082
                     0083   274 _DPH	=	0x0083
                     0084   275 _SPI1CFG	=	0x0084
                     0085   276 _SPI1CKR	=	0x0085
                     0085   277 _TOFFL	=	0x0085
                     0086   278 _SPI1DAT	=	0x0086
                     0086   279 _TOFFH	=	0x0086
                     0087   280 _PCON	=	0x0087
                     0088   281 _TCON	=	0x0088
                     0089   282 _TMOD	=	0x0089
                     008A   283 _TL0	=	0x008a
                     008B   284 _TL1	=	0x008b
                     008C   285 _TH0	=	0x008c
                     008D   286 _TH1	=	0x008d
                     008E   287 _CKCON	=	0x008e
                     008F   288 _PSCTL	=	0x008f
                     0090   289 _P1	=	0x0090
                     0091   290 _TMR3CN	=	0x0091
                     0091   291 _CRC0DAT	=	0x0091
                     0092   292 _TMR3RLL	=	0x0092
                     0092   293 _CRC0CN	=	0x0092
                     0093   294 _TMR3RLH	=	0x0093
                     0093   295 _CRC0IN	=	0x0093
                     0094   296 _TMR3L	=	0x0094
                     0095   297 _CRC0FLIP	=	0x0095
                     0095   298 _TMR3H	=	0x0095
                     0096   299 _DC0CF	=	0x0096
                     0096   300 _CRC0AUTO	=	0x0096
                     0097   301 _DC0CN	=	0x0097
                     0097   302 _CRC0CNT	=	0x0097
                     0098   303 _SCON0	=	0x0098
                     0099   304 _SBUF0	=	0x0099
                     009A   305 _CPT1CN	=	0x009a
                     009B   306 _CPT0CN	=	0x009b
                     009C   307 _CPT1MD	=	0x009c
                     009D   308 _CPT0MD	=	0x009d
                     009E   309 _CPT1MX	=	0x009e
                     009F   310 _CPT0MX	=	0x009f
                     00A0   311 _P2	=	0x00a0
                     00A1   312 _SPI0CFG	=	0x00a1
                     00A2   313 _SPI0CKR	=	0x00a2
                     00A3   314 _SPI0DAT	=	0x00a3
                     00A4   315 _P0MDOUT	=	0x00a4
                     00A4   316 _P0DRV	=	0x00a4
                     00A5   317 _P1MDOUT	=	0x00a5
                     00A5   318 _P1DRV	=	0x00a5
                     00A6   319 _P2MDOUT	=	0x00a6
                     00A6   320 _P2DRV	=	0x00a6
                     00A7   321 _SFRPAGE	=	0x00a7
                     00A8   322 _IE	=	0x00a8
                     00A9   323 _CLKSEL	=	0x00a9
                     00AA   324 _EMI0CN	=	0x00aa
                     00AB   325 _EMI0CF	=	0x00ab
                     00AC   326 _RTC0ADR	=	0x00ac
                     00AD   327 _RTC0DAT	=	0x00ad
                     00AE   328 _RTC0KEY	=	0x00ae
                     00AF   329 _EMI0TC	=	0x00af
                     00AF   330 _ONESHOT	=	0x00af
                     00B0   331 _SPI1CN	=	0x00b0
                     00B1   332 _OSCXCN	=	0x00b1
                     00B2   333 _OSCICN	=	0x00b2
                     00B3   334 _OSCICL	=	0x00b3
                     00B5   335 _PMU0CF	=	0x00b5
                     00B6   336 _FLSCL	=	0x00b6
                     00B7   337 _FLKEY	=	0x00b7
                     00B8   338 _IP	=	0x00b8
                     00B9   339 _IREF0CN	=	0x00b9
                     00BA   340 _ADC0AC	=	0x00ba
                     00BA   341 _ADC0PWR	=	0x00ba
                     00BB   342 _ADC0MX	=	0x00bb
                     00BC   343 _ADC0CF	=	0x00bc
                     00BD   344 _ADC0TK	=	0x00bd
                     00BD   345 _ADC0L	=	0x00bd
                     00BE   346 _ADC0H	=	0x00be
                     00BF   347 _P1MASK	=	0x00bf
                     00C0   348 _SMB0CN	=	0x00c0
                     00C1   349 _SMB0CF	=	0x00c1
                     00C2   350 _SMB0DAT	=	0x00c2
                     00C3   351 _ADC0GTL	=	0x00c3
                     00C4   352 _ADC0GTH	=	0x00c4
                     00C5   353 _ADC0LTL	=	0x00c5
                     00C6   354 _ADC0LTH	=	0x00c6
                     00C7   355 _P0MASK	=	0x00c7
                     00C8   356 _TMR2CN	=	0x00c8
                     00C9   357 _REG0CN	=	0x00c9
                     00CA   358 _TMR2RLL	=	0x00ca
                     00CB   359 _TMR2RLH	=	0x00cb
                     00CC   360 _TMR2L	=	0x00cc
                     00CD   361 _TMR2H	=	0x00cd
                     00CE   362 _PCA0CPM5	=	0x00ce
                     00CF   363 _P1MAT	=	0x00cf
                     00D0   364 _PSW	=	0x00d0
                     00D1   365 _REF0CN	=	0x00d1
                     00D2   366 _PCA0CPL5	=	0x00d2
                     00D3   367 _PCA0CPH5	=	0x00d3
                     00D4   368 _P0SKIP	=	0x00d4
                     00D5   369 _P1SKIP	=	0x00d5
                     00D6   370 _P2SKIP	=	0x00d6
                     00D7   371 _P0MAT	=	0x00d7
                     00D8   372 _PCA0CN	=	0x00d8
                     00D9   373 _PCA0MD	=	0x00d9
                     00DA   374 _PCA0CPM0	=	0x00da
                     00DB   375 _PCA0CPM1	=	0x00db
                     00DC   376 _PCA0CPM2	=	0x00dc
                     00DD   377 _PCA0CPM3	=	0x00dd
                     00DE   378 _PCA0CPM4	=	0x00de
                     00DF   379 _PCA0PWM	=	0x00df
                     00E0   380 _ACC	=	0x00e0
                     00E1   381 _XBR0	=	0x00e1
                     00E2   382 _XBR1	=	0x00e2
                     00E3   383 _XBR2	=	0x00e3
                     00E4   384 _IT01CF	=	0x00e4
                     00E5   385 _FLWR	=	0x00e5
                     00E6   386 _EIE1	=	0x00e6
                     00E7   387 _EIE2	=	0x00e7
                     00E8   388 _ADC0CN	=	0x00e8
                     00E9   389 _PCA0CPL1	=	0x00e9
                     00EA   390 _PCA0CPH1	=	0x00ea
                     00EB   391 _PCA0CPL2	=	0x00eb
                     00EC   392 _PCA0CPH2	=	0x00ec
                     00ED   393 _PCA0CPL3	=	0x00ed
                     00EE   394 _PCA0CPH3	=	0x00ee
                     00EF   395 _RSTSRC	=	0x00ef
                     00F0   396 _B	=	0x00f0
                     00F1   397 _P0MDIN	=	0x00f1
                     00F2   398 _P1MDIN	=	0x00f2
                     00F3   399 _P2MDIN	=	0x00f3
                     00F4   400 _SMB0ADR	=	0x00f4
                     00F5   401 _SMB0ADM	=	0x00f5
                     00F6   402 _EIP1	=	0x00f6
                     00F7   403 _EIP2	=	0x00f7
                     00F8   404 _SPI0CN	=	0x00f8
                     00F9   405 _PCA0L	=	0x00f9
                     00FA   406 _PCA0H	=	0x00fa
                     00FB   407 _PCA0CPL0	=	0x00fb
                     00FC   408 _PCA0CPH0	=	0x00fc
                     00FD   409 _PCA0CPL4	=	0x00fd
                     00FE   410 _PCA0CPH4	=	0x00fe
                     00FF   411 _VDM0CN	=	0x00ff
                     8382   412 _DP	=	0x8382
                     8685   413 _TOFF	=	0x8685
                     9392   414 _TMR3RL	=	0x9392
                     9594   415 _TMR3	=	0x9594
                     BEBD   416 _ADC0	=	0xbebd
                     C4C3   417 _ADC0GT	=	0xc4c3
                     C6C5   418 _ADC0LT	=	0xc6c5
                     CBCA   419 _TMR2RL	=	0xcbca
                     CDCC   420 _TMR2	=	0xcdcc
                     D3D2   421 _PCA0CP5	=	0xd3d2
                     EAE9   422 _PCA0CP1	=	0xeae9
                     ECEB   423 _PCA0CP2	=	0xeceb
                     EEED   424 _PCA0CP3	=	0xeeed
                     FAF9   425 _PCA0	=	0xfaf9
                     FCFB   426 _PCA0CP0	=	0xfcfb
                     FEFD   427 _PCA0CP4	=	0xfefd
                            428 ;--------------------------------------------------------
                            429 ; special function bits
                            430 ;--------------------------------------------------------
                            431 	.area RSEG    (ABS,DATA)
   0000                     432 	.org 0x0000
                     008F   433 _TF1	=	0x008f
                     008E   434 _TR1	=	0x008e
                     008D   435 _TF0	=	0x008d
                     008C   436 _TR0	=	0x008c
                     008B   437 _IE1	=	0x008b
                     008A   438 _IT1	=	0x008a
                     0089   439 _IE0	=	0x0089
                     0088   440 _IT0	=	0x0088
                     0096   441 _CRC0SEL	=	0x0096
                     0095   442 _CRC0INIT	=	0x0095
                     0094   443 _CRC0VAL	=	0x0094
                     009F   444 _S0MODE	=	0x009f
                     009D   445 _MCE0	=	0x009d
                     009C   446 _REN0	=	0x009c
                     009B   447 _TB80	=	0x009b
                     009A   448 _RB80	=	0x009a
                     0099   449 _TI0	=	0x0099
                     0098   450 _RI0	=	0x0098
                     00AF   451 _EA	=	0x00af
                     00AE   452 _ESPI0	=	0x00ae
                     00AD   453 _ET2	=	0x00ad
                     00AC   454 _ES0	=	0x00ac
                     00AB   455 _ET1	=	0x00ab
                     00AA   456 _EX1	=	0x00aa
                     00A9   457 _ET0	=	0x00a9
                     00A8   458 _EX0	=	0x00a8
                     00B7   459 _SPIF1	=	0x00b7
                     00B6   460 _WCOL1	=	0x00b6
                     00B5   461 _MODF1	=	0x00b5
                     00B4   462 _RXOVRN1	=	0x00b4
                     00B3   463 _NSS1MD1	=	0x00b3
                     00B2   464 _NSS1MD0	=	0x00b2
                     00B1   465 _TXBMT1	=	0x00b1
                     00B0   466 _SPI1EN	=	0x00b0
                     00BE   467 _PSPI0	=	0x00be
                     00BD   468 _PT2	=	0x00bd
                     00BC   469 _PS0	=	0x00bc
                     00BB   470 _PT1	=	0x00bb
                     00BA   471 _PX1	=	0x00ba
                     00B9   472 _PT0	=	0x00b9
                     00B8   473 _PX0	=	0x00b8
                     00C7   474 _MASTER	=	0x00c7
                     00C6   475 _TXMODE	=	0x00c6
                     00C5   476 _STA	=	0x00c5
                     00C4   477 _STO	=	0x00c4
                     00C3   478 _ACKRQ	=	0x00c3
                     00C2   479 _ARBLOST	=	0x00c2
                     00C1   480 _ACK	=	0x00c1
                     00C0   481 _SI	=	0x00c0
                     00CF   482 _TF2H	=	0x00cf
                     00CE   483 _TF2L	=	0x00ce
                     00CD   484 _TF2LEN	=	0x00cd
                     00CC   485 _TF2CEN	=	0x00cc
                     00CB   486 _T2SPLIT	=	0x00cb
                     00CA   487 _TR2	=	0x00ca
                     00C9   488 _T2RCLK	=	0x00c9
                     00C8   489 _T2XCLK	=	0x00c8
                     00D7   490 _CY	=	0x00d7
                     00D6   491 _AC	=	0x00d6
                     00D5   492 _F0	=	0x00d5
                     00D4   493 _RS1	=	0x00d4
                     00D3   494 _RS0	=	0x00d3
                     00D2   495 _OV	=	0x00d2
                     00D1   496 _F1	=	0x00d1
                     00D0   497 _P	=	0x00d0
                     00DF   498 _CF	=	0x00df
                     00DE   499 _CR	=	0x00de
                     00DD   500 _CCF5	=	0x00dd
                     00DC   501 _CCF4	=	0x00dc
                     00DB   502 _CCF3	=	0x00db
                     00DA   503 _CCF2	=	0x00da
                     00D9   504 _CCF1	=	0x00d9
                     00D8   505 _CCF0	=	0x00d8
                     00EF   506 _AD0EN	=	0x00ef
                     00EE   507 _BURSTEN	=	0x00ee
                     00ED   508 _AD0INT	=	0x00ed
                     00EC   509 _AD0BUSY	=	0x00ec
                     00EB   510 _AD0WINT	=	0x00eb
                     00EA   511 _AD0CM2	=	0x00ea
                     00E9   512 _AD0CM1	=	0x00e9
                     00E8   513 _AD0CM0	=	0x00e8
                     00FF   514 _SPIF0	=	0x00ff
                     00FE   515 _WCOL0	=	0x00fe
                     00FD   516 _MODF0	=	0x00fd
                     00FC   517 _RXOVRN0	=	0x00fc
                     00FB   518 _NSS0MD1	=	0x00fb
                     00FA   519 _NSS0MD0	=	0x00fa
                     00F9   520 _TXBMT0	=	0x00f9
                     00F8   521 _SPI0EN	=	0x00f8
                     00A0   522 _LED_RED	=	0x00a0
                     00A5   523 _LED_GREEN	=	0x00a5
                     0086   524 _BUTTON_ENTER	=	0x0086
                     0095   525 _BUTTON_UP	=	0x0095
                     0096   526 _BUTTON_DOWN	=	0x0096
                     0087   527 _IRQ	=	0x0087
                     0094   528 _NSS1	=	0x0094
                     00A6   529 _SDN	=	0x00a6
                            530 ;--------------------------------------------------------
                            531 ; overlayable register banks
                            532 ;--------------------------------------------------------
                            533 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     534 	.ds 8
                            535 ;--------------------------------------------------------
                            536 ; internal ram data
                            537 ;--------------------------------------------------------
                            538 	.area DSEG    (DATA)
                            539 ;--------------------------------------------------------
                            540 ; overlayable items in internal ram 
                            541 ;--------------------------------------------------------
                            542 ;--------------------------------------------------------
                            543 ; indirectly addressable internal ram data
                            544 ;--------------------------------------------------------
                            545 	.area ISEG    (DATA)
                            546 ;--------------------------------------------------------
                            547 ; absolute internal ram data
                            548 ;--------------------------------------------------------
                            549 	.area IABS    (ABS,DATA)
                            550 	.area IABS    (ABS,DATA)
                            551 ;--------------------------------------------------------
                            552 ; bit data
                            553 ;--------------------------------------------------------
                            554 	.area BSEG    (BIT)
                            555 ;--------------------------------------------------------
                            556 ; paged external ram data
                            557 ;--------------------------------------------------------
                            558 	.area PSEG    (PAG,XDATA)
                            559 ;--------------------------------------------------------
                            560 ; external ram data
                            561 ;--------------------------------------------------------
                            562 	.area XSEG    (XDATA)
                            563 ;--------------------------------------------------------
                            564 ; absolute external ram data
                            565 ;--------------------------------------------------------
                            566 	.area XABS    (ABS,XDATA)
                            567 ;--------------------------------------------------------
                            568 ; external initialized ram data
                            569 ;--------------------------------------------------------
                            570 	.area XISEG   (XDATA)
                            571 	.area HOME    (CODE)
                            572 	.area GSINIT0 (CODE)
                            573 	.area GSINIT1 (CODE)
                            574 	.area GSINIT2 (CODE)
                            575 	.area GSINIT3 (CODE)
                            576 	.area GSINIT4 (CODE)
                            577 	.area GSINIT5 (CODE)
                            578 	.area GSINIT  (CODE)
                            579 	.area GSFINAL (CODE)
                            580 	.area CSEG    (CODE)
                            581 ;--------------------------------------------------------
                            582 ; global & static initialisations
                            583 ;--------------------------------------------------------
                            584 	.area HOME    (CODE)
                            585 	.area GSINIT  (CODE)
                            586 	.area GSFINAL (CODE)
                            587 	.area GSINIT  (CODE)
                            588 ;--------------------------------------------------------
                            589 ; Home
                            590 ;--------------------------------------------------------
                            591 	.area HOME    (CODE)
                            592 	.area HOME    (CODE)
                            593 ;--------------------------------------------------------
                            594 ; code
                            595 ;--------------------------------------------------------
                            596 	.area CSEG    (CODE)
                            597 	.area CSEG    (CODE)
                            598 	.area CONST   (CODE)
                            599 	.area XINIT   (CODE)
                            600 	.area CABS    (ABS,CODE)
