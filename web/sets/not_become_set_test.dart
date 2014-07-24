library not_become_set;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/not_become_set_parser.dart';
part '../grammars/not_become_set_lexer.dart';

main() {
  test("testSeqDoesNotBecomeSet", () {
    var csource = new StringSource("34");
    var lexer = new NotBecomeSetLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new NotBecomeSetParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    expect(errorListener.errorMessages.isEmpty, isTrue);
    expect(parser.log, equals(["34"]));
  });
}
