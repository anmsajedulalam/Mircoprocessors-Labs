; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$"
    evenString db "...EVEN...$"
    oddString db "...ODD...$"
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
    ;*************************
    mov ah,1
    int 21h
    ;input will be stored in AL 
    mov bl,al
    sub bl,'0' ;input is stored in BL
    
    mov al,bl
    mov ah,0
    
    mov cl,2
    
    div cl
    
    cmp ah,0
    je even
    jne odd
    
    even:
    lea dx, evenString
    mov ah, 9
    int 21h
    jmp end
    
    odd:
    lea dx, oddString
    mov ah, 9
    int 21h
    
    end:
    
    ;************************        
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
