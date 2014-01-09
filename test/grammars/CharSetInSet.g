lexer grammar CharSetInSet;

options {
language = Dart;
}

@header {part of char_set_in_set;}

@members{
List log = new List();
}

I : (~[ab \n]|'a') {log.add("I");} ;
WS : [ \n\u000D]+ -> skip ;