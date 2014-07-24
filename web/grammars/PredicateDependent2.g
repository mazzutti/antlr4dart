grammar PredicateDependent2;

options {
  language = Dart;
}

@header{part of predicate_dependent2;}

@members {
List log = new List();
}

s : a[2] a[1];
a[int i]
  : {$i==1}? ID
  | {$i==2}? ID
  ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') -> skip ;