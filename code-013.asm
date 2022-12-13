;4: ((0xA2 | 0xF3) ^ (~(0x3E & 0x2E))) << 0x02

MOV A, 0xA2

OR  A,0xF3                                                                                 
MOV B, 0x3E
AND B, 0x2E
NOT B
XOR A, B
SHL A, 0x02
