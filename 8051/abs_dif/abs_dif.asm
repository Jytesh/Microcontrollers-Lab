MOV R4, 08h
MOV R1, #30h
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
MOV R7, A
MOV A, R2
ADD A, R7
MOV R2, A
JC addcarry
resumeADC:
INC R1
INC R0
DJNZ R4, go
END 

