// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

    @i          // Initialize counter i = 1
    M=0

    @R2         // Initialize result register R2 = 0
    M=0

(LOOP)
	@i
	D=M

    @R1         // Check if counter reached max.
    D=M-D

    @END
    D;JEQ

    @R0         // Get R0 Valiue
    D=M

    @R2         // Store Addition of R0 Value with itself in R2
    M=M+D

    @i          // Increment counter.
    M=M+1

    @LOOP       // Go to LOOP.
    0;JMP

(END)
	@END
	0;JMP