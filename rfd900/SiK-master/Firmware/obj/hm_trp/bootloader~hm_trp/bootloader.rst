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
                             20 	.globl _SDN
                             21 	.globl _NSS1
                             22 	.globl _IRQ
                             23 	.globl _PIN_ENABLE
                             24 	.globl _PIN_CONFIG
                             25 	.globl _LED_GREEN
                             26 	.globl _LED_RED
                             27 	.globl _SPI0EN
                             28 	.globl _TXBMT0
                             29 	.globl _NSS0MD0
                             30 	.globl _NSS0MD1
                             31 	.globl _RXOVRN0
                             32 	.globl _MODF0
                             33 	.globl _WCOL0
                             34 	.globl _SPIF0
                             35 	.globl _AD0CM0
                             36 	.globl _AD0CM1
                             37 	.globl _AD0CM2
                             38 	.globl _AD0WINT
                             39 	.globl _AD0BUSY
                             40 	.globl _AD0INT
                             41 	.globl _BURSTEN
                             42 	.globl _AD0EN
                             43 	.globl _CCF0
                             44 	.globl _CCF1
                             45 	.globl _CCF2
                             46 	.globl _CCF3
                             47 	.globl _CCF4
                             48 	.globl _CCF5
                             49 	.globl _CR
                             50 	.globl _CF
                             51 	.globl _P
                             52 	.globl _F1
                             53 	.globl _OV
                             54 	.globl _RS0
                             55 	.globl _RS1
                             56 	.globl _F0
                             57 	.globl _AC
                             58 	.globl _CY
                             59 	.globl _T2XCLK
                             60 	.globl _T2RCLK
                             61 	.globl _TR2
                             62 	.globl _T2SPLIT
                             63 	.globl _TF2CEN
                             64 	.globl _TF2LEN
                             65 	.globl _TF2L
                             66 	.globl _TF2H
                             67 	.globl _SI
                             68 	.globl _ACK
                             69 	.globl _ARBLOST
                             70 	.globl _ACKRQ
                             71 	.globl _STO
                             72 	.globl _STA
                             73 	.globl _TXMODE
                             74 	.globl _MASTER
                             75 	.globl _PX0
                             76 	.globl _PT0
                             77 	.globl _PX1
                             78 	.globl _PT1
                             79 	.globl _PS0
                             80 	.globl _PT2
                             81 	.globl _PSPI0
                             82 	.globl _SPI1EN
                             83 	.globl _TXBMT1
                             84 	.globl _NSS1MD0
                             85 	.globl _NSS1MD1
                             86 	.globl _RXOVRN1
                             87 	.globl _MODF1
                             88 	.globl _WCOL1
                             89 	.globl _SPIF1
                             90 	.globl _EX0
                             91 	.globl _ET0
                             92 	.globl _EX1
                             93 	.globl _ET1
                             94 	.globl _ES0
                             95 	.globl _ET2
                             96 	.globl _ESPI0
                             97 	.globl _EA
                             98 	.globl _RI0
                             99 	.globl _TI0
                            100 	.globl _RB80
                            101 	.globl _TB80
                            102 	.globl _REN0
                            103 	.globl _MCE0
                            104 	.globl _S0MODE
                            105 	.globl _CRC0VAL
                            106 	.globl _CRC0INIT
                            107 	.globl _CRC0SEL
                            108 	.globl _IT0
                            109 	.globl _IE0
                            110 	.globl _IT1
                            111 	.globl _IE1
                            112 	.globl _TR0
                            113 	.globl _TF0
                            114 	.globl _TR1
                            115 	.globl _TF1
                            116 	.globl _PCA0CP4
                            117 	.globl _PCA0CP0
                            118 	.globl _PCA0
                            119 	.globl _PCA0CP3
                            120 	.globl _PCA0CP2
                            121 	.globl _PCA0CP1
                            122 	.globl _PCA0CP5
                            123 	.globl _TMR2
                            124 	.globl _TMR2RL
                            125 	.globl _ADC0LT
                            126 	.globl _ADC0GT
                            127 	.globl _ADC0
                            128 	.globl _TMR3
                            129 	.globl _TMR3RL
                            130 	.globl _TOFF
                            131 	.globl _DP
                            132 	.globl _VDM0CN
                            133 	.globl _PCA0CPH4
                            134 	.globl _PCA0CPL4
                            135 	.globl _PCA0CPH0
                            136 	.globl _PCA0CPL0
                            137 	.globl _PCA0H
                            138 	.globl _PCA0L
                            139 	.globl _SPI0CN
                            140 	.globl _EIP2
                            141 	.globl _EIP1
                            142 	.globl _SMB0ADM
                            143 	.globl _SMB0ADR
                            144 	.globl _P2MDIN
                            145 	.globl _P1MDIN
                            146 	.globl _P0MDIN
                            147 	.globl _B
                            148 	.globl _RSTSRC
                            149 	.globl _PCA0CPH3
                            150 	.globl _PCA0CPL3
                            151 	.globl _PCA0CPH2
                            152 	.globl _PCA0CPL2
                            153 	.globl _PCA0CPH1
                            154 	.globl _PCA0CPL1
                            155 	.globl _ADC0CN
                            156 	.globl _EIE2
                            157 	.globl _EIE1
                            158 	.globl _FLWR
                            159 	.globl _IT01CF
                            160 	.globl _XBR2
                            161 	.globl _XBR1
                            162 	.globl _XBR0
                            163 	.globl _ACC
                            164 	.globl _PCA0PWM
                            165 	.globl _PCA0CPM4
                            166 	.globl _PCA0CPM3
                            167 	.globl _PCA0CPM2
                            168 	.globl _PCA0CPM1
                            169 	.globl _PCA0CPM0
                            170 	.globl _PCA0MD
                            171 	.globl _PCA0CN
                            172 	.globl _P0MAT
                            173 	.globl _P2SKIP
                            174 	.globl _P1SKIP
                            175 	.globl _P0SKIP
                            176 	.globl _PCA0CPH5
                            177 	.globl _PCA0CPL5
                            178 	.globl _REF0CN
                            179 	.globl _PSW
                            180 	.globl _P1MAT
                            181 	.globl _PCA0CPM5
                            182 	.globl _TMR2H
                            183 	.globl _TMR2L
                            184 	.globl _TMR2RLH
                            185 	.globl _TMR2RLL
                            186 	.globl _REG0CN
                            187 	.globl _TMR2CN
                            188 	.globl _P0MASK
                            189 	.globl _ADC0LTH
                            190 	.globl _ADC0LTL
                            191 	.globl _ADC0GTH
                            192 	.globl _ADC0GTL
                            193 	.globl _SMB0DAT
                            194 	.globl _SMB0CF
                            195 	.globl _SMB0CN
                            196 	.globl _P1MASK
                            197 	.globl _ADC0H
                            198 	.globl _ADC0L
                            199 	.globl _ADC0TK
                            200 	.globl _ADC0CF
                            201 	.globl _ADC0MX
                            202 	.globl _ADC0PWR
                            203 	.globl _ADC0AC
                            204 	.globl _IREF0CN
                            205 	.globl _IP
                            206 	.globl _FLKEY
                            207 	.globl _FLSCL
                            208 	.globl _PMU0CF
                            209 	.globl _OSCICL
                            210 	.globl _OSCICN
                            211 	.globl _OSCXCN
                            212 	.globl _SPI1CN
                            213 	.globl _ONESHOT
                            214 	.globl _EMI0TC
                            215 	.globl _RTC0KEY
                            216 	.globl _RTC0DAT
                            217 	.globl _RTC0ADR
                            218 	.globl _EMI0CF
                            219 	.globl _EMI0CN
                            220 	.globl _CLKSEL
                            221 	.globl _IE
                            222 	.globl _SFRPAGE
                            223 	.globl _P2DRV
                            224 	.globl _P2MDOUT
                            225 	.globl _P1DRV
                            226 	.globl _P1MDOUT
                            227 	.globl _P0DRV
                            228 	.globl _P0MDOUT
                            229 	.globl _SPI0DAT
                            230 	.globl _SPI0CKR
                            231 	.globl _SPI0CFG
                            232 	.globl _P2
                            233 	.globl _CPT0MX
                            234 	.globl _CPT1MX
                            235 	.globl _CPT0MD
                            236 	.globl _CPT1MD
                            237 	.globl _CPT0CN
                            238 	.globl _CPT1CN
                            239 	.globl _SBUF0
                            240 	.globl _SCON0
                            241 	.globl _CRC0CNT
                            242 	.globl _DC0CN
                            243 	.globl _CRC0AUTO
                            244 	.globl _DC0CF
                            245 	.globl _TMR3H
                            246 	.globl _CRC0FLIP
                            247 	.globl _TMR3L
                            248 	.globl _CRC0IN
                            249 	.globl _TMR3RLH
                            250 	.globl _CRC0CN
                            251 	.globl _TMR3RLL
                            252 	.globl _CRC0DAT
                            253 	.globl _TMR3CN
                            254 	.globl _P1
                            255 	.globl _PSCTL
                            256 	.globl _CKCON
                            257 	.globl _TH1
                            258 	.globl _TH0
                            259 	.globl _TL1
                            260 	.globl _TL0
                            261 	.globl _TMOD
                            262 	.globl _TCON
                            263 	.globl _PCON
                            264 	.globl _TOFFH
                            265 	.globl _SPI1DAT
                            266 	.globl _TOFFL
                            267 	.globl _SPI1CKR
                            268 	.globl _SPI1CFG
                            269 	.globl _DPH
                            270 	.globl _DPL
                            271 	.globl _SP
                            272 	.globl _P0
                            273 	.globl _app_valid
                            274 	.globl _debounce_count
                            275 	.globl _reset_source
                            276 	.globl _buf
                            277 ;--------------------------------------------------------
                            278 ; special function registers
                            279 ;--------------------------------------------------------
                            280 	.area RSEG    (ABS,DATA)
   0000                     281 	.org 0x0000
                     0080   282 _P0	=	0x0080
                     0081   283 _SP	=	0x0081
                     0082   284 _DPL	=	0x0082
                     0083   285 _DPH	=	0x0083
                     0084   286 _SPI1CFG	=	0x0084
                     0085   287 _SPI1CKR	=	0x0085
                     0085   288 _TOFFL	=	0x0085
                     0086   289 _SPI1DAT	=	0x0086
                     0086   290 _TOFFH	=	0x0086
                     0087   291 _PCON	=	0x0087
                     0088   292 _TCON	=	0x0088
                     0089   293 _TMOD	=	0x0089
                     008A   294 _TL0	=	0x008a
                     008B   295 _TL1	=	0x008b
                     008C   296 _TH0	=	0x008c
                     008D   297 _TH1	=	0x008d
                     008E   298 _CKCON	=	0x008e
                     008F   299 _PSCTL	=	0x008f
                     0090   300 _P1	=	0x0090
                     0091   301 _TMR3CN	=	0x0091
                     0091   302 _CRC0DAT	=	0x0091
                     0092   303 _TMR3RLL	=	0x0092
                     0092   304 _CRC0CN	=	0x0092
                     0093   305 _TMR3RLH	=	0x0093
                     0093   306 _CRC0IN	=	0x0093
                     0094   307 _TMR3L	=	0x0094
                     0095   308 _CRC0FLIP	=	0x0095
                     0095   309 _TMR3H	=	0x0095
                     0096   310 _DC0CF	=	0x0096
                     0096   311 _CRC0AUTO	=	0x0096
                     0097   312 _DC0CN	=	0x0097
                     0097   313 _CRC0CNT	=	0x0097
                     0098   314 _SCON0	=	0x0098
                     0099   315 _SBUF0	=	0x0099
                     009A   316 _CPT1CN	=	0x009a
                     009B   317 _CPT0CN	=	0x009b
                     009C   318 _CPT1MD	=	0x009c
                     009D   319 _CPT0MD	=	0x009d
                     009E   320 _CPT1MX	=	0x009e
                     009F   321 _CPT0MX	=	0x009f
                     00A0   322 _P2	=	0x00a0
                     00A1   323 _SPI0CFG	=	0x00a1
                     00A2   324 _SPI0CKR	=	0x00a2
                     00A3   325 _SPI0DAT	=	0x00a3
                     00A4   326 _P0MDOUT	=	0x00a4
                     00A4   327 _P0DRV	=	0x00a4
                     00A5   328 _P1MDOUT	=	0x00a5
                     00A5   329 _P1DRV	=	0x00a5
                     00A6   330 _P2MDOUT	=	0x00a6
                     00A6   331 _P2DRV	=	0x00a6
                     00A7   332 _SFRPAGE	=	0x00a7
                     00A8   333 _IE	=	0x00a8
                     00A9   334 _CLKSEL	=	0x00a9
                     00AA   335 _EMI0CN	=	0x00aa
                     00AB   336 _EMI0CF	=	0x00ab
                     00AC   337 _RTC0ADR	=	0x00ac
                     00AD   338 _RTC0DAT	=	0x00ad
                     00AE   339 _RTC0KEY	=	0x00ae
                     00AF   340 _EMI0TC	=	0x00af
                     00AF   341 _ONESHOT	=	0x00af
                     00B0   342 _SPI1CN	=	0x00b0
                     00B1   343 _OSCXCN	=	0x00b1
                     00B2   344 _OSCICN	=	0x00b2
                     00B3   345 _OSCICL	=	0x00b3
                     00B5   346 _PMU0CF	=	0x00b5
                     00B6   347 _FLSCL	=	0x00b6
                     00B7   348 _FLKEY	=	0x00b7
                     00B8   349 _IP	=	0x00b8
                     00B9   350 _IREF0CN	=	0x00b9
                     00BA   351 _ADC0AC	=	0x00ba
                     00BA   352 _ADC0PWR	=	0x00ba
                     00BB   353 _ADC0MX	=	0x00bb
                     00BC   354 _ADC0CF	=	0x00bc
                     00BD   355 _ADC0TK	=	0x00bd
                     00BD   356 _ADC0L	=	0x00bd
                     00BE   357 _ADC0H	=	0x00be
                     00BF   358 _P1MASK	=	0x00bf
                     00C0   359 _SMB0CN	=	0x00c0
                     00C1   360 _SMB0CF	=	0x00c1
                     00C2   361 _SMB0DAT	=	0x00c2
                     00C3   362 _ADC0GTL	=	0x00c3
                     00C4   363 _ADC0GTH	=	0x00c4
                     00C5   364 _ADC0LTL	=	0x00c5
                     00C6   365 _ADC0LTH	=	0x00c6
                     00C7   366 _P0MASK	=	0x00c7
                     00C8   367 _TMR2CN	=	0x00c8
                     00C9   368 _REG0CN	=	0x00c9
                     00CA   369 _TMR2RLL	=	0x00ca
                     00CB   370 _TMR2RLH	=	0x00cb
                     00CC   371 _TMR2L	=	0x00cc
                     00CD   372 _TMR2H	=	0x00cd
                     00CE   373 _PCA0CPM5	=	0x00ce
                     00CF   374 _P1MAT	=	0x00cf
                     00D0   375 _PSW	=	0x00d0
                     00D1   376 _REF0CN	=	0x00d1
                     00D2   377 _PCA0CPL5	=	0x00d2
                     00D3   378 _PCA0CPH5	=	0x00d3
                     00D4   379 _P0SKIP	=	0x00d4
                     00D5   380 _P1SKIP	=	0x00d5
                     00D6   381 _P2SKIP	=	0x00d6
                     00D7   382 _P0MAT	=	0x00d7
                     00D8   383 _PCA0CN	=	0x00d8
                     00D9   384 _PCA0MD	=	0x00d9
                     00DA   385 _PCA0CPM0	=	0x00da
                     00DB   386 _PCA0CPM1	=	0x00db
                     00DC   387 _PCA0CPM2	=	0x00dc
                     00DD   388 _PCA0CPM3	=	0x00dd
                     00DE   389 _PCA0CPM4	=	0x00de
                     00DF   390 _PCA0PWM	=	0x00df
                     00E0   391 _ACC	=	0x00e0
                     00E1   392 _XBR0	=	0x00e1
                     00E2   393 _XBR1	=	0x00e2
                     00E3   394 _XBR2	=	0x00e3
                     00E4   395 _IT01CF	=	0x00e4
                     00E5   396 _FLWR	=	0x00e5
                     00E6   397 _EIE1	=	0x00e6
                     00E7   398 _EIE2	=	0x00e7
                     00E8   399 _ADC0CN	=	0x00e8
                     00E9   400 _PCA0CPL1	=	0x00e9
                     00EA   401 _PCA0CPH1	=	0x00ea
                     00EB   402 _PCA0CPL2	=	0x00eb
                     00EC   403 _PCA0CPH2	=	0x00ec
                     00ED   404 _PCA0CPL3	=	0x00ed
                     00EE   405 _PCA0CPH3	=	0x00ee
                     00EF   406 _RSTSRC	=	0x00ef
                     00F0   407 _B	=	0x00f0
                     00F1   408 _P0MDIN	=	0x00f1
                     00F2   409 _P1MDIN	=	0x00f2
                     00F3   410 _P2MDIN	=	0x00f3
                     00F4   411 _SMB0ADR	=	0x00f4
                     00F5   412 _SMB0ADM	=	0x00f5
                     00F6   413 _EIP1	=	0x00f6
                     00F7   414 _EIP2	=	0x00f7
                     00F8   415 _SPI0CN	=	0x00f8
                     00F9   416 _PCA0L	=	0x00f9
                     00FA   417 _PCA0H	=	0x00fa
                     00FB   418 _PCA0CPL0	=	0x00fb
                     00FC   419 _PCA0CPH0	=	0x00fc
                     00FD   420 _PCA0CPL4	=	0x00fd
                     00FE   421 _PCA0CPH4	=	0x00fe
                     00FF   422 _VDM0CN	=	0x00ff
                     8382   423 _DP	=	0x8382
                     8685   424 _TOFF	=	0x8685
                     9392   425 _TMR3RL	=	0x9392
                     9594   426 _TMR3	=	0x9594
                     BEBD   427 _ADC0	=	0xbebd
                     C4C3   428 _ADC0GT	=	0xc4c3
                     C6C5   429 _ADC0LT	=	0xc6c5
                     CBCA   430 _TMR2RL	=	0xcbca
                     CDCC   431 _TMR2	=	0xcdcc
                     D3D2   432 _PCA0CP5	=	0xd3d2
                     EAE9   433 _PCA0CP1	=	0xeae9
                     ECEB   434 _PCA0CP2	=	0xeceb
                     EEED   435 _PCA0CP3	=	0xeeed
                     FAF9   436 _PCA0	=	0xfaf9
                     FCFB   437 _PCA0CP0	=	0xfcfb
                     FEFD   438 _PCA0CP4	=	0xfefd
                            439 ;--------------------------------------------------------
                            440 ; special function bits
                            441 ;--------------------------------------------------------
                            442 	.area RSEG    (ABS,DATA)
   0000                     443 	.org 0x0000
                     008F   444 _TF1	=	0x008f
                     008E   445 _TR1	=	0x008e
                     008D   446 _TF0	=	0x008d
                     008C   447 _TR0	=	0x008c
                     008B   448 _IE1	=	0x008b
                     008A   449 _IT1	=	0x008a
                     0089   450 _IE0	=	0x0089
                     0088   451 _IT0	=	0x0088
                     0096   452 _CRC0SEL	=	0x0096
                     0095   453 _CRC0INIT	=	0x0095
                     0094   454 _CRC0VAL	=	0x0094
                     009F   455 _S0MODE	=	0x009f
                     009D   456 _MCE0	=	0x009d
                     009C   457 _REN0	=	0x009c
                     009B   458 _TB80	=	0x009b
                     009A   459 _RB80	=	0x009a
                     0099   460 _TI0	=	0x0099
                     0098   461 _RI0	=	0x0098
                     00AF   462 _EA	=	0x00af
                     00AE   463 _ESPI0	=	0x00ae
                     00AD   464 _ET2	=	0x00ad
                     00AC   465 _ES0	=	0x00ac
                     00AB   466 _ET1	=	0x00ab
                     00AA   467 _EX1	=	0x00aa
                     00A9   468 _ET0	=	0x00a9
                     00A8   469 _EX0	=	0x00a8
                     00B7   470 _SPIF1	=	0x00b7
                     00B6   471 _WCOL1	=	0x00b6
                     00B5   472 _MODF1	=	0x00b5
                     00B4   473 _RXOVRN1	=	0x00b4
                     00B3   474 _NSS1MD1	=	0x00b3
                     00B2   475 _NSS1MD0	=	0x00b2
                     00B1   476 _TXBMT1	=	0x00b1
                     00B0   477 _SPI1EN	=	0x00b0
                     00BE   478 _PSPI0	=	0x00be
                     00BD   479 _PT2	=	0x00bd
                     00BC   480 _PS0	=	0x00bc
                     00BB   481 _PT1	=	0x00bb
                     00BA   482 _PX1	=	0x00ba
                     00B9   483 _PT0	=	0x00b9
                     00B8   484 _PX0	=	0x00b8
                     00C7   485 _MASTER	=	0x00c7
                     00C6   486 _TXMODE	=	0x00c6
                     00C5   487 _STA	=	0x00c5
                     00C4   488 _STO	=	0x00c4
                     00C3   489 _ACKRQ	=	0x00c3
                     00C2   490 _ARBLOST	=	0x00c2
                     00C1   491 _ACK	=	0x00c1
                     00C0   492 _SI	=	0x00c0
                     00CF   493 _TF2H	=	0x00cf
                     00CE   494 _TF2L	=	0x00ce
                     00CD   495 _TF2LEN	=	0x00cd
                     00CC   496 _TF2CEN	=	0x00cc
                     00CB   497 _T2SPLIT	=	0x00cb
                     00CA   498 _TR2	=	0x00ca
                     00C9   499 _T2RCLK	=	0x00c9
                     00C8   500 _T2XCLK	=	0x00c8
                     00D7   501 _CY	=	0x00d7
                     00D6   502 _AC	=	0x00d6
                     00D5   503 _F0	=	0x00d5
                     00D4   504 _RS1	=	0x00d4
                     00D3   505 _RS0	=	0x00d3
                     00D2   506 _OV	=	0x00d2
                     00D1   507 _F1	=	0x00d1
                     00D0   508 _P	=	0x00d0
                     00DF   509 _CF	=	0x00df
                     00DE   510 _CR	=	0x00de
                     00DD   511 _CCF5	=	0x00dd
                     00DC   512 _CCF4	=	0x00dc
                     00DB   513 _CCF3	=	0x00db
                     00DA   514 _CCF2	=	0x00da
                     00D9   515 _CCF1	=	0x00d9
                     00D8   516 _CCF0	=	0x00d8
                     00EF   517 _AD0EN	=	0x00ef
                     00EE   518 _BURSTEN	=	0x00ee
                     00ED   519 _AD0INT	=	0x00ed
                     00EC   520 _AD0BUSY	=	0x00ec
                     00EB   521 _AD0WINT	=	0x00eb
                     00EA   522 _AD0CM2	=	0x00ea
                     00E9   523 _AD0CM1	=	0x00e9
                     00E8   524 _AD0CM0	=	0x00e8
                     00FF   525 _SPIF0	=	0x00ff
                     00FE   526 _WCOL0	=	0x00fe
                     00FD   527 _MODF0	=	0x00fd
                     00FC   528 _RXOVRN0	=	0x00fc
                     00FB   529 _NSS0MD1	=	0x00fb
                     00FA   530 _NSS0MD0	=	0x00fa
                     00F9   531 _TXBMT0	=	0x00f9
                     00F8   532 _SPI0EN	=	0x00f8
                     0096   533 _LED_RED	=	0x0096
                     0095   534 _LED_GREEN	=	0x0095
                     0082   535 _PIN_CONFIG	=	0x0082
                     0083   536 _PIN_ENABLE	=	0x0083
                     0087   537 _IRQ	=	0x0087
                     0094   538 _NSS1	=	0x0094
                     00A6   539 _SDN	=	0x00a6
                            540 ;--------------------------------------------------------
                            541 ; overlayable register banks
                            542 ;--------------------------------------------------------
                            543 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     544 	.ds 8
                            545 ;--------------------------------------------------------
                            546 ; internal ram data
                            547 ;--------------------------------------------------------
                            548 	.area DSEG    (DATA)
   0021                     549 _buf::
   0021                     550 	.ds 64
   0061                     551 _reset_source::
   0061                     552 	.ds 1
   0062                     553 _debounce_count::
   0062                     554 	.ds 1
   0063                     555 _bootloader_address_1_32:
   0063                     556 	.ds 2
                            557 ;--------------------------------------------------------
                            558 ; overlayable items in internal ram 
                            559 ;--------------------------------------------------------
                            560 	.area	OSEG    (OVR,DATA)
                            561 ;--------------------------------------------------------
                            562 ; indirectly addressable internal ram data
                            563 ;--------------------------------------------------------
                            564 	.area ISEG    (DATA)
                            565 ;--------------------------------------------------------
                            566 ; absolute internal ram data
                            567 ;--------------------------------------------------------
                            568 	.area IABS    (ABS,DATA)
                            569 	.area IABS    (ABS,DATA)
                            570 ;--------------------------------------------------------
                            571 ; bit data
                            572 ;--------------------------------------------------------
                            573 	.area BSEG    (BIT)
   0000                     574 _app_valid::
   0000                     575 	.ds 1
                            576 ;--------------------------------------------------------
                            577 ; paged external ram data
                            578 ;--------------------------------------------------------
                            579 	.area PSEG    (PAG,XDATA)
                            580 ;--------------------------------------------------------
                            581 ; external ram data
                            582 ;--------------------------------------------------------
                            583 	.area XSEG    (XDATA)
                            584 ;--------------------------------------------------------
                            585 ; absolute external ram data
                            586 ;--------------------------------------------------------
                            587 	.area XABS    (ABS,XDATA)
                            588 ;--------------------------------------------------------
                            589 ; external initialized ram data
                            590 ;--------------------------------------------------------
                            591 	.area HOME    (CODE)
                            592 	.area GSINIT0 (CODE)
                            593 	.area GSINIT1 (CODE)
                            594 	.area GSINIT2 (CODE)
                            595 	.area GSINIT3 (CODE)
                            596 	.area GSINIT4 (CODE)
                            597 	.area GSINIT5 (CODE)
                            598 	.area GSINIT  (CODE)
                            599 	.area GSFINAL (CODE)
                            600 	.area CSEG    (CODE)
                            601 ;--------------------------------------------------------
                            602 ; global & static initialisations
                            603 ;--------------------------------------------------------
                            604 	.area HOME    (CODE)
                            605 	.area GSINIT  (CODE)
                            606 	.area GSFINAL (CODE)
                            607 	.area GSINIT  (CODE)
                            608 ;--------------------------------------------------------
                            609 ; Home
                            610 ;--------------------------------------------------------
                            611 	.area HOME    (CODE)
                            612 	.area HOME    (CODE)
                            613 ;--------------------------------------------------------
                            614 ; code
                            615 ;--------------------------------------------------------
                            616 	.area CSEG    (CODE)
                            617 ;------------------------------------------------------------
                            618 ;Allocation info for local variables in function 'bl_main'
                            619 ;------------------------------------------------------------
                            620 ;i                         Allocated to registers r7 
                            621 ;------------------------------------------------------------
                            622 ;	bootloader/bootloader.c:70: bl_main(void)
                            623 ;	-----------------------------------------
                            624 ;	 function bl_main
                            625 ;	-----------------------------------------
   00A3                     626 _bl_main:
                     0007   627 	ar7 = 0x07
                     0006   628 	ar6 = 0x06
                     0005   629 	ar5 = 0x05
                     0004   630 	ar4 = 0x04
                     0003   631 	ar3 = 0x03
                     0002   632 	ar2 = 0x02
                     0001   633 	ar1 = 0x01
                     0000   634 	ar0 = 0x00
                            635 ;	bootloader/bootloader.c:75: hardware_init();
   00A3 12 02 92      [24]  636 	lcall	_hardware_init
                            637 ;	bootloader/bootloader.c:80: reset_source = RSTSRC;
                            638 ;	bootloader/bootloader.c:81: if (reset_source & (1 << 1))
   00A6 E5 EF         [12]  639 	mov	a,_RSTSRC
   00A8 F5 61         [12]  640 	mov	_reset_source,a
   00AA 30 E1 03      [24]  641 	jnb	acc.1,00102$
                            642 ;	bootloader/bootloader.c:82: reset_source = 1 << 1;
   00AD 75 61 02      [24]  643 	mov	_reset_source,#0x02
   00B0                     644 00102$:
                            645 ;	bootloader/bootloader.c:85: app_valid = flash_app_valid();
   00B0 12 F8 00      [24]  646 	lcall	_flash_app_valid
   00B3 E5 82         [12]  647 	mov	a,dpl
   00B5 24 FF         [12]  648 	add	a,#0xff
   00B7 92 00         [24]  649 	mov	_app_valid,c
                            650 ;	bootloader/bootloader.c:89: debounce_count = 0;
   00B9 75 62 00      [24]  651 	mov	_debounce_count,#0x00
                            652 ;	bootloader/bootloader.c:90: for (i = 0; i < 255; i++) {
   00BC 7F FF         [12]  653 	mov	r7,#0xFF
   00BE                     654 00114$:
                            655 ;	bootloader/bootloader.c:91: if (BUTTON_BOOTLOAD == BUTTON_ACTIVE)
   00BE 20 82 02      [24]  656 	jb	_PIN_CONFIG,00104$
                            657 ;	bootloader/bootloader.c:92: debounce_count++;
   00C1 05 62         [12]  658 	inc	_debounce_count
   00C3                     659 00104$:
   00C3 8F 06         [24]  660 	mov	ar6,r7
   00C5 EE            [12]  661 	mov	a,r6
   00C6 14            [12]  662 	dec	a
                            663 ;	bootloader/bootloader.c:90: for (i = 0; i < 255; i++) {
   00C7 FF            [12]  664 	mov	r7,a
   00C8 70 F4         [24]  665 	jnz	00114$
                            666 ;	bootloader/bootloader.c:96: LED_BOOTLOADER = LED_ON;
   00CA C2 96         [12]  667 	clr	_LED_RED
                            668 ;	bootloader/bootloader.c:105: if (!(reset_source & (1 << 6)) && app_valid) {
   00CC E5 61         [12]  669 	mov	a,_reset_source
   00CE 20 E6 16      [24]  670 	jb	acc.6,00115$
   00D1 30 00 13      [24]  671 	jnb	_app_valid,00115$
                            672 ;	bootloader/bootloader.c:110: if (debounce_count < 200) {
   00D4 74 38         [12]  673 	mov	a,#0x100 - 0xC8
   00D6 25 62         [12]  674 	add	a,_debounce_count
   00D8 40 0D         [24]  675 	jc	00115$
                            676 ;	bootloader/bootloader.c:119: BOARD_FREQUENCY_REG = board_frequency;
   00DA 90 FB FE      [24]  677 	mov	dptr,#_board_frequency
   00DD E4            [12]  678 	clr	a
   00DE 93            [24]  679 	movc	a,@a+dptr
   00DF F5 C4         [12]  680 	mov	_ADC0GTH,a
                            681 ;	bootloader/bootloader.c:120: BOARD_BL_VERSION_REG = BL_VERSION;
   00E1 75 C3 01      [24]  682 	mov	_ADC0GTL,#0x01
                            683 ;	bootloader/bootloader.c:123: ((void (__code *)(void))FLASH_APP_START)();
   00E4 12 04 00      [24]  684 	lcall	0x0400
   00E7                     685 00115$:
                            686 ;	bootloader/bootloader.c:130: bootloader();
   00E7 12 00 EC      [24]  687 	lcall	_bootloader
   00EA 80 FB         [24]  688 	sjmp	00115$
                            689 ;------------------------------------------------------------
                            690 ;Allocation info for local variables in function 'bootloader'
                            691 ;------------------------------------------------------------
                            692 ;address                   Allocated with name '_bootloader_address_1_32'
                            693 ;c                         Allocated to registers r7 
                            694 ;count                     Allocated to registers r6 
                            695 ;i                         Allocated to registers r5 
                            696 ;------------------------------------------------------------
                            697 ;	bootloader/bootloader.c:136: bootloader(void)
                            698 ;	-----------------------------------------
                            699 ;	 function bootloader
                            700 ;	-----------------------------------------
   00EC                     701 _bootloader:
                            702 ;	bootloader/bootloader.c:143: LED_BOOTLOADER = LED_ON;
   00EC C2 96         [12]  703 	clr	_LED_RED
                            704 ;	bootloader/bootloader.c:144: c = cin();
   00EE 12 02 FC      [24]  705 	lcall	_cin
   00F1 AF 82         [24]  706 	mov	r7,dpl
                            707 ;	bootloader/bootloader.c:145: LED_BOOTLOADER = LED_OFF;
   00F3 D2 96         [12]  708 	setb	_LED_RED
                            709 ;	bootloader/bootloader.c:148: switch (c) {
   00F5 BF 21 02      [24]  710 	cjne	r7,#0x21,00205$
   00F8 80 17         [24]  711 	sjmp	00106$
   00FA                     712 00205$:
   00FA BF 22 02      [24]  713 	cjne	r7,#0x22,00206$
   00FD 80 12         [24]  714 	sjmp	00106$
   00FF                     715 00206$:
   00FF BF 23 02      [24]  716 	cjne	r7,#0x23,00207$
   0102 80 0D         [24]  717 	sjmp	00106$
   0104                     718 00207$:
   0104 BF 26 02      [24]  719 	cjne	r7,#0x26,00208$
   0107 80 08         [24]  720 	sjmp	00106$
   0109                     721 00208$:
   0109 BF 29 02      [24]  722 	cjne	r7,#0x29,00209$
   010C 80 03         [24]  723 	sjmp	00106$
   010E                     724 00209$:
   010E BF 31 0F      [24]  725 	cjne	r7,#0x31,00109$
                            726 ;	bootloader/bootloader.c:154: case PROTO_DEBUG:
   0111                     727 00106$:
                            728 ;	bootloader/bootloader.c:155: if (cin() != PROTO_EOC)
   0111 C0 07         [24]  729 	push	ar7
   0113 12 02 FC      [24]  730 	lcall	_cin
   0116 AE 82         [24]  731 	mov	r6,dpl
   0118 D0 07         [24]  732 	pop	ar7
   011A BE 20 02      [24]  733 	cjne	r6,#0x20,00212$
   011D 80 01         [24]  734 	sjmp	00213$
   011F                     735 00212$:
   011F 22            [24]  736 	ret
   0120                     737 00213$:
                            738 ;	bootloader/bootloader.c:157: }
   0120                     739 00109$:
                            740 ;	bootloader/bootloader.c:159: switch (c) {
   0120 BF 21 00      [24]  741 	cjne	r7,#0x21,00214$
   0123                     742 00214$:
   0123 50 01         [24]  743 	jnc	00215$
   0125 22            [24]  744 	ret
   0126                     745 00215$:
   0126 EF            [12]  746 	mov	a,r7
   0127 24 CE         [12]  747 	add	a,#0xff - 0x31
   0129 50 01         [24]  748 	jnc	00216$
   012B 22            [24]  749 	ret
   012C                     750 00216$:
   012C EF            [12]  751 	mov	a,r7
   012D 24 DF         [12]  752 	add	a,#0xDF
   012F FE            [12]  753 	mov	r6,a
   0130 24 0A         [12]  754 	add	a,#(00217$-3-.)
   0132 83            [24]  755 	movc	a,@a+pc
   0133 F5 82         [12]  756 	mov	dpl,a
   0135 EE            [12]  757 	mov	a,r6
   0136 24 15         [12]  758 	add	a,#(00218$-3-.)
   0138 83            [24]  759 	movc	a,@a+pc
   0139 F5 83         [12]  760 	mov	dph,a
   013B E4            [12]  761 	clr	a
   013C 73            [24]  762 	jmp	@a+dptr
   013D                     763 00217$:
   013D 5F                  764 	.db	00110$
   013E 62                  765 	.db	00111$
   013F 75                  766 	.db	00112$
   0140 81                  767 	.db	00114$
   0141 A4                  768 	.db	00117$
   0142 CE                  769 	.db	00120$
   0143 E5                  770 	.db	00121$
   0144 45                  771 	.db	00128$
   0145 7B                  772 	.db	00113$
   0146 81                  773 	.db	00134$
   0147 81                  774 	.db	00134$
   0148 81                  775 	.db	00134$
   0149 81                  776 	.db	00134$
   014A 81                  777 	.db	00134$
   014B 81                  778 	.db	00134$
   014C 7C                  779 	.db	00132$
   014D 7F                  780 	.db	00133$
   014E                     781 00218$:
   014E 01                  782 	.db	00110$>>8
   014F 01                  783 	.db	00111$>>8
   0150 01                  784 	.db	00112$>>8
   0151 01                  785 	.db	00114$>>8
   0152 01                  786 	.db	00117$>>8
   0153 01                  787 	.db	00120$>>8
   0154 01                  788 	.db	00121$>>8
   0155 02                  789 	.db	00128$>>8
   0156 01                  790 	.db	00113$>>8
   0157 02                  791 	.db	00134$>>8
   0158 02                  792 	.db	00134$>>8
   0159 02                  793 	.db	00134$>>8
   015A 02                  794 	.db	00134$>>8
   015B 02                  795 	.db	00134$>>8
   015C 02                  796 	.db	00134$>>8
   015D 02                  797 	.db	00132$>>8
   015E 02                  798 	.db	00133$>>8
                            799 ;	bootloader/bootloader.c:161: case PROTO_GET_SYNC:		// sync
   015F                     800 00110$:
                            801 ;	bootloader/bootloader.c:162: break;
   015F 02 02 82      [24]  802 	ljmp	00135$
                            803 ;	bootloader/bootloader.c:164: case PROTO_GET_DEVICE:
   0162                     804 00111$:
                            805 ;	bootloader/bootloader.c:165: cout(BOARD_ID);
   0162 75 82 4E      [24]  806 	mov	dpl,#0x4E
   0165 12 02 F2      [24]  807 	lcall	_cout
                            808 ;	bootloader/bootloader.c:166: cout(board_frequency);
   0168 90 FB FE      [24]  809 	mov	dptr,#_board_frequency
   016B E4            [12]  810 	clr	a
   016C 93            [24]  811 	movc	a,@a+dptr
   016D F5 82         [12]  812 	mov	dpl,a
   016F 12 02 F2      [24]  813 	lcall	_cout
                            814 ;	bootloader/bootloader.c:167: break;
   0172 02 02 82      [24]  815 	ljmp	00135$
                            816 ;	bootloader/bootloader.c:169: case PROTO_CHIP_ERASE:		// erase the program area
   0175                     817 00112$:
                            818 ;	bootloader/bootloader.c:170: flash_erase_app();
   0175 12 F8 36      [24]  819 	lcall	_flash_erase_app
                            820 ;	bootloader/bootloader.c:171: break;
   0178 02 02 82      [24]  821 	ljmp	00135$
                            822 ;	bootloader/bootloader.c:173: case PROTO_PARAM_ERASE:
   017B                     823 00113$:
                            824 ;	bootloader/bootloader.c:174: flash_erase_scratch();
   017B 12 F8 5D      [24]  825 	lcall	_flash_erase_scratch
                            826 ;	bootloader/bootloader.c:175: break;
   017E 02 02 82      [24]  827 	ljmp	00135$
                            828 ;	bootloader/bootloader.c:177: case PROTO_LOAD_ADDRESS:	// set address
   0181                     829 00114$:
                            830 ;	bootloader/bootloader.c:178: address = cin();
   0181 12 02 FC      [24]  831 	lcall	_cin
   0184 AE 82         [24]  832 	mov	r6,dpl
   0186 8E 63         [24]  833 	mov	_bootloader_address_1_32,r6
   0188 75 64 00      [24]  834 	mov	(_bootloader_address_1_32 + 1),#0x00
                            835 ;	bootloader/bootloader.c:179: address |= (uint16_t)cin() << 8;
   018B 12 02 FC      [24]  836 	lcall	_cin
   018E AE 82         [24]  837 	mov	r6,dpl
   0190 8E 05         [24]  838 	mov	ar5,r6
   0192 E4            [12]  839 	clr	a
   0193 42 63         [12]  840 	orl	_bootloader_address_1_32,a
   0195 ED            [12]  841 	mov	a,r5
   0196 42 64         [12]  842 	orl	(_bootloader_address_1_32 + 1),a
                            843 ;	bootloader/bootloader.c:180: if (cin() != PROTO_EOC)
   0198 12 02 FC      [24]  844 	lcall	_cin
   019B AE 82         [24]  845 	mov	r6,dpl
   019D BE 20 03      [24]  846 	cjne	r6,#0x20,00219$
   01A0 02 02 82      [24]  847 	ljmp	00135$
   01A3                     848 00219$:
                            849 ;	bootloader/bootloader.c:181: goto cmd_bad;
   01A3 22            [24]  850 	ret
                            851 ;	bootloader/bootloader.c:184: case PROTO_PROG_FLASH:		// program byte
   01A4                     852 00117$:
                            853 ;	bootloader/bootloader.c:185: c = cin();
   01A4 12 02 FC      [24]  854 	lcall	_cin
   01A7 AF 82         [24]  855 	mov	r7,dpl
                            856 ;	bootloader/bootloader.c:186: if (cin() != PROTO_EOC)
   01A9 C0 07         [24]  857 	push	ar7
   01AB 12 02 FC      [24]  858 	lcall	_cin
   01AE AE 82         [24]  859 	mov	r6,dpl
   01B0 D0 07         [24]  860 	pop	ar7
   01B2 BE 20 02      [24]  861 	cjne	r6,#0x20,00220$
   01B5 80 01         [24]  862 	sjmp	00221$
   01B7                     863 00220$:
   01B7 22            [24]  864 	ret
   01B8                     865 00221$:
                            866 ;	bootloader/bootloader.c:188: flash_write_byte(address++, c);
   01B8 85 63 82      [24]  867 	mov	dpl,_bootloader_address_1_32
   01BB 85 64 83      [24]  868 	mov	dph,(_bootloader_address_1_32 + 1)
   01BE 05 63         [12]  869 	inc	_bootloader_address_1_32
   01C0 E4            [12]  870 	clr	a
   01C1 B5 63 02      [24]  871 	cjne	a,_bootloader_address_1_32,00222$
   01C4 05 64         [12]  872 	inc	(_bootloader_address_1_32 + 1)
   01C6                     873 00222$:
   01C6 8F 08         [24]  874 	mov	_flash_write_byte_PARM_2,r7
   01C8 12 F8 6D      [24]  875 	lcall	_flash_write_byte
                            876 ;	bootloader/bootloader.c:189: break;
   01CB 02 02 82      [24]  877 	ljmp	00135$
                            878 ;	bootloader/bootloader.c:191: case PROTO_READ_FLASH:		// readback byte
   01CE                     879 00120$:
                            880 ;	bootloader/bootloader.c:192: c = flash_read_byte(address++);
   01CE 85 63 82      [24]  881 	mov	dpl,_bootloader_address_1_32
   01D1 85 64 83      [24]  882 	mov	dph,(_bootloader_address_1_32 + 1)
   01D4 05 63         [12]  883 	inc	_bootloader_address_1_32
   01D6 E4            [12]  884 	clr	a
   01D7 B5 63 02      [24]  885 	cjne	a,_bootloader_address_1_32,00223$
   01DA 05 64         [12]  886 	inc	(_bootloader_address_1_32 + 1)
   01DC                     887 00223$:
   01DC 12 F8 97      [24]  888 	lcall	_flash_read_byte
                            889 ;	bootloader/bootloader.c:193: cout(c);
   01DF 12 02 F2      [24]  890 	lcall	_cout
                            891 ;	bootloader/bootloader.c:194: break;
   01E2 02 02 82      [24]  892 	ljmp	00135$
                            893 ;	bootloader/bootloader.c:196: case PROTO_PROG_MULTI:
   01E5                     894 00121$:
                            895 ;	bootloader/bootloader.c:197: count = cin();
   01E5 12 02 FC      [24]  896 	lcall	_cin
                            897 ;	bootloader/bootloader.c:198: if (count > sizeof(buf))
   01E8 E5 82         [12]  898 	mov	a,dpl
   01EA FE            [12]  899 	mov	r6,a
   01EB 24 BF         [12]  900 	add	a,#0xff - 0x40
   01ED 50 01         [24]  901 	jnc	00224$
   01EF 22            [24]  902 	ret
   01F0                     903 00224$:
                            904 ;	bootloader/bootloader.c:200: for (i = 0; i < count; i++)
   01F0 7D 00         [12]  905 	mov	r5,#0x00
   01F2                     906 00138$:
   01F2 C3            [12]  907 	clr	c
   01F3 ED            [12]  908 	mov	a,r5
   01F4 9E            [12]  909 	subb	a,r6
   01F5 50 19         [24]  910 	jnc	00124$
                            911 ;	bootloader/bootloader.c:201: buf[i] = cin();
   01F7 ED            [12]  912 	mov	a,r5
   01F8 24 21         [12]  913 	add	a,#_buf
   01FA F9            [12]  914 	mov	r1,a
   01FB C0 06         [24]  915 	push	ar6
   01FD C0 05         [24]  916 	push	ar5
   01FF C0 01         [24]  917 	push	ar1
   0201 12 02 FC      [24]  918 	lcall	_cin
   0204 E5 82         [12]  919 	mov	a,dpl
   0206 D0 01         [24]  920 	pop	ar1
   0208 D0 05         [24]  921 	pop	ar5
   020A D0 06         [24]  922 	pop	ar6
   020C F7            [12]  923 	mov	@r1,a
                            924 ;	bootloader/bootloader.c:200: for (i = 0; i < count; i++)
   020D 0D            [12]  925 	inc	r5
   020E 80 E2         [24]  926 	sjmp	00138$
   0210                     927 00124$:
                            928 ;	bootloader/bootloader.c:202: if (cin() != PROTO_EOC)
   0210 C0 06         [24]  929 	push	ar6
   0212 12 02 FC      [24]  930 	lcall	_cin
   0215 AD 82         [24]  931 	mov	r5,dpl
   0217 D0 06         [24]  932 	pop	ar6
   0219 BD 20 69      [24]  933 	cjne	r5,#0x20,00136$
                            934 ;	bootloader/bootloader.c:204: for (i = 0; i < count; i++)
   021C 7D 00         [12]  935 	mov	r5,#0x00
   021E                     936 00141$:
   021E C3            [12]  937 	clr	c
   021F ED            [12]  938 	mov	a,r5
   0220 9E            [12]  939 	subb	a,r6
   0221 50 5F         [24]  940 	jnc	00135$
                            941 ;	bootloader/bootloader.c:205: flash_write_byte(address++, buf[i]);
   0223 85 63 82      [24]  942 	mov	dpl,_bootloader_address_1_32
   0226 85 64 83      [24]  943 	mov	dph,(_bootloader_address_1_32 + 1)
   0229 05 63         [12]  944 	inc	_bootloader_address_1_32
   022B E4            [12]  945 	clr	a
   022C B5 63 02      [24]  946 	cjne	a,_bootloader_address_1_32,00229$
   022F 05 64         [12]  947 	inc	(_bootloader_address_1_32 + 1)
   0231                     948 00229$:
   0231 ED            [12]  949 	mov	a,r5
   0232 24 21         [12]  950 	add	a,#_buf
   0234 F9            [12]  951 	mov	r1,a
   0235 87 08         [24]  952 	mov	_flash_write_byte_PARM_2,@r1
   0237 C0 06         [24]  953 	push	ar6
   0239 C0 05         [24]  954 	push	ar5
   023B 12 F8 6D      [24]  955 	lcall	_flash_write_byte
   023E D0 05         [24]  956 	pop	ar5
   0240 D0 06         [24]  957 	pop	ar6
                            958 ;	bootloader/bootloader.c:204: for (i = 0; i < count; i++)
   0242 0D            [12]  959 	inc	r5
                            960 ;	bootloader/bootloader.c:208: case PROTO_READ_MULTI:
   0243 80 D9         [24]  961 	sjmp	00141$
   0245                     962 00128$:
                            963 ;	bootloader/bootloader.c:209: count = cin();
   0245 12 02 FC      [24]  964 	lcall	_cin
   0248 AE 82         [24]  965 	mov	r6,dpl
                            966 ;	bootloader/bootloader.c:210: if (cin() != PROTO_EOC)
   024A C0 06         [24]  967 	push	ar6
   024C 12 02 FC      [24]  968 	lcall	_cin
   024F AD 82         [24]  969 	mov	r5,dpl
   0251 D0 06         [24]  970 	pop	ar6
   0253 BD 20 2F      [24]  971 	cjne	r5,#0x20,00136$
                            972 ;	bootloader/bootloader.c:212: for (i = 0; i < count; i++) {
   0256 7D 00         [12]  973 	mov	r5,#0x00
   0258                     974 00144$:
   0258 C3            [12]  975 	clr	c
   0259 ED            [12]  976 	mov	a,r5
   025A 9E            [12]  977 	subb	a,r6
   025B 50 25         [24]  978 	jnc	00135$
                            979 ;	bootloader/bootloader.c:213: c = flash_read_byte(address++);
   025D 85 63 82      [24]  980 	mov	dpl,_bootloader_address_1_32
   0260 85 64 83      [24]  981 	mov	dph,(_bootloader_address_1_32 + 1)
   0263 05 63         [12]  982 	inc	_bootloader_address_1_32
   0265 E4            [12]  983 	clr	a
   0266 B5 63 02      [24]  984 	cjne	a,_bootloader_address_1_32,00233$
   0269 05 64         [12]  985 	inc	(_bootloader_address_1_32 + 1)
   026B                     986 00233$:
   026B C0 06         [24]  987 	push	ar6
   026D C0 05         [24]  988 	push	ar5
   026F 12 F8 97      [24]  989 	lcall	_flash_read_byte
                            990 ;	bootloader/bootloader.c:214: cout(c);
   0272 12 02 F2      [24]  991 	lcall	_cout
   0275 D0 05         [24]  992 	pop	ar5
   0277 D0 06         [24]  993 	pop	ar6
                            994 ;	bootloader/bootloader.c:212: for (i = 0; i < count; i++) {
   0279 0D            [12]  995 	inc	r5
                            996 ;	bootloader/bootloader.c:218: case PROTO_REBOOT:
   027A 80 DC         [24]  997 	sjmp	00144$
   027C                     998 00132$:
                            999 ;	bootloader/bootloader.c:220: RSTSRC |= (1 << 4);
   027C 43 EF 10      [24] 1000 	orl	_RSTSRC,#0x10
                           1001 ;	bootloader/bootloader.c:222: case PROTO_DEBUG:
   027F                    1002 00133$:
                           1003 ;	bootloader/bootloader.c:224: break;
                           1004 ;	bootloader/bootloader.c:226: default:
   027F 80 01         [24] 1005 	sjmp	00135$
   0281                    1006 00134$:
                           1007 ;	bootloader/bootloader.c:227: goto cmd_bad;
                           1008 ;	bootloader/bootloader.c:228: }
   0281 22            [24] 1009 	ret
   0282                    1010 00135$:
                           1011 ;	bootloader/bootloader.c:229: sync_response();
                           1012 ;	bootloader/bootloader.c:230: cmd_bad:
                           1013 ;	bootloader/bootloader.c:231: return;
   0282 02 02 86      [24] 1014 	ljmp	_sync_response
   0285                    1015 00136$:
   0285 22            [24] 1016 	ret
                           1017 ;------------------------------------------------------------
                           1018 ;Allocation info for local variables in function 'sync_response'
                           1019 ;------------------------------------------------------------
                           1020 ;	bootloader/bootloader.c:235: sync_response(void)
                           1021 ;	-----------------------------------------
                           1022 ;	 function sync_response
                           1023 ;	-----------------------------------------
   0286                    1024 _sync_response:
                           1025 ;	bootloader/bootloader.c:237: cout(PROTO_INSYNC);	// "in sync"
   0286 75 82 12      [24] 1026 	mov	dpl,#0x12
   0289 12 02 F2      [24] 1027 	lcall	_cout
                           1028 ;	bootloader/bootloader.c:238: cout(PROTO_OK);		// "OK"
   028C 75 82 10      [24] 1029 	mov	dpl,#0x10
   028F 02 02 F2      [24] 1030 	ljmp	_cout
                           1031 ;------------------------------------------------------------
                           1032 ;Allocation info for local variables in function 'hardware_init'
                           1033 ;------------------------------------------------------------
                           1034 ;i                         Allocated to registers r6 r7 
                           1035 ;------------------------------------------------------------
                           1036 ;	bootloader/bootloader.c:244: hardware_init(void)
                           1037 ;	-----------------------------------------
                           1038 ;	 function hardware_init
                           1039 ;	-----------------------------------------
   0292                    1040 _hardware_init:
                           1041 ;	bootloader/bootloader.c:250: EA	 =  0x00;
   0292 C2 AF         [12] 1042 	clr	_EA
                           1043 ;	bootloader/bootloader.c:253: PCA0MD	&= ~0x40;
   0294 AF D9         [24] 1044 	mov	r7,_PCA0MD
   0296 74 BF         [12] 1045 	mov	a,#0xBF
   0298 5F            [12] 1046 	anl	a,r7
   0299 F5 D9         [12] 1047 	mov	_PCA0MD,a
                           1048 ;	bootloader/bootloader.c:256: FLSCL	 =  0x40;
   029B 75 B6 40      [24] 1049 	mov	_FLSCL,#0x40
                           1050 ;	bootloader/bootloader.c:257: OSCICN	 =  0x8F;
   029E 75 B2 8F      [24] 1051 	mov	_OSCICN,#0x8F
                           1052 ;	bootloader/bootloader.c:258: CLKSEL	 =  0x00;
   02A1 75 A9 00      [24] 1053 	mov	_CLKSEL,#0x00
                           1054 ;	bootloader/bootloader.c:261: TCON	 =  0x40;		// Timer1 on
   02A4 75 88 40      [24] 1055 	mov	_TCON,#0x40
                           1056 ;	bootloader/bootloader.c:262: TMOD	 =  0x20;		// Timer1 8-bit auto-reload
   02A7 75 89 20      [24] 1057 	mov	_TMOD,#0x20
                           1058 ;	bootloader/bootloader.c:263: CKCON	 =  0x08;		// Timer1 from SYSCLK
   02AA 75 8E 08      [24] 1059 	mov	_CKCON,#0x08
                           1060 ;	bootloader/bootloader.c:264: TH1	 =  0x96;		// 115200 bps
   02AD 75 8D 96      [24] 1061 	mov	_TH1,#0x96
                           1062 ;	bootloader/bootloader.c:267: SCON0	 =  0x12;		// enable receiver, set TX ready
   02B0 75 98 12      [24] 1063 	mov	_SCON0,#0x12
                           1064 ;	bootloader/bootloader.c:270: VDM0CN	 =  0x80;
   02B3 75 FF 80      [24] 1065 	mov	_VDM0CN,#0x80
                           1066 ;	bootloader/bootloader.c:271: for (i = 0; i < 350; i++);	// Wait 100us for initialization
   02B6 7E 5E         [12] 1067 	mov	r6,#0x5E
   02B8 7F 01         [12] 1068 	mov	r7,#0x01
   02BA                    1069 00107$:
   02BA 1E            [12] 1070 	dec	r6
   02BB BE FF 01      [24] 1071 	cjne	r6,#0xFF,00117$
   02BE 1F            [12] 1072 	dec	r7
   02BF                    1073 00117$:
   02BF EE            [12] 1074 	mov	a,r6
   02C0 4F            [12] 1075 	orl	a,r7
   02C1 70 F7         [24] 1076 	jnz	00107$
                           1077 ;	bootloader/bootloader.c:272: RSTSRC	 =  0x06;		// enable brown out and missing clock reset sources
   02C3 75 EF 06      [24] 1078 	mov	_RSTSRC,#0x06
                           1079 ;	bootloader/bootloader.c:275: P0MDOUT	 =  0x10;		// UART Tx push-pull
   02C6 75 A4 10      [24] 1080 	mov	_P0MDOUT,#0x10
                           1081 ;	bootloader/bootloader.c:276: SFRPAGE	 =  CONFIG_PAGE;
   02C9 75 A7 0F      [24] 1082 	mov	_SFRPAGE,#0x0F
                           1083 ;	bootloader/bootloader.c:277: P0DRV	 =  0x10;		// UART TX
   02CC 75 A4 10      [24] 1084 	mov	_P0DRV,#0x10
                           1085 ;	bootloader/bootloader.c:278: SFRPAGE	 =  LEGACY_PAGE;
   02CF 75 A7 00      [24] 1086 	mov	_SFRPAGE,#0x00
                           1087 ;	bootloader/bootloader.c:279: XBR0	 =  0x01;		// UART enable
   02D2 75 E1 01      [24] 1088 	mov	_XBR0,#0x01
                           1089 ;	bootloader/bootloader.c:282: HW_INIT;
   02D5 43 D4 0C      [24] 1090 	orl	_P0SKIP,#0x0C
   02D8 43 D5 60      [24] 1091 	orl	_P1SKIP,#0x60
   02DB 75 A7 0F      [24] 1092 	mov	_SFRPAGE,#0x0F
   02DE 43 A5 60      [24] 1093 	orl	_P1DRV,#0x60
   02E1 75 A7 00      [24] 1094 	mov	_SFRPAGE,#0x00
   02E4 74 0F         [12] 1095 	mov	a,#0x0F
   02E6 55 E4         [12] 1096 	anl	a,_IT01CF
   02E8 44 07         [12] 1097 	orl	a,#0x07
   02EA F5 E4         [12] 1098 	mov	_IT01CF,a
   02EC C2 88         [12] 1099 	clr	_IT0
                           1100 ;	bootloader/bootloader.c:284: XBR2	 =  0x40;		// Crossbar (GPIO) enable
   02EE 75 E3 40      [24] 1101 	mov	_XBR2,#0x40
   02F1 22            [24] 1102 	ret
                           1103 	.area CSEG    (CODE)
                           1104 	.area CONST   (CODE)
                           1105 	.area CABS    (ABS,CODE)
