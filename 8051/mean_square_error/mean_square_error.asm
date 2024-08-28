MOV R4, 08h
MOV R1, #20h
MOV R0, #40h
MOV R2, #00h
MOV R3, #00h

JMP go
swpsub:
CLR C
CLR AC
MOV B, @R0
MOV A, @R1
SUBB A, B
JMP resume

addcarry:
MOV A, R3

ADD A, #1
MOV R3, A 
JMP resumeADC

go:
MOV A, @R0
MOV B, @R1
SUBB A, B
JC swpsub
resume:
MOV B, A ; square ( A is abs diff )
MUL AB
MOV R6, B
ADD A, R2
MOV R2, A
JC addcarry
resumeADC:
MOV A, R3
ADD A, R6
MOV R3, A
INC R1
INC R0
DJNZ R4, go
MOV A, R2
MOV B, 08h
DIV AB
MOV 09h, A
MOV A, R3
MOV B, 08h
DIV AB
MOV 10h, A
END 



