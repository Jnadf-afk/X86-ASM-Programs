section .data
msg:    db "Hello, World!", 10
msg_len: equ $ - msg

section .text
global _start
_start:

; sys write
mov rax, 1
mov rsi, 1
mov rsi, msg
mov rdx, msg_len
syscall 

;sys exit
mov rax, 60 ; set rax to sys_exit code
mov rdi, 0 ; set rdi to exit code 0
syscall

; NOTEs:
; -rax sets syscall function
; -rdi sets exit code on syscall 60


; ---METADATA--- do not write below here
; {
;     "version": 2,
;     "description": "",
;     "name": "Hello, World!",
;     "language": "X86",
;     "createdAt": 1792035550263,
;     "updatedAt": 1792078194141,
;     "testcases": [],
;     "id": "uIzAzqM",
;     "entry": "main.asm",
;     "settings": {},
;     "files": {}
; }