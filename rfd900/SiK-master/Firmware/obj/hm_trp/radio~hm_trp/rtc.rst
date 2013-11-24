                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:04 2013
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
                             15 	.globl _PIN_ENABLE
                             16 	.globl _PIN_CONFIG
                             17 	.globl _LED_GREEN
                             18 	.globl _LED_RED
                             19 	.globl _SPI0EN
                             20 	.globl _TXBMT0
                             21 	.globl _NSS0MD0
                             22 	.globl _NSS0MD1
                             23 	.globl _RXOVRN0
                             24 	.globl _MODF0
                             25 	.globl _WCOL0
                             26 	.globl _SPIF0
                             27 	.globl _AD0CM0
                             28 	.globl _AD0CM1
                             29 	.globl _AD0CM2
                             30 	.globl _AD0WINT
                             31 	.globl _AD0BUSY
                             32 	.globl _AD0INT
                             33 	.globl _BURSTEN
                             34 	.globl _AD0EN
                             35 	.globl _CCF0
                             36 	.globl _CCF1
                             37 	.globl _CCF2
                             38 	.globl _CCF3
                             39 	.globl _CCF4
                             40 	.globl _CCF5
                             41 	.globl _CR
                             42 	.globl _CF
                             43 	.globl _P
                             44 	.globl _F1
                             45 	.globl _OV
                             46 	.globl _RS0
                             47 	.globl _RS1
                             48 	.globl _F0
                             49 	.globl _AC
                             50 	.globl _CY
                             51 	.globl _T2XCLK
                             52 	.globl _T2RCLK
                             53 	.globl _TR2
                             54 	.globl _T2SPLIT
                             55 	.globl _TF2CEN
                             56 	.globl _TF2LEN
                             57 	.globl _TF2L
                             58 	.globl _TF2H
                             59 	.globl _SI
                             60 	.globl _ACK
                             61 	.globl _ARBLOST
                             62 	.globl _ACKRQ
                             63 	.globl _STO
                             64 	.globl _STA
                             65 	.globl _TXMODE
                             66 	.globl _MASTER
                             67 	.globl _PX0
                             68 	.globl _PT0
                             69 	.globl _PX1
                             70 	.globl _PT1
                             71 	.globl _PS0
                             72 	.globl _PT2
                             73 	.globl _PSPI0
                             74 	.globl _SPI1EN
                             75 	.globl _TXBMT1
                             76 	.globl _NSS1MD0
                             77 	.globl _NSS1MD1
                             78 	.globl _RXOVRN1
                             79 	.globl _MODF1
                             80 	.globl _WCOL1
                             81 	.globl _SPIF1
                             82 	.globl _EX0
                             83 	.globl _ET0
                             84 	.globl _EX1
                             85 	.globl _ET1
                             86 	.globl _ES0
                             87 	.globl _ET2
                             88 	.globl _ESPI0
                             89 	.globl _EA
                             90 	.globl _RI0
                             91 	.globl _TI0
                             92 	.globl _RB80
                             93 	.globl _TB80
                             94 	.globl _REN0
                             95 	.globl _MCE0
                             96 	.globl _S0MODE
                             97 	.globl _CRC0VAL
                             98 	.globl _CRC0INIT
                             99 	.globl _CRC0SEL
                            100 	.globl _IT0
                            101 	.globl _IE0
                            102 	.globl _IT1
                            103 	.globl _IE1
                            104 	.globl _TR0
                            105 	.globl _TF0
                            106 	.globl _TR1
                            107 	.globl _TF1
                            108 	.globl _PCA0CP4
                            109 	.globl _PCA0CP0
                            110 	.globl _PCA0
                            111 	.globl _PCA0CP3
                            112 	.globl _PCA0CP2
                            113 	.globl _PCA0CP1
                            114 	.globl _PCA0CP5
                            115 	.globl _TMR2
                            116 	.globl _TMR2RL
                            117 	.globl _ADC0LT
                            118 	.globl _ADC0GT
                            119 	.globl _ADC0
                            120 	.globl _TMR3
                            121 	.globl _TMR3RL
                            122 	.globl _TOFF
                            123 	.globl _DP
                            124 	.globl _VDM0CN
                            125 	.globl _PCA0CPH4
                            126 	.globl _PCA0CPL4
                            127 	.globl _PCA0CPH0
                            128 	.globl _PCA0CPL0
                            129 	.globl _PCA0H
                            130 	.globl _PCA0L
                            131 	.globl _SPI0CN
                            132 	.globl _EIP2
                            133 	.globl _EIP1
                            134 	.globl _SMB0ADM
                            135 	.globl _SMB0ADR
                            136 	.globl _P2MDIN
                            137 	.globl _P1MDIN
                            138 	.globl _P0MDIN
                            139 	.globl _B
                            140 	.globl _RSTSRC
                            141 	.globl _PCA0CPH3
                            142 	.globl _PCA0CPL3
                            143 	.globl _PCA0CPH2
                            144 	.globl _PCA0CPL2
                            145 	.globl _PCA0CPH1
                            146 	.globl _PCA0CPL1
                            147 	.globl _ADC0CN
                            148 	.globl _EIE2
                            149 	.globl _EIE1
                            150 	.globl _FLWR
                            151 	.globl _IT01CF
                            152 	.globl _XBR2
                            153 	.globl _XBR1
                            154 	.globl _XBR0
                            155 	.globl _ACC
                            156 	.globl _PCA0PWM
                            157 	.globl _PCA0CPM4
                            158 	.globl _PCA0CPM3
                            159 	.globl _PCA0CPM2
                            160 	.globl _PCA0CPM1
                            161 	.globl _PCA0CPM0
                            162 	.globl _PCA0MD
                            163 	.globl _PCA0CN
                            164 	.globl _P0MAT
                            165 	.globl _P2SKIP
                            166 	.globl _P1SKIP
                            167 	.globl _P0SKIP
                            168 	.globl _PCA0CPH5
                            169 	.globl _PCA0CPL5
                            170 	.globl _REF0CN
                            171 	.globl _PSW
                            172 	.globl _P1MAT
                            173 	.globl _PCA0CPM5
                            174 	.globl _TMR2H
                            175 	.globl _TMR2L
                            176 	.globl _TMR2RLH
                            177 	.globl _TMR2RLL
                            178 	.globl _REG0CN
                            179 	.globl _TMR2CN
                            180 	.globl _P0MASK
                            181 	.globl _ADC0LTH
                            182 	.globl _ADC0LTL
                            183 	.globl _ADC0GTH
                            184 	.globl _ADC0GTL
                            185 	.globl _SMB0DAT
                            186 	.globl _SMB0CF
                            187 	.globl _SMB0CN
                            188 	.globl _P1MASK
                            189 	.globl _ADC0H
                            190 	.globl _ADC0L
                            191 	.globl _ADC0TK
                            192 	.globl _ADC0CF
                            193 	.globl _ADC0MX
                            194 	.globl _ADC0PWR
                            195 	.globl _ADC0AC
                            196 	.globl _IREF0CN
                            197 	.globl _IP
                            198 	.globl _FLKEY
                            199 	.globl _FLSCL
                            200 	.globl _PMU0CF
                            201 	.globl _OSCICL
                            202 	.globl _OSCICN
                            203 	.globl _OSCXCN
                            204 	.globl _SPI1CN
                            205 	.globl _ONESHOT
                            206 	.globl _EMI0TC
                            207 	.globl _RTC0KEY
                            208 	.globl _RTC0DAT
                            209 	.globl _RTC0ADR
                            210 	.globl _EMI0CF
                            211 	.globl _EMI0CN
                            212 	.globl _CLKSEL
                            213 	.globl _IE
                            214 	.globl _SFRPAGE
                            215 	.globl _P2DRV
                            216 	.globl _P2MDOUT
                            217 	.globl _P1DRV
                            218 	.globl _P1MDOUT
                            219 	.globl _P0DRV
                            220 	.globl _P0MDOUT
                            221 	.globl _SPI0DAT
                            222 	.globl _SPI0CKR
                            223 	.globl _SPI0CFG
                            224 	.globl _P2
                            225 	.globl _CPT0MX
                            226 	.globl _CPT1MX
                            227 	.globl _CPT0MD
                            228 	.globl _CPT1MD
                            229 	.globl _CPT0CN
                            230 	.globl _CPT1CN
                            231 	.globl _SBUF0
                            232 	.globl _SCON0
                            233 	.globl _CRC0CNT
                            234 	.globl _DC0CN
                            235 	.globl _CRC0AUTO
                            236 	.globl _DC0CF
                            237 	.globl _TMR3H
                            238 	.globl _CRC0FLIP
                            239 	.globl _TMR3L
                            240 	.globl _CRC0IN
                            241 	.globl _TMR3RLH
                            242 	.globl _CRC0CN
                            243 	.globl _TMR3RLL
                            244 	.globl _CRC0DAT
                            245 	.globl _TMR3CN
                            246 	.globl _P1
                            247 	.globl _PSCTL
                            248 	.globl _CKCON
                            249 	.globl _TH1
                            250 	.globl _TH0
                            251 	.globl _TL1
                            252 	.globl _TL0
                            253 	.globl _TMOD
                            254 	.globl _TCON
                            255 	.globl _PCON
                            256 	.globl _TOFFH
                            257 	.globl _SPI1DAT
                            258 	.globl _TOFFL
                            259 	.globl _SPI1CKR
                            260 	.globl _SPI1CFG
                            261 	.globl _DPH
                            262 	.globl _DPL
                            263 	.globl _SP
                            264 	.globl _P0
                            265 ;--------------------------------------------------------
                            266 ; special function registers
                            267 ;--------------------------------------------------------
                            268 	.area RSEG    (ABS,DATA)
   0000                     269 	.org 0x0000
                     0080   270 _P0	=	0x0080
                     0081   271 _SP	=	0x0081
                     0082   272 _DPL	=	0x0082
                     0083   273 _DPH	=	0x0083
                     0084   274 _SPI1CFG	=	0x0084
                     0085   275 _SPI1CKR	=	0x0085
                     0085   276 _TOFFL	=	0x0085
                     0086   277 _SPI1DAT	=	0x0086
                     0086   278 _TOFFH	=	0x0086
                     0087   279 _PCON	=	0x0087
                     0088   280 _TCON	=	0x0088
                     0089   281 _TMOD	=	0x0089
                     008A   282 _TL0	=	0x008a
                     008B   283 _TL1	=	0x008b
                     008C   284 _TH0	=	0x008c
                     008D   285 _TH1	=	0x008d
                     008E   286 _CKCON	=	0x008e
                     008F   287 _PSCTL	=	0x008f
                     0090   288 _P1	=	0x0090
                     0091   289 _TMR3CN	=	0x0091
                     0091   290 _CRC0DAT	=	0x0091
                     0092   291 _TMR3RLL	=	0x0092
                     0092   292 _CRC0CN	=	0x0092
                     0093   293 _TMR3RLH	=	0x0093
                     0093   294 _CRC0IN	=	0x0093
                     0094   295 _TMR3L	=	0x0094
                     0095   296 _CRC0FLIP	=	0x0095
                     0095   297 _TMR3H	=	0x0095
                     0096   298 _DC0CF	=	0x0096
                     0096   299 _CRC0AUTO	=	0x0096
                     0097   300 _DC0CN	=	0x0097
                     0097   301 _CRC0CNT	=	0x0097
                     0098   302 _SCON0	=	0x0098
                     0099   303 _SBUF0	=	0x0099
                     009A   304 _CPT1CN	=	0x009a
                     009B   305 _CPT0CN	=	0x009b
                     009C   306 _CPT1MD	=	0x009c
                     009D   307 _CPT0MD	=	0x009d
                     009E   308 _CPT1MX	=	0x009e
                     009F   309 _CPT0MX	=	0x009f
                     00A0   310 _P2	=	0x00a0
                     00A1   311 _SPI0CFG	=	0x00a1
                     00A2   312 _SPI0CKR	=	0x00a2
                     00A3   313 _SPI0DAT	=	0x00a3
                     00A4   314 _P0MDOUT	=	0x00a4
                     00A4   315 _P0DRV	=	0x00a4
                     00A5   316 _P1MDOUT	=	0x00a5
                     00A5   317 _P1DRV	=	0x00a5
                     00A6   318 _P2MDOUT	=	0x00a6
                     00A6   319 _P2DRV	=	0x00a6
                     00A7   320 _SFRPAGE	=	0x00a7
                     00A8   321 _IE	=	0x00a8
                     00A9   322 _CLKSEL	=	0x00a9
                     00AA   323 _EMI0CN	=	0x00aa
                     00AB   324 _EMI0CF	=	0x00ab
                     00AC   325 _RTC0ADR	=	0x00ac
                     00AD   326 _RTC0DAT	=	0x00ad
                     00AE   327 _RTC0KEY	=	0x00ae
                     00AF   328 _EMI0TC	=	0x00af
                     00AF   329 _ONESHOT	=	0x00af
                     00B0   330 _SPI1CN	=	0x00b0
                     00B1   331 _OSCXCN	=	0x00b1
                     00B2   332 _OSCICN	=	0x00b2
                     00B3   333 _OSCICL	=	0x00b3
                     00B5   334 _PMU0CF	=	0x00b5
                     00B6   335 _FLSCL	=	0x00b6
                     00B7   336 _FLKEY	=	0x00b7
                     00B8   337 _IP	=	0x00b8
                     00B9   338 _IREF0CN	=	0x00b9
                     00BA   339 _ADC0AC	=	0x00ba
                     00BA   340 _ADC0PWR	=	0x00ba
                     00BB   341 _ADC0MX	=	0x00bb
                     00BC   342 _ADC0CF	=	0x00bc
                     00BD   343 _ADC0TK	=	0x00bd
                     00BD   344 _ADC0L	=	0x00bd
                     00BE   345 _ADC0H	=	0x00be
                     00BF   346 _P1MASK	=	0x00bf
                     00C0   347 _SMB0CN	=	0x00c0
                     00C1   348 _SMB0CF	=	0x00c1
                     00C2   349 _SMB0DAT	=	0x00c2
                     00C3   350 _ADC0GTL	=	0x00c3
                     00C4   351 _ADC0GTH	=	0x00c4
                     00C5   352 _ADC0LTL	=	0x00c5
                     00C6   353 _ADC0LTH	=	0x00c6
                     00C7   354 _P0MASK	=	0x00c7
                     00C8   355 _TMR2CN	=	0x00c8
                     00C9   356 _REG0CN	=	0x00c9
                     00CA   357 _TMR2RLL	=	0x00ca
                     00CB   358 _TMR2RLH	=	0x00cb
                     00CC   359 _TMR2L	=	0x00cc
                     00CD   360 _TMR2H	=	0x00cd
                     00CE   361 _PCA0CPM5	=	0x00ce
                     00CF   362 _P1MAT	=	0x00cf
                     00D0   363 _PSW	=	0x00d0
                     00D1   364 _REF0CN	=	0x00d1
                     00D2   365 _PCA0CPL5	=	0x00d2
                     00D3   366 _PCA0CPH5	=	0x00d3
                     00D4   367 _P0SKIP	=	0x00d4
                     00D5   368 _P1SKIP	=	0x00d5
                     00D6   369 _P2SKIP	=	0x00d6
                     00D7   370 _P0MAT	=	0x00d7
                     00D8   371 _PCA0CN	=	0x00d8
                     00D9   372 _PCA0MD	=	0x00d9
                     00DA   373 _PCA0CPM0	=	0x00da
                     00DB   374 _PCA0CPM1	=	0x00db
                     00DC   375 _PCA0CPM2	=	0x00dc
                     00DD   376 _PCA0CPM3	=	0x00dd
                     00DE   377 _PCA0CPM4	=	0x00de
                     00DF   378 _PCA0PWM	=	0x00df
                     00E0   379 _ACC	=	0x00e0
                     00E1   380 _XBR0	=	0x00e1
                     00E2   381 _XBR1	=	0x00e2
                     00E3   382 _XBR2	=	0x00e3
                     00E4   383 _IT01CF	=	0x00e4
                     00E5   384 _FLWR	=	0x00e5
                     00E6   385 _EIE1	=	0x00e6
                     00E7   386 _EIE2	=	0x00e7
                     00E8   387 _ADC0CN	=	0x00e8
                     00E9   388 _PCA0CPL1	=	0x00e9
                     00EA   389 _PCA0CPH1	=	0x00ea
                     00EB   390 _PCA0CPL2	=	0x00eb
                     00EC   391 _PCA0CPH2	=	0x00ec
                     00ED   392 _PCA0CPL3	=	0x00ed
                     00EE   393 _PCA0CPH3	=	0x00ee
                     00EF   394 _RSTSRC	=	0x00ef
                     00F0   395 _B	=	0x00f0
                     00F1   396 _P0MDIN	=	0x00f1
                     00F2   397 _P1MDIN	=	0x00f2
                     00F3   398 _P2MDIN	=	0x00f3
                     00F4   399 _SMB0ADR	=	0x00f4
                     00F5   400 _SMB0ADM	=	0x00f5
                     00F6   401 _EIP1	=	0x00f6
                     00F7   402 _EIP2	=	0x00f7
                     00F8   403 _SPI0CN	=	0x00f8
                     00F9   404 _PCA0L	=	0x00f9
                     00FA   405 _PCA0H	=	0x00fa
                     00FB   406 _PCA0CPL0	=	0x00fb
                     00FC   407 _PCA0CPH0	=	0x00fc
                     00FD   408 _PCA0CPL4	=	0x00fd
                     00FE   409 _PCA0CPH4	=	0x00fe
                     00FF   410 _VDM0CN	=	0x00ff
                     8382   411 _DP	=	0x8382
                     8685   412 _TOFF	=	0x8685
                     9392   413 _TMR3RL	=	0x9392
                     9594   414 _TMR3	=	0x9594
                     BEBD   415 _ADC0	=	0xbebd
                     C4C3   416 _ADC0GT	=	0xc4c3
                     C6C5   417 _ADC0LT	=	0xc6c5
                     CBCA   418 _TMR2RL	=	0xcbca
                     CDCC   419 _TMR2	=	0xcdcc
                     D3D2   420 _PCA0CP5	=	0xd3d2
                     EAE9   421 _PCA0CP1	=	0xeae9
                     ECEB   422 _PCA0CP2	=	0xeceb
                     EEED   423 _PCA0CP3	=	0xeeed
                     FAF9   424 _PCA0	=	0xfaf9
                     FCFB   425 _PCA0CP0	=	0xfcfb
                     FEFD   426 _PCA0CP4	=	0xfefd
                            427 ;--------------------------------------------------------
                            428 ; special function bits
                            429 ;--------------------------------------------------------
                            430 	.area RSEG    (ABS,DATA)
   0000                     431 	.org 0x0000
                     008F   432 _TF1	=	0x008f
                     008E   433 _TR1	=	0x008e
                     008D   434 _TF0	=	0x008d
                     008C   435 _TR0	=	0x008c
                     008B   436 _IE1	=	0x008b
                     008A   437 _IT1	=	0x008a
                     0089   438 _IE0	=	0x0089
                     0088   439 _IT0	=	0x0088
                     0096   440 _CRC0SEL	=	0x0096
                     0095   441 _CRC0INIT	=	0x0095
                     0094   442 _CRC0VAL	=	0x0094
                     009F   443 _S0MODE	=	0x009f
                     009D   444 _MCE0	=	0x009d
                     009C   445 _REN0	=	0x009c
                     009B   446 _TB80	=	0x009b
                     009A   447 _RB80	=	0x009a
                     0099   448 _TI0	=	0x0099
                     0098   449 _RI0	=	0x0098
                     00AF   450 _EA	=	0x00af
                     00AE   451 _ESPI0	=	0x00ae
                     00AD   452 _ET2	=	0x00ad
                     00AC   453 _ES0	=	0x00ac
                     00AB   454 _ET1	=	0x00ab
                     00AA   455 _EX1	=	0x00aa
                     00A9   456 _ET0	=	0x00a9
                     00A8   457 _EX0	=	0x00a8
                     00B7   458 _SPIF1	=	0x00b7
                     00B6   459 _WCOL1	=	0x00b6
                     00B5   460 _MODF1	=	0x00b5
                     00B4   461 _RXOVRN1	=	0x00b4
                     00B3   462 _NSS1MD1	=	0x00b3
                     00B2   463 _NSS1MD0	=	0x00b2
                     00B1   464 _TXBMT1	=	0x00b1
                     00B0   465 _SPI1EN	=	0x00b0
                     00BE   466 _PSPI0	=	0x00be
                     00BD   467 _PT2	=	0x00bd
                     00BC   468 _PS0	=	0x00bc
                     00BB   469 _PT1	=	0x00bb
                     00BA   470 _PX1	=	0x00ba
                     00B9   471 _PT0	=	0x00b9
                     00B8   472 _PX0	=	0x00b8
                     00C7   473 _MASTER	=	0x00c7
                     00C6   474 _TXMODE	=	0x00c6
                     00C5   475 _STA	=	0x00c5
                     00C4   476 _STO	=	0x00c4
                     00C3   477 _ACKRQ	=	0x00c3
                     00C2   478 _ARBLOST	=	0x00c2
                     00C1   479 _ACK	=	0x00c1
                     00C0   480 _SI	=	0x00c0
                     00CF   481 _TF2H	=	0x00cf
                     00CE   482 _TF2L	=	0x00ce
                     00CD   483 _TF2LEN	=	0x00cd
                     00CC   484 _TF2CEN	=	0x00cc
                     00CB   485 _T2SPLIT	=	0x00cb
                     00CA   486 _TR2	=	0x00ca
                     00C9   487 _T2RCLK	=	0x00c9
                     00C8   488 _T2XCLK	=	0x00c8
                     00D7   489 _CY	=	0x00d7
                     00D6   490 _AC	=	0x00d6
                     00D5   491 _F0	=	0x00d5
                     00D4   492 _RS1	=	0x00d4
                     00D3   493 _RS0	=	0x00d3
                     00D2   494 _OV	=	0x00d2
                     00D1   495 _F1	=	0x00d1
                     00D0   496 _P	=	0x00d0
                     00DF   497 _CF	=	0x00df
                     00DE   498 _CR	=	0x00de
                     00DD   499 _CCF5	=	0x00dd
                     00DC   500 _CCF4	=	0x00dc
                     00DB   501 _CCF3	=	0x00db
                     00DA   502 _CCF2	=	0x00da
                     00D9   503 _CCF1	=	0x00d9
                     00D8   504 _CCF0	=	0x00d8
                     00EF   505 _AD0EN	=	0x00ef
                     00EE   506 _BURSTEN	=	0x00ee
                     00ED   507 _AD0INT	=	0x00ed
                     00EC   508 _AD0BUSY	=	0x00ec
                     00EB   509 _AD0WINT	=	0x00eb
                     00EA   510 _AD0CM2	=	0x00ea
                     00E9   511 _AD0CM1	=	0x00e9
                     00E8   512 _AD0CM0	=	0x00e8
                     00FF   513 _SPIF0	=	0x00ff
                     00FE   514 _WCOL0	=	0x00fe
                     00FD   515 _MODF0	=	0x00fd
                     00FC   516 _RXOVRN0	=	0x00fc
                     00FB   517 _NSS0MD1	=	0x00fb
                     00FA   518 _NSS0MD0	=	0x00fa
                     00F9   519 _TXBMT0	=	0x00f9
                     00F8   520 _SPI0EN	=	0x00f8
                     0096   521 _LED_RED	=	0x0096
                     0095   522 _LED_GREEN	=	0x0095
                     0082   523 _PIN_CONFIG	=	0x0082
                     0083   524 _PIN_ENABLE	=	0x0083
                     0087   525 _IRQ	=	0x0087
                     0094   526 _NSS1	=	0x0094
                     00A6   527 _SDN	=	0x00a6
                            528 ;--------------------------------------------------------
                            529 ; overlayable register banks
                            530 ;--------------------------------------------------------
                            531 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     532 	.ds 8
                            533 ;--------------------------------------------------------
                            534 ; internal ram data
                            535 ;--------------------------------------------------------
                            536 	.area DSEG    (DATA)
                            537 ;--------------------------------------------------------
                            538 ; overlayable items in internal ram 
                            539 ;--------------------------------------------------------
                            540 ;--------------------------------------------------------
                            541 ; indirectly addressable internal ram data
                            542 ;--------------------------------------------------------
                            543 	.area ISEG    (DATA)
                            544 ;--------------------------------------------------------
                            545 ; absolute internal ram data
                            546 ;--------------------------------------------------------
                            547 	.area IABS    (ABS,DATA)
                            548 	.area IABS    (ABS,DATA)
                            549 ;--------------------------------------------------------
                            550 ; bit data
                            551 ;--------------------------------------------------------
                            552 	.area BSEG    (BIT)
                            553 ;--------------------------------------------------------
                            554 ; paged external ram data
                            555 ;--------------------------------------------------------
                            556 	.area PSEG    (PAG,XDATA)
                            557 ;--------------------------------------------------------
                            558 ; external ram data
                            559 ;--------------------------------------------------------
                            560 	.area XSEG    (XDATA)
                            561 ;--------------------------------------------------------
                            562 ; absolute external ram data
                            563 ;--------------------------------------------------------
                            564 	.area XABS    (ABS,XDATA)
                            565 ;--------------------------------------------------------
                            566 ; external initialized ram data
                            567 ;--------------------------------------------------------
                            568 	.area XISEG   (XDATA)
                            569 	.area HOME    (CODE)
                            570 	.area GSINIT0 (CODE)
                            571 	.area GSINIT1 (CODE)
                            572 	.area GSINIT2 (CODE)
                            573 	.area GSINIT3 (CODE)
                            574 	.area GSINIT4 (CODE)
                            575 	.area GSINIT5 (CODE)
                            576 	.area GSINIT  (CODE)
                            577 	.area GSFINAL (CODE)
                            578 	.area CSEG    (CODE)
                            579 ;--------------------------------------------------------
                            580 ; global & static initialisations
                            581 ;--------------------------------------------------------
                            582 	.area HOME    (CODE)
                            583 	.area GSINIT  (CODE)
                            584 	.area GSFINAL (CODE)
                            585 	.area GSINIT  (CODE)
                            586 ;--------------------------------------------------------
                            587 ; Home
                            588 ;--------------------------------------------------------
                            589 	.area HOME    (CODE)
                            590 	.area HOME    (CODE)
                            591 ;--------------------------------------------------------
                            592 ; code
                            593 ;--------------------------------------------------------
                            594 	.area CSEG    (CODE)
                            595 	.area CSEG    (CODE)
                            596 	.area CONST   (CODE)
                            597 	.area XINIT   (CODE)
                            598 	.area CABS    (ABS,CODE)
