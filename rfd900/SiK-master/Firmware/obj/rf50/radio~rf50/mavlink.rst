                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:06 2013
                              5 ;--------------------------------------------------------
                              6 	.module mavlink
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _serial_read_space
                             13 	.globl _serial_write_space
                             14 	.globl _serial_write_buf
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
                            269 	.globl _MAVLink_report
                            270 ;--------------------------------------------------------
                            271 ; special function registers
                            272 ;--------------------------------------------------------
                            273 	.area RSEG    (ABS,DATA)
   0000                     274 	.org 0x0000
                     0080   275 _P0	=	0x0080
                     0081   276 _SP	=	0x0081
                     0082   277 _DPL	=	0x0082
                     0083   278 _DPH	=	0x0083
                     0084   279 _SPI1CFG	=	0x0084
                     0085   280 _SPI1CKR	=	0x0085
                     0085   281 _TOFFL	=	0x0085
                     0086   282 _SPI1DAT	=	0x0086
                     0086   283 _TOFFH	=	0x0086
                     0087   284 _PCON	=	0x0087
                     0088   285 _TCON	=	0x0088
                     0089   286 _TMOD	=	0x0089
                     008A   287 _TL0	=	0x008a
                     008B   288 _TL1	=	0x008b
                     008C   289 _TH0	=	0x008c
                     008D   290 _TH1	=	0x008d
                     008E   291 _CKCON	=	0x008e
                     008F   292 _PSCTL	=	0x008f
                     0090   293 _P1	=	0x0090
                     0091   294 _TMR3CN	=	0x0091
                     0091   295 _CRC0DAT	=	0x0091
                     0092   296 _TMR3RLL	=	0x0092
                     0092   297 _CRC0CN	=	0x0092
                     0093   298 _TMR3RLH	=	0x0093
                     0093   299 _CRC0IN	=	0x0093
                     0094   300 _TMR3L	=	0x0094
                     0095   301 _CRC0FLIP	=	0x0095
                     0095   302 _TMR3H	=	0x0095
                     0096   303 _DC0CF	=	0x0096
                     0096   304 _CRC0AUTO	=	0x0096
                     0097   305 _DC0CN	=	0x0097
                     0097   306 _CRC0CNT	=	0x0097
                     0098   307 _SCON0	=	0x0098
                     0099   308 _SBUF0	=	0x0099
                     009A   309 _CPT1CN	=	0x009a
                     009B   310 _CPT0CN	=	0x009b
                     009C   311 _CPT1MD	=	0x009c
                     009D   312 _CPT0MD	=	0x009d
                     009E   313 _CPT1MX	=	0x009e
                     009F   314 _CPT0MX	=	0x009f
                     00A0   315 _P2	=	0x00a0
                     00A1   316 _SPI0CFG	=	0x00a1
                     00A2   317 _SPI0CKR	=	0x00a2
                     00A3   318 _SPI0DAT	=	0x00a3
                     00A4   319 _P0MDOUT	=	0x00a4
                     00A4   320 _P0DRV	=	0x00a4
                     00A5   321 _P1MDOUT	=	0x00a5
                     00A5   322 _P1DRV	=	0x00a5
                     00A6   323 _P2MDOUT	=	0x00a6
                     00A6   324 _P2DRV	=	0x00a6
                     00A7   325 _SFRPAGE	=	0x00a7
                     00A8   326 _IE	=	0x00a8
                     00A9   327 _CLKSEL	=	0x00a9
                     00AA   328 _EMI0CN	=	0x00aa
                     00AB   329 _EMI0CF	=	0x00ab
                     00AC   330 _RTC0ADR	=	0x00ac
                     00AD   331 _RTC0DAT	=	0x00ad
                     00AE   332 _RTC0KEY	=	0x00ae
                     00AF   333 _EMI0TC	=	0x00af
                     00AF   334 _ONESHOT	=	0x00af
                     00B0   335 _SPI1CN	=	0x00b0
                     00B1   336 _OSCXCN	=	0x00b1
                     00B2   337 _OSCICN	=	0x00b2
                     00B3   338 _OSCICL	=	0x00b3
                     00B5   339 _PMU0CF	=	0x00b5
                     00B6   340 _FLSCL	=	0x00b6
                     00B7   341 _FLKEY	=	0x00b7
                     00B8   342 _IP	=	0x00b8
                     00B9   343 _IREF0CN	=	0x00b9
                     00BA   344 _ADC0AC	=	0x00ba
                     00BA   345 _ADC0PWR	=	0x00ba
                     00BB   346 _ADC0MX	=	0x00bb
                     00BC   347 _ADC0CF	=	0x00bc
                     00BD   348 _ADC0TK	=	0x00bd
                     00BD   349 _ADC0L	=	0x00bd
                     00BE   350 _ADC0H	=	0x00be
                     00BF   351 _P1MASK	=	0x00bf
                     00C0   352 _SMB0CN	=	0x00c0
                     00C1   353 _SMB0CF	=	0x00c1
                     00C2   354 _SMB0DAT	=	0x00c2
                     00C3   355 _ADC0GTL	=	0x00c3
                     00C4   356 _ADC0GTH	=	0x00c4
                     00C5   357 _ADC0LTL	=	0x00c5
                     00C6   358 _ADC0LTH	=	0x00c6
                     00C7   359 _P0MASK	=	0x00c7
                     00C8   360 _TMR2CN	=	0x00c8
                     00C9   361 _REG0CN	=	0x00c9
                     00CA   362 _TMR2RLL	=	0x00ca
                     00CB   363 _TMR2RLH	=	0x00cb
                     00CC   364 _TMR2L	=	0x00cc
                     00CD   365 _TMR2H	=	0x00cd
                     00CE   366 _PCA0CPM5	=	0x00ce
                     00CF   367 _P1MAT	=	0x00cf
                     00D0   368 _PSW	=	0x00d0
                     00D1   369 _REF0CN	=	0x00d1
                     00D2   370 _PCA0CPL5	=	0x00d2
                     00D3   371 _PCA0CPH5	=	0x00d3
                     00D4   372 _P0SKIP	=	0x00d4
                     00D5   373 _P1SKIP	=	0x00d5
                     00D6   374 _P2SKIP	=	0x00d6
                     00D7   375 _P0MAT	=	0x00d7
                     00D8   376 _PCA0CN	=	0x00d8
                     00D9   377 _PCA0MD	=	0x00d9
                     00DA   378 _PCA0CPM0	=	0x00da
                     00DB   379 _PCA0CPM1	=	0x00db
                     00DC   380 _PCA0CPM2	=	0x00dc
                     00DD   381 _PCA0CPM3	=	0x00dd
                     00DE   382 _PCA0CPM4	=	0x00de
                     00DF   383 _PCA0PWM	=	0x00df
                     00E0   384 _ACC	=	0x00e0
                     00E1   385 _XBR0	=	0x00e1
                     00E2   386 _XBR1	=	0x00e2
                     00E3   387 _XBR2	=	0x00e3
                     00E4   388 _IT01CF	=	0x00e4
                     00E5   389 _FLWR	=	0x00e5
                     00E6   390 _EIE1	=	0x00e6
                     00E7   391 _EIE2	=	0x00e7
                     00E8   392 _ADC0CN	=	0x00e8
                     00E9   393 _PCA0CPL1	=	0x00e9
                     00EA   394 _PCA0CPH1	=	0x00ea
                     00EB   395 _PCA0CPL2	=	0x00eb
                     00EC   396 _PCA0CPH2	=	0x00ec
                     00ED   397 _PCA0CPL3	=	0x00ed
                     00EE   398 _PCA0CPH3	=	0x00ee
                     00EF   399 _RSTSRC	=	0x00ef
                     00F0   400 _B	=	0x00f0
                     00F1   401 _P0MDIN	=	0x00f1
                     00F2   402 _P1MDIN	=	0x00f2
                     00F3   403 _P2MDIN	=	0x00f3
                     00F4   404 _SMB0ADR	=	0x00f4
                     00F5   405 _SMB0ADM	=	0x00f5
                     00F6   406 _EIP1	=	0x00f6
                     00F7   407 _EIP2	=	0x00f7
                     00F8   408 _SPI0CN	=	0x00f8
                     00F9   409 _PCA0L	=	0x00f9
                     00FA   410 _PCA0H	=	0x00fa
                     00FB   411 _PCA0CPL0	=	0x00fb
                     00FC   412 _PCA0CPH0	=	0x00fc
                     00FD   413 _PCA0CPL4	=	0x00fd
                     00FE   414 _PCA0CPH4	=	0x00fe
                     00FF   415 _VDM0CN	=	0x00ff
                     8382   416 _DP	=	0x8382
                     8685   417 _TOFF	=	0x8685
                     9392   418 _TMR3RL	=	0x9392
                     9594   419 _TMR3	=	0x9594
                     BEBD   420 _ADC0	=	0xbebd
                     C4C3   421 _ADC0GT	=	0xc4c3
                     C6C5   422 _ADC0LT	=	0xc6c5
                     CBCA   423 _TMR2RL	=	0xcbca
                     CDCC   424 _TMR2	=	0xcdcc
                     D3D2   425 _PCA0CP5	=	0xd3d2
                     EAE9   426 _PCA0CP1	=	0xeae9
                     ECEB   427 _PCA0CP2	=	0xeceb
                     EEED   428 _PCA0CP3	=	0xeeed
                     FAF9   429 _PCA0	=	0xfaf9
                     FCFB   430 _PCA0CP0	=	0xfcfb
                     FEFD   431 _PCA0CP4	=	0xfefd
                            432 ;--------------------------------------------------------
                            433 ; special function bits
                            434 ;--------------------------------------------------------
                            435 	.area RSEG    (ABS,DATA)
   0000                     436 	.org 0x0000
                     008F   437 _TF1	=	0x008f
                     008E   438 _TR1	=	0x008e
                     008D   439 _TF0	=	0x008d
                     008C   440 _TR0	=	0x008c
                     008B   441 _IE1	=	0x008b
                     008A   442 _IT1	=	0x008a
                     0089   443 _IE0	=	0x0089
                     0088   444 _IT0	=	0x0088
                     0096   445 _CRC0SEL	=	0x0096
                     0095   446 _CRC0INIT	=	0x0095
                     0094   447 _CRC0VAL	=	0x0094
                     009F   448 _S0MODE	=	0x009f
                     009D   449 _MCE0	=	0x009d
                     009C   450 _REN0	=	0x009c
                     009B   451 _TB80	=	0x009b
                     009A   452 _RB80	=	0x009a
                     0099   453 _TI0	=	0x0099
                     0098   454 _RI0	=	0x0098
                     00AF   455 _EA	=	0x00af
                     00AE   456 _ESPI0	=	0x00ae
                     00AD   457 _ET2	=	0x00ad
                     00AC   458 _ES0	=	0x00ac
                     00AB   459 _ET1	=	0x00ab
                     00AA   460 _EX1	=	0x00aa
                     00A9   461 _ET0	=	0x00a9
                     00A8   462 _EX0	=	0x00a8
                     00B7   463 _SPIF1	=	0x00b7
                     00B6   464 _WCOL1	=	0x00b6
                     00B5   465 _MODF1	=	0x00b5
                     00B4   466 _RXOVRN1	=	0x00b4
                     00B3   467 _NSS1MD1	=	0x00b3
                     00B2   468 _NSS1MD0	=	0x00b2
                     00B1   469 _TXBMT1	=	0x00b1
                     00B0   470 _SPI1EN	=	0x00b0
                     00BE   471 _PSPI0	=	0x00be
                     00BD   472 _PT2	=	0x00bd
                     00BC   473 _PS0	=	0x00bc
                     00BB   474 _PT1	=	0x00bb
                     00BA   475 _PX1	=	0x00ba
                     00B9   476 _PT0	=	0x00b9
                     00B8   477 _PX0	=	0x00b8
                     00C7   478 _MASTER	=	0x00c7
                     00C6   479 _TXMODE	=	0x00c6
                     00C5   480 _STA	=	0x00c5
                     00C4   481 _STO	=	0x00c4
                     00C3   482 _ACKRQ	=	0x00c3
                     00C2   483 _ARBLOST	=	0x00c2
                     00C1   484 _ACK	=	0x00c1
                     00C0   485 _SI	=	0x00c0
                     00CF   486 _TF2H	=	0x00cf
                     00CE   487 _TF2L	=	0x00ce
                     00CD   488 _TF2LEN	=	0x00cd
                     00CC   489 _TF2CEN	=	0x00cc
                     00CB   490 _T2SPLIT	=	0x00cb
                     00CA   491 _TR2	=	0x00ca
                     00C9   492 _T2RCLK	=	0x00c9
                     00C8   493 _T2XCLK	=	0x00c8
                     00D7   494 _CY	=	0x00d7
                     00D6   495 _AC	=	0x00d6
                     00D5   496 _F0	=	0x00d5
                     00D4   497 _RS1	=	0x00d4
                     00D3   498 _RS0	=	0x00d3
                     00D2   499 _OV	=	0x00d2
                     00D1   500 _F1	=	0x00d1
                     00D0   501 _P	=	0x00d0
                     00DF   502 _CF	=	0x00df
                     00DE   503 _CR	=	0x00de
                     00DD   504 _CCF5	=	0x00dd
                     00DC   505 _CCF4	=	0x00dc
                     00DB   506 _CCF3	=	0x00db
                     00DA   507 _CCF2	=	0x00da
                     00D9   508 _CCF1	=	0x00d9
                     00D8   509 _CCF0	=	0x00d8
                     00EF   510 _AD0EN	=	0x00ef
                     00EE   511 _BURSTEN	=	0x00ee
                     00ED   512 _AD0INT	=	0x00ed
                     00EC   513 _AD0BUSY	=	0x00ec
                     00EB   514 _AD0WINT	=	0x00eb
                     00EA   515 _AD0CM2	=	0x00ea
                     00E9   516 _AD0CM1	=	0x00e9
                     00E8   517 _AD0CM0	=	0x00e8
                     00FF   518 _SPIF0	=	0x00ff
                     00FE   519 _WCOL0	=	0x00fe
                     00FD   520 _MODF0	=	0x00fd
                     00FC   521 _RXOVRN0	=	0x00fc
                     00FB   522 _NSS0MD1	=	0x00fb
                     00FA   523 _NSS0MD0	=	0x00fa
                     00F9   524 _TXBMT0	=	0x00f9
                     00F8   525 _SPI0EN	=	0x00f8
                     00A0   526 _LED_RED	=	0x00a0
                     00A5   527 _LED_GREEN	=	0x00a5
                     0086   528 _BUTTON_ENTER	=	0x0086
                     0095   529 _BUTTON_UP	=	0x0095
                     0096   530 _BUTTON_DOWN	=	0x0096
                     0087   531 _IRQ	=	0x0087
                     0094   532 _NSS1	=	0x0094
                     00A6   533 _SDN	=	0x00a6
                            534 ;--------------------------------------------------------
                            535 ; overlayable register banks
                            536 ;--------------------------------------------------------
                            537 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     538 	.ds 8
                            539 ;--------------------------------------------------------
                            540 ; internal ram data
                            541 ;--------------------------------------------------------
                            542 	.area DSEG    (DATA)
   0028                     543 _MAVLink_report_sloc0_1_0:
   0028                     544 	.ds 3
                            545 ;--------------------------------------------------------
                            546 ; overlayable items in internal ram 
                            547 ;--------------------------------------------------------
                            548 	.area	OSEG    (OVR,DATA)
   0077                     549 _mavlink_crc_length_1_134:
   0077                     550 	.ds 1
   0078                     551 _mavlink_crc_tmp_2_136:
   0078                     552 	.ds 1
   0079                     553 _mavlink_crc_sloc0_1_0:
   0079                     554 	.ds 2
   007B                     555 _mavlink_crc_sloc1_1_0:
   007B                     556 	.ds 1
   007C                     557 _mavlink_crc_sloc2_1_0:
   007C                     558 	.ds 1
   007D                     559 _mavlink_crc_sloc3_1_0:
   007D                     560 	.ds 2
                            561 	.area	OSEG    (OVR,DATA)
   0077                     562 _swap_bytes_i_1_138:
   0077                     563 	.ds 1
   0078                     564 _swap_bytes_tmp_2_139:
   0078                     565 	.ds 1
                            566 ;--------------------------------------------------------
                            567 ; indirectly addressable internal ram data
                            568 ;--------------------------------------------------------
                            569 	.area ISEG    (DATA)
                            570 ;--------------------------------------------------------
                            571 ; absolute internal ram data
                            572 ;--------------------------------------------------------
                            573 	.area IABS    (ABS,DATA)
                            574 	.area IABS    (ABS,DATA)
                            575 ;--------------------------------------------------------
                            576 ; bit data
                            577 ;--------------------------------------------------------
                            578 	.area BSEG    (BIT)
                            579 ;--------------------------------------------------------
                            580 ; paged external ram data
                            581 ;--------------------------------------------------------
                            582 	.area PSEG    (PAG,XDATA)
   0055                     583 _seqnum:
   0055                     584 	.ds 1
   0056                     585 _mavlink_crc_i_1_134:
   0056                     586 	.ds 1
   0057                     587 _swap_bytes_PARM_2:
   0057                     588 	.ds 1
                            589 ;--------------------------------------------------------
                            590 ; external ram data
                            591 ;--------------------------------------------------------
                            592 	.area XSEG    (XDATA)
                            593 ;--------------------------------------------------------
                            594 ; absolute external ram data
                            595 ;--------------------------------------------------------
                            596 	.area XABS    (ABS,XDATA)
                            597 ;--------------------------------------------------------
                            598 ; external initialized ram data
                            599 ;--------------------------------------------------------
                            600 	.area XISEG   (XDATA)
                            601 	.area HOME    (CODE)
                            602 	.area GSINIT0 (CODE)
                            603 	.area GSINIT1 (CODE)
                            604 	.area GSINIT2 (CODE)
                            605 	.area GSINIT3 (CODE)
                            606 	.area GSINIT4 (CODE)
                            607 	.area GSINIT5 (CODE)
                            608 	.area GSINIT  (CODE)
                            609 	.area GSFINAL (CODE)
                            610 	.area CSEG    (CODE)
                            611 ;--------------------------------------------------------
                            612 ; global & static initialisations
                            613 ;--------------------------------------------------------
                            614 	.area HOME    (CODE)
                            615 	.area GSINIT  (CODE)
                            616 	.area GSFINAL (CODE)
                            617 	.area GSINIT  (CODE)
                            618 ;--------------------------------------------------------
                            619 ; Home
                            620 ;--------------------------------------------------------
                            621 	.area HOME    (CODE)
                            622 	.area HOME    (CODE)
                            623 ;--------------------------------------------------------
                            624 ; code
                            625 ;--------------------------------------------------------
                            626 	.area CSEG    (CODE)
                            627 ;------------------------------------------------------------
                            628 ;Allocation info for local variables in function 'mavlink_crc'
                            629 ;------------------------------------------------------------
                            630 ;length                    Allocated with name '_mavlink_crc_length_1_134'
                            631 ;tmp                       Allocated with name '_mavlink_crc_tmp_2_136'
                            632 ;sloc0                     Allocated with name '_mavlink_crc_sloc0_1_0'
                            633 ;sloc1                     Allocated with name '_mavlink_crc_sloc1_1_0'
                            634 ;sloc2                     Allocated with name '_mavlink_crc_sloc2_1_0'
                            635 ;sloc3                     Allocated with name '_mavlink_crc_sloc3_1_0'
                            636 ;------------------------------------------------------------
                            637 ;	radio/mavlink.c:55: static void mavlink_crc(void)
                            638 ;	-----------------------------------------
                            639 ;	 function mavlink_crc
                            640 ;	-----------------------------------------
   1AE3                     641 _mavlink_crc:
                     0007   642 	ar7 = 0x07
                     0006   643 	ar6 = 0x06
                     0005   644 	ar5 = 0x05
                     0004   645 	ar4 = 0x04
                     0003   646 	ar3 = 0x03
                     0002   647 	ar2 = 0x02
                     0001   648 	ar1 = 0x01
                     0000   649 	ar0 = 0x00
                            650 ;	radio/mavlink.c:57: register uint8_t length = pbuf[1];
   1AE3 90 04 73      [24]  651 	mov	dptr,#(_pbuf + 0x0001)
   1AE6 E0            [24]  652 	movx	a,@dptr
   1AE7 F5 77         [12]  653 	mov	_mavlink_crc_length_1_134,a
                            654 ;	radio/mavlink.c:58: __pdata uint16_t sum = 0xFFFF;
   1AE9 7D FF         [12]  655 	mov	r5,#0xFF
   1AEB 7E FF         [12]  656 	mov	r6,#0xFF
                            657 ;	radio/mavlink.c:61: stoplen = length + 6;
   1AED 74 06         [12]  658 	mov	a,#0x06
   1AEF 25 77         [12]  659 	add	a,_mavlink_crc_length_1_134
   1AF1 FC            [12]  660 	mov	r4,a
                            661 ;	radio/mavlink.c:63: if (using_mavlink_10) {
   1AF2 30 0E 11      [24]  662 	jnb	_using_mavlink_10,00110$
                            663 ;	radio/mavlink.c:65: pbuf[length+6] = MAVLINK_RADIO_CRC_EXTRA;
   1AF5 74 06         [12]  664 	mov	a,#0x06
   1AF7 25 77         [12]  665 	add	a,_mavlink_crc_length_1_134
   1AF9 24 72         [12]  666 	add	a,#_pbuf
   1AFB F5 82         [12]  667 	mov	dpl,a
   1AFD E4            [12]  668 	clr	a
   1AFE 34 04         [12]  669 	addc	a,#(_pbuf >> 8)
   1B00 F5 83         [12]  670 	mov	dph,a
   1B02 74 15         [12]  671 	mov	a,#0x15
   1B04 F0            [24]  672 	movx	@dptr,a
                            673 ;	radio/mavlink.c:66: stoplen++;
   1B05 0C            [12]  674 	inc	r4
                            675 ;	radio/mavlink.c:70: while (i<stoplen) {
   1B06                     676 00110$:
   1B06 78 56         [12]  677 	mov	r0,#_mavlink_crc_i_1_134
   1B08 74 01         [12]  678 	mov	a,#0x01
   1B0A F2            [24]  679 	movx	@r0,a
   1B0B                     680 00103$:
   1B0B 78 56         [12]  681 	mov	r0,#_mavlink_crc_i_1_134
   1B0D C3            [12]  682 	clr	c
   1B0E E2            [24]  683 	movx	a,@r0
   1B0F 9C            [12]  684 	subb	a,r4
   1B10 50 65         [24]  685 	jnc	00105$
                            686 ;	radio/mavlink.c:72: tmp = pbuf[i] ^ (uint8_t)(sum&0xff);
   1B12 C0 04         [24]  687 	push	ar4
   1B14 78 56         [12]  688 	mov	r0,#_mavlink_crc_i_1_134
   1B16 E2            [24]  689 	movx	a,@r0
   1B17 24 72         [12]  690 	add	a,#_pbuf
   1B19 F5 82         [12]  691 	mov	dpl,a
   1B1B E4            [12]  692 	clr	a
   1B1C 34 04         [12]  693 	addc	a,#(_pbuf >> 8)
   1B1E F5 83         [12]  694 	mov	dph,a
   1B20 E0            [24]  695 	movx	a,@dptr
   1B21 FA            [12]  696 	mov	r2,a
   1B22 8D 79         [24]  697 	mov	_mavlink_crc_sloc0_1_0,r5
   1B24 75 7A 00      [24]  698 	mov	(_mavlink_crc_sloc0_1_0 + 1),#0x00
   1B27 E5 79         [12]  699 	mov	a,_mavlink_crc_sloc0_1_0
   1B29 F5 7B         [12]  700 	mov	_mavlink_crc_sloc1_1_0,a
   1B2B 6A            [12]  701 	xrl	a,r2
                            702 ;	radio/mavlink.c:73: tmp ^= (tmp<<4);
   1B2C F5 78         [12]  703 	mov	_mavlink_crc_tmp_2_136,a
   1B2E C4            [12]  704 	swap	a
   1B2F 54 F0         [12]  705 	anl	a,#0xF0
   1B31 F5 7C         [12]  706 	mov	_mavlink_crc_sloc2_1_0,a
   1B33 62 78         [12]  707 	xrl	_mavlink_crc_tmp_2_136,a
                            708 ;	radio/mavlink.c:74: sum = (sum>>8) ^ (tmp<<8) ^ (tmp<<3) ^ (tmp>>4);
   1B35 8E 7D         [24]  709 	mov	_mavlink_crc_sloc3_1_0,r6
   1B37 75 7E 00      [24]  710 	mov	(_mavlink_crc_sloc3_1_0 + 1),#0x00
   1B3A AA 78         [24]  711 	mov	r2,_mavlink_crc_tmp_2_136
   1B3C 7F 00         [12]  712 	mov	r7,#0x00
   1B3E 8A 04         [24]  713 	mov	ar4,r2
   1B40 7B 00         [12]  714 	mov	r3,#0x00
   1B42 E5 7D         [12]  715 	mov	a,_mavlink_crc_sloc3_1_0
   1B44 62 03         [12]  716 	xrl	ar3,a
   1B46 E5 7E         [12]  717 	mov	a,(_mavlink_crc_sloc3_1_0 + 1)
   1B48 62 04         [12]  718 	xrl	ar4,a
   1B4A EF            [12]  719 	mov	a,r7
   1B4B C4            [12]  720 	swap	a
   1B4C 03            [12]  721 	rr	a
   1B4D 54 F8         [12]  722 	anl	a,#0xF8
   1B4F CA            [12]  723 	xch	a,r2
   1B50 C4            [12]  724 	swap	a
   1B51 03            [12]  725 	rr	a
   1B52 CA            [12]  726 	xch	a,r2
   1B53 6A            [12]  727 	xrl	a,r2
   1B54 CA            [12]  728 	xch	a,r2
   1B55 54 F8         [12]  729 	anl	a,#0xF8
   1B57 CA            [12]  730 	xch	a,r2
   1B58 6A            [12]  731 	xrl	a,r2
   1B59 FF            [12]  732 	mov	r7,a
   1B5A EA            [12]  733 	mov	a,r2
   1B5B 62 03         [12]  734 	xrl	ar3,a
   1B5D EF            [12]  735 	mov	a,r7
   1B5E 62 04         [12]  736 	xrl	ar4,a
   1B60 E5 78         [12]  737 	mov	a,_mavlink_crc_tmp_2_136
   1B62 C4            [12]  738 	swap	a
   1B63 54 0F         [12]  739 	anl	a,#0x0F
   1B65 FF            [12]  740 	mov	r7,a
   1B66 7A 00         [12]  741 	mov	r2,#0x00
   1B68 6B            [12]  742 	xrl	a,r3
   1B69 FD            [12]  743 	mov	r5,a
   1B6A EA            [12]  744 	mov	a,r2
   1B6B 6C            [12]  745 	xrl	a,r4
   1B6C FE            [12]  746 	mov	r6,a
                            747 ;	radio/mavlink.c:75: i++;
   1B6D 78 56         [12]  748 	mov	r0,#_mavlink_crc_i_1_134
   1B6F E2            [24]  749 	movx	a,@r0
   1B70 24 01         [12]  750 	add	a,#0x01
   1B72 F2            [24]  751 	movx	@r0,a
   1B73 D0 04         [24]  752 	pop	ar4
   1B75 80 94         [24]  753 	sjmp	00103$
   1B77                     754 00105$:
                            755 ;	radio/mavlink.c:78: pbuf[length+6] = sum&0xFF;
   1B77 74 06         [12]  756 	mov	a,#0x06
   1B79 25 77         [12]  757 	add	a,_mavlink_crc_length_1_134
   1B7B 24 72         [12]  758 	add	a,#_pbuf
   1B7D F5 82         [12]  759 	mov	dpl,a
   1B7F E4            [12]  760 	clr	a
   1B80 34 04         [12]  761 	addc	a,#(_pbuf >> 8)
   1B82 F5 83         [12]  762 	mov	dph,a
   1B84 8D 04         [24]  763 	mov	ar4,r5
   1B86 EC            [12]  764 	mov	a,r4
   1B87 F0            [24]  765 	movx	@dptr,a
                            766 ;	radio/mavlink.c:79: pbuf[length+7] = sum>>8;
   1B88 74 07         [12]  767 	mov	a,#0x07
   1B8A 25 77         [12]  768 	add	a,_mavlink_crc_length_1_134
   1B8C 24 72         [12]  769 	add	a,#_pbuf
   1B8E F5 82         [12]  770 	mov	dpl,a
   1B90 E4            [12]  771 	clr	a
   1B91 34 04         [12]  772 	addc	a,#(_pbuf >> 8)
   1B93 F5 83         [12]  773 	mov	dph,a
   1B95 8E 05         [24]  774 	mov	ar5,r6
   1B97 ED            [12]  775 	mov	a,r5
   1B98 F0            [24]  776 	movx	@dptr,a
   1B99 22            [24]  777 	ret
                            778 ;------------------------------------------------------------
                            779 ;Allocation info for local variables in function 'swap_bytes'
                            780 ;------------------------------------------------------------
                            781 ;i                         Allocated with name '_swap_bytes_i_1_138'
                            782 ;tmp                       Allocated with name '_swap_bytes_tmp_2_139'
                            783 ;------------------------------------------------------------
                            784 ;	radio/mavlink.c:117: static void swap_bytes(__pdata uint8_t ofs, __pdata uint8_t len)
                            785 ;	-----------------------------------------
                            786 ;	 function swap_bytes
                            787 ;	-----------------------------------------
   1B9A                     788 _swap_bytes:
   1B9A AF 82         [24]  789 	mov	r7,dpl
                            790 ;	radio/mavlink.c:120: for (i=ofs; i<ofs+len; i+=2) {
   1B9C 8F 77         [24]  791 	mov	_swap_bytes_i_1_138,r7
   1B9E                     792 00103$:
   1B9E 8F 04         [24]  793 	mov	ar4,r7
   1BA0 7D 00         [12]  794 	mov	r5,#0x00
   1BA2 78 57         [12]  795 	mov	r0,#_swap_bytes_PARM_2
   1BA4 E2            [24]  796 	movx	a,@r0
   1BA5 7B 00         [12]  797 	mov	r3,#0x00
   1BA7 2C            [12]  798 	add	a,r4
   1BA8 FC            [12]  799 	mov	r4,a
   1BA9 EB            [12]  800 	mov	a,r3
   1BAA 3D            [12]  801 	addc	a,r5
   1BAB FD            [12]  802 	mov	r5,a
   1BAC AA 77         [24]  803 	mov	r2,_swap_bytes_i_1_138
   1BAE 7B 00         [12]  804 	mov	r3,#0x00
   1BB0 C3            [12]  805 	clr	c
   1BB1 EA            [12]  806 	mov	a,r2
   1BB2 9C            [12]  807 	subb	a,r4
   1BB3 EB            [12]  808 	mov	a,r3
   1BB4 64 80         [12]  809 	xrl	a,#0x80
   1BB6 8D F0         [24]  810 	mov	b,r5
   1BB8 63 F0 80      [24]  811 	xrl	b,#0x80
   1BBB 95 F0         [12]  812 	subb	a,b
   1BBD 50 32         [24]  813 	jnc	00105$
                            814 ;	radio/mavlink.c:121: register uint8_t tmp = pbuf[i];
   1BBF E5 77         [12]  815 	mov	a,_swap_bytes_i_1_138
   1BC1 24 72         [12]  816 	add	a,#_pbuf
   1BC3 FC            [12]  817 	mov	r4,a
   1BC4 E4            [12]  818 	clr	a
   1BC5 34 04         [12]  819 	addc	a,#(_pbuf >> 8)
   1BC7 FD            [12]  820 	mov	r5,a
   1BC8 8C 82         [24]  821 	mov	dpl,r4
   1BCA 8D 83         [24]  822 	mov	dph,r5
   1BCC E0            [24]  823 	movx	a,@dptr
   1BCD F5 78         [12]  824 	mov	_swap_bytes_tmp_2_139,a
                            825 ;	radio/mavlink.c:122: pbuf[i] = pbuf[i+1];
   1BCF E5 77         [12]  826 	mov	a,_swap_bytes_i_1_138
   1BD1 04            [12]  827 	inc	a
   1BD2 24 72         [12]  828 	add	a,#_pbuf
   1BD4 FA            [12]  829 	mov	r2,a
   1BD5 E4            [12]  830 	clr	a
   1BD6 34 04         [12]  831 	addc	a,#(_pbuf >> 8)
   1BD8 FB            [12]  832 	mov	r3,a
   1BD9 8A 82         [24]  833 	mov	dpl,r2
   1BDB 8B 83         [24]  834 	mov	dph,r3
   1BDD E0            [24]  835 	movx	a,@dptr
   1BDE FE            [12]  836 	mov	r6,a
   1BDF 8C 82         [24]  837 	mov	dpl,r4
   1BE1 8D 83         [24]  838 	mov	dph,r5
   1BE3 F0            [24]  839 	movx	@dptr,a
                            840 ;	radio/mavlink.c:123: pbuf[i+1] = tmp;
   1BE4 8A 82         [24]  841 	mov	dpl,r2
   1BE6 8B 83         [24]  842 	mov	dph,r3
   1BE8 E5 78         [12]  843 	mov	a,_swap_bytes_tmp_2_139
   1BEA F0            [24]  844 	movx	@dptr,a
                            845 ;	radio/mavlink.c:120: for (i=ofs; i<ofs+len; i+=2) {
   1BEB 05 77         [12]  846 	inc	_swap_bytes_i_1_138
   1BED 05 77         [12]  847 	inc	_swap_bytes_i_1_138
   1BEF 80 AD         [24]  848 	sjmp	00103$
   1BF1                     849 00105$:
   1BF1 22            [24]  850 	ret
                            851 ;------------------------------------------------------------
                            852 ;Allocation info for local variables in function 'MAVLink_report'
                            853 ;------------------------------------------------------------
                            854 ;sloc0                     Allocated with name '_MAVLink_report_sloc0_1_0'
                            855 ;m                         Allocated with name '_MAVLink_report_m_2_142'
                            856 ;m                         Allocated with name '_MAVLink_report_m_2_143'
                            857 ;------------------------------------------------------------
                            858 ;	radio/mavlink.c:128: void MAVLink_report(void)
                            859 ;	-----------------------------------------
                            860 ;	 function MAVLink_report
                            861 ;	-----------------------------------------
   1BF2                     862 _MAVLink_report:
                            863 ;	radio/mavlink.c:130: pbuf[0] = using_mavlink_10?254:'U';
   1BF2 30 0E 04      [24]  864 	jnb	_using_mavlink_10,00108$
   1BF5 7F FE         [12]  865 	mov	r7,#0xFE
   1BF7 80 02         [24]  866 	sjmp	00109$
   1BF9                     867 00108$:
   1BF9 7F 55         [12]  868 	mov	r7,#0x55
   1BFB                     869 00109$:
   1BFB 90 04 72      [24]  870 	mov	dptr,#_pbuf
   1BFE EF            [12]  871 	mov	a,r7
   1BFF F0            [24]  872 	movx	@dptr,a
                            873 ;	radio/mavlink.c:131: pbuf[1] = sizeof(struct mavlink_RADIO_v09);
   1C00 90 04 73      [24]  874 	mov	dptr,#(_pbuf + 0x0001)
   1C03 74 09         [12]  875 	mov	a,#0x09
   1C05 F0            [24]  876 	movx	@dptr,a
                            877 ;	radio/mavlink.c:132: pbuf[2] = seqnum++;
   1C06 78 55         [12]  878 	mov	r0,#_seqnum
   1C08 E2            [24]  879 	movx	a,@r0
   1C09 FF            [12]  880 	mov	r7,a
   1C0A 78 55         [12]  881 	mov	r0,#_seqnum
   1C0C 04            [12]  882 	inc	a
   1C0D F2            [24]  883 	movx	@r0,a
   1C0E 90 04 74      [24]  884 	mov	dptr,#(_pbuf + 0x0002)
   1C11 EF            [12]  885 	mov	a,r7
   1C12 F0            [24]  886 	movx	@dptr,a
                            887 ;	radio/mavlink.c:133: pbuf[3] = RADIO_SOURCE_SYSTEM;
   1C13 90 04 75      [24]  888 	mov	dptr,#(_pbuf + 0x0003)
   1C16 74 33         [12]  889 	mov	a,#0x33
   1C18 F0            [24]  890 	movx	@dptr,a
                            891 ;	radio/mavlink.c:134: pbuf[4] = RADIO_SOURCE_COMPONENT;
   1C19 90 04 76      [24]  892 	mov	dptr,#(_pbuf + 0x0004)
   1C1C 74 44         [12]  893 	mov	a,#0x44
   1C1E F0            [24]  894 	movx	@dptr,a
                            895 ;	radio/mavlink.c:135: pbuf[5] = MAVLINK_MSG_ID_RADIO;
   1C1F 90 04 77      [24]  896 	mov	dptr,#(_pbuf + 0x0005)
   1C22 74 A6         [12]  897 	mov	a,#0xA6
   1C24 F0            [24]  898 	movx	@dptr,a
                            899 ;	radio/mavlink.c:137: if (using_mavlink_10) {
   1C25 20 0E 03      [24]  900 	jb	_using_mavlink_10,00120$
   1C28 02 1C F9      [24]  901 	ljmp	00102$
   1C2B                     902 00120$:
                            903 ;	radio/mavlink.c:138: struct mavlink_RADIO_v10 *m = (struct mavlink_RADIO_v10 *)&pbuf[6];
   1C2B 7E 78         [12]  904 	mov	r6,#(_pbuf + 0x0006)
   1C2D 7F 04         [12]  905 	mov	r7,#((_pbuf + 0x0006) >> 8)
   1C2F 7D 00         [12]  906 	mov	r5,#0x00
                            907 ;	radio/mavlink.c:139: m->rxerrors = errors.rx_errors;
   1C31 78 34         [12]  908 	mov	r0,#_errors
   1C33 E2            [24]  909 	movx	a,@r0
   1C34 FB            [12]  910 	mov	r3,a
   1C35 08            [12]  911 	inc	r0
   1C36 E2            [24]  912 	movx	a,@r0
   1C37 FC            [12]  913 	mov	r4,a
   1C38 8E 82         [24]  914 	mov	dpl,r6
   1C3A 8F 83         [24]  915 	mov	dph,r7
   1C3C 8D F0         [24]  916 	mov	b,r5
   1C3E EB            [12]  917 	mov	a,r3
   1C3F 12 5D 7C      [24]  918 	lcall	__gptrput
   1C42 A3            [24]  919 	inc	dptr
   1C43 EC            [12]  920 	mov	a,r4
   1C44 12 5D 7C      [24]  921 	lcall	__gptrput
                            922 ;	radio/mavlink.c:140: m->fixed    = errors.corrected_packets;
   1C47 74 02         [12]  923 	mov	a,#0x02
   1C49 2E            [12]  924 	add	a,r6
   1C4A F5 28         [12]  925 	mov	_MAVLink_report_sloc0_1_0,a
   1C4C E4            [12]  926 	clr	a
   1C4D 3F            [12]  927 	addc	a,r7
   1C4E F5 29         [12]  928 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1C50 8D 2A         [24]  929 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1C52 78 3E         [12]  930 	mov	r0,#(_errors + 0x000a)
   1C54 E2            [24]  931 	movx	a,@r0
   1C55 FB            [12]  932 	mov	r3,a
   1C56 08            [12]  933 	inc	r0
   1C57 E2            [24]  934 	movx	a,@r0
   1C58 FC            [12]  935 	mov	r4,a
   1C59 85 28 82      [24]  936 	mov	dpl,_MAVLink_report_sloc0_1_0
   1C5C 85 29 83      [24]  937 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1C5F 85 2A F0      [24]  938 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1C62 EB            [12]  939 	mov	a,r3
   1C63 12 5D 7C      [24]  940 	lcall	__gptrput
   1C66 A3            [24]  941 	inc	dptr
   1C67 EC            [12]  942 	mov	a,r4
   1C68 12 5D 7C      [24]  943 	lcall	__gptrput
                            944 ;	radio/mavlink.c:141: m->txbuf    = serial_read_space();
   1C6B 74 06         [12]  945 	mov	a,#0x06
   1C6D 2E            [12]  946 	add	a,r6
   1C6E F5 28         [12]  947 	mov	_MAVLink_report_sloc0_1_0,a
   1C70 E4            [12]  948 	clr	a
   1C71 3F            [12]  949 	addc	a,r7
   1C72 F5 29         [12]  950 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1C74 8D 2A         [24]  951 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1C76 C0 07         [24]  952 	push	ar7
   1C78 C0 06         [24]  953 	push	ar6
   1C7A C0 05         [24]  954 	push	ar5
   1C7C 12 43 FC      [24]  955 	lcall	_serial_read_space
   1C7F AC 82         [24]  956 	mov	r4,dpl
   1C81 D0 05         [24]  957 	pop	ar5
   1C83 D0 06         [24]  958 	pop	ar6
   1C85 D0 07         [24]  959 	pop	ar7
   1C87 85 28 82      [24]  960 	mov	dpl,_MAVLink_report_sloc0_1_0
   1C8A 85 29 83      [24]  961 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1C8D 85 2A F0      [24]  962 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1C90 EC            [12]  963 	mov	a,r4
   1C91 12 5D 7C      [24]  964 	lcall	__gptrput
                            965 ;	radio/mavlink.c:142: m->rssi     = statistics.average_rssi;
   1C94 74 04         [12]  966 	mov	a,#0x04
   1C96 2E            [12]  967 	add	a,r6
   1C97 F5 28         [12]  968 	mov	_MAVLink_report_sloc0_1_0,a
   1C99 E4            [12]  969 	clr	a
   1C9A 3F            [12]  970 	addc	a,r7
   1C9B F5 29         [12]  971 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1C9D 8D 2A         [24]  972 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1C9F 78 40         [12]  973 	mov	r0,#_statistics
   1CA1 E2            [24]  974 	movx	a,@r0
   1CA2 85 28 82      [24]  975 	mov	dpl,_MAVLink_report_sloc0_1_0
   1CA5 85 29 83      [24]  976 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1CA8 85 2A F0      [24]  977 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1CAB 12 5D 7C      [24]  978 	lcall	__gptrput
                            979 ;	radio/mavlink.c:143: m->remrssi  = remote_statistics.average_rssi;
   1CAE 74 05         [12]  980 	mov	a,#0x05
   1CB0 2E            [12]  981 	add	a,r6
   1CB1 F5 28         [12]  982 	mov	_MAVLink_report_sloc0_1_0,a
   1CB3 E4            [12]  983 	clr	a
   1CB4 3F            [12]  984 	addc	a,r7
   1CB5 F5 29         [12]  985 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1CB7 8D 2A         [24]  986 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1CB9 78 44         [12]  987 	mov	r0,#_remote_statistics
   1CBB E2            [24]  988 	movx	a,@r0
   1CBC 85 28 82      [24]  989 	mov	dpl,_MAVLink_report_sloc0_1_0
   1CBF 85 29 83      [24]  990 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1CC2 85 2A F0      [24]  991 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1CC5 12 5D 7C      [24]  992 	lcall	__gptrput
                            993 ;	radio/mavlink.c:144: m->noise    = statistics.average_noise;
   1CC8 74 07         [12]  994 	mov	a,#0x07
   1CCA 2E            [12]  995 	add	a,r6
   1CCB F5 28         [12]  996 	mov	_MAVLink_report_sloc0_1_0,a
   1CCD E4            [12]  997 	clr	a
   1CCE 3F            [12]  998 	addc	a,r7
   1CCF F5 29         [12]  999 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1CD1 8D 2A         [24] 1000 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1CD3 78 41         [12] 1001 	mov	r0,#(_statistics + 0x0001)
   1CD5 E2            [24] 1002 	movx	a,@r0
   1CD6 85 28 82      [24] 1003 	mov	dpl,_MAVLink_report_sloc0_1_0
   1CD9 85 29 83      [24] 1004 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1CDC 85 2A F0      [24] 1005 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1CDF 12 5D 7C      [24] 1006 	lcall	__gptrput
                           1007 ;	radio/mavlink.c:145: m->remnoise = remote_statistics.average_noise;
   1CE2 74 08         [12] 1008 	mov	a,#0x08
   1CE4 2E            [12] 1009 	add	a,r6
   1CE5 FE            [12] 1010 	mov	r6,a
   1CE6 E4            [12] 1011 	clr	a
   1CE7 3F            [12] 1012 	addc	a,r7
   1CE8 FF            [12] 1013 	mov	r7,a
   1CE9 78 45         [12] 1014 	mov	r0,#(_remote_statistics + 0x0001)
   1CEB E2            [24] 1015 	movx	a,@r0
   1CEC FC            [12] 1016 	mov	r4,a
   1CED 8E 82         [24] 1017 	mov	dpl,r6
   1CEF 8F 83         [24] 1018 	mov	dph,r7
   1CF1 8D F0         [24] 1019 	mov	b,r5
   1CF3 12 5D 7C      [24] 1020 	lcall	__gptrput
   1CF6 02 1D CE      [24] 1021 	ljmp	00103$
   1CF9                    1022 00102$:
                           1023 ;	radio/mavlink.c:147: struct mavlink_RADIO_v09 *m = (struct mavlink_RADIO_v09 *)&pbuf[6];
   1CF9 7E 78         [12] 1024 	mov	r6,#(_pbuf + 0x0006)
   1CFB 7F 04         [12] 1025 	mov	r7,#((_pbuf + 0x0006) >> 8)
   1CFD 7D 00         [12] 1026 	mov	r5,#0x00
                           1027 ;	radio/mavlink.c:148: m->rxerrors = errors.rx_errors;
   1CFF 74 05         [12] 1028 	mov	a,#0x05
   1D01 2E            [12] 1029 	add	a,r6
   1D02 F5 28         [12] 1030 	mov	_MAVLink_report_sloc0_1_0,a
   1D04 E4            [12] 1031 	clr	a
   1D05 3F            [12] 1032 	addc	a,r7
   1D06 F5 29         [12] 1033 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1D08 8D 2A         [24] 1034 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1D0A 78 34         [12] 1035 	mov	r0,#_errors
   1D0C E2            [24] 1036 	movx	a,@r0
   1D0D FB            [12] 1037 	mov	r3,a
   1D0E 08            [12] 1038 	inc	r0
   1D0F E2            [24] 1039 	movx	a,@r0
   1D10 FC            [12] 1040 	mov	r4,a
   1D11 85 28 82      [24] 1041 	mov	dpl,_MAVLink_report_sloc0_1_0
   1D14 85 29 83      [24] 1042 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1D17 85 2A F0      [24] 1043 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1D1A EB            [12] 1044 	mov	a,r3
   1D1B 12 5D 7C      [24] 1045 	lcall	__gptrput
   1D1E A3            [24] 1046 	inc	dptr
   1D1F EC            [12] 1047 	mov	a,r4
   1D20 12 5D 7C      [24] 1048 	lcall	__gptrput
                           1049 ;	radio/mavlink.c:149: m->fixed    = errors.corrected_packets;
   1D23 74 07         [12] 1050 	mov	a,#0x07
   1D25 2E            [12] 1051 	add	a,r6
   1D26 F5 28         [12] 1052 	mov	_MAVLink_report_sloc0_1_0,a
   1D28 E4            [12] 1053 	clr	a
   1D29 3F            [12] 1054 	addc	a,r7
   1D2A F5 29         [12] 1055 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1D2C 8D 2A         [24] 1056 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1D2E 78 3E         [12] 1057 	mov	r0,#(_errors + 0x000a)
   1D30 E2            [24] 1058 	movx	a,@r0
   1D31 FB            [12] 1059 	mov	r3,a
   1D32 08            [12] 1060 	inc	r0
   1D33 E2            [24] 1061 	movx	a,@r0
   1D34 FC            [12] 1062 	mov	r4,a
   1D35 85 28 82      [24] 1063 	mov	dpl,_MAVLink_report_sloc0_1_0
   1D38 85 29 83      [24] 1064 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1D3B 85 2A F0      [24] 1065 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1D3E EB            [12] 1066 	mov	a,r3
   1D3F 12 5D 7C      [24] 1067 	lcall	__gptrput
   1D42 A3            [24] 1068 	inc	dptr
   1D43 EC            [12] 1069 	mov	a,r4
   1D44 12 5D 7C      [24] 1070 	lcall	__gptrput
                           1071 ;	radio/mavlink.c:150: m->txbuf    = serial_read_space();
   1D47 74 02         [12] 1072 	mov	a,#0x02
   1D49 2E            [12] 1073 	add	a,r6
   1D4A F5 28         [12] 1074 	mov	_MAVLink_report_sloc0_1_0,a
   1D4C E4            [12] 1075 	clr	a
   1D4D 3F            [12] 1076 	addc	a,r7
   1D4E F5 29         [12] 1077 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1D50 8D 2A         [24] 1078 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1D52 C0 07         [24] 1079 	push	ar7
   1D54 C0 06         [24] 1080 	push	ar6
   1D56 C0 05         [24] 1081 	push	ar5
   1D58 12 43 FC      [24] 1082 	lcall	_serial_read_space
   1D5B AC 82         [24] 1083 	mov	r4,dpl
   1D5D D0 05         [24] 1084 	pop	ar5
   1D5F D0 06         [24] 1085 	pop	ar6
   1D61 D0 07         [24] 1086 	pop	ar7
   1D63 85 28 82      [24] 1087 	mov	dpl,_MAVLink_report_sloc0_1_0
   1D66 85 29 83      [24] 1088 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1D69 85 2A F0      [24] 1089 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1D6C EC            [12] 1090 	mov	a,r4
   1D6D 12 5D 7C      [24] 1091 	lcall	__gptrput
                           1092 ;	radio/mavlink.c:151: m->rssi     = statistics.average_rssi;
   1D70 78 40         [12] 1093 	mov	r0,#_statistics
   1D72 E2            [24] 1094 	movx	a,@r0
   1D73 8E 82         [24] 1095 	mov	dpl,r6
   1D75 8F 83         [24] 1096 	mov	dph,r7
   1D77 8D F0         [24] 1097 	mov	b,r5
   1D79 12 5D 7C      [24] 1098 	lcall	__gptrput
                           1099 ;	radio/mavlink.c:152: m->remrssi  = remote_statistics.average_rssi;
   1D7C 74 01         [12] 1100 	mov	a,#0x01
   1D7E 2E            [12] 1101 	add	a,r6
   1D7F F5 28         [12] 1102 	mov	_MAVLink_report_sloc0_1_0,a
   1D81 E4            [12] 1103 	clr	a
   1D82 3F            [12] 1104 	addc	a,r7
   1D83 F5 29         [12] 1105 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1D85 8D 2A         [24] 1106 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1D87 78 44         [12] 1107 	mov	r0,#_remote_statistics
   1D89 E2            [24] 1108 	movx	a,@r0
   1D8A 85 28 82      [24] 1109 	mov	dpl,_MAVLink_report_sloc0_1_0
   1D8D 85 29 83      [24] 1110 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1D90 85 2A F0      [24] 1111 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1D93 12 5D 7C      [24] 1112 	lcall	__gptrput
                           1113 ;	radio/mavlink.c:153: m->noise    = statistics.average_noise;
   1D96 74 03         [12] 1114 	mov	a,#0x03
   1D98 2E            [12] 1115 	add	a,r6
   1D99 F5 28         [12] 1116 	mov	_MAVLink_report_sloc0_1_0,a
   1D9B E4            [12] 1117 	clr	a
   1D9C 3F            [12] 1118 	addc	a,r7
   1D9D F5 29         [12] 1119 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1D9F 8D 2A         [24] 1120 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1DA1 78 41         [12] 1121 	mov	r0,#(_statistics + 0x0001)
   1DA3 E2            [24] 1122 	movx	a,@r0
   1DA4 85 28 82      [24] 1123 	mov	dpl,_MAVLink_report_sloc0_1_0
   1DA7 85 29 83      [24] 1124 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1DAA 85 2A F0      [24] 1125 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1DAD 12 5D 7C      [24] 1126 	lcall	__gptrput
                           1127 ;	radio/mavlink.c:154: m->remnoise = remote_statistics.average_noise;
   1DB0 74 04         [12] 1128 	mov	a,#0x04
   1DB2 2E            [12] 1129 	add	a,r6
   1DB3 FE            [12] 1130 	mov	r6,a
   1DB4 E4            [12] 1131 	clr	a
   1DB5 3F            [12] 1132 	addc	a,r7
   1DB6 FF            [12] 1133 	mov	r7,a
   1DB7 78 45         [12] 1134 	mov	r0,#(_remote_statistics + 0x0001)
   1DB9 E2            [24] 1135 	movx	a,@r0
   1DBA 8E 82         [24] 1136 	mov	dpl,r6
   1DBC 8F 83         [24] 1137 	mov	dph,r7
   1DBE 8D F0         [24] 1138 	mov	b,r5
   1DC0 12 5D 7C      [24] 1139 	lcall	__gptrput
                           1140 ;	radio/mavlink.c:155: swap_bytes(6+5, 4);
   1DC3 78 57         [12] 1141 	mov	r0,#_swap_bytes_PARM_2
   1DC5 74 04         [12] 1142 	mov	a,#0x04
   1DC7 F2            [24] 1143 	movx	@r0,a
   1DC8 75 82 0B      [24] 1144 	mov	dpl,#0x0B
   1DCB 12 1B 9A      [24] 1145 	lcall	_swap_bytes
   1DCE                    1146 00103$:
                           1147 ;	radio/mavlink.c:157: mavlink_crc();
   1DCE 12 1A E3      [24] 1148 	lcall	_mavlink_crc
                           1149 ;	radio/mavlink.c:159: if (serial_write_space() < sizeof(struct mavlink_RADIO_v09)+8) {
   1DD1 12 41 E5      [24] 1150 	lcall	_serial_write_space
   1DD4 AE 82         [24] 1151 	mov	r6,dpl
   1DD6 AF 83         [24] 1152 	mov	r7,dph
   1DD8 C3            [12] 1153 	clr	c
   1DD9 EE            [12] 1154 	mov	a,r6
   1DDA 94 11         [12] 1155 	subb	a,#0x11
   1DDC EF            [12] 1156 	mov	a,r7
   1DDD 94 00         [12] 1157 	subb	a,#0x00
   1DDF 50 01         [24] 1158 	jnc	00105$
                           1159 ;	radio/mavlink.c:161: return;
   1DE1 22            [24] 1160 	ret
   1DE2                    1161 00105$:
                           1162 ;	radio/mavlink.c:164: serial_write_buf(pbuf, sizeof(struct mavlink_RADIO_v09)+8);
   1DE2 78 B2         [12] 1163 	mov	r0,#_serial_write_buf_PARM_2
   1DE4 74 11         [12] 1164 	mov	a,#0x11
   1DE6 F2            [24] 1165 	movx	@r0,a
   1DE7 90 04 72      [24] 1166 	mov	dptr,#_pbuf
   1DEA 02 40 C5      [24] 1167 	ljmp	_serial_write_buf
                           1168 	.area CSEG    (CODE)
                           1169 	.area CONST   (CODE)
                           1170 	.area XINIT   (CODE)
                           1171 	.area CABS    (ABS,CODE)
