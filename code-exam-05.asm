;bool isEven(int x) {
;  // An if-else statement.
;  if (x % 2 == 0) {
;    return true;
;  } else {
    return false;
; }
;}


;void main() {
;  if (isEven(10)) {
;     print("yes");
;  }
;}


JMP main
    string: db "Yes"
            db 0
    bitwise: 1
    

main:
    MOV D, 9
    Call isEven
    MOV A, 232
    MOV B, string

    
loop:
    MOV C, [B]
    MOV [A], C
    INC A
    INC B
    CMP C, 0
    JE out
JMP loop
  
out:
   HLT


isEven:
    AND D, 1
    CMP D, 0
    JNE false
    MOV D, 1
    RET
    false:
    MOV D, 0 
    HLT
