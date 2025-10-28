%include "../LIB/pc_iox.inc"

section .bss
    cadena resb 21

section .text
    global _start

_start:
    mov cx,5
    mov edx,cadena
    mov si,0
    mov di,1

ciclo:
    
    mov byte[edx],'*'
    inc edx
    inc si
    cmp si,di
    jne ciclo
    inc di
    mov si,0
    mov byte[edx],10
    inc edx
    loop ciclo
    mov byte[edx],0
    mov edx,cadena
    call puts

    mov eax,1
    int 80h