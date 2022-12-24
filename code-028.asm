; input -> A,B
; process -> A<<B
; output -> C

MOV A, 2
MOV B, 2
CALL shlfunction
HLT


shlfunction:
    SHL A, B
    MOV C, A
    RET
    
