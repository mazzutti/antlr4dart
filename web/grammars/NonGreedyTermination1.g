lexer grammar NonGreedyTermination1;

options {
language = Dart;
}

@header {part of non_greedy_termination1;}

STRING : '\"' ('\"\"' | .)*? '\"';