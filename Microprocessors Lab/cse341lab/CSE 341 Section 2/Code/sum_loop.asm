        
        
         
        
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
        
        mov ax,0 
        mov bx,1
        
        sum: 
        
        cmp bx,a
        jg end_sum
        add ax,bx
        inc bx
        jmp sum
        
        end_sum:
        
        print "sum..."
        call print_num
         
              
     
        
        
        
          
       
     
       
      
         
        
        mov ah,4ch
        int 21h
       
        endp main 
        
        
       
        
        
        
         
         define_scan_num 
         define_print_num
         define_print_num_uns