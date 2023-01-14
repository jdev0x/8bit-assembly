;#include <stdio.h>

;int main(){
;    int vals [] = {1, 2, 3, 4, 5};
;    int vals_len = 5;
;    for(int i = 0; i < vals_len; i++){
;       printf("%d\n", vals[i]);
;    }
;    return 0;
;}

JMP code
; data 
    vals: db 1
          db 2
          db 3
          db 4 
          db 5
         
    vals_len: db 5

code:
    MOV A, 0
    MOV B, 232
    MOV C, vals
loop:
    CMP A, [vals_len]
    JE out_of_code
    MOV D, [C]
    ADD D, 48
    MOV [B], D
    INC A
    INC B
    INC C  
 
JMP loop

out_of_code:
           HLT
