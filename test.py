#z = input()
#x = 1
#while z != 0:
#    print x
#    y = 2
#    z = z + -1
#print y

def even(x):
    return True if x == 0 else odd(x + -1)

def odd(x):
    return True if x == 1 else even(x + -1)

print even(8)
