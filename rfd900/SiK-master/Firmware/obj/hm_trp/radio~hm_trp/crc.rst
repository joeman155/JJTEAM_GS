                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:02 2013
                              5 ;--------------------------------------------------------
                              6 	.module crc
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
   0A2A                     614 _crc16:
                     0007   615 	ar7 = 0x07
                     0006   616 	ar6 = 0x06
                     0005   617 	ar5 = 0x05
                     0004   618 	ar4 = 0x04
                     0003   619 	ar3 = 0x03
                     0002   620 	ar2 = 0x02
                     0001   621 	ar1 = 0x01
                     0000   622 	ar0 = 0x00
   0A2A AF 82         [24]  623 	mov	r7,dpl
                            624 ;	radio/crc.c:90: high = low = 0;
   0A2C 7E 00         [12]  625 	mov	r6,#0x00
   0A2E 7D 00         [12]  626 	mov	r5,#0x00
                            627 ;	radio/crc.c:92: while (n--) {
   0A30 AB 0C         [24]  628 	mov	r3,_crc16_PARM_2
   0A32 AC 0D         [24]  629 	mov	r4,(_crc16_PARM_2 + 1)
   0A34                     630 00104$:
   0A34 8F 02         [24]  631 	mov	ar2,r7
   0A36 1F            [12]  632 	dec	r7
   0A37 EA            [12]  633 	mov	a,r2
   0A38 60 3B         [24]  634 	jz	00106$
                            635 ;	radio/crc.c:93: register uint8_t b = *buf++;
   0A3A 8B 82         [24]  636 	mov	dpl,r3
   0A3C 8C 83         [24]  637 	mov	dph,r4
   0A3E E0            [24]  638 	movx	a,@dptr
   0A3F FA            [12]  639 	mov	r2,a
   0A40 A3            [24]  640 	inc	dptr
   0A41 AB 82         [24]  641 	mov	r3,dpl
   0A43 AC 83         [24]  642 	mov	r4,dph
                            643 ;	radio/crc.c:94: k = high << 1;
   0A45 ED            [12]  644 	mov	a,r5
   0A46 2D            [12]  645 	add	a,r5
   0A47 F9            [12]  646 	mov	r1,a
                            647 ;	radio/crc.c:95: if (high & 0x80) {
   0A48 ED            [12]  648 	mov	a,r5
   0A49 30 E7 14      [24]  649 	jnb	acc.7,00102$
                            650 ;	radio/crc.c:96: high = low ^ crc_tab2[k++];
   0A4C 89 00         [24]  651 	mov	ar0,r1
   0A4E 09            [12]  652 	inc	r1
   0A4F E8            [12]  653 	mov	a,r0
   0A50 90 67 19      [24]  654 	mov	dptr,#_crc_tab2
   0A53 93            [24]  655 	movc	a,@a+dptr
   0A54 6E            [12]  656 	xrl	a,r6
   0A55 FD            [12]  657 	mov	r5,a
                            658 ;	radio/crc.c:97: low = b ^ crc_tab2[k];
   0A56 E9            [12]  659 	mov	a,r1
   0A57 90 67 19      [24]  660 	mov	dptr,#_crc_tab2
   0A5A 93            [24]  661 	movc	a,@a+dptr
   0A5B F8            [12]  662 	mov	r0,a
   0A5C 6A            [12]  663 	xrl	a,r2
   0A5D FE            [12]  664 	mov	r6,a
   0A5E 80 D4         [24]  665 	sjmp	00104$
   0A60                     666 00102$:
                            667 ;	radio/crc.c:99: high = low ^ crc_tab1[k++];
   0A60 89 00         [24]  668 	mov	ar0,r1
   0A62 09            [12]  669 	inc	r1
   0A63 E8            [12]  670 	mov	a,r0
   0A64 90 66 19      [24]  671 	mov	dptr,#_crc_tab1
   0A67 93            [24]  672 	movc	a,@a+dptr
   0A68 F8            [12]  673 	mov	r0,a
   0A69 6E            [12]  674 	xrl	a,r6
   0A6A FD            [12]  675 	mov	r5,a
                            676 ;	radio/crc.c:100: low = b ^ crc_tab1[k];
   0A6B E9            [12]  677 	mov	a,r1
   0A6C 90 66 19      [24]  678 	mov	dptr,#_crc_tab1
   0A6F 93            [24]  679 	movc	a,@a+dptr
   0A70 F9            [12]  680 	mov	r1,a
   0A71 6A            [12]  681 	xrl	a,r2
   0A72 FE            [12]  682 	mov	r6,a
   0A73 80 BF         [24]  683 	sjmp	00104$
   0A75                     684 00106$:
                            685 ;	radio/crc.c:103: return (((uint16_t)high)<<8) | low;
   0A75 8D 07         [24]  686 	mov	ar7,r5
   0A77 E4            [12]  687 	clr	a
   0A78 FD            [12]  688 	mov	r5,a
   0A79 FC            [12]  689 	mov	r4,a
   0A7A EE            [12]  690 	mov	a,r6
   0A7B 42 05         [12]  691 	orl	ar5,a
   0A7D EC            [12]  692 	mov	a,r4
   0A7E 42 07         [12]  693 	orl	ar7,a
   0A80 8D 82         [24]  694 	mov	dpl,r5
   0A82 8F 83         [24]  695 	mov	dph,r7
   0A84 22            [24]  696 	ret
                            697 	.area CSEG    (CODE)
                            698 	.area CONST   (CODE)
   6619                     699 _crc_tab1:
   6619 00                  700 	.db #0x00	; 0
   661A 00                  701 	.db #0x00	; 0
   661B 10                  702 	.db #0x10	; 16
   661C 21                  703 	.db #0x21	; 33
   661D 20                  704 	.db #0x20	; 32
   661E 42                  705 	.db #0x42	; 66	'B'
   661F 30                  706 	.db #0x30	; 48	'0'
   6620 63                  707 	.db #0x63	; 99	'c'
   6621 40                  708 	.db #0x40	; 64
   6622 84                  709 	.db #0x84	; 132
   6623 50                  710 	.db #0x50	; 80	'P'
   6624 A5                  711 	.db #0xA5	; 165
   6625 60                  712 	.db #0x60	; 96
   6626 C6                  713 	.db #0xC6	; 198
   6627 70                  714 	.db #0x70	; 112	'p'
   6628 E7                  715 	.db #0xE7	; 231
   6629 81                  716 	.db #0x81	; 129
   662A 08                  717 	.db #0x08	; 8
   662B 91                  718 	.db #0x91	; 145
   662C 29                  719 	.db #0x29	; 41
   662D A1                  720 	.db #0xA1	; 161
   662E 4A                  721 	.db #0x4A	; 74	'J'
   662F B1                  722 	.db #0xB1	; 177
   6630 6B                  723 	.db #0x6B	; 107	'k'
   6631 C1                  724 	.db #0xC1	; 193
   6632 8C                  725 	.db #0x8C	; 140
   6633 D1                  726 	.db #0xD1	; 209
   6634 AD                  727 	.db #0xAD	; 173
   6635 E1                  728 	.db #0xE1	; 225
   6636 CE                  729 	.db #0xCE	; 206
   6637 F1                  730 	.db #0xF1	; 241
   6638 EF                  731 	.db #0xEF	; 239
   6639 12                  732 	.db #0x12	; 18
   663A 31                  733 	.db #0x31	; 49	'1'
   663B 02                  734 	.db #0x02	; 2
   663C 10                  735 	.db #0x10	; 16
   663D 32                  736 	.db #0x32	; 50	'2'
   663E 73                  737 	.db #0x73	; 115	's'
   663F 22                  738 	.db #0x22	; 34
   6640 52                  739 	.db #0x52	; 82	'R'
   6641 52                  740 	.db #0x52	; 82	'R'
   6642 B5                  741 	.db #0xB5	; 181
   6643 42                  742 	.db #0x42	; 66	'B'
   6644 94                  743 	.db #0x94	; 148
   6645 72                  744 	.db #0x72	; 114	'r'
   6646 F7                  745 	.db #0xF7	; 247
   6647 62                  746 	.db #0x62	; 98	'b'
   6648 D6                  747 	.db #0xD6	; 214
   6649 93                  748 	.db #0x93	; 147
   664A 39                  749 	.db #0x39	; 57	'9'
   664B 83                  750 	.db #0x83	; 131
   664C 18                  751 	.db #0x18	; 24
   664D B3                  752 	.db #0xB3	; 179
   664E 7B                  753 	.db #0x7B	; 123
   664F A3                  754 	.db #0xA3	; 163
   6650 5A                  755 	.db #0x5A	; 90	'Z'
   6651 D3                  756 	.db #0xD3	; 211
   6652 BD                  757 	.db #0xBD	; 189
   6653 C3                  758 	.db #0xC3	; 195
   6654 9C                  759 	.db #0x9C	; 156
   6655 F3                  760 	.db #0xF3	; 243
   6656 FF                  761 	.db #0xFF	; 255
   6657 E3                  762 	.db #0xE3	; 227
   6658 DE                  763 	.db #0xDE	; 222
   6659 24                  764 	.db #0x24	; 36
   665A 62                  765 	.db #0x62	; 98	'b'
   665B 34                  766 	.db #0x34	; 52	'4'
   665C 43                  767 	.db #0x43	; 67	'C'
   665D 04                  768 	.db #0x04	; 4
   665E 20                  769 	.db #0x20	; 32
   665F 14                  770 	.db #0x14	; 20
   6660 01                  771 	.db #0x01	; 1
   6661 64                  772 	.db #0x64	; 100	'd'
   6662 E6                  773 	.db #0xE6	; 230
   6663 74                  774 	.db #0x74	; 116	't'
   6664 C7                  775 	.db #0xC7	; 199
   6665 44                  776 	.db #0x44	; 68	'D'
   6666 A4                  777 	.db #0xA4	; 164
   6667 54                  778 	.db #0x54	; 84	'T'
   6668 85                  779 	.db #0x85	; 133
   6669 A5                  780 	.db #0xA5	; 165
   666A 6A                  781 	.db #0x6A	; 106	'j'
   666B B5                  782 	.db #0xB5	; 181
   666C 4B                  783 	.db #0x4B	; 75	'K'
   666D 85                  784 	.db #0x85	; 133
   666E 28                  785 	.db #0x28	; 40
   666F 95                  786 	.db #0x95	; 149
   6670 09                  787 	.db #0x09	; 9
   6671 E5                  788 	.db #0xE5	; 229
   6672 EE                  789 	.db #0xEE	; 238
   6673 F5                  790 	.db #0xF5	; 245
   6674 CF                  791 	.db #0xCF	; 207
   6675 C5                  792 	.db #0xC5	; 197
   6676 AC                  793 	.db #0xAC	; 172
   6677 D5                  794 	.db #0xD5	; 213
   6678 8D                  795 	.db #0x8D	; 141
   6679 36                  796 	.db #0x36	; 54	'6'
   667A 53                  797 	.db #0x53	; 83	'S'
   667B 26                  798 	.db #0x26	; 38
   667C 72                  799 	.db #0x72	; 114	'r'
   667D 16                  800 	.db #0x16	; 22
   667E 11                  801 	.db #0x11	; 17
   667F 06                  802 	.db #0x06	; 6
   6680 30                  803 	.db #0x30	; 48	'0'
   6681 76                  804 	.db #0x76	; 118	'v'
   6682 D7                  805 	.db #0xD7	; 215
   6683 66                  806 	.db #0x66	; 102	'f'
   6684 F6                  807 	.db #0xF6	; 246
   6685 56                  808 	.db #0x56	; 86	'V'
   6686 95                  809 	.db #0x95	; 149
   6687 46                  810 	.db #0x46	; 70	'F'
   6688 B4                  811 	.db #0xB4	; 180
   6689 B7                  812 	.db #0xB7	; 183
   668A 5B                  813 	.db #0x5B	; 91
   668B A7                  814 	.db #0xA7	; 167
   668C 7A                  815 	.db #0x7A	; 122	'z'
   668D 97                  816 	.db #0x97	; 151
   668E 19                  817 	.db #0x19	; 25
   668F 87                  818 	.db #0x87	; 135
   6690 38                  819 	.db #0x38	; 56	'8'
   6691 F7                  820 	.db #0xF7	; 247
   6692 DF                  821 	.db #0xDF	; 223
   6693 E7                  822 	.db #0xE7	; 231
   6694 FE                  823 	.db #0xFE	; 254
   6695 D7                  824 	.db #0xD7	; 215
   6696 9D                  825 	.db #0x9D	; 157
   6697 C7                  826 	.db #0xC7	; 199
   6698 BC                  827 	.db #0xBC	; 188
   6699 48                  828 	.db #0x48	; 72	'H'
   669A C4                  829 	.db #0xC4	; 196
   669B 58                  830 	.db #0x58	; 88	'X'
   669C E5                  831 	.db #0xE5	; 229
   669D 68                  832 	.db #0x68	; 104	'h'
   669E 86                  833 	.db #0x86	; 134
   669F 78                  834 	.db #0x78	; 120	'x'
   66A0 A7                  835 	.db #0xA7	; 167
   66A1 08                  836 	.db #0x08	; 8
   66A2 40                  837 	.db #0x40	; 64
   66A3 18                  838 	.db #0x18	; 24
   66A4 61                  839 	.db #0x61	; 97	'a'
   66A5 28                  840 	.db #0x28	; 40
   66A6 02                  841 	.db #0x02	; 2
   66A7 38                  842 	.db #0x38	; 56	'8'
   66A8 23                  843 	.db #0x23	; 35
   66A9 C9                  844 	.db #0xC9	; 201
   66AA CC                  845 	.db #0xCC	; 204
   66AB D9                  846 	.db #0xD9	; 217
   66AC ED                  847 	.db #0xED	; 237
   66AD E9                  848 	.db #0xE9	; 233
   66AE 8E                  849 	.db #0x8E	; 142
   66AF F9                  850 	.db #0xF9	; 249
   66B0 AF                  851 	.db #0xAF	; 175
   66B1 89                  852 	.db #0x89	; 137
   66B2 48                  853 	.db #0x48	; 72	'H'
   66B3 99                  854 	.db #0x99	; 153
   66B4 69                  855 	.db #0x69	; 105	'i'
   66B5 A9                  856 	.db #0xA9	; 169
   66B6 0A                  857 	.db #0x0A	; 10
   66B7 B9                  858 	.db #0xB9	; 185
   66B8 2B                  859 	.db #0x2B	; 43
   66B9 5A                  860 	.db #0x5A	; 90	'Z'
   66BA F5                  861 	.db #0xF5	; 245
   66BB 4A                  862 	.db #0x4A	; 74	'J'
   66BC D4                  863 	.db #0xD4	; 212
   66BD 7A                  864 	.db #0x7A	; 122	'z'
   66BE B7                  865 	.db #0xB7	; 183
   66BF 6A                  866 	.db #0x6A	; 106	'j'
   66C0 96                  867 	.db #0x96	; 150
   66C1 1A                  868 	.db #0x1A	; 26
   66C2 71                  869 	.db #0x71	; 113	'q'
   66C3 0A                  870 	.db #0x0A	; 10
   66C4 50                  871 	.db #0x50	; 80	'P'
   66C5 3A                  872 	.db #0x3A	; 58
   66C6 33                  873 	.db #0x33	; 51	'3'
   66C7 2A                  874 	.db #0x2A	; 42
   66C8 12                  875 	.db #0x12	; 18
   66C9 DB                  876 	.db #0xDB	; 219
   66CA FD                  877 	.db #0xFD	; 253
   66CB CB                  878 	.db #0xCB	; 203
   66CC DC                  879 	.db #0xDC	; 220
   66CD FB                  880 	.db #0xFB	; 251
   66CE BF                  881 	.db #0xBF	; 191
   66CF EB                  882 	.db #0xEB	; 235
   66D0 9E                  883 	.db #0x9E	; 158
   66D1 9B                  884 	.db #0x9B	; 155
   66D2 79                  885 	.db #0x79	; 121	'y'
   66D3 8B                  886 	.db #0x8B	; 139
   66D4 58                  887 	.db #0x58	; 88	'X'
   66D5 BB                  888 	.db #0xBB	; 187
   66D6 3B                  889 	.db #0x3B	; 59
   66D7 AB                  890 	.db #0xAB	; 171
   66D8 1A                  891 	.db #0x1A	; 26
   66D9 6C                  892 	.db #0x6C	; 108	'l'
   66DA A6                  893 	.db #0xA6	; 166
   66DB 7C                  894 	.db #0x7C	; 124
   66DC 87                  895 	.db #0x87	; 135
   66DD 4C                  896 	.db #0x4C	; 76	'L'
   66DE E4                  897 	.db #0xE4	; 228
   66DF 5C                  898 	.db #0x5C	; 92
   66E0 C5                  899 	.db #0xC5	; 197
   66E1 2C                  900 	.db #0x2C	; 44
   66E2 22                  901 	.db #0x22	; 34
   66E3 3C                  902 	.db #0x3C	; 60
   66E4 03                  903 	.db #0x03	; 3
   66E5 0C                  904 	.db #0x0C	; 12
   66E6 60                  905 	.db #0x60	; 96
   66E7 1C                  906 	.db #0x1C	; 28
   66E8 41                  907 	.db #0x41	; 65	'A'
   66E9 ED                  908 	.db #0xED	; 237
   66EA AE                  909 	.db #0xAE	; 174
   66EB FD                  910 	.db #0xFD	; 253
   66EC 8F                  911 	.db #0x8F	; 143
   66ED CD                  912 	.db #0xCD	; 205
   66EE EC                  913 	.db #0xEC	; 236
   66EF DD                  914 	.db #0xDD	; 221
   66F0 CD                  915 	.db #0xCD	; 205
   66F1 AD                  916 	.db #0xAD	; 173
   66F2 2A                  917 	.db #0x2A	; 42
   66F3 BD                  918 	.db #0xBD	; 189
   66F4 0B                  919 	.db #0x0B	; 11
   66F5 8D                  920 	.db #0x8D	; 141
   66F6 68                  921 	.db #0x68	; 104	'h'
   66F7 9D                  922 	.db #0x9D	; 157
   66F8 49                  923 	.db #0x49	; 73	'I'
   66F9 7E                  924 	.db #0x7E	; 126
   66FA 97                  925 	.db #0x97	; 151
   66FB 6E                  926 	.db #0x6E	; 110	'n'
   66FC B6                  927 	.db #0xB6	; 182
   66FD 5E                  928 	.db #0x5E	; 94
   66FE D5                  929 	.db #0xD5	; 213
   66FF 4E                  930 	.db #0x4E	; 78	'N'
   6700 F4                  931 	.db #0xF4	; 244
   6701 3E                  932 	.db #0x3E	; 62
   6702 13                  933 	.db #0x13	; 19
   6703 2E                  934 	.db #0x2E	; 46
   6704 32                  935 	.db #0x32	; 50	'2'
   6705 1E                  936 	.db #0x1E	; 30
   6706 51                  937 	.db #0x51	; 81	'Q'
   6707 0E                  938 	.db #0x0E	; 14
   6708 70                  939 	.db #0x70	; 112	'p'
   6709 FF                  940 	.db #0xFF	; 255
   670A 9F                  941 	.db #0x9F	; 159
   670B EF                  942 	.db #0xEF	; 239
   670C BE                  943 	.db #0xBE	; 190
   670D DF                  944 	.db #0xDF	; 223
   670E DD                  945 	.db #0xDD	; 221
   670F CF                  946 	.db #0xCF	; 207
   6710 FC                  947 	.db #0xFC	; 252
   6711 BF                  948 	.db #0xBF	; 191
   6712 1B                  949 	.db #0x1B	; 27
   6713 AF                  950 	.db #0xAF	; 175
   6714 3A                  951 	.db #0x3A	; 58
   6715 9F                  952 	.db #0x9F	; 159
   6716 59                  953 	.db #0x59	; 89	'Y'
   6717 8F                  954 	.db #0x8F	; 143
   6718 78                  955 	.db #0x78	; 120	'x'
   6719                     956 _crc_tab2:
   6719 91                  957 	.db #0x91	; 145
   671A 88                  958 	.db #0x88	; 136
   671B 81                  959 	.db #0x81	; 129
   671C A9                  960 	.db #0xA9	; 169
   671D B1                  961 	.db #0xB1	; 177
   671E CA                  962 	.db #0xCA	; 202
   671F A1                  963 	.db #0xA1	; 161
   6720 EB                  964 	.db #0xEB	; 235
   6721 D1                  965 	.db #0xD1	; 209
   6722 0C                  966 	.db #0x0C	; 12
   6723 C1                  967 	.db #0xC1	; 193
   6724 2D                  968 	.db #0x2D	; 45
   6725 F1                  969 	.db #0xF1	; 241
   6726 4E                  970 	.db #0x4E	; 78	'N'
   6727 E1                  971 	.db #0xE1	; 225
   6728 6F                  972 	.db #0x6F	; 111	'o'
   6729 10                  973 	.db #0x10	; 16
   672A 80                  974 	.db #0x80	; 128
   672B 00                  975 	.db #0x00	; 0
   672C A1                  976 	.db #0xA1	; 161
   672D 30                  977 	.db #0x30	; 48	'0'
   672E C2                  978 	.db #0xC2	; 194
   672F 20                  979 	.db #0x20	; 32
   6730 E3                  980 	.db #0xE3	; 227
   6731 50                  981 	.db #0x50	; 80	'P'
   6732 04                  982 	.db #0x04	; 4
   6733 40                  983 	.db #0x40	; 64
   6734 25                  984 	.db #0x25	; 37
   6735 70                  985 	.db #0x70	; 112	'p'
   6736 46                  986 	.db #0x46	; 70	'F'
   6737 60                  987 	.db #0x60	; 96
   6738 67                  988 	.db #0x67	; 103	'g'
   6739 83                  989 	.db #0x83	; 131
   673A B9                  990 	.db #0xB9	; 185
   673B 93                  991 	.db #0x93	; 147
   673C 98                  992 	.db #0x98	; 152
   673D A3                  993 	.db #0xA3	; 163
   673E FB                  994 	.db #0xFB	; 251
   673F B3                  995 	.db #0xB3	; 179
   6740 DA                  996 	.db #0xDA	; 218
   6741 C3                  997 	.db #0xC3	; 195
   6742 3D                  998 	.db #0x3D	; 61
   6743 D3                  999 	.db #0xD3	; 211
   6744 1C                 1000 	.db #0x1C	; 28
   6745 E3                 1001 	.db #0xE3	; 227
   6746 7F                 1002 	.db #0x7F	; 127
   6747 F3                 1003 	.db #0xF3	; 243
   6748 5E                 1004 	.db #0x5E	; 94
   6749 02                 1005 	.db #0x02	; 2
   674A B1                 1006 	.db #0xB1	; 177
   674B 12                 1007 	.db #0x12	; 18
   674C 90                 1008 	.db #0x90	; 144
   674D 22                 1009 	.db #0x22	; 34
   674E F3                 1010 	.db #0xF3	; 243
   674F 32                 1011 	.db #0x32	; 50	'2'
   6750 D2                 1012 	.db #0xD2	; 210
   6751 42                 1013 	.db #0x42	; 66	'B'
   6752 35                 1014 	.db #0x35	; 53	'5'
   6753 52                 1015 	.db #0x52	; 82	'R'
   6754 14                 1016 	.db #0x14	; 20
   6755 62                 1017 	.db #0x62	; 98	'b'
   6756 77                 1018 	.db #0x77	; 119	'w'
   6757 72                 1019 	.db #0x72	; 114	'r'
   6758 56                 1020 	.db #0x56	; 86	'V'
   6759 B5                 1021 	.db #0xB5	; 181
   675A EA                 1022 	.db #0xEA	; 234
   675B A5                 1023 	.db #0xA5	; 165
   675C CB                 1024 	.db #0xCB	; 203
   675D 95                 1025 	.db #0x95	; 149
   675E A8                 1026 	.db #0xA8	; 168
   675F 85                 1027 	.db #0x85	; 133
   6760 89                 1028 	.db #0x89	; 137
   6761 F5                 1029 	.db #0xF5	; 245
   6762 6E                 1030 	.db #0x6E	; 110	'n'
   6763 E5                 1031 	.db #0xE5	; 229
   6764 4F                 1032 	.db #0x4F	; 79	'O'
   6765 D5                 1033 	.db #0xD5	; 213
   6766 2C                 1034 	.db #0x2C	; 44
   6767 C5                 1035 	.db #0xC5	; 197
   6768 0D                 1036 	.db #0x0D	; 13
   6769 34                 1037 	.db #0x34	; 52	'4'
   676A E2                 1038 	.db #0xE2	; 226
   676B 24                 1039 	.db #0x24	; 36
   676C C3                 1040 	.db #0xC3	; 195
   676D 14                 1041 	.db #0x14	; 20
   676E A0                 1042 	.db #0xA0	; 160
   676F 04                 1043 	.db #0x04	; 4
   6770 81                 1044 	.db #0x81	; 129
   6771 74                 1045 	.db #0x74	; 116	't'
   6772 66                 1046 	.db #0x66	; 102	'f'
   6773 64                 1047 	.db #0x64	; 100	'd'
   6774 47                 1048 	.db #0x47	; 71	'G'
   6775 54                 1049 	.db #0x54	; 84	'T'
   6776 24                 1050 	.db #0x24	; 36
   6777 44                 1051 	.db #0x44	; 68	'D'
   6778 05                 1052 	.db #0x05	; 5
   6779 A7                 1053 	.db #0xA7	; 167
   677A DB                 1054 	.db #0xDB	; 219
   677B B7                 1055 	.db #0xB7	; 183
   677C FA                 1056 	.db #0xFA	; 250
   677D 87                 1057 	.db #0x87	; 135
   677E 99                 1058 	.db #0x99	; 153
   677F 97                 1059 	.db #0x97	; 151
   6780 B8                 1060 	.db #0xB8	; 184
   6781 E7                 1061 	.db #0xE7	; 231
   6782 5F                 1062 	.db #0x5F	; 95
   6783 F7                 1063 	.db #0xF7	; 247
   6784 7E                 1064 	.db #0x7E	; 126
   6785 C7                 1065 	.db #0xC7	; 199
   6786 1D                 1066 	.db #0x1D	; 29
   6787 D7                 1067 	.db #0xD7	; 215
   6788 3C                 1068 	.db #0x3C	; 60
   6789 26                 1069 	.db #0x26	; 38
   678A D3                 1070 	.db #0xD3	; 211
   678B 36                 1071 	.db #0x36	; 54	'6'
   678C F2                 1072 	.db #0xF2	; 242
   678D 06                 1073 	.db #0x06	; 6
   678E 91                 1074 	.db #0x91	; 145
   678F 16                 1075 	.db #0x16	; 22
   6790 B0                 1076 	.db #0xB0	; 176
   6791 66                 1077 	.db #0x66	; 102	'f'
   6792 57                 1078 	.db #0x57	; 87	'W'
   6793 76                 1079 	.db #0x76	; 118	'v'
   6794 76                 1080 	.db #0x76	; 118	'v'
   6795 46                 1081 	.db #0x46	; 70	'F'
   6796 15                 1082 	.db #0x15	; 21
   6797 56                 1083 	.db #0x56	; 86	'V'
   6798 34                 1084 	.db #0x34	; 52	'4'
   6799 D9                 1085 	.db #0xD9	; 217
   679A 4C                 1086 	.db #0x4C	; 76	'L'
   679B C9                 1087 	.db #0xC9	; 201
   679C 6D                 1088 	.db #0x6D	; 109	'm'
   679D F9                 1089 	.db #0xF9	; 249
   679E 0E                 1090 	.db #0x0E	; 14
   679F E9                 1091 	.db #0xE9	; 233
   67A0 2F                 1092 	.db #0x2F	; 47
   67A1 99                 1093 	.db #0x99	; 153
   67A2 C8                 1094 	.db #0xC8	; 200
   67A3 89                 1095 	.db #0x89	; 137
   67A4 E9                 1096 	.db #0xE9	; 233
   67A5 B9                 1097 	.db #0xB9	; 185
   67A6 8A                 1098 	.db #0x8A	; 138
   67A7 A9                 1099 	.db #0xA9	; 169
   67A8 AB                 1100 	.db #0xAB	; 171
   67A9 58                 1101 	.db #0x58	; 88	'X'
   67AA 44                 1102 	.db #0x44	; 68	'D'
   67AB 48                 1103 	.db #0x48	; 72	'H'
   67AC 65                 1104 	.db #0x65	; 101	'e'
   67AD 78                 1105 	.db #0x78	; 120	'x'
   67AE 06                 1106 	.db #0x06	; 6
   67AF 68                 1107 	.db #0x68	; 104	'h'
   67B0 27                 1108 	.db #0x27	; 39
   67B1 18                 1109 	.db #0x18	; 24
   67B2 C0                 1110 	.db #0xC0	; 192
   67B3 08                 1111 	.db #0x08	; 8
   67B4 E1                 1112 	.db #0xE1	; 225
   67B5 38                 1113 	.db #0x38	; 56	'8'
   67B6 82                 1114 	.db #0x82	; 130
   67B7 28                 1115 	.db #0x28	; 40
   67B8 A3                 1116 	.db #0xA3	; 163
   67B9 CB                 1117 	.db #0xCB	; 203
   67BA 7D                 1118 	.db #0x7D	; 125
   67BB DB                 1119 	.db #0xDB	; 219
   67BC 5C                 1120 	.db #0x5C	; 92
   67BD EB                 1121 	.db #0xEB	; 235
   67BE 3F                 1122 	.db #0x3F	; 63
   67BF FB                 1123 	.db #0xFB	; 251
   67C0 1E                 1124 	.db #0x1E	; 30
   67C1 8B                 1125 	.db #0x8B	; 139
   67C2 F9                 1126 	.db #0xF9	; 249
   67C3 9B                 1127 	.db #0x9B	; 155
   67C4 D8                 1128 	.db #0xD8	; 216
   67C5 AB                 1129 	.db #0xAB	; 171
   67C6 BB                 1130 	.db #0xBB	; 187
   67C7 BB                 1131 	.db #0xBB	; 187
   67C8 9A                 1132 	.db #0x9A	; 154
   67C9 4A                 1133 	.db #0x4A	; 74	'J'
   67CA 75                 1134 	.db #0x75	; 117	'u'
   67CB 5A                 1135 	.db #0x5A	; 90	'Z'
   67CC 54                 1136 	.db #0x54	; 84	'T'
   67CD 6A                 1137 	.db #0x6A	; 106	'j'
   67CE 37                 1138 	.db #0x37	; 55	'7'
   67CF 7A                 1139 	.db #0x7A	; 122	'z'
   67D0 16                 1140 	.db #0x16	; 22
   67D1 0A                 1141 	.db #0x0A	; 10
   67D2 F1                 1142 	.db #0xF1	; 241
   67D3 1A                 1143 	.db #0x1A	; 26
   67D4 D0                 1144 	.db #0xD0	; 208
   67D5 2A                 1145 	.db #0x2A	; 42
   67D6 B3                 1146 	.db #0xB3	; 179
   67D7 3A                 1147 	.db #0x3A	; 58
   67D8 92                 1148 	.db #0x92	; 146
   67D9 FD                 1149 	.db #0xFD	; 253
   67DA 2E                 1150 	.db #0x2E	; 46
   67DB ED                 1151 	.db #0xED	; 237
   67DC 0F                 1152 	.db #0x0F	; 15
   67DD DD                 1153 	.db #0xDD	; 221
   67DE 6C                 1154 	.db #0x6C	; 108	'l'
   67DF CD                 1155 	.db #0xCD	; 205
   67E0 4D                 1156 	.db #0x4D	; 77	'M'
   67E1 BD                 1157 	.db #0xBD	; 189
   67E2 AA                 1158 	.db #0xAA	; 170
   67E3 AD                 1159 	.db #0xAD	; 173
   67E4 8B                 1160 	.db #0x8B	; 139
   67E5 9D                 1161 	.db #0x9D	; 157
   67E6 E8                 1162 	.db #0xE8	; 232
   67E7 8D                 1163 	.db #0x8D	; 141
   67E8 C9                 1164 	.db #0xC9	; 201
   67E9 7C                 1165 	.db #0x7C	; 124
   67EA 26                 1166 	.db #0x26	; 38
   67EB 6C                 1167 	.db #0x6C	; 108	'l'
   67EC 07                 1168 	.db #0x07	; 7
   67ED 5C                 1169 	.db #0x5C	; 92
   67EE 64                 1170 	.db #0x64	; 100	'd'
   67EF 4C                 1171 	.db #0x4C	; 76	'L'
   67F0 45                 1172 	.db #0x45	; 69	'E'
   67F1 3C                 1173 	.db #0x3C	; 60
   67F2 A2                 1174 	.db #0xA2	; 162
   67F3 2C                 1175 	.db #0x2C	; 44
   67F4 83                 1176 	.db #0x83	; 131
   67F5 1C                 1177 	.db #0x1C	; 28
   67F6 E0                 1178 	.db #0xE0	; 224
   67F7 0C                 1179 	.db #0x0C	; 12
   67F8 C1                 1180 	.db #0xC1	; 193
   67F9 EF                 1181 	.db #0xEF	; 239
   67FA 1F                 1182 	.db #0x1F	; 31
   67FB FF                 1183 	.db #0xFF	; 255
   67FC 3E                 1184 	.db #0x3E	; 62
   67FD CF                 1185 	.db #0xCF	; 207
   67FE 5D                 1186 	.db #0x5D	; 93
   67FF DF                 1187 	.db #0xDF	; 223
   6800 7C                 1188 	.db #0x7C	; 124
   6801 AF                 1189 	.db #0xAF	; 175
   6802 9B                 1190 	.db #0x9B	; 155
   6803 BF                 1191 	.db #0xBF	; 191
   6804 BA                 1192 	.db #0xBA	; 186
   6805 8F                 1193 	.db #0x8F	; 143
   6806 D9                 1194 	.db #0xD9	; 217
   6807 9F                 1195 	.db #0x9F	; 159
   6808 F8                 1196 	.db #0xF8	; 248
   6809 6E                 1197 	.db #0x6E	; 110	'n'
   680A 17                 1198 	.db #0x17	; 23
   680B 7E                 1199 	.db #0x7E	; 126
   680C 36                 1200 	.db #0x36	; 54	'6'
   680D 4E                 1201 	.db #0x4E	; 78	'N'
   680E 55                 1202 	.db #0x55	; 85	'U'
   680F 5E                 1203 	.db #0x5E	; 94
   6810 74                 1204 	.db #0x74	; 116	't'
   6811 2E                 1205 	.db #0x2E	; 46
   6812 93                 1206 	.db #0x93	; 147
   6813 3E                 1207 	.db #0x3E	; 62
   6814 B2                 1208 	.db #0xB2	; 178
   6815 0E                 1209 	.db #0x0E	; 14
   6816 D1                 1210 	.db #0xD1	; 209
   6817 1E                 1211 	.db #0x1E	; 30
   6818 F0                 1212 	.db #0xF0	; 240
                           1213 	.area XINIT   (CODE)
                           1214 	.area CABS    (ABS,CODE)
