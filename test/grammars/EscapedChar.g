lexer grammar EscapedChar;

options {
language = Dart;
}

@header {part of escaped_char;}

@members{
List log = new List();
}

DASHBRACK : [\-\]]+ {log.add("DASHBRACK");} ;
WS : [ \u]+ -> skip ;
