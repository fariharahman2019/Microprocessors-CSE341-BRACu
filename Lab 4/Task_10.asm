.MODEL SMALL
 
.STACK 100H

.DATA     

Input1 db "ENTER THE FIRST NUMBERS: $"
Input2 db 10,13,"ENTER THE SECOND NUMBERS: $"
Input3 db 10,13, "ENTER THE THIRD NUMBERS: $"

boro db 10,13,'Maximum number is : ','$' 
chhoto db 10,13,'Minimum number is : ','$'

;variables

.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here

mov ah, 9
lea dx, Input1
int 21h
   
mov ah, 1
int 21h

MOV AH,0
MOV BL,AL
SUB BL,30H 


mov ah, 9
lea dx, Input2
int 21h

mov ah, 1
int 21h 

MOV AH,0
MOV BH,AL
SUB BH,30H 


mov ah, 9
lea dx, Input3
int 21h

mov ah, 1
int 21h

MOV AH,0
MOV CL,AL 
SUB CL,30H  



CMP BH,BL
JG B1
XCHG BH,BL
JMP B1

B1:
CMP BH,CL
JG O1
XCHG BH,CL
JMP O1

O1: 
MOV AX,@DATA
MOV DS,AX 
LEA DX, boro
MOV AH,9         
INT 21H 

MOV AH,2 
ADD BH,30H
MOV DL,BH
INT 21H
JMP B2

B2:
CMP BH,BL
JL B3
XCHG BH,BL
JMP B3

B3:
CMP BH,CL
JL O2
XCHG BH,CL
JMP O2


O2: 

LEA DX, chhoto
MOV AH,9         
INT 21H 

MOV AH,2 
ADD BH,30H
MOV DL,BH
INT 21H
JMP END

END:

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  