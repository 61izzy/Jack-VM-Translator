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
// debug: arithmetic add
@SP
AM=M-1
D=M
A=A-1
M=D+M
