format ELF64
section '.text' executable
public _start
; class_ptr:
; headptr_isnull:
; class_bool:
; class_cstr:
; headcstr_len:
; headcstr_print:
; headcstr_cr:
; headcstr_println:
; headcstr_eq:
; headcstr_cpy:
; headcstr_last:
; headcstr_clear:
; headcstr_cat:
; headcstr_isnum:
; headcstr_int:
; headcstr_split:
; headcstr_iter:
; class_cstr:
proc_cstr_len:
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    add rsp, 8
    push qword 0
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_0: ; if
    pop rax
    push rax
    push rax
.blockstart_1: ; do
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rbx
    test rbx, rbx
    jnz .blockstart_1
.blockend_1: ; do
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_print:
    pop rax
    push rax
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_len
.blockend_0: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    push qword 1
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
    add rsp, 8
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_cr:
    push qword 1
    push str_0
    push qword 1
    push qword 1
    pop rax
    pop rdi
    pop rsi
    pop rdx
    syscall
    push rax
    add rsp, 8
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_println:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_print
.blockend_0: ; call
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_cr
.blockend_1: ; call
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_eq:
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_0: ; do
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    and rax, rbx
    push rax
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    add rsp, 8
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_1: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    or rax, rbx
    push rax
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    add rsp, 8
    add rsp, 8
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_2: ; if
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_cpy:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_0: ; do
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    add rsp, 8
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_last:
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_0: ; do
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_clear:
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_0: ; if
    pop rax
    push rax
    push rax
.blockstart_1: ; do
    pop rax
    push rax
    push rax
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rbx
    test rbx, rbx
    jnz .blockstart_1
.blockend_1: ; do
    add rsp, 8
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_cat:
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    push rax
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_len
.blockend_0: ; call
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_cpy
.blockend_1: ; call
    add rsp, 8
    add rsp, 8
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_isnum:
    mov rax, [loc_stack_rsp]
    add rax, 1
    mov [loc_stack_rsp], rax
    mov rax, [loc_stack_rsp]
    add rax, 1
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    push qword 48'
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp - 8]
    add rax, 1
    push rax
    push qword 57'
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    pop rax
    push rax
    push rax
    pop rax
    push rax
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_len
.blockend_0: ; call
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 98'
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    mov rax, [ret_stack_rsp - 8]
    add rax, 1
    push rax
    push qword 49'
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockend_1: ; if
    pop rax
    push rax
    push rax
    push qword 104
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    mov rax, [ret_stack_rsp - 8]
    add rax, 1
    push rax
    push qword 102
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockend_2: ; if
    add rsp, 8
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 45'
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockend_3: ; if
.blockstart_4: ; do
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    push rax
    push rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    mov rax, [ret_stack_rsp - 8]
    add rax, 1
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rax
    pop rbx
    or rax, rbx
    push rax
    pop rbx
    test rbx, rbx
.blockstart_5: ; if
    jz .blockend_5
    add rsp, 8
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 98'
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 104
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    or rax, rbx
    push rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_cstr_len
.blockend_6: ; call
    push qword 1
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    and rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    mov rax, [loc_stack_rsp]
    sub rax, 2
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_5: ; if
    add rsp, 8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_4
.blockend_4: ; do
    add rsp, 8
    push qword 1
    mov rax, [loc_stack_rsp]
    sub rax, 2
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_int:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    push qword 10
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    pop rax
    push rax
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_isnum
.blockend_0: ; call
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    add rsp, 8
    push qword 0
    mov rax, [loc_stack_rsp]
    sub rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_1: ; if
    pop rax
    push rax
    push rax
    pop rax
    push rax
    push rax
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_len
.blockend_2: ; call
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 98'
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_3: ; if
    jz .blockend_3
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    push qword 2
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockend_3: ; if
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 104
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_4: ; if
    jz .blockend_4
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    push qword 16
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockend_4: ; if
    add rsp, 8
    push qword 0
