
;
; @author Ammar Faizi <ammarfaizi2@gmail.com> https://www.facebook.com/ammarfaizi2
; @license MIT
; @version 0.0.01
;

section .data
	aa0s db "Welcome to Tea Registration!",10
	aa0l equ $-aa0s
	aa1s db "Enter your name: "
	aa1l equ $-aa1s
	aa2s db "Register Success!",10
	aa2l equ $-aa2s
	filename db "database.txt",0
	in01l db 0,0,0

section .bss
	in01s resb 72
	unixtime resb 12
	file_dec resb 3

section .text
	global _start

p:
	mov rax,1
	mov rdi,1
	syscall
	ret

_start:
	call welcome
	call get_name
	call get_time
	call write_to_file
	call success
	call exit

welcome:
	mov rsi,aa0s
	mov rdx,aa0l
	call p
	ret

get_name:
	mov rsi,aa1s
	mov rdx,aa1l
	call p
	mov rax,0
	mov rdi,0
	mov rsi,in01s
	mov rdx,72
	syscall
	dec rax
	mov rsi,0
	mov rdi,0
	mov [in01s+rax],rdi
	mov [in01l],ax
	ret

write_to_file:
	mov rax,2
	mov rdi,filename
	mov rsi,1089 ; O_CREAT | O_APPEND | O_RWONLY
	mov rdx,493 ; Permission 0755
	syscall
	mov [file_dec],eax
	mov rax,1
	mov edi,[file_dec]
	mov rsi,unixtime
	mov rdx,11
	syscall
	mov edi,[file_dec]
	mov rsi,in01s
	mov ax,[in01l]
	mov rdx,rax
	mov rax,1
	syscall
	push 10
	mov rax,1
	mov edi,[file_dec]
	mov rsi,rsp
	mov rdx,1
	syscall
	pop rax
	ret

get_time:
	mov rax,201 ; time()
	xor rdi,rdi
	syscall
	mov r8,0
  .collect_num:
  	inc r8
  	mov rdx,0
  	mov rbx,10
  	div rbx
  	push dx
  	or eax,eax
  	jne .collect_num
  	dec r8
  	mov r9,-1
  	mov rdi,unixtime
  .save:
  	inc r9
  	pop ax
  	or al,0b110000
  	mov [rdi],al
  	add rdi,1
  	cmp r9,r8
  	jl .save
  	mov byte [rdi], '|'
	ret

success:
	mov rsi,aa2s
	mov rdx,aa2l
	call p
	ret

exit:
	mov rax,60
	xor rdi,rdi
	syscall
	ret
