.MODEL SMALL
 
.STACK 100H

.DATA
;variables

.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here
mov es, ax
mov bl, 0 

Start1:
cmp bl, 5
jge End1

mov ah, 1
int 21h
inc bl
jmp Start1

End1:  
mov ah,2
mov dx, 13
int 21h    
mov bl, 0

Start2:
cmp bl, 5
jge End2
mov ah, 2
mov dx, 88 
int 21h
inc bl
jmp Start2
        
End2:    
mov cl, bh            

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 