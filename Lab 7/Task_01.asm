.MODEL SMALL
 
.STACK 100H

.DATA 

Number DW 99  ; this will print 4

;variables

.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here

mov ax, Number
mov bx, 1
mov cx, 0

loop:  
 
cmp dx, 0
div bx
je Checking  

mov ax, NUMBER
inc bx
cmp bx, ax
jl loop

jmp Exit



Checking:  

cmp ax, bx
jg Increment1 
je Increment2
jmp Exit


Increment1: 

add cx, 2
mov ax, NUMBER
inc bx  

cmp bx, ax
jl loop
jmp Exit   


Increment2:

inc cx
jmp Exit 


Exit:
add cx, 48
mov ah, 2
mov dx, cx
int 21h

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
   