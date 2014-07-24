library star_set;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/star_set_parser.dart';
part '../grammars/star_set_lexer.dart';

main() {
  test("testStarSet", () {
    var csource = new StringSource("abaac");
    var lexer = new StarSetLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new StarSetParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["abaac"]));
  });
}
