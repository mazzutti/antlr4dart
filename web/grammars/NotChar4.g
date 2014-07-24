grammar NotChar4;

options {
  language = Dart;
}

@header{part of not_char4;}

@members {
List log = new List();
}

a : A {log.add($A.text);} ;
A : ('a'|B) ;
fragment B : ~('a'|'c') ;