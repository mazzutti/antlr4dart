lexer grammar Recursive1;

options {
language = Dart;
}

@header {part of recursive1;}

CMT : '/*' (CMT | .)*? '*/' ;
WS : (' '|'\n')+ ;