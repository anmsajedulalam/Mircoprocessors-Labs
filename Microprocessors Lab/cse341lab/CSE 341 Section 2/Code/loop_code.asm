                             
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
    
    
  mov ax,10 
  
 loop1:
 
  cmp ax,0   
  jle   end 
  
  call print_num 
  dec ax  
  
  jmp loop1
  
  
  end:
  
  print " end of loop"
    
  
mov ah,4ch 
int 21h               

endp main 
   
   ;body of  fuction/procedure

 
 
   
DEFINE_SCAN_NUM
DEFINE_PRINT_STRING
DEFINE_PRINT_NUM
DEFINE_PRINT_NUM_UNS  
DEFINE_PTHIS



