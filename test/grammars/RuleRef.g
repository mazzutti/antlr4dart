grammar RuleRef;

options {
language = Dart;
}

@header{part of rule_ref;}

@members {
List log = new List();
}

s
@init {buildParseTree = true;}
@after {log.add($r.ctx.toStringTree(this));}
  : r=a ;
a : b 'x'
  ;
b : 'y' ;