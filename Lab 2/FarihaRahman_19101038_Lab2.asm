;Task 01

mov ax, 6
mov bx, ax 

               
              
;Task 02    

mov ax, 5
mov bx, 6      
mov cx, ax
mov ax, bx
mov bx, cx




;Task 03

mov ax, 6
mov bx, 5
add ax, bx     



;Task 04   

mov ax, 8
mov bx, 20
sub ax, bx    

; When we subtract larger number from smaller number we get nagtive decimal's Hexadecimal number in the stored Register.



;Task 05

 mov ax, 10
 mov bx, 15
 mov cx, ax   
 add ax, bx
 sub bx, ax
 add ax, bx
 mov bx, cx   
 
 
 
 
 
 
 ; Task 06
 
 ;1
 
 mov ax, 3
 mov bx, 6
 sub bx, ax
 mov ax, bx
 
 ;2
 
 mov ax, .5
 add ax, 1
 neg ax
 
 ;3
 
 mov ax, 5
 mov bx, 4
 inc bx
 add ax, bx
 mov cx, ax
 
 ;4
 
 mov ax, 5
 dec ax
 mov bx, 9   
 sub bx, ax
 mov ax, bx
 
 
 
 
 ; Task 07
 
 ;1
 
 mov al, 6
 mov dl, 7
 mul dl
 
 
 ;2
 
 mov al, 5           ;X
 mov dl, 5           ;Y
 div dl
 
 
 ;3
 
 mov al, 3
 mov dl, 2
 mul dl
 mov cl, 6
 div cl 
 
 
 
 ; Task 08
 
 ;1  236DF*AF (Not Possible as the first hex number holds 20 bit and we cannot store 20 bit in registers.)
 
 ;2  8A32F4D5/C9A5 
 
 mov dx, 08A32h
 mov ax, 0F4D5h
 mov bx, 0C9A5h
 div bx
 
 
 
 ;3  CA92*BAF9
 
 mov ax, 0CA92h
 mov dx, 0BAF9h
 mul dx
 
 
 ;4
 
 mov ax, 0C2A2h
 mov dx, 0ABCDh
 mul dx  
 mov cx, 0BEDh
 div cx
 
  
  
  
 ;Task 11
 
 mov al, 1
 mov bl, 2 
 mov cl, 3
 mov dl, 1
 add al, bl  
 sub cl, dl 
 mul cl 
 
 mov cl, al
 
 mov bl, 1
 mov al, 2
 mul bl 
 
 mov dl, al
 
 mov al, cl  
 mov bl, 5
 div bl 
 
 mov bl, al 
 
 mov al, 2
 sub al, dl
 
 mov cl, 3
 add al, cl
 add al, bl