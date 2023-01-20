main:
MOV A, 5
MOV B, 0xFF
CALL allocate
HLT
allocate:
    SUB SP, A
    MOV [SP+1], B
    ADD SP, A
RET
