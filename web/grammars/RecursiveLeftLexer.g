lexer grammar RecursiveLeftLexer;

options {
language = Dart;
}

@header{part of atn_interpreter_test;}

A : 'a' ;
B : 'b' ;
C : 'c' ;
LP : '(' ;
RP : ')' ;
INT : '0'..'9'+ ;