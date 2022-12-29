.MODEL SMALL
 
.STACK 100H

.DATA   

Input db "ENTER THREE INITIALS: $"

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
mov bl, al    

mov ah, 1
int 21h
mov cl, al

mov ah, 1
int 21h
mov bh, al

mov ah, 2
mov dl, 0Ah  ;line feed
int 21h
mov dl, 0Dh
int 21h      ;carriage return

mov ah, 2
mov dl, bl
int 21h

mov ah, 2
mov dl, 0Ah  ;line feed
int 21h
mov dl, 0Dh
int 21h      ;carriage return

mov ah, 2
mov dl, cl
int 21h

mov ah, 2
mov dl, 0Ah  ;line feed
int 21h
mov dl, 0Dh
int 21h      ;carriage return

mov ah, 2
mov dl, bh
int 21h



;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



