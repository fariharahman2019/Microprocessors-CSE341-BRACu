.MODEL SMALL
 
.STACK 100H

.DATA


.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX      

;Code here 

MOV AX,0fffah
MOV BX,1
ADD AX,BX


;Before adding, all the flags are "0" & IF flag is "1".
;After adding CF,ZF,OF,PF,IF are "1" and SF, AF, DF are "0" 
; IF flag did not change.   
; 0ffffh + 1 = 16bit number, so it should work.

;exit to DOS 
               
MOV AX,4C00H
INT 21H
 

MAIN ENDP
    END MAIN