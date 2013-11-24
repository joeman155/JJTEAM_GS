                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:12 2013
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
                            267 	.globl _MAVLink_report
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
                     0096   524 _LED_RED	=	0x0096
                     0095   525 _LED_GREEN	=	0x0095
                     0082   526 _PIN_CONFIG	=	0x0082
                     0083   527 _PIN_ENABLE	=	0x0083
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
   0028                     539 _MAVLink_report_sloc0_1_0:
   0028                     540 	.ds 3
                            541 ;--------------------------------------------------------
                            542 ; overlayable items in internal ram 
                            543 ;--------------------------------------------------------
                            544 	.area	OSEG    (OVR,DATA)
   0077                     545 _mavlink_crc_length_1_134:
   0077                     546 	.ds 1
   0078                     547 _mavlink_crc_tmp_2_136:
   0078                     548 	.ds 1
   0079                     549 _mavlink_crc_sloc0_1_0:
   0079                     550 	.ds 2
   007B                     551 _mavlink_crc_sloc1_1_0:
   007B                     552 	.ds 1
   007C                     553 _mavlink_crc_sloc2_1_0:
   007C                     554 	.ds 1
   007D                     555 _mavlink_crc_sloc3_1_0:
   007D                     556 	.ds 2
                            557 	.area	OSEG    (OVR,DATA)
   0077                     558 _swap_bytes_i_1_138:
   0077                     559 	.ds 1
   0078                     560 _swap_bytes_tmp_2_139:
   0078                     561 	.ds 1
                            562 ;--------------------------------------------------------
                            563 ; indirectly addressable internal ram data
                            564 ;--------------------------------------------------------
                            565 	.area ISEG    (DATA)
                            566 ;--------------------------------------------------------
                            567 ; absolute internal ram data
                            568 ;--------------------------------------------------------
                            569 	.area IABS    (ABS,DATA)
                            570 	.area IABS    (ABS,DATA)
                            571 ;--------------------------------------------------------
                            572 ; bit data
                            573 ;--------------------------------------------------------
                            574 	.area BSEG    (BIT)
                            575 ;--------------------------------------------------------
                            576 ; paged external ram data
                            577 ;--------------------------------------------------------
                            578 	.area PSEG    (PAG,XDATA)
   0055                     579 _seqnum:
   0055                     580 	.ds 1
   0056                     581 _mavlink_crc_i_1_134:
   0056                     582 	.ds 1
   0057                     583 _swap_bytes_PARM_2:
   0057                     584 	.ds 1
                            585 ;--------------------------------------------------------
                            586 ; external ram data
                            587 ;--------------------------------------------------------
                            588 	.area XSEG    (XDATA)
                            589 ;--------------------------------------------------------
                            590 ; absolute external ram data
                            591 ;--------------------------------------------------------
                            592 	.area XABS    (ABS,XDATA)
                            593 ;--------------------------------------------------------
                            594 ; external initialized ram data
                            595 ;--------------------------------------------------------
                            596 	.area XISEG   (XDATA)
                            597 	.area HOME    (CODE)
                            598 	.area GSINIT0 (CODE)
                            599 	.area GSINIT1 (CODE)
                            600 	.area GSINIT2 (CODE)
                            601 	.area GSINIT3 (CODE)
                            602 	.area GSINIT4 (CODE)
                            603 	.area GSINIT5 (CODE)
                            604 	.area GSINIT  (CODE)
                            605 	.area GSFINAL (CODE)
                            606 	.area CSEG    (CODE)
                            607 ;--------------------------------------------------------
                            608 ; global & static initialisations
                            609 ;--------------------------------------------------------
                            610 	.area HOME    (CODE)
                            611 	.area GSINIT  (CODE)
                            612 	.area GSFINAL (CODE)
                            613 	.area GSINIT  (CODE)
                            614 ;--------------------------------------------------------
                            615 ; Home
                            616 ;--------------------------------------------------------
                            617 	.area HOME    (CODE)
                            618 	.area HOME    (CODE)
                            619 ;--------------------------------------------------------
                            620 ; code
                            621 ;--------------------------------------------------------
                            622 	.area CSEG    (CODE)
                            623 ;------------------------------------------------------------
                            624 ;Allocation info for local variables in function 'mavlink_crc'
                            625 ;------------------------------------------------------------
                            626 ;length                    Allocated with name '_mavlink_crc_length_1_134'
                            627 ;tmp                       Allocated with name '_mavlink_crc_tmp_2_136'
                            628 ;sloc0                     Allocated with name '_mavlink_crc_sloc0_1_0'
                            629 ;sloc1                     Allocated with name '_mavlink_crc_sloc1_1_0'
                            630 ;sloc2                     Allocated with name '_mavlink_crc_sloc2_1_0'
                            631 ;sloc3                     Allocated with name '_mavlink_crc_sloc3_1_0'
                            632 ;------------------------------------------------------------
                            633 ;	radio/mavlink.c:55: static void mavlink_crc(void)
                            634 ;	-----------------------------------------
                            635 ;	 function mavlink_crc
                            636 ;	-----------------------------------------
   1AE5                     637 _mavlink_crc:
                     0007   638 	ar7 = 0x07
                     0006   639 	ar6 = 0x06
                     0005   640 	ar5 = 0x05
                     0004   641 	ar4 = 0x04
                     0003   642 	ar3 = 0x03
                     0002   643 	ar2 = 0x02
                     0001   644 	ar1 = 0x01
                     0000   645 	ar0 = 0x00
                            646 ;	radio/mavlink.c:57: register uint8_t length = pbuf[1];
   1AE5 90 04 73      [24]  647 	mov	dptr,#(_pbuf + 0x0001)
   1AE8 E0            [24]  648 	movx	a,@dptr
   1AE9 F5 77         [12]  649 	mov	_mavlink_crc_length_1_134,a
                            650 ;	radio/mavlink.c:58: __pdata uint16_t sum = 0xFFFF;
   1AEB 7D FF         [12]  651 	mov	r5,#0xFF
   1AED 7E FF         [12]  652 	mov	r6,#0xFF
                            653 ;	radio/mavlink.c:61: stoplen = length + 6;
   1AEF 74 06         [12]  654 	mov	a,#0x06
   1AF1 25 77         [12]  655 	add	a,_mavlink_crc_length_1_134
   1AF3 FC            [12]  656 	mov	r4,a
                            657 ;	radio/mavlink.c:63: if (using_mavlink_10) {
   1AF4 30 0E 11      [24]  658 	jnb	_using_mavlink_10,00110$
                            659 ;	radio/mavlink.c:65: pbuf[length+6] = MAVLINK_RADIO_CRC_EXTRA;
   1AF7 74 06         [12]  660 	mov	a,#0x06
   1AF9 25 77         [12]  661 	add	a,_mavlink_crc_length_1_134
   1AFB 24 72         [12]  662 	add	a,#_pbuf
   1AFD F5 82         [12]  663 	mov	dpl,a
   1AFF E4            [12]  664 	clr	a
   1B00 34 04         [12]  665 	addc	a,#(_pbuf >> 8)
   1B02 F5 83         [12]  666 	mov	dph,a
   1B04 74 15         [12]  667 	mov	a,#0x15
   1B06 F0            [24]  668 	movx	@dptr,a
                            669 ;	radio/mavlink.c:66: stoplen++;
   1B07 0C            [12]  670 	inc	r4
                            671 ;	radio/mavlink.c:70: while (i<stoplen) {
   1B08                     672 00110$:
   1B08 78 56         [12]  673 	mov	r0,#_mavlink_crc_i_1_134
   1B0A 74 01         [12]  674 	mov	a,#0x01
   1B0C F2            [24]  675 	movx	@r0,a
   1B0D                     676 00103$:
   1B0D 78 56         [12]  677 	mov	r0,#_mavlink_crc_i_1_134
   1B0F C3            [12]  678 	clr	c
   1B10 E2            [24]  679 	movx	a,@r0
   1B11 9C            [12]  680 	subb	a,r4
   1B12 50 65         [24]  681 	jnc	00105$
                            682 ;	radio/mavlink.c:72: tmp = pbuf[i] ^ (uint8_t)(sum&0xff);
   1B14 C0 04         [24]  683 	push	ar4
   1B16 78 56         [12]  684 	mov	r0,#_mavlink_crc_i_1_134
   1B18 E2            [24]  685 	movx	a,@r0
   1B19 24 72         [12]  686 	add	a,#_pbuf
   1B1B F5 82         [12]  687 	mov	dpl,a
   1B1D E4            [12]  688 	clr	a
   1B1E 34 04         [12]  689 	addc	a,#(_pbuf >> 8)
   1B20 F5 83         [12]  690 	mov	dph,a
   1B22 E0            [24]  691 	movx	a,@dptr
   1B23 FA            [12]  692 	mov	r2,a
   1B24 8D 79         [24]  693 	mov	_mavlink_crc_sloc0_1_0,r5
   1B26 75 7A 00      [24]  694 	mov	(_mavlink_crc_sloc0_1_0 + 1),#0x00
   1B29 E5 79         [12]  695 	mov	a,_mavlink_crc_sloc0_1_0
   1B2B F5 7B         [12]  696 	mov	_mavlink_crc_sloc1_1_0,a
   1B2D 6A            [12]  697 	xrl	a,r2
                            698 ;	radio/mavlink.c:73: tmp ^= (tmp<<4);
   1B2E F5 78         [12]  699 	mov	_mavlink_crc_tmp_2_136,a
   1B30 C4            [12]  700 	swap	a
   1B31 54 F0         [12]  701 	anl	a,#0xF0
   1B33 F5 7C         [12]  702 	mov	_mavlink_crc_sloc2_1_0,a
   1B35 62 78         [12]  703 	xrl	_mavlink_crc_tmp_2_136,a
                            704 ;	radio/mavlink.c:74: sum = (sum>>8) ^ (tmp<<8) ^ (tmp<<3) ^ (tmp>>4);
   1B37 8E 7D         [24]  705 	mov	_mavlink_crc_sloc3_1_0,r6
   1B39 75 7E 00      [24]  706 	mov	(_mavlink_crc_sloc3_1_0 + 1),#0x00
   1B3C AA 78         [24]  707 	mov	r2,_mavlink_crc_tmp_2_136
   1B3E 7F 00         [12]  708 	mov	r7,#0x00
   1B40 8A 04         [24]  709 	mov	ar4,r2
   1B42 7B 00         [12]  710 	mov	r3,#0x00
   1B44 E5 7D         [12]  711 	mov	a,_mavlink_crc_sloc3_1_0
   1B46 62 03         [12]  712 	xrl	ar3,a
   1B48 E5 7E         [12]  713 	mov	a,(_mavlink_crc_sloc3_1_0 + 1)
   1B4A 62 04         [12]  714 	xrl	ar4,a
   1B4C EF            [12]  715 	mov	a,r7
   1B4D C4            [12]  716 	swap	a
   1B4E 03            [12]  717 	rr	a
   1B4F 54 F8         [12]  718 	anl	a,#0xF8
   1B51 CA            [12]  719 	xch	a,r2
   1B52 C4            [12]  720 	swap	a
   1B53 03            [12]  721 	rr	a
   1B54 CA            [12]  722 	xch	a,r2
   1B55 6A            [12]  723 	xrl	a,r2
   1B56 CA            [12]  724 	xch	a,r2
   1B57 54 F8         [12]  725 	anl	a,#0xF8
   1B59 CA            [12]  726 	xch	a,r2
   1B5A 6A            [12]  727 	xrl	a,r2
   1B5B FF            [12]  728 	mov	r7,a
   1B5C EA            [12]  729 	mov	a,r2
   1B5D 62 03         [12]  730 	xrl	ar3,a
   1B5F EF            [12]  731 	mov	a,r7
   1B60 62 04         [12]  732 	xrl	ar4,a
   1B62 E5 78         [12]  733 	mov	a,_mavlink_crc_tmp_2_136
   1B64 C4            [12]  734 	swap	a
   1B65 54 0F         [12]  735 	anl	a,#0x0F
   1B67 FF            [12]  736 	mov	r7,a
   1B68 7A 00         [12]  737 	mov	r2,#0x00
   1B6A 6B            [12]  738 	xrl	a,r3
   1B6B FD            [12]  739 	mov	r5,a
   1B6C EA            [12]  740 	mov	a,r2
   1B6D 6C            [12]  741 	xrl	a,r4
   1B6E FE            [12]  742 	mov	r6,a
                            743 ;	radio/mavlink.c:75: i++;
   1B6F 78 56         [12]  744 	mov	r0,#_mavlink_crc_i_1_134
   1B71 E2            [24]  745 	movx	a,@r0
   1B72 24 01         [12]  746 	add	a,#0x01
   1B74 F2            [24]  747 	movx	@r0,a
   1B75 D0 04         [24]  748 	pop	ar4
   1B77 80 94         [24]  749 	sjmp	00103$
   1B79                     750 00105$:
                            751 ;	radio/mavlink.c:78: pbuf[length+6] = sum&0xFF;
   1B79 74 06         [12]  752 	mov	a,#0x06
   1B7B 25 77         [12]  753 	add	a,_mavlink_crc_length_1_134
   1B7D 24 72         [12]  754 	add	a,#_pbuf
   1B7F F5 82         [12]  755 	mov	dpl,a
   1B81 E4            [12]  756 	clr	a
   1B82 34 04         [12]  757 	addc	a,#(_pbuf >> 8)
   1B84 F5 83         [12]  758 	mov	dph,a
   1B86 8D 04         [24]  759 	mov	ar4,r5
   1B88 EC            [12]  760 	mov	a,r4
   1B89 F0            [24]  761 	movx	@dptr,a
                            762 ;	radio/mavlink.c:79: pbuf[length+7] = sum>>8;
   1B8A 74 07         [12]  763 	mov	a,#0x07
   1B8C 25 77         [12]  764 	add	a,_mavlink_crc_length_1_134
   1B8E 24 72         [12]  765 	add	a,#_pbuf
   1B90 F5 82         [12]  766 	mov	dpl,a
   1B92 E4            [12]  767 	clr	a
   1B93 34 04         [12]  768 	addc	a,#(_pbuf >> 8)
   1B95 F5 83         [12]  769 	mov	dph,a
   1B97 8E 05         [24]  770 	mov	ar5,r6
   1B99 ED            [12]  771 	mov	a,r5
   1B9A F0            [24]  772 	movx	@dptr,a
   1B9B 22            [24]  773 	ret
                            774 ;------------------------------------------------------------
                            775 ;Allocation info for local variables in function 'swap_bytes'
                            776 ;------------------------------------------------------------
                            777 ;i                         Allocated with name '_swap_bytes_i_1_138'
                            778 ;tmp                       Allocated with name '_swap_bytes_tmp_2_139'
                            779 ;------------------------------------------------------------
                            780 ;	radio/mavlink.c:117: static void swap_bytes(__pdata uint8_t ofs, __pdata uint8_t len)
                            781 ;	-----------------------------------------
                            782 ;	 function swap_bytes
                            783 ;	-----------------------------------------
   1B9C                     784 _swap_bytes:
   1B9C AF 82         [24]  785 	mov	r7,dpl
                            786 ;	radio/mavlink.c:120: for (i=ofs; i<ofs+len; i+=2) {
   1B9E 8F 77         [24]  787 	mov	_swap_bytes_i_1_138,r7
   1BA0                     788 00103$:
   1BA0 8F 04         [24]  789 	mov	ar4,r7
   1BA2 7D 00         [12]  790 	mov	r5,#0x00
   1BA4 78 57         [12]  791 	mov	r0,#_swap_bytes_PARM_2
   1BA6 E2            [24]  792 	movx	a,@r0
   1BA7 7B 00         [12]  793 	mov	r3,#0x00
   1BA9 2C            [12]  794 	add	a,r4
   1BAA FC            [12]  795 	mov	r4,a
   1BAB EB            [12]  796 	mov	a,r3
   1BAC 3D            [12]  797 	addc	a,r5
   1BAD FD            [12]  798 	mov	r5,a
   1BAE AA 77         [24]  799 	mov	r2,_swap_bytes_i_1_138
   1BB0 7B 00         [12]  800 	mov	r3,#0x00
   1BB2 C3            [12]  801 	clr	c
   1BB3 EA            [12]  802 	mov	a,r2
   1BB4 9C            [12]  803 	subb	a,r4
   1BB5 EB            [12]  804 	mov	a,r3
   1BB6 64 80         [12]  805 	xrl	a,#0x80
   1BB8 8D F0         [24]  806 	mov	b,r5
   1BBA 63 F0 80      [24]  807 	xrl	b,#0x80
   1BBD 95 F0         [12]  808 	subb	a,b
   1BBF 50 32         [24]  809 	jnc	00105$
                            810 ;	radio/mavlink.c:121: register uint8_t tmp = pbuf[i];
   1BC1 E5 77         [12]  811 	mov	a,_swap_bytes_i_1_138
   1BC3 24 72         [12]  812 	add	a,#_pbuf
   1BC5 FC            [12]  813 	mov	r4,a
   1BC6 E4            [12]  814 	clr	a
   1BC7 34 04         [12]  815 	addc	a,#(_pbuf >> 8)
   1BC9 FD            [12]  816 	mov	r5,a
   1BCA 8C 82         [24]  817 	mov	dpl,r4
   1BCC 8D 83         [24]  818 	mov	dph,r5
   1BCE E0            [24]  819 	movx	a,@dptr
   1BCF F5 78         [12]  820 	mov	_swap_bytes_tmp_2_139,a
                            821 ;	radio/mavlink.c:122: pbuf[i] = pbuf[i+1];
   1BD1 E5 77         [12]  822 	mov	a,_swap_bytes_i_1_138
   1BD3 04            [12]  823 	inc	a
   1BD4 24 72         [12]  824 	add	a,#_pbuf
   1BD6 FA            [12]  825 	mov	r2,a
   1BD7 E4            [12]  826 	clr	a
   1BD8 34 04         [12]  827 	addc	a,#(_pbuf >> 8)
   1BDA FB            [12]  828 	mov	r3,a
   1BDB 8A 82         [24]  829 	mov	dpl,r2
   1BDD 8B 83         [24]  830 	mov	dph,r3
   1BDF E0            [24]  831 	movx	a,@dptr
   1BE0 FE            [12]  832 	mov	r6,a
   1BE1 8C 82         [24]  833 	mov	dpl,r4
   1BE3 8D 83         [24]  834 	mov	dph,r5
   1BE5 F0            [24]  835 	movx	@dptr,a
                            836 ;	radio/mavlink.c:123: pbuf[i+1] = tmp;
   1BE6 8A 82         [24]  837 	mov	dpl,r2
   1BE8 8B 83         [24]  838 	mov	dph,r3
   1BEA E5 78         [12]  839 	mov	a,_swap_bytes_tmp_2_139
   1BEC F0            [24]  840 	movx	@dptr,a
                            841 ;	radio/mavlink.c:120: for (i=ofs; i<ofs+len; i+=2) {
   1BED 05 77         [12]  842 	inc	_swap_bytes_i_1_138
   1BEF 05 77         [12]  843 	inc	_swap_bytes_i_1_138
   1BF1 80 AD         [24]  844 	sjmp	00103$
   1BF3                     845 00105$:
   1BF3 22            [24]  846 	ret
                            847 ;------------------------------------------------------------
                            848 ;Allocation info for local variables in function 'MAVLink_report'
                            849 ;------------------------------------------------------------
                            850 ;sloc0                     Allocated with name '_MAVLink_report_sloc0_1_0'
                            851 ;m                         Allocated with name '_MAVLink_report_m_2_142'
                            852 ;m                         Allocated with name '_MAVLink_report_m_2_143'
                            853 ;------------------------------------------------------------
                            854 ;	radio/mavlink.c:128: void MAVLink_report(void)
                            855 ;	-----------------------------------------
                            856 ;	 function MAVLink_report
                            857 ;	-----------------------------------------
   1BF4                     858 _MAVLink_report:
                            859 ;	radio/mavlink.c:130: pbuf[0] = using_mavlink_10?254:'U';
   1BF4 30 0E 04      [24]  860 	jnb	_using_mavlink_10,00108$
   1BF7 7F FE         [12]  861 	mov	r7,#0xFE
   1BF9 80 02         [24]  862 	sjmp	00109$
   1BFB                     863 00108$:
   1BFB 7F 55         [12]  864 	mov	r7,#0x55
   1BFD                     865 00109$:
   1BFD 90 04 72      [24]  866 	mov	dptr,#_pbuf
   1C00 EF            [12]  867 	mov	a,r7
   1C01 F0            [24]  868 	movx	@dptr,a
                            869 ;	radio/mavlink.c:131: pbuf[1] = sizeof(struct mavlink_RADIO_v09);
   1C02 90 04 73      [24]  870 	mov	dptr,#(_pbuf + 0x0001)
   1C05 74 09         [12]  871 	mov	a,#0x09
   1C07 F0            [24]  872 	movx	@dptr,a
                            873 ;	radio/mavlink.c:132: pbuf[2] = seqnum++;
   1C08 78 55         [12]  874 	mov	r0,#_seqnum
   1C0A E2            [24]  875 	movx	a,@r0
   1C0B FF            [12]  876 	mov	r7,a
   1C0C 78 55         [12]  877 	mov	r0,#_seqnum
   1C0E 04            [12]  878 	inc	a
   1C0F F2            [24]  879 	movx	@r0,a
   1C10 90 04 74      [24]  880 	mov	dptr,#(_pbuf + 0x0002)
   1C13 EF            [12]  881 	mov	a,r7
   1C14 F0            [24]  882 	movx	@dptr,a
                            883 ;	radio/mavlink.c:133: pbuf[3] = RADIO_SOURCE_SYSTEM;
   1C15 90 04 75      [24]  884 	mov	dptr,#(_pbuf + 0x0003)
   1C18 74 33         [12]  885 	mov	a,#0x33
   1C1A F0            [24]  886 	movx	@dptr,a
                            887 ;	radio/mavlink.c:134: pbuf[4] = RADIO_SOURCE_COMPONENT;
   1C1B 90 04 76      [24]  888 	mov	dptr,#(_pbuf + 0x0004)
   1C1E 74 44         [12]  889 	mov	a,#0x44
   1C20 F0            [24]  890 	movx	@dptr,a
                            891 ;	radio/mavlink.c:135: pbuf[5] = MAVLINK_MSG_ID_RADIO;
   1C21 90 04 77      [24]  892 	mov	dptr,#(_pbuf + 0x0005)
   1C24 74 A6         [12]  893 	mov	a,#0xA6
   1C26 F0            [24]  894 	movx	@dptr,a
                            895 ;	radio/mavlink.c:137: if (using_mavlink_10) {
   1C27 20 0E 03      [24]  896 	jb	_using_mavlink_10,00120$
   1C2A 02 1C FB      [24]  897 	ljmp	00102$
   1C2D                     898 00120$:
                            899 ;	radio/mavlink.c:138: struct mavlink_RADIO_v10 *m = (struct mavlink_RADIO_v10 *)&pbuf[6];
   1C2D 7E 78         [12]  900 	mov	r6,#(_pbuf + 0x0006)
   1C2F 7F 04         [12]  901 	mov	r7,#((_pbuf + 0x0006) >> 8)
   1C31 7D 00         [12]  902 	mov	r5,#0x00
                            903 ;	radio/mavlink.c:139: m->rxerrors = errors.rx_errors;
   1C33 78 34         [12]  904 	mov	r0,#_errors
   1C35 E2            [24]  905 	movx	a,@r0
   1C36 FB            [12]  906 	mov	r3,a
   1C37 08            [12]  907 	inc	r0
   1C38 E2            [24]  908 	movx	a,@r0
   1C39 FC            [12]  909 	mov	r4,a
   1C3A 8E 82         [24]  910 	mov	dpl,r6
   1C3C 8F 83         [24]  911 	mov	dph,r7
   1C3E 8D F0         [24]  912 	mov	b,r5
   1C40 EB            [12]  913 	mov	a,r3
   1C41 12 5E 30      [24]  914 	lcall	__gptrput
   1C44 A3            [24]  915 	inc	dptr
   1C45 EC            [12]  916 	mov	a,r4
   1C46 12 5E 30      [24]  917 	lcall	__gptrput
                            918 ;	radio/mavlink.c:140: m->fixed    = errors.corrected_packets;
   1C49 74 02         [12]  919 	mov	a,#0x02
   1C4B 2E            [12]  920 	add	a,r6
   1C4C F5 28         [12]  921 	mov	_MAVLink_report_sloc0_1_0,a
   1C4E E4            [12]  922 	clr	a
   1C4F 3F            [12]  923 	addc	a,r7
   1C50 F5 29         [12]  924 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1C52 8D 2A         [24]  925 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1C54 78 3E         [12]  926 	mov	r0,#(_errors + 0x000a)
   1C56 E2            [24]  927 	movx	a,@r0
   1C57 FB            [12]  928 	mov	r3,a
   1C58 08            [12]  929 	inc	r0
   1C59 E2            [24]  930 	movx	a,@r0
   1C5A FC            [12]  931 	mov	r4,a
   1C5B 85 28 82      [24]  932 	mov	dpl,_MAVLink_report_sloc0_1_0
   1C5E 85 29 83      [24]  933 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1C61 85 2A F0      [24]  934 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1C64 EB            [12]  935 	mov	a,r3
   1C65 12 5E 30      [24]  936 	lcall	__gptrput
   1C68 A3            [24]  937 	inc	dptr
   1C69 EC            [12]  938 	mov	a,r4
   1C6A 12 5E 30      [24]  939 	lcall	__gptrput
                            940 ;	radio/mavlink.c:141: m->txbuf    = serial_read_space();
   1C6D 74 06         [12]  941 	mov	a,#0x06
   1C6F 2E            [12]  942 	add	a,r6
   1C70 F5 28         [12]  943 	mov	_MAVLink_report_sloc0_1_0,a
   1C72 E4            [12]  944 	clr	a
   1C73 3F            [12]  945 	addc	a,r7
   1C74 F5 29         [12]  946 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1C76 8D 2A         [24]  947 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1C78 C0 07         [24]  948 	push	ar7
   1C7A C0 06         [24]  949 	push	ar6
   1C7C C0 05         [24]  950 	push	ar5
   1C7E 12 44 B0      [24]  951 	lcall	_serial_read_space
   1C81 AC 82         [24]  952 	mov	r4,dpl
   1C83 D0 05         [24]  953 	pop	ar5
   1C85 D0 06         [24]  954 	pop	ar6
   1C87 D0 07         [24]  955 	pop	ar7
   1C89 85 28 82      [24]  956 	mov	dpl,_MAVLink_report_sloc0_1_0
   1C8C 85 29 83      [24]  957 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1C8F 85 2A F0      [24]  958 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1C92 EC            [12]  959 	mov	a,r4
   1C93 12 5E 30      [24]  960 	lcall	__gptrput
                            961 ;	radio/mavlink.c:142: m->rssi     = statistics.average_rssi;
   1C96 74 04         [12]  962 	mov	a,#0x04
   1C98 2E            [12]  963 	add	a,r6
   1C99 F5 28         [12]  964 	mov	_MAVLink_report_sloc0_1_0,a
   1C9B E4            [12]  965 	clr	a
   1C9C 3F            [12]  966 	addc	a,r7
   1C9D F5 29         [12]  967 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1C9F 8D 2A         [24]  968 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1CA1 78 40         [12]  969 	mov	r0,#_statistics
   1CA3 E2            [24]  970 	movx	a,@r0
   1CA4 85 28 82      [24]  971 	mov	dpl,_MAVLink_report_sloc0_1_0
   1CA7 85 29 83      [24]  972 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1CAA 85 2A F0      [24]  973 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1CAD 12 5E 30      [24]  974 	lcall	__gptrput
                            975 ;	radio/mavlink.c:143: m->remrssi  = remote_statistics.average_rssi;
   1CB0 74 05         [12]  976 	mov	a,#0x05
   1CB2 2E            [12]  977 	add	a,r6
   1CB3 F5 28         [12]  978 	mov	_MAVLink_report_sloc0_1_0,a
   1CB5 E4            [12]  979 	clr	a
   1CB6 3F            [12]  980 	addc	a,r7
   1CB7 F5 29         [12]  981 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1CB9 8D 2A         [24]  982 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1CBB 78 44         [12]  983 	mov	r0,#_remote_statistics
   1CBD E2            [24]  984 	movx	a,@r0
   1CBE 85 28 82      [24]  985 	mov	dpl,_MAVLink_report_sloc0_1_0
   1CC1 85 29 83      [24]  986 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1CC4 85 2A F0      [24]  987 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1CC7 12 5E 30      [24]  988 	lcall	__gptrput
                            989 ;	radio/mavlink.c:144: m->noise    = statistics.average_noise;
   1CCA 74 07         [12]  990 	mov	a,#0x07
   1CCC 2E            [12]  991 	add	a,r6
   1CCD F5 28         [12]  992 	mov	_MAVLink_report_sloc0_1_0,a
   1CCF E4            [12]  993 	clr	a
   1CD0 3F            [12]  994 	addc	a,r7
   1CD1 F5 29         [12]  995 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1CD3 8D 2A         [24]  996 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1CD5 78 41         [12]  997 	mov	r0,#(_statistics + 0x0001)
   1CD7 E2            [24]  998 	movx	a,@r0
   1CD8 85 28 82      [24]  999 	mov	dpl,_MAVLink_report_sloc0_1_0
   1CDB 85 29 83      [24] 1000 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1CDE 85 2A F0      [24] 1001 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1CE1 12 5E 30      [24] 1002 	lcall	__gptrput
                           1003 ;	radio/mavlink.c:145: m->remnoise = remote_statistics.average_noise;
   1CE4 74 08         [12] 1004 	mov	a,#0x08
   1CE6 2E            [12] 1005 	add	a,r6
   1CE7 FE            [12] 1006 	mov	r6,a
   1CE8 E4            [12] 1007 	clr	a
   1CE9 3F            [12] 1008 	addc	a,r7
   1CEA FF            [12] 1009 	mov	r7,a
   1CEB 78 45         [12] 1010 	mov	r0,#(_remote_statistics + 0x0001)
   1CED E2            [24] 1011 	movx	a,@r0
   1CEE FC            [12] 1012 	mov	r4,a
   1CEF 8E 82         [24] 1013 	mov	dpl,r6
   1CF1 8F 83         [24] 1014 	mov	dph,r7
   1CF3 8D F0         [24] 1015 	mov	b,r5
   1CF5 12 5E 30      [24] 1016 	lcall	__gptrput
   1CF8 02 1D D0      [24] 1017 	ljmp	00103$
   1CFB                    1018 00102$:
                           1019 ;	radio/mavlink.c:147: struct mavlink_RADIO_v09 *m = (struct mavlink_RADIO_v09 *)&pbuf[6];
   1CFB 7E 78         [12] 1020 	mov	r6,#(_pbuf + 0x0006)
   1CFD 7F 04         [12] 1021 	mov	r7,#((_pbuf + 0x0006) >> 8)
   1CFF 7D 00         [12] 1022 	mov	r5,#0x00
                           1023 ;	radio/mavlink.c:148: m->rxerrors = errors.rx_errors;
   1D01 74 05         [12] 1024 	mov	a,#0x05
   1D03 2E            [12] 1025 	add	a,r6
   1D04 F5 28         [12] 1026 	mov	_MAVLink_report_sloc0_1_0,a
   1D06 E4            [12] 1027 	clr	a
   1D07 3F            [12] 1028 	addc	a,r7
   1D08 F5 29         [12] 1029 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1D0A 8D 2A         [24] 1030 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1D0C 78 34         [12] 1031 	mov	r0,#_errors
   1D0E E2            [24] 1032 	movx	a,@r0
   1D0F FB            [12] 1033 	mov	r3,a
   1D10 08            [12] 1034 	inc	r0
   1D11 E2            [24] 1035 	movx	a,@r0
   1D12 FC            [12] 1036 	mov	r4,a
   1D13 85 28 82      [24] 1037 	mov	dpl,_MAVLink_report_sloc0_1_0
   1D16 85 29 83      [24] 1038 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1D19 85 2A F0      [24] 1039 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1D1C EB            [12] 1040 	mov	a,r3
   1D1D 12 5E 30      [24] 1041 	lcall	__gptrput
   1D20 A3            [24] 1042 	inc	dptr
   1D21 EC            [12] 1043 	mov	a,r4
   1D22 12 5E 30      [24] 1044 	lcall	__gptrput
                           1045 ;	radio/mavlink.c:149: m->fixed    = errors.corrected_packets;
   1D25 74 07         [12] 1046 	mov	a,#0x07
   1D27 2E            [12] 1047 	add	a,r6
   1D28 F5 28         [12] 1048 	mov	_MAVLink_report_sloc0_1_0,a
   1D2A E4            [12] 1049 	clr	a
   1D2B 3F            [12] 1050 	addc	a,r7
   1D2C F5 29         [12] 1051 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1D2E 8D 2A         [24] 1052 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1D30 78 3E         [12] 1053 	mov	r0,#(_errors + 0x000a)
   1D32 E2            [24] 1054 	movx	a,@r0
   1D33 FB            [12] 1055 	mov	r3,a
   1D34 08            [12] 1056 	inc	r0
   1D35 E2            [24] 1057 	movx	a,@r0
   1D36 FC            [12] 1058 	mov	r4,a
   1D37 85 28 82      [24] 1059 	mov	dpl,_MAVLink_report_sloc0_1_0
   1D3A 85 29 83      [24] 1060 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1D3D 85 2A F0      [24] 1061 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1D40 EB            [12] 1062 	mov	a,r3
   1D41 12 5E 30      [24] 1063 	lcall	__gptrput
   1D44 A3            [24] 1064 	inc	dptr
   1D45 EC            [12] 1065 	mov	a,r4
   1D46 12 5E 30      [24] 1066 	lcall	__gptrput
                           1067 ;	radio/mavlink.c:150: m->txbuf    = serial_read_space();
   1D49 74 02         [12] 1068 	mov	a,#0x02
   1D4B 2E            [12] 1069 	add	a,r6
   1D4C F5 28         [12] 1070 	mov	_MAVLink_report_sloc0_1_0,a
   1D4E E4            [12] 1071 	clr	a
   1D4F 3F            [12] 1072 	addc	a,r7
   1D50 F5 29         [12] 1073 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1D52 8D 2A         [24] 1074 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1D54 C0 07         [24] 1075 	push	ar7
   1D56 C0 06         [24] 1076 	push	ar6
   1D58 C0 05         [24] 1077 	push	ar5
   1D5A 12 44 B0      [24] 1078 	lcall	_serial_read_space
   1D5D AC 82         [24] 1079 	mov	r4,dpl
   1D5F D0 05         [24] 1080 	pop	ar5
   1D61 D0 06         [24] 1081 	pop	ar6
   1D63 D0 07         [24] 1082 	pop	ar7
   1D65 85 28 82      [24] 1083 	mov	dpl,_MAVLink_report_sloc0_1_0
   1D68 85 29 83      [24] 1084 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1D6B 85 2A F0      [24] 1085 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1D6E EC            [12] 1086 	mov	a,r4
   1D6F 12 5E 30      [24] 1087 	lcall	__gptrput
                           1088 ;	radio/mavlink.c:151: m->rssi     = statistics.average_rssi;
   1D72 78 40         [12] 1089 	mov	r0,#_statistics
   1D74 E2            [24] 1090 	movx	a,@r0
   1D75 8E 82         [24] 1091 	mov	dpl,r6
   1D77 8F 83         [24] 1092 	mov	dph,r7
   1D79 8D F0         [24] 1093 	mov	b,r5
   1D7B 12 5E 30      [24] 1094 	lcall	__gptrput
                           1095 ;	radio/mavlink.c:152: m->remrssi  = remote_statistics.average_rssi;
   1D7E 74 01         [12] 1096 	mov	a,#0x01
   1D80 2E            [12] 1097 	add	a,r6
   1D81 F5 28         [12] 1098 	mov	_MAVLink_report_sloc0_1_0,a
   1D83 E4            [12] 1099 	clr	a
   1D84 3F            [12] 1100 	addc	a,r7
   1D85 F5 29         [12] 1101 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1D87 8D 2A         [24] 1102 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1D89 78 44         [12] 1103 	mov	r0,#_remote_statistics
   1D8B E2            [24] 1104 	movx	a,@r0
   1D8C 85 28 82      [24] 1105 	mov	dpl,_MAVLink_report_sloc0_1_0
   1D8F 85 29 83      [24] 1106 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1D92 85 2A F0      [24] 1107 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1D95 12 5E 30      [24] 1108 	lcall	__gptrput
                           1109 ;	radio/mavlink.c:153: m->noise    = statistics.average_noise;
   1D98 74 03         [12] 1110 	mov	a,#0x03
   1D9A 2E            [12] 1111 	add	a,r6
   1D9B F5 28         [12] 1112 	mov	_MAVLink_report_sloc0_1_0,a
   1D9D E4            [12] 1113 	clr	a
   1D9E 3F            [12] 1114 	addc	a,r7
   1D9F F5 29         [12] 1115 	mov	(_MAVLink_report_sloc0_1_0 + 1),a
   1DA1 8D 2A         [24] 1116 	mov	(_MAVLink_report_sloc0_1_0 + 2),r5
   1DA3 78 41         [12] 1117 	mov	r0,#(_statistics + 0x0001)
   1DA5 E2            [24] 1118 	movx	a,@r0
   1DA6 85 28 82      [24] 1119 	mov	dpl,_MAVLink_report_sloc0_1_0
   1DA9 85 29 83      [24] 1120 	mov	dph,(_MAVLink_report_sloc0_1_0 + 1)
   1DAC 85 2A F0      [24] 1121 	mov	b,(_MAVLink_report_sloc0_1_0 + 2)
   1DAF 12 5E 30      [24] 1122 	lcall	__gptrput
                           1123 ;	radio/mavlink.c:154: m->remnoise = remote_statistics.average_noise;
   1DB2 74 04         [12] 1124 	mov	a,#0x04
   1DB4 2E            [12] 1125 	add	a,r6
   1DB5 FE            [12] 1126 	mov	r6,a
   1DB6 E4            [12] 1127 	clr	a
   1DB7 3F            [12] 1128 	addc	a,r7
   1DB8 FF            [12] 1129 	mov	r7,a
   1DB9 78 45         [12] 1130 	mov	r0,#(_remote_statistics + 0x0001)
   1DBB E2            [24] 1131 	movx	a,@r0
   1DBC 8E 82         [24] 1132 	mov	dpl,r6
   1DBE 8F 83         [24] 1133 	mov	dph,r7
   1DC0 8D F0         [24] 1134 	mov	b,r5
   1DC2 12 5E 30      [24] 1135 	lcall	__gptrput
                           1136 ;	radio/mavlink.c:155: swap_bytes(6+5, 4);
   1DC5 78 57         [12] 1137 	mov	r0,#_swap_bytes_PARM_2
   1DC7 74 04         [12] 1138 	mov	a,#0x04
   1DC9 F2            [24] 1139 	movx	@r0,a
   1DCA 75 82 0B      [24] 1140 	mov	dpl,#0x0B
   1DCD 12 1B 9C      [24] 1141 	lcall	_swap_bytes
   1DD0                    1142 00103$:
                           1143 ;	radio/mavlink.c:157: mavlink_crc();
   1DD0 12 1A E5      [24] 1144 	lcall	_mavlink_crc
                           1145 ;	radio/mavlink.c:159: if (serial_write_space() < sizeof(struct mavlink_RADIO_v09)+8) {
   1DD3 12 42 2A      [24] 1146 	lcall	_serial_write_space
   1DD6 AE 82         [24] 1147 	mov	r6,dpl
   1DD8 AF 83         [24] 1148 	mov	r7,dph
   1DDA C3            [12] 1149 	clr	c
   1DDB EE            [12] 1150 	mov	a,r6
   1DDC 94 11         [12] 1151 	subb	a,#0x11
   1DDE EF            [12] 1152 	mov	a,r7
   1DDF 94 00         [12] 1153 	subb	a,#0x00
   1DE1 50 01         [24] 1154 	jnc	00105$
                           1155 ;	radio/mavlink.c:161: return;
   1DE3 22            [24] 1156 	ret
   1DE4                    1157 00105$:
                           1158 ;	radio/mavlink.c:164: serial_write_buf(pbuf, sizeof(struct mavlink_RADIO_v09)+8);
   1DE4 78 B2         [12] 1159 	mov	r0,#_serial_write_buf_PARM_2
   1DE6 74 11         [12] 1160 	mov	a,#0x11
   1DE8 F2            [24] 1161 	movx	@r0,a
   1DE9 90 04 72      [24] 1162 	mov	dptr,#_pbuf
   1DEC 02 41 0A      [24] 1163 	ljmp	_serial_write_buf
                           1164 	.area CSEG    (CODE)
                           1165 	.area CONST   (CODE)
                           1166 	.area XINIT   (CODE)
                           1167 	.area CABS    (ABS,CODE)
