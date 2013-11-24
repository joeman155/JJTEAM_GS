                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:01 2013
                              5 ;--------------------------------------------------------
                              6 	.module bootloader
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _bl_main
                             13 	.globl _cin
                             14 	.globl _cout
                             15 	.globl _flash_read_byte
                             16 	.globl _flash_write_byte
                             17 	.globl _flash_erase_scratch
                             18 	.globl _flash_erase_app
                             19 	.globl _flash_app_valid
                             20 	.globl _NSS1
                             21 	.globl _IRQ
                             22 	.globl _PIN_ENABLE
                             23 	.globl _PIN_CONFIG
                             24 	.globl _LED_GREEN
                             25 	.globl _LED_RED
                             26 	.globl _SPI0EN
                             27 	.globl _TXBMT0
                             28 	.globl _NSS0MD0
                             29 	.globl _NSS0MD1
                             30 	.globl _RXOVRN0
                             31 	.globl _MODF0
                             32 	.globl _WCOL0
                             33 	.globl _SPIF0
                             34 	.globl _AD0CM0
                             35 	.globl _AD0CM1
                             36 	.globl _AD0CM2
                             37 	.globl _AD0WINT
                             38 	.globl _AD0BUSY
                             39 	.globl _AD0INT
                             40 	.globl _BURSTEN
                             41 	.globl _AD0EN
                             42 	.globl _CCF0
                             43 	.globl _CCF1
                             44 	.globl _CCF2
                             45 	.globl _CCF3
                             46 	.globl _CCF4
                             47 	.globl _CCF5
                             48 	.globl _CR
                             49 	.globl _CF
                             50 	.globl _P
                             51 	.globl _F1
                             52 	.globl _OV
                             53 	.globl _RS0
                             54 	.globl _RS1
                             55 	.globl _F0
                             56 	.globl _AC
                             57 	.globl _CY
                             58 	.globl _T2XCLK
                             59 	.globl _T2RCLK
                             60 	.globl _TR2
                             61 	.globl _T2SPLIT
                             62 	.globl _TF2CEN
                             63 	.globl _TF2LEN
                             64 	.globl _TF2L
                             65 	.globl _TF2H
                             66 	.globl _SI
                             67 	.globl _ACK
                             68 	.globl _ARBLOST
                             69 	.globl _ACKRQ
                             70 	.globl _STO
                             71 	.globl _STA
                             72 	.globl _TXMODE
                             73 	.globl _MASTER
                             74 	.globl _PX0
                             75 	.globl _PT0
                             76 	.globl _PX1
                             77 	.globl _PT1
                             78 	.globl _PS0
                             79 	.globl _PT2
                             80 	.globl _PSPI0
                             81 	.globl _SPI1EN
                             82 	.globl _TXBMT1
                             83 	.globl _NSS1MD0
                             84 	.globl _NSS1MD1
                             85 	.globl _RXOVRN1
                             86 	.globl _MODF1
                             87 	.globl _WCOL1
                             88 	.globl _SPIF1
                             89 	.globl _EX0
                             90 	.globl _ET0
                             91 	.globl _EX1
                             92 	.globl _ET1
                             93 	.globl _ES0
                             94 	.globl _ET2
                             95 	.globl _ESPI0
                             96 	.globl _EA
                             97 	.globl _RI0
                             98 	.globl _TI0
                             99 	.globl _RB80
                            100 	.globl _TB80
                            101 	.globl _REN0
                            102 	.globl _MCE0
                            103 	.globl _S0MODE
                            104 	.globl _CRC0VAL
                            105 	.globl _CRC0INIT
                            106 	.globl _CRC0SEL
                            107 	.globl _IT0
                            108 	.globl _IE0
                            109 	.globl _IT1
                            110 	.globl _IE1
                            111 	.globl _TR0
                            112 	.globl _TF0
                            113 	.globl _TR1
                            114 	.globl _TF1
                            115 	.globl _PCA0CP4
                            116 	.globl _PCA0CP0
                            117 	.globl _PCA0
                            118 	.globl _PCA0CP3
                            119 	.globl _PCA0CP2
                            120 	.globl _PCA0CP1
                            121 	.globl _PCA0CP5
                            122 	.globl _TMR2
                            123 	.globl _TMR2RL
                            124 	.globl _ADC0LT
                            125 	.globl _ADC0GT
                            126 	.globl _ADC0
                            127 	.globl _TMR3
                            128 	.globl _TMR3RL
                            129 	.globl _TOFF
                            130 	.globl _DP
                            131 	.globl _VDM0CN
                            132 	.globl _PCA0CPH4
                            133 	.globl _PCA0CPL4
                            134 	.globl _PCA0CPH0
                            135 	.globl _PCA0CPL0
                            136 	.globl _PCA0H
                            137 	.globl _PCA0L
                            138 	.globl _SPI0CN
                            139 	.globl _EIP2
                            140 	.globl _EIP1
                            141 	.globl _SMB0ADM
                            142 	.globl _SMB0ADR
                            143 	.globl _P2MDIN
                            144 	.globl _P1MDIN
                            145 	.globl _P0MDIN
                            146 	.globl _B
                            147 	.globl _RSTSRC
                            148 	.globl _PCA0CPH3
                            149 	.globl _PCA0CPL3
                            150 	.globl _PCA0CPH2
                            151 	.globl _PCA0CPL2
                            152 	.globl _PCA0CPH1
                            153 	.globl _PCA0CPL1
                            154 	.globl _ADC0CN
                            155 	.globl _EIE2
                            156 	.globl _EIE1
                            157 	.globl _FLWR
                            158 	.globl _IT01CF
                            159 	.globl _XBR2
                            160 	.globl _XBR1
                            161 	.globl _XBR0
                            162 	.globl _ACC
                            163 	.globl _PCA0PWM
                            164 	.globl _PCA0CPM4
                            165 	.globl _PCA0CPM3
                            166 	.globl _PCA0CPM2
                            167 	.globl _PCA0CPM1
                            168 	.globl _PCA0CPM0
                            169 	.globl _PCA0MD
                            170 	.globl _PCA0CN
                            171 	.globl _P0MAT
                            172 	.globl _P2SKIP
                            173 	.globl _P1SKIP
                            174 	.globl _P0SKIP
                            175 	.globl _PCA0CPH5
                            176 	.globl _PCA0CPL5
                            177 	.globl _REF0CN
                            178 	.globl _PSW
                            179 	.globl _P1MAT
                            180 	.globl _PCA0CPM5
                            181 	.globl _TMR2H
                            182 	.globl _TMR2L
                            183 	.globl _TMR2RLH
                            184 	.globl _TMR2RLL
                            185 	.globl _REG0CN
                            186 	.globl _TMR2CN
                            187 	.globl _P0MASK
                            188 	.globl _ADC0LTH
                            189 	.globl _ADC0LTL
                            190 	.globl _ADC0GTH
                            191 	.globl _ADC0GTL
                            192 	.globl _SMB0DAT
                            193 	.globl _SMB0CF
                            194 	.globl _SMB0CN
                            195 	.globl _P1MASK
                            196 	.globl _ADC0H
                            197 	.globl _ADC0L
                            198 	.globl _ADC0TK
                            199 	.globl _ADC0CF
                            200 	.globl _ADC0MX
                            201 	.globl _ADC0PWR
                            202 	.globl _ADC0AC
                            203 	.globl _IREF0CN
                            204 	.globl _IP
                            205 	.globl _FLKEY
                            206 	.globl _FLSCL
                            207 	.globl _PMU0CF
                            208 	.globl _OSCICL
                            209 	.globl _OSCICN
                            210 	.globl _OSCXCN
                            211 	.globl _SPI1CN
                            212 	.globl _ONESHOT
                            213 	.globl _EMI0TC
                            214 	.globl _RTC0KEY
                            215 	.globl _RTC0DAT
                            216 	.globl _RTC0ADR
                            217 	.globl _EMI0CF
                            218 	.globl _EMI0CN
                            219 	.globl _CLKSEL
                            220 	.globl _IE
                            221 	.globl _SFRPAGE
                            222 	.globl _P2DRV
                            223 	.globl _P2MDOUT
                            224 	.globl _P1DRV
                            225 	.globl _P1MDOUT
                            226 	.globl _P0DRV
                            227 	.globl _P0MDOUT
                            228 	.globl _SPI0DAT
                            229 	.globl _SPI0CKR
                            230 	.globl _SPI0CFG
                            231 	.globl _P2
                            232 	.globl _CPT0MX
                            233 	.globl _CPT1MX
                            234 	.globl _CPT0MD
                            235 	.globl _CPT1MD
                            236 	.globl _CPT0CN
                            237 	.globl _CPT1CN
                            238 	.globl _SBUF0
                            239 	.globl _SCON0
                            240 	.globl _CRC0CNT
                            241 	.globl _DC0CN
                            242 	.globl _CRC0AUTO
                            243 	.globl _DC0CF
                            244 	.globl _TMR3H
                            245 	.globl _CRC0FLIP
                            246 	.globl _TMR3L
                            247 	.globl _CRC0IN
                            248 	.globl _TMR3RLH
                            249 	.globl _CRC0CN
                            250 	.globl _TMR3RLL
                            251 	.globl _CRC0DAT
                            252 	.globl _TMR3CN
                            253 	.globl _P1
                            254 	.globl _PSCTL
                            255 	.globl _CKCON
                            256 	.globl _TH1
                            257 	.globl _TH0
                            258 	.globl _TL1
                            259 	.globl _TL0
                            260 	.globl _TMOD
                            261 	.globl _TCON
                            262 	.globl _PCON
                            263 	.globl _TOFFH
                            264 	.globl _SPI1DAT
                            265 	.globl _TOFFL
                            266 	.globl _SPI1CKR
                            267 	.globl _SPI1CFG
                            268 	.globl _DPH
                            269 	.globl _DPL
                            270 	.globl _SP
                            271 	.globl _P0
                            272 	.globl _app_valid
                            273 	.globl _debounce_count
                            274 	.globl _reset_source
                            275 	.globl _buf
                            276 ;--------------------------------------------------------
                            277 ; special function registers
                            278 ;--------------------------------------------------------
                            279 	.area RSEG    (ABS,DATA)
   0000                     280 	.org 0x0000
                     0080   281 _P0	=	0x0080
                     0081   282 _SP	=	0x0081
                     0082   283 _DPL	=	0x0082
                     0083   284 _DPH	=	0x0083
                     0084   285 _SPI1CFG	=	0x0084
                     0085   286 _SPI1CKR	=	0x0085
                     0085   287 _TOFFL	=	0x0085
                     0086   288 _SPI1DAT	=	0x0086
                     0086   289 _TOFFH	=	0x0086
                     0087   290 _PCON	=	0x0087
                     0088   291 _TCON	=	0x0088
                     0089   292 _TMOD	=	0x0089
                     008A   293 _TL0	=	0x008a
                     008B   294 _TL1	=	0x008b
                     008C   295 _TH0	=	0x008c
                     008D   296 _TH1	=	0x008d
                     008E   297 _CKCON	=	0x008e
                     008F   298 _PSCTL	=	0x008f
                     0090   299 _P1	=	0x0090
                     0091   300 _TMR3CN	=	0x0091
                     0091   301 _CRC0DAT	=	0x0091
                     0092   302 _TMR3RLL	=	0x0092
                     0092   303 _CRC0CN	=	0x0092
                     0093   304 _TMR3RLH	=	0x0093
                     0093   305 _CRC0IN	=	0x0093
                     0094   306 _TMR3L	=	0x0094
                     0095   307 _CRC0FLIP	=	0x0095
                     0095   308 _TMR3H	=	0x0095
                     0096   309 _DC0CF	=	0x0096
                     0096   310 _CRC0AUTO	=	0x0096
                     0097   311 _DC0CN	=	0x0097
                     0097   312 _CRC0CNT	=	0x0097
                     0098   313 _SCON0	=	0x0098
                     0099   314 _SBUF0	=	0x0099
                     009A   315 _CPT1CN	=	0x009a
                     009B   316 _CPT0CN	=	0x009b
                     009C   317 _CPT1MD	=	0x009c
                     009D   318 _CPT0MD	=	0x009d
                     009E   319 _CPT1MX	=	0x009e
                     009F   320 _CPT0MX	=	0x009f
                     00A0   321 _P2	=	0x00a0
                     00A1   322 _SPI0CFG	=	0x00a1
                     00A2   323 _SPI0CKR	=	0x00a2
                     00A3   324 _SPI0DAT	=	0x00a3
                     00A4   325 _P0MDOUT	=	0x00a4
                     00A4   326 _P0DRV	=	0x00a4
                     00A5   327 _P1MDOUT	=	0x00a5
                     00A5   328 _P1DRV	=	0x00a5
                     00A6   329 _P2MDOUT	=	0x00a6
                     00A6   330 _P2DRV	=	0x00a6
                     00A7   331 _SFRPAGE	=	0x00a7
                     00A8   332 _IE	=	0x00a8
                     00A9   333 _CLKSEL	=	0x00a9
                     00AA   334 _EMI0CN	=	0x00aa
                     00AB   335 _EMI0CF	=	0x00ab
                     00AC   336 _RTC0ADR	=	0x00ac
                     00AD   337 _RTC0DAT	=	0x00ad
                     00AE   338 _RTC0KEY	=	0x00ae
                     00AF   339 _EMI0TC	=	0x00af
                     00AF   340 _ONESHOT	=	0x00af
                     00B0   341 _SPI1CN	=	0x00b0
                     00B1   342 _OSCXCN	=	0x00b1
                     00B2   343 _OSCICN	=	0x00b2
                     00B3   344 _OSCICL	=	0x00b3
                     00B5   345 _PMU0CF	=	0x00b5
                     00B6   346 _FLSCL	=	0x00b6
                     00B7   347 _FLKEY	=	0x00b7
                     00B8   348 _IP	=	0x00b8
                     00B9   349 _IREF0CN	=	0x00b9
                     00BA   350 _ADC0AC	=	0x00ba
                     00BA   351 _ADC0PWR	=	0x00ba
                     00BB   352 _ADC0MX	=	0x00bb
                     00BC   353 _ADC0CF	=	0x00bc
                     00BD   354 _ADC0TK	=	0x00bd
                     00BD   355 _ADC0L	=	0x00bd
                     00BE   356 _ADC0H	=	0x00be
                     00BF   357 _P1MASK	=	0x00bf
                     00C0   358 _SMB0CN	=	0x00c0
                     00C1   359 _SMB0CF	=	0x00c1
                     00C2   360 _SMB0DAT	=	0x00c2
                     00C3   361 _ADC0GTL	=	0x00c3
                     00C4   362 _ADC0GTH	=	0x00c4
                     00C5   363 _ADC0LTL	=	0x00c5
                     00C6   364 _ADC0LTH	=	0x00c6
                     00C7   365 _P0MASK	=	0x00c7
                     00C8   366 _TMR2CN	=	0x00c8
                     00C9   367 _REG0CN	=	0x00c9
                     00CA   368 _TMR2RLL	=	0x00ca
                     00CB   369 _TMR2RLH	=	0x00cb
                     00CC   370 _TMR2L	=	0x00cc
                     00CD   371 _TMR2H	=	0x00cd
                     00CE   372 _PCA0CPM5	=	0x00ce
                     00CF   373 _P1MAT	=	0x00cf
                     00D0   374 _PSW	=	0x00d0
                     00D1   375 _REF0CN	=	0x00d1
                     00D2   376 _PCA0CPL5	=	0x00d2
                     00D3   377 _PCA0CPH5	=	0x00d3
                     00D4   378 _P0SKIP	=	0x00d4
                     00D5   379 _P1SKIP	=	0x00d5
                     00D6   380 _P2SKIP	=	0x00d6
                     00D7   381 _P0MAT	=	0x00d7
                     00D8   382 _PCA0CN	=	0x00d8
                     00D9   383 _PCA0MD	=	0x00d9
                     00DA   384 _PCA0CPM0	=	0x00da
                     00DB   385 _PCA0CPM1	=	0x00db
                     00DC   386 _PCA0CPM2	=	0x00dc
                     00DD   387 _PCA0CPM3	=	0x00dd
                     00DE   388 _PCA0CPM4	=	0x00de
                     00DF   389 _PCA0PWM	=	0x00df
                     00E0   390 _ACC	=	0x00e0
                     00E1   391 _XBR0	=	0x00e1
                     00E2   392 _XBR1	=	0x00e2
                     00E3   393 _XBR2	=	0x00e3
                     00E4   394 _IT01CF	=	0x00e4
                     00E5   395 _FLWR	=	0x00e5
                     00E6   396 _EIE1	=	0x00e6
                     00E7   397 _EIE2	=	0x00e7
                     00E8   398 _ADC0CN	=	0x00e8
                     00E9   399 _PCA0CPL1	=	0x00e9
                     00EA   400 _PCA0CPH1	=	0x00ea
                     00EB   401 _PCA0CPL2	=	0x00eb
                     00EC   402 _PCA0CPH2	=	0x00ec
                     00ED   403 _PCA0CPL3	=	0x00ed
                     00EE   404 _PCA0CPH3	=	0x00ee
                     00EF   405 _RSTSRC	=	0x00ef
                     00F0   406 _B	=	0x00f0
                     00F1   407 _P0MDIN	=	0x00f1
                     00F2   408 _P1MDIN	=	0x00f2
                     00F3   409 _P2MDIN	=	0x00f3
                     00F4   410 _SMB0ADR	=	0x00f4
                     00F5   411 _SMB0ADM	=	0x00f5
                     00F6   412 _EIP1	=	0x00f6
                     00F7   413 _EIP2	=	0x00f7
                     00F8   414 _SPI0CN	=	0x00f8
                     00F9   415 _PCA0L	=	0x00f9
                     00FA   416 _PCA0H	=	0x00fa
                     00FB   417 _PCA0CPL0	=	0x00fb
                     00FC   418 _PCA0CPH0	=	0x00fc
                     00FD   419 _PCA0CPL4	=	0x00fd
                     00FE   420 _PCA0CPH4	=	0x00fe
                     00FF   421 _VDM0CN	=	0x00ff
                     8382   422 _DP	=	0x8382
                     8685   423 _TOFF	=	0x8685
                     9392   424 _TMR3RL	=	0x9392
                     9594   425 _TMR3	=	0x9594
                     BEBD   426 _ADC0	=	0xbebd
                     C4C3   427 _ADC0GT	=	0xc4c3
                     C6C5   428 _ADC0LT	=	0xc6c5
                     CBCA   429 _TMR2RL	=	0xcbca
                     CDCC   430 _TMR2	=	0xcdcc
                     D3D2   431 _PCA0CP5	=	0xd3d2
                     EAE9   432 _PCA0CP1	=	0xeae9
                     ECEB   433 _PCA0CP2	=	0xeceb
                     EEED   434 _PCA0CP3	=	0xeeed
                     FAF9   435 _PCA0	=	0xfaf9
                     FCFB   436 _PCA0CP0	=	0xfcfb
                     FEFD   437 _PCA0CP4	=	0xfefd
                            438 ;--------------------------------------------------------
                            439 ; special function bits
                            440 ;--------------------------------------------------------
                            441 	.area RSEG    (ABS,DATA)
   0000                     442 	.org 0x0000
                     008F   443 _TF1	=	0x008f
                     008E   444 _TR1	=	0x008e
                     008D   445 _TF0	=	0x008d
                     008C   446 _TR0	=	0x008c
                     008B   447 _IE1	=	0x008b
                     008A   448 _IT1	=	0x008a
                     0089   449 _IE0	=	0x0089
                     0088   450 _IT0	=	0x0088
                     0096   451 _CRC0SEL	=	0x0096
                     0095   452 _CRC0INIT	=	0x0095
                     0094   453 _CRC0VAL	=	0x0094
                     009F   454 _S0MODE	=	0x009f
                     009D   455 _MCE0	=	0x009d
                     009C   456 _REN0	=	0x009c
                     009B   457 _TB80	=	0x009b
                     009A   458 _RB80	=	0x009a
                     0099   459 _TI0	=	0x0099
                     0098   460 _RI0	=	0x0098
                     00AF   461 _EA	=	0x00af
                     00AE   462 _ESPI0	=	0x00ae
                     00AD   463 _ET2	=	0x00ad
                     00AC   464 _ES0	=	0x00ac
                     00AB   465 _ET1	=	0x00ab
                     00AA   466 _EX1	=	0x00aa
                     00A9   467 _ET0	=	0x00a9
                     00A8   468 _EX0	=	0x00a8
                     00B7   469 _SPIF1	=	0x00b7
                     00B6   470 _WCOL1	=	0x00b6
                     00B5   471 _MODF1	=	0x00b5
                     00B4   472 _RXOVRN1	=	0x00b4
                     00B3   473 _NSS1MD1	=	0x00b3
                     00B2   474 _NSS1MD0	=	0x00b2
                     00B1   475 _TXBMT1	=	0x00b1
                     00B0   476 _SPI1EN	=	0x00b0
                     00BE   477 _PSPI0	=	0x00be
                     00BD   478 _PT2	=	0x00bd
                     00BC   479 _PS0	=	0x00bc
                     00BB   480 _PT1	=	0x00bb
                     00BA   481 _PX1	=	0x00ba
                     00B9   482 _PT0	=	0x00b9
                     00B8   483 _PX0	=	0x00b8
                     00C7   484 _MASTER	=	0x00c7
                     00C6   485 _TXMODE	=	0x00c6
                     00C5   486 _STA	=	0x00c5
                     00C4   487 _STO	=	0x00c4
                     00C3   488 _ACKRQ	=	0x00c3
                     00C2   489 _ARBLOST	=	0x00c2
                     00C1   490 _ACK	=	0x00c1
                     00C0   491 _SI	=	0x00c0
                     00CF   492 _TF2H	=	0x00cf
                     00CE   493 _TF2L	=	0x00ce
                     00CD   494 _TF2LEN	=	0x00cd
                     00CC   495 _TF2CEN	=	0x00cc
                     00CB   496 _T2SPLIT	=	0x00cb
                     00CA   497 _TR2	=	0x00ca
                     00C9   498 _T2RCLK	=	0x00c9
                     00C8   499 _T2XCLK	=	0x00c8
                     00D7   500 _CY	=	0x00d7
                     00D6   501 _AC	=	0x00d6
                     00D5   502 _F0	=	0x00d5
                     00D4   503 _RS1	=	0x00d4
                     00D3   504 _RS0	=	0x00d3
                     00D2   505 _OV	=	0x00d2
                     00D1   506 _F1	=	0x00d1
                     00D0   507 _P	=	0x00d0
                     00DF   508 _CF	=	0x00df
                     00DE   509 _CR	=	0x00de
                     00DD   510 _CCF5	=	0x00dd
                     00DC   511 _CCF4	=	0x00dc
                     00DB   512 _CCF3	=	0x00db
                     00DA   513 _CCF2	=	0x00da
                     00D9   514 _CCF1	=	0x00d9
                     00D8   515 _CCF0	=	0x00d8
                     00EF   516 _AD0EN	=	0x00ef
                     00EE   517 _BURSTEN	=	0x00ee
                     00ED   518 _AD0INT	=	0x00ed
                     00EC   519 _AD0BUSY	=	0x00ec
                     00EB   520 _AD0WINT	=	0x00eb
                     00EA   521 _AD0CM2	=	0x00ea
                     00E9   522 _AD0CM1	=	0x00e9
                     00E8   523 _AD0CM0	=	0x00e8
                     00FF   524 _SPIF0	=	0x00ff
                     00FE   525 _WCOL0	=	0x00fe
                     00FD   526 _MODF0	=	0x00fd
                     00FC   527 _RXOVRN0	=	0x00fc
                     00FB   528 _NSS0MD1	=	0x00fb
                     00FA   529 _NSS0MD0	=	0x00fa
                     00F9   530 _TXBMT0	=	0x00f9
                     00F8   531 _SPI0EN	=	0x00f8
                     0096   532 _LED_RED	=	0x0096
                     0095   533 _LED_GREEN	=	0x0095
                     0082   534 _PIN_CONFIG	=	0x0082
                     0083   535 _PIN_ENABLE	=	0x0083
                     0087   536 _IRQ	=	0x0087
                     0094   537 _NSS1	=	0x0094
                            538 ;--------------------------------------------------------
                            539 ; overlayable register banks
                            540 ;--------------------------------------------------------
                            541 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     542 	.ds 8
                            543 ;--------------------------------------------------------
                            544 ; internal ram data
                            545 ;--------------------------------------------------------
                            546 	.area DSEG    (DATA)
   0021                     547 _buf::
   0021                     548 	.ds 64
   0061                     549 _reset_source::
   0061                     550 	.ds 1
   0062                     551 _debounce_count::
   0062                     552 	.ds 1
   0063                     553 _bootloader_address_1_32:
   0063                     554 	.ds 2
                            555 ;--------------------------------------------------------
                            556 ; overlayable items in internal ram 
                            557 ;--------------------------------------------------------
                            558 	.area	OSEG    (OVR,DATA)
                            559 ;--------------------------------------------------------
                            560 ; indirectly addressable internal ram data
                            561 ;--------------------------------------------------------
                            562 	.area ISEG    (DATA)
                            563 ;--------------------------------------------------------
                            564 ; absolute internal ram data
                            565 ;--------------------------------------------------------
                            566 	.area IABS    (ABS,DATA)
                            567 	.area IABS    (ABS,DATA)
                            568 ;--------------------------------------------------------
                            569 ; bit data
                            570 ;--------------------------------------------------------
                            571 	.area BSEG    (BIT)
   0000                     572 _app_valid::
   0000                     573 	.ds 1
                            574 ;--------------------------------------------------------
                            575 ; paged external ram data
                            576 ;--------------------------------------------------------
                            577 	.area PSEG    (PAG,XDATA)
                            578 ;--------------------------------------------------------
                            579 ; external ram data
                            580 ;--------------------------------------------------------
                            581 	.area XSEG    (XDATA)
                            582 ;--------------------------------------------------------
                            583 ; absolute external ram data
                            584 ;--------------------------------------------------------
                            585 	.area XABS    (ABS,XDATA)
                            586 ;--------------------------------------------------------
                            587 ; external initialized ram data
                            588 ;--------------------------------------------------------
                            589 	.area HOME    (CODE)
                            590 	.area GSINIT0 (CODE)
                            591 	.area GSINIT1 (CODE)
                            592 	.area GSINIT2 (CODE)
                            593 	.area GSINIT3 (CODE)
                            594 	.area GSINIT4 (CODE)
                            595 	.area GSINIT5 (CODE)
                            596 	.area GSINIT  (CODE)
                            597 	.area GSFINAL (CODE)
                            598 	.area CSEG    (CODE)
                            599 ;--------------------------------------------------------
                            600 ; global & static initialisations
                            601 ;--------------------------------------------------------
                            602 	.area HOME    (CODE)
                            603 	.area GSINIT  (CODE)
                            604 	.area GSFINAL (CODE)
                            605 	.area GSINIT  (CODE)
                            606 ;--------------------------------------------------------
                            607 ; Home
                            608 ;--------------------------------------------------------
                            609 	.area HOME    (CODE)
                            610 	.area HOME    (CODE)
                            611 ;--------------------------------------------------------
                            612 ; code
                            613 ;--------------------------------------------------------
                            614 	.area CSEG    (CODE)
                            615 ;------------------------------------------------------------
                            616 ;Allocation info for local variables in function 'bl_main'
                            617 ;------------------------------------------------------------
                            618 ;i                         Allocated to registers r7 
                            619 ;------------------------------------------------------------
                            620 ;	bootloader/bootloader.c:70: bl_main(void)
                            621 ;	-----------------------------------------
                            622 ;	 function bl_main
                            623 ;	-----------------------------------------
   00A3                     624 _bl_main:
                     0007   625 	ar7 = 0x07
                     0006   626 	ar6 = 0x06
                     0005   627 	ar5 = 0x05
                     0004   628 	ar4 = 0x04
                     0003   629 	ar3 = 0x03
                     0002   630 	ar2 = 0x02
                     0001   631 	ar1 = 0x01
                     0000   632 	ar0 = 0x00
                            633 ;	bootloader/bootloader.c:75: hardware_init();
   00A3 12 02 92      [24]  634 	lcall	_hardware_init
                            635 ;	bootloader/bootloader.c:80: reset_source = RSTSRC;
                            636 ;	bootloader/bootloader.c:81: if (reset_source & (1 << 1))
   00A6 E5 EF         [12]  637 	mov	a,_RSTSRC
   00A8 F5 61         [12]  638 	mov	_reset_source,a
   00AA 30 E1 03      [24]  639 	jnb	acc.1,00102$
                            640 ;	bootloader/bootloader.c:82: reset_source = 1 << 1;
   00AD 75 61 02      [24]  641 	mov	_reset_source,#0x02
   00B0                     642 00102$:
                            643 ;	bootloader/bootloader.c:85: app_valid = flash_app_valid();
   00B0 12 F8 00      [24]  644 	lcall	_flash_app_valid
   00B3 E5 82         [12]  645 	mov	a,dpl
   00B5 24 FF         [12]  646 	add	a,#0xff
   00B7 92 00         [24]  647 	mov	_app_valid,c
                            648 ;	bootloader/bootloader.c:89: debounce_count = 0;
   00B9 75 62 00      [24]  649 	mov	_debounce_count,#0x00
                            650 ;	bootloader/bootloader.c:90: for (i = 0; i < 255; i++) {
   00BC 7F FF         [12]  651 	mov	r7,#0xFF
   00BE                     652 00114$:
                            653 ;	bootloader/bootloader.c:91: if (BUTTON_BOOTLOAD == BUTTON_ACTIVE)
   00BE 20 82 02      [24]  654 	jb	_PIN_CONFIG,00104$
                            655 ;	bootloader/bootloader.c:92: debounce_count++;
   00C1 05 62         [12]  656 	inc	_debounce_count
   00C3                     657 00104$:
   00C3 8F 06         [24]  658 	mov	ar6,r7
   00C5 EE            [12]  659 	mov	a,r6
   00C6 14            [12]  660 	dec	a
                            661 ;	bootloader/bootloader.c:90: for (i = 0; i < 255; i++) {
   00C7 FF            [12]  662 	mov	r7,a
   00C8 70 F4         [24]  663 	jnz	00114$
                            664 ;	bootloader/bootloader.c:96: LED_BOOTLOADER = LED_ON;
   00CA D2 96         [12]  665 	setb	_LED_RED
                            666 ;	bootloader/bootloader.c:105: if (!(reset_source & (1 << 6)) && app_valid) {
   00CC E5 61         [12]  667 	mov	a,_reset_source
   00CE 20 E6 16      [24]  668 	jb	acc.6,00115$
   00D1 30 00 13      [24]  669 	jnb	_app_valid,00115$
                            670 ;	bootloader/bootloader.c:110: if (debounce_count < 200) {
   00D4 74 38         [12]  671 	mov	a,#0x100 - 0xC8
   00D6 25 62         [12]  672 	add	a,_debounce_count
   00D8 40 0D         [24]  673 	jc	00115$
                            674 ;	bootloader/bootloader.c:119: BOARD_FREQUENCY_REG = board_frequency;
   00DA 90 FB FE      [24]  675 	mov	dptr,#_board_frequency
   00DD E4            [12]  676 	clr	a
   00DE 93            [24]  677 	movc	a,@a+dptr
   00DF F5 C4         [12]  678 	mov	_ADC0GTH,a
                            679 ;	bootloader/bootloader.c:120: BOARD_BL_VERSION_REG = BL_VERSION;
   00E1 75 C3 01      [24]  680 	mov	_ADC0GTL,#0x01
                            681 ;	bootloader/bootloader.c:123: ((void (__code *)(void))FLASH_APP_START)();
   00E4 12 04 00      [24]  682 	lcall	0x0400
   00E7                     683 00115$:
                            684 ;	bootloader/bootloader.c:130: bootloader();
   00E7 12 00 EC      [24]  685 	lcall	_bootloader
   00EA 80 FB         [24]  686 	sjmp	00115$
                            687 ;------------------------------------------------------------
                            688 ;Allocation info for local variables in function 'bootloader'
                            689 ;------------------------------------------------------------
                            690 ;address                   Allocated with name '_bootloader_address_1_32'
                            691 ;c                         Allocated to registers r7 
                            692 ;count                     Allocated to registers r6 
                            693 ;i                         Allocated to registers r5 
                            694 ;------------------------------------------------------------
                            695 ;	bootloader/bootloader.c:136: bootloader(void)
                            696 ;	-----------------------------------------
                            697 ;	 function bootloader
                            698 ;	-----------------------------------------
   00EC                     699 _bootloader:
                            700 ;	bootloader/bootloader.c:143: LED_BOOTLOADER = LED_ON;
   00EC D2 96         [12]  701 	setb	_LED_RED
                            702 ;	bootloader/bootloader.c:144: c = cin();
   00EE 12 02 FF      [24]  703 	lcall	_cin
   00F1 AF 82         [24]  704 	mov	r7,dpl
                            705 ;	bootloader/bootloader.c:145: LED_BOOTLOADER = LED_OFF;
   00F3 C2 96         [12]  706 	clr	_LED_RED
                            707 ;	bootloader/bootloader.c:148: switch (c) {
   00F5 BF 21 02      [24]  708 	cjne	r7,#0x21,00205$
   00F8 80 17         [24]  709 	sjmp	00106$
   00FA                     710 00205$:
   00FA BF 22 02      [24]  711 	cjne	r7,#0x22,00206$
   00FD 80 12         [24]  712 	sjmp	00106$
   00FF                     713 00206$:
   00FF BF 23 02      [24]  714 	cjne	r7,#0x23,00207$
   0102 80 0D         [24]  715 	sjmp	00106$
   0104                     716 00207$:
   0104 BF 26 02      [24]  717 	cjne	r7,#0x26,00208$
   0107 80 08         [24]  718 	sjmp	00106$
   0109                     719 00208$:
   0109 BF 29 02      [24]  720 	cjne	r7,#0x29,00209$
   010C 80 03         [24]  721 	sjmp	00106$
   010E                     722 00209$:
   010E BF 31 0F      [24]  723 	cjne	r7,#0x31,00109$
                            724 ;	bootloader/bootloader.c:154: case PROTO_DEBUG:
   0111                     725 00106$:
                            726 ;	bootloader/bootloader.c:155: if (cin() != PROTO_EOC)
   0111 C0 07         [24]  727 	push	ar7
   0113 12 02 FF      [24]  728 	lcall	_cin
   0116 AE 82         [24]  729 	mov	r6,dpl
   0118 D0 07         [24]  730 	pop	ar7
   011A BE 20 02      [24]  731 	cjne	r6,#0x20,00212$
   011D 80 01         [24]  732 	sjmp	00213$
   011F                     733 00212$:
   011F 22            [24]  734 	ret
   0120                     735 00213$:
                            736 ;	bootloader/bootloader.c:157: }
   0120                     737 00109$:
                            738 ;	bootloader/bootloader.c:159: switch (c) {
   0120 BF 21 00      [24]  739 	cjne	r7,#0x21,00214$
   0123                     740 00214$:
   0123 50 01         [24]  741 	jnc	00215$
   0125 22            [24]  742 	ret
   0126                     743 00215$:
   0126 EF            [12]  744 	mov	a,r7
   0127 24 CE         [12]  745 	add	a,#0xff - 0x31
   0129 50 01         [24]  746 	jnc	00216$
   012B 22            [24]  747 	ret
   012C                     748 00216$:
   012C EF            [12]  749 	mov	a,r7
   012D 24 DF         [12]  750 	add	a,#0xDF
   012F FE            [12]  751 	mov	r6,a
   0130 24 0A         [12]  752 	add	a,#(00217$-3-.)
   0132 83            [24]  753 	movc	a,@a+pc
   0133 F5 82         [12]  754 	mov	dpl,a
   0135 EE            [12]  755 	mov	a,r6
   0136 24 15         [12]  756 	add	a,#(00218$-3-.)
   0138 83            [24]  757 	movc	a,@a+pc
   0139 F5 83         [12]  758 	mov	dph,a
   013B E4            [12]  759 	clr	a
   013C 73            [24]  760 	jmp	@a+dptr
   013D                     761 00217$:
   013D 5F                  762 	.db	00110$
   013E 62                  763 	.db	00111$
   013F 75                  764 	.db	00112$
   0140 81                  765 	.db	00114$
   0141 A4                  766 	.db	00117$
   0142 CE                  767 	.db	00120$
   0143 E5                  768 	.db	00121$
   0144 45                  769 	.db	00128$
   0145 7B                  770 	.db	00113$
   0146 81                  771 	.db	00134$
   0147 81                  772 	.db	00134$
   0148 81                  773 	.db	00134$
   0149 81                  774 	.db	00134$
   014A 81                  775 	.db	00134$
   014B 81                  776 	.db	00134$
   014C 7C                  777 	.db	00132$
   014D 7F                  778 	.db	00133$
   014E                     779 00218$:
   014E 01                  780 	.db	00110$>>8
   014F 01                  781 	.db	00111$>>8
   0150 01                  782 	.db	00112$>>8
   0151 01                  783 	.db	00114$>>8
   0152 01                  784 	.db	00117$>>8
   0153 01                  785 	.db	00120$>>8
   0154 01                  786 	.db	00121$>>8
   0155 02                  787 	.db	00128$>>8
   0156 01                  788 	.db	00113$>>8
   0157 02                  789 	.db	00134$>>8
   0158 02                  790 	.db	00134$>>8
   0159 02                  791 	.db	00134$>>8
   015A 02                  792 	.db	00134$>>8
   015B 02                  793 	.db	00134$>>8
   015C 02                  794 	.db	00134$>>8
   015D 02                  795 	.db	00132$>>8
   015E 02                  796 	.db	00133$>>8
                            797 ;	bootloader/bootloader.c:161: case PROTO_GET_SYNC:		// sync
   015F                     798 00110$:
                            799 ;	bootloader/bootloader.c:162: break;
   015F 02 02 82      [24]  800 	ljmp	00135$
                            801 ;	bootloader/bootloader.c:164: case PROTO_GET_DEVICE:
   0162                     802 00111$:
                            803 ;	bootloader/bootloader.c:165: cout(BOARD_ID);
   0162 75 82 42      [24]  804 	mov	dpl,#0x42
   0165 12 02 F5      [24]  805 	lcall	_cout
                            806 ;	bootloader/bootloader.c:166: cout(board_frequency);
   0168 90 FB FE      [24]  807 	mov	dptr,#_board_frequency
   016B E4            [12]  808 	clr	a
   016C 93            [24]  809 	movc	a,@a+dptr
   016D F5 82         [12]  810 	mov	dpl,a
   016F 12 02 F5      [24]  811 	lcall	_cout
                            812 ;	bootloader/bootloader.c:167: break;
   0172 02 02 82      [24]  813 	ljmp	00135$
                            814 ;	bootloader/bootloader.c:169: case PROTO_CHIP_ERASE:		// erase the program area
   0175                     815 00112$:
                            816 ;	bootloader/bootloader.c:170: flash_erase_app();
   0175 12 F8 36      [24]  817 	lcall	_flash_erase_app
                            818 ;	bootloader/bootloader.c:171: break;
   0178 02 02 82      [24]  819 	ljmp	00135$
                            820 ;	bootloader/bootloader.c:173: case PROTO_PARAM_ERASE:
   017B                     821 00113$:
                            822 ;	bootloader/bootloader.c:174: flash_erase_scratch();
   017B 12 F8 5D      [24]  823 	lcall	_flash_erase_scratch
                            824 ;	bootloader/bootloader.c:175: break;
   017E 02 02 82      [24]  825 	ljmp	00135$
                            826 ;	bootloader/bootloader.c:177: case PROTO_LOAD_ADDRESS:	// set address
   0181                     827 00114$:
                            828 ;	bootloader/bootloader.c:178: address = cin();
   0181 12 02 FF      [24]  829 	lcall	_cin
   0184 AE 82         [24]  830 	mov	r6,dpl
   0186 8E 63         [24]  831 	mov	_bootloader_address_1_32,r6
   0188 75 64 00      [24]  832 	mov	(_bootloader_address_1_32 + 1),#0x00
                            833 ;	bootloader/bootloader.c:179: address |= (uint16_t)cin() << 8;
   018B 12 02 FF      [24]  834 	lcall	_cin
   018E AE 82         [24]  835 	mov	r6,dpl
   0190 8E 05         [24]  836 	mov	ar5,r6
   0192 E4            [12]  837 	clr	a
   0193 42 63         [12]  838 	orl	_bootloader_address_1_32,a
   0195 ED            [12]  839 	mov	a,r5
   0196 42 64         [12]  840 	orl	(_bootloader_address_1_32 + 1),a
                            841 ;	bootloader/bootloader.c:180: if (cin() != PROTO_EOC)
   0198 12 02 FF      [24]  842 	lcall	_cin
   019B AE 82         [24]  843 	mov	r6,dpl
   019D BE 20 03      [24]  844 	cjne	r6,#0x20,00219$
   01A0 02 02 82      [24]  845 	ljmp	00135$
   01A3                     846 00219$:
                            847 ;	bootloader/bootloader.c:181: goto cmd_bad;
   01A3 22            [24]  848 	ret
                            849 ;	bootloader/bootloader.c:184: case PROTO_PROG_FLASH:		// program byte
   01A4                     850 00117$:
                            851 ;	bootloader/bootloader.c:185: c = cin();
   01A4 12 02 FF      [24]  852 	lcall	_cin
   01A7 AF 82         [24]  853 	mov	r7,dpl
                            854 ;	bootloader/bootloader.c:186: if (cin() != PROTO_EOC)
   01A9 C0 07         [24]  855 	push	ar7
   01AB 12 02 FF      [24]  856 	lcall	_cin
   01AE AE 82         [24]  857 	mov	r6,dpl
   01B0 D0 07         [24]  858 	pop	ar7
   01B2 BE 20 02      [24]  859 	cjne	r6,#0x20,00220$
   01B5 80 01         [24]  860 	sjmp	00221$
   01B7                     861 00220$:
   01B7 22            [24]  862 	ret
   01B8                     863 00221$:
                            864 ;	bootloader/bootloader.c:188: flash_write_byte(address++, c);
   01B8 85 63 82      [24]  865 	mov	dpl,_bootloader_address_1_32
   01BB 85 64 83      [24]  866 	mov	dph,(_bootloader_address_1_32 + 1)
   01BE 05 63         [12]  867 	inc	_bootloader_address_1_32
   01C0 E4            [12]  868 	clr	a
   01C1 B5 63 02      [24]  869 	cjne	a,_bootloader_address_1_32,00222$
   01C4 05 64         [12]  870 	inc	(_bootloader_address_1_32 + 1)
   01C6                     871 00222$:
   01C6 8F 08         [24]  872 	mov	_flash_write_byte_PARM_2,r7
   01C8 12 F8 6D      [24]  873 	lcall	_flash_write_byte
                            874 ;	bootloader/bootloader.c:189: break;
   01CB 02 02 82      [24]  875 	ljmp	00135$
                            876 ;	bootloader/bootloader.c:191: case PROTO_READ_FLASH:		// readback byte
   01CE                     877 00120$:
                            878 ;	bootloader/bootloader.c:192: c = flash_read_byte(address++);
   01CE 85 63 82      [24]  879 	mov	dpl,_bootloader_address_1_32
   01D1 85 64 83      [24]  880 	mov	dph,(_bootloader_address_1_32 + 1)
   01D4 05 63         [12]  881 	inc	_bootloader_address_1_32
   01D6 E4            [12]  882 	clr	a
   01D7 B5 63 02      [24]  883 	cjne	a,_bootloader_address_1_32,00223$
   01DA 05 64         [12]  884 	inc	(_bootloader_address_1_32 + 1)
   01DC                     885 00223$:
   01DC 12 F8 97      [24]  886 	lcall	_flash_read_byte
                            887 ;	bootloader/bootloader.c:193: cout(c);
   01DF 12 02 F5      [24]  888 	lcall	_cout
                            889 ;	bootloader/bootloader.c:194: break;
   01E2 02 02 82      [24]  890 	ljmp	00135$
                            891 ;	bootloader/bootloader.c:196: case PROTO_PROG_MULTI:
   01E5                     892 00121$:
                            893 ;	bootloader/bootloader.c:197: count = cin();
   01E5 12 02 FF      [24]  894 	lcall	_cin
                            895 ;	bootloader/bootloader.c:198: if (count > sizeof(buf))
   01E8 E5 82         [12]  896 	mov	a,dpl
   01EA FE            [12]  897 	mov	r6,a
   01EB 24 BF         [12]  898 	add	a,#0xff - 0x40
   01ED 50 01         [24]  899 	jnc	00224$
   01EF 22            [24]  900 	ret
   01F0                     901 00224$:
                            902 ;	bootloader/bootloader.c:200: for (i = 0; i < count; i++)
   01F0 7D 00         [12]  903 	mov	r5,#0x00
   01F2                     904 00138$:
   01F2 C3            [12]  905 	clr	c
   01F3 ED            [12]  906 	mov	a,r5
   01F4 9E            [12]  907 	subb	a,r6
   01F5 50 19         [24]  908 	jnc	00124$
                            909 ;	bootloader/bootloader.c:201: buf[i] = cin();
   01F7 ED            [12]  910 	mov	a,r5
   01F8 24 21         [12]  911 	add	a,#_buf
   01FA F9            [12]  912 	mov	r1,a
   01FB C0 06         [24]  913 	push	ar6
   01FD C0 05         [24]  914 	push	ar5
   01FF C0 01         [24]  915 	push	ar1
   0201 12 02 FF      [24]  916 	lcall	_cin
   0204 E5 82         [12]  917 	mov	a,dpl
   0206 D0 01         [24]  918 	pop	ar1
   0208 D0 05         [24]  919 	pop	ar5
   020A D0 06         [24]  920 	pop	ar6
   020C F7            [12]  921 	mov	@r1,a
                            922 ;	bootloader/bootloader.c:200: for (i = 0; i < count; i++)
   020D 0D            [12]  923 	inc	r5
   020E 80 E2         [24]  924 	sjmp	00138$
   0210                     925 00124$:
                            926 ;	bootloader/bootloader.c:202: if (cin() != PROTO_EOC)
   0210 C0 06         [24]  927 	push	ar6
   0212 12 02 FF      [24]  928 	lcall	_cin
   0215 AD 82         [24]  929 	mov	r5,dpl
   0217 D0 06         [24]  930 	pop	ar6
   0219 BD 20 69      [24]  931 	cjne	r5,#0x20,00136$
                            932 ;	bootloader/bootloader.c:204: for (i = 0; i < count; i++)
   021C 7D 00         [12]  933 	mov	r5,#0x00
   021E                     934 00141$:
   021E C3            [12]  935 	clr	c
   021F ED            [12]  936 	mov	a,r5
   0220 9E            [12]  937 	subb	a,r6
   0221 50 5F         [24]  938 	jnc	00135$
                            939 ;	bootloader/bootloader.c:205: flash_write_byte(address++, buf[i]);
   0223 85 63 82      [24]  940 	mov	dpl,_bootloader_address_1_32
   0226 85 64 83      [24]  941 	mov	dph,(_bootloader_address_1_32 + 1)
   0229 05 63         [12]  942 	inc	_bootloader_address_1_32
   022B E4            [12]  943 	clr	a
   022C B5 63 02      [24]  944 	cjne	a,_bootloader_address_1_32,00229$
   022F 05 64         [12]  945 	inc	(_bootloader_address_1_32 + 1)
   0231                     946 00229$:
   0231 ED            [12]  947 	mov	a,r5
   0232 24 21         [12]  948 	add	a,#_buf
   0234 F9            [12]  949 	mov	r1,a
   0235 87 08         [24]  950 	mov	_flash_write_byte_PARM_2,@r1
   0237 C0 06         [24]  951 	push	ar6
   0239 C0 05         [24]  952 	push	ar5
   023B 12 F8 6D      [24]  953 	lcall	_flash_write_byte
   023E D0 05         [24]  954 	pop	ar5
   0240 D0 06         [24]  955 	pop	ar6
                            956 ;	bootloader/bootloader.c:204: for (i = 0; i < count; i++)
   0242 0D            [12]  957 	inc	r5
                            958 ;	bootloader/bootloader.c:208: case PROTO_READ_MULTI:
   0243 80 D9         [24]  959 	sjmp	00141$
   0245                     960 00128$:
                            961 ;	bootloader/bootloader.c:209: count = cin();
   0245 12 02 FF      [24]  962 	lcall	_cin
   0248 AE 82         [24]  963 	mov	r6,dpl
                            964 ;	bootloader/bootloader.c:210: if (cin() != PROTO_EOC)
   024A C0 06         [24]  965 	push	ar6
   024C 12 02 FF      [24]  966 	lcall	_cin
   024F AD 82         [24]  967 	mov	r5,dpl
   0251 D0 06         [24]  968 	pop	ar6
   0253 BD 20 2F      [24]  969 	cjne	r5,#0x20,00136$
                            970 ;	bootloader/bootloader.c:212: for (i = 0; i < count; i++) {
   0256 7D 00         [12]  971 	mov	r5,#0x00
   0258                     972 00144$:
   0258 C3            [12]  973 	clr	c
   0259 ED            [12]  974 	mov	a,r5
   025A 9E            [12]  975 	subb	a,r6
   025B 50 25         [24]  976 	jnc	00135$
                            977 ;	bootloader/bootloader.c:213: c = flash_read_byte(address++);
   025D 85 63 82      [24]  978 	mov	dpl,_bootloader_address_1_32
   0260 85 64 83      [24]  979 	mov	dph,(_bootloader_address_1_32 + 1)
   0263 05 63         [12]  980 	inc	_bootloader_address_1_32
   0265 E4            [12]  981 	clr	a
   0266 B5 63 02      [24]  982 	cjne	a,_bootloader_address_1_32,00233$
   0269 05 64         [12]  983 	inc	(_bootloader_address_1_32 + 1)
   026B                     984 00233$:
   026B C0 06         [24]  985 	push	ar6
   026D C0 05         [24]  986 	push	ar5
   026F 12 F8 97      [24]  987 	lcall	_flash_read_byte
                            988 ;	bootloader/bootloader.c:214: cout(c);
   0272 12 02 F5      [24]  989 	lcall	_cout
   0275 D0 05         [24]  990 	pop	ar5
   0277 D0 06         [24]  991 	pop	ar6
                            992 ;	bootloader/bootloader.c:212: for (i = 0; i < count; i++) {
   0279 0D            [12]  993 	inc	r5
                            994 ;	bootloader/bootloader.c:218: case PROTO_REBOOT:
   027A 80 DC         [24]  995 	sjmp	00144$
   027C                     996 00132$:
                            997 ;	bootloader/bootloader.c:220: RSTSRC |= (1 << 4);
   027C 43 EF 10      [24]  998 	orl	_RSTSRC,#0x10
                            999 ;	bootloader/bootloader.c:222: case PROTO_DEBUG:
   027F                    1000 00133$:
                           1001 ;	bootloader/bootloader.c:224: break;
                           1002 ;	bootloader/bootloader.c:226: default:
   027F 80 01         [24] 1003 	sjmp	00135$
   0281                    1004 00134$:
                           1005 ;	bootloader/bootloader.c:227: goto cmd_bad;
                           1006 ;	bootloader/bootloader.c:228: }
   0281 22            [24] 1007 	ret
   0282                    1008 00135$:
                           1009 ;	bootloader/bootloader.c:229: sync_response();
                           1010 ;	bootloader/bootloader.c:230: cmd_bad:
                           1011 ;	bootloader/bootloader.c:231: return;
   0282 02 02 86      [24] 1012 	ljmp	_sync_response
   0285                    1013 00136$:
   0285 22            [24] 1014 	ret
                           1015 ;------------------------------------------------------------
                           1016 ;Allocation info for local variables in function 'sync_response'
                           1017 ;------------------------------------------------------------
                           1018 ;	bootloader/bootloader.c:235: sync_response(void)
                           1019 ;	-----------------------------------------
                           1020 ;	 function sync_response
                           1021 ;	-----------------------------------------
   0286                    1022 _sync_response:
                           1023 ;	bootloader/bootloader.c:237: cout(PROTO_INSYNC);	// "in sync"
   0286 75 82 12      [24] 1024 	mov	dpl,#0x12
   0289 12 02 F5      [24] 1025 	lcall	_cout
                           1026 ;	bootloader/bootloader.c:238: cout(PROTO_OK);		// "OK"
   028C 75 82 10      [24] 1027 	mov	dpl,#0x10
   028F 02 02 F5      [24] 1028 	ljmp	_cout
                           1029 ;------------------------------------------------------------
                           1030 ;Allocation info for local variables in function 'hardware_init'
                           1031 ;------------------------------------------------------------
                           1032 ;i                         Allocated to registers r6 r7 
                           1033 ;------------------------------------------------------------
                           1034 ;	bootloader/bootloader.c:244: hardware_init(void)
                           1035 ;	-----------------------------------------
                           1036 ;	 function hardware_init
                           1037 ;	-----------------------------------------
   0292                    1038 _hardware_init:
                           1039 ;	bootloader/bootloader.c:250: EA	 =  0x00;
   0292 C2 AF         [12] 1040 	clr	_EA
                           1041 ;	bootloader/bootloader.c:253: PCA0MD	&= ~0x40;
   0294 AF D9         [24] 1042 	mov	r7,_PCA0MD
   0296 74 BF         [12] 1043 	mov	a,#0xBF
   0298 5F            [12] 1044 	anl	a,r7
   0299 F5 D9         [12] 1045 	mov	_PCA0MD,a
                           1046 ;	bootloader/bootloader.c:256: FLSCL	 =  0x40;
   029B 75 B6 40      [24] 1047 	mov	_FLSCL,#0x40
                           1048 ;	bootloader/bootloader.c:257: OSCICN	 =  0x8F;
   029E 75 B2 8F      [24] 1049 	mov	_OSCICN,#0x8F
                           1050 ;	bootloader/bootloader.c:258: CLKSEL	 =  0x00;
   02A1 75 A9 00      [24] 1051 	mov	_CLKSEL,#0x00
                           1052 ;	bootloader/bootloader.c:261: TCON	 =  0x40;		// Timer1 on
   02A4 75 88 40      [24] 1053 	mov	_TCON,#0x40
                           1054 ;	bootloader/bootloader.c:262: TMOD	 =  0x20;		// Timer1 8-bit auto-reload
   02A7 75 89 20      [24] 1055 	mov	_TMOD,#0x20
                           1056 ;	bootloader/bootloader.c:263: CKCON	 =  0x08;		// Timer1 from SYSCLK
   02AA 75 8E 08      [24] 1057 	mov	_CKCON,#0x08
                           1058 ;	bootloader/bootloader.c:264: TH1	 =  0x96;		// 115200 bps
   02AD 75 8D 96      [24] 1059 	mov	_TH1,#0x96
                           1060 ;	bootloader/bootloader.c:267: SCON0	 =  0x12;		// enable receiver, set TX ready
   02B0 75 98 12      [24] 1061 	mov	_SCON0,#0x12
                           1062 ;	bootloader/bootloader.c:270: VDM0CN	 =  0x80;
   02B3 75 FF 80      [24] 1063 	mov	_VDM0CN,#0x80
                           1064 ;	bootloader/bootloader.c:271: for (i = 0; i < 350; i++);	// Wait 100us for initialization
   02B6 7E 5E         [12] 1065 	mov	r6,#0x5E
   02B8 7F 01         [12] 1066 	mov	r7,#0x01
   02BA                    1067 00107$:
   02BA 1E            [12] 1068 	dec	r6
   02BB BE FF 01      [24] 1069 	cjne	r6,#0xFF,00117$
   02BE 1F            [12] 1070 	dec	r7
   02BF                    1071 00117$:
   02BF EE            [12] 1072 	mov	a,r6
   02C0 4F            [12] 1073 	orl	a,r7
   02C1 70 F7         [24] 1074 	jnz	00107$
                           1075 ;	bootloader/bootloader.c:272: RSTSRC	 =  0x06;		// enable brown out and missing clock reset sources
   02C3 75 EF 06      [24] 1076 	mov	_RSTSRC,#0x06
                           1077 ;	bootloader/bootloader.c:275: P0MDOUT	 =  0x10;		// UART Tx push-pull
   02C6 75 A4 10      [24] 1078 	mov	_P0MDOUT,#0x10
                           1079 ;	bootloader/bootloader.c:276: SFRPAGE	 =  CONFIG_PAGE;
   02C9 75 A7 0F      [24] 1080 	mov	_SFRPAGE,#0x0F
                           1081 ;	bootloader/bootloader.c:277: P0DRV	 =  0x10;		// UART TX
   02CC 75 A4 10      [24] 1082 	mov	_P0DRV,#0x10
                           1083 ;	bootloader/bootloader.c:278: SFRPAGE	 =  LEGACY_PAGE;
   02CF 75 A7 00      [24] 1084 	mov	_SFRPAGE,#0x00
                           1085 ;	bootloader/bootloader.c:279: XBR0	 =  0x01;		// UART enable
   02D2 75 E1 01      [24] 1086 	mov	_XBR0,#0x01
                           1087 ;	bootloader/bootloader.c:282: HW_INIT;
   02D5 43 D4 0C      [24] 1088 	orl	_P0SKIP,#0x0C
   02D8 43 D5 E0      [24] 1089 	orl	_P1SKIP,#0xE0
   02DB 75 A7 0F      [24] 1090 	mov	_SFRPAGE,#0x0F
   02DE 43 A5 F5      [24] 1091 	orl	_P1MDOUT,#0xF5
   02E1 43 A5 F5      [24] 1092 	orl	_P1DRV,#0xF5
   02E4 75 A7 00      [24] 1093 	mov	_SFRPAGE,#0x00
   02E7 74 0F         [12] 1094 	mov	a,#0x0F
   02E9 55 E4         [12] 1095 	anl	a,_IT01CF
   02EB 44 07         [12] 1096 	orl	a,#0x07
   02ED F5 E4         [12] 1097 	mov	_IT01CF,a
   02EF C2 88         [12] 1098 	clr	_IT0
                           1099 ;	bootloader/bootloader.c:284: XBR2	 =  0x40;		// Crossbar (GPIO) enable
   02F1 75 E3 40      [24] 1100 	mov	_XBR2,#0x40
   02F4 22            [24] 1101 	ret
                           1102 	.area CSEG    (CODE)
                           1103 	.area CONST   (CODE)
                           1104 	.area CABS    (ABS,CODE)
