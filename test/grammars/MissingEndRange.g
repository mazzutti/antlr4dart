lexer grammar MissingEndRange;

options {
language = Dart;
}

@header {part of missing_end_range;}

@members{
List log = new List();
}

I : [0-]+ {log.add("I");} ;
WS : [ \n\u000D]+ -> skip ;