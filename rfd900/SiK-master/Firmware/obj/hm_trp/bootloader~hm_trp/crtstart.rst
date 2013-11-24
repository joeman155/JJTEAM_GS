                              1 	;;
                              2 	;; Copyright (c) 2011 Michael Smith, All Rights Reserved
                              3 	;;
                              4 	;;
                              5 	;; Redistribution and use in source and binary forms, with or without
                              6 	;; modification, are permitted provided that the following conditions
                              7 	;; are met:
                              8 	;;
                              9 	;;  o Redistributions of source code must retain the above copyright 
                             10 	;;    notice, this list of conditions and the following disclaimer.
                             11 	;;  o Redistributions in binary form must reproduce the above copyright 
                             12 	;;    notice, this list of conditions and the following disclaimer in 
                             13 	;;    the documentation and/or other materials provided with the distribution.
                             14 	;;
                             15 	;; THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
                             16 	;; "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
                             17 	;; LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
                             18 	;; FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
                             19 	;; COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
                             20 	;; INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
                             21 	;; (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
                             22 	;; SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
                             23 	;; HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
                             24 	;; STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
                             25 	;; ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
                             26 	;; OF THE POSSIBILITY OF SUCH DAMAGE.
                             27 	;;
                             28 
                             29 	;;
                             30 	;; Modified crtstart.asm for SDCC and Si1000 bootloader
                             31 	;;
                             32 	;; Inspired by a post on the SiLabs forum by Tsuneo
                             33 	;;
                             34 	
                             35 	.module	crtstart
                             36 
                             37 	.area	HOME	(CODE)
                             38 	.area	GSINIT0	(CODE)
                             39 	.area	GSINIT	(CODE)
                             40 	.area	GSFINAL	(CODE)
                             41 	.area	CSEG	(CODE)
                             42 
                             43 	;; Stack segment in internal RAM
                             44 
                             45 	.area	SSEG	(DATA)
                             46 
   0065                      47 L__stack:
   0065                      48 	.ds	1
                             49 
                             50 	;; Reset vector and interrupt redirection table
                             51 
                             52 	.area	HOME	(CODE)
                             53 
                     0400    54 __offset = 0x400		; XXX would be nice to get this from somewhere
                             55 
   0000 02 00 9B             56 	ljmp	L__start	; reset vector
   0003 02 04 03             57 	ljmp	. + __offset	; /INT0
   0006                      58 	.ds	5
   000B 02 04 0B             59 	ljmp	. + __offset	; Timer0 overflow
   000E                      60 	.ds	5
   0013 02 04 13             61 	ljmp	. + __offset	; /INT1
   0016                      62 	.ds	5
   001B 02 04 1B             63 	ljmp	. + __offset	; Timer1 overflow
   001E                      64 	.ds	5
   0023 02 04 23             65 	ljmp	. + __offset	; UART0
   0026                      66 	.ds	5
   002B 02 04 2B             67 	ljmp	. + __offset	; Timer2 overflow
   002E                      68 	.ds	5
   0033 02 04 33             69 	ljmp	. + __offset	; SPI0
   0036                      70 	.ds	5
   003B 02 04 3B             71 	ljmp	. + __offset	; SMB0
   003E                      72 	.ds	5
   0043 02 04 43             73 	ljmp	. + __offset	; RTC alarm
   0046                      74 	.ds	5
   004B 02 04 4B             75 	ljmp	. + __offset	; ADC0 comparator
   004E                      76 	.ds	5
   0053 02 04 53             77 	ljmp	. + __offset	; ADC0 conversion
   0056                      78 	.ds	5
   005B 02 04 5B             79 	ljmp	. + __offset	; PCA
   005E                      80 	.ds	5
   0063 02 04 63             81 	ljmp	. + __offset	; Comparator0
   0066                      82 	.ds	5
   006B 02 04 6B             83 	ljmp	. + __offset	; Comparator1
   006E                      84 	.ds	5
   0073 02 04 73             85 	ljmp	. + __offset	; Timer3 overflow
   0076                      86 	.ds	5
   007B 02 04 7B             87 	ljmp	. + __offset	; VDD_MCU early warning
   007E                      88 	.ds	5
   0083 02 04 83             89 	ljmp	. + __offset	; Port Match
   0086                      90 	.ds	5
   008B 02 04 8B             91 	ljmp	. + __offset	; RTC oscillator fail
   008E                      92 	.ds	5
   0093 02 04 93             93 	ljmp	. + __offset	; SPI1
   0096                      94 	.ds	5
                             95 
                             96 	;; bootloader entry
                             97 	.globl	_bl_main
                             98 
                             99 	.area	GSINIT0	(CODE)
                            100 
   009B                     101 L__start:
   009B 75 81 64            102 	mov	sp, #L__stack - 1
   009E 12 00 A3            103 	lcall	_bl_main
   00A1 80 FE               104 	sjmp	.
