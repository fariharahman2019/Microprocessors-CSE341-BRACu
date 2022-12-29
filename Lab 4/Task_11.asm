
.MODEL SMALL
 
.STACK 100H

.DATA   

Input1 db "ENTER ANY NUMBER: $"
Input2 db 10,13,"ENTER ANY NUMBER: $"
Input3 db 10,13,"ENTER ANY NUMBER: $"  

ha db 10,13," Y $"  
na db 10,13," N  $"     



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
mov bl, al        ;(A)
mov bh, bl  
         
mov ah, 9
lea dx, Input2
int 21h

mov ah, 1
int 21h            ;(B)
mov cl, al 
mov ch, cl
         
mov ah, 9
lea dx, Input3
int 21h

mov ah, 1
int 21h            ;(C)
mov dl, al
mov dh, dl        
         
add bl, cl    ;(A+B)
add cl, dl    ;(B+C)
add dl, bl    ;(C+A)

cmp bl, dh
jg YES

mov ah, 9
lea dx, na
int 21h
jmp A

YES:
mov ah, 9
lea dx, ha
int 21h
jmp A


A:
         
;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



