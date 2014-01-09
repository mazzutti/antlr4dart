grammar Parameters;
options {
  language = Dart;
}

@header{part of parameters;}

a[arg1, arg2] returns [List l]
    : A+ EOF
{$l = [$arg1, $arg2];
$arg1 = "gnarz";}
    ;

A: 'a'..'z';

WS: ' '+ -> channel(HIDDEN);
