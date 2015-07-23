opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6738"

opt pagewidth 120

	opt lm

	processor	16F876A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 15 "C:\Users\Phang\Desktop\9.80\PR 15\PR15.c"
	psect config,class=CONFIG,delta=2 ;#
# 15 "C:\Users\Phang\Desktop\9.80\PR 15\PR15.c"
	dw 0x3F32 ;#
	FNCALL	_main,_send_config
	FNCALL	_main,_lcd_clr
	FNCALL	_main,_lcd_goto
	FNCALL	_main,_send_string
	FNCALL	_main,_read_ad
	FNCALL	_main,_send_num
	FNCALL	_send_num,___lwdiv
	FNCALL	_send_num,___lwmod
	FNCALL	_send_num,_send_char
	FNCALL	_send_string,_send_char
	FNCALL	_lcd_goto,_send_config
	FNCALL	_lcd_clr,_send_config
	FNCALL	_lcd_clr,_delay
	FNCALL	_send_char,_delay
	FNCALL	_send_config,_delay
	FNROOT	_main
	global	_ADCON0
psect	text214,local,class=CODE,delta=2
global __ptext214
__ptext214:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTC
_PORTC	set	7
	global	_ADGO
_ADGO	set	250
	global	_CHS0
_CHS0	set	251
	global	_CHS1
_CHS1	set	252
	global	_CHS2
_CHS2	set	253
	global	_RA2
_RA2	set	42
	global	_RA5
_RA5	set	45
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_ADCON1
_ADCON1	set	159
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	71	;'G'
	retlw	97	;'a'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	115	;'s'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	72	;'H'
	retlw	117	;'u'
	retlw	109	;'m'
	retlw	105	;'i'
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	83	;'S'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	115	;'s'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	0
psect	strings
	file	"PR 15.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_send_config
?_send_config:	; 0 bytes @ 0x0
	global	?_lcd_clr
?_lcd_clr:	; 0 bytes @ 0x0
	global	?_lcd_goto
?_lcd_goto:	; 0 bytes @ 0x0
	global	?_send_string
?_send_string:	; 0 bytes @ 0x0
	global	??_read_ad
??_read_ad:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_send_char
?_send_char:	; 0 bytes @ 0x0
	global	?_read_ad
?_read_ad:	; 1 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	global	delay@data
delay@data:	; 4 bytes @ 0x0
	ds	1
	global	read_ad@channel
read_ad@channel:	; 1 bytes @ 0x1
	ds	1
	global	read_ad@result
read_ad@result:	; 1 bytes @ 0x2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x4
	global	??___lwdiv
??___lwdiv:	; 0 bytes @ 0x4
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0x4
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x5
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	??_send_config
??_send_config:	; 0 bytes @ 0x8
	global	??_send_char
??_send_char:	; 0 bytes @ 0x8
	global	send_config@data
send_config@data:	; 1 bytes @ 0x8
	global	send_char@data
send_char@data:	; 1 bytes @ 0x8
	ds	1
	global	??_lcd_clr
??_lcd_clr:	; 0 bytes @ 0x9
	global	??_lcd_goto
??_lcd_goto:	; 0 bytes @ 0x9
	global	??_send_string
??_send_string:	; 0 bytes @ 0x9
	global	?_send_num
?_send_num:	; 0 bytes @ 0x9
	global	send_num@data
send_num@data:	; 2 bytes @ 0x9
	ds	1
	global	lcd_goto@data
lcd_goto@data:	; 1 bytes @ 0xA
	global	send_string@i
send_string@i:	; 1 bytes @ 0xA
	ds	1
	global	??_send_num
??_send_num:	; 0 bytes @ 0xB
	global	send_string@s
send_string@s:	; 1 bytes @ 0xB
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xC
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	send_num@tenthou
send_num@tenthou:	; 1 bytes @ 0x0
	ds	1
	global	send_num@thou
send_num@thou:	; 1 bytes @ 0x1
	ds	1
	global	send_num@hund
send_num@hund:	; 1 bytes @ 0x2
	ds	1
	global	send_num@tenth
send_num@tenth:	; 1 bytes @ 0x3
	ds	1
	global	main@temp
