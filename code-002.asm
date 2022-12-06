mov a, 232
mov b, 10
mov c, 57

loop:
mov [a], c
inc a
dec b
dec c
cmp b, 0
je out_of_code
jmp loop


out_of_code:
hlt
