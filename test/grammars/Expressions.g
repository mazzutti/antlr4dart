grammar Expressions;

options {
language = Dart;
}

@header {part of expressions;}

@parser::members{
List log = new List();
}

s @after {log.add($ctx.toStringTree(this));} : e EOF ;
e : e '.' ID
  | e '.' 'this'
  | '-' e
  | e '*' e
  | e ('+'|'-') e
  | INT
  | ID
  ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+ ;
WS : (' '|'\n') -> skip ;
