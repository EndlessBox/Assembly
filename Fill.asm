// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.




(INF_LOOP)

    @i          // Initialize counter.
    M=0

    @KBD        // Get Keyboard Value.
    D=M

    @WHITE      // Check if Key[value] = 0 == White color.
    D;JEQ

    @8192       // Set Screen Pixels Limits
    D=A


    @R1         // Store it in R1
    M=D

    @SCREEN     // Get SCREEN Address
    D=A

    @address    // Store it at address
    M=D

(BLACK)

    @i          // Get counte value
    D=M


    @R1         // Check if it reached limit of Screen
    D=M-D

    @END
    D;JEQ

    @address    // Get Screen address
    D=M

    @i          // Add counter to Screen address
    A=D+M
    M=-1        // Pint Pixel Black

    @i          // Increment counter
    M=M+1

    @BLACK      // Reapeat
    0;JMP

(WHITE)
    @i
    D=M


    @R1
    D=M-D

    @END
    D;JEQ

    @address
    D=M

    @i
    A=D+M
    M=0         // Pint Pixel White

    @i
    M=M+1

    @WHITE
    0;JMP



(END)
    @INF_LOOP
    0;JMP
