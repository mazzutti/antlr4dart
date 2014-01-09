grammar AOrAPlus;

options {
language = Dart;
}

@header {part of a_or_a_plus;}

@parser::members{
List log = new List();
}

a : (ID|ID)+ {log.add($text);} ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') -> skip ;
