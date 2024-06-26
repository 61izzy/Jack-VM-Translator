// debug: push argument 1
D=1
@ARG
A=D+M
D=M
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
// debug: push constant 0
D=0
@SP
M=M+1
A=M-1
M=D
// debug: pop that 0
D=0
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
// debug: push constant 1
D=1
@SP
M=M+1
A=M-1
M=D
// debug: pop that 1
D=1
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
// debug: push argument 0
D=0
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// debug: push constant 2
@2
D=A
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
// debug: if-goto COMPUTE_ELEMENT
@SP
AM=M-1
D=M
@$COMPUTE_ELEMENT
D;JNE
// debug: goto END
@$END
0;JMP
// debug: label COMPUTE_ELEMENT
($COMPUTE_ELEMENT)
// debug: push that 0
D=0
@THAT
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// debug: push that 1
D=1
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
// debug: pop that 2
@2
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
// debug: push pointer 1
@THAT
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
// debug: arithmetic add
@SP
AM=M-1
D=M
A=A-1
M=D+M
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
// debug: goto LOOP
@$LOOP
0;JMP
// debug: label END
($END)
