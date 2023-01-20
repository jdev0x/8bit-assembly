MOV A, 5
MOV B, 6
CALL sum
MOV C, D

HLT

sum:
    ADD A, B
    MOV D, A
    RET
