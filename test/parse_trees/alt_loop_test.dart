library alt_loop;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/alt_loop_parser.dart";
part "../grammars/alt_loop_lexer.dart";

main() {
  test("test2AltLoop", () {
    var csource = new StringSource("xyyxyxz");
    var lexer = new AltLoopLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new AltLoopParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, ["(a x y y x y x z)"]);
  });
}
