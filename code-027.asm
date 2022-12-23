MOV D, 2
CALL print_numbers
HLT

print_numbers:
    MOV A, 113
    MOV B, 232
    MOV C, 0    
    MOV D, 32
loop:
    MOV [B],  A
    INC A
    INC B
    MOV [B], D
    INC B
    INC C
    CMP C, 10
    JE out_of_function
    JMP loop


out_of_function:
    RET
