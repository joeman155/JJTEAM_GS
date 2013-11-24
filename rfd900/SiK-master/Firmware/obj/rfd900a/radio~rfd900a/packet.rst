                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:09 2013
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
                             22 	.globl _PA_ENABLE
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
                            273 	.globl _packet_inject_PARM_2
                            274 	.globl _packet_is_duplicate_PARM_2
                            275 	.globl _packet_get_next_PARM_2
                            276 	.globl _packet_is_duplicate_PARM_3
                            277 	.globl _using_mavlink_10
                            278 	.globl _seen_mavlink
                            279 	.globl _packet_get_next
                            280 	.globl _packet_is_resend
                            281 	.globl _packet_is_injected
                            282 	.globl _packet_force_resend
                            283 	.globl _packet_set_max_xmit
                            284 	.globl _packet_set_serial_speed
                            285 	.globl _packet_is_duplicate
                            286 	.globl _packet_inject
                            287 ;--------------------------------------------------------
                            288 ; special function registers
                            289 ;--------------------------------------------------------
                            290 	.area RSEG    (ABS,DATA)
   0000                     291 	.org 0x0000
                     0080   292 _P0	=	0x0080
                     0081   293 _SP	=	0x0081
                     0082   294 _DPL	=	0x0082
                     0083   295 _DPH	=	0x0083
                     0084   296 _SPI1CFG	=	0x0084
                     0085   297 _SPI1CKR	=	0x0085
                     0085   298 _TOFFL	=	0x0085
                     0086   299 _SPI1DAT	=	0x0086
                     0086   300 _TOFFH	=	0x0086
                     0087   301 _PCON	=	0x0087
                     0088   302 _TCON	=	0x0088
                     0089   303 _TMOD	=	0x0089
                     008A   304 _TL0	=	0x008a
                     008B   305 _TL1	=	0x008b
                     008C   306 _TH0	=	0x008c
                     008D   307 _TH1	=	0x008d
                     008E   308 _CKCON	=	0x008e
                     008F   309 _PSCTL	=	0x008f
                     0090   310 _P1	=	0x0090
                     0091   311 _TMR3CN	=	0x0091
                     0091   312 _CRC0DAT	=	0x0091
                     0092   313 _TMR3RLL	=	0x0092
                     0092   314 _CRC0CN	=	0x0092
                     0093   315 _TMR3RLH	=	0x0093
                     0093   316 _CRC0IN	=	0x0093
                     0094   317 _TMR3L	=	0x0094
                     0095   318 _CRC0FLIP	=	0x0095
                     0095   319 _TMR3H	=	0x0095
                     0096   320 _DC0CF	=	0x0096
                     0096   321 _CRC0AUTO	=	0x0096
                     0097   322 _DC0CN	=	0x0097
                     0097   323 _CRC0CNT	=	0x0097
                     0098   324 _SCON0	=	0x0098
                     0099   325 _SBUF0	=	0x0099
                     009A   326 _CPT1CN	=	0x009a
                     009B   327 _CPT0CN	=	0x009b
                     009C   328 _CPT1MD	=	0x009c
                     009D   329 _CPT0MD	=	0x009d
                     009E   330 _CPT1MX	=	0x009e
                     009F   331 _CPT0MX	=	0x009f
                     00A0   332 _P2	=	0x00a0
                     00A1   333 _SPI0CFG	=	0x00a1
                     00A2   334 _SPI0CKR	=	0x00a2
                     00A3   335 _SPI0DAT	=	0x00a3
                     00A4   336 _P0MDOUT	=	0x00a4
                     00A4   337 _P0DRV	=	0x00a4
                     00A5   338 _P1MDOUT	=	0x00a5
                     00A5   339 _P1DRV	=	0x00a5
                     00A6   340 _P2MDOUT	=	0x00a6
                     00A6   341 _P2DRV	=	0x00a6
                     00A7   342 _SFRPAGE	=	0x00a7
                     00A8   343 _IE	=	0x00a8
                     00A9   344 _CLKSEL	=	0x00a9
                     00AA   345 _EMI0CN	=	0x00aa
                     00AB   346 _EMI0CF	=	0x00ab
                     00AC   347 _RTC0ADR	=	0x00ac
                     00AD   348 _RTC0DAT	=	0x00ad
                     00AE   349 _RTC0KEY	=	0x00ae
                     00AF   350 _EMI0TC	=	0x00af
                     00AF   351 _ONESHOT	=	0x00af
                     00B0   352 _SPI1CN	=	0x00b0
                     00B1   353 _OSCXCN	=	0x00b1
                     00B2   354 _OSCICN	=	0x00b2
                     00B3   355 _OSCICL	=	0x00b3
                     00B5   356 _PMU0CF	=	0x00b5
                     00B6   357 _FLSCL	=	0x00b6
                     00B7   358 _FLKEY	=	0x00b7
                     00B8   359 _IP	=	0x00b8
                     00B9   360 _IREF0CN	=	0x00b9
                     00BA   361 _ADC0AC	=	0x00ba
                     00BA   362 _ADC0PWR	=	0x00ba
                     00BB   363 _ADC0MX	=	0x00bb
                     00BC   364 _ADC0CF	=	0x00bc
                     00BD   365 _ADC0TK	=	0x00bd
                     00BD   366 _ADC0L	=	0x00bd
                     00BE   367 _ADC0H	=	0x00be
                     00BF   368 _P1MASK	=	0x00bf
                     00C0   369 _SMB0CN	=	0x00c0
                     00C1   370 _SMB0CF	=	0x00c1
                     00C2   371 _SMB0DAT	=	0x00c2
                     00C3   372 _ADC0GTL	=	0x00c3
                     00C4   373 _ADC0GTH	=	0x00c4
                     00C5   374 _ADC0LTL	=	0x00c5
                     00C6   375 _ADC0LTH	=	0x00c6
                     00C7   376 _P0MASK	=	0x00c7
                     00C8   377 _TMR2CN	=	0x00c8
                     00C9   378 _REG0CN	=	0x00c9
                     00CA   379 _TMR2RLL	=	0x00ca
                     00CB   380 _TMR2RLH	=	0x00cb
                     00CC   381 _TMR2L	=	0x00cc
                     00CD   382 _TMR2H	=	0x00cd
                     00CE   383 _PCA0CPM5	=	0x00ce
                     00CF   384 _P1MAT	=	0x00cf
                     00D0   385 _PSW	=	0x00d0
                     00D1   386 _REF0CN	=	0x00d1
                     00D2   387 _PCA0CPL5	=	0x00d2
                     00D3   388 _PCA0CPH5	=	0x00d3
                     00D4   389 _P0SKIP	=	0x00d4
                     00D5   390 _P1SKIP	=	0x00d5
                     00D6   391 _P2SKIP	=	0x00d6
                     00D7   392 _P0MAT	=	0x00d7
                     00D8   393 _PCA0CN	=	0x00d8
                     00D9   394 _PCA0MD	=	0x00d9
                     00DA   395 _PCA0CPM0	=	0x00da
                     00DB   396 _PCA0CPM1	=	0x00db
                     00DC   397 _PCA0CPM2	=	0x00dc
                     00DD   398 _PCA0CPM3	=	0x00dd
                     00DE   399 _PCA0CPM4	=	0x00de
                     00DF   400 _PCA0PWM	=	0x00df
                     00E0   401 _ACC	=	0x00e0
                     00E1   402 _XBR0	=	0x00e1
                     00E2   403 _XBR1	=	0x00e2
                     00E3   404 _XBR2	=	0x00e3
                     00E4   405 _IT01CF	=	0x00e4
                     00E5   406 _FLWR	=	0x00e5
                     00E6   407 _EIE1	=	0x00e6
                     00E7   408 _EIE2	=	0x00e7
                     00E8   409 _ADC0CN	=	0x00e8
                     00E9   410 _PCA0CPL1	=	0x00e9
                     00EA   411 _PCA0CPH1	=	0x00ea
                     00EB   412 _PCA0CPL2	=	0x00eb
                     00EC   413 _PCA0CPH2	=	0x00ec
                     00ED   414 _PCA0CPL3	=	0x00ed
                     00EE   415 _PCA0CPH3	=	0x00ee
                     00EF   416 _RSTSRC	=	0x00ef
                     00F0   417 _B	=	0x00f0
                     00F1   418 _P0MDIN	=	0x00f1
                     00F2   419 _P1MDIN	=	0x00f2
                     00F3   420 _P2MDIN	=	0x00f3
                     00F4   421 _SMB0ADR	=	0x00f4
                     00F5   422 _SMB0ADM	=	0x00f5
                     00F6   423 _EIP1	=	0x00f6
                     00F7   424 _EIP2	=	0x00f7
                     00F8   425 _SPI0CN	=	0x00f8
                     00F9   426 _PCA0L	=	0x00f9
                     00FA   427 _PCA0H	=	0x00fa
                     00FB   428 _PCA0CPL0	=	0x00fb
                     00FC   429 _PCA0CPH0	=	0x00fc
                     00FD   430 _PCA0CPL4	=	0x00fd
                     00FE   431 _PCA0CPH4	=	0x00fe
                     00FF   432 _VDM0CN	=	0x00ff
                     8382   433 _DP	=	0x8382
                     8685   434 _TOFF	=	0x8685
                     9392   435 _TMR3RL	=	0x9392
                     9594   436 _TMR3	=	0x9594
                     BEBD   437 _ADC0	=	0xbebd
                     C4C3   438 _ADC0GT	=	0xc4c3
                     C6C5   439 _ADC0LT	=	0xc6c5
                     CBCA   440 _TMR2RL	=	0xcbca
                     CDCC   441 _TMR2	=	0xcdcc
                     D3D2   442 _PCA0CP5	=	0xd3d2
                     EAE9   443 _PCA0CP1	=	0xeae9
                     ECEB   444 _PCA0CP2	=	0xeceb
                     EEED   445 _PCA0CP3	=	0xeeed
                     FAF9   446 _PCA0	=	0xfaf9
                     FCFB   447 _PCA0CP0	=	0xfcfb
                     FEFD   448 _PCA0CP4	=	0xfefd
                            449 ;--------------------------------------------------------
                            450 ; special function bits
                            451 ;--------------------------------------------------------
                            452 	.area RSEG    (ABS,DATA)
   0000                     453 	.org 0x0000
                     008F   454 _TF1	=	0x008f
                     008E   455 _TR1	=	0x008e
                     008D   456 _TF0	=	0x008d
                     008C   457 _TR0	=	0x008c
                     008B   458 _IE1	=	0x008b
                     008A   459 _IT1	=	0x008a
                     0089   460 _IE0	=	0x0089
                     0088   461 _IT0	=	0x0088
                     0096   462 _CRC0SEL	=	0x0096
                     0095   463 _CRC0INIT	=	0x0095
                     0094   464 _CRC0VAL	=	0x0094
                     009F   465 _S0MODE	=	0x009f
                     009D   466 _MCE0	=	0x009d
                     009C   467 _REN0	=	0x009c
                     009B   468 _TB80	=	0x009b
                     009A   469 _RB80	=	0x009a
                     0099   470 _TI0	=	0x0099
                     0098   471 _RI0	=	0x0098
                     00AF   472 _EA	=	0x00af
                     00AE   473 _ESPI0	=	0x00ae
                     00AD   474 _ET2	=	0x00ad
                     00AC   475 _ES0	=	0x00ac
                     00AB   476 _ET1	=	0x00ab
                     00AA   477 _EX1	=	0x00aa
                     00A9   478 _ET0	=	0x00a9
                     00A8   479 _EX0	=	0x00a8
                     00B7   480 _SPIF1	=	0x00b7
                     00B6   481 _WCOL1	=	0x00b6
                     00B5   482 _MODF1	=	0x00b5
                     00B4   483 _RXOVRN1	=	0x00b4
                     00B3   484 _NSS1MD1	=	0x00b3
                     00B2   485 _NSS1MD0	=	0x00b2
                     00B1   486 _TXBMT1	=	0x00b1
                     00B0   487 _SPI1EN	=	0x00b0
                     00BE   488 _PSPI0	=	0x00be
                     00BD   489 _PT2	=	0x00bd
                     00BC   490 _PS0	=	0x00bc
                     00BB   491 _PT1	=	0x00bb
                     00BA   492 _PX1	=	0x00ba
                     00B9   493 _PT0	=	0x00b9
                     00B8   494 _PX0	=	0x00b8
                     00C7   495 _MASTER	=	0x00c7
                     00C6   496 _TXMODE	=	0x00c6
                     00C5   497 _STA	=	0x00c5
                     00C4   498 _STO	=	0x00c4
                     00C3   499 _ACKRQ	=	0x00c3
                     00C2   500 _ARBLOST	=	0x00c2
                     00C1   501 _ACK	=	0x00c1
                     00C0   502 _SI	=	0x00c0
                     00CF   503 _TF2H	=	0x00cf
                     00CE   504 _TF2L	=	0x00ce
                     00CD   505 _TF2LEN	=	0x00cd
                     00CC   506 _TF2CEN	=	0x00cc
                     00CB   507 _T2SPLIT	=	0x00cb
                     00CA   508 _TR2	=	0x00ca
                     00C9   509 _T2RCLK	=	0x00c9
                     00C8   510 _T2XCLK	=	0x00c8
                     00D7   511 _CY	=	0x00d7
                     00D6   512 _AC	=	0x00d6
                     00D5   513 _F0	=	0x00d5
                     00D4   514 _RS1	=	0x00d4
                     00D3   515 _RS0	=	0x00d3
                     00D2   516 _OV	=	0x00d2
                     00D1   517 _F1	=	0x00d1
                     00D0   518 _P	=	0x00d0
                     00DF   519 _CF	=	0x00df
                     00DE   520 _CR	=	0x00de
                     00DD   521 _CCF5	=	0x00dd
                     00DC   522 _CCF4	=	0x00dc
                     00DB   523 _CCF3	=	0x00db
                     00DA   524 _CCF2	=	0x00da
                     00D9   525 _CCF1	=	0x00d9
                     00D8   526 _CCF0	=	0x00d8
                     00EF   527 _AD0EN	=	0x00ef
                     00EE   528 _BURSTEN	=	0x00ee
                     00ED   529 _AD0INT	=	0x00ed
                     00EC   530 _AD0BUSY	=	0x00ec
                     00EB   531 _AD0WINT	=	0x00eb
                     00EA   532 _AD0CM2	=	0x00ea
                     00E9   533 _AD0CM1	=	0x00e9
                     00E8   534 _AD0CM0	=	0x00e8
                     00FF   535 _SPIF0	=	0x00ff
                     00FE   536 _WCOL0	=	0x00fe
                     00FD   537 _MODF0	=	0x00fd
                     00FC   538 _RXOVRN0	=	0x00fc
                     00FB   539 _NSS0MD1	=	0x00fb
                     00FA   540 _NSS0MD0	=	0x00fa
                     00F9   541 _TXBMT0	=	0x00f9
                     00F8   542 _SPI0EN	=	0x00f8
                     0096   543 _LED_RED	=	0x0096
                     0095   544 _LED_GREEN	=	0x0095
                     0082   545 _PIN_CONFIG	=	0x0082
                     0083   546 _PIN_ENABLE	=	0x0083
                     00A5   547 _PA_ENABLE	=	0x00a5
                     0087   548 _IRQ	=	0x0087
                     0094   549 _NSS1	=	0x0094
                            550 ;--------------------------------------------------------
                            551 ; overlayable register banks
                            552 ;--------------------------------------------------------
                            553 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     554 	.ds 8
                            555 ;--------------------------------------------------------
                            556 ; internal ram data
                            557 ;--------------------------------------------------------
                            558 	.area DSEG    (DATA)
   002B                     559 _mavlink_frame_slen_1_140:
   002B                     560 	.ds 2
   002D                     561 _mavlink_frame_c_2_141:
   002D                     562 	.ds 1
   002E                     563 _mavlink_frame_sloc0_1_0:
   002E                     564 	.ds 1
   002F                     565 _mavlink_frame_sloc1_1_0:
   002F                     566 	.ds 2
   0031                     567 _packet_get_next_max_xmit_1_145:
   0031                     568 	.ds 1
   0032                     569 _packet_get_next_slen_1_146:
   0032                     570 	.ds 2
   0034                     571 _packet_get_next_sloc0_1_0:
   0034                     572 	.ds 2
                            573 ;--------------------------------------------------------
                            574 ; overlayable items in internal ram 
                            575 ;--------------------------------------------------------
                            576 ;--------------------------------------------------------
                            577 ; indirectly addressable internal ram data
                            578 ;--------------------------------------------------------
                            579 	.area ISEG    (DATA)
                            580 ;--------------------------------------------------------
                            581 ; absolute internal ram data
                            582 ;--------------------------------------------------------
                            583 	.area IABS    (ABS,DATA)
                            584 	.area IABS    (ABS,DATA)
                            585 ;--------------------------------------------------------
                            586 ; bit data
                            587 ;--------------------------------------------------------
                            588 	.area BSEG    (BIT)
   0009                     589 _last_sent_is_resend:
   0009                     590 	.ds 1
   000A                     591 _last_sent_is_injected:
   000A                     592 	.ds 1
   000B                     593 _last_recv_is_resend:
   000B                     594 	.ds 1
   000C                     595 _force_resend:
   000C                     596 	.ds 1
   000D                     597 _injected_packet:
   000D                     598 	.ds 1
   000E                     599 _seen_mavlink::
   000E                     600 	.ds 1
   000F                     601 _using_mavlink_10::
   000F                     602 	.ds 1
   0010                     603 _packet_is_duplicate_PARM_3:
   0010                     604 	.ds 1
                            605 ;--------------------------------------------------------
                            606 ; paged external ram data
                            607 ;--------------------------------------------------------
                            608 	.area PSEG    (PAG,XDATA)
   005C                     609 _last_sent_len:
   005C                     610 	.ds 1
   005D                     611 _last_recv_len:
   005D                     612 	.ds 1
   005E                     613 _serial_rate:
   005E                     614 	.ds 2
   0060                     615 _mav_pkt_len:
   0060                     616 	.ds 1
   0061                     617 _mav_pkt_start_time:
   0061                     618 	.ds 2
   0063                     619 _mav_pkt_max_time:
   0063                     620 	.ds 2
   0065                     621 _mav_max_xmit:
   0065                     622 	.ds 1
   0066                     623 _mavlink_frame_PARM_2:
   0066                     624 	.ds 2
   0068                     625 _packet_get_next_PARM_2:
   0068                     626 	.ds 2
   006A                     627 _packet_is_duplicate_PARM_2:
   006A                     628 	.ds 2
   006C                     629 _packet_inject_PARM_2:
   006C                     630 	.ds 1
                            631 ;--------------------------------------------------------
                            632 ; external ram data
                            633 ;--------------------------------------------------------
                            634 	.area XSEG    (XDATA)
   012A                     635 _last_received:
   012A                     636 	.ds 252
   0226                     637 _last_sent:
   0226                     638 	.ds 252
   0322                     639 _mavlink_frame_max_xmit_1_139:
   0322                     640 	.ds 1
   0323                     641 _packet_set_max_xmit_max_1_177:
   0323                     642 	.ds 1
   0324                     643 _packet_set_serial_speed_speed_1_179:
   0324                     644 	.ds 2
   0326                     645 _packet_is_duplicate_len_1_181:
   0326                     646 	.ds 1
                            647 ;--------------------------------------------------------
                            648 ; absolute external ram data
                            649 ;--------------------------------------------------------
                            650 	.area XABS    (ABS,XDATA)
                            651 ;--------------------------------------------------------
                            652 ; external initialized ram data
                            653 ;--------------------------------------------------------
                            654 	.area XISEG   (XDATA)
                            655 	.area HOME    (CODE)
                            656 	.area GSINIT0 (CODE)
                            657 	.area GSINIT1 (CODE)
                            658 	.area GSINIT2 (CODE)
                            659 	.area GSINIT3 (CODE)
                            660 	.area GSINIT4 (CODE)
                            661 	.area GSINIT5 (CODE)
                            662 	.area GSINIT  (CODE)
                            663 	.area GSFINAL (CODE)
                            664 	.area CSEG    (CODE)
                            665 ;--------------------------------------------------------
                            666 ; global & static initialisations
                            667 ;--------------------------------------------------------
                            668 	.area HOME    (CODE)
                            669 	.area GSINIT  (CODE)
                            670 	.area GSFINAL (CODE)
                            671 	.area GSINIT  (CODE)
                            672 ;--------------------------------------------------------
                            673 ; Home
                            674 ;--------------------------------------------------------
                            675 	.area HOME    (CODE)
                            676 	.area HOME    (CODE)
                            677 ;--------------------------------------------------------
                            678 ; code
                            679 ;--------------------------------------------------------
                            680 	.area CSEG    (CODE)
                            681 ;------------------------------------------------------------
                            682 ;Allocation info for local variables in function 'check_heartbeat'
                            683 ;------------------------------------------------------------
                            684 ;	radio/packet.c:81: static void check_heartbeat(__xdata uint8_t * __pdata buf)
                            685 ;	-----------------------------------------
                            686 ;	 function check_heartbeat
                            687 ;	-----------------------------------------
   1F16                     688 _check_heartbeat:
                     0007   689 	ar7 = 0x07
                     0006   690 	ar6 = 0x06
                     0005   691 	ar5 = 0x05
                     0004   692 	ar4 = 0x04
                     0003   693 	ar3 = 0x03
                     0002   694 	ar2 = 0x02
                     0001   695 	ar1 = 0x01
                     0000   696 	ar0 = 0x00
                            697 ;	radio/packet.c:83: if (buf[0] == MAVLINK09_STX &&
   1F16 AE 82         [24]  698 	mov	r6,dpl
   1F18 AF 83         [24]  699 	mov  r7,dph
   1F1A E0            [24]  700 	movx	a,@dptr
   1F1B FD            [12]  701 	mov	r5,a
   1F1C BD 55 1D      [24]  702 	cjne	r5,#0x55,00106$
                            703 ;	radio/packet.c:84: buf[1] == 3 && buf[5] == 0) {
   1F1F 8E 82         [24]  704 	mov	dpl,r6
   1F21 8F 83         [24]  705 	mov	dph,r7
   1F23 A3            [24]  706 	inc	dptr
   1F24 E0            [24]  707 	movx	a,@dptr
   1F25 FC            [12]  708 	mov	r4,a
   1F26 BC 03 13      [24]  709 	cjne	r4,#0x03,00106$
   1F29 74 05         [12]  710 	mov	a,#0x05
   1F2B 2E            [12]  711 	add	a,r6
   1F2C FB            [12]  712 	mov	r3,a
   1F2D E4            [12]  713 	clr	a
   1F2E 3F            [12]  714 	addc	a,r7
   1F2F FC            [12]  715 	mov	r4,a
   1F30 8B 82         [24]  716 	mov	dpl,r3
   1F32 8C 83         [24]  717 	mov	dph,r4
   1F34 E0            [24]  718 	movx	a,@dptr
   1F35 70 05         [24]  719 	jnz	00106$
                            720 ;	radio/packet.c:86: using_mavlink_10 = false;
   1F37 C2 0F         [12]  721 	clr	_using_mavlink_10
                            722 ;	radio/packet.c:87: seen_mavlink = true;
   1F39 D2 0E         [12]  723 	setb	_seen_mavlink
   1F3B 22            [24]  724 	ret
   1F3C                     725 00106$:
                            726 ;	radio/packet.c:88: } else if (buf[0] == MAVLINK10_STX &&
   1F3C BD FE 1C      [24]  727 	cjne	r5,#0xFE,00110$
                            728 ;	radio/packet.c:89: buf[1] == 9 && buf[5] == 0) {
   1F3F 8E 82         [24]  729 	mov	dpl,r6
   1F41 8F 83         [24]  730 	mov	dph,r7
   1F43 A3            [24]  731 	inc	dptr
   1F44 E0            [24]  732 	movx	a,@dptr
   1F45 FD            [12]  733 	mov	r5,a
   1F46 BD 09 12      [24]  734 	cjne	r5,#0x09,00110$
   1F49 74 05         [12]  735 	mov	a,#0x05
   1F4B 2E            [12]  736 	add	a,r6
   1F4C FE            [12]  737 	mov	r6,a
   1F4D E4            [12]  738 	clr	a
   1F4E 3F            [12]  739 	addc	a,r7
   1F4F FF            [12]  740 	mov	r7,a
   1F50 8E 82         [24]  741 	mov	dpl,r6
   1F52 8F 83         [24]  742 	mov	dph,r7
   1F54 E0            [24]  743 	movx	a,@dptr
   1F55 70 04         [24]  744 	jnz	00110$
                            745 ;	radio/packet.c:91: using_mavlink_10 = true;
   1F57 D2 0F         [12]  746 	setb	_using_mavlink_10
                            747 ;	radio/packet.c:92: seen_mavlink = true;
   1F59 D2 0E         [12]  748 	setb	_seen_mavlink
   1F5B                     749 00110$:
   1F5B 22            [24]  750 	ret
                            751 ;------------------------------------------------------------
                            752 ;Allocation info for local variables in function 'mavlink_frame'
                            753 ;------------------------------------------------------------
                            754 ;slen                      Allocated with name '_mavlink_frame_slen_1_140'
                            755 ;c                         Allocated with name '_mavlink_frame_c_2_141'
                            756 ;sloc0                     Allocated with name '_mavlink_frame_sloc0_1_0'
                            757 ;sloc1                     Allocated with name '_mavlink_frame_sloc1_1_0'
                            758 ;max_xmit                  Allocated with name '_mavlink_frame_max_xmit_1_139'
                            759 ;------------------------------------------------------------
                            760 ;	radio/packet.c:99: uint8_t mavlink_frame(uint8_t max_xmit, __xdata uint8_t * __pdata buf)
                            761 ;	-----------------------------------------
                            762 ;	 function mavlink_frame
                            763 ;	-----------------------------------------
   1F5C                     764 _mavlink_frame:
   1F5C E5 82         [12]  765 	mov	a,dpl
   1F5E 90 03 22      [24]  766 	mov	dptr,#_mavlink_frame_max_xmit_1_139
   1F61 F0            [24]  767 	movx	@dptr,a
                            768 ;	radio/packet.c:103: serial_read_buf(last_sent, mav_pkt_len);
   1F62 78 60         [12]  769 	mov	r0,#_mav_pkt_len
   1F64 79 B7         [12]  770 	mov	r1,#_serial_read_buf_PARM_2
   1F66 E2            [24]  771 	movx	a,@r0
   1F67 F3            [24]  772 	movx	@r1,a
   1F68 90 02 26      [24]  773 	mov	dptr,#_last_sent
   1F6B 12 45 89      [24]  774 	lcall	_serial_read_buf
                            775 ;	radio/packet.c:104: last_sent_len = mav_pkt_len;
   1F6E 78 60         [12]  776 	mov	r0,#_mav_pkt_len
   1F70 E2            [24]  777 	movx	a,@r0
   1F71 FF            [12]  778 	mov	r7,a
   1F72 78 5C         [12]  779 	mov	r0,#_last_sent_len
   1F74 F2            [24]  780 	movx	@r0,a
                            781 ;	radio/packet.c:105: memcpy(buf, last_sent, last_sent_len);
   1F75 78 66         [12]  782 	mov	r0,#_mavlink_frame_PARM_2
   1F77 E2            [24]  783 	movx	a,@r0
   1F78 FC            [12]  784 	mov	r4,a
   1F79 08            [12]  785 	inc	r0
   1F7A E2            [24]  786 	movx	a,@r0
   1F7B FD            [12]  787 	mov	r5,a
   1F7C 7E 00         [12]  788 	mov	r6,#0x00
   1F7E 90 05 C4      [24]  789 	mov	dptr,#_memcpy_PARM_2
   1F81 74 26         [12]  790 	mov	a,#_last_sent
   1F83 F0            [24]  791 	movx	@dptr,a
   1F84 74 02         [12]  792 	mov	a,#(_last_sent >> 8)
   1F86 A3            [24]  793 	inc	dptr
   1F87 F0            [24]  794 	movx	@dptr,a
   1F88 E4            [12]  795 	clr	a
   1F89 A3            [24]  796 	inc	dptr
   1F8A F0            [24]  797 	movx	@dptr,a
   1F8B 90 05 C7      [24]  798 	mov	dptr,#_memcpy_PARM_3
   1F8E EF            [12]  799 	mov	a,r7
   1F8F F0            [24]  800 	movx	@dptr,a
   1F90 E4            [12]  801 	clr	a
   1F91 A3            [24]  802 	inc	dptr
   1F92 F0            [24]  803 	movx	@dptr,a
   1F93 8C 82         [24]  804 	mov	dpl,r4
   1F95 8D 83         [24]  805 	mov	dph,r5
   1F97 8E F0         [24]  806 	mov	b,r6
   1F99 12 5F FA      [24]  807 	lcall	_memcpy
                            808 ;	radio/packet.c:106: mav_pkt_len = 0;
   1F9C 78 60         [12]  809 	mov	r0,#_mav_pkt_len
   1F9E E4            [12]  810 	clr	a
   1F9F F2            [24]  811 	movx	@r0,a
                            812 ;	radio/packet.c:108: check_heartbeat(buf);
   1FA0 78 66         [12]  813 	mov	r0,#_mavlink_frame_PARM_2
   1FA2 E2            [24]  814 	movx	a,@r0
   1FA3 F5 82         [12]  815 	mov	dpl,a
   1FA5 08            [12]  816 	inc	r0
   1FA6 E2            [24]  817 	movx	a,@r0
   1FA7 F5 83         [12]  818 	mov	dph,a
   1FA9 12 1F 16      [24]  819 	lcall	_check_heartbeat
                            820 ;	radio/packet.c:110: slen = serial_read_available();
   1FAC 12 46 DA      [24]  821 	lcall	_serial_read_available
   1FAF 85 82 2B      [24]  822 	mov	_mavlink_frame_slen_1_140,dpl
   1FB2 85 83 2C      [24]  823 	mov	(_mavlink_frame_slen_1_140 + 1),dph
                            824 ;	radio/packet.c:114: while (slen >= 8) {
   1FB5 90 03 22      [24]  825 	mov	dptr,#_mavlink_frame_max_xmit_1_139
   1FB8 E0            [24]  826 	movx	a,@dptr
   1FB9 F5 2E         [12]  827 	mov	_mavlink_frame_sloc0_1_0,a
   1FBB                     828 00109$:
   1FBB C3            [12]  829 	clr	c
   1FBC E5 2B         [12]  830 	mov	a,_mavlink_frame_slen_1_140
   1FBE 94 08         [12]  831 	subb	a,#0x08
   1FC0 E5 2C         [12]  832 	mov	a,(_mavlink_frame_slen_1_140 + 1)
   1FC2 94 00         [12]  833 	subb	a,#0x00
   1FC4 50 03         [24]  834 	jnc	00135$
   1FC6 02 20 BB      [24]  835 	ljmp	00111$
   1FC9                     836 00135$:
                            837 ;	radio/packet.c:115: register uint8_t c = serial_peek();
   1FC9 12 45 40      [24]  838 	lcall	_serial_peek
   1FCC 85 82 2D      [24]  839 	mov	_mavlink_frame_c_2_141,dpl
                            840 ;	radio/packet.c:116: if (c != MAVLINK09_STX && c != MAVLINK10_STX) {
   1FCF 74 55         [12]  841 	mov	a,#0x55
   1FD1 B5 2D 02      [24]  842 	cjne	a,_mavlink_frame_c_2_141,00136$
   1FD4 80 0D         [24]  843 	sjmp	00102$
   1FD6                     844 00136$:
   1FD6 74 FE         [12]  845 	mov	a,#0xFE
   1FD8 B5 2D 02      [24]  846 	cjne	a,_mavlink_frame_c_2_141,00137$
   1FDB 80 06         [24]  847 	sjmp	00102$
   1FDD                     848 00137$:
                            849 ;	radio/packet.c:118: return last_sent_len;			
   1FDD 78 5C         [12]  850 	mov	r0,#_last_sent_len
   1FDF E2            [24]  851 	movx	a,@r0
   1FE0 F5 82         [12]  852 	mov	dpl,a
   1FE2 22            [24]  853 	ret
   1FE3                     854 00102$:
                            855 ;	radio/packet.c:120: c = serial_peek2();
   1FE3 12 45 5C      [24]  856 	lcall	_serial_peek2
   1FE6 85 82 2D      [24]  857 	mov	_mavlink_frame_c_2_141,dpl
                            858 ;	radio/packet.c:121: if (c >= 255 - 8 || 
   1FE9 74 09         [12]  859 	mov	a,#0x100 - 0xF7
   1FEB 25 2D         [12]  860 	add	a,_mavlink_frame_c_2_141
   1FED 50 03         [24]  861 	jnc	00138$
   1FEF 02 20 BB      [24]  862 	ljmp	00111$
   1FF2                     863 00138$:
                            864 ;	radio/packet.c:122: c+8 > max_xmit - last_sent_len) {
   1FF2 AA 2D         [24]  865 	mov	r2,_mavlink_frame_c_2_141
   1FF4 7B 00         [12]  866 	mov	r3,#0x00
   1FF6 74 08         [12]  867 	mov	a,#0x08
   1FF8 2A            [12]  868 	add	a,r2
   1FF9 FE            [12]  869 	mov	r6,a
   1FFA E4            [12]  870 	clr	a
   1FFB 3B            [12]  871 	addc	a,r3
   1FFC FF            [12]  872 	mov	r7,a
   1FFD 85 2E 2F      [24]  873 	mov	_mavlink_frame_sloc1_1_0,_mavlink_frame_sloc0_1_0
   2000 75 30 00      [24]  874 	mov	(_mavlink_frame_sloc1_1_0 + 1),#0x00
   2003 78 5C         [12]  875 	mov	r0,#_last_sent_len
   2005 E2            [24]  876 	movx	a,@r0
   2006 FC            [12]  877 	mov	r4,a
   2007 7D 00         [12]  878 	mov	r5,#0x00
   2009 E5 2F         [12]  879 	mov	a,_mavlink_frame_sloc1_1_0
   200B C3            [12]  880 	clr	c
   200C 9C            [12]  881 	subb	a,r4
   200D FC            [12]  882 	mov	r4,a
   200E E5 30         [12]  883 	mov	a,(_mavlink_frame_sloc1_1_0 + 1)
   2010 9D            [12]  884 	subb	a,r5
   2011 FD            [12]  885 	mov	r5,a
   2012 C3            [12]  886 	clr	c
   2013 EC            [12]  887 	mov	a,r4
   2014 9E            [12]  888 	subb	a,r6
   2015 ED            [12]  889 	mov	a,r5
   2016 64 80         [12]  890 	xrl	a,#0x80
   2018 8F F0         [24]  891 	mov	b,r7
   201A 63 F0 80      [24]  892 	xrl	b,#0x80
   201D 95 F0         [12]  893 	subb	a,b
   201F 50 03         [24]  894 	jnc	00139$
   2021 02 20 BB      [24]  895 	ljmp	00111$
   2024                     896 00139$:
                            897 ;	radio/packet.c:126: if (c+8 > slen) {
   2024 74 08         [12]  898 	mov	a,#0x08
   2026 2A            [12]  899 	add	a,r2
   2027 FA            [12]  900 	mov	r2,a
   2028 E4            [12]  901 	clr	a
   2029 3B            [12]  902 	addc	a,r3
   202A FB            [12]  903 	mov	r3,a
   202B C3            [12]  904 	clr	c
   202C E5 2B         [12]  905 	mov	a,_mavlink_frame_slen_1_140
   202E 9A            [12]  906 	subb	a,r2
   202F E5 2C         [12]  907 	mov	a,(_mavlink_frame_slen_1_140 + 1)
   2031 9B            [12]  908 	subb	a,r3
   2032 50 03         [24]  909 	jnc	00140$
   2034 02 20 BB      [24]  910 	ljmp	00111$
   2037                     911 00140$:
                            912 ;	radio/packet.c:132: c += 8;
   2037 74 08         [12]  913 	mov	a,#0x08
   2039 25 2D         [12]  914 	add	a,_mavlink_frame_c_2_141
   203B F5 2D         [12]  915 	mov	_mavlink_frame_c_2_141,a
                            916 ;	radio/packet.c:135: serial_read_buf(&last_sent[last_sent_len], c);
   203D 78 5C         [12]  917 	mov	r0,#_last_sent_len
   203F E2            [24]  918 	movx	a,@r0
   2040 24 26         [12]  919 	add	a,#_last_sent
   2042 FE            [12]  920 	mov	r6,a
   2043 E4            [12]  921 	clr	a
   2044 34 02         [12]  922 	addc	a,#(_last_sent >> 8)
   2046 FF            [12]  923 	mov	r7,a
   2047 78 B7         [12]  924 	mov	r0,#_serial_read_buf_PARM_2
   2049 E5 2D         [12]  925 	mov	a,_mavlink_frame_c_2_141
   204B F2            [24]  926 	movx	@r0,a
   204C 8E 82         [24]  927 	mov	dpl,r6
   204E 8F 83         [24]  928 	mov	dph,r7
   2050 12 45 89      [24]  929 	lcall	_serial_read_buf
                            930 ;	radio/packet.c:136: memcpy(&buf[last_sent_len], &last_sent[last_sent_len], c);
   2053 78 66         [12]  931 	mov	r0,#_mavlink_frame_PARM_2
   2055 79 5C         [12]  932 	mov	r1,#_last_sent_len
   2057 E3            [24]  933 	movx	a,@r1
   2058 C5 F0         [12]  934 	xch	a,b
   205A E2            [24]  935 	movx	a,@r0
   205B 25 F0         [12]  936 	add	a,b
   205D FE            [12]  937 	mov	r6,a
   205E 08            [12]  938 	inc	r0
   205F E2            [24]  939 	movx	a,@r0
   2060 34 00         [12]  940 	addc	a,#0x00
   2062 FF            [12]  941 	mov	r7,a
   2063 7D 00         [12]  942 	mov	r5,#0x00
   2065 78 5C         [12]  943 	mov	r0,#_last_sent_len
   2067 E2            [24]  944 	movx	a,@r0
   2068 24 26         [12]  945 	add	a,#_last_sent
   206A FB            [12]  946 	mov	r3,a
   206B E4            [12]  947 	clr	a
   206C 34 02         [12]  948 	addc	a,#(_last_sent >> 8)
   206E FC            [12]  949 	mov	r4,a
   206F 90 05 C4      [24]  950 	mov	dptr,#_memcpy_PARM_2
   2072 EB            [12]  951 	mov	a,r3
   2073 F0            [24]  952 	movx	@dptr,a
   2074 EC            [12]  953 	mov	a,r4
   2075 A3            [24]  954 	inc	dptr
   2076 F0            [24]  955 	movx	@dptr,a
   2077 E4            [12]  956 	clr	a
   2078 A3            [24]  957 	inc	dptr
   2079 F0            [24]  958 	movx	@dptr,a
   207A 90 05 C7      [24]  959 	mov	dptr,#_memcpy_PARM_3
   207D E5 2D         [12]  960 	mov	a,_mavlink_frame_c_2_141
   207F F0            [24]  961 	movx	@dptr,a
   2080 E4            [12]  962 	clr	a
   2081 A3            [24]  963 	inc	dptr
   2082 F0            [24]  964 	movx	@dptr,a
   2083 8E 82         [24]  965 	mov	dpl,r6
   2085 8F 83         [24]  966 	mov	dph,r7
   2087 8D F0         [24]  967 	mov	b,r5
   2089 12 5F FA      [24]  968 	lcall	_memcpy
                            969 ;	radio/packet.c:138: check_heartbeat(buf+last_sent_len);
   208C 78 66         [12]  970 	mov	r0,#_mavlink_frame_PARM_2
   208E 79 5C         [12]  971 	mov	r1,#_last_sent_len
   2090 E3            [24]  972 	movx	a,@r1
   2091 C5 F0         [12]  973 	xch	a,b
   2093 E2            [24]  974 	movx	a,@r0
   2094 25 F0         [12]  975 	add	a,b
   2096 FE            [12]  976 	mov	r6,a
   2097 08            [12]  977 	inc	r0
   2098 E2            [24]  978 	movx	a,@r0
   2099 34 00         [12]  979 	addc	a,#0x00
   209B FF            [12]  980 	mov	r7,a
   209C 8E 82         [24]  981 	mov	dpl,r6
   209E 8F 83         [24]  982 	mov	dph,r7
   20A0 12 1F 16      [24]  983 	lcall	_check_heartbeat
                            984 ;	radio/packet.c:140: last_sent_len += c;
   20A3 78 5C         [12]  985 	mov	r0,#_last_sent_len
   20A5 E2            [24]  986 	movx	a,@r0
   20A6 25 2D         [12]  987 	add	a,_mavlink_frame_c_2_141
   20A8 F2            [24]  988 	movx	@r0,a
                            989 ;	radio/packet.c:141: slen -= c;
   20A9 AC 2D         [24]  990 	mov	r4,_mavlink_frame_c_2_141
   20AB 7F 00         [12]  991 	mov	r7,#0x00
   20AD E5 2B         [12]  992 	mov	a,_mavlink_frame_slen_1_140
   20AF C3            [12]  993 	clr	c
   20B0 9C            [12]  994 	subb	a,r4
   20B1 F5 2B         [12]  995 	mov	_mavlink_frame_slen_1_140,a
   20B3 E5 2C         [12]  996 	mov	a,(_mavlink_frame_slen_1_140 + 1)
   20B5 9F            [12]  997 	subb	a,r7
   20B6 F5 2C         [12]  998 	mov	(_mavlink_frame_slen_1_140 + 1),a
   20B8 02 1F BB      [24]  999 	ljmp	00109$
   20BB                    1000 00111$:
                           1001 ;	radio/packet.c:144: return last_sent_len;
   20BB 78 5C         [12] 1002 	mov	r0,#_last_sent_len
   20BD E2            [24] 1003 	movx	a,@r0
   20BE F5 82         [12] 1004 	mov	dpl,a
   20C0 22            [24] 1005 	ret
                           1006 ;------------------------------------------------------------
                           1007 ;Allocation info for local variables in function 'packet_get_next'
                           1008 ;------------------------------------------------------------
                           1009 ;max_xmit                  Allocated with name '_packet_get_next_max_xmit_1_145'
                           1010 ;slen                      Allocated with name '_packet_get_next_slen_1_146'
                           1011 ;c                         Allocated to registers r7 
                           1012 ;sloc0                     Allocated with name '_packet_get_next_sloc0_1_0'
                           1013 ;------------------------------------------------------------
                           1014 ;	radio/packet.c:150: packet_get_next(register uint8_t max_xmit, __xdata uint8_t * __pdata buf)
                           1015 ;	-----------------------------------------
                           1016 ;	 function packet_get_next
                           1017 ;	-----------------------------------------
   20C1                    1018 _packet_get_next:
   20C1 85 82 31      [24] 1019 	mov	_packet_get_next_max_xmit_1_145,dpl
                           1020 ;	radio/packet.c:154: slen = serial_read_available();
   20C4 12 46 DA      [24] 1021 	lcall	_serial_read_available
   20C7 85 82 32      [24] 1022 	mov	_packet_get_next_slen_1_146,dpl
   20CA 85 83 33      [24] 1023 	mov	(_packet_get_next_slen_1_146 + 1),dph
                           1024 ;	radio/packet.c:155: if (force_resend ||
   20CD 20 0C 16      [24] 1025 	jb	_force_resend,00103$
                           1026 ;	radio/packet.c:156: (feature_opportunistic_resend &&
   20D0 30 06 65      [24] 1027 	jnb	_feature_opportunistic_resend,00104$
   20D3 20 09 62      [24] 1028 	jb	_last_sent_is_resend,00104$
                           1029 ;	radio/packet.c:158: last_sent_len != 0 && 
   20D6 78 5C         [12] 1030 	mov	r0,#_last_sent_len
   20D8 E2            [24] 1031 	movx	a,@r0
   20D9 60 5D         [24] 1032 	jz	00104$
                           1033 ;	radio/packet.c:159: slen < PACKET_RESEND_THRESHOLD)) {
   20DB C3            [12] 1034 	clr	c
   20DC E5 32         [12] 1035 	mov	a,_packet_get_next_slen_1_146
   20DE 94 20         [12] 1036 	subb	a,#0x20
   20E0 E5 33         [12] 1037 	mov	a,(_packet_get_next_slen_1_146 + 1)
   20E2 94 00         [12] 1038 	subb	a,#0x00
   20E4 50 52         [24] 1039 	jnc	00104$
   20E6                    1040 00103$:
                           1041 ;	radio/packet.c:160: if (max_xmit < last_sent_len) {
   20E6 78 5C         [12] 1042 	mov	r0,#_last_sent_len
   20E8 C3            [12] 1043 	clr	c
   20E9 E2            [24] 1044 	movx	a,@r0
   20EA F5 F0         [12] 1045 	mov	b,a
   20EC E5 31         [12] 1046 	mov	a,_packet_get_next_max_xmit_1_145
   20EE 95 F0         [12] 1047 	subb	a,b
   20F0 50 08         [24] 1048 	jnc	00102$
                           1049 ;	radio/packet.c:161: last_sent_len = 0;
   20F2 78 5C         [12] 1050 	mov	r0,#_last_sent_len
   20F4 E4            [12] 1051 	clr	a
   20F5 F2            [24] 1052 	movx	@r0,a
                           1053 ;	radio/packet.c:162: return 0;
   20F6 75 82 00      [24] 1054 	mov	dpl,#0x00
   20F9 22            [24] 1055 	ret
   20FA                    1056 00102$:
                           1057 ;	radio/packet.c:164: last_sent_is_resend = true;
   20FA D2 09         [12] 1058 	setb	_last_sent_is_resend
                           1059 ;	radio/packet.c:165: force_resend = false;
   20FC C2 0C         [12] 1060 	clr	_force_resend
                           1061 ;	radio/packet.c:166: memcpy(buf, last_sent, last_sent_len);
   20FE 78 68         [12] 1062 	mov	r0,#_packet_get_next_PARM_2
   2100 E2            [24] 1063 	movx	a,@r0
   2101 FA            [12] 1064 	mov	r2,a
   2102 08            [12] 1065 	inc	r0
   2103 E2            [24] 1066 	movx	a,@r0
   2104 FB            [12] 1067 	mov	r3,a
   2105 7C 00         [12] 1068 	mov	r4,#0x00
   2107 90 05 C4      [24] 1069 	mov	dptr,#_memcpy_PARM_2
   210A 74 26         [12] 1070 	mov	a,#_last_sent
   210C F0            [24] 1071 	movx	@dptr,a
   210D 74 02         [12] 1072 	mov	a,#(_last_sent >> 8)
   210F A3            [24] 1073 	inc	dptr
   2110 F0            [24] 1074 	movx	@dptr,a
   2111 E4            [12] 1075 	clr	a
   2112 A3            [24] 1076 	inc	dptr
   2113 F0            [24] 1077 	movx	@dptr,a
   2114 78 5C         [12] 1078 	mov	r0,#_last_sent_len
   2116 90 05 C7      [24] 1079 	mov	dptr,#_memcpy_PARM_3
   2119 E2            [24] 1080 	movx	a,@r0
   211A F0            [24] 1081 	movx	@dptr,a
   211B E4            [12] 1082 	clr	a
   211C A3            [24] 1083 	inc	dptr
   211D F0            [24] 1084 	movx	@dptr,a
   211E 8A 82         [24] 1085 	mov	dpl,r2
   2120 8B 83         [24] 1086 	mov	dph,r3
   2122 8C F0         [24] 1087 	mov	b,r4
   2124 12 5F FA      [24] 1088 	lcall	_memcpy
                           1089 ;	radio/packet.c:167: slen = last_sent_len;
   2127 78 5C         [12] 1090 	mov	r0,#_last_sent_len
   2129 E2            [24] 1091 	movx	a,@r0
   212A F5 32         [12] 1092 	mov	_packet_get_next_slen_1_146,a
   212C 75 33 00      [24] 1093 	mov	(_packet_get_next_slen_1_146 + 1),#0x00
                           1094 ;	radio/packet.c:168: last_sent_len = 0;
   212F 78 5C         [12] 1095 	mov	r0,#_last_sent_len
   2131 E4            [12] 1096 	clr	a
   2132 F2            [24] 1097 	movx	@r0,a
                           1098 ;	radio/packet.c:169: return (slen & 0xFF);
   2133 AB 32         [24] 1099 	mov	r3,_packet_get_next_slen_1_146
   2135 8B 82         [24] 1100 	mov	dpl,r3
   2137 22            [24] 1101 	ret
   2138                    1102 00104$:
                           1103 ;	radio/packet.c:172: last_sent_is_resend = false;
   2138 C2 09         [12] 1104 	clr	_last_sent_is_resend
                           1105 ;	radio/packet.c:174: if (injected_packet) {
   213A 20 0D 03      [24] 1106 	jb	_injected_packet,00241$
   213D 02 21 F1      [24] 1107 	ljmp	00112$
   2140                    1108 00241$:
                           1109 ;	radio/packet.c:176: slen = last_sent_len;
   2140 78 5C         [12] 1110 	mov	r0,#_last_sent_len
   2142 E2            [24] 1111 	movx	a,@r0
   2143 FB            [12] 1112 	mov	r3,a
   2144 7C 00         [12] 1113 	mov	r4,#0x00
   2146 8B 32         [24] 1114 	mov	_packet_get_next_slen_1_146,r3
   2148 8C 33         [24] 1115 	mov	(_packet_get_next_slen_1_146 + 1),r4
                           1116 ;	radio/packet.c:177: if (max_xmit < slen) {
   214A 85 31 34      [24] 1117 	mov	_packet_get_next_sloc0_1_0,_packet_get_next_max_xmit_1_145
   214D 75 35 00      [24] 1118 	mov	(_packet_get_next_sloc0_1_0 + 1),#0x00
   2150 C3            [12] 1119 	clr	c
   2151 E5 34         [12] 1120 	mov	a,_packet_get_next_sloc0_1_0
   2153 95 32         [12] 1121 	subb	a,_packet_get_next_slen_1_146
   2155 E5 35         [12] 1122 	mov	a,(_packet_get_next_sloc0_1_0 + 1)
   2157 95 33         [12] 1123 	subb	a,(_packet_get_next_slen_1_146 + 1)
   2159 50 65         [24] 1124 	jnc	00110$
                           1125 ;	radio/packet.c:179: memcpy(buf, last_sent, max_xmit);
   215B 78 68         [12] 1126 	mov	r0,#_packet_get_next_PARM_2
   215D E2            [24] 1127 	movx	a,@r0
   215E FA            [12] 1128 	mov	r2,a
   215F 08            [12] 1129 	inc	r0
   2160 E2            [24] 1130 	movx	a,@r0
   2161 FE            [12] 1131 	mov	r6,a
   2162 7F 00         [12] 1132 	mov	r7,#0x00
   2164 90 05 C4      [24] 1133 	mov	dptr,#_memcpy_PARM_2
   2167 74 26         [12] 1134 	mov	a,#_last_sent
   2169 F0            [24] 1135 	movx	@dptr,a
   216A 74 02         [12] 1136 	mov	a,#(_last_sent >> 8)
   216C A3            [24] 1137 	inc	dptr
   216D F0            [24] 1138 	movx	@dptr,a
   216E E4            [12] 1139 	clr	a
   216F A3            [24] 1140 	inc	dptr
   2170 F0            [24] 1141 	movx	@dptr,a
   2171 90 05 C7      [24] 1142 	mov	dptr,#_memcpy_PARM_3
   2174 E5 34         [12] 1143 	mov	a,_packet_get_next_sloc0_1_0
   2176 F0            [24] 1144 	movx	@dptr,a
   2177 E5 35         [12] 1145 	mov	a,(_packet_get_next_sloc0_1_0 + 1)
   2179 A3            [24] 1146 	inc	dptr
   217A F0            [24] 1147 	movx	@dptr,a
   217B 8A 82         [24] 1148 	mov	dpl,r2
   217D 8E 83         [24] 1149 	mov	dph,r6
   217F 8F F0         [24] 1150 	mov	b,r7
   2181 12 5F FA      [24] 1151 	lcall	_memcpy
                           1152 ;	radio/packet.c:180: memcpy(last_sent, &last_sent[max_xmit], slen - max_xmit);
   2184 E5 31         [12] 1153 	mov	a,_packet_get_next_max_xmit_1_145
   2186 24 26         [12] 1154 	add	a,#_last_sent
   2188 FE            [12] 1155 	mov	r6,a
   2189 E4            [12] 1156 	clr	a
   218A 34 02         [12] 1157 	addc	a,#(_last_sent >> 8)
   218C FF            [12] 1158 	mov	r7,a
   218D 90 05 C4      [24] 1159 	mov	dptr,#_memcpy_PARM_2
   2190 EE            [12] 1160 	mov	a,r6
   2191 F0            [24] 1161 	movx	@dptr,a
   2192 EF            [12] 1162 	mov	a,r7
   2193 A3            [24] 1163 	inc	dptr
   2194 F0            [24] 1164 	movx	@dptr,a
   2195 E4            [12] 1165 	clr	a
   2196 A3            [24] 1166 	inc	dptr
   2197 F0            [24] 1167 	movx	@dptr,a
   2198 AE 31         [24] 1168 	mov	r6,_packet_get_next_max_xmit_1_145
   219A 7F 00         [12] 1169 	mov	r7,#0x00
   219C 90 05 C7      [24] 1170 	mov	dptr,#_memcpy_PARM_3
   219F E5 32         [12] 1171 	mov	a,_packet_get_next_slen_1_146
   21A1 C3            [12] 1172 	clr	c
   21A2 9E            [12] 1173 	subb	a,r6
   21A3 F0            [24] 1174 	movx	@dptr,a
   21A4 E5 33         [12] 1175 	mov	a,(_packet_get_next_slen_1_146 + 1)
   21A6 9F            [12] 1176 	subb	a,r7
   21A7 A3            [24] 1177 	inc	dptr
   21A8 F0            [24] 1178 	movx	@dptr,a
   21A9 90 02 26      [24] 1179 	mov	dptr,#_last_sent
   21AC 75 F0 00      [24] 1180 	mov	b,#0x00
   21AF 12 5F FA      [24] 1181 	lcall	_memcpy
                           1182 ;	radio/packet.c:181: last_sent_len = slen - max_xmit;
   21B2 E5 32         [12] 1183 	mov	a,_packet_get_next_slen_1_146
   21B4 C3            [12] 1184 	clr	c
   21B5 95 31         [12] 1185 	subb	a,_packet_get_next_max_xmit_1_145
   21B7 78 5C         [12] 1186 	mov	r0,#_last_sent_len
   21B9 F2            [24] 1187 	movx	@r0,a
                           1188 ;	radio/packet.c:182: last_sent_is_injected = true;
   21BA D2 0A         [12] 1189 	setb	_last_sent_is_injected
                           1190 ;	radio/packet.c:183: return max_xmit;
   21BC 85 31 82      [24] 1191 	mov	dpl,_packet_get_next_max_xmit_1_145
   21BF 22            [24] 1192 	ret
   21C0                    1193 00110$:
                           1194 ;	radio/packet.c:186: memcpy(buf, last_sent, last_sent_len);
   21C0 78 68         [12] 1195 	mov	r0,#_packet_get_next_PARM_2
   21C2 E2            [24] 1196 	movx	a,@r0
   21C3 FD            [12] 1197 	mov	r5,a
   21C4 08            [12] 1198 	inc	r0
   21C5 E2            [24] 1199 	movx	a,@r0
   21C6 FE            [12] 1200 	mov	r6,a
   21C7 7F 00         [12] 1201 	mov	r7,#0x00
   21C9 90 05 C4      [24] 1202 	mov	dptr,#_memcpy_PARM_2
   21CC 74 26         [12] 1203 	mov	a,#_last_sent
   21CE F0            [24] 1204 	movx	@dptr,a
   21CF 74 02         [12] 1205 	mov	a,#(_last_sent >> 8)
   21D1 A3            [24] 1206 	inc	dptr
   21D2 F0            [24] 1207 	movx	@dptr,a
   21D3 E4            [12] 1208 	clr	a
   21D4 A3            [24] 1209 	inc	dptr
   21D5 F0            [24] 1210 	movx	@dptr,a
   21D6 90 05 C7      [24] 1211 	mov	dptr,#_memcpy_PARM_3
   21D9 EB            [12] 1212 	mov	a,r3
   21DA F0            [24] 1213 	movx	@dptr,a
   21DB EC            [12] 1214 	mov	a,r4
   21DC A3            [24] 1215 	inc	dptr
   21DD F0            [24] 1216 	movx	@dptr,a
   21DE 8D 82         [24] 1217 	mov	dpl,r5
   21E0 8E 83         [24] 1218 	mov	dph,r6
   21E2 8F F0         [24] 1219 	mov	b,r7
   21E4 12 5F FA      [24] 1220 	lcall	_memcpy
                           1221 ;	radio/packet.c:187: injected_packet = false;
   21E7 C2 0D         [12] 1222 	clr	_injected_packet
                           1223 ;	radio/packet.c:188: last_sent_is_injected = true;
   21E9 D2 0A         [12] 1224 	setb	_last_sent_is_injected
                           1225 ;	radio/packet.c:189: return last_sent_len;
   21EB 78 5C         [12] 1226 	mov	r0,#_last_sent_len
   21ED E2            [24] 1227 	movx	a,@r0
   21EE F5 82         [12] 1228 	mov	dpl,a
   21F0 22            [24] 1229 	ret
   21F1                    1230 00112$:
                           1231 ;	radio/packet.c:192: last_sent_is_injected = false;
   21F1 C2 0A         [12] 1232 	clr	_last_sent_is_injected
                           1233 ;	radio/packet.c:196: if (slen > max_xmit) {
   21F3 AE 31         [24] 1234 	mov	r6,_packet_get_next_max_xmit_1_145
   21F5 7F 00         [12] 1235 	mov	r7,#0x00
   21F7 C3            [12] 1236 	clr	c
   21F8 EE            [12] 1237 	mov	a,r6
   21F9 95 32         [12] 1238 	subb	a,_packet_get_next_slen_1_146
   21FB EF            [12] 1239 	mov	a,r7
   21FC 95 33         [12] 1240 	subb	a,(_packet_get_next_slen_1_146 + 1)
   21FE 50 04         [24] 1241 	jnc	00114$
                           1242 ;	radio/packet.c:197: slen = max_xmit;
   2200 8E 32         [24] 1243 	mov	_packet_get_next_slen_1_146,r6
   2202 8F 33         [24] 1244 	mov	(_packet_get_next_slen_1_146 + 1),r7
   2204                    1245 00114$:
                           1246 ;	radio/packet.c:200: last_sent_len = 0;
   2204 78 5C         [12] 1247 	mov	r0,#_last_sent_len
   2206 E4            [12] 1248 	clr	a
   2207 F2            [24] 1249 	movx	@r0,a
                           1250 ;	radio/packet.c:202: if (slen == 0) {
   2208 E5 32         [12] 1251 	mov	a,_packet_get_next_slen_1_146
   220A 45 33         [12] 1252 	orl	a,(_packet_get_next_slen_1_146 + 1)
                           1253 ;	radio/packet.c:204: return 0;
   220C 70 03         [24] 1254 	jnz	00116$
   220E F5 82         [12] 1255 	mov	dpl,a
   2210 22            [24] 1256 	ret
   2211                    1257 00116$:
                           1258 ;	radio/packet.c:207: if (!feature_mavlink_framing) {
   2211 20 07 53      [24] 1259 	jb	_feature_mavlink_framing,00122$
                           1260 ;	radio/packet.c:209: if (slen > 0 && serial_read_buf(buf, slen)) {
   2214 E5 32         [12] 1261 	mov	a,_packet_get_next_slen_1_146
   2216 45 33         [12] 1262 	orl	a,(_packet_get_next_slen_1_146 + 1)
   2218 60 43         [24] 1263 	jz	00118$
   221A AD 32         [24] 1264 	mov	r5,_packet_get_next_slen_1_146
   221C 78 B7         [12] 1265 	mov	r0,#_serial_read_buf_PARM_2
   221E ED            [12] 1266 	mov	a,r5
   221F F2            [24] 1267 	movx	@r0,a
   2220 78 68         [12] 1268 	mov	r0,#_packet_get_next_PARM_2
   2222 E2            [24] 1269 	movx	a,@r0
   2223 F5 82         [12] 1270 	mov	dpl,a
   2225 08            [12] 1271 	inc	r0
   2226 E2            [24] 1272 	movx	a,@r0
   2227 F5 83         [12] 1273 	mov	dph,a
   2229 C0 05         [24] 1274 	push	ar5
   222B 12 45 89      [24] 1275 	lcall	_serial_read_buf
   222E D0 05         [24] 1276 	pop	ar5
   2230 50 2B         [24] 1277 	jnc	00118$
                           1278 ;	radio/packet.c:210: memcpy(last_sent, buf, slen);
   2232 78 68         [12] 1279 	mov	r0,#_packet_get_next_PARM_2
   2234 90 05 C4      [24] 1280 	mov	dptr,#_memcpy_PARM_2
   2237 E2            [24] 1281 	movx	a,@r0
   2238 F0            [24] 1282 	movx	@dptr,a
   2239 08            [12] 1283 	inc	r0
   223A E2            [24] 1284 	movx	a,@r0
   223B A3            [24] 1285 	inc	dptr
   223C F0            [24] 1286 	movx	@dptr,a
   223D E4            [12] 1287 	clr	a
   223E A3            [24] 1288 	inc	dptr
   223F F0            [24] 1289 	movx	@dptr,a
   2240 90 05 C7      [24] 1290 	mov	dptr,#_memcpy_PARM_3
   2243 E5 32         [12] 1291 	mov	a,_packet_get_next_slen_1_146
   2245 F0            [24] 1292 	movx	@dptr,a
   2246 E5 33         [12] 1293 	mov	a,(_packet_get_next_slen_1_146 + 1)
   2248 A3            [24] 1294 	inc	dptr
   2249 F0            [24] 1295 	movx	@dptr,a
   224A 90 02 26      [24] 1296 	mov	dptr,#_last_sent
   224D 75 F0 00      [24] 1297 	mov	b,#0x00
   2250 C0 05         [24] 1298 	push	ar5
   2252 12 5F FA      [24] 1299 	lcall	_memcpy
   2255 D0 05         [24] 1300 	pop	ar5
                           1301 ;	radio/packet.c:211: last_sent_len = slen;
   2257 78 5C         [12] 1302 	mov	r0,#_last_sent_len
   2259 ED            [12] 1303 	mov	a,r5
   225A F2            [24] 1304 	movx	@r0,a
   225B 80 04         [24] 1305 	sjmp	00119$
   225D                    1306 00118$:
                           1307 ;	radio/packet.c:213: last_sent_len = 0;
   225D 78 5C         [12] 1308 	mov	r0,#_last_sent_len
   225F E4            [12] 1309 	clr	a
   2260 F2            [24] 1310 	movx	@r0,a
   2261                    1311 00119$:
                           1312 ;	radio/packet.c:215: return last_sent_len;
   2261 78 5C         [12] 1313 	mov	r0,#_last_sent_len
   2263 E2            [24] 1314 	movx	a,@r0
   2264 F5 82         [12] 1315 	mov	dpl,a
   2266 22            [24] 1316 	ret
   2267                    1317 00122$:
                           1318 ;	radio/packet.c:220: if (mav_pkt_len == 1) {
   2267 78 60         [12] 1319 	mov	r0,#_mav_pkt_len
   2269 E2            [24] 1320 	movx	a,@r0
   226A B4 01 02      [24] 1321 	cjne	a,#0x01,00248$
   226D 80 03         [24] 1322 	sjmp	00249$
   226F                    1323 00248$:
   226F 02 22 FC      [24] 1324 	ljmp	00128$
   2272                    1325 00249$:
                           1326 ;	radio/packet.c:222: if (slen == 1) {
   2272 74 01         [12] 1327 	mov	a,#0x01
   2274 B5 32 06      [24] 1328 	cjne	a,_packet_get_next_slen_1_146,00250$
   2277 E4            [12] 1329 	clr	a
   2278 B5 33 02      [24] 1330 	cjne	a,(_packet_get_next_slen_1_146 + 1),00250$
   227B 80 02         [24] 1331 	sjmp	00251$
   227D                    1332 00250$:
   227D 80 79         [24] 1333 	sjmp	00126$
   227F                    1334 00251$:
                           1335 ;	radio/packet.c:223: if ((uint16_t)(timer2_tick() - mav_pkt_start_time) > mav_pkt_max_time) {
   227F 12 59 5B      [24] 1336 	lcall	_timer2_tick
   2282 AE 82         [24] 1337 	mov	r6,dpl
   2284 AF 83         [24] 1338 	mov	r7,dph
   2286 78 61         [12] 1339 	mov	r0,#_mav_pkt_start_time
   2288 D3            [12] 1340 	setb	c
   2289 E2            [24] 1341 	movx	a,@r0
   228A 9E            [12] 1342 	subb	a,r6
   228B F4            [12] 1343 	cpl	a
   228C B3            [12] 1344 	cpl	c
   228D FE            [12] 1345 	mov	r6,a
   228E B3            [12] 1346 	cpl	c
   228F 08            [12] 1347 	inc	r0
   2290 E2            [24] 1348 	movx	a,@r0
   2291 9F            [12] 1349 	subb	a,r7
   2292 F4            [12] 1350 	cpl	a
   2293 FF            [12] 1351 	mov	r7,a
   2294 78 63         [12] 1352 	mov	r0,#_mav_pkt_max_time
   2296 C3            [12] 1353 	clr	c
   2297 E2            [24] 1354 	movx	a,@r0
   2298 9E            [12] 1355 	subb	a,r6
   2299 08            [12] 1356 	inc	r0
   229A E2            [24] 1357 	movx	a,@r0
   229B 9F            [12] 1358 	subb	a,r7
   229C 50 56         [24] 1359 	jnc	00124$
                           1360 ;	radio/packet.c:225: last_sent[last_sent_len++] = serial_read();
   229E 78 5C         [12] 1361 	mov	r0,#_last_sent_len
   22A0 E2            [24] 1362 	movx	a,@r0
   22A1 FF            [12] 1363 	mov	r7,a
   22A2 78 5C         [12] 1364 	mov	r0,#_last_sent_len
   22A4 04            [12] 1365 	inc	a
   22A5 F2            [24] 1366 	movx	@r0,a
   22A6 EF            [12] 1367 	mov	a,r7
   22A7 24 26         [12] 1368 	add	a,#_last_sent
   22A9 FF            [12] 1369 	mov	r7,a
   22AA E4            [12] 1370 	clr	a
   22AB 34 02         [12] 1371 	addc	a,#(_last_sent >> 8)
   22AD FE            [12] 1372 	mov	r6,a
   22AE C0 07         [24] 1373 	push	ar7
   22B0 C0 06         [24] 1374 	push	ar6
   22B2 12 44 C2      [24] 1375 	lcall	_serial_read
   22B5 AD 82         [24] 1376 	mov	r5,dpl
   22B7 D0 06         [24] 1377 	pop	ar6
   22B9 D0 07         [24] 1378 	pop	ar7
   22BB 8F 82         [24] 1379 	mov	dpl,r7
   22BD 8E 83         [24] 1380 	mov	dph,r6
   22BF ED            [12] 1381 	mov	a,r5
   22C0 F0            [24] 1382 	movx	@dptr,a
                           1383 ;	radio/packet.c:226: memcpy(buf, last_sent, last_sent_len);				
   22C1 78 68         [12] 1384 	mov	r0,#_packet_get_next_PARM_2
   22C3 E2            [24] 1385 	movx	a,@r0
   22C4 FD            [12] 1386 	mov	r5,a
   22C5 08            [12] 1387 	inc	r0
   22C6 E2            [24] 1388 	movx	a,@r0
   22C7 FE            [12] 1389 	mov	r6,a
   22C8 7F 00         [12] 1390 	mov	r7,#0x00
   22CA 90 05 C4      [24] 1391 	mov	dptr,#_memcpy_PARM_2
   22CD 74 26         [12] 1392 	mov	a,#_last_sent
   22CF F0            [24] 1393 	movx	@dptr,a
   22D0 74 02         [12] 1394 	mov	a,#(_last_sent >> 8)
   22D2 A3            [24] 1395 	inc	dptr
   22D3 F0            [24] 1396 	movx	@dptr,a
   22D4 E4            [12] 1397 	clr	a
   22D5 A3            [24] 1398 	inc	dptr
   22D6 F0            [24] 1399 	movx	@dptr,a
   22D7 78 5C         [12] 1400 	mov	r0,#_last_sent_len
   22D9 90 05 C7      [24] 1401 	mov	dptr,#_memcpy_PARM_3
   22DC E2            [24] 1402 	movx	a,@r0
   22DD F0            [24] 1403 	movx	@dptr,a
   22DE E4            [12] 1404 	clr	a
   22DF A3            [24] 1405 	inc	dptr
   22E0 F0            [24] 1406 	movx	@dptr,a
   22E1 8D 82         [24] 1407 	mov	dpl,r5
   22E3 8E 83         [24] 1408 	mov	dph,r6
   22E5 8F F0         [24] 1409 	mov	b,r7
   22E7 12 5F FA      [24] 1410 	lcall	_memcpy
                           1411 ;	radio/packet.c:227: mav_pkt_len = 0;
   22EA 78 60         [12] 1412 	mov	r0,#_mav_pkt_len
   22EC E4            [12] 1413 	clr	a
   22ED F2            [24] 1414 	movx	@r0,a
                           1415 ;	radio/packet.c:228: return last_sent_len;
   22EE 78 5C         [12] 1416 	mov	r0,#_last_sent_len
   22F0 E2            [24] 1417 	movx	a,@r0
   22F1 F5 82         [12] 1418 	mov	dpl,a
   22F3 22            [24] 1419 	ret
   22F4                    1420 00124$:
                           1421 ;	radio/packet.c:231: return 0;
   22F4 75 82 00      [24] 1422 	mov	dpl,#0x00
   22F7 22            [24] 1423 	ret
   22F8                    1424 00126$:
                           1425 ;	radio/packet.c:235: mav_pkt_len = 0;
   22F8 78 60         [12] 1426 	mov	r0,#_mav_pkt_len
   22FA E4            [12] 1427 	clr	a
   22FB F2            [24] 1428 	movx	@r0,a
   22FC                    1429 00128$:
                           1430 ;	radio/packet.c:239: if (mav_pkt_len != 0) {
   22FC 78 60         [12] 1431 	mov	r0,#_mav_pkt_len
   22FE E2            [24] 1432 	movx	a,@r0
   22FF 70 03         [24] 1433 	jnz	00253$
   2301 02 23 8B      [24] 1434 	ljmp	00180$
   2304                    1435 00253$:
                           1436 ;	radio/packet.c:240: if (slen < mav_pkt_len) {
   2304 78 60         [12] 1437 	mov	r0,#_mav_pkt_len
   2306 E2            [24] 1438 	movx	a,@r0
   2307 FE            [12] 1439 	mov	r6,a
   2308 7F 00         [12] 1440 	mov	r7,#0x00
   230A C3            [12] 1441 	clr	c
   230B E5 32         [12] 1442 	mov	a,_packet_get_next_slen_1_146
   230D 9E            [12] 1443 	subb	a,r6
   230E E5 33         [12] 1444 	mov	a,(_packet_get_next_slen_1_146 + 1)
   2310 9F            [12] 1445 	subb	a,r7
   2311 50 68         [24] 1446 	jnc	00132$
                           1447 ;	radio/packet.c:241: if ((uint16_t)(timer2_tick() - mav_pkt_start_time) > mav_pkt_max_time) {
   2313 12 59 5B      [24] 1448 	lcall	_timer2_tick
   2316 AE 82         [24] 1449 	mov	r6,dpl
   2318 AF 83         [24] 1450 	mov	r7,dph
   231A 78 61         [12] 1451 	mov	r0,#_mav_pkt_start_time
   231C D3            [12] 1452 	setb	c
   231D E2            [24] 1453 	movx	a,@r0
   231E 9E            [12] 1454 	subb	a,r6
   231F F4            [12] 1455 	cpl	a
   2320 B3            [12] 1456 	cpl	c
   2321 FE            [12] 1457 	mov	r6,a
   2322 B3            [12] 1458 	cpl	c
   2323 08            [12] 1459 	inc	r0
   2324 E2            [24] 1460 	movx	a,@r0
   2325 9F            [12] 1461 	subb	a,r7
   2326 F4            [12] 1462 	cpl	a
   2327 FF            [12] 1463 	mov	r7,a
   2328 78 63         [12] 1464 	mov	r0,#_mav_pkt_max_time
   232A C3            [12] 1465 	clr	c
   232B E2            [24] 1466 	movx	a,@r0
   232C 9E            [12] 1467 	subb	a,r6
   232D 08            [12] 1468 	inc	r0
   232E E2            [24] 1469 	movx	a,@r0
   232F 9F            [12] 1470 	subb	a,r7
   2330 50 45         [24] 1471 	jnc	00130$
                           1472 ;	radio/packet.c:244: serial_read_buf(last_sent, slen);
   2332 AD 32         [24] 1473 	mov	r5,_packet_get_next_slen_1_146
   2334 78 B7         [12] 1474 	mov	r0,#_serial_read_buf_PARM_2
   2336 ED            [12] 1475 	mov	a,r5
   2337 F2            [24] 1476 	movx	@r0,a
   2338 90 02 26      [24] 1477 	mov	dptr,#_last_sent
   233B C0 05         [24] 1478 	push	ar5
   233D 12 45 89      [24] 1479 	lcall	_serial_read_buf
   2340 D0 05         [24] 1480 	pop	ar5
                           1481 ;	radio/packet.c:245: last_sent_len = slen;
   2342 78 5C         [12] 1482 	mov	r0,#_last_sent_len
   2344 ED            [12] 1483 	mov	a,r5
   2345 F2            [24] 1484 	movx	@r0,a
                           1485 ;	radio/packet.c:246: memcpy(buf, last_sent, last_sent_len);
   2346 78 68         [12] 1486 	mov	r0,#_packet_get_next_PARM_2
   2348 E2            [24] 1487 	movx	a,@r0
   2349 FC            [12] 1488 	mov	r4,a
   234A 08            [12] 1489 	inc	r0
   234B E2            [24] 1490 	movx	a,@r0
   234C FE            [12] 1491 	mov	r6,a
   234D 7F 00         [12] 1492 	mov	r7,#0x00
   234F 90 05 C4      [24] 1493 	mov	dptr,#_memcpy_PARM_2
   2352 74 26         [12] 1494 	mov	a,#_last_sent
   2354 F0            [24] 1495 	movx	@dptr,a
   2355 74 02         [12] 1496 	mov	a,#(_last_sent >> 8)
   2357 A3            [24] 1497 	inc	dptr
   2358 F0            [24] 1498 	movx	@dptr,a
   2359 E4            [12] 1499 	clr	a
   235A A3            [24] 1500 	inc	dptr
   235B F0            [24] 1501 	movx	@dptr,a
   235C 90 05 C7      [24] 1502 	mov	dptr,#_memcpy_PARM_3
   235F ED            [12] 1503 	mov	a,r5
   2360 F0            [24] 1504 	movx	@dptr,a
   2361 E4            [12] 1505 	clr	a
   2362 A3            [24] 1506 	inc	dptr
   2363 F0            [24] 1507 	movx	@dptr,a
   2364 8C 82         [24] 1508 	mov	dpl,r4
   2366 8E 83         [24] 1509 	mov	dph,r6
   2368 8F F0         [24] 1510 	mov	b,r7
   236A 12 5F FA      [24] 1511 	lcall	_memcpy
                           1512 ;	radio/packet.c:247: mav_pkt_len = 0;
   236D 78 60         [12] 1513 	mov	r0,#_mav_pkt_len
   236F E4            [12] 1514 	clr	a
   2370 F2            [24] 1515 	movx	@r0,a
                           1516 ;	radio/packet.c:248: return last_sent_len;
   2371 78 5C         [12] 1517 	mov	r0,#_last_sent_len
   2373 E2            [24] 1518 	movx	a,@r0
   2374 F5 82         [12] 1519 	mov	dpl,a
   2376 22            [24] 1520 	ret
   2377                    1521 00130$:
                           1522 ;	radio/packet.c:252: return 0;
   2377 75 82 00      [24] 1523 	mov	dpl,#0x00
   237A 22            [24] 1524 	ret
   237B                    1525 00132$:
                           1526 ;	radio/packet.c:256: return mavlink_frame(max_xmit, buf);
   237B 78 68         [12] 1527 	mov	r0,#_packet_get_next_PARM_2
   237D 79 66         [12] 1528 	mov	r1,#_mavlink_frame_PARM_2
   237F E2            [24] 1529 	movx	a,@r0
   2380 F3            [24] 1530 	movx	@r1,a
   2381 08            [12] 1531 	inc	r0
   2382 E2            [24] 1532 	movx	a,@r0
   2383 09            [12] 1533 	inc	r1
   2384 F3            [24] 1534 	movx	@r1,a
   2385 85 31 82      [24] 1535 	mov	dpl,_packet_get_next_max_xmit_1_145
   2388 02 1F 5C      [24] 1536 	ljmp	_mavlink_frame
                           1537 ;	radio/packet.c:259: while (slen > 0) {
   238B                    1538 00180$:
   238B                    1539 00152$:
   238B E5 32         [12] 1540 	mov	a,_packet_get_next_slen_1_146
   238D 45 33         [12] 1541 	orl	a,(_packet_get_next_slen_1_146 + 1)
   238F 70 03         [24] 1542 	jnz	00256$
   2391 02 25 31      [24] 1543 	ljmp	00154$
   2394                    1544 00256$:
                           1545 ;	radio/packet.c:260: register uint8_t c = serial_peek();
   2394 12 45 40      [24] 1546 	lcall	_serial_peek
   2397 AF 82         [24] 1547 	mov	r7,dpl
                           1548 ;	radio/packet.c:261: if (c == MAVLINK09_STX || c == MAVLINK10_STX) {
   2399 BF 55 02      [24] 1549 	cjne	r7,#0x55,00257$
   239C 80 08         [24] 1550 	sjmp	00148$
   239E                    1551 00257$:
   239E BF FE 02      [24] 1552 	cjne	r7,#0xFE,00258$
   23A1 80 03         [24] 1553 	sjmp	00259$
   23A3                    1554 00258$:
   23A3 02 25 02      [24] 1555 	ljmp	00149$
   23A6                    1556 00259$:
   23A6                    1557 00148$:
                           1558 ;	radio/packet.c:262: if (slen == 1) {
   23A6 74 01         [12] 1559 	mov	a,#0x01
   23A8 B5 32 06      [24] 1560 	cjne	a,_packet_get_next_slen_1_146,00260$
   23AB E4            [12] 1561 	clr	a
   23AC B5 33 02      [24] 1562 	cjne	a,(_packet_get_next_slen_1_146 + 1),00260$
   23AF 80 02         [24] 1563 	sjmp	00261$
   23B1                    1564 00260$:
   23B1 80 2E         [24] 1565 	sjmp	00138$
   23B3                    1566 00261$:
                           1567 ;	radio/packet.c:264: if (last_sent_len == 0) {
   23B3 78 5C         [12] 1568 	mov	r0,#_last_sent_len
   23B5 E2            [24] 1569 	movx	a,@r0
   23B6 60 03         [24] 1570 	jz	00262$
   23B8 02 25 31      [24] 1571 	ljmp	00154$
   23BB                    1572 00262$:
                           1573 ;	radio/packet.c:267: mav_pkt_len = 1;
   23BB 78 60         [12] 1574 	mov	r0,#_mav_pkt_len
   23BD 74 01         [12] 1575 	mov	a,#0x01
   23BF F2            [24] 1576 	movx	@r0,a
                           1577 ;	radio/packet.c:268: mav_pkt_start_time = timer2_tick();
   23C0 12 59 5B      [24] 1578 	lcall	_timer2_tick
   23C3 E5 82         [12] 1579 	mov	a,dpl
   23C5 85 83 F0      [24] 1580 	mov	b,dph
   23C8 78 61         [12] 1581 	mov	r0,#_mav_pkt_start_time
   23CA F2            [24] 1582 	movx	@r0,a
   23CB 08            [12] 1583 	inc	r0
   23CC E5 F0         [12] 1584 	mov	a,b
   23CE F2            [24] 1585 	movx	@r0,a
                           1586 ;	radio/packet.c:269: mav_pkt_max_time = serial_rate;
   23CF 78 5E         [12] 1587 	mov	r0,#_serial_rate
   23D1 E2            [24] 1588 	movx	a,@r0
   23D2 FE            [12] 1589 	mov	r6,a
   23D3 08            [12] 1590 	inc	r0
   23D4 E2            [24] 1591 	movx	a,@r0
   23D5 FF            [12] 1592 	mov	r7,a
   23D6 78 63         [12] 1593 	mov	r0,#_mav_pkt_max_time
   23D8 EE            [12] 1594 	mov	a,r6
   23D9 F2            [24] 1595 	movx	@r0,a
   23DA 08            [12] 1596 	inc	r0
   23DB EF            [12] 1597 	mov	a,r7
   23DC F2            [24] 1598 	movx	@r0,a
                           1599 ;	radio/packet.c:270: return 0;
   23DD 75 82 00      [24] 1600 	mov	dpl,#0x00
   23E0 22            [24] 1601 	ret
                           1602 ;	radio/packet.c:272: break;
   23E1                    1603 00138$:
                           1604 ;	radio/packet.c:274: mav_pkt_len = serial_peek2();
   23E1 12 45 5C      [24] 1605 	lcall	_serial_peek2
   23E4 AF 82         [24] 1606 	mov	r7,dpl
   23E6 78 60         [12] 1607 	mov	r0,#_mav_pkt_len
   23E8 EF            [12] 1608 	mov	a,r7
   23E9 F2            [24] 1609 	movx	@r0,a
                           1610 ;	radio/packet.c:275: if (mav_pkt_len >= 255-8 ||
   23EA BF F7 00      [24] 1611 	cjne	r7,#0xF7,00263$
   23ED                    1612 00263$:
   23ED 50 20         [24] 1613 	jnc	00139$
                           1614 ;	radio/packet.c:276: mav_pkt_len+8 > mav_max_xmit) {
   23EF 8F 05         [24] 1615 	mov	ar5,r7
   23F1 7E 00         [12] 1616 	mov	r6,#0x00
   23F3 74 08         [12] 1617 	mov	a,#0x08
   23F5 2D            [12] 1618 	add	a,r5
   23F6 FD            [12] 1619 	mov	r5,a
   23F7 E4            [12] 1620 	clr	a
   23F8 3E            [12] 1621 	addc	a,r6
   23F9 FE            [12] 1622 	mov	r6,a
   23FA 78 65         [12] 1623 	mov	r0,#_mav_max_xmit
   23FC E2            [24] 1624 	movx	a,@r0
   23FD FB            [12] 1625 	mov	r3,a
   23FE 7C 00         [12] 1626 	mov	r4,#0x00
   2400 C3            [12] 1627 	clr	c
   2401 EB            [12] 1628 	mov	a,r3
   2402 9D            [12] 1629 	subb	a,r5
   2403 EC            [12] 1630 	mov	a,r4
   2404 64 80         [12] 1631 	xrl	a,#0x80
   2406 8E F0         [24] 1632 	mov	b,r6
   2408 63 F0 80      [24] 1633 	xrl	b,#0x80
   240B 95 F0         [12] 1634 	subb	a,b
   240D 50 33         [24] 1635 	jnc	00140$
   240F                    1636 00139$:
                           1637 ;	radio/packet.c:278: mav_pkt_len = 0;
   240F 78 60         [12] 1638 	mov	r0,#_mav_pkt_len
   2411 E4            [12] 1639 	clr	a
   2412 F2            [24] 1640 	movx	@r0,a
                           1641 ;	radio/packet.c:279: last_sent[last_sent_len++] = serial_read();
   2413 78 5C         [12] 1642 	mov	r0,#_last_sent_len
   2415 E2            [24] 1643 	movx	a,@r0
   2416 FE            [12] 1644 	mov	r6,a
   2417 78 5C         [12] 1645 	mov	r0,#_last_sent_len
   2419 04            [12] 1646 	inc	a
   241A F2            [24] 1647 	movx	@r0,a
   241B EE            [12] 1648 	mov	a,r6
   241C 24 26         [12] 1649 	add	a,#_last_sent
   241E FE            [12] 1650 	mov	r6,a
   241F E4            [12] 1651 	clr	a
   2420 34 02         [12] 1652 	addc	a,#(_last_sent >> 8)
   2422 FD            [12] 1653 	mov	r5,a
   2423 C0 06         [24] 1654 	push	ar6
   2425 C0 05         [24] 1655 	push	ar5
   2427 12 44 C2      [24] 1656 	lcall	_serial_read
   242A AC 82         [24] 1657 	mov	r4,dpl
   242C D0 05         [24] 1658 	pop	ar5
   242E D0 06         [24] 1659 	pop	ar6
   2430 8E 82         [24] 1660 	mov	dpl,r6
   2432 8D 83         [24] 1661 	mov	dph,r5
   2434 EC            [12] 1662 	mov	a,r4
   2435 F0            [24] 1663 	movx	@dptr,a
                           1664 ;	radio/packet.c:280: slen--;				
   2436 15 32         [12] 1665 	dec	_packet_get_next_slen_1_146
   2438 74 FF         [12] 1666 	mov	a,#0xFF
   243A B5 32 02      [24] 1667 	cjne	a,_packet_get_next_slen_1_146,00266$
   243D 15 33         [12] 1668 	dec	(_packet_get_next_slen_1_146 + 1)
   243F                    1669 00266$:
                           1670 ;	radio/packet.c:281: continue;
   243F 02 23 8B      [24] 1671 	ljmp	00152$
   2442                    1672 00140$:
                           1673 ;	radio/packet.c:286: mav_pkt_len += 8;
   2442 74 08         [12] 1674 	mov	a,#0x08
   2444 2F            [12] 1675 	add	a,r7
   2445 FF            [12] 1676 	mov	r7,a
   2446 78 60         [12] 1677 	mov	r0,#_mav_pkt_len
   2448 F2            [24] 1678 	movx	@r0,a
                           1679 ;	radio/packet.c:288: if (last_sent_len != 0) {
   2449 78 5C         [12] 1680 	mov	r0,#_last_sent_len
   244B E2            [24] 1681 	movx	a,@r0
   244C 60 62         [24] 1682 	jz	00146$
                           1683 ;	radio/packet.c:292: memcpy(buf, last_sent, last_sent_len);
   244E 78 68         [12] 1684 	mov	r0,#_packet_get_next_PARM_2
   2450 E2            [24] 1685 	movx	a,@r0
   2451 FC            [12] 1686 	mov	r4,a
   2452 08            [12] 1687 	inc	r0
   2453 E2            [24] 1688 	movx	a,@r0
   2454 FD            [12] 1689 	mov	r5,a
   2455 7E 00         [12] 1690 	mov	r6,#0x00
   2457 90 05 C4      [24] 1691 	mov	dptr,#_memcpy_PARM_2
   245A 74 26         [12] 1692 	mov	a,#_last_sent
   245C F0            [24] 1693 	movx	@dptr,a
   245D 74 02         [12] 1694 	mov	a,#(_last_sent >> 8)
   245F A3            [24] 1695 	inc	dptr
   2460 F0            [24] 1696 	movx	@dptr,a
   2461 E4            [12] 1697 	clr	a
   2462 A3            [24] 1698 	inc	dptr
   2463 F0            [24] 1699 	movx	@dptr,a
   2464 78 5C         [12] 1700 	mov	r0,#_last_sent_len
   2466 90 05 C7      [24] 1701 	mov	dptr,#_memcpy_PARM_3
   2469 E2            [24] 1702 	movx	a,@r0
   246A F0            [24] 1703 	movx	@dptr,a
   246B E4            [12] 1704 	clr	a
   246C A3            [24] 1705 	inc	dptr
   246D F0            [24] 1706 	movx	@dptr,a
   246E 8C 82         [24] 1707 	mov	dpl,r4
   2470 8D 83         [24] 1708 	mov	dph,r5
   2472 8E F0         [24] 1709 	mov	b,r6
   2474 12 5F FA      [24] 1710 	lcall	_memcpy
                           1711 ;	radio/packet.c:293: mav_pkt_start_time = timer2_tick();
   2477 12 59 5B      [24] 1712 	lcall	_timer2_tick
   247A E5 82         [12] 1713 	mov	a,dpl
   247C 85 83 F0      [24] 1714 	mov	b,dph
   247F 78 61         [12] 1715 	mov	r0,#_mav_pkt_start_time
   2481 F2            [24] 1716 	movx	@r0,a
   2482 08            [12] 1717 	inc	r0
   2483 E5 F0         [12] 1718 	mov	a,b
   2485 F2            [24] 1719 	movx	@r0,a
                           1720 ;	radio/packet.c:294: mav_pkt_max_time = mav_pkt_len * serial_rate;
   2486 78 60         [12] 1721 	mov	r0,#_mav_pkt_len
   2488 E2            [24] 1722 	movx	a,@r0
   2489 FD            [12] 1723 	mov	r5,a
   248A 7E 00         [12] 1724 	mov	r6,#0x00
   248C 78 5E         [12] 1725 	mov	r0,#_serial_rate
   248E 90 05 CE      [24] 1726 	mov	dptr,#__mulint_PARM_2
   2491 E2            [24] 1727 	movx	a,@r0
   2492 F0            [24] 1728 	movx	@dptr,a
   2493 08            [12] 1729 	inc	r0
   2494 E2            [24] 1730 	movx	a,@r0
   2495 A3            [24] 1731 	inc	dptr
   2496 F0            [24] 1732 	movx	@dptr,a
   2497 8D 82         [24] 1733 	mov	dpl,r5
   2499 8E 83         [24] 1734 	mov	dph,r6
   249B 12 60 D2      [24] 1735 	lcall	__mulint
   249E E5 82         [12] 1736 	mov	a,dpl
   24A0 85 83 F0      [24] 1737 	mov	b,dph
   24A3 78 63         [12] 1738 	mov	r0,#_mav_pkt_max_time
   24A5 F2            [24] 1739 	movx	@r0,a
   24A6 08            [12] 1740 	inc	r0
   24A7 E5 F0         [12] 1741 	mov	a,b
   24A9 F2            [24] 1742 	movx	@r0,a
                           1743 ;	radio/packet.c:295: return last_sent_len;
   24AA 78 5C         [12] 1744 	mov	r0,#_last_sent_len
   24AC E2            [24] 1745 	movx	a,@r0
   24AD F5 82         [12] 1746 	mov	dpl,a
   24AF 22            [24] 1747 	ret
   24B0                    1748 00146$:
                           1749 ;	radio/packet.c:296: } else if (mav_pkt_len > slen) {
   24B0 7E 00         [12] 1750 	mov	r6,#0x00
   24B2 C3            [12] 1751 	clr	c
   24B3 E5 32         [12] 1752 	mov	a,_packet_get_next_slen_1_146
   24B5 9F            [12] 1753 	subb	a,r7
   24B6 E5 33         [12] 1754 	mov	a,(_packet_get_next_slen_1_146 + 1)
   24B8 9E            [12] 1755 	subb	a,r6
   24B9 50 37         [24] 1756 	jnc	00143$
                           1757 ;	radio/packet.c:299: mav_pkt_start_time = timer2_tick();
   24BB 12 59 5B      [24] 1758 	lcall	_timer2_tick
   24BE E5 82         [12] 1759 	mov	a,dpl
   24C0 85 83 F0      [24] 1760 	mov	b,dph
   24C3 78 61         [12] 1761 	mov	r0,#_mav_pkt_start_time
   24C5 F2            [24] 1762 	movx	@r0,a
   24C6 08            [12] 1763 	inc	r0
   24C7 E5 F0         [12] 1764 	mov	a,b
   24C9 F2            [24] 1765 	movx	@r0,a
                           1766 ;	radio/packet.c:300: mav_pkt_max_time = mav_pkt_len * serial_rate;
   24CA 78 60         [12] 1767 	mov	r0,#_mav_pkt_len
   24CC E2            [24] 1768 	movx	a,@r0
   24CD FE            [12] 1769 	mov	r6,a
   24CE 7F 00         [12] 1770 	mov	r7,#0x00
   24D0 78 5E         [12] 1771 	mov	r0,#_serial_rate
   24D2 90 05 CE      [24] 1772 	mov	dptr,#__mulint_PARM_2
   24D5 E2            [24] 1773 	movx	a,@r0
   24D6 F0            [24] 1774 	movx	@dptr,a
   24D7 08            [12] 1775 	inc	r0
   24D8 E2            [24] 1776 	movx	a,@r0
   24D9 A3            [24] 1777 	inc	dptr
   24DA F0            [24] 1778 	movx	@dptr,a
   24DB 8E 82         [24] 1779 	mov	dpl,r6
   24DD 8F 83         [24] 1780 	mov	dph,r7
   24DF 12 60 D2      [24] 1781 	lcall	__mulint
   24E2 E5 82         [12] 1782 	mov	a,dpl
   24E4 85 83 F0      [24] 1783 	mov	b,dph
   24E7 78 63         [12] 1784 	mov	r0,#_mav_pkt_max_time
   24E9 F2            [24] 1785 	movx	@r0,a
   24EA 08            [12] 1786 	inc	r0
   24EB E5 F0         [12] 1787 	mov	a,b
   24ED F2            [24] 1788 	movx	@r0,a
                           1789 ;	radio/packet.c:301: return 0;					
   24EE 75 82 00      [24] 1790 	mov	dpl,#0x00
   24F1 22            [24] 1791 	ret
   24F2                    1792 00143$:
                           1793 ;	radio/packet.c:305: return mavlink_frame(max_xmit, buf);
   24F2 78 68         [12] 1794 	mov	r0,#_packet_get_next_PARM_2
   24F4 79 66         [12] 1795 	mov	r1,#_mavlink_frame_PARM_2
   24F6 E2            [24] 1796 	movx	a,@r0
   24F7 F3            [24] 1797 	movx	@r1,a
   24F8 08            [12] 1798 	inc	r0
   24F9 E2            [24] 1799 	movx	a,@r0
   24FA 09            [12] 1800 	inc	r1
   24FB F3            [24] 1801 	movx	@r1,a
   24FC 85 31 82      [24] 1802 	mov	dpl,_packet_get_next_max_xmit_1_145
   24FF 02 1F 5C      [24] 1803 	ljmp	_mavlink_frame
   2502                    1804 00149$:
                           1805 ;	radio/packet.c:308: last_sent[last_sent_len++] = serial_read();
   2502 78 5C         [12] 1806 	mov	r0,#_last_sent_len
   2504 E2            [24] 1807 	movx	a,@r0
   2505 FF            [12] 1808 	mov	r7,a
   2506 78 5C         [12] 1809 	mov	r0,#_last_sent_len
   2508 04            [12] 1810 	inc	a
   2509 F2            [24] 1811 	movx	@r0,a
   250A EF            [12] 1812 	mov	a,r7
   250B 24 26         [12] 1813 	add	a,#_last_sent
   250D FF            [12] 1814 	mov	r7,a
   250E E4            [12] 1815 	clr	a
   250F 34 02         [12] 1816 	addc	a,#(_last_sent >> 8)
   2511 FE            [12] 1817 	mov	r6,a
   2512 C0 07         [24] 1818 	push	ar7
   2514 C0 06         [24] 1819 	push	ar6
   2516 12 44 C2      [24] 1820 	lcall	_serial_read
   2519 AD 82         [24] 1821 	mov	r5,dpl
   251B D0 06         [24] 1822 	pop	ar6
   251D D0 07         [24] 1823 	pop	ar7
   251F 8F 82         [24] 1824 	mov	dpl,r7
   2521 8E 83         [24] 1825 	mov	dph,r6
   2523 ED            [12] 1826 	mov	a,r5
   2524 F0            [24] 1827 	movx	@dptr,a
                           1828 ;	radio/packet.c:309: slen--;
   2525 15 32         [12] 1829 	dec	_packet_get_next_slen_1_146
   2527 74 FF         [12] 1830 	mov	a,#0xFF
   2529 B5 32 02      [24] 1831 	cjne	a,_packet_get_next_slen_1_146,00269$
   252C 15 33         [12] 1832 	dec	(_packet_get_next_slen_1_146 + 1)
   252E                    1833 00269$:
   252E 02 23 8B      [24] 1834 	ljmp	00152$
   2531                    1835 00154$:
                           1836 ;	radio/packet.c:313: memcpy(buf, last_sent, last_sent_len);
   2531 78 68         [12] 1837 	mov	r0,#_packet_get_next_PARM_2
   2533 E2            [24] 1838 	movx	a,@r0
   2534 FD            [12] 1839 	mov	r5,a
   2535 08            [12] 1840 	inc	r0
   2536 E2            [24] 1841 	movx	a,@r0
   2537 FE            [12] 1842 	mov	r6,a
   2538 7F 00         [12] 1843 	mov	r7,#0x00
   253A 90 05 C4      [24] 1844 	mov	dptr,#_memcpy_PARM_2
   253D 74 26         [12] 1845 	mov	a,#_last_sent
   253F F0            [24] 1846 	movx	@dptr,a
   2540 74 02         [12] 1847 	mov	a,#(_last_sent >> 8)
   2542 A3            [24] 1848 	inc	dptr
   2543 F0            [24] 1849 	movx	@dptr,a
   2544 E4            [12] 1850 	clr	a
   2545 A3            [24] 1851 	inc	dptr
   2546 F0            [24] 1852 	movx	@dptr,a
   2547 78 5C         [12] 1853 	mov	r0,#_last_sent_len
   2549 90 05 C7      [24] 1854 	mov	dptr,#_memcpy_PARM_3
   254C E2            [24] 1855 	movx	a,@r0
   254D F0            [24] 1856 	movx	@dptr,a
   254E E4            [12] 1857 	clr	a
   254F A3            [24] 1858 	inc	dptr
   2550 F0            [24] 1859 	movx	@dptr,a
   2551 8D 82         [24] 1860 	mov	dpl,r5
   2553 8E 83         [24] 1861 	mov	dph,r6
   2555 8F F0         [24] 1862 	mov	b,r7
   2557 12 5F FA      [24] 1863 	lcall	_memcpy
                           1864 ;	radio/packet.c:314: return last_sent_len;
   255A 78 5C         [12] 1865 	mov	r0,#_last_sent_len
   255C E2            [24] 1866 	movx	a,@r0
   255D F5 82         [12] 1867 	mov	dpl,a
   255F 22            [24] 1868 	ret
                           1869 ;------------------------------------------------------------
                           1870 ;Allocation info for local variables in function 'packet_is_resend'
                           1871 ;------------------------------------------------------------
                           1872 ;	radio/packet.c:320: packet_is_resend(void)
                           1873 ;	-----------------------------------------
                           1874 ;	 function packet_is_resend
                           1875 ;	-----------------------------------------
   2560                    1876 _packet_is_resend:
                           1877 ;	radio/packet.c:322: return last_sent_is_resend;
   2560 A2 09         [12] 1878 	mov	c,_last_sent_is_resend
   2562 22            [24] 1879 	ret
                           1880 ;------------------------------------------------------------
                           1881 ;Allocation info for local variables in function 'packet_is_injected'
                           1882 ;------------------------------------------------------------
                           1883 ;	radio/packet.c:328: packet_is_injected(void)
                           1884 ;	-----------------------------------------
                           1885 ;	 function packet_is_injected
                           1886 ;	-----------------------------------------
   2563                    1887 _packet_is_injected:
                           1888 ;	radio/packet.c:330: return last_sent_is_injected;
   2563 A2 0A         [12] 1889 	mov	c,_last_sent_is_injected
   2565 22            [24] 1890 	ret
                           1891 ;------------------------------------------------------------
                           1892 ;Allocation info for local variables in function 'packet_force_resend'
                           1893 ;------------------------------------------------------------
                           1894 ;	radio/packet.c:335: packet_force_resend(void)
                           1895 ;	-----------------------------------------
                           1896 ;	 function packet_force_resend
                           1897 ;	-----------------------------------------
   2566                    1898 _packet_force_resend:
                           1899 ;	radio/packet.c:337: force_resend = true;
   2566 D2 0C         [12] 1900 	setb	_force_resend
   2568 22            [24] 1901 	ret
                           1902 ;------------------------------------------------------------
                           1903 ;Allocation info for local variables in function 'packet_set_max_xmit'
                           1904 ;------------------------------------------------------------
                           1905 ;max                       Allocated with name '_packet_set_max_xmit_max_1_177'
                           1906 ;------------------------------------------------------------
                           1907 ;	radio/packet.c:342: packet_set_max_xmit(uint8_t max)
                           1908 ;	-----------------------------------------
                           1909 ;	 function packet_set_max_xmit
                           1910 ;	-----------------------------------------
   2569                    1911 _packet_set_max_xmit:
   2569 E5 82         [12] 1912 	mov	a,dpl
                           1913 ;	radio/packet.c:344: mav_max_xmit = max;
   256B 90 03 23      [24] 1914 	mov	dptr,#_packet_set_max_xmit_max_1_177
   256E F0            [24] 1915 	movx	@dptr,a
   256F 78 65         [12] 1916 	mov	r0,#_mav_max_xmit
   2571 F2            [24] 1917 	movx	@r0,a
   2572 22            [24] 1918 	ret
                           1919 ;------------------------------------------------------------
                           1920 ;Allocation info for local variables in function 'packet_set_serial_speed'
                           1921 ;------------------------------------------------------------
                           1922 ;speed                     Allocated with name '_packet_set_serial_speed_speed_1_179'
                           1923 ;------------------------------------------------------------
                           1924 ;	radio/packet.c:349: packet_set_serial_speed(uint16_t speed)
                           1925 ;	-----------------------------------------
                           1926 ;	 function packet_set_serial_speed
                           1927 ;	-----------------------------------------
   2573                    1928 _packet_set_serial_speed:
   2573 AF 83         [24] 1929 	mov	r7,dph
   2575 E5 82         [12] 1930 	mov	a,dpl
   2577 90 03 24      [24] 1931 	mov	dptr,#_packet_set_serial_speed_speed_1_179
   257A F0            [24] 1932 	movx	@dptr,a
   257B EF            [12] 1933 	mov	a,r7
   257C A3            [24] 1934 	inc	dptr
   257D F0            [24] 1935 	movx	@dptr,a
                           1936 ;	radio/packet.c:352: serial_rate = (65536UL / speed) + 1;
   257E 90 03 24      [24] 1937 	mov	dptr,#_packet_set_serial_speed_speed_1_179
   2581 E0            [24] 1938 	movx	a,@dptr
   2582 FE            [12] 1939 	mov	r6,a
   2583 A3            [24] 1940 	inc	dptr
   2584 E0            [24] 1941 	movx	a,@dptr
   2585 FF            [12] 1942 	mov	r7,a
   2586 90 05 B5      [24] 1943 	mov	dptr,#__divulong_PARM_2
   2589 EE            [12] 1944 	mov	a,r6
   258A F0            [24] 1945 	movx	@dptr,a
   258B EF            [12] 1946 	mov	a,r7
   258C A3            [24] 1947 	inc	dptr
   258D F0            [24] 1948 	movx	@dptr,a
   258E E4            [12] 1949 	clr	a
   258F A3            [24] 1950 	inc	dptr
   2590 F0            [24] 1951 	movx	@dptr,a
   2591 E4            [12] 1952 	clr	a
   2592 A3            [24] 1953 	inc	dptr
   2593 F0            [24] 1954 	movx	@dptr,a
   2594 90 00 00      [24] 1955 	mov	dptr,#0x0000
   2597 75 F0 01      [24] 1956 	mov	b,#0x01
   259A E4            [12] 1957 	clr	a
   259B 12 5E 91      [24] 1958 	lcall	__divulong
   259E AC 82         [24] 1959 	mov	r4,dpl
   25A0 AD 83         [24] 1960 	mov	r5,dph
   25A2 AE F0         [24] 1961 	mov	r6,b
   25A4 FF            [12] 1962 	mov	r7,a
   25A5 0C            [12] 1963 	inc	r4
   25A6 BC 00 09      [24] 1964 	cjne	r4,#0x00,00103$
   25A9 0D            [12] 1965 	inc	r5
   25AA BD 00 05      [24] 1966 	cjne	r5,#0x00,00103$
   25AD 0E            [12] 1967 	inc	r6
   25AE BE 00 01      [24] 1968 	cjne	r6,#0x00,00103$
   25B1 0F            [12] 1969 	inc	r7
   25B2                    1970 00103$:
   25B2 78 5E         [12] 1971 	mov	r0,#_serial_rate
   25B4 EC            [12] 1972 	mov	a,r4
   25B5 F2            [24] 1973 	movx	@r0,a
   25B6 08            [12] 1974 	inc	r0
   25B7 ED            [12] 1975 	mov	a,r5
   25B8 F2            [24] 1976 	movx	@r0,a
   25B9 22            [24] 1977 	ret
                           1978 ;------------------------------------------------------------
                           1979 ;Allocation info for local variables in function 'packet_is_duplicate'
                           1980 ;------------------------------------------------------------
                           1981 ;len                       Allocated with name '_packet_is_duplicate_len_1_181'
                           1982 ;------------------------------------------------------------
                           1983 ;	radio/packet.c:357: packet_is_duplicate(uint8_t len, __xdata uint8_t * __pdata buf, bool is_resend)
                           1984 ;	-----------------------------------------
                           1985 ;	 function packet_is_duplicate
                           1986 ;	-----------------------------------------
   25BA                    1987 _packet_is_duplicate:
   25BA E5 82         [12] 1988 	mov	a,dpl
   25BC 90 03 26      [24] 1989 	mov	dptr,#_packet_is_duplicate_len_1_181
   25BF F0            [24] 1990 	movx	@dptr,a
                           1991 ;	radio/packet.c:359: if (!is_resend) {
   25C0 20 10 39      [24] 1992 	jb	_packet_is_duplicate_PARM_3,00102$
                           1993 ;	radio/packet.c:360: memcpy(last_received, buf, len);
   25C3 78 6A         [12] 1994 	mov	r0,#_packet_is_duplicate_PARM_2
   25C5 E2            [24] 1995 	movx	a,@r0
   25C6 FD            [12] 1996 	mov	r5,a
   25C7 08            [12] 1997 	inc	r0
   25C8 E2            [24] 1998 	movx	a,@r0
   25C9 FE            [12] 1999 	mov	r6,a
   25CA 7F 00         [12] 2000 	mov	r7,#0x00
   25CC 90 03 26      [24] 2001 	mov	dptr,#_packet_is_duplicate_len_1_181
   25CF E0            [24] 2002 	movx	a,@dptr
   25D0 FC            [12] 2003 	mov	r4,a
   25D1 FA            [12] 2004 	mov	r2,a
   25D2 7B 00         [12] 2005 	mov	r3,#0x00
   25D4 90 05 C4      [24] 2006 	mov	dptr,#_memcpy_PARM_2
   25D7 ED            [12] 2007 	mov	a,r5
   25D8 F0            [24] 2008 	movx	@dptr,a
   25D9 EE            [12] 2009 	mov	a,r6
   25DA A3            [24] 2010 	inc	dptr
   25DB F0            [24] 2011 	movx	@dptr,a
   25DC EF            [12] 2012 	mov	a,r7
   25DD A3            [24] 2013 	inc	dptr
   25DE F0            [24] 2014 	movx	@dptr,a
   25DF 90 05 C7      [24] 2015 	mov	dptr,#_memcpy_PARM_3
   25E2 EA            [12] 2016 	mov	a,r2
   25E3 F0            [24] 2017 	movx	@dptr,a
   25E4 EB            [12] 2018 	mov	a,r3
   25E5 A3            [24] 2019 	inc	dptr
   25E6 F0            [24] 2020 	movx	@dptr,a
   25E7 90 01 2A      [24] 2021 	mov	dptr,#_last_received
   25EA 75 F0 00      [24] 2022 	mov	b,#0x00
   25ED C0 04         [24] 2023 	push	ar4
   25EF 12 5F FA      [24] 2024 	lcall	_memcpy
   25F2 D0 04         [24] 2025 	pop	ar4
                           2026 ;	radio/packet.c:361: last_recv_len = len;
   25F4 78 5D         [12] 2027 	mov	r0,#_last_recv_len
   25F6 EC            [12] 2028 	mov	a,r4
   25F7 F2            [24] 2029 	movx	@r0,a
                           2030 ;	radio/packet.c:362: last_recv_is_resend = false;
   25F8 C2 0B         [12] 2031 	clr	_last_recv_is_resend
                           2032 ;	radio/packet.c:363: return false;
   25FA C3            [12] 2033 	clr	c
   25FB 22            [24] 2034 	ret
   25FC                    2035 00102$:
                           2036 ;	radio/packet.c:367: memcmp(last_received, buf, len) == 0) {
   25FC 20 0B 37      [24] 2037 	jb	_last_recv_is_resend,00104$
                           2038 ;	radio/packet.c:366: len == last_recv_len &&
   25FF 90 03 26      [24] 2039 	mov	dptr,#_packet_is_duplicate_len_1_181
   2602 E0            [24] 2040 	movx	a,@dptr
   2603 FF            [12] 2041 	mov	r7,a
   2604 78 5D         [12] 2042 	mov	r0,#_last_recv_len
   2606 E2            [24] 2043 	movx	a,@r0
   2607 B5 07 2C      [24] 2044 	cjne	a,ar7,00104$
                           2045 ;	radio/packet.c:367: memcmp(last_received, buf, len) == 0) {
   260A 78 6A         [12] 2046 	mov	r0,#_packet_is_duplicate_PARM_2
   260C 90 05 E3      [24] 2047 	mov	dptr,#_memcmp_PARM_2
   260F E2            [24] 2048 	movx	a,@r0
   2610 F0            [24] 2049 	movx	@dptr,a
   2611 08            [12] 2050 	inc	r0
   2612 E2            [24] 2051 	movx	a,@r0
   2613 A3            [24] 2052 	inc	dptr
   2614 F0            [24] 2053 	movx	@dptr,a
   2615 E4            [12] 2054 	clr	a
   2616 A3            [24] 2055 	inc	dptr
   2617 F0            [24] 2056 	movx	@dptr,a
   2618 90 05 E6      [24] 2057 	mov	dptr,#_memcmp_PARM_3
   261B EF            [12] 2058 	mov	a,r7
   261C F0            [24] 2059 	movx	@dptr,a
   261D E4            [12] 2060 	clr	a
   261E A3            [24] 2061 	inc	dptr
   261F F0            [24] 2062 	movx	@dptr,a
   2620 90 01 2A      [24] 2063 	mov	dptr,#_last_received
   2623 75 F0 00      [24] 2064 	mov	b,#0x00
   2626 12 63 08      [24] 2065 	lcall	_memcmp
   2629 E5 82         [12] 2066 	mov	a,dpl
   262B 85 83 F0      [24] 2067 	mov	b,dph
   262E 45 F0         [12] 2068 	orl	a,b
   2630 70 04         [24] 2069 	jnz	00104$
                           2070 ;	radio/packet.c:368: last_recv_is_resend = false;
   2632 C2 0B         [12] 2071 	clr	_last_recv_is_resend
                           2072 ;	radio/packet.c:369: return true;
   2634 D3            [12] 2073 	setb	c
   2635 22            [24] 2074 	ret
   2636                    2075 00104$:
                           2076 ;	radio/packet.c:377: last_recv_is_resend = true;
   2636 D2 0B         [12] 2077 	setb	_last_recv_is_resend
                           2078 ;	radio/packet.c:378: return false;
   2638 C3            [12] 2079 	clr	c
   2639 22            [24] 2080 	ret
                           2081 ;------------------------------------------------------------
                           2082 ;Allocation info for local variables in function 'packet_inject'
                           2083 ;------------------------------------------------------------
                           2084 ;	radio/packet.c:383: packet_inject(__xdata uint8_t * __pdata buf, __pdata uint8_t len)
                           2085 ;	-----------------------------------------
                           2086 ;	 function packet_inject
                           2087 ;	-----------------------------------------
   263A                    2088 _packet_inject:
   263A AE 82         [24] 2089 	mov	r6,dpl
   263C AF 83         [24] 2090 	mov	r7,dph
                           2091 ;	radio/packet.c:385: if (len > sizeof(last_sent)) {
   263E 78 6C         [12] 2092 	mov	r0,#_packet_inject_PARM_2
   2640 C3            [12] 2093 	clr	c
   2641 E2            [24] 2094 	movx	a,@r0
   2642 F5 F0         [12] 2095 	mov	b,a
   2644 74 FC         [12] 2096 	mov	a,#0xFC
   2646 95 F0         [12] 2097 	subb	a,b
   2648 50 05         [24] 2098 	jnc	00102$
                           2099 ;	radio/packet.c:386: len = sizeof(last_sent);
   264A 78 6C         [12] 2100 	mov	r0,#_packet_inject_PARM_2
   264C 74 FC         [12] 2101 	mov	a,#0xFC
   264E F2            [24] 2102 	movx	@r0,a
   264F                    2103 00102$:
                           2104 ;	radio/packet.c:388: memcpy(last_sent, buf, len);
   264F 90 05 C4      [24] 2105 	mov	dptr,#_memcpy_PARM_2
   2652 EE            [12] 2106 	mov	a,r6
   2653 F0            [24] 2107 	movx	@dptr,a
   2654 EF            [12] 2108 	mov	a,r7
   2655 A3            [24] 2109 	inc	dptr
   2656 F0            [24] 2110 	movx	@dptr,a
   2657 E4            [12] 2111 	clr	a
   2658 A3            [24] 2112 	inc	dptr
   2659 F0            [24] 2113 	movx	@dptr,a
   265A 78 6C         [12] 2114 	mov	r0,#_packet_inject_PARM_2
   265C 90 05 C7      [24] 2115 	mov	dptr,#_memcpy_PARM_3
   265F E2            [24] 2116 	movx	a,@r0
   2660 F0            [24] 2117 	movx	@dptr,a
   2661 E4            [12] 2118 	clr	a
   2662 A3            [24] 2119 	inc	dptr
   2663 F0            [24] 2120 	movx	@dptr,a
   2664 90 02 26      [24] 2121 	mov	dptr,#_last_sent
   2667 75 F0 00      [24] 2122 	mov	b,#0x00
   266A 12 5F FA      [24] 2123 	lcall	_memcpy
                           2124 ;	radio/packet.c:389: last_sent_len = len;
   266D 78 6C         [12] 2125 	mov	r0,#_packet_inject_PARM_2
   266F E2            [24] 2126 	movx	a,@r0
   2670 78 5C         [12] 2127 	mov	r0,#_last_sent_len
   2672 F2            [24] 2128 	movx	@r0,a
                           2129 ;	radio/packet.c:390: last_sent_is_resend = false;
   2673 C2 09         [12] 2130 	clr	_last_sent_is_resend
                           2131 ;	radio/packet.c:391: injected_packet = true;
   2675 D2 0D         [12] 2132 	setb	_injected_packet
   2677 22            [24] 2133 	ret
                           2134 	.area CSEG    (CODE)
                           2135 	.area CONST   (CODE)
                           2136 	.area XINIT   (CODE)
                           2137 	.area CABS    (ABS,CODE)
