                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:02 2013
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
                             31 	.globl _PIN_ENABLE
                             32 	.globl _PIN_CONFIG
                             33 	.globl _LED_GREEN
                             34 	.globl _LED_RED
                             35 	.globl _SPI0EN
                             36 	.globl _TXBMT0
                             37 	.globl _NSS0MD0
                             38 	.globl _NSS0MD1
                             39 	.globl _RXOVRN0
                             40 	.globl _MODF0
                             41 	.globl _WCOL0
                             42 	.globl _SPIF0
                             43 	.globl _AD0CM0
                             44 	.globl _AD0CM1
                             45 	.globl _AD0CM2
                             46 	.globl _AD0WINT
                             47 	.globl _AD0BUSY
                             48 	.globl _AD0INT
                             49 	.globl _BURSTEN
                             50 	.globl _AD0EN
                             51 	.globl _CCF0
                             52 	.globl _CCF1
                             53 	.globl _CCF2
                             54 	.globl _CCF3
                             55 	.globl _CCF4
                             56 	.globl _CCF5
                             57 	.globl _CR
                             58 	.globl _CF
                             59 	.globl _P
                             60 	.globl _F1
                             61 	.globl _OV
                             62 	.globl _RS0
                             63 	.globl _RS1
                             64 	.globl _F0
                             65 	.globl _AC
                             66 	.globl _CY
                             67 	.globl _T2XCLK
                             68 	.globl _T2RCLK
                             69 	.globl _TR2
                             70 	.globl _T2SPLIT
                             71 	.globl _TF2CEN
                             72 	.globl _TF2LEN
                             73 	.globl _TF2L
                             74 	.globl _TF2H
                             75 	.globl _SI
                             76 	.globl _ACK
                             77 	.globl _ARBLOST
                             78 	.globl _ACKRQ
                             79 	.globl _STO
                             80 	.globl _STA
                             81 	.globl _TXMODE
                             82 	.globl _MASTER
                             83 	.globl _PX0
                             84 	.globl _PT0
                             85 	.globl _PX1
                             86 	.globl _PT1
                             87 	.globl _PS0
                             88 	.globl _PT2
                             89 	.globl _PSPI0
                             90 	.globl _SPI1EN
                             91 	.globl _TXBMT1
                             92 	.globl _NSS1MD0
                             93 	.globl _NSS1MD1
                             94 	.globl _RXOVRN1
                             95 	.globl _MODF1
                             96 	.globl _WCOL1
                             97 	.globl _SPIF1
                             98 	.globl _EX0
                             99 	.globl _ET0
                            100 	.globl _EX1
                            101 	.globl _ET1
                            102 	.globl _ES0
                            103 	.globl _ET2
                            104 	.globl _ESPI0
                            105 	.globl _EA
                            106 	.globl _RI0
                            107 	.globl _TI0
                            108 	.globl _RB80
                            109 	.globl _TB80
                            110 	.globl _REN0
                            111 	.globl _MCE0
                            112 	.globl _S0MODE
                            113 	.globl _CRC0VAL
                            114 	.globl _CRC0INIT
                            115 	.globl _CRC0SEL
                            116 	.globl _IT0
                            117 	.globl _IE0
                            118 	.globl _IT1
                            119 	.globl _IE1
                            120 	.globl _TR0
                            121 	.globl _TF0
                            122 	.globl _TR1
                            123 	.globl _TF1
                            124 	.globl _PCA0CP4
                            125 	.globl _PCA0CP0
                            126 	.globl _PCA0
                            127 	.globl _PCA0CP3
                            128 	.globl _PCA0CP2
                            129 	.globl _PCA0CP1
                            130 	.globl _PCA0CP5
                            131 	.globl _TMR2
                            132 	.globl _TMR2RL
                            133 	.globl _ADC0LT
                            134 	.globl _ADC0GT
                            135 	.globl _ADC0
                            136 	.globl _TMR3
                            137 	.globl _TMR3RL
                            138 	.globl _TOFF
                            139 	.globl _DP
                            140 	.globl _VDM0CN
                            141 	.globl _PCA0CPH4
                            142 	.globl _PCA0CPL4
                            143 	.globl _PCA0CPH0
                            144 	.globl _PCA0CPL0
                            145 	.globl _PCA0H
                            146 	.globl _PCA0L
                            147 	.globl _SPI0CN
                            148 	.globl _EIP2
                            149 	.globl _EIP1
                            150 	.globl _SMB0ADM
                            151 	.globl _SMB0ADR
                            152 	.globl _P2MDIN
                            153 	.globl _P1MDIN
                            154 	.globl _P0MDIN
                            155 	.globl _B
                            156 	.globl _RSTSRC
                            157 	.globl _PCA0CPH3
                            158 	.globl _PCA0CPL3
                            159 	.globl _PCA0CPH2
                            160 	.globl _PCA0CPL2
                            161 	.globl _PCA0CPH1
                            162 	.globl _PCA0CPL1
                            163 	.globl _ADC0CN
                            164 	.globl _EIE2
                            165 	.globl _EIE1
                            166 	.globl _FLWR
                            167 	.globl _IT01CF
                            168 	.globl _XBR2
                            169 	.globl _XBR1
                            170 	.globl _XBR0
                            171 	.globl _ACC
                            172 	.globl _PCA0PWM
                            173 	.globl _PCA0CPM4
                            174 	.globl _PCA0CPM3
                            175 	.globl _PCA0CPM2
                            176 	.globl _PCA0CPM1
                            177 	.globl _PCA0CPM0
                            178 	.globl _PCA0MD
                            179 	.globl _PCA0CN
                            180 	.globl _P0MAT
                            181 	.globl _P2SKIP
                            182 	.globl _P1SKIP
                            183 	.globl _P0SKIP
                            184 	.globl _PCA0CPH5
                            185 	.globl _PCA0CPL5
                            186 	.globl _REF0CN
                            187 	.globl _PSW
                            188 	.globl _P1MAT
                            189 	.globl _PCA0CPM5
                            190 	.globl _TMR2H
                            191 	.globl _TMR2L
                            192 	.globl _TMR2RLH
                            193 	.globl _TMR2RLL
                            194 	.globl _REG0CN
                            195 	.globl _TMR2CN
                            196 	.globl _P0MASK
                            197 	.globl _ADC0LTH
                            198 	.globl _ADC0LTL
                            199 	.globl _ADC0GTH
                            200 	.globl _ADC0GTL
                            201 	.globl _SMB0DAT
                            202 	.globl _SMB0CF
                            203 	.globl _SMB0CN
                            204 	.globl _P1MASK
                            205 	.globl _ADC0H
                            206 	.globl _ADC0L
                            207 	.globl _ADC0TK
                            208 	.globl _ADC0CF
                            209 	.globl _ADC0MX
                            210 	.globl _ADC0PWR
                            211 	.globl _ADC0AC
                            212 	.globl _IREF0CN
                            213 	.globl _IP
                            214 	.globl _FLKEY
                            215 	.globl _FLSCL
                            216 	.globl _PMU0CF
                            217 	.globl _OSCICL
                            218 	.globl _OSCICN
                            219 	.globl _OSCXCN
                            220 	.globl _SPI1CN
                            221 	.globl _ONESHOT
                            222 	.globl _EMI0TC
                            223 	.globl _RTC0KEY
                            224 	.globl _RTC0DAT
                            225 	.globl _RTC0ADR
                            226 	.globl _EMI0CF
                            227 	.globl _EMI0CN
                            228 	.globl _CLKSEL
                            229 	.globl _IE
                            230 	.globl _SFRPAGE
                            231 	.globl _P2DRV
                            232 	.globl _P2MDOUT
                            233 	.globl _P1DRV
                            234 	.globl _P1MDOUT
                            235 	.globl _P0DRV
                            236 	.globl _P0MDOUT
                            237 	.globl _SPI0DAT
                            238 	.globl _SPI0CKR
                            239 	.globl _SPI0CFG
                            240 	.globl _P2
                            241 	.globl _CPT0MX
                            242 	.globl _CPT1MX
                            243 	.globl _CPT0MD
                            244 	.globl _CPT1MD
                            245 	.globl _CPT0CN
                            246 	.globl _CPT1CN
                            247 	.globl _SBUF0
                            248 	.globl _SCON0
                            249 	.globl _CRC0CNT
                            250 	.globl _DC0CN
                            251 	.globl _CRC0AUTO
                            252 	.globl _DC0CF
                            253 	.globl _TMR3H
                            254 	.globl _CRC0FLIP
                            255 	.globl _TMR3L
                            256 	.globl _CRC0IN
                            257 	.globl _TMR3RLH
                            258 	.globl _CRC0CN
                            259 	.globl _TMR3RLL
                            260 	.globl _CRC0DAT
                            261 	.globl _TMR3CN
                            262 	.globl _P1
                            263 	.globl _PSCTL
                            264 	.globl _CKCON
                            265 	.globl _TH1
                            266 	.globl _TH0
                            267 	.globl _TL1
                            268 	.globl _TL0
                            269 	.globl _TMOD
                            270 	.globl _TCON
                            271 	.globl _PCON
                            272 	.globl _TOFFH
                            273 	.globl _SPI1DAT
                            274 	.globl _TOFFL
                            275 	.globl _SPI1CKR
                            276 	.globl _SPI1CFG
                            277 	.globl _DPH
                            278 	.globl _DPL
                            279 	.globl _SP
                            280 	.globl _P0
                            281 	.globl _idx
                            282 	.globl _at_testmode
                            283 	.globl _at_cmd_len
                            284 	.globl _at_cmd
                            285 	.globl _pdata_canary
                            286 	.globl _at_cmd_ready
                            287 	.globl _at_mode_active
                            288 	.globl _at_input
                            289 	.globl _at_plus_detector
                            290 	.globl _at_timer
                            291 	.globl _at_command
                            292 ;--------------------------------------------------------
                            293 ; special function registers
                            294 ;--------------------------------------------------------
                            295 	.area RSEG    (ABS,DATA)
   0000                     296 	.org 0x0000
                     0080   297 _P0	=	0x0080
                     0081   298 _SP	=	0x0081
                     0082   299 _DPL	=	0x0082
                     0083   300 _DPH	=	0x0083
                     0084   301 _SPI1CFG	=	0x0084
                     0085   302 _SPI1CKR	=	0x0085
                     0085   303 _TOFFL	=	0x0085
                     0086   304 _SPI1DAT	=	0x0086
                     0086   305 _TOFFH	=	0x0086
                     0087   306 _PCON	=	0x0087
                     0088   307 _TCON	=	0x0088
                     0089   308 _TMOD	=	0x0089
                     008A   309 _TL0	=	0x008a
                     008B   310 _TL1	=	0x008b
                     008C   311 _TH0	=	0x008c
                     008D   312 _TH1	=	0x008d
                     008E   313 _CKCON	=	0x008e
                     008F   314 _PSCTL	=	0x008f
                     0090   315 _P1	=	0x0090
                     0091   316 _TMR3CN	=	0x0091
                     0091   317 _CRC0DAT	=	0x0091
                     0092   318 _TMR3RLL	=	0x0092
                     0092   319 _CRC0CN	=	0x0092
                     0093   320 _TMR3RLH	=	0x0093
                     0093   321 _CRC0IN	=	0x0093
                     0094   322 _TMR3L	=	0x0094
                     0095   323 _CRC0FLIP	=	0x0095
                     0095   324 _TMR3H	=	0x0095
                     0096   325 _DC0CF	=	0x0096
                     0096   326 _CRC0AUTO	=	0x0096
                     0097   327 _DC0CN	=	0x0097
                     0097   328 _CRC0CNT	=	0x0097
                     0098   329 _SCON0	=	0x0098
                     0099   330 _SBUF0	=	0x0099
                     009A   331 _CPT1CN	=	0x009a
                     009B   332 _CPT0CN	=	0x009b
                     009C   333 _CPT1MD	=	0x009c
                     009D   334 _CPT0MD	=	0x009d
                     009E   335 _CPT1MX	=	0x009e
                     009F   336 _CPT0MX	=	0x009f
                     00A0   337 _P2	=	0x00a0
                     00A1   338 _SPI0CFG	=	0x00a1
                     00A2   339 _SPI0CKR	=	0x00a2
                     00A3   340 _SPI0DAT	=	0x00a3
                     00A4   341 _P0MDOUT	=	0x00a4
                     00A4   342 _P0DRV	=	0x00a4
                     00A5   343 _P1MDOUT	=	0x00a5
                     00A5   344 _P1DRV	=	0x00a5
                     00A6   345 _P2MDOUT	=	0x00a6
                     00A6   346 _P2DRV	=	0x00a6
                     00A7   347 _SFRPAGE	=	0x00a7
                     00A8   348 _IE	=	0x00a8
                     00A9   349 _CLKSEL	=	0x00a9
                     00AA   350 _EMI0CN	=	0x00aa
                     00AB   351 _EMI0CF	=	0x00ab
                     00AC   352 _RTC0ADR	=	0x00ac
                     00AD   353 _RTC0DAT	=	0x00ad
                     00AE   354 _RTC0KEY	=	0x00ae
                     00AF   355 _EMI0TC	=	0x00af
                     00AF   356 _ONESHOT	=	0x00af
                     00B0   357 _SPI1CN	=	0x00b0
                     00B1   358 _OSCXCN	=	0x00b1
                     00B2   359 _OSCICN	=	0x00b2
                     00B3   360 _OSCICL	=	0x00b3
                     00B5   361 _PMU0CF	=	0x00b5
                     00B6   362 _FLSCL	=	0x00b6
                     00B7   363 _FLKEY	=	0x00b7
                     00B8   364 _IP	=	0x00b8
                     00B9   365 _IREF0CN	=	0x00b9
                     00BA   366 _ADC0AC	=	0x00ba
                     00BA   367 _ADC0PWR	=	0x00ba
                     00BB   368 _ADC0MX	=	0x00bb
                     00BC   369 _ADC0CF	=	0x00bc
                     00BD   370 _ADC0TK	=	0x00bd
                     00BD   371 _ADC0L	=	0x00bd
                     00BE   372 _ADC0H	=	0x00be
                     00BF   373 _P1MASK	=	0x00bf
                     00C0   374 _SMB0CN	=	0x00c0
                     00C1   375 _SMB0CF	=	0x00c1
                     00C2   376 _SMB0DAT	=	0x00c2
                     00C3   377 _ADC0GTL	=	0x00c3
                     00C4   378 _ADC0GTH	=	0x00c4
                     00C5   379 _ADC0LTL	=	0x00c5
                     00C6   380 _ADC0LTH	=	0x00c6
                     00C7   381 _P0MASK	=	0x00c7
                     00C8   382 _TMR2CN	=	0x00c8
                     00C9   383 _REG0CN	=	0x00c9
                     00CA   384 _TMR2RLL	=	0x00ca
                     00CB   385 _TMR2RLH	=	0x00cb
                     00CC   386 _TMR2L	=	0x00cc
                     00CD   387 _TMR2H	=	0x00cd
                     00CE   388 _PCA0CPM5	=	0x00ce
                     00CF   389 _P1MAT	=	0x00cf
                     00D0   390 _PSW	=	0x00d0
                     00D1   391 _REF0CN	=	0x00d1
                     00D2   392 _PCA0CPL5	=	0x00d2
                     00D3   393 _PCA0CPH5	=	0x00d3
                     00D4   394 _P0SKIP	=	0x00d4
                     00D5   395 _P1SKIP	=	0x00d5
                     00D6   396 _P2SKIP	=	0x00d6
                     00D7   397 _P0MAT	=	0x00d7
                     00D8   398 _PCA0CN	=	0x00d8
                     00D9   399 _PCA0MD	=	0x00d9
                     00DA   400 _PCA0CPM0	=	0x00da
                     00DB   401 _PCA0CPM1	=	0x00db
                     00DC   402 _PCA0CPM2	=	0x00dc
                     00DD   403 _PCA0CPM3	=	0x00dd
                     00DE   404 _PCA0CPM4	=	0x00de
                     00DF   405 _PCA0PWM	=	0x00df
                     00E0   406 _ACC	=	0x00e0
                     00E1   407 _XBR0	=	0x00e1
                     00E2   408 _XBR1	=	0x00e2
                     00E3   409 _XBR2	=	0x00e3
                     00E4   410 _IT01CF	=	0x00e4
                     00E5   411 _FLWR	=	0x00e5
                     00E6   412 _EIE1	=	0x00e6
                     00E7   413 _EIE2	=	0x00e7
                     00E8   414 _ADC0CN	=	0x00e8
                     00E9   415 _PCA0CPL1	=	0x00e9
                     00EA   416 _PCA0CPH1	=	0x00ea
                     00EB   417 _PCA0CPL2	=	0x00eb
                     00EC   418 _PCA0CPH2	=	0x00ec
                     00ED   419 _PCA0CPL3	=	0x00ed
                     00EE   420 _PCA0CPH3	=	0x00ee
                     00EF   421 _RSTSRC	=	0x00ef
                     00F0   422 _B	=	0x00f0
                     00F1   423 _P0MDIN	=	0x00f1
                     00F2   424 _P1MDIN	=	0x00f2
                     00F3   425 _P2MDIN	=	0x00f3
                     00F4   426 _SMB0ADR	=	0x00f4
                     00F5   427 _SMB0ADM	=	0x00f5
                     00F6   428 _EIP1	=	0x00f6
                     00F7   429 _EIP2	=	0x00f7
                     00F8   430 _SPI0CN	=	0x00f8
                     00F9   431 _PCA0L	=	0x00f9
                     00FA   432 _PCA0H	=	0x00fa
                     00FB   433 _PCA0CPL0	=	0x00fb
                     00FC   434 _PCA0CPH0	=	0x00fc
                     00FD   435 _PCA0CPL4	=	0x00fd
                     00FE   436 _PCA0CPH4	=	0x00fe
                     00FF   437 _VDM0CN	=	0x00ff
                     8382   438 _DP	=	0x8382
                     8685   439 _TOFF	=	0x8685
                     9392   440 _TMR3RL	=	0x9392
                     9594   441 _TMR3	=	0x9594
                     BEBD   442 _ADC0	=	0xbebd
                     C4C3   443 _ADC0GT	=	0xc4c3
                     C6C5   444 _ADC0LT	=	0xc6c5
                     CBCA   445 _TMR2RL	=	0xcbca
                     CDCC   446 _TMR2	=	0xcdcc
                     D3D2   447 _PCA0CP5	=	0xd3d2
                     EAE9   448 _PCA0CP1	=	0xeae9
                     ECEB   449 _PCA0CP2	=	0xeceb
                     EEED   450 _PCA0CP3	=	0xeeed
                     FAF9   451 _PCA0	=	0xfaf9
                     FCFB   452 _PCA0CP0	=	0xfcfb
                     FEFD   453 _PCA0CP4	=	0xfefd
                            454 ;--------------------------------------------------------
                            455 ; special function bits
                            456 ;--------------------------------------------------------
                            457 	.area RSEG    (ABS,DATA)
   0000                     458 	.org 0x0000
                     008F   459 _TF1	=	0x008f
                     008E   460 _TR1	=	0x008e
                     008D   461 _TF0	=	0x008d
                     008C   462 _TR0	=	0x008c
                     008B   463 _IE1	=	0x008b
                     008A   464 _IT1	=	0x008a
                     0089   465 _IE0	=	0x0089
                     0088   466 _IT0	=	0x0088
                     0096   467 _CRC0SEL	=	0x0096
                     0095   468 _CRC0INIT	=	0x0095
                     0094   469 _CRC0VAL	=	0x0094
                     009F   470 _S0MODE	=	0x009f
                     009D   471 _MCE0	=	0x009d
                     009C   472 _REN0	=	0x009c
                     009B   473 _TB80	=	0x009b
                     009A   474 _RB80	=	0x009a
                     0099   475 _TI0	=	0x0099
                     0098   476 _RI0	=	0x0098
                     00AF   477 _EA	=	0x00af
                     00AE   478 _ESPI0	=	0x00ae
                     00AD   479 _ET2	=	0x00ad
                     00AC   480 _ES0	=	0x00ac
                     00AB   481 _ET1	=	0x00ab
                     00AA   482 _EX1	=	0x00aa
                     00A9   483 _ET0	=	0x00a9
                     00A8   484 _EX0	=	0x00a8
                     00B7   485 _SPIF1	=	0x00b7
                     00B6   486 _WCOL1	=	0x00b6
                     00B5   487 _MODF1	=	0x00b5
                     00B4   488 _RXOVRN1	=	0x00b4
                     00B3   489 _NSS1MD1	=	0x00b3
                     00B2   490 _NSS1MD0	=	0x00b2
                     00B1   491 _TXBMT1	=	0x00b1
                     00B0   492 _SPI1EN	=	0x00b0
                     00BE   493 _PSPI0	=	0x00be
                     00BD   494 _PT2	=	0x00bd
                     00BC   495 _PS0	=	0x00bc
                     00BB   496 _PT1	=	0x00bb
                     00BA   497 _PX1	=	0x00ba
                     00B9   498 _PT0	=	0x00b9
                     00B8   499 _PX0	=	0x00b8
                     00C7   500 _MASTER	=	0x00c7
                     00C6   501 _TXMODE	=	0x00c6
                     00C5   502 _STA	=	0x00c5
                     00C4   503 _STO	=	0x00c4
                     00C3   504 _ACKRQ	=	0x00c3
                     00C2   505 _ARBLOST	=	0x00c2
                     00C1   506 _ACK	=	0x00c1
                     00C0   507 _SI	=	0x00c0
                     00CF   508 _TF2H	=	0x00cf
                     00CE   509 _TF2L	=	0x00ce
                     00CD   510 _TF2LEN	=	0x00cd
                     00CC   511 _TF2CEN	=	0x00cc
                     00CB   512 _T2SPLIT	=	0x00cb
                     00CA   513 _TR2	=	0x00ca
                     00C9   514 _T2RCLK	=	0x00c9
                     00C8   515 _T2XCLK	=	0x00c8
                     00D7   516 _CY	=	0x00d7
                     00D6   517 _AC	=	0x00d6
                     00D5   518 _F0	=	0x00d5
                     00D4   519 _RS1	=	0x00d4
                     00D3   520 _RS0	=	0x00d3
                     00D2   521 _OV	=	0x00d2
                     00D1   522 _F1	=	0x00d1
                     00D0   523 _P	=	0x00d0
                     00DF   524 _CF	=	0x00df
                     00DE   525 _CR	=	0x00de
                     00DD   526 _CCF5	=	0x00dd
                     00DC   527 _CCF4	=	0x00dc
                     00DB   528 _CCF3	=	0x00db
                     00DA   529 _CCF2	=	0x00da
                     00D9   530 _CCF1	=	0x00d9
                     00D8   531 _CCF0	=	0x00d8
                     00EF   532 _AD0EN	=	0x00ef
                     00EE   533 _BURSTEN	=	0x00ee
                     00ED   534 _AD0INT	=	0x00ed
                     00EC   535 _AD0BUSY	=	0x00ec
                     00EB   536 _AD0WINT	=	0x00eb
                     00EA   537 _AD0CM2	=	0x00ea
                     00E9   538 _AD0CM1	=	0x00e9
                     00E8   539 _AD0CM0	=	0x00e8
                     00FF   540 _SPIF0	=	0x00ff
                     00FE   541 _WCOL0	=	0x00fe
                     00FD   542 _MODF0	=	0x00fd
                     00FC   543 _RXOVRN0	=	0x00fc
                     00FB   544 _NSS0MD1	=	0x00fb
                     00FA   545 _NSS0MD0	=	0x00fa
                     00F9   546 _TXBMT0	=	0x00f9
                     00F8   547 _SPI0EN	=	0x00f8
                     0096   548 _LED_RED	=	0x0096
                     0095   549 _LED_GREEN	=	0x0095
                     0082   550 _PIN_CONFIG	=	0x0082
                     0083   551 _PIN_ENABLE	=	0x0083
                     0087   552 _IRQ	=	0x0087
                     0094   553 _NSS1	=	0x0094
                     00A6   554 _SDN	=	0x00a6
                     00A6   555 _TDM_SYNC_PIN	=	0x00a6
                            556 ;--------------------------------------------------------
                            557 ; overlayable register banks
                            558 ;--------------------------------------------------------
                            559 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     560 	.ds 8
                            561 ;--------------------------------------------------------
                            562 ; internal ram data
                            563 ;--------------------------------------------------------
                            564 	.area DSEG    (DATA)
   0008                     565 _at_i_sloc0_1_0:
   0008                     566 	.ds 4
                            567 ;--------------------------------------------------------
                            568 ; overlayable items in internal ram 
                            569 ;--------------------------------------------------------
                            570 ;--------------------------------------------------------
                            571 ; indirectly addressable internal ram data
                            572 ;--------------------------------------------------------
                            573 	.area ISEG    (DATA)
                            574 ;--------------------------------------------------------
                            575 ; absolute internal ram data
                            576 ;--------------------------------------------------------
                            577 	.area IABS    (ABS,DATA)
                            578 	.area IABS    (ABS,DATA)
                            579 ;--------------------------------------------------------
                            580 ; bit data
                            581 ;--------------------------------------------------------
                            582 	.area BSEG    (BIT)
   0000                     583 _at_mode_active::
   0000                     584 	.ds 1
   0001                     585 _at_cmd_ready::
   0001                     586 	.ds 1
                            587 ;--------------------------------------------------------
                            588 ; paged external ram data
                            589 ;--------------------------------------------------------
                            590 	.area PSEG    (PAG,XDATA)
   0000                     591 _pdata_canary::
   0000                     592 	.ds 1
   0001                     593 _at_cmd::
   0001                     594 	.ds 17
   0012                     595 _at_cmd_len::
   0012                     596 	.ds 1
   0013                     597 _at_testmode::
   0013                     598 	.ds 1
   0014                     599 _at_plus_state:
   0014                     600 	.ds 1
   0015                     601 _at_plus_counter:
   0015                     602 	.ds 1
   0016                     603 _idx::
   0016                     604 	.ds 1
                            605 ;--------------------------------------------------------
                            606 ; external ram data
                            607 ;--------------------------------------------------------
                            608 	.area XSEG    (XDATA)
   00EC                     609 _at_ampersand_x_3_168:
   00EC                     610 	.ds 1
                            611 ;--------------------------------------------------------
                            612 ; absolute external ram data
                            613 ;--------------------------------------------------------
                            614 	.area XABS    (ABS,XDATA)
                            615 ;--------------------------------------------------------
                            616 ; external initialized ram data
                            617 ;--------------------------------------------------------
                            618 	.area XISEG   (XDATA)
                            619 	.area HOME    (CODE)
                            620 	.area GSINIT0 (CODE)
                            621 	.area GSINIT1 (CODE)
                            622 	.area GSINIT2 (CODE)
                            623 	.area GSINIT3 (CODE)
                            624 	.area GSINIT4 (CODE)
                            625 	.area GSINIT5 (CODE)
                            626 	.area GSINIT  (CODE)
                            627 	.area GSFINAL (CODE)
                            628 	.area CSEG    (CODE)
                            629 ;--------------------------------------------------------
                            630 ; global & static initialisations
                            631 ;--------------------------------------------------------
                            632 	.area HOME    (CODE)
                            633 	.area GSINIT  (CODE)
                            634 	.area GSFINAL (CODE)
                            635 	.area GSINIT  (CODE)
                            636 ;	radio/at.c:42: __pdata uint8_t pdata_canary = 0x41;
   04D2 78 00         [12]  637 	mov	r0,#_pdata_canary
   04D4 74 41         [12]  638 	mov	a,#0x41
   04D6 F2            [24]  639 	movx	@r0,a
                            640 ;	radio/at.c:133: static __pdata uint8_t	at_plus_counter = ATP_COUNT_1S;
   04D7 78 15         [12]  641 	mov	r0,#_at_plus_counter
   04D9 74 64         [12]  642 	mov	a,#0x64
   04DB F2            [24]  643 	movx	@r0,a
                            644 ;--------------------------------------------------------
                            645 ; Home
                            646 ;--------------------------------------------------------
                            647 	.area HOME    (CODE)
                            648 	.area HOME    (CODE)
                            649 ;--------------------------------------------------------
                            650 ; code
                            651 ;--------------------------------------------------------
                            652 	.area CSEG    (CODE)
                            653 ;------------------------------------------------------------
                            654 ;Allocation info for local variables in function 'at_input'
                            655 ;------------------------------------------------------------
                            656 ;c                         Allocated to registers r7 
                            657 ;------------------------------------------------------------
                            658 ;	radio/at.c:66: at_input(register uint8_t c)
                            659 ;	-----------------------------------------
                            660 ;	 function at_input
                            661 ;	-----------------------------------------
   04F9                     662 _at_input:
                     0007   663 	ar7 = 0x07
                     0006   664 	ar6 = 0x06
                     0005   665 	ar5 = 0x05
                     0004   666 	ar4 = 0x04
                     0003   667 	ar3 = 0x03
                     0002   668 	ar2 = 0x02
                     0001   669 	ar1 = 0x01
                     0000   670 	ar0 = 0x00
   04F9 AF 82         [24]  671 	mov	r7,dpl
                            672 ;	radio/at.c:69: switch (c) {
   04FB 8F 06         [24]  673 	mov	ar6,r7
   04FD BE 08 02      [24]  674 	cjne	r6,#0x08,00137$
   0500 80 1B         [24]  675 	sjmp	00103$
   0502                     676 00137$:
   0502 BE 0D 02      [24]  677 	cjne	r6,#0x0D,00138$
   0505 80 05         [24]  678 	sjmp	00101$
   0507                     679 00138$:
                            680 ;	radio/at.c:71: case '\r':
   0507 BE 7F 30      [24]  681 	cjne	r6,#0x7F,00106$
   050A 80 11         [24]  682 	sjmp	00103$
   050C                     683 00101$:
                            684 ;	radio/at.c:72: putchar('\n');
   050C 75 82 0A      [24]  685 	mov	dpl,#0x0A
   050F 12 44 D9      [24]  686 	lcall	_putchar
                            687 ;	radio/at.c:73: at_cmd[at_cmd_len] = 0;
   0512 78 12         [12]  688 	mov	r0,#_at_cmd_len
   0514 E2            [24]  689 	movx	a,@r0
   0515 24 01         [12]  690 	add	a,#_at_cmd
   0517 F8            [12]  691 	mov	r0,a
   0518 E4            [12]  692 	clr	a
   0519 F2            [24]  693 	movx	@r0,a
                            694 ;	radio/at.c:74: at_cmd_ready = true;
   051A D2 01         [12]  695 	setb	_at_cmd_ready
                            696 ;	radio/at.c:75: break;
                            697 ;	radio/at.c:80: case '\x7f':
   051C 22            [24]  698 	ret
   051D                     699 00103$:
                            700 ;	radio/at.c:81: if (at_cmd_len > 0) {
   051D 78 12         [12]  701 	mov	r0,#_at_cmd_len
   051F E2            [24]  702 	movx	a,@r0
   0520 60 64         [24]  703 	jz	00112$
                            704 ;	radio/at.c:82: putchar('\b');
   0522 75 82 08      [24]  705 	mov	dpl,#0x08
   0525 12 44 D9      [24]  706 	lcall	_putchar
                            707 ;	radio/at.c:83: putchar(' ');
   0528 75 82 20      [24]  708 	mov	dpl,#0x20
   052B 12 44 D9      [24]  709 	lcall	_putchar
                            710 ;	radio/at.c:84: putchar('\b');
   052E 75 82 08      [24]  711 	mov	dpl,#0x08
   0531 12 44 D9      [24]  712 	lcall	_putchar
                            713 ;	radio/at.c:85: at_cmd_len--;
   0534 78 12         [12]  714 	mov	r0,#_at_cmd_len
   0536 E2            [24]  715 	movx	a,@r0
   0537 14            [12]  716 	dec	a
   0538 F2            [24]  717 	movx	@r0,a
                            718 ;	radio/at.c:87: break;
                            719 ;	radio/at.c:90: default:
   0539 22            [24]  720 	ret
   053A                     721 00106$:
                            722 ;	radio/at.c:91: if (at_cmd_len < AT_CMD_MAXLEN) {
   053A 78 12         [12]  723 	mov	r0,#_at_cmd_len
   053C E2            [24]  724 	movx	a,@r0
   053D B4 10 00      [24]  725 	cjne	a,#0x10,00141$
   0540                     726 00141$:
   0540 50 3E         [24]  727 	jnc	00110$
                            728 ;	radio/at.c:92: if (isprint(c)) {
   0542 8F 82         [24]  729 	mov	dpl,r7
   0544 C0 07         [24]  730 	push	ar7
   0546 C0 06         [24]  731 	push	ar6
   0548 12 62 F9      [24]  732 	lcall	_isprint
   054B E5 82         [12]  733 	mov	a,dpl
   054D D0 06         [24]  734 	pop	ar6
   054F D0 07         [24]  735 	pop	ar7
   0551 60 33         [24]  736 	jz	00112$
                            737 ;	radio/at.c:93: c = toupper(c);
   0553 8F 82         [24]  738 	mov	dpl,r7
   0555 C0 07         [24]  739 	push	ar7
   0557 C0 06         [24]  740 	push	ar6
   0559 12 62 93      [24]  741 	lcall	_islower
   055C E5 82         [12]  742 	mov	a,dpl
   055E D0 06         [24]  743 	pop	ar6
   0560 D0 07         [24]  744 	pop	ar7
   0562 60 05         [24]  745 	jz	00114$
   0564 53 06 DF      [24]  746 	anl	ar6,#0xDF
   0567 80 02         [24]  747 	sjmp	00115$
   0569                     748 00114$:
   0569 8F 06         [24]  749 	mov	ar6,r7
   056B                     750 00115$:
   056B 8E 07         [24]  751 	mov	ar7,r6
                            752 ;	radio/at.c:94: at_cmd[at_cmd_len++] = c;
   056D 78 12         [12]  753 	mov	r0,#_at_cmd_len
   056F E2            [24]  754 	movx	a,@r0
   0570 FE            [12]  755 	mov	r6,a
   0571 78 12         [12]  756 	mov	r0,#_at_cmd_len
   0573 04            [12]  757 	inc	a
   0574 F2            [24]  758 	movx	@r0,a
   0575 EE            [12]  759 	mov	a,r6
   0576 24 01         [12]  760 	add	a,#_at_cmd
   0578 F8            [12]  761 	mov	r0,a
   0579 EF            [12]  762 	mov	a,r7
   057A F2            [24]  763 	movx	@r0,a
                            764 ;	radio/at.c:95: putchar(c);
   057B 8F 82         [24]  765 	mov	dpl,r7
                            766 ;	radio/at.c:97: break;
   057D 02 44 D9      [24]  767 	ljmp	_putchar
   0580                     768 00110$:
                            769 ;	radio/at.c:105: at_mode_active = 0;
   0580 C2 00         [12]  770 	clr	_at_mode_active
                            771 ;	radio/at.c:106: at_cmd_len = 0;
   0582 78 12         [12]  772 	mov	r0,#_at_cmd_len
   0584 E4            [12]  773 	clr	a
   0585 F2            [24]  774 	movx	@r0,a
                            775 ;	radio/at.c:108: }
   0586                     776 00112$:
   0586 22            [24]  777 	ret
                            778 ;------------------------------------------------------------
                            779 ;Allocation info for local variables in function 'at_plus_detector'
                            780 ;------------------------------------------------------------
                            781 ;c                         Allocated to registers r7 
                            782 ;------------------------------------------------------------
                            783 ;	radio/at.c:138: at_plus_detector(register uint8_t c)
                            784 ;	-----------------------------------------
                            785 ;	 function at_plus_detector
                            786 ;	-----------------------------------------
   0587                     787 _at_plus_detector:
   0587 AF 82         [24]  788 	mov	r7,dpl
                            789 ;	radio/at.c:144: if (c != (uint8_t)'+')
   0589 BF 2B 02      [24]  790 	cjne	r7,#0x2B,00118$
   058C 80 04         [24]  791 	sjmp	00102$
   058E                     792 00118$:
                            793 ;	radio/at.c:145: at_plus_state = ATP_WAIT_FOR_IDLE;
   058E 78 14         [12]  794 	mov	r0,#_at_plus_state
   0590 E4            [12]  795 	clr	a
   0591 F2            [24]  796 	movx	@r0,a
   0592                     797 00102$:
                            798 ;	radio/at.c:149: switch (at_plus_state) {
   0592 78 14         [12]  799 	mov	r0,#_at_plus_state
   0594 C3            [12]  800 	clr	c
   0595 E2            [24]  801 	movx	a,@r0
   0596 F5 F0         [12]  802 	mov	b,a
   0598 74 04         [12]  803 	mov	a,#0x04
   059A 95 F0         [12]  804 	subb	a,b
   059C 40 2C         [24]  805 	jc	00106$
   059E 78 14         [12]  806 	mov	r0,#_at_plus_state
   05A0 E2            [24]  807 	movx	a,@r0
   05A1 75 F0 03      [24]  808 	mov	b,#0x03
   05A4 A4            [48]  809 	mul	ab
   05A5 90 05 A9      [24]  810 	mov	dptr,#00120$
   05A8 73            [24]  811 	jmp	@a+dptr
   05A9                     812 00120$:
   05A9 02 05 CE      [24]  813 	ljmp	00107$
   05AC 02 05 B8      [24]  814 	ljmp	00103$
   05AF 02 05 B8      [24]  815 	ljmp	00104$
   05B2 02 05 BF      [24]  816 	ljmp	00105$
   05B5 02 05 CE      [24]  817 	ljmp	00108$
                            818 ;	radio/at.c:151: case ATP_WAIT_FOR_PLUS1:
   05B8                     819 00103$:
                            820 ;	radio/at.c:152: case ATP_WAIT_FOR_PLUS2:
   05B8                     821 00104$:
                            822 ;	radio/at.c:153: at_plus_state++;
   05B8 78 14         [12]  823 	mov	r0,#_at_plus_state
   05BA E2            [24]  824 	movx	a,@r0
   05BB 24 01         [12]  825 	add	a,#0x01
   05BD F2            [24]  826 	movx	@r0,a
                            827 ;	radio/at.c:154: break;
                            828 ;	radio/at.c:156: case ATP_WAIT_FOR_PLUS3:
   05BE 22            [24]  829 	ret
   05BF                     830 00105$:
                            831 ;	radio/at.c:157: at_plus_state = ATP_WAIT_FOR_ENABLE;
   05BF 78 14         [12]  832 	mov	r0,#_at_plus_state
   05C1 74 04         [12]  833 	mov	a,#0x04
   05C3 F2            [24]  834 	movx	@r0,a
                            835 ;	radio/at.c:158: at_plus_counter = ATP_COUNT_1S;
   05C4 78 15         [12]  836 	mov	r0,#_at_plus_counter
   05C6 74 64         [12]  837 	mov	a,#0x64
   05C8 F2            [24]  838 	movx	@r0,a
                            839 ;	radio/at.c:159: break;
                            840 ;	radio/at.c:161: default:
   05C9 22            [24]  841 	ret
   05CA                     842 00106$:
                            843 ;	radio/at.c:162: at_plus_state = ATP_WAIT_FOR_IDLE;
   05CA 78 14         [12]  844 	mov	r0,#_at_plus_state
   05CC E4            [12]  845 	clr	a
   05CD F2            [24]  846 	movx	@r0,a
                            847 ;	radio/at.c:164: case ATP_WAIT_FOR_IDLE:
   05CE                     848 00107$:
                            849 ;	radio/at.c:165: case ATP_WAIT_FOR_ENABLE:
   05CE                     850 00108$:
                            851 ;	radio/at.c:166: at_plus_counter = ATP_COUNT_1S;
   05CE 78 15         [12]  852 	mov	r0,#_at_plus_counter
   05D0 74 64         [12]  853 	mov	a,#0x64
   05D2 F2            [24]  854 	movx	@r0,a
                            855 ;	radio/at.c:168: }
   05D3 22            [24]  856 	ret
                            857 ;------------------------------------------------------------
                            858 ;Allocation info for local variables in function 'at_timer'
                            859 ;------------------------------------------------------------
                            860 ;	radio/at.c:175: at_timer(void)
                            861 ;	-----------------------------------------
                            862 ;	 function at_timer
                            863 ;	-----------------------------------------
   05D4                     864 _at_timer:
                            865 ;	radio/at.c:178: if (at_plus_counter > 0) {
   05D4 78 15         [12]  866 	mov	r0,#_at_plus_counter
   05D6 E2            [24]  867 	movx	a,@r0
   05D7 60 38         [24]  868 	jz	00109$
                            869 ;	radio/at.c:181: if (--at_plus_counter == 0) {
   05D9 78 15         [12]  870 	mov	r0,#_at_plus_counter
   05DB E2            [24]  871 	movx	a,@r0
   05DC 14            [12]  872 	dec	a
   05DD F2            [24]  873 	movx	@r0,a
   05DE 78 15         [12]  874 	mov	r0,#_at_plus_counter
   05E0 E2            [24]  875 	movx	a,@r0
   05E1 70 2E         [24]  876 	jnz	00109$
                            877 ;	radio/at.c:184: switch (at_plus_state) {
   05E3 78 14         [12]  878 	mov	r0,#_at_plus_state
   05E5 E2            [24]  879 	movx	a,@r0
   05E6 60 08         [24]  880 	jz	00101$
   05E8 78 14         [12]  881 	mov	r0,#_at_plus_state
   05EA E2            [24]  882 	movx	a,@r0
                            883 ;	radio/at.c:185: case ATP_WAIT_FOR_IDLE:
   05EB B4 04 23      [24]  884 	cjne	a,#0x04,00109$
   05EE 80 06         [24]  885 	sjmp	00102$
   05F0                     886 00101$:
                            887 ;	radio/at.c:186: at_plus_state = ATP_WAIT_FOR_PLUS1;
   05F0 78 14         [12]  888 	mov	r0,#_at_plus_state
   05F2 74 01         [12]  889 	mov	a,#0x01
   05F4 F2            [24]  890 	movx	@r0,a
                            891 ;	radio/at.c:187: break;
                            892 ;	radio/at.c:189: case ATP_WAIT_FOR_ENABLE:
   05F5 22            [24]  893 	ret
   05F6                     894 00102$:
                            895 ;	radio/at.c:190: at_mode_active = true;
   05F6 D2 00         [12]  896 	setb	_at_mode_active
                            897 ;	radio/at.c:191: at_plus_state = ATP_WAIT_FOR_IDLE;
   05F8 78 14         [12]  898 	mov	r0,#_at_plus_state
   05FA E4            [12]  899 	clr	a
   05FB F2            [24]  900 	movx	@r0,a
                            901 ;	radio/at.c:194: at_cmd[0] = 'A';
   05FC 78 01         [12]  902 	mov	r0,#_at_cmd
   05FE 74 41         [12]  903 	mov	a,#0x41
   0600 F2            [24]  904 	movx	@r0,a
                            905 ;	radio/at.c:195: at_cmd[1] = 'T';
   0601 78 02         [12]  906 	mov	r0,#(_at_cmd + 0x0001)
   0603 74 54         [12]  907 	mov	a,#0x54
   0605 F2            [24]  908 	movx	@r0,a
                            909 ;	radio/at.c:196: at_cmd[2] = '\0';
   0606 78 03         [12]  910 	mov	r0,#(_at_cmd + 0x0002)
   0608 E4            [12]  911 	clr	a
   0609 F2            [24]  912 	movx	@r0,a
                            913 ;	radio/at.c:197: at_cmd_len = 2;
   060A 78 12         [12]  914 	mov	r0,#_at_cmd_len
   060C 74 02         [12]  915 	mov	a,#0x02
   060E F2            [24]  916 	movx	@r0,a
                            917 ;	radio/at.c:198: at_cmd_ready = true;
   060F D2 01         [12]  918 	setb	_at_cmd_ready
                            919 ;	radio/at.c:202: }
   0611                     920 00109$:
   0611 22            [24]  921 	ret
                            922 ;------------------------------------------------------------
                            923 ;Allocation info for local variables in function 'at_command'
                            924 ;------------------------------------------------------------
                            925 ;	radio/at.c:209: at_command(void)
                            926 ;	-----------------------------------------
                            927 ;	 function at_command
                            928 ;	-----------------------------------------
   0612                     929 _at_command:
                            930 ;	radio/at.c:212: if (at_cmd_ready) {
   0612 20 01 01      [24]  931 	jb	_at_cmd_ready,00170$
   0615 22            [24]  932 	ret
   0616                     933 00170$:
                            934 ;	radio/at.c:213: if ((at_cmd_len >= 2) && (at_cmd[0] == 'R') && (at_cmd[1] == 'T')) {
   0616 78 12         [12]  935 	mov	r0,#_at_cmd_len
   0618 E2            [24]  936 	movx	a,@r0
   0619 B4 02 00      [24]  937 	cjne	a,#0x02,00171$
   061C                     938 00171$:
   061C E4            [12]  939 	clr	a
   061D 33            [12]  940 	rlc	a
   061E FF            [12]  941 	mov	r7,a
   061F 70 18         [24]  942 	jnz	00102$
   0621 78 01         [12]  943 	mov	r0,#_at_cmd
   0623 E2            [24]  944 	movx	a,@r0
   0624 FE            [12]  945 	mov	r6,a
   0625 BE 52 11      [24]  946 	cjne	r6,#0x52,00102$
   0628 78 02         [12]  947 	mov	r0,#(_at_cmd + 0x0001)
   062A E2            [24]  948 	movx	a,@r0
   062B FE            [12]  949 	mov	r6,a
   062C BE 54 0A      [24]  950 	cjne	r6,#0x54,00102$
                            951 ;	radio/at.c:216: tdm_remote_at();
   062F 12 4C 66      [24]  952 	lcall	_tdm_remote_at
                            953 ;	radio/at.c:217: at_cmd_len = 0;
   0632 78 12         [12]  954 	mov	r0,#_at_cmd_len
   0634 E4            [12]  955 	clr	a
   0635 F2            [24]  956 	movx	@r0,a
                            957 ;	radio/at.c:218: at_cmd_ready = false;
   0636 C2 01         [12]  958 	clr	_at_cmd_ready
                            959 ;	radio/at.c:219: return;
   0638 22            [24]  960 	ret
   0639                     961 00102$:
                            962 ;	radio/at.c:222: if ((at_cmd_len >= 2) && (at_cmd[0] == 'A') && (at_cmd[1] == 'T')) {
   0639 EF            [12]  963 	mov	a,r7
   063A 70 5C         [24]  964 	jnz	00116$
   063C 78 01         [12]  965 	mov	r0,#_at_cmd
   063E E2            [24]  966 	movx	a,@r0
   063F FF            [12]  967 	mov	r7,a
   0640 BF 41 55      [24]  968 	cjne	r7,#0x41,00116$
   0643 78 02         [12]  969 	mov	r0,#(_at_cmd + 0x0001)
   0645 E2            [24]  970 	movx	a,@r0
   0646 FF            [12]  971 	mov	r7,a
   0647 BF 54 4E      [24]  972 	cjne	r7,#0x54,00116$
                            973 ;	radio/at.c:225: switch (at_cmd[2]) {
   064A 78 03         [12]  974 	mov	r0,#(_at_cmd + 0x0002)
   064C E2            [24]  975 	movx	a,@r0
   064D FF            [12]  976 	mov	r7,a
   064E 60 1E         [24]  977 	jz	00105$
   0650 BF 26 02      [24]  978 	cjne	r7,#0x26,00183$
   0653 80 1E         [24]  979 	sjmp	00106$
   0655                     980 00183$:
   0655 BF 2B 02      [24]  981 	cjne	r7,#0x2B,00184$
   0658 80 1E         [24]  982 	sjmp	00107$
   065A                     983 00184$:
   065A BF 49 02      [24]  984 	cjne	r7,#0x49,00185$
   065D 80 1E         [24]  985 	sjmp	00108$
   065F                     986 00185$:
   065F BF 4F 02      [24]  987 	cjne	r7,#0x4F,00186$
   0662 80 1E         [24]  988 	sjmp	00109$
   0664                     989 00186$:
   0664 BF 53 02      [24]  990 	cjne	r7,#0x53,00187$
   0667 80 22         [24]  991 	sjmp	00110$
   0669                     992 00187$:
                            993 ;	radio/at.c:226: case '\0':		// no command -> OK
   0669 BF 5A 29      [24]  994 	cjne	r7,#0x5A,00113$
   066C 80 22         [24]  995 	sjmp	00111$
   066E                     996 00105$:
                            997 ;	radio/at.c:227: at_ok();
   066E 12 06 9F      [24]  998 	lcall	_at_ok
                            999 ;	radio/at.c:228: break;
                           1000 ;	radio/at.c:229: case '&':
   0671 80 25         [24] 1001 	sjmp	00116$
   0673                    1002 00106$:
                           1003 ;	radio/at.c:230: at_ampersand();
   0673 12 09 50      [24] 1004 	lcall	_at_ampersand
                           1005 ;	radio/at.c:231: break;
                           1006 ;	radio/at.c:232: case '+':
   0676 80 20         [24] 1007 	sjmp	00116$
   0678                    1008 00107$:
                           1009 ;	radio/at.c:233: at_plus();
   0678 12 0A 27      [24] 1010 	lcall	_at_plus
                           1011 ;	radio/at.c:234: break;
                           1012 ;	radio/at.c:235: case 'I':
   067B 80 1B         [24] 1013 	sjmp	00116$
   067D                    1014 00108$:
                           1015 ;	radio/at.c:236: at_i();
   067D 12 07 93      [24] 1016 	lcall	_at_i
                           1017 ;	radio/at.c:237: break;
                           1018 ;	radio/at.c:238: case 'O':		// O -> go online (exit command mode)
   0680 80 16         [24] 1019 	sjmp	00116$
   0682                    1020 00109$:
                           1021 ;	radio/at.c:239: at_plus_counter = ATP_COUNT_1S;
   0682 78 15         [12] 1022 	mov	r0,#_at_plus_counter
   0684 74 64         [12] 1023 	mov	a,#0x64
   0686 F2            [24] 1024 	movx	@r0,a
                           1025 ;	radio/at.c:240: at_mode_active = 0;
   0687 C2 00         [12] 1026 	clr	_at_mode_active
                           1027 ;	radio/at.c:241: break;
                           1028 ;	radio/at.c:242: case 'S':
   0689 80 0D         [24] 1029 	sjmp	00116$
   068B                    1030 00110$:
                           1031 ;	radio/at.c:243: at_s();
   068B 12 08 CE      [24] 1032 	lcall	_at_s
                           1033 ;	radio/at.c:244: break;
                           1034 ;	radio/at.c:246: case 'Z':
   068E 80 08         [24] 1035 	sjmp	00116$
   0690                    1036 00111$:
                           1037 ;	radio/at.c:248: RSTSRC |= (1 << 4);
   0690 43 EF 10      [24] 1038 	orl	_RSTSRC,#0x10
   0693                    1039 00122$:
                           1040 ;	radio/at.c:252: default:
   0693 80 FE         [24] 1041 	sjmp	00122$
   0695                    1042 00113$:
                           1043 ;	radio/at.c:253: at_error();
   0695 12 06 C1      [24] 1044 	lcall	_at_error
                           1045 ;	radio/at.c:254: }
   0698                    1046 00116$:
                           1047 ;	radio/at.c:258: at_cmd_len = 0;
   0698 78 12         [12] 1048 	mov	r0,#_at_cmd_len
   069A E4            [12] 1049 	clr	a
   069B F2            [24] 1050 	movx	@r0,a
                           1051 ;	radio/at.c:259: at_cmd_ready = false;
   069C C2 01         [12] 1052 	clr	_at_cmd_ready
   069E 22            [24] 1053 	ret
                           1054 ;------------------------------------------------------------
                           1055 ;Allocation info for local variables in function 'at_ok'
                           1056 ;------------------------------------------------------------
                           1057 ;	radio/at.c:264: at_ok(void)
                           1058 ;	-----------------------------------------
                           1059 ;	 function at_ok
                           1060 ;	-----------------------------------------
   069F                    1061 _at_ok:
                           1062 ;	radio/at.c:266: printf("%s\n", "OK");
   069F 74 E8         [12] 1063 	mov	a,#__str_1
   06A1 C0 E0         [24] 1064 	push	acc
   06A3 74 65         [12] 1065 	mov	a,#(__str_1 >> 8)
   06A5 C0 E0         [24] 1066 	push	acc
   06A7 74 80         [12] 1067 	mov	a,#0x80
   06A9 C0 E0         [24] 1068 	push	acc
   06AB 74 E4         [12] 1069 	mov	a,#__str_0
   06AD C0 E0         [24] 1070 	push	acc
   06AF 74 65         [12] 1071 	mov	a,#(__str_0 >> 8)
   06B1 C0 E0         [24] 1072 	push	acc
   06B3 74 80         [12] 1073 	mov	a,#0x80
   06B5 C0 E0         [24] 1074 	push	acc
   06B7 12 2D B6      [24] 1075 	lcall	_printfl
   06BA E5 81         [12] 1076 	mov	a,sp
   06BC 24 FA         [12] 1077 	add	a,#0xfa
   06BE F5 81         [12] 1078 	mov	sp,a
   06C0 22            [24] 1079 	ret
                           1080 ;------------------------------------------------------------
                           1081 ;Allocation info for local variables in function 'at_error'
                           1082 ;------------------------------------------------------------
                           1083 ;	radio/at.c:270: at_error(void)
                           1084 ;	-----------------------------------------
                           1085 ;	 function at_error
                           1086 ;	-----------------------------------------
   06C1                    1087 _at_error:
                           1088 ;	radio/at.c:272: printf("%s\n", "ERROR");
   06C1 74 EB         [12] 1089 	mov	a,#__str_2
   06C3 C0 E0         [24] 1090 	push	acc
   06C5 74 65         [12] 1091 	mov	a,#(__str_2 >> 8)
   06C7 C0 E0         [24] 1092 	push	acc
   06C9 74 80         [12] 1093 	mov	a,#0x80
   06CB C0 E0         [24] 1094 	push	acc
   06CD 74 E4         [12] 1095 	mov	a,#__str_0
   06CF C0 E0         [24] 1096 	push	acc
   06D1 74 65         [12] 1097 	mov	a,#(__str_0 >> 8)
   06D3 C0 E0         [24] 1098 	push	acc
   06D5 74 80         [12] 1099 	mov	a,#0x80
   06D7 C0 E0         [24] 1100 	push	acc
   06D9 12 2D B6      [24] 1101 	lcall	_printfl
   06DC E5 81         [12] 1102 	mov	a,sp
   06DE 24 FA         [12] 1103 	add	a,#0xfa
   06E0 F5 81         [12] 1104 	mov	sp,a
   06E2 22            [24] 1105 	ret
                           1106 ;------------------------------------------------------------
                           1107 ;Allocation info for local variables in function 'at_parse_number'
                           1108 ;------------------------------------------------------------
                           1109 ;reg                       Allocated to registers r4 r5 r6 r7 
                           1110 ;c                         Allocated to registers r3 
                           1111 ;sloc0                     Allocated to stack - sp +2
                           1112 ;sloc1                     Allocated to stack - sp -3
                           1113 ;------------------------------------------------------------
                           1114 ;	radio/at.c:278: at_parse_number() __reentrant
                           1115 ;	-----------------------------------------
                           1116 ;	 function at_parse_number
                           1117 ;	-----------------------------------------
   06E3                    1118 _at_parse_number:
   06E3 E5 81         [12] 1119 	mov	a,sp
   06E5 24 04         [12] 1120 	add	a,#0x04
   06E7 F5 81         [12] 1121 	mov	sp,a
                           1122 ;	radio/at.c:283: reg = 0;
   06E9 7C 00         [12] 1123 	mov	r4,#0x00
   06EB 7D 00         [12] 1124 	mov	r5,#0x00
   06ED 7E 00         [12] 1125 	mov	r6,#0x00
   06EF 7F 00         [12] 1126 	mov	r7,#0x00
   06F1                    1127 00104$:
                           1128 ;	radio/at.c:285: c = at_cmd[idx];
   06F1 78 16         [12] 1129 	mov	r0,#_idx
   06F3 E2            [24] 1130 	movx	a,@r0
   06F4 24 01         [12] 1131 	add	a,#_at_cmd
   06F6 F9            [12] 1132 	mov	r1,a
   06F7 E3            [24] 1133 	movx	a,@r1
                           1134 ;	radio/at.c:286: if (!isdigit(c))
   06F8 FB            [12] 1135 	mov	r3,a
   06F9 F5 82         [12] 1136 	mov	dpl,a
   06FB C0 07         [24] 1137 	push	ar7
   06FD C0 06         [24] 1138 	push	ar6
   06FF C0 05         [24] 1139 	push	ar5
   0701 C0 04         [24] 1140 	push	ar4
   0703 C0 03         [24] 1141 	push	ar3
   0705 12 5E 10      [24] 1142 	lcall	_isdigit
   0708 E5 82         [12] 1143 	mov	a,dpl
   070A D0 03         [24] 1144 	pop	ar3
   070C D0 04         [24] 1145 	pop	ar4
   070E D0 05         [24] 1146 	pop	ar5
   0710 D0 06         [24] 1147 	pop	ar6
   0712 D0 07         [24] 1148 	pop	ar7
   0714 60 6D         [24] 1149 	jz	00103$
                           1150 ;	radio/at.c:288: reg = (reg * 10) + (c - '0');
   0716 90 05 D7      [24] 1151 	mov	dptr,#__mullong_PARM_2
   0719 EC            [12] 1152 	mov	a,r4
   071A F0            [24] 1153 	movx	@dptr,a
   071B ED            [12] 1154 	mov	a,r5
   071C A3            [24] 1155 	inc	dptr
   071D F0            [24] 1156 	movx	@dptr,a
   071E EE            [12] 1157 	mov	a,r6
   071F A3            [24] 1158 	inc	dptr
   0720 F0            [24] 1159 	movx	@dptr,a
   0721 EF            [12] 1160 	mov	a,r7
   0722 A3            [24] 1161 	inc	dptr
   0723 F0            [24] 1162 	movx	@dptr,a
   0724 90 00 0A      [24] 1163 	mov	dptr,#(0x0A&0x00ff)
   0727 E4            [12] 1164 	clr	a
   0728 F5 F0         [12] 1165 	mov	b,a
   072A C0 03         [24] 1166 	push	ar3
   072C 12 5F 91      [24] 1167 	lcall	__mullong
   072F AF 82         [24] 1168 	mov	r7,dpl
   0731 AE 83         [24] 1169 	mov	r6,dph
   0733 AD F0         [24] 1170 	mov	r5,b
   0735 FC            [12] 1171 	mov	r4,a
   0736 D0 03         [24] 1172 	pop	ar3
   0738 8B 02         [24] 1173 	mov	ar2,r3
   073A 7B 00         [12] 1174 	mov	r3,#0x00
   073C EA            [12] 1175 	mov	a,r2
   073D 24 D0         [12] 1176 	add	a,#0xD0
   073F FA            [12] 1177 	mov	r2,a
   0740 EB            [12] 1178 	mov	a,r3
   0741 34 FF         [12] 1179 	addc	a,#0xFF
   0743 FB            [12] 1180 	mov	r3,a
   0744 E5 81         [12] 1181 	mov	a,sp
   0746 24 FD         [12] 1182 	add	a,#0xfd
   0748 F8            [12] 1183 	mov	r0,a
   0749 A6 02         [24] 1184 	mov	@r0,ar2
   074B 08            [12] 1185 	inc	r0
   074C A6 03         [24] 1186 	mov	@r0,ar3
   074E EB            [12] 1187 	mov	a,r3
   074F 33            [12] 1188 	rlc	a
   0750 95 E0         [12] 1189 	subb	a,acc
   0752 08            [12] 1190 	inc	r0
   0753 F6            [12] 1191 	mov	@r0,a
   0754 08            [12] 1192 	inc	r0
   0755 F6            [12] 1193 	mov	@r0,a
   0756 E5 81         [12] 1194 	mov	a,sp
   0758 24 FD         [12] 1195 	add	a,#0xfd
   075A F8            [12] 1196 	mov	r0,a
   075B E6            [12] 1197 	mov	a,@r0
   075C 2F            [12] 1198 	add	a,r7
   075D F6            [12] 1199 	mov	@r0,a
   075E 08            [12] 1200 	inc	r0
   075F E6            [12] 1201 	mov	a,@r0
   0760 3E            [12] 1202 	addc	a,r6
   0761 F6            [12] 1203 	mov	@r0,a
   0762 08            [12] 1204 	inc	r0
   0763 E6            [12] 1205 	mov	a,@r0
   0764 3D            [12] 1206 	addc	a,r5
   0765 F6            [12] 1207 	mov	@r0,a
   0766 08            [12] 1208 	inc	r0
   0767 E6            [12] 1209 	mov	a,@r0
   0768 3C            [12] 1210 	addc	a,r4
   0769 F6            [12] 1211 	mov	@r0,a
   076A E5 81         [12] 1212 	mov	a,sp
   076C 24 FD         [12] 1213 	add	a,#0xfd
   076E F8            [12] 1214 	mov	r0,a
   076F 86 04         [24] 1215 	mov	ar4,@r0
   0771 08            [12] 1216 	inc	r0
   0772 86 05         [24] 1217 	mov	ar5,@r0
   0774 08            [12] 1218 	inc	r0
   0775 86 06         [24] 1219 	mov	ar6,@r0
   0777 08            [12] 1220 	inc	r0
   0778 86 07         [24] 1221 	mov	ar7,@r0
                           1222 ;	radio/at.c:289: idx++;
   077A 78 16         [12] 1223 	mov	r0,#_idx
   077C E2            [24] 1224 	movx	a,@r0
   077D 24 01         [12] 1225 	add	a,#0x01
   077F F2            [24] 1226 	movx	@r0,a
   0780 02 06 F1      [24] 1227 	ljmp	00104$
   0783                    1228 00103$:
                           1229 ;	radio/at.c:291: return reg;
   0783 8C 82         [24] 1230 	mov	dpl,r4
   0785 8D 83         [24] 1231 	mov	dph,r5
   0787 8E F0         [24] 1232 	mov	b,r6
   0789 EF            [12] 1233 	mov	a,r7
   078A C8            [12] 1234 	xch	a,r0
   078B E5 81         [12] 1235 	mov	a,sp
   078D 24 FC         [12] 1236 	add	a,#0xFC
   078F F5 81         [12] 1237 	mov	sp,a
   0791 C8            [12] 1238 	xch	a,r0
   0792 22            [24] 1239 	ret
                           1240 ;------------------------------------------------------------
                           1241 ;Allocation info for local variables in function 'at_i'
                           1242 ;------------------------------------------------------------
                           1243 ;sloc0                     Allocated with name '_at_i_sloc0_1_0'
                           1244 ;id                        Allocated with name '_at_i_id_3_157'
                           1245 ;------------------------------------------------------------
                           1246 ;	radio/at.c:295: at_i(void)
                           1247 ;	-----------------------------------------
                           1248 ;	 function at_i
                           1249 ;	-----------------------------------------
   0793                    1250 _at_i:
                           1251 ;	radio/at.c:297: switch (at_cmd[3]) {
   0793 78 04         [12] 1252 	mov	r0,#(_at_cmd + 0x0003)
   0795 E2            [24] 1253 	movx	a,@r0
   0796 FF            [12] 1254 	mov	r7,a
   0797 60 30         [24] 1255 	jz	00102$
   0799 BF 30 02      [24] 1256 	cjne	r7,#0x30,00152$
   079C 80 2B         [24] 1257 	sjmp	00102$
   079E                    1258 00152$:
   079E BF 31 02      [24] 1259 	cjne	r7,#0x31,00153$
   07A1 80 48         [24] 1260 	sjmp	00103$
   07A3                    1261 00153$:
   07A3 BF 32 02      [24] 1262 	cjne	r7,#0x32,00154$
   07A6 80 65         [24] 1263 	sjmp	00104$
   07A8                    1264 00154$:
   07A8 BF 33 03      [24] 1265 	cjne	r7,#0x33,00155$
   07AB 02 08 2A      [24] 1266 	ljmp	00105$
   07AE                    1267 00155$:
   07AE BF 34 03      [24] 1268 	cjne	r7,#0x34,00156$
   07B1 02 08 4A      [24] 1269 	ljmp	00106$
   07B4                    1270 00156$:
   07B4 BF 35 03      [24] 1271 	cjne	r7,#0x35,00157$
   07B7 02 08 6A      [24] 1272 	ljmp	00126$
   07BA                    1273 00157$:
   07BA BF 36 03      [24] 1274 	cjne	r7,#0x36,00158$
   07BD 02 08 C5      [24] 1275 	ljmp	00109$
   07C0                    1276 00158$:
   07C0 BF 37 03      [24] 1277 	cjne	r7,#0x37,00159$
   07C3 02 08 C8      [24] 1278 	ljmp	00110$
   07C6                    1279 00159$:
   07C6 02 08 CB      [24] 1280 	ljmp	00111$
                           1281 ;	radio/at.c:299: case '0':
   07C9                    1282 00102$:
                           1283 ;	radio/at.c:300: printf("%s\n", g_banner_string);
   07C9 74 49         [12] 1284 	mov	a,#_g_banner_string
   07CB C0 E0         [24] 1285 	push	acc
   07CD 74 C8         [12] 1286 	mov	a,#(_g_banner_string >> 8)
   07CF C0 E0         [24] 1287 	push	acc
   07D1 74 80         [12] 1288 	mov	a,#0x80
   07D3 C0 E0         [24] 1289 	push	acc
   07D5 74 E4         [12] 1290 	mov	a,#__str_0
   07D7 C0 E0         [24] 1291 	push	acc
   07D9 74 65         [12] 1292 	mov	a,#(__str_0 >> 8)
   07DB C0 E0         [24] 1293 	push	acc
   07DD 74 80         [12] 1294 	mov	a,#0x80
   07DF C0 E0         [24] 1295 	push	acc
   07E1 12 2D B6      [24] 1296 	lcall	_printfl
   07E4 E5 81         [12] 1297 	mov	a,sp
   07E6 24 FA         [12] 1298 	add	a,#0xfa
   07E8 F5 81         [12] 1299 	mov	sp,a
                           1300 ;	radio/at.c:301: return;
   07EA 22            [24] 1301 	ret
                           1302 ;	radio/at.c:302: case '1':
   07EB                    1303 00103$:
                           1304 ;	radio/at.c:303: printf("%s\n", g_version_string);
   07EB 74 5B         [12] 1305 	mov	a,#_g_version_string
   07ED C0 E0         [24] 1306 	push	acc
   07EF 74 C8         [12] 1307 	mov	a,#(_g_version_string >> 8)
   07F1 C0 E0         [24] 1308 	push	acc
   07F3 74 80         [12] 1309 	mov	a,#0x80
   07F5 C0 E0         [24] 1310 	push	acc
   07F7 74 E4         [12] 1311 	mov	a,#__str_0
   07F9 C0 E0         [24] 1312 	push	acc
   07FB 74 65         [12] 1313 	mov	a,#(__str_0 >> 8)
   07FD C0 E0         [24] 1314 	push	acc
   07FF 74 80         [12] 1315 	mov	a,#0x80
   0801 C0 E0         [24] 1316 	push	acc
   0803 12 2D B6      [24] 1317 	lcall	_printfl
   0806 E5 81         [12] 1318 	mov	a,sp
   0808 24 FA         [12] 1319 	add	a,#0xfa
   080A F5 81         [12] 1320 	mov	sp,a
                           1321 ;	radio/at.c:304: return;
   080C 22            [24] 1322 	ret
                           1323 ;	radio/at.c:305: case '2':
   080D                    1324 00104$:
                           1325 ;	radio/at.c:306: printf("%u\n", BOARD_ID);
   080D 74 4E         [12] 1326 	mov	a,#0x4E
   080F C0 E0         [24] 1327 	push	acc
   0811 E4            [12] 1328 	clr	a
   0812 C0 E0         [24] 1329 	push	acc
   0814 74 F1         [12] 1330 	mov	a,#__str_3
   0816 C0 E0         [24] 1331 	push	acc
   0818 74 65         [12] 1332 	mov	a,#(__str_3 >> 8)
   081A C0 E0         [24] 1333 	push	acc
   081C 74 80         [12] 1334 	mov	a,#0x80
   081E C0 E0         [24] 1335 	push	acc
   0820 12 2D B6      [24] 1336 	lcall	_printfl
   0823 E5 81         [12] 1337 	mov	a,sp
   0825 24 FB         [12] 1338 	add	a,#0xfb
   0827 F5 81         [12] 1339 	mov	sp,a
                           1340 ;	radio/at.c:307: break;
   0829 22            [24] 1341 	ret
                           1342 ;	radio/at.c:308: case '3':
   082A                    1343 00105$:
                           1344 ;	radio/at.c:309: printf("%u\n", g_board_frequency);
   082A 78 32         [12] 1345 	mov	r0,#_g_board_frequency
   082C E2            [24] 1346 	movx	a,@r0
   082D FE            [12] 1347 	mov	r6,a
   082E 7F 00         [12] 1348 	mov	r7,#0x00
   0830 C0 06         [24] 1349 	push	ar6
   0832 C0 07         [24] 1350 	push	ar7
   0834 74 F1         [12] 1351 	mov	a,#__str_3
   0836 C0 E0         [24] 1352 	push	acc
   0838 74 65         [12] 1353 	mov	a,#(__str_3 >> 8)
   083A C0 E0         [24] 1354 	push	acc
   083C 74 80         [12] 1355 	mov	a,#0x80
   083E C0 E0         [24] 1356 	push	acc
   0840 12 2D B6      [24] 1357 	lcall	_printfl
   0843 E5 81         [12] 1358 	mov	a,sp
   0845 24 FB         [12] 1359 	add	a,#0xfb
   0847 F5 81         [12] 1360 	mov	sp,a
                           1361 ;	radio/at.c:310: break;
   0849 22            [24] 1362 	ret
                           1363 ;	radio/at.c:311: case '4':
   084A                    1364 00106$:
                           1365 ;	radio/at.c:312: printf("%u\n", g_board_bl_version);
   084A 78 33         [12] 1366 	mov	r0,#_g_board_bl_version
   084C E2            [24] 1367 	movx	a,@r0
   084D FE            [12] 1368 	mov	r6,a
   084E 7F 00         [12] 1369 	mov	r7,#0x00
   0850 C0 06         [24] 1370 	push	ar6
   0852 C0 07         [24] 1371 	push	ar7
   0854 74 F1         [12] 1372 	mov	a,#__str_3
   0856 C0 E0         [24] 1373 	push	acc
   0858 74 65         [12] 1374 	mov	a,#(__str_3 >> 8)
   085A C0 E0         [24] 1375 	push	acc
   085C 74 80         [12] 1376 	mov	a,#0x80
   085E C0 E0         [24] 1377 	push	acc
   0860 12 2D B6      [24] 1378 	lcall	_printfl
   0863 E5 81         [12] 1379 	mov	a,sp
   0865 24 FB         [12] 1380 	add	a,#0xfb
   0867 F5 81         [12] 1381 	mov	sp,a
                           1382 ;	radio/at.c:313: return;
                           1383 ;	radio/at.c:317: for (id = 0; id < PARAM_MAX; id++) {
   0869 22            [24] 1384 	ret
   086A                    1385 00126$:
   086A 7F 00         [12] 1386 	mov	r7,#0x00
   086C                    1387 00113$:
                           1388 ;	radio/at.c:318: printf("S%u: %s=%lu\n", 
   086C 8F 82         [24] 1389 	mov	dpl,r7
   086E C0 07         [24] 1390 	push	ar7
   0870 12 27 64      [24] 1391 	lcall	_param_get
   0873 85 82 08      [24] 1392 	mov	_at_i_sloc0_1_0,dpl
   0876 85 83 09      [24] 1393 	mov	(_at_i_sloc0_1_0 + 1),dph
   0879 85 F0 0A      [24] 1394 	mov	(_at_i_sloc0_1_0 + 2),b
   087C F5 0B         [12] 1395 	mov	(_at_i_sloc0_1_0 + 3),a
   087E D0 07         [24] 1396 	pop	ar7
   0880 8F 82         [24] 1397 	mov	dpl,r7
   0882 C0 07         [24] 1398 	push	ar7
   0884 12 2A 43      [24] 1399 	lcall	_param_name
   0887 AA 82         [24] 1400 	mov	r2,dpl
   0889 AD 83         [24] 1401 	mov	r5,dph
   088B AE F0         [24] 1402 	mov	r6,b
   088D D0 07         [24] 1403 	pop	ar7
   088F 8F 03         [24] 1404 	mov	ar3,r7
   0891 7C 00         [12] 1405 	mov	r4,#0x00
   0893 C0 07         [24] 1406 	push	ar7
   0895 C0 08         [24] 1407 	push	_at_i_sloc0_1_0
   0897 C0 09         [24] 1408 	push	(_at_i_sloc0_1_0 + 1)
   0899 C0 0A         [24] 1409 	push	(_at_i_sloc0_1_0 + 2)
   089B C0 0B         [24] 1410 	push	(_at_i_sloc0_1_0 + 3)
   089D C0 02         [24] 1411 	push	ar2
   089F C0 05         [24] 1412 	push	ar5
   08A1 C0 06         [24] 1413 	push	ar6
   08A3 C0 03         [24] 1414 	push	ar3
   08A5 C0 04         [24] 1415 	push	ar4
   08A7 74 F5         [12] 1416 	mov	a,#__str_4
   08A9 C0 E0         [24] 1417 	push	acc
   08AB 74 65         [12] 1418 	mov	a,#(__str_4 >> 8)
   08AD C0 E0         [24] 1419 	push	acc
   08AF 74 80         [12] 1420 	mov	a,#0x80
   08B1 C0 E0         [24] 1421 	push	acc
   08B3 12 2D B6      [24] 1422 	lcall	_printfl
   08B6 E5 81         [12] 1423 	mov	a,sp
   08B8 24 F4         [12] 1424 	add	a,#0xf4
   08BA F5 81         [12] 1425 	mov	sp,a
   08BC D0 07         [24] 1426 	pop	ar7
                           1427 ;	radio/at.c:317: for (id = 0; id < PARAM_MAX; id++) {
   08BE 0F            [12] 1428 	inc	r7
   08BF BF 0F 00      [24] 1429 	cjne	r7,#0x0F,00160$
   08C2                    1430 00160$:
   08C2 40 A8         [24] 1431 	jc	00113$
                           1432 ;	radio/at.c:323: return;
                           1433 ;	radio/at.c:325: case '6':
   08C4 22            [24] 1434 	ret
   08C5                    1435 00109$:
                           1436 ;	radio/at.c:326: tdm_report_timing();
                           1437 ;	radio/at.c:327: return;
                           1438 ;	radio/at.c:328: case '7':
   08C5 02 55 9E      [24] 1439 	ljmp	_tdm_report_timing
   08C8                    1440 00110$:
                           1441 ;	radio/at.c:329: tdm_show_rssi();
                           1442 ;	radio/at.c:330: return;
                           1443 ;	radio/at.c:331: default:
   08C8 02 45 88      [24] 1444 	ljmp	_tdm_show_rssi
   08CB                    1445 00111$:
                           1446 ;	radio/at.c:332: at_error();
                           1447 ;	radio/at.c:333: return;
                           1448 ;	radio/at.c:334: }
   08CB 02 06 C1      [24] 1449 	ljmp	_at_error
                           1450 ;------------------------------------------------------------
                           1451 ;Allocation info for local variables in function 'at_s'
                           1452 ;------------------------------------------------------------
                           1453 ;	radio/at.c:338: at_s(void)
                           1454 ;	-----------------------------------------
                           1455 ;	 function at_s
                           1456 ;	-----------------------------------------
   08CE                    1457 _at_s:
                           1458 ;	radio/at.c:344: idx = 3;
   08CE 78 16         [12] 1459 	mov	r0,#_idx
   08D0 74 03         [12] 1460 	mov	a,#0x03
   08D2 F2            [24] 1461 	movx	@r0,a
                           1462 ;	radio/at.c:345: sreg = at_parse_number();
   08D3 12 06 E3      [24] 1463 	lcall	_at_parse_number
   08D6 AC 82         [24] 1464 	mov	r4,dpl
   08D8 AD 83         [24] 1465 	mov	r5,dph
   08DA AE F0         [24] 1466 	mov	r6,b
   08DC FF            [12] 1467 	mov	r7,a
                           1468 ;	radio/at.c:347: if (sreg >= PARAM_MAX) {
   08DD BC 0F 00      [24] 1469 	cjne	r4,#0x0F,00127$
   08E0                    1470 00127$:
   08E0 40 03         [24] 1471 	jc	00102$
                           1472 ;	radio/at.c:348: at_error();
                           1473 ;	radio/at.c:349: return;
   08E2 02 06 C1      [24] 1474 	ljmp	_at_error
   08E5                    1475 00102$:
                           1476 ;	radio/at.c:352: switch (at_cmd[idx]) {
   08E5 78 16         [12] 1477 	mov	r0,#_idx
   08E7 E2            [24] 1478 	movx	a,@r0
   08E8 24 01         [12] 1479 	add	a,#_at_cmd
   08EA F9            [12] 1480 	mov	r1,a
   08EB E3            [24] 1481 	movx	a,@r1
   08EC FF            [12] 1482 	mov	r7,a
   08ED BF 3D 02      [24] 1483 	cjne	r7,#0x3D,00129$
   08F0 80 2D         [24] 1484 	sjmp	00104$
   08F2                    1485 00129$:
   08F2 BF 3F 58      [24] 1486 	cjne	r7,#0x3F,00109$
                           1487 ;	radio/at.c:354: val = param_get(sreg);
   08F5 8C 82         [24] 1488 	mov	dpl,r4
   08F7 12 27 64      [24] 1489 	lcall	_param_get
   08FA AB 82         [24] 1490 	mov	r3,dpl
   08FC AD 83         [24] 1491 	mov	r5,dph
   08FE AE F0         [24] 1492 	mov	r6,b
   0900 FF            [12] 1493 	mov	r7,a
                           1494 ;	radio/at.c:355: printf("%lu\n", val);
   0901 C0 03         [24] 1495 	push	ar3
   0903 C0 05         [24] 1496 	push	ar5
   0905 C0 06         [24] 1497 	push	ar6
   0907 C0 07         [24] 1498 	push	ar7
   0909 74 02         [12] 1499 	mov	a,#__str_5
   090B C0 E0         [24] 1500 	push	acc
   090D 74 66         [12] 1501 	mov	a,#(__str_5 >> 8)
   090F C0 E0         [24] 1502 	push	acc
   0911 74 80         [12] 1503 	mov	a,#0x80
   0913 C0 E0         [24] 1504 	push	acc
   0915 12 2D B6      [24] 1505 	lcall	_printfl
   0918 E5 81         [12] 1506 	mov	a,sp
   091A 24 F9         [12] 1507 	add	a,#0xf9
   091C F5 81         [12] 1508 	mov	sp,a
                           1509 ;	radio/at.c:356: return;
                           1510 ;	radio/at.c:358: case '=':
   091E 22            [24] 1511 	ret
   091F                    1512 00104$:
                           1513 ;	radio/at.c:359: if (sreg > 0) {
   091F EC            [12] 1514 	mov	a,r4
   0920 60 2B         [24] 1515 	jz	00109$
                           1516 ;	radio/at.c:360: idx++;
   0922 78 16         [12] 1517 	mov	r0,#_idx
   0924 E2            [24] 1518 	movx	a,@r0
   0925 24 01         [12] 1519 	add	a,#0x01
   0927 F2            [24] 1520 	movx	@r0,a
                           1521 ;	radio/at.c:361: val = at_parse_number();
   0928 C0 04         [24] 1522 	push	ar4
   092A 12 06 E3      [24] 1523 	lcall	_at_parse_number
   092D AB 82         [24] 1524 	mov	r3,dpl
   092F AD 83         [24] 1525 	mov	r5,dph
   0931 AE F0         [24] 1526 	mov	r6,b
   0933 FF            [12] 1527 	mov	r7,a
   0934 D0 04         [24] 1528 	pop	ar4
                           1529 ;	radio/at.c:362: if (param_set(sreg, val)) {
   0936 78 69         [12] 1530 	mov	r0,#_param_set_PARM_2
   0938 EB            [12] 1531 	mov	a,r3
   0939 F2            [24] 1532 	movx	@r0,a
   093A 08            [12] 1533 	inc	r0
   093B ED            [12] 1534 	mov	a,r5
   093C F2            [24] 1535 	movx	@r0,a
   093D 08            [12] 1536 	inc	r0
   093E EE            [12] 1537 	mov	a,r6
   093F F2            [24] 1538 	movx	@r0,a
   0940 08            [12] 1539 	inc	r0
   0941 EF            [12] 1540 	mov	a,r7
   0942 F2            [24] 1541 	movx	@r0,a
   0943 8C 82         [24] 1542 	mov	dpl,r4
   0945 12 25 C1      [24] 1543 	lcall	_param_set
   0948 50 03         [24] 1544 	jnc	00109$
                           1545 ;	radio/at.c:363: at_ok();
                           1546 ;	radio/at.c:364: return;
                           1547 ;	radio/at.c:368: }
   094A 02 06 9F      [24] 1548 	ljmp	_at_ok
   094D                    1549 00109$:
                           1550 ;	radio/at.c:369: at_error();
   094D 02 06 C1      [24] 1551 	ljmp	_at_error
                           1552 ;------------------------------------------------------------
                           1553 ;Allocation info for local variables in function 'at_ampersand'
                           1554 ;------------------------------------------------------------
                           1555 ;x                         Allocated with name '_at_ampersand_x_3_168'
                           1556 ;------------------------------------------------------------
                           1557 ;	radio/at.c:373: at_ampersand(void)
                           1558 ;	-----------------------------------------
                           1559 ;	 function at_ampersand
                           1560 ;	-----------------------------------------
   0950                    1561 _at_ampersand:
                           1562 ;	radio/at.c:375: switch (at_cmd[3]) {
   0950 78 04         [12] 1563 	mov	r0,#(_at_cmd + 0x0003)
   0952 E2            [24] 1564 	movx	a,@r0
   0953 FF            [12] 1565 	mov	r7,a
   0954 BF 46 02      [24] 1566 	cjne	r7,#0x46,00154$
   0957 80 17         [24] 1567 	sjmp	00101$
   0959                    1568 00154$:
   0959 BF 50 02      [24] 1569 	cjne	r7,#0x50,00155$
   095C 80 4D         [24] 1570 	sjmp	00107$
   095E                    1571 00155$:
   095E BF 54 02      [24] 1572 	cjne	r7,#0x54,00156$
   0961 80 4B         [24] 1573 	sjmp	00108$
   0963                    1574 00156$:
   0963 BF 55 02      [24] 1575 	cjne	r7,#0x55,00157$
   0966 80 14         [24] 1576 	sjmp	00103$
   0968                    1577 00157$:
   0968 BF 57 02      [24] 1578 	cjne	r7,#0x57,00158$
   096B 80 09         [24] 1579 	sjmp	00102$
   096D                    1580 00158$:
   096D 02 0A 24      [24] 1581 	ljmp	00118$
                           1582 ;	radio/at.c:376: case 'F':
   0970                    1583 00101$:
                           1584 ;	radio/at.c:377: param_default();
   0970 12 29 A9      [24] 1585 	lcall	_param_default
                           1586 ;	radio/at.c:378: at_ok();
                           1587 ;	radio/at.c:379: break;
   0973 02 06 9F      [24] 1588 	ljmp	_at_ok
                           1589 ;	radio/at.c:380: case 'W':
   0976                    1590 00102$:
                           1591 ;	radio/at.c:381: param_save();
   0976 12 29 00      [24] 1592 	lcall	_param_save
                           1593 ;	radio/at.c:382: at_ok();
                           1594 ;	radio/at.c:383: break;
   0979 02 06 9F      [24] 1595 	ljmp	_at_ok
                           1596 ;	radio/at.c:385: case 'U':
   097C                    1597 00103$:
                           1598 ;	radio/at.c:386: if (!strcmp(at_cmd + 4, "PDATE")) {
   097C 90 05 CD      [24] 1599 	mov	dptr,#_strcmp_PARM_2
   097F 74 07         [12] 1600 	mov	a,#__str_6
   0981 F0            [24] 1601 	movx	@dptr,a
   0982 74 66         [12] 1602 	mov	a,#(__str_6 >> 8)
   0984 A3            [24] 1603 	inc	dptr
   0985 F0            [24] 1604 	movx	@dptr,a
   0986 74 80         [12] 1605 	mov	a,#0x80
   0988 A3            [24] 1606 	inc	dptr
   0989 F0            [24] 1607 	movx	@dptr,a
   098A 90 00 05      [24] 1608 	mov	dptr,#(_at_cmd + 0x0004)
   098D 75 F0 60      [24] 1609 	mov	b,#0x60
   0990 12 5E 94      [24] 1610 	lcall	_strcmp
   0993 E5 82         [12] 1611 	mov	a,dpl
   0995 85 83 F0      [24] 1612 	mov	b,dph
   0998 45 F0         [12] 1613 	orl	a,b
   099A 70 0C         [24] 1614 	jnz	00106$
                           1615 ;	radio/at.c:388: volatile char x = *(__code volatile char *)0xfc00;
   099C 90 FC 00      [24] 1616 	mov	dptr,#0xFC00
   099F E4            [12] 1617 	clr	a
   09A0 93            [24] 1618 	movc	a,@a+dptr
   09A1 FF            [12] 1619 	mov	r7,a
   09A2 90 00 EC      [24] 1620 	mov	dptr,#_at_ampersand_x_3_168
   09A5 F0            [24] 1621 	movx	@dptr,a
   09A6                    1622 00121$:
   09A6 80 FE         [24] 1623 	sjmp	00121$
   09A8                    1624 00106$:
                           1625 ;	radio/at.c:392: at_error();
                           1626 ;	radio/at.c:393: break;
   09A8 02 06 C1      [24] 1627 	ljmp	_at_error
                           1628 ;	radio/at.c:395: case 'P':
   09AB                    1629 00107$:
                           1630 ;	radio/at.c:396: tdm_change_phase();
                           1631 ;	radio/at.c:397: break;
   09AB 02 4A 66      [24] 1632 	ljmp	_tdm_change_phase
                           1633 ;	radio/at.c:399: case 'T':
   09AE                    1634 00108$:
                           1635 ;	radio/at.c:401: if (!strcmp(at_cmd + 4, "")) {
   09AE 90 05 CD      [24] 1636 	mov	dptr,#_strcmp_PARM_2
   09B1 74 0D         [12] 1637 	mov	a,#__str_7
   09B3 F0            [24] 1638 	movx	@dptr,a
   09B4 74 66         [12] 1639 	mov	a,#(__str_7 >> 8)
   09B6 A3            [24] 1640 	inc	dptr
   09B7 F0            [24] 1641 	movx	@dptr,a
   09B8 74 80         [12] 1642 	mov	a,#0x80
   09BA A3            [24] 1643 	inc	dptr
   09BB F0            [24] 1644 	movx	@dptr,a
   09BC 90 00 05      [24] 1645 	mov	dptr,#(_at_cmd + 0x0004)
   09BF 75 F0 60      [24] 1646 	mov	b,#0x60
   09C2 12 5E 94      [24] 1647 	lcall	_strcmp
   09C5 E5 82         [12] 1648 	mov	a,dpl
   09C7 85 83 F0      [24] 1649 	mov	b,dph
   09CA 45 F0         [12] 1650 	orl	a,b
   09CC 70 05         [24] 1651 	jnz	00116$
                           1652 ;	radio/at.c:403: at_testmode = 0;
   09CE 78 13         [12] 1653 	mov	r0,#_at_testmode
   09D0 E4            [12] 1654 	clr	a
   09D1 F2            [24] 1655 	movx	@r0,a
   09D2 22            [24] 1656 	ret
   09D3                    1657 00116$:
                           1658 ;	radio/at.c:404: } else if (!strcmp(at_cmd + 4, "=RSSI")) {
   09D3 90 05 CD      [24] 1659 	mov	dptr,#_strcmp_PARM_2
   09D6 74 0E         [12] 1660 	mov	a,#__str_8
   09D8 F0            [24] 1661 	movx	@dptr,a
   09D9 74 66         [12] 1662 	mov	a,#(__str_8 >> 8)
   09DB A3            [24] 1663 	inc	dptr
   09DC F0            [24] 1664 	movx	@dptr,a
   09DD 74 80         [12] 1665 	mov	a,#0x80
   09DF A3            [24] 1666 	inc	dptr
   09E0 F0            [24] 1667 	movx	@dptr,a
   09E1 90 00 05      [24] 1668 	mov	dptr,#(_at_cmd + 0x0004)
   09E4 75 F0 60      [24] 1669 	mov	b,#0x60
   09E7 12 5E 94      [24] 1670 	lcall	_strcmp
   09EA E5 82         [12] 1671 	mov	a,dpl
   09EC 85 83 F0      [24] 1672 	mov	b,dph
   09EF 45 F0         [12] 1673 	orl	a,b
   09F1 70 07         [24] 1674 	jnz	00113$
                           1675 ;	radio/at.c:406: at_testmode ^= AT_TEST_RSSI;
   09F3 78 13         [12] 1676 	mov	r0,#_at_testmode
   09F5 E2            [24] 1677 	movx	a,@r0
   09F6 64 01         [12] 1678 	xrl	a,#0x01
   09F8 F2            [24] 1679 	movx	@r0,a
   09F9 22            [24] 1680 	ret
   09FA                    1681 00113$:
                           1682 ;	radio/at.c:407: } else if (!strcmp(at_cmd + 4, "=TDM")) {
   09FA 90 05 CD      [24] 1683 	mov	dptr,#_strcmp_PARM_2
   09FD 74 14         [12] 1684 	mov	a,#__str_9
   09FF F0            [24] 1685 	movx	@dptr,a
   0A00 74 66         [12] 1686 	mov	a,#(__str_9 >> 8)
   0A02 A3            [24] 1687 	inc	dptr
   0A03 F0            [24] 1688 	movx	@dptr,a
   0A04 74 80         [12] 1689 	mov	a,#0x80
   0A06 A3            [24] 1690 	inc	dptr
   0A07 F0            [24] 1691 	movx	@dptr,a
   0A08 90 00 05      [24] 1692 	mov	dptr,#(_at_cmd + 0x0004)
   0A0B 75 F0 60      [24] 1693 	mov	b,#0x60
   0A0E 12 5E 94      [24] 1694 	lcall	_strcmp
   0A11 E5 82         [12] 1695 	mov	a,dpl
   0A13 85 83 F0      [24] 1696 	mov	b,dph
   0A16 45 F0         [12] 1697 	orl	a,b
   0A18 70 07         [24] 1698 	jnz	00110$
                           1699 ;	radio/at.c:409: at_testmode ^= AT_TEST_TDM;
   0A1A 78 13         [12] 1700 	mov	r0,#_at_testmode
   0A1C E2            [24] 1701 	movx	a,@r0
   0A1D 64 02         [12] 1702 	xrl	a,#0x02
   0A1F F2            [24] 1703 	movx	@r0,a
   0A20 22            [24] 1704 	ret
   0A21                    1705 00110$:
                           1706 ;	radio/at.c:411: at_error();
                           1707 ;	radio/at.c:413: break;
                           1708 ;	radio/at.c:415: default:
   0A21 02 06 C1      [24] 1709 	ljmp	_at_error
   0A24                    1710 00118$:
                           1711 ;	radio/at.c:416: at_error();
                           1712 ;	radio/at.c:418: }
   0A24 02 06 C1      [24] 1713 	ljmp	_at_error
                           1714 ;------------------------------------------------------------
                           1715 ;Allocation info for local variables in function 'at_plus'
                           1716 ;------------------------------------------------------------
                           1717 ;	radio/at.c:422: at_plus(void)
                           1718 ;	-----------------------------------------
                           1719 ;	 function at_plus
                           1720 ;	-----------------------------------------
   0A27                    1721 _at_plus:
                           1722 ;	radio/at.c:474: at_error();
   0A27 02 06 C1      [24] 1723 	ljmp	_at_error
                           1724 	.area CSEG    (CODE)
                           1725 	.area CONST   (CODE)
   65E4                    1726 __str_0:
   65E4 25 73              1727 	.ascii "%s"
   65E6 0A                 1728 	.db 0x0A
   65E7 00                 1729 	.db 0x00
   65E8                    1730 __str_1:
   65E8 4F 4B              1731 	.ascii "OK"
   65EA 00                 1732 	.db 0x00
   65EB                    1733 __str_2:
   65EB 45 52 52 4F 52     1734 	.ascii "ERROR"
   65F0 00                 1735 	.db 0x00
   65F1                    1736 __str_3:
   65F1 25 75              1737 	.ascii "%u"
   65F3 0A                 1738 	.db 0x0A
   65F4 00                 1739 	.db 0x00
   65F5                    1740 __str_4:
   65F5 53 25 75 3A 20 25  1741 	.ascii "S%u: %s=%lu"
        73 3D 25 6C 75
   6600 0A                 1742 	.db 0x0A
   6601 00                 1743 	.db 0x00
   6602                    1744 __str_5:
   6602 25 6C 75           1745 	.ascii "%lu"
   6605 0A                 1746 	.db 0x0A
   6606 00                 1747 	.db 0x00
   6607                    1748 __str_6:
   6607 50 44 41 54 45     1749 	.ascii "PDATE"
   660C 00                 1750 	.db 0x00
   660D                    1751 __str_7:
   660D 00                 1752 	.db 0x00
   660E                    1753 __str_8:
   660E 3D 52 53 53 49     1754 	.ascii "=RSSI"
   6613 00                 1755 	.db 0x00
   6614                    1756 __str_9:
   6614 3D 54 44 4D        1757 	.ascii "=TDM"
   6618 00                 1758 	.db 0x00
                           1759 	.area XINIT   (CODE)
                           1760 	.area CABS    (ABS,CODE)
