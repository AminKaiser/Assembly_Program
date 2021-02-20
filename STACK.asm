INCLUDE  'EMU8086.INC'
ORG 0100H

.CODE
MAIN PROC
    PRINT 'ENTER : '
    
    
    XOR CX,CX
    
    INPUT:
    MOV AH,1
    INT 21H
    CMP AL,13
    JE EXIT
    PUSH AX
    INC CX
    JMP INPUT
    
    EXIT:
    PRINTN
    PRINTN 'OUTPUT : '  
    
    OUTPUT:
        MOV AH,2
        POP DX
        INT 21H
        LOOP OUTPUT
        
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN