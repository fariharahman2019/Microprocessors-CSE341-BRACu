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

mov cx, 50
mov ax, 0
mov bx, 1

start:
add ax, bx
add bx, 3
mov dx, ax 
;mov ans, ax
loop start 


;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 