section .data ; Section .data is data the IDE'll use later, data goes to memory
msg:    db "Hello, World!", 10
msg_len: equ $ - msg ; determins the length of the message

section .text ; the code
global _start
_start:

; sys write
mov rax, 1 ; sets the syscall function to write mode
mov rsi, 1 
mov rsi, msg ; reads the "Hello, World!" from memory
mov rdx, msg_len ; sets address rdx to the length of
syscall ; execute the write command using the above variables

;sys exit
mov rax, 60 ; set rax to sys_exit code
mov rdi, 0 ; set rdi to exit code 0
syscall


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
