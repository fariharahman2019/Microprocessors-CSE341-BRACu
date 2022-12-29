.MODEL SMALL
 
.STACK 100H

.DATA 

Array db 10 dup(?) 
Input db 10,13, "Input: $"
Output db 10,13, "Output: $"
na db 10,13, "Not Unique $"
ha db 10,13, "Unique $"

.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here 

mov ah, 9
lea dx, Input
int 21h

mov cx, 6
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
mov cx, 6

loop2:

mov bl, [si]
mov cl, [si+1] 
inc si
cmp bl, cl
jne Print
loop loop2   

mov ah, 9
lea dx, na
int 21h

Print:
mov ah, 9
lea dx, ha
int 21h 

jmp Exit

Exit:

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 