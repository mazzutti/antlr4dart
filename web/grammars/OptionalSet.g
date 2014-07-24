grammar OptionalSet;

options {
  language = Dart;
}

@header{part of optional_set;}

@members {
List log = new List();
}

a : ('a'|'b')? 'c' {log.add(inputSource.text);} ;