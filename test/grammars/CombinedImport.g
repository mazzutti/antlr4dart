parser grammar CombinedImport;

@members {
List log = new List();
}

tokens { A, B, C }
x : 'x' INT {log.add("S.x");} ;
INT : '0'..'9'+ ;
WS : (' '|'\n') -> skip ;