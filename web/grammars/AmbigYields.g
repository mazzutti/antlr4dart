grammar AmbigYields;

options {
language = Dart;
}

@header {part of ambig_yields;}

s
  : ID | ID {;} ;
ID : 'a'..'z'+ ;
WS : (' '|'\t'|'\n')+ -> skip ;