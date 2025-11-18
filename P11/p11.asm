%include '../LIB/pc_iox.inc'


section .text
global pBin8b
global pBin16b
global pBin32b
global pBin64b
global Myputchar

Myputchar:
    push eax
    push edx
    push ecx
    mov al,10
    call putchar
    pop ecx
    pop edx
    pop eax
    ret
pBin8:
    push ebp
    mov ebp,esp
    push edx
    mov edx,[ebp+8]; dato 
    shl edx,cl ;corrimieto logico para que el bit mas significativo de dato
    mov ecx,8
    ciclo:
        shl edx,1
        jc uno
        mov al,'0'
        call putchar
    decCiclo:
        loop ciclo
        jmp fin

    uno:
        mov al,'1'
        call putchar
        jmp decCiclo
    fin:
        pop edx
        pop ebp
        ret

pBin8b:
    push ebp
    add ebp,4
    mov cl,24
    call pBin8
    pop ebp
    ret
   

pBin16b:
    push ebp
    ;add ebp,
    push ecx
    mov cl,16
    call pBin8
    call pBin8b
    pop ecx
    pop ebp
    ret
