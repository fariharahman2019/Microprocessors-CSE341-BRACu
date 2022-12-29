.MODEL SMALL
 
.STACK 100H

.DATA

.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX      

;Enter your code here 

mov al, 80H
mov bl, 80H
;Before adding, all the flags are "0" & IF flag is "1".

add al, bl
;After adding CF,ZF,OF,PF,IF are "1" and SF, AF, DF are "0" 
; IF flag did not change.

;exit to DOS 
               
MOV AX,4C00H
INT 21H
 
MAIN ENDP
    END MAIN
