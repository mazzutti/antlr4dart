grammar ParserNotToken2;

options {
  language = Dart;
}

@header{part of parser_not_token2;}

@members {
List log = new List();
}

a : t=~'x' 'z' {log.add($t.text);} ;