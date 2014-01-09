lexer grammar RecursiveLexer2;

options {
language = Dart;
}

@header{part of atn_lexer_interpreter_test;}

CMT : '/*' (CMT | .)*? '*/' ;
WS : (' '|'\n')+ ;