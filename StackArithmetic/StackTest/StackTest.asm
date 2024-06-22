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
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@COMPLABEL1
D;JEQ
@SP
A=M-1
M=0
(COMPLABEL1)
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
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@COMPLABEL2
D;JEQ
@SP
A=M-1
M=0
(COMPLABEL2)
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
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@COMPLABEL3
D;JEQ
@SP
A=M-1
M=0
(COMPLABEL3)
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
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@COMPLABEL4
D;JLT
@SP
A=M-1
M=0
(COMPLABEL4)
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
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@COMPLABEL5
D;JLT
@SP
A=M-1
M=0
(COMPLABEL5)
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
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@COMPLABEL6
D;JLT
@SP
A=M-1
M=0
(COMPLABEL6)
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
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@COMPLABEL7
D;JGT
@SP
A=M-1
M=0
(COMPLABEL7)
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
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@COMPLABEL8
D;JGT
@SP
A=M-1
M=0
(COMPLABEL8)
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
@SP
AM=M-1
D=M
A=A-1
D=M-D
M=-1
@COMPLABEL9
D;JGT
@SP
A=M-1
M=0
(COMPLABEL9)
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
@SP
AM=M-1
D=M
A=A-1
M=D+M
// debug: push constant 112
@112
D=A
@SP
M=M+1
A=M-1
M=D
// debug: sub
@SP
AM=M-1
D=M
A=A-1
M=M-D
// debug: neg
@SP
A=M-1
M=-M
// debug: and
@SP
AM=M-1
D=M
A=A-1
M=D&M
// debug: push constant 82
@82
D=A
@SP
M=M+1
A=M-1
M=D
// debug: or
@SP
AM=M-1
D=M
A=A-1
M=D|M
// debug: not
@SP
A=M-1
M=!M
