.MODEL SMALL
 
.STACK 100H

.DATA

String DB 'This is a test$'
  
.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here 
 
CALL REVERSE 
 
lea dx, String  
mov ah, 9 
int 21h 

mov ah, 4Ch
int 21h 
  
MAIN ENDP 
REVERSE PROC
     
mov SI, offset String 

mov cx, 0h 
  
loop1:

mov ax, [si] 
cmp al, '$'

je loop3  

push [si] 
inc si 
inc cx 
  
jmp loop1 
  
loop3:
    
mov si, offset String 
  
loop2:

cmp cx,0 
je End
         
pop dx  
xor dh, dh
mov [si], dx
inc si 
dec cx 
jmp loop2 
  
                  
End: 
mov [si],'$ '
ret 

;exit to DOS 
               
MOV AX,4C00H
INT 21H 
          
REVERSE ENDP 
END MAIN 