import compiler
from compiler.ast import *
from explicit import *
from explicate1 import letify
from find_locals import FindLocalsVisitor
from compiler_utilities import generate_name, builtin_functions
from phi import *

global livestatements
livestatements=[]
global Dependants
Dependants=[]
global calledFunctions
calledFunctions=[]
global declaredFuncitons
declaredFunctions=[]
global calledClasses
calledClasses=[]
global declaredClasses
declaredClasses=[]
def findDependants(n,Dependants):
	if isinstance(n,Add):
		findDependants(n.left,Dependants)
		findDependants(n.right,Dependants)
	elif isinstance(n, UnarySub):
		findDependants(n.expr,Dependants)
	elif isinstance(n, Subscript):
		findDependants(n.expr,Dependants)
	elif isinstance(n,Name):
		Dependants.append(n)
	
def findAlllives(n,alllive,Dependants,calledFunctions,calledClasses):
	#print '\nStart finding Dependants'
	#print Dependants
	if isinstance(n, Module):
		alllive=findAlllives(n.node,alllive,Dependants,calledFunctions,calledClasses)
		#print 'alllive',alllive
		return alllive
	elif isinstance(n, Stmt):
		temparray=n.nodes
		temparray.reverse()
		#print 'before reverse allive',alllive
		alllive.reverse()
		#print 'in reverse temparray',temparray
		#print 'in reverse alllive',alllive
		i=0
		for s in n.nodes:
			#print '\nprinting s',s
			y=alllive[i]
			#print '\nprinting allive[i]',y
			if y == 'NL':
				x=findAlllives(s,alllive,Dependants,calledFunctions,calledClasses)
				alllive[i]=x
			elif isinstance(y,list):
				#print 'Alllives s',s
				y.reverse()
				x=findAlllives(s,y,Dependants,calledFunctions,calledClasses)
				alllive[i]=x
			i=i+1
		alllive.reverse()
		temparray.reverse()
		return alllive	
		
	elif isinstance(n, Const):
		for i in Dependants:
			if isinstance(i,Const):
				if i.value == n.value:
					return 'IL'
				else:
					return 'NL'
			
			Dependants.append(n)
		
	elif isinstance(n, Add):
		retval1=findAlllives(n.left,alllive[1],Dependants,calledFunctions,calledClasses)
		retval2=findAlllives(n.right,alllive[0],Dependants,calledFunctions,calledClasses)	
		if retval1=='IL' or retval2=='IL':
			return 'IL'
		else:
			return 'NL'
		
			
	elif isinstance(n, UnarySub):
		retval=findAlllives(n.expr,alllive,Dependants,calledFunctions,calledClasses)
		return retval
		
	elif isinstance(n, IfExp):
		#print '\n\n IfExp node',n
		#print 'IfExp alllive', alllive
		if alllive[2]=='T':
			retval1=findAlllives(n.then,alllive[1],Dependants,calledFunctions,calledClasses)
			retval=[alllive[2],retval1,'NL']
		elif alllive[2]=='F':
			retval2=findAlllives(n.else_,alllive[0],Dependants,calledFunctions,calledClasses)
			retval=[alllive[2],'NL',retval2]
		else:
			retval1=findAlllives(n.then,alllive[1],Dependants,calledFunctions,calledClasses)
			retval2=findAlllives(n.else_,alllive[0],Dependants,calledFunctions,calledClasses)
			retval=[alllive[2],retval1,retval2]
		return retval
		
		
	elif isinstance(n, Compare):
		retval1=findAlllives(n.expr)
		retval2=findAlllives(n.ops[0][1])
		if (retval1=='IL') or (retval2=='IL'):
			return 'IL'
		else:
			return 'NL'
		
	elif isinstance(n, Subscript):
		retval=findAlllives(n.expr,alllive,Dependants,calledFunctions,calledClasses)
		return retval
			
	elif isinstance(n, SetSubscript):
		if (ind == 'Parse'):
			retval1=findCriticals(n.container, 'Parse')
			retval2=findCriticals(n.key, 'Parse')
			retval3=findCriticals(n.val, 'Parse')
			if (retval1=='IL') or (retval2=='IL') or (retval3=='IL'):
				return 'IL'
			else:
				return 'NL'
	elif isinstance(n, Printnl):
		#findCriticals(n.nodes[0], 'GtDeps')
		return 'IL'
	elif isinstance(n, Discard):
		print '\n\n\nDiscard', n.expr
		print 'Discard alllive',alllive
		
		retval=findAlllives(n.expr, alllive,Dependants,calledFunctions,'FD')
		return retval
	elif isinstance(n, Return):
		retval=findAlllives(n.value, alllive,Dependants,calledFunctions,calledClasses)
		return retval
	elif isinstance(n, If):
		retvalbody=findAlllives(n.tests[0][1],alllive[1],Dependants,calledFunctions,calledClasses)
		retvalelse=findAlllives(n.else_,alllive[0],Dependants,calledFunctions,calledClasses)
		retval=[alllive[2],retvalbody,retvalelse]
		return retval
	elif isinstance(n, While):
		if n.else_ is None:
			retvalelse='NL'
		else:
			retvalelse=findAlllives(n.else_,alllive[0],Dependants,calledFunctions,calledClasses)
		retvalbody=findAlllives(n.body,alllive[1],Dependants,calledFunctions,calledClasses)
		retval=[alllive[2],retvalbody,retvalelse]
		return retval
	elif isinstance(n, And):
		if ind =='Parse':
			retval1=findCriticals(n.nodes[0], 'Parse')
			retval2=findCriticals(n.nodes[1], 'Parse')
			if (retval1=='IL') or (retval2=='IL'):
				return 'IL'
			else:
				return 'NL'
		if ind =='GtDeps':
			findCriticals(n.nodes[0], 'GtDeps')
			findCriticals(n.nodes[1], 'GtDeps')	
	elif isinstance(n, Or):
		if ind == 'Parse':
			retval1=findCriticals(n.nodes[0], 'Parse')
			retval2=findCriticals(n.nodes[1], 'Parse')
			if (retval1=='IL') or (retval2=='IL'):
				return 'IL'
			else:
				return 'NL'
		if ind == 'GtDeps':
			findCriticals(n.nodes[0], 'GtDeps')
			findCriticals(n.nodes[1], 'GtDeps')
	elif isinstance(n, Not):
		if ind == 'Parse':
			retval=findCriticals(n.expr, 'Parse')
			return retval
		if ind == 'GtDep':
			findCriticals(n.expr, 'GtDep')
	elif isinstance(n, Dict):
		if ind =='Parse':
			findCriticals(k, 'Parse')
			for (k, e) in n.items:
				findCriticals(e, 'Parse')
		if ind =='GtDeps':
			findCriticals(k, 'GtDeps')
			for (k, e) in n.items:
				findCriticals(e, 'GtDeps') 			
	elif isinstance(n, List):
		if ind == 'Parse':
			for e in n.nodes:	
				findCriticals(e, 'Parse') 
		if ind == 'GtDeps':
			for e in n.nodes:	
				findCriticals(e, 'GtDeps') 
	#these are all going to be a little more involved...
	elif isinstance(n, Name):
		count=0
		ceiling=len(Dependants)-1
		for i in Dependants:
			
			if isinstance(i,Name):
				if i.name == n.name:
					return 'IL'
				else:
					if count==ceiling:
						return 'NL'
			count=count+1
			Dependants.append(n)
			
	
	elif isinstance(n, Assign):
		#print '\nAssign n.nodes[0]',n.nodes[0]
		retval=findAlllives(n.nodes[0],alllive,Dependants,calledFunctions,calledClasses)
		if retval== 'IL':
			findDependants(n.expr,Dependants)
		return retval


	elif isinstance(n,Let):
		return 'IL'
		#print '\n\nLEt node alllive',n
		#print '\nLet allives',alllive
		#print 'let rhs',n.rhs
		#print 'let body',n.body
		#print 'allive[0]',alllive[0]	
		if calledClasses=='FD':
			retval1=findAlllives(n.rhs,alllive[1],Dependants,calledFunctions,calledClasses)
			retval2=findAlllives(n.body,alllive[0],Dependants,calledFunctions,calledClasses)
			retval=[retval1,retval2]
			return retval
			
		else:		
			retval1=findAlllives(n.rhs,alllive[1],Dependants,calledFunctions,calledClasses)
			retval2=findAlllives(n.body,alllive[0],Dependants,calledFunctions,calledClasses)
			retval=[retval1,retval2]
			return retval

	elif isinstance(n, CallFunc):
		if isinstance(n.node,CallFunc):
			retval=findAlllives(n.node,alllive,Dependants,calledFunctions,calledClasses)
			return retval
		elif isinstance(n.node,Lambda):
			#print n
			retval=findAlllives(n.node,alllive,Dependants,calledFunctions,calledClasses)
			return retval
		elif (n.node.name in set(builtin_functions)):
			return 'IL'
		else :
			calledFunctions.append(n)
			return 'IL'
			
	elif isinstance(n,AssName):
		#print '\nAssname node',n.name
		retval=findAlllives(Name(n.name),alllive,Dependants,calledFunctions,calledClasses)
		#print 'Assname return',retval
		return retval






	elif isinstance(n, Function):
		#print 'function alllive',alllive
		#print 'Function Dependants',Dependants
		#print  n.code
		y=n.code.nodes
		y.reverse()
		#print 'printing function nodes bef',n.code
		retvalcode=findAlllives(n.code,alllive,Dependants,calledFunctions,calledClasses)
		y.reverse()
		retvalcode.reverse()
		return retvalcode
		
	elif isinstance(n, Lambda):
		retval=findAlllives(n.code,alllive,Dependants,calledFunctions,calledClasses)
		return retval
	else:
		print 'ALLIVE CANT HANDLE: ' + str(n)
		input()

