grammar ParserSet;

options {
  language = Dart;
}

@header{part of parser_set;}

@members {
List log = new List();
}

a : t=('x'|'y') {log.add($t.text);} ;