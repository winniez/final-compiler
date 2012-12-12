str_40:
.string "y"
str_41:
.string "y"
str_39:
.string "x"
str_38:
.string "x"
.globl main
main:
	pushl %ebp
	movl %esp, %ebp
	subl $40, %esp
	pushl %ebx
	pushl %edx
	pushl %esi
	pushl %edi
	movl $0, %ebx
	sall $2, %ebx
	orl $0, %ebx
	subl $12, %esp
	pushl %ebx
	call create_list
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
	subl $12, %esp
	pushl %ebx
	call create_class
	addl $16, %esp
	movl %eax, %esi
	orl $3, %esi
	movl $40, %ebx
	sall $2, %ebx
	orl $0, %ebx
	subl $4, %esp
	pushl %ebx
	pushl $str_38
	pushl %esi
	call set_attr
	addl $16, %esp
	subl $8, %esp
	pushl $str_39
	pushl %esi
	call get_attr
	addl $16, %esp
	movl %eax, %ebx
	movl $2, %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl %ebx, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %edi
	cmpl $0, %edi
	je label_36_else
	sarl $2, %ebx
	sarl $2, %ecx
	addl %ecx, %ebx
	sall $2, %ebx
	orl $0, %ebx
	jmp label_37_if_end
label_36_else:
	movl %ebx, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %edi
	cmpl $0, %edi
	je label_34_else
	sarl $2, %ebx
	sarl $2, %ecx
	addl %ecx, %ebx
	sall $2, %ebx
	orl $0, %ebx
	jmp label_35_if_end
label_34_else:
	movl $3, %edi
	notl %edi
	andl %ebx, %edi
	movl $3, %ebx
	notl %ebx
	andl %ecx, %ebx
	subl $8, %esp
	pushl %ebx
	pushl %edi
	call add
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
label_35_if_end:
label_37_if_end:
	subl $4, %esp
	pushl %ebx
	pushl $str_40
	pushl %esi
	call set_attr
	addl $16, %esp
	subl $8, %esp
	pushl $str_41
	pushl %esi
	call get_attr
	addl $16, %esp
	pushl $0
	pushl $0
	pushl $0
	pushl %eax
	call print_any
	addl $16, %esp
	popl %edi
	popl %esi
	popl %edx
	popl %ebx

        movl $0, %eax
        leave
        ret

