.MODEL SMALL
.STACK 100H

.DATA 
  

.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here     
 

mov al, 4
    
cmp al, 1
je ODD
cmp al, 3
je ODD
cmp al, 2
je EVEN
cmp al, 4
je EVEN


ODD:

mov dl, 'o'
mov ah, 2
int 21h

   
EVEN:

mov dl, 'e'
mov ah, 2
int 21h

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



