;int main()
;{
;    int value = 0;
;    for(int i = 1; i <= 10; i++){
;       if(i == 5) break;
;        value++;
;    }
   
;    return 0;
;}



MOV A, 0 ;  represents value 
MOV B, 1 ; represents (i) counter

loop:
    CMP B, 10
    JA out_of_code
    CMP B, 5 
    JE out_of_code
    INC A 
    INC B 
    

JMP loop

out_of_code:
    HLT
    
