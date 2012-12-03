str_157:
.string "__init__"
str_156:
.string "__init__"
.globl main
main:
	pushl %ebp
	movl %esp, %ebp
	subl $40, %esp
	pushl %ebx
	pushl %edx
	pushl %esi
	pushl %edi
	movl $input_int, %esi
	subl $12, %esp
	pushl %esi
	call is_class
	addl $16, %esp
	sall $2, %eax
	orl $1, %eax
	movl %eax, %ebx
	movl %ebx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_122_else
	subl $12, %esp
	pushl %ebx
	call is_true
	addl $16, %esp
	movl %eax, %ebx
	jmp label_123_if_end
label_122_else:
	sarl $2, %ebx
	cmpl $0, %ebx
	setne %al
	movzbl %al, %ebx
label_123_if_end:
	cmpl $0, %ebx
	je label_136_else
	subl $12, %esp
	pushl %esi
	call create_object
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
	subl $8, %esp
	pushl $str_156
	pushl %esi
	call has_attr
	addl $16, %esp
	movl %eax, %edx
	sall $2, %edx
	orl $1, %edx
	movl %edx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_124_else
	subl $12, %esp
	pushl %edx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_125_if_end
label_124_else:
	sarl $2, %edx
	cmpl $0, %edx
	setne %al
	movzbl %al, %ecx
