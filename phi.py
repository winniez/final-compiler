import compiler
from compiler.ast import *

class If(Node):
	def __init__(self, tests, else_, phis):
		self.tests = tests
		self.else_ = else_
		self.phis = phis

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
		# var = phi(var1, var2)

