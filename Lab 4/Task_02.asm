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

mov al, 66h
mov bl, 61h

cmp al, bl

jg JUMP  

mov dl, al
mov ah, 2
int 21h

JUMP:   
mov dl, bl
mov ah, 2
int 21h
 

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



