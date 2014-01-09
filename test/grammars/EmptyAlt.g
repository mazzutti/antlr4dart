grammar EmptyAlt;
options {
  language = Dart;
}

@header{part of empty_alt;}

@members {
bool cond = true;
}


r
    : NAME 
        ( {cond}? WS+ NAME
        | 
        )
        EOF
    ;

NAME: ('a'..'z') ('a'..'z' | '0'..'9')+;
NUMBER: ('0'..'9')+;
WS: ' '+;
