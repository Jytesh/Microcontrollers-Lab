MOV DX, 2000h
MOV AH, 01
MOV AL, 01
MOV BX, 2001h
go: MOV [BX], AL
MOV CH, AL
ADD AL, AH
MOV AH, CH
INC BX
CMP AL, [2000h]
JLE go
HLT

