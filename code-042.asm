;#include <stdio.h>

;int main()
;{
;    int result = 75;
;    if(result < 75){
;        printf("A");
;    }else if (result == 75){
;        printf("B");
;    }else{
;        printf("C");
;    }
;    
;    return 0;
;}


main:

    MOV A, 75 
    MOV B, 232 
    
    CMP A, 75
    JB print_a
    CMP A, 75
    JE print_b
    MOV [B], 67
    HLT
    
print_a:
    MOV [B], 65
    HLT
    
print_b:
    MOV [B], 66
    
