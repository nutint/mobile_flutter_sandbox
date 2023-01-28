import 'package:test/test.dart';

void main()
{
  group('variables in dart', () {
    test('defining variables could done in different way', () {
      var name = 'Bob';
      Object nameObject = 'Bob';
      String nameString = 'Bob';

      expect(name, 'Bob');
      expect(nameObject, 'Bob');
      expect(nameString, 'Bob');
    });

    test('defining nullable value', () {
      int? lineCount;

      expect(lineCount, null);
    });

    test('defining non nullable value', () {
      int lineCount = 1;

      expect(lineCount, 1);
    });

    group('late variables', () {
      test('define and then assign later', () {
        late String description;
        description = 'abc';

        expect(description, 'abc');
      });
    });
  });
}