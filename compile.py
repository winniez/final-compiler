#! /usr/local/bin/python

import pdb
import sys
import compiler
from compiler.ast import *
from ir_x86 import *
from explicit2 import PrintASTVisitor2
from heapify import HeapifyVisitor, FreeInFunVisitor
from explicate2 import ExplicateVisitor2
from type_check2 import TypeCheckVisitor2
from closure_conversion import ClosureConversionVisitor
from flatten4 import FlattenVisitor4
from instruction_selection4 import InstrSelVisitor4
from register_alloc3 import RegisterAlloc3
from print_visitor3 import PrintVisitor3
from generate_x86_3 import GenX86Visitor3
from generate_x86_1 import fun_prefix
from remove_structured_control import RemoveStructuredControl
from uniquify import UniquifyVisitor
from declassify import declassify
from convert_to_ssa import SSAVisitor
from convert_from_ssa import RemoveSSAVisitor
from type_analysis import TypeAnalysisVisitor
from generate_x86_3 import string_constants #need this to put strings at top of file!
from os.path import splitext


#This is Siek's reference compiler + my own additions for Ifs, Whiles's, and Classes
#My Register Allocater was way to broken and I was unable to get the last two 
#assingments working completely so I'm using this for the time being

#uniquify already supprts If & While
#explicate already supports If (in exp1).....added support for While  and Let (in exp2)
#free vars already supports If & While
#heapify already supports If & While
#closure already supports If & While
#flatten already supports If & While (just had to make compile.py use flatten4)
#instructions already supports If & While
#allocate registers already supports If & While
#remove control flow already supports If & While


#had to add strings to all phases of my ir!
#except after i did this i realized there was already support for const(strs) so im just do that now
#only major step i had to do was get it to print strings at the top using the string_constants dict in generate_x86_3


#wrote my own declassify!
#currently handles:
#-empty class definitions
#-assiging to attributes (assattr)
#-reading from attributes (getattr)
#-now handles code in bodies of classes and sets attributes when it needs to!
#	-still have a problem when a class is declared in a class...solved this by declassfiny assignments in class Node!
#-call funs should be interpreted correctly now...copied psuedo code from pdf!


debug = True

try:
#    pdb.set_trace()
    input_file_name = sys.argv[1]
    ast = compiler.parseFile(input_file_name)
    if debug:
        print 'finished parsing'
        print ast
	print 'starting to declassify'

    ast = declassify(ast, None, None, set([]))
    if debug:
	print 'finished declassifying'
	print ast
	print 'starting to uniquify'
    ast = UniquifyVisitor().preorder(ast)
    if debug:
        print 'finished uniquifying'
        print ast
	print 'starting to convert to SSA'


    ast = SSAVisitor().preorder(ast)
    if debug:
	print 'finished converting to SSA'
	print ast
	print 'starting type analysis'
    (ast, types) = TypeAnalysisVisitor().preorder(ast)
    if debug:
	print 'finished type analysis'
	print ast
	print types
	print 'starting to explicate'
    ast = ExplicateVisitor2().preorder(ast)
    if debug:
        print 'finished explicating'
        print PrintASTVisitor2().preorder(ast)
        print 'starting to convert from SSA'
    ast = RemoveSSAVisitor().preorder(ast)
    if debug:
	print 'finished converting from SSA'
	print PrintASTVisitor2().preorder(ast)
	print 'starting to heapify'


    FreeInFunVisitor().preorder(ast)
    ast = HeapifyVisitor().preorder(ast)

    if debug:
        print 'finished heapifying'
        print PrintASTVisitor2().preorder(ast)        
        print 'type checking'
    #TypeCheckVisitor2().preorder(ast)

    if debug:
        print 'starting closure conversion'
    ast = ClosureConversionVisitor().preorder(ast)

    if debug:
        print 'finished closure conversion'
        print PrintASTVisitor2().preorder(ast)
        print 'starting to flatten'
    instrs = FlattenVisitor4().preorder(ast)
    if debug:
        print 'finished flattening'
        print PrintASTVisitor2().preorder(instrs)

    funs = InstrSelVisitor4().preorder(instrs)
    if debug:
        print 'finished instruction selection'
        for fun in funs:
            print PrintVisitor3().preorder(fun)
        print 'starting register allocation'

    new_funs = []
    for fun in funs:
        if debug:
            print 'register allocating ' + fun.name
        new_funs += [RegisterAlloc3().allocate_registers(fun,
                                                         input_file_name + '_' + fun.name)]
    funs = new_funs
    if debug:
        print 'finished register allocation'

    for fun in funs:
        fun.code = RemoveStructuredControl().preorder(fun.code)
    if debug:
        print 'finished removing structured control'
        for fun in funs:
            print PrintVisitor3().preorder(fun)

    x86 = GenX86Visitor3().preorder(Stmt(funs))
    if debug:
        print 'finished generating x86'


    string_header = ''
    #gotta put strings at the top of the file!
    for (key, value) in string_constants.items():
     	string_header += str(key) +':\n' + '.string "' + str(value) + '"\n'
   


    asm_file = open(splitext(input_file_name)[0] + '.s', 'w')
    print >>asm_file, (string_header + '.globl %smain' % fun_prefix) + x86

except EOFError:
    print "Could not open file %s." % sys.argv[1]
#except Exception, e:
    print e.args[0]
    exit(-1)

