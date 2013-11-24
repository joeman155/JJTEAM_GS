                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:12 2013
                              5 ;--------------------------------------------------------
                              6 	.module at
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _tdm_show_rssi
                             13 	.globl _tdm_change_phase
                             14 	.globl _tdm_remote_at
                             15 	.globl _tdm_report_timing
                             16 	.globl _printfl
                             17 	.globl _param_default
                             18 	.globl _param_save
                             19 	.globl _param_name
                             20 	.globl _param_get
                             21 	.globl _param_set
                             22 	.globl _strcmp
                             23 	.globl _putchar
                             24 	.globl _isprint
                             25 	.globl _islower
                             26 	.globl _isdigit
                             27 	.globl _TDM_SYNC_PIN
                             28 	.globl _NSS1
                             29 	.globl _IRQ
                             30 	.globl _PIN_ENABLE
                             31 	.globl _PIN_CONFIG
                             32 	.globl _LED_GREEN
                             33 	.globl _LED_RED
                             34 	.globl _SPI0EN
                             35 	.globl _TXBMT0
                             36 	.globl _NSS0MD0
                             37 	.globl _NSS0MD1
                             38 	.globl _RXOVRN0
                             39 	.globl _MODF0
                             40 	.globl _WCOL0
                             41 	.globl _SPIF0
                             42 	.globl _AD0CM0
                             43 	.globl _AD0CM1
                             44 	.globl _AD0CM2
                             45 	.globl _AD0WINT
                             46 	.globl _AD0BUSY
                             47 	.globl _AD0INT
                             48 	.globl _BURSTEN
                             49 	.globl _AD0EN
                             50 	.globl _CCF0
                             51 	.globl _CCF1
                             52 	.globl _CCF2
                             53 	.globl _CCF3
                             54 	.globl _CCF4
                             55 	.globl _CCF5
                             56 	.globl _CR
                             57 	.globl _CF
                             58 	.globl _P
                             59 	.globl _F1
                             60 	.globl _OV
                             61 	.globl _RS0
                             62 	.globl _RS1
                             63 	.globl _F0
                             64 	.globl _AC
                             65 	.globl _CY
                             66 	.globl _T2XCLK
                             67 	.globl _T2RCLK
                             68 	.globl _TR2
                             69 	.globl _T2SPLIT
                             70 	.globl _TF2CEN
                             71 	.globl _TF2LEN
                             72 	.globl _TF2L
                             73 	.globl _TF2H
                             74 	.globl _SI
                             75 	.globl _ACK
                             76 	.globl _ARBLOST
                             77 	.globl _ACKRQ
                             78 	.globl _STO
                             79 	.globl _STA
                             80 	.globl _TXMODE
                             81 	.globl _MASTER
                             82 	.globl _PX0
                             83 	.globl _PT0
                             84 	.globl _PX1
                             85 	.globl _PT1
                             86 	.globl _PS0
                             87 	.globl _PT2
                             88 	.globl _PSPI0
                             89 	.globl _SPI1EN
                             90 	.globl _TXBMT1
                             91 	.globl _NSS1MD0
                             92 	.globl _NSS1MD1
                             93 	.globl _RXOVRN1
                             94 	.globl _MODF1
                             95 	.globl _WCOL1
                             96 	.globl _SPIF1
                             97 	.globl _EX0
                             98 	.globl _ET0
                             99 	.globl _EX1
                            100 	.globl _ET1
                            101 	.globl _ES0
                            102 	.globl _ET2
                            103 	.globl _ESPI0
                            104 	.globl _EA
                            105 	.globl _RI0
                            106 	.globl _TI0
                            107 	.globl _RB80
                            108 	.globl _TB80
                            109 	.globl _REN0
                            110 	.globl _MCE0
                            111 	.globl _S0MODE
                            112 	.globl _CRC0VAL
                            113 	.globl _CRC0INIT
                            114 	.globl _CRC0SEL
                            115 	.globl _IT0
                            116 	.globl _IE0
                            117 	.globl _IT1
                            118 	.globl _IE1
                            119 	.globl _TR0
                            120 	.globl _TF0
                            121 	.globl _TR1
                            122 	.globl _TF1
                            123 	.globl _PCA0CP4
                            124 	.globl _PCA0CP0
                            125 	.globl _PCA0
                            126 	.globl _PCA0CP3
                            127 	.globl _PCA0CP2
                            128 	.globl _PCA0CP1
                            129 	.globl _PCA0CP5
                            130 	.globl _TMR2
                            131 	.globl _TMR2RL
                            132 	.globl _ADC0LT
                            133 	.globl _ADC0GT
                            134 	.globl _ADC0
                            135 	.globl _TMR3
                            136 	.globl _TMR3RL
                            137 	.globl _TOFF
                            138 	.globl _DP
                            139 	.globl _VDM0CN
                            140 	.globl _PCA0CPH4
                            141 	.globl _PCA0CPL4
                            142 	.globl _PCA0CPH0
                            143 	.globl _PCA0CPL0
                            144 	.globl _PCA0H
                            145 	.globl _PCA0L
                            146 	.globl _SPI0CN
                            147 	.globl _EIP2
                            148 	.globl _EIP1
                            149 	.globl _SMB0ADM
                            150 	.globl _SMB0ADR
                            151 	.globl _P2MDIN
                            152 	.globl _P1MDIN
                            153 	.globl _P0MDIN
                            154 	.globl _B
                            155 	.globl _RSTSRC
                            156 	.globl _PCA0CPH3
                            157 	.globl _PCA0CPL3
                            158 	.globl _PCA0CPH2
                            159 	.globl _PCA0CPL2
                            160 	.globl _PCA0CPH1
                            161 	.globl _PCA0CPL1
                            162 	.globl _ADC0CN
                            163 	.globl _EIE2
                            164 	.globl _EIE1
                            165 	.globl _FLWR
                            166 	.globl _IT01CF
                            167 	.globl _XBR2
                            168 	.globl _XBR1
                            169 	.globl _XBR0
                            170 	.globl _ACC
                            171 	.globl _PCA0PWM
                            172 	.globl _PCA0CPM4
                            173 	.globl _PCA0CPM3
                            174 	.globl _PCA0CPM2
                            175 	.globl _PCA0CPM1
                            176 	.globl _PCA0CPM0
                            177 	.globl _PCA0MD
                            178 	.globl _PCA0CN
                            179 	.globl _P0MAT
                            180 	.globl _P2SKIP
                            181 	.globl _P1SKIP
                            182 	.globl _P0SKIP
                            183 	.globl _PCA0CPH5
                            184 	.globl _PCA0CPL5
                            185 	.globl _REF0CN
                            186 	.globl _PSW
                            187 	.globl _P1MAT
                            188 	.globl _PCA0CPM5
                            189 	.globl _TMR2H
                            190 	.globl _TMR2L
                            191 	.globl _TMR2RLH
                            192 	.globl _TMR2RLL
                            193 	.globl _REG0CN
                            194 	.globl _TMR2CN
                            195 	.globl _P0MASK
                            196 	.globl _ADC0LTH
                            197 	.globl _ADC0LTL
                            198 	.globl _ADC0GTH
                            199 	.globl _ADC0GTL
                            200 	.globl _SMB0DAT
                            201 	.globl _SMB0CF
                            202 	.globl _SMB0CN
                            203 	.globl _P1MASK
                            204 	.globl _ADC0H
                            205 	.globl _ADC0L
                            206 	.globl _ADC0TK
                            207 	.globl _ADC0CF
                            208 	.globl _ADC0MX
                            209 	.globl _ADC0PWR
                            210 	.globl _ADC0AC
                            211 	.globl _IREF0CN
                            212 	.globl _IP
                            213 	.globl _FLKEY
                            214 	.globl _FLSCL
                            215 	.globl _PMU0CF
                            216 	.globl _OSCICL
                            217 	.globl _OSCICN
                            218 	.globl _OSCXCN
                            219 	.globl _SPI1CN
                            220 	.globl _ONESHOT
                            221 	.globl _EMI0TC
                            222 	.globl _RTC0KEY
                            223 	.globl _RTC0DAT
                            224 	.globl _RTC0ADR
                            225 	.globl _EMI0CF
                            226 	.globl _EMI0CN
                            227 	.globl _CLKSEL
                            228 	.globl _IE
                            229 	.globl _SFRPAGE
                            230 	.globl _P2DRV
                            231 	.globl _P2MDOUT
                            232 	.globl _P1DRV
                            233 	.globl _P1MDOUT
                            234 	.globl _P0DRV
                            235 	.globl _P0MDOUT
                            236 	.globl _SPI0DAT
                            237 	.globl _SPI0CKR
                            238 	.globl _SPI0CFG
                            239 	.globl _P2
                            240 	.globl _CPT0MX
                            241 	.globl _CPT1MX
                            242 	.globl _CPT0MD
                            243 	.globl _CPT1MD
                            244 	.globl _CPT0CN
                            245 	.globl _CPT1CN
                            246 	.globl _SBUF0
                            247 	.globl _SCON0
                            248 	.globl _CRC0CNT
                            249 	.globl _DC0CN
                            250 	.globl _CRC0AUTO
                            251 	.globl _DC0CF
                            252 	.globl _TMR3H
                            253 	.globl _CRC0FLIP
                            254 	.globl _TMR3L
                            255 	.globl _CRC0IN
                            256 	.globl _TMR3RLH
                            257 	.globl _CRC0CN
                            258 	.globl _TMR3RLL
                            259 	.globl _CRC0DAT
                            260 	.globl _TMR3CN
                            261 	.globl _P1
                            262 	.globl _PSCTL
                            263 	.globl _CKCON
                            264 	.globl _TH1
                            265 	.globl _TH0
                            266 	.globl _TL1
                            267 	.globl _TL0
                            268 	.globl _TMOD
                            269 	.globl _TCON
                            270 	.globl _PCON
                            271 	.globl _TOFFH
                            272 	.globl _SPI1DAT
                            273 	.globl _TOFFL
                            274 	.globl _SPI1CKR
                            275 	.globl _SPI1CFG
                            276 	.globl _DPH
                            277 	.globl _DPL
                            278 	.globl _SP
                            279 	.globl _P0
                            280 	.globl _idx
                            281 	.globl _at_testmode
                            282 	.globl _at_cmd_len
                            283 	.globl _at_cmd
                            284 	.globl _pdata_canary
                            285 	.globl _at_cmd_ready
                            286 	.globl _at_mode_active
                            287 	.globl _at_input
                            288 	.globl _at_plus_detector
                            289 	.globl _at_timer
                            290 	.globl _at_command
                            291 ;--------------------------------------------------------
                            292 ; special function registers
                            293 ;--------------------------------------------------------
                            294 	.area RSEG    (ABS,DATA)
   0000                     295 	.org 0x0000
                     0080   296 _P0	=	0x0080
                     0081   297 _SP	=	0x0081
                     0082   298 _DPL	=	0x0082
                     0083   299 _DPH	=	0x0083
                     0084   300 _SPI1CFG	=	0x0084
                     0085   301 _SPI1CKR	=	0x0085
                     0085   302 _TOFFL	=	0x0085
                     0086   303 _SPI1DAT	=	0x0086
                     0086   304 _TOFFH	=	0x0086
                     0087   305 _PCON	=	0x0087
                     0088   306 _TCON	=	0x0088
                     0089   307 _TMOD	=	0x0089
                     008A   308 _TL0	=	0x008a
                     008B   309 _TL1	=	0x008b
                     008C   310 _TH0	=	0x008c
                     008D   311 _TH1	=	0x008d
                     008E   312 _CKCON	=	0x008e
                     008F   313 _PSCTL	=	0x008f
                     0090   314 _P1	=	0x0090
                     0091   315 _TMR3CN	=	0x0091
                     0091   316 _CRC0DAT	=	0x0091
                     0092   317 _TMR3RLL	=	0x0092
                     0092   318 _CRC0CN	=	0x0092
                     0093   319 _TMR3RLH	=	0x0093
                     0093   320 _CRC0IN	=	0x0093
                     0094   321 _TMR3L	=	0x0094
                     0095   322 _CRC0FLIP	=	0x0095
                     0095   323 _TMR3H	=	0x0095
                     0096   324 _DC0CF	=	0x0096
                     0096   325 _CRC0AUTO	=	0x0096
                     0097   326 _DC0CN	=	0x0097
                     0097   327 _CRC0CNT	=	0x0097
                     0098   328 _SCON0	=	0x0098
                     0099   329 _SBUF0	=	0x0099
                     009A   330 _CPT1CN	=	0x009a
                     009B   331 _CPT0CN	=	0x009b
                     009C   332 _CPT1MD	=	0x009c
                     009D   333 _CPT0MD	=	0x009d
                     009E   334 _CPT1MX	=	0x009e
                     009F   335 _CPT0MX	=	0x009f
                     00A0   336 _P2	=	0x00a0
                     00A1   337 _SPI0CFG	=	0x00a1
                     00A2   338 _SPI0CKR	=	0x00a2
                     00A3   339 _SPI0DAT	=	0x00a3
                     00A4   340 _P0MDOUT	=	0x00a4
                     00A4   341 _P0DRV	=	0x00a4
                     00A5   342 _P1MDOUT	=	0x00a5
                     00A5   343 _P1DRV	=	0x00a5
                     00A6   344 _P2MDOUT	=	0x00a6
                     00A6   345 _P2DRV	=	0x00a6
                     00A7   346 _SFRPAGE	=	0x00a7
                     00A8   347 _IE	=	0x00a8
                     00A9   348 _CLKSEL	=	0x00a9
                     00AA   349 _EMI0CN	=	0x00aa
                     00AB   350 _EMI0CF	=	0x00ab
                     00AC   351 _RTC0ADR	=	0x00ac
                     00AD   352 _RTC0DAT	=	0x00ad
                     00AE   353 _RTC0KEY	=	0x00ae
                     00AF   354 _EMI0TC	=	0x00af
                     00AF   355 _ONESHOT	=	0x00af
                     00B0   356 _SPI1CN	=	0x00b0
                     00B1   357 _OSCXCN	=	0x00b1
                     00B2   358 _OSCICN	=	0x00b2
                     00B3   359 _OSCICL	=	0x00b3
                     00B5   360 _PMU0CF	=	0x00b5
                     00B6   361 _FLSCL	=	0x00b6
                     00B7   362 _FLKEY	=	0x00b7
                     00B8   363 _IP	=	0x00b8
                     00B9   364 _IREF0CN	=	0x00b9
                     00BA   365 _ADC0AC	=	0x00ba
                     00BA   366 _ADC0PWR	=	0x00ba
                     00BB   367 _ADC0MX	=	0x00bb
                     00BC   368 _ADC0CF	=	0x00bc
                     00BD   369 _ADC0TK	=	0x00bd
                     00BD   370 _ADC0L	=	0x00bd
                     00BE   371 _ADC0H	=	0x00be
                     00BF   372 _P1MASK	=	0x00bf
                     00C0   373 _SMB0CN	=	0x00c0
                     00C1   374 _SMB0CF	=	0x00c1
                     00C2   375 _SMB0DAT	=	0x00c2
                     00C3   376 _ADC0GTL	=	0x00c3
                     00C4   377 _ADC0GTH	=	0x00c4
                     00C5   378 _ADC0LTL	=	0x00c5
                     00C6   379 _ADC0LTH	=	0x00c6
                     00C7   380 _P0MASK	=	0x00c7
                     00C8   381 _TMR2CN	=	0x00c8
                     00C9   382 _REG0CN	=	0x00c9
                     00CA   383 _TMR2RLL	=	0x00ca
                     00CB   384 _TMR2RLH	=	0x00cb
                     00CC   385 _TMR2L	=	0x00cc
                     00CD   386 _TMR2H	=	0x00cd
                     00CE   387 _PCA0CPM5	=	0x00ce
                     00CF   388 _P1MAT	=	0x00cf
                     00D0   389 _PSW	=	0x00d0
                     00D1   390 _REF0CN	=	0x00d1
                     00D2   391 _PCA0CPL5	=	0x00d2
                     00D3   392 _PCA0CPH5	=	0x00d3
                     00D4   393 _P0SKIP	=	0x00d4
                     00D5   394 _P1SKIP	=	0x00d5
                     00D6   395 _P2SKIP	=	0x00d6
                     00D7   396 _P0MAT	=	0x00d7
                     00D8   397 _PCA0CN	=	0x00d8
                     00D9   398 _PCA0MD	=	0x00d9
                     00DA   399 _PCA0CPM0	=	0x00da
                     00DB   400 _PCA0CPM1	=	0x00db
                     00DC   401 _PCA0CPM2	=	0x00dc
                     00DD   402 _PCA0CPM3	=	0x00dd
                     00DE   403 _PCA0CPM4	=	0x00de
                     00DF   404 _PCA0PWM	=	0x00df
                     00E0   405 _ACC	=	0x00e0
                     00E1   406 _XBR0	=	0x00e1
                     00E2   407 _XBR1	=	0x00e2
                     00E3   408 _XBR2	=	0x00e3
                     00E4   409 _IT01CF	=	0x00e4
                     00E5   410 _FLWR	=	0x00e5
                     00E6   411 _EIE1	=	0x00e6
                     00E7   412 _EIE2	=	0x00e7
                     00E8   413 _ADC0CN	=	0x00e8
                     00E9   414 _PCA0CPL1	=	0x00e9
                     00EA   415 _PCA0CPH1	=	0x00ea
                     00EB   416 _PCA0CPL2	=	0x00eb
                     00EC   417 _PCA0CPH2	=	0x00ec
                     00ED   418 _PCA0CPL3	=	0x00ed
                     00EE   419 _PCA0CPH3	=	0x00ee
                     00EF   420 _RSTSRC	=	0x00ef
                     00F0   421 _B	=	0x00f0
                     00F1   422 _P0MDIN	=	0x00f1
                     00F2   423 _P1MDIN	=	0x00f2
                     00F3   424 _P2MDIN	=	0x00f3
                     00F4   425 _SMB0ADR	=	0x00f4
                     00F5   426 _SMB0ADM	=	0x00f5
                     00F6   427 _EIP1	=	0x00f6
                     00F7   428 _EIP2	=	0x00f7
                     00F8   429 _SPI0CN	=	0x00f8
                     00F9   430 _PCA0L	=	0x00f9
                     00FA   431 _PCA0H	=	0x00fa
                     00FB   432 _PCA0CPL0	=	0x00fb
                     00FC   433 _PCA0CPH0	=	0x00fc
                     00FD   434 _PCA0CPL4	=	0x00fd
                     00FE   435 _PCA0CPH4	=	0x00fe
                     00FF   436 _VDM0CN	=	0x00ff
                     8382   437 _DP	=	0x8382
                     8685   438 _TOFF	=	0x8685
                     9392   439 _TMR3RL	=	0x9392
                     9594   440 _TMR3	=	0x9594
                     BEBD   441 _ADC0	=	0xbebd
                     C4C3   442 _ADC0GT	=	0xc4c3
                     C6C5   443 _ADC0LT	=	0xc6c5
                     CBCA   444 _TMR2RL	=	0xcbca
                     CDCC   445 _TMR2	=	0xcdcc
                     D3D2   446 _PCA0CP5	=	0xd3d2
                     EAE9   447 _PCA0CP1	=	0xeae9
                     ECEB   448 _PCA0CP2	=	0xeceb
                     EEED   449 _PCA0CP3	=	0xeeed
                     FAF9   450 _PCA0	=	0xfaf9
                     FCFB   451 _PCA0CP0	=	0xfcfb
                     FEFD   452 _PCA0CP4	=	0xfefd
                            453 ;--------------------------------------------------------
                            454 ; special function bits
                            455 ;--------------------------------------------------------
                            456 	.area RSEG    (ABS,DATA)
   0000                     457 	.org 0x0000
                     008F   458 _TF1	=	0x008f
                     008E   459 _TR1	=	0x008e
                     008D   460 _TF0	=	0x008d
                     008C   461 _TR0	=	0x008c
                     008B   462 _IE1	=	0x008b
                     008A   463 _IT1	=	0x008a
                     0089   464 _IE0	=	0x0089
                     0088   465 _IT0	=	0x0088
                     0096   466 _CRC0SEL	=	0x0096
                     0095   467 _CRC0INIT	=	0x0095
                     0094   468 _CRC0VAL	=	0x0094
                     009F   469 _S0MODE	=	0x009f
                     009D   470 _MCE0	=	0x009d
                     009C   471 _REN0	=	0x009c
                     009B   472 _TB80	=	0x009b
                     009A   473 _RB80	=	0x009a
                     0099   474 _TI0	=	0x0099
                     0098   475 _RI0	=	0x0098
                     00AF   476 _EA	=	0x00af
                     00AE   477 _ESPI0	=	0x00ae
                     00AD   478 _ET2	=	0x00ad
                     00AC   479 _ES0	=	0x00ac
                     00AB   480 _ET1	=	0x00ab
                     00AA   481 _EX1	=	0x00aa
                     00A9   482 _ET0	=	0x00a9
                     00A8   483 _EX0	=	0x00a8
                     00B7   484 _SPIF1	=	0x00b7
                     00B6   485 _WCOL1	=	0x00b6
                     00B5   486 _MODF1	=	0x00b5
                     00B4   487 _RXOVRN1	=	0x00b4
                     00B3   488 _NSS1MD1	=	0x00b3
                     00B2   489 _NSS1MD0	=	0x00b2
                     00B1   490 _TXBMT1	=	0x00b1
                     00B0   491 _SPI1EN	=	0x00b0
                     00BE   492 _PSPI0	=	0x00be
                     00BD   493 _PT2	=	0x00bd
                     00BC   494 _PS0	=	0x00bc
                     00BB   495 _PT1	=	0x00bb
                     00BA   496 _PX1	=	0x00ba
                     00B9   497 _PT0	=	0x00b9
                     00B8   498 _PX0	=	0x00b8
                     00C7   499 _MASTER	=	0x00c7
                     00C6   500 _TXMODE	=	0x00c6
                     00C5   501 _STA	=	0x00c5
                     00C4   502 _STO	=	0x00c4
                     00C3   503 _ACKRQ	=	0x00c3
                     00C2   504 _ARBLOST	=	0x00c2
                     00C1   505 _ACK	=	0x00c1
                     00C0   506 _SI	=	0x00c0
                     00CF   507 _TF2H	=	0x00cf
                     00CE   508 _TF2L	=	0x00ce
                     00CD   509 _TF2LEN	=	0x00cd
                     00CC   510 _TF2CEN	=	0x00cc
                     00CB   511 _T2SPLIT	=	0x00cb
                     00CA   512 _TR2	=	0x00ca
                     00C9   513 _T2RCLK	=	0x00c9
                     00C8   514 _T2XCLK	=	0x00c8
                     00D7   515 _CY	=	0x00d7
                     00D6   516 _AC	=	0x00d6
                     00D5   517 _F0	=	0x00d5
                     00D4   518 _RS1	=	0x00d4
                     00D3   519 _RS0	=	0x00d3
                     00D2   520 _OV	=	0x00d2
                     00D1   521 _F1	=	0x00d1
                     00D0   522 _P	=	0x00d0
                     00DF   523 _CF	=	0x00df
                     00DE   524 _CR	=	0x00de
                     00DD   525 _CCF5	=	0x00dd
                     00DC   526 _CCF4	=	0x00dc
                     00DB   527 _CCF3	=	0x00db
                     00DA   528 _CCF2	=	0x00da
                     00D9   529 _CCF1	=	0x00d9
                     00D8   530 _CCF0	=	0x00d8
                     00EF   531 _AD0EN	=	0x00ef
                     00EE   532 _BURSTEN	=	0x00ee
                     00ED   533 _AD0INT	=	0x00ed
                     00EC   534 _AD0BUSY	=	0x00ec
                     00EB   535 _AD0WINT	=	0x00eb
                     00EA   536 _AD0CM2	=	0x00ea
                     00E9   537 _AD0CM1	=	0x00e9
                     00E8   538 _AD0CM0	=	0x00e8
                     00FF   539 _SPIF0	=	0x00ff
                     00FE   540 _WCOL0	=	0x00fe
                     00FD   541 _MODF0	=	0x00fd
                     00FC   542 _RXOVRN0	=	0x00fc
                     00FB   543 _NSS0MD1	=	0x00fb
                     00FA   544 _NSS0MD0	=	0x00fa
                     00F9   545 _TXBMT0	=	0x00f9
                     00F8   546 _SPI0EN	=	0x00f8
                     0096   547 _LED_RED	=	0x0096
                     0095   548 _LED_GREEN	=	0x0095
                     0082   549 _PIN_CONFIG	=	0x0082
                     0083   550 _PIN_ENABLE	=	0x0083
                     0087   551 _IRQ	=	0x0087
                     0094   552 _NSS1	=	0x0094
                     00A6   553 _TDM_SYNC_PIN	=	0x00a6
                            554 ;--------------------------------------------------------
                            555 ; overlayable register banks
                            556 ;--------------------------------------------------------
                            557 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     558 	.ds 8
                            559 ;--------------------------------------------------------
                            560 ; internal ram data
                            561 ;--------------------------------------------------------
                            562 	.area DSEG    (DATA)
   0008                     563 _at_i_sloc0_1_0:
   0008                     564 	.ds 4
                            565 ;--------------------------------------------------------
                            566 ; overlayable items in internal ram 
                            567 ;--------------------------------------------------------
                            568 ;--------------------------------------------------------
                            569 ; indirectly addressable internal ram data
                            570 ;--------------------------------------------------------
                            571 	.area ISEG    (DATA)
                            572 ;--------------------------------------------------------
                            573 ; absolute internal ram data
                            574 ;--------------------------------------------------------
                            575 	.area IABS    (ABS,DATA)
                            576 	.area IABS    (ABS,DATA)
                            577 ;--------------------------------------------------------
                            578 ; bit data
                            579 ;--------------------------------------------------------
                            580 	.area BSEG    (BIT)
   0000                     581 _at_mode_active::
   0000                     582 	.ds 1
   0001                     583 _at_cmd_ready::
   0001                     584 	.ds 1
                            585 ;--------------------------------------------------------
                            586 ; paged external ram data
                            587 ;--------------------------------------------------------
                            588 	.area PSEG    (PAG,XDATA)
   0000                     589 _pdata_canary::
   0000                     590 	.ds 1
   0001                     591 _at_cmd::
   0001                     592 	.ds 17
   0012                     593 _at_cmd_len::
   0012                     594 	.ds 1
   0013                     595 _at_testmode::
   0013                     596 	.ds 1
   0014                     597 _at_plus_state:
   0014                     598 	.ds 1
   0015                     599 _at_plus_counter:
   0015                     600 	.ds 1
   0016                     601 _idx::
   0016                     602 	.ds 1
                            603 ;--------------------------------------------------------
                            604 ; external ram data
                            605 ;--------------------------------------------------------
                            606 	.area XSEG    (XDATA)
   00EC                     607 _at_ampersand_x_3_168:
   00EC                     608 	.ds 1
                            609 ;--------------------------------------------------------
                            610 ; absolute external ram data
                            611 ;--------------------------------------------------------
                            612 	.area XABS    (ABS,XDATA)
                            613 ;--------------------------------------------------------
                            614 ; external initialized ram data
                            615 ;--------------------------------------------------------
                            616 	.area XISEG   (XDATA)
                            617 	.area HOME    (CODE)
                            618 	.area GSINIT0 (CODE)
                            619 	.area GSINIT1 (CODE)
                            620 	.area GSINIT2 (CODE)
                            621 	.area GSINIT3 (CODE)
                            622 	.area GSINIT4 (CODE)
                            623 	.area GSINIT5 (CODE)
                            624 	.area GSINIT  (CODE)
                            625 	.area GSFINAL (CODE)
                            626 	.area CSEG    (CODE)
                            627 ;--------------------------------------------------------
                            628 ; global & static initialisations
                            629 ;--------------------------------------------------------
                            630 	.area HOME    (CODE)
                            631 	.area GSINIT  (CODE)
                            632 	.area GSFINAL (CODE)
                            633 	.area GSINIT  (CODE)
                            634 ;	radio/at.c:42: __pdata uint8_t pdata_canary = 0x41;
   04D2 78 00         [12]  635 	mov	r0,#_pdata_canary
   04D4 74 41         [12]  636 	mov	a,#0x41
   04D6 F2            [24]  637 	movx	@r0,a
                            638 ;	radio/at.c:133: static __pdata uint8_t	at_plus_counter = ATP_COUNT_1S;
   04D7 78 15         [12]  639 	mov	r0,#_at_plus_counter
   04D9 74 64         [12]  640 	mov	a,#0x64
   04DB F2            [24]  641 	movx	@r0,a
                            642 ;--------------------------------------------------------
                            643 ; Home
                            644 ;--------------------------------------------------------
                            645 	.area HOME    (CODE)
                            646 	.area HOME    (CODE)
                            647 ;--------------------------------------------------------
                            648 ; code
                            649 ;--------------------------------------------------------
                            650 	.area CSEG    (CODE)
                            651 ;------------------------------------------------------------
                            652 ;Allocation info for local variables in function 'at_input'
                            653 ;------------------------------------------------------------
                            654 ;c                         Allocated to registers r7 
                            655 ;------------------------------------------------------------
                            656 ;	radio/at.c:66: at_input(register uint8_t c)
                            657 ;	-----------------------------------------
                            658 ;	 function at_input
                            659 ;	-----------------------------------------
   04F9                     660 _at_input:
                     0007   661 	ar7 = 0x07
                     0006   662 	ar6 = 0x06
                     0005   663 	ar5 = 0x05
                     0004   664 	ar4 = 0x04
                     0003   665 	ar3 = 0x03
                     0002   666 	ar2 = 0x02
                     0001   667 	ar1 = 0x01
                     0000   668 	ar0 = 0x00
   04F9 AF 82         [24]  669 	mov	r7,dpl
                            670 ;	radio/at.c:69: switch (c) {
   04FB 8F 06         [24]  671 	mov	ar6,r7
   04FD BE 08 02      [24]  672 	cjne	r6,#0x08,00137$
   0500 80 1B         [24]  673 	sjmp	00103$
   0502                     674 00137$:
   0502 BE 0D 02      [24]  675 	cjne	r6,#0x0D,00138$
   0505 80 05         [24]  676 	sjmp	00101$
   0507                     677 00138$:
                            678 ;	radio/at.c:71: case '\r':
   0507 BE 7F 30      [24]  679 	cjne	r6,#0x7F,00106$
   050A 80 11         [24]  680 	sjmp	00103$
   050C                     681 00101$:
                            682 ;	radio/at.c:72: putchar('\n');
   050C 75 82 0A      [24]  683 	mov	dpl,#0x0A
   050F 12 44 E0      [24]  684 	lcall	_putchar
                            685 ;	radio/at.c:73: at_cmd[at_cmd_len] = 0;
   0512 78 12         [12]  686 	mov	r0,#_at_cmd_len
   0514 E2            [24]  687 	movx	a,@r0
   0515 24 01         [12]  688 	add	a,#_at_cmd
   0517 F8            [12]  689 	mov	r0,a
   0518 E4            [12]  690 	clr	a
   0519 F2            [24]  691 	movx	@r0,a
                            692 ;	radio/at.c:74: at_cmd_ready = true;
   051A D2 01         [12]  693 	setb	_at_cmd_ready
                            694 ;	radio/at.c:75: break;
                            695 ;	radio/at.c:80: case '\x7f':
   051C 22            [24]  696 	ret
   051D                     697 00103$:
                            698 ;	radio/at.c:81: if (at_cmd_len > 0) {
   051D 78 12         [12]  699 	mov	r0,#_at_cmd_len
   051F E2            [24]  700 	movx	a,@r0
   0520 60 64         [24]  701 	jz	00112$
                            702 ;	radio/at.c:82: putchar('\b');
   0522 75 82 08      [24]  703 	mov	dpl,#0x08
   0525 12 44 E0      [24]  704 	lcall	_putchar
                            705 ;	radio/at.c:83: putchar(' ');
   0528 75 82 20      [24]  706 	mov	dpl,#0x20
   052B 12 44 E0      [24]  707 	lcall	_putchar
                            708 ;	radio/at.c:84: putchar('\b');
   052E 75 82 08      [24]  709 	mov	dpl,#0x08
   0531 12 44 E0      [24]  710 	lcall	_putchar
                            711 ;	radio/at.c:85: at_cmd_len--;
   0534 78 12         [12]  712 	mov	r0,#_at_cmd_len
   0536 E2            [24]  713 	movx	a,@r0
   0537 14            [12]  714 	dec	a
   0538 F2            [24]  715 	movx	@r0,a
                            716 ;	radio/at.c:87: break;
                            717 ;	radio/at.c:90: default:
   0539 22            [24]  718 	ret
   053A                     719 00106$:
                            720 ;	radio/at.c:91: if (at_cmd_len < AT_CMD_MAXLEN) {
   053A 78 12         [12]  721 	mov	r0,#_at_cmd_len
   053C E2            [24]  722 	movx	a,@r0
   053D B4 10 00      [24]  723 	cjne	a,#0x10,00141$
   0540                     724 00141$:
   0540 50 3E         [24]  725 	jnc	00110$
                            726 ;	radio/at.c:92: if (isprint(c)) {
   0542 8F 82         [24]  727 	mov	dpl,r7
   0544 C0 07         [24]  728 	push	ar7
   0546 C0 06         [24]  729 	push	ar6
   0548 12 63 00      [24]  730 	lcall	_isprint
   054B E5 82         [12]  731 	mov	a,dpl
   054D D0 06         [24]  732 	pop	ar6
   054F D0 07         [24]  733 	pop	ar7
   0551 60 33         [24]  734 	jz	00112$
                            735 ;	radio/at.c:93: c = toupper(c);
   0553 8F 82         [24]  736 	mov	dpl,r7
   0555 C0 07         [24]  737 	push	ar7
   0557 C0 06         [24]  738 	push	ar6
   0559 12 62 9A      [24]  739 	lcall	_islower
   055C E5 82         [12]  740 	mov	a,dpl
   055E D0 06         [24]  741 	pop	ar6
   0560 D0 07         [24]  742 	pop	ar7
   0562 60 05         [24]  743 	jz	00114$
   0564 53 06 DF      [24]  744 	anl	ar6,#0xDF
   0567 80 02         [24]  745 	sjmp	00115$
   0569                     746 00114$:
   0569 8F 06         [24]  747 	mov	ar6,r7
   056B                     748 00115$:
   056B 8E 07         [24]  749 	mov	ar7,r6
                            750 ;	radio/at.c:94: at_cmd[at_cmd_len++] = c;
   056D 78 12         [12]  751 	mov	r0,#_at_cmd_len
   056F E2            [24]  752 	movx	a,@r0
   0570 FE            [12]  753 	mov	r6,a
   0571 78 12         [12]  754 	mov	r0,#_at_cmd_len
   0573 04            [12]  755 	inc	a
   0574 F2            [24]  756 	movx	@r0,a
   0575 EE            [12]  757 	mov	a,r6
   0576 24 01         [12]  758 	add	a,#_at_cmd
   0578 F8            [12]  759 	mov	r0,a
   0579 EF            [12]  760 	mov	a,r7
   057A F2            [24]  761 	movx	@r0,a
                            762 ;	radio/at.c:95: putchar(c);
   057B 8F 82         [24]  763 	mov	dpl,r7
                            764 ;	radio/at.c:97: break;
   057D 02 44 E0      [24]  765 	ljmp	_putchar
   0580                     766 00110$:
                            767 ;	radio/at.c:105: at_mode_active = 0;
   0580 C2 00         [12]  768 	clr	_at_mode_active
                            769 ;	radio/at.c:106: at_cmd_len = 0;
   0582 78 12         [12]  770 	mov	r0,#_at_cmd_len
   0584 E4            [12]  771 	clr	a
   0585 F2            [24]  772 	movx	@r0,a
                            773 ;	radio/at.c:108: }
   0586                     774 00112$:
   0586 22            [24]  775 	ret
                            776 ;------------------------------------------------------------
                            777 ;Allocation info for local variables in function 'at_plus_detector'
                            778 ;------------------------------------------------------------
                            779 ;c                         Allocated to registers r7 
                            780 ;------------------------------------------------------------
                            781 ;	radio/at.c:138: at_plus_detector(register uint8_t c)
                            782 ;	-----------------------------------------
                            783 ;	 function at_plus_detector
                            784 ;	-----------------------------------------
   0587                     785 _at_plus_detector:
   0587 AF 82         [24]  786 	mov	r7,dpl
                            787 ;	radio/at.c:144: if (c != (uint8_t)'+')
   0589 BF 2B 02      [24]  788 	cjne	r7,#0x2B,00118$
   058C 80 04         [24]  789 	sjmp	00102$
   058E                     790 00118$:
                            791 ;	radio/at.c:145: at_plus_state = ATP_WAIT_FOR_IDLE;
   058E 78 14         [12]  792 	mov	r0,#_at_plus_state
   0590 E4            [12]  793 	clr	a
   0591 F2            [24]  794 	movx	@r0,a
   0592                     795 00102$:
                            796 ;	radio/at.c:149: switch (at_plus_state) {
   0592 78 14         [12]  797 	mov	r0,#_at_plus_state
   0594 C3            [12]  798 	clr	c
   0595 E2            [24]  799 	movx	a,@r0
   0596 F5 F0         [12]  800 	mov	b,a
   0598 74 04         [12]  801 	mov	a,#0x04
   059A 95 F0         [12]  802 	subb	a,b
   059C 40 2C         [24]  803 	jc	00106$
   059E 78 14         [12]  804 	mov	r0,#_at_plus_state
   05A0 E2            [24]  805 	movx	a,@r0
   05A1 75 F0 03      [24]  806 	mov	b,#0x03
   05A4 A4            [48]  807 	mul	ab
   05A5 90 05 A9      [24]  808 	mov	dptr,#00120$
   05A8 73            [24]  809 	jmp	@a+dptr
   05A9                     810 00120$:
   05A9 02 05 CE      [24]  811 	ljmp	00107$
   05AC 02 05 B8      [24]  812 	ljmp	00103$
   05AF 02 05 B8      [24]  813 	ljmp	00104$
   05B2 02 05 BF      [24]  814 	ljmp	00105$
   05B5 02 05 CE      [24]  815 	ljmp	00108$
                            816 ;	radio/at.c:151: case ATP_WAIT_FOR_PLUS1:
   05B8                     817 00103$:
                            818 ;	radio/at.c:152: case ATP_WAIT_FOR_PLUS2:
   05B8                     819 00104$:
                            820 ;	radio/at.c:153: at_plus_state++;
   05B8 78 14         [12]  821 	mov	r0,#_at_plus_state
   05BA E2            [24]  822 	movx	a,@r0
   05BB 24 01         [12]  823 	add	a,#0x01
   05BD F2            [24]  824 	movx	@r0,a
                            825 ;	radio/at.c:154: break;
                            826 ;	radio/at.c:156: case ATP_WAIT_FOR_PLUS3:
   05BE 22            [24]  827 	ret
   05BF                     828 00105$:
                            829 ;	radio/at.c:157: at_plus_state = ATP_WAIT_FOR_ENABLE;
   05BF 78 14         [12]  830 	mov	r0,#_at_plus_state
   05C1 74 04         [12]  831 	mov	a,#0x04
   05C3 F2            [24]  832 	movx	@r0,a
                            833 ;	radio/at.c:158: at_plus_counter = ATP_COUNT_1S;
   05C4 78 15         [12]  834 	mov	r0,#_at_plus_counter
   05C6 74 64         [12]  835 	mov	a,#0x64
   05C8 F2            [24]  836 	movx	@r0,a
                            837 ;	radio/at.c:159: break;
                            838 ;	radio/at.c:161: default:
   05C9 22            [24]  839 	ret
   05CA                     840 00106$:
                            841 ;	radio/at.c:162: at_plus_state = ATP_WAIT_FOR_IDLE;
   05CA 78 14         [12]  842 	mov	r0,#_at_plus_state
   05CC E4            [12]  843 	clr	a
   05CD F2            [24]  844 	movx	@r0,a
                            845 ;	radio/at.c:164: case ATP_WAIT_FOR_IDLE:
   05CE                     846 00107$:
                            847 ;	radio/at.c:165: case ATP_WAIT_FOR_ENABLE:
   05CE                     848 00108$:
                            849 ;	radio/at.c:166: at_plus_counter = ATP_COUNT_1S;
   05CE 78 15         [12]  850 	mov	r0,#_at_plus_counter
   05D0 74 64         [12]  851 	mov	a,#0x64
   05D2 F2            [24]  852 	movx	@r0,a
                            853 ;	radio/at.c:168: }
   05D3 22            [24]  854 	ret
                            855 ;------------------------------------------------------------
                            856 ;Allocation info for local variables in function 'at_timer'
                            857 ;------------------------------------------------------------
                            858 ;	radio/at.c:175: at_timer(void)
                            859 ;	-----------------------------------------
                            860 ;	 function at_timer
                            861 ;	-----------------------------------------
   05D4                     862 _at_timer:
                            863 ;	radio/at.c:178: if (at_plus_counter > 0) {
   05D4 78 15         [12]  864 	mov	r0,#_at_plus_counter
   05D6 E2            [24]  865 	movx	a,@r0
   05D7 60 38         [24]  866 	jz	00109$
                            867 ;	radio/at.c:181: if (--at_plus_counter == 0) {
   05D9 78 15         [12]  868 	mov	r0,#_at_plus_counter
   05DB E2            [24]  869 	movx	a,@r0
   05DC 14            [12]  870 	dec	a
   05DD F2            [24]  871 	movx	@r0,a
   05DE 78 15         [12]  872 	mov	r0,#_at_plus_counter
   05E0 E2            [24]  873 	movx	a,@r0
   05E1 70 2E         [24]  874 	jnz	00109$
                            875 ;	radio/at.c:184: switch (at_plus_state) {
   05E3 78 14         [12]  876 	mov	r0,#_at_plus_state
   05E5 E2            [24]  877 	movx	a,@r0
   05E6 60 08         [24]  878 	jz	00101$
   05E8 78 14         [12]  879 	mov	r0,#_at_plus_state
   05EA E2            [24]  880 	movx	a,@r0
                            881 ;	radio/at.c:185: case ATP_WAIT_FOR_IDLE:
   05EB B4 04 23      [24]  882 	cjne	a,#0x04,00109$
   05EE 80 06         [24]  883 	sjmp	00102$
   05F0                     884 00101$:
                            885 ;	radio/at.c:186: at_plus_state = ATP_WAIT_FOR_PLUS1;
   05F0 78 14         [12]  886 	mov	r0,#_at_plus_state
   05F2 74 01         [12]  887 	mov	a,#0x01
   05F4 F2            [24]  888 	movx	@r0,a
                            889 ;	radio/at.c:187: break;
                            890 ;	radio/at.c:189: case ATP_WAIT_FOR_ENABLE:
   05F5 22            [24]  891 	ret
   05F6                     892 00102$:
                            893 ;	radio/at.c:190: at_mode_active = true;
   05F6 D2 00         [12]  894 	setb	_at_mode_active
                            895 ;	radio/at.c:191: at_plus_state = ATP_WAIT_FOR_IDLE;
   05F8 78 14         [12]  896 	mov	r0,#_at_plus_state
   05FA E4            [12]  897 	clr	a
   05FB F2            [24]  898 	movx	@r0,a
                            899 ;	radio/at.c:194: at_cmd[0] = 'A';
   05FC 78 01         [12]  900 	mov	r0,#_at_cmd
   05FE 74 41         [12]  901 	mov	a,#0x41
   0600 F2            [24]  902 	movx	@r0,a
                            903 ;	radio/at.c:195: at_cmd[1] = 'T';
   0601 78 02         [12]  904 	mov	r0,#(_at_cmd + 0x0001)
   0603 74 54         [12]  905 	mov	a,#0x54
   0605 F2            [24]  906 	movx	@r0,a
                            907 ;	radio/at.c:196: at_cmd[2] = '\0';
   0606 78 03         [12]  908 	mov	r0,#(_at_cmd + 0x0002)
   0608 E4            [12]  909 	clr	a
   0609 F2            [24]  910 	movx	@r0,a
                            911 ;	radio/at.c:197: at_cmd_len = 2;
   060A 78 12         [12]  912 	mov	r0,#_at_cmd_len
   060C 74 02         [12]  913 	mov	a,#0x02
   060E F2            [24]  914 	movx	@r0,a
                            915 ;	radio/at.c:198: at_cmd_ready = true;
   060F D2 01         [12]  916 	setb	_at_cmd_ready
                            917 ;	radio/at.c:202: }
   0611                     918 00109$:
   0611 22            [24]  919 	ret
                            920 ;------------------------------------------------------------
                            921 ;Allocation info for local variables in function 'at_command'
                            922 ;------------------------------------------------------------
                            923 ;	radio/at.c:209: at_command(void)
                            924 ;	-----------------------------------------
                            925 ;	 function at_command
                            926 ;	-----------------------------------------
   0612                     927 _at_command:
                            928 ;	radio/at.c:212: if (at_cmd_ready) {
   0612 20 01 01      [24]  929 	jb	_at_cmd_ready,00170$
   0615 22            [24]  930 	ret
   0616                     931 00170$:
                            932 ;	radio/at.c:213: if ((at_cmd_len >= 2) && (at_cmd[0] == 'R') && (at_cmd[1] == 'T')) {
   0616 78 12         [12]  933 	mov	r0,#_at_cmd_len
   0618 E2            [24]  934 	movx	a,@r0
   0619 B4 02 00      [24]  935 	cjne	a,#0x02,00171$
   061C                     936 00171$:
   061C E4            [12]  937 	clr	a
   061D 33            [12]  938 	rlc	a
   061E FF            [12]  939 	mov	r7,a
   061F 70 18         [24]  940 	jnz	00102$
   0621 78 01         [12]  941 	mov	r0,#_at_cmd
   0623 E2            [24]  942 	movx	a,@r0
   0624 FE            [12]  943 	mov	r6,a
   0625 BE 52 11      [24]  944 	cjne	r6,#0x52,00102$
   0628 78 02         [12]  945 	mov	r0,#(_at_cmd + 0x0001)
   062A E2            [24]  946 	movx	a,@r0
   062B FE            [12]  947 	mov	r6,a
   062C BE 54 0A      [24]  948 	cjne	r6,#0x54,00102$
                            949 ;	radio/at.c:216: tdm_remote_at();
   062F 12 4C 6D      [24]  950 	lcall	_tdm_remote_at
                            951 ;	radio/at.c:217: at_cmd_len = 0;
   0632 78 12         [12]  952 	mov	r0,#_at_cmd_len
   0634 E4            [12]  953 	clr	a
   0635 F2            [24]  954 	movx	@r0,a
                            955 ;	radio/at.c:218: at_cmd_ready = false;
   0636 C2 01         [12]  956 	clr	_at_cmd_ready
                            957 ;	radio/at.c:219: return;
   0638 22            [24]  958 	ret
   0639                     959 00102$:
                            960 ;	radio/at.c:222: if ((at_cmd_len >= 2) && (at_cmd[0] == 'A') && (at_cmd[1] == 'T')) {
   0639 EF            [12]  961 	mov	a,r7
   063A 70 5C         [24]  962 	jnz	00116$
   063C 78 01         [12]  963 	mov	r0,#_at_cmd
   063E E2            [24]  964 	movx	a,@r0
   063F FF            [12]  965 	mov	r7,a
   0640 BF 41 55      [24]  966 	cjne	r7,#0x41,00116$
   0643 78 02         [12]  967 	mov	r0,#(_at_cmd + 0x0001)
   0645 E2            [24]  968 	movx	a,@r0
   0646 FF            [12]  969 	mov	r7,a
   0647 BF 54 4E      [24]  970 	cjne	r7,#0x54,00116$
                            971 ;	radio/at.c:225: switch (at_cmd[2]) {
   064A 78 03         [12]  972 	mov	r0,#(_at_cmd + 0x0002)
   064C E2            [24]  973 	movx	a,@r0
   064D FF            [12]  974 	mov	r7,a
   064E 60 1E         [24]  975 	jz	00105$
   0650 BF 26 02      [24]  976 	cjne	r7,#0x26,00183$
   0653 80 1E         [24]  977 	sjmp	00106$
   0655                     978 00183$:
   0655 BF 2B 02      [24]  979 	cjne	r7,#0x2B,00184$
   0658 80 1E         [24]  980 	sjmp	00107$
   065A                     981 00184$:
   065A BF 49 02      [24]  982 	cjne	r7,#0x49,00185$
   065D 80 1E         [24]  983 	sjmp	00108$
   065F                     984 00185$:
   065F BF 4F 02      [24]  985 	cjne	r7,#0x4F,00186$
   0662 80 1E         [24]  986 	sjmp	00109$
   0664                     987 00186$:
   0664 BF 53 02      [24]  988 	cjne	r7,#0x53,00187$
   0667 80 22         [24]  989 	sjmp	00110$
   0669                     990 00187$:
                            991 ;	radio/at.c:226: case '\0':		// no command -> OK
   0669 BF 5A 29      [24]  992 	cjne	r7,#0x5A,00113$
   066C 80 22         [24]  993 	sjmp	00111$
   066E                     994 00105$:
                            995 ;	radio/at.c:227: at_ok();
   066E 12 06 9F      [24]  996 	lcall	_at_ok
                            997 ;	radio/at.c:228: break;
                            998 ;	radio/at.c:229: case '&':
   0671 80 25         [24]  999 	sjmp	00116$
   0673                    1000 00106$:
                           1001 ;	radio/at.c:230: at_ampersand();
   0673 12 09 50      [24] 1002 	lcall	_at_ampersand
                           1003 ;	radio/at.c:231: break;
                           1004 ;	radio/at.c:232: case '+':
   0676 80 20         [24] 1005 	sjmp	00116$
   0678                    1006 00107$:
                           1007 ;	radio/at.c:233: at_plus();
   0678 12 0A 27      [24] 1008 	lcall	_at_plus
                           1009 ;	radio/at.c:234: break;
                           1010 ;	radio/at.c:235: case 'I':
   067B 80 1B         [24] 1011 	sjmp	00116$
   067D                    1012 00108$:
                           1013 ;	radio/at.c:236: at_i();
   067D 12 07 93      [24] 1014 	lcall	_at_i
                           1015 ;	radio/at.c:237: break;
                           1016 ;	radio/at.c:238: case 'O':		// O -> go online (exit command mode)
   0680 80 16         [24] 1017 	sjmp	00116$
   0682                    1018 00109$:
                           1019 ;	radio/at.c:239: at_plus_counter = ATP_COUNT_1S;
   0682 78 15         [12] 1020 	mov	r0,#_at_plus_counter
   0684 74 64         [12] 1021 	mov	a,#0x64
   0686 F2            [24] 1022 	movx	@r0,a
                           1023 ;	radio/at.c:240: at_mode_active = 0;
   0687 C2 00         [12] 1024 	clr	_at_mode_active
                           1025 ;	radio/at.c:241: break;
                           1026 ;	radio/at.c:242: case 'S':
   0689 80 0D         [24] 1027 	sjmp	00116$
   068B                    1028 00110$:
                           1029 ;	radio/at.c:243: at_s();
   068B 12 08 CE      [24] 1030 	lcall	_at_s
                           1031 ;	radio/at.c:244: break;
                           1032 ;	radio/at.c:246: case 'Z':
   068E 80 08         [24] 1033 	sjmp	00116$
   0690                    1034 00111$:
                           1035 ;	radio/at.c:248: RSTSRC |= (1 << 4);
   0690 43 EF 10      [24] 1036 	orl	_RSTSRC,#0x10
   0693                    1037 00122$:
                           1038 ;	radio/at.c:252: default:
   0693 80 FE         [24] 1039 	sjmp	00122$
   0695                    1040 00113$:
                           1041 ;	radio/at.c:253: at_error();
   0695 12 06 C1      [24] 1042 	lcall	_at_error
                           1043 ;	radio/at.c:254: }
   0698                    1044 00116$:
                           1045 ;	radio/at.c:258: at_cmd_len = 0;
   0698 78 12         [12] 1046 	mov	r0,#_at_cmd_len
   069A E4            [12] 1047 	clr	a
   069B F2            [24] 1048 	movx	@r0,a
                           1049 ;	radio/at.c:259: at_cmd_ready = false;
   069C C2 01         [12] 1050 	clr	_at_cmd_ready
   069E 22            [24] 1051 	ret
                           1052 ;------------------------------------------------------------
                           1053 ;Allocation info for local variables in function 'at_ok'
                           1054 ;------------------------------------------------------------
                           1055 ;	radio/at.c:264: at_ok(void)
                           1056 ;	-----------------------------------------
                           1057 ;	 function at_ok
                           1058 ;	-----------------------------------------
   069F                    1059 _at_ok:
                           1060 ;	radio/at.c:266: printf("%s\n", "OK");
   069F 74 EF         [12] 1061 	mov	a,#__str_1
   06A1 C0 E0         [24] 1062 	push	acc
   06A3 74 65         [12] 1063 	mov	a,#(__str_1 >> 8)
   06A5 C0 E0         [24] 1064 	push	acc
   06A7 74 80         [12] 1065 	mov	a,#0x80
   06A9 C0 E0         [24] 1066 	push	acc
   06AB 74 EB         [12] 1067 	mov	a,#__str_0
   06AD C0 E0         [24] 1068 	push	acc
   06AF 74 65         [12] 1069 	mov	a,#(__str_0 >> 8)
   06B1 C0 E0         [24] 1070 	push	acc
   06B3 74 80         [12] 1071 	mov	a,#0x80
   06B5 C0 E0         [24] 1072 	push	acc
   06B7 12 2D B8      [24] 1073 	lcall	_printfl
   06BA E5 81         [12] 1074 	mov	a,sp
   06BC 24 FA         [12] 1075 	add	a,#0xfa
   06BE F5 81         [12] 1076 	mov	sp,a
   06C0 22            [24] 1077 	ret
                           1078 ;------------------------------------------------------------
                           1079 ;Allocation info for local variables in function 'at_error'
                           1080 ;------------------------------------------------------------
                           1081 ;	radio/at.c:270: at_error(void)
                           1082 ;	-----------------------------------------
                           1083 ;	 function at_error
                           1084 ;	-----------------------------------------
   06C1                    1085 _at_error:
                           1086 ;	radio/at.c:272: printf("%s\n", "ERROR");
   06C1 74 F2         [12] 1087 	mov	a,#__str_2
   06C3 C0 E0         [24] 1088 	push	acc
   06C5 74 65         [12] 1089 	mov	a,#(__str_2 >> 8)
   06C7 C0 E0         [24] 1090 	push	acc
   06C9 74 80         [12] 1091 	mov	a,#0x80
   06CB C0 E0         [24] 1092 	push	acc
   06CD 74 EB         [12] 1093 	mov	a,#__str_0
   06CF C0 E0         [24] 1094 	push	acc
   06D1 74 65         [12] 1095 	mov	a,#(__str_0 >> 8)
   06D3 C0 E0         [24] 1096 	push	acc
   06D5 74 80         [12] 1097 	mov	a,#0x80
   06D7 C0 E0         [24] 1098 	push	acc
   06D9 12 2D B8      [24] 1099 	lcall	_printfl
   06DC E5 81         [12] 1100 	mov	a,sp
   06DE 24 FA         [12] 1101 	add	a,#0xfa
   06E0 F5 81         [12] 1102 	mov	sp,a
   06E2 22            [24] 1103 	ret
                           1104 ;------------------------------------------------------------
                           1105 ;Allocation info for local variables in function 'at_parse_number'
                           1106 ;------------------------------------------------------------
                           1107 ;reg                       Allocated to registers r4 r5 r6 r7 
                           1108 ;c                         Allocated to registers r3 
                           1109 ;sloc0                     Allocated to stack - sp +2
                           1110 ;sloc1                     Allocated to stack - sp -3
                           1111 ;------------------------------------------------------------
                           1112 ;	radio/at.c:278: at_parse_number() __reentrant
                           1113 ;	-----------------------------------------
                           1114 ;	 function at_parse_number
                           1115 ;	-----------------------------------------
   06E3                    1116 _at_parse_number:
   06E3 E5 81         [12] 1117 	mov	a,sp
   06E5 24 04         [12] 1118 	add	a,#0x04
   06E7 F5 81         [12] 1119 	mov	sp,a
                           1120 ;	radio/at.c:283: reg = 0;
   06E9 7C 00         [12] 1121 	mov	r4,#0x00
   06EB 7D 00         [12] 1122 	mov	r5,#0x00
   06ED 7E 00         [12] 1123 	mov	r6,#0x00
   06EF 7F 00         [12] 1124 	mov	r7,#0x00
   06F1                    1125 00104$:
                           1126 ;	radio/at.c:285: c = at_cmd[idx];
   06F1 78 16         [12] 1127 	mov	r0,#_idx
   06F3 E2            [24] 1128 	movx	a,@r0
   06F4 24 01         [12] 1129 	add	a,#_at_cmd
   06F6 F9            [12] 1130 	mov	r1,a
   06F7 E3            [24] 1131 	movx	a,@r1
                           1132 ;	radio/at.c:286: if (!isdigit(c))
   06F8 FB            [12] 1133 	mov	r3,a
   06F9 F5 82         [12] 1134 	mov	dpl,a
   06FB C0 07         [24] 1135 	push	ar7
   06FD C0 06         [24] 1136 	push	ar6
   06FF C0 05         [24] 1137 	push	ar5
   0701 C0 04         [24] 1138 	push	ar4
   0703 C0 03         [24] 1139 	push	ar3
   0705 12 5E 17      [24] 1140 	lcall	_isdigit
   0708 E5 82         [12] 1141 	mov	a,dpl
   070A D0 03         [24] 1142 	pop	ar3
   070C D0 04         [24] 1143 	pop	ar4
   070E D0 05         [24] 1144 	pop	ar5
   0710 D0 06         [24] 1145 	pop	ar6
   0712 D0 07         [24] 1146 	pop	ar7
   0714 60 6D         [24] 1147 	jz	00103$
                           1148 ;	radio/at.c:288: reg = (reg * 10) + (c - '0');
   0716 90 05 D7      [24] 1149 	mov	dptr,#__mullong_PARM_2
   0719 EC            [12] 1150 	mov	a,r4
   071A F0            [24] 1151 	movx	@dptr,a
   071B ED            [12] 1152 	mov	a,r5
   071C A3            [24] 1153 	inc	dptr
   071D F0            [24] 1154 	movx	@dptr,a
   071E EE            [12] 1155 	mov	a,r6
   071F A3            [24] 1156 	inc	dptr
   0720 F0            [24] 1157 	movx	@dptr,a
   0721 EF            [12] 1158 	mov	a,r7
   0722 A3            [24] 1159 	inc	dptr
   0723 F0            [24] 1160 	movx	@dptr,a
   0724 90 00 0A      [24] 1161 	mov	dptr,#(0x0A&0x00ff)
   0727 E4            [12] 1162 	clr	a
   0728 F5 F0         [12] 1163 	mov	b,a
   072A C0 03         [24] 1164 	push	ar3
   072C 12 5F 98      [24] 1165 	lcall	__mullong
   072F AF 82         [24] 1166 	mov	r7,dpl
   0731 AE 83         [24] 1167 	mov	r6,dph
   0733 AD F0         [24] 1168 	mov	r5,b
   0735 FC            [12] 1169 	mov	r4,a
   0736 D0 03         [24] 1170 	pop	ar3
   0738 8B 02         [24] 1171 	mov	ar2,r3
   073A 7B 00         [12] 1172 	mov	r3,#0x00
   073C EA            [12] 1173 	mov	a,r2
   073D 24 D0         [12] 1174 	add	a,#0xD0
   073F FA            [12] 1175 	mov	r2,a
   0740 EB            [12] 1176 	mov	a,r3
   0741 34 FF         [12] 1177 	addc	a,#0xFF
   0743 FB            [12] 1178 	mov	r3,a
   0744 E5 81         [12] 1179 	mov	a,sp
   0746 24 FD         [12] 1180 	add	a,#0xfd
   0748 F8            [12] 1181 	mov	r0,a
   0749 A6 02         [24] 1182 	mov	@r0,ar2
   074B 08            [12] 1183 	inc	r0
   074C A6 03         [24] 1184 	mov	@r0,ar3
   074E EB            [12] 1185 	mov	a,r3
   074F 33            [12] 1186 	rlc	a
   0750 95 E0         [12] 1187 	subb	a,acc
   0752 08            [12] 1188 	inc	r0
   0753 F6            [12] 1189 	mov	@r0,a
   0754 08            [12] 1190 	inc	r0
   0755 F6            [12] 1191 	mov	@r0,a
   0756 E5 81         [12] 1192 	mov	a,sp
   0758 24 FD         [12] 1193 	add	a,#0xfd
   075A F8            [12] 1194 	mov	r0,a
   075B E6            [12] 1195 	mov	a,@r0
   075C 2F            [12] 1196 	add	a,r7
   075D F6            [12] 1197 	mov	@r0,a
   075E 08            [12] 1198 	inc	r0
   075F E6            [12] 1199 	mov	a,@r0
   0760 3E            [12] 1200 	addc	a,r6
   0761 F6            [12] 1201 	mov	@r0,a
   0762 08            [12] 1202 	inc	r0
   0763 E6            [12] 1203 	mov	a,@r0
   0764 3D            [12] 1204 	addc	a,r5
   0765 F6            [12] 1205 	mov	@r0,a
   0766 08            [12] 1206 	inc	r0
   0767 E6            [12] 1207 	mov	a,@r0
   0768 3C            [12] 1208 	addc	a,r4
   0769 F6            [12] 1209 	mov	@r0,a
   076A E5 81         [12] 1210 	mov	a,sp
   076C 24 FD         [12] 1211 	add	a,#0xfd
   076E F8            [12] 1212 	mov	r0,a
   076F 86 04         [24] 1213 	mov	ar4,@r0
   0771 08            [12] 1214 	inc	r0
   0772 86 05         [24] 1215 	mov	ar5,@r0
   0774 08            [12] 1216 	inc	r0
   0775 86 06         [24] 1217 	mov	ar6,@r0
   0777 08            [12] 1218 	inc	r0
   0778 86 07         [24] 1219 	mov	ar7,@r0
                           1220 ;	radio/at.c:289: idx++;
   077A 78 16         [12] 1221 	mov	r0,#_idx
   077C E2            [24] 1222 	movx	a,@r0
   077D 24 01         [12] 1223 	add	a,#0x01
   077F F2            [24] 1224 	movx	@r0,a
   0780 02 06 F1      [24] 1225 	ljmp	00104$
   0783                    1226 00103$:
                           1227 ;	radio/at.c:291: return reg;
   0783 8C 82         [24] 1228 	mov	dpl,r4
   0785 8D 83         [24] 1229 	mov	dph,r5
   0787 8E F0         [24] 1230 	mov	b,r6
   0789 EF            [12] 1231 	mov	a,r7
   078A C8            [12] 1232 	xch	a,r0
   078B E5 81         [12] 1233 	mov	a,sp
   078D 24 FC         [12] 1234 	add	a,#0xFC
   078F F5 81         [12] 1235 	mov	sp,a
   0791 C8            [12] 1236 	xch	a,r0
   0792 22            [24] 1237 	ret
                           1238 ;------------------------------------------------------------
                           1239 ;Allocation info for local variables in function 'at_i'
                           1240 ;------------------------------------------------------------
                           1241 ;sloc0                     Allocated with name '_at_i_sloc0_1_0'
                           1242 ;id                        Allocated with name '_at_i_id_3_157'
                           1243 ;------------------------------------------------------------
                           1244 ;	radio/at.c:295: at_i(void)
                           1245 ;	-----------------------------------------
                           1246 ;	 function at_i
                           1247 ;	-----------------------------------------
   0793                    1248 _at_i:
                           1249 ;	radio/at.c:297: switch (at_cmd[3]) {
   0793 78 04         [12] 1250 	mov	r0,#(_at_cmd + 0x0003)
   0795 E2            [24] 1251 	movx	a,@r0
   0796 FF            [12] 1252 	mov	r7,a
   0797 60 30         [24] 1253 	jz	00102$
   0799 BF 30 02      [24] 1254 	cjne	r7,#0x30,00152$
   079C 80 2B         [24] 1255 	sjmp	00102$
   079E                    1256 00152$:
   079E BF 31 02      [24] 1257 	cjne	r7,#0x31,00153$
   07A1 80 48         [24] 1258 	sjmp	00103$
   07A3                    1259 00153$:
   07A3 BF 32 02      [24] 1260 	cjne	r7,#0x32,00154$
   07A6 80 65         [24] 1261 	sjmp	00104$
   07A8                    1262 00154$:
   07A8 BF 33 03      [24] 1263 	cjne	r7,#0x33,00155$
   07AB 02 08 2A      [24] 1264 	ljmp	00105$
   07AE                    1265 00155$:
   07AE BF 34 03      [24] 1266 	cjne	r7,#0x34,00156$
   07B1 02 08 4A      [24] 1267 	ljmp	00106$
   07B4                    1268 00156$:
   07B4 BF 35 03      [24] 1269 	cjne	r7,#0x35,00157$
   07B7 02 08 6A      [24] 1270 	ljmp	00126$
   07BA                    1271 00157$:
   07BA BF 36 03      [24] 1272 	cjne	r7,#0x36,00158$
   07BD 02 08 C5      [24] 1273 	ljmp	00109$
   07C0                    1274 00158$:
   07C0 BF 37 03      [24] 1275 	cjne	r7,#0x37,00159$
   07C3 02 08 C8      [24] 1276 	ljmp	00110$
   07C6                    1277 00159$:
   07C6 02 08 CB      [24] 1278 	ljmp	00111$
                           1279 ;	radio/at.c:299: case '0':
   07C9                    1280 00102$:
                           1281 ;	radio/at.c:300: printf("%s\n", g_banner_string);
   07C9 74 50         [12] 1282 	mov	a,#_g_banner_string
   07CB C0 E0         [24] 1283 	push	acc
   07CD 74 C8         [12] 1284 	mov	a,#(_g_banner_string >> 8)
   07CF C0 E0         [24] 1285 	push	acc
   07D1 74 80         [12] 1286 	mov	a,#0x80
   07D3 C0 E0         [24] 1287 	push	acc
   07D5 74 EB         [12] 1288 	mov	a,#__str_0
   07D7 C0 E0         [24] 1289 	push	acc
   07D9 74 65         [12] 1290 	mov	a,#(__str_0 >> 8)
   07DB C0 E0         [24] 1291 	push	acc
   07DD 74 80         [12] 1292 	mov	a,#0x80
   07DF C0 E0         [24] 1293 	push	acc
   07E1 12 2D B8      [24] 1294 	lcall	_printfl
   07E4 E5 81         [12] 1295 	mov	a,sp
   07E6 24 FA         [12] 1296 	add	a,#0xfa
   07E8 F5 81         [12] 1297 	mov	sp,a
                           1298 ;	radio/at.c:301: return;
   07EA 22            [24] 1299 	ret
                           1300 ;	radio/at.c:302: case '1':
   07EB                    1301 00103$:
                           1302 ;	radio/at.c:303: printf("%s\n", g_version_string);
   07EB 74 62         [12] 1303 	mov	a,#_g_version_string
   07ED C0 E0         [24] 1304 	push	acc
   07EF 74 C8         [12] 1305 	mov	a,#(_g_version_string >> 8)
   07F1 C0 E0         [24] 1306 	push	acc
   07F3 74 80         [12] 1307 	mov	a,#0x80
   07F5 C0 E0         [24] 1308 	push	acc
   07F7 74 EB         [12] 1309 	mov	a,#__str_0
   07F9 C0 E0         [24] 1310 	push	acc
   07FB 74 65         [12] 1311 	mov	a,#(__str_0 >> 8)
   07FD C0 E0         [24] 1312 	push	acc
   07FF 74 80         [12] 1313 	mov	a,#0x80
   0801 C0 E0         [24] 1314 	push	acc
   0803 12 2D B8      [24] 1315 	lcall	_printfl
   0806 E5 81         [12] 1316 	mov	a,sp
   0808 24 FA         [12] 1317 	add	a,#0xfa
   080A F5 81         [12] 1318 	mov	sp,a
                           1319 ;	radio/at.c:304: return;
   080C 22            [24] 1320 	ret
                           1321 ;	radio/at.c:305: case '2':
   080D                    1322 00104$:
                           1323 ;	radio/at.c:306: printf("%u\n", BOARD_ID);
   080D 74 42         [12] 1324 	mov	a,#0x42
   080F C0 E0         [24] 1325 	push	acc
   0811 E4            [12] 1326 	clr	a
   0812 C0 E0         [24] 1327 	push	acc
   0814 74 F8         [12] 1328 	mov	a,#__str_3
   0816 C0 E0         [24] 1329 	push	acc
   0818 74 65         [12] 1330 	mov	a,#(__str_3 >> 8)
   081A C0 E0         [24] 1331 	push	acc
   081C 74 80         [12] 1332 	mov	a,#0x80
   081E C0 E0         [24] 1333 	push	acc
   0820 12 2D B8      [24] 1334 	lcall	_printfl
   0823 E5 81         [12] 1335 	mov	a,sp
   0825 24 FB         [12] 1336 	add	a,#0xfb
   0827 F5 81         [12] 1337 	mov	sp,a
                           1338 ;	radio/at.c:307: break;
   0829 22            [24] 1339 	ret
                           1340 ;	radio/at.c:308: case '3':
   082A                    1341 00105$:
                           1342 ;	radio/at.c:309: printf("%u\n", g_board_frequency);
   082A 78 32         [12] 1343 	mov	r0,#_g_board_frequency
   082C E2            [24] 1344 	movx	a,@r0
   082D FE            [12] 1345 	mov	r6,a
   082E 7F 00         [12] 1346 	mov	r7,#0x00
   0830 C0 06         [24] 1347 	push	ar6
   0832 C0 07         [24] 1348 	push	ar7
   0834 74 F8         [12] 1349 	mov	a,#__str_3
   0836 C0 E0         [24] 1350 	push	acc
   0838 74 65         [12] 1351 	mov	a,#(__str_3 >> 8)
   083A C0 E0         [24] 1352 	push	acc
   083C 74 80         [12] 1353 	mov	a,#0x80
   083E C0 E0         [24] 1354 	push	acc
   0840 12 2D B8      [24] 1355 	lcall	_printfl
   0843 E5 81         [12] 1356 	mov	a,sp
   0845 24 FB         [12] 1357 	add	a,#0xfb
   0847 F5 81         [12] 1358 	mov	sp,a
                           1359 ;	radio/at.c:310: break;
   0849 22            [24] 1360 	ret
                           1361 ;	radio/at.c:311: case '4':
   084A                    1362 00106$:
                           1363 ;	radio/at.c:312: printf("%u\n", g_board_bl_version);
   084A 78 33         [12] 1364 	mov	r0,#_g_board_bl_version
   084C E2            [24] 1365 	movx	a,@r0
   084D FE            [12] 1366 	mov	r6,a
   084E 7F 00         [12] 1367 	mov	r7,#0x00
   0850 C0 06         [24] 1368 	push	ar6
   0852 C0 07         [24] 1369 	push	ar7
   0854 74 F8         [12] 1370 	mov	a,#__str_3
   0856 C0 E0         [24] 1371 	push	acc
   0858 74 65         [12] 1372 	mov	a,#(__str_3 >> 8)
   085A C0 E0         [24] 1373 	push	acc
   085C 74 80         [12] 1374 	mov	a,#0x80
   085E C0 E0         [24] 1375 	push	acc
   0860 12 2D B8      [24] 1376 	lcall	_printfl
   0863 E5 81         [12] 1377 	mov	a,sp
   0865 24 FB         [12] 1378 	add	a,#0xfb
   0867 F5 81         [12] 1379 	mov	sp,a
                           1380 ;	radio/at.c:313: return;
                           1381 ;	radio/at.c:317: for (id = 0; id < PARAM_MAX; id++) {
   0869 22            [24] 1382 	ret
   086A                    1383 00126$:
   086A 7F 00         [12] 1384 	mov	r7,#0x00
   086C                    1385 00113$:
                           1386 ;	radio/at.c:318: printf("S%u: %s=%lu\n", 
   086C 8F 82         [24] 1387 	mov	dpl,r7
   086E C0 07         [24] 1388 	push	ar7
   0870 12 27 66      [24] 1389 	lcall	_param_get
   0873 85 82 08      [24] 1390 	mov	_at_i_sloc0_1_0,dpl
   0876 85 83 09      [24] 1391 	mov	(_at_i_sloc0_1_0 + 1),dph
   0879 85 F0 0A      [24] 1392 	mov	(_at_i_sloc0_1_0 + 2),b
   087C F5 0B         [12] 1393 	mov	(_at_i_sloc0_1_0 + 3),a
   087E D0 07         [24] 1394 	pop	ar7
   0880 8F 82         [24] 1395 	mov	dpl,r7
   0882 C0 07         [24] 1396 	push	ar7
   0884 12 2A 45      [24] 1397 	lcall	_param_name
   0887 AA 82         [24] 1398 	mov	r2,dpl
   0889 AD 83         [24] 1399 	mov	r5,dph
   088B AE F0         [24] 1400 	mov	r6,b
   088D D0 07         [24] 1401 	pop	ar7
   088F 8F 03         [24] 1402 	mov	ar3,r7
   0891 7C 00         [12] 1403 	mov	r4,#0x00
   0893 C0 07         [24] 1404 	push	ar7
   0895 C0 08         [24] 1405 	push	_at_i_sloc0_1_0
   0897 C0 09         [24] 1406 	push	(_at_i_sloc0_1_0 + 1)
   0899 C0 0A         [24] 1407 	push	(_at_i_sloc0_1_0 + 2)
   089B C0 0B         [24] 1408 	push	(_at_i_sloc0_1_0 + 3)
   089D C0 02         [24] 1409 	push	ar2
   089F C0 05         [24] 1410 	push	ar5
   08A1 C0 06         [24] 1411 	push	ar6
   08A3 C0 03         [24] 1412 	push	ar3
   08A5 C0 04         [24] 1413 	push	ar4
   08A7 74 FC         [12] 1414 	mov	a,#__str_4
   08A9 C0 E0         [24] 1415 	push	acc
   08AB 74 65         [12] 1416 	mov	a,#(__str_4 >> 8)
   08AD C0 E0         [24] 1417 	push	acc
   08AF 74 80         [12] 1418 	mov	a,#0x80
   08B1 C0 E0         [24] 1419 	push	acc
   08B3 12 2D B8      [24] 1420 	lcall	_printfl
   08B6 E5 81         [12] 1421 	mov	a,sp
   08B8 24 F4         [12] 1422 	add	a,#0xf4
   08BA F5 81         [12] 1423 	mov	sp,a
   08BC D0 07         [24] 1424 	pop	ar7
                           1425 ;	radio/at.c:317: for (id = 0; id < PARAM_MAX; id++) {
   08BE 0F            [12] 1426 	inc	r7
   08BF BF 0F 00      [24] 1427 	cjne	r7,#0x0F,00160$
   08C2                    1428 00160$:
   08C2 40 A8         [24] 1429 	jc	00113$
                           1430 ;	radio/at.c:323: return;
                           1431 ;	radio/at.c:325: case '6':
   08C4 22            [24] 1432 	ret
   08C5                    1433 00109$:
                           1434 ;	radio/at.c:326: tdm_report_timing();
                           1435 ;	radio/at.c:327: return;
                           1436 ;	radio/at.c:328: case '7':
   08C5 02 55 A5      [24] 1437 	ljmp	_tdm_report_timing
   08C8                    1438 00110$:
                           1439 ;	radio/at.c:329: tdm_show_rssi();
                           1440 ;	radio/at.c:330: return;
                           1441 ;	radio/at.c:331: default:
   08C8 02 45 8F      [24] 1442 	ljmp	_tdm_show_rssi
   08CB                    1443 00111$:
                           1444 ;	radio/at.c:332: at_error();
                           1445 ;	radio/at.c:333: return;
                           1446 ;	radio/at.c:334: }
   08CB 02 06 C1      [24] 1447 	ljmp	_at_error
                           1448 ;------------------------------------------------------------
                           1449 ;Allocation info for local variables in function 'at_s'
                           1450 ;------------------------------------------------------------
                           1451 ;	radio/at.c:338: at_s(void)
                           1452 ;	-----------------------------------------
                           1453 ;	 function at_s
                           1454 ;	-----------------------------------------
   08CE                    1455 _at_s:
                           1456 ;	radio/at.c:344: idx = 3;
   08CE 78 16         [12] 1457 	mov	r0,#_idx
   08D0 74 03         [12] 1458 	mov	a,#0x03
   08D2 F2            [24] 1459 	movx	@r0,a
                           1460 ;	radio/at.c:345: sreg = at_parse_number();
   08D3 12 06 E3      [24] 1461 	lcall	_at_parse_number
   08D6 AC 82         [24] 1462 	mov	r4,dpl
   08D8 AD 83         [24] 1463 	mov	r5,dph
   08DA AE F0         [24] 1464 	mov	r6,b
   08DC FF            [12] 1465 	mov	r7,a
                           1466 ;	radio/at.c:347: if (sreg >= PARAM_MAX) {
   08DD BC 0F 00      [24] 1467 	cjne	r4,#0x0F,00127$
   08E0                    1468 00127$:
   08E0 40 03         [24] 1469 	jc	00102$
                           1470 ;	radio/at.c:348: at_error();
                           1471 ;	radio/at.c:349: return;
   08E2 02 06 C1      [24] 1472 	ljmp	_at_error
   08E5                    1473 00102$:
                           1474 ;	radio/at.c:352: switch (at_cmd[idx]) {
   08E5 78 16         [12] 1475 	mov	r0,#_idx
   08E7 E2            [24] 1476 	movx	a,@r0
   08E8 24 01         [12] 1477 	add	a,#_at_cmd
   08EA F9            [12] 1478 	mov	r1,a
   08EB E3            [24] 1479 	movx	a,@r1
   08EC FF            [12] 1480 	mov	r7,a
   08ED BF 3D 02      [24] 1481 	cjne	r7,#0x3D,00129$
   08F0 80 2D         [24] 1482 	sjmp	00104$
   08F2                    1483 00129$:
   08F2 BF 3F 58      [24] 1484 	cjne	r7,#0x3F,00109$
                           1485 ;	radio/at.c:354: val = param_get(sreg);
   08F5 8C 82         [24] 1486 	mov	dpl,r4
   08F7 12 27 66      [24] 1487 	lcall	_param_get
   08FA AB 82         [24] 1488 	mov	r3,dpl
   08FC AD 83         [24] 1489 	mov	r5,dph
   08FE AE F0         [24] 1490 	mov	r6,b
   0900 FF            [12] 1491 	mov	r7,a
                           1492 ;	radio/at.c:355: printf("%lu\n", val);
   0901 C0 03         [24] 1493 	push	ar3
   0903 C0 05         [24] 1494 	push	ar5
   0905 C0 06         [24] 1495 	push	ar6
   0907 C0 07         [24] 1496 	push	ar7
   0909 74 09         [12] 1497 	mov	a,#__str_5
   090B C0 E0         [24] 1498 	push	acc
   090D 74 66         [12] 1499 	mov	a,#(__str_5 >> 8)
   090F C0 E0         [24] 1500 	push	acc
   0911 74 80         [12] 1501 	mov	a,#0x80
   0913 C0 E0         [24] 1502 	push	acc
   0915 12 2D B8      [24] 1503 	lcall	_printfl
   0918 E5 81         [12] 1504 	mov	a,sp
   091A 24 F9         [12] 1505 	add	a,#0xf9
   091C F5 81         [12] 1506 	mov	sp,a
                           1507 ;	radio/at.c:356: return;
                           1508 ;	radio/at.c:358: case '=':
   091E 22            [24] 1509 	ret
   091F                    1510 00104$:
                           1511 ;	radio/at.c:359: if (sreg > 0) {
   091F EC            [12] 1512 	mov	a,r4
   0920 60 2B         [24] 1513 	jz	00109$
                           1514 ;	radio/at.c:360: idx++;
   0922 78 16         [12] 1515 	mov	r0,#_idx
   0924 E2            [24] 1516 	movx	a,@r0
   0925 24 01         [12] 1517 	add	a,#0x01
   0927 F2            [24] 1518 	movx	@r0,a
                           1519 ;	radio/at.c:361: val = at_parse_number();
   0928 C0 04         [24] 1520 	push	ar4
   092A 12 06 E3      [24] 1521 	lcall	_at_parse_number
   092D AB 82         [24] 1522 	mov	r3,dpl
   092F AD 83         [24] 1523 	mov	r5,dph
   0931 AE F0         [24] 1524 	mov	r6,b
   0933 FF            [12] 1525 	mov	r7,a
   0934 D0 04         [24] 1526 	pop	ar4
                           1527 ;	radio/at.c:362: if (param_set(sreg, val)) {
   0936 78 69         [12] 1528 	mov	r0,#_param_set_PARM_2
   0938 EB            [12] 1529 	mov	a,r3
   0939 F2            [24] 1530 	movx	@r0,a
   093A 08            [12] 1531 	inc	r0
   093B ED            [12] 1532 	mov	a,r5
   093C F2            [24] 1533 	movx	@r0,a
   093D 08            [12] 1534 	inc	r0
   093E EE            [12] 1535 	mov	a,r6
   093F F2            [24] 1536 	movx	@r0,a
   0940 08            [12] 1537 	inc	r0
   0941 EF            [12] 1538 	mov	a,r7
   0942 F2            [24] 1539 	movx	@r0,a
   0943 8C 82         [24] 1540 	mov	dpl,r4
   0945 12 25 C3      [24] 1541 	lcall	_param_set
   0948 50 03         [24] 1542 	jnc	00109$
                           1543 ;	radio/at.c:363: at_ok();
                           1544 ;	radio/at.c:364: return;
                           1545 ;	radio/at.c:368: }
   094A 02 06 9F      [24] 1546 	ljmp	_at_ok
   094D                    1547 00109$:
                           1548 ;	radio/at.c:369: at_error();
   094D 02 06 C1      [24] 1549 	ljmp	_at_error
                           1550 ;------------------------------------------------------------
                           1551 ;Allocation info for local variables in function 'at_ampersand'
                           1552 ;------------------------------------------------------------
                           1553 ;x                         Allocated with name '_at_ampersand_x_3_168'
                           1554 ;------------------------------------------------------------
                           1555 ;	radio/at.c:373: at_ampersand(void)
                           1556 ;	-----------------------------------------
                           1557 ;	 function at_ampersand
                           1558 ;	-----------------------------------------
   0950                    1559 _at_ampersand:
                           1560 ;	radio/at.c:375: switch (at_cmd[3]) {
   0950 78 04         [12] 1561 	mov	r0,#(_at_cmd + 0x0003)
   0952 E2            [24] 1562 	movx	a,@r0
   0953 FF            [12] 1563 	mov	r7,a
   0954 BF 46 02      [24] 1564 	cjne	r7,#0x46,00154$
   0957 80 17         [24] 1565 	sjmp	00101$
   0959                    1566 00154$:
   0959 BF 50 02      [24] 1567 	cjne	r7,#0x50,00155$
   095C 80 4D         [24] 1568 	sjmp	00107$
   095E                    1569 00155$:
   095E BF 54 02      [24] 1570 	cjne	r7,#0x54,00156$
   0961 80 4B         [24] 1571 	sjmp	00108$
   0963                    1572 00156$:
   0963 BF 55 02      [24] 1573 	cjne	r7,#0x55,00157$
   0966 80 14         [24] 1574 	sjmp	00103$
   0968                    1575 00157$:
   0968 BF 57 02      [24] 1576 	cjne	r7,#0x57,00158$
   096B 80 09         [24] 1577 	sjmp	00102$
   096D                    1578 00158$:
   096D 02 0A 24      [24] 1579 	ljmp	00118$
                           1580 ;	radio/at.c:376: case 'F':
   0970                    1581 00101$:
                           1582 ;	radio/at.c:377: param_default();
   0970 12 29 AB      [24] 1583 	lcall	_param_default
                           1584 ;	radio/at.c:378: at_ok();
                           1585 ;	radio/at.c:379: break;
   0973 02 06 9F      [24] 1586 	ljmp	_at_ok
                           1587 ;	radio/at.c:380: case 'W':
   0976                    1588 00102$:
                           1589 ;	radio/at.c:381: param_save();
   0976 12 29 02      [24] 1590 	lcall	_param_save
                           1591 ;	radio/at.c:382: at_ok();
                           1592 ;	radio/at.c:383: break;
   0979 02 06 9F      [24] 1593 	ljmp	_at_ok
                           1594 ;	radio/at.c:385: case 'U':
   097C                    1595 00103$:
                           1596 ;	radio/at.c:386: if (!strcmp(at_cmd + 4, "PDATE")) {
   097C 90 05 CD      [24] 1597 	mov	dptr,#_strcmp_PARM_2
   097F 74 0E         [12] 1598 	mov	a,#__str_6
   0981 F0            [24] 1599 	movx	@dptr,a
   0982 74 66         [12] 1600 	mov	a,#(__str_6 >> 8)
   0984 A3            [24] 1601 	inc	dptr
   0985 F0            [24] 1602 	movx	@dptr,a
   0986 74 80         [12] 1603 	mov	a,#0x80
   0988 A3            [24] 1604 	inc	dptr
   0989 F0            [24] 1605 	movx	@dptr,a
   098A 90 00 05      [24] 1606 	mov	dptr,#(_at_cmd + 0x0004)
   098D 75 F0 60      [24] 1607 	mov	b,#0x60
   0990 12 5E 9B      [24] 1608 	lcall	_strcmp
   0993 E5 82         [12] 1609 	mov	a,dpl
   0995 85 83 F0      [24] 1610 	mov	b,dph
   0998 45 F0         [12] 1611 	orl	a,b
   099A 70 0C         [24] 1612 	jnz	00106$
                           1613 ;	radio/at.c:388: volatile char x = *(__code volatile char *)0xfc00;
   099C 90 FC 00      [24] 1614 	mov	dptr,#0xFC00
   099F E4            [12] 1615 	clr	a
   09A0 93            [24] 1616 	movc	a,@a+dptr
   09A1 FF            [12] 1617 	mov	r7,a
   09A2 90 00 EC      [24] 1618 	mov	dptr,#_at_ampersand_x_3_168
   09A5 F0            [24] 1619 	movx	@dptr,a
   09A6                    1620 00121$:
   09A6 80 FE         [24] 1621 	sjmp	00121$
   09A8                    1622 00106$:
                           1623 ;	radio/at.c:392: at_error();
                           1624 ;	radio/at.c:393: break;
   09A8 02 06 C1      [24] 1625 	ljmp	_at_error
                           1626 ;	radio/at.c:395: case 'P':
   09AB                    1627 00107$:
                           1628 ;	radio/at.c:396: tdm_change_phase();
                           1629 ;	radio/at.c:397: break;
   09AB 02 4A 6D      [24] 1630 	ljmp	_tdm_change_phase
                           1631 ;	radio/at.c:399: case 'T':
   09AE                    1632 00108$:
                           1633 ;	radio/at.c:401: if (!strcmp(at_cmd + 4, "")) {
   09AE 90 05 CD      [24] 1634 	mov	dptr,#_strcmp_PARM_2
   09B1 74 14         [12] 1635 	mov	a,#__str_7
   09B3 F0            [24] 1636 	movx	@dptr,a
   09B4 74 66         [12] 1637 	mov	a,#(__str_7 >> 8)
   09B6 A3            [24] 1638 	inc	dptr
   09B7 F0            [24] 1639 	movx	@dptr,a
   09B8 74 80         [12] 1640 	mov	a,#0x80
   09BA A3            [24] 1641 	inc	dptr
   09BB F0            [24] 1642 	movx	@dptr,a
   09BC 90 00 05      [24] 1643 	mov	dptr,#(_at_cmd + 0x0004)
   09BF 75 F0 60      [24] 1644 	mov	b,#0x60
   09C2 12 5E 9B      [24] 1645 	lcall	_strcmp
   09C5 E5 82         [12] 1646 	mov	a,dpl
   09C7 85 83 F0      [24] 1647 	mov	b,dph
   09CA 45 F0         [12] 1648 	orl	a,b
   09CC 70 05         [24] 1649 	jnz	00116$
                           1650 ;	radio/at.c:403: at_testmode = 0;
   09CE 78 13         [12] 1651 	mov	r0,#_at_testmode
   09D0 E4            [12] 1652 	clr	a
   09D1 F2            [24] 1653 	movx	@r0,a
   09D2 22            [24] 1654 	ret
   09D3                    1655 00116$:
                           1656 ;	radio/at.c:404: } else if (!strcmp(at_cmd + 4, "=RSSI")) {
   09D3 90 05 CD      [24] 1657 	mov	dptr,#_strcmp_PARM_2
   09D6 74 15         [12] 1658 	mov	a,#__str_8
   09D8 F0            [24] 1659 	movx	@dptr,a
   09D9 74 66         [12] 1660 	mov	a,#(__str_8 >> 8)
   09DB A3            [24] 1661 	inc	dptr
   09DC F0            [24] 1662 	movx	@dptr,a
   09DD 74 80         [12] 1663 	mov	a,#0x80
   09DF A3            [24] 1664 	inc	dptr
   09E0 F0            [24] 1665 	movx	@dptr,a
   09E1 90 00 05      [24] 1666 	mov	dptr,#(_at_cmd + 0x0004)
   09E4 75 F0 60      [24] 1667 	mov	b,#0x60
   09E7 12 5E 9B      [24] 1668 	lcall	_strcmp
   09EA E5 82         [12] 1669 	mov	a,dpl
   09EC 85 83 F0      [24] 1670 	mov	b,dph
   09EF 45 F0         [12] 1671 	orl	a,b
   09F1 70 07         [24] 1672 	jnz	00113$
                           1673 ;	radio/at.c:406: at_testmode ^= AT_TEST_RSSI;
   09F3 78 13         [12] 1674 	mov	r0,#_at_testmode
   09F5 E2            [24] 1675 	movx	a,@r0
   09F6 64 01         [12] 1676 	xrl	a,#0x01
   09F8 F2            [24] 1677 	movx	@r0,a
   09F9 22            [24] 1678 	ret
   09FA                    1679 00113$:
                           1680 ;	radio/at.c:407: } else if (!strcmp(at_cmd + 4, "=TDM")) {
   09FA 90 05 CD      [24] 1681 	mov	dptr,#_strcmp_PARM_2
   09FD 74 1B         [12] 1682 	mov	a,#__str_9
   09FF F0            [24] 1683 	movx	@dptr,a
   0A00 74 66         [12] 1684 	mov	a,#(__str_9 >> 8)
   0A02 A3            [24] 1685 	inc	dptr
   0A03 F0            [24] 1686 	movx	@dptr,a
   0A04 74 80         [12] 1687 	mov	a,#0x80
   0A06 A3            [24] 1688 	inc	dptr
   0A07 F0            [24] 1689 	movx	@dptr,a
   0A08 90 00 05      [24] 1690 	mov	dptr,#(_at_cmd + 0x0004)
   0A0B 75 F0 60      [24] 1691 	mov	b,#0x60
   0A0E 12 5E 9B      [24] 1692 	lcall	_strcmp
   0A11 E5 82         [12] 1693 	mov	a,dpl
   0A13 85 83 F0      [24] 1694 	mov	b,dph
   0A16 45 F0         [12] 1695 	orl	a,b
   0A18 70 07         [24] 1696 	jnz	00110$
                           1697 ;	radio/at.c:409: at_testmode ^= AT_TEST_TDM;
   0A1A 78 13         [12] 1698 	mov	r0,#_at_testmode
   0A1C E2            [24] 1699 	movx	a,@r0
   0A1D 64 02         [12] 1700 	xrl	a,#0x02
   0A1F F2            [24] 1701 	movx	@r0,a
   0A20 22            [24] 1702 	ret
   0A21                    1703 00110$:
                           1704 ;	radio/at.c:411: at_error();
                           1705 ;	radio/at.c:413: break;
                           1706 ;	radio/at.c:415: default:
   0A21 02 06 C1      [24] 1707 	ljmp	_at_error
   0A24                    1708 00118$:
                           1709 ;	radio/at.c:416: at_error();
                           1710 ;	radio/at.c:418: }
   0A24 02 06 C1      [24] 1711 	ljmp	_at_error
                           1712 ;------------------------------------------------------------
                           1713 ;Allocation info for local variables in function 'at_plus'
                           1714 ;------------------------------------------------------------
                           1715 ;	radio/at.c:422: at_plus(void)
                           1716 ;	-----------------------------------------
                           1717 ;	 function at_plus
                           1718 ;	-----------------------------------------
   0A27                    1719 _at_plus:
                           1720 ;	radio/at.c:474: at_error();
   0A27 02 06 C1      [24] 1721 	ljmp	_at_error
                           1722 	.area CSEG    (CODE)
                           1723 	.area CONST   (CODE)
   65EB                    1724 __str_0:
   65EB 25 73              1725 	.ascii "%s"
   65ED 0A                 1726 	.db 0x0A
   65EE 00                 1727 	.db 0x00
   65EF                    1728 __str_1:
   65EF 4F 4B              1729 	.ascii "OK"
   65F1 00                 1730 	.db 0x00
   65F2                    1731 __str_2:
   65F2 45 52 52 4F 52     1732 	.ascii "ERROR"
   65F7 00                 1733 	.db 0x00
   65F8                    1734 __str_3:
   65F8 25 75              1735 	.ascii "%u"
   65FA 0A                 1736 	.db 0x0A
   65FB 00                 1737 	.db 0x00
   65FC                    1738 __str_4:
   65FC 53 25 75 3A 20 25  1739 	.ascii "S%u: %s=%lu"
        73 3D 25 6C 75
   6607 0A                 1740 	.db 0x0A
   6608 00                 1741 	.db 0x00
   6609                    1742 __str_5:
   6609 25 6C 75           1743 	.ascii "%lu"
   660C 0A                 1744 	.db 0x0A
   660D 00                 1745 	.db 0x00
   660E                    1746 __str_6:
   660E 50 44 41 54 45     1747 	.ascii "PDATE"
   6613 00                 1748 	.db 0x00
   6614                    1749 __str_7:
   6614 00                 1750 	.db 0x00
   6615                    1751 __str_8:
   6615 3D 52 53 53 49     1752 	.ascii "=RSSI"
   661A 00                 1753 	.db 0x00
   661B                    1754 __str_9:
   661B 3D 54 44 4D        1755 	.ascii "=TDM"
   661F 00                 1756 	.db 0x00
                           1757 	.area XINIT   (CODE)
                           1758 	.area CABS    (ABS,CODE)
