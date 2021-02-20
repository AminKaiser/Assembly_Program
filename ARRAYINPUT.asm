ORG 0100H

.DATA

M1 DB 'ENTER YOUR NUMBERS : $'

NUMBER DB 10 DUP('$')



.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX 
    
    XOR CX,CX
    
     SI,NUMBER
    
    MOV AH,9
    LEA DX,M1
    INT 21H
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    INPUT:
    MOV AH,1
    INT 21H 
    CMP AL,13
    JE DISPLAY
    MOV [SI],AL 
    ADD SI,1
    INC CX
    JMP INPUT
    
    
    
    
    DISPLAY: 
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H 
    
    MOV AH,9
    LEA DX,NUMBER
    INT 21H
    
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN

