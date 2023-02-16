// this program adds R0 and R1 together and displays the result in R2


    @R0
    D=M   // R0 D = R0 Memory

    @R1
    D=D+M // D R1 = D R1 + R1 M

    @R2
    M=D   // R2 ram = D from R1
  (end)
    @end  
    0;JMP