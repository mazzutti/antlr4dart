lexer grammar LexerNotSet;

options {
language = Dart;
}

@header{part of atn_lexer_interpreter_test;}

ID : ~('a'|'b') ;
