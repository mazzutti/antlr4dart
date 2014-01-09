grammar AltLoop;

options {
language = Dart;
}

@header{part of alt_loop;}

@members {
List log = new List();
}

s
@init {buildParseTree = true;}
@after {log.add($r.ctx.toStringTree(this));}
  :r=a ;
a : ('x' | 'y')* 'z'
  ;