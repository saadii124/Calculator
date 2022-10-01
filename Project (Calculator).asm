;COAL PROJECT  
;CALCULATOR
;GROUP MEMBERS
;NAME :MALIK ABDUL HADI (200901053) , M.SAAD BIN SHAFIQ (200901079)

include emu8086.inc
org 100h

.DATA

num1 dw ?
num2 dw ?
result dw ?
temp dw ?
perpendicular dw ?
hypotenuse dw ?
base dw ?


MAIN PROC

 .CODE

 jmp start  
    
  hey:    db      0dh,0ah,0Dh,0Ah,0Dh,0Ah,0dh,"*********************** A SIMPLE CALCULATOR *********************** ",0Dh,0Ah,0Dh,0Ah,0Dh, '$'
 Introduction1:  db  0Dh,0Ah, "GROUP MEMBERS:",0Dh,0Ah,0Dh,0Ah, "MALIK ABDUL HADI(200901053) ",0Dh,0Ah,"M.SAAD BIN SHAFIQ (200901079) " ,0Dh,0Ah,0Dh,0Ah,0Dh,0Ah,'$'
 Introduction2:  db 0Dh,0Ah,0Dh,0Ah,  "WELCOME TO OUR CALCULATOR: ",0Dh,0Ah,0Dh,0Ah,'$' 
 outlining:      db                    "________________________ ",0Dh,0Ah,0Dh,0Ah,'$'
 Option1:    db      0dh,0ah,"1 for Addition",0dh,0ah,"2 for Multiplication",0dh,0ah,"3 for Subtraction",0dh,0ah,"4 for Division", 0Dh,0Ah,"5 for taking Square",0Dh,0Ah,"6 for taking Cube",0Dh,0Ah,"7 for taking Factorial",0Dh,0Ah,"8 for taking Power of a number",0Dh,0Ah,"9 for Trigonometry ",0Dh,0Ah,'$'
 choice1:    db     0dh,0ah, "Please, enter your choice: ", 0Dh,0Ah, '$'
 choice2:    db     0dh,0ah, "You have selected Addtion: ", 0Dh,0Ah, '$'
 choice3:    db     0dh,0ah, "You have selected Multiplication: ", 0Dh,0Ah, '$'
 choice4:    db     0dh,0ah, "You have selected Subtraction: ", 0Dh,0Ah, '$'
 choice5:    db     0dh,0ah, "You have selected Division: ", 0Dh,0Ah, '$'
 choice6:    db     0dh,0ah, "You have selected Square: ", 0Dh,0Ah, '$'
 choice7:    db     0dh,0ah, "You have selected Cube: ", 0Dh,0Ah, '$'   
 choice8:    db     0dh,0ah, "You have selected Factorial: ", 0Dh,0Ah, '$'   
 choice9:    db     0dh,0ah, "You have selected Power of a number: ", 0Dh,0Ah, '$'
 choice10:    db     0dh,0ah, "You have selected Trigonometry: ", 0Dh,0Ah, '$'

 start:  
 

        
         mov ah,9
         mov dx, offset hey 
         int 21h
         
         mov ah,9
         mov dx, offset Introduction1 
         int 21h 
        
         mov ah,9
         mov dx, offset Introduction2 
         int 21h 
        
         mov ah,9
         mov dx, offset outlining 
         int 21h 
        
       
        
         mov ah,9
         mov dx, offset Option1 
         int 21h
        
        
         mov ah,9
         mov dx, offset choice1 
         int 21h
         mov ah,0                       
         int 16h
       
        cmp al,31h 
        je Addition
          
        cmp al,32h
        je Multiplication
         
         
        cmp al,33h
        je Subtraction 
        
        cmp al,34h
        je Division  
        
        cmp al,35h
        je Square
        
        cmp al,36h
        je Cube 
        
        cmp al,37h
        je Factorial   
        
        cmp al,38h
        je Power
        
        cmp al,39h
        je Trigonomtery 
        
        
        
        
        jmp start
        
        
        
 Addition:  
           
           
           mov ah,9
           mov dx, offset choice2 
           int 21h
           
           print "Please enter the first number: "
           
           
           call scan_num
           print 10
           print 13
           mov num1,cx
           mov ax,num1 
           
          print "Please enter the second number: " 
          
            
           call scan_num
           print 10
           print 13
           mov num2,cx
           mov bx,num2
           add ax,bx
           mov result,ax
           
           print "So Addition of two numbers is: " 
         
           call print_num 
           print 10
           print 13
           print 10
           print 13
           
           print "Thanks for using our calculator :)))" 
                                
           ret
           hlt
            
           
 Multiplication:
  
           
           
           mov ah,9
           mov dx, offset choice3 
           int 21h
           
           print "Please enter the first number: "
           
           
           call scan_num
           print 10
           print 13
           mov num1,cx
           mov ax,num1 
           
          print "Please enter the second number: " 
          
            
           call scan_num
           print 10
           print 13
           mov num2,cx
           mov bx,num2
           mul bx
           mov result,bx
           
           print "So Multiplication of two numbers is: "
         
           call print_num 
           print 10
           print 13
           print 10
           print 13
           
           print "Thanks for using our calculator :)))"
           ret
           hlt
                                   
                     
           
 
 Subtraction:  
           
           
           mov ah,9
           mov dx, offset choice4 
           int 21h
           
           print "Please enter the first number: "
           
           
           call scan_num
           print 10
           print 13
           mov num1,cx
           mov ax,num1 
           
          print "Please enter the second number: " 
          
            
           call scan_num
           print 10
           print 13
           mov num2,cx
           mov bx,num2
           SUB ax,bx
           mov result,ax
           
           print "So Subtraction of two numbers is: "  

           call print_num
           print 10
           print 13
           print 10
           print 13
           
           print "Thanks for using our calculator :)))" 
           ret
           hlt
                                
           
 Division:  
           
           
           mov ah,9
           mov dx, offset choice5 
           int 21h
           
           print "Please enter the first number: "
           
           
           call scan_num
           print 10
           print 13
           mov num1,cx
           mov ax,num1 
           
          print "Please enter the second number: " 
          
            
           call scan_num
           print 10
           print 13 
           
           mov num2,cx
           mov bx,num2 
           xor dx, dx
           div bx
           mov result,bx
           
           print "So Division of two numbers is: "
               
           
            
           call print_num
           print 10
           print 13
           print 10
           print 13
           
           print "Thanks for using our calculator :)))"
           ret
           hlt
 Square:
           
          
           mov ah,9
           mov dx, offset choice6 
           int 21h
           
           print "Please enter the number: "
           
           
           call scan_num
           print 10
           print 13
           mov num1,cx
           mov ax,num1 
           
           mul ax

           
           print "So Square of the number is: " 
            
           
            
           call print_num
           print 10
           print 13
           print 10
           print 13
           
           print "Thanks for using our calculator :)))"
           ret
           hlt  
           
  Cube:
            
           mov ah,9
           mov dx, offset choice7 
           int 21h
           
           print "Please enter the number: "     
           
           call scan_num
           print 10
           print 13
           mov num1,cx
           mov ax,num1 
           mov cx,3  
           
           l1:
           mov bx,ax  
           mul ax
           mul bx   
           
           print "So Cube of the number is: "  
           
           call print_num
           print 10
           print 13
           print 10
           print 13
           
           print "Thanks for using our calculator :)))"
           ret
           hlt  
 
 Factorial:
           mov ah,9
           mov dx, offset choice8 
           int 21h
           
           print "Please enter the number: " 
           
           call scan_num
           print 10
           print 13
           mov num1,cx
           mov ax,num1  
           mov cx,ax
           dec cx
           
           l2:
           mul cx
           loop l2
           
           print "So Factorial of the number is: "  
           call print_num
           print 10
           print 13
           print 10
           print 13
           
           print "Thanks for using our calculator :)))"
           ret
           hlt 
 
 Power:
           mov ah,9
           mov dx, offset choice9 
           int 21h 
           
           print "Please enter the Power of Base: "
        
           call scan_num
           print 10
           print 13
           mov num1,cx
           mov dx,num1
           
           print "Now enter the Base: "
        
           call scan_num
           print 10
           print 13
           mov num2,cx
           mov bx,num2
           mov ax,1h 
           mov cx,dx 
           l3:
           mul bx
           loop l3
           
            print "So Power of the number(base) is: "  
           call print_num
           print 10
           print 13
           print 10
           print 13
           
           print "Thanks for using our calculator :)))"
           ret
           hlt
           
