library lexer_xml;

import "package:unittest/unittest.dart";
import "package:antlr4dart/antlr4dart.dart";
import '../test_error_listener.dart';

part "../grammars/lexer_xml.dart";

main() {

  test('testValidXML', () {
    var xml =
        "<?xml version='1.0'?>\n"
        "<!DOCTYPE component [\n"
        "<!ELEMENT component (PCDATA|sub)*>\n"
        "<!ATTLIST component\n"
        "          attr CDATA #IMPLIED\n"
        "          attr2 CDATA #IMPLIED\n"
        ">\n"
        "<!ELMENT sub EMPTY>\n"
        "\n"
        "]>\n"
        "<component attr=\"val'ue\" attr2='val\"ue'>\n"
        "<!-- This is a comment -->\n"
        "Text\n"
        "<![CDATA[huhu]]>\n"
        "öäüß\n"
        "&amp;\n"
        "&lt;\n"
        "<?xtal cursor='11'?>\n"
        "<sub/>\n"
        "<sub></sub>\n"
        "</component>\n"
    ;

    var source = new StringSource(xml);
    var lexer = new LexerXML(source);
    var token = lexer.nextToken();
    expect(token.text, equals(xml));
    token = lexer.nextToken();
    expect(token.type, equals(Recognizer.EOF));
  });

  test("testMalformedInput1XML", () {
    var input =
        "<?xml version='1.0'?>\n"
        "<document d>\n"
        "</document>\n";
    var source = new StringSource(input);
    var lexer = new LexerXML(source);
    var errorListener = new TestErrorListener();
    lexer.addErrorListener(errorListener);
    lexer.nextToken();
    lexer.nextToken();
    var expected = [
      r"token recognition error at: '<?xml version='1.0'?>\n<document d>'",
      r"token recognition error at: '\n</'",
      "token recognition error at: 'd'",
      "token recognition error at: 'o'",
      "token recognition error at: 'c'",
      "token recognition error at: 'u'",
      "token recognition error at: 'm'",
      "token recognition error at: 'e'",
      "token recognition error at: 'n'",
      "token recognition error at: 't'",
      "token recognition error at: '>'",
      r"token recognition error at: '\n'"];
    expect(errorListener.errorMessages, equals(expected));
  });

  test("testMalformedInput2XML", () {
    var input =
        "<?tml version='1.0'?>\n"
        "<document>\n"
        "</document>\n";
    var source = new StringSource(input);
    var lexer = new LexerXML(source);
    var errorListener = new TestErrorListener();
    lexer.addErrorListener(errorListener);
    lexer.nextToken();
    lexer.nextToken();
    var expected = [
      "token recognition error at: '<?t'",
      "token recognition error at: 'm'",
      "token recognition error at: 'l'",
      "token recognition error at: ' v'",
      "token recognition error at: 'e'",
      "token recognition error at: 'r'",
      "token recognition error at: 's'",
      "token recognition error at: 'i'",
      "token recognition error at: 'o'",
      "token recognition error at: 'n'",
      "token recognition error at: '='",
      "token recognition error at: '\''",
      "token recognition error at: '1'",
      "token recognition error at: '.'",
      "token recognition error at: '0'",
      "token recognition error at: '\''",
      "token recognition error at: '?'",
      "token recognition error at: '>'"];
    expect(errorListener.errorMessages, equals(expected));
  });

  test("testMalformedInput3XML", () {
    var input =
    "<?xml version='1.0'?>\n"
    "<docu ment attr=\"foo\">\n"
    "</document>\n";
    var source = new StringSource(input);
    var lexer = new LexerXML(source);
    var errorListener = new TestErrorListener();
    lexer.addErrorListener(errorListener);
    lexer.nextToken();
    lexer.nextToken();
    var expected = [
      r"token recognition error at: '<?xml version='1.0'?>\n<docu ment a'",
      "token recognition error at: 't'",
      "token recognition error at: 't'",
      "token recognition error at: 'r'",
      "token recognition error at: '='",
      "token recognition error at: '\"'",
      "token recognition error at: 'f'",
      "token recognition error at: 'o'",
      "token recognition error at: 'o'",
      "token recognition error at: '\"'",
      "token recognition error at: '>'",
      r"token recognition error at: '\n</'",
      "token recognition error at: 'd'",
      "token recognition error at: 'o'",
      "token recognition error at: 'c'",
      "token recognition error at: 'u'",
      "token recognition error at: 'm'",
      "token recognition error at: 'e'",
      "token recognition error at: 'n'",
      "token recognition error at: 't'",
      "token recognition error at: '>'",
      r"token recognition error at: '\n'"];
    expect(errorListener.errorMessages, equals(expected));
  });
}


