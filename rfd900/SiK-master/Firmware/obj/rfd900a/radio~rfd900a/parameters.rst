                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:10 2013
                              5 ;--------------------------------------------------------
                              6 	.module parameters
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _parameter_info
                             13 	.globl _crc16
                             14 	.globl _radio_get_transmit_power
                             15 	.globl _radio_set_transmit_power
                             16 	.globl _printfl
                             17 	.globl _flash_write_scratch
                             18 	.globl _flash_read_scratch
                             19 	.globl _flash_erase_scratch
                             20 	.globl _serial_device_valid_speed
                             21 	.globl _strcmp
                             22 	.globl _TDM_SYNC_PIN
                             23 	.globl _NSS1
                             24 	.globl _IRQ
                             25 	.globl _PA_ENABLE
                             26 	.globl _PIN_ENABLE
                             27 	.globl _PIN_CONFIG
                             28 	.globl _LED_GREEN
                             29 	.globl _LED_RED
                             30 	.globl _SPI0EN
                             31 	.globl _TXBMT0
                             32 	.globl _NSS0MD0
                             33 	.globl _NSS0MD1
                             34 	.globl _RXOVRN0
                             35 	.globl _MODF0
                             36 	.globl _WCOL0
                             37 	.globl _SPIF0
                             38 	.globl _AD0CM0
                             39 	.globl _AD0CM1
                             40 	.globl _AD0CM2
                             41 	.globl _AD0WINT
                             42 	.globl _AD0BUSY
                             43 	.globl _AD0INT
                             44 	.globl _BURSTEN
                             45 	.globl _AD0EN
                             46 	.globl _CCF0
                             47 	.globl _CCF1
                             48 	.globl _CCF2
                             49 	.globl _CCF3
                             50 	.globl _CCF4
                             51 	.globl _CCF5
                             52 	.globl _CR
                             53 	.globl _CF
                             54 	.globl _P
                             55 	.globl _F1
                             56 	.globl _OV
                             57 	.globl _RS0
                             58 	.globl _RS1
                             59 	.globl _F0
                             60 	.globl _AC
                             61 	.globl _CY
                             62 	.globl _T2XCLK
                             63 	.globl _T2RCLK
                             64 	.globl _TR2
                             65 	.globl _T2SPLIT
                             66 	.globl _TF2CEN
                             67 	.globl _TF2LEN
                             68 	.globl _TF2L
                             69 	.globl _TF2H
                             70 	.globl _SI
                             71 	.globl _ACK
                             72 	.globl _ARBLOST
                             73 	.globl _ACKRQ
                             74 	.globl _STO
                             75 	.globl _STA
                             76 	.globl _TXMODE
                             77 	.globl _MASTER
                             78 	.globl _PX0
                             79 	.globl _PT0
                             80 	.globl _PX1
                             81 	.globl _PT1
                             82 	.globl _PS0
                             83 	.globl _PT2
                             84 	.globl _PSPI0
                             85 	.globl _SPI1EN
                             86 	.globl _TXBMT1
                             87 	.globl _NSS1MD0
                             88 	.globl _NSS1MD1
                             89 	.globl _RXOVRN1
                             90 	.globl _MODF1
                             91 	.globl _WCOL1
                             92 	.globl _SPIF1
                             93 	.globl _EX0
                             94 	.globl _ET0
                             95 	.globl _EX1
                             96 	.globl _ET1
                             97 	.globl _ES0
                             98 	.globl _ET2
                             99 	.globl _ESPI0
                            100 	.globl _EA
                            101 	.globl _RI0
                            102 	.globl _TI0
                            103 	.globl _RB80
                            104 	.globl _TB80
                            105 	.globl _REN0
                            106 	.globl _MCE0
                            107 	.globl _S0MODE
                            108 	.globl _CRC0VAL
                            109 	.globl _CRC0INIT
                            110 	.globl _CRC0SEL
                            111 	.globl _IT0
                            112 	.globl _IE0
                            113 	.globl _IT1
                            114 	.globl _IE1
                            115 	.globl _TR0
                            116 	.globl _TF0
                            117 	.globl _TR1
                            118 	.globl _TF1
                            119 	.globl _PCA0CP4
                            120 	.globl _PCA0CP0
                            121 	.globl _PCA0
                            122 	.globl _PCA0CP3
                            123 	.globl _PCA0CP2
                            124 	.globl _PCA0CP1
                            125 	.globl _PCA0CP5
                            126 	.globl _TMR2
                            127 	.globl _TMR2RL
                            128 	.globl _ADC0LT
                            129 	.globl _ADC0GT
                            130 	.globl _ADC0
                            131 	.globl _TMR3
                            132 	.globl _TMR3RL
                            133 	.globl _TOFF
                            134 	.globl _DP
                            135 	.globl _VDM0CN
                            136 	.globl _PCA0CPH4
                            137 	.globl _PCA0CPL4
                            138 	.globl _PCA0CPH0
                            139 	.globl _PCA0CPL0
                            140 	.globl _PCA0H
                            141 	.globl _PCA0L
                            142 	.globl _SPI0CN
                            143 	.globl _EIP2
                            144 	.globl _EIP1
                            145 	.globl _SMB0ADM
                            146 	.globl _SMB0ADR
                            147 	.globl _P2MDIN
                            148 	.globl _P1MDIN
                            149 	.globl _P0MDIN
                            150 	.globl _B
                            151 	.globl _RSTSRC
                            152 	.globl _PCA0CPH3
                            153 	.globl _PCA0CPL3
                            154 	.globl _PCA0CPH2
                            155 	.globl _PCA0CPL2
                            156 	.globl _PCA0CPH1
                            157 	.globl _PCA0CPL1
                            158 	.globl _ADC0CN
                            159 	.globl _EIE2
                            160 	.globl _EIE1
                            161 	.globl _FLWR
                            162 	.globl _IT01CF
                            163 	.globl _XBR2
                            164 	.globl _XBR1
                            165 	.globl _XBR0
                            166 	.globl _ACC
                            167 	.globl _PCA0PWM
                            168 	.globl _PCA0CPM4
                            169 	.globl _PCA0CPM3
                            170 	.globl _PCA0CPM2
                            171 	.globl _PCA0CPM1
                            172 	.globl _PCA0CPM0
                            173 	.globl _PCA0MD
                            174 	.globl _PCA0CN
                            175 	.globl _P0MAT
                            176 	.globl _P2SKIP
                            177 	.globl _P1SKIP
                            178 	.globl _P0SKIP
                            179 	.globl _PCA0CPH5
                            180 	.globl _PCA0CPL5
                            181 	.globl _REF0CN
                            182 	.globl _PSW
                            183 	.globl _P1MAT
                            184 	.globl _PCA0CPM5
                            185 	.globl _TMR2H
                            186 	.globl _TMR2L
                            187 	.globl _TMR2RLH
                            188 	.globl _TMR2RLL
                            189 	.globl _REG0CN
                            190 	.globl _TMR2CN
                            191 	.globl _P0MASK
                            192 	.globl _ADC0LTH
                            193 	.globl _ADC0LTL
                            194 	.globl _ADC0GTH
                            195 	.globl _ADC0GTL
                            196 	.globl _SMB0DAT
                            197 	.globl _SMB0CF
                            198 	.globl _SMB0CN
                            199 	.globl _P1MASK
                            200 	.globl _ADC0H
                            201 	.globl _ADC0L
                            202 	.globl _ADC0TK
                            203 	.globl _ADC0CF
                            204 	.globl _ADC0MX
                            205 	.globl _ADC0PWR
                            206 	.globl _ADC0AC
                            207 	.globl _IREF0CN
                            208 	.globl _IP
                            209 	.globl _FLKEY
                            210 	.globl _FLSCL
                            211 	.globl _PMU0CF
                            212 	.globl _OSCICL
                            213 	.globl _OSCICN
                            214 	.globl _OSCXCN
                            215 	.globl _SPI1CN
                            216 	.globl _ONESHOT
                            217 	.globl _EMI0TC
                            218 	.globl _RTC0KEY
                            219 	.globl _RTC0DAT
                            220 	.globl _RTC0ADR
                            221 	.globl _EMI0CF
                            222 	.globl _EMI0CN
                            223 	.globl _CLKSEL
                            224 	.globl _IE
                            225 	.globl _SFRPAGE
                            226 	.globl _P2DRV
                            227 	.globl _P2MDOUT
                            228 	.globl _P1DRV
                            229 	.globl _P1MDOUT
                            230 	.globl _P0DRV
                            231 	.globl _P0MDOUT
                            232 	.globl _SPI0DAT
                            233 	.globl _SPI0CKR
                            234 	.globl _SPI0CFG
                            235 	.globl _P2
                            236 	.globl _CPT0MX
                            237 	.globl _CPT1MX
                            238 	.globl _CPT0MD
                            239 	.globl _CPT1MD
                            240 	.globl _CPT0CN
                            241 	.globl _CPT1CN
                            242 	.globl _SBUF0
                            243 	.globl _SCON0
                            244 	.globl _CRC0CNT
                            245 	.globl _DC0CN
                            246 	.globl _CRC0AUTO
                            247 	.globl _DC0CF
                            248 	.globl _TMR3H
                            249 	.globl _CRC0FLIP
                            250 	.globl _TMR3L
                            251 	.globl _CRC0IN
                            252 	.globl _TMR3RLH
                            253 	.globl _CRC0CN
                            254 	.globl _TMR3RLL
                            255 	.globl _CRC0DAT
                            256 	.globl _TMR3CN
                            257 	.globl _P1
                            258 	.globl _PSCTL
                            259 	.globl _CKCON
                            260 	.globl _TH1
                            261 	.globl _TH0
                            262 	.globl _TL1
                            263 	.globl _TL0
                            264 	.globl _TMOD
                            265 	.globl _TCON
                            266 	.globl _PCON
                            267 	.globl _TOFFH
                            268 	.globl _SPI1DAT
                            269 	.globl _TOFFL
                            270 	.globl _SPI1CKR
                            271 	.globl _SPI1CFG
                            272 	.globl _DPH
                            273 	.globl _DPL
                            274 	.globl _SP
                            275 	.globl _P0
                            276 	.globl _parameter_values
                            277 	.globl _constrain_PARM_3
                            278 	.globl _constrain_PARM_2
                            279 	.globl _param_set_PARM_2
                            280 	.globl _param_set
                            281 	.globl _param_get
                            282 	.globl _param_load
                            283 	.globl _param_save
                            284 	.globl _param_default
                            285 	.globl _param_id
                            286 	.globl _param_name
                            287 	.globl _constrain
                            288 	.globl _calibration_set
                            289 	.globl _calibration_get
                            290 	.globl _calibration_lock
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
                     00A5   551 _PA_ENABLE	=	0x00a5
                     0087   552 _IRQ	=	0x0087
                     0094   553 _NSS1	=	0x0094
                     00A6   554 _TDM_SYNC_PIN	=	0x00a6
                            555 ;--------------------------------------------------------
                            556 ; overlayable register banks
                            557 ;--------------------------------------------------------
                            558 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     559 	.ds 8
                            560 ;--------------------------------------------------------
                            561 ; internal ram data
                            562 ;--------------------------------------------------------
                            563 	.area DSEG    (DATA)
   0036                     564 _param_check_PARM_2:
   0036                     565 	.ds 4
   003A                     566 _param_load_sloc0_1_0:
   003A                     567 	.ds 2
   003C                     568 _param_load_sloc1_1_0:
   003C                     569 	.ds 2
   003E                     570 _param_load_sloc2_1_0:
   003E                     571 	.ds 2
   0040                     572 _param_load_sloc3_1_0:
   0040                     573 	.ds 4
                            574 ;--------------------------------------------------------
                            575 ; overlayable items in internal ram 
                            576 ;--------------------------------------------------------
                            577 	.area	OSEG    (OVR,DATA)
                            578 	.area	OSEG    (OVR,DATA)
                            579 ;--------------------------------------------------------
                            580 ; indirectly addressable internal ram data
                            581 ;--------------------------------------------------------
                            582 	.area ISEG    (DATA)
                            583 ;--------------------------------------------------------
                            584 ; absolute internal ram data
                            585 ;--------------------------------------------------------
                            586 	.area IABS    (ABS,DATA)
                            587 	.area IABS    (ABS,DATA)
                            588 ;--------------------------------------------------------
                            589 ; bit data
                            590 ;--------------------------------------------------------
                            591 	.area BSEG    (BIT)
   0011                     592 _param_check_sloc0_1_0:
   0011                     593 	.ds 1
                            594 ;--------------------------------------------------------
                            595 ; paged external ram data
                            596 ;--------------------------------------------------------
                            597 	.area PSEG    (PAG,XDATA)
   006D                     598 _param_set_PARM_2:
   006D                     599 	.ds 4
   0071                     600 _param_save_i_1_142:
   0071                     601 	.ds 2
   0073                     602 _constrain_PARM_2:
   0073                     603 	.ds 4
   0077                     604 _constrain_PARM_3:
   0077                     605 	.ds 4
                            606 ;--------------------------------------------------------
                            607 ; external ram data
                            608 ;--------------------------------------------------------
                            609 	.area XSEG    (XDATA)
   0327                     610 _parameter_values::
   0327                     611 	.ds 60
                            612 ;--------------------------------------------------------
                            613 ; absolute external ram data
                            614 ;--------------------------------------------------------
                            615 	.area XABS    (ABS,XDATA)
                            616 ;--------------------------------------------------------
                            617 ; external initialized ram data
                            618 ;--------------------------------------------------------
                            619 	.area XISEG   (XDATA)
                            620 	.area HOME    (CODE)
                            621 	.area GSINIT0 (CODE)
                            622 	.area GSINIT1 (CODE)
                            623 	.area GSINIT2 (CODE)
                            624 	.area GSINIT3 (CODE)
                            625 	.area GSINIT4 (CODE)
                            626 	.area GSINIT5 (CODE)
                            627 	.area GSINIT  (CODE)
                            628 	.area GSFINAL (CODE)
                            629 	.area CSEG    (CODE)
                            630 ;--------------------------------------------------------
                            631 ; global & static initialisations
                            632 ;--------------------------------------------------------
                            633 	.area HOME    (CODE)
                            634 	.area GSINIT  (CODE)
                            635 	.area GSFINAL (CODE)
                            636 	.area GSINIT  (CODE)
                            637 ;--------------------------------------------------------
                            638 ; Home
                            639 ;--------------------------------------------------------
                            640 	.area HOME    (CODE)
                            641 	.area HOME    (CODE)
                            642 ;--------------------------------------------------------
                            643 ; code
                            644 ;--------------------------------------------------------
                            645 	.area CSEG    (CODE)
                            646 ;------------------------------------------------------------
                            647 ;Allocation info for local variables in function 'param_check'
                            648 ;------------------------------------------------------------
                            649 ;val                       Allocated with name '_param_check_PARM_2'
                            650 ;------------------------------------------------------------
                            651 ;	radio/parameters.c:80: param_check(__pdata enum ParamID id, __data uint32_t val)
                            652 ;	-----------------------------------------
                            653 ;	 function param_check
                            654 ;	-----------------------------------------
   2678                     655 _param_check:
                     0007   656 	ar7 = 0x07
                     0006   657 	ar6 = 0x06
                     0005   658 	ar5 = 0x05
                     0004   659 	ar4 = 0x04
                     0003   660 	ar3 = 0x03
                     0002   661 	ar2 = 0x02
                     0001   662 	ar1 = 0x01
                     0000   663 	ar0 = 0x00
   2678 AF 82         [24]  664 	mov	r7,dpl
                            665 ;	radio/parameters.c:83: if (id >= PARAM_MAX)
   267A BF 0F 00      [24]  666 	cjne	r7,#0x0F,00136$
   267D                     667 00136$:
                            668 ;	radio/parameters.c:84: return false;
   267D 40 01         [24]  669 	jc	00102$
   267F 22            [24]  670 	ret
   2680                     671 00102$:
                            672 ;	radio/parameters.c:86: switch (id) {
   2680 EF            [12]  673 	mov	a,r7
   2681 24 F8         [12]  674 	add	a,#0xff - 0x07
   2683 40 63         [24]  675 	jc	00118$
   2685 EF            [12]  676 	mov	a,r7
   2686 2F            [12]  677 	add	a,r7
   2687 2F            [12]  678 	add	a,r7
   2688 90 26 8C      [24]  679 	mov	dptr,#00139$
   268B 73            [24]  680 	jmp	@a+dptr
   268C                     681 00139$:
   268C 02 26 A4      [24]  682 	ljmp	00103$
   268F 02 26 A6      [24]  683 	ljmp	00104$
   2692 02 26 B0      [24]  684 	ljmp	00105$
   2695 02 26 C2      [24]  685 	ljmp	00108$
   2698 02 26 C4      [24]  686 	ljmp	00109$
   269B 02 26 D6      [24]  687 	ljmp	00112$
   269E 02 26 D6      [24]  688 	ljmp	00113$
   26A1 02 26 D6      [24]  689 	ljmp	00114$
                            690 ;	radio/parameters.c:87: case PARAM_FORMAT:
   26A4                     691 00103$:
                            692 ;	radio/parameters.c:88: return false;
   26A4 C3            [12]  693 	clr	c
                            694 ;	radio/parameters.c:90: case PARAM_SERIAL_SPEED:
   26A5 22            [24]  695 	ret
   26A6                     696 00104$:
                            697 ;	radio/parameters.c:91: return serial_device_valid_speed(val);
   26A6 AF 36         [24]  698 	mov	r7,_param_check_PARM_2
   26A8 8F 82         [24]  699 	mov	dpl,r7
   26AA 12 47 4B      [24]  700 	lcall	_serial_device_valid_speed
   26AD 92 11         [24]  701 	mov  _param_check_sloc0_1_0,c
                            702 ;	radio/parameters.c:93: case PARAM_AIR_SPEED:
   26AF 22            [24]  703 	ret
   26B0                     704 00105$:
                            705 ;	radio/parameters.c:94: if (val > 256)
   26B0 C3            [12]  706 	clr	c
   26B1 E4            [12]  707 	clr	a
   26B2 95 36         [12]  708 	subb	a,_param_check_PARM_2
   26B4 74 01         [12]  709 	mov	a,#0x01
   26B6 95 37         [12]  710 	subb	a,(_param_check_PARM_2 + 1)
   26B8 E4            [12]  711 	clr	a
   26B9 95 38         [12]  712 	subb	a,(_param_check_PARM_2 + 2)
   26BB E4            [12]  713 	clr	a
   26BC 95 39         [12]  714 	subb	a,(_param_check_PARM_2 + 3)
   26BE 50 28         [24]  715 	jnc	00118$
                            716 ;	radio/parameters.c:95: return false;
   26C0 C3            [12]  717 	clr	c
                            718 ;	radio/parameters.c:98: case PARAM_NETID:
   26C1 22            [24]  719 	ret
   26C2                     720 00108$:
                            721 ;	radio/parameters.c:100: return true;
   26C2 D3            [12]  722 	setb	c
                            723 ;	radio/parameters.c:102: case PARAM_TXPOWER:
   26C3 22            [24]  724 	ret
   26C4                     725 00109$:
                            726 ;	radio/parameters.c:103: if (val > BOARD_MAXTXPOWER)
   26C4 C3            [12]  727 	clr	c
   26C5 74 1E         [12]  728 	mov	a,#0x1E
   26C7 95 36         [12]  729 	subb	a,_param_check_PARM_2
   26C9 E4            [12]  730 	clr	a
   26CA 95 37         [12]  731 	subb	a,(_param_check_PARM_2 + 1)
   26CC E4            [12]  732 	clr	a
   26CD 95 38         [12]  733 	subb	a,(_param_check_PARM_2 + 2)
   26CF E4            [12]  734 	clr	a
   26D0 95 39         [12]  735 	subb	a,(_param_check_PARM_2 + 3)
   26D2 50 14         [24]  736 	jnc	00118$
                            737 ;	radio/parameters.c:104: return false;
   26D4 C3            [12]  738 	clr	c
                            739 ;	radio/parameters.c:107: case PARAM_ECC:
   26D5 22            [24]  740 	ret
   26D6                     741 00112$:
                            742 ;	radio/parameters.c:108: case PARAM_MAVLINK:
   26D6                     743 00113$:
                            744 ;	radio/parameters.c:109: case PARAM_OPPRESEND:
   26D6                     745 00114$:
                            746 ;	radio/parameters.c:111: if (val > 1)
   26D6 C3            [12]  747 	clr	c
   26D7 74 01         [12]  748 	mov	a,#0x01
   26D9 95 36         [12]  749 	subb	a,_param_check_PARM_2
   26DB E4            [12]  750 	clr	a
   26DC 95 37         [12]  751 	subb	a,(_param_check_PARM_2 + 1)
   26DE E4            [12]  752 	clr	a
   26DF 95 38         [12]  753 	subb	a,(_param_check_PARM_2 + 2)
   26E1 E4            [12]  754 	clr	a
   26E2 95 39         [12]  755 	subb	a,(_param_check_PARM_2 + 3)
   26E4 50 02         [24]  756 	jnc	00118$
                            757 ;	radio/parameters.c:112: return false;
   26E6 C3            [12]  758 	clr	c
                            759 ;	radio/parameters.c:118: }
   26E7 22            [24]  760 	ret
   26E8                     761 00118$:
                            762 ;	radio/parameters.c:119: return true;
   26E8 D3            [12]  763 	setb	c
   26E9 22            [24]  764 	ret
                            765 ;------------------------------------------------------------
                            766 ;Allocation info for local variables in function 'param_set'
                            767 ;------------------------------------------------------------
                            768 ;param                     Allocated to registers r7 
                            769 ;------------------------------------------------------------
                            770 ;	radio/parameters.c:123: param_set(__data enum ParamID param, __pdata param_t value)
                            771 ;	-----------------------------------------
                            772 ;	 function param_set
                            773 ;	-----------------------------------------
   26EA                     774 _param_set:
   26EA AF 82         [24]  775 	mov	r7,dpl
                            776 ;	radio/parameters.c:126: if (!param_check(param, value))
   26EC 78 6D         [12]  777 	mov	r0,#_param_set_PARM_2
   26EE E2            [24]  778 	movx	a,@r0
   26EF F5 36         [12]  779 	mov	_param_check_PARM_2,a
   26F1 08            [12]  780 	inc	r0
   26F2 E2            [24]  781 	movx	a,@r0
   26F3 F5 37         [12]  782 	mov	(_param_check_PARM_2 + 1),a
   26F5 08            [12]  783 	inc	r0
   26F6 E2            [24]  784 	movx	a,@r0
   26F7 F5 38         [12]  785 	mov	(_param_check_PARM_2 + 2),a
   26F9 08            [12]  786 	inc	r0
   26FA E2            [24]  787 	movx	a,@r0
   26FB F5 39         [12]  788 	mov	(_param_check_PARM_2 + 3),a
   26FD 8F 82         [24]  789 	mov	dpl,r7
   26FF C0 07         [24]  790 	push	ar7
   2701 12 26 78      [24]  791 	lcall	_param_check
   2704 D0 07         [24]  792 	pop	ar7
                            793 ;	radio/parameters.c:127: return false;
   2706 40 01         [24]  794 	jc	00102$
   2708 22            [24]  795 	ret
   2709                     796 00102$:
                            797 ;	radio/parameters.c:130: switch (param) {
   2709 BF 04 02      [24]  798 	cjne	r7,#0x04,00155$
   270C 80 1F         [24]  799 	sjmp	00103$
   270E                     800 00155$:
   270E BF 06 03      [24]  801 	cjne	r7,#0x06,00156$
   2711 02 27 F0      [24]  802 	ljmp	00108$
   2714                     803 00156$:
   2714 BF 07 03      [24]  804 	cjne	r7,#0x07,00157$
   2717 02 28 1A      [24]  805 	ljmp	00109$
   271A                     806 00157$:
   271A BF 0B 02      [24]  807 	cjne	r7,#0x0B,00158$
   271D 80 2D         [24]  808 	sjmp	00104$
   271F                     809 00158$:
   271F BF 0C 02      [24]  810 	cjne	r7,#0x0C,00159$
   2722 80 6F         [24]  811 	sjmp	00105$
   2724                     812 00159$:
   2724 BF 0E 03      [24]  813 	cjne	r7,#0x0E,00160$
   2727 02 28 44      [24]  814 	ljmp	00110$
   272A                     815 00160$:
   272A 02 28 6C      [24]  816 	ljmp	00112$
                            817 ;	radio/parameters.c:131: case PARAM_TXPOWER:
   272D                     818 00103$:
                            819 ;	radio/parameters.c:134: radio_set_transmit_power(value);
   272D 78 6D         [12]  820 	mov	r0,#_param_set_PARM_2
   272F E2            [24]  821 	movx	a,@r0
   2730 F5 82         [12]  822 	mov	dpl,a
   2732 C0 07         [24]  823 	push	ar7
   2734 12 3A D0      [24]  824 	lcall	_radio_set_transmit_power
                            825 ;	radio/parameters.c:135: value = radio_get_transmit_power();
   2737 12 3B 10      [24]  826 	lcall	_radio_get_transmit_power
   273A AE 82         [24]  827 	mov	r6,dpl
   273C D0 07         [24]  828 	pop	ar7
   273E 78 6D         [12]  829 	mov	r0,#_param_set_PARM_2
   2740 EE            [12]  830 	mov	a,r6
   2741 F2            [24]  831 	movx	@r0,a
   2742 08            [12]  832 	inc	r0
   2743 E4            [12]  833 	clr	a
   2744 F2            [24]  834 	movx	@r0,a
   2745 08            [12]  835 	inc	r0
   2746 F2            [24]  836 	movx	@r0,a
   2747 08            [12]  837 	inc	r0
   2748 F2            [24]  838 	movx	@r0,a
                            839 ;	radio/parameters.c:136: break;
   2749 02 28 6C      [24]  840 	ljmp	00112$
                            841 ;	radio/parameters.c:138: case PARAM_DUTY_CYCLE:
   274C                     842 00104$:
                            843 ;	radio/parameters.c:140: value = constrain(value, 0, 100);
   274C 78 73         [12]  844 	mov	r0,#_constrain_PARM_2
   274E E4            [12]  845 	clr	a
   274F F2            [24]  846 	movx	@r0,a
   2750 08            [12]  847 	inc	r0
   2751 F2            [24]  848 	movx	@r0,a
   2752 08            [12]  849 	inc	r0
   2753 F2            [24]  850 	movx	@r0,a
   2754 08            [12]  851 	inc	r0
   2755 F2            [24]  852 	movx	@r0,a
   2756 78 77         [12]  853 	mov	r0,#_constrain_PARM_3
   2758 74 64         [12]  854 	mov	a,#0x64
   275A F2            [24]  855 	movx	@r0,a
   275B 08            [12]  856 	inc	r0
   275C E4            [12]  857 	clr	a
   275D F2            [24]  858 	movx	@r0,a
   275E 08            [12]  859 	inc	r0
   275F F2            [24]  860 	movx	@r0,a
   2760 08            [12]  861 	inc	r0
   2761 F2            [24]  862 	movx	@r0,a
   2762 78 6D         [12]  863 	mov	r0,#_param_set_PARM_2
   2764 E2            [24]  864 	movx	a,@r0
   2765 F5 82         [12]  865 	mov	dpl,a
   2767 08            [12]  866 	inc	r0
   2768 E2            [24]  867 	movx	a,@r0
   2769 F5 83         [12]  868 	mov	dph,a
   276B 08            [12]  869 	inc	r0
   276C E2            [24]  870 	movx	a,@r0
   276D F5 F0         [12]  871 	mov	b,a
   276F 08            [12]  872 	inc	r0
   2770 E2            [24]  873 	movx	a,@r0
   2771 C0 07         [24]  874 	push	ar7
   2773 12 2B 9B      [24]  875 	lcall	_constrain
   2776 AB 82         [24]  876 	mov	r3,dpl
   2778 AC 83         [24]  877 	mov	r4,dph
   277A AD F0         [24]  878 	mov	r5,b
   277C FE            [12]  879 	mov	r6,a
   277D D0 07         [24]  880 	pop	ar7
   277F 78 6D         [12]  881 	mov	r0,#_param_set_PARM_2
   2781 EB            [12]  882 	mov	a,r3
   2782 F2            [24]  883 	movx	@r0,a
   2783 08            [12]  884 	inc	r0
   2784 EC            [12]  885 	mov	a,r4
   2785 F2            [24]  886 	movx	@r0,a
   2786 08            [12]  887 	inc	r0
   2787 ED            [12]  888 	mov	a,r5
   2788 F2            [24]  889 	movx	@r0,a
   2789 08            [12]  890 	inc	r0
   278A EE            [12]  891 	mov	a,r6
   278B F2            [24]  892 	movx	@r0,a
                            893 ;	radio/parameters.c:141: duty_cycle = value;
   278C 78 C8         [12]  894 	mov	r0,#_duty_cycle
   278E EB            [12]  895 	mov	a,r3
   278F F2            [24]  896 	movx	@r0,a
                            897 ;	radio/parameters.c:142: break;
   2790 02 28 6C      [24]  898 	ljmp	00112$
                            899 ;	radio/parameters.c:144: case PARAM_LBT_RSSI:
   2793                     900 00105$:
                            901 ;	radio/parameters.c:146: if (value != 0) {
   2793 78 6D         [12]  902 	mov	r0,#_param_set_PARM_2
   2795 E2            [24]  903 	movx	a,@r0
   2796 F5 F0         [12]  904 	mov	b,a
   2798 08            [12]  905 	inc	r0
   2799 E2            [24]  906 	movx	a,@r0
   279A 42 F0         [12]  907 	orl	b,a
   279C 08            [12]  908 	inc	r0
   279D E2            [24]  909 	movx	a,@r0
   279E 42 F0         [12]  910 	orl	b,a
   27A0 08            [12]  911 	inc	r0
   27A1 E2            [24]  912 	movx	a,@r0
   27A2 45 F0         [12]  913 	orl	a,b
   27A4 60 42         [24]  914 	jz	00107$
                            915 ;	radio/parameters.c:147: value = constrain(value, 25, 220);
   27A6 78 73         [12]  916 	mov	r0,#_constrain_PARM_2
   27A8 74 19         [12]  917 	mov	a,#0x19
   27AA F2            [24]  918 	movx	@r0,a
   27AB 08            [12]  919 	inc	r0
   27AC E4            [12]  920 	clr	a
   27AD F2            [24]  921 	movx	@r0,a
   27AE 08            [12]  922 	inc	r0
   27AF F2            [24]  923 	movx	@r0,a
   27B0 08            [12]  924 	inc	r0
   27B1 F2            [24]  925 	movx	@r0,a
   27B2 78 77         [12]  926 	mov	r0,#_constrain_PARM_3
   27B4 74 DC         [12]  927 	mov	a,#0xDC
   27B6 F2            [24]  928 	movx	@r0,a
   27B7 08            [12]  929 	inc	r0
   27B8 E4            [12]  930 	clr	a
   27B9 F2            [24]  931 	movx	@r0,a
   27BA 08            [12]  932 	inc	r0
   27BB F2            [24]  933 	movx	@r0,a
   27BC 08            [12]  934 	inc	r0
   27BD F2            [24]  935 	movx	@r0,a
   27BE 78 6D         [12]  936 	mov	r0,#_param_set_PARM_2
   27C0 E2            [24]  937 	movx	a,@r0
   27C1 F5 82         [12]  938 	mov	dpl,a
   27C3 08            [12]  939 	inc	r0
   27C4 E2            [24]  940 	movx	a,@r0
   27C5 F5 83         [12]  941 	mov	dph,a
   27C7 08            [12]  942 	inc	r0
   27C8 E2            [24]  943 	movx	a,@r0
   27C9 F5 F0         [12]  944 	mov	b,a
   27CB 08            [12]  945 	inc	r0
   27CC E2            [24]  946 	movx	a,@r0
   27CD C0 07         [24]  947 	push	ar7
   27CF 12 2B 9B      [24]  948 	lcall	_constrain
   27D2 AB 82         [24]  949 	mov	r3,dpl
   27D4 AC 83         [24]  950 	mov	r4,dph
   27D6 AD F0         [24]  951 	mov	r5,b
   27D8 FE            [12]  952 	mov	r6,a
   27D9 D0 07         [24]  953 	pop	ar7
   27DB 78 6D         [12]  954 	mov	r0,#_param_set_PARM_2
   27DD EB            [12]  955 	mov	a,r3
   27DE F2            [24]  956 	movx	@r0,a
   27DF 08            [12]  957 	inc	r0
   27E0 EC            [12]  958 	mov	a,r4
   27E1 F2            [24]  959 	movx	@r0,a
   27E2 08            [12]  960 	inc	r0
   27E3 ED            [12]  961 	mov	a,r5
   27E4 F2            [24]  962 	movx	@r0,a
   27E5 08            [12]  963 	inc	r0
   27E6 EE            [12]  964 	mov	a,r6
   27E7 F2            [24]  965 	movx	@r0,a
   27E8                     966 00107$:
                            967 ;	radio/parameters.c:149: lbt_rssi = value;
   27E8 78 6D         [12]  968 	mov	r0,#_param_set_PARM_2
   27EA 79 CC         [12]  969 	mov	r1,#_lbt_rssi
   27EC E2            [24]  970 	movx	a,@r0
   27ED F3            [24]  971 	movx	@r1,a
                            972 ;	radio/parameters.c:150: break;
                            973 ;	radio/parameters.c:152: case PARAM_MAVLINK:
   27EE 80 7C         [24]  974 	sjmp	00112$
   27F0                     975 00108$:
                            976 ;	radio/parameters.c:153: feature_mavlink_framing = value?true:false;
   27F0 78 6D         [12]  977 	mov	r0,#_param_set_PARM_2
   27F2 E2            [24]  978 	movx	a,@r0
   27F3 F5 F0         [12]  979 	mov	b,a
   27F5 08            [12]  980 	inc	r0
   27F6 E2            [24]  981 	movx	a,@r0
   27F7 42 F0         [12]  982 	orl	b,a
   27F9 08            [12]  983 	inc	r0
   27FA E2            [24]  984 	movx	a,@r0
   27FB 42 F0         [12]  985 	orl	b,a
   27FD 08            [12]  986 	inc	r0
   27FE E2            [24]  987 	movx	a,@r0
   27FF 45 F0         [12]  988 	orl	a,b
   2801 24 FF         [12]  989 	add	a,#0xff
                            990 ;	radio/parameters.c:154: value = feature_mavlink_framing?1:0;
   2803 92 07         [24]  991 	mov	_feature_mavlink_framing,c
   2805 50 04         [24]  992 	jnc	00115$
   2807 7E 01         [12]  993 	mov	r6,#0x01
   2809 80 02         [24]  994 	sjmp	00116$
   280B                     995 00115$:
   280B 7E 00         [12]  996 	mov	r6,#0x00
   280D                     997 00116$:
   280D 78 6D         [12]  998 	mov	r0,#_param_set_PARM_2
   280F EE            [12]  999 	mov	a,r6
   2810 F2            [24] 1000 	movx	@r0,a
   2811 08            [12] 1001 	inc	r0
   2812 E4            [12] 1002 	clr	a
   2813 F2            [24] 1003 	movx	@r0,a
   2814 08            [12] 1004 	inc	r0
   2815 F2            [24] 1005 	movx	@r0,a
   2816 08            [12] 1006 	inc	r0
   2817 F2            [24] 1007 	movx	@r0,a
                           1008 ;	radio/parameters.c:155: break;
                           1009 ;	radio/parameters.c:157: case PARAM_OPPRESEND:
   2818 80 52         [24] 1010 	sjmp	00112$
   281A                    1011 00109$:
                           1012 ;	radio/parameters.c:158: feature_opportunistic_resend = value?true:false;
   281A 78 6D         [12] 1013 	mov	r0,#_param_set_PARM_2
   281C E2            [24] 1014 	movx	a,@r0
   281D F5 F0         [12] 1015 	mov	b,a
   281F 08            [12] 1016 	inc	r0
   2820 E2            [24] 1017 	movx	a,@r0
   2821 42 F0         [12] 1018 	orl	b,a
   2823 08            [12] 1019 	inc	r0
   2824 E2            [24] 1020 	movx	a,@r0
   2825 42 F0         [12] 1021 	orl	b,a
   2827 08            [12] 1022 	inc	r0
   2828 E2            [24] 1023 	movx	a,@r0
   2829 45 F0         [12] 1024 	orl	a,b
   282B 24 FF         [12] 1025 	add	a,#0xff
                           1026 ;	radio/parameters.c:159: value = feature_opportunistic_resend?1:0;
   282D 92 06         [24] 1027 	mov	_feature_opportunistic_resend,c
   282F 50 04         [24] 1028 	jnc	00117$
   2831 7E 01         [12] 1029 	mov	r6,#0x01
   2833 80 02         [24] 1030 	sjmp	00118$
   2835                    1031 00117$:
   2835 7E 00         [12] 1032 	mov	r6,#0x00
   2837                    1033 00118$:
   2837 78 6D         [12] 1034 	mov	r0,#_param_set_PARM_2
   2839 EE            [12] 1035 	mov	a,r6
   283A F2            [24] 1036 	movx	@r0,a
   283B 08            [12] 1037 	inc	r0
   283C E4            [12] 1038 	clr	a
   283D F2            [24] 1039 	movx	@r0,a
   283E 08            [12] 1040 	inc	r0
   283F F2            [24] 1041 	movx	@r0,a
   2840 08            [12] 1042 	inc	r0
   2841 F2            [24] 1043 	movx	@r0,a
                           1044 ;	radio/parameters.c:160: break;
                           1045 ;	radio/parameters.c:162: case PARAM_RTSCTS:
   2842 80 28         [24] 1046 	sjmp	00112$
   2844                    1047 00110$:
                           1048 ;	radio/parameters.c:163: feature_rtscts = value?true:false;
   2844 78 6D         [12] 1049 	mov	r0,#_param_set_PARM_2
   2846 E2            [24] 1050 	movx	a,@r0
   2847 F5 F0         [12] 1051 	mov	b,a
   2849 08            [12] 1052 	inc	r0
   284A E2            [24] 1053 	movx	a,@r0
   284B 42 F0         [12] 1054 	orl	b,a
   284D 08            [12] 1055 	inc	r0
   284E E2            [24] 1056 	movx	a,@r0
   284F 42 F0         [12] 1057 	orl	b,a
   2851 08            [12] 1058 	inc	r0
   2852 E2            [24] 1059 	movx	a,@r0
   2853 45 F0         [12] 1060 	orl	a,b
   2855 24 FF         [12] 1061 	add	a,#0xff
                           1062 ;	radio/parameters.c:164: value = feature_rtscts?1:0;
   2857 92 08         [24] 1063 	mov	_feature_rtscts,c
   2859 50 04         [24] 1064 	jnc	00119$
   285B 7E 01         [12] 1065 	mov	r6,#0x01
   285D 80 02         [24] 1066 	sjmp	00120$
   285F                    1067 00119$:
   285F 7E 00         [12] 1068 	mov	r6,#0x00
   2861                    1069 00120$:
   2861 78 6D         [12] 1070 	mov	r0,#_param_set_PARM_2
   2863 EE            [12] 1071 	mov	a,r6
   2864 F2            [24] 1072 	movx	@r0,a
   2865 08            [12] 1073 	inc	r0
   2866 E4            [12] 1074 	clr	a
   2867 F2            [24] 1075 	movx	@r0,a
   2868 08            [12] 1076 	inc	r0
   2869 F2            [24] 1077 	movx	@r0,a
   286A 08            [12] 1078 	inc	r0
   286B F2            [24] 1079 	movx	@r0,a
                           1080 ;	radio/parameters.c:169: }
   286C                    1081 00112$:
                           1082 ;	radio/parameters.c:171: parameter_values[param] = value;
   286C EF            [12] 1083 	mov	a,r7
   286D 75 F0 04      [24] 1084 	mov	b,#0x04
   2870 A4            [48] 1085 	mul	ab
   2871 24 27         [12] 1086 	add	a,#_parameter_values
   2873 F5 82         [12] 1087 	mov	dpl,a
   2875 74 03         [12] 1088 	mov	a,#(_parameter_values >> 8)
   2877 35 F0         [12] 1089 	addc	a,b
   2879 F5 83         [12] 1090 	mov	dph,a
   287B 78 6D         [12] 1091 	mov	r0,#_param_set_PARM_2
   287D E2            [24] 1092 	movx	a,@r0
   287E F0            [24] 1093 	movx	@dptr,a
   287F 08            [12] 1094 	inc	r0
   2880 E2            [24] 1095 	movx	a,@r0
   2881 A3            [24] 1096 	inc	dptr
   2882 F0            [24] 1097 	movx	@dptr,a
   2883 08            [12] 1098 	inc	r0
   2884 E2            [24] 1099 	movx	a,@r0
   2885 A3            [24] 1100 	inc	dptr
   2886 F0            [24] 1101 	movx	@dptr,a
   2887 08            [12] 1102 	inc	r0
   2888 E2            [24] 1103 	movx	a,@r0
   2889 A3            [24] 1104 	inc	dptr
   288A F0            [24] 1105 	movx	@dptr,a
                           1106 ;	radio/parameters.c:173: return true;
   288B D3            [12] 1107 	setb	c
   288C 22            [24] 1108 	ret
                           1109 ;------------------------------------------------------------
                           1110 ;Allocation info for local variables in function 'param_get'
                           1111 ;------------------------------------------------------------
                           1112 ;param                     Allocated to registers r7 
                           1113 ;------------------------------------------------------------
                           1114 ;	radio/parameters.c:177: param_get(__data enum ParamID param)
                           1115 ;	-----------------------------------------
                           1116 ;	 function param_get
                           1117 ;	-----------------------------------------
   288D                    1118 _param_get:
   288D AF 82         [24] 1119 	mov	r7,dpl
                           1120 ;	radio/parameters.c:179: if (param >= PARAM_MAX)
   288F BF 0F 00      [24] 1121 	cjne	r7,#0x0F,00108$
   2892                    1122 00108$:
   2892 40 07         [24] 1123 	jc	00102$
                           1124 ;	radio/parameters.c:180: return 0;
   2894 90 00 00      [24] 1125 	mov	dptr,#(0x00&0x00ff)
   2897 E4            [12] 1126 	clr	a
   2898 F5 F0         [12] 1127 	mov	b,a
   289A 22            [24] 1128 	ret
   289B                    1129 00102$:
                           1130 ;	radio/parameters.c:181: return parameter_values[param];
   289B EF            [12] 1131 	mov	a,r7
   289C 75 F0 04      [24] 1132 	mov	b,#0x04
   289F A4            [48] 1133 	mul	ab
   28A0 24 27         [12] 1134 	add	a,#_parameter_values
   28A2 F5 82         [12] 1135 	mov	dpl,a
   28A4 74 03         [12] 1136 	mov	a,#(_parameter_values >> 8)
   28A6 35 F0         [12] 1137 	addc	a,b
   28A8 F5 83         [12] 1138 	mov	dph,a
   28AA E0            [24] 1139 	movx	a,@dptr
   28AB FC            [12] 1140 	mov	r4,a
   28AC A3            [24] 1141 	inc	dptr
   28AD E0            [24] 1142 	movx	a,@dptr
   28AE FD            [12] 1143 	mov	r5,a
   28AF A3            [24] 1144 	inc	dptr
   28B0 E0            [24] 1145 	movx	a,@dptr
   28B1 FE            [12] 1146 	mov	r6,a
   28B2 A3            [24] 1147 	inc	dptr
   28B3 E0            [24] 1148 	movx	a,@dptr
   28B4 8C 82         [24] 1149 	mov	dpl,r4
   28B6 8D 83         [24] 1150 	mov	dph,r5
   28B8 8E F0         [24] 1151 	mov	b,r6
   28BA 22            [24] 1152 	ret
                           1153 ;------------------------------------------------------------
                           1154 ;Allocation info for local variables in function 'param_load'
                           1155 ;------------------------------------------------------------
                           1156 ;sloc0                     Allocated with name '_param_load_sloc0_1_0'
                           1157 ;sloc1                     Allocated with name '_param_load_sloc1_1_0'
                           1158 ;sloc2                     Allocated with name '_param_load_sloc2_1_0'
                           1159 ;sloc3                     Allocated with name '_param_load_sloc3_1_0'
                           1160 ;------------------------------------------------------------
                           1161 ;	radio/parameters.c:185: param_load(void)
                           1162 ;	-----------------------------------------
                           1163 ;	 function param_load
                           1164 ;	-----------------------------------------
   28BB                    1165 _param_load:
   28BB D3            [12] 1166 	setb	c
   28BC 10 AF 01      [24] 1167 	jbc	ea,00138$
   28BF C3            [12] 1168 	clr	c
   28C0                    1169 00138$:
   28C0 C0 D0         [24] 1170 	push	psw
                           1171 ;	radio/parameters.c:192: for (i = 0; i < sizeof(parameter_values); i++) {
   28C2 7E 00         [12] 1172 	mov	r6,#0x00
   28C4 7F 00         [12] 1173 	mov	r7,#0x00
   28C6                    1174 00109$:
                           1175 ;	radio/parameters.c:193: ((uint8_t *)parameter_values)[i] = flash_read_scratch(i+4);
   28C6 EE            [12] 1176 	mov	a,r6
   28C7 24 27         [12] 1177 	add	a,#_parameter_values
   28C9 FB            [12] 1178 	mov	r3,a
   28CA EF            [12] 1179 	mov	a,r7
   28CB 34 03         [12] 1180 	addc	a,#(_parameter_values >> 8)
   28CD FC            [12] 1181 	mov	r4,a
   28CE 7D 00         [12] 1182 	mov	r5,#0x00
   28D0 74 04         [12] 1183 	mov	a,#0x04
   28D2 2E            [12] 1184 	add	a,r6
   28D3 F9            [12] 1185 	mov	r1,a
   28D4 E4            [12] 1186 	clr	a
   28D5 3F            [12] 1187 	addc	a,r7
   28D6 FA            [12] 1188 	mov	r2,a
   28D7 89 82         [24] 1189 	mov	dpl,r1
   28D9 8A 83         [24] 1190 	mov	dph,r2
   28DB C0 07         [24] 1191 	push	ar7
   28DD C0 06         [24] 1192 	push	ar6
   28DF C0 05         [24] 1193 	push	ar5
   28E1 C0 04         [24] 1194 	push	ar4
   28E3 C0 03         [24] 1195 	push	ar3
   28E5 12 0B B3      [24] 1196 	lcall	_flash_read_scratch
   28E8 AA 82         [24] 1197 	mov	r2,dpl
   28EA D0 03         [24] 1198 	pop	ar3
   28EC D0 04         [24] 1199 	pop	ar4
   28EE D0 05         [24] 1200 	pop	ar5
   28F0 D0 06         [24] 1201 	pop	ar6
   28F2 D0 07         [24] 1202 	pop	ar7
   28F4 8B 82         [24] 1203 	mov	dpl,r3
   28F6 8C 83         [24] 1204 	mov	dph,r4
   28F8 8D F0         [24] 1205 	mov	b,r5
   28FA EA            [12] 1206 	mov	a,r2
   28FB 12 60 87      [24] 1207 	lcall	__gptrput
                           1208 ;	radio/parameters.c:192: for (i = 0; i < sizeof(parameter_values); i++) {
   28FE 0E            [12] 1209 	inc	r6
   28FF BE 00 01      [24] 1210 	cjne	r6,#0x00,00139$
   2902 0F            [12] 1211 	inc	r7
   2903                    1212 00139$:
   2903 C3            [12] 1213 	clr	c
   2904 EE            [12] 1214 	mov	a,r6
   2905 94 3C         [12] 1215 	subb	a,#0x3C
   2907 EF            [12] 1216 	mov	a,r7
   2908 94 00         [12] 1217 	subb	a,#0x00
   290A 40 BA         [24] 1218 	jc	00109$
                           1219 ;	radio/parameters.c:197: if (param_get(PARAM_FORMAT) != PARAM_FORMAT_CURRENT) {
   290C 75 82 00      [24] 1220 	mov	dpl,#0x00
   290F 12 28 8D      [24] 1221 	lcall	_param_get
   2912 AC 82         [24] 1222 	mov	r4,dpl
   2914 AD 83         [24] 1223 	mov	r5,dph
   2916 AE F0         [24] 1224 	mov	r6,b
   2918 FF            [12] 1225 	mov	r7,a
   2919 BC 19 0B      [24] 1226 	cjne	r4,#0x19,00141$
   291C BD 00 08      [24] 1227 	cjne	r5,#0x00,00141$
   291F BE 00 05      [24] 1228 	cjne	r6,#0x00,00141$
   2922 BF 00 02      [24] 1229 	cjne	r7,#0x00,00141$
   2925 80 07         [24] 1230 	sjmp	00103$
   2927                    1231 00141$:
                           1232 ;	radio/parameters.c:199: param_default();
   2927 12 2A D2      [24] 1233 	lcall	_param_default
                           1234 ;	radio/parameters.c:200: return false;
   292A C3            [12] 1235 	clr	c
   292B 02 2A 22      [24] 1236 	ljmp	00113$
   292E                    1237 00103$:
                           1238 ;	radio/parameters.c:204: checksum = crc16(sizeof(parameter_values), (__xdata uint8_t *)parameter_values);
   292E 75 0C 27      [24] 1239 	mov	_crc16_PARM_2,#_parameter_values
   2931 75 0D 03      [24] 1240 	mov	(_crc16_PARM_2 + 1),#(_parameter_values >> 8)
   2934 75 82 3C      [24] 1241 	mov	dpl,#0x3C
   2937 12 0B 36      [24] 1242 	lcall	_crc16
   293A AE 82         [24] 1243 	mov	r6,dpl
   293C AF 83         [24] 1244 	mov	r7,dph
                           1245 ;	radio/parameters.c:205: expected = flash_read_scratch(3)<<8 | flash_read_scratch(2);
   293E 90 00 03      [24] 1246 	mov	dptr,#0x0003
   2941 C0 07         [24] 1247 	push	ar7
   2943 C0 06         [24] 1248 	push	ar6
   2945 12 0B B3      [24] 1249 	lcall	_flash_read_scratch
   2948 AC 82         [24] 1250 	mov	r4,dpl
   294A 7D 00         [12] 1251 	mov	r5,#0x00
   294C 90 00 02      [24] 1252 	mov	dptr,#0x0002
   294F C0 05         [24] 1253 	push	ar5
   2951 C0 04         [24] 1254 	push	ar4
   2953 12 0B B3      [24] 1255 	lcall	_flash_read_scratch
   2956 AB 82         [24] 1256 	mov	r3,dpl
   2958 D0 04         [24] 1257 	pop	ar4
   295A D0 05         [24] 1258 	pop	ar5
   295C D0 06         [24] 1259 	pop	ar6
   295E D0 07         [24] 1260 	pop	ar7
   2960 7A 00         [12] 1261 	mov	r2,#0x00
   2962 EB            [12] 1262 	mov	a,r3
   2963 42 05         [12] 1263 	orl	ar5,a
   2965 EA            [12] 1264 	mov	a,r2
   2966 42 04         [12] 1265 	orl	ar4,a
                           1266 ;	radio/parameters.c:206: if (checksum != expected)
   2968 EE            [12] 1267 	mov	a,r6
   2969 B5 05 06      [24] 1268 	cjne	a,ar5,00142$
   296C EF            [12] 1269 	mov	a,r7
   296D B5 04 02      [24] 1270 	cjne	a,ar4,00142$
   2970 80 07         [24] 1271 	sjmp	00120$
   2972                    1272 00142$:
                           1273 ;	radio/parameters.c:209: param_default();
   2972 12 2A D2      [24] 1274 	lcall	_param_default
                           1275 ;	radio/parameters.c:210: return false;
   2975 C3            [12] 1276 	clr	c
   2976 02 2A 22      [24] 1277 	ljmp	00113$
                           1278 ;	radio/parameters.c:213: for (i = 0; i < PARAM_MAX; i++) {
   2979                    1279 00120$:
   2979 7F 00         [12] 1280 	mov	r7,#0x00
   297B 7E 00         [12] 1281 	mov	r6,#0x00
   297D 7C 00         [12] 1282 	mov	r4,#0x00
   297F 7D 00         [12] 1283 	mov	r5,#0x00
   2981                    1284 00111$:
                           1285 ;	radio/parameters.c:214: if (!param_check(i, parameter_values[i])) {
   2981 8F 03         [24] 1286 	mov	ar3,r7
   2983 8F 3A         [24] 1287 	mov	_param_load_sloc0_1_0,r7
   2985 EE            [12] 1288 	mov	a,r6
   2986 C5 3A         [12] 1289 	xch	a,_param_load_sloc0_1_0
   2988 25 E0         [12] 1290 	add	a,acc
   298A C5 3A         [12] 1291 	xch	a,_param_load_sloc0_1_0
   298C 33            [12] 1292 	rlc	a
   298D C5 3A         [12] 1293 	xch	a,_param_load_sloc0_1_0
   298F 25 E0         [12] 1294 	add	a,acc
   2991 C5 3A         [12] 1295 	xch	a,_param_load_sloc0_1_0
   2993 33            [12] 1296 	rlc	a
   2994 F5 3B         [12] 1297 	mov	(_param_load_sloc0_1_0 + 1),a
   2996 E5 3A         [12] 1298 	mov	a,_param_load_sloc0_1_0
   2998 24 27         [12] 1299 	add	a,#_parameter_values
   299A F5 3C         [12] 1300 	mov	_param_load_sloc1_1_0,a
   299C E5 3B         [12] 1301 	mov	a,(_param_load_sloc0_1_0 + 1)
   299E 34 03         [12] 1302 	addc	a,#(_parameter_values >> 8)
   29A0 F5 3D         [12] 1303 	mov	(_param_load_sloc1_1_0 + 1),a
   29A2 85 3C 82      [24] 1304 	mov	dpl,_param_load_sloc1_1_0
   29A5 85 3D 83      [24] 1305 	mov	dph,(_param_load_sloc1_1_0 + 1)
   29A8 E0            [24] 1306 	movx	a,@dptr
   29A9 F5 36         [12] 1307 	mov	_param_check_PARM_2,a
   29AB A3            [24] 1308 	inc	dptr
   29AC E0            [24] 1309 	movx	a,@dptr
   29AD F5 37         [12] 1310 	mov	(_param_check_PARM_2 + 1),a
   29AF A3            [24] 1311 	inc	dptr
   29B0 E0            [24] 1312 	movx	a,@dptr
   29B1 F5 38         [12] 1313 	mov	(_param_check_PARM_2 + 2),a
   29B3 A3            [24] 1314 	inc	dptr
   29B4 E0            [24] 1315 	movx	a,@dptr
   29B5 F5 39         [12] 1316 	mov	(_param_check_PARM_2 + 3),a
   29B7 8B 82         [24] 1317 	mov	dpl,r3
   29B9 C0 07         [24] 1318 	push	ar7
   29BB C0 06         [24] 1319 	push	ar6
   29BD C0 05         [24] 1320 	push	ar5
   29BF C0 04         [24] 1321 	push	ar4
   29C1 12 26 78      [24] 1322 	lcall	_param_check
   29C4 D0 04         [24] 1323 	pop	ar4
   29C6 D0 05         [24] 1324 	pop	ar5
   29C8 D0 06         [24] 1325 	pop	ar6
   29CA D0 07         [24] 1326 	pop	ar7
   29CC 40 3B         [24] 1327 	jc	00112$
                           1328 ;	radio/parameters.c:215: parameter_values[i] = parameter_info[i].default_value;
   29CE EC            [12] 1329 	mov	a,r4
   29CF 24 2A         [12] 1330 	add	a,#_parameter_info
   29D1 F5 3E         [12] 1331 	mov	_param_load_sloc2_1_0,a
   29D3 ED            [12] 1332 	mov	a,r5
   29D4 34 CB         [12] 1333 	addc	a,#(_parameter_info >> 8)
   29D6 F5 3F         [12] 1334 	mov	(_param_load_sloc2_1_0 + 1),a
   29D8 85 3E 82      [24] 1335 	mov	dpl,_param_load_sloc2_1_0
   29DB 85 3F 83      [24] 1336 	mov	dph,(_param_load_sloc2_1_0 + 1)
   29DE A3            [24] 1337 	inc	dptr
   29DF A3            [24] 1338 	inc	dptr
   29E0 A3            [24] 1339 	inc	dptr
   29E1 E4            [12] 1340 	clr	a
   29E2 93            [24] 1341 	movc	a,@a+dptr
   29E3 F5 40         [12] 1342 	mov	_param_load_sloc3_1_0,a
   29E5 A3            [24] 1343 	inc	dptr
   29E6 E4            [12] 1344 	clr	a
   29E7 93            [24] 1345 	movc	a,@a+dptr
   29E8 F5 41         [12] 1346 	mov	(_param_load_sloc3_1_0 + 1),a
   29EA A3            [24] 1347 	inc	dptr
   29EB E4            [12] 1348 	clr	a
   29EC 93            [24] 1349 	movc	a,@a+dptr
   29ED F5 42         [12] 1350 	mov	(_param_load_sloc3_1_0 + 2),a
   29EF A3            [24] 1351 	inc	dptr
   29F0 E4            [12] 1352 	clr	a
   29F1 93            [24] 1353 	movc	a,@a+dptr
   29F2 F5 43         [12] 1354 	mov	(_param_load_sloc3_1_0 + 3),a
   29F4 85 3C 82      [24] 1355 	mov	dpl,_param_load_sloc1_1_0
   29F7 85 3D 83      [24] 1356 	mov	dph,(_param_load_sloc1_1_0 + 1)
   29FA E5 40         [12] 1357 	mov	a,_param_load_sloc3_1_0
   29FC F0            [24] 1358 	movx	@dptr,a
   29FD E5 41         [12] 1359 	mov	a,(_param_load_sloc3_1_0 + 1)
   29FF A3            [24] 1360 	inc	dptr
   2A00 F0            [24] 1361 	movx	@dptr,a
   2A01 E5 42         [12] 1362 	mov	a,(_param_load_sloc3_1_0 + 2)
   2A03 A3            [24] 1363 	inc	dptr
   2A04 F0            [24] 1364 	movx	@dptr,a
   2A05 E5 43         [12] 1365 	mov	a,(_param_load_sloc3_1_0 + 3)
   2A07 A3            [24] 1366 	inc	dptr
   2A08 F0            [24] 1367 	movx	@dptr,a
   2A09                    1368 00112$:
                           1369 ;	radio/parameters.c:213: for (i = 0; i < PARAM_MAX; i++) {
   2A09 74 07         [12] 1370 	mov	a,#0x07
   2A0B 2C            [12] 1371 	add	a,r4
   2A0C FC            [12] 1372 	mov	r4,a
   2A0D E4            [12] 1373 	clr	a
   2A0E 3D            [12] 1374 	addc	a,r5
   2A0F FD            [12] 1375 	mov	r5,a
   2A10 0F            [12] 1376 	inc	r7
   2A11 BF 00 01      [24] 1377 	cjne	r7,#0x00,00144$
   2A14 0E            [12] 1378 	inc	r6
   2A15                    1379 00144$:
   2A15 C3            [12] 1380 	clr	c
   2A16 EF            [12] 1381 	mov	a,r7
   2A17 94 0F         [12] 1382 	subb	a,#0x0F
   2A19 EE            [12] 1383 	mov	a,r6
   2A1A 94 00         [12] 1384 	subb	a,#0x00
   2A1C 50 03         [24] 1385 	jnc	00145$
   2A1E 02 29 81      [24] 1386 	ljmp	00111$
   2A21                    1387 00145$:
                           1388 ;	radio/parameters.c:219: return true;
   2A21 D3            [12] 1389 	setb	c
   2A22                    1390 00113$:
   2A22 33            [12] 1391 	rlc	a
   2A23 D0 D0         [24] 1392 	pop	psw
   2A25 92 AF         [24] 1393 	mov	ea,c
   2A27 13            [12] 1394 	rrc	a
   2A28 22            [24] 1395 	ret
                           1396 ;------------------------------------------------------------
                           1397 ;Allocation info for local variables in function 'param_save'
                           1398 ;------------------------------------------------------------
                           1399 ;	radio/parameters.c:223: param_save(void)
                           1400 ;	-----------------------------------------
                           1401 ;	 function param_save
                           1402 ;	-----------------------------------------
   2A29                    1403 _param_save:
   2A29 D3            [12] 1404 	setb	c
   2A2A 10 AF 01      [24] 1405 	jbc	ea,00110$
   2A2D C3            [12] 1406 	clr	c
   2A2E                    1407 00110$:
   2A2E C0 D0         [24] 1408 	push	psw
                           1409 ;	radio/parameters.c:229: parameter_values[PARAM_FORMAT] = PARAM_FORMAT_CURRENT;
   2A30 90 03 27      [24] 1410 	mov	dptr,#_parameter_values
   2A33 74 19         [12] 1411 	mov	a,#0x19
   2A35 F0            [24] 1412 	movx	@dptr,a
   2A36 E4            [12] 1413 	clr	a
   2A37 A3            [24] 1414 	inc	dptr
   2A38 F0            [24] 1415 	movx	@dptr,a
   2A39 E4            [12] 1416 	clr	a
   2A3A A3            [24] 1417 	inc	dptr
   2A3B F0            [24] 1418 	movx	@dptr,a
   2A3C E4            [12] 1419 	clr	a
   2A3D A3            [24] 1420 	inc	dptr
   2A3E F0            [24] 1421 	movx	@dptr,a
                           1422 ;	radio/parameters.c:232: flash_erase_scratch();
   2A3F 12 0B 98      [24] 1423 	lcall	_flash_erase_scratch
                           1424 ;	radio/parameters.c:235: flash_write_scratch(0, sizeof(parameter_values)&0xFF);
   2A42 78 1B         [12] 1425 	mov	r0,#_flash_write_scratch_PARM_2
   2A44 74 3C         [12] 1426 	mov	a,#0x3C
   2A46 F2            [24] 1427 	movx	@r0,a
   2A47 90 00 00      [24] 1428 	mov	dptr,#0x0000
   2A4A 12 0B D2      [24] 1429 	lcall	_flash_write_scratch
                           1430 ;	radio/parameters.c:236: flash_write_scratch(1, (int)(sizeof(parameter_values))>>8);
   2A4D 78 1B         [12] 1431 	mov	r0,#_flash_write_scratch_PARM_2
   2A4F E4            [12] 1432 	clr	a
   2A50 F2            [24] 1433 	movx	@r0,a
   2A51 90 00 01      [24] 1434 	mov	dptr,#0x0001
   2A54 12 0B D2      [24] 1435 	lcall	_flash_write_scratch
                           1436 ;	radio/parameters.c:239: checksum = crc16(sizeof(parameter_values), (__xdata uint8_t *)parameter_values);
   2A57 75 0C 27      [24] 1437 	mov	_crc16_PARM_2,#_parameter_values
   2A5A 75 0D 03      [24] 1438 	mov	(_crc16_PARM_2 + 1),#(_parameter_values >> 8)
   2A5D 75 82 3C      [24] 1439 	mov	dpl,#0x3C
   2A60 12 0B 36      [24] 1440 	lcall	_crc16
   2A63 AE 82         [24] 1441 	mov	r6,dpl
   2A65 AF 83         [24] 1442 	mov	r7,dph
                           1443 ;	radio/parameters.c:240: flash_write_scratch(2, checksum&0xFF);
   2A67 8E 04         [24] 1444 	mov	ar4,r6
   2A69 78 1B         [12] 1445 	mov	r0,#_flash_write_scratch_PARM_2
   2A6B EC            [12] 1446 	mov	a,r4
   2A6C F2            [24] 1447 	movx	@r0,a
   2A6D 90 00 02      [24] 1448 	mov	dptr,#0x0002
   2A70 C0 07         [24] 1449 	push	ar7
   2A72 C0 06         [24] 1450 	push	ar6
   2A74 12 0B D2      [24] 1451 	lcall	_flash_write_scratch
   2A77 D0 06         [24] 1452 	pop	ar6
   2A79 D0 07         [24] 1453 	pop	ar7
                           1454 ;	radio/parameters.c:241: flash_write_scratch(3, checksum>>8);
   2A7B 78 1B         [12] 1455 	mov	r0,#_flash_write_scratch_PARM_2
   2A7D EF            [12] 1456 	mov	a,r7
   2A7E F2            [24] 1457 	movx	@r0,a
   2A7F 90 00 03      [24] 1458 	mov	dptr,#0x0003
   2A82 12 0B D2      [24] 1459 	lcall	_flash_write_scratch
                           1460 ;	radio/parameters.c:244: for (i = 0; i < sizeof(parameter_values); i++) {
   2A85 78 71         [12] 1461 	mov	r0,#_param_save_i_1_142
   2A87 E4            [12] 1462 	clr	a
   2A88 F2            [24] 1463 	movx	@r0,a
   2A89 08            [12] 1464 	inc	r0
   2A8A F2            [24] 1465 	movx	@r0,a
   2A8B                    1466 00102$:
                           1467 ;	radio/parameters.c:245: flash_write_scratch(i+4, ((uint8_t *)parameter_values)[i]);
   2A8B 78 71         [12] 1468 	mov	r0,#_param_save_i_1_142
   2A8D E2            [24] 1469 	movx	a,@r0
   2A8E 24 04         [12] 1470 	add	a,#0x04
   2A90 FC            [12] 1471 	mov	r4,a
   2A91 08            [12] 1472 	inc	r0
   2A92 E2            [24] 1473 	movx	a,@r0
   2A93 34 00         [12] 1474 	addc	a,#0x00
   2A95 FD            [12] 1475 	mov	r5,a
   2A96 78 71         [12] 1476 	mov	r0,#_param_save_i_1_142
   2A98 E2            [24] 1477 	movx	a,@r0
   2A99 24 27         [12] 1478 	add	a,#_parameter_values
   2A9B FA            [12] 1479 	mov	r2,a
   2A9C 08            [12] 1480 	inc	r0
   2A9D E2            [24] 1481 	movx	a,@r0
   2A9E 34 03         [12] 1482 	addc	a,#(_parameter_values >> 8)
   2AA0 FB            [12] 1483 	mov	r3,a
   2AA1 7F 00         [12] 1484 	mov	r7,#0x00
   2AA3 8A 82         [24] 1485 	mov	dpl,r2
   2AA5 8B 83         [24] 1486 	mov	dph,r3
   2AA7 8F F0         [24] 1487 	mov	b,r7
   2AA9 78 1B         [12] 1488 	mov	r0,#_flash_write_scratch_PARM_2
   2AAB 12 67 32      [24] 1489 	lcall	__gptrget
   2AAE F2            [24] 1490 	movx	@r0,a
   2AAF 8C 82         [24] 1491 	mov	dpl,r4
   2AB1 8D 83         [24] 1492 	mov	dph,r5
   2AB3 12 0B D2      [24] 1493 	lcall	_flash_write_scratch
                           1494 ;	radio/parameters.c:244: for (i = 0; i < sizeof(parameter_values); i++) {
   2AB6 78 71         [12] 1495 	mov	r0,#_param_save_i_1_142
   2AB8 E2            [24] 1496 	movx	a,@r0
   2AB9 24 01         [12] 1497 	add	a,#0x01
   2ABB F2            [24] 1498 	movx	@r0,a
   2ABC 08            [12] 1499 	inc	r0
   2ABD E2            [24] 1500 	movx	a,@r0
   2ABE 34 00         [12] 1501 	addc	a,#0x00
   2AC0 F2            [24] 1502 	movx	@r0,a
   2AC1 78 71         [12] 1503 	mov	r0,#_param_save_i_1_142
   2AC3 C3            [12] 1504 	clr	c
   2AC4 E2            [24] 1505 	movx	a,@r0
   2AC5 94 3C         [12] 1506 	subb	a,#0x3C
   2AC7 08            [12] 1507 	inc	r0
   2AC8 E2            [24] 1508 	movx	a,@r0
   2AC9 94 00         [12] 1509 	subb	a,#0x00
   2ACB 40 BE         [24] 1510 	jc	00102$
   2ACD D0 D0         [24] 1511 	pop	psw
   2ACF 92 AF         [24] 1512 	mov	ea,c
   2AD1 22            [24] 1513 	ret
                           1514 ;------------------------------------------------------------
                           1515 ;Allocation info for local variables in function 'param_default'
                           1516 ;------------------------------------------------------------
                           1517 ;	radio/parameters.c:250: param_default(void)
                           1518 ;	-----------------------------------------
                           1519 ;	 function param_default
                           1520 ;	-----------------------------------------
   2AD2                    1521 _param_default:
                           1522 ;	radio/parameters.c:255: for (i = 0; i < PARAM_MAX; i++) {
   2AD2 7F 00         [12] 1523 	mov	r7,#0x00
   2AD4                    1524 00102$:
                           1525 ;	radio/parameters.c:256: parameter_values[i] = parameter_info[i].default_value;
   2AD4 EF            [12] 1526 	mov	a,r7
   2AD5 75 F0 04      [24] 1527 	mov	b,#0x04
   2AD8 A4            [48] 1528 	mul	ab
   2AD9 24 27         [12] 1529 	add	a,#_parameter_values
   2ADB FD            [12] 1530 	mov	r5,a
   2ADC 74 03         [12] 1531 	mov	a,#(_parameter_values >> 8)
   2ADE 35 F0         [12] 1532 	addc	a,b
   2AE0 FE            [12] 1533 	mov	r6,a
   2AE1 EF            [12] 1534 	mov	a,r7
   2AE2 75 F0 07      [24] 1535 	mov	b,#0x07
   2AE5 A4            [48] 1536 	mul	ab
   2AE6 24 2A         [12] 1537 	add	a,#_parameter_info
   2AE8 FB            [12] 1538 	mov	r3,a
   2AE9 74 CB         [12] 1539 	mov	a,#(_parameter_info >> 8)
   2AEB 35 F0         [12] 1540 	addc	a,b
   2AED FC            [12] 1541 	mov	r4,a
   2AEE 8B 82         [24] 1542 	mov	dpl,r3
   2AF0 8C 83         [24] 1543 	mov	dph,r4
   2AF2 A3            [24] 1544 	inc	dptr
   2AF3 A3            [24] 1545 	inc	dptr
   2AF4 A3            [24] 1546 	inc	dptr
   2AF5 E4            [12] 1547 	clr	a
   2AF6 93            [24] 1548 	movc	a,@a+dptr
   2AF7 F9            [12] 1549 	mov	r1,a
   2AF8 A3            [24] 1550 	inc	dptr
   2AF9 E4            [12] 1551 	clr	a
   2AFA 93            [24] 1552 	movc	a,@a+dptr
   2AFB FA            [12] 1553 	mov	r2,a
   2AFC A3            [24] 1554 	inc	dptr
   2AFD E4            [12] 1555 	clr	a
   2AFE 93            [24] 1556 	movc	a,@a+dptr
   2AFF FB            [12] 1557 	mov	r3,a
   2B00 A3            [24] 1558 	inc	dptr
   2B01 E4            [12] 1559 	clr	a
   2B02 93            [24] 1560 	movc	a,@a+dptr
   2B03 FC            [12] 1561 	mov	r4,a
   2B04 8D 82         [24] 1562 	mov	dpl,r5
   2B06 8E 83         [24] 1563 	mov	dph,r6
   2B08 E9            [12] 1564 	mov	a,r1
   2B09 F0            [24] 1565 	movx	@dptr,a
   2B0A EA            [12] 1566 	mov	a,r2
   2B0B A3            [24] 1567 	inc	dptr
   2B0C F0            [24] 1568 	movx	@dptr,a
   2B0D EB            [12] 1569 	mov	a,r3
   2B0E A3            [24] 1570 	inc	dptr
   2B0F F0            [24] 1571 	movx	@dptr,a
   2B10 EC            [12] 1572 	mov	a,r4
   2B11 A3            [24] 1573 	inc	dptr
   2B12 F0            [24] 1574 	movx	@dptr,a
                           1575 ;	radio/parameters.c:255: for (i = 0; i < PARAM_MAX; i++) {
   2B13 0F            [12] 1576 	inc	r7
   2B14 BF 0F 00      [24] 1577 	cjne	r7,#0x0F,00110$
   2B17                    1578 00110$:
   2B17 40 BB         [24] 1579 	jc	00102$
   2B19 22            [24] 1580 	ret
                           1581 ;------------------------------------------------------------
                           1582 ;Allocation info for local variables in function 'param_id'
                           1583 ;------------------------------------------------------------
                           1584 ;	radio/parameters.c:261: param_id(__data char * __pdata name)
                           1585 ;	-----------------------------------------
                           1586 ;	 function param_id
                           1587 ;	-----------------------------------------
   2B1A                    1588 _param_id:
   2B1A AF 82         [24] 1589 	mov	r7,dpl
                           1590 ;	radio/parameters.c:265: for (i = 0; i < PARAM_MAX; i++) {
   2B1C 7E 00         [12] 1591 	mov	r6,#0x00
   2B1E                    1592 00104$:
                           1593 ;	radio/parameters.c:266: if (!strcmp(name, parameter_info[i].name))
   2B1E 8F 03         [24] 1594 	mov	ar3,r7
   2B20 7C 00         [12] 1595 	mov	r4,#0x00
   2B22 7D 40         [12] 1596 	mov	r5,#0x40
   2B24 EE            [12] 1597 	mov	a,r6
   2B25 75 F0 07      [24] 1598 	mov	b,#0x07
   2B28 A4            [48] 1599 	mul	ab
   2B29 24 2A         [12] 1600 	add	a,#_parameter_info
   2B2B F5 82         [12] 1601 	mov	dpl,a
   2B2D 74 CB         [12] 1602 	mov	a,#(_parameter_info >> 8)
   2B2F 35 F0         [12] 1603 	addc	a,b
   2B31 F5 83         [12] 1604 	mov	dph,a
   2B33 E4            [12] 1605 	clr	a
   2B34 93            [24] 1606 	movc	a,@a+dptr
   2B35 F8            [12] 1607 	mov	r0,a
   2B36 A3            [24] 1608 	inc	dptr
   2B37 E4            [12] 1609 	clr	a
   2B38 93            [24] 1610 	movc	a,@a+dptr
   2B39 F9            [12] 1611 	mov	r1,a
   2B3A A3            [24] 1612 	inc	dptr
   2B3B E4            [12] 1613 	clr	a
   2B3C 93            [24] 1614 	movc	a,@a+dptr
   2B3D FA            [12] 1615 	mov	r2,a
   2B3E 90 05 D0      [24] 1616 	mov	dptr,#_strcmp_PARM_2
   2B41 E8            [12] 1617 	mov	a,r0
   2B42 F0            [24] 1618 	movx	@dptr,a
   2B43 E9            [12] 1619 	mov	a,r1
   2B44 A3            [24] 1620 	inc	dptr
   2B45 F0            [24] 1621 	movx	@dptr,a
   2B46 EA            [12] 1622 	mov	a,r2
   2B47 A3            [24] 1623 	inc	dptr
   2B48 F0            [24] 1624 	movx	@dptr,a
   2B49 8B 82         [24] 1625 	mov	dpl,r3
   2B4B 8C 83         [24] 1626 	mov	dph,r4
   2B4D 8D F0         [24] 1627 	mov	b,r5
   2B4F C0 07         [24] 1628 	push	ar7
   2B51 C0 06         [24] 1629 	push	ar6
   2B53 12 60 F2      [24] 1630 	lcall	_strcmp
   2B56 E5 82         [12] 1631 	mov	a,dpl
   2B58 85 83 F0      [24] 1632 	mov	b,dph
   2B5B D0 06         [24] 1633 	pop	ar6
   2B5D D0 07         [24] 1634 	pop	ar7
   2B5F 45 F0         [12] 1635 	orl	a,b
   2B61 60 06         [24] 1636 	jz	00103$
                           1637 ;	radio/parameters.c:265: for (i = 0; i < PARAM_MAX; i++) {
   2B63 0E            [12] 1638 	inc	r6
   2B64 BE 0F 00      [24] 1639 	cjne	r6,#0x0F,00116$
   2B67                    1640 00116$:
   2B67 40 B5         [24] 1641 	jc	00104$
   2B69                    1642 00103$:
                           1643 ;	radio/parameters.c:269: return i;
   2B69 8E 82         [24] 1644 	mov	dpl,r6
   2B6B 22            [24] 1645 	ret
                           1646 ;------------------------------------------------------------
                           1647 ;Allocation info for local variables in function 'param_name'
                           1648 ;------------------------------------------------------------
                           1649 ;param                     Allocated to registers r7 
                           1650 ;------------------------------------------------------------
                           1651 ;	radio/parameters.c:273: param_name(__data enum ParamID param)
                           1652 ;	-----------------------------------------
                           1653 ;	 function param_name
                           1654 ;	-----------------------------------------
   2B6C                    1655 _param_name:
   2B6C AF 82         [24] 1656 	mov	r7,dpl
                           1657 ;	radio/parameters.c:275: if (param < PARAM_MAX) {
   2B6E BF 0F 00      [24] 1658 	cjne	r7,#0x0F,00108$
   2B71                    1659 00108$:
   2B71 50 21         [24] 1660 	jnc	00102$
                           1661 ;	radio/parameters.c:276: return parameter_info[param].name;
   2B73 EF            [12] 1662 	mov	a,r7
   2B74 75 F0 07      [24] 1663 	mov	b,#0x07
   2B77 A4            [48] 1664 	mul	ab
   2B78 24 2A         [12] 1665 	add	a,#_parameter_info
   2B7A F5 82         [12] 1666 	mov	dpl,a
   2B7C 74 CB         [12] 1667 	mov	a,#(_parameter_info >> 8)
   2B7E 35 F0         [12] 1668 	addc	a,b
   2B80 F5 83         [12] 1669 	mov	dph,a
   2B82 E4            [12] 1670 	clr	a
   2B83 93            [24] 1671 	movc	a,@a+dptr
   2B84 FD            [12] 1672 	mov	r5,a
   2B85 A3            [24] 1673 	inc	dptr
   2B86 E4            [12] 1674 	clr	a
   2B87 93            [24] 1675 	movc	a,@a+dptr
   2B88 FE            [12] 1676 	mov	r6,a
   2B89 A3            [24] 1677 	inc	dptr
   2B8A E4            [12] 1678 	clr	a
   2B8B 93            [24] 1679 	movc	a,@a+dptr
   2B8C FF            [12] 1680 	mov	r7,a
   2B8D 8D 82         [24] 1681 	mov	dpl,r5
   2B8F 8E 83         [24] 1682 	mov	dph,r6
   2B91 8F F0         [24] 1683 	mov	b,r7
   2B93 22            [24] 1684 	ret
   2B94                    1685 00102$:
                           1686 ;	radio/parameters.c:278: return 0;
   2B94 90 00 00      [24] 1687 	mov	dptr,#0x0000
   2B97 75 F0 00      [24] 1688 	mov	b,#0x00
   2B9A 22            [24] 1689 	ret
                           1690 ;------------------------------------------------------------
                           1691 ;Allocation info for local variables in function 'constrain'
                           1692 ;------------------------------------------------------------
                           1693 ;	radio/parameters.c:282: uint32_t constrain(__pdata uint32_t v, __pdata uint32_t min, __pdata uint32_t max)
                           1694 ;	-----------------------------------------
                           1695 ;	 function constrain
                           1696 ;	-----------------------------------------
   2B9B                    1697 _constrain:
   2B9B AC 82         [24] 1698 	mov	r4,dpl
   2B9D AD 83         [24] 1699 	mov	r5,dph
   2B9F AE F0         [24] 1700 	mov	r6,b
   2BA1 FF            [12] 1701 	mov	r7,a
                           1702 ;	radio/parameters.c:284: if (v < min) v = min;
   2BA2 78 73         [12] 1703 	mov	r0,#_constrain_PARM_2
   2BA4 C3            [12] 1704 	clr	c
   2BA5 E2            [24] 1705 	movx	a,@r0
   2BA6 F5 F0         [12] 1706 	mov	b,a
   2BA8 EC            [12] 1707 	mov	a,r4
   2BA9 95 F0         [12] 1708 	subb	a,b
   2BAB 08            [12] 1709 	inc	r0
   2BAC E2            [24] 1710 	movx	a,@r0
   2BAD F5 F0         [12] 1711 	mov	b,a
   2BAF ED            [12] 1712 	mov	a,r5
   2BB0 95 F0         [12] 1713 	subb	a,b
   2BB2 08            [12] 1714 	inc	r0
   2BB3 E2            [24] 1715 	movx	a,@r0
   2BB4 F5 F0         [12] 1716 	mov	b,a
   2BB6 EE            [12] 1717 	mov	a,r6
   2BB7 95 F0         [12] 1718 	subb	a,b
   2BB9 08            [12] 1719 	inc	r0
   2BBA E2            [24] 1720 	movx	a,@r0
   2BBB F5 F0         [12] 1721 	mov	b,a
   2BBD EF            [12] 1722 	mov	a,r7
   2BBE 95 F0         [12] 1723 	subb	a,b
   2BC0 50 0D         [24] 1724 	jnc	00102$
   2BC2 78 73         [12] 1725 	mov	r0,#_constrain_PARM_2
   2BC4 E2            [24] 1726 	movx	a,@r0
   2BC5 FC            [12] 1727 	mov	r4,a
   2BC6 08            [12] 1728 	inc	r0
   2BC7 E2            [24] 1729 	movx	a,@r0
   2BC8 FD            [12] 1730 	mov	r5,a
   2BC9 08            [12] 1731 	inc	r0
   2BCA E2            [24] 1732 	movx	a,@r0
   2BCB FE            [12] 1733 	mov	r6,a
   2BCC 08            [12] 1734 	inc	r0
   2BCD E2            [24] 1735 	movx	a,@r0
   2BCE FF            [12] 1736 	mov	r7,a
   2BCF                    1737 00102$:
                           1738 ;	radio/parameters.c:285: if (v > max) v = max;
   2BCF 78 77         [12] 1739 	mov	r0,#_constrain_PARM_3
   2BD1 C3            [12] 1740 	clr	c
   2BD2 E2            [24] 1741 	movx	a,@r0
   2BD3 9C            [12] 1742 	subb	a,r4
   2BD4 08            [12] 1743 	inc	r0
   2BD5 E2            [24] 1744 	movx	a,@r0
   2BD6 9D            [12] 1745 	subb	a,r5
   2BD7 08            [12] 1746 	inc	r0
   2BD8 E2            [24] 1747 	movx	a,@r0
   2BD9 9E            [12] 1748 	subb	a,r6
   2BDA 08            [12] 1749 	inc	r0
   2BDB E2            [24] 1750 	movx	a,@r0
   2BDC 9F            [12] 1751 	subb	a,r7
   2BDD 50 0D         [24] 1752 	jnc	00104$
   2BDF 78 77         [12] 1753 	mov	r0,#_constrain_PARM_3
   2BE1 E2            [24] 1754 	movx	a,@r0
   2BE2 FC            [12] 1755 	mov	r4,a
   2BE3 08            [12] 1756 	inc	r0
   2BE4 E2            [24] 1757 	movx	a,@r0
   2BE5 FD            [12] 1758 	mov	r5,a
   2BE6 08            [12] 1759 	inc	r0
   2BE7 E2            [24] 1760 	movx	a,@r0
   2BE8 FE            [12] 1761 	mov	r6,a
   2BE9 08            [12] 1762 	inc	r0
   2BEA E2            [24] 1763 	movx	a,@r0
   2BEB FF            [12] 1764 	mov	r7,a
   2BEC                    1765 00104$:
                           1766 ;	radio/parameters.c:286: return v;
   2BEC 8C 82         [24] 1767 	mov	dpl,r4
   2BEE 8D 83         [24] 1768 	mov	dph,r5
   2BF0 8E F0         [24] 1769 	mov	b,r6
   2BF2 EF            [12] 1770 	mov	a,r7
   2BF3 22            [24] 1771 	ret
                           1772 ;------------------------------------------------------------
                           1773 ;Allocation info for local variables in function 'flash_write_byte'
                           1774 ;------------------------------------------------------------
                           1775 ;c                         Allocated to stack - sp -2
                           1776 ;address                   Allocated to registers r6 r7 
                           1777 ;------------------------------------------------------------
                           1778 ;	radio/parameters.c:295: flash_write_byte(uint16_t address, uint8_t c) __reentrant __critical
                           1779 ;	-----------------------------------------
                           1780 ;	 function flash_write_byte
                           1781 ;	-----------------------------------------
   2BF4                    1782 _flash_write_byte:
   2BF4 D3            [12] 1783 	setb	c
   2BF5 10 AF 01      [24] 1784 	jbc	ea,00103$
   2BF8 C3            [12] 1785 	clr	c
   2BF9                    1786 00103$:
   2BF9 C0 D0         [24] 1787 	push	psw
   2BFB AE 82         [24] 1788 	mov	r6,dpl
   2BFD AF 83         [24] 1789 	mov	r7,dph
                           1790 ;	radio/parameters.c:297: PSCTL = 0x01;				// set PSWE, clear PSEE
   2BFF 75 8F 01      [24] 1791 	mov	_PSCTL,#0x01
                           1792 ;	radio/parameters.c:298: FLKEY = 0xa5;
   2C02 75 B7 A5      [24] 1793 	mov	_FLKEY,#0xA5
                           1794 ;	radio/parameters.c:299: FLKEY = 0xf1;
   2C05 75 B7 F1      [24] 1795 	mov	_FLKEY,#0xF1
                           1796 ;	radio/parameters.c:300: *(uint8_t __xdata *)address = c;	// write the byte
   2C08 8E 82         [24] 1797 	mov	dpl,r6
   2C0A 8F 83         [24] 1798 	mov	dph,r7
   2C0C E5 81         [12] 1799 	mov	a,sp
   2C0E 24 FD         [12] 1800 	add	a,#0xfd
   2C10 F8            [12] 1801 	mov	r0,a
   2C11 E6            [12] 1802 	mov	a,@r0
   2C12 F0            [24] 1803 	movx	@dptr,a
                           1804 ;	radio/parameters.c:301: PSCTL = 0x00;				// disable PSWE/PSEE
   2C13 75 8F 00      [24] 1805 	mov	_PSCTL,#0x00
   2C16 D0 D0         [24] 1806 	pop	psw
   2C18 92 AF         [24] 1807 	mov	ea,c
   2C1A 22            [24] 1808 	ret
                           1809 ;------------------------------------------------------------
                           1810 ;Allocation info for local variables in function 'flash_read_byte'
                           1811 ;------------------------------------------------------------
                           1812 ;address                   Allocated to registers r6 r7 
                           1813 ;------------------------------------------------------------
                           1814 ;	radio/parameters.c:305: flash_read_byte(uint16_t address) __reentrant
                           1815 ;	-----------------------------------------
                           1816 ;	 function flash_read_byte
                           1817 ;	-----------------------------------------
   2C1B                    1818 _flash_read_byte:
                           1819 ;	radio/parameters.c:308: return *(uint8_t __code *)address;
   2C1B E4            [12] 1820 	clr	a
   2C1C 93            [24] 1821 	movc	a,@a+dptr
   2C1D F5 82         [12] 1822 	mov	dpl,a
   2C1F 22            [24] 1823 	ret
                           1824 ;------------------------------------------------------------
                           1825 ;Allocation info for local variables in function 'calibration_set'
                           1826 ;------------------------------------------------------------
                           1827 ;value                     Allocated to stack - sp -2
                           1828 ;idx                       Allocated to registers r7 
                           1829 ;------------------------------------------------------------
                           1830 ;	radio/parameters.c:312: calibration_set(uint8_t idx, uint8_t value) __reentrant
                           1831 ;	-----------------------------------------
                           1832 ;	 function calibration_set
                           1833 ;	-----------------------------------------
   2C20                    1834 _calibration_set:
                           1835 ;	radio/parameters.c:315: if (idx <= BOARD_MAXTXPOWER && value != 0xFF)
   2C20 E5 82         [12] 1836 	mov	a,dpl
   2C22 FF            [12] 1837 	mov	r7,a
   2C23 24 E1         [12] 1838 	add	a,#0xff - 0x1E
   2C25 40 41         [24] 1839 	jc	00104$
   2C27 A8 81         [24] 1840 	mov	r0,sp
   2C29 18            [12] 1841 	dec	r0
   2C2A 18            [12] 1842 	dec	r0
   2C2B B6 FF 02      [24] 1843 	cjne	@r0,#0xFF,00118$
   2C2E 80 38         [24] 1844 	sjmp	00104$
   2C30                    1845 00118$:
                           1846 ;	radio/parameters.c:318: if (flash_read_byte(FLASH_CALIBRATION_AREA_HIGH + idx) == 0xFF)
   2C30 7E 00         [12] 1847 	mov	r6,#0x00
   2C32 74 DE         [12] 1848 	mov	a,#0xDE
   2C34 2F            [12] 1849 	add	a,r7
   2C35 FC            [12] 1850 	mov	r4,a
   2C36 74 FB         [12] 1851 	mov	a,#0xFB
   2C38 3E            [12] 1852 	addc	a,r6
   2C39 FD            [12] 1853 	mov	r5,a
   2C3A 8C 82         [24] 1854 	mov	dpl,r4
   2C3C 8D 83         [24] 1855 	mov	dph,r5
   2C3E C0 07         [24] 1856 	push	ar7
   2C40 C0 06         [24] 1857 	push	ar6
   2C42 12 2C 1B      [24] 1858 	lcall	_flash_read_byte
   2C45 AD 82         [24] 1859 	mov	r5,dpl
   2C47 D0 06         [24] 1860 	pop	ar6
   2C49 D0 07         [24] 1861 	pop	ar7
   2C4B BD FF 1A      [24] 1862 	cjne	r5,#0xFF,00104$
                           1863 ;	radio/parameters.c:320: flash_write_byte(FLASH_CALIBRATION_AREA_HIGH + idx, value);
   2C4E 74 DE         [12] 1864 	mov	a,#0xDE
   2C50 2F            [12] 1865 	add	a,r7
   2C51 FF            [12] 1866 	mov	r7,a
   2C52 74 FB         [12] 1867 	mov	a,#0xFB
   2C54 3E            [12] 1868 	addc	a,r6
   2C55 FE            [12] 1869 	mov	r6,a
   2C56 A8 81         [24] 1870 	mov	r0,sp
   2C58 18            [12] 1871 	dec	r0
   2C59 18            [12] 1872 	dec	r0
   2C5A E6            [12] 1873 	mov	a,@r0
   2C5B C0 E0         [24] 1874 	push	acc
   2C5D 8F 82         [24] 1875 	mov	dpl,r7
   2C5F 8E 83         [24] 1876 	mov	dph,r6
   2C61 12 2B F4      [24] 1877 	lcall	_flash_write_byte
   2C64 15 81         [12] 1878 	dec	sp
                           1879 ;	radio/parameters.c:321: return true;
   2C66 D3            [12] 1880 	setb	c
   2C67 22            [24] 1881 	ret
   2C68                    1882 00104$:
                           1883 ;	radio/parameters.c:324: return false;
   2C68 C3            [12] 1884 	clr	c
   2C69 22            [24] 1885 	ret
                           1886 ;------------------------------------------------------------
                           1887 ;Allocation info for local variables in function 'calibration_get'
                           1888 ;------------------------------------------------------------
                           1889 ;level                     Allocated to registers r7 
                           1890 ;idx                       Allocated to registers r5 
                           1891 ;crc                       Allocated to registers r6 
                           1892 ;------------------------------------------------------------
                           1893 ;	radio/parameters.c:328: calibration_get(uint8_t level) __reentrant
                           1894 ;	-----------------------------------------
                           1895 ;	 function calibration_get
                           1896 ;	-----------------------------------------
   2C6A                    1897 _calibration_get:
   2C6A AF 82         [24] 1898 	mov	r7,dpl
                           1899 ;	radio/parameters.c:331: uint8_t crc = 0;
   2C6C 7E 00         [12] 1900 	mov	r6,#0x00
                           1901 ;	radio/parameters.c:333: for (idx = 0; idx < FLASH_CALIBRATION_AREA_SIZE; idx++)
   2C6E 7D 00         [12] 1902 	mov	r5,#0x00
   2C70                    1903 00106$:
                           1904 ;	radio/parameters.c:335: crc ^= calibration[idx];
   2C70 ED            [12] 1905 	mov	a,r5
   2C71 90 F7 DE      [24] 1906 	mov	dptr,#_calibration
   2C74 93            [24] 1907 	movc	a,@a+dptr
   2C75 FC            [12] 1908 	mov	r4,a
   2C76 62 06         [12] 1909 	xrl	ar6,a
                           1910 ;	radio/parameters.c:333: for (idx = 0; idx < FLASH_CALIBRATION_AREA_SIZE; idx++)
   2C78 0D            [12] 1911 	inc	r5
   2C79 BD 1F 00      [24] 1912 	cjne	r5,#0x1F,00126$
   2C7C                    1913 00126$:
   2C7C 40 F2         [24] 1914 	jc	00106$
                           1915 ;	radio/parameters.c:338: if (calibration_crc != 0xFF && calibration_crc == crc && level <= BOARD_MAXTXPOWER)
   2C7E 90 F7 FD      [24] 1916 	mov	dptr,#_calibration_crc
   2C81 E4            [12] 1917 	clr	a
   2C82 93            [24] 1918 	movc	a,@a+dptr
   2C83 FD            [12] 1919 	mov	r5,a
   2C84 BD FF 02      [24] 1920 	cjne	r5,#0xFF,00128$
   2C87 80 16         [24] 1921 	sjmp	00103$
   2C89                    1922 00128$:
   2C89 90 F7 FD      [24] 1923 	mov	dptr,#_calibration_crc
   2C8C E4            [12] 1924 	clr	a
   2C8D 93            [24] 1925 	movc	a,@a+dptr
   2C8E FD            [12] 1926 	mov	r5,a
   2C8F B5 06 0D      [24] 1927 	cjne	a,ar6,00103$
   2C92 EF            [12] 1928 	mov	a,r7
   2C93 24 E1         [12] 1929 	add	a,#0xff - 0x1E
   2C95 40 08         [24] 1930 	jc	00103$
                           1931 ;	radio/parameters.c:340: return calibration[level];
   2C97 EF            [12] 1932 	mov	a,r7
   2C98 90 F7 DE      [24] 1933 	mov	dptr,#_calibration
   2C9B 93            [24] 1934 	movc	a,@a+dptr
   2C9C F5 82         [12] 1935 	mov	dpl,a
   2C9E 22            [24] 1936 	ret
   2C9F                    1937 00103$:
                           1938 ;	radio/parameters.c:342: return 0xFF;
   2C9F 75 82 FF      [24] 1939 	mov	dpl,#0xFF
   2CA2 22            [24] 1940 	ret
                           1941 ;------------------------------------------------------------
                           1942 ;Allocation info for local variables in function 'calibration_lock'
                           1943 ;------------------------------------------------------------
                           1944 ;idx                       Allocated to registers r6 
                           1945 ;crc                       Allocated to registers r7 
                           1946 ;cal                       Allocated to registers r3 
                           1947 ;------------------------------------------------------------
                           1948 ;	radio/parameters.c:346: calibration_lock() __reentrant
                           1949 ;	-----------------------------------------
                           1950 ;	 function calibration_lock
                           1951 ;	-----------------------------------------
   2CA3                    1952 _calibration_lock:
                           1953 ;	radio/parameters.c:349: uint8_t crc = 0;
   2CA3 7F 00         [12] 1954 	mov	r7,#0x00
                           1955 ;	radio/parameters.c:352: if (flash_read_byte(FLASH_CALIBRATION_CRC_HIGH) == 0xFF)
   2CA5 90 FB FD      [24] 1956 	mov	dptr,#0xFBFD
   2CA8 C0 07         [24] 1957 	push	ar7
   2CAA 12 2C 1B      [24] 1958 	lcall	_flash_read_byte
   2CAD AE 82         [24] 1959 	mov	r6,dpl
   2CAF D0 07         [24] 1960 	pop	ar7
   2CB1 BE FF 6A      [24] 1961 	cjne	r6,#0xFF,00105$
                           1962 ;	radio/parameters.c:354: for (idx=0; idx < FLASH_CALIBRATION_AREA_SIZE; idx++)
   2CB4 7E 00         [12] 1963 	mov	r6,#0x00
   2CB6                    1964 00106$:
                           1965 ;	radio/parameters.c:356: uint8_t cal = flash_read_byte(FLASH_CALIBRATION_AREA_HIGH + idx);
   2CB6 8E 04         [24] 1966 	mov	ar4,r6
   2CB8 7D 00         [12] 1967 	mov	r5,#0x00
   2CBA 8C 02         [24] 1968 	mov	ar2,r4
   2CBC 8D 03         [24] 1969 	mov	ar3,r5
   2CBE 74 DE         [12] 1970 	mov	a,#0xDE
   2CC0 2A            [12] 1971 	add	a,r2
   2CC1 FA            [12] 1972 	mov	r2,a
   2CC2 74 FB         [12] 1973 	mov	a,#0xFB
   2CC4 3B            [12] 1974 	addc	a,r3
   2CC5 FB            [12] 1975 	mov	r3,a
   2CC6 8A 82         [24] 1976 	mov	dpl,r2
   2CC8 8B 83         [24] 1977 	mov	dph,r3
   2CCA C0 07         [24] 1978 	push	ar7
   2CCC C0 06         [24] 1979 	push	ar6
   2CCE C0 05         [24] 1980 	push	ar5
   2CD0 C0 04         [24] 1981 	push	ar4
   2CD2 12 2C 1B      [24] 1982 	lcall	_flash_read_byte
   2CD5 AB 82         [24] 1983 	mov	r3,dpl
   2CD7 D0 04         [24] 1984 	pop	ar4
   2CD9 D0 05         [24] 1985 	pop	ar5
   2CDB D0 06         [24] 1986 	pop	ar6
   2CDD D0 07         [24] 1987 	pop	ar7
                           1988 ;	radio/parameters.c:357: crc ^= cal;
   2CDF EB            [12] 1989 	mov	a,r3
   2CE0 62 07         [12] 1990 	xrl	ar7,a
                           1991 ;	radio/parameters.c:358: if (cal == 0xFF)
   2CE2 BB FF 1B      [24] 1992 	cjne	r3,#0xFF,00107$
                           1993 ;	radio/parameters.c:360: printf("dBm level %u not calibrated\n",idx);
   2CE5 C0 04         [24] 1994 	push	ar4
   2CE7 C0 05         [24] 1995 	push	ar5
   2CE9 74 93         [12] 1996 	mov	a,#__str_0
   2CEB C0 E0         [24] 1997 	push	acc
   2CED 74 CB         [12] 1998 	mov	a,#(__str_0 >> 8)
   2CEF C0 E0         [24] 1999 	push	acc
   2CF1 74 80         [12] 2000 	mov	a,#0x80
   2CF3 C0 E0         [24] 2001 	push	acc
   2CF5 12 30 0B      [24] 2002 	lcall	_printfl
   2CF8 E5 81         [12] 2003 	mov	a,sp
   2CFA 24 FB         [12] 2004 	add	a,#0xfb
   2CFC F5 81         [12] 2005 	mov	sp,a
                           2006 ;	radio/parameters.c:361: return false;
   2CFE C3            [12] 2007 	clr	c
   2CFF 22            [24] 2008 	ret
   2D00                    2009 00107$:
                           2010 ;	radio/parameters.c:354: for (idx=0; idx < FLASH_CALIBRATION_AREA_SIZE; idx++)
   2D00 0E            [12] 2011 	inc	r6
   2D01 BE 1F 00      [24] 2012 	cjne	r6,#0x1F,00126$
   2D04                    2013 00126$:
   2D04 40 B0         [24] 2014 	jc	00106$
                           2015 ;	radio/parameters.c:366: flash_write_byte(FLASH_CALIBRATION_CRC_HIGH, crc);
   2D06 C0 07         [24] 2016 	push	ar7
   2D08 90 FB FD      [24] 2017 	mov	dptr,#0xFBFD
   2D0B 12 2B F4      [24] 2018 	lcall	_flash_write_byte
   2D0E 15 81         [12] 2019 	dec	sp
                           2020 ;	radio/parameters.c:369: flash_write_byte(FLASH_LOCK_BYTE, 0xFE);
   2D10 74 FE         [12] 2021 	mov	a,#0xFE
   2D12 C0 E0         [24] 2022 	push	acc
   2D14 90 FB FF      [24] 2023 	mov	dptr,#0xFBFF
   2D17 12 2B F4      [24] 2024 	lcall	_flash_write_byte
   2D1A 15 81         [12] 2025 	dec	sp
                           2026 ;	radio/parameters.c:370: return true;
   2D1C D3            [12] 2027 	setb	c
   2D1D 22            [24] 2028 	ret
   2D1E                    2029 00105$:
                           2030 ;	radio/parameters.c:372: return false;
   2D1E C3            [12] 2031 	clr	c
   2D1F 22            [24] 2032 	ret
                           2033 	.area CSEG    (CODE)
                           2034 	.area CONST   (CODE)
   CB2A                    2035 _parameter_info:
   CB2A B0 CB 80           2036 	.byte _str_1,(_str_1 >> 8),#0x80
   CB2D 19 00 00 00        2037 	.byte #0x19,#0x00,#0x00,#0x00	; 25
   CB31 B7 CB 80           2038 	.byte _str_2,(_str_2 >> 8),#0x80
   CB34 39 00 00 00        2039 	.byte #0x39,#0x00,#0x00,#0x00	; 57
   CB38 C4 CB 80           2040 	.byte _str_3,(_str_3 >> 8),#0x80
   CB3B 40 00 00 00        2041 	.byte #0x40,#0x00,#0x00,#0x00	; 64
   CB3F CE CB 80           2042 	.byte _str_4,(_str_4 >> 8),#0x80
   CB42 19 00 00 00        2043 	.byte #0x19,#0x00,#0x00,#0x00	; 25
   CB46 D4 CB 80           2044 	.byte _str_5,(_str_5 >> 8),#0x80
   CB49 00 00 00 00        2045 	.byte #0x00,#0x00,#0x00,#0x00	; 0
   CB4D DC CB 80           2046 	.byte _str_6,(_str_6 >> 8),#0x80
   CB50 01 00 00 00        2047 	.byte #0x01,#0x00,#0x00,#0x00	; 1
   CB54 E0 CB 80           2048 	.byte _str_7,(_str_7 >> 8),#0x80
   CB57 01 00 00 00        2049 	.byte #0x01,#0x00,#0x00,#0x00	; 1
   CB5B E8 CB 80           2050 	.byte _str_8,(_str_8 >> 8),#0x80
   CB5E 01 00 00 00        2051 	.byte #0x01,#0x00,#0x00,#0x00	; 1
   CB62 F2 CB 80           2052 	.byte _str_9,(_str_9 >> 8),#0x80
   CB65 00 00 00 00        2053 	.byte #0x00,#0x00,#0x00,#0x00	; 0
   CB69 FB CB 80           2054 	.byte _str_10,(_str_10 >> 8),#0x80
   CB6C 00 00 00 00        2055 	.byte #0x00,#0x00,#0x00,#0x00	; 0
   CB70 04 CC 80           2056 	.byte _str_11,(_str_11 >> 8),#0x80
   CB73 00 00 00 00        2057 	.byte #0x00,#0x00,#0x00,#0x00	; 0
   CB77 11 CC 80           2058 	.byte _str_12,(_str_12 >> 8),#0x80
   CB7A 64 00 00 00        2059 	.byte #0x64,#0x00,#0x00,#0x00	; 100
   CB7E 1C CC 80           2060 	.byte _str_13,(_str_13 >> 8),#0x80
   CB81 00 00 00 00        2061 	.byte #0x00,#0x00,#0x00,#0x00	; 0
   CB85 25 CC 80           2062 	.byte _str_14,(_str_14 >> 8),#0x80
   CB88 00 00 00 00        2063 	.byte #0x00,#0x00,#0x00,#0x00	; 0
   CB8C 30 CC 80           2064 	.byte _str_15,(_str_15 >> 8),#0x80
   CB8F 00 00 00 00        2065 	.byte #0x00,#0x00,#0x00,#0x00	; 0
                     F7DE  2066 _calibration	=	0xf7de
                     F7FD  2067 _calibration_crc	=	0xf7fd
   CB93                    2068 __str_0:
   CB93 64 42 6D 20 6C 65  2069 	.ascii "dBm level %u not calibrated"
        76 65 6C 20 25 75
        20 6E 6F 74 20 63
        61 6C 69 62 72 61
        74 65 64
   CBAE 0A                 2070 	.db 0x0A
   CBAF 00                 2071 	.db 0x00
   CBB0                    2072 _str_1:
   CBB0 46 4F 52 4D 41 54  2073 	.ascii "FORMAT"
   CBB6 00                 2074 	.db 0x00
   CBB7                    2075 _str_2:
   CBB7 53 45 52 49 41 4C  2076 	.ascii "SERIAL_SPEED"
        5F 53 50 45 45 44
   CBC3 00                 2077 	.db 0x00
   CBC4                    2078 _str_3:
   CBC4 41 49 52 5F 53 50  2079 	.ascii "AIR_SPEED"
        45 45 44
   CBCD 00                 2080 	.db 0x00
   CBCE                    2081 _str_4:
   CBCE 4E 45 54 49 44     2082 	.ascii "NETID"
   CBD3 00                 2083 	.db 0x00
   CBD4                    2084 _str_5:
   CBD4 54 58 50 4F 57 45  2085 	.ascii "TXPOWER"
        52
   CBDB 00                 2086 	.db 0x00
   CBDC                    2087 _str_6:
   CBDC 45 43 43           2088 	.ascii "ECC"
   CBDF 00                 2089 	.db 0x00
   CBE0                    2090 _str_7:
   CBE0 4D 41 56 4C 49 4E  2091 	.ascii "MAVLINK"
        4B
   CBE7 00                 2092 	.db 0x00
   CBE8                    2093 _str_8:
   CBE8 4F 50 50 52 45 53  2094 	.ascii "OPPRESEND"
        45 4E 44
   CBF1 00                 2095 	.db 0x00
   CBF2                    2096 _str_9:
   CBF2 4D 49 4E 5F 46 52  2097 	.ascii "MIN_FREQ"
        45 51
   CBFA 00                 2098 	.db 0x00
   CBFB                    2099 _str_10:
   CBFB 4D 41 58 5F 46 52  2100 	.ascii "MAX_FREQ"
        45 51
   CC03 00                 2101 	.db 0x00
   CC04                    2102 _str_11:
   CC04 4E 55 4D 5F 43 48  2103 	.ascii "NUM_CHANNELS"
        41 4E 4E 45 4C 53
   CC10 00                 2104 	.db 0x00
   CC11                    2105 _str_12:
   CC11 44 55 54 59 5F 43  2106 	.ascii "DUTY_CYCLE"
        59 43 4C 45
   CC1B 00                 2107 	.db 0x00
   CC1C                    2108 _str_13:
   CC1C 4C 42 54 5F 52 53  2109 	.ascii "LBT_RSSI"
        53 49
   CC24 00                 2110 	.db 0x00
   CC25                    2111 _str_14:
   CC25 4D 41 4E 43 48 45  2112 	.ascii "MANCHESTER"
        53 54 45 52
   CC2F 00                 2113 	.db 0x00
   CC30                    2114 _str_15:
   CC30 52 54 53 43 54 53  2115 	.ascii "RTSCTS"
   CC36 00                 2116 	.db 0x00
                           2117 	.area XINIT   (CODE)
                           2118 	.area CABS    (ABS,CODE)
