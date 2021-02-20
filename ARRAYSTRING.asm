INCLUDE 'EMU8086.INC'

.DATA
M1 DB 10 DUP(?)
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    XOR CX,CX
    XOR BX,BX
    
    PRINTN 'ENTER YOUR STRING : '
    
    MOV AH,1
    INPUT:
    INT 21H
    CMP AL,13
    JE DISPLAY
    MOV M1[BX],AL
    INC BX
    INC CX
    JMP INPUT
    
    DISPLAY: 
    PRINTN
    PRINTN 'YOU ENTERED : '
    
    XOR BX,BX
    
    MOV AH,2
    LOOP1:
    MOV DL,M1[BX]
    
    INT 21H
    INC BX
    LOOP LOOP1
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
    
    
    