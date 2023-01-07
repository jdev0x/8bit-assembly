jmp code
; data
sadder: db 232

code:
  MOV A, [sadder]
  MOV [A], 65
  HLT
