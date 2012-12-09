str_595:
.string "__init__"
str_594:
.string "__init__"
str_596:
.string "__init__"
str_591:
.string "__init__"
str_593:
.string "__init__"
str_592:
.string "__init__"
.globl main
lambda_56:
	pushl %ebp
	movl %esp, %ebp
	subl $40, %esp
	pushl %ebx
	pushl %edx
	pushl %esi
	pushl %edi
	movl 8(%ebp), %ebx
	movl 12(%ebp), %esi
	movl $0, %ecx
	sall $2, %ecx
	orl $0, %ecx
	pushl $0
	pushl $0
	pushl %ecx
	pushl %ebx
	call get_subscript
	addl $16, %esp
	movl %eax, %ebx
	movl $0, %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl %esi, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %eax
	cmpl $0, %eax
	je label_497_else
	movl %esi, %eax
	sarl $2, %eax
	sarl $2, %ecx
	cmpl %eax, %ecx
	sete %al
	movzbl %al, %eax
	sall $2, %eax
	orl $1, %eax
	jmp label_498_if_end
label_497_else:
	movl %esi, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %edi
	cmpl $0, %edi
	je label_495_else
	movl %esi, %eax
	sarl $2, %eax
	sarl $2, %ecx
	cmpl %eax, %ecx
	sete %al
	movzbl %al, %eax
	sall $2, %eax
	orl $1, %eax
	jmp label_496_if_end
label_495_else:
	movl $3, %edi
	notl %edi
	andl %esi, %edi
	movl $3, %edx
	notl %edx
	andl %ecx, %edx
	subl $8, %esp
	pushl %edx
	pushl %edi
	call equal
	addl $16, %esp
	sall $2, %eax
	orl $1, %eax
label_496_if_end:
label_498_if_end:
	movl %eax, %ecx
	movl %ecx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %edi
	cmpl $0, %edi
	je label_499_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_500_if_end
label_499_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ecx
label_500_if_end:
	cmpl $0, %ecx
	je label_533_else
	movl $1, %eax
	sall $2, %eax
	orl $1, %eax
	jmp label_534_if_end
label_533_else:
	pushl $0
	pushl $0
	pushl $0
	pushl %ebx
	call get_subscript
	addl $16, %esp
	movl %eax, %edi
	subl $12, %esp
	pushl %edi
	call is_class
	addl $16, %esp
	sall $2, %eax
	orl $1, %eax
	movl %eax, %ecx
	movl %ecx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_501_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_502_if_end
label_501_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ecx
label_502_if_end:
	cmpl $0, %ecx
	je label_531_else
	subl $12, %esp
	pushl %edi
	call create_object
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
	movl %ebx, -28(%ebp)
	subl $8, %esp
	pushl $str_591
	pushl %edi
	call has_attr
	addl $16, %esp
	sall $2, %eax
	orl $1, %eax
	movl %eax, %ecx
	movl %ecx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %ebx
	cmpl $0, %ebx
	je label_503_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ebx
	jmp label_504_if_end
label_503_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ebx
label_504_if_end:
	cmpl $0, %ebx
	je label_509_else
	subl $8, %esp
	pushl $str_592
	pushl %edi
	call get_attr
	addl $16, %esp
	subl $12, %esp
	pushl %eax
	call get_function
	addl $16, %esp
	movl %eax, %edi
	orl $3, %edi
	subl $12, %esp
	pushl %edi
	call get_fun_ptr
	addl $16, %esp
	movl %eax, %ebx
	subl $12, %esp
	pushl %edi
	call get_free_vars
	addl $16, %esp
	movl %eax, %edi
	movl $-1, %eax
	sall $2, %eax
	orl $0, %eax
	movl %eax, %ecx
	movl %esi, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_507_else
	sarl $2, %esi
	sarl $2, %ecx
	addl %ecx, %esi
	movl %esi, %ecx
	sall $2, %ecx
	orl $0, %ecx
	jmp label_508_if_end
label_507_else:
	movl %esi, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_505_else
	sarl $2, %esi
	sarl $2, %ecx
	addl %ecx, %esi
	sall $2, %esi
	orl $0, %esi
	movl %esi, %ecx
	jmp label_506_if_end
label_505_else:
	movl $3, %edx
	notl %edx
	andl %esi, %edx
	movl $3, %esi
	notl %esi
	andl %ecx, %esi
	subl $8, %esp
	pushl %esi
	pushl %edx
	call add
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
label_506_if_end:
label_508_if_end:
	subl $4, %esp
	pushl %ecx
	pushl -28(%ebp)
	pushl %edi
	call *%ebx
	addl $16, %esp
	movl -28(%ebp), %eax
	jmp label_510_if_end
