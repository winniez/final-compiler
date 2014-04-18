final-compiler
==============

Final Compiler for CSCI 5525, Nov 2012 - Dec 2012

Sabarigirish Muralidharanpillai 

Xinying Zeng

Eric Grover

Chris Bubernak

##Overview
On top of a functional Python Compiler we previously built. We implement optimization including Static Single Assignment Form (SSA form), Constant Propagation and Folding, Type Analysis and Specialization and Dead Code Elimination. Benchmarking results showed that code size and runtime were cut down in range of 20% to 50%.

This project seeks to reduce the amount of assembly code produced and the runtime of this code by implementing Static Single Assignment Form, Type Analysis and Specialization, Dead Code Elimination, and Constant Propagation & Folding in our compiler. Although we are adding additional complexity and passes to the compiler, we also expect to see improved compile time in some situations. The proposed optimizations reduce code size early on in the compilation process which in turn reduces the amount of work that later passes need to do.

##Slides
https://github.com/winniez/final-compiler/blob/master/Compiler_Final_Slides_14.pdf

##Document
https://github.com/winniez/final-compiler/blob/master/Final_Writeup.pdf
