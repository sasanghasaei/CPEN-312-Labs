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
	
	mov R7, #0 ;sw2
	mov R6, #0 ;sw1
	mov R5, #0 ;sw0
	mov R4, #0 ;sw3 These are going to be registers where we save the current state
	
	ljmp change_state

compare_to_current_SW2_high:
	
	cjne R7, #1, change_state 
	
	jb SWA.1, compare_to_current_SW1_high
	jnb SWA.1, compare_to_current_SW1_low
	
compare_to_current_SW2_low:
	
	cjne R7, #0, change_state
	
	jb SWA.1, compare_to_current_SW1_high
	jnb SWA.1, compare_to_current_SW1_low
	
compare_to_current_SW1_high:
	
	cjne R6, #1, change_state 
	
	jb SWA.0, compare_to_current_SW0_high
	jnb SWA.0, compare_to_current_SW0_low
	
compare_to_current_SW1_low:
	
	cjne R6, #0, change_state
	
	jb SWA.0, compare_to_current_SW0_high
	jnb SWA.0, compare_to_current_SW0_low
	
	
compare_to_current_SW0_high:
	
	cjne R5, #1, change_state ; 
	
	jb SWA.3, compare_to_current_SW3_high
	jnb SWA.3, compare_to_current_SW3_low
	
compare_to_current_SW0_low:
	
	cjne R5, #0, change_state
	
	jb SWA.3, compare_to_current_SW3_high
	jnb SWA.3, compare_to_current_SW3_low
	
compare_to_current_SW3_high:
	cjne R4, #1, change_state
	
	ret ; return to the most recent lcall
	
compare_to_current_SW3_low:
	cjne R4, #0, change_state
	
	ret ; return to the most recent lcall


	
change_state:
	
	jb SWA.2, Check_SW1_given_SW2_HIGH
	jb SWA.1, Long_jump_Check_SW0_given_SW2_LOW_SW1_HIGH	
	jb SWA.0, Long_jump_Display_two_lsb
	
	; do 000:
	ljmp Display_six_msb

Long_jump_Display_two_lsb:
	ljmp Display_two_lsb

Long_jump_Check_SW0_given_SW2_LOW_SW1_HIGH: ; use long jumps to avoid relative reference error

	ljmp Check_SW0_given_SW2_LOW_SW1_HIGH
	
Check_SW1_given_SW2_HIGH:

	jb SWA.1, Check_SW0_given_SW2_SW1_HIGH
	
	jb SWA.0, Check_SW3_101
	
	; do case 100
	ljmp Check_SW3_100
	
Check_SW3_101:
	jb 	SWA.3, Long_jump_do_101_half_sec
	
	ljmp do_101_one_sec
	
Long_jump_do_101_half_sec:
	ljmp do_101_half_sec

Check_SW0_given_SW2_SW1_HIGH:
	; do 111
	jb SWA.0, Check_SW3_111
	
	ljmp Check_SW3_110

Check_SW3_111:
	jb 	SWA.3, Long_jump_do_111_half_sec
	
	ljmp do_111_one_sec
	
Long_jump_do_111_half_sec:
	ljmp do_111_half_sec
	
Check_SW3_110:
	jb 	SWA.3, Long_jmp_do_110_half_sec
	
	ljmp do_110_one_sec
	
Long_jmp_do_110_half_sec:
	ljmp do_110_half_sec
	
Check_SW3_100:
	jb SWA.3, Long_jump_Blink_six_lsb_half_sec
	
	ljmp Blink_six_lsb_one_sec
	
Long_jump_Blink_six_lsb_half_sec:
	ljmp Blink_six_lsb_half_sec
	
WaitOneSec:
	mov R2, #180
L6: mov R1, #250
L5: mov R0, #250
L4: djnz R0, L4 ; 3 machine cycles -> 3*30ns*250 = 22.5 us
	djnz R1, L5 ; 22.5 us * 250 = 5.625 ms
	djnz R2, L6 ; 5.625 ms * 180 = 1 s (approximately)
	ret	



Display_six_msb:
	
	
	mov R7, #0
	mov R6, #0
	mov R5, #0
	mov R4, #0 ; setting the current state
	
	mov HEX0, NUMBER_7
	mov HEX1, NUMBER_5
	mov HEX2, NUMBER_3
	mov HEX3, NUMBER_3
	mov HEX4, NUMBER_8
	mov HEX5, NUMBER_7
	
	lcall check_state ; we check states and if there is no change, we come back but if there is we change state
	ljmp Display_six_msb ; looping through this state as long as the current state is the same as switches

