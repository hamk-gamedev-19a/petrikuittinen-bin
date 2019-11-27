	.file	"hello.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"What is your name?"
.LC1:
	.string	"%99[^\n]"
.LC2:
	.string	"Hello %s!\n"
.LC3:
	.string	"You didn't tell me your name!"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	.LC0(%rip), %rsi
	movl	$1, %edi
	subq	$112, %rsp
	.cfi_def_cfa_offset 128
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	movq	%rsp, %rbx
	call	__printf_chk@PLT
	leaq	.LC1(%rip), %rdi
	xorl	%eax, %eax
	movq	%rbx, %rsi
	call	__isoc99_scanf@PLT
	cmpl	$1, %eax
	je	.L7
	leaq	.LC3(%rip), %rdi
	call	puts@PLT
.L3:
	xorl	%eax, %eax
	movq	104(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L8
	addq	$112, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L7:
	.cfi_restore_state
	leaq	.LC2(%rip), %rsi
	movq	%rbx, %rdx
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	jmp	.L3
.L8:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
