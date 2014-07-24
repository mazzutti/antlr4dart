grammar Rule;
options {
  language = Dart;
}

@header{part of rule;}

a returns [List bla]
@after {$bla = [$start, $stop, $text];}
    : A+
    ;

A: 'a'..'z';

WS: ' '+ -> channel(HIDDEN);
