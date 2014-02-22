parser grammar MustTrackPrevious3;

options {
language = Dart;
}

@header{library atn_interpreter_test.must_track_previous3;

import "package:antlr4dart/antlr4dart.dart";}

a : (A | A B | A B C) EOF;