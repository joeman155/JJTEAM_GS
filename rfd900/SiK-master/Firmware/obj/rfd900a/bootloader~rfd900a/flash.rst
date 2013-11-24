                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:01 2013
                              5 ;--------------------------------------------------------
                              6 	.module flash
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _board_frequency
                             13 	.globl _calibration_crc
                             14 	.globl _calibration
                             15 	.globl _flash_signature
                             16 	.globl _SPI0EN
                             17 	.globl _TXBMT0
                             18 	.globl _NSS0MD0
                             19 	.globl _NSS0MD1
                             20 	.globl _RXOVRN0
                             21 	.globl _MODF0
                             22 	.globl _WCOL0
                             23 	.globl _SPIF0
                             24 	.globl _AD0CM0
                             25 	.globl _AD0CM1
                             26 	.globl _AD0CM2
                             27 	.globl _AD0WINT
                             28 	.globl _AD0BUSY
                             29 	.globl _AD0INT
                             30 	.globl _BURSTEN
                             31 	.globl _AD0EN
                             32 	.globl _CCF0
                             33 	.globl _CCF1
                             34 	.globl _CCF2
                             35 	.globl _CCF3
                             36 	.globl _CCF4
                             37 	.globl _CCF5
                             38 	.globl _CR
                             39 	.globl _CF
                             40 	.globl _P
                             41 	.globl _F1
                             42 	.globl _OV
                             43 	.globl _RS0
                             44 	.globl _RS1
                             45 	.globl _F0
                             46 	.globl _AC
                             47 	.globl _CY
                             48 	.globl _T2XCLK
                             49 	.globl _T2RCLK
                             50 	.globl _TR2
                             51 	.globl _T2SPLIT
                             52 	.globl _TF2CEN
                             53 	.globl _TF2LEN
                             54 	.globl _TF2L
                             55 	.globl _TF2H
                             56 	.globl _SI
                             57 	.globl _ACK
                             58 	.globl _ARBLOST
                             59 	.globl _ACKRQ
                             60 	.globl _STO
                             61 	.globl _STA
                             62 	.globl _TXMODE
                             63 	.globl _MASTER
                             64 	.globl _PX0
                             65 	.globl _PT0
                             66 	.globl _PX1
                             67 	.globl _PT1
                             68 	.globl _PS0
                             69 	.globl _PT2
                             70 	.globl _PSPI0
                             71 	.globl _SPI1EN
                             72 	.globl _TXBMT1
                             73 	.globl _NSS1MD0
                             74 	.globl _NSS1MD1
                             75 	.globl _RXOVRN1
                             76 	.globl _MODF1
                             77 	.globl _WCOL1
                             78 	.globl _SPIF1
                             79 	.globl _EX0
                             80 	.globl _ET0
                             81 	.globl _EX1
                             82 	.globl _ET1
                             83 	.globl _ES0
                             84 	.globl _ET2
                             85 	.globl _ESPI0
                             86 	.globl _EA
                             87 	.globl _RI0
                             88 	.globl _TI0
                             89 	.globl _RB80
                             90 	.globl _TB80
                             91 	.globl _REN0
                             92 	.globl _MCE0
                             93 	.globl _S0MODE
                             94 	.globl _CRC0VAL
                             95 	.globl _CRC0INIT
                             96 	.globl _CRC0SEL
                             97 	.globl _IT0
                             98 	.globl _IE0
                             99 	.globl _IT1
                            100 	.globl _IE1
                            101 	.globl _TR0
                            102 	.globl _TF0
                            103 	.globl _TR1
                            104 	.globl _TF1
                            105 	.globl _PCA0CP4
                            106 	.globl _PCA0CP0
                            107 	.globl _PCA0
                            108 	.globl _PCA0CP3
                            109 	.globl _PCA0CP2
                            110 	.globl _PCA0CP1
                            111 	.globl _PCA0CP5
                            112 	.globl _TMR2
                            113 	.globl _TMR2RL
                            114 	.globl _ADC0LT
                            115 	.globl _ADC0GT
                            116 	.globl _ADC0
                            117 	.globl _TMR3
                            118 	.globl _TMR3RL
                            119 	.globl _TOFF
                            120 	.globl _DP
                            121 	.globl _VDM0CN
                            122 	.globl _PCA0CPH4
                            123 	.globl _PCA0CPL4
                            124 	.globl _PCA0CPH0
                            125 	.globl _PCA0CPL0
                            126 	.globl _PCA0H
                            127 	.globl _PCA0L
                            128 	.globl _SPI0CN
                            129 	.globl _EIP2
                            130 	.globl _EIP1
                            131 	.globl _SMB0ADM
                            132 	.globl _SMB0ADR
                            133 	.globl _P2MDIN
                            134 	.globl _P1MDIN
                            135 	.globl _P0MDIN
                            136 	.globl _B
                            137 	.globl _RSTSRC
                            138 	.globl _PCA0CPH3
                            139 	.globl _PCA0CPL3
                            140 	.globl _PCA0CPH2
                            141 	.globl _PCA0CPL2
                            142 	.globl _PCA0CPH1
                            143 	.globl _PCA0CPL1
                            144 	.globl _ADC0CN
                            145 	.globl _EIE2
                            146 	.globl _EIE1
                            147 	.globl _FLWR
                            148 	.globl _IT01CF
                            149 	.globl _XBR2
                            150 	.globl _XBR1
                            151 	.globl _XBR0
                            152 	.globl _ACC
                            153 	.globl _PCA0PWM
                            154 	.globl _PCA0CPM4
                            155 	.globl _PCA0CPM3
                            156 	.globl _PCA0CPM2
                            157 	.globl _PCA0CPM1
                            158 	.globl _PCA0CPM0
                            159 	.globl _PCA0MD
                            160 	.globl _PCA0CN
                            161 	.globl _P0MAT
                            162 	.globl _P2SKIP
                            163 	.globl _P1SKIP
                            164 	.globl _P0SKIP
                            165 	.globl _PCA0CPH5
                            166 	.globl _PCA0CPL5
                            167 	.globl _REF0CN
                            168 	.globl _PSW
                            169 	.globl _P1MAT
                            170 	.globl _PCA0CPM5
                            171 	.globl _TMR2H
                            172 	.globl _TMR2L
                            173 	.globl _TMR2RLH
                            174 	.globl _TMR2RLL
                            175 	.globl _REG0CN
                            176 	.globl _TMR2CN
                            177 	.globl _P0MASK
                            178 	.globl _ADC0LTH
                            179 	.globl _ADC0LTL
                            180 	.globl _ADC0GTH
                            181 	.globl _ADC0GTL
                            182 	.globl _SMB0DAT
                            183 	.globl _SMB0CF
                            184 	.globl _SMB0CN
                            185 	.globl _P1MASK
                            186 	.globl _ADC0H
                            187 	.globl _ADC0L
                            188 	.globl _ADC0TK
                            189 	.globl _ADC0CF
                            190 	.globl _ADC0MX
                            191 	.globl _ADC0PWR
                            192 	.globl _ADC0AC
                            193 	.globl _IREF0CN
                            194 	.globl _IP
                            195 	.globl _FLKEY
                            196 	.globl _FLSCL
                            197 	.globl _PMU0CF
                            198 	.globl _OSCICL
                            199 	.globl _OSCICN
                            200 	.globl _OSCXCN
                            201 	.globl _SPI1CN
                            202 	.globl _ONESHOT
                            203 	.globl _EMI0TC
                            204 	.globl _RTC0KEY
                            205 	.globl _RTC0DAT
                            206 	.globl _RTC0ADR
                            207 	.globl _EMI0CF
                            208 	.globl _EMI0CN
                            209 	.globl _CLKSEL
                            210 	.globl _IE
                            211 	.globl _SFRPAGE
                            212 	.globl _P2DRV
                            213 	.globl _P2MDOUT
                            214 	.globl _P1DRV
                            215 	.globl _P1MDOUT
                            216 	.globl _P0DRV
                            217 	.globl _P0MDOUT
                            218 	.globl _SPI0DAT
                            219 	.globl _SPI0CKR
                            220 	.globl _SPI0CFG
                            221 	.globl _P2
                            222 	.globl _CPT0MX
                            223 	.globl _CPT1MX
                            224 	.globl _CPT0MD
                            225 	.globl _CPT1MD
                            226 	.globl _CPT0CN
                            227 	.globl _CPT1CN
                            228 	.globl _SBUF0
                            229 	.globl _SCON0
                            230 	.globl _CRC0CNT
                            231 	.globl _DC0CN
                            232 	.globl _CRC0AUTO
                            233 	.globl _DC0CF
                            234 	.globl _TMR3H
                            235 	.globl _CRC0FLIP
                            236 	.globl _TMR3L
                            237 	.globl _CRC0IN
                            238 	.globl _TMR3RLH
                            239 	.globl _CRC0CN
                            240 	.globl _TMR3RLL
                            241 	.globl _CRC0DAT
                            242 	.globl _TMR3CN
                            243 	.globl _P1
                            244 	.globl _PSCTL
                            245 	.globl _CKCON
                            246 	.globl _TH1
                            247 	.globl _TH0
                            248 	.globl _TL1
                            249 	.globl _TL0
                            250 	.globl _TMOD
                            251 	.globl _TCON
                            252 	.globl _PCON
                            253 	.globl _TOFFH
                            254 	.globl _SPI1DAT
                            255 	.globl _TOFFL
                            256 	.globl _SPI1CKR
                            257 	.globl _SPI1CFG
                            258 	.globl _DPH
                            259 	.globl _DPL
                            260 	.globl _SP
                            261 	.globl _P0
                            262 	.globl _flash_write_byte_PARM_2
                            263 	.globl _flash_app_valid
                            264 	.globl _flash_erase_app
                            265 	.globl _flash_erase_scratch
                            266 	.globl _flash_write_byte
                            267 	.globl _flash_read_byte
                            268 	.globl _flash_transfer_calibration
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
                            525 ;--------------------------------------------------------
                            526 ; overlayable register banks
                            527 ;--------------------------------------------------------
                            528 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     529 	.ds 8
                            530 ;--------------------------------------------------------
                            531 ; internal ram data
                            532 ;--------------------------------------------------------
                            533 	.area DSEG    (DATA)
   0008                     534 _flash_write_byte_PARM_2:
   0008                     535 	.ds 1
                            536 ;--------------------------------------------------------
                            537 ; overlayable items in internal ram 
                            538 ;--------------------------------------------------------
                            539 	.area	OSEG    (OVR,DATA)
                            540 	.area	OSEG    (OVR,DATA)
                            541 ;--------------------------------------------------------
                            542 ; indirectly addressable internal ram data
                            543 ;--------------------------------------------------------
                            544 	.area ISEG    (DATA)
                            545 ;--------------------------------------------------------
                            546 ; absolute internal ram data
                            547 ;--------------------------------------------------------
                            548 	.area IABS    (ABS,DATA)
                            549 	.area IABS    (ABS,DATA)
                            550 ;--------------------------------------------------------
                            551 ; bit data
                            552 ;--------------------------------------------------------
                            553 	.area BSEG    (BIT)
                            554 ;--------------------------------------------------------
                            555 ; paged external ram data
                            556 ;--------------------------------------------------------
                            557 	.area PSEG    (PAG,XDATA)
                            558 ;--------------------------------------------------------
                            559 ; external ram data
                            560 ;--------------------------------------------------------
                            561 	.area XSEG    (XDATA)
                            562 ;--------------------------------------------------------
                            563 ; absolute external ram data
                            564 ;--------------------------------------------------------
                            565 	.area XABS    (ABS,XDATA)
                            566 ;--------------------------------------------------------
                            567 ; external initialized ram data
                            568 ;--------------------------------------------------------
                            569 	.area HOME    (CODE)
                            570 	.area GSINIT0 (CODE)
                            571 	.area GSINIT1 (CODE)
                            572 	.area GSINIT2 (CODE)
                            573 	.area GSINIT3 (CODE)
                            574 	.area GSINIT4 (CODE)
                            575 	.area GSINIT5 (CODE)
                            576 	.area GSINIT  (CODE)
                            577 	.area GSFINAL (CODE)
                            578 	.area CSEG    (CODE)
                            579 ;--------------------------------------------------------
                            580 ; global & static initialisations
                            581 ;--------------------------------------------------------
                            582 	.area HOME    (CODE)
                            583 	.area GSINIT  (CODE)
                            584 	.area GSFINAL (CODE)
                            585 	.area GSINIT  (CODE)
                            586 ;--------------------------------------------------------
                            587 ; Home
                            588 ;--------------------------------------------------------
                            589 	.area HOME    (CODE)
                            590 	.area HOME    (CODE)
                            591 ;--------------------------------------------------------
                            592 ; code
                            593 ;--------------------------------------------------------
                            594 	.area HIGHCSEG(CODE)
                            595 ;------------------------------------------------------------
                            596 ;Allocation info for local variables in function 'flash_app_valid'
                            597 ;------------------------------------------------------------
                            598 ;	bootloader/flash.c:73: flash_app_valid(void)
                            599 ;	-----------------------------------------
                            600 ;	 function flash_app_valid
                            601 ;	-----------------------------------------
   F800                     602 _flash_app_valid:
                     0007   603 	ar7 = 0x07
                     0006   604 	ar6 = 0x06
                     0005   605 	ar5 = 0x05
                     0004   606 	ar4 = 0x04
                     0003   607 	ar3 = 0x03
                     0002   608 	ar2 = 0x02
                     0001   609 	ar1 = 0x01
                     0000   610 	ar0 = 0x00
                            611 ;	bootloader/flash.c:75: return (flash_signature[0] == FLASH_SIG0) && (flash_signature[1] == FLASH_SIG1);
   F800 90 F7 FE      [24]  612 	mov	dptr,#_flash_signature
   F803 E4            [12]  613 	clr	a
   F804 93            [24]  614 	movc	a,@a+dptr
   F805 FF            [12]  615 	mov	r7,a
   F806 BF 3D 0B      [24]  616 	cjne	r7,#0x3D,00103$
   F809 90 F7 FF      [24]  617 	mov	dptr,#(_flash_signature + 0x0001)
   F80C E4            [12]  618 	clr	a
   F80D 93            [24]  619 	movc	a,@a+dptr
   F80E FF            [12]  620 	mov	r7,a
   F80F BF C2 02      [24]  621 	cjne	r7,#0xC2,00111$
   F812 80 04         [24]  622 	sjmp	00104$
   F814                     623 00111$:
   F814                     624 00103$:
   F814 7F 00         [12]  625 	mov	r7,#0x00
   F816 80 02         [24]  626 	sjmp	00105$
   F818                     627 00104$:
   F818 7F 01         [12]  628 	mov	r7,#0x01
   F81A                     629 00105$:
   F81A 8F 82         [24]  630 	mov	dpl,r7
   F81C 22            [24]  631 	ret
                            632 ;------------------------------------------------------------
                            633 ;Allocation info for local variables in function 'flash_address_visible'
                            634 ;------------------------------------------------------------
                            635 ;address                   Allocated to registers r6 r7 
                            636 ;------------------------------------------------------------
                            637 ;	bootloader/flash.c:84: flash_address_visible(uint16_t address)
                            638 ;	-----------------------------------------
                            639 ;	 function flash_address_visible
                            640 ;	-----------------------------------------
   F81D                     641 _flash_address_visible:
   F81D AE 82         [24]  642 	mov	r6,dpl
                            643 ;	bootloader/flash.c:86: if ((address < FLASH_APP_START) || (address >= FLASH_INFO_PAGE))
   F81F E5 83         [12]  644 	mov	a,dph
   F821 FF            [12]  645 	mov	r7,a
   F822 54 FC         [12]  646 	anl	a,#0xFC
   F824 60 05         [24]  647 	jz	00101$
   F826 74 08         [12]  648 	mov	a,#0x100 - 0xF8
   F828 2F            [12]  649 	add	a,r7
   F829 50 02         [24]  650 	jnc	00102$
   F82B                     651 00101$:
                            652 ;	bootloader/flash.c:87: return false;
   F82B C3            [12]  653 	clr	c
   F82C 22            [24]  654 	ret
   F82D                     655 00102$:
                            656 ;	bootloader/flash.c:88: return true;
   F82D D3            [12]  657 	setb	c
   F82E 22            [24]  658 	ret
                            659 ;------------------------------------------------------------
                            660 ;Allocation info for local variables in function 'flash_load_keys'
                            661 ;------------------------------------------------------------
                            662 ;	bootloader/flash.c:95: flash_load_keys(void)
                            663 ;	-----------------------------------------
                            664 ;	 function flash_load_keys
                            665 ;	-----------------------------------------
   F82F                     666 _flash_load_keys:
                            667 ;	bootloader/flash.c:97: FLKEY = 0xa5;
   F82F 75 B7 A5      [24]  668 	mov	_FLKEY,#0xA5
                            669 ;	bootloader/flash.c:98: FLKEY = 0xf1;
   F832 75 B7 F1      [24]  670 	mov	_FLKEY,#0xF1
   F835 22            [24]  671 	ret
                            672 ;------------------------------------------------------------
                            673 ;Allocation info for local variables in function 'flash_erase_app'
                            674 ;------------------------------------------------------------
                            675 ;address                   Allocated to registers r6 r7 
                            676 ;------------------------------------------------------------
                            677 ;	bootloader/flash.c:102: flash_erase_app(void)
                            678 ;	-----------------------------------------
                            679 ;	 function flash_erase_app
                            680 ;	-----------------------------------------
   F836                     681 _flash_erase_app:
                            682 ;	bootloader/flash.c:107: for (address = FLASH_INFO_PAGE - FLASH_PAGE_SIZE; address >= FLASH_APP_START; address -= FLASH_PAGE_SIZE) {
   F836 7E 00         [12]  683 	mov	r6,#0x00
   F838 7F F4         [12]  684 	mov	r7,#0xF4
   F83A                     685 00102$:
                            686 ;	bootloader/flash.c:108: flash_load_keys();
   F83A C0 07         [24]  687 	push	ar7
   F83C C0 06         [24]  688 	push	ar6
   F83E 12 F8 2F      [24]  689 	lcall	_flash_load_keys
   F841 D0 06         [24]  690 	pop	ar6
   F843 D0 07         [24]  691 	pop	ar7
                            692 ;	bootloader/flash.c:109: PSCTL = 0x03;				// set PSWE and PSEE
   F845 75 8F 03      [24]  693 	mov	_PSCTL,#0x03
                            694 ;	bootloader/flash.c:110: *(uint8_t __xdata *)address = 0xff;	// do the page erase
   F848 8E 82         [24]  695 	mov	dpl,r6
   F84A 8F 83         [24]  696 	mov	dph,r7
   F84C 74 FF         [12]  697 	mov	a,#0xFF
   F84E F0            [24]  698 	movx	@dptr,a
                            699 ;	bootloader/flash.c:111: PSCTL = 0x00;				// disable PSWE/PSEE
   F84F 75 8F 00      [24]  700 	mov	_PSCTL,#0x00
                            701 ;	bootloader/flash.c:107: for (address = FLASH_INFO_PAGE - FLASH_PAGE_SIZE; address >= FLASH_APP_START; address -= FLASH_PAGE_SIZE) {
   F852 EF            [12]  702 	mov	a,r7
   F853 24 FC         [12]  703 	add	a,#0xFC
   F855 FF            [12]  704 	mov	r7,a
   F856 54 FC         [12]  705 	anl	a,#0xFC
   F858 60 02         [24]  706 	jz	00111$
   F85A 80 DE         [24]  707 	sjmp	00102$
   F85C                     708 00111$:
   F85C 22            [24]  709 	ret
                            710 ;------------------------------------------------------------
                            711 ;Allocation info for local variables in function 'flash_erase_scratch'
                            712 ;------------------------------------------------------------
                            713 ;	bootloader/flash.c:116: flash_erase_scratch(void)
                            714 ;	-----------------------------------------
                            715 ;	 function flash_erase_scratch
                            716 ;	-----------------------------------------
   F85D                     717 _flash_erase_scratch:
                            718 ;	bootloader/flash.c:119: flash_load_keys();		// unlock flash for one operation
   F85D 12 F8 2F      [24]  719 	lcall	_flash_load_keys
                            720 ;	bootloader/flash.c:120: PSCTL = 0x07;			// enable flash erase of the scratch page
   F860 75 8F 07      [24]  721 	mov	_PSCTL,#0x07
                            722 ;	bootloader/flash.c:121: *(uint8_t __xdata *)0 = 0xff;	// trigger the erase
   F863 90 00 00      [24]  723 	mov	dptr,#0x0000
   F866 74 FF         [12]  724 	mov	a,#0xFF
   F868 F0            [24]  725 	movx	@dptr,a
                            726 ;	bootloader/flash.c:122: PSCTL = 0x00;			// disable flash write & scratch access
   F869 75 8F 00      [24]  727 	mov	_PSCTL,#0x00
   F86C 22            [24]  728 	ret
                            729 ;------------------------------------------------------------
                            730 ;Allocation info for local variables in function 'flash_write_byte'
                            731 ;------------------------------------------------------------
                            732 ;c                         Allocated with name '_flash_write_byte_PARM_2'
                            733 ;address                   Allocated to registers r6 r7 
                            734 ;------------------------------------------------------------
                            735 ;	bootloader/flash.c:126: flash_write_byte(uint16_t address, uint8_t c)
                            736 ;	-----------------------------------------
                            737 ;	 function flash_write_byte
                            738 ;	-----------------------------------------
   F86D                     739 _flash_write_byte:
                            740 ;	bootloader/flash.c:128: if (flash_address_visible(address)) {
   F86D AE 82         [24]  741 	mov	r6,dpl
   F86F AF 83         [24]  742 	mov  r7,dph
   F871 C0 07         [24]  743 	push	ar7
   F873 C0 06         [24]  744 	push	ar6
   F875 12 F8 1D      [24]  745 	lcall	_flash_address_visible
   F878 D0 06         [24]  746 	pop	ar6
   F87A D0 07         [24]  747 	pop	ar7
   F87C 50 18         [24]  748 	jnc	00103$
                            749 ;	bootloader/flash.c:129: flash_load_keys();
   F87E C0 07         [24]  750 	push	ar7
   F880 C0 06         [24]  751 	push	ar6
   F882 12 F8 2F      [24]  752 	lcall	_flash_load_keys
   F885 D0 06         [24]  753 	pop	ar6
   F887 D0 07         [24]  754 	pop	ar7
                            755 ;	bootloader/flash.c:130: PSCTL = 0x01;				// set PSWE, clear PSEE
   F889 75 8F 01      [24]  756 	mov	_PSCTL,#0x01
                            757 ;	bootloader/flash.c:131: *(uint8_t __xdata *)address = c;	// write the byte
   F88C 8E 82         [24]  758 	mov	dpl,r6
   F88E 8F 83         [24]  759 	mov	dph,r7
   F890 E5 08         [12]  760 	mov	a,_flash_write_byte_PARM_2
   F892 F0            [24]  761 	movx	@dptr,a
                            762 ;	bootloader/flash.c:132: PSCTL = 0x00;				// disable PSWE/PSEE
   F893 75 8F 00      [24]  763 	mov	_PSCTL,#0x00
   F896                     764 00103$:
   F896 22            [24]  765 	ret
                            766 ;------------------------------------------------------------
                            767 ;Allocation info for local variables in function 'flash_read_byte'
                            768 ;------------------------------------------------------------
                            769 ;address                   Allocated to registers r6 r7 
                            770 ;------------------------------------------------------------
                            771 ;	bootloader/flash.c:137: flash_read_byte(uint16_t address)
                            772 ;	-----------------------------------------
                            773 ;	 function flash_read_byte
                            774 ;	-----------------------------------------
   F897                     775 _flash_read_byte:
                            776 ;	bootloader/flash.c:139: return *(uint8_t __code *)address;
   F897 E4            [12]  777 	clr	a
   F898 93            [24]  778 	movc	a,@a+dptr
   F899 F5 82         [12]  779 	mov	dpl,a
   F89B 22            [24]  780 	ret
                            781 ;------------------------------------------------------------
                            782 ;Allocation info for local variables in function 'flash_transfer_calibration'
                            783 ;------------------------------------------------------------
                            784 ;idx                       Allocated to registers r6 
                            785 ;crc                       Allocated to registers r7 
                            786 ;------------------------------------------------------------
                            787 ;	bootloader/flash.c:147: flash_transfer_calibration()
                            788 ;	-----------------------------------------
                            789 ;	 function flash_transfer_calibration
                            790 ;	-----------------------------------------
   F89C                     791 _flash_transfer_calibration:
                            792 ;	bootloader/flash.c:149: uint8_t idx, crc = 0;
   F89C 7F 00         [12]  793 	mov	r7,#0x00
                            794 ;	bootloader/flash.c:153: for (idx = 0; idx < FLASH_CALIBRATION_AREA_SIZE; idx++)
   F89E 7E 00         [12]  795 	mov	r6,#0x00
   F8A0                     796 00110$:
                            797 ;	bootloader/flash.c:155: if (flash_read_byte(FLASH_CALIBRATION_AREA + idx) != 0xFF)
   F8A0 8E 04         [24]  798 	mov	ar4,r6
   F8A2 7D 00         [12]  799 	mov	r5,#0x00
   F8A4 74 DE         [12]  800 	mov	a,#0xDE
   F8A6 2C            [12]  801 	add	a,r4
   F8A7 F5 82         [12]  802 	mov	dpl,a
   F8A9 74 F7         [12]  803 	mov	a,#0xF7
   F8AB 3D            [12]  804 	addc	a,r5
   F8AC F5 83         [12]  805 	mov	dph,a
   F8AE C0 07         [24]  806 	push	ar7
   F8B0 C0 06         [24]  807 	push	ar6
   F8B2 12 F8 97      [24]  808 	lcall	_flash_read_byte
   F8B5 AD 82         [24]  809 	mov	r5,dpl
   F8B7 D0 06         [24]  810 	pop	ar6
   F8B9 D0 07         [24]  811 	pop	ar7
   F8BB BD FF 02      [24]  812 	cjne	r5,#0xFF,00147$
   F8BE 80 01         [24]  813 	sjmp	00111$
   F8C0                     814 00147$:
                            815 ;	bootloader/flash.c:157: return;
   F8C0 22            [24]  816 	ret
   F8C1                     817 00111$:
                            818 ;	bootloader/flash.c:153: for (idx = 0; idx < FLASH_CALIBRATION_AREA_SIZE; idx++)
   F8C1 0E            [12]  819 	inc	r6
   F8C2 BE 1F 00      [24]  820 	cjne	r6,#0x1F,00148$
   F8C5                     821 00148$:
   F8C5 40 D9         [24]  822 	jc	00110$
                            823 ;	bootloader/flash.c:160: if (flash_read_byte(FLASH_CALIBRATION_CRC) != 0xFF)
   F8C7 90 F7 FD      [24]  824 	mov	dptr,#0xF7FD
   F8CA C0 07         [24]  825 	push	ar7
   F8CC 12 F8 97      [24]  826 	lcall	_flash_read_byte
   F8CF AE 82         [24]  827 	mov	r6,dpl
   F8D1 D0 07         [24]  828 	pop	ar7
                            829 ;	bootloader/flash.c:162: return;
                            830 ;	bootloader/flash.c:166: for (idx = 0; idx < FLASH_CALIBRATION_AREA_SIZE; idx++)
   F8D3 BE FF 4D      [24]  831 	cjne	r6,#0xFF,00116$
   F8D6 7E 00         [12]  832 	mov	r6,#0x00
   F8D8                     833 00112$:
                            834 ;	bootloader/flash.c:168: crc ^= calibration[idx];
   F8D8 EE            [12]  835 	mov	a,r6
   F8D9 90 FB DE      [24]  836 	mov	dptr,#_calibration
   F8DC 93            [24]  837 	movc	a,@a+dptr
   F8DD FD            [12]  838 	mov	r5,a
   F8DE 62 07         [12]  839 	xrl	ar7,a
                            840 ;	bootloader/flash.c:166: for (idx = 0; idx < FLASH_CALIBRATION_AREA_SIZE; idx++)
   F8E0 0E            [12]  841 	inc	r6
   F8E1 BE 1F 00      [24]  842 	cjne	r6,#0x1F,00151$
   F8E4                     843 00151$:
   F8E4 40 F2         [24]  844 	jc	00112$
                            845 ;	bootloader/flash.c:170: if (crc != calibration_crc)
   F8E6 90 FB FD      [24]  846 	mov	dptr,#_calibration_crc
   F8E9 E4            [12]  847 	clr	a
   F8EA 93            [24]  848 	movc	a,@a+dptr
   F8EB FE            [12]  849 	mov	r6,a
   F8EC EF            [12]  850 	mov	a,r7
                            851 ;	bootloader/flash.c:172: return;
                            852 ;	bootloader/flash.c:176: for (idx = 0; idx < FLASH_CALIBRATION_AREA_SIZE; idx++)
   F8ED B5 06 33      [24]  853 	cjne	a,ar6,00116$
   F8F0 7F 00         [12]  854 	mov	r7,#0x00
   F8F2                     855 00114$:
                            856 ;	bootloader/flash.c:178: flash_write_byte((FLASH_CALIBRATION_AREA + idx), calibration[idx]);
   F8F2 8F 05         [24]  857 	mov	ar5,r7
   F8F4 7E 00         [12]  858 	mov	r6,#0x00
   F8F6 74 DE         [12]  859 	mov	a,#0xDE
   F8F8 2D            [12]  860 	add	a,r5
   F8F9 FD            [12]  861 	mov	r5,a
   F8FA 74 F7         [12]  862 	mov	a,#0xF7
   F8FC 3E            [12]  863 	addc	a,r6
   F8FD FE            [12]  864 	mov	r6,a
   F8FE EF            [12]  865 	mov	a,r7
   F8FF 90 FB DE      [24]  866 	mov	dptr,#_calibration
   F902 93            [24]  867 	movc	a,@a+dptr
   F903 F5 08         [12]  868 	mov	_flash_write_byte_PARM_2,a
   F905 8D 82         [24]  869 	mov	dpl,r5
   F907 8E 83         [24]  870 	mov	dph,r6
   F909 C0 07         [24]  871 	push	ar7
   F90B 12 F8 6D      [24]  872 	lcall	_flash_write_byte
   F90E D0 07         [24]  873 	pop	ar7
                            874 ;	bootloader/flash.c:176: for (idx = 0; idx < FLASH_CALIBRATION_AREA_SIZE; idx++)
   F910 0F            [12]  875 	inc	r7
   F911 BF 1F 00      [24]  876 	cjne	r7,#0x1F,00154$
   F914                     877 00154$:
   F914 40 DC         [24]  878 	jc	00114$
                            879 ;	bootloader/flash.c:180: flash_write_byte(FLASH_CALIBRATION_CRC, calibration_crc);
   F916 90 FB FD      [24]  880 	mov	dptr,#_calibration_crc
   F919 E4            [12]  881 	clr	a
   F91A 93            [24]  882 	movc	a,@a+dptr
   F91B F5 08         [12]  883 	mov	_flash_write_byte_PARM_2,a
   F91D 90 F7 FD      [24]  884 	mov	dptr,#0xF7FD
   F920 02 F8 6D      [24]  885 	ljmp	_flash_write_byte
   F923                     886 00116$:
   F923 22            [24]  887 	ret
                            888 	.area CSEG    (CODE)
                            889 	.area CONST   (CODE)
                     F7FE   890 _flash_signature	=	0xf7fe
                     FBDE   891 _calibration	=	0xfbde
                     FBFD   892 _calibration_crc	=	0xfbfd
                            893 	.area CABS    (ABS,CODE)
   FBFE                     894 	.org 0xFBFE
   FBFE                     895 _board_frequency:
   FBFE F0                  896 	.db #0xF0	; 240
