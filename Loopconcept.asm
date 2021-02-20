ORG 0100H

.DATA

MSG DB 'LOOP CONCEPT $' 
MSG2 DB 'ENTER YOUR VALUE$'
A DB ?

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,MSG
    INT 21H
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H 
    
    MOV AH,9
    LEA DX,MSG2
    INT 21H
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV A,AL 
    
    
    MOV CX,26
    MOV AH,2
    MOV DL,'A'
    
    LEVEL:
    INT 21H
    INC DL
    LOOP LEVEL
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN