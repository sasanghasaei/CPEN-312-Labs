; Blinky.asm: blinks LEDR0 of the CV-8052 each second.

$MODDE0CV ; Special Function Registers declaration for CV-8052

org 0000H ; After reset, the processor starts at location zero
	ljmp myprogram
	
; For a 33.33 MHz clock takes 30ns

NUMBER_0 EQU #0xC0
NUMBER_1 EQU #0xF9
NUMBER_2 EQU #0xA4
NUMBER_3 EQU #0xB0
NUMBER_4 EQU #0x99
NUMBER_5 EQU #0x92
NUMBER_6 EQU #0x82
NUMBER_7 EQU #0xF8
NUMBER_8 EQU #0x80
NUMBER_9 EQU #0x90
LETTER_H EQU #0x09
LETTER_E EQU #0x06
LETTER_L EQU #0x47
LETTER_O EQU #0x40
LETTER_C EQU #0x46
LETTER_P EQU #0x0C
LETTER_N EQU #0x48

BLANK    EQU #0xff




WaitQuarterSec:
	mov R2, #45
L9: mov R1, #250
L8: mov R0, #250
L7: djnz R0, L7 ; 3 machine cycles -> 3*30ns*250 = 22.5 us
	djnz R1, L8 ; 22.5 us * 250 = 5.625 ms
	djnz R2, L9 ; 5.625 ms * 45 = 0.25 s (approximately)
	ret

WaitHalfSec:
	mov R2, #90
L3: mov R1, #250
L2: mov R0, #250
L1: djnz R0, L1 ; 3 machine cycles -> 3*30ns*250 = 22.5 us
	djnz R1, L2 ; 22.5 us * 250 = 5.625 ms
	djnz R2, L3 ; 5.625 ms * 90 = 0.5 s (approximately)
	ret

	
WaitOneSec:
	mov R2, #180
L6: mov R1, #250
L5: mov R0, #250
L4: djnz R0, L4 ; 3 machine cycles -> 3*30ns*250 = 22.5 us
	djnz R1, L5 ; 22.5 us * 250 = 5.625 ms
	djnz R2, L6 ; 5.625 ms * 180 = 1 s (approximately)
	ret	

myprogram:
	mov SP, #7FH
	mov LEDRA,#0 ; clear LEDRA register
	mov LEDRB,#0 ; clear LEDRB register
	
	mov HEX0, NUMBER_7
	mov HEX1, NUMBER_5
	mov HEX2, NUMBER_3
	mov HEX3, NUMBER_3
	mov HEX4, NUMBER_8
	mov HEX5, NUMBER_7
	mov R6, NUMBER_1 
	mov R5, NUMBER_9

	
Forever:
	
	cpl LEDRA.0
	jb SWA.2, Check_SW1_given_SW2_HIGH
	jb SWA.1, Check_SW0_given_SW2_LOW_SW1_HIGH
	jb SWA.0, Display_two_lsb
	
	cpl LEDRA.2
	
	; do 000:
	mov R6, NUMBER_1 
	mov R5, NUMBER_9
	mov R7, #2
	lcall Display_six_msb
	
	ljmp Forever     ; this creates an unconditional jump back to 


	
Display_two_lsb:
	mov HEX0, NUMBER_1
	mov HEX1, NUMBER_9
	mov HEX2, BLANK
	mov HEX3, BLANK
	mov HEX4, BLANK
	mov HEX5, BLANK
	mov R6, NUMBER_1 
	mov R5, NUMBER_9
	mov R7, #2
	ljmp Forever
		
Check_SW1_given_SW2_HIGH:
	
	jb SWA.1, Check_SW0_given_SW2_SW1_HIGH
	
	jb SWA.0, do_101
	
	; do case 100
	lcall Blink_six_lsb
	

Check_SW0_given_SW2_SW1_HIGH:
	jb SWA.0, do_111
	
	lcall Check_SW3_110

do_101:
	
	
do_111:

	mov HEX0, BLANK
	mov HEX1, NUMBER_5
	mov HEX2, BLANK
	mov HEX3, NUMBER_3
	mov HEX4, BLANK
	mov HEX5, NUMBER_7
	
	lcall WaitHalfSec
	
	mov HEX0, NUMBER_7
	mov HEX1, BLANK
	mov HEX2, NUMBER_3
	mov HEX3, BLANK
	mov HEX4, NUMBER_8
	mov HEX5, BLANK
	
	lcall WaitHalfSec
	
	mov R6, NUMBER_1 
	mov R5, NUMBER_9
	mov R7, #2
	
	ljmp Forever
	
Check_SW0_given_SW2_LOW_SW1_HIGH:
	

	; we need to initialize the display to the six msb of the student number
	lcall LOOP
	

LOOP:
	
	djnz R7, reset_display
	
	; do 011	
	jb SWA.0, Check_SW3_011
	
	; do 010:
	lcall Check_SW3_010
	
reset_display:
	mov HEX0, NUMBER_7
	mov HEX1, NUMBER_5
	mov HEX2, NUMBER_3
	mov HEX3, NUMBER_3
	mov HEX4, NUMBER_8
	mov HEX5, NUMBER_7
	
	mov R7, #1
	mov R6, NUMBER_1 
	mov R5, NUMBER_9
	
	cpl LEDRA.6	
	
	lcall Forever
	
