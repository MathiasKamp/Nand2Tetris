// Performing system initialization
// Initialize the stack pointer to 256
@256
D=A
@SP
M=D
// Set LCL, ARG, THIS, and THAT to -1
A=A+1
M=-1
A=A+1
M=-1
A=A+1
M=-1
A=A+1
M=-1
// Call Sys.init
@Sys.init
D=A
@R15
M=D
@0
D=A
@R14
M=D
@_1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP
D=M
@LCL
M=D
@R14
D=D-M
@5
D=D-A
@ARG
M=D
@R15
A=M
0;JMP
(_1)
// Loop forever
@_2
(_2)
0;JMP
// Processing file C:\Users\mk\Documents\dokumenter\skole\ZBC\ZBC moduler\H5\Nand2Tetris\Software\nand2tetris\projects\08\ProgramFlow\BasicLoop\BasicLoop.vm; short file name = C:\Users\mk\Documents\dokumenter\skole\ZBC\ZBC moduler\H5\Nand2Tetris\Software\nand2tetris\projects\08\ProgramFlow\BasicLoop\BasicLoop
// Line 1: // This file is part of www.nand2tetris.org
// Line 2: // and the book "The Elements of Computing Systems"
// Line 3: // by Nisan and Schocken, MIT Press.
// Line 4: // File name: projects/08/ProgramFlow/BasicLoop/BasicLoop.vm
// Line 5: 
// Line 6: // Computes the sum 1 + 2 + ... + argument[0] and pushes the 
// Line 7: // result onto the stack. Argument[0] is initialized by the test 
// Line 8: // script before this code starts running.
// Line 9: push constant 0    
// Line 9: command = push, arg1 = constant, arg2 = 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
// Line 10: pop local 0         // initializes sum = 0
// Line 10: command = pop, arg1 = local, arg2 = 0
@LCL
D=M
@0
D=D+A
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// Line 11: label LOOP_START
// Line 11: command = label, arg1 = LOOP_START, arg2 = 
(C:\Users\mk\Documents\dokumenter\skole\ZBC\ZBC moduler\H5\Nand2Tetris\Software\nand2tetris\projects\08\ProgramFlow\BasicLoop\BasicLoop$$LOOP_START)
// Line 12: push argument 0    
// Line 12: command = push, arg1 = argument, arg2 = 0
@ARG
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Line 13: push local 0
// Line 13: command = push, arg1 = local, arg2 = 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Line 14: add
// Line 14: command = add, arg1 = add, arg2 = 
@SP
AM=M-1
D=M
A=A-1
M=M+D
// Line 15: pop local 0	        // sum = sum + counter
// Line 15: command = pop, arg1 = local, arg2 = 0	
@LCL
D=M
@0	
D=D+A
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// Line 16: push argument 0
// Line 16: command = push, arg1 = argument, arg2 = 0
@ARG
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Line 17: push constant 1
// Line 17: command = push, arg1 = constant, arg2 = 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1
// Line 18: sub
// Line 18: command = sub, arg1 = sub, arg2 = 
@SP
AM=M-1
D=M
A=A-1
M=M-D
// Line 19: pop argument 0      // counter--
// Line 19: command = pop, arg1 = argument, arg2 = 0
@ARG
D=M
@0
D=D+A
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// Line 20: push argument 0
// Line 20: command = push, arg1 = argument, arg2 = 0
@ARG
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
// Line 21: if-goto LOOP_START  // If counter > 0, goto LOOP_START
// Line 21: command = if-goto, arg1 = LOOP_START, arg2 = 
@SP
AM=M-1
D=M
@C:\Users\mk\Documents\dokumenter\skole\ZBC\ZBC moduler\H5\Nand2Tetris\Software\nand2tetris\projects\08\ProgramFlow\BasicLoop\BasicLoop$$LOOP_START
D;JNE
// Line 22: push local 0
// Line 22: command = push, arg1 = local, arg2 = 0
@LCL
D=M
@0
D=D+A
A=D
D=M
@SP
A=M
M=D
@SP
M=M+1
