.MODEL SMALL
 
.STACK 100H

.DATA                    

Input1 db 10,13,'ENTER A HEX DIGIT:$'
Input2 db 10,13,'IN DECIMAL IS IT:$'
Input3 db 10,13,'DO YOU WANT TO DO IT AGAIN?$'
Input4 db 10,13,'ILLEGAL CHARACTER- ENTER 0-9 OR A-F:$'     

;variables

.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here

Abaaar: 

lea dx, Input1
mov ah, 9
int 21h
   
mov ah, 1
int 21h
   
mov bl, al 
jmp Ready
     
Ready:
   
cmp bl, '9'
jg OutputForHexaDecimal
jle OutputForDecimal
 

   
OutputForHexaDecimal:

cmp bl,'F'
jg IllegalCharacter  
    
    
lea dx, Input2 
mov ah, 9
int 21h
   
mov dl, 49d
mov ah, 2
int 21h
    
sub bl, 17d
mov dl, bl
mov ah, 2
int 21h
jmp YesOrNo  

    
YesOrNo:
    
lea dx, Input3
mov ah, 9
int 21h
    
mov ah,1
int 21h
    
mov cl, al
cmp cl, 'y'
je Abaaar
cmp cl, 'Y'
je Abaaar
jmp END  

    
OutputForDecimal:
   
cmp bl, '0'
jl IllegalCharacter
   
lea dx, Input2 
mov ah, 9
int 21h 
     
mov dl, bl
mov ah, 2
int 21h
jmp YesOrNo

   
IllegalCharacter:
   
lea dx, Input4
mov ah,9
int 21h
       
mov ah,1
int 21h
       
mov bl,al 
jmp Ready
       
END:

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  