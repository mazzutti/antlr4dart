grammar ParserNotToken1;

options {
  language = Dart;
}

@header{part of parser_not_token1;}

@members {
List log = new List();
}

a : ~'x' 'z' {log.add(inputSource.text);} ;