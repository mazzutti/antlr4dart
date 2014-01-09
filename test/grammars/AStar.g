grammar AStar;

options {
language = Dart;
}

@header {part of a_star;}

@parser::members{
List log = new List();
}

a : ID* {log.add($text);} ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') -> skip ;