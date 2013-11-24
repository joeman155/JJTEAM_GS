                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:02 2013
                              5 ;--------------------------------------------------------
                              6 	.module flash
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _app_signature
                             13 	.globl _SDN
                             14 	.globl _NSS1
                             15 	.globl _IRQ
                             16 	.globl _PIN_ENABLE
                             17 	.globl _PIN_CONFIG
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
                            266 	.globl _flash_write_scratch_PARM_2
                            267 	.globl _flash_erase_scratch
                            268 	.globl _flash_read_scratch
                            269 	.globl _flash_write_scratch
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
                     0096   526 _LED_RED	=	0x0096
                     0095   527 _LED_GREEN	=	0x0095
                     0082   528 _PIN_CONFIG	=	0x0082
                     0083   529 _PIN_ENABLE	=	0x0083
                     0087   530 _IRQ	=	0x0087
                     0094   531 _NSS1	=	0x0094
                     00A6   532 _SDN	=	0x00a6
                            533 ;--------------------------------------------------------
                            534 ; overlayable register banks
                            535 ;--------------------------------------------------------
                            536 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     537 	.ds 8
                            538 ;--------------------------------------------------------
                            539 ; internal ram data
                            540 ;--------------------------------------------------------
                            541 	.area DSEG    (DATA)
                            542 ;--------------------------------------------------------
                            543 ; overlayable items in internal ram 
                            544 ;--------------------------------------------------------
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
   0017                     562 _flash_write_scratch_PARM_2:
   0017                     563 	.ds 1
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
                            603 ;Allocation info for local variables in function 'flash_load_keys'
                            604 ;------------------------------------------------------------
                            605 ;	radio/flash.c:53: flash_load_keys(void)
                            606 ;	-----------------------------------------
                            607 ;	 function flash_load_keys
                            608 ;	-----------------------------------------
   0A85                     609 _flash_load_keys:
                     0007   610 	ar7 = 0x07
                     0006   611 	ar6 = 0x06
                     0005   612 	ar5 = 0x05
                     0004   613 	ar4 = 0x04
                     0003   614 	ar3 = 0x03
                     0002   615 	ar2 = 0x02
                     0001   616 	ar1 = 0x01
                     0000   617 	ar0 = 0x00
                            618 ;	radio/flash.c:55: FLKEY = 0xa5;
   0A85 75 B7 A5      [24]  619 	mov	_FLKEY,#0xA5
                            620 ;	radio/flash.c:56: FLKEY = 0xf1;
   0A88 75 B7 F1      [24]  621 	mov	_FLKEY,#0xF1
   0A8B 22            [24]  622 	ret
                            623 ;------------------------------------------------------------
                            624 ;Allocation info for local variables in function 'flash_erase_scratch'
                            625 ;------------------------------------------------------------
                            626 ;	radio/flash.c:60: flash_erase_scratch(void)
                            627 ;	-----------------------------------------
                            628 ;	 function flash_erase_scratch
                            629 ;	-----------------------------------------
   0A8C                     630 _flash_erase_scratch:
   0A8C D3            [12]  631 	setb	c
   0A8D 10 AF 01      [24]  632 	jbc	ea,00103$
   0A90 C3            [12]  633 	clr	c
   0A91                     634 00103$:
   0A91 C0 D0         [24]  635 	push	psw
                            636 ;	radio/flash.c:63: flash_load_keys();		// unlock flash for one operation
   0A93 12 0A 85      [24]  637 	lcall	_flash_load_keys
                            638 ;	radio/flash.c:64: PSCTL = 0x07;			// enable flash erase of the scratch page
   0A96 75 8F 07      [24]  639 	mov	_PSCTL,#0x07
                            640 ;	radio/flash.c:65: *(uint8_t __xdata *)0 = 0xff;	// trigger the erase
   0A99 90 00 00      [24]  641 	mov	dptr,#0x0000
   0A9C 74 FF         [12]  642 	mov	a,#0xFF
   0A9E F0            [24]  643 	movx	@dptr,a
                            644 ;	radio/flash.c:66: PSCTL = 0x00;			// disable flash write & scratch access
   0A9F 75 8F 00      [24]  645 	mov	_PSCTL,#0x00
   0AA2 D0 D0         [24]  646 	pop	psw
   0AA4 92 AF         [24]  647 	mov	ea,c
   0AA6 22            [24]  648 	ret
                            649 ;------------------------------------------------------------
                            650 ;Allocation info for local variables in function 'flash_read_scratch'
                            651 ;------------------------------------------------------------
                            652 ;d                         Allocated with name '_flash_read_scratch_d_1_121'
                            653 ;------------------------------------------------------------
                            654 ;	radio/flash.c:70: flash_read_scratch(__pdata uint16_t address)
                            655 ;	-----------------------------------------
                            656 ;	 function flash_read_scratch
                            657 ;	-----------------------------------------
   0AA7                     658 _flash_read_scratch:
   0AA7 D3            [12]  659 	setb	c
   0AA8 10 AF 01      [24]  660 	jbc	ea,00103$
   0AAB C3            [12]  661 	clr	c
   0AAC                     662 00103$:
   0AAC C0 D0         [24]  663 	push	psw
   0AAE AE 82         [24]  664 	mov	r6,dpl
   0AB0 AF 83         [24]  665 	mov	r7,dph
                            666 ;	radio/flash.c:74: PSCTL = 0x04;
   0AB2 75 8F 04      [24]  667 	mov	_PSCTL,#0x04
                            668 ;	radio/flash.c:75: d = *(uint8_t __code *)address;
   0AB5 8E 82         [24]  669 	mov	dpl,r6
   0AB7 8F 83         [24]  670 	mov	dph,r7
   0AB9 E4            [12]  671 	clr	a
   0ABA 93            [24]  672 	movc	a,@a+dptr
   0ABB FF            [12]  673 	mov	r7,a
                            674 ;	radio/flash.c:76: PSCTL = 0x00;
   0ABC 75 8F 00      [24]  675 	mov	_PSCTL,#0x00
                            676 ;	radio/flash.c:77: return d;
   0ABF 8F 82         [24]  677 	mov	dpl,r7
   0AC1 D0 D0         [24]  678 	pop	psw
   0AC3 92 AF         [24]  679 	mov	ea,c
   0AC5 22            [24]  680 	ret
                            681 ;------------------------------------------------------------
                            682 ;Allocation info for local variables in function 'flash_write_scratch'
                            683 ;------------------------------------------------------------
                            684 ;	radio/flash.c:81: flash_write_scratch(__pdata uint16_t address, __pdata uint8_t c)
                            685 ;	-----------------------------------------
                            686 ;	 function flash_write_scratch
                            687 ;	-----------------------------------------
   0AC6                     688 _flash_write_scratch:
   0AC6 D3            [12]  689 	setb	c
   0AC7 10 AF 01      [24]  690 	jbc	ea,00103$
   0ACA C3            [12]  691 	clr	c
   0ACB                     692 00103$:
   0ACB C0 D0         [24]  693 	push	psw
   0ACD AE 82         [24]  694 	mov	r6,dpl
   0ACF AF 83         [24]  695 	mov	r7,dph
                            696 ;	radio/flash.c:83: flash_load_keys();
   0AD1 C0 07         [24]  697 	push	ar7
   0AD3 C0 06         [24]  698 	push	ar6
   0AD5 12 0A 85      [24]  699 	lcall	_flash_load_keys
   0AD8 D0 06         [24]  700 	pop	ar6
   0ADA D0 07         [24]  701 	pop	ar7
                            702 ;	radio/flash.c:84: PSCTL = 0x05;
   0ADC 75 8F 05      [24]  703 	mov	_PSCTL,#0x05
                            704 ;	radio/flash.c:85: *(uint8_t __xdata *)address = c;
   0ADF 8E 82         [24]  705 	mov	dpl,r6
   0AE1 8F 83         [24]  706 	mov	dph,r7
   0AE3 78 17         [12]  707 	mov	r0,#_flash_write_scratch_PARM_2
   0AE5 E2            [24]  708 	movx	a,@r0
   0AE6 F0            [24]  709 	movx	@dptr,a
                            710 ;	radio/flash.c:86: PSCTL = 0x00;
   0AE7 75 8F 00      [24]  711 	mov	_PSCTL,#0x00
   0AEA D0 D0         [24]  712 	pop	psw
   0AEC 92 AF         [24]  713 	mov	ea,c
   0AEE 22            [24]  714 	ret
                            715 	.area CSEG    (CODE)
                            716 	.area CONST   (CODE)
                            717 	.area XINIT   (CODE)
                            718 	.area CABS    (ABS,CODE)
   F7FE                     719 	.org 0xF7FE
   F7FE                     720 _app_signature:
   F7FE 3D                  721 	.db #0x3D	; 61
   F7FF C2                  722 	.db #0xC2	; 194