label_509_else:
	movl -28(%ebp), %eax
label_510_if_end:
	jmp label_532_if_end
label_531_else:
	subl $12, %esp
	pushl %edi
	call is_bound_method
	addl $16, %esp
	sall $2, %eax
	orl $1, %eax
	movl %eax, %ecx
	movl %ecx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_511_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_512_if_end
label_511_else:
	movl %ecx, %eax
	sarl $2, %eax
	cmpl $0, %eax
	setne %al
	movzbl %al, %ecx
label_512_if_end:
	cmpl $0, %ecx
	je label_529_else
	subl $12, %esp
	pushl %edi
	call get_function
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
	subl $12, %esp
	pushl %ebx
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -28(%ebp)
	subl $12, %esp
	pushl %ebx
	call get_free_vars
	addl $16, %esp
	movl %eax, %ebx
	subl $12, %esp
	pushl %edi
	call get_receiver
	addl $16, %esp
	movl %eax, -16(%ebp)
	orl $3, -16(%ebp)
	movl $-1, %edi
	sall $2, %edi
	orl $0, %edi
	movl %esi, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_515_else
	sarl $2, %esi
	sarl $2, %edi
	addl %edi, %esi
	sall $2, %esi
	orl $0, %esi
	jmp label_516_if_end
label_515_else:
	movl %esi, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_513_else
	sarl $2, %esi
	sarl $2, %edi
	addl %edi, %esi
	sall $2, %esi
	orl $0, %esi
	jmp label_514_if_end
label_513_else:
	movl $3, %ecx
	notl %ecx
	andl %esi, %ecx
	movl $3, %esi
	notl %esi
	andl %edi, %esi
	subl $8, %esp
	pushl %esi
	pushl %ecx
	call add
	addl $16, %esp
	movl %eax, %esi
	orl $3, %esi
label_514_if_end:
label_516_if_end:
	subl $4, %esp
	pushl %esi
	pushl -16(%ebp)
	pushl %ebx
	call *-28(%ebp)
	addl $16, %esp
	jmp label_530_if_end
label_529_else:
	subl $12, %esp
	pushl %edi
	call is_unbound_method
	addl $16, %esp
	sall $2, %eax
	orl $1, %eax
	movl %eax, %edx
	movl %edx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_517_else
	subl $12, %esp
	pushl %edx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_518_if_end
label_517_else:
	sarl $2, %edx
	cmpl $0, %edx
	setne %al
	movzbl %al, %ecx
label_518_if_end:
	cmpl $0, %ecx
	je label_527_else
	subl $12, %esp
	pushl %edi
	call get_function
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
	subl $12, %esp
	pushl %ebx
	call get_fun_ptr
	addl $16, %esp
	movl %eax, %edi
	subl $12, %esp
	pushl %ebx
	call get_free_vars
	addl $16, %esp
	movl %eax, %ebx
	movl $-1, %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl %esi, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_521_else
	sarl $2, %esi
	sarl $2, %ecx
	addl %ecx, %esi
	movl %esi, %ecx
	sall $2, %ecx
	orl $0, %ecx
	jmp label_522_if_end
label_521_else:
	movl %esi, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_519_else
	sarl $2, %esi
	sarl $2, %ecx
	addl %ecx, %esi
	sall $2, %esi
	orl $0, %esi
	movl %esi, %ecx
	jmp label_520_if_end
label_519_else:
	movl $3, %edx
	notl %edx
	andl %esi, %edx
	movl $3, %esi
	notl %esi
	andl %ecx, %esi
	subl $8, %esp
	pushl %esi
	pushl %edx
	call add
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
label_520_if_end:
label_522_if_end:
	subl $8, %esp
	pushl %ecx
	pushl %ebx
	call *%edi
	addl $16, %esp
	jmp label_528_if_end
label_527_else:
	pushl $0
	pushl $0
	pushl $0
	pushl %ebx
	call get_subscript
	addl $16, %esp
	movl %eax, %ebx
	subl $12, %esp
	pushl %ebx
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -28(%ebp)
	subl $12, %esp
	pushl %ebx
	call get_free_vars
	addl $16, %esp
	movl %eax, %ebx
	movl $-1, %edi
	sall $2, %edi
	orl $0, %edi
	movl %esi, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_525_else
	sarl $2, %esi
	sarl $2, %edi
	addl %edi, %esi
	movl %esi, %ecx
	sall $2, %ecx
	orl $0, %ecx
	jmp label_526_if_end
