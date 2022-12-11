    MOV A, 232
    MOV B, 90
    MOV C, 10

loop:
    MOV [A], B
    INC A
    DEC B
    DEC C
    CMP C, 0
    JE end_of
    JMP loop

end_of:
     HLT
