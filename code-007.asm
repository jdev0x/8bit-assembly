; x86 example

mov    eax,0xe27c3d5e
mov    ebx,0x4
mov    eax,0x7
mov    ebx,0x9
add    eax,ebx

;0:  b8 5e 3d 7c e2          mov    eax,0xe27c3d5e
;5:  bb 04 00 00 00          mov    ebx,0x4
;a:  b8 07 00 00 00          mov    eax,0x7
;f:  bb 09 00 00 00          mov    ebx,0x9
;14: 01 d8                   add    eax,ebx
