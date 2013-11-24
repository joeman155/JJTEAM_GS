                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:03 2013
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
                     0087   547 _IRQ	=	0x0087
                     0094   548 _NSS1	=	0x0094
                     00A6   549 _SDN	=	0x00a6
                            550 ;--------------------------------------------------------
                            551 ; overlayable register banks
                            552 ;--------------------------------------------------------
                            553 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     554 	.ds 8
                            555 ;--------------------------------------------------------
                            556 ; internal ram data
                            557 ;--------------------------------------------------------
                            558 	.area DSEG    (DATA)
   002B                     559 _mavlink_frame_slen_1_138:
   002B                     560 	.ds 2
   002D                     561 _mavlink_frame_c_2_139:
   002D                     562 	.ds 1
   002E                     563 _mavlink_frame_sloc0_1_0:
   002E                     564 	.ds 1
   002F                     565 _mavlink_frame_sloc1_1_0:
   002F                     566 	.ds 2
   0031                     567 _packet_get_next_max_xmit_1_143:
   0031                     568 	.ds 1
   0032                     569 _packet_get_next_slen_1_144:
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
   0008                     589 _last_sent_is_resend:
   0008                     590 	.ds 1
   0009                     591 _last_sent_is_injected:
   0009                     592 	.ds 1
   000A                     593 _last_recv_is_resend:
   000A                     594 	.ds 1
   000B                     595 _force_resend:
   000B                     596 	.ds 1
   000C                     597 _injected_packet:
   000C                     598 	.ds 1
   000D                     599 _seen_mavlink::
   000D                     600 	.ds 1
   000E                     601 _using_mavlink_10::
   000E                     602 	.ds 1
   000F                     603 _packet_is_duplicate_PARM_3:
   000F                     604 	.ds 1
                            605 ;--------------------------------------------------------
                            606 ; paged external ram data
                            607 ;--------------------------------------------------------
                            608 	.area PSEG    (PAG,XDATA)
   0058                     609 _last_sent_len:
   0058                     610 	.ds 1
   0059                     611 _last_recv_len:
   0059                     612 	.ds 1
   005A                     613 _serial_rate:
   005A                     614 	.ds 2
   005C                     615 _mav_pkt_len:
   005C                     616 	.ds 1
   005D                     617 _mav_pkt_start_time:
   005D                     618 	.ds 2
   005F                     619 _mav_pkt_max_time:
   005F                     620 	.ds 2
   0061                     621 _mav_max_xmit:
   0061                     622 	.ds 1
   0062                     623 _mavlink_frame_PARM_2:
   0062                     624 	.ds 2
   0064                     625 _packet_get_next_PARM_2:
   0064                     626 	.ds 2
   0066                     627 _packet_is_duplicate_PARM_2:
   0066                     628 	.ds 2
   0068                     629 _packet_inject_PARM_2:
   0068                     630 	.ds 1
                            631 ;--------------------------------------------------------
                            632 ; external ram data
                            633 ;--------------------------------------------------------
                            634 	.area XSEG    (XDATA)
   0126                     635 _last_received:
   0126                     636 	.ds 252
   0222                     637 _last_sent:
   0222                     638 	.ds 252
   031E                     639 _mavlink_frame_max_xmit_1_137:
   031E                     640 	.ds 1
   031F                     641 _packet_set_max_xmit_max_1_175:
   031F                     642 	.ds 1
   0320                     643 _packet_set_serial_speed_speed_1_177:
   0320                     644 	.ds 2
   0322                     645 _packet_is_duplicate_len_1_179:
   0322                     646 	.ds 1
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
   1DED                     688 _check_heartbeat:
                     0007   689 	ar7 = 0x07
                     0006   690 	ar6 = 0x06
                     0005   691 	ar5 = 0x05
                     0004   692 	ar4 = 0x04
                     0003   693 	ar3 = 0x03
                     0002   694 	ar2 = 0x02
                     0001   695 	ar1 = 0x01
                     0000   696 	ar0 = 0x00
                            697 ;	radio/packet.c:83: if (buf[0] == MAVLINK09_STX &&
   1DED AE 82         [24]  698 	mov	r6,dpl
   1DEF AF 83         [24]  699 	mov  r7,dph
   1DF1 E0            [24]  700 	movx	a,@dptr
   1DF2 FD            [12]  701 	mov	r5,a
   1DF3 BD 55 1D      [24]  702 	cjne	r5,#0x55,00106$
                            703 ;	radio/packet.c:84: buf[1] == 3 && buf[5] == 0) {
   1DF6 8E 82         [24]  704 	mov	dpl,r6
   1DF8 8F 83         [24]  705 	mov	dph,r7
   1DFA A3            [24]  706 	inc	dptr
   1DFB E0            [24]  707 	movx	a,@dptr
   1DFC FC            [12]  708 	mov	r4,a
   1DFD BC 03 13      [24]  709 	cjne	r4,#0x03,00106$
   1E00 74 05         [12]  710 	mov	a,#0x05
   1E02 2E            [12]  711 	add	a,r6
   1E03 FB            [12]  712 	mov	r3,a
   1E04 E4            [12]  713 	clr	a
   1E05 3F            [12]  714 	addc	a,r7
   1E06 FC            [12]  715 	mov	r4,a
   1E07 8B 82         [24]  716 	mov	dpl,r3
   1E09 8C 83         [24]  717 	mov	dph,r4
   1E0B E0            [24]  718 	movx	a,@dptr
   1E0C 70 05         [24]  719 	jnz	00106$
                            720 ;	radio/packet.c:86: using_mavlink_10 = false;
   1E0E C2 0E         [12]  721 	clr	_using_mavlink_10
                            722 ;	radio/packet.c:87: seen_mavlink = true;
   1E10 D2 0D         [12]  723 	setb	_seen_mavlink
   1E12 22            [24]  724 	ret
   1E13                     725 00106$:
                            726 ;	radio/packet.c:88: } else if (buf[0] == MAVLINK10_STX &&
   1E13 BD FE 1C      [24]  727 	cjne	r5,#0xFE,00110$
                            728 ;	radio/packet.c:89: buf[1] == 9 && buf[5] == 0) {
   1E16 8E 82         [24]  729 	mov	dpl,r6
   1E18 8F 83         [24]  730 	mov	dph,r7
   1E1A A3            [24]  731 	inc	dptr
   1E1B E0            [24]  732 	movx	a,@dptr
   1E1C FD            [12]  733 	mov	r5,a
   1E1D BD 09 12      [24]  734 	cjne	r5,#0x09,00110$
   1E20 74 05         [12]  735 	mov	a,#0x05
   1E22 2E            [12]  736 	add	a,r6
   1E23 FE            [12]  737 	mov	r6,a
   1E24 E4            [12]  738 	clr	a
   1E25 3F            [12]  739 	addc	a,r7
   1E26 FF            [12]  740 	mov	r7,a
   1E27 8E 82         [24]  741 	mov	dpl,r6
   1E29 8F 83         [24]  742 	mov	dph,r7
   1E2B E0            [24]  743 	movx	a,@dptr
   1E2C 70 04         [24]  744 	jnz	00110$
                            745 ;	radio/packet.c:91: using_mavlink_10 = true;
   1E2E D2 0E         [12]  746 	setb	_using_mavlink_10
                            747 ;	radio/packet.c:92: seen_mavlink = true;
   1E30 D2 0D         [12]  748 	setb	_seen_mavlink
   1E32                     749 00110$:
   1E32 22            [24]  750 	ret
                            751 ;------------------------------------------------------------
                            752 ;Allocation info for local variables in function 'mavlink_frame'
                            753 ;------------------------------------------------------------
                            754 ;slen                      Allocated with name '_mavlink_frame_slen_1_138'
                            755 ;c                         Allocated with name '_mavlink_frame_c_2_139'
                            756 ;sloc0                     Allocated with name '_mavlink_frame_sloc0_1_0'
                            757 ;sloc1                     Allocated with name '_mavlink_frame_sloc1_1_0'
                            758 ;max_xmit                  Allocated with name '_mavlink_frame_max_xmit_1_137'
                            759 ;------------------------------------------------------------
                            760 ;	radio/packet.c:99: uint8_t mavlink_frame(uint8_t max_xmit, __xdata uint8_t * __pdata buf)
                            761 ;	-----------------------------------------
                            762 ;	 function mavlink_frame
                            763 ;	-----------------------------------------
   1E33                     764 _mavlink_frame:
   1E33 E5 82         [12]  765 	mov	a,dpl
   1E35 90 03 1E      [24]  766 	mov	dptr,#_mavlink_frame_max_xmit_1_137
   1E38 F0            [24]  767 	movx	@dptr,a
                            768 ;	radio/packet.c:103: serial_read_buf(last_sent, mav_pkt_len);
   1E39 78 5C         [12]  769 	mov	r0,#_mav_pkt_len
   1E3B 79 B3         [12]  770 	mov	r1,#_serial_read_buf_PARM_2
   1E3D E2            [24]  771 	movx	a,@r0
   1E3E F3            [24]  772 	movx	@r1,a
   1E3F 90 02 22      [24]  773 	mov	dptr,#_last_sent
   1E42 12 43 2B      [24]  774 	lcall	_serial_read_buf
                            775 ;	radio/packet.c:104: last_sent_len = mav_pkt_len;
   1E45 78 5C         [12]  776 	mov	r0,#_mav_pkt_len
   1E47 E2            [24]  777 	movx	a,@r0
   1E48 FF            [12]  778 	mov	r7,a
   1E49 78 58         [12]  779 	mov	r0,#_last_sent_len
   1E4B F2            [24]  780 	movx	@r0,a
                            781 ;	radio/packet.c:105: memcpy(buf, last_sent, last_sent_len);
   1E4C 78 62         [12]  782 	mov	r0,#_mavlink_frame_PARM_2
   1E4E E2            [24]  783 	movx	a,@r0
   1E4F FC            [12]  784 	mov	r4,a
   1E50 08            [12]  785 	inc	r0
   1E51 E2            [24]  786 	movx	a,@r0
   1E52 FD            [12]  787 	mov	r5,a
   1E53 7E 00         [12]  788 	mov	r6,#0x00
   1E55 90 05 C1      [24]  789 	mov	dptr,#_memcpy_PARM_2
   1E58 74 22         [12]  790 	mov	a,#_last_sent
   1E5A F0            [24]  791 	movx	@dptr,a
   1E5B 74 02         [12]  792 	mov	a,#(_last_sent >> 8)
   1E5D A3            [24]  793 	inc	dptr
   1E5E F0            [24]  794 	movx	@dptr,a
   1E5F E4            [12]  795 	clr	a
   1E60 A3            [24]  796 	inc	dptr
   1E61 F0            [24]  797 	movx	@dptr,a
   1E62 90 05 C4      [24]  798 	mov	dptr,#_memcpy_PARM_3
   1E65 EF            [12]  799 	mov	a,r7
   1E66 F0            [24]  800 	movx	@dptr,a
   1E67 E4            [12]  801 	clr	a
   1E68 A3            [24]  802 	inc	dptr
   1E69 F0            [24]  803 	movx	@dptr,a
   1E6A 8C 82         [24]  804 	mov	dpl,r4
   1E6C 8D 83         [24]  805 	mov	dph,r5
   1E6E 8E F0         [24]  806 	mov	b,r6
   1E70 12 5D 9C      [24]  807 	lcall	_memcpy
                            808 ;	radio/packet.c:106: mav_pkt_len = 0;
   1E73 78 5C         [12]  809 	mov	r0,#_mav_pkt_len
   1E75 E4            [12]  810 	clr	a
   1E76 F2            [24]  811 	movx	@r0,a
                            812 ;	radio/packet.c:108: check_heartbeat(buf);
   1E77 78 62         [12]  813 	mov	r0,#_mavlink_frame_PARM_2
   1E79 E2            [24]  814 	movx	a,@r0
   1E7A F5 82         [12]  815 	mov	dpl,a
   1E7C 08            [12]  816 	inc	r0
   1E7D E2            [24]  817 	movx	a,@r0
   1E7E F5 83         [12]  818 	mov	dph,a
   1E80 12 1D ED      [24]  819 	lcall	_check_heartbeat
                            820 ;	radio/packet.c:110: slen = serial_read_available();
   1E83 12 44 7C      [24]  821 	lcall	_serial_read_available
   1E86 85 82 2B      [24]  822 	mov	_mavlink_frame_slen_1_138,dpl
   1E89 85 83 2C      [24]  823 	mov	(_mavlink_frame_slen_1_138 + 1),dph
                            824 ;	radio/packet.c:114: while (slen >= 8) {
   1E8C 90 03 1E      [24]  825 	mov	dptr,#_mavlink_frame_max_xmit_1_137
   1E8F E0            [24]  826 	movx	a,@dptr
   1E90 F5 2E         [12]  827 	mov	_mavlink_frame_sloc0_1_0,a
   1E92                     828 00109$:
   1E92 C3            [12]  829 	clr	c
   1E93 E5 2B         [12]  830 	mov	a,_mavlink_frame_slen_1_138
   1E95 94 08         [12]  831 	subb	a,#0x08
   1E97 E5 2C         [12]  832 	mov	a,(_mavlink_frame_slen_1_138 + 1)
   1E99 94 00         [12]  833 	subb	a,#0x00
   1E9B 50 03         [24]  834 	jnc	00135$
   1E9D 02 1F 92      [24]  835 	ljmp	00111$
   1EA0                     836 00135$:
                            837 ;	radio/packet.c:115: register uint8_t c = serial_peek();
   1EA0 12 42 E2      [24]  838 	lcall	_serial_peek
   1EA3 85 82 2D      [24]  839 	mov	_mavlink_frame_c_2_139,dpl
                            840 ;	radio/packet.c:116: if (c != MAVLINK09_STX && c != MAVLINK10_STX) {
   1EA6 74 55         [12]  841 	mov	a,#0x55
   1EA8 B5 2D 02      [24]  842 	cjne	a,_mavlink_frame_c_2_139,00136$
   1EAB 80 0D         [24]  843 	sjmp	00102$
   1EAD                     844 00136$:
   1EAD 74 FE         [12]  845 	mov	a,#0xFE
   1EAF B5 2D 02      [24]  846 	cjne	a,_mavlink_frame_c_2_139,00137$
   1EB2 80 06         [24]  847 	sjmp	00102$
   1EB4                     848 00137$:
                            849 ;	radio/packet.c:118: return last_sent_len;			
   1EB4 78 58         [12]  850 	mov	r0,#_last_sent_len
   1EB6 E2            [24]  851 	movx	a,@r0
   1EB7 F5 82         [12]  852 	mov	dpl,a
   1EB9 22            [24]  853 	ret
   1EBA                     854 00102$:
                            855 ;	radio/packet.c:120: c = serial_peek2();
   1EBA 12 42 FE      [24]  856 	lcall	_serial_peek2
   1EBD 85 82 2D      [24]  857 	mov	_mavlink_frame_c_2_139,dpl
                            858 ;	radio/packet.c:121: if (c >= 255 - 8 || 
   1EC0 74 09         [12]  859 	mov	a,#0x100 - 0xF7
   1EC2 25 2D         [12]  860 	add	a,_mavlink_frame_c_2_139
   1EC4 50 03         [24]  861 	jnc	00138$
   1EC6 02 1F 92      [24]  862 	ljmp	00111$
   1EC9                     863 00138$:
                            864 ;	radio/packet.c:122: c+8 > max_xmit - last_sent_len) {
   1EC9 AA 2D         [24]  865 	mov	r2,_mavlink_frame_c_2_139
   1ECB 7B 00         [12]  866 	mov	r3,#0x00
   1ECD 74 08         [12]  867 	mov	a,#0x08
   1ECF 2A            [12]  868 	add	a,r2
   1ED0 FE            [12]  869 	mov	r6,a
   1ED1 E4            [12]  870 	clr	a
   1ED2 3B            [12]  871 	addc	a,r3
   1ED3 FF            [12]  872 	mov	r7,a
   1ED4 85 2E 2F      [24]  873 	mov	_mavlink_frame_sloc1_1_0,_mavlink_frame_sloc0_1_0
   1ED7 75 30 00      [24]  874 	mov	(_mavlink_frame_sloc1_1_0 + 1),#0x00
   1EDA 78 58         [12]  875 	mov	r0,#_last_sent_len
   1EDC E2            [24]  876 	movx	a,@r0
   1EDD FC            [12]  877 	mov	r4,a
   1EDE 7D 00         [12]  878 	mov	r5,#0x00
   1EE0 E5 2F         [12]  879 	mov	a,_mavlink_frame_sloc1_1_0
   1EE2 C3            [12]  880 	clr	c
   1EE3 9C            [12]  881 	subb	a,r4
   1EE4 FC            [12]  882 	mov	r4,a
   1EE5 E5 30         [12]  883 	mov	a,(_mavlink_frame_sloc1_1_0 + 1)
   1EE7 9D            [12]  884 	subb	a,r5
   1EE8 FD            [12]  885 	mov	r5,a
   1EE9 C3            [12]  886 	clr	c
   1EEA EC            [12]  887 	mov	a,r4
   1EEB 9E            [12]  888 	subb	a,r6
   1EEC ED            [12]  889 	mov	a,r5
   1EED 64 80         [12]  890 	xrl	a,#0x80
   1EEF 8F F0         [24]  891 	mov	b,r7
   1EF1 63 F0 80      [24]  892 	xrl	b,#0x80
   1EF4 95 F0         [12]  893 	subb	a,b
   1EF6 50 03         [24]  894 	jnc	00139$
   1EF8 02 1F 92      [24]  895 	ljmp	00111$
   1EFB                     896 00139$:
                            897 ;	radio/packet.c:126: if (c+8 > slen) {
   1EFB 74 08         [12]  898 	mov	a,#0x08
   1EFD 2A            [12]  899 	add	a,r2
   1EFE FA            [12]  900 	mov	r2,a
   1EFF E4            [12]  901 	clr	a
   1F00 3B            [12]  902 	addc	a,r3
   1F01 FB            [12]  903 	mov	r3,a
   1F02 C3            [12]  904 	clr	c
   1F03 E5 2B         [12]  905 	mov	a,_mavlink_frame_slen_1_138
   1F05 9A            [12]  906 	subb	a,r2
   1F06 E5 2C         [12]  907 	mov	a,(_mavlink_frame_slen_1_138 + 1)
   1F08 9B            [12]  908 	subb	a,r3
   1F09 50 03         [24]  909 	jnc	00140$
   1F0B 02 1F 92      [24]  910 	ljmp	00111$
   1F0E                     911 00140$:
                            912 ;	radio/packet.c:132: c += 8;
   1F0E 74 08         [12]  913 	mov	a,#0x08
   1F10 25 2D         [12]  914 	add	a,_mavlink_frame_c_2_139
   1F12 F5 2D         [12]  915 	mov	_mavlink_frame_c_2_139,a
                            916 ;	radio/packet.c:135: serial_read_buf(&last_sent[last_sent_len], c);
   1F14 78 58         [12]  917 	mov	r0,#_last_sent_len
   1F16 E2            [24]  918 	movx	a,@r0
   1F17 24 22         [12]  919 	add	a,#_last_sent
   1F19 FE            [12]  920 	mov	r6,a
   1F1A E4            [12]  921 	clr	a
   1F1B 34 02         [12]  922 	addc	a,#(_last_sent >> 8)
   1F1D FF            [12]  923 	mov	r7,a
   1F1E 78 B3         [12]  924 	mov	r0,#_serial_read_buf_PARM_2
   1F20 E5 2D         [12]  925 	mov	a,_mavlink_frame_c_2_139
   1F22 F2            [24]  926 	movx	@r0,a
   1F23 8E 82         [24]  927 	mov	dpl,r6
   1F25 8F 83         [24]  928 	mov	dph,r7
   1F27 12 43 2B      [24]  929 	lcall	_serial_read_buf
                            930 ;	radio/packet.c:136: memcpy(&buf[last_sent_len], &last_sent[last_sent_len], c);
   1F2A 78 62         [12]  931 	mov	r0,#_mavlink_frame_PARM_2
   1F2C 79 58         [12]  932 	mov	r1,#_last_sent_len
   1F2E E3            [24]  933 	movx	a,@r1
   1F2F C5 F0         [12]  934 	xch	a,b
   1F31 E2            [24]  935 	movx	a,@r0
   1F32 25 F0         [12]  936 	add	a,b
   1F34 FE            [12]  937 	mov	r6,a
   1F35 08            [12]  938 	inc	r0
   1F36 E2            [24]  939 	movx	a,@r0
   1F37 34 00         [12]  940 	addc	a,#0x00
   1F39 FF            [12]  941 	mov	r7,a
   1F3A 7D 00         [12]  942 	mov	r5,#0x00
   1F3C 78 58         [12]  943 	mov	r0,#_last_sent_len
   1F3E E2            [24]  944 	movx	a,@r0
   1F3F 24 22         [12]  945 	add	a,#_last_sent
   1F41 FB            [12]  946 	mov	r3,a
   1F42 E4            [12]  947 	clr	a
   1F43 34 02         [12]  948 	addc	a,#(_last_sent >> 8)
   1F45 FC            [12]  949 	mov	r4,a
   1F46 90 05 C1      [24]  950 	mov	dptr,#_memcpy_PARM_2
   1F49 EB            [12]  951 	mov	a,r3
   1F4A F0            [24]  952 	movx	@dptr,a
   1F4B EC            [12]  953 	mov	a,r4
   1F4C A3            [24]  954 	inc	dptr
   1F4D F0            [24]  955 	movx	@dptr,a
   1F4E E4            [12]  956 	clr	a
   1F4F A3            [24]  957 	inc	dptr
   1F50 F0            [24]  958 	movx	@dptr,a
   1F51 90 05 C4      [24]  959 	mov	dptr,#_memcpy_PARM_3
   1F54 E5 2D         [12]  960 	mov	a,_mavlink_frame_c_2_139
   1F56 F0            [24]  961 	movx	@dptr,a
   1F57 E4            [12]  962 	clr	a
   1F58 A3            [24]  963 	inc	dptr
   1F59 F0            [24]  964 	movx	@dptr,a
   1F5A 8E 82         [24]  965 	mov	dpl,r6
   1F5C 8F 83         [24]  966 	mov	dph,r7
   1F5E 8D F0         [24]  967 	mov	b,r5
   1F60 12 5D 9C      [24]  968 	lcall	_memcpy
                            969 ;	radio/packet.c:138: check_heartbeat(buf+last_sent_len);
   1F63 78 62         [12]  970 	mov	r0,#_mavlink_frame_PARM_2
   1F65 79 58         [12]  971 	mov	r1,#_last_sent_len
   1F67 E3            [24]  972 	movx	a,@r1
   1F68 C5 F0         [12]  973 	xch	a,b
   1F6A E2            [24]  974 	movx	a,@r0
   1F6B 25 F0         [12]  975 	add	a,b
   1F6D FE            [12]  976 	mov	r6,a
   1F6E 08            [12]  977 	inc	r0
   1F6F E2            [24]  978 	movx	a,@r0
   1F70 34 00         [12]  979 	addc	a,#0x00
   1F72 FF            [12]  980 	mov	r7,a
   1F73 8E 82         [24]  981 	mov	dpl,r6
   1F75 8F 83         [24]  982 	mov	dph,r7
   1F77 12 1D ED      [24]  983 	lcall	_check_heartbeat
                            984 ;	radio/packet.c:140: last_sent_len += c;
   1F7A 78 58         [12]  985 	mov	r0,#_last_sent_len
   1F7C E2            [24]  986 	movx	a,@r0
   1F7D 25 2D         [12]  987 	add	a,_mavlink_frame_c_2_139
   1F7F F2            [24]  988 	movx	@r0,a
                            989 ;	radio/packet.c:141: slen -= c;
   1F80 AC 2D         [24]  990 	mov	r4,_mavlink_frame_c_2_139
   1F82 7F 00         [12]  991 	mov	r7,#0x00
   1F84 E5 2B         [12]  992 	mov	a,_mavlink_frame_slen_1_138
   1F86 C3            [12]  993 	clr	c
   1F87 9C            [12]  994 	subb	a,r4
   1F88 F5 2B         [12]  995 	mov	_mavlink_frame_slen_1_138,a
   1F8A E5 2C         [12]  996 	mov	a,(_mavlink_frame_slen_1_138 + 1)
   1F8C 9F            [12]  997 	subb	a,r7
   1F8D F5 2C         [12]  998 	mov	(_mavlink_frame_slen_1_138 + 1),a
   1F8F 02 1E 92      [24]  999 	ljmp	00109$
   1F92                    1000 00111$:
                           1001 ;	radio/packet.c:144: return last_sent_len;
   1F92 78 58         [12] 1002 	mov	r0,#_last_sent_len
   1F94 E2            [24] 1003 	movx	a,@r0
   1F95 F5 82         [12] 1004 	mov	dpl,a
   1F97 22            [24] 1005 	ret
                           1006 ;------------------------------------------------------------
                           1007 ;Allocation info for local variables in function 'packet_get_next'
                           1008 ;------------------------------------------------------------
                           1009 ;max_xmit                  Allocated with name '_packet_get_next_max_xmit_1_143'
                           1010 ;slen                      Allocated with name '_packet_get_next_slen_1_144'
                           1011 ;c                         Allocated to registers r7 
                           1012 ;sloc0                     Allocated with name '_packet_get_next_sloc0_1_0'
                           1013 ;------------------------------------------------------------
                           1014 ;	radio/packet.c:150: packet_get_next(register uint8_t max_xmit, __xdata uint8_t * __pdata buf)
                           1015 ;	-----------------------------------------
                           1016 ;	 function packet_get_next
                           1017 ;	-----------------------------------------
   1F98                    1018 _packet_get_next:
   1F98 85 82 31      [24] 1019 	mov	_packet_get_next_max_xmit_1_143,dpl
                           1020 ;	radio/packet.c:154: slen = serial_read_available();
   1F9B 12 44 7C      [24] 1021 	lcall	_serial_read_available
   1F9E 85 82 32      [24] 1022 	mov	_packet_get_next_slen_1_144,dpl
   1FA1 85 83 33      [24] 1023 	mov	(_packet_get_next_slen_1_144 + 1),dph
                           1024 ;	radio/packet.c:155: if (force_resend ||
   1FA4 20 0B 16      [24] 1025 	jb	_force_resend,00103$
                           1026 ;	radio/packet.c:156: (feature_opportunistic_resend &&
   1FA7 30 05 65      [24] 1027 	jnb	_feature_opportunistic_resend,00104$
   1FAA 20 08 62      [24] 1028 	jb	_last_sent_is_resend,00104$
                           1029 ;	radio/packet.c:158: last_sent_len != 0 && 
   1FAD 78 58         [12] 1030 	mov	r0,#_last_sent_len
   1FAF E2            [24] 1031 	movx	a,@r0
   1FB0 60 5D         [24] 1032 	jz	00104$
                           1033 ;	radio/packet.c:159: slen < PACKET_RESEND_THRESHOLD)) {
   1FB2 C3            [12] 1034 	clr	c
   1FB3 E5 32         [12] 1035 	mov	a,_packet_get_next_slen_1_144
   1FB5 94 20         [12] 1036 	subb	a,#0x20
   1FB7 E5 33         [12] 1037 	mov	a,(_packet_get_next_slen_1_144 + 1)
   1FB9 94 00         [12] 1038 	subb	a,#0x00
   1FBB 50 52         [24] 1039 	jnc	00104$
   1FBD                    1040 00103$:
                           1041 ;	radio/packet.c:160: if (max_xmit < last_sent_len) {
   1FBD 78 58         [12] 1042 	mov	r0,#_last_sent_len
   1FBF C3            [12] 1043 	clr	c
   1FC0 E2            [24] 1044 	movx	a,@r0
   1FC1 F5 F0         [12] 1045 	mov	b,a
   1FC3 E5 31         [12] 1046 	mov	a,_packet_get_next_max_xmit_1_143
   1FC5 95 F0         [12] 1047 	subb	a,b
   1FC7 50 08         [24] 1048 	jnc	00102$
                           1049 ;	radio/packet.c:161: last_sent_len = 0;
   1FC9 78 58         [12] 1050 	mov	r0,#_last_sent_len
   1FCB E4            [12] 1051 	clr	a
   1FCC F2            [24] 1052 	movx	@r0,a
                           1053 ;	radio/packet.c:162: return 0;
   1FCD 75 82 00      [24] 1054 	mov	dpl,#0x00
   1FD0 22            [24] 1055 	ret
   1FD1                    1056 00102$:
                           1057 ;	radio/packet.c:164: last_sent_is_resend = true;
   1FD1 D2 08         [12] 1058 	setb	_last_sent_is_resend
                           1059 ;	radio/packet.c:165: force_resend = false;
   1FD3 C2 0B         [12] 1060 	clr	_force_resend
                           1061 ;	radio/packet.c:166: memcpy(buf, last_sent, last_sent_len);
   1FD5 78 64         [12] 1062 	mov	r0,#_packet_get_next_PARM_2
   1FD7 E2            [24] 1063 	movx	a,@r0
   1FD8 FA            [12] 1064 	mov	r2,a
   1FD9 08            [12] 1065 	inc	r0
   1FDA E2            [24] 1066 	movx	a,@r0
   1FDB FB            [12] 1067 	mov	r3,a
   1FDC 7C 00         [12] 1068 	mov	r4,#0x00
   1FDE 90 05 C1      [24] 1069 	mov	dptr,#_memcpy_PARM_2
   1FE1 74 22         [12] 1070 	mov	a,#_last_sent
   1FE3 F0            [24] 1071 	movx	@dptr,a
   1FE4 74 02         [12] 1072 	mov	a,#(_last_sent >> 8)
   1FE6 A3            [24] 1073 	inc	dptr
   1FE7 F0            [24] 1074 	movx	@dptr,a
   1FE8 E4            [12] 1075 	clr	a
   1FE9 A3            [24] 1076 	inc	dptr
   1FEA F0            [24] 1077 	movx	@dptr,a
   1FEB 78 58         [12] 1078 	mov	r0,#_last_sent_len
   1FED 90 05 C4      [24] 1079 	mov	dptr,#_memcpy_PARM_3
   1FF0 E2            [24] 1080 	movx	a,@r0
   1FF1 F0            [24] 1081 	movx	@dptr,a
   1FF2 E4            [12] 1082 	clr	a
   1FF3 A3            [24] 1083 	inc	dptr
   1FF4 F0            [24] 1084 	movx	@dptr,a
   1FF5 8A 82         [24] 1085 	mov	dpl,r2
   1FF7 8B 83         [24] 1086 	mov	dph,r3
   1FF9 8C F0         [24] 1087 	mov	b,r4
   1FFB 12 5D 9C      [24] 1088 	lcall	_memcpy
                           1089 ;	radio/packet.c:167: slen = last_sent_len;
   1FFE 78 58         [12] 1090 	mov	r0,#_last_sent_len
   2000 E2            [24] 1091 	movx	a,@r0
   2001 F5 32         [12] 1092 	mov	_packet_get_next_slen_1_144,a
   2003 75 33 00      [24] 1093 	mov	(_packet_get_next_slen_1_144 + 1),#0x00
                           1094 ;	radio/packet.c:168: last_sent_len = 0;
   2006 78 58         [12] 1095 	mov	r0,#_last_sent_len
   2008 E4            [12] 1096 	clr	a
   2009 F2            [24] 1097 	movx	@r0,a
                           1098 ;	radio/packet.c:169: return (slen & 0xFF);
   200A AB 32         [24] 1099 	mov	r3,_packet_get_next_slen_1_144
   200C 8B 82         [24] 1100 	mov	dpl,r3
   200E 22            [24] 1101 	ret
   200F                    1102 00104$:
                           1103 ;	radio/packet.c:172: last_sent_is_resend = false;
   200F C2 08         [12] 1104 	clr	_last_sent_is_resend
                           1105 ;	radio/packet.c:174: if (injected_packet) {
   2011 20 0C 03      [24] 1106 	jb	_injected_packet,00241$
   2014 02 20 C8      [24] 1107 	ljmp	00112$
   2017                    1108 00241$:
                           1109 ;	radio/packet.c:176: slen = last_sent_len;
   2017 78 58         [12] 1110 	mov	r0,#_last_sent_len
   2019 E2            [24] 1111 	movx	a,@r0
   201A FB            [12] 1112 	mov	r3,a
   201B 7C 00         [12] 1113 	mov	r4,#0x00
   201D 8B 32         [24] 1114 	mov	_packet_get_next_slen_1_144,r3
   201F 8C 33         [24] 1115 	mov	(_packet_get_next_slen_1_144 + 1),r4
                           1116 ;	radio/packet.c:177: if (max_xmit < slen) {
   2021 85 31 34      [24] 1117 	mov	_packet_get_next_sloc0_1_0,_packet_get_next_max_xmit_1_143
   2024 75 35 00      [24] 1118 	mov	(_packet_get_next_sloc0_1_0 + 1),#0x00
   2027 C3            [12] 1119 	clr	c
   2028 E5 34         [12] 1120 	mov	a,_packet_get_next_sloc0_1_0
   202A 95 32         [12] 1121 	subb	a,_packet_get_next_slen_1_144
   202C E5 35         [12] 1122 	mov	a,(_packet_get_next_sloc0_1_0 + 1)
   202E 95 33         [12] 1123 	subb	a,(_packet_get_next_slen_1_144 + 1)
   2030 50 65         [24] 1124 	jnc	00110$
                           1125 ;	radio/packet.c:179: memcpy(buf, last_sent, max_xmit);
   2032 78 64         [12] 1126 	mov	r0,#_packet_get_next_PARM_2
   2034 E2            [24] 1127 	movx	a,@r0
   2035 FA            [12] 1128 	mov	r2,a
   2036 08            [12] 1129 	inc	r0
   2037 E2            [24] 1130 	movx	a,@r0
   2038 FE            [12] 1131 	mov	r6,a
   2039 7F 00         [12] 1132 	mov	r7,#0x00
   203B 90 05 C1      [24] 1133 	mov	dptr,#_memcpy_PARM_2
   203E 74 22         [12] 1134 	mov	a,#_last_sent
   2040 F0            [24] 1135 	movx	@dptr,a
   2041 74 02         [12] 1136 	mov	a,#(_last_sent >> 8)
   2043 A3            [24] 1137 	inc	dptr
   2044 F0            [24] 1138 	movx	@dptr,a
   2045 E4            [12] 1139 	clr	a
   2046 A3            [24] 1140 	inc	dptr
   2047 F0            [24] 1141 	movx	@dptr,a
   2048 90 05 C4      [24] 1142 	mov	dptr,#_memcpy_PARM_3
   204B E5 34         [12] 1143 	mov	a,_packet_get_next_sloc0_1_0
   204D F0            [24] 1144 	movx	@dptr,a
   204E E5 35         [12] 1145 	mov	a,(_packet_get_next_sloc0_1_0 + 1)
   2050 A3            [24] 1146 	inc	dptr
   2051 F0            [24] 1147 	movx	@dptr,a
   2052 8A 82         [24] 1148 	mov	dpl,r2
   2054 8E 83         [24] 1149 	mov	dph,r6
   2056 8F F0         [24] 1150 	mov	b,r7
   2058 12 5D 9C      [24] 1151 	lcall	_memcpy
                           1152 ;	radio/packet.c:180: memcpy(last_sent, &last_sent[max_xmit], slen - max_xmit);
   205B E5 31         [12] 1153 	mov	a,_packet_get_next_max_xmit_1_143
   205D 24 22         [12] 1154 	add	a,#_last_sent
   205F FE            [12] 1155 	mov	r6,a
   2060 E4            [12] 1156 	clr	a
   2061 34 02         [12] 1157 	addc	a,#(_last_sent >> 8)
   2063 FF            [12] 1158 	mov	r7,a
   2064 90 05 C1      [24] 1159 	mov	dptr,#_memcpy_PARM_2
   2067 EE            [12] 1160 	mov	a,r6
   2068 F0            [24] 1161 	movx	@dptr,a
   2069 EF            [12] 1162 	mov	a,r7
   206A A3            [24] 1163 	inc	dptr
   206B F0            [24] 1164 	movx	@dptr,a
   206C E4            [12] 1165 	clr	a
   206D A3            [24] 1166 	inc	dptr
   206E F0            [24] 1167 	movx	@dptr,a
   206F AE 31         [24] 1168 	mov	r6,_packet_get_next_max_xmit_1_143
   2071 7F 00         [12] 1169 	mov	r7,#0x00
   2073 90 05 C4      [24] 1170 	mov	dptr,#_memcpy_PARM_3
   2076 E5 32         [12] 1171 	mov	a,_packet_get_next_slen_1_144
   2078 C3            [12] 1172 	clr	c
   2079 9E            [12] 1173 	subb	a,r6
   207A F0            [24] 1174 	movx	@dptr,a
   207B E5 33         [12] 1175 	mov	a,(_packet_get_next_slen_1_144 + 1)
   207D 9F            [12] 1176 	subb	a,r7
   207E A3            [24] 1177 	inc	dptr
   207F F0            [24] 1178 	movx	@dptr,a
   2080 90 02 22      [24] 1179 	mov	dptr,#_last_sent
   2083 75 F0 00      [24] 1180 	mov	b,#0x00
   2086 12 5D 9C      [24] 1181 	lcall	_memcpy
                           1182 ;	radio/packet.c:181: last_sent_len = slen - max_xmit;
   2089 E5 32         [12] 1183 	mov	a,_packet_get_next_slen_1_144
   208B C3            [12] 1184 	clr	c
   208C 95 31         [12] 1185 	subb	a,_packet_get_next_max_xmit_1_143
   208E 78 58         [12] 1186 	mov	r0,#_last_sent_len
   2090 F2            [24] 1187 	movx	@r0,a
                           1188 ;	radio/packet.c:182: last_sent_is_injected = true;
   2091 D2 09         [12] 1189 	setb	_last_sent_is_injected
                           1190 ;	radio/packet.c:183: return max_xmit;
   2093 85 31 82      [24] 1191 	mov	dpl,_packet_get_next_max_xmit_1_143
   2096 22            [24] 1192 	ret
   2097                    1193 00110$:
                           1194 ;	radio/packet.c:186: memcpy(buf, last_sent, last_sent_len);
   2097 78 64         [12] 1195 	mov	r0,#_packet_get_next_PARM_2
   2099 E2            [24] 1196 	movx	a,@r0
   209A FD            [12] 1197 	mov	r5,a
   209B 08            [12] 1198 	inc	r0
   209C E2            [24] 1199 	movx	a,@r0
   209D FE            [12] 1200 	mov	r6,a
   209E 7F 00         [12] 1201 	mov	r7,#0x00
   20A0 90 05 C1      [24] 1202 	mov	dptr,#_memcpy_PARM_2
   20A3 74 22         [12] 1203 	mov	a,#_last_sent
   20A5 F0            [24] 1204 	movx	@dptr,a
   20A6 74 02         [12] 1205 	mov	a,#(_last_sent >> 8)
   20A8 A3            [24] 1206 	inc	dptr
   20A9 F0            [24] 1207 	movx	@dptr,a
   20AA E4            [12] 1208 	clr	a
   20AB A3            [24] 1209 	inc	dptr
   20AC F0            [24] 1210 	movx	@dptr,a
   20AD 90 05 C4      [24] 1211 	mov	dptr,#_memcpy_PARM_3
   20B0 EB            [12] 1212 	mov	a,r3
   20B1 F0            [24] 1213 	movx	@dptr,a
   20B2 EC            [12] 1214 	mov	a,r4
   20B3 A3            [24] 1215 	inc	dptr
   20B4 F0            [24] 1216 	movx	@dptr,a
   20B5 8D 82         [24] 1217 	mov	dpl,r5
   20B7 8E 83         [24] 1218 	mov	dph,r6
   20B9 8F F0         [24] 1219 	mov	b,r7
   20BB 12 5D 9C      [24] 1220 	lcall	_memcpy
                           1221 ;	radio/packet.c:187: injected_packet = false;
   20BE C2 0C         [12] 1222 	clr	_injected_packet
                           1223 ;	radio/packet.c:188: last_sent_is_injected = true;
   20C0 D2 09         [12] 1224 	setb	_last_sent_is_injected
                           1225 ;	radio/packet.c:189: return last_sent_len;
   20C2 78 58         [12] 1226 	mov	r0,#_last_sent_len
   20C4 E2            [24] 1227 	movx	a,@r0
   20C5 F5 82         [12] 1228 	mov	dpl,a
   20C7 22            [24] 1229 	ret
   20C8                    1230 00112$:
                           1231 ;	radio/packet.c:192: last_sent_is_injected = false;
   20C8 C2 09         [12] 1232 	clr	_last_sent_is_injected
                           1233 ;	radio/packet.c:196: if (slen > max_xmit) {
   20CA AE 31         [24] 1234 	mov	r6,_packet_get_next_max_xmit_1_143
   20CC 7F 00         [12] 1235 	mov	r7,#0x00
   20CE C3            [12] 1236 	clr	c
   20CF EE            [12] 1237 	mov	a,r6
   20D0 95 32         [12] 1238 	subb	a,_packet_get_next_slen_1_144
   20D2 EF            [12] 1239 	mov	a,r7
   20D3 95 33         [12] 1240 	subb	a,(_packet_get_next_slen_1_144 + 1)
   20D5 50 04         [24] 1241 	jnc	00114$
                           1242 ;	radio/packet.c:197: slen = max_xmit;
   20D7 8E 32         [24] 1243 	mov	_packet_get_next_slen_1_144,r6
   20D9 8F 33         [24] 1244 	mov	(_packet_get_next_slen_1_144 + 1),r7
   20DB                    1245 00114$:
                           1246 ;	radio/packet.c:200: last_sent_len = 0;
   20DB 78 58         [12] 1247 	mov	r0,#_last_sent_len
   20DD E4            [12] 1248 	clr	a
   20DE F2            [24] 1249 	movx	@r0,a
                           1250 ;	radio/packet.c:202: if (slen == 0) {
   20DF E5 32         [12] 1251 	mov	a,_packet_get_next_slen_1_144
   20E1 45 33         [12] 1252 	orl	a,(_packet_get_next_slen_1_144 + 1)
                           1253 ;	radio/packet.c:204: return 0;
   20E3 70 03         [24] 1254 	jnz	00116$
   20E5 F5 82         [12] 1255 	mov	dpl,a
   20E7 22            [24] 1256 	ret
   20E8                    1257 00116$:
                           1258 ;	radio/packet.c:207: if (!feature_mavlink_framing) {
   20E8 20 06 53      [24] 1259 	jb	_feature_mavlink_framing,00122$
                           1260 ;	radio/packet.c:209: if (slen > 0 && serial_read_buf(buf, slen)) {
   20EB E5 32         [12] 1261 	mov	a,_packet_get_next_slen_1_144
   20ED 45 33         [12] 1262 	orl	a,(_packet_get_next_slen_1_144 + 1)
   20EF 60 43         [24] 1263 	jz	00118$
   20F1 AD 32         [24] 1264 	mov	r5,_packet_get_next_slen_1_144
   20F3 78 B3         [12] 1265 	mov	r0,#_serial_read_buf_PARM_2
   20F5 ED            [12] 1266 	mov	a,r5
   20F6 F2            [24] 1267 	movx	@r0,a
   20F7 78 64         [12] 1268 	mov	r0,#_packet_get_next_PARM_2
   20F9 E2            [24] 1269 	movx	a,@r0
   20FA F5 82         [12] 1270 	mov	dpl,a
   20FC 08            [12] 1271 	inc	r0
   20FD E2            [24] 1272 	movx	a,@r0
   20FE F5 83         [12] 1273 	mov	dph,a
   2100 C0 05         [24] 1274 	push	ar5
   2102 12 43 2B      [24] 1275 	lcall	_serial_read_buf
   2105 D0 05         [24] 1276 	pop	ar5
   2107 50 2B         [24] 1277 	jnc	00118$
                           1278 ;	radio/packet.c:210: memcpy(last_sent, buf, slen);
   2109 78 64         [12] 1279 	mov	r0,#_packet_get_next_PARM_2
   210B 90 05 C1      [24] 1280 	mov	dptr,#_memcpy_PARM_2
   210E E2            [24] 1281 	movx	a,@r0
   210F F0            [24] 1282 	movx	@dptr,a
   2110 08            [12] 1283 	inc	r0
   2111 E2            [24] 1284 	movx	a,@r0
   2112 A3            [24] 1285 	inc	dptr
   2113 F0            [24] 1286 	movx	@dptr,a
   2114 E4            [12] 1287 	clr	a
   2115 A3            [24] 1288 	inc	dptr
   2116 F0            [24] 1289 	movx	@dptr,a
   2117 90 05 C4      [24] 1290 	mov	dptr,#_memcpy_PARM_3
   211A E5 32         [12] 1291 	mov	a,_packet_get_next_slen_1_144
   211C F0            [24] 1292 	movx	@dptr,a
   211D E5 33         [12] 1293 	mov	a,(_packet_get_next_slen_1_144 + 1)
   211F A3            [24] 1294 	inc	dptr
   2120 F0            [24] 1295 	movx	@dptr,a
   2121 90 02 22      [24] 1296 	mov	dptr,#_last_sent
   2124 75 F0 00      [24] 1297 	mov	b,#0x00
   2127 C0 05         [24] 1298 	push	ar5
   2129 12 5D 9C      [24] 1299 	lcall	_memcpy
   212C D0 05         [24] 1300 	pop	ar5
                           1301 ;	radio/packet.c:211: last_sent_len = slen;
   212E 78 58         [12] 1302 	mov	r0,#_last_sent_len
   2130 ED            [12] 1303 	mov	a,r5
   2131 F2            [24] 1304 	movx	@r0,a
   2132 80 04         [24] 1305 	sjmp	00119$
   2134                    1306 00118$:
                           1307 ;	radio/packet.c:213: last_sent_len = 0;
   2134 78 58         [12] 1308 	mov	r0,#_last_sent_len
   2136 E4            [12] 1309 	clr	a
   2137 F2            [24] 1310 	movx	@r0,a
   2138                    1311 00119$:
                           1312 ;	radio/packet.c:215: return last_sent_len;
   2138 78 58         [12] 1313 	mov	r0,#_last_sent_len
   213A E2            [24] 1314 	movx	a,@r0
   213B F5 82         [12] 1315 	mov	dpl,a
   213D 22            [24] 1316 	ret
   213E                    1317 00122$:
                           1318 ;	radio/packet.c:220: if (mav_pkt_len == 1) {
   213E 78 5C         [12] 1319 	mov	r0,#_mav_pkt_len
   2140 E2            [24] 1320 	movx	a,@r0
   2141 B4 01 02      [24] 1321 	cjne	a,#0x01,00248$
   2144 80 03         [24] 1322 	sjmp	00249$
   2146                    1323 00248$:
   2146 02 21 D3      [24] 1324 	ljmp	00128$
   2149                    1325 00249$:
                           1326 ;	radio/packet.c:222: if (slen == 1) {
   2149 74 01         [12] 1327 	mov	a,#0x01
   214B B5 32 06      [24] 1328 	cjne	a,_packet_get_next_slen_1_144,00250$
   214E E4            [12] 1329 	clr	a
   214F B5 33 02      [24] 1330 	cjne	a,(_packet_get_next_slen_1_144 + 1),00250$
   2152 80 02         [24] 1331 	sjmp	00251$
   2154                    1332 00250$:
   2154 80 79         [24] 1333 	sjmp	00126$
   2156                    1334 00251$:
                           1335 ;	radio/packet.c:223: if ((uint16_t)(timer2_tick() - mav_pkt_start_time) > mav_pkt_max_time) {
   2156 12 56 FD      [24] 1336 	lcall	_timer2_tick
   2159 AE 82         [24] 1337 	mov	r6,dpl
   215B AF 83         [24] 1338 	mov	r7,dph
   215D 78 5D         [12] 1339 	mov	r0,#_mav_pkt_start_time
   215F D3            [12] 1340 	setb	c
   2160 E2            [24] 1341 	movx	a,@r0
   2161 9E            [12] 1342 	subb	a,r6
   2162 F4            [12] 1343 	cpl	a
   2163 B3            [12] 1344 	cpl	c
   2164 FE            [12] 1345 	mov	r6,a
   2165 B3            [12] 1346 	cpl	c
   2166 08            [12] 1347 	inc	r0
   2167 E2            [24] 1348 	movx	a,@r0
   2168 9F            [12] 1349 	subb	a,r7
   2169 F4            [12] 1350 	cpl	a
   216A FF            [12] 1351 	mov	r7,a
   216B 78 5F         [12] 1352 	mov	r0,#_mav_pkt_max_time
   216D C3            [12] 1353 	clr	c
   216E E2            [24] 1354 	movx	a,@r0
   216F 9E            [12] 1355 	subb	a,r6
   2170 08            [12] 1356 	inc	r0
   2171 E2            [24] 1357 	movx	a,@r0
   2172 9F            [12] 1358 	subb	a,r7
   2173 50 56         [24] 1359 	jnc	00124$
                           1360 ;	radio/packet.c:225: last_sent[last_sent_len++] = serial_read();
   2175 78 58         [12] 1361 	mov	r0,#_last_sent_len
   2177 E2            [24] 1362 	movx	a,@r0
   2178 FF            [12] 1363 	mov	r7,a
   2179 78 58         [12] 1364 	mov	r0,#_last_sent_len
   217B 04            [12] 1365 	inc	a
   217C F2            [24] 1366 	movx	@r0,a
   217D EF            [12] 1367 	mov	a,r7
   217E 24 22         [12] 1368 	add	a,#_last_sent
   2180 FF            [12] 1369 	mov	r7,a
   2181 E4            [12] 1370 	clr	a
   2182 34 02         [12] 1371 	addc	a,#(_last_sent >> 8)
   2184 FE            [12] 1372 	mov	r6,a
   2185 C0 07         [24] 1373 	push	ar7
   2187 C0 06         [24] 1374 	push	ar6
   2189 12 42 64      [24] 1375 	lcall	_serial_read
   218C AD 82         [24] 1376 	mov	r5,dpl
   218E D0 06         [24] 1377 	pop	ar6
   2190 D0 07         [24] 1378 	pop	ar7
   2192 8F 82         [24] 1379 	mov	dpl,r7
   2194 8E 83         [24] 1380 	mov	dph,r6
   2196 ED            [12] 1381 	mov	a,r5
   2197 F0            [24] 1382 	movx	@dptr,a
                           1383 ;	radio/packet.c:226: memcpy(buf, last_sent, last_sent_len);				
   2198 78 64         [12] 1384 	mov	r0,#_packet_get_next_PARM_2
   219A E2            [24] 1385 	movx	a,@r0
   219B FD            [12] 1386 	mov	r5,a
   219C 08            [12] 1387 	inc	r0
   219D E2            [24] 1388 	movx	a,@r0
   219E FE            [12] 1389 	mov	r6,a
   219F 7F 00         [12] 1390 	mov	r7,#0x00
   21A1 90 05 C1      [24] 1391 	mov	dptr,#_memcpy_PARM_2
   21A4 74 22         [12] 1392 	mov	a,#_last_sent
   21A6 F0            [24] 1393 	movx	@dptr,a
   21A7 74 02         [12] 1394 	mov	a,#(_last_sent >> 8)
   21A9 A3            [24] 1395 	inc	dptr
   21AA F0            [24] 1396 	movx	@dptr,a
   21AB E4            [12] 1397 	clr	a
   21AC A3            [24] 1398 	inc	dptr
   21AD F0            [24] 1399 	movx	@dptr,a
   21AE 78 58         [12] 1400 	mov	r0,#_last_sent_len
   21B0 90 05 C4      [24] 1401 	mov	dptr,#_memcpy_PARM_3
   21B3 E2            [24] 1402 	movx	a,@r0
   21B4 F0            [24] 1403 	movx	@dptr,a
   21B5 E4            [12] 1404 	clr	a
   21B6 A3            [24] 1405 	inc	dptr
   21B7 F0            [24] 1406 	movx	@dptr,a
   21B8 8D 82         [24] 1407 	mov	dpl,r5
   21BA 8E 83         [24] 1408 	mov	dph,r6
   21BC 8F F0         [24] 1409 	mov	b,r7
   21BE 12 5D 9C      [24] 1410 	lcall	_memcpy
                           1411 ;	radio/packet.c:227: mav_pkt_len = 0;
   21C1 78 5C         [12] 1412 	mov	r0,#_mav_pkt_len
   21C3 E4            [12] 1413 	clr	a
   21C4 F2            [24] 1414 	movx	@r0,a
                           1415 ;	radio/packet.c:228: return last_sent_len;
   21C5 78 58         [12] 1416 	mov	r0,#_last_sent_len
   21C7 E2            [24] 1417 	movx	a,@r0
   21C8 F5 82         [12] 1418 	mov	dpl,a
   21CA 22            [24] 1419 	ret
   21CB                    1420 00124$:
                           1421 ;	radio/packet.c:231: return 0;
   21CB 75 82 00      [24] 1422 	mov	dpl,#0x00
   21CE 22            [24] 1423 	ret
   21CF                    1424 00126$:
                           1425 ;	radio/packet.c:235: mav_pkt_len = 0;
   21CF 78 5C         [12] 1426 	mov	r0,#_mav_pkt_len
   21D1 E4            [12] 1427 	clr	a
   21D2 F2            [24] 1428 	movx	@r0,a
   21D3                    1429 00128$:
                           1430 ;	radio/packet.c:239: if (mav_pkt_len != 0) {
   21D3 78 5C         [12] 1431 	mov	r0,#_mav_pkt_len
   21D5 E2            [24] 1432 	movx	a,@r0
   21D6 70 03         [24] 1433 	jnz	00253$
   21D8 02 22 62      [24] 1434 	ljmp	00180$
   21DB                    1435 00253$:
                           1436 ;	radio/packet.c:240: if (slen < mav_pkt_len) {
   21DB 78 5C         [12] 1437 	mov	r0,#_mav_pkt_len
   21DD E2            [24] 1438 	movx	a,@r0
   21DE FE            [12] 1439 	mov	r6,a
   21DF 7F 00         [12] 1440 	mov	r7,#0x00
   21E1 C3            [12] 1441 	clr	c
   21E2 E5 32         [12] 1442 	mov	a,_packet_get_next_slen_1_144
   21E4 9E            [12] 1443 	subb	a,r6
   21E5 E5 33         [12] 1444 	mov	a,(_packet_get_next_slen_1_144 + 1)
   21E7 9F            [12] 1445 	subb	a,r7
   21E8 50 68         [24] 1446 	jnc	00132$
                           1447 ;	radio/packet.c:241: if ((uint16_t)(timer2_tick() - mav_pkt_start_time) > mav_pkt_max_time) {
   21EA 12 56 FD      [24] 1448 	lcall	_timer2_tick
   21ED AE 82         [24] 1449 	mov	r6,dpl
   21EF AF 83         [24] 1450 	mov	r7,dph
   21F1 78 5D         [12] 1451 	mov	r0,#_mav_pkt_start_time
   21F3 D3            [12] 1452 	setb	c
   21F4 E2            [24] 1453 	movx	a,@r0
   21F5 9E            [12] 1454 	subb	a,r6
   21F6 F4            [12] 1455 	cpl	a
   21F7 B3            [12] 1456 	cpl	c
   21F8 FE            [12] 1457 	mov	r6,a
   21F9 B3            [12] 1458 	cpl	c
   21FA 08            [12] 1459 	inc	r0
   21FB E2            [24] 1460 	movx	a,@r0
   21FC 9F            [12] 1461 	subb	a,r7
   21FD F4            [12] 1462 	cpl	a
   21FE FF            [12] 1463 	mov	r7,a
   21FF 78 5F         [12] 1464 	mov	r0,#_mav_pkt_max_time
   2201 C3            [12] 1465 	clr	c
   2202 E2            [24] 1466 	movx	a,@r0
   2203 9E            [12] 1467 	subb	a,r6
   2204 08            [12] 1468 	inc	r0
   2205 E2            [24] 1469 	movx	a,@r0
   2206 9F            [12] 1470 	subb	a,r7
   2207 50 45         [24] 1471 	jnc	00130$
                           1472 ;	radio/packet.c:244: serial_read_buf(last_sent, slen);
   2209 AD 32         [24] 1473 	mov	r5,_packet_get_next_slen_1_144
   220B 78 B3         [12] 1474 	mov	r0,#_serial_read_buf_PARM_2
   220D ED            [12] 1475 	mov	a,r5
   220E F2            [24] 1476 	movx	@r0,a
   220F 90 02 22      [24] 1477 	mov	dptr,#_last_sent
   2212 C0 05         [24] 1478 	push	ar5
   2214 12 43 2B      [24] 1479 	lcall	_serial_read_buf
   2217 D0 05         [24] 1480 	pop	ar5
                           1481 ;	radio/packet.c:245: last_sent_len = slen;
   2219 78 58         [12] 1482 	mov	r0,#_last_sent_len
   221B ED            [12] 1483 	mov	a,r5
   221C F2            [24] 1484 	movx	@r0,a
                           1485 ;	radio/packet.c:246: memcpy(buf, last_sent, last_sent_len);
   221D 78 64         [12] 1486 	mov	r0,#_packet_get_next_PARM_2
   221F E2            [24] 1487 	movx	a,@r0
   2220 FC            [12] 1488 	mov	r4,a
   2221 08            [12] 1489 	inc	r0
   2222 E2            [24] 1490 	movx	a,@r0
   2223 FE            [12] 1491 	mov	r6,a
   2224 7F 00         [12] 1492 	mov	r7,#0x00
   2226 90 05 C1      [24] 1493 	mov	dptr,#_memcpy_PARM_2
   2229 74 22         [12] 1494 	mov	a,#_last_sent
   222B F0            [24] 1495 	movx	@dptr,a
   222C 74 02         [12] 1496 	mov	a,#(_last_sent >> 8)
   222E A3            [24] 1497 	inc	dptr
   222F F0            [24] 1498 	movx	@dptr,a
   2230 E4            [12] 1499 	clr	a
   2231 A3            [24] 1500 	inc	dptr
   2232 F0            [24] 1501 	movx	@dptr,a
   2233 90 05 C4      [24] 1502 	mov	dptr,#_memcpy_PARM_3
   2236 ED            [12] 1503 	mov	a,r5
   2237 F0            [24] 1504 	movx	@dptr,a
   2238 E4            [12] 1505 	clr	a
   2239 A3            [24] 1506 	inc	dptr
   223A F0            [24] 1507 	movx	@dptr,a
   223B 8C 82         [24] 1508 	mov	dpl,r4
   223D 8E 83         [24] 1509 	mov	dph,r6
   223F 8F F0         [24] 1510 	mov	b,r7
   2241 12 5D 9C      [24] 1511 	lcall	_memcpy
                           1512 ;	radio/packet.c:247: mav_pkt_len = 0;
   2244 78 5C         [12] 1513 	mov	r0,#_mav_pkt_len
   2246 E4            [12] 1514 	clr	a
   2247 F2            [24] 1515 	movx	@r0,a
                           1516 ;	radio/packet.c:248: return last_sent_len;
   2248 78 58         [12] 1517 	mov	r0,#_last_sent_len
   224A E2            [24] 1518 	movx	a,@r0
   224B F5 82         [12] 1519 	mov	dpl,a
   224D 22            [24] 1520 	ret
   224E                    1521 00130$:
                           1522 ;	radio/packet.c:252: return 0;
   224E 75 82 00      [24] 1523 	mov	dpl,#0x00
   2251 22            [24] 1524 	ret
   2252                    1525 00132$:
                           1526 ;	radio/packet.c:256: return mavlink_frame(max_xmit, buf);
   2252 78 64         [12] 1527 	mov	r0,#_packet_get_next_PARM_2
   2254 79 62         [12] 1528 	mov	r1,#_mavlink_frame_PARM_2
   2256 E2            [24] 1529 	movx	a,@r0
   2257 F3            [24] 1530 	movx	@r1,a
   2258 08            [12] 1531 	inc	r0
   2259 E2            [24] 1532 	movx	a,@r0
   225A 09            [12] 1533 	inc	r1
   225B F3            [24] 1534 	movx	@r1,a
   225C 85 31 82      [24] 1535 	mov	dpl,_packet_get_next_max_xmit_1_143
   225F 02 1E 33      [24] 1536 	ljmp	_mavlink_frame
                           1537 ;	radio/packet.c:259: while (slen > 0) {
   2262                    1538 00180$:
   2262                    1539 00152$:
   2262 E5 32         [12] 1540 	mov	a,_packet_get_next_slen_1_144
   2264 45 33         [12] 1541 	orl	a,(_packet_get_next_slen_1_144 + 1)
   2266 70 03         [24] 1542 	jnz	00256$
   2268 02 24 08      [24] 1543 	ljmp	00154$
   226B                    1544 00256$:
                           1545 ;	radio/packet.c:260: register uint8_t c = serial_peek();
   226B 12 42 E2      [24] 1546 	lcall	_serial_peek
   226E AF 82         [24] 1547 	mov	r7,dpl
                           1548 ;	radio/packet.c:261: if (c == MAVLINK09_STX || c == MAVLINK10_STX) {
   2270 BF 55 02      [24] 1549 	cjne	r7,#0x55,00257$
   2273 80 08         [24] 1550 	sjmp	00148$
   2275                    1551 00257$:
   2275 BF FE 02      [24] 1552 	cjne	r7,#0xFE,00258$
   2278 80 03         [24] 1553 	sjmp	00259$
   227A                    1554 00258$:
   227A 02 23 D9      [24] 1555 	ljmp	00149$
   227D                    1556 00259$:
   227D                    1557 00148$:
                           1558 ;	radio/packet.c:262: if (slen == 1) {
   227D 74 01         [12] 1559 	mov	a,#0x01
   227F B5 32 06      [24] 1560 	cjne	a,_packet_get_next_slen_1_144,00260$
   2282 E4            [12] 1561 	clr	a
   2283 B5 33 02      [24] 1562 	cjne	a,(_packet_get_next_slen_1_144 + 1),00260$
   2286 80 02         [24] 1563 	sjmp	00261$
   2288                    1564 00260$:
   2288 80 2E         [24] 1565 	sjmp	00138$
   228A                    1566 00261$:
                           1567 ;	radio/packet.c:264: if (last_sent_len == 0) {
   228A 78 58         [12] 1568 	mov	r0,#_last_sent_len
   228C E2            [24] 1569 	movx	a,@r0
   228D 60 03         [24] 1570 	jz	00262$
   228F 02 24 08      [24] 1571 	ljmp	00154$
   2292                    1572 00262$:
                           1573 ;	radio/packet.c:267: mav_pkt_len = 1;
   2292 78 5C         [12] 1574 	mov	r0,#_mav_pkt_len
   2294 74 01         [12] 1575 	mov	a,#0x01
   2296 F2            [24] 1576 	movx	@r0,a
                           1577 ;	radio/packet.c:268: mav_pkt_start_time = timer2_tick();
   2297 12 56 FD      [24] 1578 	lcall	_timer2_tick
   229A E5 82         [12] 1579 	mov	a,dpl
   229C 85 83 F0      [24] 1580 	mov	b,dph
   229F 78 5D         [12] 1581 	mov	r0,#_mav_pkt_start_time
   22A1 F2            [24] 1582 	movx	@r0,a
   22A2 08            [12] 1583 	inc	r0
   22A3 E5 F0         [12] 1584 	mov	a,b
   22A5 F2            [24] 1585 	movx	@r0,a
                           1586 ;	radio/packet.c:269: mav_pkt_max_time = serial_rate;
   22A6 78 5A         [12] 1587 	mov	r0,#_serial_rate
   22A8 E2            [24] 1588 	movx	a,@r0
   22A9 FE            [12] 1589 	mov	r6,a
   22AA 08            [12] 1590 	inc	r0
   22AB E2            [24] 1591 	movx	a,@r0
   22AC FF            [12] 1592 	mov	r7,a
   22AD 78 5F         [12] 1593 	mov	r0,#_mav_pkt_max_time
   22AF EE            [12] 1594 	mov	a,r6
   22B0 F2            [24] 1595 	movx	@r0,a
   22B1 08            [12] 1596 	inc	r0
   22B2 EF            [12] 1597 	mov	a,r7
   22B3 F2            [24] 1598 	movx	@r0,a
                           1599 ;	radio/packet.c:270: return 0;
   22B4 75 82 00      [24] 1600 	mov	dpl,#0x00
   22B7 22            [24] 1601 	ret
                           1602 ;	radio/packet.c:272: break;
   22B8                    1603 00138$:
                           1604 ;	radio/packet.c:274: mav_pkt_len = serial_peek2();
   22B8 12 42 FE      [24] 1605 	lcall	_serial_peek2
   22BB AF 82         [24] 1606 	mov	r7,dpl
   22BD 78 5C         [12] 1607 	mov	r0,#_mav_pkt_len
   22BF EF            [12] 1608 	mov	a,r7
   22C0 F2            [24] 1609 	movx	@r0,a
                           1610 ;	radio/packet.c:275: if (mav_pkt_len >= 255-8 ||
   22C1 BF F7 00      [24] 1611 	cjne	r7,#0xF7,00263$
   22C4                    1612 00263$:
   22C4 50 20         [24] 1613 	jnc	00139$
                           1614 ;	radio/packet.c:276: mav_pkt_len+8 > mav_max_xmit) {
   22C6 8F 05         [24] 1615 	mov	ar5,r7
   22C8 7E 00         [12] 1616 	mov	r6,#0x00
   22CA 74 08         [12] 1617 	mov	a,#0x08
   22CC 2D            [12] 1618 	add	a,r5
   22CD FD            [12] 1619 	mov	r5,a
   22CE E4            [12] 1620 	clr	a
   22CF 3E            [12] 1621 	addc	a,r6
   22D0 FE            [12] 1622 	mov	r6,a
   22D1 78 61         [12] 1623 	mov	r0,#_mav_max_xmit
   22D3 E2            [24] 1624 	movx	a,@r0
   22D4 FB            [12] 1625 	mov	r3,a
   22D5 7C 00         [12] 1626 	mov	r4,#0x00
   22D7 C3            [12] 1627 	clr	c
   22D8 EB            [12] 1628 	mov	a,r3
   22D9 9D            [12] 1629 	subb	a,r5
   22DA EC            [12] 1630 	mov	a,r4
   22DB 64 80         [12] 1631 	xrl	a,#0x80
   22DD 8E F0         [24] 1632 	mov	b,r6
   22DF 63 F0 80      [24] 1633 	xrl	b,#0x80
   22E2 95 F0         [12] 1634 	subb	a,b
   22E4 50 33         [24] 1635 	jnc	00140$
   22E6                    1636 00139$:
                           1637 ;	radio/packet.c:278: mav_pkt_len = 0;
   22E6 78 5C         [12] 1638 	mov	r0,#_mav_pkt_len
   22E8 E4            [12] 1639 	clr	a
   22E9 F2            [24] 1640 	movx	@r0,a
                           1641 ;	radio/packet.c:279: last_sent[last_sent_len++] = serial_read();
   22EA 78 58         [12] 1642 	mov	r0,#_last_sent_len
   22EC E2            [24] 1643 	movx	a,@r0
   22ED FE            [12] 1644 	mov	r6,a
   22EE 78 58         [12] 1645 	mov	r0,#_last_sent_len
   22F0 04            [12] 1646 	inc	a
   22F1 F2            [24] 1647 	movx	@r0,a
   22F2 EE            [12] 1648 	mov	a,r6
   22F3 24 22         [12] 1649 	add	a,#_last_sent
   22F5 FE            [12] 1650 	mov	r6,a
   22F6 E4            [12] 1651 	clr	a
   22F7 34 02         [12] 1652 	addc	a,#(_last_sent >> 8)
   22F9 FD            [12] 1653 	mov	r5,a
   22FA C0 06         [24] 1654 	push	ar6
   22FC C0 05         [24] 1655 	push	ar5
   22FE 12 42 64      [24] 1656 	lcall	_serial_read
   2301 AC 82         [24] 1657 	mov	r4,dpl
   2303 D0 05         [24] 1658 	pop	ar5
   2305 D0 06         [24] 1659 	pop	ar6
   2307 8E 82         [24] 1660 	mov	dpl,r6
   2309 8D 83         [24] 1661 	mov	dph,r5
   230B EC            [12] 1662 	mov	a,r4
   230C F0            [24] 1663 	movx	@dptr,a
                           1664 ;	radio/packet.c:280: slen--;				
   230D 15 32         [12] 1665 	dec	_packet_get_next_slen_1_144
   230F 74 FF         [12] 1666 	mov	a,#0xFF
   2311 B5 32 02      [24] 1667 	cjne	a,_packet_get_next_slen_1_144,00266$
   2314 15 33         [12] 1668 	dec	(_packet_get_next_slen_1_144 + 1)
   2316                    1669 00266$:
                           1670 ;	radio/packet.c:281: continue;
   2316 02 22 62      [24] 1671 	ljmp	00152$
   2319                    1672 00140$:
                           1673 ;	radio/packet.c:286: mav_pkt_len += 8;
   2319 74 08         [12] 1674 	mov	a,#0x08
   231B 2F            [12] 1675 	add	a,r7
   231C FF            [12] 1676 	mov	r7,a
   231D 78 5C         [12] 1677 	mov	r0,#_mav_pkt_len
   231F F2            [24] 1678 	movx	@r0,a
                           1679 ;	radio/packet.c:288: if (last_sent_len != 0) {
   2320 78 58         [12] 1680 	mov	r0,#_last_sent_len
   2322 E2            [24] 1681 	movx	a,@r0
   2323 60 62         [24] 1682 	jz	00146$
                           1683 ;	radio/packet.c:292: memcpy(buf, last_sent, last_sent_len);
   2325 78 64         [12] 1684 	mov	r0,#_packet_get_next_PARM_2
   2327 E2            [24] 1685 	movx	a,@r0
   2328 FC            [12] 1686 	mov	r4,a
   2329 08            [12] 1687 	inc	r0
   232A E2            [24] 1688 	movx	a,@r0
   232B FD            [12] 1689 	mov	r5,a
   232C 7E 00         [12] 1690 	mov	r6,#0x00
   232E 90 05 C1      [24] 1691 	mov	dptr,#_memcpy_PARM_2
   2331 74 22         [12] 1692 	mov	a,#_last_sent
   2333 F0            [24] 1693 	movx	@dptr,a
   2334 74 02         [12] 1694 	mov	a,#(_last_sent >> 8)
   2336 A3            [24] 1695 	inc	dptr
   2337 F0            [24] 1696 	movx	@dptr,a
   2338 E4            [12] 1697 	clr	a
   2339 A3            [24] 1698 	inc	dptr
   233A F0            [24] 1699 	movx	@dptr,a
   233B 78 58         [12] 1700 	mov	r0,#_last_sent_len
   233D 90 05 C4      [24] 1701 	mov	dptr,#_memcpy_PARM_3
   2340 E2            [24] 1702 	movx	a,@r0
   2341 F0            [24] 1703 	movx	@dptr,a
   2342 E4            [12] 1704 	clr	a
   2343 A3            [24] 1705 	inc	dptr
   2344 F0            [24] 1706 	movx	@dptr,a
   2345 8C 82         [24] 1707 	mov	dpl,r4
   2347 8D 83         [24] 1708 	mov	dph,r5
   2349 8E F0         [24] 1709 	mov	b,r6
   234B 12 5D 9C      [24] 1710 	lcall	_memcpy
                           1711 ;	radio/packet.c:293: mav_pkt_start_time = timer2_tick();
   234E 12 56 FD      [24] 1712 	lcall	_timer2_tick
   2351 E5 82         [12] 1713 	mov	a,dpl
   2353 85 83 F0      [24] 1714 	mov	b,dph
   2356 78 5D         [12] 1715 	mov	r0,#_mav_pkt_start_time
   2358 F2            [24] 1716 	movx	@r0,a
   2359 08            [12] 1717 	inc	r0
   235A E5 F0         [12] 1718 	mov	a,b
   235C F2            [24] 1719 	movx	@r0,a
                           1720 ;	radio/packet.c:294: mav_pkt_max_time = mav_pkt_len * serial_rate;
   235D 78 5C         [12] 1721 	mov	r0,#_mav_pkt_len
   235F E2            [24] 1722 	movx	a,@r0
   2360 FD            [12] 1723 	mov	r5,a
   2361 7E 00         [12] 1724 	mov	r6,#0x00
   2363 78 5A         [12] 1725 	mov	r0,#_serial_rate
   2365 90 05 CB      [24] 1726 	mov	dptr,#__mulint_PARM_2
   2368 E2            [24] 1727 	movx	a,@r0
   2369 F0            [24] 1728 	movx	@dptr,a
   236A 08            [12] 1729 	inc	r0
   236B E2            [24] 1730 	movx	a,@r0
   236C A3            [24] 1731 	inc	dptr
   236D F0            [24] 1732 	movx	@dptr,a
   236E 8D 82         [24] 1733 	mov	dpl,r5
   2370 8E 83         [24] 1734 	mov	dph,r6
   2372 12 5E 74      [24] 1735 	lcall	__mulint
   2375 E5 82         [12] 1736 	mov	a,dpl
   2377 85 83 F0      [24] 1737 	mov	b,dph
   237A 78 5F         [12] 1738 	mov	r0,#_mav_pkt_max_time
   237C F2            [24] 1739 	movx	@r0,a
   237D 08            [12] 1740 	inc	r0
   237E E5 F0         [12] 1741 	mov	a,b
   2380 F2            [24] 1742 	movx	@r0,a
                           1743 ;	radio/packet.c:295: return last_sent_len;
   2381 78 58         [12] 1744 	mov	r0,#_last_sent_len
   2383 E2            [24] 1745 	movx	a,@r0
   2384 F5 82         [12] 1746 	mov	dpl,a
   2386 22            [24] 1747 	ret
   2387                    1748 00146$:
                           1749 ;	radio/packet.c:296: } else if (mav_pkt_len > slen) {
   2387 7E 00         [12] 1750 	mov	r6,#0x00
   2389 C3            [12] 1751 	clr	c
   238A E5 32         [12] 1752 	mov	a,_packet_get_next_slen_1_144
   238C 9F            [12] 1753 	subb	a,r7
   238D E5 33         [12] 1754 	mov	a,(_packet_get_next_slen_1_144 + 1)
   238F 9E            [12] 1755 	subb	a,r6
   2390 50 37         [24] 1756 	jnc	00143$
                           1757 ;	radio/packet.c:299: mav_pkt_start_time = timer2_tick();
   2392 12 56 FD      [24] 1758 	lcall	_timer2_tick
   2395 E5 82         [12] 1759 	mov	a,dpl
   2397 85 83 F0      [24] 1760 	mov	b,dph
   239A 78 5D         [12] 1761 	mov	r0,#_mav_pkt_start_time
   239C F2            [24] 1762 	movx	@r0,a
   239D 08            [12] 1763 	inc	r0
   239E E5 F0         [12] 1764 	mov	a,b
   23A0 F2            [24] 1765 	movx	@r0,a
                           1766 ;	radio/packet.c:300: mav_pkt_max_time = mav_pkt_len * serial_rate;
   23A1 78 5C         [12] 1767 	mov	r0,#_mav_pkt_len
   23A3 E2            [24] 1768 	movx	a,@r0
   23A4 FE            [12] 1769 	mov	r6,a
   23A5 7F 00         [12] 1770 	mov	r7,#0x00
   23A7 78 5A         [12] 1771 	mov	r0,#_serial_rate
   23A9 90 05 CB      [24] 1772 	mov	dptr,#__mulint_PARM_2
   23AC E2            [24] 1773 	movx	a,@r0
   23AD F0            [24] 1774 	movx	@dptr,a
   23AE 08            [12] 1775 	inc	r0
   23AF E2            [24] 1776 	movx	a,@r0
   23B0 A3            [24] 1777 	inc	dptr
   23B1 F0            [24] 1778 	movx	@dptr,a
   23B2 8E 82         [24] 1779 	mov	dpl,r6
   23B4 8F 83         [24] 1780 	mov	dph,r7
   23B6 12 5E 74      [24] 1781 	lcall	__mulint
   23B9 E5 82         [12] 1782 	mov	a,dpl
   23BB 85 83 F0      [24] 1783 	mov	b,dph
   23BE 78 5F         [12] 1784 	mov	r0,#_mav_pkt_max_time
   23C0 F2            [24] 1785 	movx	@r0,a
   23C1 08            [12] 1786 	inc	r0
   23C2 E5 F0         [12] 1787 	mov	a,b
   23C4 F2            [24] 1788 	movx	@r0,a
                           1789 ;	radio/packet.c:301: return 0;					
   23C5 75 82 00      [24] 1790 	mov	dpl,#0x00
   23C8 22            [24] 1791 	ret
   23C9                    1792 00143$:
                           1793 ;	radio/packet.c:305: return mavlink_frame(max_xmit, buf);
   23C9 78 64         [12] 1794 	mov	r0,#_packet_get_next_PARM_2
   23CB 79 62         [12] 1795 	mov	r1,#_mavlink_frame_PARM_2
   23CD E2            [24] 1796 	movx	a,@r0
   23CE F3            [24] 1797 	movx	@r1,a
   23CF 08            [12] 1798 	inc	r0
   23D0 E2            [24] 1799 	movx	a,@r0
   23D1 09            [12] 1800 	inc	r1
   23D2 F3            [24] 1801 	movx	@r1,a
   23D3 85 31 82      [24] 1802 	mov	dpl,_packet_get_next_max_xmit_1_143
   23D6 02 1E 33      [24] 1803 	ljmp	_mavlink_frame
   23D9                    1804 00149$:
                           1805 ;	radio/packet.c:308: last_sent[last_sent_len++] = serial_read();
   23D9 78 58         [12] 1806 	mov	r0,#_last_sent_len
   23DB E2            [24] 1807 	movx	a,@r0
   23DC FF            [12] 1808 	mov	r7,a
   23DD 78 58         [12] 1809 	mov	r0,#_last_sent_len
   23DF 04            [12] 1810 	inc	a
   23E0 F2            [24] 1811 	movx	@r0,a
   23E1 EF            [12] 1812 	mov	a,r7
   23E2 24 22         [12] 1813 	add	a,#_last_sent
   23E4 FF            [12] 1814 	mov	r7,a
   23E5 E4            [12] 1815 	clr	a
   23E6 34 02         [12] 1816 	addc	a,#(_last_sent >> 8)
   23E8 FE            [12] 1817 	mov	r6,a
   23E9 C0 07         [24] 1818 	push	ar7
   23EB C0 06         [24] 1819 	push	ar6
   23ED 12 42 64      [24] 1820 	lcall	_serial_read
   23F0 AD 82         [24] 1821 	mov	r5,dpl
   23F2 D0 06         [24] 1822 	pop	ar6
   23F4 D0 07         [24] 1823 	pop	ar7
   23F6 8F 82         [24] 1824 	mov	dpl,r7
   23F8 8E 83         [24] 1825 	mov	dph,r6
   23FA ED            [12] 1826 	mov	a,r5
   23FB F0            [24] 1827 	movx	@dptr,a
                           1828 ;	radio/packet.c:309: slen--;
   23FC 15 32         [12] 1829 	dec	_packet_get_next_slen_1_144
   23FE 74 FF         [12] 1830 	mov	a,#0xFF
   2400 B5 32 02      [24] 1831 	cjne	a,_packet_get_next_slen_1_144,00269$
   2403 15 33         [12] 1832 	dec	(_packet_get_next_slen_1_144 + 1)
   2405                    1833 00269$:
   2405 02 22 62      [24] 1834 	ljmp	00152$
   2408                    1835 00154$:
                           1836 ;	radio/packet.c:313: memcpy(buf, last_sent, last_sent_len);
   2408 78 64         [12] 1837 	mov	r0,#_packet_get_next_PARM_2
   240A E2            [24] 1838 	movx	a,@r0
   240B FD            [12] 1839 	mov	r5,a
   240C 08            [12] 1840 	inc	r0
   240D E2            [24] 1841 	movx	a,@r0
   240E FE            [12] 1842 	mov	r6,a
   240F 7F 00         [12] 1843 	mov	r7,#0x00
   2411 90 05 C1      [24] 1844 	mov	dptr,#_memcpy_PARM_2
   2414 74 22         [12] 1845 	mov	a,#_last_sent
   2416 F0            [24] 1846 	movx	@dptr,a
   2417 74 02         [12] 1847 	mov	a,#(_last_sent >> 8)
   2419 A3            [24] 1848 	inc	dptr
   241A F0            [24] 1849 	movx	@dptr,a
   241B E4            [12] 1850 	clr	a
   241C A3            [24] 1851 	inc	dptr
   241D F0            [24] 1852 	movx	@dptr,a
   241E 78 58         [12] 1853 	mov	r0,#_last_sent_len
   2420 90 05 C4      [24] 1854 	mov	dptr,#_memcpy_PARM_3
   2423 E2            [24] 1855 	movx	a,@r0
   2424 F0            [24] 1856 	movx	@dptr,a
   2425 E4            [12] 1857 	clr	a
   2426 A3            [24] 1858 	inc	dptr
   2427 F0            [24] 1859 	movx	@dptr,a
   2428 8D 82         [24] 1860 	mov	dpl,r5
   242A 8E 83         [24] 1861 	mov	dph,r6
   242C 8F F0         [24] 1862 	mov	b,r7
   242E 12 5D 9C      [24] 1863 	lcall	_memcpy
                           1864 ;	radio/packet.c:314: return last_sent_len;
   2431 78 58         [12] 1865 	mov	r0,#_last_sent_len
   2433 E2            [24] 1866 	movx	a,@r0
   2434 F5 82         [12] 1867 	mov	dpl,a
   2436 22            [24] 1868 	ret
                           1869 ;------------------------------------------------------------
                           1870 ;Allocation info for local variables in function 'packet_is_resend'
                           1871 ;------------------------------------------------------------
                           1872 ;	radio/packet.c:320: packet_is_resend(void)
                           1873 ;	-----------------------------------------
                           1874 ;	 function packet_is_resend
                           1875 ;	-----------------------------------------
   2437                    1876 _packet_is_resend:
                           1877 ;	radio/packet.c:322: return last_sent_is_resend;
   2437 A2 08         [12] 1878 	mov	c,_last_sent_is_resend
   2439 22            [24] 1879 	ret
                           1880 ;------------------------------------------------------------
                           1881 ;Allocation info for local variables in function 'packet_is_injected'
                           1882 ;------------------------------------------------------------
                           1883 ;	radio/packet.c:328: packet_is_injected(void)
                           1884 ;	-----------------------------------------
                           1885 ;	 function packet_is_injected
                           1886 ;	-----------------------------------------
   243A                    1887 _packet_is_injected:
                           1888 ;	radio/packet.c:330: return last_sent_is_injected;
   243A A2 09         [12] 1889 	mov	c,_last_sent_is_injected
   243C 22            [24] 1890 	ret
                           1891 ;------------------------------------------------------------
                           1892 ;Allocation info for local variables in function 'packet_force_resend'
                           1893 ;------------------------------------------------------------
                           1894 ;	radio/packet.c:335: packet_force_resend(void)
                           1895 ;	-----------------------------------------
                           1896 ;	 function packet_force_resend
                           1897 ;	-----------------------------------------
   243D                    1898 _packet_force_resend:
                           1899 ;	radio/packet.c:337: force_resend = true;
   243D D2 0B         [12] 1900 	setb	_force_resend
   243F 22            [24] 1901 	ret
                           1902 ;------------------------------------------------------------
                           1903 ;Allocation info for local variables in function 'packet_set_max_xmit'
                           1904 ;------------------------------------------------------------
                           1905 ;max                       Allocated with name '_packet_set_max_xmit_max_1_175'
                           1906 ;------------------------------------------------------------
                           1907 ;	radio/packet.c:342: packet_set_max_xmit(uint8_t max)
                           1908 ;	-----------------------------------------
                           1909 ;	 function packet_set_max_xmit
                           1910 ;	-----------------------------------------
   2440                    1911 _packet_set_max_xmit:
   2440 E5 82         [12] 1912 	mov	a,dpl
                           1913 ;	radio/packet.c:344: mav_max_xmit = max;
   2442 90 03 1F      [24] 1914 	mov	dptr,#_packet_set_max_xmit_max_1_175
   2445 F0            [24] 1915 	movx	@dptr,a
   2446 78 61         [12] 1916 	mov	r0,#_mav_max_xmit
   2448 F2            [24] 1917 	movx	@r0,a
   2449 22            [24] 1918 	ret
                           1919 ;------------------------------------------------------------
                           1920 ;Allocation info for local variables in function 'packet_set_serial_speed'
                           1921 ;------------------------------------------------------------
                           1922 ;speed                     Allocated with name '_packet_set_serial_speed_speed_1_177'
                           1923 ;------------------------------------------------------------
                           1924 ;	radio/packet.c:349: packet_set_serial_speed(uint16_t speed)
                           1925 ;	-----------------------------------------
                           1926 ;	 function packet_set_serial_speed
                           1927 ;	-----------------------------------------
   244A                    1928 _packet_set_serial_speed:
   244A AF 83         [24] 1929 	mov	r7,dph
   244C E5 82         [12] 1930 	mov	a,dpl
   244E 90 03 20      [24] 1931 	mov	dptr,#_packet_set_serial_speed_speed_1_177
   2451 F0            [24] 1932 	movx	@dptr,a
   2452 EF            [12] 1933 	mov	a,r7
   2453 A3            [24] 1934 	inc	dptr
   2454 F0            [24] 1935 	movx	@dptr,a
                           1936 ;	radio/packet.c:352: serial_rate = (65536UL / speed) + 1;
   2455 90 03 20      [24] 1937 	mov	dptr,#_packet_set_serial_speed_speed_1_177
   2458 E0            [24] 1938 	movx	a,@dptr
   2459 FE            [12] 1939 	mov	r6,a
   245A A3            [24] 1940 	inc	dptr
   245B E0            [24] 1941 	movx	a,@dptr
   245C FF            [12] 1942 	mov	r7,a
   245D 90 05 B2      [24] 1943 	mov	dptr,#__divulong_PARM_2
   2460 EE            [12] 1944 	mov	a,r6
   2461 F0            [24] 1945 	movx	@dptr,a
   2462 EF            [12] 1946 	mov	a,r7
   2463 A3            [24] 1947 	inc	dptr
   2464 F0            [24] 1948 	movx	@dptr,a
   2465 E4            [12] 1949 	clr	a
   2466 A3            [24] 1950 	inc	dptr
   2467 F0            [24] 1951 	movx	@dptr,a
   2468 E4            [12] 1952 	clr	a
   2469 A3            [24] 1953 	inc	dptr
   246A F0            [24] 1954 	movx	@dptr,a
   246B 90 00 00      [24] 1955 	mov	dptr,#0x0000
   246E 75 F0 01      [24] 1956 	mov	b,#0x01
   2471 E4            [12] 1957 	clr	a
   2472 12 5C 33      [24] 1958 	lcall	__divulong
   2475 AC 82         [24] 1959 	mov	r4,dpl
   2477 AD 83         [24] 1960 	mov	r5,dph
   2479 AE F0         [24] 1961 	mov	r6,b
   247B FF            [12] 1962 	mov	r7,a
   247C 0C            [12] 1963 	inc	r4
   247D BC 00 09      [24] 1964 	cjne	r4,#0x00,00103$
   2480 0D            [12] 1965 	inc	r5
   2481 BD 00 05      [24] 1966 	cjne	r5,#0x00,00103$
   2484 0E            [12] 1967 	inc	r6
   2485 BE 00 01      [24] 1968 	cjne	r6,#0x00,00103$
   2488 0F            [12] 1969 	inc	r7
   2489                    1970 00103$:
   2489 78 5A         [12] 1971 	mov	r0,#_serial_rate
   248B EC            [12] 1972 	mov	a,r4
   248C F2            [24] 1973 	movx	@r0,a
   248D 08            [12] 1974 	inc	r0
   248E ED            [12] 1975 	mov	a,r5
   248F F2            [24] 1976 	movx	@r0,a
   2490 22            [24] 1977 	ret
                           1978 ;------------------------------------------------------------
                           1979 ;Allocation info for local variables in function 'packet_is_duplicate'
                           1980 ;------------------------------------------------------------
                           1981 ;len                       Allocated with name '_packet_is_duplicate_len_1_179'
                           1982 ;------------------------------------------------------------
                           1983 ;	radio/packet.c:357: packet_is_duplicate(uint8_t len, __xdata uint8_t * __pdata buf, bool is_resend)
                           1984 ;	-----------------------------------------
                           1985 ;	 function packet_is_duplicate
                           1986 ;	-----------------------------------------
   2491                    1987 _packet_is_duplicate:
   2491 E5 82         [12] 1988 	mov	a,dpl
   2493 90 03 22      [24] 1989 	mov	dptr,#_packet_is_duplicate_len_1_179
   2496 F0            [24] 1990 	movx	@dptr,a
                           1991 ;	radio/packet.c:359: if (!is_resend) {
   2497 20 0F 39      [24] 1992 	jb	_packet_is_duplicate_PARM_3,00102$
                           1993 ;	radio/packet.c:360: memcpy(last_received, buf, len);
   249A 78 66         [12] 1994 	mov	r0,#_packet_is_duplicate_PARM_2
   249C E2            [24] 1995 	movx	a,@r0
   249D FD            [12] 1996 	mov	r5,a
   249E 08            [12] 1997 	inc	r0
   249F E2            [24] 1998 	movx	a,@r0
   24A0 FE            [12] 1999 	mov	r6,a
   24A1 7F 00         [12] 2000 	mov	r7,#0x00
   24A3 90 03 22      [24] 2001 	mov	dptr,#_packet_is_duplicate_len_1_179
   24A6 E0            [24] 2002 	movx	a,@dptr
   24A7 FC            [12] 2003 	mov	r4,a
   24A8 FA            [12] 2004 	mov	r2,a
   24A9 7B 00         [12] 2005 	mov	r3,#0x00
   24AB 90 05 C1      [24] 2006 	mov	dptr,#_memcpy_PARM_2
   24AE ED            [12] 2007 	mov	a,r5
   24AF F0            [24] 2008 	movx	@dptr,a
   24B0 EE            [12] 2009 	mov	a,r6
   24B1 A3            [24] 2010 	inc	dptr
   24B2 F0            [24] 2011 	movx	@dptr,a
   24B3 EF            [12] 2012 	mov	a,r7
   24B4 A3            [24] 2013 	inc	dptr
   24B5 F0            [24] 2014 	movx	@dptr,a
   24B6 90 05 C4      [24] 2015 	mov	dptr,#_memcpy_PARM_3
   24B9 EA            [12] 2016 	mov	a,r2
   24BA F0            [24] 2017 	movx	@dptr,a
   24BB EB            [12] 2018 	mov	a,r3
   24BC A3            [24] 2019 	inc	dptr
   24BD F0            [24] 2020 	movx	@dptr,a
   24BE 90 01 26      [24] 2021 	mov	dptr,#_last_received
   24C1 75 F0 00      [24] 2022 	mov	b,#0x00
   24C4 C0 04         [24] 2023 	push	ar4
   24C6 12 5D 9C      [24] 2024 	lcall	_memcpy
   24C9 D0 04         [24] 2025 	pop	ar4
                           2026 ;	radio/packet.c:361: last_recv_len = len;
   24CB 78 59         [12] 2027 	mov	r0,#_last_recv_len
   24CD EC            [12] 2028 	mov	a,r4
   24CE F2            [24] 2029 	movx	@r0,a
                           2030 ;	radio/packet.c:362: last_recv_is_resend = false;
   24CF C2 0A         [12] 2031 	clr	_last_recv_is_resend
                           2032 ;	radio/packet.c:363: return false;
   24D1 C3            [12] 2033 	clr	c
   24D2 22            [24] 2034 	ret
   24D3                    2035 00102$:
                           2036 ;	radio/packet.c:367: memcmp(last_received, buf, len) == 0) {
   24D3 20 0A 37      [24] 2037 	jb	_last_recv_is_resend,00104$
                           2038 ;	radio/packet.c:366: len == last_recv_len &&
   24D6 90 03 22      [24] 2039 	mov	dptr,#_packet_is_duplicate_len_1_179
   24D9 E0            [24] 2040 	movx	a,@dptr
   24DA FF            [12] 2041 	mov	r7,a
   24DB 78 59         [12] 2042 	mov	r0,#_last_recv_len
   24DD E2            [24] 2043 	movx	a,@r0
   24DE B5 07 2C      [24] 2044 	cjne	a,ar7,00104$
                           2045 ;	radio/packet.c:367: memcmp(last_received, buf, len) == 0) {
   24E1 78 66         [12] 2046 	mov	r0,#_packet_is_duplicate_PARM_2
   24E3 90 05 E0      [24] 2047 	mov	dptr,#_memcmp_PARM_2
   24E6 E2            [24] 2048 	movx	a,@r0
   24E7 F0            [24] 2049 	movx	@dptr,a
   24E8 08            [12] 2050 	inc	r0
   24E9 E2            [24] 2051 	movx	a,@r0
   24EA A3            [24] 2052 	inc	dptr
   24EB F0            [24] 2053 	movx	@dptr,a
   24EC E4            [12] 2054 	clr	a
   24ED A3            [24] 2055 	inc	dptr
   24EE F0            [24] 2056 	movx	@dptr,a
   24EF 90 05 E3      [24] 2057 	mov	dptr,#_memcmp_PARM_3
   24F2 EF            [12] 2058 	mov	a,r7
   24F3 F0            [24] 2059 	movx	@dptr,a
   24F4 E4            [12] 2060 	clr	a
   24F5 A3            [24] 2061 	inc	dptr
   24F6 F0            [24] 2062 	movx	@dptr,a
   24F7 90 01 26      [24] 2063 	mov	dptr,#_last_received
   24FA 75 F0 00      [24] 2064 	mov	b,#0x00
   24FD 12 60 AA      [24] 2065 	lcall	_memcmp
   2500 E5 82         [12] 2066 	mov	a,dpl
   2502 85 83 F0      [24] 2067 	mov	b,dph
   2505 45 F0         [12] 2068 	orl	a,b
   2507 70 04         [24] 2069 	jnz	00104$
                           2070 ;	radio/packet.c:368: last_recv_is_resend = false;
   2509 C2 0A         [12] 2071 	clr	_last_recv_is_resend
                           2072 ;	radio/packet.c:369: return true;
   250B D3            [12] 2073 	setb	c
   250C 22            [24] 2074 	ret
   250D                    2075 00104$:
                           2076 ;	radio/packet.c:377: last_recv_is_resend = true;
   250D D2 0A         [12] 2077 	setb	_last_recv_is_resend
                           2078 ;	radio/packet.c:378: return false;
   250F C3            [12] 2079 	clr	c
   2510 22            [24] 2080 	ret
                           2081 ;------------------------------------------------------------
                           2082 ;Allocation info for local variables in function 'packet_inject'
                           2083 ;------------------------------------------------------------
                           2084 ;	radio/packet.c:383: packet_inject(__xdata uint8_t * __pdata buf, __pdata uint8_t len)
                           2085 ;	-----------------------------------------
                           2086 ;	 function packet_inject
                           2087 ;	-----------------------------------------
   2511                    2088 _packet_inject:
   2511 AE 82         [24] 2089 	mov	r6,dpl
   2513 AF 83         [24] 2090 	mov	r7,dph
                           2091 ;	radio/packet.c:385: if (len > sizeof(last_sent)) {
   2515 78 68         [12] 2092 	mov	r0,#_packet_inject_PARM_2
   2517 C3            [12] 2093 	clr	c
   2518 E2            [24] 2094 	movx	a,@r0
   2519 F5 F0         [12] 2095 	mov	b,a
   251B 74 FC         [12] 2096 	mov	a,#0xFC
   251D 95 F0         [12] 2097 	subb	a,b
   251F 50 05         [24] 2098 	jnc	00102$
                           2099 ;	radio/packet.c:386: len = sizeof(last_sent);
   2521 78 68         [12] 2100 	mov	r0,#_packet_inject_PARM_2
   2523 74 FC         [12] 2101 	mov	a,#0xFC
   2525 F2            [24] 2102 	movx	@r0,a
   2526                    2103 00102$:
                           2104 ;	radio/packet.c:388: memcpy(last_sent, buf, len);
   2526 90 05 C1      [24] 2105 	mov	dptr,#_memcpy_PARM_2
   2529 EE            [12] 2106 	mov	a,r6
   252A F0            [24] 2107 	movx	@dptr,a
   252B EF            [12] 2108 	mov	a,r7
   252C A3            [24] 2109 	inc	dptr
   252D F0            [24] 2110 	movx	@dptr,a
   252E E4            [12] 2111 	clr	a
   252F A3            [24] 2112 	inc	dptr
   2530 F0            [24] 2113 	movx	@dptr,a
   2531 78 68         [12] 2114 	mov	r0,#_packet_inject_PARM_2
   2533 90 05 C4      [24] 2115 	mov	dptr,#_memcpy_PARM_3
   2536 E2            [24] 2116 	movx	a,@r0
   2537 F0            [24] 2117 	movx	@dptr,a
   2538 E4            [12] 2118 	clr	a
   2539 A3            [24] 2119 	inc	dptr
   253A F0            [24] 2120 	movx	@dptr,a
   253B 90 02 22      [24] 2121 	mov	dptr,#_last_sent
   253E 75 F0 00      [24] 2122 	mov	b,#0x00
   2541 12 5D 9C      [24] 2123 	lcall	_memcpy
                           2124 ;	radio/packet.c:389: last_sent_len = len;
   2544 78 68         [12] 2125 	mov	r0,#_packet_inject_PARM_2
   2546 E2            [24] 2126 	movx	a,@r0
   2547 78 58         [12] 2127 	mov	r0,#_last_sent_len
   2549 F2            [24] 2128 	movx	@r0,a
                           2129 ;	radio/packet.c:390: last_sent_is_resend = false;
   254A C2 08         [12] 2130 	clr	_last_sent_is_resend
                           2131 ;	radio/packet.c:391: injected_packet = true;
   254C D2 0C         [12] 2132 	setb	_injected_packet
   254E 22            [24] 2133 	ret
                           2134 	.area CSEG    (CODE)
                           2135 	.area CONST   (CODE)
                           2136 	.area XINIT   (CODE)
                           2137 	.area CABS    (ABS,CODE)