check_state:
	jb KEY.3, break_check_state ; we check if key3 is pressed or not, if it is not pressed (one) we do not check state
	;ljmp break_check_state
	; compare the current set state of the switch to the state we are in:
	jb SWA.2, Long_jump_compare_to_current_SW2_high
	jnb SWA.2, Long_jump_compare_to_current_SW2_low
	
	; no need for ret here because either jb or jnb will cause a jump

break_check_state:
	cpl LEDRA.0
	ret 
	
Long_jump_compare_to_current_SW2_high: ; to avoid reference error
	ljmp compare_to_current_SW2_high

Long_jump_compare_to_current_SW2_low: ; to avoid reference error
	ljmp compare_to_current_SW2_low
	
WaitHalfSec:
	mov R2, #90
L3: mov R1, #250
L2: mov R0, #250
L1: djnz R0, L1 ; 3 machine cycles -> 3*30ns*250 = 22.5 us
	djnz R1, L2 ; 22.5 us * 250 = 5.625 ms
	djnz R2, L3 ; 5.625 ms * 90 = 0.5 s (approximately)

	ret

Display_two_lsb:
	
	
	mov R7, #0
	mov R6, #0
	mov R5, #1
	mov R4, #0
	
	mov HEX0, NUMBER_1
	mov HEX1, NUMBER_9
	mov HEX2, BLANK
	mov HEX3, BLANK
	mov HEX4, BLANK
	mov HEX5, BLANK
	
	lcall check_state	
	ljmp Display_two_lsb ; loop back
	
Check_SW0_given_SW2_LOW_SW1_HIGH:
	
	; do 011	
	jb SWA.0, Check_SW3_011
	
	; do 010:
	ljmp Check_SW3_010

Check_SW3_010:
	jb SWA.3, Long_jump_Left_scroll_half_sec
	
	ljmp Left_scroll_one_sec
	
Long_jump_Left_scroll_half_sec:
	ljmp Left_scroll_half_sec
	
Check_SW3_011:
	jb SWA.3, Long_jump_Right_scroll_half_sec ; since the jump is too far, we first move to another label to make a long jump
	
	ljmp Right_scroll_one_sec
	
Long_jump_Right_scroll_half_sec:
	; long jump to right_scroll_half_sec
	ljmp Right_scroll_half_sec
	
Right_scroll_one_sec:
	mov R7, #0
	mov R6, #1
	mov R5, #1
	mov R4, #0 ; set current state

	mov HEX0, NUMBER_7
	mov HEX1, NUMBER_5
	mov HEX2, NUMBER_3
	mov HEX3, NUMBER_3
	mov HEX4, NUMBER_8
	mov HEX5, NUMBER_7
	
	lcall check_state
	lcall WaitOneSec
	
	mov HEX0, NUMBER_5
	mov HEX1, NUMBER_3
	mov HEX2, NUMBER_3
	mov HEX3, NUMBER_8
	mov HEX4, NUMBER_7
	mov HEX5, NUMBER_1
	
	lcall check_state
	lcall WaitOneSec
	
	mov HEX0, NUMBER_3
	mov HEX1, NUMBER_3
	mov HEX2, NUMBER_8
	mov HEX3, NUMBER_7
	mov HEX4, NUMBER_1
	mov HEX5, NUMBER_9
	
	lcall check_state
	lcall WaitOneSec
	
	mov HEX0, NUMBER_3
	mov HEX1, NUMBER_8
	mov HEX2, NUMBER_7
	mov HEX3, NUMBER_1
	mov HEX4, NUMBER_9
	mov HEX5, NUMBER_7
	
	lcall check_state
	lcall WaitOneSec
	
	mov HEX0, NUMBER_8
	mov HEX1, NUMBER_7
	mov HEX2, NUMBER_1
	mov HEX3, NUMBER_9
	mov HEX4, NUMBER_7
	mov HEX5, NUMBER_5
	
	lcall check_state
	lcall WaitOneSec
	
	mov HEX0, NUMBER_7
	mov HEX1, NUMBER_1
	mov HEX2, NUMBER_9
	mov HEX3, NUMBER_7
	mov HEX4, NUMBER_5
	mov HEX5, NUMBER_3
	
	lcall check_state
	lcall WaitOneSec
	
	mov HEX0, NUMBER_1
	mov HEX1, NUMBER_9
	mov HEX2, NUMBER_7
	mov HEX3, NUMBER_5
	mov HEX4, NUMBER_3
	mov HEX5, NUMBER_3
	
	lcall check_state
	lcall WaitOneSec 
	
	mov HEX0, NUMBER_9
	mov HEX1, NUMBER_7
	mov HEX2, NUMBER_5
	mov HEX3, NUMBER_3
	mov HEX4, NUMBER_3
	mov HEX5, NUMBER_8
	
	lcall check_state
	lcall WaitOneSec
	
	ljmp Right_scroll_one_sec

