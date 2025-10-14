%include "../LIB/pc_iox.inc"

section .bss
    N resb 2

section .text
    global _start

_start:

    mov ebx,0x5C4B2A60

    add ebx,0x2203418 ;ebx=ebx+matricula
    ;5E6B5E78

    push bx ; bx a la pila
    ;5E78
    mov al,bl ; al=bl

    mov cl,8   ;cx=8 para multiplicar
    
    mul cl ;bl*8

    call pHex_w

    mov al,10
    call putchar
    ;03C0
    mov [N],ax ;resultado de mul en la variable N
    inc word[N]
    mov ax,[N]
    call pHex_w
    mov al,10
    call putchar
    ;03C1
    mov ax,bx
    ;5E78
    mov cl,0xff

    div cl
    ;5E  
    call pHex_b

    mov al,10
    call putchar

    mov al,ah
    ;D6
    call pHex_b
    mov al,10
    call putchar
    
    ;add byte[N],ah
    mov ax,[N]
    call pHex_w
    mov al,10
    call putchar

    pushf

    pop ax

    call pHex_w
    mov al,10
    call putchar

    pop bx

    mov eax,1
    int 80h