label_525_else:
	movl %esi, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_523_else
	sarl $2, %esi
	sarl $2, %edi
	addl %edi, %esi
	movl %esi, %ecx
	sall $2, %ecx
	orl $0, %ecx
	jmp label_524_if_end
label_523_else:
	movl $3, %ecx
	notl %ecx
	andl %esi, %ecx
	movl $3, %esi
	notl %esi
	andl %edi, %esi
	subl $8, %esp
	pushl %esi
	pushl %ecx
	call add
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
label_524_if_end:
label_526_if_end:
	subl $8, %esp
	pushl %ecx
	pushl %ebx
	call *-28(%ebp)
	addl $16, %esp
label_528_if_end:
label_530_if_end:
label_532_if_end:
label_534_if_end:
	popl %edi
	popl %esi
	popl %edx
	popl %ebx

        movl %eax, %eax
        leave
        ret
	movl $0, %eax
	sall $2, %eax
	orl $0, %eax
	popl %edi
	popl %esi
	popl %edx
	popl %ebx

        movl %eax, %eax
        leave
        ret


lambda_66:
	pushl %ebp
	movl %esp, %ebp
	subl $40, %esp
	pushl %ebx
	pushl %edx
	pushl %esi
	pushl %edi
	movl 8(%ebp), %esi
	movl 12(%ebp), %ebx
	movl $0, %ecx
	sall $2, %ecx
	orl $0, %ecx
	pushl $0
	pushl $0
	pushl %ecx
	pushl %esi
	call get_subscript
	addl $16, %esp
	movl %eax, %esi
	movl $1, %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl %ebx, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %eax
	cmpl $0, %eax
	je label_537_else
	movl %ebx, %eax
	sarl $2, %eax
	sarl $2, %ecx
	cmpl %eax, %ecx
	sete %al
	movzbl %al, %eax
	sall $2, %eax
	orl $1, %eax
	jmp label_538_if_end
label_537_else:
	movl %ebx, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %edi
	cmpl $0, %edi
	je label_535_else
	movl %ebx, %eax
	sarl $2, %eax
	sarl $2, %ecx
	cmpl %eax, %ecx
	sete %al
	movzbl %al, %eax
	sall $2, %eax
	orl $1, %eax
	jmp label_536_if_end
label_535_else:
	movl $3, %edi
	notl %edi
	andl %ebx, %edi
	movl $3, %edx
	notl %edx
	andl %ecx, %edx
	subl $8, %esp
	pushl %edx
	pushl %edi
	call equal
	addl $16, %esp
	sall $2, %eax
	orl $1, %eax
label_536_if_end:
label_538_if_end:
	movl %eax, %ecx
	movl %ecx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %edi
	cmpl $0, %edi
	je label_539_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_540_if_end
label_539_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ecx
label_540_if_end:
	cmpl $0, %ecx
	je label_573_else
	movl $1, %eax
	sall $2, %eax
	orl $1, %eax
	jmp label_574_if_end
label_573_else:
	pushl $0
	pushl $0
	pushl $0
	pushl %esi
	call get_subscript
	addl $16, %esp
	movl %eax, %edi
	subl $12, %esp
	pushl %edi
	call is_class
	addl $16, %esp
	sall $2, %eax
	orl $1, %eax
	movl %eax, %ecx
	movl %ecx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_541_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_542_if_end
label_541_else:
	movl %ecx, %eax
	sarl $2, %eax
	cmpl $0, %eax
	setne %al
	movzbl %al, %ecx
label_542_if_end:
	cmpl $0, %ecx
	je label_571_else
	subl $12, %esp
	pushl %edi
	call create_object
	addl $16, %esp
	movl %eax, %esi
	orl $3, %esi
	subl $8, %esp
	pushl $str_593
	pushl %edi
	call has_attr
	addl $16, %esp
	sall $2, %eax
	orl $1, %eax
	movl %eax, %ecx
	movl %ecx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_543_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_544_if_end