main@temp:	; 1 bytes @ 0x4
	ds	1
	global	main@mode
main@mode:	; 1 bytes @ 0x5
	ds	1
;;Data sizes: Strings 34, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80      6       6
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;
;; ?___lwdiv	unsigned int  size(1) Largest target is 0
;;
;; send_string@s	PTR const unsigned char  size(1) Largest target is 17
;;		 -> STR_2(CODE[17]), STR_1(CODE[17]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_send_string
;;   _main->_send_num
;;   _send_num->_send_char
;;   _send_string->_send_char
;;   _lcd_goto->_send_config
;;   _lcd_clr->_send_config
;;   _send_char->_delay
;;   _send_config->_delay
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_send_num
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 4     4      0    1290
;;                                             12 COMMON     2     2      0
;;                                              4 BANK0      2     2      0
;;                        _send_config
;;                            _lcd_clr
;;                           _lcd_goto
;;                        _send_string
;;                            _read_ad
;;                           _send_num
;; ---------------------------------------------------------------------------------
;; (1) _send_num                                             7     5      2     682
;;                                              9 COMMON     3     1      2
;;                                              0 BANK0      4     4      0
;;                            ___lwdiv
;;                            ___lwmod
;;                          _send_char
;; ---------------------------------------------------------------------------------
;; (1) _send_string                                          3     3      0     135
;;                                              9 COMMON     3     3      0
;;                          _send_char
;; ---------------------------------------------------------------------------------
;; (1) _lcd_goto                                             2     2      0     156
;;                                              9 COMMON     2     2      0
;;                        _send_config
;; ---------------------------------------------------------------------------------
;; (1) _lcd_clr                                              0     0      0     112
;;                        _send_config
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _send_char                                            1     1      0      67
;;                                              8 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _send_config                                          1     1      0      67
;;                                              8 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              6     2      4     159
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) ___lwdiv                                              8     4      4     162
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (3) _delay                                                8     4      4      45
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; (1) _read_ad                                              3     3      0      45
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _send_config
;;     _delay
;;   _lcd_clr
;;     _send_config
;;       _delay
;;     _delay
;;   _lcd_goto
;;     _send_config
;;       _delay
;;   _send_string
;;     _send_char
;;       _delay
;;   _read_ad
;;   _send_num
;;     ___lwdiv
;;     ___lwmod
;;     _send_char
;;       _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      6       6       5        7.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 50 in file "C:\Users\Phang\Desktop\9.80\PR 15\PR15.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  mode            1    5[BANK0 ] unsigned char 
;;  temp            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       2       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_send_config
;;		_lcd_clr
;;		_lcd_goto
;;		_send_string
;;		_read_ad
;;		_send_num
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Phang\Desktop\9.80\PR 15\PR15.c"
	line	50
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	56
	
