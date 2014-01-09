grammar DependentPred2;

options {
  language = Dart;
}

@header{part of dependent_pred2;}

@members {
List log = new List();
void f(s) {log.add(s);}
bool p(v) {log.add("eval=\$v"); return v;}
}

s : a[99] ;
a[int i] : e {p($i==99)}? {f("parse");} '!' ;
b[int i] : e {p($i==99)}? ID ;
e : ID | ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') -> skip ;