.blockstart_5: ; do
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    pop rbx
    imul rax, rbx
    push rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 70'
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 65'
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rax
    pop rbx
    and rax, rbx
    push rax
    pop rbx
    test rbx, rbx
.blockstart_6: ; if
    jz .blockend_6
    push qword 65'
    push qword 10
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push qword 48'
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockend_6: ; if
    push qword 48'
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    push rax
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 98'
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rax
    pop rbx
    and rax, rbx
    push rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 104
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rax
    pop rbx
    and rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    test rbx, rbx
    jnz .blockstart_5
.blockend_5: ; do
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    mov rax, [loc_stack_rsp]
    sub rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_split:
    mov rax, [loc_stack_rsp]
    add rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [loc_stack_rsp]
    add rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_clear
.blockend_0: ; call
.blockstart_1: ; do
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    add rsp, 8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_2: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_1
.blockend_1: ; do
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_cstr_iter:
    mov rax, [loc_stack_rsp]
    add rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    push qword 0
    push qword 0
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_0: ; if
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
; class_int:
; headint_gettmp:
; headint_inctmpidx:
; headint_cstr:
; headint_cstrhex:
; headint_print:
; headint_printhex:
; class_int:
proc_int_gettmp:
    push mem+8; int_tmpresult
    push qword 30
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+0; int_tmpidx
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_int_inctmpidx:
    push mem+0; int_tmpidx
    push mem+0; int_tmpidx
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_int_cstr:
.blockstart_0: ; do
    push qword 10
    xor rdx, rdx
    pop rbx
    pop rax
    idiv rbx
    push rax
    push rdx
    push qword 48'
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_int_gettmp
.blockend_1: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_int_inctmpidx
.blockend_2: ; call
    pop rax
    push rax
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_int_gettmp
.blockend_3: ; call
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+0; int_tmpidx
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_int_cstrhex:
.blockstart_0: ; do
    push qword 16
    xor rdx, rdx
    pop rbx
    pop rax
    idiv rbx
    push rax
    push rdx
    pop rax
    push rax
    push rax
    push qword 9
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    push qword 97'
    push qword 10
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockend_1: ; if
    pop rax
    push rax
    push rax
    push qword 10
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    push qword 48'
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockend_2: ; if
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_int_gettmp
.blockend_3: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_int_inctmpidx
.blockend_4: ; call
    pop rax
    push rax
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_int_gettmp
.blockend_5: ; call
    push qword 36'
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_int_inctmpidx
.blockend_6: ; call
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_int_gettmp
.blockend_7: ; call
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push mem+0; int_tmpidx
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_int_print:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_int_cstr
.blockend_0: ; call
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_print
.blockend_1: ; call
    push mem+0; int_tmpidx
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_int_printhex:
.blockstart_0: ; do
    push qword 16
    xor rdx, rdx
    pop rbx
    pop rax
    idiv rbx
    push rax
    push rdx
    pop rax
    push rax
    push rax
    push qword 9
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    push qword 97'
    push qword 10
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockend_1: ; if
    pop rax
    push rax
    push rax
    push qword 10
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
    push qword 48'
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockend_2: ; if
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_int_gettmp
.blockend_3: ; call
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_int_inctmpidx
.blockend_4: ; call
    pop rax
    push rax
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_int_gettmp
.blockend_5: ; call
    push qword 120
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_int_inctmpidx
.blockend_6: ; call
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_int_gettmp
.blockend_7: ; call
    push qword 48'
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_int_inctmpidx
.blockend_8: ; call
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_int_gettmp
.blockend_9: ; call
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_cstr_print
.blockend_10: ; call
    push mem+0; int_tmpidx
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
; class_heapentry:
; headheapentry_isentry:
; class_heap:
; headheap_allocpage:
; headheap_init:
; headheap_map:
; headheap_alloc:
; headheap_zalloc:
; headheap_free:
; headheap_realloc:
; class_mem:
; headmem_cpy:
; headmem_eq:
; headmem_zero:
; headmem_set:
; headmem_mov:
; class_mem:
proc_mem_cpy:
    mov rax, [loc_stack_rsp]
    add rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    add rsp, 8
    add rsp, 8
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_0: ; if
.blockstart_1: ; do
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_1
.blockend_1: ; do
    add rsp, 8
    add rsp, 8
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_mem_eq:
    mov rax, [loc_stack_rsp]
    add rax, 0
    mov [loc_stack_rsp], rax
    pop rax
    pop rbx
    push rax
    push rbx
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockstart_0: ; do
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    add rsp, 8
    add rsp, 8
    push qword 0
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_1: ; if
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    push rax
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    pop rax
    push rax
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
    add rsp, 8
    push qword 1
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_mem_zero:
    mov rax, [loc_stack_rsp]
    add rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockstart_0: ; do
    pop rax
    push rax
    push rax
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_mem_set:
    mov rax, [loc_stack_rsp]
    add rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [loc_stack_rsp]
    add rax, 1
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
.blockstart_0: ; do
    pop rax
    push rax
    push rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    push qword 1
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 1
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
    mov rax, [loc_stack_rsp]
    sub rax, 1
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_mem_mov:
    mov rax, [loc_stack_rsp]
    add rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [loc_stack_rsp]
    add rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    pop rax
    pop rbx
    push rax
    push rbx
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_alloc
.blockend_0: ; call
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_mem_cpy
.blockend_1: ; call
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_mem_cpy
.blockend_2: ; call
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_heap_free
.blockend_3: ; call
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
; class_heapentry:
proc_heapentry_isentry:
    pop rax
    push rax
    push rax
    pop rax
    push rax
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rax
    pop rbx
    cmp rax, rbx
    cmove rcx, rdx
    push rcx
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    push qword 1
    pop rax
    pop rbx
    and rax, rbx
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovne rcx, rdx
    push rcx
    pop rax
    pop rbx
    and rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
