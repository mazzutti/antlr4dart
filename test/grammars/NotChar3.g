grammar NotChar3;

options {
  language = Dart;
}

@header{part of not_char3;}

@members {
List log = new List();
}

a : A {log.add($A.text);} ;
A : ~('b'|'c') ;