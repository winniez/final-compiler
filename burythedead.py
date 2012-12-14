import pdb
import sys
import compiler
from compiler.ast import *
from explicit import *
from phi import *
def burydead(ast,finallive):
	x=0
    	y=0
	
	for i in finallive:
		
		if i=='NL':
			if isinstance(ast,Module):
				del (ast.node).nodes[x]
				y=1
			elif isinstance(ast,Stmt):
				del ast.nodes[x]
				y=1	
		elif isinstance(i,list):
			#print i
			if isinstance(ast,Module):
				p=(ast.node).nodes[x]		
			elif isinstance (ast,Stmt):
				p=ast.nodes[x]
			if isinstance(p,Function):
				burydead(p.code,i)
			elif isinstance(p,While):
				if i[0]=='T':
					p.else_.nodes=[]
					burydead(p.body,i[1])
					if isinstance(p.body.nodes,list) and len(p.body.nodes)==0:
						if isinstance(ast,Module):
							del ast.node.nodes[x]
						elif isinstance(ast,Stmt):
							del ast.nodes[x]
				elif i[0]=='F':
					p.body.nodes=[]
					burydead(p.else_,i[2])
					if isinstance(p.else_.nodes,list) and len(p.else_.nodes)==0:
						if isinstance(ast,Module):
							del ast.node.nodes[x]
						elif isinstance(ast,Stmt):
							del ast.nodes[x]
				else:
					burydead(p.body,i[1])
					burydead(p.else_,i[2])
			elif isinstance(p,If):
				if i[0]=='T':
					p.else_.nodes=[]
					burydead(p.tests[0][1],i[1])
					if isinstance(p.tests[0][1].nodes,list) and len(p.tests[0][1].nodes)==0:
						if isinstance(ast,Module):
							del ast.node.nodes[x]
						elif isinstance(ast,Stmt):
							del ast.nodes[x]
				elif i[0]=='F':
					p.body.nodes=[]
					burydead(p.else_,i[2])
					if isinstance(p.else_.nodes,list) and len(p.else_.nodes)==0:
						if isinstance(ast,Module):
							del ast.node.nodes[x]
						elif isinstance(ast,Stmt):
							del ast.nodes[x]
				else:
					burydead(p.tests[0][1],i[1])
					burydead(p.else_,i[2])

			elif isinstance(p,IfExp):
				if i[0]=='T':
					if isinstance(p.then,Name) or isinstance (p.then,Const):
						if isinstance(ast,Module):
							del ast.node.nodes[x]
							ast.node.nodes.insert(x,p.then)
						elif isinstance(ast,Stmt):
							del ast.nodes[x]
							ast.nodes.insert(x,p.then)
					else:
						burydead(p.then,i[1])
						if isinstance(ast,Module):
							del ast.node.nodes[x]
							ast.node.nodes.insert(x,p.then)
						elif isinstance(ast,Stmt):
							del ast.nodes[x]
							ast.nodes.insert(x,p.then)
				elif i[0]=='F':
					if isinstance(p.else_,Name) or isinstance (p.else_,Const):
						if isinstance(ast,Module):
							del ast.node.nodes[x]
							ast.node.nodes.insert(x,p.else_)
						elif isinstance(ast,Stmt):
							del ast.nodes[x]
							ast.nodes.insert(x,p.else_)
					else:
						burydead(p.else_,i[2])
						if isinstance(ast,Module):
							del ast.node.nodes[x]
							ast.node.nodes.insert(x,p.else_)
						elif isinstance(ast,Stmt):
							del ast.nodes[x]
							ast.nodes.insert(x,p.else_)
				else:
					burydead(p.then,i[1])
					burydead(p.else_,i[2])
			
			elif isinstance (p,Let):
				burydead(p.rhs,i[0])
				burydead(p.body,i[1])
			elif isinstance(p,Add):
				burydead(p.left,i[0])
				burydead(p.right,i[1])
			elif isinstance(p,Discard):
				print 'Discard bury',p
				print i
			
		x=x+1
		if y==1:
			x=x-1
			y=0
	return ast

