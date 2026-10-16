global _start

section .data
    ; Write your data here

section .text
_start:
    ; Write your code here
    inc r10b
    cmp r10b, 25
    jae loop_end
    loop _start
loop_end:
    mov rax, 60         ; syscall 60: exit
    xor rdi, rdi        ; with status 0
    syscall


; ---METADATA--- do not write below here
; {
;     "version": 2,
;     "description": "",
;     "name": "loops",
;     "language": "X86",
;     "createdAt": 1792096454208,
;     "updatedAt": 1792096602726,
;     "testcases": [],
;     "id": "JpFyDDG",
;     "entry": "main.asm",
;     "settings": {},
;     "files": {}
; }