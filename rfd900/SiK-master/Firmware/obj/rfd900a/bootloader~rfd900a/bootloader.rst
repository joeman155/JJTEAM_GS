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
                             15 	.globl _flash_transfer_calibration
                             16 	.globl _flash_read_byte
                             17 	.globl _flash_write_byte
                             18 	.globl _flash_erase_scratch
                             19 	.globl _flash_erase_app
                             20 	.globl _flash_app_valid
                             21 	.globl _NSS1
                             22 	.globl _IRQ
                             23 	.globl _PA_ENABLE
                             24 	.globl _PIN_ENABLE
                             25 	.globl _PIN_CONFIG
                             26 	.globl _LED_GREEN
                             27 	.globl _LED_RED
                             28 	.globl _SPI0EN
                             29 	.globl _TXBMT0
                             30 	.globl _NSS0MD0
                             31 	.globl _NSS0MD1
                             32 	.globl _RXOVRN0
                             33 	.globl _MODF0
                             34 	.globl _WCOL0
                             35 	.globl _SPIF0
                             36 	.globl _AD0CM0
                             37 	.globl _AD0CM1
                             38 	.globl _AD0CM2
                             39 	.globl _AD0WINT
                             40 	.globl _AD0BUSY
                             41 	.globl _AD0INT
                             42 	.globl _BURSTEN
                             43 	.globl _AD0EN
                             44 	.globl _CCF0
                             45 	.globl _CCF1
                             46 	.globl _CCF2
                             47 	.globl _CCF3
                             48 	.globl _CCF4
                             49 	.globl _CCF5
                             50 	.globl _CR
                             51 	.globl _CF
                             52 	.globl _P
                             53 	.globl _F1
                             54 	.globl _OV
                             55 	.globl _RS0
                             56 	.globl _RS1
                             57 	.globl _F0
                             58 	.globl _AC
                             59 	.globl _CY
                             60 	.globl _T2XCLK
                             61 	.globl _T2RCLK
                             62 	.globl _TR2
                             63 	.globl _T2SPLIT
                             64 	.globl _TF2CEN
                             65 	.globl _TF2LEN
                             66 	.globl _TF2L
                             67 	.globl _TF2H
                             68 	.globl _SI
                             69 	.globl _ACK
                             70 	.globl _ARBLOST
                             71 	.globl _ACKRQ
                             72 	.globl _STO
                             73 	.globl _STA
                             74 	.globl _TXMODE
                             75 	.globl _MASTER
                             76 	.globl _PX0
                             77 	.globl _PT0
                             78 	.globl _PX1
                             79 	.globl _PT1
                             80 	.globl _PS0
                             81 	.globl _PT2
                             82 	.globl _PSPI0
                             83 	.globl _SPI1EN
                             84 	.globl _TXBMT1
                             85 	.globl _NSS1MD0
                             86 	.globl _NSS1MD1
                             87 	.globl _RXOVRN1
                             88 	.globl _MODF1
                             89 	.globl _WCOL1
                             90 	.globl _SPIF1
                             91 	.globl _EX0
                             92 	.globl _ET0
                             93 	.globl _EX1
                             94 	.globl _ET1
                             95 	.globl _ES0
                             96 	.globl _ET2
                             97 	.globl _ESPI0
                             98 	.globl _EA
                             99 	.globl _RI0
                            100 	.globl _TI0
                            101 	.globl _RB80
                            102 	.globl _TB80
                            103 	.globl _REN0
                            104 	.globl _MCE0
                            105 	.globl _S0MODE
                            106 	.globl _CRC0VAL
                            107 	.globl _CRC0INIT
                            108 	.globl _CRC0SEL
                            109 	.globl _IT0
                            110 	.globl _IE0
                            111 	.globl _IT1
                            112 	.globl _IE1
                            113 	.globl _TR0
                            114 	.globl _TF0
                            115 	.globl _TR1
                            116 	.globl _TF1
                            117 	.globl _PCA0CP4
                            118 	.globl _PCA0CP0
                            119 	.globl _PCA0
                            120 	.globl _PCA0CP3
                            121 	.globl _PCA0CP2
                            122 	.globl _PCA0CP1
                            123 	.globl _PCA0CP5
                            124 	.globl _TMR2
                            125 	.globl _TMR2RL
                            126 	.globl _ADC0LT
                            127 	.globl _ADC0GT
                            128 	.globl _ADC0
                            129 	.globl _TMR3
                            130 	.globl _TMR3RL
                            131 	.globl _TOFF
                            132 	.globl _DP
                            133 	.globl _VDM0CN
                            134 	.globl _PCA0CPH4
                            135 	.globl _PCA0CPL4
                            136 	.globl _PCA0CPH0
                            137 	.globl _PCA0CPL0
                            138 	.globl _PCA0H
                            139 	.globl _PCA0L
                            140 	.globl _SPI0CN
                            141 	.globl _EIP2
                            142 	.globl _EIP1
                            143 	.globl _SMB0ADM
                            144 	.globl _SMB0ADR
                            145 	.globl _P2MDIN
                            146 	.globl _P1MDIN
                            147 	.globl _P0MDIN
                            148 	.globl _B
                            149 	.globl _RSTSRC
                            150 	.globl _PCA0CPH3
                            151 	.globl _PCA0CPL3
                            152 	.globl _PCA0CPH2
                            153 	.globl _PCA0CPL2
                            154 	.globl _PCA0CPH1
                            155 	.globl _PCA0CPL1
                            156 	.globl _ADC0CN
                            157 	.globl _EIE2
                            158 	.globl _EIE1
                            159 	.globl _FLWR
                            160 	.globl _IT01CF
                            161 	.globl _XBR2
                            162 	.globl _XBR1
                            163 	.globl _XBR0
                            164 	.globl _ACC
                            165 	.globl _PCA0PWM
                            166 	.globl _PCA0CPM4
                            167 	.globl _PCA0CPM3
                            168 	.globl _PCA0CPM2
                            169 	.globl _PCA0CPM1
                            170 	.globl _PCA0CPM0
                            171 	.globl _PCA0MD
                            172 	.globl _PCA0CN
                            173 	.globl _P0MAT
                            174 	.globl _P2SKIP
                            175 	.globl _P1SKIP
                            176 	.globl _P0SKIP
                            177 	.globl _PCA0CPH5
                            178 	.globl _PCA0CPL5
                            179 	.globl _REF0CN
                            180 	.globl _PSW
                            181 	.globl _P1MAT
                            182 	.globl _PCA0CPM5
                            183 	.globl _TMR2H
                            184 	.globl _TMR2L
                            185 	.globl _TMR2RLH
                            186 	.globl _TMR2RLL
                            187 	.globl _REG0CN
                            188 	.globl _TMR2CN
                            189 	.globl _P0MASK
                            190 	.globl _ADC0LTH
                            191 	.globl _ADC0LTL
                            192 	.globl _ADC0GTH
                            193 	.globl _ADC0GTL
                            194 	.globl _SMB0DAT
                            195 	.globl _SMB0CF
                            196 	.globl _SMB0CN
                            197 	.globl _P1MASK
                            198 	.globl _ADC0H
                            199 	.globl _ADC0L
                            200 	.globl _ADC0TK
                            201 	.globl _ADC0CF
                            202 	.globl _ADC0MX
                            203 	.globl _ADC0PWR
                            204 	.globl _ADC0AC
                            205 	.globl _IREF0CN
                            206 	.globl _IP
                            207 	.globl _FLKEY
                            208 	.globl _FLSCL
                            209 	.globl _PMU0CF
                            210 	.globl _OSCICL
                            211 	.globl _OSCICN
                            212 	.globl _OSCXCN
                            213 	.globl _SPI1CN
                            214 	.globl _ONESHOT
                            215 	.globl _EMI0TC
                            216 	.globl _RTC0KEY
                            217 	.globl _RTC0DAT
                            218 	.globl _RTC0ADR
                            219 	.globl _EMI0CF
                            220 	.globl _EMI0CN
                            221 	.globl _CLKSEL
                            222 	.globl _IE
                            223 	.globl _SFRPAGE
                            224 	.globl _P2DRV
                            225 	.globl _P2MDOUT
                            226 	.globl _P1DRV
                            227 	.globl _P1MDOUT
                            228 	.globl _P0DRV
                            229 	.globl _P0MDOUT
                            230 	.globl _SPI0DAT
                            231 	.globl _SPI0CKR
                            232 	.globl _SPI0CFG
                            233 	.globl _P2
                            234 	.globl _CPT0MX
                            235 	.globl _CPT1MX
                            236 	.globl _CPT0MD
                            237 	.globl _CPT1MD
                            238 	.globl _CPT0CN
                            239 	.globl _CPT1CN
                            240 	.globl _SBUF0
                            241 	.globl _SCON0
                            242 	.globl _CRC0CNT
                            243 	.globl _DC0CN
                            244 	.globl _CRC0AUTO
                            245 	.globl _DC0CF
                            246 	.globl _TMR3H
                            247 	.globl _CRC0FLIP
                            248 	.globl _TMR3L
                            249 	.globl _CRC0IN
                            250 	.globl _TMR3RLH
                            251 	.globl _CRC0CN
                            252 	.globl _TMR3RLL
                            253 	.globl _CRC0DAT
                            254 	.globl _TMR3CN
                            255 	.globl _P1
                            256 	.globl _PSCTL
                            257 	.globl _CKCON
                            258 	.globl _TH1
                            259 	.globl _TH0
                            260 	.globl _TL1
                            261 	.globl _TL0
                            262 	.globl _TMOD
                            263 	.globl _TCON
                            264 	.globl _PCON
                            265 	.globl _TOFFH
                            266 	.globl _SPI1DAT
                            267 	.globl _TOFFL
                            268 	.globl _SPI1CKR
                            269 	.globl _SPI1CFG
                            270 	.globl _DPH
                            271 	.globl _DPL
                            272 	.globl _SP
                            273 	.globl _P0
                            274 	.globl _app_valid
                            275 	.globl _debounce_count
                            276 	.globl _reset_source
                            277 	.globl _buf
                            278 ;--------------------------------------------------------
                            279 ; special function registers
                            280 ;--------------------------------------------------------
                            281 	.area RSEG    (ABS,DATA)
   0000                     282 	.org 0x0000
                     0080   283 _P0	=	0x0080
                     0081   284 _SP	=	0x0081
                     0082   285 _DPL	=	0x0082
                     0083   286 _DPH	=	0x0083
                     0084   287 _SPI1CFG	=	0x0084
                     0085   288 _SPI1CKR	=	0x0085
                     0085   289 _TOFFL	=	0x0085
                     0086   290 _SPI1DAT	=	0x0086
                     0086   291 _TOFFH	=	0x0086
                     0087   292 _PCON	=	0x0087
                     0088   293 _TCON	=	0x0088
                     0089   294 _TMOD	=	0x0089
                     008A   295 _TL0	=	0x008a
                     008B   296 _TL1	=	0x008b
                     008C   297 _TH0	=	0x008c
                     008D   298 _TH1	=	0x008d
                     008E   299 _CKCON	=	0x008e
                     008F   300 _PSCTL	=	0x008f
                     0090   301 _P1	=	0x0090
                     0091   302 _TMR3CN	=	0x0091
                     0091   303 _CRC0DAT	=	0x0091
                     0092   304 _TMR3RLL	=	0x0092
                     0092   305 _CRC0CN	=	0x0092
                     0093   306 _TMR3RLH	=	0x0093
                     0093   307 _CRC0IN	=	0x0093
                     0094   308 _TMR3L	=	0x0094
                     0095   309 _CRC0FLIP	=	0x0095
                     0095   310 _TMR3H	=	0x0095
                     0096   311 _DC0CF	=	0x0096
                     0096   312 _CRC0AUTO	=	0x0096
                     0097   313 _DC0CN	=	0x0097
                     0097   314 _CRC0CNT	=	0x0097
                     0098   315 _SCON0	=	0x0098
                     0099   316 _SBUF0	=	0x0099
                     009A   317 _CPT1CN	=	0x009a
                     009B   318 _CPT0CN	=	0x009b
                     009C   319 _CPT1MD	=	0x009c
                     009D   320 _CPT0MD	=	0x009d
                     009E   321 _CPT1MX	=	0x009e
                     009F   322 _CPT0MX	=	0x009f
                     00A0   323 _P2	=	0x00a0
                     00A1   324 _SPI0CFG	=	0x00a1
                     00A2   325 _SPI0CKR	=	0x00a2
                     00A3   326 _SPI0DAT	=	0x00a3
                     00A4   327 _P0MDOUT	=	0x00a4
                     00A4   328 _P0DRV	=	0x00a4
                     00A5   329 _P1MDOUT	=	0x00a5
                     00A5   330 _P1DRV	=	0x00a5
                     00A6   331 _P2MDOUT	=	0x00a6
                     00A6   332 _P2DRV	=	0x00a6
                     00A7   333 _SFRPAGE	=	0x00a7
                     00A8   334 _IE	=	0x00a8
                     00A9   335 _CLKSEL	=	0x00a9
                     00AA   336 _EMI0CN	=	0x00aa
                     00AB   337 _EMI0CF	=	0x00ab
                     00AC   338 _RTC0ADR	=	0x00ac
                     00AD   339 _RTC0DAT	=	0x00ad
                     00AE   340 _RTC0KEY	=	0x00ae
                     00AF   341 _EMI0TC	=	0x00af
                     00AF   342 _ONESHOT	=	0x00af
                     00B0   343 _SPI1CN	=	0x00b0
                     00B1   344 _OSCXCN	=	0x00b1
                     00B2   345 _OSCICN	=	0x00b2
                     00B3   346 _OSCICL	=	0x00b3
                     00B5   347 _PMU0CF	=	0x00b5
                     00B6   348 _FLSCL	=	0x00b6
                     00B7   349 _FLKEY	=	0x00b7
                     00B8   350 _IP	=	0x00b8
                     00B9   351 _IREF0CN	=	0x00b9
                     00BA   352 _ADC0AC	=	0x00ba
                     00BA   353 _ADC0PWR	=	0x00ba
                     00BB   354 _ADC0MX	=	0x00bb
                     00BC   355 _ADC0CF	=	0x00bc
                     00BD   356 _ADC0TK	=	0x00bd
                     00BD   357 _ADC0L	=	0x00bd
                     00BE   358 _ADC0H	=	0x00be
                     00BF   359 _P1MASK	=	0x00bf
                     00C0   360 _SMB0CN	=	0x00c0
                     00C1   361 _SMB0CF	=	0x00c1
                     00C2   362 _SMB0DAT	=	0x00c2
                     00C3   363 _ADC0GTL	=	0x00c3
                     00C4   364 _ADC0GTH	=	0x00c4
                     00C5   365 _ADC0LTL	=	0x00c5
                     00C6   366 _ADC0LTH	=	0x00c6
                     00C7   367 _P0MASK	=	0x00c7
                     00C8   368 _TMR2CN	=	0x00c8
                     00C9   369 _REG0CN	=	0x00c9
                     00CA   370 _TMR2RLL	=	0x00ca
                     00CB   371 _TMR2RLH	=	0x00cb
                     00CC   372 _TMR2L	=	0x00cc
                     00CD   373 _TMR2H	=	0x00cd
                     00CE   374 _PCA0CPM5	=	0x00ce
                     00CF   375 _P1MAT	=	0x00cf
                     00D0   376 _PSW	=	0x00d0
                     00D1   377 _REF0CN	=	0x00d1
                     00D2   378 _PCA0CPL5	=	0x00d2
                     00D3   379 _PCA0CPH5	=	0x00d3
                     00D4   380 _P0SKIP	=	0x00d4
                     00D5   381 _P1SKIP	=	0x00d5
                     00D6   382 _P2SKIP	=	0x00d6
                     00D7   383 _P0MAT	=	0x00d7
                     00D8   384 _PCA0CN	=	0x00d8
                     00D9   385 _PCA0MD	=	0x00d9
                     00DA   386 _PCA0CPM0	=	0x00da
                     00DB   387 _PCA0CPM1	=	0x00db
                     00DC   388 _PCA0CPM2	=	0x00dc
                     00DD   389 _PCA0CPM3	=	0x00dd
                     00DE   390 _PCA0CPM4	=	0x00de
                     00DF   391 _PCA0PWM	=	0x00df
                     00E0   392 _ACC	=	0x00e0
                     00E1   393 _XBR0	=	0x00e1
                     00E2   394 _XBR1	=	0x00e2
                     00E3   395 _XBR2	=	0x00e3
                     00E4   396 _IT01CF	=	0x00e4
                     00E5   397 _FLWR	=	0x00e5
                     00E6   398 _EIE1	=	0x00e6
                     00E7   399 _EIE2	=	0x00e7
                     00E8   400 _ADC0CN	=	0x00e8
                     00E9   401 _PCA0CPL1	=	0x00e9
                     00EA   402 _PCA0CPH1	=	0x00ea
                     00EB   403 _PCA0CPL2	=	0x00eb
                     00EC   404 _PCA0CPH2	=	0x00ec
                     00ED   405 _PCA0CPL3	=	0x00ed
                     00EE   406 _PCA0CPH3	=	0x00ee
                     00EF   407 _RSTSRC	=	0x00ef
                     00F0   408 _B	=	0x00f0
                     00F1   409 _P0MDIN	=	0x00f1
                     00F2   410 _P1MDIN	=	0x00f2
                     00F3   411 _P2MDIN	=	0x00f3
                     00F4   412 _SMB0ADR	=	0x00f4
                     00F5   413 _SMB0ADM	=	0x00f5
                     00F6   414 _EIP1	=	0x00f6
                     00F7   415 _EIP2	=	0x00f7
                     00F8   416 _SPI0CN	=	0x00f8
                     00F9   417 _PCA0L	=	0x00f9
                     00FA   418 _PCA0H	=	0x00fa
                     00FB   419 _PCA0CPL0	=	0x00fb
                     00FC   420 _PCA0CPH0	=	0x00fc
                     00FD   421 _PCA0CPL4	=	0x00fd
                     00FE   422 _PCA0CPH4	=	0x00fe
                     00FF   423 _VDM0CN	=	0x00ff
                     8382   424 _DP	=	0x8382
                     8685   425 _TOFF	=	0x8685
                     9392   426 _TMR3RL	=	0x9392
                     9594   427 _TMR3	=	0x9594
                     BEBD   428 _ADC0	=	0xbebd
                     C4C3   429 _ADC0GT	=	0xc4c3
                     C6C5   430 _ADC0LT	=	0xc6c5
                     CBCA   431 _TMR2RL	=	0xcbca
                     CDCC   432 _TMR2	=	0xcdcc
                     D3D2   433 _PCA0CP5	=	0xd3d2
                     EAE9   434 _PCA0CP1	=	0xeae9
                     ECEB   435 _PCA0CP2	=	0xeceb
                     EEED   436 _PCA0CP3	=	0xeeed
                     FAF9   437 _PCA0	=	0xfaf9
                     FCFB   438 _PCA0CP0	=	0xfcfb
                     FEFD   439 _PCA0CP4	=	0xfefd
                            440 ;--------------------------------------------------------
                            441 ; special function bits
                            442 ;--------------------------------------------------------
                            443 	.area RSEG    (ABS,DATA)
   0000                     444 	.org 0x0000
                     008F   445 _TF1	=	0x008f
                     008E   446 _TR1	=	0x008e
                     008D   447 _TF0	=	0x008d
                     008C   448 _TR0	=	0x008c
                     008B   449 _IE1	=	0x008b
                     008A   450 _IT1	=	0x008a
                     0089   451 _IE0	=	0x0089
                     0088   452 _IT0	=	0x0088
                     0096   453 _CRC0SEL	=	0x0096
                     0095   454 _CRC0INIT	=	0x0095
                     0094   455 _CRC0VAL	=	0x0094
                     009F   456 _S0MODE	=	0x009f
                     009D   457 _MCE0	=	0x009d
                     009C   458 _REN0	=	0x009c
                     009B   459 _TB80	=	0x009b
                     009A   460 _RB80	=	0x009a
                     0099   461 _TI0	=	0x0099
                     0098   462 _RI0	=	0x0098
                     00AF   463 _EA	=	0x00af
                     00AE   464 _ESPI0	=	0x00ae
                     00AD   465 _ET2	=	0x00ad
                     00AC   466 _ES0	=	0x00ac
                     00AB   467 _ET1	=	0x00ab
                     00AA   468 _EX1	=	0x00aa
                     00A9   469 _ET0	=	0x00a9
                     00A8   470 _EX0	=	0x00a8
                     00B7   471 _SPIF1	=	0x00b7
                     00B6   472 _WCOL1	=	0x00b6
                     00B5   473 _MODF1	=	0x00b5
                     00B4   474 _RXOVRN1	=	0x00b4
                     00B3   475 _NSS1MD1	=	0x00b3
                     00B2   476 _NSS1MD0	=	0x00b2
                     00B1   477 _TXBMT1	=	0x00b1
                     00B0   478 _SPI1EN	=	0x00b0
                     00BE   479 _PSPI0	=	0x00be
                     00BD   480 _PT2	=	0x00bd
                     00BC   481 _PS0	=	0x00bc
                     00BB   482 _PT1	=	0x00bb
                     00BA   483 _PX1	=	0x00ba
                     00B9   484 _PT0	=	0x00b9
                     00B8   485 _PX0	=	0x00b8
                     00C7   486 _MASTER	=	0x00c7
                     00C6   487 _TXMODE	=	0x00c6
                     00C5   488 _STA	=	0x00c5
                     00C4   489 _STO	=	0x00c4
                     00C3   490 _ACKRQ	=	0x00c3
                     00C2   491 _ARBLOST	=	0x00c2
                     00C1   492 _ACK	=	0x00c1
                     00C0   493 _SI	=	0x00c0
                     00CF   494 _TF2H	=	0x00cf
                     00CE   495 _TF2L	=	0x00ce
                     00CD   496 _TF2LEN	=	0x00cd
                     00CC   497 _TF2CEN	=	0x00cc
                     00CB   498 _T2SPLIT	=	0x00cb
                     00CA   499 _TR2	=	0x00ca
                     00C9   500 _T2RCLK	=	0x00c9
                     00C8   501 _T2XCLK	=	0x00c8
                     00D7   502 _CY	=	0x00d7
                     00D6   503 _AC	=	0x00d6
                     00D5   504 _F0	=	0x00d5
                     00D4   505 _RS1	=	0x00d4
                     00D3   506 _RS0	=	0x00d3
                     00D2   507 _OV	=	0x00d2
                     00D1   508 _F1	=	0x00d1
                     00D0   509 _P	=	0x00d0
                     00DF   510 _CF	=	0x00df
                     00DE   511 _CR	=	0x00de
                     00DD   512 _CCF5	=	0x00dd
                     00DC   513 _CCF4	=	0x00dc
                     00DB   514 _CCF3	=	0x00db
                     00DA   515 _CCF2	=	0x00da
                     00D9   516 _CCF1	=	0x00d9
                     00D8   517 _CCF0	=	0x00d8
                     00EF   518 _AD0EN	=	0x00ef
                     00EE   519 _BURSTEN	=	0x00ee
                     00ED   520 _AD0INT	=	0x00ed
                     00EC   521 _AD0BUSY	=	0x00ec
                     00EB   522 _AD0WINT	=	0x00eb
                     00EA   523 _AD0CM2	=	0x00ea
                     00E9   524 _AD0CM1	=	0x00e9
                     00E8   525 _AD0CM0	=	0x00e8
                     00FF   526 _SPIF0	=	0x00ff
                     00FE   527 _WCOL0	=	0x00fe
                     00FD   528 _MODF0	=	0x00fd
                     00FC   529 _RXOVRN0	=	0x00fc
                     00FB   530 _NSS0MD1	=	0x00fb
                     00FA   531 _NSS0MD0	=	0x00fa
                     00F9   532 _TXBMT0	=	0x00f9
                     00F8   533 _SPI0EN	=	0x00f8
                     0096   534 _LED_RED	=	0x0096
                     0095   535 _LED_GREEN	=	0x0095
                     0082   536 _PIN_CONFIG	=	0x0082
                     0083   537 _PIN_ENABLE	=	0x0083
                     00A5   538 _PA_ENABLE	=	0x00a5
                     0087   539 _IRQ	=	0x0087
                     0094   540 _NSS1	=	0x0094
                            541 ;--------------------------------------------------------
                            542 ; overlayable register banks
                            543 ;--------------------------------------------------------
                            544 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     545 	.ds 8
                            546 ;--------------------------------------------------------
                            547 ; internal ram data
                            548 ;--------------------------------------------------------
                            549 	.area DSEG    (DATA)
   0021                     550 _buf::
   0021                     551 	.ds 64
   0061                     552 _reset_source::
   0061                     553 	.ds 1
   0062                     554 _debounce_count::
   0062                     555 	.ds 1
   0063                     556 _bootloader_address_1_32:
   0063                     557 	.ds 2
                            558 ;--------------------------------------------------------
                            559 ; overlayable items in internal ram 
                            560 ;--------------------------------------------------------
                            561 	.area	OSEG    (OVR,DATA)
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
   0000                     575 _app_valid::
   0000                     576 	.ds 1
                            577 ;--------------------------------------------------------
                            578 ; paged external ram data
                            579 ;--------------------------------------------------------
                            580 	.area PSEG    (PAG,XDATA)
                            581 ;--------------------------------------------------------
                            582 ; external ram data
                            583 ;--------------------------------------------------------
                            584 	.area XSEG    (XDATA)
                            585 ;--------------------------------------------------------
                            586 ; absolute external ram data
                            587 ;--------------------------------------------------------
                            588 	.area XABS    (ABS,XDATA)
                            589 ;--------------------------------------------------------
                            590 ; external initialized ram data
                            591 ;--------------------------------------------------------
                            592 	.area HOME    (CODE)
                            593 	.area GSINIT0 (CODE)
                            594 	.area GSINIT1 (CODE)
                            595 	.area GSINIT2 (CODE)
                            596 	.area GSINIT3 (CODE)
                            597 	.area GSINIT4 (CODE)
                            598 	.area GSINIT5 (CODE)
                            599 	.area GSINIT  (CODE)
                            600 	.area GSFINAL (CODE)
                            601 	.area CSEG    (CODE)
                            602 ;--------------------------------------------------------
                            603 ; global & static initialisations
                            604 ;--------------------------------------------------------
                            605 	.area HOME    (CODE)
                            606 	.area GSINIT  (CODE)
                            607 	.area GSFINAL (CODE)
                            608 	.area GSINIT  (CODE)
                            609 ;--------------------------------------------------------
                            610 ; Home
                            611 ;--------------------------------------------------------
                            612 	.area HOME    (CODE)
                            613 	.area HOME    (CODE)
                            614 ;--------------------------------------------------------
                            615 ; code
                            616 ;--------------------------------------------------------
                            617 	.area CSEG    (CODE)
                            618 ;------------------------------------------------------------
                            619 ;Allocation info for local variables in function 'bl_main'
                            620 ;------------------------------------------------------------
                            621 ;i                         Allocated to registers r7 
                            622 ;------------------------------------------------------------
                            623 ;	bootloader/bootloader.c:70: bl_main(void)
                            624 ;	-----------------------------------------
                            625 ;	 function bl_main
                            626 ;	-----------------------------------------
   00A3                     627 _bl_main:
                     0007   628 	ar7 = 0x07
                     0006   629 	ar6 = 0x06
                     0005   630 	ar5 = 0x05
                     0004   631 	ar4 = 0x04
                     0003   632 	ar3 = 0x03
                     0002   633 	ar2 = 0x02
                     0001   634 	ar1 = 0x01
                     0000   635 	ar0 = 0x00
                            636 ;	bootloader/bootloader.c:75: hardware_init();
   00A3 12 02 95      [24]  637 	lcall	_hardware_init
                            638 ;	bootloader/bootloader.c:80: reset_source = RSTSRC;
                            639 ;	bootloader/bootloader.c:81: if (reset_source & (1 << 1))
   00A6 E5 EF         [12]  640 	mov	a,_RSTSRC
   00A8 F5 61         [12]  641 	mov	_reset_source,a
   00AA 30 E1 03      [24]  642 	jnb	acc.1,00102$
                            643 ;	bootloader/bootloader.c:82: reset_source = 1 << 1;
   00AD 75 61 02      [24]  644 	mov	_reset_source,#0x02
   00B0                     645 00102$:
                            646 ;	bootloader/bootloader.c:85: app_valid = flash_app_valid();
   00B0 12 F8 00      [24]  647 	lcall	_flash_app_valid
   00B3 E5 82         [12]  648 	mov	a,dpl
   00B5 24 FF         [12]  649 	add	a,#0xff
   00B7 92 00         [24]  650 	mov	_app_valid,c
                            651 ;	bootloader/bootloader.c:89: debounce_count = 0;
   00B9 75 62 00      [24]  652 	mov	_debounce_count,#0x00
                            653 ;	bootloader/bootloader.c:90: for (i = 0; i < 255; i++) {
   00BC 7F FF         [12]  654 	mov	r7,#0xFF
   00BE                     655 00114$:
                            656 ;	bootloader/bootloader.c:91: if (BUTTON_BOOTLOAD == BUTTON_ACTIVE)
   00BE 20 82 02      [24]  657 	jb	_PIN_CONFIG,00104$
                            658 ;	bootloader/bootloader.c:92: debounce_count++;
   00C1 05 62         [12]  659 	inc	_debounce_count
   00C3                     660 00104$:
   00C3 8F 06         [24]  661 	mov	ar6,r7
   00C5 EE            [12]  662 	mov	a,r6
   00C6 14            [12]  663 	dec	a
                            664 ;	bootloader/bootloader.c:90: for (i = 0; i < 255; i++) {
   00C7 FF            [12]  665 	mov	r7,a
   00C8 70 F4         [24]  666 	jnz	00114$
                            667 ;	bootloader/bootloader.c:96: LED_BOOTLOADER = LED_ON;
   00CA D2 96         [12]  668 	setb	_LED_RED
                            669 ;	bootloader/bootloader.c:105: if (!(reset_source & (1 << 6)) && app_valid) {
   00CC E5 61         [12]  670 	mov	a,_reset_source
   00CE 20 E6 19      [24]  671 	jb	acc.6,00115$
   00D1 30 00 16      [24]  672 	jnb	_app_valid,00115$
                            673 ;	bootloader/bootloader.c:110: if (debounce_count < 200) {
   00D4 74 38         [12]  674 	mov	a,#0x100 - 0xC8
   00D6 25 62         [12]  675 	add	a,_debounce_count
   00D8 40 10         [24]  676 	jc	00115$
                            677 ;	bootloader/bootloader.c:113: flash_transfer_calibration();
   00DA 12 F8 9C      [24]  678 	lcall	_flash_transfer_calibration
                            679 ;	bootloader/bootloader.c:119: BOARD_FREQUENCY_REG = board_frequency;
   00DD 90 FB FE      [24]  680 	mov	dptr,#_board_frequency
   00E0 E4            [12]  681 	clr	a
   00E1 93            [24]  682 	movc	a,@a+dptr
   00E2 F5 C4         [12]  683 	mov	_ADC0GTH,a
                            684 ;	bootloader/bootloader.c:120: BOARD_BL_VERSION_REG = BL_VERSION;
   00E4 75 C3 01      [24]  685 	mov	_ADC0GTL,#0x01
                            686 ;	bootloader/bootloader.c:123: ((void (__code *)(void))FLASH_APP_START)();
   00E7 12 04 00      [24]  687 	lcall	0x0400
   00EA                     688 00115$:
                            689 ;	bootloader/bootloader.c:130: bootloader();
   00EA 12 00 EF      [24]  690 	lcall	_bootloader
   00ED 80 FB         [24]  691 	sjmp	00115$
                            692 ;------------------------------------------------------------
                            693 ;Allocation info for local variables in function 'bootloader'
                            694 ;------------------------------------------------------------
                            695 ;address                   Allocated with name '_bootloader_address_1_32'
                            696 ;c                         Allocated to registers r7 
                            697 ;count                     Allocated to registers r6 
                            698 ;i                         Allocated to registers r5 
                            699 ;------------------------------------------------------------
                            700 ;	bootloader/bootloader.c:136: bootloader(void)
                            701 ;	-----------------------------------------
                            702 ;	 function bootloader
                            703 ;	-----------------------------------------
   00EF                     704 _bootloader:
                            705 ;	bootloader/bootloader.c:143: LED_BOOTLOADER = LED_ON;
   00EF D2 96         [12]  706 	setb	_LED_RED
                            707 ;	bootloader/bootloader.c:144: c = cin();
   00F1 12 03 0D      [24]  708 	lcall	_cin
   00F4 AF 82         [24]  709 	mov	r7,dpl
                            710 ;	bootloader/bootloader.c:145: LED_BOOTLOADER = LED_OFF;
   00F6 C2 96         [12]  711 	clr	_LED_RED
                            712 ;	bootloader/bootloader.c:148: switch (c) {
   00F8 BF 21 02      [24]  713 	cjne	r7,#0x21,00205$
   00FB 80 17         [24]  714 	sjmp	00106$
   00FD                     715 00205$:
   00FD BF 22 02      [24]  716 	cjne	r7,#0x22,00206$
   0100 80 12         [24]  717 	sjmp	00106$
   0102                     718 00206$:
   0102 BF 23 02      [24]  719 	cjne	r7,#0x23,00207$
   0105 80 0D         [24]  720 	sjmp	00106$
   0107                     721 00207$:
   0107 BF 26 02      [24]  722 	cjne	r7,#0x26,00208$
   010A 80 08         [24]  723 	sjmp	00106$
   010C                     724 00208$:
   010C BF 29 02      [24]  725 	cjne	r7,#0x29,00209$
   010F 80 03         [24]  726 	sjmp	00106$
   0111                     727 00209$:
   0111 BF 31 0F      [24]  728 	cjne	r7,#0x31,00109$
                            729 ;	bootloader/bootloader.c:154: case PROTO_DEBUG:
   0114                     730 00106$:
                            731 ;	bootloader/bootloader.c:155: if (cin() != PROTO_EOC)
   0114 C0 07         [24]  732 	push	ar7
   0116 12 03 0D      [24]  733 	lcall	_cin
   0119 AE 82         [24]  734 	mov	r6,dpl
   011B D0 07         [24]  735 	pop	ar7
   011D BE 20 02      [24]  736 	cjne	r6,#0x20,00212$
   0120 80 01         [24]  737 	sjmp	00213$
   0122                     738 00212$:
   0122 22            [24]  739 	ret
   0123                     740 00213$:
                            741 ;	bootloader/bootloader.c:157: }
   0123                     742 00109$:
                            743 ;	bootloader/bootloader.c:159: switch (c) {
   0123 BF 21 00      [24]  744 	cjne	r7,#0x21,00214$
   0126                     745 00214$:
   0126 50 01         [24]  746 	jnc	00215$
   0128 22            [24]  747 	ret
   0129                     748 00215$:
   0129 EF            [12]  749 	mov	a,r7
   012A 24 CE         [12]  750 	add	a,#0xff - 0x31
   012C 50 01         [24]  751 	jnc	00216$
   012E 22            [24]  752 	ret
   012F                     753 00216$:
   012F EF            [12]  754 	mov	a,r7
   0130 24 DF         [12]  755 	add	a,#0xDF
   0132 FE            [12]  756 	mov	r6,a
   0133 24 0A         [12]  757 	add	a,#(00217$-3-.)
   0135 83            [24]  758 	movc	a,@a+pc
   0136 F5 82         [12]  759 	mov	dpl,a
   0138 EE            [12]  760 	mov	a,r6
   0139 24 15         [12]  761 	add	a,#(00218$-3-.)
   013B 83            [24]  762 	movc	a,@a+pc
   013C F5 83         [12]  763 	mov	dph,a
   013E E4            [12]  764 	clr	a
   013F 73            [24]  765 	jmp	@a+dptr
   0140                     766 00217$:
   0140 62                  767 	.db	00110$
   0141 65                  768 	.db	00111$
   0142 78                  769 	.db	00112$
   0143 84                  770 	.db	00114$
   0144 A7                  771 	.db	00117$
   0145 D1                  772 	.db	00120$
   0146 E8                  773 	.db	00121$
   0147 48                  774 	.db	00128$
   0148 7E                  775 	.db	00113$
   0149 84                  776 	.db	00134$
   014A 84                  777 	.db	00134$
   014B 84                  778 	.db	00134$
   014C 84                  779 	.db	00134$
   014D 84                  780 	.db	00134$
   014E 84                  781 	.db	00134$
   014F 7F                  782 	.db	00132$
   0150 82                  783 	.db	00133$
   0151                     784 00218$:
   0151 01                  785 	.db	00110$>>8
   0152 01                  786 	.db	00111$>>8
   0153 01                  787 	.db	00112$>>8
   0154 01                  788 	.db	00114$>>8
   0155 01                  789 	.db	00117$>>8
   0156 01                  790 	.db	00120$>>8
   0157 01                  791 	.db	00121$>>8
   0158 02                  792 	.db	00128$>>8
   0159 01                  793 	.db	00113$>>8
   015A 02                  794 	.db	00134$>>8
   015B 02                  795 	.db	00134$>>8
   015C 02                  796 	.db	00134$>>8
   015D 02                  797 	.db	00134$>>8
   015E 02                  798 	.db	00134$>>8
   015F 02                  799 	.db	00134$>>8
   0160 02                  800 	.db	00132$>>8
   0161 02                  801 	.db	00133$>>8
                            802 ;	bootloader/bootloader.c:161: case PROTO_GET_SYNC:		// sync
   0162                     803 00110$:
                            804 ;	bootloader/bootloader.c:162: break;
   0162 02 02 85      [24]  805 	ljmp	00135$
                            806 ;	bootloader/bootloader.c:164: case PROTO_GET_DEVICE:
   0165                     807 00111$:
                            808 ;	bootloader/bootloader.c:165: cout(BOARD_ID);
   0165 75 82 43      [24]  809 	mov	dpl,#0x43
   0168 12 03 03      [24]  810 	lcall	_cout
                            811 ;	bootloader/bootloader.c:166: cout(board_frequency);
   016B 90 FB FE      [24]  812 	mov	dptr,#_board_frequency
   016E E4            [12]  813 	clr	a
   016F 93            [24]  814 	movc	a,@a+dptr
   0170 F5 82         [12]  815 	mov	dpl,a
   0172 12 03 03      [24]  816 	lcall	_cout
                            817 ;	bootloader/bootloader.c:167: break;
   0175 02 02 85      [24]  818 	ljmp	00135$
                            819 ;	bootloader/bootloader.c:169: case PROTO_CHIP_ERASE:		// erase the program area
   0178                     820 00112$:
                            821 ;	bootloader/bootloader.c:170: flash_erase_app();
   0178 12 F8 36      [24]  822 	lcall	_flash_erase_app
                            823 ;	bootloader/bootloader.c:171: break;
   017B 02 02 85      [24]  824 	ljmp	00135$
                            825 ;	bootloader/bootloader.c:173: case PROTO_PARAM_ERASE:
   017E                     826 00113$:
                            827 ;	bootloader/bootloader.c:174: flash_erase_scratch();
   017E 12 F8 5D      [24]  828 	lcall	_flash_erase_scratch
                            829 ;	bootloader/bootloader.c:175: break;
   0181 02 02 85      [24]  830 	ljmp	00135$
                            831 ;	bootloader/bootloader.c:177: case PROTO_LOAD_ADDRESS:	// set address
   0184                     832 00114$:
                            833 ;	bootloader/bootloader.c:178: address = cin();
   0184 12 03 0D      [24]  834 	lcall	_cin
   0187 AE 82         [24]  835 	mov	r6,dpl
   0189 8E 63         [24]  836 	mov	_bootloader_address_1_32,r6
   018B 75 64 00      [24]  837 	mov	(_bootloader_address_1_32 + 1),#0x00
                            838 ;	bootloader/bootloader.c:179: address |= (uint16_t)cin() << 8;
   018E 12 03 0D      [24]  839 	lcall	_cin
   0191 AE 82         [24]  840 	mov	r6,dpl
   0193 8E 05         [24]  841 	mov	ar5,r6
   0195 E4            [12]  842 	clr	a
   0196 42 63         [12]  843 	orl	_bootloader_address_1_32,a
   0198 ED            [12]  844 	mov	a,r5
   0199 42 64         [12]  845 	orl	(_bootloader_address_1_32 + 1),a
                            846 ;	bootloader/bootloader.c:180: if (cin() != PROTO_EOC)
   019B 12 03 0D      [24]  847 	lcall	_cin
   019E AE 82         [24]  848 	mov	r6,dpl
   01A0 BE 20 03      [24]  849 	cjne	r6,#0x20,00219$
   01A3 02 02 85      [24]  850 	ljmp	00135$
   01A6                     851 00219$:
                            852 ;	bootloader/bootloader.c:181: goto cmd_bad;
   01A6 22            [24]  853 	ret
                            854 ;	bootloader/bootloader.c:184: case PROTO_PROG_FLASH:		// program byte
   01A7                     855 00117$:
                            856 ;	bootloader/bootloader.c:185: c = cin();
   01A7 12 03 0D      [24]  857 	lcall	_cin
   01AA AF 82         [24]  858 	mov	r7,dpl
                            859 ;	bootloader/bootloader.c:186: if (cin() != PROTO_EOC)
   01AC C0 07         [24]  860 	push	ar7
   01AE 12 03 0D      [24]  861 	lcall	_cin
   01B1 AE 82         [24]  862 	mov	r6,dpl
   01B3 D0 07         [24]  863 	pop	ar7
   01B5 BE 20 02      [24]  864 	cjne	r6,#0x20,00220$
   01B8 80 01         [24]  865 	sjmp	00221$
   01BA                     866 00220$:
   01BA 22            [24]  867 	ret
   01BB                     868 00221$:
                            869 ;	bootloader/bootloader.c:188: flash_write_byte(address++, c);
   01BB 85 63 82      [24]  870 	mov	dpl,_bootloader_address_1_32
   01BE 85 64 83      [24]  871 	mov	dph,(_bootloader_address_1_32 + 1)
   01C1 05 63         [12]  872 	inc	_bootloader_address_1_32
   01C3 E4            [12]  873 	clr	a
   01C4 B5 63 02      [24]  874 	cjne	a,_bootloader_address_1_32,00222$
   01C7 05 64         [12]  875 	inc	(_bootloader_address_1_32 + 1)
   01C9                     876 00222$:
   01C9 8F 08         [24]  877 	mov	_flash_write_byte_PARM_2,r7
   01CB 12 F8 6D      [24]  878 	lcall	_flash_write_byte
                            879 ;	bootloader/bootloader.c:189: break;
   01CE 02 02 85      [24]  880 	ljmp	00135$
                            881 ;	bootloader/bootloader.c:191: case PROTO_READ_FLASH:		// readback byte
   01D1                     882 00120$:
                            883 ;	bootloader/bootloader.c:192: c = flash_read_byte(address++);
   01D1 85 63 82      [24]  884 	mov	dpl,_bootloader_address_1_32
   01D4 85 64 83      [24]  885 	mov	dph,(_bootloader_address_1_32 + 1)
   01D7 05 63         [12]  886 	inc	_bootloader_address_1_32
   01D9 E4            [12]  887 	clr	a
   01DA B5 63 02      [24]  888 	cjne	a,_bootloader_address_1_32,00223$
   01DD 05 64         [12]  889 	inc	(_bootloader_address_1_32 + 1)
   01DF                     890 00223$:
   01DF 12 F8 97      [24]  891 	lcall	_flash_read_byte
                            892 ;	bootloader/bootloader.c:193: cout(c);
   01E2 12 03 03      [24]  893 	lcall	_cout
                            894 ;	bootloader/bootloader.c:194: break;
   01E5 02 02 85      [24]  895 	ljmp	00135$
                            896 ;	bootloader/bootloader.c:196: case PROTO_PROG_MULTI:
   01E8                     897 00121$:
                            898 ;	bootloader/bootloader.c:197: count = cin();
   01E8 12 03 0D      [24]  899 	lcall	_cin
                            900 ;	bootloader/bootloader.c:198: if (count > sizeof(buf))
   01EB E5 82         [12]  901 	mov	a,dpl
   01ED FE            [12]  902 	mov	r6,a
   01EE 24 BF         [12]  903 	add	a,#0xff - 0x40
   01F0 50 01         [24]  904 	jnc	00224$
   01F2 22            [24]  905 	ret
   01F3                     906 00224$:
                            907 ;	bootloader/bootloader.c:200: for (i = 0; i < count; i++)
   01F3 7D 00         [12]  908 	mov	r5,#0x00
   01F5                     909 00138$:
   01F5 C3            [12]  910 	clr	c
   01F6 ED            [12]  911 	mov	a,r5
   01F7 9E            [12]  912 	subb	a,r6
   01F8 50 19         [24]  913 	jnc	00124$
                            914 ;	bootloader/bootloader.c:201: buf[i] = cin();
   01FA ED            [12]  915 	mov	a,r5
   01FB 24 21         [12]  916 	add	a,#_buf
   01FD F9            [12]  917 	mov	r1,a
   01FE C0 06         [24]  918 	push	ar6
   0200 C0 05         [24]  919 	push	ar5
   0202 C0 01         [24]  920 	push	ar1
   0204 12 03 0D      [24]  921 	lcall	_cin
   0207 E5 82         [12]  922 	mov	a,dpl
   0209 D0 01         [24]  923 	pop	ar1
   020B D0 05         [24]  924 	pop	ar5
   020D D0 06         [24]  925 	pop	ar6
   020F F7            [12]  926 	mov	@r1,a
                            927 ;	bootloader/bootloader.c:200: for (i = 0; i < count; i++)
   0210 0D            [12]  928 	inc	r5
   0211 80 E2         [24]  929 	sjmp	00138$
   0213                     930 00124$:
                            931 ;	bootloader/bootloader.c:202: if (cin() != PROTO_EOC)
   0213 C0 06         [24]  932 	push	ar6
   0215 12 03 0D      [24]  933 	lcall	_cin
   0218 AD 82         [24]  934 	mov	r5,dpl
   021A D0 06         [24]  935 	pop	ar6
   021C BD 20 69      [24]  936 	cjne	r5,#0x20,00136$
                            937 ;	bootloader/bootloader.c:204: for (i = 0; i < count; i++)
   021F 7D 00         [12]  938 	mov	r5,#0x00
   0221                     939 00141$:
   0221 C3            [12]  940 	clr	c
   0222 ED            [12]  941 	mov	a,r5
   0223 9E            [12]  942 	subb	a,r6
   0224 50 5F         [24]  943 	jnc	00135$
                            944 ;	bootloader/bootloader.c:205: flash_write_byte(address++, buf[i]);
   0226 85 63 82      [24]  945 	mov	dpl,_bootloader_address_1_32
   0229 85 64 83      [24]  946 	mov	dph,(_bootloader_address_1_32 + 1)
   022C 05 63         [12]  947 	inc	_bootloader_address_1_32
   022E E4            [12]  948 	clr	a
   022F B5 63 02      [24]  949 	cjne	a,_bootloader_address_1_32,00229$
   0232 05 64         [12]  950 	inc	(_bootloader_address_1_32 + 1)
   0234                     951 00229$:
   0234 ED            [12]  952 	mov	a,r5
   0235 24 21         [12]  953 	add	a,#_buf
   0237 F9            [12]  954 	mov	r1,a
   0238 87 08         [24]  955 	mov	_flash_write_byte_PARM_2,@r1
   023A C0 06         [24]  956 	push	ar6
   023C C0 05         [24]  957 	push	ar5
   023E 12 F8 6D      [24]  958 	lcall	_flash_write_byte
   0241 D0 05         [24]  959 	pop	ar5
   0243 D0 06         [24]  960 	pop	ar6
                            961 ;	bootloader/bootloader.c:204: for (i = 0; i < count; i++)
   0245 0D            [12]  962 	inc	r5
                            963 ;	bootloader/bootloader.c:208: case PROTO_READ_MULTI:
   0246 80 D9         [24]  964 	sjmp	00141$
   0248                     965 00128$:
                            966 ;	bootloader/bootloader.c:209: count = cin();
   0248 12 03 0D      [24]  967 	lcall	_cin
   024B AE 82         [24]  968 	mov	r6,dpl
                            969 ;	bootloader/bootloader.c:210: if (cin() != PROTO_EOC)
   024D C0 06         [24]  970 	push	ar6
   024F 12 03 0D      [24]  971 	lcall	_cin
   0252 AD 82         [24]  972 	mov	r5,dpl
   0254 D0 06         [24]  973 	pop	ar6
   0256 BD 20 2F      [24]  974 	cjne	r5,#0x20,00136$
                            975 ;	bootloader/bootloader.c:212: for (i = 0; i < count; i++) {
   0259 7D 00         [12]  976 	mov	r5,#0x00
   025B                     977 00144$:
   025B C3            [12]  978 	clr	c
   025C ED            [12]  979 	mov	a,r5
   025D 9E            [12]  980 	subb	a,r6
   025E 50 25         [24]  981 	jnc	00135$
                            982 ;	bootloader/bootloader.c:213: c = flash_read_byte(address++);
   0260 85 63 82      [24]  983 	mov	dpl,_bootloader_address_1_32
   0263 85 64 83      [24]  984 	mov	dph,(_bootloader_address_1_32 + 1)
   0266 05 63         [12]  985 	inc	_bootloader_address_1_32
   0268 E4            [12]  986 	clr	a
   0269 B5 63 02      [24]  987 	cjne	a,_bootloader_address_1_32,00233$
   026C 05 64         [12]  988 	inc	(_bootloader_address_1_32 + 1)
   026E                     989 00233$:
   026E C0 06         [24]  990 	push	ar6
   0270 C0 05         [24]  991 	push	ar5
   0272 12 F8 97      [24]  992 	lcall	_flash_read_byte
                            993 ;	bootloader/bootloader.c:214: cout(c);
   0275 12 03 03      [24]  994 	lcall	_cout
   0278 D0 05         [24]  995 	pop	ar5
   027A D0 06         [24]  996 	pop	ar6
                            997 ;	bootloader/bootloader.c:212: for (i = 0; i < count; i++) {
   027C 0D            [12]  998 	inc	r5
                            999 ;	bootloader/bootloader.c:218: case PROTO_REBOOT:
   027D 80 DC         [24] 1000 	sjmp	00144$
   027F                    1001 00132$:
                           1002 ;	bootloader/bootloader.c:220: RSTSRC |= (1 << 4);
   027F 43 EF 10      [24] 1003 	orl	_RSTSRC,#0x10
                           1004 ;	bootloader/bootloader.c:222: case PROTO_DEBUG:
   0282                    1005 00133$:
                           1006 ;	bootloader/bootloader.c:224: break;
                           1007 ;	bootloader/bootloader.c:226: default:
   0282 80 01         [24] 1008 	sjmp	00135$
   0284                    1009 00134$:
                           1010 ;	bootloader/bootloader.c:227: goto cmd_bad;
                           1011 ;	bootloader/bootloader.c:228: }
   0284 22            [24] 1012 	ret
   0285                    1013 00135$:
                           1014 ;	bootloader/bootloader.c:229: sync_response();
                           1015 ;	bootloader/bootloader.c:230: cmd_bad:
                           1016 ;	bootloader/bootloader.c:231: return;
   0285 02 02 89      [24] 1017 	ljmp	_sync_response
   0288                    1018 00136$:
   0288 22            [24] 1019 	ret
                           1020 ;------------------------------------------------------------
                           1021 ;Allocation info for local variables in function 'sync_response'
                           1022 ;------------------------------------------------------------
                           1023 ;	bootloader/bootloader.c:235: sync_response(void)
                           1024 ;	-----------------------------------------
                           1025 ;	 function sync_response
                           1026 ;	-----------------------------------------
   0289                    1027 _sync_response:
                           1028 ;	bootloader/bootloader.c:237: cout(PROTO_INSYNC);	// "in sync"
   0289 75 82 12      [24] 1029 	mov	dpl,#0x12
   028C 12 03 03      [24] 1030 	lcall	_cout
                           1031 ;	bootloader/bootloader.c:238: cout(PROTO_OK);		// "OK"
   028F 75 82 10      [24] 1032 	mov	dpl,#0x10
   0292 02 03 03      [24] 1033 	ljmp	_cout
                           1034 ;------------------------------------------------------------
                           1035 ;Allocation info for local variables in function 'hardware_init'
                           1036 ;------------------------------------------------------------
                           1037 ;i                         Allocated to registers r6 r7 
                           1038 ;------------------------------------------------------------
                           1039 ;	bootloader/bootloader.c:244: hardware_init(void)
                           1040 ;	-----------------------------------------
                           1041 ;	 function hardware_init
                           1042 ;	-----------------------------------------
   0295                    1043 _hardware_init:
                           1044 ;	bootloader/bootloader.c:250: EA	 =  0x00;
   0295 C2 AF         [12] 1045 	clr	_EA
                           1046 ;	bootloader/bootloader.c:253: PCA0MD	&= ~0x40;
   0297 AF D9         [24] 1047 	mov	r7,_PCA0MD
   0299 74 BF         [12] 1048 	mov	a,#0xBF
   029B 5F            [12] 1049 	anl	a,r7
   029C F5 D9         [12] 1050 	mov	_PCA0MD,a
                           1051 ;	bootloader/bootloader.c:256: FLSCL	 =  0x40;
   029E 75 B6 40      [24] 1052 	mov	_FLSCL,#0x40
                           1053 ;	bootloader/bootloader.c:257: OSCICN	 =  0x8F;
   02A1 75 B2 8F      [24] 1054 	mov	_OSCICN,#0x8F
                           1055 ;	bootloader/bootloader.c:258: CLKSEL	 =  0x00;
   02A4 75 A9 00      [24] 1056 	mov	_CLKSEL,#0x00
                           1057 ;	bootloader/bootloader.c:261: TCON	 =  0x40;		// Timer1 on
   02A7 75 88 40      [24] 1058 	mov	_TCON,#0x40
                           1059 ;	bootloader/bootloader.c:262: TMOD	 =  0x20;		// Timer1 8-bit auto-reload
   02AA 75 89 20      [24] 1060 	mov	_TMOD,#0x20
                           1061 ;	bootloader/bootloader.c:263: CKCON	 =  0x08;		// Timer1 from SYSCLK
   02AD 75 8E 08      [24] 1062 	mov	_CKCON,#0x08
                           1063 ;	bootloader/bootloader.c:264: TH1	 =  0x96;		// 115200 bps
   02B0 75 8D 96      [24] 1064 	mov	_TH1,#0x96
                           1065 ;	bootloader/bootloader.c:267: SCON0	 =  0x12;		// enable receiver, set TX ready
   02B3 75 98 12      [24] 1066 	mov	_SCON0,#0x12
                           1067 ;	bootloader/bootloader.c:270: VDM0CN	 =  0x80;
   02B6 75 FF 80      [24] 1068 	mov	_VDM0CN,#0x80
                           1069 ;	bootloader/bootloader.c:271: for (i = 0; i < 350; i++);	// Wait 100us for initialization
   02B9 7E 5E         [12] 1070 	mov	r6,#0x5E
   02BB 7F 01         [12] 1071 	mov	r7,#0x01
   02BD                    1072 00107$:
   02BD 1E            [12] 1073 	dec	r6
   02BE BE FF 01      [24] 1074 	cjne	r6,#0xFF,00117$
   02C1 1F            [12] 1075 	dec	r7
   02C2                    1076 00117$:
   02C2 EE            [12] 1077 	mov	a,r6
   02C3 4F            [12] 1078 	orl	a,r7
   02C4 70 F7         [24] 1079 	jnz	00107$
                           1080 ;	bootloader/bootloader.c:272: RSTSRC	 =  0x06;		// enable brown out and missing clock reset sources
   02C6 75 EF 06      [24] 1081 	mov	_RSTSRC,#0x06
                           1082 ;	bootloader/bootloader.c:275: P0MDOUT	 =  0x10;		// UART Tx push-pull
   02C9 75 A4 10      [24] 1083 	mov	_P0MDOUT,#0x10
                           1084 ;	bootloader/bootloader.c:276: SFRPAGE	 =  CONFIG_PAGE;
   02CC 75 A7 0F      [24] 1085 	mov	_SFRPAGE,#0x0F
                           1086 ;	bootloader/bootloader.c:277: P0DRV	 =  0x10;		// UART TX
   02CF 75 A4 10      [24] 1087 	mov	_P0DRV,#0x10
                           1088 ;	bootloader/bootloader.c:278: SFRPAGE	 =  LEGACY_PAGE;
   02D2 75 A7 00      [24] 1089 	mov	_SFRPAGE,#0x00
                           1090 ;	bootloader/bootloader.c:279: XBR0	 =  0x01;		// UART enable
   02D5 75 E1 01      [24] 1091 	mov	_XBR0,#0x01
                           1092 ;	bootloader/bootloader.c:282: HW_INIT;
   02D8 43 D4 CF      [24] 1093 	orl	_P0SKIP,#0xCF
   02DB 43 D5 78      [24] 1094 	orl	_P1SKIP,#0x78
   02DE E5 D6         [12] 1095 	mov	a,_P2SKIP
   02E0 75 D6 FF      [24] 1096 	mov	_P2SKIP,#0xFF
   02E3 75 A7 0F      [24] 1097 	mov	_SFRPAGE,#0x0F
   02E6 43 A5 F5      [24] 1098 	orl	_P1MDOUT,#0xF5
   02E9 43 A5 F5      [24] 1099 	orl	_P1DRV,#0xF5
   02EC 43 A6 20      [24] 1100 	orl	_P2MDOUT,#0x20
   02EF 43 A6 20      [24] 1101 	orl	_P2DRV,#0x20
   02F2 75 A7 00      [24] 1102 	mov	_SFRPAGE,#0x00
   02F5 74 0F         [12] 1103 	mov	a,#0x0F
   02F7 55 E4         [12] 1104 	anl	a,_IT01CF
   02F9 44 07         [12] 1105 	orl	a,#0x07
   02FB F5 E4         [12] 1106 	mov	_IT01CF,a
   02FD C2 88         [12] 1107 	clr	_IT0
                           1108 ;	bootloader/bootloader.c:284: XBR2	 =  0x40;		// Crossbar (GPIO) enable
   02FF 75 E3 40      [24] 1109 	mov	_XBR2,#0x40
   0302 22            [24] 1110 	ret
                           1111 	.area CSEG    (CODE)
                           1112 	.area CONST   (CODE)
                           1113 	.area CABS    (ABS,CODE)
