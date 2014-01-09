parser grammar MustTrackPrevious4;

options {
language = Dart;
}

@header{part of atn_interpreter_test;}

a : A B | A | A B C ;