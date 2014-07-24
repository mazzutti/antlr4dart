grammar RuleGetters;

options {
language = Dart;
}

@header{part of rule_getters;}

@members {
List log = new List();
}

s
@after {log.add($r.ctx.toString(this));
ParseTreeWalker walker = new ParseTreeWalker();
walker.walk(new LeafListener(log), $r.ctx);}
: r=a ;
a : b b  // forces list
  | b   // a list still
  ;
b : ID | INT ;
MULT: '*' ;
ADD : '+' ;
INT : [0-9]+ ;
ID  : [a-z]+ ;
WS : [ \t\n]+ -> skip ;