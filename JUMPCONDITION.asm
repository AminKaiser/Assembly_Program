ORG 0100H

.DATA
M1 DB 'BISMILLAH$',10,13

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV CX,5
    MOV BX,0
    
    START:
    CMP BX,CX
    JE EXIT
    
    MOV AH,9
    LEA DX,M1
    INT 21H 
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    INC BX
    JNE START
    
    
    
    
    EXIT:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
    