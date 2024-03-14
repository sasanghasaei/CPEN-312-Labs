$MODDE0CV ; Special Function Registers declaration for CV-8052

org 0000H ; After reset, the processor starts at location zero

	mov LEDRA, #0 ; Bit addressable
	mov LEDRB, #0 ; Not bit addressable
Forever:
	cpl LEDRA.0  ; Turn LEDR0 on/off
	lcall Delay
	ljmp Forever ; Repeat forever
	
Delay:
	mov R0, #250
L0:	djnz R0, L0 ; 3 machine cycles-> 3*30ns*250=22.5us
	ret
END
