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
           
    mov dl,5
    mov ah,2
    int 21h   
    ;INPUT FIRST NUMBER
    MOV AH,1
    INT 21H
    
    MOV BL,AL
    SUB BL,48
   
    ;INPUT SECOND NUMBER
    MOV AH,1
    INT 21H
    SUB AL,48
    
    ;MULTIPLICATION
    MUL BL
    
    ;DISPLAYING
    
    MOV DL,AL
    MOV DL,48
    MOV AH,2
    INT 21H
    
            
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
