import 'package:equatable/equatable.dart';

enum Score {
  love,
  fifteen,
  thirty,
  forty,
}

class TennisCalculator {
  static TennisGame build({
    Score? playerAScore,
    Score? playerBScore,
  }) {
    var calculatedPlayerAScore = playerAScore ?? Score.love;
    var calculatedPlayerBScore = playerBScore ?? Score.love;

    if(calculatedPlayerAScore == Score.love && calculatedPlayerBScore == Score.love) {
      return InitialTennisGame(
        playerAScore: calculatedPlayerAScore,
        playerBScore: calculatedPlayerBScore,
      );
    } else if(calculatedPlayerAScore == Score.forty && calculatedPlayerBScore == Score.forty) {
      return const DeuceTennisGame();
    } else {
      return PlayingTennisGame(
        playerAScore: calculatedPlayerAScore,
        playerBScore: calculatedPlayerBScore,
      );
    }
  }

  static PlayerAAdvantageTennisGame buildPlayerAAdvantage() =>
    const PlayerAAdvantageTennisGame();

  static PlayerBAdvantageTennisGame buildPlayerBAdvantage() =>
    const PlayerBAdvantageTennisGame();

  static PlayerAWonTennisGame buildPlayerAWon() => const PlayerAWonTennisGame();
  static PlayerBWonTennisGame buildPlayerBWon() => const PlayerBWonTennisGame();
}

class TennisGame extends Equatable {
  final Score playerAScore;
  final Score playerBScore;

  const TennisGame({
    required this.playerAScore,
    required this.playerBScore,
  });

  @override
  List<Object?> get props => [playerAScore, playerBScore];
}

class InitialTennisGame extends TennisGame {
  const InitialTennisGame({
    required playerAScore,
    required playerBScore,
  }) : super(playerAScore: playerAScore, playerBScore: playerBScore);
}

class PlayingTennisGame extends TennisGame {
  const PlayingTennisGame({
    required playerAScore,
    required playerBScore,
  }) : super(playerAScore: playerAScore, playerBScore: playerBScore);
}

class DeuceTennisGame extends TennisGame {
  const DeuceTennisGame()
    : super(playerAScore: Score.forty, playerBScore: Score.forty);
}

class PlayerAAdvantageTennisGame extends TennisGame {
  const PlayerAAdvantageTennisGame()
    : super(playerAScore: Score.love, playerBScore: Score.love);
}

class PlayerBAdvantageTennisGame extends TennisGame {
  const PlayerBAdvantageTennisGame()
    : super(playerAScore: Score.love, playerBScore: Score.love);
}

class PlayerAWonTennisGame extends TennisGame {
  const PlayerAWonTennisGame()
    : super(playerAScore: Score.love, playerBScore: Score.love);
}

class PlayerBWonTennisGame extends TennisGame {
  const PlayerBWonTennisGame()
    : super(playerAScore: Score.love, playerBScore: Score.love);
}
