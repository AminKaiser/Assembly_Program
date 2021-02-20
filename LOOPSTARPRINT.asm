ORG 0100H

.DATA

M1 DB 'ENTER N : $'
N DB ?
.CODE 
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,M1
    INT 21H
    
    MOV AH,1
    INT 21H
    SUB AL,48
    MOV N,AL
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    
    MOV BH,1
    MOV CH,N
    
    LOOP1:
        CMP BH,N
        JG LOOP1_EXIT
        MOV BL,1
        
        LOOP2:
            CMP BL,CH
            JG LOOP2_EXIT
            MOV AH,2
            MOV DL,'*'
            INT 21H
            INC BL
            JMP LOOP2
            
            LOOP2_EXIT:
                MOV AH,2
                MOV DL,10
                INT 21H
                MOV DL,13
                INT 21H
                
             INC BH
             DEC CH
             JMP LOOP1
             
      LOOP1_EXIT:
         
             MOV AH,4CH
             INT 21H
             
      MAIN ENDP
END MAIN