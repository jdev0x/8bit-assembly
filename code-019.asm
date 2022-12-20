    MOV A, 241
    MOV B, 97
    MOV C, 0x0A

print_char: MOV [A], B ; print current character 
    DEC A
    INC B
    DEC C
    CMP C, 0x00
    JE end_of_print
    JMP print_char

end_of_print:
    HLT

