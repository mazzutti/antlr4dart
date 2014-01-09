grammar ParserNotSet;

options {
  language = Dart;
}

@header{part of parser_not_set;}

@members {
List log = new List();
}

a : t=~('x'|'y') 'z' {log.add($t.text);} ;