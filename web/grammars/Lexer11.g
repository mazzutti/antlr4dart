lexer grammar Lexer11;
options {
  language = Dart;
}

@header{part of lexer11;}

IDENTIFIER: 
        ('a'..'z'|'A'..'Z'|'_') 
        ('a'..'z'
        |'A'..'Z'
        |'0'..'9'
        |'_' 
        )*
     ;

WS: (' ' | '\n')+;
