library basic;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/basic_parser.dart';
part '../grammars/basic_lexer.dart';
part '../grammars/basic_listener.dart';
part '../grammars/basic_base_listener.dart';

main() {
  test("testBasic", () {
    var csource = new StringSource("1 2");
    var lexer = new BasicLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new BasicParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = ["(a 1 2)", "1", "2"];
    expect(parser.log, equals(expected));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}

class LeafListener extends BasicBaseListener {
  List log;
  LeafListener(this.log);
  void visitTerminal(TerminalNode node) {
    log.add(node.symbol.text);
  }
}
