;Program Description:
;Author             : Nedaa H.Ahmed
;Creation Date      : 12/11/2020
;Version            : v01


org 100h

.data

 num1 dw 1234h   ; define variable that consumes 2 bytes
 num2 db -12h    ; define variable that consumes 1 byte   
 res  db  ?      ; uninitialized variable
COMMENT!1 
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
                                                         
 array db 10 , 20 , 30 , 40              ; how to define array in assembly
       db 50 , 60 , 70 , 80              ; each element of the array consumes 1 byte      
      
 array2  DB  0Ah, 20h, 'A', 22h          ; you can use different radix in array definition      
 array3  dw 1000h, 2001h,3022h,4035h     ; each element of the array consumes 2 bytes 
 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  
 str1 db 48h , 65h, 6ch , 6ch , 6fh , 00h
 str2 db 'Hello' , 0
 greeting1 db "Good Afternoon" , 0 
 greeting2 db "Welcome to Assembly program", 0dh , 0ah,0
!          
 
COMMENT!4
Dup1 DB 5 DUP(9)    ; 5 bytes each byte equal 9
Dup2 DB 5 DUP(1,2)  ; 10 bytes    
Dup3 DB 20 DUP(?)   ; 20 bytes, all uninitialized 
!
 
COMMENT!5
 ; how to calculate the size of array
 Array db 10 , 20 , 30 , 40
 ArraySize = ($ - Array)      ; But how to compute the size of DW array

!

COMMENT!6
 const1 EQU 3
 conet2 =  4

!
.code

JMP Main


Main PROC
    
;insert your code here  
mov ax , num1
mov bl , num2

COMMENT!2
 mov bx , 2             ; you can use bx , si , di or BP as index array
 mov al , str1[bx]      ; another way: mov al , str1[2] ; another way: mov al , str1+2    
 mov ax , array3        ; the first element of word array
 mov bx , array3+2      ; the second element of word array
 mov cx , array3+4      ; the third element of word array

!

COMMENT!3
Write assembly code that define firstly a variable
take the value  of "Welcome" and then put the character
"c"  in register AL    and the character "m" in register CL
!   
  

JMP EXIT
Main ENDP

                       
  

EXIT: ret  


END