l2079:	
;PR15.c: 52: unsigned char temp;
;PR15.c: 53: unsigned char mode;
;PR15.c: 56: TRISB = 0b11110000;
	movlw	(0F0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	57
;PR15.c: 57: TRISA = 0b11011011;
	movlw	(0DBh)
	movwf	(133)^080h	;volatile
	line	58
	
l2081:	
;PR15.c: 58: TRISC = 0b00000000;
	clrf	(135)^080h	;volatile
	line	61
	
l2083:	
;PR15.c: 61: send_config(0b00000001);
	movlw	(01h)
	fcall	_send_config
	line	62
	
l2085:	
;PR15.c: 62: send_config(0b00000010);
	movlw	(02h)
	fcall	_send_config
	line	63
	
l2087:	
;PR15.c: 63: send_config(0b00000110);
	movlw	(06h)
	fcall	_send_config
	line	64
	
l2089:	
;PR15.c: 64: send_config(0b00001100);
	movlw	(0Ch)
	fcall	_send_config
	line	65
	
l2091:	
;PR15.c: 65: send_config(0b00111000);
	movlw	(038h)
	fcall	_send_config
	line	68
	
l2093:	
;PR15.c: 68: ADCON0=0b10000001;
	movlw	(081h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	69
	
l2095:	
;PR15.c: 69: ADCON1=0b01000100;
	movlw	(044h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	72
	
l2097:	
;PR15.c: 72: RB0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	line	73
	
l2099:	
;PR15.c: 73: lcd_clr();
	fcall	_lcd_clr
	line	74
	
l2101:	
;PR15.c: 74: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	76
	
l2103:	
;PR15.c: 76: mode=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@mode)
	bsf	status,0
	rlf	(main@mode),f
	line	77
	
l2105:	
;PR15.c: 77: RA2=1;
	bsf	(42/8),(42)&7
	line	78
	
l2107:	
;PR15.c: 78: RA5=0;
	bcf	(45/8),(45)&7
	goto	l2109
	line	80
;PR15.c: 80: while(1)
	
l507:	
	line	82
	
l2109:	
;PR15.c: 81: {
;PR15.c: 82: if(RB5==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(53/8),(53)&7
	goto	u2451
	goto	u2450
u2451:
	goto	l508
u2450:
	line	84
	
l2111:	
;PR15.c: 83: {
;PR15.c: 84: mode=1;
	clrf	(main@mode)
	bsf	status,0
	rlf	(main@mode),f
	line	85
	
l2113:	
;PR15.c: 85: RA5=0;
	bcf	(45/8),(45)&7
	line	86
	
l2115:	
;PR15.c: 86: RA2=1;
	bsf	(42/8),(42)&7
	line	87
;PR15.c: 87: }
	goto	l509
	line	88
	
l508:	
;PR15.c: 88: else if(RB4==0)
	btfsc	(52/8),(52)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l509
u2460:
	line	90
	
l2117:	
;PR15.c: 89: {
;PR15.c: 90: mode=2;
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@mode)
	line	91
	
l2119:	
;PR15.c: 91: RA2=0;
	bcf	(42/8),(42)&7
	line	92
	
l2121:	
;PR15.c: 92: RA5=1;
	bsf	(45/8),(45)&7
	goto	l509
	line	93
	
l510:	
	line	95
	
l509:	
;PR15.c: 93: }
;PR15.c: 95: if(mode==1)
	movf	(main@mode),w
	xorlw	01h
	skipz
	goto	u2471
	goto	u2470
u2471:
	goto	l2129
u2470:
	line	97
	
l2123:	
;PR15.c: 96: {
;PR15.c: 97: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	98
	
l2125:	
;PR15.c: 98: send_string("Gas Sensor      ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_send_string
	line	99
	
l2127:	
;PR15.c: 99: temp=read_ad(0);
	movlw	(0)
	fcall	_read_ad
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@temp)
	line	100
;PR15.c: 100: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	101
;PR15.c: 101: send_num(temp);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@temp),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?_send_num)
	movf	1+(??_main+0)+0,w
	movwf	(?_send_num+1)
	fcall	_send_num
	line	102
;PR15.c: 102: }
	goto	l2109
	line	103
	
l511:	
	
l2129:	
;PR15.c: 103: else if(mode==2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@mode),w
	xorlw	02h
	skipz
	goto	u2481
	goto	u2480
u2481:
	goto	l2109
u2480:
	line	105
	
l2131:	
;PR15.c: 104: {
;PR15.c: 105: lcd_goto(0);
	movlw	(0)
	fcall	_lcd_goto
	line	106
	
l2133:	
;PR15.c: 106: send_string("Humidity Sensor ");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_send_string
	line	107
	
l2135:	
;PR15.c: 107: temp=read_ad(1);
	movlw	(01h)
	fcall	_read_ad
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@temp)
	line	108
;PR15.c: 108: lcd_goto(20);
	movlw	(014h)
	fcall	_lcd_goto
	line	109
;PR15.c: 109: send_num(temp);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@temp),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?_send_num)
	movf	1+(??_main+0)+0,w
	movwf	(?_send_num+1)
	fcall	_send_num
	goto	l2109
	line	110
	
l513:	
	goto	l2109
	line	111
	
l512:	
	goto	l2109
	
l514:	
	line	80
	goto	l2109
	
l515:	
	line	112
	
l516:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_send_num
psect	text215,local,class=CODE,delta=2
global __ptext215
__ptext215:

