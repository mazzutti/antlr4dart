library sync;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/sync_parser.dart";
part "../grammars/sync_lexer.dart";

main() {
  test("testSync", () {
    var csource = new StringSource("xzyy!");
    var lexer = new SyncLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new SyncParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = ["extraneous input 'z' expecting {'y', '!'}"];
    expect(errorListener.errorMessages, equals(expected));
    expect(parser.log, ["(a x z y y !)"]);
  });
}
