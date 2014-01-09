grammar RuleLabel;
options {
  language = Dart;
}

@header{part of rule_label;}

a returns [List bla]: t=b{$bla = [$t.start, $t.stop, $t.text];}
    ;

b: A+;

A: 'a'..'z';

WS: ' '+  -> channel(HIDDEN);
