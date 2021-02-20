ORG 0100H

.DATA
A DB 'ENTER THE FIRST NUMBER $'
B DB 10,13,'ENTER THE SECOND NUMBER $'
C DB 10,13,'THE RESULT IS: $'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,A
    INT 21H
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    
    MOV AH,9
    LEA DX,B
    INT 21H
   
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV AH,1
    INT 21H
    
    MOV BH,AL
    
    
    
    ADD BL,BH
    
    
    MOV AH,9
    LEA DX,C
    INT 21H
    
    MOV AH,2
    SUB BL,48
    MOV DL,BL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN