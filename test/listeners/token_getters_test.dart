library token_getters;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/token_getters_parser.dart';
part '../grammars/token_getters_lexer.dart';
part '../grammars/token_getters_listener.dart';
part '../grammars/token_getters_base_listener.dart';

main() {
  test("testTokenGetters1", () {
    var csource = new StringSource("1 2");
    var lexer = new TokenGettersLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new TokenGettersParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = ["(a 1 2)", "1 2 [1, 2]"];
    expect(parser.log, equals(expected));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });

  test("testTokenGetters2", () {
    var csource = new StringSource("abc");
    var lexer = new TokenGettersLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new TokenGettersParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.s();
    var expected = ["(a abc)", "[@0,0:2='abc',<4>,1:0]"];
    expect(parser.log, equals(expected));
    expect(errorListener.errorMessages.isEmpty, isTrue);
  });
}

class LeafListener extends TokenGettersBaseListener {
  List log;
  LeafListener(this.log);
  void exitA(AContext ctx) {
    if (ctx.childCount == 2)
      log.add("${ctx.getINT(0).symbol.text} ${ctx.getINT(1).symbol.text} ${ctx.getINTs()}");
    else log.add(ctx.getID().symbol.toString());
  }
}
