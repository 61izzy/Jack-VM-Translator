// debug: push constant 3030
@3030
D=A
@SP
M=M+1
A=M-1
M=D
// debug: pop pointer 0
@THIS
D=A
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// debug: push constant 3040
@3040
D=A
@SP
M=M+1
A=M-1
M=D
// debug: pop pointer 1
@THAT
D=A
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// debug: push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D
// debug: pop this 2
@2
D=A
@THIS
A=D+M
D=A
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// debug: push constant 46
@46
D=A
@SP
M=M+1
A=M-1
M=D
// debug: pop that 6
@6
D=A
@THAT
A=D+M
D=A
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// debug: push pointer 0
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
// debug: push pointer 1
@THAT
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
// debug: push this 2
@2
D=A
@THIS
A=D+M
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
// debug: push that 6
@6
D=A
@THAT
A=D+M
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
