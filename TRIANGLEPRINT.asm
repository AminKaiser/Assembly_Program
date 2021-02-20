ORG 0100H
.DATA

.CODE

MAIN PROC
    MOV CX,4
    
    LEVEL1:
    MOV BX,CX
    
    LEVEL2:
    MOV AH,2
    MOV DL,'*'
    INT 21H
    LOOP LEVEL2
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    
    MOV CX,BX
    LOOP LEVEL1
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN