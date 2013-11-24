                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (May 11 2013) (Linux)
                              4 ; This file was generated Sun Nov 24 17:43:14 2013
                              5 ;--------------------------------------------------------
                              6 	.module tdm
                              7 	.optsdcc -mmcs51 --model-large
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _fhop_set_locked
                             13 	.globl _fhop_window_change
                             14 	.globl _fhop_receive_channel
                             15 	.globl _fhop_transmit_channel
                             16 	.globl _packet_inject
                             17 	.globl _packet_set_max_xmit
                             18 	.globl _packet_force_resend
                             19 	.globl _packet_is_duplicate
                             20 	.globl _packet_is_injected
                             21 	.globl _packet_is_resend
                             22 	.globl _packet_get_next
                             23 	.globl _timer_entropy
                             24 	.globl _delay_msec
                             25 	.globl _timer2_tick
                             26 	.globl _radio_temperature
                             27 	.globl _MAVLink_report
                             28 	.globl _radio_receive_in_progress
                             29 	.globl _radio_get_transmit_power
                             30 	.globl _radio_air_rate
                             31 	.globl _radio_current_rssi
                             32 	.globl _radio_last_rssi
                             33 	.globl _radio_set_channel
                             34 	.globl _radio_receiver_on
                             35 	.globl _radio_transmit
                             36 	.globl _radio_preamble_detected
                             37 	.globl _radio_receive_packet
                             38 	.globl _printf_end_capture
                             39 	.globl _printf_start_capture
                             40 	.globl _printfl
                             41 	.globl _panic
                             42 	.globl _at_command
                             43 	.globl _constrain
                             44 	.globl _serial_write_buf
                             45 	.globl _strlen
                             46 	.globl _memset
                             47 	.globl _memcpy
                             48 	.globl _rand
                             49 	.globl _putchar
                             50 	.globl _TDM_SYNC_PIN
                             51 	.globl _NSS1
                             52 	.globl _IRQ
                             53 	.globl _PIN_ENABLE
                             54 	.globl _PIN_CONFIG
                             55 	.globl _LED_GREEN
                             56 	.globl _LED_RED
                             57 	.globl _SPI0EN
                             58 	.globl _TXBMT0
                             59 	.globl _NSS0MD0
                             60 	.globl _NSS0MD1
                             61 	.globl _RXOVRN0
                             62 	.globl _MODF0
                             63 	.globl _WCOL0
                             64 	.globl _SPIF0
                             65 	.globl _AD0CM0
                             66 	.globl _AD0CM1
                             67 	.globl _AD0CM2
                             68 	.globl _AD0WINT
                             69 	.globl _AD0BUSY
                             70 	.globl _AD0INT
                             71 	.globl _BURSTEN
                             72 	.globl _AD0EN
                             73 	.globl _CCF0
                             74 	.globl _CCF1
                             75 	.globl _CCF2
                             76 	.globl _CCF3
                             77 	.globl _CCF4
                             78 	.globl _CCF5
                             79 	.globl _CR
                             80 	.globl _CF
                             81 	.globl _P
                             82 	.globl _F1
                             83 	.globl _OV
                             84 	.globl _RS0
                             85 	.globl _RS1
                             86 	.globl _F0
                             87 	.globl _AC
                             88 	.globl _CY
                             89 	.globl _T2XCLK
                             90 	.globl _T2RCLK
                             91 	.globl _TR2
                             92 	.globl _T2SPLIT
                             93 	.globl _TF2CEN
                             94 	.globl _TF2LEN
                             95 	.globl _TF2L
                             96 	.globl _TF2H
                             97 	.globl _SI
                             98 	.globl _ACK
                             99 	.globl _ARBLOST
                            100 	.globl _ACKRQ
                            101 	.globl _STO
                            102 	.globl _STA
                            103 	.globl _TXMODE
                            104 	.globl _MASTER
                            105 	.globl _PX0
                            106 	.globl _PT0
                            107 	.globl _PX1
                            108 	.globl _PT1
                            109 	.globl _PS0
                            110 	.globl _PT2
                            111 	.globl _PSPI0
                            112 	.globl _SPI1EN
                            113 	.globl _TXBMT1
                            114 	.globl _NSS1MD0
                            115 	.globl _NSS1MD1
                            116 	.globl _RXOVRN1
                            117 	.globl _MODF1
                            118 	.globl _WCOL1
                            119 	.globl _SPIF1
                            120 	.globl _EX0
                            121 	.globl _ET0
                            122 	.globl _EX1
                            123 	.globl _ET1
                            124 	.globl _ES0
                            125 	.globl _ET2
                            126 	.globl _ESPI0
                            127 	.globl _EA
                            128 	.globl _RI0
                            129 	.globl _TI0
                            130 	.globl _RB80
                            131 	.globl _TB80
                            132 	.globl _REN0
                            133 	.globl _MCE0
                            134 	.globl _S0MODE
                            135 	.globl _CRC0VAL
                            136 	.globl _CRC0INIT
                            137 	.globl _CRC0SEL
                            138 	.globl _IT0
                            139 	.globl _IE0
                            140 	.globl _IT1
                            141 	.globl _IE1
                            142 	.globl _TR0
                            143 	.globl _TF0
                            144 	.globl _TR1
                            145 	.globl _TF1
                            146 	.globl _PCA0CP4
                            147 	.globl _PCA0CP0
                            148 	.globl _PCA0
                            149 	.globl _PCA0CP3
                            150 	.globl _PCA0CP2
                            151 	.globl _PCA0CP1
                            152 	.globl _PCA0CP5
                            153 	.globl _TMR2
                            154 	.globl _TMR2RL
                            155 	.globl _ADC0LT
                            156 	.globl _ADC0GT
                            157 	.globl _ADC0
                            158 	.globl _TMR3
                            159 	.globl _TMR3RL
                            160 	.globl _TOFF
                            161 	.globl _DP
                            162 	.globl _VDM0CN
                            163 	.globl _PCA0CPH4
                            164 	.globl _PCA0CPL4
                            165 	.globl _PCA0CPH0
                            166 	.globl _PCA0CPL0
                            167 	.globl _PCA0H
                            168 	.globl _PCA0L
                            169 	.globl _SPI0CN
                            170 	.globl _EIP2
                            171 	.globl _EIP1
                            172 	.globl _SMB0ADM
                            173 	.globl _SMB0ADR
                            174 	.globl _P2MDIN
                            175 	.globl _P1MDIN
                            176 	.globl _P0MDIN
                            177 	.globl _B
                            178 	.globl _RSTSRC
                            179 	.globl _PCA0CPH3
                            180 	.globl _PCA0CPL3
                            181 	.globl _PCA0CPH2
                            182 	.globl _PCA0CPL2
                            183 	.globl _PCA0CPH1
                            184 	.globl _PCA0CPL1
                            185 	.globl _ADC0CN
                            186 	.globl _EIE2
                            187 	.globl _EIE1
                            188 	.globl _FLWR
                            189 	.globl _IT01CF
                            190 	.globl _XBR2
                            191 	.globl _XBR1
                            192 	.globl _XBR0
                            193 	.globl _ACC
                            194 	.globl _PCA0PWM
                            195 	.globl _PCA0CPM4
                            196 	.globl _PCA0CPM3
                            197 	.globl _PCA0CPM2
                            198 	.globl _PCA0CPM1
                            199 	.globl _PCA0CPM0
                            200 	.globl _PCA0MD
                            201 	.globl _PCA0CN
                            202 	.globl _P0MAT
                            203 	.globl _P2SKIP
                            204 	.globl _P1SKIP
                            205 	.globl _P0SKIP
                            206 	.globl _PCA0CPH5
                            207 	.globl _PCA0CPL5
                            208 	.globl _REF0CN
                            209 	.globl _PSW
                            210 	.globl _P1MAT
                            211 	.globl _PCA0CPM5
                            212 	.globl _TMR2H
                            213 	.globl _TMR2L
                            214 	.globl _TMR2RLH
                            215 	.globl _TMR2RLL
                            216 	.globl _REG0CN
                            217 	.globl _TMR2CN
                            218 	.globl _P0MASK
                            219 	.globl _ADC0LTH
                            220 	.globl _ADC0LTL
                            221 	.globl _ADC0GTH
                            222 	.globl _ADC0GTL
                            223 	.globl _SMB0DAT
                            224 	.globl _SMB0CF
                            225 	.globl _SMB0CN
                            226 	.globl _P1MASK
                            227 	.globl _ADC0H
                            228 	.globl _ADC0L
                            229 	.globl _ADC0TK
                            230 	.globl _ADC0CF
                            231 	.globl _ADC0MX
                            232 	.globl _ADC0PWR
                            233 	.globl _ADC0AC
                            234 	.globl _IREF0CN
                            235 	.globl _IP
                            236 	.globl _FLKEY
                            237 	.globl _FLSCL
                            238 	.globl _PMU0CF
                            239 	.globl _OSCICL
                            240 	.globl _OSCICN
                            241 	.globl _OSCXCN
                            242 	.globl _SPI1CN
                            243 	.globl _ONESHOT
                            244 	.globl _EMI0TC
                            245 	.globl _RTC0KEY
                            246 	.globl _RTC0DAT
                            247 	.globl _RTC0ADR
                            248 	.globl _EMI0CF
                            249 	.globl _EMI0CN
                            250 	.globl _CLKSEL
                            251 	.globl _IE
                            252 	.globl _SFRPAGE
                            253 	.globl _P2DRV
                            254 	.globl _P2MDOUT
                            255 	.globl _P1DRV
                            256 	.globl _P1MDOUT
                            257 	.globl _P0DRV
                            258 	.globl _P0MDOUT
                            259 	.globl _SPI0DAT
                            260 	.globl _SPI0CKR
                            261 	.globl _SPI0CFG
                            262 	.globl _P2
                            263 	.globl _CPT0MX
                            264 	.globl _CPT1MX
                            265 	.globl _CPT0MD
                            266 	.globl _CPT1MD
                            267 	.globl _CPT0CN
                            268 	.globl _CPT1CN
                            269 	.globl _SBUF0
                            270 	.globl _SCON0
                            271 	.globl _CRC0CNT
                            272 	.globl _DC0CN
                            273 	.globl _CRC0AUTO
                            274 	.globl _DC0CF
                            275 	.globl _TMR3H
                            276 	.globl _CRC0FLIP
                            277 	.globl _TMR3L
                            278 	.globl _CRC0IN
                            279 	.globl _TMR3RLH
                            280 	.globl _CRC0CN
                            281 	.globl _TMR3RLL
                            282 	.globl _CRC0DAT
                            283 	.globl _TMR3CN
                            284 	.globl _P1
                            285 	.globl _PSCTL
                            286 	.globl _CKCON
                            287 	.globl _TH1
                            288 	.globl _TH0
                            289 	.globl _TL1
                            290 	.globl _TL0
                            291 	.globl _TMOD
                            292 	.globl _TCON
                            293 	.globl _PCON
                            294 	.globl _TOFFH
                            295 	.globl _SPI1DAT
                            296 	.globl _TOFFL
                            297 	.globl _SPI1CKR
                            298 	.globl _SPI1CFG
                            299 	.globl _DPH
                            300 	.globl _DPL
                            301 	.globl _SP
                            302 	.globl _P0
                            303 	.globl _pbuf
                            304 	.globl _trailer
                            305 	.globl _test_display
                            306 	.globl _lbt_rssi
                            307 	.globl _duty_cycle_offset
                            308 	.globl _duty_cycle
                            309 	.globl _transmit_wait
                            310 	.globl __canary
                            311 	.globl _tdm_show_rssi
                            312 	.globl _tdm_change_phase
                            313 	.globl _tdm_remote_at
                            314 	.globl _tdm_serial_loop
                            315 	.globl _tdm_init
                            316 	.globl _tdm_report_timing
                            317 ;--------------------------------------------------------
                            318 ; special function registers
                            319 ;--------------------------------------------------------
                            320 	.area RSEG    (ABS,DATA)
   0000                     321 	.org 0x0000
                     0080   322 _P0	=	0x0080
                     0081   323 _SP	=	0x0081
                     0082   324 _DPL	=	0x0082
                     0083   325 _DPH	=	0x0083
                     0084   326 _SPI1CFG	=	0x0084
                     0085   327 _SPI1CKR	=	0x0085
                     0085   328 _TOFFL	=	0x0085
                     0086   329 _SPI1DAT	=	0x0086
                     0086   330 _TOFFH	=	0x0086
                     0087   331 _PCON	=	0x0087
                     0088   332 _TCON	=	0x0088
                     0089   333 _TMOD	=	0x0089
                     008A   334 _TL0	=	0x008a
                     008B   335 _TL1	=	0x008b
                     008C   336 _TH0	=	0x008c
                     008D   337 _TH1	=	0x008d
                     008E   338 _CKCON	=	0x008e
                     008F   339 _PSCTL	=	0x008f
                     0090   340 _P1	=	0x0090
                     0091   341 _TMR3CN	=	0x0091
                     0091   342 _CRC0DAT	=	0x0091
                     0092   343 _TMR3RLL	=	0x0092
                     0092   344 _CRC0CN	=	0x0092
                     0093   345 _TMR3RLH	=	0x0093
                     0093   346 _CRC0IN	=	0x0093
                     0094   347 _TMR3L	=	0x0094
                     0095   348 _CRC0FLIP	=	0x0095
                     0095   349 _TMR3H	=	0x0095
                     0096   350 _DC0CF	=	0x0096
                     0096   351 _CRC0AUTO	=	0x0096
                     0097   352 _DC0CN	=	0x0097
                     0097   353 _CRC0CNT	=	0x0097
                     0098   354 _SCON0	=	0x0098
                     0099   355 _SBUF0	=	0x0099
                     009A   356 _CPT1CN	=	0x009a
                     009B   357 _CPT0CN	=	0x009b
                     009C   358 _CPT1MD	=	0x009c
                     009D   359 _CPT0MD	=	0x009d
                     009E   360 _CPT1MX	=	0x009e
                     009F   361 _CPT0MX	=	0x009f
                     00A0   362 _P2	=	0x00a0
                     00A1   363 _SPI0CFG	=	0x00a1
                     00A2   364 _SPI0CKR	=	0x00a2
                     00A3   365 _SPI0DAT	=	0x00a3
                     00A4   366 _P0MDOUT	=	0x00a4
                     00A4   367 _P0DRV	=	0x00a4
                     00A5   368 _P1MDOUT	=	0x00a5
                     00A5   369 _P1DRV	=	0x00a5
                     00A6   370 _P2MDOUT	=	0x00a6
                     00A6   371 _P2DRV	=	0x00a6
                     00A7   372 _SFRPAGE	=	0x00a7
                     00A8   373 _IE	=	0x00a8
                     00A9   374 _CLKSEL	=	0x00a9
                     00AA   375 _EMI0CN	=	0x00aa
                     00AB   376 _EMI0CF	=	0x00ab
                     00AC   377 _RTC0ADR	=	0x00ac
                     00AD   378 _RTC0DAT	=	0x00ad
                     00AE   379 _RTC0KEY	=	0x00ae
                     00AF   380 _EMI0TC	=	0x00af
                     00AF   381 _ONESHOT	=	0x00af
                     00B0   382 _SPI1CN	=	0x00b0
                     00B1   383 _OSCXCN	=	0x00b1
                     00B2   384 _OSCICN	=	0x00b2
                     00B3   385 _OSCICL	=	0x00b3
                     00B5   386 _PMU0CF	=	0x00b5
                     00B6   387 _FLSCL	=	0x00b6
                     00B7   388 _FLKEY	=	0x00b7
                     00B8   389 _IP	=	0x00b8
                     00B9   390 _IREF0CN	=	0x00b9
                     00BA   391 _ADC0AC	=	0x00ba
                     00BA   392 _ADC0PWR	=	0x00ba
                     00BB   393 _ADC0MX	=	0x00bb
                     00BC   394 _ADC0CF	=	0x00bc
                     00BD   395 _ADC0TK	=	0x00bd
                     00BD   396 _ADC0L	=	0x00bd
                     00BE   397 _ADC0H	=	0x00be
                     00BF   398 _P1MASK	=	0x00bf
                     00C0   399 _SMB0CN	=	0x00c0
                     00C1   400 _SMB0CF	=	0x00c1
                     00C2   401 _SMB0DAT	=	0x00c2
                     00C3   402 _ADC0GTL	=	0x00c3
                     00C4   403 _ADC0GTH	=	0x00c4
                     00C5   404 _ADC0LTL	=	0x00c5
                     00C6   405 _ADC0LTH	=	0x00c6
                     00C7   406 _P0MASK	=	0x00c7
                     00C8   407 _TMR2CN	=	0x00c8
                     00C9   408 _REG0CN	=	0x00c9
                     00CA   409 _TMR2RLL	=	0x00ca
                     00CB   410 _TMR2RLH	=	0x00cb
                     00CC   411 _TMR2L	=	0x00cc
                     00CD   412 _TMR2H	=	0x00cd
                     00CE   413 _PCA0CPM5	=	0x00ce
                     00CF   414 _P1MAT	=	0x00cf
                     00D0   415 _PSW	=	0x00d0
                     00D1   416 _REF0CN	=	0x00d1
                     00D2   417 _PCA0CPL5	=	0x00d2
                     00D3   418 _PCA0CPH5	=	0x00d3
                     00D4   419 _P0SKIP	=	0x00d4
                     00D5   420 _P1SKIP	=	0x00d5
                     00D6   421 _P2SKIP	=	0x00d6
                     00D7   422 _P0MAT	=	0x00d7
                     00D8   423 _PCA0CN	=	0x00d8
                     00D9   424 _PCA0MD	=	0x00d9
                     00DA   425 _PCA0CPM0	=	0x00da
                     00DB   426 _PCA0CPM1	=	0x00db
                     00DC   427 _PCA0CPM2	=	0x00dc
                     00DD   428 _PCA0CPM3	=	0x00dd
                     00DE   429 _PCA0CPM4	=	0x00de
                     00DF   430 _PCA0PWM	=	0x00df
                     00E0   431 _ACC	=	0x00e0
                     00E1   432 _XBR0	=	0x00e1
                     00E2   433 _XBR1	=	0x00e2
                     00E3   434 _XBR2	=	0x00e3
                     00E4   435 _IT01CF	=	0x00e4
                     00E5   436 _FLWR	=	0x00e5
                     00E6   437 _EIE1	=	0x00e6
                     00E7   438 _EIE2	=	0x00e7
                     00E8   439 _ADC0CN	=	0x00e8
                     00E9   440 _PCA0CPL1	=	0x00e9
                     00EA   441 _PCA0CPH1	=	0x00ea
                     00EB   442 _PCA0CPL2	=	0x00eb
                     00EC   443 _PCA0CPH2	=	0x00ec
                     00ED   444 _PCA0CPL3	=	0x00ed
                     00EE   445 _PCA0CPH3	=	0x00ee
                     00EF   446 _RSTSRC	=	0x00ef
                     00F0   447 _B	=	0x00f0
                     00F1   448 _P0MDIN	=	0x00f1
                     00F2   449 _P1MDIN	=	0x00f2
                     00F3   450 _P2MDIN	=	0x00f3
                     00F4   451 _SMB0ADR	=	0x00f4
                     00F5   452 _SMB0ADM	=	0x00f5
                     00F6   453 _EIP1	=	0x00f6
                     00F7   454 _EIP2	=	0x00f7
                     00F8   455 _SPI0CN	=	0x00f8
                     00F9   456 _PCA0L	=	0x00f9
                     00FA   457 _PCA0H	=	0x00fa
                     00FB   458 _PCA0CPL0	=	0x00fb
                     00FC   459 _PCA0CPH0	=	0x00fc
                     00FD   460 _PCA0CPL4	=	0x00fd
                     00FE   461 _PCA0CPH4	=	0x00fe
                     00FF   462 _VDM0CN	=	0x00ff
                     8382   463 _DP	=	0x8382
                     8685   464 _TOFF	=	0x8685
                     9392   465 _TMR3RL	=	0x9392
                     9594   466 _TMR3	=	0x9594
                     BEBD   467 _ADC0	=	0xbebd
                     C4C3   468 _ADC0GT	=	0xc4c3
                     C6C5   469 _ADC0LT	=	0xc6c5
                     CBCA   470 _TMR2RL	=	0xcbca
                     CDCC   471 _TMR2	=	0xcdcc
                     D3D2   472 _PCA0CP5	=	0xd3d2
                     EAE9   473 _PCA0CP1	=	0xeae9
                     ECEB   474 _PCA0CP2	=	0xeceb
                     EEED   475 _PCA0CP3	=	0xeeed
                     FAF9   476 _PCA0	=	0xfaf9
                     FCFB   477 _PCA0CP0	=	0xfcfb
                     FEFD   478 _PCA0CP4	=	0xfefd
                            479 ;--------------------------------------------------------
                            480 ; special function bits
                            481 ;--------------------------------------------------------
                            482 	.area RSEG    (ABS,DATA)
   0000                     483 	.org 0x0000
                     008F   484 _TF1	=	0x008f
                     008E   485 _TR1	=	0x008e
                     008D   486 _TF0	=	0x008d
                     008C   487 _TR0	=	0x008c
                     008B   488 _IE1	=	0x008b
                     008A   489 _IT1	=	0x008a
                     0089   490 _IE0	=	0x0089
                     0088   491 _IT0	=	0x0088
                     0096   492 _CRC0SEL	=	0x0096
                     0095   493 _CRC0INIT	=	0x0095
                     0094   494 _CRC0VAL	=	0x0094
                     009F   495 _S0MODE	=	0x009f
                     009D   496 _MCE0	=	0x009d
                     009C   497 _REN0	=	0x009c
                     009B   498 _TB80	=	0x009b
                     009A   499 _RB80	=	0x009a
                     0099   500 _TI0	=	0x0099
                     0098   501 _RI0	=	0x0098
                     00AF   502 _EA	=	0x00af
                     00AE   503 _ESPI0	=	0x00ae
                     00AD   504 _ET2	=	0x00ad
                     00AC   505 _ES0	=	0x00ac
                     00AB   506 _ET1	=	0x00ab
                     00AA   507 _EX1	=	0x00aa
                     00A9   508 _ET0	=	0x00a9
                     00A8   509 _EX0	=	0x00a8
                     00B7   510 _SPIF1	=	0x00b7
                     00B6   511 _WCOL1	=	0x00b6
                     00B5   512 _MODF1	=	0x00b5
                     00B4   513 _RXOVRN1	=	0x00b4
                     00B3   514 _NSS1MD1	=	0x00b3
                     00B2   515 _NSS1MD0	=	0x00b2
                     00B1   516 _TXBMT1	=	0x00b1
                     00B0   517 _SPI1EN	=	0x00b0
                     00BE   518 _PSPI0	=	0x00be
                     00BD   519 _PT2	=	0x00bd
                     00BC   520 _PS0	=	0x00bc
                     00BB   521 _PT1	=	0x00bb
                     00BA   522 _PX1	=	0x00ba
                     00B9   523 _PT0	=	0x00b9
                     00B8   524 _PX0	=	0x00b8
                     00C7   525 _MASTER	=	0x00c7
                     00C6   526 _TXMODE	=	0x00c6
                     00C5   527 _STA	=	0x00c5
                     00C4   528 _STO	=	0x00c4
                     00C3   529 _ACKRQ	=	0x00c3
                     00C2   530 _ARBLOST	=	0x00c2
                     00C1   531 _ACK	=	0x00c1
                     00C0   532 _SI	=	0x00c0
                     00CF   533 _TF2H	=	0x00cf
                     00CE   534 _TF2L	=	0x00ce
                     00CD   535 _TF2LEN	=	0x00cd
                     00CC   536 _TF2CEN	=	0x00cc
                     00CB   537 _T2SPLIT	=	0x00cb
                     00CA   538 _TR2	=	0x00ca
                     00C9   539 _T2RCLK	=	0x00c9
                     00C8   540 _T2XCLK	=	0x00c8
                     00D7   541 _CY	=	0x00d7
                     00D6   542 _AC	=	0x00d6
                     00D5   543 _F0	=	0x00d5
                     00D4   544 _RS1	=	0x00d4
                     00D3   545 _RS0	=	0x00d3
                     00D2   546 _OV	=	0x00d2
                     00D1   547 _F1	=	0x00d1
                     00D0   548 _P	=	0x00d0
                     00DF   549 _CF	=	0x00df
                     00DE   550 _CR	=	0x00de
                     00DD   551 _CCF5	=	0x00dd
                     00DC   552 _CCF4	=	0x00dc
                     00DB   553 _CCF3	=	0x00db
                     00DA   554 _CCF2	=	0x00da
                     00D9   555 _CCF1	=	0x00d9
                     00D8   556 _CCF0	=	0x00d8
                     00EF   557 _AD0EN	=	0x00ef
                     00EE   558 _BURSTEN	=	0x00ee
                     00ED   559 _AD0INT	=	0x00ed
                     00EC   560 _AD0BUSY	=	0x00ec
                     00EB   561 _AD0WINT	=	0x00eb
                     00EA   562 _AD0CM2	=	0x00ea
                     00E9   563 _AD0CM1	=	0x00e9
                     00E8   564 _AD0CM0	=	0x00e8
                     00FF   565 _SPIF0	=	0x00ff
                     00FE   566 _WCOL0	=	0x00fe
                     00FD   567 _MODF0	=	0x00fd
                     00FC   568 _RXOVRN0	=	0x00fc
                     00FB   569 _NSS0MD1	=	0x00fb
                     00FA   570 _NSS0MD0	=	0x00fa
                     00F9   571 _TXBMT0	=	0x00f9
                     00F8   572 _SPI0EN	=	0x00f8
                     0096   573 _LED_RED	=	0x0096
                     0095   574 _LED_GREEN	=	0x0095
                     0082   575 _PIN_CONFIG	=	0x0082
                     0083   576 _PIN_ENABLE	=	0x0083
                     0087   577 _IRQ	=	0x0087
                     0094   578 _NSS1	=	0x0094
                     00A6   579 _TDM_SYNC_PIN	=	0x00a6
                            580 ;--------------------------------------------------------
                            581 ; overlayable register banks
                            582 ;--------------------------------------------------------
                            583 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     584 	.ds 8
                            585 ;--------------------------------------------------------
                            586 ; internal ram data
                            587 ;--------------------------------------------------------
                            588 	.area DSEG    (DATA)
   0053                     589 _average_duty_cycle:
   0053                     590 	.ds 4
   0057                     591 _tdm_show_rssi_sloc0_1_0:
   0057                     592 	.ds 2
   0059                     593 _tdm_show_rssi_sloc1_1_0:
   0059                     594 	.ds 2
   005B                     595 _tdm_show_rssi_sloc2_1_0:
   005B                     596 	.ds 2
   005D                     597 _tdm_show_rssi_sloc3_1_0:
   005D                     598 	.ds 2
   005F                     599 _tdm_show_rssi_sloc4_1_0:
   005F                     600 	.ds 2
   0061                     601 _sync_tx_windows_old_state_1_155:
   0061                     602 	.ds 1
   0062                     603 _tdm_state_update_sloc0_1_0:
   0062                     604 	.ds 2
   0064                     605 _tdm_state_update_sloc1_1_0:
   0064                     606 	.ds 4
   0068                     607 _tdm_state_update_sloc2_1_0:
   0068                     608 	.ds 4
   006C                     609 _tdm_init_sloc0_1_0:
   006C                     610 	.ds 4
                            611 ;--------------------------------------------------------
                            612 ; overlayable items in internal ram 
                            613 ;--------------------------------------------------------
                            614 ;--------------------------------------------------------
                            615 ; indirectly addressable internal ram data
                            616 ;--------------------------------------------------------
                            617 	.area ISEG    (DATA)
                     00FF   618 __canary	=	0x00ff
                            619 ;--------------------------------------------------------
                            620 ; absolute internal ram data
                            621 ;--------------------------------------------------------
                            622 	.area IABS    (ABS,DATA)
                            623 	.area IABS    (ABS,DATA)
                            624 ;--------------------------------------------------------
                            625 ; bit data
                            626 ;--------------------------------------------------------
                            627 	.area BSEG    (BIT)
   0027                     628 _bonus_transmit:
   0027                     629 	.ds 1
   0028                     630 _transmit_yield:
   0028                     631 	.ds 1
   0029                     632 _blink_state:
   0029                     633 	.ds 1
   002A                     634 _received_packet:
   002A                     635 	.ds 1
   002B                     636 _duty_cycle_wait:
   002B                     637 	.ds 1
   002C                     638 _send_statistics:
   002C                     639 	.ds 1
   002D                     640 _send_at_command:
   002D                     641 	.ds 1
   002E                     642 _sync_tx_windows_sloc0_1_0:
   002E                     643 	.ds 1
   002F                     644 _tdm_state_update_sloc3_1_0:
   002F                     645 	.ds 1
   0030                     646 _tdm_serial_loop_sloc0_1_0:
   0030                     647 	.ds 1
                            648 ;--------------------------------------------------------
                            649 ; paged external ram data
                            650 ;--------------------------------------------------------
                            651 	.area PSEG    (PAG,XDATA)
   00B6                     652 _tdm_state:
   00B6                     653 	.ds 1
   00B7                     654 _tdm_state_remaining:
   00B7                     655 	.ds 2
   00B9                     656 _tx_window_width:
   00B9                     657 	.ds 2
   00BB                     658 _max_data_packet_length:
   00BB                     659 	.ds 1
   00BC                     660 _silence_period:
   00BC                     661 	.ds 2
   00BE                     662 _packet_latency:
   00BE                     663 	.ds 2
   00C0                     664 _ticks_per_byte:
   00C0                     665 	.ds 2
   00C2                     666 _transmit_wait::
   00C2                     667 	.ds 2
   00C4                     668 _duty_cycle::
   00C4                     669 	.ds 1
   00C5                     670 _duty_cycle_offset::
   00C5                     671 	.ds 1
   00C6                     672 _transmitted_ticks:
   00C6                     673 	.ds 2
   00C8                     674 _lbt_rssi::
   00C8                     675 	.ds 1
   00C9                     676 _lbt_listen_time:
   00C9                     677 	.ds 2
   00CB                     678 _lbt_min_time:
   00CB                     679 	.ds 2
   00CD                     680 _lbt_rand:
   00CD                     681 	.ds 2
   00CF                     682 _test_display::
   00CF                     683 	.ds 1
   00D0                     684 _trailer::
   00D0                     685 	.ds 2
   00D2                     686 _remote_at_cmd:
   00D2                     687 	.ds 17
   00E3                     688 _sync_tx_windows_delta_2_162:
   00E3                     689 	.ds 2
   00E5                     690 _tdm_serial_loop_last_t_1_207:
   00E5                     691 	.ds 2
   00E7                     692 _tdm_serial_loop_last_link_update_1_207:
   00E7                     693 	.ds 2
   00E9                     694 _tdm_serial_loop_len_2_208:
   00E9                     695 	.ds 1
   00EA                     696 _tdm_serial_loop_tdelta_2_208:
   00EA                     697 	.ds 2
                            698 ;--------------------------------------------------------
                            699 ; external ram data
                            700 ;--------------------------------------------------------
                            701 	.area XSEG    (XDATA)
   0472                     702 _pbuf::
   0472                     703 	.ds 252
   056E                     704 _link_update_unlock_count_1_185:
   056E                     705 	.ds 1
   056F                     706 _link_update_temperature_count_1_185:
   056F                     707 	.ds 1
                            708 ;--------------------------------------------------------
                            709 ; absolute external ram data
                            710 ;--------------------------------------------------------
                            711 	.area XABS    (ABS,XDATA)
                            712 ;--------------------------------------------------------
                            713 ; external initialized ram data
                            714 ;--------------------------------------------------------
                            715 	.area XISEG   (XDATA)
                            716 	.area HOME    (CODE)
                            717 	.area GSINIT0 (CODE)
                            718 	.area GSINIT1 (CODE)
                            719 	.area GSINIT2 (CODE)
                            720 	.area GSINIT3 (CODE)
                            721 	.area GSINIT4 (CODE)
                            722 	.area GSINIT5 (CODE)
                            723 	.area GSINIT  (CODE)
                            724 	.area GSFINAL (CODE)
                            725 	.area CSEG    (CODE)
                            726 ;--------------------------------------------------------
                            727 ; global & static initialisations
                            728 ;--------------------------------------------------------
                            729 	.area HOME    (CODE)
                            730 	.area GSINIT  (CODE)
                            731 	.area GSFINAL (CODE)
                            732 	.area GSINIT  (CODE)
                            733 ;--------------------------------------------------------
                            734 ; Home
                            735 ;--------------------------------------------------------
                            736 	.area HOME    (CODE)
                            737 	.area HOME    (CODE)
                            738 ;--------------------------------------------------------
                            739 ; code
                            740 ;--------------------------------------------------------
                            741 	.area CSEG    (CODE)
                            742 ;------------------------------------------------------------
                            743 ;Allocation info for local variables in function 'tdm_show_rssi'
                            744 ;------------------------------------------------------------
                            745 ;sloc0                     Allocated with name '_tdm_show_rssi_sloc0_1_0'
                            746 ;sloc1                     Allocated with name '_tdm_show_rssi_sloc1_1_0'
                            747 ;sloc2                     Allocated with name '_tdm_show_rssi_sloc2_1_0'
                            748 ;sloc3                     Allocated with name '_tdm_show_rssi_sloc3_1_0'
                            749 ;sloc4                     Allocated with name '_tdm_show_rssi_sloc4_1_0'
                            750 ;------------------------------------------------------------
                            751 ;	radio/tdm.c:152: tdm_show_rssi(void)
                            752 ;	-----------------------------------------
                            753 ;	 function tdm_show_rssi
                            754 ;	-----------------------------------------
   458F                     755 _tdm_show_rssi:
                     0007   756 	ar7 = 0x07
                     0006   757 	ar6 = 0x06
                     0005   758 	ar5 = 0x05
                     0004   759 	ar4 = 0x04
                     0003   760 	ar3 = 0x03
                     0002   761 	ar2 = 0x02
                     0001   762 	ar1 = 0x01
                     0000   763 	ar0 = 0x00
                            764 ;	radio/tdm.c:154: printf("L/R RSSI: %u/%u  L/R noise: %u/%u pkts: %u ",
   458F 78 42         [12]  765 	mov	r0,#(_statistics + 0x0002)
   4591 E2            [24]  766 	movx	a,@r0
   4592 FE            [12]  767 	mov	r6,a
   4593 08            [12]  768 	inc	r0
   4594 E2            [24]  769 	movx	a,@r0
   4595 FF            [12]  770 	mov	r7,a
   4596 78 45         [12]  771 	mov	r0,#(_remote_statistics + 0x0001)
   4598 E2            [24]  772 	movx	a,@r0
   4599 FD            [12]  773 	mov	r5,a
   459A 7C 00         [12]  774 	mov	r4,#0x00
   459C 78 41         [12]  775 	mov	r0,#(_statistics + 0x0001)
   459E E2            [24]  776 	movx	a,@r0
   459F FB            [12]  777 	mov	r3,a
   45A0 8B 57         [24]  778 	mov	_tdm_show_rssi_sloc0_1_0,r3
   45A2 75 58 00      [24]  779 	mov	(_tdm_show_rssi_sloc0_1_0 + 1),#0x00
   45A5 78 44         [12]  780 	mov	r0,#_remote_statistics
   45A7 E2            [24]  781 	movx	a,@r0
   45A8 FB            [12]  782 	mov	r3,a
   45A9 8B 59         [24]  783 	mov	_tdm_show_rssi_sloc1_1_0,r3
   45AB 75 5A 00      [24]  784 	mov	(_tdm_show_rssi_sloc1_1_0 + 1),#0x00
   45AE 78 40         [12]  785 	mov	r0,#_statistics
   45B0 E2            [24]  786 	movx	a,@r0
   45B1 FB            [12]  787 	mov	r3,a
   45B2 7A 00         [12]  788 	mov	r2,#0x00
   45B4 C0 06         [24]  789 	push	ar6
   45B6 C0 07         [24]  790 	push	ar7
   45B8 C0 05         [24]  791 	push	ar5
   45BA C0 04         [24]  792 	push	ar4
   45BC C0 57         [24]  793 	push	_tdm_show_rssi_sloc0_1_0
   45BE C0 58         [24]  794 	push	(_tdm_show_rssi_sloc0_1_0 + 1)
   45C0 C0 59         [24]  795 	push	_tdm_show_rssi_sloc1_1_0
   45C2 C0 5A         [24]  796 	push	(_tdm_show_rssi_sloc1_1_0 + 1)
   45C4 C0 03         [24]  797 	push	ar3
   45C6 C0 02         [24]  798 	push	ar2
   45C8 74 93         [12]  799 	mov	a,#__str_0
   45CA C0 E0         [24]  800 	push	acc
   45CC 74 CC         [12]  801 	mov	a,#(__str_0 >> 8)
   45CE C0 E0         [24]  802 	push	acc
   45D0 74 80         [12]  803 	mov	a,#0x80
   45D2 C0 E0         [24]  804 	push	acc
   45D4 12 2D B8      [24]  805 	lcall	_printfl
   45D7 E5 81         [12]  806 	mov	a,sp
   45D9 24 F3         [12]  807 	add	a,#0xf3
   45DB F5 81         [12]  808 	mov	sp,a
                            809 ;	radio/tdm.c:160: printf(" txe=%u rxe=%u stx=%u srx=%u ecc=%u/%u temp=%d dco=%u\n",
   45DD 78 C5         [12]  810 	mov	r0,#_duty_cycle_offset
   45DF E2            [24]  811 	movx	a,@r0
   45E0 FE            [12]  812 	mov	r6,a
   45E1 7F 00         [12]  813 	mov	r7,#0x00
   45E3 C0 07         [24]  814 	push	ar7
   45E5 C0 06         [24]  815 	push	ar6
   45E7 12 3C 76      [24]  816 	lcall	_radio_temperature
   45EA AC 82         [24]  817 	mov	r4,dpl
   45EC AD 83         [24]  818 	mov	r5,dph
   45EE D0 06         [24]  819 	pop	ar6
   45F0 D0 07         [24]  820 	pop	ar7
   45F2 78 3E         [12]  821 	mov	r0,#(_errors + 0x000a)
   45F4 E2            [24]  822 	movx	a,@r0
   45F5 F5 59         [12]  823 	mov	_tdm_show_rssi_sloc1_1_0,a
   45F7 08            [12]  824 	inc	r0
   45F8 E2            [24]  825 	movx	a,@r0
   45F9 F5 5A         [12]  826 	mov	(_tdm_show_rssi_sloc1_1_0 + 1),a
   45FB 78 3C         [12]  827 	mov	r0,#(_errors + 0x0008)
   45FD E2            [24]  828 	movx	a,@r0
   45FE F5 57         [12]  829 	mov	_tdm_show_rssi_sloc0_1_0,a
   4600 08            [12]  830 	inc	r0
   4601 E2            [24]  831 	movx	a,@r0
   4602 F5 58         [12]  832 	mov	(_tdm_show_rssi_sloc0_1_0 + 1),a
   4604 78 3A         [12]  833 	mov	r0,#(_errors + 0x0006)
   4606 E2            [24]  834 	movx	a,@r0
   4607 F5 5B         [12]  835 	mov	_tdm_show_rssi_sloc2_1_0,a
   4609 08            [12]  836 	inc	r0
   460A E2            [24]  837 	movx	a,@r0
   460B F5 5C         [12]  838 	mov	(_tdm_show_rssi_sloc2_1_0 + 1),a
   460D 78 38         [12]  839 	mov	r0,#(_errors + 0x0004)
   460F E2            [24]  840 	movx	a,@r0
   4610 F5 5D         [12]  841 	mov	_tdm_show_rssi_sloc3_1_0,a
   4612 08            [12]  842 	inc	r0
   4613 E2            [24]  843 	movx	a,@r0
   4614 F5 5E         [12]  844 	mov	(_tdm_show_rssi_sloc3_1_0 + 1),a
   4616 78 34         [12]  845 	mov	r0,#_errors
   4618 E2            [24]  846 	movx	a,@r0
   4619 F5 5F         [12]  847 	mov	_tdm_show_rssi_sloc4_1_0,a
   461B 08            [12]  848 	inc	r0
   461C E2            [24]  849 	movx	a,@r0
   461D F5 60         [12]  850 	mov	(_tdm_show_rssi_sloc4_1_0 + 1),a
   461F 78 36         [12]  851 	mov	r0,#(_errors + 0x0002)
   4621 E2            [24]  852 	movx	a,@r0
   4622 FA            [12]  853 	mov	r2,a
   4623 08            [12]  854 	inc	r0
   4624 E2            [24]  855 	movx	a,@r0
   4625 FB            [12]  856 	mov	r3,a
   4626 C0 06         [24]  857 	push	ar6
   4628 C0 07         [24]  858 	push	ar7
   462A C0 04         [24]  859 	push	ar4
   462C C0 05         [24]  860 	push	ar5
   462E C0 59         [24]  861 	push	_tdm_show_rssi_sloc1_1_0
   4630 C0 5A         [24]  862 	push	(_tdm_show_rssi_sloc1_1_0 + 1)
   4632 C0 57         [24]  863 	push	_tdm_show_rssi_sloc0_1_0
   4634 C0 58         [24]  864 	push	(_tdm_show_rssi_sloc0_1_0 + 1)
   4636 C0 5B         [24]  865 	push	_tdm_show_rssi_sloc2_1_0
   4638 C0 5C         [24]  866 	push	(_tdm_show_rssi_sloc2_1_0 + 1)
   463A C0 5D         [24]  867 	push	_tdm_show_rssi_sloc3_1_0
   463C C0 5E         [24]  868 	push	(_tdm_show_rssi_sloc3_1_0 + 1)
   463E C0 5F         [24]  869 	push	_tdm_show_rssi_sloc4_1_0
   4640 C0 60         [24]  870 	push	(_tdm_show_rssi_sloc4_1_0 + 1)
   4642 C0 02         [24]  871 	push	ar2
   4644 C0 03         [24]  872 	push	ar3
   4646 74 BF         [12]  873 	mov	a,#__str_1
   4648 C0 E0         [24]  874 	push	acc
   464A 74 CC         [12]  875 	mov	a,#(__str_1 >> 8)
   464C C0 E0         [24]  876 	push	acc
   464E 74 80         [12]  877 	mov	a,#0x80
   4650 C0 E0         [24]  878 	push	acc
   4652 12 2D B8      [24]  879 	lcall	_printfl
   4655 E5 81         [12]  880 	mov	a,sp
   4657 24 ED         [12]  881 	add	a,#0xed
   4659 F5 81         [12]  882 	mov	sp,a
                            883 ;	radio/tdm.c:169: statistics.receive_count = 0;
   465B 78 42         [12]  884 	mov	r0,#(_statistics + 0x0002)
   465D E4            [12]  885 	clr	a
   465E F2            [24]  886 	movx	@r0,a
   465F 08            [12]  887 	inc	r0
   4660 F2            [24]  888 	movx	@r0,a
   4661 22            [24]  889 	ret
                            890 ;------------------------------------------------------------
                            891 ;Allocation info for local variables in function 'display_test_output'
                            892 ;------------------------------------------------------------
                            893 ;	radio/tdm.c:175: display_test_output(void)
                            894 ;	-----------------------------------------
                            895 ;	 function display_test_output
                            896 ;	-----------------------------------------
   4662                     897 _display_test_output:
                            898 ;	radio/tdm.c:177: if (test_display & AT_TEST_RSSI) {
   4662 78 CF         [12]  899 	mov	r0,#_test_display
   4664 E2            [24]  900 	movx	a,@r0
   4665 54 01         [12]  901 	anl	a,#0x01
   4667 60 03         [24]  902 	jz	00103$
                            903 ;	radio/tdm.c:178: tdm_show_rssi();
   4669 02 45 8F      [24]  904 	ljmp	_tdm_show_rssi
   466C                     905 00103$:
   466C 22            [24]  906 	ret
                            907 ;------------------------------------------------------------
                            908 ;Allocation info for local variables in function 'flight_time_estimate'
                            909 ;------------------------------------------------------------
                            910 ;	radio/tdm.c:188: static uint16_t flight_time_estimate(__pdata uint8_t packet_len)
                            911 ;	-----------------------------------------
                            912 ;	 function flight_time_estimate
                            913 ;	-----------------------------------------
   466D                     914 _flight_time_estimate:
   466D AF 82         [24]  915 	mov	r7,dpl
                            916 ;	radio/tdm.c:190: return packet_latency + (packet_len * ticks_per_byte);
   466F 7E 00         [12]  917 	mov	r6,#0x00
   4671 78 C0         [12]  918 	mov	r0,#_ticks_per_byte
   4673 90 05 CB      [24]  919 	mov	dptr,#__mulint_PARM_2
   4676 E2            [24]  920 	movx	a,@r0
   4677 F0            [24]  921 	movx	@dptr,a
   4678 08            [12]  922 	inc	r0
   4679 E2            [24]  923 	movx	a,@r0
   467A A3            [24]  924 	inc	dptr
   467B F0            [24]  925 	movx	@dptr,a
   467C 8F 82         [24]  926 	mov	dpl,r7
   467E 8E 83         [24]  927 	mov	dph,r6
   4680 12 5E 7B      [24]  928 	lcall	__mulint
   4683 AE 82         [24]  929 	mov	r6,dpl
   4685 AF 83         [24]  930 	mov	r7,dph
   4687 78 BE         [12]  931 	mov	r0,#_packet_latency
   4689 E2            [24]  932 	movx	a,@r0
   468A 2E            [12]  933 	add	a,r6
   468B FE            [12]  934 	mov	r6,a
   468C 08            [12]  935 	inc	r0
   468D E2            [24]  936 	movx	a,@r0
   468E 3F            [12]  937 	addc	a,r7
   468F 8E 82         [24]  938 	mov	dpl,r6
   4691 F5 83         [12]  939 	mov	dph,a
   4693 22            [24]  940 	ret
                            941 ;------------------------------------------------------------
                            942 ;Allocation info for local variables in function 'sync_tx_windows'
                            943 ;------------------------------------------------------------
                            944 ;old_state                 Allocated with name '_sync_tx_windows_old_state_1_155'
                            945 ;------------------------------------------------------------
                            946 ;	radio/tdm.c:204: sync_tx_windows(__pdata uint8_t packet_length)
                            947 ;	-----------------------------------------
                            948 ;	 function sync_tx_windows
                            949 ;	-----------------------------------------
   4694                     950 _sync_tx_windows:
   4694 AF 82         [24]  951 	mov	r7,dpl
                            952 ;	radio/tdm.c:206: __data enum tdm_state old_state = tdm_state;
   4696 78 B6         [12]  953 	mov	r0,#_tdm_state
   4698 E2            [24]  954 	movx	a,@r0
   4699 F5 61         [12]  955 	mov	_sync_tx_windows_old_state_1_155,a
                            956 ;	radio/tdm.c:207: __pdata uint16_t old_remaining = tdm_state_remaining;
   469B 78 B7         [12]  957 	mov	r0,#_tdm_state_remaining
   469D E2            [24]  958 	movx	a,@r0
   469E FC            [12]  959 	mov	r4,a
   469F 08            [12]  960 	inc	r0
   46A0 E2            [24]  961 	movx	a,@r0
   46A1 FD            [12]  962 	mov	r5,a
                            963 ;	radio/tdm.c:209: if (trailer.bonus) {
   46A2 78 D1         [12]  964 	mov	r0,#(_trailer + 0x0001)
   46A4 E2            [24]  965 	movx	a,@r0
   46A5 30 E6 46      [24]  966 	jnb	acc.6,00109$
                            967 ;	radio/tdm.c:212: if (old_state == TDM_SILENCE1) {
   46A8 74 01         [12]  968 	mov	a,#0x01
   46AA B5 61 10      [24]  969 	cjne	a,_sync_tx_windows_old_state_1_155,00106$
                            970 ;	radio/tdm.c:218: tdm_state_remaining = silence_period;
   46AD 78 BC         [12]  971 	mov	r0,#_silence_period
   46AF E2            [24]  972 	movx	a,@r0
   46B0 FA            [12]  973 	mov	r2,a
   46B1 08            [12]  974 	inc	r0
   46B2 E2            [24]  975 	movx	a,@r0
   46B3 FB            [12]  976 	mov	r3,a
   46B4 78 B7         [12]  977 	mov	r0,#_tdm_state_remaining
   46B6 EA            [12]  978 	mov	a,r2
   46B7 F2            [24]  979 	movx	@r0,a
   46B8 08            [12]  980 	inc	r0
   46B9 EB            [12]  981 	mov	a,r3
   46BA F2            [24]  982 	movx	@r0,a
   46BB 80 46         [24]  983 	sjmp	00110$
   46BD                     984 00106$:
                            985 ;	radio/tdm.c:219: } else if (old_state == TDM_RECEIVE || old_state == TDM_SILENCE2) {
   46BD 74 02         [12]  986 	mov	a,#0x02
   46BF B5 61 02      [24]  987 	cjne	a,_sync_tx_windows_old_state_1_155,00151$
   46C2 80 05         [24]  988 	sjmp	00101$
   46C4                     989 00151$:
   46C4 74 03         [12]  990 	mov	a,#0x03
   46C6 B5 61 0F      [24]  991 	cjne	a,_sync_tx_windows_old_state_1_155,00102$
   46C9                     992 00101$:
                            993 ;	radio/tdm.c:224: tdm_state = TDM_SILENCE2;
   46C9 78 B6         [12]  994 	mov	r0,#_tdm_state
   46CB 74 03         [12]  995 	mov	a,#0x03
   46CD F2            [24]  996 	movx	@r0,a
                            997 ;	radio/tdm.c:225: tdm_state_remaining = 1;
   46CE 78 B7         [12]  998 	mov	r0,#_tdm_state_remaining
   46D0 74 01         [12]  999 	mov	a,#0x01
   46D2 F2            [24] 1000 	movx	@r0,a
   46D3 08            [12] 1001 	inc	r0
   46D4 E4            [12] 1002 	clr	a
   46D5 F2            [24] 1003 	movx	@r0,a
   46D6 80 2B         [24] 1004 	sjmp	00110$
   46D8                    1005 00102$:
                           1006 ;	radio/tdm.c:227: tdm_state = TDM_TRANSMIT;
   46D8 78 B6         [12] 1007 	mov	r0,#_tdm_state
   46DA E4            [12] 1008 	clr	a
   46DB F2            [24] 1009 	movx	@r0,a
                           1010 ;	radio/tdm.c:228: tdm_state_remaining = trailer.window;
   46DC 78 D0         [12] 1011 	mov	r0,#_trailer
   46DE E2            [24] 1012 	movx	a,@r0
   46DF FA            [12] 1013 	mov	r2,a
   46E0 08            [12] 1014 	inc	r0
   46E1 E2            [24] 1015 	movx	a,@r0
   46E2 54 1F         [12] 1016 	anl	a,#0x1F
   46E4 FB            [12] 1017 	mov	r3,a
   46E5 78 B7         [12] 1018 	mov	r0,#_tdm_state_remaining
   46E7 EA            [12] 1019 	mov	a,r2
   46E8 F2            [24] 1020 	movx	@r0,a
   46E9 08            [12] 1021 	inc	r0
   46EA EB            [12] 1022 	mov	a,r3
   46EB F2            [24] 1023 	movx	@r0,a
   46EC 80 15         [24] 1024 	sjmp	00110$
   46EE                    1025 00109$:
                           1026 ;	radio/tdm.c:233: tdm_state = TDM_RECEIVE;
   46EE 78 B6         [12] 1027 	mov	r0,#_tdm_state
   46F0 74 02         [12] 1028 	mov	a,#0x02
   46F2 F2            [24] 1029 	movx	@r0,a
                           1030 ;	radio/tdm.c:234: tdm_state_remaining = trailer.window;
   46F3 78 D0         [12] 1031 	mov	r0,#_trailer
   46F5 E2            [24] 1032 	movx	a,@r0
   46F6 FA            [12] 1033 	mov	r2,a
   46F7 08            [12] 1034 	inc	r0
   46F8 E2            [24] 1035 	movx	a,@r0
   46F9 54 1F         [12] 1036 	anl	a,#0x1F
   46FB FB            [12] 1037 	mov	r3,a
   46FC 78 B7         [12] 1038 	mov	r0,#_tdm_state_remaining
   46FE EA            [12] 1039 	mov	a,r2
   46FF F2            [24] 1040 	movx	@r0,a
   4700 08            [12] 1041 	inc	r0
   4701 EB            [12] 1042 	mov	a,r3
   4702 F2            [24] 1043 	movx	@r0,a
   4703                    1044 00110$:
                           1045 ;	radio/tdm.c:239: bonus_transmit = (tdm_state == TDM_RECEIVE && packet_length==0);
   4703 78 B6         [12] 1046 	mov	r0,#_tdm_state
   4705 E2            [24] 1047 	movx	a,@r0
   4706 B4 02 08      [24] 1048 	cjne	a,#0x02,00121$
   4709 EF            [12] 1049 	mov	a,r7
   470A B4 01 00      [24] 1050 	cjne	a,#0x01,00156$
   470D                    1051 00156$:
   470D 92 2E         [24] 1052 	mov	_sync_tx_windows_sloc0_1_0,c
   470F 40 04         [24] 1053 	jc	00122$
   4711                    1054 00121$:
   4711 C2 2E         [12] 1055 	clr	_sync_tx_windows_sloc0_1_0
   4713 80 02         [24] 1056 	sjmp	00123$
   4715                    1057 00122$:
   4715 D2 2E         [12] 1058 	setb	_sync_tx_windows_sloc0_1_0
   4717                    1059 00123$:
   4717 A2 2E         [12] 1060 	mov	c,_sync_tx_windows_sloc0_1_0
   4719 92 27         [24] 1061 	mov	_bonus_transmit,c
                           1062 ;	radio/tdm.c:242: if (tdm_state != TDM_TRANSMIT) {
   471B 78 B6         [12] 1063 	mov	r0,#_tdm_state
   471D E2            [24] 1064 	movx	a,@r0
   471E 60 02         [24] 1065 	jz	00112$
                           1066 ;	radio/tdm.c:243: transmit_yield = 0;
   4720 C2 28         [12] 1067 	clr	_transmit_yield
   4722                    1068 00112$:
                           1069 ;	radio/tdm.c:246: if (at_testmode & AT_TEST_TDM) {
   4722 78 13         [12] 1070 	mov	r0,#_at_testmode
   4724 E2            [24] 1071 	movx	a,@r0
   4725 54 02         [12] 1072 	anl	a,#0x02
   4727 70 01         [24] 1073 	jnz	00159$
   4729 22            [24] 1074 	ret
   472A                    1075 00159$:
                           1076 ;	radio/tdm.c:248: delta = old_remaining - tdm_state_remaining;
   472A 78 B7         [12] 1077 	mov	r0,#_tdm_state_remaining
   472C 79 E3         [12] 1078 	mov	r1,#_sync_tx_windows_delta_2_162
   472E D3            [12] 1079 	setb	c
   472F E2            [24] 1080 	movx	a,@r0
   4730 9C            [12] 1081 	subb	a,r4
   4731 F4            [12] 1082 	cpl	a
   4732 B3            [12] 1083 	cpl	c
   4733 F3            [24] 1084 	movx	@r1,a
   4734 B3            [12] 1085 	cpl	c
   4735 08            [12] 1086 	inc	r0
   4736 E2            [24] 1087 	movx	a,@r0
   4737 9D            [12] 1088 	subb	a,r5
   4738 F4            [12] 1089 	cpl	a
   4739 09            [12] 1090 	inc	r1
   473A F3            [24] 1091 	movx	@r1,a
                           1092 ;	radio/tdm.c:249: if (old_state != tdm_state ||
   473B 78 B6         [12] 1093 	mov	r0,#_tdm_state
   473D E2            [24] 1094 	movx	a,@r0
   473E B5 61 6E      [24] 1095 	cjne	a,_sync_tx_windows_old_state_1_155,00113$
                           1096 ;	radio/tdm.c:250: delta > (int16_t)packet_latency/2 ||
   4741 C0 07         [24] 1097 	push	ar7
   4743 78 BE         [12] 1098 	mov	r0,#_packet_latency
   4745 E2            [24] 1099 	movx	a,@r0
   4746 FA            [12] 1100 	mov	r2,a
   4747 08            [12] 1101 	inc	r0
   4748 E2            [24] 1102 	movx	a,@r0
   4749 FB            [12] 1103 	mov	r3,a
   474A 90 05 E8      [24] 1104 	mov	dptr,#__divsint_PARM_2
   474D 74 02         [12] 1105 	mov	a,#0x02
   474F F0            [24] 1106 	movx	@dptr,a
   4750 E4            [12] 1107 	clr	a
   4751 A3            [24] 1108 	inc	dptr
   4752 F0            [24] 1109 	movx	@dptr,a
   4753 8A 82         [24] 1110 	mov	dpl,r2
   4755 8B 83         [24] 1111 	mov	dph,r3
   4757 C0 03         [24] 1112 	push	ar3
   4759 C0 02         [24] 1113 	push	ar2
   475B 12 61 87      [24] 1114 	lcall	__divsint
   475E AE 82         [24] 1115 	mov	r6,dpl
   4760 AF 83         [24] 1116 	mov	r7,dph
   4762 D0 02         [24] 1117 	pop	ar2
   4764 D0 03         [24] 1118 	pop	ar3
   4766 78 E3         [12] 1119 	mov	r0,#_sync_tx_windows_delta_2_162
   4768 C3            [12] 1120 	clr	c
   4769 E2            [24] 1121 	movx	a,@r0
   476A F5 F0         [12] 1122 	mov	b,a
   476C EE            [12] 1123 	mov	a,r6
   476D 95 F0         [12] 1124 	subb	a,b
   476F 08            [12] 1125 	inc	r0
   4770 E2            [24] 1126 	movx	a,@r0
   4771 F5 F0         [12] 1127 	mov	b,a
   4773 EF            [12] 1128 	mov	a,r7
   4774 64 80         [12] 1129 	xrl	a,#0x80
   4776 63 F0 80      [24] 1130 	xrl	b,#0x80
   4779 95 F0         [12] 1131 	subb	a,b
   477B D0 07         [24] 1132 	pop	ar7
                           1133 ;	radio/tdm.c:251: delta < -(int16_t)packet_latency/2) {
   477D 40 30         [24] 1134 	jc	00113$
   477F E4            [12] 1135 	clr	a
   4780 9A            [12] 1136 	subb	a,r2
   4781 FA            [12] 1137 	mov	r2,a
   4782 E4            [12] 1138 	clr	a
   4783 9B            [12] 1139 	subb	a,r3
   4784 FB            [12] 1140 	mov	r3,a
   4785 90 05 E8      [24] 1141 	mov	dptr,#__divsint_PARM_2
   4788 74 02         [12] 1142 	mov	a,#0x02
   478A F0            [24] 1143 	movx	@dptr,a
   478B E4            [12] 1144 	clr	a
   478C A3            [24] 1145 	inc	dptr
   478D F0            [24] 1146 	movx	@dptr,a
   478E 8A 82         [24] 1147 	mov	dpl,r2
   4790 8B 83         [24] 1148 	mov	dph,r3
   4792 C0 07         [24] 1149 	push	ar7
   4794 12 61 87      [24] 1150 	lcall	__divsint
   4797 AB 82         [24] 1151 	mov	r3,dpl
   4799 AE 83         [24] 1152 	mov	r6,dph
   479B D0 07         [24] 1153 	pop	ar7
   479D 78 E3         [12] 1154 	mov	r0,#_sync_tx_windows_delta_2_162
   479F C3            [12] 1155 	clr	c
   47A0 E2            [24] 1156 	movx	a,@r0
   47A1 9B            [12] 1157 	subb	a,r3
   47A2 08            [12] 1158 	inc	r0
   47A3 E2            [24] 1159 	movx	a,@r0
   47A4 64 80         [12] 1160 	xrl	a,#0x80
   47A6 8E F0         [24] 1161 	mov	b,r6
   47A8 63 F0 80      [24] 1162 	xrl	b,#0x80
   47AB 95 F0         [12] 1163 	subb	a,b
   47AD 50 4B         [24] 1164 	jnc	00119$
   47AF                    1165 00113$:
                           1166 ;	radio/tdm.c:252: printf("TDM: %u/%u len=%u ",
   47AF 7E 00         [12] 1167 	mov	r6,#0x00
   47B1 78 B6         [12] 1168 	mov	r0,#_tdm_state
   47B3 E2            [24] 1169 	movx	a,@r0
   47B4 FA            [12] 1170 	mov	r2,a
   47B5 7B 00         [12] 1171 	mov	r3,#0x00
   47B7 AC 61         [24] 1172 	mov	r4,_sync_tx_windows_old_state_1_155
   47B9 7D 00         [12] 1173 	mov	r5,#0x00
   47BB C0 07         [24] 1174 	push	ar7
   47BD C0 06         [24] 1175 	push	ar6
   47BF C0 02         [24] 1176 	push	ar2
   47C1 C0 03         [24] 1177 	push	ar3
   47C3 C0 04         [24] 1178 	push	ar4
   47C5 C0 05         [24] 1179 	push	ar5
   47C7 74 F6         [12] 1180 	mov	a,#__str_2
   47C9 C0 E0         [24] 1181 	push	acc
   47CB 74 CC         [12] 1182 	mov	a,#(__str_2 >> 8)
   47CD C0 E0         [24] 1183 	push	acc
   47CF 74 80         [12] 1184 	mov	a,#0x80
   47D1 C0 E0         [24] 1185 	push	acc
   47D3 12 2D B8      [24] 1186 	lcall	_printfl
   47D6 E5 81         [12] 1187 	mov	a,sp
   47D8 24 F7         [12] 1188 	add	a,#0xf7
   47DA F5 81         [12] 1189 	mov	sp,a
                           1190 ;	radio/tdm.c:256: printf(" delta: %d\n",
   47DC 78 E3         [12] 1191 	mov	r0,#_sync_tx_windows_delta_2_162
   47DE E2            [24] 1192 	movx	a,@r0
   47DF C0 E0         [24] 1193 	push	acc
   47E1 08            [12] 1194 	inc	r0
   47E2 E2            [24] 1195 	movx	a,@r0
   47E3 C0 E0         [24] 1196 	push	acc
   47E5 74 09         [12] 1197 	mov	a,#__str_3
   47E7 C0 E0         [24] 1198 	push	acc
   47E9 74 CD         [12] 1199 	mov	a,#(__str_3 >> 8)
   47EB C0 E0         [24] 1200 	push	acc
   47ED 74 80         [12] 1201 	mov	a,#0x80
   47EF C0 E0         [24] 1202 	push	acc
   47F1 12 2D B8      [24] 1203 	lcall	_printfl
   47F4 E5 81         [12] 1204 	mov	a,sp
   47F6 24 FB         [12] 1205 	add	a,#0xfb
   47F8 F5 81         [12] 1206 	mov	sp,a
   47FA                    1207 00119$:
   47FA 22            [24] 1208 	ret
                           1209 ;------------------------------------------------------------
                           1210 ;Allocation info for local variables in function 'tdm_state_update'
                           1211 ;------------------------------------------------------------
                           1212 ;sloc0                     Allocated with name '_tdm_state_update_sloc0_1_0'
                           1213 ;sloc1                     Allocated with name '_tdm_state_update_sloc1_1_0'
                           1214 ;sloc2                     Allocated with name '_tdm_state_update_sloc2_1_0'
                           1215 ;------------------------------------------------------------
                           1216 ;	radio/tdm.c:265: tdm_state_update(__pdata uint16_t tdelta)
                           1217 ;	-----------------------------------------
                           1218 ;	 function tdm_state_update
                           1219 ;	-----------------------------------------
   47FB                    1220 _tdm_state_update:
   47FB AE 82         [24] 1221 	mov	r6,dpl
   47FD AF 83         [24] 1222 	mov	r7,dph
                           1223 ;	radio/tdm.c:269: if (tdelta > transmit_wait) {
   47FF 78 C2         [12] 1224 	mov	r0,#_transmit_wait
   4801 C3            [12] 1225 	clr	c
   4802 E2            [24] 1226 	movx	a,@r0
   4803 9E            [12] 1227 	subb	a,r6
   4804 08            [12] 1228 	inc	r0
   4805 E2            [24] 1229 	movx	a,@r0
   4806 9F            [12] 1230 	subb	a,r7
   4807 50 08         [24] 1231 	jnc	00102$
                           1232 ;	radio/tdm.c:270: transmit_wait = 0;
   4809 78 C2         [12] 1233 	mov	r0,#_transmit_wait
   480B E4            [12] 1234 	clr	a
   480C F2            [24] 1235 	movx	@r0,a
   480D 08            [12] 1236 	inc	r0
   480E F2            [24] 1237 	movx	@r0,a
   480F 80 0A         [24] 1238 	sjmp	00116$
   4811                    1239 00102$:
                           1240 ;	radio/tdm.c:272: transmit_wait -= tdelta;
   4811 78 C2         [12] 1241 	mov	r0,#_transmit_wait
   4813 E2            [24] 1242 	movx	a,@r0
   4814 C3            [12] 1243 	clr	c
   4815 9E            [12] 1244 	subb	a,r6
   4816 F2            [24] 1245 	movx	@r0,a
   4817 08            [12] 1246 	inc	r0
   4818 E2            [24] 1247 	movx	a,@r0
   4819 9F            [12] 1248 	subb	a,r7
   481A F2            [24] 1249 	movx	@r0,a
                           1250 ;	radio/tdm.c:276: while (tdelta >= tdm_state_remaining) {
   481B                    1251 00116$:
   481B 78 B7         [12] 1252 	mov	r0,#_tdm_state_remaining
   481D C3            [12] 1253 	clr	c
   481E E2            [24] 1254 	movx	a,@r0
   481F F5 F0         [12] 1255 	mov	b,a
   4821 EE            [12] 1256 	mov	a,r6
   4822 95 F0         [12] 1257 	subb	a,b
   4824 08            [12] 1258 	inc	r0
   4825 E2            [24] 1259 	movx	a,@r0
   4826 F5 F0         [12] 1260 	mov	b,a
   4828 EF            [12] 1261 	mov	a,r7
   4829 95 F0         [12] 1262 	subb	a,b
   482B 50 03         [24] 1263 	jnc	00146$
   482D 02 4A 62      [24] 1264 	ljmp	00118$
   4830                    1265 00146$:
                           1266 ;	radio/tdm.c:278: tdm_state = (tdm_state+1) % 4;
   4830 78 B6         [12] 1267 	mov	r0,#_tdm_state
   4832 E2            [24] 1268 	movx	a,@r0
   4833 FC            [12] 1269 	mov	r4,a
   4834 7D 00         [12] 1270 	mov	r5,#0x00
   4836 0C            [12] 1271 	inc	r4
   4837 BC 00 01      [24] 1272 	cjne	r4,#0x00,00147$
   483A 0D            [12] 1273 	inc	r5
   483B                    1274 00147$:
   483B 90 05 D3      [24] 1275 	mov	dptr,#__modsint_PARM_2
   483E 74 04         [12] 1276 	mov	a,#0x04
   4840 F0            [24] 1277 	movx	@dptr,a
   4841 E4            [12] 1278 	clr	a
   4842 A3            [24] 1279 	inc	dptr
   4843 F0            [24] 1280 	movx	@dptr,a
   4844 8C 82         [24] 1281 	mov	dpl,r4
   4846 8D 83         [24] 1282 	mov	dph,r5
   4848 C0 07         [24] 1283 	push	ar7
   484A C0 06         [24] 1284 	push	ar6
   484C 12 5F 2F      [24] 1285 	lcall	__modsint
   484F AC 82         [24] 1286 	mov	r4,dpl
   4851 AD 83         [24] 1287 	mov	r5,dph
   4853 D0 06         [24] 1288 	pop	ar6
   4855 D0 07         [24] 1289 	pop	ar7
   4857 78 B6         [12] 1290 	mov	r0,#_tdm_state
   4859 EC            [12] 1291 	mov	a,r4
   485A F2            [24] 1292 	movx	@r0,a
                           1293 ;	radio/tdm.c:281: tdelta -= tdm_state_remaining;
   485B 78 B7         [12] 1294 	mov	r0,#_tdm_state_remaining
   485D D3            [12] 1295 	setb	c
   485E E2            [24] 1296 	movx	a,@r0
   485F 9E            [12] 1297 	subb	a,r6
   4860 F4            [12] 1298 	cpl	a
   4861 B3            [12] 1299 	cpl	c
   4862 FE            [12] 1300 	mov	r6,a
   4863 B3            [12] 1301 	cpl	c
   4864 08            [12] 1302 	inc	r0
   4865 E2            [24] 1303 	movx	a,@r0
   4866 9F            [12] 1304 	subb	a,r7
   4867 F4            [12] 1305 	cpl	a
   4868 FF            [12] 1306 	mov	r7,a
                           1307 ;	radio/tdm.c:283: if (tdm_state == TDM_TRANSMIT || tdm_state == TDM_RECEIVE) {
   4869 78 B6         [12] 1308 	mov	r0,#_tdm_state
   486B E2            [24] 1309 	movx	a,@r0
   486C 60 06         [24] 1310 	jz	00104$
   486E 78 B6         [12] 1311 	mov	r0,#_tdm_state
   4870 E2            [24] 1312 	movx	a,@r0
   4871 B4 02 10      [24] 1313 	cjne	a,#0x02,00105$
   4874                    1314 00104$:
                           1315 ;	radio/tdm.c:284: tdm_state_remaining = tx_window_width;
   4874 78 B9         [12] 1316 	mov	r0,#_tx_window_width
   4876 E2            [24] 1317 	movx	a,@r0
   4877 FC            [12] 1318 	mov	r4,a
   4878 08            [12] 1319 	inc	r0
   4879 E2            [24] 1320 	movx	a,@r0
   487A FD            [12] 1321 	mov	r5,a
   487B 78 B7         [12] 1322 	mov	r0,#_tdm_state_remaining
   487D EC            [12] 1323 	mov	a,r4
   487E F2            [24] 1324 	movx	@r0,a
   487F 08            [12] 1325 	inc	r0
   4880 ED            [12] 1326 	mov	a,r5
   4881 F2            [24] 1327 	movx	@r0,a
   4882 80 0E         [24] 1328 	sjmp	00106$
   4884                    1329 00105$:
                           1330 ;	radio/tdm.c:286: tdm_state_remaining = silence_period;
   4884 78 BC         [12] 1331 	mov	r0,#_silence_period
   4886 E2            [24] 1332 	movx	a,@r0
   4887 FC            [12] 1333 	mov	r4,a
   4888 08            [12] 1334 	inc	r0
   4889 E2            [24] 1335 	movx	a,@r0
   488A FD            [12] 1336 	mov	r5,a
   488B 78 B7         [12] 1337 	mov	r0,#_tdm_state_remaining
   488D EC            [12] 1338 	mov	a,r4
   488E F2            [24] 1339 	movx	@r0,a
   488F 08            [12] 1340 	inc	r0
   4890 ED            [12] 1341 	mov	a,r5
   4891 F2            [24] 1342 	movx	@r0,a
   4892                    1343 00106$:
                           1344 ;	radio/tdm.c:292: if (tdm_state == TDM_TRANSMIT || tdm_state == TDM_SILENCE1) {
   4892 78 B6         [12] 1345 	mov	r0,#_tdm_state
   4894 E2            [24] 1346 	movx	a,@r0
   4895 60 06         [24] 1347 	jz	00110$
   4897 78 B6         [12] 1348 	mov	r0,#_tdm_state
   4899 E2            [24] 1349 	movx	a,@r0
   489A B4 01 26      [24] 1350 	cjne	a,#0x01,00111$
   489D                    1351 00110$:
                           1352 ;	radio/tdm.c:293: fhop_window_change();
   489D C0 07         [24] 1353 	push	ar7
   489F C0 06         [24] 1354 	push	ar6
   48A1 12 0C 27      [24] 1355 	lcall	_fhop_window_change
                           1356 ;	radio/tdm.c:294: radio_receiver_on();
   48A4 12 34 42      [24] 1357 	lcall	_radio_receiver_on
   48A7 D0 06         [24] 1358 	pop	ar6
   48A9 D0 07         [24] 1359 	pop	ar7
                           1360 ;	radio/tdm.c:296: if (num_fh_channels > 1) {
   48AB 78 18         [12] 1361 	mov	r0,#_num_fh_channels
   48AD C3            [12] 1362 	clr	c
   48AE E2            [24] 1363 	movx	a,@r0
   48AF F5 F0         [12] 1364 	mov	b,a
   48B1 74 01         [12] 1365 	mov	a,#0x01
   48B3 95 F0         [12] 1366 	subb	a,b
   48B5 50 0C         [24] 1367 	jnc	00111$
                           1368 ;	radio/tdm.c:298: lbt_listen_time = 0;
   48B7 78 C9         [12] 1369 	mov	r0,#_lbt_listen_time
   48B9 E4            [12] 1370 	clr	a
   48BA F2            [24] 1371 	movx	@r0,a
   48BB 08            [12] 1372 	inc	r0
   48BC F2            [24] 1373 	movx	@r0,a
                           1374 ;	radio/tdm.c:299: lbt_rand = 0;
   48BD 78 CD         [12] 1375 	mov	r0,#_lbt_rand
   48BF E4            [12] 1376 	clr	a
   48C0 F2            [24] 1377 	movx	@r0,a
   48C1 08            [12] 1378 	inc	r0
   48C2 F2            [24] 1379 	movx	@r0,a
   48C3                    1380 00111$:
                           1381 ;	radio/tdm.c:303: if (tdm_state == TDM_TRANSMIT && (duty_cycle - duty_cycle_offset) != 100) {
   48C3 78 B6         [12] 1382 	mov	r0,#_tdm_state
   48C5 E2            [24] 1383 	movx	a,@r0
   48C6 60 03         [24] 1384 	jz	00155$
   48C8 02 4A 55      [24] 1385 	ljmp	00114$
   48CB                    1386 00155$:
   48CB C0 06         [24] 1387 	push	ar6
   48CD C0 07         [24] 1388 	push	ar7
   48CF 78 C4         [12] 1389 	mov	r0,#_duty_cycle
   48D1 E2            [24] 1390 	movx	a,@r0
   48D2 FC            [12] 1391 	mov	r4,a
   48D3 7D 00         [12] 1392 	mov	r5,#0x00
   48D5 78 C5         [12] 1393 	mov	r0,#_duty_cycle_offset
   48D7 E2            [24] 1394 	movx	a,@r0
   48D8 F5 62         [12] 1395 	mov	_tdm_state_update_sloc0_1_0,a
   48DA 75 63 00      [24] 1396 	mov	(_tdm_state_update_sloc0_1_0 + 1),#0x00
   48DD EC            [12] 1397 	mov	a,r4
   48DE C3            [12] 1398 	clr	c
   48DF 95 62         [12] 1399 	subb	a,_tdm_state_update_sloc0_1_0
   48E1 FE            [12] 1400 	mov	r6,a
   48E2 ED            [12] 1401 	mov	a,r5
   48E3 95 63         [12] 1402 	subb	a,(_tdm_state_update_sloc0_1_0 + 1)
   48E5 FF            [12] 1403 	mov	r7,a
   48E6 BE 64 0A      [24] 1404 	cjne	r6,#0x64,00156$
   48E9 BF 00 07      [24] 1405 	cjne	r7,#0x00,00156$
   48EC D0 07         [24] 1406 	pop	ar7
   48EE D0 06         [24] 1407 	pop	ar6
   48F0 02 4A 55      [24] 1408 	ljmp	00114$
   48F3                    1409 00156$:
   48F3 D0 07         [24] 1410 	pop	ar7
   48F5 D0 06         [24] 1411 	pop	ar6
                           1412 ;	radio/tdm.c:305: average_duty_cycle = (0.95*average_duty_cycle) + (0.05*(100.0*transmitted_ticks)/(2*(silence_period+tx_window_width)));
   48F7 C0 06         [24] 1413 	push	ar6
   48F9 C0 07         [24] 1414 	push	ar7
   48FB C0 07         [24] 1415 	push	ar7
   48FD C0 06         [24] 1416 	push	ar6
   48FF C0 05         [24] 1417 	push	ar5
   4901 C0 04         [24] 1418 	push	ar4
   4903 C0 53         [24] 1419 	push	_average_duty_cycle
   4905 C0 54         [24] 1420 	push	(_average_duty_cycle + 1)
   4907 C0 55         [24] 1421 	push	(_average_duty_cycle + 2)
   4909 C0 56         [24] 1422 	push	(_average_duty_cycle + 3)
   490B 90 33 33      [24] 1423 	mov	dptr,#0x3333
   490E 75 F0 73      [24] 1424 	mov	b,#0x73
   4911 74 3F         [12] 1425 	mov	a,#0x3F
   4913 12 5A ED      [24] 1426 	lcall	___fsmul
   4916 85 82 64      [24] 1427 	mov	_tdm_state_update_sloc1_1_0,dpl
   4919 85 83 65      [24] 1428 	mov	(_tdm_state_update_sloc1_1_0 + 1),dph
   491C 85 F0 66      [24] 1429 	mov	(_tdm_state_update_sloc1_1_0 + 2),b
   491F F5 67         [12] 1430 	mov	(_tdm_state_update_sloc1_1_0 + 3),a
   4921 E5 81         [12] 1431 	mov	a,sp
   4923 24 FC         [12] 1432 	add	a,#0xfc
   4925 F5 81         [12] 1433 	mov	sp,a
   4927 D0 04         [24] 1434 	pop	ar4
   4929 D0 05         [24] 1435 	pop	ar5
   492B D0 06         [24] 1436 	pop	ar6
   492D D0 07         [24] 1437 	pop	ar7
   492F 78 C6         [12] 1438 	mov	r0,#_transmitted_ticks
   4931 E2            [24] 1439 	movx	a,@r0
   4932 F5 82         [12] 1440 	mov	dpl,a
   4934 08            [12] 1441 	inc	r0
   4935 E2            [24] 1442 	movx	a,@r0
   4936 F5 83         [12] 1443 	mov	dph,a
   4938 C0 05         [24] 1444 	push	ar5
   493A C0 04         [24] 1445 	push	ar4
   493C 12 62 F4      [24] 1446 	lcall	___uint2fs
   493F AA 82         [24] 1447 	mov	r2,dpl
   4941 AB 83         [24] 1448 	mov	r3,dph
   4943 AE F0         [24] 1449 	mov	r6,b
   4945 FF            [12] 1450 	mov	r7,a
   4946 D0 04         [24] 1451 	pop	ar4
   4948 D0 05         [24] 1452 	pop	ar5
   494A C0 07         [24] 1453 	push	ar7
   494C C0 06         [24] 1454 	push	ar6
   494E C0 05         [24] 1455 	push	ar5
   4950 C0 04         [24] 1456 	push	ar4
   4952 C0 02         [24] 1457 	push	ar2
   4954 C0 03         [24] 1458 	push	ar3
   4956 C0 06         [24] 1459 	push	ar6
   4958 C0 07         [24] 1460 	push	ar7
   495A 90 00 00      [24] 1461 	mov	dptr,#0x0000
   495D 75 F0 A0      [24] 1462 	mov	b,#0xA0
   4960 74 40         [12] 1463 	mov	a,#0x40
   4962 12 5A ED      [24] 1464 	lcall	___fsmul
   4965 85 82 68      [24] 1465 	mov	_tdm_state_update_sloc2_1_0,dpl
   4968 85 83 69      [24] 1466 	mov	(_tdm_state_update_sloc2_1_0 + 1),dph
   496B 85 F0 6A      [24] 1467 	mov	(_tdm_state_update_sloc2_1_0 + 2),b
   496E F5 6B         [12] 1468 	mov	(_tdm_state_update_sloc2_1_0 + 3),a
   4970 E5 81         [12] 1469 	mov	a,sp
   4972 24 FC         [12] 1470 	add	a,#0xfc
   4974 F5 81         [12] 1471 	mov	sp,a
   4976 D0 04         [24] 1472 	pop	ar4
   4978 D0 05         [24] 1473 	pop	ar5
   497A D0 06         [24] 1474 	pop	ar6
   497C D0 07         [24] 1475 	pop	ar7
   497E 78 BC         [12] 1476 	mov	r0,#_silence_period
   4980 79 B9         [12] 1477 	mov	r1,#_tx_window_width
   4982 E3            [24] 1478 	movx	a,@r1
   4983 C5 F0         [12] 1479 	xch	a,b
   4985 E2            [24] 1480 	movx	a,@r0
   4986 25 F0         [12] 1481 	add	a,b
   4988 FE            [12] 1482 	mov	r6,a
   4989 09            [12] 1483 	inc	r1
   498A E3            [24] 1484 	movx	a,@r1
   498B C5 F0         [12] 1485 	xch	a,b
   498D 08            [12] 1486 	inc	r0
   498E E2            [24] 1487 	movx	a,@r0
   498F 35 F0         [12] 1488 	addc	a,b
   4991 CE            [12] 1489 	xch	a,r6
   4992 25 E0         [12] 1490 	add	a,acc
   4994 CE            [12] 1491 	xch	a,r6
   4995 33            [12] 1492 	rlc	a
   4996 FF            [12] 1493 	mov	r7,a
   4997 8E 82         [24] 1494 	mov	dpl,r6
   4999 8F 83         [24] 1495 	mov	dph,r7
   499B C0 05         [24] 1496 	push	ar5
   499D C0 04         [24] 1497 	push	ar4
   499F 12 62 F4      [24] 1498 	lcall	___uint2fs
   49A2 AA 82         [24] 1499 	mov	r2,dpl
   49A4 AB 83         [24] 1500 	mov	r3,dph
   49A6 AE F0         [24] 1501 	mov	r6,b
   49A8 FF            [12] 1502 	mov	r7,a
   49A9 C0 02         [24] 1503 	push	ar2
   49AB C0 03         [24] 1504 	push	ar3
   49AD C0 06         [24] 1505 	push	ar6
   49AF C0 07         [24] 1506 	push	ar7
   49B1 85 68 82      [24] 1507 	mov	dpl,_tdm_state_update_sloc2_1_0
   49B4 85 69 83      [24] 1508 	mov	dph,(_tdm_state_update_sloc2_1_0 + 1)
   49B7 85 6A F0      [24] 1509 	mov	b,(_tdm_state_update_sloc2_1_0 + 2)
   49BA E5 6B         [12] 1510 	mov	a,(_tdm_state_update_sloc2_1_0 + 3)
   49BC 12 64 18      [24] 1511 	lcall	___fsdiv
   49BF AA 82         [24] 1512 	mov	r2,dpl
   49C1 AB 83         [24] 1513 	mov	r3,dph
   49C3 AE F0         [24] 1514 	mov	r6,b
   49C5 FF            [12] 1515 	mov	r7,a
   49C6 E5 81         [12] 1516 	mov	a,sp
   49C8 24 FC         [12] 1517 	add	a,#0xfc
   49CA F5 81         [12] 1518 	mov	sp,a
   49CC D0 04         [24] 1519 	pop	ar4
   49CE D0 05         [24] 1520 	pop	ar5
   49D0 C0 07         [24] 1521 	push	ar7
   49D2 C0 06         [24] 1522 	push	ar6
   49D4 C0 05         [24] 1523 	push	ar5
   49D6 C0 04         [24] 1524 	push	ar4
   49D8 C0 02         [24] 1525 	push	ar2
   49DA C0 03         [24] 1526 	push	ar3
   49DC C0 06         [24] 1527 	push	ar6
   49DE C0 07         [24] 1528 	push	ar7
   49E0 85 64 82      [24] 1529 	mov	dpl,_tdm_state_update_sloc1_1_0
   49E3 85 65 83      [24] 1530 	mov	dph,(_tdm_state_update_sloc1_1_0 + 1)
   49E6 85 66 F0      [24] 1531 	mov	b,(_tdm_state_update_sloc1_1_0 + 2)
   49E9 E5 67         [12] 1532 	mov	a,(_tdm_state_update_sloc1_1_0 + 3)
   49EB 12 61 F8      [24] 1533 	lcall	___fsadd
   49EE 85 82 53      [24] 1534 	mov	_average_duty_cycle,dpl
   49F1 85 83 54      [24] 1535 	mov	(_average_duty_cycle + 1),dph
   49F4 85 F0 55      [24] 1536 	mov	(_average_duty_cycle + 2),b
   49F7 F5 56         [12] 1537 	mov	(_average_duty_cycle + 3),a
   49F9 E5 81         [12] 1538 	mov	a,sp
   49FB 24 FC         [12] 1539 	add	a,#0xfc
   49FD F5 81         [12] 1540 	mov	sp,a
   49FF D0 04         [24] 1541 	pop	ar4
   4A01 D0 05         [24] 1542 	pop	ar5
   4A03 D0 06         [24] 1543 	pop	ar6
   4A05 D0 07         [24] 1544 	pop	ar7
                           1545 ;	radio/tdm.c:306: transmitted_ticks = 0;
   4A07 78 C6         [12] 1546 	mov	r0,#_transmitted_ticks
   4A09 E4            [12] 1547 	clr	a
   4A0A F2            [24] 1548 	movx	@r0,a
   4A0B 08            [12] 1549 	inc	r0
   4A0C F2            [24] 1550 	movx	@r0,a
                           1551 ;	radio/tdm.c:307: duty_cycle_wait = (average_duty_cycle >= (duty_cycle - duty_cycle_offset));
   4A0D EC            [12] 1552 	mov	a,r4
   4A0E C3            [12] 1553 	clr	c
   4A0F 95 62         [12] 1554 	subb	a,_tdm_state_update_sloc0_1_0
   4A11 FC            [12] 1555 	mov	r4,a
   4A12 ED            [12] 1556 	mov	a,r5
   4A13 95 63         [12] 1557 	subb	a,(_tdm_state_update_sloc0_1_0 + 1)
   4A15 FD            [12] 1558 	mov	r5,a
   4A16 8C 82         [24] 1559 	mov	dpl,r4
   4A18 8D 83         [24] 1560 	mov	dph,r5
   4A1A 12 62 B3      [24] 1561 	lcall	___sint2fs
   4A1D AC 82         [24] 1562 	mov	r4,dpl
   4A1F AD 83         [24] 1563 	mov	r5,dph
   4A21 AE F0         [24] 1564 	mov	r6,b
   4A23 FF            [12] 1565 	mov	r7,a
   4A24 C0 07         [24] 1566 	push	ar7
   4A26 C0 06         [24] 1567 	push	ar6
   4A28 C0 04         [24] 1568 	push	ar4
   4A2A C0 05         [24] 1569 	push	ar5
   4A2C C0 06         [24] 1570 	push	ar6
   4A2E C0 07         [24] 1571 	push	ar7
   4A30 85 53 82      [24] 1572 	mov	dpl,_average_duty_cycle
   4A33 85 54 83      [24] 1573 	mov	dph,(_average_duty_cycle + 1)
   4A36 85 55 F0      [24] 1574 	mov	b,(_average_duty_cycle + 2)
   4A39 E5 56         [12] 1575 	mov	a,(_average_duty_cycle + 3)
   4A3B 12 5E 4B      [24] 1576 	lcall	___fslt
   4A3E E5 81         [12] 1577 	mov	a,sp
   4A40 24 FC         [12] 1578 	add	a,#0xfc
   4A42 F5 81         [12] 1579 	mov	sp,a
   4A44 D0 06         [24] 1580 	pop	ar6
   4A46 D0 07         [24] 1581 	pop	ar7
   4A48 E5 82         [12] 1582 	mov	a,dpl
   4A4A 24 FF         [12] 1583 	add	a,#0xFF
   4A4C 92 2F         [24] 1584 	mov  _tdm_state_update_sloc3_1_0,c
   4A4E B3            [12] 1585 	cpl	c
   4A4F 92 2B         [24] 1586 	mov	_duty_cycle_wait,c
                           1587 ;	radio/tdm.c:320: tdm_state_remaining -= tdelta;
   4A51 D0 07         [24] 1588 	pop	ar7
   4A53 D0 06         [24] 1589 	pop	ar6
                           1590 ;	radio/tdm.c:307: duty_cycle_wait = (average_duty_cycle >= (duty_cycle - duty_cycle_offset));
   4A55                    1591 00114$:
                           1592 ;	radio/tdm.c:311: bonus_transmit = 0;
   4A55 C2 27         [12] 1593 	clr	_bonus_transmit
                           1594 ;	radio/tdm.c:314: transmit_yield = 0;
   4A57 C2 28         [12] 1595 	clr	_transmit_yield
                           1596 ;	radio/tdm.c:317: transmit_wait = 0;
   4A59 78 C2         [12] 1597 	mov	r0,#_transmit_wait
   4A5B E4            [12] 1598 	clr	a
   4A5C F2            [24] 1599 	movx	@r0,a
   4A5D 08            [12] 1600 	inc	r0
   4A5E F2            [24] 1601 	movx	@r0,a
   4A5F 02 48 1B      [24] 1602 	ljmp	00116$
   4A62                    1603 00118$:
                           1604 ;	radio/tdm.c:320: tdm_state_remaining -= tdelta;
   4A62 78 B7         [12] 1605 	mov	r0,#_tdm_state_remaining
   4A64 E2            [24] 1606 	movx	a,@r0
   4A65 C3            [12] 1607 	clr	c
   4A66 9E            [12] 1608 	subb	a,r6
   4A67 F2            [24] 1609 	movx	@r0,a
   4A68 08            [12] 1610 	inc	r0
   4A69 E2            [24] 1611 	movx	a,@r0
   4A6A 9F            [12] 1612 	subb	a,r7
   4A6B F2            [24] 1613 	movx	@r0,a
   4A6C 22            [24] 1614 	ret
                           1615 ;------------------------------------------------------------
                           1616 ;Allocation info for local variables in function 'tdm_change_phase'
                           1617 ;------------------------------------------------------------
                           1618 ;	radio/tdm.c:326: tdm_change_phase(void)
                           1619 ;	-----------------------------------------
                           1620 ;	 function tdm_change_phase
                           1621 ;	-----------------------------------------
   4A6D                    1622 _tdm_change_phase:
                           1623 ;	radio/tdm.c:328: tdm_state = (tdm_state+2) % 4;
   4A6D 78 B6         [12] 1624 	mov	r0,#_tdm_state
   4A6F E2            [24] 1625 	movx	a,@r0
   4A70 FE            [12] 1626 	mov	r6,a
   4A71 7F 00         [12] 1627 	mov	r7,#0x00
   4A73 74 02         [12] 1628 	mov	a,#0x02
   4A75 2E            [12] 1629 	add	a,r6
   4A76 FE            [12] 1630 	mov	r6,a
   4A77 E4            [12] 1631 	clr	a
   4A78 3F            [12] 1632 	addc	a,r7
   4A79 FF            [12] 1633 	mov	r7,a
   4A7A 90 05 D3      [24] 1634 	mov	dptr,#__modsint_PARM_2
   4A7D 74 04         [12] 1635 	mov	a,#0x04
   4A7F F0            [24] 1636 	movx	@dptr,a
   4A80 E4            [12] 1637 	clr	a
   4A81 A3            [24] 1638 	inc	dptr
   4A82 F0            [24] 1639 	movx	@dptr,a
   4A83 8E 82         [24] 1640 	mov	dpl,r6
   4A85 8F 83         [24] 1641 	mov	dph,r7
   4A87 12 5F 2F      [24] 1642 	lcall	__modsint
   4A8A AE 82         [24] 1643 	mov	r6,dpl
   4A8C 78 B6         [12] 1644 	mov	r0,#_tdm_state
   4A8E EE            [12] 1645 	mov	a,r6
   4A8F F2            [24] 1646 	movx	@r0,a
   4A90 22            [24] 1647 	ret
                           1648 ;------------------------------------------------------------
                           1649 ;Allocation info for local variables in function 'temperature_update'
                           1650 ;------------------------------------------------------------
                           1651 ;diff                      Allocated to registers r6 r7 
                           1652 ;------------------------------------------------------------
                           1653 ;	radio/tdm.c:333: static void temperature_update(void)
                           1654 ;	-----------------------------------------
                           1655 ;	 function temperature_update
                           1656 ;	-----------------------------------------
   4A91                    1657 _temperature_update:
                           1658 ;	radio/tdm.c:336: if (radio_get_transmit_power() <= 20) {
   4A91 12 38 B9      [24] 1659 	lcall	_radio_get_transmit_power
   4A94 E5 82         [12] 1660 	mov	a,dpl
   4A96 FF            [12] 1661 	mov	r7,a
   4A97 24 EB         [12] 1662 	add	a,#0xff - 0x14
   4A99 40 05         [24] 1663 	jc	00102$
                           1664 ;	radio/tdm.c:337: duty_cycle_offset = 0;
   4A9B 78 C5         [12] 1665 	mov	r0,#_duty_cycle_offset
   4A9D E4            [12] 1666 	clr	a
   4A9E F2            [24] 1667 	movx	@r0,a
                           1668 ;	radio/tdm.c:338: return;
   4A9F 22            [24] 1669 	ret
   4AA0                    1670 00102$:
                           1671 ;	radio/tdm.c:341: diff = radio_temperature() - MAX_PA_TEMPERATURE;
   4AA0 12 3C 76      [24] 1672 	lcall	_radio_temperature
   4AA3 E5 82         [12] 1673 	mov	a,dpl
   4AA5 85 83 F0      [24] 1674 	mov	b,dph
   4AA8 24 9C         [12] 1675 	add	a,#0x9C
   4AAA FE            [12] 1676 	mov	r6,a
   4AAB E5 F0         [12] 1677 	mov	a,b
   4AAD 34 FF         [12] 1678 	addc	a,#0xFF
   4AAF FF            [12] 1679 	mov	r7,a
                           1680 ;	radio/tdm.c:342: if (diff <= 0 && duty_cycle_offset > 0) {
   4AB0 C3            [12] 1681 	clr	c
   4AB1 E4            [12] 1682 	clr	a
   4AB2 9E            [12] 1683 	subb	a,r6
   4AB3 E4            [12] 1684 	clr	a
   4AB4 64 80         [12] 1685 	xrl	a,#0x80
   4AB6 8F F0         [24] 1686 	mov	b,r7
   4AB8 63 F0 80      [24] 1687 	xrl	b,#0x80
   4ABB 95 F0         [12] 1688 	subb	a,b
   4ABD E4            [12] 1689 	clr	a
   4ABE 33            [12] 1690 	rlc	a
   4ABF FD            [12] 1691 	mov	r5,a
   4AC0 70 0C         [24] 1692 	jnz	00112$
   4AC2 78 C5         [12] 1693 	mov	r0,#_duty_cycle_offset
   4AC4 E2            [24] 1694 	movx	a,@r0
   4AC5 60 07         [24] 1695 	jz	00112$
                           1696 ;	radio/tdm.c:344: duty_cycle_offset -= 1;
   4AC7 78 C5         [12] 1697 	mov	r0,#_duty_cycle_offset
   4AC9 E2            [24] 1698 	movx	a,@r0
   4ACA 14            [12] 1699 	dec	a
   4ACB F2            [24] 1700 	movx	@r0,a
   4ACC 80 39         [24] 1701 	sjmp	00113$
   4ACE                    1702 00112$:
                           1703 ;	radio/tdm.c:345: } else if (diff > 10) {
   4ACE C3            [12] 1704 	clr	c
   4ACF 74 0A         [12] 1705 	mov	a,#0x0A
   4AD1 9E            [12] 1706 	subb	a,r6
   4AD2 E4            [12] 1707 	clr	a
   4AD3 64 80         [12] 1708 	xrl	a,#0x80
   4AD5 8F F0         [24] 1709 	mov	b,r7
   4AD7 63 F0 80      [24] 1710 	xrl	b,#0x80
   4ADA 95 F0         [12] 1711 	subb	a,b
   4ADC 50 08         [24] 1712 	jnc	00109$
                           1713 ;	radio/tdm.c:347: duty_cycle_offset += 10;
   4ADE 78 C5         [12] 1714 	mov	r0,#_duty_cycle_offset
   4AE0 E2            [24] 1715 	movx	a,@r0
   4AE1 24 0A         [12] 1716 	add	a,#0x0A
   4AE3 F2            [24] 1717 	movx	@r0,a
   4AE4 80 21         [24] 1718 	sjmp	00113$
   4AE6                    1719 00109$:
                           1720 ;	radio/tdm.c:348: } else if (diff > 5) {
   4AE6 C3            [12] 1721 	clr	c
   4AE7 74 05         [12] 1722 	mov	a,#0x05
   4AE9 9E            [12] 1723 	subb	a,r6
   4AEA E4            [12] 1724 	clr	a
   4AEB 64 80         [12] 1725 	xrl	a,#0x80
   4AED 8F F0         [24] 1726 	mov	b,r7
   4AEF 63 F0 80      [24] 1727 	xrl	b,#0x80
   4AF2 95 F0         [12] 1728 	subb	a,b
   4AF4 50 08         [24] 1729 	jnc	00106$
                           1730 ;	radio/tdm.c:350: duty_cycle_offset += 5;
   4AF6 78 C5         [12] 1731 	mov	r0,#_duty_cycle_offset
   4AF8 E2            [24] 1732 	movx	a,@r0
   4AF9 24 05         [12] 1733 	add	a,#0x05
   4AFB F2            [24] 1734 	movx	@r0,a
   4AFC 80 09         [24] 1735 	sjmp	00113$
   4AFE                    1736 00106$:
                           1737 ;	radio/tdm.c:351: } else if (diff > 0) {
   4AFE ED            [12] 1738 	mov	a,r5
   4AFF 60 06         [24] 1739 	jz	00113$
                           1740 ;	radio/tdm.c:353: duty_cycle_offset += 1;				
   4B01 78 C5         [12] 1741 	mov	r0,#_duty_cycle_offset
   4B03 E2            [24] 1742 	movx	a,@r0
   4B04 24 01         [12] 1743 	add	a,#0x01
   4B06 F2            [24] 1744 	movx	@r0,a
   4B07                    1745 00113$:
                           1746 ;	radio/tdm.c:356: if ((duty_cycle-duty_cycle_offset) < 20) {
   4B07 78 C4         [12] 1747 	mov	r0,#_duty_cycle
   4B09 E2            [24] 1748 	movx	a,@r0
   4B0A FE            [12] 1749 	mov	r6,a
   4B0B 7F 00         [12] 1750 	mov	r7,#0x00
   4B0D 78 C5         [12] 1751 	mov	r0,#_duty_cycle_offset
   4B0F E2            [24] 1752 	movx	a,@r0
   4B10 FC            [12] 1753 	mov	r4,a
   4B11 7D 00         [12] 1754 	mov	r5,#0x00
   4B13 EE            [12] 1755 	mov	a,r6
   4B14 C3            [12] 1756 	clr	c
   4B15 9C            [12] 1757 	subb	a,r4
   4B16 FE            [12] 1758 	mov	r6,a
   4B17 EF            [12] 1759 	mov	a,r7
   4B18 9D            [12] 1760 	subb	a,r5
   4B19 FF            [12] 1761 	mov	r7,a
   4B1A C3            [12] 1762 	clr	c
   4B1B EE            [12] 1763 	mov	a,r6
   4B1C 94 14         [12] 1764 	subb	a,#0x14
   4B1E EF            [12] 1765 	mov	a,r7
   4B1F 64 80         [12] 1766 	xrl	a,#0x80
   4B21 94 80         [12] 1767 	subb	a,#0x80
   4B23 50 08         [24] 1768 	jnc	00117$
                           1769 ;	radio/tdm.c:357: duty_cycle_offset = duty_cycle - 20;
   4B25 78 C4         [12] 1770 	mov	r0,#_duty_cycle
   4B27 79 C5         [12] 1771 	mov	r1,#_duty_cycle_offset
   4B29 E2            [24] 1772 	movx	a,@r0
   4B2A 24 EC         [12] 1773 	add	a,#0xEC
   4B2C F3            [24] 1774 	movx	@r1,a
   4B2D                    1775 00117$:
   4B2D 22            [24] 1776 	ret
                           1777 ;------------------------------------------------------------
                           1778 ;Allocation info for local variables in function 'link_update'
                           1779 ;------------------------------------------------------------
                           1780 ;old_remaining             Allocated to registers r6 r7 
                           1781 ;unlock_count              Allocated with name '_link_update_unlock_count_1_185'
                           1782 ;temperature_count         Allocated with name '_link_update_temperature_count_1_185'
                           1783 ;------------------------------------------------------------
                           1784 ;	radio/tdm.c:365: link_update(void)
                           1785 ;	-----------------------------------------
                           1786 ;	 function link_update
                           1787 ;	-----------------------------------------
   4B2E                    1788 _link_update:
                           1789 ;	radio/tdm.c:368: if (received_packet) {
   4B2E 30 2A 0B      [24] 1790 	jnb	_received_packet,00102$
                           1791 ;	radio/tdm.c:369: unlock_count = 0;
   4B31 90 05 6E      [24] 1792 	mov	dptr,#_link_update_unlock_count_1_185
   4B34 E4            [12] 1793 	clr	a
   4B35 F0            [24] 1794 	movx	@dptr,a
                           1795 ;	radio/tdm.c:370: received_packet = false;
   4B36 C2 2A         [12] 1796 	clr	_received_packet
                           1797 ;	radio/tdm.c:372: TDM_SYNC_PIN = true;
   4B38 D2 A6         [12] 1798 	setb	_TDM_SYNC_PIN
   4B3A 80 07         [24] 1799 	sjmp	00103$
   4B3C                    1800 00102$:
                           1801 ;	radio/tdm.c:375: unlock_count++;
   4B3C 90 05 6E      [24] 1802 	mov	dptr,#_link_update_unlock_count_1_185
   4B3F E0            [24] 1803 	movx	a,@dptr
   4B40 24 01         [12] 1804 	add	a,#0x01
   4B42 F0            [24] 1805 	movx	@dptr,a
   4B43                    1806 00103$:
                           1807 ;	radio/tdm.c:377: if (unlock_count < 6) {
   4B43 90 05 6E      [24] 1808 	mov	dptr,#_link_update_unlock_count_1_185
   4B46 E0            [24] 1809 	movx	a,@dptr
   4B47 FF            [12] 1810 	mov	r7,a
   4B48 BF 06 00      [24] 1811 	cjne	r7,#0x06,00157$
   4B4B                    1812 00157$:
   4B4B 50 04         [24] 1813 	jnc	00105$
                           1814 ;	radio/tdm.c:378: LED_RADIO = LED_ON;
   4B4D D2 95         [12] 1815 	setb	_LED_GREEN
   4B4F 80 08         [24] 1816 	sjmp	00106$
   4B51                    1817 00105$:
                           1818 ;	radio/tdm.c:381: TDM_SYNC_PIN = false;
   4B51 C2 A6         [12] 1819 	clr	_TDM_SYNC_PIN
                           1820 ;	radio/tdm.c:384: LED_RADIO = blink_state;
   4B53 A2 29         [12] 1821 	mov	c,_blink_state
   4B55 92 95         [24] 1822 	mov	_LED_GREEN,c
                           1823 ;	radio/tdm.c:385: blink_state = !blink_state;
   4B57 B2 29         [12] 1824 	cpl	_blink_state
   4B59                    1825 00106$:
                           1826 ;	radio/tdm.c:387: if (unlock_count > 40) {
   4B59 EF            [12] 1827 	mov	a,r7
   4B5A 24 D7         [12] 1828 	add	a,#0xff - 0x28
   4B5C 40 03         [24] 1829 	jc	00159$
   4B5E 02 4B E9      [24] 1830 	ljmp	00117$
   4B61                    1831 00159$:
                           1832 ;	radio/tdm.c:391: unlock_count = 5;
   4B61 90 05 6E      [24] 1833 	mov	dptr,#_link_update_unlock_count_1_185
   4B64 74 05         [12] 1834 	mov	a,#0x05
   4B66 F0            [24] 1835 	movx	@dptr,a
                           1836 ;	radio/tdm.c:395: if (timer_entropy() & 1) {
   4B67 12 57 5A      [24] 1837 	lcall	_timer_entropy
   4B6A E5 82         [12] 1838 	mov	a,dpl
   4B6C 30 E0 59      [24] 1839 	jnb	acc.0,00113$
                           1840 ;	radio/tdm.c:396: register uint16_t old_remaining = tdm_state_remaining;
   4B6F 78 B7         [12] 1841 	mov	r0,#_tdm_state_remaining
   4B71 E2            [24] 1842 	movx	a,@r0
   4B72 FE            [12] 1843 	mov	r6,a
   4B73 08            [12] 1844 	inc	r0
   4B74 E2            [24] 1845 	movx	a,@r0
   4B75 FF            [12] 1846 	mov	r7,a
                           1847 ;	radio/tdm.c:397: if (tdm_state_remaining > silence_period) {
   4B76 78 BC         [12] 1848 	mov	r0,#_silence_period
   4B78 C3            [12] 1849 	clr	c
   4B79 E2            [24] 1850 	movx	a,@r0
   4B7A 9E            [12] 1851 	subb	a,r6
   4B7B 08            [12] 1852 	inc	r0
   4B7C E2            [24] 1853 	movx	a,@r0
   4B7D 9F            [12] 1854 	subb	a,r7
   4B7E 50 17         [24] 1855 	jnc	00108$
                           1856 ;	radio/tdm.c:398: tdm_state_remaining -= packet_latency;
   4B80 78 BE         [12] 1857 	mov	r0,#_packet_latency
   4B82 D3            [12] 1858 	setb	c
   4B83 E2            [24] 1859 	movx	a,@r0
   4B84 9E            [12] 1860 	subb	a,r6
   4B85 F4            [12] 1861 	cpl	a
   4B86 B3            [12] 1862 	cpl	c
   4B87 FC            [12] 1863 	mov	r4,a
   4B88 B3            [12] 1864 	cpl	c
   4B89 08            [12] 1865 	inc	r0
   4B8A E2            [24] 1866 	movx	a,@r0
   4B8B 9F            [12] 1867 	subb	a,r7
   4B8C F4            [12] 1868 	cpl	a
   4B8D FD            [12] 1869 	mov	r5,a
   4B8E 78 B7         [12] 1870 	mov	r0,#_tdm_state_remaining
   4B90 EC            [12] 1871 	mov	a,r4
   4B91 F2            [24] 1872 	movx	@r0,a
   4B92 08            [12] 1873 	inc	r0
   4B93 ED            [12] 1874 	mov	a,r5
   4B94 F2            [24] 1875 	movx	@r0,a
   4B95 80 08         [24] 1876 	sjmp	00109$
   4B97                    1877 00108$:
                           1878 ;	radio/tdm.c:400: tdm_state_remaining = 1;
   4B97 78 B7         [12] 1879 	mov	r0,#_tdm_state_remaining
   4B99 74 01         [12] 1880 	mov	a,#0x01
   4B9B F2            [24] 1881 	movx	@r0,a
   4B9C 08            [12] 1882 	inc	r0
   4B9D E4            [12] 1883 	clr	a
   4B9E F2            [24] 1884 	movx	@r0,a
   4B9F                    1885 00109$:
                           1886 ;	radio/tdm.c:402: if (at_testmode & AT_TEST_TDM) {
   4B9F 78 13         [12] 1887 	mov	r0,#_at_testmode
   4BA1 E2            [24] 1888 	movx	a,@r0
   4BA2 54 02         [12] 1889 	anl	a,#0x02
   4BA4 60 22         [24] 1890 	jz	00113$
                           1891 ;	radio/tdm.c:403: printf("TDM: change timing %u/%u\n",
   4BA6 78 B7         [12] 1892 	mov	r0,#_tdm_state_remaining
   4BA8 E2            [24] 1893 	movx	a,@r0
   4BA9 C0 E0         [24] 1894 	push	acc
   4BAB 08            [12] 1895 	inc	r0
   4BAC E2            [24] 1896 	movx	a,@r0
   4BAD C0 E0         [24] 1897 	push	acc
   4BAF C0 06         [24] 1898 	push	ar6
   4BB1 C0 07         [24] 1899 	push	ar7
   4BB3 74 15         [12] 1900 	mov	a,#__str_4
   4BB5 C0 E0         [24] 1901 	push	acc
   4BB7 74 CD         [12] 1902 	mov	a,#(__str_4 >> 8)
   4BB9 C0 E0         [24] 1903 	push	acc
   4BBB 74 80         [12] 1904 	mov	a,#0x80
   4BBD C0 E0         [24] 1905 	push	acc
   4BBF 12 2D B8      [24] 1906 	lcall	_printfl
   4BC2 E5 81         [12] 1907 	mov	a,sp
   4BC4 24 F9         [12] 1908 	add	a,#0xf9
   4BC6 F5 81         [12] 1909 	mov	sp,a
   4BC8                    1910 00113$:
                           1911 ;	radio/tdm.c:408: if (at_testmode & AT_TEST_TDM) {
   4BC8 78 13         [12] 1912 	mov	r0,#_at_testmode
   4BCA E2            [24] 1913 	movx	a,@r0
   4BCB 54 02         [12] 1914 	anl	a,#0x02
   4BCD 60 15         [24] 1915 	jz	00115$
                           1916 ;	radio/tdm.c:409: printf("TDM: scanning\n");
   4BCF 74 2F         [12] 1917 	mov	a,#__str_5
   4BD1 C0 E0         [24] 1918 	push	acc
   4BD3 74 CD         [12] 1919 	mov	a,#(__str_5 >> 8)
   4BD5 C0 E0         [24] 1920 	push	acc
   4BD7 74 80         [12] 1921 	mov	a,#0x80
   4BD9 C0 E0         [24] 1922 	push	acc
   4BDB 12 2D B8      [24] 1923 	lcall	_printfl
   4BDE 15 81         [12] 1924 	dec	sp
   4BE0 15 81         [12] 1925 	dec	sp
   4BE2 15 81         [12] 1926 	dec	sp
   4BE4                    1927 00115$:
                           1928 ;	radio/tdm.c:411: fhop_set_locked(false);
   4BE4 C2 03         [12] 1929 	clr	_fhop_set_locked_PARM_1
   4BE6 12 0C 89      [24] 1930 	lcall	_fhop_set_locked
   4BE9                    1931 00117$:
                           1932 ;	radio/tdm.c:414: if (unlock_count != 0) {
   4BE9 90 05 6E      [24] 1933 	mov	dptr,#_link_update_unlock_count_1_185
   4BEC E0            [24] 1934 	movx	a,@dptr
   4BED FF            [12] 1935 	mov	r7,a
   4BEE 60 3D         [24] 1936 	jz	00119$
                           1937 ;	radio/tdm.c:415: statistics.average_rssi = (radio_last_rssi() + 3*(uint16_t)statistics.average_rssi)/4;
   4BF0 12 30 98      [24] 1938 	lcall	_radio_last_rssi
   4BF3 AF 82         [24] 1939 	mov	r7,dpl
   4BF5 7E 00         [12] 1940 	mov	r6,#0x00
   4BF7 78 40         [12] 1941 	mov	r0,#_statistics
   4BF9 E2            [24] 1942 	movx	a,@r0
   4BFA 90 05 CB      [24] 1943 	mov	dptr,#__mulint_PARM_2
   4BFD F0            [24] 1944 	movx	@dptr,a
   4BFE E4            [12] 1945 	clr	a
   4BFF A3            [24] 1946 	inc	dptr
   4C00 F0            [24] 1947 	movx	@dptr,a
   4C01 90 00 03      [24] 1948 	mov	dptr,#0x0003
   4C04 C0 07         [24] 1949 	push	ar7
   4C06 C0 06         [24] 1950 	push	ar6
   4C08 12 5E 7B      [24] 1951 	lcall	__mulint
   4C0B AC 82         [24] 1952 	mov	r4,dpl
   4C0D AD 83         [24] 1953 	mov	r5,dph
   4C0F D0 06         [24] 1954 	pop	ar6
   4C11 D0 07         [24] 1955 	pop	ar7
   4C13 EC            [12] 1956 	mov	a,r4
   4C14 2F            [12] 1957 	add	a,r7
   4C15 FC            [12] 1958 	mov	r4,a
   4C16 ED            [12] 1959 	mov	a,r5
   4C17 3E            [12] 1960 	addc	a,r6
   4C18 C3            [12] 1961 	clr	c
   4C19 13            [12] 1962 	rrc	a
   4C1A CC            [12] 1963 	xch	a,r4
   4C1B 13            [12] 1964 	rrc	a
   4C1C CC            [12] 1965 	xch	a,r4
   4C1D C3            [12] 1966 	clr	c
   4C1E 13            [12] 1967 	rrc	a
   4C1F CC            [12] 1968 	xch	a,r4
   4C20 13            [12] 1969 	rrc	a
   4C21 CC            [12] 1970 	xch	a,r4
   4C22 FD            [12] 1971 	mov	r5,a
   4C23 78 40         [12] 1972 	mov	r0,#_statistics
   4C25 EC            [12] 1973 	mov	a,r4
   4C26 F2            [24] 1974 	movx	@r0,a
                           1975 ;	radio/tdm.c:418: statistics.receive_count = 0;
   4C27 78 42         [12] 1976 	mov	r0,#(_statistics + 0x0002)
   4C29 E4            [12] 1977 	clr	a
   4C2A F2            [24] 1978 	movx	@r0,a
   4C2B 08            [12] 1979 	inc	r0
   4C2C F2            [24] 1980 	movx	@r0,a
   4C2D                    1981 00119$:
                           1982 ;	radio/tdm.c:420: if (unlock_count > 5) {
   4C2D 90 05 6E      [24] 1983 	mov	dptr,#_link_update_unlock_count_1_185
   4C30 E0            [24] 1984 	movx	a,@dptr
   4C31 FF            [12] 1985 	mov  r7,a
   4C32 24 FA         [12] 1986 	add	a,#0xff - 0x05
   4C34 50 17         [24] 1987 	jnc	00121$
                           1988 ;	radio/tdm.c:421: memset(&remote_statistics, 0, sizeof(remote_statistics));
   4C36 90 05 BE      [24] 1989 	mov	dptr,#_memset_PARM_2
   4C39 E4            [12] 1990 	clr	a
   4C3A F0            [24] 1991 	movx	@dptr,a
   4C3B 90 05 BF      [24] 1992 	mov	dptr,#_memset_PARM_3
   4C3E 74 04         [12] 1993 	mov	a,#0x04
   4C40 F0            [24] 1994 	movx	@dptr,a
   4C41 E4            [12] 1995 	clr	a
   4C42 A3            [24] 1996 	inc	dptr
   4C43 F0            [24] 1997 	movx	@dptr,a
   4C44 90 00 44      [24] 1998 	mov	dptr,#_remote_statistics
   4C47 75 F0 60      [24] 1999 	mov	b,#0x60
   4C4A 12 5D 7B      [24] 2000 	lcall	_memset
   4C4D                    2001 00121$:
                           2002 ;	radio/tdm.c:424: test_display = at_testmode;
   4C4D 78 13         [12] 2003 	mov	r0,#_at_testmode
   4C4F E2            [24] 2004 	movx	a,@r0
   4C50 78 CF         [12] 2005 	mov	r0,#_test_display
   4C52 F2            [24] 2006 	movx	@r0,a
                           2007 ;	radio/tdm.c:425: send_statistics = 1;
   4C53 D2 2C         [12] 2008 	setb	_send_statistics
                           2009 ;	radio/tdm.c:427: temperature_count++;
   4C55 90 05 6F      [24] 2010 	mov	dptr,#_link_update_temperature_count_1_185
   4C58 E0            [24] 2011 	movx	a,@dptr
   4C59 24 01         [12] 2012 	add	a,#0x01
   4C5B F0            [24] 2013 	movx	@dptr,a
                           2014 ;	radio/tdm.c:428: if (temperature_count == 4) {
   4C5C 90 05 6F      [24] 2015 	mov	dptr,#_link_update_temperature_count_1_185
   4C5F E0            [24] 2016 	movx	a,@dptr
   4C60 FF            [12] 2017 	mov	r7,a
   4C61 BF 04 08      [24] 2018 	cjne	r7,#0x04,00124$
                           2019 ;	radio/tdm.c:430: temperature_update();
   4C64 12 4A 91      [24] 2020 	lcall	_temperature_update
                           2021 ;	radio/tdm.c:431: temperature_count = 0;
   4C67 90 05 6F      [24] 2022 	mov	dptr,#_link_update_temperature_count_1_185
   4C6A E4            [12] 2023 	clr	a
   4C6B F0            [24] 2024 	movx	@dptr,a
   4C6C                    2025 00124$:
   4C6C 22            [24] 2026 	ret
                           2027 ;------------------------------------------------------------
                           2028 ;Allocation info for local variables in function 'tdm_remote_at'
                           2029 ;------------------------------------------------------------
                           2030 ;	radio/tdm.c:437: tdm_remote_at(void)
                           2031 ;	-----------------------------------------
                           2032 ;	 function tdm_remote_at
                           2033 ;	-----------------------------------------
   4C6D                    2034 _tdm_remote_at:
                           2035 ;	radio/tdm.c:439: memcpy(remote_at_cmd, at_cmd, strlen(at_cmd)+1);
   4C6D 90 00 01      [24] 2036 	mov	dptr,#_at_cmd
   4C70 75 F0 60      [24] 2037 	mov	b,#0x60
   4C73 12 64 00      [24] 2038 	lcall	_strlen
   4C76 E5 82         [12] 2039 	mov	a,dpl
   4C78 85 83 F0      [24] 2040 	mov	b,dph
   4C7B 24 01         [12] 2041 	add	a,#0x01
   4C7D FE            [12] 2042 	mov	r6,a
   4C7E E4            [12] 2043 	clr	a
   4C7F 35 F0         [12] 2044 	addc	a,b
   4C81 FF            [12] 2045 	mov	r7,a
   4C82 90 05 C1      [24] 2046 	mov	dptr,#_memcpy_PARM_2
   4C85 74 01         [12] 2047 	mov	a,#_at_cmd
   4C87 F0            [24] 2048 	movx	@dptr,a
   4C88 74 00         [12] 2049 	mov	a,#(_at_cmd >> 8)
   4C8A A3            [24] 2050 	inc	dptr
   4C8B F0            [24] 2051 	movx	@dptr,a
   4C8C 74 60         [12] 2052 	mov	a,#0x60
   4C8E A3            [24] 2053 	inc	dptr
   4C8F F0            [24] 2054 	movx	@dptr,a
   4C90 90 05 C4      [24] 2055 	mov	dptr,#_memcpy_PARM_3
   4C93 EE            [12] 2056 	mov	a,r6
   4C94 F0            [24] 2057 	movx	@dptr,a
   4C95 EF            [12] 2058 	mov	a,r7
   4C96 A3            [24] 2059 	inc	dptr
   4C97 F0            [24] 2060 	movx	@dptr,a
   4C98 90 00 D2      [24] 2061 	mov	dptr,#_remote_at_cmd
   4C9B 75 F0 60      [24] 2062 	mov	b,#0x60
   4C9E 12 5D A3      [24] 2063 	lcall	_memcpy
                           2064 ;	radio/tdm.c:440: send_at_command = true;
   4CA1 D2 2D         [12] 2065 	setb	_send_at_command
   4CA3 22            [24] 2066 	ret
                           2067 ;------------------------------------------------------------
                           2068 ;Allocation info for local variables in function 'handle_at_command'
                           2069 ;------------------------------------------------------------
                           2070 ;i                         Allocated to registers r6 
                           2071 ;------------------------------------------------------------
                           2072 ;	radio/tdm.c:445: handle_at_command(__pdata uint8_t len)
                           2073 ;	-----------------------------------------
                           2074 ;	 function handle_at_command
                           2075 ;	-----------------------------------------
   4CA4                    2076 _handle_at_command:
   4CA4 AF 82         [24] 2077 	mov	r7,dpl
                           2078 ;	radio/tdm.c:447: if (len < 2 || len > AT_CMD_MAXLEN || 
   4CA6 BF 02 00      [24] 2079 	cjne	r7,#0x02,00133$
   4CA9                    2080 00133$:
   4CA9 40 17         [24] 2081 	jc	00118$
   4CAB EF            [12] 2082 	mov	a,r7
   4CAC 24 EF         [12] 2083 	add	a,#0xff - 0x10
   4CAE 40 12         [24] 2084 	jc	00118$
                           2085 ;	radio/tdm.c:448: pbuf[0] != (uint8_t)'R' || 
   4CB0 90 04 72      [24] 2086 	mov	dptr,#_pbuf
   4CB3 E0            [24] 2087 	movx	a,@dptr
   4CB4 FE            [12] 2088 	mov	r6,a
   4CB5 BE 52 0A      [24] 2089 	cjne	r6,#0x52,00118$
                           2090 ;	radio/tdm.c:449: pbuf[1] != (uint8_t)'T') {
   4CB8 90 04 73      [24] 2091 	mov	dptr,#(_pbuf + 0x0001)
   4CBB E0            [24] 2092 	movx	a,@dptr
   4CBC FE            [12] 2093 	mov	r6,a
   4CBD BE 54 02      [24] 2094 	cjne	r6,#0x54,00138$
   4CC0 80 23         [24] 2095 	sjmp	00103$
   4CC2                    2096 00138$:
                           2097 ;	radio/tdm.c:452: for (i=0; i<len; i++) {
   4CC2                    2098 00118$:
   4CC2 7E 00         [12] 2099 	mov	r6,#0x00
   4CC4                    2100 00110$:
   4CC4 C3            [12] 2101 	clr	c
   4CC5 EE            [12] 2102 	mov	a,r6
   4CC6 9F            [12] 2103 	subb	a,r7
   4CC7 50 1B         [24] 2104 	jnc	00101$
                           2105 ;	radio/tdm.c:453: putchar(pbuf[i]);
   4CC9 EE            [12] 2106 	mov	a,r6
   4CCA 24 72         [12] 2107 	add	a,#_pbuf
   4CCC F5 82         [12] 2108 	mov	dpl,a
   4CCE E4            [12] 2109 	clr	a
   4CCF 34 04         [12] 2110 	addc	a,#(_pbuf >> 8)
   4CD1 F5 83         [12] 2111 	mov	dph,a
   4CD3 E0            [24] 2112 	movx	a,@dptr
   4CD4 F5 82         [12] 2113 	mov	dpl,a
   4CD6 C0 07         [24] 2114 	push	ar7
   4CD8 C0 06         [24] 2115 	push	ar6
   4CDA 12 44 E0      [24] 2116 	lcall	_putchar
   4CDD D0 06         [24] 2117 	pop	ar6
   4CDF D0 07         [24] 2118 	pop	ar7
                           2119 ;	radio/tdm.c:452: for (i=0; i<len; i++) {
   4CE1 0E            [12] 2120 	inc	r6
   4CE2 80 E0         [24] 2121 	sjmp	00110$
   4CE4                    2122 00101$:
                           2123 ;	radio/tdm.c:455: return;
   4CE4 22            [24] 2124 	ret
   4CE5                    2125 00103$:
                           2126 ;	radio/tdm.c:459: memcpy(at_cmd, pbuf, len);
   4CE5 90 05 C1      [24] 2127 	mov	dptr,#_memcpy_PARM_2
   4CE8 74 72         [12] 2128 	mov	a,#_pbuf
   4CEA F0            [24] 2129 	movx	@dptr,a
   4CEB 74 04         [12] 2130 	mov	a,#(_pbuf >> 8)
   4CED A3            [24] 2131 	inc	dptr
   4CEE F0            [24] 2132 	movx	@dptr,a
   4CEF E4            [12] 2133 	clr	a
   4CF0 A3            [24] 2134 	inc	dptr
   4CF1 F0            [24] 2135 	movx	@dptr,a
   4CF2 90 05 C4      [24] 2136 	mov	dptr,#_memcpy_PARM_3
   4CF5 EF            [12] 2137 	mov	a,r7
   4CF6 F0            [24] 2138 	movx	@dptr,a
   4CF7 E4            [12] 2139 	clr	a
   4CF8 A3            [24] 2140 	inc	dptr
   4CF9 F0            [24] 2141 	movx	@dptr,a
   4CFA 90 00 01      [24] 2142 	mov	dptr,#_at_cmd
   4CFD 75 F0 60      [24] 2143 	mov	b,#0x60
   4D00 C0 07         [24] 2144 	push	ar7
   4D02 12 5D A3      [24] 2145 	lcall	_memcpy
   4D05 D0 07         [24] 2146 	pop	ar7
                           2147 ;	radio/tdm.c:460: at_cmd[len] = 0;
   4D07 EF            [12] 2148 	mov	a,r7
   4D08 24 01         [12] 2149 	add	a,#_at_cmd
   4D0A F8            [12] 2150 	mov	r0,a
   4D0B E4            [12] 2151 	clr	a
   4D0C F2            [24] 2152 	movx	@r0,a
                           2153 ;	radio/tdm.c:461: at_cmd[0] = 'A'; // replace 'R'
   4D0D 78 01         [12] 2154 	mov	r0,#_at_cmd
   4D0F 74 41         [12] 2155 	mov	a,#0x41
   4D11 F2            [24] 2156 	movx	@r0,a
                           2157 ;	radio/tdm.c:462: at_cmd_len = len;
   4D12 78 12         [12] 2158 	mov	r0,#_at_cmd_len
   4D14 EF            [12] 2159 	mov	a,r7
   4D15 F2            [24] 2160 	movx	@r0,a
                           2161 ;	radio/tdm.c:463: at_cmd_ready = true;
   4D16 D2 01         [12] 2162 	setb	_at_cmd_ready
                           2163 ;	radio/tdm.c:468: printf_start_capture(pbuf, sizeof(pbuf));
   4D18 90 03 61      [24] 2164 	mov	dptr,#_printf_start_capture_PARM_2
   4D1B 74 FC         [12] 2165 	mov	a,#0xFC
   4D1D F0            [24] 2166 	movx	@dptr,a
   4D1E 90 04 72      [24] 2167 	mov	dptr,#_pbuf
   4D21 12 2A FF      [24] 2168 	lcall	_printf_start_capture
                           2169 ;	radio/tdm.c:469: at_command();
   4D24 12 06 12      [24] 2170 	lcall	_at_command
                           2171 ;	radio/tdm.c:470: len = printf_end_capture();
   4D27 12 2B 28      [24] 2172 	lcall	_printf_end_capture
                           2173 ;	radio/tdm.c:471: if (len > 0) {
   4D2A E5 82         [12] 2174 	mov	a,dpl
   4D2C FF            [12] 2175 	mov	r7,a
   4D2D 60 0A         [24] 2176 	jz	00112$
                           2177 ;	radio/tdm.c:472: packet_inject(pbuf, len);
   4D2F 78 68         [12] 2178 	mov	r0,#_packet_inject_PARM_2
   4D31 EF            [12] 2179 	mov	a,r7
   4D32 F2            [24] 2180 	movx	@r0,a
   4D33 90 04 72      [24] 2181 	mov	dptr,#_pbuf
   4D36 02 25 13      [24] 2182 	ljmp	_packet_inject
   4D39                    2183 00112$:
   4D39 22            [24] 2184 	ret
                           2185 ;------------------------------------------------------------
                           2186 ;Allocation info for local variables in function 'tdm_serial_loop'
                           2187 ;------------------------------------------------------------
                           2188 ;	radio/tdm.c:482: tdm_serial_loop(void)
                           2189 ;	-----------------------------------------
                           2190 ;	 function tdm_serial_loop
                           2191 ;	-----------------------------------------
   4D3A                    2192 _tdm_serial_loop:
                           2193 ;	radio/tdm.c:484: __pdata uint16_t last_t = timer2_tick();
   4D3A 12 57 04      [24] 2194 	lcall	_timer2_tick
   4D3D 78 E5         [12] 2195 	mov	r0,#_tdm_serial_loop_last_t_1_207
   4D3F E5 82         [12] 2196 	mov	a,dpl
   4D41 F2            [24] 2197 	movx	@r0,a
   4D42 08            [12] 2198 	inc	r0
   4D43 E5 83         [12] 2199 	mov	a,dph
   4D45 F2            [24] 2200 	movx	@r0,a
                           2201 ;	radio/tdm.c:485: __pdata uint16_t last_link_update = last_t;
   4D46 78 E5         [12] 2202 	mov	r0,#_tdm_serial_loop_last_t_1_207
   4D48 79 E7         [12] 2203 	mov	r1,#_tdm_serial_loop_last_link_update_1_207
   4D4A E2            [24] 2204 	movx	a,@r0
   4D4B F3            [24] 2205 	movx	@r1,a
   4D4C 08            [12] 2206 	inc	r0
   4D4D E2            [24] 2207 	movx	a,@r0
   4D4E 09            [12] 2208 	inc	r1
   4D4F F3            [24] 2209 	movx	@r1,a
                           2210 ;	radio/tdm.c:487: _canary = 42;
   4D50 78 FF         [12] 2211 	mov	r0,#__canary
   4D52 76 2A         [12] 2212 	mov	@r0,#0x2A
   4D54                    2213 00192$:
                           2214 ;	radio/tdm.c:494: if (_canary != 42) {
   4D54 78 FF         [12] 2215 	mov	r0,#__canary
   4D56 B6 2A 02      [24] 2216 	cjne	@r0,#0x2A,00339$
   4D59 80 15         [24] 2217 	sjmp	00102$
   4D5B                    2218 00339$:
                           2219 ;	radio/tdm.c:495: panic("stack blown\n");
   4D5B 74 3E         [12] 2220 	mov	a,#__str_6
   4D5D C0 E0         [24] 2221 	push	acc
   4D5F 74 CD         [12] 2222 	mov	a,#(__str_6 >> 8)
   4D61 C0 E0         [24] 2223 	push	acc
   4D63 74 80         [12] 2224 	mov	a,#0x80
   4D65 C0 E0         [24] 2225 	push	acc
   4D67 12 11 F8      [24] 2226 	lcall	_panic
   4D6A 15 81         [12] 2227 	dec	sp
   4D6C 15 81         [12] 2228 	dec	sp
   4D6E 15 81         [12] 2229 	dec	sp
   4D70                    2230 00102$:
                           2231 ;	radio/tdm.c:498: if (pdata_canary != 0x41) {
   4D70 78 00         [12] 2232 	mov	r0,#_pdata_canary
   4D72 E2            [24] 2233 	movx	a,@r0
   4D73 B4 41 02      [24] 2234 	cjne	a,#0x41,00340$
   4D76 80 15         [24] 2235 	sjmp	00104$
   4D78                    2236 00340$:
                           2237 ;	radio/tdm.c:499: panic("pdata canary changed\n");
   4D78 74 4B         [12] 2238 	mov	a,#__str_7
   4D7A C0 E0         [24] 2239 	push	acc
   4D7C 74 CD         [12] 2240 	mov	a,#(__str_7 >> 8)
   4D7E C0 E0         [24] 2241 	push	acc
   4D80 74 80         [12] 2242 	mov	a,#0x80
   4D82 C0 E0         [24] 2243 	push	acc
   4D84 12 11 F8      [24] 2244 	lcall	_panic
   4D87 15 81         [12] 2245 	dec	sp
   4D89 15 81         [12] 2246 	dec	sp
   4D8B 15 81         [12] 2247 	dec	sp
   4D8D                    2248 00104$:
                           2249 ;	radio/tdm.c:503: at_command();
   4D8D 12 06 12      [24] 2250 	lcall	_at_command
                           2251 ;	radio/tdm.c:506: if (test_display) {
   4D90 78 CF         [12] 2252 	mov	r0,#_test_display
   4D92 E2            [24] 2253 	movx	a,@r0
   4D93 60 07         [24] 2254 	jz	00106$
                           2255 ;	radio/tdm.c:507: display_test_output();
   4D95 12 46 62      [24] 2256 	lcall	_display_test_output
                           2257 ;	radio/tdm.c:508: test_display = 0;
   4D98 78 CF         [12] 2258 	mov	r0,#_test_display
   4D9A E4            [12] 2259 	clr	a
   4D9B F2            [24] 2260 	movx	@r0,a
   4D9C                    2261 00106$:
                           2262 ;	radio/tdm.c:511: if (seen_mavlink && feature_mavlink_framing && !at_mode_active) {
   4D9C 30 0D 0B      [24] 2263 	jnb	_seen_mavlink,00108$
   4D9F 30 06 08      [24] 2264 	jnb	_feature_mavlink_framing,00108$
   4DA2 20 00 05      [24] 2265 	jb	_at_mode_active,00108$
                           2266 ;	radio/tdm.c:512: seen_mavlink = false;
   4DA5 C2 0D         [12] 2267 	clr	_seen_mavlink
                           2268 ;	radio/tdm.c:513: MAVLink_report();
   4DA7 12 1B F4      [24] 2269 	lcall	_MAVLink_report
   4DAA                    2270 00108$:
                           2271 ;	radio/tdm.c:517: radio_set_channel(fhop_receive_channel());
   4DAA 12 0C 17      [24] 2272 	lcall	_fhop_receive_channel
   4DAD 12 35 77      [24] 2273 	lcall	_radio_set_channel
                           2274 ;	radio/tdm.c:520: tnow = timer2_tick();
   4DB0 12 57 04      [24] 2275 	lcall	_timer2_tick
   4DB3 AA 82         [24] 2276 	mov	r2,dpl
   4DB5 AB 83         [24] 2277 	mov	r3,dph
                           2278 ;	radio/tdm.c:523: if (radio_receive_packet(&len, pbuf)) {
   4DB7 78 8A         [12] 2279 	mov	r0,#_radio_receive_packet_PARM_2
   4DB9 74 72         [12] 2280 	mov	a,#_pbuf
   4DBB F2            [24] 2281 	movx	@r0,a
   4DBC 08            [12] 2282 	inc	r0
   4DBD 74 04         [12] 2283 	mov	a,#(_pbuf >> 8)
   4DBF F2            [24] 2284 	movx	@r0,a
   4DC0 90 00 E9      [24] 2285 	mov	dptr,#_tdm_serial_loop_len_2_208
   4DC3 75 F0 60      [24] 2286 	mov	b,#0x60
   4DC6 C0 03         [24] 2287 	push	ar3
   4DC8 C0 02         [24] 2288 	push	ar2
   4DCA 12 2D D2      [24] 2289 	lcall	_radio_receive_packet
   4DCD D0 02         [24] 2290 	pop	ar2
   4DCF D0 03         [24] 2291 	pop	ar3
   4DD1 40 03         [24] 2292 	jc	00345$
   4DD3 02 4F 4C      [24] 2293 	ljmp	00129$
   4DD6                    2294 00345$:
                           2295 ;	radio/tdm.c:526: received_packet = true;
   4DD6 D2 2A         [12] 2296 	setb	_received_packet
                           2297 ;	radio/tdm.c:527: fhop_set_locked(true);
   4DD8 D2 03         [12] 2298 	setb	_fhop_set_locked_PARM_1
   4DDA C0 03         [24] 2299 	push	ar3
   4DDC C0 02         [24] 2300 	push	ar2
   4DDE 12 0C 89      [24] 2301 	lcall	_fhop_set_locked
                           2302 ;	radio/tdm.c:530: statistics.average_rssi = (radio_last_rssi() + 7*(uint16_t)statistics.average_rssi)/8;
   4DE1 12 30 98      [24] 2303 	lcall	_radio_last_rssi
   4DE4 AD 82         [24] 2304 	mov	r5,dpl
   4DE6 D0 02         [24] 2305 	pop	ar2
   4DE8 D0 03         [24] 2306 	pop	ar3
   4DEA 7C 00         [12] 2307 	mov	r4,#0x00
   4DEC 78 40         [12] 2308 	mov	r0,#_statistics
   4DEE E2            [24] 2309 	movx	a,@r0
   4DEF 90 05 CB      [24] 2310 	mov	dptr,#__mulint_PARM_2
   4DF2 F0            [24] 2311 	movx	@dptr,a
   4DF3 E4            [12] 2312 	clr	a
   4DF4 A3            [24] 2313 	inc	dptr
   4DF5 F0            [24] 2314 	movx	@dptr,a
   4DF6 90 00 07      [24] 2315 	mov	dptr,#0x0007
   4DF9 C0 05         [24] 2316 	push	ar5
   4DFB C0 04         [24] 2317 	push	ar4
   4DFD C0 03         [24] 2318 	push	ar3
   4DFF C0 02         [24] 2319 	push	ar2
   4E01 12 5E 7B      [24] 2320 	lcall	__mulint
   4E04 AE 82         [24] 2321 	mov	r6,dpl
   4E06 AF 83         [24] 2322 	mov	r7,dph
   4E08 D0 02         [24] 2323 	pop	ar2
   4E0A D0 03         [24] 2324 	pop	ar3
   4E0C D0 04         [24] 2325 	pop	ar4
   4E0E D0 05         [24] 2326 	pop	ar5
   4E10 EE            [12] 2327 	mov	a,r6
   4E11 2D            [12] 2328 	add	a,r5
   4E12 FE            [12] 2329 	mov	r6,a
   4E13 EF            [12] 2330 	mov	a,r7
   4E14 3C            [12] 2331 	addc	a,r4
   4E15 C4            [12] 2332 	swap	a
   4E16 23            [12] 2333 	rl	a
   4E17 CE            [12] 2334 	xch	a,r6
   4E18 C4            [12] 2335 	swap	a
   4E19 23            [12] 2336 	rl	a
   4E1A 54 1F         [12] 2337 	anl	a,#0x1F
   4E1C 6E            [12] 2338 	xrl	a,r6
   4E1D CE            [12] 2339 	xch	a,r6
   4E1E 54 1F         [12] 2340 	anl	a,#0x1F
   4E20 CE            [12] 2341 	xch	a,r6
   4E21 6E            [12] 2342 	xrl	a,r6
   4E22 CE            [12] 2343 	xch	a,r6
   4E23 78 40         [12] 2344 	mov	r0,#_statistics
   4E25 EE            [12] 2345 	mov	a,r6
   4E26 F2            [24] 2346 	movx	@r0,a
                           2347 ;	radio/tdm.c:531: statistics.receive_count++;
   4E27 78 42         [12] 2348 	mov	r0,#(_statistics + 0x0002)
   4E29 E2            [24] 2349 	movx	a,@r0
   4E2A FE            [12] 2350 	mov	r6,a
   4E2B 08            [12] 2351 	inc	r0
   4E2C E2            [24] 2352 	movx	a,@r0
   4E2D FF            [12] 2353 	mov	r7,a
   4E2E 0E            [12] 2354 	inc	r6
   4E2F BE 00 01      [24] 2355 	cjne	r6,#0x00,00346$
   4E32 0F            [12] 2356 	inc	r7
   4E33                    2357 00346$:
   4E33 78 42         [12] 2358 	mov	r0,#(_statistics + 0x0002)
   4E35 EE            [12] 2359 	mov	a,r6
   4E36 F2            [24] 2360 	movx	@r0,a
   4E37 08            [12] 2361 	inc	r0
   4E38 EF            [12] 2362 	mov	a,r7
   4E39 F2            [24] 2363 	movx	@r0,a
                           2364 ;	radio/tdm.c:535: transmit_wait = 0;
   4E3A 78 C2         [12] 2365 	mov	r0,#_transmit_wait
   4E3C E4            [12] 2366 	clr	a
   4E3D F2            [24] 2367 	movx	@r0,a
   4E3E 08            [12] 2368 	inc	r0
   4E3F F2            [24] 2369 	movx	@r0,a
                           2370 ;	radio/tdm.c:537: if (len < 2) {
   4E40 78 E9         [12] 2371 	mov	r0,#_tdm_serial_loop_len_2_208
   4E42 E2            [24] 2372 	movx	a,@r0
   4E43 B4 02 00      [24] 2373 	cjne	a,#0x02,00347$
   4E46                    2374 00347$:
   4E46 50 03         [24] 2375 	jnc	00348$
   4E48 02 4D 54      [24] 2376 	ljmp	00192$
   4E4B                    2377 00348$:
                           2378 ;	radio/tdm.c:544: memcpy(&trailer, &pbuf[len-sizeof(trailer)], sizeof(trailer));
   4E4B 78 E9         [12] 2379 	mov	r0,#_tdm_serial_loop_len_2_208
   4E4D E2            [24] 2380 	movx	a,@r0
   4E4E 24 FE         [12] 2381 	add	a,#0xFE
   4E50 24 72         [12] 2382 	add	a,#_pbuf
   4E52 FE            [12] 2383 	mov	r6,a
   4E53 E4            [12] 2384 	clr	a
   4E54 34 04         [12] 2385 	addc	a,#(_pbuf >> 8)
   4E56 FF            [12] 2386 	mov	r7,a
   4E57 90 05 C1      [24] 2387 	mov	dptr,#_memcpy_PARM_2
   4E5A EE            [12] 2388 	mov	a,r6
   4E5B F0            [24] 2389 	movx	@dptr,a
   4E5C EF            [12] 2390 	mov	a,r7
   4E5D A3            [24] 2391 	inc	dptr
   4E5E F0            [24] 2392 	movx	@dptr,a
   4E5F E4            [12] 2393 	clr	a
   4E60 A3            [24] 2394 	inc	dptr
   4E61 F0            [24] 2395 	movx	@dptr,a
   4E62 90 05 C4      [24] 2396 	mov	dptr,#_memcpy_PARM_3
   4E65 74 02         [12] 2397 	mov	a,#0x02
   4E67 F0            [24] 2398 	movx	@dptr,a
   4E68 E4            [12] 2399 	clr	a
   4E69 A3            [24] 2400 	inc	dptr
   4E6A F0            [24] 2401 	movx	@dptr,a
   4E6B 90 00 D0      [24] 2402 	mov	dptr,#_trailer
   4E6E 75 F0 60      [24] 2403 	mov	b,#0x60
   4E71 C0 03         [24] 2404 	push	ar3
   4E73 C0 02         [24] 2405 	push	ar2
   4E75 12 5D A3      [24] 2406 	lcall	_memcpy
   4E78 D0 02         [24] 2407 	pop	ar2
   4E7A D0 03         [24] 2408 	pop	ar3
                           2409 ;	radio/tdm.c:545: len -= sizeof(trailer);
   4E7C 78 E9         [12] 2410 	mov	r0,#_tdm_serial_loop_len_2_208
   4E7E E2            [24] 2411 	movx	a,@r0
   4E7F 14            [12] 2412 	dec	a
   4E80 14            [12] 2413 	dec	a
   4E81 F2            [24] 2414 	movx	@r0,a
                           2415 ;	radio/tdm.c:547: if (trailer.window == 0 && len != 0) {
   4E82 78 D0         [12] 2416 	mov	r0,#_trailer
   4E84 E2            [24] 2417 	movx	a,@r0
   4E85 FE            [12] 2418 	mov	r6,a
   4E86 08            [12] 2419 	inc	r0
   4E87 E2            [24] 2420 	movx	a,@r0
   4E88 54 1F         [12] 2421 	anl	a,#0x1F
   4E8A FF            [12] 2422 	mov	r7,a
   4E8B 4E            [12] 2423 	orl	a,r6
   4E8C 70 41         [24] 2424 	jnz	00125$
   4E8E 78 E9         [12] 2425 	mov	r0,#_tdm_serial_loop_len_2_208
   4E90 E2            [24] 2426 	movx	a,@r0
   4E91 60 3C         [24] 2427 	jz	00125$
                           2428 ;	radio/tdm.c:549: if (len == sizeof(struct statistics)) {
   4E93 78 E9         [12] 2429 	mov	r0,#_tdm_serial_loop_len_2_208
   4E95 E2            [24] 2430 	movx	a,@r0
   4E96 B4 04 20      [24] 2431 	cjne	a,#0x04,00114$
                           2432 ;	radio/tdm.c:550: memcpy(&remote_statistics, pbuf, len);
   4E99 90 05 C1      [24] 2433 	mov	dptr,#_memcpy_PARM_2
   4E9C 74 72         [12] 2434 	mov	a,#_pbuf
   4E9E F0            [24] 2435 	movx	@dptr,a
   4E9F 74 04         [12] 2436 	mov	a,#(_pbuf >> 8)
   4EA1 A3            [24] 2437 	inc	dptr
   4EA2 F0            [24] 2438 	movx	@dptr,a
   4EA3 E4            [12] 2439 	clr	a
   4EA4 A3            [24] 2440 	inc	dptr
   4EA5 F0            [24] 2441 	movx	@dptr,a
   4EA6 78 E9         [12] 2442 	mov	r0,#_tdm_serial_loop_len_2_208
   4EA8 90 05 C4      [24] 2443 	mov	dptr,#_memcpy_PARM_3
   4EAB E2            [24] 2444 	movx	a,@r0
   4EAC F0            [24] 2445 	movx	@dptr,a
   4EAD E4            [12] 2446 	clr	a
   4EAE A3            [24] 2447 	inc	dptr
   4EAF F0            [24] 2448 	movx	@dptr,a
   4EB0 90 00 44      [24] 2449 	mov	dptr,#_remote_statistics
   4EB3 75 F0 60      [24] 2450 	mov	b,#0x60
   4EB6 12 5D A3      [24] 2451 	lcall	_memcpy
   4EB9                    2452 00114$:
                           2453 ;	radio/tdm.c:554: statistics.receive_count--;
   4EB9 78 42         [12] 2454 	mov	r0,#(_statistics + 0x0002)
   4EBB E2            [24] 2455 	movx	a,@r0
   4EBC FE            [12] 2456 	mov	r6,a
   4EBD 08            [12] 2457 	inc	r0
   4EBE E2            [24] 2458 	movx	a,@r0
   4EBF FF            [12] 2459 	mov	r7,a
   4EC0 1E            [12] 2460 	dec	r6
   4EC1 BE FF 01      [24] 2461 	cjne	r6,#0xFF,00353$
   4EC4 1F            [12] 2462 	dec	r7
   4EC5                    2463 00353$:
   4EC5 78 42         [12] 2464 	mov	r0,#(_statistics + 0x0002)
   4EC7 EE            [12] 2465 	mov	a,r6
   4EC8 F2            [24] 2466 	movx	@r0,a
   4EC9 08            [12] 2467 	inc	r0
   4ECA EF            [12] 2468 	mov	a,r7
   4ECB F2            [24] 2469 	movx	@r0,a
   4ECC 02 4D 54      [24] 2470 	ljmp	00192$
   4ECF                    2471 00125$:
                           2472 ;	radio/tdm.c:555: } else if (trailer.window != 0) {
   4ECF 78 D0         [12] 2473 	mov	r0,#_trailer
   4ED1 E2            [24] 2474 	movx	a,@r0
   4ED2 FE            [12] 2475 	mov	r6,a
   4ED3 08            [12] 2476 	inc	r0
   4ED4 E2            [24] 2477 	movx	a,@r0
   4ED5 54 1F         [12] 2478 	anl	a,#0x1F
   4ED7 FF            [12] 2479 	mov	r7,a
   4ED8 4E            [12] 2480 	orl	a,r6
   4ED9 70 03         [24] 2481 	jnz	00354$
   4EDB 02 4D 54      [24] 2482 	ljmp	00192$
   4EDE                    2483 00354$:
                           2484 ;	radio/tdm.c:558: sync_tx_windows(len);
   4EDE 78 E9         [12] 2485 	mov	r0,#_tdm_serial_loop_len_2_208
   4EE0 E2            [24] 2486 	movx	a,@r0
   4EE1 F5 82         [12] 2487 	mov	dpl,a
   4EE3 C0 03         [24] 2488 	push	ar3
   4EE5 C0 02         [24] 2489 	push	ar2
   4EE7 12 46 94      [24] 2490 	lcall	_sync_tx_windows
   4EEA D0 02         [24] 2491 	pop	ar2
   4EEC D0 03         [24] 2492 	pop	ar3
                           2493 ;	radio/tdm.c:559: last_t = tnow;
   4EEE 78 E5         [12] 2494 	mov	r0,#_tdm_serial_loop_last_t_1_207
   4EF0 EA            [12] 2495 	mov	a,r2
   4EF1 F2            [24] 2496 	movx	@r0,a
   4EF2 08            [12] 2497 	inc	r0
   4EF3 EB            [12] 2498 	mov	a,r3
   4EF4 F2            [24] 2499 	movx	@r0,a
                           2500 ;	radio/tdm.c:561: if (trailer.command == 1) {
   4EF5 78 D1         [12] 2501 	mov	r0,#(_trailer + 0x0001)
   4EF7 E2            [24] 2502 	movx	a,@r0
   4EF8 C4            [12] 2503 	swap	a
   4EF9 03            [12] 2504 	rr	a
   4EFA 54 01         [12] 2505 	anl	a,#0x01
   4EFC FF            [12] 2506 	mov	r7,a
   4EFD BF 01 0B      [24] 2507 	cjne	r7,#0x01,00120$
                           2508 ;	radio/tdm.c:562: handle_at_command(len);
   4F00 78 E9         [12] 2509 	mov	r0,#_tdm_serial_loop_len_2_208
   4F02 E2            [24] 2510 	movx	a,@r0
   4F03 F5 82         [12] 2511 	mov	dpl,a
   4F05 12 4C A4      [24] 2512 	lcall	_handle_at_command
   4F08 02 4D 54      [24] 2513 	ljmp	00192$
   4F0B                    2514 00120$:
                           2515 ;	radio/tdm.c:563: } else if (len != 0 && 
   4F0B 78 E9         [12] 2516 	mov	r0,#_tdm_serial_loop_len_2_208
   4F0D E2            [24] 2517 	movx	a,@r0
   4F0E 70 03         [24] 2518 	jnz	00357$
   4F10 02 4D 54      [24] 2519 	ljmp	00192$
   4F13                    2520 00357$:
                           2521 ;	radio/tdm.c:564: !packet_is_duplicate(len, pbuf, trailer.resend) &&
   4F13 78 D1         [12] 2522 	mov	r0,#(_trailer + 0x0001)
   4F15 E2            [24] 2523 	movx	a,@r0
   4F16 23            [12] 2524 	rl	a
   4F17 54 01         [12] 2525 	anl	a,#0x01
   4F19 24 FF         [12] 2526 	add	a,#0xff
   4F1B 92 0F         [24] 2527 	mov	_packet_is_duplicate_PARM_3,c
   4F1D 78 66         [12] 2528 	mov	r0,#_packet_is_duplicate_PARM_2
   4F1F 74 72         [12] 2529 	mov	a,#_pbuf
   4F21 F2            [24] 2530 	movx	@r0,a
   4F22 08            [12] 2531 	inc	r0
   4F23 74 04         [12] 2532 	mov	a,#(_pbuf >> 8)
   4F25 F2            [24] 2533 	movx	@r0,a
   4F26 78 E9         [12] 2534 	mov	r0,#_tdm_serial_loop_len_2_208
   4F28 E2            [24] 2535 	movx	a,@r0
   4F29 F5 82         [12] 2536 	mov	dpl,a
   4F2B 12 24 93      [24] 2537 	lcall	_packet_is_duplicate
   4F2E 50 03         [24] 2538 	jnc	00358$
   4F30 02 4D 54      [24] 2539 	ljmp	00192$
   4F33                    2540 00358$:
                           2541 ;	radio/tdm.c:565: !at_mode_active) {
   4F33 30 00 03      [24] 2542 	jnb	_at_mode_active,00359$
   4F36 02 4D 54      [24] 2543 	ljmp	00192$
   4F39                    2544 00359$:
                           2545 ;	radio/tdm.c:569: LED_ACTIVITY = LED_ON;
   4F39 D2 96         [12] 2546 	setb	_LED_RED
                           2547 ;	radio/tdm.c:570: serial_write_buf(pbuf, len);
   4F3B 78 E9         [12] 2548 	mov	r0,#_tdm_serial_loop_len_2_208
   4F3D 79 B2         [12] 2549 	mov	r1,#_serial_write_buf_PARM_2
   4F3F E2            [24] 2550 	movx	a,@r0
   4F40 F3            [24] 2551 	movx	@r1,a
   4F41 90 04 72      [24] 2552 	mov	dptr,#_pbuf
   4F44 12 41 0A      [24] 2553 	lcall	_serial_write_buf
                           2554 ;	radio/tdm.c:571: LED_ACTIVITY = LED_OFF;
   4F47 C2 96         [12] 2555 	clr	_LED_RED
                           2556 ;	radio/tdm.c:575: continue;
   4F49 02 4D 54      [24] 2557 	ljmp	00192$
   4F4C                    2558 00129$:
                           2559 ;	radio/tdm.c:581: tnow = timer2_tick();
   4F4C 12 57 04      [24] 2560 	lcall	_timer2_tick
   4F4F AA 82         [24] 2561 	mov	r2,dpl
   4F51 AB 83         [24] 2562 	mov	r3,dph
                           2563 ;	radio/tdm.c:582: tdelta = tnow - last_t;
   4F53 78 E5         [12] 2564 	mov	r0,#_tdm_serial_loop_last_t_1_207
   4F55 79 EA         [12] 2565 	mov	r1,#_tdm_serial_loop_tdelta_2_208
   4F57 D3            [12] 2566 	setb	c
   4F58 E2            [24] 2567 	movx	a,@r0
   4F59 9A            [12] 2568 	subb	a,r2
   4F5A F4            [12] 2569 	cpl	a
   4F5B B3            [12] 2570 	cpl	c
   4F5C F3            [24] 2571 	movx	@r1,a
   4F5D B3            [12] 2572 	cpl	c
   4F5E 08            [12] 2573 	inc	r0
   4F5F E2            [24] 2574 	movx	a,@r0
   4F60 9B            [12] 2575 	subb	a,r3
   4F61 F4            [12] 2576 	cpl	a
   4F62 09            [12] 2577 	inc	r1
   4F63 F3            [24] 2578 	movx	@r1,a
                           2579 ;	radio/tdm.c:583: tdm_state_update(tdelta);
   4F64 78 EA         [12] 2580 	mov	r0,#_tdm_serial_loop_tdelta_2_208
   4F66 E2            [24] 2581 	movx	a,@r0
   4F67 F5 82         [12] 2582 	mov	dpl,a
   4F69 08            [12] 2583 	inc	r0
   4F6A E2            [24] 2584 	movx	a,@r0
   4F6B F5 83         [12] 2585 	mov	dph,a
   4F6D C0 03         [24] 2586 	push	ar3
   4F6F C0 02         [24] 2587 	push	ar2
   4F71 12 47 FB      [24] 2588 	lcall	_tdm_state_update
   4F74 D0 02         [24] 2589 	pop	ar2
   4F76 D0 03         [24] 2590 	pop	ar3
                           2591 ;	radio/tdm.c:584: last_t = tnow;
   4F78 78 E5         [12] 2592 	mov	r0,#_tdm_serial_loop_last_t_1_207
   4F7A EA            [12] 2593 	mov	a,r2
   4F7B F2            [24] 2594 	movx	@r0,a
   4F7C 08            [12] 2595 	inc	r0
   4F7D EB            [12] 2596 	mov	a,r3
   4F7E F2            [24] 2597 	movx	@r0,a
                           2598 ;	radio/tdm.c:587: if (tnow - last_link_update > 32768) {
   4F7F 78 E7         [12] 2599 	mov	r0,#_tdm_serial_loop_last_link_update_1_207
   4F81 D3            [12] 2600 	setb	c
   4F82 E2            [24] 2601 	movx	a,@r0
   4F83 9A            [12] 2602 	subb	a,r2
   4F84 F4            [12] 2603 	cpl	a
   4F85 B3            [12] 2604 	cpl	c
   4F86 FC            [12] 2605 	mov	r4,a
   4F87 B3            [12] 2606 	cpl	c
   4F88 08            [12] 2607 	inc	r0
   4F89 E2            [24] 2608 	movx	a,@r0
   4F8A 9B            [12] 2609 	subb	a,r3
   4F8B F4            [12] 2610 	cpl	a
   4F8C FD            [12] 2611 	mov	r5,a
   4F8D 7E 00         [12] 2612 	mov	r6,#0x00
   4F8F 7F 00         [12] 2613 	mov	r7,#0x00
   4F91 C3            [12] 2614 	clr	c
   4F92 E4            [12] 2615 	clr	a
   4F93 9C            [12] 2616 	subb	a,r4
   4F94 74 80         [12] 2617 	mov	a,#0x80
   4F96 9D            [12] 2618 	subb	a,r5
   4F97 E4            [12] 2619 	clr	a
   4F98 9E            [12] 2620 	subb	a,r6
   4F99 E4            [12] 2621 	clr	a
   4F9A 64 80         [12] 2622 	xrl	a,#0x80
   4F9C 8F F0         [24] 2623 	mov	b,r7
   4F9E 63 F0 80      [24] 2624 	xrl	b,#0x80
   4FA1 95 F0         [12] 2625 	subb	a,b
   4FA3 50 12         [24] 2626 	jnc	00131$
                           2627 ;	radio/tdm.c:588: link_update();
   4FA5 C0 03         [24] 2628 	push	ar3
   4FA7 C0 02         [24] 2629 	push	ar2
   4FA9 12 4B 2E      [24] 2630 	lcall	_link_update
   4FAC D0 02         [24] 2631 	pop	ar2
   4FAE D0 03         [24] 2632 	pop	ar3
                           2633 ;	radio/tdm.c:589: last_link_update = tnow;
   4FB0 78 E7         [12] 2634 	mov	r0,#_tdm_serial_loop_last_link_update_1_207
   4FB2 EA            [12] 2635 	mov	a,r2
   4FB3 F2            [24] 2636 	movx	@r0,a
   4FB4 08            [12] 2637 	inc	r0
   4FB5 EB            [12] 2638 	mov	a,r3
   4FB6 F2            [24] 2639 	movx	@r0,a
   4FB7                    2640 00131$:
                           2641 ;	radio/tdm.c:592: if (lbt_rssi != 0) {
   4FB7 78 C8         [12] 2642 	mov	r0,#_lbt_rssi
   4FB9 E2            [24] 2643 	movx	a,@r0
   4FBA 70 03         [24] 2644 	jnz	00361$
   4FBC 02 50 3C      [24] 2645 	ljmp	00140$
   4FBF                    2646 00361$:
                           2647 ;	radio/tdm.c:594: if (radio_current_rssi() < lbt_rssi) {
   4FBF 12 30 9E      [24] 2648 	lcall	_radio_current_rssi
   4FC2 AF 82         [24] 2649 	mov	r7,dpl
   4FC4 78 C8         [12] 2650 	mov	r0,#_lbt_rssi
   4FC6 C3            [12] 2651 	clr	c
   4FC7 E2            [24] 2652 	movx	a,@r0
   4FC8 F5 F0         [12] 2653 	mov	b,a
   4FCA EF            [12] 2654 	mov	a,r7
   4FCB 95 F0         [12] 2655 	subb	a,b
   4FCD 50 16         [24] 2656 	jnc	00135$
                           2657 ;	radio/tdm.c:595: lbt_listen_time += tdelta;
   4FCF 78 C9         [12] 2658 	mov	r0,#_lbt_listen_time
   4FD1 79 EA         [12] 2659 	mov	r1,#_tdm_serial_loop_tdelta_2_208
   4FD3 E3            [24] 2660 	movx	a,@r1
   4FD4 C5 F0         [12] 2661 	xch	a,b
   4FD6 E2            [24] 2662 	movx	a,@r0
   4FD7 25 F0         [12] 2663 	add	a,b
   4FD9 F2            [24] 2664 	movx	@r0,a
   4FDA 09            [12] 2665 	inc	r1
   4FDB E3            [24] 2666 	movx	a,@r1
   4FDC C5 F0         [12] 2667 	xch	a,b
   4FDE 08            [12] 2668 	inc	r0
   4FDF E2            [24] 2669 	movx	a,@r0
   4FE0 35 F0         [12] 2670 	addc	a,b
   4FE2 F2            [24] 2671 	movx	@r0,a
   4FE3 80 36         [24] 2672 	sjmp	00136$
   4FE5                    2673 00135$:
                           2674 ;	radio/tdm.c:597: lbt_listen_time = 0;
   4FE5 78 C9         [12] 2675 	mov	r0,#_lbt_listen_time
   4FE7 E4            [12] 2676 	clr	a
   4FE8 F2            [24] 2677 	movx	@r0,a
   4FE9 08            [12] 2678 	inc	r0
   4FEA F2            [24] 2679 	movx	@r0,a
                           2680 ;	radio/tdm.c:598: if (lbt_rand == 0) {
   4FEB 78 CD         [12] 2681 	mov	r0,#_lbt_rand
   4FED E2            [24] 2682 	movx	a,@r0
   4FEE F5 F0         [12] 2683 	mov	b,a
   4FF0 08            [12] 2684 	inc	r0
   4FF1 E2            [24] 2685 	movx	a,@r0
   4FF2 45 F0         [12] 2686 	orl	a,b
   4FF4 70 25         [24] 2687 	jnz	00136$
                           2688 ;	radio/tdm.c:599: lbt_rand = ((uint16_t)rand()) % lbt_min_time;
   4FF6 12 5B 90      [24] 2689 	lcall	_rand
   4FF9 AE 82         [24] 2690 	mov	r6,dpl
   4FFB AF 83         [24] 2691 	mov	r7,dph
   4FFD 78 CB         [12] 2692 	mov	r0,#_lbt_min_time
   4FFF 90 05 DB      [24] 2693 	mov	dptr,#__moduint_PARM_2
   5002 E2            [24] 2694 	movx	a,@r0
   5003 F0            [24] 2695 	movx	@dptr,a
   5004 08            [12] 2696 	inc	r0
   5005 E2            [24] 2697 	movx	a,@r0
   5006 A3            [24] 2698 	inc	dptr
   5007 F0            [24] 2699 	movx	@dptr,a
   5008 8E 82         [24] 2700 	mov	dpl,r6
   500A 8F 83         [24] 2701 	mov	dph,r7
   500C 12 60 04      [24] 2702 	lcall	__moduint
   500F E5 82         [12] 2703 	mov	a,dpl
   5011 85 83 F0      [24] 2704 	mov	b,dph
   5014 78 CD         [12] 2705 	mov	r0,#_lbt_rand
   5016 F2            [24] 2706 	movx	@r0,a
   5017 08            [12] 2707 	inc	r0
   5018 E5 F0         [12] 2708 	mov	a,b
   501A F2            [24] 2709 	movx	@r0,a
   501B                    2710 00136$:
                           2711 ;	radio/tdm.c:602: if (lbt_listen_time < lbt_min_time + lbt_rand) {
   501B 78 CB         [12] 2712 	mov	r0,#_lbt_min_time
   501D 79 CD         [12] 2713 	mov	r1,#_lbt_rand
   501F E3            [24] 2714 	movx	a,@r1
   5020 C5 F0         [12] 2715 	xch	a,b
   5022 E2            [24] 2716 	movx	a,@r0
   5023 25 F0         [12] 2717 	add	a,b
   5025 FE            [12] 2718 	mov	r6,a
   5026 09            [12] 2719 	inc	r1
   5027 E3            [24] 2720 	movx	a,@r1
   5028 C5 F0         [12] 2721 	xch	a,b
   502A 08            [12] 2722 	inc	r0
   502B E2            [24] 2723 	movx	a,@r0
   502C 35 F0         [12] 2724 	addc	a,b
   502E FF            [12] 2725 	mov	r7,a
   502F 78 C9         [12] 2726 	mov	r0,#_lbt_listen_time
   5031 C3            [12] 2727 	clr	c
   5032 E2            [24] 2728 	movx	a,@r0
   5033 9E            [12] 2729 	subb	a,r6
   5034 08            [12] 2730 	inc	r0
   5035 E2            [24] 2731 	movx	a,@r0
   5036 9F            [12] 2732 	subb	a,r7
   5037 50 03         [24] 2733 	jnc	00364$
   5039 02 4D 54      [24] 2734 	ljmp	00192$
   503C                    2735 00364$:
                           2736 ;	radio/tdm.c:604: continue;
   503C                    2737 00140$:
                           2738 ;	radio/tdm.c:612: if (tdm_state != TDM_TRANSMIT &&
   503C 78 B6         [12] 2739 	mov	r0,#_tdm_state
   503E E2            [24] 2740 	movx	a,@r0
   503F 60 11         [24] 2741 	jz	00142$
                           2742 ;	radio/tdm.c:613: !(bonus_transmit && tdm_state == TDM_RECEIVE)) {
   5041 20 27 03      [24] 2743 	jb	_bonus_transmit,00366$
   5044 02 4D 54      [24] 2744 	ljmp	00192$
   5047                    2745 00366$:
   5047 78 B6         [12] 2746 	mov	r0,#_tdm_state
   5049 E2            [24] 2747 	movx	a,@r0
   504A B4 02 02      [24] 2748 	cjne	a,#0x02,00367$
   504D 80 03         [24] 2749 	sjmp	00368$
   504F                    2750 00367$:
   504F 02 4D 54      [24] 2751 	ljmp	00192$
   5052                    2752 00368$:
                           2753 ;	radio/tdm.c:615: continue;
   5052                    2754 00142$:
                           2755 ;	radio/tdm.c:623: if (transmit_yield != 0) {
   5052 30 28 03      [24] 2756 	jnb	_transmit_yield,00369$
   5055 02 4D 54      [24] 2757 	ljmp	00192$
   5058                    2758 00369$:
                           2759 ;	radio/tdm.c:628: if (transmit_wait != 0) {
   5058 78 C2         [12] 2760 	mov	r0,#_transmit_wait
   505A E2            [24] 2761 	movx	a,@r0
   505B F5 F0         [12] 2762 	mov	b,a
   505D 08            [12] 2763 	inc	r0
   505E E2            [24] 2764 	movx	a,@r0
   505F 45 F0         [12] 2765 	orl	a,b
   5061 60 03         [24] 2766 	jz	00370$
   5063 02 4D 54      [24] 2767 	ljmp	00192$
   5066                    2768 00370$:
                           2769 ;	radio/tdm.c:633: if (!received_packet &&
   5066 20 2A 05      [24] 2770 	jb	_received_packet,00152$
                           2771 ;	radio/tdm.c:634: radio_preamble_detected() ||
   5069 12 30 81      [24] 2772 	lcall	_radio_preamble_detected
   506C 40 05         [24] 2773 	jc	00149$
   506E                    2774 00152$:
                           2775 ;	radio/tdm.c:635: radio_receive_in_progress()) {
   506E 12 30 68      [24] 2776 	lcall	_radio_receive_in_progress
   5071 50 11         [24] 2777 	jnc	00150$
   5073                    2778 00149$:
                           2779 ;	radio/tdm.c:638: transmit_wait = packet_latency;
   5073 78 BE         [12] 2780 	mov	r0,#_packet_latency
   5075 E2            [24] 2781 	movx	a,@r0
   5076 FE            [12] 2782 	mov	r6,a
   5077 08            [12] 2783 	inc	r0
   5078 E2            [24] 2784 	movx	a,@r0
   5079 FF            [12] 2785 	mov	r7,a
   507A 78 C2         [12] 2786 	mov	r0,#_transmit_wait
   507C EE            [12] 2787 	mov	a,r6
   507D F2            [24] 2788 	movx	@r0,a
   507E 08            [12] 2789 	inc	r0
   507F EF            [12] 2790 	mov	a,r7
   5080 F2            [24] 2791 	movx	@r0,a
                           2792 ;	radio/tdm.c:639: continue;
   5081 02 4D 54      [24] 2793 	ljmp	00192$
   5084                    2794 00150$:
                           2795 ;	radio/tdm.c:645: statistics.average_noise = (radio_current_rssi() + 3*(uint16_t)statistics.average_noise)/4;
   5084 12 30 9E      [24] 2796 	lcall	_radio_current_rssi
   5087 AF 82         [24] 2797 	mov	r7,dpl
   5089 7E 00         [12] 2798 	mov	r6,#0x00
   508B 78 41         [12] 2799 	mov	r0,#(_statistics + 0x0001)
   508D E2            [24] 2800 	movx	a,@r0
   508E 90 05 CB      [24] 2801 	mov	dptr,#__mulint_PARM_2
   5091 F0            [24] 2802 	movx	@dptr,a
   5092 E4            [12] 2803 	clr	a
   5093 A3            [24] 2804 	inc	dptr
   5094 F0            [24] 2805 	movx	@dptr,a
   5095 90 00 03      [24] 2806 	mov	dptr,#0x0003
   5098 C0 07         [24] 2807 	push	ar7
   509A C0 06         [24] 2808 	push	ar6
   509C 12 5E 7B      [24] 2809 	lcall	__mulint
   509F AC 82         [24] 2810 	mov	r4,dpl
   50A1 AD 83         [24] 2811 	mov	r5,dph
   50A3 D0 06         [24] 2812 	pop	ar6
   50A5 D0 07         [24] 2813 	pop	ar7
   50A7 EC            [12] 2814 	mov	a,r4
   50A8 2F            [12] 2815 	add	a,r7
   50A9 FC            [12] 2816 	mov	r4,a
   50AA ED            [12] 2817 	mov	a,r5
   50AB 3E            [12] 2818 	addc	a,r6
   50AC C3            [12] 2819 	clr	c
   50AD 13            [12] 2820 	rrc	a
   50AE CC            [12] 2821 	xch	a,r4
   50AF 13            [12] 2822 	rrc	a
   50B0 CC            [12] 2823 	xch	a,r4
   50B1 C3            [12] 2824 	clr	c
   50B2 13            [12] 2825 	rrc	a
   50B3 CC            [12] 2826 	xch	a,r4
   50B4 13            [12] 2827 	rrc	a
   50B5 CC            [12] 2828 	xch	a,r4
   50B6 FD            [12] 2829 	mov	r5,a
   50B7 78 41         [12] 2830 	mov	r0,#(_statistics + 0x0001)
   50B9 EC            [12] 2831 	mov	a,r4
   50BA F2            [24] 2832 	movx	@r0,a
                           2833 ;	radio/tdm.c:647: if (duty_cycle_wait) {
   50BB 30 2B 03      [24] 2834 	jnb	_duty_cycle_wait,00374$
   50BE 02 4D 54      [24] 2835 	ljmp	00192$
   50C1                    2836 00374$:
                           2837 ;	radio/tdm.c:654: if (tdm_state_remaining < packet_latency) {
   50C1 78 B7         [12] 2838 	mov	r0,#_tdm_state_remaining
   50C3 79 BE         [12] 2839 	mov	r1,#_packet_latency
   50C5 C3            [12] 2840 	clr	c
   50C6 E3            [24] 2841 	movx	a,@r1
   50C7 F5 F0         [12] 2842 	mov	b,a
   50C9 E2            [24] 2843 	movx	a,@r0
   50CA 95 F0         [12] 2844 	subb	a,b
   50CC 09            [12] 2845 	inc	r1
   50CD E3            [24] 2846 	movx	a,@r1
   50CE F5 F0         [12] 2847 	mov	b,a
   50D0 08            [12] 2848 	inc	r0
   50D1 E2            [24] 2849 	movx	a,@r0
   50D2 95 F0         [12] 2850 	subb	a,b
   50D4 50 03         [24] 2851 	jnc	00375$
   50D6 02 4D 54      [24] 2852 	ljmp	00192$
   50D9                    2853 00375$:
                           2854 ;	radio/tdm.c:658: max_xmit = (tdm_state_remaining - packet_latency) / ticks_per_byte;
   50D9 78 B7         [12] 2855 	mov	r0,#_tdm_state_remaining
   50DB 79 BE         [12] 2856 	mov	r1,#_packet_latency
   50DD E3            [24] 2857 	movx	a,@r1
   50DE F5 F0         [12] 2858 	mov	b,a
   50E0 C3            [12] 2859 	clr	c
   50E1 E2            [24] 2860 	movx	a,@r0
   50E2 95 F0         [12] 2861 	subb	a,b
   50E4 FE            [12] 2862 	mov	r6,a
   50E5 09            [12] 2863 	inc	r1
   50E6 E3            [24] 2864 	movx	a,@r1
   50E7 F5 F0         [12] 2865 	mov	b,a
   50E9 08            [12] 2866 	inc	r0
   50EA E2            [24] 2867 	movx	a,@r0
   50EB 95 F0         [12] 2868 	subb	a,b
   50ED FF            [12] 2869 	mov	r7,a
   50EE 78 C0         [12] 2870 	mov	r0,#_ticks_per_byte
   50F0 90 05 70      [24] 2871 	mov	dptr,#__divuint_PARM_2
   50F3 E2            [24] 2872 	movx	a,@r0
   50F4 F0            [24] 2873 	movx	@dptr,a
   50F5 08            [12] 2874 	inc	r0
   50F6 E2            [24] 2875 	movx	a,@r0
   50F7 A3            [24] 2876 	inc	dptr
   50F8 F0            [24] 2877 	movx	@dptr,a
   50F9 8E 82         [24] 2878 	mov	dpl,r6
   50FB 8F 83         [24] 2879 	mov	dph,r7
   50FD 12 57 5E      [24] 2880 	lcall	__divuint
   5100 AE 82         [24] 2881 	mov	r6,dpl
   5102 AF 83         [24] 2882 	mov	r7,dph
                           2883 ;	radio/tdm.c:659: if (max_xmit < sizeof(trailer)+1) {
   5104 BE 03 00      [24] 2884 	cjne	r6,#0x03,00376$
   5107                    2885 00376$:
   5107 50 03         [24] 2886 	jnc	00377$
   5109 02 4D 54      [24] 2887 	ljmp	00192$
   510C                    2888 00377$:
                           2889 ;	radio/tdm.c:663: max_xmit -= sizeof(trailer)+1;
   510C 1E            [12] 2890 	dec	r6
   510D 1E            [12] 2891 	dec	r6
   510E 1E            [12] 2892 	dec	r6
                           2893 ;	radio/tdm.c:664: if (max_xmit > max_data_packet_length) {
   510F 78 BB         [12] 2894 	mov	r0,#_max_data_packet_length
   5111 C3            [12] 2895 	clr	c
   5112 E2            [24] 2896 	movx	a,@r0
   5113 9E            [12] 2897 	subb	a,r6
   5114 50 04         [24] 2898 	jnc	00160$
                           2899 ;	radio/tdm.c:665: max_xmit = max_data_packet_length;
   5116 78 BB         [12] 2900 	mov	r0,#_max_data_packet_length
   5118 E2            [24] 2901 	movx	a,@r0
   5119 FE            [12] 2902 	mov	r6,a
   511A                    2903 00160$:
                           2904 ;	radio/tdm.c:669: if (send_at_command && 
   511A 30 2D 57      [24] 2905 	jnb	_send_at_command,00162$
                           2906 ;	radio/tdm.c:670: max_xmit >= strlen(remote_at_cmd)) {
   511D 90 00 D2      [24] 2907 	mov	dptr,#_remote_at_cmd
   5120 75 F0 60      [24] 2908 	mov	b,#0x60
   5123 C0 06         [24] 2909 	push	ar6
   5125 12 64 00      [24] 2910 	lcall	_strlen
   5128 AD 82         [24] 2911 	mov	r5,dpl
   512A AF 83         [24] 2912 	mov	r7,dph
   512C D0 06         [24] 2913 	pop	ar6
   512E 8E 03         [24] 2914 	mov	ar3,r6
   5130 7C 00         [12] 2915 	mov	r4,#0x00
   5132 C3            [12] 2916 	clr	c
   5133 EB            [12] 2917 	mov	a,r3
   5134 9D            [12] 2918 	subb	a,r5
   5135 EC            [12] 2919 	mov	a,r4
   5136 9F            [12] 2920 	subb	a,r7
   5137 40 3B         [24] 2921 	jc	00162$
                           2922 ;	radio/tdm.c:672: len = strlen(remote_at_cmd);
   5139 90 00 D2      [24] 2923 	mov	dptr,#_remote_at_cmd
   513C 75 F0 60      [24] 2924 	mov	b,#0x60
   513F C0 06         [24] 2925 	push	ar6
   5141 12 64 00      [24] 2926 	lcall	_strlen
   5144 AD 82         [24] 2927 	mov	r5,dpl
   5146 78 E9         [12] 2928 	mov	r0,#_tdm_serial_loop_len_2_208
   5148 ED            [12] 2929 	mov	a,r5
   5149 F2            [24] 2930 	movx	@r0,a
                           2931 ;	radio/tdm.c:673: memcpy(pbuf, remote_at_cmd, len);
   514A 90 05 C1      [24] 2932 	mov	dptr,#_memcpy_PARM_2
   514D 74 D2         [12] 2933 	mov	a,#_remote_at_cmd
   514F F0            [24] 2934 	movx	@dptr,a
   5150 E4            [12] 2935 	clr	a
   5151 A3            [24] 2936 	inc	dptr
   5152 F0            [24] 2937 	movx	@dptr,a
   5153 74 60         [12] 2938 	mov	a,#0x60
   5155 A3            [24] 2939 	inc	dptr
   5156 F0            [24] 2940 	movx	@dptr,a
   5157 90 05 C4      [24] 2941 	mov	dptr,#_memcpy_PARM_3
   515A ED            [12] 2942 	mov	a,r5
   515B F0            [24] 2943 	movx	@dptr,a
   515C E4            [12] 2944 	clr	a
   515D A3            [24] 2945 	inc	dptr
   515E F0            [24] 2946 	movx	@dptr,a
   515F 90 04 72      [24] 2947 	mov	dptr,#_pbuf
   5162 75 F0 00      [24] 2948 	mov	b,#0x00
   5165 12 5D A3      [24] 2949 	lcall	_memcpy
   5168 D0 06         [24] 2950 	pop	ar6
                           2951 ;	radio/tdm.c:674: trailer.command = 1;
   516A 78 D1         [12] 2952 	mov	r0,#(_trailer + 0x0001)
   516C E2            [24] 2953 	movx	a,@r0
   516D 44 20         [12] 2954 	orl	a,#0x20
   516F F2            [24] 2955 	movx	@r0,a
                           2956 ;	radio/tdm.c:675: send_at_command = false;
   5170 C2 2D         [12] 2957 	clr	_send_at_command
   5172 80 26         [24] 2958 	sjmp	00163$
   5174                    2959 00162$:
                           2960 ;	radio/tdm.c:678: len = packet_get_next(max_xmit, pbuf);
   5174 78 64         [12] 2961 	mov	r0,#_packet_get_next_PARM_2
   5176 74 72         [12] 2962 	mov	a,#_pbuf
   5178 F2            [24] 2963 	movx	@r0,a
   5179 08            [12] 2964 	inc	r0
   517A 74 04         [12] 2965 	mov	a,#(_pbuf >> 8)
   517C F2            [24] 2966 	movx	@r0,a
   517D 8E 82         [24] 2967 	mov	dpl,r6
   517F C0 06         [24] 2968 	push	ar6
   5181 12 1F 9A      [24] 2969 	lcall	_packet_get_next
   5184 E5 82         [12] 2970 	mov	a,dpl
   5186 78 E9         [12] 2971 	mov	r0,#_tdm_serial_loop_len_2_208
   5188 F2            [24] 2972 	movx	@r0,a
                           2973 ;	radio/tdm.c:679: trailer.command = packet_is_injected();
   5189 12 24 3C      [24] 2974 	lcall	_packet_is_injected
   518C D0 06         [24] 2975 	pop	ar6
   518E 92 30         [24] 2976 	mov  _tdm_serial_loop_sloc0_1_0,c
   5190 E4            [12] 2977 	clr	a
   5191 33            [12] 2978 	rlc	a
   5192 FF            [12] 2979 	mov	r7,a
   5193 78 D1         [12] 2980 	mov	r0,#(_trailer + 0x0001)
   5195 13            [12] 2981 	rrc	a
   5196 E2            [24] 2982 	movx	a,@r0
   5197 92 E5         [24] 2983 	mov	acc.5,c
   5199 F2            [24] 2984 	movx	@r0,a
   519A                    2985 00163$:
                           2986 ;	radio/tdm.c:682: if (len > max_data_packet_length) {
   519A 78 E9         [12] 2987 	mov	r0,#_tdm_serial_loop_len_2_208
   519C 79 BB         [12] 2988 	mov	r1,#_max_data_packet_length
   519E C3            [12] 2989 	clr	c
   519F E2            [24] 2990 	movx	a,@r0
   51A0 F5 F0         [12] 2991 	mov	b,a
   51A2 E3            [24] 2992 	movx	a,@r1
   51A3 95 F0         [12] 2993 	subb	a,b
   51A5 50 19         [24] 2994 	jnc	00166$
                           2995 ;	radio/tdm.c:683: panic("oversized tdm packet");
   51A7 C0 06         [24] 2996 	push	ar6
   51A9 74 61         [12] 2997 	mov	a,#__str_8
   51AB C0 E0         [24] 2998 	push	acc
   51AD 74 CD         [12] 2999 	mov	a,#(__str_8 >> 8)
   51AF C0 E0         [24] 3000 	push	acc
   51B1 74 80         [12] 3001 	mov	a,#0x80
   51B3 C0 E0         [24] 3002 	push	acc
   51B5 12 11 F8      [24] 3003 	lcall	_panic
   51B8 15 81         [12] 3004 	dec	sp
   51BA 15 81         [12] 3005 	dec	sp
   51BC 15 81         [12] 3006 	dec	sp
   51BE D0 06         [24] 3007 	pop	ar6
   51C0                    3008 00166$:
                           3009 ;	radio/tdm.c:686: trailer.bonus = (tdm_state == TDM_RECEIVE);
   51C0 78 B6         [12] 3010 	mov	r0,#_tdm_state
   51C2 E2            [24] 3011 	movx	a,@r0
   51C3 B4 02 03      [24] 3012 	cjne	a,#0x02,00382$
   51C6 D3            [12] 3013 	setb	c
   51C7 80 01         [24] 3014 	sjmp	00383$
   51C9                    3015 00382$:
   51C9 C3            [12] 3016 	clr	c
   51CA                    3017 00383$:
   51CA 92 30         [24] 3018 	mov  _tdm_serial_loop_sloc0_1_0,c
   51CC E4            [12] 3019 	clr	a
   51CD 33            [12] 3020 	rlc	a
   51CE 78 D1         [12] 3021 	mov	r0,#(_trailer + 0x0001)
   51D0 13            [12] 3022 	rrc	a
   51D1 E2            [24] 3023 	movx	a,@r0
   51D2 92 E6         [24] 3024 	mov	acc.6,c
   51D4 F2            [24] 3025 	movx	@r0,a
                           3026 ;	radio/tdm.c:687: trailer.resend = packet_is_resend();
   51D5 C0 06         [24] 3027 	push	ar6
   51D7 12 24 39      [24] 3028 	lcall	_packet_is_resend
   51DA D0 06         [24] 3029 	pop	ar6
   51DC 92 30         [24] 3030 	mov  _tdm_serial_loop_sloc0_1_0,c
   51DE E4            [12] 3031 	clr	a
   51DF 33            [12] 3032 	rlc	a
   51E0 FF            [12] 3033 	mov	r7,a
   51E1 78 D1         [12] 3034 	mov	r0,#(_trailer + 0x0001)
   51E3 13            [12] 3035 	rrc	a
   51E4 E2            [24] 3036 	movx	a,@r0
   51E5 92 E7         [24] 3037 	mov	acc.7,c
   51E7 F2            [24] 3038 	movx	@r0,a
                           3039 ;	radio/tdm.c:689: if (tdm_state == TDM_TRANSMIT &&
   51E8 78 B6         [12] 3040 	mov	r0,#_tdm_state
   51EA E2            [24] 3041 	movx	a,@r0
   51EB 70 44         [24] 3042 	jnz	00168$
                           3043 ;	radio/tdm.c:690: len == 0 && 
   51ED 78 E9         [12] 3044 	mov	r0,#_tdm_serial_loop_len_2_208
   51EF E2            [24] 3045 	movx	a,@r0
   51F0 70 3F         [24] 3046 	jnz	00168$
                           3047 ;	radio/tdm.c:691: send_statistics && 
   51F2 30 2C 3C      [24] 3048 	jnb	_send_statistics,00168$
                           3049 ;	radio/tdm.c:692: max_xmit >= sizeof(statistics)) {
   51F5 BE 04 00      [24] 3050 	cjne	r6,#0x04,00387$
   51F8                    3051 00387$:
   51F8 40 37         [24] 3052 	jc	00168$
                           3053 ;	radio/tdm.c:694: send_statistics = 0;
   51FA C2 2C         [12] 3054 	clr	_send_statistics
                           3055 ;	radio/tdm.c:695: memcpy(pbuf, &statistics, sizeof(statistics));
   51FC 90 05 C1      [24] 3056 	mov	dptr,#_memcpy_PARM_2
   51FF 74 40         [12] 3057 	mov	a,#_statistics
   5201 F0            [24] 3058 	movx	@dptr,a
   5202 E4            [12] 3059 	clr	a
   5203 A3            [24] 3060 	inc	dptr
   5204 F0            [24] 3061 	movx	@dptr,a
   5205 74 60         [12] 3062 	mov	a,#0x60
   5207 A3            [24] 3063 	inc	dptr
   5208 F0            [24] 3064 	movx	@dptr,a
   5209 90 05 C4      [24] 3065 	mov	dptr,#_memcpy_PARM_3
   520C 74 04         [12] 3066 	mov	a,#0x04
   520E F0            [24] 3067 	movx	@dptr,a
   520F E4            [12] 3068 	clr	a
   5210 A3            [24] 3069 	inc	dptr
   5211 F0            [24] 3070 	movx	@dptr,a
   5212 90 04 72      [24] 3071 	mov	dptr,#_pbuf
   5215 75 F0 00      [24] 3072 	mov	b,#0x00
   5218 12 5D A3      [24] 3073 	lcall	_memcpy
                           3074 ;	radio/tdm.c:696: len = sizeof(statistics);
   521B 78 E9         [12] 3075 	mov	r0,#_tdm_serial_loop_len_2_208
   521D 74 04         [12] 3076 	mov	a,#0x04
   521F F2            [24] 3077 	movx	@r0,a
                           3078 ;	radio/tdm.c:699: trailer.window = 0;
   5220 78 D0         [12] 3079 	mov	r0,#_trailer
   5222 E4            [12] 3080 	clr	a
   5223 F2            [24] 3081 	movx	@r0,a
   5224 08            [12] 3082 	inc	r0
   5225 E2            [24] 3083 	movx	a,@r0
   5226 54 E0         [12] 3084 	anl	a,#0xE0
   5228 F2            [24] 3085 	movx	@r0,a
                           3086 ;	radio/tdm.c:700: trailer.resend = 0;
   5229 78 D1         [12] 3087 	mov	r0,#(_trailer + 0x0001)
   522B E2            [24] 3088 	movx	a,@r0
   522C 54 7F         [12] 3089 	anl	a,#0x7F
   522E F2            [24] 3090 	movx	@r0,a
   522F 80 28         [24] 3091 	sjmp	00169$
   5231                    3092 00168$:
                           3093 ;	radio/tdm.c:705: trailer.window = (uint16_t)(tdm_state_remaining - flight_time_estimate(len+sizeof(trailer)));
   5231 78 E9         [12] 3094 	mov	r0,#_tdm_serial_loop_len_2_208
   5233 E2            [24] 3095 	movx	a,@r0
   5234 24 02         [12] 3096 	add	a,#0x02
   5236 F5 82         [12] 3097 	mov	dpl,a
   5238 12 46 6D      [24] 3098 	lcall	_flight_time_estimate
   523B AE 82         [24] 3099 	mov	r6,dpl
   523D AF 83         [24] 3100 	mov	r7,dph
   523F 78 B7         [12] 3101 	mov	r0,#_tdm_state_remaining
   5241 E2            [24] 3102 	movx	a,@r0
   5242 C3            [12] 3103 	clr	c
   5243 9E            [12] 3104 	subb	a,r6
   5244 FE            [12] 3105 	mov	r6,a
   5245 08            [12] 3106 	inc	r0
   5246 E2            [24] 3107 	movx	a,@r0
   5247 9F            [12] 3108 	subb	a,r7
   5248 FF            [12] 3109 	mov	r7,a
   5249 78 D0         [12] 3110 	mov	r0,#_trailer
   524B EE            [12] 3111 	mov	a,r6
   524C F2            [24] 3112 	movx	@r0,a
   524D 08            [12] 3113 	inc	r0
   524E EF            [12] 3114 	mov	a,r7
   524F 54 1F         [12] 3115 	anl	a,#0x1F
   5251 F5 F0         [12] 3116 	mov	b,a
   5253 E2            [24] 3117 	movx	a,@r0
   5254 54 E0         [12] 3118 	anl	a,#0xE0
   5256 45 F0         [12] 3119 	orl	a,b
   5258 F2            [24] 3120 	movx	@r0,a
   5259                    3121 00169$:
                           3122 ;	radio/tdm.c:709: radio_set_channel(fhop_transmit_channel());
   5259 12 0C 07      [24] 3123 	lcall	_fhop_transmit_channel
   525C 12 35 77      [24] 3124 	lcall	_radio_set_channel
                           3125 ;	radio/tdm.c:711: memcpy(&pbuf[len], &trailer, sizeof(trailer));
   525F 78 E9         [12] 3126 	mov	r0,#_tdm_serial_loop_len_2_208
   5261 E2            [24] 3127 	movx	a,@r0
   5262 24 72         [12] 3128 	add	a,#_pbuf
   5264 FE            [12] 3129 	mov	r6,a
   5265 E4            [12] 3130 	clr	a
   5266 34 04         [12] 3131 	addc	a,#(_pbuf >> 8)
   5268 FF            [12] 3132 	mov	r7,a
   5269 7D 00         [12] 3133 	mov	r5,#0x00
   526B 90 05 C1      [24] 3134 	mov	dptr,#_memcpy_PARM_2
   526E 74 D0         [12] 3135 	mov	a,#_trailer
   5270 F0            [24] 3136 	movx	@dptr,a
   5271 E4            [12] 3137 	clr	a
   5272 A3            [24] 3138 	inc	dptr
   5273 F0            [24] 3139 	movx	@dptr,a
   5274 74 60         [12] 3140 	mov	a,#0x60
   5276 A3            [24] 3141 	inc	dptr
   5277 F0            [24] 3142 	movx	@dptr,a
   5278 90 05 C4      [24] 3143 	mov	dptr,#_memcpy_PARM_3
   527B 74 02         [12] 3144 	mov	a,#0x02
   527D F0            [24] 3145 	movx	@dptr,a
   527E E4            [12] 3146 	clr	a
   527F A3            [24] 3147 	inc	dptr
   5280 F0            [24] 3148 	movx	@dptr,a
   5281 8E 82         [24] 3149 	mov	dpl,r6
   5283 8F 83         [24] 3150 	mov	dph,r7
   5285 8D F0         [24] 3151 	mov	b,r5
   5287 12 5D A3      [24] 3152 	lcall	_memcpy
                           3153 ;	radio/tdm.c:713: if (len != 0 && trailer.window != 0) {
   528A 78 E9         [12] 3154 	mov	r0,#_tdm_serial_loop_len_2_208
   528C E2            [24] 3155 	movx	a,@r0
   528D 60 0E         [24] 3156 	jz	00174$
   528F 78 D0         [12] 3157 	mov	r0,#_trailer
   5291 E2            [24] 3158 	movx	a,@r0
   5292 FE            [12] 3159 	mov	r6,a
   5293 08            [12] 3160 	inc	r0
   5294 E2            [24] 3161 	movx	a,@r0
   5295 54 1F         [12] 3162 	anl	a,#0x1F
   5297 FF            [12] 3163 	mov	r7,a
   5298 4E            [12] 3164 	orl	a,r6
   5299 60 02         [24] 3165 	jz	00174$
                           3166 ;	radio/tdm.c:715: LED_ACTIVITY = LED_ON;
   529B D2 96         [12] 3167 	setb	_LED_RED
   529D                    3168 00174$:
                           3169 ;	radio/tdm.c:718: if (len == 0) {
   529D 78 E9         [12] 3170 	mov	r0,#_tdm_serial_loop_len_2_208
   529F E2            [24] 3171 	movx	a,@r0
   52A0 70 02         [24] 3172 	jnz	00177$
                           3173 ;	radio/tdm.c:722: transmit_yield = 1;
   52A2 D2 28         [12] 3174 	setb	_transmit_yield
   52A4                    3175 00177$:
                           3176 ;	radio/tdm.c:728: transmit_wait = packet_latency;
   52A4 78 BE         [12] 3177 	mov	r0,#_packet_latency
   52A6 E2            [24] 3178 	movx	a,@r0
   52A7 FE            [12] 3179 	mov	r6,a
   52A8 08            [12] 3180 	inc	r0
   52A9 E2            [24] 3181 	movx	a,@r0
   52AA FF            [12] 3182 	mov	r7,a
   52AB 78 C2         [12] 3183 	mov	r0,#_transmit_wait
   52AD EE            [12] 3184 	mov	a,r6
   52AE F2            [24] 3185 	movx	@r0,a
   52AF 08            [12] 3186 	inc	r0
   52B0 EF            [12] 3187 	mov	a,r7
   52B1 F2            [24] 3188 	movx	@r0,a
                           3189 ;	radio/tdm.c:732: if ((duty_cycle - duty_cycle_offset) != 100) {
   52B2 78 C4         [12] 3190 	mov	r0,#_duty_cycle
   52B4 E2            [24] 3191 	movx	a,@r0
   52B5 FE            [12] 3192 	mov	r6,a
   52B6 7F 00         [12] 3193 	mov	r7,#0x00
   52B8 78 C5         [12] 3194 	mov	r0,#_duty_cycle_offset
   52BA E2            [24] 3195 	movx	a,@r0
   52BB FC            [12] 3196 	mov	r4,a
   52BC 7D 00         [12] 3197 	mov	r5,#0x00
   52BE EE            [12] 3198 	mov	a,r6
   52BF C3            [12] 3199 	clr	c
   52C0 9C            [12] 3200 	subb	a,r4
   52C1 FE            [12] 3201 	mov	r6,a
   52C2 EF            [12] 3202 	mov	a,r7
   52C3 9D            [12] 3203 	subb	a,r5
   52C4 FF            [12] 3204 	mov	r7,a
   52C5 BE 64 05      [24] 3205 	cjne	r6,#0x64,00392$
   52C8 BF 00 02      [24] 3206 	cjne	r7,#0x00,00392$
   52CB 80 17         [24] 3207 	sjmp	00179$
   52CD                    3208 00392$:
                           3209 ;	radio/tdm.c:733: transmitted_ticks += flight_time_estimate(len+sizeof(trailer));
   52CD 78 E9         [12] 3210 	mov	r0,#_tdm_serial_loop_len_2_208
   52CF E2            [24] 3211 	movx	a,@r0
   52D0 24 02         [12] 3212 	add	a,#0x02
   52D2 F5 82         [12] 3213 	mov	dpl,a
   52D4 12 46 6D      [24] 3214 	lcall	_flight_time_estimate
   52D7 AE 82         [24] 3215 	mov	r6,dpl
   52D9 AF 83         [24] 3216 	mov	r7,dph
   52DB 78 C6         [12] 3217 	mov	r0,#_transmitted_ticks
   52DD E2            [24] 3218 	movx	a,@r0
   52DE 2E            [12] 3219 	add	a,r6
   52DF F2            [24] 3220 	movx	@r0,a
   52E0 08            [12] 3221 	inc	r0
   52E1 E2            [24] 3222 	movx	a,@r0
   52E2 3F            [12] 3223 	addc	a,r7
   52E3 F2            [24] 3224 	movx	@r0,a
   52E4                    3225 00179$:
                           3226 ;	radio/tdm.c:737: if (!radio_transmit(len + sizeof(trailer), pbuf, tdm_state_remaining + (silence_period/2)) &&
   52E4 78 E9         [12] 3227 	mov	r0,#_tdm_serial_loop_len_2_208
   52E6 E2            [24] 3228 	movx	a,@r0
   52E7 24 02         [12] 3229 	add	a,#0x02
   52E9 FF            [12] 3230 	mov	r7,a
   52EA 78 BC         [12] 3231 	mov	r0,#_silence_period
   52EC E2            [24] 3232 	movx	a,@r0
   52ED FD            [12] 3233 	mov	r5,a
   52EE 08            [12] 3234 	inc	r0
   52EF E2            [24] 3235 	movx	a,@r0
   52F0 C3            [12] 3236 	clr	c
   52F1 13            [12] 3237 	rrc	a
   52F2 CD            [12] 3238 	xch	a,r5
   52F3 13            [12] 3239 	rrc	a
   52F4 CD            [12] 3240 	xch	a,r5
   52F5 FE            [12] 3241 	mov	r6,a
   52F6 78 B7         [12] 3242 	mov	r0,#_tdm_state_remaining
   52F8 E2            [24] 3243 	movx	a,@r0
   52F9 2D            [12] 3244 	add	a,r5
   52FA FD            [12] 3245 	mov	r5,a
   52FB 08            [12] 3246 	inc	r0
   52FC E2            [24] 3247 	movx	a,@r0
   52FD 3E            [12] 3248 	addc	a,r6
   52FE FE            [12] 3249 	mov	r6,a
   52FF 78 96         [12] 3250 	mov	r0,#_radio_transmit_PARM_2
   5301 74 72         [12] 3251 	mov	a,#_pbuf
   5303 F2            [24] 3252 	movx	@r0,a
   5304 08            [12] 3253 	inc	r0
   5305 74 04         [12] 3254 	mov	a,#(_pbuf >> 8)
   5307 F2            [24] 3255 	movx	@r0,a
   5308 78 98         [12] 3256 	mov	r0,#_radio_transmit_PARM_3
   530A ED            [12] 3257 	mov	a,r5
   530B F2            [24] 3258 	movx	@r0,a
   530C 08            [12] 3259 	inc	r0
   530D EE            [12] 3260 	mov	a,r6
   530E F2            [24] 3261 	movx	@r0,a
   530F 8F 82         [24] 3262 	mov	dpl,r7
   5311 12 33 EA      [24] 3263 	lcall	_radio_transmit
   5314 40 1A         [24] 3264 	jc	00181$
                           3265 ;	radio/tdm.c:738: len != 0 && trailer.window != 0 && trailer.command == 0) {
   5316 78 E9         [12] 3266 	mov	r0,#_tdm_serial_loop_len_2_208
   5318 E2            [24] 3267 	movx	a,@r0
   5319 60 15         [24] 3268 	jz	00181$
   531B 78 D0         [12] 3269 	mov	r0,#_trailer
   531D E2            [24] 3270 	movx	a,@r0
   531E FE            [12] 3271 	mov	r6,a
   531F 08            [12] 3272 	inc	r0
   5320 E2            [24] 3273 	movx	a,@r0
   5321 54 1F         [12] 3274 	anl	a,#0x1F
   5323 FF            [12] 3275 	mov	r7,a
   5324 4E            [12] 3276 	orl	a,r6
   5325 60 09         [24] 3277 	jz	00181$
   5327 78 D1         [12] 3278 	mov	r0,#(_trailer + 0x0001)
   5329 E2            [24] 3279 	movx	a,@r0
   532A 20 E5 03      [24] 3280 	jb	acc.5,00181$
                           3281 ;	radio/tdm.c:739: packet_force_resend();
   532D 12 24 3F      [24] 3282 	lcall	_packet_force_resend
   5330                    3283 00181$:
                           3284 ;	radio/tdm.c:742: if (lbt_rssi != 0) {
   5330 78 C8         [12] 3285 	mov	r0,#_lbt_rssi
   5332 E2            [24] 3286 	movx	a,@r0
   5333 60 0C         [24] 3287 	jz	00186$
                           3288 ;	radio/tdm.c:744: lbt_listen_time = 0;
   5335 78 C9         [12] 3289 	mov	r0,#_lbt_listen_time
   5337 E4            [12] 3290 	clr	a
   5338 F2            [24] 3291 	movx	@r0,a
   5339 08            [12] 3292 	inc	r0
   533A F2            [24] 3293 	movx	@r0,a
                           3294 ;	radio/tdm.c:745: lbt_rand = 0;
   533B 78 CD         [12] 3295 	mov	r0,#_lbt_rand
   533D E4            [12] 3296 	clr	a
   533E F2            [24] 3297 	movx	@r0,a
   533F 08            [12] 3298 	inc	r0
   5340 F2            [24] 3299 	movx	@r0,a
   5341                    3300 00186$:
                           3301 ;	radio/tdm.c:749: radio_set_channel(fhop_receive_channel());
   5341 12 0C 17      [24] 3302 	lcall	_fhop_receive_channel
   5344 12 35 77      [24] 3303 	lcall	_radio_set_channel
                           3304 ;	radio/tdm.c:752: radio_receiver_on();
   5347 12 34 42      [24] 3305 	lcall	_radio_receiver_on
                           3306 ;	radio/tdm.c:754: if (len != 0 && trailer.window != 0) {
   534A 78 E9         [12] 3307 	mov	r0,#_tdm_serial_loop_len_2_208
   534C E2            [24] 3308 	movx	a,@r0
   534D 70 03         [24] 3309 	jnz	00398$
   534F 02 4D 54      [24] 3310 	ljmp	00192$
   5352                    3311 00398$:
   5352 78 D0         [12] 3312 	mov	r0,#_trailer
   5354 E2            [24] 3313 	movx	a,@r0
   5355 FE            [12] 3314 	mov	r6,a
   5356 08            [12] 3315 	inc	r0
   5357 E2            [24] 3316 	movx	a,@r0
   5358 54 1F         [12] 3317 	anl	a,#0x1F
   535A FF            [12] 3318 	mov	r7,a
   535B 4E            [12] 3319 	orl	a,r6
   535C 70 03         [24] 3320 	jnz	00399$
   535E 02 4D 54      [24] 3321 	ljmp	00192$
   5361                    3322 00399$:
                           3323 ;	radio/tdm.c:755: LED_ACTIVITY = LED_OFF;
   5361 C2 96         [12] 3324 	clr	_LED_RED
   5363 02 4D 54      [24] 3325 	ljmp	00192$
                           3326 ;------------------------------------------------------------
                           3327 ;Allocation info for local variables in function 'tdm_init'
                           3328 ;------------------------------------------------------------
                           3329 ;sloc0                     Allocated with name '_tdm_init_sloc0_1_0'
                           3330 ;------------------------------------------------------------
                           3331 ;	radio/tdm.c:873: tdm_init(void)
                           3332 ;	-----------------------------------------
                           3333 ;	 function tdm_init
                           3334 ;	-----------------------------------------
   5366                    3335 _tdm_init:
                           3336 ;	radio/tdm.c:876: __pdata uint8_t air_rate = radio_air_rate();
   5366 12 30 A4      [24] 3337 	lcall	_radio_air_rate
   5369 AF 82         [24] 3338 	mov	r7,dpl
                           3339 ;	radio/tdm.c:885: ticks_per_byte = (8+(8000000UL/(air_rate*1000UL)))/16;
   536B 90 05 D7      [24] 3340 	mov	dptr,#__mullong_PARM_2
   536E EF            [12] 3341 	mov	a,r7
   536F F0            [24] 3342 	movx	@dptr,a
   5370 E4            [12] 3343 	clr	a
   5371 A3            [24] 3344 	inc	dptr
   5372 F0            [24] 3345 	movx	@dptr,a
   5373 E4            [12] 3346 	clr	a
   5374 A3            [24] 3347 	inc	dptr
   5375 F0            [24] 3348 	movx	@dptr,a
   5376 E4            [12] 3349 	clr	a
   5377 A3            [24] 3350 	inc	dptr
   5378 F0            [24] 3351 	movx	@dptr,a
   5379 90 03 E8      [24] 3352 	mov	dptr,#0x03E8
   537C E4            [12] 3353 	clr	a
   537D F5 F0         [12] 3354 	mov	b,a
   537F 12 5F 98      [24] 3355 	lcall	__mullong
   5382 AC 82         [24] 3356 	mov	r4,dpl
   5384 AD 83         [24] 3357 	mov	r5,dph
   5386 AE F0         [24] 3358 	mov	r6,b
   5388 FF            [12] 3359 	mov	r7,a
   5389 90 05 B2      [24] 3360 	mov	dptr,#__divulong_PARM_2
   538C EC            [12] 3361 	mov	a,r4
   538D F0            [24] 3362 	movx	@dptr,a
   538E ED            [12] 3363 	mov	a,r5
   538F A3            [24] 3364 	inc	dptr
   5390 F0            [24] 3365 	movx	@dptr,a
   5391 EE            [12] 3366 	mov	a,r6
   5392 A3            [24] 3367 	inc	dptr
   5393 F0            [24] 3368 	movx	@dptr,a
   5394 EF            [12] 3369 	mov	a,r7
   5395 A3            [24] 3370 	inc	dptr
   5396 F0            [24] 3371 	movx	@dptr,a
   5397 90 12 00      [24] 3372 	mov	dptr,#0x1200
   539A 75 F0 7A      [24] 3373 	mov	b,#0x7A
   539D E4            [12] 3374 	clr	a
   539E 12 5C 3A      [24] 3375 	lcall	__divulong
   53A1 AC 82         [24] 3376 	mov	r4,dpl
   53A3 AD 83         [24] 3377 	mov	r5,dph
   53A5 AE F0         [24] 3378 	mov	r6,b
   53A7 FF            [12] 3379 	mov	r7,a
   53A8 74 08         [12] 3380 	mov	a,#0x08
   53AA 2C            [12] 3381 	add	a,r4
   53AB FC            [12] 3382 	mov	r4,a
   53AC E4            [12] 3383 	clr	a
   53AD 3D            [12] 3384 	addc	a,r5
   53AE FD            [12] 3385 	mov	r5,a
   53AF E4            [12] 3386 	clr	a
   53B0 3E            [12] 3387 	addc	a,r6
   53B1 FE            [12] 3388 	mov	r6,a
   53B2 E4            [12] 3389 	clr	a
   53B3 3F            [12] 3390 	addc	a,r7
   53B4 FF            [12] 3391 	mov	r7,a
   53B5 ED            [12] 3392 	mov	a,r5
   53B6 C4            [12] 3393 	swap	a
   53B7 CC            [12] 3394 	xch	a,r4
   53B8 C4            [12] 3395 	swap	a
   53B9 54 0F         [12] 3396 	anl	a,#0x0F
   53BB 6C            [12] 3397 	xrl	a,r4
   53BC CC            [12] 3398 	xch	a,r4
   53BD 54 0F         [12] 3399 	anl	a,#0x0F
   53BF CC            [12] 3400 	xch	a,r4
   53C0 6C            [12] 3401 	xrl	a,r4
   53C1 CC            [12] 3402 	xch	a,r4
   53C2 FD            [12] 3403 	mov	r5,a
   53C3 EE            [12] 3404 	mov	a,r6
   53C4 C4            [12] 3405 	swap	a
   53C5 54 F0         [12] 3406 	anl	a,#0xF0
   53C7 4D            [12] 3407 	orl	a,r5
   53C8 FD            [12] 3408 	mov	r5,a
   53C9 EF            [12] 3409 	mov	a,r7
   53CA C4            [12] 3410 	swap	a
   53CB CE            [12] 3411 	xch	a,r6
   53CC C4            [12] 3412 	swap	a
   53CD 54 0F         [12] 3413 	anl	a,#0x0F
   53CF 6E            [12] 3414 	xrl	a,r6
   53D0 CE            [12] 3415 	xch	a,r6
   53D1 54 0F         [12] 3416 	anl	a,#0x0F
   53D3 CE            [12] 3417 	xch	a,r6
   53D4 6E            [12] 3418 	xrl	a,r6
   53D5 CE            [12] 3419 	xch	a,r6
   53D6 78 C0         [12] 3420 	mov	r0,#_ticks_per_byte
   53D8 EC            [12] 3421 	mov	a,r4
   53D9 F2            [24] 3422 	movx	@r0,a
   53DA 08            [12] 3423 	inc	r0
   53DB ED            [12] 3424 	mov	a,r5
   53DC F2            [24] 3425 	movx	@r0,a
                           3426 ;	radio/tdm.c:892: packet_latency = (8+(10/2)) * ticks_per_byte + 13;
   53DD 90 05 CB      [24] 3427 	mov	dptr,#__mulint_PARM_2
   53E0 EC            [12] 3428 	mov	a,r4
   53E1 F0            [24] 3429 	movx	@dptr,a
   53E2 ED            [12] 3430 	mov	a,r5
   53E3 A3            [24] 3431 	inc	dptr
   53E4 F0            [24] 3432 	movx	@dptr,a
   53E5 90 00 0D      [24] 3433 	mov	dptr,#0x000D
   53E8 C0 05         [24] 3434 	push	ar5
   53EA C0 04         [24] 3435 	push	ar4
   53EC 12 5E 7B      [24] 3436 	lcall	__mulint
   53EF E5 82         [12] 3437 	mov	a,dpl
   53F1 85 83 F0      [24] 3438 	mov	b,dph
   53F4 D0 04         [24] 3439 	pop	ar4
   53F6 D0 05         [24] 3440 	pop	ar5
   53F8 24 0D         [12] 3441 	add	a,#0x0D
   53FA FE            [12] 3442 	mov	r6,a
   53FB E4            [12] 3443 	clr	a
   53FC 35 F0         [12] 3444 	addc	a,b
   53FE FF            [12] 3445 	mov	r7,a
   53FF 78 BE         [12] 3446 	mov	r0,#_packet_latency
   5401 EE            [12] 3447 	mov	a,r6
   5402 F2            [24] 3448 	movx	@r0,a
   5403 08            [12] 3449 	inc	r0
   5404 EF            [12] 3450 	mov	a,r7
   5405 F2            [24] 3451 	movx	@r0,a
                           3452 ;	radio/tdm.c:894: if (feature_golay) {
   5406 30 04 2E      [24] 3453 	jnb	_feature_golay,00102$
                           3454 ;	radio/tdm.c:895: max_data_packet_length = (MAX_PACKET_LENGTH/2) - (6+sizeof(trailer));
   5409 78 BB         [12] 3455 	mov	r0,#_max_data_packet_length
   540B 74 76         [12] 3456 	mov	a,#0x76
   540D F2            [24] 3457 	movx	@r0,a
                           3458 ;	radio/tdm.c:898: ticks_per_byte *= 2;
   540E ED            [12] 3459 	mov	a,r5
   540F CC            [12] 3460 	xch	a,r4
   5410 25 E0         [12] 3461 	add	a,acc
   5412 CC            [12] 3462 	xch	a,r4
   5413 33            [12] 3463 	rlc	a
   5414 FD            [12] 3464 	mov	r5,a
   5415 78 C0         [12] 3465 	mov	r0,#_ticks_per_byte
   5417 EC            [12] 3466 	mov	a,r4
   5418 F2            [24] 3467 	movx	@r0,a
   5419 08            [12] 3468 	inc	r0
   541A ED            [12] 3469 	mov	a,r5
   541B F2            [24] 3470 	movx	@r0,a
                           3471 ;	radio/tdm.c:901: packet_latency += 4*ticks_per_byte;
   541C ED            [12] 3472 	mov	a,r5
   541D CC            [12] 3473 	xch	a,r4
   541E 25 E0         [12] 3474 	add	a,acc
   5420 CC            [12] 3475 	xch	a,r4
   5421 33            [12] 3476 	rlc	a
   5422 CC            [12] 3477 	xch	a,r4
   5423 25 E0         [12] 3478 	add	a,acc
   5425 CC            [12] 3479 	xch	a,r4
   5426 33            [12] 3480 	rlc	a
   5427 FD            [12] 3481 	mov	r5,a
   5428 EC            [12] 3482 	mov	a,r4
   5429 2E            [12] 3483 	add	a,r6
   542A FE            [12] 3484 	mov	r6,a
   542B ED            [12] 3485 	mov	a,r5
   542C 3F            [12] 3486 	addc	a,r7
   542D FF            [12] 3487 	mov	r7,a
   542E 78 BE         [12] 3488 	mov	r0,#_packet_latency
   5430 EE            [12] 3489 	mov	a,r6
   5431 F2            [24] 3490 	movx	@r0,a
   5432 08            [12] 3491 	inc	r0
   5433 EF            [12] 3492 	mov	a,r7
   5434 F2            [24] 3493 	movx	@r0,a
   5435 80 05         [24] 3494 	sjmp	00103$
   5437                    3495 00102$:
                           3496 ;	radio/tdm.c:903: max_data_packet_length = MAX_PACKET_LENGTH - sizeof(trailer);
   5437 78 BB         [12] 3497 	mov	r0,#_max_data_packet_length
   5439 74 FA         [12] 3498 	mov	a,#0xFA
   543B F2            [24] 3499 	movx	@r0,a
   543C                    3500 00103$:
                           3501 ;	radio/tdm.c:907: silence_period = 2*packet_latency;
   543C 78 BE         [12] 3502 	mov	r0,#_packet_latency
   543E 79 BC         [12] 3503 	mov	r1,#_silence_period
   5440 E2            [24] 3504 	movx	a,@r0
   5441 F3            [24] 3505 	movx	@r1,a
   5442 08            [12] 3506 	inc	r0
   5443 E2            [24] 3507 	movx	a,@r0
   5444 F5 F0         [12] 3508 	mov	b,a
   5446 E3            [24] 3509 	movx	a,@r1
   5447 25 E0         [12] 3510 	add	a,acc
   5449 C5 F0         [12] 3511 	xch	a,b
   544B 33            [12] 3512 	rlc	a
   544C C5 F0         [12] 3513 	xch	a,b
   544E F3            [24] 3514 	movx	@r1,a
   544F 09            [12] 3515 	inc	r1
   5450 E5 F0         [12] 3516 	mov	a,b
   5452 F3            [24] 3517 	movx	@r1,a
                           3518 ;	radio/tdm.c:910: window_width = 3*(packet_latency+(max_data_packet_length*(uint32_t)ticks_per_byte));
   5453 78 C0         [12] 3519 	mov	r0,#_ticks_per_byte
   5455 90 05 D7      [24] 3520 	mov	dptr,#__mullong_PARM_2
   5458 E2            [24] 3521 	movx	a,@r0
   5459 F0            [24] 3522 	movx	@dptr,a
   545A 08            [12] 3523 	inc	r0
   545B E2            [24] 3524 	movx	a,@r0
   545C A3            [24] 3525 	inc	dptr
   545D F0            [24] 3526 	movx	@dptr,a
   545E E4            [12] 3527 	clr	a
   545F A3            [24] 3528 	inc	dptr
   5460 F0            [24] 3529 	movx	@dptr,a
   5461 E4            [12] 3530 	clr	a
   5462 A3            [24] 3531 	inc	dptr
   5463 F0            [24] 3532 	movx	@dptr,a
   5464 78 BB         [12] 3533 	mov	r0,#_max_data_packet_length
   5466 E2            [24] 3534 	movx	a,@r0
   5467 FC            [12] 3535 	mov	r4,a
   5468 7D 00         [12] 3536 	mov	r5,#0x00
   546A 7E 00         [12] 3537 	mov	r6,#0x00
   546C 7F 00         [12] 3538 	mov	r7,#0x00
   546E 8C 82         [24] 3539 	mov	dpl,r4
   5470 8D 83         [24] 3540 	mov	dph,r5
   5472 8E F0         [24] 3541 	mov	b,r6
   5474 EF            [12] 3542 	mov	a,r7
   5475 12 5F 98      [24] 3543 	lcall	__mullong
   5478 85 82 6C      [24] 3544 	mov	_tdm_init_sloc0_1_0,dpl
   547B 85 83 6D      [24] 3545 	mov	(_tdm_init_sloc0_1_0 + 1),dph
   547E 85 F0 6E      [24] 3546 	mov	(_tdm_init_sloc0_1_0 + 2),b
   5481 F5 6F         [12] 3547 	mov	(_tdm_init_sloc0_1_0 + 3),a
   5483 78 BE         [12] 3548 	mov	r0,#_packet_latency
   5485 E2            [24] 3549 	movx	a,@r0
   5486 FA            [12] 3550 	mov	r2,a
   5487 08            [12] 3551 	inc	r0
   5488 E2            [24] 3552 	movx	a,@r0
   5489 FB            [12] 3553 	mov	r3,a
   548A 7E 00         [12] 3554 	mov	r6,#0x00
   548C 7F 00         [12] 3555 	mov	r7,#0x00
   548E 90 05 D7      [24] 3556 	mov	dptr,#__mullong_PARM_2
   5491 E5 6C         [12] 3557 	mov	a,_tdm_init_sloc0_1_0
   5493 2A            [12] 3558 	add	a,r2
   5494 F0            [24] 3559 	movx	@dptr,a
   5495 E5 6D         [12] 3560 	mov	a,(_tdm_init_sloc0_1_0 + 1)
   5497 3B            [12] 3561 	addc	a,r3
   5498 A3            [24] 3562 	inc	dptr
   5499 F0            [24] 3563 	movx	@dptr,a
   549A E5 6E         [12] 3564 	mov	a,(_tdm_init_sloc0_1_0 + 2)
   549C 3E            [12] 3565 	addc	a,r6
   549D A3            [24] 3566 	inc	dptr
   549E F0            [24] 3567 	movx	@dptr,a
   549F E5 6F         [12] 3568 	mov	a,(_tdm_init_sloc0_1_0 + 3)
   54A1 3F            [12] 3569 	addc	a,r7
   54A2 A3            [24] 3570 	inc	dptr
   54A3 F0            [24] 3571 	movx	@dptr,a
   54A4 90 00 03      [24] 3572 	mov	dptr,#(0x03&0x00ff)
   54A7 E4            [12] 3573 	clr	a
   54A8 F5 F0         [12] 3574 	mov	b,a
   54AA 12 5F 98      [24] 3575 	lcall	__mullong
   54AD AC 82         [24] 3576 	mov	r4,dpl
   54AF AD 83         [24] 3577 	mov	r5,dph
   54B1 AE F0         [24] 3578 	mov	r6,b
   54B3 FF            [12] 3579 	mov	r7,a
                           3580 ;	radio/tdm.c:913: if (lbt_rssi != 0) {
   54B4 78 C8         [12] 3581 	mov	r0,#_lbt_rssi
   54B6 E2            [24] 3582 	movx	a,@r0
   54B7 60 35         [24] 3583 	jz	00105$
                           3584 ;	radio/tdm.c:915: lbt_min_time = LBT_MIN_TIME_USEC/16;
   54B9 78 CB         [12] 3585 	mov	r0,#_lbt_min_time
   54BB 74 38         [12] 3586 	mov	a,#0x38
   54BD F2            [24] 3587 	movx	@r0,a
   54BE 08            [12] 3588 	inc	r0
   54BF 74 01         [12] 3589 	mov	a,#0x01
   54C1 F2            [24] 3590 	movx	@r0,a
                           3591 ;	radio/tdm.c:916: window_width = constrain(window_width, 3*lbt_min_time, window_width);
   54C2 78 6F         [12] 3592 	mov	r0,#_constrain_PARM_2
   54C4 74 A8         [12] 3593 	mov	a,#0xA8
   54C6 F2            [24] 3594 	movx	@r0,a
   54C7 08            [12] 3595 	inc	r0
   54C8 74 03         [12] 3596 	mov	a,#0x03
   54CA F2            [24] 3597 	movx	@r0,a
   54CB 08            [12] 3598 	inc	r0
   54CC E4            [12] 3599 	clr	a
   54CD F2            [24] 3600 	movx	@r0,a
   54CE 08            [12] 3601 	inc	r0
   54CF F2            [24] 3602 	movx	@r0,a
   54D0 78 73         [12] 3603 	mov	r0,#_constrain_PARM_3
   54D2 EC            [12] 3604 	mov	a,r4
   54D3 F2            [24] 3605 	movx	@r0,a
   54D4 08            [12] 3606 	inc	r0
   54D5 ED            [12] 3607 	mov	a,r5
   54D6 F2            [24] 3608 	movx	@r0,a
   54D7 08            [12] 3609 	inc	r0
   54D8 EE            [12] 3610 	mov	a,r6
   54D9 F2            [24] 3611 	movx	@r0,a
   54DA 08            [12] 3612 	inc	r0
   54DB EF            [12] 3613 	mov	a,r7
   54DC F2            [24] 3614 	movx	@r0,a
   54DD 8C 82         [24] 3615 	mov	dpl,r4
   54DF 8D 83         [24] 3616 	mov	dph,r5
   54E1 8E F0         [24] 3617 	mov	b,r6
   54E3 EF            [12] 3618 	mov	a,r7
   54E4 12 2A 74      [24] 3619 	lcall	_constrain
   54E7 AC 82         [24] 3620 	mov	r4,dpl
   54E9 AD 83         [24] 3621 	mov	r5,dph
   54EB AE F0         [24] 3622 	mov	r6,b
   54ED FF            [12] 3623 	mov	r7,a
   54EE                    3624 00105$:
                           3625 ;	radio/tdm.c:921: if (window_width >= REGULATORY_MAX_WINDOW) {
   54EE C3            [12] 3626 	clr	c
   54EF EC            [12] 3627 	mov	a,r4
   54F0 94 A8         [12] 3628 	subb	a,#0xA8
   54F2 ED            [12] 3629 	mov	a,r5
   54F3 94 61         [12] 3630 	subb	a,#0x61
   54F5 EE            [12] 3631 	mov	a,r6
   54F6 94 00         [12] 3632 	subb	a,#0x00
   54F8 EF            [12] 3633 	mov	a,r7
   54F9 94 00         [12] 3634 	subb	a,#0x00
   54FB 40 08         [24] 3635 	jc	00108$
                           3636 ;	radio/tdm.c:922: window_width = REGULATORY_MAX_WINDOW;
   54FD 7C A8         [12] 3637 	mov	r4,#0xA8
   54FF 7D 61         [12] 3638 	mov	r5,#0x61
   5501 7E 00         [12] 3639 	mov	r6,#0x00
   5503 7F 00         [12] 3640 	mov	r7,#0x00
                           3641 ;	radio/tdm.c:926: while (window_width > 0x1FFF) {
   5505                    3642 00108$:
   5505 ED            [12] 3643 	mov	a,r5
   5506 54 E0         [12] 3644 	anl	a,#0xE0
   5508 70 06         [24] 3645 	jnz	00136$
   550A EE            [12] 3646 	mov	a,r6
   550B 70 03         [24] 3647 	jnz	00136$
   550D EF            [12] 3648 	mov	a,r7
   550E 60 0A         [24] 3649 	jz	00110$
   5510                    3650 00136$:
                           3651 ;	radio/tdm.c:927: window_width = 0x1FFF;
   5510 7C FF         [12] 3652 	mov	r4,#0xFF
   5512 7D 1F         [12] 3653 	mov	r5,#0x1F
   5514 7E 00         [12] 3654 	mov	r6,#0x00
   5516 7F 00         [12] 3655 	mov	r7,#0x00
   5518 80 EB         [24] 3656 	sjmp	00108$
   551A                    3657 00110$:
                           3658 ;	radio/tdm.c:930: tx_window_width = window_width;
   551A 78 B9         [12] 3659 	mov	r0,#_tx_window_width
   551C EC            [12] 3660 	mov	a,r4
   551D F2            [24] 3661 	movx	@r0,a
   551E 08            [12] 3662 	inc	r0
   551F ED            [12] 3663 	mov	a,r5
   5520 F2            [24] 3664 	movx	@r0,a
                           3665 ;	radio/tdm.c:935: packet_latency += ((settings.preamble_length-10)/2) * ticks_per_byte;
   5521 78 89         [12] 3666 	mov	r0,#(_settings + 0x000b)
   5523 E2            [24] 3667 	movx	a,@r0
   5524 7E 00         [12] 3668 	mov	r6,#0x00
   5526 24 F6         [12] 3669 	add	a,#0xF6
   5528 FF            [12] 3670 	mov	r7,a
   5529 EE            [12] 3671 	mov	a,r6
   552A 34 FF         [12] 3672 	addc	a,#0xFF
   552C FE            [12] 3673 	mov	r6,a
   552D 90 05 E8      [24] 3674 	mov	dptr,#__divsint_PARM_2
   5530 74 02         [12] 3675 	mov	a,#0x02
   5532 F0            [24] 3676 	movx	@dptr,a
   5533 E4            [12] 3677 	clr	a
   5534 A3            [24] 3678 	inc	dptr
   5535 F0            [24] 3679 	movx	@dptr,a
   5536 8F 82         [24] 3680 	mov	dpl,r7
   5538 8E 83         [24] 3681 	mov	dph,r6
   553A C0 05         [24] 3682 	push	ar5
   553C C0 04         [24] 3683 	push	ar4
   553E 12 61 87      [24] 3684 	lcall	__divsint
   5541 AE 82         [24] 3685 	mov	r6,dpl
   5543 AF 83         [24] 3686 	mov	r7,dph
   5545 78 C0         [12] 3687 	mov	r0,#_ticks_per_byte
   5547 90 05 CB      [24] 3688 	mov	dptr,#__mulint_PARM_2
   554A E2            [24] 3689 	movx	a,@r0
   554B F0            [24] 3690 	movx	@dptr,a
   554C 08            [12] 3691 	inc	r0
   554D E2            [24] 3692 	movx	a,@r0
   554E A3            [24] 3693 	inc	dptr
   554F F0            [24] 3694 	movx	@dptr,a
   5550 8E 82         [24] 3695 	mov	dpl,r6
   5552 8F 83         [24] 3696 	mov	dph,r7
   5554 12 5E 7B      [24] 3697 	lcall	__mulint
   5557 AE 82         [24] 3698 	mov	r6,dpl
   5559 AF 83         [24] 3699 	mov	r7,dph
   555B D0 04         [24] 3700 	pop	ar4
   555D D0 05         [24] 3701 	pop	ar5
   555F 78 BE         [12] 3702 	mov	r0,#_packet_latency
   5561 E2            [24] 3703 	movx	a,@r0
   5562 2E            [12] 3704 	add	a,r6
   5563 F2            [24] 3705 	movx	@r0,a
   5564 08            [12] 3706 	inc	r0
   5565 E2            [24] 3707 	movx	a,@r0
   5566 3F            [12] 3708 	addc	a,r7
   5567 F2            [24] 3709 	movx	@r0,a
                           3710 ;	radio/tdm.c:939: i = (tx_window_width - packet_latency) / ticks_per_byte;
   5568 78 BE         [12] 3711 	mov	r0,#_packet_latency
   556A D3            [12] 3712 	setb	c
   556B E2            [24] 3713 	movx	a,@r0
   556C 9C            [12] 3714 	subb	a,r4
   556D F4            [12] 3715 	cpl	a
   556E B3            [12] 3716 	cpl	c
   556F FC            [12] 3717 	mov	r4,a
   5570 B3            [12] 3718 	cpl	c
   5571 08            [12] 3719 	inc	r0
   5572 E2            [24] 3720 	movx	a,@r0
   5573 9D            [12] 3721 	subb	a,r5
   5574 F4            [12] 3722 	cpl	a
   5575 FD            [12] 3723 	mov	r5,a
   5576 78 C0         [12] 3724 	mov	r0,#_ticks_per_byte
   5578 90 05 70      [24] 3725 	mov	dptr,#__divuint_PARM_2
   557B E2            [24] 3726 	movx	a,@r0
   557C F0            [24] 3727 	movx	@dptr,a
   557D 08            [12] 3728 	inc	r0
   557E E2            [24] 3729 	movx	a,@r0
   557F A3            [24] 3730 	inc	dptr
   5580 F0            [24] 3731 	movx	@dptr,a
   5581 8C 82         [24] 3732 	mov	dpl,r4
   5583 8D 83         [24] 3733 	mov	dph,r5
   5585 12 57 5E      [24] 3734 	lcall	__divuint
   5588 AE 82         [24] 3735 	mov	r6,dpl
   558A AF 83         [24] 3736 	mov	r7,dph
                           3737 ;	radio/tdm.c:940: if (i > max_data_packet_length) {
   558C 78 BB         [12] 3738 	mov	r0,#_max_data_packet_length
   558E E2            [24] 3739 	movx	a,@r0
   558F FC            [12] 3740 	mov	r4,a
   5590 7D 00         [12] 3741 	mov	r5,#0x00
   5592 C3            [12] 3742 	clr	c
   5593 EC            [12] 3743 	mov	a,r4
   5594 9E            [12] 3744 	subb	a,r6
   5595 ED            [12] 3745 	mov	a,r5
   5596 9F            [12] 3746 	subb	a,r7
   5597 50 04         [24] 3747 	jnc	00112$
                           3748 ;	radio/tdm.c:941: i = max_data_packet_length;
   5599 8C 06         [24] 3749 	mov	ar6,r4
   559B 8D 07         [24] 3750 	mov	ar7,r5
   559D                    3751 00112$:
                           3752 ;	radio/tdm.c:943: packet_set_max_xmit(i);
   559D 8E 82         [24] 3753 	mov	dpl,r6
   559F 12 24 42      [24] 3754 	lcall	_packet_set_max_xmit
                           3755 ;	radio/tdm.c:946: TDM_SYNC_PIN = false;
   55A2 C2 A6         [12] 3756 	clr	_TDM_SYNC_PIN
   55A4 22            [24] 3757 	ret
                           3758 ;------------------------------------------------------------
                           3759 ;Allocation info for local variables in function 'tdm_report_timing'
                           3760 ;------------------------------------------------------------
                           3761 ;	radio/tdm.c:960: tdm_report_timing(void)
                           3762 ;	-----------------------------------------
                           3763 ;	 function tdm_report_timing
                           3764 ;	-----------------------------------------
   55A5                    3765 _tdm_report_timing:
                           3766 ;	radio/tdm.c:962: printf("silence_period: %u\n", (unsigned)silence_period); delay_msec(1);
   55A5 78 BC         [12] 3767 	mov	r0,#_silence_period
   55A7 E2            [24] 3768 	movx	a,@r0
   55A8 C0 E0         [24] 3769 	push	acc
   55AA 08            [12] 3770 	inc	r0
   55AB E2            [24] 3771 	movx	a,@r0
   55AC C0 E0         [24] 3772 	push	acc
   55AE 74 76         [12] 3773 	mov	a,#__str_9
   55B0 C0 E0         [24] 3774 	push	acc
   55B2 74 CD         [12] 3775 	mov	a,#(__str_9 >> 8)
   55B4 C0 E0         [24] 3776 	push	acc
   55B6 74 80         [12] 3777 	mov	a,#0x80
   55B8 C0 E0         [24] 3778 	push	acc
   55BA 12 2D B8      [24] 3779 	lcall	_printfl
   55BD E5 81         [12] 3780 	mov	a,sp
   55BF 24 FB         [12] 3781 	add	a,#0xfb
   55C1 F5 81         [12] 3782 	mov	sp,a
   55C3 90 00 01      [24] 3783 	mov	dptr,#0x0001
   55C6 12 56 93      [24] 3784 	lcall	_delay_msec
                           3785 ;	radio/tdm.c:963: printf("tx_window_width: %u\n", (unsigned)tx_window_width); delay_msec(1);
   55C9 78 B9         [12] 3786 	mov	r0,#_tx_window_width
   55CB E2            [24] 3787 	movx	a,@r0
   55CC C0 E0         [24] 3788 	push	acc
   55CE 08            [12] 3789 	inc	r0
   55CF E2            [24] 3790 	movx	a,@r0
   55D0 C0 E0         [24] 3791 	push	acc
   55D2 74 8A         [12] 3792 	mov	a,#__str_10
   55D4 C0 E0         [24] 3793 	push	acc
   55D6 74 CD         [12] 3794 	mov	a,#(__str_10 >> 8)
   55D8 C0 E0         [24] 3795 	push	acc
   55DA 74 80         [12] 3796 	mov	a,#0x80
   55DC C0 E0         [24] 3797 	push	acc
   55DE 12 2D B8      [24] 3798 	lcall	_printfl
   55E1 E5 81         [12] 3799 	mov	a,sp
   55E3 24 FB         [12] 3800 	add	a,#0xfb
   55E5 F5 81         [12] 3801 	mov	sp,a
   55E7 90 00 01      [24] 3802 	mov	dptr,#0x0001
   55EA 12 56 93      [24] 3803 	lcall	_delay_msec
                           3804 ;	radio/tdm.c:964: printf("max_data_packet_length: %u\n", (unsigned)max_data_packet_length); delay_msec(1);
   55ED 78 BB         [12] 3805 	mov	r0,#_max_data_packet_length
   55EF E2            [24] 3806 	movx	a,@r0
   55F0 FE            [12] 3807 	mov	r6,a
   55F1 7F 00         [12] 3808 	mov	r7,#0x00
   55F3 C0 06         [24] 3809 	push	ar6
   55F5 C0 07         [24] 3810 	push	ar7
   55F7 74 9F         [12] 3811 	mov	a,#__str_11
   55F9 C0 E0         [24] 3812 	push	acc
   55FB 74 CD         [12] 3813 	mov	a,#(__str_11 >> 8)
   55FD C0 E0         [24] 3814 	push	acc
   55FF 74 80         [12] 3815 	mov	a,#0x80
   5601 C0 E0         [24] 3816 	push	acc
   5603 12 2D B8      [24] 3817 	lcall	_printfl
   5606 E5 81         [12] 3818 	mov	a,sp
   5608 24 FB         [12] 3819 	add	a,#0xfb
   560A F5 81         [12] 3820 	mov	sp,a
   560C 90 00 01      [24] 3821 	mov	dptr,#0x0001
   560F 02 56 93      [24] 3822 	ljmp	_delay_msec
                           3823 	.area CSEG    (CODE)
                           3824 	.area CONST   (CODE)
   CC93                    3825 __str_0:
   CC93 4C 2F 52 20 52 53  3826 	.ascii "L/R RSSI: %u/%u  L/R noise: %u/%u pkts: %u "
        53 49 3A 20 25 75
        2F 25 75 20 20 4C
        2F 52 20 6E 6F 69
        73 65 3A 20 25 75
        2F 25 75 20 70 6B
        74 73 3A 20 25 75
        20
   CCBE 00                 3827 	.db 0x00
   CCBF                    3828 __str_1:
   CCBF 20 74 78 65 3D 25  3829 	.ascii " txe=%u rxe=%u stx=%u srx=%u ecc=%u/%u temp=%d dco=%u"
        75 20 72 78 65 3D
        25 75 20 73 74 78
        3D 25 75 20 73 72
        78 3D 25 75 20 65
        63 63 3D 25 75 2F
        25 75 20 74 65 6D
        70 3D 25 64 20 64
        63 6F 3D 25 75
   CCF4 0A                 3830 	.db 0x0A
   CCF5 00                 3831 	.db 0x00
   CCF6                    3832 __str_2:
   CCF6 54 44 4D 3A 20 25  3833 	.ascii "TDM: %u/%u len=%u "
        75 2F 25 75 20 6C
        65 6E 3D 25 75 20
   CD08 00                 3834 	.db 0x00
   CD09                    3835 __str_3:
   CD09 20 64 65 6C 74 61  3836 	.ascii " delta: %d"
        3A 20 25 64
   CD13 0A                 3837 	.db 0x0A
   CD14 00                 3838 	.db 0x00
   CD15                    3839 __str_4:
   CD15 54 44 4D 3A 20 63  3840 	.ascii "TDM: change timing %u/%u"
        68 61 6E 67 65 20
        74 69 6D 69 6E 67
        20 25 75 2F 25 75
   CD2D 0A                 3841 	.db 0x0A
   CD2E 00                 3842 	.db 0x00
   CD2F                    3843 __str_5:
   CD2F 54 44 4D 3A 20 73  3844 	.ascii "TDM: scanning"
        63 61 6E 6E 69 6E
        67
   CD3C 0A                 3845 	.db 0x0A
   CD3D 00                 3846 	.db 0x00
   CD3E                    3847 __str_6:
   CD3E 73 74 61 63 6B 20  3848 	.ascii "stack blown"
        62 6C 6F 77 6E
   CD49 0A                 3849 	.db 0x0A
   CD4A 00                 3850 	.db 0x00
   CD4B                    3851 __str_7:
   CD4B 70 64 61 74 61 20  3852 	.ascii "pdata canary changed"
        63 61 6E 61 72 79
        20 63 68 61 6E 67
        65 64
   CD5F 0A                 3853 	.db 0x0A
   CD60 00                 3854 	.db 0x00
   CD61                    3855 __str_8:
   CD61 6F 76 65 72 73 69  3856 	.ascii "oversized tdm packet"
        7A 65 64 20 74 64
        6D 20 70 61 63 6B
        65 74
   CD75 00                 3857 	.db 0x00
   CD76                    3858 __str_9:
   CD76 73 69 6C 65 6E 63  3859 	.ascii "silence_period: %u"
        65 5F 70 65 72 69
        6F 64 3A 20 25 75
   CD88 0A                 3860 	.db 0x0A
   CD89 00                 3861 	.db 0x00
   CD8A                    3862 __str_10:
   CD8A 74 78 5F 77 69 6E  3863 	.ascii "tx_window_width: %u"
        64 6F 77 5F 77 69
        64 74 68 3A 20 25
        75
   CD9D 0A                 3864 	.db 0x0A
   CD9E 00                 3865 	.db 0x00
   CD9F                    3866 __str_11:
   CD9F 6D 61 78 5F 64 61  3867 	.ascii "max_data_packet_length: %u"
        74 61 5F 70 61 63
        6B 65 74 5F 6C 65
        6E 67 74 68 3A 20
        25 75
   CDB9 0A                 3868 	.db 0x0A
   CDBA 00                 3869 	.db 0x00
                           3870 	.area XINIT   (CODE)
                           3871 	.area CABS    (ABS,CODE)
