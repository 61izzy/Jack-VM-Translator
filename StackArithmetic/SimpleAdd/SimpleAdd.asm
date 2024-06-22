// debug: push constant 7
@7
D=A
@SP
M=M+1
A=M-1
M=D
// debug: push constant 8
@8
D=A
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
