	.text
common:
	clgi
	invlpga
	skinit
	stgi
	vmload
	vmmcall
	vmrun
	vmsave

.macro do_args arg1, arg2
	invlpga	\arg1, \arg2
	vmload	\arg1
	vmrun	\arg1
	vmsave	\arg1
.endm

.ifdef __amd64__
att64:
	do_args	%rax, %ecx
.else
att32:
	do_args	%eax, %ecx
.endif
	skinit	%eax

.intel_syntax noprefix
.ifdef __amd64__
intel64:
	do_args	rax, ecx
.else
intel32:
	do_args	eax, ecx
.endif
	skinit	eax

	.p2align 4,0
