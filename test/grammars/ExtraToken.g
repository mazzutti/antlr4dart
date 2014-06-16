grammar ExtraToken;

options {
language = Dart;
}

@header{part of extra_token;}

@members {
List log = new List();
}

s
@init {buildParseTree = true;}
@after {log.add($r.ctx.toString(this));}
  : r=a ;
a : 'x' 'y'
  ;
Z : 'z';