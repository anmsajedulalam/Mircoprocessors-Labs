        
        
         
        
        include 'emu8086.inc'
        
       
        
        
       
         .model small
         
         .stack 100h
        
         .data 
        
        
         
        
        a dw 0 
        b dw 0 
        c dw 0 
        
        
        .code 
        
        mov ax,@data
        mov ds,ax
        
        main proc  
          
        
        call scan_num
        mov a,cx 
        
        mov ax,1 
        mov bx,a
        
        fact: 
        
        cmp bx,1
        jl end_fact
        mul bx
        dec bx
        jmp fact
        
        end_fact:
        
        print "sum..."
        call print_num
         
              
     
        
        
        
          
       
     
       
      
         
        
        mov ah,4ch
        int 21h
       
        endp main 
        
        
       
        
        
        
         
         define_scan_num 
         define_print_num
         define_print_num_uns