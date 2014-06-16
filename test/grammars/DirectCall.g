grammar DirectCall;

options {
language = Dart;
}

@header {part of direct_call;}

@parser::members{
List log = new List();
}
a @after {log.add($ctx.toString(this));} : a ID
  | ID
  ;
ID : 'a'..'z'+ ;
WS : (' '|'\n') -> skip ;