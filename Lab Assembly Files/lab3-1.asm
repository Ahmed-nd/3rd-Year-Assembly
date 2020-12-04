;Program Description:
;Author             : Nedaa H.Ahmed
;Creation Date      : 12/11/2020
;Version            : v01


org 100h          

.data  

var db 5                ; data identifier

.code 

mov al , 3        ; al = 3    decimal number
mov bl , -3       ; bl = -3   decimal number
mov cl , 3d       ; cl = 3    decimal number
mov dl , -3d      ; dl = -3   decimal number  
mov ch , 00001111b   ; ch = 15 binary number

COMMENT!1  
But what happened if we use negative sign with binary , hexa and octal numbers ? Try it yourself to know the result
!
 

COMMENT!2
mov ah , Fh      ; al = 0xF    hex number   ; ERROR
mov bh , 3o      ; bl = 03     octal number   
!


mov dx , -(3+4)*(6-1)  ;integer expression  
mov al , 'A'       

COMMENT!3 
Note: How to deal with strings
!
   
COMMENT!4
Reserved Words
1- instruction mnemonics such as mov
2- directives            such as .code
3- attributes            such as db
4- predefined symbols    such as @data   
!                                        

COMMENT!5
The Syntax of Instruction

label: instruction_mnemonic operand comment  
Ex:    add                  al,3    ; al = al + 3
1- label is optional                ; explain types of labels in assembly
2- instruction mnemonics is required
3- operand(s) is usually required
4- comment is optional         
!
  
COMMENT!6
Examples of different mnemonics 

mov al , 3        ; two operands
add al , 2        ; two operands
sub al , 1        ; two operands
mul bl            ; one operand
inc al            ; one operand
stc               ; 0 operand
jmp label 
call function_name
!   

COMMENT!7
It`s your turn now
Write an assembly program that adds three numbers 100,400,400
!
mov al , 100       
add al , 400       
add al , 400 
ret




