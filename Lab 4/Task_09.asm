.MODEL SMALL
 
.STACK 100H

.DATA   

Input db "ENTER ANY NUMBER: $"     
no db 10,13, "NOT DIVISIBLE BY 5 AND 11 $"
yes db 10,13, "DIVISIBLE $"

;variables

.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here


mov cx , 220
mov bh , 5
mov bl , 11
    
mov ax , cx
div bh 


cmp ah , 0
je For11

lea dx, no
mov ah, 9
int 21h
jmp F 

For11:
mov ax , cx
div bl  

cmp ah , 0
je thikkase 
jmp F

       
thikkase:
        
lea dx, yes
mov ah, 9
int 21h 
F:        




;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



