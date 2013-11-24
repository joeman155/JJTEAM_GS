                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:05 2013
                              5 ;--------------------------------------------------------
                              6 	.module freq_hopping
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _srand
                             13 	.globl _rand
                             14 	.globl _SDN
                             15 	.globl _NSS1
                             16 	.globl _IRQ
                             17 	.globl _BUTTON_DOWN
                             18 	.globl _BUTTON_UP
                             19 	.globl _BUTTON_ENTER
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
                            268 	.globl _num_fh_channels
                            269 	.globl _fhop_set_locked_PARM_1
                            270 	.globl _fhop_init
                            271 	.globl _fhop_transmit_channel
                            272 	.globl _fhop_receive_channel
                            273 	.globl _fhop_window_change
                            274 	.globl _fhop_set_locked
                            275 ;--------------------------------------------------------
                            276 ; special function registers
                            277 ;--------------------------------------------------------
                            278 	.area RSEG    (ABS,DATA)
   0000                     279 	.org 0x0000
                     0080   280 _P0	=	0x0080
                     0081   281 _SP	=	0x0081
                     0082   282 _DPL	=	0x0082
                     0083   283 _DPH	=	0x0083
                     0084   284 _SPI1CFG	=	0x0084
                     0085   285 _SPI1CKR	=	0x0085
                     0085   286 _TOFFL	=	0x0085
                     0086   287 _SPI1DAT	=	0x0086
                     0086   288 _TOFFH	=	0x0086
                     0087   289 _PCON	=	0x0087
                     0088   290 _TCON	=	0x0088
                     0089   291 _TMOD	=	0x0089
                     008A   292 _TL0	=	0x008a
                     008B   293 _TL1	=	0x008b
                     008C   294 _TH0	=	0x008c
                     008D   295 _TH1	=	0x008d
                     008E   296 _CKCON	=	0x008e
                     008F   297 _PSCTL	=	0x008f
                     0090   298 _P1	=	0x0090
                     0091   299 _TMR3CN	=	0x0091
                     0091   300 _CRC0DAT	=	0x0091
                     0092   301 _TMR3RLL	=	0x0092
                     0092   302 _CRC0CN	=	0x0092
                     0093   303 _TMR3RLH	=	0x0093
                     0093   304 _CRC0IN	=	0x0093
                     0094   305 _TMR3L	=	0x0094
                     0095   306 _CRC0FLIP	=	0x0095
                     0095   307 _TMR3H	=	0x0095
                     0096   308 _DC0CF	=	0x0096
                     0096   309 _CRC0AUTO	=	0x0096
                     0097   310 _DC0CN	=	0x0097
                     0097   311 _CRC0CNT	=	0x0097
                     0098   312 _SCON0	=	0x0098
                     0099   313 _SBUF0	=	0x0099
                     009A   314 _CPT1CN	=	0x009a
                     009B   315 _CPT0CN	=	0x009b
                     009C   316 _CPT1MD	=	0x009c
                     009D   317 _CPT0MD	=	0x009d
                     009E   318 _CPT1MX	=	0x009e
                     009F   319 _CPT0MX	=	0x009f
                     00A0   320 _P2	=	0x00a0
                     00A1   321 _SPI0CFG	=	0x00a1
                     00A2   322 _SPI0CKR	=	0x00a2
                     00A3   323 _SPI0DAT	=	0x00a3
                     00A4   324 _P0MDOUT	=	0x00a4
                     00A4   325 _P0DRV	=	0x00a4
                     00A5   326 _P1MDOUT	=	0x00a5
                     00A5   327 _P1DRV	=	0x00a5
                     00A6   328 _P2MDOUT	=	0x00a6
                     00A6   329 _P2DRV	=	0x00a6
                     00A7   330 _SFRPAGE	=	0x00a7
                     00A8   331 _IE	=	0x00a8
                     00A9   332 _CLKSEL	=	0x00a9
                     00AA   333 _EMI0CN	=	0x00aa
                     00AB   334 _EMI0CF	=	0x00ab
                     00AC   335 _RTC0ADR	=	0x00ac
                     00AD   336 _RTC0DAT	=	0x00ad
                     00AE   337 _RTC0KEY	=	0x00ae
                     00AF   338 _EMI0TC	=	0x00af
                     00AF   339 _ONESHOT	=	0x00af
                     00B0   340 _SPI1CN	=	0x00b0
                     00B1   341 _OSCXCN	=	0x00b1
                     00B2   342 _OSCICN	=	0x00b2
                     00B3   343 _OSCICL	=	0x00b3
                     00B5   344 _PMU0CF	=	0x00b5
                     00B6   345 _FLSCL	=	0x00b6
                     00B7   346 _FLKEY	=	0x00b7
                     00B8   347 _IP	=	0x00b8
                     00B9   348 _IREF0CN	=	0x00b9
                     00BA   349 _ADC0AC	=	0x00ba
                     00BA   350 _ADC0PWR	=	0x00ba
                     00BB   351 _ADC0MX	=	0x00bb
                     00BC   352 _ADC0CF	=	0x00bc
                     00BD   353 _ADC0TK	=	0x00bd
                     00BD   354 _ADC0L	=	0x00bd
                     00BE   355 _ADC0H	=	0x00be
                     00BF   356 _P1MASK	=	0x00bf
                     00C0   357 _SMB0CN	=	0x00c0
                     00C1   358 _SMB0CF	=	0x00c1
                     00C2   359 _SMB0DAT	=	0x00c2
                     00C3   360 _ADC0GTL	=	0x00c3
                     00C4   361 _ADC0GTH	=	0x00c4
                     00C5   362 _ADC0LTL	=	0x00c5
                     00C6   363 _ADC0LTH	=	0x00c6
                     00C7   364 _P0MASK	=	0x00c7
                     00C8   365 _TMR2CN	=	0x00c8
                     00C9   366 _REG0CN	=	0x00c9
                     00CA   367 _TMR2RLL	=	0x00ca
                     00CB   368 _TMR2RLH	=	0x00cb
                     00CC   369 _TMR2L	=	0x00cc
                     00CD   370 _TMR2H	=	0x00cd
                     00CE   371 _PCA0CPM5	=	0x00ce
                     00CF   372 _P1MAT	=	0x00cf
                     00D0   373 _PSW	=	0x00d0
                     00D1   374 _REF0CN	=	0x00d1
                     00D2   375 _PCA0CPL5	=	0x00d2
                     00D3   376 _PCA0CPH5	=	0x00d3
                     00D4   377 _P0SKIP	=	0x00d4
                     00D5   378 _P1SKIP	=	0x00d5
                     00D6   379 _P2SKIP	=	0x00d6
                     00D7   380 _P0MAT	=	0x00d7
                     00D8   381 _PCA0CN	=	0x00d8
                     00D9   382 _PCA0MD	=	0x00d9
                     00DA   383 _PCA0CPM0	=	0x00da
                     00DB   384 _PCA0CPM1	=	0x00db
                     00DC   385 _PCA0CPM2	=	0x00dc
                     00DD   386 _PCA0CPM3	=	0x00dd
                     00DE   387 _PCA0CPM4	=	0x00de
                     00DF   388 _PCA0PWM	=	0x00df
                     00E0   389 _ACC	=	0x00e0
                     00E1   390 _XBR0	=	0x00e1
                     00E2   391 _XBR1	=	0x00e2
                     00E3   392 _XBR2	=	0x00e3
                     00E4   393 _IT01CF	=	0x00e4
                     00E5   394 _FLWR	=	0x00e5
                     00E6   395 _EIE1	=	0x00e6
                     00E7   396 _EIE2	=	0x00e7
                     00E8   397 _ADC0CN	=	0x00e8
                     00E9   398 _PCA0CPL1	=	0x00e9
                     00EA   399 _PCA0CPH1	=	0x00ea
                     00EB   400 _PCA0CPL2	=	0x00eb
                     00EC   401 _PCA0CPH2	=	0x00ec
                     00ED   402 _PCA0CPL3	=	0x00ed
                     00EE   403 _PCA0CPH3	=	0x00ee
                     00EF   404 _RSTSRC	=	0x00ef
                     00F0   405 _B	=	0x00f0
                     00F1   406 _P0MDIN	=	0x00f1
                     00F2   407 _P1MDIN	=	0x00f2
                     00F3   408 _P2MDIN	=	0x00f3
                     00F4   409 _SMB0ADR	=	0x00f4
                     00F5   410 _SMB0ADM	=	0x00f5
                     00F6   411 _EIP1	=	0x00f6
                     00F7   412 _EIP2	=	0x00f7
                     00F8   413 _SPI0CN	=	0x00f8
                     00F9   414 _PCA0L	=	0x00f9
                     00FA   415 _PCA0H	=	0x00fa
                     00FB   416 _PCA0CPL0	=	0x00fb
                     00FC   417 _PCA0CPH0	=	0x00fc
                     00FD   418 _PCA0CPL4	=	0x00fd
                     00FE   419 _PCA0CPH4	=	0x00fe
                     00FF   420 _VDM0CN	=	0x00ff
                     8382   421 _DP	=	0x8382
                     8685   422 _TOFF	=	0x8685
                     9392   423 _TMR3RL	=	0x9392
                     9594   424 _TMR3	=	0x9594
                     BEBD   425 _ADC0	=	0xbebd
                     C4C3   426 _ADC0GT	=	0xc4c3
                     C6C5   427 _ADC0LT	=	0xc6c5
                     CBCA   428 _TMR2RL	=	0xcbca
                     CDCC   429 _TMR2	=	0xcdcc
                     D3D2   430 _PCA0CP5	=	0xd3d2
                     EAE9   431 _PCA0CP1	=	0xeae9
                     ECEB   432 _PCA0CP2	=	0xeceb
                     EEED   433 _PCA0CP3	=	0xeeed
                     FAF9   434 _PCA0	=	0xfaf9
                     FCFB   435 _PCA0CP0	=	0xfcfb
                     FEFD   436 _PCA0CP4	=	0xfefd
                            437 ;--------------------------------------------------------
                            438 ; special function bits
                            439 ;--------------------------------------------------------
                            440 	.area RSEG    (ABS,DATA)
   0000                     441 	.org 0x0000
                     008F   442 _TF1	=	0x008f
                     008E   443 _TR1	=	0x008e
                     008D   444 _TF0	=	0x008d
                     008C   445 _TR0	=	0x008c
                     008B   446 _IE1	=	0x008b
                     008A   447 _IT1	=	0x008a
                     0089   448 _IE0	=	0x0089
                     0088   449 _IT0	=	0x0088
                     0096   450 _CRC0SEL	=	0x0096
                     0095   451 _CRC0INIT	=	0x0095
                     0094   452 _CRC0VAL	=	0x0094
                     009F   453 _S0MODE	=	0x009f
                     009D   454 _MCE0	=	0x009d
                     009C   455 _REN0	=	0x009c
                     009B   456 _TB80	=	0x009b
                     009A   457 _RB80	=	0x009a
                     0099   458 _TI0	=	0x0099
                     0098   459 _RI0	=	0x0098
                     00AF   460 _EA	=	0x00af
                     00AE   461 _ESPI0	=	0x00ae
                     00AD   462 _ET2	=	0x00ad
                     00AC   463 _ES0	=	0x00ac
                     00AB   464 _ET1	=	0x00ab
                     00AA   465 _EX1	=	0x00aa
                     00A9   466 _ET0	=	0x00a9
                     00A8   467 _EX0	=	0x00a8
                     00B7   468 _SPIF1	=	0x00b7
                     00B6   469 _WCOL1	=	0x00b6
                     00B5   470 _MODF1	=	0x00b5
                     00B4   471 _RXOVRN1	=	0x00b4
                     00B3   472 _NSS1MD1	=	0x00b3
                     00B2   473 _NSS1MD0	=	0x00b2
                     00B1   474 _TXBMT1	=	0x00b1
                     00B0   475 _SPI1EN	=	0x00b0
                     00BE   476 _PSPI0	=	0x00be
                     00BD   477 _PT2	=	0x00bd
                     00BC   478 _PS0	=	0x00bc
                     00BB   479 _PT1	=	0x00bb
                     00BA   480 _PX1	=	0x00ba
                     00B9   481 _PT0	=	0x00b9
                     00B8   482 _PX0	=	0x00b8
                     00C7   483 _MASTER	=	0x00c7
                     00C6   484 _TXMODE	=	0x00c6
                     00C5   485 _STA	=	0x00c5
                     00C4   486 _STO	=	0x00c4
                     00C3   487 _ACKRQ	=	0x00c3
                     00C2   488 _ARBLOST	=	0x00c2
                     00C1   489 _ACK	=	0x00c1
                     00C0   490 _SI	=	0x00c0
                     00CF   491 _TF2H	=	0x00cf
                     00CE   492 _TF2L	=	0x00ce
                     00CD   493 _TF2LEN	=	0x00cd
                     00CC   494 _TF2CEN	=	0x00cc
                     00CB   495 _T2SPLIT	=	0x00cb
                     00CA   496 _TR2	=	0x00ca
                     00C9   497 _T2RCLK	=	0x00c9
                     00C8   498 _T2XCLK	=	0x00c8
                     00D7   499 _CY	=	0x00d7
                     00D6   500 _AC	=	0x00d6
                     00D5   501 _F0	=	0x00d5
                     00D4   502 _RS1	=	0x00d4
                     00D3   503 _RS0	=	0x00d3
                     00D2   504 _OV	=	0x00d2
                     00D1   505 _F1	=	0x00d1
                     00D0   506 _P	=	0x00d0
                     00DF   507 _CF	=	0x00df
                     00DE   508 _CR	=	0x00de
                     00DD   509 _CCF5	=	0x00dd
                     00DC   510 _CCF4	=	0x00dc
                     00DB   511 _CCF3	=	0x00db
                     00DA   512 _CCF2	=	0x00da
                     00D9   513 _CCF1	=	0x00d9
                     00D8   514 _CCF0	=	0x00d8
                     00EF   515 _AD0EN	=	0x00ef
                     00EE   516 _BURSTEN	=	0x00ee
                     00ED   517 _AD0INT	=	0x00ed
                     00EC   518 _AD0BUSY	=	0x00ec
                     00EB   519 _AD0WINT	=	0x00eb
                     00EA   520 _AD0CM2	=	0x00ea
                     00E9   521 _AD0CM1	=	0x00e9
                     00E8   522 _AD0CM0	=	0x00e8
                     00FF   523 _SPIF0	=	0x00ff
                     00FE   524 _WCOL0	=	0x00fe
                     00FD   525 _MODF0	=	0x00fd
                     00FC   526 _RXOVRN0	=	0x00fc
                     00FB   527 _NSS0MD1	=	0x00fb
                     00FA   528 _NSS0MD0	=	0x00fa
                     00F9   529 _TXBMT0	=	0x00f9
                     00F8   530 _SPI0EN	=	0x00f8
                     00A0   531 _LED_RED	=	0x00a0
                     00A5   532 _LED_GREEN	=	0x00a5
                     0086   533 _BUTTON_ENTER	=	0x0086
                     0095   534 _BUTTON_UP	=	0x0095
                     0096   535 _BUTTON_DOWN	=	0x0096
                     0087   536 _IRQ	=	0x0087
                     0094   537 _NSS1	=	0x0094
                     00A6   538 _SDN	=	0x00a6
                            539 ;--------------------------------------------------------
                            540 ; overlayable register banks
                            541 ;--------------------------------------------------------
                            542 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     543 	.ds 8
                            544 ;--------------------------------------------------------
                            545 ; internal ram data
                            546 ;--------------------------------------------------------
                            547 	.area DSEG    (DATA)
   000E                     548 _shuffle_sloc0_1_0:
   000E                     549 	.ds 1
   000F                     550 _fhop_init_sloc0_1_0:
   000F                     551 	.ds 1
                            552 ;--------------------------------------------------------
                            553 ; overlayable items in internal ram 
                            554 ;--------------------------------------------------------
                            555 ;--------------------------------------------------------
                            556 ; indirectly addressable internal ram data
                            557 ;--------------------------------------------------------
                            558 	.area ISEG    (DATA)
                            559 ;--------------------------------------------------------
                            560 ; absolute internal ram data
                            561 ;--------------------------------------------------------
                            562 	.area IABS    (ABS,DATA)
                            563 	.area IABS    (ABS,DATA)
                            564 ;--------------------------------------------------------
                            565 ; bit data
                            566 ;--------------------------------------------------------
                            567 	.area BSEG    (BIT)
   0002                     568 _have_radio_lock:
   0002                     569 	.ds 1
   0003                     570 _fhop_set_locked_PARM_1:
   0003                     571 	.ds 1
                            572 ;--------------------------------------------------------
                            573 ; paged external ram data
                            574 ;--------------------------------------------------------
                            575 	.area PSEG    (PAG,XDATA)
   0018                     576 _num_fh_channels::
   0018                     577 	.ds 1
   0019                     578 _transmit_channel:
   0019                     579 	.ds 1
   001A                     580 _receive_channel:
   001A                     581 	.ds 1
                            582 ;--------------------------------------------------------
                            583 ; external ram data
                            584 ;--------------------------------------------------------
                            585 	.area XSEG    (XDATA)
   00ED                     586 _channel_map:
   00ED                     587 	.ds 50
   011F                     588 _shuffle_PARM_2:
   011F                     589 	.ds 1
   0120                     590 _shuffle_array_1_121:
   0120                     591 	.ds 2
   0122                     592 _fhop_init_netid_1_124:
   0122                     593 	.ds 2
   0124                     594 _fhop_init_array_3_128:
   0124                     595 	.ds 2
                            596 ;--------------------------------------------------------
                            597 ; absolute external ram data
                            598 ;--------------------------------------------------------
                            599 	.area XABS    (ABS,XDATA)
                            600 ;--------------------------------------------------------
                            601 ; external initialized ram data
                            602 ;--------------------------------------------------------
                            603 	.area XISEG   (XDATA)
                            604 	.area HOME    (CODE)
                            605 	.area GSINIT0 (CODE)
                            606 	.area GSINIT1 (CODE)
                            607 	.area GSINIT2 (CODE)
                            608 	.area GSINIT3 (CODE)
                            609 	.area GSINIT4 (CODE)
                            610 	.area GSINIT5 (CODE)
                            611 	.area GSINIT  (CODE)
                            612 	.area GSFINAL (CODE)
                            613 	.area CSEG    (CODE)
                            614 ;--------------------------------------------------------
                            615 ; global & static initialisations
                            616 ;--------------------------------------------------------
                            617 	.area HOME    (CODE)
                            618 	.area GSINIT  (CODE)
                            619 	.area GSFINAL (CODE)
                            620 	.area GSINIT  (CODE)
                            621 ;--------------------------------------------------------
                            622 ; Home
                            623 ;--------------------------------------------------------
                            624 	.area HOME    (CODE)
                            625 	.area HOME    (CODE)
                            626 ;--------------------------------------------------------
                            627 ; code
                            628 ;--------------------------------------------------------
                            629 	.area CSEG    (CODE)
                            630 ;------------------------------------------------------------
                            631 ;Allocation info for local variables in function 'shuffle'
                            632 ;------------------------------------------------------------
                            633 ;sloc0                     Allocated with name '_shuffle_sloc0_1_0'
                            634 ;n                         Allocated with name '_shuffle_PARM_2'
                            635 ;array                     Allocated with name '_shuffle_array_1_121'
                            636 ;i                         Allocated with name '_shuffle_i_1_122'
                            637 ;j                         Allocated with name '_shuffle_j_2_123'
                            638 ;t                         Allocated with name '_shuffle_t_2_123'
                            639 ;------------------------------------------------------------
                            640 ;	radio/freq_hopping.c:63: static inline void shuffle(__xdata uint8_t *array, uint8_t n)
                            641 ;	-----------------------------------------
                            642 ;	 function shuffle
                            643 ;	-----------------------------------------
   0AEF                     644 _shuffle:
                     0007   645 	ar7 = 0x07
                     0006   646 	ar6 = 0x06
                     0005   647 	ar5 = 0x05
                     0004   648 	ar4 = 0x04
                     0003   649 	ar3 = 0x03
                     0002   650 	ar2 = 0x02
                     0001   651 	ar1 = 0x01
                     0000   652 	ar0 = 0x00
   0AEF AF 83         [24]  653 	mov	r7,dph
   0AF1 E5 82         [12]  654 	mov	a,dpl
   0AF3 90 01 20      [24]  655 	mov	dptr,#_shuffle_array_1_121
   0AF6 F0            [24]  656 	movx	@dptr,a
   0AF7 EF            [12]  657 	mov	a,r7
   0AF8 A3            [24]  658 	inc	dptr
   0AF9 F0            [24]  659 	movx	@dptr,a
                            660 ;	radio/freq_hopping.c:66: for (i = 0; i < n - 1; i++) {
   0AFA 90 01 20      [24]  661 	mov	dptr,#_shuffle_array_1_121
   0AFD E0            [24]  662 	movx	a,@dptr
   0AFE FE            [12]  663 	mov	r6,a
   0AFF A3            [24]  664 	inc	dptr
   0B00 E0            [24]  665 	movx	a,@dptr
   0B01 FF            [12]  666 	mov	r7,a
   0B02 90 01 1F      [24]  667 	mov	dptr,#_shuffle_PARM_2
   0B05 E0            [24]  668 	movx	a,@dptr
   0B06 FD            [12]  669 	mov	r5,a
   0B07 7C 00         [12]  670 	mov	r4,#0x00
   0B09                     671 00103$:
   0B09 8D 02         [24]  672 	mov	ar2,r5
   0B0B 7B 00         [12]  673 	mov	r3,#0x00
   0B0D 1A            [12]  674 	dec	r2
   0B0E BA FF 01      [24]  675 	cjne	r2,#0xFF,00114$
   0B11 1B            [12]  676 	dec	r3
   0B12                     677 00114$:
   0B12 8C 00         [24]  678 	mov	ar0,r4
   0B14 79 00         [12]  679 	mov	r1,#0x00
   0B16 C3            [12]  680 	clr	c
   0B17 E8            [12]  681 	mov	a,r0
   0B18 9A            [12]  682 	subb	a,r2
   0B19 E9            [12]  683 	mov	a,r1
   0B1A 64 80         [12]  684 	xrl	a,#0x80
   0B1C 8B F0         [24]  685 	mov	b,r3
   0B1E 63 F0 80      [24]  686 	xrl	b,#0x80
   0B21 95 F0         [12]  687 	subb	a,b
   0B23 50 46         [24]  688 	jnc	00105$
                            689 ;	radio/freq_hopping.c:67: uint8_t j = ((uint8_t)rand()) % n;
   0B25 C0 07         [24]  690 	push	ar7
   0B27 C0 06         [24]  691 	push	ar6
   0B29 C0 05         [24]  692 	push	ar5
   0B2B C0 04         [24]  693 	push	ar4
   0B2D 12 5A DC      [24]  694 	lcall	_rand
   0B30 AA 82         [24]  695 	mov	r2,dpl
   0B32 D0 04         [24]  696 	pop	ar4
   0B34 D0 05         [24]  697 	pop	ar5
   0B36 D0 06         [24]  698 	pop	ar6
   0B38 D0 07         [24]  699 	pop	ar7
   0B3A 8D F0         [24]  700 	mov	b,r5
   0B3C EA            [12]  701 	mov	a,r2
   0B3D 84            [48]  702 	div	ab
                            703 ;	radio/freq_hopping.c:68: uint8_t t = array[j];
   0B3E E5 F0         [12]  704 	mov	a,b
   0B40 2E            [12]  705 	add	a,r6
   0B41 FA            [12]  706 	mov	r2,a
   0B42 E4            [12]  707 	clr	a
   0B43 3F            [12]  708 	addc	a,r7
   0B44 FB            [12]  709 	mov	r3,a
   0B45 8A 82         [24]  710 	mov	dpl,r2
   0B47 8B 83         [24]  711 	mov	dph,r3
   0B49 E0            [24]  712 	movx	a,@dptr
   0B4A F5 0E         [12]  713 	mov	_shuffle_sloc0_1_0,a
                            714 ;	radio/freq_hopping.c:69: array[j] = array[i];
   0B4C C0 05         [24]  715 	push	ar5
   0B4E EC            [12]  716 	mov	a,r4
   0B4F 2E            [12]  717 	add	a,r6
   0B50 F8            [12]  718 	mov	r0,a
   0B51 E4            [12]  719 	clr	a
   0B52 3F            [12]  720 	addc	a,r7
   0B53 FD            [12]  721 	mov	r5,a
   0B54 88 82         [24]  722 	mov	dpl,r0
   0B56 8D 83         [24]  723 	mov	dph,r5
   0B58 E0            [24]  724 	movx	a,@dptr
   0B59 F9            [12]  725 	mov	r1,a
   0B5A 8A 82         [24]  726 	mov	dpl,r2
   0B5C 8B 83         [24]  727 	mov	dph,r3
   0B5E F0            [24]  728 	movx	@dptr,a
                            729 ;	radio/freq_hopping.c:70: array[i] = t;
   0B5F 88 82         [24]  730 	mov	dpl,r0
   0B61 8D 83         [24]  731 	mov	dph,r5
   0B63 E5 0E         [12]  732 	mov	a,_shuffle_sloc0_1_0
   0B65 F0            [24]  733 	movx	@dptr,a
                            734 ;	radio/freq_hopping.c:66: for (i = 0; i < n - 1; i++) {
   0B66 0C            [12]  735 	inc	r4
   0B67 D0 05         [24]  736 	pop	ar5
   0B69 80 9E         [24]  737 	sjmp	00103$
   0B6B                     738 00105$:
   0B6B 22            [24]  739 	ret
                            740 ;------------------------------------------------------------
                            741 ;Allocation info for local variables in function 'fhop_init'
                            742 ;------------------------------------------------------------
                            743 ;sloc0                     Allocated with name '_fhop_init_sloc0_1_0'
                            744 ;netid                     Allocated with name '_fhop_init_netid_1_124'
                            745 ;i                         Allocated with name '_fhop_init_i_1_125'
                            746 ;__00020001                Allocated with name '_fhop_init___00020001_3_128'
                            747 ;__00020002                Allocated with name '_fhop_init___00020002_3_128'
                            748 ;array                     Allocated with name '_fhop_init_array_3_128'
                            749 ;n                         Allocated with name '_fhop_init_n_3_128'
                            750 ;i                         Allocated with name '_fhop_init_i_4_129'
                            751 ;j                         Allocated with name '_fhop_init_j_5_130'
                            752 ;t                         Allocated with name '_fhop_init_t_5_130'
                            753 ;------------------------------------------------------------
                            754 ;	radio/freq_hopping.c:76: fhop_init(uint16_t netid)
                            755 ;	-----------------------------------------
                            756 ;	 function fhop_init
                            757 ;	-----------------------------------------
   0B6C                     758 _fhop_init:
   0B6C AF 83         [24]  759 	mov	r7,dph
   0B6E E5 82         [12]  760 	mov	a,dpl
   0B70 90 01 22      [24]  761 	mov	dptr,#_fhop_init_netid_1_124
   0B73 F0            [24]  762 	movx	@dptr,a
   0B74 EF            [12]  763 	mov	a,r7
   0B75 A3            [24]  764 	inc	dptr
   0B76 F0            [24]  765 	movx	@dptr,a
                            766 ;	radio/freq_hopping.c:81: for (i = 0; i < num_fh_channels; i++) {
   0B77 7F 00         [12]  767 	mov	r7,#0x00
   0B79                     768 00105$:
   0B79 78 18         [12]  769 	mov	r0,#_num_fh_channels
   0B7B C3            [12]  770 	clr	c
   0B7C E2            [24]  771 	movx	a,@r0
   0B7D F5 F0         [12]  772 	mov	b,a
   0B7F EF            [12]  773 	mov	a,r7
   0B80 95 F0         [12]  774 	subb	a,b
   0B82 50 0F         [24]  775 	jnc	00101$
                            776 ;	radio/freq_hopping.c:82: channel_map[i] = i;
   0B84 EF            [12]  777 	mov	a,r7
   0B85 24 ED         [12]  778 	add	a,#_channel_map
   0B87 F5 82         [12]  779 	mov	dpl,a
   0B89 E4            [12]  780 	clr	a
   0B8A 34 00         [12]  781 	addc	a,#(_channel_map >> 8)
   0B8C F5 83         [12]  782 	mov	dph,a
   0B8E EF            [12]  783 	mov	a,r7
   0B8F F0            [24]  784 	movx	@dptr,a
                            785 ;	radio/freq_hopping.c:81: for (i = 0; i < num_fh_channels; i++) {
   0B90 0F            [12]  786 	inc	r7
   0B91 80 E6         [24]  787 	sjmp	00105$
   0B93                     788 00101$:
                            789 ;	radio/freq_hopping.c:84: srand(netid);
   0B93 90 01 22      [24]  790 	mov	dptr,#_fhop_init_netid_1_124
   0B96 E0            [24]  791 	movx	a,@dptr
   0B97 FE            [12]  792 	mov	r6,a
   0B98 A3            [24]  793 	inc	dptr
   0B99 E0            [24]  794 	movx	a,@dptr
   0B9A FF            [12]  795 	mov	r7,a
   0B9B 8E 82         [24]  796 	mov	dpl,r6
   0B9D 8F 83         [24]  797 	mov	dph,r7
   0B9F 12 5B 36      [24]  798 	lcall	_srand
                            799 ;	radio/freq_hopping.c:85: shuffle(channel_map, num_fh_channels);
   0BA2 78 18         [12]  800 	mov	r0,#_num_fh_channels
   0BA4 E2            [24]  801 	movx	a,@r0
   0BA5 FF            [12]  802 	mov	r7,a
                            803 ;	radio/freq_hopping.c:66: for (i = 0; i < n - 1; i++) {
   0BA6 7E 00         [12]  804 	mov	r6,#0x00
   0BA8                     805 00108$:
   0BA8 8F 04         [24]  806 	mov	ar4,r7
   0BAA 7D 00         [12]  807 	mov	r5,#0x00
   0BAC 1C            [12]  808 	dec	r4
   0BAD BC FF 01      [24]  809 	cjne	r4,#0xFF,00127$
   0BB0 1D            [12]  810 	dec	r5
   0BB1                     811 00127$:
   0BB1 8E 02         [24]  812 	mov	ar2,r6
   0BB3 7B 00         [12]  813 	mov	r3,#0x00
   0BB5 C3            [12]  814 	clr	c
   0BB6 EA            [12]  815 	mov	a,r2
   0BB7 9C            [12]  816 	subb	a,r4
   0BB8 EB            [12]  817 	mov	a,r3
   0BB9 64 80         [12]  818 	xrl	a,#0x80
   0BBB 8D F0         [24]  819 	mov	b,r5
   0BBD 63 F0 80      [24]  820 	xrl	b,#0x80
   0BC0 95 F0         [12]  821 	subb	a,b
   0BC2 50 42         [24]  822 	jnc	00110$
                            823 ;	radio/freq_hopping.c:67: uint8_t j = ((uint8_t)rand()) % n;
   0BC4 C0 07         [24]  824 	push	ar7
   0BC6 C0 06         [24]  825 	push	ar6
   0BC8 12 5A DC      [24]  826 	lcall	_rand
   0BCB AC 82         [24]  827 	mov	r4,dpl
   0BCD D0 06         [24]  828 	pop	ar6
   0BCF D0 07         [24]  829 	pop	ar7
   0BD1 8F F0         [24]  830 	mov	b,r7
   0BD3 EC            [12]  831 	mov	a,r4
   0BD4 84            [48]  832 	div	ab
                            833 ;	radio/freq_hopping.c:68: uint8_t t = array[j];
   0BD5 E5 F0         [12]  834 	mov	a,b
   0BD7 24 ED         [12]  835 	add	a,#_channel_map
   0BD9 FC            [12]  836 	mov	r4,a
   0BDA E4            [12]  837 	clr	a
   0BDB 34 00         [12]  838 	addc	a,#(_channel_map >> 8)
   0BDD FD            [12]  839 	mov	r5,a
   0BDE 8C 82         [24]  840 	mov	dpl,r4
   0BE0 8D 83         [24]  841 	mov	dph,r5
   0BE2 E0            [24]  842 	movx	a,@dptr
   0BE3 F5 0F         [12]  843 	mov	_fhop_init_sloc0_1_0,a
                            844 ;	radio/freq_hopping.c:69: array[j] = array[i];
   0BE5 C0 07         [24]  845 	push	ar7
   0BE7 EE            [12]  846 	mov	a,r6
   0BE8 24 ED         [12]  847 	add	a,#_channel_map
   0BEA FA            [12]  848 	mov	r2,a
   0BEB E4            [12]  849 	clr	a
   0BEC 34 00         [12]  850 	addc	a,#(_channel_map >> 8)
   0BEE FF            [12]  851 	mov	r7,a
   0BEF 8A 82         [24]  852 	mov	dpl,r2
   0BF1 8F 83         [24]  853 	mov	dph,r7
   0BF3 E0            [24]  854 	movx	a,@dptr
   0BF4 FB            [12]  855 	mov	r3,a
   0BF5 8C 82         [24]  856 	mov	dpl,r4
   0BF7 8D 83         [24]  857 	mov	dph,r5
   0BF9 F0            [24]  858 	movx	@dptr,a
                            859 ;	radio/freq_hopping.c:70: array[i] = t;
   0BFA 8A 82         [24]  860 	mov	dpl,r2
   0BFC 8F 83         [24]  861 	mov	dph,r7
   0BFE E5 0F         [12]  862 	mov	a,_fhop_init_sloc0_1_0
   0C00 F0            [24]  863 	movx	@dptr,a
                            864 ;	radio/freq_hopping.c:66: for (i = 0; i < n - 1; i++) {
   0C01 0E            [12]  865 	inc	r6
   0C02 D0 07         [24]  866 	pop	ar7
                            867 ;	radio/freq_hopping.c:85: shuffle(channel_map, num_fh_channels);
   0C04 80 A2         [24]  868 	sjmp	00108$
   0C06                     869 00110$:
   0C06 22            [24]  870 	ret
                            871 ;------------------------------------------------------------
                            872 ;Allocation info for local variables in function 'fhop_transmit_channel'
                            873 ;------------------------------------------------------------
                            874 ;	radio/freq_hopping.c:90: fhop_transmit_channel(void)
                            875 ;	-----------------------------------------
                            876 ;	 function fhop_transmit_channel
                            877 ;	-----------------------------------------
   0C07                     878 _fhop_transmit_channel:
                            879 ;	radio/freq_hopping.c:92: return channel_map[transmit_channel];
   0C07 78 19         [12]  880 	mov	r0,#_transmit_channel
   0C09 E2            [24]  881 	movx	a,@r0
   0C0A 24 ED         [12]  882 	add	a,#_channel_map
   0C0C F5 82         [12]  883 	mov	dpl,a
   0C0E E4            [12]  884 	clr	a
   0C0F 34 00         [12]  885 	addc	a,#(_channel_map >> 8)
   0C11 F5 83         [12]  886 	mov	dph,a
   0C13 E0            [24]  887 	movx	a,@dptr
   0C14 F5 82         [12]  888 	mov	dpl,a
   0C16 22            [24]  889 	ret
                            890 ;------------------------------------------------------------
                            891 ;Allocation info for local variables in function 'fhop_receive_channel'
                            892 ;------------------------------------------------------------
                            893 ;	radio/freq_hopping.c:97: fhop_receive_channel(void)
                            894 ;	-----------------------------------------
                            895 ;	 function fhop_receive_channel
                            896 ;	-----------------------------------------
   0C17                     897 _fhop_receive_channel:
                            898 ;	radio/freq_hopping.c:99: return channel_map[receive_channel];
   0C17 78 1A         [12]  899 	mov	r0,#_receive_channel
   0C19 E2            [24]  900 	movx	a,@r0
   0C1A 24 ED         [12]  901 	add	a,#_channel_map
   0C1C F5 82         [12]  902 	mov	dpl,a
   0C1E E4            [12]  903 	clr	a
   0C1F 34 00         [12]  904 	addc	a,#(_channel_map >> 8)
   0C21 F5 83         [12]  905 	mov	dph,a
   0C23 E0            [24]  906 	movx	a,@dptr
   0C24 F5 82         [12]  907 	mov	dpl,a
   0C26 22            [24]  908 	ret
                            909 ;------------------------------------------------------------
                            910 ;Allocation info for local variables in function 'fhop_window_change'
                            911 ;------------------------------------------------------------
                            912 ;	radio/freq_hopping.c:104: fhop_window_change(void)
                            913 ;	-----------------------------------------
                            914 ;	 function fhop_window_change
                            915 ;	-----------------------------------------
   0C27                     916 _fhop_window_change:
                            917 ;	radio/freq_hopping.c:106: transmit_channel = (transmit_channel + 1) % num_fh_channels;
   0C27 78 19         [12]  918 	mov	r0,#_transmit_channel
   0C29 E2            [24]  919 	movx	a,@r0
   0C2A FE            [12]  920 	mov	r6,a
   0C2B 7F 00         [12]  921 	mov	r7,#0x00
   0C2D 0E            [12]  922 	inc	r6
   0C2E BE 00 01      [24]  923 	cjne	r6,#0x00,00114$
   0C31 0F            [12]  924 	inc	r7
   0C32                     925 00114$:
   0C32 78 18         [12]  926 	mov	r0,#_num_fh_channels
   0C34 E2            [24]  927 	movx	a,@r0
   0C35 FC            [12]  928 	mov	r4,a
   0C36 7D 00         [12]  929 	mov	r5,#0x00
   0C38 90 05 D3      [24]  930 	mov	dptr,#__modsint_PARM_2
   0C3B EC            [12]  931 	mov	a,r4
   0C3C F0            [24]  932 	movx	@dptr,a
   0C3D ED            [12]  933 	mov	a,r5
   0C3E A3            [24]  934 	inc	dptr
   0C3F F0            [24]  935 	movx	@dptr,a
   0C40 8E 82         [24]  936 	mov	dpl,r6
   0C42 8F 83         [24]  937 	mov	dph,r7
   0C44 C0 05         [24]  938 	push	ar5
   0C46 C0 04         [24]  939 	push	ar4
   0C48 12 5E 7B      [24]  940 	lcall	__modsint
   0C4B AE 82         [24]  941 	mov	r6,dpl
   0C4D AF 83         [24]  942 	mov	r7,dph
   0C4F D0 04         [24]  943 	pop	ar4
   0C51 D0 05         [24]  944 	pop	ar5
   0C53 78 19         [12]  945 	mov	r0,#_transmit_channel
   0C55 EE            [12]  946 	mov	a,r6
   0C56 F2            [24]  947 	movx	@r0,a
                            948 ;	radio/freq_hopping.c:107: if (have_radio_lock) {
   0C57 30 02 07      [24]  949 	jnb	_have_radio_lock,00104$
                            950 ;	radio/freq_hopping.c:110: receive_channel = transmit_channel;
   0C5A 78 19         [12]  951 	mov	r0,#_transmit_channel
   0C5C 79 1A         [12]  952 	mov	r1,#_receive_channel
   0C5E E2            [24]  953 	movx	a,@r0
   0C5F F3            [24]  954 	movx	@r1,a
   0C60 22            [24]  955 	ret
   0C61                     956 00104$:
                            957 ;	radio/freq_hopping.c:111: } else if (transmit_channel == 0) {
   0C61 78 19         [12]  958 	mov	r0,#_transmit_channel
   0C63 E2            [24]  959 	movx	a,@r0
   0C64 70 22         [24]  960 	jnz	00106$
                            961 ;	radio/freq_hopping.c:114: receive_channel = (receive_channel + 1) % num_fh_channels;
   0C66 78 1A         [12]  962 	mov	r0,#_receive_channel
   0C68 E2            [24]  963 	movx	a,@r0
   0C69 FE            [12]  964 	mov	r6,a
   0C6A 7F 00         [12]  965 	mov	r7,#0x00
   0C6C 0E            [12]  966 	inc	r6
   0C6D BE 00 01      [24]  967 	cjne	r6,#0x00,00117$
   0C70 0F            [12]  968 	inc	r7
   0C71                     969 00117$:
   0C71 90 05 D3      [24]  970 	mov	dptr,#__modsint_PARM_2
   0C74 EC            [12]  971 	mov	a,r4
   0C75 F0            [24]  972 	movx	@dptr,a
   0C76 ED            [12]  973 	mov	a,r5
   0C77 A3            [24]  974 	inc	dptr
   0C78 F0            [24]  975 	movx	@dptr,a
   0C79 8E 82         [24]  976 	mov	dpl,r6
   0C7B 8F 83         [24]  977 	mov	dph,r7
   0C7D 12 5E 7B      [24]  978 	lcall	__modsint
   0C80 AE 82         [24]  979 	mov	r6,dpl
   0C82 AF 83         [24]  980 	mov	r7,dph
   0C84 78 1A         [12]  981 	mov	r0,#_receive_channel
   0C86 EE            [12]  982 	mov	a,r6
   0C87 F2            [24]  983 	movx	@r0,a
   0C88                     984 00106$:
   0C88 22            [24]  985 	ret
                            986 ;------------------------------------------------------------
                            987 ;Allocation info for local variables in function 'fhop_set_locked'
                            988 ;------------------------------------------------------------
                            989 ;	radio/freq_hopping.c:121: fhop_set_locked(bool locked)
                            990 ;	-----------------------------------------
                            991 ;	 function fhop_set_locked
                            992 ;	-----------------------------------------
   0C89                     993 _fhop_set_locked:
                            994 ;	radio/freq_hopping.c:128: have_radio_lock = locked;
   0C89 A2 03         [12]  995 	mov	c,_fhop_set_locked_PARM_1
                            996 ;	radio/freq_hopping.c:129: if (have_radio_lock) {
   0C8B 92 02         [24]  997 	mov	_have_radio_lock,c
   0C8D 50 07         [24]  998 	jnc	00102$
                            999 ;	radio/freq_hopping.c:133: transmit_channel = receive_channel;
   0C8F 78 1A         [12] 1000 	mov	r0,#_receive_channel
   0C91 79 19         [12] 1001 	mov	r1,#_transmit_channel
   0C93 E2            [24] 1002 	movx	a,@r0
   0C94 F3            [24] 1003 	movx	@r1,a
   0C95 22            [24] 1004 	ret
   0C96                    1005 00102$:
                           1006 ;	radio/freq_hopping.c:136: receive_channel = (receive_channel+1) % num_fh_channels;
   0C96 78 1A         [12] 1007 	mov	r0,#_receive_channel
   0C98 E2            [24] 1008 	movx	a,@r0
   0C99 FE            [12] 1009 	mov	r6,a
   0C9A 7F 00         [12] 1010 	mov	r7,#0x00
   0C9C 0E            [12] 1011 	inc	r6
   0C9D BE 00 01      [24] 1012 	cjne	r6,#0x00,00110$
   0CA0 0F            [12] 1013 	inc	r7
   0CA1                    1014 00110$:
   0CA1 78 18         [12] 1015 	mov	r0,#_num_fh_channels
   0CA3 90 05 D3      [24] 1016 	mov	dptr,#__modsint_PARM_2
   0CA6 E2            [24] 1017 	movx	a,@r0
   0CA7 F0            [24] 1018 	movx	@dptr,a
   0CA8 E4            [12] 1019 	clr	a
   0CA9 A3            [24] 1020 	inc	dptr
   0CAA F0            [24] 1021 	movx	@dptr,a
   0CAB 8E 82         [24] 1022 	mov	dpl,r6
   0CAD 8F 83         [24] 1023 	mov	dph,r7
   0CAF 12 5E 7B      [24] 1024 	lcall	__modsint
   0CB2 AE 82         [24] 1025 	mov	r6,dpl
   0CB4 78 1A         [12] 1026 	mov	r0,#_receive_channel
   0CB6 EE            [12] 1027 	mov	a,r6
   0CB7 F2            [24] 1028 	movx	@r0,a
   0CB8 22            [24] 1029 	ret
                           1030 	.area CSEG    (CODE)
                           1031 	.area CONST   (CODE)
                           1032 	.area XINIT   (CODE)
                           1033 	.area CABS    (ABS,CODE)
