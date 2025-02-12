@256
D=A
@SP
M=D
@Sys.init_RETURN_0 // call Sys.init 0
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
@0
D=A
@5
D=D+A
@SP
D=M-D
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.init
0;JMP
(Sys.init_RETURN_0)
@256 // push constant 256
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // pop pointer 0
M=M-1
A=M
D=M
@R3
M=D
@300 // push constant 300
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // pop pointer 1
M=M-1
A=M
D=M
@R4
M=D
@400 // push constant 400
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // pop pointer 2
M=M-1
A=M
D=M
@R5
M=D
@500 // push constant 500
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // pop pointer 3
M=M-1
A=M
D=M
@R6
M=D
@600 // push constant 600
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // pop pointer 4
M=M-1
A=M
D=M
@R7
M=D
@10 // push constant 10
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL // pop local 0
D=M
@0
D=D+A
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D
@21 // push constant 21
D=A
@SP
A=M
M=D
@SP
M=M+1
@22 // push constant 22
D=A
@SP
A=M
M=D
@SP
M=M+1
@ARG // pop argument 2
D=M
@2
D=D+A
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D
@ARG // pop argument 1
D=M
@1
D=D+A
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D
@36 // push constant 36
D=A
@SP
A=M
M=D
@SP
M=M+1
@THIS // pop this 6
D=M
@6
D=D+A
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D
@42 // push constant 42
D=A
@SP
A=M
M=D
@SP
M=M+1
@45 // push constant 45
D=A
@SP
A=M
M=D
@SP
M=M+1
@THAT // pop that 5
D=M
@5
D=D+A
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D
@THAT // pop that 2
D=M
@2
D=D+A
@R13
M=D
@SP
M=M-1
A=M
D=M
@R13
A=M
M=D
@510 // push constant 510
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP // pop temp 6
M=M-1
A=M
D=M
@R11
M=D
@LCL // push local 0
D=M
@0
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT // push that 5
D=M
@5
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // add
M=M-1
A=M
D=M
A=A-1
M=D+M
@ARG // push argument 1
D=M
@1
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // sub
M=M-1
A=M
D=M
A=A-1
M=M-D
@THIS // push this 6
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS // push this 6
D=M
@6
A=D+A
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // add
M=M-1
A=M
D=M
A=A-1
M=D+M
@SP // sub
M=M-1
A=M
D=M
A=A-1
M=M-D
@R11 // push temp 6
D=M
@SP
A=M
M=D
@SP
M=M+1
@SP // add
M=M-1
A=M
D=M
A=A-1
M=D+M