Right_scroll_half_sec:
	mov R7, #0
	mov R6, #1
	mov R5, #1
	mov R4, #1

	mov HEX0, NUMBER_7
	mov HEX1, NUMBER_5
	mov HEX2, NUMBER_3
	mov HEX3, NUMBER_3
	mov HEX4, NUMBER_8
	mov HEX5, NUMBER_7
	
	lcall check_state
	lcall WaitHalfSec
	
	mov HEX0, NUMBER_5
	mov HEX1, NUMBER_3
	mov HEX2, NUMBER_3
	mov HEX3, NUMBER_8
	mov HEX4, NUMBER_7
	mov HEX5, NUMBER_1
	
	lcall check_state
	lcall WaitHalfSec
	
	mov HEX0, NUMBER_3
	mov HEX1, NUMBER_3
	mov HEX2, NUMBER_8
	mov HEX3, NUMBER_7
	mov HEX4, NUMBER_1
	mov HEX5, NUMBER_9
	
	lcall check_state
	lcall WaitHalfSec
	
	mov HEX0, NUMBER_3
	mov HEX1, NUMBER_8
	mov HEX2, NUMBER_7
	mov HEX3, NUMBER_1
	mov HEX4, NUMBER_9
	mov HEX5, NUMBER_7
	
	lcall check_state
	lcall WaitHalfSec
	
	mov HEX0, NUMBER_8
	mov HEX1, NUMBER_7
	mov HEX2, NUMBER_1
	mov HEX3, NUMBER_9
	mov HEX4, NUMBER_7
	mov HEX5, NUMBER_5
	
	lcall check_state
	lcall WaitHalfSec
	
	mov HEX0, NUMBER_7
	mov HEX1, NUMBER_1
	mov HEX2, NUMBER_9
	mov HEX3, NUMBER_7
	mov HEX4, NUMBER_5
	mov HEX5, NUMBER_3
	
	lcall check_state
	lcall WaitHalfSec
	
	mov HEX0, NUMBER_1
	mov HEX1, NUMBER_9
	mov HEX2, NUMBER_7
	mov HEX3, NUMBER_5
	mov HEX4, NUMBER_3
	mov HEX5, NUMBER_3
	
	lcall check_state
	lcall WaitHalfSec 
	
	mov HEX0, NUMBER_9
	mov HEX1, NUMBER_7
	mov HEX2, NUMBER_5
	mov HEX3, NUMBER_3
	mov HEX4, NUMBER_3
	mov HEX5, NUMBER_8
	
	lcall check_state
	lcall WaitHalfSec
	
	ljmp Right_scroll_one_sec
	
