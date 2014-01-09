grammar PredTested;

options {
  language = Dart;
}

@header{part of pred_tested;}

@members {
List log = new List();
bool enumKeyword = true;
}

primary
   :   ID {log.add("ID \${$ID.text}");}
   |   {!enumKeyword}? 'enum' {log.add("enum");}
   ;
ID : [a-z]+ ;
WS : [ \t\n\r]+ -> skip ;