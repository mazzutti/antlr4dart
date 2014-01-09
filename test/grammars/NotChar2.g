grammar NotChar2;

options {
  language = Dart;
}

@header{part of not_char2;}

@members {
List log = new List();
}

a : A {log.add($A.text);} ;
A : ~('b'|'c') ;