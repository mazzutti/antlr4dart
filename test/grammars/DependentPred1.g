grammar DependentPred1;

options {
  language = Dart;
}

@header{part of dependent_pred1;}

@members {
List log = new List();
}

s : b[2] ';' |  b[2] '.' ;
b[int i] : a[i] ;
a[int i]
  : {$i==1}? ID {log.add("alt 1");}
  | {$i==2}? ID {log.add("alt 2");}
  ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') -> skip ;