@256
D=A
@SP
M=D
// debug: call Sys.init 0
@$ret.1
D=A
@SP
M=M+1
A=M-1
M=D
@1
D=M
@SP
M=M+1
A=M-1
M=D
@2
D=M
@SP
M=M+1
A=M-1
M=D
@3
D=M
@SP
M=M+1
A=M-1
M=D
@4
D=M
@SP
M=M+1
A=M-1
M=D
D=A+1
@5
D=D-A
@ARG
M=D
@Sys.init
0;JMP
($ret.1)
// debug: function Class1.set 0
(Class1.set)
@SP
D=M
@LCL
AM=D
// debug: push argument 0
D=0
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// debug: pop static 0
@Class1.0
D=A
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// debug: push argument 1
D=1
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// debug: pop static 1
@Class1.1
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
// debug: return
@5
D=A
@LCL
A=M-D
D=M
@R13
M=D
@SP
A=M-1
D=M
@R14
M=D
@ARG
D=M
@SP
M=D+1
@R14
D=M
@SP
A=M-1
M=D
@1
D=A
@LCL
A=M-D
D=M
@4
M=D
@2
D=A
@LCL
A=M-D
D=M
@3
M=D
@3
D=A
@LCL
A=M-D
D=M
@2
M=D
@4
D=A
@LCL
A=M-D
D=M
@1
M=D
@R13
A=M
0;JMP
// debug: function Class1.get 0
(Class1.get)
@SP
D=M
@LCL
AM=D
// debug: push static 0
@Class1.0
D=M
@SP
M=M+1
A=M-1
M=D
// debug: push static 1
@Class1.1
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
// debug: return
@5
D=A
@LCL
A=M-D
D=M
@R13
M=D
@SP
A=M-1
D=M
@R14
M=D
@ARG
D=M
@SP
M=D+1
@R14
D=M
@SP
A=M-1
M=D
@1
D=A
@LCL
A=M-D
D=M
@4
M=D
@2
D=A
@LCL
A=M-D
D=M
@3
M=D
@3
D=A
@LCL
A=M-D
D=M
@2
M=D
@4
D=A
@LCL
A=M-D
D=M
@1
M=D
@R13
A=M
0;JMP
// debug: function Class2.set 0
(Class2.set)
@SP
D=M
@LCL
AM=D
// debug: push argument 0
D=0
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// debug: pop static 0
@Class2.0
D=A
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// debug: push argument 1
D=1
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// debug: pop static 1
@Class2.1
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
// debug: return
@5
D=A
@LCL
A=M-D
D=M
@R13
M=D
@SP
A=M-1
D=M
@R14
M=D
@ARG
D=M
@SP
M=D+1
@R14
D=M
@SP
A=M-1
M=D
@1
D=A
@LCL
A=M-D
D=M
@4
M=D
@2
D=A
@LCL
A=M-D
D=M
@3
M=D
@3
D=A
@LCL
A=M-D
D=M
@2
M=D
@4
D=A
@LCL
A=M-D
D=M
@1
M=D
@R13
A=M
0;JMP
// debug: function Class2.get 0
(Class2.get)
@SP
D=M
@LCL
AM=D
// debug: push static 0
@Class2.0
D=M
@SP
M=M+1
A=M-1
M=D
// debug: push static 1
@Class2.1
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
// debug: return
@5
D=A
@LCL
A=M-D
D=M
@R13
M=D
@SP
A=M-1
D=M
@R14
M=D
@ARG
D=M
@SP
M=D+1
@R14
D=M
@SP
A=M-1
M=D
@1
D=A
@LCL
A=M-D
D=M
@4
M=D
@2
D=A
@LCL
A=M-D
D=M
@3
M=D
@3
D=A
@LCL
A=M-D
D=M
@2
M=D
@4
D=A
@LCL
A=M-D
D=M
@1
M=D
@R13
A=M
0;JMP
// debug: function Sys.init 0
(Sys.init)
@SP
D=M
@LCL
AM=D
// debug: push constant 6
@6
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
// debug: call Class1.set 2
@Sys.init$ret.1
D=A
@SP
M=M+1
A=M-1
M=D
@1
D=M
@SP
M=M+1
A=M-1
M=D
@2
D=M
@SP
M=M+1
A=M-1
M=D
@3
D=M
@SP
M=M+1
A=M-1
M=D
@4
D=M
@SP
M=M+1
A=M-1
M=D
D=A+1
@7
D=D-A
@ARG
M=D
@Class1.set
0;JMP
(Sys.init$ret.1)
// debug: pop temp 0
@5
D=A
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// debug: push constant 23
@23
D=A
@SP
M=M+1
A=M-1
M=D
// debug: push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D
// debug: call Class2.set 2
@Sys.init$ret.2
D=A
@SP
M=M+1
A=M-1
M=D
@1
D=M
@SP
M=M+1
A=M-1
M=D
@2
D=M
@SP
M=M+1
A=M-1
M=D
@3
D=M
@SP
M=M+1
A=M-1
M=D
@4
D=M
@SP
M=M+1
A=M-1
M=D
D=A+1
@7
D=D-A
@ARG
M=D
@Class2.set
0;JMP
(Sys.init$ret.2)
// debug: pop temp 0
@5
D=A
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// debug: call Class1.get 0
@Sys.init$ret.3
D=A
@SP
M=M+1
A=M-1
M=D
@1
D=M
@SP
M=M+1
A=M-1
M=D
@2
D=M
@SP
M=M+1
A=M-1
M=D
@3
D=M
@SP
M=M+1
A=M-1
M=D
@4
D=M
@SP
M=M+1
A=M-1
M=D
D=A+1
@5
D=D-A
@ARG
M=D
@Class1.get
0;JMP
(Sys.init$ret.3)
// debug: call Class2.get 0
@Sys.init$ret.4
D=A
@SP
M=M+1
A=M-1
M=D
@1
D=M
@SP
M=M+1
A=M-1
M=D
@2
D=M
@SP
M=M+1
A=M-1
M=D
@3
D=M
@SP
M=M+1
A=M-1
M=D
@4
D=M
@SP
M=M+1
A=M-1
M=D
D=A+1
@5
D=D-A
@ARG
M=D
@Class2.get
0;JMP
(Sys.init$ret.4)
// debug: label END
(Sys.init$END)
// debug: goto END
@Sys.init$END
0;JMP
