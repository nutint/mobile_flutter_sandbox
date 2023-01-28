import 'package:test/test.dart';

void main()
{
  group('functions', () {
    test('named parameters', () {
      int add({
        required int a,
        required int b,
      }) {
        return a + b;
      }

      expect(add(a: 1, b: 1), 2);
    });
  });
}