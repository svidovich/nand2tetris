// This is a multiplication program.
@R2
M=0
(LOOP)
@R0
D=M
@R2
M=M+D
@R1
M=M-1
@R1
D=M
@END
D;JEQ
@LOOP
0;JMP
(END)
0;JMP
