import 'package:tic_tac_toe/src/shared/game/domain/entities/game_status.dart';
import 'package:tic_tac_toe/src/shared/game/domain/entities/tic_tac_toe_game_board.dart';

/// Represents a Tic Tac Toe game session.
///
/// This class manages the state of a Tic Tac Toe game, including the game board
/// and the current status of the game.
class TicTacToeGameSession {
  /// Creates a game session from a board and status.
  ///
  /// This constructor is typically used by domain services to create
  /// a new game state after validating and computing the next status.
  const TicTacToeGameSession({
    required this.board,
    required this.status,
  });

  final TicTacToeGameBoard board;
  final GameStatus status;

  bool isWinningCell(int index) {
    return status.maybeMap(
      gameOver: (x) => x.winningCells.contains(index),
      orElse: () => false,
    );
  }
}
