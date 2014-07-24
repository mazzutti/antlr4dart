lexer grammar CharSetWithQuote2;

options {
language = Dart;
}

@header {part of char_set_with_quote2;}

@members{
List log = new List();
}

A : ["\\ab]+ {log.add("A");} ;
WS : [ \n\t]+ -> skip ;