import compiler
from compiler.ast import *
from explicit import *
from explicate1 import letify
from find_locals import FindLocalsVisitor
from compiler_utilities import generate_name, builtin_functions


def collapseStmts(n):
	if isinstance(n, Stmt):
		ss = []
		for s in n.nodes:
			ss = ss + collapseStmts(s)
		return ss
	else:
		return [n]

def declassify(n, class_name, class_attributes, local_variables):
	if isinstance(n, Module):
		local_in_module = FindLocalsVisitor().preorder(n.node)
		return Module(n.doc, declassify(n.node, class_name, class_attributes, local_in_module))
	elif isinstance(n, Stmt):
		ss = []
		for s in n.nodes:
			d_s = declassify(s, class_name, class_attributes, local_variables)
			ss = ss + collapseStmts(d_s)
		#ss = [declassify(s, class_name, class_attributes, local_variables) for s in n.nodes]
		return Stmt(ss)
	elif isinstance(n, Const):
		return n
	elif isinstance(n, Add):
		return Add((declassify(n.left, class_name, class_attributes, local_variables), declassify(n.right, class_name, class_attributes, local_variables)))
	elif isinstance(n, UnarySub):
		return UnarySub(declassify(n.expr, class_name, class_attributes, local_variables))	
	elif isinstance(n, IfExp):
		return IfExp(declassify(n.test, class_name, class_attributes, local_variables), declassify(n.then, class_name, class_attributes, local_variables), declassify(n.else_, class_name, class_attributes, local_variables))
	elif isinstance(n, Compare):
		return Compare(declassify(n.expr, class_name, class_attributes, local_variables), [(n.ops[0][0], declassify(n.ops[0][1], class_name, class_attributes, local_variables))])
	elif isinstance(n, Subscript):
		return Subscript(declassify(n.expr, class_name, class_attributes, local_variables), n.flags, [declassify(s, class_name, class_attributes, local_variables) for s in n.subs])
	elif isinstance(n, SetSubscript):
		return SetSubscript(declassify(n.container, class_name, class_attributes, local_variables), declassify(n.key, class_name, class_attributes, local_variables), declassify(n.val, class_name, class_attributes, local_variables))
	elif isinstance(n, Printnl):
		return Printnl([declassify(n.nodes[0], class_name, class_attributes, local_variables)], n.dest)
	elif isinstance(n, Discard):
		return Discard(declassify(n.expr, class_name, class_attributes, local_variables))
	elif isinstance(n, Return):
		return Return(declassify(n.value, class_name, class_attributes, local_variables))
	elif isinstance(n, If):
		return If([(declassify(n.tests[0][0], class_name, class_attributes, local_variables), declassify(n.tests[0][1], class_name, class_attributes, local_variables))], declassify(n.else_, class_name, class_attributes, local_variables))
	elif isinstance(n, While):
		return While(declassify(n.test, class_name, class_attributes, local_variables), declassify(n.body, class_name, class_attributes, local_variables), n.else_)
	elif isinstance(n, And):
		return And([declassify(n.nodes[0], class_name, class_attributes, local_variables), declassify(n.nodes[1], class_name, class_attributes, local_variables)])	
	elif isinstance(n, Or):
		return Or([declassify(n.nodes[0], class_name, class_attributes, local_variables), declassify(n.nodes[1], class_name, class_attributes, local_variables)])
	elif isinstance(n, Not):
		return Not(declassify(n.expr, class_name, class_attributes, local_variables))
	elif isinstance(n, Dict):
		return Dict([(declassify(k, class_name, class_attributes, local_variables), declassify(e, class_name, class_attributes, local_variables)) for (k, e) in n.items])
	elif isinstance(n, List):
		return List([declassify(e, class_name, class_attributes, local_variables) for e in n.nodes])
	#these are all going to be a little more involved...
	elif isinstance(n, Name):
		# failing class6 test...b/c register allocater can't deal with "n" if its not a 	       #local variable
		if n.name in local_variables and  class_attributes and n.name in class_attributes:
			return IfExp(CallFunc(Name('has_attr'), [Name(class_name), Const(n.name)]), CallFunc(Name('get_attr'), [Name(class_name), Const(n.name)]), n)
		elif class_attributes and n.name in class_attributes:
			return CallFunc(Name('get_attr'), [Name(class_name), Const(n.name)])
		#if its not a class name just reutrn it!
		return n
	elif isinstance(n, Assign):
		if isinstance(n.nodes[0], AssName):
			#an assname in a class means we have to set an attr!
			if class_name:
				lhs = n.nodes[0]
				return Discard(CallFunc(Name('set_attr'), [Name(class_name), Const(lhs.name), declassify(n.expr, class_name, class_attributes, local_variables)]))
			#if its not within a class constructor do the regular stuff....
			return Assign(n.nodes, declassify(n.expr, class_name, class_attributes, local_variables))
		elif isinstance(n.nodes[0], Subscript):
			lhs = n.nodes[0]
			return Assign(nodes=[Subscript(declassify(lhs.expr, class_name, class_attributes, local_variables), subs = [declassify(lhs.subs[0], class_name, class_attributes, local_variables)], flags = lhs.flags)], expr = declassify(n.expr, class_name, class_attributes, local_variables))
		elif isinstance(n.nodes[0], AssAttr):
			lhs = n.nodes[0]
			#put in support for strs then realized support already exists in Consts
			return Discard(CallFunc(Name('set_attr'), [lhs.expr, Const(lhs.attrname), declassify(n.expr, class_name, class_attributes, local_variables)]))



	elif isinstance(n, CallFunc):
		#input keeps getting screwed up...make sure our compiler ignores builitin funcs
		if (n.node in builtin_functions):
			return CallFunc(n.node, [declassify(arg, class_name, class_attributes, local_variables) for arg in a.args])


