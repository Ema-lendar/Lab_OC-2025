%include "../LIB/pc_iox.inc"

section .data
    msg  db  ' es menor a 5',0,10
    msg2 db   ' es mayor a 4',0,10
section .text
    global _start

_start:

    call getche 
    cmp al,'0'
    jb fin
    cmp al,'9'
    ja fin
    cmp al,'5'
    jb menor

mayor:
    mov edx,msg2
    call puts
    jmp fin

menor:
    mov edx,msg
    call puts

fin: 
    mov eax,1
    int 80h
