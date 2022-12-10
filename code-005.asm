; A = 1, B = 2, C = 3, D = 4
; A = D, D = A, C = B, B = C

MOV A, 1
MOV B, 2
MOV C, 3
MOV D, 4

PUSH A
PUSH D
POP A 
POP D

PUSH C
PUSH B
POP C
POP B


