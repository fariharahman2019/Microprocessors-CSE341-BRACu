.MODEL SMALL
 
.STACK 100H

.DATA   

Input db "ENTER ANY ALPHABET: $"     
con db 10,13, "CONSONANT $"
vow db 10,13, "VOWEL $"

;variables

.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here


mov ah, 9
lea dx, Input
int 21h

mov ah, 1
int 21h 

cmp al, 61h
je C 
cmp al, 65h
je C
cmp al, 69h
je C
cmp al, 6Fh
je C
cmp al, 75h 
je C
cmp al, 41h
je C
cmp al, 45h
je C
cmp al, 49h 
je C
cmp al, 4Fh 
je C
cmp al, 56h
je C

mov ah, 9
lea dx, con
int 21h
jmp F

C:


mov ah, 9
lea dx, vow
int 21h 
F:

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 