; class_heap:
proc_heap_allocpage:
    push mem+32; heapend
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 64000
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push mem+32; heapend
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 12
    pop rax
    pop rdi
    syscall
    push rax
    push qword 0
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    push str_1
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_println
.blockend_1: ; call
.blockend_0: ; if
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_heap_init:
    push mem+40; heapinit
    pop rax
    xor rbx, rbx
    mov bl, [rax]
    push rbx
    pop rbx
    test rbx, rbx
.blockstart_0: ; if
    jz .blockend_0
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_0: ; if
    push mem+40; heapinit
    push qword 1
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    push mem+24; heapstart
    push qword 0
    push qword 12
    pop rax
    pop rdi
    syscall
    push rax
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push mem+32; heapend
    push mem+24; heapstart
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_heap_allocpage
.blockend_1: ; call
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_heap_alloc:
    mov rax, [loc_stack_rsp]
    add rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_init
.blockend_0: ; call
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push qword 32
    xor rdx, rdx
    pop rbx
    pop rax
    idiv rbx
    push rax
    push rdx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push qword 32
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
    push mem+24; heapstart
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 32
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 32
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_1: ; do
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 32
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 32
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push mem+32; heapend
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
.blockstart_2: ; if
    jz .blockend_2
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_heap_allocpage
.blockend_3: ; call
.blockend_2: ; if
    pop rax
    push rax
    push rax
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_heapentry_isentry
.blockend_4: ; call
    pop rbx
    test rbx, rbx
.blockstart_5: ; if
    jz .blockend_5
    pop rax
    push rax
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    push qword 0
    push qword 32
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    push qword 32
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockend_5: ; if
    pop rax
    pop rbx
    push rbx
    push rax
    push rbx
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovl rcx, rdx
    push rcx
    pop rbx
    test rbx, rbx
    jnz .blockstart_1
