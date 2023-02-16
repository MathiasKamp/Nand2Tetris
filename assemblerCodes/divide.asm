// this program devides two numbers together

// Dividering. Baseret på "multiply.asm".
// R2=R0/R1
// R0 og R1 udfyldes før kørsel.
// Resultat vises i R2.
// R3 benyttes til mellemregning.
// NB: kan ikke håndtere kommatal,
// så eksempelvis 10/4=2, og ikke 2,5.

    // setup and reset of variables

    @R0
    D=M
    @R4   // set a temp variable of R0 memory used to do calculations
    M=D
    @R2   // set as a counter
    M=1   // start counter at 1
    @R1   
    D=M   // set d register = R1 memory
    @R3 
    M=D    // set R3 as temp variable of R1

  (LOOP)

    @R3
    D=M    // set R
    @R4    // variable holding R0 used for calculations
    M=M-D  // set Memory R4 = R4 memory - R3 Memory
    D=M    // set d register = R4 memory for comparision
    @END
    D;JLE  // if R4 memory <= 0 goto END
    @R2   
    M=M+1  // count R2 = R2 + 1
    @LOOP
    0;JMP  
    
  (END)
    @END
    0;JMP