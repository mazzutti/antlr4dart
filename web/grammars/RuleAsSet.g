grammar RuleAsSet;

options {
  language = Dart;
}

@header{part of rule_as_set;}

@members {
List log = new List();
}

a @after {log.add(inputSource.text);} : 'a' | 'b' |'c' ;