Left_scroll_one_sec:

	mov R7, #0
	mov R6, #1
	mov R5, #0
	mov R4, #0

	mov HEX0, NUMBER_7
	mov HEX1, NUMBER_5
	mov HEX2, NUMBER_3
	mov HEX3, NUMBER_3
	mov HEX4, NUMBER_8
	mov HEX5, NUMBER_7
	
	lcall check_state
	lcall WaitOneSec
	
	mov HEX0, NUMBER_9
	mov HEX1, NUMBER_7
	mov HEX2, NUMBER_5
	mov HEX3, NUMBER_3
	mov HEX4, NUMBER_3
	mov HEX5, NUMBER_8
	
	lcall check_state
	lcall WaitOneSec
	
	mov HEX0, NUMBER_1
	mov HEX1, NUMBER_9
	mov HEX2, NUMBER_7
	mov HEX3, NUMBER_5
	mov HEX4, NUMBER_3
	mov HEX5, NUMBER_3
	
	lcall check_state
	lcall WaitOneSec 
	
	mov HEX0, NUMBER_7
	mov HEX1, NUMBER_1
	mov HEX2, NUMBER_9
	mov HEX3, NUMBER_7
	mov HEX4, NUMBER_5
	mov HEX5, NUMBER_3
	
	lcall check_state
	lcall WaitOneSec
	
	mov HEX0, NUMBER_8
	mov HEX1, NUMBER_7
	mov HEX2, NUMBER_1
	mov HEX3, NUMBER_9
	mov HEX4, NUMBER_7
	mov HEX5, NUMBER_5
	
	lcall check_state
	lcall WaitOneSec
	
	mov HEX0, NUMBER_3
	mov HEX1, NUMBER_8
	mov HEX2, NUMBER_7
	mov HEX3, NUMBER_1
	mov HEX4, NUMBER_9
	mov HEX5, NUMBER_7
	
	lcall check_state
	lcall WaitOneSec
	
	mov HEX0, NUMBER_3
	mov HEX1, NUMBER_3
	mov HEX2, NUMBER_8
	mov HEX3, NUMBER_7
	mov HEX4, NUMBER_1
	mov HEX5, NUMBER_9
	
	lcall check_state
	lcall WaitOneSec
		
	mov HEX0, NUMBER_5
	mov HEX1, NUMBER_3
	mov HEX2, NUMBER_3
	mov HEX3, NUMBER_8
	mov HEX4, NUMBER_7
	mov HEX5, NUMBER_1
	
	lcall check_state
	lcall WaitOneSec 
	
	ljmp Left_scroll_one_sec
		

Left_scroll_half_sec:

	mov R7, #0
	mov R6, #1
	mov R5, #0
	mov R4, #1

	mov HEX0, NUMBER_7
	mov HEX1, NUMBER_5
	mov HEX2, NUMBER_3
	mov HEX3, NUMBER_3
	mov HEX4, NUMBER_8
	mov HEX5, NUMBER_7
	
	lcall check_state
	lcall WaitHalfSec
	
	mov HEX0, NUMBER_9
	mov HEX1, NUMBER_7
	mov HEX2, NUMBER_5
	mov HEX3, NUMBER_3
	mov HEX4, NUMBER_3
	mov HEX5, NUMBER_8
	
	lcall check_state
	lcall WaitHalfSec
	
	mov HEX0, NUMBER_1
	mov HEX1, NUMBER_9
	mov HEX2, NUMBER_7
	mov HEX3, NUMBER_5
	mov HEX4, NUMBER_3
	mov HEX5, NUMBER_3
	
	lcall check_state
	lcall WaitHalfSec 
	
	mov HEX0, NUMBER_7
	mov HEX1, NUMBER_1
	mov HEX2, NUMBER_9
	mov HEX3, NUMBER_7
	mov HEX4, NUMBER_5
	mov HEX5, NUMBER_3
	
	lcall check_state
	lcall WaitHalfSec
	
	mov HEX0, NUMBER_8
	mov HEX1, NUMBER_7
	mov HEX2, NUMBER_1
	mov HEX3, NUMBER_9
	mov HEX4, NUMBER_7
	mov HEX5, NUMBER_5
	
	lcall check_state
	lcall WaitHalfSec
	
	mov HEX0, NUMBER_3
	mov HEX1, NUMBER_8
	mov HEX2, NUMBER_7
	mov HEX3, NUMBER_1
	mov HEX4, NUMBER_9
	mov HEX5, NUMBER_7
	
	lcall check_state
	lcall WaitHalfSec
	
	mov HEX0, NUMBER_3
	mov HEX1, NUMBER_3
	mov HEX2, NUMBER_8
	mov HEX3, NUMBER_7
	mov HEX4, NUMBER_1
	mov HEX5, NUMBER_9
	
	lcall check_state
	lcall WaitHalfSec
		
	mov HEX0, NUMBER_5
	mov HEX1, NUMBER_3
	mov HEX2, NUMBER_3
	mov HEX3, NUMBER_8
	mov HEX4, NUMBER_7
	mov HEX5, NUMBER_1
	
	lcall check_state
	lcall WaitHalfSec 
	
	ljmp Left_scroll_half_sec
	
	
Blink_six_lsb_half_sec:
	
	mov R7, #1
	mov R6, #0
	mov R5, #0
	mov R4, #1
	
	mov HEX0, NUMBER_1
	mov HEX1, NUMBER_9
	mov HEX2, NUMBER_7
	mov HEX3, NUMBER_5
	mov HEX4, NUMBER_3
	mov HEX5, NUMBER_3
	
	lcall check_state
	lcall WaitHalfSec
	
	mov HEX0, BLANK
	mov HEX1, BLANK
	mov HEX2, BLANK
	mov HEX3, BLANK
	mov HEX4, BLANK
	mov HEX5, BLANK
	
	lcall check_state
	lcall WaitHalfSec
	
	ljmp Blink_six_lsb_half_sec