label_125_if_end:
	cmpl $0, %ecx
	je label_126_else
	subl $8, %esp
	pushl $str_157
	pushl %esi
	call get_attr
	addl $16, %esp
	subl $12, %esp
	pushl %eax
	call get_function
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, -24(%ebp)
	subl $12, %esp
	pushl -24(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, %esi
	subl $12, %esp
	pushl -24(%ebp)
	call get_free_vars
	addl $16, %esp
	subl $8, %esp
	pushl %ebx
	pushl %eax
	call *%esi
	addl $16, %esp
	jmp label_127_if_end
label_126_else:

label_127_if_end:
	movl %ebx, %eax
	jmp label_137_if_end
label_136_else:
	subl $12, %esp
	pushl %esi
	call is_bound_method
	addl $16, %esp
	sall $2, %eax
	orl $1, %eax
	movl %eax, %ebx
	movl %ebx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_128_else
	subl $12, %esp
	pushl %ebx
	call is_true
	addl $16, %esp
	movl %eax, %ebx
	jmp label_129_if_end
label_128_else:
	movl %ebx, %eax
	sarl $2, %eax
	cmpl $0, %eax
	setne %al
	movzbl %al, %ebx
label_129_if_end:
	cmpl $0, %ebx
	je label_134_else
	subl $12, %esp
	pushl %esi
	call get_function
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
	subl $12, %esp
	pushl %ebx
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -24(%ebp)
	subl $12, %esp
	pushl %ebx
	call get_free_vars
	addl $16, %esp
	movl %eax, %ebx
	subl $12, %esp
	pushl %esi
	call get_receiver
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	subl $8, %esp
	pushl %ecx
	pushl %ebx
	call *-24(%ebp)
	addl $16, %esp
	jmp label_135_if_end
label_134_else:
	subl $12, %esp
	pushl %esi
	call is_unbound_method
	addl $16, %esp
	sall $2, %eax
	orl $1, %eax
	movl %eax, %ebx
	movl %ebx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_130_else
	subl $12, %esp
	pushl %ebx
	call is_true
	addl $16, %esp
	movl %eax, %ebx
	jmp label_131_if_end
label_130_else:
	sarl $2, %ebx
	cmpl $0, %ebx
	setne %al
	movzbl %al, %ebx
label_131_if_end:
	cmpl $0, %ebx
	je label_132_else
	subl $12, %esp
	pushl %esi
	call get_function
	addl $16, %esp
	movl %eax, %esi
	orl $3, %esi
	subl $12, %esp
	pushl %esi
	call get_fun_ptr
	addl $16, %esp
	movl %eax, %ebx
	subl $12, %esp
	pushl %esi
	call get_free_vars
	addl $16, %esp
	subl $12, %esp
	pushl %eax
	call *%ebx
	addl $16, %esp
	jmp label_133_if_end
label_132_else:
	call input_int
label_133_if_end:
label_135_if_end:
label_137_if_end:
	movl %eax, %esi
	movl $1, %ebx
	sall $2, %ebx
	orl $0, %ebx
	movl $0, %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl %esi, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %eax
	cmpl $0, %eax
	je label_140_else
	movl %esi, %eax
	sarl $2, %eax
	sarl $2, %ecx
	cmpl %eax, %ecx
	setne %al
	movzbl %al, %eax
	sall $2, %eax
	orl $1, %eax
	jmp label_141_if_end
label_140_else:
	movl %esi, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_138_else
	movl %esi, %eax
	sarl $2, %eax
	sarl $2, %ecx
	cmpl %eax, %ecx
	setne %al
	movzbl %al, %eax
	sall $2, %eax
	orl $1, %eax
	jmp label_139_if_end
label_138_else:
	movl $3, -24(%ebp)
	notl -24(%ebp)
	andl %esi, -24(%ebp)
	movl $3, %edx
	notl %edx
	andl %ecx, %edx
	subl $8, %esp
	pushl %edx
	pushl -24(%ebp)
	call not_equal
	addl $16, %esp
	sall $2, %eax
	orl $1, %eax
label_139_if_end:
label_141_if_end:
	movl %eax, %ecx
	movl %ecx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_142_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	jmp label_143_if_end
label_142_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %eax
label_143_if_end:
label_154_while_start:
	cmpl $0, %eax
	je label_155_while_end
	pushl $0
	pushl $0
	pushl $0
	pushl %ebx
	call print_any
	addl $16, %esp
	movl $2, %edi
	sall $2, %edi
	orl $0, %edi
	movl $-1, %edx
	sall $2, %edx
	orl $0, %edx
	movl %esi, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %eax
	cmpl $0, %eax
	je label_146_else
	sarl $2, %esi
	sarl $2, %edx
	addl %edx, %esi
	sall $2, %esi
	orl $0, %esi
	jmp label_147_if_end
label_146_else:
	movl %esi, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_144_else
	sarl $2, %esi
	sarl $2, %edx
	addl %edx, %esi
	sall $2, %esi
	orl $0, %esi
	jmp label_145_if_end
label_144_else:
	movl $3, %ecx
	notl %ecx
	andl %esi, %ecx
	movl $3, %esi
	notl %esi
	andl %edx, %esi
	subl $8, %esp
	pushl %esi
	pushl %ecx
	call add
	addl $16, %esp
	orl $3, %eax
	movl %eax, %esi
label_145_if_end:
label_147_if_end:
	movl $0, %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl %esi, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %eax
	cmpl $0, %eax
	je label_150_else
	movl %esi, %eax
	sarl $2, %eax
	sarl $2, %ecx
	cmpl %eax, %ecx
	setne %al
	movzbl %al, %eax
	sall $2, %eax
	orl $1, %eax
	jmp label_151_if_end
label_150_else:
	movl %esi, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_148_else
	movl %esi, %eax
	sarl $2, %eax
	sarl $2, %ecx
	cmpl %eax, %ecx
	setne %al
	movzbl %al, %eax
	sall $2, %eax
	orl $1, %eax
	jmp label_149_if_end
label_148_else:
	movl $3, -24(%ebp)
	notl -24(%ebp)
	andl %esi, -24(%ebp)
	movl $3, %edx
	notl %edx
	andl %ecx, %edx
	subl $8, %esp
	pushl %edx
	pushl -24(%ebp)
	call not_equal
	addl $16, %esp
	sall $2, %eax
	orl $1, %eax
label_149_if_end:
label_151_if_end:
	movl %eax, %ecx
	movl %ecx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_152_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	jmp label_153_if_end
label_152_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %eax
label_153_if_end:
	jmp label_154_while_start
label_155_while_end:
	pushl $0
	pushl $0
	pushl $0
	pushl %edi
	call print_any
	addl $16, %esp
	popl %edi
	popl %esi
	popl %edx
	popl %ebx

        movl $0, %eax
        leave
        ret