#e0(e1, e2, ...en)
#let f = e0 in
#if is_class(f) then             	...if func call is object creation
#  let o = create_object(f) in   	...create the object
#  if has_attr(f, '__init__' then	...if it has an init then create a func call for it
#    let ini = get_function(get_attr(f, '__init__')) in  
#    let _ = ini(o, a1, ...,an) in
#      o
#  else o
#else
#  if is_bound_method(f) then
#    get_function(f)(get_receiver(f), a1, ..., an)   ...if its bound need receiver as 1st arg
#  else
#    if is_unbound_method(f) then
#      get_function(f)(a1, ..., an) 
#    else
#      f(a1, ..., an)       ....this is just a reg func call!




		#for right now lets just letify teh func name...chaining together lets
		#for args is going to be hard and is techinically just an optimization!

		e0 = declassify(n.node, class_name, class_attributes, local_variables)

		#this fails for lambdas....so just use a generic string to make tmp
		#f = generate_name(n.node.name)
		f = generate_name('call_func')

		o = generate_name('object')
		t_ = generate_name('_')

		return(Let(f, e0, \
			IfExp(CallFunc(Name('is_class'),[Name(f)]),
				Let(o, CallFunc(Name('create_object'), [Name(f)]),
					IfExp(CallFunc(Name('has_attr'),[Name(f), Const('__init__')]), Let(t_, CallFunc(CallFunc(Name('get_function'), [CallFunc(Name('get_attr'), [Name(f), Const('__init__')])]), [Name(o)] + n.args), Name(o)), Name(o))), 
				IfExp(CallFunc(Name('is_bound_method'), [Name(f)]), 
					CallFunc(CallFunc(Name('get_function'), [Name(f)]),
					[CallFunc(Name('get_receiver'), [Name(f)])] + n.args),
					IfExp(CallFunc(Name('is_unbound_method'),[Name(f)]),
						CallFunc(CallFunc(Name('get_function'), [Name(f)]), n.args),
					#else just do regular!
						CallFunc(e0, n.args))))))





	elif isinstance(n, Function):
		#if its a func dec in a class create the func and call set_attr on the class
		if class_name:
			#have to sort of "letify" the func name so we can assign it to an attr of the same name
			tmp_function_name = generate_name(n.name)
			#locals = local assigns + args!
			my_locals = FindLocalsVisitor().preorder(n.code) | set(n.argnames) 
			create_function = [Function(n.decorators, tmp_function_name, n.argnames, n.defaults, n.flags, n.doc, declassify(n.code, class_name, class_attributes, my_locals))]
			call_set_attr = [Discard(CallFunc(Name('set_attr'), [Name(class_name), Const(n.name), Name(tmp_function_name)]))]
			return(Stmt(create_function + call_set_attr))

		my_locals = FindLocalsVisitor().preorder(n.code) | set(n.argnames)
		#if its not a class just do nothing...
		return Function(n.decorators, n.name, n.argnames, n.defaults, n.flags, n.doc, declassify(n.code, class_name, class_attributes, my_locals))
	elif isinstance(n, Lambda):
		#need to get locals...for Lambda just argnames!
		my_locals = set(n.argnames)
			
		#if its not a class just do nothing 
		return Lambda(n.argnames, n.defaults, n.flags, declassify(n.code, class_name, class_attributes, my_locals))
	elif isinstance(n, Class):
		# name, bases, doc, code
		#Class C:
		#	0
		#=======>
		#C = create_class()

		#need tmp class name, do stuff, then at end assign tmp to n.name
	
		#in class body:
		#replace assignments and function definitions so that they refer to attributes
		#need to pass in the class name and attributes so that in assigns/func calls
		#we can set them as attrs to the new class!
		attributes = FindLocalsVisitor().preorder(n.code) #locals = attributes
		tmp_class_name = generate_name(n.name) #can only use real class name after construction

		create_class = [Assign([AssName(tmp_class_name, 'OP_ASSIGN')], CallFunc(Name('create_class'), [List([declassify(b, class_name, class_attributes) for b in n.bases])]))]
		code = [declassify(n.code, tmp_class_name, attributes, local_variables)] 
		assign_tmp_to_class = [declassify(Assign([AssName(n.name, 'OP_ASSIGN')], Name(tmp_class_name)), class_name, class_attributes, local_variables)]
		a = Stmt(create_class + code + assign_tmp_to_class)
		return a
	elif isinstance(n, Getattr):
		# expr, attrname
		#should be translated into a call to getattr
		return CallFunc(Name('get_attr'), [declassify(n.expr, class_name, class_attributes, local_variables),Const(n.attrname)])
	else:
		print 'DECLASSIFY CANT HANDLE: ' + str(n)
		input()
