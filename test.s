.globl main
main:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
	pushl %ebx
	pushl %edx
	pushl %esi
	pushl %edi
	movl $2, %eax
	sall $2, %eax
	orl $0, %eax
	movl %eax, %esi
	movl $2, %ebx
	sall $2, %ebx
	orl $0, %ebx
	movl %esi, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %eax
	cmpl $0, %eax
	je label_37_else
	movl %esi, %eax
	sarl $2, %eax
	sarl $2, %ebx
	cmpl %eax, %ebx
	sete %al
	movzbl %al, %ebx
	sall $2, %ebx
	orl $1, %ebx
	jmp label_38_if_end
label_37_else:
	movl %esi, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_35_else
	sarl $2, %esi
	sarl $2, %ebx
	cmpl %esi, %ebx
	sete %al
	movzbl %al, %eax
	sall $2, %eax
	orl $1, %eax
	jmp label_36_if_end
label_35_else:
	movl $3, %ecx
	notl %ecx
	andl %esi, %ecx
	movl $3, %esi
	notl %esi
	andl %ebx, %esi
	subl $8, %esp
	pushl %esi
	pushl %ecx
	call equal
	addl $16, %esp
	sall $2, %eax
	orl $1, %eax
label_36_if_end:
	movl %eax, %ebx
label_38_if_end:
	movl %ebx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_39_else
	subl $12, %esp
	pushl %ebx
	call is_true
	addl $16, %esp
	jmp label_40_if_end
label_39_else:
	sarl $2, %ebx
	cmpl $0, %ebx
	setne %al
	movzbl %al, %eax
label_40_if_end:
	cmpl $0, %eax
	je label_41_else
	movl $0, %eax
	sall $2, %eax
	orl $0, %eax
	movl $24, %ebx
	sall $2, %ebx
	orl $0, %ebx
	movl $3, %eax
	sall $2, %eax
	orl $0, %eax
	jmp label_42_if_end
label_41_else:
	movl $1, %ebx
	sall $2, %ebx
	orl $0, %ebx
	movl $1, %eax
	sall $2, %eax
	orl $0, %eax
label_42_if_end:
	pushl $0
	pushl $0
	pushl $0
	pushl %eax
	call print_any
	addl $16, %esp
	pushl $0
	pushl $0
	pushl $0
	pushl %ebx
	call print_any
	addl $16, %esp
	popl %edi
	popl %esi
	popl %edx
	popl %ebx

        movl $0, %eax
        leave
        ret

