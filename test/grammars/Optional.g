grammar Optional;

options {
language = Dart;
}

@header {part of optional;}

@parser::members{
List log = new List();
}

stat : ifstat | 'x';
ifstat : 'if' stat ('else' stat)?;
WS : [ \n\t]+ -> skip ;