lexer grammar CharSetWithQuote1;

options {
language = Dart;
}

@header {part of char_set_with_quote1;}

@members{
List log = new List();
}

A : ["a-z]+ {log.add("A");} ;
WS : [ \n\t]+ -> skip ;