Blink_six_lsb_one_sec:
	
	mov R7, #1
	mov R6, #0
	mov R5, #0
	mov R4, #0
	
	mov HEX0, NUMBER_1
	mov HEX1, NUMBER_9
	mov HEX2, NUMBER_7
	mov HEX3, NUMBER_5
	mov HEX4, NUMBER_3
	mov HEX5, NUMBER_3
	
	lcall check_state
	lcall WaitOneSec
	
	mov HEX0, BLANK
	mov HEX1, BLANK
	mov HEX2, BLANK
	mov HEX3, BLANK
	mov HEX4, BLANK
	mov HEX5, BLANK
	
	lcall check_state
	lcall WaitOneSec
	
	ljmp Blink_six_lsb_one_sec

do_101_half_sec:
	
	mov R7, #1
	mov R6, #0
	mov R5, #1
	mov R4, #1
	
	mov HEX0, BLANK
	mov HEX1, BLANK
	mov HEX2, BLANK
	mov HEX3, BLANK
	mov HEX4, BLANK
	mov HEX5, BLANK
	
	lcall check_state
	lcall WaitHalfSec
	
	mov HEX0, BLANK
	mov HEX1, BLANK
	mov HEX2, BLANK
	mov HEX3, BLANK
	mov HEX4, BLANK
	mov HEX5, NUMBER_7
	
	lcall check_state
	lcall WaitHalfSec
	
	mov HEX0, BLANK
	mov HEX1, BLANK
	mov HEX2, BLANK
	mov HEX3, BLANK
	mov HEX4, NUMBER_8
	mov HEX5, NUMBER_7
	
	lcall check_state
	lcall WaitHalfSec
	
	mov HEX0, BLANK
	mov HEX1, BLANK
	mov HEX2, BLANK
	mov HEX3, NUMBER_3
	mov HEX4, NUMBER_8
	mov HEX5, NUMBER_7
	
	lcall check_state
	lcall WaitHalfSec
	
	mov HEX0, BLANK
	mov HEX1, BLANK
	mov HEX2, NUMBER_3
	mov HEX3, NUMBER_3
	mov HEX4, NUMBER_8
	mov HEX5, NUMBER_7
	
	lcall check_state
	lcall WaitHalfSec
	
	mov HEX0, BLANK
	mov HEX1, NUMBER_5
	mov HEX2, NUMBER_3
	mov HEX3, NUMBER_3
	mov HEX4, NUMBER_8
	mov HEX5, NUMBER_7
	
	lcall check_state
	lcall WaitHalfSec
	
	mov HEX0, NUMBER_7
	mov HEX1, NUMBER_5
	mov HEX2, NUMBER_3
	mov HEX3, NUMBER_3
	mov HEX4, NUMBER_8
	mov HEX5, NUMBER_7
	
	lcall check_state
	lcall WaitHalfSec
	
	
	ljmp do_101_half_sec
	

do_101_one_sec:
	
	mov R7, #1
	mov R6, #0
	mov R5, #1
	mov R4, #0
	
	mov HEX0, BLANK
	mov HEX1, BLANK
	mov HEX2, BLANK
	mov HEX3, BLANK
	mov HEX4, BLANK
	mov HEX5, BLANK
	
	lcall check_state
	lcall WaitOneSec
	
	mov HEX0, BLANK
	mov HEX1, BLANK
	mov HEX2, BLANK
	mov HEX3, BLANK
	mov HEX4, BLANK
	mov HEX5, NUMBER_7
	
	lcall check_state
	lcall WaitOneSec
	
	mov HEX0, BLANK
	mov HEX1, BLANK
	mov HEX2, BLANK
	mov HEX3, BLANK
	mov HEX4, NUMBER_8
	mov HEX5, NUMBER_7
	
	lcall check_state
	lcall WaitOneSec
	
	mov HEX0, BLANK
	mov HEX1, BLANK
	mov HEX2, BLANK
	mov HEX3, NUMBER_3
	mov HEX4, NUMBER_8
	mov HEX5, NUMBER_7
	
	lcall check_state
	lcall WaitOneSec
	
	mov HEX0, BLANK
	mov HEX1, BLANK
	mov HEX2, NUMBER_3
	mov HEX3, NUMBER_3
	mov HEX4, NUMBER_8
	mov HEX5, NUMBER_7
	
	lcall check_state
	lcall WaitOneSec
	
	mov HEX0, BLANK
	mov HEX1, NUMBER_5
	mov HEX2, NUMBER_3
	mov HEX3, NUMBER_3
	mov HEX4, NUMBER_8
	mov HEX5, NUMBER_7
	
	lcall check_state
	lcall WaitOneSec
	
	mov HEX0, NUMBER_7
	mov HEX1, NUMBER_5
	mov HEX2, NUMBER_3
	mov HEX3, NUMBER_3
	mov HEX4, NUMBER_8
	mov HEX5, NUMBER_7
	
	lcall check_state
	lcall WaitOneSec
	
	
	ljmp do_101_one_sec

