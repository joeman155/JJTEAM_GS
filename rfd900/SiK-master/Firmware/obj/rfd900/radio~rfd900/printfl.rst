                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:13 2013
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
                             15 	.globl _NSS1
                             16 	.globl _IRQ
                             17 	.globl _PIN_ENABLE
                             18 	.globl _PIN_CONFIG
                             19 	.globl _LED_GREEN
                             20 	.globl _LED_RED
                             21 	.globl _SPI0EN
                             22 	.globl _TXBMT0
                             23 	.globl _NSS0MD0
                             24 	.globl _NSS0MD1
                             25 	.globl _RXOVRN0
                             26 	.globl _MODF0
                             27 	.globl _WCOL0
                             28 	.globl _SPIF0
                             29 	.globl _AD0CM0
                             30 	.globl _AD0CM1
                             31 	.globl _AD0CM2
                             32 	.globl _AD0WINT
                             33 	.globl _AD0BUSY
                             34 	.globl _AD0INT
                             35 	.globl _BURSTEN
                             36 	.globl _AD0EN
                             37 	.globl _CCF0
                             38 	.globl _CCF1
                             39 	.globl _CCF2
                             40 	.globl _CCF3
                             41 	.globl _CCF4
                             42 	.globl _CCF5
                             43 	.globl _CR
                             44 	.globl _CF
                             45 	.globl _P
                             46 	.globl _F1
                             47 	.globl _OV
                             48 	.globl _RS0
                             49 	.globl _RS1
                             50 	.globl _F0
                             51 	.globl _AC
                             52 	.globl _CY
                             53 	.globl _T2XCLK
                             54 	.globl _T2RCLK
                             55 	.globl _TR2
                             56 	.globl _T2SPLIT
                             57 	.globl _TF2CEN
                             58 	.globl _TF2LEN
                             59 	.globl _TF2L
                             60 	.globl _TF2H
                             61 	.globl _SI
                             62 	.globl _ACK
                             63 	.globl _ARBLOST
                             64 	.globl _ACKRQ
                             65 	.globl _STO
                             66 	.globl _STA
                             67 	.globl _TXMODE
                             68 	.globl _MASTER
                             69 	.globl _PX0
                             70 	.globl _PT0
                             71 	.globl _PX1
                             72 	.globl _PT1
                             73 	.globl _PS0
                             74 	.globl _PT2
                             75 	.globl _PSPI0
                             76 	.globl _SPI1EN
                             77 	.globl _TXBMT1
                             78 	.globl _NSS1MD0
                             79 	.globl _NSS1MD1
                             80 	.globl _RXOVRN1
                             81 	.globl _MODF1
                             82 	.globl _WCOL1
                             83 	.globl _SPIF1
                             84 	.globl _EX0
                             85 	.globl _ET0
                             86 	.globl _EX1
                             87 	.globl _ET1
                             88 	.globl _ES0
                             89 	.globl _ET2
                             90 	.globl _ESPI0
                             91 	.globl _EA
                             92 	.globl _RI0
                             93 	.globl _TI0
                             94 	.globl _RB80
                             95 	.globl _TB80
                             96 	.globl _REN0
                             97 	.globl _MCE0
                             98 	.globl _S0MODE
                             99 	.globl _CRC0VAL
                            100 	.globl _CRC0INIT
                            101 	.globl _CRC0SEL
                            102 	.globl _IT0
                            103 	.globl _IE0
                            104 	.globl _IT1
                            105 	.globl _IE1
                            106 	.globl _TR0
                            107 	.globl _TF0
                            108 	.globl _TR1
                            109 	.globl _TF1
                            110 	.globl _PCA0CP4
                            111 	.globl _PCA0CP0
                            112 	.globl _PCA0
                            113 	.globl _PCA0CP3
                            114 	.globl _PCA0CP2
                            115 	.globl _PCA0CP1
                            116 	.globl _PCA0CP5
                            117 	.globl _TMR2
                            118 	.globl _TMR2RL
                            119 	.globl _ADC0LT
                            120 	.globl _ADC0GT
                            121 	.globl _ADC0
                            122 	.globl _TMR3
                            123 	.globl _TMR3RL
                            124 	.globl _TOFF
                            125 	.globl _DP
                            126 	.globl _VDM0CN
                            127 	.globl _PCA0CPH4
                            128 	.globl _PCA0CPL4
                            129 	.globl _PCA0CPH0
                            130 	.globl _PCA0CPL0
                            131 	.globl _PCA0H
                            132 	.globl _PCA0L
                            133 	.globl _SPI0CN
                            134 	.globl _EIP2
                            135 	.globl _EIP1
                            136 	.globl _SMB0ADM
                            137 	.globl _SMB0ADR
                            138 	.globl _P2MDIN
                            139 	.globl _P1MDIN
                            140 	.globl _P0MDIN
                            141 	.globl _B
                            142 	.globl _RSTSRC
                            143 	.globl _PCA0CPH3
                            144 	.globl _PCA0CPL3
                            145 	.globl _PCA0CPH2
                            146 	.globl _PCA0CPL2
                            147 	.globl _PCA0CPH1
                            148 	.globl _PCA0CPL1
                            149 	.globl _ADC0CN
                            150 	.globl _EIE2
                            151 	.globl _EIE1
                            152 	.globl _FLWR
                            153 	.globl _IT01CF
                            154 	.globl _XBR2
                            155 	.globl _XBR1
                            156 	.globl _XBR0
                            157 	.globl _ACC
                            158 	.globl _PCA0PWM
                            159 	.globl _PCA0CPM4
                            160 	.globl _PCA0CPM3
                            161 	.globl _PCA0CPM2
                            162 	.globl _PCA0CPM1
                            163 	.globl _PCA0CPM0
                            164 	.globl _PCA0MD
                            165 	.globl _PCA0CN
                            166 	.globl _P0MAT
                            167 	.globl _P2SKIP
                            168 	.globl _P1SKIP
                            169 	.globl _P0SKIP
                            170 	.globl _PCA0CPH5
                            171 	.globl _PCA0CPL5
                            172 	.globl _REF0CN
                            173 	.globl _PSW
                            174 	.globl _P1MAT
                            175 	.globl _PCA0CPM5
                            176 	.globl _TMR2H
                            177 	.globl _TMR2L
                            178 	.globl _TMR2RLH
                            179 	.globl _TMR2RLL
                            180 	.globl _REG0CN
                            181 	.globl _TMR2CN
                            182 	.globl _P0MASK
                            183 	.globl _ADC0LTH
                            184 	.globl _ADC0LTL
                            185 	.globl _ADC0GTH
                            186 	.globl _ADC0GTL
                            187 	.globl _SMB0DAT
                            188 	.globl _SMB0CF
                            189 	.globl _SMB0CN
                            190 	.globl _P1MASK
                            191 	.globl _ADC0H
                            192 	.globl _ADC0L
                            193 	.globl _ADC0TK
                            194 	.globl _ADC0CF
                            195 	.globl _ADC0MX
                            196 	.globl _ADC0PWR
                            197 	.globl _ADC0AC
                            198 	.globl _IREF0CN
                            199 	.globl _IP
                            200 	.globl _FLKEY
                            201 	.globl _FLSCL
                            202 	.globl _PMU0CF
                            203 	.globl _OSCICL
                            204 	.globl _OSCICN
                            205 	.globl _OSCXCN
                            206 	.globl _SPI1CN
                            207 	.globl _ONESHOT
                            208 	.globl _EMI0TC
                            209 	.globl _RTC0KEY
                            210 	.globl _RTC0DAT
                            211 	.globl _RTC0ADR
                            212 	.globl _EMI0CF
                            213 	.globl _EMI0CN
                            214 	.globl _CLKSEL
                            215 	.globl _IE
                            216 	.globl _SFRPAGE
                            217 	.globl _P2DRV
                            218 	.globl _P2MDOUT
                            219 	.globl _P1DRV
                            220 	.globl _P1MDOUT
                            221 	.globl _P0DRV
                            222 	.globl _P0MDOUT
                            223 	.globl _SPI0DAT
                            224 	.globl _SPI0CKR
                            225 	.globl _SPI0CFG
                            226 	.globl _P2
                            227 	.globl _CPT0MX
                            228 	.globl _CPT1MX
                            229 	.globl _CPT0MD
                            230 	.globl _CPT1MD
                            231 	.globl _CPT0CN
                            232 	.globl _CPT1CN
                            233 	.globl _SBUF0
                            234 	.globl _SCON0
                            235 	.globl _CRC0CNT
                            236 	.globl _DC0CN
                            237 	.globl _CRC0AUTO
                            238 	.globl _DC0CF
                            239 	.globl _TMR3H
                            240 	.globl _CRC0FLIP
                            241 	.globl _TMR3L
                            242 	.globl _CRC0IN
                            243 	.globl _TMR3RLH
                            244 	.globl _CRC0CN
                            245 	.globl _TMR3RLL
                            246 	.globl _CRC0DAT
                            247 	.globl _TMR3CN
                            248 	.globl _P1
                            249 	.globl _PSCTL
                            250 	.globl _CKCON
                            251 	.globl _TH1
                            252 	.globl _TH0
                            253 	.globl _TL1
                            254 	.globl _TL0
                            255 	.globl _TMOD
                            256 	.globl _TCON
                            257 	.globl _PCON
                            258 	.globl _TOFFH
                            259 	.globl _SPI1DAT
                            260 	.globl _TOFFL
                            261 	.globl _SPI1CKR
                            262 	.globl _SPI1CFG
                            263 	.globl _DPH
                            264 	.globl _DPL
                            265 	.globl _SP
                            266 	.globl _P0
                            267 	.globl _printf_start_capture_PARM_2
                            268 	.globl _printf_start_capture
                            269 	.globl _printf_end_capture
                            270 	.globl _vprintfl
                            271 	.globl _printfl
                            272 ;--------------------------------------------------------
                            273 ; special function registers
                            274 ;--------------------------------------------------------
                            275 	.area RSEG    (ABS,DATA)
   0000                     276 	.org 0x0000
                     0080   277 _P0	=	0x0080
                     0081   278 _SP	=	0x0081
                     0082   279 _DPL	=	0x0082
                     0083   280 _DPH	=	0x0083
                     0084   281 _SPI1CFG	=	0x0084
                     0085   282 _SPI1CKR	=	0x0085
                     0085   283 _TOFFL	=	0x0085
                     0086   284 _SPI1DAT	=	0x0086
                     0086   285 _TOFFH	=	0x0086
                     0087   286 _PCON	=	0x0087
                     0088   287 _TCON	=	0x0088
                     0089   288 _TMOD	=	0x0089
                     008A   289 _TL0	=	0x008a
                     008B   290 _TL1	=	0x008b
                     008C   291 _TH0	=	0x008c
                     008D   292 _TH1	=	0x008d
                     008E   293 _CKCON	=	0x008e
                     008F   294 _PSCTL	=	0x008f
                     0090   295 _P1	=	0x0090
                     0091   296 _TMR3CN	=	0x0091
                     0091   297 _CRC0DAT	=	0x0091
                     0092   298 _TMR3RLL	=	0x0092
                     0092   299 _CRC0CN	=	0x0092
                     0093   300 _TMR3RLH	=	0x0093
                     0093   301 _CRC0IN	=	0x0093
                     0094   302 _TMR3L	=	0x0094
                     0095   303 _CRC0FLIP	=	0x0095
                     0095   304 _TMR3H	=	0x0095
                     0096   305 _DC0CF	=	0x0096
                     0096   306 _CRC0AUTO	=	0x0096
                     0097   307 _DC0CN	=	0x0097
                     0097   308 _CRC0CNT	=	0x0097
                     0098   309 _SCON0	=	0x0098
                     0099   310 _SBUF0	=	0x0099
                     009A   311 _CPT1CN	=	0x009a
                     009B   312 _CPT0CN	=	0x009b
                     009C   313 _CPT1MD	=	0x009c
                     009D   314 _CPT0MD	=	0x009d
                     009E   315 _CPT1MX	=	0x009e
                     009F   316 _CPT0MX	=	0x009f
                     00A0   317 _P2	=	0x00a0
                     00A1   318 _SPI0CFG	=	0x00a1
                     00A2   319 _SPI0CKR	=	0x00a2
                     00A3   320 _SPI0DAT	=	0x00a3
                     00A4   321 _P0MDOUT	=	0x00a4
                     00A4   322 _P0DRV	=	0x00a4
                     00A5   323 _P1MDOUT	=	0x00a5
                     00A5   324 _P1DRV	=	0x00a5
                     00A6   325 _P2MDOUT	=	0x00a6
                     00A6   326 _P2DRV	=	0x00a6
                     00A7   327 _SFRPAGE	=	0x00a7
                     00A8   328 _IE	=	0x00a8
                     00A9   329 _CLKSEL	=	0x00a9
                     00AA   330 _EMI0CN	=	0x00aa
                     00AB   331 _EMI0CF	=	0x00ab
                     00AC   332 _RTC0ADR	=	0x00ac
                     00AD   333 _RTC0DAT	=	0x00ad
                     00AE   334 _RTC0KEY	=	0x00ae
                     00AF   335 _EMI0TC	=	0x00af
                     00AF   336 _ONESHOT	=	0x00af
                     00B0   337 _SPI1CN	=	0x00b0
                     00B1   338 _OSCXCN	=	0x00b1
                     00B2   339 _OSCICN	=	0x00b2
                     00B3   340 _OSCICL	=	0x00b3
                     00B5   341 _PMU0CF	=	0x00b5
                     00B6   342 _FLSCL	=	0x00b6
                     00B7   343 _FLKEY	=	0x00b7
                     00B8   344 _IP	=	0x00b8
                     00B9   345 _IREF0CN	=	0x00b9
                     00BA   346 _ADC0AC	=	0x00ba
                     00BA   347 _ADC0PWR	=	0x00ba
                     00BB   348 _ADC0MX	=	0x00bb
                     00BC   349 _ADC0CF	=	0x00bc
                     00BD   350 _ADC0TK	=	0x00bd
                     00BD   351 _ADC0L	=	0x00bd
                     00BE   352 _ADC0H	=	0x00be
                     00BF   353 _P1MASK	=	0x00bf
                     00C0   354 _SMB0CN	=	0x00c0
                     00C1   355 _SMB0CF	=	0x00c1
                     00C2   356 _SMB0DAT	=	0x00c2
                     00C3   357 _ADC0GTL	=	0x00c3
                     00C4   358 _ADC0GTH	=	0x00c4
                     00C5   359 _ADC0LTL	=	0x00c5
                     00C6   360 _ADC0LTH	=	0x00c6
                     00C7   361 _P0MASK	=	0x00c7
                     00C8   362 _TMR2CN	=	0x00c8
                     00C9   363 _REG0CN	=	0x00c9
                     00CA   364 _TMR2RLL	=	0x00ca
                     00CB   365 _TMR2RLH	=	0x00cb
                     00CC   366 _TMR2L	=	0x00cc
                     00CD   367 _TMR2H	=	0x00cd
                     00CE   368 _PCA0CPM5	=	0x00ce
                     00CF   369 _P1MAT	=	0x00cf
                     00D0   370 _PSW	=	0x00d0
                     00D1   371 _REF0CN	=	0x00d1
                     00D2   372 _PCA0CPL5	=	0x00d2
                     00D3   373 _PCA0CPH5	=	0x00d3
                     00D4   374 _P0SKIP	=	0x00d4
                     00D5   375 _P1SKIP	=	0x00d5
                     00D6   376 _P2SKIP	=	0x00d6
                     00D7   377 _P0MAT	=	0x00d7
                     00D8   378 _PCA0CN	=	0x00d8
                     00D9   379 _PCA0MD	=	0x00d9
                     00DA   380 _PCA0CPM0	=	0x00da
                     00DB   381 _PCA0CPM1	=	0x00db
                     00DC   382 _PCA0CPM2	=	0x00dc
                     00DD   383 _PCA0CPM3	=	0x00dd
                     00DE   384 _PCA0CPM4	=	0x00de
                     00DF   385 _PCA0PWM	=	0x00df
                     00E0   386 _ACC	=	0x00e0
                     00E1   387 _XBR0	=	0x00e1
                     00E2   388 _XBR1	=	0x00e2
                     00E3   389 _XBR2	=	0x00e3
                     00E4   390 _IT01CF	=	0x00e4
                     00E5   391 _FLWR	=	0x00e5
                     00E6   392 _EIE1	=	0x00e6
                     00E7   393 _EIE2	=	0x00e7
                     00E8   394 _ADC0CN	=	0x00e8
                     00E9   395 _PCA0CPL1	=	0x00e9
                     00EA   396 _PCA0CPH1	=	0x00ea
                     00EB   397 _PCA0CPL2	=	0x00eb
                     00EC   398 _PCA0CPH2	=	0x00ec
                     00ED   399 _PCA0CPL3	=	0x00ed
                     00EE   400 _PCA0CPH3	=	0x00ee
                     00EF   401 _RSTSRC	=	0x00ef
                     00F0   402 _B	=	0x00f0
                     00F1   403 _P0MDIN	=	0x00f1
                     00F2   404 _P1MDIN	=	0x00f2
                     00F3   405 _P2MDIN	=	0x00f3
                     00F4   406 _SMB0ADR	=	0x00f4
                     00F5   407 _SMB0ADM	=	0x00f5
                     00F6   408 _EIP1	=	0x00f6
                     00F7   409 _EIP2	=	0x00f7
                     00F8   410 _SPI0CN	=	0x00f8
                     00F9   411 _PCA0L	=	0x00f9
                     00FA   412 _PCA0H	=	0x00fa
                     00FB   413 _PCA0CPL0	=	0x00fb
                     00FC   414 _PCA0CPH0	=	0x00fc
                     00FD   415 _PCA0CPL4	=	0x00fd
                     00FE   416 _PCA0CPH4	=	0x00fe
                     00FF   417 _VDM0CN	=	0x00ff
                     8382   418 _DP	=	0x8382
                     8685   419 _TOFF	=	0x8685
                     9392   420 _TMR3RL	=	0x9392
                     9594   421 _TMR3	=	0x9594
                     BEBD   422 _ADC0	=	0xbebd
                     C4C3   423 _ADC0GT	=	0xc4c3
                     C6C5   424 _ADC0LT	=	0xc6c5
                     CBCA   425 _TMR2RL	=	0xcbca
                     CDCC   426 _TMR2	=	0xcdcc
                     D3D2   427 _PCA0CP5	=	0xd3d2
                     EAE9   428 _PCA0CP1	=	0xeae9
                     ECEB   429 _PCA0CP2	=	0xeceb
                     EEED   430 _PCA0CP3	=	0xeeed
                     FAF9   431 _PCA0	=	0xfaf9
                     FCFB   432 _PCA0CP0	=	0xfcfb
                     FEFD   433 _PCA0CP4	=	0xfefd
                            434 ;--------------------------------------------------------
                            435 ; special function bits
                            436 ;--------------------------------------------------------
                            437 	.area RSEG    (ABS,DATA)
   0000                     438 	.org 0x0000
                     008F   439 _TF1	=	0x008f
                     008E   440 _TR1	=	0x008e
                     008D   441 _TF0	=	0x008d
                     008C   442 _TR0	=	0x008c
                     008B   443 _IE1	=	0x008b
                     008A   444 _IT1	=	0x008a
                     0089   445 _IE0	=	0x0089
                     0088   446 _IT0	=	0x0088
                     0096   447 _CRC0SEL	=	0x0096
                     0095   448 _CRC0INIT	=	0x0095
                     0094   449 _CRC0VAL	=	0x0094
                     009F   450 _S0MODE	=	0x009f
                     009D   451 _MCE0	=	0x009d
                     009C   452 _REN0	=	0x009c
                     009B   453 _TB80	=	0x009b
                     009A   454 _RB80	=	0x009a
                     0099   455 _TI0	=	0x0099
                     0098   456 _RI0	=	0x0098
                     00AF   457 _EA	=	0x00af
                     00AE   458 _ESPI0	=	0x00ae
                     00AD   459 _ET2	=	0x00ad
                     00AC   460 _ES0	=	0x00ac
                     00AB   461 _ET1	=	0x00ab
                     00AA   462 _EX1	=	0x00aa
                     00A9   463 _ET0	=	0x00a9
                     00A8   464 _EX0	=	0x00a8
                     00B7   465 _SPIF1	=	0x00b7
                     00B6   466 _WCOL1	=	0x00b6
                     00B5   467 _MODF1	=	0x00b5
                     00B4   468 _RXOVRN1	=	0x00b4
                     00B3   469 _NSS1MD1	=	0x00b3
                     00B2   470 _NSS1MD0	=	0x00b2
                     00B1   471 _TXBMT1	=	0x00b1
                     00B0   472 _SPI1EN	=	0x00b0
                     00BE   473 _PSPI0	=	0x00be
                     00BD   474 _PT2	=	0x00bd
                     00BC   475 _PS0	=	0x00bc
                     00BB   476 _PT1	=	0x00bb
                     00BA   477 _PX1	=	0x00ba
                     00B9   478 _PT0	=	0x00b9
                     00B8   479 _PX0	=	0x00b8
                     00C7   480 _MASTER	=	0x00c7
                     00C6   481 _TXMODE	=	0x00c6
                     00C5   482 _STA	=	0x00c5
                     00C4   483 _STO	=	0x00c4
                     00C3   484 _ACKRQ	=	0x00c3
                     00C2   485 _ARBLOST	=	0x00c2
                     00C1   486 _ACK	=	0x00c1
                     00C0   487 _SI	=	0x00c0
                     00CF   488 _TF2H	=	0x00cf
                     00CE   489 _TF2L	=	0x00ce
                     00CD   490 _TF2LEN	=	0x00cd
                     00CC   491 _TF2CEN	=	0x00cc
                     00CB   492 _T2SPLIT	=	0x00cb
                     00CA   493 _TR2	=	0x00ca
                     00C9   494 _T2RCLK	=	0x00c9
                     00C8   495 _T2XCLK	=	0x00c8
                     00D7   496 _CY	=	0x00d7
                     00D6   497 _AC	=	0x00d6
                     00D5   498 _F0	=	0x00d5
                     00D4   499 _RS1	=	0x00d4
                     00D3   500 _RS0	=	0x00d3
                     00D2   501 _OV	=	0x00d2
                     00D1   502 _F1	=	0x00d1
                     00D0   503 _P	=	0x00d0
                     00DF   504 _CF	=	0x00df
                     00DE   505 _CR	=	0x00de
                     00DD   506 _CCF5	=	0x00dd
                     00DC   507 _CCF4	=	0x00dc
                     00DB   508 _CCF3	=	0x00db
                     00DA   509 _CCF2	=	0x00da
                     00D9   510 _CCF1	=	0x00d9
                     00D8   511 _CCF0	=	0x00d8
                     00EF   512 _AD0EN	=	0x00ef
                     00EE   513 _BURSTEN	=	0x00ee
                     00ED   514 _AD0INT	=	0x00ed
                     00EC   515 _AD0BUSY	=	0x00ec
                     00EB   516 _AD0WINT	=	0x00eb
                     00EA   517 _AD0CM2	=	0x00ea
                     00E9   518 _AD0CM1	=	0x00e9
                     00E8   519 _AD0CM0	=	0x00e8
                     00FF   520 _SPIF0	=	0x00ff
                     00FE   521 _WCOL0	=	0x00fe
                     00FD   522 _MODF0	=	0x00fd
                     00FC   523 _RXOVRN0	=	0x00fc
                     00FB   524 _NSS0MD1	=	0x00fb
                     00FA   525 _NSS0MD0	=	0x00fa
                     00F9   526 _TXBMT0	=	0x00f9
                     00F8   527 _SPI0EN	=	0x00f8
                     0096   528 _LED_RED	=	0x0096
                     0095   529 _LED_GREEN	=	0x0095
                     0082   530 _PIN_CONFIG	=	0x0082
                     0083   531 _PIN_ENABLE	=	0x0083
                     0087   532 _IRQ	=	0x0087
                     0094   533 _NSS1	=	0x0094
                            534 ;--------------------------------------------------------
                            535 ; overlayable register banks
                            536 ;--------------------------------------------------------
                            537 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     538 	.ds 8
                            539 ;--------------------------------------------------------
                            540 ; internal ram data
                            541 ;--------------------------------------------------------
                            542 	.area DSEG    (DATA)
   0044                     543 _radix:
   0044                     544 	.ds 1
   0045                     545 _str:
   0045                     546 	.ds 3
   0048                     547 _val:
   0048                     548 	.ds 4
                            549 ;--------------------------------------------------------
                            550 ; overlayable items in internal ram 
                            551 ;--------------------------------------------------------
                            552 ;--------------------------------------------------------
                            553 ; indirectly addressable internal ram data
                            554 ;--------------------------------------------------------
                            555 	.area ISEG    (DATA)
   0080                     556 _vprintfl_buffer_4_139:
   0080                     557 	.ds 12
                            558 ;--------------------------------------------------------
                            559 ; absolute internal ram data
                            560 ;--------------------------------------------------------
                            561 	.area IABS    (ABS,DATA)
                            562 	.area IABS    (ABS,DATA)
                            563 ;--------------------------------------------------------
                            564 ; bit data
                            565 ;--------------------------------------------------------
                            566 	.area BSEG    (BIT)
   0011                     567 _long_flag:
   0011                     568 	.ds 1
   0012                     569 _string_flag:
   0012                     570 	.ds 1
   0013                     571 _char_flag:
   0013                     572 	.ds 1
   0014                     573 _unsigned_flag:
   0014                     574 	.ds 1
   0015                     575 _capture:
   0015                     576 	.ds 1
                            577 ;--------------------------------------------------------
                            578 ; paged external ram data
                            579 ;--------------------------------------------------------
                            580 	.area PSEG    (PAG,XDATA)
   0077                     581 _capture_buffer_size:
   0077                     582 	.ds 1
   0078                     583 _captured_size:
   0078                     584 	.ds 1
                            585 ;--------------------------------------------------------
                            586 ; external ram data
                            587 ;--------------------------------------------------------
                            588 	.area XSEG    (XDATA)
   035F                     589 _capture_buffer:
   035F                     590 	.ds 2
   0361                     591 _printf_start_capture_PARM_2:
   0361                     592 	.ds 1
   0362                     593 _printf_start_capture_buf_1_120:
   0362                     594 	.ds 2
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
                            620 ;	radio/printfl.c:50: static __bit long_flag = 0;
   04DC C2 11         [12]  621 	clr	_long_flag
                            622 ;	radio/printfl.c:51: static __bit string_flag = 0;
   04DE C2 12         [12]  623 	clr	_string_flag
                            624 ;	radio/printfl.c:52: static __bit char_flag = 0;
   04E0 C2 13         [12]  625 	clr	_char_flag
                            626 ;	radio/printfl.c:53: static __bit unsigned_flag = 0;
   04E2 C2 14         [12]  627 	clr	_unsigned_flag
                            628 ;--------------------------------------------------------
                            629 ; Home
                            630 ;--------------------------------------------------------
                            631 	.area HOME    (CODE)
                            632 	.area HOME    (CODE)
                            633 ;--------------------------------------------------------
                            634 ; code
                            635 ;--------------------------------------------------------
                            636 	.area CSEG    (CODE)
                            637 ;------------------------------------------------------------
                            638 ;Allocation info for local variables in function 'output_char'
                            639 ;------------------------------------------------------------
                            640 ;c                         Allocated to registers r7 
                            641 ;------------------------------------------------------------
                            642 ;	radio/printfl.c:65: output_char(register char c)
                            643 ;	-----------------------------------------
                            644 ;	 function output_char
                            645 ;	-----------------------------------------
   2ACD                     646 _output_char:
                     0007   647 	ar7 = 0x07
                     0006   648 	ar6 = 0x06
                     0005   649 	ar5 = 0x05
                     0004   650 	ar4 = 0x04
                     0003   651 	ar3 = 0x03
                     0002   652 	ar2 = 0x02
                     0001   653 	ar1 = 0x01
                     0000   654 	ar0 = 0x00
   2ACD AF 82         [24]  655 	mov	r7,dpl
                            656 ;	radio/printfl.c:67: if (!capture) {
   2ACF 20 15 05      [24]  657 	jb	_capture,00102$
                            658 ;	radio/printfl.c:68: putchar(c);
   2AD2 8F 82         [24]  659 	mov	dpl,r7
                            660 ;	radio/printfl.c:69: return;
   2AD4 02 44 E0      [24]  661 	ljmp	_putchar
   2AD7                     662 00102$:
                            663 ;	radio/printfl.c:71: if (captured_size < capture_buffer_size) {
   2AD7 78 78         [12]  664 	mov	r0,#_captured_size
   2AD9 79 77         [12]  665 	mov	r1,#_capture_buffer_size
   2ADB C3            [12]  666 	clr	c
   2ADC E3            [24]  667 	movx	a,@r1
   2ADD F5 F0         [12]  668 	mov	b,a
   2ADF E2            [24]  669 	movx	a,@r0
   2AE0 95 F0         [12]  670 	subb	a,b
   2AE2 50 1A         [24]  671 	jnc	00105$
                            672 ;	radio/printfl.c:72: capture_buffer[captured_size++] = c;
   2AE4 78 78         [12]  673 	mov	r0,#_captured_size
   2AE6 E2            [24]  674 	movx	a,@r0
   2AE7 FE            [12]  675 	mov	r6,a
   2AE8 78 78         [12]  676 	mov	r0,#_captured_size
   2AEA 04            [12]  677 	inc	a
   2AEB F2            [24]  678 	movx	@r0,a
   2AEC 90 03 5F      [24]  679 	mov	dptr,#_capture_buffer
   2AEF E0            [24]  680 	movx	a,@dptr
   2AF0 FC            [12]  681 	mov	r4,a
   2AF1 A3            [24]  682 	inc	dptr
   2AF2 E0            [24]  683 	movx	a,@dptr
   2AF3 FD            [12]  684 	mov	r5,a
   2AF4 EE            [12]  685 	mov	a,r6
   2AF5 2C            [12]  686 	add	a,r4
   2AF6 F5 82         [12]  687 	mov	dpl,a
   2AF8 E4            [12]  688 	clr	a
   2AF9 3D            [12]  689 	addc	a,r5
   2AFA F5 83         [12]  690 	mov	dph,a
   2AFC EF            [12]  691 	mov	a,r7
   2AFD F0            [24]  692 	movx	@dptr,a
   2AFE                     693 00105$:
   2AFE 22            [24]  694 	ret
                            695 ;------------------------------------------------------------
                            696 ;Allocation info for local variables in function 'printf_start_capture'
                            697 ;------------------------------------------------------------
                            698 ;size                      Allocated with name '_printf_start_capture_PARM_2'
                            699 ;buf                       Allocated with name '_printf_start_capture_buf_1_120'
                            700 ;------------------------------------------------------------
                            701 ;	radio/printfl.c:78: printf_start_capture(__xdata uint8_t *buf, uint8_t size)
                            702 ;	-----------------------------------------
                            703 ;	 function printf_start_capture
                            704 ;	-----------------------------------------
   2AFF                     705 _printf_start_capture:
   2AFF AF 83         [24]  706 	mov	r7,dph
   2B01 E5 82         [12]  707 	mov	a,dpl
   2B03 90 03 62      [24]  708 	mov	dptr,#_printf_start_capture_buf_1_120
   2B06 F0            [24]  709 	movx	@dptr,a
   2B07 EF            [12]  710 	mov	a,r7
   2B08 A3            [24]  711 	inc	dptr
   2B09 F0            [24]  712 	movx	@dptr,a
                            713 ;	radio/printfl.c:80: capture_buffer = buf;
   2B0A 90 03 62      [24]  714 	mov	dptr,#_printf_start_capture_buf_1_120
   2B0D E0            [24]  715 	movx	a,@dptr
   2B0E FE            [12]  716 	mov	r6,a
   2B0F A3            [24]  717 	inc	dptr
   2B10 E0            [24]  718 	movx	a,@dptr
   2B11 FF            [12]  719 	mov	r7,a
   2B12 90 03 5F      [24]  720 	mov	dptr,#_capture_buffer
   2B15 EE            [12]  721 	mov	a,r6
   2B16 F0            [24]  722 	movx	@dptr,a
   2B17 EF            [12]  723 	mov	a,r7
   2B18 A3            [24]  724 	inc	dptr
   2B19 F0            [24]  725 	movx	@dptr,a
                            726 ;	radio/printfl.c:81: captured_size = 0;
   2B1A 78 78         [12]  727 	mov	r0,#_captured_size
   2B1C E4            [12]  728 	clr	a
   2B1D F2            [24]  729 	movx	@r0,a
                            730 ;	radio/printfl.c:82: capture_buffer_size = size;
   2B1E 90 03 61      [24]  731 	mov	dptr,#_printf_start_capture_PARM_2
   2B21 E0            [24]  732 	movx	a,@dptr
   2B22 78 77         [12]  733 	mov	r0,#_capture_buffer_size
   2B24 F2            [24]  734 	movx	@r0,a
                            735 ;	radio/printfl.c:83: capture = true;
   2B25 D2 15         [12]  736 	setb	_capture
   2B27 22            [24]  737 	ret
                            738 ;------------------------------------------------------------
                            739 ;Allocation info for local variables in function 'printf_end_capture'
                            740 ;------------------------------------------------------------
                            741 ;	radio/printfl.c:88: printf_end_capture(void)
                            742 ;	-----------------------------------------
                            743 ;	 function printf_end_capture
                            744 ;	-----------------------------------------
   2B28                     745 _printf_end_capture:
                            746 ;	radio/printfl.c:90: capture = false;
   2B28 C2 15         [12]  747 	clr	_capture
                            748 ;	radio/printfl.c:91: return captured_size;
   2B2A 78 78         [12]  749 	mov	r0,#_captured_size
   2B2C E2            [24]  750 	movx	a,@r0
   2B2D F5 82         [12]  751 	mov	dpl,a
   2B2F 22            [24]  752 	ret
                            753 ;------------------------------------------------------------
                            754 ;Allocation info for local variables in function 'vprintfl'
                            755 ;------------------------------------------------------------
                            756 ;ap                        Allocated to stack - sp -2
                            757 ;fmt                       Allocated to registers r5 r6 r7 
                            758 ;stri                      Allocated to registers 
                            759 ;buffer                    Allocated with name '_vprintfl_buffer_4_139'
                            760 ;------------------------------------------------------------
                            761 ;	radio/printfl.c:95: vprintfl(const char * fmt, va_list ap) __reentrant
                            762 ;	-----------------------------------------
                            763 ;	 function vprintfl
                            764 ;	-----------------------------------------
   2B30                     765 _vprintfl:
   2B30 AD 82         [24]  766 	mov	r5,dpl
   2B32 AE 83         [24]  767 	mov	r6,dph
   2B34 AF F0         [24]  768 	mov	r7,b
   2B36                     769 00146$:
                            770 ;	radio/printfl.c:98: for (; *fmt; fmt++) {
   2B36 8D 82         [24]  771 	mov	dpl,r5
   2B38 8E 83         [24]  772 	mov	dph,r6
   2B3A 8F F0         [24]  773 	mov	b,r7
   2B3C 12 64 DB      [24]  774 	lcall	__gptrget
   2B3F FC            [12]  775 	mov	r4,a
   2B40 70 01         [24]  776 	jnz	00219$
   2B42 22            [24]  777 	ret
   2B43                     778 00219$:
                            779 ;	radio/printfl.c:99: if (*fmt == '%') {
   2B43 BC 25 02      [24]  780 	cjne	r4,#0x25,00220$
   2B46 80 03         [24]  781 	sjmp	00221$
   2B48                     782 00220$:
   2B48 02 2D 9F      [24]  783 	ljmp	00141$
   2B4B                     784 00221$:
                            785 ;	radio/printfl.c:100: long_flag = string_flag = char_flag = unsigned_flag = 0;
   2B4B C2 14         [12]  786 	clr	_unsigned_flag
   2B4D C2 13         [12]  787 	clr	_char_flag
   2B4F C2 12         [12]  788 	clr	_string_flag
   2B51 C2 11         [12]  789 	clr	_long_flag
                            790 ;	radio/printfl.c:101: fmt++;
   2B53 0D            [12]  791 	inc	r5
   2B54 BD 00 01      [24]  792 	cjne	r5,#0x00,00222$
   2B57 0E            [12]  793 	inc	r6
   2B58                     794 00222$:
                            795 ;	radio/printfl.c:102: switch (*fmt) {
   2B58 8D 82         [24]  796 	mov	dpl,r5
   2B5A 8E 83         [24]  797 	mov	dph,r6
   2B5C 8F F0         [24]  798 	mov	b,r7
   2B5E 12 64 DB      [24]  799 	lcall	__gptrget
   2B61 FB            [12]  800 	mov	r3,a
   2B62 BB 68 02      [24]  801 	cjne	r3,#0x68,00223$
   2B65 80 0C         [24]  802 	sjmp	00102$
   2B67                     803 00223$:
   2B67 BB 6C 10      [24]  804 	cjne	r3,#0x6C,00103$
                            805 ;	radio/printfl.c:104: long_flag = 1;
   2B6A D2 11         [12]  806 	setb	_long_flag
                            807 ;	radio/printfl.c:105: fmt++;
   2B6C 0D            [12]  808 	inc	r5
                            809 ;	radio/printfl.c:106: break;
                            810 ;	radio/printfl.c:107: case 'h':
   2B6D BD 00 0A      [24]  811 	cjne	r5,#0x00,00103$
   2B70 0E            [12]  812 	inc	r6
   2B71 80 07         [24]  813 	sjmp	00103$
   2B73                     814 00102$:
                            815 ;	radio/printfl.c:108: char_flag = 1;
   2B73 D2 13         [12]  816 	setb	_char_flag
                            817 ;	radio/printfl.c:109: fmt++;
   2B75 0D            [12]  818 	inc	r5
   2B76 BD 00 01      [24]  819 	cjne	r5,#0x00,00227$
   2B79 0E            [12]  820 	inc	r6
   2B7A                     821 00227$:
                            822 ;	radio/printfl.c:110: }
   2B7A                     823 00103$:
                            824 ;	radio/printfl.c:112: switch (*fmt) {
   2B7A 8D 82         [24]  825 	mov	dpl,r5
   2B7C 8E 83         [24]  826 	mov	dph,r6
   2B7E 8F F0         [24]  827 	mov	b,r7
   2B80 12 64 DB      [24]  828 	lcall	__gptrget
   2B83 FB            [12]  829 	mov	r3,a
   2B84 BB 63 02      [24]  830 	cjne	r3,#0x63,00228$
   2B87 80 30         [24]  831 	sjmp	00108$
   2B89                     832 00228$:
   2B89 BB 64 02      [24]  833 	cjne	r3,#0x64,00229$
   2B8C 80 18         [24]  834 	sjmp	00105$
   2B8E                     835 00229$:
   2B8E BB 6F 02      [24]  836 	cjne	r3,#0x6F,00230$
   2B91 80 2B         [24]  837 	sjmp	00109$
   2B93                     838 00230$:
   2B93 BB 73 02      [24]  839 	cjne	r3,#0x73,00231$
   2B96 80 0A         [24]  840 	sjmp	00104$
   2B98                     841 00231$:
   2B98 BB 75 02      [24]  842 	cjne	r3,#0x75,00232$
   2B9B 80 0E         [24]  843 	sjmp	00106$
   2B9D                     844 00232$:
                            845 ;	radio/printfl.c:113: case 's':
   2B9D BB 78 23      [24]  846 	cjne	r3,#0x78,00110$
   2BA0 80 10         [24]  847 	sjmp	00107$
   2BA2                     848 00104$:
                            849 ;	radio/printfl.c:114: string_flag = 1;
   2BA2 D2 12         [12]  850 	setb	_string_flag
                            851 ;	radio/printfl.c:115: break;
                            852 ;	radio/printfl.c:116: case 'd':
   2BA4 80 1D         [24]  853 	sjmp	00110$
   2BA6                     854 00105$:
                            855 ;	radio/printfl.c:117: radix = 10;
   2BA6 75 44 0A      [24]  856 	mov	_radix,#0x0A
                            857 ;	radio/printfl.c:118: break;
                            858 ;	radio/printfl.c:119: case 'u':
   2BA9 80 18         [24]  859 	sjmp	00110$
   2BAB                     860 00106$:
                            861 ;	radio/printfl.c:120: radix = 10;
   2BAB 75 44 0A      [24]  862 	mov	_radix,#0x0A
                            863 ;	radio/printfl.c:121: unsigned_flag = 1;
   2BAE D2 14         [12]  864 	setb	_unsigned_flag
                            865 ;	radio/printfl.c:122: break;
                            866 ;	radio/printfl.c:123: case 'x':
   2BB0 80 11         [24]  867 	sjmp	00110$
   2BB2                     868 00107$:
                            869 ;	radio/printfl.c:124: radix = 16;
   2BB2 75 44 10      [24]  870 	mov	_radix,#0x10
                            871 ;	radio/printfl.c:125: unsigned_flag = 1;
   2BB5 D2 14         [12]  872 	setb	_unsigned_flag
                            873 ;	radio/printfl.c:126: break;
                            874 ;	radio/printfl.c:127: case 'c':
   2BB7 80 0A         [24]  875 	sjmp	00110$
   2BB9                     876 00108$:
                            877 ;	radio/printfl.c:128: radix = 0;
   2BB9 75 44 00      [24]  878 	mov	_radix,#0x00
                            879 ;	radio/printfl.c:129: break;
                            880 ;	radio/printfl.c:130: case 'o':
   2BBC 80 05         [24]  881 	sjmp	00110$
   2BBE                     882 00109$:
                            883 ;	radio/printfl.c:131: radix = 8;
   2BBE 75 44 08      [24]  884 	mov	_radix,#0x08
                            885 ;	radio/printfl.c:132: unsigned_flag = 1;
   2BC1 D2 14         [12]  886 	setb	_unsigned_flag
                            887 ;	radio/printfl.c:134: }
   2BC3                     888 00110$:
                            889 ;	radio/printfl.c:136: if (string_flag) {
   2BC3 30 12 71      [24]  890 	jnb	_string_flag,00115$
                            891 ;	radio/printfl.c:137: str = va_arg(ap, char *);
   2BC6 A8 81         [24]  892 	mov	r0,sp
   2BC8 18            [12]  893 	dec	r0
   2BC9 18            [12]  894 	dec	r0
   2BCA E6            [12]  895 	mov	a,@r0
   2BCB 24 FD         [12]  896 	add	a,#0xFD
   2BCD FB            [12]  897 	mov	r3,a
   2BCE A8 81         [24]  898 	mov	r0,sp
   2BD0 18            [12]  899 	dec	r0
   2BD1 18            [12]  900 	dec	r0
   2BD2 A6 03         [24]  901 	mov	@r0,ar3
   2BD4 8B 01         [24]  902 	mov	ar1,r3
   2BD6 87 45         [24]  903 	mov	_str,@r1
   2BD8 09            [12]  904 	inc	r1
   2BD9 87 46         [24]  905 	mov	(_str + 1),@r1
   2BDB 09            [12]  906 	inc	r1
   2BDC 87 47         [24]  907 	mov	(_str + 2),@r1
   2BDE 19            [12]  908 	dec	r1
   2BDF 19            [12]  909 	dec	r1
                            910 ;	radio/printfl.c:138: while (*str)
   2BE0                     911 00111$:
   2BE0 C0 05         [24]  912 	push	ar5
   2BE2 C0 06         [24]  913 	push	ar6
   2BE4 C0 07         [24]  914 	push	ar7
   2BE6 AA 45         [24]  915 	mov	r2,_str
   2BE8 AB 46         [24]  916 	mov	r3,(_str + 1)
   2BEA AF 47         [24]  917 	mov	r7,(_str + 2)
   2BEC 8A 82         [24]  918 	mov	dpl,r2
   2BEE 8B 83         [24]  919 	mov	dph,r3
   2BF0 8F F0         [24]  920 	mov	b,r7
   2BF2 12 64 DB      [24]  921 	lcall	__gptrget
   2BF5 D0 07         [24]  922 	pop	ar7
   2BF7 D0 06         [24]  923 	pop	ar6
   2BF9 D0 05         [24]  924 	pop	ar5
   2BFB 70 03         [24]  925 	jnz	00235$
   2BFD 02 2D B0      [24]  926 	ljmp	00143$
   2C00                     927 00235$:
                            928 ;	radio/printfl.c:139: output_char(*str++);
   2C00 C0 05         [24]  929 	push	ar5
   2C02 C0 06         [24]  930 	push	ar6
   2C04 C0 07         [24]  931 	push	ar7
   2C06 AA 45         [24]  932 	mov	r2,_str
   2C08 AB 46         [24]  933 	mov	r3,(_str + 1)
   2C0A AF 47         [24]  934 	mov	r7,(_str + 2)
   2C0C 8A 82         [24]  935 	mov	dpl,r2
   2C0E 8B 83         [24]  936 	mov	dph,r3
   2C10 8F F0         [24]  937 	mov	b,r7
   2C12 12 64 DB      [24]  938 	lcall	__gptrget
   2C15 FA            [12]  939 	mov	r2,a
   2C16 05 45         [12]  940 	inc	_str
   2C18 E4            [12]  941 	clr	a
   2C19 B5 45 02      [24]  942 	cjne	a,_str,00236$
   2C1C 05 46         [12]  943 	inc	(_str + 1)
   2C1E                     944 00236$:
   2C1E 8A 82         [24]  945 	mov	dpl,r2
   2C20 C0 07         [24]  946 	push	ar7
   2C22 C0 06         [24]  947 	push	ar6
   2C24 C0 05         [24]  948 	push	ar5
   2C26 12 2A CD      [24]  949 	lcall	_output_char
   2C29 D0 05         [24]  950 	pop	ar5
   2C2B D0 06         [24]  951 	pop	ar6
   2C2D D0 07         [24]  952 	pop	ar7
   2C2F D0 07         [24]  953 	pop	ar7
   2C31 D0 06         [24]  954 	pop	ar6
   2C33 D0 05         [24]  955 	pop	ar5
                            956 ;	radio/printfl.c:140: continue;
   2C35 80 A9         [24]  957 	sjmp	00111$
   2C37                     958 00115$:
                            959 ;	radio/printfl.c:143: if (unsigned_flag) {
   2C37 30 14 66      [24]  960 	jnb	_unsigned_flag,00129$
                            961 ;	radio/printfl.c:144: if (long_flag) {
   2C3A 30 11 21      [24]  962 	jnb	_long_flag,00120$
                            963 ;	radio/printfl.c:145: val = va_arg(ap,unsigned long);
   2C3D A8 81         [24]  964 	mov	r0,sp
   2C3F 18            [12]  965 	dec	r0
   2C40 18            [12]  966 	dec	r0
   2C41 E6            [12]  967 	mov	a,@r0
   2C42 24 FC         [12]  968 	add	a,#0xFC
   2C44 FB            [12]  969 	mov	r3,a
   2C45 A8 81         [24]  970 	mov	r0,sp
   2C47 18            [12]  971 	dec	r0
   2C48 18            [12]  972 	dec	r0
   2C49 A6 03         [24]  973 	mov	@r0,ar3
   2C4B 8B 01         [24]  974 	mov	ar1,r3
   2C4D 87 48         [24]  975 	mov	_val,@r1
   2C4F 09            [12]  976 	inc	r1
   2C50 87 49         [24]  977 	mov	(_val + 1),@r1
   2C52 09            [12]  978 	inc	r1
   2C53 87 4A         [24]  979 	mov	(_val + 2),@r1
   2C55 09            [12]  980 	inc	r1
   2C56 87 4B         [24]  981 	mov	(_val + 3),@r1
   2C58 19            [12]  982 	dec	r1
   2C59 19            [12]  983 	dec	r1
   2C5A 19            [12]  984 	dec	r1
   2C5B 02 2D 06      [24]  985 	ljmp	00130$
   2C5E                     986 00120$:
                            987 ;	radio/printfl.c:146: } else if (char_flag) {
   2C5E 30 13 1D      [24]  988 	jnb	_char_flag,00117$
                            989 ;	radio/printfl.c:147: val = va_arg(ap,unsigned char);
   2C61 A8 81         [24]  990 	mov	r0,sp
   2C63 18            [12]  991 	dec	r0
   2C64 18            [12]  992 	dec	r0
   2C65 E6            [12]  993 	mov	a,@r0
   2C66 14            [12]  994 	dec	a
   2C67 F9            [12]  995 	mov	r1,a
   2C68 A8 81         [24]  996 	mov	r0,sp
   2C6A 18            [12]  997 	dec	r0
   2C6B 18            [12]  998 	dec	r0
   2C6C A6 01         [24]  999 	mov	@r0,ar1
   2C6E 87 03         [24] 1000 	mov	ar3,@r1
   2C70 8B 48         [24] 1001 	mov	_val,r3
   2C72 75 49 00      [24] 1002 	mov	(_val + 1),#0x00
   2C75 75 4A 00      [24] 1003 	mov	(_val + 2),#0x00
   2C78 75 4B 00      [24] 1004 	mov	(_val + 3),#0x00
   2C7B 02 2D 06      [24] 1005 	ljmp	00130$
   2C7E                    1006 00117$:
                           1007 ;	radio/printfl.c:149: val = va_arg(ap,unsigned int);
   2C7E A8 81         [24] 1008 	mov	r0,sp
   2C80 18            [12] 1009 	dec	r0
   2C81 18            [12] 1010 	dec	r0
   2C82 E6            [12] 1011 	mov	a,@r0
   2C83 24 FE         [12] 1012 	add	a,#0xFE
   2C85 FB            [12] 1013 	mov	r3,a
   2C86 A8 81         [24] 1014 	mov	r0,sp
   2C88 18            [12] 1015 	dec	r0
   2C89 18            [12] 1016 	dec	r0
   2C8A A6 03         [24] 1017 	mov	@r0,ar3
   2C8C 8B 01         [24] 1018 	mov	ar1,r3
   2C8E 87 02         [24] 1019 	mov	ar2,@r1
   2C90 09            [12] 1020 	inc	r1
   2C91 87 03         [24] 1021 	mov	ar3,@r1
   2C93 19            [12] 1022 	dec	r1
   2C94 8A 48         [24] 1023 	mov	_val,r2
   2C96 8B 49         [24] 1024 	mov	(_val + 1),r3
   2C98 75 4A 00      [24] 1025 	mov	(_val + 2),#0x00
   2C9B 75 4B 00      [24] 1026 	mov	(_val + 3),#0x00
   2C9E 80 66         [24] 1027 	sjmp	00130$
   2CA0                    1028 00129$:
                           1029 ;	radio/printfl.c:152: if (long_flag) {
   2CA0 30 11 20      [24] 1030 	jnb	_long_flag,00126$
                           1031 ;	radio/printfl.c:153: val = va_arg(ap,long);
   2CA3 A8 81         [24] 1032 	mov	r0,sp
   2CA5 18            [12] 1033 	dec	r0
   2CA6 18            [12] 1034 	dec	r0
   2CA7 E6            [12] 1035 	mov	a,@r0
   2CA8 24 FC         [12] 1036 	add	a,#0xFC
   2CAA FB            [12] 1037 	mov	r3,a
   2CAB A8 81         [24] 1038 	mov	r0,sp
   2CAD 18            [12] 1039 	dec	r0
   2CAE 18            [12] 1040 	dec	r0
   2CAF A6 03         [24] 1041 	mov	@r0,ar3
   2CB1 8B 01         [24] 1042 	mov	ar1,r3
   2CB3 87 48         [24] 1043 	mov	_val,@r1
   2CB5 09            [12] 1044 	inc	r1
   2CB6 87 49         [24] 1045 	mov	(_val + 1),@r1
   2CB8 09            [12] 1046 	inc	r1
   2CB9 87 4A         [24] 1047 	mov	(_val + 2),@r1
   2CBB 09            [12] 1048 	inc	r1
   2CBC 87 4B         [24] 1049 	mov	(_val + 3),@r1
   2CBE 19            [12] 1050 	dec	r1
   2CBF 19            [12] 1051 	dec	r1
   2CC0 19            [12] 1052 	dec	r1
   2CC1 80 43         [24] 1053 	sjmp	00130$
   2CC3                    1054 00126$:
                           1055 ;	radio/printfl.c:154: } else if (char_flag) {
   2CC3 30 13 1E      [24] 1056 	jnb	_char_flag,00123$
                           1057 ;	radio/printfl.c:155: val = va_arg(ap,char);
   2CC6 A8 81         [24] 1058 	mov	r0,sp
   2CC8 18            [12] 1059 	dec	r0
   2CC9 18            [12] 1060 	dec	r0
   2CCA E6            [12] 1061 	mov	a,@r0
   2CCB 14            [12] 1062 	dec	a
   2CCC FB            [12] 1063 	mov	r3,a
   2CCD A8 81         [24] 1064 	mov	r0,sp
   2CCF 18            [12] 1065 	dec	r0
   2CD0 18            [12] 1066 	dec	r0
   2CD1 A6 03         [24] 1067 	mov	@r0,ar3
   2CD3 8B 01         [24] 1068 	mov	ar1,r3
   2CD5 E7            [12] 1069 	mov	a,@r1
   2CD6 FB            [12] 1070 	mov	r3,a
   2CD7 F5 48         [12] 1071 	mov	_val,a
   2CD9 33            [12] 1072 	rlc	a
   2CDA 95 E0         [12] 1073 	subb	a,acc
   2CDC F5 49         [12] 1074 	mov	(_val + 1),a
   2CDE F5 4A         [12] 1075 	mov	(_val + 2),a
   2CE0 F5 4B         [12] 1076 	mov	(_val + 3),a
   2CE2 80 22         [24] 1077 	sjmp	00130$
   2CE4                    1078 00123$:
                           1079 ;	radio/printfl.c:157: val = va_arg(ap,int);
   2CE4 A8 81         [24] 1080 	mov	r0,sp
   2CE6 18            [12] 1081 	dec	r0
   2CE7 18            [12] 1082 	dec	r0
   2CE8 E6            [12] 1083 	mov	a,@r0
   2CE9 24 FE         [12] 1084 	add	a,#0xFE
   2CEB FB            [12] 1085 	mov	r3,a
   2CEC A8 81         [24] 1086 	mov	r0,sp
   2CEE 18            [12] 1087 	dec	r0
   2CEF 18            [12] 1088 	dec	r0
   2CF0 A6 03         [24] 1089 	mov	@r0,ar3
   2CF2 8B 01         [24] 1090 	mov	ar1,r3
   2CF4 87 02         [24] 1091 	mov	ar2,@r1
   2CF6 09            [12] 1092 	inc	r1
   2CF7 87 03         [24] 1093 	mov	ar3,@r1
   2CF9 19            [12] 1094 	dec	r1
   2CFA 8A 48         [24] 1095 	mov	_val,r2
   2CFC EB            [12] 1096 	mov	a,r3
   2CFD F5 49         [12] 1097 	mov	(_val + 1),a
   2CFF 33            [12] 1098 	rlc	a
   2D00 95 E0         [12] 1099 	subb	a,acc
   2D02 F5 4A         [12] 1100 	mov	(_val + 2),a
   2D04 F5 4B         [12] 1101 	mov	(_val + 3),a
   2D06                    1102 00130$:
                           1103 ;	radio/printfl.c:161: if (radix) {
   2D06 E5 44         [12] 1104 	mov	a,_radix
   2D08 70 03         [24] 1105 	jnz	00242$
   2D0A 02 2D 8A      [24] 1106 	ljmp	00138$
   2D0D                    1107 00242$:
                           1108 ;	radio/printfl.c:165: if (unsigned_flag) {
   2D0D 30 14 2F      [24] 1109 	jnb	_unsigned_flag,00132$
                           1110 ;	radio/printfl.c:166: _ultoa(val, buffer, radix);
   2D10 90 05 76      [24] 1111 	mov	dptr,#__ultoa_PARM_2
   2D13 74 80         [12] 1112 	mov	a,#_vprintfl_buffer_4_139
   2D15 F0            [24] 1113 	movx	@dptr,a
   2D16 E4            [12] 1114 	clr	a
   2D17 A3            [24] 1115 	inc	dptr
   2D18 F0            [24] 1116 	movx	@dptr,a
   2D19 74 40         [12] 1117 	mov	a,#0x40
   2D1B A3            [24] 1118 	inc	dptr
   2D1C F0            [24] 1119 	movx	@dptr,a
   2D1D 90 05 79      [24] 1120 	mov	dptr,#__ultoa_PARM_3
   2D20 E5 44         [12] 1121 	mov	a,_radix
   2D22 F0            [24] 1122 	movx	@dptr,a
   2D23 85 48 82      [24] 1123 	mov	dpl,_val
   2D26 85 49 83      [24] 1124 	mov	dph,(_val + 1)
   2D29 85 4A F0      [24] 1125 	mov	b,(_val + 2)
   2D2C E5 4B         [12] 1126 	mov	a,(_val + 3)
   2D2E C0 07         [24] 1127 	push	ar7
   2D30 C0 06         [24] 1128 	push	ar6
   2D32 C0 05         [24] 1129 	push	ar5
   2D34 12 57 F9      [24] 1130 	lcall	__ultoa
   2D37 D0 05         [24] 1131 	pop	ar5
   2D39 D0 06         [24] 1132 	pop	ar6
   2D3B D0 07         [24] 1133 	pop	ar7
   2D3D 80 2D         [24] 1134 	sjmp	00133$
   2D3F                    1135 00132$:
                           1136 ;	radio/printfl.c:168: _ltoa(val, buffer, radix);
   2D3F 90 05 9F      [24] 1137 	mov	dptr,#__ltoa_PARM_2
   2D42 74 80         [12] 1138 	mov	a,#_vprintfl_buffer_4_139
   2D44 F0            [24] 1139 	movx	@dptr,a
   2D45 E4            [12] 1140 	clr	a
   2D46 A3            [24] 1141 	inc	dptr
   2D47 F0            [24] 1142 	movx	@dptr,a
   2D48 74 40         [12] 1143 	mov	a,#0x40
   2D4A A3            [24] 1144 	inc	dptr
   2D4B F0            [24] 1145 	movx	@dptr,a
   2D4C 90 05 A2      [24] 1146 	mov	dptr,#__ltoa_PARM_3
   2D4F E5 44         [12] 1147 	mov	a,_radix
   2D51 F0            [24] 1148 	movx	@dptr,a
   2D52 85 48 82      [24] 1149 	mov	dpl,_val
   2D55 85 49 83      [24] 1150 	mov	dph,(_val + 1)
   2D58 85 4A F0      [24] 1151 	mov	b,(_val + 2)
   2D5B E5 4B         [12] 1152 	mov	a,(_val + 3)
   2D5D C0 07         [24] 1153 	push	ar7
   2D5F C0 06         [24] 1154 	push	ar6
   2D61 C0 05         [24] 1155 	push	ar5
   2D63 12 59 0F      [24] 1156 	lcall	__ltoa
   2D66 D0 05         [24] 1157 	pop	ar5
   2D68 D0 06         [24] 1158 	pop	ar6
   2D6A D0 07         [24] 1159 	pop	ar7
   2D6C                    1160 00133$:
                           1161 ;	radio/printfl.c:170: stri = buffer;
   2D6C 79 80         [12] 1162 	mov	r1,#_vprintfl_buffer_4_139
                           1163 ;	radio/printfl.c:171: while (*stri) {
   2D6E                    1164 00134$:
   2D6E E7            [12] 1165 	mov	a,@r1
   2D6F FB            [12] 1166 	mov	r3,a
   2D70 60 3E         [24] 1167 	jz	00143$
                           1168 ;	radio/printfl.c:172: output_char(*stri);
   2D72 8B 82         [24] 1169 	mov	dpl,r3
   2D74 C0 07         [24] 1170 	push	ar7
   2D76 C0 06         [24] 1171 	push	ar6
   2D78 C0 05         [24] 1172 	push	ar5
   2D7A C0 01         [24] 1173 	push	ar1
   2D7C 12 2A CD      [24] 1174 	lcall	_output_char
   2D7F D0 01         [24] 1175 	pop	ar1
   2D81 D0 05         [24] 1176 	pop	ar5
   2D83 D0 06         [24] 1177 	pop	ar6
   2D85 D0 07         [24] 1178 	pop	ar7
                           1179 ;	radio/printfl.c:173: stri++;
   2D87 09            [12] 1180 	inc	r1
   2D88 80 E4         [24] 1181 	sjmp	00134$
   2D8A                    1182 00138$:
                           1183 ;	radio/printfl.c:176: output_char((char) val);
   2D8A AB 48         [24] 1184 	mov	r3,_val
   2D8C 8B 82         [24] 1185 	mov	dpl,r3
   2D8E C0 07         [24] 1186 	push	ar7
   2D90 C0 06         [24] 1187 	push	ar6
   2D92 C0 05         [24] 1188 	push	ar5
   2D94 12 2A CD      [24] 1189 	lcall	_output_char
   2D97 D0 05         [24] 1190 	pop	ar5
   2D99 D0 06         [24] 1191 	pop	ar6
   2D9B D0 07         [24] 1192 	pop	ar7
   2D9D 80 11         [24] 1193 	sjmp	00143$
   2D9F                    1194 00141$:
                           1195 ;	radio/printfl.c:180: output_char(*fmt);
   2D9F 8C 82         [24] 1196 	mov	dpl,r4
   2DA1 C0 07         [24] 1197 	push	ar7
   2DA3 C0 06         [24] 1198 	push	ar6
   2DA5 C0 05         [24] 1199 	push	ar5
   2DA7 12 2A CD      [24] 1200 	lcall	_output_char
   2DAA D0 05         [24] 1201 	pop	ar5
   2DAC D0 06         [24] 1202 	pop	ar6
   2DAE D0 07         [24] 1203 	pop	ar7
   2DB0                    1204 00143$:
                           1205 ;	radio/printfl.c:98: for (; *fmt; fmt++) {
   2DB0 0D            [12] 1206 	inc	r5
   2DB1 BD 00 01      [24] 1207 	cjne	r5,#0x00,00245$
   2DB4 0E            [12] 1208 	inc	r6
   2DB5                    1209 00245$:
   2DB5 02 2B 36      [24] 1210 	ljmp	00146$
                           1211 ;------------------------------------------------------------
                           1212 ;Allocation info for local variables in function 'printfl'
                           1213 ;------------------------------------------------------------
                           1214 ;fmt                       Allocated to stack - sp -4
                           1215 ;ap                        Allocated to registers r7 
                           1216 ;------------------------------------------------------------
                           1217 ;	radio/printfl.c:186: printfl(const char *fmt, ...) __reentrant
                           1218 ;	-----------------------------------------
                           1219 ;	 function printfl
                           1220 ;	-----------------------------------------
   2DB8                    1221 _printfl:
                           1222 ;	radio/printfl.c:190: va_start(ap,fmt);
   2DB8 E5 81         [12] 1223 	mov	a,sp
   2DBA 24 FC         [12] 1224 	add	a,#0xFC
   2DBC FF            [12] 1225 	mov	r7,a
                           1226 ;	radio/printfl.c:191: vprintfl(fmt, ap);
   2DBD C0 07         [24] 1227 	push	ar7
   2DBF E5 81         [12] 1228 	mov	a,sp
   2DC1 24 FB         [12] 1229 	add	a,#0xfb
   2DC3 F8            [12] 1230 	mov	r0,a
   2DC4 86 82         [24] 1231 	mov	dpl,@r0
   2DC6 08            [12] 1232 	inc	r0
   2DC7 86 83         [24] 1233 	mov	dph,@r0
   2DC9 08            [12] 1234 	inc	r0
   2DCA 86 F0         [24] 1235 	mov	b,@r0
   2DCC 12 2B 30      [24] 1236 	lcall	_vprintfl
   2DCF 15 81         [12] 1237 	dec	sp
   2DD1 22            [24] 1238 	ret
                           1239 	.area CSEG    (CODE)
                           1240 	.area CONST   (CODE)
                           1241 	.area XINIT   (CODE)
                           1242 	.area CABS    (ABS,CODE)
