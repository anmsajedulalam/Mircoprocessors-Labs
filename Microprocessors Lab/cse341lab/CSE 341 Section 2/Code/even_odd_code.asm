                             
include 'emu8086.inc' 


 

.model small
.stack 100h  



.data  

      ;declare variables 

.code     


  mov ax,@data
  mov ds,ax

main proc    
    
    ;main procedure/function 
    
    
    mov bh,1
    
    loop1:
    cmp bh,6
    je endLoop
   
   print " enter number :  "  
  call scan_num 
  
  mov bl,2
  mov ax,cx   
  
  div bl
  
  cmp ah,0
  je even
  
  print " number is odd  "
  jmp end  
  
  even:
   print " number is even  "
   
   
  end:
    inc bh 
  jmp loop1   
  
   
  
  endLoop:
    
  
mov ah,4ch 
int 21h               

endp main 
   
   ;body of  fuction/procedure

 
 
   
DEFINE_SCAN_NUM
DEFINE_PRINT_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS  
DEFINE_PTHIS



