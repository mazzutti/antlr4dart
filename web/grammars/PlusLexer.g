grammar PlusLexer;

options {
  language = Dart;
}

@header{part of plus_lexer;}

@members {
List log = new List();
}

a : A {log.add(inputSource.text);} ;
A : 'b'+ 'c' ;