global _start
section .text
_start:
    inc r10b         ; increment r10b by one
    cmp r10b, 25     ; compare r10b and 25
    jae loop_end     ; if r10b = 25, jump to loop_end, if not, continue
    loop _start      ; jumps to _start
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
