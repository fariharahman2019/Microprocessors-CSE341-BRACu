.MODEL SMALL
 
.STACK 100H

.DATA   

Input1 db "ENTER THE FIRST NUMBERS: $"
Input2 db 10,13,"ENTER THE SECOND NUMBERS: $"
Input3 db 10,13, "ENTER THE THIRD NUMBERS: $"

num1 db ?
num2 db ?
num3 db ?
  
boro db 10,13,"Maximum number is : $"  
chhoto db 10,13,"Minimum number is : $"     

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
mov num1, al

mov ah, 9
lea dx, Input2
int 21h

mov ah, 1
int 21h 
mov num2, al

mov ah, 9
lea dx, Input3
int 21h

mov ah, 1
int 21h
mov num3, al 

lea dx, boro
mov ah, 9
int 21h

mov bl, num1
cmp bl, num2
jng MoveToNumber2

cmp bl, num3
jng MoveToNumber3 

MoveToNumber2:
mov bl, num2
cmp bl, num3
jng MoveToNumber3 

mov dl, num1
jmp Print
 
MoveToNumber3:   
mov dl, num3     
        
Print:
mov ah,2
int 21h 


;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