;; *************** function _send_num *****************
;; Defined at:
;;		line 172 in file "C:\Users\Phang\Desktop\9.80\PR 15\PR15.c"
;; Parameters:    Size  Location     Type
;;  data            2    9[COMMON] unsigned short 
;; Auto vars:     Size  Location     Type
;;  tenth           1    3[BANK0 ] unsigned char 
;;  hund            1    2[BANK0 ] unsigned char 
;;  thou            1    1[BANK0 ] unsigned char 
;;  tenthou         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       4       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_send_char
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text215
	file	"C:\Users\Phang\Desktop\9.80\PR 15\PR15.c"
	line	172
	global	__size_of_send_num
	__size_of_send_num	equ	__end_of_send_num-_send_num
	
_send_num:	
	opt	stack 5
; Regs used in _send_num: [wreg+status,2+status,0+pclath+cstack]
	line	175
	
l2077:	
;PR15.c: 173: unsigned char tenthou,thou,hund,tenth;
;PR15.c: 175: tenthou=data/10000;
	movlw	low(02710h)
	movwf	(?___lwdiv)
	movlw	high(02710h)
	movwf	((?___lwdiv))+1
	movf	(send_num@data+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(send_num@data),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movwf	(??_send_num+0)+0
	movf	(??_send_num+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_num@tenthou)
	line	176
;PR15.c: 176: data=data%10000;
	movlw	low(02710h)
	movwf	(?___lwmod)
	movlw	high(02710h)
	movwf	((?___lwmod))+1
	movf	(send_num@data+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(send_num@data),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	clrf	(send_num@data+1)
	addwf	(send_num@data+1)
	movf	(0+(?___lwmod)),w
	clrf	(send_num@data)
	addwf	(send_num@data)

	line	177
;PR15.c: 177: thou=data/1000;
	movlw	low(03E8h)
	movwf	(?___lwdiv)
	movlw	high(03E8h)
	movwf	((?___lwdiv))+1
	movf	(send_num@data+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(send_num@data),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movwf	(??_send_num+0)+0
	movf	(??_send_num+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_num@thou)
	line	178
;PR15.c: 178: data=data%1000;
	movlw	low(03E8h)
	movwf	(?___lwmod)
	movlw	high(03E8h)
	movwf	((?___lwmod))+1
	movf	(send_num@data+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(send_num@data),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	clrf	(send_num@data+1)
	addwf	(send_num@data+1)
	movf	(0+(?___lwmod)),w
	clrf	(send_num@data)
	addwf	(send_num@data)

	line	179
;PR15.c: 179: hund=data/100;
	movlw	low(064h)
	movwf	(?___lwdiv)
	movlw	high(064h)
	movwf	((?___lwdiv))+1
	movf	(send_num@data+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(send_num@data),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movwf	(??_send_num+0)+0
	movf	(??_send_num+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_num@hund)
	line	180
;PR15.c: 180: data=data%100;
	movlw	low(064h)
	movwf	(?___lwmod)
	movlw	high(064h)
	movwf	((?___lwmod))+1
	movf	(send_num@data+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(send_num@data),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	clrf	(send_num@data+1)
	addwf	(send_num@data+1)
	movf	(0+(?___lwmod)),w
	clrf	(send_num@data)
	addwf	(send_num@data)

	line	181
;PR15.c: 181: tenth=data/10;
	movlw	low(0Ah)
	movwf	(?___lwdiv)
	movlw	high(0Ah)
	movwf	((?___lwdiv))+1
	movf	(send_num@data+1),w
	clrf	1+(?___lwdiv)+02h
	addwf	1+(?___lwdiv)+02h
	movf	(send_num@data),w
	clrf	0+(?___lwdiv)+02h
	addwf	0+(?___lwdiv)+02h

	fcall	___lwdiv
	movf	(0+(?___lwdiv)),w
	movwf	(??_send_num+0)+0
	movf	(??_send_num+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(send_num@tenth)
	line	182
;PR15.c: 182: data=data%10;
	movlw	low(0Ah)
	movwf	(?___lwmod)
	movlw	high(0Ah)
	movwf	((?___lwmod))+1
	movf	(send_num@data+1),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(send_num@data),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	clrf	(send_num@data+1)
	addwf	(send_num@data+1)
	movf	(0+(?___lwmod)),w
	clrf	(send_num@data)
	addwf	(send_num@data)

	line	184
;PR15.c: 184: send_char(0x30+tenthou);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(send_num@tenthou),w
	addlw	030h
	fcall	_send_char
	line	185
;PR15.c: 185: send_char(0x30+thou);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(send_num@thou),w
	addlw	030h
	fcall	_send_char
	line	186
;PR15.c: 186: send_char(0x30+hund);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(send_num@hund),w
	addlw	030h
	fcall	_send_char
	line	187
;PR15.c: 187: send_char(0x30+tenth);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(send_num@tenth),w
	addlw	030h
	fcall	_send_char
	line	188
;PR15.c: 188: send_char(0x30+data);
	movf	(send_num@data),w
	addlw	030h
	fcall	_send_char
	line	189
	
l546:	
	return
	opt stack 0
GLOBAL	__end_of_send_num
	__end_of_send_num:
;; =============== function _send_num ends ============

	signat	_send_num,4216
	global	_send_string
psect	text216,local,class=CODE,delta=2
global __ptext216
__ptext216:

;; *************** function _send_string *****************
;; Defined at:
;;		line 164 in file "C:\Users\Phang\Desktop\9.80\PR 15\PR15.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_2(17), STR_1(17), 
;; Auto vars:     Size  Location     Type
;;  s               1   11[COMMON] PTR const unsigned char 
;;		 -> STR_2(17), STR_1(17), 
;;  i               1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_char
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text216
	file	"C:\Users\Phang\Desktop\9.80\PR 15\PR15.c"
	line	164
	global	__size_of_send_string
	__size_of_send_string	equ	__end_of_send_string-_send_string
	
_send_string:	
	opt	stack 5
; Regs used in _send_string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;send_string@s stored from wreg
	movwf	(send_string@s)
	line	165
	
l2067:	
;PR15.c: 165: unsigned char i=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(send_string@i)
	line	166
;PR15.c: 166: while (s && *s)send_char (*s++);
	goto	l2073
	
l539:	
	
l2069:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	fcall	_send_char
	
l2071:	
	movlw	(01h)
	movwf	(??_send_string+0)+0
	movf	(??_send_string+0)+0,w
	addwf	(send_string@s),f
	goto	l2073
	
l538:	
	
l2073:	
	movf	(send_string@s),w
	skipz
	goto	u2430
	goto	l543
u2430:
	
l2075:	
	movf	(send_string@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2441
	goto	u2440
u2441:
	goto	l2069
u2440:
	goto	l543
	
l541:	
	goto	l543
	
l542:	
	line	168
	
l543:	
	return
	opt stack 0
GLOBAL	__end_of_send_string
	__end_of_send_string:
;; =============== function _send_string ends ============

	signat	_send_string,4216
	global	_lcd_goto
psect	text217,local,class=CODE,delta=2
global __ptext217
__ptext217:

;; *************** function _lcd_goto *****************
;; Defined at:
;;		line 145 in file "C:\Users\Phang\Desktop\9.80\PR 15\PR15.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_config
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text217
	file	"C:\Users\Phang\Desktop\9.80\PR 15\PR15.c"
	line	145
	global	__size_of_lcd_goto
	__size_of_lcd_goto	equ	__end_of_lcd_goto-_lcd_goto
	
_lcd_goto:	
	opt	stack 5
; Regs used in _lcd_goto: [wreg+status,2+status,0+pclath+cstack]
;lcd_goto@data stored from wreg
	movwf	(lcd_goto@data)
	line	146
	
l2059:	
;PR15.c: 146: if(data<16)
	movlw	(010h)
	subwf	(lcd_goto@data),w
	skipnc
	goto	u2421
	goto	u2420
u2421:
	goto	l2063
u2420:
	line	148
	
l2061:	
;PR15.c: 147: {
;PR15.c: 148: send_config(0x80+data);
	movf	(lcd_goto@data),w
	addlw	080h
	fcall	_send_config
	line	149
;PR15.c: 149: }
	goto	l532
	line	150
	
l530:	
	line	152
	
l2063:	
;PR15.c: 150: else
;PR15.c: 151: {
;PR15.c: 152: data=data-20;
	movf	(lcd_goto@data),w
	addlw	0ECh
	movwf	(??_lcd_goto+0)+0
	movf	(??_lcd_goto+0)+0,w
	movwf	(lcd_goto@data)
	line	153
	
l2065:	
;PR15.c: 153: send_config(0xc0+data);
	movf	(lcd_goto@data),w
	addlw	0C0h
	fcall	_send_config
	goto	l532
	line	154
	
l531:	
	line	155
	
l532:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_goto
	__end_of_lcd_goto:
;; =============== function _lcd_goto ends ============

	signat	_lcd_goto,4216
	global	_lcd_clr
psect	text218,local,class=CODE,delta=2
global __ptext218
__ptext218:

;; *************** function _lcd_clr *****************
;; Defined at:
;;		line 158 in file "C:\Users\Phang\Desktop\9.80\PR 15\PR15.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_send_config
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text218
	file	"C:\Users\Phang\Desktop\9.80\PR 15\PR15.c"
	line	158
	global	__size_of_lcd_clr
	__size_of_lcd_clr	equ	__end_of_lcd_clr-_lcd_clr
	
_lcd_clr:	
	opt	stack 5
; Regs used in _lcd_clr: [wreg+status,2+status,0+pclath+cstack]
	line	159
	
l2057:	
;PR15.c: 159: send_config(0x01);
	movlw	(01h)
	fcall	_send_config
	line	160
;PR15.c: 160: delay(600);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	02h
	movwf	(?_delay+1)
	movlw	058h
	movwf	(?_delay)

	fcall	_delay
	line	161
	
l535:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_clr
	__end_of_lcd_clr:
;; =============== function _lcd_clr ends ============

	signat	_lcd_clr,88
	global	_send_char
psect	text219,local,class=CODE,delta=2
global __ptext219
__ptext219:

;; *************** function _send_char *****************
;; Defined at:
;;		line 134 in file "C:\Users\Phang\Desktop\9.80\PR 15\PR15.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_send_string
;;		_send_num
;; This function uses a non-reentrant model
;;
psect	text219
	file	"C:\Users\Phang\Desktop\9.80\PR 15\PR15.c"
	line	134
	global	__size_of_send_char
	__size_of_send_char	equ	__end_of_send_char-_send_char
	
_send_char:	
	opt	stack 5
; Regs used in _send_char: [wreg+status,2+status,0+pclath+cstack]
;send_char@data stored from wreg
	movwf	(send_char@data)
	line	135
	
l2045:	
;PR15.c: 135: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	136
;PR15.c: 136: RB3=1;
	bsf	(51/8),(51)&7
	line	137
	
l2047:	
;PR15.c: 137: PORTC=data;
	movf	(send_char@data),w
	movwf	(7)	;volatile
	line	138
	
l2049:	
;PR15.c: 138: RB1=1;
	bsf	(49/8),(49)&7
	line	139
	
l2051:	
;PR15.c: 139: delay(10);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	0Ah
	movwf	(?_delay)

	fcall	_delay
	line	140
	
l2053:	
;PR15.c: 140: RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	141
	
l2055:	
;PR15.c: 141: delay(10);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	0Ah
	movwf	(?_delay)

	fcall	_delay
	line	142
	
l527:	
	return
	opt stack 0
GLOBAL	__end_of_send_char
	__end_of_send_char:
;; =============== function _send_char ends ============

	signat	_send_char,4216
	global	_send_config
psect	text220,local,class=CODE,delta=2
global __ptext220
__ptext220:

;; *************** function _send_config *****************
;; Defined at:
;;		line 123 in file "C:\Users\Phang\Desktop\9.80\PR 15\PR15.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;;		_lcd_goto
;;		_lcd_clr
;; This function uses a non-reentrant model
;;
psect	text220
	file	"C:\Users\Phang\Desktop\9.80\PR 15\PR15.c"
	line	123
	global	__size_of_send_config
	__size_of_send_config	equ	__end_of_send_config-_send_config
	
_send_config:	
	opt	stack 5
; Regs used in _send_config: [wreg+status,2+status,0+pclath+cstack]
;send_config@data stored from wreg
	movwf	(send_config@data)
	line	124
	
l2033:	
;PR15.c: 124: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	125
;PR15.c: 125: RB3=0;
	bcf	(51/8),(51)&7
	line	126
	
l2035:	
;PR15.c: 126: PORTC=data;
	movf	(send_config@data),w
	movwf	(7)	;volatile
	line	127
	
l2037:	
;PR15.c: 127: RB1=1;
	bsf	(49/8),(49)&7
	line	128
	
l2039:	
;PR15.c: 128: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	129
	
l2041:	
;PR15.c: 129: RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	130
	
l2043:	
;PR15.c: 130: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	131
	
l524:	
	return
	opt stack 0
GLOBAL	__end_of_send_config
	__end_of_send_config:
;; =============== function _send_config ends ============

	signat	_send_config,4216
	global	___lwmod
psect	text221,local,class=CODE,delta=2
global __ptext221
__ptext221:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send_num
;; This function uses a non-reentrant model
;;
psect	text221
	file	"C:\Program Files\HI-TECH Software\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l2011:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2361
	goto	u2360
u2361:
	goto	l2029
u2360:
	line	9
	
l2013:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l2019
	
l583:	
	line	11
	
l2015:	
	movlw	01h
	
u2375:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2375
	line	12
	
l2017:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l2019
	line	13
	
l582:	
	line	10
	
l2019:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2381
	goto	u2380
u2381:
	goto	l2015
u2380:
	goto	l2021
	
l584:	
	goto	l2021
	line	14
	
l585:	
	line	15
	
l2021:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2395
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2395:
	skipc
	goto	u2391
	goto	u2390
u2391:
	goto	l2025
u2390:
	line	16
	
l2023:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l2025
	
l586:	
	line	17
	
l2025:	
	movlw	01h
	
u2405:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2405
	line	18
	
l2027:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2411
	goto	u2410
u2411:
	goto	l2021
u2410:
	goto	l2029
	
l587:	
	goto	l2029
	line	19
	
l581:	
	line	20
	
l2029:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l588
	
l2031:	
	line	21
	
l588:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	___lwdiv
psect	text222,local,class=CODE,delta=2
global __ptext222
__ptext222:

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\sources\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMMON] unsigned int 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send_num
;; This function uses a non-reentrant model
;;
psect	text222
	file	"C:\Program Files\HI-TECH Software\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l1987:	
	movlw	low(0)
	movwf	(___lwdiv@quotient)
	movlw	high(0)
	movwf	((___lwdiv@quotient))+1
	line	10
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u2291
	goto	u2290
u2291:
	goto	l2007
u2290:
	line	11
	
l1989:	
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	line	12
	goto	l1995
	
l573:	
	line	13
	
l1991:	
	movlw	01h
	
u2305:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2305
	line	14
	
l1993:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l1995
	line	15
	
l572:	
	line	12
	
l1995:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l1991
u2310:
	goto	l1997
	
l574:	
	goto	l1997
	line	16
	
l575:	
	line	17
	
l1997:	
	movlw	01h
	
u2325:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2325
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u2335
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u2335:
	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l2003
u2330:
	line	19
	
l1999:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	20
	
l2001:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l2003
	line	21
	
l576:	
	line	22
	
l2003:	
	movlw	01h
	
u2345:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u2345
	line	23
	
l2005:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u2351
	goto	u2350
u2351:
	goto	l1997
u2350:
	goto	l2007
	
l577:	
	goto	l2007
	line	24
	
l571:	
	line	25
	
l2007:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l578
	
l2009:	
	line	26
	
l578:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
;; =============== function ___lwdiv ends ============

	signat	___lwdiv,8314
	global	_delay
psect	text223,local,class=CODE,delta=2
global __ptext223
__ptext223:

;; *************** function _delay *****************
;; Defined at:
;;		line 118 in file "C:\Users\Phang\Desktop\9.80\PR 15\PR15.c"
;; Parameters:    Size  Location     Type
;;  data            4    0[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_send_config
;;		_send_char
;;		_lcd_clr
;; This function uses a non-reentrant model
;;
psect	text223
	file	"C:\Users\Phang\Desktop\9.80\PR 15\PR15.c"
	line	118
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	119
	
l1981:	
;PR15.c: 119: for( ;data>0;data-=1);
	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u2261
	goto	u2260
u2261:
	goto	l1985
u2260:
	goto	l521
	
l1983:	
	goto	l521
	
l519:	
	
l1985:	
	movlw	01h
	movwf	((??_delay+0)+0)
	movlw	0
	movwf	((??_delay+0)+0+1)
	movlw	0
	movwf	((??_delay+0)+0+2)
	movlw	0
	movwf	((??_delay+0)+0+3)
	movf	0+(??_delay+0)+0,w
	subwf	(delay@data),f
	movf	1+(??_delay+0)+0,w
	skipc
	incfsz	1+(??_delay+0)+0,w
	goto	u2275
	goto	u2276
u2275:
	subwf	(delay@data+1),f
u2276:
	movf	2+(??_delay+0)+0,w
	skipc
	incfsz	2+(??_delay+0)+0,w
	goto	u2277
	goto	u2278
u2277:
	subwf	(delay@data+2),f
u2278:
	movf	3+(??_delay+0)+0,w
	skipc
	incfsz	3+(??_delay+0)+0,w
	goto	u2279
	goto	u2270
u2279:
	subwf	(delay@data+3),f
u2270:

	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u2281
	goto	u2280
u2281:
	goto	l1985
u2280:
	goto	l521
	
l520:	
	line	120
	
l521:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_read_ad
psect	text224,local,class=CODE,delta=2
global __ptext224
__ptext224:

;; *************** function _read_ad *****************
;; Defined at:
;;		line 192 in file "C:\Users\Phang\Desktop\9.80\PR 15\PR15.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    1[COMMON] unsigned char 
;;  result          1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text224
	file	"C:\Users\Phang\Desktop\9.80\PR 15\PR15.c"
	line	192
	global	__size_of_read_ad
	__size_of_read_ad	equ	__end_of_read_ad-_read_ad
	
_read_ad:	
	opt	stack 7
; Regs used in _read_ad: [wreg-fsr0h+status,2+status,0]
;read_ad@channel stored from wreg
	movwf	(read_ad@channel)
	line	194
	
l1971:	
;PR15.c: 193: unsigned char result;
;PR15.c: 194: switch(channel)
	goto	l1975
	line	196
;PR15.c: 195: {
;PR15.c: 196: case 0:
	
l550:	
	line	197
;PR15.c: 197: CHS2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	198
;PR15.c: 198: CHS1=0;
	bcf	(252/8),(252)&7
	line	199
;PR15.c: 199: CHS0=0;
	bcf	(251/8),(251)&7
	line	200
;PR15.c: 200: break;
	goto	l551
	line	201
;PR15.c: 201: case 1:
	
l552:	
	line	202
;PR15.c: 202: CHS2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(253/8),(253)&7
	line	203
;PR15.c: 203: CHS1=0;
	bcf	(252/8),(252)&7
	line	204
;PR15.c: 204: CHS0=1;
	bsf	(251/8),(251)&7
	line	205
;PR15.c: 205: break;
	goto	l551
	line	206
	
l1973:	
;PR15.c: 206: }
	goto	l551
	line	194
	
l549:	
	
l1975:	
	movf	(read_ad@channel),w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 1
; switch strategies available:
; Name         Bytes Cycles
; simple_byte     7     4 (average)
; direct_byte    25    19 (fixed)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l550
	xorlw	1^0	; case 1
	skipnz
	goto	l552
	goto	l551

	line	206
	
l551:	
	line	207
;PR15.c: 207: ADGO=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	208
;PR15.c: 208: while(ADGO);
	goto	l553
	
l554:	
	
l553:	
	btfsc	(250/8),(250)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l553
u2250:
	goto	l1977
	
l555:	
	line	209
	
l1977:	
;PR15.c: 209: result=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_read_ad+0)+0
	movf	(??_read_ad+0)+0,w
	movwf	(read_ad@result)
	line	210
;PR15.c: 210: return result;
	movf	(read_ad@result),w
	goto	l556
	
l1979:	
	line	211
	
l556:	
	return
	opt stack 0
GLOBAL	__end_of_read_ad
	__end_of_read_ad:
;; =============== function _read_ad ends ============

	signat	_read_ad,4217
psect	text225,local,class=CODE,delta=2
global __ptext225
__ptext225:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
