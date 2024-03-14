$MODDE0CV ; Special Function Registers declaration for CV-8052

org 0000H ; After reset, the processor starts at location zero

	mov LEDRA, #0 ; Bit addressable
	mov LEDRB, #0 ; Not bit addressable
Forever:
	cpl LEDRA.0 ; Turn LEDR0 on/off
	ljmp Forever     ; Repeat forever
END
