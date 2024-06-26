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
D=D+M
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
D=D+M
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
// debug: arithmetic add
@SP
AM=M-1
D=M
A=A-1
M=D+M
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
// debug: arithmetic sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
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
// debug: arithmetic add
@SP
AM=M-1
D=M
A=A-1
M=D+M
