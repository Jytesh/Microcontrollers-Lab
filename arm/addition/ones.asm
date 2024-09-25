;       Count the number of ones in the input
        THUMB       
        AREA    RESET, DATA, READONLY
        EXPORT  __Vectors
    
    __Vectors 
        DCD 0x20001000
        DCD  Reset_Handler 
        ALIGN
    
        AREA    MYCODE, CODE, READONLY
        ENTRY
        EXPORT Reset_Handler

		LDR R0, =0x20000000
		LDR R0, [R0]
		LDR R1, =32
		LDR R2, =0
LOOP	LSLS R0, #1
		ADDCS R2, #1
		SUB R1, #1
		BNE LOOP
		END