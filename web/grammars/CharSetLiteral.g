grammar CharSetLiteral;

options {
  language = Dart;
}

@header{part of char_set_literal;}

@members {
List log = new List();
}

a : (A {log.add($A.text);})+ ;
A : [AaBb] ;
WS : (' '|'\n')+ -> skip ;