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
    DB 08H, 03H, 46H, 11H, 06H
    DB 0EH

Display_Number:
	mov dptr, #T_7seg
	mov a, R7
	anl a, #0x0f ; Force bits 4 to 7 to zero
	movc a, @dptr+a ; Read from table
	mov HEX0, a ; Display low nibble
	mov a, R7
	swap a ; exchange bits 0 to 3 with bits 4 to 7
	anl a, #0x0f ; Force bits 4 to 7 to zero
	movc a, @dptr+a ; ; Read from table
	mov HEX1, a ; Display high nibble
	ret
		
Delay:
	mov R2, #90
L2: mov R1, #250
L1: mov R0, #250
L0: djnz R0, L0 ; 3 machine cycles-> 3*30ns*250=22.5us
	djnz R1, L1 ; 22.5us*250=5.625ms
	djnz R2, L2 ; 5.625ms*90=0.506s (approximately)
	ret

Show mac
	mov R7, %0
	lcall Display_Number
	lcall Delay
endmac

main:
	mov SP, #0x7f
	mov LEDRA, #0 ; Bit addressable
	mov LEDRB, #0 ; Not bit addressable
Forever:
	Show(#0x00)
	Show(#0x55)
	Show(#0xAA)
	ljmp Forever ; Repeat forever
END
