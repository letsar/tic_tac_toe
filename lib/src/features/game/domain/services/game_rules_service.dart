import 'dart:collection';

import 'package:tic_tac_toe/src/features/game/domain/entities/game_status.dart';
import 'package:tic_tac_toe/src/features/game/domain/entities/player.dart';
import 'package:tic_tac_toe/src/features/game/domain/entities/tic_tac_toe_game_board.dart';

/// Service that contains the game rules and logic for determining game outcomes.
///
/// This service is responsible for:
/// - Checking if a move results in a win
/// - Computing the next game status after a move
///
/// By extracting this logic from the entity, we can:
/// - Test the rules independently
/// - Reuse the logic across different use cases
/// - Keep the entity focused on data integrity
class GameRulesService {
  /// Checks if the given [board] has a winning pattern at [index].
  bool isWinningCell(TicTacToeGameBoard board, int index) {
    return board.isWinningCell(index);
  }

  /// Computes the next game status after a move at [index] on [board].
  ///
  /// Returns the new status based on game rules:
  /// - If the move wins, returns GameOver with winner
  /// - If the board is full, returns GameOver with no winner (draw)
  /// - Otherwise, returns Playing with the next player
  GameStatus computeStatusAfterMove(
    TicTacToeGameBoard board,
    int index,
    Player currentPlayer,
  ) {
    if (isWinningCell(board, index)) {
      final winningCells = List<int>.generate(
        TicTacToeGameBoard.cellCount,
        (i) => i,
      ).where((i) => isWinningCell(board, i));

      return GameStatus.gameOver(
        winner: currentPlayer,
        winningCells: UnmodifiableListView(winningCells),
      );
    }

    // If the board is full and the last move is not a winning move, it's a draw.
    if (!board.hasEmptyCells()) {
      return GameStatus.gameOver(
        winner: null,
        winningCells: UnmodifiableListView(const []),
      );
    }

    return GameStatus.playing(
      currentPlayer: currentPlayer == Player.one ? Player.two : Player.one,
    );
  }
}

extension on TicTacToeGameBoard {
  bool isWinningCell(int index) {
    final player = playerAt(index);
    if (player == null) {
      return false;
    }

    final row = index ~/ 3;
    final col = index % 3;
    final onDiag1 = index % 4 == 0;
    final onDiag2 = index == 2 || index == 4 || index == 6;

    final won =
        rowWon(row) ||
        colWon(col) ||
        (onDiag1 && diag1Won()) ||
        (onDiag2 && diag2Won());

    return won;
  }

  bool rowWon(int rowIndex) {
    return patternWon(rowIndex * 3, 1);
  }

  bool colWon(int colIndex) {
    return patternWon(colIndex, 3);
  }

  bool diag1Won() {
    return patternWon(0, 4);
  }

  bool diag2Won() {
    return patternWon(2, 2);
  }

  bool patternWon(int firstIndex, int pattern) {
    final player = playerAt(firstIndex);
    return playerAt(firstIndex + pattern) == player &&
        playerAt(firstIndex + 2 * pattern) == player;
  }
}
