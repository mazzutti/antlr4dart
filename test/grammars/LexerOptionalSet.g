grammar LexerOptionalSet;

options {
  language = Dart;
}

@header{part of lexer_optional_set;}

@members {
List log = new List();
}

a : A {log.add(inputSource.text);} ;
A : ('a'|'b')? 'c' ;