;unsigned char value = (((0x3E << 1) & 0xDE) | 0xFD) ^ 0xA5

MOV A, 0x3E

SHL A, 1
AND A, 0xDE
OR A, 0xFD
XOR A,0xA5
