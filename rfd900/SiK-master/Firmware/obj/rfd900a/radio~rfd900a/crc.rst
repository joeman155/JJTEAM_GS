                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:08 2013
                              5 ;--------------------------------------------------------
                              6 	.module crc
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _NSS1
                             13 	.globl _IRQ
                             14 	.globl _PA_ENABLE
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
                            265 	.globl _crc16_PARM_2
                            266 	.globl _crc16
                            267 ;--------------------------------------------------------
                            268 ; special function registers
                            269 ;--------------------------------------------------------
                            270 	.area RSEG    (ABS,DATA)
   0000                     271 	.org 0x0000
                     0080   272 _P0	=	0x0080
                     0081   273 _SP	=	0x0081
                     0082   274 _DPL	=	0x0082
                     0083   275 _DPH	=	0x0083
                     0084   276 _SPI1CFG	=	0x0084
                     0085   277 _SPI1CKR	=	0x0085
                     0085   278 _TOFFL	=	0x0085
                     0086   279 _SPI1DAT	=	0x0086
                     0086   280 _TOFFH	=	0x0086
                     0087   281 _PCON	=	0x0087
                     0088   282 _TCON	=	0x0088
                     0089   283 _TMOD	=	0x0089
                     008A   284 _TL0	=	0x008a
                     008B   285 _TL1	=	0x008b
                     008C   286 _TH0	=	0x008c
                     008D   287 _TH1	=	0x008d
                     008E   288 _CKCON	=	0x008e
                     008F   289 _PSCTL	=	0x008f
                     0090   290 _P1	=	0x0090
                     0091   291 _TMR3CN	=	0x0091
                     0091   292 _CRC0DAT	=	0x0091
                     0092   293 _TMR3RLL	=	0x0092
                     0092   294 _CRC0CN	=	0x0092
                     0093   295 _TMR3RLH	=	0x0093
                     0093   296 _CRC0IN	=	0x0093
                     0094   297 _TMR3L	=	0x0094
                     0095   298 _CRC0FLIP	=	0x0095
                     0095   299 _TMR3H	=	0x0095
                     0096   300 _DC0CF	=	0x0096
                     0096   301 _CRC0AUTO	=	0x0096
                     0097   302 _DC0CN	=	0x0097
                     0097   303 _CRC0CNT	=	0x0097
                     0098   304 _SCON0	=	0x0098
                     0099   305 _SBUF0	=	0x0099
                     009A   306 _CPT1CN	=	0x009a
                     009B   307 _CPT0CN	=	0x009b
                     009C   308 _CPT1MD	=	0x009c
                     009D   309 _CPT0MD	=	0x009d
                     009E   310 _CPT1MX	=	0x009e
                     009F   311 _CPT0MX	=	0x009f
                     00A0   312 _P2	=	0x00a0
                     00A1   313 _SPI0CFG	=	0x00a1
                     00A2   314 _SPI0CKR	=	0x00a2
                     00A3   315 _SPI0DAT	=	0x00a3
                     00A4   316 _P0MDOUT	=	0x00a4
                     00A4   317 _P0DRV	=	0x00a4
                     00A5   318 _P1MDOUT	=	0x00a5
                     00A5   319 _P1DRV	=	0x00a5
                     00A6   320 _P2MDOUT	=	0x00a6
                     00A6   321 _P2DRV	=	0x00a6
                     00A7   322 _SFRPAGE	=	0x00a7
                     00A8   323 _IE	=	0x00a8
                     00A9   324 _CLKSEL	=	0x00a9
                     00AA   325 _EMI0CN	=	0x00aa
                     00AB   326 _EMI0CF	=	0x00ab
                     00AC   327 _RTC0ADR	=	0x00ac
                     00AD   328 _RTC0DAT	=	0x00ad
                     00AE   329 _RTC0KEY	=	0x00ae
                     00AF   330 _EMI0TC	=	0x00af
                     00AF   331 _ONESHOT	=	0x00af
                     00B0   332 _SPI1CN	=	0x00b0
                     00B1   333 _OSCXCN	=	0x00b1
                     00B2   334 _OSCICN	=	0x00b2
                     00B3   335 _OSCICL	=	0x00b3
                     00B5   336 _PMU0CF	=	0x00b5
                     00B6   337 _FLSCL	=	0x00b6
                     00B7   338 _FLKEY	=	0x00b7
                     00B8   339 _IP	=	0x00b8
                     00B9   340 _IREF0CN	=	0x00b9
                     00BA   341 _ADC0AC	=	0x00ba
                     00BA   342 _ADC0PWR	=	0x00ba
                     00BB   343 _ADC0MX	=	0x00bb
                     00BC   344 _ADC0CF	=	0x00bc
                     00BD   345 _ADC0TK	=	0x00bd
                     00BD   346 _ADC0L	=	0x00bd
                     00BE   347 _ADC0H	=	0x00be
                     00BF   348 _P1MASK	=	0x00bf
                     00C0   349 _SMB0CN	=	0x00c0
                     00C1   350 _SMB0CF	=	0x00c1
                     00C2   351 _SMB0DAT	=	0x00c2
                     00C3   352 _ADC0GTL	=	0x00c3
                     00C4   353 _ADC0GTH	=	0x00c4
                     00C5   354 _ADC0LTL	=	0x00c5
                     00C6   355 _ADC0LTH	=	0x00c6
                     00C7   356 _P0MASK	=	0x00c7
                     00C8   357 _TMR2CN	=	0x00c8
                     00C9   358 _REG0CN	=	0x00c9
                     00CA   359 _TMR2RLL	=	0x00ca
                     00CB   360 _TMR2RLH	=	0x00cb
                     00CC   361 _TMR2L	=	0x00cc
                     00CD   362 _TMR2H	=	0x00cd
                     00CE   363 _PCA0CPM5	=	0x00ce
                     00CF   364 _P1MAT	=	0x00cf
                     00D0   365 _PSW	=	0x00d0
                     00D1   366 _REF0CN	=	0x00d1
                     00D2   367 _PCA0CPL5	=	0x00d2
                     00D3   368 _PCA0CPH5	=	0x00d3
                     00D4   369 _P0SKIP	=	0x00d4
                     00D5   370 _P1SKIP	=	0x00d5
                     00D6   371 _P2SKIP	=	0x00d6
                     00D7   372 _P0MAT	=	0x00d7
                     00D8   373 _PCA0CN	=	0x00d8
                     00D9   374 _PCA0MD	=	0x00d9
                     00DA   375 _PCA0CPM0	=	0x00da
                     00DB   376 _PCA0CPM1	=	0x00db
                     00DC   377 _PCA0CPM2	=	0x00dc
                     00DD   378 _PCA0CPM3	=	0x00dd
                     00DE   379 _PCA0CPM4	=	0x00de
                     00DF   380 _PCA0PWM	=	0x00df
                     00E0   381 _ACC	=	0x00e0
                     00E1   382 _XBR0	=	0x00e1
                     00E2   383 _XBR1	=	0x00e2
                     00E3   384 _XBR2	=	0x00e3
                     00E4   385 _IT01CF	=	0x00e4
                     00E5   386 _FLWR	=	0x00e5
                     00E6   387 _EIE1	=	0x00e6
                     00E7   388 _EIE2	=	0x00e7
                     00E8   389 _ADC0CN	=	0x00e8
                     00E9   390 _PCA0CPL1	=	0x00e9
                     00EA   391 _PCA0CPH1	=	0x00ea
                     00EB   392 _PCA0CPL2	=	0x00eb
                     00EC   393 _PCA0CPH2	=	0x00ec
                     00ED   394 _PCA0CPL3	=	0x00ed
                     00EE   395 _PCA0CPH3	=	0x00ee
                     00EF   396 _RSTSRC	=	0x00ef
                     00F0   397 _B	=	0x00f0
                     00F1   398 _P0MDIN	=	0x00f1
                     00F2   399 _P1MDIN	=	0x00f2
                     00F3   400 _P2MDIN	=	0x00f3
                     00F4   401 _SMB0ADR	=	0x00f4
                     00F5   402 _SMB0ADM	=	0x00f5
                     00F6   403 _EIP1	=	0x00f6
                     00F7   404 _EIP2	=	0x00f7
                     00F8   405 _SPI0CN	=	0x00f8
                     00F9   406 _PCA0L	=	0x00f9
                     00FA   407 _PCA0H	=	0x00fa
                     00FB   408 _PCA0CPL0	=	0x00fb
                     00FC   409 _PCA0CPH0	=	0x00fc
                     00FD   410 _PCA0CPL4	=	0x00fd
                     00FE   411 _PCA0CPH4	=	0x00fe
                     00FF   412 _VDM0CN	=	0x00ff
                     8382   413 _DP	=	0x8382
                     8685   414 _TOFF	=	0x8685
                     9392   415 _TMR3RL	=	0x9392
                     9594   416 _TMR3	=	0x9594
                     BEBD   417 _ADC0	=	0xbebd
                     C4C3   418 _ADC0GT	=	0xc4c3
                     C6C5   419 _ADC0LT	=	0xc6c5
                     CBCA   420 _TMR2RL	=	0xcbca
                     CDCC   421 _TMR2	=	0xcdcc
                     D3D2   422 _PCA0CP5	=	0xd3d2
                     EAE9   423 _PCA0CP1	=	0xeae9
                     ECEB   424 _PCA0CP2	=	0xeceb
                     EEED   425 _PCA0CP3	=	0xeeed
                     FAF9   426 _PCA0	=	0xfaf9
                     FCFB   427 _PCA0CP0	=	0xfcfb
                     FEFD   428 _PCA0CP4	=	0xfefd
                            429 ;--------------------------------------------------------
                            430 ; special function bits
                            431 ;--------------------------------------------------------
                            432 	.area RSEG    (ABS,DATA)
   0000                     433 	.org 0x0000
                     008F   434 _TF1	=	0x008f
                     008E   435 _TR1	=	0x008e
                     008D   436 _TF0	=	0x008d
                     008C   437 _TR0	=	0x008c
                     008B   438 _IE1	=	0x008b
                     008A   439 _IT1	=	0x008a
                     0089   440 _IE0	=	0x0089
                     0088   441 _IT0	=	0x0088
                     0096   442 _CRC0SEL	=	0x0096
                     0095   443 _CRC0INIT	=	0x0095
                     0094   444 _CRC0VAL	=	0x0094
                     009F   445 _S0MODE	=	0x009f
                     009D   446 _MCE0	=	0x009d
                     009C   447 _REN0	=	0x009c
                     009B   448 _TB80	=	0x009b
                     009A   449 _RB80	=	0x009a
                     0099   450 _TI0	=	0x0099
                     0098   451 _RI0	=	0x0098
                     00AF   452 _EA	=	0x00af
                     00AE   453 _ESPI0	=	0x00ae
                     00AD   454 _ET2	=	0x00ad
                     00AC   455 _ES0	=	0x00ac
                     00AB   456 _ET1	=	0x00ab
                     00AA   457 _EX1	=	0x00aa
                     00A9   458 _ET0	=	0x00a9
                     00A8   459 _EX0	=	0x00a8
                     00B7   460 _SPIF1	=	0x00b7
                     00B6   461 _WCOL1	=	0x00b6
                     00B5   462 _MODF1	=	0x00b5
                     00B4   463 _RXOVRN1	=	0x00b4
                     00B3   464 _NSS1MD1	=	0x00b3
                     00B2   465 _NSS1MD0	=	0x00b2
                     00B1   466 _TXBMT1	=	0x00b1
                     00B0   467 _SPI1EN	=	0x00b0
                     00BE   468 _PSPI0	=	0x00be
                     00BD   469 _PT2	=	0x00bd
                     00BC   470 _PS0	=	0x00bc
                     00BB   471 _PT1	=	0x00bb
                     00BA   472 _PX1	=	0x00ba
                     00B9   473 _PT0	=	0x00b9
                     00B8   474 _PX0	=	0x00b8
                     00C7   475 _MASTER	=	0x00c7
                     00C6   476 _TXMODE	=	0x00c6
                     00C5   477 _STA	=	0x00c5
                     00C4   478 _STO	=	0x00c4
                     00C3   479 _ACKRQ	=	0x00c3
                     00C2   480 _ARBLOST	=	0x00c2
                     00C1   481 _ACK	=	0x00c1
                     00C0   482 _SI	=	0x00c0
                     00CF   483 _TF2H	=	0x00cf
                     00CE   484 _TF2L	=	0x00ce
                     00CD   485 _TF2LEN	=	0x00cd
                     00CC   486 _TF2CEN	=	0x00cc
                     00CB   487 _T2SPLIT	=	0x00cb
                     00CA   488 _TR2	=	0x00ca
                     00C9   489 _T2RCLK	=	0x00c9
                     00C8   490 _T2XCLK	=	0x00c8
                     00D7   491 _CY	=	0x00d7
                     00D6   492 _AC	=	0x00d6
                     00D5   493 _F0	=	0x00d5
                     00D4   494 _RS1	=	0x00d4
                     00D3   495 _RS0	=	0x00d3
                     00D2   496 _OV	=	0x00d2
                     00D1   497 _F1	=	0x00d1
                     00D0   498 _P	=	0x00d0
                     00DF   499 _CF	=	0x00df
                     00DE   500 _CR	=	0x00de
                     00DD   501 _CCF5	=	0x00dd
                     00DC   502 _CCF4	=	0x00dc
                     00DB   503 _CCF3	=	0x00db
                     00DA   504 _CCF2	=	0x00da
                     00D9   505 _CCF1	=	0x00d9
                     00D8   506 _CCF0	=	0x00d8
                     00EF   507 _AD0EN	=	0x00ef
                     00EE   508 _BURSTEN	=	0x00ee
                     00ED   509 _AD0INT	=	0x00ed
                     00EC   510 _AD0BUSY	=	0x00ec
                     00EB   511 _AD0WINT	=	0x00eb
                     00EA   512 _AD0CM2	=	0x00ea
                     00E9   513 _AD0CM1	=	0x00e9
                     00E8   514 _AD0CM0	=	0x00e8
                     00FF   515 _SPIF0	=	0x00ff
                     00FE   516 _WCOL0	=	0x00fe
                     00FD   517 _MODF0	=	0x00fd
                     00FC   518 _RXOVRN0	=	0x00fc
                     00FB   519 _NSS0MD1	=	0x00fb
                     00FA   520 _NSS0MD0	=	0x00fa
                     00F9   521 _TXBMT0	=	0x00f9
                     00F8   522 _SPI0EN	=	0x00f8
                     0096   523 _LED_RED	=	0x0096
                     0095   524 _LED_GREEN	=	0x0095
                     0082   525 _PIN_CONFIG	=	0x0082
                     0083   526 _PIN_ENABLE	=	0x0083
                     00A5   527 _PA_ENABLE	=	0x00a5
                     0087   528 _IRQ	=	0x0087
                     0094   529 _NSS1	=	0x0094
                            530 ;--------------------------------------------------------
                            531 ; overlayable register banks
                            532 ;--------------------------------------------------------
                            533 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     534 	.ds 8
                            535 ;--------------------------------------------------------
                            536 ; internal ram data
                            537 ;--------------------------------------------------------
                            538 	.area DSEG    (DATA)
   000C                     539 _crc16_PARM_2:
   000C                     540 	.ds 2
                            541 ;--------------------------------------------------------
                            542 ; overlayable items in internal ram 
                            543 ;--------------------------------------------------------
                            544 	.area	OSEG    (OVR,DATA)
                            545 ;--------------------------------------------------------
                            546 ; indirectly addressable internal ram data
                            547 ;--------------------------------------------------------
                            548 	.area ISEG    (DATA)
                            549 ;--------------------------------------------------------
                            550 ; absolute internal ram data
                            551 ;--------------------------------------------------------
                            552 	.area IABS    (ABS,DATA)
                            553 	.area IABS    (ABS,DATA)
                            554 ;--------------------------------------------------------
                            555 ; bit data
                            556 ;--------------------------------------------------------
                            557 	.area BSEG    (BIT)
                            558 ;--------------------------------------------------------
                            559 ; paged external ram data
                            560 ;--------------------------------------------------------
                            561 	.area PSEG    (PAG,XDATA)
                            562 ;--------------------------------------------------------
                            563 ; external ram data
                            564 ;--------------------------------------------------------
                            565 	.area XSEG    (XDATA)
                            566 ;--------------------------------------------------------
                            567 ; absolute external ram data
                            568 ;--------------------------------------------------------
                            569 	.area XABS    (ABS,XDATA)
                            570 ;--------------------------------------------------------
                            571 ; external initialized ram data
                            572 ;--------------------------------------------------------
                            573 	.area XISEG   (XDATA)
                            574 	.area HOME    (CODE)
                            575 	.area GSINIT0 (CODE)
                            576 	.area GSINIT1 (CODE)
                            577 	.area GSINIT2 (CODE)
                            578 	.area GSINIT3 (CODE)
                            579 	.area GSINIT4 (CODE)
                            580 	.area GSINIT5 (CODE)
                            581 	.area GSINIT  (CODE)
                            582 	.area GSFINAL (CODE)
                            583 	.area CSEG    (CODE)
                            584 ;--------------------------------------------------------
                            585 ; global & static initialisations
                            586 ;--------------------------------------------------------
                            587 	.area HOME    (CODE)
                            588 	.area GSINIT  (CODE)
                            589 	.area GSFINAL (CODE)
                            590 	.area GSINIT  (CODE)
                            591 ;--------------------------------------------------------
                            592 ; Home
                            593 ;--------------------------------------------------------
                            594 	.area HOME    (CODE)
                            595 	.area HOME    (CODE)
                            596 ;--------------------------------------------------------
                            597 ; code
                            598 ;--------------------------------------------------------
                            599 	.area CSEG    (CODE)
                            600 ;------------------------------------------------------------
                            601 ;Allocation info for local variables in function 'crc16'
                            602 ;------------------------------------------------------------
                            603 ;buf                       Allocated with name '_crc16_PARM_2'
                            604 ;n                         Allocated to registers 
                            605 ;k                         Allocated to registers r1 
                            606 ;high                      Allocated to registers r5 
                            607 ;low                       Allocated to registers r6 
                            608 ;b                         Allocated to registers r2 
                            609 ;------------------------------------------------------------
                            610 ;	radio/crc.c:85: crc16(__data uint8_t n, __xdata uint8_t * __data buf)
                            611 ;	-----------------------------------------
                            612 ;	 function crc16
                            613 ;	-----------------------------------------
   0B36                     614 _crc16:
                     0007   615 	ar7 = 0x07
                     0006   616 	ar6 = 0x06
                     0005   617 	ar5 = 0x05
                     0004   618 	ar4 = 0x04
                     0003   619 	ar3 = 0x03
                     0002   620 	ar2 = 0x02
                     0001   621 	ar1 = 0x01
                     0000   622 	ar0 = 0x00
   0B36 AF 82         [24]  623 	mov	r7,dpl
                            624 ;	radio/crc.c:90: high = low = 0;
   0B38 7E 00         [12]  625 	mov	r6,#0x00
   0B3A 7D 00         [12]  626 	mov	r5,#0x00
                            627 ;	radio/crc.c:92: while (n--) {
   0B3C AB 0C         [24]  628 	mov	r3,_crc16_PARM_2
   0B3E AC 0D         [24]  629 	mov	r4,(_crc16_PARM_2 + 1)
   0B40                     630 00104$:
   0B40 8F 02         [24]  631 	mov	ar2,r7
   0B42 1F            [12]  632 	dec	r7
   0B43 EA            [12]  633 	mov	a,r2
   0B44 60 3B         [24]  634 	jz	00106$
                            635 ;	radio/crc.c:93: register uint8_t b = *buf++;
   0B46 8B 82         [24]  636 	mov	dpl,r3
   0B48 8C 83         [24]  637 	mov	dph,r4
   0B4A E0            [24]  638 	movx	a,@dptr
   0B4B FA            [12]  639 	mov	r2,a
   0B4C A3            [24]  640 	inc	dptr
   0B4D AB 82         [24]  641 	mov	r3,dpl
   0B4F AC 83         [24]  642 	mov	r4,dph
                            643 ;	radio/crc.c:94: k = high << 1;
   0B51 ED            [12]  644 	mov	a,r5
   0B52 2D            [12]  645 	add	a,r5
   0B53 F9            [12]  646 	mov	r1,a
                            647 ;	radio/crc.c:95: if (high & 0x80) {
   0B54 ED            [12]  648 	mov	a,r5
   0B55 30 E7 14      [24]  649 	jnb	acc.7,00102$
                            650 ;	radio/crc.c:96: high = low ^ crc_tab2[k++];
   0B58 89 00         [24]  651 	mov	ar0,r1
   0B5A 09            [12]  652 	inc	r1
   0B5B E8            [12]  653 	mov	a,r0
   0B5C 90 69 77      [24]  654 	mov	dptr,#_crc_tab2
   0B5F 93            [24]  655 	movc	a,@a+dptr
   0B60 6E            [12]  656 	xrl	a,r6
   0B61 FD            [12]  657 	mov	r5,a
                            658 ;	radio/crc.c:97: low = b ^ crc_tab2[k];
   0B62 E9            [12]  659 	mov	a,r1
   0B63 90 69 77      [24]  660 	mov	dptr,#_crc_tab2
   0B66 93            [24]  661 	movc	a,@a+dptr
   0B67 F8            [12]  662 	mov	r0,a
   0B68 6A            [12]  663 	xrl	a,r2
   0B69 FE            [12]  664 	mov	r6,a
   0B6A 80 D4         [24]  665 	sjmp	00104$
   0B6C                     666 00102$:
                            667 ;	radio/crc.c:99: high = low ^ crc_tab1[k++];
   0B6C 89 00         [24]  668 	mov	ar0,r1
   0B6E 09            [12]  669 	inc	r1
   0B6F E8            [12]  670 	mov	a,r0
   0B70 90 68 77      [24]  671 	mov	dptr,#_crc_tab1
   0B73 93            [24]  672 	movc	a,@a+dptr
   0B74 F8            [12]  673 	mov	r0,a
   0B75 6E            [12]  674 	xrl	a,r6
   0B76 FD            [12]  675 	mov	r5,a
                            676 ;	radio/crc.c:100: low = b ^ crc_tab1[k];
   0B77 E9            [12]  677 	mov	a,r1
   0B78 90 68 77      [24]  678 	mov	dptr,#_crc_tab1
   0B7B 93            [24]  679 	movc	a,@a+dptr
   0B7C F9            [12]  680 	mov	r1,a
   0B7D 6A            [12]  681 	xrl	a,r2
   0B7E FE            [12]  682 	mov	r6,a
   0B7F 80 BF         [24]  683 	sjmp	00104$
   0B81                     684 00106$:
                            685 ;	radio/crc.c:103: return (((uint16_t)high)<<8) | low;
   0B81 8D 07         [24]  686 	mov	ar7,r5
   0B83 E4            [12]  687 	clr	a
   0B84 FD            [12]  688 	mov	r5,a
   0B85 FC            [12]  689 	mov	r4,a
   0B86 EE            [12]  690 	mov	a,r6
   0B87 42 05         [12]  691 	orl	ar5,a
   0B89 EC            [12]  692 	mov	a,r4
   0B8A 42 07         [12]  693 	orl	ar7,a
   0B8C 8D 82         [24]  694 	mov	dpl,r5
   0B8E 8F 83         [24]  695 	mov	dph,r7
   0B90 22            [24]  696 	ret
                            697 	.area CSEG    (CODE)
                            698 	.area CONST   (CODE)
   6877                     699 _crc_tab1:
   6877 00                  700 	.db #0x00	; 0
   6878 00                  701 	.db #0x00	; 0
   6879 10                  702 	.db #0x10	; 16
   687A 21                  703 	.db #0x21	; 33
   687B 20                  704 	.db #0x20	; 32
   687C 42                  705 	.db #0x42	; 66	'B'
   687D 30                  706 	.db #0x30	; 48	'0'
   687E 63                  707 	.db #0x63	; 99	'c'
   687F 40                  708 	.db #0x40	; 64
   6880 84                  709 	.db #0x84	; 132
   6881 50                  710 	.db #0x50	; 80	'P'
   6882 A5                  711 	.db #0xA5	; 165
   6883 60                  712 	.db #0x60	; 96
   6884 C6                  713 	.db #0xC6	; 198
   6885 70                  714 	.db #0x70	; 112	'p'
   6886 E7                  715 	.db #0xE7	; 231
   6887 81                  716 	.db #0x81	; 129
   6888 08                  717 	.db #0x08	; 8
   6889 91                  718 	.db #0x91	; 145
   688A 29                  719 	.db #0x29	; 41
   688B A1                  720 	.db #0xA1	; 161
   688C 4A                  721 	.db #0x4A	; 74	'J'
   688D B1                  722 	.db #0xB1	; 177
   688E 6B                  723 	.db #0x6B	; 107	'k'
   688F C1                  724 	.db #0xC1	; 193
   6890 8C                  725 	.db #0x8C	; 140
   6891 D1                  726 	.db #0xD1	; 209
   6892 AD                  727 	.db #0xAD	; 173
   6893 E1                  728 	.db #0xE1	; 225
   6894 CE                  729 	.db #0xCE	; 206
   6895 F1                  730 	.db #0xF1	; 241
   6896 EF                  731 	.db #0xEF	; 239
   6897 12                  732 	.db #0x12	; 18
   6898 31                  733 	.db #0x31	; 49	'1'
   6899 02                  734 	.db #0x02	; 2
   689A 10                  735 	.db #0x10	; 16
   689B 32                  736 	.db #0x32	; 50	'2'
   689C 73                  737 	.db #0x73	; 115	's'
   689D 22                  738 	.db #0x22	; 34
   689E 52                  739 	.db #0x52	; 82	'R'
   689F 52                  740 	.db #0x52	; 82	'R'
   68A0 B5                  741 	.db #0xB5	; 181
   68A1 42                  742 	.db #0x42	; 66	'B'
   68A2 94                  743 	.db #0x94	; 148
   68A3 72                  744 	.db #0x72	; 114	'r'
   68A4 F7                  745 	.db #0xF7	; 247
   68A5 62                  746 	.db #0x62	; 98	'b'
   68A6 D6                  747 	.db #0xD6	; 214
   68A7 93                  748 	.db #0x93	; 147
   68A8 39                  749 	.db #0x39	; 57	'9'
   68A9 83                  750 	.db #0x83	; 131
   68AA 18                  751 	.db #0x18	; 24
   68AB B3                  752 	.db #0xB3	; 179
   68AC 7B                  753 	.db #0x7B	; 123
   68AD A3                  754 	.db #0xA3	; 163
   68AE 5A                  755 	.db #0x5A	; 90	'Z'
   68AF D3                  756 	.db #0xD3	; 211
   68B0 BD                  757 	.db #0xBD	; 189
   68B1 C3                  758 	.db #0xC3	; 195
   68B2 9C                  759 	.db #0x9C	; 156
   68B3 F3                  760 	.db #0xF3	; 243
   68B4 FF                  761 	.db #0xFF	; 255
   68B5 E3                  762 	.db #0xE3	; 227
   68B6 DE                  763 	.db #0xDE	; 222
   68B7 24                  764 	.db #0x24	; 36
   68B8 62                  765 	.db #0x62	; 98	'b'
   68B9 34                  766 	.db #0x34	; 52	'4'
   68BA 43                  767 	.db #0x43	; 67	'C'
   68BB 04                  768 	.db #0x04	; 4
   68BC 20                  769 	.db #0x20	; 32
   68BD 14                  770 	.db #0x14	; 20
   68BE 01                  771 	.db #0x01	; 1
   68BF 64                  772 	.db #0x64	; 100	'd'
   68C0 E6                  773 	.db #0xE6	; 230
   68C1 74                  774 	.db #0x74	; 116	't'
   68C2 C7                  775 	.db #0xC7	; 199
   68C3 44                  776 	.db #0x44	; 68	'D'
   68C4 A4                  777 	.db #0xA4	; 164
   68C5 54                  778 	.db #0x54	; 84	'T'
   68C6 85                  779 	.db #0x85	; 133
   68C7 A5                  780 	.db #0xA5	; 165
   68C8 6A                  781 	.db #0x6A	; 106	'j'
   68C9 B5                  782 	.db #0xB5	; 181
   68CA 4B                  783 	.db #0x4B	; 75	'K'
   68CB 85                  784 	.db #0x85	; 133
   68CC 28                  785 	.db #0x28	; 40
   68CD 95                  786 	.db #0x95	; 149
   68CE 09                  787 	.db #0x09	; 9
   68CF E5                  788 	.db #0xE5	; 229
   68D0 EE                  789 	.db #0xEE	; 238
   68D1 F5                  790 	.db #0xF5	; 245
   68D2 CF                  791 	.db #0xCF	; 207
   68D3 C5                  792 	.db #0xC5	; 197
   68D4 AC                  793 	.db #0xAC	; 172
   68D5 D5                  794 	.db #0xD5	; 213
   68D6 8D                  795 	.db #0x8D	; 141
   68D7 36                  796 	.db #0x36	; 54	'6'
   68D8 53                  797 	.db #0x53	; 83	'S'
   68D9 26                  798 	.db #0x26	; 38
   68DA 72                  799 	.db #0x72	; 114	'r'
   68DB 16                  800 	.db #0x16	; 22
   68DC 11                  801 	.db #0x11	; 17
   68DD 06                  802 	.db #0x06	; 6
   68DE 30                  803 	.db #0x30	; 48	'0'
   68DF 76                  804 	.db #0x76	; 118	'v'
   68E0 D7                  805 	.db #0xD7	; 215
   68E1 66                  806 	.db #0x66	; 102	'f'
   68E2 F6                  807 	.db #0xF6	; 246
   68E3 56                  808 	.db #0x56	; 86	'V'
   68E4 95                  809 	.db #0x95	; 149
   68E5 46                  810 	.db #0x46	; 70	'F'
   68E6 B4                  811 	.db #0xB4	; 180
   68E7 B7                  812 	.db #0xB7	; 183
   68E8 5B                  813 	.db #0x5B	; 91
   68E9 A7                  814 	.db #0xA7	; 167
   68EA 7A                  815 	.db #0x7A	; 122	'z'
   68EB 97                  816 	.db #0x97	; 151
   68EC 19                  817 	.db #0x19	; 25
   68ED 87                  818 	.db #0x87	; 135
   68EE 38                  819 	.db #0x38	; 56	'8'
   68EF F7                  820 	.db #0xF7	; 247
   68F0 DF                  821 	.db #0xDF	; 223
   68F1 E7                  822 	.db #0xE7	; 231
   68F2 FE                  823 	.db #0xFE	; 254
   68F3 D7                  824 	.db #0xD7	; 215
   68F4 9D                  825 	.db #0x9D	; 157
   68F5 C7                  826 	.db #0xC7	; 199
   68F6 BC                  827 	.db #0xBC	; 188
   68F7 48                  828 	.db #0x48	; 72	'H'
   68F8 C4                  829 	.db #0xC4	; 196
   68F9 58                  830 	.db #0x58	; 88	'X'
   68FA E5                  831 	.db #0xE5	; 229
   68FB 68                  832 	.db #0x68	; 104	'h'
   68FC 86                  833 	.db #0x86	; 134
   68FD 78                  834 	.db #0x78	; 120	'x'
   68FE A7                  835 	.db #0xA7	; 167
   68FF 08                  836 	.db #0x08	; 8
   6900 40                  837 	.db #0x40	; 64
   6901 18                  838 	.db #0x18	; 24
   6902 61                  839 	.db #0x61	; 97	'a'
   6903 28                  840 	.db #0x28	; 40
   6904 02                  841 	.db #0x02	; 2
   6905 38                  842 	.db #0x38	; 56	'8'
   6906 23                  843 	.db #0x23	; 35
   6907 C9                  844 	.db #0xC9	; 201
   6908 CC                  845 	.db #0xCC	; 204
   6909 D9                  846 	.db #0xD9	; 217
   690A ED                  847 	.db #0xED	; 237
   690B E9                  848 	.db #0xE9	; 233
   690C 8E                  849 	.db #0x8E	; 142
   690D F9                  850 	.db #0xF9	; 249
   690E AF                  851 	.db #0xAF	; 175
   690F 89                  852 	.db #0x89	; 137
   6910 48                  853 	.db #0x48	; 72	'H'
   6911 99                  854 	.db #0x99	; 153
   6912 69                  855 	.db #0x69	; 105	'i'
   6913 A9                  856 	.db #0xA9	; 169
   6914 0A                  857 	.db #0x0A	; 10
   6915 B9                  858 	.db #0xB9	; 185
   6916 2B                  859 	.db #0x2B	; 43
   6917 5A                  860 	.db #0x5A	; 90	'Z'
   6918 F5                  861 	.db #0xF5	; 245
   6919 4A                  862 	.db #0x4A	; 74	'J'
   691A D4                  863 	.db #0xD4	; 212
   691B 7A                  864 	.db #0x7A	; 122	'z'
   691C B7                  865 	.db #0xB7	; 183
   691D 6A                  866 	.db #0x6A	; 106	'j'
   691E 96                  867 	.db #0x96	; 150
   691F 1A                  868 	.db #0x1A	; 26
   6920 71                  869 	.db #0x71	; 113	'q'
   6921 0A                  870 	.db #0x0A	; 10
   6922 50                  871 	.db #0x50	; 80	'P'
   6923 3A                  872 	.db #0x3A	; 58
   6924 33                  873 	.db #0x33	; 51	'3'
   6925 2A                  874 	.db #0x2A	; 42
   6926 12                  875 	.db #0x12	; 18
   6927 DB                  876 	.db #0xDB	; 219
   6928 FD                  877 	.db #0xFD	; 253
   6929 CB                  878 	.db #0xCB	; 203
   692A DC                  879 	.db #0xDC	; 220
   692B FB                  880 	.db #0xFB	; 251
   692C BF                  881 	.db #0xBF	; 191
   692D EB                  882 	.db #0xEB	; 235
   692E 9E                  883 	.db #0x9E	; 158
   692F 9B                  884 	.db #0x9B	; 155
   6930 79                  885 	.db #0x79	; 121	'y'
   6931 8B                  886 	.db #0x8B	; 139
   6932 58                  887 	.db #0x58	; 88	'X'
   6933 BB                  888 	.db #0xBB	; 187
   6934 3B                  889 	.db #0x3B	; 59
   6935 AB                  890 	.db #0xAB	; 171
   6936 1A                  891 	.db #0x1A	; 26
   6937 6C                  892 	.db #0x6C	; 108	'l'
   6938 A6                  893 	.db #0xA6	; 166
   6939 7C                  894 	.db #0x7C	; 124
   693A 87                  895 	.db #0x87	; 135
   693B 4C                  896 	.db #0x4C	; 76	'L'
   693C E4                  897 	.db #0xE4	; 228
   693D 5C                  898 	.db #0x5C	; 92
   693E C5                  899 	.db #0xC5	; 197
   693F 2C                  900 	.db #0x2C	; 44
   6940 22                  901 	.db #0x22	; 34
   6941 3C                  902 	.db #0x3C	; 60
   6942 03                  903 	.db #0x03	; 3
   6943 0C                  904 	.db #0x0C	; 12
   6944 60                  905 	.db #0x60	; 96
   6945 1C                  906 	.db #0x1C	; 28
   6946 41                  907 	.db #0x41	; 65	'A'
   6947 ED                  908 	.db #0xED	; 237
   6948 AE                  909 	.db #0xAE	; 174
   6949 FD                  910 	.db #0xFD	; 253
   694A 8F                  911 	.db #0x8F	; 143
   694B CD                  912 	.db #0xCD	; 205
   694C EC                  913 	.db #0xEC	; 236
   694D DD                  914 	.db #0xDD	; 221
   694E CD                  915 	.db #0xCD	; 205
   694F AD                  916 	.db #0xAD	; 173
   6950 2A                  917 	.db #0x2A	; 42
   6951 BD                  918 	.db #0xBD	; 189
   6952 0B                  919 	.db #0x0B	; 11
   6953 8D                  920 	.db #0x8D	; 141
   6954 68                  921 	.db #0x68	; 104	'h'
   6955 9D                  922 	.db #0x9D	; 157
   6956 49                  923 	.db #0x49	; 73	'I'
   6957 7E                  924 	.db #0x7E	; 126
   6958 97                  925 	.db #0x97	; 151
   6959 6E                  926 	.db #0x6E	; 110	'n'
   695A B6                  927 	.db #0xB6	; 182
   695B 5E                  928 	.db #0x5E	; 94
   695C D5                  929 	.db #0xD5	; 213
   695D 4E                  930 	.db #0x4E	; 78	'N'
   695E F4                  931 	.db #0xF4	; 244
   695F 3E                  932 	.db #0x3E	; 62
   6960 13                  933 	.db #0x13	; 19
   6961 2E                  934 	.db #0x2E	; 46
   6962 32                  935 	.db #0x32	; 50	'2'
   6963 1E                  936 	.db #0x1E	; 30
   6964 51                  937 	.db #0x51	; 81	'Q'
   6965 0E                  938 	.db #0x0E	; 14
   6966 70                  939 	.db #0x70	; 112	'p'
   6967 FF                  940 	.db #0xFF	; 255
   6968 9F                  941 	.db #0x9F	; 159
   6969 EF                  942 	.db #0xEF	; 239
   696A BE                  943 	.db #0xBE	; 190
   696B DF                  944 	.db #0xDF	; 223
   696C DD                  945 	.db #0xDD	; 221
   696D CF                  946 	.db #0xCF	; 207
   696E FC                  947 	.db #0xFC	; 252
   696F BF                  948 	.db #0xBF	; 191
   6970 1B                  949 	.db #0x1B	; 27
   6971 AF                  950 	.db #0xAF	; 175
   6972 3A                  951 	.db #0x3A	; 58
   6973 9F                  952 	.db #0x9F	; 159
   6974 59                  953 	.db #0x59	; 89	'Y'
   6975 8F                  954 	.db #0x8F	; 143
   6976 78                  955 	.db #0x78	; 120	'x'
   6977                     956 _crc_tab2:
   6977 91                  957 	.db #0x91	; 145
   6978 88                  958 	.db #0x88	; 136
   6979 81                  959 	.db #0x81	; 129
   697A A9                  960 	.db #0xA9	; 169
   697B B1                  961 	.db #0xB1	; 177
   697C CA                  962 	.db #0xCA	; 202
   697D A1                  963 	.db #0xA1	; 161
   697E EB                  964 	.db #0xEB	; 235
   697F D1                  965 	.db #0xD1	; 209
   6980 0C                  966 	.db #0x0C	; 12
   6981 C1                  967 	.db #0xC1	; 193
   6982 2D                  968 	.db #0x2D	; 45
   6983 F1                  969 	.db #0xF1	; 241
   6984 4E                  970 	.db #0x4E	; 78	'N'
   6985 E1                  971 	.db #0xE1	; 225
   6986 6F                  972 	.db #0x6F	; 111	'o'
   6987 10                  973 	.db #0x10	; 16
   6988 80                  974 	.db #0x80	; 128
   6989 00                  975 	.db #0x00	; 0
   698A A1                  976 	.db #0xA1	; 161
   698B 30                  977 	.db #0x30	; 48	'0'
   698C C2                  978 	.db #0xC2	; 194
   698D 20                  979 	.db #0x20	; 32
   698E E3                  980 	.db #0xE3	; 227
   698F 50                  981 	.db #0x50	; 80	'P'
   6990 04                  982 	.db #0x04	; 4
   6991 40                  983 	.db #0x40	; 64
   6992 25                  984 	.db #0x25	; 37
   6993 70                  985 	.db #0x70	; 112	'p'
   6994 46                  986 	.db #0x46	; 70	'F'
   6995 60                  987 	.db #0x60	; 96
   6996 67                  988 	.db #0x67	; 103	'g'
   6997 83                  989 	.db #0x83	; 131
   6998 B9                  990 	.db #0xB9	; 185
   6999 93                  991 	.db #0x93	; 147
   699A 98                  992 	.db #0x98	; 152
   699B A3                  993 	.db #0xA3	; 163
   699C FB                  994 	.db #0xFB	; 251
   699D B3                  995 	.db #0xB3	; 179
   699E DA                  996 	.db #0xDA	; 218
   699F C3                  997 	.db #0xC3	; 195
   69A0 3D                  998 	.db #0x3D	; 61
   69A1 D3                  999 	.db #0xD3	; 211
   69A2 1C                 1000 	.db #0x1C	; 28
   69A3 E3                 1001 	.db #0xE3	; 227
   69A4 7F                 1002 	.db #0x7F	; 127
   69A5 F3                 1003 	.db #0xF3	; 243
   69A6 5E                 1004 	.db #0x5E	; 94
   69A7 02                 1005 	.db #0x02	; 2
   69A8 B1                 1006 	.db #0xB1	; 177
   69A9 12                 1007 	.db #0x12	; 18
   69AA 90                 1008 	.db #0x90	; 144
   69AB 22                 1009 	.db #0x22	; 34
   69AC F3                 1010 	.db #0xF3	; 243
   69AD 32                 1011 	.db #0x32	; 50	'2'
   69AE D2                 1012 	.db #0xD2	; 210
   69AF 42                 1013 	.db #0x42	; 66	'B'
   69B0 35                 1014 	.db #0x35	; 53	'5'
   69B1 52                 1015 	.db #0x52	; 82	'R'
   69B2 14                 1016 	.db #0x14	; 20
   69B3 62                 1017 	.db #0x62	; 98	'b'
   69B4 77                 1018 	.db #0x77	; 119	'w'
   69B5 72                 1019 	.db #0x72	; 114	'r'
   69B6 56                 1020 	.db #0x56	; 86	'V'
   69B7 B5                 1021 	.db #0xB5	; 181
   69B8 EA                 1022 	.db #0xEA	; 234
   69B9 A5                 1023 	.db #0xA5	; 165
   69BA CB                 1024 	.db #0xCB	; 203
   69BB 95                 1025 	.db #0x95	; 149
   69BC A8                 1026 	.db #0xA8	; 168
   69BD 85                 1027 	.db #0x85	; 133
   69BE 89                 1028 	.db #0x89	; 137
   69BF F5                 1029 	.db #0xF5	; 245
   69C0 6E                 1030 	.db #0x6E	; 110	'n'
   69C1 E5                 1031 	.db #0xE5	; 229
   69C2 4F                 1032 	.db #0x4F	; 79	'O'
   69C3 D5                 1033 	.db #0xD5	; 213
   69C4 2C                 1034 	.db #0x2C	; 44
   69C5 C5                 1035 	.db #0xC5	; 197
   69C6 0D                 1036 	.db #0x0D	; 13
   69C7 34                 1037 	.db #0x34	; 52	'4'
   69C8 E2                 1038 	.db #0xE2	; 226
   69C9 24                 1039 	.db #0x24	; 36
   69CA C3                 1040 	.db #0xC3	; 195
   69CB 14                 1041 	.db #0x14	; 20
   69CC A0                 1042 	.db #0xA0	; 160
   69CD 04                 1043 	.db #0x04	; 4
   69CE 81                 1044 	.db #0x81	; 129
   69CF 74                 1045 	.db #0x74	; 116	't'
   69D0 66                 1046 	.db #0x66	; 102	'f'
   69D1 64                 1047 	.db #0x64	; 100	'd'
   69D2 47                 1048 	.db #0x47	; 71	'G'
   69D3 54                 1049 	.db #0x54	; 84	'T'
   69D4 24                 1050 	.db #0x24	; 36
   69D5 44                 1051 	.db #0x44	; 68	'D'
   69D6 05                 1052 	.db #0x05	; 5
   69D7 A7                 1053 	.db #0xA7	; 167
   69D8 DB                 1054 	.db #0xDB	; 219
   69D9 B7                 1055 	.db #0xB7	; 183
   69DA FA                 1056 	.db #0xFA	; 250
   69DB 87                 1057 	.db #0x87	; 135
   69DC 99                 1058 	.db #0x99	; 153
   69DD 97                 1059 	.db #0x97	; 151
   69DE B8                 1060 	.db #0xB8	; 184
   69DF E7                 1061 	.db #0xE7	; 231
   69E0 5F                 1062 	.db #0x5F	; 95
   69E1 F7                 1063 	.db #0xF7	; 247
   69E2 7E                 1064 	.db #0x7E	; 126
   69E3 C7                 1065 	.db #0xC7	; 199
   69E4 1D                 1066 	.db #0x1D	; 29
   69E5 D7                 1067 	.db #0xD7	; 215
   69E6 3C                 1068 	.db #0x3C	; 60
   69E7 26                 1069 	.db #0x26	; 38
   69E8 D3                 1070 	.db #0xD3	; 211
   69E9 36                 1071 	.db #0x36	; 54	'6'
   69EA F2                 1072 	.db #0xF2	; 242
   69EB 06                 1073 	.db #0x06	; 6
   69EC 91                 1074 	.db #0x91	; 145
   69ED 16                 1075 	.db #0x16	; 22
   69EE B0                 1076 	.db #0xB0	; 176
   69EF 66                 1077 	.db #0x66	; 102	'f'
   69F0 57                 1078 	.db #0x57	; 87	'W'
   69F1 76                 1079 	.db #0x76	; 118	'v'
   69F2 76                 1080 	.db #0x76	; 118	'v'
   69F3 46                 1081 	.db #0x46	; 70	'F'
   69F4 15                 1082 	.db #0x15	; 21
   69F5 56                 1083 	.db #0x56	; 86	'V'
   69F6 34                 1084 	.db #0x34	; 52	'4'
   69F7 D9                 1085 	.db #0xD9	; 217
   69F8 4C                 1086 	.db #0x4C	; 76	'L'
   69F9 C9                 1087 	.db #0xC9	; 201
   69FA 6D                 1088 	.db #0x6D	; 109	'm'
   69FB F9                 1089 	.db #0xF9	; 249
   69FC 0E                 1090 	.db #0x0E	; 14
   69FD E9                 1091 	.db #0xE9	; 233
   69FE 2F                 1092 	.db #0x2F	; 47
   69FF 99                 1093 	.db #0x99	; 153
   6A00 C8                 1094 	.db #0xC8	; 200
   6A01 89                 1095 	.db #0x89	; 137
   6A02 E9                 1096 	.db #0xE9	; 233
   6A03 B9                 1097 	.db #0xB9	; 185
   6A04 8A                 1098 	.db #0x8A	; 138
   6A05 A9                 1099 	.db #0xA9	; 169
   6A06 AB                 1100 	.db #0xAB	; 171
   6A07 58                 1101 	.db #0x58	; 88	'X'
   6A08 44                 1102 	.db #0x44	; 68	'D'
   6A09 48                 1103 	.db #0x48	; 72	'H'
   6A0A 65                 1104 	.db #0x65	; 101	'e'
   6A0B 78                 1105 	.db #0x78	; 120	'x'
   6A0C 06                 1106 	.db #0x06	; 6
   6A0D 68                 1107 	.db #0x68	; 104	'h'
   6A0E 27                 1108 	.db #0x27	; 39
   6A0F 18                 1109 	.db #0x18	; 24
   6A10 C0                 1110 	.db #0xC0	; 192
   6A11 08                 1111 	.db #0x08	; 8
   6A12 E1                 1112 	.db #0xE1	; 225
   6A13 38                 1113 	.db #0x38	; 56	'8'
   6A14 82                 1114 	.db #0x82	; 130
   6A15 28                 1115 	.db #0x28	; 40
   6A16 A3                 1116 	.db #0xA3	; 163
   6A17 CB                 1117 	.db #0xCB	; 203
   6A18 7D                 1118 	.db #0x7D	; 125
   6A19 DB                 1119 	.db #0xDB	; 219
   6A1A 5C                 1120 	.db #0x5C	; 92
   6A1B EB                 1121 	.db #0xEB	; 235
   6A1C 3F                 1122 	.db #0x3F	; 63
   6A1D FB                 1123 	.db #0xFB	; 251
   6A1E 1E                 1124 	.db #0x1E	; 30
   6A1F 8B                 1125 	.db #0x8B	; 139
   6A20 F9                 1126 	.db #0xF9	; 249
   6A21 9B                 1127 	.db #0x9B	; 155
   6A22 D8                 1128 	.db #0xD8	; 216
   6A23 AB                 1129 	.db #0xAB	; 171
   6A24 BB                 1130 	.db #0xBB	; 187
   6A25 BB                 1131 	.db #0xBB	; 187
   6A26 9A                 1132 	.db #0x9A	; 154
   6A27 4A                 1133 	.db #0x4A	; 74	'J'
   6A28 75                 1134 	.db #0x75	; 117	'u'
   6A29 5A                 1135 	.db #0x5A	; 90	'Z'
   6A2A 54                 1136 	.db #0x54	; 84	'T'
   6A2B 6A                 1137 	.db #0x6A	; 106	'j'
   6A2C 37                 1138 	.db #0x37	; 55	'7'
   6A2D 7A                 1139 	.db #0x7A	; 122	'z'
   6A2E 16                 1140 	.db #0x16	; 22
   6A2F 0A                 1141 	.db #0x0A	; 10
   6A30 F1                 1142 	.db #0xF1	; 241
   6A31 1A                 1143 	.db #0x1A	; 26
   6A32 D0                 1144 	.db #0xD0	; 208
   6A33 2A                 1145 	.db #0x2A	; 42
   6A34 B3                 1146 	.db #0xB3	; 179
   6A35 3A                 1147 	.db #0x3A	; 58
   6A36 92                 1148 	.db #0x92	; 146
   6A37 FD                 1149 	.db #0xFD	; 253
   6A38 2E                 1150 	.db #0x2E	; 46
   6A39 ED                 1151 	.db #0xED	; 237
   6A3A 0F                 1152 	.db #0x0F	; 15
   6A3B DD                 1153 	.db #0xDD	; 221
   6A3C 6C                 1154 	.db #0x6C	; 108	'l'
   6A3D CD                 1155 	.db #0xCD	; 205
   6A3E 4D                 1156 	.db #0x4D	; 77	'M'
   6A3F BD                 1157 	.db #0xBD	; 189
   6A40 AA                 1158 	.db #0xAA	; 170
   6A41 AD                 1159 	.db #0xAD	; 173
   6A42 8B                 1160 	.db #0x8B	; 139
   6A43 9D                 1161 	.db #0x9D	; 157
   6A44 E8                 1162 	.db #0xE8	; 232
   6A45 8D                 1163 	.db #0x8D	; 141
   6A46 C9                 1164 	.db #0xC9	; 201
   6A47 7C                 1165 	.db #0x7C	; 124
   6A48 26                 1166 	.db #0x26	; 38
   6A49 6C                 1167 	.db #0x6C	; 108	'l'
   6A4A 07                 1168 	.db #0x07	; 7
   6A4B 5C                 1169 	.db #0x5C	; 92
   6A4C 64                 1170 	.db #0x64	; 100	'd'
   6A4D 4C                 1171 	.db #0x4C	; 76	'L'
   6A4E 45                 1172 	.db #0x45	; 69	'E'
   6A4F 3C                 1173 	.db #0x3C	; 60
   6A50 A2                 1174 	.db #0xA2	; 162
   6A51 2C                 1175 	.db #0x2C	; 44
   6A52 83                 1176 	.db #0x83	; 131
   6A53 1C                 1177 	.db #0x1C	; 28
   6A54 E0                 1178 	.db #0xE0	; 224
   6A55 0C                 1179 	.db #0x0C	; 12
   6A56 C1                 1180 	.db #0xC1	; 193
   6A57 EF                 1181 	.db #0xEF	; 239
   6A58 1F                 1182 	.db #0x1F	; 31
   6A59 FF                 1183 	.db #0xFF	; 255
   6A5A 3E                 1184 	.db #0x3E	; 62
   6A5B CF                 1185 	.db #0xCF	; 207
   6A5C 5D                 1186 	.db #0x5D	; 93
   6A5D DF                 1187 	.db #0xDF	; 223
   6A5E 7C                 1188 	.db #0x7C	; 124
   6A5F AF                 1189 	.db #0xAF	; 175
   6A60 9B                 1190 	.db #0x9B	; 155
   6A61 BF                 1191 	.db #0xBF	; 191
   6A62 BA                 1192 	.db #0xBA	; 186
   6A63 8F                 1193 	.db #0x8F	; 143
   6A64 D9                 1194 	.db #0xD9	; 217
   6A65 9F                 1195 	.db #0x9F	; 159
   6A66 F8                 1196 	.db #0xF8	; 248
   6A67 6E                 1197 	.db #0x6E	; 110	'n'
   6A68 17                 1198 	.db #0x17	; 23
   6A69 7E                 1199 	.db #0x7E	; 126
   6A6A 36                 1200 	.db #0x36	; 54	'6'
   6A6B 4E                 1201 	.db #0x4E	; 78	'N'
   6A6C 55                 1202 	.db #0x55	; 85	'U'
   6A6D 5E                 1203 	.db #0x5E	; 94
   6A6E 74                 1204 	.db #0x74	; 116	't'
   6A6F 2E                 1205 	.db #0x2E	; 46
   6A70 93                 1206 	.db #0x93	; 147
   6A71 3E                 1207 	.db #0x3E	; 62
   6A72 B2                 1208 	.db #0xB2	; 178
   6A73 0E                 1209 	.db #0x0E	; 14
   6A74 D1                 1210 	.db #0xD1	; 209
   6A75 1E                 1211 	.db #0x1E	; 30
   6A76 F0                 1212 	.db #0xF0	; 240
                           1213 	.area XINIT   (CODE)
                           1214 	.area CABS    (ABS,CODE)
