ORG 0100H

.DATA
M1 DB 'ENTER A LOWER CASE CHARACTER : $'
M2 DB 10,13,'UPPER CASE CHARACTER IS : $'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,M1
    INT 21H 
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    SUB BL,32
    
    MOV AH,9
    LEA DX,M2
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
    
    