; input -> A, ASCII code
; process -> change character from lowercase to uppercase
; output -> D, ASCII code for uppercase

MOV A, 98
CALL to_lower
HLT


to_lower:
    ; if a>=97 and a<=122
    CMP A, 97
    JB eof
    CMP A, 122
    JA eof
    
    MOV D, A
    SUB D, 32 ; distance between lowercase and uppercase
eof:
    RET 

