JMP start

name: db "ALJAWHARAH"
      db 0

start:
MOV A, 232
MOV B, name
MOV D, 10

loop:
MOV C, [B]
MOV [A], C
INC A
INC B
DEC D
CMP D, 0
JE end_of_code
JMP loop

end_of_code:
HLT

