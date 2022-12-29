.MODEL SMALL
 
.STACK 100H

.DATA   

Input db "A 10 x 10 Solid Box of Asterisks $"

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

mov ah, 2
mov dl, 0Ah  ;line feed
int 21h
mov dl, 0Dh
int 21h      ;carriage return

mov cx,10

level:

mov dl, '*'
mov ah,2
int 21h
int 21h
int 21h
int 21h
int 21h
int 21h
int 21h
int 21h
int 21h
int 21h

mov ah, 2
mov dl, 0Ah  ;line feed
int 21h
mov dl, 0Dh
int 21h      ;carriage return

loop level



;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



