grammar StarSet;

options {
  language = Dart;
}

@header{part of star_set;}

@members {
List log = new List();
}

a : ('a'|'b')* 'c' {log.add(inputSource.text);} ;