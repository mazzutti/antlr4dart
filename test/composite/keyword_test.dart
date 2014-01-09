library keyword;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part '../grammars/keyword_lexer.dart';
part '../grammars/keyword_parser.dart';

main() {
  test("testKeywordVSIDOrder", () {
    var csource = new StringSource("abc");
    var lexer = new KeywordLexer(csource);
    var tsource = new CommonTokenSource(lexer);
    var parser = new KeywordParser(tsource);
    var errorListener = new TestErrorListener();
    parser.addErrorListener(errorListener);
    parser.a();
    var expected = [
      "M.A",
      "M.a: [@0,0:2='abc',<1>,1:0]",
    ];
    expect(errorListener.errorMessages.isEmpty, isTrue);
    List found = new List.from(lexer.log)..addAll(parser.log);
    expect(found, equals(expected));
  });
}
