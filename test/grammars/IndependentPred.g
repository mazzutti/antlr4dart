grammar IndependentPred;

options {
  language = Dart;
}

@header{part of independent_pred;}

@members {
List log = new List();
}

s : b ';' |  b '.' ;
b : a ;
a
  : {false}? ID {log.add("alt 1");}
  | {true}? ID {log.add("alt 2");}
  ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') -> skip ;