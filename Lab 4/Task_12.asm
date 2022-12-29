
.MODEL SMALL
 
.STACK 100H

.DATA   

Input1 db "ENTER ANY NUMBER: $" 

I db 10,13," i $"  
K db 10,13," k  $"
L db 10,13," l  $"  
M db 10,13," m  $"   

;variables

.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here

mov ah, 9
lea dx, Input1
int 21h

mov ah, 1
int 21h

cmp al, 30h
je ai 

cmp al, 31h
je ai 

cmp al, 32h
je ai 

cmp al, 33h
je ai 

cmp al, 34h
je ke 

cmp al, 35h
je ke
      
cmp al, 36h
je ke 

cmp al, 37h
je el

cmp al, 38h
je el 

cmp al, 39h
je el


mov ah, 9
lea dx, M
int 21h
jmp A

ai:
mov ah, 9
lea dx, I
int 21h
jmp A

ke:  
mov ah, 9
lea dx, K
int 21h
jmp A

el:
mov ah, 9
lea dx, L
int 21h
jmp A

A:
         
;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



