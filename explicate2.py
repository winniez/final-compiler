import sys
import compiler
from compiler.ast import *
from explicate1 import ExplicateVisitor, letify, gen_is_true
from explicit import InjectFrom, Let
from phi import *

class ExplicateVisitor2(ExplicateVisitor):

    def visitFunction(self, n):
        # The extra Return is to prevent falling off the end of a function.
        lam = Lambda(n.argnames, n.defaults, n.flags,
                     Stmt([self.dispatch(n.code),
                           Return(InjectFrom('int', Const(0)))]))
        return Assign([AssName(n.name, 'OP_ASSIGN')], lam)

    def visitReturn(self, n):
        return Return(self.dispatch(n.value))

    def visitLambda(self, n):
        return Lambda(n.argnames, n.defaults, n.flags,
                      Stmt([Return(self.dispatch(n.code))]))

    def visitstr(self, n):
	return n


    def visitLet(self, n):
	#var, rhs, body
	return Let(n.var, self.dispatch(n.rhs), self.dispatch(n.body))


    def visitWhile(self, n):
	#test, body (Stmt), else_
	#don't have to worry about else_ case!
	return While(letify(self.dispatch(n.test),lambda t: gen_is_true(t)),  self.dispatch(n.body) , n.else_,n.phis)
