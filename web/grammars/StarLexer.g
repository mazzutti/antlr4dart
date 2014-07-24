grammar StarLexer;

options {
  language = Dart;
}

@header{part of star_lexer;}

@members {
List log = new List();
}

a : A {log.add(inputSource.text);} ;
A : 'b'* 'c' ;