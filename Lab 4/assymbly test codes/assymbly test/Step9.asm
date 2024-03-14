$MODDE0CV ; Special Function Registers declaration for CV-8052

org 0000H ; After reset, the processor starts at location zero
	ljmp main

LETTER_J EQU #0x61
LETTER_E EQU #0x06
LETTER_S EQU #0x12
LETTER_U EQU #0x41
BLANK    EQU #0xff
	
Delay:
	mov R2, #90
L2: mov R1, #250
L1: mov R0, #250
L0: djnz R0, L0 ; 3 machine cycles-> 3*30ns*250=22.5us
	djnz R1, L1 ; 22.5us*250=5.625ms
	djnz R2, L2 ; 5.625ms*90=0.506s (approximately)
	ret

main:
	mov SP, #0x7f
	mov LEDRA, #0 ; Bit addressable
	mov LEDRB, #0 ; Not bit addressable
	mov HEX5, BLANK
	mov HEX4, LETTER_J
	mov HEX3, LETTER_E
	mov HEX2, LETTER_S
	mov HEX1, LETTER_U
	mov HEX0, LETTER_S
Forever:
	lcall Delay
	mov R4, HEX5	
	mov HEX5, HEX4
	mov HEX4, HEX3
	mov HEX3, HEX2
	mov HEX2, HEX1
	mov HEX1, HEX0
	mov HEX0, R4
	
	ljmp Forever ; Repeat forever	
END
