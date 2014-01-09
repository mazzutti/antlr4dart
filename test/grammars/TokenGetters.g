grammar TokenGetters;

options {
language = Dart;
}

@header{part of token_getters;}

@members {
List log = new List();
}

s
@after {log.add($r.ctx.toStringTree(this));
ParseTreeWalker walker = new ParseTreeWalker();
walker.walk(new LeafListener(log), $r.ctx);}
  : r=a ;
a : INT INT
  | ID
  ;
MULT: '*' ;
ADD : '+' ;
INT : [0-9]+ ;
ID  : [a-z]+ ;
WS  :  [ \t\n]+ -> skip ;