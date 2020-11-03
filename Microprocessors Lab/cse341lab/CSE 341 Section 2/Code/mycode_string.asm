        
        
         
        
        include 'emu8086.inc'
        
       
        
        
       
         .model small
         
         .stack 100h
        
        .data 
        
        
        a db 5 dup(0)  
        
        
        
      
        
        
        
        
        .code 
        
        mov ax,@data
        mov ds,ax
        
          
          mov si,0
          mov bl,0
          
        input: 
        
        cmp bl,5
        je end_input
        inc bl
        
        
        mov ah,1
        int 21h 
        cmp al,13
        je end_input
        mov a[si],al 
        inc si
       
        
       
        
        jmp input
        
        
         end_input:  
         
           mov ah,2
        mov dl,13
        int 21h  
        
        
        mov ah,2
        mov dl,10
        int 21h
         
         
         
         mov si,0
          mov bl,0
          
        print: 
        
        cmp bl,5
        je end_print
        inc bl
        
         
        mov dl,a[si] 
        mov ah,2
        int 21h 
        inc si 
       
        
        
        
        jmp print
        
        
         end_print:  
         
         mov ah,2
        mov dl,13
        int 21h  
        
        
        mov ah,2
        mov dl,10
        int 21h
         
         
         define_scan_num 
         define_print_num
         define_print_num_uns