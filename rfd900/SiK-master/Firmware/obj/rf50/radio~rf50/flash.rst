                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:05 2013
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
                             16 	.globl _BUTTON_DOWN
                             17 	.globl _BUTTON_UP
                             18 	.globl _BUTTON_ENTER
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
                            267 	.globl _flash_write_scratch_PARM_2
                            268 	.globl _flash_erase_scratch
                            269 	.globl _flash_read_scratch
                            270 	.globl _flash_write_scratch
                            271 ;--------------------------------------------------------
                            272 ; special function registers
                            273 ;--------------------------------------------------------
                            274 	.area RSEG    (ABS,DATA)
   0000                     275 	.org 0x0000
                     0080   276 _P0	=	0x0080
                     0081   277 _SP	=	0x0081
                     0082   278 _DPL	=	0x0082
                     0083   279 _DPH	=	0x0083
                     0084   280 _SPI1CFG	=	0x0084
                     0085   281 _SPI1CKR	=	0x0085
                     0085   282 _TOFFL	=	0x0085
                     0086   283 _SPI1DAT	=	0x0086
                     0086   284 _TOFFH	=	0x0086
                     0087   285 _PCON	=	0x0087
                     0088   286 _TCON	=	0x0088
                     0089   287 _TMOD	=	0x0089
                     008A   288 _TL0	=	0x008a
                     008B   289 _TL1	=	0x008b
                     008C   290 _TH0	=	0x008c
                     008D   291 _TH1	=	0x008d
                     008E   292 _CKCON	=	0x008e
                     008F   293 _PSCTL	=	0x008f
                     0090   294 _P1	=	0x0090
                     0091   295 _TMR3CN	=	0x0091
                     0091   296 _CRC0DAT	=	0x0091
                     0092   297 _TMR3RLL	=	0x0092
                     0092   298 _CRC0CN	=	0x0092
                     0093   299 _TMR3RLH	=	0x0093
                     0093   300 _CRC0IN	=	0x0093
                     0094   301 _TMR3L	=	0x0094
                     0095   302 _CRC0FLIP	=	0x0095
                     0095   303 _TMR3H	=	0x0095
                     0096   304 _DC0CF	=	0x0096
                     0096   305 _CRC0AUTO	=	0x0096
                     0097   306 _DC0CN	=	0x0097
                     0097   307 _CRC0CNT	=	0x0097
                     0098   308 _SCON0	=	0x0098
                     0099   309 _SBUF0	=	0x0099
                     009A   310 _CPT1CN	=	0x009a
                     009B   311 _CPT0CN	=	0x009b
                     009C   312 _CPT1MD	=	0x009c
                     009D   313 _CPT0MD	=	0x009d
                     009E   314 _CPT1MX	=	0x009e
                     009F   315 _CPT0MX	=	0x009f
                     00A0   316 _P2	=	0x00a0
                     00A1   317 _SPI0CFG	=	0x00a1
                     00A2   318 _SPI0CKR	=	0x00a2
                     00A3   319 _SPI0DAT	=	0x00a3
                     00A4   320 _P0MDOUT	=	0x00a4
                     00A4   321 _P0DRV	=	0x00a4
                     00A5   322 _P1MDOUT	=	0x00a5
                     00A5   323 _P1DRV	=	0x00a5
                     00A6   324 _P2MDOUT	=	0x00a6
                     00A6   325 _P2DRV	=	0x00a6
                     00A7   326 _SFRPAGE	=	0x00a7
                     00A8   327 _IE	=	0x00a8
                     00A9   328 _CLKSEL	=	0x00a9
                     00AA   329 _EMI0CN	=	0x00aa
                     00AB   330 _EMI0CF	=	0x00ab
                     00AC   331 _RTC0ADR	=	0x00ac
                     00AD   332 _RTC0DAT	=	0x00ad
                     00AE   333 _RTC0KEY	=	0x00ae
                     00AF   334 _EMI0TC	=	0x00af
                     00AF   335 _ONESHOT	=	0x00af
                     00B0   336 _SPI1CN	=	0x00b0
                     00B1   337 _OSCXCN	=	0x00b1
                     00B2   338 _OSCICN	=	0x00b2
                     00B3   339 _OSCICL	=	0x00b3
                     00B5   340 _PMU0CF	=	0x00b5
                     00B6   341 _FLSCL	=	0x00b6
                     00B7   342 _FLKEY	=	0x00b7
                     00B8   343 _IP	=	0x00b8
                     00B9   344 _IREF0CN	=	0x00b9
                     00BA   345 _ADC0AC	=	0x00ba
                     00BA   346 _ADC0PWR	=	0x00ba
                     00BB   347 _ADC0MX	=	0x00bb
                     00BC   348 _ADC0CF	=	0x00bc
                     00BD   349 _ADC0TK	=	0x00bd
                     00BD   350 _ADC0L	=	0x00bd
                     00BE   351 _ADC0H	=	0x00be
                     00BF   352 _P1MASK	=	0x00bf
                     00C0   353 _SMB0CN	=	0x00c0
                     00C1   354 _SMB0CF	=	0x00c1
                     00C2   355 _SMB0DAT	=	0x00c2
                     00C3   356 _ADC0GTL	=	0x00c3
                     00C4   357 _ADC0GTH	=	0x00c4
                     00C5   358 _ADC0LTL	=	0x00c5
                     00C6   359 _ADC0LTH	=	0x00c6
                     00C7   360 _P0MASK	=	0x00c7
                     00C8   361 _TMR2CN	=	0x00c8
                     00C9   362 _REG0CN	=	0x00c9
                     00CA   363 _TMR2RLL	=	0x00ca
                     00CB   364 _TMR2RLH	=	0x00cb
                     00CC   365 _TMR2L	=	0x00cc
                     00CD   366 _TMR2H	=	0x00cd
                     00CE   367 _PCA0CPM5	=	0x00ce
                     00CF   368 _P1MAT	=	0x00cf
                     00D0   369 _PSW	=	0x00d0
                     00D1   370 _REF0CN	=	0x00d1
                     00D2   371 _PCA0CPL5	=	0x00d2
                     00D3   372 _PCA0CPH5	=	0x00d3
                     00D4   373 _P0SKIP	=	0x00d4
                     00D5   374 _P1SKIP	=	0x00d5
                     00D6   375 _P2SKIP	=	0x00d6
                     00D7   376 _P0MAT	=	0x00d7
                     00D8   377 _PCA0CN	=	0x00d8
                     00D9   378 _PCA0MD	=	0x00d9
                     00DA   379 _PCA0CPM0	=	0x00da
                     00DB   380 _PCA0CPM1	=	0x00db
                     00DC   381 _PCA0CPM2	=	0x00dc
                     00DD   382 _PCA0CPM3	=	0x00dd
                     00DE   383 _PCA0CPM4	=	0x00de
                     00DF   384 _PCA0PWM	=	0x00df
                     00E0   385 _ACC	=	0x00e0
                     00E1   386 _XBR0	=	0x00e1
                     00E2   387 _XBR1	=	0x00e2
                     00E3   388 _XBR2	=	0x00e3
                     00E4   389 _IT01CF	=	0x00e4
                     00E5   390 _FLWR	=	0x00e5
                     00E6   391 _EIE1	=	0x00e6
                     00E7   392 _EIE2	=	0x00e7
                     00E8   393 _ADC0CN	=	0x00e8
                     00E9   394 _PCA0CPL1	=	0x00e9
                     00EA   395 _PCA0CPH1	=	0x00ea
                     00EB   396 _PCA0CPL2	=	0x00eb
                     00EC   397 _PCA0CPH2	=	0x00ec
                     00ED   398 _PCA0CPL3	=	0x00ed
                     00EE   399 _PCA0CPH3	=	0x00ee
                     00EF   400 _RSTSRC	=	0x00ef
                     00F0   401 _B	=	0x00f0
                     00F1   402 _P0MDIN	=	0x00f1
                     00F2   403 _P1MDIN	=	0x00f2
                     00F3   404 _P2MDIN	=	0x00f3
                     00F4   405 _SMB0ADR	=	0x00f4
                     00F5   406 _SMB0ADM	=	0x00f5
                     00F6   407 _EIP1	=	0x00f6
                     00F7   408 _EIP2	=	0x00f7
                     00F8   409 _SPI0CN	=	0x00f8
                     00F9   410 _PCA0L	=	0x00f9
                     00FA   411 _PCA0H	=	0x00fa
                     00FB   412 _PCA0CPL0	=	0x00fb
                     00FC   413 _PCA0CPH0	=	0x00fc
                     00FD   414 _PCA0CPL4	=	0x00fd
                     00FE   415 _PCA0CPH4	=	0x00fe
                     00FF   416 _VDM0CN	=	0x00ff
                     8382   417 _DP	=	0x8382
                     8685   418 _TOFF	=	0x8685
                     9392   419 _TMR3RL	=	0x9392
                     9594   420 _TMR3	=	0x9594
                     BEBD   421 _ADC0	=	0xbebd
                     C4C3   422 _ADC0GT	=	0xc4c3
                     C6C5   423 _ADC0LT	=	0xc6c5
                     CBCA   424 _TMR2RL	=	0xcbca
                     CDCC   425 _TMR2	=	0xcdcc
                     D3D2   426 _PCA0CP5	=	0xd3d2
                     EAE9   427 _PCA0CP1	=	0xeae9
                     ECEB   428 _PCA0CP2	=	0xeceb
                     EEED   429 _PCA0CP3	=	0xeeed
                     FAF9   430 _PCA0	=	0xfaf9
                     FCFB   431 _PCA0CP0	=	0xfcfb
                     FEFD   432 _PCA0CP4	=	0xfefd
                            433 ;--------------------------------------------------------
                            434 ; special function bits
                            435 ;--------------------------------------------------------
                            436 	.area RSEG    (ABS,DATA)
   0000                     437 	.org 0x0000
                     008F   438 _TF1	=	0x008f
                     008E   439 _TR1	=	0x008e
                     008D   440 _TF0	=	0x008d
                     008C   441 _TR0	=	0x008c
                     008B   442 _IE1	=	0x008b
                     008A   443 _IT1	=	0x008a
                     0089   444 _IE0	=	0x0089
                     0088   445 _IT0	=	0x0088
                     0096   446 _CRC0SEL	=	0x0096
                     0095   447 _CRC0INIT	=	0x0095
                     0094   448 _CRC0VAL	=	0x0094
                     009F   449 _S0MODE	=	0x009f
                     009D   450 _MCE0	=	0x009d
                     009C   451 _REN0	=	0x009c
                     009B   452 _TB80	=	0x009b
                     009A   453 _RB80	=	0x009a
                     0099   454 _TI0	=	0x0099
                     0098   455 _RI0	=	0x0098
                     00AF   456 _EA	=	0x00af
                     00AE   457 _ESPI0	=	0x00ae
                     00AD   458 _ET2	=	0x00ad
                     00AC   459 _ES0	=	0x00ac
                     00AB   460 _ET1	=	0x00ab
                     00AA   461 _EX1	=	0x00aa
                     00A9   462 _ET0	=	0x00a9
                     00A8   463 _EX0	=	0x00a8
                     00B7   464 _SPIF1	=	0x00b7
                     00B6   465 _WCOL1	=	0x00b6
                     00B5   466 _MODF1	=	0x00b5
                     00B4   467 _RXOVRN1	=	0x00b4
                     00B3   468 _NSS1MD1	=	0x00b3
                     00B2   469 _NSS1MD0	=	0x00b2
                     00B1   470 _TXBMT1	=	0x00b1
                     00B0   471 _SPI1EN	=	0x00b0
                     00BE   472 _PSPI0	=	0x00be
                     00BD   473 _PT2	=	0x00bd
                     00BC   474 _PS0	=	0x00bc
                     00BB   475 _PT1	=	0x00bb
                     00BA   476 _PX1	=	0x00ba
                     00B9   477 _PT0	=	0x00b9
                     00B8   478 _PX0	=	0x00b8
                     00C7   479 _MASTER	=	0x00c7
                     00C6   480 _TXMODE	=	0x00c6
                     00C5   481 _STA	=	0x00c5
                     00C4   482 _STO	=	0x00c4
                     00C3   483 _ACKRQ	=	0x00c3
                     00C2   484 _ARBLOST	=	0x00c2
                     00C1   485 _ACK	=	0x00c1
                     00C0   486 _SI	=	0x00c0
                     00CF   487 _TF2H	=	0x00cf
                     00CE   488 _TF2L	=	0x00ce
                     00CD   489 _TF2LEN	=	0x00cd
                     00CC   490 _TF2CEN	=	0x00cc
                     00CB   491 _T2SPLIT	=	0x00cb
                     00CA   492 _TR2	=	0x00ca
                     00C9   493 _T2RCLK	=	0x00c9
                     00C8   494 _T2XCLK	=	0x00c8
                     00D7   495 _CY	=	0x00d7
                     00D6   496 _AC	=	0x00d6
                     00D5   497 _F0	=	0x00d5
                     00D4   498 _RS1	=	0x00d4
                     00D3   499 _RS0	=	0x00d3
                     00D2   500 _OV	=	0x00d2
                     00D1   501 _F1	=	0x00d1
                     00D0   502 _P	=	0x00d0
                     00DF   503 _CF	=	0x00df
                     00DE   504 _CR	=	0x00de
                     00DD   505 _CCF5	=	0x00dd
                     00DC   506 _CCF4	=	0x00dc
                     00DB   507 _CCF3	=	0x00db
                     00DA   508 _CCF2	=	0x00da
                     00D9   509 _CCF1	=	0x00d9
                     00D8   510 _CCF0	=	0x00d8
                     00EF   511 _AD0EN	=	0x00ef
                     00EE   512 _BURSTEN	=	0x00ee
                     00ED   513 _AD0INT	=	0x00ed
                     00EC   514 _AD0BUSY	=	0x00ec
                     00EB   515 _AD0WINT	=	0x00eb
                     00EA   516 _AD0CM2	=	0x00ea
                     00E9   517 _AD0CM1	=	0x00e9
                     00E8   518 _AD0CM0	=	0x00e8
                     00FF   519 _SPIF0	=	0x00ff
                     00FE   520 _WCOL0	=	0x00fe
                     00FD   521 _MODF0	=	0x00fd
                     00FC   522 _RXOVRN0	=	0x00fc
                     00FB   523 _NSS0MD1	=	0x00fb
                     00FA   524 _NSS0MD0	=	0x00fa
                     00F9   525 _TXBMT0	=	0x00f9
                     00F8   526 _SPI0EN	=	0x00f8
                     00A0   527 _LED_RED	=	0x00a0
                     00A5   528 _LED_GREEN	=	0x00a5
                     0086   529 _BUTTON_ENTER	=	0x0086
                     0095   530 _BUTTON_UP	=	0x0095
                     0096   531 _BUTTON_DOWN	=	0x0096
                     0087   532 _IRQ	=	0x0087
                     0094   533 _NSS1	=	0x0094
                     00A6   534 _SDN	=	0x00a6
                            535 ;--------------------------------------------------------
                            536 ; overlayable register banks
                            537 ;--------------------------------------------------------
                            538 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     539 	.ds 8
                            540 ;--------------------------------------------------------
                            541 ; internal ram data
                            542 ;--------------------------------------------------------
                            543 	.area DSEG    (DATA)
                            544 ;--------------------------------------------------------
                            545 ; overlayable items in internal ram 
                            546 ;--------------------------------------------------------
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
   0017                     564 _flash_write_scratch_PARM_2:
   0017                     565 	.ds 1
                            566 ;--------------------------------------------------------
                            567 ; external ram data
                            568 ;--------------------------------------------------------
                            569 	.area XSEG    (XDATA)
                            570 ;--------------------------------------------------------
                            571 ; absolute external ram data
                            572 ;--------------------------------------------------------
                            573 	.area XABS    (ABS,XDATA)
                            574 ;--------------------------------------------------------
                            575 ; external initialized ram data
                            576 ;--------------------------------------------------------
                            577 	.area XISEG   (XDATA)
                            578 	.area HOME    (CODE)
                            579 	.area GSINIT0 (CODE)
                            580 	.area GSINIT1 (CODE)
                            581 	.area GSINIT2 (CODE)
                            582 	.area GSINIT3 (CODE)
                            583 	.area GSINIT4 (CODE)
                            584 	.area GSINIT5 (CODE)
                            585 	.area GSINIT  (CODE)
                            586 	.area GSFINAL (CODE)
                            587 	.area CSEG    (CODE)
                            588 ;--------------------------------------------------------
                            589 ; global & static initialisations
                            590 ;--------------------------------------------------------
                            591 	.area HOME    (CODE)
                            592 	.area GSINIT  (CODE)
                            593 	.area GSFINAL (CODE)
                            594 	.area GSINIT  (CODE)
                            595 ;--------------------------------------------------------
                            596 ; Home
                            597 ;--------------------------------------------------------
                            598 	.area HOME    (CODE)
                            599 	.area HOME    (CODE)
                            600 ;--------------------------------------------------------
                            601 ; code
                            602 ;--------------------------------------------------------
                            603 	.area CSEG    (CODE)
                            604 ;------------------------------------------------------------
                            605 ;Allocation info for local variables in function 'flash_load_keys'
                            606 ;------------------------------------------------------------
                            607 ;	radio/flash.c:53: flash_load_keys(void)
                            608 ;	-----------------------------------------
                            609 ;	 function flash_load_keys
                            610 ;	-----------------------------------------
   0A85                     611 _flash_load_keys:
                     0007   612 	ar7 = 0x07
                     0006   613 	ar6 = 0x06
                     0005   614 	ar5 = 0x05
                     0004   615 	ar4 = 0x04
                     0003   616 	ar3 = 0x03
                     0002   617 	ar2 = 0x02
                     0001   618 	ar1 = 0x01
                     0000   619 	ar0 = 0x00
                            620 ;	radio/flash.c:55: FLKEY = 0xa5;
   0A85 75 B7 A5      [24]  621 	mov	_FLKEY,#0xA5
                            622 ;	radio/flash.c:56: FLKEY = 0xf1;
   0A88 75 B7 F1      [24]  623 	mov	_FLKEY,#0xF1
   0A8B 22            [24]  624 	ret
                            625 ;------------------------------------------------------------
                            626 ;Allocation info for local variables in function 'flash_erase_scratch'
                            627 ;------------------------------------------------------------
                            628 ;	radio/flash.c:60: flash_erase_scratch(void)
                            629 ;	-----------------------------------------
                            630 ;	 function flash_erase_scratch
                            631 ;	-----------------------------------------
   0A8C                     632 _flash_erase_scratch:
   0A8C D3            [12]  633 	setb	c
   0A8D 10 AF 01      [24]  634 	jbc	ea,00103$
   0A90 C3            [12]  635 	clr	c
   0A91                     636 00103$:
   0A91 C0 D0         [24]  637 	push	psw
                            638 ;	radio/flash.c:63: flash_load_keys();		// unlock flash for one operation
   0A93 12 0A 85      [24]  639 	lcall	_flash_load_keys
                            640 ;	radio/flash.c:64: PSCTL = 0x07;			// enable flash erase of the scratch page
   0A96 75 8F 07      [24]  641 	mov	_PSCTL,#0x07
                            642 ;	radio/flash.c:65: *(uint8_t __xdata *)0 = 0xff;	// trigger the erase
   0A99 90 00 00      [24]  643 	mov	dptr,#0x0000
   0A9C 74 FF         [12]  644 	mov	a,#0xFF
   0A9E F0            [24]  645 	movx	@dptr,a
                            646 ;	radio/flash.c:66: PSCTL = 0x00;			// disable flash write & scratch access
   0A9F 75 8F 00      [24]  647 	mov	_PSCTL,#0x00
   0AA2 D0 D0         [24]  648 	pop	psw
   0AA4 92 AF         [24]  649 	mov	ea,c
   0AA6 22            [24]  650 	ret
                            651 ;------------------------------------------------------------
                            652 ;Allocation info for local variables in function 'flash_read_scratch'
                            653 ;------------------------------------------------------------
                            654 ;d                         Allocated with name '_flash_read_scratch_d_1_121'
                            655 ;------------------------------------------------------------
                            656 ;	radio/flash.c:70: flash_read_scratch(__pdata uint16_t address)
                            657 ;	-----------------------------------------
                            658 ;	 function flash_read_scratch
                            659 ;	-----------------------------------------
   0AA7                     660 _flash_read_scratch:
   0AA7 D3            [12]  661 	setb	c
   0AA8 10 AF 01      [24]  662 	jbc	ea,00103$
   0AAB C3            [12]  663 	clr	c
   0AAC                     664 00103$:
   0AAC C0 D0         [24]  665 	push	psw
   0AAE AE 82         [24]  666 	mov	r6,dpl
   0AB0 AF 83         [24]  667 	mov	r7,dph
                            668 ;	radio/flash.c:74: PSCTL = 0x04;
   0AB2 75 8F 04      [24]  669 	mov	_PSCTL,#0x04
                            670 ;	radio/flash.c:75: d = *(uint8_t __code *)address;
   0AB5 8E 82         [24]  671 	mov	dpl,r6
   0AB7 8F 83         [24]  672 	mov	dph,r7
   0AB9 E4            [12]  673 	clr	a
   0ABA 93            [24]  674 	movc	a,@a+dptr
   0ABB FF            [12]  675 	mov	r7,a
                            676 ;	radio/flash.c:76: PSCTL = 0x00;
   0ABC 75 8F 00      [24]  677 	mov	_PSCTL,#0x00
                            678 ;	radio/flash.c:77: return d;
   0ABF 8F 82         [24]  679 	mov	dpl,r7
   0AC1 D0 D0         [24]  680 	pop	psw
   0AC3 92 AF         [24]  681 	mov	ea,c
   0AC5 22            [24]  682 	ret
                            683 ;------------------------------------------------------------
                            684 ;Allocation info for local variables in function 'flash_write_scratch'
                            685 ;------------------------------------------------------------
                            686 ;	radio/flash.c:81: flash_write_scratch(__pdata uint16_t address, __pdata uint8_t c)
                            687 ;	-----------------------------------------
                            688 ;	 function flash_write_scratch
                            689 ;	-----------------------------------------
   0AC6                     690 _flash_write_scratch:
   0AC6 D3            [12]  691 	setb	c
   0AC7 10 AF 01      [24]  692 	jbc	ea,00103$
   0ACA C3            [12]  693 	clr	c
   0ACB                     694 00103$:
   0ACB C0 D0         [24]  695 	push	psw
   0ACD AE 82         [24]  696 	mov	r6,dpl
   0ACF AF 83         [24]  697 	mov	r7,dph
                            698 ;	radio/flash.c:83: flash_load_keys();
   0AD1 C0 07         [24]  699 	push	ar7
   0AD3 C0 06         [24]  700 	push	ar6
   0AD5 12 0A 85      [24]  701 	lcall	_flash_load_keys
   0AD8 D0 06         [24]  702 	pop	ar6
   0ADA D0 07         [24]  703 	pop	ar7
                            704 ;	radio/flash.c:84: PSCTL = 0x05;
   0ADC 75 8F 05      [24]  705 	mov	_PSCTL,#0x05
                            706 ;	radio/flash.c:85: *(uint8_t __xdata *)address = c;
   0ADF 8E 82         [24]  707 	mov	dpl,r6
   0AE1 8F 83         [24]  708 	mov	dph,r7
   0AE3 78 17         [12]  709 	mov	r0,#_flash_write_scratch_PARM_2
   0AE5 E2            [24]  710 	movx	a,@r0
   0AE6 F0            [24]  711 	movx	@dptr,a
                            712 ;	radio/flash.c:86: PSCTL = 0x00;
   0AE7 75 8F 00      [24]  713 	mov	_PSCTL,#0x00
   0AEA D0 D0         [24]  714 	pop	psw
   0AEC 92 AF         [24]  715 	mov	ea,c
   0AEE 22            [24]  716 	ret
                            717 	.area CSEG    (CODE)
                            718 	.area CONST   (CODE)
                            719 	.area XINIT   (CODE)
                            720 	.area CABS    (ABS,CODE)
   F7FE                     721 	.org 0xF7FE
   F7FE                     722 _app_signature:
   F7FE 3D                  723 	.db #0x3D	; 61
   F7FF C2                  724 	.db #0xC2	; 194
