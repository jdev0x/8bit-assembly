MOV A, 0xBE

CALL set_function
CALL clear_function
CALL toggle_function

HLT


set_function:
    MOV B, 000100001b ; bitmask
    OR A, B
    RET



clear_function:
    MOV C, 00010000b
    AND A, C
    RET


toggle_function:
    MOV D, 01000100b
    XOR A, D
    RET

