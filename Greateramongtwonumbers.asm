ORG 0100H

.DATA

M1 DB 'ENTER THE FIRST NUMBER : $'
M2 DB 10,13,'ENTER THE SECOND NUMBER : $'
M3 DB 10,13,'THE LARGEST NUMBER IS : $'

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
    
    MOV AH,9
    LEA DX,M2
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BH,AL
    
    MOV AH,9
    LEA DX,M3
    INT 21H
    
    BIG:
    CMP BL,BH
    JG L1
    JMP L2
    
    L1:
    MOV AH,2
    MOV DL,BL
    INT 21H
    JMP EXIT
    
    L2:
    MOV AH,2
    MOV DL,BH
    INT 21H
    JMP EXIT
    
    EXIT:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
