ORG 0100H

.DATA
M1 DB 'ENTER YOUR PASSWORD $'
M2 DB 10,13,'CORRECT PASSWORD $'
M3 DB 10,13,'WRONG PASSWORD $'
PASS DB 'AMIN$'
PASS1 DW 4

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV CX,PASS1
    MOV SI,OFFSET PASS
    
    MOV AH,9
    LEA DX,M1
    INT 21H
    
    L1:
    MOV AH,8
    INT 21H
    
    CMP AL,[SI]
    JNE L2
    INC SI
    LOOP L1
    
    
    MOV AH,9
    LEA DX,M2
    INT 21H 
    JMP EXIT
    
    L2: 
    MOV AH,9
    LEA DX,M3
    INT 21H
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN