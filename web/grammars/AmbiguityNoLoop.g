grammar AmbiguityNoLoop;

options {
language = Dart;
}

@header {part of ambiguity_no_loop;}

@members {
List log = new List();
}

prog
@init {interpreter.predictionMode = PredictionMode.LL_EXACT_AMBIG_DETECTION;}
    : expr expr {log.add("alt 1");}
    | expr
    ;
expr: '@'
    | ID '@'
    | ID
    ;
ID  : [a-z]+ ;
WS  : [ \r\n\t]+ -> skip ;