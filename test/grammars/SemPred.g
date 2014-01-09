grammar SemPred;

options {
language = Dart;
}

@header {part of sem_pred;}

@parser::members{
List log = new List();
}

s @after {log.add($ctx.toStringTree(this));} : a ;
a : a {true}? ID
  | ID
  ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') -> skip ;