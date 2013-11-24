                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:06 2013
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
                             23 	.globl _BUTTON_DOWN
                             24 	.globl _BUTTON_UP
                             25 	.globl _BUTTON_ENTER
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
                            274 	.globl _packet_inject_PARM_2
                            275 	.globl _packet_is_duplicate_PARM_2
                            276 	.globl _packet_get_next_PARM_2
                            277 	.globl _packet_is_duplicate_PARM_3
                            278 	.globl _using_mavlink_10
                            279 	.globl _seen_mavlink
                            280 	.globl _packet_get_next
                            281 	.globl _packet_is_resend
                            282 	.globl _packet_is_injected
                            283 	.globl _packet_force_resend
                            284 	.globl _packet_set_max_xmit
                            285 	.globl _packet_set_serial_speed
                            286 	.globl _packet_is_duplicate
                            287 	.globl _packet_inject
                            288 ;--------------------------------------------------------
                            289 ; special function registers
                            290 ;--------------------------------------------------------
                            291 	.area RSEG    (ABS,DATA)
   0000                     292 	.org 0x0000
                     0080   293 _P0	=	0x0080
                     0081   294 _SP	=	0x0081
                     0082   295 _DPL	=	0x0082
                     0083   296 _DPH	=	0x0083
                     0084   297 _SPI1CFG	=	0x0084
                     0085   298 _SPI1CKR	=	0x0085
                     0085   299 _TOFFL	=	0x0085
                     0086   300 _SPI1DAT	=	0x0086
                     0086   301 _TOFFH	=	0x0086
                     0087   302 _PCON	=	0x0087
                     0088   303 _TCON	=	0x0088
                     0089   304 _TMOD	=	0x0089
                     008A   305 _TL0	=	0x008a
                     008B   306 _TL1	=	0x008b
                     008C   307 _TH0	=	0x008c
                     008D   308 _TH1	=	0x008d
                     008E   309 _CKCON	=	0x008e
                     008F   310 _PSCTL	=	0x008f
                     0090   311 _P1	=	0x0090
                     0091   312 _TMR3CN	=	0x0091
                     0091   313 _CRC0DAT	=	0x0091
                     0092   314 _TMR3RLL	=	0x0092
                     0092   315 _CRC0CN	=	0x0092
                     0093   316 _TMR3RLH	=	0x0093
                     0093   317 _CRC0IN	=	0x0093
                     0094   318 _TMR3L	=	0x0094
                     0095   319 _CRC0FLIP	=	0x0095
                     0095   320 _TMR3H	=	0x0095
                     0096   321 _DC0CF	=	0x0096
                     0096   322 _CRC0AUTO	=	0x0096
                     0097   323 _DC0CN	=	0x0097
                     0097   324 _CRC0CNT	=	0x0097
                     0098   325 _SCON0	=	0x0098
                     0099   326 _SBUF0	=	0x0099
                     009A   327 _CPT1CN	=	0x009a
                     009B   328 _CPT0CN	=	0x009b
                     009C   329 _CPT1MD	=	0x009c
                     009D   330 _CPT0MD	=	0x009d
                     009E   331 _CPT1MX	=	0x009e
                     009F   332 _CPT0MX	=	0x009f
                     00A0   333 _P2	=	0x00a0
                     00A1   334 _SPI0CFG	=	0x00a1
                     00A2   335 _SPI0CKR	=	0x00a2
                     00A3   336 _SPI0DAT	=	0x00a3
                     00A4   337 _P0MDOUT	=	0x00a4
                     00A4   338 _P0DRV	=	0x00a4
                     00A5   339 _P1MDOUT	=	0x00a5
                     00A5   340 _P1DRV	=	0x00a5
                     00A6   341 _P2MDOUT	=	0x00a6
                     00A6   342 _P2DRV	=	0x00a6
                     00A7   343 _SFRPAGE	=	0x00a7
                     00A8   344 _IE	=	0x00a8
                     00A9   345 _CLKSEL	=	0x00a9
                     00AA   346 _EMI0CN	=	0x00aa
                     00AB   347 _EMI0CF	=	0x00ab
                     00AC   348 _RTC0ADR	=	0x00ac
                     00AD   349 _RTC0DAT	=	0x00ad
                     00AE   350 _RTC0KEY	=	0x00ae
                     00AF   351 _EMI0TC	=	0x00af
                     00AF   352 _ONESHOT	=	0x00af
                     00B0   353 _SPI1CN	=	0x00b0
                     00B1   354 _OSCXCN	=	0x00b1
                     00B2   355 _OSCICN	=	0x00b2
                     00B3   356 _OSCICL	=	0x00b3
                     00B5   357 _PMU0CF	=	0x00b5
                     00B6   358 _FLSCL	=	0x00b6
                     00B7   359 _FLKEY	=	0x00b7
                     00B8   360 _IP	=	0x00b8
                     00B9   361 _IREF0CN	=	0x00b9
                     00BA   362 _ADC0AC	=	0x00ba
                     00BA   363 _ADC0PWR	=	0x00ba
                     00BB   364 _ADC0MX	=	0x00bb
                     00BC   365 _ADC0CF	=	0x00bc
                     00BD   366 _ADC0TK	=	0x00bd
                     00BD   367 _ADC0L	=	0x00bd
                     00BE   368 _ADC0H	=	0x00be
                     00BF   369 _P1MASK	=	0x00bf
                     00C0   370 _SMB0CN	=	0x00c0
                     00C1   371 _SMB0CF	=	0x00c1
                     00C2   372 _SMB0DAT	=	0x00c2
                     00C3   373 _ADC0GTL	=	0x00c3
                     00C4   374 _ADC0GTH	=	0x00c4
                     00C5   375 _ADC0LTL	=	0x00c5
                     00C6   376 _ADC0LTH	=	0x00c6
                     00C7   377 _P0MASK	=	0x00c7
                     00C8   378 _TMR2CN	=	0x00c8
                     00C9   379 _REG0CN	=	0x00c9
                     00CA   380 _TMR2RLL	=	0x00ca
                     00CB   381 _TMR2RLH	=	0x00cb
                     00CC   382 _TMR2L	=	0x00cc
                     00CD   383 _TMR2H	=	0x00cd
                     00CE   384 _PCA0CPM5	=	0x00ce
                     00CF   385 _P1MAT	=	0x00cf
                     00D0   386 _PSW	=	0x00d0
                     00D1   387 _REF0CN	=	0x00d1
                     00D2   388 _PCA0CPL5	=	0x00d2
                     00D3   389 _PCA0CPH5	=	0x00d3
                     00D4   390 _P0SKIP	=	0x00d4
                     00D5   391 _P1SKIP	=	0x00d5
                     00D6   392 _P2SKIP	=	0x00d6
                     00D7   393 _P0MAT	=	0x00d7
                     00D8   394 _PCA0CN	=	0x00d8
                     00D9   395 _PCA0MD	=	0x00d9
                     00DA   396 _PCA0CPM0	=	0x00da
                     00DB   397 _PCA0CPM1	=	0x00db
                     00DC   398 _PCA0CPM2	=	0x00dc
                     00DD   399 _PCA0CPM3	=	0x00dd
                     00DE   400 _PCA0CPM4	=	0x00de
                     00DF   401 _PCA0PWM	=	0x00df
                     00E0   402 _ACC	=	0x00e0
                     00E1   403 _XBR0	=	0x00e1
                     00E2   404 _XBR1	=	0x00e2
                     00E3   405 _XBR2	=	0x00e3
                     00E4   406 _IT01CF	=	0x00e4
                     00E5   407 _FLWR	=	0x00e5
                     00E6   408 _EIE1	=	0x00e6
                     00E7   409 _EIE2	=	0x00e7
                     00E8   410 _ADC0CN	=	0x00e8
                     00E9   411 _PCA0CPL1	=	0x00e9
                     00EA   412 _PCA0CPH1	=	0x00ea
                     00EB   413 _PCA0CPL2	=	0x00eb
                     00EC   414 _PCA0CPH2	=	0x00ec
                     00ED   415 _PCA0CPL3	=	0x00ed
                     00EE   416 _PCA0CPH3	=	0x00ee
                     00EF   417 _RSTSRC	=	0x00ef
                     00F0   418 _B	=	0x00f0
                     00F1   419 _P0MDIN	=	0x00f1
                     00F2   420 _P1MDIN	=	0x00f2
                     00F3   421 _P2MDIN	=	0x00f3
                     00F4   422 _SMB0ADR	=	0x00f4
                     00F5   423 _SMB0ADM	=	0x00f5
                     00F6   424 _EIP1	=	0x00f6
                     00F7   425 _EIP2	=	0x00f7
                     00F8   426 _SPI0CN	=	0x00f8
                     00F9   427 _PCA0L	=	0x00f9
                     00FA   428 _PCA0H	=	0x00fa
                     00FB   429 _PCA0CPL0	=	0x00fb
                     00FC   430 _PCA0CPH0	=	0x00fc
                     00FD   431 _PCA0CPL4	=	0x00fd
                     00FE   432 _PCA0CPH4	=	0x00fe
                     00FF   433 _VDM0CN	=	0x00ff
                     8382   434 _DP	=	0x8382
                     8685   435 _TOFF	=	0x8685
                     9392   436 _TMR3RL	=	0x9392
                     9594   437 _TMR3	=	0x9594
                     BEBD   438 _ADC0	=	0xbebd
                     C4C3   439 _ADC0GT	=	0xc4c3
                     C6C5   440 _ADC0LT	=	0xc6c5
                     CBCA   441 _TMR2RL	=	0xcbca
                     CDCC   442 _TMR2	=	0xcdcc
                     D3D2   443 _PCA0CP5	=	0xd3d2
                     EAE9   444 _PCA0CP1	=	0xeae9
                     ECEB   445 _PCA0CP2	=	0xeceb
                     EEED   446 _PCA0CP3	=	0xeeed
                     FAF9   447 _PCA0	=	0xfaf9
                     FCFB   448 _PCA0CP0	=	0xfcfb
                     FEFD   449 _PCA0CP4	=	0xfefd
                            450 ;--------------------------------------------------------
                            451 ; special function bits
                            452 ;--------------------------------------------------------
                            453 	.area RSEG    (ABS,DATA)
   0000                     454 	.org 0x0000
                     008F   455 _TF1	=	0x008f
                     008E   456 _TR1	=	0x008e
                     008D   457 _TF0	=	0x008d
                     008C   458 _TR0	=	0x008c
                     008B   459 _IE1	=	0x008b
                     008A   460 _IT1	=	0x008a
                     0089   461 _IE0	=	0x0089
                     0088   462 _IT0	=	0x0088
                     0096   463 _CRC0SEL	=	0x0096
                     0095   464 _CRC0INIT	=	0x0095
                     0094   465 _CRC0VAL	=	0x0094
                     009F   466 _S0MODE	=	0x009f
                     009D   467 _MCE0	=	0x009d
                     009C   468 _REN0	=	0x009c
                     009B   469 _TB80	=	0x009b
                     009A   470 _RB80	=	0x009a
                     0099   471 _TI0	=	0x0099
                     0098   472 _RI0	=	0x0098
                     00AF   473 _EA	=	0x00af
                     00AE   474 _ESPI0	=	0x00ae
                     00AD   475 _ET2	=	0x00ad
                     00AC   476 _ES0	=	0x00ac
                     00AB   477 _ET1	=	0x00ab
                     00AA   478 _EX1	=	0x00aa
                     00A9   479 _ET0	=	0x00a9
                     00A8   480 _EX0	=	0x00a8
                     00B7   481 _SPIF1	=	0x00b7
                     00B6   482 _WCOL1	=	0x00b6
                     00B5   483 _MODF1	=	0x00b5
                     00B4   484 _RXOVRN1	=	0x00b4
                     00B3   485 _NSS1MD1	=	0x00b3
                     00B2   486 _NSS1MD0	=	0x00b2
                     00B1   487 _TXBMT1	=	0x00b1
                     00B0   488 _SPI1EN	=	0x00b0
                     00BE   489 _PSPI0	=	0x00be
                     00BD   490 _PT2	=	0x00bd
                     00BC   491 _PS0	=	0x00bc
                     00BB   492 _PT1	=	0x00bb
                     00BA   493 _PX1	=	0x00ba
                     00B9   494 _PT0	=	0x00b9
                     00B8   495 _PX0	=	0x00b8
                     00C7   496 _MASTER	=	0x00c7
                     00C6   497 _TXMODE	=	0x00c6
                     00C5   498 _STA	=	0x00c5
                     00C4   499 _STO	=	0x00c4
                     00C3   500 _ACKRQ	=	0x00c3
                     00C2   501 _ARBLOST	=	0x00c2
                     00C1   502 _ACK	=	0x00c1
                     00C0   503 _SI	=	0x00c0
                     00CF   504 _TF2H	=	0x00cf
                     00CE   505 _TF2L	=	0x00ce
                     00CD   506 _TF2LEN	=	0x00cd
                     00CC   507 _TF2CEN	=	0x00cc
                     00CB   508 _T2SPLIT	=	0x00cb
                     00CA   509 _TR2	=	0x00ca
                     00C9   510 _T2RCLK	=	0x00c9
                     00C8   511 _T2XCLK	=	0x00c8
                     00D7   512 _CY	=	0x00d7
                     00D6   513 _AC	=	0x00d6
                     00D5   514 _F0	=	0x00d5
                     00D4   515 _RS1	=	0x00d4
                     00D3   516 _RS0	=	0x00d3
                     00D2   517 _OV	=	0x00d2
                     00D1   518 _F1	=	0x00d1
                     00D0   519 _P	=	0x00d0
                     00DF   520 _CF	=	0x00df
                     00DE   521 _CR	=	0x00de
                     00DD   522 _CCF5	=	0x00dd
                     00DC   523 _CCF4	=	0x00dc
                     00DB   524 _CCF3	=	0x00db
                     00DA   525 _CCF2	=	0x00da
                     00D9   526 _CCF1	=	0x00d9
                     00D8   527 _CCF0	=	0x00d8
                     00EF   528 _AD0EN	=	0x00ef
                     00EE   529 _BURSTEN	=	0x00ee
                     00ED   530 _AD0INT	=	0x00ed
                     00EC   531 _AD0BUSY	=	0x00ec
                     00EB   532 _AD0WINT	=	0x00eb
                     00EA   533 _AD0CM2	=	0x00ea
                     00E9   534 _AD0CM1	=	0x00e9
                     00E8   535 _AD0CM0	=	0x00e8
                     00FF   536 _SPIF0	=	0x00ff
                     00FE   537 _WCOL0	=	0x00fe
                     00FD   538 _MODF0	=	0x00fd
                     00FC   539 _RXOVRN0	=	0x00fc
                     00FB   540 _NSS0MD1	=	0x00fb
                     00FA   541 _NSS0MD0	=	0x00fa
                     00F9   542 _TXBMT0	=	0x00f9
                     00F8   543 _SPI0EN	=	0x00f8
                     00A0   544 _LED_RED	=	0x00a0
                     00A5   545 _LED_GREEN	=	0x00a5
                     0086   546 _BUTTON_ENTER	=	0x0086
                     0095   547 _BUTTON_UP	=	0x0095
                     0096   548 _BUTTON_DOWN	=	0x0096
                     0087   549 _IRQ	=	0x0087
                     0094   550 _NSS1	=	0x0094
                     00A6   551 _SDN	=	0x00a6
                            552 ;--------------------------------------------------------
                            553 ; overlayable register banks
                            554 ;--------------------------------------------------------
                            555 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     556 	.ds 8
                            557 ;--------------------------------------------------------
                            558 ; internal ram data
                            559 ;--------------------------------------------------------
                            560 	.area DSEG    (DATA)
   002B                     561 _mavlink_frame_slen_1_138:
   002B                     562 	.ds 2
   002D                     563 _mavlink_frame_c_2_139:
   002D                     564 	.ds 1
   002E                     565 _mavlink_frame_sloc0_1_0:
   002E                     566 	.ds 1
   002F                     567 _mavlink_frame_sloc1_1_0:
   002F                     568 	.ds 2
   0031                     569 _packet_get_next_max_xmit_1_143:
   0031                     570 	.ds 1
   0032                     571 _packet_get_next_slen_1_144:
   0032                     572 	.ds 2
   0034                     573 _packet_get_next_sloc0_1_0:
   0034                     574 	.ds 2
                            575 ;--------------------------------------------------------
                            576 ; overlayable items in internal ram 
                            577 ;--------------------------------------------------------
                            578 ;--------------------------------------------------------
                            579 ; indirectly addressable internal ram data
                            580 ;--------------------------------------------------------
                            581 	.area ISEG    (DATA)
                            582 ;--------------------------------------------------------
                            583 ; absolute internal ram data
                            584 ;--------------------------------------------------------
                            585 	.area IABS    (ABS,DATA)
                            586 	.area IABS    (ABS,DATA)
                            587 ;--------------------------------------------------------
                            588 ; bit data
                            589 ;--------------------------------------------------------
                            590 	.area BSEG    (BIT)
   0008                     591 _last_sent_is_resend:
   0008                     592 	.ds 1
   0009                     593 _last_sent_is_injected:
   0009                     594 	.ds 1
   000A                     595 _last_recv_is_resend:
   000A                     596 	.ds 1
   000B                     597 _force_resend:
   000B                     598 	.ds 1
   000C                     599 _injected_packet:
   000C                     600 	.ds 1
   000D                     601 _seen_mavlink::
   000D                     602 	.ds 1
   000E                     603 _using_mavlink_10::
   000E                     604 	.ds 1
   000F                     605 _packet_is_duplicate_PARM_3:
   000F                     606 	.ds 1
                            607 ;--------------------------------------------------------
                            608 ; paged external ram data
                            609 ;--------------------------------------------------------
                            610 	.area PSEG    (PAG,XDATA)
   0058                     611 _last_sent_len:
   0058                     612 	.ds 1
   0059                     613 _last_recv_len:
   0059                     614 	.ds 1
   005A                     615 _serial_rate:
   005A                     616 	.ds 2
   005C                     617 _mav_pkt_len:
   005C                     618 	.ds 1
   005D                     619 _mav_pkt_start_time:
   005D                     620 	.ds 2
   005F                     621 _mav_pkt_max_time:
   005F                     622 	.ds 2
   0061                     623 _mav_max_xmit:
   0061                     624 	.ds 1
   0062                     625 _mavlink_frame_PARM_2:
   0062                     626 	.ds 2
   0064                     627 _packet_get_next_PARM_2:
   0064                     628 	.ds 2
   0066                     629 _packet_is_duplicate_PARM_2:
   0066                     630 	.ds 2
   0068                     631 _packet_inject_PARM_2:
   0068                     632 	.ds 1
                            633 ;--------------------------------------------------------
                            634 ; external ram data
                            635 ;--------------------------------------------------------
                            636 	.area XSEG    (XDATA)
   0126                     637 _last_received:
   0126                     638 	.ds 252
   0222                     639 _last_sent:
   0222                     640 	.ds 252
   031E                     641 _mavlink_frame_max_xmit_1_137:
   031E                     642 	.ds 1
   031F                     643 _packet_set_max_xmit_max_1_175:
   031F                     644 	.ds 1
   0320                     645 _packet_set_serial_speed_speed_1_177:
   0320                     646 	.ds 2
   0322                     647 _packet_is_duplicate_len_1_179:
   0322                     648 	.ds 1
                            649 ;--------------------------------------------------------
                            650 ; absolute external ram data
                            651 ;--------------------------------------------------------
                            652 	.area XABS    (ABS,XDATA)
                            653 ;--------------------------------------------------------
                            654 ; external initialized ram data
                            655 ;--------------------------------------------------------
                            656 	.area XISEG   (XDATA)
                            657 	.area HOME    (CODE)
                            658 	.area GSINIT0 (CODE)
                            659 	.area GSINIT1 (CODE)
                            660 	.area GSINIT2 (CODE)
                            661 	.area GSINIT3 (CODE)
                            662 	.area GSINIT4 (CODE)
                            663 	.area GSINIT5 (CODE)
                            664 	.area GSINIT  (CODE)
                            665 	.area GSFINAL (CODE)
                            666 	.area CSEG    (CODE)
                            667 ;--------------------------------------------------------
                            668 ; global & static initialisations
                            669 ;--------------------------------------------------------
                            670 	.area HOME    (CODE)
                            671 	.area GSINIT  (CODE)
                            672 	.area GSFINAL (CODE)
                            673 	.area GSINIT  (CODE)
                            674 ;--------------------------------------------------------
                            675 ; Home
                            676 ;--------------------------------------------------------
                            677 	.area HOME    (CODE)
                            678 	.area HOME    (CODE)
                            679 ;--------------------------------------------------------
                            680 ; code
                            681 ;--------------------------------------------------------
                            682 	.area CSEG    (CODE)
                            683 ;------------------------------------------------------------
                            684 ;Allocation info for local variables in function 'check_heartbeat'
                            685 ;------------------------------------------------------------
                            686 ;	radio/packet.c:81: static void check_heartbeat(__xdata uint8_t * __pdata buf)
                            687 ;	-----------------------------------------
                            688 ;	 function check_heartbeat
                            689 ;	-----------------------------------------
   1DED                     690 _check_heartbeat:
                     0007   691 	ar7 = 0x07
                     0006   692 	ar6 = 0x06
                     0005   693 	ar5 = 0x05
                     0004   694 	ar4 = 0x04
                     0003   695 	ar3 = 0x03
                     0002   696 	ar2 = 0x02
                     0001   697 	ar1 = 0x01
                     0000   698 	ar0 = 0x00
                            699 ;	radio/packet.c:83: if (buf[0] == MAVLINK09_STX &&
   1DED AE 82         [24]  700 	mov	r6,dpl
   1DEF AF 83         [24]  701 	mov  r7,dph
   1DF1 E0            [24]  702 	movx	a,@dptr
   1DF2 FD            [12]  703 	mov	r5,a
   1DF3 BD 55 1D      [24]  704 	cjne	r5,#0x55,00106$
                            705 ;	radio/packet.c:84: buf[1] == 3 && buf[5] == 0) {
   1DF6 8E 82         [24]  706 	mov	dpl,r6
   1DF8 8F 83         [24]  707 	mov	dph,r7
   1DFA A3            [24]  708 	inc	dptr
   1DFB E0            [24]  709 	movx	a,@dptr
   1DFC FC            [12]  710 	mov	r4,a
   1DFD BC 03 13      [24]  711 	cjne	r4,#0x03,00106$
   1E00 74 05         [12]  712 	mov	a,#0x05
   1E02 2E            [12]  713 	add	a,r6
   1E03 FB            [12]  714 	mov	r3,a
   1E04 E4            [12]  715 	clr	a
   1E05 3F            [12]  716 	addc	a,r7
   1E06 FC            [12]  717 	mov	r4,a
   1E07 8B 82         [24]  718 	mov	dpl,r3
   1E09 8C 83         [24]  719 	mov	dph,r4
   1E0B E0            [24]  720 	movx	a,@dptr
   1E0C 70 05         [24]  721 	jnz	00106$
                            722 ;	radio/packet.c:86: using_mavlink_10 = false;
   1E0E C2 0E         [12]  723 	clr	_using_mavlink_10
                            724 ;	radio/packet.c:87: seen_mavlink = true;
   1E10 D2 0D         [12]  725 	setb	_seen_mavlink
   1E12 22            [24]  726 	ret
   1E13                     727 00106$:
                            728 ;	radio/packet.c:88: } else if (buf[0] == MAVLINK10_STX &&
   1E13 BD FE 1C      [24]  729 	cjne	r5,#0xFE,00110$
                            730 ;	radio/packet.c:89: buf[1] == 9 && buf[5] == 0) {
   1E16 8E 82         [24]  731 	mov	dpl,r6
   1E18 8F 83         [24]  732 	mov	dph,r7
   1E1A A3            [24]  733 	inc	dptr
   1E1B E0            [24]  734 	movx	a,@dptr
   1E1C FD            [12]  735 	mov	r5,a
   1E1D BD 09 12      [24]  736 	cjne	r5,#0x09,00110$
   1E20 74 05         [12]  737 	mov	a,#0x05
   1E22 2E            [12]  738 	add	a,r6
   1E23 FE            [12]  739 	mov	r6,a
   1E24 E4            [12]  740 	clr	a
   1E25 3F            [12]  741 	addc	a,r7
   1E26 FF            [12]  742 	mov	r7,a
   1E27 8E 82         [24]  743 	mov	dpl,r6
   1E29 8F 83         [24]  744 	mov	dph,r7
   1E2B E0            [24]  745 	movx	a,@dptr
   1E2C 70 04         [24]  746 	jnz	00110$
                            747 ;	radio/packet.c:91: using_mavlink_10 = true;
   1E2E D2 0E         [12]  748 	setb	_using_mavlink_10
                            749 ;	radio/packet.c:92: seen_mavlink = true;
   1E30 D2 0D         [12]  750 	setb	_seen_mavlink
   1E32                     751 00110$:
   1E32 22            [24]  752 	ret
                            753 ;------------------------------------------------------------
                            754 ;Allocation info for local variables in function 'mavlink_frame'
                            755 ;------------------------------------------------------------
                            756 ;slen                      Allocated with name '_mavlink_frame_slen_1_138'
                            757 ;c                         Allocated with name '_mavlink_frame_c_2_139'
                            758 ;sloc0                     Allocated with name '_mavlink_frame_sloc0_1_0'
                            759 ;sloc1                     Allocated with name '_mavlink_frame_sloc1_1_0'
                            760 ;max_xmit                  Allocated with name '_mavlink_frame_max_xmit_1_137'
                            761 ;------------------------------------------------------------
                            762 ;	radio/packet.c:99: uint8_t mavlink_frame(uint8_t max_xmit, __xdata uint8_t * __pdata buf)
                            763 ;	-----------------------------------------
                            764 ;	 function mavlink_frame
                            765 ;	-----------------------------------------
   1E33                     766 _mavlink_frame:
   1E33 E5 82         [12]  767 	mov	a,dpl
   1E35 90 03 1E      [24]  768 	mov	dptr,#_mavlink_frame_max_xmit_1_137
   1E38 F0            [24]  769 	movx	@dptr,a
                            770 ;	radio/packet.c:103: serial_read_buf(last_sent, mav_pkt_len);
   1E39 78 5C         [12]  771 	mov	r0,#_mav_pkt_len
   1E3B 79 B3         [12]  772 	mov	r1,#_serial_read_buf_PARM_2
   1E3D E2            [24]  773 	movx	a,@r0
   1E3E F3            [24]  774 	movx	@r1,a
   1E3F 90 02 22      [24]  775 	mov	dptr,#_last_sent
   1E42 12 42 B6      [24]  776 	lcall	_serial_read_buf
                            777 ;	radio/packet.c:104: last_sent_len = mav_pkt_len;
   1E45 78 5C         [12]  778 	mov	r0,#_mav_pkt_len
   1E47 E2            [24]  779 	movx	a,@r0
   1E48 FF            [12]  780 	mov	r7,a
   1E49 78 58         [12]  781 	mov	r0,#_last_sent_len
   1E4B F2            [24]  782 	movx	@r0,a
                            783 ;	radio/packet.c:105: memcpy(buf, last_sent, last_sent_len);
   1E4C 78 62         [12]  784 	mov	r0,#_mavlink_frame_PARM_2
   1E4E E2            [24]  785 	movx	a,@r0
   1E4F FC            [12]  786 	mov	r4,a
   1E50 08            [12]  787 	inc	r0
   1E51 E2            [24]  788 	movx	a,@r0
   1E52 FD            [12]  789 	mov	r5,a
   1E53 7E 00         [12]  790 	mov	r6,#0x00
   1E55 90 05 C1      [24]  791 	mov	dptr,#_memcpy_PARM_2
   1E58 74 22         [12]  792 	mov	a,#_last_sent
   1E5A F0            [24]  793 	movx	@dptr,a
   1E5B 74 02         [12]  794 	mov	a,#(_last_sent >> 8)
   1E5D A3            [24]  795 	inc	dptr
   1E5E F0            [24]  796 	movx	@dptr,a
   1E5F E4            [12]  797 	clr	a
   1E60 A3            [24]  798 	inc	dptr
   1E61 F0            [24]  799 	movx	@dptr,a
   1E62 90 05 C4      [24]  800 	mov	dptr,#_memcpy_PARM_3
   1E65 EF            [12]  801 	mov	a,r7
   1E66 F0            [24]  802 	movx	@dptr,a
   1E67 E4            [12]  803 	clr	a
   1E68 A3            [24]  804 	inc	dptr
   1E69 F0            [24]  805 	movx	@dptr,a
   1E6A 8C 82         [24]  806 	mov	dpl,r4
   1E6C 8D 83         [24]  807 	mov	dph,r5
   1E6E 8E F0         [24]  808 	mov	b,r6
   1E70 12 5C EF      [24]  809 	lcall	_memcpy
                            810 ;	radio/packet.c:106: mav_pkt_len = 0;
   1E73 78 5C         [12]  811 	mov	r0,#_mav_pkt_len
   1E75 E4            [12]  812 	clr	a
   1E76 F2            [24]  813 	movx	@r0,a
                            814 ;	radio/packet.c:108: check_heartbeat(buf);
   1E77 78 62         [12]  815 	mov	r0,#_mavlink_frame_PARM_2
   1E79 E2            [24]  816 	movx	a,@r0
   1E7A F5 82         [12]  817 	mov	dpl,a
   1E7C 08            [12]  818 	inc	r0
   1E7D E2            [24]  819 	movx	a,@r0
   1E7E F5 83         [12]  820 	mov	dph,a
   1E80 12 1D ED      [24]  821 	lcall	_check_heartbeat
                            822 ;	radio/packet.c:110: slen = serial_read_available();
   1E83 12 43 CF      [24]  823 	lcall	_serial_read_available
   1E86 85 82 2B      [24]  824 	mov	_mavlink_frame_slen_1_138,dpl
   1E89 85 83 2C      [24]  825 	mov	(_mavlink_frame_slen_1_138 + 1),dph
                            826 ;	radio/packet.c:114: while (slen >= 8) {
   1E8C 90 03 1E      [24]  827 	mov	dptr,#_mavlink_frame_max_xmit_1_137
   1E8F E0            [24]  828 	movx	a,@dptr
   1E90 F5 2E         [12]  829 	mov	_mavlink_frame_sloc0_1_0,a
   1E92                     830 00109$:
   1E92 C3            [12]  831 	clr	c
   1E93 E5 2B         [12]  832 	mov	a,_mavlink_frame_slen_1_138
   1E95 94 08         [12]  833 	subb	a,#0x08
   1E97 E5 2C         [12]  834 	mov	a,(_mavlink_frame_slen_1_138 + 1)
   1E99 94 00         [12]  835 	subb	a,#0x00
   1E9B 50 03         [24]  836 	jnc	00135$
   1E9D 02 1F 92      [24]  837 	ljmp	00111$
   1EA0                     838 00135$:
                            839 ;	radio/packet.c:115: register uint8_t c = serial_peek();
   1EA0 12 42 6D      [24]  840 	lcall	_serial_peek
   1EA3 85 82 2D      [24]  841 	mov	_mavlink_frame_c_2_139,dpl
                            842 ;	radio/packet.c:116: if (c != MAVLINK09_STX && c != MAVLINK10_STX) {
   1EA6 74 55         [12]  843 	mov	a,#0x55
   1EA8 B5 2D 02      [24]  844 	cjne	a,_mavlink_frame_c_2_139,00136$
   1EAB 80 0D         [24]  845 	sjmp	00102$
   1EAD                     846 00136$:
   1EAD 74 FE         [12]  847 	mov	a,#0xFE
   1EAF B5 2D 02      [24]  848 	cjne	a,_mavlink_frame_c_2_139,00137$
   1EB2 80 06         [24]  849 	sjmp	00102$
   1EB4                     850 00137$:
                            851 ;	radio/packet.c:118: return last_sent_len;			
   1EB4 78 58         [12]  852 	mov	r0,#_last_sent_len
   1EB6 E2            [24]  853 	movx	a,@r0
   1EB7 F5 82         [12]  854 	mov	dpl,a
   1EB9 22            [24]  855 	ret
   1EBA                     856 00102$:
                            857 ;	radio/packet.c:120: c = serial_peek2();
   1EBA 12 42 89      [24]  858 	lcall	_serial_peek2
   1EBD 85 82 2D      [24]  859 	mov	_mavlink_frame_c_2_139,dpl
                            860 ;	radio/packet.c:121: if (c >= 255 - 8 || 
   1EC0 74 09         [12]  861 	mov	a,#0x100 - 0xF7
   1EC2 25 2D         [12]  862 	add	a,_mavlink_frame_c_2_139
   1EC4 50 03         [24]  863 	jnc	00138$
   1EC6 02 1F 92      [24]  864 	ljmp	00111$
   1EC9                     865 00138$:
                            866 ;	radio/packet.c:122: c+8 > max_xmit - last_sent_len) {
   1EC9 AA 2D         [24]  867 	mov	r2,_mavlink_frame_c_2_139
   1ECB 7B 00         [12]  868 	mov	r3,#0x00
   1ECD 74 08         [12]  869 	mov	a,#0x08
   1ECF 2A            [12]  870 	add	a,r2
   1ED0 FE            [12]  871 	mov	r6,a
   1ED1 E4            [12]  872 	clr	a
   1ED2 3B            [12]  873 	addc	a,r3
   1ED3 FF            [12]  874 	mov	r7,a
   1ED4 85 2E 2F      [24]  875 	mov	_mavlink_frame_sloc1_1_0,_mavlink_frame_sloc0_1_0
   1ED7 75 30 00      [24]  876 	mov	(_mavlink_frame_sloc1_1_0 + 1),#0x00
   1EDA 78 58         [12]  877 	mov	r0,#_last_sent_len
   1EDC E2            [24]  878 	movx	a,@r0
   1EDD FC            [12]  879 	mov	r4,a
   1EDE 7D 00         [12]  880 	mov	r5,#0x00
   1EE0 E5 2F         [12]  881 	mov	a,_mavlink_frame_sloc1_1_0
   1EE2 C3            [12]  882 	clr	c
   1EE3 9C            [12]  883 	subb	a,r4
   1EE4 FC            [12]  884 	mov	r4,a
   1EE5 E5 30         [12]  885 	mov	a,(_mavlink_frame_sloc1_1_0 + 1)
   1EE7 9D            [12]  886 	subb	a,r5
   1EE8 FD            [12]  887 	mov	r5,a
   1EE9 C3            [12]  888 	clr	c
   1EEA EC            [12]  889 	mov	a,r4
   1EEB 9E            [12]  890 	subb	a,r6
   1EEC ED            [12]  891 	mov	a,r5
   1EED 64 80         [12]  892 	xrl	a,#0x80
   1EEF 8F F0         [24]  893 	mov	b,r7
   1EF1 63 F0 80      [24]  894 	xrl	b,#0x80
   1EF4 95 F0         [12]  895 	subb	a,b
   1EF6 50 03         [24]  896 	jnc	00139$
   1EF8 02 1F 92      [24]  897 	ljmp	00111$
   1EFB                     898 00139$:
                            899 ;	radio/packet.c:126: if (c+8 > slen) {
   1EFB 74 08         [12]  900 	mov	a,#0x08
   1EFD 2A            [12]  901 	add	a,r2
   1EFE FA            [12]  902 	mov	r2,a
   1EFF E4            [12]  903 	clr	a
   1F00 3B            [12]  904 	addc	a,r3
   1F01 FB            [12]  905 	mov	r3,a
   1F02 C3            [12]  906 	clr	c
   1F03 E5 2B         [12]  907 	mov	a,_mavlink_frame_slen_1_138
   1F05 9A            [12]  908 	subb	a,r2
   1F06 E5 2C         [12]  909 	mov	a,(_mavlink_frame_slen_1_138 + 1)
   1F08 9B            [12]  910 	subb	a,r3
   1F09 50 03         [24]  911 	jnc	00140$
   1F0B 02 1F 92      [24]  912 	ljmp	00111$
   1F0E                     913 00140$:
                            914 ;	radio/packet.c:132: c += 8;
   1F0E 74 08         [12]  915 	mov	a,#0x08
   1F10 25 2D         [12]  916 	add	a,_mavlink_frame_c_2_139
   1F12 F5 2D         [12]  917 	mov	_mavlink_frame_c_2_139,a
                            918 ;	radio/packet.c:135: serial_read_buf(&last_sent[last_sent_len], c);
   1F14 78 58         [12]  919 	mov	r0,#_last_sent_len
   1F16 E2            [24]  920 	movx	a,@r0
   1F17 24 22         [12]  921 	add	a,#_last_sent
   1F19 FE            [12]  922 	mov	r6,a
   1F1A E4            [12]  923 	clr	a
   1F1B 34 02         [12]  924 	addc	a,#(_last_sent >> 8)
   1F1D FF            [12]  925 	mov	r7,a
   1F1E 78 B3         [12]  926 	mov	r0,#_serial_read_buf_PARM_2
   1F20 E5 2D         [12]  927 	mov	a,_mavlink_frame_c_2_139
   1F22 F2            [24]  928 	movx	@r0,a
   1F23 8E 82         [24]  929 	mov	dpl,r6
   1F25 8F 83         [24]  930 	mov	dph,r7
   1F27 12 42 B6      [24]  931 	lcall	_serial_read_buf
                            932 ;	radio/packet.c:136: memcpy(&buf[last_sent_len], &last_sent[last_sent_len], c);
   1F2A 78 62         [12]  933 	mov	r0,#_mavlink_frame_PARM_2
   1F2C 79 58         [12]  934 	mov	r1,#_last_sent_len
   1F2E E3            [24]  935 	movx	a,@r1
   1F2F C5 F0         [12]  936 	xch	a,b
   1F31 E2            [24]  937 	movx	a,@r0
   1F32 25 F0         [12]  938 	add	a,b
   1F34 FE            [12]  939 	mov	r6,a
   1F35 08            [12]  940 	inc	r0
   1F36 E2            [24]  941 	movx	a,@r0
   1F37 34 00         [12]  942 	addc	a,#0x00
   1F39 FF            [12]  943 	mov	r7,a
   1F3A 7D 00         [12]  944 	mov	r5,#0x00
   1F3C 78 58         [12]  945 	mov	r0,#_last_sent_len
   1F3E E2            [24]  946 	movx	a,@r0
   1F3F 24 22         [12]  947 	add	a,#_last_sent
   1F41 FB            [12]  948 	mov	r3,a
   1F42 E4            [12]  949 	clr	a
   1F43 34 02         [12]  950 	addc	a,#(_last_sent >> 8)
   1F45 FC            [12]  951 	mov	r4,a
   1F46 90 05 C1      [24]  952 	mov	dptr,#_memcpy_PARM_2
   1F49 EB            [12]  953 	mov	a,r3
   1F4A F0            [24]  954 	movx	@dptr,a
   1F4B EC            [12]  955 	mov	a,r4
   1F4C A3            [24]  956 	inc	dptr
   1F4D F0            [24]  957 	movx	@dptr,a
   1F4E E4            [12]  958 	clr	a
   1F4F A3            [24]  959 	inc	dptr
   1F50 F0            [24]  960 	movx	@dptr,a
   1F51 90 05 C4      [24]  961 	mov	dptr,#_memcpy_PARM_3
   1F54 E5 2D         [12]  962 	mov	a,_mavlink_frame_c_2_139
   1F56 F0            [24]  963 	movx	@dptr,a
   1F57 E4            [12]  964 	clr	a
   1F58 A3            [24]  965 	inc	dptr
   1F59 F0            [24]  966 	movx	@dptr,a
   1F5A 8E 82         [24]  967 	mov	dpl,r6
   1F5C 8F 83         [24]  968 	mov	dph,r7
   1F5E 8D F0         [24]  969 	mov	b,r5
   1F60 12 5C EF      [24]  970 	lcall	_memcpy
                            971 ;	radio/packet.c:138: check_heartbeat(buf+last_sent_len);
   1F63 78 62         [12]  972 	mov	r0,#_mavlink_frame_PARM_2
   1F65 79 58         [12]  973 	mov	r1,#_last_sent_len
   1F67 E3            [24]  974 	movx	a,@r1
   1F68 C5 F0         [12]  975 	xch	a,b
   1F6A E2            [24]  976 	movx	a,@r0
   1F6B 25 F0         [12]  977 	add	a,b
   1F6D FE            [12]  978 	mov	r6,a
   1F6E 08            [12]  979 	inc	r0
   1F6F E2            [24]  980 	movx	a,@r0
   1F70 34 00         [12]  981 	addc	a,#0x00
   1F72 FF            [12]  982 	mov	r7,a
   1F73 8E 82         [24]  983 	mov	dpl,r6
   1F75 8F 83         [24]  984 	mov	dph,r7
   1F77 12 1D ED      [24]  985 	lcall	_check_heartbeat
                            986 ;	radio/packet.c:140: last_sent_len += c;
   1F7A 78 58         [12]  987 	mov	r0,#_last_sent_len
   1F7C E2            [24]  988 	movx	a,@r0
   1F7D 25 2D         [12]  989 	add	a,_mavlink_frame_c_2_139
   1F7F F2            [24]  990 	movx	@r0,a
                            991 ;	radio/packet.c:141: slen -= c;
   1F80 AC 2D         [24]  992 	mov	r4,_mavlink_frame_c_2_139
   1F82 7F 00         [12]  993 	mov	r7,#0x00
   1F84 E5 2B         [12]  994 	mov	a,_mavlink_frame_slen_1_138
   1F86 C3            [12]  995 	clr	c
   1F87 9C            [12]  996 	subb	a,r4
   1F88 F5 2B         [12]  997 	mov	_mavlink_frame_slen_1_138,a
   1F8A E5 2C         [12]  998 	mov	a,(_mavlink_frame_slen_1_138 + 1)
   1F8C 9F            [12]  999 	subb	a,r7
   1F8D F5 2C         [12] 1000 	mov	(_mavlink_frame_slen_1_138 + 1),a
   1F8F 02 1E 92      [24] 1001 	ljmp	00109$
   1F92                    1002 00111$:
                           1003 ;	radio/packet.c:144: return last_sent_len;
   1F92 78 58         [12] 1004 	mov	r0,#_last_sent_len
   1F94 E2            [24] 1005 	movx	a,@r0
   1F95 F5 82         [12] 1006 	mov	dpl,a
   1F97 22            [24] 1007 	ret
                           1008 ;------------------------------------------------------------
                           1009 ;Allocation info for local variables in function 'packet_get_next'
                           1010 ;------------------------------------------------------------
                           1011 ;max_xmit                  Allocated with name '_packet_get_next_max_xmit_1_143'
                           1012 ;slen                      Allocated with name '_packet_get_next_slen_1_144'
                           1013 ;c                         Allocated to registers r7 
                           1014 ;sloc0                     Allocated with name '_packet_get_next_sloc0_1_0'
                           1015 ;------------------------------------------------------------
                           1016 ;	radio/packet.c:150: packet_get_next(register uint8_t max_xmit, __xdata uint8_t * __pdata buf)
                           1017 ;	-----------------------------------------
                           1018 ;	 function packet_get_next
                           1019 ;	-----------------------------------------
   1F98                    1020 _packet_get_next:
   1F98 85 82 31      [24] 1021 	mov	_packet_get_next_max_xmit_1_143,dpl
                           1022 ;	radio/packet.c:154: slen = serial_read_available();
   1F9B 12 43 CF      [24] 1023 	lcall	_serial_read_available
   1F9E 85 82 32      [24] 1024 	mov	_packet_get_next_slen_1_144,dpl
   1FA1 85 83 33      [24] 1025 	mov	(_packet_get_next_slen_1_144 + 1),dph
                           1026 ;	radio/packet.c:155: if (force_resend ||
   1FA4 20 0B 16      [24] 1027 	jb	_force_resend,00103$
                           1028 ;	radio/packet.c:156: (feature_opportunistic_resend &&
   1FA7 30 05 65      [24] 1029 	jnb	_feature_opportunistic_resend,00104$
   1FAA 20 08 62      [24] 1030 	jb	_last_sent_is_resend,00104$
                           1031 ;	radio/packet.c:158: last_sent_len != 0 && 
   1FAD 78 58         [12] 1032 	mov	r0,#_last_sent_len
   1FAF E2            [24] 1033 	movx	a,@r0
   1FB0 60 5D         [24] 1034 	jz	00104$
                           1035 ;	radio/packet.c:159: slen < PACKET_RESEND_THRESHOLD)) {
   1FB2 C3            [12] 1036 	clr	c
   1FB3 E5 32         [12] 1037 	mov	a,_packet_get_next_slen_1_144
   1FB5 94 20         [12] 1038 	subb	a,#0x20
   1FB7 E5 33         [12] 1039 	mov	a,(_packet_get_next_slen_1_144 + 1)
   1FB9 94 00         [12] 1040 	subb	a,#0x00
   1FBB 50 52         [24] 1041 	jnc	00104$
   1FBD                    1042 00103$:
                           1043 ;	radio/packet.c:160: if (max_xmit < last_sent_len) {
   1FBD 78 58         [12] 1044 	mov	r0,#_last_sent_len
   1FBF C3            [12] 1045 	clr	c
   1FC0 E2            [24] 1046 	movx	a,@r0
   1FC1 F5 F0         [12] 1047 	mov	b,a
   1FC3 E5 31         [12] 1048 	mov	a,_packet_get_next_max_xmit_1_143
   1FC5 95 F0         [12] 1049 	subb	a,b
   1FC7 50 08         [24] 1050 	jnc	00102$
                           1051 ;	radio/packet.c:161: last_sent_len = 0;
   1FC9 78 58         [12] 1052 	mov	r0,#_last_sent_len
   1FCB E4            [12] 1053 	clr	a
   1FCC F2            [24] 1054 	movx	@r0,a
                           1055 ;	radio/packet.c:162: return 0;
   1FCD 75 82 00      [24] 1056 	mov	dpl,#0x00
   1FD0 22            [24] 1057 	ret
   1FD1                    1058 00102$:
                           1059 ;	radio/packet.c:164: last_sent_is_resend = true;
   1FD1 D2 08         [12] 1060 	setb	_last_sent_is_resend
                           1061 ;	radio/packet.c:165: force_resend = false;
   1FD3 C2 0B         [12] 1062 	clr	_force_resend
                           1063 ;	radio/packet.c:166: memcpy(buf, last_sent, last_sent_len);
   1FD5 78 64         [12] 1064 	mov	r0,#_packet_get_next_PARM_2
   1FD7 E2            [24] 1065 	movx	a,@r0
   1FD8 FA            [12] 1066 	mov	r2,a
   1FD9 08            [12] 1067 	inc	r0
   1FDA E2            [24] 1068 	movx	a,@r0
   1FDB FB            [12] 1069 	mov	r3,a
   1FDC 7C 00         [12] 1070 	mov	r4,#0x00
   1FDE 90 05 C1      [24] 1071 	mov	dptr,#_memcpy_PARM_2
   1FE1 74 22         [12] 1072 	mov	a,#_last_sent
   1FE3 F0            [24] 1073 	movx	@dptr,a
   1FE4 74 02         [12] 1074 	mov	a,#(_last_sent >> 8)
   1FE6 A3            [24] 1075 	inc	dptr
   1FE7 F0            [24] 1076 	movx	@dptr,a
   1FE8 E4            [12] 1077 	clr	a
   1FE9 A3            [24] 1078 	inc	dptr
   1FEA F0            [24] 1079 	movx	@dptr,a
   1FEB 78 58         [12] 1080 	mov	r0,#_last_sent_len
   1FED 90 05 C4      [24] 1081 	mov	dptr,#_memcpy_PARM_3
   1FF0 E2            [24] 1082 	movx	a,@r0
   1FF1 F0            [24] 1083 	movx	@dptr,a
   1FF2 E4            [12] 1084 	clr	a
   1FF3 A3            [24] 1085 	inc	dptr
   1FF4 F0            [24] 1086 	movx	@dptr,a
   1FF5 8A 82         [24] 1087 	mov	dpl,r2
   1FF7 8B 83         [24] 1088 	mov	dph,r3
   1FF9 8C F0         [24] 1089 	mov	b,r4
   1FFB 12 5C EF      [24] 1090 	lcall	_memcpy
                           1091 ;	radio/packet.c:167: slen = last_sent_len;
   1FFE 78 58         [12] 1092 	mov	r0,#_last_sent_len
   2000 E2            [24] 1093 	movx	a,@r0
   2001 F5 32         [12] 1094 	mov	_packet_get_next_slen_1_144,a
   2003 75 33 00      [24] 1095 	mov	(_packet_get_next_slen_1_144 + 1),#0x00
                           1096 ;	radio/packet.c:168: last_sent_len = 0;
   2006 78 58         [12] 1097 	mov	r0,#_last_sent_len
   2008 E4            [12] 1098 	clr	a
   2009 F2            [24] 1099 	movx	@r0,a
                           1100 ;	radio/packet.c:169: return (slen & 0xFF);
   200A AB 32         [24] 1101 	mov	r3,_packet_get_next_slen_1_144
   200C 8B 82         [24] 1102 	mov	dpl,r3
   200E 22            [24] 1103 	ret
   200F                    1104 00104$:
                           1105 ;	radio/packet.c:172: last_sent_is_resend = false;
   200F C2 08         [12] 1106 	clr	_last_sent_is_resend
                           1107 ;	radio/packet.c:174: if (injected_packet) {
   2011 20 0C 03      [24] 1108 	jb	_injected_packet,00241$
   2014 02 20 C8      [24] 1109 	ljmp	00112$
   2017                    1110 00241$:
                           1111 ;	radio/packet.c:176: slen = last_sent_len;
   2017 78 58         [12] 1112 	mov	r0,#_last_sent_len
   2019 E2            [24] 1113 	movx	a,@r0
   201A FB            [12] 1114 	mov	r3,a
   201B 7C 00         [12] 1115 	mov	r4,#0x00
   201D 8B 32         [24] 1116 	mov	_packet_get_next_slen_1_144,r3
   201F 8C 33         [24] 1117 	mov	(_packet_get_next_slen_1_144 + 1),r4
                           1118 ;	radio/packet.c:177: if (max_xmit < slen) {
   2021 85 31 34      [24] 1119 	mov	_packet_get_next_sloc0_1_0,_packet_get_next_max_xmit_1_143
   2024 75 35 00      [24] 1120 	mov	(_packet_get_next_sloc0_1_0 + 1),#0x00
   2027 C3            [12] 1121 	clr	c
   2028 E5 34         [12] 1122 	mov	a,_packet_get_next_sloc0_1_0
   202A 95 32         [12] 1123 	subb	a,_packet_get_next_slen_1_144
   202C E5 35         [12] 1124 	mov	a,(_packet_get_next_sloc0_1_0 + 1)
   202E 95 33         [12] 1125 	subb	a,(_packet_get_next_slen_1_144 + 1)
   2030 50 65         [24] 1126 	jnc	00110$
                           1127 ;	radio/packet.c:179: memcpy(buf, last_sent, max_xmit);
   2032 78 64         [12] 1128 	mov	r0,#_packet_get_next_PARM_2
   2034 E2            [24] 1129 	movx	a,@r0
   2035 FA            [12] 1130 	mov	r2,a
   2036 08            [12] 1131 	inc	r0
   2037 E2            [24] 1132 	movx	a,@r0
   2038 FE            [12] 1133 	mov	r6,a
   2039 7F 00         [12] 1134 	mov	r7,#0x00
   203B 90 05 C1      [24] 1135 	mov	dptr,#_memcpy_PARM_2
   203E 74 22         [12] 1136 	mov	a,#_last_sent
   2040 F0            [24] 1137 	movx	@dptr,a
   2041 74 02         [12] 1138 	mov	a,#(_last_sent >> 8)
   2043 A3            [24] 1139 	inc	dptr
   2044 F0            [24] 1140 	movx	@dptr,a
   2045 E4            [12] 1141 	clr	a
   2046 A3            [24] 1142 	inc	dptr
   2047 F0            [24] 1143 	movx	@dptr,a
   2048 90 05 C4      [24] 1144 	mov	dptr,#_memcpy_PARM_3
   204B E5 34         [12] 1145 	mov	a,_packet_get_next_sloc0_1_0
   204D F0            [24] 1146 	movx	@dptr,a
   204E E5 35         [12] 1147 	mov	a,(_packet_get_next_sloc0_1_0 + 1)
   2050 A3            [24] 1148 	inc	dptr
   2051 F0            [24] 1149 	movx	@dptr,a
   2052 8A 82         [24] 1150 	mov	dpl,r2
   2054 8E 83         [24] 1151 	mov	dph,r6
   2056 8F F0         [24] 1152 	mov	b,r7
   2058 12 5C EF      [24] 1153 	lcall	_memcpy
                           1154 ;	radio/packet.c:180: memcpy(last_sent, &last_sent[max_xmit], slen - max_xmit);
   205B E5 31         [12] 1155 	mov	a,_packet_get_next_max_xmit_1_143
   205D 24 22         [12] 1156 	add	a,#_last_sent
   205F FE            [12] 1157 	mov	r6,a
   2060 E4            [12] 1158 	clr	a
   2061 34 02         [12] 1159 	addc	a,#(_last_sent >> 8)
   2063 FF            [12] 1160 	mov	r7,a
   2064 90 05 C1      [24] 1161 	mov	dptr,#_memcpy_PARM_2
   2067 EE            [12] 1162 	mov	a,r6
   2068 F0            [24] 1163 	movx	@dptr,a
   2069 EF            [12] 1164 	mov	a,r7
   206A A3            [24] 1165 	inc	dptr
   206B F0            [24] 1166 	movx	@dptr,a
   206C E4            [12] 1167 	clr	a
   206D A3            [24] 1168 	inc	dptr
   206E F0            [24] 1169 	movx	@dptr,a
   206F AE 31         [24] 1170 	mov	r6,_packet_get_next_max_xmit_1_143
   2071 7F 00         [12] 1171 	mov	r7,#0x00
   2073 90 05 C4      [24] 1172 	mov	dptr,#_memcpy_PARM_3
   2076 E5 32         [12] 1173 	mov	a,_packet_get_next_slen_1_144
   2078 C3            [12] 1174 	clr	c
   2079 9E            [12] 1175 	subb	a,r6
   207A F0            [24] 1176 	movx	@dptr,a
   207B E5 33         [12] 1177 	mov	a,(_packet_get_next_slen_1_144 + 1)
   207D 9F            [12] 1178 	subb	a,r7
   207E A3            [24] 1179 	inc	dptr
   207F F0            [24] 1180 	movx	@dptr,a
   2080 90 02 22      [24] 1181 	mov	dptr,#_last_sent
   2083 75 F0 00      [24] 1182 	mov	b,#0x00
   2086 12 5C EF      [24] 1183 	lcall	_memcpy
                           1184 ;	radio/packet.c:181: last_sent_len = slen - max_xmit;
   2089 E5 32         [12] 1185 	mov	a,_packet_get_next_slen_1_144
   208B C3            [12] 1186 	clr	c
   208C 95 31         [12] 1187 	subb	a,_packet_get_next_max_xmit_1_143
   208E 78 58         [12] 1188 	mov	r0,#_last_sent_len
   2090 F2            [24] 1189 	movx	@r0,a
                           1190 ;	radio/packet.c:182: last_sent_is_injected = true;
   2091 D2 09         [12] 1191 	setb	_last_sent_is_injected
                           1192 ;	radio/packet.c:183: return max_xmit;
   2093 85 31 82      [24] 1193 	mov	dpl,_packet_get_next_max_xmit_1_143
   2096 22            [24] 1194 	ret
   2097                    1195 00110$:
                           1196 ;	radio/packet.c:186: memcpy(buf, last_sent, last_sent_len);
   2097 78 64         [12] 1197 	mov	r0,#_packet_get_next_PARM_2
   2099 E2            [24] 1198 	movx	a,@r0
   209A FD            [12] 1199 	mov	r5,a
   209B 08            [12] 1200 	inc	r0
   209C E2            [24] 1201 	movx	a,@r0
   209D FE            [12] 1202 	mov	r6,a
   209E 7F 00         [12] 1203 	mov	r7,#0x00
   20A0 90 05 C1      [24] 1204 	mov	dptr,#_memcpy_PARM_2
   20A3 74 22         [12] 1205 	mov	a,#_last_sent
   20A5 F0            [24] 1206 	movx	@dptr,a
   20A6 74 02         [12] 1207 	mov	a,#(_last_sent >> 8)
   20A8 A3            [24] 1208 	inc	dptr
   20A9 F0            [24] 1209 	movx	@dptr,a
   20AA E4            [12] 1210 	clr	a
   20AB A3            [24] 1211 	inc	dptr
   20AC F0            [24] 1212 	movx	@dptr,a
   20AD 90 05 C4      [24] 1213 	mov	dptr,#_memcpy_PARM_3
   20B0 EB            [12] 1214 	mov	a,r3
   20B1 F0            [24] 1215 	movx	@dptr,a
   20B2 EC            [12] 1216 	mov	a,r4
   20B3 A3            [24] 1217 	inc	dptr
   20B4 F0            [24] 1218 	movx	@dptr,a
   20B5 8D 82         [24] 1219 	mov	dpl,r5
   20B7 8E 83         [24] 1220 	mov	dph,r6
   20B9 8F F0         [24] 1221 	mov	b,r7
   20BB 12 5C EF      [24] 1222 	lcall	_memcpy
                           1223 ;	radio/packet.c:187: injected_packet = false;
   20BE C2 0C         [12] 1224 	clr	_injected_packet
                           1225 ;	radio/packet.c:188: last_sent_is_injected = true;
   20C0 D2 09         [12] 1226 	setb	_last_sent_is_injected
                           1227 ;	radio/packet.c:189: return last_sent_len;
   20C2 78 58         [12] 1228 	mov	r0,#_last_sent_len
   20C4 E2            [24] 1229 	movx	a,@r0
   20C5 F5 82         [12] 1230 	mov	dpl,a
   20C7 22            [24] 1231 	ret
   20C8                    1232 00112$:
                           1233 ;	radio/packet.c:192: last_sent_is_injected = false;
   20C8 C2 09         [12] 1234 	clr	_last_sent_is_injected
                           1235 ;	radio/packet.c:196: if (slen > max_xmit) {
   20CA AE 31         [24] 1236 	mov	r6,_packet_get_next_max_xmit_1_143
   20CC 7F 00         [12] 1237 	mov	r7,#0x00
   20CE C3            [12] 1238 	clr	c
   20CF EE            [12] 1239 	mov	a,r6
   20D0 95 32         [12] 1240 	subb	a,_packet_get_next_slen_1_144
   20D2 EF            [12] 1241 	mov	a,r7
   20D3 95 33         [12] 1242 	subb	a,(_packet_get_next_slen_1_144 + 1)
   20D5 50 04         [24] 1243 	jnc	00114$
                           1244 ;	radio/packet.c:197: slen = max_xmit;
   20D7 8E 32         [24] 1245 	mov	_packet_get_next_slen_1_144,r6
   20D9 8F 33         [24] 1246 	mov	(_packet_get_next_slen_1_144 + 1),r7
   20DB                    1247 00114$:
                           1248 ;	radio/packet.c:200: last_sent_len = 0;
   20DB 78 58         [12] 1249 	mov	r0,#_last_sent_len
   20DD E4            [12] 1250 	clr	a
   20DE F2            [24] 1251 	movx	@r0,a
                           1252 ;	radio/packet.c:202: if (slen == 0) {
   20DF E5 32         [12] 1253 	mov	a,_packet_get_next_slen_1_144
   20E1 45 33         [12] 1254 	orl	a,(_packet_get_next_slen_1_144 + 1)
                           1255 ;	radio/packet.c:204: return 0;
   20E3 70 03         [24] 1256 	jnz	00116$
   20E5 F5 82         [12] 1257 	mov	dpl,a
   20E7 22            [24] 1258 	ret
   20E8                    1259 00116$:
                           1260 ;	radio/packet.c:207: if (!feature_mavlink_framing) {
   20E8 20 06 53      [24] 1261 	jb	_feature_mavlink_framing,00122$
                           1262 ;	radio/packet.c:209: if (slen > 0 && serial_read_buf(buf, slen)) {
   20EB E5 32         [12] 1263 	mov	a,_packet_get_next_slen_1_144
   20ED 45 33         [12] 1264 	orl	a,(_packet_get_next_slen_1_144 + 1)
   20EF 60 43         [24] 1265 	jz	00118$
   20F1 AD 32         [24] 1266 	mov	r5,_packet_get_next_slen_1_144
   20F3 78 B3         [12] 1267 	mov	r0,#_serial_read_buf_PARM_2
   20F5 ED            [12] 1268 	mov	a,r5
   20F6 F2            [24] 1269 	movx	@r0,a
   20F7 78 64         [12] 1270 	mov	r0,#_packet_get_next_PARM_2
   20F9 E2            [24] 1271 	movx	a,@r0
   20FA F5 82         [12] 1272 	mov	dpl,a
   20FC 08            [12] 1273 	inc	r0
   20FD E2            [24] 1274 	movx	a,@r0
   20FE F5 83         [12] 1275 	mov	dph,a
   2100 C0 05         [24] 1276 	push	ar5
   2102 12 42 B6      [24] 1277 	lcall	_serial_read_buf
   2105 D0 05         [24] 1278 	pop	ar5
   2107 50 2B         [24] 1279 	jnc	00118$
                           1280 ;	radio/packet.c:210: memcpy(last_sent, buf, slen);
   2109 78 64         [12] 1281 	mov	r0,#_packet_get_next_PARM_2
   210B 90 05 C1      [24] 1282 	mov	dptr,#_memcpy_PARM_2
   210E E2            [24] 1283 	movx	a,@r0
   210F F0            [24] 1284 	movx	@dptr,a
   2110 08            [12] 1285 	inc	r0
   2111 E2            [24] 1286 	movx	a,@r0
   2112 A3            [24] 1287 	inc	dptr
   2113 F0            [24] 1288 	movx	@dptr,a
   2114 E4            [12] 1289 	clr	a
   2115 A3            [24] 1290 	inc	dptr
   2116 F0            [24] 1291 	movx	@dptr,a
   2117 90 05 C4      [24] 1292 	mov	dptr,#_memcpy_PARM_3
   211A E5 32         [12] 1293 	mov	a,_packet_get_next_slen_1_144
   211C F0            [24] 1294 	movx	@dptr,a
   211D E5 33         [12] 1295 	mov	a,(_packet_get_next_slen_1_144 + 1)
   211F A3            [24] 1296 	inc	dptr
   2120 F0            [24] 1297 	movx	@dptr,a
   2121 90 02 22      [24] 1298 	mov	dptr,#_last_sent
   2124 75 F0 00      [24] 1299 	mov	b,#0x00
   2127 C0 05         [24] 1300 	push	ar5
   2129 12 5C EF      [24] 1301 	lcall	_memcpy
   212C D0 05         [24] 1302 	pop	ar5
                           1303 ;	radio/packet.c:211: last_sent_len = slen;
   212E 78 58         [12] 1304 	mov	r0,#_last_sent_len
   2130 ED            [12] 1305 	mov	a,r5
   2131 F2            [24] 1306 	movx	@r0,a
   2132 80 04         [24] 1307 	sjmp	00119$
   2134                    1308 00118$:
                           1309 ;	radio/packet.c:213: last_sent_len = 0;
   2134 78 58         [12] 1310 	mov	r0,#_last_sent_len
   2136 E4            [12] 1311 	clr	a
   2137 F2            [24] 1312 	movx	@r0,a
   2138                    1313 00119$:
                           1314 ;	radio/packet.c:215: return last_sent_len;
   2138 78 58         [12] 1315 	mov	r0,#_last_sent_len
   213A E2            [24] 1316 	movx	a,@r0
   213B F5 82         [12] 1317 	mov	dpl,a
   213D 22            [24] 1318 	ret
   213E                    1319 00122$:
                           1320 ;	radio/packet.c:220: if (mav_pkt_len == 1) {
   213E 78 5C         [12] 1321 	mov	r0,#_mav_pkt_len
   2140 E2            [24] 1322 	movx	a,@r0
   2141 B4 01 02      [24] 1323 	cjne	a,#0x01,00248$
   2144 80 03         [24] 1324 	sjmp	00249$
   2146                    1325 00248$:
   2146 02 21 D3      [24] 1326 	ljmp	00128$
   2149                    1327 00249$:
                           1328 ;	radio/packet.c:222: if (slen == 1) {
   2149 74 01         [12] 1329 	mov	a,#0x01
   214B B5 32 06      [24] 1330 	cjne	a,_packet_get_next_slen_1_144,00250$
   214E E4            [12] 1331 	clr	a
   214F B5 33 02      [24] 1332 	cjne	a,(_packet_get_next_slen_1_144 + 1),00250$
   2152 80 02         [24] 1333 	sjmp	00251$
   2154                    1334 00250$:
   2154 80 79         [24] 1335 	sjmp	00126$
   2156                    1336 00251$:
                           1337 ;	radio/packet.c:223: if ((uint16_t)(timer2_tick() - mav_pkt_start_time) > mav_pkt_max_time) {
   2156 12 56 50      [24] 1338 	lcall	_timer2_tick
   2159 AE 82         [24] 1339 	mov	r6,dpl
   215B AF 83         [24] 1340 	mov	r7,dph
   215D 78 5D         [12] 1341 	mov	r0,#_mav_pkt_start_time
   215F D3            [12] 1342 	setb	c
   2160 E2            [24] 1343 	movx	a,@r0
   2161 9E            [12] 1344 	subb	a,r6
   2162 F4            [12] 1345 	cpl	a
   2163 B3            [12] 1346 	cpl	c
   2164 FE            [12] 1347 	mov	r6,a
   2165 B3            [12] 1348 	cpl	c
   2166 08            [12] 1349 	inc	r0
   2167 E2            [24] 1350 	movx	a,@r0
   2168 9F            [12] 1351 	subb	a,r7
   2169 F4            [12] 1352 	cpl	a
   216A FF            [12] 1353 	mov	r7,a
   216B 78 5F         [12] 1354 	mov	r0,#_mav_pkt_max_time
   216D C3            [12] 1355 	clr	c
   216E E2            [24] 1356 	movx	a,@r0
   216F 9E            [12] 1357 	subb	a,r6
   2170 08            [12] 1358 	inc	r0
   2171 E2            [24] 1359 	movx	a,@r0
   2172 9F            [12] 1360 	subb	a,r7
   2173 50 56         [24] 1361 	jnc	00124$
                           1362 ;	radio/packet.c:225: last_sent[last_sent_len++] = serial_read();
   2175 78 58         [12] 1363 	mov	r0,#_last_sent_len
   2177 E2            [24] 1364 	movx	a,@r0
   2178 FF            [12] 1365 	mov	r7,a
   2179 78 58         [12] 1366 	mov	r0,#_last_sent_len
   217B 04            [12] 1367 	inc	a
   217C F2            [24] 1368 	movx	@r0,a
   217D EF            [12] 1369 	mov	a,r7
   217E 24 22         [12] 1370 	add	a,#_last_sent
   2180 FF            [12] 1371 	mov	r7,a
   2181 E4            [12] 1372 	clr	a
   2182 34 02         [12] 1373 	addc	a,#(_last_sent >> 8)
   2184 FE            [12] 1374 	mov	r6,a
   2185 C0 07         [24] 1375 	push	ar7
   2187 C0 06         [24] 1376 	push	ar6
   2189 12 42 1C      [24] 1377 	lcall	_serial_read
   218C AD 82         [24] 1378 	mov	r5,dpl
   218E D0 06         [24] 1379 	pop	ar6
   2190 D0 07         [24] 1380 	pop	ar7
   2192 8F 82         [24] 1381 	mov	dpl,r7
   2194 8E 83         [24] 1382 	mov	dph,r6
   2196 ED            [12] 1383 	mov	a,r5
   2197 F0            [24] 1384 	movx	@dptr,a
                           1385 ;	radio/packet.c:226: memcpy(buf, last_sent, last_sent_len);				
   2198 78 64         [12] 1386 	mov	r0,#_packet_get_next_PARM_2
   219A E2            [24] 1387 	movx	a,@r0
   219B FD            [12] 1388 	mov	r5,a
   219C 08            [12] 1389 	inc	r0
   219D E2            [24] 1390 	movx	a,@r0
   219E FE            [12] 1391 	mov	r6,a
   219F 7F 00         [12] 1392 	mov	r7,#0x00
   21A1 90 05 C1      [24] 1393 	mov	dptr,#_memcpy_PARM_2
   21A4 74 22         [12] 1394 	mov	a,#_last_sent
   21A6 F0            [24] 1395 	movx	@dptr,a
   21A7 74 02         [12] 1396 	mov	a,#(_last_sent >> 8)
   21A9 A3            [24] 1397 	inc	dptr
   21AA F0            [24] 1398 	movx	@dptr,a
   21AB E4            [12] 1399 	clr	a
   21AC A3            [24] 1400 	inc	dptr
   21AD F0            [24] 1401 	movx	@dptr,a
   21AE 78 58         [12] 1402 	mov	r0,#_last_sent_len
   21B0 90 05 C4      [24] 1403 	mov	dptr,#_memcpy_PARM_3
   21B3 E2            [24] 1404 	movx	a,@r0
   21B4 F0            [24] 1405 	movx	@dptr,a
   21B5 E4            [12] 1406 	clr	a
   21B6 A3            [24] 1407 	inc	dptr
   21B7 F0            [24] 1408 	movx	@dptr,a
   21B8 8D 82         [24] 1409 	mov	dpl,r5
   21BA 8E 83         [24] 1410 	mov	dph,r6
   21BC 8F F0         [24] 1411 	mov	b,r7
   21BE 12 5C EF      [24] 1412 	lcall	_memcpy
                           1413 ;	radio/packet.c:227: mav_pkt_len = 0;
   21C1 78 5C         [12] 1414 	mov	r0,#_mav_pkt_len
   21C3 E4            [12] 1415 	clr	a
   21C4 F2            [24] 1416 	movx	@r0,a
                           1417 ;	radio/packet.c:228: return last_sent_len;
   21C5 78 58         [12] 1418 	mov	r0,#_last_sent_len
   21C7 E2            [24] 1419 	movx	a,@r0
   21C8 F5 82         [12] 1420 	mov	dpl,a
   21CA 22            [24] 1421 	ret
   21CB                    1422 00124$:
                           1423 ;	radio/packet.c:231: return 0;
   21CB 75 82 00      [24] 1424 	mov	dpl,#0x00
   21CE 22            [24] 1425 	ret
   21CF                    1426 00126$:
                           1427 ;	radio/packet.c:235: mav_pkt_len = 0;
   21CF 78 5C         [12] 1428 	mov	r0,#_mav_pkt_len
   21D1 E4            [12] 1429 	clr	a
   21D2 F2            [24] 1430 	movx	@r0,a
   21D3                    1431 00128$:
                           1432 ;	radio/packet.c:239: if (mav_pkt_len != 0) {
   21D3 78 5C         [12] 1433 	mov	r0,#_mav_pkt_len
   21D5 E2            [24] 1434 	movx	a,@r0
   21D6 70 03         [24] 1435 	jnz	00253$
   21D8 02 22 62      [24] 1436 	ljmp	00180$
   21DB                    1437 00253$:
                           1438 ;	radio/packet.c:240: if (slen < mav_pkt_len) {
   21DB 78 5C         [12] 1439 	mov	r0,#_mav_pkt_len
   21DD E2            [24] 1440 	movx	a,@r0
   21DE FE            [12] 1441 	mov	r6,a
   21DF 7F 00         [12] 1442 	mov	r7,#0x00
   21E1 C3            [12] 1443 	clr	c
   21E2 E5 32         [12] 1444 	mov	a,_packet_get_next_slen_1_144
   21E4 9E            [12] 1445 	subb	a,r6
   21E5 E5 33         [12] 1446 	mov	a,(_packet_get_next_slen_1_144 + 1)
   21E7 9F            [12] 1447 	subb	a,r7
   21E8 50 68         [24] 1448 	jnc	00132$
                           1449 ;	radio/packet.c:241: if ((uint16_t)(timer2_tick() - mav_pkt_start_time) > mav_pkt_max_time) {
   21EA 12 56 50      [24] 1450 	lcall	_timer2_tick
   21ED AE 82         [24] 1451 	mov	r6,dpl
   21EF AF 83         [24] 1452 	mov	r7,dph
   21F1 78 5D         [12] 1453 	mov	r0,#_mav_pkt_start_time
   21F3 D3            [12] 1454 	setb	c
   21F4 E2            [24] 1455 	movx	a,@r0
   21F5 9E            [12] 1456 	subb	a,r6
   21F6 F4            [12] 1457 	cpl	a
   21F7 B3            [12] 1458 	cpl	c
   21F8 FE            [12] 1459 	mov	r6,a
   21F9 B3            [12] 1460 	cpl	c
   21FA 08            [12] 1461 	inc	r0
   21FB E2            [24] 1462 	movx	a,@r0
   21FC 9F            [12] 1463 	subb	a,r7
   21FD F4            [12] 1464 	cpl	a
   21FE FF            [12] 1465 	mov	r7,a
   21FF 78 5F         [12] 1466 	mov	r0,#_mav_pkt_max_time
   2201 C3            [12] 1467 	clr	c
   2202 E2            [24] 1468 	movx	a,@r0
   2203 9E            [12] 1469 	subb	a,r6
   2204 08            [12] 1470 	inc	r0
   2205 E2            [24] 1471 	movx	a,@r0
   2206 9F            [12] 1472 	subb	a,r7
   2207 50 45         [24] 1473 	jnc	00130$
                           1474 ;	radio/packet.c:244: serial_read_buf(last_sent, slen);
   2209 AD 32         [24] 1475 	mov	r5,_packet_get_next_slen_1_144
   220B 78 B3         [12] 1476 	mov	r0,#_serial_read_buf_PARM_2
   220D ED            [12] 1477 	mov	a,r5
   220E F2            [24] 1478 	movx	@r0,a
   220F 90 02 22      [24] 1479 	mov	dptr,#_last_sent
   2212 C0 05         [24] 1480 	push	ar5
   2214 12 42 B6      [24] 1481 	lcall	_serial_read_buf
   2217 D0 05         [24] 1482 	pop	ar5
                           1483 ;	radio/packet.c:245: last_sent_len = slen;
   2219 78 58         [12] 1484 	mov	r0,#_last_sent_len
   221B ED            [12] 1485 	mov	a,r5
   221C F2            [24] 1486 	movx	@r0,a
                           1487 ;	radio/packet.c:246: memcpy(buf, last_sent, last_sent_len);
   221D 78 64         [12] 1488 	mov	r0,#_packet_get_next_PARM_2
   221F E2            [24] 1489 	movx	a,@r0
   2220 FC            [12] 1490 	mov	r4,a
   2221 08            [12] 1491 	inc	r0
   2222 E2            [24] 1492 	movx	a,@r0
   2223 FE            [12] 1493 	mov	r6,a
   2224 7F 00         [12] 1494 	mov	r7,#0x00
   2226 90 05 C1      [24] 1495 	mov	dptr,#_memcpy_PARM_2
   2229 74 22         [12] 1496 	mov	a,#_last_sent
   222B F0            [24] 1497 	movx	@dptr,a
   222C 74 02         [12] 1498 	mov	a,#(_last_sent >> 8)
   222E A3            [24] 1499 	inc	dptr
   222F F0            [24] 1500 	movx	@dptr,a
   2230 E4            [12] 1501 	clr	a
   2231 A3            [24] 1502 	inc	dptr
   2232 F0            [24] 1503 	movx	@dptr,a
   2233 90 05 C4      [24] 1504 	mov	dptr,#_memcpy_PARM_3
   2236 ED            [12] 1505 	mov	a,r5
   2237 F0            [24] 1506 	movx	@dptr,a
   2238 E4            [12] 1507 	clr	a
   2239 A3            [24] 1508 	inc	dptr
   223A F0            [24] 1509 	movx	@dptr,a
   223B 8C 82         [24] 1510 	mov	dpl,r4
   223D 8E 83         [24] 1511 	mov	dph,r6
   223F 8F F0         [24] 1512 	mov	b,r7
   2241 12 5C EF      [24] 1513 	lcall	_memcpy
                           1514 ;	radio/packet.c:247: mav_pkt_len = 0;
   2244 78 5C         [12] 1515 	mov	r0,#_mav_pkt_len
   2246 E4            [12] 1516 	clr	a
   2247 F2            [24] 1517 	movx	@r0,a
                           1518 ;	radio/packet.c:248: return last_sent_len;
   2248 78 58         [12] 1519 	mov	r0,#_last_sent_len
   224A E2            [24] 1520 	movx	a,@r0
   224B F5 82         [12] 1521 	mov	dpl,a
   224D 22            [24] 1522 	ret
   224E                    1523 00130$:
                           1524 ;	radio/packet.c:252: return 0;
   224E 75 82 00      [24] 1525 	mov	dpl,#0x00
   2251 22            [24] 1526 	ret
   2252                    1527 00132$:
                           1528 ;	radio/packet.c:256: return mavlink_frame(max_xmit, buf);
   2252 78 64         [12] 1529 	mov	r0,#_packet_get_next_PARM_2
   2254 79 62         [12] 1530 	mov	r1,#_mavlink_frame_PARM_2
   2256 E2            [24] 1531 	movx	a,@r0
   2257 F3            [24] 1532 	movx	@r1,a
   2258 08            [12] 1533 	inc	r0
   2259 E2            [24] 1534 	movx	a,@r0
   225A 09            [12] 1535 	inc	r1
   225B F3            [24] 1536 	movx	@r1,a
   225C 85 31 82      [24] 1537 	mov	dpl,_packet_get_next_max_xmit_1_143
   225F 02 1E 33      [24] 1538 	ljmp	_mavlink_frame
                           1539 ;	radio/packet.c:259: while (slen > 0) {
   2262                    1540 00180$:
   2262                    1541 00152$:
   2262 E5 32         [12] 1542 	mov	a,_packet_get_next_slen_1_144
   2264 45 33         [12] 1543 	orl	a,(_packet_get_next_slen_1_144 + 1)
   2266 70 03         [24] 1544 	jnz	00256$
   2268 02 24 08      [24] 1545 	ljmp	00154$
   226B                    1546 00256$:
                           1547 ;	radio/packet.c:260: register uint8_t c = serial_peek();
   226B 12 42 6D      [24] 1548 	lcall	_serial_peek
   226E AF 82         [24] 1549 	mov	r7,dpl
                           1550 ;	radio/packet.c:261: if (c == MAVLINK09_STX || c == MAVLINK10_STX) {
   2270 BF 55 02      [24] 1551 	cjne	r7,#0x55,00257$
   2273 80 08         [24] 1552 	sjmp	00148$
   2275                    1553 00257$:
   2275 BF FE 02      [24] 1554 	cjne	r7,#0xFE,00258$
   2278 80 03         [24] 1555 	sjmp	00259$
   227A                    1556 00258$:
   227A 02 23 D9      [24] 1557 	ljmp	00149$
   227D                    1558 00259$:
   227D                    1559 00148$:
                           1560 ;	radio/packet.c:262: if (slen == 1) {
   227D 74 01         [12] 1561 	mov	a,#0x01
   227F B5 32 06      [24] 1562 	cjne	a,_packet_get_next_slen_1_144,00260$
   2282 E4            [12] 1563 	clr	a
   2283 B5 33 02      [24] 1564 	cjne	a,(_packet_get_next_slen_1_144 + 1),00260$
   2286 80 02         [24] 1565 	sjmp	00261$
   2288                    1566 00260$:
   2288 80 2E         [24] 1567 	sjmp	00138$
   228A                    1568 00261$:
                           1569 ;	radio/packet.c:264: if (last_sent_len == 0) {
   228A 78 58         [12] 1570 	mov	r0,#_last_sent_len
   228C E2            [24] 1571 	movx	a,@r0
   228D 60 03         [24] 1572 	jz	00262$
   228F 02 24 08      [24] 1573 	ljmp	00154$
   2292                    1574 00262$:
                           1575 ;	radio/packet.c:267: mav_pkt_len = 1;
   2292 78 5C         [12] 1576 	mov	r0,#_mav_pkt_len
   2294 74 01         [12] 1577 	mov	a,#0x01
   2296 F2            [24] 1578 	movx	@r0,a
                           1579 ;	radio/packet.c:268: mav_pkt_start_time = timer2_tick();
   2297 12 56 50      [24] 1580 	lcall	_timer2_tick
   229A E5 82         [12] 1581 	mov	a,dpl
   229C 85 83 F0      [24] 1582 	mov	b,dph
   229F 78 5D         [12] 1583 	mov	r0,#_mav_pkt_start_time
   22A1 F2            [24] 1584 	movx	@r0,a
   22A2 08            [12] 1585 	inc	r0
   22A3 E5 F0         [12] 1586 	mov	a,b
   22A5 F2            [24] 1587 	movx	@r0,a
                           1588 ;	radio/packet.c:269: mav_pkt_max_time = serial_rate;
   22A6 78 5A         [12] 1589 	mov	r0,#_serial_rate
   22A8 E2            [24] 1590 	movx	a,@r0
   22A9 FE            [12] 1591 	mov	r6,a
   22AA 08            [12] 1592 	inc	r0
   22AB E2            [24] 1593 	movx	a,@r0
   22AC FF            [12] 1594 	mov	r7,a
   22AD 78 5F         [12] 1595 	mov	r0,#_mav_pkt_max_time
   22AF EE            [12] 1596 	mov	a,r6
   22B0 F2            [24] 1597 	movx	@r0,a
   22B1 08            [12] 1598 	inc	r0
   22B2 EF            [12] 1599 	mov	a,r7
   22B3 F2            [24] 1600 	movx	@r0,a
                           1601 ;	radio/packet.c:270: return 0;
   22B4 75 82 00      [24] 1602 	mov	dpl,#0x00
   22B7 22            [24] 1603 	ret
                           1604 ;	radio/packet.c:272: break;
   22B8                    1605 00138$:
                           1606 ;	radio/packet.c:274: mav_pkt_len = serial_peek2();
   22B8 12 42 89      [24] 1607 	lcall	_serial_peek2
   22BB AF 82         [24] 1608 	mov	r7,dpl
   22BD 78 5C         [12] 1609 	mov	r0,#_mav_pkt_len
   22BF EF            [12] 1610 	mov	a,r7
   22C0 F2            [24] 1611 	movx	@r0,a
                           1612 ;	radio/packet.c:275: if (mav_pkt_len >= 255-8 ||
   22C1 BF F7 00      [24] 1613 	cjne	r7,#0xF7,00263$
   22C4                    1614 00263$:
   22C4 50 20         [24] 1615 	jnc	00139$
                           1616 ;	radio/packet.c:276: mav_pkt_len+8 > mav_max_xmit) {
   22C6 8F 05         [24] 1617 	mov	ar5,r7
   22C8 7E 00         [12] 1618 	mov	r6,#0x00
   22CA 74 08         [12] 1619 	mov	a,#0x08
   22CC 2D            [12] 1620 	add	a,r5
   22CD FD            [12] 1621 	mov	r5,a
   22CE E4            [12] 1622 	clr	a
   22CF 3E            [12] 1623 	addc	a,r6
   22D0 FE            [12] 1624 	mov	r6,a
   22D1 78 61         [12] 1625 	mov	r0,#_mav_max_xmit
   22D3 E2            [24] 1626 	movx	a,@r0
   22D4 FB            [12] 1627 	mov	r3,a
   22D5 7C 00         [12] 1628 	mov	r4,#0x00
   22D7 C3            [12] 1629 	clr	c
   22D8 EB            [12] 1630 	mov	a,r3
   22D9 9D            [12] 1631 	subb	a,r5
   22DA EC            [12] 1632 	mov	a,r4
   22DB 64 80         [12] 1633 	xrl	a,#0x80
   22DD 8E F0         [24] 1634 	mov	b,r6
   22DF 63 F0 80      [24] 1635 	xrl	b,#0x80
   22E2 95 F0         [12] 1636 	subb	a,b
   22E4 50 33         [24] 1637 	jnc	00140$
   22E6                    1638 00139$:
                           1639 ;	radio/packet.c:278: mav_pkt_len = 0;
   22E6 78 5C         [12] 1640 	mov	r0,#_mav_pkt_len
   22E8 E4            [12] 1641 	clr	a
   22E9 F2            [24] 1642 	movx	@r0,a
                           1643 ;	radio/packet.c:279: last_sent[last_sent_len++] = serial_read();
   22EA 78 58         [12] 1644 	mov	r0,#_last_sent_len
   22EC E2            [24] 1645 	movx	a,@r0
   22ED FE            [12] 1646 	mov	r6,a
   22EE 78 58         [12] 1647 	mov	r0,#_last_sent_len
   22F0 04            [12] 1648 	inc	a
   22F1 F2            [24] 1649 	movx	@r0,a
   22F2 EE            [12] 1650 	mov	a,r6
   22F3 24 22         [12] 1651 	add	a,#_last_sent
   22F5 FE            [12] 1652 	mov	r6,a
   22F6 E4            [12] 1653 	clr	a
   22F7 34 02         [12] 1654 	addc	a,#(_last_sent >> 8)
   22F9 FD            [12] 1655 	mov	r5,a
   22FA C0 06         [24] 1656 	push	ar6
   22FC C0 05         [24] 1657 	push	ar5
   22FE 12 42 1C      [24] 1658 	lcall	_serial_read
   2301 AC 82         [24] 1659 	mov	r4,dpl
   2303 D0 05         [24] 1660 	pop	ar5
   2305 D0 06         [24] 1661 	pop	ar6
   2307 8E 82         [24] 1662 	mov	dpl,r6
   2309 8D 83         [24] 1663 	mov	dph,r5
   230B EC            [12] 1664 	mov	a,r4
   230C F0            [24] 1665 	movx	@dptr,a
                           1666 ;	radio/packet.c:280: slen--;				
   230D 15 32         [12] 1667 	dec	_packet_get_next_slen_1_144
   230F 74 FF         [12] 1668 	mov	a,#0xFF
   2311 B5 32 02      [24] 1669 	cjne	a,_packet_get_next_slen_1_144,00266$
   2314 15 33         [12] 1670 	dec	(_packet_get_next_slen_1_144 + 1)
   2316                    1671 00266$:
                           1672 ;	radio/packet.c:281: continue;
   2316 02 22 62      [24] 1673 	ljmp	00152$
   2319                    1674 00140$:
                           1675 ;	radio/packet.c:286: mav_pkt_len += 8;
   2319 74 08         [12] 1676 	mov	a,#0x08
   231B 2F            [12] 1677 	add	a,r7
   231C FF            [12] 1678 	mov	r7,a
   231D 78 5C         [12] 1679 	mov	r0,#_mav_pkt_len
   231F F2            [24] 1680 	movx	@r0,a
                           1681 ;	radio/packet.c:288: if (last_sent_len != 0) {
   2320 78 58         [12] 1682 	mov	r0,#_last_sent_len
   2322 E2            [24] 1683 	movx	a,@r0
   2323 60 62         [24] 1684 	jz	00146$
                           1685 ;	radio/packet.c:292: memcpy(buf, last_sent, last_sent_len);
   2325 78 64         [12] 1686 	mov	r0,#_packet_get_next_PARM_2
   2327 E2            [24] 1687 	movx	a,@r0
   2328 FC            [12] 1688 	mov	r4,a
   2329 08            [12] 1689 	inc	r0
   232A E2            [24] 1690 	movx	a,@r0
   232B FD            [12] 1691 	mov	r5,a
   232C 7E 00         [12] 1692 	mov	r6,#0x00
   232E 90 05 C1      [24] 1693 	mov	dptr,#_memcpy_PARM_2
   2331 74 22         [12] 1694 	mov	a,#_last_sent
   2333 F0            [24] 1695 	movx	@dptr,a
   2334 74 02         [12] 1696 	mov	a,#(_last_sent >> 8)
   2336 A3            [24] 1697 	inc	dptr
   2337 F0            [24] 1698 	movx	@dptr,a
   2338 E4            [12] 1699 	clr	a
   2339 A3            [24] 1700 	inc	dptr
   233A F0            [24] 1701 	movx	@dptr,a
   233B 78 58         [12] 1702 	mov	r0,#_last_sent_len
   233D 90 05 C4      [24] 1703 	mov	dptr,#_memcpy_PARM_3
   2340 E2            [24] 1704 	movx	a,@r0
   2341 F0            [24] 1705 	movx	@dptr,a
   2342 E4            [12] 1706 	clr	a
   2343 A3            [24] 1707 	inc	dptr
   2344 F0            [24] 1708 	movx	@dptr,a
   2345 8C 82         [24] 1709 	mov	dpl,r4
   2347 8D 83         [24] 1710 	mov	dph,r5
   2349 8E F0         [24] 1711 	mov	b,r6
   234B 12 5C EF      [24] 1712 	lcall	_memcpy
                           1713 ;	radio/packet.c:293: mav_pkt_start_time = timer2_tick();
   234E 12 56 50      [24] 1714 	lcall	_timer2_tick
   2351 E5 82         [12] 1715 	mov	a,dpl
   2353 85 83 F0      [24] 1716 	mov	b,dph
   2356 78 5D         [12] 1717 	mov	r0,#_mav_pkt_start_time
   2358 F2            [24] 1718 	movx	@r0,a
   2359 08            [12] 1719 	inc	r0
   235A E5 F0         [12] 1720 	mov	a,b
   235C F2            [24] 1721 	movx	@r0,a
                           1722 ;	radio/packet.c:294: mav_pkt_max_time = mav_pkt_len * serial_rate;
   235D 78 5C         [12] 1723 	mov	r0,#_mav_pkt_len
   235F E2            [24] 1724 	movx	a,@r0
   2360 FD            [12] 1725 	mov	r5,a
   2361 7E 00         [12] 1726 	mov	r6,#0x00
   2363 78 5A         [12] 1727 	mov	r0,#_serial_rate
   2365 90 05 CB      [24] 1728 	mov	dptr,#__mulint_PARM_2
   2368 E2            [24] 1729 	movx	a,@r0
   2369 F0            [24] 1730 	movx	@dptr,a
   236A 08            [12] 1731 	inc	r0
   236B E2            [24] 1732 	movx	a,@r0
   236C A3            [24] 1733 	inc	dptr
   236D F0            [24] 1734 	movx	@dptr,a
   236E 8D 82         [24] 1735 	mov	dpl,r5
   2370 8E 83         [24] 1736 	mov	dph,r6
   2372 12 5D C7      [24] 1737 	lcall	__mulint
   2375 E5 82         [12] 1738 	mov	a,dpl
   2377 85 83 F0      [24] 1739 	mov	b,dph
   237A 78 5F         [12] 1740 	mov	r0,#_mav_pkt_max_time
   237C F2            [24] 1741 	movx	@r0,a
   237D 08            [12] 1742 	inc	r0
   237E E5 F0         [12] 1743 	mov	a,b
   2380 F2            [24] 1744 	movx	@r0,a
                           1745 ;	radio/packet.c:295: return last_sent_len;
   2381 78 58         [12] 1746 	mov	r0,#_last_sent_len
   2383 E2            [24] 1747 	movx	a,@r0
   2384 F5 82         [12] 1748 	mov	dpl,a
   2386 22            [24] 1749 	ret
   2387                    1750 00146$:
                           1751 ;	radio/packet.c:296: } else if (mav_pkt_len > slen) {
   2387 7E 00         [12] 1752 	mov	r6,#0x00
   2389 C3            [12] 1753 	clr	c
   238A E5 32         [12] 1754 	mov	a,_packet_get_next_slen_1_144
   238C 9F            [12] 1755 	subb	a,r7
   238D E5 33         [12] 1756 	mov	a,(_packet_get_next_slen_1_144 + 1)
   238F 9E            [12] 1757 	subb	a,r6
   2390 50 37         [24] 1758 	jnc	00143$
                           1759 ;	radio/packet.c:299: mav_pkt_start_time = timer2_tick();
   2392 12 56 50      [24] 1760 	lcall	_timer2_tick
   2395 E5 82         [12] 1761 	mov	a,dpl
   2397 85 83 F0      [24] 1762 	mov	b,dph
   239A 78 5D         [12] 1763 	mov	r0,#_mav_pkt_start_time
   239C F2            [24] 1764 	movx	@r0,a
   239D 08            [12] 1765 	inc	r0
   239E E5 F0         [12] 1766 	mov	a,b
   23A0 F2            [24] 1767 	movx	@r0,a
                           1768 ;	radio/packet.c:300: mav_pkt_max_time = mav_pkt_len * serial_rate;
   23A1 78 5C         [12] 1769 	mov	r0,#_mav_pkt_len
   23A3 E2            [24] 1770 	movx	a,@r0
   23A4 FE            [12] 1771 	mov	r6,a
   23A5 7F 00         [12] 1772 	mov	r7,#0x00
   23A7 78 5A         [12] 1773 	mov	r0,#_serial_rate
   23A9 90 05 CB      [24] 1774 	mov	dptr,#__mulint_PARM_2
   23AC E2            [24] 1775 	movx	a,@r0
   23AD F0            [24] 1776 	movx	@dptr,a
   23AE 08            [12] 1777 	inc	r0
   23AF E2            [24] 1778 	movx	a,@r0
   23B0 A3            [24] 1779 	inc	dptr
   23B1 F0            [24] 1780 	movx	@dptr,a
   23B2 8E 82         [24] 1781 	mov	dpl,r6
   23B4 8F 83         [24] 1782 	mov	dph,r7
   23B6 12 5D C7      [24] 1783 	lcall	__mulint
   23B9 E5 82         [12] 1784 	mov	a,dpl
   23BB 85 83 F0      [24] 1785 	mov	b,dph
   23BE 78 5F         [12] 1786 	mov	r0,#_mav_pkt_max_time
   23C0 F2            [24] 1787 	movx	@r0,a
   23C1 08            [12] 1788 	inc	r0
   23C2 E5 F0         [12] 1789 	mov	a,b
   23C4 F2            [24] 1790 	movx	@r0,a
                           1791 ;	radio/packet.c:301: return 0;					
   23C5 75 82 00      [24] 1792 	mov	dpl,#0x00
   23C8 22            [24] 1793 	ret
   23C9                    1794 00143$:
                           1795 ;	radio/packet.c:305: return mavlink_frame(max_xmit, buf);
   23C9 78 64         [12] 1796 	mov	r0,#_packet_get_next_PARM_2
   23CB 79 62         [12] 1797 	mov	r1,#_mavlink_frame_PARM_2
   23CD E2            [24] 1798 	movx	a,@r0
   23CE F3            [24] 1799 	movx	@r1,a
   23CF 08            [12] 1800 	inc	r0
   23D0 E2            [24] 1801 	movx	a,@r0
   23D1 09            [12] 1802 	inc	r1
   23D2 F3            [24] 1803 	movx	@r1,a
   23D3 85 31 82      [24] 1804 	mov	dpl,_packet_get_next_max_xmit_1_143
   23D6 02 1E 33      [24] 1805 	ljmp	_mavlink_frame
   23D9                    1806 00149$:
                           1807 ;	radio/packet.c:308: last_sent[last_sent_len++] = serial_read();
   23D9 78 58         [12] 1808 	mov	r0,#_last_sent_len
   23DB E2            [24] 1809 	movx	a,@r0
   23DC FF            [12] 1810 	mov	r7,a
   23DD 78 58         [12] 1811 	mov	r0,#_last_sent_len
   23DF 04            [12] 1812 	inc	a
   23E0 F2            [24] 1813 	movx	@r0,a
   23E1 EF            [12] 1814 	mov	a,r7
   23E2 24 22         [12] 1815 	add	a,#_last_sent
   23E4 FF            [12] 1816 	mov	r7,a
   23E5 E4            [12] 1817 	clr	a
   23E6 34 02         [12] 1818 	addc	a,#(_last_sent >> 8)
   23E8 FE            [12] 1819 	mov	r6,a
   23E9 C0 07         [24] 1820 	push	ar7
   23EB C0 06         [24] 1821 	push	ar6
   23ED 12 42 1C      [24] 1822 	lcall	_serial_read
   23F0 AD 82         [24] 1823 	mov	r5,dpl
   23F2 D0 06         [24] 1824 	pop	ar6
   23F4 D0 07         [24] 1825 	pop	ar7
   23F6 8F 82         [24] 1826 	mov	dpl,r7
   23F8 8E 83         [24] 1827 	mov	dph,r6
   23FA ED            [12] 1828 	mov	a,r5
   23FB F0            [24] 1829 	movx	@dptr,a
                           1830 ;	radio/packet.c:309: slen--;
   23FC 15 32         [12] 1831 	dec	_packet_get_next_slen_1_144
   23FE 74 FF         [12] 1832 	mov	a,#0xFF
   2400 B5 32 02      [24] 1833 	cjne	a,_packet_get_next_slen_1_144,00269$
   2403 15 33         [12] 1834 	dec	(_packet_get_next_slen_1_144 + 1)
   2405                    1835 00269$:
   2405 02 22 62      [24] 1836 	ljmp	00152$
   2408                    1837 00154$:
                           1838 ;	radio/packet.c:313: memcpy(buf, last_sent, last_sent_len);
   2408 78 64         [12] 1839 	mov	r0,#_packet_get_next_PARM_2
   240A E2            [24] 1840 	movx	a,@r0
   240B FD            [12] 1841 	mov	r5,a
   240C 08            [12] 1842 	inc	r0
   240D E2            [24] 1843 	movx	a,@r0
   240E FE            [12] 1844 	mov	r6,a
   240F 7F 00         [12] 1845 	mov	r7,#0x00
   2411 90 05 C1      [24] 1846 	mov	dptr,#_memcpy_PARM_2
   2414 74 22         [12] 1847 	mov	a,#_last_sent
   2416 F0            [24] 1848 	movx	@dptr,a
   2417 74 02         [12] 1849 	mov	a,#(_last_sent >> 8)
   2419 A3            [24] 1850 	inc	dptr
   241A F0            [24] 1851 	movx	@dptr,a
   241B E4            [12] 1852 	clr	a
   241C A3            [24] 1853 	inc	dptr
   241D F0            [24] 1854 	movx	@dptr,a
   241E 78 58         [12] 1855 	mov	r0,#_last_sent_len
   2420 90 05 C4      [24] 1856 	mov	dptr,#_memcpy_PARM_3
   2423 E2            [24] 1857 	movx	a,@r0
   2424 F0            [24] 1858 	movx	@dptr,a
   2425 E4            [12] 1859 	clr	a
   2426 A3            [24] 1860 	inc	dptr
   2427 F0            [24] 1861 	movx	@dptr,a
   2428 8D 82         [24] 1862 	mov	dpl,r5
   242A 8E 83         [24] 1863 	mov	dph,r6
   242C 8F F0         [24] 1864 	mov	b,r7
   242E 12 5C EF      [24] 1865 	lcall	_memcpy
                           1866 ;	radio/packet.c:314: return last_sent_len;
   2431 78 58         [12] 1867 	mov	r0,#_last_sent_len
   2433 E2            [24] 1868 	movx	a,@r0
   2434 F5 82         [12] 1869 	mov	dpl,a
   2436 22            [24] 1870 	ret
                           1871 ;------------------------------------------------------------
                           1872 ;Allocation info for local variables in function 'packet_is_resend'
                           1873 ;------------------------------------------------------------
                           1874 ;	radio/packet.c:320: packet_is_resend(void)
                           1875 ;	-----------------------------------------
                           1876 ;	 function packet_is_resend
                           1877 ;	-----------------------------------------
   2437                    1878 _packet_is_resend:
                           1879 ;	radio/packet.c:322: return last_sent_is_resend;
   2437 A2 08         [12] 1880 	mov	c,_last_sent_is_resend
   2439 22            [24] 1881 	ret
                           1882 ;------------------------------------------------------------
                           1883 ;Allocation info for local variables in function 'packet_is_injected'
                           1884 ;------------------------------------------------------------
                           1885 ;	radio/packet.c:328: packet_is_injected(void)
                           1886 ;	-----------------------------------------
                           1887 ;	 function packet_is_injected
                           1888 ;	-----------------------------------------
   243A                    1889 _packet_is_injected:
                           1890 ;	radio/packet.c:330: return last_sent_is_injected;
   243A A2 09         [12] 1891 	mov	c,_last_sent_is_injected
   243C 22            [24] 1892 	ret
                           1893 ;------------------------------------------------------------
                           1894 ;Allocation info for local variables in function 'packet_force_resend'
                           1895 ;------------------------------------------------------------
                           1896 ;	radio/packet.c:335: packet_force_resend(void)
                           1897 ;	-----------------------------------------
                           1898 ;	 function packet_force_resend
                           1899 ;	-----------------------------------------
   243D                    1900 _packet_force_resend:
                           1901 ;	radio/packet.c:337: force_resend = true;
   243D D2 0B         [12] 1902 	setb	_force_resend
   243F 22            [24] 1903 	ret
                           1904 ;------------------------------------------------------------
                           1905 ;Allocation info for local variables in function 'packet_set_max_xmit'
                           1906 ;------------------------------------------------------------
                           1907 ;max                       Allocated with name '_packet_set_max_xmit_max_1_175'
                           1908 ;------------------------------------------------------------
                           1909 ;	radio/packet.c:342: packet_set_max_xmit(uint8_t max)
                           1910 ;	-----------------------------------------
                           1911 ;	 function packet_set_max_xmit
                           1912 ;	-----------------------------------------
   2440                    1913 _packet_set_max_xmit:
   2440 E5 82         [12] 1914 	mov	a,dpl
                           1915 ;	radio/packet.c:344: mav_max_xmit = max;
   2442 90 03 1F      [24] 1916 	mov	dptr,#_packet_set_max_xmit_max_1_175
   2445 F0            [24] 1917 	movx	@dptr,a
   2446 78 61         [12] 1918 	mov	r0,#_mav_max_xmit
   2448 F2            [24] 1919 	movx	@r0,a
   2449 22            [24] 1920 	ret
                           1921 ;------------------------------------------------------------
                           1922 ;Allocation info for local variables in function 'packet_set_serial_speed'
                           1923 ;------------------------------------------------------------
                           1924 ;speed                     Allocated with name '_packet_set_serial_speed_speed_1_177'
                           1925 ;------------------------------------------------------------
                           1926 ;	radio/packet.c:349: packet_set_serial_speed(uint16_t speed)
                           1927 ;	-----------------------------------------
                           1928 ;	 function packet_set_serial_speed
                           1929 ;	-----------------------------------------
   244A                    1930 _packet_set_serial_speed:
   244A AF 83         [24] 1931 	mov	r7,dph
   244C E5 82         [12] 1932 	mov	a,dpl
   244E 90 03 20      [24] 1933 	mov	dptr,#_packet_set_serial_speed_speed_1_177
   2451 F0            [24] 1934 	movx	@dptr,a
   2452 EF            [12] 1935 	mov	a,r7
   2453 A3            [24] 1936 	inc	dptr
   2454 F0            [24] 1937 	movx	@dptr,a
                           1938 ;	radio/packet.c:352: serial_rate = (65536UL / speed) + 1;
   2455 90 03 20      [24] 1939 	mov	dptr,#_packet_set_serial_speed_speed_1_177
   2458 E0            [24] 1940 	movx	a,@dptr
   2459 FE            [12] 1941 	mov	r6,a
   245A A3            [24] 1942 	inc	dptr
   245B E0            [24] 1943 	movx	a,@dptr
   245C FF            [12] 1944 	mov	r7,a
   245D 90 05 B2      [24] 1945 	mov	dptr,#__divulong_PARM_2
   2460 EE            [12] 1946 	mov	a,r6
   2461 F0            [24] 1947 	movx	@dptr,a
   2462 EF            [12] 1948 	mov	a,r7
   2463 A3            [24] 1949 	inc	dptr
   2464 F0            [24] 1950 	movx	@dptr,a
   2465 E4            [12] 1951 	clr	a
   2466 A3            [24] 1952 	inc	dptr
   2467 F0            [24] 1953 	movx	@dptr,a
   2468 E4            [12] 1954 	clr	a
   2469 A3            [24] 1955 	inc	dptr
   246A F0            [24] 1956 	movx	@dptr,a
   246B 90 00 00      [24] 1957 	mov	dptr,#0x0000
   246E 75 F0 01      [24] 1958 	mov	b,#0x01
   2471 E4            [12] 1959 	clr	a
   2472 12 5B 86      [24] 1960 	lcall	__divulong
   2475 AC 82         [24] 1961 	mov	r4,dpl
   2477 AD 83         [24] 1962 	mov	r5,dph
   2479 AE F0         [24] 1963 	mov	r6,b
   247B FF            [12] 1964 	mov	r7,a
   247C 0C            [12] 1965 	inc	r4
   247D BC 00 09      [24] 1966 	cjne	r4,#0x00,00103$
   2480 0D            [12] 1967 	inc	r5
   2481 BD 00 05      [24] 1968 	cjne	r5,#0x00,00103$
   2484 0E            [12] 1969 	inc	r6
   2485 BE 00 01      [24] 1970 	cjne	r6,#0x00,00103$
   2488 0F            [12] 1971 	inc	r7
   2489                    1972 00103$:
   2489 78 5A         [12] 1973 	mov	r0,#_serial_rate
   248B EC            [12] 1974 	mov	a,r4
   248C F2            [24] 1975 	movx	@r0,a
   248D 08            [12] 1976 	inc	r0
   248E ED            [12] 1977 	mov	a,r5
   248F F2            [24] 1978 	movx	@r0,a
   2490 22            [24] 1979 	ret
                           1980 ;------------------------------------------------------------
                           1981 ;Allocation info for local variables in function 'packet_is_duplicate'
                           1982 ;------------------------------------------------------------
                           1983 ;len                       Allocated with name '_packet_is_duplicate_len_1_179'
                           1984 ;------------------------------------------------------------
                           1985 ;	radio/packet.c:357: packet_is_duplicate(uint8_t len, __xdata uint8_t * __pdata buf, bool is_resend)
                           1986 ;	-----------------------------------------
                           1987 ;	 function packet_is_duplicate
                           1988 ;	-----------------------------------------
   2491                    1989 _packet_is_duplicate:
   2491 E5 82         [12] 1990 	mov	a,dpl
   2493 90 03 22      [24] 1991 	mov	dptr,#_packet_is_duplicate_len_1_179
   2496 F0            [24] 1992 	movx	@dptr,a
                           1993 ;	radio/packet.c:359: if (!is_resend) {
   2497 20 0F 39      [24] 1994 	jb	_packet_is_duplicate_PARM_3,00102$
                           1995 ;	radio/packet.c:360: memcpy(last_received, buf, len);
   249A 78 66         [12] 1996 	mov	r0,#_packet_is_duplicate_PARM_2
   249C E2            [24] 1997 	movx	a,@r0
   249D FD            [12] 1998 	mov	r5,a
   249E 08            [12] 1999 	inc	r0
   249F E2            [24] 2000 	movx	a,@r0
   24A0 FE            [12] 2001 	mov	r6,a
   24A1 7F 00         [12] 2002 	mov	r7,#0x00
   24A3 90 03 22      [24] 2003 	mov	dptr,#_packet_is_duplicate_len_1_179
   24A6 E0            [24] 2004 	movx	a,@dptr
   24A7 FC            [12] 2005 	mov	r4,a
   24A8 FA            [12] 2006 	mov	r2,a
   24A9 7B 00         [12] 2007 	mov	r3,#0x00
   24AB 90 05 C1      [24] 2008 	mov	dptr,#_memcpy_PARM_2
   24AE ED            [12] 2009 	mov	a,r5
   24AF F0            [24] 2010 	movx	@dptr,a
   24B0 EE            [12] 2011 	mov	a,r6
   24B1 A3            [24] 2012 	inc	dptr
   24B2 F0            [24] 2013 	movx	@dptr,a
   24B3 EF            [12] 2014 	mov	a,r7
   24B4 A3            [24] 2015 	inc	dptr
   24B5 F0            [24] 2016 	movx	@dptr,a
   24B6 90 05 C4      [24] 2017 	mov	dptr,#_memcpy_PARM_3
   24B9 EA            [12] 2018 	mov	a,r2
   24BA F0            [24] 2019 	movx	@dptr,a
   24BB EB            [12] 2020 	mov	a,r3
   24BC A3            [24] 2021 	inc	dptr
   24BD F0            [24] 2022 	movx	@dptr,a
   24BE 90 01 26      [24] 2023 	mov	dptr,#_last_received
   24C1 75 F0 00      [24] 2024 	mov	b,#0x00
   24C4 C0 04         [24] 2025 	push	ar4
   24C6 12 5C EF      [24] 2026 	lcall	_memcpy
   24C9 D0 04         [24] 2027 	pop	ar4
                           2028 ;	radio/packet.c:361: last_recv_len = len;
   24CB 78 59         [12] 2029 	mov	r0,#_last_recv_len
   24CD EC            [12] 2030 	mov	a,r4
   24CE F2            [24] 2031 	movx	@r0,a
                           2032 ;	radio/packet.c:362: last_recv_is_resend = false;
   24CF C2 0A         [12] 2033 	clr	_last_recv_is_resend
                           2034 ;	radio/packet.c:363: return false;
   24D1 C3            [12] 2035 	clr	c
   24D2 22            [24] 2036 	ret
   24D3                    2037 00102$:
                           2038 ;	radio/packet.c:367: memcmp(last_received, buf, len) == 0) {
   24D3 20 0A 37      [24] 2039 	jb	_last_recv_is_resend,00104$
                           2040 ;	radio/packet.c:366: len == last_recv_len &&
   24D6 90 03 22      [24] 2041 	mov	dptr,#_packet_is_duplicate_len_1_179
   24D9 E0            [24] 2042 	movx	a,@dptr
   24DA FF            [12] 2043 	mov	r7,a
   24DB 78 59         [12] 2044 	mov	r0,#_last_recv_len
   24DD E2            [24] 2045 	movx	a,@r0
   24DE B5 07 2C      [24] 2046 	cjne	a,ar7,00104$
                           2047 ;	radio/packet.c:367: memcmp(last_received, buf, len) == 0) {
   24E1 78 66         [12] 2048 	mov	r0,#_packet_is_duplicate_PARM_2
   24E3 90 05 E0      [24] 2049 	mov	dptr,#_memcmp_PARM_2
   24E6 E2            [24] 2050 	movx	a,@r0
   24E7 F0            [24] 2051 	movx	@dptr,a
   24E8 08            [12] 2052 	inc	r0
   24E9 E2            [24] 2053 	movx	a,@r0
   24EA A3            [24] 2054 	inc	dptr
   24EB F0            [24] 2055 	movx	@dptr,a
   24EC E4            [12] 2056 	clr	a
   24ED A3            [24] 2057 	inc	dptr
   24EE F0            [24] 2058 	movx	@dptr,a
   24EF 90 05 E3      [24] 2059 	mov	dptr,#_memcmp_PARM_3
   24F2 EF            [12] 2060 	mov	a,r7
   24F3 F0            [24] 2061 	movx	@dptr,a
   24F4 E4            [12] 2062 	clr	a
   24F5 A3            [24] 2063 	inc	dptr
   24F6 F0            [24] 2064 	movx	@dptr,a
   24F7 90 01 26      [24] 2065 	mov	dptr,#_last_received
   24FA 75 F0 00      [24] 2066 	mov	b,#0x00
   24FD 12 5F FD      [24] 2067 	lcall	_memcmp
   2500 E5 82         [12] 2068 	mov	a,dpl
   2502 85 83 F0      [24] 2069 	mov	b,dph
   2505 45 F0         [12] 2070 	orl	a,b
   2507 70 04         [24] 2071 	jnz	00104$
                           2072 ;	radio/packet.c:368: last_recv_is_resend = false;
   2509 C2 0A         [12] 2073 	clr	_last_recv_is_resend
                           2074 ;	radio/packet.c:369: return true;
   250B D3            [12] 2075 	setb	c
   250C 22            [24] 2076 	ret
   250D                    2077 00104$:
                           2078 ;	radio/packet.c:377: last_recv_is_resend = true;
   250D D2 0A         [12] 2079 	setb	_last_recv_is_resend
                           2080 ;	radio/packet.c:378: return false;
   250F C3            [12] 2081 	clr	c
   2510 22            [24] 2082 	ret
                           2083 ;------------------------------------------------------------
                           2084 ;Allocation info for local variables in function 'packet_inject'
                           2085 ;------------------------------------------------------------
                           2086 ;	radio/packet.c:383: packet_inject(__xdata uint8_t * __pdata buf, __pdata uint8_t len)
                           2087 ;	-----------------------------------------
                           2088 ;	 function packet_inject
                           2089 ;	-----------------------------------------
   2511                    2090 _packet_inject:
   2511 AE 82         [24] 2091 	mov	r6,dpl
   2513 AF 83         [24] 2092 	mov	r7,dph
                           2093 ;	radio/packet.c:385: if (len > sizeof(last_sent)) {
   2515 78 68         [12] 2094 	mov	r0,#_packet_inject_PARM_2
   2517 C3            [12] 2095 	clr	c
   2518 E2            [24] 2096 	movx	a,@r0
   2519 F5 F0         [12] 2097 	mov	b,a
   251B 74 FC         [12] 2098 	mov	a,#0xFC
   251D 95 F0         [12] 2099 	subb	a,b
   251F 50 05         [24] 2100 	jnc	00102$
                           2101 ;	radio/packet.c:386: len = sizeof(last_sent);
   2521 78 68         [12] 2102 	mov	r0,#_packet_inject_PARM_2
   2523 74 FC         [12] 2103 	mov	a,#0xFC
   2525 F2            [24] 2104 	movx	@r0,a
   2526                    2105 00102$:
                           2106 ;	radio/packet.c:388: memcpy(last_sent, buf, len);
   2526 90 05 C1      [24] 2107 	mov	dptr,#_memcpy_PARM_2
   2529 EE            [12] 2108 	mov	a,r6
   252A F0            [24] 2109 	movx	@dptr,a
   252B EF            [12] 2110 	mov	a,r7
   252C A3            [24] 2111 	inc	dptr
   252D F0            [24] 2112 	movx	@dptr,a
   252E E4            [12] 2113 	clr	a
   252F A3            [24] 2114 	inc	dptr
   2530 F0            [24] 2115 	movx	@dptr,a
   2531 78 68         [12] 2116 	mov	r0,#_packet_inject_PARM_2
   2533 90 05 C4      [24] 2117 	mov	dptr,#_memcpy_PARM_3
   2536 E2            [24] 2118 	movx	a,@r0
   2537 F0            [24] 2119 	movx	@dptr,a
   2538 E4            [12] 2120 	clr	a
   2539 A3            [24] 2121 	inc	dptr
   253A F0            [24] 2122 	movx	@dptr,a
   253B 90 02 22      [24] 2123 	mov	dptr,#_last_sent
   253E 75 F0 00      [24] 2124 	mov	b,#0x00
   2541 12 5C EF      [24] 2125 	lcall	_memcpy
                           2126 ;	radio/packet.c:389: last_sent_len = len;
   2544 78 68         [12] 2127 	mov	r0,#_packet_inject_PARM_2
   2546 E2            [24] 2128 	movx	a,@r0
   2547 78 58         [12] 2129 	mov	r0,#_last_sent_len
   2549 F2            [24] 2130 	movx	@r0,a
                           2131 ;	radio/packet.c:390: last_sent_is_resend = false;
   254A C2 08         [12] 2132 	clr	_last_sent_is_resend
                           2133 ;	radio/packet.c:391: injected_packet = true;
   254C D2 0C         [12] 2134 	setb	_injected_packet
   254E 22            [24] 2135 	ret
                           2136 	.area CSEG    (CODE)
                           2137 	.area CONST   (CODE)
                           2138 	.area XINIT   (CODE)
                           2139 	.area CABS    (ABS,CODE)
