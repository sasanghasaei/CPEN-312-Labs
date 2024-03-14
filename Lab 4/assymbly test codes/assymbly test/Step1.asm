; Blinky.asm: blinks LEDR0 of the CV-8052 each second.


$MODDE0CV ; Special Function Registers declaration for CV-8052

org 0000H ; After reset, the processor starts at location zero
	ljmp myprogram
	
; For a 33.33 MHz clock takes 30ns

WaitHalfSec:
	mov R2, #90
L3: mov R1, #250
L2: mov R0, #250
L1: djnz R0, L1 ; 3 machine cycles -> 3*30ns*250 = 22.5 us
	djnz R1, L2 ; 22.5 us * 250 = 5.625 ms
	djnz R2, L3 ; 5.625 ms * 90 = 0.5 s (approximately)
	ret

myprogram:
	mov SP, #7FH
	mov LEDRA,#0
	mov LEDRB,#0

M0:
	cpl LEDRA.0 ; Turn LEDR0 on/off
	lcall WaitHalfSec
	sjmp M0     
END
