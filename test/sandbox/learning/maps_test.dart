import 'package:test/test.dart';

void main()
{
  group('Maps', () {
    test('should be able to spread', () {
      const firstMap = {
        "name": 'John',
        "lastname": 'Smith'
      };

      const secondMap = {
        "phoneNumber": "1234"
      };

      expect({
        ...firstMap,
        ...secondMap,
      }, {
        "name": 'John',
        "lastname": 'Smith',
        "phoneNumber": "1234",
      });
    });
  });
}