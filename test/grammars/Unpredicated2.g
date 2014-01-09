grammar Unpredicated2;

options {
  language = Dart;
}

@header{part of unpredicated2;}

@members {
List log = new List();
}

s : {interpreter.predictionMode = PredictionMode.LL_EXACT_AMBIG_DETECTION;}
a ';' a;
a :  ID {log.add("alt 1");}
  |  ID {log.add("alt 2");}
  | {false}? ID {log.add("alt 3");}
  ;
ID : 'a'..'z'+ ;
INT : '0'..'9'+;
WS : (' '|'\n') -> skip ;