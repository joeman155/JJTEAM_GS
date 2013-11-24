                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:13 2013
                              5 ;--------------------------------------------------------
                              6 	.module packet
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _timer2_tick
                             13 	.globl _serial_read_available
                             14 	.globl _serial_read_buf
                             15 	.globl _serial_peek2
                             16 	.globl _serial_peek
                             17 	.globl _serial_read
                             18 	.globl _memcmp
                             19 	.globl _memcpy
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
                            272 	.globl _packet_inject_PARM_2
                            273 	.globl _packet_is_duplicate_PARM_2
                            274 	.globl _packet_get_next_PARM_2
                            275 	.globl _packet_is_duplicate_PARM_3
                            276 	.globl _using_mavlink_10
                            277 	.globl _seen_mavlink
                            278 	.globl _packet_get_next
                            279 	.globl _packet_is_resend
                            280 	.globl _packet_is_injected
                            281 	.globl _packet_force_resend
                            282 	.globl _packet_set_max_xmit
                            283 	.globl _packet_set_serial_speed
                            284 	.globl _packet_is_duplicate
                            285 	.globl _packet_inject
                            286 ;--------------------------------------------------------
                            287 ; special function registers
                            288 ;--------------------------------------------------------
                            289 	.area RSEG    (ABS,DATA)
   0000                     290 	.org 0x0000
                     0080   291 _P0	=	0x0080
                     0081   292 _SP	=	0x0081
                     0082   293 _DPL	=	0x0082
                     0083   294 _DPH	=	0x0083
                     0084   295 _SPI1CFG	=	0x0084
                     0085   296 _SPI1CKR	=	0x0085
                     0085   297 _TOFFL	=	0x0085
                     0086   298 _SPI1DAT	=	0x0086
                     0086   299 _TOFFH	=	0x0086
                     0087   300 _PCON	=	0x0087
                     0088   301 _TCON	=	0x0088
                     0089   302 _TMOD	=	0x0089
                     008A   303 _TL0	=	0x008a
                     008B   304 _TL1	=	0x008b
                     008C   305 _TH0	=	0x008c
                     008D   306 _TH1	=	0x008d
                     008E   307 _CKCON	=	0x008e
                     008F   308 _PSCTL	=	0x008f
                     0090   309 _P1	=	0x0090
                     0091   310 _TMR3CN	=	0x0091
                     0091   311 _CRC0DAT	=	0x0091
                     0092   312 _TMR3RLL	=	0x0092
                     0092   313 _CRC0CN	=	0x0092
                     0093   314 _TMR3RLH	=	0x0093
                     0093   315 _CRC0IN	=	0x0093
                     0094   316 _TMR3L	=	0x0094
                     0095   317 _CRC0FLIP	=	0x0095
                     0095   318 _TMR3H	=	0x0095
                     0096   319 _DC0CF	=	0x0096
                     0096   320 _CRC0AUTO	=	0x0096
                     0097   321 _DC0CN	=	0x0097
                     0097   322 _CRC0CNT	=	0x0097
                     0098   323 _SCON0	=	0x0098
                     0099   324 _SBUF0	=	0x0099
                     009A   325 _CPT1CN	=	0x009a
                     009B   326 _CPT0CN	=	0x009b
                     009C   327 _CPT1MD	=	0x009c
                     009D   328 _CPT0MD	=	0x009d
                     009E   329 _CPT1MX	=	0x009e
                     009F   330 _CPT0MX	=	0x009f
                     00A0   331 _P2	=	0x00a0
                     00A1   332 _SPI0CFG	=	0x00a1
                     00A2   333 _SPI0CKR	=	0x00a2
                     00A3   334 _SPI0DAT	=	0x00a3
                     00A4   335 _P0MDOUT	=	0x00a4
                     00A4   336 _P0DRV	=	0x00a4
                     00A5   337 _P1MDOUT	=	0x00a5
                     00A5   338 _P1DRV	=	0x00a5
                     00A6   339 _P2MDOUT	=	0x00a6
                     00A6   340 _P2DRV	=	0x00a6
                     00A7   341 _SFRPAGE	=	0x00a7
                     00A8   342 _IE	=	0x00a8
                     00A9   343 _CLKSEL	=	0x00a9
                     00AA   344 _EMI0CN	=	0x00aa
                     00AB   345 _EMI0CF	=	0x00ab
                     00AC   346 _RTC0ADR	=	0x00ac
                     00AD   347 _RTC0DAT	=	0x00ad
                     00AE   348 _RTC0KEY	=	0x00ae
                     00AF   349 _EMI0TC	=	0x00af
                     00AF   350 _ONESHOT	=	0x00af
                     00B0   351 _SPI1CN	=	0x00b0
                     00B1   352 _OSCXCN	=	0x00b1
                     00B2   353 _OSCICN	=	0x00b2
                     00B3   354 _OSCICL	=	0x00b3
                     00B5   355 _PMU0CF	=	0x00b5
                     00B6   356 _FLSCL	=	0x00b6
                     00B7   357 _FLKEY	=	0x00b7
                     00B8   358 _IP	=	0x00b8
                     00B9   359 _IREF0CN	=	0x00b9
                     00BA   360 _ADC0AC	=	0x00ba
                     00BA   361 _ADC0PWR	=	0x00ba
                     00BB   362 _ADC0MX	=	0x00bb
                     00BC   363 _ADC0CF	=	0x00bc
                     00BD   364 _ADC0TK	=	0x00bd
                     00BD   365 _ADC0L	=	0x00bd
                     00BE   366 _ADC0H	=	0x00be
                     00BF   367 _P1MASK	=	0x00bf
                     00C0   368 _SMB0CN	=	0x00c0
                     00C1   369 _SMB0CF	=	0x00c1
                     00C2   370 _SMB0DAT	=	0x00c2
                     00C3   371 _ADC0GTL	=	0x00c3
                     00C4   372 _ADC0GTH	=	0x00c4
                     00C5   373 _ADC0LTL	=	0x00c5
                     00C6   374 _ADC0LTH	=	0x00c6
                     00C7   375 _P0MASK	=	0x00c7
                     00C8   376 _TMR2CN	=	0x00c8
                     00C9   377 _REG0CN	=	0x00c9
                     00CA   378 _TMR2RLL	=	0x00ca
                     00CB   379 _TMR2RLH	=	0x00cb
                     00CC   380 _TMR2L	=	0x00cc
                     00CD   381 _TMR2H	=	0x00cd
                     00CE   382 _PCA0CPM5	=	0x00ce
                     00CF   383 _P1MAT	=	0x00cf
                     00D0   384 _PSW	=	0x00d0
                     00D1   385 _REF0CN	=	0x00d1
                     00D2   386 _PCA0CPL5	=	0x00d2
                     00D3   387 _PCA0CPH5	=	0x00d3
                     00D4   388 _P0SKIP	=	0x00d4
                     00D5   389 _P1SKIP	=	0x00d5
                     00D6   390 _P2SKIP	=	0x00d6
                     00D7   391 _P0MAT	=	0x00d7
                     00D8   392 _PCA0CN	=	0x00d8
                     00D9   393 _PCA0MD	=	0x00d9
                     00DA   394 _PCA0CPM0	=	0x00da
                     00DB   395 _PCA0CPM1	=	0x00db
                     00DC   396 _PCA0CPM2	=	0x00dc
                     00DD   397 _PCA0CPM3	=	0x00dd
                     00DE   398 _PCA0CPM4	=	0x00de
                     00DF   399 _PCA0PWM	=	0x00df
                     00E0   400 _ACC	=	0x00e0
                     00E1   401 _XBR0	=	0x00e1
                     00E2   402 _XBR1	=	0x00e2
                     00E3   403 _XBR2	=	0x00e3
                     00E4   404 _IT01CF	=	0x00e4
                     00E5   405 _FLWR	=	0x00e5
                     00E6   406 _EIE1	=	0x00e6
                     00E7   407 _EIE2	=	0x00e7
                     00E8   408 _ADC0CN	=	0x00e8
                     00E9   409 _PCA0CPL1	=	0x00e9
                     00EA   410 _PCA0CPH1	=	0x00ea
                     00EB   411 _PCA0CPL2	=	0x00eb
                     00EC   412 _PCA0CPH2	=	0x00ec
                     00ED   413 _PCA0CPL3	=	0x00ed
                     00EE   414 _PCA0CPH3	=	0x00ee
                     00EF   415 _RSTSRC	=	0x00ef
                     00F0   416 _B	=	0x00f0
                     00F1   417 _P0MDIN	=	0x00f1
                     00F2   418 _P1MDIN	=	0x00f2
                     00F3   419 _P2MDIN	=	0x00f3
                     00F4   420 _SMB0ADR	=	0x00f4
                     00F5   421 _SMB0ADM	=	0x00f5
                     00F6   422 _EIP1	=	0x00f6
                     00F7   423 _EIP2	=	0x00f7
                     00F8   424 _SPI0CN	=	0x00f8
                     00F9   425 _PCA0L	=	0x00f9
                     00FA   426 _PCA0H	=	0x00fa
                     00FB   427 _PCA0CPL0	=	0x00fb
                     00FC   428 _PCA0CPH0	=	0x00fc
                     00FD   429 _PCA0CPL4	=	0x00fd
                     00FE   430 _PCA0CPH4	=	0x00fe
                     00FF   431 _VDM0CN	=	0x00ff
                     8382   432 _DP	=	0x8382
                     8685   433 _TOFF	=	0x8685
                     9392   434 _TMR3RL	=	0x9392
                     9594   435 _TMR3	=	0x9594
                     BEBD   436 _ADC0	=	0xbebd
                     C4C3   437 _ADC0GT	=	0xc4c3
                     C6C5   438 _ADC0LT	=	0xc6c5
                     CBCA   439 _TMR2RL	=	0xcbca
                     CDCC   440 _TMR2	=	0xcdcc
                     D3D2   441 _PCA0CP5	=	0xd3d2
                     EAE9   442 _PCA0CP1	=	0xeae9
                     ECEB   443 _PCA0CP2	=	0xeceb
                     EEED   444 _PCA0CP3	=	0xeeed
                     FAF9   445 _PCA0	=	0xfaf9
                     FCFB   446 _PCA0CP0	=	0xfcfb
                     FEFD   447 _PCA0CP4	=	0xfefd
                            448 ;--------------------------------------------------------
                            449 ; special function bits
                            450 ;--------------------------------------------------------
                            451 	.area RSEG    (ABS,DATA)
   0000                     452 	.org 0x0000
                     008F   453 _TF1	=	0x008f
                     008E   454 _TR1	=	0x008e
                     008D   455 _TF0	=	0x008d
                     008C   456 _TR0	=	0x008c
                     008B   457 _IE1	=	0x008b
                     008A   458 _IT1	=	0x008a
                     0089   459 _IE0	=	0x0089
                     0088   460 _IT0	=	0x0088
                     0096   461 _CRC0SEL	=	0x0096
                     0095   462 _CRC0INIT	=	0x0095
                     0094   463 _CRC0VAL	=	0x0094
                     009F   464 _S0MODE	=	0x009f
                     009D   465 _MCE0	=	0x009d
                     009C   466 _REN0	=	0x009c
                     009B   467 _TB80	=	0x009b
                     009A   468 _RB80	=	0x009a
                     0099   469 _TI0	=	0x0099
                     0098   470 _RI0	=	0x0098
                     00AF   471 _EA	=	0x00af
                     00AE   472 _ESPI0	=	0x00ae
                     00AD   473 _ET2	=	0x00ad
                     00AC   474 _ES0	=	0x00ac
                     00AB   475 _ET1	=	0x00ab
                     00AA   476 _EX1	=	0x00aa
                     00A9   477 _ET0	=	0x00a9
                     00A8   478 _EX0	=	0x00a8
                     00B7   479 _SPIF1	=	0x00b7
                     00B6   480 _WCOL1	=	0x00b6
                     00B5   481 _MODF1	=	0x00b5
                     00B4   482 _RXOVRN1	=	0x00b4
                     00B3   483 _NSS1MD1	=	0x00b3
                     00B2   484 _NSS1MD0	=	0x00b2
                     00B1   485 _TXBMT1	=	0x00b1
                     00B0   486 _SPI1EN	=	0x00b0
                     00BE   487 _PSPI0	=	0x00be
                     00BD   488 _PT2	=	0x00bd
                     00BC   489 _PS0	=	0x00bc
                     00BB   490 _PT1	=	0x00bb
                     00BA   491 _PX1	=	0x00ba
                     00B9   492 _PT0	=	0x00b9
                     00B8   493 _PX0	=	0x00b8
                     00C7   494 _MASTER	=	0x00c7
                     00C6   495 _TXMODE	=	0x00c6
                     00C5   496 _STA	=	0x00c5
                     00C4   497 _STO	=	0x00c4
                     00C3   498 _ACKRQ	=	0x00c3
                     00C2   499 _ARBLOST	=	0x00c2
                     00C1   500 _ACK	=	0x00c1
                     00C0   501 _SI	=	0x00c0
                     00CF   502 _TF2H	=	0x00cf
                     00CE   503 _TF2L	=	0x00ce
                     00CD   504 _TF2LEN	=	0x00cd
                     00CC   505 _TF2CEN	=	0x00cc
                     00CB   506 _T2SPLIT	=	0x00cb
                     00CA   507 _TR2	=	0x00ca
                     00C9   508 _T2RCLK	=	0x00c9
                     00C8   509 _T2XCLK	=	0x00c8
                     00D7   510 _CY	=	0x00d7
                     00D6   511 _AC	=	0x00d6
                     00D5   512 _F0	=	0x00d5
                     00D4   513 _RS1	=	0x00d4
                     00D3   514 _RS0	=	0x00d3
                     00D2   515 _OV	=	0x00d2
                     00D1   516 _F1	=	0x00d1
                     00D0   517 _P	=	0x00d0
                     00DF   518 _CF	=	0x00df
                     00DE   519 _CR	=	0x00de
                     00DD   520 _CCF5	=	0x00dd
                     00DC   521 _CCF4	=	0x00dc
                     00DB   522 _CCF3	=	0x00db
                     00DA   523 _CCF2	=	0x00da
                     00D9   524 _CCF1	=	0x00d9
                     00D8   525 _CCF0	=	0x00d8
                     00EF   526 _AD0EN	=	0x00ef
                     00EE   527 _BURSTEN	=	0x00ee
                     00ED   528 _AD0INT	=	0x00ed
                     00EC   529 _AD0BUSY	=	0x00ec
                     00EB   530 _AD0WINT	=	0x00eb
                     00EA   531 _AD0CM2	=	0x00ea
                     00E9   532 _AD0CM1	=	0x00e9
                     00E8   533 _AD0CM0	=	0x00e8
                     00FF   534 _SPIF0	=	0x00ff
                     00FE   535 _WCOL0	=	0x00fe
                     00FD   536 _MODF0	=	0x00fd
                     00FC   537 _RXOVRN0	=	0x00fc
                     00FB   538 _NSS0MD1	=	0x00fb
                     00FA   539 _NSS0MD0	=	0x00fa
                     00F9   540 _TXBMT0	=	0x00f9
                     00F8   541 _SPI0EN	=	0x00f8
                     0096   542 _LED_RED	=	0x0096
                     0095   543 _LED_GREEN	=	0x0095
                     0082   544 _PIN_CONFIG	=	0x0082
                     0083   545 _PIN_ENABLE	=	0x0083
                     0087   546 _IRQ	=	0x0087
                     0094   547 _NSS1	=	0x0094
                            548 ;--------------------------------------------------------
                            549 ; overlayable register banks
                            550 ;--------------------------------------------------------
                            551 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     552 	.ds 8
                            553 ;--------------------------------------------------------
                            554 ; internal ram data
                            555 ;--------------------------------------------------------
                            556 	.area DSEG    (DATA)
   002B                     557 _mavlink_frame_slen_1_138:
   002B                     558 	.ds 2
   002D                     559 _mavlink_frame_c_2_139:
   002D                     560 	.ds 1
   002E                     561 _mavlink_frame_sloc0_1_0:
   002E                     562 	.ds 1
   002F                     563 _mavlink_frame_sloc1_1_0:
   002F                     564 	.ds 2
   0031                     565 _packet_get_next_max_xmit_1_143:
   0031                     566 	.ds 1
   0032                     567 _packet_get_next_slen_1_144:
   0032                     568 	.ds 2
   0034                     569 _packet_get_next_sloc0_1_0:
   0034                     570 	.ds 2
                            571 ;--------------------------------------------------------
                            572 ; overlayable items in internal ram 
                            573 ;--------------------------------------------------------
                            574 ;--------------------------------------------------------
                            575 ; indirectly addressable internal ram data
                            576 ;--------------------------------------------------------
                            577 	.area ISEG    (DATA)
                            578 ;--------------------------------------------------------
                            579 ; absolute internal ram data
                            580 ;--------------------------------------------------------
                            581 	.area IABS    (ABS,DATA)
                            582 	.area IABS    (ABS,DATA)
                            583 ;--------------------------------------------------------
                            584 ; bit data
                            585 ;--------------------------------------------------------
                            586 	.area BSEG    (BIT)
   0008                     587 _last_sent_is_resend:
   0008                     588 	.ds 1
   0009                     589 _last_sent_is_injected:
   0009                     590 	.ds 1
   000A                     591 _last_recv_is_resend:
   000A                     592 	.ds 1
   000B                     593 _force_resend:
   000B                     594 	.ds 1
   000C                     595 _injected_packet:
   000C                     596 	.ds 1
   000D                     597 _seen_mavlink::
   000D                     598 	.ds 1
   000E                     599 _using_mavlink_10::
   000E                     600 	.ds 1
   000F                     601 _packet_is_duplicate_PARM_3:
   000F                     602 	.ds 1
                            603 ;--------------------------------------------------------
                            604 ; paged external ram data
                            605 ;--------------------------------------------------------
                            606 	.area PSEG    (PAG,XDATA)
   0058                     607 _last_sent_len:
   0058                     608 	.ds 1
   0059                     609 _last_recv_len:
   0059                     610 	.ds 1
   005A                     611 _serial_rate:
   005A                     612 	.ds 2
   005C                     613 _mav_pkt_len:
   005C                     614 	.ds 1
   005D                     615 _mav_pkt_start_time:
   005D                     616 	.ds 2
   005F                     617 _mav_pkt_max_time:
   005F                     618 	.ds 2
   0061                     619 _mav_max_xmit:
   0061                     620 	.ds 1
   0062                     621 _mavlink_frame_PARM_2:
   0062                     622 	.ds 2
   0064                     623 _packet_get_next_PARM_2:
   0064                     624 	.ds 2
   0066                     625 _packet_is_duplicate_PARM_2:
   0066                     626 	.ds 2
   0068                     627 _packet_inject_PARM_2:
   0068                     628 	.ds 1
                            629 ;--------------------------------------------------------
                            630 ; external ram data
                            631 ;--------------------------------------------------------
                            632 	.area XSEG    (XDATA)
   0126                     633 _last_received:
   0126                     634 	.ds 252
   0222                     635 _last_sent:
   0222                     636 	.ds 252
   031E                     637 _mavlink_frame_max_xmit_1_137:
   031E                     638 	.ds 1
   031F                     639 _packet_set_max_xmit_max_1_175:
   031F                     640 	.ds 1
   0320                     641 _packet_set_serial_speed_speed_1_177:
   0320                     642 	.ds 2
   0322                     643 _packet_is_duplicate_len_1_179:
   0322                     644 	.ds 1
                            645 ;--------------------------------------------------------
                            646 ; absolute external ram data
                            647 ;--------------------------------------------------------
                            648 	.area XABS    (ABS,XDATA)
                            649 ;--------------------------------------------------------
                            650 ; external initialized ram data
                            651 ;--------------------------------------------------------
                            652 	.area XISEG   (XDATA)
                            653 	.area HOME    (CODE)
                            654 	.area GSINIT0 (CODE)
                            655 	.area GSINIT1 (CODE)
                            656 	.area GSINIT2 (CODE)
                            657 	.area GSINIT3 (CODE)
                            658 	.area GSINIT4 (CODE)
                            659 	.area GSINIT5 (CODE)
                            660 	.area GSINIT  (CODE)
                            661 	.area GSFINAL (CODE)
                            662 	.area CSEG    (CODE)
                            663 ;--------------------------------------------------------
                            664 ; global & static initialisations
                            665 ;--------------------------------------------------------
                            666 	.area HOME    (CODE)
                            667 	.area GSINIT  (CODE)
                            668 	.area GSFINAL (CODE)
                            669 	.area GSINIT  (CODE)
                            670 ;--------------------------------------------------------
                            671 ; Home
                            672 ;--------------------------------------------------------
                            673 	.area HOME    (CODE)
                            674 	.area HOME    (CODE)
                            675 ;--------------------------------------------------------
                            676 ; code
                            677 ;--------------------------------------------------------
                            678 	.area CSEG    (CODE)
                            679 ;------------------------------------------------------------
                            680 ;Allocation info for local variables in function 'check_heartbeat'
                            681 ;------------------------------------------------------------
                            682 ;	radio/packet.c:81: static void check_heartbeat(__xdata uint8_t * __pdata buf)
                            683 ;	-----------------------------------------
                            684 ;	 function check_heartbeat
                            685 ;	-----------------------------------------
   1DEF                     686 _check_heartbeat:
                     0007   687 	ar7 = 0x07
                     0006   688 	ar6 = 0x06
                     0005   689 	ar5 = 0x05
                     0004   690 	ar4 = 0x04
                     0003   691 	ar3 = 0x03
                     0002   692 	ar2 = 0x02
                     0001   693 	ar1 = 0x01
                     0000   694 	ar0 = 0x00
                            695 ;	radio/packet.c:83: if (buf[0] == MAVLINK09_STX &&
   1DEF AE 82         [24]  696 	mov	r6,dpl
   1DF1 AF 83         [24]  697 	mov  r7,dph
   1DF3 E0            [24]  698 	movx	a,@dptr
   1DF4 FD            [12]  699 	mov	r5,a
   1DF5 BD 55 1D      [24]  700 	cjne	r5,#0x55,00106$
                            701 ;	radio/packet.c:84: buf[1] == 3 && buf[5] == 0) {
   1DF8 8E 82         [24]  702 	mov	dpl,r6
   1DFA 8F 83         [24]  703 	mov	dph,r7
   1DFC A3            [24]  704 	inc	dptr
   1DFD E0            [24]  705 	movx	a,@dptr
   1DFE FC            [12]  706 	mov	r4,a
   1DFF BC 03 13      [24]  707 	cjne	r4,#0x03,00106$
   1E02 74 05         [12]  708 	mov	a,#0x05
   1E04 2E            [12]  709 	add	a,r6
   1E05 FB            [12]  710 	mov	r3,a
   1E06 E4            [12]  711 	clr	a
   1E07 3F            [12]  712 	addc	a,r7
   1E08 FC            [12]  713 	mov	r4,a
   1E09 8B 82         [24]  714 	mov	dpl,r3
   1E0B 8C 83         [24]  715 	mov	dph,r4
   1E0D E0            [24]  716 	movx	a,@dptr
   1E0E 70 05         [24]  717 	jnz	00106$
                            718 ;	radio/packet.c:86: using_mavlink_10 = false;
   1E10 C2 0E         [12]  719 	clr	_using_mavlink_10
                            720 ;	radio/packet.c:87: seen_mavlink = true;
   1E12 D2 0D         [12]  721 	setb	_seen_mavlink
   1E14 22            [24]  722 	ret
   1E15                     723 00106$:
                            724 ;	radio/packet.c:88: } else if (buf[0] == MAVLINK10_STX &&
   1E15 BD FE 1C      [24]  725 	cjne	r5,#0xFE,00110$
                            726 ;	radio/packet.c:89: buf[1] == 9 && buf[5] == 0) {
   1E18 8E 82         [24]  727 	mov	dpl,r6
   1E1A 8F 83         [24]  728 	mov	dph,r7
   1E1C A3            [24]  729 	inc	dptr
   1E1D E0            [24]  730 	movx	a,@dptr
   1E1E FD            [12]  731 	mov	r5,a
   1E1F BD 09 12      [24]  732 	cjne	r5,#0x09,00110$
   1E22 74 05         [12]  733 	mov	a,#0x05
   1E24 2E            [12]  734 	add	a,r6
   1E25 FE            [12]  735 	mov	r6,a
   1E26 E4            [12]  736 	clr	a
   1E27 3F            [12]  737 	addc	a,r7
   1E28 FF            [12]  738 	mov	r7,a
   1E29 8E 82         [24]  739 	mov	dpl,r6
   1E2B 8F 83         [24]  740 	mov	dph,r7
   1E2D E0            [24]  741 	movx	a,@dptr
   1E2E 70 04         [24]  742 	jnz	00110$
                            743 ;	radio/packet.c:91: using_mavlink_10 = true;
   1E30 D2 0E         [12]  744 	setb	_using_mavlink_10
                            745 ;	radio/packet.c:92: seen_mavlink = true;
   1E32 D2 0D         [12]  746 	setb	_seen_mavlink
   1E34                     747 00110$:
   1E34 22            [24]  748 	ret
                            749 ;------------------------------------------------------------
                            750 ;Allocation info for local variables in function 'mavlink_frame'
                            751 ;------------------------------------------------------------
                            752 ;slen                      Allocated with name '_mavlink_frame_slen_1_138'
                            753 ;c                         Allocated with name '_mavlink_frame_c_2_139'
                            754 ;sloc0                     Allocated with name '_mavlink_frame_sloc0_1_0'
                            755 ;sloc1                     Allocated with name '_mavlink_frame_sloc1_1_0'
                            756 ;max_xmit                  Allocated with name '_mavlink_frame_max_xmit_1_137'
                            757 ;------------------------------------------------------------
                            758 ;	radio/packet.c:99: uint8_t mavlink_frame(uint8_t max_xmit, __xdata uint8_t * __pdata buf)
                            759 ;	-----------------------------------------
                            760 ;	 function mavlink_frame
                            761 ;	-----------------------------------------
   1E35                     762 _mavlink_frame:
   1E35 E5 82         [12]  763 	mov	a,dpl
   1E37 90 03 1E      [24]  764 	mov	dptr,#_mavlink_frame_max_xmit_1_137
   1E3A F0            [24]  765 	movx	@dptr,a
                            766 ;	radio/packet.c:103: serial_read_buf(last_sent, mav_pkt_len);
   1E3B 78 5C         [12]  767 	mov	r0,#_mav_pkt_len
   1E3D 79 B3         [12]  768 	mov	r1,#_serial_read_buf_PARM_2
   1E3F E2            [24]  769 	movx	a,@r0
   1E40 F3            [24]  770 	movx	@r1,a
   1E41 90 02 22      [24]  771 	mov	dptr,#_last_sent
   1E44 12 43 32      [24]  772 	lcall	_serial_read_buf
                            773 ;	radio/packet.c:104: last_sent_len = mav_pkt_len;
   1E47 78 5C         [12]  774 	mov	r0,#_mav_pkt_len
   1E49 E2            [24]  775 	movx	a,@r0
   1E4A FF            [12]  776 	mov	r7,a
   1E4B 78 58         [12]  777 	mov	r0,#_last_sent_len
   1E4D F2            [24]  778 	movx	@r0,a
                            779 ;	radio/packet.c:105: memcpy(buf, last_sent, last_sent_len);
   1E4E 78 62         [12]  780 	mov	r0,#_mavlink_frame_PARM_2
   1E50 E2            [24]  781 	movx	a,@r0
   1E51 FC            [12]  782 	mov	r4,a
   1E52 08            [12]  783 	inc	r0
   1E53 E2            [24]  784 	movx	a,@r0
   1E54 FD            [12]  785 	mov	r5,a
   1E55 7E 00         [12]  786 	mov	r6,#0x00
   1E57 90 05 C1      [24]  787 	mov	dptr,#_memcpy_PARM_2
   1E5A 74 22         [12]  788 	mov	a,#_last_sent
   1E5C F0            [24]  789 	movx	@dptr,a
   1E5D 74 02         [12]  790 	mov	a,#(_last_sent >> 8)
   1E5F A3            [24]  791 	inc	dptr
   1E60 F0            [24]  792 	movx	@dptr,a
   1E61 E4            [12]  793 	clr	a
   1E62 A3            [24]  794 	inc	dptr
   1E63 F0            [24]  795 	movx	@dptr,a
   1E64 90 05 C4      [24]  796 	mov	dptr,#_memcpy_PARM_3
   1E67 EF            [12]  797 	mov	a,r7
   1E68 F0            [24]  798 	movx	@dptr,a
   1E69 E4            [12]  799 	clr	a
   1E6A A3            [24]  800 	inc	dptr
   1E6B F0            [24]  801 	movx	@dptr,a
   1E6C 8C 82         [24]  802 	mov	dpl,r4
   1E6E 8D 83         [24]  803 	mov	dph,r5
   1E70 8E F0         [24]  804 	mov	b,r6
   1E72 12 5D A3      [24]  805 	lcall	_memcpy
                            806 ;	radio/packet.c:106: mav_pkt_len = 0;
   1E75 78 5C         [12]  807 	mov	r0,#_mav_pkt_len
   1E77 E4            [12]  808 	clr	a
   1E78 F2            [24]  809 	movx	@r0,a
                            810 ;	radio/packet.c:108: check_heartbeat(buf);
   1E79 78 62         [12]  811 	mov	r0,#_mavlink_frame_PARM_2
   1E7B E2            [24]  812 	movx	a,@r0
   1E7C F5 82         [12]  813 	mov	dpl,a
   1E7E 08            [12]  814 	inc	r0
   1E7F E2            [24]  815 	movx	a,@r0
   1E80 F5 83         [12]  816 	mov	dph,a
   1E82 12 1D EF      [24]  817 	lcall	_check_heartbeat
                            818 ;	radio/packet.c:110: slen = serial_read_available();
   1E85 12 44 83      [24]  819 	lcall	_serial_read_available
   1E88 85 82 2B      [24]  820 	mov	_mavlink_frame_slen_1_138,dpl
   1E8B 85 83 2C      [24]  821 	mov	(_mavlink_frame_slen_1_138 + 1),dph
                            822 ;	radio/packet.c:114: while (slen >= 8) {
   1E8E 90 03 1E      [24]  823 	mov	dptr,#_mavlink_frame_max_xmit_1_137
   1E91 E0            [24]  824 	movx	a,@dptr
   1E92 F5 2E         [12]  825 	mov	_mavlink_frame_sloc0_1_0,a
   1E94                     826 00109$:
   1E94 C3            [12]  827 	clr	c
   1E95 E5 2B         [12]  828 	mov	a,_mavlink_frame_slen_1_138
   1E97 94 08         [12]  829 	subb	a,#0x08
   1E99 E5 2C         [12]  830 	mov	a,(_mavlink_frame_slen_1_138 + 1)
   1E9B 94 00         [12]  831 	subb	a,#0x00
   1E9D 50 03         [24]  832 	jnc	00135$
   1E9F 02 1F 94      [24]  833 	ljmp	00111$
   1EA2                     834 00135$:
                            835 ;	radio/packet.c:115: register uint8_t c = serial_peek();
   1EA2 12 42 E9      [24]  836 	lcall	_serial_peek
   1EA5 85 82 2D      [24]  837 	mov	_mavlink_frame_c_2_139,dpl
                            838 ;	radio/packet.c:116: if (c != MAVLINK09_STX && c != MAVLINK10_STX) {
   1EA8 74 55         [12]  839 	mov	a,#0x55
   1EAA B5 2D 02      [24]  840 	cjne	a,_mavlink_frame_c_2_139,00136$
   1EAD 80 0D         [24]  841 	sjmp	00102$
   1EAF                     842 00136$:
   1EAF 74 FE         [12]  843 	mov	a,#0xFE
   1EB1 B5 2D 02      [24]  844 	cjne	a,_mavlink_frame_c_2_139,00137$
   1EB4 80 06         [24]  845 	sjmp	00102$
   1EB6                     846 00137$:
                            847 ;	radio/packet.c:118: return last_sent_len;			
   1EB6 78 58         [12]  848 	mov	r0,#_last_sent_len
   1EB8 E2            [24]  849 	movx	a,@r0
   1EB9 F5 82         [12]  850 	mov	dpl,a
   1EBB 22            [24]  851 	ret
   1EBC                     852 00102$:
                            853 ;	radio/packet.c:120: c = serial_peek2();
   1EBC 12 43 05      [24]  854 	lcall	_serial_peek2
   1EBF 85 82 2D      [24]  855 	mov	_mavlink_frame_c_2_139,dpl
                            856 ;	radio/packet.c:121: if (c >= 255 - 8 || 
   1EC2 74 09         [12]  857 	mov	a,#0x100 - 0xF7
   1EC4 25 2D         [12]  858 	add	a,_mavlink_frame_c_2_139
   1EC6 50 03         [24]  859 	jnc	00138$
   1EC8 02 1F 94      [24]  860 	ljmp	00111$
   1ECB                     861 00138$:
                            862 ;	radio/packet.c:122: c+8 > max_xmit - last_sent_len) {
   1ECB AA 2D         [24]  863 	mov	r2,_mavlink_frame_c_2_139
   1ECD 7B 00         [12]  864 	mov	r3,#0x00
   1ECF 74 08         [12]  865 	mov	a,#0x08
   1ED1 2A            [12]  866 	add	a,r2
   1ED2 FE            [12]  867 	mov	r6,a
   1ED3 E4            [12]  868 	clr	a
   1ED4 3B            [12]  869 	addc	a,r3
   1ED5 FF            [12]  870 	mov	r7,a
   1ED6 85 2E 2F      [24]  871 	mov	_mavlink_frame_sloc1_1_0,_mavlink_frame_sloc0_1_0
   1ED9 75 30 00      [24]  872 	mov	(_mavlink_frame_sloc1_1_0 + 1),#0x00
   1EDC 78 58         [12]  873 	mov	r0,#_last_sent_len
   1EDE E2            [24]  874 	movx	a,@r0
   1EDF FC            [12]  875 	mov	r4,a
   1EE0 7D 00         [12]  876 	mov	r5,#0x00
   1EE2 E5 2F         [12]  877 	mov	a,_mavlink_frame_sloc1_1_0
   1EE4 C3            [12]  878 	clr	c
   1EE5 9C            [12]  879 	subb	a,r4
   1EE6 FC            [12]  880 	mov	r4,a
   1EE7 E5 30         [12]  881 	mov	a,(_mavlink_frame_sloc1_1_0 + 1)
   1EE9 9D            [12]  882 	subb	a,r5
   1EEA FD            [12]  883 	mov	r5,a
   1EEB C3            [12]  884 	clr	c
   1EEC EC            [12]  885 	mov	a,r4
   1EED 9E            [12]  886 	subb	a,r6
   1EEE ED            [12]  887 	mov	a,r5
   1EEF 64 80         [12]  888 	xrl	a,#0x80
   1EF1 8F F0         [24]  889 	mov	b,r7
   1EF3 63 F0 80      [24]  890 	xrl	b,#0x80
   1EF6 95 F0         [12]  891 	subb	a,b
   1EF8 50 03         [24]  892 	jnc	00139$
   1EFA 02 1F 94      [24]  893 	ljmp	00111$
   1EFD                     894 00139$:
                            895 ;	radio/packet.c:126: if (c+8 > slen) {
   1EFD 74 08         [12]  896 	mov	a,#0x08
   1EFF 2A            [12]  897 	add	a,r2
   1F00 FA            [12]  898 	mov	r2,a
   1F01 E4            [12]  899 	clr	a
   1F02 3B            [12]  900 	addc	a,r3
   1F03 FB            [12]  901 	mov	r3,a
   1F04 C3            [12]  902 	clr	c
   1F05 E5 2B         [12]  903 	mov	a,_mavlink_frame_slen_1_138
   1F07 9A            [12]  904 	subb	a,r2
   1F08 E5 2C         [12]  905 	mov	a,(_mavlink_frame_slen_1_138 + 1)
   1F0A 9B            [12]  906 	subb	a,r3
   1F0B 50 03         [24]  907 	jnc	00140$
   1F0D 02 1F 94      [24]  908 	ljmp	00111$
   1F10                     909 00140$:
                            910 ;	radio/packet.c:132: c += 8;
   1F10 74 08         [12]  911 	mov	a,#0x08
   1F12 25 2D         [12]  912 	add	a,_mavlink_frame_c_2_139
   1F14 F5 2D         [12]  913 	mov	_mavlink_frame_c_2_139,a
                            914 ;	radio/packet.c:135: serial_read_buf(&last_sent[last_sent_len], c);
   1F16 78 58         [12]  915 	mov	r0,#_last_sent_len
   1F18 E2            [24]  916 	movx	a,@r0
   1F19 24 22         [12]  917 	add	a,#_last_sent
   1F1B FE            [12]  918 	mov	r6,a
   1F1C E4            [12]  919 	clr	a
   1F1D 34 02         [12]  920 	addc	a,#(_last_sent >> 8)
   1F1F FF            [12]  921 	mov	r7,a
   1F20 78 B3         [12]  922 	mov	r0,#_serial_read_buf_PARM_2
   1F22 E5 2D         [12]  923 	mov	a,_mavlink_frame_c_2_139
   1F24 F2            [24]  924 	movx	@r0,a
   1F25 8E 82         [24]  925 	mov	dpl,r6
   1F27 8F 83         [24]  926 	mov	dph,r7
   1F29 12 43 32      [24]  927 	lcall	_serial_read_buf
                            928 ;	radio/packet.c:136: memcpy(&buf[last_sent_len], &last_sent[last_sent_len], c);
   1F2C 78 62         [12]  929 	mov	r0,#_mavlink_frame_PARM_2
   1F2E 79 58         [12]  930 	mov	r1,#_last_sent_len
   1F30 E3            [24]  931 	movx	a,@r1
   1F31 C5 F0         [12]  932 	xch	a,b
   1F33 E2            [24]  933 	movx	a,@r0
   1F34 25 F0         [12]  934 	add	a,b
   1F36 FE            [12]  935 	mov	r6,a
   1F37 08            [12]  936 	inc	r0
   1F38 E2            [24]  937 	movx	a,@r0
   1F39 34 00         [12]  938 	addc	a,#0x00
   1F3B FF            [12]  939 	mov	r7,a
   1F3C 7D 00         [12]  940 	mov	r5,#0x00
   1F3E 78 58         [12]  941 	mov	r0,#_last_sent_len
   1F40 E2            [24]  942 	movx	a,@r0
   1F41 24 22         [12]  943 	add	a,#_last_sent
   1F43 FB            [12]  944 	mov	r3,a
   1F44 E4            [12]  945 	clr	a
   1F45 34 02         [12]  946 	addc	a,#(_last_sent >> 8)
   1F47 FC            [12]  947 	mov	r4,a
   1F48 90 05 C1      [24]  948 	mov	dptr,#_memcpy_PARM_2
   1F4B EB            [12]  949 	mov	a,r3
   1F4C F0            [24]  950 	movx	@dptr,a
   1F4D EC            [12]  951 	mov	a,r4
   1F4E A3            [24]  952 	inc	dptr
   1F4F F0            [24]  953 	movx	@dptr,a
   1F50 E4            [12]  954 	clr	a
   1F51 A3            [24]  955 	inc	dptr
   1F52 F0            [24]  956 	movx	@dptr,a
   1F53 90 05 C4      [24]  957 	mov	dptr,#_memcpy_PARM_3
   1F56 E5 2D         [12]  958 	mov	a,_mavlink_frame_c_2_139
   1F58 F0            [24]  959 	movx	@dptr,a
   1F59 E4            [12]  960 	clr	a
   1F5A A3            [24]  961 	inc	dptr
   1F5B F0            [24]  962 	movx	@dptr,a
   1F5C 8E 82         [24]  963 	mov	dpl,r6
   1F5E 8F 83         [24]  964 	mov	dph,r7
   1F60 8D F0         [24]  965 	mov	b,r5
   1F62 12 5D A3      [24]  966 	lcall	_memcpy
                            967 ;	radio/packet.c:138: check_heartbeat(buf+last_sent_len);
   1F65 78 62         [12]  968 	mov	r0,#_mavlink_frame_PARM_2
   1F67 79 58         [12]  969 	mov	r1,#_last_sent_len
   1F69 E3            [24]  970 	movx	a,@r1
   1F6A C5 F0         [12]  971 	xch	a,b
   1F6C E2            [24]  972 	movx	a,@r0
   1F6D 25 F0         [12]  973 	add	a,b
   1F6F FE            [12]  974 	mov	r6,a
   1F70 08            [12]  975 	inc	r0
   1F71 E2            [24]  976 	movx	a,@r0
   1F72 34 00         [12]  977 	addc	a,#0x00
   1F74 FF            [12]  978 	mov	r7,a
   1F75 8E 82         [24]  979 	mov	dpl,r6
   1F77 8F 83         [24]  980 	mov	dph,r7
   1F79 12 1D EF      [24]  981 	lcall	_check_heartbeat
                            982 ;	radio/packet.c:140: last_sent_len += c;
   1F7C 78 58         [12]  983 	mov	r0,#_last_sent_len
   1F7E E2            [24]  984 	movx	a,@r0
   1F7F 25 2D         [12]  985 	add	a,_mavlink_frame_c_2_139
   1F81 F2            [24]  986 	movx	@r0,a
                            987 ;	radio/packet.c:141: slen -= c;
   1F82 AC 2D         [24]  988 	mov	r4,_mavlink_frame_c_2_139
   1F84 7F 00         [12]  989 	mov	r7,#0x00
   1F86 E5 2B         [12]  990 	mov	a,_mavlink_frame_slen_1_138
   1F88 C3            [12]  991 	clr	c
   1F89 9C            [12]  992 	subb	a,r4
   1F8A F5 2B         [12]  993 	mov	_mavlink_frame_slen_1_138,a
   1F8C E5 2C         [12]  994 	mov	a,(_mavlink_frame_slen_1_138 + 1)
   1F8E 9F            [12]  995 	subb	a,r7
   1F8F F5 2C         [12]  996 	mov	(_mavlink_frame_slen_1_138 + 1),a
   1F91 02 1E 94      [24]  997 	ljmp	00109$
   1F94                     998 00111$:
                            999 ;	radio/packet.c:144: return last_sent_len;
   1F94 78 58         [12] 1000 	mov	r0,#_last_sent_len
   1F96 E2            [24] 1001 	movx	a,@r0
   1F97 F5 82         [12] 1002 	mov	dpl,a
   1F99 22            [24] 1003 	ret
                           1004 ;------------------------------------------------------------
                           1005 ;Allocation info for local variables in function 'packet_get_next'
                           1006 ;------------------------------------------------------------
                           1007 ;max_xmit                  Allocated with name '_packet_get_next_max_xmit_1_143'
                           1008 ;slen                      Allocated with name '_packet_get_next_slen_1_144'
                           1009 ;c                         Allocated to registers r7 
                           1010 ;sloc0                     Allocated with name '_packet_get_next_sloc0_1_0'
                           1011 ;------------------------------------------------------------
                           1012 ;	radio/packet.c:150: packet_get_next(register uint8_t max_xmit, __xdata uint8_t * __pdata buf)
                           1013 ;	-----------------------------------------
                           1014 ;	 function packet_get_next
                           1015 ;	-----------------------------------------
   1F9A                    1016 _packet_get_next:
   1F9A 85 82 31      [24] 1017 	mov	_packet_get_next_max_xmit_1_143,dpl
                           1018 ;	radio/packet.c:154: slen = serial_read_available();
   1F9D 12 44 83      [24] 1019 	lcall	_serial_read_available
   1FA0 85 82 32      [24] 1020 	mov	_packet_get_next_slen_1_144,dpl
   1FA3 85 83 33      [24] 1021 	mov	(_packet_get_next_slen_1_144 + 1),dph
                           1022 ;	radio/packet.c:155: if (force_resend ||
   1FA6 20 0B 16      [24] 1023 	jb	_force_resend,00103$
                           1024 ;	radio/packet.c:156: (feature_opportunistic_resend &&
   1FA9 30 05 65      [24] 1025 	jnb	_feature_opportunistic_resend,00104$
   1FAC 20 08 62      [24] 1026 	jb	_last_sent_is_resend,00104$
                           1027 ;	radio/packet.c:158: last_sent_len != 0 && 
   1FAF 78 58         [12] 1028 	mov	r0,#_last_sent_len
   1FB1 E2            [24] 1029 	movx	a,@r0
   1FB2 60 5D         [24] 1030 	jz	00104$
                           1031 ;	radio/packet.c:159: slen < PACKET_RESEND_THRESHOLD)) {
   1FB4 C3            [12] 1032 	clr	c
   1FB5 E5 32         [12] 1033 	mov	a,_packet_get_next_slen_1_144
   1FB7 94 20         [12] 1034 	subb	a,#0x20
   1FB9 E5 33         [12] 1035 	mov	a,(_packet_get_next_slen_1_144 + 1)
   1FBB 94 00         [12] 1036 	subb	a,#0x00
   1FBD 50 52         [24] 1037 	jnc	00104$
   1FBF                    1038 00103$:
                           1039 ;	radio/packet.c:160: if (max_xmit < last_sent_len) {
   1FBF 78 58         [12] 1040 	mov	r0,#_last_sent_len
   1FC1 C3            [12] 1041 	clr	c
   1FC2 E2            [24] 1042 	movx	a,@r0
   1FC3 F5 F0         [12] 1043 	mov	b,a
   1FC5 E5 31         [12] 1044 	mov	a,_packet_get_next_max_xmit_1_143
   1FC7 95 F0         [12] 1045 	subb	a,b
   1FC9 50 08         [24] 1046 	jnc	00102$
                           1047 ;	radio/packet.c:161: last_sent_len = 0;
   1FCB 78 58         [12] 1048 	mov	r0,#_last_sent_len
   1FCD E4            [12] 1049 	clr	a
   1FCE F2            [24] 1050 	movx	@r0,a
                           1051 ;	radio/packet.c:162: return 0;
   1FCF 75 82 00      [24] 1052 	mov	dpl,#0x00
   1FD2 22            [24] 1053 	ret
   1FD3                    1054 00102$:
                           1055 ;	radio/packet.c:164: last_sent_is_resend = true;
   1FD3 D2 08         [12] 1056 	setb	_last_sent_is_resend
                           1057 ;	radio/packet.c:165: force_resend = false;
   1FD5 C2 0B         [12] 1058 	clr	_force_resend
                           1059 ;	radio/packet.c:166: memcpy(buf, last_sent, last_sent_len);
   1FD7 78 64         [12] 1060 	mov	r0,#_packet_get_next_PARM_2
   1FD9 E2            [24] 1061 	movx	a,@r0
   1FDA FA            [12] 1062 	mov	r2,a
   1FDB 08            [12] 1063 	inc	r0
   1FDC E2            [24] 1064 	movx	a,@r0
   1FDD FB            [12] 1065 	mov	r3,a
   1FDE 7C 00         [12] 1066 	mov	r4,#0x00
   1FE0 90 05 C1      [24] 1067 	mov	dptr,#_memcpy_PARM_2
   1FE3 74 22         [12] 1068 	mov	a,#_last_sent
   1FE5 F0            [24] 1069 	movx	@dptr,a
   1FE6 74 02         [12] 1070 	mov	a,#(_last_sent >> 8)
   1FE8 A3            [24] 1071 	inc	dptr
   1FE9 F0            [24] 1072 	movx	@dptr,a
   1FEA E4            [12] 1073 	clr	a
   1FEB A3            [24] 1074 	inc	dptr
   1FEC F0            [24] 1075 	movx	@dptr,a
   1FED 78 58         [12] 1076 	mov	r0,#_last_sent_len
   1FEF 90 05 C4      [24] 1077 	mov	dptr,#_memcpy_PARM_3
   1FF2 E2            [24] 1078 	movx	a,@r0
   1FF3 F0            [24] 1079 	movx	@dptr,a
   1FF4 E4            [12] 1080 	clr	a
   1FF5 A3            [24] 1081 	inc	dptr
   1FF6 F0            [24] 1082 	movx	@dptr,a
   1FF7 8A 82         [24] 1083 	mov	dpl,r2
   1FF9 8B 83         [24] 1084 	mov	dph,r3
   1FFB 8C F0         [24] 1085 	mov	b,r4
   1FFD 12 5D A3      [24] 1086 	lcall	_memcpy
                           1087 ;	radio/packet.c:167: slen = last_sent_len;
   2000 78 58         [12] 1088 	mov	r0,#_last_sent_len
   2002 E2            [24] 1089 	movx	a,@r0
   2003 F5 32         [12] 1090 	mov	_packet_get_next_slen_1_144,a
   2005 75 33 00      [24] 1091 	mov	(_packet_get_next_slen_1_144 + 1),#0x00
                           1092 ;	radio/packet.c:168: last_sent_len = 0;
   2008 78 58         [12] 1093 	mov	r0,#_last_sent_len
   200A E4            [12] 1094 	clr	a
   200B F2            [24] 1095 	movx	@r0,a
                           1096 ;	radio/packet.c:169: return (slen & 0xFF);
   200C AB 32         [24] 1097 	mov	r3,_packet_get_next_slen_1_144
   200E 8B 82         [24] 1098 	mov	dpl,r3
   2010 22            [24] 1099 	ret
   2011                    1100 00104$:
                           1101 ;	radio/packet.c:172: last_sent_is_resend = false;
   2011 C2 08         [12] 1102 	clr	_last_sent_is_resend
                           1103 ;	radio/packet.c:174: if (injected_packet) {
   2013 20 0C 03      [24] 1104 	jb	_injected_packet,00241$
   2016 02 20 CA      [24] 1105 	ljmp	00112$
   2019                    1106 00241$:
                           1107 ;	radio/packet.c:176: slen = last_sent_len;
   2019 78 58         [12] 1108 	mov	r0,#_last_sent_len
   201B E2            [24] 1109 	movx	a,@r0
   201C FB            [12] 1110 	mov	r3,a
   201D 7C 00         [12] 1111 	mov	r4,#0x00
   201F 8B 32         [24] 1112 	mov	_packet_get_next_slen_1_144,r3
   2021 8C 33         [24] 1113 	mov	(_packet_get_next_slen_1_144 + 1),r4
                           1114 ;	radio/packet.c:177: if (max_xmit < slen) {
   2023 85 31 34      [24] 1115 	mov	_packet_get_next_sloc0_1_0,_packet_get_next_max_xmit_1_143
   2026 75 35 00      [24] 1116 	mov	(_packet_get_next_sloc0_1_0 + 1),#0x00
   2029 C3            [12] 1117 	clr	c
   202A E5 34         [12] 1118 	mov	a,_packet_get_next_sloc0_1_0
   202C 95 32         [12] 1119 	subb	a,_packet_get_next_slen_1_144
   202E E5 35         [12] 1120 	mov	a,(_packet_get_next_sloc0_1_0 + 1)
   2030 95 33         [12] 1121 	subb	a,(_packet_get_next_slen_1_144 + 1)
   2032 50 65         [24] 1122 	jnc	00110$
                           1123 ;	radio/packet.c:179: memcpy(buf, last_sent, max_xmit);
   2034 78 64         [12] 1124 	mov	r0,#_packet_get_next_PARM_2
   2036 E2            [24] 1125 	movx	a,@r0
   2037 FA            [12] 1126 	mov	r2,a
   2038 08            [12] 1127 	inc	r0
   2039 E2            [24] 1128 	movx	a,@r0
   203A FE            [12] 1129 	mov	r6,a
   203B 7F 00         [12] 1130 	mov	r7,#0x00
   203D 90 05 C1      [24] 1131 	mov	dptr,#_memcpy_PARM_2
   2040 74 22         [12] 1132 	mov	a,#_last_sent
   2042 F0            [24] 1133 	movx	@dptr,a
   2043 74 02         [12] 1134 	mov	a,#(_last_sent >> 8)
   2045 A3            [24] 1135 	inc	dptr
   2046 F0            [24] 1136 	movx	@dptr,a
   2047 E4            [12] 1137 	clr	a
   2048 A3            [24] 1138 	inc	dptr
   2049 F0            [24] 1139 	movx	@dptr,a
   204A 90 05 C4      [24] 1140 	mov	dptr,#_memcpy_PARM_3
   204D E5 34         [12] 1141 	mov	a,_packet_get_next_sloc0_1_0
   204F F0            [24] 1142 	movx	@dptr,a
   2050 E5 35         [12] 1143 	mov	a,(_packet_get_next_sloc0_1_0 + 1)
   2052 A3            [24] 1144 	inc	dptr
   2053 F0            [24] 1145 	movx	@dptr,a
   2054 8A 82         [24] 1146 	mov	dpl,r2
   2056 8E 83         [24] 1147 	mov	dph,r6
   2058 8F F0         [24] 1148 	mov	b,r7
   205A 12 5D A3      [24] 1149 	lcall	_memcpy
                           1150 ;	radio/packet.c:180: memcpy(last_sent, &last_sent[max_xmit], slen - max_xmit);
   205D E5 31         [12] 1151 	mov	a,_packet_get_next_max_xmit_1_143
   205F 24 22         [12] 1152 	add	a,#_last_sent
   2061 FE            [12] 1153 	mov	r6,a
   2062 E4            [12] 1154 	clr	a
   2063 34 02         [12] 1155 	addc	a,#(_last_sent >> 8)
   2065 FF            [12] 1156 	mov	r7,a
   2066 90 05 C1      [24] 1157 	mov	dptr,#_memcpy_PARM_2
   2069 EE            [12] 1158 	mov	a,r6
   206A F0            [24] 1159 	movx	@dptr,a
   206B EF            [12] 1160 	mov	a,r7
   206C A3            [24] 1161 	inc	dptr
   206D F0            [24] 1162 	movx	@dptr,a
   206E E4            [12] 1163 	clr	a
   206F A3            [24] 1164 	inc	dptr
   2070 F0            [24] 1165 	movx	@dptr,a
   2071 AE 31         [24] 1166 	mov	r6,_packet_get_next_max_xmit_1_143
   2073 7F 00         [12] 1167 	mov	r7,#0x00
   2075 90 05 C4      [24] 1168 	mov	dptr,#_memcpy_PARM_3
   2078 E5 32         [12] 1169 	mov	a,_packet_get_next_slen_1_144
   207A C3            [12] 1170 	clr	c
   207B 9E            [12] 1171 	subb	a,r6
   207C F0            [24] 1172 	movx	@dptr,a
   207D E5 33         [12] 1173 	mov	a,(_packet_get_next_slen_1_144 + 1)
   207F 9F            [12] 1174 	subb	a,r7
   2080 A3            [24] 1175 	inc	dptr
   2081 F0            [24] 1176 	movx	@dptr,a
   2082 90 02 22      [24] 1177 	mov	dptr,#_last_sent
   2085 75 F0 00      [24] 1178 	mov	b,#0x00
   2088 12 5D A3      [24] 1179 	lcall	_memcpy
                           1180 ;	radio/packet.c:181: last_sent_len = slen - max_xmit;
   208B E5 32         [12] 1181 	mov	a,_packet_get_next_slen_1_144
   208D C3            [12] 1182 	clr	c
   208E 95 31         [12] 1183 	subb	a,_packet_get_next_max_xmit_1_143
   2090 78 58         [12] 1184 	mov	r0,#_last_sent_len
   2092 F2            [24] 1185 	movx	@r0,a
                           1186 ;	radio/packet.c:182: last_sent_is_injected = true;
   2093 D2 09         [12] 1187 	setb	_last_sent_is_injected
                           1188 ;	radio/packet.c:183: return max_xmit;
   2095 85 31 82      [24] 1189 	mov	dpl,_packet_get_next_max_xmit_1_143
   2098 22            [24] 1190 	ret
   2099                    1191 00110$:
                           1192 ;	radio/packet.c:186: memcpy(buf, last_sent, last_sent_len);
   2099 78 64         [12] 1193 	mov	r0,#_packet_get_next_PARM_2
   209B E2            [24] 1194 	movx	a,@r0
   209C FD            [12] 1195 	mov	r5,a
   209D 08            [12] 1196 	inc	r0
   209E E2            [24] 1197 	movx	a,@r0
   209F FE            [12] 1198 	mov	r6,a
   20A0 7F 00         [12] 1199 	mov	r7,#0x00
   20A2 90 05 C1      [24] 1200 	mov	dptr,#_memcpy_PARM_2
   20A5 74 22         [12] 1201 	mov	a,#_last_sent
   20A7 F0            [24] 1202 	movx	@dptr,a
   20A8 74 02         [12] 1203 	mov	a,#(_last_sent >> 8)
   20AA A3            [24] 1204 	inc	dptr
   20AB F0            [24] 1205 	movx	@dptr,a
   20AC E4            [12] 1206 	clr	a
   20AD A3            [24] 1207 	inc	dptr
   20AE F0            [24] 1208 	movx	@dptr,a
   20AF 90 05 C4      [24] 1209 	mov	dptr,#_memcpy_PARM_3
   20B2 EB            [12] 1210 	mov	a,r3
   20B3 F0            [24] 1211 	movx	@dptr,a
   20B4 EC            [12] 1212 	mov	a,r4
   20B5 A3            [24] 1213 	inc	dptr
   20B6 F0            [24] 1214 	movx	@dptr,a
   20B7 8D 82         [24] 1215 	mov	dpl,r5
   20B9 8E 83         [24] 1216 	mov	dph,r6
   20BB 8F F0         [24] 1217 	mov	b,r7
   20BD 12 5D A3      [24] 1218 	lcall	_memcpy
                           1219 ;	radio/packet.c:187: injected_packet = false;
   20C0 C2 0C         [12] 1220 	clr	_injected_packet
                           1221 ;	radio/packet.c:188: last_sent_is_injected = true;
   20C2 D2 09         [12] 1222 	setb	_last_sent_is_injected
                           1223 ;	radio/packet.c:189: return last_sent_len;
   20C4 78 58         [12] 1224 	mov	r0,#_last_sent_len
   20C6 E2            [24] 1225 	movx	a,@r0
   20C7 F5 82         [12] 1226 	mov	dpl,a
   20C9 22            [24] 1227 	ret
   20CA                    1228 00112$:
                           1229 ;	radio/packet.c:192: last_sent_is_injected = false;
   20CA C2 09         [12] 1230 	clr	_last_sent_is_injected
                           1231 ;	radio/packet.c:196: if (slen > max_xmit) {
   20CC AE 31         [24] 1232 	mov	r6,_packet_get_next_max_xmit_1_143
   20CE 7F 00         [12] 1233 	mov	r7,#0x00
   20D0 C3            [12] 1234 	clr	c
   20D1 EE            [12] 1235 	mov	a,r6
   20D2 95 32         [12] 1236 	subb	a,_packet_get_next_slen_1_144
   20D4 EF            [12] 1237 	mov	a,r7
   20D5 95 33         [12] 1238 	subb	a,(_packet_get_next_slen_1_144 + 1)
   20D7 50 04         [24] 1239 	jnc	00114$
                           1240 ;	radio/packet.c:197: slen = max_xmit;
   20D9 8E 32         [24] 1241 	mov	_packet_get_next_slen_1_144,r6
   20DB 8F 33         [24] 1242 	mov	(_packet_get_next_slen_1_144 + 1),r7
   20DD                    1243 00114$:
                           1244 ;	radio/packet.c:200: last_sent_len = 0;
   20DD 78 58         [12] 1245 	mov	r0,#_last_sent_len
   20DF E4            [12] 1246 	clr	a
   20E0 F2            [24] 1247 	movx	@r0,a
                           1248 ;	radio/packet.c:202: if (slen == 0) {
   20E1 E5 32         [12] 1249 	mov	a,_packet_get_next_slen_1_144
   20E3 45 33         [12] 1250 	orl	a,(_packet_get_next_slen_1_144 + 1)
                           1251 ;	radio/packet.c:204: return 0;
   20E5 70 03         [24] 1252 	jnz	00116$
   20E7 F5 82         [12] 1253 	mov	dpl,a
   20E9 22            [24] 1254 	ret
   20EA                    1255 00116$:
                           1256 ;	radio/packet.c:207: if (!feature_mavlink_framing) {
   20EA 20 06 53      [24] 1257 	jb	_feature_mavlink_framing,00122$
                           1258 ;	radio/packet.c:209: if (slen > 0 && serial_read_buf(buf, slen)) {
   20ED E5 32         [12] 1259 	mov	a,_packet_get_next_slen_1_144
   20EF 45 33         [12] 1260 	orl	a,(_packet_get_next_slen_1_144 + 1)
   20F1 60 43         [24] 1261 	jz	00118$
   20F3 AD 32         [24] 1262 	mov	r5,_packet_get_next_slen_1_144
   20F5 78 B3         [12] 1263 	mov	r0,#_serial_read_buf_PARM_2
   20F7 ED            [12] 1264 	mov	a,r5
   20F8 F2            [24] 1265 	movx	@r0,a
   20F9 78 64         [12] 1266 	mov	r0,#_packet_get_next_PARM_2
   20FB E2            [24] 1267 	movx	a,@r0
   20FC F5 82         [12] 1268 	mov	dpl,a
   20FE 08            [12] 1269 	inc	r0
   20FF E2            [24] 1270 	movx	a,@r0
   2100 F5 83         [12] 1271 	mov	dph,a
   2102 C0 05         [24] 1272 	push	ar5
   2104 12 43 32      [24] 1273 	lcall	_serial_read_buf
   2107 D0 05         [24] 1274 	pop	ar5
   2109 50 2B         [24] 1275 	jnc	00118$
                           1276 ;	radio/packet.c:210: memcpy(last_sent, buf, slen);
   210B 78 64         [12] 1277 	mov	r0,#_packet_get_next_PARM_2
   210D 90 05 C1      [24] 1278 	mov	dptr,#_memcpy_PARM_2
   2110 E2            [24] 1279 	movx	a,@r0
   2111 F0            [24] 1280 	movx	@dptr,a
   2112 08            [12] 1281 	inc	r0
   2113 E2            [24] 1282 	movx	a,@r0
   2114 A3            [24] 1283 	inc	dptr
   2115 F0            [24] 1284 	movx	@dptr,a
   2116 E4            [12] 1285 	clr	a
   2117 A3            [24] 1286 	inc	dptr
   2118 F0            [24] 1287 	movx	@dptr,a
   2119 90 05 C4      [24] 1288 	mov	dptr,#_memcpy_PARM_3
   211C E5 32         [12] 1289 	mov	a,_packet_get_next_slen_1_144
   211E F0            [24] 1290 	movx	@dptr,a
   211F E5 33         [12] 1291 	mov	a,(_packet_get_next_slen_1_144 + 1)
   2121 A3            [24] 1292 	inc	dptr
   2122 F0            [24] 1293 	movx	@dptr,a
   2123 90 02 22      [24] 1294 	mov	dptr,#_last_sent
   2126 75 F0 00      [24] 1295 	mov	b,#0x00
   2129 C0 05         [24] 1296 	push	ar5
   212B 12 5D A3      [24] 1297 	lcall	_memcpy
   212E D0 05         [24] 1298 	pop	ar5
                           1299 ;	radio/packet.c:211: last_sent_len = slen;
   2130 78 58         [12] 1300 	mov	r0,#_last_sent_len
   2132 ED            [12] 1301 	mov	a,r5
   2133 F2            [24] 1302 	movx	@r0,a
   2134 80 04         [24] 1303 	sjmp	00119$
   2136                    1304 00118$:
                           1305 ;	radio/packet.c:213: last_sent_len = 0;
   2136 78 58         [12] 1306 	mov	r0,#_last_sent_len
   2138 E4            [12] 1307 	clr	a
   2139 F2            [24] 1308 	movx	@r0,a
   213A                    1309 00119$:
                           1310 ;	radio/packet.c:215: return last_sent_len;
   213A 78 58         [12] 1311 	mov	r0,#_last_sent_len
   213C E2            [24] 1312 	movx	a,@r0
   213D F5 82         [12] 1313 	mov	dpl,a
   213F 22            [24] 1314 	ret
   2140                    1315 00122$:
                           1316 ;	radio/packet.c:220: if (mav_pkt_len == 1) {
   2140 78 5C         [12] 1317 	mov	r0,#_mav_pkt_len
   2142 E2            [24] 1318 	movx	a,@r0
   2143 B4 01 02      [24] 1319 	cjne	a,#0x01,00248$
   2146 80 03         [24] 1320 	sjmp	00249$
   2148                    1321 00248$:
   2148 02 21 D5      [24] 1322 	ljmp	00128$
   214B                    1323 00249$:
                           1324 ;	radio/packet.c:222: if (slen == 1) {
   214B 74 01         [12] 1325 	mov	a,#0x01
   214D B5 32 06      [24] 1326 	cjne	a,_packet_get_next_slen_1_144,00250$
   2150 E4            [12] 1327 	clr	a
   2151 B5 33 02      [24] 1328 	cjne	a,(_packet_get_next_slen_1_144 + 1),00250$
   2154 80 02         [24] 1329 	sjmp	00251$
   2156                    1330 00250$:
   2156 80 79         [24] 1331 	sjmp	00126$
   2158                    1332 00251$:
                           1333 ;	radio/packet.c:223: if ((uint16_t)(timer2_tick() - mav_pkt_start_time) > mav_pkt_max_time) {
   2158 12 57 04      [24] 1334 	lcall	_timer2_tick
   215B AE 82         [24] 1335 	mov	r6,dpl
   215D AF 83         [24] 1336 	mov	r7,dph
   215F 78 5D         [12] 1337 	mov	r0,#_mav_pkt_start_time
   2161 D3            [12] 1338 	setb	c
   2162 E2            [24] 1339 	movx	a,@r0
   2163 9E            [12] 1340 	subb	a,r6
   2164 F4            [12] 1341 	cpl	a
   2165 B3            [12] 1342 	cpl	c
   2166 FE            [12] 1343 	mov	r6,a
   2167 B3            [12] 1344 	cpl	c
   2168 08            [12] 1345 	inc	r0
   2169 E2            [24] 1346 	movx	a,@r0
   216A 9F            [12] 1347 	subb	a,r7
   216B F4            [12] 1348 	cpl	a
   216C FF            [12] 1349 	mov	r7,a
   216D 78 5F         [12] 1350 	mov	r0,#_mav_pkt_max_time
   216F C3            [12] 1351 	clr	c
   2170 E2            [24] 1352 	movx	a,@r0
   2171 9E            [12] 1353 	subb	a,r6
   2172 08            [12] 1354 	inc	r0
   2173 E2            [24] 1355 	movx	a,@r0
   2174 9F            [12] 1356 	subb	a,r7
   2175 50 56         [24] 1357 	jnc	00124$
                           1358 ;	radio/packet.c:225: last_sent[last_sent_len++] = serial_read();
   2177 78 58         [12] 1359 	mov	r0,#_last_sent_len
   2179 E2            [24] 1360 	movx	a,@r0
   217A FF            [12] 1361 	mov	r7,a
   217B 78 58         [12] 1362 	mov	r0,#_last_sent_len
   217D 04            [12] 1363 	inc	a
   217E F2            [24] 1364 	movx	@r0,a
   217F EF            [12] 1365 	mov	a,r7
   2180 24 22         [12] 1366 	add	a,#_last_sent
   2182 FF            [12] 1367 	mov	r7,a
   2183 E4            [12] 1368 	clr	a
   2184 34 02         [12] 1369 	addc	a,#(_last_sent >> 8)
   2186 FE            [12] 1370 	mov	r6,a
   2187 C0 07         [24] 1371 	push	ar7
   2189 C0 06         [24] 1372 	push	ar6
   218B 12 42 6B      [24] 1373 	lcall	_serial_read
   218E AD 82         [24] 1374 	mov	r5,dpl
   2190 D0 06         [24] 1375 	pop	ar6
   2192 D0 07         [24] 1376 	pop	ar7
   2194 8F 82         [24] 1377 	mov	dpl,r7
   2196 8E 83         [24] 1378 	mov	dph,r6
   2198 ED            [12] 1379 	mov	a,r5
   2199 F0            [24] 1380 	movx	@dptr,a
                           1381 ;	radio/packet.c:226: memcpy(buf, last_sent, last_sent_len);				
   219A 78 64         [12] 1382 	mov	r0,#_packet_get_next_PARM_2
   219C E2            [24] 1383 	movx	a,@r0
   219D FD            [12] 1384 	mov	r5,a
   219E 08            [12] 1385 	inc	r0
   219F E2            [24] 1386 	movx	a,@r0
   21A0 FE            [12] 1387 	mov	r6,a
   21A1 7F 00         [12] 1388 	mov	r7,#0x00
   21A3 90 05 C1      [24] 1389 	mov	dptr,#_memcpy_PARM_2
   21A6 74 22         [12] 1390 	mov	a,#_last_sent
   21A8 F0            [24] 1391 	movx	@dptr,a
   21A9 74 02         [12] 1392 	mov	a,#(_last_sent >> 8)
   21AB A3            [24] 1393 	inc	dptr
   21AC F0            [24] 1394 	movx	@dptr,a
   21AD E4            [12] 1395 	clr	a
   21AE A3            [24] 1396 	inc	dptr
   21AF F0            [24] 1397 	movx	@dptr,a
   21B0 78 58         [12] 1398 	mov	r0,#_last_sent_len
   21B2 90 05 C4      [24] 1399 	mov	dptr,#_memcpy_PARM_3
   21B5 E2            [24] 1400 	movx	a,@r0
   21B6 F0            [24] 1401 	movx	@dptr,a
   21B7 E4            [12] 1402 	clr	a
   21B8 A3            [24] 1403 	inc	dptr
   21B9 F0            [24] 1404 	movx	@dptr,a
   21BA 8D 82         [24] 1405 	mov	dpl,r5
   21BC 8E 83         [24] 1406 	mov	dph,r6
   21BE 8F F0         [24] 1407 	mov	b,r7
   21C0 12 5D A3      [24] 1408 	lcall	_memcpy
                           1409 ;	radio/packet.c:227: mav_pkt_len = 0;
   21C3 78 5C         [12] 1410 	mov	r0,#_mav_pkt_len
   21C5 E4            [12] 1411 	clr	a
   21C6 F2            [24] 1412 	movx	@r0,a
                           1413 ;	radio/packet.c:228: return last_sent_len;
   21C7 78 58         [12] 1414 	mov	r0,#_last_sent_len
   21C9 E2            [24] 1415 	movx	a,@r0
   21CA F5 82         [12] 1416 	mov	dpl,a
   21CC 22            [24] 1417 	ret
   21CD                    1418 00124$:
                           1419 ;	radio/packet.c:231: return 0;
   21CD 75 82 00      [24] 1420 	mov	dpl,#0x00
   21D0 22            [24] 1421 	ret
   21D1                    1422 00126$:
                           1423 ;	radio/packet.c:235: mav_pkt_len = 0;
   21D1 78 5C         [12] 1424 	mov	r0,#_mav_pkt_len
   21D3 E4            [12] 1425 	clr	a
   21D4 F2            [24] 1426 	movx	@r0,a
   21D5                    1427 00128$:
                           1428 ;	radio/packet.c:239: if (mav_pkt_len != 0) {
   21D5 78 5C         [12] 1429 	mov	r0,#_mav_pkt_len
   21D7 E2            [24] 1430 	movx	a,@r0
   21D8 70 03         [24] 1431 	jnz	00253$
   21DA 02 22 64      [24] 1432 	ljmp	00180$
   21DD                    1433 00253$:
                           1434 ;	radio/packet.c:240: if (slen < mav_pkt_len) {
   21DD 78 5C         [12] 1435 	mov	r0,#_mav_pkt_len
   21DF E2            [24] 1436 	movx	a,@r0
   21E0 FE            [12] 1437 	mov	r6,a
   21E1 7F 00         [12] 1438 	mov	r7,#0x00
   21E3 C3            [12] 1439 	clr	c
   21E4 E5 32         [12] 1440 	mov	a,_packet_get_next_slen_1_144
   21E6 9E            [12] 1441 	subb	a,r6
   21E7 E5 33         [12] 1442 	mov	a,(_packet_get_next_slen_1_144 + 1)
   21E9 9F            [12] 1443 	subb	a,r7
   21EA 50 68         [24] 1444 	jnc	00132$
                           1445 ;	radio/packet.c:241: if ((uint16_t)(timer2_tick() - mav_pkt_start_time) > mav_pkt_max_time) {
   21EC 12 57 04      [24] 1446 	lcall	_timer2_tick
   21EF AE 82         [24] 1447 	mov	r6,dpl
   21F1 AF 83         [24] 1448 	mov	r7,dph
   21F3 78 5D         [12] 1449 	mov	r0,#_mav_pkt_start_time
   21F5 D3            [12] 1450 	setb	c
   21F6 E2            [24] 1451 	movx	a,@r0
   21F7 9E            [12] 1452 	subb	a,r6
   21F8 F4            [12] 1453 	cpl	a
   21F9 B3            [12] 1454 	cpl	c
   21FA FE            [12] 1455 	mov	r6,a
   21FB B3            [12] 1456 	cpl	c
   21FC 08            [12] 1457 	inc	r0
   21FD E2            [24] 1458 	movx	a,@r0
   21FE 9F            [12] 1459 	subb	a,r7
   21FF F4            [12] 1460 	cpl	a
   2200 FF            [12] 1461 	mov	r7,a
   2201 78 5F         [12] 1462 	mov	r0,#_mav_pkt_max_time
   2203 C3            [12] 1463 	clr	c
   2204 E2            [24] 1464 	movx	a,@r0
   2205 9E            [12] 1465 	subb	a,r6
   2206 08            [12] 1466 	inc	r0
   2207 E2            [24] 1467 	movx	a,@r0
   2208 9F            [12] 1468 	subb	a,r7
   2209 50 45         [24] 1469 	jnc	00130$
                           1470 ;	radio/packet.c:244: serial_read_buf(last_sent, slen);
   220B AD 32         [24] 1471 	mov	r5,_packet_get_next_slen_1_144
   220D 78 B3         [12] 1472 	mov	r0,#_serial_read_buf_PARM_2
   220F ED            [12] 1473 	mov	a,r5
   2210 F2            [24] 1474 	movx	@r0,a
   2211 90 02 22      [24] 1475 	mov	dptr,#_last_sent
   2214 C0 05         [24] 1476 	push	ar5
   2216 12 43 32      [24] 1477 	lcall	_serial_read_buf
   2219 D0 05         [24] 1478 	pop	ar5
                           1479 ;	radio/packet.c:245: last_sent_len = slen;
   221B 78 58         [12] 1480 	mov	r0,#_last_sent_len
   221D ED            [12] 1481 	mov	a,r5
   221E F2            [24] 1482 	movx	@r0,a
                           1483 ;	radio/packet.c:246: memcpy(buf, last_sent, last_sent_len);
   221F 78 64         [12] 1484 	mov	r0,#_packet_get_next_PARM_2
   2221 E2            [24] 1485 	movx	a,@r0
   2222 FC            [12] 1486 	mov	r4,a
   2223 08            [12] 1487 	inc	r0
   2224 E2            [24] 1488 	movx	a,@r0
   2225 FE            [12] 1489 	mov	r6,a
   2226 7F 00         [12] 1490 	mov	r7,#0x00
   2228 90 05 C1      [24] 1491 	mov	dptr,#_memcpy_PARM_2
   222B 74 22         [12] 1492 	mov	a,#_last_sent
   222D F0            [24] 1493 	movx	@dptr,a
   222E 74 02         [12] 1494 	mov	a,#(_last_sent >> 8)
   2230 A3            [24] 1495 	inc	dptr
   2231 F0            [24] 1496 	movx	@dptr,a
   2232 E4            [12] 1497 	clr	a
   2233 A3            [24] 1498 	inc	dptr
   2234 F0            [24] 1499 	movx	@dptr,a
   2235 90 05 C4      [24] 1500 	mov	dptr,#_memcpy_PARM_3
   2238 ED            [12] 1501 	mov	a,r5
   2239 F0            [24] 1502 	movx	@dptr,a
   223A E4            [12] 1503 	clr	a
   223B A3            [24] 1504 	inc	dptr
   223C F0            [24] 1505 	movx	@dptr,a
   223D 8C 82         [24] 1506 	mov	dpl,r4
   223F 8E 83         [24] 1507 	mov	dph,r6
   2241 8F F0         [24] 1508 	mov	b,r7
   2243 12 5D A3      [24] 1509 	lcall	_memcpy
                           1510 ;	radio/packet.c:247: mav_pkt_len = 0;
   2246 78 5C         [12] 1511 	mov	r0,#_mav_pkt_len
   2248 E4            [12] 1512 	clr	a
   2249 F2            [24] 1513 	movx	@r0,a
                           1514 ;	radio/packet.c:248: return last_sent_len;
   224A 78 58         [12] 1515 	mov	r0,#_last_sent_len
   224C E2            [24] 1516 	movx	a,@r0
   224D F5 82         [12] 1517 	mov	dpl,a
   224F 22            [24] 1518 	ret
   2250                    1519 00130$:
                           1520 ;	radio/packet.c:252: return 0;
   2250 75 82 00      [24] 1521 	mov	dpl,#0x00
   2253 22            [24] 1522 	ret
   2254                    1523 00132$:
                           1524 ;	radio/packet.c:256: return mavlink_frame(max_xmit, buf);
   2254 78 64         [12] 1525 	mov	r0,#_packet_get_next_PARM_2
   2256 79 62         [12] 1526 	mov	r1,#_mavlink_frame_PARM_2
   2258 E2            [24] 1527 	movx	a,@r0
   2259 F3            [24] 1528 	movx	@r1,a
   225A 08            [12] 1529 	inc	r0
   225B E2            [24] 1530 	movx	a,@r0
   225C 09            [12] 1531 	inc	r1
   225D F3            [24] 1532 	movx	@r1,a
   225E 85 31 82      [24] 1533 	mov	dpl,_packet_get_next_max_xmit_1_143
   2261 02 1E 35      [24] 1534 	ljmp	_mavlink_frame
                           1535 ;	radio/packet.c:259: while (slen > 0) {
   2264                    1536 00180$:
   2264                    1537 00152$:
   2264 E5 32         [12] 1538 	mov	a,_packet_get_next_slen_1_144
   2266 45 33         [12] 1539 	orl	a,(_packet_get_next_slen_1_144 + 1)
   2268 70 03         [24] 1540 	jnz	00256$
   226A 02 24 0A      [24] 1541 	ljmp	00154$
   226D                    1542 00256$:
                           1543 ;	radio/packet.c:260: register uint8_t c = serial_peek();
   226D 12 42 E9      [24] 1544 	lcall	_serial_peek
   2270 AF 82         [24] 1545 	mov	r7,dpl
                           1546 ;	radio/packet.c:261: if (c == MAVLINK09_STX || c == MAVLINK10_STX) {
   2272 BF 55 02      [24] 1547 	cjne	r7,#0x55,00257$
   2275 80 08         [24] 1548 	sjmp	00148$
   2277                    1549 00257$:
   2277 BF FE 02      [24] 1550 	cjne	r7,#0xFE,00258$
   227A 80 03         [24] 1551 	sjmp	00259$
   227C                    1552 00258$:
   227C 02 23 DB      [24] 1553 	ljmp	00149$
   227F                    1554 00259$:
   227F                    1555 00148$:
                           1556 ;	radio/packet.c:262: if (slen == 1) {
   227F 74 01         [12] 1557 	mov	a,#0x01
   2281 B5 32 06      [24] 1558 	cjne	a,_packet_get_next_slen_1_144,00260$
   2284 E4            [12] 1559 	clr	a
   2285 B5 33 02      [24] 1560 	cjne	a,(_packet_get_next_slen_1_144 + 1),00260$
   2288 80 02         [24] 1561 	sjmp	00261$
   228A                    1562 00260$:
   228A 80 2E         [24] 1563 	sjmp	00138$
   228C                    1564 00261$:
                           1565 ;	radio/packet.c:264: if (last_sent_len == 0) {
   228C 78 58         [12] 1566 	mov	r0,#_last_sent_len
   228E E2            [24] 1567 	movx	a,@r0
   228F 60 03         [24] 1568 	jz	00262$
   2291 02 24 0A      [24] 1569 	ljmp	00154$
   2294                    1570 00262$:
                           1571 ;	radio/packet.c:267: mav_pkt_len = 1;
   2294 78 5C         [12] 1572 	mov	r0,#_mav_pkt_len
   2296 74 01         [12] 1573 	mov	a,#0x01
   2298 F2            [24] 1574 	movx	@r0,a
                           1575 ;	radio/packet.c:268: mav_pkt_start_time = timer2_tick();
   2299 12 57 04      [24] 1576 	lcall	_timer2_tick
   229C E5 82         [12] 1577 	mov	a,dpl
   229E 85 83 F0      [24] 1578 	mov	b,dph
   22A1 78 5D         [12] 1579 	mov	r0,#_mav_pkt_start_time
   22A3 F2            [24] 1580 	movx	@r0,a
   22A4 08            [12] 1581 	inc	r0
   22A5 E5 F0         [12] 1582 	mov	a,b
   22A7 F2            [24] 1583 	movx	@r0,a
                           1584 ;	radio/packet.c:269: mav_pkt_max_time = serial_rate;
   22A8 78 5A         [12] 1585 	mov	r0,#_serial_rate
   22AA E2            [24] 1586 	movx	a,@r0
   22AB FE            [12] 1587 	mov	r6,a
   22AC 08            [12] 1588 	inc	r0
   22AD E2            [24] 1589 	movx	a,@r0
   22AE FF            [12] 1590 	mov	r7,a
   22AF 78 5F         [12] 1591 	mov	r0,#_mav_pkt_max_time
   22B1 EE            [12] 1592 	mov	a,r6
   22B2 F2            [24] 1593 	movx	@r0,a
   22B3 08            [12] 1594 	inc	r0
   22B4 EF            [12] 1595 	mov	a,r7
   22B5 F2            [24] 1596 	movx	@r0,a
                           1597 ;	radio/packet.c:270: return 0;
   22B6 75 82 00      [24] 1598 	mov	dpl,#0x00
   22B9 22            [24] 1599 	ret
                           1600 ;	radio/packet.c:272: break;
   22BA                    1601 00138$:
                           1602 ;	radio/packet.c:274: mav_pkt_len = serial_peek2();
   22BA 12 43 05      [24] 1603 	lcall	_serial_peek2
   22BD AF 82         [24] 1604 	mov	r7,dpl
   22BF 78 5C         [12] 1605 	mov	r0,#_mav_pkt_len
   22C1 EF            [12] 1606 	mov	a,r7
   22C2 F2            [24] 1607 	movx	@r0,a
                           1608 ;	radio/packet.c:275: if (mav_pkt_len >= 255-8 ||
   22C3 BF F7 00      [24] 1609 	cjne	r7,#0xF7,00263$
   22C6                    1610 00263$:
   22C6 50 20         [24] 1611 	jnc	00139$
                           1612 ;	radio/packet.c:276: mav_pkt_len+8 > mav_max_xmit) {
   22C8 8F 05         [24] 1613 	mov	ar5,r7
   22CA 7E 00         [12] 1614 	mov	r6,#0x00
   22CC 74 08         [12] 1615 	mov	a,#0x08
   22CE 2D            [12] 1616 	add	a,r5
   22CF FD            [12] 1617 	mov	r5,a
   22D0 E4            [12] 1618 	clr	a
   22D1 3E            [12] 1619 	addc	a,r6
   22D2 FE            [12] 1620 	mov	r6,a
   22D3 78 61         [12] 1621 	mov	r0,#_mav_max_xmit
   22D5 E2            [24] 1622 	movx	a,@r0
   22D6 FB            [12] 1623 	mov	r3,a
   22D7 7C 00         [12] 1624 	mov	r4,#0x00
   22D9 C3            [12] 1625 	clr	c
   22DA EB            [12] 1626 	mov	a,r3
   22DB 9D            [12] 1627 	subb	a,r5
   22DC EC            [12] 1628 	mov	a,r4
   22DD 64 80         [12] 1629 	xrl	a,#0x80
   22DF 8E F0         [24] 1630 	mov	b,r6
   22E1 63 F0 80      [24] 1631 	xrl	b,#0x80
   22E4 95 F0         [12] 1632 	subb	a,b
   22E6 50 33         [24] 1633 	jnc	00140$
   22E8                    1634 00139$:
                           1635 ;	radio/packet.c:278: mav_pkt_len = 0;
   22E8 78 5C         [12] 1636 	mov	r0,#_mav_pkt_len
   22EA E4            [12] 1637 	clr	a
   22EB F2            [24] 1638 	movx	@r0,a
                           1639 ;	radio/packet.c:279: last_sent[last_sent_len++] = serial_read();
   22EC 78 58         [12] 1640 	mov	r0,#_last_sent_len
   22EE E2            [24] 1641 	movx	a,@r0
   22EF FE            [12] 1642 	mov	r6,a
   22F0 78 58         [12] 1643 	mov	r0,#_last_sent_len
   22F2 04            [12] 1644 	inc	a
   22F3 F2            [24] 1645 	movx	@r0,a
   22F4 EE            [12] 1646 	mov	a,r6
   22F5 24 22         [12] 1647 	add	a,#_last_sent
   22F7 FE            [12] 1648 	mov	r6,a
   22F8 E4            [12] 1649 	clr	a
   22F9 34 02         [12] 1650 	addc	a,#(_last_sent >> 8)
   22FB FD            [12] 1651 	mov	r5,a
   22FC C0 06         [24] 1652 	push	ar6
   22FE C0 05         [24] 1653 	push	ar5
   2300 12 42 6B      [24] 1654 	lcall	_serial_read
   2303 AC 82         [24] 1655 	mov	r4,dpl
   2305 D0 05         [24] 1656 	pop	ar5
   2307 D0 06         [24] 1657 	pop	ar6
   2309 8E 82         [24] 1658 	mov	dpl,r6
   230B 8D 83         [24] 1659 	mov	dph,r5
   230D EC            [12] 1660 	mov	a,r4
   230E F0            [24] 1661 	movx	@dptr,a
                           1662 ;	radio/packet.c:280: slen--;				
   230F 15 32         [12] 1663 	dec	_packet_get_next_slen_1_144
   2311 74 FF         [12] 1664 	mov	a,#0xFF
   2313 B5 32 02      [24] 1665 	cjne	a,_packet_get_next_slen_1_144,00266$
   2316 15 33         [12] 1666 	dec	(_packet_get_next_slen_1_144 + 1)
   2318                    1667 00266$:
                           1668 ;	radio/packet.c:281: continue;
   2318 02 22 64      [24] 1669 	ljmp	00152$
   231B                    1670 00140$:
                           1671 ;	radio/packet.c:286: mav_pkt_len += 8;
   231B 74 08         [12] 1672 	mov	a,#0x08
   231D 2F            [12] 1673 	add	a,r7
   231E FF            [12] 1674 	mov	r7,a
   231F 78 5C         [12] 1675 	mov	r0,#_mav_pkt_len
   2321 F2            [24] 1676 	movx	@r0,a
                           1677 ;	radio/packet.c:288: if (last_sent_len != 0) {
   2322 78 58         [12] 1678 	mov	r0,#_last_sent_len
   2324 E2            [24] 1679 	movx	a,@r0
   2325 60 62         [24] 1680 	jz	00146$
                           1681 ;	radio/packet.c:292: memcpy(buf, last_sent, last_sent_len);
   2327 78 64         [12] 1682 	mov	r0,#_packet_get_next_PARM_2
   2329 E2            [24] 1683 	movx	a,@r0
   232A FC            [12] 1684 	mov	r4,a
   232B 08            [12] 1685 	inc	r0
   232C E2            [24] 1686 	movx	a,@r0
   232D FD            [12] 1687 	mov	r5,a
   232E 7E 00         [12] 1688 	mov	r6,#0x00
   2330 90 05 C1      [24] 1689 	mov	dptr,#_memcpy_PARM_2
   2333 74 22         [12] 1690 	mov	a,#_last_sent
   2335 F0            [24] 1691 	movx	@dptr,a
   2336 74 02         [12] 1692 	mov	a,#(_last_sent >> 8)
   2338 A3            [24] 1693 	inc	dptr
   2339 F0            [24] 1694 	movx	@dptr,a
   233A E4            [12] 1695 	clr	a
   233B A3            [24] 1696 	inc	dptr
   233C F0            [24] 1697 	movx	@dptr,a
   233D 78 58         [12] 1698 	mov	r0,#_last_sent_len
   233F 90 05 C4      [24] 1699 	mov	dptr,#_memcpy_PARM_3
   2342 E2            [24] 1700 	movx	a,@r0
   2343 F0            [24] 1701 	movx	@dptr,a
   2344 E4            [12] 1702 	clr	a
   2345 A3            [24] 1703 	inc	dptr
   2346 F0            [24] 1704 	movx	@dptr,a
   2347 8C 82         [24] 1705 	mov	dpl,r4
   2349 8D 83         [24] 1706 	mov	dph,r5
   234B 8E F0         [24] 1707 	mov	b,r6
   234D 12 5D A3      [24] 1708 	lcall	_memcpy
                           1709 ;	radio/packet.c:293: mav_pkt_start_time = timer2_tick();
   2350 12 57 04      [24] 1710 	lcall	_timer2_tick
   2353 E5 82         [12] 1711 	mov	a,dpl
   2355 85 83 F0      [24] 1712 	mov	b,dph
   2358 78 5D         [12] 1713 	mov	r0,#_mav_pkt_start_time
   235A F2            [24] 1714 	movx	@r0,a
   235B 08            [12] 1715 	inc	r0
   235C E5 F0         [12] 1716 	mov	a,b
   235E F2            [24] 1717 	movx	@r0,a
                           1718 ;	radio/packet.c:294: mav_pkt_max_time = mav_pkt_len * serial_rate;
   235F 78 5C         [12] 1719 	mov	r0,#_mav_pkt_len
   2361 E2            [24] 1720 	movx	a,@r0
   2362 FD            [12] 1721 	mov	r5,a
   2363 7E 00         [12] 1722 	mov	r6,#0x00
   2365 78 5A         [12] 1723 	mov	r0,#_serial_rate
   2367 90 05 CB      [24] 1724 	mov	dptr,#__mulint_PARM_2
   236A E2            [24] 1725 	movx	a,@r0
   236B F0            [24] 1726 	movx	@dptr,a
   236C 08            [12] 1727 	inc	r0
   236D E2            [24] 1728 	movx	a,@r0
   236E A3            [24] 1729 	inc	dptr
   236F F0            [24] 1730 	movx	@dptr,a
   2370 8D 82         [24] 1731 	mov	dpl,r5
   2372 8E 83         [24] 1732 	mov	dph,r6
   2374 12 5E 7B      [24] 1733 	lcall	__mulint
   2377 E5 82         [12] 1734 	mov	a,dpl
   2379 85 83 F0      [24] 1735 	mov	b,dph
   237C 78 5F         [12] 1736 	mov	r0,#_mav_pkt_max_time
   237E F2            [24] 1737 	movx	@r0,a
   237F 08            [12] 1738 	inc	r0
   2380 E5 F0         [12] 1739 	mov	a,b
   2382 F2            [24] 1740 	movx	@r0,a
                           1741 ;	radio/packet.c:295: return last_sent_len;
   2383 78 58         [12] 1742 	mov	r0,#_last_sent_len
   2385 E2            [24] 1743 	movx	a,@r0
   2386 F5 82         [12] 1744 	mov	dpl,a
   2388 22            [24] 1745 	ret
   2389                    1746 00146$:
                           1747 ;	radio/packet.c:296: } else if (mav_pkt_len > slen) {
   2389 7E 00         [12] 1748 	mov	r6,#0x00
   238B C3            [12] 1749 	clr	c
   238C E5 32         [12] 1750 	mov	a,_packet_get_next_slen_1_144
   238E 9F            [12] 1751 	subb	a,r7
   238F E5 33         [12] 1752 	mov	a,(_packet_get_next_slen_1_144 + 1)
   2391 9E            [12] 1753 	subb	a,r6
   2392 50 37         [24] 1754 	jnc	00143$
                           1755 ;	radio/packet.c:299: mav_pkt_start_time = timer2_tick();
   2394 12 57 04      [24] 1756 	lcall	_timer2_tick
   2397 E5 82         [12] 1757 	mov	a,dpl
   2399 85 83 F0      [24] 1758 	mov	b,dph
   239C 78 5D         [12] 1759 	mov	r0,#_mav_pkt_start_time
   239E F2            [24] 1760 	movx	@r0,a
   239F 08            [12] 1761 	inc	r0
   23A0 E5 F0         [12] 1762 	mov	a,b
   23A2 F2            [24] 1763 	movx	@r0,a
                           1764 ;	radio/packet.c:300: mav_pkt_max_time = mav_pkt_len * serial_rate;
   23A3 78 5C         [12] 1765 	mov	r0,#_mav_pkt_len
   23A5 E2            [24] 1766 	movx	a,@r0
   23A6 FE            [12] 1767 	mov	r6,a
   23A7 7F 00         [12] 1768 	mov	r7,#0x00
   23A9 78 5A         [12] 1769 	mov	r0,#_serial_rate
   23AB 90 05 CB      [24] 1770 	mov	dptr,#__mulint_PARM_2
   23AE E2            [24] 1771 	movx	a,@r0
   23AF F0            [24] 1772 	movx	@dptr,a
   23B0 08            [12] 1773 	inc	r0
   23B1 E2            [24] 1774 	movx	a,@r0
   23B2 A3            [24] 1775 	inc	dptr
   23B3 F0            [24] 1776 	movx	@dptr,a
   23B4 8E 82         [24] 1777 	mov	dpl,r6
   23B6 8F 83         [24] 1778 	mov	dph,r7
   23B8 12 5E 7B      [24] 1779 	lcall	__mulint
   23BB E5 82         [12] 1780 	mov	a,dpl
   23BD 85 83 F0      [24] 1781 	mov	b,dph
   23C0 78 5F         [12] 1782 	mov	r0,#_mav_pkt_max_time
   23C2 F2            [24] 1783 	movx	@r0,a
   23C3 08            [12] 1784 	inc	r0
   23C4 E5 F0         [12] 1785 	mov	a,b
   23C6 F2            [24] 1786 	movx	@r0,a
                           1787 ;	radio/packet.c:301: return 0;					
   23C7 75 82 00      [24] 1788 	mov	dpl,#0x00
   23CA 22            [24] 1789 	ret
   23CB                    1790 00143$:
                           1791 ;	radio/packet.c:305: return mavlink_frame(max_xmit, buf);
   23CB 78 64         [12] 1792 	mov	r0,#_packet_get_next_PARM_2
   23CD 79 62         [12] 1793 	mov	r1,#_mavlink_frame_PARM_2
   23CF E2            [24] 1794 	movx	a,@r0
   23D0 F3            [24] 1795 	movx	@r1,a
   23D1 08            [12] 1796 	inc	r0
   23D2 E2            [24] 1797 	movx	a,@r0
   23D3 09            [12] 1798 	inc	r1
   23D4 F3            [24] 1799 	movx	@r1,a
   23D5 85 31 82      [24] 1800 	mov	dpl,_packet_get_next_max_xmit_1_143
   23D8 02 1E 35      [24] 1801 	ljmp	_mavlink_frame
   23DB                    1802 00149$:
                           1803 ;	radio/packet.c:308: last_sent[last_sent_len++] = serial_read();
   23DB 78 58         [12] 1804 	mov	r0,#_last_sent_len
   23DD E2            [24] 1805 	movx	a,@r0
   23DE FF            [12] 1806 	mov	r7,a
   23DF 78 58         [12] 1807 	mov	r0,#_last_sent_len
   23E1 04            [12] 1808 	inc	a
   23E2 F2            [24] 1809 	movx	@r0,a
   23E3 EF            [12] 1810 	mov	a,r7
   23E4 24 22         [12] 1811 	add	a,#_last_sent
   23E6 FF            [12] 1812 	mov	r7,a
   23E7 E4            [12] 1813 	clr	a
   23E8 34 02         [12] 1814 	addc	a,#(_last_sent >> 8)
   23EA FE            [12] 1815 	mov	r6,a
   23EB C0 07         [24] 1816 	push	ar7
   23ED C0 06         [24] 1817 	push	ar6
   23EF 12 42 6B      [24] 1818 	lcall	_serial_read
   23F2 AD 82         [24] 1819 	mov	r5,dpl
   23F4 D0 06         [24] 1820 	pop	ar6
   23F6 D0 07         [24] 1821 	pop	ar7
   23F8 8F 82         [24] 1822 	mov	dpl,r7
   23FA 8E 83         [24] 1823 	mov	dph,r6
   23FC ED            [12] 1824 	mov	a,r5
   23FD F0            [24] 1825 	movx	@dptr,a
                           1826 ;	radio/packet.c:309: slen--;
   23FE 15 32         [12] 1827 	dec	_packet_get_next_slen_1_144
   2400 74 FF         [12] 1828 	mov	a,#0xFF
   2402 B5 32 02      [24] 1829 	cjne	a,_packet_get_next_slen_1_144,00269$
   2405 15 33         [12] 1830 	dec	(_packet_get_next_slen_1_144 + 1)
   2407                    1831 00269$:
   2407 02 22 64      [24] 1832 	ljmp	00152$
   240A                    1833 00154$:
                           1834 ;	radio/packet.c:313: memcpy(buf, last_sent, last_sent_len);
   240A 78 64         [12] 1835 	mov	r0,#_packet_get_next_PARM_2
   240C E2            [24] 1836 	movx	a,@r0
   240D FD            [12] 1837 	mov	r5,a
   240E 08            [12] 1838 	inc	r0
   240F E2            [24] 1839 	movx	a,@r0
   2410 FE            [12] 1840 	mov	r6,a
   2411 7F 00         [12] 1841 	mov	r7,#0x00
   2413 90 05 C1      [24] 1842 	mov	dptr,#_memcpy_PARM_2
   2416 74 22         [12] 1843 	mov	a,#_last_sent
   2418 F0            [24] 1844 	movx	@dptr,a
   2419 74 02         [12] 1845 	mov	a,#(_last_sent >> 8)
   241B A3            [24] 1846 	inc	dptr
   241C F0            [24] 1847 	movx	@dptr,a
   241D E4            [12] 1848 	clr	a
   241E A3            [24] 1849 	inc	dptr
   241F F0            [24] 1850 	movx	@dptr,a
   2420 78 58         [12] 1851 	mov	r0,#_last_sent_len
   2422 90 05 C4      [24] 1852 	mov	dptr,#_memcpy_PARM_3
   2425 E2            [24] 1853 	movx	a,@r0
   2426 F0            [24] 1854 	movx	@dptr,a
   2427 E4            [12] 1855 	clr	a
   2428 A3            [24] 1856 	inc	dptr
   2429 F0            [24] 1857 	movx	@dptr,a
   242A 8D 82         [24] 1858 	mov	dpl,r5
   242C 8E 83         [24] 1859 	mov	dph,r6
   242E 8F F0         [24] 1860 	mov	b,r7
   2430 12 5D A3      [24] 1861 	lcall	_memcpy
                           1862 ;	radio/packet.c:314: return last_sent_len;
   2433 78 58         [12] 1863 	mov	r0,#_last_sent_len
   2435 E2            [24] 1864 	movx	a,@r0
   2436 F5 82         [12] 1865 	mov	dpl,a
   2438 22            [24] 1866 	ret
                           1867 ;------------------------------------------------------------
                           1868 ;Allocation info for local variables in function 'packet_is_resend'
                           1869 ;------------------------------------------------------------
                           1870 ;	radio/packet.c:320: packet_is_resend(void)
                           1871 ;	-----------------------------------------
                           1872 ;	 function packet_is_resend
                           1873 ;	-----------------------------------------
   2439                    1874 _packet_is_resend:
                           1875 ;	radio/packet.c:322: return last_sent_is_resend;
   2439 A2 08         [12] 1876 	mov	c,_last_sent_is_resend
   243B 22            [24] 1877 	ret
                           1878 ;------------------------------------------------------------
                           1879 ;Allocation info for local variables in function 'packet_is_injected'
                           1880 ;------------------------------------------------------------
                           1881 ;	radio/packet.c:328: packet_is_injected(void)
                           1882 ;	-----------------------------------------
                           1883 ;	 function packet_is_injected
                           1884 ;	-----------------------------------------
   243C                    1885 _packet_is_injected:
                           1886 ;	radio/packet.c:330: return last_sent_is_injected;
   243C A2 09         [12] 1887 	mov	c,_last_sent_is_injected
   243E 22            [24] 1888 	ret
                           1889 ;------------------------------------------------------------
                           1890 ;Allocation info for local variables in function 'packet_force_resend'
                           1891 ;------------------------------------------------------------
                           1892 ;	radio/packet.c:335: packet_force_resend(void)
                           1893 ;	-----------------------------------------
                           1894 ;	 function packet_force_resend
                           1895 ;	-----------------------------------------
   243F                    1896 _packet_force_resend:
                           1897 ;	radio/packet.c:337: force_resend = true;
   243F D2 0B         [12] 1898 	setb	_force_resend
   2441 22            [24] 1899 	ret
                           1900 ;------------------------------------------------------------
                           1901 ;Allocation info for local variables in function 'packet_set_max_xmit'
                           1902 ;------------------------------------------------------------
                           1903 ;max                       Allocated with name '_packet_set_max_xmit_max_1_175'
                           1904 ;------------------------------------------------------------
                           1905 ;	radio/packet.c:342: packet_set_max_xmit(uint8_t max)
                           1906 ;	-----------------------------------------
                           1907 ;	 function packet_set_max_xmit
                           1908 ;	-----------------------------------------
   2442                    1909 _packet_set_max_xmit:
   2442 E5 82         [12] 1910 	mov	a,dpl
                           1911 ;	radio/packet.c:344: mav_max_xmit = max;
   2444 90 03 1F      [24] 1912 	mov	dptr,#_packet_set_max_xmit_max_1_175
   2447 F0            [24] 1913 	movx	@dptr,a
   2448 78 61         [12] 1914 	mov	r0,#_mav_max_xmit
   244A F2            [24] 1915 	movx	@r0,a
   244B 22            [24] 1916 	ret
                           1917 ;------------------------------------------------------------
                           1918 ;Allocation info for local variables in function 'packet_set_serial_speed'
                           1919 ;------------------------------------------------------------
                           1920 ;speed                     Allocated with name '_packet_set_serial_speed_speed_1_177'
                           1921 ;------------------------------------------------------------
                           1922 ;	radio/packet.c:349: packet_set_serial_speed(uint16_t speed)
                           1923 ;	-----------------------------------------
                           1924 ;	 function packet_set_serial_speed
                           1925 ;	-----------------------------------------
   244C                    1926 _packet_set_serial_speed:
   244C AF 83         [24] 1927 	mov	r7,dph
   244E E5 82         [12] 1928 	mov	a,dpl
   2450 90 03 20      [24] 1929 	mov	dptr,#_packet_set_serial_speed_speed_1_177
   2453 F0            [24] 1930 	movx	@dptr,a
   2454 EF            [12] 1931 	mov	a,r7
   2455 A3            [24] 1932 	inc	dptr
   2456 F0            [24] 1933 	movx	@dptr,a
                           1934 ;	radio/packet.c:352: serial_rate = (65536UL / speed) + 1;
   2457 90 03 20      [24] 1935 	mov	dptr,#_packet_set_serial_speed_speed_1_177
   245A E0            [24] 1936 	movx	a,@dptr
   245B FE            [12] 1937 	mov	r6,a
   245C A3            [24] 1938 	inc	dptr
   245D E0            [24] 1939 	movx	a,@dptr
   245E FF            [12] 1940 	mov	r7,a
   245F 90 05 B2      [24] 1941 	mov	dptr,#__divulong_PARM_2
   2462 EE            [12] 1942 	mov	a,r6
   2463 F0            [24] 1943 	movx	@dptr,a
   2464 EF            [12] 1944 	mov	a,r7
   2465 A3            [24] 1945 	inc	dptr
   2466 F0            [24] 1946 	movx	@dptr,a
   2467 E4            [12] 1947 	clr	a
   2468 A3            [24] 1948 	inc	dptr
   2469 F0            [24] 1949 	movx	@dptr,a
   246A E4            [12] 1950 	clr	a
   246B A3            [24] 1951 	inc	dptr
   246C F0            [24] 1952 	movx	@dptr,a
   246D 90 00 00      [24] 1953 	mov	dptr,#0x0000
   2470 75 F0 01      [24] 1954 	mov	b,#0x01
   2473 E4            [12] 1955 	clr	a
   2474 12 5C 3A      [24] 1956 	lcall	__divulong
   2477 AC 82         [24] 1957 	mov	r4,dpl
   2479 AD 83         [24] 1958 	mov	r5,dph
   247B AE F0         [24] 1959 	mov	r6,b
   247D FF            [12] 1960 	mov	r7,a
   247E 0C            [12] 1961 	inc	r4
   247F BC 00 09      [24] 1962 	cjne	r4,#0x00,00103$
   2482 0D            [12] 1963 	inc	r5
   2483 BD 00 05      [24] 1964 	cjne	r5,#0x00,00103$
   2486 0E            [12] 1965 	inc	r6
   2487 BE 00 01      [24] 1966 	cjne	r6,#0x00,00103$
   248A 0F            [12] 1967 	inc	r7
   248B                    1968 00103$:
   248B 78 5A         [12] 1969 	mov	r0,#_serial_rate
   248D EC            [12] 1970 	mov	a,r4
   248E F2            [24] 1971 	movx	@r0,a
   248F 08            [12] 1972 	inc	r0
   2490 ED            [12] 1973 	mov	a,r5
   2491 F2            [24] 1974 	movx	@r0,a
   2492 22            [24] 1975 	ret
                           1976 ;------------------------------------------------------------
                           1977 ;Allocation info for local variables in function 'packet_is_duplicate'
                           1978 ;------------------------------------------------------------
                           1979 ;len                       Allocated with name '_packet_is_duplicate_len_1_179'
                           1980 ;------------------------------------------------------------
                           1981 ;	radio/packet.c:357: packet_is_duplicate(uint8_t len, __xdata uint8_t * __pdata buf, bool is_resend)
                           1982 ;	-----------------------------------------
                           1983 ;	 function packet_is_duplicate
                           1984 ;	-----------------------------------------
   2493                    1985 _packet_is_duplicate:
   2493 E5 82         [12] 1986 	mov	a,dpl
   2495 90 03 22      [24] 1987 	mov	dptr,#_packet_is_duplicate_len_1_179
   2498 F0            [24] 1988 	movx	@dptr,a
                           1989 ;	radio/packet.c:359: if (!is_resend) {
   2499 20 0F 39      [24] 1990 	jb	_packet_is_duplicate_PARM_3,00102$
                           1991 ;	radio/packet.c:360: memcpy(last_received, buf, len);
   249C 78 66         [12] 1992 	mov	r0,#_packet_is_duplicate_PARM_2
   249E E2            [24] 1993 	movx	a,@r0
   249F FD            [12] 1994 	mov	r5,a
   24A0 08            [12] 1995 	inc	r0
   24A1 E2            [24] 1996 	movx	a,@r0
   24A2 FE            [12] 1997 	mov	r6,a
   24A3 7F 00         [12] 1998 	mov	r7,#0x00
   24A5 90 03 22      [24] 1999 	mov	dptr,#_packet_is_duplicate_len_1_179
   24A8 E0            [24] 2000 	movx	a,@dptr
   24A9 FC            [12] 2001 	mov	r4,a
   24AA FA            [12] 2002 	mov	r2,a
   24AB 7B 00         [12] 2003 	mov	r3,#0x00
   24AD 90 05 C1      [24] 2004 	mov	dptr,#_memcpy_PARM_2
   24B0 ED            [12] 2005 	mov	a,r5
   24B1 F0            [24] 2006 	movx	@dptr,a
   24B2 EE            [12] 2007 	mov	a,r6
   24B3 A3            [24] 2008 	inc	dptr
   24B4 F0            [24] 2009 	movx	@dptr,a
   24B5 EF            [12] 2010 	mov	a,r7
   24B6 A3            [24] 2011 	inc	dptr
   24B7 F0            [24] 2012 	movx	@dptr,a
   24B8 90 05 C4      [24] 2013 	mov	dptr,#_memcpy_PARM_3
   24BB EA            [12] 2014 	mov	a,r2
   24BC F0            [24] 2015 	movx	@dptr,a
   24BD EB            [12] 2016 	mov	a,r3
   24BE A3            [24] 2017 	inc	dptr
   24BF F0            [24] 2018 	movx	@dptr,a
   24C0 90 01 26      [24] 2019 	mov	dptr,#_last_received
   24C3 75 F0 00      [24] 2020 	mov	b,#0x00
   24C6 C0 04         [24] 2021 	push	ar4
   24C8 12 5D A3      [24] 2022 	lcall	_memcpy
   24CB D0 04         [24] 2023 	pop	ar4
                           2024 ;	radio/packet.c:361: last_recv_len = len;
   24CD 78 59         [12] 2025 	mov	r0,#_last_recv_len
   24CF EC            [12] 2026 	mov	a,r4
   24D0 F2            [24] 2027 	movx	@r0,a
                           2028 ;	radio/packet.c:362: last_recv_is_resend = false;
   24D1 C2 0A         [12] 2029 	clr	_last_recv_is_resend
                           2030 ;	radio/packet.c:363: return false;
   24D3 C3            [12] 2031 	clr	c
   24D4 22            [24] 2032 	ret
   24D5                    2033 00102$:
                           2034 ;	radio/packet.c:367: memcmp(last_received, buf, len) == 0) {
   24D5 20 0A 37      [24] 2035 	jb	_last_recv_is_resend,00104$
                           2036 ;	radio/packet.c:366: len == last_recv_len &&
   24D8 90 03 22      [24] 2037 	mov	dptr,#_packet_is_duplicate_len_1_179
   24DB E0            [24] 2038 	movx	a,@dptr
   24DC FF            [12] 2039 	mov	r7,a
   24DD 78 59         [12] 2040 	mov	r0,#_last_recv_len
   24DF E2            [24] 2041 	movx	a,@r0
   24E0 B5 07 2C      [24] 2042 	cjne	a,ar7,00104$
                           2043 ;	radio/packet.c:367: memcmp(last_received, buf, len) == 0) {
   24E3 78 66         [12] 2044 	mov	r0,#_packet_is_duplicate_PARM_2
   24E5 90 05 E0      [24] 2045 	mov	dptr,#_memcmp_PARM_2
   24E8 E2            [24] 2046 	movx	a,@r0
   24E9 F0            [24] 2047 	movx	@dptr,a
   24EA 08            [12] 2048 	inc	r0
   24EB E2            [24] 2049 	movx	a,@r0
   24EC A3            [24] 2050 	inc	dptr
   24ED F0            [24] 2051 	movx	@dptr,a
   24EE E4            [12] 2052 	clr	a
   24EF A3            [24] 2053 	inc	dptr
   24F0 F0            [24] 2054 	movx	@dptr,a
   24F1 90 05 E3      [24] 2055 	mov	dptr,#_memcmp_PARM_3
   24F4 EF            [12] 2056 	mov	a,r7
   24F5 F0            [24] 2057 	movx	@dptr,a
   24F6 E4            [12] 2058 	clr	a
   24F7 A3            [24] 2059 	inc	dptr
   24F8 F0            [24] 2060 	movx	@dptr,a
   24F9 90 01 26      [24] 2061 	mov	dptr,#_last_received
   24FC 75 F0 00      [24] 2062 	mov	b,#0x00
   24FF 12 60 B1      [24] 2063 	lcall	_memcmp
   2502 E5 82         [12] 2064 	mov	a,dpl
   2504 85 83 F0      [24] 2065 	mov	b,dph
   2507 45 F0         [12] 2066 	orl	a,b
   2509 70 04         [24] 2067 	jnz	00104$
                           2068 ;	radio/packet.c:368: last_recv_is_resend = false;
   250B C2 0A         [12] 2069 	clr	_last_recv_is_resend
                           2070 ;	radio/packet.c:369: return true;
   250D D3            [12] 2071 	setb	c
   250E 22            [24] 2072 	ret
   250F                    2073 00104$:
                           2074 ;	radio/packet.c:377: last_recv_is_resend = true;
   250F D2 0A         [12] 2075 	setb	_last_recv_is_resend
                           2076 ;	radio/packet.c:378: return false;
   2511 C3            [12] 2077 	clr	c
   2512 22            [24] 2078 	ret
                           2079 ;------------------------------------------------------------
                           2080 ;Allocation info for local variables in function 'packet_inject'
                           2081 ;------------------------------------------------------------
                           2082 ;	radio/packet.c:383: packet_inject(__xdata uint8_t * __pdata buf, __pdata uint8_t len)
                           2083 ;	-----------------------------------------
                           2084 ;	 function packet_inject
                           2085 ;	-----------------------------------------
   2513                    2086 _packet_inject:
   2513 AE 82         [24] 2087 	mov	r6,dpl
   2515 AF 83         [24] 2088 	mov	r7,dph
                           2089 ;	radio/packet.c:385: if (len > sizeof(last_sent)) {
   2517 78 68         [12] 2090 	mov	r0,#_packet_inject_PARM_2
   2519 C3            [12] 2091 	clr	c
   251A E2            [24] 2092 	movx	a,@r0
   251B F5 F0         [12] 2093 	mov	b,a
   251D 74 FC         [12] 2094 	mov	a,#0xFC
   251F 95 F0         [12] 2095 	subb	a,b
   2521 50 05         [24] 2096 	jnc	00102$
                           2097 ;	radio/packet.c:386: len = sizeof(last_sent);
   2523 78 68         [12] 2098 	mov	r0,#_packet_inject_PARM_2
   2525 74 FC         [12] 2099 	mov	a,#0xFC
   2527 F2            [24] 2100 	movx	@r0,a
   2528                    2101 00102$:
                           2102 ;	radio/packet.c:388: memcpy(last_sent, buf, len);
   2528 90 05 C1      [24] 2103 	mov	dptr,#_memcpy_PARM_2
   252B EE            [12] 2104 	mov	a,r6
   252C F0            [24] 2105 	movx	@dptr,a
   252D EF            [12] 2106 	mov	a,r7
   252E A3            [24] 2107 	inc	dptr
   252F F0            [24] 2108 	movx	@dptr,a
   2530 E4            [12] 2109 	clr	a
   2531 A3            [24] 2110 	inc	dptr
   2532 F0            [24] 2111 	movx	@dptr,a
   2533 78 68         [12] 2112 	mov	r0,#_packet_inject_PARM_2
   2535 90 05 C4      [24] 2113 	mov	dptr,#_memcpy_PARM_3
   2538 E2            [24] 2114 	movx	a,@r0
   2539 F0            [24] 2115 	movx	@dptr,a
   253A E4            [12] 2116 	clr	a
   253B A3            [24] 2117 	inc	dptr
   253C F0            [24] 2118 	movx	@dptr,a
   253D 90 02 22      [24] 2119 	mov	dptr,#_last_sent
   2540 75 F0 00      [24] 2120 	mov	b,#0x00
   2543 12 5D A3      [24] 2121 	lcall	_memcpy
                           2122 ;	radio/packet.c:389: last_sent_len = len;
   2546 78 68         [12] 2123 	mov	r0,#_packet_inject_PARM_2
   2548 E2            [24] 2124 	movx	a,@r0
   2549 78 58         [12] 2125 	mov	r0,#_last_sent_len
   254B F2            [24] 2126 	movx	@r0,a
                           2127 ;	radio/packet.c:390: last_sent_is_resend = false;
   254C C2 08         [12] 2128 	clr	_last_sent_is_resend
                           2129 ;	radio/packet.c:391: injected_packet = true;
   254E D2 0C         [12] 2130 	setb	_injected_packet
   2550 22            [24] 2131 	ret
                           2132 	.area CSEG    (CODE)
                           2133 	.area CONST   (CODE)
                           2134 	.area XINIT   (CODE)
                           2135 	.area CABS    (ABS,CODE)
