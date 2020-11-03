        
        
         
        
        include 'emu8086.inc'
        
       
        
        
       
         .model small
         
         .stack 100h
        
         .data 
        
        
         
        
        a dw 5 dup(10,20,30,40,50)
        
        
        .code 
        
        mov ax,@data
        mov ds,ax
        
        main proc  
          
        
        
        
        mov si,0 
        mov bl,1
        
        array_print: 
        
        cmp bl,5
        jg end_array_print  
        mov ax,a[si]
        call print_num
        print "->"
        inc bl
        add si,2
        jmp array_print
        
        end_array_print:    
        
        print "end_array"
        
        mov ah,4ch
        int 21h
       
        endp main 
        
        
       
        
        
        
         
         define_scan_num 
         define_print_num
         define_print_num_uns