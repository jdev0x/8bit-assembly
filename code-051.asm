JMP code  

message: db "Welcome to Assembly"
         db 0
code:

    MOV A, 232
    MOV B, message
loop:
    MOV C, [B]
    MOV [A], C
    INC A
    INC B
    MOV D, [B]
    CMP D, 0
    JE out_of_code
JMP loop

out_of_code:
    HLT
