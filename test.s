str_2086:
.string "__init__"
str_2087:
.string "__init__"
str_2084:
.string "__init__"
str_2085:
.string "__init__"
str_2082:
.string "__init__"
str_2083:
.string "__init__"
str_2080:
.string "__init__"
str_2081:
.string "__init__"
str_2088:
.string "__init__"
str_2077:
.string "__init__"
str_2076:
.string "__init__"
str_2075:
.string "__init__"
str_2074:
.string "__init__"
str_2073:
.string "__init__"
str_2072:
.string "__init__"
str_2071:
.string "__init__"
str_2070:
.string "__init__"
str_2069:
.string "__init__"
str_2079:
.string "__init__"
str_2078:
.string "__init__"
.globl main
lambda_188:
	pushl %ebp
	movl %esp, %ebp
	subl $40, %esp
	pushl %ebx
	pushl %edx
	pushl %esi
	pushl %edi
	movl 8(%ebp), %ecx
	movl 12(%ebp), %edi
	movl 16(%ebp), %ebx
	movl $0, %esi
	sall $2, %esi
	orl $0, %esi
	pushl $0
	pushl $0
	pushl %esi
	pushl %ecx
	call get_subscript
	addl $16, %esp
	movl %eax, %esi
	movl $0, %edx
	sall $2, %edx
	orl $0, %edx
	movl %edi, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %eax
	cmpl $0, %eax
	je label_1761_else
	movl %edi, %eax
	sarl $2, %eax
	sarl $2, %edx
	cmpl %eax, %edx
	sete %al
	movzbl %al, %eax
	sall $2, %eax
	orl $1, %eax
	jmp label_1762_if_end
label_1761_else:
	movl %edi, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_1759_else
	movl %edi, %ecx
	sarl $2, %ecx
	movl %edx, %eax
	sarl $2, %eax
	cmpl %ecx, %eax
	sete %al
	movzbl %al, %eax
	sall $2, %eax
	orl $1, %eax
	jmp label_1760_if_end
label_1759_else:
	movl $3, %ecx
	notl %ecx
	andl %edi, %ecx
	movl $3, -28(%ebp)
	notl -28(%ebp)
	andl %edx, -28(%ebp)
	subl $8, %esp
	pushl -28(%ebp)
	pushl %ecx
	call equal
	addl $16, %esp
	sall $2, %eax
	orl $1, %eax
label_1760_if_end:
label_1762_if_end:
	movl %eax, %ecx
	movl %ecx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_1763_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	jmp label_1764_if_end
label_1763_else:
	movl %ecx, %eax
	sarl $2, %eax
	cmpl $0, %eax
	setne %al
	movzbl %al, %eax
label_1764_if_end:
	cmpl $0, %eax
	je label_1809_else
	movl $0, %eax
	sall $2, %eax
	orl $0, %eax
	jmp label_1810_if_end
label_1809_else:
	movl $1, %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl %edi, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %eax
	cmpl $0, %eax
	je label_1767_else
	movl %edi, %eax
	sarl $2, %eax
	sarl $2, %ecx
	cmpl %eax, %ecx
	sete %al
	movzbl %al, %eax
	sall $2, %eax
	orl $1, %eax
	jmp label_1768_if_end
label_1767_else:
	movl %edi, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_1765_else
	movl %edi, %eax
	sarl $2, %eax
	sarl $2, %ecx
	cmpl %eax, %ecx
	sete %al
	movzbl %al, %eax
	sall $2, %eax
	orl $1, %eax
	jmp label_1766_if_end
label_1765_else:
	movl $3, %edx
	notl %edx
	andl %edi, %edx
	movl $3, -28(%ebp)
	notl -28(%ebp)
	andl %ecx, -28(%ebp)
	subl $8, %esp
	pushl -28(%ebp)
	pushl %edx
	call equal
	addl $16, %esp
	sall $2, %eax
	orl $1, %eax
label_1766_if_end:
label_1768_if_end:
	movl %eax, %edx
	movl %edx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_1769_else
	subl $12, %esp
	pushl %edx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_1770_if_end
label_1769_else:
	sarl $2, %edx
	cmpl $0, %edx
	setne %al
	movzbl %al, %ecx
label_1770_if_end:
	cmpl $0, %ecx
	je label_1807_else

	jmp label_1808_if_end
label_1807_else:
	pushl $0
	pushl $0
	pushl $0
	pushl %esi
	call get_subscript
	addl $16, %esp
	movl %eax, -28(%ebp)
	subl $12, %esp
	pushl -28(%ebp)
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
	je label_1771_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_1772_if_end
label_1771_else:
	movl %ecx, %eax
	sarl $2, %eax
	cmpl $0, %eax
	setne %al
	movzbl %al, %ecx
label_1772_if_end:
	cmpl $0, %ecx
	je label_1801_else
	subl $12, %esp
	pushl -28(%ebp)
	call create_object
	addl $16, %esp
	movl %eax, %esi
	orl $3, %esi
	subl $8, %esp
	pushl $str_2069
	pushl -28(%ebp)
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
	je label_1773_else
	subl $12, %esp
	pushl %edx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_1774_if_end
label_1773_else:
	sarl $2, %edx
	cmpl $0, %edx
	setne %al
	movzbl %al, %ecx
label_1774_if_end:
	cmpl $0, %ecx
	je label_1779_else
	subl $8, %esp
	pushl $str_2070
	pushl -28(%ebp)
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
	movl %eax, -16(%ebp)
	subl $12, %esp
	pushl -28(%ebp)
	call get_free_vars
	addl $16, %esp
	movl %eax, -28(%ebp)
	movl $-1, %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl %edi, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_1777_else
	sarl $2, %edi
	sarl $2, %ecx
	addl %ecx, %edi
	sall $2, %edi
	orl $0, %edi
	movl %edi, %ecx
	jmp label_1778_if_end
label_1777_else:
	movl %edi, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_1775_else
	sarl $2, %edi
	sarl $2, %ecx
	addl %ecx, %edi
	movl %edi, %ecx
	sall $2, %ecx
	orl $0, %ecx
	jmp label_1776_if_end
label_1775_else:
	movl $3, %edx
	notl %edx
	andl %edi, %edx
	movl $3, %edi
	notl %edi
	andl %ecx, %edi
	subl $8, %esp
	pushl %edi
	pushl %edx
	call add
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
label_1776_if_end:
label_1778_if_end:
	subl $16, %esp
	pushl %ebx
	pushl %ecx
	pushl %esi
	pushl -28(%ebp)
	call *-16(%ebp)
	addl $32, %esp
	jmp label_1780_if_end
label_1779_else:

label_1780_if_end:
	movl %esi, %eax
	jmp label_1802_if_end
label_1801_else:
	subl $12, %esp
	pushl -28(%ebp)
	call is_bound_method
	addl $16, %esp
	movl %eax, %ecx
	sall $2, %ecx
	orl $1, %ecx
	movl %ecx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_1781_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_1782_if_end
