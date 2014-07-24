lexer grammar CharSetNot;

options {
language = Dart;
}

@header {part of char_set_not;}

@members{
List log = new List();
}

I : ~[ab \n] ~[ \ncd]* {log.add("I");} ;
WS : [ \n\u000D]+ -> skip ;