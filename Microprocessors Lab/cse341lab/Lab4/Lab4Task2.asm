; multi-segment executable file template.

data segment
    ; add your data here!  
    a db 5 dup(?) 
    
    pkey db "press any key...$"
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax

    ; add your code here 
    
    
    
    
    mov cx,5 
    mov ah,1
    mov si,0 
    process: 
    int 21h
    mov a[si],al 
    add si,1 
    loop process
    
    
      
    mov cx,5 
    mov ah,2 
    mov si,4
    go: 
    mov dl,a[si] 
    int 21h 
    sub si,1 
    loop go
                
                
                
    lea dx, pkey
    mov ah, 9
    int 21h        ; output string at ds:dx
    
    ; wait for any key....    
    mov ah, 1
    int 21h
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
