grammar NoViableAlt;

options {
language = Dart;
}

@header{part of no_viable_alt;}

@members {
List log = new List();
}

s
@init {buildParseTree = true;}
@after {log.add($r.ctx.toStringTree(this));}
  : r=a ;
a : 'x' | 'y'
  ;
Z : 'z';