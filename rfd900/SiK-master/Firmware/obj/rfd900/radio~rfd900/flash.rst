                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:12 2013
                              5 ;--------------------------------------------------------
                              6 	.module flash
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _app_signature
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
                            265 	.globl _flash_write_scratch_PARM_2
                            266 	.globl _flash_erase_scratch
                            267 	.globl _flash_read_scratch
                            268 	.globl _flash_write_scratch
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
                     0087   529 _IRQ	=	0x0087
                     0094   530 _NSS1	=	0x0094
                            531 ;--------------------------------------------------------
                            532 ; overlayable register banks
                            533 ;--------------------------------------------------------
                            534 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     535 	.ds 8
                            536 ;--------------------------------------------------------
                            537 ; internal ram data
                            538 ;--------------------------------------------------------
                            539 	.area DSEG    (DATA)
                            540 ;--------------------------------------------------------
                            541 ; overlayable items in internal ram 
                            542 ;--------------------------------------------------------
                            543 ;--------------------------------------------------------
                            544 ; indirectly addressable internal ram data
                            545 ;--------------------------------------------------------
                            546 	.area ISEG    (DATA)
                            547 ;--------------------------------------------------------
                            548 ; absolute internal ram data
                            549 ;--------------------------------------------------------
                            550 	.area IABS    (ABS,DATA)
                            551 	.area IABS    (ABS,DATA)
                            552 ;--------------------------------------------------------
                            553 ; bit data
                            554 ;--------------------------------------------------------
                            555 	.area BSEG    (BIT)
                            556 ;--------------------------------------------------------
                            557 ; paged external ram data
                            558 ;--------------------------------------------------------
                            559 	.area PSEG    (PAG,XDATA)
   0017                     560 _flash_write_scratch_PARM_2:
   0017                     561 	.ds 1
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
                            601 ;Allocation info for local variables in function 'flash_load_keys'
                            602 ;------------------------------------------------------------
                            603 ;	radio/flash.c:53: flash_load_keys(void)
                            604 ;	-----------------------------------------
                            605 ;	 function flash_load_keys
                            606 ;	-----------------------------------------
   0A85                     607 _flash_load_keys:
                     0007   608 	ar7 = 0x07
                     0006   609 	ar6 = 0x06
                     0005   610 	ar5 = 0x05
                     0004   611 	ar4 = 0x04
                     0003   612 	ar3 = 0x03
                     0002   613 	ar2 = 0x02
                     0001   614 	ar1 = 0x01
                     0000   615 	ar0 = 0x00
                            616 ;	radio/flash.c:55: FLKEY = 0xa5;
   0A85 75 B7 A5      [24]  617 	mov	_FLKEY,#0xA5
                            618 ;	radio/flash.c:56: FLKEY = 0xf1;
   0A88 75 B7 F1      [24]  619 	mov	_FLKEY,#0xF1
   0A8B 22            [24]  620 	ret
                            621 ;------------------------------------------------------------
                            622 ;Allocation info for local variables in function 'flash_erase_scratch'
                            623 ;------------------------------------------------------------
                            624 ;	radio/flash.c:60: flash_erase_scratch(void)
                            625 ;	-----------------------------------------
                            626 ;	 function flash_erase_scratch
                            627 ;	-----------------------------------------
   0A8C                     628 _flash_erase_scratch:
   0A8C D3            [12]  629 	setb	c
   0A8D 10 AF 01      [24]  630 	jbc	ea,00103$
   0A90 C3            [12]  631 	clr	c
   0A91                     632 00103$:
   0A91 C0 D0         [24]  633 	push	psw
                            634 ;	radio/flash.c:63: flash_load_keys();		// unlock flash for one operation
   0A93 12 0A 85      [24]  635 	lcall	_flash_load_keys
                            636 ;	radio/flash.c:64: PSCTL = 0x07;			// enable flash erase of the scratch page
   0A96 75 8F 07      [24]  637 	mov	_PSCTL,#0x07
                            638 ;	radio/flash.c:65: *(uint8_t __xdata *)0 = 0xff;	// trigger the erase
   0A99 90 00 00      [24]  639 	mov	dptr,#0x0000
   0A9C 74 FF         [12]  640 	mov	a,#0xFF
   0A9E F0            [24]  641 	movx	@dptr,a
                            642 ;	radio/flash.c:66: PSCTL = 0x00;			// disable flash write & scratch access
   0A9F 75 8F 00      [24]  643 	mov	_PSCTL,#0x00
   0AA2 D0 D0         [24]  644 	pop	psw
   0AA4 92 AF         [24]  645 	mov	ea,c
   0AA6 22            [24]  646 	ret
                            647 ;------------------------------------------------------------
                            648 ;Allocation info for local variables in function 'flash_read_scratch'
                            649 ;------------------------------------------------------------
                            650 ;d                         Allocated with name '_flash_read_scratch_d_1_121'
                            651 ;------------------------------------------------------------
                            652 ;	radio/flash.c:70: flash_read_scratch(__pdata uint16_t address)
                            653 ;	-----------------------------------------
                            654 ;	 function flash_read_scratch
                            655 ;	-----------------------------------------
   0AA7                     656 _flash_read_scratch:
   0AA7 D3            [12]  657 	setb	c
   0AA8 10 AF 01      [24]  658 	jbc	ea,00103$
   0AAB C3            [12]  659 	clr	c
   0AAC                     660 00103$:
   0AAC C0 D0         [24]  661 	push	psw
   0AAE AE 82         [24]  662 	mov	r6,dpl
   0AB0 AF 83         [24]  663 	mov	r7,dph
                            664 ;	radio/flash.c:74: PSCTL = 0x04;
   0AB2 75 8F 04      [24]  665 	mov	_PSCTL,#0x04
                            666 ;	radio/flash.c:75: d = *(uint8_t __code *)address;
   0AB5 8E 82         [24]  667 	mov	dpl,r6
   0AB7 8F 83         [24]  668 	mov	dph,r7
   0AB9 E4            [12]  669 	clr	a
   0ABA 93            [24]  670 	movc	a,@a+dptr
   0ABB FF            [12]  671 	mov	r7,a
                            672 ;	radio/flash.c:76: PSCTL = 0x00;
   0ABC 75 8F 00      [24]  673 	mov	_PSCTL,#0x00
                            674 ;	radio/flash.c:77: return d;
   0ABF 8F 82         [24]  675 	mov	dpl,r7
   0AC1 D0 D0         [24]  676 	pop	psw
   0AC3 92 AF         [24]  677 	mov	ea,c
   0AC5 22            [24]  678 	ret
                            679 ;------------------------------------------------------------
                            680 ;Allocation info for local variables in function 'flash_write_scratch'
                            681 ;------------------------------------------------------------
                            682 ;	radio/flash.c:81: flash_write_scratch(__pdata uint16_t address, __pdata uint8_t c)
                            683 ;	-----------------------------------------
                            684 ;	 function flash_write_scratch
                            685 ;	-----------------------------------------
   0AC6                     686 _flash_write_scratch:
   0AC6 D3            [12]  687 	setb	c
   0AC7 10 AF 01      [24]  688 	jbc	ea,00103$
   0ACA C3            [12]  689 	clr	c
   0ACB                     690 00103$:
   0ACB C0 D0         [24]  691 	push	psw
   0ACD AE 82         [24]  692 	mov	r6,dpl
   0ACF AF 83         [24]  693 	mov	r7,dph
                            694 ;	radio/flash.c:83: flash_load_keys();
   0AD1 C0 07         [24]  695 	push	ar7
   0AD3 C0 06         [24]  696 	push	ar6
   0AD5 12 0A 85      [24]  697 	lcall	_flash_load_keys
   0AD8 D0 06         [24]  698 	pop	ar6
   0ADA D0 07         [24]  699 	pop	ar7
                            700 ;	radio/flash.c:84: PSCTL = 0x05;
   0ADC 75 8F 05      [24]  701 	mov	_PSCTL,#0x05
                            702 ;	radio/flash.c:85: *(uint8_t __xdata *)address = c;
   0ADF 8E 82         [24]  703 	mov	dpl,r6
   0AE1 8F 83         [24]  704 	mov	dph,r7
   0AE3 78 17         [12]  705 	mov	r0,#_flash_write_scratch_PARM_2
   0AE5 E2            [24]  706 	movx	a,@r0
   0AE6 F0            [24]  707 	movx	@dptr,a
                            708 ;	radio/flash.c:86: PSCTL = 0x00;
   0AE7 75 8F 00      [24]  709 	mov	_PSCTL,#0x00
   0AEA D0 D0         [24]  710 	pop	psw
   0AEC 92 AF         [24]  711 	mov	ea,c
   0AEE 22            [24]  712 	ret
                            713 	.area CSEG    (CODE)
                            714 	.area CONST   (CODE)
                            715 	.area XINIT   (CODE)
                            716 	.area CABS    (ABS,CODE)
   F7FE                     717 	.org 0xF7FE
   F7FE                     718 _app_signature:
   F7FE 3D                  719 	.db #0x3D	; 61
   F7FF C2                  720 	.db #0xC2	; 194
