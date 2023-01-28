import 'package:test/test.dart';

void main()
{
  group('Lists', () {
    test('make it const', () {
      var constantList = const [1, 2, 3];

      expect(constantList, [1, 2, 3]);
    });

    test('use with spread', () {
      var constantList = const [1, 2, 3];

      expect(
          [0, ...constantList],
          [0, 1, 2, 3]
      );
    });
  });
}