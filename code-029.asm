MOV A, 5
MOV B, 8
MOV C, 6
MOV D, 2

CALL bitwise

ADD A, 2

MOV A, 0
MOV B, 1
MOV C, 2
MOV D, 3

CALL bitwise
HLT

bitwise:
    NOT A
    AND B, C
    XOR A, B
    OR A, D
    RET
