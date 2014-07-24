lexer grammar EOFSuffix3;

options {
language = Dart;
}

@header {part of eof_suffix3;}

@members{
List log = new List();
}

A : 'a' EOF ;
B : 'a';
C : 'c';