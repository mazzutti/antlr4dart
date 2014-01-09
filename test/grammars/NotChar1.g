grammar NotChar1;

options {
  language = Dart;
}

@header{part of not_char1;}

@members {
List log = new List();
}

a : A {log.add($A.text);} ;
A : ~'b' ;