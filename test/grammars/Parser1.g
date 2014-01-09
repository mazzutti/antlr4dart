grammar Parser1;

@header{part of parser1;}

@parser::members {
List identifiers = new List();

List reportedErrors = new List();

void foundIdentifier(String name) {
  identifiers.add(name);
}

void emitErrorMessage(String msg) {
  reportedErrors.add(msg);
}
}

document:
        t=IDENTIFIER {foundIdentifier($t.text);}
        ;

IDENTIFIER: ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_')*;
