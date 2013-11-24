                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:08 2013
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
                             16 	.globl _radio_set_diversity
                             17 	.globl _printfl
                             18 	.globl _calibration_lock
                             19 	.globl _calibration_get
                             20 	.globl _calibration_set
                             21 	.globl _param_default
                             22 	.globl _param_save
                             23 	.globl _param_name
                             24 	.globl _param_get
                             25 	.globl _param_set
                             26 	.globl _strcmp
                             27 	.globl _putchar
                             28 	.globl _isprint
                             29 	.globl _islower
                             30 	.globl _isdigit
                             31 	.globl _TDM_SYNC_PIN
                             32 	.globl _NSS1
                             33 	.globl _IRQ
                             34 	.globl _PA_ENABLE
                             35 	.globl _PIN_ENABLE
                             36 	.globl _PIN_CONFIG
                             37 	.globl _LED_GREEN
                             38 	.globl _LED_RED
                             39 	.globl _SPI0EN
                             40 	.globl _TXBMT0
                             41 	.globl _NSS0MD0
                             42 	.globl _NSS0MD1
                             43 	.globl _RXOVRN0
                             44 	.globl _MODF0
                             45 	.globl _WCOL0
                             46 	.globl _SPIF0
                             47 	.globl _AD0CM0
                             48 	.globl _AD0CM1
                             49 	.globl _AD0CM2
                             50 	.globl _AD0WINT
                             51 	.globl _AD0BUSY
                             52 	.globl _AD0INT
                             53 	.globl _BURSTEN
                             54 	.globl _AD0EN
                             55 	.globl _CCF0
                             56 	.globl _CCF1
                             57 	.globl _CCF2
                             58 	.globl _CCF3
                             59 	.globl _CCF4
                             60 	.globl _CCF5
                             61 	.globl _CR
                             62 	.globl _CF
                             63 	.globl _P
                             64 	.globl _F1
                             65 	.globl _OV
                             66 	.globl _RS0
                             67 	.globl _RS1
                             68 	.globl _F0
                             69 	.globl _AC
                             70 	.globl _CY
                             71 	.globl _T2XCLK
                             72 	.globl _T2RCLK
                             73 	.globl _TR2
                             74 	.globl _T2SPLIT
                             75 	.globl _TF2CEN
                             76 	.globl _TF2LEN
                             77 	.globl _TF2L
                             78 	.globl _TF2H
                             79 	.globl _SI
                             80 	.globl _ACK
                             81 	.globl _ARBLOST
                             82 	.globl _ACKRQ
                             83 	.globl _STO
                             84 	.globl _STA
                             85 	.globl _TXMODE
                             86 	.globl _MASTER
                             87 	.globl _PX0
                             88 	.globl _PT0
                             89 	.globl _PX1
                             90 	.globl _PT1
                             91 	.globl _PS0
                             92 	.globl _PT2
                             93 	.globl _PSPI0
                             94 	.globl _SPI1EN
                             95 	.globl _TXBMT1
                             96 	.globl _NSS1MD0
                             97 	.globl _NSS1MD1
                             98 	.globl _RXOVRN1
                             99 	.globl _MODF1
                            100 	.globl _WCOL1
                            101 	.globl _SPIF1
                            102 	.globl _EX0
                            103 	.globl _ET0
                            104 	.globl _EX1
                            105 	.globl _ET1
                            106 	.globl _ES0
                            107 	.globl _ET2
                            108 	.globl _ESPI0
                            109 	.globl _EA
                            110 	.globl _RI0
                            111 	.globl _TI0
                            112 	.globl _RB80
                            113 	.globl _TB80
                            114 	.globl _REN0
                            115 	.globl _MCE0
                            116 	.globl _S0MODE
                            117 	.globl _CRC0VAL
                            118 	.globl _CRC0INIT
                            119 	.globl _CRC0SEL
                            120 	.globl _IT0
                            121 	.globl _IE0
                            122 	.globl _IT1
                            123 	.globl _IE1
                            124 	.globl _TR0
                            125 	.globl _TF0
                            126 	.globl _TR1
                            127 	.globl _TF1
                            128 	.globl _PCA0CP4
                            129 	.globl _PCA0CP0
                            130 	.globl _PCA0
                            131 	.globl _PCA0CP3
                            132 	.globl _PCA0CP2
                            133 	.globl _PCA0CP1
                            134 	.globl _PCA0CP5
                            135 	.globl _TMR2
                            136 	.globl _TMR2RL
                            137 	.globl _ADC0LT
                            138 	.globl _ADC0GT
                            139 	.globl _ADC0
                            140 	.globl _TMR3
                            141 	.globl _TMR3RL
                            142 	.globl _TOFF
                            143 	.globl _DP
                            144 	.globl _VDM0CN
                            145 	.globl _PCA0CPH4
                            146 	.globl _PCA0CPL4
                            147 	.globl _PCA0CPH0
                            148 	.globl _PCA0CPL0
                            149 	.globl _PCA0H
                            150 	.globl _PCA0L
                            151 	.globl _SPI0CN
                            152 	.globl _EIP2
                            153 	.globl _EIP1
                            154 	.globl _SMB0ADM
                            155 	.globl _SMB0ADR
                            156 	.globl _P2MDIN
                            157 	.globl _P1MDIN
                            158 	.globl _P0MDIN
                            159 	.globl _B
                            160 	.globl _RSTSRC
                            161 	.globl _PCA0CPH3
                            162 	.globl _PCA0CPL3
                            163 	.globl _PCA0CPH2
                            164 	.globl _PCA0CPL2
                            165 	.globl _PCA0CPH1
                            166 	.globl _PCA0CPL1
                            167 	.globl _ADC0CN
                            168 	.globl _EIE2
                            169 	.globl _EIE1
                            170 	.globl _FLWR
                            171 	.globl _IT01CF
                            172 	.globl _XBR2
                            173 	.globl _XBR1
                            174 	.globl _XBR0
                            175 	.globl _ACC
                            176 	.globl _PCA0PWM
                            177 	.globl _PCA0CPM4
                            178 	.globl _PCA0CPM3
                            179 	.globl _PCA0CPM2
                            180 	.globl _PCA0CPM1
                            181 	.globl _PCA0CPM0
                            182 	.globl _PCA0MD
                            183 	.globl _PCA0CN
                            184 	.globl _P0MAT
                            185 	.globl _P2SKIP
                            186 	.globl _P1SKIP
                            187 	.globl _P0SKIP
                            188 	.globl _PCA0CPH5
                            189 	.globl _PCA0CPL5
                            190 	.globl _REF0CN
                            191 	.globl _PSW
                            192 	.globl _P1MAT
                            193 	.globl _PCA0CPM5
                            194 	.globl _TMR2H
                            195 	.globl _TMR2L
                            196 	.globl _TMR2RLH
                            197 	.globl _TMR2RLL
                            198 	.globl _REG0CN
                            199 	.globl _TMR2CN
                            200 	.globl _P0MASK
                            201 	.globl _ADC0LTH
                            202 	.globl _ADC0LTL
                            203 	.globl _ADC0GTH
                            204 	.globl _ADC0GTL
                            205 	.globl _SMB0DAT
                            206 	.globl _SMB0CF
                            207 	.globl _SMB0CN
                            208 	.globl _P1MASK
                            209 	.globl _ADC0H
                            210 	.globl _ADC0L
                            211 	.globl _ADC0TK
                            212 	.globl _ADC0CF
                            213 	.globl _ADC0MX
                            214 	.globl _ADC0PWR
                            215 	.globl _ADC0AC
                            216 	.globl _IREF0CN
                            217 	.globl _IP
                            218 	.globl _FLKEY
                            219 	.globl _FLSCL
                            220 	.globl _PMU0CF
                            221 	.globl _OSCICL
                            222 	.globl _OSCICN
                            223 	.globl _OSCXCN
                            224 	.globl _SPI1CN
                            225 	.globl _ONESHOT
                            226 	.globl _EMI0TC
                            227 	.globl _RTC0KEY
                            228 	.globl _RTC0DAT
                            229 	.globl _RTC0ADR
                            230 	.globl _EMI0CF
                            231 	.globl _EMI0CN
                            232 	.globl _CLKSEL
                            233 	.globl _IE
                            234 	.globl _SFRPAGE
                            235 	.globl _P2DRV
                            236 	.globl _P2MDOUT
                            237 	.globl _P1DRV
                            238 	.globl _P1MDOUT
                            239 	.globl _P0DRV
                            240 	.globl _P0MDOUT
                            241 	.globl _SPI0DAT
                            242 	.globl _SPI0CKR
                            243 	.globl _SPI0CFG
                            244 	.globl _P2
                            245 	.globl _CPT0MX
                            246 	.globl _CPT1MX
                            247 	.globl _CPT0MD
                            248 	.globl _CPT1MD
                            249 	.globl _CPT0CN
                            250 	.globl _CPT1CN
                            251 	.globl _SBUF0
                            252 	.globl _SCON0
                            253 	.globl _CRC0CNT
                            254 	.globl _DC0CN
                            255 	.globl _CRC0AUTO
                            256 	.globl _DC0CF
                            257 	.globl _TMR3H
                            258 	.globl _CRC0FLIP
                            259 	.globl _TMR3L
                            260 	.globl _CRC0IN
                            261 	.globl _TMR3RLH
                            262 	.globl _CRC0CN
                            263 	.globl _TMR3RLL
                            264 	.globl _CRC0DAT
                            265 	.globl _TMR3CN
                            266 	.globl _P1
                            267 	.globl _PSCTL
                            268 	.globl _CKCON
                            269 	.globl _TH1
                            270 	.globl _TH0
                            271 	.globl _TL1
                            272 	.globl _TL0
                            273 	.globl _TMOD
                            274 	.globl _TCON
                            275 	.globl _PCON
                            276 	.globl _TOFFH
                            277 	.globl _SPI1DAT
                            278 	.globl _TOFFL
                            279 	.globl _SPI1CKR
                            280 	.globl _SPI1CFG
                            281 	.globl _DPH
                            282 	.globl _DPL
                            283 	.globl _SP
                            284 	.globl _P0
                            285 	.globl _idx
                            286 	.globl _at_testmode
                            287 	.globl _at_cmd_len
                            288 	.globl _at_cmd
                            289 	.globl _pdata_canary
                            290 	.globl _at_cmd_ready
                            291 	.globl _at_mode_active
                            292 	.globl _at_input
                            293 	.globl _at_plus_detector
                            294 	.globl _at_timer
                            295 	.globl _at_command
                            296 ;--------------------------------------------------------
                            297 ; special function registers
                            298 ;--------------------------------------------------------
                            299 	.area RSEG    (ABS,DATA)
   0000                     300 	.org 0x0000
                     0080   301 _P0	=	0x0080
                     0081   302 _SP	=	0x0081
                     0082   303 _DPL	=	0x0082
                     0083   304 _DPH	=	0x0083
                     0084   305 _SPI1CFG	=	0x0084
                     0085   306 _SPI1CKR	=	0x0085
                     0085   307 _TOFFL	=	0x0085
                     0086   308 _SPI1DAT	=	0x0086
                     0086   309 _TOFFH	=	0x0086
                     0087   310 _PCON	=	0x0087
                     0088   311 _TCON	=	0x0088
                     0089   312 _TMOD	=	0x0089
                     008A   313 _TL0	=	0x008a
                     008B   314 _TL1	=	0x008b
                     008C   315 _TH0	=	0x008c
                     008D   316 _TH1	=	0x008d
                     008E   317 _CKCON	=	0x008e
                     008F   318 _PSCTL	=	0x008f
                     0090   319 _P1	=	0x0090
                     0091   320 _TMR3CN	=	0x0091
                     0091   321 _CRC0DAT	=	0x0091
                     0092   322 _TMR3RLL	=	0x0092
                     0092   323 _CRC0CN	=	0x0092
                     0093   324 _TMR3RLH	=	0x0093
                     0093   325 _CRC0IN	=	0x0093
                     0094   326 _TMR3L	=	0x0094
                     0095   327 _CRC0FLIP	=	0x0095
                     0095   328 _TMR3H	=	0x0095
                     0096   329 _DC0CF	=	0x0096
                     0096   330 _CRC0AUTO	=	0x0096
                     0097   331 _DC0CN	=	0x0097
                     0097   332 _CRC0CNT	=	0x0097
                     0098   333 _SCON0	=	0x0098
                     0099   334 _SBUF0	=	0x0099
                     009A   335 _CPT1CN	=	0x009a
                     009B   336 _CPT0CN	=	0x009b
                     009C   337 _CPT1MD	=	0x009c
                     009D   338 _CPT0MD	=	0x009d
                     009E   339 _CPT1MX	=	0x009e
                     009F   340 _CPT0MX	=	0x009f
                     00A0   341 _P2	=	0x00a0
                     00A1   342 _SPI0CFG	=	0x00a1
                     00A2   343 _SPI0CKR	=	0x00a2
                     00A3   344 _SPI0DAT	=	0x00a3
                     00A4   345 _P0MDOUT	=	0x00a4
                     00A4   346 _P0DRV	=	0x00a4
                     00A5   347 _P1MDOUT	=	0x00a5
                     00A5   348 _P1DRV	=	0x00a5
                     00A6   349 _P2MDOUT	=	0x00a6
                     00A6   350 _P2DRV	=	0x00a6
                     00A7   351 _SFRPAGE	=	0x00a7
                     00A8   352 _IE	=	0x00a8
                     00A9   353 _CLKSEL	=	0x00a9
                     00AA   354 _EMI0CN	=	0x00aa
                     00AB   355 _EMI0CF	=	0x00ab
                     00AC   356 _RTC0ADR	=	0x00ac
                     00AD   357 _RTC0DAT	=	0x00ad
                     00AE   358 _RTC0KEY	=	0x00ae
                     00AF   359 _EMI0TC	=	0x00af
                     00AF   360 _ONESHOT	=	0x00af
                     00B0   361 _SPI1CN	=	0x00b0
                     00B1   362 _OSCXCN	=	0x00b1
                     00B2   363 _OSCICN	=	0x00b2
                     00B3   364 _OSCICL	=	0x00b3
                     00B5   365 _PMU0CF	=	0x00b5
                     00B6   366 _FLSCL	=	0x00b6
                     00B7   367 _FLKEY	=	0x00b7
                     00B8   368 _IP	=	0x00b8
                     00B9   369 _IREF0CN	=	0x00b9
                     00BA   370 _ADC0AC	=	0x00ba
                     00BA   371 _ADC0PWR	=	0x00ba
                     00BB   372 _ADC0MX	=	0x00bb
                     00BC   373 _ADC0CF	=	0x00bc
                     00BD   374 _ADC0TK	=	0x00bd
                     00BD   375 _ADC0L	=	0x00bd
                     00BE   376 _ADC0H	=	0x00be
                     00BF   377 _P1MASK	=	0x00bf
                     00C0   378 _SMB0CN	=	0x00c0
                     00C1   379 _SMB0CF	=	0x00c1
                     00C2   380 _SMB0DAT	=	0x00c2
                     00C3   381 _ADC0GTL	=	0x00c3
                     00C4   382 _ADC0GTH	=	0x00c4
                     00C5   383 _ADC0LTL	=	0x00c5
                     00C6   384 _ADC0LTH	=	0x00c6
                     00C7   385 _P0MASK	=	0x00c7
                     00C8   386 _TMR2CN	=	0x00c8
                     00C9   387 _REG0CN	=	0x00c9
                     00CA   388 _TMR2RLL	=	0x00ca
                     00CB   389 _TMR2RLH	=	0x00cb
                     00CC   390 _TMR2L	=	0x00cc
                     00CD   391 _TMR2H	=	0x00cd
                     00CE   392 _PCA0CPM5	=	0x00ce
                     00CF   393 _P1MAT	=	0x00cf
                     00D0   394 _PSW	=	0x00d0
                     00D1   395 _REF0CN	=	0x00d1
                     00D2   396 _PCA0CPL5	=	0x00d2
                     00D3   397 _PCA0CPH5	=	0x00d3
                     00D4   398 _P0SKIP	=	0x00d4
                     00D5   399 _P1SKIP	=	0x00d5
                     00D6   400 _P2SKIP	=	0x00d6
                     00D7   401 _P0MAT	=	0x00d7
                     00D8   402 _PCA0CN	=	0x00d8
                     00D9   403 _PCA0MD	=	0x00d9
                     00DA   404 _PCA0CPM0	=	0x00da
                     00DB   405 _PCA0CPM1	=	0x00db
                     00DC   406 _PCA0CPM2	=	0x00dc
                     00DD   407 _PCA0CPM3	=	0x00dd
                     00DE   408 _PCA0CPM4	=	0x00de
                     00DF   409 _PCA0PWM	=	0x00df
                     00E0   410 _ACC	=	0x00e0
                     00E1   411 _XBR0	=	0x00e1
                     00E2   412 _XBR1	=	0x00e2
                     00E3   413 _XBR2	=	0x00e3
                     00E4   414 _IT01CF	=	0x00e4
                     00E5   415 _FLWR	=	0x00e5
                     00E6   416 _EIE1	=	0x00e6
                     00E7   417 _EIE2	=	0x00e7
                     00E8   418 _ADC0CN	=	0x00e8
                     00E9   419 _PCA0CPL1	=	0x00e9
                     00EA   420 _PCA0CPH1	=	0x00ea
                     00EB   421 _PCA0CPL2	=	0x00eb
                     00EC   422 _PCA0CPH2	=	0x00ec
                     00ED   423 _PCA0CPL3	=	0x00ed
                     00EE   424 _PCA0CPH3	=	0x00ee
                     00EF   425 _RSTSRC	=	0x00ef
                     00F0   426 _B	=	0x00f0
                     00F1   427 _P0MDIN	=	0x00f1
                     00F2   428 _P1MDIN	=	0x00f2
                     00F3   429 _P2MDIN	=	0x00f3
                     00F4   430 _SMB0ADR	=	0x00f4
                     00F5   431 _SMB0ADM	=	0x00f5
                     00F6   432 _EIP1	=	0x00f6
                     00F7   433 _EIP2	=	0x00f7
                     00F8   434 _SPI0CN	=	0x00f8
                     00F9   435 _PCA0L	=	0x00f9
                     00FA   436 _PCA0H	=	0x00fa
                     00FB   437 _PCA0CPL0	=	0x00fb
                     00FC   438 _PCA0CPH0	=	0x00fc
                     00FD   439 _PCA0CPL4	=	0x00fd
                     00FE   440 _PCA0CPH4	=	0x00fe
                     00FF   441 _VDM0CN	=	0x00ff
                     8382   442 _DP	=	0x8382
                     8685   443 _TOFF	=	0x8685
                     9392   444 _TMR3RL	=	0x9392
                     9594   445 _TMR3	=	0x9594
                     BEBD   446 _ADC0	=	0xbebd
                     C4C3   447 _ADC0GT	=	0xc4c3
                     C6C5   448 _ADC0LT	=	0xc6c5
                     CBCA   449 _TMR2RL	=	0xcbca
                     CDCC   450 _TMR2	=	0xcdcc
                     D3D2   451 _PCA0CP5	=	0xd3d2
                     EAE9   452 _PCA0CP1	=	0xeae9
                     ECEB   453 _PCA0CP2	=	0xeceb
                     EEED   454 _PCA0CP3	=	0xeeed
                     FAF9   455 _PCA0	=	0xfaf9
                     FCFB   456 _PCA0CP0	=	0xfcfb
                     FEFD   457 _PCA0CP4	=	0xfefd
                            458 ;--------------------------------------------------------
                            459 ; special function bits
                            460 ;--------------------------------------------------------
                            461 	.area RSEG    (ABS,DATA)
   0000                     462 	.org 0x0000
                     008F   463 _TF1	=	0x008f
                     008E   464 _TR1	=	0x008e
                     008D   465 _TF0	=	0x008d
                     008C   466 _TR0	=	0x008c
                     008B   467 _IE1	=	0x008b
                     008A   468 _IT1	=	0x008a
                     0089   469 _IE0	=	0x0089
                     0088   470 _IT0	=	0x0088
                     0096   471 _CRC0SEL	=	0x0096
                     0095   472 _CRC0INIT	=	0x0095
                     0094   473 _CRC0VAL	=	0x0094
                     009F   474 _S0MODE	=	0x009f
                     009D   475 _MCE0	=	0x009d
                     009C   476 _REN0	=	0x009c
                     009B   477 _TB80	=	0x009b
                     009A   478 _RB80	=	0x009a
                     0099   479 _TI0	=	0x0099
                     0098   480 _RI0	=	0x0098
                     00AF   481 _EA	=	0x00af
                     00AE   482 _ESPI0	=	0x00ae
                     00AD   483 _ET2	=	0x00ad
                     00AC   484 _ES0	=	0x00ac
                     00AB   485 _ET1	=	0x00ab
                     00AA   486 _EX1	=	0x00aa
                     00A9   487 _ET0	=	0x00a9
                     00A8   488 _EX0	=	0x00a8
                     00B7   489 _SPIF1	=	0x00b7
                     00B6   490 _WCOL1	=	0x00b6
                     00B5   491 _MODF1	=	0x00b5
                     00B4   492 _RXOVRN1	=	0x00b4
                     00B3   493 _NSS1MD1	=	0x00b3
                     00B2   494 _NSS1MD0	=	0x00b2
                     00B1   495 _TXBMT1	=	0x00b1
                     00B0   496 _SPI1EN	=	0x00b0
                     00BE   497 _PSPI0	=	0x00be
                     00BD   498 _PT2	=	0x00bd
                     00BC   499 _PS0	=	0x00bc
                     00BB   500 _PT1	=	0x00bb
                     00BA   501 _PX1	=	0x00ba
                     00B9   502 _PT0	=	0x00b9
                     00B8   503 _PX0	=	0x00b8
                     00C7   504 _MASTER	=	0x00c7
                     00C6   505 _TXMODE	=	0x00c6
                     00C5   506 _STA	=	0x00c5
                     00C4   507 _STO	=	0x00c4
                     00C3   508 _ACKRQ	=	0x00c3
                     00C2   509 _ARBLOST	=	0x00c2
                     00C1   510 _ACK	=	0x00c1
                     00C0   511 _SI	=	0x00c0
                     00CF   512 _TF2H	=	0x00cf
                     00CE   513 _TF2L	=	0x00ce
                     00CD   514 _TF2LEN	=	0x00cd
                     00CC   515 _TF2CEN	=	0x00cc
                     00CB   516 _T2SPLIT	=	0x00cb
                     00CA   517 _TR2	=	0x00ca
                     00C9   518 _T2RCLK	=	0x00c9
                     00C8   519 _T2XCLK	=	0x00c8
                     00D7   520 _CY	=	0x00d7
                     00D6   521 _AC	=	0x00d6
                     00D5   522 _F0	=	0x00d5
                     00D4   523 _RS1	=	0x00d4
                     00D3   524 _RS0	=	0x00d3
                     00D2   525 _OV	=	0x00d2
                     00D1   526 _F1	=	0x00d1
                     00D0   527 _P	=	0x00d0
                     00DF   528 _CF	=	0x00df
                     00DE   529 _CR	=	0x00de
                     00DD   530 _CCF5	=	0x00dd
                     00DC   531 _CCF4	=	0x00dc
                     00DB   532 _CCF3	=	0x00db
                     00DA   533 _CCF2	=	0x00da
                     00D9   534 _CCF1	=	0x00d9
                     00D8   535 _CCF0	=	0x00d8
                     00EF   536 _AD0EN	=	0x00ef
                     00EE   537 _BURSTEN	=	0x00ee
                     00ED   538 _AD0INT	=	0x00ed
                     00EC   539 _AD0BUSY	=	0x00ec
                     00EB   540 _AD0WINT	=	0x00eb
                     00EA   541 _AD0CM2	=	0x00ea
                     00E9   542 _AD0CM1	=	0x00e9
                     00E8   543 _AD0CM0	=	0x00e8
                     00FF   544 _SPIF0	=	0x00ff
                     00FE   545 _WCOL0	=	0x00fe
                     00FD   546 _MODF0	=	0x00fd
                     00FC   547 _RXOVRN0	=	0x00fc
                     00FB   548 _NSS0MD1	=	0x00fb
                     00FA   549 _NSS0MD0	=	0x00fa
                     00F9   550 _TXBMT0	=	0x00f9
                     00F8   551 _SPI0EN	=	0x00f8
                     0096   552 _LED_RED	=	0x0096
                     0095   553 _LED_GREEN	=	0x0095
                     0082   554 _PIN_CONFIG	=	0x0082
                     0083   555 _PIN_ENABLE	=	0x0083
                     00A5   556 _PA_ENABLE	=	0x00a5
                     0087   557 _IRQ	=	0x0087
                     0094   558 _NSS1	=	0x0094
                     00A6   559 _TDM_SYNC_PIN	=	0x00a6
                            560 ;--------------------------------------------------------
                            561 ; overlayable register banks
                            562 ;--------------------------------------------------------
                            563 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     564 	.ds 8
                            565 ;--------------------------------------------------------
                            566 ; internal ram data
                            567 ;--------------------------------------------------------
                            568 	.area DSEG    (DATA)
   0008                     569 _at_i_sloc0_1_0:
   0008                     570 	.ds 4
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
   0000                     587 _at_mode_active::
   0000                     588 	.ds 1
   0001                     589 _at_cmd_ready::
   0001                     590 	.ds 1
   0002                     591 _at_plus_sloc0_1_0:
   0002                     592 	.ds 1
                            593 ;--------------------------------------------------------
                            594 ; paged external ram data
                            595 ;--------------------------------------------------------
                            596 	.area PSEG    (PAG,XDATA)
   0000                     597 _pdata_canary::
   0000                     598 	.ds 1
   0001                     599 _at_cmd::
   0001                     600 	.ds 17
   0012                     601 _at_cmd_len::
   0012                     602 	.ds 1
   0013                     603 _at_testmode::
   0013                     604 	.ds 1
   0014                     605 _at_plus_state:
   0014                     606 	.ds 1
   0015                     607 _at_plus_counter:
   0015                     608 	.ds 1
   0016                     609 _idx::
   0016                     610 	.ds 1
   0017                     611 _at_plus_val_1_176:
   0017                     612 	.ds 4
                            613 ;--------------------------------------------------------
                            614 ; external ram data
                            615 ;--------------------------------------------------------
                            616 	.area XSEG    (XDATA)
   00F0                     617 _at_ampersand_x_3_170:
   00F0                     618 	.ds 1
                            619 ;--------------------------------------------------------
                            620 ; absolute external ram data
                            621 ;--------------------------------------------------------
                            622 	.area XABS    (ABS,XDATA)
                            623 ;--------------------------------------------------------
                            624 ; external initialized ram data
                            625 ;--------------------------------------------------------
                            626 	.area XISEG   (XDATA)
                            627 	.area HOME    (CODE)
                            628 	.area GSINIT0 (CODE)
                            629 	.area GSINIT1 (CODE)
                            630 	.area GSINIT2 (CODE)
                            631 	.area GSINIT3 (CODE)
                            632 	.area GSINIT4 (CODE)
                            633 	.area GSINIT5 (CODE)
                            634 	.area GSINIT  (CODE)
                            635 	.area GSFINAL (CODE)
                            636 	.area CSEG    (CODE)
                            637 ;--------------------------------------------------------
                            638 ; global & static initialisations
                            639 ;--------------------------------------------------------
                            640 	.area HOME    (CODE)
                            641 	.area GSINIT  (CODE)
                            642 	.area GSFINAL (CODE)
                            643 	.area GSINIT  (CODE)
                            644 ;	radio/at.c:42: __pdata uint8_t pdata_canary = 0x41;
   04D2 78 00         [12]  645 	mov	r0,#_pdata_canary
   04D4 74 41         [12]  646 	mov	a,#0x41
   04D6 F2            [24]  647 	movx	@r0,a
                            648 ;	radio/at.c:133: static __pdata uint8_t	at_plus_counter = ATP_COUNT_1S;
   04D7 78 15         [12]  649 	mov	r0,#_at_plus_counter
   04D9 74 64         [12]  650 	mov	a,#0x64
   04DB F2            [24]  651 	movx	@r0,a
                            652 ;--------------------------------------------------------
                            653 ; Home
                            654 ;--------------------------------------------------------
                            655 	.area HOME    (CODE)
                            656 	.area HOME    (CODE)
                            657 ;--------------------------------------------------------
                            658 ; code
                            659 ;--------------------------------------------------------
                            660 	.area CSEG    (CODE)
                            661 ;------------------------------------------------------------
                            662 ;Allocation info for local variables in function 'at_input'
                            663 ;------------------------------------------------------------
                            664 ;c                         Allocated to registers r7 
                            665 ;------------------------------------------------------------
                            666 ;	radio/at.c:66: at_input(register uint8_t c)
                            667 ;	-----------------------------------------
                            668 ;	 function at_input
                            669 ;	-----------------------------------------
   04F9                     670 _at_input:
                     0007   671 	ar7 = 0x07
                     0006   672 	ar6 = 0x06
                     0005   673 	ar5 = 0x05
                     0004   674 	ar4 = 0x04
                     0003   675 	ar3 = 0x03
                     0002   676 	ar2 = 0x02
                     0001   677 	ar1 = 0x01
                     0000   678 	ar0 = 0x00
   04F9 AF 82         [24]  679 	mov	r7,dpl
                            680 ;	radio/at.c:69: switch (c) {
   04FB 8F 06         [24]  681 	mov	ar6,r7
   04FD BE 08 02      [24]  682 	cjne	r6,#0x08,00137$
   0500 80 1B         [24]  683 	sjmp	00103$
   0502                     684 00137$:
   0502 BE 0D 02      [24]  685 	cjne	r6,#0x0D,00138$
   0505 80 05         [24]  686 	sjmp	00101$
   0507                     687 00138$:
                            688 ;	radio/at.c:71: case '\r':
   0507 BE 7F 30      [24]  689 	cjne	r6,#0x7F,00106$
   050A 80 11         [24]  690 	sjmp	00103$
   050C                     691 00101$:
                            692 ;	radio/at.c:72: putchar('\n');
   050C 75 82 0A      [24]  693 	mov	dpl,#0x0A
   050F 12 47 37      [24]  694 	lcall	_putchar
                            695 ;	radio/at.c:73: at_cmd[at_cmd_len] = 0;
   0512 78 12         [12]  696 	mov	r0,#_at_cmd_len
   0514 E2            [24]  697 	movx	a,@r0
   0515 24 01         [12]  698 	add	a,#_at_cmd
   0517 F8            [12]  699 	mov	r0,a
   0518 E4            [12]  700 	clr	a
   0519 F2            [24]  701 	movx	@r0,a
                            702 ;	radio/at.c:74: at_cmd_ready = true;
   051A D2 01         [12]  703 	setb	_at_cmd_ready
                            704 ;	radio/at.c:75: break;
                            705 ;	radio/at.c:80: case '\x7f':
   051C 22            [24]  706 	ret
   051D                     707 00103$:
                            708 ;	radio/at.c:81: if (at_cmd_len > 0) {
   051D 78 12         [12]  709 	mov	r0,#_at_cmd_len
   051F E2            [24]  710 	movx	a,@r0
   0520 60 64         [24]  711 	jz	00112$
                            712 ;	radio/at.c:82: putchar('\b');
   0522 75 82 08      [24]  713 	mov	dpl,#0x08
   0525 12 47 37      [24]  714 	lcall	_putchar
                            715 ;	radio/at.c:83: putchar(' ');
   0528 75 82 20      [24]  716 	mov	dpl,#0x20
   052B 12 47 37      [24]  717 	lcall	_putchar
                            718 ;	radio/at.c:84: putchar('\b');
   052E 75 82 08      [24]  719 	mov	dpl,#0x08
   0531 12 47 37      [24]  720 	lcall	_putchar
                            721 ;	radio/at.c:85: at_cmd_len--;
   0534 78 12         [12]  722 	mov	r0,#_at_cmd_len
   0536 E2            [24]  723 	movx	a,@r0
   0537 14            [12]  724 	dec	a
   0538 F2            [24]  725 	movx	@r0,a
                            726 ;	radio/at.c:87: break;
                            727 ;	radio/at.c:90: default:
   0539 22            [24]  728 	ret
   053A                     729 00106$:
                            730 ;	radio/at.c:91: if (at_cmd_len < AT_CMD_MAXLEN) {
   053A 78 12         [12]  731 	mov	r0,#_at_cmd_len
   053C E2            [24]  732 	movx	a,@r0
   053D B4 10 00      [24]  733 	cjne	a,#0x10,00141$
   0540                     734 00141$:
   0540 50 3E         [24]  735 	jnc	00110$
                            736 ;	radio/at.c:92: if (isprint(c)) {
   0542 8F 82         [24]  737 	mov	dpl,r7
   0544 C0 07         [24]  738 	push	ar7
   0546 C0 06         [24]  739 	push	ar6
   0548 12 65 57      [24]  740 	lcall	_isprint
   054B E5 82         [12]  741 	mov	a,dpl
   054D D0 06         [24]  742 	pop	ar6
   054F D0 07         [24]  743 	pop	ar7
   0551 60 33         [24]  744 	jz	00112$
                            745 ;	radio/at.c:93: c = toupper(c);
   0553 8F 82         [24]  746 	mov	dpl,r7
   0555 C0 07         [24]  747 	push	ar7
   0557 C0 06         [24]  748 	push	ar6
   0559 12 64 F1      [24]  749 	lcall	_islower
   055C E5 82         [12]  750 	mov	a,dpl
   055E D0 06         [24]  751 	pop	ar6
   0560 D0 07         [24]  752 	pop	ar7
   0562 60 05         [24]  753 	jz	00114$
   0564 53 06 DF      [24]  754 	anl	ar6,#0xDF
   0567 80 02         [24]  755 	sjmp	00115$
   0569                     756 00114$:
   0569 8F 06         [24]  757 	mov	ar6,r7
   056B                     758 00115$:
   056B 8E 07         [24]  759 	mov	ar7,r6
                            760 ;	radio/at.c:94: at_cmd[at_cmd_len++] = c;
   056D 78 12         [12]  761 	mov	r0,#_at_cmd_len
   056F E2            [24]  762 	movx	a,@r0
   0570 FE            [12]  763 	mov	r6,a
   0571 78 12         [12]  764 	mov	r0,#_at_cmd_len
   0573 04            [12]  765 	inc	a
   0574 F2            [24]  766 	movx	@r0,a
   0575 EE            [12]  767 	mov	a,r6
   0576 24 01         [12]  768 	add	a,#_at_cmd
   0578 F8            [12]  769 	mov	r0,a
   0579 EF            [12]  770 	mov	a,r7
   057A F2            [24]  771 	movx	@r0,a
                            772 ;	radio/at.c:95: putchar(c);
   057B 8F 82         [24]  773 	mov	dpl,r7
                            774 ;	radio/at.c:97: break;
   057D 02 47 37      [24]  775 	ljmp	_putchar
   0580                     776 00110$:
                            777 ;	radio/at.c:105: at_mode_active = 0;
   0580 C2 00         [12]  778 	clr	_at_mode_active
                            779 ;	radio/at.c:106: at_cmd_len = 0;
   0582 78 12         [12]  780 	mov	r0,#_at_cmd_len
   0584 E4            [12]  781 	clr	a
   0585 F2            [24]  782 	movx	@r0,a
                            783 ;	radio/at.c:108: }
   0586                     784 00112$:
   0586 22            [24]  785 	ret
                            786 ;------------------------------------------------------------
                            787 ;Allocation info for local variables in function 'at_plus_detector'
                            788 ;------------------------------------------------------------
                            789 ;c                         Allocated to registers r7 
                            790 ;------------------------------------------------------------
                            791 ;	radio/at.c:138: at_plus_detector(register uint8_t c)
                            792 ;	-----------------------------------------
                            793 ;	 function at_plus_detector
                            794 ;	-----------------------------------------
   0587                     795 _at_plus_detector:
   0587 AF 82         [24]  796 	mov	r7,dpl
                            797 ;	radio/at.c:144: if (c != (uint8_t)'+')
   0589 BF 2B 02      [24]  798 	cjne	r7,#0x2B,00118$
   058C 80 04         [24]  799 	sjmp	00102$
   058E                     800 00118$:
                            801 ;	radio/at.c:145: at_plus_state = ATP_WAIT_FOR_IDLE;
   058E 78 14         [12]  802 	mov	r0,#_at_plus_state
   0590 E4            [12]  803 	clr	a
   0591 F2            [24]  804 	movx	@r0,a
   0592                     805 00102$:
                            806 ;	radio/at.c:149: switch (at_plus_state) {
   0592 78 14         [12]  807 	mov	r0,#_at_plus_state
   0594 C3            [12]  808 	clr	c
   0595 E2            [24]  809 	movx	a,@r0
   0596 F5 F0         [12]  810 	mov	b,a
   0598 74 04         [12]  811 	mov	a,#0x04
   059A 95 F0         [12]  812 	subb	a,b
   059C 40 2C         [24]  813 	jc	00106$
   059E 78 14         [12]  814 	mov	r0,#_at_plus_state
   05A0 E2            [24]  815 	movx	a,@r0
   05A1 75 F0 03      [24]  816 	mov	b,#0x03
   05A4 A4            [48]  817 	mul	ab
   05A5 90 05 A9      [24]  818 	mov	dptr,#00120$
   05A8 73            [24]  819 	jmp	@a+dptr
   05A9                     820 00120$:
   05A9 02 05 CE      [24]  821 	ljmp	00107$
   05AC 02 05 B8      [24]  822 	ljmp	00103$
   05AF 02 05 B8      [24]  823 	ljmp	00104$
   05B2 02 05 BF      [24]  824 	ljmp	00105$
   05B5 02 05 CE      [24]  825 	ljmp	00108$
                            826 ;	radio/at.c:151: case ATP_WAIT_FOR_PLUS1:
   05B8                     827 00103$:
                            828 ;	radio/at.c:152: case ATP_WAIT_FOR_PLUS2:
   05B8                     829 00104$:
                            830 ;	radio/at.c:153: at_plus_state++;
   05B8 78 14         [12]  831 	mov	r0,#_at_plus_state
   05BA E2            [24]  832 	movx	a,@r0
   05BB 24 01         [12]  833 	add	a,#0x01
   05BD F2            [24]  834 	movx	@r0,a
                            835 ;	radio/at.c:154: break;
                            836 ;	radio/at.c:156: case ATP_WAIT_FOR_PLUS3:
   05BE 22            [24]  837 	ret
   05BF                     838 00105$:
                            839 ;	radio/at.c:157: at_plus_state = ATP_WAIT_FOR_ENABLE;
   05BF 78 14         [12]  840 	mov	r0,#_at_plus_state
   05C1 74 04         [12]  841 	mov	a,#0x04
   05C3 F2            [24]  842 	movx	@r0,a
                            843 ;	radio/at.c:158: at_plus_counter = ATP_COUNT_1S;
   05C4 78 15         [12]  844 	mov	r0,#_at_plus_counter
   05C6 74 64         [12]  845 	mov	a,#0x64
   05C8 F2            [24]  846 	movx	@r0,a
                            847 ;	radio/at.c:159: break;
                            848 ;	radio/at.c:161: default:
   05C9 22            [24]  849 	ret
   05CA                     850 00106$:
                            851 ;	radio/at.c:162: at_plus_state = ATP_WAIT_FOR_IDLE;
   05CA 78 14         [12]  852 	mov	r0,#_at_plus_state
   05CC E4            [12]  853 	clr	a
   05CD F2            [24]  854 	movx	@r0,a
                            855 ;	radio/at.c:164: case ATP_WAIT_FOR_IDLE:
   05CE                     856 00107$:
                            857 ;	radio/at.c:165: case ATP_WAIT_FOR_ENABLE:
   05CE                     858 00108$:
                            859 ;	radio/at.c:166: at_plus_counter = ATP_COUNT_1S;
   05CE 78 15         [12]  860 	mov	r0,#_at_plus_counter
   05D0 74 64         [12]  861 	mov	a,#0x64
   05D2 F2            [24]  862 	movx	@r0,a
                            863 ;	radio/at.c:168: }
   05D3 22            [24]  864 	ret
                            865 ;------------------------------------------------------------
                            866 ;Allocation info for local variables in function 'at_timer'
                            867 ;------------------------------------------------------------
                            868 ;	radio/at.c:175: at_timer(void)
                            869 ;	-----------------------------------------
                            870 ;	 function at_timer
                            871 ;	-----------------------------------------
   05D4                     872 _at_timer:
                            873 ;	radio/at.c:178: if (at_plus_counter > 0) {
   05D4 78 15         [12]  874 	mov	r0,#_at_plus_counter
   05D6 E2            [24]  875 	movx	a,@r0
   05D7 60 38         [24]  876 	jz	00109$
                            877 ;	radio/at.c:181: if (--at_plus_counter == 0) {
   05D9 78 15         [12]  878 	mov	r0,#_at_plus_counter
   05DB E2            [24]  879 	movx	a,@r0
   05DC 14            [12]  880 	dec	a
   05DD F2            [24]  881 	movx	@r0,a
   05DE 78 15         [12]  882 	mov	r0,#_at_plus_counter
   05E0 E2            [24]  883 	movx	a,@r0
   05E1 70 2E         [24]  884 	jnz	00109$
                            885 ;	radio/at.c:184: switch (at_plus_state) {
   05E3 78 14         [12]  886 	mov	r0,#_at_plus_state
   05E5 E2            [24]  887 	movx	a,@r0
   05E6 60 08         [24]  888 	jz	00101$
   05E8 78 14         [12]  889 	mov	r0,#_at_plus_state
   05EA E2            [24]  890 	movx	a,@r0
                            891 ;	radio/at.c:185: case ATP_WAIT_FOR_IDLE:
   05EB B4 04 23      [24]  892 	cjne	a,#0x04,00109$
   05EE 80 06         [24]  893 	sjmp	00102$
   05F0                     894 00101$:
                            895 ;	radio/at.c:186: at_plus_state = ATP_WAIT_FOR_PLUS1;
   05F0 78 14         [12]  896 	mov	r0,#_at_plus_state
   05F2 74 01         [12]  897 	mov	a,#0x01
   05F4 F2            [24]  898 	movx	@r0,a
                            899 ;	radio/at.c:187: break;
                            900 ;	radio/at.c:189: case ATP_WAIT_FOR_ENABLE:
   05F5 22            [24]  901 	ret
   05F6                     902 00102$:
                            903 ;	radio/at.c:190: at_mode_active = true;
   05F6 D2 00         [12]  904 	setb	_at_mode_active
                            905 ;	radio/at.c:191: at_plus_state = ATP_WAIT_FOR_IDLE;
   05F8 78 14         [12]  906 	mov	r0,#_at_plus_state
   05FA E4            [12]  907 	clr	a
   05FB F2            [24]  908 	movx	@r0,a
                            909 ;	radio/at.c:194: at_cmd[0] = 'A';
   05FC 78 01         [12]  910 	mov	r0,#_at_cmd
   05FE 74 41         [12]  911 	mov	a,#0x41
   0600 F2            [24]  912 	movx	@r0,a
                            913 ;	radio/at.c:195: at_cmd[1] = 'T';
   0601 78 02         [12]  914 	mov	r0,#(_at_cmd + 0x0001)
   0603 74 54         [12]  915 	mov	a,#0x54
   0605 F2            [24]  916 	movx	@r0,a
                            917 ;	radio/at.c:196: at_cmd[2] = '\0';
   0606 78 03         [12]  918 	mov	r0,#(_at_cmd + 0x0002)
   0608 E4            [12]  919 	clr	a
   0609 F2            [24]  920 	movx	@r0,a
                            921 ;	radio/at.c:197: at_cmd_len = 2;
   060A 78 12         [12]  922 	mov	r0,#_at_cmd_len
   060C 74 02         [12]  923 	mov	a,#0x02
   060E F2            [24]  924 	movx	@r0,a
                            925 ;	radio/at.c:198: at_cmd_ready = true;
   060F D2 01         [12]  926 	setb	_at_cmd_ready
                            927 ;	radio/at.c:202: }
   0611                     928 00109$:
   0611 22            [24]  929 	ret
                            930 ;------------------------------------------------------------
                            931 ;Allocation info for local variables in function 'at_command'
                            932 ;------------------------------------------------------------
                            933 ;	radio/at.c:209: at_command(void)
                            934 ;	-----------------------------------------
                            935 ;	 function at_command
                            936 ;	-----------------------------------------
   0612                     937 _at_command:
                            938 ;	radio/at.c:212: if (at_cmd_ready) {
   0612 20 01 01      [24]  939 	jb	_at_cmd_ready,00170$
   0615 22            [24]  940 	ret
   0616                     941 00170$:
                            942 ;	radio/at.c:213: if ((at_cmd_len >= 2) && (at_cmd[0] == 'R') && (at_cmd[1] == 'T')) {
   0616 78 12         [12]  943 	mov	r0,#_at_cmd_len
   0618 E2            [24]  944 	movx	a,@r0
   0619 B4 02 00      [24]  945 	cjne	a,#0x02,00171$
   061C                     946 00171$:
   061C E4            [12]  947 	clr	a
   061D 33            [12]  948 	rlc	a
   061E FF            [12]  949 	mov	r7,a
   061F 70 18         [24]  950 	jnz	00102$
   0621 78 01         [12]  951 	mov	r0,#_at_cmd
   0623 E2            [24]  952 	movx	a,@r0
   0624 FE            [12]  953 	mov	r6,a
   0625 BE 52 11      [24]  954 	cjne	r6,#0x52,00102$
   0628 78 02         [12]  955 	mov	r0,#(_at_cmd + 0x0001)
   062A E2            [24]  956 	movx	a,@r0
   062B FE            [12]  957 	mov	r6,a
   062C BE 54 0A      [24]  958 	cjne	r6,#0x54,00102$
                            959 ;	radio/at.c:216: tdm_remote_at();
   062F 12 4E C4      [24]  960 	lcall	_tdm_remote_at
                            961 ;	radio/at.c:217: at_cmd_len = 0;
   0632 78 12         [12]  962 	mov	r0,#_at_cmd_len
   0634 E4            [12]  963 	clr	a
   0635 F2            [24]  964 	movx	@r0,a
                            965 ;	radio/at.c:218: at_cmd_ready = false;
   0636 C2 01         [12]  966 	clr	_at_cmd_ready
                            967 ;	radio/at.c:219: return;
   0638 22            [24]  968 	ret
   0639                     969 00102$:
                            970 ;	radio/at.c:222: if ((at_cmd_len >= 2) && (at_cmd[0] == 'A') && (at_cmd[1] == 'T')) {
   0639 EF            [12]  971 	mov	a,r7
   063A 70 5C         [24]  972 	jnz	00116$
   063C 78 01         [12]  973 	mov	r0,#_at_cmd
   063E E2            [24]  974 	movx	a,@r0
   063F FF            [12]  975 	mov	r7,a
   0640 BF 41 55      [24]  976 	cjne	r7,#0x41,00116$
   0643 78 02         [12]  977 	mov	r0,#(_at_cmd + 0x0001)
   0645 E2            [24]  978 	movx	a,@r0
   0646 FF            [12]  979 	mov	r7,a
   0647 BF 54 4E      [24]  980 	cjne	r7,#0x54,00116$
                            981 ;	radio/at.c:225: switch (at_cmd[2]) {
   064A 78 03         [12]  982 	mov	r0,#(_at_cmd + 0x0002)
   064C E2            [24]  983 	movx	a,@r0
   064D FF            [12]  984 	mov	r7,a
   064E 60 1E         [24]  985 	jz	00105$
   0650 BF 26 02      [24]  986 	cjne	r7,#0x26,00183$
   0653 80 1E         [24]  987 	sjmp	00106$
   0655                     988 00183$:
   0655 BF 2B 02      [24]  989 	cjne	r7,#0x2B,00184$
   0658 80 1E         [24]  990 	sjmp	00107$
   065A                     991 00184$:
   065A BF 49 02      [24]  992 	cjne	r7,#0x49,00185$
   065D 80 1E         [24]  993 	sjmp	00108$
   065F                     994 00185$:
   065F BF 4F 02      [24]  995 	cjne	r7,#0x4F,00186$
   0662 80 1E         [24]  996 	sjmp	00109$
   0664                     997 00186$:
   0664 BF 53 02      [24]  998 	cjne	r7,#0x53,00187$
   0667 80 22         [24]  999 	sjmp	00110$
   0669                    1000 00187$:
                           1001 ;	radio/at.c:226: case '\0':		// no command -> OK
   0669 BF 5A 29      [24] 1002 	cjne	r7,#0x5A,00113$
   066C 80 22         [24] 1003 	sjmp	00111$
   066E                    1004 00105$:
                           1005 ;	radio/at.c:227: at_ok();
   066E 12 06 9F      [24] 1006 	lcall	_at_ok
                           1007 ;	radio/at.c:228: break;
                           1008 ;	radio/at.c:229: case '&':
   0671 80 25         [24] 1009 	sjmp	00116$
   0673                    1010 00106$:
                           1011 ;	radio/at.c:230: at_ampersand();
   0673 12 09 50      [24] 1012 	lcall	_at_ampersand
                           1013 ;	radio/at.c:231: break;
                           1014 ;	radio/at.c:232: case '+':
   0676 80 20         [24] 1015 	sjmp	00116$
   0678                    1016 00107$:
                           1017 ;	radio/at.c:233: at_plus();
   0678 12 0A 27      [24] 1018 	lcall	_at_plus
                           1019 ;	radio/at.c:234: break;
                           1020 ;	radio/at.c:235: case 'I':
   067B 80 1B         [24] 1021 	sjmp	00116$
   067D                    1022 00108$:
                           1023 ;	radio/at.c:236: at_i();
   067D 12 07 93      [24] 1024 	lcall	_at_i
                           1025 ;	radio/at.c:237: break;
                           1026 ;	radio/at.c:238: case 'O':		// O -> go online (exit command mode)
   0680 80 16         [24] 1027 	sjmp	00116$
   0682                    1028 00109$:
                           1029 ;	radio/at.c:239: at_plus_counter = ATP_COUNT_1S;
   0682 78 15         [12] 1030 	mov	r0,#_at_plus_counter
   0684 74 64         [12] 1031 	mov	a,#0x64
   0686 F2            [24] 1032 	movx	@r0,a
                           1033 ;	radio/at.c:240: at_mode_active = 0;
   0687 C2 00         [12] 1034 	clr	_at_mode_active
                           1035 ;	radio/at.c:241: break;
                           1036 ;	radio/at.c:242: case 'S':
   0689 80 0D         [24] 1037 	sjmp	00116$
   068B                    1038 00110$:
                           1039 ;	radio/at.c:243: at_s();
   068B 12 08 CE      [24] 1040 	lcall	_at_s
                           1041 ;	radio/at.c:244: break;
                           1042 ;	radio/at.c:246: case 'Z':
   068E 80 08         [24] 1043 	sjmp	00116$
   0690                    1044 00111$:
                           1045 ;	radio/at.c:248: RSTSRC |= (1 << 4);
   0690 43 EF 10      [24] 1046 	orl	_RSTSRC,#0x10
   0693                    1047 00122$:
                           1048 ;	radio/at.c:252: default:
   0693 80 FE         [24] 1049 	sjmp	00122$
   0695                    1050 00113$:
                           1051 ;	radio/at.c:253: at_error();
   0695 12 06 C1      [24] 1052 	lcall	_at_error
                           1053 ;	radio/at.c:254: }
   0698                    1054 00116$:
                           1055 ;	radio/at.c:258: at_cmd_len = 0;
   0698 78 12         [12] 1056 	mov	r0,#_at_cmd_len
   069A E4            [12] 1057 	clr	a
   069B F2            [24] 1058 	movx	@r0,a
                           1059 ;	radio/at.c:259: at_cmd_ready = false;
   069C C2 01         [12] 1060 	clr	_at_cmd_ready
   069E 22            [24] 1061 	ret
                           1062 ;------------------------------------------------------------
                           1063 ;Allocation info for local variables in function 'at_ok'
                           1064 ;------------------------------------------------------------
                           1065 ;	radio/at.c:264: at_ok(void)
                           1066 ;	-----------------------------------------
                           1067 ;	 function at_ok
                           1068 ;	-----------------------------------------
   069F                    1069 _at_ok:
                           1070 ;	radio/at.c:266: printf("%s\n", "OK");
   069F 74 46         [12] 1071 	mov	a,#__str_1
   06A1 C0 E0         [24] 1072 	push	acc
   06A3 74 68         [12] 1073 	mov	a,#(__str_1 >> 8)
   06A5 C0 E0         [24] 1074 	push	acc
   06A7 74 80         [12] 1075 	mov	a,#0x80
   06A9 C0 E0         [24] 1076 	push	acc
   06AB 74 42         [12] 1077 	mov	a,#__str_0
   06AD C0 E0         [24] 1078 	push	acc
   06AF 74 68         [12] 1079 	mov	a,#(__str_0 >> 8)
   06B1 C0 E0         [24] 1080 	push	acc
   06B3 74 80         [12] 1081 	mov	a,#0x80
   06B5 C0 E0         [24] 1082 	push	acc
   06B7 12 30 0B      [24] 1083 	lcall	_printfl
   06BA E5 81         [12] 1084 	mov	a,sp
   06BC 24 FA         [12] 1085 	add	a,#0xfa
   06BE F5 81         [12] 1086 	mov	sp,a
   06C0 22            [24] 1087 	ret
                           1088 ;------------------------------------------------------------
                           1089 ;Allocation info for local variables in function 'at_error'
                           1090 ;------------------------------------------------------------
                           1091 ;	radio/at.c:270: at_error(void)
                           1092 ;	-----------------------------------------
                           1093 ;	 function at_error
                           1094 ;	-----------------------------------------
   06C1                    1095 _at_error:
                           1096 ;	radio/at.c:272: printf("%s\n", "ERROR");
   06C1 74 49         [12] 1097 	mov	a,#__str_2
   06C3 C0 E0         [24] 1098 	push	acc
   06C5 74 68         [12] 1099 	mov	a,#(__str_2 >> 8)
   06C7 C0 E0         [24] 1100 	push	acc
   06C9 74 80         [12] 1101 	mov	a,#0x80
   06CB C0 E0         [24] 1102 	push	acc
   06CD 74 42         [12] 1103 	mov	a,#__str_0
   06CF C0 E0         [24] 1104 	push	acc
   06D1 74 68         [12] 1105 	mov	a,#(__str_0 >> 8)
   06D3 C0 E0         [24] 1106 	push	acc
   06D5 74 80         [12] 1107 	mov	a,#0x80
   06D7 C0 E0         [24] 1108 	push	acc
   06D9 12 30 0B      [24] 1109 	lcall	_printfl
   06DC E5 81         [12] 1110 	mov	a,sp
   06DE 24 FA         [12] 1111 	add	a,#0xfa
   06E0 F5 81         [12] 1112 	mov	sp,a
   06E2 22            [24] 1113 	ret
                           1114 ;------------------------------------------------------------
                           1115 ;Allocation info for local variables in function 'at_parse_number'
                           1116 ;------------------------------------------------------------
                           1117 ;reg                       Allocated to registers r4 r5 r6 r7 
                           1118 ;c                         Allocated to registers r3 
                           1119 ;sloc0                     Allocated to stack - sp +2
                           1120 ;sloc1                     Allocated to stack - sp -3
                           1121 ;------------------------------------------------------------
                           1122 ;	radio/at.c:278: at_parse_number() __reentrant
                           1123 ;	-----------------------------------------
                           1124 ;	 function at_parse_number
                           1125 ;	-----------------------------------------
   06E3                    1126 _at_parse_number:
   06E3 E5 81         [12] 1127 	mov	a,sp
   06E5 24 04         [12] 1128 	add	a,#0x04
   06E7 F5 81         [12] 1129 	mov	sp,a
                           1130 ;	radio/at.c:283: reg = 0;
   06E9 7C 00         [12] 1131 	mov	r4,#0x00
   06EB 7D 00         [12] 1132 	mov	r5,#0x00
   06ED 7E 00         [12] 1133 	mov	r6,#0x00
   06EF 7F 00         [12] 1134 	mov	r7,#0x00
   06F1                    1135 00104$:
                           1136 ;	radio/at.c:285: c = at_cmd[idx];
   06F1 78 16         [12] 1137 	mov	r0,#_idx
   06F3 E2            [24] 1138 	movx	a,@r0
   06F4 24 01         [12] 1139 	add	a,#_at_cmd
   06F6 F9            [12] 1140 	mov	r1,a
   06F7 E3            [24] 1141 	movx	a,@r1
                           1142 ;	radio/at.c:286: if (!isdigit(c))
   06F8 FB            [12] 1143 	mov	r3,a
   06F9 F5 82         [12] 1144 	mov	dpl,a
   06FB C0 07         [24] 1145 	push	ar7
   06FD C0 06         [24] 1146 	push	ar6
   06FF C0 05         [24] 1147 	push	ar5
   0701 C0 04         [24] 1148 	push	ar4
   0703 C0 03         [24] 1149 	push	ar3
   0705 12 60 6E      [24] 1150 	lcall	_isdigit
   0708 E5 82         [12] 1151 	mov	a,dpl
   070A D0 03         [24] 1152 	pop	ar3
   070C D0 04         [24] 1153 	pop	ar4
   070E D0 05         [24] 1154 	pop	ar5
   0710 D0 06         [24] 1155 	pop	ar6
   0712 D0 07         [24] 1156 	pop	ar7
   0714 60 6D         [24] 1157 	jz	00103$
                           1158 ;	radio/at.c:288: reg = (reg * 10) + (c - '0');
   0716 90 05 DA      [24] 1159 	mov	dptr,#__mullong_PARM_2
   0719 EC            [12] 1160 	mov	a,r4
   071A F0            [24] 1161 	movx	@dptr,a
   071B ED            [12] 1162 	mov	a,r5
   071C A3            [24] 1163 	inc	dptr
   071D F0            [24] 1164 	movx	@dptr,a
   071E EE            [12] 1165 	mov	a,r6
   071F A3            [24] 1166 	inc	dptr
   0720 F0            [24] 1167 	movx	@dptr,a
   0721 EF            [12] 1168 	mov	a,r7
   0722 A3            [24] 1169 	inc	dptr
   0723 F0            [24] 1170 	movx	@dptr,a
   0724 90 00 0A      [24] 1171 	mov	dptr,#(0x0A&0x00ff)
   0727 E4            [12] 1172 	clr	a
   0728 F5 F0         [12] 1173 	mov	b,a
   072A C0 03         [24] 1174 	push	ar3
   072C 12 61 EF      [24] 1175 	lcall	__mullong
   072F AF 82         [24] 1176 	mov	r7,dpl
   0731 AE 83         [24] 1177 	mov	r6,dph
   0733 AD F0         [24] 1178 	mov	r5,b
   0735 FC            [12] 1179 	mov	r4,a
   0736 D0 03         [24] 1180 	pop	ar3
   0738 8B 02         [24] 1181 	mov	ar2,r3
   073A 7B 00         [12] 1182 	mov	r3,#0x00
   073C EA            [12] 1183 	mov	a,r2
   073D 24 D0         [12] 1184 	add	a,#0xD0
   073F FA            [12] 1185 	mov	r2,a
   0740 EB            [12] 1186 	mov	a,r3
   0741 34 FF         [12] 1187 	addc	a,#0xFF
   0743 FB            [12] 1188 	mov	r3,a
   0744 E5 81         [12] 1189 	mov	a,sp
   0746 24 FD         [12] 1190 	add	a,#0xfd
   0748 F8            [12] 1191 	mov	r0,a
   0749 A6 02         [24] 1192 	mov	@r0,ar2
   074B 08            [12] 1193 	inc	r0
   074C A6 03         [24] 1194 	mov	@r0,ar3
   074E EB            [12] 1195 	mov	a,r3
   074F 33            [12] 1196 	rlc	a
   0750 95 E0         [12] 1197 	subb	a,acc
   0752 08            [12] 1198 	inc	r0
   0753 F6            [12] 1199 	mov	@r0,a
   0754 08            [12] 1200 	inc	r0
   0755 F6            [12] 1201 	mov	@r0,a
   0756 E5 81         [12] 1202 	mov	a,sp
   0758 24 FD         [12] 1203 	add	a,#0xfd
   075A F8            [12] 1204 	mov	r0,a
   075B E6            [12] 1205 	mov	a,@r0
   075C 2F            [12] 1206 	add	a,r7
   075D F6            [12] 1207 	mov	@r0,a
   075E 08            [12] 1208 	inc	r0
   075F E6            [12] 1209 	mov	a,@r0
   0760 3E            [12] 1210 	addc	a,r6
   0761 F6            [12] 1211 	mov	@r0,a
   0762 08            [12] 1212 	inc	r0
   0763 E6            [12] 1213 	mov	a,@r0
   0764 3D            [12] 1214 	addc	a,r5
   0765 F6            [12] 1215 	mov	@r0,a
   0766 08            [12] 1216 	inc	r0
   0767 E6            [12] 1217 	mov	a,@r0
   0768 3C            [12] 1218 	addc	a,r4
   0769 F6            [12] 1219 	mov	@r0,a
   076A E5 81         [12] 1220 	mov	a,sp
   076C 24 FD         [12] 1221 	add	a,#0xfd
   076E F8            [12] 1222 	mov	r0,a
   076F 86 04         [24] 1223 	mov	ar4,@r0
   0771 08            [12] 1224 	inc	r0
   0772 86 05         [24] 1225 	mov	ar5,@r0
   0774 08            [12] 1226 	inc	r0
   0775 86 06         [24] 1227 	mov	ar6,@r0
   0777 08            [12] 1228 	inc	r0
   0778 86 07         [24] 1229 	mov	ar7,@r0
                           1230 ;	radio/at.c:289: idx++;
   077A 78 16         [12] 1231 	mov	r0,#_idx
   077C E2            [24] 1232 	movx	a,@r0
   077D 24 01         [12] 1233 	add	a,#0x01
   077F F2            [24] 1234 	movx	@r0,a
   0780 02 06 F1      [24] 1235 	ljmp	00104$
   0783                    1236 00103$:
                           1237 ;	radio/at.c:291: return reg;
   0783 8C 82         [24] 1238 	mov	dpl,r4
   0785 8D 83         [24] 1239 	mov	dph,r5
   0787 8E F0         [24] 1240 	mov	b,r6
   0789 EF            [12] 1241 	mov	a,r7
   078A C8            [12] 1242 	xch	a,r0
   078B E5 81         [12] 1243 	mov	a,sp
   078D 24 FC         [12] 1244 	add	a,#0xFC
   078F F5 81         [12] 1245 	mov	sp,a
   0791 C8            [12] 1246 	xch	a,r0
   0792 22            [24] 1247 	ret
                           1248 ;------------------------------------------------------------
                           1249 ;Allocation info for local variables in function 'at_i'
                           1250 ;------------------------------------------------------------
                           1251 ;sloc0                     Allocated with name '_at_i_sloc0_1_0'
                           1252 ;id                        Allocated with name '_at_i_id_3_159'
                           1253 ;------------------------------------------------------------
                           1254 ;	radio/at.c:295: at_i(void)
                           1255 ;	-----------------------------------------
                           1256 ;	 function at_i
                           1257 ;	-----------------------------------------
   0793                    1258 _at_i:
                           1259 ;	radio/at.c:297: switch (at_cmd[3]) {
   0793 78 04         [12] 1260 	mov	r0,#(_at_cmd + 0x0003)
   0795 E2            [24] 1261 	movx	a,@r0
   0796 FF            [12] 1262 	mov	r7,a
   0797 60 30         [24] 1263 	jz	00102$
   0799 BF 30 02      [24] 1264 	cjne	r7,#0x30,00152$
   079C 80 2B         [24] 1265 	sjmp	00102$
   079E                    1266 00152$:
   079E BF 31 02      [24] 1267 	cjne	r7,#0x31,00153$
   07A1 80 48         [24] 1268 	sjmp	00103$
   07A3                    1269 00153$:
   07A3 BF 32 02      [24] 1270 	cjne	r7,#0x32,00154$
   07A6 80 65         [24] 1271 	sjmp	00104$
   07A8                    1272 00154$:
   07A8 BF 33 03      [24] 1273 	cjne	r7,#0x33,00155$
   07AB 02 08 2A      [24] 1274 	ljmp	00105$
   07AE                    1275 00155$:
   07AE BF 34 03      [24] 1276 	cjne	r7,#0x34,00156$
   07B1 02 08 4A      [24] 1277 	ljmp	00106$
   07B4                    1278 00156$:
   07B4 BF 35 03      [24] 1279 	cjne	r7,#0x35,00157$
   07B7 02 08 6A      [24] 1280 	ljmp	00126$
   07BA                    1281 00157$:
   07BA BF 36 03      [24] 1282 	cjne	r7,#0x36,00158$
   07BD 02 08 C5      [24] 1283 	ljmp	00109$
   07C0                    1284 00158$:
   07C0 BF 37 03      [24] 1285 	cjne	r7,#0x37,00159$
   07C3 02 08 C8      [24] 1286 	ljmp	00110$
   07C6                    1287 00159$:
   07C6 02 08 CB      [24] 1288 	ljmp	00111$
                           1289 ;	radio/at.c:299: case '0':
   07C9                    1290 00102$:
                           1291 ;	radio/at.c:300: printf("%s\n", g_banner_string);
   07C9 74 A7         [12] 1292 	mov	a,#_g_banner_string
   07CB C0 E0         [24] 1293 	push	acc
   07CD 74 CA         [12] 1294 	mov	a,#(_g_banner_string >> 8)
   07CF C0 E0         [24] 1295 	push	acc
   07D1 74 80         [12] 1296 	mov	a,#0x80
   07D3 C0 E0         [24] 1297 	push	acc
   07D5 74 42         [12] 1298 	mov	a,#__str_0
   07D7 C0 E0         [24] 1299 	push	acc
   07D9 74 68         [12] 1300 	mov	a,#(__str_0 >> 8)
   07DB C0 E0         [24] 1301 	push	acc
   07DD 74 80         [12] 1302 	mov	a,#0x80
   07DF C0 E0         [24] 1303 	push	acc
   07E1 12 30 0B      [24] 1304 	lcall	_printfl
   07E4 E5 81         [12] 1305 	mov	a,sp
   07E6 24 FA         [12] 1306 	add	a,#0xfa
   07E8 F5 81         [12] 1307 	mov	sp,a
                           1308 ;	radio/at.c:301: return;
   07EA 22            [24] 1309 	ret
                           1310 ;	radio/at.c:302: case '1':
   07EB                    1311 00103$:
                           1312 ;	radio/at.c:303: printf("%s\n", g_version_string);
   07EB 74 BA         [12] 1313 	mov	a,#_g_version_string
   07ED C0 E0         [24] 1314 	push	acc
   07EF 74 CA         [12] 1315 	mov	a,#(_g_version_string >> 8)
   07F1 C0 E0         [24] 1316 	push	acc
   07F3 74 80         [12] 1317 	mov	a,#0x80
   07F5 C0 E0         [24] 1318 	push	acc
   07F7 74 42         [12] 1319 	mov	a,#__str_0
   07F9 C0 E0         [24] 1320 	push	acc
   07FB 74 68         [12] 1321 	mov	a,#(__str_0 >> 8)
   07FD C0 E0         [24] 1322 	push	acc
   07FF 74 80         [12] 1323 	mov	a,#0x80
   0801 C0 E0         [24] 1324 	push	acc
   0803 12 30 0B      [24] 1325 	lcall	_printfl
   0806 E5 81         [12] 1326 	mov	a,sp
   0808 24 FA         [12] 1327 	add	a,#0xfa
   080A F5 81         [12] 1328 	mov	sp,a
                           1329 ;	radio/at.c:304: return;
   080C 22            [24] 1330 	ret
                           1331 ;	radio/at.c:305: case '2':
   080D                    1332 00104$:
                           1333 ;	radio/at.c:306: printf("%u\n", BOARD_ID);
   080D 74 43         [12] 1334 	mov	a,#0x43
   080F C0 E0         [24] 1335 	push	acc
   0811 E4            [12] 1336 	clr	a
   0812 C0 E0         [24] 1337 	push	acc
   0814 74 4F         [12] 1338 	mov	a,#__str_3
   0816 C0 E0         [24] 1339 	push	acc
   0818 74 68         [12] 1340 	mov	a,#(__str_3 >> 8)
   081A C0 E0         [24] 1341 	push	acc
   081C 74 80         [12] 1342 	mov	a,#0x80
   081E C0 E0         [24] 1343 	push	acc
   0820 12 30 0B      [24] 1344 	lcall	_printfl
   0823 E5 81         [12] 1345 	mov	a,sp
   0825 24 FB         [12] 1346 	add	a,#0xfb
   0827 F5 81         [12] 1347 	mov	sp,a
                           1348 ;	radio/at.c:307: break;
   0829 22            [24] 1349 	ret
                           1350 ;	radio/at.c:308: case '3':
   082A                    1351 00105$:
                           1352 ;	radio/at.c:309: printf("%u\n", g_board_frequency);
   082A 78 36         [12] 1353 	mov	r0,#_g_board_frequency
   082C E2            [24] 1354 	movx	a,@r0
   082D FE            [12] 1355 	mov	r6,a
   082E 7F 00         [12] 1356 	mov	r7,#0x00
   0830 C0 06         [24] 1357 	push	ar6
   0832 C0 07         [24] 1358 	push	ar7
   0834 74 4F         [12] 1359 	mov	a,#__str_3
   0836 C0 E0         [24] 1360 	push	acc
   0838 74 68         [12] 1361 	mov	a,#(__str_3 >> 8)
   083A C0 E0         [24] 1362 	push	acc
   083C 74 80         [12] 1363 	mov	a,#0x80
   083E C0 E0         [24] 1364 	push	acc
   0840 12 30 0B      [24] 1365 	lcall	_printfl
   0843 E5 81         [12] 1366 	mov	a,sp
   0845 24 FB         [12] 1367 	add	a,#0xfb
   0847 F5 81         [12] 1368 	mov	sp,a
                           1369 ;	radio/at.c:310: break;
   0849 22            [24] 1370 	ret
                           1371 ;	radio/at.c:311: case '4':
   084A                    1372 00106$:
                           1373 ;	radio/at.c:312: printf("%u\n", g_board_bl_version);
   084A 78 37         [12] 1374 	mov	r0,#_g_board_bl_version
   084C E2            [24] 1375 	movx	a,@r0
   084D FE            [12] 1376 	mov	r6,a
   084E 7F 00         [12] 1377 	mov	r7,#0x00
   0850 C0 06         [24] 1378 	push	ar6
   0852 C0 07         [24] 1379 	push	ar7
   0854 74 4F         [12] 1380 	mov	a,#__str_3
   0856 C0 E0         [24] 1381 	push	acc
   0858 74 68         [12] 1382 	mov	a,#(__str_3 >> 8)
   085A C0 E0         [24] 1383 	push	acc
   085C 74 80         [12] 1384 	mov	a,#0x80
   085E C0 E0         [24] 1385 	push	acc
   0860 12 30 0B      [24] 1386 	lcall	_printfl
   0863 E5 81         [12] 1387 	mov	a,sp
   0865 24 FB         [12] 1388 	add	a,#0xfb
   0867 F5 81         [12] 1389 	mov	sp,a
                           1390 ;	radio/at.c:313: return;
                           1391 ;	radio/at.c:317: for (id = 0; id < PARAM_MAX; id++) {
   0869 22            [24] 1392 	ret
   086A                    1393 00126$:
   086A 7F 00         [12] 1394 	mov	r7,#0x00
   086C                    1395 00113$:
                           1396 ;	radio/at.c:318: printf("S%u: %s=%lu\n", 
   086C 8F 82         [24] 1397 	mov	dpl,r7
   086E C0 07         [24] 1398 	push	ar7
   0870 12 28 8D      [24] 1399 	lcall	_param_get
   0873 85 82 08      [24] 1400 	mov	_at_i_sloc0_1_0,dpl
   0876 85 83 09      [24] 1401 	mov	(_at_i_sloc0_1_0 + 1),dph
   0879 85 F0 0A      [24] 1402 	mov	(_at_i_sloc0_1_0 + 2),b
   087C F5 0B         [12] 1403 	mov	(_at_i_sloc0_1_0 + 3),a
   087E D0 07         [24] 1404 	pop	ar7
   0880 8F 82         [24] 1405 	mov	dpl,r7
   0882 C0 07         [24] 1406 	push	ar7
   0884 12 2B 6C      [24] 1407 	lcall	_param_name
   0887 AA 82         [24] 1408 	mov	r2,dpl
   0889 AD 83         [24] 1409 	mov	r5,dph
   088B AE F0         [24] 1410 	mov	r6,b
   088D D0 07         [24] 1411 	pop	ar7
   088F 8F 03         [24] 1412 	mov	ar3,r7
   0891 7C 00         [12] 1413 	mov	r4,#0x00
   0893 C0 07         [24] 1414 	push	ar7
   0895 C0 08         [24] 1415 	push	_at_i_sloc0_1_0
   0897 C0 09         [24] 1416 	push	(_at_i_sloc0_1_0 + 1)
   0899 C0 0A         [24] 1417 	push	(_at_i_sloc0_1_0 + 2)
   089B C0 0B         [24] 1418 	push	(_at_i_sloc0_1_0 + 3)
   089D C0 02         [24] 1419 	push	ar2
   089F C0 05         [24] 1420 	push	ar5
   08A1 C0 06         [24] 1421 	push	ar6
   08A3 C0 03         [24] 1422 	push	ar3
   08A5 C0 04         [24] 1423 	push	ar4
   08A7 74 53         [12] 1424 	mov	a,#__str_4
   08A9 C0 E0         [24] 1425 	push	acc
   08AB 74 68         [12] 1426 	mov	a,#(__str_4 >> 8)
   08AD C0 E0         [24] 1427 	push	acc
   08AF 74 80         [12] 1428 	mov	a,#0x80
   08B1 C0 E0         [24] 1429 	push	acc
   08B3 12 30 0B      [24] 1430 	lcall	_printfl
   08B6 E5 81         [12] 1431 	mov	a,sp
   08B8 24 F4         [12] 1432 	add	a,#0xf4
   08BA F5 81         [12] 1433 	mov	sp,a
   08BC D0 07         [24] 1434 	pop	ar7
                           1435 ;	radio/at.c:317: for (id = 0; id < PARAM_MAX; id++) {
   08BE 0F            [12] 1436 	inc	r7
   08BF BF 0F 00      [24] 1437 	cjne	r7,#0x0F,00160$
   08C2                    1438 00160$:
   08C2 40 A8         [24] 1439 	jc	00113$
                           1440 ;	radio/at.c:323: return;
                           1441 ;	radio/at.c:325: case '6':
   08C4 22            [24] 1442 	ret
   08C5                    1443 00109$:
                           1444 ;	radio/at.c:326: tdm_report_timing();
                           1445 ;	radio/at.c:327: return;
                           1446 ;	radio/at.c:328: case '7':
   08C5 02 57 FC      [24] 1447 	ljmp	_tdm_report_timing
   08C8                    1448 00110$:
                           1449 ;	radio/at.c:329: tdm_show_rssi();
                           1450 ;	radio/at.c:330: return;
                           1451 ;	radio/at.c:331: default:
   08C8 02 47 E6      [24] 1452 	ljmp	_tdm_show_rssi
   08CB                    1453 00111$:
                           1454 ;	radio/at.c:332: at_error();
                           1455 ;	radio/at.c:333: return;
                           1456 ;	radio/at.c:334: }
   08CB 02 06 C1      [24] 1457 	ljmp	_at_error
                           1458 ;------------------------------------------------------------
                           1459 ;Allocation info for local variables in function 'at_s'
                           1460 ;------------------------------------------------------------
                           1461 ;	radio/at.c:338: at_s(void)
                           1462 ;	-----------------------------------------
                           1463 ;	 function at_s
                           1464 ;	-----------------------------------------
   08CE                    1465 _at_s:
                           1466 ;	radio/at.c:344: idx = 3;
   08CE 78 16         [12] 1467 	mov	r0,#_idx
   08D0 74 03         [12] 1468 	mov	a,#0x03
   08D2 F2            [24] 1469 	movx	@r0,a
                           1470 ;	radio/at.c:345: sreg = at_parse_number();
   08D3 12 06 E3      [24] 1471 	lcall	_at_parse_number
   08D6 AC 82         [24] 1472 	mov	r4,dpl
   08D8 AD 83         [24] 1473 	mov	r5,dph
   08DA AE F0         [24] 1474 	mov	r6,b
   08DC FF            [12] 1475 	mov	r7,a
                           1476 ;	radio/at.c:347: if (sreg >= PARAM_MAX) {
   08DD BC 0F 00      [24] 1477 	cjne	r4,#0x0F,00127$
   08E0                    1478 00127$:
   08E0 40 03         [24] 1479 	jc	00102$
                           1480 ;	radio/at.c:348: at_error();
                           1481 ;	radio/at.c:349: return;
   08E2 02 06 C1      [24] 1482 	ljmp	_at_error
   08E5                    1483 00102$:
                           1484 ;	radio/at.c:352: switch (at_cmd[idx]) {
   08E5 78 16         [12] 1485 	mov	r0,#_idx
   08E7 E2            [24] 1486 	movx	a,@r0
   08E8 24 01         [12] 1487 	add	a,#_at_cmd
   08EA F9            [12] 1488 	mov	r1,a
   08EB E3            [24] 1489 	movx	a,@r1
   08EC FF            [12] 1490 	mov	r7,a
   08ED BF 3D 02      [24] 1491 	cjne	r7,#0x3D,00129$
   08F0 80 2D         [24] 1492 	sjmp	00104$
   08F2                    1493 00129$:
   08F2 BF 3F 58      [24] 1494 	cjne	r7,#0x3F,00109$
                           1495 ;	radio/at.c:354: val = param_get(sreg);
   08F5 8C 82         [24] 1496 	mov	dpl,r4
   08F7 12 28 8D      [24] 1497 	lcall	_param_get
   08FA AB 82         [24] 1498 	mov	r3,dpl
   08FC AD 83         [24] 1499 	mov	r5,dph
   08FE AE F0         [24] 1500 	mov	r6,b
   0900 FF            [12] 1501 	mov	r7,a
                           1502 ;	radio/at.c:355: printf("%lu\n", val);
   0901 C0 03         [24] 1503 	push	ar3
   0903 C0 05         [24] 1504 	push	ar5
   0905 C0 06         [24] 1505 	push	ar6
   0907 C0 07         [24] 1506 	push	ar7
   0909 74 60         [12] 1507 	mov	a,#__str_5
   090B C0 E0         [24] 1508 	push	acc
   090D 74 68         [12] 1509 	mov	a,#(__str_5 >> 8)
   090F C0 E0         [24] 1510 	push	acc
   0911 74 80         [12] 1511 	mov	a,#0x80
   0913 C0 E0         [24] 1512 	push	acc
   0915 12 30 0B      [24] 1513 	lcall	_printfl
   0918 E5 81         [12] 1514 	mov	a,sp
   091A 24 F9         [12] 1515 	add	a,#0xf9
   091C F5 81         [12] 1516 	mov	sp,a
                           1517 ;	radio/at.c:356: return;
                           1518 ;	radio/at.c:358: case '=':
   091E 22            [24] 1519 	ret
   091F                    1520 00104$:
                           1521 ;	radio/at.c:359: if (sreg > 0) {
   091F EC            [12] 1522 	mov	a,r4
   0920 60 2B         [24] 1523 	jz	00109$
                           1524 ;	radio/at.c:360: idx++;
   0922 78 16         [12] 1525 	mov	r0,#_idx
   0924 E2            [24] 1526 	movx	a,@r0
   0925 24 01         [12] 1527 	add	a,#0x01
   0927 F2            [24] 1528 	movx	@r0,a
                           1529 ;	radio/at.c:361: val = at_parse_number();
   0928 C0 04         [24] 1530 	push	ar4
   092A 12 06 E3      [24] 1531 	lcall	_at_parse_number
   092D AB 82         [24] 1532 	mov	r3,dpl
   092F AD 83         [24] 1533 	mov	r5,dph
   0931 AE F0         [24] 1534 	mov	r6,b
   0933 FF            [12] 1535 	mov	r7,a
   0934 D0 04         [24] 1536 	pop	ar4
                           1537 ;	radio/at.c:362: if (param_set(sreg, val)) {
   0936 78 6D         [12] 1538 	mov	r0,#_param_set_PARM_2
   0938 EB            [12] 1539 	mov	a,r3
   0939 F2            [24] 1540 	movx	@r0,a
   093A 08            [12] 1541 	inc	r0
   093B ED            [12] 1542 	mov	a,r5
   093C F2            [24] 1543 	movx	@r0,a
   093D 08            [12] 1544 	inc	r0
   093E EE            [12] 1545 	mov	a,r6
   093F F2            [24] 1546 	movx	@r0,a
   0940 08            [12] 1547 	inc	r0
   0941 EF            [12] 1548 	mov	a,r7
   0942 F2            [24] 1549 	movx	@r0,a
   0943 8C 82         [24] 1550 	mov	dpl,r4
   0945 12 26 EA      [24] 1551 	lcall	_param_set
   0948 50 03         [24] 1552 	jnc	00109$
                           1553 ;	radio/at.c:363: at_ok();
                           1554 ;	radio/at.c:364: return;
                           1555 ;	radio/at.c:368: }
   094A 02 06 9F      [24] 1556 	ljmp	_at_ok
   094D                    1557 00109$:
                           1558 ;	radio/at.c:369: at_error();
   094D 02 06 C1      [24] 1559 	ljmp	_at_error
                           1560 ;------------------------------------------------------------
                           1561 ;Allocation info for local variables in function 'at_ampersand'
                           1562 ;------------------------------------------------------------
                           1563 ;x                         Allocated with name '_at_ampersand_x_3_170'
                           1564 ;------------------------------------------------------------
                           1565 ;	radio/at.c:373: at_ampersand(void)
                           1566 ;	-----------------------------------------
                           1567 ;	 function at_ampersand
                           1568 ;	-----------------------------------------
   0950                    1569 _at_ampersand:
                           1570 ;	radio/at.c:375: switch (at_cmd[3]) {
   0950 78 04         [12] 1571 	mov	r0,#(_at_cmd + 0x0003)
   0952 E2            [24] 1572 	movx	a,@r0
   0953 FF            [12] 1573 	mov	r7,a
   0954 BF 46 02      [24] 1574 	cjne	r7,#0x46,00154$
   0957 80 17         [24] 1575 	sjmp	00101$
   0959                    1576 00154$:
   0959 BF 50 02      [24] 1577 	cjne	r7,#0x50,00155$
   095C 80 4D         [24] 1578 	sjmp	00107$
   095E                    1579 00155$:
   095E BF 54 02      [24] 1580 	cjne	r7,#0x54,00156$
   0961 80 4B         [24] 1581 	sjmp	00108$
   0963                    1582 00156$:
   0963 BF 55 02      [24] 1583 	cjne	r7,#0x55,00157$
   0966 80 14         [24] 1584 	sjmp	00103$
   0968                    1585 00157$:
   0968 BF 57 02      [24] 1586 	cjne	r7,#0x57,00158$
   096B 80 09         [24] 1587 	sjmp	00102$
   096D                    1588 00158$:
   096D 02 0A 24      [24] 1589 	ljmp	00118$
                           1590 ;	radio/at.c:376: case 'F':
   0970                    1591 00101$:
                           1592 ;	radio/at.c:377: param_default();
   0970 12 2A D2      [24] 1593 	lcall	_param_default
                           1594 ;	radio/at.c:378: at_ok();
                           1595 ;	radio/at.c:379: break;
   0973 02 06 9F      [24] 1596 	ljmp	_at_ok
                           1597 ;	radio/at.c:380: case 'W':
   0976                    1598 00102$:
                           1599 ;	radio/at.c:381: param_save();
   0976 12 2A 29      [24] 1600 	lcall	_param_save
                           1601 ;	radio/at.c:382: at_ok();
                           1602 ;	radio/at.c:383: break;
   0979 02 06 9F      [24] 1603 	ljmp	_at_ok
                           1604 ;	radio/at.c:385: case 'U':
   097C                    1605 00103$:
                           1606 ;	radio/at.c:386: if (!strcmp(at_cmd + 4, "PDATE")) {
   097C 90 05 D0      [24] 1607 	mov	dptr,#_strcmp_PARM_2
   097F 74 65         [12] 1608 	mov	a,#__str_6
   0981 F0            [24] 1609 	movx	@dptr,a
   0982 74 68         [12] 1610 	mov	a,#(__str_6 >> 8)
   0984 A3            [24] 1611 	inc	dptr
   0985 F0            [24] 1612 	movx	@dptr,a
   0986 74 80         [12] 1613 	mov	a,#0x80
   0988 A3            [24] 1614 	inc	dptr
   0989 F0            [24] 1615 	movx	@dptr,a
   098A 90 00 05      [24] 1616 	mov	dptr,#(_at_cmd + 0x0004)
   098D 75 F0 60      [24] 1617 	mov	b,#0x60
   0990 12 60 F2      [24] 1618 	lcall	_strcmp
   0993 E5 82         [12] 1619 	mov	a,dpl
   0995 85 83 F0      [24] 1620 	mov	b,dph
   0998 45 F0         [12] 1621 	orl	a,b
   099A 70 0C         [24] 1622 	jnz	00106$
                           1623 ;	radio/at.c:388: volatile char x = *(__code volatile char *)0xfc00;
   099C 90 FC 00      [24] 1624 	mov	dptr,#0xFC00
   099F E4            [12] 1625 	clr	a
   09A0 93            [24] 1626 	movc	a,@a+dptr
   09A1 FF            [12] 1627 	mov	r7,a
   09A2 90 00 F0      [24] 1628 	mov	dptr,#_at_ampersand_x_3_170
   09A5 F0            [24] 1629 	movx	@dptr,a
   09A6                    1630 00121$:
   09A6 80 FE         [24] 1631 	sjmp	00121$
   09A8                    1632 00106$:
                           1633 ;	radio/at.c:392: at_error();
                           1634 ;	radio/at.c:393: break;
   09A8 02 06 C1      [24] 1635 	ljmp	_at_error
                           1636 ;	radio/at.c:395: case 'P':
   09AB                    1637 00107$:
                           1638 ;	radio/at.c:396: tdm_change_phase();
                           1639 ;	radio/at.c:397: break;
   09AB 02 4C C4      [24] 1640 	ljmp	_tdm_change_phase
                           1641 ;	radio/at.c:399: case 'T':
   09AE                    1642 00108$:
                           1643 ;	radio/at.c:401: if (!strcmp(at_cmd + 4, "")) {
   09AE 90 05 D0      [24] 1644 	mov	dptr,#_strcmp_PARM_2
   09B1 74 6B         [12] 1645 	mov	a,#__str_7
   09B3 F0            [24] 1646 	movx	@dptr,a
   09B4 74 68         [12] 1647 	mov	a,#(__str_7 >> 8)
   09B6 A3            [24] 1648 	inc	dptr
   09B7 F0            [24] 1649 	movx	@dptr,a
   09B8 74 80         [12] 1650 	mov	a,#0x80
   09BA A3            [24] 1651 	inc	dptr
   09BB F0            [24] 1652 	movx	@dptr,a
   09BC 90 00 05      [24] 1653 	mov	dptr,#(_at_cmd + 0x0004)
   09BF 75 F0 60      [24] 1654 	mov	b,#0x60
   09C2 12 60 F2      [24] 1655 	lcall	_strcmp
   09C5 E5 82         [12] 1656 	mov	a,dpl
   09C7 85 83 F0      [24] 1657 	mov	b,dph
   09CA 45 F0         [12] 1658 	orl	a,b
   09CC 70 05         [24] 1659 	jnz	00116$
                           1660 ;	radio/at.c:403: at_testmode = 0;
   09CE 78 13         [12] 1661 	mov	r0,#_at_testmode
   09D0 E4            [12] 1662 	clr	a
   09D1 F2            [24] 1663 	movx	@r0,a
   09D2 22            [24] 1664 	ret
   09D3                    1665 00116$:
                           1666 ;	radio/at.c:404: } else if (!strcmp(at_cmd + 4, "=RSSI")) {
   09D3 90 05 D0      [24] 1667 	mov	dptr,#_strcmp_PARM_2
   09D6 74 6C         [12] 1668 	mov	a,#__str_8
   09D8 F0            [24] 1669 	movx	@dptr,a
   09D9 74 68         [12] 1670 	mov	a,#(__str_8 >> 8)
   09DB A3            [24] 1671 	inc	dptr
   09DC F0            [24] 1672 	movx	@dptr,a
   09DD 74 80         [12] 1673 	mov	a,#0x80
   09DF A3            [24] 1674 	inc	dptr
   09E0 F0            [24] 1675 	movx	@dptr,a
   09E1 90 00 05      [24] 1676 	mov	dptr,#(_at_cmd + 0x0004)
   09E4 75 F0 60      [24] 1677 	mov	b,#0x60
   09E7 12 60 F2      [24] 1678 	lcall	_strcmp
   09EA E5 82         [12] 1679 	mov	a,dpl
   09EC 85 83 F0      [24] 1680 	mov	b,dph
   09EF 45 F0         [12] 1681 	orl	a,b
   09F1 70 07         [24] 1682 	jnz	00113$
                           1683 ;	radio/at.c:406: at_testmode ^= AT_TEST_RSSI;
   09F3 78 13         [12] 1684 	mov	r0,#_at_testmode
   09F5 E2            [24] 1685 	movx	a,@r0
   09F6 64 01         [12] 1686 	xrl	a,#0x01
   09F8 F2            [24] 1687 	movx	@r0,a
   09F9 22            [24] 1688 	ret
   09FA                    1689 00113$:
                           1690 ;	radio/at.c:407: } else if (!strcmp(at_cmd + 4, "=TDM")) {
   09FA 90 05 D0      [24] 1691 	mov	dptr,#_strcmp_PARM_2
   09FD 74 72         [12] 1692 	mov	a,#__str_9
   09FF F0            [24] 1693 	movx	@dptr,a
   0A00 74 68         [12] 1694 	mov	a,#(__str_9 >> 8)
   0A02 A3            [24] 1695 	inc	dptr
   0A03 F0            [24] 1696 	movx	@dptr,a
   0A04 74 80         [12] 1697 	mov	a,#0x80
   0A06 A3            [24] 1698 	inc	dptr
   0A07 F0            [24] 1699 	movx	@dptr,a
   0A08 90 00 05      [24] 1700 	mov	dptr,#(_at_cmd + 0x0004)
   0A0B 75 F0 60      [24] 1701 	mov	b,#0x60
   0A0E 12 60 F2      [24] 1702 	lcall	_strcmp
   0A11 E5 82         [12] 1703 	mov	a,dpl
   0A13 85 83 F0      [24] 1704 	mov	b,dph
   0A16 45 F0         [12] 1705 	orl	a,b
   0A18 70 07         [24] 1706 	jnz	00110$
                           1707 ;	radio/at.c:409: at_testmode ^= AT_TEST_TDM;
   0A1A 78 13         [12] 1708 	mov	r0,#_at_testmode
   0A1C E2            [24] 1709 	movx	a,@r0
   0A1D 64 02         [12] 1710 	xrl	a,#0x02
   0A1F F2            [24] 1711 	movx	@r0,a
   0A20 22            [24] 1712 	ret
   0A21                    1713 00110$:
                           1714 ;	radio/at.c:411: at_error();
                           1715 ;	radio/at.c:413: break;
                           1716 ;	radio/at.c:415: default:
   0A21 02 06 C1      [24] 1717 	ljmp	_at_error
   0A24                    1718 00118$:
                           1719 ;	radio/at.c:416: at_error();
                           1720 ;	radio/at.c:418: }
   0A24 02 06 C1      [24] 1721 	ljmp	_at_error
                           1722 ;------------------------------------------------------------
                           1723 ;Allocation info for local variables in function 'at_plus'
                           1724 ;------------------------------------------------------------
                           1725 ;	radio/at.c:422: at_plus(void)
                           1726 ;	-----------------------------------------
                           1727 ;	 function at_plus
                           1728 ;	-----------------------------------------
   0A27                    1729 _at_plus:
                           1730 ;	radio/at.c:429: idx = 4;
   0A27 78 16         [12] 1731 	mov	r0,#_idx
   0A29 74 04         [12] 1732 	mov	a,#0x04
   0A2B F2            [24] 1733 	movx	@r0,a
                           1734 ;	radio/at.c:430: creg = at_parse_number();
   0A2C 12 06 E3      [24] 1735 	lcall	_at_parse_number
   0A2F AC 82         [24] 1736 	mov	r4,dpl
   0A31 AD 83         [24] 1737 	mov	r5,dph
   0A33 AE F0         [24] 1738 	mov	r6,b
                           1739 ;	radio/at.c:432: switch (at_cmd[3])
   0A35 78 04         [12] 1740 	mov	r0,#(_at_cmd + 0x0003)
   0A37 E2            [24] 1741 	movx	a,@r0
   0A38 FF            [12] 1742 	mov	r7,a
   0A39 BF 43 02      [24] 1743 	cjne	r7,#0x43,00142$
   0A3C 80 51         [24] 1744 	sjmp	00104$
   0A3E                    1745 00142$:
   0A3E BF 4C 03      [24] 1746 	cjne	r7,#0x4C,00143$
   0A41 02 0B 25      [24] 1747 	ljmp	00111$
   0A44                    1748 00143$:
   0A44 BF 50 02      [24] 1749 	cjne	r7,#0x50,00144$
   0A47 80 03         [24] 1750 	sjmp	00145$
   0A49                    1751 00144$:
   0A49 02 0B 33      [24] 1752 	ljmp	00115$
   0A4C                    1753 00145$:
                           1754 ;	radio/at.c:435: if (at_cmd[4] != '=')
   0A4C 78 05         [12] 1755 	mov	r0,#(_at_cmd + 0x0004)
   0A4E E2            [24] 1756 	movx	a,@r0
   0A4F FF            [12] 1757 	mov	r7,a
   0A50 BF 3D 02      [24] 1758 	cjne	r7,#0x3D,00146$
   0A53 80 03         [24] 1759 	sjmp	00147$
   0A55                    1760 00146$:
   0A55 02 0B 33      [24] 1761 	ljmp	00115$
   0A58                    1762 00147$:
                           1763 ;	radio/at.c:439: idx = 5;
   0A58 78 16         [12] 1764 	mov	r0,#_idx
   0A5A 74 05         [12] 1765 	mov	a,#0x05
   0A5C F2            [24] 1766 	movx	@r0,a
                           1767 ;	radio/at.c:440: val = at_parse_number();
   0A5D 12 06 E3      [24] 1768 	lcall	_at_parse_number
   0A60 78 17         [12] 1769 	mov	r0,#_at_plus_val_1_176
   0A62 C0 E0         [24] 1770 	push	acc
   0A64 E5 82         [12] 1771 	mov	a,dpl
   0A66 F2            [24] 1772 	movx	@r0,a
   0A67 08            [12] 1773 	inc	r0
   0A68 E5 83         [12] 1774 	mov	a,dph
   0A6A F2            [24] 1775 	movx	@r0,a
   0A6B 08            [12] 1776 	inc	r0
   0A6C E5 F0         [12] 1777 	mov	a,b
   0A6E F2            [24] 1778 	movx	@r0,a
   0A6F D0 E0         [24] 1779 	pop	acc
   0A71 08            [12] 1780 	inc	r0
   0A72 F2            [24] 1781 	movx	@r0,a
                           1782 ;	radio/at.c:441: PCA0CPH0 = val & 0xFF;
   0A73 78 17         [12] 1783 	mov	r0,#_at_plus_val_1_176
   0A75 E2            [24] 1784 	movx	a,@r0
   0A76 54 FF         [12] 1785 	anl	a,#0xFF
   0A78 FA            [12] 1786 	mov	r2,a
   0A79 08            [12] 1787 	inc	r0
   0A7A E2            [24] 1788 	movx	a,@r0
   0A7B 54 00         [12] 1789 	anl	a,#0x00
   0A7D 08            [12] 1790 	inc	r0
   0A7E E2            [24] 1791 	movx	a,@r0
   0A7F 54 00         [12] 1792 	anl	a,#0x00
   0A81 08            [12] 1793 	inc	r0
   0A82 E2            [24] 1794 	movx	a,@r0
   0A83 54 00         [12] 1795 	anl	a,#0x00
   0A85 8A FC         [24] 1796 	mov	_PCA0CPH0,r2
                           1797 ;	radio/at.c:442: radio_set_diversity(false);
   0A87 C2 1F         [12] 1798 	clr	_radio_set_diversity_PARM_1
   0A89 12 3F 87      [24] 1799 	lcall	_radio_set_diversity
                           1800 ;	radio/at.c:443: at_ok();
                           1801 ;	radio/at.c:444: return;
   0A8C 02 06 9F      [24] 1802 	ljmp	_at_ok
                           1803 ;	radio/at.c:445: case 'C': // AT+Cx=y write calibration value
   0A8F                    1804 00104$:
                           1805 ;	radio/at.c:446: switch (at_cmd[idx])
   0A8F 78 16         [12] 1806 	mov	r0,#_idx
   0A91 E2            [24] 1807 	movx	a,@r0
   0A92 24 01         [12] 1808 	add	a,#_at_cmd
   0A94 F9            [12] 1809 	mov	r1,a
   0A95 E3            [24] 1810 	movx	a,@r1
   0A96 FF            [12] 1811 	mov	r7,a
   0A97 BF 3D 02      [24] 1812 	cjne	r7,#0x3D,00148$
   0A9A 80 41         [24] 1813 	sjmp	00106$
   0A9C                    1814 00148$:
   0A9C BF 3F 02      [24] 1815 	cjne	r7,#0x3F,00149$
   0A9F 80 03         [24] 1816 	sjmp	00150$
   0AA1                    1817 00149$:
   0AA1 02 0B 33      [24] 1818 	ljmp	00115$
   0AA4                    1819 00150$:
                           1820 ;	radio/at.c:449: val = calibration_get(creg);
   0AA4 8C 82         [24] 1821 	mov	dpl,r4
   0AA6 12 2C 6A      [24] 1822 	lcall	_calibration_get
   0AA9 AF 82         [24] 1823 	mov	r7,dpl
   0AAB 78 17         [12] 1824 	mov	r0,#_at_plus_val_1_176
   0AAD EF            [12] 1825 	mov	a,r7
   0AAE F2            [24] 1826 	movx	@r0,a
   0AAF 08            [12] 1827 	inc	r0
   0AB0 E4            [12] 1828 	clr	a
   0AB1 F2            [24] 1829 	movx	@r0,a
   0AB2 08            [12] 1830 	inc	r0
   0AB3 F2            [24] 1831 	movx	@r0,a
   0AB4 08            [12] 1832 	inc	r0
   0AB5 F2            [24] 1833 	movx	@r0,a
                           1834 ;	radio/at.c:450: printf("%lu\n",val);
   0AB6 78 17         [12] 1835 	mov	r0,#_at_plus_val_1_176
   0AB8 E2            [24] 1836 	movx	a,@r0
   0AB9 C0 E0         [24] 1837 	push	acc
   0ABB 08            [12] 1838 	inc	r0
   0ABC E2            [24] 1839 	movx	a,@r0
   0ABD C0 E0         [24] 1840 	push	acc
   0ABF 08            [12] 1841 	inc	r0
   0AC0 E2            [24] 1842 	movx	a,@r0
   0AC1 C0 E0         [24] 1843 	push	acc
   0AC3 08            [12] 1844 	inc	r0
   0AC4 E2            [24] 1845 	movx	a,@r0
   0AC5 C0 E0         [24] 1846 	push	acc
   0AC7 74 60         [12] 1847 	mov	a,#__str_5
   0AC9 C0 E0         [24] 1848 	push	acc
   0ACB 74 68         [12] 1849 	mov	a,#(__str_5 >> 8)
   0ACD C0 E0         [24] 1850 	push	acc
   0ACF 74 80         [12] 1851 	mov	a,#0x80
   0AD1 C0 E0         [24] 1852 	push	acc
   0AD3 12 30 0B      [24] 1853 	lcall	_printfl
   0AD6 E5 81         [12] 1854 	mov	a,sp
   0AD8 24 F9         [12] 1855 	add	a,#0xf9
   0ADA F5 81         [12] 1856 	mov	sp,a
                           1857 ;	radio/at.c:451: return;
                           1858 ;	radio/at.c:452: case '=':
   0ADC 22            [24] 1859 	ret
   0ADD                    1860 00106$:
                           1861 ;	radio/at.c:453: idx++;
   0ADD 78 16         [12] 1862 	mov	r0,#_idx
   0ADF E2            [24] 1863 	movx	a,@r0
   0AE0 24 01         [12] 1864 	add	a,#0x01
   0AE2 F2            [24] 1865 	movx	@r0,a
                           1866 ;	radio/at.c:454: val = at_parse_number();
   0AE3 C0 04         [24] 1867 	push	ar4
   0AE5 12 06 E3      [24] 1868 	lcall	_at_parse_number
   0AE8 78 17         [12] 1869 	mov	r0,#_at_plus_val_1_176
   0AEA C0 E0         [24] 1870 	push	acc
   0AEC E5 82         [12] 1871 	mov	a,dpl
   0AEE F2            [24] 1872 	movx	@r0,a
   0AEF 08            [12] 1873 	inc	r0
   0AF0 E5 83         [12] 1874 	mov	a,dph
   0AF2 F2            [24] 1875 	movx	@r0,a
   0AF3 08            [12] 1876 	inc	r0
   0AF4 E5 F0         [12] 1877 	mov	a,b
   0AF6 F2            [24] 1878 	movx	@r0,a
   0AF7 D0 E0         [24] 1879 	pop	acc
   0AF9 08            [12] 1880 	inc	r0
   0AFA F2            [24] 1881 	movx	@r0,a
   0AFB D0 04         [24] 1882 	pop	ar4
                           1883 ;	radio/at.c:455: if (calibration_set(creg, val&0xFF))
   0AFD 78 17         [12] 1884 	mov	r0,#_at_plus_val_1_176
   0AFF E2            [24] 1885 	movx	a,@r0
   0B00 54 FF         [12] 1886 	anl	a,#0xFF
   0B02 FB            [12] 1887 	mov	r3,a
   0B03 08            [12] 1888 	inc	r0
   0B04 E2            [24] 1889 	movx	a,@r0
   0B05 54 00         [12] 1890 	anl	a,#0x00
   0B07 08            [12] 1891 	inc	r0
   0B08 E2            [24] 1892 	movx	a,@r0
   0B09 54 00         [12] 1893 	anl	a,#0x00
   0B0B 08            [12] 1894 	inc	r0
   0B0C E2            [24] 1895 	movx	a,@r0
   0B0D 54 00         [12] 1896 	anl	a,#0x00
   0B0F C0 03         [24] 1897 	push	ar3
   0B11 8C 82         [24] 1898 	mov	dpl,r4
   0B13 12 2C 20      [24] 1899 	lcall	_calibration_set
   0B16 15 81         [12] 1900 	dec	sp
   0B18 92 02         [24] 1901 	mov	_at_plus_sloc0_1_0,c
   0B1A 50 05         [24] 1902 	jnc	00108$
                           1903 ;	radio/at.c:457: at_ok();
   0B1C 12 06 9F      [24] 1904 	lcall	_at_ok
   0B1F 80 03         [24] 1905 	sjmp	00109$
   0B21                    1906 00108$:
                           1907 ;	radio/at.c:459: at_error();
                           1908 ;	radio/at.c:461: return;
                           1909 ;	radio/at.c:464: case 'L': // AT+L lock bootloader area if all calibrations written
   0B21 02 06 C1      [24] 1910 	ljmp	_at_error
   0B24                    1911 00109$:
   0B24 22            [24] 1912 	ret
   0B25                    1913 00111$:
                           1914 ;	radio/at.c:465: if (calibration_lock())
   0B25 12 2C A3      [24] 1915 	lcall	_calibration_lock
   0B28 50 05         [24] 1916 	jnc	00113$
                           1917 ;	radio/at.c:467: at_ok();
   0B2A 12 06 9F      [24] 1918 	lcall	_at_ok
   0B2D 80 03         [24] 1919 	sjmp	00114$
   0B2F                    1920 00113$:
                           1921 ;	radio/at.c:469: at_error();
                           1922 ;	radio/at.c:471: return;
                           1923 ;	radio/at.c:472: }
   0B2F 02 06 C1      [24] 1924 	ljmp	_at_error
   0B32                    1925 00114$:
   0B32 22            [24] 1926 	ret
   0B33                    1927 00115$:
                           1928 ;	radio/at.c:474: at_error();
   0B33 02 06 C1      [24] 1929 	ljmp	_at_error
                           1930 	.area CSEG    (CODE)
                           1931 	.area CONST   (CODE)
   6842                    1932 __str_0:
   6842 25 73              1933 	.ascii "%s"
   6844 0A                 1934 	.db 0x0A
   6845 00                 1935 	.db 0x00
   6846                    1936 __str_1:
   6846 4F 4B              1937 	.ascii "OK"
   6848 00                 1938 	.db 0x00
   6849                    1939 __str_2:
   6849 45 52 52 4F 52     1940 	.ascii "ERROR"
   684E 00                 1941 	.db 0x00
   684F                    1942 __str_3:
   684F 25 75              1943 	.ascii "%u"
   6851 0A                 1944 	.db 0x0A
   6852 00                 1945 	.db 0x00
   6853                    1946 __str_4:
   6853 53 25 75 3A 20 25  1947 	.ascii "S%u: %s=%lu"
        73 3D 25 6C 75
   685E 0A                 1948 	.db 0x0A
   685F 00                 1949 	.db 0x00
   6860                    1950 __str_5:
   6860 25 6C 75           1951 	.ascii "%lu"
   6863 0A                 1952 	.db 0x0A
   6864 00                 1953 	.db 0x00
   6865                    1954 __str_6:
   6865 50 44 41 54 45     1955 	.ascii "PDATE"
   686A 00                 1956 	.db 0x00
   686B                    1957 __str_7:
   686B 00                 1958 	.db 0x00
   686C                    1959 __str_8:
   686C 3D 52 53 53 49     1960 	.ascii "=RSSI"
   6871 00                 1961 	.db 0x00
   6872                    1962 __str_9:
   6872 3D 54 44 4D        1963 	.ascii "=TDM"
   6876 00                 1964 	.db 0x00
                           1965 	.area XINIT   (CODE)
                           1966 	.area CABS    (ABS,CODE)
