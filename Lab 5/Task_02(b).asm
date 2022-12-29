.MODEL SMALL
 
.STACK 100H

.DATA 

;ans dw ?

;variables

.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here

mov cx, 20
mov ax, 0
mov bx, 100

start:
add ax, bx
sub bx, 5
mov dx, ax 
;mov ans, ax
loop start 


;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 