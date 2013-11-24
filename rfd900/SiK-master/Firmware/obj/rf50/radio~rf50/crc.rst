                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:05 2013
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
                            266 	.globl _crc16_PARM_2
                            267 	.globl _crc16
                            268 ;--------------------------------------------------------
                            269 ; special function registers
                            270 ;--------------------------------------------------------
                            271 	.area RSEG    (ABS,DATA)
   0000                     272 	.org 0x0000
                     0080   273 _P0	=	0x0080
                     0081   274 _SP	=	0x0081
                     0082   275 _DPL	=	0x0082
                     0083   276 _DPH	=	0x0083
                     0084   277 _SPI1CFG	=	0x0084
                     0085   278 _SPI1CKR	=	0x0085
                     0085   279 _TOFFL	=	0x0085
                     0086   280 _SPI1DAT	=	0x0086
                     0086   281 _TOFFH	=	0x0086
                     0087   282 _PCON	=	0x0087
                     0088   283 _TCON	=	0x0088
                     0089   284 _TMOD	=	0x0089
                     008A   285 _TL0	=	0x008a
                     008B   286 _TL1	=	0x008b
                     008C   287 _TH0	=	0x008c
                     008D   288 _TH1	=	0x008d
                     008E   289 _CKCON	=	0x008e
                     008F   290 _PSCTL	=	0x008f
                     0090   291 _P1	=	0x0090
                     0091   292 _TMR3CN	=	0x0091
                     0091   293 _CRC0DAT	=	0x0091
                     0092   294 _TMR3RLL	=	0x0092
                     0092   295 _CRC0CN	=	0x0092
                     0093   296 _TMR3RLH	=	0x0093
                     0093   297 _CRC0IN	=	0x0093
                     0094   298 _TMR3L	=	0x0094
                     0095   299 _CRC0FLIP	=	0x0095
                     0095   300 _TMR3H	=	0x0095
                     0096   301 _DC0CF	=	0x0096
                     0096   302 _CRC0AUTO	=	0x0096
                     0097   303 _DC0CN	=	0x0097
                     0097   304 _CRC0CNT	=	0x0097
                     0098   305 _SCON0	=	0x0098
                     0099   306 _SBUF0	=	0x0099
                     009A   307 _CPT1CN	=	0x009a
                     009B   308 _CPT0CN	=	0x009b
                     009C   309 _CPT1MD	=	0x009c
                     009D   310 _CPT0MD	=	0x009d
                     009E   311 _CPT1MX	=	0x009e
                     009F   312 _CPT0MX	=	0x009f
                     00A0   313 _P2	=	0x00a0
                     00A1   314 _SPI0CFG	=	0x00a1
                     00A2   315 _SPI0CKR	=	0x00a2
                     00A3   316 _SPI0DAT	=	0x00a3
                     00A4   317 _P0MDOUT	=	0x00a4
                     00A4   318 _P0DRV	=	0x00a4
                     00A5   319 _P1MDOUT	=	0x00a5
                     00A5   320 _P1DRV	=	0x00a5
                     00A6   321 _P2MDOUT	=	0x00a6
                     00A6   322 _P2DRV	=	0x00a6
                     00A7   323 _SFRPAGE	=	0x00a7
                     00A8   324 _IE	=	0x00a8
                     00A9   325 _CLKSEL	=	0x00a9
                     00AA   326 _EMI0CN	=	0x00aa
                     00AB   327 _EMI0CF	=	0x00ab
                     00AC   328 _RTC0ADR	=	0x00ac
                     00AD   329 _RTC0DAT	=	0x00ad
                     00AE   330 _RTC0KEY	=	0x00ae
                     00AF   331 _EMI0TC	=	0x00af
                     00AF   332 _ONESHOT	=	0x00af
                     00B0   333 _SPI1CN	=	0x00b0
                     00B1   334 _OSCXCN	=	0x00b1
                     00B2   335 _OSCICN	=	0x00b2
                     00B3   336 _OSCICL	=	0x00b3
                     00B5   337 _PMU0CF	=	0x00b5
                     00B6   338 _FLSCL	=	0x00b6
                     00B7   339 _FLKEY	=	0x00b7
                     00B8   340 _IP	=	0x00b8
                     00B9   341 _IREF0CN	=	0x00b9
                     00BA   342 _ADC0AC	=	0x00ba
                     00BA   343 _ADC0PWR	=	0x00ba
                     00BB   344 _ADC0MX	=	0x00bb
                     00BC   345 _ADC0CF	=	0x00bc
                     00BD   346 _ADC0TK	=	0x00bd
                     00BD   347 _ADC0L	=	0x00bd
                     00BE   348 _ADC0H	=	0x00be
                     00BF   349 _P1MASK	=	0x00bf
                     00C0   350 _SMB0CN	=	0x00c0
                     00C1   351 _SMB0CF	=	0x00c1
                     00C2   352 _SMB0DAT	=	0x00c2
                     00C3   353 _ADC0GTL	=	0x00c3
                     00C4   354 _ADC0GTH	=	0x00c4
                     00C5   355 _ADC0LTL	=	0x00c5
                     00C6   356 _ADC0LTH	=	0x00c6
                     00C7   357 _P0MASK	=	0x00c7
                     00C8   358 _TMR2CN	=	0x00c8
                     00C9   359 _REG0CN	=	0x00c9
                     00CA   360 _TMR2RLL	=	0x00ca
                     00CB   361 _TMR2RLH	=	0x00cb
                     00CC   362 _TMR2L	=	0x00cc
                     00CD   363 _TMR2H	=	0x00cd
                     00CE   364 _PCA0CPM5	=	0x00ce
                     00CF   365 _P1MAT	=	0x00cf
                     00D0   366 _PSW	=	0x00d0
                     00D1   367 _REF0CN	=	0x00d1
                     00D2   368 _PCA0CPL5	=	0x00d2
                     00D3   369 _PCA0CPH5	=	0x00d3
                     00D4   370 _P0SKIP	=	0x00d4
                     00D5   371 _P1SKIP	=	0x00d5
                     00D6   372 _P2SKIP	=	0x00d6
                     00D7   373 _P0MAT	=	0x00d7
                     00D8   374 _PCA0CN	=	0x00d8
                     00D9   375 _PCA0MD	=	0x00d9
                     00DA   376 _PCA0CPM0	=	0x00da
                     00DB   377 _PCA0CPM1	=	0x00db
                     00DC   378 _PCA0CPM2	=	0x00dc
                     00DD   379 _PCA0CPM3	=	0x00dd
                     00DE   380 _PCA0CPM4	=	0x00de
                     00DF   381 _PCA0PWM	=	0x00df
                     00E0   382 _ACC	=	0x00e0
                     00E1   383 _XBR0	=	0x00e1
                     00E2   384 _XBR1	=	0x00e2
                     00E3   385 _XBR2	=	0x00e3
                     00E4   386 _IT01CF	=	0x00e4
                     00E5   387 _FLWR	=	0x00e5
                     00E6   388 _EIE1	=	0x00e6
                     00E7   389 _EIE2	=	0x00e7
                     00E8   390 _ADC0CN	=	0x00e8
                     00E9   391 _PCA0CPL1	=	0x00e9
                     00EA   392 _PCA0CPH1	=	0x00ea
                     00EB   393 _PCA0CPL2	=	0x00eb
                     00EC   394 _PCA0CPH2	=	0x00ec
                     00ED   395 _PCA0CPL3	=	0x00ed
                     00EE   396 _PCA0CPH3	=	0x00ee
                     00EF   397 _RSTSRC	=	0x00ef
                     00F0   398 _B	=	0x00f0
                     00F1   399 _P0MDIN	=	0x00f1
                     00F2   400 _P1MDIN	=	0x00f2
                     00F3   401 _P2MDIN	=	0x00f3
                     00F4   402 _SMB0ADR	=	0x00f4
                     00F5   403 _SMB0ADM	=	0x00f5
                     00F6   404 _EIP1	=	0x00f6
                     00F7   405 _EIP2	=	0x00f7
                     00F8   406 _SPI0CN	=	0x00f8
                     00F9   407 _PCA0L	=	0x00f9
                     00FA   408 _PCA0H	=	0x00fa
                     00FB   409 _PCA0CPL0	=	0x00fb
                     00FC   410 _PCA0CPH0	=	0x00fc
                     00FD   411 _PCA0CPL4	=	0x00fd
                     00FE   412 _PCA0CPH4	=	0x00fe
                     00FF   413 _VDM0CN	=	0x00ff
                     8382   414 _DP	=	0x8382
                     8685   415 _TOFF	=	0x8685
                     9392   416 _TMR3RL	=	0x9392
                     9594   417 _TMR3	=	0x9594
                     BEBD   418 _ADC0	=	0xbebd
                     C4C3   419 _ADC0GT	=	0xc4c3
                     C6C5   420 _ADC0LT	=	0xc6c5
                     CBCA   421 _TMR2RL	=	0xcbca
                     CDCC   422 _TMR2	=	0xcdcc
                     D3D2   423 _PCA0CP5	=	0xd3d2
                     EAE9   424 _PCA0CP1	=	0xeae9
                     ECEB   425 _PCA0CP2	=	0xeceb
                     EEED   426 _PCA0CP3	=	0xeeed
                     FAF9   427 _PCA0	=	0xfaf9
                     FCFB   428 _PCA0CP0	=	0xfcfb
                     FEFD   429 _PCA0CP4	=	0xfefd
                            430 ;--------------------------------------------------------
                            431 ; special function bits
                            432 ;--------------------------------------------------------
                            433 	.area RSEG    (ABS,DATA)
   0000                     434 	.org 0x0000
                     008F   435 _TF1	=	0x008f
                     008E   436 _TR1	=	0x008e
                     008D   437 _TF0	=	0x008d
                     008C   438 _TR0	=	0x008c
                     008B   439 _IE1	=	0x008b
                     008A   440 _IT1	=	0x008a
                     0089   441 _IE0	=	0x0089
                     0088   442 _IT0	=	0x0088
                     0096   443 _CRC0SEL	=	0x0096
                     0095   444 _CRC0INIT	=	0x0095
                     0094   445 _CRC0VAL	=	0x0094
                     009F   446 _S0MODE	=	0x009f
                     009D   447 _MCE0	=	0x009d
                     009C   448 _REN0	=	0x009c
                     009B   449 _TB80	=	0x009b
                     009A   450 _RB80	=	0x009a
                     0099   451 _TI0	=	0x0099
                     0098   452 _RI0	=	0x0098
                     00AF   453 _EA	=	0x00af
                     00AE   454 _ESPI0	=	0x00ae
                     00AD   455 _ET2	=	0x00ad
                     00AC   456 _ES0	=	0x00ac
                     00AB   457 _ET1	=	0x00ab
                     00AA   458 _EX1	=	0x00aa
                     00A9   459 _ET0	=	0x00a9
                     00A8   460 _EX0	=	0x00a8
                     00B7   461 _SPIF1	=	0x00b7
                     00B6   462 _WCOL1	=	0x00b6
                     00B5   463 _MODF1	=	0x00b5
                     00B4   464 _RXOVRN1	=	0x00b4
                     00B3   465 _NSS1MD1	=	0x00b3
                     00B2   466 _NSS1MD0	=	0x00b2
                     00B1   467 _TXBMT1	=	0x00b1
                     00B0   468 _SPI1EN	=	0x00b0
                     00BE   469 _PSPI0	=	0x00be
                     00BD   470 _PT2	=	0x00bd
                     00BC   471 _PS0	=	0x00bc
                     00BB   472 _PT1	=	0x00bb
                     00BA   473 _PX1	=	0x00ba
                     00B9   474 _PT0	=	0x00b9
                     00B8   475 _PX0	=	0x00b8
                     00C7   476 _MASTER	=	0x00c7
                     00C6   477 _TXMODE	=	0x00c6
                     00C5   478 _STA	=	0x00c5
                     00C4   479 _STO	=	0x00c4
                     00C3   480 _ACKRQ	=	0x00c3
                     00C2   481 _ARBLOST	=	0x00c2
                     00C1   482 _ACK	=	0x00c1
                     00C0   483 _SI	=	0x00c0
                     00CF   484 _TF2H	=	0x00cf
                     00CE   485 _TF2L	=	0x00ce
                     00CD   486 _TF2LEN	=	0x00cd
                     00CC   487 _TF2CEN	=	0x00cc
                     00CB   488 _T2SPLIT	=	0x00cb
                     00CA   489 _TR2	=	0x00ca
                     00C9   490 _T2RCLK	=	0x00c9
                     00C8   491 _T2XCLK	=	0x00c8
                     00D7   492 _CY	=	0x00d7
                     00D6   493 _AC	=	0x00d6
                     00D5   494 _F0	=	0x00d5
                     00D4   495 _RS1	=	0x00d4
                     00D3   496 _RS0	=	0x00d3
                     00D2   497 _OV	=	0x00d2
                     00D1   498 _F1	=	0x00d1
                     00D0   499 _P	=	0x00d0
                     00DF   500 _CF	=	0x00df
                     00DE   501 _CR	=	0x00de
                     00DD   502 _CCF5	=	0x00dd
                     00DC   503 _CCF4	=	0x00dc
                     00DB   504 _CCF3	=	0x00db
                     00DA   505 _CCF2	=	0x00da
                     00D9   506 _CCF1	=	0x00d9
                     00D8   507 _CCF0	=	0x00d8
                     00EF   508 _AD0EN	=	0x00ef
                     00EE   509 _BURSTEN	=	0x00ee
                     00ED   510 _AD0INT	=	0x00ed
                     00EC   511 _AD0BUSY	=	0x00ec
                     00EB   512 _AD0WINT	=	0x00eb
                     00EA   513 _AD0CM2	=	0x00ea
                     00E9   514 _AD0CM1	=	0x00e9
                     00E8   515 _AD0CM0	=	0x00e8
                     00FF   516 _SPIF0	=	0x00ff
                     00FE   517 _WCOL0	=	0x00fe
                     00FD   518 _MODF0	=	0x00fd
                     00FC   519 _RXOVRN0	=	0x00fc
                     00FB   520 _NSS0MD1	=	0x00fb
                     00FA   521 _NSS0MD0	=	0x00fa
                     00F9   522 _TXBMT0	=	0x00f9
                     00F8   523 _SPI0EN	=	0x00f8
                     00A0   524 _LED_RED	=	0x00a0
                     00A5   525 _LED_GREEN	=	0x00a5
                     0086   526 _BUTTON_ENTER	=	0x0086
                     0095   527 _BUTTON_UP	=	0x0095
                     0096   528 _BUTTON_DOWN	=	0x0096
                     0087   529 _IRQ	=	0x0087
                     0094   530 _NSS1	=	0x0094
                     00A6   531 _SDN	=	0x00a6
                            532 ;--------------------------------------------------------
                            533 ; overlayable register banks
                            534 ;--------------------------------------------------------
                            535 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     536 	.ds 8
                            537 ;--------------------------------------------------------
                            538 ; internal ram data
                            539 ;--------------------------------------------------------
                            540 	.area DSEG    (DATA)
   000C                     541 _crc16_PARM_2:
   000C                     542 	.ds 2
                            543 ;--------------------------------------------------------
                            544 ; overlayable items in internal ram 
                            545 ;--------------------------------------------------------
                            546 	.area	OSEG    (OVR,DATA)
                            547 ;--------------------------------------------------------
                            548 ; indirectly addressable internal ram data
                            549 ;--------------------------------------------------------
                            550 	.area ISEG    (DATA)
                            551 ;--------------------------------------------------------
                            552 ; absolute internal ram data
                            553 ;--------------------------------------------------------
                            554 	.area IABS    (ABS,DATA)
                            555 	.area IABS    (ABS,DATA)
                            556 ;--------------------------------------------------------
                            557 ; bit data
                            558 ;--------------------------------------------------------
                            559 	.area BSEG    (BIT)
                            560 ;--------------------------------------------------------
                            561 ; paged external ram data
                            562 ;--------------------------------------------------------
                            563 	.area PSEG    (PAG,XDATA)
                            564 ;--------------------------------------------------------
                            565 ; external ram data
                            566 ;--------------------------------------------------------
                            567 	.area XSEG    (XDATA)
                            568 ;--------------------------------------------------------
                            569 ; absolute external ram data
                            570 ;--------------------------------------------------------
                            571 	.area XABS    (ABS,XDATA)
                            572 ;--------------------------------------------------------
                            573 ; external initialized ram data
                            574 ;--------------------------------------------------------
                            575 	.area XISEG   (XDATA)
                            576 	.area HOME    (CODE)
                            577 	.area GSINIT0 (CODE)
                            578 	.area GSINIT1 (CODE)
                            579 	.area GSINIT2 (CODE)
                            580 	.area GSINIT3 (CODE)
                            581 	.area GSINIT4 (CODE)
                            582 	.area GSINIT5 (CODE)
                            583 	.area GSINIT  (CODE)
                            584 	.area GSFINAL (CODE)
                            585 	.area CSEG    (CODE)
                            586 ;--------------------------------------------------------
                            587 ; global & static initialisations
                            588 ;--------------------------------------------------------
                            589 	.area HOME    (CODE)
                            590 	.area GSINIT  (CODE)
                            591 	.area GSFINAL (CODE)
                            592 	.area GSINIT  (CODE)
                            593 ;--------------------------------------------------------
                            594 ; Home
                            595 ;--------------------------------------------------------
                            596 	.area HOME    (CODE)
                            597 	.area HOME    (CODE)
                            598 ;--------------------------------------------------------
                            599 ; code
                            600 ;--------------------------------------------------------
                            601 	.area CSEG    (CODE)
                            602 ;------------------------------------------------------------
                            603 ;Allocation info for local variables in function 'crc16'
                            604 ;------------------------------------------------------------
                            605 ;buf                       Allocated with name '_crc16_PARM_2'
                            606 ;n                         Allocated to registers 
                            607 ;k                         Allocated to registers r1 
                            608 ;high                      Allocated to registers r5 
                            609 ;low                       Allocated to registers r6 
                            610 ;b                         Allocated to registers r2 
                            611 ;------------------------------------------------------------
                            612 ;	radio/crc.c:85: crc16(__data uint8_t n, __xdata uint8_t * __data buf)
                            613 ;	-----------------------------------------
                            614 ;	 function crc16
                            615 ;	-----------------------------------------
   0A2A                     616 _crc16:
                     0007   617 	ar7 = 0x07
                     0006   618 	ar6 = 0x06
                     0005   619 	ar5 = 0x05
                     0004   620 	ar4 = 0x04
                     0003   621 	ar3 = 0x03
                     0002   622 	ar2 = 0x02
                     0001   623 	ar1 = 0x01
                     0000   624 	ar0 = 0x00
   0A2A AF 82         [24]  625 	mov	r7,dpl
                            626 ;	radio/crc.c:90: high = low = 0;
   0A2C 7E 00         [12]  627 	mov	r6,#0x00
   0A2E 7D 00         [12]  628 	mov	r5,#0x00
                            629 ;	radio/crc.c:92: while (n--) {
   0A30 AB 0C         [24]  630 	mov	r3,_crc16_PARM_2
   0A32 AC 0D         [24]  631 	mov	r4,(_crc16_PARM_2 + 1)
   0A34                     632 00104$:
   0A34 8F 02         [24]  633 	mov	ar2,r7
   0A36 1F            [12]  634 	dec	r7
   0A37 EA            [12]  635 	mov	a,r2
   0A38 60 3B         [24]  636 	jz	00106$
                            637 ;	radio/crc.c:93: register uint8_t b = *buf++;
   0A3A 8B 82         [24]  638 	mov	dpl,r3
   0A3C 8C 83         [24]  639 	mov	dph,r4
   0A3E E0            [24]  640 	movx	a,@dptr
   0A3F FA            [12]  641 	mov	r2,a
   0A40 A3            [24]  642 	inc	dptr
   0A41 AB 82         [24]  643 	mov	r3,dpl
   0A43 AC 83         [24]  644 	mov	r4,dph
                            645 ;	radio/crc.c:94: k = high << 1;
   0A45 ED            [12]  646 	mov	a,r5
   0A46 2D            [12]  647 	add	a,r5
   0A47 F9            [12]  648 	mov	r1,a
                            649 ;	radio/crc.c:95: if (high & 0x80) {
   0A48 ED            [12]  650 	mov	a,r5
   0A49 30 E7 14      [24]  651 	jnb	acc.7,00102$
                            652 ;	radio/crc.c:96: high = low ^ crc_tab2[k++];
   0A4C 89 00         [24]  653 	mov	ar0,r1
   0A4E 09            [12]  654 	inc	r1
   0A4F E8            [12]  655 	mov	a,r0
   0A50 90 66 6C      [24]  656 	mov	dptr,#_crc_tab2
   0A53 93            [24]  657 	movc	a,@a+dptr
   0A54 6E            [12]  658 	xrl	a,r6
   0A55 FD            [12]  659 	mov	r5,a
                            660 ;	radio/crc.c:97: low = b ^ crc_tab2[k];
   0A56 E9            [12]  661 	mov	a,r1
   0A57 90 66 6C      [24]  662 	mov	dptr,#_crc_tab2
   0A5A 93            [24]  663 	movc	a,@a+dptr
   0A5B F8            [12]  664 	mov	r0,a
   0A5C 6A            [12]  665 	xrl	a,r2
   0A5D FE            [12]  666 	mov	r6,a
   0A5E 80 D4         [24]  667 	sjmp	00104$
   0A60                     668 00102$:
                            669 ;	radio/crc.c:99: high = low ^ crc_tab1[k++];
   0A60 89 00         [24]  670 	mov	ar0,r1
   0A62 09            [12]  671 	inc	r1
   0A63 E8            [12]  672 	mov	a,r0
   0A64 90 65 6C      [24]  673 	mov	dptr,#_crc_tab1
   0A67 93            [24]  674 	movc	a,@a+dptr
   0A68 F8            [12]  675 	mov	r0,a
   0A69 6E            [12]  676 	xrl	a,r6
   0A6A FD            [12]  677 	mov	r5,a
                            678 ;	radio/crc.c:100: low = b ^ crc_tab1[k];
   0A6B E9            [12]  679 	mov	a,r1
   0A6C 90 65 6C      [24]  680 	mov	dptr,#_crc_tab1
   0A6F 93            [24]  681 	movc	a,@a+dptr
   0A70 F9            [12]  682 	mov	r1,a
   0A71 6A            [12]  683 	xrl	a,r2
   0A72 FE            [12]  684 	mov	r6,a
   0A73 80 BF         [24]  685 	sjmp	00104$
   0A75                     686 00106$:
                            687 ;	radio/crc.c:103: return (((uint16_t)high)<<8) | low;
   0A75 8D 07         [24]  688 	mov	ar7,r5
   0A77 E4            [12]  689 	clr	a
   0A78 FD            [12]  690 	mov	r5,a
   0A79 FC            [12]  691 	mov	r4,a
   0A7A EE            [12]  692 	mov	a,r6
   0A7B 42 05         [12]  693 	orl	ar5,a
   0A7D EC            [12]  694 	mov	a,r4
   0A7E 42 07         [12]  695 	orl	ar7,a
   0A80 8D 82         [24]  696 	mov	dpl,r5
   0A82 8F 83         [24]  697 	mov	dph,r7
   0A84 22            [24]  698 	ret
                            699 	.area CSEG    (CODE)
                            700 	.area CONST   (CODE)
   656C                     701 _crc_tab1:
   656C 00                  702 	.db #0x00	; 0
   656D 00                  703 	.db #0x00	; 0
   656E 10                  704 	.db #0x10	; 16
   656F 21                  705 	.db #0x21	; 33
   6570 20                  706 	.db #0x20	; 32
   6571 42                  707 	.db #0x42	; 66	'B'
   6572 30                  708 	.db #0x30	; 48	'0'
   6573 63                  709 	.db #0x63	; 99	'c'
   6574 40                  710 	.db #0x40	; 64
   6575 84                  711 	.db #0x84	; 132
   6576 50                  712 	.db #0x50	; 80	'P'
   6577 A5                  713 	.db #0xA5	; 165
   6578 60                  714 	.db #0x60	; 96
   6579 C6                  715 	.db #0xC6	; 198
   657A 70                  716 	.db #0x70	; 112	'p'
   657B E7                  717 	.db #0xE7	; 231
   657C 81                  718 	.db #0x81	; 129
   657D 08                  719 	.db #0x08	; 8
   657E 91                  720 	.db #0x91	; 145
   657F 29                  721 	.db #0x29	; 41
   6580 A1                  722 	.db #0xA1	; 161
   6581 4A                  723 	.db #0x4A	; 74	'J'
   6582 B1                  724 	.db #0xB1	; 177
   6583 6B                  725 	.db #0x6B	; 107	'k'
   6584 C1                  726 	.db #0xC1	; 193
   6585 8C                  727 	.db #0x8C	; 140
   6586 D1                  728 	.db #0xD1	; 209
   6587 AD                  729 	.db #0xAD	; 173
   6588 E1                  730 	.db #0xE1	; 225
   6589 CE                  731 	.db #0xCE	; 206
   658A F1                  732 	.db #0xF1	; 241
   658B EF                  733 	.db #0xEF	; 239
   658C 12                  734 	.db #0x12	; 18
   658D 31                  735 	.db #0x31	; 49	'1'
   658E 02                  736 	.db #0x02	; 2
   658F 10                  737 	.db #0x10	; 16
   6590 32                  738 	.db #0x32	; 50	'2'
   6591 73                  739 	.db #0x73	; 115	's'
   6592 22                  740 	.db #0x22	; 34
   6593 52                  741 	.db #0x52	; 82	'R'
   6594 52                  742 	.db #0x52	; 82	'R'
   6595 B5                  743 	.db #0xB5	; 181
   6596 42                  744 	.db #0x42	; 66	'B'
   6597 94                  745 	.db #0x94	; 148
   6598 72                  746 	.db #0x72	; 114	'r'
   6599 F7                  747 	.db #0xF7	; 247
   659A 62                  748 	.db #0x62	; 98	'b'
   659B D6                  749 	.db #0xD6	; 214
   659C 93                  750 	.db #0x93	; 147
   659D 39                  751 	.db #0x39	; 57	'9'
   659E 83                  752 	.db #0x83	; 131
   659F 18                  753 	.db #0x18	; 24
   65A0 B3                  754 	.db #0xB3	; 179
   65A1 7B                  755 	.db #0x7B	; 123
   65A2 A3                  756 	.db #0xA3	; 163
   65A3 5A                  757 	.db #0x5A	; 90	'Z'
   65A4 D3                  758 	.db #0xD3	; 211
   65A5 BD                  759 	.db #0xBD	; 189
   65A6 C3                  760 	.db #0xC3	; 195
   65A7 9C                  761 	.db #0x9C	; 156
   65A8 F3                  762 	.db #0xF3	; 243
   65A9 FF                  763 	.db #0xFF	; 255
   65AA E3                  764 	.db #0xE3	; 227
   65AB DE                  765 	.db #0xDE	; 222
   65AC 24                  766 	.db #0x24	; 36
   65AD 62                  767 	.db #0x62	; 98	'b'
   65AE 34                  768 	.db #0x34	; 52	'4'
   65AF 43                  769 	.db #0x43	; 67	'C'
   65B0 04                  770 	.db #0x04	; 4
   65B1 20                  771 	.db #0x20	; 32
   65B2 14                  772 	.db #0x14	; 20
   65B3 01                  773 	.db #0x01	; 1
   65B4 64                  774 	.db #0x64	; 100	'd'
   65B5 E6                  775 	.db #0xE6	; 230
   65B6 74                  776 	.db #0x74	; 116	't'
   65B7 C7                  777 	.db #0xC7	; 199
   65B8 44                  778 	.db #0x44	; 68	'D'
   65B9 A4                  779 	.db #0xA4	; 164
   65BA 54                  780 	.db #0x54	; 84	'T'
   65BB 85                  781 	.db #0x85	; 133
   65BC A5                  782 	.db #0xA5	; 165
   65BD 6A                  783 	.db #0x6A	; 106	'j'
   65BE B5                  784 	.db #0xB5	; 181
   65BF 4B                  785 	.db #0x4B	; 75	'K'
   65C0 85                  786 	.db #0x85	; 133
   65C1 28                  787 	.db #0x28	; 40
   65C2 95                  788 	.db #0x95	; 149
   65C3 09                  789 	.db #0x09	; 9
   65C4 E5                  790 	.db #0xE5	; 229
   65C5 EE                  791 	.db #0xEE	; 238
   65C6 F5                  792 	.db #0xF5	; 245
   65C7 CF                  793 	.db #0xCF	; 207
   65C8 C5                  794 	.db #0xC5	; 197
   65C9 AC                  795 	.db #0xAC	; 172
   65CA D5                  796 	.db #0xD5	; 213
   65CB 8D                  797 	.db #0x8D	; 141
   65CC 36                  798 	.db #0x36	; 54	'6'
   65CD 53                  799 	.db #0x53	; 83	'S'
   65CE 26                  800 	.db #0x26	; 38
   65CF 72                  801 	.db #0x72	; 114	'r'
   65D0 16                  802 	.db #0x16	; 22
   65D1 11                  803 	.db #0x11	; 17
   65D2 06                  804 	.db #0x06	; 6
   65D3 30                  805 	.db #0x30	; 48	'0'
   65D4 76                  806 	.db #0x76	; 118	'v'
   65D5 D7                  807 	.db #0xD7	; 215
   65D6 66                  808 	.db #0x66	; 102	'f'
   65D7 F6                  809 	.db #0xF6	; 246
   65D8 56                  810 	.db #0x56	; 86	'V'
   65D9 95                  811 	.db #0x95	; 149
   65DA 46                  812 	.db #0x46	; 70	'F'
   65DB B4                  813 	.db #0xB4	; 180
   65DC B7                  814 	.db #0xB7	; 183
   65DD 5B                  815 	.db #0x5B	; 91
   65DE A7                  816 	.db #0xA7	; 167
   65DF 7A                  817 	.db #0x7A	; 122	'z'
   65E0 97                  818 	.db #0x97	; 151
   65E1 19                  819 	.db #0x19	; 25
   65E2 87                  820 	.db #0x87	; 135
   65E3 38                  821 	.db #0x38	; 56	'8'
   65E4 F7                  822 	.db #0xF7	; 247
   65E5 DF                  823 	.db #0xDF	; 223
   65E6 E7                  824 	.db #0xE7	; 231
   65E7 FE                  825 	.db #0xFE	; 254
   65E8 D7                  826 	.db #0xD7	; 215
   65E9 9D                  827 	.db #0x9D	; 157
   65EA C7                  828 	.db #0xC7	; 199
   65EB BC                  829 	.db #0xBC	; 188
   65EC 48                  830 	.db #0x48	; 72	'H'
   65ED C4                  831 	.db #0xC4	; 196
   65EE 58                  832 	.db #0x58	; 88	'X'
   65EF E5                  833 	.db #0xE5	; 229
   65F0 68                  834 	.db #0x68	; 104	'h'
   65F1 86                  835 	.db #0x86	; 134
   65F2 78                  836 	.db #0x78	; 120	'x'
   65F3 A7                  837 	.db #0xA7	; 167
   65F4 08                  838 	.db #0x08	; 8
   65F5 40                  839 	.db #0x40	; 64
   65F6 18                  840 	.db #0x18	; 24
   65F7 61                  841 	.db #0x61	; 97	'a'
   65F8 28                  842 	.db #0x28	; 40
   65F9 02                  843 	.db #0x02	; 2
   65FA 38                  844 	.db #0x38	; 56	'8'
   65FB 23                  845 	.db #0x23	; 35
   65FC C9                  846 	.db #0xC9	; 201
   65FD CC                  847 	.db #0xCC	; 204
   65FE D9                  848 	.db #0xD9	; 217
   65FF ED                  849 	.db #0xED	; 237
   6600 E9                  850 	.db #0xE9	; 233
   6601 8E                  851 	.db #0x8E	; 142
   6602 F9                  852 	.db #0xF9	; 249
   6603 AF                  853 	.db #0xAF	; 175
   6604 89                  854 	.db #0x89	; 137
   6605 48                  855 	.db #0x48	; 72	'H'
   6606 99                  856 	.db #0x99	; 153
   6607 69                  857 	.db #0x69	; 105	'i'
   6608 A9                  858 	.db #0xA9	; 169
   6609 0A                  859 	.db #0x0A	; 10
   660A B9                  860 	.db #0xB9	; 185
   660B 2B                  861 	.db #0x2B	; 43
   660C 5A                  862 	.db #0x5A	; 90	'Z'
   660D F5                  863 	.db #0xF5	; 245
   660E 4A                  864 	.db #0x4A	; 74	'J'
   660F D4                  865 	.db #0xD4	; 212
   6610 7A                  866 	.db #0x7A	; 122	'z'
   6611 B7                  867 	.db #0xB7	; 183
   6612 6A                  868 	.db #0x6A	; 106	'j'
   6613 96                  869 	.db #0x96	; 150
   6614 1A                  870 	.db #0x1A	; 26
   6615 71                  871 	.db #0x71	; 113	'q'
   6616 0A                  872 	.db #0x0A	; 10
   6617 50                  873 	.db #0x50	; 80	'P'
   6618 3A                  874 	.db #0x3A	; 58
   6619 33                  875 	.db #0x33	; 51	'3'
   661A 2A                  876 	.db #0x2A	; 42
   661B 12                  877 	.db #0x12	; 18
   661C DB                  878 	.db #0xDB	; 219
   661D FD                  879 	.db #0xFD	; 253
   661E CB                  880 	.db #0xCB	; 203
   661F DC                  881 	.db #0xDC	; 220
   6620 FB                  882 	.db #0xFB	; 251
   6621 BF                  883 	.db #0xBF	; 191
   6622 EB                  884 	.db #0xEB	; 235
   6623 9E                  885 	.db #0x9E	; 158
   6624 9B                  886 	.db #0x9B	; 155
   6625 79                  887 	.db #0x79	; 121	'y'
   6626 8B                  888 	.db #0x8B	; 139
   6627 58                  889 	.db #0x58	; 88	'X'
   6628 BB                  890 	.db #0xBB	; 187
   6629 3B                  891 	.db #0x3B	; 59
   662A AB                  892 	.db #0xAB	; 171
   662B 1A                  893 	.db #0x1A	; 26
   662C 6C                  894 	.db #0x6C	; 108	'l'
   662D A6                  895 	.db #0xA6	; 166
   662E 7C                  896 	.db #0x7C	; 124
   662F 87                  897 	.db #0x87	; 135
   6630 4C                  898 	.db #0x4C	; 76	'L'
   6631 E4                  899 	.db #0xE4	; 228
   6632 5C                  900 	.db #0x5C	; 92
   6633 C5                  901 	.db #0xC5	; 197
   6634 2C                  902 	.db #0x2C	; 44
   6635 22                  903 	.db #0x22	; 34
   6636 3C                  904 	.db #0x3C	; 60
   6637 03                  905 	.db #0x03	; 3
   6638 0C                  906 	.db #0x0C	; 12
   6639 60                  907 	.db #0x60	; 96
   663A 1C                  908 	.db #0x1C	; 28
   663B 41                  909 	.db #0x41	; 65	'A'
   663C ED                  910 	.db #0xED	; 237
   663D AE                  911 	.db #0xAE	; 174
   663E FD                  912 	.db #0xFD	; 253
   663F 8F                  913 	.db #0x8F	; 143
   6640 CD                  914 	.db #0xCD	; 205
   6641 EC                  915 	.db #0xEC	; 236
   6642 DD                  916 	.db #0xDD	; 221
   6643 CD                  917 	.db #0xCD	; 205
   6644 AD                  918 	.db #0xAD	; 173
   6645 2A                  919 	.db #0x2A	; 42
   6646 BD                  920 	.db #0xBD	; 189
   6647 0B                  921 	.db #0x0B	; 11
   6648 8D                  922 	.db #0x8D	; 141
   6649 68                  923 	.db #0x68	; 104	'h'
   664A 9D                  924 	.db #0x9D	; 157
   664B 49                  925 	.db #0x49	; 73	'I'
   664C 7E                  926 	.db #0x7E	; 126
   664D 97                  927 	.db #0x97	; 151
   664E 6E                  928 	.db #0x6E	; 110	'n'
   664F B6                  929 	.db #0xB6	; 182
   6650 5E                  930 	.db #0x5E	; 94
   6651 D5                  931 	.db #0xD5	; 213
   6652 4E                  932 	.db #0x4E	; 78	'N'
   6653 F4                  933 	.db #0xF4	; 244
   6654 3E                  934 	.db #0x3E	; 62
   6655 13                  935 	.db #0x13	; 19
   6656 2E                  936 	.db #0x2E	; 46
   6657 32                  937 	.db #0x32	; 50	'2'
   6658 1E                  938 	.db #0x1E	; 30
   6659 51                  939 	.db #0x51	; 81	'Q'
   665A 0E                  940 	.db #0x0E	; 14
   665B 70                  941 	.db #0x70	; 112	'p'
   665C FF                  942 	.db #0xFF	; 255
   665D 9F                  943 	.db #0x9F	; 159
   665E EF                  944 	.db #0xEF	; 239
   665F BE                  945 	.db #0xBE	; 190
   6660 DF                  946 	.db #0xDF	; 223
   6661 DD                  947 	.db #0xDD	; 221
   6662 CF                  948 	.db #0xCF	; 207
   6663 FC                  949 	.db #0xFC	; 252
   6664 BF                  950 	.db #0xBF	; 191
   6665 1B                  951 	.db #0x1B	; 27
   6666 AF                  952 	.db #0xAF	; 175
   6667 3A                  953 	.db #0x3A	; 58
   6668 9F                  954 	.db #0x9F	; 159
   6669 59                  955 	.db #0x59	; 89	'Y'
   666A 8F                  956 	.db #0x8F	; 143
   666B 78                  957 	.db #0x78	; 120	'x'
   666C                     958 _crc_tab2:
   666C 91                  959 	.db #0x91	; 145
   666D 88                  960 	.db #0x88	; 136
   666E 81                  961 	.db #0x81	; 129
   666F A9                  962 	.db #0xA9	; 169
   6670 B1                  963 	.db #0xB1	; 177
   6671 CA                  964 	.db #0xCA	; 202
   6672 A1                  965 	.db #0xA1	; 161
   6673 EB                  966 	.db #0xEB	; 235
   6674 D1                  967 	.db #0xD1	; 209
   6675 0C                  968 	.db #0x0C	; 12
   6676 C1                  969 	.db #0xC1	; 193
   6677 2D                  970 	.db #0x2D	; 45
   6678 F1                  971 	.db #0xF1	; 241
   6679 4E                  972 	.db #0x4E	; 78	'N'
   667A E1                  973 	.db #0xE1	; 225
   667B 6F                  974 	.db #0x6F	; 111	'o'
   667C 10                  975 	.db #0x10	; 16
   667D 80                  976 	.db #0x80	; 128
   667E 00                  977 	.db #0x00	; 0
   667F A1                  978 	.db #0xA1	; 161
   6680 30                  979 	.db #0x30	; 48	'0'
   6681 C2                  980 	.db #0xC2	; 194
   6682 20                  981 	.db #0x20	; 32
   6683 E3                  982 	.db #0xE3	; 227
   6684 50                  983 	.db #0x50	; 80	'P'
   6685 04                  984 	.db #0x04	; 4
   6686 40                  985 	.db #0x40	; 64
   6687 25                  986 	.db #0x25	; 37
   6688 70                  987 	.db #0x70	; 112	'p'
   6689 46                  988 	.db #0x46	; 70	'F'
   668A 60                  989 	.db #0x60	; 96
   668B 67                  990 	.db #0x67	; 103	'g'
   668C 83                  991 	.db #0x83	; 131
   668D B9                  992 	.db #0xB9	; 185
   668E 93                  993 	.db #0x93	; 147
   668F 98                  994 	.db #0x98	; 152
   6690 A3                  995 	.db #0xA3	; 163
   6691 FB                  996 	.db #0xFB	; 251
   6692 B3                  997 	.db #0xB3	; 179
   6693 DA                  998 	.db #0xDA	; 218
   6694 C3                  999 	.db #0xC3	; 195
   6695 3D                 1000 	.db #0x3D	; 61
   6696 D3                 1001 	.db #0xD3	; 211
   6697 1C                 1002 	.db #0x1C	; 28
   6698 E3                 1003 	.db #0xE3	; 227
   6699 7F                 1004 	.db #0x7F	; 127
   669A F3                 1005 	.db #0xF3	; 243
   669B 5E                 1006 	.db #0x5E	; 94
   669C 02                 1007 	.db #0x02	; 2
   669D B1                 1008 	.db #0xB1	; 177
   669E 12                 1009 	.db #0x12	; 18
   669F 90                 1010 	.db #0x90	; 144
   66A0 22                 1011 	.db #0x22	; 34
   66A1 F3                 1012 	.db #0xF3	; 243
   66A2 32                 1013 	.db #0x32	; 50	'2'
   66A3 D2                 1014 	.db #0xD2	; 210
   66A4 42                 1015 	.db #0x42	; 66	'B'
   66A5 35                 1016 	.db #0x35	; 53	'5'
   66A6 52                 1017 	.db #0x52	; 82	'R'
   66A7 14                 1018 	.db #0x14	; 20
   66A8 62                 1019 	.db #0x62	; 98	'b'
   66A9 77                 1020 	.db #0x77	; 119	'w'
   66AA 72                 1021 	.db #0x72	; 114	'r'
   66AB 56                 1022 	.db #0x56	; 86	'V'
   66AC B5                 1023 	.db #0xB5	; 181
   66AD EA                 1024 	.db #0xEA	; 234
   66AE A5                 1025 	.db #0xA5	; 165
   66AF CB                 1026 	.db #0xCB	; 203
   66B0 95                 1027 	.db #0x95	; 149
   66B1 A8                 1028 	.db #0xA8	; 168
   66B2 85                 1029 	.db #0x85	; 133
   66B3 89                 1030 	.db #0x89	; 137
   66B4 F5                 1031 	.db #0xF5	; 245
   66B5 6E                 1032 	.db #0x6E	; 110	'n'
   66B6 E5                 1033 	.db #0xE5	; 229
   66B7 4F                 1034 	.db #0x4F	; 79	'O'
   66B8 D5                 1035 	.db #0xD5	; 213
   66B9 2C                 1036 	.db #0x2C	; 44
   66BA C5                 1037 	.db #0xC5	; 197
   66BB 0D                 1038 	.db #0x0D	; 13
   66BC 34                 1039 	.db #0x34	; 52	'4'
   66BD E2                 1040 	.db #0xE2	; 226
   66BE 24                 1041 	.db #0x24	; 36
   66BF C3                 1042 	.db #0xC3	; 195
   66C0 14                 1043 	.db #0x14	; 20
   66C1 A0                 1044 	.db #0xA0	; 160
   66C2 04                 1045 	.db #0x04	; 4
   66C3 81                 1046 	.db #0x81	; 129
   66C4 74                 1047 	.db #0x74	; 116	't'
   66C5 66                 1048 	.db #0x66	; 102	'f'
   66C6 64                 1049 	.db #0x64	; 100	'd'
   66C7 47                 1050 	.db #0x47	; 71	'G'
   66C8 54                 1051 	.db #0x54	; 84	'T'
   66C9 24                 1052 	.db #0x24	; 36
   66CA 44                 1053 	.db #0x44	; 68	'D'
   66CB 05                 1054 	.db #0x05	; 5
   66CC A7                 1055 	.db #0xA7	; 167
   66CD DB                 1056 	.db #0xDB	; 219
   66CE B7                 1057 	.db #0xB7	; 183
   66CF FA                 1058 	.db #0xFA	; 250
   66D0 87                 1059 	.db #0x87	; 135
   66D1 99                 1060 	.db #0x99	; 153
   66D2 97                 1061 	.db #0x97	; 151
   66D3 B8                 1062 	.db #0xB8	; 184
   66D4 E7                 1063 	.db #0xE7	; 231
   66D5 5F                 1064 	.db #0x5F	; 95
   66D6 F7                 1065 	.db #0xF7	; 247
   66D7 7E                 1066 	.db #0x7E	; 126
   66D8 C7                 1067 	.db #0xC7	; 199
   66D9 1D                 1068 	.db #0x1D	; 29
   66DA D7                 1069 	.db #0xD7	; 215
   66DB 3C                 1070 	.db #0x3C	; 60
   66DC 26                 1071 	.db #0x26	; 38
   66DD D3                 1072 	.db #0xD3	; 211
   66DE 36                 1073 	.db #0x36	; 54	'6'
   66DF F2                 1074 	.db #0xF2	; 242
   66E0 06                 1075 	.db #0x06	; 6
   66E1 91                 1076 	.db #0x91	; 145
   66E2 16                 1077 	.db #0x16	; 22
   66E3 B0                 1078 	.db #0xB0	; 176
   66E4 66                 1079 	.db #0x66	; 102	'f'
   66E5 57                 1080 	.db #0x57	; 87	'W'
   66E6 76                 1081 	.db #0x76	; 118	'v'
   66E7 76                 1082 	.db #0x76	; 118	'v'
   66E8 46                 1083 	.db #0x46	; 70	'F'
   66E9 15                 1084 	.db #0x15	; 21
   66EA 56                 1085 	.db #0x56	; 86	'V'
   66EB 34                 1086 	.db #0x34	; 52	'4'
   66EC D9                 1087 	.db #0xD9	; 217
   66ED 4C                 1088 	.db #0x4C	; 76	'L'
   66EE C9                 1089 	.db #0xC9	; 201
   66EF 6D                 1090 	.db #0x6D	; 109	'm'
   66F0 F9                 1091 	.db #0xF9	; 249
   66F1 0E                 1092 	.db #0x0E	; 14
   66F2 E9                 1093 	.db #0xE9	; 233
   66F3 2F                 1094 	.db #0x2F	; 47
   66F4 99                 1095 	.db #0x99	; 153
   66F5 C8                 1096 	.db #0xC8	; 200
   66F6 89                 1097 	.db #0x89	; 137
   66F7 E9                 1098 	.db #0xE9	; 233
   66F8 B9                 1099 	.db #0xB9	; 185
   66F9 8A                 1100 	.db #0x8A	; 138
   66FA A9                 1101 	.db #0xA9	; 169
   66FB AB                 1102 	.db #0xAB	; 171
   66FC 58                 1103 	.db #0x58	; 88	'X'
   66FD 44                 1104 	.db #0x44	; 68	'D'
   66FE 48                 1105 	.db #0x48	; 72	'H'
   66FF 65                 1106 	.db #0x65	; 101	'e'
   6700 78                 1107 	.db #0x78	; 120	'x'
   6701 06                 1108 	.db #0x06	; 6
   6702 68                 1109 	.db #0x68	; 104	'h'
   6703 27                 1110 	.db #0x27	; 39
   6704 18                 1111 	.db #0x18	; 24
   6705 C0                 1112 	.db #0xC0	; 192
   6706 08                 1113 	.db #0x08	; 8
   6707 E1                 1114 	.db #0xE1	; 225
   6708 38                 1115 	.db #0x38	; 56	'8'
   6709 82                 1116 	.db #0x82	; 130
   670A 28                 1117 	.db #0x28	; 40
   670B A3                 1118 	.db #0xA3	; 163
   670C CB                 1119 	.db #0xCB	; 203
   670D 7D                 1120 	.db #0x7D	; 125
   670E DB                 1121 	.db #0xDB	; 219
   670F 5C                 1122 	.db #0x5C	; 92
   6710 EB                 1123 	.db #0xEB	; 235
   6711 3F                 1124 	.db #0x3F	; 63
   6712 FB                 1125 	.db #0xFB	; 251
   6713 1E                 1126 	.db #0x1E	; 30
   6714 8B                 1127 	.db #0x8B	; 139
   6715 F9                 1128 	.db #0xF9	; 249
   6716 9B                 1129 	.db #0x9B	; 155
   6717 D8                 1130 	.db #0xD8	; 216
   6718 AB                 1131 	.db #0xAB	; 171
   6719 BB                 1132 	.db #0xBB	; 187
   671A BB                 1133 	.db #0xBB	; 187
   671B 9A                 1134 	.db #0x9A	; 154
   671C 4A                 1135 	.db #0x4A	; 74	'J'
   671D 75                 1136 	.db #0x75	; 117	'u'
   671E 5A                 1137 	.db #0x5A	; 90	'Z'
   671F 54                 1138 	.db #0x54	; 84	'T'
   6720 6A                 1139 	.db #0x6A	; 106	'j'
   6721 37                 1140 	.db #0x37	; 55	'7'
   6722 7A                 1141 	.db #0x7A	; 122	'z'
   6723 16                 1142 	.db #0x16	; 22
   6724 0A                 1143 	.db #0x0A	; 10
   6725 F1                 1144 	.db #0xF1	; 241
   6726 1A                 1145 	.db #0x1A	; 26
   6727 D0                 1146 	.db #0xD0	; 208
   6728 2A                 1147 	.db #0x2A	; 42
   6729 B3                 1148 	.db #0xB3	; 179
   672A 3A                 1149 	.db #0x3A	; 58
   672B 92                 1150 	.db #0x92	; 146
   672C FD                 1151 	.db #0xFD	; 253
   672D 2E                 1152 	.db #0x2E	; 46
   672E ED                 1153 	.db #0xED	; 237
   672F 0F                 1154 	.db #0x0F	; 15
   6730 DD                 1155 	.db #0xDD	; 221
   6731 6C                 1156 	.db #0x6C	; 108	'l'
   6732 CD                 1157 	.db #0xCD	; 205
   6733 4D                 1158 	.db #0x4D	; 77	'M'
   6734 BD                 1159 	.db #0xBD	; 189
   6735 AA                 1160 	.db #0xAA	; 170
   6736 AD                 1161 	.db #0xAD	; 173
   6737 8B                 1162 	.db #0x8B	; 139
   6738 9D                 1163 	.db #0x9D	; 157
   6739 E8                 1164 	.db #0xE8	; 232
   673A 8D                 1165 	.db #0x8D	; 141
   673B C9                 1166 	.db #0xC9	; 201
   673C 7C                 1167 	.db #0x7C	; 124
   673D 26                 1168 	.db #0x26	; 38
   673E 6C                 1169 	.db #0x6C	; 108	'l'
   673F 07                 1170 	.db #0x07	; 7
   6740 5C                 1171 	.db #0x5C	; 92
   6741 64                 1172 	.db #0x64	; 100	'd'
   6742 4C                 1173 	.db #0x4C	; 76	'L'
   6743 45                 1174 	.db #0x45	; 69	'E'
   6744 3C                 1175 	.db #0x3C	; 60
   6745 A2                 1176 	.db #0xA2	; 162
   6746 2C                 1177 	.db #0x2C	; 44
   6747 83                 1178 	.db #0x83	; 131
   6748 1C                 1179 	.db #0x1C	; 28
   6749 E0                 1180 	.db #0xE0	; 224
   674A 0C                 1181 	.db #0x0C	; 12
   674B C1                 1182 	.db #0xC1	; 193
   674C EF                 1183 	.db #0xEF	; 239
   674D 1F                 1184 	.db #0x1F	; 31
   674E FF                 1185 	.db #0xFF	; 255
   674F 3E                 1186 	.db #0x3E	; 62
   6750 CF                 1187 	.db #0xCF	; 207
   6751 5D                 1188 	.db #0x5D	; 93
   6752 DF                 1189 	.db #0xDF	; 223
   6753 7C                 1190 	.db #0x7C	; 124
   6754 AF                 1191 	.db #0xAF	; 175
   6755 9B                 1192 	.db #0x9B	; 155
   6756 BF                 1193 	.db #0xBF	; 191
   6757 BA                 1194 	.db #0xBA	; 186
   6758 8F                 1195 	.db #0x8F	; 143
   6759 D9                 1196 	.db #0xD9	; 217
   675A 9F                 1197 	.db #0x9F	; 159
   675B F8                 1198 	.db #0xF8	; 248
   675C 6E                 1199 	.db #0x6E	; 110	'n'
   675D 17                 1200 	.db #0x17	; 23
   675E 7E                 1201 	.db #0x7E	; 126
   675F 36                 1202 	.db #0x36	; 54	'6'
   6760 4E                 1203 	.db #0x4E	; 78	'N'
   6761 55                 1204 	.db #0x55	; 85	'U'
   6762 5E                 1205 	.db #0x5E	; 94
   6763 74                 1206 	.db #0x74	; 116	't'
   6764 2E                 1207 	.db #0x2E	; 46
   6765 93                 1208 	.db #0x93	; 147
   6766 3E                 1209 	.db #0x3E	; 62
   6767 B2                 1210 	.db #0xB2	; 178
   6768 0E                 1211 	.db #0x0E	; 14
   6769 D1                 1212 	.db #0xD1	; 209
   676A 1E                 1213 	.db #0x1E	; 30
   676B F0                 1214 	.db #0xF0	; 240
                           1215 	.area XINIT   (CODE)
                           1216 	.area CABS    (ABS,CODE)
