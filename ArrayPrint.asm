.MODEL SMALL
 
.STACK 100H

.DATA 

Array db 10 dup(?) 
Input db 10,13, "Input: $"
Output db 10,13, "Output: $"

.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here 

mov ah, 9
lea dx, Input
int 21h

mov cx, 4
mov si, offset Array


loop1:
mov ah, 01h
int 21h

mov [si], al
inc si
loop loop1

mov ah, 9
lea dx, Output
int 21h  

mov si, offset Array
mov cx, 4

loop2:

mov dl, [si]
mov ah, 2
int 21h

inc si
loop loop2

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 