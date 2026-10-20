global _start
;r8 = num
;r9 = prevnum
;r10 = store
section .data
section .text
_start:
    mov r8, 1       ; num =1
    mov r9, 1       ; prevnum = 1
    add r8, r9      ; Num = num + prevnum
    _loop:
    mov r10, r8     ; store = num
    add r8, r9      ; num = num + prevnum
    mov r9, r10     ;prevnum = store
    cmp r8, 37      ;if num = 37 in hex:
    jae _end        ;jump to end
    loop _loop      ; else: loop
_end:
    mov rax, 60      ; syscall 60: exit
    xor rdi, rdi     ; with status 0
    syscall


; ---METADATA--- do not write below here
; {
;     "version": 2,
;     "description": "",
;     "name": "Fibonacci",
;     "language": "X86",
;     "createdAt": 1792513296462,
;     "updatedAt": 1792519115646,
;     "testcases": [],
;     "id": "wuyAnCw",
;     "entry": "main.asm",
;     "settings": {},
;     "files": {},
;     "openTabs": [
;         "main.asm"
;     ],
;     "activeTab": "main.asm"
; }