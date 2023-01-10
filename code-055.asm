JMP code
; data
    letter: db "Sari"
             db 0

code:
    MOV A, letter
    MOV B, 232 
    MOV C, 0
    loop:
        MOV D, [A]
        CMP D, 0
        JE out
        MOV [B], D
        INC B
        INC C
        CMP C, 3
        JE movenext
    JMP loop

movenext:
        MOV C, 0
        INC A
        JMP loop

out:
        HLT 
