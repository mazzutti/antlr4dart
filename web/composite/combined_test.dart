library combined;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/combined_parser.dart';
part '../grammars/combined_lexer.dart';

main() {
  test("testCombinedImportsCombined", () {
    var csource = new StringSource("x 34 9");
    var lexer = new CombinedLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new CombinedParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["S.x"]));
  });
}
