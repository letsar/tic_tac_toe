import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tic_tac_toe/src/features/game/data/models/player.dart';

part 'game_status.freezed.dart';

/// Represents the current status of the game.
@freezed
sealed class GameStatus with _$GameStatus {
  /// Represents a playing state in the game.
  const factory GameStatus.playing({
    /// The player who is currently taking their turn.
    required Player currentPlayer,
  }) = Playing;

  /// Represents a game over state in the game.
  const factory GameStatus.gameOver({
    /// The player who won the game, if any.
    Player? winner,
  }) = GameOver;
}
