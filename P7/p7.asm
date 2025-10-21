%include "../LIB/pc_iox.inc"
extern pBin_b
extern pBin_w
extern pBin_dw

section .text
    global _start

_start:
    mov eax,0x22446688
    ror eax,4
    call pBin_dw        ;inciso a
    mov al,10
    call putchar


    
    mov ax,0x3F48
    call pBin_w
    mov al, 10      ;inciso b
    call putchar

    mov cx,0x3F48

    shl cx,3

    mov ax,cx
    call pBin_w
    mov al,10
    call putchar
    mov eax,0x20D685F3
    call pBin_dw
    mov al,10
    call putchar
    mov esi,0x20D685F3      ;inciso c
    xor esi,0x40042021
    mov eax, esi
    call pBin_dw
    mov al,10
    call putchar
    ;0,	5,	13,	18	y	30


    push esi    ;inciso d
    mov al,0xA7
    call pBin_b
    mov al,10
    call putchar


    mov ch,0xA7
    or ch,0x48
    mov al,ch
    call pBin_b     ;inciso e
    mov al,10
    call putchar

    mov ax,	0x67DA
    call pBin_w
    mov al,10
    call putchar
    mov bp,	0x67DA  ;inciso f
    and bp,0xbbac
    mov ax,bp
    call pBin_w
    mov al,10
    call putchar

    shr bp,3    ;inciso g
    mov ax,bp
    call pBin_w
    mov al,10
    call putchar

    shr ebx,5       ;inciso h

    shl cx,3    ;inciso i

    
    pop esi     ;inciso j

    mov eax,esi
    call pHex_dw
    mov al,10
    call putchar

    mov eax,esi
    shl eax,1   ;inciso k se genero desbordamiento
    shl esi,3
    add esi,eax
    mov eax,esi
    call pHex_dw
    mov al,10
    call putchar


    mov eax,1
    int 80h