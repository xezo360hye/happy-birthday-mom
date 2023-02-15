segment .data
    bday db "Happy Birthday, mom!", 0xA, 0

segment .text
    global main

main:
    ; count length of string
    xor rdx, rdx
    .loop:
        ; if byte is 0, end loop
        cmp byte [bday + rdx], 0
        je  .end

        ; otherwise, increment rdx
        inc rdx
        jmp .loop

    ; end of loop
    .end:

    ; print string
    mov rax, 1
    mov rdi, 1
    mov rsi, bday

    ; rdx is already set
    syscall

    ret
