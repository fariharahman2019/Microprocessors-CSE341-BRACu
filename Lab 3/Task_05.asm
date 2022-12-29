.MODEL SMALL
 
.STACK 100H

.DATA   

Input db "?$"   
 
Sum1 db "THE SUM OF $"  
Sum2 db " AND $"    
Sum3 db " IS $"

;variables

.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here

; Task 5 (a)

mov ah, 9
lea dx, Input
int 21h 
        
        
        
; Task 5 (b & c)

mov ah, 1
int 21h
mov bl, al   

mov ah, 1
int 21h
mov cl, al       

mov ah, 2
mov dl, 0Ah  ;line feed
int 21h
mov dl, 0Dh
int 21h      ;carriage return  

mov ah, 9  
lea dx, Sum1
int 21h 

mov dl, bl
mov ah, 2
int 21h

mov ah, 9  
lea dx, Sum2
int 21h

mov dl, cl
mov ah, 2
int 21h

mov ah, 9  
lea dx, Sum3
int 21h 

add bl, cl
sub bl, 48

 
mov dl, bl
mov ah, 2
int 21h



;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



