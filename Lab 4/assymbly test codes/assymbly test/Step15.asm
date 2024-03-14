$MODDE0CV ; Special Function Registers declaration for CV-8052

org 0000H ; After reset, the processor starts at location zero
	ljmp main

LETTER_J EQU #0x61
LETTER_E EQU #0x06
LETTER_S EQU #0x12
LETTER_U EQU #0x41
BLANK    EQU #0xff

; Look-up table for 7-seg displays. 
T_7seg:
    DB 40H, 79H, 24H, 30H, 19H
    DB 12H, 02H, 78H, 00H, 10H
    DB 08H, 03H, 46H, 21H, 06H
    DB 0EH

Display_at mac
	mov dptr, #T_7seg
	; Display Seconds
	mov a, %2
	anl a, #0x0f ; Force bits 4 to 7 to zero
	movc a, @dptr+a ; Read from table
	mov %0, a ; Display low nibble
	mov a, %2
	swap a ; exchange bits 0 to 3 with bits 4 to 7
	anl a, #0x0f ; Force bits 4 to 7 to zero
	movc a, @dptr+a ; ; Read from table
	mov %1, a ; Display high nibble
endmac
	
Delay:
	mov R2, #90
L2: mov R1, #250
L1: mov R0, #250
L0: djnz R0, L0 ; 3 machine cycles-> 3*30ns*250=22.5us
	djnz R1, L1 ; 22.5us*250=5.625ms
	djnz R2, L2 ; 5.625ms*90=0.506s (approximately)
	ret

Increment_BCD mac
	mov a, %0
	add a, #1
	da a
	mov %0, a
endmac

main:
	mov SP, #0x7f
	mov LEDRA, #0 ; Bit addressable
	mov LEDRB, #0 ; Not bit addressable
	mov R3, #0x12
	mov R4, #0x59
	mov R5, #0x48
Forever:
	Display_at(HEX4, HEX5, R3)
	Display_at(HEX2, HEX3, R4)
	Display_at(HEX0, HEX1, R5)
	jnb KEY.3, skip_hour
	mov R3, SWA
skip_hour:
	jnb KEY.3, skip_min
	mov R4, SWA
skip_min:
	jnb KEY.3, skip_sec
	mov R5, SWA
skip_sec:
	
	lcall Delay
	
	Increment_BCD(R5)
	cjne a, #0x60, Forever
	mov R5, #0
	
	Increment_BCD(R4)
	cjne a, #0x60, Forever
	mov R4, #0
	
	Increment_BCD(R3)
	cjne a, #0x13, Forever
	mov R3, #1

	ljmp Forever ; Repeat forever
END
