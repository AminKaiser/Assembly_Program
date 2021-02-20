ORG 0100H

.CODE
MAIN PROC 
    
    MOV CL,5
    
    MOV AH,7
    INPUT:
    INT 21H
    LOOP INPUT
    
    MOV CL,5
    MOV AH,2
    OUTPUT:
    MOV DL,'X'
    INT 21H 
    LOOP OUTPUT
    
    MAIN ENDP
END MAIN
    