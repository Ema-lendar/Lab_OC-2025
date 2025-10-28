%include "../LIB/pc_iox.inc"

section .data
    msg  db  ' es un numero',0,10
    msg2 db   ' es una letra 4',0,10
section .text
    global _start

_start:
    
    call getche 
    cmp al,'0'
    jb letra
    cmp al,'9'
    ja letra
    jmp numero

letra:
    cmp al,'A'
    jb fin
    cmp al,'Z'
    ja fin
    jmp le
    

numero:
    mov edx,msg
    call puts
    jmp fin

le:
    mov edx,msg2
    call puts

fin: 
    mov eax,1
    int 80h