Trigonomtery:

mov ah,9
mov dx, offset choice10 
int 21h
print 10
print 13
print 10
print 13
print "Menu :"
print 10
print 13 
print "______"
print 10
print 13
print 10
print 13
print "1- Sin theta"
print 10
print 13
print 10
print 13
print "2- Cos theta" 
print 10
print 13
print 10
print 13
print "3- Tan theta"
print 10
print 13
print 10
print 13

mov ah,9
mov dx, offset choice1 
int 21h
mov ah,0                       
int 16h 

cmp al,31h 
je Sin 

cmp al,32h
je Cos

cmp al,33h
je Tan


Sin:

print "You have selected Sin theta: "
print 10
print 13
print 10
print 13
print " Sin theta = Perpendicular/hypotenuse "
print 10
print 13
print 10
print 13
print "Please enter the value of Perpendicular: "
call scan_num
mov perpendicular,cx
mov ax,perpendicular
print 10
print 13
print 10
print 13
print "Please enter the value of hypotenuse: "
call scan_num
mov hypotenuse,cx
mov bx,hypotenuse
print 10
print 13
print 10
print 13
xor dx, dx
div bx
mov result,bx
print "So the answer of Sin theta is : "
call print_num
print 10
print 13
print 10
print 13        
print "Thanks for using our calculator :)))"
ret
hlt 

Cos:

print "You have selected Cos theta: "
print 10
print 13 
print 10
print 13
print " Cos theta = Base/hypotenuse "
print 10
print 13
print 10
print 13
print "Please enter the value of Base: "
call scan_num
mov base,cx
mov ax,base
print 10
print 13
print 10
print 13
print "Please enter the value of hypotenuse: "
call scan_num
mov hypotenuse,cx
mov bx,hypotenuse
print 10
print 13
print 10
print 13
xor dx, dx
div bx
mov result,bx
print "So the answer of Cos theta is : "
call print_num
print 10
print 13
print 10
print 13        
print "Thanks for using our calculator :)))"
ret
hlt 

Tan:

print "You have selected Tan theta: "
print 10
print 13
print 10
print 13
print " Tan theta = Perpendicular/Base "
print 10
print 13
print 10
print 13
print "Please enter the value of Perpendicular: "
call scan_num
mov perpendicular,cx
mov ax,perpendicular
print 10
print 13
print 10
print 13
print "Please enter the value of Base: "
call scan_num
mov base,cx
mov bx,base
print 10
print 13
print 10
print 13
xor dx, dx
div bx
mov result,bx
print "So the answer of Tan theta is : "
call print_num
print 10
print 13
print 10
print 13        
print "Thanks for using our calculator :)))"
ret
hlt 
       
 DEFINE_SCAN_NUM
 DEFINE_PRINT_NUM
 DEFINE_PRINT_NUM_UNS           

ENDP
 END MAIN