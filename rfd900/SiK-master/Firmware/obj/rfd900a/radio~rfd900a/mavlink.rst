                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:09 2013
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
                             15 	.globl _NSS1
                             16 	.globl _IRQ
                             17 	.globl _PA_ENABLE
                             18 	.globl _PIN_ENABLE
                             19 	.globl _PIN_CONFIG
                             20 	.globl _LED_GREEN
                             21 	.globl _LED_RED
                             22 	.globl _SPI0EN
                             23 	.globl _TXBMT0
                             24 	.globl _NSS0MD0
                             25 	.globl _NSS0MD1
                             26 	.globl _RXOVRN0
                             27 	.globl _MODF0
                             28 	.globl _WCOL0
                             29 	.globl _SPIF0
                             30 	.globl _AD0CM0
                             31 	.globl _AD0CM1
                             32 	.globl _AD0CM2
                             33 	.globl _AD0WINT
                             34 	.globl _AD0BUSY
                             35 	.globl _AD0INT
                             36 	.globl _BURSTEN
                             37 	.globl _AD0EN
                             38 	.globl _CCF0
                             39 	.globl _CCF1
                             40 	.globl _CCF2
                             41 	.globl _CCF3
                             42 	.globl _CCF4
                             43 	.globl _CCF5
                             44 	.globl _CR
                             45 	.globl _CF
                             46 	.globl _P
                             47 	.globl _F1
                             48 	.globl _OV
                             49 	.globl _RS0
                             50 	.globl _RS1
                             51 	.globl _F0
                             52 	.globl _AC
                             53 	.globl _CY
                             54 	.globl _T2XCLK
                             55 	.globl _T2RCLK
                             56 	.globl _TR2
                             57 	.globl _T2SPLIT
                             58 	.globl _TF2CEN
                             59 	.globl _TF2LEN
                             60 	.globl _TF2L
                             61 	.globl _TF2H
                             62 	.globl _SI
                             63 	.globl _ACK
                             64 	.globl _ARBLOST
                             65 	.globl _ACKRQ
                             66 	.globl _STO
                             67 	.globl _STA
                             68 	.globl _TXMODE
                             69 	.globl _MASTER
                             70 	.globl _PX0
                             71 	.globl _PT0
                             72 	.globl _PX1
                             73 	.globl _PT1
                             74 	.globl _PS0
                             75 	.globl _PT2
                             76 	.globl _PSPI0
                             77 	.globl _SPI1EN
                             78 	.globl _TXBMT1
                             79 	.globl _NSS1MD0
                             80 	.globl _NSS1MD1
                             81 	.globl _RXOVRN1
                             82 	.globl _MODF1
                             83 	.globl _WCOL1
                             84 	.globl _SPIF1
                             85 	.globl _EX0
                             86 	.globl _ET0
                             87 	.globl _EX1
                             88 	.globl _ET1
                             89 	.globl _ES0
                             90 	.globl _ET2
                             91 	.globl _ESPI0
                             92 	.globl _EA
                             93 	.globl _RI0
                             94 	.globl _TI0
                             95 	.globl _RB80
                             96 	.globl _TB80
                             97 	.globl _REN0
                             98 	.globl _MCE0
                             99 	.globl _S0MODE
                            100 	.globl _CRC0VAL
                            101 	.globl _CRC0INIT
                            102 	.globl _CRC0SEL
                            103 	.globl _IT0
                            104 	.globl _IE0
                            105 	.globl _IT1
                            106 	.globl _IE1
                            107 	.globl _TR0
                            108 	.globl _TF0
                            109 	.globl _TR1
                            110 	.globl _TF1
                            111 	.globl _PCA0CP4
                            112 	.globl _PCA0CP0
                            113 	.globl _PCA0
                            114 	.globl _PCA0CP3
                            115 	.globl _PCA0CP2
                            116 	.globl _PCA0CP1
                            117 	.globl _PCA0CP5
                            118 	.globl _TMR2
                            119 	.globl _TMR2RL
                            120 	.globl _ADC0LT
                            121 	.globl _ADC0GT
                            122 	.globl _ADC0
                            123 	.globl _TMR3
                            124 	.globl _TMR3RL
                            125 	.globl _TOFF
                            126 	.globl _DP
                            127 	.globl _VDM0CN
                            128 	.globl _PCA0CPH4
                            129 	.globl _PCA0CPL4
                            130 	.globl _PCA0CPH0
                            131 	.globl _PCA0CPL0
                            132 	.globl _PCA0H
                            133 	.globl _PCA0L
                            134 	.globl _SPI0CN
                            135 	.globl _EIP2
                            136 	.globl _EIP1
                            137 	.globl _SMB0ADM
                            138 	.globl _SMB0ADR
                            139 	.globl _P2MDIN
                            140 	.globl _P1MDIN
                            141 	.globl _P0MDIN
                            142 	.globl _B
                            143 	.globl _RSTSRC
                            144 	.globl _PCA0CPH3
                            145 	.globl _PCA0CPL3
                            146 	.globl _PCA0CPH2
                            147 	.globl _PCA0CPL2
                            148 	.globl _PCA0CPH1
                            149 	.globl _PCA0CPL1
                            150 	.globl _ADC0CN
                            151 	.globl _EIE2
                            152 	.globl _EIE1
                            153 	.globl _FLWR
                            154 	.globl _IT01CF
                            155 	.globl _XBR2
                            156 	.globl _XBR1
                            157 	.globl _XBR0
                            158 	.globl _ACC
                            159 	.globl _PCA0PWM
                            160 	.globl _PCA0CPM4
                            161 	.globl _PCA0CPM3
                            162 	.globl _PCA0CPM2
                            163 	.globl _PCA0CPM1
                            164 	.globl _PCA0CPM0
                            165 	.globl _PCA0MD
                            166 	.globl _PCA0CN
                            167 	.globl _P0MAT
                            168 	.globl _P2SKIP
                            169 	.globl _P1SKIP
                            170 	.globl _P0SKIP
                            171 	.globl _PCA0CPH5
                            172 	.globl _PCA0CPL5
                            173 	.globl _REF0CN
                            174 	.globl _PSW
                            175 	.globl _P1MAT
                            176 	.globl _PCA0CPM5
                            177 	.globl _TMR2H
                            178 	.globl _TMR2L
                            179 	.globl _TMR2RLH
                            180 	.globl _TMR2RLL
                            181 	.globl _REG0CN
                            182 	.globl _TMR2CN
                            183 	.globl _P0MASK
                            184 	.globl _ADC0LTH
                            185 	.globl _ADC0LTL
                            186 	.globl _ADC0GTH
                            187 	.globl _ADC0GTL
                            188 	.globl _SMB0DAT
                            189 	.globl _SMB0CF
                            190 	.globl _SMB0CN
                            191 	.globl _P1MASK
                            192 	.globl _ADC0H
                            193 	.globl _ADC0L
                            194 	.globl _ADC0TK
                            195 	.globl _ADC0CF
                            196 	.globl _ADC0MX
                            197 	.globl _ADC0PWR
                            198 	.globl _ADC0AC
                            199 	.globl _IREF0CN
                            200 	.globl _IP
                            201 	.globl _FLKEY
                            202 	.globl _FLSCL
                            203 	.globl _PMU0CF
                            204 	.globl _OSCICL
                            205 	.globl _OSCICN
                            206 	.globl _OSCXCN
                            207 	.globl _SPI1CN
                            208 	.globl _ONESHOT
                            209 	.globl _EMI0TC
                            210 	.globl _RTC0KEY
                            211 	.globl _RTC0DAT
                            212 	.globl _RTC0ADR
                            213 	.globl _EMI0CF
                            214 	.globl _EMI0CN
                            215 	.globl _CLKSEL
                            216 	.globl _IE
                            217 	.globl _SFRPAGE
                            218 	.globl _P2DRV
                            219 	.globl _P2MDOUT
                            220 	.globl _P1DRV
                            221 	.globl _P1MDOUT
                            222 	.globl _P0DRV
                            223 	.globl _P0MDOUT
                            224 	.globl _SPI0DAT
                            225 	.globl _SPI0CKR
                            226 	.globl _SPI0CFG
                            227 	.globl _P2
                            228 	.globl _CPT0MX
                            229 	.globl _CPT1MX
                            230 	.globl _CPT0MD
                            231 	.globl _CPT1MD
                            232 	.globl _CPT0CN
                            233 	.globl _CPT1CN
                            234 	.globl _SBUF0
                            235 	.globl _SCON0
                            236 	.globl _CRC0CNT
                            237 	.globl _DC0CN
                            238 	.globl _CRC0AUTO
                            239 	.globl _DC0CF
                            240 	.globl _TMR3H
                            241 	.globl _CRC0FLIP
                            242 	.globl _TMR3L
                            243 	.globl _CRC0IN
                            244 	.globl _TMR3RLH
                            245 	.globl _CRC0CN
                            246 	.globl _TMR3RLL
                            247 	.globl _CRC0DAT
                            248 	.globl _TMR3CN
                            249 	.globl _P1
                            250 	.globl _PSCTL
                            251 	.globl _CKCON
                            252 	.globl _TH1
                            253 	.globl _TH0
                            254 	.globl _TL1
                            255 	.globl _TL0
                            256 	.globl _TMOD
                            257 	.globl _TCON
                            258 	.globl _PCON
                            259 	.globl _TOFFH
                            260 	.globl _SPI1DAT
                            261 	.globl _TOFFL
                            262 	.globl _SPI1CKR
                            263 	.globl _SPI1CFG
                            264 	.globl _DPH
                            265 	.globl _DPL
                            266 	.globl _SP
                            267 	.globl _P0
                            268 	.globl _MAVLink_report
                            269 ;--------------------------------------------------------
                            270 ; special function registers
                            271 ;--------------------------------------------------------
                            272 	.area RSEG    (ABS,DATA)
   0000                     273 	.org 0x0000
                     0080   274 _P0	=	0x0080
                     0081   275 _SP	=	0x0081
                     0082   276 _DPL	=	0x0082
                     0083   277 _DPH	=	0x0083
                     0084   278 _SPI1CFG	=	0x0084
                     0085   279 _SPI1CKR	=	0x0085
                     0085   280 _TOFFL	=	0x0085
                     0086   281 _SPI1DAT	=	0x0086
                     0086   282 _TOFFH	=	0x0086
                     0087   283 _PCON	=	0x0087
                     0088   284 _TCON	=	0x0088
                     0089   285 _TMOD	=	0x0089
                     008A   286 _TL0	=	0x008a
                     008B   287 _TL1	=	0x008b
                     008C   288 _TH0	=	0x008c
                     008D   289 _TH1	=	0x008d
                     008E   290 _CKCON	=	0x008e
                     008F   291 _PSCTL	=	0x008f
                     0090   292 _P1	=	0x0090
                     0091   293 _TMR3CN	=	0x0091
                     0091   294 _CRC0DAT	=	0x0091
                     0092   295 _TMR3RLL	=	0x0092
                     0092   296 _CRC0CN	=	0x0092
                     0093   297 _TMR3RLH	=	0x0093
                     0093   298 _CRC0IN	=	0x0093
                     0094   299 _TMR3L	=	0x0094
                     0095   300 _CRC0FLIP	=	0x0095
                     0095   301 _TMR3H	=	0x0095
                     0096   302 _DC0CF	=	0x0096
                     0096   303 _CRC0AUTO	=	0x0096
                     0097   304 _DC0CN	=	0x0097
                     0097   305 _CRC0CNT	=	0x0097
                     0098   306 _SCON0	=	0x0098
                     0099   307 _SBUF0	=	0x0099
                     009A   308 _CPT1CN	=	0x009a
                     009B   309 _CPT0CN	=	0x009b
                     009C   310 _CPT1MD	=	0x009c
                     009D   311 _CPT0MD	=	0x009d
                     009E   312 _CPT1MX	=	0x009e
                     009F   313 _CPT0MX	=	0x009f
                     00A0   314 _P2	=	0x00a0
                     00A1   315 _SPI0CFG	=	0x00a1
                     00A2   316 _SPI0CKR	=	0x00a2
                     00A3   317 _SPI0DAT	=	0x00a3
                     00A4   318 _P0MDOUT	=	0x00a4
                     00A4   319 _P0DRV	=	0x00a4
                     00A5   320 _P1MDOUT	=	0x00a5
                     00A5   321 _P1DRV	=	0x00a5
                     00A6   322 _P2MDOUT	=	0x00a6
                     00A6   323 _P2DRV	=	0x00a6
                     00A7   324 _SFRPAGE	=	0x00a7
                     00A8   325 _IE	=	0x00a8
                     00A9   326 _CLKSEL	=	0x00a9
                     00AA   327 _EMI0CN	=	0x00aa
                     00AB   328 _EMI0CF	=	0x00ab
                     00AC   329 _RTC0ADR	=	0x00ac
                     00AD   330 _RTC0DAT	=	0x00ad
                     00AE   331 _RTC0KEY	=	0x00ae
                     00AF   332 _EMI0TC	=	0x00af
                     00AF   333 _ONESHOT	=	0x00af
                     00B0   334 _SPI1CN	=	0x00b0
                     00B1   335 _OSCXCN	=	0x00b1
                     00B2   336 _OSCICN	=	0x00b2
                     00B3   337 _OSCICL	=	0x00b3
                     00B5   338 _PMU0CF	=	0x00b5
                     00B6   339 _FLSCL	=	0x00b6
                     00B7   340 _FLKEY	=	0x00b7
                     00B8   341 _IP	=	0x00b8
                     00B9   342 _IREF0CN	=	0x00b9
                     00BA   343 _ADC0AC	=	0x00ba
                     00BA   344 _ADC0PWR	=	0x00ba
                     00BB   345 _ADC0MX	=	0x00bb
                     00BC   346 _ADC0CF	=	0x00bc
                     00BD   347 _ADC0TK	=	0x00bd
                     00BD   348 _ADC0L	=	0x00bd
                     00BE   349 _ADC0H	=	0x00be
                     00BF   350 _P1MASK	=	0x00bf
                     00C0   351 _SMB0CN	=	0x00c0
                     00C1   352 _SMB0CF	=	0x00c1
                     00C2   353 _SMB0DAT	=	0x00c2
                     00C3   354 _ADC0GTL	=	0x00c3
                     00C4   355 _ADC0GTH	=	0x00c4
                     00C5   356 _ADC0LTL	=	0x00c5
                     00C6   357 _ADC0LTH	=	0x00c6
                     00C7   358 _P0MASK	=	0x00c7
                     00C8   359 _TMR2CN	=	0x00c8
                     00C9   360 _REG0CN	=	0x00c9
                     00CA   361 _TMR2RLL	=	0x00ca
                     00CB   362 _TMR2RLH	=	0x00cb
                     00CC   363 _TMR2L	=	0x00cc
                     00CD   364 _TMR2H	=	0x00cd
                     00CE   365 _PCA0CPM5	=	0x00ce
                     00CF   366 _P1MAT	=	0x00cf
                     00D0   367 _PSW	=	0x00d0
                     00D1   368 _REF0CN	=	0x00d1
                     00D2   369 _PCA0CPL5	=	0x00d2
                     00D3   370 _PCA0CPH5	=	0x00d3
                     00D4   371 _P0SKIP	=	0x00d4
                     00D5   372 _P1SKIP	=	0x00d5
                     00D6   373 _P2SKIP	=	0x00d6
                     00D7   374 _P0MAT	=	0x00d7
                     00D8   375 _PCA0CN	=	0x00d8
                     00D9   376 _PCA0MD	=	0x00d9
                     00DA   377 _PCA0CPM0	=	0x00da
                     00DB   378 _PCA0CPM1	=	0x00db
                     00DC   379 _PCA0CPM2	=	0x00dc
                     00DD   380 _PCA0CPM3	=	0x00dd
                     00DE   381 _PCA0CPM4	=	0x00de
                     00DF   382 _PCA0PWM	=	0x00df
                     00E0   383 _ACC	=	0x00e0
                     00E1   384 _XBR0	=	0x00e1
                     00E2   385 _XBR1	=	0x00e2
                     00E3   386 _XBR2	=	0x00e3
                     00E4   387 _IT01CF	=	0x00e4
                     00E5   388 _FLWR	=	0x00e5
                     00E6   389 _EIE1	=	0x00e6
                     00E7   390 _EIE2	=	0x00e7
                     00E8   391 _ADC0CN	=	0x00e8
                     00E9   392 _PCA0CPL1	=	0x00e9
                     00EA   393 _PCA0CPH1	=	0x00ea
                     00EB   394 _PCA0CPL2	=	0x00eb
                     00EC   395 _PCA0CPH2	=	0x00ec
                     00ED   396 _PCA0CPL3	=	0x00ed
                     00EE   397 _PCA0CPH3	=	0x00ee
                     00EF   398 _RSTSRC	=	0x00ef
                     00F0   399 _B	=	0x00f0
                     00F1   400 _P0MDIN	=	0x00f1
                     00F2   401 _P1MDIN	=	0x00f2
                     00F3   402 _P2MDIN	=	0x00f3
                     00F4   403 _SMB0ADR	=	0x00f4
                     00F5   404 _SMB0ADM	=	0x00f5
                     00F6   405 _EIP1	=	0x00f6
                     00F7   406 _EIP2	=	0x00f7
                     00F8   407 _SPI0CN	=	0x00f8
                     00F9   408 _PCA0L	=	0x00f9
                     00FA   409 _PCA0H	=	0x00fa
                     00FB   410 _PCA0CPL0	=	0x00fb
                     00FC   411 _PCA0CPH0	=	0x00fc
                     00FD   412 _PCA0CPL4	=	0x00fd
                     00FE   413 _PCA0CPH4	=	0x00fe
                     00FF   414 _VDM0CN	=	0x00ff
                     8382   415 _DP	=	0x8382
                     8685   416 _TOFF	=	0x8685
                     9392   417 _TMR3RL	=	0x9392
                     9594   418 _TMR3	=	0x9594
                     BEBD   419 _ADC0	=	0xbebd
                     C4C3   420 _ADC0GT	=	0xc4c3
                     C6C5   421 _ADC0LT	=	0xc6c5
                     CBCA   422 _TMR2RL	=	0xcbca
                     CDCC   423 _TMR2	=	0xcdcc
                     D3D2   424 _PCA0CP5	=	0xd3d2
                     EAE9   425 _PCA0CP1	=	0xeae9
                     ECEB   426 _PCA0CP2	=	0xeceb
                     EEED   427 _PCA0CP3	=	0xeeed
                     FAF9   428 _PCA0	=	0xfaf9
                     FCFB   429 _PCA0CP0	=	0xfcfb
                     FEFD   430 _PCA0CP4	=	0xfefd
                            431 ;--------------------------------------------------------
                            432 ; special function bits
                            433 ;--------------------------------------------------------
                            434 	.area RSEG    (ABS,DATA)
   0000                     435 	.org 0x0000
                     008F   436 _TF1	=	0x008f
                     008E   437 _TR1	=	0x008e
                     008D   438 _TF0	=	0x008d
                     008C   439 _TR0	=	0x008c
                     008B   440 _IE1	=	0x008b
                     008A   441 _IT1	=	0x008a
                     0089   442 _IE0	=	0x0089
                     0088   443 _IT0	=	0x0088
                     0096   444 _CRC0SEL	=	0x0096
                     0095   445 _CRC0INIT	=	0x0095
                     0094   446 _CRC0VAL	=	0x0094
                     009F   447 _S0MODE	=	0x009f
                     009D   448 _MCE0	=	0x009d
                     009C   449 _REN0	=	0x009c
                     009B   450 _TB80	=	0x009b
                     009A   451 _RB80	=	0x009a
                     0099   452 _TI0	=	0x0099
                     0098   453 _RI0	=	0x0098
                     00AF   454 _EA	=	0x00af
                     00AE   455 _ESPI0	=	0x00ae
                     00AD   456 _ET2	=	0x00ad
                     00AC   457 _ES0	=	0x00ac
                     00AB   458 _ET1	=	0x00ab
                     00AA   459 _EX1	=	0x00aa
                     00A9   460 _ET0	=	0x00a9
                     00A8   461 _EX0	=	0x00a8
                     00B7   462 _SPIF1	=	0x00b7
                     00B6   463 _WCOL1	=	0x00b6
                     00B5   464 _MODF1	=	0x00b5
                     00B4   465 _RXOVRN1	=	0x00b4
                     00B3   466 _NSS1MD1	=	0x00b3
                     00B2   467 _NSS1MD0	=	0x00b2
                     00B1   468 _TXBMT1	=	0x00b1
                     00B0   469 _SPI1EN	=	0x00b0
                     00BE   470 _PSPI0	=	0x00be
                     00BD   471 _PT2	=	0x00bd
                     00BC   472 _PS0	=	0x00bc
                     00BB   473 _PT1	=	0x00bb
                     00BA   474 _PX1	=	0x00ba
                     00B9   475 _PT0	=	0x00b9
                     00B8   476 _PX0	=	0x00b8
                     00C7   477 _MASTER	=	0x00c7
                     00C6   478 _TXMODE	=	0x00c6
                     00C5   479 _STA	=	0x00c5
                     00C4   480 _STO	=	0x00c4
                     00C3   481 _ACKRQ	=	0x00c3
                     00C2   482 _ARBLOST	=	0x00c2
                     00C1   483 _ACK	=	0x00c1
                     00C0   484 _SI	=	0x00c0
                     00CF   485 _TF2H	=	0x00cf
                     00CE   486 _TF2L	=	0x00ce
                     00CD   487 _TF2LEN	=	0x00cd
                     00CC   488 _TF2CEN	=	0x00cc
                     00CB   489 _T2SPLIT	=	0x00cb
                     00CA   490 _TR2	=	0x00ca
                     00C9   491 _T2RCLK	=	0x00c9
                     00C8   492 _T2XCLK	=	0x00c8
                     00D7   493 _CY	=	0x00d7
                     00D6   494 _AC	=	0x00d6
                     00D5   495 _F0	=	0x00d5
                     00D4   496 _RS1	=	0x00d4
                     00D3   497 _RS0	=	0x00d3
                     00D2   498 _OV	=	0x00d2
                     00D1   499 _F1	=	0x00d1
                     00D0   500 _P	=	0x00d0
                     00DF   501 _CF	=	0x00df
                     00DE   502 _CR	=	0x00de
                     00DD   503 _CCF5	=	0x00dd
                     00DC   504 _CCF4	=	0x00dc
                     00DB   505 _CCF3	=	0x00db
                     00DA   506 _CCF2	=	0x00da
                     00D9   507 _CCF1	=	0x00d9
                     00D8   508 _CCF0	=	0x00d8
                     00EF   509 _AD0EN	=	0x00ef
                     00EE   510 _BURSTEN	=	0x00ee
                     00ED   511 _AD0INT	=	0x00ed
                     00EC   512 _AD0BUSY	=	0x00ec
                     00EB   513 _AD0WINT	=	0x00eb
                     00EA   514 _AD0CM2	=	0x00ea
                     00E9   515 _AD0CM1	=	0x00e9
                     00E8   516 _AD0CM0	=	0x00e8
                     00FF   517 _SPIF0	=	0x00ff
                     00FE   518 _WCOL0	=	0x00fe
                     00FD   519 _MODF0	=	0x00fd
                     00FC   520 _RXOVRN0	=	0x00fc
                     00FB   521 _NSS0MD1	=	0x00fb
                     00FA   522 _NSS0MD0	=	0x00fa
                     00F9   523 _TXBMT0	=	0x00f9
                     00F8   524 _SPI0EN	=	0x00f8
                     0096   525 _LED_RED	=	0x0096
                     0095   526 _LED_GREEN	=	0x0095
                     0082   527 _PIN_CONFIG	=	0x0082
                     0083   528 _PIN_ENABLE	=	0x0083
                     00A5   529 _PA_ENABLE	=	0x00a5
                     0087   530 _IRQ	=	0x0087
                     0094   531 _NSS1	=	0x0094
                            532 ;--------------------------------------------------------
                            533 ; overlayable register banks
                            534 ;--------------------------------------------------------
                            535 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     536 	.ds 8
                            537 ;--------------------------------------------------------
                            538 ; internal ram data
                            539 ;--------------------------------------------------------
                            540 	.area DSEG    (DATA)
   0028                     541 _MAVLink_report_sloc0_1_0:
   0028                     542 	.ds 3
                            543 ;--------------------------------------------------------
                            544 ; overlayable items in internal ram 
                            545 ;--------------------------------------------------------
                            546 	.area	OSEG    (OVR,DATA)
   0077                     547 _mavlink_crc_length_1_136:
   0077                     548 	.ds 1
   0078                     549 _mavlink_crc_tmp_2_138:
   0078                     550 	.ds 1
   0079                     551 _mavlink_crc_sloc0_1_0:
   0079                     552 	.ds 2
   007B                     553 _mavlink_crc_sloc1_1_0:
   007B                     554 	.ds 1
   007C                     555 _mavlink_crc_sloc2_1_0:
   007C                     556 	.ds 1
   007D                     557 _mavlink_crc_sloc3_1_0:
   007D                     558 	.ds 2
                            559 	.area	OSEG    (OVR,DATA)
   0077                     560 _swap_bytes_i_1_140:
   0077                     561 	.ds 1
   0078                     562 _swap_bytes_tmp_2_141:
   0078                     563 	.ds 1
                            564 ;--------------------------------------------------------
                            565 ; indirectly addressable internal ram data
                            566 ;--------------------------------------------------------
                            567 	.area ISEG    (DATA)
                            568 ;--------------------------------------------------------
                            569 ; absolute internal ram data
                            570 ;--------------------------------------------------------
                            571 	.area IABS    (ABS,DATA)
                            572 	.area IABS    (ABS,DATA)
                            573 ;--------------------------------------------------------
                            574 ; bit data
                            575 ;--------------------------------------------------------
                            576 	.area BSEG    (BIT)
                            577 ;--------------------------------------------------------
                            578 ; paged external ram data
                            579 ;--------------------------------------------------------
                            580 	.area PSEG    (PAG,XDATA)
   0059                     581 _seqnum:
   0059                     582 	.ds 1
   005A                     583 _mavlink_crc_i_1_136:
   005A                     584 	.ds 1
   005B                     585 _swap_bytes_PARM_2:
   005B                     586 	.ds 1
                            587 ;--------------------------------------------------------
                            588 ; external ram data
                            589 ;--------------------------------------------------------
                            590 	.area XSEG    (XDATA)
                            591 ;--------------------------------------------------------
                            592 ; absolute external ram data
                            593 ;--------------------------------------------------------
                            594 	.area XABS    (ABS,XDATA)
                            595 ;--------------------------------------------------------
                            596 ; external initialized ram data
                            597 ;--------------------------------------------------------
                            598 	.area XISEG   (XDATA)
                            599 	.area HOME    (CODE)
                            600 	.area GSINIT0 (CODE)
                            601 	.area GSINIT1 (CODE)
                            602 	.area GSINIT2 (CODE)
                            603 	.area GSINIT3 (CODE)
                            604 	.area GSINIT4 (CODE)
                            605 	.area GSINIT5 (CODE)
                            606 	.area GSINIT  (CODE)
                            607 	.area GSFINAL (CODE)
                            608 	.area CSEG    (CODE)
                            609 ;--------------------------------------------------------
                            610 ; global & static initialisations
                            611 ;--------------------------------------------------------
                            612 	.area HOME    (CODE)
                            613 	.area GSINIT  (CODE)
                            614 	.area GSFINAL (CODE)
                            615 	.area GSINIT  (CODE)
                            616 ;--------------------------------------------------------
                            617 ; Home
                            618 ;--------------------------------------------------------
                            619 	.area HOME    (CODE)
                            620 	.area HOME    (CODE)
                            621 ;--------------------------------------------------------
                            622 ; code
                            623 ;--------------------------------------------------------
                            624 	.area CSEG    (CODE)
                            625 ;------------------------------------------------------------
                            626 ;Allocation info for local variables in function 'mavlink_crc'
                            627 ;------------------------------------------------------------
                            628 ;length                    Allocated with name '_mavlink_crc_length_1_136'
                            629 ;tmp                       Allocated with name '_mavlink_crc_tmp_2_138'
                            630 ;sloc0                     Allocated with name '_mavlink_crc_sloc0_1_0'
                            631 ;sloc1                     Allocated with name '_mavlink_crc_sloc1_1_0'
                            632 ;sloc2                     Allocated with name '_mavlink_crc_sloc2_1_0'
                            633 ;sloc3                     Allocated with name '_mavlink_crc_sloc3_1_0'
                            634 ;------------------------------------------------------------
                            635 ;	radio/mavlink.c:55: static void mavlink_crc(void)
                            636 ;	-----------------------------------------
                            637 ;	 function mavlink_crc
                            638 ;	-----------------------------------------
   1C0C                     639 _mavlink_crc:
                     0007   640 	ar7 = 0x07
                     0006   641 	ar6 = 0x06
                     0005   642 	ar5 = 0x05
                     0004   643 	ar4 = 0x04
                     0003   644 	ar3 = 0x03
                     0002   645 	ar2 = 0x02
                     0001   646 	ar1 = 0x01
                     0000   647 	ar0 = 0x00
                            648 ;	radio/mavlink.c:57: register uint8_t length = pbuf[1];
   1C0C 90 04 76      [24]  649 	mov	dptr,#(_pbuf + 0x0001)
   1C0F E0            [24]  650 	movx	a,@dptr
   1C10 F5 77         [12]  651 	mov	_mavlink_crc_length_1_136,a
                            652 ;	radio/mavlink.c:58: __pdata uint16_t sum = 0xFFFF;
   1C12 7D FF         [12]  653 	mov	r5,#0xFF
   1C14 7E FF         [12]  654 	mov	r6,#0xFF
                            655 ;	radio/mavlink.c:61: stoplen = length + 6;
   1C16 74 06         [12]  656 	mov	a,#0x06
   1C18 25 77         [12]  657 	add	a,_mavlink_crc_length_1_136
   1C1A FC            [12]  658 	mov	r4,a
                            659 ;	radio/mavlink.c:63: if (using_mavlink_10) {
   1C1B 30 0F 11      [24]  660 	jnb	_using_mavlink_10,00110$
                            661 ;	radio/mavlink.c:65: pbuf[length+6] = MAVLINK_RADIO_CRC_EXTRA;
   1C1E 74 06         [12]  662 	mov	a,#0x06
   1C20 25 77         [12]  663 	add	a,_mavlink_crc_length_1_136
   1C22 24 75         [12]  664 	add	a,#_pbuf
   1C24 F5 82         [12]  665 	mov	dpl,a
   1C26 E4            [12]  666 	clr	a
   1C27 34 04         [12]  667 	addc	a,#(_pbuf >> 8)
   1C29 F5 83         [12]  668 	mov	dph,a
   1C2B 74 15         [12]  669 	mov	a,#0x15
   1C2D F0            [24]  670 	movx	@dptr,a
                            671 ;	radio/mavlink.c:66: stoplen++;
   1C2E 0C            [12]  672 	inc	r4
                            673 ;	radio/mavlink.c:70: while (i<stoplen) {
   1C2F                     674 00110$:
   1C2F 78 5A         [12]  675 	mov	r0,#_mavlink_crc_i_1_136
   1C31 74 01         [12]  676 	mov	a,#0x01
   1C33 F2            [24]  677 	movx	@r0,a
   1C34                     678 00103$:
   1C34 78 5A         [12]  679 	mov	r0,#_mavlink_crc_i_1_136
   1C36 C3            [12]  680 	clr	c
   1C37 E2            [24]  681 	movx	a,@r0
   1C38 9C            [12]  682 	subb	a,r4
   1C39 50 65         [24]  683 	jnc	00105$
                            684 ;	radio/mavlink.c:72: tmp = pbuf[i] ^ (uint8_t)(sum&0xff);
   1C3B C0 04         [24]  685 	push	ar4
   1C3D 78 5A         [12]  686 	mov	r0,#_mavlink_crc_i_1_136
   1C3F E2            [24]  687 	movx	a,@r0
   1C40 24 75         [12]  688 	add	a,#_pbuf
   1C42 F5 82         [12]  689 	mov	dpl,a
   1C44 E4            [12]  690 	clr	a
   1C45 34 04         [12]  691 	addc	a,#(_pbuf >> 8)
   1C47 F5 83         [12]  692 	mov	dph,a
   1C49 E0            [24]  693 	movx	a,@dptr
   1C4A FA            [12]  694 	mov	r2,a
   1C4B 8D 79         [24]  695 	mov	_mavlink_crc_sloc0_1_0,r5
   1C4D 75 7A 00      [24]  696 	mov	(_mavlink_crc_sloc0_1_0 + 1),#0x00
   1C50 E5 79         [12]  697 	mov	a,_mavlink_crc_sloc0_1_0
   1C52 F5 7B         [12]  698 	mov	_mavlink_crc_sloc1_1_0,a
   1C54 6A            [12]  699 	xrl	a,r2
                            700 ;	radio/mavlink.c:73: tmp ^= (tmp<<4);
   1C55 F5 78         [12]  701 	mov	_mavlink_crc_tmp_2_138,a
   1C57 C4            [12]  702 	swap	a
   1C58 54 F0         [12]  703 	anl	a,#0xF0
   1C5A F5 7C         [12]  704 	mov	_mavlink_crc_sloc2_1_0,a
   1C5C 62 78         [12]  705 	xrl	_mavlink_crc_tmp_2_138,a
                            706 ;	radio/mavlink.c:74: sum = (sum>>8) ^ (tmp<<8) ^ (tmp<<3) ^ (tmp>>4);
   1C5E 8E 7D         [24]  707 	mov	_mavlink_crc_sloc3_1_0,r6
   1C60 75 7E 00      [24]  708 	mov	(_mavlink_crc_sloc3_1_0 + 1),#0x00
   1C63 AA 78         [24]  709 	mov	r2,_mavlink_crc_tmp_2_138
   1C65 7F 00         [12]  710 	mov	r7,#0x00
   1C67 8A 04         [24]  711 	mov	ar4,r2
   1C69 7B 00         [12]  712 	mov	r3,#0x00
   1C6B E5 7D         [12]  713 	mov	a,_mavlink_crc_sloc3_1_0
   1C6D 62 03         [12]  714 	xrl	ar3,a
   1C6F E5 7E         [12]  715 	mov	a,(_mavlink_crc_sloc3_1_0 + 1)
   1C71 62 04         [12]  716 	xrl	ar4,a
   1C73 EF            [12]  717 	mov	a,r7
   1C74 C4            [12]  718 	swap	a
   1C75 03            [12]  719 	rr	a
   1C76 54 F8         [12]  720 	anl	a,#0xF8
   1C78 CA            [12]  721 	xch	a,r2
   1C79 C4            [12]  722 	swap	a
   1C7A 03            [12]  723 	rr	a
   1C7B CA            [12]  724 	xch	a,r2
   1C7C 6A            [12]  725 	xrl	a,r2
   1C7D CA            [12]  726 	xch	a,r2
   1C7E 54 F8         [12]  727 	anl	a,#0xF8
   1C80 CA            [12]  728 	xch	a,r2
   1C81 6A            [12]  729 	xrl	a,r2
   1C82 FF            [12]  730 	mov	r7,a
   1C83 EA            [12]  731 	mov	a,r2
   1C84 62 03         [12]  732 	xrl	ar3,a
   1C86 EF            [12]  733 	mov	a,r7
   1C87 62 04         [12]  734 	xrl	ar4,a
   1C89 E5 78         [12]  735 	mov	a,_mavlink_crc_tmp_2_138
   1C8B C4            [12]  736 	swap	a
   1C8C 54 0F         [12]  737 	anl	a,#0x0F
   1C8E FF            [12]  738 	mov	r7,a
   1C8F 7A 00         [12]  739 	mov	r2,#0x00
   1C91 6B            [12]  740 	xrl	a,r3
   1C92 FD            [12]  741 	mov	r5,a
   1C93 EA            [12]  742 	mov	a,r2
   1C94 6C            [12]  743 	xrl	a,r4
   1C95 FE            [12]  744 	mov	r6,a
                            745 ;	radio/mavlink.c:75: i++;
   1C96 78 5A         [12]  746 	mov	r0,#_mavlink_crc_i_1_136
   1C98 E2            [24]  747 	movx	a,@r0
   1C99 24 01         [12]  748 	add	a,#0x01
   1C9B F2            [24]  749 	movx	@r0,a
   1C9C D0 04         [24]  750 	pop	ar4
   1C9E 80 94         [24]  751 	sjmp	00103$
   1CA0                     752 00105$:
                            753 ;	radio/mavlink.c:78: pbuf[length+6] = sum&0xFF;
   1CA0 74 06         [12]  754 	mov	a,#0x06
   1CA2 25 77         [12]  755 	add	a,_mavlink_crc_length_1_136
   1CA4 24 75         [12]  756 	add	a,#_pbuf
   1CA6 F5 82         [12]  757 	mov	dpl,a
   1CA8 E4            [12]  758 	clr	a
   1CA9 34 04         [12]  759 	addc	a,#(_pbuf >> 8)
   1CAB F5 83         [12]  760 	mov	dph,a
   1CAD 8D 04         [24]  761 	mov	ar4,r5
   1CAF EC            [12]  762 	mov	a,r4
   1CB0 F0            [24]  763 	movx	@dptr,a
                            764 ;	radio/mavlink.c:79: pbuf[length+7] = sum>>8;
   1CB1 74 07         [12]  765 	mov	a,#0x07
   1CB3 25 77         [12]  766 	add	a,_mavlink_crc_length_1_136
   1CB5 24 75         [12]  767 	add	a,#_pbuf
   1CB7 F5 82         [12]  768 	mov	dpl,a
   1CB9 E4            [12]  769 	clr	a
   1CBA 34 04         [12]  770 	addc	a,#(_pbuf >> 8)
   1CBC F5 83         [12]  771 	mov	dph,a
   1CBE 8E 05         [24]  772 	mov	ar5,r6
   1CC0 ED            [12]  773 	mov	a,r5
   1CC1 F0            [24]  774 	movx	@dptr,a
   1CC2 22            [24]  775 	ret
                            776 ;------------------------------------------------------------
                            777 ;Allocation info for local variables in function 'swap_bytes'
                            778 ;------------------------------------------------------------
                            779 ;i                         Allocated with name '_swap_bytes_i_1_140'
                            780 ;tmp                       Allocated with name '_swap_bytes_tmp_2_141'
                            781 ;------------------------------------------------------------
                            782 ;	radio/mavlink.c:117: static void swap_bytes(__pdata uint8_t ofs, __pdata uint8_t len)
                            783 ;	-----------------------------------------
                            784 ;	 function swap_bytes
                            785 ;	-----------------------------------------
   1CC3                     786 _swap_bytes:
   1CC3 AF 82         [24]  787 	mov	r7,dpl
                            788 ;	radio/mavlink.c:120: for (i=ofs; i<ofs+len; i+=2) {
   1CC5 8F 77         [24]  789 	mov	_swap_bytes_i_1_140,r7
   1CC7                     790 00103$:
   1CC7 8F 04         [24]  791 	mov	ar4,r7
   1CC9 7D 00         [12]  792 	mov	r5,#0x00
   1CCB 78 5B         [12]  793 	mov	r0,#_swap_bytes_PARM_2
   1CCD E2            [24]  794 	movx	a,@r0
   1CCE 7B 00         [12]  795 	mov	r3,#0x00
   1CD0 2C            [12]  796 	add	a,r4
   1CD1 FC            [12]  797 	mov	r4,a
   1CD2 EB            [12]  798 	mov	a,r3
   1CD3 3D            [12]  799 	addc	a,r5
   1CD4 FD            [12]  800 	mov	r5,a
   1CD5 AA 77         [24]  801 	mov	r2,_swap_bytes_i_1_140
   1CD7 7B 00         [12]  802 	mov	r3,#0x00
   1CD9 C3            [12]  803 	clr	c
   1CDA EA            [12]  804 	mov	a,r2
   1CDB 9C            [12]  805 	subb	a,r4
   1CDC EB            [12]  806 	mov	a,r3
   1CDD 64 80         [12]  807 	xrl	a,#0x80
   1CDF 8D F0         [24]  808 	mov	b,r5
   1CE1 63 F0 80      [24]  809 	xrl	b,#0x80
   1CE4 95 F0         [12]  810 	subb	a,b
   1CE6 50 32         [24]  811 	jnc	00105$
                            812 ;	radio/mavlink.c:121: register uint8_t tmp = pbuf[i];
   1CE8 E5 77         [12]  813 	mov	a,_swap_bytes_i_1_140
   1CEA 24 75         [12]  814 	add	a,#_pbuf
   1CEC FC            [12]  815 	mov	r4,a
   1CED E4            [12]  816 	clr	a
   1CEE 34 04         [12]  817 	addc	a,#(_pbuf >> 8)
   1CF0 FD            [12]  818 	mov	r5,a
   1CF1 8C 82         [24]  819 	mov	dpl,r4
   1CF3 8D 83         [24]  820 	mov	dph,r5
   1CF5 E0            [24]  821 	movx	a,@dptr
   1CF6 F5 78         [12]  822 	mov	_swap_bytes_tmp_2_141,a
                            823 ;	radio/mavlink.c:122: pbuf[i] = pbuf[i+1];
   1CF8 E5 77         [12]  824 	mov	a,_swap_bytes_i_1_140
   1CFA 04            [12]  825 	inc	a
   1CFB 24 75         [12]  826 	add	a,#_pbuf
   1CFD FA            [12]  827 	mov	r2,a
   1CFE E4            [12]  828 	clr	a
   1CFF 34 04         [12]  829 	addc	a,#(_pbuf >> 8)
   1D01 FB            [12]  830 	mov	r3,a
   1D02 8A 82         [24]  831 	mov	dpl,r2
   1D04 8B 83         [24]  832 	mov	dph,r3
   1D06 E0            [24]  833 	movx	a,@dptr
   1D07 FE            [12]  834 	mov	r6,a
   1D08 8C 82         [24]  835 	mov	dpl,r4
   1D0A 8D 83         [24]  836 	mov	dph,r5
   1D0C F0            [24]  837 	movx	@dptr,a
                            838 ;	radio/mavlink.c:123: pbuf[i+1] = tmp;
   1D0D 8A 82         [24]  839 	mov	dpl,r2
   1D0F 8B 83         [24]  840 	mov	dph,r3
   1D11 E5 78         [12]  841 	mov	a,_swap_bytes_tmp_2_141
   1D13 F0            [24]  842 	movx	@dptr,a
                            843 ;	radio/mavlink.c:120: for (i=ofs; i<ofs+len; i+=2) {
   1D14 05 77         [12]  844 	inc	_swap_bytes_i_1_140
   1D16 05 77         [12]  845 	inc	_swap_bytes_i_1_140
   1D18 80 AD         [24]  846 	sjmp	00103$
   1D1A                     847 00105$:
   1D1A 22            [24]  848 	ret
                            849 ;------------------------------------------------------------
                            850 ;Allocation info for local variables in function 'MAVLink_report'
                            851 ;------------------------------------------------------------
                            852 ;sloc0                     Allocated with name '_MAVLink_report_sloc0_1_0'
                            853 ;m                         Allocated with name '_MAVLink_report_m_2_144'
                            854 ;m                         Allocated with name '_MAVLink_report_m_2_145'
                            855 ;------------------------------------------------------------
                            856 ;	radio/mavlink.c:128: void MAVLink_report(void)
                            857 ;	-----------------------------------------
                            858 ;	 function MAVLink_report
                            859 ;	-----------------------------------------
   1D1B                     860 _MAVLink_report:
                            861 ;	radio/mavlink.c:130: pbuf[0] = using_mavlink_10?254:'U';
   1D1B 30 0F 04      [24]  862 	jnb	_using_mavlink_10,00108$
   1D1E 7F FE         [12]  863 	mov	r7,#0xFE
   1D20 80 02         [24]  864 	sjmp	00109$
   1D22                     865 00108$:
   1D22 7F 55         [12]  866 	mov	r7,#0x55
   1D24                     867 00109$:
   1D24 90 04 75      [24]  868 	mov	dptr,#_pbuf
   1D27 EF            [12]  869 	mov	a,r7
   1D28 F0            [24]  870 	movx	@dptr,a
                            871 ;	radio/mavlink.c:131: pbuf[1] = sizeof(struct mavlink_RADIO_v09);
   1D29 90 04 76      [24]  872 	mov	dptr,#(_pbuf + 0x0001)
   1D2C 74 09         [12]  873 	mov	a,#0x09
   1D2E F0            [24]  874 	movx	@dptr,a
                            875 ;	radio/mavlink.c:132: pbuf[2] = seqnum++;
   1D2F 78 59         [12]  876 	mov	r0,#_seqnum
   1D31 E2            [24]  877 	movx	a,@r0
   1D32 FF            [12]  878 	mov	r7,a
   1D33 78 59         [12]  879 	mov	r0,#_seqnum
   1D35 04            [12]  880 	inc	a
   1D36 F2            [24]  881 	movx	@r0,a
   1D37 90 04 77      [24]  882 	mov	dptr,#(_pbuf + 0x0002)
   1D3A EF            [12]  883 	mov	a,r7
   1D3B F0            [24]  884 	movx	@dptr,a
                            885 ;	radio/mavlink.c:133: pbuf[3] = RADIO_SOURCE_SYSTEM;
   1D3C 90 04 78      [24]  886 	mov	dptr,#(_pbuf + 0x0003)
   1D3F 74 33         [12]  887 	mov	a,#0x33
   1D41 F0            [24]  888 	movx	@dptr,a
                            889 ;	radio/mavlink.c:134: pbuf[4] = RADIO_SOURCE_COMPONENT;
   1D42 90 04 79      [24]  890 	mov	dptr,#(_pbuf + 0x0004)
   1D45 74 44         [12]  891 	mov	a,#0x44
   1D47 F0            [24]  892 	movx	@dptr,a
                            893 ;	radio/mavlink.c:135: pbuf[5] = MAVLINK_MSG_ID_RADIO;
   1D48 90 04 7A      [24]  894 	mov	dptr,#(_pbuf + 0x0005)
   1D4B 74 A6         [12]  895 	mov	a,#0xA6
   1D4D F0            [24]  896 	movx	@dptr,a
                            897 ;	radio/mavlink.c:137: if (using_mavlink_10) {
   1D4E 20 0F 03      [24]  898 	jb	_using_mavlink_10,00120$
   1D51 02 1E 22      [24]  899 	ljmp	00102$
   1D54                     900 00120$:
                            901 ;	radio/mavlink.c:138: struct mavlink_RADIO_v10 *m = (struct mavlink_RADIO_v10 *)&pbuf[6];
   1D54 7E 7B         [12]  902 	mov	r6,#(_pbuf + 0x0006)
   1D56 7F 04         [12]  903 	mov	r7,#((_pbuf + 0x0006) >> 8)
   1D58 7D 00         [12]  904 	mov	r5,#0x00
                            905 ;	radio/mavlink.c:139: m->rxerrors = errors.rx_errors;
   1D5A 78 38         [12]  906 	mov	r0,#_errors
   1D5C E2            [24]  907 	movx	a,@r0
   1D5D FB            [12]  908 	mov	r3,a
   1D5E 08            [12]  909 	inc	r0
   1D5F E2            [24]  910 	movx	a,@r0
   1D60 FC            [12]  911 	mov	r4,a
   1D61 8E 82         [24]  912 	mov	dpl,r6
   1D63 8F 83         [24]  913 	mov	dph,r7
   1D65 8D F0         [24]  914 	mov	b,r5
   1D67 EB            [12]  915 	mov	a,r3
   1D68 12 60 87      [24]  916 	lcall	__gptrput
   1D6B A3            [24]  917 	inc	dptr
   1D6C EC            [12]  918 	mov	a,r4
   1D6D 12 60 87      [24]  919 	lcall	__gptrput
                            920 ;	radio/mavlink.c:140: m->fixed    = errors.corrected_packets;
   1D70 74 02         [12]  921 	mov	a,#0x02
   1D72 2E            [12]  922 	add	a,r6
   1D73 F5 28         [12]  923 	mov	_MAVLink_report_sloc0_1_0,a
   1D75 E4            [12]  924 	clr	a
   1D76 3F            [12]  925 	addc	a,r7
   1D77 F5 29         [12]  926 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1D79 8D 2A         [24]  927 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1D7B 78 42         [12]  928 	mov	r0,#(_errors + 0x000a)
   1D7D E2            [24]  929 	movx	a,@r0
   1D7E FB            [12]  930 	mov	r3,a
   1D7F 08            [12]  931 	inc	r0
   1D80 E2            [24]  932 	movx	a,@r0
   1D81 FC            [12]  933 	mov	r4,a
   1D82 85 28 82      [24]  934 	mov	dpl,_MAVLink_report_sloc0_1_0
   1D85 85 29 83      [24]  935 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1D88 85 2A F0      [24]  936 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1D8B EB            [12]  937 	mov	a,r3
   1D8C 12 60 87      [24]  938 	lcall	__gptrput
   1D8F A3            [24]  939 	inc	dptr
   1D90 EC            [12]  940 	mov	a,r4
   1D91 12 60 87      [24]  941 	lcall	__gptrput
                            942 ;	radio/mavlink.c:141: m->txbuf    = serial_read_space();
   1D94 74 06         [12]  943 	mov	a,#0x06
   1D96 2E            [12]  944 	add	a,r6
   1D97 F5 28         [12]  945 	mov	_MAVLink_report_sloc0_1_0,a
   1D99 E4            [12]  946 	clr	a
   1D9A 3F            [12]  947 	addc	a,r7
   1D9B F5 29         [12]  948 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1D9D 8D 2A         [24]  949 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1D9F C0 07         [24]  950 	push	ar7
   1DA1 C0 06         [24]  951 	push	ar6
   1DA3 C0 05         [24]  952 	push	ar5
   1DA5 12 47 07      [24]  953 	lcall	_serial_read_space
   1DA8 AC 82         [24]  954 	mov	r4,dpl
   1DAA D0 05         [24]  955 	pop	ar5
   1DAC D0 06         [24]  956 	pop	ar6
   1DAE D0 07         [24]  957 	pop	ar7
   1DB0 85 28 82      [24]  958 	mov	dpl,_MAVLink_report_sloc0_1_0
   1DB3 85 29 83      [24]  959 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1DB6 85 2A F0      [24]  960 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1DB9 EC            [12]  961 	mov	a,r4
   1DBA 12 60 87      [24]  962 	lcall	__gptrput
                            963 ;	radio/mavlink.c:142: m->rssi     = statistics.average_rssi;
   1DBD 74 04         [12]  964 	mov	a,#0x04
   1DBF 2E            [12]  965 	add	a,r6
   1DC0 F5 28         [12]  966 	mov	_MAVLink_report_sloc0_1_0,a
   1DC2 E4            [12]  967 	clr	a
   1DC3 3F            [12]  968 	addc	a,r7
   1DC4 F5 29         [12]  969 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1DC6 8D 2A         [24]  970 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1DC8 78 44         [12]  971 	mov	r0,#_statistics
   1DCA E2            [24]  972 	movx	a,@r0
   1DCB 85 28 82      [24]  973 	mov	dpl,_MAVLink_report_sloc0_1_0
   1DCE 85 29 83      [24]  974 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1DD1 85 2A F0      [24]  975 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1DD4 12 60 87      [24]  976 	lcall	__gptrput
                            977 ;	radio/mavlink.c:143: m->remrssi  = remote_statistics.average_rssi;
   1DD7 74 05         [12]  978 	mov	a,#0x05
   1DD9 2E            [12]  979 	add	a,r6
   1DDA F5 28         [12]  980 	mov	_MAVLink_report_sloc0_1_0,a
   1DDC E4            [12]  981 	clr	a
   1DDD 3F            [12]  982 	addc	a,r7
   1DDE F5 29         [12]  983 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1DE0 8D 2A         [24]  984 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1DE2 78 48         [12]  985 	mov	r0,#_remote_statistics
   1DE4 E2            [24]  986 	movx	a,@r0
   1DE5 85 28 82      [24]  987 	mov	dpl,_MAVLink_report_sloc0_1_0
   1DE8 85 29 83      [24]  988 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1DEB 85 2A F0      [24]  989 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1DEE 12 60 87      [24]  990 	lcall	__gptrput
                            991 ;	radio/mavlink.c:144: m->noise    = statistics.average_noise;
   1DF1 74 07         [12]  992 	mov	a,#0x07
   1DF3 2E            [12]  993 	add	a,r6
   1DF4 F5 28         [12]  994 	mov	_MAVLink_report_sloc0_1_0,a
   1DF6 E4            [12]  995 	clr	a
   1DF7 3F            [12]  996 	addc	a,r7
   1DF8 F5 29         [12]  997 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1DFA 8D 2A         [24]  998 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1DFC 78 45         [12]  999 	mov	r0,#(_statistics + 0x0001)
   1DFE E2            [24] 1000 	movx	a,@r0
   1DFF 85 28 82      [24] 1001 	mov	dpl,_MAVLink_report_sloc0_1_0
   1E02 85 29 83      [24] 1002 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1E05 85 2A F0      [24] 1003 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1E08 12 60 87      [24] 1004 	lcall	__gptrput
                           1005 ;	radio/mavlink.c:145: m->remnoise = remote_statistics.average_noise;
   1E0B 74 08         [12] 1006 	mov	a,#0x08
   1E0D 2E            [12] 1007 	add	a,r6
   1E0E FE            [12] 1008 	mov	r6,a
   1E0F E4            [12] 1009 	clr	a
   1E10 3F            [12] 1010 	addc	a,r7
   1E11 FF            [12] 1011 	mov	r7,a
   1E12 78 49         [12] 1012 	mov	r0,#(_remote_statistics + 0x0001)
   1E14 E2            [24] 1013 	movx	a,@r0
   1E15 FC            [12] 1014 	mov	r4,a
   1E16 8E 82         [24] 1015 	mov	dpl,r6
   1E18 8F 83         [24] 1016 	mov	dph,r7
   1E1A 8D F0         [24] 1017 	mov	b,r5
   1E1C 12 60 87      [24] 1018 	lcall	__gptrput
   1E1F 02 1E F7      [24] 1019 	ljmp	00103$
   1E22                    1020 00102$:
                           1021 ;	radio/mavlink.c:147: struct mavlink_RADIO_v09 *m = (struct mavlink_RADIO_v09 *)&pbuf[6];
   1E22 7E 7B         [12] 1022 	mov	r6,#(_pbuf + 0x0006)
   1E24 7F 04         [12] 1023 	mov	r7,#((_pbuf + 0x0006) >> 8)
   1E26 7D 00         [12] 1024 	mov	r5,#0x00
                           1025 ;	radio/mavlink.c:148: m->rxerrors = errors.rx_errors;
   1E28 74 05         [12] 1026 	mov	a,#0x05
   1E2A 2E            [12] 1027 	add	a,r6
   1E2B F5 28         [12] 1028 	mov	_MAVLink_report_sloc0_1_0,a
   1E2D E4            [12] 1029 	clr	a
   1E2E 3F            [12] 1030 	addc	a,r7
   1E2F F5 29         [12] 1031 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1E31 8D 2A         [24] 1032 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1E33 78 38         [12] 1033 	mov	r0,#_errors
   1E35 E2            [24] 1034 	movx	a,@r0
   1E36 FB            [12] 1035 	mov	r3,a
   1E37 08            [12] 1036 	inc	r0
   1E38 E2            [24] 1037 	movx	a,@r0
   1E39 FC            [12] 1038 	mov	r4,a
   1E3A 85 28 82      [24] 1039 	mov	dpl,_MAVLink_report_sloc0_1_0
   1E3D 85 29 83      [24] 1040 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1E40 85 2A F0      [24] 1041 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1E43 EB            [12] 1042 	mov	a,r3
   1E44 12 60 87      [24] 1043 	lcall	__gptrput
   1E47 A3            [24] 1044 	inc	dptr
   1E48 EC            [12] 1045 	mov	a,r4
   1E49 12 60 87      [24] 1046 	lcall	__gptrput
                           1047 ;	radio/mavlink.c:149: m->fixed    = errors.corrected_packets;
   1E4C 74 07         [12] 1048 	mov	a,#0x07
   1E4E 2E            [12] 1049 	add	a,r6
   1E4F F5 28         [12] 1050 	mov	_MAVLink_report_sloc0_1_0,a
   1E51 E4            [12] 1051 	clr	a
   1E52 3F            [12] 1052 	addc	a,r7
   1E53 F5 29         [12] 1053 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1E55 8D 2A         [24] 1054 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1E57 78 42         [12] 1055 	mov	r0,#(_errors + 0x000a)
   1E59 E2            [24] 1056 	movx	a,@r0
   1E5A FB            [12] 1057 	mov	r3,a
   1E5B 08            [12] 1058 	inc	r0
   1E5C E2            [24] 1059 	movx	a,@r0
   1E5D FC            [12] 1060 	mov	r4,a
   1E5E 85 28 82      [24] 1061 	mov	dpl,_MAVLink_report_sloc0_1_0
   1E61 85 29 83      [24] 1062 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1E64 85 2A F0      [24] 1063 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1E67 EB            [12] 1064 	mov	a,r3
   1E68 12 60 87      [24] 1065 	lcall	__gptrput
   1E6B A3            [24] 1066 	inc	dptr
   1E6C EC            [12] 1067 	mov	a,r4
   1E6D 12 60 87      [24] 1068 	lcall	__gptrput
                           1069 ;	radio/mavlink.c:150: m->txbuf    = serial_read_space();
   1E70 74 02         [12] 1070 	mov	a,#0x02
   1E72 2E            [12] 1071 	add	a,r6
   1E73 F5 28         [12] 1072 	mov	_MAVLink_report_sloc0_1_0,a
   1E75 E4            [12] 1073 	clr	a
   1E76 3F            [12] 1074 	addc	a,r7
   1E77 F5 29         [12] 1075 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1E79 8D 2A         [24] 1076 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1E7B C0 07         [24] 1077 	push	ar7
   1E7D C0 06         [24] 1078 	push	ar6
   1E7F C0 05         [24] 1079 	push	ar5
   1E81 12 47 07      [24] 1080 	lcall	_serial_read_space
   1E84 AC 82         [24] 1081 	mov	r4,dpl
   1E86 D0 05         [24] 1082 	pop	ar5
   1E88 D0 06         [24] 1083 	pop	ar6
   1E8A D0 07         [24] 1084 	pop	ar7
   1E8C 85 28 82      [24] 1085 	mov	dpl,_MAVLink_report_sloc0_1_0
   1E8F 85 29 83      [24] 1086 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1E92 85 2A F0      [24] 1087 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1E95 EC            [12] 1088 	mov	a,r4
   1E96 12 60 87      [24] 1089 	lcall	__gptrput
                           1090 ;	radio/mavlink.c:151: m->rssi     = statistics.average_rssi;
   1E99 78 44         [12] 1091 	mov	r0,#_statistics
   1E9B E2            [24] 1092 	movx	a,@r0
   1E9C 8E 82         [24] 1093 	mov	dpl,r6
   1E9E 8F 83         [24] 1094 	mov	dph,r7
   1EA0 8D F0         [24] 1095 	mov	b,r5
   1EA2 12 60 87      [24] 1096 	lcall	__gptrput
                           1097 ;	radio/mavlink.c:152: m->remrssi  = remote_statistics.average_rssi;
   1EA5 74 01         [12] 1098 	mov	a,#0x01
   1EA7 2E            [12] 1099 	add	a,r6
   1EA8 F5 28         [12] 1100 	mov	_MAVLink_report_sloc0_1_0,a
   1EAA E4            [12] 1101 	clr	a
   1EAB 3F            [12] 1102 	addc	a,r7
   1EAC F5 29         [12] 1103 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1EAE 8D 2A         [24] 1104 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1EB0 78 48         [12] 1105 	mov	r0,#_remote_statistics
   1EB2 E2            [24] 1106 	movx	a,@r0
   1EB3 85 28 82      [24] 1107 	mov	dpl,_MAVLink_report_sloc0_1_0
   1EB6 85 29 83      [24] 1108 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1EB9 85 2A F0      [24] 1109 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1EBC 12 60 87      [24] 1110 	lcall	__gptrput
                           1111 ;	radio/mavlink.c:153: m->noise    = statistics.average_noise;
   1EBF 74 03         [12] 1112 	mov	a,#0x03
   1EC1 2E            [12] 1113 	add	a,r6
   1EC2 F5 28         [12] 1114 	mov	_MAVLink_report_sloc0_1_0,a
   1EC4 E4            [12] 1115 	clr	a
   1EC5 3F            [12] 1116 	addc	a,r7
   1EC6 F5 29         [12] 1117 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1EC8 8D 2A         [24] 1118 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1ECA 78 45         [12] 1119 	mov	r0,#(_statistics + 0x0001)
   1ECC E2            [24] 1120 	movx	a,@r0
   1ECD 85 28 82      [24] 1121 	mov	dpl,_MAVLink_report_sloc0_1_0
   1ED0 85 29 83      [24] 1122 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1ED3 85 2A F0      [24] 1123 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1ED6 12 60 87      [24] 1124 	lcall	__gptrput
                           1125 ;	radio/mavlink.c:154: m->remnoise = remote_statistics.average_noise;
   1ED9 74 04         [12] 1126 	mov	a,#0x04
   1EDB 2E            [12] 1127 	add	a,r6
   1EDC FE            [12] 1128 	mov	r6,a
   1EDD E4            [12] 1129 	clr	a
   1EDE 3F            [12] 1130 	addc	a,r7
   1EDF FF            [12] 1131 	mov	r7,a
   1EE0 78 49         [12] 1132 	mov	r0,#(_remote_statistics + 0x0001)
   1EE2 E2            [24] 1133 	movx	a,@r0
   1EE3 8E 82         [24] 1134 	mov	dpl,r6
   1EE5 8F 83         [24] 1135 	mov	dph,r7
   1EE7 8D F0         [24] 1136 	mov	b,r5
   1EE9 12 60 87      [24] 1137 	lcall	__gptrput
                           1138 ;	radio/mavlink.c:155: swap_bytes(6+5, 4);
   1EEC 78 5B         [12] 1139 	mov	r0,#_swap_bytes_PARM_2
   1EEE 74 04         [12] 1140 	mov	a,#0x04
   1EF0 F2            [24] 1141 	movx	@r0,a
   1EF1 75 82 0B      [24] 1142 	mov	dpl,#0x0B
   1EF4 12 1C C3      [24] 1143 	lcall	_swap_bytes
   1EF7                    1144 00103$:
                           1145 ;	radio/mavlink.c:157: mavlink_crc();
   1EF7 12 1C 0C      [24] 1146 	lcall	_mavlink_crc
                           1147 ;	radio/mavlink.c:159: if (serial_write_space() < sizeof(struct mavlink_RADIO_v09)+8) {
   1EFA 12 44 81      [24] 1148 	lcall	_serial_write_space
   1EFD AE 82         [24] 1149 	mov	r6,dpl
   1EFF AF 83         [24] 1150 	mov	r7,dph
   1F01 C3            [12] 1151 	clr	c
   1F02 EE            [12] 1152 	mov	a,r6
   1F03 94 11         [12] 1153 	subb	a,#0x11
   1F05 EF            [12] 1154 	mov	a,r7
   1F06 94 00         [12] 1155 	subb	a,#0x00
   1F08 50 01         [24] 1156 	jnc	00105$
                           1157 ;	radio/mavlink.c:161: return;
   1F0A 22            [24] 1158 	ret
   1F0B                    1159 00105$:
                           1160 ;	radio/mavlink.c:164: serial_write_buf(pbuf, sizeof(struct mavlink_RADIO_v09)+8);
   1F0B 78 B6         [12] 1161 	mov	r0,#_serial_write_buf_PARM_2
   1F0D 74 11         [12] 1162 	mov	a,#0x11
   1F0F F2            [24] 1163 	movx	@r0,a
   1F10 90 04 75      [24] 1164 	mov	dptr,#_pbuf
   1F13 02 43 61      [24] 1165 	ljmp	_serial_write_buf
                           1166 	.area CSEG    (CODE)
                           1167 	.area CONST   (CODE)
                           1168 	.area XINIT   (CODE)
                           1169 	.area CABS    (ABS,CODE)
