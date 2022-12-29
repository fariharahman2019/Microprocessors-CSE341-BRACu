.MODEL SMALL
 
.STACK 100H

.DATA 

i db "Enter Any Number : $"
ha db 10,13,"Yes, It is a Prime Number $"
na db 10,13,"No,  It is not a Prime Number $"

;variables

.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here

mov bh, 0
mov bl, 10D  

mov ah, 9
lea dx, i
int 21h

Input:
mov ah, 1
int 21h
cmp al, 13D
jne Number
jmp Check

Number:
sub al, 30h
mov cl, al
mov al, bh
mul bl
add al, cl
mov bh, al 

jmp Input

Check: 

cmp bh, 1
jle NotPrime  

mov cx, 2
and ax, 0
and dx, 0

mov al, bh
div cx

mov cx, ax


Prime:

cmp cx, 2
jl YesPrime

and ax, 0
and dx, 0
 
mov al, bh
div cx
 
dec cx
 
cmp dx, 0
je NotPrime  
jmp Prime


YesPrime:

mov ah, 9
lea dx, ha
int 21h    

jmp Exit

NotPrime:

mov ah, 9
lea dx, na
int 21h

Exit:

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



