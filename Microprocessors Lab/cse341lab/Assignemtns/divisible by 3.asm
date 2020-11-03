; multi-segment executable file template.

data segment
    ; add your data here!
    pkey db "press any key...$" 
    d db "divisible$"
    nd db "not$"
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
    ;***********************************
    mov ah,1
    int 21h
    ; input is in AL
    sub al,'0'
    mov ah,0
    
    mov bl,3
    div bl
    
    cmp ah,0
    je divisible
    jne notdivisible 
    
    divisible:
    lea dx,d
    mov ah,9
    int 21h
    jmp end
    
    notdivisible:
    lea dx,nd
    mov ah,9
    int 21h
    end:
    
    
    
    
    ;***********************************
            
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
