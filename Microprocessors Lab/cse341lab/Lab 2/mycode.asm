; multi-segment executable file template.

data segment
    ; add your data here!
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
    ; take first input
    mov ah,1
    int 21h
    sub al,'0'
    
    mov bl,al
    ;take second input
    mov ah,1
    int 21h
    sub al,48
    
    ;multiplication
    mul bl
    
    ;printing
    mov dl,al
    add dl,48
    mov ah,2
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
