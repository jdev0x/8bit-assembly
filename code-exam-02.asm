;void main() {
;  print('Welcome to Dart');
; }

; data
    JMP main
    string: db "Welcome to Dart"
            db 0

    
main:
    MOV B, 232
    MOV C, string

loop:
    MOV D, [C]
    MOV [B], D
    INC C
    INC B
    CMP D, 0
    JE out_of_loop
JMP loop
    

out_of_loop:
    HLT
