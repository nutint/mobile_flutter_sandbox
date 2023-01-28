import 'package:test/test.dart';
import 'package:my_app/sandbox/tennis.dart';

void main() {
  group('TennisScoreCalculator', () {
    group('build', () {
      test('should be able to init with score', () {
        var actual = TennisCalculator.build();

        expect(actual, const InitialTennisGame(
          playerAScore: Score.love,
          playerBScore: Score.love,
        ));
      });

      test('should be able to init with initial score and mark it as initial', () {
        var actual = TennisCalculator.build(
          playerAScore: Score.love,
          playerBScore: Score.love,
        );

        expect(actual, const InitialTennisGame(
          playerAScore: Score.love,
          playerBScore: Score.love,
        ));
      });

      test('should be able to init with playing start when non nil, but not deuced', () {
        var actual = TennisCalculator.build(
          playerAScore: Score.fifteen,
          playerBScore: Score.love,
        );

        expect(actual, const PlayingTennisGame(
          playerAScore: Score.fifteen,
          playerBScore: Score.love,
        ));
      });

      test('should be able to init with deuce when both player score is Forty and Forty', () {
        var actual = TennisCalculator.build(
          playerAScore: Score.forty,
          playerBScore: Score.forty,
        );

        expect(actual, const DeuceTennisGame());
      });

      test('should be able to init with player A advantage', () {
        var actual = TennisCalculator.buildPlayerAAdvantage();

        expect(actual, const PlayerAAdvantageTennisGame());
      });

      test('should be able to init with player B advantage', () {
        var actual = TennisCalculator.buildPlayerBAdvantage();

        expect(actual, const PlayerBAdvantageTennisGame());
      });

      test('should be able to init with player A Won', () {
        var actual = TennisCalculator.buildPlayerAWon();

        expect(actual, const PlayerAWonTennisGame());
      });

      test('should be able to init with player B Won', () {
        var actual = TennisCalculator.buildPlayerBWon();

        expect(actual, const PlayerBWonTennisGame());
      });
    });
  });
}
