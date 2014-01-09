lexer grammar LexerEscape;

options {
language = Dart;
}

@header{part of atn_lexer_interpreter_test;}

STR : '[' ('~' ']' | .)* ']' ;