do_110_half_sec:

	mov R7, #1
	mov R6, #1
	mov R5, #0
	mov R4, #1
	
	mov HEX0, BLANK
	mov HEX1, LETTER_O
	mov HEX2, LETTER_L
	mov HEX3, LETTER_L
	mov HEX4, LETTER_E
	mov HEX5, LETTER_H
	
	lcall check_state
	lcall WaitHalfSec 
	
	mov HEX0, NUMBER_7
	mov HEX1, NUMBER_5
	mov HEX2, NUMBER_3
	mov HEX3, NUMBER_3
	mov HEX4, NUMBER_8
	mov HEX5, NUMBER_7
	
	lcall check_state
	lcall WaitHalfSec 

	mov HEX0, NUMBER_2
	mov HEX1, NUMBER_1
	mov HEX2, NUMBER_3
	mov HEX3, LETTER_N
	mov HEX4, LETTER_P
	mov HEX5, LETTER_C
	
	lcall check_state
	lcall WaitHalfSec 
	
	ljmp do_110_half_sec

do_110_one_sec:

	mov R7, #1
	mov R6, #1
	mov R5, #0
	mov R4, #0
	
	mov HEX0, BLANK
	mov HEX1, LETTER_O
	mov HEX2, LETTER_L
	mov HEX3, LETTER_L
	mov HEX4, LETTER_E
	mov HEX5, LETTER_H
	
	lcall check_state
	lcall WaitOneSec 
	
	mov HEX0, NUMBER_7
	mov HEX1, NUMBER_5
	mov HEX2, NUMBER_3
	mov HEX3, NUMBER_3
	mov HEX4, NUMBER_8
	mov HEX5, NUMBER_7
	
	lcall check_state
	lcall WaitOneSec 

	mov HEX0, NUMBER_2
	mov HEX1, NUMBER_1
	mov HEX2, NUMBER_3
	mov HEX3, LETTER_N
	mov HEX4, LETTER_P
	mov HEX5, LETTER_C
	
	lcall check_state
	lcall WaitOneSec 
	
	ljmp do_110_one_sec

do_111_half_sec:
	mov R7, #1
	mov R6, #1
	mov R5, #1
	mov R4, #1
	
	mov HEX0, BLANK
	mov HEX1, NUMBER_5
	mov HEX2, BLANK
	mov HEX3, NUMBER_3
	mov HEX4, BLANK
	mov HEX5, NUMBER_7
	
	lcall check_state
	lcall WaitHalfSec
	
	mov HEX0, NUMBER_7
	mov HEX1, BLANK
	mov HEX2, NUMBER_3
	mov HEX3, BLANK
	mov HEX4, NUMBER_8
	mov HEX5, BLANK
	
	lcall check_state
	lcall WaitHalfSec
	
	ljmp do_111_half_sec
	
do_111_one_sec:
	mov R7, #1
	mov R6, #1
	mov R5, #1
	mov R4, #0
	
	mov HEX0, BLANK
	mov HEX1, NUMBER_5
	mov HEX2, BLANK
	mov HEX3, NUMBER_3
	mov HEX4, BLANK
	mov HEX5, NUMBER_7
	
	lcall check_state
	lcall WaitOneSec
	
	mov HEX0, NUMBER_7
	mov HEX1, BLANK
	mov HEX2, NUMBER_3
	mov HEX3, BLANK
	mov HEX4, NUMBER_8
	mov HEX5, BLANK
	
	lcall check_state
	lcall WaitOneSec
	
	ljmp do_111_one_sec
	
	
	
END
