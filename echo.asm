global _start

section .bss
    buffer resb 64

section .text
_start:
    ;wait for input
    mov rax, 0          
    mov rdi, 0          
    mov rsi, buffer     
    mov rdx, 64         
    syscall 
    ;save the # of bytes to r12 for printing
    mov r12, rax
    ;print user input
    mov rax, 1
    mov rdi, 1
    mov rsi, buffer
    mov rdx, r12        
    syscall
    loop _start ; loop until stop program


; ---METADATA--- do not write below here
; {
;     "version": 2,
;     "description": "",
;     "name": "echo",
;     "language": "X86",
;     "createdAt": 1792078355563,
;     "updatedAt": 1792093323141,
;     "testcases": [],
;     "id": "ArpFHAo",
;     "entry": "main.asm",
;     "settings": {},
;     "files": {},
;     "openTabs": [
;         "main.asm"
;     ],
;     "activeTab": "main.asm"
; }