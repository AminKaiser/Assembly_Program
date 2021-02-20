INCLUDE 'EMU8086.INC'
ORG 0100H

.DATA
M1 DB 10,13,'ENTER NUMBERS: $'
M2 DB 'ENTER HOW MANY INPUT : $'
NUMBER DB 5 DUP(?)
N DB ? 
R DB 0
.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    MOV AH,9
    LEA DX,M2
    INT 21H
    
    MOV AH,1
    INT 21H 
    SUB AL,48
    MOV N,AL
    
    MOV AH,9
    LEA DX,M1
    INT 21H
    
    MOV CL,N 
    
    XOR BX,BX 
    
    INPUT:
    MOV AH,1
    INT 21H 
    SUB AL,48
    MOV NUMBER[BX],AL
    ADD R,AL
    INC BX
    LOOP INPUT
    
    XOR BX,BX
    MOV CL,N
    
    PRINTN
    PRINT 'YOU ENTERED : '
    OUTPUT:
    MOV AH,2
    MOV DL,NUMBER[BX] 
    ADD DL,48
    INT 21H
    INC BX
    LOOP OUTPUT
    
    PRINTN 'THE ADDITION IS : '
    
    
    MOV DL,R 
    ADD DL,48
    MOV AH,2
    INT 21H
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP 
END MAIN
    
    