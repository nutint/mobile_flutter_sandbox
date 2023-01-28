import 'package:equatable/equatable.dart';

enum Score {
  Love,
  Fifteen,
  Thirty,
}

class TennisCalculator {
  static InitialTennisGame build({
    Score? playerAScore,
    Score? playerBScore,
  }) {
    return InitialTennisGame(
      playerAScore: playerAScore ?? Score.Love,
      playerBScore: playerBScore ?? Score.Love,
    );
  }
}

class InitialTennisGame extends Equatable{
  final Score playerAScore;
  final Score playerBScore;

  const InitialTennisGame({
    required this.playerAScore,
    required this.playerBScore,
  });

  @override
  List<Object?> get props => [playerAScore, playerBScore];
}