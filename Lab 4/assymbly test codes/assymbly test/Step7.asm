$MODDE0CV ; Special Function Registers declaration for CV-8052

org 0000H ; After reset, the processor starts at location zero
	ljmp main
	
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
Forever:
	mov HEX4, #0x61 ; Letter 'J' to HEX4
	lcall Delay
	mov HEX3, #0x06 ; Letter 'E' to HEX3
	lcall Delay
	mov HEX2, #0x12 ; Letter 'S' to HEX2
	lcall Delay
	mov HEX1, #0x41 ; Letter 'U' to HEX1
	lcall Delay
	mov HEX0, #0x12 ; Letter 'S' to HEX0
	lcall Delay
	
	mov HEX4, #0xff ; Clear HEX4
	mov HEX3, #0xff ; Clear HEX3
	mov HEX2, #0xff ; Clear HEX2
	mov HEX1, #0xff ; Clear HEX1
	mov HEX0, #0xff ; Clear HEX0
	lcall Delay
	lcall Delay
	
	ljmp Forever ; Repeat forever	
END
