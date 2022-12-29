.MODEL SMALL
 
.STACK 100H

.DATA 

;variables

.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here

mov ax, -6 
mov cx, 0

cmp ax, cx

je JumpForZero

jng JumpForNegative 

jg JumpForPositive 



JumpForNegative:     

mov bx, -1
 
JumpForPositive:    

mov bx, 1

mov dl, '1' ;to check if its working
mov ah, 2
int 21h

JumpForZero:

mov bx, 0

mov dl, '0'  ;to check if its working
mov ah, 2
int 21h

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



