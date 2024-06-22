// debug: push constant 111
@111
D=A
@SP
M=M+1
A=M-1
M=D
// debug: push constant 333
@333
D=A
@SP
M=M+1
A=M-1
M=D
// debug: push constant 888
@888
D=A
@SP
M=M+1
A=M-1
M=D
// debug: pop static 8
@StaticTest.8
D=A
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// debug: pop static 3
@StaticTest.3
D=A
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// debug: pop static 1
@StaticTest.1
D=A
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// debug: push static 3
@StaticTest.3
D=M
@SP
M=M+1
A=M-1
M=D
// debug: push static 1
@StaticTest.1
D=M
@SP
M=M+1
A=M-1
M=D
// debug: sub
// debug: pop R 13
@R13
D=A
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// debug: pop R 14
@R14
D=A
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
D=M
@R13
M=D-M
// debug: push R 13
@R13
D=M
@SP
M=M+1
A=M-1
M=D
// debug: push static 8
@StaticTest.8
D=M
@SP
M=M+1
A=M-1
M=D
// debug: add
// debug: pop R 13
@R13
D=A
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// debug: pop R 14
@R14
D=A
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
D=M
@R13
M=D+M
// debug: push R 13
@R13
D=M
@SP
M=M+1
A=M-1
M=D
