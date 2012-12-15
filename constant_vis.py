from vis import Visitor
from compiler.ast import *
from explicit import *
from compiler_utilities import *
from find_locals import FindLocalsVisitor
from phi import *
import copy



# global variable map
# with SSA, maitain a single mapping dictionary for
# the entire program
variable_map = {}

# update variable_map and do constant propagation
# replace assignment to Name node which currently holds constant value
# leave constant folding to next pass

#--------------------------------------
# helper functions
# top bottom Const() Name('True') Name('False')


class ConstantVisitor(Visitor):
    #--------------------------------------

    def visitAssign(self,n):
        if isinstance (n.nodes[0], AssName):
            lhs = n.nodes[0].name
            rhs = self.dispatch(n.expr)
            if isinstance (n.expr, Const):
                variable_map[lhs] = n.expr
            elif isinstance (n.expr, Name) and (n.expr.name == 'False' or n.expr.name == 'True'):
                variable_map[lhs] = n.expr
            elif isinstance (n.expr, Name):
                if variable_map.has_key(n.expr.name):
                    variable_map[lhs] = variable_map[n.expr.name] 
                else:
                    variable_map[n.expr.name] = 'bottom'
                    variable_map[lhs] = 'bottom'
            elif isinstance (n.expr, (List, Dict)):
                variable_map[lhs] = 'top'
        return Assign(n.nodes, self.dispatch(n.expr))
                    
    def visitConst(self, n):
        return n
    
    def visitName(self, n):
        if (n.name == 'False' or n.name == 'True'):
            return n
        else:
            if variable_map.has_key(n.name):
                if variable_map[n.name]!='top' and variable_map[n.name]!='bottom':
                    return variable_map[n.name]
            else:
                variable_map[n.name] = 'bottom'
        return n
    
    def visitUnarySub(self, n):
        expr = self.dispatch(n.expr)
        if isinstance (expr, Const):
            return Const(-expr.value)
        return UnarySub(expr)
        
    def visitAdd(self, n):
        left = self.dispatch(n.left)
        right = self.dispatch(n.right)
        return Add((left, right))

    def visitOr(self, n):
        left = self.dispatch(n.nodes[0])
        right = self.dispatch(n.nodes[1])
        return Or([left, right])

    def visitAnd(self, n):
        left = self.dispatch(n.nodes[0])
        right = self.dispatch(n.nodes[1])
        return And([left, right])

    def visitNot(self, n):
        expr = self.dispatch(n.expr)
        if isinstance (expr, Name):
            if expr.name == 'Flase':
                return Name('True')
            elif expr.name == 'True':
                return Name('False')
        elif isinstance (expr, Const):
            if expr.value == 0:
                return Name('True')
            else:
                return Name('False')
        return Not(expr)

    def visitCallFunc(self, n):
        return CallFunc(self.dispatch(n.node),
                        [self.dispatch(a) for a in n.args])

    def visitLambda(self, n):
        return Lambda(n.argnames, n.defaults, n.flags, self.dispatch(n.code))

    def visitFunction(self, n):
  return Function(n.decorators, n.name, n.argnames, n.defaults, n.flags, n.doc, self.dispatch(n.code))
        
    def visitReturn(self, n):
        return Return(self.dispatch(n.value))
    
    def visitDict(self, n):
        items = [(self.dispatch(k), self.dispatch(e)) for (k, e) in n.items]
        return Dict(items)
    
    def visitList(self, n):
        return List([self.dispatch(e) for e in n.nodes])
            
    def visitPrintnl(self, n):
        node = self.dispatch(n.nodes[0])
        return Printnl([node], n.dest)

    def visitLet(self, n):
        rhs = self.dispatch(n.rhs)
        body = self.dispatch(n.body)
        return Let(n.var, rhs, body)

    def visitModule(self, n):
        return Module(n.doc, self.dispatch(n.node))

    def visitStmt(self, n):
        ss  = [self.dispatch(s) for s in n.nodes]
        return Stmt(ss)

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

    def visitCompare(self, n):
        lhs = self.dispatch(n.expr)
        rhs = self.dispatch(n.ops[0][1])
        return Compare(lhs,[(n.ops[0][0],rhs)])

    def visitWhile(self, n):
        # iteratively go through loop body untill no more changes to the dictionary
        # first initialize phi node to bottom
        for p in n.phis:
            variable_map[p.var] = 'bottom'
            if p.var1 not in variable_map.keys():
                variable_map[p.var1] = 'bottom'
            if p.var2 not in variable_map.keys():
                variable_map[p.var2] = 'bottom'
        test = self.dispatch(n.test)

        new_dict = {}
        old_dict = {}
        local_vars = FindLocalsVisitor().preorder(n.body)
        for each in local_vars:
            new_dict[each] = 'bottom'
            variable_map[each] = 'bottom'

        while (old_dict != new_dict):
            body = self.dispatch(n.body)

            for pi in n.phis:
                if pi.var1 not in variable_map.keys():
                    variable_map[pi.var1] = 'bottom'
                if pi.var2 not in variable_map.keys():
                    variable_map[pi.var2] = 'bottom'
                if variable_map[pi.var1] == variable_map[pi.var2]:
                    variable_map[pi.var] = variable_map[pi.var1]
                else:
                    variable_map[pi.var] = 'top'
                old_dict = copy.deepcopy(new_dict)
                new_dict = {}
                for each in local_vars:
                    new_dict[each] = variable_map[each]
        return While(test, body, n.else_, n.phis)

    def visitIfExp(self, n):
        test = self.dispatch(n.test)
        then = self.dispatch(n.then)
        else_ = self.dispatch(n.else_)
        return IfExp(test, then, else_)

    def visitIf(self, n):
        test = self.dispatch(n.tests[0][0])
        then = self.dispatch(n.tests[0][1])
        else_ = self.dispatch(n.else_)

        for pi in n.phis:
            if pi.var1 not in variable_map.keys():
                variable_map[pi.var1] = 'bottom'
            if pi.var2 not in variable_map.keys():
                variable_map[pi.var2] = 'bottom'
            if variable_map[pi.var1] == variable_map[pi.var2]:
                variable_map[pi.var] = variable_map[pi.var1]
            else:
                variable_map[pi.var] = 'top'
        return If([(test, then)], else_, n.phis)
    

            
            
        














