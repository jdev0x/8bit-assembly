    MOV A, 232
    MOV B, 97
    MOV C, 0x00

print_char: MOV [A], B ; print current character 
    INC A
    INC B
    INC C
    CMP C, 0x0A
    JE end_of_print
    JMP print_char

end_of_print:
    HLT