Check_SW3_011:
	; case 011 for when sw3 is one
	jb SWA.3, Right_move_half_sec
	
	; case 011 for when sw3 is zero:
	lcall WaitOneSec
	lcall Scroll_Right

Right_move_half_sec:
	lcall WaitHalfSec
	lcall Scroll_Right

	
Check_SW3_110:
	jb SWA.3, do_110_half_sec
	
	; do 110 one sec
	mov HEX0, BLANK
	mov HEX1, LETTER_O
	mov HEX2, LETTER_L
	mov HEX3, LETTER_L
	mov HEX4, LETTER_E
	mov HEX5, LETTER_H
	
	lcall WaitOneSec
	
	mov HEX0, NUMBER_7
	mov HEX1, NUMBER_5
	mov HEX2, NUMBER_3
	mov HEX3, NUMBER_3
	mov HEX4, NUMBER_8
	mov HEX5, NUMBER_7
	
	lcall WaitOneSec
	
	mov HEX0, NUMBER_2
	mov HEX1, NUMBER_1
	mov HEX2, NUMBER_3
	mov HEX3, LETTER_N
	mov HEX4, LETTER_P   
	mov HEX5, LETTER_C
	
	lcall WaitOneSec
	
	mov R6, NUMBER_1 
	mov R5, NUMBER_9
	mov R7, #2
	
	ljmp Forever
	
do_110_half_sec:
	
	mov HEX0, BLANK
	mov HEX1, LETTER_O
	mov HEX2, LETTER_L
	mov HEX3, LETTER_L
	mov HEX4, LETTER_E
	mov HEX5, LETTER_H
	
	lcall WaitHalfSec
	
	mov HEX0, NUMBER_7
	mov HEX1, NUMBER_5
	mov HEX2, NUMBER_3
	mov HEX3, NUMBER_3
	mov HEX4, NUMBER_8
	mov HEX5, NUMBER_7
	
	lcall WaitHalfSec
	
	mov HEX0, NUMBER_2
	mov HEX1, NUMBER_1
	mov HEX2, NUMBER_3
	mov HEX3, LETTER_N
	mov HEX4, LETTER_C
	mov HEX5, LETTER_C
	cpl LEDRA.1 ; Turn LEDR0 on/off
	
	lcall WaitHalfSec
	
	mov R6, NUMBER_1 
	mov R5, NUMBER_9
	mov R7, #2
	
	ljmp Forever
	
	
Check_SW3_010:
	; case 010 for when sw3 is one:
	jb SWA.3, Left_move_half_sec
	
	; case 010 for when sw3 is zero:
	lcall WaitOneSec
	lcall Scroll_Left

Left_move_half_sec:
	lcall WaitHalfSec
	lcall Scroll_Left
	
Scroll_Left:
	
	mov R4, HEX5	
	mov HEX5, HEX4
	mov HEX4, HEX3
	mov HEX3, HEX2
	mov HEX2, HEX1
	mov HEX1, HEX0
	mov HEX0, R5
	;mov R5, R6
	;mov R6, R4
	cpl LEDRA.3
	mov A, R6
	mov R5, A
	
	mov A, R4
	mov R6, A
	
	mov R7, #1
	
	
	ljmp Forever ; Repeat forever
		
Scroll_Right:
	mov R4, HEX0
	mov HEX0, HEX1	
	mov HEX1, HEX2	
	mov HEX2, HEX3	
	mov HEX3, HEX4	
	mov HEX4, HEX5	
	mov HEX5, R6
	
	;mov R6, R5	
	mov A, R5
	mov R6, A
	
	; mov R5, R4
	mov A, R4
	mov R5, A
	
	mov R7, #1
		
	ljmp Forever ; Repeat forever

	
Display_six_msb:
	mov HEX0, NUMBER_7
	mov HEX1, NUMBER_5
	mov HEX2, NUMBER_3
	mov HEX3, NUMBER_3
	mov HEX4, NUMBER_8
	mov HEX5, NUMBER_7
	ljmp Forever
	
Blink_six_lsb:

	jb SWA.3, Blink_six_lsb_half_sec
	
	mov HEX0, NUMBER_1
	mov HEX1, NUMBER_9
	mov HEX2, NUMBER_7
	mov HEX3, NUMBER_5
	mov HEX4, NUMBER_3
	mov HEX5, NUMBER_3
	
	lcall WaitHalfSec
	mov HEX0, BLANK
	mov HEX1, BLANK
	mov HEX2, BLANK
	mov HEX3, BLANK
	mov HEX4, BLANK
	mov HEX5, BLANK
	lcall WaitHalfSec
	
	mov R6, NUMBER_1 
	mov R5, NUMBER_9
	mov R7, #2
	
	ljmp Forever
	
Blink_six_lsb_half_sec:

	mov HEX0, NUMBER_1
	mov HEX1, NUMBER_9
	mov HEX2, NUMBER_7
	mov HEX3, NUMBER_5
	mov HEX4, NUMBER_3
	mov HEX5, NUMBER_3
	
	lcall WaitQuarterSec
	mov HEX0, BLANK
	mov HEX1, BLANK
	mov HEX2, BLANK
	mov HEX3, BLANK
	mov HEX4, BLANK
	mov HEX5, BLANK
	lcall WaitQuarterSec
	
	mov R6, NUMBER_1 
	mov R5, NUMBER_9
	mov R7, #2
	
	ljmp Forever	

END
