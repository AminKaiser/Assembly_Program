ORG 0100H 

.DATA
C DB ?

.CODE
MAIN PROC
    MOV AH,1
    INT 21H
    MOV C,AL 
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV CL,80        
    
    PRINT:
    MOV AH,2
    MOV DL,C
    INT 21H
    LOOP PRINT
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN