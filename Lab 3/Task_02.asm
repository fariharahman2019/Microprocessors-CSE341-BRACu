.MODEL SMALL
 
.STACK 100H

.DATA   

First_input db "Enter the number : $" 
Second_input db "Enter another number : $"   
Addition db "Addition : $"
Subtraction db "Subtraction : $"
Multiply db "Multiplication : $"
Division db "Division : $"

Number1 db ?
Number2 db ?
Multiplication db ?
Divide db ?


;variables

.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here

      
      
;Addition


      
mov ah, 9  
lea dx, First_input
int 21h

mov ah, 1
int 21h
mov bl, al   

mov ah, 2
mov dl, 0Ah  ;line feed
int 21h
mov dl, 0Dh
int 21h      ;carriage return

mov ah, 9  
lea dx, Second_input 
int 21h

mov ah, 1
int 21h
mov cl, al       

mov ah, 2
mov dl, 0Ah  ;line feed
int 21h
mov dl, 0Dh
int 21h      ;carriage return  

mov ah, 9  
lea dx, Addition
int 21h

add bl, cl
sub bl, 48

 
mov dl, bl
mov ah, 2
int 21h

mov ah, 2
mov dl, 0Ah  ;line feed
int 21h
mov dl, 0Dh
int 21h      ;carriage return



; Subtraction



mov ah, 9  
lea dx, First_input
int 21h

mov ah, 1
int 21h
mov bl, al   

mov ah, 2
mov dl, 0Ah  ;line feed
int 21h
mov dl, 0Dh
int 21h      ;carriage return

mov ah, 9  
lea dx, Second_input 
int 21h

mov ah, 1
int 21h
mov cl, al       

mov ah, 2
mov dl, 0Ah  ;line feed
int 21h
mov dl, 0Dh
int 21h      ;carriage return

sub bl, cl
add bl, 48  

mov ah, 9  
lea dx, Subtraction
int 21h

mov ah, 2 
mov dl, bl
int 21h
 
mov ah, 2
mov dl, 0Ah  ;line feed
int 21h
mov dl, 0Dh
int 21h      ;carriage return




; Multiplication


mov ah, 9  
lea dx, First_input
int 21h

mov ah, 1
int 21h
sub al, 30h   
mov Number1, al

mov ah, 2
mov dl, 0Ah  ;line feed
int 21h
mov dl, 0Dh
int 21h      ;carriage return

mov ah, 9  
lea dx, Second_input 
int 21h

mov ah, 1
int 21h
sub al, 30h
mov Number2, al

mul Number1
mov Multiplication, al
aam
add ah, 30h
add al, 30h

mov bx, ax
  
mov ah, 2
mov dl, 0Ah  ;line feed
int 21h
mov dl, 0Dh
int 21h      ;carriage return

mov ah, 9  
lea dx, Multiply
int 21h


;mov ah, 2
;mov dl, bh
;int 21h
mov ah, 2
mov dl, bl
int 21h

mov ah, 2
mov dl, 0Ah  ;line feed
int 21h
mov dl, 0Dh
int 21h      ;carriage return





; Division


mov ah, 9  
lea dx, First_input
int 21h

mov ah, 1
int 21h
sub al, 30h   
mov Number1, al

mov ah, 2
mov dl, 0Ah  ;line feed
int 21h
mov dl, 0Dh
int 21h      ;carriage return

mov ah, 9  
lea dx, Second_input 
int 21h

mov ah, 1
int 21h
add al, 30h
mov Number2, al

div Number2  



mov Divide, al
aam
;add ah, 30h
add al, 48

mov bx, ax
  
mov ah, 2
mov dl, 0Ah  ;line feed
int 21h
mov dl, 0Dh
int 21h      ;carriage return

mov ah, 9  
lea dx, Division
int 21h


mov ah, 2
mov dl, bh
int 21h
mov ah, 2
mov dl, bl
int 21h

mov ah, 2
mov dl, 0Ah  ;line feed
int 21h
mov dl, 0Dh
int 21h      ;carriage return





;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



