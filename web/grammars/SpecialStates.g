grammar SpecialStates;
options {
  language = Dart;
}

@header{part of special_states;}

@members {
bool cond = true;

void recover(dynamic e) {
  throw e;
}
}

r
    : ( {cond}? NAME
        | {!cond}? NAME WS+ NAME
      )
      ( WS+ NAME )?
      EOF
    ;

NAME: ('a'..'z') ('a'..'z' | '0'..'9')+;
NUMBER: ('0'..'9')+;
WS: ' '+;
