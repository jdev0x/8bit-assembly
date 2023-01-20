; input -> function -> output
MOV A, 5
CALL double
MOV C, D
HLT

double:
    ADD A, A
    MOV D, A    
    RET

; using MUL

; input -> function -> output
MOV A, 5
CALL double
MOV C, D
HLT

double:
    MUL 2
    MOV D, A    
    RET
