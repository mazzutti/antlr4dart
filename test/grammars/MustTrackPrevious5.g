parser grammar MustTrackPrevious5;

options {
language = Dart;
}

@header{part of atn_interpreter_test;}

a : (A B | A | A B C) EOF;