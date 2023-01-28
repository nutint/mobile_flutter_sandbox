import 'package:test/test.dart';

void main()
{
  group('Strings', () {
    test('string object initialization', () {
      var string1 = 'Single quote';
      var string2 = "Double quote";
      var string3 = 'Single quote need escape\'s';
      var string4 = "Double quote no need to escape single quote'";
      var string5 = "Double quote escape\"";

      expect([string1, string2, string3, string4, string5]
          .any((element) => element != ''), true);
    });

    test('string interpolation', () {
      const string1 = 'John smith';

      const actual = 'hello $string1';

      expect(actual, 'hello John smith');
    });

    test('string interpolation with 2nd example', () {
      const string1 = 'John Smith';

      var actual = 'hello ${string1.toUpperCase()}';

      expect(actual, 'hello JOHN SMITH');
    });

    test('multi line string', () {
      const firstMultiline = '''
        this is multi line
        string
        ''';

      const secondMultiLine = """
        this is multi line
        string
        """;

      expect(firstMultiline, secondMultiLine);
    });
  });
}