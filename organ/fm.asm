	.file	"fm.c"
	.text
	.p2align 4,,15
	.globl	fm_set_sample_rate
	.type	fm_set_sample_rate, @function
fm_set_sample_rate:
.LFB27:
	.cfi_startproc
	movl	%edi, %eax
	movl	%edi, SAMPLERATE(%rip)
	movl	%edi, N(%rip)
	shrl	$31, %eax
	addl	%eax, %edi
	sarl	%edi
	movl	%edi, N_2(%rip)
	ret
	.cfi_endproc
.LFE27:
	.size	fm_set_sample_rate, .-fm_set_sample_rate
	.p2align 4,,15
	.globl	fmc_init
	.type	fmc_init, @function
fmc_init:
.LFB28:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movsd	.LC0(%rip), %xmm2
	cvtsi2sd	SAMPLERATE(%rip), %xmm1
	movq	$-1, (%rdi)
	testl	%esi, %esi
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movsd	%xmm2, 41656(%rdi)
	movl	$0, 41636(%rdi)
	movsd	.LC1(%rip), %xmm2
	movl	%esi, 41632(%rdi)
	movl	%esi, -4(%rsp)
	movsd	%xmm1, 41648(%rdi)
	movq	$-1, 8(%rdi)
	movq	$-1, 16(%rdi)
	movq	$-1, 24(%rdi)
	movq	$-1, 32(%rdi)
	movq	$-1, 40(%rdi)
	movq	$-1, 48(%rdi)
	movq	$-1, 56(%rdi)
	movq	$-1, 64(%rdi)
	movq	$-1, 72(%rdi)
	movq	$-1, 80(%rdi)
	movq	$-1, 88(%rdi)
	movq	$-1, 96(%rdi)
	movq	$-1, 104(%rdi)
	movq	$-1, 112(%rdi)
	movq	$-1, 120(%rdi)
	movq	$-1, 128(%rdi)
	movq	$-1, 136(%rdi)
	movq	$-1, 144(%rdi)
	movq	$-1, 152(%rdi)
	movsd	%xmm2, 41640(%rdi)
	movsd	.LC3(%rip), %xmm2
	movq	$0, 41704(%rdi)
	movsd	%xmm2, 41712(%rdi)
	jle	.L4
	movsd	.LC4(%rip), %xmm2
	leaq	320(%rdi), %r9
	leaq	480(%rdi), %r8
	movsd	.LC5(%rip), %xmm0
	leaq	640(%rdi), %rsi
	divsd	%xmm1, %xmm2
	leaq	800(%rdi), %rcx
	leaq	41640(%rdi), %r11
	leaq	160(%rdi), %r15
	leaq	960(%rdi), %r10
	movq	%r9, %r14
	movq	%r8, %r13
	movq	%rsi, %r12
	movq	%rcx, %rbp
	movq	%rdi, %rax
	xorl	%ebx, %ebx
	divsd	%xmm1, %xmm0
	.p2align 4,,10
	.p2align 3
.L5:
	movq	%r11, 1440(%rax)
	movl	$0, 1424(%rax)
	movsd	%xmm1, 160(%rax)
	movq	$0, 1432(%rax)
	movq	$0, 1448(%rax)
	movq	%r15, %rdx
	movq	$0, 1408(%rax)
	subq	%rdi, %rdx
	addl	$1, %ebx
	movq	%r11, 304(%rax)
	movq	$0, 240(%rax)
	addq	$1296, %r15
	movq	$0, 288(%rax)
	movl	$0, 176(%rax)
	addq	$1296, %rax
	movsd	.LC1(%rip), %xmm4
	movsd	.LC6(%rip), %xmm7
	movsd	.LC7(%rip), %xmm5
	movsd	.LC8(%rip), %xmm6
	movsd	%xmm4, 120(%rax)
	movsd	%xmm4, -176(%rax)
	movsd	%xmm4, -168(%rax)
	movsd	%xmm4, -160(%rax)
	movsd	%xmm4, -152(%rax)
	movsd	%xmm4, -144(%rax)
	movsd	%xmm4, -136(%rax)
	movsd	%xmm7, -128(%rax)
	movsd	%xmm4, -120(%rax)
	movsd	%xmm5, -112(%rax)
	movsd	%xmm6, -104(%rax)
	movsd	.LC0(%rip), %xmm5
	movsd	.LC1(%rip), %xmm6
	movsd	.LC9(%rip), %xmm7
	movsd	.LC10(%rip), %xmm4
	movsd	%xmm7, -96(%rax)
	movsd	%xmm4, -88(%rax)
	movapd	%xmm5, %xmm4
	movsd	%xmm5, -1128(%rax)
	movsd	%xmm6, -1064(%rax)
	movl	$0, -1116(%rax)
	movl	$0, -1000(%rax)
	movq	$0, -984(%rax)
	movl	$4, -1016(%rax)
	movq	$0, -1112(%rax)
	movl	$0, -1104(%rax)
	movsd	.LC11(%rip), %xmm7
	movsd	env_curve+4096(%rip), %xmm3
	movl	$0, -996(%rax)
	movsd	%xmm7, -1096(%rax)
	movsd	%xmm3, -1032(%rax)
	movsd	%xmm2, -1048(%rax)
	movsd	%xmm0, -1040(%rax)
	movsd	%xmm0, -1024(%rax)
	movq	%r11, -16(%rdx,%r9)
	movsd	%xmm5, -152(%rdx,%r9)
	movq	$0, -80(%rdx,%r9)
	movsd	%xmm6, -88(%rdx,%r9)
	movq	$0, -32(%rdx,%r9)
	movsd	%xmm1, -160(%rdx,%r9)
	movl	$0, -144(%rdx,%r9)
	movl	$0, -140(%rdx,%r9)
	movapd	%xmm6, %xmm5
	movl	$0, -24(%rdx,%r9)
	movapd	%xmm7, %xmm6
	movq	$0, -8(%rdx,%r9)
	movl	$4, -40(%rdx,%r9)
	movq	$0, -136(%rdx,%r9)
	movl	$0, -128(%rdx,%r9)
	movsd	env_curve+4096(%rip), %xmm3
	movl	$0, -20(%rdx,%r9)
	movsd	%xmm7, -120(%rdx,%r9)
	movapd	%xmm4, %xmm7
	movsd	%xmm3, -56(%rdx,%r9)
	movsd	%xmm2, -72(%rdx,%r9)
	movsd	%xmm0, -64(%rdx,%r9)
	movsd	%xmm0, -48(%rdx,%r9)
	movq	%r14, %rdx
	addq	$1296, %r14
	subq	%rdi, %rdx
	movq	%r11, -176(%rdx,%r8)
	movsd	%xmm4, -312(%rdx,%r8)
	movsd	%xmm5, -248(%rdx,%r8)
	movq	$0, -240(%rdx,%r8)
	movq	$0, -192(%rdx,%r8)
	movsd	%xmm1, -320(%rdx,%r8)
	movl	$0, -304(%rdx,%r8)
	movl	$0, -300(%rdx,%r8)
	movapd	%xmm5, %xmm4
	movl	$0, -184(%rdx,%r8)
	movapd	%xmm6, %xmm5
	movq	$0, -168(%rdx,%r8)
	movl	$4, -200(%rdx,%r8)
	movq	$0, -296(%rdx,%r8)
	movl	$0, -288(%rdx,%r8)
	movsd	env_curve+4096(%rip), %xmm3
	movl	$0, -180(%rdx,%r8)
	movsd	%xmm6, -280(%rdx,%r8)
	movapd	%xmm7, %xmm6
	movsd	%xmm3, -216(%rdx,%r8)
	movsd	%xmm2, -232(%rdx,%r8)
	movsd	%xmm0, -224(%rdx,%r8)
	movsd	%xmm0, -208(%rdx,%r8)
	movq	%r13, %rdx
	addq	$1296, %r13
	subq	%rdi, %rdx
	movsd	%xmm7, -472(%rdx,%rsi)
	movq	%r11, -336(%rdx,%rsi)
	movsd	%xmm4, -408(%rdx,%rsi)
	movq	$0, -400(%rdx,%rsi)
	movq	$0, -352(%rdx,%rsi)
	movsd	%xmm1, -480(%rdx,%rsi)
	movl	$0, -464(%rdx,%rsi)
	movl	$0, -460(%rdx,%rsi)
	movapd	%xmm4, %xmm7
	movl	$0, -344(%rdx,%rsi)
	movapd	%xmm6, %xmm4
	movq	$0, -328(%rdx,%rsi)
	movl	$4, -360(%rdx,%rsi)
	movq	$0, -456(%rdx,%rsi)
	movl	$0, -448(%rdx,%rsi)
	movsd	env_curve+4096(%rip), %xmm3
	movsd	%xmm3, -376(%rdx,%rsi)
	movl	$0, -340(%rdx,%rsi)
	movsd	%xmm5, -440(%rdx,%rsi)
	movapd	%xmm7, %xmm5
	movsd	%xmm2, -392(%rdx,%rsi)
	movsd	%xmm0, -384(%rdx,%rsi)
	movsd	%xmm0, -368(%rdx,%rsi)
	movq	%r12, %rdx
	addq	$1296, %r12
	subq	%rdi, %rdx
	movsd	%xmm6, -632(%rdx,%rcx)
	movq	%r11, -496(%rdx,%rcx)
	movsd	%xmm1, -640(%rdx,%rcx)
	movq	$0, -560(%rdx,%rcx)
	movq	$0, -512(%rdx,%rcx)
	movsd	%xmm7, -568(%rdx,%rcx)
	movl	$0, -624(%rdx,%rcx)
	movl	$0, -620(%rdx,%rcx)
	movl	$0, -504(%rdx,%rcx)
	movq	$0, -488(%rdx,%rcx)
	movl	$4, -520(%rdx,%rcx)
	movq	$0, -616(%rdx,%rcx)
	movl	$0, -608(%rdx,%rcx)
	movsd	env_curve+4096(%rip), %xmm3
	movl	$0, -500(%rdx,%rcx)
	movsd	.LC11(%rip), %xmm6
	movsd	%xmm3, -536(%rdx,%rcx)
	movsd	%xmm2, -552(%rdx,%rcx)
	movsd	%xmm0, -544(%rdx,%rcx)
	movsd	%xmm0, -528(%rdx,%rcx)
	movsd	%xmm6, -600(%rdx,%rcx)
	movq	%rbp, %rdx
	addq	$1296, %rbp
	subq	%rdi, %rdx
	movq	%r11, -656(%rdx,%r10)
	movsd	%xmm1, -800(%rdx,%r10)
	movsd	%xmm4, -792(%rdx,%r10)
	movq	$0, -720(%rdx,%r10)
	movq	$0, -672(%rdx,%r10)
	movsd	%xmm5, -728(%rdx,%r10)
	movl	$0, -784(%rdx,%r10)
	movl	$0, -780(%rdx,%r10)
	cmpl	-4(%rsp), %ebx
	movl	$0, -664(%rdx,%r10)
	movq	$0, -648(%rdx,%r10)
	movl	$4, -680(%rdx,%r10)
	movq	$0, -776(%rdx,%r10)
	movl	$0, -768(%rdx,%r10)
	movsd	env_curve+4096(%rip), %xmm3
	movl	$0, -660(%rdx,%r10)
	movsd	%xmm2, -712(%rdx,%r10)
	movsd	%xmm3, -696(%rdx,%r10)
	movsd	%xmm0, -704(%rdx,%r10)
	movsd	%xmm0, -688(%rdx,%r10)
	movsd	%xmm6, -760(%rdx,%r10)
	jne	.L5
.L4:
	movsd	.LC3(%rip), %xmm0
	movq	$0, 41680(%rdi)
	movsd	.LC0(%rip), %xmm2
	movq	$waveform, 41696(%rdi)
	divsd	%xmm1, %xmm0
	movsd	%xmm1, 41664(%rdi)
	movsd	%xmm2, 41672(%rdi)
	movsd	%xmm0, 41688(%rdi)
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE28:
	.size	fmc_init, .-fmc_init
	.p2align 4,,15
	.globl	fmc_setAlg
	.type	fmc_setAlg, @function
fmc_setAlg:
.LFB29:
	.cfi_startproc
	xorl	%ecx, %ecx
	testl	%esi, %esi
	cmovns	%esi, %ecx
	movl	41632(%rdi), %esi
	andl	$31, %ecx
	movl	%ecx, 41636(%rdi)
	testl	%esi, %esi
	jle	.L9
	movl	%ecx, %eax
	movl	$818089009, %edx
	imull	%edx
	shrl	$2, %edx
	leal	0(,%rdx,4), %eax
	addl	%edx, %eax
	leal	(%rdx,%rax,4), %eax
	subl	%eax, %ecx
	leal	-1(%rsi), %eax
	movl	%ecx, %edx
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,8), %rax
	salq	$4, %rax
	leaq	1296(%rdi,%rax), %rax
	.p2align 4,,10
	.p2align 3
.L12:
	movl	%edx, 1424(%rdi)
	movq	$0, 1432(%rdi)
	addq	$1296, %rdi
	cmpq	%rax, %rdi
	jne	.L12
.L9:
	rep ret
	.cfi_endproc
.LFE29:
	.size	fmc_setAlg, .-fmc_setAlg
	.p2align 4,,15
	.globl	fmc_keyoff
	.type	fmc_keyoff, @function
fmc_keyoff:
.LFB31:
	.cfi_startproc
	cmpl	$126, %esi
	ja	.L13
	movl	41632(%rdi), %r8d
	testl	%r8d, %r8d
	jle	.L13
	movsbl	128(%rdi), %eax
	cmpl	%eax, %esi
	je	.L28
	leaq	129(%rdi), %rdx
	xorl	%eax, %eax
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L25:
	movsbl	(%rdx), %ecx
	addq	$1, %rdx
	cmpl	%ecx, %esi
	je	.L17
.L19:
	addl	$1, %eax
	cmpl	%r8d, %eax
	jne	.L25
.L13:
	rep ret
.L28:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L17:
	cltq
	movb	$-1, 128(%rdi,%rax)
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,8), %rax
	salq	$4, %rax
	leaq	160(%rdi,%rax), %rax
	cmpl	$4, 120(%rax)
	je	.L20
	movl	$3, 120(%rax)
.L20:
	cmpl	$4, 280(%rax)
	je	.L21
	movl	$3, 280(%rax)
.L21:
	cmpl	$4, 440(%rax)
	je	.L22
	movl	$3, 440(%rax)
.L22:
	cmpl	$4, 600(%rax)
	je	.L23
	movl	$3, 600(%rax)
.L23:
	cmpl	$4, 760(%rax)
	je	.L24
	movl	$3, 760(%rax)
.L24:
	cmpl	$4, 920(%rax)
	je	.L13
	movl	$3, 920(%rax)
	ret
	.cfi_endproc
.LFE31:
	.size	fmc_keyoff, .-fmc_keyoff
	.p2align 4,,15
	.globl	fmc_allnotesoff
	.type	fmc_allnotesoff, @function
fmc_allnotesoff:
.LFB32:
	.cfi_startproc
	movl	41632(%rdi), %eax
	testl	%eax, %eax
	jle	.L29
	subl	$1, %eax
	leaq	128(%rdi), %rdx
	leaq	160(%rdi), %rcx
	leaq	1080(%rdi), %rsi
	leaq	129(%rdi,%rax), %r8
	leaq	960(%rdi), %r9
	.p2align 4,,10
	.p2align 3
.L40:
	cmpb	$-1, (%rdx)
	je	.L32
	movq	%rsi, %rax
	movb	$-1, (%rdx)
	subq	%r9, %rax
	cmpl	$4, 160(%rax,%rdi)
	je	.L33
	movl	$3, 160(%rax,%rdi)
.L33:
	cmpl	$4, 160(%rcx,%rax)
	je	.L34
	movl	$3, 160(%rcx,%rax)
.L34:
	cmpl	$4, 320(%rcx,%rax)
	je	.L35
	movl	$3, 320(%rcx,%rax)
.L35:
	cmpl	$4, 480(%rcx,%rax)
	je	.L36
	movl	$3, 480(%rcx,%rax)
.L36:
	cmpl	$4, 640(%rcx,%rax)
	je	.L37
	movl	$3, 640(%rcx,%rax)
.L37:
	cmpl	$4, (%rsi)
	je	.L32
	movl	$3, (%rsi)
.L32:
	addq	$1, %rdx
	addq	$1296, %rsi
	cmpq	%r8, %rdx
	jne	.L40
.L29:
	rep ret
	.cfi_endproc
.LFE32:
	.size	fmc_allnotesoff, .-fmc_allnotesoff
	.p2align 4,,15
	.globl	fmc_opvol
	.type	fmc_opvol, @function
fmc_opvol:
.LFB33:
	.cfi_startproc
	cmpl	$127, %edx
	ja	.L41
	cmpl	$5, %esi
	ja	.L41
	imull	%edx, %edx
	cvtsi2sd	%edx, %xmm0
	movl	41632(%rdi), %edx
	testl	%edx, %edx
	divsd	.LC12(%rip), %xmm0
	jle	.L41
	subl	$1, %edx
	movslq	%esi, %rsi
	leaq	(%rdx,%rdx,8), %rdx
	leaq	1120(%rdi,%rsi,8), %rax
	leaq	(%rdx,%rdx,8), %rdx
	leaq	(%rsi,%rdx,2), %rdx
	leaq	2416(%rdi,%rdx,8), %rdx
	.p2align 4,,10
	.p2align 3
.L44:
	movsd	%xmm0, (%rax)
	addq	$1296, %rax
	cmpq	%rdx, %rax
	jne	.L44
.L41:
	rep ret
	.cfi_endproc
.LFE33:
	.size	fmc_opvol, .-fmc_opvol
	.p2align 4,,15
	.globl	fmc_feedback
	.type	fmc_feedback, @function
fmc_feedback:
.LFB34:
	.cfi_startproc
	movl	41632(%rdi), %eax
	testl	%eax, %eax
	jle	.L45
	imull	%esi, %esi
	subl	$1, %eax
	leaq	(%rax,%rax,8), %rax
	cvtsi2sd	%esi, %xmm0
	leaq	(%rax,%rax,8), %rax
	salq	$4, %rax
	leaq	1296(%rdi,%rax), %rax
	divsd	.LC13(%rip), %xmm0
	.p2align 4,,10
	.p2align 3
.L48:
	movsd	%xmm0, 1408(%rdi)
	addq	$1296, %rdi
	cmpq	%rax, %rdi
	jne	.L48
.L45:
	rep ret
	.cfi_endproc
.LFE34:
	.size	fmc_feedback, .-fmc_feedback
	.p2align 4,,15
	.globl	fmc_opattack
	.type	fmc_opattack, @function
fmc_opattack:
.LFB35:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movl	41632(%rdi), %eax
	testl	%eax, %eax
	jle	.L49
	cvtsi2sd	%edx, %xmm2
	movl	%esi, %r12d
	movq	%rdi, %rbx
	xorl	%ebp, %ebp
	subsd	.LC14(%rip), %xmm2
	mulsd	.LC15(%rip), %xmm2
	movsd	%xmm2, 8(%rsp)
	.p2align 4,,10
	.p2align 3
.L60:
	movsd	8(%rsp), %xmm1
	movsd	.LC5(%rip), %xmm0
	call	pow
	cmpl	$5, %r12d
	divsd	160(%rbx), %xmm0
	ja	.L51
	movl	%r12d, %eax
	jmp	*.L53(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L53:
	.quad	.L52
	.quad	.L54
	.quad	.L55
	.quad	.L56
	.quad	.L57
	.quad	.L58
	.text
	.p2align 4,,10
	.p2align 3
.L57:
	movsd	%xmm0, 888(%rbx)
	.p2align 4,,10
	.p2align 3
.L51:
	addl	$1, %ebp
	addq	$1296, %rbx
	cmpl	%ebp, 41632(%r13)
	jg	.L60
.L49:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L52:
	.cfi_restore_state
	movsd	%xmm0, 248(%rbx)
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L58:
	movsd	%xmm0, 1048(%rbx)
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L55:
	movsd	%xmm0, 568(%rbx)
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L54:
	movsd	%xmm0, 408(%rbx)
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L56:
	movsd	%xmm0, 728(%rbx)
	jmp	.L51
	.cfi_endproc
.LFE35:
	.size	fmc_opattack, .-fmc_opattack
	.p2align 4,,15
	.globl	fmc_opdecay
	.type	fmc_opdecay, @function
fmc_opdecay:
.LFB36:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movl	41632(%rdi), %eax
	testl	%eax, %eax
	jle	.L62
	cvtsi2sd	%edx, %xmm2
	movl	%esi, %r12d
	movq	%rdi, %rbx
	xorl	%ebp, %ebp
	subsd	.LC14(%rip), %xmm2
	mulsd	.LC15(%rip), %xmm2
	movsd	%xmm2, 8(%rsp)
	.p2align 4,,10
	.p2align 3
.L73:
	movsd	8(%rsp), %xmm1
	movsd	.LC5(%rip), %xmm0
	call	pow
	cmpl	$5, %r12d
	divsd	160(%rbx), %xmm0
	ja	.L64
	movl	%r12d, %eax
	jmp	*.L66(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L66:
	.quad	.L65
	.quad	.L67
	.quad	.L68
	.quad	.L69
	.quad	.L70
	.quad	.L71
	.text
	.p2align 4,,10
	.p2align 3
.L70:
	movsd	%xmm0, 896(%rbx)
	.p2align 4,,10
	.p2align 3
.L64:
	addl	$1, %ebp
	addq	$1296, %rbx
	cmpl	%ebp, 41632(%r13)
	jg	.L73
.L62:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L65:
	.cfi_restore_state
	movsd	%xmm0, 256(%rbx)
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L71:
	movsd	%xmm0, 1056(%rbx)
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L68:
	movsd	%xmm0, 576(%rbx)
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L67:
	movsd	%xmm0, 416(%rbx)
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L69:
	movsd	%xmm0, 736(%rbx)
	jmp	.L64
	.cfi_endproc
.LFE36:
	.size	fmc_opdecay, .-fmc_opdecay
	.p2align 4,,15
	.globl	fmc_opsustain
	.type	fmc_opsustain, @function
fmc_opsustain:
.LFB37:
	.cfi_startproc
	movl	41632(%rdi), %ecx
	testl	%ecx, %ecx
	jle	.L75
	sall	$4, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$22, %eax
	addl	%eax, %edx
	andl	$1023, %edx
	subl	%eax, %edx
	leal	-1(%rcx), %eax
	movslq	%edx, %rdx
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,8), %rax
	salq	$4, %rax
	leaq	1296(%rdi,%rax), %rcx
	.p2align 4,,10
	.p2align 3
.L86:
	cmpl	$5, %esi
	movsd	env_curve(,%rdx,8), %xmm0
	ja	.L77
	movl	%esi, %eax
	jmp	*.L79(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L79:
	.quad	.L78
	.quad	.L80
	.quad	.L81
	.quad	.L82
	.quad	.L83
	.quad	.L84
	.text
	.p2align 4,,10
	.p2align 3
.L83:
	movsd	%xmm0, 904(%rdi)
	.p2align 4,,10
	.p2align 3
.L77:
	addq	$1296, %rdi
	cmpq	%rcx, %rdi
	jne	.L86
.L75:
	rep ret
	.p2align 4,,10
	.p2align 3
.L78:
	movsd	%xmm0, 264(%rdi)
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L84:
	movsd	%xmm0, 1064(%rdi)
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L81:
	movsd	%xmm0, 584(%rdi)
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L80:
	movsd	%xmm0, 424(%rdi)
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L82:
	movsd	%xmm0, 744(%rdi)
	jmp	.L77
	.cfi_endproc
.LFE37:
	.size	fmc_opsustain, .-fmc_opsustain
	.p2align 4,,15
	.globl	fmc_oprelease
	.type	fmc_oprelease, @function
fmc_oprelease:
.LFB38:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movl	41632(%rdi), %eax
	testl	%eax, %eax
	jle	.L87
	cvtsi2sd	%edx, %xmm2
	movl	%esi, %r12d
	movq	%rdi, %rbx
	xorl	%ebp, %ebp
	subsd	.LC14(%rip), %xmm2
	mulsd	.LC15(%rip), %xmm2
	movsd	%xmm2, 8(%rsp)
	.p2align 4,,10
	.p2align 3
.L98:
	movsd	8(%rsp), %xmm1
	movsd	.LC5(%rip), %xmm0
	call	pow
	cmpl	$5, %r12d
	divsd	160(%rbx), %xmm0
	ja	.L89
	movl	%r12d, %eax
	jmp	*.L91(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L91:
	.quad	.L90
	.quad	.L92
	.quad	.L93
	.quad	.L94
	.quad	.L95
	.quad	.L96
	.text
	.p2align 4,,10
	.p2align 3
.L95:
	movsd	%xmm0, 912(%rbx)
	.p2align 4,,10
	.p2align 3
.L89:
	addl	$1, %ebp
	addq	$1296, %rbx
	cmpl	%ebp, 41632(%r13)
	jg	.L98
.L87:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L90:
	.cfi_restore_state
	movsd	%xmm0, 272(%rbx)
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L96:
	movsd	%xmm0, 1072(%rbx)
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L93:
	movsd	%xmm0, 592(%rbx)
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L92:
	movsd	%xmm0, 432(%rbx)
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L94:
	movsd	%xmm0, 752(%rbx)
	jmp	.L89
	.cfi_endproc
.LFE38:
	.size	fmc_oprelease, .-fmc_oprelease
	.p2align 4,,15
	.globl	fmv_opattack
	.type	fmv_opattack, @function
fmv_opattack:
.LFB39:
	.cfi_startproc
	cvtsi2sd	%edx, %xmm1
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%esi, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movsd	.LC5(%rip), %xmm0
	subsd	.LC14(%rip), %xmm1
	mulsd	.LC15(%rip), %xmm1
	call	pow
	cmpl	$5, %ebx
	divsd	0(%rbp), %xmm0
	ja	.L100
	jmp	*.L103(,%rbx,8)
	.section	.rodata
	.align 8
	.align 4
.L103:
	.quad	.L102
	.quad	.L104
	.quad	.L105
	.quad	.L106
	.quad	.L107
	.quad	.L108
	.text
	.p2align 4,,10
	.p2align 3
.L108:
	movsd	%xmm0, 888(%rbp)
.L100:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L107:
	.cfi_restore_state
	movsd	%xmm0, 728(%rbp)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L102:
	.cfi_restore_state
	movsd	%xmm0, 88(%rbp)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L104:
	.cfi_restore_state
	movsd	%xmm0, 248(%rbp)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L105:
	.cfi_restore_state
	movsd	%xmm0, 408(%rbp)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L106:
	.cfi_restore_state
	movsd	%xmm0, 568(%rbp)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE39:
	.size	fmv_opattack, .-fmv_opattack
	.p2align 4,,15
	.globl	fmv_opdecay
	.type	fmv_opdecay, @function
fmv_opdecay:
.LFB40:
	.cfi_startproc
	cvtsi2sd	%edx, %xmm1
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%esi, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movsd	.LC5(%rip), %xmm0
	subsd	.LC14(%rip), %xmm1
	mulsd	.LC15(%rip), %xmm1
	call	pow
	cmpl	$5, %ebx
	divsd	0(%rbp), %xmm0
	ja	.L110
	jmp	*.L113(,%rbx,8)
	.section	.rodata
	.align 8
	.align 4
.L113:
	.quad	.L112
	.quad	.L114
	.quad	.L115
	.quad	.L116
	.quad	.L117
	.quad	.L118
	.text
	.p2align 4,,10
	.p2align 3
.L118:
	movsd	%xmm0, 896(%rbp)
.L110:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L117:
	.cfi_restore_state
	movsd	%xmm0, 736(%rbp)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L112:
	.cfi_restore_state
	movsd	%xmm0, 96(%rbp)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L114:
	.cfi_restore_state
	movsd	%xmm0, 256(%rbp)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L115:
	.cfi_restore_state
	movsd	%xmm0, 416(%rbp)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L116:
	.cfi_restore_state
	movsd	%xmm0, 576(%rbp)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE40:
	.size	fmv_opdecay, .-fmv_opdecay
	.p2align 4,,15
	.globl	fmv_opsustain
	.type	fmv_opsustain, @function
fmv_opsustain:
.LFB41:
	.cfi_startproc
	sall	$4, %edx
	movl	%edx, %eax
	sarl	$31, %eax
	shrl	$22, %eax
	addl	%eax, %edx
	andl	$1023, %edx
	subl	%eax, %edx
	cmpl	$5, %esi
	movslq	%edx, %rdx
	movsd	env_curve(,%rdx,8), %xmm0
	ja	.L120
	movl	%esi, %esi
	jmp	*.L123(,%rsi,8)
	.section	.rodata
	.align 8
	.align 4
.L123:
	.quad	.L122
	.quad	.L124
	.quad	.L125
	.quad	.L126
	.quad	.L127
	.quad	.L128
	.text
	.p2align 4,,10
	.p2align 3
.L128:
	movsd	%xmm0, 904(%rdi)
.L120:
	rep ret
	.p2align 4,,10
	.p2align 3
.L127:
	movsd	%xmm0, 744(%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L122:
	movsd	%xmm0, 104(%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L124:
	movsd	%xmm0, 264(%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L125:
	movsd	%xmm0, 424(%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L126:
	movsd	%xmm0, 584(%rdi)
	ret
	.cfi_endproc
.LFE41:
	.size	fmv_opsustain, .-fmv_opsustain
	.p2align 4,,15
	.globl	fmv_oprelease
	.type	fmv_oprelease, @function
fmv_oprelease:
.LFB42:
	.cfi_startproc
	cvtsi2sd	%edx, %xmm1
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%esi, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movsd	.LC5(%rip), %xmm0
	subsd	.LC14(%rip), %xmm1
	mulsd	.LC15(%rip), %xmm1
	call	pow
	cmpl	$5, %ebx
	divsd	0(%rbp), %xmm0
	ja	.L129
	jmp	*.L132(,%rbx,8)
	.section	.rodata
	.align 8
	.align 4
.L132:
	.quad	.L131
	.quad	.L133
	.quad	.L134
	.quad	.L135
	.quad	.L136
	.quad	.L137
	.text
	.p2align 4,,10
	.p2align 3
.L137:
	movsd	%xmm0, 912(%rbp)
.L129:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L136:
	.cfi_restore_state
	movsd	%xmm0, 752(%rbp)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L131:
	.cfi_restore_state
	movsd	%xmm0, 112(%rbp)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L133:
	.cfi_restore_state
	movsd	%xmm0, 272(%rbp)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L134:
	.cfi_restore_state
	movsd	%xmm0, 432(%rbp)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L135:
	.cfi_restore_state
	movsd	%xmm0, 592(%rbp)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE42:
	.size	fmv_oprelease, .-fmv_oprelease
	.p2align 4,,15
	.globl	fmv_feedback
	.type	fmv_feedback, @function
fmv_feedback:
.LFB43:
	.cfi_startproc
	imull	%esi, %esi
	cvtsi2sd	%esi, %xmm0
	divsd	.LC13(%rip), %xmm0
	movsd	%xmm0, 1248(%rdi)
	ret
	.cfi_endproc
.LFE43:
	.size	fmv_feedback, .-fmv_feedback
	.p2align 4,,15
	.globl	fmc_opmul
	.type	fmc_opmul, @function
fmc_opmul:
.LFB44:
	.cfi_startproc
	cmpl	$15, %edx
	ja	.L212
	cmpl	$5, %esi
	ja	.L212
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movslq	%edx, %rdx
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	movl	41632(%rdi), %eax
	movsd	mfTable(,%rdx,8), %xmm7
	testl	%eax, %eax
	movsd	%xmm7, 8(%rsp)
	jle	.L140
	leaq	160(%rdi), %rax
	leaq	800(%rdi), %r12
	leaq	480(%rdi), %r14
	leaq	320(%rdi), %r15
	leaq	640(%rdi), %r13
	leaq	960(%rbp), %r11
	movslq	%esi, %rsi
	movq	%rdi, %rbx
	xorl	%edx, %edx
	leaq	1008(%rax,%rsi,8), %rcx
	xorpd	%xmm2, %xmm2
	movsd	.LC16(%rip), %xmm1
	movq	%r15, %r9
	movq	%r14, %r8
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%r11, (%rsp)
	jmp	.L185
	.p2align 4,,10
	.p2align 3
.L219:
	mulsd	%xmm0, %xmm3
.L180:
	ucomisd	%xmm1, %xmm3
	jbe	.L181
	movq	(%rsp), %r11
	movq	%r12, %r10
	movsd	.LC6(%rip), %xmm0
	subq	%rbp, %r10
	mulsd	-800(%r10,%r11), %xmm0
	ucomisd	%xmm3, %xmm0
	ja	.L213
.L181:
	movq	(%rsp), %r11
	movq	%r12, %r10
	subq	%rbp, %r10
	movl	$0, -780(%r11,%r10)
.L184:
	addl	$1, %edx
	addq	$1296, %rcx
	addq	$1296, %rbx
	addq	$1296, %r12
	addq	$1296, %r13
	addq	$1296, %r14
	addq	$1296, %r15
	addq	$1296, %rax
	cmpl	%edx, 41632(%rbp)
	jle	.L140
.L185:
	movsd	8(%rsp), %xmm6
	movsd	%xmm6, (%rcx)
	movsd	1168(%rbx), %xmm0
	movsd	1448(%rbx), %xmm3
	ucomisd	%xmm2, %xmm0
	jbe	.L204
	movapd	%xmm0, %xmm4
	mulsd	%xmm3, %xmm4
.L145:
	ucomisd	%xmm1, %xmm4
	jbe	.L146
	movsd	.LC6(%rip), %xmm0
	mulsd	160(%rbx), %xmm0
	ucomisd	%xmm4, %xmm0
	ja	.L214
.L146:
	movl	$0, 180(%rbx)
.L149:
	movsd	1176(%rbx), %xmm0
	ucomisd	%xmm2, %xmm0
	jbe	.L205
	movapd	%xmm0, %xmm4
	mulsd	%xmm3, %xmm4
.L152:
	ucomisd	%xmm1, %xmm4
	jbe	.L153
	movq	%rax, %r10
	movsd	.LC6(%rip), %xmm0
	subq	%rbp, %r10
	mulsd	-160(%r10,%r9), %xmm0
	ucomisd	%xmm4, %xmm0
	ja	.L215
.L153:
	movq	%rax, %r10
	subq	%rbp, %r10
	movl	$0, -140(%r9,%r10)
.L156:
	movsd	1184(%rbx), %xmm0
	ucomisd	%xmm2, %xmm0
	jbe	.L206
	movapd	%xmm0, %xmm4
	mulsd	%xmm3, %xmm4
.L159:
	ucomisd	%xmm1, %xmm4
	jbe	.L160
	movq	%r15, %r10
	movsd	.LC6(%rip), %xmm0
	subq	%rbp, %r10
	mulsd	-320(%r10,%r8), %xmm0
	ucomisd	%xmm4, %xmm0
	ja	.L216
.L160:
	movq	%r15, %r10
	subq	%rbp, %r10
	movl	$0, -300(%r8,%r10)
.L163:
	movsd	1192(%rbx), %xmm0
	ucomisd	%xmm2, %xmm0
	jbe	.L207
	movapd	%xmm0, %xmm4
	mulsd	%xmm3, %xmm4
.L166:
	ucomisd	%xmm1, %xmm4
	jbe	.L167
	movq	%r14, %r10
	movsd	.LC6(%rip), %xmm0
	subq	%rbp, %r10
	mulsd	-480(%r10,%rdi), %xmm0
	ucomisd	%xmm4, %xmm0
	ja	.L217
.L167:
	movq	%r14, %r10
	subq	%rbp, %r10
	movl	$0, -460(%rdi,%r10)
.L170:
	movsd	1200(%rbx), %xmm0
	ucomisd	%xmm2, %xmm0
	jbe	.L208
	movapd	%xmm0, %xmm4
	mulsd	%xmm3, %xmm4
.L173:
	ucomisd	%xmm1, %xmm4
	jbe	.L174
	movq	%r13, %r10
	movsd	.LC6(%rip), %xmm0
	subq	%rbp, %r10
	mulsd	-640(%r10,%rsi), %xmm0
	ucomisd	%xmm4, %xmm0
	ja	.L218
.L174:
	movq	%r13, %r10
	subq	%rbp, %r10
	movl	$0, -620(%rsi,%r10)
.L177:
	movsd	1208(%rbx), %xmm0
	ucomisd	%xmm2, %xmm0
	ja	.L219
	movsd	1000(%rbx), %xmm3
	jmp	.L180
	.p2align 4,,10
	.p2align 3
.L140:
	addq	$120, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
.L212:
	rep ret
	.p2align 4,,10
	.p2align 3
.L208:
	.cfi_def_cfa_offset 176
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
	movsd	840(%rbx), %xmm4
	jmp	.L173
	.p2align 4,,10
	.p2align 3
.L207:
	movsd	680(%rbx), %xmm4
	jmp	.L166
	.p2align 4,,10
	.p2align 3
.L204:
	movsd	200(%rbx), %xmm4
	jmp	.L145
	.p2align 4,,10
	.p2align 3
.L206:
	movsd	520(%rbx), %xmm4
	jmp	.L159
	.p2align 4,,10
	.p2align 3
.L205:
	movsd	360(%rbx), %xmm4
	jmp	.L152
	.p2align 4,,10
	.p2align 3
.L215:
	movapd	%xmm4, %xmm0
	movq	%r9, 104(%rsp)
	movq	%rdi, 96(%rsp)
	movq	%r8, 88(%rsp)
	movsd	%xmm2, 48(%rsp)
	movq	%rsi, 80(%rsp)
	movq	%rax, 72(%rsp)
	movsd	%xmm1, 40(%rsp)
	movl	%edx, 64(%rsp)
	movsd	%xmm3, 24(%rsp)
	movq	%rcx, 56(%rsp)
	movsd	%xmm4, 16(%rsp)
	movq	%r10, 32(%rsp)
	call	log10
	movq	32(%rsp), %r10
	movq	104(%rsp), %r9
	addsd	%xmm0, %xmm0
	movsd	16(%rsp), %xmm4
	movq	56(%rsp), %rcx
	movsd	.LC1(%rip), %xmm5
	movl	64(%rsp), %edx
	divsd	-160(%r10,%r9), %xmm4
	movq	72(%rsp), %rax
	movq	80(%rsp), %rsi
	movq	88(%rsp), %r8
	movq	96(%rsp), %rdi
	divsd	%xmm0, %xmm5
	mulsd	.LC17(%rip), %xmm4
	movsd	24(%rsp), %xmm3
	movsd	40(%rsp), %xmm1
	movsd	%xmm5, -8(%r10,%r9)
	movsd	48(%rsp), %xmm2
	cvttsd2siq	%xmm4, %r11
	movl	%r11d, -140(%r10,%r9)
	jmp	.L156
	.p2align 4,,10
	.p2align 3
.L216:
	movapd	%xmm4, %xmm0
	movq	%r9, 104(%rsp)
	movq	%rdi, 96(%rsp)
	movq	%r8, 88(%rsp)
	movsd	%xmm2, 48(%rsp)
	movq	%rsi, 80(%rsp)
	movq	%rax, 72(%rsp)
	movsd	%xmm1, 40(%rsp)
	movl	%edx, 64(%rsp)
	movsd	%xmm3, 24(%rsp)
	movq	%rcx, 56(%rsp)
	movsd	%xmm4, 16(%rsp)
	movq	%r10, 32(%rsp)
	call	log10
	movq	32(%rsp), %r10
	movq	88(%rsp), %r8
	addsd	%xmm0, %xmm0
	movsd	16(%rsp), %xmm4
	movq	56(%rsp), %rcx
	movsd	.LC1(%rip), %xmm5
	movl	64(%rsp), %edx
	divsd	-320(%r10,%r8), %xmm4
	movq	72(%rsp), %rax
	movq	80(%rsp), %rsi
	movq	96(%rsp), %rdi
	movq	104(%rsp), %r9
	divsd	%xmm0, %xmm5
	mulsd	.LC17(%rip), %xmm4
	movsd	24(%rsp), %xmm3
	movsd	40(%rsp), %xmm1
	movsd	%xmm5, -168(%r10,%r8)
	movsd	48(%rsp), %xmm2
	cvttsd2siq	%xmm4, %r11
	movl	%r11d, -300(%r10,%r8)
	jmp	.L163
	.p2align 4,,10
	.p2align 3
.L218:
	movapd	%xmm4, %xmm0
	movq	%r9, 104(%rsp)
	movq	%rdi, 96(%rsp)
	movq	%r8, 88(%rsp)
	movsd	%xmm2, 48(%rsp)
	movq	%rsi, 80(%rsp)
	movq	%rax, 72(%rsp)
	movsd	%xmm1, 40(%rsp)
	movl	%edx, 64(%rsp)
	movsd	%xmm3, 24(%rsp)
	movq	%rcx, 56(%rsp)
	movsd	%xmm4, 16(%rsp)
	movq	%r10, 32(%rsp)
	call	log10
	movq	32(%rsp), %r10
	movq	80(%rsp), %rsi
	addsd	%xmm0, %xmm0
	movsd	16(%rsp), %xmm4
	movq	56(%rsp), %rcx
	movsd	.LC1(%rip), %xmm5
	movl	64(%rsp), %edx
	divsd	-640(%r10,%rsi), %xmm4
	movq	72(%rsp), %rax
	movq	88(%rsp), %r8
	movq	96(%rsp), %rdi
	movq	104(%rsp), %r9
	divsd	%xmm0, %xmm5
	mulsd	.LC17(%rip), %xmm4
	movsd	24(%rsp), %xmm3
	movsd	40(%rsp), %xmm1
	movsd	%xmm5, -488(%r10,%rsi)
	movsd	48(%rsp), %xmm2
	cvttsd2siq	%xmm4, %r11
	movl	%r11d, -620(%r10,%rsi)
	jmp	.L177
	.p2align 4,,10
	.p2align 3
.L217:
	movapd	%xmm4, %xmm0
	movq	%r9, 104(%rsp)
	movq	%rdi, 96(%rsp)
	movq	%r8, 88(%rsp)
	movsd	%xmm2, 48(%rsp)
	movq	%rsi, 80(%rsp)
	movq	%rax, 72(%rsp)
	movsd	%xmm1, 40(%rsp)
	movl	%edx, 64(%rsp)
	movsd	%xmm3, 24(%rsp)
	movq	%rcx, 56(%rsp)
	movsd	%xmm4, 16(%rsp)
	movq	%r10, 32(%rsp)
	call	log10
	movq	32(%rsp), %r10
	movq	96(%rsp), %rdi
	addsd	%xmm0, %xmm0
	movsd	16(%rsp), %xmm4
	movq	56(%rsp), %rcx
	movsd	.LC1(%rip), %xmm5
	movl	64(%rsp), %edx
	divsd	-480(%r10,%rdi), %xmm4
	movq	72(%rsp), %rax
	movq	80(%rsp), %rsi
	movq	88(%rsp), %r8
	movq	104(%rsp), %r9
	divsd	%xmm0, %xmm5
	mulsd	.LC17(%rip), %xmm4
	movsd	24(%rsp), %xmm3
	movsd	40(%rsp), %xmm1
	movsd	%xmm5, -328(%r10,%rdi)
	movsd	48(%rsp), %xmm2
	cvttsd2siq	%xmm4, %r11
	movl	%r11d, -460(%r10,%rdi)
	jmp	.L170
	.p2align 4,,10
	.p2align 3
.L213:
	movapd	%xmm3, %xmm0
	movq	%r9, 96(%rsp)
	movq	%rdi, 88(%rsp)
	movq	%r8, 80(%rsp)
	movsd	%xmm2, 40(%rsp)
	movq	%rsi, 72(%rsp)
	movq	%rax, 64(%rsp)
	movsd	%xmm1, 32(%rsp)
	movl	%edx, 56(%rsp)
	movsd	%xmm3, 16(%rsp)
	movq	%rcx, 48(%rsp)
	movq	%r10, 24(%rsp)
	call	log10
	movq	(%rsp), %rax
	movq	24(%rsp), %r10
	addsd	%xmm0, %xmm0
	movsd	16(%rsp), %xmm3
	movq	48(%rsp), %rcx
	movsd	.LC1(%rip), %xmm4
	movl	56(%rsp), %edx
	divsd	-800(%r10,%rax), %xmm3
	movq	72(%rsp), %rsi
	movq	80(%rsp), %r8
	movq	88(%rsp), %rdi
	movq	96(%rsp), %r9
	divsd	%xmm0, %xmm4
	mulsd	.LC17(%rip), %xmm3
	movsd	32(%rsp), %xmm1
	movsd	40(%rsp), %xmm2
	movsd	%xmm4, -648(%r10,%rax)
	cvttsd2siq	%xmm3, %r11
	movl	%r11d, -780(%r10,%rax)
	movq	64(%rsp), %rax
	jmp	.L184
	.p2align 4,,10
	.p2align 3
.L214:
	movapd	%xmm4, %xmm0
	movq	%r9, 96(%rsp)
	movq	%rdi, 88(%rsp)
	movq	%r8, 80(%rsp)
	movsd	%xmm2, 40(%rsp)
	movq	%rsi, 72(%rsp)
	movq	%rax, 64(%rsp)
	movsd	%xmm1, 32(%rsp)
	movl	%edx, 56(%rsp)
	movsd	%xmm3, 24(%rsp)
	movq	%rcx, 48(%rsp)
	movsd	%xmm4, 16(%rsp)
	call	log10
	movsd	16(%rsp), %xmm4
	addsd	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm7
	movq	48(%rsp), %rcx
	divsd	160(%rbx), %xmm4
	movl	56(%rsp), %edx
	movq	64(%rsp), %rax
	movq	72(%rsp), %rsi
	movq	80(%rsp), %r8
	movq	88(%rsp), %rdi
	movq	96(%rsp), %r9
	divsd	%xmm0, %xmm7
	mulsd	.LC17(%rip), %xmm4
	movsd	24(%rsp), %xmm3
	movsd	32(%rsp), %xmm1
	movsd	%xmm7, 312(%rbx)
	movsd	40(%rsp), %xmm2
	cvttsd2siq	%xmm4, %r10
	movl	%r10d, 180(%rbx)
	jmp	.L149
	.cfi_endproc
.LFE44:
	.size	fmc_opmul, .-fmc_opmul
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC18:
	.string	"Actual phase %08X\n"
.LC19:
	.string	"New phase %08X\n"
	.text
	.p2align 4,,15
	.globl	fmv_keyon
	.type	fmv_keyon, @function
fmv_keyon:
.LFB46:
	.cfi_startproc
	unpcklps	%xmm0, %xmm0
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	imull	%esi, %esi
	xorpd	%xmm4, %xmm4
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, %rbx
	cvtps2pd	%xmm0, %xmm3
	cvtsi2sd	%esi, %xmm0
	movsd	%xmm3, (%rsp)
	movsd	%xmm3, 1288(%rdi)
	divsd	.LC13(%rip), %xmm0
	movsd	%xmm0, 1256(%rdi)
	movsd	1008(%rdi), %xmm0
	ucomisd	%xmm4, %xmm0
	jbe	.L317
	mulsd	%xmm3, %xmm0
.L223:
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm1
	unpcklps	%xmm1, %xmm1
	cvtps2pd	%xmm1, %xmm1
	ucomisd	.LC16(%rip), %xmm1
	jbe	.L224
	movsd	.LC6(%rip), %xmm0
	mulsd	(%rbx), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L336
.L224:
	movl	$0, 20(%rbx)
.L227:
	movl	16(%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC18, %esi
	movl	$1, %edi
	call	__printf_chk
	movl	120(%rbx), %eax
	testl	%eax, %eax
	je	.L330
	cmpl	$1, %eax
	je	.L230
	cmpl	$4, %eax
	je	.L232
	movl	16(%rbx), %edx
.L233:
	movl	$0, 120(%rbx)
	jmp	.L231
	.p2align 4,,10
	.p2align 3
.L230:
	movl	$0, 120(%rbx)
.L330:
	movl	16(%rbx), %edx
.L231:
	xorl	%eax, %eax
	movl	$.LC19, %esi
	movl	$1, %edi
	call	__printf_chk
	xorpd	%xmm5, %xmm5
	movsd	1016(%rbx), %xmm0
	ucomisd	%xmm5, %xmm0
	jbe	.L319
	mulsd	(%rsp), %xmm0
.L236:
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm1
	unpcklps	%xmm1, %xmm1
	cvtps2pd	%xmm1, %xmm1
	ucomisd	.LC16(%rip), %xmm1
	jbe	.L237
	movsd	.LC6(%rip), %xmm0
	mulsd	160(%rbx), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L337
.L237:
	movl	$0, 180(%rbx)
.L240:
	movl	176(%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC18, %esi
	movl	$1, %edi
	call	__printf_chk
	movl	280(%rbx), %eax
	testl	%eax, %eax
	je	.L331
	cmpl	$1, %eax
	je	.L243
	cmpl	$4, %eax
	je	.L245
	movl	176(%rbx), %edx
.L246:
	movl	$0, 280(%rbx)
	jmp	.L244
	.p2align 4,,10
	.p2align 3
.L243:
	movl	$0, 280(%rbx)
.L331:
	movl	176(%rbx), %edx
.L244:
	xorl	%eax, %eax
	movl	$.LC19, %esi
	movl	$1, %edi
	call	__printf_chk
	xorpd	%xmm6, %xmm6
	movsd	1024(%rbx), %xmm0
	ucomisd	%xmm6, %xmm0
	jbe	.L321
	mulsd	(%rsp), %xmm0
.L249:
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm1
	unpcklps	%xmm1, %xmm1
	cvtps2pd	%xmm1, %xmm1
	ucomisd	.LC16(%rip), %xmm1
	ja	.L338
.L250:
	movl	$0, 340(%rbx)
.L253:
	movl	336(%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC18, %esi
	movl	$1, %edi
	call	__printf_chk
	movl	440(%rbx), %eax
	testl	%eax, %eax
	je	.L332
	cmpl	$1, %eax
	je	.L256
	cmpl	$4, %eax
	je	.L258
	movl	336(%rbx), %edx
.L259:
	movl	$0, 440(%rbx)
	jmp	.L257
	.p2align 4,,10
	.p2align 3
.L256:
	movl	$0, 440(%rbx)
.L332:
	movl	336(%rbx), %edx
.L257:
	xorl	%eax, %eax
	movl	$.LC19, %esi
	movl	$1, %edi
	call	__printf_chk
	xorpd	%xmm7, %xmm7
	movsd	1032(%rbx), %xmm0
	ucomisd	%xmm7, %xmm0
	jbe	.L323
	mulsd	(%rsp), %xmm0
.L262:
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm1
	unpcklps	%xmm1, %xmm1
	cvtps2pd	%xmm1, %xmm1
	ucomisd	.LC16(%rip), %xmm1
	ja	.L339
.L263:
	movl	$0, 500(%rbx)
.L266:
	movl	496(%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC18, %esi
	movl	$1, %edi
	call	__printf_chk
	movl	600(%rbx), %eax
	testl	%eax, %eax
	je	.L333
	cmpl	$1, %eax
	je	.L269
	cmpl	$4, %eax
	je	.L271
	movl	496(%rbx), %edx
.L272:
	movl	$0, 600(%rbx)
	jmp	.L270
	.p2align 4,,10
	.p2align 3
.L269:
	movl	$0, 600(%rbx)
.L333:
	movl	496(%rbx), %edx
.L270:
	xorl	%eax, %eax
	movl	$.LC19, %esi
	movl	$1, %edi
	call	__printf_chk
	xorpd	%xmm2, %xmm2
	movsd	1040(%rbx), %xmm0
	ucomisd	%xmm2, %xmm0
	jbe	.L325
	mulsd	(%rsp), %xmm0
.L275:
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm1
	unpcklps	%xmm1, %xmm1
	cvtps2pd	%xmm1, %xmm1
	ucomisd	.LC16(%rip), %xmm1
	ja	.L340
.L276:
	movl	$0, 660(%rbx)
.L279:
	movl	656(%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC18, %esi
	movl	$1, %edi
	call	__printf_chk
	movl	760(%rbx), %eax
	testl	%eax, %eax
	je	.L334
	cmpl	$1, %eax
	je	.L282
	cmpl	$4, %eax
	je	.L284
	movl	656(%rbx), %edx
.L285:
	movl	$0, 760(%rbx)
	jmp	.L283
	.p2align 4,,10
	.p2align 3
.L282:
	movl	$0, 760(%rbx)
.L334:
	movl	656(%rbx), %edx
.L283:
	xorl	%eax, %eax
	movl	$.LC19, %esi
	movl	$1, %edi
	call	__printf_chk
	xorpd	%xmm5, %xmm5
	movsd	1048(%rbx), %xmm1
	ucomisd	%xmm5, %xmm1
	jbe	.L327
	mulsd	(%rsp), %xmm1
.L288:
	unpcklpd	%xmm1, %xmm1
	cvtpd2ps	%xmm1, %xmm1
	unpcklps	%xmm1, %xmm1
	cvtps2pd	%xmm1, %xmm1
	ucomisd	.LC16(%rip), %xmm1
	ja	.L341
.L289:
	movl	$0, 820(%rbx)
.L292:
	movl	816(%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC18, %esi
	movl	$1, %edi
	call	__printf_chk
	movl	920(%rbx), %eax
	testl	%eax, %eax
	je	.L335
	cmpl	$1, %eax
	je	.L295
	cmpl	$4, %eax
	je	.L297
	movl	816(%rbx), %edx
.L298:
	movl	$0, 920(%rbx)
	jmp	.L296
	.p2align 4,,10
	.p2align 3
.L295:
	movl	$0, 920(%rbx)
.L335:
	movl	816(%rbx), %edx
.L296:
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	$.LC19, %esi
	movl	$1, %edi
	popq	%rbx
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	jmp	__printf_chk
	.p2align 4,,10
	.p2align 3
.L339:
	.cfi_restore_state
	movsd	.LC6(%rip), %xmm0
	mulsd	480(%rbx), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.L263
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 8(%rsp)
	call	log10
	movsd	8(%rsp), %xmm1
	addsd	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm2
	divsd	480(%rbx), %xmm1
	divsd	%xmm0, %xmm2
	mulsd	.LC17(%rip), %xmm1
	movsd	%xmm2, 632(%rbx)
	cvttsd2siq	%xmm1, %rax
	movl	%eax, 500(%rbx)
	jmp	.L266
	.p2align 4,,10
	.p2align 3
.L338:
	movsd	.LC6(%rip), %xmm0
	mulsd	320(%rbx), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.L250
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 8(%rsp)
	call	log10
	movsd	8(%rsp), %xmm1
	addsd	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm2
	divsd	320(%rbx), %xmm1
	divsd	%xmm0, %xmm2
	mulsd	.LC17(%rip), %xmm1
	movsd	%xmm2, 472(%rbx)
	cvttsd2siq	%xmm1, %rax
	movl	%eax, 340(%rbx)
	jmp	.L253
	.p2align 4,,10
	.p2align 3
.L341:
	movsd	.LC6(%rip), %xmm0
	mulsd	800(%rbx), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.L289
	movapd	%xmm1, %xmm0
	movsd	%xmm1, (%rsp)
	call	log10
	movsd	(%rsp), %xmm1
	addsd	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm2
	divsd	800(%rbx), %xmm1
	divsd	%xmm0, %xmm2
	mulsd	.LC17(%rip), %xmm1
	movsd	%xmm2, 952(%rbx)
	cvttsd2siq	%xmm1, %rax
	movl	%eax, 820(%rbx)
	jmp	.L292
	.p2align 4,,10
	.p2align 3
.L340:
	movsd	.LC6(%rip), %xmm0
	mulsd	640(%rbx), %xmm0
	ucomisd	%xmm1, %xmm0
	jbe	.L276
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 8(%rsp)
	call	log10
	movsd	8(%rsp), %xmm1
	addsd	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm2
	divsd	640(%rbx), %xmm1
	divsd	%xmm0, %xmm2
	mulsd	.LC17(%rip), %xmm1
	movsd	%xmm2, 792(%rbx)
	cvttsd2siq	%xmm1, %rax
	movl	%eax, 660(%rbx)
	jmp	.L279
	.p2align 4,,10
	.p2align 3
.L327:
	movsd	840(%rbx), %xmm1
	jmp	.L288
	.p2align 4,,10
	.p2align 3
.L317:
	movsd	40(%rdi), %xmm0
	jmp	.L223
	.p2align 4,,10
	.p2align 3
.L319:
	movsd	200(%rbx), %xmm0
	jmp	.L236
	.p2align 4,,10
	.p2align 3
.L325:
	movsd	680(%rbx), %xmm0
	jmp	.L275
	.p2align 4,,10
	.p2align 3
.L323:
	movsd	520(%rbx), %xmm0
	jmp	.L262
	.p2align 4,,10
	.p2align 3
.L321:
	movsd	360(%rbx), %xmm0
	jmp	.L249
	.p2align 4,,10
	.p2align 3
.L336:
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 8(%rsp)
	call	log10
	movsd	8(%rsp), %xmm1
	addsd	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm2
	divsd	(%rbx), %xmm1
	divsd	%xmm0, %xmm2
	mulsd	.LC17(%rip), %xmm1
	movsd	%xmm2, 152(%rbx)
	cvttsd2siq	%xmm1, %rax
	movl	%eax, 20(%rbx)
	jmp	.L227
	.p2align 4,,10
	.p2align 3
.L337:
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 8(%rsp)
	call	log10
	movsd	8(%rsp), %xmm1
	addsd	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm2
	divsd	160(%rbx), %xmm1
	divsd	%xmm0, %xmm2
	mulsd	.LC17(%rip), %xmm1
	movsd	%xmm2, 312(%rbx)
	cvttsd2siq	%xmm1, %rax
	movl	%eax, 180(%rbx)
	jmp	.L240
	.p2align 4,,10
	.p2align 3
.L284:
	movl	$0, 656(%rbx)
	movq	$0, 664(%rbx)
	xorl	%edx, %edx
	movl	$0, 672(%rbx)
	jmp	.L285
	.p2align 4,,10
	.p2align 3
.L258:
	movl	$0, 336(%rbx)
	movq	$0, 344(%rbx)
	xorl	%edx, %edx
	movl	$0, 352(%rbx)
	jmp	.L259
	.p2align 4,,10
	.p2align 3
.L297:
	movl	$0, 816(%rbx)
	movq	$0, 824(%rbx)
	xorl	%edx, %edx
	movl	$0, 832(%rbx)
	jmp	.L298
	.p2align 4,,10
	.p2align 3
.L232:
	movl	$0, 16(%rbx)
	movq	$0, 24(%rbx)
	xorl	%edx, %edx
	movl	$0, 32(%rbx)
	jmp	.L233
	.p2align 4,,10
	.p2align 3
.L271:
	movl	$0, 496(%rbx)
	movq	$0, 504(%rbx)
	xorl	%edx, %edx
	movl	$0, 512(%rbx)
	jmp	.L272
	.p2align 4,,10
	.p2align 3
.L245:
	movl	$0, 176(%rbx)
	movq	$0, 184(%rbx)
	xorl	%edx, %edx
	movl	$0, 192(%rbx)
	jmp	.L246
	.cfi_endproc
.LFE46:
	.size	fmv_keyon, .-fmv_keyon
	.section	.rodata.str1.1
.LC20:
	.string	"Key On voice[%d]\n"
	.text
	.p2align 4,,15
	.globl	fmc_keyon
	.type	fmc_keyon, @function
fmc_keyon:
.LFB30:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	cmpl	$126, %esi
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movl	%esi, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	ja	.L342
	movl	%edx, %eax
	movq	%rdi, %r12
	sarl	$31, %eax
	shrl	$25, %eax
	leal	(%rdx,%rax), %esi
	andl	$127, %esi
	subl	%eax, %esi
	movl	%esi, %r13d
	je	.L368
	movl	41632(%rdi), %r10d
	movslq	%ebp, %r14
	movb	%sil, (%r12,%r14)
	testl	%r10d, %r10d
	jle	.L342
	movq	$-1, %rbx
	xorl	%ecx, %ecx
	movl	%ebx, %r8d
	jmp	.L359
	.p2align 4,,10
	.p2align 3
.L356:
	cmpl	$-1, %ebx
	je	.L369
.L357:
	addq	$1, %rcx
	cmpl	%ecx, %r10d
	jle	.L370
.L359:
	cmpl	$-1, %r8d
	movslq	%ecx, %r9
	jne	.L356
	cmpb	$-1, 128(%r12,%rcx)
	cmove	%ecx, %r8d
	cmpl	$-1, %ebx
	jne	.L357
.L369:
	movsbl	128(%r12,%rcx), %eax
	cmpl	%eax, %ebp
	cmove	%r9, %rbx
	addq	$1, %rcx
	cmpl	%ecx, %r10d
	jg	.L359
.L370:
	cmpl	$-1, %ebx
	jne	.L360
	cmpl	$-1, %r8d
	je	.L342
	movslq	%r8d, %rax
	movslq	%r8d, %rbx
	movb	%bpl, 128(%r12,%rax)
.L360:
	movl	%ebx, %edx
	movl	$.LC20, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk
	movl	%ebp, %eax
	movl	$715827883, %edx
	movsd	freqTable(,%r14,8), %xmm0
	imull	%edx
	leaq	(%rbx,%rbx,8), %rax
	sarl	$31, %ebp
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	leaq	(%rax,%rax,8), %rax
	movl	%r13d, %esi
	sarl	%edx
	cvtpd2ps	%xmm0, %xmm0
	subl	%ebp, %edx
	salq	$4, %rax
	popq	%rbp
	.cfi_def_cfa_offset 32
	leaq	160(%r12,%rax), %rdi
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	fmv_keyon
.L371:
	.cfi_restore_state
	xorl	%eax, %eax
.L347:
	cltq
	movb	$-1, 128(%r12,%rax)
	leaq	(%rax,%rax,8), %rax
	leaq	(%rax,%rax,8), %rax
	salq	$4, %rax
	leaq	160(%r12,%rax), %rax
	cmpl	$4, 120(%rax)
	je	.L350
	movl	$3, 120(%rax)
.L350:
	cmpl	$4, 280(%rax)
	je	.L351
	movl	$3, 280(%rax)
.L351:
	cmpl	$4, 440(%rax)
	je	.L352
	movl	$3, 440(%rax)
.L352:
	cmpl	$4, 600(%rax)
	je	.L353
	movl	$3, 600(%rax)
.L353:
	cmpl	$4, 760(%rax)
	je	.L354
	movl	$3, 760(%rax)
.L354:
	cmpl	$4, 920(%rax)
	je	.L342
	movl	$3, 920(%rax)
	.p2align 4,,10
	.p2align 3
.L342:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L368:
	.cfi_restore_state
	movl	41632(%rdi), %esi
	testl	%esi, %esi
	jle	.L342
	movsbl	128(%rdi), %eax
	cmpl	%eax, %ebp
	je	.L371
	leaq	129(%rdi), %rdx
	xorl	%eax, %eax
	jmp	.L349
	.p2align 4,,10
	.p2align 3
.L355:
	movsbl	(%rdx), %ecx
	addq	$1, %rdx
	cmpl	%ecx, %ebp
	je	.L347
.L349:
	addl	$1, %eax
	cmpl	%esi, %eax
	jne	.L355
	jmp	.L342
	.cfi_endproc
.LFE30:
	.size	fmc_keyon, .-fmc_keyon
	.p2align 4,,15
	.globl	fmv_setfreq
	.type	fmv_setfreq, @function
fmv_setfreq:
.LFB47:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	xorpd	%xmm2, %xmm2
	movq	%rdi, %rbx
	movapd	%xmm0, %xmm3
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	movsd	%xmm0, 1288(%rbx)
	movsd	1008(%rdi), %xmm0
	ucomisd	%xmm2, %xmm0
	jbe	.L433
	movapd	%xmm0, %xmm4
	mulsd	%xmm3, %xmm4
.L375:
	movsd	.LC16(%rip), %xmm1
	ucomisd	%xmm1, %xmm4
	jbe	.L376
	movsd	.LC6(%rip), %xmm0
	mulsd	(%rbx), %xmm0
	ucomisd	%xmm4, %xmm0
	ja	.L440
.L376:
	movl	$0, 20(%rbx)
.L379:
	movsd	1016(%rbx), %xmm0
	ucomisd	%xmm2, %xmm0
	jbe	.L434
	movapd	%xmm0, %xmm4
	mulsd	%xmm3, %xmm4
.L382:
	ucomisd	%xmm1, %xmm4
	jbe	.L383
	movsd	.LC6(%rip), %xmm0
	mulsd	160(%rbx), %xmm0
	ucomisd	%xmm4, %xmm0
	ja	.L441
.L383:
	movl	$0, 180(%rbx)
.L386:
	movsd	1024(%rbx), %xmm0
	ucomisd	%xmm2, %xmm0
	jbe	.L435
	movapd	%xmm0, %xmm4
	mulsd	%xmm3, %xmm4
.L389:
	ucomisd	%xmm1, %xmm4
	jbe	.L390
	movsd	.LC6(%rip), %xmm0
	mulsd	320(%rbx), %xmm0
	ucomisd	%xmm4, %xmm0
	ja	.L442
.L390:
	movl	$0, 340(%rbx)
.L393:
	movsd	1032(%rbx), %xmm0
	ucomisd	%xmm2, %xmm0
	jbe	.L436
	movapd	%xmm0, %xmm4
	mulsd	%xmm3, %xmm4
.L396:
	ucomisd	%xmm1, %xmm4
	jbe	.L397
	movsd	.LC6(%rip), %xmm0
	mulsd	480(%rbx), %xmm0
	ucomisd	%xmm4, %xmm0
	ja	.L443
.L397:
	movl	$0, 500(%rbx)
.L400:
	movsd	1040(%rbx), %xmm0
	ucomisd	%xmm2, %xmm0
	jbe	.L437
	movapd	%xmm0, %xmm4
	mulsd	%xmm3, %xmm4
.L403:
	ucomisd	%xmm1, %xmm4
	jbe	.L404
	movsd	.LC6(%rip), %xmm0
	mulsd	640(%rbx), %xmm0
	ucomisd	%xmm4, %xmm0
	ja	.L444
.L404:
	movl	$0, 660(%rbx)
.L407:
	movsd	1048(%rbx), %xmm0
	ucomisd	%xmm2, %xmm0
	jbe	.L438
	mulsd	%xmm0, %xmm3
.L410:
	ucomisd	%xmm1, %xmm3
	jbe	.L411
	movsd	.LC6(%rip), %xmm0
	mulsd	800(%rbx), %xmm0
	ucomisd	%xmm3, %xmm0
	ja	.L445
.L411:
	movl	$0, 820(%rbx)
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L438:
	.cfi_restore_state
	movsd	840(%rbx), %xmm3
	jmp	.L410
	.p2align 4,,10
	.p2align 3
.L437:
	movsd	680(%rbx), %xmm4
	jmp	.L403
	.p2align 4,,10
	.p2align 3
.L434:
	movsd	200(%rbx), %xmm4
	jmp	.L382
	.p2align 4,,10
	.p2align 3
.L433:
	movsd	40(%rdi), %xmm4
	jmp	.L375
	.p2align 4,,10
	.p2align 3
.L436:
	movsd	520(%rbx), %xmm4
	jmp	.L396
	.p2align 4,,10
	.p2align 3
.L435:
	movsd	360(%rbx), %xmm4
	jmp	.L389
	.p2align 4,,10
	.p2align 3
.L445:
	movapd	%xmm3, %xmm0
	movsd	%xmm3, (%rsp)
	call	log10
	movsd	(%rsp), %xmm3
	addsd	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	800(%rbx), %xmm3
	divsd	%xmm0, %xmm1
	mulsd	.LC17(%rip), %xmm3
	movsd	%xmm1, 952(%rbx)
	cvttsd2siq	%xmm3, %rax
	movl	%eax, 820(%rbx)
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L440:
	.cfi_restore_state
	movapd	%xmm4, %xmm0
	movsd	%xmm2, 24(%rsp)
	movsd	%xmm1, 16(%rsp)
	movsd	%xmm3, 8(%rsp)
	movsd	%xmm4, (%rsp)
	call	log10
	movsd	(%rsp), %xmm4
	addsd	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm5
	divsd	(%rbx), %xmm4
	divsd	%xmm0, %xmm5
	mulsd	.LC17(%rip), %xmm4
	movsd	8(%rsp), %xmm3
	movsd	16(%rsp), %xmm1
	movsd	%xmm5, 152(%rbx)
	movsd	24(%rsp), %xmm2
	cvttsd2siq	%xmm4, %rax
	movl	%eax, 20(%rbx)
	jmp	.L379
	.p2align 4,,10
	.p2align 3
.L441:
	movapd	%xmm4, %xmm0
	movsd	%xmm2, 24(%rsp)
	movsd	%xmm1, 16(%rsp)
	movsd	%xmm3, 8(%rsp)
	movsd	%xmm4, (%rsp)
	call	log10
	movsd	(%rsp), %xmm4
	addsd	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm5
	divsd	160(%rbx), %xmm4
	divsd	%xmm0, %xmm5
	mulsd	.LC17(%rip), %xmm4
	movsd	8(%rsp), %xmm3
	movsd	16(%rsp), %xmm1
	movsd	%xmm5, 312(%rbx)
	movsd	24(%rsp), %xmm2
	cvttsd2siq	%xmm4, %rax
	movl	%eax, 180(%rbx)
	jmp	.L386
	.p2align 4,,10
	.p2align 3
.L442:
	movapd	%xmm4, %xmm0
	movsd	%xmm2, 24(%rsp)
	movsd	%xmm1, 16(%rsp)
	movsd	%xmm3, 8(%rsp)
	movsd	%xmm4, (%rsp)
	call	log10
	movsd	(%rsp), %xmm4
	addsd	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm5
	divsd	320(%rbx), %xmm4
	divsd	%xmm0, %xmm5
	mulsd	.LC17(%rip), %xmm4
	movsd	8(%rsp), %xmm3
	movsd	16(%rsp), %xmm1
	movsd	%xmm5, 472(%rbx)
	movsd	24(%rsp), %xmm2
	cvttsd2siq	%xmm4, %rax
	movl	%eax, 340(%rbx)
	jmp	.L393
	.p2align 4,,10
	.p2align 3
.L443:
	movapd	%xmm4, %xmm0
	movsd	%xmm2, 24(%rsp)
	movsd	%xmm1, 16(%rsp)
	movsd	%xmm3, 8(%rsp)
	movsd	%xmm4, (%rsp)
	call	log10
	movsd	(%rsp), %xmm4
	addsd	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm5
	divsd	480(%rbx), %xmm4
	divsd	%xmm0, %xmm5
	mulsd	.LC17(%rip), %xmm4
	movsd	8(%rsp), %xmm3
	movsd	16(%rsp), %xmm1
	movsd	%xmm5, 632(%rbx)
	movsd	24(%rsp), %xmm2
	cvttsd2siq	%xmm4, %rax
	movl	%eax, 500(%rbx)
	jmp	.L400
	.p2align 4,,10
	.p2align 3
.L444:
	movapd	%xmm4, %xmm0
	movsd	%xmm2, 24(%rsp)
	movsd	%xmm1, 16(%rsp)
	movsd	%xmm3, 8(%rsp)
	movsd	%xmm4, (%rsp)
	call	log10
	movsd	(%rsp), %xmm4
	addsd	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm5
	divsd	640(%rbx), %xmm4
	divsd	%xmm0, %xmm5
	mulsd	.LC17(%rip), %xmm4
	movsd	8(%rsp), %xmm3
	movsd	16(%rsp), %xmm1
	movsd	%xmm5, 792(%rbx)
	movsd	24(%rsp), %xmm2
	cvttsd2siq	%xmm4, %rax
	movl	%eax, 660(%rbx)
	jmp	.L407
	.cfi_endproc
.LFE47:
	.size	fmv_setfreq, .-fmv_setfreq
	.p2align 4,,15
	.globl	fmv_keyoff
	.type	fmv_keyoff, @function
fmv_keyoff:
.LFB48:
	.cfi_startproc
	cmpl	$4, 120(%rdi)
	je	.L447
	movl	$3, 120(%rdi)
.L447:
	cmpl	$4, 280(%rdi)
	je	.L448
	movl	$3, 280(%rdi)
.L448:
	cmpl	$4, 440(%rdi)
	je	.L449
	movl	$3, 440(%rdi)
.L449:
	cmpl	$4, 600(%rdi)
	je	.L450
	movl	$3, 600(%rdi)
.L450:
	cmpl	$4, 760(%rdi)
	je	.L451
	movl	$3, 760(%rdi)
.L451:
	cmpl	$4, 920(%rdi)
	je	.L446
	movl	$3, 920(%rdi)
.L446:
	rep ret
	.cfi_endproc
.LFE48:
	.size	fmv_keyoff, .-fmv_keyoff
	.p2align 4,,15
	.globl	fmv_init
	.type	fmv_init, @function
fmv_init:
.LFB49:
	.cfi_startproc
	movsd	.LC7(%rip), %xmm6
	movq	%rsi, 1280(%rdi)
	movsd	.LC10(%rip), %xmm4
	movl	$0, 1264(%rdi)
	xorpd	%xmm0, %xmm0
	movsd	%xmm6, 1024(%rdi)
	movsd	.LC1(%rip), %xmm2
	movq	%rsi, 144(%rdi)
	movsd	16(%rsi), %xmm6
	movsd	.LC6(%rip), %xmm5
	movsd	.LC8(%rip), %xmm3
	movsd	.LC9(%rip), %xmm7
	movsd	%xmm4, 1048(%rdi)
	movsd	8(%rsi), %xmm4
	movl	$0, 16(%rdi)
	movsd	%xmm0, 1272(%rdi)
	movsd	%xmm0, 1288(%rdi)
	movsd	%xmm5, 1008(%rdi)
	movsd	%xmm3, 1032(%rdi)
	movsd	%xmm7, 1040(%rdi)
	movsd	%xmm0, 1248(%rdi)
	movsd	%xmm0, 80(%rdi)
	movsd	%xmm0, 128(%rdi)
	movsd	%xmm2, 1256(%rdi)
	movsd	%xmm2, 960(%rdi)
	movsd	%xmm2, 968(%rdi)
	movsd	%xmm2, 976(%rdi)
	movsd	%xmm2, 984(%rdi)
	movsd	%xmm2, 992(%rdi)
	movsd	%xmm2, 1000(%rdi)
	movsd	%xmm2, 1016(%rdi)
	movsd	%xmm4, (%rdi)
	movsd	%xmm6, 8(%rdi)
	movsd	%xmm2, 72(%rdi)
	movl	$0, 20(%rdi)
	movsd	%xmm0, 152(%rdi)
	movl	$0, 136(%rdi)
	movsd	%xmm0, 24(%rdi)
	movl	$4, 120(%rdi)
	movsd	.LC4(%rip), %xmm3
	movsd	env_curve+4096(%rip), %xmm1
	divsd	%xmm4, %xmm3
	movsd	%xmm0, 240(%rdi)
	movl	$0, 32(%rdi)
	movsd	%xmm1, 104(%rdi)
	movl	$0, 140(%rdi)
	movq	%rsi, 304(%rdi)
	movsd	%xmm0, 288(%rdi)
	movl	$0, 176(%rdi)
	movsd	%xmm0, 312(%rdi)
	movl	$0, 180(%rdi)
	movsd	%xmm0, 184(%rdi)
	movl	$0, 296(%rdi)
	movsd	%xmm4, 160(%rdi)
	movl	$4, 280(%rdi)
	movsd	%xmm6, 168(%rdi)
	movl	$0, 192(%rdi)
	movsd	%xmm2, 232(%rdi)
	movsd	.LC5(%rip), %xmm1
	movsd	.LC11(%rip), %xmm5
	divsd	%xmm4, %xmm1
	movsd	%xmm3, 88(%rdi)
	movsd	%xmm5, 40(%rdi)
	movsd	%xmm1, 96(%rdi)
	movsd	%xmm1, 112(%rdi)
	movsd	env_curve+4096(%rip), %xmm7
	movsd	%xmm3, 248(%rdi)
	movsd	%xmm7, 264(%rdi)
	movsd	%xmm1, 256(%rdi)
	movsd	%xmm1, 272(%rdi)
	movl	$0, 300(%rdi)
	movsd	%xmm0, 400(%rdi)
	movq	%rsi, 464(%rdi)
	movsd	%xmm0, 448(%rdi)
	movl	$0, 336(%rdi)
	movsd	%xmm0, 472(%rdi)
	movl	$0, 340(%rdi)
	movsd	%xmm0, 344(%rdi)
	movl	$0, 456(%rdi)
	movsd	%xmm5, 200(%rdi)
	movl	$4, 440(%rdi)
	movsd	%xmm4, 320(%rdi)
	movl	$0, 352(%rdi)
	movsd	%xmm6, 328(%rdi)
	movsd	%xmm2, 392(%rdi)
	movsd	env_curve+4096(%rip), %xmm7
	movsd	%xmm0, 560(%rdi)
	movl	$0, 460(%rdi)
	movq	%rsi, 624(%rdi)
	movsd	%xmm7, 424(%rdi)
	movl	$0, 496(%rdi)
	movl	$0, 500(%rdi)
	movsd	%xmm0, 608(%rdi)
	movl	$0, 616(%rdi)
	movsd	%xmm0, 632(%rdi)
	movl	$4, 600(%rdi)
	movsd	%xmm0, 504(%rdi)
	movsd	%xmm3, 408(%rdi)
	movsd	%xmm1, 416(%rdi)
	movsd	%xmm1, 432(%rdi)
	movsd	%xmm5, 360(%rdi)
	movsd	%xmm4, 480(%rdi)
	movsd	%xmm6, 488(%rdi)
	movsd	%xmm2, 552(%rdi)
	movl	$0, 512(%rdi)
	movsd	env_curve+4096(%rip), %xmm7
	movsd	%xmm0, 720(%rdi)
	movl	$0, 620(%rdi)
	movsd	%xmm0, 768(%rdi)
	movq	%rsi, 784(%rdi)
	movl	$0, 656(%rdi)
	movsd	%xmm0, 792(%rdi)
	movl	$0, 660(%rdi)
	movsd	%xmm0, 664(%rdi)
	movl	$0, 776(%rdi)
	movsd	%xmm7, 584(%rdi)
	movl	$4, 760(%rdi)
	movsd	%xmm3, 568(%rdi)
	movl	$0, 672(%rdi)
	movsd	%xmm1, 576(%rdi)
	movsd	%xmm1, 592(%rdi)
	movsd	%xmm5, 520(%rdi)
	movsd	%xmm4, 640(%rdi)
	movsd	%xmm6, 648(%rdi)
	movsd	%xmm2, 712(%rdi)
	movsd	env_curve+4096(%rip), %xmm7
	movsd	%xmm0, 880(%rdi)
	movl	$0, 780(%rdi)
	movq	%rsi, 944(%rdi)
	movsd	%xmm0, 928(%rdi)
	movsd	%xmm7, 744(%rdi)
	movsd	%xmm3, 728(%rdi)
	movsd	%xmm1, 736(%rdi)
	movsd	%xmm1, 752(%rdi)
	movsd	%xmm5, 680(%rdi)
	movsd	%xmm4, 800(%rdi)
	movsd	%xmm6, 808(%rdi)
	movsd	%xmm2, 872(%rdi)
	movl	$0, 816(%rdi)
	movsd	%xmm0, 952(%rdi)
	movl	$0, 820(%rdi)
	movsd	%xmm0, 824(%rdi)
	movl	$0, 936(%rdi)
	movl	$4, 920(%rdi)
	movsd	env_curve+4096(%rip), %xmm0
	movl	$0, 832(%rdi)
	movsd	%xmm3, 888(%rdi)
	movl	$0, 940(%rdi)
	movsd	%xmm0, 904(%rdi)
	movsd	%xmm1, 896(%rdi)
	movsd	%xmm1, 912(%rdi)
	movsd	%xmm5, 840(%rdi)
	ret
	.cfi_endproc
.LFE49:
	.size	fmv_init, .-fmv_init
	.p2align 4,,15
	.globl	fmv_setmode
	.type	fmv_setmode, @function
fmv_setmode:
.LFB50:
	.cfi_startproc
	movl	%esi, %eax
	movl	$818089009, %edx
	movq	$0, 1272(%rdi)
	imull	%edx
	movl	%esi, %eax
	sarl	$31, %eax
	sarl	$2, %edx
	subl	%eax, %edx
	leal	(%rdx,%rdx,4), %eax
	leal	(%rdx,%rax,4), %eax
	subl	%eax, %esi
	movl	%esi, 1264(%rdi)
	ret
	.cfi_endproc
.LFE50:
	.size	fmv_setmode, .-fmv_setmode
	.p2align 4,,15
	.globl	fmv_opvol
	.type	fmv_opvol, @function
fmv_opvol:
.LFB51:
	.cfi_startproc
	movslq	%esi, %rsi
	movsd	%xmm0, 960(%rdi,%rsi,8)
	ret
	.cfi_endproc
.LFE51:
	.size	fmv_opvol, .-fmv_opvol
	.p2align 4,,15
	.globl	fmv_opmul
	.type	fmv_opmul, @function
fmv_opmul:
.LFB52:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movslq	%esi, %rsi
	movq	%rdi, %rbx
	xorpd	%xmm2, %xmm2
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	movsd	%xmm0, 1008(%rdi,%rsi,8)
	movsd	1288(%rdi), %xmm3
	movsd	1008(%rdi), %xmm0
	ucomisd	%xmm2, %xmm0
	jbe	.L517
	movapd	%xmm0, %xmm4
	mulsd	%xmm3, %xmm4
.L459:
	movsd	.LC16(%rip), %xmm1
	ucomisd	%xmm1, %xmm4
	jbe	.L460
	movsd	.LC6(%rip), %xmm0
	mulsd	(%rbx), %xmm0
	ucomisd	%xmm4, %xmm0
	ja	.L524
.L460:
	movl	$0, 20(%rbx)
.L463:
	movsd	1016(%rbx), %xmm0
	ucomisd	%xmm2, %xmm0
	jbe	.L518
	movapd	%xmm0, %xmm4
	mulsd	%xmm3, %xmm4
.L466:
	ucomisd	%xmm1, %xmm4
	jbe	.L467
	movsd	.LC6(%rip), %xmm0
	mulsd	160(%rbx), %xmm0
	ucomisd	%xmm4, %xmm0
	ja	.L525
.L467:
	movl	$0, 180(%rbx)
.L470:
	movsd	1024(%rbx), %xmm0
	ucomisd	%xmm2, %xmm0
	jbe	.L519
	movapd	%xmm0, %xmm4
	mulsd	%xmm3, %xmm4
.L473:
	ucomisd	%xmm1, %xmm4
	jbe	.L474
	movsd	.LC6(%rip), %xmm0
	mulsd	320(%rbx), %xmm0
	ucomisd	%xmm4, %xmm0
	ja	.L526
.L474:
	movl	$0, 340(%rbx)
.L477:
	movsd	1032(%rbx), %xmm0
	ucomisd	%xmm2, %xmm0
	jbe	.L520
	movapd	%xmm0, %xmm4
	mulsd	%xmm3, %xmm4
.L480:
	ucomisd	%xmm1, %xmm4
	jbe	.L481
	movsd	.LC6(%rip), %xmm0
	mulsd	480(%rbx), %xmm0
	ucomisd	%xmm4, %xmm0
	ja	.L527
.L481:
	movl	$0, 500(%rbx)
.L484:
	movsd	1040(%rbx), %xmm0
	ucomisd	%xmm2, %xmm0
	jbe	.L521
	movapd	%xmm0, %xmm4
	mulsd	%xmm3, %xmm4
.L487:
	ucomisd	%xmm1, %xmm4
	jbe	.L488
	movsd	.LC6(%rip), %xmm0
	mulsd	640(%rbx), %xmm0
	ucomisd	%xmm4, %xmm0
	ja	.L528
.L488:
	movl	$0, 660(%rbx)
.L491:
	movsd	1048(%rbx), %xmm0
	ucomisd	%xmm2, %xmm0
	jbe	.L522
	mulsd	%xmm0, %xmm3
.L494:
	ucomisd	%xmm1, %xmm3
	jbe	.L495
	movsd	.LC6(%rip), %xmm0
	mulsd	800(%rbx), %xmm0
	ucomisd	%xmm3, %xmm0
	ja	.L529
.L495:
	movl	$0, 820(%rbx)
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L522:
	.cfi_restore_state
	movsd	840(%rbx), %xmm3
	jmp	.L494
	.p2align 4,,10
	.p2align 3
.L521:
	movsd	680(%rbx), %xmm4
	jmp	.L487
	.p2align 4,,10
	.p2align 3
.L518:
	movsd	200(%rbx), %xmm4
	jmp	.L466
	.p2align 4,,10
	.p2align 3
.L517:
	movsd	40(%rdi), %xmm4
	jmp	.L459
	.p2align 4,,10
	.p2align 3
.L520:
	movsd	520(%rbx), %xmm4
	jmp	.L480
	.p2align 4,,10
	.p2align 3
.L519:
	movsd	360(%rbx), %xmm4
	jmp	.L473
	.p2align 4,,10
	.p2align 3
.L529:
	movapd	%xmm3, %xmm0
	movsd	%xmm3, (%rsp)
	call	log10
	movsd	(%rsp), %xmm3
	addsd	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	800(%rbx), %xmm3
	divsd	%xmm0, %xmm1
	mulsd	.LC17(%rip), %xmm3
	movsd	%xmm1, 952(%rbx)
	cvttsd2siq	%xmm3, %rax
	movl	%eax, 820(%rbx)
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L524:
	.cfi_restore_state
	movapd	%xmm4, %xmm0
	movsd	%xmm2, 24(%rsp)
	movsd	%xmm1, 16(%rsp)
	movsd	%xmm3, 8(%rsp)
	movsd	%xmm4, (%rsp)
	call	log10
	movsd	(%rsp), %xmm4
	addsd	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm5
	divsd	(%rbx), %xmm4
	divsd	%xmm0, %xmm5
	mulsd	.LC17(%rip), %xmm4
	movsd	8(%rsp), %xmm3
	movsd	16(%rsp), %xmm1
	movsd	%xmm5, 152(%rbx)
	movsd	24(%rsp), %xmm2
	cvttsd2siq	%xmm4, %rax
	movl	%eax, 20(%rbx)
	jmp	.L463
	.p2align 4,,10
	.p2align 3
.L525:
	movapd	%xmm4, %xmm0
	movsd	%xmm2, 24(%rsp)
	movsd	%xmm1, 16(%rsp)
	movsd	%xmm3, 8(%rsp)
	movsd	%xmm4, (%rsp)
	call	log10
	movsd	(%rsp), %xmm4
	addsd	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm5
	divsd	160(%rbx), %xmm4
	divsd	%xmm0, %xmm5
	mulsd	.LC17(%rip), %xmm4
	movsd	8(%rsp), %xmm3
	movsd	16(%rsp), %xmm1
	movsd	%xmm5, 312(%rbx)
	movsd	24(%rsp), %xmm2
	cvttsd2siq	%xmm4, %rax
	movl	%eax, 180(%rbx)
	jmp	.L470
	.p2align 4,,10
	.p2align 3
.L526:
	movapd	%xmm4, %xmm0
	movsd	%xmm2, 24(%rsp)
	movsd	%xmm1, 16(%rsp)
	movsd	%xmm3, 8(%rsp)
	movsd	%xmm4, (%rsp)
	call	log10
	movsd	(%rsp), %xmm4
	addsd	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm5
	divsd	320(%rbx), %xmm4
	divsd	%xmm0, %xmm5
	mulsd	.LC17(%rip), %xmm4
	movsd	8(%rsp), %xmm3
	movsd	16(%rsp), %xmm1
	movsd	%xmm5, 472(%rbx)
	movsd	24(%rsp), %xmm2
	cvttsd2siq	%xmm4, %rax
	movl	%eax, 340(%rbx)
	jmp	.L477
	.p2align 4,,10
	.p2align 3
.L527:
	movapd	%xmm4, %xmm0
	movsd	%xmm2, 24(%rsp)
	movsd	%xmm1, 16(%rsp)
	movsd	%xmm3, 8(%rsp)
	movsd	%xmm4, (%rsp)
	call	log10
	movsd	(%rsp), %xmm4
	addsd	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm5
	divsd	480(%rbx), %xmm4
	divsd	%xmm0, %xmm5
	mulsd	.LC17(%rip), %xmm4
	movsd	8(%rsp), %xmm3
	movsd	16(%rsp), %xmm1
	movsd	%xmm5, 632(%rbx)
	movsd	24(%rsp), %xmm2
	cvttsd2siq	%xmm4, %rax
	movl	%eax, 500(%rbx)
	jmp	.L484
	.p2align 4,,10
	.p2align 3
.L528:
	movapd	%xmm4, %xmm0
	movsd	%xmm2, 24(%rsp)
	movsd	%xmm1, 16(%rsp)
	movsd	%xmm3, 8(%rsp)
	movsd	%xmm4, (%rsp)
	call	log10
	movsd	(%rsp), %xmm4
	addsd	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm5
	divsd	640(%rbx), %xmm4
	divsd	%xmm0, %xmm5
	mulsd	.LC17(%rip), %xmm4
	movsd	8(%rsp), %xmm3
	movsd	16(%rsp), %xmm1
	movsd	%xmm5, 792(%rbx)
	movsd	24(%rsp), %xmm2
	cvttsd2siq	%xmm4, %rax
	movl	%eax, 660(%rbx)
	jmp	.L491
	.cfi_endproc
.LFE52:
	.size	fmv_opmul, .-fmv_opmul
	.p2align 4,,15
	.globl	fmv_get
	.type	fmv_get, @function
fmv_get:
.LFB53:
	.cfi_startproc
	cmpl	$32, 1264(%rdi)
	movsd	1272(%rdi), %xmm1
	movsd	960(%rdi), %xmm5
	movsd	968(%rdi), %xmm0
	movsd	976(%rdi), %xmm6
	movsd	984(%rdi), %xmm9
	movsd	992(%rdi), %xmm7
	movsd	1000(%rdi), %xmm8
	mulsd	1248(%rdi), %xmm1
	ja	.L3128
	movl	1264(%rdi), %eax
	jmp	*.L533(,%rax,8)
	.section	.rodata
	.align 8
	.align 4
.L533:
	.quad	.L532
	.quad	.L534
	.quad	.L535
	.quad	.L536
	.quad	.L537
	.quad	.L538
	.quad	.L539
	.quad	.L540
	.quad	.L541
	.quad	.L542
	.quad	.L543
	.quad	.L544
	.quad	.L545
	.quad	.L546
	.quad	.L547
	.quad	.L548
	.quad	.L549
	.quad	.L550
	.quad	.L551
	.quad	.L552
	.quad	.L553
	.quad	.L554
	.quad	.L555
	.quad	.L556
	.quad	.L557
	.quad	.L558
	.quad	.L559
	.quad	.L560
	.quad	.L561
	.quad	.L562
	.quad	.L563
	.quad	.L564
	.quad	.L565
	.text
	.p2align 4,,10
	.p2align 3
.L564:
	movsd	824(%rdi), %xmm4
	movl	920(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm4, %xmm3
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm3
	cvttsd2siq	%xmm3, %rdx
	movsd	880(%rdi), %xmm3
	movsd	%xmm3, 928(%rdi)
	je	.L2983
	jle	.L5819
	cmpl	$3, %eax
	je	.L2986
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L5460
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 880(%rdi)
	movapd	%xmm4, %xmm3
.L2982:
	movl	816(%rdi), %edx
	mulsd	.LC0(%rip), %xmm1
	movsd	%xmm3, 872(%rdi)
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm10
	movl	%edx, 816(%rdi)
	addsd	%xmm10, %xmm1
	cvttsd2siq	%xmm1, %rax
	movsd	952(%rdi), %xmm1
	mulsd	%xmm3, %xmm1
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	760(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm1
	movsd	664(%rdi), %xmm8
	movapd	%xmm8, %xmm3
	mulsd	%xmm2, %xmm3
	cvttsd2siq	%xmm3, %rdx
	movsd	720(%rdi), %xmm3
	movsd	%xmm3, 768(%rdi)
	je	.L2996
	jle	.L5820
	cmpl	$3, %eax
	je	.L2999
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2995
	movapd	%xmm4, %xmm3
	movq	$0, 720(%rdi)
.L2995:
	movl	656(%rdi), %edx
	movsd	%xmm3, 712(%rdi)
	mulsd	792(%rdi), %xmm3
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm8
	movl	%edx, 656(%rdi)
	addsd	%xmm4, %xmm8
	cvttsd2siq	%xmm8, %rax
	movsd	504(%rdi), %xmm8
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm3
	movl	600(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm7, %xmm3
	movapd	%xmm8, %xmm7
	mulsd	%xmm2, %xmm7
	cvttsd2siq	%xmm7, %rdx
	movsd	560(%rdi), %xmm7
	movsd	%xmm7, 608(%rdi)
	je	.L3009
	jle	.L5821
	cmpl	$3, %eax
	je	.L3012
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L3008
	movapd	%xmm4, %xmm7
	movq	$0, 560(%rdi)
.L3008:
	movl	496(%rdi), %edx
	movsd	%xmm7, 552(%rdi)
	mulsd	632(%rdi), %xmm7
	movl	%edx, %eax
	addl	500(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm8
	movl	%edx, 496(%rdi)
	addsd	%xmm4, %xmm8
	cvttsd2siq	%xmm8, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm7
	movl	440(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm9, %xmm7
	movsd	344(%rdi), %xmm9
	movapd	%xmm9, %xmm8
	mulsd	%xmm2, %xmm8
	cvttsd2siq	%xmm8, %rdx
	movsd	400(%rdi), %xmm8
	movsd	%xmm8, 448(%rdi)
	je	.L3022
	jle	.L5822
	cmpl	$3, %eax
	je	.L3025
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L3021
	movapd	%xmm4, %xmm8
	movq	$0, 400(%rdi)
.L3021:
	movl	336(%rdi), %edx
	movsd	%xmm8, 392(%rdi)
	mulsd	472(%rdi), %xmm8
	movl	%edx, %eax
	addl	340(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm9
	movl	%edx, 336(%rdi)
	addsd	%xmm4, %xmm9
	cvttsd2siq	%xmm9, %rax
	movsd	184(%rdi), %xmm9
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm8
	movl	280(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm6, %xmm8
	movapd	%xmm9, %xmm6
	mulsd	%xmm2, %xmm6
	cvttsd2siq	%xmm6, %rdx
	movsd	240(%rdi), %xmm6
	movsd	%xmm6, 288(%rdi)
	je	.L3035
	jle	.L5823
	cmpl	$3, %eax
	je	.L3038
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L3034
	movapd	%xmm4, %xmm6
	movq	$0, 240(%rdi)
.L3034:
	movl	176(%rdi), %edx
	movsd	%xmm6, 232(%rdi)
	mulsd	312(%rdi), %xmm6
	movl	%edx, %eax
	addl	180(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm9
	movl	%edx, 176(%rdi)
	addsd	%xmm4, %xmm9
	cvttsd2siq	%xmm9, %rax
	movsd	24(%rdi), %xmm9
	mulsd	%xmm9, %xmm2
	cvttsd2siq	%xmm2, %rdx
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm6
	movl	120(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm6
	movsd	80(%rdi), %xmm0
	movsd	%xmm0, 128(%rdi)
	je	.L3048
	jle	.L5824
	cmpl	$3, %eax
	je	.L3051
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L3047
	movapd	%xmm4, %xmm0
	movq	$0, 80(%rdi)
.L3047:
	movl	16(%rdi), %edx
	movsd	%xmm0, 72(%rdi)
	mulsd	152(%rdi), %xmm0
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm2
	movl	%edx, 16(%rdi)
	addsd	%xmm4, %xmm2
	cvttsd2siq	%xmm2, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	mulsd	%xmm5, %xmm0
	addsd	%xmm6, %xmm0
	addsd	%xmm8, %xmm0
	addsd	%xmm7, %xmm0
	addsd	%xmm3, %xmm0
	addsd	%xmm1, %xmm0
	divsd	.LC3(%rip), %xmm0
	.p2align 4,,10
	.p2align 3
.L531:
	movsd	%xmm1, 1272(%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L563:
	movsd	824(%rdi), %xmm3
	movl	920(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	880(%rdi), %xmm10
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm10, 928(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L2905
	jle	.L5825
	cmpl	$3, %eax
	je	.L2908
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L5436
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 880(%rdi)
	movapd	%xmm4, %xmm10
.L2904:
	movl	816(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm10, 872(%rdi)
	mulsd	%xmm3, %xmm1
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 816(%rdi)
	addsd	%xmm11, %xmm1
	cvttsd2siq	%xmm1, %rax
	movsd	952(%rdi), %xmm1
	mulsd	%xmm10, %xmm1
	movsd	664(%rdi), %xmm10
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	760(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm1
	movapd	%xmm10, %xmm8
	mulsd	%xmm2, %xmm8
	cvttsd2siq	%xmm8, %rdx
	movsd	720(%rdi), %xmm8
	movsd	%xmm8, 768(%rdi)
	je	.L2918
	jle	.L5826
	cmpl	$3, %eax
	je	.L2921
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2917
	movapd	%xmm4, %xmm8
	movq	$0, 720(%rdi)
.L2917:
	movl	656(%rdi), %edx
	mulsd	%xmm1, %xmm3
	movsd	%xmm8, 712(%rdi)
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm10
	movl	%edx, 656(%rdi)
	addsd	%xmm10, %xmm3
	cvttsd2siq	%xmm3, %rax
	movsd	792(%rdi), %xmm3
	mulsd	%xmm8, %xmm3
	movsd	504(%rdi), %xmm8
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm3
	movl	600(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm7, %xmm3
	movapd	%xmm8, %xmm7
	mulsd	%xmm2, %xmm7
	cvttsd2siq	%xmm7, %rdx
	movsd	560(%rdi), %xmm7
	movsd	%xmm7, 608(%rdi)
	je	.L2931
	jle	.L5827
	cmpl	$3, %eax
	je	.L2934
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2930
	movapd	%xmm4, %xmm7
	movq	$0, 560(%rdi)
.L2930:
	movl	496(%rdi), %edx
	movsd	%xmm7, 552(%rdi)
	mulsd	632(%rdi), %xmm7
	movl	%edx, %eax
	addl	500(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm8
	movl	%edx, 496(%rdi)
	addsd	%xmm4, %xmm8
	cvttsd2siq	%xmm8, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm7
	movl	440(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm9, %xmm7
	movsd	344(%rdi), %xmm9
	movapd	%xmm9, %xmm8
	mulsd	%xmm2, %xmm8
	cvttsd2siq	%xmm8, %rdx
	movsd	400(%rdi), %xmm8
	movsd	%xmm8, 448(%rdi)
	je	.L2944
	jle	.L5828
	cmpl	$3, %eax
	je	.L2947
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2943
	movapd	%xmm4, %xmm8
	movq	$0, 400(%rdi)
.L2943:
	movl	336(%rdi), %edx
	movsd	%xmm8, 392(%rdi)
	mulsd	472(%rdi), %xmm8
	movl	%edx, %eax
	addl	340(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm9
	movl	%edx, 336(%rdi)
	addsd	%xmm4, %xmm9
	cvttsd2siq	%xmm9, %rax
	movsd	184(%rdi), %xmm9
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm8
	movl	280(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm6, %xmm8
	movapd	%xmm9, %xmm6
	mulsd	%xmm2, %xmm6
	cvttsd2siq	%xmm6, %rdx
	movsd	240(%rdi), %xmm6
	movsd	%xmm6, 288(%rdi)
	je	.L2957
	jle	.L5829
	cmpl	$3, %eax
	je	.L2960
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2956
	movapd	%xmm4, %xmm6
	movq	$0, 240(%rdi)
.L2956:
	movl	176(%rdi), %edx
	movsd	%xmm6, 232(%rdi)
	mulsd	312(%rdi), %xmm6
	movl	%edx, %eax
	addl	180(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm9
	movl	%edx, 176(%rdi)
	addsd	%xmm4, %xmm9
	cvttsd2siq	%xmm9, %rax
	movsd	24(%rdi), %xmm9
	mulsd	%xmm9, %xmm2
	cvttsd2siq	%xmm2, %rdx
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm6
	movl	120(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm6
	movsd	80(%rdi), %xmm0
	movsd	%xmm0, 128(%rdi)
	je	.L2970
	jle	.L5830
	cmpl	$3, %eax
	je	.L2973
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2969
	movapd	%xmm4, %xmm0
	movq	$0, 80(%rdi)
.L2969:
	movl	16(%rdi), %edx
	movsd	%xmm0, 72(%rdi)
	mulsd	152(%rdi), %xmm0
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm2
	movl	%edx, 16(%rdi)
	addsd	%xmm4, %xmm2
	cvttsd2siq	%xmm2, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	mulsd	%xmm5, %xmm0
	addsd	%xmm6, %xmm0
	addsd	%xmm8, %xmm0
	addsd	%xmm7, %xmm0
	addsd	%xmm3, %xmm0
	divsd	.LC23(%rip), %xmm0
	jmp	.L531
	.p2align 4,,10
	.p2align 3
.L562:
	movsd	824(%rdi), %xmm3
	movl	920(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	880(%rdi), %xmm10
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm10, 928(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L2827
	jle	.L5831
	cmpl	$3, %eax
	je	.L2830
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L5412
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 880(%rdi)
	movapd	%xmm4, %xmm10
.L2826:
	movl	816(%rdi), %edx
	movsd	%xmm10, 872(%rdi)
	mulsd	952(%rdi), %xmm10
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm3
	movl	%edx, 816(%rdi)
	addsd	%xmm4, %xmm3
	cvttsd2siq	%xmm3, %rax
	movsd	664(%rdi), %xmm3
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm10
	movl	760(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm10
	movapd	%xmm3, %xmm8
	mulsd	%xmm2, %xmm8
	cvttsd2siq	%xmm8, %rdx
	movsd	720(%rdi), %xmm8
	movsd	%xmm8, 768(%rdi)
	je	.L2840
	jle	.L5832
	cmpl	$3, %eax
	je	.L2843
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2839
	movapd	%xmm4, %xmm8
	movq	$0, 720(%rdi)
.L2839:
	movl	656(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm8, 712(%rdi)
	mulsd	%xmm3, %xmm1
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 656(%rdi)
	addsd	%xmm11, %xmm1
	cvttsd2siq	%xmm1, %rax
	movsd	792(%rdi), %xmm1
	mulsd	%xmm8, %xmm1
	movsd	504(%rdi), %xmm8
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	600(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm7, %xmm1
	movapd	%xmm8, %xmm7
	mulsd	%xmm2, %xmm7
	cvttsd2siq	%xmm7, %rdx
	movsd	560(%rdi), %xmm7
	movsd	%xmm7, 608(%rdi)
	je	.L2853
	jle	.L5833
	cmpl	$3, %eax
	je	.L2856
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2852
	movapd	%xmm4, %xmm7
	movq	$0, 560(%rdi)
.L2852:
	movl	496(%rdi), %edx
	movapd	%xmm1, %xmm8
	movsd	%xmm7, 552(%rdi)
	mulsd	632(%rdi), %xmm7
	mulsd	%xmm3, %xmm8
	movl	%edx, %eax
	addl	500(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 496(%rdi)
	addsd	%xmm11, %xmm8
	cvttsd2siq	%xmm8, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm7
	movl	440(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm9, %xmm7
	movsd	344(%rdi), %xmm9
	movapd	%xmm9, %xmm8
	mulsd	%xmm2, %xmm8
	cvttsd2siq	%xmm8, %rdx
	movsd	400(%rdi), %xmm8
	movsd	%xmm8, 448(%rdi)
	je	.L2866
	jle	.L5834
	cmpl	$3, %eax
	je	.L2869
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2865
	movapd	%xmm4, %xmm8
	movq	$0, 400(%rdi)
.L2865:
	movl	336(%rdi), %edx
	mulsd	%xmm3, %xmm7
	movsd	%xmm8, 392(%rdi)
	movl	%edx, %eax
	addl	340(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm3
	movl	%edx, 336(%rdi)
	addsd	%xmm3, %xmm7
	movsd	472(%rdi), %xmm3
	mulsd	%xmm8, %xmm3
	cvttsd2siq	%xmm7, %rax
	movsd	184(%rdi), %xmm7
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm3
	movl	280(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm6, %xmm3
	movapd	%xmm7, %xmm6
	mulsd	%xmm2, %xmm6
	cvttsd2siq	%xmm6, %rdx
	movsd	240(%rdi), %xmm6
	movsd	%xmm6, 288(%rdi)
	je	.L2879
	jle	.L5835
	cmpl	$3, %eax
	je	.L2882
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2878
	movapd	%xmm4, %xmm6
	movq	$0, 240(%rdi)
.L2878:
	movl	176(%rdi), %edx
	movsd	%xmm6, 232(%rdi)
	mulsd	312(%rdi), %xmm6
	movl	%edx, %eax
	addl	180(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm7
	movl	%edx, 176(%rdi)
	addsd	%xmm4, %xmm7
	cvttsd2siq	%xmm7, %rax
	movsd	24(%rdi), %xmm7
	mulsd	%xmm7, %xmm2
	cvttsd2siq	%xmm2, %rdx
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm6
	movl	120(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm6
	movsd	80(%rdi), %xmm0
	movsd	%xmm0, 128(%rdi)
	je	.L2892
	jle	.L5836
	cmpl	$3, %eax
	je	.L2895
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2891
	movapd	%xmm4, %xmm0
	movq	$0, 80(%rdi)
.L2891:
	movl	16(%rdi), %edx
	movsd	%xmm0, 72(%rdi)
	mulsd	152(%rdi), %xmm0
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm2
	movl	%edx, 16(%rdi)
	addsd	%xmm4, %xmm2
	cvttsd2siq	%xmm2, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	mulsd	%xmm5, %xmm0
	addsd	%xmm6, %xmm0
	addsd	%xmm3, %xmm0
	addsd	%xmm10, %xmm0
	mulsd	.LC22(%rip), %xmm0
	jmp	.L531
	.p2align 4,,10
	.p2align 3
.L561:
	movsd	824(%rdi), %xmm3
	movl	920(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	880(%rdi), %xmm10
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm10, 928(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L2749
	jle	.L5837
	cmpl	$3, %eax
	je	.L2752
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L5388
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 880(%rdi)
	movapd	%xmm4, %xmm10
.L2748:
	movl	816(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm10, 872(%rdi)
	mulsd	%xmm3, %xmm1
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 816(%rdi)
	addsd	%xmm11, %xmm1
	cvttsd2siq	%xmm1, %rax
	movsd	952(%rdi), %xmm1
	mulsd	%xmm10, %xmm1
	movsd	664(%rdi), %xmm10
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	760(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm1
	movapd	%xmm10, %xmm8
	mulsd	%xmm2, %xmm8
	cvttsd2siq	%xmm8, %rdx
	movsd	720(%rdi), %xmm8
	movsd	%xmm8, 768(%rdi)
	je	.L2762
	jle	.L5838
	cmpl	$3, %eax
	je	.L2765
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2761
	movapd	%xmm4, %xmm8
	movq	$0, 720(%rdi)
.L2761:
	movl	656(%rdi), %edx
	movapd	%xmm1, %xmm10
	movsd	%xmm8, 712(%rdi)
	mulsd	792(%rdi), %xmm8
	mulsd	%xmm3, %xmm10
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 656(%rdi)
	addsd	%xmm11, %xmm10
	cvttsd2siq	%xmm10, %rax
	movsd	504(%rdi), %xmm10
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm8
	movl	600(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm7, %xmm8
	movapd	%xmm10, %xmm7
	mulsd	%xmm2, %xmm7
	cvttsd2siq	%xmm7, %rdx
	movsd	560(%rdi), %xmm7
	movsd	%xmm7, 608(%rdi)
	je	.L2775
	jle	.L5839
	cmpl	$3, %eax
	je	.L2778
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2774
	movapd	%xmm4, %xmm7
	movq	$0, 560(%rdi)
.L2774:
	movl	496(%rdi), %edx
	movsd	%xmm7, 552(%rdi)
	mulsd	632(%rdi), %xmm7
	movl	%edx, %eax
	addl	500(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm10
	movl	%edx, 496(%rdi)
	addsd	%xmm4, %xmm10
	cvttsd2siq	%xmm10, %rax
	movsd	344(%rdi), %xmm10
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm7
	movl	440(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm9, %xmm7
	movapd	%xmm10, %xmm9
	mulsd	%xmm2, %xmm9
	cvttsd2siq	%xmm9, %rdx
	movsd	400(%rdi), %xmm9
	movsd	%xmm9, 448(%rdi)
	je	.L2788
	jle	.L5840
	cmpl	$3, %eax
	je	.L2791
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2787
	movapd	%xmm4, %xmm9
	movq	$0, 400(%rdi)
.L2787:
	movl	336(%rdi), %edx
	mulsd	%xmm3, %xmm7
	movsd	%xmm9, 392(%rdi)
	movl	%edx, %eax
	addl	340(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm3
	movl	%edx, 336(%rdi)
	addsd	%xmm3, %xmm7
	movsd	472(%rdi), %xmm3
	mulsd	%xmm9, %xmm3
	cvttsd2siq	%xmm7, %rax
	movsd	184(%rdi), %xmm7
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm3
	movl	280(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm6, %xmm3
	movapd	%xmm7, %xmm6
	mulsd	%xmm2, %xmm6
	cvttsd2siq	%xmm6, %rdx
	movsd	240(%rdi), %xmm6
	movsd	%xmm6, 288(%rdi)
	je	.L2801
	jle	.L5841
	cmpl	$3, %eax
	je	.L2804
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2800
	movapd	%xmm4, %xmm6
	movq	$0, 240(%rdi)
.L2800:
	movl	176(%rdi), %edx
	movsd	%xmm6, 232(%rdi)
	mulsd	312(%rdi), %xmm6
	movl	%edx, %eax
	addl	180(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm7
	movl	%edx, 176(%rdi)
	addsd	%xmm4, %xmm7
	cvttsd2siq	%xmm7, %rax
	movsd	24(%rdi), %xmm7
	mulsd	%xmm7, %xmm2
	cvttsd2siq	%xmm2, %rdx
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm6
	movl	120(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm6
	movsd	80(%rdi), %xmm0
	movsd	%xmm0, 128(%rdi)
	je	.L2814
	jle	.L5842
	cmpl	$3, %eax
	je	.L2817
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2813
	movapd	%xmm4, %xmm0
	movq	$0, 80(%rdi)
.L2813:
	movl	16(%rdi), %edx
	movsd	%xmm0, 72(%rdi)
	mulsd	152(%rdi), %xmm0
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm2
	movl	%edx, 16(%rdi)
	addsd	%xmm4, %xmm2
	cvttsd2siq	%xmm2, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	mulsd	%xmm5, %xmm0
	addsd	%xmm6, %xmm0
	addsd	%xmm3, %xmm0
	addsd	%xmm8, %xmm0
	mulsd	.LC22(%rip), %xmm0
	jmp	.L531
	.p2align 4,,10
	.p2align 3
.L560:
	movsd	824(%rdi), %xmm3
	movl	920(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	880(%rdi), %xmm10
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm10, 928(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L2671
	jle	.L5843
	cmpl	$3, %eax
	je	.L2674
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L5364
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 880(%rdi)
	movapd	%xmm4, %xmm10
.L2670:
	movl	816(%rdi), %edx
	movsd	%xmm10, 872(%rdi)
	mulsd	952(%rdi), %xmm10
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm3
	movl	%edx, 816(%rdi)
	addsd	%xmm4, %xmm3
	cvttsd2siq	%xmm3, %rax
	movsd	664(%rdi), %xmm3
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm10
	movl	760(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm10
	movapd	%xmm3, %xmm8
	mulsd	%xmm2, %xmm8
	cvttsd2siq	%xmm8, %rdx
	movsd	720(%rdi), %xmm8
	movsd	%xmm8, 768(%rdi)
	je	.L2684
	jle	.L5844
	cmpl	$3, %eax
	je	.L2687
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2683
	movapd	%xmm4, %xmm8
	movq	$0, 720(%rdi)
.L2683:
	movl	656(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm8, 712(%rdi)
	mulsd	%xmm3, %xmm1
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 656(%rdi)
	addsd	%xmm11, %xmm1
	cvttsd2siq	%xmm1, %rax
	movsd	792(%rdi), %xmm1
	mulsd	%xmm8, %xmm1
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	600(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm7, %xmm1
	movsd	504(%rdi), %xmm7
	movapd	%xmm7, %xmm8
	mulsd	%xmm2, %xmm8
	cvttsd2siq	%xmm8, %rdx
	movsd	560(%rdi), %xmm8
	movsd	%xmm8, 608(%rdi)
	je	.L2697
	jle	.L5845
	cmpl	$3, %eax
	je	.L2700
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2696
	movapd	%xmm4, %xmm8
	movq	$0, 560(%rdi)
.L2696:
	movl	496(%rdi), %edx
	movapd	%xmm1, %xmm7
	movsd	%xmm8, 552(%rdi)
	mulsd	632(%rdi), %xmm8
	mulsd	%xmm3, %xmm7
	movl	%edx, %eax
	addl	500(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 496(%rdi)
	addsd	%xmm11, %xmm7
	cvttsd2siq	%xmm7, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm8
	movl	440(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm9, %xmm8
	movsd	344(%rdi), %xmm9
	movapd	%xmm9, %xmm7
	mulsd	%xmm2, %xmm7
	cvttsd2siq	%xmm7, %rdx
	movsd	400(%rdi), %xmm7
	movsd	%xmm7, 448(%rdi)
	je	.L2710
	jle	.L5846
	cmpl	$3, %eax
	je	.L2713
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2709
	movapd	%xmm4, %xmm7
	movq	$0, 400(%rdi)
.L2709:
	movl	336(%rdi), %edx
	mulsd	%xmm3, %xmm8
	movsd	%xmm7, 392(%rdi)
	mulsd	472(%rdi), %xmm7
	movl	%edx, %eax
	addl	340(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm9
	movl	%edx, 336(%rdi)
	addsd	%xmm9, %xmm8
	cvttsd2siq	%xmm8, %rax
	movsd	184(%rdi), %xmm8
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm7
	movl	280(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm6, %xmm7
	movapd	%xmm8, %xmm6
	mulsd	%xmm2, %xmm6
	cvttsd2siq	%xmm6, %rdx
	movsd	240(%rdi), %xmm6
	movsd	%xmm6, 288(%rdi)
	je	.L2723
	jle	.L5847
	cmpl	$3, %eax
	je	.L2726
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2722
	movapd	%xmm4, %xmm6
	movq	$0, 240(%rdi)
.L2722:
	movl	176(%rdi), %edx
	movsd	%xmm6, 232(%rdi)
	mulsd	312(%rdi), %xmm6
	movl	%edx, %eax
	addl	180(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm8
	movl	%edx, 176(%rdi)
	addsd	%xmm4, %xmm8
	cvttsd2siq	%xmm8, %rax
	movsd	24(%rdi), %xmm8
	mulsd	%xmm8, %xmm2
	cvttsd2siq	%xmm2, %rdx
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm6
	movl	120(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm6
	movsd	80(%rdi), %xmm0
	movsd	%xmm0, 128(%rdi)
	je	.L2736
	jle	.L5848
	cmpl	$3, %eax
	je	.L2739
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2735
	movapd	%xmm4, %xmm0
	movq	$0, 80(%rdi)
.L2735:
	movl	16(%rdi), %edx
	mulsd	%xmm6, %xmm3
	movsd	%xmm0, 72(%rdi)
	mulsd	152(%rdi), %xmm0
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm2
	movl	%edx, 16(%rdi)
	addsd	%xmm2, %xmm3
	cvttsd2siq	%xmm3, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	mulsd	%xmm5, %xmm0
	addsd	%xmm7, %xmm0
	addsd	%xmm10, %xmm0
	divsd	.LC8(%rip), %xmm0
	jmp	.L531
	.p2align 4,,10
	.p2align 3
.L559:
	movsd	824(%rdi), %xmm4
	movl	920(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm4, %xmm3
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm3
	cvttsd2siq	%xmm3, %rdx
	movsd	880(%rdi), %xmm3
	movsd	%xmm3, 928(%rdi)
	je	.L2593
	jle	.L5849
	cmpl	$3, %eax
	je	.L2596
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L5340
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 880(%rdi)
	movapd	%xmm4, %xmm3
.L2592:
	movl	816(%rdi), %edx
	movsd	%xmm3, 872(%rdi)
	mulsd	952(%rdi), %xmm3
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm10
	movl	%edx, 816(%rdi)
	addsd	%xmm4, %xmm10
	cvttsd2siq	%xmm10, %rax
	movsd	664(%rdi), %xmm10
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm3
	movl	760(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm3
	movapd	%xmm10, %xmm8
	mulsd	%xmm2, %xmm8
	cvttsd2siq	%xmm8, %rdx
	movsd	720(%rdi), %xmm8
	movsd	%xmm8, 768(%rdi)
	je	.L2606
	jle	.L5850
	cmpl	$3, %eax
	je	.L2609
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2605
	movapd	%xmm4, %xmm8
	movq	$0, 720(%rdi)
.L2605:
	movl	656(%rdi), %edx
	movsd	%xmm8, 712(%rdi)
	mulsd	792(%rdi), %xmm8
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm10
	movl	%edx, 656(%rdi)
	addsd	%xmm4, %xmm10
	cvttsd2siq	%xmm10, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm8
	movl	600(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm7, %xmm8
	addsd	%xmm3, %xmm8
	movsd	504(%rdi), %xmm3
	movapd	%xmm3, %xmm7
	mulsd	%xmm2, %xmm7
	cvttsd2siq	%xmm7, %rdx
	movsd	560(%rdi), %xmm7
	movsd	%xmm7, 608(%rdi)
	je	.L2619
	jle	.L5851
	cmpl	$3, %eax
	je	.L2622
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2618
	movapd	%xmm4, %xmm7
	movq	$0, 560(%rdi)
.L2618:
	movl	496(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm7, 552(%rdi)
	mulsd	632(%rdi), %xmm7
	mulsd	%xmm3, %xmm8
	movl	%edx, %eax
	addl	500(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm10
	movl	%edx, 496(%rdi)
	addsd	%xmm10, %xmm8
	cvttsd2siq	%xmm8, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm7
	movl	440(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm9, %xmm7
	movsd	344(%rdi), %xmm9
	movapd	%xmm9, %xmm8
	mulsd	%xmm2, %xmm8
	cvttsd2siq	%xmm8, %rdx
	movsd	400(%rdi), %xmm8
	movsd	%xmm8, 448(%rdi)
	je	.L2632
	jle	.L5852
	cmpl	$3, %eax
	je	.L2635
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2631
	movapd	%xmm4, %xmm8
	movq	$0, 400(%rdi)
.L2631:
	movl	336(%rdi), %edx
	mulsd	%xmm3, %xmm1
	movsd	%xmm8, 392(%rdi)
	movl	%edx, %eax
	addl	340(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm9
	movl	%edx, 336(%rdi)
	addsd	%xmm9, %xmm1
	cvttsd2siq	%xmm1, %rax
	movsd	472(%rdi), %xmm1
	mulsd	%xmm8, %xmm1
	movsd	184(%rdi), %xmm8
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	280(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm6, %xmm1
	movapd	%xmm8, %xmm6
	mulsd	%xmm2, %xmm6
	cvttsd2siq	%xmm6, %rdx
	movsd	240(%rdi), %xmm6
	movsd	%xmm6, 288(%rdi)
	je	.L2645
	jle	.L5853
	cmpl	$3, %eax
	je	.L2648
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2644
	movapd	%xmm4, %xmm6
	movq	$0, 240(%rdi)
.L2644:
	movl	176(%rdi), %edx
	mulsd	%xmm1, %xmm3
	movsd	%xmm6, 232(%rdi)
	movl	%edx, %eax
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm8
	addsd	%xmm8, %xmm3
	cvttsd2siq	%xmm3, %rax
.L5794:
	mulsd	312(%rdi), %xmm6
	andl	$4095, %eax
	addl	180(%rdi), %edx
	movsd	waveform(,%rax,8), %xmm3
	movl	120(%rdi), %eax
	cmpl	$1, %eax
	movl	%edx, 176(%rdi)
	mulsd	%xmm6, %xmm3
	movsd	24(%rdi), %xmm6
	mulsd	%xmm6, %xmm2
	mulsd	%xmm0, %xmm3
	movsd	80(%rdi), %xmm0
	cvttsd2siq	%xmm2, %rdx
	movsd	%xmm0, 128(%rdi)
	je	.L2658
	jle	.L5854
	cmpl	$3, %eax
	je	.L2661
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2657
	movapd	%xmm4, %xmm0
	movq	$0, 80(%rdi)
	.p2align 4,,10
	.p2align 3
.L2657:
	movl	16(%rdi), %edx
	movsd	%xmm0, 72(%rdi)
	mulsd	152(%rdi), %xmm0
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm2
	movl	%edx, 16(%rdi)
	addsd	%xmm4, %xmm2
	cvttsd2siq	%xmm2, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	mulsd	%xmm5, %xmm0
	addsd	%xmm3, %xmm0
	addsd	%xmm7, %xmm0
	divsd	.LC8(%rip), %xmm0
	jmp	.L531
	.p2align 4,,10
	.p2align 3
.L558:
	movsd	824(%rdi), %xmm3
	movl	920(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	880(%rdi), %xmm10
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm10, 928(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L2515
	jle	.L5855
	cmpl	$3, %eax
	je	.L2518
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L5316
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 880(%rdi)
	movapd	%xmm4, %xmm10
.L2514:
	movl	816(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm10, 872(%rdi)
	mulsd	%xmm3, %xmm1
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 816(%rdi)
	addsd	%xmm11, %xmm1
	cvttsd2siq	%xmm1, %rax
	movsd	952(%rdi), %xmm1
	mulsd	%xmm10, %xmm1
	movsd	664(%rdi), %xmm10
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	760(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm1
	movapd	%xmm10, %xmm8
	mulsd	%xmm2, %xmm8
	cvttsd2siq	%xmm8, %rdx
	movsd	720(%rdi), %xmm8
	movsd	%xmm8, 768(%rdi)
	je	.L2528
	jle	.L5856
	cmpl	$3, %eax
	je	.L2531
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2527
	movapd	%xmm4, %xmm8
	movq	$0, 720(%rdi)
.L2527:
	movl	656(%rdi), %edx
	movsd	%xmm8, 712(%rdi)
	mulsd	792(%rdi), %xmm8
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm10
	movl	%edx, 656(%rdi)
	addsd	%xmm4, %xmm10
	cvttsd2siq	%xmm10, %rax
	movsd	504(%rdi), %xmm10
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm8
	movl	600(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm7, %xmm8
	movapd	%xmm10, %xmm7
	mulsd	%xmm2, %xmm7
	addsd	%xmm1, %xmm8
	cvttsd2siq	%xmm7, %rdx
	movsd	560(%rdi), %xmm7
	movsd	%xmm7, 608(%rdi)
	je	.L2541
	jle	.L5857
	cmpl	$3, %eax
	je	.L2544
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2540
	movapd	%xmm4, %xmm7
	movq	$0, 560(%rdi)
.L2540:
	movl	496(%rdi), %edx
	mulsd	%xmm3, %xmm8
	movsd	%xmm7, 552(%rdi)
	mulsd	632(%rdi), %xmm7
	movl	%edx, %eax
	addl	500(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm10
	movl	%edx, 496(%rdi)
	addsd	%xmm10, %xmm8
	cvttsd2siq	%xmm8, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm7
	movl	440(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm9, %xmm7
	movsd	344(%rdi), %xmm9
	movapd	%xmm9, %xmm8
	mulsd	%xmm2, %xmm8
	cvttsd2siq	%xmm8, %rdx
	movsd	400(%rdi), %xmm8
	movsd	%xmm8, 448(%rdi)
	je	.L2554
	jle	.L5858
	cmpl	$3, %eax
	je	.L2557
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2553
	movapd	%xmm4, %xmm8
	movq	$0, 400(%rdi)
.L2553:
	movl	336(%rdi), %edx
	movsd	%xmm8, 392(%rdi)
	mulsd	472(%rdi), %xmm8
	movl	%edx, %eax
	addl	340(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm9
	movl	%edx, 336(%rdi)
	addsd	%xmm4, %xmm9
	cvttsd2siq	%xmm9, %rax
	movsd	184(%rdi), %xmm9
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm8
	movl	280(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm6, %xmm8
	movapd	%xmm9, %xmm6
	mulsd	%xmm2, %xmm6
	cvttsd2siq	%xmm6, %rdx
	movsd	240(%rdi), %xmm6
	movsd	%xmm6, 288(%rdi)
	je	.L2567
	jle	.L5859
	cmpl	$3, %eax
	je	.L2570
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2566
	movapd	%xmm4, %xmm6
	movq	$0, 240(%rdi)
.L2566:
	movl	176(%rdi), %edx
	mulsd	%xmm3, %xmm8
	movsd	%xmm6, 232(%rdi)
	movl	%edx, %eax
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm3
	addsd	%xmm3, %xmm8
	cvttsd2siq	%xmm8, %rax
	jmp	.L5794
	.p2align 4,,10
	.p2align 3
.L557:
	movsd	824(%rdi), %xmm3
	movl	920(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	880(%rdi), %xmm10
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm10, 928(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L2437
	jle	.L5860
	cmpl	$3, %eax
	je	.L2440
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L5292
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 880(%rdi)
	movapd	%xmm4, %xmm10
.L2436:
	movl	816(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm10, 872(%rdi)
	mulsd	%xmm3, %xmm1
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 816(%rdi)
	addsd	%xmm11, %xmm1
	cvttsd2siq	%xmm1, %rax
	movsd	952(%rdi), %xmm1
	mulsd	%xmm10, %xmm1
	movsd	664(%rdi), %xmm10
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	760(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm1
	movapd	%xmm10, %xmm8
	mulsd	%xmm2, %xmm8
	cvttsd2siq	%xmm8, %rdx
	movsd	720(%rdi), %xmm8
	movsd	%xmm8, 768(%rdi)
	je	.L2450
	jle	.L5861
	cmpl	$3, %eax
	je	.L2453
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2449
	movapd	%xmm4, %xmm8
	movq	$0, 720(%rdi)
.L2449:
	movl	656(%rdi), %edx
	mulsd	%xmm1, %xmm3
	movsd	%xmm8, 712(%rdi)
	mulsd	792(%rdi), %xmm8
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	movapd	%xmm3, %xmm11
	cvtsi2sdq	%rax, %xmm10
	movl	%edx, 656(%rdi)
	addsd	%xmm3, %xmm10
	cvttsd2siq	%xmm10, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm8
	movl	600(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm7, %xmm8
	movsd	504(%rdi), %xmm7
	movapd	%xmm7, %xmm3
	mulsd	%xmm2, %xmm3
	cvttsd2siq	%xmm3, %rdx
	movsd	560(%rdi), %xmm3
	movsd	%xmm3, 608(%rdi)
	je	.L2463
	jle	.L5862
	cmpl	$3, %eax
	je	.L2466
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2462
	movapd	%xmm4, %xmm3
	movq	$0, 560(%rdi)
.L2462:
	movl	496(%rdi), %edx
	movsd	%xmm3, 552(%rdi)
	mulsd	632(%rdi), %xmm3
	movl	%edx, %eax
	addl	500(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm7
	movl	%edx, 496(%rdi)
	addsd	%xmm11, %xmm7
	cvttsd2siq	%xmm7, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm3
	movl	440(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm9, %xmm3
	movsd	344(%rdi), %xmm9
	movapd	%xmm9, %xmm7
	mulsd	%xmm2, %xmm7
	cvttsd2siq	%xmm7, %rdx
	movsd	400(%rdi), %xmm7
	movsd	%xmm7, 448(%rdi)
	je	.L2476
	jle	.L5863
	cmpl	$3, %eax
	je	.L2479
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2475
	movapd	%xmm4, %xmm7
	movq	$0, 400(%rdi)
.L2475:
	movl	336(%rdi), %edx
	movsd	%xmm7, 392(%rdi)
	mulsd	472(%rdi), %xmm7
	movl	%edx, %eax
	addl	340(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm9
	movl	%edx, 336(%rdi)
	addsd	%xmm4, %xmm9
	cvttsd2siq	%xmm9, %rax
	movsd	184(%rdi), %xmm9
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm7
	movl	280(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm6, %xmm7
	movapd	%xmm9, %xmm6
	mulsd	%xmm2, %xmm6
	cvttsd2siq	%xmm6, %rdx
	movsd	240(%rdi), %xmm6
	movsd	%xmm6, 288(%rdi)
	je	.L2489
	jle	.L5864
	cmpl	$3, %eax
	je	.L2492
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2488
	movapd	%xmm4, %xmm6
	movq	$0, 240(%rdi)
.L2488:
	movl	176(%rdi), %edx
	movsd	%xmm6, 232(%rdi)
	mulsd	312(%rdi), %xmm6
	movl	%edx, %eax
	addl	180(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm9
	movl	%edx, 176(%rdi)
	addsd	%xmm4, %xmm9
	cvttsd2siq	%xmm9, %rax
	movsd	24(%rdi), %xmm9
	mulsd	%xmm9, %xmm2
	cvttsd2siq	%xmm2, %rdx
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm6
	movl	120(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm6
	movsd	80(%rdi), %xmm0
	movsd	%xmm0, 128(%rdi)
	je	.L2502
	jle	.L5865
	cmpl	$3, %eax
	je	.L2505
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2501
	movapd	%xmm4, %xmm0
	movq	$0, 80(%rdi)
.L2501:
	movl	16(%rdi), %edx
	movsd	%xmm0, 72(%rdi)
	mulsd	152(%rdi), %xmm0
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm2
	movl	%edx, 16(%rdi)
	addsd	%xmm4, %xmm2
	cvttsd2siq	%xmm2, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	mulsd	%xmm5, %xmm0
	addsd	%xmm6, %xmm0
	addsd	%xmm7, %xmm0
	addsd	%xmm3, %xmm0
	addsd	%xmm8, %xmm0
	divsd	.LC23(%rip), %xmm0
	jmp	.L531
	.p2align 4,,10
	.p2align 3
.L556:
	movsd	824(%rdi), %xmm3
	movl	920(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	880(%rdi), %xmm10
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm10, 928(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L2359
	jle	.L5866
	cmpl	$3, %eax
	je	.L2362
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L5268
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 880(%rdi)
	movapd	%xmm4, %xmm10
.L2358:
	movl	816(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm10, 872(%rdi)
	mulsd	%xmm3, %xmm1
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 816(%rdi)
	addsd	%xmm11, %xmm1
	cvttsd2siq	%xmm1, %rax
	movsd	952(%rdi), %xmm1
	mulsd	%xmm10, %xmm1
	movsd	664(%rdi), %xmm10
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	760(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm1
	movapd	%xmm10, %xmm8
	mulsd	%xmm2, %xmm8
	cvttsd2siq	%xmm8, %rdx
	movsd	720(%rdi), %xmm8
	movsd	%xmm8, 768(%rdi)
	je	.L2372
	jle	.L5867
	cmpl	$3, %eax
	je	.L2375
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2371
	movapd	%xmm4, %xmm8
	movq	$0, 720(%rdi)
.L2371:
	movl	656(%rdi), %edx
	mulsd	%xmm1, %xmm3
	movsd	%xmm8, 712(%rdi)
	mulsd	792(%rdi), %xmm8
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	movapd	%xmm3, %xmm10
	cvtsi2sdq	%rax, %xmm3
	movl	%edx, 656(%rdi)
	addsd	%xmm10, %xmm3
	cvttsd2siq	%xmm3, %rax
	movsd	504(%rdi), %xmm3
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm8
	movl	600(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm7, %xmm8
	movapd	%xmm3, %xmm7
	mulsd	%xmm2, %xmm7
	cvttsd2siq	%xmm7, %rdx
	movsd	560(%rdi), %xmm7
	movsd	%xmm7, 608(%rdi)
	je	.L2385
	jle	.L5868
	cmpl	$3, %eax
	je	.L2388
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2384
	movapd	%xmm4, %xmm7
	movq	$0, 560(%rdi)
.L2384:
	movl	496(%rdi), %edx
	movsd	%xmm7, 552(%rdi)
	mulsd	632(%rdi), %xmm7
	movl	%edx, %eax
	addl	500(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm3
	movl	%edx, 496(%rdi)
	addsd	%xmm10, %xmm3
	cvttsd2siq	%xmm3, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm7
	movl	440(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm9, %xmm7
	movsd	344(%rdi), %xmm9
	movapd	%xmm9, %xmm3
	mulsd	%xmm2, %xmm3
	cvttsd2siq	%xmm3, %rdx
	movsd	400(%rdi), %xmm3
	movsd	%xmm3, 448(%rdi)
	je	.L2398
	jle	.L5869
	cmpl	$3, %eax
	je	.L2401
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2397
	movapd	%xmm4, %xmm3
	movq	$0, 400(%rdi)
.L2397:
	movl	336(%rdi), %edx
	movsd	%xmm3, 392(%rdi)
	mulsd	472(%rdi), %xmm3
	movl	%edx, %eax
	addl	340(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm9
	movl	%edx, 336(%rdi)
	addsd	%xmm10, %xmm9
	cvttsd2siq	%xmm9, %rax
	movsd	184(%rdi), %xmm9
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm3
	movl	280(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm6, %xmm3
	movapd	%xmm9, %xmm6
	mulsd	%xmm2, %xmm6
	cvttsd2siq	%xmm6, %rdx
	movsd	240(%rdi), %xmm6
	movsd	%xmm6, 288(%rdi)
	je	.L2411
	jle	.L5870
	cmpl	$3, %eax
	je	.L2414
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2410
	movapd	%xmm4, %xmm6
	movq	$0, 240(%rdi)
.L2410:
	movl	176(%rdi), %edx
	movsd	%xmm6, 232(%rdi)
	mulsd	312(%rdi), %xmm6
	movl	%edx, %eax
	addl	180(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm9
	movl	%edx, 176(%rdi)
	addsd	%xmm4, %xmm9
	cvttsd2siq	%xmm9, %rax
	movsd	24(%rdi), %xmm9
	mulsd	%xmm9, %xmm2
	cvttsd2siq	%xmm2, %rdx
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm6
	movl	120(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm6
	movsd	80(%rdi), %xmm0
	movsd	%xmm0, 128(%rdi)
	je	.L2424
	jle	.L5871
	cmpl	$3, %eax
	je	.L2427
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2423
	movapd	%xmm4, %xmm0
	movq	$0, 80(%rdi)
.L2423:
	movl	16(%rdi), %edx
	movsd	%xmm0, 72(%rdi)
	mulsd	152(%rdi), %xmm0
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm2
	movl	%edx, 16(%rdi)
	addsd	%xmm4, %xmm2
	cvttsd2siq	%xmm2, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	mulsd	%xmm5, %xmm0
	addsd	%xmm6, %xmm0
	addsd	%xmm3, %xmm0
	addsd	%xmm7, %xmm0
	addsd	%xmm8, %xmm0
	divsd	.LC23(%rip), %xmm0
	jmp	.L531
	.p2align 4,,10
	.p2align 3
.L555:
	movsd	824(%rdi), %xmm3
	movl	920(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	880(%rdi), %xmm10
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm10, 928(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L2281
	jle	.L5872
	cmpl	$3, %eax
	je	.L2284
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L5244
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 880(%rdi)
	movapd	%xmm4, %xmm10
.L2280:
	movl	816(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm10, 872(%rdi)
	mulsd	%xmm3, %xmm1
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 816(%rdi)
	addsd	%xmm11, %xmm1
	cvttsd2siq	%xmm1, %rax
	movsd	952(%rdi), %xmm1
	mulsd	%xmm10, %xmm1
	movsd	664(%rdi), %xmm10
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	760(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm1
	movapd	%xmm10, %xmm8
	mulsd	%xmm2, %xmm8
	cvttsd2siq	%xmm8, %rdx
	movsd	720(%rdi), %xmm8
	movsd	%xmm8, 768(%rdi)
	je	.L2294
	jle	.L5873
	cmpl	$3, %eax
	je	.L2297
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2293
	movapd	%xmm4, %xmm8
	movq	$0, 720(%rdi)
.L2293:
	movl	656(%rdi), %edx
	movapd	%xmm1, %xmm11
	movsd	%xmm8, 712(%rdi)
	mulsd	792(%rdi), %xmm8
	mulsd	%xmm3, %xmm11
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm10
	movl	%edx, 656(%rdi)
	addsd	%xmm11, %xmm10
	cvttsd2siq	%xmm10, %rax
	movsd	504(%rdi), %xmm10
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm8
	movl	600(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm7, %xmm8
	movapd	%xmm10, %xmm7
	mulsd	%xmm2, %xmm7
	cvttsd2siq	%xmm7, %rdx
	movsd	560(%rdi), %xmm7
	movsd	%xmm7, 608(%rdi)
	je	.L2307
	jle	.L5874
	cmpl	$3, %eax
	je	.L2310
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2306
	movapd	%xmm4, %xmm7
	movq	$0, 560(%rdi)
.L2306:
	movl	496(%rdi), %edx
	movsd	%xmm7, 552(%rdi)
	mulsd	632(%rdi), %xmm7
	movl	%edx, %eax
	addl	500(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm10
	movl	%edx, 496(%rdi)
	addsd	%xmm11, %xmm10
	cvttsd2siq	%xmm10, %rax
	movsd	344(%rdi), %xmm10
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm7
	movl	440(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm9, %xmm7
	movapd	%xmm10, %xmm9
	mulsd	%xmm2, %xmm9
	cvttsd2siq	%xmm9, %rdx
	movsd	400(%rdi), %xmm9
	movsd	%xmm9, 448(%rdi)
	je	.L2320
	jle	.L5875
	cmpl	$3, %eax
	je	.L2323
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2319
	movapd	%xmm4, %xmm9
	movq	$0, 400(%rdi)
.L2319:
	movl	336(%rdi), %edx
	movsd	%xmm9, 392(%rdi)
	mulsd	472(%rdi), %xmm9
	movl	%edx, %eax
	addl	340(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm10
	movl	%edx, 336(%rdi)
	addsd	%xmm4, %xmm10
	cvttsd2siq	%xmm10, %rax
	movsd	184(%rdi), %xmm10
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm9
	movl	280(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm6, %xmm9
	movapd	%xmm10, %xmm6
	mulsd	%xmm2, %xmm6
	cvttsd2siq	%xmm6, %rdx
	movsd	240(%rdi), %xmm6
	movsd	%xmm6, 288(%rdi)
	je	.L2333
	jle	.L5876
	cmpl	$3, %eax
	je	.L2336
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2332
	movapd	%xmm4, %xmm6
	movq	$0, 240(%rdi)
.L2332:
	movl	176(%rdi), %edx
	mulsd	%xmm3, %xmm9
	movsd	%xmm6, 232(%rdi)
	mulsd	312(%rdi), %xmm6
	movl	%edx, %eax
	addl	180(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm3
	movl	%edx, 176(%rdi)
	addsd	%xmm3, %xmm9
	cvttsd2siq	%xmm9, %rax
	andl	$4095, %eax
	movsd	waveform(,%rax,8), %xmm3
	movl	120(%rdi), %eax
	mulsd	%xmm6, %xmm3
	movsd	24(%rdi), %xmm6
	cmpl	$1, %eax
	mulsd	%xmm6, %xmm2
	mulsd	%xmm0, %xmm3
	movsd	80(%rdi), %xmm0
	cvttsd2siq	%xmm2, %rdx
	movsd	%xmm0, 128(%rdi)
	je	.L2346
	jle	.L5877
	cmpl	$3, %eax
	je	.L2349
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2345
	movapd	%xmm4, %xmm0
	movq	$0, 80(%rdi)
.L2345:
	movl	16(%rdi), %edx
	movsd	%xmm0, 72(%rdi)
	mulsd	152(%rdi), %xmm0
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm2
	movl	%edx, 16(%rdi)
	addsd	%xmm4, %xmm2
	cvttsd2siq	%xmm2, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	mulsd	%xmm5, %xmm0
	addsd	%xmm3, %xmm0
	addsd	%xmm7, %xmm0
	addsd	%xmm8, %xmm0
	mulsd	.LC22(%rip), %xmm0
	jmp	.L531
	.p2align 4,,10
	.p2align 3
.L554:
	movsd	824(%rdi), %xmm3
	movl	920(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	880(%rdi), %xmm10
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm10, 928(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L2203
	jle	.L5878
	cmpl	$3, %eax
	je	.L2206
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L5220
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 880(%rdi)
	movapd	%xmm4, %xmm10
.L2202:
	movl	816(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm10, 872(%rdi)
	mulsd	%xmm3, %xmm1
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 816(%rdi)
	addsd	%xmm11, %xmm1
	cvttsd2siq	%xmm1, %rax
	movsd	952(%rdi), %xmm1
	mulsd	%xmm10, %xmm1
	movsd	664(%rdi), %xmm10
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	760(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm1
	movapd	%xmm10, %xmm8
	mulsd	%xmm2, %xmm8
	cvttsd2siq	%xmm8, %rdx
	movsd	720(%rdi), %xmm8
	movsd	%xmm8, 768(%rdi)
	je	.L2216
	jle	.L5879
	cmpl	$3, %eax
	je	.L2219
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2215
	movapd	%xmm4, %xmm8
	movq	$0, 720(%rdi)
.L2215:
	movl	656(%rdi), %edx
	movapd	%xmm1, %xmm11
	movsd	%xmm8, 712(%rdi)
	mulsd	792(%rdi), %xmm8
	mulsd	%xmm3, %xmm11
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm10
	movl	%edx, 656(%rdi)
	addsd	%xmm11, %xmm10
	cvttsd2siq	%xmm10, %rax
	movsd	504(%rdi), %xmm10
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm8
	movl	600(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm7, %xmm8
	movapd	%xmm10, %xmm7
	mulsd	%xmm2, %xmm7
	cvttsd2siq	%xmm7, %rdx
	movsd	560(%rdi), %xmm7
	movsd	%xmm7, 608(%rdi)
	je	.L2229
	jle	.L5880
	cmpl	$3, %eax
	je	.L2232
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2228
	movapd	%xmm4, %xmm7
	movq	$0, 560(%rdi)
.L2228:
	movl	496(%rdi), %edx
	movsd	%xmm7, 552(%rdi)
	mulsd	632(%rdi), %xmm7
	movl	%edx, %eax
	addl	500(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm10
	movl	%edx, 496(%rdi)
	addsd	%xmm11, %xmm10
	cvttsd2siq	%xmm10, %rax
	movsd	344(%rdi), %xmm10
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm7
	movl	440(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm9, %xmm7
	movapd	%xmm10, %xmm9
	mulsd	%xmm2, %xmm9
	cvttsd2siq	%xmm9, %rdx
	movsd	400(%rdi), %xmm9
	movsd	%xmm9, 448(%rdi)
	je	.L2242
	jle	.L5881
	cmpl	$3, %eax
	je	.L2245
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2241
	movapd	%xmm4, %xmm9
	movq	$0, 400(%rdi)
.L2241:
	movl	336(%rdi), %edx
	movsd	%xmm9, 392(%rdi)
	mulsd	472(%rdi), %xmm9
	movl	%edx, %eax
	addl	340(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm10
	movl	%edx, 336(%rdi)
	addsd	%xmm11, %xmm10
	cvttsd2siq	%xmm10, %rax
	movsd	184(%rdi), %xmm10
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm9
	movl	280(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm6, %xmm9
	movapd	%xmm10, %xmm6
	mulsd	%xmm2, %xmm6
	cvttsd2siq	%xmm6, %rdx
	movsd	240(%rdi), %xmm6
	movsd	%xmm6, 288(%rdi)
	je	.L2255
	jle	.L5882
	cmpl	$3, %eax
	je	.L2258
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2254
	movapd	%xmm4, %xmm6
	movq	$0, 240(%rdi)
.L2254:
	movl	176(%rdi), %edx
	movsd	%xmm6, 232(%rdi)
	mulsd	312(%rdi), %xmm6
	movl	%edx, %eax
	addl	180(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm10
	movl	%edx, 176(%rdi)
	addsd	%xmm4, %xmm10
	cvttsd2siq	%xmm10, %rax
	movsd	24(%rdi), %xmm10
	mulsd	%xmm10, %xmm2
	cvttsd2siq	%xmm2, %rdx
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm6
	movl	120(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm6
	movsd	80(%rdi), %xmm0
	movsd	%xmm0, 128(%rdi)
	je	.L2268
	jle	.L5883
	cmpl	$3, %eax
	je	.L2271
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2267
	movapd	%xmm4, %xmm0
	movq	$0, 80(%rdi)
.L2267:
	movl	16(%rdi), %edx
	mulsd	%xmm6, %xmm3
	movsd	%xmm0, 72(%rdi)
	mulsd	152(%rdi), %xmm0
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm2
	movl	%edx, 16(%rdi)
	addsd	%xmm2, %xmm3
	cvttsd2siq	%xmm3, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	mulsd	%xmm5, %xmm0
	addsd	%xmm9, %xmm0
	addsd	%xmm7, %xmm0
	addsd	%xmm8, %xmm0
	mulsd	.LC22(%rip), %xmm0
	jmp	.L531
	.p2align 4,,10
	.p2align 3
.L553:
	movsd	824(%rdi), %xmm3
	movl	920(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	880(%rdi), %xmm10
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm10, 928(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L2125
	jle	.L5884
	cmpl	$3, %eax
	je	.L2128
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L5196
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 880(%rdi)
	movapd	%xmm4, %xmm10
.L2124:
	movl	816(%rdi), %edx
	movsd	%xmm10, 872(%rdi)
	mulsd	952(%rdi), %xmm10
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm3
	movl	%edx, 816(%rdi)
	addsd	%xmm4, %xmm3
	cvttsd2siq	%xmm3, %rax
	movsd	664(%rdi), %xmm3
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm10
	movl	760(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm10
	movapd	%xmm3, %xmm8
	mulsd	%xmm2, %xmm8
	cvttsd2siq	%xmm8, %rdx
	movsd	720(%rdi), %xmm8
	movsd	%xmm8, 768(%rdi)
	je	.L2138
	jle	.L5885
	cmpl	$3, %eax
	je	.L2141
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2137
	movapd	%xmm4, %xmm8
	movq	$0, 720(%rdi)
.L2137:
	movl	656(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm8, 712(%rdi)
	mulsd	792(%rdi), %xmm8
	mulsd	%xmm3, %xmm10
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 656(%rdi)
	addsd	%xmm10, %xmm11
	cvttsd2siq	%xmm11, %rax
	movsd	504(%rdi), %xmm11
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm8
	movl	600(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm7, %xmm8
	movapd	%xmm11, %xmm7
	mulsd	%xmm2, %xmm7
	cvttsd2siq	%xmm7, %rdx
	movsd	560(%rdi), %xmm7
	movsd	%xmm7, 608(%rdi)
	je	.L2151
	jle	.L5886
	cmpl	$3, %eax
	je	.L2154
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2150
	movapd	%xmm4, %xmm7
	movq	$0, 560(%rdi)
.L2150:
	movl	496(%rdi), %edx
	movsd	%xmm7, 552(%rdi)
	mulsd	632(%rdi), %xmm7
	movl	%edx, %eax
	addl	500(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 496(%rdi)
	addsd	%xmm10, %xmm11
	movsd	344(%rdi), %xmm10
	cvttsd2siq	%xmm11, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm7
	movl	440(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm9, %xmm7
	movapd	%xmm10, %xmm9
	mulsd	%xmm2, %xmm9
	cvttsd2siq	%xmm9, %rdx
	movsd	400(%rdi), %xmm9
	movsd	%xmm9, 448(%rdi)
	je	.L2164
	jle	.L5887
	cmpl	$3, %eax
	je	.L2167
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2163
	movapd	%xmm4, %xmm9
	movq	$0, 400(%rdi)
.L2163:
	movl	336(%rdi), %edx
	mulsd	%xmm3, %xmm1
	movsd	%xmm9, 392(%rdi)
	movl	%edx, %eax
	addl	340(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm10
	movl	%edx, 336(%rdi)
	addsd	%xmm10, %xmm1
	cvttsd2siq	%xmm1, %rax
	movsd	472(%rdi), %xmm1
	mulsd	%xmm9, %xmm1
	movsd	184(%rdi), %xmm9
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	280(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm6, %xmm1
	movapd	%xmm9, %xmm6
	mulsd	%xmm2, %xmm6
	cvttsd2siq	%xmm6, %rdx
	movsd	240(%rdi), %xmm6
	movsd	%xmm6, 288(%rdi)
	je	.L2177
	jle	.L5888
	cmpl	$3, %eax
	je	.L2180
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2176
	movapd	%xmm4, %xmm6
	movq	$0, 240(%rdi)
.L2176:
	movl	176(%rdi), %edx
	mulsd	%xmm1, %xmm3
	movsd	%xmm6, 232(%rdi)
	mulsd	312(%rdi), %xmm6
	movl	%edx, %eax
	addl	180(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm9
	movl	%edx, 176(%rdi)
	addsd	%xmm3, %xmm9
	cvttsd2siq	%xmm9, %rax
	movsd	24(%rdi), %xmm9
	mulsd	%xmm9, %xmm2
	cvttsd2siq	%xmm2, %rdx
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm6
	movl	120(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm6
	movsd	80(%rdi), %xmm0
	movsd	%xmm0, 128(%rdi)
	je	.L2190
	jle	.L5889
	cmpl	$3, %eax
	je	.L2193
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2189
	movapd	%xmm4, %xmm0
	movq	$0, 80(%rdi)
.L2189:
	movl	16(%rdi), %edx
	movsd	%xmm0, 72(%rdi)
	mulsd	152(%rdi), %xmm0
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm2
	movl	%edx, 16(%rdi)
	addsd	%xmm3, %xmm2
	cvttsd2siq	%xmm2, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	mulsd	%xmm5, %xmm0
	addsd	%xmm6, %xmm0
	addsd	%xmm7, %xmm0
	addsd	%xmm8, %xmm0
	mulsd	.LC22(%rip), %xmm0
	jmp	.L531
	.p2align 4,,10
	.p2align 3
.L552:
	movsd	824(%rdi), %xmm4
	movl	920(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm4, %xmm3
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm3
	cvttsd2siq	%xmm3, %rdx
	movsd	880(%rdi), %xmm3
	movsd	%xmm3, 928(%rdi)
	je	.L2047
	jle	.L5890
	cmpl	$3, %eax
	je	.L2050
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L5172
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 880(%rdi)
	movapd	%xmm4, %xmm3
.L2046:
	movl	816(%rdi), %edx
	movsd	%xmm3, 872(%rdi)
	mulsd	952(%rdi), %xmm3
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm10
	movl	%edx, 816(%rdi)
	addsd	%xmm4, %xmm10
	cvttsd2siq	%xmm10, %rax
	movsd	664(%rdi), %xmm10
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm3
	movl	760(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm3
	movapd	%xmm10, %xmm8
	mulsd	%xmm2, %xmm8
	cvttsd2siq	%xmm8, %rdx
	movsd	720(%rdi), %xmm8
	movsd	%xmm8, 768(%rdi)
	je	.L2060
	jle	.L5891
	cmpl	$3, %eax
	je	.L2063
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2059
	movapd	%xmm4, %xmm8
	movq	$0, 720(%rdi)
.L2059:
	movl	656(%rdi), %edx
	movsd	%xmm8, 712(%rdi)
	mulsd	792(%rdi), %xmm8
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm10
	movl	%edx, 656(%rdi)
	addsd	%xmm4, %xmm10
	cvttsd2siq	%xmm10, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm8
	movl	600(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm7, %xmm8
	addsd	%xmm3, %xmm8
	movsd	504(%rdi), %xmm3
	movapd	%xmm3, %xmm7
	mulsd	%xmm2, %xmm7
	cvttsd2siq	%xmm7, %rdx
	movsd	560(%rdi), %xmm7
	movsd	%xmm7, 608(%rdi)
	je	.L2073
	jle	.L5892
	cmpl	$3, %eax
	je	.L2076
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2072
	movapd	%xmm4, %xmm7
	movq	$0, 560(%rdi)
.L2072:
	movl	496(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm7, 552(%rdi)
	mulsd	632(%rdi), %xmm7
	mulsd	%xmm3, %xmm8
	movl	%edx, %eax
	addl	500(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm10
	movl	%edx, 496(%rdi)
	addsd	%xmm10, %xmm8
	cvttsd2siq	%xmm8, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm7
	movl	440(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm9, %xmm7
	movsd	344(%rdi), %xmm9
	movapd	%xmm9, %xmm8
	mulsd	%xmm2, %xmm8
	cvttsd2siq	%xmm8, %rdx
	movsd	400(%rdi), %xmm8
	movsd	%xmm8, 448(%rdi)
	je	.L2086
	jle	.L5893
	cmpl	$3, %eax
	je	.L2089
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2085
	movapd	%xmm4, %xmm8
	movq	$0, 400(%rdi)
.L2085:
	movl	336(%rdi), %edx
	mulsd	%xmm3, %xmm1
	movsd	%xmm8, 392(%rdi)
	movl	%edx, %eax
	addl	340(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm9
	movl	%edx, 336(%rdi)
	addsd	%xmm9, %xmm1
	cvttsd2siq	%xmm1, %rax
	movsd	472(%rdi), %xmm1
	mulsd	%xmm8, %xmm1
	movsd	184(%rdi), %xmm8
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	280(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm6, %xmm1
	movapd	%xmm8, %xmm6
	mulsd	%xmm2, %xmm6
	cvttsd2siq	%xmm6, %rdx
	movsd	240(%rdi), %xmm6
	movsd	%xmm6, 288(%rdi)
	je	.L2099
	jle	.L5894
	cmpl	$3, %eax
	je	.L2102
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2098
	movapd	%xmm4, %xmm6
	movq	$0, 240(%rdi)
.L2098:
	movl	176(%rdi), %edx
	mulsd	%xmm1, %xmm3
	movsd	%xmm6, 232(%rdi)
	mulsd	312(%rdi), %xmm6
	movl	%edx, %eax
	addl	180(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm8
	movl	%edx, 176(%rdi)
	addsd	%xmm3, %xmm8
	cvttsd2siq	%xmm8, %rax
	movsd	24(%rdi), %xmm8
	mulsd	%xmm8, %xmm2
	cvttsd2siq	%xmm2, %rdx
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm6
	movl	120(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm6
	movsd	80(%rdi), %xmm0
	movsd	%xmm0, 128(%rdi)
	je	.L2112
	jle	.L5895
	cmpl	$3, %eax
	je	.L2115
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2111
	movapd	%xmm4, %xmm0
	movq	$0, 80(%rdi)
.L2111:
	movl	16(%rdi), %edx
	movsd	%xmm0, 72(%rdi)
	mulsd	152(%rdi), %xmm0
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm2
	movl	%edx, 16(%rdi)
	addsd	%xmm3, %xmm2
	cvttsd2siq	%xmm2, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	mulsd	%xmm5, %xmm0
	addsd	%xmm6, %xmm0
	addsd	%xmm7, %xmm0
	divsd	.LC8(%rip), %xmm0
	jmp	.L531
	.p2align 4,,10
	.p2align 3
.L551:
	movsd	824(%rdi), %xmm3
	movl	920(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	880(%rdi), %xmm10
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm10, 928(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L1969
	jle	.L5896
	cmpl	$3, %eax
	je	.L1972
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L5148
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 880(%rdi)
	movapd	%xmm4, %xmm10
.L1968:
	movl	816(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm10, 872(%rdi)
	mulsd	%xmm3, %xmm1
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 816(%rdi)
	addsd	%xmm11, %xmm1
	cvttsd2siq	%xmm1, %rax
	movsd	952(%rdi), %xmm1
	mulsd	%xmm10, %xmm1
	movsd	664(%rdi), %xmm10
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	760(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm1
	movapd	%xmm10, %xmm8
	mulsd	%xmm2, %xmm8
	cvttsd2siq	%xmm8, %rdx
	movsd	720(%rdi), %xmm8
	movsd	%xmm8, 768(%rdi)
	je	.L1982
	jle	.L5897
	cmpl	$3, %eax
	je	.L1985
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1981
	movapd	%xmm4, %xmm8
	movq	$0, 720(%rdi)
.L1981:
	movl	656(%rdi), %edx
	movapd	%xmm1, %xmm11
	movsd	%xmm8, 712(%rdi)
	mulsd	792(%rdi), %xmm8
	mulsd	%xmm3, %xmm11
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm10
	movl	%edx, 656(%rdi)
	addsd	%xmm11, %xmm10
	cvttsd2siq	%xmm10, %rax
	movsd	504(%rdi), %xmm10
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm8
	movl	600(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm7, %xmm8
	movapd	%xmm10, %xmm7
	mulsd	%xmm2, %xmm7
	cvttsd2siq	%xmm7, %rdx
	movsd	560(%rdi), %xmm7
	movsd	%xmm7, 608(%rdi)
	je	.L1995
	jle	.L5898
	cmpl	$3, %eax
	je	.L1998
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1994
	movapd	%xmm4, %xmm7
	movq	$0, 560(%rdi)
.L1994:
	movl	496(%rdi), %edx
	movsd	%xmm7, 552(%rdi)
	mulsd	632(%rdi), %xmm7
	movl	%edx, %eax
	addl	500(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm10
	movl	%edx, 496(%rdi)
	addsd	%xmm11, %xmm10
	cvttsd2siq	%xmm10, %rax
	movsd	344(%rdi), %xmm10
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm7
	movl	440(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm9, %xmm7
	movapd	%xmm10, %xmm9
	mulsd	%xmm2, %xmm9
	cvttsd2siq	%xmm9, %rdx
	movsd	400(%rdi), %xmm9
	movsd	%xmm9, 448(%rdi)
	je	.L2008
	jle	.L5899
	cmpl	$3, %eax
	je	.L2011
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2007
	movapd	%xmm4, %xmm9
	movq	$0, 400(%rdi)
.L2007:
	movl	336(%rdi), %edx
	movsd	%xmm9, 392(%rdi)
	mulsd	472(%rdi), %xmm9
	movl	%edx, %eax
	addl	340(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm10
	movl	%edx, 336(%rdi)
	addsd	%xmm4, %xmm10
	cvttsd2siq	%xmm10, %rax
	movsd	184(%rdi), %xmm10
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm9
	movl	280(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm6, %xmm9
	movapd	%xmm10, %xmm6
	mulsd	%xmm2, %xmm6
	cvttsd2siq	%xmm6, %rdx
	movsd	240(%rdi), %xmm6
	movsd	%xmm6, 288(%rdi)
	je	.L2021
	jle	.L5900
	cmpl	$3, %eax
	je	.L2024
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2020
	movapd	%xmm4, %xmm6
	movq	$0, 240(%rdi)
.L2020:
	movl	176(%rdi), %edx
	mulsd	%xmm3, %xmm9
	movsd	%xmm6, 232(%rdi)
	mulsd	312(%rdi), %xmm6
	movl	%edx, %eax
	addl	180(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm10
	movl	%edx, 176(%rdi)
	addsd	%xmm10, %xmm9
	cvttsd2siq	%xmm9, %rax
	movsd	24(%rdi), %xmm9
	mulsd	%xmm9, %xmm2
	cvttsd2siq	%xmm2, %rdx
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm6
	movl	120(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm6
	movsd	80(%rdi), %xmm0
	movsd	%xmm0, 128(%rdi)
	je	.L2034
	jle	.L5901
	cmpl	$3, %eax
	je	.L2037
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L2033
	movapd	%xmm4, %xmm0
	movq	$0, 80(%rdi)
.L2033:
	movl	16(%rdi), %edx
	mulsd	%xmm6, %xmm3
	movsd	%xmm0, 72(%rdi)
	mulsd	152(%rdi), %xmm0
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm2
	movl	%edx, 16(%rdi)
	addsd	%xmm2, %xmm3
	cvttsd2siq	%xmm3, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	mulsd	%xmm5, %xmm0
	addsd	%xmm7, %xmm0
	addsd	%xmm8, %xmm0
	divsd	.LC8(%rip), %xmm0
	jmp	.L531
	.p2align 4,,10
	.p2align 3
.L550:
	movsd	184(%rdi), %xmm3
	movl	280(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	240(%rdi), %xmm9
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm9, 288(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L1893
	jle	.L5902
	cmpl	$3, %eax
	je	.L1896
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L5124
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 240(%rdi)
	movapd	%xmm4, %xmm9
.L1892:
	movl	176(%rdi), %edx
	movsd	%xmm9, 232(%rdi)
	mulsd	312(%rdi), %xmm9
	movsd	880(%rdi), %xmm10
	movl	%edx, %eax
	addl	180(%rdi), %edx
	movsd	%xmm10, 928(%rdi)
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm3
	movl	%edx, 176(%rdi)
	addsd	%xmm4, %xmm3
	cvttsd2siq	%xmm3, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm9
	movl	920(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm9
	movsd	824(%rdi), %xmm0
	movapd	%xmm0, %xmm3
	mulsd	%xmm2, %xmm3
	cvttsd2siq	%xmm3, %rdx
	je	.L1906
	jle	.L5903
	cmpl	$3, %eax
	je	.L1909
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1905
	movapd	%xmm4, %xmm10
	movq	$0, 880(%rdi)
.L1905:
	movl	816(%rdi), %edx
	movsd	%xmm10, 872(%rdi)
	mulsd	952(%rdi), %xmm10
	movsd	664(%rdi), %xmm3
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm0
	movl	%edx, 816(%rdi)
	addsd	%xmm4, %xmm0
	cvttsd2siq	%xmm0, %rax
	movapd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2siq	%xmm0, %rdx
	movsd	720(%rdi), %xmm0
	movsd	%xmm0, 768(%rdi)
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm10
	movl	760(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm10
	je	.L1919
	jle	.L5904
	cmpl	$3, %eax
	je	.L1922
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1918
	movapd	%xmm4, %xmm0
	movq	$0, 720(%rdi)
.L1918:
	movl	656(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm0, 712(%rdi)
	mulsd	792(%rdi), %xmm0
	mulsd	%xmm3, %xmm10
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm8
	movl	%edx, 656(%rdi)
	addsd	%xmm8, %xmm10
	cvttsd2siq	%xmm10, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	movl	600(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm7, %xmm0
	movsd	504(%rdi), %xmm7
	movapd	%xmm7, %xmm8
	mulsd	%xmm2, %xmm8
	cvttsd2siq	%xmm8, %rdx
	movsd	560(%rdi), %xmm8
	movsd	%xmm8, 608(%rdi)
	je	.L1932
	jle	.L5905
	cmpl	$3, %eax
	je	.L1935
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1931
	movapd	%xmm4, %xmm8
	movq	$0, 560(%rdi)
.L1931:
	movsd	%xmm8, 552(%rdi)
	movl	500(%rdi), %eax
	addl	%eax, 496(%rdi)
	movsd	344(%rdi), %xmm8
	movl	440(%rdi), %eax
	movapd	%xmm8, %xmm7
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm7
	cvttsd2siq	%xmm7, %rdx
	movsd	400(%rdi), %xmm7
	movsd	%xmm7, 448(%rdi)
	je	.L1943
	jle	.L5906
	cmpl	$3, %eax
	je	.L1946
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1942
	movapd	%xmm4, %xmm7
	movq	$0, 400(%rdi)
.L1942:
	movl	336(%rdi), %edx
	mulsd	%xmm3, %xmm1
	movsd	%xmm7, 392(%rdi)
	movl	%edx, %eax
	addl	340(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm8
	movl	%edx, 336(%rdi)
	addsd	%xmm8, %xmm1
	cvttsd2siq	%xmm1, %rax
	movsd	472(%rdi), %xmm1
	mulsd	%xmm7, %xmm1
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	120(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm6, %xmm1
	movsd	24(%rdi), %xmm6
	mulsd	%xmm6, %xmm2
	addsd	%xmm1, %xmm9
	cvttsd2siq	%xmm2, %rdx
	addsd	%xmm0, %xmm9
	movsd	80(%rdi), %xmm0
	movsd	%xmm0, 128(%rdi)
	je	.L1956
	jle	.L5907
	cmpl	$3, %eax
	je	.L1959
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1955
	movapd	%xmm4, %xmm0
	movq	$0, 80(%rdi)
.L1955:
	mulsd	%xmm9, %xmm3
	movl	16(%rdi), %edx
	movsd	%xmm0, 72(%rdi)
.L5703:
	movl	%edx, %eax
	mulsd	152(%rdi), %xmm0
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm2
	movl	%edx, 16(%rdi)
	addsd	%xmm2, %xmm3
	cvttsd2siq	%xmm3, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	mulsd	%xmm5, %xmm0
	jmp	.L531
	.p2align 4,,10
	.p2align 3
.L549:
	movsd	184(%rdi), %xmm3
	movl	280(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	240(%rdi), %xmm10
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm10, 288(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L1815
	jle	.L5908
	cmpl	$3, %eax
	je	.L1818
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L5100
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 240(%rdi)
	movapd	%xmm4, %xmm10
.L1814:
	movl	176(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm10, 232(%rdi)
	mulsd	%xmm3, %xmm1
	movl	%edx, %eax
	addl	180(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 176(%rdi)
	addsd	%xmm11, %xmm1
	cvttsd2siq	%xmm1, %rax
	movsd	312(%rdi), %xmm1
	mulsd	%xmm10, %xmm1
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	920(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm1
	movsd	824(%rdi), %xmm0
	movapd	%xmm0, %xmm10
	mulsd	%xmm2, %xmm10
	cvttsd2siq	%xmm10, %rdx
	movsd	880(%rdi), %xmm10
	movsd	%xmm10, 928(%rdi)
	je	.L1828
	jle	.L5909
	cmpl	$3, %eax
	je	.L1831
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1827
	movapd	%xmm4, %xmm10
	movq	$0, 880(%rdi)
.L1827:
	movl	816(%rdi), %edx
	movsd	%xmm10, 872(%rdi)
	mulsd	952(%rdi), %xmm10
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm0
	movl	%edx, 816(%rdi)
	addsd	%xmm4, %xmm0
	cvttsd2siq	%xmm0, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm10
	movl	760(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm10
	movsd	664(%rdi), %xmm8
	movapd	%xmm8, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2siq	%xmm0, %rdx
	movsd	720(%rdi), %xmm0
	movsd	%xmm0, 768(%rdi)
	je	.L1841
	jle	.L5910
	cmpl	$3, %eax
	je	.L1844
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1840
	movapd	%xmm4, %xmm0
	movq	$0, 720(%rdi)
.L1840:
	movl	656(%rdi), %edx
	mulsd	%xmm3, %xmm10
	movsd	%xmm0, 712(%rdi)
	mulsd	792(%rdi), %xmm0
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm8
	movl	%edx, 656(%rdi)
	addsd	%xmm8, %xmm10
	cvttsd2siq	%xmm10, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	movl	600(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm7, %xmm0
	movsd	504(%rdi), %xmm7
	movapd	%xmm7, %xmm8
	mulsd	%xmm2, %xmm8
	cvttsd2siq	%xmm8, %rdx
	movsd	560(%rdi), %xmm8
	movsd	%xmm8, 608(%rdi)
	je	.L1854
	jle	.L5911
	cmpl	$3, %eax
	je	.L1857
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1853
	movapd	%xmm4, %xmm8
	movq	$0, 560(%rdi)
.L1853:
	movl	496(%rdi), %edx
	movsd	%xmm8, 552(%rdi)
	mulsd	632(%rdi), %xmm8
	movl	%edx, %eax
	addl	500(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm7
	movl	%edx, 496(%rdi)
	addsd	%xmm4, %xmm7
	cvttsd2siq	%xmm7, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm8
	movl	440(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm9, %xmm8
	movsd	344(%rdi), %xmm9
	movapd	%xmm9, %xmm7
	mulsd	%xmm2, %xmm7
	cvttsd2siq	%xmm7, %rdx
	movsd	400(%rdi), %xmm7
	movsd	%xmm7, 448(%rdi)
	je	.L1867
	jle	.L5912
	cmpl	$3, %eax
	je	.L1870
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1866
	movapd	%xmm4, %xmm7
	movq	$0, 400(%rdi)
.L1866:
	movl	336(%rdi), %edx
	mulsd	%xmm3, %xmm8
	movsd	%xmm7, 392(%rdi)
	mulsd	472(%rdi), %xmm7
	movl	%edx, %eax
	addl	340(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm9
	movl	%edx, 336(%rdi)
	addsd	%xmm9, %xmm8
	cvttsd2siq	%xmm8, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm1, %xmm7
.L5791:
	movsd	24(%rdi), %xmm6
	movl	120(%rdi), %eax
	addsd	%xmm0, %xmm7
	movsd	80(%rdi), %xmm0
	mulsd	%xmm6, %xmm2
	cmpl	$1, %eax
	movsd	%xmm0, 128(%rdi)
	cvttsd2siq	%xmm2, %rdx
	je	.L1880
	jle	.L5913
	cmpl	$3, %eax
	je	.L1883
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1879
	movapd	%xmm4, %xmm0
	movq	$0, 80(%rdi)
	.p2align 4,,10
	.p2align 3
.L1879:
	movsd	%xmm0, 72(%rdi)
	movl	16(%rdi), %edx
	mulsd	%xmm7, %xmm3
	jmp	.L5703
	.p2align 4,,10
	.p2align 3
.L548:
	movsd	184(%rdi), %xmm3
	movl	280(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	240(%rdi), %xmm10
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm10, 288(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L1737
	jle	.L5914
	cmpl	$3, %eax
	je	.L1740
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L5076
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 240(%rdi)
	movapd	%xmm4, %xmm10
.L1736:
	movl	176(%rdi), %edx
	movsd	%xmm10, 232(%rdi)
	mulsd	312(%rdi), %xmm10
	movl	%edx, %eax
	addl	180(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm3
	movl	%edx, 176(%rdi)
	addsd	%xmm4, %xmm3
	cvttsd2siq	%xmm3, %rax
	movsd	824(%rdi), %xmm3
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm10
	movl	920(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm10
	movapd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2siq	%xmm0, %rdx
	movsd	880(%rdi), %xmm0
	movsd	%xmm0, 928(%rdi)
	je	.L1750
	jle	.L5915
	cmpl	$3, %eax
	je	.L1753
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1749
	movapd	%xmm4, %xmm0
	movq	$0, 880(%rdi)
.L1749:
	movl	816(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm0, 872(%rdi)
	mulsd	%xmm3, %xmm1
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 816(%rdi)
	addsd	%xmm11, %xmm1
	cvttsd2siq	%xmm1, %rax
	movsd	952(%rdi), %xmm1
	mulsd	%xmm0, %xmm1
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	760(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm1
	movsd	664(%rdi), %xmm8
	movapd	%xmm8, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2siq	%xmm0, %rdx
	movsd	720(%rdi), %xmm0
	movsd	%xmm0, 768(%rdi)
	je	.L1763
	jle	.L5916
	cmpl	$3, %eax
	je	.L1766
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1762
	movapd	%xmm4, %xmm0
	movq	$0, 720(%rdi)
.L1762:
	movl	656(%rdi), %edx
	movapd	%xmm1, %xmm8
	movsd	%xmm0, 712(%rdi)
	mulsd	792(%rdi), %xmm0
	mulsd	%xmm3, %xmm8
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 656(%rdi)
	addsd	%xmm11, %xmm8
	cvttsd2siq	%xmm8, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	movl	600(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm7, %xmm0
	movsd	504(%rdi), %xmm7
	movapd	%xmm7, %xmm8
	mulsd	%xmm2, %xmm8
	cvttsd2siq	%xmm8, %rdx
	movsd	560(%rdi), %xmm8
	movsd	%xmm8, 608(%rdi)
	je	.L1776
	jle	.L5917
	cmpl	$3, %eax
	je	.L1779
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1775
	movapd	%xmm4, %xmm8
	movq	$0, 560(%rdi)
.L1775:
	movl	496(%rdi), %edx
	movsd	%xmm8, 552(%rdi)
	mulsd	632(%rdi), %xmm8
	movl	%edx, %eax
	addl	500(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm7
	movl	%edx, 496(%rdi)
	addsd	%xmm4, %xmm7
	cvttsd2siq	%xmm7, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm8
	movl	440(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm9, %xmm8
	movsd	344(%rdi), %xmm9
	movapd	%xmm9, %xmm7
	mulsd	%xmm2, %xmm7
	cvttsd2siq	%xmm7, %rdx
	movsd	400(%rdi), %xmm7
	movsd	%xmm7, 448(%rdi)
	je	.L1789
	jle	.L5918
	cmpl	$3, %eax
	je	.L1792
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1788
	movapd	%xmm4, %xmm7
	movq	$0, 400(%rdi)
.L1788:
	movl	336(%rdi), %edx
	mulsd	%xmm3, %xmm8
	movsd	%xmm7, 392(%rdi)
	mulsd	472(%rdi), %xmm7
	movl	%edx, %eax
	addl	340(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm9
	movl	%edx, 336(%rdi)
	addsd	%xmm9, %xmm8
	cvttsd2siq	%xmm8, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm7
	mulsd	%xmm6, %xmm7
	addsd	%xmm10, %xmm7
	jmp	.L5791
	.p2align 4,,10
	.p2align 3
.L547:
	movsd	184(%rdi), %xmm3
	movl	280(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	240(%rdi), %xmm10
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm10, 288(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L1659
	jle	.L5919
	cmpl	$3, %eax
	je	.L1662
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L5052
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 240(%rdi)
	movapd	%xmm4, %xmm10
.L1658:
	movl	176(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm10, 232(%rdi)
	mulsd	%xmm3, %xmm1
	movl	%edx, %eax
	addl	180(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 176(%rdi)
	addsd	%xmm11, %xmm1
	cvttsd2siq	%xmm1, %rax
	movsd	312(%rdi), %xmm1
	mulsd	%xmm10, %xmm1
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	920(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm1
	movsd	824(%rdi), %xmm0
	movapd	%xmm0, %xmm10
	mulsd	%xmm2, %xmm10
	cvttsd2siq	%xmm10, %rdx
	movsd	880(%rdi), %xmm10
	movsd	%xmm10, 928(%rdi)
	je	.L1672
	jle	.L5920
	cmpl	$3, %eax
	je	.L1675
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1671
	movapd	%xmm4, %xmm10
	movq	$0, 880(%rdi)
.L1671:
	movl	816(%rdi), %edx
	movsd	%xmm10, 872(%rdi)
	mulsd	952(%rdi), %xmm10
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm0
	movl	%edx, 816(%rdi)
	addsd	%xmm4, %xmm0
	cvttsd2siq	%xmm0, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm10
	movl	760(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm10
	movsd	664(%rdi), %xmm8
	movapd	%xmm8, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2siq	%xmm0, %rdx
	movsd	720(%rdi), %xmm0
	movsd	%xmm0, 768(%rdi)
	je	.L1685
	jle	.L5921
	cmpl	$3, %eax
	je	.L1688
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1684
	movapd	%xmm4, %xmm0
	movq	$0, 720(%rdi)
.L1684:
	movl	656(%rdi), %edx
	movsd	%xmm0, 712(%rdi)
	mulsd	792(%rdi), %xmm0
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm8
	movl	%edx, 656(%rdi)
	addsd	%xmm4, %xmm8
	cvttsd2siq	%xmm8, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	movl	600(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm7, %xmm0
	movsd	504(%rdi), %xmm7
	movapd	%xmm7, %xmm8
	addsd	%xmm10, %xmm0
	mulsd	%xmm2, %xmm8
	cvttsd2siq	%xmm8, %rdx
	movsd	560(%rdi), %xmm8
	movsd	%xmm8, 608(%rdi)
	je	.L1698
	jle	.L5922
	cmpl	$3, %eax
	je	.L1701
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1697
	movapd	%xmm4, %xmm8
	movq	$0, 560(%rdi)
.L1697:
	movl	496(%rdi), %edx
	mulsd	%xmm3, %xmm0
	movsd	%xmm8, 552(%rdi)
	mulsd	632(%rdi), %xmm8
	movl	%edx, %eax
	addl	500(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm7
	movl	%edx, 496(%rdi)
	addsd	%xmm7, %xmm0
	cvttsd2siq	%xmm0, %rax
	movsd	24(%rdi), %xmm0
	movapd	%xmm0, %xmm7
	mulsd	%xmm2, %xmm7
	cvttsd2siq	%xmm7, %rdx
	movsd	80(%rdi), %xmm7
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm8
	movl	120(%rdi), %eax
	movsd	%xmm7, 128(%rdi)
	cmpl	$1, %eax
	mulsd	%xmm9, %xmm8
	je	.L1711
	jle	.L5923
	cmpl	$3, %eax
	je	.L1714
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1710
	movapd	%xmm4, %xmm7
	movq	$0, 80(%rdi)
.L1710:
	movl	16(%rdi), %edx
	movapd	%xmm1, %xmm0
	movsd	%xmm7, 72(%rdi)
	mulsd	%xmm3, %xmm0
	movl	%edx, %eax
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm9
	addsd	%xmm9, %xmm0
	cvttsd2siq	%xmm0, %rax
.L5788:
	mulsd	152(%rdi), %xmm7
	andl	$4095, %eax
	addl	20(%rdi), %edx
	movl	%edx, 16(%rdi)
	mulsd	waveform(,%rax,8), %xmm7
	mulsd	%xmm5, %xmm7
.L5787:
	movsd	344(%rdi), %xmm5
	movl	440(%rdi), %eax
	movsd	400(%rdi), %xmm0
	mulsd	%xmm5, %xmm2
	cmpl	$1, %eax
	movsd	%xmm0, 448(%rdi)
	cvttsd2siq	%xmm2, %rdx
	je	.L1724
	jle	.L5924
	cmpl	$3, %eax
	je	.L1727
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1723
	movapd	%xmm4, %xmm0
	movq	$0, 400(%rdi)
.L1723:
	movl	336(%rdi), %edx
	mulsd	%xmm8, %xmm3
	movsd	%xmm0, 392(%rdi)
	mulsd	472(%rdi), %xmm0
	movsd	%xmm1, 1272(%rdi)
	movl	%edx, %eax
	addl	340(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm2
	movl	%edx, 336(%rdi)
	addsd	%xmm2, %xmm3
	cvttsd2siq	%xmm3, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	mulsd	%xmm6, %xmm0
	addsd	%xmm7, %xmm0
	mulsd	.LC6(%rip), %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L546:
	movsd	184(%rdi), %xmm3
	movl	280(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	240(%rdi), %xmm10
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm10, 288(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L1581
	jle	.L5925
	cmpl	$3, %eax
	je	.L1584
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L5028
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 240(%rdi)
	movapd	%xmm4, %xmm10
.L1580:
	movl	176(%rdi), %edx
	movsd	%xmm10, 232(%rdi)
	mulsd	312(%rdi), %xmm10
	movl	%edx, %eax
	addl	180(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm3
	movl	%edx, 176(%rdi)
	addsd	%xmm4, %xmm3
	cvttsd2siq	%xmm3, %rax
	movsd	824(%rdi), %xmm3
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm10
	movl	920(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm10
	movapd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2siq	%xmm0, %rdx
	movsd	880(%rdi), %xmm0
	movsd	%xmm0, 928(%rdi)
	je	.L1594
	jle	.L5926
	cmpl	$3, %eax
	je	.L1597
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1593
	movapd	%xmm4, %xmm0
	movq	$0, 880(%rdi)
.L1593:
	movl	816(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm0, 872(%rdi)
	mulsd	%xmm3, %xmm1
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 816(%rdi)
	addsd	%xmm11, %xmm1
	cvttsd2siq	%xmm1, %rax
	movsd	952(%rdi), %xmm1
	mulsd	%xmm0, %xmm1
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	760(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm1
	movsd	664(%rdi), %xmm8
	movapd	%xmm8, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2siq	%xmm0, %rdx
	movsd	720(%rdi), %xmm0
	movsd	%xmm0, 768(%rdi)
	je	.L1607
	jle	.L5927
	cmpl	$3, %eax
	je	.L1610
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1606
	movapd	%xmm4, %xmm0
	movq	$0, 720(%rdi)
.L1606:
	movl	656(%rdi), %edx
	movsd	%xmm0, 712(%rdi)
	mulsd	792(%rdi), %xmm0
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm8
	movl	%edx, 656(%rdi)
	addsd	%xmm4, %xmm8
	cvttsd2siq	%xmm8, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	movl	600(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm7, %xmm0
	movsd	504(%rdi), %xmm7
	movapd	%xmm7, %xmm8
	addsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm8
	cvttsd2siq	%xmm8, %rdx
	movsd	560(%rdi), %xmm8
	movsd	%xmm8, 608(%rdi)
	je	.L1620
	jle	.L5928
	cmpl	$3, %eax
	je	.L1623
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1619
	movapd	%xmm4, %xmm8
	movq	$0, 560(%rdi)
.L1619:
	movl	496(%rdi), %edx
	mulsd	%xmm3, %xmm0
	movsd	%xmm8, 552(%rdi)
	mulsd	632(%rdi), %xmm8
	movl	%edx, %eax
	addl	500(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm7
	movl	%edx, 496(%rdi)
	addsd	%xmm7, %xmm0
	cvttsd2siq	%xmm0, %rax
	movsd	24(%rdi), %xmm0
	movapd	%xmm0, %xmm7
	mulsd	%xmm2, %xmm7
	cvttsd2siq	%xmm7, %rdx
	movsd	80(%rdi), %xmm7
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm8
	movl	120(%rdi), %eax
	movsd	%xmm7, 128(%rdi)
	cmpl	$1, %eax
	mulsd	%xmm9, %xmm8
	je	.L1633
	jle	.L5929
	cmpl	$3, %eax
	je	.L1636
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1632
	movapd	%xmm4, %xmm7
	movq	$0, 80(%rdi)
.L1632:
	movl	16(%rdi), %edx
	mulsd	%xmm3, %xmm10
	movsd	%xmm7, 72(%rdi)
	movl	%edx, %eax
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm10
	cvttsd2siq	%xmm10, %rax
	jmp	.L5788
	.p2align 4,,10
	.p2align 3
.L545:
	movsd	184(%rdi), %xmm3
	movl	280(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	240(%rdi), %xmm10
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm10, 288(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L1503
	jle	.L5930
	cmpl	$3, %eax
	je	.L1506
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L5004
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 240(%rdi)
	movapd	%xmm4, %xmm10
.L1502:
	movl	176(%rdi), %edx
	movsd	%xmm10, 232(%rdi)
	mulsd	312(%rdi), %xmm10
	movl	%edx, %eax
	addl	180(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm3
	movl	%edx, 176(%rdi)
	addsd	%xmm4, %xmm3
	cvttsd2siq	%xmm3, %rax
	movsd	824(%rdi), %xmm3
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm10
	movl	920(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm10
	movapd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2siq	%xmm0, %rdx
	movsd	880(%rdi), %xmm0
	movsd	%xmm0, 928(%rdi)
	je	.L1516
	jle	.L5931
	cmpl	$3, %eax
	je	.L1519
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1515
	movapd	%xmm4, %xmm0
	movq	$0, 880(%rdi)
.L1515:
	movl	816(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm0, 872(%rdi)
	mulsd	%xmm3, %xmm1
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 816(%rdi)
	addsd	%xmm11, %xmm1
	cvttsd2siq	%xmm1, %rax
	movsd	952(%rdi), %xmm1
	mulsd	%xmm0, %xmm1
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	760(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm1
	movsd	664(%rdi), %xmm8
	movapd	%xmm8, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2siq	%xmm0, %rdx
	movsd	720(%rdi), %xmm0
	movsd	%xmm0, 768(%rdi)
	je	.L1529
	jle	.L5932
	cmpl	$3, %eax
	je	.L1532
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1528
	movapd	%xmm4, %xmm0
	movq	$0, 720(%rdi)
.L1528:
	movl	656(%rdi), %edx
	movsd	%xmm0, 712(%rdi)
	mulsd	792(%rdi), %xmm0
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm8
	movl	%edx, 656(%rdi)
	addsd	%xmm4, %xmm8
	cvttsd2siq	%xmm8, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	movl	600(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm7, %xmm0
	movsd	504(%rdi), %xmm7
	movapd	%xmm7, %xmm8
	mulsd	%xmm2, %xmm8
	cvttsd2siq	%xmm8, %rdx
	movsd	560(%rdi), %xmm8
	movsd	%xmm8, 608(%rdi)
	je	.L1542
	jle	.L5933
	cmpl	$3, %eax
	je	.L1545
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1541
	movapd	%xmm4, %xmm8
	movq	$0, 560(%rdi)
.L1541:
	movl	496(%rdi), %edx
	movsd	%xmm8, 552(%rdi)
	mulsd	632(%rdi), %xmm8
	movl	%edx, %eax
	addl	500(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm7
	movl	%edx, 496(%rdi)
	addsd	%xmm4, %xmm7
	cvttsd2siq	%xmm7, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm8
	movl	120(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm9, %xmm8
	movsd	24(%rdi), %xmm9
	movapd	%xmm9, %xmm7
	mulsd	%xmm2, %xmm7
	cvttsd2siq	%xmm7, %rdx
	movsd	80(%rdi), %xmm7
	movsd	%xmm7, 128(%rdi)
	je	.L1555
	jle	.L5934
	cmpl	$3, %eax
	je	.L1558
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1554
	movapd	%xmm4, %xmm7
	movq	$0, 80(%rdi)
.L1554:
	movl	16(%rdi), %edx
	mulsd	%xmm3, %xmm10
	movsd	%xmm7, 72(%rdi)
	mulsd	152(%rdi), %xmm7
	addsd	%xmm0, %xmm8
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm9
	addsd	%xmm1, %xmm8
	movl	%edx, 16(%rdi)
	addsd	%xmm9, %xmm10
	cvttsd2siq	%xmm10, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm7
	mulsd	%xmm5, %xmm7
	jmp	.L5787
	.p2align 4,,10
	.p2align 3
.L544:
	movsd	184(%rdi), %xmm3
	movl	280(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	240(%rdi), %xmm10
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm10, 288(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L1425
	jle	.L5935
	cmpl	$3, %eax
	je	.L1428
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L4980
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 240(%rdi)
	movapd	%xmm4, %xmm10
.L1424:
	movl	176(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm10, 232(%rdi)
	mulsd	%xmm3, %xmm1
	movl	%edx, %eax
	addl	180(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 176(%rdi)
	addsd	%xmm11, %xmm1
	cvttsd2siq	%xmm1, %rax
	movsd	312(%rdi), %xmm1
	mulsd	%xmm10, %xmm1
	movsd	824(%rdi), %xmm10
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	920(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm1
	movapd	%xmm10, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2siq	%xmm0, %rdx
	movsd	880(%rdi), %xmm0
	movsd	%xmm0, 928(%rdi)
	je	.L1438
	jle	.L5936
	cmpl	$3, %eax
	je	.L1441
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1437
	movapd	%xmm4, %xmm0
	movq	$0, 880(%rdi)
.L1437:
	movl	816(%rdi), %edx
	movsd	%xmm0, 872(%rdi)
	mulsd	952(%rdi), %xmm0
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm10
	movl	%edx, 816(%rdi)
	addsd	%xmm4, %xmm10
	cvttsd2siq	%xmm10, %rax
	movsd	664(%rdi), %xmm10
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	movl	760(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm0
	movapd	%xmm10, %xmm8
	mulsd	%xmm2, %xmm8
	cvttsd2siq	%xmm8, %rdx
	movsd	720(%rdi), %xmm8
	movsd	%xmm8, 768(%rdi)
	je	.L1451
	jle	.L5937
	cmpl	$3, %eax
	je	.L1454
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1450
	movapd	%xmm4, %xmm8
	movq	$0, 720(%rdi)
.L1450:
	movl	656(%rdi), %edx
	movsd	%xmm8, 712(%rdi)
	mulsd	792(%rdi), %xmm8
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm10
	movl	%edx, 656(%rdi)
	addsd	%xmm4, %xmm10
	cvttsd2siq	%xmm10, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm8
	movl	600(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm7, %xmm8
	movsd	504(%rdi), %xmm7
	movapd	%xmm7, %xmm10
	mulsd	%xmm2, %xmm10
	cvttsd2siq	%xmm10, %rdx
	movsd	560(%rdi), %xmm10
	movsd	%xmm10, 608(%rdi)
	je	.L1464
	jle	.L5938
	cmpl	$3, %eax
	je	.L1467
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1463
	movapd	%xmm4, %xmm10
	movq	$0, 560(%rdi)
.L1463:
	movl	496(%rdi), %edx
	movsd	%xmm10, 552(%rdi)
	mulsd	632(%rdi), %xmm10
	movl	%edx, %eax
	addl	500(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm7
	movl	%edx, 496(%rdi)
	addsd	%xmm4, %xmm7
	cvttsd2siq	%xmm7, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm10
	movl	120(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm9, %xmm10
	movsd	24(%rdi), %xmm9
	movapd	%xmm9, %xmm7
	mulsd	%xmm2, %xmm7
	cvttsd2siq	%xmm7, %rdx
	movsd	80(%rdi), %xmm7
	movsd	%xmm7, 128(%rdi)
	je	.L1477
	jle	.L5939
	cmpl	$3, %eax
	je	.L1480
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1476
	movapd	%xmm4, %xmm7
	movq	$0, 80(%rdi)
.L1476:
	movl	16(%rdi), %edx
	movapd	%xmm1, %xmm9
	movsd	%xmm7, 72(%rdi)
	mulsd	152(%rdi), %xmm7
	addsd	%xmm10, %xmm8
	mulsd	%xmm3, %xmm9
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	addsd	%xmm0, %xmm8
	movl	%edx, 16(%rdi)
	addsd	%xmm11, %xmm9
	cvttsd2siq	%xmm9, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm7
	mulsd	%xmm5, %xmm7
	jmp	.L5787
	.p2align 4,,10
	.p2align 3
.L543:
	movsd	344(%rdi), %xmm3
	movl	440(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	400(%rdi), %xmm11
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm11, 448(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L1347
	jle	.L5940
	cmpl	$3, %eax
	je	.L1350
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L4956
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 400(%rdi)
	movapd	%xmm4, %xmm11
.L1346:
	movl	336(%rdi), %edx
	movsd	%xmm11, 392(%rdi)
	mulsd	472(%rdi), %xmm11
	movsd	240(%rdi), %xmm10
	movl	%edx, %eax
	addl	340(%rdi), %edx
	movsd	%xmm10, 288(%rdi)
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm3
	movl	%edx, 336(%rdi)
	addsd	%xmm4, %xmm3
	cvttsd2siq	%xmm3, %rax
	movsd	184(%rdi), %xmm3
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm11
	movl	280(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm6, %xmm11
	movapd	%xmm3, %xmm6
	mulsd	%xmm2, %xmm6
	cvttsd2siq	%xmm6, %rdx
	je	.L1360
	jle	.L5941
	cmpl	$3, %eax
	je	.L1363
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1359
	movapd	%xmm4, %xmm10
	movq	$0, 240(%rdi)
.L1359:
	movl	176(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm10, 232(%rdi)
	mulsd	312(%rdi), %xmm10
	mulsd	%xmm3, %xmm11
	movl	%edx, %eax
	addl	180(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm6
	movl	%edx, 176(%rdi)
	addsd	%xmm6, %xmm11
	cvttsd2siq	%xmm11, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm10
	movl	120(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm10
	movsd	24(%rdi), %xmm0
	movapd	%xmm0, %xmm6
	mulsd	%xmm2, %xmm6
	cvttsd2siq	%xmm6, %rdx
	movsd	80(%rdi), %xmm6
	movsd	%xmm6, 128(%rdi)
	je	.L1373
	jle	.L5942
	cmpl	$3, %eax
	je	.L1376
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1372
	movapd	%xmm4, %xmm6
	movq	$0, 80(%rdi)
.L1372:
	movl	16(%rdi), %edx
	mulsd	%xmm3, %xmm10
	movsd	%xmm6, 72(%rdi)
	mulsd	152(%rdi), %xmm6
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm0
	movl	%edx, 16(%rdi)
	addsd	%xmm0, %xmm10
	cvttsd2siq	%xmm10, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm6
	movl	920(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm5, %xmm6
	movsd	824(%rdi), %xmm5
	movapd	%xmm5, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2siq	%xmm0, %rdx
	movsd	880(%rdi), %xmm0
	movsd	%xmm0, 928(%rdi)
	je	.L1386
	jle	.L5943
	cmpl	$3, %eax
	je	.L1389
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1385
	movapd	%xmm4, %xmm0
	movq	$0, 880(%rdi)
.L1385:
	movl	816(%rdi), %edx
	mulsd	%xmm3, %xmm1
	movsd	%xmm0, 872(%rdi)
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm5
	movl	%edx, 816(%rdi)
	addsd	%xmm5, %xmm1
	cvttsd2siq	%xmm1, %rax
	movsd	952(%rdi), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	664(%rdi), %xmm0
	movapd	%xmm0, %xmm5
	mulsd	%xmm2, %xmm5
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	760(%rdi), %eax
	cvttsd2siq	%xmm5, %rdx
	movsd	720(%rdi), %xmm5
	cmpl	$1, %eax
	movsd	%xmm5, 768(%rdi)
	mulsd	%xmm8, %xmm1
	je	.L1399
	jle	.L5944
	cmpl	$3, %eax
	je	.L1402
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1398
	movapd	%xmm4, %xmm5
	movq	$0, 720(%rdi)
.L1398:
	movl	656(%rdi), %edx
	movsd	%xmm5, 712(%rdi)
	mulsd	792(%rdi), %xmm5
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm0
	movl	%edx, 656(%rdi)
	addsd	%xmm4, %xmm0
	cvttsd2siq	%xmm0, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm5
	mulsd	%xmm7, %xmm5
	addsd	%xmm1, %xmm5
.L5782:
	movsd	504(%rdi), %xmm7
	movl	600(%rdi), %eax
	movsd	560(%rdi), %xmm0
	mulsd	%xmm7, %xmm2
	cmpl	$1, %eax
	movsd	%xmm0, 608(%rdi)
	cvttsd2siq	%xmm2, %rdx
	je	.L1412
	jle	.L5945
	cmpl	$3, %eax
	je	.L1415
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1411
	movapd	%xmm4, %xmm0
	movq	$0, 560(%rdi)
.L1411:
	movl	496(%rdi), %edx
	mulsd	%xmm5, %xmm3
	movsd	%xmm0, 552(%rdi)
	mulsd	632(%rdi), %xmm0
	movl	%edx, %eax
	addl	500(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm2
	movl	%edx, 496(%rdi)
	addsd	%xmm2, %xmm3
	cvttsd2siq	%xmm3, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	mulsd	%xmm9, %xmm0
	addsd	%xmm6, %xmm0
	mulsd	.LC6(%rip), %xmm0
	jmp	.L531
	.p2align 4,,10
	.p2align 3
.L542:
	movsd	344(%rdi), %xmm3
	movl	440(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	400(%rdi), %xmm10
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm10, 448(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L1269
	jle	.L5946
	cmpl	$3, %eax
	je	.L1272
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L4932
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 400(%rdi)
	movapd	%xmm4, %xmm10
.L1268:
	movl	336(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm10, 392(%rdi)
	mulsd	%xmm3, %xmm1
	movl	%edx, %eax
	addl	340(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 336(%rdi)
	addsd	%xmm11, %xmm1
	cvttsd2siq	%xmm1, %rax
	movsd	472(%rdi), %xmm1
	mulsd	%xmm10, %xmm1
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	280(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm6, %xmm1
	movsd	184(%rdi), %xmm6
	movapd	%xmm6, %xmm10
	mulsd	%xmm2, %xmm10
	cvttsd2siq	%xmm10, %rdx
	movsd	240(%rdi), %xmm10
	movsd	%xmm10, 288(%rdi)
	je	.L1282
	jle	.L5947
	cmpl	$3, %eax
	je	.L1285
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1281
	movapd	%xmm4, %xmm10
	movq	$0, 240(%rdi)
.L1281:
	movl	176(%rdi), %edx
	movapd	%xmm1, %xmm6
	movsd	%xmm10, 232(%rdi)
	mulsd	312(%rdi), %xmm10
	mulsd	%xmm3, %xmm6
	movl	%edx, %eax
	addl	180(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 176(%rdi)
	addsd	%xmm11, %xmm6
	cvttsd2siq	%xmm6, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm10
	movl	120(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm10
	movsd	24(%rdi), %xmm0
	movapd	%xmm0, %xmm6
	mulsd	%xmm2, %xmm6
	cvttsd2siq	%xmm6, %rdx
	movsd	80(%rdi), %xmm6
	movsd	%xmm6, 128(%rdi)
	je	.L1295
	jle	.L5948
	cmpl	$3, %eax
	je	.L1298
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1294
	movapd	%xmm4, %xmm6
	movq	$0, 80(%rdi)
.L1294:
	movl	16(%rdi), %edx
	mulsd	%xmm3, %xmm10
	movsd	%xmm6, 72(%rdi)
	mulsd	152(%rdi), %xmm6
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm0
	movl	%edx, 16(%rdi)
	addsd	%xmm0, %xmm10
	cvttsd2siq	%xmm10, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm6
	movl	920(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm5, %xmm6
	movsd	824(%rdi), %xmm5
	movapd	%xmm5, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2siq	%xmm0, %rdx
	movsd	880(%rdi), %xmm0
	movsd	%xmm0, 928(%rdi)
	je	.L1308
	jle	.L5949
	cmpl	$3, %eax
	je	.L1311
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1307
	movapd	%xmm4, %xmm0
	movq	$0, 880(%rdi)
.L1307:
	movl	816(%rdi), %edx
	movsd	%xmm0, 872(%rdi)
	mulsd	952(%rdi), %xmm0
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm5
	movl	%edx, 816(%rdi)
	addsd	%xmm4, %xmm5
	cvttsd2siq	%xmm5, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	movl	760(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm0
	movsd	664(%rdi), %xmm8
	movapd	%xmm8, %xmm5
	mulsd	%xmm2, %xmm5
	cvttsd2siq	%xmm5, %rdx
	movsd	720(%rdi), %xmm5
	movsd	%xmm5, 768(%rdi)
	je	.L1321
	jle	.L5950
	cmpl	$3, %eax
	je	.L1324
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1320
	movapd	%xmm4, %xmm5
	movq	$0, 720(%rdi)
.L1320:
	movl	656(%rdi), %edx
	movsd	%xmm5, 712(%rdi)
	mulsd	792(%rdi), %xmm5
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm8
	movl	%edx, 656(%rdi)
	addsd	%xmm4, %xmm8
	cvttsd2siq	%xmm8, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm5
	mulsd	%xmm7, %xmm5
	addsd	%xmm0, %xmm5
	jmp	.L5782
	.p2align 4,,10
	.p2align 3
.L541:
	movsd	184(%rdi), %xmm3
	movl	280(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	240(%rdi), %xmm10
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm10, 288(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L1191
	jle	.L5951
	cmpl	$3, %eax
	je	.L1194
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L4908
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 240(%rdi)
	movapd	%xmm4, %xmm10
.L1190:
	movl	176(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm10, 232(%rdi)
	mulsd	%xmm3, %xmm1
	movl	%edx, %eax
	addl	180(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 176(%rdi)
	addsd	%xmm11, %xmm1
	cvttsd2siq	%xmm1, %rax
	movsd	312(%rdi), %xmm1
	mulsd	%xmm10, %xmm1
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	120(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm1
	movsd	24(%rdi), %xmm0
	movapd	%xmm0, %xmm10
	mulsd	%xmm2, %xmm10
	cvttsd2siq	%xmm10, %rdx
	movsd	80(%rdi), %xmm10
	movsd	%xmm10, 128(%rdi)
	je	.L1204
	jle	.L5952
	cmpl	$3, %eax
	je	.L1207
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1203
	movapd	%xmm4, %xmm10
	movq	$0, 80(%rdi)
.L1203:
	movl	16(%rdi), %edx
	movapd	%xmm1, %xmm0
	movsd	%xmm10, 72(%rdi)
	mulsd	152(%rdi), %xmm10
	mulsd	%xmm3, %xmm0
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 16(%rdi)
	addsd	%xmm11, %xmm0
	cvttsd2siq	%xmm0, %rax
	movsd	824(%rdi), %xmm0
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm10
	movl	920(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm5, %xmm10
	movapd	%xmm0, %xmm5
	mulsd	%xmm2, %xmm5
	cvttsd2siq	%xmm5, %rdx
	movsd	880(%rdi), %xmm5
	movsd	%xmm5, 928(%rdi)
	je	.L1217
	jle	.L5953
	cmpl	$3, %eax
	je	.L1220
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1216
	movapd	%xmm4, %xmm5
	movq	$0, 880(%rdi)
.L1216:
	movl	816(%rdi), %edx
	movsd	%xmm5, 872(%rdi)
	mulsd	952(%rdi), %xmm5
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm0
	movl	%edx, 816(%rdi)
	addsd	%xmm4, %xmm0
	cvttsd2siq	%xmm0, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm5
	movl	760(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm5
	movsd	664(%rdi), %xmm8
	movapd	%xmm8, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2siq	%xmm0, %rdx
	movsd	720(%rdi), %xmm0
	movsd	%xmm0, 768(%rdi)
	je	.L1230
	jle	.L5954
	cmpl	$3, %eax
	je	.L1233
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1229
	movapd	%xmm4, %xmm0
	movq	$0, 720(%rdi)
.L1229:
	movl	656(%rdi), %edx
	movsd	%xmm0, 712(%rdi)
.L5815:
	movl	%edx, %eax
	mulsd	%xmm3, %xmm5
	addl	660(%rdi), %edx
	shrl	$16, %eax
	mulsd	792(%rdi), %xmm0
	cvtsi2sdq	%rax, %xmm8
	movl	%edx, 656(%rdi)
	addsd	%xmm8, %xmm5
	cvttsd2siq	%xmm5, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	movl	600(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm7, %xmm0
	movsd	504(%rdi), %xmm7
	movapd	%xmm7, %xmm5
	mulsd	%xmm2, %xmm5
	cvttsd2siq	%xmm5, %rdx
	movsd	560(%rdi), %xmm5
	movsd	%xmm5, 608(%rdi)
	je	.L1243
	jle	.L5955
	cmpl	$3, %eax
	je	.L1246
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1242
	movapd	%xmm4, %xmm5
	movq	$0, 560(%rdi)
.L1242:
	movl	496(%rdi), %edx
	movsd	%xmm5, 552(%rdi)
	mulsd	632(%rdi), %xmm5
	movl	%edx, %eax
	addl	500(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm7
	movl	%edx, 496(%rdi)
	addsd	%xmm4, %xmm7
	cvttsd2siq	%xmm7, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm5
	mulsd	%xmm9, %xmm5
	addsd	%xmm0, %xmm5
.L5778:
	movsd	344(%rdi), %xmm7
	movl	440(%rdi), %eax
	movsd	400(%rdi), %xmm0
	mulsd	%xmm7, %xmm2
	cmpl	$1, %eax
	movsd	%xmm0, 448(%rdi)
	cvttsd2siq	%xmm2, %rdx
	je	.L1256
	jle	.L5956
	cmpl	$3, %eax
	je	.L1259
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1255
	movapd	%xmm4, %xmm0
	movq	$0, 400(%rdi)
.L1255:
	movl	336(%rdi), %edx
	mulsd	%xmm5, %xmm3
	movsd	%xmm0, 392(%rdi)
	mulsd	472(%rdi), %xmm0
	movsd	%xmm1, 1272(%rdi)
	movl	%edx, %eax
	addl	340(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm2
	movl	%edx, 336(%rdi)
	addsd	%xmm2, %xmm3
	cvttsd2siq	%xmm3, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	mulsd	%xmm6, %xmm0
	addsd	%xmm10, %xmm0
	mulsd	.LC6(%rip), %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L540:
	movsd	184(%rdi), %xmm3
	movl	280(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	240(%rdi), %xmm11
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm11, 288(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L1113
	jle	.L5957
	cmpl	$3, %eax
	je	.L1116
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L4884
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 240(%rdi)
	movapd	%xmm4, %xmm11
.L1112:
	movl	176(%rdi), %edx
	movsd	%xmm11, 232(%rdi)
	mulsd	312(%rdi), %xmm11
	movsd	80(%rdi), %xmm10
	movl	%edx, %eax
	addl	180(%rdi), %edx
	movsd	%xmm10, 128(%rdi)
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm3
	movl	%edx, 176(%rdi)
	addsd	%xmm4, %xmm3
	cvttsd2siq	%xmm3, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm11
	movl	120(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm11
	movsd	24(%rdi), %xmm0
	movapd	%xmm0, %xmm3
	mulsd	%xmm2, %xmm3
	cvttsd2siq	%xmm3, %rdx
	je	.L1126
	jle	.L5958
	cmpl	$3, %eax
	je	.L1129
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1125
	movapd	%xmm4, %xmm10
	movq	$0, 80(%rdi)
.L1125:
	movl	16(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm10, 72(%rdi)
	mulsd	152(%rdi), %xmm10
	mulsd	%xmm3, %xmm11
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm0
	movl	%edx, 16(%rdi)
	addsd	%xmm0, %xmm11
	movsd	824(%rdi), %xmm0
	cvttsd2siq	%xmm11, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm10
	movl	920(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm5, %xmm10
	movapd	%xmm0, %xmm5
	mulsd	%xmm2, %xmm5
	cvttsd2siq	%xmm5, %rdx
	movsd	880(%rdi), %xmm5
	movsd	%xmm5, 928(%rdi)
	je	.L1139
	jle	.L5959
	cmpl	$3, %eax
	je	.L1142
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1138
	movapd	%xmm4, %xmm5
	movq	$0, 880(%rdi)
.L1138:
	movl	816(%rdi), %edx
	movsd	%xmm5, 872(%rdi)
	mulsd	952(%rdi), %xmm5
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm0
	movl	%edx, 816(%rdi)
	addsd	%xmm4, %xmm0
	cvttsd2siq	%xmm0, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm5
	movl	760(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm5
	movsd	664(%rdi), %xmm8
	movapd	%xmm8, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2siq	%xmm0, %rdx
	movsd	720(%rdi), %xmm0
	movsd	%xmm0, 768(%rdi)
	je	.L1152
	jle	.L5960
	cmpl	$3, %eax
	je	.L1155
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1151
	movapd	%xmm4, %xmm0
	movq	$0, 720(%rdi)
.L1151:
	movl	656(%rdi), %edx
	mulsd	%xmm3, %xmm5
	movsd	%xmm0, 712(%rdi)
	mulsd	792(%rdi), %xmm0
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm8
	movl	%edx, 656(%rdi)
	addsd	%xmm8, %xmm5
	cvttsd2siq	%xmm5, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	movl	600(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm7, %xmm0
	movsd	504(%rdi), %xmm7
	movapd	%xmm7, %xmm5
	mulsd	%xmm2, %xmm5
	cvttsd2siq	%xmm5, %rdx
	movsd	560(%rdi), %xmm5
	movsd	%xmm5, 608(%rdi)
	je	.L1165
	jle	.L5961
	cmpl	$3, %eax
	je	.L1168
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1164
	movapd	%xmm4, %xmm5
	movq	$0, 560(%rdi)
.L1164:
	movl	496(%rdi), %edx
	mulsd	%xmm3, %xmm1
	movsd	%xmm5, 552(%rdi)
	movl	%edx, %eax
	addl	500(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm7
	movl	%edx, 496(%rdi)
	addsd	%xmm7, %xmm1
	cvttsd2siq	%xmm1, %rax
	movsd	632(%rdi), %xmm1
	mulsd	%xmm5, %xmm1
	movsd	344(%rdi), %xmm5
	mulsd	%xmm5, %xmm2
	cvttsd2siq	%xmm2, %rdx
	andl	$4095, %eax
	movsd	400(%rdi), %xmm2
	mulsd	waveform(,%rax,8), %xmm1
	movl	440(%rdi), %eax
	movsd	%xmm2, 448(%rdi)
	cmpl	$1, %eax
	mulsd	%xmm9, %xmm1
	addsd	%xmm1, %xmm0
	je	.L1178
	jle	.L5962
	cmpl	$3, %eax
	je	.L1181
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L3317
	movq	$0, 400(%rdi)
.L1177:
	movl	336(%rdi), %edx
	mulsd	%xmm0, %xmm3
	movsd	%xmm4, 392(%rdi)
	mulsd	472(%rdi), %xmm4
	movl	%edx, %eax
	addl	340(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm0
	movl	%edx, 336(%rdi)
	addsd	%xmm0, %xmm3
	cvttsd2siq	%xmm3, %rax
	andl	$4095, %eax
	movsd	waveform(,%rax,8), %xmm0
	mulsd	%xmm4, %xmm0
	mulsd	%xmm6, %xmm0
	addsd	%xmm10, %xmm0
	mulsd	.LC6(%rip), %xmm0
	jmp	.L531
	.p2align 4,,10
	.p2align 3
.L539:
	movsd	184(%rdi), %xmm3
	movl	280(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	240(%rdi), %xmm11
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm11, 288(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L1035
	jle	.L5963
	cmpl	$3, %eax
	je	.L1038
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L4860
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 240(%rdi)
	movapd	%xmm4, %xmm11
.L1034:
	movl	176(%rdi), %edx
	movsd	%xmm11, 232(%rdi)
	mulsd	312(%rdi), %xmm11
	movsd	80(%rdi), %xmm10
	movl	%edx, %eax
	addl	180(%rdi), %edx
	movsd	%xmm10, 128(%rdi)
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm3
	movl	%edx, 176(%rdi)
	addsd	%xmm4, %xmm3
	cvttsd2siq	%xmm3, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm11
	movl	120(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm11
	movsd	24(%rdi), %xmm0
	movapd	%xmm0, %xmm3
	mulsd	%xmm2, %xmm3
	cvttsd2siq	%xmm3, %rdx
	je	.L1048
	jle	.L5964
	cmpl	$3, %eax
	je	.L1051
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1047
	movapd	%xmm4, %xmm10
	movq	$0, 80(%rdi)
.L1047:
	movl	16(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm10, 72(%rdi)
	mulsd	152(%rdi), %xmm10
	mulsd	%xmm3, %xmm11
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm0
	movl	%edx, 16(%rdi)
	addsd	%xmm0, %xmm11
	cvttsd2siq	%xmm11, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm10
	movl	920(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm5, %xmm10
	movsd	824(%rdi), %xmm5
	movapd	%xmm5, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2siq	%xmm0, %rdx
	movsd	880(%rdi), %xmm0
	movsd	%xmm0, 928(%rdi)
	je	.L1061
	jle	.L5965
	cmpl	$3, %eax
	je	.L1064
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1060
	movapd	%xmm4, %xmm0
	movq	$0, 880(%rdi)
.L1060:
	movl	816(%rdi), %edx
	mulsd	%xmm3, %xmm1
	movsd	%xmm0, 872(%rdi)
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm5
	movl	%edx, 816(%rdi)
	addsd	%xmm5, %xmm1
	movsd	664(%rdi), %xmm5
	cvttsd2siq	%xmm1, %rax
	movsd	952(%rdi), %xmm1
	mulsd	%xmm0, %xmm1
	movapd	%xmm5, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2siq	%xmm0, %rdx
	movsd	720(%rdi), %xmm0
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	760(%rdi), %eax
	movsd	%xmm0, 768(%rdi)
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm1
	je	.L1074
	jle	.L5966
	cmpl	$3, %eax
	je	.L1077
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1073
	movapd	%xmm4, %xmm0
	movq	$0, 720(%rdi)
.L1073:
	movsd	%xmm0, 712(%rdi)
	movl	656(%rdi), %edx
	movapd	%xmm1, %xmm5
	jmp	.L5815
	.p2align 4,,10
	.p2align 3
.L538:
	movsd	184(%rdi), %xmm3
	movl	280(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	240(%rdi), %xmm11
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm11, 288(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L957
	jle	.L5967
	cmpl	$3, %eax
	je	.L960
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L4836
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 240(%rdi)
	movapd	%xmm4, %xmm11
.L956:
	movl	176(%rdi), %edx
	movsd	%xmm11, 232(%rdi)
	mulsd	312(%rdi), %xmm11
	movsd	80(%rdi), %xmm10
	movl	%edx, %eax
	addl	180(%rdi), %edx
	movsd	%xmm10, 128(%rdi)
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm3
	movl	%edx, 176(%rdi)
	addsd	%xmm4, %xmm3
	cvttsd2siq	%xmm3, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm11
	movl	120(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm11
	movsd	24(%rdi), %xmm0
	movapd	%xmm0, %xmm3
	mulsd	%xmm2, %xmm3
	cvttsd2siq	%xmm3, %rdx
	je	.L970
	jle	.L5968
	cmpl	$3, %eax
	je	.L973
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L969
	movapd	%xmm4, %xmm10
	movq	$0, 80(%rdi)
.L969:
	movl	16(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm10, 72(%rdi)
	mulsd	152(%rdi), %xmm10
	mulsd	%xmm3, %xmm11
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm0
	movl	%edx, 16(%rdi)
	addsd	%xmm0, %xmm11
	movsd	504(%rdi), %xmm0
	cvttsd2siq	%xmm11, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm10
	movl	600(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm5, %xmm10
	movapd	%xmm0, %xmm5
	mulsd	%xmm2, %xmm5
	cvttsd2siq	%xmm5, %rdx
	movsd	560(%rdi), %xmm5
	movsd	%xmm5, 608(%rdi)
	je	.L983
	jle	.L5969
	cmpl	$3, %eax
	je	.L986
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L982
	movapd	%xmm4, %xmm5
	movq	$0, 560(%rdi)
.L982:
	movl	496(%rdi), %edx
	movsd	%xmm5, 552(%rdi)
	mulsd	632(%rdi), %xmm5
	movl	%edx, %eax
	addl	500(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm0
	movl	%edx, 496(%rdi)
	addsd	%xmm4, %xmm0
	cvttsd2siq	%xmm0, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm5
	movl	440(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm9, %xmm5
	movsd	344(%rdi), %xmm9
	movapd	%xmm9, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2siq	%xmm0, %rdx
	movsd	400(%rdi), %xmm0
	movsd	%xmm0, 448(%rdi)
	je	.L996
	jle	.L5970
	cmpl	$3, %eax
	je	.L999
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L995
	movapd	%xmm4, %xmm0
	movq	$0, 400(%rdi)
.L995:
	movl	336(%rdi), %edx
	mulsd	%xmm3, %xmm5
	movsd	%xmm0, 392(%rdi)
	mulsd	472(%rdi), %xmm0
	movl	%edx, %eax
	addl	340(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm9
	movl	%edx, 336(%rdi)
	addsd	%xmm9, %xmm5
	cvttsd2siq	%xmm5, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	movl	920(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm6, %xmm0
	movsd	824(%rdi), %xmm6
	movapd	%xmm6, %xmm5
	mulsd	%xmm2, %xmm5
	cvttsd2siq	%xmm5, %rdx
	movsd	880(%rdi), %xmm5
	movsd	%xmm5, 928(%rdi)
	je	.L1009
	jle	.L5971
	cmpl	$3, %eax
	je	.L1012
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1008
	movapd	%xmm4, %xmm5
	movq	$0, 880(%rdi)
.L1008:
	movl	816(%rdi), %edx
	mulsd	%xmm3, %xmm1
	movsd	%xmm5, 872(%rdi)
	mulsd	952(%rdi), %xmm5
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm6
	movl	%edx, 816(%rdi)
	addsd	%xmm6, %xmm1
	movsd	664(%rdi), %xmm6
	mulsd	%xmm6, %xmm2
	cvttsd2siq	%xmm1, %rax
	movsd	720(%rdi), %xmm1
	cvttsd2siq	%xmm2, %rdx
	movsd	%xmm1, 768(%rdi)
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm5
	movl	760(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm5
	je	.L1022
	jle	.L5972
	cmpl	$3, %eax
	je	.L1025
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L1021
	movapd	%xmm4, %xmm1
	movq	$0, 720(%rdi)
.L1021:
	movl	656(%rdi), %edx
	mulsd	%xmm5, %xmm3
	movsd	%xmm1, 712(%rdi)
	mulsd	792(%rdi), %xmm1
	addsd	%xmm10, %xmm0
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm2
	movl	%edx, 656(%rdi)
	addsd	%xmm2, %xmm3
	cvttsd2siq	%xmm3, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	mulsd	%xmm7, %xmm1
	addsd	%xmm1, %xmm0
	divsd	.LC8(%rip), %xmm0
	jmp	.L531
	.p2align 4,,10
	.p2align 3
.L537:
	movsd	184(%rdi), %xmm3
	movl	280(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	240(%rdi), %xmm11
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm11, 288(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L879
	jle	.L5973
	cmpl	$3, %eax
	je	.L882
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L4812
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 240(%rdi)
	movapd	%xmm4, %xmm11
.L878:
	movl	176(%rdi), %edx
	movsd	%xmm11, 232(%rdi)
	mulsd	312(%rdi), %xmm11
	movsd	80(%rdi), %xmm10
	movl	%edx, %eax
	addl	180(%rdi), %edx
	movsd	%xmm10, 128(%rdi)
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm3
	movl	%edx, 176(%rdi)
	addsd	%xmm4, %xmm3
	cvttsd2siq	%xmm3, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm11
	movl	120(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm11
	movsd	24(%rdi), %xmm0
	movapd	%xmm0, %xmm3
	mulsd	%xmm2, %xmm3
	cvttsd2siq	%xmm3, %rdx
	je	.L892
	jle	.L5974
	cmpl	$3, %eax
	je	.L895
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L891
	movapd	%xmm4, %xmm10
	movq	$0, 80(%rdi)
.L891:
	movl	16(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm10, 72(%rdi)
	mulsd	152(%rdi), %xmm10
	mulsd	%xmm3, %xmm11
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm0
	movl	%edx, 16(%rdi)
	addsd	%xmm0, %xmm11
	movsd	504(%rdi), %xmm0
	cvttsd2siq	%xmm11, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm10
	movl	600(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm5, %xmm10
	movapd	%xmm0, %xmm5
	mulsd	%xmm2, %xmm5
	cvttsd2siq	%xmm5, %rdx
	movsd	560(%rdi), %xmm5
	movsd	%xmm5, 608(%rdi)
	je	.L905
	jle	.L5975
	cmpl	$3, %eax
	je	.L908
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L904
	movapd	%xmm4, %xmm5
	movq	$0, 560(%rdi)
.L904:
	movl	496(%rdi), %edx
	movsd	%xmm5, 552(%rdi)
	mulsd	632(%rdi), %xmm5
	movl	%edx, %eax
	addl	500(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm0
	movl	%edx, 496(%rdi)
	addsd	%xmm4, %xmm0
	cvttsd2siq	%xmm0, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm5
	movl	440(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm9, %xmm5
	movsd	344(%rdi), %xmm9
	movapd	%xmm9, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2siq	%xmm0, %rdx
	movsd	400(%rdi), %xmm0
	movsd	%xmm0, 448(%rdi)
	je	.L918
	jle	.L5976
	cmpl	$3, %eax
	je	.L921
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L917
	movapd	%xmm4, %xmm0
	movq	$0, 400(%rdi)
.L917:
	movl	336(%rdi), %edx
	mulsd	%xmm3, %xmm5
	movsd	%xmm0, 392(%rdi)
	mulsd	472(%rdi), %xmm0
	movl	%edx, %eax
	addl	340(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm9
	movl	%edx, 336(%rdi)
	addsd	%xmm9, %xmm5
	cvttsd2siq	%xmm5, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	movl	920(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm6, %xmm0
	movsd	824(%rdi), %xmm6
	movapd	%xmm6, %xmm5
	mulsd	%xmm2, %xmm5
	cvttsd2siq	%xmm5, %rdx
	movsd	880(%rdi), %xmm5
	movsd	%xmm5, 928(%rdi)
	je	.L931
	jle	.L5977
	cmpl	$3, %eax
	je	.L934
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L930
	movapd	%xmm4, %xmm5
	movq	$0, 880(%rdi)
.L930:
	movl	816(%rdi), %edx
	mulsd	%xmm3, %xmm1
	movsd	%xmm5, 872(%rdi)
	mulsd	952(%rdi), %xmm5
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm6
	movl	%edx, 816(%rdi)
	addsd	%xmm6, %xmm1
	cvttsd2siq	%xmm1, %rax
	andl	$4095, %eax
	movsd	waveform(,%rax,8), %xmm1
	movl	760(%rdi), %eax
	mulsd	%xmm5, %xmm1
	movsd	664(%rdi), %xmm5
	cmpl	$1, %eax
	mulsd	%xmm5, %xmm2
	mulsd	%xmm8, %xmm1
	cvttsd2siq	%xmm2, %rdx
	movsd	720(%rdi), %xmm2
	movsd	%xmm2, 768(%rdi)
	je	.L944
	jle	.L5978
	cmpl	$3, %eax
	je	.L947
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L3245
	movq	$0, 720(%rdi)
.L943:
	movl	656(%rdi), %edx
	mulsd	%xmm1, %xmm3
	movsd	%xmm4, 712(%rdi)
	mulsd	792(%rdi), %xmm4
	addsd	%xmm10, %xmm0
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm2
	movl	%edx, 656(%rdi)
	addsd	%xmm2, %xmm3
	cvttsd2siq	%xmm3, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm4
	mulsd	%xmm7, %xmm4
	addsd	%xmm4, %xmm0
	divsd	.LC8(%rip), %xmm0
	jmp	.L531
	.p2align 4,,10
	.p2align 3
.L536:
	movsd	344(%rdi), %xmm3
	movl	440(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	400(%rdi), %xmm10
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm10, 448(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L801
	jle	.L5979
	cmpl	$3, %eax
	je	.L804
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L4788
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 400(%rdi)
	movapd	%xmm4, %xmm10
.L800:
	movl	336(%rdi), %edx
	movsd	%xmm10, 392(%rdi)
	mulsd	472(%rdi), %xmm10
	movl	%edx, %eax
	addl	340(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm3
	movl	%edx, 336(%rdi)
	addsd	%xmm4, %xmm3
	cvttsd2siq	%xmm3, %rax
	movsd	184(%rdi), %xmm3
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm10
	movl	280(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm6, %xmm10
	movapd	%xmm3, %xmm6
	mulsd	%xmm2, %xmm6
	cvttsd2siq	%xmm6, %rdx
	movsd	240(%rdi), %xmm6
	movsd	%xmm6, 288(%rdi)
	je	.L814
	jle	.L5980
	cmpl	$3, %eax
	je	.L817
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L813
	movapd	%xmm4, %xmm6
	movq	$0, 240(%rdi)
.L813:
	movl	176(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm6, 232(%rdi)
	mulsd	312(%rdi), %xmm6
	mulsd	%xmm3, %xmm10
	movl	%edx, %eax
	addl	180(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 176(%rdi)
	addsd	%xmm11, %xmm10
	cvttsd2siq	%xmm10, %rax
	movsd	24(%rdi), %xmm10
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm6
	movl	120(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm6
	movapd	%xmm10, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2siq	%xmm0, %rdx
	movsd	80(%rdi), %xmm0
	movsd	%xmm0, 128(%rdi)
	je	.L827
	jle	.L5981
	cmpl	$3, %eax
	je	.L830
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L826
	movapd	%xmm4, %xmm0
	movq	$0, 80(%rdi)
.L826:
	movl	16(%rdi), %edx
	mulsd	%xmm3, %xmm6
	movsd	%xmm0, 72(%rdi)
	mulsd	152(%rdi), %xmm0
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm10
	movl	%edx, 16(%rdi)
	addsd	%xmm10, %xmm6
	cvttsd2siq	%xmm6, %rax
	movsd	824(%rdi), %xmm6
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	movl	920(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm5, %xmm0
	movapd	%xmm6, %xmm5
	mulsd	%xmm2, %xmm5
	cvttsd2siq	%xmm5, %rdx
	movsd	880(%rdi), %xmm5
	movsd	%xmm5, 928(%rdi)
	je	.L840
	jle	.L5982
	cmpl	$3, %eax
	je	.L843
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L839
	movapd	%xmm4, %xmm5
	movq	$0, 880(%rdi)
.L839:
	movl	816(%rdi), %edx
	mulsd	%xmm3, %xmm1
	movsd	%xmm5, 872(%rdi)
	mulsd	952(%rdi), %xmm5
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm6
	movl	%edx, 816(%rdi)
	addsd	%xmm6, %xmm1
	movsd	664(%rdi), %xmm6
	cvttsd2siq	%xmm1, %rax
	andl	$4095, %eax
	movsd	waveform(,%rax,8), %xmm1
	movl	760(%rdi), %eax
	mulsd	%xmm5, %xmm1
	movapd	%xmm6, %xmm5
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm5
	mulsd	%xmm8, %xmm1
	cvttsd2siq	%xmm5, %rdx
	movsd	720(%rdi), %xmm5
	movsd	%xmm5, 768(%rdi)
	je	.L853
	jle	.L5983
	cmpl	$3, %eax
	je	.L856
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L852
	movapd	%xmm4, %xmm5
	movq	$0, 720(%rdi)
.L852:
	movl	656(%rdi), %edx
	mulsd	%xmm3, %xmm1
	movsd	%xmm5, 712(%rdi)
	mulsd	792(%rdi), %xmm5
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm6
	movl	%edx, 656(%rdi)
	addsd	%xmm6, %xmm1
	movsd	504(%rdi), %xmm6
	mulsd	%xmm6, %xmm2
	cvttsd2siq	%xmm1, %rax
	movsd	560(%rdi), %xmm1
	cvttsd2siq	%xmm2, %rdx
	movsd	%xmm1, 608(%rdi)
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm5
	movl	600(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm7, %xmm5
	je	.L866
	jle	.L5984
	cmpl	$3, %eax
	je	.L869
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L865
	movapd	%xmm4, %xmm1
	movq	$0, 560(%rdi)
.L865:
	movl	496(%rdi), %edx
	mulsd	%xmm5, %xmm3
	movsd	%xmm1, 552(%rdi)
	mulsd	632(%rdi), %xmm1
	movl	%edx, %eax
	addl	500(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm2
	movl	%edx, 496(%rdi)
	addsd	%xmm2, %xmm3
	cvttsd2siq	%xmm3, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	mulsd	%xmm9, %xmm1
	addsd	%xmm1, %xmm0
	mulsd	.LC6(%rip), %xmm0
	jmp	.L531
	.p2align 4,,10
	.p2align 3
.L535:
	movsd	344(%rdi), %xmm3
	movl	440(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	400(%rdi), %xmm11
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm11, 448(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L723
	jle	.L5985
	cmpl	$3, %eax
	je	.L726
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L4764
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 400(%rdi)
	movapd	%xmm4, %xmm11
.L722:
	movl	336(%rdi), %edx
	movsd	%xmm11, 392(%rdi)
	mulsd	472(%rdi), %xmm11
	movsd	240(%rdi), %xmm10
	movl	%edx, %eax
	addl	340(%rdi), %edx
	movsd	%xmm10, 288(%rdi)
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm3
	movl	%edx, 336(%rdi)
	addsd	%xmm4, %xmm3
	cvttsd2siq	%xmm3, %rax
	movsd	184(%rdi), %xmm3
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm11
	movl	280(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm6, %xmm11
	movapd	%xmm3, %xmm6
	mulsd	%xmm2, %xmm6
	cvttsd2siq	%xmm6, %rdx
	je	.L736
	jle	.L5986
	cmpl	$3, %eax
	je	.L739
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L735
	movapd	%xmm4, %xmm10
	movq	$0, 240(%rdi)
.L735:
	movl	176(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm10, 232(%rdi)
	mulsd	312(%rdi), %xmm10
	mulsd	%xmm3, %xmm11
	movl	%edx, %eax
	addl	180(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm6
	movl	%edx, 176(%rdi)
	addsd	%xmm6, %xmm11
	cvttsd2siq	%xmm11, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm10
	movl	120(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm10
	movsd	24(%rdi), %xmm0
	movapd	%xmm0, %xmm6
	mulsd	%xmm2, %xmm6
	cvttsd2siq	%xmm6, %rdx
	movsd	80(%rdi), %xmm6
	movsd	%xmm6, 128(%rdi)
	je	.L749
	jle	.L5987
	cmpl	$3, %eax
	je	.L752
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L748
	movapd	%xmm4, %xmm6
	movq	$0, 80(%rdi)
.L748:
	movl	16(%rdi), %edx
	mulsd	%xmm3, %xmm10
	movsd	%xmm6, 72(%rdi)
	mulsd	152(%rdi), %xmm6
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm0
	movl	%edx, 16(%rdi)
	addsd	%xmm0, %xmm10
	cvttsd2siq	%xmm10, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm6
	movl	920(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm5, %xmm6
	movsd	824(%rdi), %xmm5
	movapd	%xmm5, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2siq	%xmm0, %rdx
	movsd	880(%rdi), %xmm0
	movsd	%xmm0, 928(%rdi)
	je	.L762
	jle	.L5988
	cmpl	$3, %eax
	je	.L765
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L761
	movapd	%xmm4, %xmm0
	movq	$0, 880(%rdi)
.L761:
	movl	816(%rdi), %edx
	mulsd	%xmm3, %xmm1
	movsd	%xmm0, 872(%rdi)
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm5
	movl	%edx, 816(%rdi)
	addsd	%xmm5, %xmm1
	cvttsd2siq	%xmm1, %rax
	movsd	952(%rdi), %xmm1
	mulsd	%xmm0, %xmm1
	movsd	664(%rdi), %xmm0
	movapd	%xmm0, %xmm5
	mulsd	%xmm2, %xmm5
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	760(%rdi), %eax
	cvttsd2siq	%xmm5, %rdx
	movsd	720(%rdi), %xmm5
	cmpl	$1, %eax
	movsd	%xmm5, 768(%rdi)
	mulsd	%xmm8, %xmm1
	je	.L775
	jle	.L5989
	cmpl	$3, %eax
	je	.L778
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L774
	movapd	%xmm4, %xmm5
	movq	$0, 720(%rdi)
.L774:
	movl	656(%rdi), %edx
	movapd	%xmm1, %xmm0
	movsd	%xmm5, 712(%rdi)
	mulsd	792(%rdi), %xmm5
	mulsd	%xmm3, %xmm0
	movl	%edx, %eax
	addl	660(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm8
	movl	%edx, 656(%rdi)
	addsd	%xmm8, %xmm0
	cvttsd2siq	%xmm0, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm5
	mulsd	%xmm7, %xmm5
	jmp	.L5782
	.p2align 4,,10
	.p2align 3
.L534:
	movsd	184(%rdi), %xmm3
	movl	280(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	240(%rdi), %xmm10
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm10, 288(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L645
	jle	.L5990
	cmpl	$3, %eax
	je	.L648
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L4740
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 240(%rdi)
	movapd	%xmm4, %xmm10
.L644:
	movl	176(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm10, 232(%rdi)
	mulsd	%xmm3, %xmm1
	movl	%edx, %eax
	addl	180(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 176(%rdi)
	addsd	%xmm11, %xmm1
	cvttsd2siq	%xmm1, %rax
	movsd	312(%rdi), %xmm1
	mulsd	%xmm10, %xmm1
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	120(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm1
	movsd	24(%rdi), %xmm0
	movapd	%xmm0, %xmm10
	mulsd	%xmm2, %xmm10
	cvttsd2siq	%xmm10, %rdx
	movsd	80(%rdi), %xmm10
	movsd	%xmm10, 128(%rdi)
	je	.L658
	jle	.L5991
	cmpl	$3, %eax
	je	.L661
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L657
	movapd	%xmm4, %xmm10
	movq	$0, 80(%rdi)
.L657:
	movl	16(%rdi), %edx
	movapd	%xmm1, %xmm0
	movsd	%xmm10, 72(%rdi)
	mulsd	152(%rdi), %xmm10
	mulsd	%xmm3, %xmm0
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm11
	movl	%edx, 16(%rdi)
	addsd	%xmm11, %xmm0
	cvttsd2siq	%xmm0, %rax
	movsd	824(%rdi), %xmm0
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm10
	movl	920(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm5, %xmm10
	movapd	%xmm0, %xmm5
	mulsd	%xmm2, %xmm5
	cvttsd2siq	%xmm5, %rdx
	movsd	880(%rdi), %xmm5
	movsd	%xmm5, 928(%rdi)
	je	.L671
	jle	.L5992
	cmpl	$3, %eax
	je	.L674
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L670
	movapd	%xmm4, %xmm5
	movq	$0, 880(%rdi)
.L670:
	movl	816(%rdi), %edx
	movsd	%xmm5, 872(%rdi)
	mulsd	952(%rdi), %xmm5
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm0
	movl	%edx, 816(%rdi)
	addsd	%xmm4, %xmm0
	cvttsd2siq	%xmm0, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm5
	movl	760(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm5
	movsd	664(%rdi), %xmm8
	movapd	%xmm8, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2siq	%xmm0, %rdx
	movsd	720(%rdi), %xmm0
	movsd	%xmm0, 768(%rdi)
	je	.L684
	jle	.L5993
	cmpl	$3, %eax
	je	.L687
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L683
	movapd	%xmm4, %xmm0
	movq	$0, 720(%rdi)
.L683:
	movl	656(%rdi), %edx
	movsd	%xmm0, 712(%rdi)
.L5818:
	movl	%edx, %eax
	mulsd	%xmm3, %xmm5
	addl	660(%rdi), %edx
	shrl	$16, %eax
	mulsd	792(%rdi), %xmm0
	cvtsi2sdq	%rax, %xmm8
	movl	%edx, 656(%rdi)
	addsd	%xmm8, %xmm5
	cvttsd2siq	%xmm5, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	movl	600(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm7, %xmm0
	movsd	504(%rdi), %xmm7
	movapd	%xmm7, %xmm5
	mulsd	%xmm2, %xmm5
	cvttsd2siq	%xmm5, %rdx
	movsd	560(%rdi), %xmm5
	movsd	%xmm5, 608(%rdi)
	je	.L697
	jle	.L5994
	cmpl	$3, %eax
	je	.L700
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L696
	movapd	%xmm4, %xmm5
	movq	$0, 560(%rdi)
.L696:
	movl	496(%rdi), %edx
	mulsd	%xmm3, %xmm0
	movsd	%xmm5, 552(%rdi)
	mulsd	632(%rdi), %xmm5
	movl	%edx, %eax
	addl	500(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm7
	movl	%edx, 496(%rdi)
	addsd	%xmm7, %xmm0
	cvttsd2siq	%xmm0, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm5
	mulsd	%xmm9, %xmm5
	jmp	.L5778
	.p2align 4,,10
	.p2align 3
.L532:
	movsd	184(%rdi), %xmm3
	movl	280(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm3, %xmm4
	movsd	240(%rdi), %xmm11
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm4
	movsd	%xmm11, 288(%rdi)
	cvttsd2siq	%xmm4, %rdx
	je	.L567
	jle	.L5995
	cmpl	$3, %eax
	je	.L570
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L4716
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 240(%rdi)
	movapd	%xmm4, %xmm11
.L566:
	movl	176(%rdi), %edx
	movsd	%xmm11, 232(%rdi)
	mulsd	312(%rdi), %xmm11
	movsd	80(%rdi), %xmm10
	movl	%edx, %eax
	addl	180(%rdi), %edx
	movsd	%xmm10, 128(%rdi)
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm3
	movl	%edx, 176(%rdi)
	addsd	%xmm4, %xmm3
	cvttsd2siq	%xmm3, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm11
	movl	120(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm0, %xmm11
	movsd	24(%rdi), %xmm0
	movapd	%xmm0, %xmm3
	mulsd	%xmm2, %xmm3
	cvttsd2siq	%xmm3, %rdx
	je	.L580
	jle	.L5996
	cmpl	$3, %eax
	je	.L583
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L579
	movapd	%xmm4, %xmm10
	movq	$0, 80(%rdi)
.L579:
	movl	16(%rdi), %edx
	movsd	.LC0(%rip), %xmm3
	movsd	%xmm10, 72(%rdi)
	mulsd	152(%rdi), %xmm10
	mulsd	%xmm3, %xmm11
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm0
	movl	%edx, 16(%rdi)
	addsd	%xmm0, %xmm11
	cvttsd2siq	%xmm11, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm10
	movl	920(%rdi), %eax
	cmpl	$1, %eax
	mulsd	%xmm5, %xmm10
	movsd	824(%rdi), %xmm5
	movapd	%xmm5, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2siq	%xmm0, %rdx
	movsd	880(%rdi), %xmm0
	movsd	%xmm0, 928(%rdi)
	je	.L593
	jle	.L5997
	cmpl	$3, %eax
	je	.L596
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L592
	movapd	%xmm4, %xmm0
	movq	$0, 880(%rdi)
.L592:
	movl	816(%rdi), %edx
	mulsd	%xmm3, %xmm1
	movsd	%xmm0, 872(%rdi)
	movl	%edx, %eax
	addl	820(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm5
	movl	%edx, 816(%rdi)
	addsd	%xmm5, %xmm1
	movsd	664(%rdi), %xmm5
	cvttsd2siq	%xmm1, %rax
	movsd	952(%rdi), %xmm1
	mulsd	%xmm0, %xmm1
	movapd	%xmm5, %xmm0
	mulsd	%xmm2, %xmm0
	cvttsd2siq	%xmm0, %rdx
	movsd	720(%rdi), %xmm0
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm1
	movl	760(%rdi), %eax
	movsd	%xmm0, 768(%rdi)
	cmpl	$1, %eax
	mulsd	%xmm8, %xmm1
	je	.L606
	jle	.L5998
	cmpl	$3, %eax
	je	.L609
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L605
	movapd	%xmm4, %xmm0
	movq	$0, 720(%rdi)
.L605:
	movsd	%xmm0, 712(%rdi)
	movl	656(%rdi), %edx
	movapd	%xmm1, %xmm5
	jmp	.L5818
	.p2align 4,,10
	.p2align 3
.L565:
	movsd	824(%rdi), %xmm0
	movl	920(%rdi), %eax
	movsd	.LC21(%rip), %xmm2
	movapd	%xmm0, %xmm3
	cmpl	$1, %eax
	mulsd	%xmm2, %xmm3
	cvttsd2siq	%xmm3, %rdx
	movsd	880(%rdi), %xmm3
	movsd	%xmm3, 928(%rdi)
	je	.L3061
	jle	.L5999
	cmpl	$3, %eax
	je	.L3064
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L5484
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 880(%rdi)
	movapd	%xmm4, %xmm3
.L3060:
	movsd	664(%rdi), %xmm0
	movl	820(%rdi), %eax
	movsd	%xmm3, 872(%rdi)
	addl	%eax, 816(%rdi)
	movapd	%xmm0, %xmm3
	movl	760(%rdi), %eax
	mulsd	%xmm2, %xmm3
	cmpl	$1, %eax
	cvttsd2siq	%xmm3, %rdx
	movsd	720(%rdi), %xmm3
	movsd	%xmm3, 768(%rdi)
	je	.L3072
	jle	.L6000
	cmpl	$3, %eax
	je	.L3075
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L3071
	movapd	%xmm4, %xmm3
	movq	$0, 720(%rdi)
.L3071:
	movsd	504(%rdi), %xmm0
	movl	660(%rdi), %eax
	movsd	%xmm3, 712(%rdi)
	addl	%eax, 656(%rdi)
	movl	600(%rdi), %eax
	movapd	%xmm0, %xmm3
	mulsd	%xmm2, %xmm3
	cmpl	$1, %eax
	cvttsd2siq	%xmm3, %rdx
	movsd	560(%rdi), %xmm3
	movsd	%xmm3, 608(%rdi)
	je	.L3083
	jle	.L6001
	cmpl	$3, %eax
	je	.L3086
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L3082
	movapd	%xmm4, %xmm3
	movq	$0, 560(%rdi)
.L3082:
	movsd	344(%rdi), %xmm0
	movl	500(%rdi), %eax
	movsd	%xmm3, 552(%rdi)
	addl	%eax, 496(%rdi)
	movl	440(%rdi), %eax
	movapd	%xmm0, %xmm3
	mulsd	%xmm2, %xmm3
	cmpl	$1, %eax
	cvttsd2siq	%xmm3, %rdx
	movsd	400(%rdi), %xmm3
	movsd	%xmm3, 448(%rdi)
	je	.L3094
	jle	.L6002
	cmpl	$3, %eax
	je	.L3097
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L3093
	movapd	%xmm4, %xmm3
	movq	$0, 400(%rdi)
.L3093:
	movsd	184(%rdi), %xmm0
	movl	340(%rdi), %eax
	movsd	%xmm3, 392(%rdi)
	addl	%eax, 336(%rdi)
	movl	280(%rdi), %eax
	movapd	%xmm0, %xmm3
	mulsd	%xmm2, %xmm3
	cmpl	$1, %eax
	cvttsd2siq	%xmm3, %rdx
	movsd	240(%rdi), %xmm3
	movsd	%xmm3, 288(%rdi)
	je	.L3105
	jle	.L6003
	cmpl	$3, %eax
	je	.L3108
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L3104
	movapd	%xmm4, %xmm3
	movq	$0, 240(%rdi)
.L3104:
	movsd	%xmm3, 232(%rdi)
	movl	180(%rdi), %eax
	addl	%eax, 176(%rdi)
	movsd	24(%rdi), %xmm3
	movl	120(%rdi), %eax
	movsd	80(%rdi), %xmm0
	mulsd	%xmm3, %xmm2
	cmpl	$1, %eax
	movsd	%xmm0, 128(%rdi)
	cvttsd2siq	%xmm2, %rdx
	je	.L3116
	jle	.L6004
	cmpl	$3, %eax
	je	.L3119
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L3115
	movapd	%xmm4, %xmm0
	movq	$0, 80(%rdi)
.L3115:
	movl	16(%rdi), %edx
	movsd	%xmm0, 72(%rdi)
	mulsd	152(%rdi), %xmm0
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm2
	movl	%edx, 16(%rdi)
	addsd	%xmm4, %xmm2
	cvttsd2siq	%xmm2, %rax
	andl	$4095, %eax
	mulsd	waveform(,%rax,8), %xmm0
	mulsd	%xmm5, %xmm0
	divsd	.LC3(%rip), %xmm0
	jmp	.L531
	.p2align 4,,10
	.p2align 3
.L5924:
	testl	%eax, %eax
	jne	.L1723
	addsd	408(%rdi), %xmm5
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 400(%rdi)
	ucomisd	.LC1(%rip), %xmm5
	movsd	%xmm5, 344(%rdi)
	jb	.L1723
	movl	$1, 440(%rdi)
	movq	$0, 344(%rdi)
	jmp	.L1723
	.p2align 4,,10
	.p2align 3
.L5956:
	testl	%eax, %eax
	jne	.L1255
	addsd	408(%rdi), %xmm7
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 400(%rdi)
	ucomisd	.LC1(%rip), %xmm7
	movsd	%xmm7, 344(%rdi)
	jb	.L1255
	movl	$1, 440(%rdi)
	movq	$0, 344(%rdi)
	jmp	.L1255
	.p2align 4,,10
	.p2align 3
.L5945:
	testl	%eax, %eax
	jne	.L1411
	addsd	568(%rdi), %xmm7
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm7
	movsd	%xmm7, 504(%rdi)
	jb	.L1411
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L1411
	.p2align 4,,10
	.p2align 3
.L1727:
	movsd	.LC1(%rip), %xmm2
	addsd	432(%rdi), %xmm5
	movl	%edx, %edx
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm2, %xmm5
	movsd	%xmm5, 344(%rdi)
	movsd	%xmm0, 400(%rdi)
	jb	.L1723
.L5594:
	movl	$4, 440(%rdi)
	jmp	.L1723
	.p2align 4,,10
	.p2align 3
.L1259:
	movsd	.LC1(%rip), %xmm2
	addsd	432(%rdi), %xmm7
	movl	%edx, %edx
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm2, %xmm7
	movsd	%xmm7, 344(%rdi)
	movsd	%xmm0, 400(%rdi)
	jb	.L1255
.L5558:
	movl	$4, 440(%rdi)
	jmp	.L1255
	.p2align 4,,10
	.p2align 3
.L1256:
	movsd	.LC1(%rip), %xmm2
	movl	%edx, %edx
	movsd	424(%rdi), %xmm4
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm4
	movsd	%xmm0, 400(%rdi)
	jbe	.L4926
	movl	$2, 440(%rdi)
	jmp	.L1255
	.p2align 4,,10
	.p2align 3
.L1724:
	movsd	.LC1(%rip), %xmm2
	movl	%edx, %edx
	movsd	424(%rdi), %xmm4
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm4
	movsd	%xmm0, 400(%rdi)
	jbe	.L5070
	movl	$2, 440(%rdi)
	jmp	.L1723
	.p2align 4,,10
	.p2align 3
.L1415:
	movsd	.LC1(%rip), %xmm2
	addsd	592(%rdi), %xmm7
	movl	%edx, %edx
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm2, %xmm7
	movsd	%xmm7, 504(%rdi)
	movsd	%xmm0, 560(%rdi)
	jb	.L1411
.L5570:
	movl	$4, 600(%rdi)
	jmp	.L1411
	.p2align 4,,10
	.p2align 3
.L1412:
	movsd	.LC1(%rip), %xmm2
	movl	%edx, %edx
	movsd	584(%rdi), %xmm4
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm4
	movsd	%xmm0, 560(%rdi)
	jbe	.L4974
	movl	$2, 600(%rdi)
	jmp	.L1411
	.p2align 4,,10
	.p2align 3
.L5955:
	testl	%eax, %eax
	jne	.L1242
	addsd	568(%rdi), %xmm7
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm5
	movsd	%xmm5, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm7
	movsd	%xmm7, 504(%rdi)
	jb	.L1242
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L1242
	.p2align 4,,10
	.p2align 3
.L5854:
	testl	%eax, %eax
	jne	.L2657
	addsd	88(%rdi), %xmm6
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm6
	movsd	%xmm6, 24(%rdi)
	jb	.L2657
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L2657
	.p2align 4,,10
	.p2align 3
.L5994:
	testl	%eax, %eax
	jne	.L696
	addsd	568(%rdi), %xmm7
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm5
	movsd	%xmm5, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm7
	movsd	%xmm7, 504(%rdi)
	jb	.L696
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L696
	.p2align 4,,10
	.p2align 3
.L5913:
	testl	%eax, %eax
	jne	.L1879
	addsd	88(%rdi), %xmm6
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm6
	movsd	%xmm6, 24(%rdi)
	jb	.L1879
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L1879
	.p2align 4,,10
	.p2align 3
.L700:
	movsd	.LC1(%rip), %xmm8
	addsd	592(%rdi), %xmm7
	movl	%edx, %edx
	movapd	%xmm8, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm8, %xmm7
	movsd	%xmm7, 504(%rdi)
	movsd	%xmm5, 560(%rdi)
	jb	.L696
.L5515:
	movl	$4, 600(%rdi)
	jmp	.L696
	.p2align 4,,10
	.p2align 3
.L1880:
	movsd	.LC1(%rip), %xmm2
	movl	%edx, %edx
	movsd	104(%rdi), %xmm4
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm4
	movsd	%xmm0, 80(%rdi)
	jbe	.L5118
	movl	$2, 120(%rdi)
	jmp	.L1879
	.p2align 4,,10
	.p2align 3
.L1243:
	movsd	.LC1(%rip), %xmm8
	movl	%edx, %edx
	movsd	584(%rdi), %xmm11
	movapd	%xmm8, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm5, %xmm11
	movsd	%xmm5, 560(%rdi)
	jbe	.L4922
	movl	$2, 600(%rdi)
	jmp	.L1242
	.p2align 4,,10
	.p2align 3
.L697:
	movsd	.LC1(%rip), %xmm8
	movl	%edx, %edx
	movsd	584(%rdi), %xmm11
	movapd	%xmm8, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm5, %xmm11
	movsd	%xmm5, 560(%rdi)
	jbe	.L4754
	movl	$2, 600(%rdi)
	jmp	.L696
	.p2align 4,,10
	.p2align 3
.L2658:
	movsd	.LC1(%rip), %xmm2
	movl	%edx, %edx
	movsd	104(%rdi), %xmm8
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm8
	movsd	%xmm0, 80(%rdi)
	jbe	.L5358
	movl	$2, 120(%rdi)
	jmp	.L2657
	.p2align 4,,10
	.p2align 3
.L1246:
	movsd	.LC1(%rip), %xmm8
	addsd	592(%rdi), %xmm7
	movl	%edx, %edx
	movapd	%xmm8, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm8, %xmm7
	movsd	%xmm7, 504(%rdi)
	movsd	%xmm5, 560(%rdi)
	jb	.L1242
.L5557:
	movl	$4, 600(%rdi)
	jmp	.L1242
	.p2align 4,,10
	.p2align 3
.L1883:
	movsd	.LC1(%rip), %xmm2
	addsd	112(%rdi), %xmm6
	movl	%edx, %edx
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm2, %xmm6
	movsd	%xmm6, 24(%rdi)
	movsd	%xmm0, 80(%rdi)
	jb	.L1879
.L5606:
	movl	$4, 120(%rdi)
	jmp	.L1879
	.p2align 4,,10
	.p2align 3
.L2661:
	movsd	.LC1(%rip), %xmm2
	addsd	112(%rdi), %xmm6
	movl	%edx, %edx
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm2, %xmm6
	movsd	%xmm6, 24(%rdi)
	movsd	%xmm0, 80(%rdi)
	jb	.L2657
.L5666:
	movl	$4, 120(%rdi)
	jmp	.L2657
	.p2align 4,,10
	.p2align 3
.L5070:
	addsd	416(%rdi), %xmm5
	ucomisd	%xmm2, %xmm5
	movsd	%xmm5, 344(%rdi)
	jnb	.L5594
	jmp	.L1723
	.p2align 4,,10
	.p2align 3
.L4926:
	addsd	416(%rdi), %xmm7
	ucomisd	%xmm2, %xmm7
	movsd	%xmm7, 344(%rdi)
	jnb	.L5558
	jmp	.L1255
.L4714:
	addsd	256(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	jnb	.L5505
.L4716:
	xorpd	%xmm4, %xmm4
	jmp	.L566
.L4738:
	addsd	256(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	jnb	.L5511
.L4740:
	xorpd	%xmm4, %xmm4
	jmp	.L644
.L4762:
	addsd	416(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 344(%rdi)
	jnb	.L5517
.L4764:
	xorpd	%xmm4, %xmm4
	jmp	.L722
.L4786:
	addsd	416(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 344(%rdi)
	jnb	.L5523
.L4788:
	xorpd	%xmm4, %xmm4
	jmp	.L800
.L5050:
	addsd	256(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	jnb	.L5589
.L5052:
	xorpd	%xmm4, %xmm4
	jmp	.L1658
.L5074:
	addsd	256(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	jnb	.L5595
.L5076:
	xorpd	%xmm4, %xmm4
	jmp	.L1736
.L5002:
	addsd	256(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	jnb	.L5577
.L5004:
	xorpd	%xmm4, %xmm4
	jmp	.L1502
.L5026:
	addsd	256(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	jnb	.L5583
.L5028:
	xorpd	%xmm4, %xmm4
	jmp	.L1580
.L5098:
	addsd	256(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	jnb	.L5601
.L5100:
	xorpd	%xmm4, %xmm4
	jmp	.L1814
.L5122:
	addsd	256(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	jnb	.L5607
.L5124:
	xorpd	%xmm4, %xmm4
	jmp	.L1892
.L5146:
	addsd	896(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 824(%rdi)
	jnb	.L5613
.L5148:
	xorpd	%xmm4, %xmm4
	jmp	.L1968
.L4810:
	addsd	256(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	jnb	.L5529
.L4812:
	xorpd	%xmm4, %xmm4
	jmp	.L878
.L4834:
	addsd	256(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	jnb	.L5535
.L4836:
	xorpd	%xmm4, %xmm4
	jmp	.L956
.L4858:
	addsd	256(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	jnb	.L5541
.L4860:
	xorpd	%xmm4, %xmm4
	jmp	.L1034
.L4882:
	addsd	256(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	jnb	.L5547
.L4884:
	xorpd	%xmm4, %xmm4
	jmp	.L1112
.L5482:
	addsd	896(%rdi), %xmm0
	ucomisd	%xmm4, %xmm0
	movsd	%xmm0, 824(%rdi)
	jnb	.L5697
.L5484:
	xorpd	%xmm4, %xmm4
	jmp	.L3060
.L4954:
	addsd	416(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 344(%rdi)
	jnb	.L5565
.L4956:
	xorpd	%xmm4, %xmm4
	jmp	.L1346
.L4978:
	addsd	256(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	jnb	.L5571
.L4980:
	xorpd	%xmm4, %xmm4
	jmp	.L1424
.L4930:
	addsd	416(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 344(%rdi)
	jnb	.L5559
.L4932:
	xorpd	%xmm4, %xmm4
	jmp	.L1268
.L4906:
	addsd	256(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	jnb	.L5553
.L4908:
	xorpd	%xmm4, %xmm4
	jmp	.L1190
.L5458:
	addsd	896(%rdi), %xmm4
	ucomisd	%xmm10, %xmm4
	movsd	%xmm4, 824(%rdi)
	jnb	.L5691
.L5460:
	xorpd	%xmm4, %xmm4
	jmp	.L2982
.L5338:
	addsd	896(%rdi), %xmm4
	ucomisd	%xmm10, %xmm4
	movsd	%xmm4, 824(%rdi)
	jnb	.L5661
.L5340:
	xorpd	%xmm4, %xmm4
	jmp	.L2592
.L5362:
	addsd	896(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 824(%rdi)
	jnb	.L5667
.L5364:
	xorpd	%xmm4, %xmm4
	jmp	.L2670
.L5434:
	addsd	896(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 824(%rdi)
	jnb	.L5685
.L5436:
	xorpd	%xmm4, %xmm4
	jmp	.L2904
.L5386:
	addsd	896(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 824(%rdi)
	jnb	.L5673
.L5388:
	xorpd	%xmm4, %xmm4
	jmp	.L2748
.L5410:
	addsd	896(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 824(%rdi)
	jnb	.L5679
.L5412:
	xorpd	%xmm4, %xmm4
	jmp	.L2826
.L5170:
	addsd	896(%rdi), %xmm4
	ucomisd	%xmm10, %xmm4
	movsd	%xmm4, 824(%rdi)
	jnb	.L5619
.L5172:
	xorpd	%xmm4, %xmm4
	jmp	.L2046
.L5194:
	addsd	896(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 824(%rdi)
	jnb	.L5625
.L5196:
	xorpd	%xmm4, %xmm4
	jmp	.L2124
.L5218:
	addsd	896(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 824(%rdi)
	jnb	.L5631
.L5220:
	xorpd	%xmm4, %xmm4
	jmp	.L2202
.L5242:
	addsd	896(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 824(%rdi)
	jnb	.L5637
.L5244:
	xorpd	%xmm4, %xmm4
	jmp	.L2280
.L5266:
	addsd	896(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 824(%rdi)
	jnb	.L5643
.L5268:
	xorpd	%xmm4, %xmm4
	jmp	.L2358
.L5290:
	addsd	896(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 824(%rdi)
	jnb	.L5649
.L5292:
	xorpd	%xmm4, %xmm4
	jmp	.L2436
.L5314:
	addsd	896(%rdi), %xmm3
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 824(%rdi)
	jnb	.L5655
.L5316:
	xorpd	%xmm4, %xmm4
	jmp	.L2514
.L5990:
	testl	%eax, %eax
	jne	.L4740
	addsd	248(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 184(%rdi)
	jb	.L4740
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L644
.L5989:
	testl	%eax, %eax
	jne	.L774
	addsd	728(%rdi), %xmm0
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm5
	movsd	%xmm5, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm0
	movsd	%xmm0, 664(%rdi)
	jb	.L774
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L774
.L5988:
	testl	%eax, %eax
	jne	.L761
	addsd	888(%rdi), %xmm5
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm5
	movsd	%xmm5, 824(%rdi)
	jb	.L761
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	jmp	.L761
.L5993:
	testl	%eax, %eax
	jne	.L683
	addsd	728(%rdi), %xmm8
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm8
	movsd	%xmm8, 664(%rdi)
	jb	.L683
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L683
.L5992:
	testl	%eax, %eax
	jne	.L670
	addsd	888(%rdi), %xmm0
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm5
	movsd	%xmm5, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm0
	movsd	%xmm0, 824(%rdi)
	jb	.L670
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	jmp	.L670
.L5991:
	testl	%eax, %eax
	jne	.L657
	addsd	88(%rdi), %xmm0
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm0
	movsd	%xmm0, 24(%rdi)
	jb	.L657
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L657
.L5950:
	testl	%eax, %eax
	jne	.L1320
	addsd	728(%rdi), %xmm8
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm5
	movsd	%xmm5, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm8
	movsd	%xmm8, 664(%rdi)
	jb	.L1320
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L1320
.L5995:
	testl	%eax, %eax
	jne	.L4716
	addsd	248(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm11
	movsd	%xmm11, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 184(%rdi)
	jb	.L4716
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L566
.L5984:
	testl	%eax, %eax
	jne	.L865
	addsd	568(%rdi), %xmm6
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm1
	movsd	%xmm1, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm6
	movsd	%xmm6, 504(%rdi)
	jb	.L865
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L865
.L5998:
	testl	%eax, %eax
	jne	.L605
	addsd	728(%rdi), %xmm5
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm5
	movsd	%xmm5, 664(%rdi)
	jb	.L605
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L605
.L5997:
	testl	%eax, %eax
	jne	.L592
	addsd	888(%rdi), %xmm5
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm5
	movsd	%xmm5, 824(%rdi)
	jb	.L592
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	jmp	.L592
.L5996:
	testl	%eax, %eax
	jne	.L579
	addsd	88(%rdi), %xmm0
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm0
	movsd	%xmm0, 24(%rdi)
	jb	.L579
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L579
.L5867:
	testl	%eax, %eax
	jne	.L2371
	addsd	728(%rdi), %xmm10
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm8
	movsd	%xmm8, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm10
	movsd	%xmm10, 664(%rdi)
	jb	.L2371
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L2371
.L5856:
	testl	%eax, %eax
	jne	.L2527
	addsd	728(%rdi), %xmm10
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm8
	movsd	%xmm8, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm10
	movsd	%xmm10, 664(%rdi)
	jb	.L2527
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L2527
.L5857:
	testl	%eax, %eax
	jne	.L2540
	addsd	568(%rdi), %xmm10
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm7
	movsd	%xmm7, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm10
	movsd	%xmm10, 504(%rdi)
	jb	.L2540
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L2540
.L5860:
	testl	%eax, %eax
	jne	.L5292
	addsd	888(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 824(%rdi)
	jb	.L5292
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2436
.L5859:
	testl	%eax, %eax
	jne	.L2566
	addsd	248(%rdi), %xmm9
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm6
	movsd	%xmm6, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm9
	movsd	%xmm9, 184(%rdi)
	jb	.L2566
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	jmp	.L2566
.L5858:
	testl	%eax, %eax
	jne	.L2553
	addsd	408(%rdi), %xmm9
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm8
	movsd	%xmm8, 400(%rdi)
	ucomisd	.LC1(%rip), %xmm9
	movsd	%xmm9, 344(%rdi)
	jb	.L2553
	movl	$1, 440(%rdi)
	movq	$0, 344(%rdi)
	jmp	.L2553
.L5852:
	testl	%eax, %eax
	jne	.L2631
	addsd	408(%rdi), %xmm9
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm8
	movsd	%xmm8, 400(%rdi)
	ucomisd	.LC1(%rip), %xmm9
	movsd	%xmm9, 344(%rdi)
	jb	.L2631
	movl	$1, 440(%rdi)
	movq	$0, 344(%rdi)
	jmp	.L2631
.L5851:
	testl	%eax, %eax
	jne	.L2618
	addsd	568(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm7
	movsd	%xmm7, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 504(%rdi)
	jb	.L2618
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L2618
.L5850:
	testl	%eax, %eax
	jne	.L2605
	addsd	728(%rdi), %xmm10
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm8
	movsd	%xmm8, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm10
	movsd	%xmm10, 664(%rdi)
	jb	.L2605
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L2605
.L5855:
	testl	%eax, %eax
	jne	.L5316
	addsd	888(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 824(%rdi)
	jb	.L5316
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2514
.L5853:
	testl	%eax, %eax
	jne	.L2644
	addsd	248(%rdi), %xmm8
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm6
	movsd	%xmm6, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm8
	movsd	%xmm8, 184(%rdi)
	jb	.L2644
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	jmp	.L2644
.L5892:
	testl	%eax, %eax
	jne	.L2072
	addsd	568(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm7
	movsd	%xmm7, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 504(%rdi)
	jb	.L2072
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L2072
.L5868:
	testl	%eax, %eax
	jne	.L2384
	addsd	568(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm7
	movsd	%xmm7, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 504(%rdi)
	jb	.L2384
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L2384
.L5871:
	testl	%eax, %eax
	jne	.L2423
	addsd	88(%rdi), %xmm9
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm9
	movsd	%xmm9, 24(%rdi)
	jb	.L2423
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L2423
.L5870:
	testl	%eax, %eax
	jne	.L2410
	addsd	248(%rdi), %xmm9
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm6
	movsd	%xmm6, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm9
	movsd	%xmm9, 184(%rdi)
	jb	.L2410
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	jmp	.L2410
.L5869:
	testl	%eax, %eax
	jne	.L2397
	addsd	408(%rdi), %xmm9
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm3
	movsd	%xmm3, 400(%rdi)
	ucomisd	.LC1(%rip), %xmm9
	movsd	%xmm9, 344(%rdi)
	jb	.L2397
	movl	$1, 440(%rdi)
	movq	$0, 344(%rdi)
	jmp	.L2397
.L5866:
	testl	%eax, %eax
	jne	.L5268
	addsd	888(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 824(%rdi)
	jb	.L5268
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2358
.L5865:
	testl	%eax, %eax
	jne	.L2501
	addsd	88(%rdi), %xmm9
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm9
	movsd	%xmm9, 24(%rdi)
	jb	.L2501
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L2501
.L5864:
	testl	%eax, %eax
	jne	.L2488
	addsd	248(%rdi), %xmm9
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm6
	movsd	%xmm6, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm9
	movsd	%xmm9, 184(%rdi)
	jb	.L2488
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	jmp	.L2488
.L5863:
	testl	%eax, %eax
	jne	.L2475
	addsd	408(%rdi), %xmm9
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm7
	movsd	%xmm7, 400(%rdi)
	ucomisd	.LC1(%rip), %xmm9
	movsd	%xmm9, 344(%rdi)
	jb	.L2475
	movl	$1, 440(%rdi)
	movq	$0, 344(%rdi)
	jmp	.L2475
.L5862:
	testl	%eax, %eax
	jne	.L2462
	addsd	568(%rdi), %xmm7
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm3
	movsd	%xmm3, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm7
	movsd	%xmm7, 504(%rdi)
	jb	.L2462
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L2462
.L5861:
	testl	%eax, %eax
	jne	.L2449
	addsd	728(%rdi), %xmm10
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm8
	movsd	%xmm8, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm10
	movsd	%xmm10, 664(%rdi)
	jb	.L2449
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L2449
.L5872:
	testl	%eax, %eax
	jne	.L5244
	addsd	888(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 824(%rdi)
	jb	.L5244
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2280
.L5873:
	testl	%eax, %eax
	jne	.L2293
	addsd	728(%rdi), %xmm10
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm8
	movsd	%xmm8, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm10
	movsd	%xmm10, 664(%rdi)
	jb	.L2293
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L2293
.L5876:
	testl	%eax, %eax
	jne	.L2332
	addsd	248(%rdi), %xmm10
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm6
	movsd	%xmm6, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm10
	movsd	%xmm10, 184(%rdi)
	jb	.L2332
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	jmp	.L2332
.L5875:
	testl	%eax, %eax
	jne	.L2319
	addsd	408(%rdi), %xmm10
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm9
	movsd	%xmm9, 400(%rdi)
	ucomisd	.LC1(%rip), %xmm10
	movsd	%xmm10, 344(%rdi)
	jb	.L2319
	movl	$1, 440(%rdi)
	movq	$0, 344(%rdi)
	jmp	.L2319
.L5874:
	testl	%eax, %eax
	jne	.L2306
	addsd	568(%rdi), %xmm10
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm7
	movsd	%xmm7, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm10
	movsd	%xmm10, 504(%rdi)
	jb	.L2306
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L2306
.L5891:
	testl	%eax, %eax
	jne	.L2059
	addsd	728(%rdi), %xmm10
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm8
	movsd	%xmm8, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm10
	movsd	%xmm10, 664(%rdi)
	jb	.L2059
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L2059
.L5879:
	testl	%eax, %eax
	jne	.L2215
	addsd	728(%rdi), %xmm10
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm8
	movsd	%xmm8, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm10
	movsd	%xmm10, 664(%rdi)
	jb	.L2215
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L2215
.L5878:
	testl	%eax, %eax
	jne	.L5220
	addsd	888(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 824(%rdi)
	jb	.L5220
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2202
.L5877:
	testl	%eax, %eax
	jne	.L2345
	addsd	88(%rdi), %xmm6
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm6
	movsd	%xmm6, 24(%rdi)
	jb	.L2345
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L2345
.L5881:
	testl	%eax, %eax
	jne	.L2241
	addsd	408(%rdi), %xmm10
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm9
	movsd	%xmm9, 400(%rdi)
	ucomisd	.LC1(%rip), %xmm10
	movsd	%xmm10, 344(%rdi)
	jb	.L2241
	movl	$1, 440(%rdi)
	movq	$0, 344(%rdi)
	jmp	.L2241
.L5880:
	testl	%eax, %eax
	jne	.L2228
	addsd	568(%rdi), %xmm10
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm7
	movsd	%xmm7, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm10
	movsd	%xmm10, 504(%rdi)
	jb	.L2228
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L2228
.L5884:
	testl	%eax, %eax
	jne	.L5196
	addsd	888(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 824(%rdi)
	jb	.L5196
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2124
.L5883:
	testl	%eax, %eax
	jne	.L2267
	addsd	88(%rdi), %xmm10
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm10
	movsd	%xmm10, 24(%rdi)
	jb	.L2267
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L2267
.L5882:
	testl	%eax, %eax
	jne	.L2254
	addsd	248(%rdi), %xmm10
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm6
	movsd	%xmm6, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm10
	movsd	%xmm10, 184(%rdi)
	jb	.L2254
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	jmp	.L2254
.L5887:
	testl	%eax, %eax
	jne	.L2163
	addsd	408(%rdi), %xmm10
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm9
	movsd	%xmm9, 400(%rdi)
	ucomisd	.LC1(%rip), %xmm10
	movsd	%xmm10, 344(%rdi)
	jb	.L2163
	movl	$1, 440(%rdi)
	movq	$0, 344(%rdi)
	jmp	.L2163
.L5886:
	testl	%eax, %eax
	jne	.L2150
	addsd	568(%rdi), %xmm11
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm7
	movsd	%xmm7, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm11
	movsd	%xmm11, 504(%rdi)
	jb	.L2150
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L2150
.L5885:
	testl	%eax, %eax
	jne	.L2137
	addsd	728(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm8
	movsd	%xmm8, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 664(%rdi)
	jb	.L2137
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L2137
.L5951:
	testl	%eax, %eax
	jne	.L4908
	addsd	248(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 184(%rdi)
	jb	.L4908
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1190
.L5949:
	testl	%eax, %eax
	jne	.L1307
	addsd	888(%rdi), %xmm5
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm5
	movsd	%xmm5, 824(%rdi)
	jb	.L1307
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	jmp	.L1307
.L5890:
	testl	%eax, %eax
	jne	.L5172
	addsd	888(%rdi), %xmm4
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm3
	movsd	%xmm3, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm4
	movsd	%xmm4, 824(%rdi)
	jb	.L5172
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2046
.L5889:
	testl	%eax, %eax
	jne	.L2189
	addsd	88(%rdi), %xmm9
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm9
	movsd	%xmm9, 24(%rdi)
	jb	.L2189
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L2189
.L5888:
	testl	%eax, %eax
	jne	.L2176
	addsd	248(%rdi), %xmm9
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm6
	movsd	%xmm6, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm9
	movsd	%xmm9, 184(%rdi)
	jb	.L2176
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	jmp	.L2176
.L5832:
	testl	%eax, %eax
	jne	.L2839
	addsd	728(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm8
	movsd	%xmm8, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 664(%rdi)
	jb	.L2839
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L2839
.L5833:
	testl	%eax, %eax
	jne	.L2852
	addsd	568(%rdi), %xmm8
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm7
	movsd	%xmm7, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm8
	movsd	%xmm8, 504(%rdi)
	jb	.L2852
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L2852
.L5831:
	testl	%eax, %eax
	jne	.L5412
	addsd	888(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 824(%rdi)
	jb	.L5412
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2826
.L5829:
	testl	%eax, %eax
	jne	.L2956
	addsd	248(%rdi), %xmm9
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm6
	movsd	%xmm6, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm9
	movsd	%xmm9, 184(%rdi)
	jb	.L2956
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	jmp	.L2956
.L5844:
	testl	%eax, %eax
	jne	.L2683
	addsd	728(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm8
	movsd	%xmm8, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 664(%rdi)
	jb	.L2683
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L2683
.L5837:
	testl	%eax, %eax
	jne	.L5388
	addsd	888(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 824(%rdi)
	jb	.L5388
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2748
.L5839:
	testl	%eax, %eax
	jne	.L2774
	addsd	568(%rdi), %xmm10
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm7
	movsd	%xmm7, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm10
	movsd	%xmm10, 504(%rdi)
	jb	.L2774
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L2774
.L5838:
	testl	%eax, %eax
	jne	.L2761
	addsd	728(%rdi), %xmm10
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm8
	movsd	%xmm8, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm10
	movsd	%xmm10, 664(%rdi)
	jb	.L2761
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L2761
.L5825:
	testl	%eax, %eax
	jne	.L5436
	addsd	888(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 824(%rdi)
	jb	.L5436
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2904
.L5842:
	testl	%eax, %eax
	jne	.L2813
	addsd	88(%rdi), %xmm7
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm7
	movsd	%xmm7, 24(%rdi)
	jb	.L2813
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L2813
.L5830:
	testl	%eax, %eax
	jne	.L2969
	addsd	88(%rdi), %xmm9
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm9
	movsd	%xmm9, 24(%rdi)
	jb	.L2969
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L2969
.L5948:
	testl	%eax, %eax
	jne	.L1294
	addsd	88(%rdi), %xmm0
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm6
	movsd	%xmm6, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm0
	movsd	%xmm0, 24(%rdi)
	jb	.L1294
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L1294
.L5843:
	testl	%eax, %eax
	jne	.L5364
	addsd	888(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 824(%rdi)
	jb	.L5364
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2670
.L5841:
	testl	%eax, %eax
	jne	.L2800
	addsd	248(%rdi), %xmm7
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm6
	movsd	%xmm6, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm7
	movsd	%xmm7, 184(%rdi)
	jb	.L2800
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	jmp	.L2800
.L5840:
	testl	%eax, %eax
	jne	.L2787
	addsd	408(%rdi), %xmm10
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm9
	movsd	%xmm9, 400(%rdi)
	ucomisd	.LC1(%rip), %xmm10
	movsd	%xmm10, 344(%rdi)
	jb	.L2787
	movl	$1, 440(%rdi)
	movq	$0, 344(%rdi)
	jmp	.L2787
.L5849:
	testl	%eax, %eax
	jne	.L5340
	addsd	888(%rdi), %xmm4
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm3
	movsd	%xmm3, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm4
	movsd	%xmm4, 824(%rdi)
	jb	.L5340
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2592
.L5847:
	testl	%eax, %eax
	jne	.L2722
	addsd	248(%rdi), %xmm8
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm6
	movsd	%xmm6, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm8
	movsd	%xmm8, 184(%rdi)
	jb	.L2722
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	jmp	.L2722
.L5846:
	testl	%eax, %eax
	jne	.L2709
	addsd	408(%rdi), %xmm9
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm7
	movsd	%xmm7, 400(%rdi)
	ucomisd	.LC1(%rip), %xmm9
	movsd	%xmm9, 344(%rdi)
	jb	.L2709
	movl	$1, 440(%rdi)
	movq	$0, 344(%rdi)
	jmp	.L2709
.L5845:
	testl	%eax, %eax
	jne	.L2696
	addsd	568(%rdi), %xmm7
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm8
	movsd	%xmm8, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm7
	movsd	%xmm7, 504(%rdi)
	jb	.L2696
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L2696
.L5947:
	testl	%eax, %eax
	jne	.L1281
	addsd	248(%rdi), %xmm6
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm6
	movsd	%xmm6, 184(%rdi)
	jb	.L1281
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	jmp	.L1281
.L5820:
	testl	%eax, %eax
	jne	.L2995
	addsd	728(%rdi), %xmm8
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm3
	movsd	%xmm3, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm8
	movsd	%xmm8, 664(%rdi)
	jb	.L2995
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L2995
.L5819:
	testl	%eax, %eax
	jne	.L5460
	addsd	888(%rdi), %xmm4
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm3
	movsd	%xmm3, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm4
	movsd	%xmm4, 824(%rdi)
	jb	.L5460
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2982
.L5823:
	testl	%eax, %eax
	jne	.L3034
	addsd	248(%rdi), %xmm9
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm6
	movsd	%xmm6, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm9
	movsd	%xmm9, 184(%rdi)
	jb	.L3034
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	jmp	.L3034
.L5822:
	testl	%eax, %eax
	jne	.L3021
	addsd	408(%rdi), %xmm9
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm8
	movsd	%xmm8, 400(%rdi)
	ucomisd	.LC1(%rip), %xmm9
	movsd	%xmm9, 344(%rdi)
	jb	.L3021
	movl	$1, 440(%rdi)
	movq	$0, 344(%rdi)
	jmp	.L3021
.L5821:
	testl	%eax, %eax
	jne	.L3008
	addsd	568(%rdi), %xmm8
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm7
	movsd	%xmm7, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm8
	movsd	%xmm8, 504(%rdi)
	jb	.L3008
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L3008
.L5836:
	testl	%eax, %eax
	jne	.L2891
	addsd	88(%rdi), %xmm7
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm7
	movsd	%xmm7, 24(%rdi)
	jb	.L2891
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L2891
.L5835:
	testl	%eax, %eax
	jne	.L2878
	addsd	248(%rdi), %xmm7
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm6
	movsd	%xmm6, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm7
	movsd	%xmm7, 184(%rdi)
	jb	.L2878
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	jmp	.L2878
.L5834:
	testl	%eax, %eax
	jne	.L2865
	addsd	408(%rdi), %xmm9
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm8
	movsd	%xmm8, 400(%rdi)
	ucomisd	.LC1(%rip), %xmm9
	movsd	%xmm9, 344(%rdi)
	jb	.L2865
	movl	$1, 440(%rdi)
	movq	$0, 344(%rdi)
	jmp	.L2865
.L5828:
	testl	%eax, %eax
	jne	.L2943
	addsd	408(%rdi), %xmm9
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm8
	movsd	%xmm8, 400(%rdi)
	ucomisd	.LC1(%rip), %xmm9
	movsd	%xmm9, 344(%rdi)
	jb	.L2943
	movl	$1, 440(%rdi)
	movq	$0, 344(%rdi)
	jmp	.L2943
.L5827:
	testl	%eax, %eax
	jne	.L2930
	addsd	568(%rdi), %xmm8
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm7
	movsd	%xmm7, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm8
	movsd	%xmm8, 504(%rdi)
	jb	.L2930
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L2930
.L5826:
	testl	%eax, %eax
	jne	.L2917
	addsd	728(%rdi), %xmm10
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm8
	movsd	%xmm8, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm10
	movsd	%xmm10, 664(%rdi)
	jb	.L2917
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L2917
.L5912:
	testl	%eax, %eax
	jne	.L1866
	addsd	408(%rdi), %xmm9
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm7
	movsd	%xmm7, 400(%rdi)
	ucomisd	.LC1(%rip), %xmm9
	movsd	%xmm9, 344(%rdi)
	jb	.L1866
	movl	$1, 440(%rdi)
	movq	$0, 344(%rdi)
	jmp	.L1866
.L5934:
	testl	%eax, %eax
	jne	.L1554
	addsd	88(%rdi), %xmm9
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm7
	movsd	%xmm7, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm9
	movsd	%xmm9, 24(%rdi)
	jb	.L1554
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L1554
.L5918:
	testl	%eax, %eax
	jne	.L1788
	addsd	408(%rdi), %xmm9
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm7
	movsd	%xmm7, 400(%rdi)
	ucomisd	.LC1(%rip), %xmm9
	movsd	%xmm9, 344(%rdi)
	jb	.L1788
	movl	$1, 440(%rdi)
	movq	$0, 344(%rdi)
	jmp	.L1788
.L5962:
	testl	%eax, %eax
	jne	.L3317
	addsd	408(%rdi), %xmm5
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm4
	movsd	%xmm4, 400(%rdi)
	ucomisd	.LC1(%rip), %xmm5
	movsd	%xmm5, 344(%rdi)
	jb	.L1177
	movl	$1, 440(%rdi)
	movq	$0, 344(%rdi)
	jmp	.L1177
.L5946:
	testl	%eax, %eax
	jne	.L4932
	addsd	408(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 400(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 344(%rdi)
	jb	.L4932
	movl	$1, 440(%rdi)
	movq	$0, 344(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1268
.L5914:
	testl	%eax, %eax
	jne	.L5076
	addsd	248(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 184(%rdi)
	jb	.L5076
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1736
.L5848:
	testl	%eax, %eax
	jne	.L2735
	addsd	88(%rdi), %xmm8
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm8
	movsd	%xmm8, 24(%rdi)
	jb	.L2735
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L2735
.L5824:
	testl	%eax, %eax
	jne	.L3047
	addsd	88(%rdi), %xmm9
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm9
	movsd	%xmm9, 24(%rdi)
	jb	.L3047
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L3047
.L5952:
	testl	%eax, %eax
	jne	.L1203
	addsd	88(%rdi), %xmm0
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm0
	movsd	%xmm0, 24(%rdi)
	jb	.L1203
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L1203
.L5953:
	testl	%eax, %eax
	jne	.L1216
	addsd	888(%rdi), %xmm0
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm5
	movsd	%xmm5, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm0
	movsd	%xmm0, 824(%rdi)
	jb	.L1216
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	jmp	.L1216
.L5944:
	testl	%eax, %eax
	jne	.L1398
	addsd	728(%rdi), %xmm0
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm5
	movsd	%xmm5, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm0
	movsd	%xmm0, 664(%rdi)
	jb	.L1398
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L1398
.L5954:
	testl	%eax, %eax
	jne	.L1229
	addsd	728(%rdi), %xmm8
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm8
	movsd	%xmm8, 664(%rdi)
	jb	.L1229
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L1229
.L5979:
	testl	%eax, %eax
	jne	.L4788
	addsd	408(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 400(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 344(%rdi)
	jb	.L4788
	movl	$1, 440(%rdi)
	movq	$0, 344(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L800
.L5982:
	testl	%eax, %eax
	jne	.L839
	addsd	888(%rdi), %xmm6
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm5
	movsd	%xmm5, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm6
	movsd	%xmm6, 824(%rdi)
	jb	.L839
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	jmp	.L839
.L5981:
	testl	%eax, %eax
	jne	.L826
	addsd	88(%rdi), %xmm10
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm10
	movsd	%xmm10, 24(%rdi)
	jb	.L826
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L826
.L5980:
	testl	%eax, %eax
	jne	.L813
	addsd	248(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm6
	movsd	%xmm6, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 184(%rdi)
	jb	.L813
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	jmp	.L813
.L5936:
	testl	%eax, %eax
	jne	.L1437
	addsd	888(%rdi), %xmm10
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm10
	movsd	%xmm10, 824(%rdi)
	jb	.L1437
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	jmp	.L1437
.L5937:
	testl	%eax, %eax
	jne	.L1450
	addsd	728(%rdi), %xmm10
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm8
	movsd	%xmm8, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm10
	movsd	%xmm10, 664(%rdi)
	jb	.L1450
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L1450
.L5957:
	testl	%eax, %eax
	jne	.L4884
	addsd	248(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm11
	movsd	%xmm11, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 184(%rdi)
	jb	.L4884
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1112
.L5940:
	testl	%eax, %eax
	jne	.L4956
	addsd	408(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm11
	movsd	%xmm11, 400(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 344(%rdi)
	jb	.L4956
	movl	$1, 440(%rdi)
	movq	$0, 344(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1346
.L5939:
	testl	%eax, %eax
	jne	.L1476
	addsd	88(%rdi), %xmm9
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm7
	movsd	%xmm7, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm9
	movsd	%xmm9, 24(%rdi)
	jb	.L1476
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L1476
.L5938:
	testl	%eax, %eax
	jne	.L1463
	addsd	568(%rdi), %xmm7
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm7
	movsd	%xmm7, 504(%rdi)
	jb	.L1463
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L1463
.L5999:
	testl	%eax, %eax
	jne	.L5484
	addsd	888(%rdi), %xmm0
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm3
	movsd	%xmm3, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm0
	movsd	%xmm0, 824(%rdi)
	jb	.L5484
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L3060
.L6001:
	testl	%eax, %eax
	jne	.L3082
	addsd	568(%rdi), %xmm0
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm3
	movsd	%xmm3, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm0
	movsd	%xmm0, 504(%rdi)
	jb	.L3082
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L3082
.L6000:
	testl	%eax, %eax
	jne	.L3071
	addsd	728(%rdi), %xmm0
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm3
	movsd	%xmm3, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm0
	movsd	%xmm0, 664(%rdi)
	jb	.L3071
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L3071
.L6003:
	testl	%eax, %eax
	jne	.L3104
	addsd	248(%rdi), %xmm0
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm3
	movsd	%xmm3, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm0
	movsd	%xmm0, 184(%rdi)
	jb	.L3104
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	jmp	.L3104
.L6002:
	testl	%eax, %eax
	jne	.L3093
	addsd	408(%rdi), %xmm0
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm3
	movsd	%xmm3, 400(%rdi)
	ucomisd	.LC1(%rip), %xmm0
	movsd	%xmm0, 344(%rdi)
	jb	.L3093
	movl	$1, 440(%rdi)
	movq	$0, 344(%rdi)
	jmp	.L3093
.L5897:
	testl	%eax, %eax
	jne	.L1981
	addsd	728(%rdi), %xmm10
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm8
	movsd	%xmm8, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm10
	movsd	%xmm10, 664(%rdi)
	jb	.L1981
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L1981
.L5959:
	testl	%eax, %eax
	jne	.L1138
	addsd	888(%rdi), %xmm0
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm5
	movsd	%xmm5, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm0
	movsd	%xmm0, 824(%rdi)
	jb	.L1138
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	jmp	.L1138
.L5958:
	testl	%eax, %eax
	jne	.L1125
	addsd	88(%rdi), %xmm0
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm0
	movsd	%xmm0, 24(%rdi)
	jb	.L1125
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L1125
.L5960:
	testl	%eax, %eax
	jne	.L1151
	addsd	728(%rdi), %xmm8
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm8
	movsd	%xmm8, 664(%rdi)
	jb	.L1151
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L1151
.L5978:
	testl	%eax, %eax
	jne	.L3245
	addsd	728(%rdi), %xmm5
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm4
	movsd	%xmm4, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm5
	movsd	%xmm5, 664(%rdi)
	jb	.L943
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L943
.L5964:
	testl	%eax, %eax
	jne	.L1047
	addsd	88(%rdi), %xmm0
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm0
	movsd	%xmm0, 24(%rdi)
	jb	.L1047
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L1047
.L5963:
	testl	%eax, %eax
	jne	.L4860
	addsd	248(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm11
	movsd	%xmm11, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 184(%rdi)
	jb	.L4860
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1034
.L5961:
	testl	%eax, %eax
	jne	.L1164
	addsd	568(%rdi), %xmm7
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm5
	movsd	%xmm5, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm7
	movsd	%xmm7, 504(%rdi)
	jb	.L1164
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L1164
.L5967:
	testl	%eax, %eax
	jne	.L4836
	addsd	248(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm11
	movsd	%xmm11, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 184(%rdi)
	jb	.L4836
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L956
.L5966:
	testl	%eax, %eax
	jne	.L1073
	addsd	728(%rdi), %xmm5
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm5
	movsd	%xmm5, 664(%rdi)
	jb	.L1073
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L1073
.L5965:
	testl	%eax, %eax
	jne	.L1060
	addsd	888(%rdi), %xmm5
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm5
	movsd	%xmm5, 824(%rdi)
	jb	.L1060
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	jmp	.L1060
.L5896:
	testl	%eax, %eax
	jne	.L5148
	addsd	888(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 824(%rdi)
	jb	.L5148
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1968
.L5968:
	testl	%eax, %eax
	jne	.L969
	addsd	88(%rdi), %xmm0
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm0
	movsd	%xmm0, 24(%rdi)
	jb	.L969
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L969
.L5969:
	testl	%eax, %eax
	jne	.L982
	addsd	568(%rdi), %xmm0
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm5
	movsd	%xmm5, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm0
	movsd	%xmm0, 504(%rdi)
	jb	.L982
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L982
.L5972:
	testl	%eax, %eax
	jne	.L1021
	addsd	728(%rdi), %xmm6
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm1
	movsd	%xmm1, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm6
	movsd	%xmm6, 664(%rdi)
	jb	.L1021
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L1021
.L5971:
	testl	%eax, %eax
	jne	.L1008
	addsd	888(%rdi), %xmm6
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm5
	movsd	%xmm5, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm6
	movsd	%xmm6, 824(%rdi)
	jb	.L1008
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	jmp	.L1008
.L5970:
	testl	%eax, %eax
	jne	.L995
	addsd	408(%rdi), %xmm9
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 400(%rdi)
	ucomisd	.LC1(%rip), %xmm9
	movsd	%xmm9, 344(%rdi)
	jb	.L995
	movl	$1, 440(%rdi)
	movq	$0, 344(%rdi)
	jmp	.L995
.L5973:
	testl	%eax, %eax
	jne	.L4812
	addsd	248(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm11
	movsd	%xmm11, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 184(%rdi)
	jb	.L4812
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L878
.L5974:
	testl	%eax, %eax
	jne	.L891
	addsd	88(%rdi), %xmm0
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm0
	movsd	%xmm0, 24(%rdi)
	jb	.L891
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L891
.L5977:
	testl	%eax, %eax
	jne	.L930
	addsd	888(%rdi), %xmm6
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm5
	movsd	%xmm5, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm6
	movsd	%xmm6, 824(%rdi)
	jb	.L930
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	jmp	.L930
.L5976:
	testl	%eax, %eax
	jne	.L917
	addsd	408(%rdi), %xmm9
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 400(%rdi)
	ucomisd	.LC1(%rip), %xmm9
	movsd	%xmm9, 344(%rdi)
	jb	.L917
	movl	$1, 440(%rdi)
	movq	$0, 344(%rdi)
	jmp	.L917
.L5975:
	testl	%eax, %eax
	jne	.L904
	addsd	568(%rdi), %xmm0
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm5
	movsd	%xmm5, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm0
	movsd	%xmm0, 504(%rdi)
	jb	.L904
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L904
.L5985:
	testl	%eax, %eax
	jne	.L4764
	addsd	408(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm11
	movsd	%xmm11, 400(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 344(%rdi)
	jb	.L4764
	movl	$1, 440(%rdi)
	movq	$0, 344(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L722
.L5983:
	testl	%eax, %eax
	jne	.L852
	addsd	728(%rdi), %xmm6
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm5
	movsd	%xmm5, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm6
	movsd	%xmm6, 664(%rdi)
	jb	.L852
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L852
.L5895:
	testl	%eax, %eax
	jne	.L2111
	addsd	88(%rdi), %xmm8
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm8
	movsd	%xmm8, 24(%rdi)
	jb	.L2111
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L2111
.L5894:
	testl	%eax, %eax
	jne	.L2098
	addsd	248(%rdi), %xmm8
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm6
	movsd	%xmm6, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm8
	movsd	%xmm8, 184(%rdi)
	jb	.L2098
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	jmp	.L2098
.L5893:
	testl	%eax, %eax
	jne	.L2085
	addsd	408(%rdi), %xmm9
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm8
	movsd	%xmm8, 400(%rdi)
	ucomisd	.LC1(%rip), %xmm9
	movsd	%xmm9, 344(%rdi)
	jb	.L2085
	movl	$1, 440(%rdi)
	movq	$0, 344(%rdi)
	jmp	.L2085
.L5903:
	testl	%eax, %eax
	jne	.L1905
	addsd	888(%rdi), %xmm0
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm0
	movsd	%xmm0, 824(%rdi)
	jb	.L1905
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	jmp	.L1905
.L5902:
	testl	%eax, %eax
	jne	.L5124
	addsd	248(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm9
	movsd	%xmm9, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 184(%rdi)
	jb	.L5124
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1892
.L5901:
	testl	%eax, %eax
	jne	.L2033
	addsd	88(%rdi), %xmm9
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm9
	movsd	%xmm9, 24(%rdi)
	jb	.L2033
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L2033
.L5900:
	testl	%eax, %eax
	jne	.L2020
	addsd	248(%rdi), %xmm10
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm6
	movsd	%xmm6, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm10
	movsd	%xmm10, 184(%rdi)
	jb	.L2020
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	jmp	.L2020
.L5899:
	testl	%eax, %eax
	jne	.L2007
	addsd	408(%rdi), %xmm10
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm9
	movsd	%xmm9, 400(%rdi)
	ucomisd	.LC1(%rip), %xmm10
	movsd	%xmm10, 344(%rdi)
	jb	.L2007
	movl	$1, 440(%rdi)
	movq	$0, 344(%rdi)
	jmp	.L2007
.L5898:
	testl	%eax, %eax
	jne	.L1994
	addsd	568(%rdi), %xmm10
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm7
	movsd	%xmm7, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm10
	movsd	%xmm10, 504(%rdi)
	jb	.L1994
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L1994
.L5931:
	testl	%eax, %eax
	jne	.L1515
	addsd	888(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 824(%rdi)
	jb	.L1515
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	jmp	.L1515
.L5908:
	testl	%eax, %eax
	jne	.L5100
	addsd	248(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 184(%rdi)
	jb	.L5100
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1814
.L5907:
	testl	%eax, %eax
	jne	.L1955
	addsd	88(%rdi), %xmm6
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm6
	movsd	%xmm6, 24(%rdi)
	jb	.L1955
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L1955
.L5906:
	testl	%eax, %eax
	jne	.L1942
	addsd	408(%rdi), %xmm8
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm7
	movsd	%xmm7, 400(%rdi)
	ucomisd	.LC1(%rip), %xmm8
	movsd	%xmm8, 344(%rdi)
	jb	.L1942
	movl	$1, 440(%rdi)
	movq	$0, 344(%rdi)
	jmp	.L1942
.L5905:
	testl	%eax, %eax
	jne	.L1931
	addsd	568(%rdi), %xmm7
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm8
	movsd	%xmm8, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm7
	movsd	%xmm7, 504(%rdi)
	jb	.L1931
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L1931
.L5904:
	testl	%eax, %eax
	jne	.L1918
	addsd	728(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 664(%rdi)
	jb	.L1918
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L1918
.L5943:
	testl	%eax, %eax
	jne	.L1385
	addsd	888(%rdi), %xmm5
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm5
	movsd	%xmm5, 824(%rdi)
	jb	.L1385
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	jmp	.L1385
.L5942:
	testl	%eax, %eax
	jne	.L1372
	addsd	88(%rdi), %xmm0
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm6
	movsd	%xmm6, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm0
	movsd	%xmm0, 24(%rdi)
	jb	.L1372
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L1372
.L5941:
	testl	%eax, %eax
	jne	.L1359
	addsd	248(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 184(%rdi)
	jb	.L1359
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	jmp	.L1359
.L5911:
	testl	%eax, %eax
	jne	.L1853
	addsd	568(%rdi), %xmm7
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm8
	movsd	%xmm8, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm7
	movsd	%xmm7, 504(%rdi)
	jb	.L1853
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L1853
.L5910:
	testl	%eax, %eax
	jne	.L1840
	addsd	728(%rdi), %xmm8
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm8
	movsd	%xmm8, 664(%rdi)
	jb	.L1840
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L1840
.L5909:
	testl	%eax, %eax
	jne	.L1827
	addsd	888(%rdi), %xmm0
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm0
	movsd	%xmm0, 824(%rdi)
	jb	.L1827
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	jmp	.L1827
.L5925:
	testl	%eax, %eax
	jne	.L5028
	addsd	248(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 184(%rdi)
	jb	.L5028
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1580
.L5927:
	testl	%eax, %eax
	jne	.L1606
	addsd	728(%rdi), %xmm8
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm8
	movsd	%xmm8, 664(%rdi)
	jb	.L1606
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L1606
.L5926:
	testl	%eax, %eax
	jne	.L1593
	addsd	888(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 824(%rdi)
	jb	.L1593
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	jmp	.L1593
.L5930:
	testl	%eax, %eax
	jne	.L5004
	addsd	248(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 184(%rdi)
	jb	.L5004
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1502
.L5929:
	testl	%eax, %eax
	jne	.L1632
	addsd	88(%rdi), %xmm0
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm7
	movsd	%xmm7, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm0
	movsd	%xmm0, 24(%rdi)
	jb	.L1632
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L1632
.L5928:
	testl	%eax, %eax
	jne	.L1619
	addsd	568(%rdi), %xmm7
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm8
	movsd	%xmm8, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm7
	movsd	%xmm7, 504(%rdi)
	jb	.L1619
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L1619
.L5987:
	testl	%eax, %eax
	jne	.L748
	addsd	88(%rdi), %xmm0
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm6
	movsd	%xmm6, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm0
	movsd	%xmm0, 24(%rdi)
	jb	.L748
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L748
.L5932:
	testl	%eax, %eax
	jne	.L1528
	addsd	728(%rdi), %xmm8
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm8
	movsd	%xmm8, 664(%rdi)
	jb	.L1528
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L1528
.L5935:
	testl	%eax, %eax
	jne	.L4980
	addsd	248(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 184(%rdi)
	jb	.L4980
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1424
.L5933:
	testl	%eax, %eax
	jne	.L1541
	addsd	568(%rdi), %xmm7
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm8
	movsd	%xmm8, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm7
	movsd	%xmm7, 504(%rdi)
	jb	.L1541
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L1541
.L5915:
	testl	%eax, %eax
	jne	.L1749
	addsd	888(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 824(%rdi)
	jb	.L1749
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	jmp	.L1749
.L5916:
	testl	%eax, %eax
	jne	.L1762
	addsd	728(%rdi), %xmm8
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm8
	movsd	%xmm8, 664(%rdi)
	jb	.L1762
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L1762
.L5919:
	testl	%eax, %eax
	jne	.L5052
	addsd	248(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 184(%rdi)
	jb	.L5052
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1658
.L5917:
	testl	%eax, %eax
	jne	.L1775
	addsd	568(%rdi), %xmm7
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm8
	movsd	%xmm8, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm7
	movsd	%xmm7, 504(%rdi)
	jb	.L1775
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L1775
.L5986:
	testl	%eax, %eax
	jne	.L735
	addsd	248(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 240(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 184(%rdi)
	jb	.L735
	movl	$1, 280(%rdi)
	movq	$0, 184(%rdi)
	jmp	.L735
.L5920:
	testl	%eax, %eax
	jne	.L1671
	addsd	888(%rdi), %xmm0
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm10
	movsd	%xmm10, 880(%rdi)
	ucomisd	.LC1(%rip), %xmm0
	movsd	%xmm0, 824(%rdi)
	jb	.L1671
	movl	$1, 920(%rdi)
	movq	$0, 824(%rdi)
	jmp	.L1671
.L5921:
	testl	%eax, %eax
	jne	.L1684
	addsd	728(%rdi), %xmm8
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 720(%rdi)
	ucomisd	.LC1(%rip), %xmm8
	movsd	%xmm8, 664(%rdi)
	jb	.L1684
	movl	$1, 760(%rdi)
	movq	$0, 664(%rdi)
	jmp	.L1684
.L6004:
	testl	%eax, %eax
	jne	.L3115
	addsd	88(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm0
	movsd	%xmm0, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 24(%rdi)
	jb	.L3115
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L3115
.L5923:
	testl	%eax, %eax
	jne	.L1710
	addsd	88(%rdi), %xmm0
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm7
	movsd	%xmm7, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm0
	movsd	%xmm0, 24(%rdi)
	jb	.L1710
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L1710
.L5922:
	testl	%eax, %eax
	jne	.L1697
	addsd	568(%rdi), %xmm7
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm8
	movsd	%xmm8, 560(%rdi)
	ucomisd	.LC1(%rip), %xmm7
	movsd	%xmm7, 504(%rdi)
	jb	.L1697
	movl	$1, 600(%rdi)
	movq	$0, 504(%rdi)
	jmp	.L1697
.L4974:
	addsd	576(%rdi), %xmm7
	ucomisd	%xmm2, %xmm7
	movsd	%xmm7, 504(%rdi)
	jnb	.L5570
	jmp	.L1411
.L1685:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	744(%rdi), %xmm12
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm12
	movsd	%xmm0, 720(%rdi)
	jbe	.L5058
	movl	$2, 760(%rdi)
	jmp	.L1684
.L3119:
	movsd	.LC1(%rip), %xmm2
	addsd	112(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm2, %xmm3
	movsd	%xmm3, 24(%rdi)
	movsd	%xmm0, 80(%rdi)
	jb	.L3115
.L5702:
	movl	$4, 120(%rdi)
	jmp	.L3115
.L1480:
	movsd	.LC1(%rip), %xmm11
	addsd	112(%rdi), %xmm9
	movl	%edx, %edx
	movapd	%xmm11, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm11, %xmm9
	movsd	%xmm9, 24(%rdi)
	movsd	%xmm7, 80(%rdi)
	jb	.L1476
.L5575:
	movl	$4, 120(%rdi)
	jmp	.L1476
.L1714:
	movsd	.LC1(%rip), %xmm9
	addsd	112(%rdi), %xmm0
	movl	%edx, %edx
	movapd	%xmm9, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm9, %xmm0
	movsd	%xmm0, 24(%rdi)
	movsd	%xmm7, 80(%rdi)
	jb	.L1710
.L5593:
	movl	$4, 120(%rdi)
	jmp	.L1710
.L739:
	movsd	.LC1(%rip), %xmm6
	addsd	272(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm6, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm6, %xmm3
	movsd	%xmm3, 184(%rdi)
	movsd	%xmm10, 240(%rdi)
	jb	.L735
.L5518:
	movl	$4, 280(%rdi)
	jmp	.L735
.L1675:
	movsd	.LC1(%rip), %xmm11
	addsd	912(%rdi), %xmm0
	movl	%edx, %edx
	movapd	%xmm11, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm11, %xmm0
	movsd	%xmm0, 824(%rdi)
	movsd	%xmm10, 880(%rdi)
	jb	.L1671
.L5590:
	movl	$4, 920(%rdi)
	jmp	.L1671
.L1698:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	584(%rdi), %xmm11
	movapd	%xmm10, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm8, %xmm11
	movsd	%xmm8, 560(%rdi)
	jbe	.L5062
	movl	$2, 600(%rdi)
	jmp	.L1697
.L1688:
	movsd	.LC1(%rip), %xmm11
	addsd	752(%rdi), %xmm8
	movl	%edx, %edx
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm11, %xmm8
	movsd	%xmm8, 664(%rdi)
	movsd	%xmm0, 720(%rdi)
	jb	.L1684
.L5591:
	movl	$4, 760(%rdi)
	jmp	.L1684
.L1750:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	904(%rdi), %xmm12
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm12
	movsd	%xmm0, 880(%rdi)
	jbe	.L5078
	movl	$2, 920(%rdi)
	jmp	.L1749
.L1766:
	movsd	.LC1(%rip), %xmm11
	addsd	752(%rdi), %xmm8
	movl	%edx, %edx
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm11, %xmm8
	movsd	%xmm8, 664(%rdi)
	movsd	%xmm0, 720(%rdi)
	jb	.L1762
.L5597:
	movl	$4, 760(%rdi)
	jmp	.L1762
.L1763:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	744(%rdi), %xmm12
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm12
	movsd	%xmm0, 720(%rdi)
	jbe	.L5082
	movl	$2, 760(%rdi)
	jmp	.L1762
.L1753:
	movsd	.LC1(%rip), %xmm11
	addsd	912(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm11, %xmm3
	movsd	%xmm3, 824(%rdi)
	movsd	%xmm0, 880(%rdi)
	jb	.L1749
.L5596:
	movl	$4, 920(%rdi)
	jmp	.L1749
.L1428:
	movsd	.LC1(%rip), %xmm4
	addsd	272(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	movsd	%xmm10, 240(%rdi)
	jb	.L4980
.L5571:
	movl	$4, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1424
.L1542:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	584(%rdi), %xmm12
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm8, %xmm12
	movsd	%xmm8, 560(%rdi)
	jbe	.L5014
	movl	$2, 600(%rdi)
	jmp	.L1541
.L1555:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	104(%rdi), %xmm12
	movapd	%xmm11, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm7, %xmm12
	movsd	%xmm7, 80(%rdi)
	jbe	.L5018
	movl	$2, 120(%rdi)
	jmp	.L1554
.L1545:
	movsd	.LC1(%rip), %xmm11
	addsd	592(%rdi), %xmm7
	movl	%edx, %edx
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm11, %xmm7
	movsd	%xmm7, 504(%rdi)
	movsd	%xmm8, 560(%rdi)
	jb	.L1541
.L5580:
	movl	$4, 600(%rdi)
	jmp	.L1541
.L762:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	904(%rdi), %xmm11
	movapd	%xmm10, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm11
	movsd	%xmm0, 880(%rdi)
	jbe	.L4774
	movl	$2, 920(%rdi)
	jmp	.L761
.L752:
	movsd	.LC1(%rip), %xmm11
	addsd	112(%rdi), %xmm0
	movl	%edx, %edx
	movapd	%xmm11, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm11, %xmm0
	movsd	%xmm0, 24(%rdi)
	movsd	%xmm6, 80(%rdi)
	jb	.L748
.L5519:
	movl	$4, 120(%rdi)
	jmp	.L748
.L1662:
	movsd	.LC1(%rip), %xmm4
	addsd	272(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	movsd	%xmm10, 240(%rdi)
	jb	.L5052
.L5589:
	movl	$4, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1658
.L1776:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	584(%rdi), %xmm12
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm8, %xmm12
	movsd	%xmm8, 560(%rdi)
	jbe	.L5086
	movl	$2, 600(%rdi)
	jmp	.L1775
.L1789:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	424(%rdi), %xmm12
	movapd	%xmm11, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm7, %xmm12
	movsd	%xmm7, 400(%rdi)
	jbe	.L5090
	movl	$2, 440(%rdi)
	jmp	.L1788
.L749:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	104(%rdi), %xmm12
	movapd	%xmm11, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm6, %xmm12
	movsd	%xmm6, 80(%rdi)
	jbe	.L4770
	movl	$2, 120(%rdi)
	jmp	.L748
.L1633:
	movsd	.LC1(%rip), %xmm9
	movl	%edx, %edx
	movsd	104(%rdi), %xmm11
	movapd	%xmm9, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm7, %xmm11
	movsd	%xmm7, 80(%rdi)
	jbe	.L5042
	movl	$2, 120(%rdi)
	jmp	.L1632
.L1425:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	264(%rdi), %xmm11
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm11
	movsd	%xmm10, 240(%rdi)
	jbe	.L4978
	movl	$2, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1424
.L1672:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	904(%rdi), %xmm12
	movapd	%xmm11, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm12
	movsd	%xmm10, 880(%rdi)
	jbe	.L5054
	movl	$2, 920(%rdi)
	jmp	.L1671
.L1360:
	movsd	.LC1(%rip), %xmm6
	movl	%edx, %edx
	movsd	264(%rdi), %xmm12
	movapd	%xmm6, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm12
	movsd	%xmm10, 240(%rdi)
	jbe	.L4958
	movl	$2, 280(%rdi)
	jmp	.L1359
.L1584:
	movsd	.LC1(%rip), %xmm4
	addsd	272(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	movsd	%xmm10, 240(%rdi)
	jb	.L5028
.L5583:
	movl	$4, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1580
.L1636:
	movsd	.LC1(%rip), %xmm9
	addsd	112(%rdi), %xmm0
	movl	%edx, %edx
	movapd	%xmm9, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm9, %xmm0
	movsd	%xmm0, 24(%rdi)
	movsd	%xmm7, 80(%rdi)
	jb	.L1632
.L5587:
	movl	$4, 120(%rdi)
	jmp	.L1632
.L1529:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	744(%rdi), %xmm12
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm12
	movsd	%xmm0, 720(%rdi)
	jbe	.L5010
	movl	$2, 760(%rdi)
	jmp	.L1528
.L1519:
	movsd	.LC1(%rip), %xmm11
	addsd	912(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm11, %xmm3
	movsd	%xmm3, 824(%rdi)
	movsd	%xmm0, 880(%rdi)
	jb	.L1515
.L5578:
	movl	$4, 920(%rdi)
	jmp	.L1515
.L1506:
	movsd	.LC1(%rip), %xmm4
	addsd	272(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	movsd	%xmm10, 240(%rdi)
	jb	.L5004
.L5577:
	movl	$4, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1502
.L1594:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	904(%rdi), %xmm12
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm12
	movsd	%xmm0, 880(%rdi)
	jbe	.L5030
	movl	$2, 920(%rdi)
	jmp	.L1593
.L1854:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	584(%rdi), %xmm11
	movapd	%xmm10, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm8, %xmm11
	movsd	%xmm8, 560(%rdi)
	jbe	.L5110
	movl	$2, 600(%rdi)
	jmp	.L1853
.L1532:
	movsd	.LC1(%rip), %xmm11
	addsd	752(%rdi), %xmm8
	movl	%edx, %edx
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm11, %xmm8
	movsd	%xmm8, 664(%rdi)
	movsd	%xmm0, 720(%rdi)
	jb	.L1528
.L5579:
	movl	$4, 760(%rdi)
	jmp	.L1528
.L1779:
	movsd	.LC1(%rip), %xmm11
	addsd	592(%rdi), %xmm7
	movl	%edx, %edx
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm11, %xmm7
	movsd	%xmm7, 504(%rdi)
	movsd	%xmm8, 560(%rdi)
	jb	.L1775
.L5598:
	movl	$4, 600(%rdi)
	jmp	.L1775
.L1581:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	264(%rdi), %xmm11
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm11
	movsd	%xmm10, 240(%rdi)
	jbe	.L5026
	movl	$2, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1580
.L1659:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	264(%rdi), %xmm11
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm11
	movsd	%xmm10, 240(%rdi)
	jbe	.L5050
	movl	$2, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1658
.L1620:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	584(%rdi), %xmm12
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm8, %xmm12
	movsd	%xmm8, 560(%rdi)
	jbe	.L5038
	movl	$2, 600(%rdi)
	jmp	.L1619
.L1740:
	movsd	.LC1(%rip), %xmm4
	addsd	272(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	movsd	%xmm10, 240(%rdi)
	jb	.L5076
.L5595:
	movl	$4, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1736
.L1597:
	movsd	.LC1(%rip), %xmm11
	addsd	912(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm11, %xmm3
	movsd	%xmm3, 824(%rdi)
	movsd	%xmm0, 880(%rdi)
	jb	.L1593
.L5584:
	movl	$4, 920(%rdi)
	jmp	.L1593
.L1503:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	264(%rdi), %xmm11
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm11
	movsd	%xmm10, 240(%rdi)
	jbe	.L5002
	movl	$2, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1502
.L1607:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	744(%rdi), %xmm12
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm12
	movsd	%xmm0, 720(%rdi)
	jbe	.L5034
	movl	$2, 760(%rdi)
	jmp	.L1606
.L1623:
	movsd	.LC1(%rip), %xmm11
	addsd	592(%rdi), %xmm7
	movl	%edx, %edx
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm11, %xmm7
	movsd	%xmm7, 504(%rdi)
	movsd	%xmm8, 560(%rdi)
	jb	.L1619
.L5586:
	movl	$4, 600(%rdi)
	jmp	.L1619
.L1610:
	movsd	.LC1(%rip), %xmm11
	addsd	752(%rdi), %xmm8
	movl	%edx, %edx
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm11, %xmm8
	movsd	%xmm8, 664(%rdi)
	movsd	%xmm0, 720(%rdi)
	jb	.L1606
.L5585:
	movl	$4, 760(%rdi)
	jmp	.L1606
.L1844:
	movsd	.LC1(%rip), %xmm11
	addsd	752(%rdi), %xmm8
	movl	%edx, %edx
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm11, %xmm8
	movsd	%xmm8, 664(%rdi)
	movsd	%xmm0, 720(%rdi)
	jb	.L1840
.L5603:
	movl	$4, 760(%rdi)
	jmp	.L1840
.L1828:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	904(%rdi), %xmm12
	movapd	%xmm11, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm12
	movsd	%xmm10, 880(%rdi)
	jbe	.L5102
	movl	$2, 920(%rdi)
	jmp	.L1827
.L1841:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	744(%rdi), %xmm12
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm12
	movsd	%xmm0, 720(%rdi)
	jbe	.L5106
	movl	$2, 760(%rdi)
	jmp	.L1840
.L931:
	movsd	.LC1(%rip), %xmm9
	movl	%edx, %edx
	movsd	904(%rdi), %xmm11
	movapd	%xmm9, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm5, %xmm11
	movsd	%xmm5, 880(%rdi)
	jbe	.L4826
	movl	$2, 920(%rdi)
	jmp	.L930
.L1932:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	584(%rdi), %xmm11
	movapd	%xmm10, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm8, %xmm11
	movsd	%xmm8, 560(%rdi)
	jbe	.L5134
	movl	$2, 600(%rdi)
	jmp	.L1931
.L2102:
	movsd	.LC1(%rip), %xmm9
	addsd	272(%rdi), %xmm8
	movl	%edx, %edx
	movapd	%xmm9, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm9, %xmm8
	movsd	%xmm8, 184(%rdi)
	movsd	%xmm6, 240(%rdi)
	jb	.L2098
.L5623:
	movl	$4, 280(%rdi)
	jmp	.L2098
.L1818:
	movsd	.LC1(%rip), %xmm4
	addsd	272(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	movsd	%xmm10, 240(%rdi)
	jb	.L5100
.L5601:
	movl	$4, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1814
.L1896:
	movsd	.LC1(%rip), %xmm4
	addsd	272(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm9
	subsd	env_curve(,%rdx,8), %xmm9
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	movsd	%xmm9, 240(%rdi)
	jb	.L5124
.L5607:
	movl	$4, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1892
.L1906:
	movsd	.LC1(%rip), %xmm3
	movl	%edx, %edx
	movsd	904(%rdi), %xmm11
	movapd	%xmm3, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm11
	movsd	%xmm10, 880(%rdi)
	jbe	.L5126
	movl	$2, 920(%rdi)
	jmp	.L1905
.L1893:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	264(%rdi), %xmm10
	movapd	%xmm4, %xmm9
	subsd	env_curve(,%rdx,8), %xmm9
	ucomisd	%xmm9, %xmm10
	movsd	%xmm9, 240(%rdi)
	jbe	.L5122
	movl	$2, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1892
.L908:
	movsd	.LC1(%rip), %xmm11
	addsd	592(%rdi), %xmm0
	movl	%edx, %edx
	movapd	%xmm11, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm11, %xmm0
	movsd	%xmm0, 504(%rdi)
	movsd	%xmm5, 560(%rdi)
	jb	.L904
.L5531:
	movl	$4, 600(%rdi)
	jmp	.L904
.L879:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	264(%rdi), %xmm10
	movapd	%xmm4, %xmm11
	subsd	env_curve(,%rdx,8), %xmm11
	ucomisd	%xmm11, %xmm10
	movsd	%xmm11, 240(%rdi)
	jbe	.L4810
	movl	$2, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L878
.L892:
	movsd	.LC1(%rip), %xmm3
	movl	%edx, %edx
	movsd	104(%rdi), %xmm12
	movapd	%xmm3, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm12
	movsd	%xmm10, 80(%rdi)
	jbe	.L4814
	movl	$2, 120(%rdi)
	jmp	.L891
.L905:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	584(%rdi), %xmm12
	movapd	%xmm11, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm5, %xmm12
	movsd	%xmm5, 560(%rdi)
	jbe	.L4818
	movl	$2, 600(%rdi)
	jmp	.L904
.L2034:
	movsd	.LC1(%rip), %xmm2
	movl	%edx, %edx
	movsd	104(%rdi), %xmm4
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm4
	movsd	%xmm0, 80(%rdi)
	jbe	.L5166
	movl	$2, 120(%rdi)
	jmp	.L2033
.L1969:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	904(%rdi), %xmm11
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm11
	movsd	%xmm10, 880(%rdi)
	jbe	.L5146
	movl	$2, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1968
.L1386:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	904(%rdi), %xmm11
	movapd	%xmm10, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm11
	movsd	%xmm0, 880(%rdi)
	jbe	.L4966
	movl	$2, 920(%rdi)
	jmp	.L1385
.L1012:
	movsd	.LC1(%rip), %xmm9
	addsd	912(%rdi), %xmm6
	movl	%edx, %edx
	movapd	%xmm9, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm9, %xmm6
	movsd	%xmm6, 824(%rdi)
	movsd	%xmm5, 880(%rdi)
	jb	.L1008
.L5539:
	movl	$4, 920(%rdi)
	jmp	.L1008
.L1956:
	movsd	.LC1(%rip), %xmm2
	movl	%edx, %edx
	movsd	104(%rdi), %xmm4
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm4
	movsd	%xmm0, 80(%rdi)
	jbe	.L5142
	movl	$2, 120(%rdi)
	jmp	.L1955
.L1946:
	movsd	.LC1(%rip), %xmm10
	addsd	432(%rdi), %xmm8
	movl	%edx, %edx
	movapd	%xmm10, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm10, %xmm8
	movsd	%xmm8, 344(%rdi)
	movsd	%xmm7, 400(%rdi)
	jb	.L1942
.L5611:
	movl	$4, 440(%rdi)
	jmp	.L1942
.L866:
	movsd	.LC1(%rip), %xmm2
	movl	%edx, %edx
	movsd	584(%rdi), %xmm4
	movapd	%xmm2, %xmm1
	subsd	env_curve(,%rdx,8), %xmm1
	ucomisd	%xmm1, %xmm4
	movsd	%xmm1, 560(%rdi)
	jbe	.L4806
	movl	$2, 600(%rdi)
	jmp	.L865
.L856:
	movsd	.LC1(%rip), %xmm8
	addsd	752(%rdi), %xmm6
	movl	%edx, %edx
	movapd	%xmm8, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm8, %xmm6
	movsd	%xmm6, 664(%rdi)
	movsd	%xmm5, 720(%rdi)
	jb	.L852
.L5527:
	movl	$4, 760(%rdi)
	jmp	.L852
.L853:
	movsd	.LC1(%rip), %xmm8
	movl	%edx, %edx
	movsd	744(%rdi), %xmm10
	movapd	%xmm8, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm5, %xmm10
	movsd	%xmm5, 720(%rdi)
	jbe	.L4802
	movl	$2, 760(%rdi)
	jmp	.L852
.L2112:
	movsd	.LC1(%rip), %xmm2
	movl	%edx, %edx
	movsd	104(%rdi), %xmm4
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm4
	movsd	%xmm0, 80(%rdi)
	jbe	.L5190
	movl	$2, 120(%rdi)
	jmp	.L2111
.L2099:
	movsd	.LC1(%rip), %xmm9
	movl	%edx, %edx
	movsd	264(%rdi), %xmm10
	movapd	%xmm9, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm6, %xmm10
	movsd	%xmm6, 240(%rdi)
	jbe	.L5186
	movl	$2, 280(%rdi)
	jmp	.L2098
.L2086:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	424(%rdi), %xmm11
	movapd	%xmm10, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm8, %xmm11
	movsd	%xmm8, 400(%rdi)
	jbe	.L5182
	movl	$2, 440(%rdi)
	jmp	.L2085
.L2089:
	movsd	.LC1(%rip), %xmm10
	addsd	432(%rdi), %xmm9
	movl	%edx, %edx
	movapd	%xmm10, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm10, %xmm9
	movsd	%xmm9, 344(%rdi)
	movsd	%xmm8, 400(%rdi)
	jb	.L2085
.L5622:
	movl	$4, 440(%rdi)
	jmp	.L2085
.L1152:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	744(%rdi), %xmm12
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm12
	movsd	%xmm0, 720(%rdi)
	jbe	.L4894
	movl	$2, 760(%rdi)
	jmp	.L1151
.L1142:
	movsd	.LC1(%rip), %xmm11
	addsd	912(%rdi), %xmm0
	movl	%edx, %edx
	movapd	%xmm11, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm11, %xmm0
	movsd	%xmm0, 824(%rdi)
	movsd	%xmm5, 880(%rdi)
	jb	.L1138
.L5549:
	movl	$4, 920(%rdi)
	jmp	.L1138
.L960:
	movsd	.LC1(%rip), %xmm4
	addsd	272(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm11
	subsd	env_curve(,%rdx,8), %xmm11
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	movsd	%xmm11, 240(%rdi)
	jb	.L4836
.L5535:
	movl	$4, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L956
.L1038:
	movsd	.LC1(%rip), %xmm4
	addsd	272(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm11
	subsd	env_curve(,%rdx,8), %xmm11
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	movsd	%xmm11, 240(%rdi)
	jb	.L4860
.L5541:
	movl	$4, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1034
.L983:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	584(%rdi), %xmm12
	movapd	%xmm11, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm5, %xmm12
	movsd	%xmm5, 560(%rdi)
	jbe	.L4842
	movl	$2, 600(%rdi)
	jmp	.L982
.L973:
	movsd	.LC1(%rip), %xmm3
	addsd	112(%rdi), %xmm0
	movl	%edx, %edx
	movapd	%xmm3, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm3, %xmm0
	movsd	%xmm0, 24(%rdi)
	movsd	%xmm10, 80(%rdi)
	jb	.L969
.L5536:
	movl	$4, 120(%rdi)
	jmp	.L969
.L970:
	movsd	.LC1(%rip), %xmm3
	movl	%edx, %edx
	movsd	104(%rdi), %xmm12
	movapd	%xmm3, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm12
	movsd	%xmm10, 80(%rdi)
	jbe	.L4838
	movl	$2, 120(%rdi)
	jmp	.L969
.L986:
	movsd	.LC1(%rip), %xmm11
	addsd	592(%rdi), %xmm0
	movl	%edx, %edx
	movapd	%xmm11, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm11, %xmm0
	movsd	%xmm0, 504(%rdi)
	movsd	%xmm5, 560(%rdi)
	jb	.L982
.L5537:
	movl	$4, 600(%rdi)
	jmp	.L982
.L778:
	movsd	.LC1(%rip), %xmm8
	addsd	752(%rdi), %xmm0
	movl	%edx, %edx
	movapd	%xmm8, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm8, %xmm0
	movsd	%xmm0, 664(%rdi)
	movsd	%xmm5, 720(%rdi)
	jb	.L774
.L5521:
	movl	$4, 760(%rdi)
	jmp	.L774
.L723:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	424(%rdi), %xmm10
	movapd	%xmm4, %xmm11
	subsd	env_curve(,%rdx,8), %xmm11
	ucomisd	%xmm11, %xmm10
	movsd	%xmm11, 400(%rdi)
	jbe	.L4762
	movl	$2, 440(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L722
.L726:
	movsd	.LC1(%rip), %xmm4
	addsd	432(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm11
	subsd	env_curve(,%rdx,8), %xmm11
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 344(%rdi)
	movsd	%xmm11, 400(%rdi)
	jb	.L4764
.L5517:
	movl	$4, 440(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L722
.L1831:
	movsd	.LC1(%rip), %xmm11
	addsd	912(%rdi), %xmm0
	movl	%edx, %edx
	movapd	%xmm11, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm11, %xmm0
	movsd	%xmm0, 824(%rdi)
	movsd	%xmm10, 880(%rdi)
	jb	.L1827
.L5602:
	movl	$4, 920(%rdi)
	jmp	.L1827
.L1373:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	104(%rdi), %xmm12
	movapd	%xmm11, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm6, %xmm12
	movsd	%xmm6, 80(%rdi)
	jbe	.L4962
	movl	$2, 120(%rdi)
	jmp	.L1372
.L1363:
	movsd	.LC1(%rip), %xmm6
	addsd	272(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm6, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm6, %xmm3
	movsd	%xmm3, 184(%rdi)
	movsd	%xmm10, 240(%rdi)
	jb	.L1359
.L5566:
	movl	$4, 280(%rdi)
	jmp	.L1359
.L1376:
	movsd	.LC1(%rip), %xmm11
	addsd	112(%rdi), %xmm0
	movl	%edx, %edx
	movapd	%xmm11, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm11, %xmm0
	movsd	%xmm0, 24(%rdi)
	movsd	%xmm6, 80(%rdi)
	jb	.L1372
.L5567:
	movl	$4, 120(%rdi)
	jmp	.L1372
.L1516:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	904(%rdi), %xmm12
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm12
	movsd	%xmm0, 880(%rdi)
	jbe	.L5006
	movl	$2, 920(%rdi)
	jmp	.L1515
.L1815:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	264(%rdi), %xmm11
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm11
	movsd	%xmm10, 240(%rdi)
	jbe	.L5098
	movl	$2, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1814
.L2008:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	424(%rdi), %xmm12
	movapd	%xmm11, %xmm9
	subsd	env_curve(,%rdx,8), %xmm9
	ucomisd	%xmm9, %xmm12
	movsd	%xmm9, 400(%rdi)
	jbe	.L5158
	movl	$2, 440(%rdi)
	jmp	.L2007
.L1998:
	movsd	.LC1(%rip), %xmm12
	addsd	592(%rdi), %xmm10
	movl	%edx, %edx
	movapd	%xmm12, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm12, %xmm10
	movsd	%xmm10, 504(%rdi)
	movsd	%xmm7, 560(%rdi)
	jb	.L1994
.L5615:
	movl	$4, 600(%rdi)
	jmp	.L1994
.L2021:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	264(%rdi), %xmm12
	movapd	%xmm11, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm6, %xmm12
	movsd	%xmm6, 240(%rdi)
	jbe	.L5162
	movl	$2, 280(%rdi)
	jmp	.L2020
.L2011:
	movsd	.LC1(%rip), %xmm11
	addsd	432(%rdi), %xmm10
	movl	%edx, %edx
	movapd	%xmm11, %xmm9
	subsd	env_curve(,%rdx,8), %xmm9
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 344(%rdi)
	movsd	%xmm9, 400(%rdi)
	jb	.L2007
.L5616:
	movl	$4, 440(%rdi)
	jmp	.L2007
.L934:
	movsd	.LC1(%rip), %xmm9
	addsd	912(%rdi), %xmm6
	movl	%edx, %edx
	movapd	%xmm9, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm9, %xmm6
	movsd	%xmm6, 824(%rdi)
	movsd	%xmm5, 880(%rdi)
	jb	.L930
.L5533:
	movl	$4, 920(%rdi)
	jmp	.L930
.L918:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	424(%rdi), %xmm12
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm12
	movsd	%xmm0, 400(%rdi)
	jbe	.L4822
	movl	$2, 440(%rdi)
	jmp	.L917
.L921:
	movsd	.LC1(%rip), %xmm11
	addsd	432(%rdi), %xmm9
	movl	%edx, %edx
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm11, %xmm9
	movsd	%xmm9, 344(%rdi)
	movsd	%xmm0, 400(%rdi)
	jb	.L917
.L5532:
	movl	$4, 440(%rdi)
	jmp	.L917
.L1919:
	movsd	.LC1(%rip), %xmm8
	movl	%edx, %edx
	movsd	744(%rdi), %xmm11
	movapd	%xmm8, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm11
	movsd	%xmm0, 720(%rdi)
	jbe	.L5130
	movl	$2, 760(%rdi)
	jmp	.L1918
.L1909:
	movsd	.LC1(%rip), %xmm3
	addsd	912(%rdi), %xmm0
	movl	%edx, %edx
	movapd	%xmm3, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm3, %xmm0
	movsd	%xmm0, 824(%rdi)
	movsd	%xmm10, 880(%rdi)
	jb	.L1905
.L5608:
	movl	$4, 920(%rdi)
	jmp	.L1905
.L1922:
	movsd	.LC1(%rip), %xmm8
	addsd	752(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm8, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm8, %xmm3
	movsd	%xmm3, 664(%rdi)
	movsd	%xmm0, 720(%rdi)
	jb	.L1918
.L5609:
	movl	$4, 760(%rdi)
	jmp	.L1918
.L1943:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	424(%rdi), %xmm11
	movapd	%xmm10, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm7, %xmm11
	movsd	%xmm7, 400(%rdi)
	jbe	.L5138
	movl	$2, 440(%rdi)
	jmp	.L1942
.L1935:
	movsd	.LC1(%rip), %xmm10
	addsd	592(%rdi), %xmm7
	movl	%edx, %edx
	movapd	%xmm10, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm10, %xmm7
	movsd	%xmm7, 504(%rdi)
	movsd	%xmm8, 560(%rdi)
	jb	.L1931
.L5610:
	movl	$4, 600(%rdi)
	jmp	.L1931
.L2024:
	movsd	.LC1(%rip), %xmm11
	addsd	272(%rdi), %xmm10
	movl	%edx, %edx
	movapd	%xmm11, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 184(%rdi)
	movsd	%xmm6, 240(%rdi)
	jb	.L2020
.L5617:
	movl	$4, 280(%rdi)
	jmp	.L2020
.L895:
	movsd	.LC1(%rip), %xmm3
	addsd	112(%rdi), %xmm0
	movl	%edx, %edx
	movapd	%xmm3, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm3, %xmm0
	movsd	%xmm0, 24(%rdi)
	movsd	%xmm10, 80(%rdi)
	jb	.L891
.L5530:
	movl	$4, 120(%rdi)
	jmp	.L891
.L1972:
	movsd	.LC1(%rip), %xmm4
	addsd	912(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 824(%rdi)
	movsd	%xmm10, 880(%rdi)
	jb	.L5148
.L5613:
	movl	$4, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1968
.L882:
	movsd	.LC1(%rip), %xmm4
	addsd	272(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm11
	subsd	env_curve(,%rdx,8), %xmm11
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	movsd	%xmm11, 240(%rdi)
	jb	.L4812
.L5529:
	movl	$4, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L878
.L1022:
	movsd	.LC1(%rip), %xmm2
	movl	%edx, %edx
	movsd	744(%rdi), %xmm4
	movapd	%xmm2, %xmm1
	subsd	env_curve(,%rdx,8), %xmm1
	ucomisd	%xmm1, %xmm4
	movsd	%xmm1, 720(%rdi)
	jbe	.L4854
	movl	$2, 760(%rdi)
	jmp	.L1021
.L1009:
	movsd	.LC1(%rip), %xmm9
	movl	%edx, %edx
	movsd	904(%rdi), %xmm11
	movapd	%xmm9, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm5, %xmm11
	movsd	%xmm5, 880(%rdi)
	jbe	.L4850
	movl	$2, 920(%rdi)
	jmp	.L1008
.L996:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	424(%rdi), %xmm12
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm12
	movsd	%xmm0, 400(%rdi)
	jbe	.L4846
	movl	$2, 440(%rdi)
	jmp	.L995
.L999:
	movsd	.LC1(%rip), %xmm11
	addsd	432(%rdi), %xmm9
	movl	%edx, %edx
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm11, %xmm9
	movsd	%xmm9, 344(%rdi)
	movsd	%xmm0, 400(%rdi)
	jb	.L995
.L5538:
	movl	$4, 440(%rdi)
	jmp	.L995
.L1711:
	movsd	.LC1(%rip), %xmm9
	movl	%edx, %edx
	movsd	104(%rdi), %xmm10
	movapd	%xmm9, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm7, %xmm10
	movsd	%xmm7, 80(%rdi)
	jbe	.L5066
	movl	$2, 120(%rdi)
	jmp	.L1710
.L1701:
	movsd	.LC1(%rip), %xmm10
	addsd	592(%rdi), %xmm7
	movl	%edx, %edx
	movapd	%xmm10, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm10, %xmm7
	movsd	%xmm7, 504(%rdi)
	movsd	%xmm8, 560(%rdi)
	jb	.L1697
.L5592:
	movl	$4, 600(%rdi)
	jmp	.L1697
.L1402:
	movsd	.LC1(%rip), %xmm8
	addsd	752(%rdi), %xmm0
	movl	%edx, %edx
	movapd	%xmm8, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm8, %xmm0
	movsd	%xmm0, 664(%rdi)
	movsd	%xmm5, 720(%rdi)
	jb	.L1398
.L5569:
	movl	$4, 760(%rdi)
	jmp	.L1398
.L1233:
	movsd	.LC1(%rip), %xmm11
	addsd	752(%rdi), %xmm8
	movl	%edx, %edx
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm11, %xmm8
	movsd	%xmm8, 664(%rdi)
	movsd	%xmm0, 720(%rdi)
	jb	.L1229
.L5556:
	movl	$4, 760(%rdi)
	jmp	.L1229
.L804:
	movsd	.LC1(%rip), %xmm4
	addsd	432(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 344(%rdi)
	movsd	%xmm10, 400(%rdi)
	jb	.L4788
.L5523:
	movl	$4, 440(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L800
.L843:
	movsd	.LC1(%rip), %xmm10
	addsd	912(%rdi), %xmm6
	movl	%edx, %edx
	movapd	%xmm10, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm10, %xmm6
	movsd	%xmm6, 824(%rdi)
	movsd	%xmm5, 880(%rdi)
	jb	.L839
.L5526:
	movl	$4, 920(%rdi)
	jmp	.L839
.L840:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	904(%rdi), %xmm11
	movapd	%xmm10, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm5, %xmm11
	movsd	%xmm5, 880(%rdi)
	jbe	.L4798
	movl	$2, 920(%rdi)
	jmp	.L839
.L830:
	movsd	.LC1(%rip), %xmm11
	addsd	112(%rdi), %xmm10
	movl	%edx, %edx
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 24(%rdi)
	movsd	%xmm0, 80(%rdi)
	jb	.L826
.L5525:
	movl	$4, 120(%rdi)
	jmp	.L826
.L1399:
	movsd	.LC1(%rip), %xmm8
	movl	%edx, %edx
	movsd	744(%rdi), %xmm10
	movapd	%xmm8, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm5, %xmm10
	movsd	%xmm5, 720(%rdi)
	jbe	.L4970
	movl	$2, 760(%rdi)
	jmp	.L1398
.L1389:
	movsd	.LC1(%rip), %xmm10
	addsd	912(%rdi), %xmm5
	movl	%edx, %edx
	movapd	%xmm10, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm10, %xmm5
	movsd	%xmm5, 824(%rdi)
	movsd	%xmm0, 880(%rdi)
	jb	.L1385
.L5568:
	movl	$4, 920(%rdi)
	jmp	.L1385
.L736:
	movsd	.LC1(%rip), %xmm6
	movl	%edx, %edx
	movsd	264(%rdi), %xmm12
	movapd	%xmm6, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm12
	movsd	%xmm10, 240(%rdi)
	jbe	.L4766
	movl	$2, 280(%rdi)
	jmp	.L735
.L814:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	264(%rdi), %xmm12
	movapd	%xmm11, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm6, %xmm12
	movsd	%xmm6, 240(%rdi)
	jbe	.L4790
	movl	$2, 280(%rdi)
	jmp	.L813
.L2739:
	movsd	.LC1(%rip), %xmm2
	addsd	112(%rdi), %xmm8
	movl	%edx, %edx
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm2, %xmm8
	movsd	%xmm8, 24(%rdi)
	movsd	%xmm0, 80(%rdi)
	jb	.L2735
.L5672:
	movl	$4, 120(%rdi)
	jmp	.L2735
.L2047:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	904(%rdi), %xmm11
	movapd	%xmm10, %xmm3
	subsd	env_curve(,%rdx,8), %xmm3
	ucomisd	%xmm3, %xmm11
	movsd	%xmm3, 880(%rdi)
	jbe	.L5170
	movl	$2, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2046
.L2190:
	movsd	.LC1(%rip), %xmm2
	movl	%edx, %edx
	movsd	104(%rdi), %xmm4
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm4
	movsd	%xmm0, 80(%rdi)
	jbe	.L5214
	movl	$2, 120(%rdi)
	jmp	.L2189
.L2177:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	264(%rdi), %xmm11
	movapd	%xmm10, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm6, %xmm11
	movsd	%xmm6, 240(%rdi)
	jbe	.L5210
	movl	$2, 280(%rdi)
	jmp	.L2176
.L2167:
	movsd	.LC1(%rip), %xmm11
	addsd	432(%rdi), %xmm10
	movl	%edx, %edx
	movapd	%xmm11, %xmm9
	subsd	env_curve(,%rdx,8), %xmm9
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 344(%rdi)
	movsd	%xmm9, 400(%rdi)
	jb	.L2163
.L5628:
	movl	$4, 440(%rdi)
	jmp	.L2163
.L2154:
	movsd	.LC1(%rip), %xmm12
	addsd	592(%rdi), %xmm11
	movl	%edx, %edx
	movapd	%xmm12, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm12, %xmm11
	movsd	%xmm11, 504(%rdi)
	movsd	%xmm7, 560(%rdi)
	jb	.L2150
.L5627:
	movl	$4, 600(%rdi)
	jmp	.L2150
.L2138:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	744(%rdi), %xmm12
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm8, %xmm12
	movsd	%xmm8, 720(%rdi)
	jbe	.L5198
	movl	$2, 760(%rdi)
	jmp	.L2137
.L2151:
	movsd	.LC1(%rip), %xmm12
	movl	%edx, %edx
	movsd	584(%rdi), %xmm13
	movapd	%xmm12, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm7, %xmm13
	movsd	%xmm7, 560(%rdi)
	jbe	.L5202
	movl	$2, 600(%rdi)
	jmp	.L2150
.L2141:
	movsd	.LC1(%rip), %xmm11
	addsd	752(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm11, %xmm3
	movsd	%xmm3, 664(%rdi)
	movsd	%xmm8, 720(%rdi)
	jb	.L2137
.L5626:
	movl	$4, 760(%rdi)
	jmp	.L2137
.L1194:
	movsd	.LC1(%rip), %xmm4
	addsd	272(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	movsd	%xmm10, 240(%rdi)
	jb	.L4908
.L5553:
	movl	$4, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1190
.L1308:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	904(%rdi), %xmm11
	movapd	%xmm10, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm11
	movsd	%xmm0, 880(%rdi)
	jbe	.L4942
	movl	$2, 920(%rdi)
	jmp	.L1307
.L1321:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	744(%rdi), %xmm11
	movapd	%xmm10, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm5, %xmm11
	movsd	%xmm5, 720(%rdi)
	jbe	.L4946
	movl	$2, 760(%rdi)
	jmp	.L1320
.L1311:
	movsd	.LC1(%rip), %xmm10
	addsd	912(%rdi), %xmm5
	movl	%edx, %edx
	movapd	%xmm10, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm10, %xmm5
	movsd	%xmm5, 824(%rdi)
	movsd	%xmm0, 880(%rdi)
	jb	.L1307
.L5562:
	movl	$4, 920(%rdi)
	jmp	.L1307
.L2258:
	movsd	.LC1(%rip), %xmm11
	addsd	272(%rdi), %xmm10
	movl	%edx, %edx
	movapd	%xmm11, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 184(%rdi)
	movsd	%xmm6, 240(%rdi)
	jb	.L2254
.L5635:
	movl	$4, 280(%rdi)
	jmp	.L2254
.L2164:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	424(%rdi), %xmm12
	movapd	%xmm11, %xmm9
	subsd	env_curve(,%rdx,8), %xmm9
	ucomisd	%xmm9, %xmm12
	movsd	%xmm9, 400(%rdi)
	jbe	.L5206
	movl	$2, 440(%rdi)
	jmp	.L2163
.L1113:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	264(%rdi), %xmm10
	movapd	%xmm4, %xmm11
	subsd	env_curve(,%rdx,8), %xmm11
	ucomisd	%xmm11, %xmm10
	movsd	%xmm11, 240(%rdi)
	jbe	.L4882
	movl	$2, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1112
.L1191:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	264(%rdi), %xmm11
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm11
	movsd	%xmm10, 240(%rdi)
	jbe	.L4906
	movl	$2, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1190
.L2531:
	movsd	.LC1(%rip), %xmm11
	addsd	752(%rdi), %xmm10
	movl	%edx, %edx
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 664(%rdi)
	movsd	%xmm8, 720(%rdi)
	jb	.L2527
.L5656:
	movl	$4, 760(%rdi)
	jmp	.L2527
.L2957:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	264(%rdi), %xmm11
	movapd	%xmm10, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm6, %xmm11
	movsd	%xmm6, 240(%rdi)
	jbe	.L5450
	movl	$2, 280(%rdi)
	jmp	.L2956
.L2687:
	movsd	.LC1(%rip), %xmm11
	addsd	752(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm11, %xmm3
	movsd	%xmm3, 664(%rdi)
	movsd	%xmm8, 720(%rdi)
	jb	.L2683
.L5668:
	movl	$4, 760(%rdi)
	jmp	.L2683
.L1074:
	movsd	.LC1(%rip), %xmm8
	movl	%edx, %edx
	movsd	744(%rdi), %xmm11
	movapd	%xmm8, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm11
	movsd	%xmm0, 720(%rdi)
	jbe	.L4870
	movl	$2, 760(%rdi)
	jmp	.L1073
.L1064:
	movsd	.LC1(%rip), %xmm11
	addsd	912(%rdi), %xmm5
	movl	%edx, %edx
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm11, %xmm5
	movsd	%xmm5, 824(%rdi)
	movsd	%xmm0, 880(%rdi)
	jb	.L1060
.L5543:
	movl	$4, 920(%rdi)
	jmp	.L1060
.L1061:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	904(%rdi), %xmm12
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm12
	movsd	%xmm0, 880(%rdi)
	jbe	.L4866
	movl	$2, 920(%rdi)
	jmp	.L1060
.L1051:
	movsd	.LC1(%rip), %xmm3
	addsd	112(%rdi), %xmm0
	movl	%edx, %edx
	movapd	%xmm3, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm3, %xmm0
	movsd	%xmm0, 24(%rdi)
	movsd	%xmm10, 80(%rdi)
	jb	.L1047
.L5542:
	movl	$4, 120(%rdi)
	jmp	.L1047
.L1048:
	movsd	.LC1(%rip), %xmm3
	movl	%edx, %edx
	movsd	104(%rdi), %xmm12
	movapd	%xmm3, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm12
	movsd	%xmm10, 80(%rdi)
	jbe	.L4862
	movl	$2, 120(%rdi)
	jmp	.L1047
.L1035:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	264(%rdi), %xmm10
	movapd	%xmm4, %xmm11
	subsd	env_curve(,%rdx,8), %xmm11
	ucomisd	%xmm11, %xmm10
	movsd	%xmm11, 240(%rdi)
	jbe	.L4858
	movl	$2, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1034
.L1165:
	movsd	.LC1(%rip), %xmm8
	movl	%edx, %edx
	movsd	584(%rdi), %xmm11
	movapd	%xmm8, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm5, %xmm11
	movsd	%xmm5, 560(%rdi)
	jbe	.L4898
	movl	$2, 600(%rdi)
	jmp	.L1164
.L957:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	264(%rdi), %xmm10
	movapd	%xmm4, %xmm11
	subsd	env_curve(,%rdx,8), %xmm11
	ucomisd	%xmm11, %xmm10
	movsd	%xmm11, 240(%rdi)
	jbe	.L4834
	movl	$2, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L956
.L1126:
	movsd	.LC1(%rip), %xmm3
	movl	%edx, %edx
	movsd	104(%rdi), %xmm12
	movapd	%xmm3, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm12
	movsd	%xmm10, 80(%rdi)
	jbe	.L4886
	movl	$2, 120(%rdi)
	jmp	.L1125
.L2866:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	424(%rdi), %xmm12
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm8, %xmm12
	movsd	%xmm8, 400(%rdi)
	jbe	.L5422
	movl	$2, 440(%rdi)
	jmp	.L2865
.L2242:
	movsd	.LC1(%rip), %xmm12
	movl	%edx, %edx
	movsd	424(%rdi), %xmm13
	movapd	%xmm12, %xmm9
	subsd	env_curve(,%rdx,8), %xmm9
	ucomisd	%xmm9, %xmm13
	movsd	%xmm9, 400(%rdi)
	jbe	.L5230
	movl	$2, 440(%rdi)
	jmp	.L2241
.L2518:
	movsd	.LC1(%rip), %xmm4
	addsd	912(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 824(%rdi)
	movsd	%xmm10, 880(%rdi)
	jb	.L5316
.L5655:
	movl	$4, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2514
.L1207:
	movsd	.LC1(%rip), %xmm11
	addsd	112(%rdi), %xmm0
	movl	%edx, %edx
	movapd	%xmm11, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm11, %xmm0
	movsd	%xmm0, 24(%rdi)
	movsd	%xmm10, 80(%rdi)
	jb	.L1203
.L5554:
	movl	$4, 120(%rdi)
	jmp	.L1203
.L1217:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	904(%rdi), %xmm12
	movapd	%xmm11, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm5, %xmm12
	movsd	%xmm5, 880(%rdi)
	jbe	.L4914
	movl	$2, 920(%rdi)
	jmp	.L1216
.L1230:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	744(%rdi), %xmm12
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm12
	movsd	%xmm0, 720(%rdi)
	jbe	.L4918
	movl	$2, 760(%rdi)
	jmp	.L1229
.L1220:
	movsd	.LC1(%rip), %xmm11
	addsd	912(%rdi), %xmm0
	movl	%edx, %edx
	movapd	%xmm11, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm11, %xmm0
	movsd	%xmm0, 824(%rdi)
	movsd	%xmm5, 880(%rdi)
	jb	.L1216
.L5555:
	movl	$4, 920(%rdi)
	jmp	.L1216
.L2736:
	movsd	.LC1(%rip), %xmm2
	movl	%edx, %edx
	movsd	104(%rdi), %xmm4
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm4
	movsd	%xmm0, 80(%rdi)
	jbe	.L5382
	movl	$2, 120(%rdi)
	jmp	.L2735
.L2726:
	movsd	.LC1(%rip), %xmm9
	addsd	272(%rdi), %xmm8
	movl	%edx, %edx
	movapd	%xmm9, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm9, %xmm8
	movsd	%xmm8, 184(%rdi)
	movsd	%xmm6, 240(%rdi)
	jb	.L2722
.L5671:
	movl	$4, 280(%rdi)
	jmp	.L2722
.L1870:
	movsd	.LC1(%rip), %xmm10
	addsd	432(%rdi), %xmm9
	movl	%edx, %edx
	movapd	%xmm10, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm10, %xmm9
	movsd	%xmm9, 344(%rdi)
	movsd	%xmm7, 400(%rdi)
	jb	.L1866
.L5605:
	movl	$4, 440(%rdi)
	jmp	.L1866
.L1558:
	movsd	.LC1(%rip), %xmm11
	addsd	112(%rdi), %xmm9
	movl	%edx, %edx
	movapd	%xmm11, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm11, %xmm9
	movsd	%xmm9, 24(%rdi)
	movsd	%xmm7, 80(%rdi)
	jb	.L1554
.L5581:
	movl	$4, 120(%rdi)
	jmp	.L1554
.L687:
	movsd	.LC1(%rip), %xmm11
	addsd	752(%rdi), %xmm8
	movl	%edx, %edx
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm11, %xmm8
	movsd	%xmm8, 664(%rdi)
	movsd	%xmm0, 720(%rdi)
	jb	.L683
.L5514:
	movl	$4, 760(%rdi)
	jmp	.L683
.L1792:
	movsd	.LC1(%rip), %xmm11
	addsd	432(%rdi), %xmm9
	movl	%edx, %edx
	movapd	%xmm11, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm11, %xmm9
	movsd	%xmm9, 344(%rdi)
	movsd	%xmm7, 400(%rdi)
	jb	.L1788
.L5599:
	movl	$4, 440(%rdi)
	jmp	.L1788
.L1178:
	movsd	.LC1(%rip), %xmm2
	movl	%edx, %edx
	movsd	424(%rdi), %xmm7
	movapd	%xmm2, %xmm4
	subsd	env_curve(,%rdx,8), %xmm4
	ucomisd	%xmm4, %xmm7
	movsd	%xmm4, 400(%rdi)
	jbe	.L4902
	movl	$2, 440(%rdi)
	jmp	.L1177
.L3317:
	movapd	%xmm2, %xmm4
	jmp	.L1177
.L1181:
	movsd	.LC1(%rip), %xmm2
	addsd	432(%rdi), %xmm5
	movl	%edx, %edx
	movapd	%xmm2, %xmm4
	subsd	env_curve(,%rdx,8), %xmm4
	ucomisd	%xmm2, %xmm5
	movsd	%xmm5, 344(%rdi)
	movsd	%xmm4, 400(%rdi)
	jb	.L1177
.L5552:
	movl	$4, 440(%rdi)
	jmp	.L1177
.L2892:
	movsd	.LC1(%rip), %xmm2
	movl	%edx, %edx
	movsd	104(%rdi), %xmm8
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm8
	movsd	%xmm0, 80(%rdi)
	jbe	.L5430
	movl	$2, 120(%rdi)
	jmp	.L2891
.L2882:
	movsd	.LC1(%rip), %xmm8
	addsd	272(%rdi), %xmm7
	movl	%edx, %edx
	movapd	%xmm8, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm8, %xmm7
	movsd	%xmm7, 184(%rdi)
	movsd	%xmm6, 240(%rdi)
	jb	.L2878
.L5683:
	movl	$4, 280(%rdi)
	jmp	.L2878
.L2895:
	movsd	.LC1(%rip), %xmm2
	addsd	112(%rdi), %xmm7
	movl	%edx, %edx
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm2, %xmm7
	movsd	%xmm7, 24(%rdi)
	movsd	%xmm0, 80(%rdi)
	jb	.L2891
.L5684:
	movl	$4, 120(%rdi)
	jmp	.L2891
.L2879:
	movsd	.LC1(%rip), %xmm8
	movl	%edx, %edx
	movsd	264(%rdi), %xmm9
	movapd	%xmm8, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm6, %xmm9
	movsd	%xmm6, 240(%rdi)
	jbe	.L5426
	movl	$2, 280(%rdi)
	jmp	.L2878
.L2869:
	movsd	.LC1(%rip), %xmm11
	addsd	432(%rdi), %xmm9
	movl	%edx, %edx
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm11, %xmm9
	movsd	%xmm9, 344(%rdi)
	movsd	%xmm8, 400(%rdi)
	jb	.L2865
.L5682:
	movl	$4, 440(%rdi)
	jmp	.L2865
.L2944:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	424(%rdi), %xmm11
	movapd	%xmm10, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm8, %xmm11
	movsd	%xmm8, 400(%rdi)
	jbe	.L5446
	movl	$2, 440(%rdi)
	jmp	.L2943
.L2934:
	movsd	.LC1(%rip), %xmm10
	addsd	592(%rdi), %xmm8
	movl	%edx, %edx
	movapd	%xmm10, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm10, %xmm8
	movsd	%xmm8, 504(%rdi)
	movsd	%xmm7, 560(%rdi)
	jb	.L2930
.L5687:
	movl	$4, 600(%rdi)
	jmp	.L2930
.L2947:
	movsd	.LC1(%rip), %xmm10
	addsd	432(%rdi), %xmm9
	movl	%edx, %edx
	movapd	%xmm10, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm10, %xmm9
	movsd	%xmm9, 344(%rdi)
	movsd	%xmm8, 400(%rdi)
	jb	.L2943
.L5688:
	movl	$4, 440(%rdi)
	jmp	.L2943
.L1269:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	424(%rdi), %xmm11
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm11
	movsd	%xmm10, 400(%rdi)
	jbe	.L4930
	movl	$2, 440(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1268
.L1737:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	264(%rdi), %xmm11
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm11
	movsd	%xmm10, 240(%rdi)
	jbe	.L5074
	movl	$2, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1736
.L2931:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	584(%rdi), %xmm11
	movapd	%xmm10, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm7, %xmm11
	movsd	%xmm7, 560(%rdi)
	jbe	.L5442
	movl	$2, 600(%rdi)
	jmp	.L2930
.L2193:
	movsd	.LC1(%rip), %xmm2
	addsd	112(%rdi), %xmm9
	movl	%edx, %edx
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm2, %xmm9
	movsd	%xmm9, 24(%rdi)
	movsd	%xmm0, 80(%rdi)
	jb	.L2189
.L5630:
	movl	$4, 120(%rdi)
	jmp	.L2189
.L3048:
	movsd	.LC1(%rip), %xmm2
	movl	%edx, %edx
	movsd	104(%rdi), %xmm10
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm10
	movsd	%xmm0, 80(%rdi)
	jbe	.L5478
	movl	$2, 120(%rdi)
	jmp	.L3047
.L3038:
	movsd	.LC1(%rip), %xmm10
	addsd	272(%rdi), %xmm9
	movl	%edx, %edx
	movapd	%xmm10, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm10, %xmm9
	movsd	%xmm9, 184(%rdi)
	movsd	%xmm6, 240(%rdi)
	jb	.L3034
.L5695:
	movl	$4, 280(%rdi)
	jmp	.L3034
.L3051:
	movsd	.LC1(%rip), %xmm2
	addsd	112(%rdi), %xmm9
	movl	%edx, %edx
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm2, %xmm9
	movsd	%xmm9, 24(%rdi)
	movsd	%xmm0, 80(%rdi)
	jb	.L3047
.L5696:
	movl	$4, 120(%rdi)
	jmp	.L3047
.L1867:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	424(%rdi), %xmm11
	movapd	%xmm10, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm7, %xmm11
	movsd	%xmm7, 400(%rdi)
	jbe	.L5114
	movl	$2, 440(%rdi)
	jmp	.L1866
.L1857:
	movsd	.LC1(%rip), %xmm10
	addsd	592(%rdi), %xmm7
	movl	%edx, %edx
	movapd	%xmm10, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm10, %xmm7
	movsd	%xmm7, 504(%rdi)
	movsd	%xmm8, 560(%rdi)
	jb	.L1853
.L5604:
	movl	$4, 600(%rdi)
	jmp	.L1853
.L2921:
	movsd	.LC1(%rip), %xmm11
	addsd	752(%rdi), %xmm10
	movl	%edx, %edx
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 664(%rdi)
	movsd	%xmm8, 720(%rdi)
	jb	.L2917
.L5686:
	movl	$4, 760(%rdi)
	jmp	.L2917
.L2037:
	movsd	.LC1(%rip), %xmm2
	addsd	112(%rdi), %xmm9
	movl	%edx, %edx
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm2, %xmm9
	movsd	%xmm9, 24(%rdi)
	movsd	%xmm0, 80(%rdi)
	jb	.L2033
.L5618:
	movl	$4, 120(%rdi)
	jmp	.L2033
.L2115:
	movsd	.LC1(%rip), %xmm2
	addsd	112(%rdi), %xmm8
	movl	%edx, %edx
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm2, %xmm8
	movsd	%xmm8, 24(%rdi)
	movsd	%xmm0, 80(%rdi)
	jb	.L2111
.L5624:
	movl	$4, 120(%rdi)
	jmp	.L2111
.L2349:
	movsd	.LC1(%rip), %xmm2
	addsd	112(%rdi), %xmm6
	movl	%edx, %edx
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm2, %xmm6
	movsd	%xmm6, 24(%rdi)
	movsd	%xmm0, 80(%rdi)
	jb	.L2345
.L5642:
	movl	$4, 120(%rdi)
	jmp	.L2345
.L2427:
	movsd	.LC1(%rip), %xmm2
	addsd	112(%rdi), %xmm9
	movl	%edx, %edx
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm2, %xmm9
	movsd	%xmm9, 24(%rdi)
	movsd	%xmm0, 80(%rdi)
	jb	.L2423
.L5648:
	movl	$4, 120(%rdi)
	jmp	.L2423
.L2271:
	movsd	.LC1(%rip), %xmm2
	addsd	112(%rdi), %xmm10
	movl	%edx, %edx
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm2, %xmm10
	movsd	%xmm10, 24(%rdi)
	movsd	%xmm0, 80(%rdi)
	jb	.L2267
.L5636:
	movl	$4, 120(%rdi)
	jmp	.L2267
.L3025:
	movsd	.LC1(%rip), %xmm10
	addsd	432(%rdi), %xmm9
	movl	%edx, %edx
	movapd	%xmm10, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm10, %xmm9
	movsd	%xmm9, 344(%rdi)
	movsd	%xmm8, 400(%rdi)
	jb	.L3021
.L5694:
	movl	$4, 440(%rdi)
	jmp	.L3021
.L3009:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	584(%rdi), %xmm11
	movapd	%xmm10, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm7, %xmm11
	movsd	%xmm7, 560(%rdi)
	jbe	.L5466
	movl	$2, 600(%rdi)
	jmp	.L3008
.L3022:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	424(%rdi), %xmm11
	movapd	%xmm10, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm8, %xmm11
	movsd	%xmm8, 400(%rdi)
	jbe	.L5470
	movl	$2, 440(%rdi)
	jmp	.L3021
.L3012:
	movsd	.LC1(%rip), %xmm10
	addsd	592(%rdi), %xmm8
	movl	%edx, %edx
	movapd	%xmm10, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm10, %xmm8
	movsd	%xmm8, 504(%rdi)
	movsd	%xmm7, 560(%rdi)
	jb	.L3008
.L5693:
	movl	$4, 600(%rdi)
	jmp	.L3008
.L2983:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	904(%rdi), %xmm11
	movapd	%xmm10, %xmm3
	subsd	env_curve(,%rdx,8), %xmm3
	ucomisd	%xmm3, %xmm11
	movsd	%xmm3, 880(%rdi)
	jbe	.L5458
	movl	$2, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2982
.L2986:
	movsd	.LC1(%rip), %xmm10
	addsd	912(%rdi), %xmm4
	movl	%edx, %edx
	movapd	%xmm10, %xmm3
	subsd	env_curve(,%rdx,8), %xmm3
	ucomisd	%xmm10, %xmm4
	movsd	%xmm4, 824(%rdi)
	movsd	%xmm3, 880(%rdi)
	jb	.L5460
.L5691:
	movl	$4, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2982
.L2076:
	movsd	.LC1(%rip), %xmm10
	addsd	592(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm10, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm10, %xmm3
	movsd	%xmm3, 504(%rdi)
	movsd	%xmm7, 560(%rdi)
	jb	.L2072
.L5621:
	movl	$4, 600(%rdi)
	jmp	.L2072
.L2388:
	movsd	.LC1(%rip), %xmm11
	addsd	592(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm11, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm11, %xmm3
	movsd	%xmm3, 504(%rdi)
	movsd	%xmm7, 560(%rdi)
	jb	.L2384
.L5645:
	movl	$4, 600(%rdi)
	jmp	.L2384
.L2385:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	584(%rdi), %xmm12
	movapd	%xmm11, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm7, %xmm12
	movsd	%xmm7, 560(%rdi)
	jbe	.L5274
	movl	$2, 600(%rdi)
	jmp	.L2384
.L2375:
	movsd	.LC1(%rip), %xmm11
	addsd	752(%rdi), %xmm10
	movl	%edx, %edx
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 664(%rdi)
	movsd	%xmm8, 720(%rdi)
	jb	.L2371
.L5644:
	movl	$4, 760(%rdi)
	jmp	.L2371
.L2515:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	904(%rdi), %xmm11
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm11
	movsd	%xmm10, 880(%rdi)
	jbe	.L5314
	movl	$2, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2514
.L2593:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	904(%rdi), %xmm11
	movapd	%xmm10, %xmm3
	subsd	env_curve(,%rdx,8), %xmm3
	ucomisd	%xmm3, %xmm11
	movsd	%xmm3, 880(%rdi)
	jbe	.L5338
	movl	$2, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2592
.L2073:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	584(%rdi), %xmm11
	movapd	%xmm10, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm7, %xmm11
	movsd	%xmm7, 560(%rdi)
	jbe	.L5178
	movl	$2, 600(%rdi)
	jmp	.L2072
.L2063:
	movsd	.LC1(%rip), %xmm11
	addsd	752(%rdi), %xmm10
	movl	%edx, %edx
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 664(%rdi)
	movsd	%xmm8, 720(%rdi)
	jb	.L2059
.L5620:
	movl	$4, 760(%rdi)
	jmp	.L2059
.L606:
	movsd	.LC1(%rip), %xmm8
	movl	%edx, %edx
	movsd	744(%rdi), %xmm11
	movapd	%xmm8, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm11
	movsd	%xmm0, 720(%rdi)
	jbe	.L4726
	movl	$2, 760(%rdi)
	jmp	.L605
.L596:
	movsd	.LC1(%rip), %xmm11
	addsd	912(%rdi), %xmm5
	movl	%edx, %edx
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm11, %xmm5
	movsd	%xmm5, 824(%rdi)
	movsd	%xmm0, 880(%rdi)
	jb	.L592
.L5507:
	movl	$4, 920(%rdi)
	jmp	.L592
.L609:
	movsd	.LC1(%rip), %xmm8
	addsd	752(%rdi), %xmm5
	movl	%edx, %edx
	movapd	%xmm8, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm8, %xmm5
	movsd	%xmm5, 664(%rdi)
	movsd	%xmm0, 720(%rdi)
	jb	.L605
.L5508:
	movl	$4, 760(%rdi)
	jmp	.L605
.L593:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	904(%rdi), %xmm12
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm12
	movsd	%xmm0, 880(%rdi)
	jbe	.L4722
	movl	$2, 920(%rdi)
	jmp	.L592
.L2554:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	424(%rdi), %xmm11
	movapd	%xmm10, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm8, %xmm11
	movsd	%xmm8, 400(%rdi)
	jbe	.L5326
	movl	$2, 440(%rdi)
	jmp	.L2553
.L2801:
	movsd	.LC1(%rip), %xmm9
	movl	%edx, %edx
	movsd	264(%rdi), %xmm10
	movapd	%xmm9, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm6, %xmm10
	movsd	%xmm6, 240(%rdi)
	jbe	.L5402
	movl	$2, 280(%rdi)
	jmp	.L2800
.L1155:
	movsd	.LC1(%rip), %xmm11
	addsd	752(%rdi), %xmm8
	movl	%edx, %edx
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm11, %xmm8
	movsd	%xmm8, 664(%rdi)
	movsd	%xmm0, 720(%rdi)
	jb	.L1151
.L5550:
	movl	$4, 760(%rdi)
	jmp	.L1151
.L2050:
	movsd	.LC1(%rip), %xmm10
	addsd	912(%rdi), %xmm4
	movl	%edx, %edx
	movapd	%xmm10, %xmm3
	subsd	env_curve(,%rdx,8), %xmm3
	ucomisd	%xmm10, %xmm4
	movsd	%xmm4, 824(%rdi)
	movsd	%xmm3, 880(%rdi)
	jb	.L5172
.L5619:
	movl	$4, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2046
.L2128:
	movsd	.LC1(%rip), %xmm4
	addsd	912(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 824(%rdi)
	movsd	%xmm10, 880(%rdi)
	jb	.L5196
.L5625:
	movl	$4, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2124
.L2125:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	904(%rdi), %xmm11
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm11
	movsd	%xmm10, 880(%rdi)
	jbe	.L5194
	movl	$2, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2124
.L2268:
	movsd	.LC1(%rip), %xmm2
	movl	%edx, %edx
	movsd	104(%rdi), %xmm4
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm4
	movsd	%xmm0, 80(%rdi)
	jbe	.L5238
	movl	$2, 120(%rdi)
	jmp	.L2267
.L2476:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	424(%rdi), %xmm11
	movapd	%xmm10, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm7, %xmm11
	movsd	%xmm7, 400(%rdi)
	jbe	.L5302
	movl	$2, 440(%rdi)
	jmp	.L2475
.L2528:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	744(%rdi), %xmm12
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm8, %xmm12
	movsd	%xmm8, 720(%rdi)
	jbe	.L5318
	movl	$2, 760(%rdi)
	jmp	.L2527
.L801:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	424(%rdi), %xmm11
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm11
	movsd	%xmm10, 400(%rdi)
	jbe	.L4786
	movl	$2, 440(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L800
.L2713:
	movsd	.LC1(%rip), %xmm11
	addsd	432(%rdi), %xmm9
	movl	%edx, %edx
	movapd	%xmm11, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm11, %xmm9
	movsd	%xmm9, 344(%rdi)
	movsd	%xmm7, 400(%rdi)
	jb	.L2709
.L5670:
	movl	$4, 440(%rdi)
	jmp	.L2709
.L2541:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	584(%rdi), %xmm12
	movapd	%xmm11, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm7, %xmm12
	movsd	%xmm7, 560(%rdi)
	jbe	.L5322
	movl	$2, 600(%rdi)
	jmp	.L2540
.L2544:
	movsd	.LC1(%rip), %xmm11
	addsd	592(%rdi), %xmm10
	movl	%edx, %edx
	movapd	%xmm11, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 504(%rdi)
	movsd	%xmm7, 560(%rdi)
	jb	.L2540
.L5657:
	movl	$4, 600(%rdi)
	jmp	.L2540
.L2502:
	movsd	.LC1(%rip), %xmm2
	movl	%edx, %edx
	movsd	104(%rdi), %xmm10
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm10
	movsd	%xmm0, 80(%rdi)
	jbe	.L5310
	movl	$2, 120(%rdi)
	jmp	.L2501
.L2492:
	movsd	.LC1(%rip), %xmm10
	addsd	272(%rdi), %xmm9
	movl	%edx, %edx
	movapd	%xmm10, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm10, %xmm9
	movsd	%xmm9, 184(%rdi)
	movsd	%xmm6, 240(%rdi)
	jb	.L2488
.L5653:
	movl	$4, 280(%rdi)
	jmp	.L2488
.L2463:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	584(%rdi), %xmm12
	movapd	%xmm10, %xmm3
	subsd	env_curve(,%rdx,8), %xmm3
	ucomisd	%xmm3, %xmm12
	movsd	%xmm3, 560(%rdi)
	jbe	.L5298
	movl	$2, 600(%rdi)
	jmp	.L2462
.L2453:
	movsd	.LC1(%rip), %xmm11
	addsd	752(%rdi), %xmm10
	movl	%edx, %edx
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 664(%rdi)
	movsd	%xmm8, 720(%rdi)
	jb	.L2449
.L5650:
	movl	$4, 760(%rdi)
	jmp	.L2449
.L2307:
	movsd	.LC1(%rip), %xmm12
	movl	%edx, %edx
	movsd	584(%rdi), %xmm13
	movapd	%xmm12, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm7, %xmm13
	movsd	%xmm7, 560(%rdi)
	jbe	.L5250
	movl	$2, 600(%rdi)
	jmp	.L2306
.L2297:
	movsd	.LC1(%rip), %xmm11
	addsd	752(%rdi), %xmm10
	movl	%edx, %edx
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 664(%rdi)
	movsd	%xmm8, 720(%rdi)
	jb	.L2293
.L5638:
	movl	$4, 760(%rdi)
	jmp	.L2293
.L2203:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	904(%rdi), %xmm11
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm11
	movsd	%xmm10, 880(%rdi)
	jbe	.L5218
	movl	$2, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2202
.L2346:
	movsd	.LC1(%rip), %xmm2
	movl	%edx, %edx
	movsd	104(%rdi), %xmm9
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm9
	movsd	%xmm0, 80(%rdi)
	jbe	.L5262
	movl	$2, 120(%rdi)
	jmp	.L2345
.L2255:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	264(%rdi), %xmm12
	movapd	%xmm11, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm6, %xmm12
	movsd	%xmm6, 240(%rdi)
	jbe	.L5234
	movl	$2, 280(%rdi)
	jmp	.L2254
.L2245:
	movsd	.LC1(%rip), %xmm12
	addsd	432(%rdi), %xmm10
	movl	%edx, %edx
	movapd	%xmm12, %xmm9
	subsd	env_curve(,%rdx,8), %xmm9
	ucomisd	%xmm12, %xmm10
	movsd	%xmm10, 344(%rdi)
	movsd	%xmm9, 400(%rdi)
	jb	.L2241
.L5634:
	movl	$4, 440(%rdi)
	jmp	.L2241
.L2229:
	movsd	.LC1(%rip), %xmm12
	movl	%edx, %edx
	movsd	584(%rdi), %xmm13
	movapd	%xmm12, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm7, %xmm13
	movsd	%xmm7, 560(%rdi)
	jbe	.L5226
	movl	$2, 600(%rdi)
	jmp	.L2228
.L2219:
	movsd	.LC1(%rip), %xmm11
	addsd	752(%rdi), %xmm10
	movl	%edx, %edx
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 664(%rdi)
	movsd	%xmm8, 720(%rdi)
	jb	.L2215
.L5632:
	movl	$4, 760(%rdi)
	jmp	.L2215
.L2294:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	744(%rdi), %xmm12
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm8, %xmm12
	movsd	%xmm8, 720(%rdi)
	jbe	.L5246
	movl	$2, 760(%rdi)
	jmp	.L2293
.L2336:
	movsd	.LC1(%rip), %xmm11
	addsd	272(%rdi), %xmm10
	movl	%edx, %edx
	movapd	%xmm11, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 184(%rdi)
	movsd	%xmm6, 240(%rdi)
	jb	.L2332
.L5641:
	movl	$4, 280(%rdi)
	jmp	.L2332
.L2333:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	264(%rdi), %xmm12
	movapd	%xmm11, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm6, %xmm12
	movsd	%xmm6, 240(%rdi)
	jbe	.L5258
	movl	$2, 280(%rdi)
	jmp	.L2332
.L2323:
	movsd	.LC1(%rip), %xmm11
	addsd	432(%rdi), %xmm10
	movl	%edx, %edx
	movapd	%xmm11, %xmm9
	subsd	env_curve(,%rdx,8), %xmm9
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 344(%rdi)
	movsd	%xmm9, 400(%rdi)
	jb	.L2319
.L5640:
	movl	$4, 440(%rdi)
	jmp	.L2319
.L2424:
	movsd	.LC1(%rip), %xmm2
	movl	%edx, %edx
	movsd	104(%rdi), %xmm10
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm10
	movsd	%xmm0, 80(%rdi)
	jbe	.L5286
	movl	$2, 120(%rdi)
	jmp	.L2423
.L2414:
	movsd	.LC1(%rip), %xmm10
	addsd	272(%rdi), %xmm9
	movl	%edx, %edx
	movapd	%xmm10, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm10, %xmm9
	movsd	%xmm9, 184(%rdi)
	movsd	%xmm6, 240(%rdi)
	jb	.L2410
.L5647:
	movl	$4, 280(%rdi)
	jmp	.L2410
.L2411:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	264(%rdi), %xmm11
	movapd	%xmm10, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm6, %xmm11
	movsd	%xmm6, 240(%rdi)
	jbe	.L5282
	movl	$2, 280(%rdi)
	jmp	.L2410
.L2401:
	movsd	.LC1(%rip), %xmm11
	addsd	432(%rdi), %xmm9
	movl	%edx, %edx
	movapd	%xmm11, %xmm3
	subsd	env_curve(,%rdx,8), %xmm3
	ucomisd	%xmm11, %xmm9
	movsd	%xmm9, 344(%rdi)
	movsd	%xmm3, 400(%rdi)
	jb	.L2397
.L5646:
	movl	$4, 440(%rdi)
	jmp	.L2397
.L2489:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	264(%rdi), %xmm11
	movapd	%xmm10, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm6, %xmm11
	movsd	%xmm6, 240(%rdi)
	jbe	.L5306
	movl	$2, 280(%rdi)
	jmp	.L2488
.L2479:
	movsd	.LC1(%rip), %xmm10
	addsd	432(%rdi), %xmm9
	movl	%edx, %edx
	movapd	%xmm10, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm10, %xmm9
	movsd	%xmm9, 344(%rdi)
	movsd	%xmm7, 400(%rdi)
	jb	.L2475
.L5652:
	movl	$4, 440(%rdi)
	jmp	.L2475
.L2232:
	movsd	.LC1(%rip), %xmm12
	addsd	592(%rdi), %xmm10
	movl	%edx, %edx
	movapd	%xmm12, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm12, %xmm10
	movsd	%xmm10, 504(%rdi)
	movsd	%xmm7, 560(%rdi)
	jb	.L2228
.L5633:
	movl	$4, 600(%rdi)
	jmp	.L2228
.L2450:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	744(%rdi), %xmm12
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm8, %xmm12
	movsd	%xmm8, 720(%rdi)
	jbe	.L5294
	movl	$2, 760(%rdi)
	jmp	.L2449
.L2281:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	904(%rdi), %xmm11
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm11
	movsd	%xmm10, 880(%rdi)
	jbe	.L5242
	movl	$2, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2280
.L2206:
	movsd	.LC1(%rip), %xmm4
	addsd	912(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 824(%rdi)
	movsd	%xmm10, 880(%rdi)
	jb	.L5220
.L5631:
	movl	$4, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2202
.L2284:
	movsd	.LC1(%rip), %xmm4
	addsd	912(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 824(%rdi)
	movsd	%xmm10, 880(%rdi)
	jb	.L5244
.L5637:
	movl	$4, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2280
.L2398:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	424(%rdi), %xmm12
	movapd	%xmm11, %xmm3
	subsd	env_curve(,%rdx,8), %xmm3
	ucomisd	%xmm3, %xmm12
	movsd	%xmm3, 400(%rdi)
	jbe	.L5278
	movl	$2, 440(%rdi)
	jmp	.L2397
.L2359:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	904(%rdi), %xmm11
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm11
	movsd	%xmm10, 880(%rdi)
	jbe	.L5266
	movl	$2, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2358
.L2466:
	movsd	.LC1(%rip), %xmm10
	addsd	592(%rdi), %xmm7
	movl	%edx, %edx
	movapd	%xmm10, %xmm3
	subsd	env_curve(,%rdx,8), %xmm3
	ucomisd	%xmm10, %xmm7
	movsd	%xmm7, 504(%rdi)
	movsd	%xmm3, 560(%rdi)
	jb	.L2462
.L5651:
	movl	$4, 600(%rdi)
	jmp	.L2462
.L1477:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	104(%rdi), %xmm12
	movapd	%xmm11, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm7, %xmm12
	movsd	%xmm7, 80(%rdi)
	jbe	.L4994
	movl	$2, 120(%rdi)
	jmp	.L1476
.L1467:
	movsd	.LC1(%rip), %xmm11
	addsd	592(%rdi), %xmm7
	movl	%edx, %edx
	movapd	%xmm11, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm11, %xmm7
	movsd	%xmm7, 504(%rdi)
	movsd	%xmm10, 560(%rdi)
	jb	.L1463
.L5574:
	movl	$4, 600(%rdi)
	jmp	.L1463
.L1441:
	movsd	.LC1(%rip), %xmm11
	addsd	912(%rdi), %xmm10
	movl	%edx, %edx
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 824(%rdi)
	movsd	%xmm0, 880(%rdi)
	jb	.L1437
.L5572:
	movl	$4, 920(%rdi)
	jmp	.L1437
.L1451:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	744(%rdi), %xmm12
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm8, %xmm12
	movsd	%xmm8, 720(%rdi)
	jbe	.L4986
	movl	$2, 760(%rdi)
	jmp	.L1450
.L1464:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	584(%rdi), %xmm12
	movapd	%xmm11, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm12
	movsd	%xmm10, 560(%rdi)
	jbe	.L4990
	movl	$2, 600(%rdi)
	jmp	.L1463
.L1454:
	movsd	.LC1(%rip), %xmm11
	addsd	752(%rdi), %xmm10
	movl	%edx, %edx
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 664(%rdi)
	movsd	%xmm8, 720(%rdi)
	jb	.L1450
.L5573:
	movl	$4, 760(%rdi)
	jmp	.L1450
.L827:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	104(%rdi), %xmm12
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm12
	movsd	%xmm0, 80(%rdi)
	jbe	.L4794
	movl	$2, 120(%rdi)
	jmp	.L826
.L817:
	movsd	.LC1(%rip), %xmm11
	addsd	272(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm11, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm11, %xmm3
	movsd	%xmm3, 184(%rdi)
	movsd	%xmm6, 240(%rdi)
	jb	.L813
.L5524:
	movl	$4, 280(%rdi)
	jmp	.L813
.L1350:
	movsd	.LC1(%rip), %xmm4
	addsd	432(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm11
	subsd	env_curve(,%rdx,8), %xmm11
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 344(%rdi)
	movsd	%xmm11, 400(%rdi)
	jb	.L4956
.L5565:
	movl	$4, 440(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1346
.L1438:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	904(%rdi), %xmm12
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm12
	movsd	%xmm0, 880(%rdi)
	jbe	.L4982
	movl	$2, 920(%rdi)
	jmp	.L1437
.L1272:
	movsd	.LC1(%rip), %xmm4
	addsd	432(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 344(%rdi)
	movsd	%xmm10, 400(%rdi)
	jb	.L4932
.L5559:
	movl	$4, 440(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1268
.L1204:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	104(%rdi), %xmm12
	movapd	%xmm11, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm12
	movsd	%xmm10, 80(%rdi)
	jbe	.L4910
	movl	$2, 120(%rdi)
	jmp	.L1203
.L1077:
	movsd	.LC1(%rip), %xmm8
	addsd	752(%rdi), %xmm5
	movl	%edx, %edx
	movapd	%xmm8, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm8, %xmm5
	movsd	%xmm5, 664(%rdi)
	movsd	%xmm0, 720(%rdi)
	jb	.L1073
.L5544:
	movl	$4, 760(%rdi)
	jmp	.L1073
.L1139:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	904(%rdi), %xmm12
	movapd	%xmm11, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm5, %xmm12
	movsd	%xmm5, 880(%rdi)
	jbe	.L4890
	movl	$2, 920(%rdi)
	jmp	.L1138
.L1129:
	movsd	.LC1(%rip), %xmm3
	addsd	112(%rdi), %xmm0
	movl	%edx, %edx
	movapd	%xmm3, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm3, %xmm0
	movsd	%xmm0, 24(%rdi)
	movsd	%xmm10, 80(%rdi)
	jb	.L1125
.L5548:
	movl	$4, 120(%rdi)
	jmp	.L1125
.L3094:
	movsd	.LC1(%rip), %xmm6
	movl	%edx, %edx
	movsd	424(%rdi), %xmm7
	movapd	%xmm6, %xmm3
	subsd	env_curve(,%rdx,8), %xmm3
	ucomisd	%xmm3, %xmm7
	movsd	%xmm3, 400(%rdi)
	jbe	.L5494
	movl	$2, 440(%rdi)
	jmp	.L3093
.L3086:
	movsd	.LC1(%rip), %xmm6
	addsd	592(%rdi), %xmm0
	movl	%edx, %edx
	movapd	%xmm6, %xmm3
	subsd	env_curve(,%rdx,8), %xmm3
	ucomisd	%xmm6, %xmm0
	movsd	%xmm0, 504(%rdi)
	movsd	%xmm3, 560(%rdi)
	jb	.L3082
.L5699:
	movl	$4, 600(%rdi)
	jmp	.L3082
.L1025:
	movsd	.LC1(%rip), %xmm2
	addsd	752(%rdi), %xmm6
	movl	%edx, %edx
	movapd	%xmm2, %xmm1
	subsd	env_curve(,%rdx,8), %xmm1
	ucomisd	%xmm2, %xmm6
	movsd	%xmm6, 664(%rdi)
	movsd	%xmm1, 720(%rdi)
	jb	.L1021
.L5540:
	movl	$4, 760(%rdi)
	jmp	.L1021
.L1168:
	movsd	.LC1(%rip), %xmm8
	addsd	592(%rdi), %xmm7
	movl	%edx, %edx
	movapd	%xmm8, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm8, %xmm7
	movsd	%xmm7, 504(%rdi)
	movsd	%xmm5, 560(%rdi)
	jb	.L1164
.L5551:
	movl	$4, 600(%rdi)
	jmp	.L1164
.L3064:
	movsd	.LC1(%rip), %xmm4
	addsd	912(%rdi), %xmm0
	movl	%edx, %edx
	movapd	%xmm4, %xmm3
	subsd	env_curve(,%rdx,8), %xmm3
	ucomisd	%xmm4, %xmm0
	movsd	%xmm0, 824(%rdi)
	movsd	%xmm3, 880(%rdi)
	jb	.L5484
.L5697:
	movl	$4, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L3060
.L3083:
	movsd	.LC1(%rip), %xmm6
	movl	%edx, %edx
	movsd	584(%rdi), %xmm7
	movapd	%xmm6, %xmm3
	subsd	env_curve(,%rdx,8), %xmm3
	ucomisd	%xmm3, %xmm7
	movsd	%xmm3, 560(%rdi)
	jbe	.L5490
	movl	$2, 600(%rdi)
	jmp	.L3082
.L3072:
	movsd	.LC1(%rip), %xmm6
	movl	%edx, %edx
	movsd	744(%rdi), %xmm7
	movapd	%xmm6, %xmm3
	subsd	env_curve(,%rdx,8), %xmm3
	ucomisd	%xmm3, %xmm7
	movsd	%xmm3, 720(%rdi)
	jbe	.L5486
	movl	$2, 760(%rdi)
	jmp	.L3071
.L3075:
	movsd	.LC1(%rip), %xmm6
	addsd	752(%rdi), %xmm0
	movl	%edx, %edx
	movapd	%xmm6, %xmm3
	subsd	env_curve(,%rdx,8), %xmm3
	ucomisd	%xmm6, %xmm0
	movsd	%xmm0, 664(%rdi)
	movsd	%xmm3, 720(%rdi)
	jb	.L3071
.L5698:
	movl	$4, 760(%rdi)
	jmp	.L3071
.L1116:
	movsd	.LC1(%rip), %xmm4
	addsd	272(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm11
	subsd	env_curve(,%rdx,8), %xmm11
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	movsd	%xmm11, 240(%rdi)
	jb	.L4884
.L5547:
	movl	$4, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1112
.L1347:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	424(%rdi), %xmm10
	movapd	%xmm4, %xmm11
	subsd	env_curve(,%rdx,8), %xmm11
	ucomisd	%xmm11, %xmm10
	movsd	%xmm11, 400(%rdi)
	jbe	.L4954
	movl	$2, 440(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L1346
.L3097:
	movsd	.LC1(%rip), %xmm6
	addsd	432(%rdi), %xmm0
	movl	%edx, %edx
	movapd	%xmm6, %xmm3
	subsd	env_curve(,%rdx,8), %xmm3
	ucomisd	%xmm6, %xmm0
	movsd	%xmm0, 344(%rdi)
	movsd	%xmm3, 400(%rdi)
	jb	.L3093
.L5700:
	movl	$4, 440(%rdi)
	jmp	.L3093
.L3245:
	movapd	%xmm2, %xmm4
	jmp	.L943
.L947:
	movsd	.LC1(%rip), %xmm2
	addsd	752(%rdi), %xmm5
	movl	%edx, %edx
	movapd	%xmm2, %xmm4
	subsd	env_curve(,%rdx,8), %xmm4
	ucomisd	%xmm2, %xmm5
	movsd	%xmm5, 664(%rdi)
	movsd	%xmm4, 720(%rdi)
	jb	.L943
.L5534:
	movl	$4, 760(%rdi)
	jmp	.L943
.L944:
	movsd	.LC1(%rip), %xmm2
	movl	%edx, %edx
	movsd	744(%rdi), %xmm6
	movapd	%xmm2, %xmm4
	subsd	env_curve(,%rdx,8), %xmm4
	ucomisd	%xmm4, %xmm6
	movsd	%xmm4, 720(%rdi)
	jbe	.L4830
	movl	$2, 760(%rdi)
	jmp	.L943
.L3116:
	movsd	.LC1(%rip), %xmm2
	movl	%edx, %edx
	movsd	104(%rdi), %xmm6
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm6
	movsd	%xmm0, 80(%rdi)
	jbe	.L5502
	movl	$2, 120(%rdi)
	jmp	.L3115
.L3105:
	movsd	.LC1(%rip), %xmm6
	movl	%edx, %edx
	movsd	264(%rdi), %xmm7
	movapd	%xmm6, %xmm3
	subsd	env_curve(,%rdx,8), %xmm3
	ucomisd	%xmm3, %xmm7
	movsd	%xmm3, 240(%rdi)
	jbe	.L5498
	movl	$2, 280(%rdi)
	jmp	.L3104
.L3108:
	movsd	.LC1(%rip), %xmm6
	addsd	272(%rdi), %xmm0
	movl	%edx, %edx
	movapd	%xmm6, %xmm3
	subsd	env_curve(,%rdx,8), %xmm3
	ucomisd	%xmm6, %xmm0
	movsd	%xmm0, 184(%rdi)
	movsd	%xmm3, 240(%rdi)
	jb	.L3104
.L5701:
	movl	$4, 280(%rdi)
	jmp	.L3104
.L1995:
	movsd	.LC1(%rip), %xmm12
	movl	%edx, %edx
	movsd	584(%rdi), %xmm13
	movapd	%xmm12, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm7, %xmm13
	movsd	%xmm7, 560(%rdi)
	jbe	.L5154
	movl	$2, 600(%rdi)
	jmp	.L1994
.L1985:
	movsd	.LC1(%rip), %xmm11
	addsd	752(%rdi), %xmm10
	movl	%edx, %edx
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 664(%rdi)
	movsd	%xmm8, 720(%rdi)
	jb	.L1981
.L5614:
	movl	$4, 760(%rdi)
	jmp	.L1981
.L1982:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	744(%rdi), %xmm12
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm8, %xmm12
	movsd	%xmm8, 720(%rdi)
	jbe	.L5150
	movl	$2, 760(%rdi)
	jmp	.L1981
.L2814:
	movsd	.LC1(%rip), %xmm2
	movl	%edx, %edx
	movsd	104(%rdi), %xmm9
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm9
	movsd	%xmm0, 80(%rdi)
	jbe	.L5406
	movl	$2, 120(%rdi)
	jmp	.L2813
.L2853:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	584(%rdi), %xmm12
	movapd	%xmm11, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm7, %xmm12
	movsd	%xmm7, 560(%rdi)
	jbe	.L5418
	movl	$2, 600(%rdi)
	jmp	.L2852
.L2619:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	584(%rdi), %xmm11
	movapd	%xmm10, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm7, %xmm11
	movsd	%xmm7, 560(%rdi)
	jbe	.L5346
	movl	$2, 600(%rdi)
	jmp	.L2618
.L3035:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	264(%rdi), %xmm11
	movapd	%xmm10, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm6, %xmm11
	movsd	%xmm6, 240(%rdi)
	jbe	.L5474
	movl	$2, 280(%rdi)
	jmp	.L3034
.L1298:
	movsd	.LC1(%rip), %xmm11
	addsd	112(%rdi), %xmm0
	movl	%edx, %edx
	movapd	%xmm11, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm11, %xmm0
	movsd	%xmm0, 24(%rdi)
	movsd	%xmm6, 80(%rdi)
	jb	.L1294
.L5561:
	movl	$4, 120(%rdi)
	jmp	.L1294
.L2060:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	744(%rdi), %xmm12
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm8, %xmm12
	movsd	%xmm8, 720(%rdi)
	jbe	.L5174
	movl	$2, 760(%rdi)
	jmp	.L2059
.L2216:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	744(%rdi), %xmm12
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm8, %xmm12
	movsd	%xmm8, 720(%rdi)
	jbe	.L5222
	movl	$2, 760(%rdi)
	jmp	.L2215
.L570:
	movsd	.LC1(%rip), %xmm4
	addsd	272(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm11
	subsd	env_curve(,%rdx,8), %xmm11
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	movsd	%xmm11, 240(%rdi)
	jb	.L4716
.L5505:
	movl	$4, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L566
.L1282:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	264(%rdi), %xmm12
	movapd	%xmm11, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm12
	movsd	%xmm10, 240(%rdi)
	jbe	.L4934
	movl	$2, 280(%rdi)
	jmp	.L1281
.L2999:
	movsd	.LC1(%rip), %xmm10
	addsd	752(%rdi), %xmm8
	movl	%edx, %edx
	movapd	%xmm10, %xmm3
	subsd	env_curve(,%rdx,8), %xmm3
	ucomisd	%xmm10, %xmm8
	movsd	%xmm8, 664(%rdi)
	movsd	%xmm3, 720(%rdi)
	jb	.L2995
.L5692:
	movl	$4, 760(%rdi)
	jmp	.L2995
.L2596:
	movsd	.LC1(%rip), %xmm10
	addsd	912(%rdi), %xmm4
	movl	%edx, %edx
	movapd	%xmm10, %xmm3
	subsd	env_curve(,%rdx,8), %xmm3
	ucomisd	%xmm10, %xmm4
	movsd	%xmm4, 824(%rdi)
	movsd	%xmm3, 880(%rdi)
	jb	.L5340
.L5661:
	movl	$4, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2592
.L2723:
	movsd	.LC1(%rip), %xmm9
	movl	%edx, %edx
	movsd	264(%rdi), %xmm11
	movapd	%xmm9, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm6, %xmm11
	movsd	%xmm6, 240(%rdi)
	jbe	.L5378
	movl	$2, 280(%rdi)
	jmp	.L2722
.L2710:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	424(%rdi), %xmm12
	movapd	%xmm11, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm7, %xmm12
	movsd	%xmm7, 400(%rdi)
	jbe	.L5374
	movl	$2, 440(%rdi)
	jmp	.L2709
.L2180:
	movsd	.LC1(%rip), %xmm10
	addsd	272(%rdi), %xmm9
	movl	%edx, %edx
	movapd	%xmm10, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm10, %xmm9
	movsd	%xmm9, 184(%rdi)
	movsd	%xmm6, 240(%rdi)
	jb	.L2176
.L5629:
	movl	$4, 280(%rdi)
	jmp	.L2176
.L2970:
	movsd	.LC1(%rip), %xmm2
	movl	%edx, %edx
	movsd	104(%rdi), %xmm10
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm10
	movsd	%xmm0, 80(%rdi)
	jbe	.L5454
	movl	$2, 120(%rdi)
	jmp	.L2969
.L2960:
	movsd	.LC1(%rip), %xmm10
	addsd	272(%rdi), %xmm9
	movl	%edx, %edx
	movapd	%xmm10, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm10, %xmm9
	movsd	%xmm9, 184(%rdi)
	movsd	%xmm6, 240(%rdi)
	jb	.L2956
.L5689:
	movl	$4, 280(%rdi)
	jmp	.L2956
.L583:
	movsd	.LC1(%rip), %xmm3
	addsd	112(%rdi), %xmm0
	movl	%edx, %edx
	movapd	%xmm3, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm3, %xmm0
	movsd	%xmm0, 24(%rdi)
	movsd	%xmm10, 80(%rdi)
	jb	.L579
.L5506:
	movl	$4, 120(%rdi)
	jmp	.L579
.L2372:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	744(%rdi), %xmm12
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm8, %xmm12
	movsd	%xmm8, 720(%rdi)
	jbe	.L5270
	movl	$2, 760(%rdi)
	jmp	.L2371
.L2362:
	movsd	.LC1(%rip), %xmm4
	addsd	912(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 824(%rdi)
	movsd	%xmm10, 880(%rdi)
	jb	.L5268
.L5643:
	movl	$4, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2358
.L2440:
	movsd	.LC1(%rip), %xmm4
	addsd	912(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 824(%rdi)
	movsd	%xmm10, 880(%rdi)
	jb	.L5292
.L5649:
	movl	$4, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2436
.L2648:
	movsd	.LC1(%rip), %xmm9
	addsd	272(%rdi), %xmm8
	movl	%edx, %edx
	movapd	%xmm9, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm9, %xmm8
	movsd	%xmm8, 184(%rdi)
	movsd	%xmm6, 240(%rdi)
	jb	.L2644
.L5665:
	movl	$4, 280(%rdi)
	jmp	.L2644
.L2645:
	movsd	.LC1(%rip), %xmm9
	movl	%edx, %edx
	movsd	264(%rdi), %xmm10
	movapd	%xmm9, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm6, %xmm10
	movsd	%xmm6, 240(%rdi)
	jbe	.L5354
	movl	$2, 280(%rdi)
	jmp	.L2644
.L2557:
	movsd	.LC1(%rip), %xmm10
	addsd	432(%rdi), %xmm9
	movl	%edx, %edx
	movapd	%xmm10, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm10, %xmm9
	movsd	%xmm9, 344(%rdi)
	movsd	%xmm8, 400(%rdi)
	jb	.L2553
.L5658:
	movl	$4, 440(%rdi)
	jmp	.L2553
.L2697:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	584(%rdi), %xmm12
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm8, %xmm12
	movsd	%xmm8, 560(%rdi)
	jbe	.L5370
	movl	$2, 600(%rdi)
	jmp	.L2696
.L2700:
	movsd	.LC1(%rip), %xmm11
	addsd	592(%rdi), %xmm7
	movl	%edx, %edx
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm11, %xmm7
	movsd	%xmm7, 504(%rdi)
	movsd	%xmm8, 560(%rdi)
	jb	.L2696
.L5669:
	movl	$4, 600(%rdi)
	jmp	.L2696
.L2765:
	movsd	.LC1(%rip), %xmm11
	addsd	752(%rdi), %xmm10
	movl	%edx, %edx
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 664(%rdi)
	movsd	%xmm8, 720(%rdi)
	jb	.L2761
.L5674:
	movl	$4, 760(%rdi)
	jmp	.L2761
.L2908:
	movsd	.LC1(%rip), %xmm4
	addsd	912(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 824(%rdi)
	movsd	%xmm10, 880(%rdi)
	jb	.L5436
.L5685:
	movl	$4, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2904
.L2684:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	744(%rdi), %xmm12
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm8, %xmm12
	movsd	%xmm8, 720(%rdi)
	jbe	.L5366
	movl	$2, 760(%rdi)
	jmp	.L2683
.L2918:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	744(%rdi), %xmm12
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm8, %xmm12
	movsd	%xmm8, 720(%rdi)
	jbe	.L5438
	movl	$2, 760(%rdi)
	jmp	.L2917
.L2788:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	424(%rdi), %xmm12
	movapd	%xmm11, %xmm9
	subsd	env_curve(,%rdx,8), %xmm9
	ucomisd	%xmm9, %xmm12
	movsd	%xmm9, 400(%rdi)
	jbe	.L5398
	movl	$2, 440(%rdi)
	jmp	.L2787
.L2791:
	movsd	.LC1(%rip), %xmm11
	addsd	432(%rdi), %xmm10
	movl	%edx, %edx
	movapd	%xmm11, %xmm9
	subsd	env_curve(,%rdx,8), %xmm9
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 344(%rdi)
	movsd	%xmm9, 400(%rdi)
	jb	.L2787
.L5676:
	movl	$4, 440(%rdi)
	jmp	.L2787
.L2778:
	movsd	.LC1(%rip), %xmm11
	addsd	592(%rdi), %xmm10
	movl	%edx, %edx
	movapd	%xmm11, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 504(%rdi)
	movsd	%xmm7, 560(%rdi)
	jb	.L2774
.L5675:
	movl	$4, 600(%rdi)
	jmp	.L2774
.L2817:
	movsd	.LC1(%rip), %xmm2
	addsd	112(%rdi), %xmm7
	movl	%edx, %edx
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm2, %xmm7
	movsd	%xmm7, 24(%rdi)
	movsd	%xmm0, 80(%rdi)
	jb	.L2813
.L5678:
	movl	$4, 120(%rdi)
	jmp	.L2813
.L2973:
	movsd	.LC1(%rip), %xmm2
	addsd	112(%rdi), %xmm9
	movl	%edx, %edx
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm2, %xmm9
	movsd	%xmm9, 24(%rdi)
	movsd	%xmm0, 80(%rdi)
	jb	.L2969
.L5690:
	movl	$4, 120(%rdi)
	jmp	.L2969
.L1295:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	104(%rdi), %xmm12
	movapd	%xmm11, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm6, %xmm12
	movsd	%xmm6, 80(%rdi)
	jbe	.L4938
	movl	$2, 120(%rdi)
	jmp	.L1294
.L1285:
	movsd	.LC1(%rip), %xmm11
	addsd	272(%rdi), %xmm6
	movl	%edx, %edx
	movapd	%xmm11, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm11, %xmm6
	movsd	%xmm6, 184(%rdi)
	movsd	%xmm10, 240(%rdi)
	jb	.L1281
.L5560:
	movl	$4, 280(%rdi)
	jmp	.L1281
.L2671:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	904(%rdi), %xmm11
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm11
	movsd	%xmm10, 880(%rdi)
	jbe	.L5362
	movl	$2, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2670
.L2749:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	904(%rdi), %xmm11
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm11
	movsd	%xmm10, 880(%rdi)
	jbe	.L5386
	movl	$2, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2748
.L2674:
	movsd	.LC1(%rip), %xmm4
	addsd	912(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 824(%rdi)
	movsd	%xmm10, 880(%rdi)
	jb	.L5364
.L5667:
	movl	$4, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2670
.L1959:
	movsd	.LC1(%rip), %xmm2
	addsd	112(%rdi), %xmm6
	movl	%edx, %edx
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm2, %xmm6
	movsd	%xmm6, 24(%rdi)
	movsd	%xmm0, 80(%rdi)
	jb	.L1955
.L5612:
	movl	$4, 120(%rdi)
	jmp	.L1955
.L2505:
	movsd	.LC1(%rip), %xmm2
	addsd	112(%rdi), %xmm9
	movl	%edx, %edx
	movapd	%xmm2, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm2, %xmm9
	movsd	%xmm9, 24(%rdi)
	movsd	%xmm0, 80(%rdi)
	jb	.L2501
.L5654:
	movl	$4, 120(%rdi)
	jmp	.L2501
.L2570:
	movsd	.LC1(%rip), %xmm10
	addsd	272(%rdi), %xmm9
	movl	%edx, %edx
	movapd	%xmm10, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm10, %xmm9
	movsd	%xmm9, 184(%rdi)
	movsd	%xmm6, 240(%rdi)
	jb	.L2566
.L5659:
	movl	$4, 280(%rdi)
	jmp	.L2566
.L2996:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	744(%rdi), %xmm11
	movapd	%xmm10, %xmm3
	subsd	env_curve(,%rdx,8), %xmm3
	ucomisd	%xmm3, %xmm11
	movsd	%xmm3, 720(%rdi)
	jbe	.L5462
	movl	$2, 760(%rdi)
	jmp	.L2995
.L2606:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	744(%rdi), %xmm12
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm8, %xmm12
	movsd	%xmm8, 720(%rdi)
	jbe	.L5342
	movl	$2, 760(%rdi)
	jmp	.L2605
.L2804:
	movsd	.LC1(%rip), %xmm9
	addsd	272(%rdi), %xmm7
	movl	%edx, %edx
	movapd	%xmm9, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm9, %xmm7
	movsd	%xmm7, 184(%rdi)
	movsd	%xmm6, 240(%rdi)
	jb	.L2800
.L5677:
	movl	$4, 280(%rdi)
	jmp	.L2800
.L2752:
	movsd	.LC1(%rip), %xmm4
	addsd	912(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 824(%rdi)
	movsd	%xmm10, 880(%rdi)
	jb	.L5388
.L5673:
	movl	$4, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2748
.L2775:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	584(%rdi), %xmm12
	movapd	%xmm11, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm7, %xmm12
	movsd	%xmm7, 560(%rdi)
	jbe	.L5394
	movl	$2, 600(%rdi)
	jmp	.L2774
.L2762:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	744(%rdi), %xmm12
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm8, %xmm12
	movsd	%xmm8, 720(%rdi)
	jbe	.L5390
	movl	$2, 760(%rdi)
	jmp	.L2761
.L2320:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	424(%rdi), %xmm12
	movapd	%xmm11, %xmm9
	subsd	env_curve(,%rdx,8), %xmm9
	ucomisd	%xmm9, %xmm12
	movsd	%xmm9, 400(%rdi)
	jbe	.L5254
	movl	$2, 440(%rdi)
	jmp	.L2319
.L684:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	744(%rdi), %xmm12
	movapd	%xmm11, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm0, %xmm12
	movsd	%xmm0, 720(%rdi)
	jbe	.L4750
	movl	$2, 760(%rdi)
	jmp	.L683
.L2827:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	904(%rdi), %xmm11
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm11
	movsd	%xmm10, 880(%rdi)
	jbe	.L5410
	movl	$2, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2826
.L2843:
	movsd	.LC1(%rip), %xmm11
	addsd	752(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm11, %xmm3
	movsd	%xmm3, 664(%rdi)
	movsd	%xmm8, 720(%rdi)
	jb	.L2839
.L5680:
	movl	$4, 760(%rdi)
	jmp	.L2839
.L2310:
	movsd	.LC1(%rip), %xmm12
	addsd	592(%rdi), %xmm10
	movl	%edx, %edx
	movapd	%xmm12, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm12, %xmm10
	movsd	%xmm10, 504(%rdi)
	movsd	%xmm7, 560(%rdi)
	jb	.L2306
.L5639:
	movl	$4, 600(%rdi)
	jmp	.L2306
.L2856:
	movsd	.LC1(%rip), %xmm11
	addsd	592(%rdi), %xmm8
	movl	%edx, %edx
	movapd	%xmm11, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm11, %xmm8
	movsd	%xmm8, 504(%rdi)
	movsd	%xmm7, 560(%rdi)
	jb	.L2852
.L5681:
	movl	$4, 600(%rdi)
	jmp	.L2852
.L2830:
	movsd	.LC1(%rip), %xmm4
	addsd	912(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 824(%rdi)
	movsd	%xmm10, 880(%rdi)
	jb	.L5412
.L5679:
	movl	$4, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2826
.L2905:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	904(%rdi), %xmm11
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm11
	movsd	%xmm10, 880(%rdi)
	jbe	.L5434
	movl	$2, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2904
.L2437:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	904(%rdi), %xmm11
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm11
	movsd	%xmm10, 880(%rdi)
	jbe	.L5290
	movl	$2, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L2436
.L2840:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	744(%rdi), %xmm12
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm8, %xmm12
	movsd	%xmm8, 720(%rdi)
	jbe	.L5414
	movl	$2, 760(%rdi)
	jmp	.L2839
.L671:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	904(%rdi), %xmm12
	movapd	%xmm11, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm5, %xmm12
	movsd	%xmm5, 880(%rdi)
	jbe	.L4746
	movl	$2, 920(%rdi)
	jmp	.L670
.L2632:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	424(%rdi), %xmm11
	movapd	%xmm10, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm8, %xmm11
	movsd	%xmm8, 400(%rdi)
	jbe	.L5350
	movl	$2, 440(%rdi)
	jmp	.L2631
.L580:
	movsd	.LC1(%rip), %xmm3
	movl	%edx, %edx
	movsd	104(%rdi), %xmm12
	movapd	%xmm3, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm12
	movsd	%xmm10, 80(%rdi)
	jbe	.L4718
	movl	$2, 120(%rdi)
	jmp	.L579
.L2609:
	movsd	.LC1(%rip), %xmm11
	addsd	752(%rdi), %xmm10
	movl	%edx, %edx
	movapd	%xmm11, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 664(%rdi)
	movsd	%xmm8, 720(%rdi)
	jb	.L2605
.L5662:
	movl	$4, 760(%rdi)
	jmp	.L2605
.L3061:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	904(%rdi), %xmm6
	movapd	%xmm4, %xmm3
	subsd	env_curve(,%rdx,8), %xmm3
	ucomisd	%xmm3, %xmm6
	movsd	%xmm3, 880(%rdi)
	jbe	.L5482
	movl	$2, 920(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L3060
.L567:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	264(%rdi), %xmm10
	movapd	%xmm4, %xmm11
	subsd	env_curve(,%rdx,8), %xmm11
	ucomisd	%xmm11, %xmm10
	movsd	%xmm11, 240(%rdi)
	jbe	.L4714
	movl	$2, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L566
.L869:
	movsd	.LC1(%rip), %xmm2
	addsd	592(%rdi), %xmm6
	movl	%edx, %edx
	movapd	%xmm2, %xmm1
	subsd	env_curve(,%rdx,8), %xmm1
	ucomisd	%xmm2, %xmm6
	movsd	%xmm6, 504(%rdi)
	movsd	%xmm1, 560(%rdi)
	jb	.L865
.L5528:
	movl	$4, 600(%rdi)
	jmp	.L865
.L658:
	movsd	.LC1(%rip), %xmm11
	movl	%edx, %edx
	movsd	104(%rdi), %xmm12
	movapd	%xmm11, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm12
	movsd	%xmm10, 80(%rdi)
	jbe	.L4742
	movl	$2, 120(%rdi)
	jmp	.L657
.L1324:
	movsd	.LC1(%rip), %xmm10
	addsd	752(%rdi), %xmm8
	movl	%edx, %edx
	movapd	%xmm10, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm10, %xmm8
	movsd	%xmm8, 664(%rdi)
	movsd	%xmm5, 720(%rdi)
	jb	.L1320
.L5563:
	movl	$4, 760(%rdi)
	jmp	.L1320
.L661:
	movsd	.LC1(%rip), %xmm11
	addsd	112(%rdi), %xmm0
	movl	%edx, %edx
	movapd	%xmm11, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm11, %xmm0
	movsd	%xmm0, 24(%rdi)
	movsd	%xmm10, 80(%rdi)
	jb	.L657
.L5512:
	movl	$4, 120(%rdi)
	jmp	.L657
.L775:
	movsd	.LC1(%rip), %xmm8
	movl	%edx, %edx
	movsd	744(%rdi), %xmm10
	movapd	%xmm8, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm5, %xmm10
	movsd	%xmm5, 720(%rdi)
	jbe	.L4778
	movl	$2, 760(%rdi)
	jmp	.L774
.L765:
	movsd	.LC1(%rip), %xmm10
	addsd	912(%rdi), %xmm5
	movl	%edx, %edx
	movapd	%xmm10, %xmm0
	subsd	env_curve(,%rdx,8), %xmm0
	ucomisd	%xmm10, %xmm5
	movsd	%xmm5, 824(%rdi)
	movsd	%xmm0, 880(%rdi)
	jb	.L761
.L5520:
	movl	$4, 920(%rdi)
	jmp	.L761
.L645:
	movsd	.LC1(%rip), %xmm4
	movl	%edx, %edx
	movsd	264(%rdi), %xmm11
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm10, %xmm11
	movsd	%xmm10, 240(%rdi)
	jbe	.L4738
	movl	$2, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L644
.L648:
	movsd	.LC1(%rip), %xmm4
	addsd	272(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm4, %xmm10
	subsd	env_curve(,%rdx,8), %xmm10
	ucomisd	%xmm4, %xmm3
	movsd	%xmm3, 184(%rdi)
	movsd	%xmm10, 240(%rdi)
	jb	.L4740
.L5511:
	movl	$4, 280(%rdi)
	xorpd	%xmm4, %xmm4
	jmp	.L644
.L674:
	movsd	.LC1(%rip), %xmm11
	addsd	912(%rdi), %xmm0
	movl	%edx, %edx
	movapd	%xmm11, %xmm5
	subsd	env_curve(,%rdx,8), %xmm5
	ucomisd	%xmm11, %xmm0
	movsd	%xmm0, 824(%rdi)
	movsd	%xmm5, 880(%rdi)
	jb	.L670
.L5513:
	movl	$4, 920(%rdi)
	jmp	.L670
.L2635:
	movsd	.LC1(%rip), %xmm10
	addsd	432(%rdi), %xmm9
	movl	%edx, %edx
	movapd	%xmm10, %xmm8
	subsd	env_curve(,%rdx,8), %xmm8
	ucomisd	%xmm10, %xmm9
	movsd	%xmm9, 344(%rdi)
	movsd	%xmm8, 400(%rdi)
	jb	.L2631
.L5664:
	movl	$4, 440(%rdi)
	jmp	.L2631
.L2622:
	movsd	.LC1(%rip), %xmm10
	addsd	592(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm10, %xmm7
	subsd	env_curve(,%rdx,8), %xmm7
	ucomisd	%xmm10, %xmm3
	movsd	%xmm3, 504(%rdi)
	movsd	%xmm7, 560(%rdi)
	jb	.L2618
.L5663:
	movl	$4, 600(%rdi)
	jmp	.L2618
.L2567:
	movsd	.LC1(%rip), %xmm10
	movl	%edx, %edx
	movsd	264(%rdi), %xmm11
	movapd	%xmm10, %xmm6
	subsd	env_curve(,%rdx,8), %xmm6
	ucomisd	%xmm6, %xmm11
	movsd	%xmm6, 240(%rdi)
	jbe	.L5330
	movl	$2, 280(%rdi)
	jmp	.L2566
.L4754:
	addsd	576(%rdi), %xmm7
	ucomisd	%xmm8, %xmm7
	movsd	%xmm7, 504(%rdi)
	jnb	.L5515
	jmp	.L696
.L4922:
	addsd	576(%rdi), %xmm7
	ucomisd	%xmm8, %xmm7
	movsd	%xmm7, 504(%rdi)
	jnb	.L5557
	jmp	.L1242
.L5358:
	addsd	96(%rdi), %xmm6
	ucomisd	%xmm2, %xmm6
	movsd	%xmm6, 24(%rdi)
	jnb	.L5666
	jmp	.L2657
.L5118:
	addsd	96(%rdi), %xmm6
	ucomisd	%xmm2, %xmm6
	movsd	%xmm6, 24(%rdi)
	jnb	.L5606
	jmp	.L1879
.L5354:
	addsd	256(%rdi), %xmm8
	ucomisd	%xmm9, %xmm8
	movsd	%xmm8, 184(%rdi)
	jnb	.L5665
	jmp	.L2644
.L4746:
	addsd	896(%rdi), %xmm0
	ucomisd	%xmm11, %xmm0
	movsd	%xmm0, 824(%rdi)
	jnb	.L5513
	jmp	.L670
.L5350:
	addsd	416(%rdi), %xmm9
	ucomisd	%xmm10, %xmm9
	movsd	%xmm9, 344(%rdi)
	jnb	.L5664
	jmp	.L2631
.L5302:
	addsd	416(%rdi), %xmm9
	ucomisd	%xmm10, %xmm9
	movsd	%xmm9, 344(%rdi)
	jnb	.L5652
	jmp	.L2475
.L5254:
	addsd	416(%rdi), %xmm10
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 344(%rdi)
	jnb	.L5640
	jmp	.L2319
.L5414:
	addsd	736(%rdi), %xmm3
	ucomisd	%xmm11, %xmm3
	movsd	%xmm3, 664(%rdi)
	jnb	.L5680
	jmp	.L2839
.L4778:
	addsd	736(%rdi), %xmm0
	ucomisd	%xmm8, %xmm0
	movsd	%xmm0, 664(%rdi)
	jnb	.L5521
	jmp	.L774
.L5222:
	addsd	736(%rdi), %xmm10
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 664(%rdi)
	jnb	.L5632
	jmp	.L2215
.L4742:
	addsd	96(%rdi), %xmm0
	ucomisd	%xmm11, %xmm0
	movsd	%xmm0, 24(%rdi)
	jnb	.L5512
	jmp	.L657
.L5278:
	addsd	416(%rdi), %xmm9
	ucomisd	%xmm11, %xmm9
	movsd	%xmm9, 344(%rdi)
	jnb	.L5646
	jmp	.L2397
.L4994:
	addsd	96(%rdi), %xmm9
	ucomisd	%xmm11, %xmm9
	movsd	%xmm9, 24(%rdi)
	jnb	.L5575
	jmp	.L1476
.L5402:
	addsd	256(%rdi), %xmm7
	ucomisd	%xmm9, %xmm7
	movsd	%xmm7, 184(%rdi)
	jnb	.L5677
	jmp	.L2800
.L5154:
	addsd	576(%rdi), %xmm10
	ucomisd	%xmm12, %xmm10
	movsd	%xmm10, 504(%rdi)
	jnb	.L5615
	jmp	.L1994
.L4986:
	addsd	736(%rdi), %xmm10
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 664(%rdi)
	jnb	.L5573
	jmp	.L1450
.L4990:
	addsd	576(%rdi), %xmm7
	ucomisd	%xmm11, %xmm7
	movsd	%xmm7, 504(%rdi)
	jnb	.L5574
	jmp	.L1463
.L4890:
	addsd	896(%rdi), %xmm0
	ucomisd	%xmm11, %xmm0
	movsd	%xmm0, 824(%rdi)
	jnb	.L5549
	jmp	.L1138
.L5494:
	addsd	416(%rdi), %xmm0
	ucomisd	%xmm6, %xmm0
	movsd	%xmm0, 344(%rdi)
	jnb	.L5700
	jmp	.L3093
.L5066:
	addsd	96(%rdi), %xmm0
	ucomisd	%xmm9, %xmm0
	movsd	%xmm0, 24(%rdi)
	jnb	.L5593
	jmp	.L1710
.L4798:
	addsd	896(%rdi), %xmm6
	ucomisd	%xmm10, %xmm6
	movsd	%xmm6, 824(%rdi)
	jnb	.L5526
	jmp	.L839
.L4970:
	addsd	736(%rdi), %xmm0
	ucomisd	%xmm8, %xmm0
	movsd	%xmm0, 664(%rdi)
	jnb	.L5569
	jmp	.L1398
.L4766:
	addsd	256(%rdi), %xmm3
	ucomisd	%xmm6, %xmm3
	movsd	%xmm3, 184(%rdi)
	jnb	.L5518
	jmp	.L735
.L5318:
	addsd	736(%rdi), %xmm10
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 664(%rdi)
	jnb	.L5656
	jmp	.L2527
.L4910:
	addsd	96(%rdi), %xmm0
	ucomisd	%xmm11, %xmm0
	movsd	%xmm0, 24(%rdi)
	jnb	.L5554
	jmp	.L1203
.L5490:
	addsd	576(%rdi), %xmm0
	ucomisd	%xmm6, %xmm0
	movsd	%xmm0, 504(%rdi)
	jnb	.L5699
	jmp	.L3082
.L5214:
	addsd	96(%rdi), %xmm9
	ucomisd	%xmm2, %xmm9
	movsd	%xmm9, 24(%rdi)
	jnb	.L5630
	jmp	.L2189
.L5210:
	addsd	256(%rdi), %xmm9
	ucomisd	%xmm10, %xmm9
	movsd	%xmm9, 184(%rdi)
	jnb	.L5629
	jmp	.L2176
.L5198:
	addsd	736(%rdi), %xmm3
	ucomisd	%xmm11, %xmm3
	movsd	%xmm3, 664(%rdi)
	jnb	.L5626
	jmp	.L2137
.L5202:
	addsd	576(%rdi), %xmm11
	ucomisd	%xmm12, %xmm11
	movsd	%xmm11, 504(%rdi)
	jnb	.L5627
	jmp	.L2150
.L4942:
	addsd	896(%rdi), %xmm5
	ucomisd	%xmm10, %xmm5
	movsd	%xmm5, 824(%rdi)
	jnb	.L5562
	jmp	.L1307
.L4946:
	addsd	736(%rdi), %xmm8
	ucomisd	%xmm10, %xmm8
	movsd	%xmm8, 664(%rdi)
	jnb	.L5563
	jmp	.L1320
.L5206:
	addsd	416(%rdi), %xmm10
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 344(%rdi)
	jnb	.L5628
	jmp	.L2163
.L5366:
	addsd	736(%rdi), %xmm3
	ucomisd	%xmm11, %xmm3
	movsd	%xmm3, 664(%rdi)
	jnb	.L5668
	jmp	.L2683
.L5438:
	addsd	736(%rdi), %xmm10
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 664(%rdi)
	jnb	.L5686
	jmp	.L2917
.L5326:
	addsd	416(%rdi), %xmm9
	ucomisd	%xmm10, %xmm9
	movsd	%xmm9, 344(%rdi)
	jnb	.L5658
	jmp	.L2553
.L5398:
	addsd	416(%rdi), %xmm10
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 344(%rdi)
	jnb	.L5676
	jmp	.L2787
.L4938:
	addsd	96(%rdi), %xmm0
	ucomisd	%xmm11, %xmm0
	movsd	%xmm0, 24(%rdi)
	jnb	.L5561
	jmp	.L1294
.L5474:
	addsd	256(%rdi), %xmm9
	ucomisd	%xmm10, %xmm9
	movsd	%xmm9, 184(%rdi)
	jnb	.L5695
	jmp	.L3034
.L5374:
	addsd	416(%rdi), %xmm9
	ucomisd	%xmm11, %xmm9
	movsd	%xmm9, 344(%rdi)
	jnb	.L5670
	jmp	.L2709
.L5394:
	addsd	576(%rdi), %xmm10
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 504(%rdi)
	jnb	.L5675
	jmp	.L2774
.L5450:
	addsd	256(%rdi), %xmm9
	ucomisd	%xmm10, %xmm9
	movsd	%xmm9, 184(%rdi)
	jnb	.L5689
	jmp	.L2956
.L5270:
	addsd	736(%rdi), %xmm10
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 664(%rdi)
	jnb	.L5644
	jmp	.L2371
.L5330:
	addsd	256(%rdi), %xmm9
	ucomisd	%xmm10, %xmm9
	movsd	%xmm9, 184(%rdi)
	jnb	.L5659
	jmp	.L2566
.L5462:
	addsd	736(%rdi), %xmm8
	ucomisd	%xmm10, %xmm8
	movsd	%xmm8, 664(%rdi)
	jnb	.L5692
	jmp	.L2995
.L5058:
	addsd	736(%rdi), %xmm8
	ucomisd	%xmm11, %xmm8
	movsd	%xmm8, 664(%rdi)
	jnb	.L5591
	jmp	.L1684
.L5062:
	addsd	576(%rdi), %xmm7
	ucomisd	%xmm10, %xmm7
	movsd	%xmm7, 504(%rdi)
	jnb	.L5592
	jmp	.L1697
.L5078:
	addsd	896(%rdi), %xmm3
	ucomisd	%xmm11, %xmm3
	movsd	%xmm3, 824(%rdi)
	jnb	.L5596
	jmp	.L1749
.L5086:
	addsd	576(%rdi), %xmm7
	ucomisd	%xmm11, %xmm7
	movsd	%xmm7, 504(%rdi)
	jnb	.L5598
	jmp	.L1775
.L5038:
	addsd	576(%rdi), %xmm7
	ucomisd	%xmm11, %xmm7
	movsd	%xmm7, 504(%rdi)
	jnb	.L5586
	jmp	.L1619
.L5082:
	addsd	736(%rdi), %xmm8
	ucomisd	%xmm11, %xmm8
	movsd	%xmm8, 664(%rdi)
	jnb	.L5597
	jmp	.L1762
.L4774:
	addsd	896(%rdi), %xmm5
	ucomisd	%xmm10, %xmm5
	movsd	%xmm5, 824(%rdi)
	jnb	.L5520
	jmp	.L761
.L5054:
	addsd	896(%rdi), %xmm0
	ucomisd	%xmm11, %xmm0
	movsd	%xmm0, 824(%rdi)
	jnb	.L5590
	jmp	.L1671
.L5030:
	addsd	896(%rdi), %xmm3
	ucomisd	%xmm11, %xmm3
	movsd	%xmm3, 824(%rdi)
	jnb	.L5584
	jmp	.L1593
.L5042:
	addsd	96(%rdi), %xmm0
	ucomisd	%xmm9, %xmm0
	movsd	%xmm0, 24(%rdi)
	jnb	.L5587
	jmp	.L1632
.L5010:
	addsd	736(%rdi), %xmm8
	ucomisd	%xmm11, %xmm8
	movsd	%xmm8, 664(%rdi)
	jnb	.L5579
	jmp	.L1528
.L5090:
	addsd	416(%rdi), %xmm9
	ucomisd	%xmm11, %xmm9
	movsd	%xmm9, 344(%rdi)
	jnb	.L5599
	jmp	.L1788
.L5110:
	addsd	576(%rdi), %xmm7
	ucomisd	%xmm10, %xmm7
	movsd	%xmm7, 504(%rdi)
	jnb	.L5604
	jmp	.L1853
.L4814:
	addsd	96(%rdi), %xmm0
	ucomisd	%xmm3, %xmm0
	movsd	%xmm0, 24(%rdi)
	jnb	.L5530
	jmp	.L891
.L4838:
	addsd	96(%rdi), %xmm0
	ucomisd	%xmm3, %xmm0
	movsd	%xmm0, 24(%rdi)
	jnb	.L5536
	jmp	.L969
.L5126:
	addsd	896(%rdi), %xmm0
	ucomisd	%xmm3, %xmm0
	movsd	%xmm0, 824(%rdi)
	jnb	.L5608
	jmp	.L1905
.L5130:
	addsd	736(%rdi), %xmm3
	ucomisd	%xmm8, %xmm3
	movsd	%xmm3, 664(%rdi)
	jnb	.L5609
	jmp	.L1918
.L4826:
	addsd	896(%rdi), %xmm6
	ucomisd	%xmm9, %xmm6
	movsd	%xmm6, 824(%rdi)
	jnb	.L5533
	jmp	.L930
.L5142:
	addsd	96(%rdi), %xmm6
	ucomisd	%xmm2, %xmm6
	movsd	%xmm6, 24(%rdi)
	jnb	.L5612
	jmp	.L1955
.L5158:
	addsd	416(%rdi), %xmm10
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 344(%rdi)
	jnb	.L5616
	jmp	.L2007
.L5106:
	addsd	736(%rdi), %xmm8
	ucomisd	%xmm11, %xmm8
	movsd	%xmm8, 664(%rdi)
	jnb	.L5603
	jmp	.L1840
.L4822:
	addsd	416(%rdi), %xmm9
	ucomisd	%xmm11, %xmm9
	movsd	%xmm9, 344(%rdi)
	jnb	.L5532
	jmp	.L917
.L4966:
	addsd	896(%rdi), %xmm5
	ucomisd	%xmm10, %xmm5
	movsd	%xmm5, 824(%rdi)
	jnb	.L5568
	jmp	.L1385
.L4850:
	addsd	896(%rdi), %xmm6
	ucomisd	%xmm9, %xmm6
	movsd	%xmm6, 824(%rdi)
	jnb	.L5539
	jmp	.L1008
.L4854:
	addsd	736(%rdi), %xmm6
	ucomisd	%xmm2, %xmm6
	movsd	%xmm6, 664(%rdi)
	jnb	.L5540
	jmp	.L1021
.L4846:
	addsd	416(%rdi), %xmm9
	ucomisd	%xmm11, %xmm9
	movsd	%xmm9, 344(%rdi)
	jnb	.L5538
	jmp	.L995
.L5418:
	addsd	576(%rdi), %xmm8
	ucomisd	%xmm11, %xmm8
	movsd	%xmm8, 504(%rdi)
	jnb	.L5681
	jmp	.L2852
.L4718:
	addsd	96(%rdi), %xmm0
	ucomisd	%xmm3, %xmm0
	movsd	%xmm0, 24(%rdi)
	jnb	.L5506
	jmp	.L579
.L5150:
	addsd	736(%rdi), %xmm10
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 664(%rdi)
	jnb	.L5614
	jmp	.L1981
.L5342:
	addsd	736(%rdi), %xmm10
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 664(%rdi)
	jnb	.L5662
	jmp	.L2605
.L5466:
	addsd	576(%rdi), %xmm8
	ucomisd	%xmm10, %xmm8
	movsd	%xmm8, 504(%rdi)
	jnb	.L5693
	jmp	.L3008
.L5470:
	addsd	416(%rdi), %xmm9
	ucomisd	%xmm10, %xmm9
	movsd	%xmm9, 344(%rdi)
	jnb	.L5694
	jmp	.L3021
.L4726:
	addsd	736(%rdi), %xmm5
	ucomisd	%xmm8, %xmm5
	movsd	%xmm5, 664(%rdi)
	jnb	.L5508
	jmp	.L605
.L5406:
	addsd	96(%rdi), %xmm7
	ucomisd	%xmm2, %xmm7
	movsd	%xmm7, 24(%rdi)
	jnb	.L5678
	jmp	.L2813
.L4750:
	addsd	736(%rdi), %xmm8
	ucomisd	%xmm11, %xmm8
	movsd	%xmm8, 664(%rdi)
	jnb	.L5514
	jmp	.L683
.L5174:
	addsd	736(%rdi), %xmm10
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 664(%rdi)
	jnb	.L5620
	jmp	.L2059
.L5390:
	addsd	736(%rdi), %xmm10
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 664(%rdi)
	jnb	.L5674
	jmp	.L2761
.L4886:
	addsd	96(%rdi), %xmm0
	ucomisd	%xmm3, %xmm0
	movsd	%xmm0, 24(%rdi)
	jnb	.L5548
	jmp	.L1125
.L4934:
	addsd	256(%rdi), %xmm6
	ucomisd	%xmm11, %xmm6
	movsd	%xmm6, 184(%rdi)
	jnb	.L5560
	jmp	.L1281
.L5454:
	addsd	96(%rdi), %xmm9
	ucomisd	%xmm2, %xmm9
	movsd	%xmm9, 24(%rdi)
	jnb	.L5690
	jmp	.L2969
.L5114:
	addsd	416(%rdi), %xmm9
	ucomisd	%xmm10, %xmm9
	movsd	%xmm9, 344(%rdi)
	jnb	.L5605
	jmp	.L1866
.L5426:
	addsd	256(%rdi), %xmm7
	ucomisd	%xmm8, %xmm7
	movsd	%xmm7, 184(%rdi)
	jnb	.L5683
	jmp	.L2878
.L5442:
	addsd	576(%rdi), %xmm8
	ucomisd	%xmm10, %xmm8
	movsd	%xmm8, 504(%rdi)
	jnb	.L5687
	jmp	.L2930
.L5346:
	addsd	576(%rdi), %xmm3
	ucomisd	%xmm10, %xmm3
	movsd	%xmm3, 504(%rdi)
	jnb	.L5663
	jmp	.L2618
.L5486:
	addsd	736(%rdi), %xmm0
	ucomisd	%xmm6, %xmm0
	movsd	%xmm0, 664(%rdi)
	jnb	.L5698
	jmp	.L3071
.L5502:
	addsd	96(%rdi), %xmm3
	ucomisd	%xmm2, %xmm3
	movsd	%xmm3, 24(%rdi)
	jnb	.L5702
	jmp	.L3115
.L4830:
	addsd	736(%rdi), %xmm5
	ucomisd	%xmm2, %xmm5
	movsd	%xmm5, 664(%rdi)
	jnb	.L5534
	jmp	.L943
.L5498:
	addsd	256(%rdi), %xmm0
	ucomisd	%xmm6, %xmm0
	movsd	%xmm0, 184(%rdi)
	jnb	.L5701
	jmp	.L3104
.L5230:
	addsd	416(%rdi), %xmm10
	ucomisd	%xmm12, %xmm10
	movsd	%xmm10, 344(%rdi)
	jnb	.L5634
	jmp	.L2241
.L5378:
	addsd	256(%rdi), %xmm8
	ucomisd	%xmm9, %xmm8
	movsd	%xmm8, 184(%rdi)
	jnb	.L5671
	jmp	.L2722
.L5370:
	addsd	576(%rdi), %xmm7
	ucomisd	%xmm11, %xmm7
	movsd	%xmm7, 504(%rdi)
	jnb	.L5669
	jmp	.L2696
.L4902:
	addsd	416(%rdi), %xmm5
	ucomisd	%xmm2, %xmm5
	movsd	%xmm5, 344(%rdi)
	jnb	.L5552
	jmp	.L1177
.L4914:
	addsd	896(%rdi), %xmm0
	ucomisd	%xmm11, %xmm0
	movsd	%xmm0, 824(%rdi)
	jnb	.L5555
	jmp	.L1216
.L4918:
	addsd	736(%rdi), %xmm8
	ucomisd	%xmm11, %xmm8
	movsd	%xmm8, 664(%rdi)
	jnb	.L5556
	jmp	.L1229
.L5478:
	addsd	96(%rdi), %xmm9
	ucomisd	%xmm2, %xmm9
	movsd	%xmm9, 24(%rdi)
	jnb	.L5696
	jmp	.L3047
.L4790:
	addsd	256(%rdi), %xmm3
	ucomisd	%xmm11, %xmm3
	movsd	%xmm3, 184(%rdi)
	jnb	.L5524
	jmp	.L813
.L5430:
	addsd	96(%rdi), %xmm7
	ucomisd	%xmm2, %xmm7
	movsd	%xmm7, 24(%rdi)
	jnb	.L5684
	jmp	.L2891
.L5446:
	addsd	416(%rdi), %xmm9
	ucomisd	%xmm10, %xmm9
	movsd	%xmm9, 344(%rdi)
	jnb	.L5688
	jmp	.L2943
.L5306:
	addsd	256(%rdi), %xmm9
	ucomisd	%xmm10, %xmm9
	movsd	%xmm9, 184(%rdi)
	jnb	.L5653
	jmp	.L2488
.L5422:
	addsd	416(%rdi), %xmm9
	ucomisd	%xmm11, %xmm9
	movsd	%xmm9, 344(%rdi)
	jnb	.L5682
	jmp	.L2865
.L5226:
	addsd	576(%rdi), %xmm10
	ucomisd	%xmm12, %xmm10
	movsd	%xmm10, 504(%rdi)
	jnb	.L5633
	jmp	.L2228
.L5274:
	addsd	576(%rdi), %xmm3
	ucomisd	%xmm11, %xmm3
	movsd	%xmm3, 504(%rdi)
	jnb	.L5645
	jmp	.L2384
.L5178:
	addsd	576(%rdi), %xmm3
	ucomisd	%xmm10, %xmm3
	movsd	%xmm3, 504(%rdi)
	jnb	.L5621
	jmp	.L2072
.L5286:
	addsd	96(%rdi), %xmm9
	ucomisd	%xmm2, %xmm9
	movsd	%xmm9, 24(%rdi)
	jnb	.L5648
	jmp	.L2423
.L5282:
	addsd	256(%rdi), %xmm9
	ucomisd	%xmm10, %xmm9
	movsd	%xmm9, 184(%rdi)
	jnb	.L5647
	jmp	.L2410
.L5310:
	addsd	96(%rdi), %xmm9
	ucomisd	%xmm2, %xmm9
	movsd	%xmm9, 24(%rdi)
	jnb	.L5654
	jmp	.L2501
.L4722:
	addsd	896(%rdi), %xmm5
	ucomisd	%xmm11, %xmm5
	movsd	%xmm5, 824(%rdi)
	jnb	.L5507
	jmp	.L592
.L5322:
	addsd	576(%rdi), %xmm10
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 504(%rdi)
	jnb	.L5657
	jmp	.L2540
.L5298:
	addsd	576(%rdi), %xmm7
	ucomisd	%xmm10, %xmm7
	movsd	%xmm7, 504(%rdi)
	jnb	.L5651
	jmp	.L2462
.L5250:
	addsd	576(%rdi), %xmm10
	ucomisd	%xmm12, %xmm10
	movsd	%xmm10, 504(%rdi)
	jnb	.L5639
	jmp	.L2306
.L5262:
	addsd	96(%rdi), %xmm6
	ucomisd	%xmm2, %xmm6
	movsd	%xmm6, 24(%rdi)
	jnb	.L5642
	jmp	.L2345
.L5234:
	addsd	256(%rdi), %xmm10
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 184(%rdi)
	jnb	.L5635
	jmp	.L2254
.L5246:
	addsd	736(%rdi), %xmm10
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 664(%rdi)
	jnb	.L5638
	jmp	.L2293
.L5258:
	addsd	256(%rdi), %xmm10
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 184(%rdi)
	jnb	.L5641
	jmp	.L2332
.L5294:
	addsd	736(%rdi), %xmm10
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 664(%rdi)
	jnb	.L5650
	jmp	.L2449
.L5238:
	addsd	96(%rdi), %xmm10
	ucomisd	%xmm2, %xmm10
	movsd	%xmm10, 24(%rdi)
	jnb	.L5636
	jmp	.L2267
.L4794:
	addsd	96(%rdi), %xmm10
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 24(%rdi)
	jnb	.L5525
	jmp	.L826
.L4982:
	addsd	896(%rdi), %xmm10
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 824(%rdi)
	jnb	.L5572
	jmp	.L1437
.L4862:
	addsd	96(%rdi), %xmm0
	ucomisd	%xmm3, %xmm0
	movsd	%xmm0, 24(%rdi)
	jnb	.L5542
	jmp	.L1047
.L5382:
	addsd	96(%rdi), %xmm8
	ucomisd	%xmm2, %xmm8
	movsd	%xmm8, 24(%rdi)
	jnb	.L5672
	jmp	.L2735
.L4870:
	addsd	736(%rdi), %xmm5
	ucomisd	%xmm8, %xmm5
	movsd	%xmm5, 664(%rdi)
	jnb	.L5544
	jmp	.L1073
.L4866:
	addsd	896(%rdi), %xmm5
	ucomisd	%xmm11, %xmm5
	movsd	%xmm5, 824(%rdi)
	jnb	.L5543
	jmp	.L1060
.L4898:
	addsd	576(%rdi), %xmm7
	ucomisd	%xmm8, %xmm7
	movsd	%xmm7, 504(%rdi)
	jnb	.L5551
	jmp	.L1164
.L5138:
	addsd	416(%rdi), %xmm8
	ucomisd	%xmm10, %xmm8
	movsd	%xmm8, 344(%rdi)
	jnb	.L5611
	jmp	.L1942
.L4818:
	addsd	576(%rdi), %xmm0
	ucomisd	%xmm11, %xmm0
	movsd	%xmm0, 504(%rdi)
	jnb	.L5531
	jmp	.L904
.L5006:
	addsd	896(%rdi), %xmm3
	ucomisd	%xmm11, %xmm3
	movsd	%xmm3, 824(%rdi)
	jnb	.L5578
	jmp	.L1515
.L5162:
	addsd	256(%rdi), %xmm10
	ucomisd	%xmm11, %xmm10
	movsd	%xmm10, 184(%rdi)
	jnb	.L5617
	jmp	.L2020
.L5014:
	addsd	576(%rdi), %xmm7
	ucomisd	%xmm11, %xmm7
	movsd	%xmm7, 504(%rdi)
	jnb	.L5580
	jmp	.L1541
.L5018:
	addsd	96(%rdi), %xmm9
	ucomisd	%xmm11, %xmm9
	movsd	%xmm9, 24(%rdi)
	jnb	.L5581
	jmp	.L1554
.L4958:
	addsd	256(%rdi), %xmm3
	ucomisd	%xmm6, %xmm3
	movsd	%xmm3, 184(%rdi)
	jnb	.L5566
	jmp	.L1359
.L4962:
	addsd	96(%rdi), %xmm0
	ucomisd	%xmm11, %xmm0
	movsd	%xmm0, 24(%rdi)
	jnb	.L5567
	jmp	.L1372
.L5166:
	addsd	96(%rdi), %xmm9
	ucomisd	%xmm2, %xmm9
	movsd	%xmm9, 24(%rdi)
	jnb	.L5618
	jmp	.L2033
.L5102:
	addsd	896(%rdi), %xmm0
	ucomisd	%xmm11, %xmm0
	movsd	%xmm0, 824(%rdi)
	jnb	.L5602
	jmp	.L1827
.L4770:
	addsd	96(%rdi), %xmm0
	ucomisd	%xmm11, %xmm0
	movsd	%xmm0, 24(%rdi)
	jnb	.L5519
	jmp	.L748
.L5034:
	addsd	736(%rdi), %xmm8
	ucomisd	%xmm11, %xmm8
	movsd	%xmm8, 664(%rdi)
	jnb	.L5585
	jmp	.L1606
.L4806:
	addsd	576(%rdi), %xmm6
	ucomisd	%xmm2, %xmm6
	movsd	%xmm6, 504(%rdi)
	jnb	.L5528
	jmp	.L865
.L4802:
	addsd	736(%rdi), %xmm6
	ucomisd	%xmm8, %xmm6
	movsd	%xmm6, 664(%rdi)
	jnb	.L5527
	jmp	.L852
.L4894:
	addsd	736(%rdi), %xmm8
	ucomisd	%xmm11, %xmm8
	movsd	%xmm8, 664(%rdi)
	jnb	.L5550
	jmp	.L1151
.L4842:
	addsd	576(%rdi), %xmm0
	ucomisd	%xmm11, %xmm0
	movsd	%xmm0, 504(%rdi)
	jnb	.L5537
	jmp	.L982
.L5134:
	addsd	576(%rdi), %xmm7
	ucomisd	%xmm10, %xmm7
	movsd	%xmm7, 504(%rdi)
	jnb	.L5610
	jmp	.L1931
.L5186:
	addsd	256(%rdi), %xmm8
	ucomisd	%xmm9, %xmm8
	movsd	%xmm8, 184(%rdi)
	jnb	.L5623
	jmp	.L2098
.L5190:
	addsd	96(%rdi), %xmm8
	ucomisd	%xmm2, %xmm8
	movsd	%xmm8, 24(%rdi)
	jnb	.L5624
	jmp	.L2111
.L5182:
	addsd	416(%rdi), %xmm9
	ucomisd	%xmm10, %xmm9
	movsd	%xmm9, 344(%rdi)
	jnb	.L5622
	jmp	.L2085
.L3128:
	xorpd	%xmm0, %xmm0
	jmp	.L531
	.cfi_endproc
.LFE53:
	.size	fmv_get, .-fmv_get
	.p2align 4,,15
	.globl	fmc_output
	.type	fmc_output, @function
fmc_output:
.LFB45:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movl	41632(%rdi), %r13d
	movsd	41680(%rdi), %xmm0
	movsd	.LC1(%rip), %xmm1
	addsd	41688(%rdi), %xmm0
	call	fmod
	movsd	%xmm0, 41680(%r12)
	mulsd	41672(%r12), %xmm0
	movq	41696(%r12), %rax
	testl	%r13d, %r13d
	cvttsd2si	%xmm0, %edx
	movsd	41704(%r12), %xmm0
	movslq	%edx, %rdx
	mulsd	(%rax,%rdx,8), %xmm0
	addsd	.LC1(%rip), %xmm0
	movsd	%xmm0, 41640(%r12)
	jle	.L6009
	leal	-1(%r13), %eax
	xorpd	%xmm3, %xmm3
	leaq	160(%r12), %rbx
	leaq	128(%r12), %rbp
	leaq	(%rax,%rax,8), %rax
	movsd	%xmm3, 8(%rsp)
	leaq	(%rax,%rax,8), %rax
	movsd	%xmm3, (%rsp)
	salq	$4, %rax
	leaq	1456(%r12,%rax), %r12
	.p2align 4,,10
	.p2align 3
.L6008:
	movq	%rbx, %rdi
	call	fmv_get
	mulsd	1256(%rbx), %xmm0
	cmpb	$0, 0(%rbp)
	addsd	(%rsp), %xmm0
	movsd	%xmm0, (%rsp)
	je	.L6007
	movsd	.LC1(%rip), %xmm2
	addsd	8(%rsp), %xmm2
	movsd	%xmm2, 8(%rsp)
.L6007:
	addq	$1296, %rbx
	addq	$1, %rbp
	cmpq	%r12, %rbx
	jne	.L6008
	movsd	(%rsp), %xmm0
.L6006:
	divsd	8(%rsp), %xmm0
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L6009:
	.cfi_restore_state
	xorpd	%xmm4, %xmm4
	movsd	%xmm4, 8(%rsp)
	movapd	%xmm4, %xmm0
	movsd	%xmm4, (%rsp)
	jmp	.L6006
	.cfi_endproc
.LFE45:
	.size	fmc_output, .-fmc_output
	.p2align 4,,15
	.globl	fmo_init
	.type	fmo_init, @function
fmo_init:
.LFB54:
	.cfi_startproc
	movsd	16(%rsi), %xmm0
	movq	%rsi, 144(%rdi)
	movsd	8(%rsi), %xmm1
	movl	$0, 16(%rdi)
	movsd	%xmm0, 8(%rdi)
	xorpd	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm2
	movl	$0, 20(%rdi)
	movsd	%xmm1, (%rdi)
	movl	$0, 136(%rdi)
	movsd	%xmm2, 72(%rdi)
	movl	$4, 120(%rdi)
	movl	$0, 32(%rdi)
	movsd	%xmm0, 80(%rdi)
	movsd	%xmm0, 128(%rdi)
	movsd	%xmm0, 152(%rdi)
	movsd	%xmm0, 24(%rdi)
	movsd	.LC11(%rip), %xmm3
	movsd	env_curve+4096(%rip), %xmm0
	movl	$0, 140(%rdi)
	movsd	%xmm3, 40(%rdi)
	movsd	%xmm0, 104(%rdi)
	movsd	.LC4(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 88(%rdi)
	movsd	.LC5(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movsd	%xmm0, 96(%rdi)
	movsd	%xmm0, 112(%rdi)
	ret
	.cfi_endproc
.LFE54:
	.size	fmo_init, .-fmo_init
	.p2align 4,,15
	.globl	fmo_calculateIncrement
	.type	fmo_calculateIncrement, @function
fmo_calculateIncrement:
.LFB55:
	.cfi_startproc
	subsd	%xmm0, %xmm1
	movsd	.LC1(%rip), %xmm0
	divsd	%xmm2, %xmm0
	divsd	(%rdi), %xmm1
	mulsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	ret
	.cfi_endproc
.LFE55:
	.size	fmo_calculateIncrement, .-fmo_calculateIncrement
	.p2align 4,,15
	.globl	fmo_setFreq
	.type	fmo_setFreq, @function
fmo_setFreq:
.LFB56:
	.cfi_startproc
	ucomisd	.LC16(%rip), %xmm0
	movapd	%xmm0, %xmm1
	jbe	.L6014
	movsd	.LC6(%rip), %xmm0
	mulsd	(%rdi), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L6022
.L6014:
	movl	$0, 20(%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L6022:
	movapd	%xmm1, %xmm0
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	movsd	%xmm1, (%rsp)
	call	log10
	movq	8(%rsp), %rdi
	addsd	%xmm0, %xmm0
	movsd	(%rsp), %xmm1
	movsd	.LC1(%rip), %xmm2
	divsd	(%rdi), %xmm1
	divsd	%xmm0, %xmm2
	mulsd	.LC17(%rip), %xmm1
	movsd	%xmm2, 152(%rdi)
	cvttsd2siq	%xmm1, %rax
	movl	%eax, 20(%rdi)
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE56:
	.size	fmo_setFreq, .-fmo_setFreq
	.p2align 4,,15
	.globl	fmo_setWave
	.type	fmo_setWave, @function
fmo_setWave:
.LFB57:
	.cfi_startproc
	movl	$0, 136(%rdi)
	ret
	.cfi_endproc
.LFE57:
	.size	fmo_setWave, .-fmo_setWave
	.p2align 4,,15
	.globl	fmo_keyon
	.type	fmo_keyon, @function
fmo_keyon:
.LFB58:
	.cfi_startproc
	unpcklps	%xmm0, %xmm0
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	cvtps2pd	%xmm0, %xmm1
	ucomisd	.LC16(%rip), %xmm1
	jbe	.L6025
	movsd	.LC6(%rip), %xmm0
	mulsd	(%rdi), %xmm0
	ucomisd	%xmm1, %xmm0
	ja	.L6040
.L6025:
	movl	$0, 20(%rbx)
.L6028:
	movl	16(%rbx), %edx
	xorl	%eax, %eax
	movl	$.LC18, %esi
	movl	$1, %edi
	call	__printf_chk
	movl	120(%rbx), %eax
	testl	%eax, %eax
	je	.L6039
	cmpl	$1, %eax
	je	.L6031
	cmpl	$4, %eax
	je	.L6033
	movl	16(%rbx), %edx
.L6034:
	movl	$0, 120(%rbx)
	jmp	.L6032
	.p2align 4,,10
	.p2align 3
.L6031:
	movl	$0, 120(%rbx)
.L6039:
	movl	16(%rbx), %edx
.L6032:
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	$.LC19, %esi
	movl	$1, %edi
	popq	%rbx
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	jmp	__printf_chk
	.p2align 4,,10
	.p2align 3
.L6040:
	.cfi_restore_state
	movapd	%xmm1, %xmm0
	movsd	%xmm1, 8(%rsp)
	call	log10
	movsd	8(%rsp), %xmm1
	addsd	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm2
	divsd	(%rbx), %xmm1
	divsd	%xmm0, %xmm2
	mulsd	.LC17(%rip), %xmm1
	movsd	%xmm2, 152(%rbx)
	cvttsd2siq	%xmm1, %rax
	movl	%eax, 20(%rbx)
	jmp	.L6028
	.p2align 4,,10
	.p2align 3
.L6033:
	movl	$0, 16(%rbx)
	movq	$0, 24(%rbx)
	xorl	%edx, %edx
	movl	$0, 32(%rbx)
	jmp	.L6034
	.cfi_endproc
.LFE58:
	.size	fmo_keyon, .-fmo_keyon
	.p2align 4,,15
	.globl	fmo_keyoff
	.type	fmo_keyoff, @function
fmo_keyoff:
.LFB59:
	.cfi_startproc
	cmpl	$4, 120(%rdi)
	je	.L6041
	movl	$3, 120(%rdi)
.L6041:
	rep ret
	.cfi_endproc
.LFE59:
	.size	fmo_keyoff, .-fmo_keyoff
	.p2align 4,,15
	.globl	fmo_getOperatorOutput
	.type	fmo_getOperatorOutput, @function
fmo_getOperatorOutput:
.LFB60:
	.cfi_startproc
	movsd	24(%rdi), %xmm3
	movl	120(%rdi), %eax
	movsd	.LC21(%rip), %xmm1
	movsd	80(%rdi), %xmm2
	mulsd	%xmm3, %xmm1
	cmpl	$1, %eax
	movsd	%xmm2, 128(%rdi)
	cvttsd2siq	%xmm1, %rdx
	je	.L6045
	jle	.L6070
	cmpl	$3, %eax
	je	.L6048
	cmpl	$4, %eax
	.p2align 4,,5
	jne	.L6044
	xorpd	%xmm2, %xmm2
	movsd	%xmm2, 80(%rdi)
.L6044:
	movl	16(%rdi), %edx
	movsd	.LC0(%rip), %xmm1
	movsd	%xmm2, 72(%rdi)
	mulsd	152(%rdi), %xmm2
	mulsd	%xmm0, %xmm1
	movl	%edx, %eax
	addl	20(%rdi), %edx
	shrl	$16, %eax
	cvtsi2sdq	%rax, %xmm0
	movl	%edx, 16(%rdi)
	addsd	%xmm0, %xmm1
	cvttsd2siq	%xmm1, %rax
	andl	$4095, %eax
	movsd	waveform(,%rax,8), %xmm0
	mulsd	%xmm2, %xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L6048:
	movsd	.LC1(%rip), %xmm1
	addsd	112(%rdi), %xmm3
	movl	%edx, %edx
	movapd	%xmm1, %xmm2
	subsd	env_curve(,%rdx,8), %xmm2
	ucomisd	%xmm1, %xmm3
	movsd	%xmm3, 24(%rdi)
	movsd	%xmm2, 80(%rdi)
	jb	.L6044
.L6069:
	movl	$4, 120(%rdi)
	jmp	.L6044
	.p2align 4,,10
	.p2align 3
.L6070:
	testl	%eax, %eax
	jne	.L6044
	addsd	88(%rdi), %xmm3
	movl	%edx, %edx
	movsd	env_curve(,%rdx,8), %xmm2
	movsd	%xmm2, 80(%rdi)
	ucomisd	.LC1(%rip), %xmm3
	movsd	%xmm3, 24(%rdi)
	jb	.L6044
	movl	$1, 120(%rdi)
	movq	$0, 24(%rdi)
	jmp	.L6044
	.p2align 4,,10
	.p2align 3
.L6045:
	movsd	.LC1(%rip), %xmm1
	movl	%edx, %edx
	movsd	104(%rdi), %xmm4
	movapd	%xmm1, %xmm2
	subsd	env_curve(,%rdx,8), %xmm2
	ucomisd	%xmm2, %xmm4
	movsd	%xmm2, 80(%rdi)
	ja	.L6071
	addsd	96(%rdi), %xmm3
	ucomisd	%xmm1, %xmm3
	movsd	%xmm3, 24(%rdi)
	jnb	.L6069
	jmp	.L6044
	.p2align 4,,10
	.p2align 3
.L6071:
	movl	$2, 120(%rdi)
	jmp	.L6044
	.cfi_endproc
.LFE60:
	.size	fmo_getOperatorOutput, .-fmo_getOperatorOutput
	.p2align 4,,15
	.globl	lfo_init
	.type	lfo_init, @function
lfo_init:
.LFB61:
	.cfi_startproc
	xorpd	%xmm2, %xmm2
	movsd	%xmm0, (%rdi)
	movsd	%xmm1, 8(%rdi)
	movq	%rsi, 32(%rdi)
	movsd	%xmm2, 16(%rdi)
	movsd	%xmm2, 24(%rdi)
	ret
	.cfi_endproc
.LFE61:
	.size	lfo_init, .-lfo_init
	.p2align 4,,15
	.globl	lfo_setfreq
	.type	lfo_setfreq, @function
lfo_setfreq:
.LFB62:
	.cfi_startproc
	divsd	(%rdi), %xmm0
	movsd	%xmm0, 24(%rdi)
	ret
	.cfi_endproc
.LFE62:
	.size	lfo_setfreq, .-lfo_setfreq
	.p2align 4,,15
	.globl	lfo_get
	.type	lfo_get, @function
lfo_get:
.LFB63:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movsd	.LC1(%rip), %xmm1
	movq	%rdi, %rbx
	movsd	16(%rdi), %xmm0
	addsd	24(%rdi), %xmm0
	call	fmod
	movsd	%xmm0, 16(%rbx)
	mulsd	8(%rbx), %xmm0
	movq	32(%rbx), %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	cvttsd2si	%xmm0, %edx
	movslq	%edx, %rdx
	movsd	(%rax,%rdx,8), %xmm0
	ret
	.cfi_endproc
.LFE63:
	.size	lfo_get, .-lfo_get
	.globl	N_2
	.data
	.align 16
	.type	N_2, @object
	.size	N_2, 4
N_2:
	.long	4000
	.globl	N
	.align 16
	.type	N, @object
	.size	N, 4
N:
	.long	8000
	.globl	SAMPLERATE
	.align 16
	.type	SAMPLERATE, @object
	.size	SAMPLERATE, 4
SAMPLERATE:
	.long	8000
	.section	.rodata
	.align 32
	.type	waveform, @object
	.size	waveform, 32768
waveform:
	.long	0
	.long	0
	.long	2934327085
	.long	1062806010
	.long	3201082554
	.long	1063854584
	.long	586782396
	.long	1064491384
	.long	4268163185
	.long	1064903152
	.long	4188185541
	.long	1065314917
	.long	240162563
	.long	1065539947
	.long	934020576
	.long	1065745824
	.long	4242458500
	.long	1065951697
	.long	3789851353
	.long	1066157567
	.long	1790547914
	.long	1066363433
	.long	229470514
	.long	1066485543
	.long	3152219901
	.long	1066588470
	.long	2180835356
	.long	1066691395
	.long	570077735
	.long	1066794317
	.long	1574739717
	.long	1066897235
	.long	4154680960
	.long	1067000149
	.long	2974830540
	.long	1067103060
	.long	1290091295
	.long	1067205967
	.long	2355407677
	.long	1067308869
	.long	835833605
	.long	1067411767
	.long	4288169346
	.long	1067482513
	.long	3678585217
	.long	1067533957
	.long	216732105
	.long	1067585399
	.long	1972655568
	.long	1067636837
	.long	4131527423
	.long	1067688272
	.long	1878548860
	.long	1067739705
	.long	3283853551
	.long	1067791134
	.long	3532705095
	.long	1067842560
	.long	2105367432
	.long	1067893983
	.long	2777106058
	.long	1067945402
	.long	733287366
	.long	1067996818
	.long	4044216345
	.long	1068048229
	.long	3600366732
	.long	1068099637
	.long	3177153308
	.long	1068151041
	.long	2255063934
	.long	1068202441
	.long	314628072
	.long	1068253837
	.long	1131385302
	.long	1068305228
	.long	4185951951
	.long	1068356614
	.long	369055022
	.long	1068407997
	.long	2046304487
	.long	1068459374
	.long	2201744421
	.long	1068504845
	.long	1313222759
	.long	1068530529
	.long	2392981993
	.long	1068556210
	.long	886507957
	.long	1068581889
	.long	829247372
	.long	1068607565
	.long	1961706574
	.long	1068633238
	.long	4024419420
	.long	1068658908
	.long	2462980599
	.long	1068684576
	.long	1312948134
	.long	1068710241
	.long	314942105
	.long	1068735903
	.long	3504579847
	.long	1068761561
	.long	2032607381
	.long	1068787217
	.long	4229671093
	.long	1068812869
	.long	1246579977
	.long	1068838519
	.long	1414044614
	.long	1068864165
	.long	177906711
	.long	1068889808
	.long	1573976185
	.long	1068915447
	.long	1048162598
	.long	1068941083
	.long	2636344942
	.long	1068966715
	.long	1784503070
	.long	1068992344
	.long	2528587488
	.long	1069017969
	.long	314650780
	.long	1069043591
	.long	3473684699
	.long	1069069208
	.long	3156849703
	.long	1069094822
	.long	3400246634
	.long	1069120432
	.long	3945048150
	.long	1069146038
	.long	237499326
	.long	1069171641
	.long	608787453
	.long	1069197239
	.long	505238866
	.long	1069222833
	.long	3963156037
	.long	1069248422
	.long	2133981702
	.long	1069274008
	.long	3349070541
	.long	1069299589
	.long	3054918714
	.long	1069325166
	.long	993033656
	.long	1069350739
	.long	1199934683
	.long	1069376307
	.long	3417219007
	.long	1069401870
	.long	3091562349
	.long	1069427429
	.long	4259621428
	.long	1069452983
	.long	2368165392
	.long	1069478533
	.long	1453945603
	.long	1069504078
	.long	1258794362
	.long	1069529618
	.long	2909780054
	.long	1069551336
	.long	3144119416
	.long	1069564101
	.long	1203405591
	.long	1069576864
	.long	1253621527
	.long	1069589624
	.long	3165808512
	.long	1069602381
	.long	2516066474
	.long	1069615136
	.long	3470456176
	.long	1069627888
	.long	1605130334
	.long	1069640638
	.long	1086203104
	.long	1069653385
	.long	1784848496
	.long	1069666129
	.long	3572267975
	.long	1069678870
	.long	2024723468
	.long	1069691609
	.long	1308439554
	.long	1069704345
	.long	1294701878
	.long	1069717078
	.long	1854824754
	.long	1069729808
	.long	2860151463
	.long	1069742535
	.long	4182054559
	.long	1069755259
	.long	1396968873
	.long	1069767981
	.long	2966261003
	.long	1069780699
	.long	171458541
	.long	1069793415
	.long	1473988746
	.long	1069806127
	.long	2450407773
	.long	1069818836
	.long	2972270160
	.long	1069831542
	.long	2911161835
	.long	1069844245
	.long	2138700414
	.long	1069856945
	.long	526535511
	.long	1069869642
	.long	2241316328
	.long	1069882335
	.long	2859790072
	.long	1069895025
	.long	2253704147
	.long	1069907712
	.long	294839158
	.long	1069920396
	.long	1149976507
	.long	1069933076
	.long	395996809
	.long	1069945753
	.long	2199749378
	.long	1069958426
	.long	2138183340
	.long	1069971096
	.long	83249830
	.long	1069983763
	.long	201902287
	.long	1069996426
	.long	2366162163
	.long	1070009085
	.long	2153119230
	.long	1070021741
	.long	3729833765
	.long	1070034393
	.long	2673467664
	.long	1070047042
	.long	3151153935
	.long	1070059687
	.long	740127806
	.long	1070072329
	.long	3902563512
	.long	1070084966
	.long	3920803523
	.long	1070097600
	.long	667162615
	.long	1070110231
	.long	2603928177
	.long	1070122857
	.long	1013556733
	.long	1070135480
	.long	63445313
	.long	1070148099
	.long	3921029868
	.long	1070160713
	.long	3868883678
	.long	1070173324
	.long	4074521432
	.long	1070185931
	.long	115563046
	.long	1070198535
	.long	454570443
	.long	1070211134
	.long	669244077
	.long	1070223729
	.long	632292417
	.long	1070236320
	.long	216464949
	.long	1070248907
	.long	3589519772
	.long	1070261489
	.long	2034354715
	.long	1070274068
	.long	4013778706
	.long	1070286642
	.long	810773706
	.long	1070299213
	.long	888233372
	.long	1070311779
	.long	4119159583
	.long	1070324340
	.long	1786662738
	.long	1070336898
	.long	2353765831
	.long	1070349451
	.long	1398633676
	.long	1070362000
	.long	3089409688
	.long	1070374544
	.long	3004346997
	.long	1070387084
	.long	1016710631
	.long	1070399620
	.long	1294777820
	.long	1070412151
	.long	3711903697
	.long	1070424677
	.long	3846521599
	.long	1070437199
	.long	1572077954
	.long	1070449717
	.long	1057032583
	.long	1070462230
	.long	2174924402
	.long	1070474738
	.long	504371720
	.long	1070487242
	.long	213974428
	.long	1070499741
	.long	1177412404
	.long	1070512235
	.long	3268413108
	.long	1070524724
	.long	2065784583
	.long	1070537209
	.long	1738317641
	.long	1070549689
	.long	2159884270
	.long	1070562164
	.long	3204405228
	.long	1070574634
	.long	450883044
	.long	1070587100
	.long	1181635749
	.long	1070597828
	.long	112852423
	.long	1070604056
	.long	1251118241
	.long	1070610281
	.long	238550435
	.long	1070616504
	.long	1307226103
	.long	1070622724
	.long	99313172
	.long	1070628942
	.long	846939731
	.long	1070635157
	.long	3487292293
	.long	1070641369
	.long	3662615939
	.long	1070647579
	.long	1310149059
	.long	1070653787
	.long	662123500
	.long	1070659992
	.long	1655830124
	.long	1070666194
	.long	4228586247
	.long	1070672393
	.long	4022768493
	.long	1070678590
	.long	975747534
	.long	1070684785
	.long	3614855532
	.long	1070690976
	.long	3287582510
	.long	1070697165
	.long	4226347576
	.long	1070703351
	.long	2073662580
	.long	1070709535
	.long	1062001458
	.long	1070715716
	.long	1128898479
	.long	1070721894
	.long	2211915698
	.long	1070728069
	.long	4248643094
	.long	1070734241
	.long	2881731429
	.long	1070740411
	.long	2343794277
	.long	1070746578
	.long	2572506286
	.long	1070752742
	.long	3505570617
	.long	1070758903
	.long	785751801
	.long	1070765062
	.long	2940745062
	.long	1070771217
	.long	1318405396
	.long	1070777370
	.long	151518788
	.long	1070783520
	.long	3672900474
	.long	1070789666
	.long	3230493190
	.long	1070795810
	.long	3057171106
	.long	1070801951
	.long	3090870778
	.long	1070808089
	.long	3269558596
	.long	1070814224
	.long	3531230929
	.long	1070820356
	.long	3813914269
	.long	1070826485
	.long	4055665378
	.long	1070832611
	.long	4194571434
	.long	1070838734
	.long	4168750176
	.long	1070844854
	.long	3916350052
	.long	1070850971
	.long	3375550359
	.long	1070857085
	.long	2484561395
	.long	1070863196
	.long	1181624601
	.long	1070869304
	.long	3699980002
	.long	1070875408
	.long	1387997169
	.long	1070881510
	.long	2773946437
	.long	1070887608
	.long	3501227977
	.long	1070893703
	.long	3508241124
	.long	1070899795
	.long	2733417230
	.long	1070905884
	.long	1115219804
	.long	1070911970
	.long	2887111954
	.long	1070918052
	.long	3692654649
	.long	1070924131
	.long	3470408742
	.long	1070930207
	.long	2158967829
	.long	1070936280
	.long	3991925679
	.long	1070942349
	.long	318007205
	.long	1070948416
	.long	3960806968
	.long	1070954478
	.long	1974149070
	.long	1070960538
	.long	2886727550
	.long	1070966594
	.long	2342368167
	.long	1070972647
	.long	279897719
	.long	1070978697
	.long	933144196
	.long	1070984743
	.long	4241002324
	.long	1070990785
	.long	1552466419
	.long	1070996825
	.long	1396434302
	.long	1071002861
	.long	3711903670
	.long	1071008893
	.long	4142939534
	.long	1071014922
	.long	2628608954
	.long	1071020948
	.long	3402981185
	.long	1071026970
	.long	2110225926
	.long	1071032989
	.long	2984482657
	.long	1071039004
	.long	1669991590
	.long	1071045016
	.long	2400962997
	.long	1071051024
	.long	821708174
	.long	1071057029
	.long	1166508763
	.long	1071063030
	.long	3374715009
	.long	1071069027
	.long	3090745901
	.long	1071075021
	.long	254023909
	.long	1071081012
	.long	3393942421
	.long	1071086998
	.long	3860062109
	.long	1071092981
	.long	1591914849
	.long	1071098961
	.long	824036566
	.long	1071104937
	.long	1496032784
	.long	1071110909
	.long	3547546067
	.long	1071116877
	.long	2623288860
	.long	1071122842
	.long	2957945522
	.long	1071128803
	.long	196303287
	.long	1071134761
	.long	2868088878
	.long	1071140714
	.long	2323197582
	.long	1071146664
	.long	2796464465
	.long	1071152610
	.long	4227795324
	.long	1071158552
	.long	2262166834
	.long	1071164491
	.long	1134528573
	.long	1071170426
	.long	784901278
	.long	1071176357
	.long	1153344280
	.long	1071182284
	.long	2179955647
	.long	1071188207
	.long	3804872325
	.long	1071194126
	.long	1673302981
	.long	1071200042
	.long	20430032
	.long	1071205954
	.long	3081475197
	.long	1071211861
	.long	2206797744
	.long	1071217765
	.long	1631698412
	.long	1071223665
	.long	1296550364
	.long	1071229561
	.long	1141766623
	.long	1071235453
	.long	1107800217
	.long	1071241341
	.long	1135144311
	.long	1071247225
	.long	1164332356
	.long	1071253105
	.long	1135938221
	.long	1071258981
	.long	990576338
	.long	1071264853
	.long	668901841
	.long	1071270721
	.long	111610704
	.long	1071276585
	.long	3554407175
	.long	1071282444
	.long	2348134738
	.long	1071288300
	.long	728580022
	.long	1071294152
	.long	2931571053
	.long	1071299999
	.long	308075509
	.long	1071305843
	.long	1388971927
	.long	1071311682
	.long	1820278773
	.long	1071317517
	.long	1543023762
	.long	1071323348
	.long	498276702
	.long	1071329175
	.long	2922116931
	.long	1071334997
	.long	165764268
	.long	1071340816
	.long	760350224
	.long	1071346630
	.long	352147071
	.long	1071352440
	.long	3177404458
	.long	1071358245
	.long	587513069
	.long	1071364047
	.long	1113775834
	.long	1071369844
	.long	402636997
	.long	1071375637
	.long	2690518728
	.long	1071381425
	.long	3623952082
	.long	1071387209
	.long	3144479024
	.long	1071392989
	.long	1193685269
	.long	1071398765
	.long	2008167714
	.long	1071404536
	.long	1234632694
	.long	1071410303
	.long	3109765293
	.long	1071416065
	.long	3280360308
	.long	1071421823
	.long	1688224264
	.long	1071427577
	.long	2570175561
	.long	1071433326
	.long	1573142713
	.long	1071439071
	.long	2934033675
	.long	1071444811
	.long	2299866796
	.long	1071450547
	.long	3907640133
	.long	1071456278
	.long	3404462413
	.long	1071462005
	.long	732455047
	.long	1071467728
	.long	128752276
	.long	1071473446
	.long	1535566708
	.long	1071479159
	.long	600189455
	.long	1071484868
	.long	1559892163
	.long	1071490572
	.long	62057954
	.long	1071496272
	.long	344050754
	.long	1071501967
	.long	2348313535
	.long	1071507657
	.long	1722368455
	.long	1071513343
	.long	2703718878
	.long	1071519024
	.long	939980325
	.long	1071524701
	.long	668749796
	.long	1071530373
	.long	1832704014
	.long	1071536040
	.long	79599564
	.long	1071541703
	.long	3942142205
	.long	1071547360
	.long	478248644
	.long	1071553014
	.long	2515686922
	.long	1071558662
	.long	1407436294
	.long	1071564306
	.long	1391425729
	.long	1071569945
	.long	2410664865
	.long	1071575579
	.long	113244139
	.long	1071581209
	.long	3032204106
	.long	1071586833
	.long	2520764502
	.long	1071592453
	.long	2817095449
	.long	1071598068
	.long	3864448404
	.long	1071603678
	.long	1311156292
	.long	1071609284
	.long	3690502828
	.long	1071614884
	.long	2355951572
	.long	1071620480
	.long	1545917138
	.long	1071626071
	.long	1203896141
	.long	1071631657
	.long	1273434629
	.long	1071637238
	.long	1698128213
	.long	1071642814
	.long	3358294748
	.long	1071646528
	.long	3841289512
	.long	1071649311
	.long	2269920947
	.long	1071652092
	.long	2911053946
	.long	1071654870
	.long	1441643923
	.long	1071657646
	.long	2128606061
	.long	1071660419
	.long	648946200
	.long	1071663190
	.long	1269630081
	.long	1071665958
	.long	3962681526
	.long	1071668723
	.long	110215208
	.long	1071671487
	.long	2569207789
	.long	1071674247
	.long	2721825026
	.long	1071677005
	.long	540192908
	.long	1071679761
	.long	291430425
	.long	1071682514
	.long	1947715041
	.long	1071685264
	.long	1186282764
	.long	1071688012
	.long	2274330093
	.long	1071690757
	.long	889144904
	.long	1071693500
	.long	1297975697
	.long	1071696240
	.long	3473129774
	.long	1071698977
	.long	3091973305
	.long	1071701712
	.long	126865982
	.long	1071704445
	.long	3140128386
	.long	1071707174
	.long	3514238267
	.long	1071709901
	.long	1221634395
	.long	1071712626
	.long	529749322
	.long	1071715348
	.long	1411074856
	.long	1071718067
	.long	3838129424
	.long	1071720783
	.long	3488490837
	.long	1071723497
	.long	334730952
	.long	1071726209
	.long	2939383026
	.long	1071728917
	.long	2685138011
	.long	1071731623
	.long	3839615684
	.long	1071734326
	.long	2080528237
	.long	1071737027
	.long	1675549521
	.long	1071739725
	.long	2597413226
	.long	1071742420
	.long	523912942
	.long	1071745113
	.long	4017771408
	.long	1071747802
	.long	166902210
	.long	1071750490
	.long	1829050097
	.long	1071753174
	.long	387150793
	.long	1071755856
	.long	109069427
	.long	1071758535
	.long	967731412
	.long	1071761211
	.long	2936089806
	.long	1071763884
	.long	1692158078
	.long	1071766555
	.long	1503912064
	.long	1071769223
	.long	2344388136
	.long	1071771888
	.long	4186650566
	.long	1071774550
	.long	2708824292
	.long	1071777210
	.long	2178996870
	.long	1071779867
	.long	2570316647
	.long	1071782521
	.long	3855960124
	.long	1071785172
	.long	1714164721
	.long	1071787821
	.long	413130725
	.long	1071790467
	.long	4221086767
	.long	1071793109
	.long	226420697
	.long	1071795750
	.long	1287352609
	.long	1071798387
	.long	3082261939
	.long	1071801021
	.long	1289556720
	.long	1071803653
	.long	177608228
	.long	1071806282
	.long	4014816460
	.long	1071808907
	.long	4184708301
	.long	1071811530
	.long	660774075
	.long	1071814151
	.long	2006467599
	.long	1071816768
	.long	3900369771
	.long	1071819382
	.long	2021090519
	.long	1071821994
	.long	637203454
	.long	1071824603
	.long	4017311340
	.long	1071827208
	.long	3545144268
	.long	1071829811
	.long	3489363499
	.long	1071832411
	.long	3823692332
	.long	1071835008
	.long	226916175
	.long	1071837603
	.long	1262751787
	.long	1071840194
	.long	2610043563
	.long	1071842782
	.long	4242632780
	.long	1071845367
	.long	1839423068
	.long	1071847950
	.long	3964249655
	.long	1071850529
	.long	2001108355
	.long	1071853106
	.long	218926703
	.long	1071855680
	.long	2886662127
	.long	1071858250
	.long	1388400122
	.long	1071860818
	.long	4288125384
	.long	1071863382
	.long	2969983500
	.long	1071865944
	.long	1703052085
	.long	1071868503
	.long	461471655
	.long	1071871059
	.long	3514380284
	.long	1071873611
	.long	2246044476
	.long	1071876161
	.long	925663007
	.long	1071878708
	.long	3822465092
	.long	1071881251
	.long	2320808563
	.long	1071883792
	.long	689983701
	.long	1071886330
	.long	3199311412
	.long	1071888864
	.long	1233241396
	.long	1071891396
	.long	3356123283
	.long	1071893924
	.long	952468321
	.long	1071896450
	.long	2586687808
	.long	1071898972
	.long	3938322078
	.long	1071901491
	.long	686942449
	.long	1071904008
	.long	1397053171
	.long	1071906521
	.long	1748287711
	.long	1071909031
	.long	1715277995
	.long	1071911538
	.long	1272687174
	.long	1071914042
	.long	395209681
	.long	1071916543
	.long	3352538588
	.long	1071919040
	.long	1529496480
	.long	1071921535
	.long	3490806590
	.long	1071924026
	.long	621354487
	.long	1071926515
	.long	1485926504
	.long	1071929000
	.long	1764438724
	.long	1071931482
	.long	1431806227
	.long	1071933961
	.long	462975849
	.long	1071936437
	.long	3127893540
	.long	1071938909
	.long	811635234
	.long	1071941379
	.long	2079177986
	.long	1071943845
	.long	2610628956
	.long	1071946308
	.long	2381094650
	.long	1071948768
	.long	1365713685
	.long	1071951225
	.long	3834624142
	.long	1071953678
	.long	1173094441
	.long	1071956129
	.long	1946294472
	.long	1071958576
	.long	1834524581
	.long	1071961020
	.long	813084810
	.long	1071963461
	.long	3152274959
	.long	1071965898
	.long	237525457
	.long	1071968333
	.long	634168493
	.long	1071970764
	.long	22667002
	.long	1071973192
	.long	2673451202
	.long	1071975616
	.long	4267049470
	.long	1071978037
	.long	484022990
	.long	1071980456
	.long	4184834991
	.long	1071982870
	.long	2460177854
	.long	1071985282
	.long	3875613415
	.long	1071987690
	.long	4111834660
	.long	1071990095
	.long	3144534968
	.long	1071992497
	.long	949440865
	.long	1071994896
	.long	1797279384
	.long	1071997291
	.long	1368876232
	.long	1071999683
	.long	3935025030
	.long	1072002071
	.long	881650890
	.long	1072004457
	.long	774581544
	.long	1072006839
	.long	3589743626
	.long	1072009217
	.long	713162727
	.long	1072011593
	.long	710767228
	.long	1072013965
	.long	3558584581
	.long	1072016333
	.long	642741364
	.long	1072018699
	.long	529267117
	.long	1072021061
	.long	3194290617
	.long	1072023419
	.long	24039938
	.long	1072025775
	.long	3879613577
	.long	1072028126
	.long	1852340257
	.long	1072030475
	.long	2508419234
	.long	1072032820
	.long	1529181990
	.long	1072035162
	.long	3185928766
	.long	1072037500
	.long	3160059433
	.long	1072039835
	.long	1427975438
	.long	1072042167
	.long	2261079857
	.long	1072044495
	.long	1340875566
	.long	1072046820
	.long	2938834477
	.long	1072049141
	.long	2736528409
	.long	1072051459
	.long	710531034
	.long	1072053774
	.long	1132417931
	.long	1072056085
	.long	3978832048
	.long	1072058392
	.long	636516462
	.long	1072060697
	.long	3967085506
	.long	1072062997
	.long	1062384568
	.long	1072065295
	.long	489130398
	.long	1072067589
	.long	2224140098
	.long	1072069879
	.long	1949298465
	.long	1072072166
	.long	3936459939
	.long	1072074449
	.long	3867579471
	.long	1072076729
	.long	1719614463
	.long	1072079006
	.long	1764524828
	.long	1072081279
	.long	3979338447
	.long	1072083548
	.long	4046151225
	.long	1072085814
	.long	1942061737
	.long	1072088077
	.long	1939171282
	.long	1072090336
	.long	4014649345
	.long	1072092591
	.long	3850733649
	.long	1072094843
	.long	1424664803
	.long	1072097092
	.long	1008686355
	.long	1072099337
	.long	2580110250
	.long	1072101578
	.long	1821316891
	.long	1072103816
	.long	3004657071
	.long	1072106050
	.long	1812582851
	.long	1072108281
	.long	2517516789
	.long	1072110508
	.long	801982816
	.long	1072112732
	.long	938475469
	.long	1072114952
	.long	2904558056
	.long	1072117168
	.long	2382862713
	.long	1072119381
	.long	3645992336
	.long	1072121590
	.long	2376651460
	.long	1072123796
	.long	2847515489
	.long	1072125998
	.long	741361564
	.long	1072128197
	.long	330937803
	.long	1072130392
	.long	1594061465
	.long	1072132583
	.long	213619000
	.long	1072134771
	.long	462467987
	.long	1072136955
	.long	2318535306
	.long	1072139135
	.long	1464817182
	.long	1072141312
	.long	2174281127
	.long	1072143485
	.long	129996812
	.long	1072145655
	.long	3899972591
	.long	1072147820
	.long	577417193
	.long	1072149983
	.long	3025380022
	.long	1072152141
	.long	2632110957
	.long	1072154296
	.long	3670798771
	.long	1072156447
	.long	1824734701
	.long	1072158595
	.long	1367181682
	.long	1072160739
	.long	2276472513
	.long	1072162879
	.long	236009907
	.long	1072165016
	.long	3814135724
	.long	1072167148
	.long	104392657
	.long	1072169278
	.long	1970164534
	.long	1072171403
	.long	800036120
	.long	1072173525
	.long	867531528
	.long	1072175643
	.long	2151245089
	.long	1072177757
	.long	334841403
	.long	1072179868
	.long	3986924573
	.long	1072181974
	.long	201299883
	.long	1072184078
	.long	1841614111
	.long	1072186177
	.long	296715319
	.long	1072188273
	.long	4135358567
	.long	1072190364
	.long	451500298
	.long	1072192453
	.long	2108938648
	.long	1072194537
	.long	496673235
	.long	1072196618
	.long	4183610875
	.long	1072198694
	.long	263859965
	.long	1072200768
	.long	1601370793
	.long	1072202837
	.long	3880262624
	.long	1072204902
	.long	2784692931
	.long	1072206964
	.long	2588792042
	.long	1072209022
	.long	3271761296
	.long	1072211076
	.long	517873095
	.long	1072213127
	.long	2896340135
	.long	1072215173
	.long	1796544385
	.long	1072217216
	.long	1492808202
	.long	1072219255
	.long	1964525205
	.long	1072221290
	.long	3191127610
	.long	1072223321
	.long	857118989
	.long	1072225349
	.long	3531943498
	.long	1072227372
	.long	2605214858
	.long	1072229392
	.long	2351487468
	.long	1072231408
	.long	2750387278
	.long	1072233420
	.long	3781579125
	.long	1072235428
	.long	1129799488
	.long	1072237433
	.long	3364725721
	.long	1072239433
	.long	1876205028
	.long	1072241430
	.long	939025580
	.long	1072243423
	.long	533047383
	.long	1072245412
	.long	638169617
	.long	1072247397
	.long	1234330686
	.long	1072249378
	.long	2301508264
	.long	1072251355
	.long	3819719343
	.long	1072253328
	.long	1474052984
	.long	1072255298
	.long	3834539546
	.long	1072257263
	.long	2291379663
	.long	1072259225
	.long	1119715364
	.long	1072261183
	.long	299760931
	.long	1072263137
	.long	4106737541
	.long	1072265086
	.long	3931004129
	.long	1072267032
	.long	4047861207
	.long	1072268974
	.long	142714435
	.long	1072270913
	.long	785911142
	.long	1072272847
	.long	1662936601
	.long	1072274777
	.long	2754283254
	.long	1072276703
	.long	4040483468
	.long	1072278625
	.long	1207142277
	.long	1072280544
	.long	2824806621
	.long	1072282458
	.long	284194311
	.long	1072284369
	.long	2155932448
	.long	1072286275
	.long	4125786395
	.long	1072288177
	.long	1879561707
	.long	1072290076
	.long	3988006071
	.long	1072291970
	.long	1842038275
	.long	1072293861
	.long	4012486618
	.long	1072295747
	.long	1890350594
	.long	1072297630
	.long	4046539300
	.long	1072299508
	.long	1872133114
	.long	1072301383
	.long	3938122109
	.long	1072303253
	.long	1635667725
	.long	1072305120
	.long	3535841188
	.long	1072306982
	.long	1029885183
	.long	1072308841
	.long	2688952264
	.long	1072310695
	.long	4199333832
	.long	1072312545
	.long	1247362060
	.long	1072314392
	.long	2404311833
	.long	1072316234
	.long	3356597007
	.long	1072318072
	.long	4085639646
	.long	1072319906
	.long	277935466
	.long	1072321737
	.long	504923068
	.long	1072323563
	.long	453180201
	.long	1072325385
	.long	104292994
	.long	1072327203
	.long	3734855996
	.long	1072329016
	.long	2736603036
	.long	1072330826
	.long	1386211044
	.long	1072332632
	.long	3960398203
	.long	1072334433
	.long	1851022106
	.long	1072336231
	.long	3629850870
	.long	1072338024
	.long	688824811
	.long	1072339814
	.long	1599794856
	.long	1072341599
	.long	2049751510
	.long	1072343380
	.long	2020694087
	.long	1072345157
	.long	1494663453
	.long	1072346930
	.long	453742068
	.long	1072348699
	.long	3175021328
	.long	1072350463
	.long	1050732419
	.long	1072352224
	.long	2653017433
	.long	1072353980
	.long	3669158337
	.long	1072355732
	.long	4081446200
	.long	1072357480
	.long	3872213936
	.long	1072359224
	.long	3023836349
	.long	1072360964
	.long	1518730172
	.long	1072362700
	.long	3634321406
	.long	1072364431
	.long	763176177
	.long	1072366159
	.long	1477771847
	.long	1072367882
	.long	1465725986
	.long	1072369601
	.long	709665595
	.long	1072371316
	.long	3487227148
	.long	1072373026
	.long	1191187449
	.long	1072374733
	.long	2394234744
	.long	1072376435
	.long	2784197688
	.long	1072378133
	.long	2343914573
	.long	1072379827
	.long	1056266069
	.long	1072381517
	.long	3199142564
	.long	1072383202
	.long	165575016
	.long	1072384884
	.long	528506068
	.long	1072386561
	.long	4270986310
	.long	1072388233
	.long	2786174323
	.long	1072389902
	.long	352173192
	.long	1072391567
	.long	1247128663
	.long	1072393227
	.long	1159294589
	.long	1072394883
	.long	71934859
	.long	1072396535
	.long	2263323432
	.long	1072398182
	.long	3421842497
	.long	1072399825
	.long	3530884391
	.long	1072401464
	.long	2573884349
	.long	1072403099
	.long	534320540
	.long	1072404730
	.long	1690681401
	.long	1072406356
	.long	1731563791
	.long	1072407978
	.long	640574914
	.long	1072409596
	.long	2696332360
	.long	1072411209
	.long	3587562256
	.long	1072412818
	.long	3298001189
	.long	1072414423
	.long	1811428951
	.long	1072416024
	.long	3406635873
	.long	1072417620
	.long	3772520975
	.long	1072419212
	.long	2892993890
	.long	1072420800
	.long	752007611
	.long	1072422384
	.long	1628525817
	.long	1072423963
	.long	1211621028
	.long	1072425538
	.long	3780343828
	.long	1072427108
	.long	728886418
	.long	1072428675
	.long	631353725
	.long	1072430237
	.long	3471959671
	.long	1072431794
	.long	645027199
	.long	1072433348
	.long	724792095
	.long	1072434897
	.long	3695599244
	.long	1072436441
	.long	951902671
	.long	1072437982
	.long	1068069347
	.long	1072439518
	.long	4028575459
	.long	1072441049
	.long	1228006436
	.long	1072442577
	.long	1240860771
	.long	1072444100
	.long	4051746275
	.long	1072445618
	.long	1055380116
	.long	1072447133
	.long	826392630
	.long	1072448643
	.long	3349523581
	.long	1072450148
	.long	19622200
	.long	1072451650
	.long	3706418286
	.long	1072453146
	.long	1509881994
	.long	1072454639
	.long	2004864119
	.long	1072456127
	.long	881357770
	.long	1072457611
	.long	2419334880
	.long	1072459090
	.long	2308877061
	.long	1072460565
	.long	535077525
	.long	1072462036
	.long	1378041121
	.long	1072463502
	.long	527982479
	.long	1072464964
	.long	2265095232
	.long	1072466421
	.long	2279682866
	.long	1072467874
	.long	557060641
	.long	1072469323
	.long	1377555628
	.long	1072470767
	.long	431604852
	.long	1072472207
	.long	1999624515
	.long	1072473642
	.long	1772140843
	.long	1072475073
	.long	4029659303
	.long	1072476499
	.long	167828162
	.long	1072477922
	.long	3057176884
	.long	1072479339
	.long	4093443205
	.long	1072480752
	.long	3262344241
	.long	1072482161
	.long	549641928
	.long	1072483566
	.long	236110349
	.long	1072484966
	.long	2307601181
	.long	1072486361
	.long	2455043724
	.long	1072487752
	.long	664379527
	.long	1072489139
	.long	1216562421
	.long	1072490521
	.long	4097623961
	.long	1072491898
	.long	703706163
	.long	1072493272
	.long	3905832608
	.long	1072494640
	.long	805268217
	.long	1072496005
	.long	4273126839
	.long	1072497364
	.long	1410763729
	.long	1072498720
	.long	794415837
	.long	1072500071
	.long	2410430768
	.long	1072501417
	.long	1950234111
	.long	1072502759
	.long	3695231359
	.long	1072504096
	.long	3336938755
	.long	1072505429
	.long	861885214
	.long	1072506758
	.long	551612353
	.long	1072508082
	.long	2392739932
	.long	1072509401
	.long	2076965885
	.long	1072510716
	.long	3885968239
	.long	1072512026
	.long	3511535962
	.long	1072513332
	.long	940470882
	.long	1072514634
	.long	454587716
	.long	1072515931
	.long	2040779512
	.long	1072517223
	.long	1391017680
	.long	1072518511
	.long	2787253906
	.long	1072519794
	.long	1921551005
	.long	1072521073
	.long	3075952131
	.long	1072522347
	.long	1942611625
	.long	1072523617
	.long	2803664228
	.long	1072524882
	.long	1351355932
	.long	1072526143
	.long	1867913186
	.long	1072527399
	.long	45673750
	.long	1072528651
	.long	166955903
	.long	1072529898
	.long	2219156587
	.long	1072531140
	.long	1894751440
	.long	1072532378
	.long	3476196706
	.long	1072533611
	.long	2656060086
	.long	1072534840
	.long	3716889953
	.long	1072536064
	.long	2351346190
	.long	1072537284
	.long	2842069410
	.long	1072538499
	.long	881811797
	.long	1072539710
	.long	753306322
	.long	1072540916
	.long	2444364881
	.long	1072542117
	.long	1647878324
	.long	1072543314
	.long	2646718373
	.long	1072544506
	.long	1133868467
	.long	1072545694
	.long	1392292971
	.long	1072546877
	.long	3410035320
	.long	1072548055
	.long	2880218045
	.long	1072549229
	.long	4085944689
	.long	1072550398
	.long	2720430652
	.long	1072551563
	.long	3066872403
	.long	1072552723
	.long	818578321
	.long	1072553879
	.long	258837911
	.long	1072555030
	.long	1376019940
	.long	1072556176
	.long	4158539759
	.long	1072557317
	.long	4924745
	.long	1072558455
	.long	1788585393
	.long	1072559587
	.long	908142386
	.long	1072560715
	.long	1647164991
	.long	1072561838
	.long	3994301900
	.long	1072562956
	.long	3643281256
	.long	1072564070
	.long	582845276
	.long	1072565180
	.long	3391717567
	.long	1072566284
	.long	3468799382
	.long	1072567384
	.long	802973420
	.long	1072568480
	.long	3973103851
	.long	1072569570
	.long	83265271
	.long	1072570657
	.long	2007382986
	.long	1072571738
	.long	1144592780
	.long	1072572815
	.long	1778979306
	.long	1072573887
	.long	3899706934
	.long	1072574954
	.long	3201019770
	.long	1072576017
	.long	3967143574
	.long	1072577075
	.long	1892416598
	.long	1072578129
	.long	1261158799
	.long	1072579178
	.long	2062769971
	.long	1072580222
	.long	4286697070
	.long	1072581261
	.long	3627466942
	.long	1072582296
	.long	74620940
	.long	1072583327
	.long	2207682240
	.long	1072584352
	.long	1426352098
	.long	1072585373
	.long	2015280939
	.long	1072586389
	.long	3964199200
	.long	1072587400
	.long	2967917356
	.long	1072588407
	.long	3311227829
	.long	1072589409
	.long	689035829
	.long	1072590407
	.long	3681195858
	.long	1072591399
	.long	3687740662
	.long	1072592387
	.long	698685031
	.long	1072593371
	.long	3294025820
	.long	1072594349
	.long	2873938201
	.long	1072595323
	.long	3723546753
	.long	1072596292
	.long	1538089009
	.long	1072597257
	.long	602784660
	.long	1072598217
	.long	907933694
	.long	1072599172
	.long	2443883711
	.long	1072600122
	.long	906062651
	.long	1072601068
	.long	579880707
	.long	1072602009
	.long	1455828453
	.long	1072602945
	.long	3524444171
	.long	1072603876
	.long	2481346570
	.long	1072604803
	.long	2612136701
	.long	1072605725
	.long	3907496087
	.long	1072606642
	.long	2063186750
	.long	1072607555
	.long	1364953114
	.long	1072608463
	.long	1803620147
	.long	1072609366
	.long	3370060669
	.long	1072610264
	.long	1760228087
	.long	1072611158
	.long	1260058299
	.long	1072612047
	.long	1860567825
	.long	1072612931
	.long	3552821132
	.long	1072613810
	.long	2032963352
	.long	1072614685
	.long	1587122193
	.long	1072615555
	.long	2206506073
	.long	1072616420
	.long	3882371435
	.long	1072617280
	.long	2311055473
	.long	1072618136
	.long	1778878040
	.long	1072618987
	.long	2277239779
	.long	1072619833
	.long	3797589442
	.long	1072620674
	.long	2036456612
	.long	1072621511
	.long	1280353611
	.long	1072622343
	.long	1520873632
	.long	1072623170
	.long	2749658056
	.long	1072623992
	.long	663429176
	.long	1072624810
	.long	3843859397
	.long	1072625622
	.long	3692800188
	.long	1072626430
	.long	202085874
	.long	1072627234
	.long	1953533656
	.long	1072628032
	.long	349139857
	.long	1072628826
	.long	3970818303
	.long	1072629614
	.long	4220661980
	.long	1072630398
	.long	1090746825
	.long	1072631178
	.long	3163131747
	.long	1072631952
	.long	1840054866
	.long	1072632722
	.long	1408704609
	.long	1072633487
	.long	1861350538
	.long	1072634247
	.long	3190310668
	.long	1072635002
	.long	1092984190
	.long	1072635753
	.long	4151720669
	.long	1072636498
	.long	3769048994
	.long	1072637239
	.long	4232448465
	.long	1072637975
	.long	1239512330
	.long	1072638707
	.long	3372784288
	.long	1072639433
	.long	2034987426
	.long	1072640155
	.long	1513795315
	.long	1072640872
	.long	1801962840
	.long	1072641584
	.long	2892293515
	.long	1072642291
	.long	482672201
	.long	1072642994
	.long	3155934311
	.long	1072643691
	.long	2315094750
	.long	1072644384
	.long	2248119006
	.long	1072645072
	.long	2948053985
	.long	1072645755
	.long	113028022
	.long	1072646434
	.long	2326120085
	.long	1072647107
	.long	990588718
	.long	1072647776
	.long	394643130
	.long	1072648440
	.long	531574024
	.long	1072649099
	.long	1394720913
	.long	1072649753
	.long	2977472133
	.long	1072650402
	.long	978297562
	.long	1072651047
	.long	3980617821
	.long	1072651686
	.long	3388033218
	.long	1072652321
	.long	3489094832
	.long	1072652951
	.long	4277435349
	.long	1072653576
	.long	1451769070
	.long	1072654197
	.long	3595761118
	.long	1072654812
	.long	2113256375
	.long	1072655423
	.long	1293050570
	.long	1072656029
	.long	1129021111
	.long	1072656630
	.long	1615094393
	.long	1072657226
	.long	2745245815
	.long	1072657817
	.long	218532496
	.long	1072658404
	.long	2618962473
	.long	1072658985
	.long	1350723647
	.long	1072659562
	.long	702954862
	.long	1072660134
	.long	669876739
	.long	1072660701
	.long	1245758987
	.long	1072661263
	.long	2424920413
	.long	1072661820
	.long	4201728936
	.long	1072662372
	.long	2275634307
	.long	1072662920
	.long	936070006
	.long	1072663463
	.long	177551371
	.long	1072664001
	.long	4289610201
	.long	1072664533
	.long	381958288
	.long	1072665062
	.long	1334160390
	.long	1072665585
	.long	2845961286
	.long	1072666103
	.long	617154969
	.long	1072666617
	.long	3232486549
	.long	1072667125
	.long	2096881191
	.long	1072667629
	.long	1500215201
	.long	1072668128
	.long	1437446854
	.long	1072668622
	.long	1903583699
	.long	1072669111
	.long	2893682575
	.long	1072669595
	.long	107882322
	.long	1072670075
	.long	2131272980
	.long	1072670549
	.long	369124729
	.long	1072671019
	.long	3406626265
	.long	1072671483
	.long	2649146444
	.long	1072671943
	.long	2387005368
	.long	1072672398
	.long	2615605208
	.long	1072672848
	.long	3330397514
	.long	1072673293
	.long	231915926
	.long	1072673734
	.long	1905645374
	.long	1072674169
	.long	4052218308
	.long	1072674599
	.long	2372316596
	.long	1072675025
	.long	1156606131
	.long	1072675446
	.long	400834947
	.long	1072675862
	.long	100800531
	.long	1072676273
	.long	252349829
	.long	1072676679
	.long	851379255
	.long	1072677080
	.long	1893834704
	.long	1072677476
	.long	3375711561
	.long	1072677867
	.long	998087411
	.long	1072678254
	.long	3346991236
	.long	1072678635
	.long	1828632350
	.long	1072679012
	.long	734171483
	.long	1072679384
	.long	59851601
	.long	1072679751
	.long	4096932512
	.long	1072680112
	.long	4251821688
	.long	1072680469
	.long	520910752
	.long	1072680822
	.long	1490575492
	.long	1072681169
	.long	2862339384
	.long	1072681511
	.long	337775489
	.long	1072681849
	.long	2503408353
	.long	1072682181
	.long	765942939
	.long	1072682509
	.long	3712003003
	.long	1072682831
	.long	2748392738
	.long	1072683149
	.long	2166867849
	.long	1072683462
	.long	1964266377
	.long	1072683770
	.long	2137476006
	.long	1072684073
	.long	2683434067
	.long	1072684371
	.long	3599127546
	.long	1072684664
	.long	586625796
	.long	1072684953
	.long	2232949727
	.long	1072685236
	.long	4240268038
	.long	1072685514
	.long	2310799109
	.long	1072685788
	.long	736745603
	.long	1072686057
	.long	3810359879
	.long	1072686320
	.long	2939042109
	.long	1072686579
	.long	2415144064
	.long	1072686833
	.long	2236099933
	.long	1072687082
	.long	2399393624
	.long	1072687326
	.long	2902558775
	.long	1072687565
	.long	3743178754
	.long	1072687799
	.long	623919372
	.long	1072688029
	.long	2132398073
	.long	1072688253
	.long	3971380161
	.long	1072688472
	.long	1843680695
	.long	1072688687
	.long	42099086
	.long	1072688897
	.long	2859484511
	.long	1072689101
	.long	1703834026
	.long	1072689301
	.long	868096354
	.long	1072689496
	.long	350302698
	.long	1072689686
	.long	148534046
	.long	1072689871
	.long	260921177
	.long	1072690051
	.long	685644660
	.long	1072690226
	.long	1420934864
	.long	1072690396
	.long	2465071957
	.long	1072690561
	.long	3816385915
	.long	1072690721
	.long	1178289227
	.long	1072690877
	.long	3139146081
	.long	1072691027
	.long	1107501302
	.long	1072691173
	.long	3671818717
	.long	1072691313
	.long	2240742793
	.long	1072691449
	.long	1107869714
	.long	1072691580
	.long	271878197
	.long	1072691706
	.long	4026464091
	.long	1072691826
	.long	3780471190
	.long	1072691942
	.long	3827695020
	.long	1072692053
	.long	4167013651
	.long	1072692159
	.long	502387702
	.long	1072692261
	.long	1422729529
	.long	1072692357
	.long	2632099447
	.long	1072692448
	.long	4129574923
	.long	1072692534
	.long	1619315979
	.long	1072692616
	.long	3690434385
	.long	1072692692
	.long	1752222582
	.long	1072692764
	.long	98924762
	.long	1072692831
	.long	3024834976
	.long	1072692892
	.long	1939395254
	.long	1072692949
	.long	1136999376
	.long	1072693001
	.long	617123694
	.long	1072693048
	.long	379294427
	.long	1072693090
	.long	423087662
	.long	1072693127
	.long	748129358
	.long	1072693159
	.long	1354095342
	.long	1072693186
	.long	2240711314
	.long	1072693208
	.long	3407752844
	.long	1072693225
	.long	560078082
	.long	1072693238
	.long	2287496934
	.long	1072693245
	.long	0
	.long	1072693248
	.long	2287496934
	.long	1072693245
	.long	560078082
	.long	1072693238
	.long	3407752845
	.long	1072693225
	.long	2240711315
	.long	1072693208
	.long	1354095343
	.long	1072693186
	.long	748129359
	.long	1072693159
	.long	423087664
	.long	1072693127
	.long	379294428
	.long	1072693090
	.long	617123696
	.long	1072693048
	.long	1136999378
	.long	1072693001
	.long	1939395256
	.long	1072692949
	.long	3024834979
	.long	1072692892
	.long	98924764
	.long	1072692831
	.long	1752222585
	.long	1072692764
	.long	3690434388
	.long	1072692692
	.long	1619315983
	.long	1072692616
	.long	4129574926
	.long	1072692534
	.long	2632099451
	.long	1072692448
	.long	1422729533
	.long	1072692357
	.long	502387707
	.long	1072692261
	.long	4167013656
	.long	1072692159
	.long	3827695025
	.long	1072692053
	.long	3780471195
	.long	1072691942
	.long	4026464096
	.long	1072691826
	.long	271878202
	.long	1072691706
	.long	1107869719
	.long	1072691580
	.long	2240742799
	.long	1072691449
	.long	3671818723
	.long	1072691313
	.long	1107501308
	.long	1072691173
	.long	3139146088
	.long	1072691027
	.long	1178289233
	.long	1072690877
	.long	3816385922
	.long	1072690721
	.long	2465071964
	.long	1072690561
	.long	1420934871
	.long	1072690396
	.long	685644668
	.long	1072690226
	.long	260921185
	.long	1072690051
	.long	148534054
	.long	1072689871
	.long	350302706
	.long	1072689686
	.long	868096362
	.long	1072689496
	.long	1703834035
	.long	1072689301
	.long	2859484519
	.long	1072689101
	.long	42099095
	.long	1072688897
	.long	1843680704
	.long	1072688687
	.long	3971380170
	.long	1072688472
	.long	2132398082
	.long	1072688253
	.long	623919382
	.long	1072688029
	.long	3743178764
	.long	1072687799
	.long	2902558785
	.long	1072687565
	.long	2399393635
	.long	1072687326
	.long	2236099944
	.long	1072687082
	.long	2415144075
	.long	1072686833
	.long	2939042120
	.long	1072686579
	.long	3810359890
	.long	1072686320
	.long	736745614
	.long	1072686057
	.long	2310799120
	.long	1072685788
	.long	4240268050
	.long	1072685514
	.long	2232949739
	.long	1072685236
	.long	586625808
	.long	1072684953
	.long	3599127558
	.long	1072684664
	.long	2683434079
	.long	1072684371
	.long	2137476018
	.long	1072684073
	.long	1964266390
	.long	1072683770
	.long	2166867862
	.long	1072683462
	.long	2748392752
	.long	1072683149
	.long	3712003017
	.long	1072682831
	.long	765942953
	.long	1072682509
	.long	2503408367
	.long	1072682181
	.long	337775503
	.long	1072681849
	.long	2862339398
	.long	1072681511
	.long	1490575507
	.long	1072681169
	.long	520910767
	.long	1072680822
	.long	4251821703
	.long	1072680469
	.long	4096932527
	.long	1072680112
	.long	59851617
	.long	1072679751
	.long	734171499
	.long	1072679384
	.long	1828632366
	.long	1072679012
	.long	3346991252
	.long	1072678635
	.long	998087427
	.long	1072678254
	.long	3375711577
	.long	1072677867
	.long	1893834721
	.long	1072677476
	.long	851379272
	.long	1072677080
	.long	252349846
	.long	1072676679
	.long	100800549
	.long	1072676273
	.long	400834965
	.long	1072675862
	.long	1156606148
	.long	1072675446
	.long	2372316614
	.long	1072675025
	.long	4052218326
	.long	1072674599
	.long	1905645393
	.long	1072674169
	.long	231915945
	.long	1072673734
	.long	3330397533
	.long	1072673293
	.long	2615605227
	.long	1072672848
	.long	2387005388
	.long	1072672398
	.long	2649146464
	.long	1072671943
	.long	3406626285
	.long	1072671483
	.long	369124749
	.long	1072671019
	.long	2131273000
	.long	1072670549
	.long	107882342
	.long	1072670075
	.long	2893682595
	.long	1072669595
	.long	1903583720
	.long	1072669111
	.long	1437446875
	.long	1072668622
	.long	1500215222
	.long	1072668128
	.long	2096881212
	.long	1072667629
	.long	3232486570
	.long	1072667125
	.long	617154990
	.long	1072666617
	.long	2845961308
	.long	1072666103
	.long	1334160412
	.long	1072665585
	.long	381958310
	.long	1072665062
	.long	4289610224
	.long	1072664533
	.long	177551394
	.long	1072664001
	.long	936070029
	.long	1072663463
	.long	2275634330
	.long	1072662920
	.long	4201728959
	.long	1072662372
	.long	2424920436
	.long	1072661820
	.long	1245759011
	.long	1072661263
	.long	669876763
	.long	1072660701
	.long	702954886
	.long	1072660134
	.long	1350723671
	.long	1072659562
	.long	2618962498
	.long	1072658985
	.long	218532521
	.long	1072658404
	.long	2745245840
	.long	1072657817
	.long	1615094418
	.long	1072657226
	.long	1129021136
	.long	1072656630
	.long	1293050596
	.long	1072656029
	.long	2113256401
	.long	1072655423
	.long	3595761144
	.long	1072654812
	.long	1451769097
	.long	1072654197
	.long	4277435375
	.long	1072653576
	.long	3489094859
	.long	1072652951
	.long	3388033245
	.long	1072652321
	.long	3980617848
	.long	1072651686
	.long	978297589
	.long	1072651047
	.long	2977472160
	.long	1072650402
	.long	1394720941
	.long	1072649753
	.long	531574052
	.long	1072649099
	.long	394643158
	.long	1072648440
	.long	990588746
	.long	1072647776
	.long	2326120113
	.long	1072647107
	.long	113028051
	.long	1072646434
	.long	2948054014
	.long	1072645755
	.long	2248119036
	.long	1072645072
	.long	2315094779
	.long	1072644384
	.long	3155934341
	.long	1072643691
	.long	482672231
	.long	1072642994
	.long	2892293545
	.long	1072642291
	.long	1801962870
	.long	1072641584
	.long	1513795345
	.long	1072640872
	.long	2034987456
	.long	1072640155
	.long	3372784319
	.long	1072639433
	.long	1239512361
	.long	1072638707
	.long	4232448496
	.long	1072637975
	.long	3769049026
	.long	1072637239
	.long	4151720701
	.long	1072636498
	.long	1092984222
	.long	1072635753
	.long	3190310700
	.long	1072635002
	.long	1861350570
	.long	1072634247
	.long	1408704641
	.long	1072633487
	.long	1840054899
	.long	1072632722
	.long	3163131780
	.long	1072631952
	.long	1090746858
	.long	1072631178
	.long	4220662013
	.long	1072630398
	.long	3970818336
	.long	1072629614
	.long	349139890
	.long	1072628826
	.long	1953533690
	.long	1072628032
	.long	202085908
	.long	1072627234
	.long	3692800222
	.long	1072626430
	.long	3843859432
	.long	1072625622
	.long	663429211
	.long	1072624810
	.long	2749658091
	.long	1072623992
	.long	1520873667
	.long	1072623170
	.long	1280353646
	.long	1072622343
	.long	2036456648
	.long	1072621511
	.long	3797589478
	.long	1072620674
	.long	2277239815
	.long	1072619833
	.long	1778878076
	.long	1072618987
	.long	2311055509
	.long	1072618136
	.long	3882371471
	.long	1072617280
	.long	2206506109
	.long	1072616420
	.long	1587122230
	.long	1072615555
	.long	2032963389
	.long	1072614685
	.long	3552821170
	.long	1072613810
	.long	1860567863
	.long	1072612931
	.long	1260058336
	.long	1072612047
	.long	1760228125
	.long	1072611158
	.long	3370060707
	.long	1072610264
	.long	1803620185
	.long	1072609366
	.long	1364953153
	.long	1072608463
	.long	2063186789
	.long	1072607555
	.long	3907496126
	.long	1072606642
	.long	2612136740
	.long	1072605725
	.long	2481346609
	.long	1072604803
	.long	3524444210
	.long	1072603876
	.long	1455828493
	.long	1072602945
	.long	579880747
	.long	1072602009
	.long	906062692
	.long	1072601068
	.long	2443883751
	.long	1072600122
	.long	907933735
	.long	1072599172
	.long	602784701
	.long	1072598217
	.long	1538089050
	.long	1072597257
	.long	3723546794
	.long	1072596292
	.long	2873938243
	.long	1072595323
	.long	3294025862
	.long	1072594349
	.long	698685072
	.long	1072593371
	.long	3687740704
	.long	1072592387
	.long	3681195900
	.long	1072591399
	.long	689035871
	.long	1072590407
	.long	3311227872
	.long	1072589409
	.long	2967917399
	.long	1072588407
	.long	3964199243
	.long	1072587400
	.long	2015280982
	.long	1072586389
	.long	1426352141
	.long	1072585373
	.long	2207682284
	.long	1072584352
	.long	74620983
	.long	1072583327
	.long	3627466986
	.long	1072582296
	.long	4286697114
	.long	1072581261
	.long	2062770015
	.long	1072580222
	.long	1261158843
	.long	1072579178
	.long	1892416643
	.long	1072578129
	.long	3967143619
	.long	1072577075
	.long	3201019815
	.long	1072576017
	.long	3899706979
	.long	1072574954
	.long	1778979352
	.long	1072573887
	.long	1144592826
	.long	1072572815
	.long	2007383032
	.long	1072571738
	.long	83265317
	.long	1072570657
	.long	3973103897
	.long	1072569570
	.long	802973467
	.long	1072568480
	.long	3468799429
	.long	1072567384
	.long	3391717614
	.long	1072566284
	.long	582845323
	.long	1072565180
	.long	3643281304
	.long	1072564070
	.long	3994301947
	.long	1072562956
	.long	1647165039
	.long	1072561838
	.long	908142434
	.long	1072560715
	.long	1788585441
	.long	1072559587
	.long	4924793
	.long	1072558455
	.long	4158539808
	.long	1072557317
	.long	1376019988
	.long	1072556176
	.long	258837960
	.long	1072555030
	.long	818578371
	.long	1072553879
	.long	3066872452
	.long	1072552723
	.long	2720430702
	.long	1072551563
	.long	4085944739
	.long	1072550398
	.long	2880218095
	.long	1072549229
	.long	3410035370
	.long	1072548055
	.long	1392293021
	.long	1072546877
	.long	1133868517
	.long	1072545694
	.long	2646718424
	.long	1072544506
	.long	1647878375
	.long	1072543314
	.long	2444364932
	.long	1072542117
	.long	753306374
	.long	1072540916
	.long	881811849
	.long	1072539710
	.long	2842069462
	.long	1072538499
	.long	2351346242
	.long	1072537284
	.long	3716890005
	.long	1072536064
	.long	2656060139
	.long	1072534840
	.long	3476196758
	.long	1072533611
	.long	1894751492
	.long	1072532378
	.long	2219156640
	.long	1072531140
	.long	166955956
	.long	1072529898
	.long	45673803
	.long	1072528651
	.long	1867913240
	.long	1072527399
	.long	1351355986
	.long	1072526143
	.long	2803664282
	.long	1072524882
	.long	1942611679
	.long	1072523617
	.long	3075952185
	.long	1072522347
	.long	1921551060
	.long	1072521073
	.long	2787253961
	.long	1072519794
	.long	1391017735
	.long	1072518511
	.long	2040779567
	.long	1072517223
	.long	454587771
	.long	1072515931
	.long	940470937
	.long	1072514634
	.long	3511536018
	.long	1072513332
	.long	3885968295
	.long	1072512026
	.long	2076965941
	.long	1072510716
	.long	2392739988
	.long	1072509401
	.long	551612409
	.long	1072508082
	.long	861885270
	.long	1072506758
	.long	3336938812
	.long	1072505429
	.long	3695231416
	.long	1072504096
	.long	1950234168
	.long	1072502759
	.long	2410430824
	.long	1072501417
	.long	794415892
	.long	1072500071
	.long	1410763784
	.long	1072498720
	.long	4273126893
	.long	1072497364
	.long	805268271
	.long	1072496005
	.long	3905832661
	.long	1072494640
	.long	703706216
	.long	1072493272
	.long	4097624013
	.long	1072491898
	.long	1216562472
	.long	1072490521
	.long	664379577
	.long	1072489139
	.long	2455043774
	.long	1072487752
	.long	2307601230
	.long	1072486361
	.long	236110398
	.long	1072484966
	.long	549641975
	.long	1072483566
	.long	3262344288
	.long	1072482161
	.long	4093443251
	.long	1072480752
	.long	3057176929
	.long	1072479339
	.long	167828207
	.long	1072477922
	.long	4029659347
	.long	1072476499
	.long	1772140886
	.long	1072475073
	.long	1999624558
	.long	1072473642
	.long	431604894
	.long	1072472207
	.long	1377555668
	.long	1072470767
	.long	557060681
	.long	1072469323
	.long	2279682905
	.long	1072467874
	.long	2265095270
	.long	1072466421
	.long	527982516
	.long	1072464964
	.long	1378041158
	.long	1072463502
	.long	535077561
	.long	1072462036
	.long	2308877097
	.long	1072460565
	.long	2419334915
	.long	1072459090
	.long	881357804
	.long	1072457611
	.long	2004864152
	.long	1072456127
	.long	1509882026
	.long	1072454639
	.long	3706418317
	.long	1072453146
	.long	19622230
	.long	1072451650
	.long	3349523611
	.long	1072450148
	.long	826392658
	.long	1072448643
	.long	1055380144
	.long	1072447133
	.long	4051746302
	.long	1072445618
	.long	1240860797
	.long	1072444100
	.long	1228006461
	.long	1072442577
	.long	4028575483
	.long	1072441049
	.long	1068069371
	.long	1072439518
	.long	951902693
	.long	1072437982
	.long	3695599266
	.long	1072436441
	.long	724792115
	.long	1072434897
	.long	645027218
	.long	1072433348
	.long	3471959689
	.long	1072431794
	.long	631353743
	.long	1072430237
	.long	728886435
	.long	1072428675
	.long	3780343844
	.long	1072427108
	.long	1211621043
	.long	1072425538
	.long	1628525831
	.long	1072423963
	.long	752007624
	.long	1072422384
	.long	2892993903
	.long	1072420800
	.long	3772520986
	.long	1072419212
	.long	3406635883
	.long	1072417620
	.long	1811428960
	.long	1072416024
	.long	3298001197
	.long	1072414423
	.long	3587562264
	.long	1072412818
	.long	2696332367
	.long	1072411209
	.long	640574919
	.long	1072409596
	.long	1731563795
	.long	1072407978
	.long	1690681404
	.long	1072406356
	.long	534320542
	.long	1072404730
	.long	2573884350
	.long	1072403099
	.long	3530884391
	.long	1072401464
	.long	3421842496
	.long	1072399825
	.long	2263323431
	.long	1072398182
	.long	71934856
	.long	1072396535
	.long	1159294586
	.long	1072394883
	.long	1247128658
	.long	1072393227
	.long	352173186
	.long	1072391567
	.long	2786174316
	.long	1072389902
	.long	4270986303
	.long	1072388233
	.long	528506059
	.long	1072386561
	.long	165575006
	.long	1072384884
	.long	3199142553
	.long	1072383202
	.long	1056266057
	.long	1072381517
	.long	2343914559
	.long	1072379827
	.long	2784197674
	.long	1072378133
	.long	2394234729
	.long	1072376435
	.long	1191187433
	.long	1072374733
	.long	3487227131
	.long	1072373026
	.long	709665576
	.long	1072371316
	.long	1465725966
	.long	1072369601
	.long	1477771826
	.long	1072367882
	.long	763176155
	.long	1072366159
	.long	3634321383
	.long	1072364431
	.long	1518730148
	.long	1072362700
	.long	3023836323
	.long	1072360964
	.long	3872213910
	.long	1072359224
	.long	4081446173
	.long	1072357480
	.long	3669158310
	.long	1072355732
	.long	2653017406
	.long	1072353980
	.long	1050732391
	.long	1072352224
	.long	3175021299
	.long	1072350463
	.long	453742039
	.long	1072348699
	.long	1494663423
	.long	1072346930
	.long	2020694056
	.long	1072345157
	.long	2049751479
	.long	1072343380
	.long	1599794824
	.long	1072341599
	.long	688824778
	.long	1072339814
	.long	3629850836
	.long	1072338024
	.long	1851022072
	.long	1072336231
	.long	3960398168
	.long	1072334433
	.long	1386211009
	.long	1072332632
	.long	2736603001
	.long	1072330826
	.long	3734855959
	.long	1072329016
	.long	104292957
	.long	1072327203
	.long	453180163
	.long	1072325385
	.long	504923029
	.long	1072323563
	.long	277935427
	.long	1072321737
	.long	4085639606
	.long	1072319906
	.long	3356596967
	.long	1072318072
	.long	2404311791
	.long	1072316234
	.long	1247362018
	.long	1072314392
	.long	4199333789
	.long	1072312545
	.long	2688952221
	.long	1072310695
	.long	1029885139
	.long	1072308841
	.long	3535841144
	.long	1072306982
	.long	1635667680
	.long	1072305120
	.long	3938122063
	.long	1072303253
	.long	1872133068
	.long	1072301383
	.long	4046539253
	.long	1072299508
	.long	1890350546
	.long	1072297630
	.long	4012486569
	.long	1072295747
	.long	1842038225
	.long	1072293861
	.long	3988006021
	.long	1072291970
	.long	1879561656
	.long	1072290076
	.long	4125786343
	.long	1072288177
	.long	2155932396
	.long	1072286275
	.long	284194259
	.long	1072284369
	.long	2824806568
	.long	1072282458
	.long	1207142223
	.long	1072280544
	.long	4040483413
	.long	1072278625
	.long	2754283199
	.long	1072276703
	.long	1662936545
	.long	1072274777
	.long	785911085
	.long	1072272847
	.long	142714377
	.long	1072270913
	.long	4047861149
	.long	1072268974
	.long	3931004070
	.long	1072267032
	.long	4106737481
	.long	1072265086
	.long	299760870
	.long	1072263137
	.long	1119715303
	.long	1072261183
	.long	2291379601
	.long	1072259225
	.long	3834539483
	.long	1072257263
	.long	1474052920
	.long	1072255298
	.long	3819719279
	.long	1072253328
	.long	2301508199
	.long	1072251355
	.long	1234330620
	.long	1072249378
	.long	638169550
	.long	1072247397
	.long	533047316
	.long	1072245412
	.long	939025512
	.long	1072243423
	.long	1876204959
	.long	1072241430
	.long	3364725651
	.long	1072239433
	.long	1129799417
	.long	1072237433
	.long	3781579053
	.long	1072235428
	.long	2750387206
	.long	1072233420
	.long	2351487396
	.long	1072231408
	.long	2605214784
	.long	1072229392
	.long	3531943424
	.long	1072227372
	.long	857118914
	.long	1072225349
	.long	3191127534
	.long	1072223321
	.long	1964525128
	.long	1072221290
	.long	1492808125
	.long	1072219255
	.long	1796544307
	.long	1072217216
	.long	2896340057
	.long	1072215173
	.long	517873016
	.long	1072213127
	.long	3271761216
	.long	1072211076
	.long	2588791961
	.long	1072209022
	.long	2784692849
	.long	1072206964
	.long	3880262541
	.long	1072204902
	.long	1601370710
	.long	1072202837
	.long	263859881
	.long	1072200768
	.long	4183610790
	.long	1072198694
	.long	496673149
	.long	1072196618
	.long	2108938562
	.long	1072194537
	.long	451500211
	.long	1072192453
	.long	4135358478
	.long	1072190364
	.long	296715230
	.long	1072188273
	.long	1841614021
	.long	1072186177
	.long	201299792
	.long	1072184078
	.long	3986924481
	.long	1072181974
	.long	334841311
	.long	1072179868
	.long	2151244996
	.long	1072177757
	.long	867531434
	.long	1072175643
	.long	800036025
	.long	1072173525
	.long	1970164439
	.long	1072171403
	.long	104392560
	.long	1072169278
	.long	3814135627
	.long	1072167148
	.long	236009809
	.long	1072165016
	.long	2276472414
	.long	1072162879
	.long	1367181582
	.long	1072160739
	.long	1824734600
	.long	1072158595
	.long	3670798670
	.long	1072156447
	.long	2632110855
	.long	1072154296
	.long	3025379918
	.long	1072152141
	.long	577417089
	.long	1072149983
	.long	3899972486
	.long	1072147820
	.long	129996706
	.long	1072145655
	.long	2174281021
	.long	1072143485
	.long	1464817074
	.long	1072141312
	.long	2318535198
	.long	1072139135
	.long	462467878
	.long	1072136955
	.long	213618890
	.long	1072134771
	.long	1594061355
	.long	1072132583
	.long	330937691
	.long	1072130392
	.long	741361451
	.long	1072128197
	.long	2847515375
	.long	1072125998
	.long	2376651346
	.long	1072123796
	.long	3645992221
	.long	1072121590
	.long	2382862597
	.long	1072119381
	.long	2904557939
	.long	1072117168
	.long	938475351
	.long	1072114952
	.long	801982697
	.long	1072112732
	.long	2517516669
	.long	1072110508
	.long	1812582730
	.long	1072108281
	.long	3004656950
	.long	1072106050
	.long	1821316769
	.long	1072103816
	.long	2580110127
	.long	1072101578
	.long	1008686231
	.long	1072099337
	.long	1424664678
	.long	1072097092
	.long	3850733523
	.long	1072094843
	.long	4014649218
	.long	1072092591
	.long	1939171154
	.long	1072090336
	.long	1942061608
	.long	1072088077
	.long	4046151095
	.long	1072085814
	.long	3979338317
	.long	1072083548
	.long	1764524697
	.long	1072081279
	.long	1719614331
	.long	1072079006
	.long	3867579338
	.long	1072076729
	.long	3936459805
	.long	1072074449
	.long	1949298330
	.long	1072072166
	.long	2224139962
	.long	1072069879
	.long	489130261
	.long	1072067589
	.long	1062384430
	.long	1072065295
	.long	3967085368
	.long	1072062997
	.long	636516323
	.long	1072060697
	.long	3978831908
	.long	1072058392
	.long	1132417790
	.long	1072056085
	.long	710530892
	.long	1072053774
	.long	2736528266
	.long	1072051459
	.long	2938834333
	.long	1072049141
	.long	1340875421
	.long	1072046820
	.long	2261079711
	.long	1072044495
	.long	1427975291
	.long	1072042167
	.long	3160059285
	.long	1072039835
	.long	3185928617
	.long	1072037500
	.long	1529181840
	.long	1072035162
	.long	2508419083
	.long	1072032820
	.long	1852340105
	.long	1072030475
	.long	3879613424
	.long	1072028126
	.long	24039784
	.long	1072025775
	.long	3194290462
	.long	1072023419
	.long	529266962
	.long	1072021061
	.long	642741208
	.long	1072018699
	.long	3558584423
	.long	1072016333
	.long	710767070
	.long	1072013965
	.long	713162568
	.long	1072011593
	.long	3589743466
	.long	1072009217
	.long	774581383
	.long	1072006839
	.long	881650728
	.long	1072004457
	.long	3935024867
	.long	1072002071
	.long	1368876068
	.long	1071999683
	.long	1797279219
	.long	1071997291
	.long	949440699
	.long	1071994896
	.long	3144534801
	.long	1071992497
	.long	4111834492
	.long	1071990095
	.long	3875613246
	.long	1071987690
	.long	2460177684
	.long	1071985282
	.long	4184834820
	.long	1071982870
	.long	484022818
	.long	1071980456
	.long	4267049298
	.long	1071978037
	.long	2673451028
	.long	1071975616
	.long	22666827
	.long	1071973192
	.long	634168317
	.long	1071970764
	.long	237525280
	.long	1071968333
	.long	3152274781
	.long	1071965898
	.long	813084631
	.long	1071963461
	.long	1834524401
	.long	1071961020
	.long	1946294291
	.long	1071958576
	.long	1173094259
	.long	1071956129
	.long	3834623959
	.long	1071953678
	.long	1365713501
	.long	1071951225
	.long	2381094465
	.long	1071948768
	.long	2610628770
	.long	1071946308
	.long	2079177799
	.long	1071943845
	.long	811635046
	.long	1071941379
	.long	3127893351
	.long	1071938909
	.long	462975660
	.long	1071936437
	.long	1431806036
	.long	1071933961
	.long	1764438532
	.long	1071931482
	.long	1485926311
	.long	1071929000
	.long	621354293
	.long	1071926515
	.long	3490806395
	.long	1071924026
	.long	1529496284
	.long	1071921535
	.long	3352538391
	.long	1071919040
	.long	395209483
	.long	1071916543
	.long	1272686975
	.long	1071914042
	.long	1715277795
	.long	1071911538
	.long	1748287510
	.long	1071909031
	.long	1397052969
	.long	1071906521
	.long	686942246
	.long	1071904008
	.long	3938321874
	.long	1071901491
	.long	2586687603
	.long	1071898972
	.long	952468115
	.long	1071896450
	.long	3356123076
	.long	1071893924
	.long	1233241188
	.long	1071891396
	.long	3199311203
	.long	1071888864
	.long	689983491
	.long	1071886330
	.long	2320808352
	.long	1071883792
	.long	3822464880
	.long	1071881251
	.long	925662794
	.long	1071878708
	.long	2246044262
	.long	1071876161
	.long	3514380068
	.long	1071873611
	.long	461471439
	.long	1071871059
	.long	1703051867
	.long	1071868503
	.long	2969983281
	.long	1071865944
	.long	4288125164
	.long	1071863382
	.long	1388399901
	.long	1071860818
	.long	2886661905
	.long	1071858250
	.long	218926480
	.long	1071855680
	.long	2001108131
	.long	1071853106
	.long	3964249430
	.long	1071850529
	.long	1839422842
	.long	1071847950
	.long	4242632552
	.long	1071845367
	.long	2610043334
	.long	1071842782
	.long	1262751558
	.long	1071840194
	.long	226915945
	.long	1071837603
	.long	3823692100
	.long	1071835008
	.long	3489363266
	.long	1071832411
	.long	3545144035
	.long	1071829811
	.long	4017311105
	.long	1071827208
	.long	637203218
	.long	1071824603
	.long	2021090283
	.long	1071821994
	.long	3900369533
	.long	1071819382
	.long	2006467360
	.long	1071816768
	.long	660773835
	.long	1071814151
	.long	4184708060
	.long	1071811530
	.long	4014816217
	.long	1071808907
	.long	177607985
	.long	1071806282
	.long	1289556475
	.long	1071803653
	.long	3082261694
	.long	1071801021
	.long	1287352362
	.long	1071798387
	.long	226420450
	.long	1071795750
	.long	4221086518
	.long	1071793109
	.long	413130475
	.long	1071790467
	.long	1714164470
	.long	1071787821
	.long	3855959872
	.long	1071785172
	.long	2570316394
	.long	1071782521
	.long	2178996615
	.long	1071779867
	.long	2708824037
	.long	1071777210
	.long	4186650309
	.long	1071774550
	.long	2344387878
	.long	1071771888
	.long	1503911805
	.long	1071769223
	.long	1692157819
	.long	1071766555
	.long	2936089545
	.long	1071763884
	.long	967731150
	.long	1071761211
	.long	109069164
	.long	1071758535
	.long	387150529
	.long	1071755856
	.long	1829049832
	.long	1071753174
	.long	166901944
	.long	1071750490
	.long	4017771141
	.long	1071747802
	.long	523912674
	.long	1071745113
	.long	2597412957
	.long	1071742420
	.long	1675549250
	.long	1071739725
	.long	2080527965
	.long	1071737027
	.long	3839615411
	.long	1071734326
	.long	2685137737
	.long	1071731623
	.long	2939382751
	.long	1071728917
	.long	334730676
	.long	1071726209
	.long	3488490560
	.long	1071723497
	.long	3838129145
	.long	1071720783
	.long	1411074576
	.long	1071718067
	.long	529749041
	.long	1071715348
	.long	1221634114
	.long	1071712626
	.long	3514237984
	.long	1071709901
	.long	3140128102
	.long	1071707174
	.long	126865697
	.long	1071704445
	.long	3091973019
	.long	1071701712
	.long	3473129487
	.long	1071698977
	.long	1297975409
	.long	1071696240
	.long	889144615
	.long	1071693500
	.long	2274329803
	.long	1071690757
	.long	1186282472
	.long	1071688012
	.long	1947714748
	.long	1071685264
	.long	291430131
	.long	1071682514
	.long	540192613
	.long	1071679761
	.long	2721824730
	.long	1071677005
	.long	2569207491
	.long	1071674247
	.long	110214909
	.long	1071671487
	.long	3962681226
	.long	1071668723
	.long	1269629780
	.long	1071665958
	.long	648945898
	.long	1071663190
	.long	2128605758
	.long	1071660419
	.long	1441643618
	.long	1071657646
	.long	2911053641
	.long	1071654870
	.long	2269920641
	.long	1071652092
	.long	3841289204
	.long	1071649311
	.long	3358294439
	.long	1071646528
	.long	1698127593
	.long	1071642814
	.long	1273434007
	.long	1071637238
	.long	1203895516
	.long	1071631657
	.long	1545916511
	.long	1071626071
	.long	2355950943
	.long	1071620480
	.long	3690502197
	.long	1071614884
	.long	1311155658
	.long	1071609284
	.long	3864447767
	.long	1071603678
	.long	2817094811
	.long	1071598068
	.long	2520763862
	.long	1071592453
	.long	3032203463
	.long	1071586833
	.long	113243494
	.long	1071581209
	.long	2410664218
	.long	1071575579
	.long	1391425079
	.long	1071569945
	.long	1407435642
	.long	1071564306
	.long	2515686268
	.long	1071558662
	.long	478247987
	.long	1071553014
	.long	3942141545
	.long	1071547360
	.long	79598901
	.long	1071541703
	.long	1832703348
	.long	1071536040
	.long	668749126
	.long	1071530373
	.long	939979652
	.long	1071524701
	.long	2703718202
	.long	1071519024
	.long	1722367776
	.long	1071513343
	.long	2348312853
	.long	1071507657
	.long	344050068
	.long	1071501967
	.long	62057265
	.long	1071496272
	.long	1559891471
	.long	1071490572
	.long	600188760
	.long	1071484868
	.long	1535566009
	.long	1071479159
	.long	128751574
	.long	1071473446
	.long	732454342
	.long	1071467728
	.long	3404461704
	.long	1071462005
	.long	3907639422
	.long	1071456278
	.long	2299866081
	.long	1071450547
	.long	2934032958
	.long	1071444811
	.long	1573141992
	.long	1071439071
	.long	2570174837
	.long	1071433326
	.long	1688223537
	.long	1071427577
	.long	3280359577
	.long	1071421823
	.long	3109764559
	.long	1071416065
	.long	1234631956
	.long	1071410303
	.long	2008166974
	.long	1071404536
	.long	1193684525
	.long	1071398765
	.long	3144478277
	.long	1071392989
	.long	3623951332
	.long	1071387209
	.long	2690517974
	.long	1071381425
	.long	402636240
	.long	1071375637
	.long	1113775074
	.long	1071369844
	.long	587512305
	.long	1071364047
	.long	3177403691
	.long	1071358245
	.long	352146301
	.long	1071352440
	.long	760349451
	.long	1071346630
	.long	165763492
	.long	1071340816
	.long	2922116152
	.long	1071334997
	.long	498275920
	.long	1071329175
	.long	1543022976
	.long	1071323348
	.long	1820277984
	.long	1071317517
	.long	1388971135
	.long	1071311682
	.long	308074713
	.long	1071305843
	.long	2931570254
	.long	1071299999
	.long	728579219
	.long	1071294152
	.long	2348133933
	.long	1071288300
	.long	3554406366
	.long	1071282444
	.long	111609891
	.long	1071276585
	.long	668901025
	.long	1071270721
	.long	990575519
	.long	1071264853
	.long	1135937398
	.long	1071258981
	.long	1164331530
	.long	1071253105
	.long	1135143482
	.long	1071247225
	.long	1107799384
	.long	1071241341
	.long	1141765788
	.long	1071235453
	.long	1296549525
	.long	1071229561
	.long	1631697570
	.long	1071223665
	.long	2206796899
	.long	1071217765
	.long	3081474348
	.long	1071211861
	.long	20429180
	.long	1071205954
	.long	1673302125
	.long	1071200042
	.long	3804871466
	.long	1071194126
	.long	2179954785
	.long	1071188207
	.long	1153343414
	.long	1071182284
	.long	784900409
	.long	1071176357
	.long	1134527701
	.long	1071170426
	.long	2262165959
	.long	1071164491
	.long	4227794446
	.long	1071158552
	.long	2796463583
	.long	1071152610
	.long	2323196697
	.long	1071146664
	.long	2868087989
	.long	1071140714
	.long	196302395
	.long	1071134761
	.long	2957944627
	.long	1071128803
	.long	2623287961
	.long	1071122842
	.long	3547545165
	.long	1071116877
	.long	1496031879
	.long	1071110909
	.long	824035657
	.long	1071104937
	.long	1591913937
	.long	1071098961
	.long	3860061194
	.long	1071092981
	.long	3393941502
	.long	1071086998
	.long	254022987
	.long	1071081012
	.long	3090744976
	.long	1071075021
	.long	3374714080
	.long	1071069027
	.long	1166507831
	.long	1071063030
	.long	821707239
	.long	1071057029
	.long	2400962058
	.long	1071051024
	.long	1669990647
	.long	1071045016
	.long	2984481712
	.long	1071039004
	.long	2110224977
	.long	1071032989
	.long	3402980232
	.long	1071026970
	.long	2628607999
	.long	1071020948
	.long	4142938575
	.long	1071014922
	.long	3711902708
	.long	1071008893
	.long	1396433336
	.long	1071002861
	.long	1552465450
	.long	1070996825
	.long	4241001351
	.long	1070990785
	.long	933143220
	.long	1070984743
	.long	279896740
	.long	1070978697
	.long	2342367184
	.long	1070972647
	.long	2886726564
	.long	1070966594
	.long	1974148080
	.long	1070960538
	.long	3960805976
	.long	1070954478
	.long	318006209
	.long	1070948416
	.long	3991924680
	.long	1070942349
	.long	2158966826
	.long	1070936280
	.long	3470407736
	.long	1070930207
	.long	3692653639
	.long	1070924131
	.long	2887110941
	.long	1070918052
	.long	1115218787
	.long	1070911970
	.long	2733416210
	.long	1070905884
	.long	3508240101
	.long	1070899795
	.long	3501226951
	.long	1070893703
	.long	2773945408
	.long	1070887608
	.long	1387996136
	.long	1070881510
	.long	3699978966
	.long	1070875408
	.long	1181623561
	.long	1070869304
	.long	2484560352
	.long	1070863196
	.long	3375549312
	.long	1070857085
	.long	3916349001
	.long	1070850971
	.long	4168749123
	.long	1070844854
	.long	4194570377
	.long	1070838734
	.long	4055664318
	.long	1070832611
	.long	3813913205
	.long	1070826485
	.long	3531229862
	.long	1070820356
	.long	3269557526
	.long	1070814224
	.long	3090869704
	.long	1070808089
	.long	3057170029
	.long	1070801951
	.long	3230492110
	.long	1070795810
	.long	3672899390
	.long	1070789666
	.long	151517701
	.long	1070783520
	.long	1318404305
	.long	1070777370
	.long	2940743968
	.long	1070771217
	.long	785750704
	.long	1070765062
	.long	3505569517
	.long	1070758903
	.long	2572505182
	.long	1070752742
	.long	2343793170
	.long	1070746578
	.long	2881730318
	.long	1070740411
	.long	4248641980
	.long	1070734241
	.long	2211914580
	.long	1070728069
	.long	1128897358
	.long	1070721894
	.long	1062000333
	.long	1070715716
	.long	2073661453
	.long	1070709535
	.long	4226346444
	.long	1070703351
	.long	3287581376
	.long	1070697165
	.long	3614854394
	.long	1070690976
	.long	975746392
	.long	1070684785
	.long	4022767348
	.long	1070678590
	.long	4228585099
	.long	1070672393
	.long	1655828973
	.long	1070666194
	.long	662122345
	.long	1070659992
	.long	1310147900
	.long	1070653787
	.long	3662614777
	.long	1070647579
	.long	3487291128
	.long	1070641369
	.long	846938563
	.long	1070635157
	.long	99312000
	.long	1070628942
	.long	1307224928
	.long	1070622724
	.long	238549257
	.long	1070616504
	.long	1251117060
	.long	1070610281
	.long	112851238
	.long	1070604056
	.long	1181634561
	.long	1070597828
	.long	450880660
	.long	1070587100
	.long	3204402837
	.long	1070574634
	.long	2159881872
	.long	1070562164
	.long	1738315236
	.long	1070549689
	.long	2065782172
	.long	1070537209
	.long	3268410690
	.long	1070524724
	.long	1177409980
	.long	1070512235
	.long	213971997
	.long	1070499741
	.long	504369282
	.long	1070487242
	.long	2174921957
	.long	1070474738
	.long	1057030132
	.long	1070462230
	.long	1572075496
	.long	1070449717
	.long	3846519134
	.long	1070437199
	.long	3711901226
	.long	1070424677
	.long	1294775342
	.long	1070412151
	.long	1016708146
	.long	1070399620
	.long	3004344505
	.long	1070387084
	.long	3089407189
	.long	1070374544
	.long	1398631170
	.long	1070362000
	.long	2353763318
	.long	1070349451
	.long	1786660219
	.long	1070336898
	.long	4119157058
	.long	1070324340
	.long	888230840
	.long	1070311779
	.long	810771167
	.long	1070299213
	.long	4013776161
	.long	1070286642
	.long	2034352162
	.long	1070274068
	.long	3589517212
	.long	1070261489
	.long	216462383
	.long	1070248907
	.long	632289845
	.long	1070236320
	.long	669241498
	.long	1070223729
	.long	454567857
	.long	1070211134
	.long	115560453
	.long	1070198535
	.long	4074518832
	.long	1070185931
	.long	3868881071
	.long	1070173324
	.long	3921027255
	.long	1070160713
	.long	63442694
	.long	1070148099
	.long	1013554107
	.long	1070135480
	.long	2603925544
	.long	1070122857
	.long	667159975
	.long	1070110231
	.long	3920800876
	.long	1070097600
	.long	3902560860
	.long	1070084966
	.long	740125146
	.long	1070072329
	.long	3151151268
	.long	1070059687
	.long	2673464991
	.long	1070047042
	.long	3729831085
	.long	1070034393
	.long	2153116544
	.long	1070021741
	.long	2366159470
	.long	1070009085
	.long	201899587
	.long	1069996426
	.long	83247124
	.long	1069983763
	.long	2138180628
	.long	1069971096
	.long	2199746658
	.long	1069958426
	.long	395994083
	.long	1069945753
	.long	1149973775
	.long	1069933076
	.long	294836419
	.long	1069920396
	.long	2253701401
	.long	1069907712
	.long	2859787319
	.long	1069895025
	.long	2241313568
	.long	1069882335
	.long	526532745
	.long	1069869642
	.long	2138697642
	.long	1069856945
	.long	2911159056
	.long	1069844245
	.long	2972267374
	.long	1069831542
	.long	2450404981
	.long	1069818836
	.long	1473985947
	.long	1069806127
	.long	171455735
	.long	1069793415
	.long	2966258191
	.long	1069780699
	.long	1396966054
	.long	1069767981
	.long	4182051733
	.long	1069755259
	.long	2860148631
	.long	1069742535
	.long	1854821915
	.long	1069729808
	.long	1294699033
	.long	1069717078
	.long	1308436702
	.long	1069704345
	.long	2024720610
	.long	1069691609
	.long	3572265111
	.long	1069678870
	.long	1784845625
	.long	1069666129
	.long	1086200226
	.long	1069653385
	.long	1605127450
	.long	1069640638
	.long	3470453285
	.long	1069627888
	.long	2516063576
	.long	1069615136
	.long	3165805607
	.long	1069602381
	.long	1253618617
	.long	1069589624
	.long	1203402674
	.long	1069576864
	.long	3144116493
	.long	1069564101
	.long	2909777123
	.long	1069551336
	.long	1258788490
	.long	1069529618
	.long	1453939717
	.long	1069504078
	.long	2368159493
	.long	1069478533
	.long	4259615517
	.long	1069452983
	.long	3091556424
	.long	1069427429
	.long	3417213070
	.long	1069401870
	.long	1199928732
	.long	1069376307
	.long	993027693
	.long	1069350739
	.long	3054912738
	.long	1069325166
	.long	3349064551
	.long	1069299589
	.long	2133975700
	.long	1069274008
	.long	3963150022
	.long	1069248422
	.long	505232837
	.long	1069222833
	.long	608781412
	.long	1069197239
	.long	237493272
	.long	1069171641
	.long	3945042083
	.long	1069146038
	.long	3400240555
	.long	1069120432
	.long	3156843610
	.long	1069094822
	.long	3473678594
	.long	1069069208
	.long	314644662
	.long	1069043591
	.long	2528581356
	.long	1069017969
	.long	1784496926
	.long	1068992344
	.long	2636338785
	.long	1068966715
	.long	1048156428
	.long	1068941083
	.long	1573970003
	.long	1068915447
	.long	177900515
	.long	1068889808
	.long	1414038406
	.long	1068864165
	.long	1246573756
	.long	1068838519
	.long	4229664859
	.long	1068812869
	.long	2032601135
	.long	1068787217
	.long	3504573588
	.long	1068761561
	.long	314935833
	.long	1068735903
	.long	1312941850
	.long	1068710241
	.long	2462974302
	.long	1068684576
	.long	4024413110
	.long	1068658908
	.long	1961700252
	.long	1068633238
	.long	829241037
	.long	1068607565
	.long	886501609
	.long	1068581889
	.long	2392975633
	.long	1068556210
	.long	1313216386
	.long	1068530529
	.long	2201738035
	.long	1068504845
	.long	2046291691
	.long	1068459374
	.long	369042203
	.long	1068407997
	.long	4185939108
	.long	1068356614
	.long	1131372435
	.long	1068305228
	.long	314615181
	.long	1068253837
	.long	2255051019
	.long	1068202441
	.long	3177140368
	.long	1068151041
	.long	3600353768
	.long	1068099637
	.long	4044203357
	.long	1068048229
	.long	733274354
	.long	1067996818
	.long	2777093023
	.long	1067945402
	.long	2105354372
	.long	1067893983
	.long	3532692012
	.long	1067842560
	.long	3283840443
	.long	1067791134
	.long	1878535729
	.long	1067739705
	.long	4131514269
	.long	1067688272
	.long	1972642389
	.long	1067636837
	.long	216718903
	.long	1067585399
	.long	3678571991
	.long	1067533957
	.long	4288156096
	.long	1067482513
	.long	835807058
	.long	1067411767
	.long	2355381083
	.long	1067308869
	.long	1290064655
	.long	1067205967
	.long	2974803852
	.long	1067103060
	.long	4154654225
	.long	1067000149
	.long	1574712936
	.long	1066897235
	.long	570050906
	.long	1066794317
	.long	2180808480
	.long	1066691395
	.long	3152192979
	.long	1066588470
	.long	229443545
	.long	1066485543
	.long	1790493881
	.long	1066363433
	.long	3789797226
	.long	1066157567
	.long	4242404279
	.long	1065951697
	.long	933966261
	.long	1065745824
	.long	240108154
	.long	1065539947
	.long	4188076536
	.long	1065314917
	.long	4268053992
	.long	1064903152
	.long	586673016
	.long	1064491384
	.long	3200863421
	.long	1063854584
	.long	2933888075
	.long	1062806010
	.long	41009984
	.long	-1120217299
	.long	2934767584
	.long	-1084677638
	.long	3201303175
	.long	-1083629064
	.long	586892892
	.long	-1082992264
	.long	4268273866
	.long	-1082580496
	.long	4188296407
	.long	-1082168731
	.long	240218088
	.long	-1081943701
	.long	934076193
	.long	-1081737824
	.long	4242514209
	.long	-1081531951
	.long	3789907154
	.long	-1081326081
	.long	1790603807
	.long	-1081120215
	.long	229498507
	.long	-1080998105
	.long	3152247939
	.long	-1080895178
	.long	2180863439
	.long	-1080792253
	.long	570105863
	.long	-1080689331
	.long	1574767891
	.long	-1080586413
	.long	4154709178
	.long	-1080483499
	.long	2974858803
	.long	-1080380588
	.long	1290119603
	.long	-1080277681
	.long	2355436029
	.long	-1080174779
	.long	835862002
	.long	-1080071881
	.long	4288183567
	.long	-1080001135
	.long	3678599460
	.long	-1079949691
	.long	216746371
	.long	-1079898249
	.long	1972669856
	.long	-1079846811
	.long	4131541733
	.long	-1079795376
	.long	1878563192
	.long	-1079743943
	.long	3283867905
	.long	-1079692514
	.long	3532719471
	.long	-1079641088
	.long	2105381830
	.long	-1079589665
	.long	2777120478
	.long	-1079538246
	.long	733301808
	.long	-1079486830
	.long	4044230809
	.long	-1079435419
	.long	3600381218
	.long	-1079384011
	.long	3177167815
	.long	-1079332607
	.long	2255078464
	.long	-1079281207
	.long	314642624
	.long	-1079229811
	.long	1131399875
	.long	-1079178420
	.long	4185966546
	.long	-1079127034
	.long	369069638
	.long	-1079075651
	.long	2046319124
	.long	-1079024274
	.long	2201751751
	.long	-1078978803
	.long	1313230100
	.long	-1078953119
	.long	2392989346
	.long	-1078927438
	.long	886515320
	.long	-1078901759
	.long	829254746
	.long	-1078876083
	.long	1961713960
	.long	-1078850410
	.long	4024426816
	.long	-1078824740
	.long	2462988007
	.long	-1078799072
	.long	1312955553
	.long	-1078773407
	.long	314949535
	.long	-1078747745
	.long	3504587289
	.long	-1078722087
	.long	2032614833
	.long	-1078696431
	.long	4229678556
	.long	-1078670779
	.long	1246587451
	.long	-1078645129
	.long	1414052100
	.long	-1078619483
	.long	177914207
	.long	-1078593840
	.long	1573983693
	.long	-1078568201
	.long	1048170116
	.long	-1078542565
	.long	2636352471
	.long	-1078516933
	.long	1784510610
	.long	-1078491304
	.long	2528595039
	.long	-1078465679
	.long	314658342
	.long	-1078440057
	.long	3473692272
	.long	-1078414440
	.long	3156857286
	.long	-1078388826
	.long	3400254229
	.long	-1078363216
	.long	3945055755
	.long	-1078337610
	.long	237506942
	.long	-1078312007
	.long	608795079
	.long	-1078286409
	.long	505246503
	.long	-1078260815
	.long	3963163685
	.long	-1078235226
	.long	2133989360
	.long	-1078209640
	.long	3349078210
	.long	-1078184059
	.long	3054926394
	.long	-1078158482
	.long	993041347
	.long	-1078132909
	.long	1199942384
	.long	-1078107341
	.long	3417226719
	.long	-1078081778
	.long	3091570071
	.long	-1078056219
	.long	4259629161
	.long	-1078030665
	.long	2368173135
	.long	-1078005115
	.long	1453953356
	.long	-1077979570
	.long	1258802126
	.long	-1077954030
	.long	2909783940
	.long	-1077932312
	.long	3144123308
	.long	-1077919547
	.long	1203409488
	.long	-1077906784
	.long	1253625429
	.long	-1077894024
	.long	3165812419
	.long	-1077881267
	.long	2516070386
	.long	-1077868512
	.long	3470460094
	.long	-1077855760
	.long	1605134257
	.long	-1077843010
	.long	1086207032
	.long	-1077830263
	.long	1784852429
	.long	-1077817519
	.long	3572271913
	.long	-1077804778
	.long	2024727411
	.long	-1077792039
	.long	1308443502
	.long	-1077779303
	.long	1294705831
	.long	-1077766570
	.long	1854828712
	.long	-1077753840
	.long	2860155426
	.long	-1077741113
	.long	4182058527
	.long	-1077728389
	.long	1396972846
	.long	-1077715667
	.long	2966264981
	.long	-1077702949
	.long	171462524
	.long	-1077690233
	.long	1473992734
	.long	-1077677521
	.long	2450411766
	.long	-1077664812
	.long	2972274158
	.long	-1077652106
	.long	2911165838
	.long	-1077639403
	.long	2138704422
	.long	-1077626703
	.long	526539524
	.long	-1077614006
	.long	2241320345
	.long	-1077601313
	.long	2859794095
	.long	-1077588623
	.long	2253708175
	.long	-1077575936
	.long	294843191
	.long	-1077563252
	.long	1149980545
	.long	-1077550572
	.long	396000852
	.long	-1077537895
	.long	2199753425
	.long	-1077525222
	.long	2138187392
	.long	-1077512552
	.long	83253887
	.long	-1077499885
	.long	201906348
	.long	-1077487222
	.long	2366166229
	.long	-1077474563
	.long	2153123301
	.long	-1077461907
	.long	3729837840
	.long	-1077449255
	.long	2673471744
	.long	-1077436606
	.long	3151158020
	.long	-1077423961
	.long	740131896
	.long	-1077411319
	.long	3902567607
	.long	-1077398682
	.long	3920807622
	.long	-1077386048
	.long	667166718
	.long	-1077373417
	.long	2603932285
	.long	-1077360791
	.long	1013560846
	.long	-1077348168
	.long	63449431
	.long	-1077335549
	.long	3921033990
	.long	-1077322935
	.long	3868887804
	.long	-1077310324
	.long	4074525563
	.long	-1077297717
	.long	115567182
	.long	-1077285113
	.long	454574584
	.long	-1077272514
	.long	669248223
	.long	-1077259919
	.long	632296567
	.long	-1077247328
	.long	216469103
	.long	-1077234741
	.long	3589523930
	.long	-1077222159
	.long	2034358878
	.long	-1077209580
	.long	4013782874
	.long	-1077197006
	.long	810777878
	.long	-1077184435
	.long	888237549
	.long	-1077171869
	.long	4119163764
	.long	-1077159308
	.long	1786666923
	.long	-1077146750
	.long	2353770020
	.long	-1077134197
	.long	1398637870
	.long	-1077121648
	.long	3089413886
	.long	-1077109104
	.long	3004351199
	.long	-1077096564
	.long	1016714838
	.long	-1077084028
	.long	1294782032
	.long	-1077071497
	.long	3711907913
	.long	-1077058971
	.long	3846525819
	.long	-1077046449
	.long	1572082179
	.long	-1077033931
	.long	1057036812
	.long	-1077021418
	.long	2174928635
	.long	-1077008910
	.long	504375958
	.long	-1076996406
	.long	213978670
	.long	-1076983907
	.long	1177416650
	.long	-1076971413
	.long	3268417358
	.long	-1076958924
	.long	2065788837
	.long	-1076946439
	.long	1738321899
	.long	-1076933959
	.long	2159888532
	.long	-1076921484
	.long	3204409494
	.long	-1076909014
	.long	450887315
	.long	-1076896548
	.long	1181637887
	.long	-1076885820
	.long	112854563
	.long	-1076879592
	.long	1251120383
	.long	-1076873367
	.long	238552579
	.long	-1076867144
	.long	1307228249
	.long	-1076860924
	.long	99315319
	.long	-1076854706
	.long	846941881
	.long	-1076848491
	.long	3487294445
	.long	-1076842279
	.long	3662618092
	.long	-1076836069
	.long	1310151214
	.long	-1076829861
	.long	662125658
	.long	-1076823656
	.long	1655832284
	.long	-1076817454
	.long	4228588408
	.long	-1076811255
	.long	4022770656
	.long	-1076805058
	.long	975749699
	.long	-1076798863
	.long	3614857699
	.long	-1076792672
	.long	3287584680
	.long	-1076786483
	.long	4226349747
	.long	-1076780297
	.long	2073664754
	.long	-1076774113
	.long	1062003633
	.long	-1076767932
	.long	1128900656
	.long	-1076761754
	.long	2211917877
	.long	-1076755579
	.long	4248645275
	.long	-1076749407
	.long	2881733612
	.long	-1076743237
	.long	2343796462
	.long	-1076737070
	.long	2572508472
	.long	-1076730906
	.long	3505572806
	.long	-1076724745
	.long	785753991
	.long	-1076718586
	.long	2940747254
	.long	-1076712431
	.long	1318407590
	.long	-1076706278
	.long	151520984
	.long	-1076700128
	.long	3672902671
	.long	-1076693982
	.long	3230495390
	.long	-1076687838
	.long	3057173307
	.long	-1076681697
	.long	3090872981
	.long	-1076675559
	.long	3269560801
	.long	-1076669424
	.long	3531233136
	.long	-1076663292
	.long	3813916477
	.long	-1076657163
	.long	4055667588
	.long	-1076651037
	.long	4194573646
	.long	-1076644914
	.long	4168752390
	.long	-1076638794
	.long	3916352267
	.long	-1076632677
	.long	3375552576
	.long	-1076626563
	.long	2484563614
	.long	-1076620452
	.long	1181626822
	.long	-1076614344
	.long	3699982225
	.long	-1076608240
	.long	1387999393
	.long	-1076602138
	.long	2773948663
	.long	-1076596040
	.long	3501230204
	.long	-1076589945
	.long	3508243354
	.long	-1076583853
	.long	2733419461
	.long	-1076577764
	.long	1115222036
	.long	-1076571678
	.long	2887114188
	.long	-1076565596
	.long	3692656884
	.long	-1076559517
	.long	3470410980
	.long	-1076553441
	.long	2158970067
	.long	-1076547368
	.long	3991927920
	.long	-1076541299
	.long	318009447
	.long	-1076535232
	.long	3960809212
	.long	-1076529170
	.long	1974151315
	.long	-1076523110
	.long	2886729797
	.long	-1076517054
	.long	2342370415
	.long	-1076511001
	.long	279899969
	.long	-1076504951
	.long	933146447
	.long	-1076498905
	.long	4241004577
	.long	-1076492863
	.long	1552468674
	.long	-1076486823
	.long	1396436558
	.long	-1076480787
	.long	3711905928
	.long	-1076474755
	.long	4142941794
	.long	-1076468726
	.long	2628611215
	.long	-1076462700
	.long	3402983447
	.long	-1076456678
	.long	2110228190
	.long	-1076450659
	.long	2984484923
	.long	-1076444644
	.long	1669993856
	.long	-1076438632
	.long	2400965265
	.long	-1076432624
	.long	821710444
	.long	-1076426619
	.long	1166511035
	.long	-1076420618
	.long	3374717282
	.long	-1076414621
	.long	3090748175
	.long	-1076408627
	.long	254026185
	.long	-1076402636
	.long	3393944698
	.long	-1076396650
	.long	3860064388
	.long	-1076390667
	.long	1591917129
	.long	-1076384687
	.long	824038847
	.long	-1076378711
	.long	1496035067
	.long	-1076372739
	.long	3547548351
	.long	-1076366771
	.long	2623291145
	.long	-1076360806
	.long	2957947809
	.long	-1076354845
	.long	196305575
	.long	-1076348887
	.long	2868091167
	.long	-1076342934
	.long	2323199873
	.long	-1076336984
	.long	2796466757
	.long	-1076331038
	.long	4227797618
	.long	-1076325096
	.long	2262169129
	.long	-1076319157
	.long	1134530869
	.long	-1076313222
	.long	784903575
	.long	-1076307291
	.long	1153346578
	.long	-1076301364
	.long	2179957947
	.long	-1076295441
	.long	3804874626
	.long	-1076289522
	.long	1673305283
	.long	-1076283606
	.long	20432336
	.long	-1076277694
	.long	3081477501
	.long	-1076271787
	.long	2206800050
	.long	-1076265883
	.long	1631700719
	.long	-1076259983
	.long	1296552672
	.long	-1076254087
	.long	1141768933
	.long	-1076248195
	.long	1107802527
	.long	-1076242307
	.long	1135146623
	.long	-1076236423
	.long	1164334669
	.long	-1076230543
	.long	1135940535
	.long	-1076224667
	.long	990578654
	.long	-1076218795
	.long	668904158
	.long	-1076212927
	.long	111613021
	.long	-1076207063
	.long	3554409494
	.long	-1076201204
	.long	2348137058
	.long	-1076195348
	.long	728582343
	.long	-1076189496
	.long	2931573375
	.long	-1076183649
	.long	308077832
	.long	-1076177805
	.long	1388974252
	.long	-1076171966
	.long	1820281098
	.long	-1076166131
	.long	1543026088
	.long	-1076160300
	.long	498279030
	.long	-1076154473
	.long	2922119260
	.long	-1076148651
	.long	165766597
	.long	-1076142832
	.long	760352555
	.long	-1076137018
	.long	352149403
	.long	-1076131208
	.long	3177406790
	.long	-1076125403
	.long	587515402
	.long	-1076119601
	.long	1113778169
	.long	-1076113804
	.long	402639332
	.long	-1076108011
	.long	2690521064
	.long	-1076102223
	.long	3623954419
	.long	-1076096439
	.long	3144481362
	.long	-1076090659
	.long	1193687608
	.long	-1076084883
	.long	2008170054
	.long	-1076079112
	.long	1234635035
	.long	-1076073345
	.long	3109767635
	.long	-1076067583
	.long	3280362650
	.long	-1076061825
	.long	1688226608
	.long	-1076056071
	.long	2570177905
	.long	-1076050322
	.long	1573145058
	.long	-1076044577
	.long	2934036022
	.long	-1076038837
	.long	2299869143
	.long	-1076033101
	.long	3907642481
	.long	-1076027370
	.long	3404464761
	.long	-1076021643
	.long	732457397
	.long	-1076015920
	.long	128754626
	.long	-1076010202
	.long	1535569059
	.long	-1076004489
	.long	600191807
	.long	-1075998780
	.long	1559894516
	.long	-1075993076
	.long	62060308
	.long	-1075987376
	.long	344053108
	.long	-1075981681
	.long	2348315890
	.long	-1075975991
	.long	1722370811
	.long	-1075970305
	.long	2703721234
	.long	-1075964624
	.long	939982682
	.long	-1075958947
	.long	668752154
	.long	-1075953275
	.long	1832706373
	.long	-1075947608
	.long	79601923
	.long	-1075941945
	.long	3942144565
	.long	-1075936288
	.long	478251005
	.long	-1075930634
	.long	2515689283
	.long	-1075924986
	.long	1407438654
	.long	-1075919342
	.long	1391428089
	.long	-1075913703
	.long	2410667225
	.long	-1075908069
	.long	113246499
	.long	-1075902439
	.long	3032206465
	.long	-1075896815
	.long	2520766861
	.long	-1075891195
	.long	2817097808
	.long	-1075885580
	.long	3864450762
	.long	-1075879970
	.long	1311158650
	.long	-1075874364
	.long	3690505186
	.long	-1075868764
	.long	2355953929
	.long	-1075863168
	.long	1545919495
	.long	-1075857577
	.long	1203898498
	.long	-1075851991
	.long	1273436986
	.long	-1075846410
	.long	1698130569
	.long	-1075840834
	.long	3358295926
	.long	-1075837120
	.long	3841290690
	.long	-1075834337
	.long	2269922125
	.long	-1075831556
	.long	2911055123
	.long	-1075828778
	.long	1441645100
	.long	-1075826002
	.long	2128607238
	.long	-1075823229
	.long	648947377
	.long	-1075820458
	.long	1269631257
	.long	-1075817690
	.long	3962682702
	.long	-1075814925
	.long	110216384
	.long	-1075812161
	.long	2569208965
	.long	-1075809401
	.long	2721826202
	.long	-1075806643
	.long	540194084
	.long	-1075803887
	.long	291431600
	.long	-1075801134
	.long	1947716216
	.long	-1075798384
	.long	1186283939
	.long	-1075795636
	.long	2274331268
	.long	-1075792891
	.long	889146078
	.long	-1075790148
	.long	1297976871
	.long	-1075787408
	.long	3473130948
	.long	-1075784671
	.long	3091974478
	.long	-1075781936
	.long	126867156
	.long	-1075779203
	.long	3140129558
	.long	-1075776474
	.long	3514239440
	.long	-1075773747
	.long	1221635568
	.long	-1075771022
	.long	529750494
	.long	-1075768300
	.long	1411076028
	.long	-1075765581
	.long	3838130595
	.long	-1075762865
	.long	3488492008
	.long	-1075760151
	.long	334732123
	.long	-1075757439
	.long	2939384197
	.long	-1075754731
	.long	2685139181
	.long	-1075752025
	.long	3839616854
	.long	-1075749322
	.long	2080529406
	.long	-1075746621
	.long	1675550690
	.long	-1075743923
	.long	2597414395
	.long	-1075741228
	.long	523914111
	.long	-1075738535
	.long	4017772577
	.long	-1075735846
	.long	166903378
	.long	-1075733158
	.long	1829051265
	.long	-1075730474
	.long	387151960
	.long	-1075727792
	.long	109070594
	.long	-1075725113
	.long	967732578
	.long	-1075722437
	.long	2936090972
	.long	-1075719764
	.long	1692159244
	.long	-1075717093
	.long	1503913229
	.long	-1075714425
	.long	2344389301
	.long	-1075711760
	.long	4186651730
	.long	-1075709098
	.long	2708825456
	.long	-1075706438
	.long	2178998033
	.long	-1075703781
	.long	2570317810
	.long	-1075701127
	.long	3855961287
	.long	-1075698476
	.long	1714165883
	.long	-1075695827
	.long	413131887
	.long	-1075693181
	.long	4221087929
	.long	-1075690539
	.long	226421859
	.long	-1075687898
	.long	1287353770
	.long	-1075685261
	.long	3082263100
	.long	-1075682627
	.long	1289557880
	.long	-1075679995
	.long	177609388
	.long	-1075677366
	.long	4014817619
	.long	-1075674741
	.long	4184709460
	.long	-1075672118
	.long	660775233
	.long	-1075669497
	.long	2006468757
	.long	-1075666880
	.long	3900370929
	.long	-1075664266
	.long	2021091676
	.long	-1075661654
	.long	637204610
	.long	-1075659045
	.long	4017312495
	.long	-1075656440
	.long	3545145424
	.long	-1075653837
	.long	3489364654
	.long	-1075651237
	.long	3823693486
	.long	-1075648640
	.long	226917329
	.long	-1075646045
	.long	1262752941
	.long	-1075643454
	.long	2610044716
	.long	-1075640866
	.long	4242633932
	.long	-1075638281
	.long	1839424220
	.long	-1075635698
	.long	3964250806
	.long	-1075633119
	.long	2001109506
	.long	-1075630542
	.long	218927853
	.long	-1075627968
	.long	2886663277
	.long	-1075625398
	.long	1388401271
	.long	-1075622830
	.long	4288126533
	.long	-1075620266
	.long	2969984648
	.long	-1075617704
	.long	1703053233
	.long	-1075615145
	.long	461472803
	.long	-1075612589
	.long	3514381431
	.long	-1075610037
	.long	2246045623
	.long	-1075607487
	.long	925664153
	.long	-1075604940
	.long	3822466237
	.long	-1075602397
	.long	2320809707
	.long	-1075599856
	.long	689984845
	.long	-1075597318
	.long	3199312555
	.long	-1075594784
	.long	1233242539
	.long	-1075592252
	.long	3356124425
	.long	-1075589724
	.long	952469462
	.long	-1075587198
	.long	2586688949
	.long	-1075584676
	.long	3938323218
	.long	-1075582157
	.long	686943588
	.long	-1075579640
	.long	1397054310
	.long	-1075577127
	.long	1748288849
	.long	-1075574617
	.long	1715279133
	.long	-1075572110
	.long	1272688312
	.long	-1075569606
	.long	395210818
	.long	-1075567105
	.long	3352539724
	.long	-1075564608
	.long	1529497615
	.long	-1075562113
	.long	3490807725
	.long	-1075559622
	.long	621355621
	.long	-1075557133
	.long	1485927637
	.long	-1075554648
	.long	1764439857
	.long	-1075552166
	.long	1431807359
	.long	-1075549687
	.long	462976981
	.long	-1075547211
	.long	3127894670
	.long	-1075544739
	.long	811636364
	.long	-1075542269
	.long	2079179116
	.long	-1075539803
	.long	2610630085
	.long	-1075537340
	.long	2381095778
	.long	-1075534880
	.long	1365714812
	.long	-1075532423
	.long	3834625268
	.long	-1075529970
	.long	1173095566
	.long	-1075527519
	.long	1946295597
	.long	-1075525072
	.long	1834525705
	.long	-1075522628
	.long	813085934
	.long	-1075520187
	.long	3152276082
	.long	-1075517750
	.long	237526579
	.long	-1075515315
	.long	634169614
	.long	-1075512884
	.long	22668122
	.long	-1075510456
	.long	2673452322
	.long	-1075508032
	.long	4267050590
	.long	-1075505611
	.long	484024108
	.long	-1075503192
	.long	4184836109
	.long	-1075500778
	.long	2460178971
	.long	-1075498366
	.long	3875614531
	.long	-1075495958
	.long	4111835776
	.long	-1075493553
	.long	3144536082
	.long	-1075491151
	.long	949441978
	.long	-1075488752
	.long	1797280497
	.long	-1075486357
	.long	1368877345
	.long	-1075483965
	.long	3935026142
	.long	-1075481577
	.long	881652001
	.long	-1075479191
	.long	774582654
	.long	-1075476809
	.long	3589744735
	.long	-1075474431
	.long	713163835
	.long	-1075472055
	.long	710768335
	.long	-1075469683
	.long	3558585687
	.long	-1075467315
	.long	642742470
	.long	-1075464949
	.long	529268222
	.long	-1075462587
	.long	3194291721
	.long	-1075460229
	.long	24041041
	.long	-1075457873
	.long	3879614679
	.long	-1075455522
	.long	1852341358
	.long	-1075453173
	.long	2508420335
	.long	-1075450828
	.long	1529183090
	.long	-1075448486
	.long	3185929865
	.long	-1075446148
	.long	3160060531
	.long	-1075443813
	.long	1427976535
	.long	-1075441481
	.long	2261080954
	.long	-1075439153
	.long	1340876662
	.long	-1075436828
	.long	2938835571
	.long	-1075434507
	.long	2736529502
	.long	-1075432189
	.long	710532127
	.long	-1075429874
	.long	1132419023
	.long	-1075427563
	.long	3978833139
	.long	-1075425256
	.long	636517552
	.long	-1075422951
	.long	3967086595
	.long	-1075420651
	.long	1062385656
	.long	-1075418353
	.long	489131485
	.long	-1075416059
	.long	2224141184
	.long	-1075413769
	.long	1949299551
	.long	-1075411482
	.long	3936461024
	.long	-1075409199
	.long	3867580554
	.long	-1075406919
	.long	1719615546
	.long	-1075404642
	.long	1764525910
	.long	-1075402369
	.long	3979339527
	.long	-1075400100
	.long	4046152304
	.long	-1075397834
	.long	1942062815
	.long	-1075395571
	.long	1939172360
	.long	-1075393312
	.long	4014650421
	.long	-1075391057
	.long	3850734725
	.long	-1075388805
	.long	1424665878
	.long	-1075386556
	.long	1008687428
	.long	-1075384311
	.long	2580111323
	.long	-1075382070
	.long	1821317963
	.long	-1075379832
	.long	3004658142
	.long	-1075377598
	.long	1812583920
	.long	-1075375367
	.long	2517517857
	.long	-1075373140
	.long	801983883
	.long	-1075370916
	.long	938476535
	.long	-1075368696
	.long	2904559122
	.long	-1075366480
	.long	2382863777
	.long	-1075364267
	.long	3645993400
	.long	-1075362058
	.long	2376652523
	.long	-1075359852
	.long	2847516550
	.long	-1075357650
	.long	741362624
	.long	-1075355451
	.long	330938863
	.long	-1075353256
	.long	1594062524
	.long	-1075351065
	.long	213620057
	.long	-1075348877
	.long	462469043
	.long	-1075346693
	.long	2318536361
	.long	-1075344513
	.long	1464818236
	.long	-1075342336
	.long	2174282180
	.long	-1075340163
	.long	129997864
	.long	-1075337993
	.long	3899973642
	.long	-1075335828
	.long	577418242
	.long	-1075333665
	.long	3025381070
	.long	-1075331507
	.long	2632112004
	.long	-1075329352
	.long	3670799818
	.long	-1075327201
	.long	1824735746
	.long	-1075325053
	.long	1367182726
	.long	-1075322909
	.long	2276473556
	.long	-1075320769
	.long	236010949
	.long	-1075318632
	.long	3814136765
	.long	-1075316500
	.long	104393696
	.long	-1075314370
	.long	1970165573
	.long	-1075312245
	.long	800037157
	.long	-1075310123
	.long	867532564
	.long	-1075308005
	.long	2151246124
	.long	-1075305891
	.long	334842437
	.long	-1075303780
	.long	3986925605
	.long	-1075301674
	.long	201300912
	.long	-1075299570
	.long	1841615139
	.long	-1075297471
	.long	296716345
	.long	-1075295375
	.long	4135359592
	.long	-1075293284
	.long	451501322
	.long	-1075291195
	.long	2108939671
	.long	-1075289111
	.long	496674257
	.long	-1075287030
	.long	4183611895
	.long	-1075284954
	.long	263860984
	.long	-1075282880
	.long	1601371811
	.long	-1075280811
	.long	3880263640
	.long	-1075278746
	.long	2784693946
	.long	-1075276684
	.long	2588793056
	.long	-1075274626
	.long	3271762309
	.long	-1075272572
	.long	517874107
	.long	-1075270521
	.long	2896341146
	.long	-1075268475
	.long	1796545394
	.long	-1075266432
	.long	1492809210
	.long	-1075264393
	.long	1964526211
	.long	-1075262358
	.long	3191128615
	.long	-1075260327
	.long	857119993
	.long	-1075258299
	.long	3531944501
	.long	-1075256276
	.long	2605215859
	.long	-1075254256
	.long	2351488469
	.long	-1075252240
	.long	2750388277
	.long	-1075250228
	.long	3781580122
	.long	-1075248220
	.long	1129800484
	.long	-1075246215
	.long	3364726716
	.long	-1075244215
	.long	1876206022
	.long	-1075242218
	.long	939026573
	.long	-1075240225
	.long	533048374
	.long	-1075238236
	.long	638170607
	.long	-1075236251
	.long	1234331674
	.long	-1075234270
	.long	2301509251
	.long	-1075232293
	.long	3819720329
	.long	-1075230320
	.long	1474053968
	.long	-1075228350
	.long	3834540529
	.long	-1075226385
	.long	2291380645
	.long	-1075224423
	.long	1119716345
	.long	-1075222465
	.long	299761910
	.long	-1075220511
	.long	4106738519
	.long	-1075218562
	.long	3931005105
	.long	-1075216616
	.long	4047862182
	.long	-1075214674
	.long	142715409
	.long	-1075212735
	.long	785912115
	.long	-1075210801
	.long	1662937572
	.long	-1075208871
	.long	2754284224
	.long	-1075206945
	.long	4040484436
	.long	-1075205023
	.long	1207143244
	.long	-1075203104
	.long	2824807587
	.long	-1075201190
	.long	284195275
	.long	-1075199279
	.long	2155933411
	.long	-1075197373
	.long	4125787356
	.long	-1075195471
	.long	1879562667
	.long	-1075193572
	.long	3988007030
	.long	-1075191678
	.long	1842039231
	.long	-1075189787
	.long	4012487573
	.long	-1075187901
	.long	1890351548
	.long	-1075186018
	.long	4046540253
	.long	-1075184140
	.long	1872134065
	.long	-1075182265
	.long	3938123058
	.long	-1075180395
	.long	1635668673
	.long	-1075178528
	.long	3535842135
	.long	-1075176666
	.long	1029886128
	.long	-1075174807
	.long	2688953208
	.long	-1075172953
	.long	4199334774
	.long	-1075171103
	.long	1247363001
	.long	-1075169256
	.long	2404312772
	.long	-1075167414
	.long	3356597945
	.long	-1075165576
	.long	4085640582
	.long	-1075163742
	.long	277936401
	.long	-1075161911
	.long	504924001
	.long	-1075160085
	.long	453181133
	.long	-1075158263
	.long	104293924
	.long	-1075156445
	.long	3734856925
	.long	-1075154632
	.long	2736603964
	.long	-1075152822
	.long	1386211970
	.long	-1075151016
	.long	3960399127
	.long	-1075149215
	.long	1851023028
	.long	-1075147417
	.long	3629851791
	.long	-1075145624
	.long	688825730
	.long	-1075143834
	.long	1599795774
	.long	-1075142049
	.long	2049752427
	.long	-1075140268
	.long	2020695002
	.long	-1075138491
	.long	1494664366
	.long	-1075136718
	.long	453742980
	.long	-1075134949
	.long	3175022238
	.long	-1075133185
	.long	1050733328
	.long	-1075131424
	.long	2653018340
	.long	-1075129668
	.long	3669159243
	.long	-1075127916
	.long	4081447103
	.long	-1075126168
	.long	3872214838
	.long	-1075124424
	.long	3023837249
	.long	-1075122684
	.long	1518731071
	.long	-1075120948
	.long	3634322304
	.long	-1075119217
	.long	763177074
	.long	-1075117489
	.long	1477772743
	.long	-1075115766
	.long	1465726881
	.long	-1075114047
	.long	709666489
	.long	-1075112332
	.long	3487228041
	.long	-1075110622
	.long	1191188341
	.long	-1075108915
	.long	2394235634
	.long	-1075107213
	.long	2784198577
	.long	-1075105515
	.long	2343915461
	.long	-1075103821
	.long	1056266956
	.long	-1075102131
	.long	3199143450
	.long	-1075100446
	.long	165575900
	.long	-1075098764
	.long	528506951
	.long	-1075097087
	.long	4270987193
	.long	-1075095415
	.long	2786175204
	.long	-1075093746
	.long	352174072
	.long	-1075092081
	.long	1247129542
	.long	-1075090421
	.long	1159295467
	.long	-1075088765
	.long	71935735
	.long	-1075087113
	.long	2263324307
	.long	-1075085466
	.long	3421843371
	.long	-1075083823
	.long	3530885263
	.long	-1075082184
	.long	2573885220
	.long	-1075080549
	.long	534321410
	.long	-1075078918
	.long	1690682270
	.long	-1075077292
	.long	1731564658
	.long	-1075075670
	.long	640575780
	.long	-1075074052
	.long	2696333225
	.long	-1075072439
	.long	3587563120
	.long	-1075070830
	.long	3298002051
	.long	-1075069225
	.long	1811429812
	.long	-1075067624
	.long	3406636732
	.long	-1075066028
	.long	3772521833
	.long	-1075064436
	.long	2892994748
	.long	-1075062848
	.long	752008467
	.long	-1075061264
	.long	1628526671
	.long	-1075059685
	.long	1211621881
	.long	-1075058110
	.long	3780344680
	.long	-1075056540
	.long	728887268
	.long	-1075054973
	.long	631354574
	.long	-1075053411
	.long	3471960518
	.long	-1075051854
	.long	645028045
	.long	-1075050300
	.long	724792939
	.long	-1075048751
	.long	3695600088
	.long	-1075047207
	.long	951903513
	.long	-1075045666
	.long	1068070188
	.long	-1075044130
	.long	4028576298
	.long	-1075042599
	.long	1228007274
	.long	-1075041071
	.long	1240861607
	.long	-1075039548
	.long	4051747110
	.long	-1075038030
	.long	1055380949
	.long	-1075036515
	.long	826393461
	.long	-1075035005
	.long	3349524412
	.long	-1075033500
	.long	19623029
	.long	-1075031998
	.long	3706419114
	.long	-1075030502
	.long	1509882820
	.long	-1075029009
	.long	2004864944
	.long	-1075027521
	.long	881358593
	.long	-1075026037
	.long	2419335702
	.long	-1075024558
	.long	2308877881
	.long	-1075023083
	.long	535078344
	.long	-1075021612
	.long	1378041937
	.long	-1075020146
	.long	527983294
	.long	-1075018684
	.long	2265096046
	.long	-1075017227
	.long	2279683678
	.long	-1075015774
	.long	557061452
	.long	-1075014325
	.long	1377556437
	.long	-1075012881
	.long	431605660
	.long	-1075011441
	.long	1999625321
	.long	-1075010006
	.long	1772141647
	.long	-1075008575
	.long	4029660106
	.long	-1075007149
	.long	167828963
	.long	-1075005726
	.long	3057177683
	.long	-1075004309
	.long	4093444003
	.long	-1075002896
	.long	3262345038
	.long	-1075001487
	.long	549642722
	.long	-1075000082
	.long	236111142
	.long	-1074998682
	.long	2307601973
	.long	-1074997287
	.long	2455044514
	.long	-1074995896
	.long	664380315
	.long	-1074994509
	.long	1216563207
	.long	-1074993127
	.long	4097624746
	.long	-1074991750
	.long	703706946
	.long	-1074990376
	.long	3905833389
	.long	-1074989008
	.long	805268996
	.long	-1074987643
	.long	4273127617
	.long	-1074986284
	.long	1410764505
	.long	-1074984928
	.long	794416611
	.long	-1074983577
	.long	2410431540
	.long	-1074982231
	.long	1950234882
	.long	-1074980889
	.long	3695232128
	.long	-1074979552
	.long	3336939522
	.long	-1074978219
	.long	861885979
	.long	-1074976890
	.long	551613116
	.long	-1074975566
	.long	2392740694
	.long	-1074974247
	.long	2076966645
	.long	-1074972932
	.long	3885968997
	.long	-1074971622
	.long	3511536719
	.long	-1074970316
	.long	940471636
	.long	-1074969014
	.long	454588469
	.long	-1074967717
	.long	2040780263
	.long	-1074966425
	.long	1391018429
	.long	-1074965137
	.long	2787254654
	.long	-1074963854
	.long	1921551751
	.long	-1074962575
	.long	3075952875
	.long	-1074961301
	.long	1942612367
	.long	-1074960031
	.long	2803664968
	.long	-1074958766
	.long	1351356670
	.long	-1074957505
	.long	1867913923
	.long	-1074956249
	.long	45674484
	.long	-1074954997
	.long	166956635
	.long	-1074953750
	.long	2219157318
	.long	-1074952508
	.long	1894752168
	.long	-1074951270
	.long	3476197432
	.long	-1074950037
	.long	2656060811
	.long	-1074948808
	.long	3716890676
	.long	-1074947584
	.long	2351346911
	.long	-1074946364
	.long	2842070129
	.long	-1074945149
	.long	881812514
	.long	-1074943938
	.long	753307037
	.long	-1074942732
	.long	2444365594
	.long	-1074941531
	.long	1647879035
	.long	-1074940334
	.long	2646719082
	.long	-1074939142
	.long	1133869174
	.long	-1074937954
	.long	1392293676
	.long	-1074936771
	.long	3410036023
	.long	-1074935593
	.long	2880218746
	.long	-1074934419
	.long	4085945388
	.long	-1074933250
	.long	2720431349
	.long	-1074932085
	.long	3066873098
	.long	-1074930925
	.long	818579014
	.long	-1074929769
	.long	258838602
	.long	-1074928618
	.long	1376020628
	.long	-1074927472
	.long	4158540446
	.long	-1074926331
	.long	4925430
	.long	-1074925193
	.long	1788586075
	.long	-1074924061
	.long	908143066
	.long	-1074922933
	.long	1647165669
	.long	-1074921810
	.long	3994302576
	.long	-1074920692
	.long	3643281930
	.long	-1074919578
	.long	582845948
	.long	-1074918468
	.long	3391718237
	.long	-1074917364
	.long	3468800050
	.long	-1074916264
	.long	802974086
	.long	-1074915168
	.long	3973104514
	.long	-1074914078
	.long	83265932
	.long	-1074912991
	.long	2007383645
	.long	-1074911910
	.long	1144593437
	.long	-1074910833
	.long	1778979961
	.long	-1074909761
	.long	3899707587
	.long	-1074908694
	.long	3201020420
	.long	-1074907631
	.long	3967144222
	.long	-1074906573
	.long	1892417244
	.long	-1074905519
	.long	1261159442
	.long	-1074904470
	.long	2062770612
	.long	-1074903426
	.long	4286697709
	.long	-1074902387
	.long	3627467579
	.long	-1074901352
	.long	74621574
	.long	-1074900321
	.long	2207682873
	.long	-1074899296
	.long	1426352728
	.long	-1074898275
	.long	2015281567
	.long	-1074897259
	.long	3964199826
	.long	-1074896248
	.long	2967917980
	.long	-1074895241
	.long	3311228450
	.long	-1074894239
	.long	689036448
	.long	-1074893241
	.long	3681196474
	.long	-1074892249
	.long	3687741276
	.long	-1074891261
	.long	698685643
	.long	-1074890277
	.long	3294026430
	.long	-1074889299
	.long	2873938808
	.long	-1074888325
	.long	3723547358
	.long	-1074887356
	.long	1538089611
	.long	-1074886391
	.long	602785260
	.long	-1074885431
	.long	907934292
	.long	-1074884476
	.long	2443884306
	.long	-1074883526
	.long	906063245
	.long	-1074882580
	.long	579881297
	.long	-1074881639
	.long	1455829041
	.long	-1074880703
	.long	3524444757
	.long	-1074879772
	.long	2481347154
	.long	-1074878845
	.long	2612137282
	.long	-1074877923
	.long	3907496666
	.long	-1074877006
	.long	2063187326
	.long	-1074876093
	.long	1364953688
	.long	-1074875185
	.long	1803620718
	.long	-1074874282
	.long	3370061238
	.long	-1074873384
	.long	1760228654
	.long	-1074872490
	.long	1260058863
	.long	-1074871601
	.long	1860568387
	.long	-1074870717
	.long	3552821691
	.long	-1074869838
	.long	2032963909
	.long	-1074868963
	.long	1587122747
	.long	-1074868093
	.long	2206506624
	.long	-1074867228
	.long	3882371984
	.long	-1074866368
	.long	2311056019
	.long	-1074865512
	.long	1778878584
	.long	-1074864661
	.long	2277240321
	.long	-1074863815
	.long	3797589981
	.long	-1074862974
	.long	2036457149
	.long	-1074862137
	.long	1280354145
	.long	-1074861305
	.long	1520874163
	.long	-1074860478
	.long	2749658585
	.long	-1074859656
	.long	663429702
	.long	-1074858838
	.long	3843859921
	.long	-1074858026
	.long	3692800709
	.long	-1074857218
	.long	202086392
	.long	-1074856414
	.long	1953534172
	.long	-1074855616
	.long	349140370
	.long	-1074854822
	.long	3970818813
	.long	-1074854034
	.long	4220662488
	.long	-1074853250
	.long	1090747331
	.long	-1074852470
	.long	3163132250
	.long	-1074851696
	.long	1840055367
	.long	-1074850926
	.long	1408705106
	.long	-1074850161
	.long	1861351032
	.long	-1074849401
	.long	3190311160
	.long	-1074848646
	.long	1092984679
	.long	-1074847895
	.long	4151721156
	.long	-1074847150
	.long	3769049478
	.long	-1074846409
	.long	4232448946
	.long	-1074845673
	.long	1239512809
	.long	-1074844941
	.long	3372784764
	.long	-1074844215
	.long	2034987899
	.long	-1074843493
	.long	1513795785
	.long	-1074842776
	.long	1801963308
	.long	-1074842064
	.long	2892293980
	.long	-1074841357
	.long	482672664
	.long	-1074840654
	.long	3155934771
	.long	-1074839957
	.long	2315095207
	.long	-1074839264
	.long	2248119460
	.long	-1074838576
	.long	2948054436
	.long	-1074837893
	.long	113028470
	.long	-1074837214
	.long	2326120531
	.long	-1074836541
	.long	990589161
	.long	-1074835872
	.long	394643570
	.long	-1074835208
	.long	531574461
	.long	-1074834549
	.long	1394721348
	.long	-1074833895
	.long	2977472565
	.long	-1074833246
	.long	978297991
	.long	-1074832601
	.long	3980618247
	.long	-1074831962
	.long	3388033641
	.long	-1074831327
	.long	3489095253
	.long	-1074830697
	.long	4277435766
	.long	-1074830072
	.long	1451769485
	.long	-1074829451
	.long	3595761530
	.long	-1074828836
	.long	2113256784
	.long	-1074828225
	.long	1293050976
	.long	-1074827619
	.long	1129021514
	.long	-1074827018
	.long	1615094793
	.long	-1074826422
	.long	2745246212
	.long	-1074825831
	.long	218532890
	.long	-1074825244
	.long	2618962865
	.long	-1074824663
	.long	1350724036
	.long	-1074824086
	.long	702955247
	.long	-1074823514
	.long	669877122
	.long	-1074822947
	.long	1245759367
	.long	-1074822385
	.long	2424920790
	.long	-1074821828
	.long	4201729310
	.long	-1074821276
	.long	2275634678
	.long	-1074820728
	.long	936070374
	.long	-1074820185
	.long	177551736
	.long	-1074819647
	.long	4289610563
	.long	-1074819115
	.long	381958647
	.long	-1074818586
	.long	1334160746
	.long	-1074818063
	.long	2845961639
	.long	-1074817545
	.long	617155319
	.long	-1074817031
	.long	3232486895
	.long	-1074816523
	.long	2096881535
	.long	-1074816019
	.long	1500215542
	.long	-1074815520
	.long	1437447192
	.long	-1074815026
	.long	1903584034
	.long	-1074814537
	.long	2893682906
	.long	-1074814053
	.long	107882650
	.long	-1074813573
	.long	2131273306
	.long	-1074813099
	.long	369125052
	.long	-1074812629
	.long	3406626584
	.long	-1074812165
	.long	2649146761
	.long	-1074811705
	.long	2387005682
	.long	-1074811250
	.long	2615605518
	.long	-1074810800
	.long	3330397821
	.long	-1074810355
	.long	231916230
	.long	-1074809914
	.long	1905645675
	.long	-1074809479
	.long	4052218605
	.long	-1074809049
	.long	2372316890
	.long	-1074808623
	.long	1156606422
	.long	-1074808202
	.long	400835235
	.long	-1074807786
	.long	100800816
	.long	-1074807375
	.long	252350111
	.long	-1074806969
	.long	851379533
	.long	-1074806568
	.long	1893834980
	.long	-1074806172
	.long	3375711833
	.long	-1074805781
	.long	998087680
	.long	-1074805394
	.long	3346991502
	.long	-1074805013
	.long	1828632613
	.long	-1074804636
	.long	734171742
	.long	-1074804264
	.long	59851857
	.long	-1074803897
	.long	4096932765
	.long	-1074803536
	.long	4251821937
	.long	-1074803179
	.long	520910999
	.long	-1074802826
	.long	1490575736
	.long	-1074802479
	.long	2862339624
	.long	-1074802137
	.long	337775726
	.long	-1074801799
	.long	2503408587
	.long	-1074801467
	.long	765943169
	.long	-1074801139
	.long	3712003230
	.long	-1074800817
	.long	2748392962
	.long	-1074800499
	.long	2166868069
	.long	-1074800186
	.long	1964266594
	.long	-1074799878
	.long	2137476220
	.long	-1074799575
	.long	2683434277
	.long	-1074799277
	.long	3599127753
	.long	-1074798984
	.long	586626000
	.long	-1074798695
	.long	2232949928
	.long	-1074798412
	.long	4240268235
	.long	-1074798134
	.long	2310799303
	.long	-1074797860
	.long	736745793
	.long	-1074797591
	.long	3810360066
	.long	-1074797328
	.long	2939042293
	.long	-1074797069
	.long	2415144245
	.long	-1074796815
	.long	2236100110
	.long	-1074796566
	.long	2399393798
	.long	-1074796322
	.long	2902558945
	.long	-1074796083
	.long	3743178921
	.long	-1074795849
	.long	623919535
	.long	-1074795619
	.long	2132398233
	.long	-1074795395
	.long	3971380317
	.long	-1074795176
	.long	1843680848
	.long	-1074794961
	.long	42099236
	.long	-1074794751
	.long	2859484657
	.long	-1074794547
	.long	1703834169
	.long	-1074794347
	.long	868096493
	.long	-1074794152
	.long	350302834
	.long	-1074793962
	.long	148534179
	.long	-1074793777
	.long	260921306
	.long	-1074793597
	.long	685644786
	.long	-1074793422
	.long	1420934986
	.long	-1074793252
	.long	2465072076
	.long	-1074793087
	.long	3816386031
	.long	-1074792927
	.long	1178289338
	.long	-1074792771
	.long	3139146190
	.long	-1074792621
	.long	1107501407
	.long	-1074792475
	.long	3671818818
	.long	-1074792335
	.long	2240742891
	.long	-1074792199
	.long	1107869808
	.long	-1074792068
	.long	271878288
	.long	-1074791942
	.long	4026464178
	.long	-1074791822
	.long	3780471274
	.long	-1074791706
	.long	3827695100
	.long	-1074791595
	.long	4167013728
	.long	-1074791489
	.long	502387775
	.long	-1074791387
	.long	1422729598
	.long	-1074791291
	.long	2632099513
	.long	-1074791200
	.long	4129574985
	.long	-1074791114
	.long	1619316038
	.long	-1074791032
	.long	3690434440
	.long	-1074790956
	.long	1752222633
	.long	-1074790884
	.long	98924809
	.long	-1074790817
	.long	3024835020
	.long	-1074790756
	.long	1939395294
	.long	-1074790699
	.long	1136999412
	.long	-1074790647
	.long	617123727
	.long	-1074790600
	.long	379294456
	.long	-1074790558
	.long	423087688
	.long	-1074790521
	.long	748129380
	.long	-1074790489
	.long	1354095361
	.long	-1074790462
	.long	2240711329
	.long	-1074790440
	.long	3407752855
	.long	-1074790423
	.long	560078089
	.long	-1074790410
	.long	2287496938
	.long	-1074790403
	.long	0
	.long	-1074790400
	.long	2287496931
	.long	-1074790403
	.long	560078075
	.long	-1074790410
	.long	3407752834
	.long	-1074790423
	.long	2240711300
	.long	-1074790440
	.long	1354095325
	.long	-1074790462
	.long	748129337
	.long	-1074790489
	.long	423087638
	.long	-1074790521
	.long	379294398
	.long	-1074790558
	.long	617123662
	.long	-1074790600
	.long	1136999341
	.long	-1074790647
	.long	1939395215
	.long	-1074790699
	.long	3024834934
	.long	-1074790756
	.long	98924716
	.long	-1074790817
	.long	1752222533
	.long	-1074790884
	.long	3690434332
	.long	-1074790956
	.long	1619315923
	.long	-1074791032
	.long	4129574862
	.long	-1074791114
	.long	2632099383
	.long	-1074791200
	.long	1422729461
	.long	-1074791291
	.long	502387631
	.long	-1074791387
	.long	4167013577
	.long	-1074791489
	.long	3827694942
	.long	-1074791595
	.long	3780471108
	.long	-1074791706
	.long	4026464005
	.long	-1074791822
	.long	271878108
	.long	-1074791942
	.long	1107869621
	.long	-1074792068
	.long	2240742697
	.long	-1074792199
	.long	3671818617
	.long	-1074792335
	.long	1107501199
	.long	-1074792475
	.long	3139145974
	.long	-1074792621
	.long	1178289116
	.long	-1074792771
	.long	3816385801
	.long	-1074792927
	.long	2465071839
	.long	-1074793087
	.long	1420934742
	.long	-1074793252
	.long	685644535
	.long	-1074793422
	.long	260921048
	.long	-1074793597
	.long	148533913
	.long	-1074793777
	.long	350302561
	.long	-1074793962
	.long	868096213
	.long	-1074794152
	.long	1703833882
	.long	-1074794347
	.long	2859484363
	.long	-1074794547
	.long	42098934
	.long	-1074794751
	.long	1843680539
	.long	-1074794961
	.long	3971380001
	.long	-1074795176
	.long	2132397910
	.long	-1074795395
	.long	623919205
	.long	-1074795619
	.long	3743178583
	.long	-1074795849
	.long	2902558601
	.long	-1074796083
	.long	2399393446
	.long	-1074796322
	.long	2236099751
	.long	-1074796566
	.long	2415143879
	.long	-1074796815
	.long	2939041920
	.long	-1074797069
	.long	3810359685
	.long	-1074797328
	.long	736745406
	.long	-1074797591
	.long	2310798908
	.long	-1074797860
	.long	4240267833
	.long	-1074798134
	.long	2232949519
	.long	-1074798412
	.long	586625584
	.long	-1074798695
	.long	3599127330
	.long	-1074798984
	.long	2683433846
	.long	-1074799277
	.long	2137475782
	.long	-1074799575
	.long	1964266149
	.long	-1074799878
	.long	2166867617
	.long	-1074800186
	.long	2748392503
	.long	-1074800499
	.long	3712002764
	.long	-1074800817
	.long	765942696
	.long	-1074801139
	.long	2503408106
	.long	-1074801467
	.long	337775238
	.long	-1074801799
	.long	2862339129
	.long	-1074802137
	.long	1490575233
	.long	-1074802479
	.long	520910490
	.long	-1074802826
	.long	4251821421
	.long	-1074803179
	.long	4096932242
	.long	-1074803536
	.long	59851327
	.long	-1074803897
	.long	734171205
	.long	-1074804264
	.long	1828632068
	.long	-1074804636
	.long	3346990950
	.long	-1074805013
	.long	998087121
	.long	-1074805394
	.long	3375711267
	.long	-1074805781
	.long	1893834406
	.long	-1074806172
	.long	851378953
	.long	-1074806568
	.long	252349523
	.long	-1074806969
	.long	100800221
	.long	-1074807375
	.long	400834633
	.long	-1074807786
	.long	1156605813
	.long	-1074808202
	.long	2372316274
	.long	-1074808623
	.long	4052217982
	.long	-1074809049
	.long	1905645045
	.long	-1074809479
	.long	231915593
	.long	-1074809914
	.long	3330397176
	.long	-1074810355
	.long	2615604867
	.long	-1074810800
	.long	2387005023
	.long	-1074811250
	.long	2649146095
	.long	-1074811705
	.long	3406625911
	.long	-1074812165
	.long	369124372
	.long	-1074812629
	.long	2131272618
	.long	-1074813099
	.long	107881956
	.long	-1074813573
	.long	2893682205
	.long	-1074814053
	.long	1903583325
	.long	-1074814537
	.long	1437446476
	.long	-1074815026
	.long	1500214819
	.long	-1074815520
	.long	2096880805
	.long	-1074816019
	.long	3232486158
	.long	-1074816523
	.long	617154574
	.long	-1074817031
	.long	2845960887
	.long	-1074817545
	.long	1334159987
	.long	-1074818063
	.long	381957881
	.long	-1074818586
	.long	4289609791
	.long	-1074819115
	.long	177550957
	.long	-1074819647
	.long	936069587
	.long	-1074820185
	.long	2275633884
	.long	-1074820728
	.long	4201728509
	.long	-1074821276
	.long	2424919982
	.long	-1074821828
	.long	1245758552
	.long	-1074822385
	.long	669876300
	.long	-1074822947
	.long	702954418
	.long	-1074823514
	.long	1350723199
	.long	-1074824086
	.long	2618962022
	.long	-1074824663
	.long	218532040
	.long	-1074825244
	.long	2745245355
	.long	-1074825831
	.long	1615093929
	.long	-1074826422
	.long	1129020642
	.long	-1074827018
	.long	1293050097
	.long	-1074827619
	.long	2113255898
	.long	-1074828225
	.long	3595760637
	.long	-1074828836
	.long	1451768585
	.long	-1074829451
	.long	4277434859
	.long	-1074830072
	.long	3489094339
	.long	-1074830697
	.long	3388032720
	.long	-1074831327
	.long	3980617319
	.long	-1074831962
	.long	978297056
	.long	-1074832601
	.long	2977471623
	.long	-1074833246
	.long	1394720399
	.long	-1074833895
	.long	531573505
	.long	-1074834549
	.long	394642607
	.long	-1074835208
	.long	990588191
	.long	-1074835872
	.long	2326119553
	.long	-1074836541
	.long	113027486
	.long	-1074837214
	.long	2948053445
	.long	-1074837893
	.long	2248118462
	.long	-1074838576
	.long	2315094201
	.long	-1074839264
	.long	3155933758
	.long	-1074839957
	.long	482671644
	.long	-1074840654
	.long	2892292954
	.long	-1074841357
	.long	1801962275
	.long	-1074842064
	.long	1513794745
	.long	-1074842776
	.long	2034986852
	.long	-1074843493
	.long	3372783709
	.long	-1074844215
	.long	1239511748
	.long	-1074844941
	.long	4232447878
	.long	-1074845673
	.long	3769048403
	.long	-1074846409
	.long	4151720073
	.long	-1074847150
	.long	1092983590
	.long	-1074847895
	.long	3190310064
	.long	-1074848646
	.long	1861349929
	.long	-1074849401
	.long	1408703996
	.long	-1074850161
	.long	1840054249
	.long	-1074850926
	.long	3163131125
	.long	-1074851696
	.long	1090746199
	.long	-1074852470
	.long	4220661350
	.long	-1074853250
	.long	3970817668
	.long	-1074854034
	.long	349139218
	.long	-1074854822
	.long	1953533013
	.long	-1074855616
	.long	202085226
	.long	-1074856414
	.long	3692799536
	.long	-1074857218
	.long	3843858741
	.long	-1074858026
	.long	663428515
	.long	-1074858838
	.long	2749657391
	.long	-1074859656
	.long	1520872962
	.long	-1074860478
	.long	1280352937
	.long	-1074861305
	.long	2036455934
	.long	-1074862137
	.long	3797588760
	.long	-1074862974
	.long	2277239092
	.long	-1074863815
	.long	1778877348
	.long	-1074864661
	.long	2311054777
	.long	-1074865512
	.long	3882370734
	.long	-1074866368
	.long	2206505368
	.long	-1074867228
	.long	1587121484
	.long	-1074868093
	.long	2032962638
	.long	-1074868963
	.long	3552820414
	.long	-1074869838
	.long	1860567103
	.long	-1074870717
	.long	1260057572
	.long	-1074871601
	.long	1760227356
	.long	-1074872490
	.long	3370059933
	.long	-1074873384
	.long	1803619406
	.long	-1074874282
	.long	1364952370
	.long	-1074875185
	.long	2063186001
	.long	-1074876093
	.long	3907495334
	.long	-1074877006
	.long	2612135943
	.long	-1074877923
	.long	2481345807
	.long	-1074878845
	.long	3524443404
	.long	-1074879772
	.long	1455827681
	.long	-1074880703
	.long	579879931
	.long	-1074881639
	.long	906061871
	.long	-1074882580
	.long	2443882926
	.long	-1074883526
	.long	907932904
	.long	-1074884476
	.long	602783866
	.long	-1074885431
	.long	1538088210
	.long	-1074886391
	.long	3723545950
	.long	-1074887356
	.long	2873937394
	.long	-1074888325
	.long	3294025008
	.long	-1074889299
	.long	698684214
	.long	-1074890277
	.long	3687739841
	.long	-1074891261
	.long	3681195032
	.long	-1074892249
	.long	689034998
	.long	-1074893241
	.long	3311226994
	.long	-1074894239
	.long	2967916517
	.long	-1074895241
	.long	3964198356
	.long	-1074896248
	.long	2015280090
	.long	-1074897259
	.long	1426351245
	.long	-1074898275
	.long	2207681383
	.long	-1074899296
	.long	74620078
	.long	-1074900321
	.long	3627466076
	.long	-1074901352
	.long	4286696199
	.long	-1074902387
	.long	2062769095
	.long	-1074903426
	.long	1261157918
	.long	-1074904470
	.long	1892415713
	.long	-1074905519
	.long	3967142684
	.long	-1074906573
	.long	3201018876
	.long	-1074907631
	.long	3899706035
	.long	-1074908694
	.long	1778978403
	.long	-1074909761
	.long	1144591872
	.long	-1074910833
	.long	2007382074
	.long	-1074911910
	.long	83264354
	.long	-1074912991
	.long	3973102929
	.long	-1074914078
	.long	802972494
	.long	-1074915168
	.long	3468798452
	.long	-1074916264
	.long	3391716632
	.long	-1074917364
	.long	582844336
	.long	-1074918468
	.long	3643280312
	.long	-1074919578
	.long	3994300950
	.long	-1074920692
	.long	1647164037
	.long	-1074921810
	.long	908141428
	.long	-1074922933
	.long	1788584430
	.long	-1074924061
	.long	4923777
	.long	-1074925193
	.long	4158538787
	.long	-1074926331
	.long	1376018962
	.long	-1074927472
	.long	258836930
	.long	-1074928618
	.long	818577335
	.long	-1074929769
	.long	3066871412
	.long	-1074930925
	.long	2720429656
	.long	-1074932085
	.long	4085943688
	.long	-1074933250
	.long	2880217040
	.long	-1074934419
	.long	3410034310
	.long	-1074935593
	.long	1392291957
	.long	-1074936771
	.long	1133867448
	.long	-1074937954
	.long	2646717349
	.long	-1074939142
	.long	1647877295
	.long	-1074940334
	.long	2444363848
	.long	-1074941531
	.long	753305284
	.long	-1074942732
	.long	881810755
	.long	-1074943938
	.long	2842068363
	.long	-1074945149
	.long	2351345138
	.long	-1074946364
	.long	3716888896
	.long	-1074947584
	.long	2656059025
	.long	-1074948808
	.long	3476195639
	.long	-1074950037
	.long	1894750369
	.long	-1074951270
	.long	2219155512
	.long	-1074952508
	.long	166954823
	.long	-1074953750
	.long	45672665
	.long	-1074954997
	.long	1867912097
	.long	-1074956249
	.long	1351354838
	.long	-1074957505
	.long	2803663129
	.long	-1074958766
	.long	1942610521
	.long	-1074960031
	.long	3075951022
	.long	-1074961301
	.long	1921549892
	.long	-1074962575
	.long	2787252788
	.long	-1074963854
	.long	1391016557
	.long	-1074965137
	.long	2040778385
	.long	-1074966425
	.long	454586583
	.long	-1074967717
	.long	940469745
	.long	-1074969014
	.long	3511534820
	.long	-1074970316
	.long	3885967092
	.long	-1074971622
	.long	2076964733
	.long	-1074972932
	.long	2392738776
	.long	-1074974247
	.long	551611192
	.long	-1074975566
	.long	861884048
	.long	-1074976890
	.long	3336937585
	.long	-1074978219
	.long	3695230184
	.long	-1074979552
	.long	1950232931
	.long	-1074980889
	.long	2410429583
	.long	-1074982231
	.long	794414647
	.long	-1074983577
	.long	1410762534
	.long	-1074984928
	.long	4273125640
	.long	-1074986284
	.long	805267013
	.long	-1074987643
	.long	3905831399
	.long	-1074989008
	.long	703704950
	.long	-1074990376
	.long	4097622743
	.long	-1074991750
	.long	1216561197
	.long	-1074993127
	.long	664378299
	.long	-1074994509
	.long	2455042491
	.long	-1074995896
	.long	2307599944
	.long	-1074997287
	.long	236109107
	.long	-1074998682
	.long	549640680
	.long	-1075000082
	.long	3262342989
	.long	-1075001487
	.long	4093441948
	.long	-1075002896
	.long	3057175622
	.long	-1075004309
	.long	167826896
	.long	-1075005726
	.long	4029658032
	.long	-1075007149
	.long	1772139567
	.long	-1075008575
	.long	1999623234
	.long	-1075010006
	.long	431603566
	.long	-1075011441
	.long	1377554337
	.long	-1075012881
	.long	557059345
	.long	-1075014325
	.long	2279681565
	.long	-1075015774
	.long	2265093926
	.long	-1075017227
	.long	527981168
	.long	-1075018684
	.long	1378039806
	.long	-1075020146
	.long	535076205
	.long	-1075021612
	.long	2308875736
	.long	-1075023083
	.long	2419333551
	.long	-1075024558
	.long	881356436
	.long	-1075026037
	.long	2004862780
	.long	-1075027521
	.long	1509880650
	.long	-1075029009
	.long	3706416937
	.long	-1075030502
	.long	19620846
	.long	-1075031998
	.long	3349522222
	.long	-1075033500
	.long	826391266
	.long	-1075035005
	.long	1055378747
	.long	-1075036515
	.long	4051744902
	.long	-1075038030
	.long	1240859393
	.long	-1075039548
	.long	1228005053
	.long	-1075041071
	.long	4028574071
	.long	-1075042599
	.long	1068067954
	.long	-1075044130
	.long	951901273
	.long	-1075045666
	.long	3695597841
	.long	-1075047207
	.long	724790687
	.long	-1075048751
	.long	645025786
	.long	-1075050300
	.long	3471958253
	.long	-1075051854
	.long	631352303
	.long	-1075053411
	.long	728884990
	.long	-1075054973
	.long	3780342396
	.long	-1075056540
	.long	1211619591
	.long	-1075058110
	.long	1628524374
	.long	-1075059685
	.long	752006164
	.long	-1075061264
	.long	2892992439
	.long	-1075062848
	.long	3772519518
	.long	-1075064436
	.long	3406634411
	.long	-1075066028
	.long	1811427484
	.long	-1075067624
	.long	3297999717
	.long	-1075069225
	.long	3587560779
	.long	-1075070830
	.long	2696330879
	.long	-1075072439
	.long	640573427
	.long	-1075074052
	.long	1731562299
	.long	-1075075670
	.long	1690679904
	.long	-1075077292
	.long	534319038
	.long	-1075078918
	.long	2573882843
	.long	-1075080549
	.long	3530882880
	.long	-1075082184
	.long	3421840981
	.long	-1075083823
	.long	2263321911
	.long	-1075085466
	.long	71933333
	.long	-1075087113
	.long	1159293058
	.long	-1075088765
	.long	1247127127
	.long	-1075090421
	.long	352171651
	.long	-1075092081
	.long	2786172777
	.long	-1075093746
	.long	4270984760
	.long	-1075095415
	.long	528504512
	.long	-1075097087
	.long	165573455
	.long	-1075098764
	.long	3199140998
	.long	-1075100446
	.long	1056264498
	.long	-1075102131
	.long	2343912997
	.long	-1075103821
	.long	2784196107
	.long	-1075105515
	.long	2394233158
	.long	-1075107213
	.long	1191185859
	.long	-1075108915
	.long	3487225553
	.long	-1075110622
	.long	709663994
	.long	-1075112332
	.long	1465724380
	.long	-1075114047
	.long	1477770236
	.long	-1075115766
	.long	763174562
	.long	-1075117489
	.long	3634319786
	.long	-1075119217
	.long	1518728547
	.long	-1075120948
	.long	3023834719
	.long	-1075122684
	.long	3872212301
	.long	-1075124424
	.long	4081444561
	.long	-1075126168
	.long	3669156694
	.long	-1075127916
	.long	2653015785
	.long	-1075129668
	.long	1050730767
	.long	-1075131424
	.long	3175019672
	.long	-1075133185
	.long	453740407
	.long	-1075134949
	.long	1494661787
	.long	-1075136718
	.long	2020692417
	.long	-1075138491
	.long	2049749836
	.long	-1075140268
	.long	1599793177
	.long	-1075142049
	.long	688823128
	.long	-1075143834
	.long	3629849182
	.long	-1075145624
	.long	1851020414
	.long	-1075147417
	.long	3960396507
	.long	-1075149215
	.long	1386209343
	.long	-1075151016
	.long	2736601331
	.long	-1075152822
	.long	3734854286
	.long	-1075154632
	.long	104291280
	.long	-1075156445
	.long	453178482
	.long	-1075158263
	.long	504921345
	.long	-1075160085
	.long	277933739
	.long	-1075161911
	.long	4085637914
	.long	-1075163742
	.long	3356595271
	.long	-1075165576
	.long	2404310092
	.long	-1075167414
	.long	1247360315
	.long	-1075169256
	.long	4199332082
	.long	-1075171103
	.long	2688950511
	.long	-1075172953
	.long	1029883425
	.long	-1075174807
	.long	3535839426
	.long	-1075176666
	.long	1635665958
	.long	-1075178528
	.long	3938120337
	.long	-1075180395
	.long	1872131339
	.long	-1075182265
	.long	4046537520
	.long	-1075184140
	.long	1890348809
	.long	-1075186018
	.long	4012484829
	.long	-1075187901
	.long	1842036481
	.long	-1075189787
	.long	3988004274
	.long	-1075191678
	.long	1879559905
	.long	-1075193572
	.long	4125784588
	.long	-1075195471
	.long	2155930638
	.long	-1075197373
	.long	284192496
	.long	-1075199279
	.long	2824804802
	.long	-1075201190
	.long	1207140453
	.long	-1075203104
	.long	4040481639
	.long	-1075205023
	.long	2754281422
	.long	-1075206945
	.long	1662934764
	.long	-1075208871
	.long	785909301
	.long	-1075210801
	.long	142712589
	.long	-1075212735
	.long	4047859357
	.long	-1075214674
	.long	3931002275
	.long	-1075216616
	.long	4106735682
	.long	-1075218562
	.long	299759068
	.long	-1075220511
	.long	1119713497
	.long	-1075222465
	.long	2291377792
	.long	-1075224423
	.long	3834537669
	.long	-1075226385
	.long	1474051103
	.long	-1075228350
	.long	3819717458
	.long	-1075230320
	.long	2301506375
	.long	-1075232293
	.long	1234328792
	.long	-1075234270
	.long	638167719
	.long	-1075236251
	.long	533045481
	.long	-1075238236
	.long	939023674
	.long	-1075240225
	.long	1876203117
	.long	-1075242218
	.long	3364723806
	.long	-1075244215
	.long	1129797568
	.long	-1075246215
	.long	3781577201
	.long	-1075248220
	.long	2750385350
	.long	-1075250228
	.long	2351485536
	.long	-1075252240
	.long	2605212921
	.long	-1075254256
	.long	3531941557
	.long	-1075256276
	.long	857117043
	.long	-1075258299
	.long	3191125660
	.long	-1075260327
	.long	1964523251
	.long	-1075262358
	.long	1492806244
	.long	-1075264393
	.long	1796542422
	.long	-1075266432
	.long	2896338168
	.long	-1075268475
	.long	517871124
	.long	-1075270521
	.long	3271759320
	.long	-1075272572
	.long	2588790062
	.long	-1075274626
	.long	2784690947
	.long	-1075276684
	.long	3880260635
	.long	-1075278746
	.long	1601368801
	.long	-1075280811
	.long	263857968
	.long	-1075282880
	.long	4183608873
	.long	-1075284954
	.long	496671230
	.long	-1075287030
	.long	2108936638
	.long	-1075289111
	.long	451498284
	.long	-1075291195
	.long	4135356548
	.long	-1075293284
	.long	296713296
	.long	-1075295375
	.long	1841612084
	.long	-1075297471
	.long	201297852
	.long	-1075299570
	.long	3986922537
	.long	-1075301674
	.long	334839364
	.long	-1075303780
	.long	2151243045
	.long	-1075305891
	.long	867529480
	.long	-1075308005
	.long	800034068
	.long	-1075310123
	.long	1970162478
	.long	-1075312245
	.long	104390595
	.long	-1075314370
	.long	3814133659
	.long	-1075316500
	.long	236007838
	.long	-1075318632
	.long	2276470439
	.long	-1075320769
	.long	1367179604
	.long	-1075322909
	.long	1824732619
	.long	-1075325053
	.long	3670796685
	.long	-1075327201
	.long	2632108866
	.long	-1075329352
	.long	3025377927
	.long	-1075331507
	.long	577415094
	.long	-1075333665
	.long	3899970488
	.long	-1075335828
	.long	129994704
	.long	-1075337993
	.long	2174279016
	.long	-1075340163
	.long	1464815066
	.long	-1075342336
	.long	2318533186
	.long	-1075344513
	.long	462465863
	.long	-1075346693
	.long	213616871
	.long	-1075348877
	.long	1594059333
	.long	-1075351065
	.long	330935666
	.long	-1075353256
	.long	741359422
	.long	-1075355451
	.long	2847513343
	.long	-1075357650
	.long	2376649311
	.long	-1075359852
	.long	3645990182
	.long	-1075362058
	.long	2382860555
	.long	-1075364267
	.long	2904555894
	.long	-1075366480
	.long	938473302
	.long	-1075368696
	.long	801980645
	.long	-1075370916
	.long	2517514614
	.long	-1075373140
	.long	1812580672
	.long	-1075375367
	.long	3004654888
	.long	-1075377598
	.long	1821314704
	.long	-1075379832
	.long	2580108059
	.long	-1075382070
	.long	1008684159
	.long	-1075384311
	.long	1424662603
	.long	-1075386556
	.long	3850731445
	.long	-1075388805
	.long	4014647137
	.long	-1075391057
	.long	1939169070
	.long	-1075393312
	.long	1942059520
	.long	-1075395571
	.long	4046149004
	.long	-1075397834
	.long	3979336222
	.long	-1075400100
	.long	1764522599
	.long	-1075402369
	.long	1719612230
	.long	-1075404642
	.long	3867577234
	.long	-1075406919
	.long	3936457698
	.long	-1075409199
	.long	1949296220
	.long	-1075411482
	.long	2224137848
	.long	-1075413769
	.long	489128144
	.long	-1075416059
	.long	1062382310
	.long	-1075418353
	.long	3967083245
	.long	-1075420651
	.long	636514196
	.long	-1075422951
	.long	3978829778
	.long	-1075425256
	.long	1132415657
	.long	-1075427563
	.long	710528756
	.long	-1075429874
	.long	2736526127
	.long	-1075432189
	.long	2938832191
	.long	-1075434507
	.long	1340873276
	.long	-1075436828
	.long	2261077563
	.long	-1075439153
	.long	1427973139
	.long	-1075441481
	.long	3160057130
	.long	-1075443813
	.long	3185926459
	.long	-1075446148
	.long	1529179679
	.long	-1075448486
	.long	2508416919
	.long	-1075450828
	.long	1852337938
	.long	-1075453173
	.long	3879611254
	.long	-1075455522
	.long	24037611
	.long	-1075457873
	.long	3194288286
	.long	-1075460229
	.long	529264782
	.long	-1075462587
	.long	642739025
	.long	-1075464949
	.long	3558582237
	.long	-1075467315
	.long	710764880
	.long	-1075469683
	.long	713160376
	.long	-1075472055
	.long	3589741271
	.long	-1075474431
	.long	774579185
	.long	-1075476809
	.long	881648527
	.long	-1075479191
	.long	3935022663
	.long	-1075481577
	.long	1368873861
	.long	-1075483965
	.long	1797277009
	.long	-1075486357
	.long	949438485
	.long	-1075488752
	.long	3144532584
	.long	-1075491151
	.long	4111832273
	.long	-1075493553
	.long	3875611023
	.long	-1075495958
	.long	2460175458
	.long	-1075498366
	.long	4184832592
	.long	-1075500778
	.long	484020586
	.long	-1075503192
	.long	4267047063
	.long	-1075505611
	.long	2673448791
	.long	-1075508032
	.long	22664586
	.long	-1075510456
	.long	634166073
	.long	-1075512884
	.long	237523033
	.long	-1075515315
	.long	3152272531
	.long	-1075517750
	.long	813082378
	.long	-1075520187
	.long	1834522145
	.long	-1075522628
	.long	1946292033
	.long	-1075525072
	.long	1173091997
	.long	-1075527519
	.long	3834621694
	.long	-1075529970
	.long	1365711234
	.long	-1075532423
	.long	2381092195
	.long	-1075534880
	.long	2610626497
	.long	-1075537340
	.long	2079175523
	.long	-1075539803
	.long	811632767
	.long	-1075542269
	.long	3127891069
	.long	-1075544739
	.long	462973375
	.long	-1075547211
	.long	1431803748
	.long	-1075549687
	.long	1764436241
	.long	-1075552166
	.long	1485924017
	.long	-1075554648
	.long	621351997
	.long	-1075557133
	.long	3490804096
	.long	-1075559622
	.long	1529493982
	.long	-1075562113
	.long	3352536085
	.long	-1075564608
	.long	395207175
	.long	-1075567105
	.long	1272684664
	.long	-1075569606
	.long	1715275482
	.long	-1075572110
	.long	1748285193
	.long	-1075574617
	.long	1397050649
	.long	-1075577127
	.long	686939923
	.long	-1075579640
	.long	3938319549
	.long	-1075582157
	.long	2586685275
	.long	-1075584676
	.long	952465784
	.long	-1075587198
	.long	3356120742
	.long	-1075589724
	.long	1233238851
	.long	-1075592252
	.long	3199308863
	.long	-1075594784
	.long	689981149
	.long	-1075597318
	.long	2320806007
	.long	-1075599856
	.long	3822462532
	.long	-1075602397
	.long	925660443
	.long	-1075604940
	.long	2246041909
	.long	-1075607487
	.long	3514377712
	.long	-1075610037
	.long	461469080
	.long	-1075612589
	.long	1703049506
	.long	-1075615145
	.long	2969980917
	.long	-1075617704
	.long	4288122797
	.long	-1075620266
	.long	1388397531
	.long	-1075622830
	.long	2886659532
	.long	-1075625398
	.long	218924104
	.long	-1075627968
	.long	2001105753
	.long	-1075630542
	.long	3964247049
	.long	-1075633119
	.long	1839420458
	.long	-1075635698
	.long	4242630166
	.long	-1075638281
	.long	2610040945
	.long	-1075640866
	.long	1262749166
	.long	-1075643454
	.long	226913551
	.long	-1075646045
	.long	3823689703
	.long	-1075648640
	.long	3489360866
	.long	-1075651237
	.long	3545141632
	.long	-1075653837
	.long	4017308700
	.long	-1075656440
	.long	637200810
	.long	-1075659045
	.long	2021087872
	.long	-1075661654
	.long	3900367120
	.long	-1075664266
	.long	2006464944
	.long	-1075666880
	.long	660771416
	.long	-1075669497
	.long	4184705639
	.long	-1075672118
	.long	4014813794
	.long	-1075674741
	.long	177605559
	.long	-1075677366
	.long	1289554047
	.long	-1075679995
	.long	3082259262
	.long	-1075682627
	.long	1287349928
	.long	-1075685261
	.long	226418013
	.long	-1075687898
	.long	4221084079
	.long	-1075690539
	.long	413128033
	.long	-1075693181
	.long	1714162025
	.long	-1075695827
	.long	3855957425
	.long	-1075698476
	.long	2570313944
	.long	-1075701127
	.long	2178994163
	.long	-1075703781
	.long	2708821582
	.long	-1075706438
	.long	4186647852
	.long	-1075709098
	.long	2344385418
	.long	-1075711760
	.long	1503909343
	.long	-1075714425
	.long	1692155354
	.long	-1075717093
	.long	2936087077
	.long	-1075719764
	.long	967728680
	.long	-1075722437
	.long	109066691
	.long	-1075725113
	.long	387148054
	.long	-1075727792
	.long	1829047354
	.long	-1075730474
	.long	166899463
	.long	-1075733158
	.long	4017768658
	.long	-1075735846
	.long	523910188
	.long	-1075738535
	.long	2597410469
	.long	-1075741228
	.long	1675546760
	.long	-1075743923
	.long	2080525472
	.long	-1075746621
	.long	3839612916
	.long	-1075749322
	.long	2685135239
	.long	-1075752025
	.long	2939380251
	.long	-1075754731
	.long	334728173
	.long	-1075757439
	.long	3488488055
	.long	-1075760151
	.long	3838126638
	.long	-1075762865
	.long	1411072067
	.long	-1075765581
	.long	529746529
	.long	-1075768300
	.long	1221631599
	.long	-1075771022
	.long	3514235467
	.long	-1075773747
	.long	3140125582
	.long	-1075776474
	.long	126863175
	.long	-1075779203
	.long	3091970494
	.long	-1075781936
	.long	3473126960
	.long	-1075784671
	.long	1297972879
	.long	-1075787408
	.long	889142083
	.long	-1075790148
	.long	2274327268
	.long	-1075792891
	.long	1186279936
	.long	-1075795636
	.long	1947712210
	.long	-1075798384
	.long	291427589
	.long	-1075801134
	.long	540190069
	.long	-1075803887
	.long	2721822184
	.long	-1075806643
	.long	2569204943
	.long	-1075809401
	.long	110212358
	.long	-1075812161
	.long	3962678673
	.long	-1075814925
	.long	1269627225
	.long	-1075817690
	.long	648943341
	.long	-1075820458
	.long	2128603198
	.long	-1075823229
	.long	1441641056
	.long	-1075826002
	.long	2911051076
	.long	-1075828778
	.long	2269918074
	.long	-1075831556
	.long	3841286635
	.long	-1075834337
	.long	3358291868
	.long	-1075837120
	.long	1698122446
	.long	-1075840834
	.long	1273428855
	.long	-1075846410
	.long	1203890360
	.long	-1075851991
	.long	1545911350
	.long	-1075857577
	.long	2355945777
	.long	-1075863168
	.long	3690497027
	.long	-1075868764
	.long	1311150484
	.long	-1075874364
	.long	3864442589
	.long	-1075879970
	.long	2817089627
	.long	-1075885580
	.long	2520758674
	.long	-1075891195
	.long	3032198271
	.long	-1075896815
	.long	113238297
	.long	-1075902439
	.long	2410659017
	.long	-1075908069
	.long	1391419874
	.long	-1075913703
	.long	1407430432
	.long	-1075919342
	.long	2515681054
	.long	-1075924986
	.long	478242769
	.long	-1075930634
	.long	3942136322
	.long	-1075936288
	.long	79593673
	.long	-1075941945
	.long	1832698116
	.long	-1075947608
	.long	668743890
	.long	-1075953275
	.long	939974412
	.long	-1075958947
	.long	2703712957
	.long	-1075964624
	.long	1722362527
	.long	-1075970305
	.long	2348307600
	.long	-1075975991
	.long	344044811
	.long	-1075981681
	.long	62052004
	.long	-1075987376
	.long	1559886205
	.long	-1075993076
	.long	600183490
	.long	-1075998780
	.long	1535560735
	.long	-1076004489
	.long	128746296
	.long	-1076010202
	.long	732449060
	.long	-1076015920
	.long	3404456418
	.long	-1076021643
	.long	3907634131
	.long	-1076027370
	.long	2299860786
	.long	-1076033101
	.long	2934027658
	.long	-1076038837
	.long	1573136689
	.long	-1076044577
	.long	2570169529
	.long	-1076050322
	.long	1688218225
	.long	-1076056071
	.long	3280354261
	.long	-1076061825
	.long	3109759240
	.long	-1076067583
	.long	1234626633
	.long	-1076073345
	.long	2008161646
	.long	-1076079112
	.long	1193679193
	.long	-1076084883
	.long	3144472941
	.long	-1076090659
	.long	3623945992
	.long	-1076096439
	.long	2690512630
	.long	-1076102223
	.long	402630892
	.long	-1076108011
	.long	1113769723
	.long	-1076113804
	.long	587506950
	.long	-1076119601
	.long	3177398332
	.long	-1076125403
	.long	352140938
	.long	-1076131208
	.long	760344084
	.long	-1076137018
	.long	165758120
	.long	-1076142832
	.long	2922110777
	.long	-1076148651
	.long	498270540
	.long	-1076154473
	.long	1543017593
	.long	-1076160300
	.long	1820272597
	.long	-1076166131
	.long	1388965744
	.long	-1076171966
	.long	308069319
	.long	-1076177805
	.long	2931564856
	.long	-1076183649
	.long	728573817
	.long	-1076189496
	.long	2348128527
	.long	-1076195348
	.long	3554400957
	.long	-1076201204
	.long	111604478
	.long	-1076207063
	.long	668895608
	.long	-1076212927
	.long	990570098
	.long	-1076218795
	.long	1135931974
	.long	-1076224667
	.long	1164326102
	.long	-1076230543
	.long	1135138050
	.long	-1076236423
	.long	1107793949
	.long	-1076242307
	.long	1141760348
	.long	-1076248195
	.long	1296544082
	.long	-1076254087
	.long	1631692123
	.long	-1076259983
	.long	2206791448
	.long	-1076265883
	.long	3081468894
	.long	-1076271787
	.long	20423722
	.long	-1076277694
	.long	1673296664
	.long	-1076283606
	.long	3804866001
	.long	-1076289522
	.long	2179949317
	.long	-1076295441
	.long	1153337942
	.long	-1076301364
	.long	784894933
	.long	-1076307291
	.long	1134522222
	.long	-1076313222
	.long	2262160476
	.long	-1076319157
	.long	4227788960
	.long	-1076325096
	.long	2796458093
	.long	-1076331038
	.long	2323191204
	.long	-1076336984
	.long	2868082492
	.long	-1076342934
	.long	196296895
	.long	-1076348887
	.long	2957939124
	.long	-1076354845
	.long	2623282454
	.long	-1076360806
	.long	3547539654
	.long	-1076366771
	.long	1496026365
	.long	-1076372739
	.long	824030140
	.long	-1076378711
	.long	1591908416
	.long	-1076384687
	.long	3860055670
	.long	-1076390667
	.long	3393935975
	.long	-1076396650
	.long	254017457
	.long	-1076402636
	.long	3090739442
	.long	-1076408627
	.long	3374708543
	.long	-1076414621
	.long	1166502291
	.long	-1076420618
	.long	821701695
	.long	-1076426619
	.long	2400956511
	.long	-1076432624
	.long	1669985097
	.long	-1076438632
	.long	2984476158
	.long	-1076444644
	.long	2110219421
	.long	-1076450659
	.long	3402974672
	.long	-1076456678
	.long	2628602436
	.long	-1076462700
	.long	4142933009
	.long	-1076468726
	.long	3711897138
	.long	-1076474755
	.long	1396427763
	.long	-1076480787
	.long	1552459874
	.long	-1076486823
	.long	4240995772
	.long	-1076492863
	.long	933137638
	.long	-1076498905
	.long	279891155
	.long	-1076504951
	.long	2342361596
	.long	-1076511001
	.long	2886720973
	.long	-1076517054
	.long	1974142486
	.long	-1076523110
	.long	3960800378
	.long	-1076529170
	.long	318000609
	.long	-1076535232
	.long	3991919076
	.long	-1076541299
	.long	2158961219
	.long	-1076547368
	.long	3470402126
	.long	-1076553441
	.long	3692648026
	.long	-1076559517
	.long	2887105326
	.long	-1076565596
	.long	1115213169
	.long	-1076571678
	.long	2733410589
	.long	-1076577764
	.long	3508234477
	.long	-1076583853
	.long	3501221323
	.long	-1076589945
	.long	2773939777
	.long	-1076596040
	.long	1387990503
	.long	-1076602138
	.long	3699973330
	.long	-1076608240
	.long	1181617922
	.long	-1076614344
	.long	2484554710
	.long	-1076620452
	.long	3375543667
	.long	-1076626563
	.long	3916343354
	.long	-1076632677
	.long	4168743472
	.long	-1076638794
	.long	4194564724
	.long	-1076644914
	.long	4055658662
	.long	-1076651037
	.long	3813907547
	.long	-1076657163
	.long	3531224201
	.long	-1076663292
	.long	3269551862
	.long	-1076669424
	.long	3090864037
	.long	-1076675559
	.long	3057164359
	.long	-1076681697
	.long	3230486437
	.long	-1076687838
	.long	3672893715
	.long	-1076693982
	.long	151512023
	.long	-1076700128
	.long	1318398624
	.long	-1076706278
	.long	2940738284
	.long	-1076712431
	.long	785745018
	.long	-1076718586
	.long	3505563828
	.long	-1076724745
	.long	2572499490
	.long	-1076730906
	.long	2343787476
	.long	-1076737070
	.long	2881724622
	.long	-1076743237
	.long	4248636281
	.long	-1076749407
	.long	2211908878
	.long	-1076755579
	.long	1128891654
	.long	-1076761754
	.long	1061994627
	.long	-1076767932
	.long	2073655743
	.long	-1076774113
	.long	4226340733
	.long	-1076780297
	.long	3287575662
	.long	-1076786483
	.long	3614848677
	.long	-1076792672
	.long	975740673
	.long	-1076798863
	.long	4022761626
	.long	-1076805058
	.long	4228579375
	.long	-1076811255
	.long	1655823246
	.long	-1076817454
	.long	662116616
	.long	-1076823656
	.long	1310142169
	.long	-1076829861
	.long	3662609043
	.long	-1076836069
	.long	3487285392
	.long	-1076842279
	.long	846932824
	.long	-1076848491
	.long	99306259
	.long	-1076854706
	.long	1307219184
	.long	-1076860924
	.long	238543511
	.long	-1076867144
	.long	1251111312
	.long	-1076873367
	.long	112845488
	.long	-1076879592
	.long	1181628808
	.long	-1076885820
	.long	450869151
	.long	-1076896548
	.long	3204391323
	.long	-1076909014
	.long	2159870353
	.long	-1076921484
	.long	1738303713
	.long	-1076933959
	.long	2065770644
	.long	-1076946439
	.long	3268399158
	.long	-1076958924
	.long	1177398443
	.long	-1076971413
	.long	213960456
	.long	-1076983907
	.long	504357737
	.long	-1076996406
	.long	2174910408
	.long	-1077008910
	.long	1057018578
	.long	-1077021418
	.long	1572063938
	.long	-1077033931
	.long	3846507572
	.long	-1077046449
	.long	3711889660
	.long	-1077058971
	.long	1294763771
	.long	-1077071497
	.long	1016696571
	.long	-1077084028
	.long	3004332926
	.long	-1077096564
	.long	3089395606
	.long	-1077109104
	.long	1398619583
	.long	-1077121648
	.long	2353751728
	.long	-1077134197
	.long	1786648624
	.long	-1077146750
	.long	4119145459
	.long	-1077159308
	.long	888219237
	.long	-1077171869
	.long	810759560
	.long	-1077184435
	.long	4013764550
	.long	-1077197006
	.long	2034340548
	.long	-1077209580
	.long	3589505594
	.long	-1077222159
	.long	216450761
	.long	-1077234741
	.long	632278219
	.long	-1077247328
	.long	669229868
	.long	-1077259919
	.long	454556224
	.long	-1077272514
	.long	115548816
	.long	-1077285113
	.long	4074507191
	.long	-1077297717
	.long	3868869427
	.long	-1077310324
	.long	3921015607
	.long	-1077322935
	.long	63431042
	.long	-1077335549
	.long	1013542451
	.long	-1077348168
	.long	2603913885
	.long	-1077360791
	.long	667148313
	.long	-1077373417
	.long	3920789211
	.long	-1077386048
	.long	3902549190
	.long	-1077398682
	.long	740113474
	.long	-1077411319
	.long	3151139592
	.long	-1077423961
	.long	2673453312
	.long	-1077436606
	.long	3729819402
	.long	-1077449255
	.long	2153104858
	.long	-1077461907
	.long	2366147781
	.long	-1077474563
	.long	201887894
	.long	-1077487222
	.long	83235428
	.long	-1077499885
	.long	2138168928
	.long	-1077512552
	.long	2199734956
	.long	-1077525222
	.long	395982378
	.long	-1077537895
	.long	1149962066
	.long	-1077550572
	.long	294824707
	.long	-1077563252
	.long	2253689687
	.long	-1077575936
	.long	2859775601
	.long	-1077588623
	.long	2241301847
	.long	-1077601313
	.long	526521021
	.long	-1077614006
	.long	2138685915
	.long	-1077626703
	.long	2911147326
	.long	-1077639403
	.long	2972255642
	.long	-1077652106
	.long	2450393245
	.long	-1077664812
	.long	1473974208
	.long	-1077677521
	.long	171443994
	.long	-1077690233
	.long	2966246447
	.long	-1077702949
	.long	1396954307
	.long	-1077715667
	.long	4182039984
	.long	-1077728389
	.long	2860136879
	.long	-1077741113
	.long	1854810161
	.long	-1077753840
	.long	1294687275
	.long	-1077766570
	.long	1308424942
	.long	-1077779303
	.long	2024708847
	.long	-1077792039
	.long	3572253345
	.long	-1077804778
	.long	1784833857
	.long	-1077817519
	.long	1086188456
	.long	-1077830263
	.long	1605115677
	.long	-1077843010
	.long	3470441510
	.long	-1077855760
	.long	2516051798
	.long	-1077868512
	.long	3165793827
	.long	-1077881267
	.long	1253606834
	.long	-1077894024
	.long	1203390889
	.long	-1077906784
	.long	3144104705
	.long	-1077919547
	.long	2909765334
	.long	-1077932312
	.long	1258764906
	.long	-1077954030
	.long	1453916129
	.long	-1077979570
	.long	2368135900
	.long	-1078005115
	.long	4259591919
	.long	-1078030665
	.long	3091532823
	.long	-1078056219
	.long	3417189464
	.long	-1078081778
	.long	1199905122
	.long	-1078107341
	.long	993004078
	.long	-1078132909
	.long	3054889119
	.long	-1078158482
	.long	3349040929
	.long	-1078184059
	.long	2133952073
	.long	-1078209640
	.long	3963126391
	.long	-1078235226
	.long	505209203
	.long	-1078260815
	.long	608757774
	.long	-1078286409
	.long	237469631
	.long	-1078312007
	.long	3945018438
	.long	-1078337610
	.long	3400216905
	.long	-1078363216
	.long	3156819957
	.long	-1078388826
	.long	3473654937
	.long	-1078414440
	.long	314621002
	.long	-1078440057
	.long	2528557693
	.long	-1078465679
	.long	1784473259
	.long	-1078491304
	.long	2636315115
	.long	-1078516933
	.long	1048132755
	.long	-1078542565
	.long	1573946326
	.long	-1078568201
	.long	177876836
	.long	-1078593840
	.long	1414014724
	.long	-1078619483
	.long	1246550070
	.long	-1078645129
	.long	4229641170
	.long	-1078670779
	.long	2032577443
	.long	-1078696431
	.long	3504549894
	.long	-1078722087
	.long	314912136
	.long	-1078747745
	.long	1312918150
	.long	-1078773407
	.long	2462950599
	.long	-1078799072
	.long	4024389404
	.long	-1078824740
	.long	1961676544
	.long	-1078850410
	.long	829217326
	.long	-1078876083
	.long	886477896
	.long	-1078901759
	.long	2392951918
	.long	-1078927438
	.long	1313192668
	.long	-1078953119
	.long	2201714315
	.long	-1078978803
	.long	2046244246
	.long	-1079024274
	.long	368994754
	.long	-1079075651
	.long	4185891654
	.long	-1079127034
	.long	1131324977
	.long	-1079178420
	.long	314567719
	.long	-1079229811
	.long	2255003553
	.long	-1079281207
	.long	3177092898
	.long	-1079332607
	.long	3600306295
	.long	-1079384011
	.long	4044155880
	.long	-1079435419
	.long	733226874
	.long	-1079486830
	.long	2777045539
	.long	-1079538246
	.long	2105306885
	.long	-1079589665
	.long	3532644521
	.long	-1079641088
	.long	3283792950
	.long	-1079692514
	.long	1878488233
	.long	-1079743943
	.long	4131466769
	.long	-1079795376
	.long	1972594887
	.long	-1079846811
	.long	216671398
	.long	-1079898249
	.long	3678524484
	.long	-1079949691
	.long	4288108587
	.long	-1080001135
	.long	835712034
	.long	-1080071881
	.long	2355286055
	.long	-1080174779
	.long	1289969622
	.long	-1080277681
	.long	2974708816
	.long	-1080380588
	.long	4154559185
	.long	-1080483499
	.long	1574617892
	.long	-1080586413
	.long	569955859
	.long	-1080689331
	.long	2180713431
	.long	-1080792253
	.long	3152097926
	.long	-1080895178
	.long	229348490
	.long	-1080998105
	.long	1790303766
	.long	-1081120215
	.long	3789607106
	.long	-1081326081
	.long	4242214156
	.long	-1081531951
	.long	933776135
	.long	-1081737824
	.long	239918024
	.long	-1081943701
	.long	4187696272
	.long	-1082168731
	.long	4267673724
	.long	-1082580496
	.long	586292746
	.long	-1082992264
	.long	3200102875
	.long	-1083629064
	.long	2932366977
	.long	-1084677638
	.align 32
	.type	mfTable, @object
	.size	mfTable, 128
mfTable:
	.long	0
	.long	1071644672
	.long	0
	.long	1072693248
	.long	0
	.long	1073741824
	.long	0
	.long	1074266112
	.long	0
	.long	1074790400
	.long	0
	.long	1075052544
	.long	0
	.long	1075314688
	.long	0
	.long	1075576832
	.long	0
	.long	1075838976
	.long	0
	.long	1075970048
	.long	0
	.long	1076101120
	.long	0
	.long	1076232192
	.long	0
	.long	1076363264
	.long	0
	.long	1076494336
	.long	0
	.long	1076625408
	.long	0
	.long	1076756480
	.align 32
	.type	freqTable, @object
	.size	freqTable, 944
freqTable:
	.long	2886218023
	.long	1076910620
	.long	2851858285
	.long	1076974321
	.long	3195455668
	.long	1077041823
	.long	2233382994
	.long	1077113323
	.long	2886218023
	.long	1077189148
	.long	1168231105
	.long	1077269430
	.long	0
	.long	1077354496
	.long	0
	.long	1077444608
	.long	1786706395
	.long	1077540028
	.long	0
	.long	1077641216
	.long	1546188227
	.long	1077748367
	.long	1065151889
	.long	1077861941
	.long	3882650436
	.long	1077959163
	.long	2851858285
	.long	1078022897
	.long	3195455668
	.long	1078090399
	.long	1236950581
	.long	1078161932
	.long	3882650436
	.long	1078237691
	.long	2164663517
	.long	1078317973
	.long	0
	.long	1078403072
	.long	0
	.long	1078493184
	.long	790273982
	.long	1078588637
	.long	0
	.long	1078689792
	.long	1546188227
	.long	1078796943
	.long	1065151889
	.long	1078910517
	.long	3882650436
	.long	1079007739
	.long	206158430
	.long	1079071490
	.long	3195455668
	.long	1079138975
	.long	1236950581
	.long	1079210508
	.long	1236950581
	.long	1079286284
	.long	3813930959
	.long	1079366565
	.long	0
	.long	1079451648
	.long	0
	.long	1079541760
	.long	3435973837
	.long	1079637196
	.long	0
	.long	1079738368
	.long	3195455668
	.long	1079845535
	.long	1065151889
	.long	1079959093
	.long	2233382994
	.long	1080056299
	.long	1202590843
	.long	1080120033
	.long	1546188227
	.long	1080187535
	.long	2233382994
	.long	1080259051
	.long	2233382994
	.long	1080334827
	.long	515396076
	.long	1080415109
	.long	0
	.long	1080500224
	.long	0
	.long	1080590336
	.long	3435973837
	.long	1080685772
	.long	0
	.long	1080786944
	.long	1546188227
	.long	1080894095
	.long	2061584302
	.long	1081007636
	.long	2061584302
	.long	1081104916
	.long	1202590843
	.long	1081168609
	.long	1546188227
	.long	1081236111
	.long	2061584302
	.long	1081307668
	.long	2061584302
	.long	1081383444
	.long	343597384
	.long	1081463726
	.long	171798692
	.long	1081384919
	.long	0
	.long	1081638912
	.long	3435973837
	.long	1081734348
	.long	0
	.long	1081835520
	.long	1546188227
	.long	1081942671
	.long	2061584302
	.long	1082056212
	.long	0
	.long	1082153472
	.long	3264175145
	.long	1082217205
	.long	3607772529
	.long	1082284707
	.long	0
	.long	1082356224
	.long	2061584302
	.long	1082432020
	.long	343597384
	.long	1082512302
	.long	2233382994
	.long	1082597355
	.long	2233382994
	.long	1082687467
	.long	1202590843
	.long	1082782945
	.long	0
	.long	1082884096
	.long	3607772529
	.long	1082991267
	.long	4123168604
	.long	1083104808
	.long	0
	.long	1083202048
	.long	3435973837
	.long	1083265740
	.long	3435973837
	.long	1083333324
	.long	0
	.long	1083404800
	.long	0
	.long	1083480576
	.long	2576980378
	.long	1083560857
	.long	0
	.long	1083645952
	.long	0
	.long	1083736064
	.long	3435973837
	.long	1083831500
	.long	0
	.long	1083932672
	.long	3435973837
	.long	1084039884
	.long	0
	.long	1084153344
	.long	0
	.long	1084250624
	.long	0
	.long	1084314368
	.long	2576980378
	.long	1084381849
	.long	0
	.long	1084453376
	.long	0
	.long	1084529152
	.long	2576980378
	.long	1084609433
	.long	0
	.long	1084694528
	.long	0
	.long	1084784640
	.long	3435973837
	.long	1084880076
	.long	0
	.long	1084981248
	.long	2576980378
	.long	1085088409
	.long	858993459
	.long	1085201971
	.long	0
	.long	1085299200
	.long	0
	.long	1085362944
	.long	2576980378
	.long	1085430425
	.long	0
	.long	1085501952
	.long	0
	.long	1085576704
	.long	2576980378
	.long	1085658009
	.long	0
	.long	1085743104
	.long	0
	.long	1085833216
	.long	3435973837
	.long	1085928652
	.long	0
	.long	1086029824
	.long	2576980378
	.long	1086136985
	.long	858993459
	.long	1086250547
	.long	0
	.long	1086347776
	.long	0
	.long	1086411520
	.long	2576980378
	.long	1086475801
	.long	0
	.long	1086550528
	.long	0
	.long	1086626304
	.long	2576980378
	.long	1086706585
	.long	0
	.long	1086791680
	.long	0
	.long	1086881792
	.long	3435973837
	.long	1086977228
	.long	0
	.long	1087078400
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1085276160
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC3:
	.long	0
	.long	1075314688
	.align 8
.LC4:
	.long	0
	.long	1078525952
	.align 8
.LC5:
	.long	0
	.long	1076101120
	.align 8
.LC6:
	.long	0
	.long	1071644672
	.align 8
.LC7:
	.long	0
	.long	1073741824
	.align 8
.LC8:
	.long	0
	.long	1074266112
	.align 8
.LC9:
	.long	0
	.long	1074790400
	.align 8
.LC10:
	.long	0
	.long	1075838976
	.align 8
.LC11:
	.long	0
	.long	1077805056
	.align 8
.LC12:
	.long	0
	.long	1087345792
	.align 8
.LC13:
	.long	0
	.long	1087340672
	.align 8
.LC14:
	.long	0
	.long	1076887552
	.align 8
.LC15:
	.long	0
	.long	1067450368
	.align 8
.LC16:
	.long	0
	.long	1076756480
	.align 8
.LC17:
	.long	4261412864
	.long	1102053375
	.align 8
.LC21:
	.long	0
	.long	1083179008
	.align 8
.LC22:
	.long	0
	.long	1070596096
	.align 8
.LC23:
	.long	0
	.long	1075052544
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
