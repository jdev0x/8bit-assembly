; input -> A, ASCII code
; process -> change character from uppercase to lower case
; output -> D, ASCII code for lowercase

MOV A, 65
CALL to_lower
HLT


to_lower:
    MOV D, A
    ADD D, 32 ; distance between uppercase and lowercase
    RET 
