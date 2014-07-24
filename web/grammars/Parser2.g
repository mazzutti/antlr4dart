grammar Parser2;
options {
  language = Dart;
}

@header{part of parser2;}

@parser::members {
List events = new List();

void eventMessage(dynamic msg) {
  events.add(msg);
}
}  

document:
        ( declaration
        | call
        )*
        EOF
    ;

declaration:
        'var' t=IDENTIFIER ';' {eventMessage(['decl', $t.text]);}
    ;

call:
        t=IDENTIFIER '(' ')' ';' {eventMessage(['call', $t.text]);}
    ;

IDENTIFIER: ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*;
WS:  (' '|'\r'|'\t'|'\n') -> channel(HIDDEN);
