grammar LRWithLabels;

options {
language = Dart;
}

@header{part of lr_with_labels;}

@members {
List log = new List();
}

s
@after {log.add($r.ctx.toStringTree(this));
ParseTreeWalker walker = new ParseTreeWalker();
walker.walk(new LeafListener(log), $r.ctx);}

: r=e ;
e : e '(' eList ')' # Call
  | INT             # Int
  ;     
eList : e (',' e)* ;
MULT: '*' ;
ADD : '+' ;
INT : [0-9]+ ;
WS : [ \t\n]+ -> skip ;