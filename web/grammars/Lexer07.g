lexer grammar Lexer07;
options {
  language = Dart;
}

@header{part of lexer07;}

FOO: 'f' ('o' | 'a' 'b'+)*;
