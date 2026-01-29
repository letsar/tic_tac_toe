import 'package:tic_tac_toe/src/features/game/domain/entities/game_status.dart';
import 'package:tic_tac_toe/src/features/game/domain/entities/player.dart';
import 'package:tic_tac_toe/src/features/game/domain/entities/tic_tac_toe_game_session.dart';

/// Service responsible for managing game turns in a Tic Tac Toe game.
///
/// This service determines which player can make a move at a given position
/// by checking the game state, board validity, and cell availability.
///
/// It encapsulates the turn-taking logic and ensures that moves are only
/// allowed when all conditions are met:
/// - The game is still in progress (not over)
/// - The target cell index is valid (within board bounds)
/// - The target cell is empty (not already occupied)
class GameTurnService {
  /// Determines which player can make a move at the given [index] in the [session].
  ///
  /// Returns the [Player] who can play if all conditions are met:
  /// - The game is currently being played (not in a game over state)
  /// - The [index] is valid (within the bounds of the game board)
  /// - The cell at [index] is empty (not already occupied by any player)
  ///
  /// Returns `null` if any of these conditions fails, indicating that
  /// no move can be made at this position.
  ///
  /// Example:
  /// ```dart
  /// final service = GameTurnService();
  /// final player = service.playerToPlay(session, 4);
  /// if (player != null) {
  ///   // Player can make a move at position 4
  /// }
  /// ```
  Player? playerToPlay(TicTacToeGameSession session, int index) {
    // Check if the index is valid
    if (!session.board.isValidIndex(index)) {
      return null;
    }

    // Check if the cell is empty
    if (session.board.playerAt(index) != null) {
      return null;
    }

    // Returns the current player or null if the game is over.
    return session.status.whenOrNull(playing: (currentPlayer) => currentPlayer);
  }
}
