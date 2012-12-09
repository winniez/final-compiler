from vis import Visitor
from compiler.ast import *
from explicit import *
from compiler_utilities import *
#from find_locals import FindLocalsVisitor
from phi import *

types = {}

class TypeAnalysisVisitor(Visitor):

    def visitAssign(self, n):
	rhs = self.dispatch(n.expr)
	# if we see an AssName figure out the type of the right hand side & update the 
	# types dictionary
        if isinstance(n.nodes[0], AssName):
		lhs = n.nodes[0].name
		print lhs
		input()
		if isinstance(n.expr, Const):
			types[lhs] = 'int'
		elif isinstance(n.expr, List) or isinstance(n.expr, Dict):
			types[lhs] = 'big'
		elif isinstance(n.expr, Name) and (n.expr.name == 'False' or n.expr.name == 'True'):
			types[lhs] = 'bool'
	return Assign(nodes=n.nodes, expr = rhs)
	#else:
	#	return Assign(nodes=n.nodes, expr = rhs)
	

    def visitName(self, n):
	return n

    def visitLet(self, n):
        rhs = self.dispatch(n.rhs)
        body = self.dispatch(n.body)
        return Let(n.var, rhs, body)


    def visitIf(self, n):
	test = self.dispatch(n.tests[0][0])
        then = self.dispatch(n.tests[0][1])
        else_ = self.dispatch(n.else_)
	
	for p in n.phis:
		print 'PHI: ' + str(p)
		input()


        return If([(test, then)], else_, n.phis)

    def visitIfExp(self, n):
        test = self.dispatch(n.test)
        then = self.dispatch(n.then)
        else_ = self.dispatch(n.else_)
        return IfExp(test, then, else_)

    def visitWhile(self, n):
	test = self.dispatch(n.test)

        body = self.dispatch(n.body)

	for p in n.phis:
		print "PHIS: " + p
		input()

        return While(test, body, n.else_, n.phis)


    def visitModule(self, n):
        return (Module(n.doc, self.dispatch(n.node)), types)

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



