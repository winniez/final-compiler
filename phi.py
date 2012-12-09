import compiler
from compiler.ast import *

class If(Node):
	def __init__(self, tests, else_, phis):
		self.tests = tests
		self.else_ = else_
		self.phis = phis
	def __repr__(self):
		return "If(%s, %s, %s)" % (repr(self.tests), repr(self.else_), repr(self.phis))

class While(Node):
	def __init__(self, test, body, else_, phis):
		self.test = test
		self.body = body
		self.else_ = else_
		self.phis = phis

class Phi(Node):
	def __init__(self, var, var1, var2):
		self.var = var
		self.var1 = var1
		self.var2 = var2
	def __repr__(self):
		return "Phi(%s, %s, %s)" % (repr(self.var), repr(self.var1), repr(self.var2))

