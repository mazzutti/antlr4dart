grammar PredicatedIfIfElse;

options {
language = Dart;
}

@header {part of predicated_if_if_else;}

s : stmt EOF ;
stmt : ifStmt | ID;
ifStmt : 'if' ID stmt ('else' stmt | {inputSource.lookAhead(1) != ELSE}?);
ELSE : 'else';
ID : [a-zA-Z]+;
WS : [ \n\t]+ -> skip;