	.file	"conversion.c"
	.text
	.globl	cmToInches
	.type	cmToInches, @function
cmToInches:
.LFB0:
	.cfi_startproc
	divsd	.LC0(%rip), %xmm0
	ret
	.cfi_endproc
.LFE0:
	.size	cmToInches, .-cmToInches
	.globl	inchesToCm
	.type	inchesToCm, @function
inchesToCm:
.LFB1:
	.cfi_startproc
	mulsd	.LC0(%rip), %xmm0
	ret
	.cfi_endproc
.LFE1:
	.size	inchesToCm, .-inchesToCm
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	2233382994
	.long	1074024939
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
