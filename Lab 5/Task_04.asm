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
                    
mov ch, 31h
mov ah, 1
int 21h
mov bl, al 
mov dl, bl
mov ah, 1
int 21h
mov cl, al 

Start:
cmp ch, cl
JG End
ADD dl, bl
inc ch
JMP Start 

End:             

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 