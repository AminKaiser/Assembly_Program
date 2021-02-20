ORG 0100H

.DATA
M1 DB 'ENTER THE VALUE OF N : $'
M2 DB 10,13,'THE RESULT IS : $'
N DB ?
S DB 0

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,M1
    INT 21H
    
    MOV AH,1
    INT 21H
    SUB AL,48
    MOV N,AL
    
    MOV BL,1
    
    SUM:
    CMP  BL,N
    JG EXIT
    ADD S,BL
    INC BL
    JMP SUM 
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    
    
    EXIT:
    MOV AH,9
    LEA DX,M2
    INT 21H 
    MOV AH,2
    MOV DL,S
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN