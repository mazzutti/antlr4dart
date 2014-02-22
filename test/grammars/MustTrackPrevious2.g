parser grammar MustTrackPrevious2;

options {
language = Dart;
}

@header{library atn_interpreter_test.must_track_previous2;

import "package:antlr4dart/antlr4dart.dart";}

a : A | A B | A B C ;