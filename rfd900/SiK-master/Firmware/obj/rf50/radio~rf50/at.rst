                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:05 2013
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
                             28 	.globl _SDN
                             29 	.globl _NSS1
                             30 	.globl _IRQ
                             31 	.globl _BUTTON_DOWN
                             32 	.globl _BUTTON_UP
                             33 	.globl _BUTTON_ENTER
                             34 	.globl _LED_GREEN
                             35 	.globl _LED_RED
                             36 	.globl _SPI0EN
                             37 	.globl _TXBMT0
                             38 	.globl _NSS0MD0
                             39 	.globl _NSS0MD1
                             40 	.globl _RXOVRN0
                             41 	.globl _MODF0
                             42 	.globl _WCOL0
                             43 	.globl _SPIF0
                             44 	.globl _AD0CM0
                             45 	.globl _AD0CM1
                             46 	.globl _AD0CM2
                             47 	.globl _AD0WINT
                             48 	.globl _AD0BUSY
                             49 	.globl _AD0INT
                             50 	.globl _BURSTEN
                             51 	.globl _AD0EN
                             52 	.globl _CCF0
                             53 	.globl _CCF1
                             54 	.globl _CCF2
                             55 	.globl _CCF3
                             56 	.globl _CCF4
                             57 	.globl _CCF5
                             58 	.globl _CR
                             59 	.globl _CF
                             60 	.globl _P
                             61 	.globl _F1
                             62 	.globl _OV
                             63 	.globl _RS0
                             64 	.globl _RS1
                             65 	.globl _F0
                             66 	.globl _AC
                             67 	.globl _CY
                             68 	.globl _T2XCLK
                             69 	.globl _T2RCLK
                             70 	.globl _TR2
                             71 	.globl _T2SPLIT
                             72 	.globl _TF2CEN
                             73 	.globl _TF2LEN
                             74 	.globl _TF2L
                             75 	.globl _TF2H
                             76 	.globl _SI
                             77 	.globl _ACK
                             78 	.globl _ARBLOST
                             79 	.globl _ACKRQ
                             80 	.globl _STO
                             81 	.globl _STA
                             82 	.globl _TXMODE
                             83 	.globl _MASTER
                             84 	.globl _PX0
                             85 	.globl _PT0
                             86 	.globl _PX1
                             87 	.globl _PT1
                             88 	.globl _PS0
                             89 	.globl _PT2
                             90 	.globl _PSPI0
                             91 	.globl _SPI1EN
                             92 	.globl _TXBMT1
                             93 	.globl _NSS1MD0
                             94 	.globl _NSS1MD1
                             95 	.globl _RXOVRN1
                             96 	.globl _MODF1
                             97 	.globl _WCOL1
                             98 	.globl _SPIF1
                             99 	.globl _EX0
                            100 	.globl _ET0
                            101 	.globl _EX1
                            102 	.globl _ET1
                            103 	.globl _ES0
                            104 	.globl _ET2
                            105 	.globl _ESPI0
                            106 	.globl _EA
                            107 	.globl _RI0
                            108 	.globl _TI0
                            109 	.globl _RB80
                            110 	.globl _TB80
                            111 	.globl _REN0
                            112 	.globl _MCE0
                            113 	.globl _S0MODE
                            114 	.globl _CRC0VAL
                            115 	.globl _CRC0INIT
                            116 	.globl _CRC0SEL
                            117 	.globl _IT0
                            118 	.globl _IE0
                            119 	.globl _IT1
                            120 	.globl _IE1
                            121 	.globl _TR0
                            122 	.globl _TF0
                            123 	.globl _TR1
                            124 	.globl _TF1
                            125 	.globl _PCA0CP4
                            126 	.globl _PCA0CP0
                            127 	.globl _PCA0
                            128 	.globl _PCA0CP3
                            129 	.globl _PCA0CP2
                            130 	.globl _PCA0CP1
                            131 	.globl _PCA0CP5
                            132 	.globl _TMR2
                            133 	.globl _TMR2RL
                            134 	.globl _ADC0LT
                            135 	.globl _ADC0GT
                            136 	.globl _ADC0
                            137 	.globl _TMR3
                            138 	.globl _TMR3RL
                            139 	.globl _TOFF
                            140 	.globl _DP
                            141 	.globl _VDM0CN
                            142 	.globl _PCA0CPH4
                            143 	.globl _PCA0CPL4
                            144 	.globl _PCA0CPH0
                            145 	.globl _PCA0CPL0
                            146 	.globl _PCA0H
                            147 	.globl _PCA0L
                            148 	.globl _SPI0CN
                            149 	.globl _EIP2
                            150 	.globl _EIP1
                            151 	.globl _SMB0ADM
                            152 	.globl _SMB0ADR
                            153 	.globl _P2MDIN
                            154 	.globl _P1MDIN
                            155 	.globl _P0MDIN
                            156 	.globl _B
                            157 	.globl _RSTSRC
                            158 	.globl _PCA0CPH3
                            159 	.globl _PCA0CPL3
                            160 	.globl _PCA0CPH2
                            161 	.globl _PCA0CPL2
                            162 	.globl _PCA0CPH1
                            163 	.globl _PCA0CPL1
                            164 	.globl _ADC0CN
                            165 	.globl _EIE2
                            166 	.globl _EIE1
                            167 	.globl _FLWR
                            168 	.globl _IT01CF
                            169 	.globl _XBR2
                            170 	.globl _XBR1
                            171 	.globl _XBR0
                            172 	.globl _ACC
                            173 	.globl _PCA0PWM
                            174 	.globl _PCA0CPM4
                            175 	.globl _PCA0CPM3
                            176 	.globl _PCA0CPM2
                            177 	.globl _PCA0CPM1
                            178 	.globl _PCA0CPM0
                            179 	.globl _PCA0MD
                            180 	.globl _PCA0CN
                            181 	.globl _P0MAT
                            182 	.globl _P2SKIP
                            183 	.globl _P1SKIP
                            184 	.globl _P0SKIP
                            185 	.globl _PCA0CPH5
                            186 	.globl _PCA0CPL5
                            187 	.globl _REF0CN
                            188 	.globl _PSW
                            189 	.globl _P1MAT
                            190 	.globl _PCA0CPM5
                            191 	.globl _TMR2H
                            192 	.globl _TMR2L
                            193 	.globl _TMR2RLH
                            194 	.globl _TMR2RLL
                            195 	.globl _REG0CN
                            196 	.globl _TMR2CN
                            197 	.globl _P0MASK
                            198 	.globl _ADC0LTH
                            199 	.globl _ADC0LTL
                            200 	.globl _ADC0GTH
                            201 	.globl _ADC0GTL
                            202 	.globl _SMB0DAT
                            203 	.globl _SMB0CF
                            204 	.globl _SMB0CN
                            205 	.globl _P1MASK
                            206 	.globl _ADC0H
                            207 	.globl _ADC0L
                            208 	.globl _ADC0TK
                            209 	.globl _ADC0CF
                            210 	.globl _ADC0MX
                            211 	.globl _ADC0PWR
                            212 	.globl _ADC0AC
                            213 	.globl _IREF0CN
                            214 	.globl _IP
                            215 	.globl _FLKEY
                            216 	.globl _FLSCL
                            217 	.globl _PMU0CF
                            218 	.globl _OSCICL
                            219 	.globl _OSCICN
                            220 	.globl _OSCXCN
                            221 	.globl _SPI1CN
                            222 	.globl _ONESHOT
                            223 	.globl _EMI0TC
                            224 	.globl _RTC0KEY
                            225 	.globl _RTC0DAT
                            226 	.globl _RTC0ADR
                            227 	.globl _EMI0CF
                            228 	.globl _EMI0CN
                            229 	.globl _CLKSEL
                            230 	.globl _IE
                            231 	.globl _SFRPAGE
                            232 	.globl _P2DRV
                            233 	.globl _P2MDOUT
                            234 	.globl _P1DRV
                            235 	.globl _P1MDOUT
                            236 	.globl _P0DRV
                            237 	.globl _P0MDOUT
                            238 	.globl _SPI0DAT
                            239 	.globl _SPI0CKR
                            240 	.globl _SPI0CFG
                            241 	.globl _P2
                            242 	.globl _CPT0MX
                            243 	.globl _CPT1MX
                            244 	.globl _CPT0MD
                            245 	.globl _CPT1MD
                            246 	.globl _CPT0CN
                            247 	.globl _CPT1CN
                            248 	.globl _SBUF0
                            249 	.globl _SCON0
                            250 	.globl _CRC0CNT
                            251 	.globl _DC0CN
                            252 	.globl _CRC0AUTO
                            253 	.globl _DC0CF
                            254 	.globl _TMR3H
                            255 	.globl _CRC0FLIP
                            256 	.globl _TMR3L
                            257 	.globl _CRC0IN
                            258 	.globl _TMR3RLH
                            259 	.globl _CRC0CN
                            260 	.globl _TMR3RLL
                            261 	.globl _CRC0DAT
                            262 	.globl _TMR3CN
                            263 	.globl _P1
                            264 	.globl _PSCTL
                            265 	.globl _CKCON
                            266 	.globl _TH1
                            267 	.globl _TH0
                            268 	.globl _TL1
                            269 	.globl _TL0
                            270 	.globl _TMOD
                            271 	.globl _TCON
                            272 	.globl _PCON
                            273 	.globl _TOFFH
                            274 	.globl _SPI1DAT
                            275 	.globl _TOFFL
                            276 	.globl _SPI1CKR
                            277 	.globl _SPI1CFG
                            278 	.globl _DPH
                            279 	.globl _DPL
                            280 	.globl _SP
                            281 	.globl _P0
                            282 	.globl _idx
                            283 	.globl _at_testmode
                            284 	.globl _at_cmd_len
                            285 	.globl _at_cmd
                            286 	.globl _pdata_canary
                            287 	.globl _at_cmd_ready
                            288 	.globl _at_mode_active
                            289 	.globl _at_input
                            290 	.globl _at_plus_detector
                            291 	.globl _at_timer
                            292 	.globl _at_command
                            293 ;--------------------------------------------------------
                            294 ; special function registers
                            295 ;--------------------------------------------------------
                            296 	.area RSEG    (ABS,DATA)
   0000                     297 	.org 0x0000
                     0080   298 _P0	=	0x0080
                     0081   299 _SP	=	0x0081
                     0082   300 _DPL	=	0x0082
                     0083   301 _DPH	=	0x0083
                     0084   302 _SPI1CFG	=	0x0084
                     0085   303 _SPI1CKR	=	0x0085
                     0085   304 _TOFFL	=	0x0085
                     0086   305 _SPI1DAT	=	0x0086
                     0086   306 _TOFFH	=	0x0086
                     0087   307 _PCON	=	0x0087
                     0088   308 _TCON	=	0x0088
                     0089   309 _TMOD	=	0x0089
                     008A   310 _TL0	=	0x008a
                     008B   311 _TL1	=	0x008b
                     008C   312 _TH0	=	0x008c
                     008D   313 _TH1	=	0x008d
                     008E   314 _CKCON	=	0x008e
                     008F   315 _PSCTL	=	0x008f
                     0090   316 _P1	=	0x0090
                     0091   317 _TMR3CN	=	0x0091
                     0091   318 _CRC0DAT	=	0x0091
                     0092   319 _TMR3RLL	=	0x0092
                     0092   320 _CRC0CN	=	0x0092
                     0093   321 _TMR3RLH	=	0x0093
                     0093   322 _CRC0IN	=	0x0093
                     0094   323 _TMR3L	=	0x0094
                     0095   324 _CRC0FLIP	=	0x0095
                     0095   325 _TMR3H	=	0x0095
                     0096   326 _DC0CF	=	0x0096
                     0096   327 _CRC0AUTO	=	0x0096
                     0097   328 _DC0CN	=	0x0097
                     0097   329 _CRC0CNT	=	0x0097
                     0098   330 _SCON0	=	0x0098
                     0099   331 _SBUF0	=	0x0099
                     009A   332 _CPT1CN	=	0x009a
                     009B   333 _CPT0CN	=	0x009b
                     009C   334 _CPT1MD	=	0x009c
                     009D   335 _CPT0MD	=	0x009d
                     009E   336 _CPT1MX	=	0x009e
                     009F   337 _CPT0MX	=	0x009f
                     00A0   338 _P2	=	0x00a0
                     00A1   339 _SPI0CFG	=	0x00a1
                     00A2   340 _SPI0CKR	=	0x00a2
                     00A3   341 _SPI0DAT	=	0x00a3
                     00A4   342 _P0MDOUT	=	0x00a4
                     00A4   343 _P0DRV	=	0x00a4
                     00A5   344 _P1MDOUT	=	0x00a5
                     00A5   345 _P1DRV	=	0x00a5
                     00A6   346 _P2MDOUT	=	0x00a6
                     00A6   347 _P2DRV	=	0x00a6
                     00A7   348 _SFRPAGE	=	0x00a7
                     00A8   349 _IE	=	0x00a8
                     00A9   350 _CLKSEL	=	0x00a9
                     00AA   351 _EMI0CN	=	0x00aa
                     00AB   352 _EMI0CF	=	0x00ab
                     00AC   353 _RTC0ADR	=	0x00ac
                     00AD   354 _RTC0DAT	=	0x00ad
                     00AE   355 _RTC0KEY	=	0x00ae
                     00AF   356 _EMI0TC	=	0x00af
                     00AF   357 _ONESHOT	=	0x00af
                     00B0   358 _SPI1CN	=	0x00b0
                     00B1   359 _OSCXCN	=	0x00b1
                     00B2   360 _OSCICN	=	0x00b2
                     00B3   361 _OSCICL	=	0x00b3
                     00B5   362 _PMU0CF	=	0x00b5
                     00B6   363 _FLSCL	=	0x00b6
                     00B7   364 _FLKEY	=	0x00b7
                     00B8   365 _IP	=	0x00b8
                     00B9   366 _IREF0CN	=	0x00b9
                     00BA   367 _ADC0AC	=	0x00ba
                     00BA   368 _ADC0PWR	=	0x00ba
                     00BB   369 _ADC0MX	=	0x00bb
                     00BC   370 _ADC0CF	=	0x00bc
                     00BD   371 _ADC0TK	=	0x00bd
                     00BD   372 _ADC0L	=	0x00bd
                     00BE   373 _ADC0H	=	0x00be
                     00BF   374 _P1MASK	=	0x00bf
                     00C0   375 _SMB0CN	=	0x00c0
                     00C1   376 _SMB0CF	=	0x00c1
                     00C2   377 _SMB0DAT	=	0x00c2
                     00C3   378 _ADC0GTL	=	0x00c3
                     00C4   379 _ADC0GTH	=	0x00c4
                     00C5   380 _ADC0LTL	=	0x00c5
                     00C6   381 _ADC0LTH	=	0x00c6
                     00C7   382 _P0MASK	=	0x00c7
                     00C8   383 _TMR2CN	=	0x00c8
                     00C9   384 _REG0CN	=	0x00c9
                     00CA   385 _TMR2RLL	=	0x00ca
                     00CB   386 _TMR2RLH	=	0x00cb
                     00CC   387 _TMR2L	=	0x00cc
                     00CD   388 _TMR2H	=	0x00cd
                     00CE   389 _PCA0CPM5	=	0x00ce
                     00CF   390 _P1MAT	=	0x00cf
                     00D0   391 _PSW	=	0x00d0
                     00D1   392 _REF0CN	=	0x00d1
                     00D2   393 _PCA0CPL5	=	0x00d2
                     00D3   394 _PCA0CPH5	=	0x00d3
                     00D4   395 _P0SKIP	=	0x00d4
                     00D5   396 _P1SKIP	=	0x00d5
                     00D6   397 _P2SKIP	=	0x00d6
                     00D7   398 _P0MAT	=	0x00d7
                     00D8   399 _PCA0CN	=	0x00d8
                     00D9   400 _PCA0MD	=	0x00d9
                     00DA   401 _PCA0CPM0	=	0x00da
                     00DB   402 _PCA0CPM1	=	0x00db
                     00DC   403 _PCA0CPM2	=	0x00dc
                     00DD   404 _PCA0CPM3	=	0x00dd
                     00DE   405 _PCA0CPM4	=	0x00de
                     00DF   406 _PCA0PWM	=	0x00df
                     00E0   407 _ACC	=	0x00e0
                     00E1   408 _XBR0	=	0x00e1
                     00E2   409 _XBR1	=	0x00e2
                     00E3   410 _XBR2	=	0x00e3
                     00E4   411 _IT01CF	=	0x00e4
                     00E5   412 _FLWR	=	0x00e5
                     00E6   413 _EIE1	=	0x00e6
                     00E7   414 _EIE2	=	0x00e7
                     00E8   415 _ADC0CN	=	0x00e8
                     00E9   416 _PCA0CPL1	=	0x00e9
                     00EA   417 _PCA0CPH1	=	0x00ea
                     00EB   418 _PCA0CPL2	=	0x00eb
                     00EC   419 _PCA0CPH2	=	0x00ec
                     00ED   420 _PCA0CPL3	=	0x00ed
                     00EE   421 _PCA0CPH3	=	0x00ee
                     00EF   422 _RSTSRC	=	0x00ef
                     00F0   423 _B	=	0x00f0
                     00F1   424 _P0MDIN	=	0x00f1
                     00F2   425 _P1MDIN	=	0x00f2
                     00F3   426 _P2MDIN	=	0x00f3
                     00F4   427 _SMB0ADR	=	0x00f4
                     00F5   428 _SMB0ADM	=	0x00f5
                     00F6   429 _EIP1	=	0x00f6
                     00F7   430 _EIP2	=	0x00f7
                     00F8   431 _SPI0CN	=	0x00f8
                     00F9   432 _PCA0L	=	0x00f9
                     00FA   433 _PCA0H	=	0x00fa
                     00FB   434 _PCA0CPL0	=	0x00fb
                     00FC   435 _PCA0CPH0	=	0x00fc
                     00FD   436 _PCA0CPL4	=	0x00fd
                     00FE   437 _PCA0CPH4	=	0x00fe
                     00FF   438 _VDM0CN	=	0x00ff
                     8382   439 _DP	=	0x8382
                     8685   440 _TOFF	=	0x8685
                     9392   441 _TMR3RL	=	0x9392
                     9594   442 _TMR3	=	0x9594
                     BEBD   443 _ADC0	=	0xbebd
                     C4C3   444 _ADC0GT	=	0xc4c3
                     C6C5   445 _ADC0LT	=	0xc6c5
                     CBCA   446 _TMR2RL	=	0xcbca
                     CDCC   447 _TMR2	=	0xcdcc
                     D3D2   448 _PCA0CP5	=	0xd3d2
                     EAE9   449 _PCA0CP1	=	0xeae9
                     ECEB   450 _PCA0CP2	=	0xeceb
                     EEED   451 _PCA0CP3	=	0xeeed
                     FAF9   452 _PCA0	=	0xfaf9
                     FCFB   453 _PCA0CP0	=	0xfcfb
                     FEFD   454 _PCA0CP4	=	0xfefd
                            455 ;--------------------------------------------------------
                            456 ; special function bits
                            457 ;--------------------------------------------------------
                            458 	.area RSEG    (ABS,DATA)
   0000                     459 	.org 0x0000
                     008F   460 _TF1	=	0x008f
                     008E   461 _TR1	=	0x008e
                     008D   462 _TF0	=	0x008d
                     008C   463 _TR0	=	0x008c
                     008B   464 _IE1	=	0x008b
                     008A   465 _IT1	=	0x008a
                     0089   466 _IE0	=	0x0089
                     0088   467 _IT0	=	0x0088
                     0096   468 _CRC0SEL	=	0x0096
                     0095   469 _CRC0INIT	=	0x0095
                     0094   470 _CRC0VAL	=	0x0094
                     009F   471 _S0MODE	=	0x009f
                     009D   472 _MCE0	=	0x009d
                     009C   473 _REN0	=	0x009c
                     009B   474 _TB80	=	0x009b
                     009A   475 _RB80	=	0x009a
                     0099   476 _TI0	=	0x0099
                     0098   477 _RI0	=	0x0098
                     00AF   478 _EA	=	0x00af
                     00AE   479 _ESPI0	=	0x00ae
                     00AD   480 _ET2	=	0x00ad
                     00AC   481 _ES0	=	0x00ac
                     00AB   482 _ET1	=	0x00ab
                     00AA   483 _EX1	=	0x00aa
                     00A9   484 _ET0	=	0x00a9
                     00A8   485 _EX0	=	0x00a8
                     00B7   486 _SPIF1	=	0x00b7
                     00B6   487 _WCOL1	=	0x00b6
                     00B5   488 _MODF1	=	0x00b5
                     00B4   489 _RXOVRN1	=	0x00b4
                     00B3   490 _NSS1MD1	=	0x00b3
                     00B2   491 _NSS1MD0	=	0x00b2
                     00B1   492 _TXBMT1	=	0x00b1
                     00B0   493 _SPI1EN	=	0x00b0
                     00BE   494 _PSPI0	=	0x00be
                     00BD   495 _PT2	=	0x00bd
                     00BC   496 _PS0	=	0x00bc
                     00BB   497 _PT1	=	0x00bb
                     00BA   498 _PX1	=	0x00ba
                     00B9   499 _PT0	=	0x00b9
                     00B8   500 _PX0	=	0x00b8
                     00C7   501 _MASTER	=	0x00c7
                     00C6   502 _TXMODE	=	0x00c6
                     00C5   503 _STA	=	0x00c5
                     00C4   504 _STO	=	0x00c4
                     00C3   505 _ACKRQ	=	0x00c3
                     00C2   506 _ARBLOST	=	0x00c2
                     00C1   507 _ACK	=	0x00c1
                     00C0   508 _SI	=	0x00c0
                     00CF   509 _TF2H	=	0x00cf
                     00CE   510 _TF2L	=	0x00ce
                     00CD   511 _TF2LEN	=	0x00cd
                     00CC   512 _TF2CEN	=	0x00cc
                     00CB   513 _T2SPLIT	=	0x00cb
                     00CA   514 _TR2	=	0x00ca
                     00C9   515 _T2RCLK	=	0x00c9
                     00C8   516 _T2XCLK	=	0x00c8
                     00D7   517 _CY	=	0x00d7
                     00D6   518 _AC	=	0x00d6
                     00D5   519 _F0	=	0x00d5
                     00D4   520 _RS1	=	0x00d4
                     00D3   521 _RS0	=	0x00d3
                     00D2   522 _OV	=	0x00d2
                     00D1   523 _F1	=	0x00d1
                     00D0   524 _P	=	0x00d0
                     00DF   525 _CF	=	0x00df
                     00DE   526 _CR	=	0x00de
                     00DD   527 _CCF5	=	0x00dd
                     00DC   528 _CCF4	=	0x00dc
                     00DB   529 _CCF3	=	0x00db
                     00DA   530 _CCF2	=	0x00da
                     00D9   531 _CCF1	=	0x00d9
                     00D8   532 _CCF0	=	0x00d8
                     00EF   533 _AD0EN	=	0x00ef
                     00EE   534 _BURSTEN	=	0x00ee
                     00ED   535 _AD0INT	=	0x00ed
                     00EC   536 _AD0BUSY	=	0x00ec
                     00EB   537 _AD0WINT	=	0x00eb
                     00EA   538 _AD0CM2	=	0x00ea
                     00E9   539 _AD0CM1	=	0x00e9
                     00E8   540 _AD0CM0	=	0x00e8
                     00FF   541 _SPIF0	=	0x00ff
                     00FE   542 _WCOL0	=	0x00fe
                     00FD   543 _MODF0	=	0x00fd
                     00FC   544 _RXOVRN0	=	0x00fc
                     00FB   545 _NSS0MD1	=	0x00fb
                     00FA   546 _NSS0MD0	=	0x00fa
                     00F9   547 _TXBMT0	=	0x00f9
                     00F8   548 _SPI0EN	=	0x00f8
                     00A0   549 _LED_RED	=	0x00a0
                     00A5   550 _LED_GREEN	=	0x00a5
                     0086   551 _BUTTON_ENTER	=	0x0086
                     0095   552 _BUTTON_UP	=	0x0095
                     0096   553 _BUTTON_DOWN	=	0x0096
                     0087   554 _IRQ	=	0x0087
                     0094   555 _NSS1	=	0x0094
                     00A6   556 _SDN	=	0x00a6
                     00A6   557 _TDM_SYNC_PIN	=	0x00a6
                            558 ;--------------------------------------------------------
                            559 ; overlayable register banks
                            560 ;--------------------------------------------------------
                            561 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     562 	.ds 8
                            563 ;--------------------------------------------------------
                            564 ; internal ram data
                            565 ;--------------------------------------------------------
                            566 	.area DSEG    (DATA)
   0008                     567 _at_i_sloc0_1_0:
   0008                     568 	.ds 4
                            569 ;--------------------------------------------------------
                            570 ; overlayable items in internal ram 
                            571 ;--------------------------------------------------------
                            572 ;--------------------------------------------------------
                            573 ; indirectly addressable internal ram data
                            574 ;--------------------------------------------------------
                            575 	.area ISEG    (DATA)
                            576 ;--------------------------------------------------------
                            577 ; absolute internal ram data
                            578 ;--------------------------------------------------------
                            579 	.area IABS    (ABS,DATA)
                            580 	.area IABS    (ABS,DATA)
                            581 ;--------------------------------------------------------
                            582 ; bit data
                            583 ;--------------------------------------------------------
                            584 	.area BSEG    (BIT)
   0000                     585 _at_mode_active::
   0000                     586 	.ds 1
   0001                     587 _at_cmd_ready::
   0001                     588 	.ds 1
                            589 ;--------------------------------------------------------
                            590 ; paged external ram data
                            591 ;--------------------------------------------------------
                            592 	.area PSEG    (PAG,XDATA)
   0000                     593 _pdata_canary::
   0000                     594 	.ds 1
   0001                     595 _at_cmd::
   0001                     596 	.ds 17
   0012                     597 _at_cmd_len::
   0012                     598 	.ds 1
   0013                     599 _at_testmode::
   0013                     600 	.ds 1
   0014                     601 _at_plus_state:
   0014                     602 	.ds 1
   0015                     603 _at_plus_counter:
   0015                     604 	.ds 1
   0016                     605 _idx::
   0016                     606 	.ds 1
                            607 ;--------------------------------------------------------
                            608 ; external ram data
                            609 ;--------------------------------------------------------
                            610 	.area XSEG    (XDATA)
   00EC                     611 _at_ampersand_x_3_168:
   00EC                     612 	.ds 1
                            613 ;--------------------------------------------------------
                            614 ; absolute external ram data
                            615 ;--------------------------------------------------------
                            616 	.area XABS    (ABS,XDATA)
                            617 ;--------------------------------------------------------
                            618 ; external initialized ram data
                            619 ;--------------------------------------------------------
                            620 	.area XISEG   (XDATA)
                            621 	.area HOME    (CODE)
                            622 	.area GSINIT0 (CODE)
                            623 	.area GSINIT1 (CODE)
                            624 	.area GSINIT2 (CODE)
                            625 	.area GSINIT3 (CODE)
                            626 	.area GSINIT4 (CODE)
                            627 	.area GSINIT5 (CODE)
                            628 	.area GSINIT  (CODE)
                            629 	.area GSFINAL (CODE)
                            630 	.area CSEG    (CODE)
                            631 ;--------------------------------------------------------
                            632 ; global & static initialisations
                            633 ;--------------------------------------------------------
                            634 	.area HOME    (CODE)
                            635 	.area GSINIT  (CODE)
                            636 	.area GSFINAL (CODE)
                            637 	.area GSINIT  (CODE)
                            638 ;	radio/at.c:42: __pdata uint8_t pdata_canary = 0x41;
   04D2 78 00         [12]  639 	mov	r0,#_pdata_canary
   04D4 74 41         [12]  640 	mov	a,#0x41
   04D6 F2            [24]  641 	movx	@r0,a
                            642 ;	radio/at.c:133: static __pdata uint8_t	at_plus_counter = ATP_COUNT_1S;
   04D7 78 15         [12]  643 	mov	r0,#_at_plus_counter
   04D9 74 64         [12]  644 	mov	a,#0x64
   04DB F2            [24]  645 	movx	@r0,a
                            646 ;--------------------------------------------------------
                            647 ; Home
                            648 ;--------------------------------------------------------
                            649 	.area HOME    (CODE)
                            650 	.area HOME    (CODE)
                            651 ;--------------------------------------------------------
                            652 ; code
                            653 ;--------------------------------------------------------
                            654 	.area CSEG    (CODE)
                            655 ;------------------------------------------------------------
                            656 ;Allocation info for local variables in function 'at_input'
                            657 ;------------------------------------------------------------
                            658 ;c                         Allocated to registers r7 
                            659 ;------------------------------------------------------------
                            660 ;	radio/at.c:66: at_input(register uint8_t c)
                            661 ;	-----------------------------------------
                            662 ;	 function at_input
                            663 ;	-----------------------------------------
   04F9                     664 _at_input:
                     0007   665 	ar7 = 0x07
                     0006   666 	ar6 = 0x06
                     0005   667 	ar5 = 0x05
                     0004   668 	ar4 = 0x04
                     0003   669 	ar3 = 0x03
                     0002   670 	ar2 = 0x02
                     0001   671 	ar1 = 0x01
                     0000   672 	ar0 = 0x00
   04F9 AF 82         [24]  673 	mov	r7,dpl
                            674 ;	radio/at.c:69: switch (c) {
   04FB 8F 06         [24]  675 	mov	ar6,r7
   04FD BE 08 02      [24]  676 	cjne	r6,#0x08,00137$
   0500 80 1B         [24]  677 	sjmp	00103$
   0502                     678 00137$:
   0502 BE 0D 02      [24]  679 	cjne	r6,#0x0D,00138$
   0505 80 05         [24]  680 	sjmp	00101$
   0507                     681 00138$:
                            682 ;	radio/at.c:71: case '\r':
   0507 BE 7F 30      [24]  683 	cjne	r6,#0x7F,00106$
   050A 80 11         [24]  684 	sjmp	00103$
   050C                     685 00101$:
                            686 ;	radio/at.c:72: putchar('\n');
   050C 75 82 0A      [24]  687 	mov	dpl,#0x0A
   050F 12 44 2C      [24]  688 	lcall	_putchar
                            689 ;	radio/at.c:73: at_cmd[at_cmd_len] = 0;
   0512 78 12         [12]  690 	mov	r0,#_at_cmd_len
   0514 E2            [24]  691 	movx	a,@r0
   0515 24 01         [12]  692 	add	a,#_at_cmd
   0517 F8            [12]  693 	mov	r0,a
   0518 E4            [12]  694 	clr	a
   0519 F2            [24]  695 	movx	@r0,a
                            696 ;	radio/at.c:74: at_cmd_ready = true;
   051A D2 01         [12]  697 	setb	_at_cmd_ready
                            698 ;	radio/at.c:75: break;
                            699 ;	radio/at.c:80: case '\x7f':
   051C 22            [24]  700 	ret
   051D                     701 00103$:
                            702 ;	radio/at.c:81: if (at_cmd_len > 0) {
   051D 78 12         [12]  703 	mov	r0,#_at_cmd_len
   051F E2            [24]  704 	movx	a,@r0
   0520 60 64         [24]  705 	jz	00112$
                            706 ;	radio/at.c:82: putchar('\b');
   0522 75 82 08      [24]  707 	mov	dpl,#0x08
   0525 12 44 2C      [24]  708 	lcall	_putchar
                            709 ;	radio/at.c:83: putchar(' ');
   0528 75 82 20      [24]  710 	mov	dpl,#0x20
   052B 12 44 2C      [24]  711 	lcall	_putchar
                            712 ;	radio/at.c:84: putchar('\b');
   052E 75 82 08      [24]  713 	mov	dpl,#0x08
   0531 12 44 2C      [24]  714 	lcall	_putchar
                            715 ;	radio/at.c:85: at_cmd_len--;
   0534 78 12         [12]  716 	mov	r0,#_at_cmd_len
   0536 E2            [24]  717 	movx	a,@r0
   0537 14            [12]  718 	dec	a
   0538 F2            [24]  719 	movx	@r0,a
                            720 ;	radio/at.c:87: break;
                            721 ;	radio/at.c:90: default:
   0539 22            [24]  722 	ret
   053A                     723 00106$:
                            724 ;	radio/at.c:91: if (at_cmd_len < AT_CMD_MAXLEN) {
   053A 78 12         [12]  725 	mov	r0,#_at_cmd_len
   053C E2            [24]  726 	movx	a,@r0
   053D B4 10 00      [24]  727 	cjne	a,#0x10,00141$
   0540                     728 00141$:
   0540 50 3E         [24]  729 	jnc	00110$
                            730 ;	radio/at.c:92: if (isprint(c)) {
   0542 8F 82         [24]  731 	mov	dpl,r7
   0544 C0 07         [24]  732 	push	ar7
   0546 C0 06         [24]  733 	push	ar6
   0548 12 62 4C      [24]  734 	lcall	_isprint
   054B E5 82         [12]  735 	mov	a,dpl
   054D D0 06         [24]  736 	pop	ar6
   054F D0 07         [24]  737 	pop	ar7
   0551 60 33         [24]  738 	jz	00112$
                            739 ;	radio/at.c:93: c = toupper(c);
   0553 8F 82         [24]  740 	mov	dpl,r7
   0555 C0 07         [24]  741 	push	ar7
   0557 C0 06         [24]  742 	push	ar6
   0559 12 61 E6      [24]  743 	lcall	_islower
   055C E5 82         [12]  744 	mov	a,dpl
   055E D0 06         [24]  745 	pop	ar6
   0560 D0 07         [24]  746 	pop	ar7
   0562 60 05         [24]  747 	jz	00114$
   0564 53 06 DF      [24]  748 	anl	ar6,#0xDF
   0567 80 02         [24]  749 	sjmp	00115$
   0569                     750 00114$:
   0569 8F 06         [24]  751 	mov	ar6,r7
   056B                     752 00115$:
   056B 8E 07         [24]  753 	mov	ar7,r6
                            754 ;	radio/at.c:94: at_cmd[at_cmd_len++] = c;
   056D 78 12         [12]  755 	mov	r0,#_at_cmd_len
   056F E2            [24]  756 	movx	a,@r0
   0570 FE            [12]  757 	mov	r6,a
   0571 78 12         [12]  758 	mov	r0,#_at_cmd_len
   0573 04            [12]  759 	inc	a
   0574 F2            [24]  760 	movx	@r0,a
   0575 EE            [12]  761 	mov	a,r6
   0576 24 01         [12]  762 	add	a,#_at_cmd
   0578 F8            [12]  763 	mov	r0,a
   0579 EF            [12]  764 	mov	a,r7
   057A F2            [24]  765 	movx	@r0,a
                            766 ;	radio/at.c:95: putchar(c);
   057B 8F 82         [24]  767 	mov	dpl,r7
                            768 ;	radio/at.c:97: break;
   057D 02 44 2C      [24]  769 	ljmp	_putchar
   0580                     770 00110$:
                            771 ;	radio/at.c:105: at_mode_active = 0;
   0580 C2 00         [12]  772 	clr	_at_mode_active
                            773 ;	radio/at.c:106: at_cmd_len = 0;
   0582 78 12         [12]  774 	mov	r0,#_at_cmd_len
   0584 E4            [12]  775 	clr	a
   0585 F2            [24]  776 	movx	@r0,a
                            777 ;	radio/at.c:108: }
   0586                     778 00112$:
   0586 22            [24]  779 	ret
                            780 ;------------------------------------------------------------
                            781 ;Allocation info for local variables in function 'at_plus_detector'
                            782 ;------------------------------------------------------------
                            783 ;c                         Allocated to registers r7 
                            784 ;------------------------------------------------------------
                            785 ;	radio/at.c:138: at_plus_detector(register uint8_t c)
                            786 ;	-----------------------------------------
                            787 ;	 function at_plus_detector
                            788 ;	-----------------------------------------
   0587                     789 _at_plus_detector:
   0587 AF 82         [24]  790 	mov	r7,dpl
                            791 ;	radio/at.c:144: if (c != (uint8_t)'+')
   0589 BF 2B 02      [24]  792 	cjne	r7,#0x2B,00118$
   058C 80 04         [24]  793 	sjmp	00102$
   058E                     794 00118$:
                            795 ;	radio/at.c:145: at_plus_state = ATP_WAIT_FOR_IDLE;
   058E 78 14         [12]  796 	mov	r0,#_at_plus_state
   0590 E4            [12]  797 	clr	a
   0591 F2            [24]  798 	movx	@r0,a
   0592                     799 00102$:
                            800 ;	radio/at.c:149: switch (at_plus_state) {
   0592 78 14         [12]  801 	mov	r0,#_at_plus_state
   0594 C3            [12]  802 	clr	c
   0595 E2            [24]  803 	movx	a,@r0
   0596 F5 F0         [12]  804 	mov	b,a
   0598 74 04         [12]  805 	mov	a,#0x04
   059A 95 F0         [12]  806 	subb	a,b
   059C 40 2C         [24]  807 	jc	00106$
   059E 78 14         [12]  808 	mov	r0,#_at_plus_state
   05A0 E2            [24]  809 	movx	a,@r0
   05A1 75 F0 03      [24]  810 	mov	b,#0x03
   05A4 A4            [48]  811 	mul	ab
   05A5 90 05 A9      [24]  812 	mov	dptr,#00120$
   05A8 73            [24]  813 	jmp	@a+dptr
   05A9                     814 00120$:
   05A9 02 05 CE      [24]  815 	ljmp	00107$
   05AC 02 05 B8      [24]  816 	ljmp	00103$
   05AF 02 05 B8      [24]  817 	ljmp	00104$
   05B2 02 05 BF      [24]  818 	ljmp	00105$
   05B5 02 05 CE      [24]  819 	ljmp	00108$
                            820 ;	radio/at.c:151: case ATP_WAIT_FOR_PLUS1:
   05B8                     821 00103$:
                            822 ;	radio/at.c:152: case ATP_WAIT_FOR_PLUS2:
   05B8                     823 00104$:
                            824 ;	radio/at.c:153: at_plus_state++;
   05B8 78 14         [12]  825 	mov	r0,#_at_plus_state
   05BA E2            [24]  826 	movx	a,@r0
   05BB 24 01         [12]  827 	add	a,#0x01
   05BD F2            [24]  828 	movx	@r0,a
                            829 ;	radio/at.c:154: break;
                            830 ;	radio/at.c:156: case ATP_WAIT_FOR_PLUS3:
   05BE 22            [24]  831 	ret
   05BF                     832 00105$:
                            833 ;	radio/at.c:157: at_plus_state = ATP_WAIT_FOR_ENABLE;
   05BF 78 14         [12]  834 	mov	r0,#_at_plus_state
   05C1 74 04         [12]  835 	mov	a,#0x04
   05C3 F2            [24]  836 	movx	@r0,a
                            837 ;	radio/at.c:158: at_plus_counter = ATP_COUNT_1S;
   05C4 78 15         [12]  838 	mov	r0,#_at_plus_counter
   05C6 74 64         [12]  839 	mov	a,#0x64
   05C8 F2            [24]  840 	movx	@r0,a
                            841 ;	radio/at.c:159: break;
                            842 ;	radio/at.c:161: default:
   05C9 22            [24]  843 	ret
   05CA                     844 00106$:
                            845 ;	radio/at.c:162: at_plus_state = ATP_WAIT_FOR_IDLE;
   05CA 78 14         [12]  846 	mov	r0,#_at_plus_state
   05CC E4            [12]  847 	clr	a
   05CD F2            [24]  848 	movx	@r0,a
                            849 ;	radio/at.c:164: case ATP_WAIT_FOR_IDLE:
   05CE                     850 00107$:
                            851 ;	radio/at.c:165: case ATP_WAIT_FOR_ENABLE:
   05CE                     852 00108$:
                            853 ;	radio/at.c:166: at_plus_counter = ATP_COUNT_1S;
   05CE 78 15         [12]  854 	mov	r0,#_at_plus_counter
   05D0 74 64         [12]  855 	mov	a,#0x64
   05D2 F2            [24]  856 	movx	@r0,a
                            857 ;	radio/at.c:168: }
   05D3 22            [24]  858 	ret
                            859 ;------------------------------------------------------------
                            860 ;Allocation info for local variables in function 'at_timer'
                            861 ;------------------------------------------------------------
                            862 ;	radio/at.c:175: at_timer(void)
                            863 ;	-----------------------------------------
                            864 ;	 function at_timer
                            865 ;	-----------------------------------------
   05D4                     866 _at_timer:
                            867 ;	radio/at.c:178: if (at_plus_counter > 0) {
   05D4 78 15         [12]  868 	mov	r0,#_at_plus_counter
   05D6 E2            [24]  869 	movx	a,@r0
   05D7 60 38         [24]  870 	jz	00109$
                            871 ;	radio/at.c:181: if (--at_plus_counter == 0) {
   05D9 78 15         [12]  872 	mov	r0,#_at_plus_counter
   05DB E2            [24]  873 	movx	a,@r0
   05DC 14            [12]  874 	dec	a
   05DD F2            [24]  875 	movx	@r0,a
   05DE 78 15         [12]  876 	mov	r0,#_at_plus_counter
   05E0 E2            [24]  877 	movx	a,@r0
   05E1 70 2E         [24]  878 	jnz	00109$
                            879 ;	radio/at.c:184: switch (at_plus_state) {
   05E3 78 14         [12]  880 	mov	r0,#_at_plus_state
   05E5 E2            [24]  881 	movx	a,@r0
   05E6 60 08         [24]  882 	jz	00101$
   05E8 78 14         [12]  883 	mov	r0,#_at_plus_state
   05EA E2            [24]  884 	movx	a,@r0
                            885 ;	radio/at.c:185: case ATP_WAIT_FOR_IDLE:
   05EB B4 04 23      [24]  886 	cjne	a,#0x04,00109$
   05EE 80 06         [24]  887 	sjmp	00102$
   05F0                     888 00101$:
                            889 ;	radio/at.c:186: at_plus_state = ATP_WAIT_FOR_PLUS1;
   05F0 78 14         [12]  890 	mov	r0,#_at_plus_state
   05F2 74 01         [12]  891 	mov	a,#0x01
   05F4 F2            [24]  892 	movx	@r0,a
                            893 ;	radio/at.c:187: break;
                            894 ;	radio/at.c:189: case ATP_WAIT_FOR_ENABLE:
   05F5 22            [24]  895 	ret
   05F6                     896 00102$:
                            897 ;	radio/at.c:190: at_mode_active = true;
   05F6 D2 00         [12]  898 	setb	_at_mode_active
                            899 ;	radio/at.c:191: at_plus_state = ATP_WAIT_FOR_IDLE;
   05F8 78 14         [12]  900 	mov	r0,#_at_plus_state
   05FA E4            [12]  901 	clr	a
   05FB F2            [24]  902 	movx	@r0,a
                            903 ;	radio/at.c:194: at_cmd[0] = 'A';
   05FC 78 01         [12]  904 	mov	r0,#_at_cmd
   05FE 74 41         [12]  905 	mov	a,#0x41
   0600 F2            [24]  906 	movx	@r0,a
                            907 ;	radio/at.c:195: at_cmd[1] = 'T';
   0601 78 02         [12]  908 	mov	r0,#(_at_cmd + 0x0001)
   0603 74 54         [12]  909 	mov	a,#0x54
   0605 F2            [24]  910 	movx	@r0,a
                            911 ;	radio/at.c:196: at_cmd[2] = '\0';
   0606 78 03         [12]  912 	mov	r0,#(_at_cmd + 0x0002)
   0608 E4            [12]  913 	clr	a
   0609 F2            [24]  914 	movx	@r0,a
                            915 ;	radio/at.c:197: at_cmd_len = 2;
   060A 78 12         [12]  916 	mov	r0,#_at_cmd_len
   060C 74 02         [12]  917 	mov	a,#0x02
   060E F2            [24]  918 	movx	@r0,a
                            919 ;	radio/at.c:198: at_cmd_ready = true;
   060F D2 01         [12]  920 	setb	_at_cmd_ready
                            921 ;	radio/at.c:202: }
   0611                     922 00109$:
   0611 22            [24]  923 	ret
                            924 ;------------------------------------------------------------
                            925 ;Allocation info for local variables in function 'at_command'
                            926 ;------------------------------------------------------------
                            927 ;	radio/at.c:209: at_command(void)
                            928 ;	-----------------------------------------
                            929 ;	 function at_command
                            930 ;	-----------------------------------------
   0612                     931 _at_command:
                            932 ;	radio/at.c:212: if (at_cmd_ready) {
   0612 20 01 01      [24]  933 	jb	_at_cmd_ready,00170$
   0615 22            [24]  934 	ret
   0616                     935 00170$:
                            936 ;	radio/at.c:213: if ((at_cmd_len >= 2) && (at_cmd[0] == 'R') && (at_cmd[1] == 'T')) {
   0616 78 12         [12]  937 	mov	r0,#_at_cmd_len
   0618 E2            [24]  938 	movx	a,@r0
   0619 B4 02 00      [24]  939 	cjne	a,#0x02,00171$
   061C                     940 00171$:
   061C E4            [12]  941 	clr	a
   061D 33            [12]  942 	rlc	a
   061E FF            [12]  943 	mov	r7,a
   061F 70 18         [24]  944 	jnz	00102$
   0621 78 01         [12]  945 	mov	r0,#_at_cmd
   0623 E2            [24]  946 	movx	a,@r0
   0624 FE            [12]  947 	mov	r6,a
   0625 BE 52 11      [24]  948 	cjne	r6,#0x52,00102$
   0628 78 02         [12]  949 	mov	r0,#(_at_cmd + 0x0001)
   062A E2            [24]  950 	movx	a,@r0
   062B FE            [12]  951 	mov	r6,a
   062C BE 54 0A      [24]  952 	cjne	r6,#0x54,00102$
                            953 ;	radio/at.c:216: tdm_remote_at();
   062F 12 4B B9      [24]  954 	lcall	_tdm_remote_at
                            955 ;	radio/at.c:217: at_cmd_len = 0;
   0632 78 12         [12]  956 	mov	r0,#_at_cmd_len
   0634 E4            [12]  957 	clr	a
   0635 F2            [24]  958 	movx	@r0,a
                            959 ;	radio/at.c:218: at_cmd_ready = false;
   0636 C2 01         [12]  960 	clr	_at_cmd_ready
                            961 ;	radio/at.c:219: return;
   0638 22            [24]  962 	ret
   0639                     963 00102$:
                            964 ;	radio/at.c:222: if ((at_cmd_len >= 2) && (at_cmd[0] == 'A') && (at_cmd[1] == 'T')) {
   0639 EF            [12]  965 	mov	a,r7
   063A 70 5C         [24]  966 	jnz	00116$
   063C 78 01         [12]  967 	mov	r0,#_at_cmd
   063E E2            [24]  968 	movx	a,@r0
   063F FF            [12]  969 	mov	r7,a
   0640 BF 41 55      [24]  970 	cjne	r7,#0x41,00116$
   0643 78 02         [12]  971 	mov	r0,#(_at_cmd + 0x0001)
   0645 E2            [24]  972 	movx	a,@r0
   0646 FF            [12]  973 	mov	r7,a
   0647 BF 54 4E      [24]  974 	cjne	r7,#0x54,00116$
                            975 ;	radio/at.c:225: switch (at_cmd[2]) {
   064A 78 03         [12]  976 	mov	r0,#(_at_cmd + 0x0002)
   064C E2            [24]  977 	movx	a,@r0
   064D FF            [12]  978 	mov	r7,a
   064E 60 1E         [24]  979 	jz	00105$
   0650 BF 26 02      [24]  980 	cjne	r7,#0x26,00183$
   0653 80 1E         [24]  981 	sjmp	00106$
   0655                     982 00183$:
   0655 BF 2B 02      [24]  983 	cjne	r7,#0x2B,00184$
   0658 80 1E         [24]  984 	sjmp	00107$
   065A                     985 00184$:
   065A BF 49 02      [24]  986 	cjne	r7,#0x49,00185$
   065D 80 1E         [24]  987 	sjmp	00108$
   065F                     988 00185$:
   065F BF 4F 02      [24]  989 	cjne	r7,#0x4F,00186$
   0662 80 1E         [24]  990 	sjmp	00109$
   0664                     991 00186$:
   0664 BF 53 02      [24]  992 	cjne	r7,#0x53,00187$
   0667 80 22         [24]  993 	sjmp	00110$
   0669                     994 00187$:
                            995 ;	radio/at.c:226: case '\0':		// no command -> OK
   0669 BF 5A 29      [24]  996 	cjne	r7,#0x5A,00113$
   066C 80 22         [24]  997 	sjmp	00111$
   066E                     998 00105$:
                            999 ;	radio/at.c:227: at_ok();
   066E 12 06 9F      [24] 1000 	lcall	_at_ok
                           1001 ;	radio/at.c:228: break;
                           1002 ;	radio/at.c:229: case '&':
   0671 80 25         [24] 1003 	sjmp	00116$
   0673                    1004 00106$:
                           1005 ;	radio/at.c:230: at_ampersand();
   0673 12 09 50      [24] 1006 	lcall	_at_ampersand
                           1007 ;	radio/at.c:231: break;
                           1008 ;	radio/at.c:232: case '+':
   0676 80 20         [24] 1009 	sjmp	00116$
   0678                    1010 00107$:
                           1011 ;	radio/at.c:233: at_plus();
   0678 12 0A 27      [24] 1012 	lcall	_at_plus
                           1013 ;	radio/at.c:234: break;
                           1014 ;	radio/at.c:235: case 'I':
   067B 80 1B         [24] 1015 	sjmp	00116$
   067D                    1016 00108$:
                           1017 ;	radio/at.c:236: at_i();
   067D 12 07 93      [24] 1018 	lcall	_at_i
                           1019 ;	radio/at.c:237: break;
                           1020 ;	radio/at.c:238: case 'O':		// O -> go online (exit command mode)
   0680 80 16         [24] 1021 	sjmp	00116$
   0682                    1022 00109$:
                           1023 ;	radio/at.c:239: at_plus_counter = ATP_COUNT_1S;
   0682 78 15         [12] 1024 	mov	r0,#_at_plus_counter
   0684 74 64         [12] 1025 	mov	a,#0x64
   0686 F2            [24] 1026 	movx	@r0,a
                           1027 ;	radio/at.c:240: at_mode_active = 0;
   0687 C2 00         [12] 1028 	clr	_at_mode_active
                           1029 ;	radio/at.c:241: break;
                           1030 ;	radio/at.c:242: case 'S':
   0689 80 0D         [24] 1031 	sjmp	00116$
   068B                    1032 00110$:
                           1033 ;	radio/at.c:243: at_s();
   068B 12 08 CE      [24] 1034 	lcall	_at_s
                           1035 ;	radio/at.c:244: break;
                           1036 ;	radio/at.c:246: case 'Z':
   068E 80 08         [24] 1037 	sjmp	00116$
   0690                    1038 00111$:
                           1039 ;	radio/at.c:248: RSTSRC |= (1 << 4);
   0690 43 EF 10      [24] 1040 	orl	_RSTSRC,#0x10
   0693                    1041 00122$:
                           1042 ;	radio/at.c:252: default:
   0693 80 FE         [24] 1043 	sjmp	00122$
   0695                    1044 00113$:
                           1045 ;	radio/at.c:253: at_error();
   0695 12 06 C1      [24] 1046 	lcall	_at_error
                           1047 ;	radio/at.c:254: }
   0698                    1048 00116$:
                           1049 ;	radio/at.c:258: at_cmd_len = 0;
   0698 78 12         [12] 1050 	mov	r0,#_at_cmd_len
   069A E4            [12] 1051 	clr	a
   069B F2            [24] 1052 	movx	@r0,a
                           1053 ;	radio/at.c:259: at_cmd_ready = false;
   069C C2 01         [12] 1054 	clr	_at_cmd_ready
   069E 22            [24] 1055 	ret
                           1056 ;------------------------------------------------------------
                           1057 ;Allocation info for local variables in function 'at_ok'
                           1058 ;------------------------------------------------------------
                           1059 ;	radio/at.c:264: at_ok(void)
                           1060 ;	-----------------------------------------
                           1061 ;	 function at_ok
                           1062 ;	-----------------------------------------
   069F                    1063 _at_ok:
                           1064 ;	radio/at.c:266: printf("%s\n", "OK");
   069F 74 3B         [12] 1065 	mov	a,#__str_1
   06A1 C0 E0         [24] 1066 	push	acc
   06A3 74 65         [12] 1067 	mov	a,#(__str_1 >> 8)
   06A5 C0 E0         [24] 1068 	push	acc
   06A7 74 80         [12] 1069 	mov	a,#0x80
   06A9 C0 E0         [24] 1070 	push	acc
   06AB 74 37         [12] 1071 	mov	a,#__str_0
   06AD C0 E0         [24] 1072 	push	acc
   06AF 74 65         [12] 1073 	mov	a,#(__str_0 >> 8)
   06B1 C0 E0         [24] 1074 	push	acc
   06B3 74 80         [12] 1075 	mov	a,#0x80
   06B5 C0 E0         [24] 1076 	push	acc
   06B7 12 2D B6      [24] 1077 	lcall	_printfl
   06BA E5 81         [12] 1078 	mov	a,sp
   06BC 24 FA         [12] 1079 	add	a,#0xfa
   06BE F5 81         [12] 1080 	mov	sp,a
   06C0 22            [24] 1081 	ret
                           1082 ;------------------------------------------------------------
                           1083 ;Allocation info for local variables in function 'at_error'
                           1084 ;------------------------------------------------------------
                           1085 ;	radio/at.c:270: at_error(void)
                           1086 ;	-----------------------------------------
                           1087 ;	 function at_error
                           1088 ;	-----------------------------------------
   06C1                    1089 _at_error:
                           1090 ;	radio/at.c:272: printf("%s\n", "ERROR");
   06C1 74 3E         [12] 1091 	mov	a,#__str_2
   06C3 C0 E0         [24] 1092 	push	acc
   06C5 74 65         [12] 1093 	mov	a,#(__str_2 >> 8)
   06C7 C0 E0         [24] 1094 	push	acc
   06C9 74 80         [12] 1095 	mov	a,#0x80
   06CB C0 E0         [24] 1096 	push	acc
   06CD 74 37         [12] 1097 	mov	a,#__str_0
   06CF C0 E0         [24] 1098 	push	acc
   06D1 74 65         [12] 1099 	mov	a,#(__str_0 >> 8)
   06D3 C0 E0         [24] 1100 	push	acc
   06D5 74 80         [12] 1101 	mov	a,#0x80
   06D7 C0 E0         [24] 1102 	push	acc
   06D9 12 2D B6      [24] 1103 	lcall	_printfl
   06DC E5 81         [12] 1104 	mov	a,sp
   06DE 24 FA         [12] 1105 	add	a,#0xfa
   06E0 F5 81         [12] 1106 	mov	sp,a
   06E2 22            [24] 1107 	ret
                           1108 ;------------------------------------------------------------
                           1109 ;Allocation info for local variables in function 'at_parse_number'
                           1110 ;------------------------------------------------------------
                           1111 ;reg                       Allocated to registers r4 r5 r6 r7 
                           1112 ;c                         Allocated to registers r3 
                           1113 ;sloc0                     Allocated to stack - sp +2
                           1114 ;sloc1                     Allocated to stack - sp -3
                           1115 ;------------------------------------------------------------
                           1116 ;	radio/at.c:278: at_parse_number() __reentrant
                           1117 ;	-----------------------------------------
                           1118 ;	 function at_parse_number
                           1119 ;	-----------------------------------------
   06E3                    1120 _at_parse_number:
   06E3 E5 81         [12] 1121 	mov	a,sp
   06E5 24 04         [12] 1122 	add	a,#0x04
   06E7 F5 81         [12] 1123 	mov	sp,a
                           1124 ;	radio/at.c:283: reg = 0;
   06E9 7C 00         [12] 1125 	mov	r4,#0x00
   06EB 7D 00         [12] 1126 	mov	r5,#0x00
   06ED 7E 00         [12] 1127 	mov	r6,#0x00
   06EF 7F 00         [12] 1128 	mov	r7,#0x00
   06F1                    1129 00104$:
                           1130 ;	radio/at.c:285: c = at_cmd[idx];
   06F1 78 16         [12] 1131 	mov	r0,#_idx
   06F3 E2            [24] 1132 	movx	a,@r0
   06F4 24 01         [12] 1133 	add	a,#_at_cmd
   06F6 F9            [12] 1134 	mov	r1,a
   06F7 E3            [24] 1135 	movx	a,@r1
                           1136 ;	radio/at.c:286: if (!isdigit(c))
   06F8 FB            [12] 1137 	mov	r3,a
   06F9 F5 82         [12] 1138 	mov	dpl,a
   06FB C0 07         [24] 1139 	push	ar7
   06FD C0 06         [24] 1140 	push	ar6
   06FF C0 05         [24] 1141 	push	ar5
   0701 C0 04         [24] 1142 	push	ar4
   0703 C0 03         [24] 1143 	push	ar3
   0705 12 5D 63      [24] 1144 	lcall	_isdigit
   0708 E5 82         [12] 1145 	mov	a,dpl
   070A D0 03         [24] 1146 	pop	ar3
   070C D0 04         [24] 1147 	pop	ar4
   070E D0 05         [24] 1148 	pop	ar5
   0710 D0 06         [24] 1149 	pop	ar6
   0712 D0 07         [24] 1150 	pop	ar7
   0714 60 6D         [24] 1151 	jz	00103$
                           1152 ;	radio/at.c:288: reg = (reg * 10) + (c - '0');
   0716 90 05 D7      [24] 1153 	mov	dptr,#__mullong_PARM_2
   0719 EC            [12] 1154 	mov	a,r4
   071A F0            [24] 1155 	movx	@dptr,a
   071B ED            [12] 1156 	mov	a,r5
   071C A3            [24] 1157 	inc	dptr
   071D F0            [24] 1158 	movx	@dptr,a
   071E EE            [12] 1159 	mov	a,r6
   071F A3            [24] 1160 	inc	dptr
   0720 F0            [24] 1161 	movx	@dptr,a
   0721 EF            [12] 1162 	mov	a,r7
   0722 A3            [24] 1163 	inc	dptr
   0723 F0            [24] 1164 	movx	@dptr,a
   0724 90 00 0A      [24] 1165 	mov	dptr,#(0x0A&0x00ff)
   0727 E4            [12] 1166 	clr	a
   0728 F5 F0         [12] 1167 	mov	b,a
   072A C0 03         [24] 1168 	push	ar3
   072C 12 5E E4      [24] 1169 	lcall	__mullong
   072F AF 82         [24] 1170 	mov	r7,dpl
   0731 AE 83         [24] 1171 	mov	r6,dph
   0733 AD F0         [24] 1172 	mov	r5,b
   0735 FC            [12] 1173 	mov	r4,a
   0736 D0 03         [24] 1174 	pop	ar3
   0738 8B 02         [24] 1175 	mov	ar2,r3
   073A 7B 00         [12] 1176 	mov	r3,#0x00
   073C EA            [12] 1177 	mov	a,r2
   073D 24 D0         [12] 1178 	add	a,#0xD0
   073F FA            [12] 1179 	mov	r2,a
   0740 EB            [12] 1180 	mov	a,r3
   0741 34 FF         [12] 1181 	addc	a,#0xFF
   0743 FB            [12] 1182 	mov	r3,a
   0744 E5 81         [12] 1183 	mov	a,sp
   0746 24 FD         [12] 1184 	add	a,#0xfd
   0748 F8            [12] 1185 	mov	r0,a
   0749 A6 02         [24] 1186 	mov	@r0,ar2
   074B 08            [12] 1187 	inc	r0
   074C A6 03         [24] 1188 	mov	@r0,ar3
   074E EB            [12] 1189 	mov	a,r3
   074F 33            [12] 1190 	rlc	a
   0750 95 E0         [12] 1191 	subb	a,acc
   0752 08            [12] 1192 	inc	r0
   0753 F6            [12] 1193 	mov	@r0,a
   0754 08            [12] 1194 	inc	r0
   0755 F6            [12] 1195 	mov	@r0,a
   0756 E5 81         [12] 1196 	mov	a,sp
   0758 24 FD         [12] 1197 	add	a,#0xfd
   075A F8            [12] 1198 	mov	r0,a
   075B E6            [12] 1199 	mov	a,@r0
   075C 2F            [12] 1200 	add	a,r7
   075D F6            [12] 1201 	mov	@r0,a
   075E 08            [12] 1202 	inc	r0
   075F E6            [12] 1203 	mov	a,@r0
   0760 3E            [12] 1204 	addc	a,r6
   0761 F6            [12] 1205 	mov	@r0,a
   0762 08            [12] 1206 	inc	r0
   0763 E6            [12] 1207 	mov	a,@r0
   0764 3D            [12] 1208 	addc	a,r5
   0765 F6            [12] 1209 	mov	@r0,a
   0766 08            [12] 1210 	inc	r0
   0767 E6            [12] 1211 	mov	a,@r0
   0768 3C            [12] 1212 	addc	a,r4
   0769 F6            [12] 1213 	mov	@r0,a
   076A E5 81         [12] 1214 	mov	a,sp
   076C 24 FD         [12] 1215 	add	a,#0xfd
   076E F8            [12] 1216 	mov	r0,a
   076F 86 04         [24] 1217 	mov	ar4,@r0
   0771 08            [12] 1218 	inc	r0
   0772 86 05         [24] 1219 	mov	ar5,@r0
   0774 08            [12] 1220 	inc	r0
   0775 86 06         [24] 1221 	mov	ar6,@r0
   0777 08            [12] 1222 	inc	r0
   0778 86 07         [24] 1223 	mov	ar7,@r0
                           1224 ;	radio/at.c:289: idx++;
   077A 78 16         [12] 1225 	mov	r0,#_idx
   077C E2            [24] 1226 	movx	a,@r0
   077D 24 01         [12] 1227 	add	a,#0x01
   077F F2            [24] 1228 	movx	@r0,a
   0780 02 06 F1      [24] 1229 	ljmp	00104$
   0783                    1230 00103$:
                           1231 ;	radio/at.c:291: return reg;
   0783 8C 82         [24] 1232 	mov	dpl,r4
   0785 8D 83         [24] 1233 	mov	dph,r5
   0787 8E F0         [24] 1234 	mov	b,r6
   0789 EF            [12] 1235 	mov	a,r7
   078A C8            [12] 1236 	xch	a,r0
   078B E5 81         [12] 1237 	mov	a,sp
   078D 24 FC         [12] 1238 	add	a,#0xFC
   078F F5 81         [12] 1239 	mov	sp,a
   0791 C8            [12] 1240 	xch	a,r0
   0792 22            [24] 1241 	ret
                           1242 ;------------------------------------------------------------
                           1243 ;Allocation info for local variables in function 'at_i'
                           1244 ;------------------------------------------------------------
                           1245 ;sloc0                     Allocated with name '_at_i_sloc0_1_0'
                           1246 ;id                        Allocated with name '_at_i_id_3_157'
                           1247 ;------------------------------------------------------------
                           1248 ;	radio/at.c:295: at_i(void)
                           1249 ;	-----------------------------------------
                           1250 ;	 function at_i
                           1251 ;	-----------------------------------------
   0793                    1252 _at_i:
                           1253 ;	radio/at.c:297: switch (at_cmd[3]) {
   0793 78 04         [12] 1254 	mov	r0,#(_at_cmd + 0x0003)
   0795 E2            [24] 1255 	movx	a,@r0
   0796 FF            [12] 1256 	mov	r7,a
   0797 60 30         [24] 1257 	jz	00102$
   0799 BF 30 02      [24] 1258 	cjne	r7,#0x30,00152$
   079C 80 2B         [24] 1259 	sjmp	00102$
   079E                    1260 00152$:
   079E BF 31 02      [24] 1261 	cjne	r7,#0x31,00153$
   07A1 80 48         [24] 1262 	sjmp	00103$
   07A3                    1263 00153$:
   07A3 BF 32 02      [24] 1264 	cjne	r7,#0x32,00154$
   07A6 80 65         [24] 1265 	sjmp	00104$
   07A8                    1266 00154$:
   07A8 BF 33 03      [24] 1267 	cjne	r7,#0x33,00155$
   07AB 02 08 2A      [24] 1268 	ljmp	00105$
   07AE                    1269 00155$:
   07AE BF 34 03      [24] 1270 	cjne	r7,#0x34,00156$
   07B1 02 08 4A      [24] 1271 	ljmp	00106$
   07B4                    1272 00156$:
   07B4 BF 35 03      [24] 1273 	cjne	r7,#0x35,00157$
   07B7 02 08 6A      [24] 1274 	ljmp	00126$
   07BA                    1275 00157$:
   07BA BF 36 03      [24] 1276 	cjne	r7,#0x36,00158$
   07BD 02 08 C5      [24] 1277 	ljmp	00109$
   07C0                    1278 00158$:
   07C0 BF 37 03      [24] 1279 	cjne	r7,#0x37,00159$
   07C3 02 08 C8      [24] 1280 	ljmp	00110$
   07C6                    1281 00159$:
   07C6 02 08 CB      [24] 1282 	ljmp	00111$
                           1283 ;	radio/at.c:299: case '0':
   07C9                    1284 00102$:
                           1285 ;	radio/at.c:300: printf("%s\n", g_banner_string);
   07C9 74 9C         [12] 1286 	mov	a,#_g_banner_string
   07CB C0 E0         [24] 1287 	push	acc
   07CD 74 C7         [12] 1288 	mov	a,#(_g_banner_string >> 8)
   07CF C0 E0         [24] 1289 	push	acc
   07D1 74 80         [12] 1290 	mov	a,#0x80
   07D3 C0 E0         [24] 1291 	push	acc
   07D5 74 37         [12] 1292 	mov	a,#__str_0
   07D7 C0 E0         [24] 1293 	push	acc
   07D9 74 65         [12] 1294 	mov	a,#(__str_0 >> 8)
   07DB C0 E0         [24] 1295 	push	acc
   07DD 74 80         [12] 1296 	mov	a,#0x80
   07DF C0 E0         [24] 1297 	push	acc
   07E1 12 2D B6      [24] 1298 	lcall	_printfl
   07E4 E5 81         [12] 1299 	mov	a,sp
   07E6 24 FA         [12] 1300 	add	a,#0xfa
   07E8 F5 81         [12] 1301 	mov	sp,a
                           1302 ;	radio/at.c:301: return;
   07EA 22            [24] 1303 	ret
                           1304 ;	radio/at.c:302: case '1':
   07EB                    1305 00103$:
                           1306 ;	radio/at.c:303: printf("%s\n", g_version_string);
   07EB 74 B1         [12] 1307 	mov	a,#_g_version_string
   07ED C0 E0         [24] 1308 	push	acc
   07EF 74 C7         [12] 1309 	mov	a,#(_g_version_string >> 8)
   07F1 C0 E0         [24] 1310 	push	acc
   07F3 74 80         [12] 1311 	mov	a,#0x80
   07F5 C0 E0         [24] 1312 	push	acc
   07F7 74 37         [12] 1313 	mov	a,#__str_0
   07F9 C0 E0         [24] 1314 	push	acc
   07FB 74 65         [12] 1315 	mov	a,#(__str_0 >> 8)
   07FD C0 E0         [24] 1316 	push	acc
   07FF 74 80         [12] 1317 	mov	a,#0x80
   0801 C0 E0         [24] 1318 	push	acc
   0803 12 2D B6      [24] 1319 	lcall	_printfl
   0806 E5 81         [12] 1320 	mov	a,sp
   0808 24 FA         [12] 1321 	add	a,#0xfa
   080A F5 81         [12] 1322 	mov	sp,a
                           1323 ;	radio/at.c:304: return;
   080C 22            [24] 1324 	ret
                           1325 ;	radio/at.c:305: case '2':
   080D                    1326 00104$:
                           1327 ;	radio/at.c:306: printf("%u\n", BOARD_ID);
   080D 74 4D         [12] 1328 	mov	a,#0x4D
   080F C0 E0         [24] 1329 	push	acc
   0811 E4            [12] 1330 	clr	a
   0812 C0 E0         [24] 1331 	push	acc
   0814 74 44         [12] 1332 	mov	a,#__str_3
   0816 C0 E0         [24] 1333 	push	acc
   0818 74 65         [12] 1334 	mov	a,#(__str_3 >> 8)
   081A C0 E0         [24] 1335 	push	acc
   081C 74 80         [12] 1336 	mov	a,#0x80
   081E C0 E0         [24] 1337 	push	acc
   0820 12 2D B6      [24] 1338 	lcall	_printfl
   0823 E5 81         [12] 1339 	mov	a,sp
   0825 24 FB         [12] 1340 	add	a,#0xfb
   0827 F5 81         [12] 1341 	mov	sp,a
                           1342 ;	radio/at.c:307: break;
   0829 22            [24] 1343 	ret
                           1344 ;	radio/at.c:308: case '3':
   082A                    1345 00105$:
                           1346 ;	radio/at.c:309: printf("%u\n", g_board_frequency);
   082A 78 32         [12] 1347 	mov	r0,#_g_board_frequency
   082C E2            [24] 1348 	movx	a,@r0
   082D FE            [12] 1349 	mov	r6,a
   082E 7F 00         [12] 1350 	mov	r7,#0x00
   0830 C0 06         [24] 1351 	push	ar6
   0832 C0 07         [24] 1352 	push	ar7
   0834 74 44         [12] 1353 	mov	a,#__str_3
   0836 C0 E0         [24] 1354 	push	acc
   0838 74 65         [12] 1355 	mov	a,#(__str_3 >> 8)
   083A C0 E0         [24] 1356 	push	acc
   083C 74 80         [12] 1357 	mov	a,#0x80
   083E C0 E0         [24] 1358 	push	acc
   0840 12 2D B6      [24] 1359 	lcall	_printfl
   0843 E5 81         [12] 1360 	mov	a,sp
   0845 24 FB         [12] 1361 	add	a,#0xfb
   0847 F5 81         [12] 1362 	mov	sp,a
                           1363 ;	radio/at.c:310: break;
   0849 22            [24] 1364 	ret
                           1365 ;	radio/at.c:311: case '4':
   084A                    1366 00106$:
                           1367 ;	radio/at.c:312: printf("%u\n", g_board_bl_version);
   084A 78 33         [12] 1368 	mov	r0,#_g_board_bl_version
   084C E2            [24] 1369 	movx	a,@r0
   084D FE            [12] 1370 	mov	r6,a
   084E 7F 00         [12] 1371 	mov	r7,#0x00
   0850 C0 06         [24] 1372 	push	ar6
   0852 C0 07         [24] 1373 	push	ar7
   0854 74 44         [12] 1374 	mov	a,#__str_3
   0856 C0 E0         [24] 1375 	push	acc
   0858 74 65         [12] 1376 	mov	a,#(__str_3 >> 8)
   085A C0 E0         [24] 1377 	push	acc
   085C 74 80         [12] 1378 	mov	a,#0x80
   085E C0 E0         [24] 1379 	push	acc
   0860 12 2D B6      [24] 1380 	lcall	_printfl
   0863 E5 81         [12] 1381 	mov	a,sp
   0865 24 FB         [12] 1382 	add	a,#0xfb
   0867 F5 81         [12] 1383 	mov	sp,a
                           1384 ;	radio/at.c:313: return;
                           1385 ;	radio/at.c:317: for (id = 0; id < PARAM_MAX; id++) {
   0869 22            [24] 1386 	ret
   086A                    1387 00126$:
   086A 7F 00         [12] 1388 	mov	r7,#0x00
   086C                    1389 00113$:
                           1390 ;	radio/at.c:318: printf("S%u: %s=%lu\n", 
   086C 8F 82         [24] 1391 	mov	dpl,r7
   086E C0 07         [24] 1392 	push	ar7
   0870 12 27 64      [24] 1393 	lcall	_param_get
   0873 85 82 08      [24] 1394 	mov	_at_i_sloc0_1_0,dpl
   0876 85 83 09      [24] 1395 	mov	(_at_i_sloc0_1_0 + 1),dph
   0879 85 F0 0A      [24] 1396 	mov	(_at_i_sloc0_1_0 + 2),b
   087C F5 0B         [12] 1397 	mov	(_at_i_sloc0_1_0 + 3),a
   087E D0 07         [24] 1398 	pop	ar7
   0880 8F 82         [24] 1399 	mov	dpl,r7
   0882 C0 07         [24] 1400 	push	ar7
   0884 12 2A 43      [24] 1401 	lcall	_param_name
   0887 AA 82         [24] 1402 	mov	r2,dpl
   0889 AD 83         [24] 1403 	mov	r5,dph
   088B AE F0         [24] 1404 	mov	r6,b
   088D D0 07         [24] 1405 	pop	ar7
   088F 8F 03         [24] 1406 	mov	ar3,r7
   0891 7C 00         [12] 1407 	mov	r4,#0x00
   0893 C0 07         [24] 1408 	push	ar7
   0895 C0 08         [24] 1409 	push	_at_i_sloc0_1_0
   0897 C0 09         [24] 1410 	push	(_at_i_sloc0_1_0 + 1)
   0899 C0 0A         [24] 1411 	push	(_at_i_sloc0_1_0 + 2)
   089B C0 0B         [24] 1412 	push	(_at_i_sloc0_1_0 + 3)
   089D C0 02         [24] 1413 	push	ar2
   089F C0 05         [24] 1414 	push	ar5
   08A1 C0 06         [24] 1415 	push	ar6
   08A3 C0 03         [24] 1416 	push	ar3
   08A5 C0 04         [24] 1417 	push	ar4
   08A7 74 48         [12] 1418 	mov	a,#__str_4
   08A9 C0 E0         [24] 1419 	push	acc
   08AB 74 65         [12] 1420 	mov	a,#(__str_4 >> 8)
   08AD C0 E0         [24] 1421 	push	acc
   08AF 74 80         [12] 1422 	mov	a,#0x80
   08B1 C0 E0         [24] 1423 	push	acc
   08B3 12 2D B6      [24] 1424 	lcall	_printfl
   08B6 E5 81         [12] 1425 	mov	a,sp
   08B8 24 F4         [12] 1426 	add	a,#0xf4
   08BA F5 81         [12] 1427 	mov	sp,a
   08BC D0 07         [24] 1428 	pop	ar7
                           1429 ;	radio/at.c:317: for (id = 0; id < PARAM_MAX; id++) {
   08BE 0F            [12] 1430 	inc	r7
   08BF BF 0F 00      [24] 1431 	cjne	r7,#0x0F,00160$
   08C2                    1432 00160$:
   08C2 40 A8         [24] 1433 	jc	00113$
                           1434 ;	radio/at.c:323: return;
                           1435 ;	radio/at.c:325: case '6':
   08C4 22            [24] 1436 	ret
   08C5                    1437 00109$:
                           1438 ;	radio/at.c:326: tdm_report_timing();
                           1439 ;	radio/at.c:327: return;
                           1440 ;	radio/at.c:328: case '7':
   08C5 02 54 F1      [24] 1441 	ljmp	_tdm_report_timing
   08C8                    1442 00110$:
                           1443 ;	radio/at.c:329: tdm_show_rssi();
                           1444 ;	radio/at.c:330: return;
                           1445 ;	radio/at.c:331: default:
   08C8 02 44 DB      [24] 1446 	ljmp	_tdm_show_rssi
   08CB                    1447 00111$:
                           1448 ;	radio/at.c:332: at_error();
                           1449 ;	radio/at.c:333: return;
                           1450 ;	radio/at.c:334: }
   08CB 02 06 C1      [24] 1451 	ljmp	_at_error
                           1452 ;------------------------------------------------------------
                           1453 ;Allocation info for local variables in function 'at_s'
                           1454 ;------------------------------------------------------------
                           1455 ;	radio/at.c:338: at_s(void)
                           1456 ;	-----------------------------------------
                           1457 ;	 function at_s
                           1458 ;	-----------------------------------------
   08CE                    1459 _at_s:
                           1460 ;	radio/at.c:344: idx = 3;
   08CE 78 16         [12] 1461 	mov	r0,#_idx
   08D0 74 03         [12] 1462 	mov	a,#0x03
   08D2 F2            [24] 1463 	movx	@r0,a
                           1464 ;	radio/at.c:345: sreg = at_parse_number();
   08D3 12 06 E3      [24] 1465 	lcall	_at_parse_number
   08D6 AC 82         [24] 1466 	mov	r4,dpl
   08D8 AD 83         [24] 1467 	mov	r5,dph
   08DA AE F0         [24] 1468 	mov	r6,b
   08DC FF            [12] 1469 	mov	r7,a
                           1470 ;	radio/at.c:347: if (sreg >= PARAM_MAX) {
   08DD BC 0F 00      [24] 1471 	cjne	r4,#0x0F,00127$
   08E0                    1472 00127$:
   08E0 40 03         [24] 1473 	jc	00102$
                           1474 ;	radio/at.c:348: at_error();
                           1475 ;	radio/at.c:349: return;
   08E2 02 06 C1      [24] 1476 	ljmp	_at_error
   08E5                    1477 00102$:
                           1478 ;	radio/at.c:352: switch (at_cmd[idx]) {
   08E5 78 16         [12] 1479 	mov	r0,#_idx
   08E7 E2            [24] 1480 	movx	a,@r0
   08E8 24 01         [12] 1481 	add	a,#_at_cmd
   08EA F9            [12] 1482 	mov	r1,a
   08EB E3            [24] 1483 	movx	a,@r1
   08EC FF            [12] 1484 	mov	r7,a
   08ED BF 3D 02      [24] 1485 	cjne	r7,#0x3D,00129$
   08F0 80 2D         [24] 1486 	sjmp	00104$
   08F2                    1487 00129$:
   08F2 BF 3F 58      [24] 1488 	cjne	r7,#0x3F,00109$
                           1489 ;	radio/at.c:354: val = param_get(sreg);
   08F5 8C 82         [24] 1490 	mov	dpl,r4
   08F7 12 27 64      [24] 1491 	lcall	_param_get
   08FA AB 82         [24] 1492 	mov	r3,dpl
   08FC AD 83         [24] 1493 	mov	r5,dph
   08FE AE F0         [24] 1494 	mov	r6,b
   0900 FF            [12] 1495 	mov	r7,a
                           1496 ;	radio/at.c:355: printf("%lu\n", val);
   0901 C0 03         [24] 1497 	push	ar3
   0903 C0 05         [24] 1498 	push	ar5
   0905 C0 06         [24] 1499 	push	ar6
   0907 C0 07         [24] 1500 	push	ar7
   0909 74 55         [12] 1501 	mov	a,#__str_5
   090B C0 E0         [24] 1502 	push	acc
   090D 74 65         [12] 1503 	mov	a,#(__str_5 >> 8)
   090F C0 E0         [24] 1504 	push	acc
   0911 74 80         [12] 1505 	mov	a,#0x80
   0913 C0 E0         [24] 1506 	push	acc
   0915 12 2D B6      [24] 1507 	lcall	_printfl
   0918 E5 81         [12] 1508 	mov	a,sp
   091A 24 F9         [12] 1509 	add	a,#0xf9
   091C F5 81         [12] 1510 	mov	sp,a
                           1511 ;	radio/at.c:356: return;
                           1512 ;	radio/at.c:358: case '=':
   091E 22            [24] 1513 	ret
   091F                    1514 00104$:
                           1515 ;	radio/at.c:359: if (sreg > 0) {
   091F EC            [12] 1516 	mov	a,r4
   0920 60 2B         [24] 1517 	jz	00109$
                           1518 ;	radio/at.c:360: idx++;
   0922 78 16         [12] 1519 	mov	r0,#_idx
   0924 E2            [24] 1520 	movx	a,@r0
   0925 24 01         [12] 1521 	add	a,#0x01
   0927 F2            [24] 1522 	movx	@r0,a
                           1523 ;	radio/at.c:361: val = at_parse_number();
   0928 C0 04         [24] 1524 	push	ar4
   092A 12 06 E3      [24] 1525 	lcall	_at_parse_number
   092D AB 82         [24] 1526 	mov	r3,dpl
   092F AD 83         [24] 1527 	mov	r5,dph
   0931 AE F0         [24] 1528 	mov	r6,b
   0933 FF            [12] 1529 	mov	r7,a
   0934 D0 04         [24] 1530 	pop	ar4
                           1531 ;	radio/at.c:362: if (param_set(sreg, val)) {
   0936 78 69         [12] 1532 	mov	r0,#_param_set_PARM_2
   0938 EB            [12] 1533 	mov	a,r3
   0939 F2            [24] 1534 	movx	@r0,a
   093A 08            [12] 1535 	inc	r0
   093B ED            [12] 1536 	mov	a,r5
   093C F2            [24] 1537 	movx	@r0,a
   093D 08            [12] 1538 	inc	r0
   093E EE            [12] 1539 	mov	a,r6
   093F F2            [24] 1540 	movx	@r0,a
   0940 08            [12] 1541 	inc	r0
   0941 EF            [12] 1542 	mov	a,r7
   0942 F2            [24] 1543 	movx	@r0,a
   0943 8C 82         [24] 1544 	mov	dpl,r4
   0945 12 25 C1      [24] 1545 	lcall	_param_set
   0948 50 03         [24] 1546 	jnc	00109$
                           1547 ;	radio/at.c:363: at_ok();
                           1548 ;	radio/at.c:364: return;
                           1549 ;	radio/at.c:368: }
   094A 02 06 9F      [24] 1550 	ljmp	_at_ok
   094D                    1551 00109$:
                           1552 ;	radio/at.c:369: at_error();
   094D 02 06 C1      [24] 1553 	ljmp	_at_error
                           1554 ;------------------------------------------------------------
                           1555 ;Allocation info for local variables in function 'at_ampersand'
                           1556 ;------------------------------------------------------------
                           1557 ;x                         Allocated with name '_at_ampersand_x_3_168'
                           1558 ;------------------------------------------------------------
                           1559 ;	radio/at.c:373: at_ampersand(void)
                           1560 ;	-----------------------------------------
                           1561 ;	 function at_ampersand
                           1562 ;	-----------------------------------------
   0950                    1563 _at_ampersand:
                           1564 ;	radio/at.c:375: switch (at_cmd[3]) {
   0950 78 04         [12] 1565 	mov	r0,#(_at_cmd + 0x0003)
   0952 E2            [24] 1566 	movx	a,@r0
   0953 FF            [12] 1567 	mov	r7,a
   0954 BF 46 02      [24] 1568 	cjne	r7,#0x46,00154$
   0957 80 17         [24] 1569 	sjmp	00101$
   0959                    1570 00154$:
   0959 BF 50 02      [24] 1571 	cjne	r7,#0x50,00155$
   095C 80 4D         [24] 1572 	sjmp	00107$
   095E                    1573 00155$:
   095E BF 54 02      [24] 1574 	cjne	r7,#0x54,00156$
   0961 80 4B         [24] 1575 	sjmp	00108$
   0963                    1576 00156$:
   0963 BF 55 02      [24] 1577 	cjne	r7,#0x55,00157$
   0966 80 14         [24] 1578 	sjmp	00103$
   0968                    1579 00157$:
   0968 BF 57 02      [24] 1580 	cjne	r7,#0x57,00158$
   096B 80 09         [24] 1581 	sjmp	00102$
   096D                    1582 00158$:
   096D 02 0A 24      [24] 1583 	ljmp	00118$
                           1584 ;	radio/at.c:376: case 'F':
   0970                    1585 00101$:
                           1586 ;	radio/at.c:377: param_default();
   0970 12 29 A9      [24] 1587 	lcall	_param_default
                           1588 ;	radio/at.c:378: at_ok();
                           1589 ;	radio/at.c:379: break;
   0973 02 06 9F      [24] 1590 	ljmp	_at_ok
                           1591 ;	radio/at.c:380: case 'W':
   0976                    1592 00102$:
                           1593 ;	radio/at.c:381: param_save();
   0976 12 29 00      [24] 1594 	lcall	_param_save
                           1595 ;	radio/at.c:382: at_ok();
                           1596 ;	radio/at.c:383: break;
   0979 02 06 9F      [24] 1597 	ljmp	_at_ok
                           1598 ;	radio/at.c:385: case 'U':
   097C                    1599 00103$:
                           1600 ;	radio/at.c:386: if (!strcmp(at_cmd + 4, "PDATE")) {
   097C 90 05 CD      [24] 1601 	mov	dptr,#_strcmp_PARM_2
   097F 74 5A         [12] 1602 	mov	a,#__str_6
   0981 F0            [24] 1603 	movx	@dptr,a
   0982 74 65         [12] 1604 	mov	a,#(__str_6 >> 8)
   0984 A3            [24] 1605 	inc	dptr
   0985 F0            [24] 1606 	movx	@dptr,a
   0986 74 80         [12] 1607 	mov	a,#0x80
   0988 A3            [24] 1608 	inc	dptr
   0989 F0            [24] 1609 	movx	@dptr,a
   098A 90 00 05      [24] 1610 	mov	dptr,#(_at_cmd + 0x0004)
   098D 75 F0 60      [24] 1611 	mov	b,#0x60
   0990 12 5D E7      [24] 1612 	lcall	_strcmp
   0993 E5 82         [12] 1613 	mov	a,dpl
   0995 85 83 F0      [24] 1614 	mov	b,dph
   0998 45 F0         [12] 1615 	orl	a,b
   099A 70 0C         [24] 1616 	jnz	00106$
                           1617 ;	radio/at.c:388: volatile char x = *(__code volatile char *)0xfc00;
   099C 90 FC 00      [24] 1618 	mov	dptr,#0xFC00
   099F E4            [12] 1619 	clr	a
   09A0 93            [24] 1620 	movc	a,@a+dptr
   09A1 FF            [12] 1621 	mov	r7,a
   09A2 90 00 EC      [24] 1622 	mov	dptr,#_at_ampersand_x_3_168
   09A5 F0            [24] 1623 	movx	@dptr,a
   09A6                    1624 00121$:
   09A6 80 FE         [24] 1625 	sjmp	00121$
   09A8                    1626 00106$:
                           1627 ;	radio/at.c:392: at_error();
                           1628 ;	radio/at.c:393: break;
   09A8 02 06 C1      [24] 1629 	ljmp	_at_error
                           1630 ;	radio/at.c:395: case 'P':
   09AB                    1631 00107$:
                           1632 ;	radio/at.c:396: tdm_change_phase();
                           1633 ;	radio/at.c:397: break;
   09AB 02 49 B9      [24] 1634 	ljmp	_tdm_change_phase
                           1635 ;	radio/at.c:399: case 'T':
   09AE                    1636 00108$:
                           1637 ;	radio/at.c:401: if (!strcmp(at_cmd + 4, "")) {
   09AE 90 05 CD      [24] 1638 	mov	dptr,#_strcmp_PARM_2
   09B1 74 60         [12] 1639 	mov	a,#__str_7
   09B3 F0            [24] 1640 	movx	@dptr,a
   09B4 74 65         [12] 1641 	mov	a,#(__str_7 >> 8)
   09B6 A3            [24] 1642 	inc	dptr
   09B7 F0            [24] 1643 	movx	@dptr,a
   09B8 74 80         [12] 1644 	mov	a,#0x80
   09BA A3            [24] 1645 	inc	dptr
   09BB F0            [24] 1646 	movx	@dptr,a
   09BC 90 00 05      [24] 1647 	mov	dptr,#(_at_cmd + 0x0004)
   09BF 75 F0 60      [24] 1648 	mov	b,#0x60
   09C2 12 5D E7      [24] 1649 	lcall	_strcmp
   09C5 E5 82         [12] 1650 	mov	a,dpl
   09C7 85 83 F0      [24] 1651 	mov	b,dph
   09CA 45 F0         [12] 1652 	orl	a,b
   09CC 70 05         [24] 1653 	jnz	00116$
                           1654 ;	radio/at.c:403: at_testmode = 0;
   09CE 78 13         [12] 1655 	mov	r0,#_at_testmode
   09D0 E4            [12] 1656 	clr	a
   09D1 F2            [24] 1657 	movx	@r0,a
   09D2 22            [24] 1658 	ret
   09D3                    1659 00116$:
                           1660 ;	radio/at.c:404: } else if (!strcmp(at_cmd + 4, "=RSSI")) {
   09D3 90 05 CD      [24] 1661 	mov	dptr,#_strcmp_PARM_2
   09D6 74 61         [12] 1662 	mov	a,#__str_8
   09D8 F0            [24] 1663 	movx	@dptr,a
   09D9 74 65         [12] 1664 	mov	a,#(__str_8 >> 8)
   09DB A3            [24] 1665 	inc	dptr
   09DC F0            [24] 1666 	movx	@dptr,a
   09DD 74 80         [12] 1667 	mov	a,#0x80
   09DF A3            [24] 1668 	inc	dptr
   09E0 F0            [24] 1669 	movx	@dptr,a
   09E1 90 00 05      [24] 1670 	mov	dptr,#(_at_cmd + 0x0004)
   09E4 75 F0 60      [24] 1671 	mov	b,#0x60
   09E7 12 5D E7      [24] 1672 	lcall	_strcmp
   09EA E5 82         [12] 1673 	mov	a,dpl
   09EC 85 83 F0      [24] 1674 	mov	b,dph
   09EF 45 F0         [12] 1675 	orl	a,b
   09F1 70 07         [24] 1676 	jnz	00113$
                           1677 ;	radio/at.c:406: at_testmode ^= AT_TEST_RSSI;
   09F3 78 13         [12] 1678 	mov	r0,#_at_testmode
   09F5 E2            [24] 1679 	movx	a,@r0
   09F6 64 01         [12] 1680 	xrl	a,#0x01
   09F8 F2            [24] 1681 	movx	@r0,a
   09F9 22            [24] 1682 	ret
   09FA                    1683 00113$:
                           1684 ;	radio/at.c:407: } else if (!strcmp(at_cmd + 4, "=TDM")) {
   09FA 90 05 CD      [24] 1685 	mov	dptr,#_strcmp_PARM_2
   09FD 74 67         [12] 1686 	mov	a,#__str_9
   09FF F0            [24] 1687 	movx	@dptr,a
   0A00 74 65         [12] 1688 	mov	a,#(__str_9 >> 8)
   0A02 A3            [24] 1689 	inc	dptr
   0A03 F0            [24] 1690 	movx	@dptr,a
   0A04 74 80         [12] 1691 	mov	a,#0x80
   0A06 A3            [24] 1692 	inc	dptr
   0A07 F0            [24] 1693 	movx	@dptr,a
   0A08 90 00 05      [24] 1694 	mov	dptr,#(_at_cmd + 0x0004)
   0A0B 75 F0 60      [24] 1695 	mov	b,#0x60
   0A0E 12 5D E7      [24] 1696 	lcall	_strcmp
   0A11 E5 82         [12] 1697 	mov	a,dpl
   0A13 85 83 F0      [24] 1698 	mov	b,dph
   0A16 45 F0         [12] 1699 	orl	a,b
   0A18 70 07         [24] 1700 	jnz	00110$
                           1701 ;	radio/at.c:409: at_testmode ^= AT_TEST_TDM;
   0A1A 78 13         [12] 1702 	mov	r0,#_at_testmode
   0A1C E2            [24] 1703 	movx	a,@r0
   0A1D 64 02         [12] 1704 	xrl	a,#0x02
   0A1F F2            [24] 1705 	movx	@r0,a
   0A20 22            [24] 1706 	ret
   0A21                    1707 00110$:
                           1708 ;	radio/at.c:411: at_error();
                           1709 ;	radio/at.c:413: break;
                           1710 ;	radio/at.c:415: default:
   0A21 02 06 C1      [24] 1711 	ljmp	_at_error
   0A24                    1712 00118$:
                           1713 ;	radio/at.c:416: at_error();
                           1714 ;	radio/at.c:418: }
   0A24 02 06 C1      [24] 1715 	ljmp	_at_error
                           1716 ;------------------------------------------------------------
                           1717 ;Allocation info for local variables in function 'at_plus'
                           1718 ;------------------------------------------------------------
                           1719 ;	radio/at.c:422: at_plus(void)
                           1720 ;	-----------------------------------------
                           1721 ;	 function at_plus
                           1722 ;	-----------------------------------------
   0A27                    1723 _at_plus:
                           1724 ;	radio/at.c:474: at_error();
   0A27 02 06 C1      [24] 1725 	ljmp	_at_error
                           1726 	.area CSEG    (CODE)
                           1727 	.area CONST   (CODE)
   6537                    1728 __str_0:
   6537 25 73              1729 	.ascii "%s"
   6539 0A                 1730 	.db 0x0A
   653A 00                 1731 	.db 0x00
   653B                    1732 __str_1:
   653B 4F 4B              1733 	.ascii "OK"
   653D 00                 1734 	.db 0x00
   653E                    1735 __str_2:
   653E 45 52 52 4F 52     1736 	.ascii "ERROR"
   6543 00                 1737 	.db 0x00
   6544                    1738 __str_3:
   6544 25 75              1739 	.ascii "%u"
   6546 0A                 1740 	.db 0x0A
   6547 00                 1741 	.db 0x00
   6548                    1742 __str_4:
   6548 53 25 75 3A 20 25  1743 	.ascii "S%u: %s=%lu"
        73 3D 25 6C 75
   6553 0A                 1744 	.db 0x0A
   6554 00                 1745 	.db 0x00
   6555                    1746 __str_5:
   6555 25 6C 75           1747 	.ascii "%lu"
   6558 0A                 1748 	.db 0x0A
   6559 00                 1749 	.db 0x00
   655A                    1750 __str_6:
   655A 50 44 41 54 45     1751 	.ascii "PDATE"
   655F 00                 1752 	.db 0x00
   6560                    1753 __str_7:
   6560 00                 1754 	.db 0x00
   6561                    1755 __str_8:
   6561 3D 52 53 53 49     1756 	.ascii "=RSSI"
   6566 00                 1757 	.db 0x00
   6567                    1758 __str_9:
   6567 3D 54 44 4D        1759 	.ascii "=TDM"
   656B 00                 1760 	.db 0x00
                           1761 	.area XINIT   (CODE)
                           1762 	.area CABS    (ABS,CODE)
