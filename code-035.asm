; value = 'A'
; if (value == 'A')
;    print(value)

MOV A, 53

CMP A, 65
JNE eof
MOV B, 232
MOV [B], A


eof:
HLT
