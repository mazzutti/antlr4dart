grammar PlusSet;

options {
  language = Dart;
}

@header{part of plus_set;}

@members {
List log = new List();
}

a : ('a'|'b')+ 'c' {log.add(inputSource.text);} ;