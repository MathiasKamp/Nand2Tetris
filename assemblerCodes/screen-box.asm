// Pseudo kode

// for (i=0; i<n; i++) {
//     tegn 16 sorte pixels begynd   på række i
// }

// addr = SCREEN
//    n = R0
//    i = 0
//   LOOP:
//      if i > n goto END
//      RAM[ADDR] = -1
//      goto next row
//      addr = addr + 32 // theres 32 words in a row
//    i = i + 1
//    goto LOOP
//   END:
//    goto END

    @12   // use default value of 12 rows to fill
    D=A
    @n
    M=D // n = ram[0]
    @i
    M=0 // i = 0
    // @SCREEN
    @20495 // middle of screen. start = 16384, total registers = 8192, half registers = 8192 / 2. start middle is +16
           // 4096 + 16 + 16384-1 = 20495
    D=A   // D = the memory address of @SCREEN
    @address
    M = D // set @adress M = d (memory address of screen)
  (LOOP)
    @i
    D = M // set i memory = screeen address
    @n    // n is the tempholder of the hardcoded 12 rows to fill
    D = D - M // calculate the difference between i and n
    @END
    D;JGE // if i > n goto END

    @address
    A = M // write Memory to the address
    M = -1 // set the memory = -1 (black)
    @i
    M= M + 1 // i = i + 1
    @32 // theres 32 registers in 1 row there for to skip to next row you'll need to add 32 to address to be able to skip to nexxt row
    D = A // get the address of @32 = 32
    @address
    M = M + D // set @address memory = its current memory if first iteration = 16384 + 32 (the next row on screen)
    @LOOP
    0;JMP
  (END)
    @END
    0;JMP
