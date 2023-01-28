import 'package:test/test.dart';
import 'package:my_app/sandbox/tennis.dart';

void main()
{
  group('tennisCalculator', () {
    test('should be able to init with score', () {
      var actual = tennisCalculator(
        playerA: 1,
        playerB: 1
      );
      expect(actual, 2);
    });
  });
}