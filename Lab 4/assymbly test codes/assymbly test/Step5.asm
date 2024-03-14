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
	cpl LEDRA.0  ; Turn LEDR0 on/off
	lcall Delay
	ljmp Forever ; Repeat forever
	
END
