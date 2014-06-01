grammar TernaryExpr;

options {
language = Dart;
}

@header {part of ternary_expr;}

@parser::members{
List log = new List();
}

s @after {log.add($ctx.toStringTree(this));} : e EOF ;
e : e '*' e
  | e '+' e
  | e '?' e ':' e
  | e '=' e
  | ID
  ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') -> skip ;