    MOV A, 232
    MOV B, 65
    MOV C, 0x00


print_char: MOV [A], B ; print current character 
    INC A
    MOV [A], 32
    INC A
    INC B
    INC C
    CMP C, 0x0A
    
    JE end_of_print
    JMP print_char

end_of_print:
    HLT

