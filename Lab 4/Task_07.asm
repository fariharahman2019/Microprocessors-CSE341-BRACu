.MODEL SMALL
 
.STACK 100H

.DATA   

Input db "ENTER ANY NUMBER: $"     
jor db 10,13, "EVEN $"
bijor db 10,13, "ODD $"

;variables

.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here


mov ah, 9
lea dx, Input
int 21h

mov ah, 1
int 21h 

mov bl, 2 

div bl

cmp ah, 0   

jne ODD:

mov ah, 9
lea dx, jor
int 21h
jmp F

ODD:
 
mov ah, 9
lea dx, bijor
int 21h 
F:

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



