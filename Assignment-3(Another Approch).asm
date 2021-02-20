ORG 0100H

.CODE
MAIN PROC 
    

    
    MOV AH,7
    INPUT:
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    INT 21H
    
    MOV CL,5
    MOV AH,2
    OUTPUT:
    MOV DL,'X'
    INT 21H 
    LOOP OUTPUT
    
    MAIN ENDP
END MAIN
    