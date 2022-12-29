.MODEL SMALL
 
.STACK 100H

.DATA 

InputMsg DB 'ENTER A STRING OF CAPITAL LETTERS : $'
OutputMsg DB 10,13,'THE LONGEST CONSECUTIVE INCREASING STRING IS : $'

;variables

.CODE 
MAIN PROC 

;initialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here

mov ch, 0

mov ah, 9
lea dx, InputMsg
int 21H
         
         
INPUT_1: 

mov ah, 1
int 21H
    
CMP AL,0DH
JE END_  

MOV CL,1
MOV BL,AL
MOV DH,AL 


INPUT_2:  

INT 21H
        
CMP AL,0DH
JE END_
      
INC BL
CMP BL,AL
JNE INIT 

INC CL
JMP INPUT_2


INIT:

CMP CH,CL
JL UPDATE
      
MOV CL,1
MOV BL,AL
MOV DH,AL
JMP INPUT_2
       

UPDATE:

MOV CH,CL
MOV BH,DH
            
MOV CL,1
MOV BL,AL
MOV DH,AL
JMP INPUT_2


END_:

CMP CH,CL
JL Reupdate
JMP END_2
         

Reupdate:

MOV CH,CL
MOV BH,DH
JMP END_2       


END_2:
       
MOV AH,9
LEA DX, OutputMsg
INT 21H
  
MOV AH,2
MOV DL,BH


Output:

CMP CH,0
JE End
   
DEC CH
INT 21H
INC DL
JMP Output    


End:  
    
;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 