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

    // @24576
    // D=M

    // @WHITE
    // D;JEQ

    @i
    M=0

    @8192
    D=A

    @R1
    M=D

    @SCREEN
    D=A

    @address
    M=D

(BLACK)

    @i
    D=M


    @R1
    D=D-M

    @END
    D;JEQ

    @i
    D=M

    @address
    A=M+D
    M=0

    @i
    M=M+1

    @BLACK
    0;JMP

// (WHITE)
//     @i
//     D=M


//     @R1
//     D=D-M

//     @END
//     D;JEQ

//     @i
//     D=M

//     @address
//     A=A+D
//     M=0

//     @i
//     M=M+1

//     @WHITE
//     0;JMP



(END)
    @INF_LOOP
    0;JMP
