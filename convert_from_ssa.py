from vis import Visitor
from compiler.ast import *
from explicit import *
from compiler_utilities import *
from find_locals import FindLocalsVisitor
from phi import *


class RemoveSSAVisitor(Visitor):
    #need to remove phis from Ifs and Whiles
	
    def visitIf(self, n):
	test = self.dispatch(n.tests[0][0])
        then = self.dispatch(n.tests[0][1])
        else_ = self.dispatch(n.else_)

	phi_then = []
	phi_else_ = []

	for p in n.phis:
		phi_then = phi_then + [Assign(nodes=[AssName(p.var, 'OP_ASSIGN')], expr = Name(p.var1))]
		phi_else_ = phi_else_ + [Assign(nodes=[AssName(p.var, 'OP_ASSIGN')], expr = Name(p.var2))]


	t = []
	for node in then.nodes:
		t = t + [node]

	e = []
	for node in else_.nodes:
		e = e + [node] 

	then = Stmt(t + phi_then)
	else_ = Stmt(e + phi_else_)

        return If([(test, then)], else_, None)

    def visitWhile(self, n):
        test = self.dispatch(n.test)
        body = self.dispatch(n.body)
        return While(test, body, n.else_)

    def visitIfExp(self, n):
        test = self.dispatch(n.test)
        then = self.dispatch(n.then)
        else_ = self.dispatch(n.else_)
        return IfExp(test, then, else_)


    def visitName(self, n):
	return n

    def visitLet(self, n): 
        return Let(n.var, self.dispatch(n.rhs), self.dispatch(n.body))

    def visitAssign(self, n):
    	return Assign(nodes=n.nodes, expr = self.dispatch(n.expr))

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



