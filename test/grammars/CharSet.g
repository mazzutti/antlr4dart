lexer grammar CharSet;

options {
language = Dart;
}

@header {part of char_set;}

@members{
List log = new List();
}

I : '0'..'9'+ {log.add("I");} ;
WS : [ \n\u000D] -> skip ;