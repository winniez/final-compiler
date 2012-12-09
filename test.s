str_353:
.string "__init__"
str_352:
.string "__init__"
str_351:
.string "__init__"
str_350:
.string "__init__"
str_357:
.string "__init__"
str_356:
.string "__init__"
str_355:
.string "__init__"
str_354:
.string "__init__"
str_348:
.string "a"
str_349:
.string "a"
str_359:
.string "a"
str_358:
.string "a"
.globl main
lambda_54:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
	pushl %ebx
	pushl %edx
	pushl %esi
	pushl %edi
	movl 8(%ebp), %ebx
	movl 12(%ebp), %ebx
	movl 16(%ebp), %ecx
	subl $4, %esp
	pushl %ecx
	pushl $str_348
	pushl %ebx
	call set_attr
	addl $16, %esp
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


lambda_57:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
	pushl %ebx
	pushl %edx
	pushl %esi
	pushl %edi
	movl 8(%ebp), %ebx
	movl 12(%ebp), %ebx
	movl 16(%ebp), %ecx
	subl $4, %esp
	pushl %ecx
	pushl $str_349
	pushl %ebx
	call set_attr
	addl $16, %esp
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


lambda_68:
	pushl %ebp
	movl %esp, %ebp
	subl $40, %esp
	pushl %ebx
	pushl %edx
	pushl %esi
	pushl %edi
	movl 8(%ebp), %ebx
	movl 12(%ebp), %esi
	movl 16(%ebp), %ebx
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
	movl $0, %edx
	sall $2, %edx
	orl $0, %edx
	pushl $0
	pushl %edx
	pushl %ecx
	pushl %edi
	call set_subscript
	addl $16, %esp
	movl %eax, %ecx
	pushl $0
	pushl %esi
	pushl $0
	pushl %edi
	call set_subscript
	addl $16, %esp
	pushl $0
	pushl $0
	pushl $0
	pushl %edi
	call get_subscript
	addl $16, %esp
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
	movl %eax, %ebx
	orl $3, %ebx
	movl $0, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $12, %esp
	pushl %ecx
	call create_list
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	subl $8, %esp
	pushl %ecx
	pushl $lambda_54
	call create_closure
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	subl $4, %esp
	pushl %ecx
	pushl $str_350
	pushl %ebx
	call set_attr
	addl $16, %esp
	movl $0, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $12, %esp
	pushl %ecx
	call create_list
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	subl $12, %esp
	pushl %ecx
	call create_class
	addl $16, %esp
	movl %eax, %esi
	orl $3, %esi
	movl $0, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $12, %esp
	pushl %ecx
	call create_list
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	subl $8, %esp
	pushl %ecx
	pushl $lambda_57
	call create_closure
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	subl $4, %esp
	pushl %ecx
	pushl $str_351
	pushl %esi
	call set_attr
	addl $16, %esp
	movl %esi, -20(%ebp)
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
	movzbl %al, %esi
	cmpl $0, %esi
	je label_300_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_301_if_end
label_300_else:
	movl %ecx, %eax
	sarl $2, %eax
	cmpl $0, %eax
	setne %al
	movzbl %al, %ecx
label_301_if_end:
	cmpl $0, %ecx
	je label_314_else
	subl $12, %esp
	pushl %ebx
	call create_object
	addl $16, %esp
	movl %eax, %esi
	orl $3, %esi
	subl $8, %esp
	pushl $str_352
	pushl %ebx
	call has_attr
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
	je label_302_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_303_if_end
label_302_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ecx
label_303_if_end:
	cmpl $0, %ecx
	je label_304_else
	subl $8, %esp
	pushl $str_353
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
	movl $1, %ebx
	sall $2, %ebx
	orl $0, %ebx
	subl $4, %esp
	pushl %ebx
	pushl %esi
	pushl %eax
	call *%edi
	addl $16, %esp
	movl %eax, %ebx
	movl %esi, %ebx
	jmp label_305_if_end
label_304_else:
	movl %esi, %ebx
label_305_if_end:
	jmp label_315_if_end
label_314_else:
	subl $12, %esp
	pushl %ebx
	call is_bound_method
	addl $16, %esp
	sall $2, %eax
	orl $1, %eax
	movl %eax, %ecx
	movl %ecx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %esi
	cmpl $0, %esi
	je label_306_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_307_if_end
