JMP main
    string: db "WELCOME TO ASSEMBLY"
            db 0
    counter: db 0

main:
MOV A, string
CALL strlen
MOV C, D 

 
HLT
strlen:
    MOV D, [counter]
loop:
    MOV B, [A]
    CMP B, 0
    JE out_of_strlen
    INC D
    INC A
    JMP loop

out_of_strlen: 
    MOV [counter], D   
    RET


