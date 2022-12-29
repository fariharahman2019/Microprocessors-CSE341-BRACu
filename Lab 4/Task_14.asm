.MODEL SMALL
 
.STACK 100H

.DATA   

Input db "ENTER ANY NUMBER: $"  
ektrish db 10,13,"31 days $"  
trish db 10,13,"30 days  $"     
atash db 10,13,"28 days $"
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


cmp al, 31h
je thirty-one

cmp al, 33h
je thirty-one

cmp al, 35h
je thirty-one

cmp al, 37h
je thirty-one

cmp al, 38h
je thirty-one

cmp al, 40h  
je thirty-one

cmp al, 42h
je thirty-one
           
           
cmp al, 34h
je thirty

cmp al, 36h
je thirty

cmp al, 39h
je thirty

cmp al, 41h
je thirty
 

cmp al, 32h
je twenty-eight 

thirty-one: 
mov ah, 9
lea dx, ektrish
int 21h  
jmp E

thirty:
mov ah, 9
lea dx, trish
int 21h
jmp F 

twenty-eight:
mov ah, 9
lea dx, atash
int 21h
jmp G

E:
F:   
G:
;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