label_543_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ecx
label_544_if_end:
	cmpl $0, %ecx
	je label_549_else
	subl $8, %esp
	pushl $str_594
	pushl %edi
	call get_attr
	addl $16, %esp
	subl $12, %esp
	pushl %eax
	call get_function
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, -28(%ebp)
	subl $12, %esp
	pushl -28(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, %edi
	subl $12, %esp
	pushl -28(%ebp)
	call get_free_vars
	addl $16, %esp
	movl %eax, -28(%ebp)
	movl $-1, %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl %ebx, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_547_else
	sarl $2, %ebx
	sarl $2, %ecx
	addl %ecx, %ebx
	sall $2, %ebx
	orl $0, %ebx
	jmp label_548_if_end
label_547_else:
	movl %ebx, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_545_else
	sarl $2, %ebx
	sarl $2, %ecx
	addl %ecx, %ebx
	sall $2, %ebx
	orl $0, %ebx
	jmp label_546_if_end
label_545_else:
	movl $3, %edx
	notl %edx
	andl %ebx, %edx
	movl $3, %ebx
	notl %ebx
	andl %ecx, %ebx
	subl $8, %esp
	pushl %ebx
	pushl %edx
	call add
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
label_546_if_end:
label_548_if_end:
	subl $4, %esp
	pushl %ebx
	pushl %esi
	pushl -28(%ebp)
	call *%edi
	addl $16, %esp
	movl %esi, %eax
	jmp label_550_if_end
label_549_else:
	movl %esi, %eax
label_550_if_end:
	jmp label_572_if_end
label_571_else:
	subl $12, %esp
	pushl %edi
	call is_bound_method
	addl $16, %esp
	sall $2, %eax
	orl $1, %eax
	movl %eax, %ecx
	movl %ecx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_551_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_552_if_end
label_551_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ecx
label_552_if_end:
	cmpl $0, %ecx
	je label_569_else
	subl $12, %esp
	pushl %edi
	call get_function
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, %esi
	subl $12, %esp
	pushl %esi
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -28(%ebp)
	subl $12, %esp
	pushl %esi
	call get_free_vars
	addl $16, %esp
	movl %eax, %esi
	subl $12, %esp
	pushl %edi
	call get_receiver
	addl $16, %esp
	movl %eax, -16(%ebp)
	orl $3, -16(%ebp)
	movl $-1, %edi
	sall $2, %edi
	orl $0, %edi
	movl %ebx, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_555_else
	sarl $2, %ebx
	sarl $2, %edi
	addl %edi, %ebx
	sall $2, %ebx
	orl $0, %ebx
	jmp label_556_if_end
label_555_else:
	movl %ebx, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_553_else
	sarl $2, %ebx
	sarl $2, %edi
	addl %edi, %ebx
	sall $2, %ebx
	orl $0, %ebx
	jmp label_554_if_end
label_553_else:
	movl $3, %ecx
	notl %ecx
	andl %ebx, %ecx
	movl $3, %ebx
	notl %ebx
	andl %edi, %ebx
	subl $8, %esp
	pushl %ebx
	pushl %ecx
	call add
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
label_554_if_end:
label_556_if_end:
	subl $4, %esp
	pushl %ebx
	pushl -16(%ebp)
	pushl %esi
	call *-28(%ebp)
	addl $16, %esp
	jmp label_570_if_end
label_569_else:
	subl $12, %esp
	pushl %edi
	call is_unbound_method
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
	je label_557_else
	subl $12, %esp
	pushl %edx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_558_if_end
label_557_else:
	sarl $2, %edx
	cmpl $0, %edx
	setne %al
	movzbl %al, %ecx
label_558_if_end:
	cmpl $0, %ecx
	je label_567_else
	subl $12, %esp
	pushl %edi
	call get_function
	addl $16, %esp
	movl %eax, %edi
	orl $3, %edi
	subl $12, %esp
	pushl %edi
	call get_fun_ptr
	addl $16, %esp
	movl %eax, %esi
	subl $12, %esp
	pushl %edi
	call get_free_vars
	addl $16, %esp
	movl %eax, %edi
	movl $-1, %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl %ebx, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_561_else
	sarl $2, %ebx
	sarl $2, %ecx
	addl %ecx, %ebx
	sall $2, %ebx
	orl $0, %ebx
	jmp label_562_if_end
label_561_else:
	movl %ebx, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_559_else
	sarl $2, %ebx
	sarl $2, %ecx
	addl %ecx, %ebx
	sall $2, %ebx
	orl $0, %ebx
	jmp label_560_if_end
label_559_else:
	movl $3, %edx
	notl %edx
	andl %ebx, %edx
	movl $3, %ebx
	notl %ebx
	andl %ecx, %ebx
	subl $8, %esp
	pushl %ebx
	pushl %edx
	call add
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
label_560_if_end:
label_562_if_end:
	subl $8, %esp
	pushl %ebx
	pushl %edi
	call *%esi
	addl $16, %esp
	jmp label_568_if_end
label_567_else:
	pushl $0
	pushl $0
	pushl $0
	pushl %esi
	call get_subscript
	addl $16, %esp
	movl %eax, %esi
	subl $12, %esp
	pushl %esi
	call get_fun_ptr
	addl $16, %esp
	movl %eax, %edi
	subl $12, %esp
	pushl %esi
	call get_free_vars
	addl $16, %esp
	movl %eax, -28(%ebp)
	movl $-1, %esi
	sall $2, %esi
	orl $0, %esi
	movl %ebx, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_565_else
	sarl $2, %ebx
	sarl $2, %esi
	addl %esi, %ebx
	sall $2, %ebx
	orl $0, %ebx
	jmp label_566_if_end
label_565_else:
	movl %ebx, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_563_else
	sarl $2, %ebx
	sarl $2, %esi
	addl %esi, %ebx
	sall $2, %ebx
	orl $0, %ebx
	jmp label_564_if_end
label_563_else:
	movl $3, %ecx
	notl %ecx
	andl %ebx, %ecx
	movl $3, %ebx
	notl %ebx
	andl %esi, %ebx
	subl $8, %esp
	pushl %ebx
	pushl %ecx
	call add
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
label_564_if_end:
label_566_if_end:
	subl $8, %esp
	pushl %ebx
	pushl -28(%ebp)
	call *%edi
	addl $16, %esp
label_568_if_end:
label_570_if_end:
label_572_if_end:
label_574_if_end:
	popl %edi
	popl %esi
	popl %edx
	popl %ebx

        movl %eax, %eax
        leave
        ret
	movl $0, %eax
	sall $2, %eax
	orl $0, %eax
	popl %edi
	popl %esi
	popl %edx
	popl %ebx

        movl %eax, %eax
        leave
        ret


main:
	pushl %ebp
	movl %esp, %ebp
	subl $40, %esp
	pushl %ebx
	pushl %edx
	pushl %esi
	pushl %edi
	movl $1, %ebx
	sall $2, %ebx
	orl $0, %ebx
	subl $12, %esp
	pushl %ebx
	call create_list
	addl $16, %esp
	movl %eax, %esi
	orl $3, %esi
	movl $0, %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl $0, %ebx
	sall $2, %ebx
	orl $0, %ebx
	pushl $0
	pushl %ebx
	pushl %ecx
	pushl %esi
	call set_subscript
	addl $16, %esp
	movl %eax, %ebx
	movl %esi, %ebx
	movl $1, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $12, %esp
	pushl %ecx
	call create_list
	addl $16, %esp
	movl %eax, %esi
	orl $3, %esi
	movl $0, %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl $0, %edi
	sall $2, %edi
	orl $0, %edi
	pushl $0
	pushl %edi
	pushl %ecx
	pushl %esi
	call set_subscript
	addl $16, %esp
	movl %eax, %ecx
	movl $1, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $12, %esp
	pushl %ecx
	call create_list
	addl $16, %esp
	movl %eax, %edi
	orl $3, %edi
	movl $0, %ecx
	sall $2, %ecx
	orl $0, %ecx
	pushl $0
	pushl %ebx
	pushl %ecx
	pushl %edi
	call set_subscript
	addl $16, %esp
	movl %eax, %ecx
	subl $8, %esp
	pushl %edi
	pushl $lambda_56
	call create_closure
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	pushl $0
	pushl %ecx
	pushl $0
	pushl %esi
	call set_subscript
	addl $16, %esp
	movl $1, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $12, %esp
	pushl %ecx
	call create_list
	addl $16, %esp
	movl %eax, %edi
	orl $3, %edi
	movl $0, %ecx
	sall $2, %ecx
	orl $0, %ecx
	pushl $0
	pushl %esi
	pushl %ecx
	pushl %edi
	call set_subscript
	addl $16, %esp
	movl %eax, %ecx
	subl $8, %esp
	pushl %edi
	pushl $lambda_66
	call create_closure
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	pushl $0
	pushl %ecx
	pushl $0
	pushl %ebx
	call set_subscript
	addl $16, %esp
	pushl $0
	pushl $0
	pushl $0
	pushl %esi
	call get_subscript
	addl $16, %esp
	movl %eax, %ebx
	subl $12, %esp
	pushl %ebx
	call is_class
	addl $16, %esp
	sall $2, %eax
	orl $1, %eax
	movl %eax, %ecx
	movl %ecx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %edi
	cmpl $0, %edi
	je label_575_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_576_if_end
label_575_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ecx
label_576_if_end:
	cmpl $0, %ecx
	je label_589_else
	subl $12, %esp
	pushl %ebx
	call create_object
	addl $16, %esp
	movl %eax, %esi
	orl $3, %esi
	subl $8, %esp
	pushl $str_595
	pushl %ebx
	call has_attr
	addl $16, %esp
	movl %eax, %ecx
	sall $2, %ecx
	orl $1, %ecx
	movl %ecx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %edi
	cmpl $0, %edi
	je label_577_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_578_if_end
label_577_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ecx
label_578_if_end:
	cmpl $0, %ecx
	je label_579_else
	subl $8, %esp
	pushl $str_596
	pushl %ebx
	call get_attr
	addl $16, %esp
	subl $12, %esp
	pushl %eax
	call get_function
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
	subl $12, %esp
	pushl %ebx
	call get_fun_ptr
	addl $16, %esp
	movl %eax, %edi
	subl $12, %esp
	pushl %ebx
	call get_free_vars
	addl $16, %esp
	movl $8, %ebx
	sall $2, %ebx
	orl $0, %ebx
	subl $4, %esp
	pushl %ebx
	pushl %esi
	pushl %eax
	call *%edi
	addl $16, %esp
	movl %esi, %eax
	jmp label_580_if_end
label_579_else:
	movl %esi, %eax
label_580_if_end:
	jmp label_590_if_end
label_589_else:
	subl $12, %esp
	pushl %ebx
	call is_bound_method
	addl $16, %esp
	sall $2, %eax
	orl $1, %eax
	movl %eax, %edi
	movl %edi, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_581_else
	subl $12, %esp
	pushl %edi
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_582_if_end
label_581_else:
	sarl $2, %edi
	cmpl $0, %edi
	setne %al
	movzbl %al, %ecx
label_582_if_end:
	cmpl $0, %ecx
	je label_587_else
	subl $12, %esp
	pushl %ebx
	call get_function
	addl $16, %esp
	movl %eax, %esi
	orl $3, %esi
	subl $12, %esp
	pushl %esi
	call get_fun_ptr
	addl $16, %esp
	movl %eax, %edi
	subl $12, %esp
	pushl %esi
	call get_free_vars
	addl $16, %esp
	movl %eax, %esi
	subl $12, %esp
	pushl %ebx
	call get_receiver
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
	movl $8, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $4, %esp
	pushl %ecx
	pushl %ebx
	pushl %esi
	call *%edi
	addl $16, %esp
	jmp label_588_if_end
label_587_else:
	subl $12, %esp
	pushl %ebx
	call is_unbound_method
	addl $16, %esp
	sall $2, %eax
	orl $1, %eax
	movl %eax, %edi
	movl %edi, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_583_else
	subl $12, %esp
	pushl %edi
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_584_if_end
label_583_else:
	sarl $2, %edi
	cmpl $0, %edi
	setne %al
	movzbl %al, %ecx
label_584_if_end:
	cmpl $0, %ecx
	je label_585_else
	subl $12, %esp
	pushl %ebx
	call get_function
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
	subl $12, %esp
	pushl %ebx
	call get_fun_ptr
	addl $16, %esp
	movl %eax, %esi
	subl $12, %esp
	pushl %ebx
	call get_free_vars
	addl $16, %esp
	movl $8, %ebx
	sall $2, %ebx
	orl $0, %ebx
	subl $8, %esp
	pushl %ebx
	pushl %eax
	call *%esi
	addl $16, %esp
	jmp label_586_if_end
label_585_else:
	pushl $0
	pushl $0
	pushl $0
	pushl %esi
	call get_subscript
	addl $16, %esp
	movl %eax, %esi
	subl $12, %esp
	pushl %esi
	call get_fun_ptr
	addl $16, %esp
	movl %eax, %ebx
	subl $12, %esp
	pushl %esi
	call get_free_vars
	addl $16, %esp
	movl $8, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $8, %esp
	pushl %ecx
	pushl %eax
	call *%ebx
	addl $16, %esp
label_586_if_end:
label_588_if_end:
label_590_if_end:
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

