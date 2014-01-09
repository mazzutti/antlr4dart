library unpredicated3;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/unpredicated3_parser.dart";
part "../grammars/unpredicated3_lexer.dart";

main() {
  test("testUnpredicatedPathsInAlt", () {
    var csource = new StringSource("x 4");
    var lexer = new Unpredicated3Lexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new Unpredicated3Parser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["alt 1"]));
  });
}
