.MODEL SMALL
 
.STACK 100H

.DATA   

Input db "ENTER ANY NUMBER: $"  
shonibar db 10,13," SATURDAY $"  
robibar db 10,13," SUNDAY  $"     
shombar db 10,13," MONDAY $"
mongolbar db 10,13," TUESDAY $"
budhbar db 10,13," WEDNESDAY $"
brihoshpotibar db 10,13," THURSDAY $"  
shukrobar db 10,13," FRIDAY $"

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
je saturn 

cmp al, 32h 
je sun

cmp al, 33h
je mon

cmp al, 34h
je tues

cmp al, 35h
je wed

cmp al, 36h
je thurs

cmp al, 37h
je fri


saturn:
mov ah, 9
lea dx, shonibar
int 21h
jmp A

sun:
mov ah, 9
lea dx, robibar
int 21h 
jmp A

mon:
mov ah, 9
lea dx, shombar
int 21h 
jmp A

tues:
mov ah, 9
lea dx, mongolbar
int 21h 
jmp A

wed:
mov ah, 9
lea dx, budhbar
int 21h 
jmp A

thurs:
mov ah, 9
lea dx, brihoshpotibar
int 21h 
jmp A

fri: 
mov ah, 9
lea dx, shukrobar
int 21h
jmp A

A:
         
;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



