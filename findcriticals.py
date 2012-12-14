import compiler
from compiler.ast import *
from explicit import *
from explicate1 import letify
from find_locals import FindLocalsVisitor
from compiler_utilities import generate_name, builtin_functions
from phi import While
from convert_to_ssa import *
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
def findTruth(n):
	if isinstance(n,Const):
		if n.value == 0:
			return 'F'
		else:
			return 'T'
	elif isinstance(n,List):
		if n.nodes==[]:
			return 'F'
		else:
			return 'T'
	elif isinstance(n,Dict):
		if n.items==[]:
			return 'F'
		else:
			return 'T'
	else:
		return 'Dy'
def findCriticals(n,ind):
	
	if isinstance(n, Module) and (ind=='Parse'):
		alllive=findCriticals(n.node,'Parse')
		#print '\nalllive criticals', alllive
		#print '\n Dependants',Dependants
		return (alllive,Dependants,calledFunctions,calledClasses)
	elif isinstance(n, Stmt):
		livestatements=[]
		for s in n.nodes:
			
			#print '\nprinting s',s
			livestatements.append(findCriticals(s,'Parse'))
			#print 'livestatements',livestatements
		
		return livestatements
	elif isinstance(n, Const):
		if ind=='Parse':
			return 'NL'
		elif ind == 'GtDeps':
			if isinstance(n.value,int):
				count=0
			else:
				Dependants.append(n)
	elif isinstance(n, Add):
		if ind == 'Parse':
			retval1=findCriticals(n.left, 'Parse')
			retval2=findCriticals(n.right, 'Parse')
			retval=[retval1,retval2]
			#print 'Add return retval',retval
			return retval
		elif ind == 'GtDeps':
			findCriticals(n.left,'GtDeps')
			findCriticals(n.right,'GtDeps')
			
	elif isinstance(n, UnarySub):
		if ind == 'Parse':
			retval=findCriticals(n.expr, 'Parse')
			return retval
		if ind == 'GtDeps':
			findCriticals(n.expr, 'GtDeps')
	elif isinstance(n, If):
		
		if isinstance(n.tests[0][0],CallFunc):
			retvaltest=='Dy'
		else:
			retvaltest=findTruth(n.tests[0][0])
		retvalbody=findCriticals(n.tests[0][1],'Parse')
		retvalelse=findCriticals(n.else_, 'Parse')
		
		retval=[retvaltest, retvalbody, retvalelse]
		
		return retval
	elif isinstance(n, Compare):
		if (ind=='Parse'):
			retval1=findCriticals(n.expr, 'Parse')
			retval2=findCriticals(n.ops[0][1], 'Parse')
			if (retval1=='IL') or (retval2=='IL'):
				return 'IL'
			else:
				return 'NL'
		elif (ind=='GtDeps'):
			findCriticals(n.expr, 'GtDeps')
			findCriticals(n.ops[0][1], 'GtDeps')
	elif isinstance(n, Subscript):
		if (ind == 'Parse'):
			retval1=findCriticals(n.expr, 'Parse')
			sublen=len(n.subs)
			retval2=[]
			for s in n.subs:
				retval2.append(findCriticals(s, 'Parse'))
			x=0
			print 'Subscript retval2',retval2
			for j in retval2:
				if j=='IL':
					x=1
			if (retval1=='IL') or x==1:
				return 'IL'
			else:
				return 'NL'
				
		if (ind =='GtDeps'):
			findCriticals(n.expr,'GtDeps')
			for s in n.subs:
				findCriticals(s,'GtDeps')
			
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
		findCriticals(n.nodes[0], 'GtDeps')
		return 'IL'
	elif isinstance(n, Discard):
		#print '\nDiscard node',n
		
		if ind == 'Parse':
			retval=findCriticals(n.expr, 'Parse')
			print '\n\ndiscard return',retval
			return retval
	elif isinstance(n, Return):
		#print 'Return',n
		#print 'retrn value',n.value
		findCriticals(n.value,'GtDeps')
		return 'IL'
	elif isinstance(n, IfExp):
		#print 'IfExp Node',n
		if ind=='Parse':
			if isinstance(n.test,CallFunc):
				retvaltest='Dy'
			else:
				retvaltest=findTruth(n.test)
			if (retvaltest=='T'):
				retval1=findCriticals(n.then, 'Parse')
				retval=[retvaltest,retval1,'NL']
				
			elif (retvaltest=='F'):
				retval2=findCriticals(n.else_, 'Parse')
				retval=[retvaltest,'NL',retval2]
				
			else:
				retval1=findCriticals(n.then, 'Parse')
				retval2=findCriticals(n.else_, 'Parse')
				retval=[retvaltest,retval1,retval2]
				
			print 'If Exp retval', retval
			return retval
		elif ind=='GtDeps':
			findCriticals(n.test,'GtDeps')
			findCriticals(n.then,'GtDeps')
			findCriticals(n.else_,'GtDeps')
	
		
	elif isinstance(n, While):
		#print '\n\nwhile node',n
		#print '\n\nwhile test',n.test
		#print '\nwhile body',n.body
		#print '\n while else',n.else_
		#print 'while phis',n.phis
		for i in n.phis:
			Dependants.append(Name(i.var))
			Dependants.append(Name(i.var1))
			Dependants.append(Name(i.var2))
			
		if isinstance(n.test,CallFunc):
			retvaltest=='Dy'
		else:
			retvaltest=findTruth(n.test)
		if retvaltest=='Dy':
			findCriticals(n.test,'GtDeps')
		retvalbody=findCriticals(n.body,'Parse')
		if n.else_ is None:
			retvalelse='NL'
		else:
			retvalelse=findCriticals(n.else_,'Parse')
		#print 'Body return',retvalbody
		#print 'Else return',retvalelse
		retval = [retvaltest,retvalbody,retvalelse]
		#print retval
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
			
			counter=0
			for (k, e) in n.items:
				retval1=findCriticals(k, 'Parse')
				retval2=findCriticals(e, 'Parse')
				if retval1=='IL' or retval2=='IL':
					counter=1
			if counter==1:
				return 'IL'
			else:
				return 'NL'
		if ind =='GtDeps':
			
			for (k, e) in n.items:
				findCriticals(e, 'GtDeps')
				findCriticals(k, 'GtDeps') 			
	elif isinstance(n, List):
		if ind == 'Parse':
			for e in n.nodes:	
				findCriticals(e, 'Parse') 
		if ind == 'GtDeps':
			for e in n.nodes:	
				findCriticals(e, 'GtDeps') 
	
	elif isinstance(n, Name):
		#print 'Name node Critical',n
		if n.name=='input':
			return 'IL'
		elif (ind=='Parse'):
			return 'NL'
		elif (ind == 'GtDeps'):
			Dependants.append(n)
		
	elif isinstance(n,Let):
		#print '\n\nLet node critical',n
		if ind=='Parse':
			#print '\n\nLet node',n
			#print 'Let rhs',n.rhs
			#print 'Let body',n.body
			##retval1=findCriticals(n.rhs,'Parse')
			##retval2=findCriticals(n.body,'Parse')
			##retval=[retval1,retval2]
			return 'IL'
			#print 'Let retval',retval
			##return retval
		elif ind =='GtDeps':
			findCriticals(n.rhs,'GtDeps')
			findCriticals(n.body,'GtDeps')
			
	elif isinstance(n,Phi):
		#print 'in Phi',n
		return 'IL'
	elif isinstance(n, Assign):
		if ind=='Parse':
			#print 'In ASsign',n.expr
			retval=findCriticals(n.expr,'Parse')
			return retval

		

	elif isinstance(n, CallFunc):
		#print 'Called Function ',n
		if isinstance(n.node,CallFunc):
			retval=findCriticals(n.node,'Parse')
			return retval
		elif isinstance(n.node,Lambda):
			#print n
			findCriticals(n.node,'GtDeps')
			return 'IL'
		elif (n.node).name == 'input':
			#print n
			return 'IL'
		elif (n.node.name in set(builtin_functions)):
			if len(n.args)>0:			
				for i in n.args:
					findCriticals(i,'GtDeps')
			return 'IL'
		else :
			calledFunctions.append((n.node).name)
			for i in n.args:
				if not (i is None):
					findCriticals(i,'GtDeps')
			return 'IL'


	elif isinstance(n,Lambda):
		if ind=='Parse':
			retval=findCriticals(n.code,'Parse')
			return retval
		elif ind =='GtDeps':
			for s in n.argnames:
				findCriticals(Name(s),'GtDeps')
			findCriticals(n.code,'GtDeps')


	elif isinstance(n, Function):
		#print '\n\nFunction code',n.code.nodes
		retvalcode=[]
		for s in n.code.nodes:
			#print s
			retvalcode.append(findCriticals(s,'Parse'))
		#print '\nFunction critical return',retvalcode
		declaredFunctions.append(n.name)
		
		return retvalcode
	
		
	else:
		print 'CRITICAL CANT HANDLE: ' + str(n)
		input()

