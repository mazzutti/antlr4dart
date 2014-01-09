grammar Optional1;

options {
  language = Dart;
}

@header{part of optional1;}

@members {
List log = new List();
}

a : A? 'c' {log.add(inputSource.text);} ;
A : 'b' ;