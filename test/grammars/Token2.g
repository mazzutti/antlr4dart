grammar Token2;

options {
language = Dart;
}

@header{part of token2;}

@members {
List log = new List();
}

s
@init {buildParseTree = true;}
@after {log.add($r.ctx.toStringTree(this));}
  :r=a 
  ;
a : 'x' 'y'
  ;