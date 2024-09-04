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
 
 
Reset_Handler

   	  LDR R0, =0x20000000
	  LDR R1, =0x20000004
	  LDR R0, [R0]
	  LDR R1, [R1]
	  ADD R2, R1, R0
	  LDR R3, =0x20000010
	  STR R2, [R3]
 
	  END	
