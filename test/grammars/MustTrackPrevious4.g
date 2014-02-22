parser grammar MustTrackPrevious4;

options {
language = Dart;
}

@header{library atn_interpreter_test.must_track_previous4;

import "package:antlr4dart/antlr4dart.dart";}

a : A B | A | A B C ;