.MODEL SMALL
 
.STACK 100H

.DATA 

Input db "**********$"

;variables

.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here

mov bl, 30h ;the emu8086 uses hexadecimal. 30h is 0  

start:
cmp bl, 38h ;the emu8086 uses hexadecimal. 38h is 8
jge end 

mov ah, 9
lea dx, Input
int 21h 

inc bl
jmp start
end:
 

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



