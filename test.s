.globl main
main:
	pushl %ebp
	movl %esp, %ebp
	subl $40, %esp
	pushl %ebx
	pushl %edx
	pushl %esi
	pushl %edi
	movl $0, %esi
	sall $2, %esi
	orl $0, %esi
	movl $0, %edi
	sall $2, %edi
	orl $0, %edi
	movl $10000000, %eax
	sall $2, %eax
	orl $0, %eax
	movl %esi, %ecx
	sarl $2, %ecx
	sarl $2, %eax
	cmpl %ecx, %eax
	setne %al
	movzbl %al, %eax
	sall $2, %eax
	orl $1, %eax
	movl %eax, %ecx
	movl %ecx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_50_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	jmp label_51_if_end
label_50_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %eax
label_51_if_end:
label_58_while_start:
	cmpl $0, %eax
	je label_59_while_end
	movl %edi, %ecx
	sarl $2, %ecx
	movl %esi, %eax
	sarl $2, %eax
	addl %eax, %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl %esi, %eax
	sarl $2, %eax
	negl %eax
	sall $2, %eax
	orl $0, %eax
	movl %eax, %edi
	movl %edi, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %eax
	cmpl $0, %eax
	je label_54_else
	sarl $2, %edi
	sarl $2, %ecx
	addl %ecx, %edi
	movl %edi, %eax
	sall $2, %eax
	orl $0, %eax
	jmp label_55_if_end
label_54_else:
	movl %edi, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %ebx
	cmpl $0, %ebx
	je label_52_else
	sarl $2, %edi
	sarl $2, %ecx
	addl %ecx, %edi
	sall $2, %edi
	orl $0, %edi
	movl %edi, %eax
	jmp label_53_if_end
label_52_else:
	movl $3, %ebx
	notl %ebx
	andl %edi, %ebx
	movl $3, %edi
	notl %edi
	andl %ecx, %edi
	subl $8, %esp
	pushl %edi
	pushl %ebx
	call add
	addl $16, %esp
	orl $3, %eax
label_53_if_end:
label_55_if_end:
	movl %eax, %ebx
	movl $1, %eax
	sall $2, %eax
	orl $0, %eax
	sarl $2, %esi
	sarl $2, %eax
	addl %eax, %esi
	sall $2, %esi
	orl $0, %esi
	movl %ebx, %edi
	movl $10000000, %eax
	sall $2, %eax
	orl $0, %eax
	movl %esi, %ecx
	sarl $2, %ecx
	sarl $2, %eax
	cmpl %ecx, %eax
	setne %al
	movzbl %al, %eax
	sall $2, %eax
	orl $1, %eax
	movl %eax, %ecx
	movl %ecx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_56_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	jmp label_57_if_end
label_56_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %eax
label_57_if_end:
	jmp label_58_while_start
label_59_while_end:
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

