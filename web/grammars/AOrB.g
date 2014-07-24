grammar AOrB;

options {
language = Dart;
}

@header {part of a_or_b;}

@parser::members{
List log = new List();
}

a : ID {log.add("alt 1");}
  | INT {log.add("alt 2");}
  ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') -> skip ;