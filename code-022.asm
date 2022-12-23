MOV A, 10
MOV B, 28

CALL add_function
MOV C, A

CALL sub_function
MOV D, B

HLT




add_function:
ADD A, B
RET



sub_function:
SUB B, A
RET
