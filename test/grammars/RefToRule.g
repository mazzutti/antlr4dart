lexer grammar RefToRule;

options {
language = Dart;
}

@header {part of ref_to_rule;}

A : '-' I ;
I : '0'..'9'+ ;
WS : (' '|'\n') -> skip ;