grammar AmbigYields;

options {
language = Dart;
}

@header {part of ambig_yields;}

@members {
List log = new List();
}

s
@after {log.add(dumpDfa(false));}
  : ID | ID {;} ;
ID : 'a'..'z'+ ;
WS : (' '|'\t'|'\n')+ -> skip ;