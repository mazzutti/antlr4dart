library interval_set_test;

import 'package:unittest/unittest.dart';
import 'package:antlr4dart/antlr4dart.dart';

main() {
  test('testSingleElement', () {
    IntervalSet s = IntervalSet.ofSingle(99);
    String expecting = "99";
    expect(expecting, equals(s.toString()));
  });

  test('testIsolatedElements', () {
    IntervalSet s = new IntervalSet();
    s.addSingle(1);
    s.addSingle('z');
    s.addSingle('\uFFF0');
    String expecting = "{1, 122, 65520}";
    expect(expecting, equals(s.toString()));
  });

  test('testMixedRangesAndElements', () {
    IntervalSet s = new IntervalSet();
    s.addSingle(1);
    s.add('a','z');
    s.add('0', '9');
    String expecting = "{1, 48..57, 97..122}";
    expect(expecting, equals(s.toString()));
  });

  test('testSimpleAnd', () {
    IntervalSet s = IntervalSet.of(10,20);
    IntervalSet s2 = IntervalSet.of(13,15);
    String expecting = "{13..15}";
    String result = (s.and(s2)).toString();
    expect(result, equals(expecting));
  });

  test('testRangeAndIsolatedElement', () {
    IntervalSet s = IntervalSet.of('a','z');
    IntervalSet s2 = IntervalSet.ofSingle('d');
    String expecting = "100";
    String result = (s.and(s2)).toString();
    expect(result, equals(expecting));
  });

  test('testEmptyIntersection', () {
    IntervalSet s = IntervalSet.of('a','z');
    IntervalSet s2 = IntervalSet.of('0','9');
    String expecting = "{}";
    String result = (s.and(s2)).toString();
    expect(result, equals(expecting));
  });

  test('testEmptyIntersectionSingleElements', () {
    IntervalSet s = IntervalSet.ofSingle('a');
    IntervalSet s2 = IntervalSet.ofSingle('d');
    String expecting = "{}";
    String result = (s.and(s2)).toString();
    expect(result, equals(expecting));
  });

  test('testNotSingleElement', () {
    IntervalSet vocabulary = IntervalSet.of(1,1000);
    vocabulary.add(2000,3000);
    IntervalSet s = IntervalSet.of(50,50);
    String expecting = "{1..49, 51..1000, 2000..3000}";
    String result = (s.complement(vocabulary)).toString();
    expect(result, equals(expecting));
  });

  test('testNotSet', () {
    IntervalSet vocabulary = IntervalSet.of(1,1000);
    IntervalSet s = IntervalSet.of(50,60);
    s.addSingle(5);
    s.add(250,300);
    String expecting = "{1..4, 6..49, 61..249, 301..1000}";
    String result = (s.complement(vocabulary)).toString();
    expect(result, equals(expecting));
  });

  test('testNotEqualSet', () {
    IntervalSet vocabulary = IntervalSet.of(1,1000);
    IntervalSet s = IntervalSet.of(1,1000);
    String expecting = "{}";
    String result = (s.complement(vocabulary)).toString();
    expect(result, equals(expecting));
  });

  test('testNotSetEdgeElement', () {
    IntervalSet vocabulary = IntervalSet.of(1,2);
    IntervalSet s = IntervalSet.ofSingle(1);
    String expecting = "2";
    String result = (s.complement(vocabulary)).toString();
    expect(result, equals(expecting));
  });

  test('testNotSetFragmentedVocabulary', () {
    IntervalSet vocabulary = IntervalSet.of(1,255);
    vocabulary.add(1000,2000);
    vocabulary.addSingle(9999);
    IntervalSet s = IntervalSet.of(50,60);
    s.addSingle(3);
    s.add(250,300);
    s.addSingle(10000); // this is outside range of vocab and should be ignored
    String expecting = "{1..2, 4..49, 61..249, 1000..2000, 9999}";
    String result = (s.complement(vocabulary)).toString();
    expect(result, equals(expecting));
  });

  test('testSubtractOfCompletelyContainedRange', () {
    IntervalSet s = IntervalSet.of(10,20);
    IntervalSet s2 = IntervalSet.of(12,15);
    String expecting = "{10..11, 16..20}";
    String result = (s.subtract(s2)).toString();
    expect(result, equals(expecting));
  });

  test('testSubtractOfOverlappingRangeFromLeft', () {
    IntervalSet s = IntervalSet.of(10,20);
    IntervalSet s2 = IntervalSet.of(5,11);
    String expecting = "{12..20}";
    String result = (s.subtract(s2)).toString();
    expect(result, equals(expecting));
    IntervalSet s3 = IntervalSet.of(5,10);
    expecting = "{11..20}";
    result = (s.subtract(s3)).toString();
    expect(result, equals(expecting));
  });

  test('testSubtractOfOverlappingRangeFromRight', () {
    IntervalSet s = IntervalSet.of(10,20);
    IntervalSet s2 = IntervalSet.of(15,25);
    String expecting = "{10..14}";
    String result = (s.subtract(s2)).toString();
    expect(result, equals(expecting));
    IntervalSet s3 = IntervalSet.of(20,25);
    expecting = "{10..19}";
    result = (s.subtract(s3)).toString();
    expect(result, equals(expecting));
  });

  test('testSubtractOfCompletelyCoveredRange', () {
    IntervalSet s = IntervalSet.of(10,20);
    IntervalSet s2 = IntervalSet.of(1,25);
    String expecting = "{}";
    String result = (s.subtract(s2)).toString();
    expect(result, equals(expecting));
  });

  test('testSubtractOfRangeSpanningMultipleRanges', () {
    IntervalSet s = IntervalSet.of(10,20);
    s.add(30,40);
    s.add(50,60); // s has 3 ranges now: 10..20, 30..40, 50..60
    IntervalSet s2 = IntervalSet.of(5,55); // covers one and touches 2nd range
    String expecting = "{56..60}";
    String result = (s.subtract(s2)).toString();
    expect(expecting, result);
    IntervalSet s3 = IntervalSet.of(15,55); // touches both
    expecting = "{10..14, 56..60}";
    result = (s.subtract(s3)).toString();
    expect(expecting, result);
  });

  test('testSubtractOfWackyRange', () {
    IntervalSet s = IntervalSet.of(0,113);
    s.add(115,200);
    IntervalSet s2 = IntervalSet.of(0,115);
    s2.add(117,200);
    String expecting = "116";
    String result = (s.subtract(s2)).toString();
    expect(result, equals(expecting));
  });

  test('testSimpleEquals', () {
    IntervalSet s = IntervalSet.of(10,20);
    IntervalSet s2 = IntervalSet.of(10,20);
    expect(s, equals(s2));
    IntervalSet s3 = IntervalSet.of(15,55);
    expect(s == s3, isFalse);
  });

  test('testEquals', () {
    IntervalSet s = IntervalSet.of(10,20);
    s.addSingle(2);
    s.add(499,501);
    IntervalSet s2 = IntervalSet.of(10,20);
    s2.addSingle(2);
    s2.add(499,501);
    expect(s, equals(s2));
    IntervalSet s3 = IntervalSet.of(10,20);
    s3.addSingle(2);
    expect(s == s3, isFalse);
  });

  test('testSingleElementMinusDisjointSet' , () {
    IntervalSet s = IntervalSet.of(15,15);
    IntervalSet s2 = IntervalSet.of(1,5);
    s2.add(10,20);
    String expecting = "{}"; // 15 - {1..5, 10..20} = {}
    String result = s.subtract(s2).toString();
    expect(result, equals(expecting));
  });

  test('testMembership', () {
    IntervalSet s = IntervalSet.of(15,15);
    s.add(50,60);
    expect(s.contains(0), isFalse);
    expect(s.contains(20), isFalse);
    expect(s.contains(100), isFalse);
    expect(s.contains(15), isTrue);
    expect(s.contains(55), isTrue);
    expect(s.contains(50), isTrue);
    expect(s.contains(60), isTrue);
  });

  // {2,15,18} & 10..20
  test('testIntersectionWithTwoContainedElements', () {
    IntervalSet s = IntervalSet.of(10,20);
    IntervalSet s2 = IntervalSet.of(2,2);
    s2.addSingle(15);
    s2.addSingle(18);
    String expecting = "{15, 18}";
    String result = (s.and(s2)).toString();
    expect(result, equals(expecting));
  });

  test('testIntersectionWithTwoContainedElementsReversed', () {
    IntervalSet s = IntervalSet.of(10,20);
    IntervalSet s2 = IntervalSet.of(2,2);
    s2.addSingle(15);
    s2.addSingle(18);
    String expecting = "{15, 18}";
    String result = (s2.and(s)).toString();
    expect(result, equals(expecting));
  });

  test('testComplement', () {
    IntervalSet s = IntervalSet.of(100,100);
    s.add(101,101);
    IntervalSet s2 = IntervalSet.of(100,102);
    String expecting = "102";
    String result = (s.complement(s2)).toString();
    expect(result, equals(expecting));
  });

  test('testComplement2', () {
    IntervalSet s = IntervalSet.of(100,101);
    IntervalSet s2 = IntervalSet.of(100,102);
    String expecting = "102";
    String result = (s.complement(s2)).toString();
    expect(result, equals(expecting));
  });

  test('testComplement3', () {
    IntervalSet s = IntervalSet.of(1,96);
    s.add(99, Lexer.MAX_CHAR_VALUE);
    String expecting = "{97..98}";
    String result = (s.complement(IntervalSet.of(1, Lexer.MAX_CHAR_VALUE))).toString();
    expect(result, equals(expecting));
  });

  test('testMergeOfRangesAndSingleValues', () {
    // {0..41, 42, 43..65534}
    IntervalSet s = IntervalSet.of(0,41);
    s.addSingle(42);
    s.add(43,65534);
    String expecting = "{0..65534}";
    String result = s.toString();
    expect(result, equals(expecting));
  });

  test('testMergeOfRangesAndSingleValuesReverse', () {
    IntervalSet s = IntervalSet.of(43,65534);
    s.addSingle(42);
    s.add(0,41);
    String expecting = "{0..65534}";
    String result = s.toString();
    expect(result, equals(expecting));
  });

  test('testMergeWhereAdditionMergesTwoExistingIntervals', () {
    // 42, 10, {0..9, 11..41, 43..65534}
    IntervalSet s = IntervalSet.ofSingle(42);
    s.addSingle(10);
    s.add(0,9);
    s.add(43,65534);
    s.add(11,41);
    String expecting = "{0..65534}";
    String result = s.toString();
    expect(result, equals(expecting));
  });

  test('testMergeWhereAdditionMergesThreeExistingIntervals', () {
    IntervalSet s = new IntervalSet();
    s.addSingle(0);
    s.addSingle(3);
    s.addSingle(5);
    s.add(0, 7);
    String expecting = "{0..7}";
    String result = s.toString();
    expect(result, equals(expecting));
  });

  test('testMergeWithDoubleOverlap', () {
    IntervalSet s = IntervalSet.of(1,10);
    s.add(20,30);
    s.add(5,25); // overlaps two!
    String expecting = "{1..30}";
    String result = s.toString();
    expect(result, equals(expecting));
  });

  test('testSize', () {
    IntervalSet s = IntervalSet.of(20,30);
    s.add(50,55);
    s.add(5,19);
    String expecting = "32";
    String result = s.length.toString();
    expect(result, equals(expecting));
  });

  test('testToList', () {
    IntervalSet s = IntervalSet.of(20,25);
    s.add(50,55);
    s.add(5,5);
    String expecting = "[5, 20, 21, 22, 23, 24, 25, 50, 51, 52, 53, 54, 55]";
    String result = s.toList().toString();
    expect(result, equals(expecting));
  });

  test('testNotRIntersectionNotT', ()  {
    IntervalSet s = IntervalSet.of(0,'s');
    s.add('u',200);
    IntervalSet s2 = IntervalSet.of(0,'q');
    s2.add('s',200);
    String expecting = "{0..113, 115, 117..200}";
    String result = (s.and(s2)).toString();
    expect(result, equals(expecting));
  });

  test('testRmSingleElement', () {
      IntervalSet s = IntervalSet.of(1,10);
      s.add(-3,-3);
      s.remove(-3);
      String expecting = "{1..10}";
      String result = s.toString();
      expect(result, equals(expecting));
  });

  test('testRmLeftSide', () {
      IntervalSet s = IntervalSet.of(1,10);
      s.add(-3,-3);
      s.remove(1);
      String expecting = "{-3, 2..10}";
      String result = s.toString();
      expect(result, equals(expecting));
  });

  test('testRmRightSide', () {
    IntervalSet s = IntervalSet.of(1,10);
    s.add(-3,-3);
    s.remove(10);
    String expecting = "{-3, 1..9}";
    String result = s.toString();
    expect(result, equals(expecting));
  });

  test('testRmMiddleRange', () {
    IntervalSet s = IntervalSet.of(1,10);
    s.add(-3,-3);
    s.remove(5);
    String expecting = "{-3, 1..4, 6..10}";
    String result = s.toString();
    expect(result, equals(expecting));
  });
}
