;void main() {
;  for (int i = 0; i < 5; i++) {
;    print(i);
;  }
;}


main:
    MOV A, 0
    ADD A, 47
    MOV B, 232

loop:
    CMP A, 52
    JE out_of_code
    INC A
    MOV [B], A
    INC B

JMP loop

out_of_code:
    HLT

    
