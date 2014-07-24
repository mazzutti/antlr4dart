grammar PredicateDependent1;

options {
  language = Dart;
}

@header{part of predicate_dependent1;}

@members {
List log = new List();
int i=0;
}

s : a[2] a[1];
a[int i]
  : {$i==1}? ID {log.add("alt 1");}
  | {$i==2}? ID {log.add("alt 2");}
  ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') -> skip ;
