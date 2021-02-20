INCLUDE 'EMU8086.INC'
ORG 0100H

.DATA
M1 DB 'ENTER BINARY : $'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LOOP1:
        MOV AH,1
        INT 21H
        CMP AL,13
        JE LOOP1_EXIT
        SUB AL,48
        SHL BX,1
        OR BL,AL
        JMP LOOP1
        
        LOOP1_EXIT:
        PRINTN
        PRINTN
        MOV AH,2
        MOV DL,BL
        ADD DL,48
        INT 21H
        
        
        MOV AH,4CH
        INT 21H
        
   MAIN ENDP 
END MAIN
        