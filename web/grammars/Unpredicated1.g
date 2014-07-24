grammar Unpredicated1;

options {
  language = Dart;
}

@header{part of unpredicated1;}

@members {
List log = new List();
}

s : {interpreter.predictionMode = PredictionMode.LL_EXACT_AMBIG_DETECTION;}
a ';' a ';' a;
a : INT {log.add("alt 1");}
  | ID {log.add("alt 2");}
  | ID {log.add("alt 3");}
  | {false}? ID {log.add("alt 4");}
  ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') -> skip ;