label_306_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ecx
label_307_if_end:
	cmpl $0, %ecx
	je label_312_else
	subl $12, %esp
	pushl %ebx
	call get_function
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, %edi
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
	subl $12, %esp
	pushl %ebx
	call get_receiver
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
	movl $1, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $4, %esp
	pushl %ecx
	pushl %ebx
	pushl %edi
	call *%esi
	addl $16, %esp
	movl %eax, %ebx
	jmp label_313_if_end
label_312_else:
	subl $12, %esp
	pushl %ebx
	call is_unbound_method
	addl $16, %esp
	sall $2, %eax
	orl $1, %eax
	movl %eax, %esi
	movl %esi, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_308_else
	subl $12, %esp
	pushl %esi
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_309_if_end
label_308_else:
	movl %esi, %eax
	sarl $2, %eax
	cmpl $0, %eax
	setne %al
	movzbl %al, %ecx
label_309_if_end:
	cmpl $0, %ecx
	je label_310_else
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
	movl $1, %ebx
	sall $2, %ebx
	orl $0, %ebx
	subl $8, %esp
	pushl %ebx
	pushl %eax
	call *%esi
	addl $16, %esp
	movl %eax, %ebx
	jmp label_311_if_end
label_310_else:
	subl $12, %esp
	pushl %ebx
	call get_fun_ptr
	addl $16, %esp
	movl %eax, %esi
	subl $12, %esp
	pushl %ebx
	call get_free_vars
	addl $16, %esp
	movl $1, %ebx
	sall $2, %ebx
	orl $0, %ebx
	subl $8, %esp
	pushl %ebx
	pushl %eax
	call *%esi
	addl $16, %esp
	movl %eax, %ebx
label_311_if_end:
label_313_if_end:
label_315_if_end:
	movl -20(%ebp), %esi
	subl $12, %esp
	pushl %esi
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
	je label_316_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_317_if_end
label_316_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ecx
label_317_if_end:
	cmpl $0, %ecx
	je label_330_else
	subl $12, %esp
	pushl %esi
	call create_object
	addl $16, %esp
	movl %eax, %edi
	orl $3, %edi
	subl $8, %esp
	pushl $str_354
	pushl %esi
	call has_attr
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
	je label_318_else
	subl $12, %esp
	pushl %edx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_319_if_end
label_318_else:
	sarl $2, %edx
	cmpl $0, %edx
	setne %al
	movzbl %al, %ecx
