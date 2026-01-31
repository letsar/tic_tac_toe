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
        board.cellCount,
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

    final row = index ~/ size;
    final col = index % size;

    // Directions are a pair of(row, col)
    const directions = [
      [0, 1], // horizontal
      [1, 0], // vertical
      [1, 1], // main diagonal \
      [1, -1], // anti diagonal /
    ];

    for (final direction in directions) {
      int dr = direction[0];
      int dc = direction[1];
      int count = 1;

      // Forward ray.
      int r = row + dr;
      int c = col + dc;
      while (playerAtCell(r, c) == player) {
        count++;
        r += dr;
        c += dc;
      }

      // Backward ray
      r = row - dr;
      c = col - dc;
      while (playerAtCell(r, c) == player) {
        count++;
        r -= dr;
        c -= dc;
      }

      if (count >= size) {
        return true;
      }
    }

    return false;
  }

  Player? playerAtCell(int row, int col) {
    if (row < 0 || row >= size || col < 0 || col >= size) {
      return null;
    }
    return playerAt(row * size + col);
  }
}
