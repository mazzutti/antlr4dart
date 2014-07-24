grammar IfThenElse;

options {
language = Dart;
}

@header {part of if_then_else;}

s
@init {interpreter.predictionMode = PredictionMode.LL_EXACT_AMBIG_DETECTION;}
    : '{' stat* '}'
    ;
stat: 'if' ID 'then' stat ('else' ID)?
    | 'return'
    ;
ID : 'a'..'z'+ ;
WS : (' '|'\t'|'\n')+ -> skip ;