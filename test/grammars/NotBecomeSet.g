grammar NotBecomeSet;

options {
  language = Dart;
}

@header{part of not_become_set;}

@members {
List log = new List();
}

a : C {log.add(inputSource.text);} ;
fragment A : '1' | '2';
fragment B : '3' '4';
C : A | B;