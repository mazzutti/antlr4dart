grammar Sync;

options {
language = Dart;
}

@header{part of sync;}

@members {
List log = new List();
}

s
@init {buildParseTree = true;}
@after {log.add($r.ctx.toString(this));}
  : r=a ;
a : 'x' 'y'* '!'
  ;
Z : 'z';
