JMP main
    string: db "SUNDAYMONDAY"
            db 0
                                                                                                 
main:
    MOV D, 232
    MOV A, string 
    CALL to_lower

HLT

to_lower:

loop:
    
    MOV B, [A]
    CMP B, 0
    JE out_of_to_lower
    ADD B, 32
    MOV [D], B
    INC A 
    INC D
    JMP loop

out_of_to_lower: 
    RET

