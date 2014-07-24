grammar SimulateTail;

options {
language = Dart;
}

@header {part of simulate_tail;}

@members {
List log = new List();
}

prog
@init {interpreter.predictionMode = PredictionMode.LL_EXACT_AMBIG_DETECTION;}
: expr_or_assign*;
expr_or_assign
    :   expr '++' {log.add("fail.");}
    |   expr {log.add("pass: \${$expr.text}");}
    ;
expr: expr_primary ('<-' ID)? ;
expr_primary
    : '(' ID ')'
    | ID '(' ID ')'
    | ID
    ;
ID  : [a-z]+ ;