lexer grammar NonGreedyTermination2;

options {
language = Dart;
}

@header {part of non_greedy_termination2;}

STRING : '\"' ('\"\"' | .)+? '\"';