// debug: push constant 17
@17
D=A
@SP
M=M+1
A=M-1
M=D
// debug: push constant 17
@17
D=A
@SP
M=M+1
A=M-1
M=D
// debug: eq
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
D=D-M
@R15
M=0
@COMPLABEL1
D;JNE
@R15
M=-1
(COMPLABEL1)
// debug: push R 15
@R15
D=M
@SP
M=M+1
A=M-1
M=D
// debug: push constant 17
@17
D=A
@SP
M=M+1
A=M-1
M=D
// debug: push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D
// debug: eq
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
D=D-M
@R15
M=0
@COMPLABEL2
D;JNE
@R15
M=-1
(COMPLABEL2)
// debug: push R 15
@R15
D=M
@SP
M=M+1
A=M-1
M=D
// debug: push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D
// debug: push constant 17
@17
D=A
@SP
M=M+1
A=M-1
M=D
// debug: eq
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
D=D-M
@R15
M=0
@COMPLABEL3
D;JNE
@R15
M=-1
(COMPLABEL3)
// debug: push R 15
@R15
D=M
@SP
M=M+1
A=M-1
M=D
// debug: push constant 892
@892
D=A
@SP
M=M+1
A=M-1
M=D
// debug: push constant 891
@891
D=A
@SP
M=M+1
A=M-1
M=D
// debug: lt
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
D=D-M
@R15
M=0
@COMPLABEL4
D;JGE
@R15
M=-1
(COMPLABEL4)
// debug: push R 15
@R15
D=M
@SP
M=M+1
A=M-1
M=D
// debug: push constant 891
@891
D=A
@SP
M=M+1
A=M-1
M=D
// debug: push constant 892
@892
D=A
@SP
M=M+1
A=M-1
M=D
// debug: lt
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
D=D-M
@R15
M=0
@COMPLABEL5
D;JGE
@R15
M=-1
(COMPLABEL5)
// debug: push R 15
@R15
D=M
@SP
M=M+1
A=M-1
M=D
// debug: push constant 891
@891
D=A
@SP
M=M+1
A=M-1
M=D
// debug: push constant 891
@891
D=A
@SP
M=M+1
A=M-1
M=D
// debug: lt
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
D=D-M
@R15
M=0
@COMPLABEL6
D;JGE
@R15
M=-1
(COMPLABEL6)
// debug: push R 15
@R15
D=M
@SP
M=M+1
A=M-1
M=D
// debug: push constant 32767
@32767
D=A
@SP
M=M+1
A=M-1
M=D
// debug: push constant 32766
@32766
D=A
@SP
M=M+1
A=M-1
M=D
// debug: gt
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
D=D-M
@R15
M=0
@COMPLABEL7
D;JLE
@R15
M=-1
(COMPLABEL7)
// debug: push R 15
@R15
D=M
@SP
M=M+1
A=M-1
M=D
// debug: push constant 32766
@32766
D=A
@SP
M=M+1
A=M-1
M=D
// debug: push constant 32767
@32767
D=A
@SP
M=M+1
A=M-1
M=D
// debug: gt
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
D=D-M
@R15
M=0
@COMPLABEL8
D;JLE
@R15
M=-1
(COMPLABEL8)
// debug: push R 15
@R15
D=M
@SP
M=M+1
A=M-1
M=D
// debug: push constant 32766
@32766
D=A
@SP
M=M+1
A=M-1
M=D
// debug: push constant 32766
@32766
D=A
@SP
M=M+1
A=M-1
M=D
// debug: gt
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
D=D-M
@R15
M=0
@COMPLABEL9
D;JLE
@R15
M=-1
(COMPLABEL9)
// debug: push R 15
@R15
D=M
@SP
M=M+1
A=M-1
M=D
// debug: push constant 57
@57
D=A
@SP
M=M+1
A=M-1
M=D
// debug: push constant 31
@31
D=A
@SP
M=M+1
A=M-1
M=D
// debug: push constant 53
@53
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
// debug: push constant 112
@112
D=A
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
// debug: neg
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
M=-M
// debug: push R 13
@R13
D=M
@SP
M=M+1
A=M-1
M=D
// debug: and
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
M=D&M
// debug: push R 13
@R13
D=M
@SP
M=M+1
A=M-1
M=D
// debug: push constant 82
@82
D=A
@SP
M=M+1
A=M-1
M=D
// debug: or
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
M=D|M
// debug: push R 13
@R13
D=M
@SP
M=M+1
A=M-1
M=D
// debug: not
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
M=!M
// debug: push R 13
@R13
D=M
@SP
M=M+1
A=M-1
M=D
