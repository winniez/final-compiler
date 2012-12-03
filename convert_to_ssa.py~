from vis import Visitor
from compiler.ast import *
from explicit import *
from compiler_utilities import *
from find_locals import FindLocalsVisitor
from phi import *

version = {}

class SSAVisitor(Visitor):

    #------These are the tricky ssa cases--------------

    def visitAssign(self, n):
	rhs = self.dispatch(n.expr)
        if isinstance(n.nodes[0], AssName):
		lhs = n.nodes[0].name

		if lhs in version.keys():
			version[lhs] = version[lhs] + 1
		else:
			version[lhs] = 0
		return Assign(nodes=[AssName(lhs + "_" + str(version[lhs]), 'OP_ASSIGN')], expr = rhs)
	else:
		return Assign(nodes=n.nodes, expr = rhs)
	

    def visitName(self, n):
	if n.name in builtin_functions:
		return n
	else:
		# replace name nodes with the correct version number
        	return Name(n.name + '_' + str(version[n.name]))

    #having problems b/c var in let needs to be added to dictionary b4 we process the body
    def visitLet(self, n):
	version[n.var] = 0
        rhs = self.dispatch(n.rhs)
        body = self.dispatch(n.body)
        return Let(n.var + "_" + str(version[n.var]), rhs, body)


    def visitIf(self, n):
	#find locals in the then and else_
	#union the set to determine what needs to go into the phi
	then_locals = FindLocalsVisitor().preorder(n.tests[0][1])
        else_locals = FindLocalsVisitor().preorder(n.else_)
	phi_locals = list(then_locals & else_locals)

	phis = []
	phis_else = {}
	phis_then = {}

	test = self.dispatch(n.tests[0][0])

        then = self.dispatch(n.tests[0][1])
	for p in phi_locals:
		phis_then[p] = p + "_" + str(version[p])

        else_ = self.dispatch(n.else_)
	for p in phi_locals:
		phis_else[p] = p + "_" + str(version[p])
	
	for p in phi_locals:
		version[p] = version[p] + 1
		var = p + "_" + str(version[p])
		var1 = phis_then[p]
		var2 = phis_else[p]
		phis = phis + [Phi(var, var1, var2)]


        return If([(test, then)], else_, phis)

    def visitIfExp(self, n):
        test = self.dispatch(n.test)
        then = self.dispatch(n.then)
        else_ = self.dispatch(n.else_)
        return IfExp(test, then, else_)

    def visitWhile(self, n):
	body_locals = FindLocalsVisitor().preorder(n.body)
	program_vars = set(version.keys())

	phis = []
	phi_locals = body_locals & program_vars

	phis_preloop = {}
	phis_body = {}
	phis_vars = {}

	#all the pre_loop versions
	for p in phi_locals:
		phis_preloop[p] = p + "_" + str(version[p])

	#now increment all of them for the vars of our phis
	# ie  --> var = phi(_, _)
	for p in phi_locals:
		version[p] = version[p] + 1
		phis_vars[p] = p + "_" + str(version[p])
			
	test = self.dispatch(n.test)

	#all the version numbers post-loop
        body = self.dispatch(n.body)
	for p in phi_locals:
		phis_body[p] = p + "_" + str(version[p])


	for p in phi_locals:
		var = phis_vars[p]
		var1 = phis_preloop[p]
		var2 = phis_body[p]
		phis = phis + [Phi(var, var1, var2)]

        return While(test, body, n.else_, phis)

    #--------------------------------------

    def visitModule(self, n):
        return Module(n.doc, self.dispatch(n.node))

    def visitLambda(self, n):
        return Lambda(self.dispatch(n.argnames), n.defaults, n.flags, self.dispatch(n.code))

    def visitReturn(self, n):
        return Return(self.dispatch(n.value))

    def visitStmt(self, n):
        ss  = [self.dispatch(s) for s in n.nodes]
        return Stmt(ss)

    def visitPrintnl(self, n):
        e = self.dispatch(n.nodes[0])
        return Printnl([e], n.dest)

    def visitConst(self, n):
        return n

    def visitAdd(self, n):
        left = self.dispatch(n.left)
        right = self.dispatch(n.right)
        return Add((left, right))

    def visitUnarySub(self, n):
        return UnarySub(self.dispatch(n.expr))
        
    def visitCallFunc(self, n):
        return CallFunc(self.dispatch(n.node),
                        [self.dispatch(a) for a in n.args])

    def visitCompare(self, n):
        left = self.dispatch(n.expr)
        right = self.dispatch(n.ops[0][1])
        return Compare(left, [(n.ops[0][0], right)])

    def visitAnd(self, n):
        left = self.dispatch(n.nodes[0])
        right = self.dispatch(n.nodes[1])
        return And([left, right])

    def visitOr(self, n):
        left = self.dispatch(n.nodes[0])
        right = self.dispatch(n.nodes[1])
        return Or([left, right])


    def visitNot(self, n):
        expr = self.dispatch(n.expr)
        return Not(expr)

    def visitDict(self, n):
        items = [(self.dispatch(k),
                  self.dispatch(e)) for (k, e) in n.items]
        return Dict(items)
    
    def visitList(self, n):
        return List([self.dispatch(e) for e in n.nodes])

    def visitSubscript(self, n):
        expr = self.dispatch(n.expr)
        subs = [self.dispatch(e) for e in n.subs]
        return Subscript(expr, n.flags, subs)

    def visitSetSubscript(self, n):
        c = self.dispatch(n.container)
        k = self.dispatch(n.key)
        v = self.dispatch(n.val)
        return SetSubscript(c, k, v)

    def visitDiscard(self, n):
        e = self.dispatch(n.expr)
        return Discard(e)

    def visitInjectFrom(self, n):
        return InjectFrom(n.typ, self.dispatch(n.arg))

    def visitProjectTo(self, n):
        return ProjectTo(n.typ, self.dispatch(n.arg))

    def visitGetTag(self, n):
        return GetTag(self.dispatch(n.arg))



