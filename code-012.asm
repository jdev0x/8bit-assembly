;3: ((0x4F >> 5) & ((~0x17) << 4) >> (~0xFC))

MOV A, 0x4F
SHR A, 5

MOV B, 0x17
NOT B

SHL B, 4


MOV C, 0xFC
NOT C

SHR B, C

AND A, B
