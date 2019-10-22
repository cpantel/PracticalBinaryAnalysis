	.file	"functions.c"
	.intel_syntax noprefix
	.section	.rodata
.LC0:
	.string	"first"
.LC1:
	.string	"second"
.LC2:
	.string	"third"
.LC3:
	.string	"fourth"
	.text
	.globl	int2ordinal
	.type	int2ordinal, @function
int2ordinal:                                   ### function ###
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	mov	DWORD PTR [rbp-52], edi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR [rbp-8], rax
	xor	eax, eax
	mov	QWORD PTR [rbp-48], OFFSET FLAT:.LC0
	mov	QWORD PTR [rbp-40], OFFSET FLAT:.LC1
	mov	QWORD PTR [rbp-32], OFFSET FLAT:.LC2
	mov	QWORD PTR [rbp-24], OFFSET FLAT:.LC3
	mov	eax, DWORD PTR [rbp-52]
	cdqe
	mov	rax, QWORD PTR [rbp-48+rax*8]
	mov	rdx, QWORD PTR [rbp-8]
	xor	rdx, QWORD PTR fs:40
	je	.L3
	call	__stack_chk_fail
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	int2ordinal, .-int2ordinal
	.globl	strLen
	.type	strLen, @function
strLen:                                      ### function ###
.LFB1:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR [rbp-8], rdi
	mov	rax, QWORD PTR [rbp-8]
	mov	rdi, rax
	call	strlen
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	strLen, .-strLen
	.section	.rodata
.LC4:
	.string	"%s: %d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 88
	.cfi_offset 3, -24
	mov	DWORD PTR [rbp-84], edi
	mov	QWORD PTR [rbp-96], rsi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR [rbp-24], rax
	xor	eax, eax
	mov	DWORD PTR [rbp-72], 1
	jmp	.L7
.L9:
	mov	edi, 256
	call	malloc
	mov	rdx, rax
	mov	eax, DWORD PTR [rbp-72]
	cdqe
	mov	QWORD PTR [rbp-64+rax*8], rdx
	mov	eax, DWORD PTR [rbp-72]
	cdqe
	lea	rdx, [0+rax*8]
	mov	rax, QWORD PTR [rbp-96]
	add	rax, rdx
	mov	rax, QWORD PTR [rax]
	mov	rdi, rax
	call	strLen
	mov	ebx, eax
	mov	eax, DWORD PTR [rbp-72]
	mov	edi, eax
	call	int2ordinal
	mov	rdx, rax
	mov	eax, DWORD PTR [rbp-72]
	cdqe
	mov	rax, QWORD PTR [rbp-64+rax*8]
	mov	ecx, ebx
	mov	esi, OFFSET FLAT:.LC4
	mov	rdi, rax
	mov	eax, 0
	call	sprintf
	add	DWORD PTR [rbp-72], 1
.L7:
	mov	eax, DWORD PTR [rbp-72]
	cmp	eax, DWORD PTR [rbp-84]
	jge	.L8
	cmp	DWORD PTR [rbp-72], 4
	jle	.L9
.L8:
	mov	DWORD PTR [rbp-68], 1
	jmp	.L10
.L12:
	mov	eax, DWORD PTR [rbp-68]
	cdqe
	mov	rax, QWORD PTR [rbp-64+rax*8]
	mov	rdi, rax
	call	puts
	add	DWORD PTR [rbp-68], 1
.L10:
	mov	eax, DWORD PTR [rbp-68]
	cmp	eax, DWORD PTR [rbp-84]
	jge	.L11
	cmp	DWORD PTR [rbp-68], 4
	jle	.L12
.L11:
	mov	eax, 0
	mov	rcx, QWORD PTR [rbp-24]
	xor	rcx, QWORD PTR fs:40
	je	.L14
	call	__stack_chk_fail
.L14:
	add	rsp, 88
	pop	rbx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
