grammar ExprAmbiguity;

options {
language = Dart;
}

@header {part of expr_ambiguity;}

@members {
List log = new List();
}

s
@init {interpreter.predictionMode = PredictionMode.LL_EXACT_AMBIG_DETECTION;}
    :   expr[0] {log.add($expr.ctx.toString(this));} ;
expr[int _p]
    :   ID
        ( {5 >= $_p}? '*' expr[6]
        | {4 >= $_p}? '+' expr[5]
        )*
    ;
ID  :   [a-zA-Z]+ ; // match identifiers
WS  :   [ \t\r\n]+ -> skip ; // toss out whitespace