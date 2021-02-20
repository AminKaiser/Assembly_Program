ORG 0100H

.DATA
A DB ? 
B DB ?
C DB ?
D DB 'RESULT IS : $'
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    MOV A,AL
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV B,AL
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    XOR AL,AL
    
    ADD AL,A 
    ADD AL, B
    SUB AL,48
    MOV C, AL
    
    
    MOV AH,9
    LEA DX,D
    INT 21H
    
    MOV AH,2
    MOV DL,C
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
    
    
    MAIN ENDP
END MAIN