label_1781_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ecx
label_1782_if_end:
	cmpl $0, %ecx
	je label_1799_else
	subl $12, %esp
	pushl -28(%ebp)
	call get_function
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, -16(%ebp)
	subl $12, %esp
	pushl -16(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, %esi
	subl $12, %esp
	pushl -16(%ebp)
	call get_free_vars
	addl $16, %esp
	movl %eax, -16(%ebp)
	subl $12, %esp
	pushl -28(%ebp)
	call get_receiver
	addl $16, %esp
	movl %eax, -28(%ebp)
	orl $3, -28(%ebp)
	movl $-1, %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl %edi, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_1785_else
	sarl $2, %edi
	sarl $2, %ecx
	addl %ecx, %edi
	movl %edi, %ecx
	sall $2, %ecx
	orl $0, %ecx
	jmp label_1786_if_end
label_1785_else:
	movl %edi, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_1783_else
	sarl $2, %edi
	sarl $2, %ecx
	addl %ecx, %edi
	sall $2, %edi
	orl $0, %edi
	movl %edi, %ecx
	jmp label_1784_if_end
label_1783_else:
	movl $3, %edx
	notl %edx
	andl %edi, %edx
	movl $3, %edi
	notl %edi
	andl %ecx, %edi
	subl $8, %esp
	pushl %edi
	pushl %edx
	call add
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
label_1784_if_end:
label_1786_if_end:
	subl $16, %esp
	pushl %ebx
	pushl %ecx
	pushl -28(%ebp)
	pushl -16(%ebp)
	call *%esi
	addl $32, %esp
	jmp label_1800_if_end
label_1799_else:
	subl $12, %esp
	pushl -28(%ebp)
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
	je label_1787_else
	subl $12, %esp
	pushl %edx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_1788_if_end
label_1787_else:
	movl %edx, %eax
	sarl $2, %eax
	cmpl $0, %eax
	setne %al
	movzbl %al, %ecx
label_1788_if_end:
	cmpl $0, %ecx
	je label_1797_else
	subl $12, %esp
	pushl -28(%ebp)
	call get_function
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, %esi
	subl $12, %esp
	pushl %esi
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -16(%ebp)
	subl $12, %esp
	pushl %esi
	call get_free_vars
	addl $16, %esp
	movl %eax, -28(%ebp)
	movl $-1, %esi
	sall $2, %esi
	orl $0, %esi
	movl %edi, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_1791_else
	sarl $2, %edi
	sarl $2, %esi
	addl %esi, %edi
	sall $2, %edi
	orl $0, %edi
	movl %edi, %ecx
	jmp label_1792_if_end
label_1791_else:
	movl %edi, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_1789_else
	sarl $2, %edi
	sarl $2, %esi
	addl %esi, %edi
	movl %edi, %ecx
	sall $2, %ecx
	orl $0, %ecx
	jmp label_1790_if_end
label_1789_else:
	movl $3, %ecx
	notl %ecx
	andl %edi, %ecx
	movl $3, %edi
	notl %edi
	andl %esi, %edi
	subl $8, %esp
	pushl %edi
	pushl %ecx
	call add
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
label_1790_if_end:
label_1792_if_end:
	subl $4, %esp
	pushl %ebx
	pushl %ecx
	pushl -28(%ebp)
	call *-16(%ebp)
	addl $16, %esp
	jmp label_1798_if_end
label_1797_else:
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
	movl %eax, -28(%ebp)
	subl $12, %esp
	pushl %esi
	call get_free_vars
	addl $16, %esp
	movl %eax, %esi
	movl $-1, %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl %edi, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_1795_else
	sarl $2, %edi
	sarl $2, %ecx
	addl %ecx, %edi
	sall $2, %edi
	orl $0, %edi
	jmp label_1796_if_end
label_1795_else:
	movl %edi, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_1793_else
	sarl $2, %edi
	sarl $2, %ecx
	addl %ecx, %edi
	sall $2, %edi
	orl $0, %edi
	movl %edi, %ecx
	jmp label_1794_if_end
label_1793_else:
	movl $3, %edx
	notl %edx
	andl %edi, %edx
	movl $3, %edi
	notl %edi
	andl %ecx, %edi
	subl $8, %esp
	pushl %edi
	pushl %edx
	call add
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
label_1794_if_end:
	movl %ecx, %edi
label_1796_if_end:
	subl $4, %esp
	pushl %ebx
	pushl %edi
	pushl %esi
	call *-28(%ebp)
	addl $16, %esp
label_1798_if_end:
label_1800_if_end:
label_1802_if_end:
	movl %eax, %ecx
	movl %ebx, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %eax
	cmpl $0, %eax
	je label_1805_else
	sarl $2, %ebx
	sarl $2, %ecx
	addl %ecx, %ebx
	sall $2, %ebx
	orl $0, %ebx
	jmp label_1806_if_end
label_1805_else:
	movl %ebx, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %esi
	cmpl $0, %esi
	je label_1803_else
	sarl $2, %ebx
	movl %ecx, %eax
	sarl $2, %eax
	addl %eax, %ebx
	sall $2, %ebx
	orl $0, %ebx
	movl %ebx, %eax
	jmp label_1804_if_end
label_1803_else:
	movl $3, %esi
	notl %esi
	andl %ebx, %esi
	movl $3, %ebx
	notl %ebx
	andl %ecx, %ebx
	subl $8, %esp
	pushl %ebx
	pushl %esi
	call add
	addl $16, %esp
	orl $3, %eax
label_1804_if_end:
	movl %eax, %ebx
label_1806_if_end:
label_1808_if_end:
	movl %ebx, %eax
label_1810_if_end:
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


lambda_198:
	pushl %ebp
	movl %esp, %ebp
	subl $56, %esp
	pushl %ebx
	pushl %edx
	pushl %esi
	pushl %edi
	movl 8(%ebp), %edx
	movl 12(%ebp), %edi
	movl 16(%ebp), %ebx
	movl %ebx, -40(%ebp)
	movl 20(%ebp), %ebx
	movl 24(%ebp), %esi
	movl $0, %ecx
	sall $2, %ecx
	orl $0, %ecx
	pushl $0
	pushl $0
	pushl %ecx
	pushl %edx
	call get_subscript
	addl $16, %esp
	movl %eax, -20(%ebp)
	movl %ebx, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %eax
	cmpl $0, %eax
	je label_1813_else
	movl %ebx, %eax
	sarl $2, %eax
	movl -40(%ebp), %ecx
	sarl $2, %ecx
	cmpl %eax, %ecx
	sete %al
	movzbl %al, %eax
	sall $2, %eax
	orl $1, %eax
	jmp label_1814_if_end
label_1813_else:
	movl %ebx, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_1811_else
	movl %ebx, %eax
	sarl $2, %eax
	movl -40(%ebp), %ecx
	sarl $2, %ecx
	cmpl %eax, %ecx
	sete %al
	movzbl %al, %eax
	sall $2, %eax
	orl $1, %eax
	jmp label_1812_if_end
label_1811_else:
	movl $3, %ecx
	notl %ecx
	andl %ebx, %ecx
	movl $3, %edx
	notl %edx
	andl -40(%ebp), %edx
	subl $8, %esp
	pushl %edx
	pushl %ecx
	call equal
	addl $16, %esp
	sall $2, %eax
	orl $1, %eax
label_1812_if_end:
label_1814_if_end:
	movl %eax, %edx
	movl %edx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_1815_else
	subl $12, %esp
	pushl %edx
	call is_true
	addl $16, %esp
	jmp label_1816_if_end
label_1815_else:
	movl %edx, %eax
	sarl $2, %eax
	cmpl $0, %eax
	setne %al
	movzbl %al, %eax
label_1816_if_end:
	cmpl $0, %eax
	je label_1873_else
	movl $1, %eax
	sall $2, %eax
	orl $1, %eax
	jmp label_1874_if_end
label_1873_else:
	movl %esi, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %eax
	cmpl $0, %eax
	je label_1819_else
	movl %esi, %ecx
	sarl $2, %ecx
	movl %edi, %eax
	sarl $2, %eax
	cmpl %ecx, %eax
	sete %al
	movzbl %al, %eax
	sall $2, %eax
	orl $1, %eax
	jmp label_1820_if_end
label_1819_else:
	movl %esi, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_1817_else
	movl %esi, %ecx
	sarl $2, %ecx
	movl %edi, %eax
	sarl $2, %eax
	cmpl %ecx, %eax
	sete %al
	movzbl %al, %eax
	sall $2, %eax
	orl $1, %eax
	jmp label_1818_if_end
label_1817_else:
	movl $3, %ecx
	notl %ecx
	andl %esi, %ecx
	movl $3, %edx
	notl %edx
	andl %edi, %edx
	subl $8, %esp
	pushl %edx
	pushl %ecx
	call equal
	addl $16, %esp
	sall $2, %eax
	orl $1, %eax
label_1818_if_end:
label_1820_if_end:
	movl %eax, %edx
	movl %edx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_1821_else
	subl $12, %esp
	pushl %edx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_1822_if_end
label_1821_else:
	sarl $2, %edx
	cmpl $0, %edx
	setne %al
	movzbl %al, %ecx
label_1822_if_end:
	cmpl $0, %ecx
	je label_1871_else
	movl $0, %eax
	sall $2, %eax
	orl $1, %eax
	jmp label_1872_if_end
label_1871_else:
	pushl $0
	pushl $0
	pushl $0
	pushl -20(%ebp)
	call get_subscript
	addl $16, %esp
	movl %eax, -16(%ebp)
	subl $12, %esp
	pushl -16(%ebp)
	call is_class
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
	je label_1823_else
	subl $12, %esp
	pushl %edx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_1824_if_end
label_1823_else:
	sarl $2, %edx
	cmpl $0, %edx
	setne %al
	movzbl %al, %ecx
label_1824_if_end:
	cmpl $0, %ecx
	je label_1869_else
	subl $12, %esp
	pushl -16(%ebp)
	call create_object
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, -20(%ebp)
	subl $8, %esp
	pushl $str_2071
	pushl -16(%ebp)
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
	je label_1825_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_1826_if_end
label_1825_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ecx
label_1826_if_end:
	cmpl $0, %ecx
	je label_1835_else
	subl $8, %esp
	pushl $str_2072
	pushl -16(%ebp)
	call get_attr
	addl $16, %esp
	subl $12, %esp
	pushl %eax
	call get_function
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, -16(%ebp)
	subl $12, %esp
	pushl -16(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -28(%ebp)
	subl $12, %esp
	pushl -16(%ebp)
	call get_free_vars
	addl $16, %esp
	movl %eax, -16(%ebp)
	movl $1, %edx
	sall $2, %edx
	orl $0, %edx
	movl %ebx, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %eax
	cmpl $0, %eax
	je label_1829_else
	sarl $2, %ebx
	sarl $2, %edx
	addl %edx, %ebx
	sall $2, %ebx
	orl $0, %ebx
	movl %ebx, -24(%ebp)
	jmp label_1830_if_end
label_1829_else:
	movl %ebx, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_1827_else
	sarl $2, %ebx
	sarl $2, %edx
	addl %edx, %ebx
	sall $2, %ebx
	orl $0, %ebx
	movl %ebx, %eax
	jmp label_1828_if_end
label_1827_else:
	movl $3, %ecx
	notl %ecx
	andl %ebx, %ecx
	movl $3, %ebx
	notl %ebx
	andl %edx, %ebx
	subl $8, %esp
	pushl %ebx
	pushl %ecx
	call add
	addl $16, %esp
	orl $3, %eax
label_1828_if_end:
	movl %eax, -24(%ebp)
label_1830_if_end:
	movl $1, %eax
	sall $2, %eax
	orl $0, %eax
	movl %eax, %ecx
	movl %esi, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %ebx
	cmpl $0, %ebx
	je label_1833_else
	sarl $2, %esi
	sarl $2, %ecx
	addl %ecx, %esi
	movl %esi, %ebx
	sall $2, %ebx
	orl $0, %ebx
	jmp label_1834_if_end
label_1833_else:
	movl %esi, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %ebx
	cmpl $0, %ebx
	je label_1831_else
	sarl $2, %esi
	sarl $2, %ecx
	addl %ecx, %esi
	movl %esi, %ebx
	sall $2, %ebx
	orl $0, %ebx
	jmp label_1832_if_end
label_1831_else:
	movl $3, %ebx
	notl %ebx
	andl %esi, %ebx
	movl $3, %esi
	notl %esi
	andl %ecx, %esi
	subl $8, %esp
	pushl %esi
	pushl %ebx
	call add
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
label_1832_if_end:
label_1834_if_end:
	subl $8, %esp
	pushl %ebx
	pushl -24(%ebp)
	pushl -40(%ebp)
	pushl %edi
	pushl -20(%ebp)
	pushl -16(%ebp)
	call *-28(%ebp)
	addl $32, %esp
	movl -20(%ebp), %eax
	jmp label_1836_if_end
label_1835_else:
	movl -20(%ebp), %eax
label_1836_if_end:
	jmp label_1870_if_end
label_1869_else:
	subl $12, %esp
	pushl -16(%ebp)
	call is_bound_method
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
	je label_1837_else
	subl $12, %esp
	pushl %edx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_1838_if_end
label_1837_else:
	sarl $2, %edx
	cmpl $0, %edx
	setne %al
	movzbl %al, %ecx
label_1838_if_end:
	cmpl $0, %ecx
	je label_1867_else
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
	movl %eax, -28(%ebp)
	subl $12, %esp
	pushl -20(%ebp)
	call get_free_vars
	addl $16, %esp
	movl %eax, -20(%ebp)
	subl $12, %esp
	pushl -16(%ebp)
	call get_receiver
	addl $16, %esp
	movl %eax, -16(%ebp)
	orl $3, -16(%ebp)
	movl $1, %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl %ebx, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %eax
	cmpl $0, %eax
	je label_1841_else
	sarl $2, %ebx
	sarl $2, %ecx
	addl %ecx, %ebx
	sall $2, %ebx
	orl $0, %ebx
	movl %ebx, -24(%ebp)
	jmp label_1842_if_end
label_1841_else:
	movl %ebx, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_1839_else
	sarl $2, %ebx
	sarl $2, %ecx
	addl %ecx, %ebx
	movl %ebx, %eax
	sall $2, %eax
	orl $0, %eax
	jmp label_1840_if_end
label_1839_else:
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
	orl $3, %eax
label_1840_if_end:
	movl %eax, -24(%ebp)
label_1842_if_end:
	movl $1, %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl %esi, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %ebx
	cmpl $0, %ebx
	je label_1845_else
	sarl $2, %esi
	sarl $2, %ecx
	addl %ecx, %esi
	movl %esi, %ebx
	sall $2, %ebx
	orl $0, %ebx
	jmp label_1846_if_end
label_1845_else:
	movl %esi, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %ebx
	cmpl $0, %ebx
	je label_1843_else
	sarl $2, %esi
	sarl $2, %ecx
	addl %ecx, %esi
	movl %esi, %ebx
	sall $2, %ebx
	orl $0, %ebx
	jmp label_1844_if_end
label_1843_else:
	movl $3, %ebx
	notl %ebx
	andl %esi, %ebx
	movl $3, %esi
	notl %esi
	andl %ecx, %esi
	subl $8, %esp
	pushl %esi
	pushl %ebx
	call add
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
label_1844_if_end:
label_1846_if_end:
	subl $8, %esp
	pushl %ebx
	pushl -24(%ebp)
	pushl -40(%ebp)
	pushl %edi
	pushl -16(%ebp)
	pushl -20(%ebp)
	call *-28(%ebp)
	addl $32, %esp
	jmp label_1868_if_end
label_1867_else:
	subl $12, %esp
	pushl -16(%ebp)
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
	je label_1847_else
	subl $12, %esp
	pushl %edx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_1848_if_end
label_1847_else:
	sarl $2, %edx
	cmpl $0, %edx
	setne %al
	movzbl %al, %ecx
label_1848_if_end:
	cmpl $0, %ecx
	je label_1865_else
	subl $12, %esp
	pushl -16(%ebp)
	call get_function
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, -16(%ebp)
	subl $12, %esp
	pushl -16(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -20(%ebp)
	subl $12, %esp
	pushl -16(%ebp)
	call get_free_vars
	addl $16, %esp
	movl %eax, -16(%ebp)
	movl $1, %edx
	sall $2, %edx
	orl $0, %edx
	movl %ebx, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %eax
	cmpl $0, %eax
	je label_1851_else
	sarl $2, %ebx
	sarl $2, %edx
	addl %edx, %ebx
	sall $2, %ebx
	orl $0, %ebx
	movl %ebx, -28(%ebp)
	jmp label_1852_if_end
label_1851_else:
	movl %ebx, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_1849_else
	sarl $2, %ebx
	sarl $2, %edx
	addl %edx, %ebx
	sall $2, %ebx
	orl $0, %ebx
	movl %ebx, %eax
	jmp label_1850_if_end
label_1849_else:
	movl $3, %ecx
	notl %ecx
	andl %ebx, %ecx
	movl $3, %ebx
	notl %ebx
	andl %edx, %ebx
	subl $8, %esp
	pushl %ebx
	pushl %ecx
	call add
	addl $16, %esp
	orl $3, %eax
label_1850_if_end:
	movl %eax, -28(%ebp)
label_1852_if_end:
	movl $1, %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl %esi, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %ebx
	cmpl $0, %ebx
	je label_1855_else
	sarl $2, %esi
	sarl $2, %ecx
	addl %ecx, %esi
	movl %esi, %ebx
	sall $2, %ebx
	orl $0, %ebx
	jmp label_1856_if_end
label_1855_else:
	movl %esi, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %ebx
	cmpl $0, %ebx
	je label_1853_else
	sarl $2, %esi
	sarl $2, %ecx
	addl %ecx, %esi
	sall $2, %esi
	orl $0, %esi
	movl %esi, %ebx
	jmp label_1854_if_end
label_1853_else:
	movl $3, %ebx
	notl %ebx
	andl %esi, %ebx
	movl $3, %esi
	notl %esi
	andl %ecx, %esi
	subl $8, %esp
	pushl %esi
	pushl %ebx
	call add
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
label_1854_if_end:
label_1856_if_end:
	subl $12, %esp
	pushl %ebx
	pushl -28(%ebp)
	pushl -40(%ebp)
	pushl %edi
	pushl -16(%ebp)
	call *-20(%ebp)
	addl $32, %esp
	jmp label_1866_if_end
label_1865_else:
	pushl $0
	pushl $0
	pushl $0
	pushl -20(%ebp)
	call get_subscript
	addl $16, %esp
	movl %eax, -20(%ebp)
	subl $12, %esp
	pushl -20(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -16(%ebp)
	subl $12, %esp
	pushl -20(%ebp)
	call get_free_vars
	addl $16, %esp
	movl %eax, -20(%ebp)
	movl $1, %edx
	sall $2, %edx
	orl $0, %edx
	movl %ebx, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %eax
	cmpl $0, %eax
	je label_1859_else
	sarl $2, %ebx
	sarl $2, %edx
	addl %edx, %ebx
	sall $2, %ebx
	orl $0, %ebx
	movl %ebx, -28(%ebp)
	jmp label_1860_if_end
label_1859_else:
	movl %ebx, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_1857_else
	sarl $2, %ebx
	sarl $2, %edx
	addl %edx, %ebx
	sall $2, %ebx
	orl $0, %ebx
	movl %ebx, %eax
	jmp label_1858_if_end
label_1857_else:
	movl $3, %ecx
	notl %ecx
	andl %ebx, %ecx
	movl $3, %ebx
	notl %ebx
	andl %edx, %ebx
	subl $8, %esp
	pushl %ebx
	pushl %ecx
	call add
	addl $16, %esp
	orl $3, %eax
label_1858_if_end:
	movl %eax, -28(%ebp)
label_1860_if_end:
	movl $1, %ebx
	sall $2, %ebx
	orl $0, %ebx
	movl %esi, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_1863_else
	sarl $2, %esi
	sarl $2, %ebx
	addl %ebx, %esi
	movl %esi, %ebx
	sall $2, %ebx
	orl $0, %ebx
	jmp label_1864_if_end
label_1863_else:
	movl %esi, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_1861_else
	sarl $2, %esi
	sarl $2, %ebx
	addl %ebx, %esi
	sall $2, %esi
	orl $0, %esi
	movl %esi, %ebx
	jmp label_1862_if_end
label_1861_else:
	movl $3, %ecx
	notl %ecx
	andl %esi, %ecx
	movl $3, %esi
	notl %esi
	andl %ebx, %esi
	subl $8, %esp
	pushl %esi
	pushl %ecx
	call add
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
label_1862_if_end:
label_1864_if_end:
	subl $12, %esp
	pushl %ebx
	pushl -28(%ebp)
	pushl -40(%ebp)
	pushl %edi
	pushl -20(%ebp)
	call *-16(%ebp)
	addl $32, %esp
label_1866_if_end:
label_1868_if_end:
label_1870_if_end:
label_1872_if_end:
label_1874_if_end:
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


lambda_208:
	pushl %ebp
	movl %esp, %ebp
	subl $56, %esp
	pushl %ebx
	pushl %edx
	pushl %esi
	pushl %edi
	movl 8(%ebp), %ecx
	movl 12(%ebp), %edi
	movl 16(%ebp), %ebx
	movl %ebx, -20(%ebp)
	movl $0, %ebx
	sall $2, %ebx
	orl $0, %ebx
	pushl $0
	pushl $0
	pushl %ebx
	pushl %ecx
	call get_subscript
	addl $16, %esp
	movl %eax, %esi
	pushl $0
	pushl $0
	pushl $0
	pushl %esi
	call get_subscript
	addl $16, %esp
	movl %eax, -28(%ebp)
	subl $12, %esp
	pushl -28(%ebp)
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
	je label_1875_else
	subl $12, %esp
	pushl %ebx
	call is_true
	addl $16, %esp
	movl %eax, %ebx
	jmp label_1876_if_end
label_1875_else:
	sarl $2, %ebx
	cmpl $0, %ebx
	setne %al
	movzbl %al, %ebx
label_1876_if_end:
	cmpl $0, %ebx
	je label_1905_else
	subl $12, %esp
	pushl -28(%ebp)
	call create_object
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
	subl $8, %esp
	pushl $str_2073
	pushl -28(%ebp)
	call has_attr
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
	je label_1877_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_1878_if_end
label_1877_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ecx
label_1878_if_end:
	cmpl $0, %ecx
	je label_1883_else
	subl $8, %esp
	pushl $str_2074
	pushl -28(%ebp)
	call get_attr
	addl $16, %esp
	subl $12, %esp
	pushl %eax
	call get_function
	addl $16, %esp
	movl %eax, %esi
	orl $3, %esi
	subl $12, %esp
	pushl %esi
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -28(%ebp)
	subl $12, %esp
	pushl %esi
	call get_free_vars
	addl $16, %esp
	movl %eax, -16(%ebp)
	movl $1, %esi
	sall $2, %esi
	orl $0, %esi
	movl %edi, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_1881_else
	movl %edi, %ecx
	sarl $2, %ecx
	sarl $2, %esi
	addl %esi, %ecx
	sall $2, %ecx
	orl $0, %ecx
	jmp label_1882_if_end
label_1881_else:
	movl %edi, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_1879_else
	movl %edi, %ecx
	sarl $2, %ecx
	sarl $2, %esi
	addl %esi, %ecx
	sall $2, %ecx
	orl $0, %ecx
	jmp label_1880_if_end
label_1879_else:
	movl $3, %edx
	notl %edx
	andl %edi, %edx
	movl $3, %ecx
	notl %ecx
	andl %esi, %ecx
	subl $8, %esp
	pushl %ecx
	pushl %edx
	call add
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
label_1880_if_end:
label_1882_if_end:
	subl $8, %esp
	pushl -20(%ebp)
	pushl %ecx
	pushl -20(%ebp)
	pushl %edi
	pushl %ebx
	pushl -16(%ebp)
	call *-28(%ebp)
	addl $32, %esp
	movl %ebx, %eax
	jmp label_1884_if_end
label_1883_else:
	movl %ebx, %eax
label_1884_if_end:
	jmp label_1906_if_end
label_1905_else:
	subl $12, %esp
	pushl -28(%ebp)
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
	je label_1885_else
	subl $12, %esp
	pushl %ebx
	call is_true
	addl $16, %esp
	movl %eax, %ebx
	jmp label_1886_if_end
label_1885_else:
	sarl $2, %ebx
	cmpl $0, %ebx
	setne %al
	movzbl %al, %ebx
label_1886_if_end:
	cmpl $0, %ebx
	je label_1903_else
	subl $12, %esp
	pushl -28(%ebp)
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
	movl %eax, -24(%ebp)
	subl $12, %esp
	pushl -28(%ebp)
	call get_receiver
	addl $16, %esp
	movl %eax, -28(%ebp)
	orl $3, -28(%ebp)
	movl $1, %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl %edi, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %ebx
	cmpl $0, %ebx
	je label_1889_else
	movl %edi, %ebx
	sarl $2, %ebx
	sarl $2, %ecx
	addl %ecx, %ebx
	sall $2, %ebx
	orl $0, %ebx
	jmp label_1890_if_end
label_1889_else:
	movl %edi, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %ebx
	cmpl $0, %ebx
	je label_1887_else
	movl %edi, %ebx
	sarl $2, %ebx
	sarl $2, %ecx
	addl %ecx, %ebx
	sall $2, %ebx
	orl $0, %ebx
	jmp label_1888_if_end
label_1887_else:
	movl $3, -16(%ebp)
	notl -16(%ebp)
	andl %edi, -16(%ebp)
	movl $3, %ebx
	notl %ebx
	andl %ecx, %ebx
	subl $8, %esp
	pushl %ebx
	pushl -16(%ebp)
	call add
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
label_1888_if_end:
label_1890_if_end:
	subl $8, %esp
	pushl -20(%ebp)
	pushl %ebx
	pushl -20(%ebp)
	pushl %edi
	pushl -28(%ebp)
	pushl -24(%ebp)
	call *%esi
	addl $32, %esp
	jmp label_1904_if_end
label_1903_else:
	subl $12, %esp
	pushl -28(%ebp)
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
	je label_1891_else
	subl $12, %esp
	pushl %ebx
	call is_true
	addl $16, %esp
	movl %eax, %ebx
	jmp label_1892_if_end
label_1891_else:
	sarl $2, %ebx
	cmpl $0, %ebx
	setne %al
	movzbl %al, %ebx
label_1892_if_end:
	cmpl $0, %ebx
	je label_1901_else
	subl $12, %esp
	pushl -28(%ebp)
	call get_function
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
	movl %ebx, %esi
	subl $12, %esp
	pushl %esi
	call get_fun_ptr
	addl $16, %esp
	movl %eax, %ebx
	subl $12, %esp
	pushl %esi
	call get_free_vars
	addl $16, %esp
	movl %eax, %esi
	movl $1, %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl %edi, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_1895_else
	movl %edi, %edx
	sarl $2, %edx
	sarl $2, %ecx
	addl %ecx, %edx
	movl %edx, %ecx
	sall $2, %ecx
	orl $0, %ecx
	jmp label_1896_if_end
label_1895_else:
	movl %edi, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_1893_else
	movl %edi, %edx
	sarl $2, %edx
	sarl $2, %ecx
	addl %ecx, %edx
	movl %edx, %ecx
	sall $2, %ecx
	orl $0, %ecx
	jmp label_1894_if_end
label_1893_else:
	movl $3, %edx
	notl %edx
	andl %edi, %edx
	movl $3, -28(%ebp)
	notl -28(%ebp)
	andl %ecx, -28(%ebp)
	subl $8, %esp
	pushl -28(%ebp)
	pushl %edx
	call add
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
label_1894_if_end:
label_1896_if_end:
	subl $12, %esp
	pushl -20(%ebp)
	pushl %ecx
	pushl -20(%ebp)
	pushl %edi
	pushl %esi
	call *%ebx
	addl $32, %esp
	jmp label_1902_if_end
label_1901_else:
	pushl $0
	pushl $0
	pushl $0
	pushl %esi
	call get_subscript
	addl $16, %esp
	movl %eax, %ebx
	subl $12, %esp
	pushl %ebx
	call get_fun_ptr
	addl $16, %esp
	movl %eax, %esi
	subl $12, %esp
	pushl %ebx
	call get_free_vars
	addl $16, %esp
	movl %eax, -28(%ebp)
	movl $1, %ebx
	sall $2, %ebx
	orl $0, %ebx
	movl %edi, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_1899_else
	movl %edi, %ecx
	sarl $2, %ecx
	sarl $2, %ebx
	addl %ebx, %ecx
	movl %ecx, %ebx
	sall $2, %ebx
	orl $0, %ebx
	jmp label_1900_if_end
label_1899_else:
	movl %edi, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_1897_else
	movl %edi, %ecx
	sarl $2, %ecx
	sarl $2, %ebx
	addl %ebx, %ecx
	movl %ecx, %ebx
	sall $2, %ebx
	orl $0, %ebx
	jmp label_1898_if_end
label_1897_else:
	movl $3, %edx
	notl %edx
	andl %edi, %edx
	movl $3, %ecx
	notl %ecx
	andl %ebx, %ecx
	subl $8, %esp
	pushl %ecx
	pushl %edx
	call add
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
label_1898_if_end:
label_1900_if_end:
	subl $12, %esp
	pushl -20(%ebp)
	pushl %ebx
	pushl -20(%ebp)
	pushl %edi
	pushl -28(%ebp)
	call *%esi
	addl $32, %esp
label_1902_if_end:
label_1904_if_end:
label_1906_if_end:
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


lambda_222:
	pushl %ebp
	movl %esp, %ebp
	subl $56, %esp
	pushl %ebx
	pushl %edx
	pushl %esi
	pushl %edi
	movl 8(%ebp), %ebx
	movl 12(%ebp), %ecx
	movl %ecx, -28(%ebp)
	movl 16(%ebp), %ecx
	movl %ecx, -32(%ebp)
	movl $0, %ecx
	sall $2, %ecx
	orl $0, %ecx
	pushl $0
	pushl $0
	pushl %ecx
	pushl %ebx
	call get_subscript
	addl $16, %esp
	movl %eax, %esi
	movl $1, %ecx
	sall $2, %ecx
	orl $0, %ecx
	pushl $0
	pushl $0
	pushl %ecx
	pushl %ebx
	call get_subscript
	addl $16, %esp
	movl %eax, %edi
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
	movl %eax, %ecx
	sall $2, %ecx
	orl $1, %ecx
	movl %ecx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_1907_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_1908_if_end
label_1907_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ecx
label_1908_if_end:
	cmpl $0, %ecx
	je label_1921_else
	subl $12, %esp
	pushl %ebx
	call create_object
	addl $16, %esp
	movl %eax, %esi
	orl $3, %esi
	subl $8, %esp
	pushl $str_2075
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
	movzbl %al, %edx
	cmpl $0, %edx
	je label_1909_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_1910_if_end
label_1909_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ecx
label_1910_if_end:
	cmpl $0, %ecx
	je label_1911_else
	subl $8, %esp
	pushl $str_2076
	pushl %ebx
	call get_attr
	addl $16, %esp
	subl $12, %esp
	pushl %eax
	call get_function
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
	movl %ebx, -20(%ebp)
	subl $12, %esp
	pushl -20(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, %ebx
	subl $12, %esp
	pushl -20(%ebp)
	call get_free_vars
	addl $16, %esp
	subl $16, %esp
	pushl -32(%ebp)
	pushl -28(%ebp)
	pushl %esi
	pushl %eax
	call *%ebx
	addl $32, %esp
	movl %esi, %ebx
	jmp label_1912_if_end
label_1911_else:
	movl %esi, %ebx
label_1912_if_end:
	jmp label_1922_if_end
label_1921_else:
	subl $12, %esp
	pushl %ebx
	call is_bound_method
	addl $16, %esp
	movl %eax, %ecx
	sall $2, %ecx
	orl $1, %ecx
	movl %ecx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_1913_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_1914_if_end
label_1913_else:
	movl %ecx, %eax
	sarl $2, %eax
	cmpl $0, %eax
	setne %al
	movzbl %al, %ecx
label_1914_if_end:
	cmpl $0, %ecx
	je label_1919_else
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
	movl %eax, -20(%ebp)
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
	subl $16, %esp
	pushl -32(%ebp)
	pushl -28(%ebp)
	pushl %ebx
	pushl %esi
	call *-20(%ebp)
	addl $32, %esp
	jmp label_1920_if_end
label_1919_else:
	subl $12, %esp
	pushl %ebx
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
	je label_1915_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_1916_if_end
label_1915_else:
	movl %ecx, %eax
	sarl $2, %eax
	cmpl $0, %eax
	setne %al
	movzbl %al, %ecx
label_1916_if_end:
	cmpl $0, %ecx
	je label_1917_else
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
	movl %eax, %ebx
	subl $12, %esp
	pushl %esi
	call get_free_vars
	addl $16, %esp
	subl $4, %esp
	pushl -32(%ebp)
	pushl -28(%ebp)
	pushl %eax
	call *%ebx
	addl $16, %esp
	jmp label_1918_if_end
label_1917_else:
	pushl $0
	pushl $0
	pushl $0
	pushl %esi
	call get_subscript
	addl $16, %esp
	movl %eax, %ebx
	subl $12, %esp
	pushl %ebx
	call get_fun_ptr
	addl $16, %esp
	movl %eax, %esi
	subl $12, %esp
	pushl %ebx
	call get_free_vars
	addl $16, %esp
	subl $4, %esp
	pushl -32(%ebp)
	pushl -28(%ebp)
	pushl %eax
	call *%esi
	addl $16, %esp
label_1918_if_end:
label_1920_if_end:
	movl %eax, %ebx
label_1922_if_end:
	movl %ebx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_1923_else
	subl $12, %esp
	pushl %ebx
	call is_true
	addl $16, %esp
	movl %eax, %ebx
	jmp label_1924_if_end
label_1923_else:
	sarl $2, %ebx
	cmpl $0, %ebx
	setne %al
	movzbl %al, %ebx
label_1924_if_end:
	cmpl $0, %ebx
	je label_1961_else
	movl $0, %eax
	sall $2, %eax
	orl $0, %eax
	jmp label_1962_if_end
label_1961_else:
	movl $1, %esi
	sall $2, %esi
	orl $0, %esi
	pushl $0
	pushl $0
	pushl $0
	pushl %edi
	call get_subscript
	addl $16, %esp
	movl %eax, %ebx
	subl $12, %esp
	pushl %ebx
	call is_class
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
	je label_1925_else
	subl $12, %esp
	pushl %edx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_1926_if_end
label_1925_else:
	sarl $2, %edx
	cmpl $0, %edx
	setne %al
	movzbl %al, %ecx
label_1926_if_end:
	cmpl $0, %ecx
	je label_1955_else
	subl $12, %esp
	pushl %ebx
	call create_object
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, -20(%ebp)
	subl $8, %esp
	pushl $str_2077
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
	je label_1927_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_1928_if_end
label_1927_else:
	movl %ecx, %eax
	sarl $2, %eax
	cmpl $0, %eax
	setne %al
	movzbl %al, %ecx
label_1928_if_end:
	cmpl $0, %ecx
	je label_1933_else
	subl $8, %esp
	pushl $str_2078
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
	movl %eax, -24(%ebp)
	subl $12, %esp
	pushl %ebx
	call get_free_vars
	addl $16, %esp
	movl %eax, -16(%ebp)
	movl -32(%ebp), %eax
	sarl $2, %eax
	negl %eax
	sall $2, %eax
	orl $0, %eax
	movl %eax, %ebx
	movl -28(%ebp), %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_1931_else
	movl -28(%ebp), %ecx
	sarl $2, %ecx
	sarl $2, %ebx
	addl %ebx, %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl %ecx, %ebx
	jmp label_1932_if_end
label_1931_else:
	movl -28(%ebp), %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_1929_else
	movl -28(%ebp), %ecx
	sarl $2, %ecx
	sarl $2, %ebx
	addl %ebx, %ecx
	movl %ecx, %ebx
	sall $2, %ebx
	orl $0, %ebx
	jmp label_1930_if_end
label_1929_else:
	movl $3, %ecx
	notl %ecx
	andl -28(%ebp), %ecx
	movl $3, %edi
	notl %edi
	andl %ebx, %edi
	subl $8, %esp
	pushl %edi
	pushl %ecx
	call add
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
label_1930_if_end:
label_1932_if_end:
	subl $16, %esp
	pushl -32(%ebp)
	pushl %ebx
	pushl -20(%ebp)
	pushl -16(%ebp)
	call *-24(%ebp)
	addl $32, %esp
	movl -20(%ebp), %eax
	jmp label_1934_if_end
label_1933_else:
	movl -20(%ebp), %eax
label_1934_if_end:
	jmp label_1956_if_end
label_1955_else:
	subl $12, %esp
	pushl %ebx
	call is_bound_method
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
	je label_1935_else
	subl $12, %esp
	pushl %edx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_1936_if_end
label_1935_else:
	sarl $2, %edx
	cmpl $0, %edx
	setne %al
	movzbl %al, %ecx
label_1936_if_end:
	cmpl $0, %ecx
	je label_1953_else
	subl $12, %esp
	pushl %ebx
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
	movl %eax, -16(%ebp)
	subl $12, %esp
	pushl %ebx
	call get_receiver
	addl $16, %esp
	movl %eax, %edi
	orl $3, %edi
	movl -32(%ebp), %ebx
	sarl $2, %ebx
	negl %ebx
	sall $2, %ebx
	orl $0, %ebx
	movl -28(%ebp), %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_1939_else
	movl -28(%ebp), %ecx
	sarl $2, %ecx
	sarl $2, %ebx
	addl %ebx, %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl %ecx, %ebx
	jmp label_1940_if_end
label_1939_else:
	movl -28(%ebp), %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_1937_else
	movl -28(%ebp), %ecx
	sarl $2, %ecx
	sarl $2, %ebx
	addl %ebx, %ecx
	movl %ecx, %ebx
	sall $2, %ebx
	orl $0, %ebx
	jmp label_1938_if_end
label_1937_else:
	movl $3, %ecx
	notl %ecx
	andl -28(%ebp), %ecx
	movl $3, %edx
	notl %edx
	andl %ebx, %edx
	subl $8, %esp
	pushl %edx
	pushl %ecx
	call add
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
label_1938_if_end:
label_1940_if_end:
	subl $16, %esp
	pushl -32(%ebp)
	pushl %ebx
	pushl %edi
	pushl -16(%ebp)
	call *-20(%ebp)
	addl $32, %esp
	jmp label_1954_if_end
label_1953_else:
	subl $12, %esp
	pushl %ebx
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
	je label_1941_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_1942_if_end
label_1941_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ecx
label_1942_if_end:
	cmpl $0, %ecx
	je label_1951_else
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
	movl %eax, %edi
	subl $12, %esp
	pushl %ebx
	call get_free_vars
	addl $16, %esp
	movl %eax, -20(%ebp)
	movl -32(%ebp), %eax
	sarl $2, %eax
	negl %eax
	movl %eax, %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl -28(%ebp), %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %ebx
	cmpl $0, %ebx
	je label_1945_else
	movl -28(%ebp), %ebx
	sarl $2, %ebx
	sarl $2, %ecx
	addl %ecx, %ebx
	sall $2, %ebx
	orl $0, %ebx
	jmp label_1946_if_end
label_1945_else:
	movl -28(%ebp), %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %ebx
	cmpl $0, %ebx
	je label_1943_else
	movl -28(%ebp), %ebx
	sarl $2, %ebx
	sarl $2, %ecx
	addl %ecx, %ebx
	sall $2, %ebx
	orl $0, %ebx
	jmp label_1944_if_end
label_1943_else:
	movl $3, %ebx
	notl %ebx
	andl -28(%ebp), %ebx
	movl $3, %edx
	notl %edx
	andl %ecx, %edx
	subl $8, %esp
	pushl %edx
	pushl %ebx
	call add
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
label_1944_if_end:
label_1946_if_end:
	subl $4, %esp
	pushl -32(%ebp)
	pushl %ebx
	pushl -20(%ebp)
	call *%edi
	addl $16, %esp
	jmp label_1952_if_end
label_1951_else:
	pushl $0
	pushl $0
	pushl $0
	pushl %edi
	call get_subscript
	addl $16, %esp
	movl %eax, %ebx
	subl $12, %esp
	pushl %ebx
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -20(%ebp)
	subl $12, %esp
	pushl %ebx
	call get_free_vars
	addl $16, %esp
	movl %eax, %edi
	movl -32(%ebp), %eax
	sarl $2, %eax
	negl %eax
	movl %eax, %edx
	sall $2, %edx
	orl $0, %edx
	movl -28(%ebp), %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %ebx
	cmpl $0, %ebx
	je label_1949_else
	movl -28(%ebp), %ebx
	sarl $2, %ebx
	sarl $2, %edx
	addl %edx, %ebx
	sall $2, %ebx
	orl $0, %ebx
	jmp label_1950_if_end
label_1949_else:
	movl -28(%ebp), %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %ebx
	cmpl $0, %ebx
	je label_1947_else
	movl -28(%ebp), %ebx
	sarl $2, %ebx
	sarl $2, %edx
	addl %edx, %ebx
	sall $2, %ebx
	orl $0, %ebx
	jmp label_1948_if_end
label_1947_else:
	movl $3, %ecx
	notl %ecx
	andl -28(%ebp), %ecx
	movl $3, %ebx
	notl %ebx
	andl %edx, %ebx
	subl $8, %esp
	pushl %ebx
	pushl %ecx
	call add
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
label_1948_if_end:
label_1950_if_end:
	subl $4, %esp
	pushl -32(%ebp)
	pushl %ebx
	pushl %edi
	call *-20(%ebp)
	addl $16, %esp
label_1952_if_end:
label_1954_if_end:
label_1956_if_end:
	movl %eax, %ebx
	movl %esi, %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %eax
	cmpl $0, %eax
	je label_1959_else
	sarl $2, %esi
	sarl $2, %ebx
	addl %ebx, %esi
	movl %esi, %eax
	sall $2, %eax
	orl $0, %eax
	jmp label_1960_if_end
label_1959_else:
	movl %esi, %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_1957_else
	sarl $2, %esi
	sarl $2, %ebx
	addl %ebx, %esi
	movl %esi, %eax
	sall $2, %eax
	orl $0, %eax
	jmp label_1958_if_end
label_1957_else:
	movl $3, %ecx
	notl %ecx
	andl %esi, %ecx
	movl $3, %esi
	notl %esi
	andl %ebx, %esi
	subl $8, %esp
	pushl %esi
	pushl %ecx
	call add
	addl $16, %esp
	orl $3, %eax
label_1958_if_end:
label_1960_if_end:
label_1962_if_end:
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


lambda_248:
	pushl %ebp
	movl %esp, %ebp
	subl $72, %esp
	pushl %ebx
	pushl %edx
	pushl %esi
	pushl %edi
	movl 8(%ebp), %esi
	movl 12(%ebp), %ebx
	movl %ebx, -52(%ebp)
	movl $0, %ebx
	sall $2, %ebx
	orl $0, %ebx
	pushl $0
	pushl $0
	pushl %ebx
	pushl %esi
	call get_subscript
	addl $16, %esp
	movl %eax, -36(%ebp)
	movl $1, %ebx
	sall $2, %ebx
	orl $0, %ebx
	pushl $0
	pushl $0
	pushl %ebx
	pushl %esi
	call get_subscript
	addl $16, %esp
	movl %eax, %ebx
	movl $2, %ecx
	sall $2, %ecx
	orl $0, %ecx
	pushl $0
	pushl $0
	pushl %ecx
	pushl %esi
	call get_subscript
	addl $16, %esp
	movl %eax, %edi
	movl $3, %ecx
	sall $2, %ecx
	orl $0, %ecx
	pushl $0
	pushl $0
	pushl %ecx
	pushl %esi
	call get_subscript
	addl $16, %esp
	movl %eax, %esi
	pushl $0
	pushl $0
	pushl $0
	pushl %edi
	call get_subscript
	addl $16, %esp
	movl %eax, -4(%ebp)
	subl $12, %esp
	pushl -4(%ebp)
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
	je label_1963_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_1964_if_end
label_1963_else:
	movl %ecx, %eax
	sarl $2, %eax
	cmpl $0, %eax
	setne %al
	movzbl %al, %ecx
label_1964_if_end:
	cmpl $0, %ecx
	je label_1993_else
	subl $12, %esp
	pushl -4(%ebp)
	call create_object
	addl $16, %esp
	movl %eax, %edi
	orl $3, %edi
	subl $8, %esp
	pushl $str_2079
	pushl -4(%ebp)
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
	je label_1965_else
	subl $12, %esp
	pushl %edx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_1966_if_end
label_1965_else:
	movl %edx, %eax
	sarl $2, %eax
	cmpl $0, %eax
	setne %al
	movzbl %al, %ecx
label_1966_if_end:
	cmpl $0, %ecx
	je label_1971_else
	subl $8, %esp
	pushl $str_2080
	pushl -4(%ebp)
	call get_attr
	addl $16, %esp
	subl $12, %esp
	pushl %eax
	call get_function
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, -4(%ebp)
	subl $12, %esp
	pushl -4(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -28(%ebp)
	subl $12, %esp
	pushl -4(%ebp)
	call get_free_vars
	addl $16, %esp
	movl %eax, -4(%ebp)
	subl $12, %esp
	pushl -36(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -44(%ebp)
	subl $12, %esp
	pushl -36(%ebp)
	call get_free_vars
	addl $16, %esp
	movl %eax, -32(%ebp)
	pushl $0
	pushl $0
	pushl $0
	pushl %ebx
	call get_subscript
	addl $16, %esp
	movl %eax, -24(%ebp)
	subl $12, %esp
	pushl -24(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -40(%ebp)
	subl $12, %esp
	pushl -24(%ebp)
	call get_free_vars
	addl $16, %esp
	movl $10, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $4, %esp
	pushl -52(%ebp)
	pushl %ecx
	pushl %eax
	call *-40(%ebp)
	addl $16, %esp
	movl %eax, %ecx
	movl %ecx, -24(%ebp)
	sarl $2, -24(%ebp)
	pushl $0
	pushl $0
	pushl $0
	pushl %esi
	call get_subscript
	addl $16, %esp
	movl %eax, %ecx
	sarl $2, %ecx
	addl %ecx, -24(%ebp)
	movl -24(%ebp), %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $8, %esp
	pushl %ecx
	pushl -32(%ebp)
	call *-44(%ebp)
	addl $16, %esp
	movl %eax, -24(%ebp)
	subl $12, %esp
	pushl -36(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -40(%ebp)
	subl $12, %esp
	pushl -36(%ebp)
	call get_free_vars
	addl $16, %esp
	movl %eax, -36(%ebp)
	pushl $0
	pushl $0
	pushl $0
	pushl %ebx
	call get_subscript
	addl $16, %esp
	movl %eax, -32(%ebp)
	subl $12, %esp
	pushl -32(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -44(%ebp)
	subl $12, %esp
	pushl -32(%ebp)
	call get_free_vars
	addl $16, %esp
	movl $10, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $4, %esp
	pushl -52(%ebp)
	pushl %ecx
	pushl %eax
	call *-44(%ebp)
	addl $16, %esp
	subl $8, %esp
	pushl %eax
	pushl -36(%ebp)
	call *-40(%ebp)
	addl $16, %esp
	sarl $2, %eax
	negl %eax
	sall $2, %eax
	orl $0, %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_1969_else
	sarl $2, -24(%ebp)
	sarl $2, %ecx
	addl %ecx, -24(%ebp)
	movl -24(%ebp), %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl %ecx, -24(%ebp)
	jmp label_1970_if_end
label_1969_else:
	movl -24(%ebp), %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_1967_else
	sarl $2, -24(%ebp)
	sarl $2, %ecx
	addl %ecx, -24(%ebp)
	movl -24(%ebp), %ecx
	sall $2, %ecx
	orl $0, %ecx
	jmp label_1968_if_end
label_1967_else:
	movl $3, %edx
	notl %edx
	andl -24(%ebp), %edx
	movl $3, -24(%ebp)
	notl -24(%ebp)
	andl %ecx, -24(%ebp)
	subl $8, %esp
	pushl -24(%ebp)
	pushl %edx
	call add
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
label_1968_if_end:
	movl %ecx, -24(%ebp)
label_1970_if_end:
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
	movl %eax, -36(%ebp)
	subl $12, %esp
	pushl %ebx
	call get_free_vars
	addl $16, %esp
	movl %eax, %ebx
	pushl $0
	pushl $0
	pushl $0
	pushl %esi
	call get_subscript
	addl $16, %esp
	movl $10, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $4, %esp
	pushl %ecx
	pushl %eax
	pushl %ebx
	call *-36(%ebp)
	addl $16, %esp
	subl $16, %esp
	pushl %eax
	pushl -24(%ebp)
	pushl %edi
	pushl -4(%ebp)
	call *-28(%ebp)
	addl $32, %esp
	movl %edi, %eax
	jmp label_1972_if_end
label_1971_else:
	movl %edi, %eax
label_1972_if_end:
	jmp label_1994_if_end
label_1993_else:
	subl $12, %esp
	pushl -4(%ebp)
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
	je label_1973_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_1974_if_end
label_1973_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ecx
label_1974_if_end:
	cmpl $0, %ecx
	je label_1991_else
	subl $12, %esp
	pushl -4(%ebp)
	call get_function
	addl $16, %esp
	movl %eax, %edi
	orl $3, %edi
	subl $12, %esp
	pushl %edi
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -28(%ebp)
	subl $12, %esp
	pushl %edi
	call get_free_vars
	addl $16, %esp
	movl %eax, %edi
	subl $12, %esp
	pushl -4(%ebp)
	call get_receiver
	addl $16, %esp
	movl %eax, -24(%ebp)
	orl $3, -24(%ebp)
	subl $12, %esp
	pushl -36(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -32(%ebp)
	subl $12, %esp
	pushl -36(%ebp)
	call get_free_vars
	addl $16, %esp
	movl %eax, -44(%ebp)
	pushl $0
	pushl $0
	pushl $0
	pushl %ebx
	call get_subscript
	addl $16, %esp
	movl %eax, -40(%ebp)
	subl $12, %esp
	pushl -40(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -4(%ebp)
	subl $12, %esp
	pushl -40(%ebp)
	call get_free_vars
	addl $16, %esp
	movl $10, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $4, %esp
	pushl -52(%ebp)
	pushl %ecx
	pushl %eax
	call *-4(%ebp)
	addl $16, %esp
	movl %eax, %ecx
	movl %ecx, -4(%ebp)
	sarl $2, -4(%ebp)
	pushl $0
	pushl $0
	pushl $0
	pushl %esi
	call get_subscript
	addl $16, %esp
	movl %eax, %ecx
	sarl $2, %ecx
	addl %ecx, -4(%ebp)
	movl -4(%ebp), %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $8, %esp
	pushl %ecx
	pushl -44(%ebp)
	call *-32(%ebp)
	addl $16, %esp
	movl %eax, -32(%ebp)
	subl $12, %esp
	pushl -36(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -4(%ebp)
	subl $12, %esp
	pushl -36(%ebp)
	call get_free_vars
	addl $16, %esp
	movl %eax, -36(%ebp)
	pushl $0
	pushl $0
	pushl $0
	pushl %ebx
	call get_subscript
	addl $16, %esp
	movl %eax, -40(%ebp)
	subl $12, %esp
	pushl -40(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -44(%ebp)
	subl $12, %esp
	pushl -40(%ebp)
	call get_free_vars
	addl $16, %esp
	movl $10, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $4, %esp
	pushl -52(%ebp)
	pushl %ecx
	pushl %eax
	call *-44(%ebp)
	addl $16, %esp
	subl $8, %esp
	pushl %eax
	pushl -36(%ebp)
	call *-4(%ebp)
	addl $16, %esp
	sarl $2, %eax
	negl %eax
	sall $2, %eax
	orl $0, %eax
	movl %eax, %edx
	movl -32(%ebp), %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_1977_else
	sarl $2, -32(%ebp)
	sarl $2, %edx
	addl %edx, -32(%ebp)
	movl -32(%ebp), %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl %ecx, -4(%ebp)
	jmp label_1978_if_end
label_1977_else:
	movl -32(%ebp), %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_1975_else
	sarl $2, -32(%ebp)
	movl %edx, %ecx
	sarl $2, %ecx
	addl %ecx, -32(%ebp)
	movl -32(%ebp), %ecx
	sall $2, %ecx
	orl $0, %ecx
	jmp label_1976_if_end
label_1975_else:
	movl $3, %ecx
	notl %ecx
	andl -32(%ebp), %ecx
	movl $3, -4(%ebp)
	notl -4(%ebp)
	andl %edx, -4(%ebp)
	subl $8, %esp
	pushl -4(%ebp)
	pushl %ecx
	call add
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
label_1976_if_end:
	movl %ecx, -4(%ebp)
label_1978_if_end:
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
	movl %eax, -36(%ebp)
	subl $12, %esp
	pushl %ebx
	call get_free_vars
	addl $16, %esp
	movl %eax, %ebx
	pushl $0
	pushl $0
	pushl $0
	pushl %esi
	call get_subscript
	addl $16, %esp
	movl $10, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $4, %esp
	pushl %ecx
	pushl %eax
	pushl %ebx
	call *-36(%ebp)
	addl $16, %esp
	subl $16, %esp
	pushl %eax
	pushl -4(%ebp)
	pushl -24(%ebp)
	pushl %edi
	call *-28(%ebp)
	addl $32, %esp
	jmp label_1992_if_end
label_1991_else:
	subl $12, %esp
	pushl -4(%ebp)
	call is_unbound_method
	addl $16, %esp
	movl %eax, %ecx
	sall $2, %ecx
	orl $1, %ecx
	movl %ecx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_1979_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_1980_if_end
label_1979_else:
	movl %ecx, %eax
	sarl $2, %eax
	cmpl $0, %eax
	setne %al
	movzbl %al, %ecx
label_1980_if_end:
	cmpl $0, %ecx
	je label_1989_else
	subl $12, %esp
	pushl -4(%ebp)
	call get_function
	addl $16, %esp
	movl %eax, %edi
	orl $3, %edi
	subl $12, %esp
	pushl %edi
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -4(%ebp)
	subl $12, %esp
	pushl %edi
	call get_free_vars
	addl $16, %esp
	movl %eax, %edi
	subl $12, %esp
	pushl -36(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -32(%ebp)
	subl $12, %esp
	pushl -36(%ebp)
	call get_free_vars
	addl $16, %esp
	movl %eax, -28(%ebp)
	pushl $0
	pushl $0
	pushl $0
	pushl %ebx
	call get_subscript
	addl $16, %esp
	movl %eax, -44(%ebp)
	subl $12, %esp
	pushl -44(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -24(%ebp)
	subl $12, %esp
	pushl -44(%ebp)
	call get_free_vars
	addl $16, %esp
	movl $10, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $4, %esp
	pushl -52(%ebp)
	pushl %ecx
	pushl %eax
	call *-24(%ebp)
	addl $16, %esp
	movl %eax, %ecx
	movl %ecx, -24(%ebp)
	sarl $2, -24(%ebp)
	pushl $0
	pushl $0
	pushl $0
	pushl %esi
	call get_subscript
	addl $16, %esp
	movl %eax, %ecx
	sarl $2, %ecx
	addl %ecx, -24(%ebp)
	movl -24(%ebp), %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $8, %esp
	pushl %ecx
	pushl -28(%ebp)
	call *-32(%ebp)
	addl $16, %esp
	movl %eax, -28(%ebp)
	subl $12, %esp
	pushl -36(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -24(%ebp)
	subl $12, %esp
	pushl -36(%ebp)
	call get_free_vars
	addl $16, %esp
	movl %eax, -32(%ebp)
	pushl $0
	pushl $0
	pushl $0
	pushl %ebx
	call get_subscript
	addl $16, %esp
	movl %eax, -44(%ebp)
	subl $12, %esp
	pushl -44(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -36(%ebp)
	subl $12, %esp
	pushl -44(%ebp)
	call get_free_vars
	addl $16, %esp
	movl $10, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $4, %esp
	pushl -52(%ebp)
	pushl %ecx
	pushl %eax
	call *-36(%ebp)
	addl $16, %esp
	subl $8, %esp
	pushl %eax
	pushl -32(%ebp)
	call *-24(%ebp)
	addl $16, %esp
	sarl $2, %eax
	negl %eax
	sall $2, %eax
	orl $0, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_1983_else
	sarl $2, -28(%ebp)
	sarl $2, %ecx
	addl %ecx, -28(%ebp)
	movl -28(%ebp), %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl %ecx, -28(%ebp)
	jmp label_1984_if_end
label_1983_else:
	movl -28(%ebp), %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_1981_else
	sarl $2, -28(%ebp)
	sarl $2, %ecx
	addl %ecx, -28(%ebp)
	movl -28(%ebp), %ecx
	sall $2, %ecx
	orl $0, %ecx
	jmp label_1982_if_end
label_1981_else:
	movl $3, %edx
	notl %edx
	andl -28(%ebp), %edx
	movl $3, -28(%ebp)
	notl -28(%ebp)
	andl %ecx, -28(%ebp)
	subl $8, %esp
	pushl -28(%ebp)
	pushl %edx
	call add
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
label_1982_if_end:
	movl %ecx, -28(%ebp)
label_1984_if_end:
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
	movl %eax, -24(%ebp)
	subl $12, %esp
	pushl %ebx
	call get_free_vars
	addl $16, %esp
	movl %eax, %ebx
	pushl $0
	pushl $0
	pushl $0
	pushl %esi
	call get_subscript
	addl $16, %esp
	movl $10, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $4, %esp
	pushl %ecx
	pushl %eax
	pushl %ebx
	call *-24(%ebp)
	addl $16, %esp
	subl $4, %esp
	pushl %eax
	pushl -28(%ebp)
	pushl %edi
	call *-4(%ebp)
	addl $16, %esp
	jmp label_1990_if_end
label_1989_else:
	pushl $0
	pushl $0
	pushl $0
	pushl %edi
	call get_subscript
	addl $16, %esp
	movl %eax, -4(%ebp)
	subl $12, %esp
	pushl -4(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, %edi
	subl $12, %esp
	pushl -4(%ebp)
	call get_free_vars
	addl $16, %esp
	movl %eax, -24(%ebp)
	subl $12, %esp
	pushl -36(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -28(%ebp)
	subl $12, %esp
	pushl -36(%ebp)
	call get_free_vars
	addl $16, %esp
	movl %eax, -32(%ebp)
	pushl $0
	pushl $0
	pushl $0
	pushl %ebx
	call get_subscript
	addl $16, %esp
	movl %eax, -44(%ebp)
	subl $12, %esp
	pushl -44(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -4(%ebp)
	subl $12, %esp
	pushl -44(%ebp)
	call get_free_vars
	addl $16, %esp
	movl $10, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $4, %esp
	pushl -52(%ebp)
	pushl %ecx
	pushl %eax
	call *-4(%ebp)
	addl $16, %esp
	movl %eax, %ecx
	movl %ecx, -4(%ebp)
	sarl $2, -4(%ebp)
	pushl $0
	pushl $0
	pushl $0
	pushl %esi
	call get_subscript
	addl $16, %esp
	movl %eax, %ecx
	sarl $2, %ecx
	addl %ecx, -4(%ebp)
	movl -4(%ebp), %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $8, %esp
	pushl %ecx
	pushl -32(%ebp)
	call *-28(%ebp)
	addl $16, %esp
	movl %eax, -4(%ebp)
	subl $12, %esp
	pushl -36(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -28(%ebp)
	subl $12, %esp
	pushl -36(%ebp)
	call get_free_vars
	addl $16, %esp
	movl %eax, -44(%ebp)
	pushl $0
	pushl $0
	pushl $0
	pushl %ebx
	call get_subscript
	addl $16, %esp
	movl %eax, -36(%ebp)
	subl $12, %esp
	pushl -36(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -32(%ebp)
	subl $12, %esp
	pushl -36(%ebp)
	call get_free_vars
	addl $16, %esp
	movl $10, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $4, %esp
	pushl -52(%ebp)
	pushl %ecx
	pushl %eax
	call *-32(%ebp)
	addl $16, %esp
	subl $8, %esp
	pushl %eax
	pushl -44(%ebp)
	call *-28(%ebp)
	addl $16, %esp
	sarl $2, %eax
	negl %eax
	sall $2, %eax
	orl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_1987_else
	sarl $2, -4(%ebp)
	sarl $2, %ecx
	addl %ecx, -4(%ebp)
	movl -4(%ebp), %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl %ecx, -4(%ebp)
	jmp label_1988_if_end
label_1987_else:
	movl -4(%ebp), %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_1985_else
	sarl $2, -4(%ebp)
	sarl $2, %ecx
	addl %ecx, -4(%ebp)
	movl -4(%ebp), %ecx
	sall $2, %ecx
	orl $0, %ecx
	jmp label_1986_if_end
label_1985_else:
	movl $3, %edx
	notl %edx
	andl -4(%ebp), %edx
	movl $3, -4(%ebp)
	notl -4(%ebp)
	andl %ecx, -4(%ebp)
	subl $8, %esp
	pushl -4(%ebp)
	pushl %edx
	call add
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
label_1986_if_end:
	movl %ecx, -4(%ebp)
label_1988_if_end:
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
	pushl $0
	pushl $0
	pushl $0
	pushl %esi
	call get_subscript
	addl $16, %esp
	movl $10, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $4, %esp
	pushl %ecx
	pushl %eax
	pushl %ebx
	call *-28(%ebp)
	addl $16, %esp
	subl $4, %esp
	pushl %eax
	pushl -4(%ebp)
	pushl -24(%ebp)
	call *%edi
	addl $16, %esp
label_1990_if_end:
label_1992_if_end:
label_1994_if_end:
	popl %edi
	popl %esi
	popl %edx
	popl %ebx

        movl %eax, %eax
        leave
        ret


lambda_259:
	pushl %ebp
	movl %esp, %ebp
	subl $40, %esp
	pushl %ebx
	pushl %edx
	pushl %esi
	pushl %edi
	movl 8(%ebp), %edi
	movl 12(%ebp), %ebx
	movl $0, %ecx
	sall $2, %ecx
	orl $0, %ecx
	pushl $0
	pushl $0
	pushl %ecx
	pushl %edi
	call get_subscript
	addl $16, %esp
	movl %eax, %esi
	movl $1, %ecx
	sall $2, %ecx
	orl $0, %ecx
	pushl $0
	pushl $0
	pushl %ecx
	pushl %edi
	call get_subscript
	addl $16, %esp
	movl %eax, %edi
	movl $1, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $12, %esp
	pushl %ecx
	call create_list
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, -20(%ebp)
	movl $0, %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl $0, %edx
	sall $2, %edx
	orl $0, %edx
	pushl $0
	pushl %edx
	pushl %ecx
	pushl -20(%ebp)
	call set_subscript
	addl $16, %esp
	movl %eax, %ecx
	movl $1, %ecx
	sall $2, %ecx
	orl $0, %ecx
	pushl $0
	pushl %ecx
	pushl $0
	pushl -20(%ebp)
	call set_subscript
	addl $16, %esp
	movl $4, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $12, %esp
	pushl %ecx
	call create_list
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, -16(%ebp)
	movl $0, %ecx
	sall $2, %ecx
	orl $0, %ecx
	pushl $0
	pushl %ebx
	pushl %ecx
	pushl -16(%ebp)
	call set_subscript
	addl $16, %esp
	movl %eax, %ebx
	movl $1, %ebx
	sall $2, %ebx
	orl $0, %ebx
	pushl $0
	pushl %esi
	pushl %ebx
	pushl -16(%ebp)
	call set_subscript
	addl $16, %esp
	movl %eax, %ebx
	movl $2, %ebx
	sall $2, %ebx
	orl $0, %ebx
	pushl $0
	pushl %edi
	pushl %ebx
	pushl -16(%ebp)
	call set_subscript
	addl $16, %esp
	movl %eax, %ebx
	movl $3, %ebx
	sall $2, %ebx
	orl $0, %ebx
	pushl $0
	pushl -20(%ebp)
	pushl %ebx
	pushl -16(%ebp)
	call set_subscript
	addl $16, %esp
	movl %eax, %ebx
	subl $8, %esp
	pushl -16(%ebp)
	pushl $lambda_248
	call create_closure
	addl $16, %esp
	orl $3, %eax
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


lambda_270:
	pushl %ebp
	movl %esp, %ebp
	subl $40, %esp
	pushl %ebx
	pushl %edx
	pushl %esi
	pushl %edi
	movl 8(%ebp), %ecx
	movl 12(%ebp), %ebx
	movl %ebx, -12(%ebp)
	movl $0, %ebx
	sall $2, %ebx
	orl $0, %ebx
	pushl $0
	pushl $0
	pushl %ebx
	pushl %ecx
	call get_subscript
	addl $16, %esp
	movl %eax, %edi
	pushl $0
	pushl $0
	pushl $0
	pushl %edi
	call get_subscript
	addl $16, %esp
	movl %eax, %esi
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
	je label_1995_else
	subl $12, %esp
	pushl %ebx
	call is_true
	addl $16, %esp
	movl %eax, %ebx
	jmp label_1996_if_end
label_1995_else:
	sarl $2, %ebx
	cmpl $0, %ebx
	setne %al
	movzbl %al, %ebx
label_1996_if_end:
	cmpl $0, %ebx
	je label_2009_else
	subl $12, %esp
	pushl %esi
	call create_object
	addl $16, %esp
	movl %eax, %edi
	orl $3, %edi
	subl $8, %esp
	pushl $str_2081
	pushl %esi
	call has_attr
	addl $16, %esp
	movl %eax, %ebx
	sall $2, %ebx
	orl $1, %ebx
	movl %ebx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_1997_else
	subl $12, %esp
	pushl %ebx
	call is_true
	addl $16, %esp
	movl %eax, %ebx
	jmp label_1998_if_end
label_1997_else:
	sarl $2, %ebx
	cmpl $0, %ebx
	setne %al
	movzbl %al, %ebx
label_1998_if_end:
	cmpl $0, %ebx
	je label_1999_else
	subl $8, %esp
	pushl $str_2082
	pushl %esi
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
	movl %eax, %esi
	subl $12, %esp
	pushl %ebx
	call get_free_vars
	addl $16, %esp
	subl $16, %esp
	pushl -12(%ebp)
	pushl -12(%ebp)
	pushl %edi
	pushl %eax
	call *%esi
	addl $32, %esp
	jmp label_2000_if_end
label_1999_else:

label_2000_if_end:
	movl %edi, %eax
	jmp label_2010_if_end
label_2009_else:
	subl $12, %esp
	pushl %esi
	call is_bound_method
	addl $16, %esp
	movl %eax, %ecx
	sall $2, %ecx
	orl $1, %ecx
	movl %ecx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %ebx
	cmpl $0, %ebx
	je label_2001_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ebx
	jmp label_2002_if_end
label_2001_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ebx
label_2002_if_end:
	cmpl $0, %ebx
	je label_2007_else
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
	movl %eax, %edi
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
	subl $16, %esp
	pushl -12(%ebp)
	pushl -12(%ebp)
	pushl %ecx
	pushl %ebx
	call *%edi
	addl $32, %esp
	jmp label_2008_if_end
label_2007_else:
	subl $12, %esp
	pushl %esi
	call is_unbound_method
	addl $16, %esp
	movl %eax, %ebx
	sall $2, %ebx
	orl $1, %ebx
	movl %ebx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_2003_else
	subl $12, %esp
	pushl %ebx
	call is_true
	addl $16, %esp
	movl %eax, %ebx
	jmp label_2004_if_end
label_2003_else:
	sarl $2, %ebx
	cmpl $0, %ebx
	setne %al
	movzbl %al, %ebx
label_2004_if_end:
	cmpl $0, %ebx
	je label_2005_else
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
	subl $4, %esp
	pushl -12(%ebp)
	pushl -12(%ebp)
	pushl %eax
	call *%ebx
	addl $16, %esp
	jmp label_2006_if_end
label_2005_else:
	pushl $0
	pushl $0
	pushl $0
	pushl %edi
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
	subl $4, %esp
	pushl -12(%ebp)
	pushl -12(%ebp)
	pushl %eax
	call *%ebx
	addl $16, %esp
label_2006_if_end:
label_2008_if_end:
label_2010_if_end:
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
	subl $56, %esp
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
	movl $0, %ebx
	sall $2, %ebx
	orl $0, %ebx
	movl $0, %ecx
	sall $2, %ecx
	orl $0, %ecx
	pushl $0
	pushl %ecx
	pushl %ebx
	pushl %esi
	call set_subscript
	addl $16, %esp
	movl %eax, %ebx
	movl $1, %ebx
	sall $2, %ebx
	orl $0, %ebx
	subl $12, %esp
	pushl %ebx
	call create_list
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
	movl $0, %edi
	sall $2, %edi
	orl $0, %edi
	movl $0, %ecx
	sall $2, %ecx
	orl $0, %ecx
	pushl $0
	pushl %ecx
	pushl %edi
	pushl %ebx
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
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, -20(%ebp)
	movl $0, %edi
	sall $2, %edi
	orl $0, %edi
	movl $0, %ecx
	sall $2, %ecx
	orl $0, %ecx
	pushl $0
	pushl %ecx
	pushl %edi
	pushl -20(%ebp)
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
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, -16(%ebp)
	movl $0, %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl $0, %edi
	sall $2, %edi
	orl $0, %edi
	pushl $0
	pushl %edi
	pushl %ecx
	pushl -16(%ebp)
	call set_subscript
	addl $16, %esp
	movl %eax, %ecx
	movl -16(%ebp), %edi
	movl $1, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $12, %esp
	pushl %ecx
	call create_list
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, -16(%ebp)
	movl $0, %ecx
	sall $2, %ecx
	orl $0, %ecx
	pushl $0
	pushl %ebx
	pushl %ecx
	pushl -16(%ebp)
	call set_subscript
	addl $16, %esp
	movl %eax, %ecx
	subl $8, %esp
	pushl -16(%ebp)
	pushl $lambda_188
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
	movl $1, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $12, %esp
	pushl %ecx
	call create_list
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, -16(%ebp)
	movl $0, %ecx
	sall $2, %ecx
	orl $0, %ecx
	pushl $0
	pushl %esi
	pushl %ecx
	pushl -16(%ebp)
	call set_subscript
	addl $16, %esp
	movl %eax, %ecx
	subl $8, %esp
	pushl -16(%ebp)
	pushl $lambda_198
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
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, -16(%ebp)
	movl $0, %ecx
	sall $2, %ecx
	orl $0, %ecx
	pushl $0
	pushl %esi
	pushl %ecx
	pushl -16(%ebp)
	call set_subscript
	addl $16, %esp
	movl %eax, %ecx
	subl $8, %esp
	pushl -16(%ebp)
	pushl $lambda_208
	call create_closure
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	pushl $0
	pushl %ecx
	pushl $0
	pushl %edi
	call set_subscript
	addl $16, %esp
	movl $2, %ecx
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
	pushl $0
	pushl -20(%ebp)
	pushl %ecx
	pushl %esi
	call set_subscript
	addl $16, %esp
	movl %eax, %ecx
	subl $8, %esp
	pushl %esi
	pushl $lambda_222
	call create_closure
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	pushl $0
	pushl %ecx
	pushl $0
	pushl -20(%ebp)
	call set_subscript
	addl $16, %esp
	movl $2, %ecx
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
	pushl $0
	pushl %ebx
	pushl %ecx
	pushl %esi
	call set_subscript
	addl $16, %esp
	movl %eax, %ecx
	movl $1, %ecx
	sall $2, %ecx
	orl $0, %ecx
	pushl $0
	pushl -20(%ebp)
	pushl %ecx
	pushl %esi
	call set_subscript
	addl $16, %esp
	movl %eax, %ecx
	subl $8, %esp
	pushl %esi
	pushl $lambda_259
	call create_closure
	addl $16, %esp
	movl %eax, %esi
	orl $3, %esi
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
	movl %eax, %ebx
	subl $8, %esp
	pushl %edi
	pushl $lambda_270
	call create_closure
	addl $16, %esp
	movl %eax, %edi
	orl $3, %edi
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
	movzbl %al, %ebx
	cmpl $0, %ebx
	je label_2011_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ebx
	jmp label_2012_if_end
label_2011_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ebx
label_2012_if_end:
	cmpl $0, %ebx
	je label_2025_else
	subl $12, %esp
	pushl %esi
	call create_object
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
	movl %ebx, -16(%ebp)
	subl $8, %esp
	pushl $str_2083
	pushl %esi
	call has_attr
	addl $16, %esp
	movl %eax, %ebx
	sall $2, %ebx
	orl $1, %ebx
	movl %ebx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_2013_else
	subl $12, %esp
	pushl %ebx
	call is_true
	addl $16, %esp
	movl %eax, %ebx
	jmp label_2014_if_end
label_2013_else:
	sarl $2, %ebx
	cmpl $0, %ebx
	setne %al
	movzbl %al, %ebx
label_2014_if_end:
	cmpl $0, %ebx
	je label_2015_else
	subl $8, %esp
	pushl $str_2084
	pushl %esi
	call get_attr
	addl $16, %esp
	subl $12, %esp
	pushl %eax
	call get_function
	addl $16, %esp
	movl %eax, %ebx
	orl $3, %ebx
	movl %ebx, -20(%ebp)
	subl $12, %esp
	pushl -20(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, %ebx
	subl $12, %esp
	pushl -20(%ebp)
	call get_free_vars
	addl $16, %esp
	subl $4, %esp
	pushl %edi
	pushl -16(%ebp)
	pushl %eax
	call *%ebx
	addl $16, %esp
	movl -16(%ebp), %esi
	jmp label_2016_if_end
label_2015_else:
	movl -16(%ebp), %esi
label_2016_if_end:
	jmp label_2026_if_end
label_2025_else:
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
	je label_2017_else
	subl $12, %esp
	pushl %ebx
	call is_true
	addl $16, %esp
	movl %eax, %ebx
	jmp label_2018_if_end
label_2017_else:
	sarl $2, %ebx
	cmpl $0, %ebx
	setne %al
	movzbl %al, %ebx
label_2018_if_end:
	cmpl $0, %ebx
	je label_2023_else
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
	movl %eax, -20(%ebp)
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
	subl $4, %esp
	pushl %edi
	pushl %ecx
	pushl %ebx
	call *-20(%ebp)
	addl $16, %esp
	jmp label_2024_if_end
label_2023_else:
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
	je label_2019_else
	subl $12, %esp
	pushl %ebx
	call is_true
	addl $16, %esp
	movl %eax, %ebx
	jmp label_2020_if_end
label_2019_else:
	sarl $2, %ebx
	cmpl $0, %ebx
	setne %al
	movzbl %al, %ebx
label_2020_if_end:
	cmpl $0, %ebx
	je label_2021_else
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
	movl %eax, %esi
	subl $12, %esp
	pushl %ebx
	call get_free_vars
	addl $16, %esp
	subl $8, %esp
	pushl %edi
	pushl %eax
	call *%esi
	addl $16, %esp
	jmp label_2022_if_end
label_2021_else:
	subl $12, %esp
	pushl %esi
	call get_fun_ptr
	addl $16, %esp
	movl %eax, %ebx
	subl $12, %esp
	pushl %esi
	call get_free_vars
	addl $16, %esp
	subl $8, %esp
	pushl %edi
	pushl %eax
	call *%ebx
	addl $16, %esp
label_2022_if_end:
label_2024_if_end:
	movl %eax, %esi
label_2026_if_end:
	movl $0, %edi
	sall $2, %edi
	orl $0, %edi
	movl $1000, %ebx
	sall $2, %ebx
	orl $0, %ebx
	movl $0, %eax
	sall $2, %eax
	orl $0, %eax
	movl %eax, -20(%ebp)
	movl %edi, %ecx
	sarl $2, %ecx
	movl %ebx, %eax
	sarl $2, %eax
	cmpl %ecx, %eax
	setne %al
	movzbl %al, %eax
	sall $2, %eax
	orl $1, %eax
	movl %eax, %edx
	movl %edx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_2027_else
	subl $12, %esp
	pushl %edx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_2028_if_end
label_2027_else:
	sarl $2, %edx
	cmpl $0, %edx
	setne %al
	movzbl %al, %ecx
label_2028_if_end:
label_2067_while_start:
	cmpl $0, %ecx
	je label_2068_while_end
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
	movzbl %al, %edx
	cmpl $0, %edx
	je label_2029_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_2030_if_end
label_2029_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ecx
label_2030_if_end:
	cmpl $0, %ecx
	je label_2043_else
	subl $12, %esp
	pushl %esi
	call create_object
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, -36(%ebp)
	subl $8, %esp
	pushl $str_2085
	pushl %esi
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
	je label_2031_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_2032_if_end
label_2031_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ecx
label_2032_if_end:
	cmpl $0, %ecx
	je label_2033_else
	subl $8, %esp
	pushl $str_2086
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
	movl %eax, -16(%ebp)
	subl $12, %esp
	pushl -24(%ebp)
	call get_free_vars
	addl $16, %esp
	movl $10, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $4, %esp
	pushl %ecx
	pushl -36(%ebp)
	pushl %eax
	call *-16(%ebp)
	addl $16, %esp
	movl %eax, %ecx
	movl -36(%ebp), %ecx
	jmp label_2034_if_end
label_2033_else:
	movl -36(%ebp), %ecx
label_2034_if_end:
	jmp label_2044_if_end
label_2043_else:
	subl $12, %esp
	pushl %esi
	call is_bound_method
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
	je label_2035_else
	subl $12, %esp
	pushl %edx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_2036_if_end
label_2035_else:
	sarl $2, %edx
	cmpl $0, %edx
	setne %al
	movzbl %al, %ecx
label_2036_if_end:
	cmpl $0, %ecx
	je label_2041_else
	subl $12, %esp
	pushl %esi
	call get_function
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, -36(%ebp)
	subl $12, %esp
	pushl -36(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -16(%ebp)
	subl $12, %esp
	pushl -36(%ebp)
	call get_free_vars
	addl $16, %esp
	movl %eax, -36(%ebp)
	subl $12, %esp
	pushl %esi
	call get_receiver
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	movl $10, %edx
	sall $2, %edx
	orl $0, %edx
	subl $4, %esp
	pushl %edx
	pushl %ecx
	pushl -36(%ebp)
	call *-16(%ebp)
	addl $16, %esp
	movl %eax, %ecx
	jmp label_2042_if_end
label_2041_else:
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
	movzbl %al, %edx
	cmpl $0, %edx
	je label_2037_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_2038_if_end
label_2037_else:
	movl %ecx, %eax
	sarl $2, %eax
	cmpl $0, %eax
	setne %al
	movzbl %al, %ecx
label_2038_if_end:
	cmpl $0, %ecx
	je label_2039_else
	subl $12, %esp
	pushl %esi
	call get_function
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, -16(%ebp)
	subl $12, %esp
	pushl -16(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -36(%ebp)
	subl $12, %esp
	pushl -16(%ebp)
	call get_free_vars
	addl $16, %esp
	movl $10, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $8, %esp
	pushl %ecx
	pushl %eax
	call *-36(%ebp)
	addl $16, %esp
	movl %eax, %ecx
	jmp label_2040_if_end
label_2039_else:
	subl $12, %esp
	pushl %esi
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -36(%ebp)
	subl $12, %esp
	pushl %esi
	call get_free_vars
	addl $16, %esp
	movl $10, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $8, %esp
	pushl %ecx
	pushl %eax
	call *-36(%ebp)
	addl $16, %esp
	movl %eax, %ecx
label_2040_if_end:
label_2042_if_end:
label_2044_if_end:
	sarl $2, -20(%ebp)
	sarl $2, %ecx
	addl %ecx, -20(%ebp)
	movl -20(%ebp), %ecx
	sall $2, %ecx
	orl $0, %ecx
	movl %ecx, -36(%ebp)
	subl $12, %esp
	pushl %esi
	call is_class
	addl $16, %esp
	movl %eax, %ecx
	sall $2, %ecx
	orl $1, %ecx
	movl %ecx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_2045_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_2046_if_end
label_2045_else:
	sarl $2, %ecx
	cmpl $0, %ecx
	setne %al
	movzbl %al, %ecx
label_2046_if_end:
	cmpl $0, %ecx
	je label_2059_else
	subl $12, %esp
	pushl %esi
	call create_object
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, -20(%ebp)
	subl $8, %esp
	pushl $str_2087
	pushl %esi
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
	je label_2047_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_2048_if_end
label_2047_else:
	movl %ecx, %eax
	sarl $2, %eax
	cmpl $0, %eax
	setne %al
	movzbl %al, %ecx
label_2048_if_end:
	cmpl $0, %ecx
	je label_2049_else
	subl $8, %esp
	pushl $str_2088
	pushl %esi
	call get_attr
	addl $16, %esp
	subl $12, %esp
	pushl %eax
	call get_function
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, -16(%ebp)
	subl $12, %esp
	pushl -16(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -24(%ebp)
	subl $12, %esp
	pushl -16(%ebp)
	call get_free_vars
	addl $16, %esp
	movl $10, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $4, %esp
	pushl %ecx
	pushl -20(%ebp)
	pushl %eax
	call *-24(%ebp)
	addl $16, %esp
	movl -20(%ebp), %eax
	jmp label_2050_if_end
label_2049_else:
	movl -20(%ebp), %eax
label_2050_if_end:
	jmp label_2060_if_end
label_2059_else:
	subl $12, %esp
	pushl %esi
	call is_bound_method
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
	je label_2051_else
	subl $12, %esp
	pushl %edx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_2052_if_end
label_2051_else:
	sarl $2, %edx
	cmpl $0, %edx
	setne %al
	movzbl %al, %ecx
label_2052_if_end:
	cmpl $0, %ecx
	je label_2057_else
	subl $12, %esp
	pushl %esi
	call get_function
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, -20(%ebp)
	subl $12, %esp
	pushl -20(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -16(%ebp)
	subl $12, %esp
	pushl -20(%ebp)
	call get_free_vars
	addl $16, %esp
	movl %eax, -20(%ebp)
	subl $12, %esp
	pushl %esi
	call get_receiver
	addl $16, %esp
	movl %eax, %edx
	orl $3, %edx
	movl $10, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $4, %esp
	pushl %ecx
	pushl %edx
	pushl -20(%ebp)
	call *-16(%ebp)
	addl $16, %esp
	jmp label_2058_if_end
label_2057_else:
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
	movzbl %al, %edx
	cmpl $0, %edx
	je label_2053_else
	subl $12, %esp
	pushl %ecx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_2054_if_end
label_2053_else:
	movl %ecx, %eax
	sarl $2, %eax
	cmpl $0, %eax
	setne %al
	movzbl %al, %ecx
label_2054_if_end:
	cmpl $0, %ecx
	je label_2055_else
	subl $12, %esp
	pushl %esi
	call get_function
	addl $16, %esp
	movl %eax, %ecx
	orl $3, %ecx
	movl %ecx, -20(%ebp)
	subl $12, %esp
	pushl -20(%ebp)
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -16(%ebp)
	subl $12, %esp
	pushl -20(%ebp)
	call get_free_vars
	addl $16, %esp
	movl $10, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $8, %esp
	pushl %ecx
	pushl %eax
	call *-16(%ebp)
	addl $16, %esp
	jmp label_2056_if_end
label_2055_else:
	subl $12, %esp
	pushl %esi
	call get_fun_ptr
	addl $16, %esp
	movl %eax, -20(%ebp)
	subl $12, %esp
	pushl %esi
	call get_free_vars
	addl $16, %esp
	movl $10, %ecx
	sall $2, %ecx
	orl $0, %ecx
	subl $8, %esp
	pushl %ecx
	pushl %eax
	call *-20(%ebp)
	addl $16, %esp
label_2056_if_end:
label_2058_if_end:
label_2060_if_end:
	sarl $2, %eax
	negl %eax
	sall $2, %eax
	orl $0, %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	andl $3, %eax
	cmpl $0, %eax
	sete %al
	movzbl %al, %eax
	cmpl $0, %eax
	je label_2063_else
	movl -36(%ebp), %eax
	sarl $2, %eax
	sarl $2, %ecx
	addl %ecx, %eax
	sall $2, %eax
	orl $0, %eax
	jmp label_2064_if_end
label_2063_else:
	movl -36(%ebp), %eax
	andl $3, %eax
	cmpl $1, %eax
	sete %al
	movzbl %al, %edx
	cmpl $0, %edx
	je label_2061_else
	movl -36(%ebp), %eax
	sarl $2, %eax
	sarl $2, %ecx
	addl %ecx, %eax
	sall $2, %eax
	orl $0, %eax
	jmp label_2062_if_end
label_2061_else:
	movl $3, %edx
	notl %edx
	andl -36(%ebp), %edx
	movl $3, -36(%ebp)
	notl -36(%ebp)
	andl %ecx, -36(%ebp)
	subl $8, %esp
	pushl -36(%ebp)
	pushl %edx
	call add
	addl $16, %esp
	orl $3, %eax
label_2062_if_end:
label_2064_if_end:
	movl %eax, -36(%ebp)
	movl $1, %eax
	sall $2, %eax
	orl $0, %eax
	sarl $2, %edi
	sarl $2, %eax
	addl %eax, %edi
	sall $2, %edi
	orl $0, %edi
	movl -36(%ebp), %eax
	movl %eax, -20(%ebp)
	movl %edi, %ecx
	sarl $2, %ecx
	movl %ebx, %eax
	sarl $2, %eax
	cmpl %ecx, %eax
	setne %al
	movzbl %al, %eax
	sall $2, %eax
	orl $1, %eax
	movl %eax, %edx
	movl %edx, %eax
	andl $3, %eax
	cmpl $3, %eax
	sete %al
	movzbl %al, %ecx
	cmpl $0, %ecx
	je label_2065_else
	subl $12, %esp
	pushl %edx
	call is_true
	addl $16, %esp
	movl %eax, %ecx
	jmp label_2066_if_end
label_2065_else:
	sarl $2, %edx
	cmpl $0, %edx
	setne %al
	movzbl %al, %ecx
label_2066_if_end:
	jmp label_2067_while_start
label_2068_while_end:
	pushl $0
	pushl $0
	pushl $0
	pushl -36(%ebp)
	call print_any
	addl $16, %esp
	popl %edi
	popl %esi
	popl %edx
	popl %ebx

        movl $0, %eax
        leave
        ret

