lexer grammar ReversedRange;

options {
language = Dart;
}

@header {part of reversed_range;}

@members{
List log = new List();
}

A : [z-a9]+ {log.add("A");} ;
WS : [ \u]+ -> skip ;