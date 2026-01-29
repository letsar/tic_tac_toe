import 'package:tic_tac_toe/src/features/game/domain/entities/game_status.dart';
import 'package:tic_tac_toe/src/features/game/domain/entities/player.dart';
import 'package:tic_tac_toe/src/features/game/domain/entities/tic_tac_toe_game_board.dart';

/// Represents a Tic Tac Toe game session.
///
/// This class manages the state of a Tic Tac Toe game, including the game board
/// and the current status of the game. It knows about the rules of the game and
/// enforces them.
class TicTacToeGameSession {
  TicTacToeGameSession.initial()
    : board = TicTacToeGameBoard(),
      status = const GameStatus.playing(currentPlayer: Player.one);

  TicTacToeGameSession._({
    required this.board,
    required this.status,
  });

  final TicTacToeGameBoard board;
  final GameStatus status;

  /// Indicates whether a move can be made at the given [index].
  ///
  /// Returns true if the move is valid, false otherwise.
  bool canMakeMove(int index) {
    if (!board.isValidIndex(index)) {
      return false;
    }
    return board.playerAt(index) == null;
  }

  /// Makes a move on the game board and returns a new game session
  /// representing the updated game state.
  TicTacToeGameSession makeMove(int index) {
    final currentPlayer = status.whenOrNull(playing: (player) => player);
    if (currentPlayer == null || !canMakeMove(index)) {
      // We cannot make a move.
      return this;
    }

    final newBoard = board.makeMove(index, currentPlayer);
    final newGameStatus = _computeGameStatus(newBoard, index) ?? status;
    return TicTacToeGameSession._(
      board: newBoard,
      status: newGameStatus,
    );
  }

  /// Computes the status of the game after a move.
  ///
  /// Returns null if the last move was invalid.
  GameStatus? _computeGameStatus(TicTacToeGameBoard board, int lastMoveIndex) {
    final player = board.playerAt(lastMoveIndex);
    if (player == null) {
      return null;
    }

    final won = board.isWinningCell(lastMoveIndex);
    if (won) {
      return GameStatus.gameOver(winner: player);
    }

    if (board.hasEmptyCells()) {
      return GameStatus.playing(
        currentPlayer: player == Player.one ? Player.two : Player.one,
      );
    } else {
      return const GameStatus.gameOver(
        winner: null,
      );
    }
  }

  bool isWinningCell(int index) {
    return board.isWinningCell(index);
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
