from vis import Visitor
from compiler import *
from compiler_utilities import *
from find_locals import FindLocalsVisitor
from explicit import *
from phi import *

class ConstFoldingVisitor(Visitor):

    def visitAssign(self, n):
        return Assign(n.nodes, self.dispatch(n.expr))

    def visitConst(self, n):
        return n

    def visitName(self, n):
        return n

    def visitUnarySub(self, n):
        expr = self.dispatch(n.expr)
        if isinstance (expr, Const):
            return Const(-expr.value)
        else:
            return UnarySub(expr)
            
    def visitCallFunc(self, n):
        return CallFunc(self.dispatch(n.node), [self.dispatch(x) for x in n.args])

    def visitAdd(self, n):
        left = self.dispatch(n.left)
        right = self.dispatch(n.right)
        if isinstance (left, Const) and isinstance (right, Const):
            return Const(left.value + right.value)
        else:
            return Add((left, right))

    def visitNot(self, n):
        expr = self.dispatch(n.expr)
        if isinstance (expr, Name):
            if expr.name == 'False':
                return Name('True')
            elif expr.name == 'True':
                return Name('False')
            else:
                return Not(expr)
        elif isinstance (expr, Const):
            if expr.value == 0:
                return Name('True')
            else:
                return Name('False')
        return Not(expr)

    def visitOr(self, n):
        var1 = self.dispatch(n.nodes[0])
        var2 = self.dispatch(n.nodes[1])
        '''
        if isinstance (var1, Name):
            if var1.name == 'False':
                if isinstance (var2, Name):
                    if var2.name == 'False':
                        return Name('False')
                    else:
                        return Name('True')
                elif isinstance (var2, Const):
                    if var2.value == 0:
                        return Name('False')
                    else:
                        return Name('True')
        elif isinstance (var1, Const):
            if var1.value == 0:
                if isinstance (var2, Name):
                    if var2.name == 'False':
                        return Name('False')
                    else:
                        return Name('True')
                elif isinstance (var2, Const):
                    if var2.value == 0:
                        return Name('False')
                    else:
                        return Name('True')
                        '''
        return Or([var1, var2])

    def visitAnd(self, n):
        var1 = self.dispatch(n.nodes[0])
        var2 = self.dispatch(n.nodes[1])
        '''
        if isinstance (var1, Name):
            if var1.name == 'True':
                if isinstance (var2, Name):
                    if var2.name == 'True':
                        return Name('True')
                    elif var2.name == 'False':
                        return Name('False')
                elif isinstance (var2, Const):
                    if var2.value != 0:
                        return Name('True')
                    else:
                        return Name('False')
        elif isinstance (var2, Const):
            if var1.value !=0:
                if isinstance (var2, Name):
                    if var2.name == 'True':
                        return Name('True')
                    else:
                        return Name('False')
                elif isinstance (var2, Const):
                    if var2.value !=0:
                        return Name('True')
                        '''
        return And([var1, var2])

    def visitPrintnl(self, n):
        expr = self.dispatch(n.nodes[0])
        return Printnl([expr], n.dest)

    def visitCompare(self, n):
        lhs = self.dispatch(n.expr)
        rhs = self.dispatch(n.ops[0][1])
        operator = n.ops[0][0]
        if isinstance (lhs,Const) and isinstance (rhs, Const):
            if operator == '==':
                return Const(lhs.value == rhs.value)
            elif operator == '!=':
                return Const(lhs.value != rhs.value)
        return Compare(lhs, [(operator, rhs)])
    
    def visitLet(self, n):
        rhs = self.dispatch(n.rhs)
        body = self.dispatch(n.body)
        return Let(n.var, rhs, body)

    def visitLambda(self, n):
        return Lambda(n.argnames, n.defaults, n.flags, self.dispatch(n.code))

    def visitFunction(self, n):
        codes = self.dispatch(n.code)
        return Function(n.decorators, n.name, n.argnames, n.defaults, n.flags, n.doc, codes)

    def visitReturn(self, n):
        return Return(self.dispatch(n.value))

    def visitIf(self, n):
        test = self.dispatch(n.tests[0][0])
        then = self.dispatch(n.tests[0][1])
        else_ = self.dispatch(n.else_)
        return If([(test,then)],else_,n.phis)

    def visitIfExp(self, n):
        test = self.dispatch(n.test)
        then = self.dispatch(n.then)
        else_ = self.dispatch(n.else_)
        return IfExp(test, then, else_)

    def visitWhile(self, n):
    test = self.dispatch(n.test)
        body = self.dispatch(n.body)
        return While(test, body, n.else_, n.phis)
        
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

    def visitModule(self, n):
        return Module(n.doc, self.dispatch(n.node))

    def visitStmt(self, n):
        ss  = [self.dispatch(s) for s in n.nodes]
        return Stmt(ss)
        
        
