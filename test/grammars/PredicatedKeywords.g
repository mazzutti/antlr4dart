lexer grammar PredicatedKeywords;

options {
language = Dart;
}

@header{part of predicated_keywords;}

@members{
List log = new List();
}

ENUM : [a-z]+ {text == "enum"}? {log.add("enum!");} ;
ID   : [a-z]+ {log.add("ID \$text");} ;
WS   : [ \n] -> skip ;