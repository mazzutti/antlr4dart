grammar ReturnValues;
options {
  language = Dart;
}

@header{part of return_values;}

a returns [String foo, String bar]: A
{$foo = "foo";
$bar = "bar";}
    ;

A: 'a'..'z';

WS  :
        (   ' '
        |   '\t'
        |  ( '\n'
            |	'\r\n'
            |	'\r'
            )
        )+ -> channel(HIDDEN)
    ;    

