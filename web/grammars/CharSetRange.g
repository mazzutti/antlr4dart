lexer grammar CharSetRange;

options {
language = Dart;
}

@header {part of char_set_range;}

@members{
List log = new List();
}

I : [0-9]+ {log.add("I");} ;
ID : [a-zA-Z] [a-zA-Z0-9]* {log.add("ID");} ;
WS : [ \n\u0009\r]+ -> skip ;