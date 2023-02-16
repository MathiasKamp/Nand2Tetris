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


    @currentKeyBoardStatus
    M=0        
    D=0        // set currentKeyBoardStatus D = 0 (white color)

  (KEYBOARDLOOP)
    @KBD
    D=M         // D = current keyboard character
    @SETSCREEN
    D;JEQ       // if currentKeyBoardStatus = 0 (no key is pressed) set the screen to white
    D=-1        // else set D = -1 (black)
  (SETSCREEN)   // D has been set from KEYBOARDLOOP before jumping to this part   
    @tempKeyBoardStatus
    M=D         // Save new status arg
    @currentKeyBoardStatus  
    D=D-M       // calculate the difference between currentKeyBoardStatus and the tempKeyBoardStatus
    @KEYBOARDLOOP       // parse the new KeyBoardStatus to D and parase it to the loop
    D;JEQ       // JUMP to loop if old currentKeyBordStatus = tempKeyBoardStatus meaning that no key was pressed

    @tempKeyBoardStatus //
    D=M         // get the tempKeyBoardStatus value
    @currentKeyBoardStatus     
    M=D         // store tempKeyBoardStatus into currentKeyBoardStatus

    @SCREEN
    D=A         // D=Screen address
    @8192
    D=D+A       // add 8192 registers to the screen address = 24575 (the last register on the screen) bottom right corner
    @i          // set the i variable
    M=D         // set i variable RAM = the last register of the screen

  (SCREENCOLORINGLOOP)    
    @i          
    D=M-1       // i = i - 1
    M=D         // set i memory = D
    @KEYBOARDLOOP
    D;JLT       // if i<0 goto LOOP

    @currentKeyBoardStatus
    D=M         // D=the currentKeyBoardStatus
    @i
    A=M         
    M=D         // M[current screen address]=status
    @SCREENCOLORINGLOOP
    0;JMP
