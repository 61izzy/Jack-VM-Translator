// debug: push constant 10
@10
D=A
@SP
M=M+1
A=M-1
M=D
// debug: pop local 0
@0
D=A
@LCL
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
// debug: push constant 21
@21
D=A
@SP
M=M+1
A=M-1
M=D
// debug: push constant 22
@22
D=A
@SP
M=M+1
A=M-1
M=D
// debug: pop argument 2
@2
D=A
@ARG
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
// debug: pop argument 1
@1
D=A
@ARG
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
// debug: push constant 36
@36
D=A
@SP
M=M+1
A=M-1
M=D
// debug: pop this 6
@6
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
// debug: push constant 42
@42
D=A
@SP
M=M+1
A=M-1
M=D
// debug: push constant 45
@45
D=A
@SP
M=M+1
A=M-1
M=D
// debug: pop that 5
@5
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
// debug: pop that 2
@2
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
// debug: push constant 510
@510
D=A
@SP
M=M+1
A=M-1
M=D
// debug: pop temp 6
@11
D=A
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// debug: push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// debug: push that 5
@5
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
// debug: push argument 1
@1
D=A
@ARG
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
// debug: push this 6
@6
D=A
@THIS
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// debug: push this 6
@6
D=A
@THIS
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
// debug: push temp 6
@11
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
