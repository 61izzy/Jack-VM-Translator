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
// debug: function Sys.init 0
(Sys.init)
@SP
D=M
@LCL
AM=D
// debug: push constant 4000
@4000
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
// debug: push constant 5000
@5000
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
// debug: call Sys.main 0
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
@5
D=D-A
@ARG
M=D
@Sys.main
0;JMP
(Sys.init$ret.1)
// debug: pop temp 1
@6
D=A
@R15
M=D
@SP
AM=M-1
D=M
@R15
A=M
M=D
// debug: label LOOP
(Sys.init$LOOP)
// debug: goto LOOP
@Sys.init$LOOP
0;JMP
// debug: function Sys.main 5
(Sys.main)
@SP
D=M
@LCL
AM=D
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
M=0
A=A+1
D=A
@SP
M=D
// debug: push constant 4001
@4001
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
// debug: push constant 5001
@5001
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
// debug: push constant 200
@200
D=A
@SP
M=M+1
A=M-1
M=D
// debug: pop local 1
D=1
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
// debug: push constant 40
@40
D=A
@SP
M=M+1
A=M-1
M=D
// debug: pop local 2
@2
D=A
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
// debug: push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D
// debug: pop local 3
@3
D=A
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
// debug: push constant 123
@123
D=A
@SP
M=M+1
A=M-1
M=D
// debug: call Sys.add12 1
@Sys.main$ret.1
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
@6
D=D-A
@ARG
M=D
@Sys.add12
0;JMP
(Sys.main$ret.1)
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
// debug: push local 0
D=0
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// debug: push local 1
D=1
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// debug: push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// debug: push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// debug: push local 4
@4
D=A
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
// debug: arithmetic add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// debug: arithmetic add
@SP
AM=M-1
D=M
A=A-1
M=D+M
// debug: arithmetic add
@SP
AM=M-1
D=M
A=A-1
M=D+M
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
// debug: function Sys.add12 0
(Sys.add12)
@SP
D=M
@LCL
AM=D
// debug: push constant 4002
@4002
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
// debug: push constant 5002
@5002
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
// debug: push argument 0
D=0
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D
// debug: push constant 12
@12
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