label_319_if_end:
	cmpl $0, %ecx
	je label_320_else
	subl $8, %esp
	pushl $str_355
	pushl %esi
	call get_attr
	addl $16, %esp
	subl $12, %esp
	pushl %eax
	call get_function
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, -20(%ebp)
	subl $12, %esp
	pushl -20(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, %esi
	subl $12, %esp
	pushl -20(%ebp)
	call get_free_vars
	addl $16, %esp
	movl $2, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $4, %esp
	pushl %ecx
	pushl %edi
	pushl %eax
	call *%esi
	addl $16, %esp
	movl %eax, %ecx
	movl %edi, %esi
	jmp label_321_if_end
label_320_else:
	movl %edi, %esi
label_321_if_end:
	jmp label_331_if_end
label_330_else:
	subl $12, %esp
	pushl %esi
	call is_bound_method
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
	je label_322_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_323_if_end
label_322_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ecx
label_323_if_end:
	cmpl $0, %ecx
	je label_328_else
	subl $12, %esp
	pushl %esi
	call get_function
	addl $16, %esp
	movl %eax, %edi
	orl $3, %edi
	subl $12, %esp
	pushl %edi
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -20(%ebp)
	subl $12, %esp
	pushl %edi
	call get_free_vars
	addl $16, %esp
	movl %eax, %edi
	subl $12, %esp
	pushl %esi
	call get_receiver
	addl $16, %esp
	movl %eax, %esi
	orl $3, %esi
	movl $2, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $4, %esp
	pushl %ecx
	pushl %esi
	pushl %edi
	call *-20(%ebp)
	addl $16, %esp
	movl %eax, %ecx
	jmp label_329_if_end
label_328_else:
	subl $12, %esp
	pushl %esi
	call is_unbound_method
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
	je label_324_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_325_if_end
label_324_else:
	movl %ecx, %eax
	sarl $2, %eax
	cmpl $0, %eax
	setne %al
	movzbl %al, %ecx
label_325_if_end:
	cmpl $0, %ecx
	je label_326_else
	subl $12, %esp
	pushl %esi
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
	movl $2, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $8, %esp
	pushl %ecx
	pushl %eax
	call *%esi
	addl $16, %esp
	movl %eax, %ecx
	jmp label_327_if_end
label_326_else:
	subl $12, %esp
	pushl -20(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, %esi
	subl $12, %esp
	pushl -20(%ebp)
	call get_free_vars
	addl $16, %esp
	movl $2, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $8, %esp
	pushl %ecx
	pushl %eax
	call *%esi
	addl $16, %esp
	movl %eax, %ecx
label_327_if_end:
label_329_if_end:
	movl %ecx, %esi
label_331_if_end:
	movl $0, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $12, %esp
	pushl %ecx
	call create_list
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	subl $8, %esp
	pushl %ecx
	pushl $lambda_68
	call create_closure
	addl $16, %esp
	movl %eax, %edi
	orl $3, %edi
	movl %edi, -16(%ebp)
	subl $12, %esp
	pushl -16(%ebp)
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
	je label_332_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_333_if_end
label_332_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ecx
label_333_if_end:
	cmpl $0, %ecx
	je label_346_else
	subl $12, %esp
	pushl -16(%ebp)
	call create_object
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, -20(%ebp)
	subl $8, %esp
	pushl $str_356
	pushl -16(%ebp)
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
	je label_334_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_335_if_end
label_334_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ecx
label_335_if_end:
	cmpl $0, %ecx
	je label_336_else
	subl $8, %esp
	pushl $str_357
	pushl -16(%ebp)
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
	movl %eax, -16(%ebp)
	subl $12, %esp
	pushl %edi
	call get_free_vars
	addl $16, %esp
	subl $16, %esp
	pushl %esi
	pushl %ebx
	pushl -20(%ebp)
	pushl %eax
	call *-16(%ebp)
	addl $32, %esp
	movl %eax, %ecx
	movl -20(%ebp), %ecx
	jmp label_337_if_end
label_336_else:
	movl -20(%ebp), %ecx
label_337_if_end:
	jmp label_347_if_end
label_346_else:
	subl $12, %esp
	pushl -16(%ebp)
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
	je label_338_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_339_if_end
label_338_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ecx
label_339_if_end:
	cmpl $0, %ecx
	je label_344_else
	subl $12, %esp
	pushl -16(%ebp)
	call get_function
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, -20(%ebp)
	subl $12, %esp
	pushl -20(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, %edi
	subl $12, %esp
	pushl -20(%ebp)
	call get_free_vars
	addl $16, %esp
	movl %eax, -20(%ebp)
	subl $12, %esp
	pushl -16(%ebp)
	call get_receiver
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	subl $16, %esp
	pushl %esi
	pushl %ebx
	pushl %ecx
	pushl -20(%ebp)
	call *%edi
	addl $32, %esp
	movl %eax, %ecx
	jmp label_345_if_end
label_344_else:
	subl $12, %esp
	pushl -16(%ebp)
	call is_unbound_method
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
	je label_340_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_341_if_end
label_340_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ecx
label_341_if_end:
	cmpl $0, %ecx
	je label_342_else
	subl $12, %esp
	pushl -16(%ebp)
	call get_function
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, -20(%ebp)
	subl $12, %esp
	pushl -20(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, %edi
	subl $12, %esp
	pushl -20(%ebp)
	call get_free_vars
	addl $16, %esp
	subl $4, %esp
	pushl %esi
	pushl %ebx
	pushl %eax
	call *%edi
	addl $16, %esp
	movl %eax, %ecx
	jmp label_343_if_end
label_342_else:
	subl $12, %esp
	pushl %edi
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -20(%ebp)
	subl $12, %esp
	pushl %edi
	call get_free_vars
	addl $16, %esp
	subl $4, %esp
	pushl %esi
	pushl %ebx
	pushl %eax
	call *-20(%ebp)
	addl $16, %esp
	movl %eax, %ecx
label_343_if_end:
label_345_if_end:
label_347_if_end:
	subl $8, %esp
	pushl $str_358
	pushl %ebx
	call get_attr
	addl $16, %esp
	pushl $0
	pushl $0
	pushl $0
	pushl %eax
	call print_any
	addl $16, %esp
	subl $8, %esp
	pushl $str_359
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

