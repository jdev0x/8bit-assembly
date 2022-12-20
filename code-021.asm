    MOV B, 232  ; screen address
    MOV A, 65   ; ascii value for A character
    MOV C, 0x0A ; loop counter
 
print: 
    MOV [B], A
    ADD A, 2
    INC B
    DEC C
    CMP C, 0
    JE out_of_print
    JMP print


out_of_print:
    HLT
                 
