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
		LDR R4, [R0]
		LDR R1, =0x0
		LDR R2, =0x1
		ADD R0, #4
LOOP	MOV R3, R2
		ADD R2, R2, R1
		MOV R1, R3
		STR R2, [R0]
		ADD R0, #4
		CMP R2, R0
		BLE LOOP
		END