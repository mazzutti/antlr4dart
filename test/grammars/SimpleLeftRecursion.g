grammar SimpleLeftRecursion;

options {
language = Dart;
}

@header {part of simple_left_recursion;}

@members {
List log = new List();
}

s @after {log.add($ctx.toStringTree(this));} : a ;
a : a ID
  | ID
  ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') -> skip ;