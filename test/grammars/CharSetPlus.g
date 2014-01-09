lexer grammar CharSetPlus;

options {
language = Dart;
}

@header {part of char_set_plus;}

@members{
List log = new List();
}

I : '0'..'9'+ {log.add("I");} ;
WS : [ \n\u000D]+ -> skip ;
