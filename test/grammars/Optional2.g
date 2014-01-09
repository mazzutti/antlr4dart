grammar Optional2;

options {
  language = Dart;
}

@header{part of optional2;}

@members {
List log = new List();
}

a : A {log.add(inputSource.text);} ;
A : 'b'? 'c' ;