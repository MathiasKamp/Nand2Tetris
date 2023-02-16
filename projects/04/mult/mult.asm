// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

  @R2
  M=0     // R2 = 0
  @i
  M=0     // i=0 assign a random space in the memory to i . like R16
(LOOP)
  @i
  D=M     // take i memory space and add to D register
  @R0     
  D=D-M   // set d-register =i-R0
  @END    // go to the END definition if i-R0 => 0
  D;JGE   // if i-R0 => 0 goto END

  @R1     // set register R1
  D=M     // set d- register =R1
  @R2     // set R2
  M=D+M   // get set memory register R2 =R2+R1
  @i      // define a "goto i register i memory"
  M=M+1   // set i register =i+1
  @LOOP   // go back to LOOP
  0;JMP   // Repeat
(END)     // infinite LOOP
  @END
  0;JMP