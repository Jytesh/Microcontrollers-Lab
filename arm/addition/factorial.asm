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

		LDR R0, =0x04
		LDR R1, =0x1
LOOP	MUL R1, R0
		SUBS R0, #1
		BNE LOOP
		END
		