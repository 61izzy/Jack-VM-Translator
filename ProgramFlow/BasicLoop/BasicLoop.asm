// debug: push constant 0
D=0
@SP
M=M+1
A=M-1
M=D
// debug: pop local 0
D=0
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// debug: label LOOP
($LOOP)
// debug: push argument 0
D=0
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// debug: push local 0
D=0
@LCL
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
// debug: pop local 0
D=0
@LCL
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// debug: push argument 0
D=0
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// debug: push constant 1
D=1
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
// debug: pop argument 0
D=0
@ARG
D=D+M
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// debug: push argument 0
D=0
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// debug: if-goto LOOP
@SP
AM=M-1
D=M
@$LOOP
D;JNE
// debug: push local 0
D=0
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
