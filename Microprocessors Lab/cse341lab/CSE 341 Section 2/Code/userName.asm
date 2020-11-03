        
        
         
        
        include 'emu8086.inc'
        
       
        
        
       
         .model small
         
         .stack 100h
        
        .data 
        
        
        a db 30 dup('$')  
        
        
        
      
        
        
        
        
        .code 
        
        mov ax,@data
        mov ds,ax
        
          
          mov si,0
          mov bl,0
          
        input: 
        
        cmp bl,5
        je end_input
        inc bl 
        
        input2:
        
        
        
        mov ah,1
        int 21h 
        cmp al,13
        je end_input2
        mov a[si],al 
        inc si
       
        jmp input2
       
        
       
        
        
         end_input2:   
         
         inc si    
         
         mov ah,2
        mov dl,13
        int 21h  
        
        
        mov ah,2
        mov dl,10
        int 21h  
         
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
        
        
        print2:
        
        
         
        mov dl,a[si]   
        cmp dl,'$'
        je end_print2
        mov ah,2
        int 21h 
        inc si 
       
        
        
        
        jmp print2
        
        
        
         end_print2: 
         inc si   
         
         mov ah,2
        mov dl,13
        int 21h  
        
        
        mov ah,2
        mov dl,10
        int 21h 
         jmp print
         
         end_print: 
         
         mov ah,2
        mov dl,13
        int 21h  
        
        
        mov ah,2
        mov dl,10
        int 21h      
                  
                  
        mov ah,4ch
        int 21h
         
         
         define_scan_num 
         define_print_num
         define_print_num_uns