.MODEL SMALL
 
.STACK 100H

.DATA 

i db "Enter Any STRING : $"
o db "Reveresd STRING : $"


.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here
  
mov ch, 0
mov cl, 0 

mov ah, 9
lea dx, i
int 21h

Input:
mov ah, 1
int 21h
cmp al, 13D
je NewLine
and dx, 0
mov dl, al
push dx 
inc cl
jmp Input
 
 
NewLine:

mov ah, 2
mov dl, 0Ah  ;line feed
int 21h
mov dl, 0Dh
int 21h      ;carriage return 

mov ah, 9
lea dx, o
int 21h
 

Print:
and dx, 0
pop dx
mov ah, 2
int 21h
loop Print

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 