; multi-segment executable file template.

data segment
    ; add your data here! 
    num1 db 5
    num2 db 9
    num3 db 7
    lrgt db 0
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
    mov al,num1
    mov lrgt,al
    cmp al,num2
    jge process1  
    mov al,num2
    mov lrgt,al
    
process1:
    mov al,lrgt
    cmp al,num3
    jge process2
    mov al,num3
    mov lrgt,al
    
process2: 
    mov lrgt,al
    mov dl,lrgt
    mov ah,2
    int 21h
    
    
    
    mov ah,1
    int 21h
    
            
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
