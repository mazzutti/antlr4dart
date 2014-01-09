lexer grammar Recursive2;

options {
language = Dart;
}

@header {part of recursive2;}

CMT : '/*' (CMT | .)+? '*/' ;
WS : (' '|'\n')+ ;