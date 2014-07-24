lexer grammar Lexer10;
options {
  language = Dart;
}

@header{part of lexer10;}

IDENTIFIER: ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*;
WS: (' ' | '\n')+;
