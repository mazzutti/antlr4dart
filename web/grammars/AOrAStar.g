grammar AOrAStar;

options {
language = Dart;
}

@header {part of a_or_a_star;}

@parser::members{
List log = new List();
}

a : (ID|ID)* {log.add($text);} ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') -> skip ;