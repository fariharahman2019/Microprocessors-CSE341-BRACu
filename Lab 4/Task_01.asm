.MODEL SMALL
.STACK 100H

.DATA 
  

.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here     


mov ax, -6
mov bx, 0

cmp ax, bx

jng JUMP  

mov dl, al
mov ah, 2
int 21h

JUMP:
mov ah, 2
mov dl, '5'
int 21h




;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



