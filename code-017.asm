    MOV A, 0x00

loop:
    CMP A, 05
    JE out_of_code
    INC A
    CMP A, 0x0A
    JE out_of_code
    JMP loop

out_of_code:
    HLT
