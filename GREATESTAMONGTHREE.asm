ORG 0100H

.DATA

M1 DB 'ENTER THE FIRST NUMBER : $'
M2 DB 10,13,'ENTER THE SECOND NUMBER : $'
M4 DB 10,13,'ENTER THE SECOND NUMBER : $'
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
    LEA DX,M4
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV CL,AL
    
    MOV AH,9
    LEA DX,M3
    INT 21H 
    
    
    
    LEVEL1:
    CMP BL,BH
    JGE L1
    JMP L2
    
    L1:
    CMP BL,CL
    JGE A
    JMP C
    
    C:
    MOV AH,2
    MOV DL,CL
    INT 21H
    JMP EXIT
    
    L2:
    CMP BH,CL
    JGE B
    JMP C
    
    B:
    MOV AH,2
    MOV DL,BH
    INT 21H
    JMP EXIT
    
    A:
    MOV AH,2
    MOV DL,BL
    INT 21H
    JMP EXIT
    
    EXIT:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
