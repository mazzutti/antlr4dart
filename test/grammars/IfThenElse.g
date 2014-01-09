grammar IfThenElse;

options {
language = Dart;
}

@header {part of if_then_else;}

@members {
List log = new List();
}

s
@init {interpreter.predictionMode = PredictionMode.LL_EXACT_AMBIG_DETECTION;}
@after {log.add(dumpDfa(false));}
    : '{' stat* '}'
    ;
stat: 'if' ID 'then' stat ('else' ID)?
    | 'return'
    ;
ID : 'a'..'z'+ ;
WS : (' '|'\t'|'\n')+ -> skip ;