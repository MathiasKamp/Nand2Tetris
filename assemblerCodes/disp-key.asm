// Tastatur hjælpeprogram.
// Når der tastes en tast på tastaturet,
// vises dens værdi i M[24575], hvilket er pladen før KBD.
// Programmet skal helst køres med "Animate=Program flow",
// da memory ellers ikke opdateres i CPU emulatoren.

  (LOOP)
    @KBD
    D=M   // set D = the value of @KBD address 24576
    @R0
    M=D   // set Memory of R0 = memory of KBD
    @LOOP
    0;JMP

  (END)
    0;JMP