grammar LabelsOnOp;

options {
language = Dart;
}

@header {part of labels_on_op;}

@parser::members{
List log = new List();
}

s @after {log.add($ctx.toString(this));} : e ;
e : a=e op=('*'|'/') b=e  {}
  | INT {}
  | '(' x=e ')' {}
  ;
INT : '0'..'9'+ ;
WS : (' '|'\n') -> skip ;