                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:06 2013
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
                             16 	.globl _flash_write_scratch
                             17 	.globl _flash_read_scratch
                             18 	.globl _flash_erase_scratch
                             19 	.globl _serial_device_valid_speed
                             20 	.globl _strcmp
                             21 	.globl _TDM_SYNC_PIN
                             22 	.globl _SDN
                             23 	.globl _NSS1
                             24 	.globl _IRQ
                             25 	.globl _BUTTON_DOWN
                             26 	.globl _BUTTON_UP
                             27 	.globl _BUTTON_ENTER
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
                     00A6   552 _TDM_SYNC_PIN	=	0x00a6
                            553 ;--------------------------------------------------------
                            554 ; overlayable register banks
                            555 ;--------------------------------------------------------
                            556 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     557 	.ds 8
                            558 ;--------------------------------------------------------
                            559 ; internal ram data
                            560 ;--------------------------------------------------------
                            561 	.area DSEG    (DATA)
   0036                     562 _param_check_PARM_2:
   0036                     563 	.ds 4
   003A                     564 _param_load_sloc0_1_0:
   003A                     565 	.ds 2
   003C                     566 _param_load_sloc1_1_0:
   003C                     567 	.ds 2
   003E                     568 _param_load_sloc2_1_0:
   003E                     569 	.ds 2
   0040                     570 _param_load_sloc3_1_0:
   0040                     571 	.ds 4
                            572 ;--------------------------------------------------------
                            573 ; overlayable items in internal ram 
                            574 ;--------------------------------------------------------
                            575 	.area	OSEG    (OVR,DATA)
                            576 	.area	OSEG    (OVR,DATA)
                            577 ;--------------------------------------------------------
                            578 ; indirectly addressable internal ram data
                            579 ;--------------------------------------------------------
                            580 	.area ISEG    (DATA)
                            581 ;--------------------------------------------------------
                            582 ; absolute internal ram data
                            583 ;--------------------------------------------------------
                            584 	.area IABS    (ABS,DATA)
                            585 	.area IABS    (ABS,DATA)
                            586 ;--------------------------------------------------------
                            587 ; bit data
                            588 ;--------------------------------------------------------
                            589 	.area BSEG    (BIT)
   0010                     590 _param_check_sloc0_1_0:
   0010                     591 	.ds 1
                            592 ;--------------------------------------------------------
                            593 ; paged external ram data
                            594 ;--------------------------------------------------------
                            595 	.area PSEG    (PAG,XDATA)
   0069                     596 _param_set_PARM_2:
   0069                     597 	.ds 4
   006D                     598 _param_save_i_1_140:
   006D                     599 	.ds 2
   006F                     600 _constrain_PARM_2:
   006F                     601 	.ds 4
   0073                     602 _constrain_PARM_3:
   0073                     603 	.ds 4
                            604 ;--------------------------------------------------------
                            605 ; external ram data
                            606 ;--------------------------------------------------------
                            607 	.area XSEG    (XDATA)
   0323                     608 _parameter_values::
   0323                     609 	.ds 60
                            610 ;--------------------------------------------------------
                            611 ; absolute external ram data
                            612 ;--------------------------------------------------------
                            613 	.area XABS    (ABS,XDATA)
                            614 ;--------------------------------------------------------
                            615 ; external initialized ram data
                            616 ;--------------------------------------------------------
                            617 	.area XISEG   (XDATA)
                            618 	.area HOME    (CODE)
                            619 	.area GSINIT0 (CODE)
                            620 	.area GSINIT1 (CODE)
                            621 	.area GSINIT2 (CODE)
                            622 	.area GSINIT3 (CODE)
                            623 	.area GSINIT4 (CODE)
                            624 	.area GSINIT5 (CODE)
                            625 	.area GSINIT  (CODE)
                            626 	.area GSFINAL (CODE)
                            627 	.area CSEG    (CODE)
                            628 ;--------------------------------------------------------
                            629 ; global & static initialisations
                            630 ;--------------------------------------------------------
                            631 	.area HOME    (CODE)
                            632 	.area GSINIT  (CODE)
                            633 	.area GSFINAL (CODE)
                            634 	.area GSINIT  (CODE)
                            635 ;--------------------------------------------------------
                            636 ; Home
                            637 ;--------------------------------------------------------
                            638 	.area HOME    (CODE)
                            639 	.area HOME    (CODE)
                            640 ;--------------------------------------------------------
                            641 ; code
                            642 ;--------------------------------------------------------
                            643 	.area CSEG    (CODE)
                            644 ;------------------------------------------------------------
                            645 ;Allocation info for local variables in function 'param_check'
                            646 ;------------------------------------------------------------
                            647 ;val                       Allocated with name '_param_check_PARM_2'
                            648 ;------------------------------------------------------------
                            649 ;	radio/parameters.c:80: param_check(__pdata enum ParamID id, __data uint32_t val)
                            650 ;	-----------------------------------------
                            651 ;	 function param_check
                            652 ;	-----------------------------------------
   254F                     653 _param_check:
                     0007   654 	ar7 = 0x07
                     0006   655 	ar6 = 0x06
                     0005   656 	ar5 = 0x05
                     0004   657 	ar4 = 0x04
                     0003   658 	ar3 = 0x03
                     0002   659 	ar2 = 0x02
                     0001   660 	ar1 = 0x01
                     0000   661 	ar0 = 0x00
   254F AF 82         [24]  662 	mov	r7,dpl
                            663 ;	radio/parameters.c:83: if (id >= PARAM_MAX)
   2551 BF 0F 00      [24]  664 	cjne	r7,#0x0F,00136$
   2554                     665 00136$:
                            666 ;	radio/parameters.c:84: return false;
   2554 40 01         [24]  667 	jc	00102$
   2556 22            [24]  668 	ret
   2557                     669 00102$:
                            670 ;	radio/parameters.c:86: switch (id) {
   2557 EF            [12]  671 	mov	a,r7
   2558 24 F8         [12]  672 	add	a,#0xff - 0x07
   255A 40 63         [24]  673 	jc	00118$
   255C EF            [12]  674 	mov	a,r7
   255D 2F            [12]  675 	add	a,r7
   255E 2F            [12]  676 	add	a,r7
   255F 90 25 63      [24]  677 	mov	dptr,#00139$
   2562 73            [24]  678 	jmp	@a+dptr
   2563                     679 00139$:
   2563 02 25 7B      [24]  680 	ljmp	00103$
   2566 02 25 7D      [24]  681 	ljmp	00104$
   2569 02 25 87      [24]  682 	ljmp	00105$
   256C 02 25 99      [24]  683 	ljmp	00108$
   256F 02 25 9B      [24]  684 	ljmp	00109$
   2572 02 25 AD      [24]  685 	ljmp	00112$
   2575 02 25 AD      [24]  686 	ljmp	00113$
   2578 02 25 AD      [24]  687 	ljmp	00114$
                            688 ;	radio/parameters.c:87: case PARAM_FORMAT:
   257B                     689 00103$:
                            690 ;	radio/parameters.c:88: return false;
   257B C3            [12]  691 	clr	c
                            692 ;	radio/parameters.c:90: case PARAM_SERIAL_SPEED:
   257C 22            [24]  693 	ret
   257D                     694 00104$:
                            695 ;	radio/parameters.c:91: return serial_device_valid_speed(val);
   257D AF 36         [24]  696 	mov	r7,_param_check_PARM_2
   257F 8F 82         [24]  697 	mov	dpl,r7
   2581 12 44 40      [24]  698 	lcall	_serial_device_valid_speed
   2584 92 10         [24]  699 	mov  _param_check_sloc0_1_0,c
                            700 ;	radio/parameters.c:93: case PARAM_AIR_SPEED:
   2586 22            [24]  701 	ret
   2587                     702 00105$:
                            703 ;	radio/parameters.c:94: if (val > 256)
   2587 C3            [12]  704 	clr	c
   2588 E4            [12]  705 	clr	a
   2589 95 36         [12]  706 	subb	a,_param_check_PARM_2
   258B 74 01         [12]  707 	mov	a,#0x01
   258D 95 37         [12]  708 	subb	a,(_param_check_PARM_2 + 1)
   258F E4            [12]  709 	clr	a
   2590 95 38         [12]  710 	subb	a,(_param_check_PARM_2 + 2)
   2592 E4            [12]  711 	clr	a
   2593 95 39         [12]  712 	subb	a,(_param_check_PARM_2 + 3)
   2595 50 28         [24]  713 	jnc	00118$
                            714 ;	radio/parameters.c:95: return false;
   2597 C3            [12]  715 	clr	c
                            716 ;	radio/parameters.c:98: case PARAM_NETID:
   2598 22            [24]  717 	ret
   2599                     718 00108$:
                            719 ;	radio/parameters.c:100: return true;
   2599 D3            [12]  720 	setb	c
                            721 ;	radio/parameters.c:102: case PARAM_TXPOWER:
   259A 22            [24]  722 	ret
   259B                     723 00109$:
                            724 ;	radio/parameters.c:103: if (val > BOARD_MAXTXPOWER)
   259B C3            [12]  725 	clr	c
   259C 74 14         [12]  726 	mov	a,#0x14
   259E 95 36         [12]  727 	subb	a,_param_check_PARM_2
   25A0 E4            [12]  728 	clr	a
   25A1 95 37         [12]  729 	subb	a,(_param_check_PARM_2 + 1)
   25A3 E4            [12]  730 	clr	a
   25A4 95 38         [12]  731 	subb	a,(_param_check_PARM_2 + 2)
   25A6 E4            [12]  732 	clr	a
   25A7 95 39         [12]  733 	subb	a,(_param_check_PARM_2 + 3)
   25A9 50 14         [24]  734 	jnc	00118$
                            735 ;	radio/parameters.c:104: return false;
   25AB C3            [12]  736 	clr	c
                            737 ;	radio/parameters.c:107: case PARAM_ECC:
   25AC 22            [24]  738 	ret
   25AD                     739 00112$:
                            740 ;	radio/parameters.c:108: case PARAM_MAVLINK:
   25AD                     741 00113$:
                            742 ;	radio/parameters.c:109: case PARAM_OPPRESEND:
   25AD                     743 00114$:
                            744 ;	radio/parameters.c:111: if (val > 1)
   25AD C3            [12]  745 	clr	c
   25AE 74 01         [12]  746 	mov	a,#0x01
   25B0 95 36         [12]  747 	subb	a,_param_check_PARM_2
   25B2 E4            [12]  748 	clr	a
   25B3 95 37         [12]  749 	subb	a,(_param_check_PARM_2 + 1)
   25B5 E4            [12]  750 	clr	a
   25B6 95 38         [12]  751 	subb	a,(_param_check_PARM_2 + 2)
   25B8 E4            [12]  752 	clr	a
   25B9 95 39         [12]  753 	subb	a,(_param_check_PARM_2 + 3)
   25BB 50 02         [24]  754 	jnc	00118$
                            755 ;	radio/parameters.c:112: return false;
   25BD C3            [12]  756 	clr	c
                            757 ;	radio/parameters.c:118: }
   25BE 22            [24]  758 	ret
   25BF                     759 00118$:
                            760 ;	radio/parameters.c:119: return true;
   25BF D3            [12]  761 	setb	c
   25C0 22            [24]  762 	ret
                            763 ;------------------------------------------------------------
                            764 ;Allocation info for local variables in function 'param_set'
                            765 ;------------------------------------------------------------
                            766 ;param                     Allocated to registers r7 
                            767 ;------------------------------------------------------------
                            768 ;	radio/parameters.c:123: param_set(__data enum ParamID param, __pdata param_t value)
                            769 ;	-----------------------------------------
                            770 ;	 function param_set
                            771 ;	-----------------------------------------
   25C1                     772 _param_set:
   25C1 AF 82         [24]  773 	mov	r7,dpl
                            774 ;	radio/parameters.c:126: if (!param_check(param, value))
   25C3 78 69         [12]  775 	mov	r0,#_param_set_PARM_2
   25C5 E2            [24]  776 	movx	a,@r0
   25C6 F5 36         [12]  777 	mov	_param_check_PARM_2,a
   25C8 08            [12]  778 	inc	r0
   25C9 E2            [24]  779 	movx	a,@r0
   25CA F5 37         [12]  780 	mov	(_param_check_PARM_2 + 1),a
   25CC 08            [12]  781 	inc	r0
   25CD E2            [24]  782 	movx	a,@r0
   25CE F5 38         [12]  783 	mov	(_param_check_PARM_2 + 2),a
   25D0 08            [12]  784 	inc	r0
   25D1 E2            [24]  785 	movx	a,@r0
   25D2 F5 39         [12]  786 	mov	(_param_check_PARM_2 + 3),a
   25D4 8F 82         [24]  787 	mov	dpl,r7
   25D6 C0 07         [24]  788 	push	ar7
   25D8 12 25 4F      [24]  789 	lcall	_param_check
   25DB D0 07         [24]  790 	pop	ar7
                            791 ;	radio/parameters.c:127: return false;
   25DD 40 01         [24]  792 	jc	00102$
   25DF 22            [24]  793 	ret
   25E0                     794 00102$:
                            795 ;	radio/parameters.c:130: switch (param) {
   25E0 BF 04 02      [24]  796 	cjne	r7,#0x04,00155$
   25E3 80 1F         [24]  797 	sjmp	00103$
   25E5                     798 00155$:
   25E5 BF 06 03      [24]  799 	cjne	r7,#0x06,00156$
   25E8 02 26 C7      [24]  800 	ljmp	00108$
   25EB                     801 00156$:
   25EB BF 07 03      [24]  802 	cjne	r7,#0x07,00157$
   25EE 02 26 F1      [24]  803 	ljmp	00109$
   25F1                     804 00157$:
   25F1 BF 0B 02      [24]  805 	cjne	r7,#0x0B,00158$
   25F4 80 2D         [24]  806 	sjmp	00104$
   25F6                     807 00158$:
   25F6 BF 0C 02      [24]  808 	cjne	r7,#0x0C,00159$
   25F9 80 6F         [24]  809 	sjmp	00105$
   25FB                     810 00159$:
   25FB BF 0E 03      [24]  811 	cjne	r7,#0x0E,00160$
   25FE 02 27 1B      [24]  812 	ljmp	00110$
   2601                     813 00160$:
   2601 02 27 43      [24]  814 	ljmp	00112$
                            815 ;	radio/parameters.c:131: case PARAM_TXPOWER:
   2604                     816 00103$:
                            817 ;	radio/parameters.c:134: radio_set_transmit_power(value);
   2604 78 69         [12]  818 	mov	r0,#_param_set_PARM_2
   2606 E2            [24]  819 	movx	a,@r0
   2607 F5 82         [12]  820 	mov	dpl,a
   2609 C0 07         [24]  821 	push	ar7
   260B 12 38 72      [24]  822 	lcall	_radio_set_transmit_power
                            823 ;	radio/parameters.c:135: value = radio_get_transmit_power();
   260E 12 38 B2      [24]  824 	lcall	_radio_get_transmit_power
   2611 AE 82         [24]  825 	mov	r6,dpl
   2613 D0 07         [24]  826 	pop	ar7
   2615 78 69         [12]  827 	mov	r0,#_param_set_PARM_2
   2617 EE            [12]  828 	mov	a,r6
   2618 F2            [24]  829 	movx	@r0,a
   2619 08            [12]  830 	inc	r0
   261A E4            [12]  831 	clr	a
   261B F2            [24]  832 	movx	@r0,a
   261C 08            [12]  833 	inc	r0
   261D F2            [24]  834 	movx	@r0,a
   261E 08            [12]  835 	inc	r0
   261F F2            [24]  836 	movx	@r0,a
                            837 ;	radio/parameters.c:136: break;
   2620 02 27 43      [24]  838 	ljmp	00112$
                            839 ;	radio/parameters.c:138: case PARAM_DUTY_CYCLE:
   2623                     840 00104$:
                            841 ;	radio/parameters.c:140: value = constrain(value, 0, 100);
   2623 78 6F         [12]  842 	mov	r0,#_constrain_PARM_2
   2625 E4            [12]  843 	clr	a
   2626 F2            [24]  844 	movx	@r0,a
   2627 08            [12]  845 	inc	r0
   2628 F2            [24]  846 	movx	@r0,a
   2629 08            [12]  847 	inc	r0
   262A F2            [24]  848 	movx	@r0,a
   262B 08            [12]  849 	inc	r0
   262C F2            [24]  850 	movx	@r0,a
   262D 78 73         [12]  851 	mov	r0,#_constrain_PARM_3
   262F 74 64         [12]  852 	mov	a,#0x64
   2631 F2            [24]  853 	movx	@r0,a
   2632 08            [12]  854 	inc	r0
   2633 E4            [12]  855 	clr	a
   2634 F2            [24]  856 	movx	@r0,a
   2635 08            [12]  857 	inc	r0
   2636 F2            [24]  858 	movx	@r0,a
   2637 08            [12]  859 	inc	r0
   2638 F2            [24]  860 	movx	@r0,a
   2639 78 69         [12]  861 	mov	r0,#_param_set_PARM_2
   263B E2            [24]  862 	movx	a,@r0
   263C F5 82         [12]  863 	mov	dpl,a
   263E 08            [12]  864 	inc	r0
   263F E2            [24]  865 	movx	a,@r0
   2640 F5 83         [12]  866 	mov	dph,a
   2642 08            [12]  867 	inc	r0
   2643 E2            [24]  868 	movx	a,@r0
   2644 F5 F0         [12]  869 	mov	b,a
   2646 08            [12]  870 	inc	r0
   2647 E2            [24]  871 	movx	a,@r0
   2648 C0 07         [24]  872 	push	ar7
   264A 12 2A 72      [24]  873 	lcall	_constrain
   264D AB 82         [24]  874 	mov	r3,dpl
   264F AC 83         [24]  875 	mov	r4,dph
   2651 AD F0         [24]  876 	mov	r5,b
   2653 FE            [12]  877 	mov	r6,a
   2654 D0 07         [24]  878 	pop	ar7
   2656 78 69         [12]  879 	mov	r0,#_param_set_PARM_2
   2658 EB            [12]  880 	mov	a,r3
   2659 F2            [24]  881 	movx	@r0,a
   265A 08            [12]  882 	inc	r0
   265B EC            [12]  883 	mov	a,r4
   265C F2            [24]  884 	movx	@r0,a
   265D 08            [12]  885 	inc	r0
   265E ED            [12]  886 	mov	a,r5
   265F F2            [24]  887 	movx	@r0,a
   2660 08            [12]  888 	inc	r0
   2661 EE            [12]  889 	mov	a,r6
   2662 F2            [24]  890 	movx	@r0,a
                            891 ;	radio/parameters.c:141: duty_cycle = value;
   2663 78 C4         [12]  892 	mov	r0,#_duty_cycle
   2665 EB            [12]  893 	mov	a,r3
   2666 F2            [24]  894 	movx	@r0,a
                            895 ;	radio/parameters.c:142: break;
   2667 02 27 43      [24]  896 	ljmp	00112$
                            897 ;	radio/parameters.c:144: case PARAM_LBT_RSSI:
   266A                     898 00105$:
                            899 ;	radio/parameters.c:146: if (value != 0) {
   266A 78 69         [12]  900 	mov	r0,#_param_set_PARM_2
   266C E2            [24]  901 	movx	a,@r0
   266D F5 F0         [12]  902 	mov	b,a
   266F 08            [12]  903 	inc	r0
   2670 E2            [24]  904 	movx	a,@r0
   2671 42 F0         [12]  905 	orl	b,a
   2673 08            [12]  906 	inc	r0
   2674 E2            [24]  907 	movx	a,@r0
   2675 42 F0         [12]  908 	orl	b,a
   2677 08            [12]  909 	inc	r0
   2678 E2            [24]  910 	movx	a,@r0
   2679 45 F0         [12]  911 	orl	a,b
   267B 60 42         [24]  912 	jz	00107$
                            913 ;	radio/parameters.c:147: value = constrain(value, 25, 220);
   267D 78 6F         [12]  914 	mov	r0,#_constrain_PARM_2
   267F 74 19         [12]  915 	mov	a,#0x19
   2681 F2            [24]  916 	movx	@r0,a
   2682 08            [12]  917 	inc	r0
   2683 E4            [12]  918 	clr	a
   2684 F2            [24]  919 	movx	@r0,a
   2685 08            [12]  920 	inc	r0
   2686 F2            [24]  921 	movx	@r0,a
   2687 08            [12]  922 	inc	r0
   2688 F2            [24]  923 	movx	@r0,a
   2689 78 73         [12]  924 	mov	r0,#_constrain_PARM_3
   268B 74 DC         [12]  925 	mov	a,#0xDC
   268D F2            [24]  926 	movx	@r0,a
   268E 08            [12]  927 	inc	r0
   268F E4            [12]  928 	clr	a
   2690 F2            [24]  929 	movx	@r0,a
   2691 08            [12]  930 	inc	r0
   2692 F2            [24]  931 	movx	@r0,a
   2693 08            [12]  932 	inc	r0
   2694 F2            [24]  933 	movx	@r0,a
   2695 78 69         [12]  934 	mov	r0,#_param_set_PARM_2
   2697 E2            [24]  935 	movx	a,@r0
   2698 F5 82         [12]  936 	mov	dpl,a
   269A 08            [12]  937 	inc	r0
   269B E2            [24]  938 	movx	a,@r0
   269C F5 83         [12]  939 	mov	dph,a
   269E 08            [12]  940 	inc	r0
   269F E2            [24]  941 	movx	a,@r0
   26A0 F5 F0         [12]  942 	mov	b,a
   26A2 08            [12]  943 	inc	r0
   26A3 E2            [24]  944 	movx	a,@r0
   26A4 C0 07         [24]  945 	push	ar7
   26A6 12 2A 72      [24]  946 	lcall	_constrain
   26A9 AB 82         [24]  947 	mov	r3,dpl
   26AB AC 83         [24]  948 	mov	r4,dph
   26AD AD F0         [24]  949 	mov	r5,b
   26AF FE            [12]  950 	mov	r6,a
   26B0 D0 07         [24]  951 	pop	ar7
   26B2 78 69         [12]  952 	mov	r0,#_param_set_PARM_2
   26B4 EB            [12]  953 	mov	a,r3
   26B5 F2            [24]  954 	movx	@r0,a
   26B6 08            [12]  955 	inc	r0
   26B7 EC            [12]  956 	mov	a,r4
   26B8 F2            [24]  957 	movx	@r0,a
   26B9 08            [12]  958 	inc	r0
   26BA ED            [12]  959 	mov	a,r5
   26BB F2            [24]  960 	movx	@r0,a
   26BC 08            [12]  961 	inc	r0
   26BD EE            [12]  962 	mov	a,r6
   26BE F2            [24]  963 	movx	@r0,a
   26BF                     964 00107$:
                            965 ;	radio/parameters.c:149: lbt_rssi = value;
   26BF 78 69         [12]  966 	mov	r0,#_param_set_PARM_2
   26C1 79 C8         [12]  967 	mov	r1,#_lbt_rssi
   26C3 E2            [24]  968 	movx	a,@r0
   26C4 F3            [24]  969 	movx	@r1,a
                            970 ;	radio/parameters.c:150: break;
                            971 ;	radio/parameters.c:152: case PARAM_MAVLINK:
   26C5 80 7C         [24]  972 	sjmp	00112$
   26C7                     973 00108$:
                            974 ;	radio/parameters.c:153: feature_mavlink_framing = value?true:false;
   26C7 78 69         [12]  975 	mov	r0,#_param_set_PARM_2
   26C9 E2            [24]  976 	movx	a,@r0
   26CA F5 F0         [12]  977 	mov	b,a
   26CC 08            [12]  978 	inc	r0
   26CD E2            [24]  979 	movx	a,@r0
   26CE 42 F0         [12]  980 	orl	b,a
   26D0 08            [12]  981 	inc	r0
   26D1 E2            [24]  982 	movx	a,@r0
   26D2 42 F0         [12]  983 	orl	b,a
   26D4 08            [12]  984 	inc	r0
   26D5 E2            [24]  985 	movx	a,@r0
   26D6 45 F0         [12]  986 	orl	a,b
   26D8 24 FF         [12]  987 	add	a,#0xff
                            988 ;	radio/parameters.c:154: value = feature_mavlink_framing?1:0;
   26DA 92 06         [24]  989 	mov	_feature_mavlink_framing,c
   26DC 50 04         [24]  990 	jnc	00115$
   26DE 7E 01         [12]  991 	mov	r6,#0x01
   26E0 80 02         [24]  992 	sjmp	00116$
   26E2                     993 00115$:
   26E2 7E 00         [12]  994 	mov	r6,#0x00
   26E4                     995 00116$:
   26E4 78 69         [12]  996 	mov	r0,#_param_set_PARM_2
   26E6 EE            [12]  997 	mov	a,r6
   26E7 F2            [24]  998 	movx	@r0,a
   26E8 08            [12]  999 	inc	r0
   26E9 E4            [12] 1000 	clr	a
   26EA F2            [24] 1001 	movx	@r0,a
   26EB 08            [12] 1002 	inc	r0
   26EC F2            [24] 1003 	movx	@r0,a
   26ED 08            [12] 1004 	inc	r0
   26EE F2            [24] 1005 	movx	@r0,a
                           1006 ;	radio/parameters.c:155: break;
                           1007 ;	radio/parameters.c:157: case PARAM_OPPRESEND:
   26EF 80 52         [24] 1008 	sjmp	00112$
   26F1                    1009 00109$:
                           1010 ;	radio/parameters.c:158: feature_opportunistic_resend = value?true:false;
   26F1 78 69         [12] 1011 	mov	r0,#_param_set_PARM_2
   26F3 E2            [24] 1012 	movx	a,@r0
   26F4 F5 F0         [12] 1013 	mov	b,a
   26F6 08            [12] 1014 	inc	r0
   26F7 E2            [24] 1015 	movx	a,@r0
   26F8 42 F0         [12] 1016 	orl	b,a
   26FA 08            [12] 1017 	inc	r0
   26FB E2            [24] 1018 	movx	a,@r0
   26FC 42 F0         [12] 1019 	orl	b,a
   26FE 08            [12] 1020 	inc	r0
   26FF E2            [24] 1021 	movx	a,@r0
   2700 45 F0         [12] 1022 	orl	a,b
   2702 24 FF         [12] 1023 	add	a,#0xff
                           1024 ;	radio/parameters.c:159: value = feature_opportunistic_resend?1:0;
   2704 92 05         [24] 1025 	mov	_feature_opportunistic_resend,c
   2706 50 04         [24] 1026 	jnc	00117$
   2708 7E 01         [12] 1027 	mov	r6,#0x01
   270A 80 02         [24] 1028 	sjmp	00118$
   270C                    1029 00117$:
   270C 7E 00         [12] 1030 	mov	r6,#0x00
   270E                    1031 00118$:
   270E 78 69         [12] 1032 	mov	r0,#_param_set_PARM_2
   2710 EE            [12] 1033 	mov	a,r6
   2711 F2            [24] 1034 	movx	@r0,a
   2712 08            [12] 1035 	inc	r0
   2713 E4            [12] 1036 	clr	a
   2714 F2            [24] 1037 	movx	@r0,a
   2715 08            [12] 1038 	inc	r0
   2716 F2            [24] 1039 	movx	@r0,a
   2717 08            [12] 1040 	inc	r0
   2718 F2            [24] 1041 	movx	@r0,a
                           1042 ;	radio/parameters.c:160: break;
                           1043 ;	radio/parameters.c:162: case PARAM_RTSCTS:
   2719 80 28         [24] 1044 	sjmp	00112$
   271B                    1045 00110$:
                           1046 ;	radio/parameters.c:163: feature_rtscts = value?true:false;
   271B 78 69         [12] 1047 	mov	r0,#_param_set_PARM_2
   271D E2            [24] 1048 	movx	a,@r0
   271E F5 F0         [12] 1049 	mov	b,a
   2720 08            [12] 1050 	inc	r0
   2721 E2            [24] 1051 	movx	a,@r0
   2722 42 F0         [12] 1052 	orl	b,a
   2724 08            [12] 1053 	inc	r0
   2725 E2            [24] 1054 	movx	a,@r0
   2726 42 F0         [12] 1055 	orl	b,a
   2728 08            [12] 1056 	inc	r0
   2729 E2            [24] 1057 	movx	a,@r0
   272A 45 F0         [12] 1058 	orl	a,b
   272C 24 FF         [12] 1059 	add	a,#0xff
                           1060 ;	radio/parameters.c:164: value = feature_rtscts?1:0;
   272E 92 07         [24] 1061 	mov	_feature_rtscts,c
   2730 50 04         [24] 1062 	jnc	00119$
   2732 7E 01         [12] 1063 	mov	r6,#0x01
   2734 80 02         [24] 1064 	sjmp	00120$
   2736                    1065 00119$:
   2736 7E 00         [12] 1066 	mov	r6,#0x00
   2738                    1067 00120$:
   2738 78 69         [12] 1068 	mov	r0,#_param_set_PARM_2
   273A EE            [12] 1069 	mov	a,r6
   273B F2            [24] 1070 	movx	@r0,a
   273C 08            [12] 1071 	inc	r0
   273D E4            [12] 1072 	clr	a
   273E F2            [24] 1073 	movx	@r0,a
   273F 08            [12] 1074 	inc	r0
   2740 F2            [24] 1075 	movx	@r0,a
   2741 08            [12] 1076 	inc	r0
   2742 F2            [24] 1077 	movx	@r0,a
                           1078 ;	radio/parameters.c:169: }
   2743                    1079 00112$:
                           1080 ;	radio/parameters.c:171: parameter_values[param] = value;
   2743 EF            [12] 1081 	mov	a,r7
   2744 75 F0 04      [24] 1082 	mov	b,#0x04
   2747 A4            [48] 1083 	mul	ab
   2748 24 23         [12] 1084 	add	a,#_parameter_values
   274A F5 82         [12] 1085 	mov	dpl,a
   274C 74 03         [12] 1086 	mov	a,#(_parameter_values >> 8)
   274E 35 F0         [12] 1087 	addc	a,b
   2750 F5 83         [12] 1088 	mov	dph,a
   2752 78 69         [12] 1089 	mov	r0,#_param_set_PARM_2
   2754 E2            [24] 1090 	movx	a,@r0
   2755 F0            [24] 1091 	movx	@dptr,a
   2756 08            [12] 1092 	inc	r0
   2757 E2            [24] 1093 	movx	a,@r0
   2758 A3            [24] 1094 	inc	dptr
   2759 F0            [24] 1095 	movx	@dptr,a
   275A 08            [12] 1096 	inc	r0
   275B E2            [24] 1097 	movx	a,@r0
   275C A3            [24] 1098 	inc	dptr
   275D F0            [24] 1099 	movx	@dptr,a
   275E 08            [12] 1100 	inc	r0
   275F E2            [24] 1101 	movx	a,@r0
   2760 A3            [24] 1102 	inc	dptr
   2761 F0            [24] 1103 	movx	@dptr,a
                           1104 ;	radio/parameters.c:173: return true;
   2762 D3            [12] 1105 	setb	c
   2763 22            [24] 1106 	ret
                           1107 ;------------------------------------------------------------
                           1108 ;Allocation info for local variables in function 'param_get'
                           1109 ;------------------------------------------------------------
                           1110 ;param                     Allocated to registers r7 
                           1111 ;------------------------------------------------------------
                           1112 ;	radio/parameters.c:177: param_get(__data enum ParamID param)
                           1113 ;	-----------------------------------------
                           1114 ;	 function param_get
                           1115 ;	-----------------------------------------
   2764                    1116 _param_get:
   2764 AF 82         [24] 1117 	mov	r7,dpl
                           1118 ;	radio/parameters.c:179: if (param >= PARAM_MAX)
   2766 BF 0F 00      [24] 1119 	cjne	r7,#0x0F,00108$
   2769                    1120 00108$:
   2769 40 07         [24] 1121 	jc	00102$
                           1122 ;	radio/parameters.c:180: return 0;
   276B 90 00 00      [24] 1123 	mov	dptr,#(0x00&0x00ff)
   276E E4            [12] 1124 	clr	a
   276F F5 F0         [12] 1125 	mov	b,a
   2771 22            [24] 1126 	ret
   2772                    1127 00102$:
                           1128 ;	radio/parameters.c:181: return parameter_values[param];
   2772 EF            [12] 1129 	mov	a,r7
   2773 75 F0 04      [24] 1130 	mov	b,#0x04
   2776 A4            [48] 1131 	mul	ab
   2777 24 23         [12] 1132 	add	a,#_parameter_values
   2779 F5 82         [12] 1133 	mov	dpl,a
   277B 74 03         [12] 1134 	mov	a,#(_parameter_values >> 8)
   277D 35 F0         [12] 1135 	addc	a,b
   277F F5 83         [12] 1136 	mov	dph,a
   2781 E0            [24] 1137 	movx	a,@dptr
   2782 FC            [12] 1138 	mov	r4,a
   2783 A3            [24] 1139 	inc	dptr
   2784 E0            [24] 1140 	movx	a,@dptr
   2785 FD            [12] 1141 	mov	r5,a
   2786 A3            [24] 1142 	inc	dptr
   2787 E0            [24] 1143 	movx	a,@dptr
   2788 FE            [12] 1144 	mov	r6,a
   2789 A3            [24] 1145 	inc	dptr
   278A E0            [24] 1146 	movx	a,@dptr
   278B 8C 82         [24] 1147 	mov	dpl,r4
   278D 8D 83         [24] 1148 	mov	dph,r5
   278F 8E F0         [24] 1149 	mov	b,r6
   2791 22            [24] 1150 	ret
                           1151 ;------------------------------------------------------------
                           1152 ;Allocation info for local variables in function 'param_load'
                           1153 ;------------------------------------------------------------
                           1154 ;sloc0                     Allocated with name '_param_load_sloc0_1_0'
                           1155 ;sloc1                     Allocated with name '_param_load_sloc1_1_0'
                           1156 ;sloc2                     Allocated with name '_param_load_sloc2_1_0'
                           1157 ;sloc3                     Allocated with name '_param_load_sloc3_1_0'
                           1158 ;------------------------------------------------------------
                           1159 ;	radio/parameters.c:185: param_load(void)
                           1160 ;	-----------------------------------------
                           1161 ;	 function param_load
                           1162 ;	-----------------------------------------
   2792                    1163 _param_load:
   2792 D3            [12] 1164 	setb	c
   2793 10 AF 01      [24] 1165 	jbc	ea,00138$
   2796 C3            [12] 1166 	clr	c
   2797                    1167 00138$:
   2797 C0 D0         [24] 1168 	push	psw
                           1169 ;	radio/parameters.c:192: for (i = 0; i < sizeof(parameter_values); i++) {
   2799 7E 00         [12] 1170 	mov	r6,#0x00
   279B 7F 00         [12] 1171 	mov	r7,#0x00
   279D                    1172 00109$:
                           1173 ;	radio/parameters.c:193: ((uint8_t *)parameter_values)[i] = flash_read_scratch(i+4);
   279D EE            [12] 1174 	mov	a,r6
   279E 24 23         [12] 1175 	add	a,#_parameter_values
   27A0 FB            [12] 1176 	mov	r3,a
   27A1 EF            [12] 1177 	mov	a,r7
   27A2 34 03         [12] 1178 	addc	a,#(_parameter_values >> 8)
   27A4 FC            [12] 1179 	mov	r4,a
   27A5 7D 00         [12] 1180 	mov	r5,#0x00
   27A7 74 04         [12] 1181 	mov	a,#0x04
   27A9 2E            [12] 1182 	add	a,r6
   27AA F9            [12] 1183 	mov	r1,a
   27AB E4            [12] 1184 	clr	a
   27AC 3F            [12] 1185 	addc	a,r7
   27AD FA            [12] 1186 	mov	r2,a
   27AE 89 82         [24] 1187 	mov	dpl,r1
   27B0 8A 83         [24] 1188 	mov	dph,r2
   27B2 C0 07         [24] 1189 	push	ar7
   27B4 C0 06         [24] 1190 	push	ar6
   27B6 C0 05         [24] 1191 	push	ar5
   27B8 C0 04         [24] 1192 	push	ar4
   27BA C0 03         [24] 1193 	push	ar3
   27BC 12 0A A7      [24] 1194 	lcall	_flash_read_scratch
   27BF AA 82         [24] 1195 	mov	r2,dpl
   27C1 D0 03         [24] 1196 	pop	ar3
   27C3 D0 04         [24] 1197 	pop	ar4
   27C5 D0 05         [24] 1198 	pop	ar5
   27C7 D0 06         [24] 1199 	pop	ar6
   27C9 D0 07         [24] 1200 	pop	ar7
   27CB 8B 82         [24] 1201 	mov	dpl,r3
   27CD 8C 83         [24] 1202 	mov	dph,r4
   27CF 8D F0         [24] 1203 	mov	b,r5
   27D1 EA            [12] 1204 	mov	a,r2
   27D2 12 5D 7C      [24] 1205 	lcall	__gptrput
                           1206 ;	radio/parameters.c:192: for (i = 0; i < sizeof(parameter_values); i++) {
   27D5 0E            [12] 1207 	inc	r6
   27D6 BE 00 01      [24] 1208 	cjne	r6,#0x00,00139$
   27D9 0F            [12] 1209 	inc	r7
   27DA                    1210 00139$:
   27DA C3            [12] 1211 	clr	c
   27DB EE            [12] 1212 	mov	a,r6
   27DC 94 3C         [12] 1213 	subb	a,#0x3C
   27DE EF            [12] 1214 	mov	a,r7
   27DF 94 00         [12] 1215 	subb	a,#0x00
   27E1 40 BA         [24] 1216 	jc	00109$
                           1217 ;	radio/parameters.c:197: if (param_get(PARAM_FORMAT) != PARAM_FORMAT_CURRENT) {
   27E3 75 82 00      [24] 1218 	mov	dpl,#0x00
   27E6 12 27 64      [24] 1219 	lcall	_param_get
   27E9 AC 82         [24] 1220 	mov	r4,dpl
   27EB AD 83         [24] 1221 	mov	r5,dph
   27ED AE F0         [24] 1222 	mov	r6,b
   27EF FF            [12] 1223 	mov	r7,a
   27F0 BC 19 0B      [24] 1224 	cjne	r4,#0x19,00141$
   27F3 BD 00 08      [24] 1225 	cjne	r5,#0x00,00141$
   27F6 BE 00 05      [24] 1226 	cjne	r6,#0x00,00141$
   27F9 BF 00 02      [24] 1227 	cjne	r7,#0x00,00141$
   27FC 80 07         [24] 1228 	sjmp	00103$
   27FE                    1229 00141$:
                           1230 ;	radio/parameters.c:199: param_default();
   27FE 12 29 A9      [24] 1231 	lcall	_param_default
                           1232 ;	radio/parameters.c:200: return false;
   2801 C3            [12] 1233 	clr	c
   2802 02 28 F9      [24] 1234 	ljmp	00113$
   2805                    1235 00103$:
                           1236 ;	radio/parameters.c:204: checksum = crc16(sizeof(parameter_values), (__xdata uint8_t *)parameter_values);
   2805 75 0C 23      [24] 1237 	mov	_crc16_PARM_2,#_parameter_values
   2808 75 0D 03      [24] 1238 	mov	(_crc16_PARM_2 + 1),#(_parameter_values >> 8)
   280B 75 82 3C      [24] 1239 	mov	dpl,#0x3C
   280E 12 0A 2A      [24] 1240 	lcall	_crc16
   2811 AE 82         [24] 1241 	mov	r6,dpl
   2813 AF 83         [24] 1242 	mov	r7,dph
                           1243 ;	radio/parameters.c:205: expected = flash_read_scratch(3)<<8 | flash_read_scratch(2);
   2815 90 00 03      [24] 1244 	mov	dptr,#0x0003
   2818 C0 07         [24] 1245 	push	ar7
   281A C0 06         [24] 1246 	push	ar6
   281C 12 0A A7      [24] 1247 	lcall	_flash_read_scratch
   281F AC 82         [24] 1248 	mov	r4,dpl
   2821 7D 00         [12] 1249 	mov	r5,#0x00
   2823 90 00 02      [24] 1250 	mov	dptr,#0x0002
   2826 C0 05         [24] 1251 	push	ar5
   2828 C0 04         [24] 1252 	push	ar4
   282A 12 0A A7      [24] 1253 	lcall	_flash_read_scratch
   282D AB 82         [24] 1254 	mov	r3,dpl
   282F D0 04         [24] 1255 	pop	ar4
   2831 D0 05         [24] 1256 	pop	ar5
   2833 D0 06         [24] 1257 	pop	ar6
   2835 D0 07         [24] 1258 	pop	ar7
   2837 7A 00         [12] 1259 	mov	r2,#0x00
   2839 EB            [12] 1260 	mov	a,r3
   283A 42 05         [12] 1261 	orl	ar5,a
   283C EA            [12] 1262 	mov	a,r2
   283D 42 04         [12] 1263 	orl	ar4,a
                           1264 ;	radio/parameters.c:206: if (checksum != expected)
   283F EE            [12] 1265 	mov	a,r6
   2840 B5 05 06      [24] 1266 	cjne	a,ar5,00142$
   2843 EF            [12] 1267 	mov	a,r7
   2844 B5 04 02      [24] 1268 	cjne	a,ar4,00142$
   2847 80 07         [24] 1269 	sjmp	00120$
   2849                    1270 00142$:
                           1271 ;	radio/parameters.c:209: param_default();
   2849 12 29 A9      [24] 1272 	lcall	_param_default
                           1273 ;	radio/parameters.c:210: return false;
   284C C3            [12] 1274 	clr	c
   284D 02 28 F9      [24] 1275 	ljmp	00113$
                           1276 ;	radio/parameters.c:213: for (i = 0; i < PARAM_MAX; i++) {
   2850                    1277 00120$:
   2850 7F 00         [12] 1278 	mov	r7,#0x00
   2852 7E 00         [12] 1279 	mov	r6,#0x00
   2854 7C 00         [12] 1280 	mov	r4,#0x00
   2856 7D 00         [12] 1281 	mov	r5,#0x00
   2858                    1282 00111$:
                           1283 ;	radio/parameters.c:214: if (!param_check(i, parameter_values[i])) {
   2858 8F 03         [24] 1284 	mov	ar3,r7
   285A 8F 3A         [24] 1285 	mov	_param_load_sloc0_1_0,r7
   285C EE            [12] 1286 	mov	a,r6
   285D C5 3A         [12] 1287 	xch	a,_param_load_sloc0_1_0
   285F 25 E0         [12] 1288 	add	a,acc
   2861 C5 3A         [12] 1289 	xch	a,_param_load_sloc0_1_0
   2863 33            [12] 1290 	rlc	a
   2864 C5 3A         [12] 1291 	xch	a,_param_load_sloc0_1_0
   2866 25 E0         [12] 1292 	add	a,acc
   2868 C5 3A         [12] 1293 	xch	a,_param_load_sloc0_1_0
   286A 33            [12] 1294 	rlc	a
   286B F5 3B         [12] 1295 	mov	(_param_load_sloc0_1_0 + 1),a
   286D E5 3A         [12] 1296 	mov	a,_param_load_sloc0_1_0
   286F 24 23         [12] 1297 	add	a,#_parameter_values
   2871 F5 3C         [12] 1298 	mov	_param_load_sloc1_1_0,a
   2873 E5 3B         [12] 1299 	mov	a,(_param_load_sloc0_1_0 + 1)
   2875 34 03         [12] 1300 	addc	a,#(_parameter_values >> 8)
   2877 F5 3D         [12] 1301 	mov	(_param_load_sloc1_1_0 + 1),a
   2879 85 3C 82      [24] 1302 	mov	dpl,_param_load_sloc1_1_0
   287C 85 3D 83      [24] 1303 	mov	dph,(_param_load_sloc1_1_0 + 1)
   287F E0            [24] 1304 	movx	a,@dptr
   2880 F5 36         [12] 1305 	mov	_param_check_PARM_2,a
   2882 A3            [24] 1306 	inc	dptr
   2883 E0            [24] 1307 	movx	a,@dptr
   2884 F5 37         [12] 1308 	mov	(_param_check_PARM_2 + 1),a
   2886 A3            [24] 1309 	inc	dptr
   2887 E0            [24] 1310 	movx	a,@dptr
   2888 F5 38         [12] 1311 	mov	(_param_check_PARM_2 + 2),a
   288A A3            [24] 1312 	inc	dptr
   288B E0            [24] 1313 	movx	a,@dptr
   288C F5 39         [12] 1314 	mov	(_param_check_PARM_2 + 3),a
   288E 8B 82         [24] 1315 	mov	dpl,r3
   2890 C0 07         [24] 1316 	push	ar7
   2892 C0 06         [24] 1317 	push	ar6
   2894 C0 05         [24] 1318 	push	ar5
   2896 C0 04         [24] 1319 	push	ar4
   2898 12 25 4F      [24] 1320 	lcall	_param_check
   289B D0 04         [24] 1321 	pop	ar4
   289D D0 05         [24] 1322 	pop	ar5
   289F D0 06         [24] 1323 	pop	ar6
   28A1 D0 07         [24] 1324 	pop	ar7
   28A3 40 3B         [24] 1325 	jc	00112$
                           1326 ;	radio/parameters.c:215: parameter_values[i] = parameter_info[i].default_value;
   28A5 EC            [12] 1327 	mov	a,r4
   28A6 24 21         [12] 1328 	add	a,#_parameter_info
   28A8 F5 3E         [12] 1329 	mov	_param_load_sloc2_1_0,a
   28AA ED            [12] 1330 	mov	a,r5
   28AB 34 C8         [12] 1331 	addc	a,#(_parameter_info >> 8)
   28AD F5 3F         [12] 1332 	mov	(_param_load_sloc2_1_0 + 1),a
   28AF 85 3E 82      [24] 1333 	mov	dpl,_param_load_sloc2_1_0
   28B2 85 3F 83      [24] 1334 	mov	dph,(_param_load_sloc2_1_0 + 1)
   28B5 A3            [24] 1335 	inc	dptr
   28B6 A3            [24] 1336 	inc	dptr
   28B7 A3            [24] 1337 	inc	dptr
   28B8 E4            [12] 1338 	clr	a
   28B9 93            [24] 1339 	movc	a,@a+dptr
   28BA F5 40         [12] 1340 	mov	_param_load_sloc3_1_0,a
   28BC A3            [24] 1341 	inc	dptr
   28BD E4            [12] 1342 	clr	a
   28BE 93            [24] 1343 	movc	a,@a+dptr
   28BF F5 41         [12] 1344 	mov	(_param_load_sloc3_1_0 + 1),a
   28C1 A3            [24] 1345 	inc	dptr
   28C2 E4            [12] 1346 	clr	a
   28C3 93            [24] 1347 	movc	a,@a+dptr
   28C4 F5 42         [12] 1348 	mov	(_param_load_sloc3_1_0 + 2),a
   28C6 A3            [24] 1349 	inc	dptr
   28C7 E4            [12] 1350 	clr	a
   28C8 93            [24] 1351 	movc	a,@a+dptr
   28C9 F5 43         [12] 1352 	mov	(_param_load_sloc3_1_0 + 3),a
   28CB 85 3C 82      [24] 1353 	mov	dpl,_param_load_sloc1_1_0
   28CE 85 3D 83      [24] 1354 	mov	dph,(_param_load_sloc1_1_0 + 1)
   28D1 E5 40         [12] 1355 	mov	a,_param_load_sloc3_1_0
   28D3 F0            [24] 1356 	movx	@dptr,a
   28D4 E5 41         [12] 1357 	mov	a,(_param_load_sloc3_1_0 + 1)
   28D6 A3            [24] 1358 	inc	dptr
   28D7 F0            [24] 1359 	movx	@dptr,a
   28D8 E5 42         [12] 1360 	mov	a,(_param_load_sloc3_1_0 + 2)
   28DA A3            [24] 1361 	inc	dptr
   28DB F0            [24] 1362 	movx	@dptr,a
   28DC E5 43         [12] 1363 	mov	a,(_param_load_sloc3_1_0 + 3)
   28DE A3            [24] 1364 	inc	dptr
   28DF F0            [24] 1365 	movx	@dptr,a
   28E0                    1366 00112$:
                           1367 ;	radio/parameters.c:213: for (i = 0; i < PARAM_MAX; i++) {
   28E0 74 07         [12] 1368 	mov	a,#0x07
   28E2 2C            [12] 1369 	add	a,r4
   28E3 FC            [12] 1370 	mov	r4,a
   28E4 E4            [12] 1371 	clr	a
   28E5 3D            [12] 1372 	addc	a,r5
   28E6 FD            [12] 1373 	mov	r5,a
   28E7 0F            [12] 1374 	inc	r7
   28E8 BF 00 01      [24] 1375 	cjne	r7,#0x00,00144$
   28EB 0E            [12] 1376 	inc	r6
   28EC                    1377 00144$:
   28EC C3            [12] 1378 	clr	c
   28ED EF            [12] 1379 	mov	a,r7
   28EE 94 0F         [12] 1380 	subb	a,#0x0F
   28F0 EE            [12] 1381 	mov	a,r6
   28F1 94 00         [12] 1382 	subb	a,#0x00
   28F3 50 03         [24] 1383 	jnc	00145$
   28F5 02 28 58      [24] 1384 	ljmp	00111$
   28F8                    1385 00145$:
                           1386 ;	radio/parameters.c:219: return true;
   28F8 D3            [12] 1387 	setb	c
   28F9                    1388 00113$:
   28F9 33            [12] 1389 	rlc	a
   28FA D0 D0         [24] 1390 	pop	psw
   28FC 92 AF         [24] 1391 	mov	ea,c
   28FE 13            [12] 1392 	rrc	a
   28FF 22            [24] 1393 	ret
                           1394 ;------------------------------------------------------------
                           1395 ;Allocation info for local variables in function 'param_save'
                           1396 ;------------------------------------------------------------
                           1397 ;	radio/parameters.c:223: param_save(void)
                           1398 ;	-----------------------------------------
                           1399 ;	 function param_save
                           1400 ;	-----------------------------------------
   2900                    1401 _param_save:
   2900 D3            [12] 1402 	setb	c
   2901 10 AF 01      [24] 1403 	jbc	ea,00110$
   2904 C3            [12] 1404 	clr	c
   2905                    1405 00110$:
   2905 C0 D0         [24] 1406 	push	psw
                           1407 ;	radio/parameters.c:229: parameter_values[PARAM_FORMAT] = PARAM_FORMAT_CURRENT;
   2907 90 03 23      [24] 1408 	mov	dptr,#_parameter_values
   290A 74 19         [12] 1409 	mov	a,#0x19
   290C F0            [24] 1410 	movx	@dptr,a
   290D E4            [12] 1411 	clr	a
   290E A3            [24] 1412 	inc	dptr
   290F F0            [24] 1413 	movx	@dptr,a
   2910 E4            [12] 1414 	clr	a
   2911 A3            [24] 1415 	inc	dptr
   2912 F0            [24] 1416 	movx	@dptr,a
   2913 E4            [12] 1417 	clr	a
   2914 A3            [24] 1418 	inc	dptr
   2915 F0            [24] 1419 	movx	@dptr,a
                           1420 ;	radio/parameters.c:232: flash_erase_scratch();
   2916 12 0A 8C      [24] 1421 	lcall	_flash_erase_scratch
                           1422 ;	radio/parameters.c:235: flash_write_scratch(0, sizeof(parameter_values)&0xFF);
   2919 78 17         [12] 1423 	mov	r0,#_flash_write_scratch_PARM_2
   291B 74 3C         [12] 1424 	mov	a,#0x3C
   291D F2            [24] 1425 	movx	@r0,a
   291E 90 00 00      [24] 1426 	mov	dptr,#0x0000
   2921 12 0A C6      [24] 1427 	lcall	_flash_write_scratch
                           1428 ;	radio/parameters.c:236: flash_write_scratch(1, (int)(sizeof(parameter_values))>>8);
   2924 78 17         [12] 1429 	mov	r0,#_flash_write_scratch_PARM_2
   2926 E4            [12] 1430 	clr	a
   2927 F2            [24] 1431 	movx	@r0,a
   2928 90 00 01      [24] 1432 	mov	dptr,#0x0001
   292B 12 0A C6      [24] 1433 	lcall	_flash_write_scratch
                           1434 ;	radio/parameters.c:239: checksum = crc16(sizeof(parameter_values), (__xdata uint8_t *)parameter_values);
   292E 75 0C 23      [24] 1435 	mov	_crc16_PARM_2,#_parameter_values
   2931 75 0D 03      [24] 1436 	mov	(_crc16_PARM_2 + 1),#(_parameter_values >> 8)
   2934 75 82 3C      [24] 1437 	mov	dpl,#0x3C
   2937 12 0A 2A      [24] 1438 	lcall	_crc16
   293A AE 82         [24] 1439 	mov	r6,dpl
   293C AF 83         [24] 1440 	mov	r7,dph
                           1441 ;	radio/parameters.c:240: flash_write_scratch(2, checksum&0xFF);
   293E 8E 04         [24] 1442 	mov	ar4,r6
   2940 78 17         [12] 1443 	mov	r0,#_flash_write_scratch_PARM_2
   2942 EC            [12] 1444 	mov	a,r4
   2943 F2            [24] 1445 	movx	@r0,a
   2944 90 00 02      [24] 1446 	mov	dptr,#0x0002
   2947 C0 07         [24] 1447 	push	ar7
   2949 C0 06         [24] 1448 	push	ar6
   294B 12 0A C6      [24] 1449 	lcall	_flash_write_scratch
   294E D0 06         [24] 1450 	pop	ar6
   2950 D0 07         [24] 1451 	pop	ar7
                           1452 ;	radio/parameters.c:241: flash_write_scratch(3, checksum>>8);
   2952 78 17         [12] 1453 	mov	r0,#_flash_write_scratch_PARM_2
   2954 EF            [12] 1454 	mov	a,r7
   2955 F2            [24] 1455 	movx	@r0,a
   2956 90 00 03      [24] 1456 	mov	dptr,#0x0003
   2959 12 0A C6      [24] 1457 	lcall	_flash_write_scratch
                           1458 ;	radio/parameters.c:244: for (i = 0; i < sizeof(parameter_values); i++) {
   295C 78 6D         [12] 1459 	mov	r0,#_param_save_i_1_140
   295E E4            [12] 1460 	clr	a
   295F F2            [24] 1461 	movx	@r0,a
   2960 08            [12] 1462 	inc	r0
   2961 F2            [24] 1463 	movx	@r0,a
   2962                    1464 00102$:
                           1465 ;	radio/parameters.c:245: flash_write_scratch(i+4, ((uint8_t *)parameter_values)[i]);
   2962 78 6D         [12] 1466 	mov	r0,#_param_save_i_1_140
   2964 E2            [24] 1467 	movx	a,@r0
   2965 24 04         [12] 1468 	add	a,#0x04
   2967 FC            [12] 1469 	mov	r4,a
   2968 08            [12] 1470 	inc	r0
   2969 E2            [24] 1471 	movx	a,@r0
   296A 34 00         [12] 1472 	addc	a,#0x00
   296C FD            [12] 1473 	mov	r5,a
   296D 78 6D         [12] 1474 	mov	r0,#_param_save_i_1_140
   296F E2            [24] 1475 	movx	a,@r0
   2970 24 23         [12] 1476 	add	a,#_parameter_values
   2972 FA            [12] 1477 	mov	r2,a
   2973 08            [12] 1478 	inc	r0
   2974 E2            [24] 1479 	movx	a,@r0
   2975 34 03         [12] 1480 	addc	a,#(_parameter_values >> 8)
   2977 FB            [12] 1481 	mov	r3,a
   2978 7F 00         [12] 1482 	mov	r7,#0x00
   297A 8A 82         [24] 1483 	mov	dpl,r2
   297C 8B 83         [24] 1484 	mov	dph,r3
   297E 8F F0         [24] 1485 	mov	b,r7
   2980 78 17         [12] 1486 	mov	r0,#_flash_write_scratch_PARM_2
   2982 12 64 27      [24] 1487 	lcall	__gptrget
   2985 F2            [24] 1488 	movx	@r0,a
   2986 8C 82         [24] 1489 	mov	dpl,r4
   2988 8D 83         [24] 1490 	mov	dph,r5
   298A 12 0A C6      [24] 1491 	lcall	_flash_write_scratch
                           1492 ;	radio/parameters.c:244: for (i = 0; i < sizeof(parameter_values); i++) {
   298D 78 6D         [12] 1493 	mov	r0,#_param_save_i_1_140
   298F E2            [24] 1494 	movx	a,@r0
   2990 24 01         [12] 1495 	add	a,#0x01
   2992 F2            [24] 1496 	movx	@r0,a
   2993 08            [12] 1497 	inc	r0
   2994 E2            [24] 1498 	movx	a,@r0
   2995 34 00         [12] 1499 	addc	a,#0x00
   2997 F2            [24] 1500 	movx	@r0,a
   2998 78 6D         [12] 1501 	mov	r0,#_param_save_i_1_140
   299A C3            [12] 1502 	clr	c
   299B E2            [24] 1503 	movx	a,@r0
   299C 94 3C         [12] 1504 	subb	a,#0x3C
   299E 08            [12] 1505 	inc	r0
   299F E2            [24] 1506 	movx	a,@r0
   29A0 94 00         [12] 1507 	subb	a,#0x00
   29A2 40 BE         [24] 1508 	jc	00102$
   29A4 D0 D0         [24] 1509 	pop	psw
   29A6 92 AF         [24] 1510 	mov	ea,c
   29A8 22            [24] 1511 	ret
                           1512 ;------------------------------------------------------------
                           1513 ;Allocation info for local variables in function 'param_default'
                           1514 ;------------------------------------------------------------
                           1515 ;	radio/parameters.c:250: param_default(void)
                           1516 ;	-----------------------------------------
                           1517 ;	 function param_default
                           1518 ;	-----------------------------------------
   29A9                    1519 _param_default:
                           1520 ;	radio/parameters.c:255: for (i = 0; i < PARAM_MAX; i++) {
   29A9 7F 00         [12] 1521 	mov	r7,#0x00
   29AB                    1522 00102$:
                           1523 ;	radio/parameters.c:256: parameter_values[i] = parameter_info[i].default_value;
   29AB EF            [12] 1524 	mov	a,r7
   29AC 75 F0 04      [24] 1525 	mov	b,#0x04
   29AF A4            [48] 1526 	mul	ab
   29B0 24 23         [12] 1527 	add	a,#_parameter_values
   29B2 FD            [12] 1528 	mov	r5,a
   29B3 74 03         [12] 1529 	mov	a,#(_parameter_values >> 8)
   29B5 35 F0         [12] 1530 	addc	a,b
   29B7 FE            [12] 1531 	mov	r6,a
   29B8 EF            [12] 1532 	mov	a,r7
   29B9 75 F0 07      [24] 1533 	mov	b,#0x07
   29BC A4            [48] 1534 	mul	ab
   29BD 24 21         [12] 1535 	add	a,#_parameter_info
   29BF FB            [12] 1536 	mov	r3,a
   29C0 74 C8         [12] 1537 	mov	a,#(_parameter_info >> 8)
   29C2 35 F0         [12] 1538 	addc	a,b
   29C4 FC            [12] 1539 	mov	r4,a
   29C5 8B 82         [24] 1540 	mov	dpl,r3
   29C7 8C 83         [24] 1541 	mov	dph,r4
   29C9 A3            [24] 1542 	inc	dptr
   29CA A3            [24] 1543 	inc	dptr
   29CB A3            [24] 1544 	inc	dptr
   29CC E4            [12] 1545 	clr	a
   29CD 93            [24] 1546 	movc	a,@a+dptr
   29CE F9            [12] 1547 	mov	r1,a
   29CF A3            [24] 1548 	inc	dptr
   29D0 E4            [12] 1549 	clr	a
   29D1 93            [24] 1550 	movc	a,@a+dptr
   29D2 FA            [12] 1551 	mov	r2,a
   29D3 A3            [24] 1552 	inc	dptr
   29D4 E4            [12] 1553 	clr	a
   29D5 93            [24] 1554 	movc	a,@a+dptr
   29D6 FB            [12] 1555 	mov	r3,a
   29D7 A3            [24] 1556 	inc	dptr
   29D8 E4            [12] 1557 	clr	a
   29D9 93            [24] 1558 	movc	a,@a+dptr
   29DA FC            [12] 1559 	mov	r4,a
   29DB 8D 82         [24] 1560 	mov	dpl,r5
   29DD 8E 83         [24] 1561 	mov	dph,r6
   29DF E9            [12] 1562 	mov	a,r1
   29E0 F0            [24] 1563 	movx	@dptr,a
   29E1 EA            [12] 1564 	mov	a,r2
   29E2 A3            [24] 1565 	inc	dptr
   29E3 F0            [24] 1566 	movx	@dptr,a
   29E4 EB            [12] 1567 	mov	a,r3
   29E5 A3            [24] 1568 	inc	dptr
   29E6 F0            [24] 1569 	movx	@dptr,a
   29E7 EC            [12] 1570 	mov	a,r4
   29E8 A3            [24] 1571 	inc	dptr
   29E9 F0            [24] 1572 	movx	@dptr,a
                           1573 ;	radio/parameters.c:255: for (i = 0; i < PARAM_MAX; i++) {
   29EA 0F            [12] 1574 	inc	r7
   29EB BF 0F 00      [24] 1575 	cjne	r7,#0x0F,00110$
   29EE                    1576 00110$:
   29EE 40 BB         [24] 1577 	jc	00102$
   29F0 22            [24] 1578 	ret
                           1579 ;------------------------------------------------------------
                           1580 ;Allocation info for local variables in function 'param_id'
                           1581 ;------------------------------------------------------------
                           1582 ;	radio/parameters.c:261: param_id(__data char * __pdata name)
                           1583 ;	-----------------------------------------
                           1584 ;	 function param_id
                           1585 ;	-----------------------------------------
   29F1                    1586 _param_id:
   29F1 AF 82         [24] 1587 	mov	r7,dpl
                           1588 ;	radio/parameters.c:265: for (i = 0; i < PARAM_MAX; i++) {
   29F3 7E 00         [12] 1589 	mov	r6,#0x00
   29F5                    1590 00104$:
                           1591 ;	radio/parameters.c:266: if (!strcmp(name, parameter_info[i].name))
   29F5 8F 03         [24] 1592 	mov	ar3,r7
   29F7 7C 00         [12] 1593 	mov	r4,#0x00
   29F9 7D 40         [12] 1594 	mov	r5,#0x40
   29FB EE            [12] 1595 	mov	a,r6
   29FC 75 F0 07      [24] 1596 	mov	b,#0x07
   29FF A4            [48] 1597 	mul	ab
   2A00 24 21         [12] 1598 	add	a,#_parameter_info
   2A02 F5 82         [12] 1599 	mov	dpl,a
   2A04 74 C8         [12] 1600 	mov	a,#(_parameter_info >> 8)
   2A06 35 F0         [12] 1601 	addc	a,b
   2A08 F5 83         [12] 1602 	mov	dph,a
   2A0A E4            [12] 1603 	clr	a
   2A0B 93            [24] 1604 	movc	a,@a+dptr
   2A0C F8            [12] 1605 	mov	r0,a
   2A0D A3            [24] 1606 	inc	dptr
   2A0E E4            [12] 1607 	clr	a
   2A0F 93            [24] 1608 	movc	a,@a+dptr
   2A10 F9            [12] 1609 	mov	r1,a
   2A11 A3            [24] 1610 	inc	dptr
   2A12 E4            [12] 1611 	clr	a
   2A13 93            [24] 1612 	movc	a,@a+dptr
   2A14 FA            [12] 1613 	mov	r2,a
   2A15 90 05 CD      [24] 1614 	mov	dptr,#_strcmp_PARM_2
   2A18 E8            [12] 1615 	mov	a,r0
   2A19 F0            [24] 1616 	movx	@dptr,a
   2A1A E9            [12] 1617 	mov	a,r1
   2A1B A3            [24] 1618 	inc	dptr
   2A1C F0            [24] 1619 	movx	@dptr,a
   2A1D EA            [12] 1620 	mov	a,r2
   2A1E A3            [24] 1621 	inc	dptr
   2A1F F0            [24] 1622 	movx	@dptr,a
   2A20 8B 82         [24] 1623 	mov	dpl,r3
   2A22 8C 83         [24] 1624 	mov	dph,r4
   2A24 8D F0         [24] 1625 	mov	b,r5
   2A26 C0 07         [24] 1626 	push	ar7
   2A28 C0 06         [24] 1627 	push	ar6
   2A2A 12 5D E7      [24] 1628 	lcall	_strcmp
   2A2D E5 82         [12] 1629 	mov	a,dpl
   2A2F 85 83 F0      [24] 1630 	mov	b,dph
   2A32 D0 06         [24] 1631 	pop	ar6
   2A34 D0 07         [24] 1632 	pop	ar7
   2A36 45 F0         [12] 1633 	orl	a,b
   2A38 60 06         [24] 1634 	jz	00103$
                           1635 ;	radio/parameters.c:265: for (i = 0; i < PARAM_MAX; i++) {
   2A3A 0E            [12] 1636 	inc	r6
   2A3B BE 0F 00      [24] 1637 	cjne	r6,#0x0F,00116$
   2A3E                    1638 00116$:
   2A3E 40 B5         [24] 1639 	jc	00104$
   2A40                    1640 00103$:
                           1641 ;	radio/parameters.c:269: return i;
   2A40 8E 82         [24] 1642 	mov	dpl,r6
   2A42 22            [24] 1643 	ret
                           1644 ;------------------------------------------------------------
                           1645 ;Allocation info for local variables in function 'param_name'
                           1646 ;------------------------------------------------------------
                           1647 ;param                     Allocated to registers r7 
                           1648 ;------------------------------------------------------------
                           1649 ;	radio/parameters.c:273: param_name(__data enum ParamID param)
                           1650 ;	-----------------------------------------
                           1651 ;	 function param_name
                           1652 ;	-----------------------------------------
   2A43                    1653 _param_name:
   2A43 AF 82         [24] 1654 	mov	r7,dpl
                           1655 ;	radio/parameters.c:275: if (param < PARAM_MAX) {
   2A45 BF 0F 00      [24] 1656 	cjne	r7,#0x0F,00108$
   2A48                    1657 00108$:
   2A48 50 21         [24] 1658 	jnc	00102$
                           1659 ;	radio/parameters.c:276: return parameter_info[param].name;
   2A4A EF            [12] 1660 	mov	a,r7
   2A4B 75 F0 07      [24] 1661 	mov	b,#0x07
   2A4E A4            [48] 1662 	mul	ab
   2A4F 24 21         [12] 1663 	add	a,#_parameter_info
   2A51 F5 82         [12] 1664 	mov	dpl,a
   2A53 74 C8         [12] 1665 	mov	a,#(_parameter_info >> 8)
   2A55 35 F0         [12] 1666 	addc	a,b
   2A57 F5 83         [12] 1667 	mov	dph,a
   2A59 E4            [12] 1668 	clr	a
   2A5A 93            [24] 1669 	movc	a,@a+dptr
   2A5B FD            [12] 1670 	mov	r5,a
   2A5C A3            [24] 1671 	inc	dptr
   2A5D E4            [12] 1672 	clr	a
   2A5E 93            [24] 1673 	movc	a,@a+dptr
   2A5F FE            [12] 1674 	mov	r6,a
   2A60 A3            [24] 1675 	inc	dptr
   2A61 E4            [12] 1676 	clr	a
   2A62 93            [24] 1677 	movc	a,@a+dptr
   2A63 FF            [12] 1678 	mov	r7,a
   2A64 8D 82         [24] 1679 	mov	dpl,r5
   2A66 8E 83         [24] 1680 	mov	dph,r6
   2A68 8F F0         [24] 1681 	mov	b,r7
   2A6A 22            [24] 1682 	ret
   2A6B                    1683 00102$:
                           1684 ;	radio/parameters.c:278: return 0;
   2A6B 90 00 00      [24] 1685 	mov	dptr,#0x0000
   2A6E 75 F0 00      [24] 1686 	mov	b,#0x00
   2A71 22            [24] 1687 	ret
                           1688 ;------------------------------------------------------------
                           1689 ;Allocation info for local variables in function 'constrain'
                           1690 ;------------------------------------------------------------
                           1691 ;	radio/parameters.c:282: uint32_t constrain(__pdata uint32_t v, __pdata uint32_t min, __pdata uint32_t max)
                           1692 ;	-----------------------------------------
                           1693 ;	 function constrain
                           1694 ;	-----------------------------------------
   2A72                    1695 _constrain:
   2A72 AC 82         [24] 1696 	mov	r4,dpl
   2A74 AD 83         [24] 1697 	mov	r5,dph
   2A76 AE F0         [24] 1698 	mov	r6,b
   2A78 FF            [12] 1699 	mov	r7,a
                           1700 ;	radio/parameters.c:284: if (v < min) v = min;
   2A79 78 6F         [12] 1701 	mov	r0,#_constrain_PARM_2
   2A7B C3            [12] 1702 	clr	c
   2A7C E2            [24] 1703 	movx	a,@r0
   2A7D F5 F0         [12] 1704 	mov	b,a
   2A7F EC            [12] 1705 	mov	a,r4
   2A80 95 F0         [12] 1706 	subb	a,b
   2A82 08            [12] 1707 	inc	r0
   2A83 E2            [24] 1708 	movx	a,@r0
   2A84 F5 F0         [12] 1709 	mov	b,a
   2A86 ED            [12] 1710 	mov	a,r5
   2A87 95 F0         [12] 1711 	subb	a,b
   2A89 08            [12] 1712 	inc	r0
   2A8A E2            [24] 1713 	movx	a,@r0
   2A8B F5 F0         [12] 1714 	mov	b,a
   2A8D EE            [12] 1715 	mov	a,r6
   2A8E 95 F0         [12] 1716 	subb	a,b
   2A90 08            [12] 1717 	inc	r0
   2A91 E2            [24] 1718 	movx	a,@r0
   2A92 F5 F0         [12] 1719 	mov	b,a
   2A94 EF            [12] 1720 	mov	a,r7
   2A95 95 F0         [12] 1721 	subb	a,b
   2A97 50 0D         [24] 1722 	jnc	00102$
   2A99 78 6F         [12] 1723 	mov	r0,#_constrain_PARM_2
   2A9B E2            [24] 1724 	movx	a,@r0
   2A9C FC            [12] 1725 	mov	r4,a
   2A9D 08            [12] 1726 	inc	r0
   2A9E E2            [24] 1727 	movx	a,@r0
   2A9F FD            [12] 1728 	mov	r5,a
   2AA0 08            [12] 1729 	inc	r0
   2AA1 E2            [24] 1730 	movx	a,@r0
   2AA2 FE            [12] 1731 	mov	r6,a
   2AA3 08            [12] 1732 	inc	r0
   2AA4 E2            [24] 1733 	movx	a,@r0
   2AA5 FF            [12] 1734 	mov	r7,a
   2AA6                    1735 00102$:
                           1736 ;	radio/parameters.c:285: if (v > max) v = max;
   2AA6 78 73         [12] 1737 	mov	r0,#_constrain_PARM_3
   2AA8 C3            [12] 1738 	clr	c
   2AA9 E2            [24] 1739 	movx	a,@r0
   2AAA 9C            [12] 1740 	subb	a,r4
   2AAB 08            [12] 1741 	inc	r0
   2AAC E2            [24] 1742 	movx	a,@r0
   2AAD 9D            [12] 1743 	subb	a,r5
   2AAE 08            [12] 1744 	inc	r0
   2AAF E2            [24] 1745 	movx	a,@r0
   2AB0 9E            [12] 1746 	subb	a,r6
   2AB1 08            [12] 1747 	inc	r0
   2AB2 E2            [24] 1748 	movx	a,@r0
   2AB3 9F            [12] 1749 	subb	a,r7
   2AB4 50 0D         [24] 1750 	jnc	00104$
   2AB6 78 73         [12] 1751 	mov	r0,#_constrain_PARM_3
   2AB8 E2            [24] 1752 	movx	a,@r0
   2AB9 FC            [12] 1753 	mov	r4,a
   2ABA 08            [12] 1754 	inc	r0
   2ABB E2            [24] 1755 	movx	a,@r0
   2ABC FD            [12] 1756 	mov	r5,a
   2ABD 08            [12] 1757 	inc	r0
   2ABE E2            [24] 1758 	movx	a,@r0
   2ABF FE            [12] 1759 	mov	r6,a
   2AC0 08            [12] 1760 	inc	r0
   2AC1 E2            [24] 1761 	movx	a,@r0
   2AC2 FF            [12] 1762 	mov	r7,a
   2AC3                    1763 00104$:
                           1764 ;	radio/parameters.c:286: return v;
   2AC3 8C 82         [24] 1765 	mov	dpl,r4
   2AC5 8D 83         [24] 1766 	mov	dph,r5
   2AC7 8E F0         [24] 1767 	mov	b,r6
   2AC9 EF            [12] 1768 	mov	a,r7
   2ACA 22            [24] 1769 	ret
                           1770 	.area CSEG    (CODE)
                           1771 	.area CONST   (CODE)
   C821                    1772 _parameter_info:
   C821 8A C8 80           1773 	.byte _str_0,(_str_0 >> 8),#0x80
   C824 19 00 00 00        1774 	.byte #0x19,#0x00,#0x00,#0x00	; 25
   C828 91 C8 80           1775 	.byte _str_1,(_str_1 >> 8),#0x80
   C82B 39 00 00 00        1776 	.byte #0x39,#0x00,#0x00,#0x00	; 57
   C82F 9E C8 80           1777 	.byte _str_2,(_str_2 >> 8),#0x80
   C832 40 00 00 00        1778 	.byte #0x40,#0x00,#0x00,#0x00	; 64
   C836 A8 C8 80           1779 	.byte _str_3,(_str_3 >> 8),#0x80
   C839 19 00 00 00        1780 	.byte #0x19,#0x00,#0x00,#0x00	; 25
   C83D AE C8 80           1781 	.byte _str_4,(_str_4 >> 8),#0x80
   C840 00 00 00 00        1782 	.byte #0x00,#0x00,#0x00,#0x00	; 0
   C844 B6 C8 80           1783 	.byte _str_5,(_str_5 >> 8),#0x80
   C847 01 00 00 00        1784 	.byte #0x01,#0x00,#0x00,#0x00	; 1
   C84B BA C8 80           1785 	.byte _str_6,(_str_6 >> 8),#0x80
   C84E 01 00 00 00        1786 	.byte #0x01,#0x00,#0x00,#0x00	; 1
   C852 C2 C8 80           1787 	.byte _str_7,(_str_7 >> 8),#0x80
   C855 01 00 00 00        1788 	.byte #0x01,#0x00,#0x00,#0x00	; 1
   C859 CC C8 80           1789 	.byte _str_8,(_str_8 >> 8),#0x80
   C85C 00 00 00 00        1790 	.byte #0x00,#0x00,#0x00,#0x00	; 0
   C860 D5 C8 80           1791 	.byte _str_9,(_str_9 >> 8),#0x80
   C863 00 00 00 00        1792 	.byte #0x00,#0x00,#0x00,#0x00	; 0
   C867 DE C8 80           1793 	.byte _str_10,(_str_10 >> 8),#0x80
   C86A 00 00 00 00        1794 	.byte #0x00,#0x00,#0x00,#0x00	; 0
   C86E EB C8 80           1795 	.byte _str_11,(_str_11 >> 8),#0x80
   C871 64 00 00 00        1796 	.byte #0x64,#0x00,#0x00,#0x00	; 100
   C875 F6 C8 80           1797 	.byte _str_12,(_str_12 >> 8),#0x80
   C878 00 00 00 00        1798 	.byte #0x00,#0x00,#0x00,#0x00	; 0
   C87C FF C8 80           1799 	.byte _str_13,(_str_13 >> 8),#0x80
   C87F 00 00 00 00        1800 	.byte #0x00,#0x00,#0x00,#0x00	; 0
   C883 0A C9 80           1801 	.byte _str_14,(_str_14 >> 8),#0x80
   C886 00 00 00 00        1802 	.byte #0x00,#0x00,#0x00,#0x00	; 0
   C88A                    1803 _str_0:
   C88A 46 4F 52 4D 41 54  1804 	.ascii "FORMAT"
   C890 00                 1805 	.db 0x00
   C891                    1806 _str_1:
   C891 53 45 52 49 41 4C  1807 	.ascii "SERIAL_SPEED"
        5F 53 50 45 45 44
   C89D 00                 1808 	.db 0x00
   C89E                    1809 _str_2:
   C89E 41 49 52 5F 53 50  1810 	.ascii "AIR_SPEED"
        45 45 44
   C8A7 00                 1811 	.db 0x00
   C8A8                    1812 _str_3:
   C8A8 4E 45 54 49 44     1813 	.ascii "NETID"
   C8AD 00                 1814 	.db 0x00
   C8AE                    1815 _str_4:
   C8AE 54 58 50 4F 57 45  1816 	.ascii "TXPOWER"
        52
   C8B5 00                 1817 	.db 0x00
   C8B6                    1818 _str_5:
   C8B6 45 43 43           1819 	.ascii "ECC"
   C8B9 00                 1820 	.db 0x00
   C8BA                    1821 _str_6:
   C8BA 4D 41 56 4C 49 4E  1822 	.ascii "MAVLINK"
        4B
   C8C1 00                 1823 	.db 0x00
   C8C2                    1824 _str_7:
   C8C2 4F 50 50 52 45 53  1825 	.ascii "OPPRESEND"
        45 4E 44
   C8CB 00                 1826 	.db 0x00
   C8CC                    1827 _str_8:
   C8CC 4D 49 4E 5F 46 52  1828 	.ascii "MIN_FREQ"
        45 51
   C8D4 00                 1829 	.db 0x00
   C8D5                    1830 _str_9:
   C8D5 4D 41 58 5F 46 52  1831 	.ascii "MAX_FREQ"
        45 51
   C8DD 00                 1832 	.db 0x00
   C8DE                    1833 _str_10:
   C8DE 4E 55 4D 5F 43 48  1834 	.ascii "NUM_CHANNELS"
        41 4E 4E 45 4C 53
   C8EA 00                 1835 	.db 0x00
   C8EB                    1836 _str_11:
   C8EB 44 55 54 59 5F 43  1837 	.ascii "DUTY_CYCLE"
        59 43 4C 45
   C8F5 00                 1838 	.db 0x00
   C8F6                    1839 _str_12:
   C8F6 4C 42 54 5F 52 53  1840 	.ascii "LBT_RSSI"
        53 49
   C8FE 00                 1841 	.db 0x00
   C8FF                    1842 _str_13:
   C8FF 4D 41 4E 43 48 45  1843 	.ascii "MANCHESTER"
        53 54 45 52
   C909 00                 1844 	.db 0x00
   C90A                    1845 _str_14:
   C90A 52 54 53 43 54 53  1846 	.ascii "RTSCTS"
   C910 00                 1847 	.db 0x00
                           1848 	.area XINIT   (CODE)
                           1849 	.area CABS    (ABS,CODE)
