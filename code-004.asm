; bitwise operations

; ~(((0xE2 | 0xF2) ^ (~0x3E)) << 5)


MOV A, 0xE2
OR A, 0xF2
MOV B, 0xF2
NOT B
XOR A, B
SHL A, 5
NOT A
