lexer grammar MissingEscapeChar;

options {
language = Dart;
}

@header {part of missing_escape_char;}

@members{
List log = new List();
}

I : [0-9]+ {log.add("I");} ;
WS : [ \u]+ -> skip ;