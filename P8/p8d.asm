%include "../LIB/pc_iox.inc"

section .bss
    cadena resb 21

section .text   
    global _start

_start:
    mov cx,10
    mov eax,cadena
    mov ebx,cadena
 ciclo:   
    call getche
    mov byte[ebx],al
    inc ebx
    mov byte[ebx],10
    inc ebx
    loop ciclo
    mov al,10
    call putchar

    mov edx,cadena
    call puts

    mov eax,1
    int 80h




