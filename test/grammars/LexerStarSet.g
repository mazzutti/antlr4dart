grammar LexerStarSet;

options {
  language = Dart;
}

@header{part of lexer_star_set;}

@members {
List log = new List();
}

a : A {log.add(inputSource.text);} ;
A : ('a'|'b')* 'c' ;