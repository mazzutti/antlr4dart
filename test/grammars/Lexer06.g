lexer grammar Lexer06;
options {
  language = Dart;
}

@header{part of lexer06;}

FOO: 'f' ('o' | 'a')*;
