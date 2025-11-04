%include '../LIB/pc_iox.inc'

section .bss
    vector resb 10 ;reserva de byte
    vector2 resb 10
section .text 
    global _start

_start:
    mov ecx, 10 ;contador del vector
    mov ebx,vector; direccion de vector a ebx
    mov esi,0
    mov edx,1

leeVector:
    call getche ;llamada 
    cmp al,'0'
    jb leeVector
    cmp al,'9'
    ja leeVector
    sub al,30h ;resta para comvertir el numero
    call putchar
    mov byte[ebx],al
    inc ebx
    mov al,10
    call putchar
    loop leeVector
    ;mov byte[ebx],0
    mov al,10
    call putchar
    mov ecx,10

printVector:
    
    mov ebx,vector
    mov al,byte[ebx+esi]
    call pHex_b
    inc esi
    loop printVector
    mov al,10
    call putchar
   
    cmp edx,2
    je sumVectores
    inc edx
mov ecx,10
mov ebx,vector2 
;mov esi,0
call  leeVector

sumVectores:
    mov ebx,vector
    mov edx,vector2
    mov ecx,10
    mov esi,0
ciclosuma:
    mov al,byte[ebx+esi]
    add al,byte[edx+esi]
    call pHex_b
    inc esi
    loop ciclosuma
    mov edx,0
    mov ecx,10
ciclopro:
    mov al,byte[ebx+esi]
    mul byte[edx+esi] ;ax=al*edx
    add dx,ax
    inc esi
    loop ciclopro
    mov ax,dx
    call pHex_w
    mov eax,1
    int 80h



