ORG 100H

.DATA

A DB ?
B DB ?
C DB ? 

MSG1 DB 'ENTER FIRST NUMBER $'
MSG2 DB 'ENTER SECOND NUMBER $'
MSG3 DB 'THE RESULT IS $'

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,2
    MOV DL,MSG1
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV A,AL
    
    
    MOV AH,2
    MOV DL,MSG2
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV B,AL
    
    XOR AX,AX
    ADD AL,A
    ADD AL,B
    
    MOV C,AL
    SUB C,48
    
    
    MOV AH,2
    MOV DL,MSG3
    INT 21H
    
    MOV AH,2
    MOV DL,C
    INT 21H
    
    MOV AH,2
    MOV AH,10
    INT 21H
    MOV AH,13
    INT 21H 
    
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN