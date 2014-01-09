grammar TokenAndRule;

options {
language = Dart;
}

@header{part of token_and_rule;}

@members {
List log = new List();
}

s
@init {buildParseTree = true;}
@after {log.add($r.ctx.toStringTree(this));}
  :r=a ;
a : 'x' {log.add(ruleInvocationStack);};