lexer grammar EOFAtEnd2;

options {
language = Dart;
}

@header{part of atn_lexer_interpreter_test;}

CMT : '//' ~('\n'|'\r')* ;