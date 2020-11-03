        
        
         
        
        include 'emu8086.inc'
        
       
        
        
       
         .model small
         
         .stack 100h
        
        .data 
        
        
        X dw 0    
        Y dw 0
        Z dw 0  
        
        a dw 0 
        b dw 0 
        c dw 0 
        
        
        .code 
        
        mov ax,@data
        mov ds,ax
        
        main proc  
          
        
        call scan_num
        mov x,cx   
         
              
     
        
        call scan_num
        mov y,cx   
        
          
       
     
       
        mov ax,x
        call print_num  
        mov ax,y
        call print_num 
         
        
        mov ah,4ch
        int 21h
       
        endp main 
        
        
       
        
        
        
         
         define_scan_num 
         define_print_num
         define_print_num_uns