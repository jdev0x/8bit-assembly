    MOV A, 2
    CALL my_function
    MOV C, A

    HLT

my_function:
    SHL A, 2
    RET
