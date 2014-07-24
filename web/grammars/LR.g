grammar LR;

options {
language = Dart;
}

@header{part of lr;}

@members {
List log = new List();
}

s
@after {log.add($r.ctx.toString(this));
ParseTreeWalker walker = new ParseTreeWalker();
walker.walk(new LeafListener(log), $r.ctx);}

: r=e ;
e : e op='*' e
  | e op='+' e
  | INT
  ;
MULT: '*' ;
ADD : '+' ;
INT : [0-9]+ ;
WS : [ \t\n]+ -> skip ;
