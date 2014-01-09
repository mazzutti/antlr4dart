grammar LexerPlusSet;

options {
  language = Dart;
}

@header{part of lexer_plus_set;}

@members {
List log = new List();
}

a : A {log.add(inputSource.text);} ;
A : ('a'|'b')+ 'c' ;