.blockend_1: ; do
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    pop rax
    push rax
    push rax
    pop rax
    push rax
    push rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    pop rax
    push rax
    push rax
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 1
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_heap_zalloc:
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heap_init
.blockend_0: ; call
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_heap_alloc
.blockend_1: ; call
    pop rax
    push rax
    push rax
    pop rax
    push rax
    push rax
    push qword 0
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_mem_zero
.blockend_2: ; call
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_heap_free:
    push qword 0
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    pop rax
    push rax
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heapentry_isentry
.blockend_0: ; call
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    add rsp, 8
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_1: ; if
    push qword 16
    pop rax
    pop rbx
    add rax, rbx
    push rax
    push qword 0
    pop rbx
    pop rax
    mov byte [rax], bl
    push rax
    add rsp, 8
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_heap_realloc:
    mov rax, [loc_stack_rsp]
    add rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [loc_stack_rsp]
    add rax, 0
    mov [loc_stack_rsp], rax
    push qword 0
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
    push qword 32
    xor rdx, rdx
    pop rbx
    pop rax
    idiv rbx
    push rax
    push rdx
    pop rax
    pop rbx
    push rax
    push rbx
    add rsp, 8
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push qword 32
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    pop rax
    push rax
    push rax
    push qword 0
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_heapentry_isentry
.blockend_0: ; call
    pop rax
    xor rax, 1
    push rax
    pop rbx
    test rbx, rbx
.blockstart_1: ; if
    jz .blockend_1
    add rsp, 8
    push qword 0
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
.blockend_1: ; if
    pop rax
    push rax
    push rax
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_heap_free
.blockend_2: ; call
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_heap_alloc
.blockend_3: ; call
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
    pop rax
    push rax
    push rax
    push qword 0
    pop rbx
    pop rax
    sub rax, rbx
    push rax
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    push qword 0
    pop rbx
    pop rax
    sub rax, rbx
    push rax
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_mem_cpy
.blockend_4: ; call
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
; class_hash:
proc_hash_xor:
    pop rbx
    pop rax
    xor rax, rbx
    push rax
    push 0
    add rsp, 8
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_hash_addint:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    shl rax, 10
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    shr rax, 6
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_hash_xor
.blockend_0: ; call
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [loc_stack_rsp]
    sub rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_hash_finish:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    pop rax
    push rax
    push rax
    pop rax
    shl rax, 3
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    shr rax, 11
    push rax
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_hash_xor
.blockend_0: ; call
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    shl rax, 15
    push rax
    pop rax
    pop rbx
    add rax, rbx
    push rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [loc_stack_rsp]
    sub rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_hash_new:
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [loc_stack_rsp]
    add rax, 8
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp - 8]
    add rax, 8
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    mov rax, [ret_stack_rsp - 8]
    add rax, 16
    push rax
    push qword 0
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 0
.blockstart_0: ; do
    pop rax
    push rax
    push rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 8
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    mov rax, [ret_stack_rsp - 8]
    add rax, 16
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    pop rbx
    push rax
    push rbx
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_hash_addint
.blockend_1: ; call
    mov rax, [ret_stack_rsp - 8]
    add rax, 16
    push rax
    pop rax
    pop rbx
    push rax
    push rbx
    pop rbx
    pop rax
    mov qword [rax], rbx
    push rax
    add rsp, 8
    push qword 8
    pop rax
    pop rbx
    add rax, rbx
    push rax
    pop rax
    push rax
    push rax
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_int_print
.blockend_2: ; call
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_cr
.blockend_3: ; call
    pop rax
    push rax
    push rax
    mov rax, [ret_stack_rsp - 8]
    add rax, 0
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
    pop rax
    push rax
    push rax
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_int_print
.blockend_4: ; call
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_cstr_cr
.blockend_5: ; call
    mov rcx, 0
    mov rdx, 1
    pop rbx
    pop rax
    cmp rax, rbx
    cmovg rcx, rdx
    push rcx
    pop rax
    xor rax, 1
    push rax
    push str_2
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_cstr_println
.blockend_6: ; call
    pop rbx
    test rbx, rbx
    jnz .blockstart_0
