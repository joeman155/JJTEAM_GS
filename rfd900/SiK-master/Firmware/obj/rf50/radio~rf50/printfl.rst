                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:06 2013
                              5 ;--------------------------------------------------------
                              6 	.module printfl
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl __ltoa
                             13 	.globl __ultoa
                             14 	.globl _putchar
                             15 	.globl _SDN
                             16 	.globl _NSS1
                             17 	.globl _IRQ
                             18 	.globl _BUTTON_DOWN
                             19 	.globl _BUTTON_UP
                             20 	.globl _BUTTON_ENTER
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
                            269 	.globl _printf_start_capture_PARM_2
                            270 	.globl _printf_start_capture
                            271 	.globl _printf_end_capture
                            272 	.globl _vprintfl
                            273 	.globl _printfl
                            274 ;--------------------------------------------------------
                            275 ; special function registers
                            276 ;--------------------------------------------------------
                            277 	.area RSEG    (ABS,DATA)
   0000                     278 	.org 0x0000
                     0080   279 _P0	=	0x0080
                     0081   280 _SP	=	0x0081
                     0082   281 _DPL	=	0x0082
                     0083   282 _DPH	=	0x0083
                     0084   283 _SPI1CFG	=	0x0084
                     0085   284 _SPI1CKR	=	0x0085
                     0085   285 _TOFFL	=	0x0085
                     0086   286 _SPI1DAT	=	0x0086
                     0086   287 _TOFFH	=	0x0086
                     0087   288 _PCON	=	0x0087
                     0088   289 _TCON	=	0x0088
                     0089   290 _TMOD	=	0x0089
                     008A   291 _TL0	=	0x008a
                     008B   292 _TL1	=	0x008b
                     008C   293 _TH0	=	0x008c
                     008D   294 _TH1	=	0x008d
                     008E   295 _CKCON	=	0x008e
                     008F   296 _PSCTL	=	0x008f
                     0090   297 _P1	=	0x0090
                     0091   298 _TMR3CN	=	0x0091
                     0091   299 _CRC0DAT	=	0x0091
                     0092   300 _TMR3RLL	=	0x0092
                     0092   301 _CRC0CN	=	0x0092
                     0093   302 _TMR3RLH	=	0x0093
                     0093   303 _CRC0IN	=	0x0093
                     0094   304 _TMR3L	=	0x0094
                     0095   305 _CRC0FLIP	=	0x0095
                     0095   306 _TMR3H	=	0x0095
                     0096   307 _DC0CF	=	0x0096
                     0096   308 _CRC0AUTO	=	0x0096
                     0097   309 _DC0CN	=	0x0097
                     0097   310 _CRC0CNT	=	0x0097
                     0098   311 _SCON0	=	0x0098
                     0099   312 _SBUF0	=	0x0099
                     009A   313 _CPT1CN	=	0x009a
                     009B   314 _CPT0CN	=	0x009b
                     009C   315 _CPT1MD	=	0x009c
                     009D   316 _CPT0MD	=	0x009d
                     009E   317 _CPT1MX	=	0x009e
                     009F   318 _CPT0MX	=	0x009f
                     00A0   319 _P2	=	0x00a0
                     00A1   320 _SPI0CFG	=	0x00a1
                     00A2   321 _SPI0CKR	=	0x00a2
                     00A3   322 _SPI0DAT	=	0x00a3
                     00A4   323 _P0MDOUT	=	0x00a4
                     00A4   324 _P0DRV	=	0x00a4
                     00A5   325 _P1MDOUT	=	0x00a5
                     00A5   326 _P1DRV	=	0x00a5
                     00A6   327 _P2MDOUT	=	0x00a6
                     00A6   328 _P2DRV	=	0x00a6
                     00A7   329 _SFRPAGE	=	0x00a7
                     00A8   330 _IE	=	0x00a8
                     00A9   331 _CLKSEL	=	0x00a9
                     00AA   332 _EMI0CN	=	0x00aa
                     00AB   333 _EMI0CF	=	0x00ab
                     00AC   334 _RTC0ADR	=	0x00ac
                     00AD   335 _RTC0DAT	=	0x00ad
                     00AE   336 _RTC0KEY	=	0x00ae
                     00AF   337 _EMI0TC	=	0x00af
                     00AF   338 _ONESHOT	=	0x00af
                     00B0   339 _SPI1CN	=	0x00b0
                     00B1   340 _OSCXCN	=	0x00b1
                     00B2   341 _OSCICN	=	0x00b2
                     00B3   342 _OSCICL	=	0x00b3
                     00B5   343 _PMU0CF	=	0x00b5
                     00B6   344 _FLSCL	=	0x00b6
                     00B7   345 _FLKEY	=	0x00b7
                     00B8   346 _IP	=	0x00b8
                     00B9   347 _IREF0CN	=	0x00b9
                     00BA   348 _ADC0AC	=	0x00ba
                     00BA   349 _ADC0PWR	=	0x00ba
                     00BB   350 _ADC0MX	=	0x00bb
                     00BC   351 _ADC0CF	=	0x00bc
                     00BD   352 _ADC0TK	=	0x00bd
                     00BD   353 _ADC0L	=	0x00bd
                     00BE   354 _ADC0H	=	0x00be
                     00BF   355 _P1MASK	=	0x00bf
                     00C0   356 _SMB0CN	=	0x00c0
                     00C1   357 _SMB0CF	=	0x00c1
                     00C2   358 _SMB0DAT	=	0x00c2
                     00C3   359 _ADC0GTL	=	0x00c3
                     00C4   360 _ADC0GTH	=	0x00c4
                     00C5   361 _ADC0LTL	=	0x00c5
                     00C6   362 _ADC0LTH	=	0x00c6
                     00C7   363 _P0MASK	=	0x00c7
                     00C8   364 _TMR2CN	=	0x00c8
                     00C9   365 _REG0CN	=	0x00c9
                     00CA   366 _TMR2RLL	=	0x00ca
                     00CB   367 _TMR2RLH	=	0x00cb
                     00CC   368 _TMR2L	=	0x00cc
                     00CD   369 _TMR2H	=	0x00cd
                     00CE   370 _PCA0CPM5	=	0x00ce
                     00CF   371 _P1MAT	=	0x00cf
                     00D0   372 _PSW	=	0x00d0
                     00D1   373 _REF0CN	=	0x00d1
                     00D2   374 _PCA0CPL5	=	0x00d2
                     00D3   375 _PCA0CPH5	=	0x00d3
                     00D4   376 _P0SKIP	=	0x00d4
                     00D5   377 _P1SKIP	=	0x00d5
                     00D6   378 _P2SKIP	=	0x00d6
                     00D7   379 _P0MAT	=	0x00d7
                     00D8   380 _PCA0CN	=	0x00d8
                     00D9   381 _PCA0MD	=	0x00d9
                     00DA   382 _PCA0CPM0	=	0x00da
                     00DB   383 _PCA0CPM1	=	0x00db
                     00DC   384 _PCA0CPM2	=	0x00dc
                     00DD   385 _PCA0CPM3	=	0x00dd
                     00DE   386 _PCA0CPM4	=	0x00de
                     00DF   387 _PCA0PWM	=	0x00df
                     00E0   388 _ACC	=	0x00e0
                     00E1   389 _XBR0	=	0x00e1
                     00E2   390 _XBR1	=	0x00e2
                     00E3   391 _XBR2	=	0x00e3
                     00E4   392 _IT01CF	=	0x00e4
                     00E5   393 _FLWR	=	0x00e5
                     00E6   394 _EIE1	=	0x00e6
                     00E7   395 _EIE2	=	0x00e7
                     00E8   396 _ADC0CN	=	0x00e8
                     00E9   397 _PCA0CPL1	=	0x00e9
                     00EA   398 _PCA0CPH1	=	0x00ea
                     00EB   399 _PCA0CPL2	=	0x00eb
                     00EC   400 _PCA0CPH2	=	0x00ec
                     00ED   401 _PCA0CPL3	=	0x00ed
                     00EE   402 _PCA0CPH3	=	0x00ee
                     00EF   403 _RSTSRC	=	0x00ef
                     00F0   404 _B	=	0x00f0
                     00F1   405 _P0MDIN	=	0x00f1
                     00F2   406 _P1MDIN	=	0x00f2
                     00F3   407 _P2MDIN	=	0x00f3
                     00F4   408 _SMB0ADR	=	0x00f4
                     00F5   409 _SMB0ADM	=	0x00f5
                     00F6   410 _EIP1	=	0x00f6
                     00F7   411 _EIP2	=	0x00f7
                     00F8   412 _SPI0CN	=	0x00f8
                     00F9   413 _PCA0L	=	0x00f9
                     00FA   414 _PCA0H	=	0x00fa
                     00FB   415 _PCA0CPL0	=	0x00fb
                     00FC   416 _PCA0CPH0	=	0x00fc
                     00FD   417 _PCA0CPL4	=	0x00fd
                     00FE   418 _PCA0CPH4	=	0x00fe
                     00FF   419 _VDM0CN	=	0x00ff
                     8382   420 _DP	=	0x8382
                     8685   421 _TOFF	=	0x8685
                     9392   422 _TMR3RL	=	0x9392
                     9594   423 _TMR3	=	0x9594
                     BEBD   424 _ADC0	=	0xbebd
                     C4C3   425 _ADC0GT	=	0xc4c3
                     C6C5   426 _ADC0LT	=	0xc6c5
                     CBCA   427 _TMR2RL	=	0xcbca
                     CDCC   428 _TMR2	=	0xcdcc
                     D3D2   429 _PCA0CP5	=	0xd3d2
                     EAE9   430 _PCA0CP1	=	0xeae9
                     ECEB   431 _PCA0CP2	=	0xeceb
                     EEED   432 _PCA0CP3	=	0xeeed
                     FAF9   433 _PCA0	=	0xfaf9
                     FCFB   434 _PCA0CP0	=	0xfcfb
                     FEFD   435 _PCA0CP4	=	0xfefd
                            436 ;--------------------------------------------------------
                            437 ; special function bits
                            438 ;--------------------------------------------------------
                            439 	.area RSEG    (ABS,DATA)
   0000                     440 	.org 0x0000
                     008F   441 _TF1	=	0x008f
                     008E   442 _TR1	=	0x008e
                     008D   443 _TF0	=	0x008d
                     008C   444 _TR0	=	0x008c
                     008B   445 _IE1	=	0x008b
                     008A   446 _IT1	=	0x008a
                     0089   447 _IE0	=	0x0089
                     0088   448 _IT0	=	0x0088
                     0096   449 _CRC0SEL	=	0x0096
                     0095   450 _CRC0INIT	=	0x0095
                     0094   451 _CRC0VAL	=	0x0094
                     009F   452 _S0MODE	=	0x009f
                     009D   453 _MCE0	=	0x009d
                     009C   454 _REN0	=	0x009c
                     009B   455 _TB80	=	0x009b
                     009A   456 _RB80	=	0x009a
                     0099   457 _TI0	=	0x0099
                     0098   458 _RI0	=	0x0098
                     00AF   459 _EA	=	0x00af
                     00AE   460 _ESPI0	=	0x00ae
                     00AD   461 _ET2	=	0x00ad
                     00AC   462 _ES0	=	0x00ac
                     00AB   463 _ET1	=	0x00ab
                     00AA   464 _EX1	=	0x00aa
                     00A9   465 _ET0	=	0x00a9
                     00A8   466 _EX0	=	0x00a8
                     00B7   467 _SPIF1	=	0x00b7
                     00B6   468 _WCOL1	=	0x00b6
                     00B5   469 _MODF1	=	0x00b5
                     00B4   470 _RXOVRN1	=	0x00b4
                     00B3   471 _NSS1MD1	=	0x00b3
                     00B2   472 _NSS1MD0	=	0x00b2
                     00B1   473 _TXBMT1	=	0x00b1
                     00B0   474 _SPI1EN	=	0x00b0
                     00BE   475 _PSPI0	=	0x00be
                     00BD   476 _PT2	=	0x00bd
                     00BC   477 _PS0	=	0x00bc
                     00BB   478 _PT1	=	0x00bb
                     00BA   479 _PX1	=	0x00ba
                     00B9   480 _PT0	=	0x00b9
                     00B8   481 _PX0	=	0x00b8
                     00C7   482 _MASTER	=	0x00c7
                     00C6   483 _TXMODE	=	0x00c6
                     00C5   484 _STA	=	0x00c5
                     00C4   485 _STO	=	0x00c4
                     00C3   486 _ACKRQ	=	0x00c3
                     00C2   487 _ARBLOST	=	0x00c2
                     00C1   488 _ACK	=	0x00c1
                     00C0   489 _SI	=	0x00c0
                     00CF   490 _TF2H	=	0x00cf
                     00CE   491 _TF2L	=	0x00ce
                     00CD   492 _TF2LEN	=	0x00cd
                     00CC   493 _TF2CEN	=	0x00cc
                     00CB   494 _T2SPLIT	=	0x00cb
                     00CA   495 _TR2	=	0x00ca
                     00C9   496 _T2RCLK	=	0x00c9
                     00C8   497 _T2XCLK	=	0x00c8
                     00D7   498 _CY	=	0x00d7
                     00D6   499 _AC	=	0x00d6
                     00D5   500 _F0	=	0x00d5
                     00D4   501 _RS1	=	0x00d4
                     00D3   502 _RS0	=	0x00d3
                     00D2   503 _OV	=	0x00d2
                     00D1   504 _F1	=	0x00d1
                     00D0   505 _P	=	0x00d0
                     00DF   506 _CF	=	0x00df
                     00DE   507 _CR	=	0x00de
                     00DD   508 _CCF5	=	0x00dd
                     00DC   509 _CCF4	=	0x00dc
                     00DB   510 _CCF3	=	0x00db
                     00DA   511 _CCF2	=	0x00da
                     00D9   512 _CCF1	=	0x00d9
                     00D8   513 _CCF0	=	0x00d8
                     00EF   514 _AD0EN	=	0x00ef
                     00EE   515 _BURSTEN	=	0x00ee
                     00ED   516 _AD0INT	=	0x00ed
                     00EC   517 _AD0BUSY	=	0x00ec
                     00EB   518 _AD0WINT	=	0x00eb
                     00EA   519 _AD0CM2	=	0x00ea
                     00E9   520 _AD0CM1	=	0x00e9
                     00E8   521 _AD0CM0	=	0x00e8
                     00FF   522 _SPIF0	=	0x00ff
                     00FE   523 _WCOL0	=	0x00fe
                     00FD   524 _MODF0	=	0x00fd
                     00FC   525 _RXOVRN0	=	0x00fc
                     00FB   526 _NSS0MD1	=	0x00fb
                     00FA   527 _NSS0MD0	=	0x00fa
                     00F9   528 _TXBMT0	=	0x00f9
                     00F8   529 _SPI0EN	=	0x00f8
                     00A0   530 _LED_RED	=	0x00a0
                     00A5   531 _LED_GREEN	=	0x00a5
                     0086   532 _BUTTON_ENTER	=	0x0086
                     0095   533 _BUTTON_UP	=	0x0095
                     0096   534 _BUTTON_DOWN	=	0x0096
                     0087   535 _IRQ	=	0x0087
                     0094   536 _NSS1	=	0x0094
                     00A6   537 _SDN	=	0x00a6
                            538 ;--------------------------------------------------------
                            539 ; overlayable register banks
                            540 ;--------------------------------------------------------
                            541 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     542 	.ds 8
                            543 ;--------------------------------------------------------
                            544 ; internal ram data
                            545 ;--------------------------------------------------------
                            546 	.area DSEG    (DATA)
   0044                     547 _radix:
   0044                     548 	.ds 1
   0045                     549 _str:
   0045                     550 	.ds 3
   0048                     551 _val:
   0048                     552 	.ds 4
                            553 ;--------------------------------------------------------
                            554 ; overlayable items in internal ram 
                            555 ;--------------------------------------------------------
                            556 ;--------------------------------------------------------
                            557 ; indirectly addressable internal ram data
                            558 ;--------------------------------------------------------
                            559 	.area ISEG    (DATA)
   0080                     560 _vprintfl_buffer_4_139:
   0080                     561 	.ds 12
                            562 ;--------------------------------------------------------
                            563 ; absolute internal ram data
                            564 ;--------------------------------------------------------
                            565 	.area IABS    (ABS,DATA)
                            566 	.area IABS    (ABS,DATA)
                            567 ;--------------------------------------------------------
                            568 ; bit data
                            569 ;--------------------------------------------------------
                            570 	.area BSEG    (BIT)
   0011                     571 _long_flag:
   0011                     572 	.ds 1
   0012                     573 _string_flag:
   0012                     574 	.ds 1
   0013                     575 _char_flag:
   0013                     576 	.ds 1
   0014                     577 _unsigned_flag:
   0014                     578 	.ds 1
   0015                     579 _capture:
   0015                     580 	.ds 1
                            581 ;--------------------------------------------------------
                            582 ; paged external ram data
                            583 ;--------------------------------------------------------
                            584 	.area PSEG    (PAG,XDATA)
   0077                     585 _capture_buffer_size:
   0077                     586 	.ds 1
   0078                     587 _captured_size:
   0078                     588 	.ds 1
                            589 ;--------------------------------------------------------
                            590 ; external ram data
                            591 ;--------------------------------------------------------
                            592 	.area XSEG    (XDATA)
   035F                     593 _capture_buffer:
   035F                     594 	.ds 2
   0361                     595 _printf_start_capture_PARM_2:
   0361                     596 	.ds 1
   0362                     597 _printf_start_capture_buf_1_120:
   0362                     598 	.ds 2
                            599 ;--------------------------------------------------------
                            600 ; absolute external ram data
                            601 ;--------------------------------------------------------
                            602 	.area XABS    (ABS,XDATA)
                            603 ;--------------------------------------------------------
                            604 ; external initialized ram data
                            605 ;--------------------------------------------------------
                            606 	.area XISEG   (XDATA)
                            607 	.area HOME    (CODE)
                            608 	.area GSINIT0 (CODE)
                            609 	.area GSINIT1 (CODE)
                            610 	.area GSINIT2 (CODE)
                            611 	.area GSINIT3 (CODE)
                            612 	.area GSINIT4 (CODE)
                            613 	.area GSINIT5 (CODE)
                            614 	.area GSINIT  (CODE)
                            615 	.area GSFINAL (CODE)
                            616 	.area CSEG    (CODE)
                            617 ;--------------------------------------------------------
                            618 ; global & static initialisations
                            619 ;--------------------------------------------------------
                            620 	.area HOME    (CODE)
                            621 	.area GSINIT  (CODE)
                            622 	.area GSFINAL (CODE)
                            623 	.area GSINIT  (CODE)
                            624 ;	radio/printfl.c:50: static __bit long_flag = 0;
   04DC C2 11         [12]  625 	clr	_long_flag
                            626 ;	radio/printfl.c:51: static __bit string_flag = 0;
   04DE C2 12         [12]  627 	clr	_string_flag
                            628 ;	radio/printfl.c:52: static __bit char_flag = 0;
   04E0 C2 13         [12]  629 	clr	_char_flag
                            630 ;	radio/printfl.c:53: static __bit unsigned_flag = 0;
   04E2 C2 14         [12]  631 	clr	_unsigned_flag
                            632 ;--------------------------------------------------------
                            633 ; Home
                            634 ;--------------------------------------------------------
                            635 	.area HOME    (CODE)
                            636 	.area HOME    (CODE)
                            637 ;--------------------------------------------------------
                            638 ; code
                            639 ;--------------------------------------------------------
                            640 	.area CSEG    (CODE)
                            641 ;------------------------------------------------------------
                            642 ;Allocation info for local variables in function 'output_char'
                            643 ;------------------------------------------------------------
                            644 ;c                         Allocated to registers r7 
                            645 ;------------------------------------------------------------
                            646 ;	radio/printfl.c:65: output_char(register char c)
                            647 ;	-----------------------------------------
                            648 ;	 function output_char
                            649 ;	-----------------------------------------
   2ACB                     650 _output_char:
                     0007   651 	ar7 = 0x07
                     0006   652 	ar6 = 0x06
                     0005   653 	ar5 = 0x05
                     0004   654 	ar4 = 0x04
                     0003   655 	ar3 = 0x03
                     0002   656 	ar2 = 0x02
                     0001   657 	ar1 = 0x01
                     0000   658 	ar0 = 0x00
   2ACB AF 82         [24]  659 	mov	r7,dpl
                            660 ;	radio/printfl.c:67: if (!capture) {
   2ACD 20 15 05      [24]  661 	jb	_capture,00102$
                            662 ;	radio/printfl.c:68: putchar(c);
   2AD0 8F 82         [24]  663 	mov	dpl,r7
                            664 ;	radio/printfl.c:69: return;
   2AD2 02 44 2C      [24]  665 	ljmp	_putchar
   2AD5                     666 00102$:
                            667 ;	radio/printfl.c:71: if (captured_size < capture_buffer_size) {
   2AD5 78 78         [12]  668 	mov	r0,#_captured_size
   2AD7 79 77         [12]  669 	mov	r1,#_capture_buffer_size
   2AD9 C3            [12]  670 	clr	c
   2ADA E3            [24]  671 	movx	a,@r1
   2ADB F5 F0         [12]  672 	mov	b,a
   2ADD E2            [24]  673 	movx	a,@r0
   2ADE 95 F0         [12]  674 	subb	a,b
   2AE0 50 1A         [24]  675 	jnc	00105$
                            676 ;	radio/printfl.c:72: capture_buffer[captured_size++] = c;
   2AE2 78 78         [12]  677 	mov	r0,#_captured_size
   2AE4 E2            [24]  678 	movx	a,@r0
   2AE5 FE            [12]  679 	mov	r6,a
   2AE6 78 78         [12]  680 	mov	r0,#_captured_size
   2AE8 04            [12]  681 	inc	a
   2AE9 F2            [24]  682 	movx	@r0,a
   2AEA 90 03 5F      [24]  683 	mov	dptr,#_capture_buffer
   2AED E0            [24]  684 	movx	a,@dptr
   2AEE FC            [12]  685 	mov	r4,a
   2AEF A3            [24]  686 	inc	dptr
   2AF0 E0            [24]  687 	movx	a,@dptr
   2AF1 FD            [12]  688 	mov	r5,a
   2AF2 EE            [12]  689 	mov	a,r6
   2AF3 2C            [12]  690 	add	a,r4
   2AF4 F5 82         [12]  691 	mov	dpl,a
   2AF6 E4            [12]  692 	clr	a
   2AF7 3D            [12]  693 	addc	a,r5
   2AF8 F5 83         [12]  694 	mov	dph,a
   2AFA EF            [12]  695 	mov	a,r7
   2AFB F0            [24]  696 	movx	@dptr,a
   2AFC                     697 00105$:
   2AFC 22            [24]  698 	ret
                            699 ;------------------------------------------------------------
                            700 ;Allocation info for local variables in function 'printf_start_capture'
                            701 ;------------------------------------------------------------
                            702 ;size                      Allocated with name '_printf_start_capture_PARM_2'
                            703 ;buf                       Allocated with name '_printf_start_capture_buf_1_120'
                            704 ;------------------------------------------------------------
                            705 ;	radio/printfl.c:78: printf_start_capture(__xdata uint8_t *buf, uint8_t size)
                            706 ;	-----------------------------------------
                            707 ;	 function printf_start_capture
                            708 ;	-----------------------------------------
   2AFD                     709 _printf_start_capture:
   2AFD AF 83         [24]  710 	mov	r7,dph
   2AFF E5 82         [12]  711 	mov	a,dpl
   2B01 90 03 62      [24]  712 	mov	dptr,#_printf_start_capture_buf_1_120
   2B04 F0            [24]  713 	movx	@dptr,a
   2B05 EF            [12]  714 	mov	a,r7
   2B06 A3            [24]  715 	inc	dptr
   2B07 F0            [24]  716 	movx	@dptr,a
                            717 ;	radio/printfl.c:80: capture_buffer = buf;
   2B08 90 03 62      [24]  718 	mov	dptr,#_printf_start_capture_buf_1_120
   2B0B E0            [24]  719 	movx	a,@dptr
   2B0C FE            [12]  720 	mov	r6,a
   2B0D A3            [24]  721 	inc	dptr
   2B0E E0            [24]  722 	movx	a,@dptr
   2B0F FF            [12]  723 	mov	r7,a
   2B10 90 03 5F      [24]  724 	mov	dptr,#_capture_buffer
   2B13 EE            [12]  725 	mov	a,r6
   2B14 F0            [24]  726 	movx	@dptr,a
   2B15 EF            [12]  727 	mov	a,r7
   2B16 A3            [24]  728 	inc	dptr
   2B17 F0            [24]  729 	movx	@dptr,a
                            730 ;	radio/printfl.c:81: captured_size = 0;
   2B18 78 78         [12]  731 	mov	r0,#_captured_size
   2B1A E4            [12]  732 	clr	a
   2B1B F2            [24]  733 	movx	@r0,a
                            734 ;	radio/printfl.c:82: capture_buffer_size = size;
   2B1C 90 03 61      [24]  735 	mov	dptr,#_printf_start_capture_PARM_2
   2B1F E0            [24]  736 	movx	a,@dptr
   2B20 78 77         [12]  737 	mov	r0,#_capture_buffer_size
   2B22 F2            [24]  738 	movx	@r0,a
                            739 ;	radio/printfl.c:83: capture = true;
   2B23 D2 15         [12]  740 	setb	_capture
   2B25 22            [24]  741 	ret
                            742 ;------------------------------------------------------------
                            743 ;Allocation info for local variables in function 'printf_end_capture'
                            744 ;------------------------------------------------------------
                            745 ;	radio/printfl.c:88: printf_end_capture(void)
                            746 ;	-----------------------------------------
                            747 ;	 function printf_end_capture
                            748 ;	-----------------------------------------
   2B26                     749 _printf_end_capture:
                            750 ;	radio/printfl.c:90: capture = false;
   2B26 C2 15         [12]  751 	clr	_capture
                            752 ;	radio/printfl.c:91: return captured_size;
   2B28 78 78         [12]  753 	mov	r0,#_captured_size
   2B2A E2            [24]  754 	movx	a,@r0
   2B2B F5 82         [12]  755 	mov	dpl,a
   2B2D 22            [24]  756 	ret
                            757 ;------------------------------------------------------------
                            758 ;Allocation info for local variables in function 'vprintfl'
                            759 ;------------------------------------------------------------
                            760 ;ap                        Allocated to stack - sp -2
                            761 ;fmt                       Allocated to registers r5 r6 r7 
                            762 ;stri                      Allocated to registers 
                            763 ;buffer                    Allocated with name '_vprintfl_buffer_4_139'
                            764 ;------------------------------------------------------------
                            765 ;	radio/printfl.c:95: vprintfl(const char * fmt, va_list ap) __reentrant
                            766 ;	-----------------------------------------
                            767 ;	 function vprintfl
                            768 ;	-----------------------------------------
   2B2E                     769 _vprintfl:
   2B2E AD 82         [24]  770 	mov	r5,dpl
   2B30 AE 83         [24]  771 	mov	r6,dph
   2B32 AF F0         [24]  772 	mov	r7,b
   2B34                     773 00146$:
                            774 ;	radio/printfl.c:98: for (; *fmt; fmt++) {
   2B34 8D 82         [24]  775 	mov	dpl,r5
   2B36 8E 83         [24]  776 	mov	dph,r6
   2B38 8F F0         [24]  777 	mov	b,r7
   2B3A 12 64 27      [24]  778 	lcall	__gptrget
   2B3D FC            [12]  779 	mov	r4,a
   2B3E 70 01         [24]  780 	jnz	00219$
   2B40 22            [24]  781 	ret
   2B41                     782 00219$:
                            783 ;	radio/printfl.c:99: if (*fmt == '%') {
   2B41 BC 25 02      [24]  784 	cjne	r4,#0x25,00220$
   2B44 80 03         [24]  785 	sjmp	00221$
   2B46                     786 00220$:
   2B46 02 2D 9D      [24]  787 	ljmp	00141$
   2B49                     788 00221$:
                            789 ;	radio/printfl.c:100: long_flag = string_flag = char_flag = unsigned_flag = 0;
   2B49 C2 14         [12]  790 	clr	_unsigned_flag
   2B4B C2 13         [12]  791 	clr	_char_flag
   2B4D C2 12         [12]  792 	clr	_string_flag
   2B4F C2 11         [12]  793 	clr	_long_flag
                            794 ;	radio/printfl.c:101: fmt++;
   2B51 0D            [12]  795 	inc	r5
   2B52 BD 00 01      [24]  796 	cjne	r5,#0x00,00222$
   2B55 0E            [12]  797 	inc	r6
   2B56                     798 00222$:
                            799 ;	radio/printfl.c:102: switch (*fmt) {
   2B56 8D 82         [24]  800 	mov	dpl,r5
   2B58 8E 83         [24]  801 	mov	dph,r6
   2B5A 8F F0         [24]  802 	mov	b,r7
   2B5C 12 64 27      [24]  803 	lcall	__gptrget
   2B5F FB            [12]  804 	mov	r3,a
   2B60 BB 68 02      [24]  805 	cjne	r3,#0x68,00223$
   2B63 80 0C         [24]  806 	sjmp	00102$
   2B65                     807 00223$:
   2B65 BB 6C 10      [24]  808 	cjne	r3,#0x6C,00103$
                            809 ;	radio/printfl.c:104: long_flag = 1;
   2B68 D2 11         [12]  810 	setb	_long_flag
                            811 ;	radio/printfl.c:105: fmt++;
   2B6A 0D            [12]  812 	inc	r5
                            813 ;	radio/printfl.c:106: break;
                            814 ;	radio/printfl.c:107: case 'h':
   2B6B BD 00 0A      [24]  815 	cjne	r5,#0x00,00103$
   2B6E 0E            [12]  816 	inc	r6
   2B6F 80 07         [24]  817 	sjmp	00103$
   2B71                     818 00102$:
                            819 ;	radio/printfl.c:108: char_flag = 1;
   2B71 D2 13         [12]  820 	setb	_char_flag
                            821 ;	radio/printfl.c:109: fmt++;
   2B73 0D            [12]  822 	inc	r5
   2B74 BD 00 01      [24]  823 	cjne	r5,#0x00,00227$
   2B77 0E            [12]  824 	inc	r6
   2B78                     825 00227$:
                            826 ;	radio/printfl.c:110: }
   2B78                     827 00103$:
                            828 ;	radio/printfl.c:112: switch (*fmt) {
   2B78 8D 82         [24]  829 	mov	dpl,r5
   2B7A 8E 83         [24]  830 	mov	dph,r6
   2B7C 8F F0         [24]  831 	mov	b,r7
   2B7E 12 64 27      [24]  832 	lcall	__gptrget
   2B81 FB            [12]  833 	mov	r3,a
   2B82 BB 63 02      [24]  834 	cjne	r3,#0x63,00228$
   2B85 80 30         [24]  835 	sjmp	00108$
   2B87                     836 00228$:
   2B87 BB 64 02      [24]  837 	cjne	r3,#0x64,00229$
   2B8A 80 18         [24]  838 	sjmp	00105$
   2B8C                     839 00229$:
   2B8C BB 6F 02      [24]  840 	cjne	r3,#0x6F,00230$
   2B8F 80 2B         [24]  841 	sjmp	00109$
   2B91                     842 00230$:
   2B91 BB 73 02      [24]  843 	cjne	r3,#0x73,00231$
   2B94 80 0A         [24]  844 	sjmp	00104$
   2B96                     845 00231$:
   2B96 BB 75 02      [24]  846 	cjne	r3,#0x75,00232$
   2B99 80 0E         [24]  847 	sjmp	00106$
   2B9B                     848 00232$:
                            849 ;	radio/printfl.c:113: case 's':
   2B9B BB 78 23      [24]  850 	cjne	r3,#0x78,00110$
   2B9E 80 10         [24]  851 	sjmp	00107$
   2BA0                     852 00104$:
                            853 ;	radio/printfl.c:114: string_flag = 1;
   2BA0 D2 12         [12]  854 	setb	_string_flag
                            855 ;	radio/printfl.c:115: break;
                            856 ;	radio/printfl.c:116: case 'd':
   2BA2 80 1D         [24]  857 	sjmp	00110$
   2BA4                     858 00105$:
                            859 ;	radio/printfl.c:117: radix = 10;
   2BA4 75 44 0A      [24]  860 	mov	_radix,#0x0A
                            861 ;	radio/printfl.c:118: break;
                            862 ;	radio/printfl.c:119: case 'u':
   2BA7 80 18         [24]  863 	sjmp	00110$
   2BA9                     864 00106$:
                            865 ;	radio/printfl.c:120: radix = 10;
   2BA9 75 44 0A      [24]  866 	mov	_radix,#0x0A
                            867 ;	radio/printfl.c:121: unsigned_flag = 1;
   2BAC D2 14         [12]  868 	setb	_unsigned_flag
                            869 ;	radio/printfl.c:122: break;
                            870 ;	radio/printfl.c:123: case 'x':
   2BAE 80 11         [24]  871 	sjmp	00110$
   2BB0                     872 00107$:
                            873 ;	radio/printfl.c:124: radix = 16;
   2BB0 75 44 10      [24]  874 	mov	_radix,#0x10
                            875 ;	radio/printfl.c:125: unsigned_flag = 1;
   2BB3 D2 14         [12]  876 	setb	_unsigned_flag
                            877 ;	radio/printfl.c:126: break;
                            878 ;	radio/printfl.c:127: case 'c':
   2BB5 80 0A         [24]  879 	sjmp	00110$
   2BB7                     880 00108$:
                            881 ;	radio/printfl.c:128: radix = 0;
   2BB7 75 44 00      [24]  882 	mov	_radix,#0x00
                            883 ;	radio/printfl.c:129: break;
                            884 ;	radio/printfl.c:130: case 'o':
   2BBA 80 05         [24]  885 	sjmp	00110$
   2BBC                     886 00109$:
                            887 ;	radio/printfl.c:131: radix = 8;
   2BBC 75 44 08      [24]  888 	mov	_radix,#0x08
                            889 ;	radio/printfl.c:132: unsigned_flag = 1;
   2BBF D2 14         [12]  890 	setb	_unsigned_flag
                            891 ;	radio/printfl.c:134: }
   2BC1                     892 00110$:
                            893 ;	radio/printfl.c:136: if (string_flag) {
   2BC1 30 12 71      [24]  894 	jnb	_string_flag,00115$
                            895 ;	radio/printfl.c:137: str = va_arg(ap, char *);
   2BC4 A8 81         [24]  896 	mov	r0,sp
   2BC6 18            [12]  897 	dec	r0
   2BC7 18            [12]  898 	dec	r0
   2BC8 E6            [12]  899 	mov	a,@r0
   2BC9 24 FD         [12]  900 	add	a,#0xFD
   2BCB FB            [12]  901 	mov	r3,a
   2BCC A8 81         [24]  902 	mov	r0,sp
   2BCE 18            [12]  903 	dec	r0
   2BCF 18            [12]  904 	dec	r0
   2BD0 A6 03         [24]  905 	mov	@r0,ar3
   2BD2 8B 01         [24]  906 	mov	ar1,r3
   2BD4 87 45         [24]  907 	mov	_str,@r1
   2BD6 09            [12]  908 	inc	r1
   2BD7 87 46         [24]  909 	mov	(_str + 1),@r1
   2BD9 09            [12]  910 	inc	r1
   2BDA 87 47         [24]  911 	mov	(_str + 2),@r1
   2BDC 19            [12]  912 	dec	r1
   2BDD 19            [12]  913 	dec	r1
                            914 ;	radio/printfl.c:138: while (*str)
   2BDE                     915 00111$:
   2BDE C0 05         [24]  916 	push	ar5
   2BE0 C0 06         [24]  917 	push	ar6
   2BE2 C0 07         [24]  918 	push	ar7
   2BE4 AA 45         [24]  919 	mov	r2,_str
   2BE6 AB 46         [24]  920 	mov	r3,(_str + 1)
   2BE8 AF 47         [24]  921 	mov	r7,(_str + 2)
   2BEA 8A 82         [24]  922 	mov	dpl,r2
   2BEC 8B 83         [24]  923 	mov	dph,r3
   2BEE 8F F0         [24]  924 	mov	b,r7
   2BF0 12 64 27      [24]  925 	lcall	__gptrget
   2BF3 D0 07         [24]  926 	pop	ar7
   2BF5 D0 06         [24]  927 	pop	ar6
   2BF7 D0 05         [24]  928 	pop	ar5
   2BF9 70 03         [24]  929 	jnz	00235$
   2BFB 02 2D AE      [24]  930 	ljmp	00143$
   2BFE                     931 00235$:
                            932 ;	radio/printfl.c:139: output_char(*str++);
   2BFE C0 05         [24]  933 	push	ar5
   2C00 C0 06         [24]  934 	push	ar6
   2C02 C0 07         [24]  935 	push	ar7
   2C04 AA 45         [24]  936 	mov	r2,_str
   2C06 AB 46         [24]  937 	mov	r3,(_str + 1)
   2C08 AF 47         [24]  938 	mov	r7,(_str + 2)
   2C0A 8A 82         [24]  939 	mov	dpl,r2
   2C0C 8B 83         [24]  940 	mov	dph,r3
   2C0E 8F F0         [24]  941 	mov	b,r7
   2C10 12 64 27      [24]  942 	lcall	__gptrget
   2C13 FA            [12]  943 	mov	r2,a
   2C14 05 45         [12]  944 	inc	_str
   2C16 E4            [12]  945 	clr	a
   2C17 B5 45 02      [24]  946 	cjne	a,_str,00236$
   2C1A 05 46         [12]  947 	inc	(_str + 1)
   2C1C                     948 00236$:
   2C1C 8A 82         [24]  949 	mov	dpl,r2
   2C1E C0 07         [24]  950 	push	ar7
   2C20 C0 06         [24]  951 	push	ar6
   2C22 C0 05         [24]  952 	push	ar5
   2C24 12 2A CB      [24]  953 	lcall	_output_char
   2C27 D0 05         [24]  954 	pop	ar5
   2C29 D0 06         [24]  955 	pop	ar6
   2C2B D0 07         [24]  956 	pop	ar7
   2C2D D0 07         [24]  957 	pop	ar7
   2C2F D0 06         [24]  958 	pop	ar6
   2C31 D0 05         [24]  959 	pop	ar5
                            960 ;	radio/printfl.c:140: continue;
   2C33 80 A9         [24]  961 	sjmp	00111$
   2C35                     962 00115$:
                            963 ;	radio/printfl.c:143: if (unsigned_flag) {
   2C35 30 14 66      [24]  964 	jnb	_unsigned_flag,00129$
                            965 ;	radio/printfl.c:144: if (long_flag) {
   2C38 30 11 21      [24]  966 	jnb	_long_flag,00120$
                            967 ;	radio/printfl.c:145: val = va_arg(ap,unsigned long);
   2C3B A8 81         [24]  968 	mov	r0,sp
   2C3D 18            [12]  969 	dec	r0
   2C3E 18            [12]  970 	dec	r0
   2C3F E6            [12]  971 	mov	a,@r0
   2C40 24 FC         [12]  972 	add	a,#0xFC
   2C42 FB            [12]  973 	mov	r3,a
   2C43 A8 81         [24]  974 	mov	r0,sp
   2C45 18            [12]  975 	dec	r0
   2C46 18            [12]  976 	dec	r0
   2C47 A6 03         [24]  977 	mov	@r0,ar3
   2C49 8B 01         [24]  978 	mov	ar1,r3
   2C4B 87 48         [24]  979 	mov	_val,@r1
   2C4D 09            [12]  980 	inc	r1
   2C4E 87 49         [24]  981 	mov	(_val + 1),@r1
   2C50 09            [12]  982 	inc	r1
   2C51 87 4A         [24]  983 	mov	(_val + 2),@r1
   2C53 09            [12]  984 	inc	r1
   2C54 87 4B         [24]  985 	mov	(_val + 3),@r1
   2C56 19            [12]  986 	dec	r1
   2C57 19            [12]  987 	dec	r1
   2C58 19            [12]  988 	dec	r1
   2C59 02 2D 04      [24]  989 	ljmp	00130$
   2C5C                     990 00120$:
                            991 ;	radio/printfl.c:146: } else if (char_flag) {
   2C5C 30 13 1D      [24]  992 	jnb	_char_flag,00117$
                            993 ;	radio/printfl.c:147: val = va_arg(ap,unsigned char);
   2C5F A8 81         [24]  994 	mov	r0,sp
   2C61 18            [12]  995 	dec	r0
   2C62 18            [12]  996 	dec	r0
   2C63 E6            [12]  997 	mov	a,@r0
   2C64 14            [12]  998 	dec	a
   2C65 F9            [12]  999 	mov	r1,a
   2C66 A8 81         [24] 1000 	mov	r0,sp
   2C68 18            [12] 1001 	dec	r0
   2C69 18            [12] 1002 	dec	r0
   2C6A A6 01         [24] 1003 	mov	@r0,ar1
   2C6C 87 03         [24] 1004 	mov	ar3,@r1
   2C6E 8B 48         [24] 1005 	mov	_val,r3
   2C70 75 49 00      [24] 1006 	mov	(_val + 1),#0x00
   2C73 75 4A 00      [24] 1007 	mov	(_val + 2),#0x00
   2C76 75 4B 00      [24] 1008 	mov	(_val + 3),#0x00
   2C79 02 2D 04      [24] 1009 	ljmp	00130$
   2C7C                    1010 00117$:
                           1011 ;	radio/printfl.c:149: val = va_arg(ap,unsigned int);
   2C7C A8 81         [24] 1012 	mov	r0,sp
   2C7E 18            [12] 1013 	dec	r0
   2C7F 18            [12] 1014 	dec	r0
   2C80 E6            [12] 1015 	mov	a,@r0
   2C81 24 FE         [12] 1016 	add	a,#0xFE
   2C83 FB            [12] 1017 	mov	r3,a
   2C84 A8 81         [24] 1018 	mov	r0,sp
   2C86 18            [12] 1019 	dec	r0
   2C87 18            [12] 1020 	dec	r0
   2C88 A6 03         [24] 1021 	mov	@r0,ar3
   2C8A 8B 01         [24] 1022 	mov	ar1,r3
   2C8C 87 02         [24] 1023 	mov	ar2,@r1
   2C8E 09            [12] 1024 	inc	r1
   2C8F 87 03         [24] 1025 	mov	ar3,@r1
   2C91 19            [12] 1026 	dec	r1
   2C92 8A 48         [24] 1027 	mov	_val,r2
   2C94 8B 49         [24] 1028 	mov	(_val + 1),r3
   2C96 75 4A 00      [24] 1029 	mov	(_val + 2),#0x00
   2C99 75 4B 00      [24] 1030 	mov	(_val + 3),#0x00
   2C9C 80 66         [24] 1031 	sjmp	00130$
   2C9E                    1032 00129$:
                           1033 ;	radio/printfl.c:152: if (long_flag) {
   2C9E 30 11 20      [24] 1034 	jnb	_long_flag,00126$
                           1035 ;	radio/printfl.c:153: val = va_arg(ap,long);
   2CA1 A8 81         [24] 1036 	mov	r0,sp
   2CA3 18            [12] 1037 	dec	r0
   2CA4 18            [12] 1038 	dec	r0
   2CA5 E6            [12] 1039 	mov	a,@r0
   2CA6 24 FC         [12] 1040 	add	a,#0xFC
   2CA8 FB            [12] 1041 	mov	r3,a
   2CA9 A8 81         [24] 1042 	mov	r0,sp
   2CAB 18            [12] 1043 	dec	r0
   2CAC 18            [12] 1044 	dec	r0
   2CAD A6 03         [24] 1045 	mov	@r0,ar3
   2CAF 8B 01         [24] 1046 	mov	ar1,r3
   2CB1 87 48         [24] 1047 	mov	_val,@r1
   2CB3 09            [12] 1048 	inc	r1
   2CB4 87 49         [24] 1049 	mov	(_val + 1),@r1
   2CB6 09            [12] 1050 	inc	r1
   2CB7 87 4A         [24] 1051 	mov	(_val + 2),@r1
   2CB9 09            [12] 1052 	inc	r1
   2CBA 87 4B         [24] 1053 	mov	(_val + 3),@r1
   2CBC 19            [12] 1054 	dec	r1
   2CBD 19            [12] 1055 	dec	r1
   2CBE 19            [12] 1056 	dec	r1
   2CBF 80 43         [24] 1057 	sjmp	00130$
   2CC1                    1058 00126$:
                           1059 ;	radio/printfl.c:154: } else if (char_flag) {
   2CC1 30 13 1E      [24] 1060 	jnb	_char_flag,00123$
                           1061 ;	radio/printfl.c:155: val = va_arg(ap,char);
   2CC4 A8 81         [24] 1062 	mov	r0,sp
   2CC6 18            [12] 1063 	dec	r0
   2CC7 18            [12] 1064 	dec	r0
   2CC8 E6            [12] 1065 	mov	a,@r0
   2CC9 14            [12] 1066 	dec	a
   2CCA FB            [12] 1067 	mov	r3,a
   2CCB A8 81         [24] 1068 	mov	r0,sp
   2CCD 18            [12] 1069 	dec	r0
   2CCE 18            [12] 1070 	dec	r0
   2CCF A6 03         [24] 1071 	mov	@r0,ar3
   2CD1 8B 01         [24] 1072 	mov	ar1,r3
   2CD3 E7            [12] 1073 	mov	a,@r1
   2CD4 FB            [12] 1074 	mov	r3,a
   2CD5 F5 48         [12] 1075 	mov	_val,a
   2CD7 33            [12] 1076 	rlc	a
   2CD8 95 E0         [12] 1077 	subb	a,acc
   2CDA F5 49         [12] 1078 	mov	(_val + 1),a
   2CDC F5 4A         [12] 1079 	mov	(_val + 2),a
   2CDE F5 4B         [12] 1080 	mov	(_val + 3),a
   2CE0 80 22         [24] 1081 	sjmp	00130$
   2CE2                    1082 00123$:
                           1083 ;	radio/printfl.c:157: val = va_arg(ap,int);
   2CE2 A8 81         [24] 1084 	mov	r0,sp
   2CE4 18            [12] 1085 	dec	r0
   2CE5 18            [12] 1086 	dec	r0
   2CE6 E6            [12] 1087 	mov	a,@r0
   2CE7 24 FE         [12] 1088 	add	a,#0xFE
   2CE9 FB            [12] 1089 	mov	r3,a
   2CEA A8 81         [24] 1090 	mov	r0,sp
   2CEC 18            [12] 1091 	dec	r0
   2CED 18            [12] 1092 	dec	r0
   2CEE A6 03         [24] 1093 	mov	@r0,ar3
   2CF0 8B 01         [24] 1094 	mov	ar1,r3
   2CF2 87 02         [24] 1095 	mov	ar2,@r1
   2CF4 09            [12] 1096 	inc	r1
   2CF5 87 03         [24] 1097 	mov	ar3,@r1
   2CF7 19            [12] 1098 	dec	r1
   2CF8 8A 48         [24] 1099 	mov	_val,r2
   2CFA EB            [12] 1100 	mov	a,r3
   2CFB F5 49         [12] 1101 	mov	(_val + 1),a
   2CFD 33            [12] 1102 	rlc	a
   2CFE 95 E0         [12] 1103 	subb	a,acc
   2D00 F5 4A         [12] 1104 	mov	(_val + 2),a
   2D02 F5 4B         [12] 1105 	mov	(_val + 3),a
   2D04                    1106 00130$:
                           1107 ;	radio/printfl.c:161: if (radix) {
   2D04 E5 44         [12] 1108 	mov	a,_radix
   2D06 70 03         [24] 1109 	jnz	00242$
   2D08 02 2D 88      [24] 1110 	ljmp	00138$
   2D0B                    1111 00242$:
                           1112 ;	radio/printfl.c:165: if (unsigned_flag) {
   2D0B 30 14 2F      [24] 1113 	jnb	_unsigned_flag,00132$
                           1114 ;	radio/printfl.c:166: _ultoa(val, buffer, radix);
   2D0E 90 05 76      [24] 1115 	mov	dptr,#__ultoa_PARM_2
   2D11 74 80         [12] 1116 	mov	a,#_vprintfl_buffer_4_139
   2D13 F0            [24] 1117 	movx	@dptr,a
   2D14 E4            [12] 1118 	clr	a
   2D15 A3            [24] 1119 	inc	dptr
   2D16 F0            [24] 1120 	movx	@dptr,a
   2D17 74 40         [12] 1121 	mov	a,#0x40
   2D19 A3            [24] 1122 	inc	dptr
   2D1A F0            [24] 1123 	movx	@dptr,a
   2D1B 90 05 79      [24] 1124 	mov	dptr,#__ultoa_PARM_3
   2D1E E5 44         [12] 1125 	mov	a,_radix
   2D20 F0            [24] 1126 	movx	@dptr,a
   2D21 85 48 82      [24] 1127 	mov	dpl,_val
   2D24 85 49 83      [24] 1128 	mov	dph,(_val + 1)
   2D27 85 4A F0      [24] 1129 	mov	b,(_val + 2)
   2D2A E5 4B         [12] 1130 	mov	a,(_val + 3)
   2D2C C0 07         [24] 1131 	push	ar7
   2D2E C0 06         [24] 1132 	push	ar6
   2D30 C0 05         [24] 1133 	push	ar5
   2D32 12 57 45      [24] 1134 	lcall	__ultoa
   2D35 D0 05         [24] 1135 	pop	ar5
   2D37 D0 06         [24] 1136 	pop	ar6
   2D39 D0 07         [24] 1137 	pop	ar7
   2D3B 80 2D         [24] 1138 	sjmp	00133$
   2D3D                    1139 00132$:
                           1140 ;	radio/printfl.c:168: _ltoa(val, buffer, radix);
   2D3D 90 05 9F      [24] 1141 	mov	dptr,#__ltoa_PARM_2
   2D40 74 80         [12] 1142 	mov	a,#_vprintfl_buffer_4_139
   2D42 F0            [24] 1143 	movx	@dptr,a
   2D43 E4            [12] 1144 	clr	a
   2D44 A3            [24] 1145 	inc	dptr
   2D45 F0            [24] 1146 	movx	@dptr,a
   2D46 74 40         [12] 1147 	mov	a,#0x40
   2D48 A3            [24] 1148 	inc	dptr
   2D49 F0            [24] 1149 	movx	@dptr,a
   2D4A 90 05 A2      [24] 1150 	mov	dptr,#__ltoa_PARM_3
   2D4D E5 44         [12] 1151 	mov	a,_radix
   2D4F F0            [24] 1152 	movx	@dptr,a
   2D50 85 48 82      [24] 1153 	mov	dpl,_val
   2D53 85 49 83      [24] 1154 	mov	dph,(_val + 1)
   2D56 85 4A F0      [24] 1155 	mov	b,(_val + 2)
   2D59 E5 4B         [12] 1156 	mov	a,(_val + 3)
   2D5B C0 07         [24] 1157 	push	ar7
   2D5D C0 06         [24] 1158 	push	ar6
   2D5F C0 05         [24] 1159 	push	ar5
   2D61 12 58 5B      [24] 1160 	lcall	__ltoa
   2D64 D0 05         [24] 1161 	pop	ar5
   2D66 D0 06         [24] 1162 	pop	ar6
   2D68 D0 07         [24] 1163 	pop	ar7
   2D6A                    1164 00133$:
                           1165 ;	radio/printfl.c:170: stri = buffer;
   2D6A 79 80         [12] 1166 	mov	r1,#_vprintfl_buffer_4_139
                           1167 ;	radio/printfl.c:171: while (*stri) {
   2D6C                    1168 00134$:
   2D6C E7            [12] 1169 	mov	a,@r1
   2D6D FB            [12] 1170 	mov	r3,a
   2D6E 60 3E         [24] 1171 	jz	00143$
                           1172 ;	radio/printfl.c:172: output_char(*stri);
   2D70 8B 82         [24] 1173 	mov	dpl,r3
   2D72 C0 07         [24] 1174 	push	ar7
   2D74 C0 06         [24] 1175 	push	ar6
   2D76 C0 05         [24] 1176 	push	ar5
   2D78 C0 01         [24] 1177 	push	ar1
   2D7A 12 2A CB      [24] 1178 	lcall	_output_char
   2D7D D0 01         [24] 1179 	pop	ar1
   2D7F D0 05         [24] 1180 	pop	ar5
   2D81 D0 06         [24] 1181 	pop	ar6
   2D83 D0 07         [24] 1182 	pop	ar7
                           1183 ;	radio/printfl.c:173: stri++;
   2D85 09            [12] 1184 	inc	r1
   2D86 80 E4         [24] 1185 	sjmp	00134$
   2D88                    1186 00138$:
                           1187 ;	radio/printfl.c:176: output_char((char) val);
   2D88 AB 48         [24] 1188 	mov	r3,_val
   2D8A 8B 82         [24] 1189 	mov	dpl,r3
   2D8C C0 07         [24] 1190 	push	ar7
   2D8E C0 06         [24] 1191 	push	ar6
   2D90 C0 05         [24] 1192 	push	ar5
   2D92 12 2A CB      [24] 1193 	lcall	_output_char
   2D95 D0 05         [24] 1194 	pop	ar5
   2D97 D0 06         [24] 1195 	pop	ar6
   2D99 D0 07         [24] 1196 	pop	ar7
   2D9B 80 11         [24] 1197 	sjmp	00143$
   2D9D                    1198 00141$:
                           1199 ;	radio/printfl.c:180: output_char(*fmt);
   2D9D 8C 82         [24] 1200 	mov	dpl,r4
   2D9F C0 07         [24] 1201 	push	ar7
   2DA1 C0 06         [24] 1202 	push	ar6
   2DA3 C0 05         [24] 1203 	push	ar5
   2DA5 12 2A CB      [24] 1204 	lcall	_output_char
   2DA8 D0 05         [24] 1205 	pop	ar5
   2DAA D0 06         [24] 1206 	pop	ar6
   2DAC D0 07         [24] 1207 	pop	ar7
   2DAE                    1208 00143$:
                           1209 ;	radio/printfl.c:98: for (; *fmt; fmt++) {
   2DAE 0D            [12] 1210 	inc	r5
   2DAF BD 00 01      [24] 1211 	cjne	r5,#0x00,00245$
   2DB2 0E            [12] 1212 	inc	r6
   2DB3                    1213 00245$:
   2DB3 02 2B 34      [24] 1214 	ljmp	00146$
                           1215 ;------------------------------------------------------------
                           1216 ;Allocation info for local variables in function 'printfl'
                           1217 ;------------------------------------------------------------
                           1218 ;fmt                       Allocated to stack - sp -4
                           1219 ;ap                        Allocated to registers r7 
                           1220 ;------------------------------------------------------------
                           1221 ;	radio/printfl.c:186: printfl(const char *fmt, ...) __reentrant
                           1222 ;	-----------------------------------------
                           1223 ;	 function printfl
                           1224 ;	-----------------------------------------
   2DB6                    1225 _printfl:
                           1226 ;	radio/printfl.c:190: va_start(ap,fmt);
   2DB6 E5 81         [12] 1227 	mov	a,sp
   2DB8 24 FC         [12] 1228 	add	a,#0xFC
   2DBA FF            [12] 1229 	mov	r7,a
                           1230 ;	radio/printfl.c:191: vprintfl(fmt, ap);
   2DBB C0 07         [24] 1231 	push	ar7
   2DBD E5 81         [12] 1232 	mov	a,sp
   2DBF 24 FB         [12] 1233 	add	a,#0xfb
   2DC1 F8            [12] 1234 	mov	r0,a
   2DC2 86 82         [24] 1235 	mov	dpl,@r0
   2DC4 08            [12] 1236 	inc	r0
   2DC5 86 83         [24] 1237 	mov	dph,@r0
   2DC7 08            [12] 1238 	inc	r0
   2DC8 86 F0         [24] 1239 	mov	b,@r0
   2DCA 12 2B 2E      [24] 1240 	lcall	_vprintfl
   2DCD 15 81         [12] 1241 	dec	sp
   2DCF 22            [24] 1242 	ret
                           1243 	.area CSEG    (CODE)
                           1244 	.area CONST   (CODE)
                           1245 	.area XINIT   (CODE)
                           1246 	.area CABS    (ABS,CODE)
