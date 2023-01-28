import 'package:test/test.dart';
import 'package:my_app/sandbox/tennis.dart';

void main()
{
  group('tennisCalculator', () {
    test('should be able to init with score', () {
      var actual = TennisCalculator.build();

      expect(actual, const InitialTennisGame(
        playerAScore: Score.Love,
        playerBScore: Score.Love,
      ));
    });

    test('should be able to init with score', () {
      var actual = TennisCalculator.build(
        playerAScore: Score.Fifteen,
        playerBScore: Score.Thirty,
      );

      expect(actual, const InitialTennisGame(
          playerAScore: Score.Fifteen,
          playerBScore: Score.Thirty,
      ));
    });

    test('equality', () {
      expect(
        const InitialTennisGame(playerAScore: Score.Love, playerBScore: Score.Love),
        const InitialTennisGame(playerAScore: Score.Love, playerBScore: Score.Love)
      );
    });
  });
}