.blockend_0: ; do
    add rsp, 8
    mov rax, [ret_stack_rsp - 8]
    add rax, 16
    push rax
    pop rax
    xor rbx, rbx
    mov rbx, [rax]
    push rbx
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_hash_finish
.blockend_7: ; call
    mov rax, [loc_stack_rsp]
    sub rax, 24
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
proc_main:
    push str_3
.blockstart_0: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_0
    jmp proc_cstr_println
.blockend_0: ; call
.blockstart_1: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_1
    jmp proc_cstr_cr
.blockend_1: ; call
    push str_4
.blockstart_2: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_2
    jmp proc_cstr_println
.blockend_2: ; call
    push str_5
    pop rax
    push rax
    push rax
.blockstart_3: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_3
    jmp proc_cstr_len
.blockend_3: ; call
.blockstart_4: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_4
    jmp proc_hash_new
.blockend_4: ; call
.blockstart_5: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_5
    jmp proc_int_printhex
.blockend_5: ; call
.blockstart_6: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_6
    jmp proc_cstr_cr
.blockend_6: ; call
    push str_6
    pop rax
    push rax
    push rax
.blockstart_7: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_7
    jmp proc_cstr_len
.blockend_7: ; call
.blockstart_8: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_8
    jmp proc_hash_new
.blockend_8: ; call
.blockstart_9: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_9
    jmp proc_int_printhex
.blockend_9: ; call
.blockstart_10: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_10
    jmp proc_cstr_cr
.blockend_10: ; call
    push str_7
    pop rax
    push rax
    push rax
.blockstart_11: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_11
    jmp proc_cstr_len
.blockend_11: ; call
.blockstart_12: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_12
    jmp proc_hash_new
.blockend_12: ; call
.blockstart_13: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_13
    jmp proc_int_printhex
.blockend_13: ; call
.blockstart_14: ; call
    mov rax, [ret_stack_rsp]
    add rax, 16
    mov rbx, [loc_stack_rsp]
    mov qword [rax - 8], rbx
    mov qword [ret_stack_rsp], rax
    mov qword [rax], .blockend_14
    jmp proc_cstr_cr
.blockend_14: ; call
    mov rax, [loc_stack_rsp]
    sub rax, 0
    mov [loc_stack_rsp], rax
    mov rax, [ret_stack_rsp]
    sub rax, 16
    mov qword [ret_stack_rsp], rax
    add rax, 16
    jmp qword [rax]
    jmp quit
_start:
    mov qword [args_ptr], rsp
    mov qword [ret_stack_rsp], ret_stack
    mov qword [loc_stack_rsp], loc_stack
    mov rax, [ret_stack_rsp] 
    mov qword [rax], quit
    jmp proc_main
quit:
    mov rax, 60
    mov rdi, 0
    syscall
section '.data'
str_0: db 10, 0 ;\n
str_1: db 99, 111, 117, 108, 100, 32, 110, 111, 116, 32, 97, 108, 108, 111, 99, 97, 116, 101, 32, 104, 101, 97, 112, 0 ;could not allocate heap
str_2: db 108, 111, 108, 0 ;lol
str_3: db 35, 32, 104, 97, 115, 104, 32, 116, 101, 115, 116, 115, 0 ;# hash tests
str_4: db 45, 32, 104, 97, 115, 104, 46, 110, 101, 119, 0 ;- hash.new
str_5: db 102, 100, 115, 97, 97, 97, 97, 102, 102, 97, 102, 100, 115, 97, 97, 97, 97, 102, 102, 97, 102, 100, 115, 97, 97, 97, 97, 102, 102, 97, 0 ;fdsaaaaffafdsaaaaffafdsaaaaffa
str_6: db 108, 111, 108, 97, 97, 97, 97, 97, 0 ;lolaaaaa
str_7: db 102, 100, 115, 97, 97, 97, 97, 97, 0 ;fdsaaaaa
section '.bss'
args_ptr: rq 1
ret_stack_rsp: rq 1
ret_stack: rq 1024
loc_stack_rsp: rq 1
loc_stack: rq 512
mem: rb 41
