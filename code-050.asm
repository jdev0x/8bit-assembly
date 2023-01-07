MOV A, 11111111b
MOV B, 00000001b
MOV C, 0
MOV D, 0

loop:
    PUSH A
    AND A, B
    SHL B, 1
    CMP A, 0
    JNE one
    POP A 
    INC C
    CMP C, 8
    JE out_of_code
    JMP loop
one:
    INC D
    POP A
    INC C
    CMP C, 8
    JE out_of_code        
    JMP loop

out_of_code:
    HLT
