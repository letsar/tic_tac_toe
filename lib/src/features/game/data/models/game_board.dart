import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tic_tac_toe/src/features/game/data/models/game_status.dart';
import 'package:tic_tac_toe/src/features/game/data/models/player.dart';

part 'game_board.freezed.dart';

/// Represents a board in a Tic Tac Toe game.
@freezed
class GameBoard with _$GameBoard {
  const factory GameBoard._playedBy({
    required List<Player?> playedBy,
  }) = _GameBoard;

  const GameBoard._();

  static const initial = GameBoard._playedBy(
      playedBy: [null, null, null, null, null, null, null, null, null]);

  Player? playerAt(int index) {
    return playedBy[index];
  }

  GameBoard makeMove(int index, Player player) {
    if (!canMakeMove(index)) {
      // Illegal move. The board remains unchanged.
      return this;
    }
    final newList = List<Player?>.from(playedBy, growable: false);
    newList[index] = player;
    return GameBoard._playedBy(playedBy: newList);
  }

  bool canMakeMove(int index) {
    return playedBy[index] == null;
  }

  GameStatus nextGameStatus(int lastMoveIndex) {
    final player = playedBy[lastMoveIndex];
    if (player == null) {
      throw StateError('No player found for the last move');
    }

    final won = isWinning(lastMoveIndex);
    if (won) {
      return GameStatus.gameOver(winner: player);
    }

    if (playedBy.any((x) => x == null)) {
      return GameStatus.playing(
        currentPlayer: player == Player.one ? Player.two : Player.one,
      );
    } else {
      return const GameStatus.gameOver(
        winner: null,
      );
    }
  }

  bool isWinning(int index) {
    final player = playedBy[index];
    if (player == null) {
      return false;
    }

    final row = index ~/ 3;
    final col = index % 3;
    final onDiag1 = index % 4 == 0;
    final onDiag2 = index == 2 || index == 4 || index == 6;

    final won = _rowWon(row) ||
        _colWon(col) ||
        (onDiag1 && _diag1Won()) ||
        (onDiag2 && _diag2Won());

    return won;
  }

  bool _rowWon(int rowIndex) {
    return _patternWon(rowIndex * 3, 1);
  }

  bool _colWon(int colIndex) {
    return _patternWon(colIndex, 3);
  }

  bool _diag1Won() {
    return _patternWon(0, 4);
  }

  bool _diag2Won() {
    return _patternWon(2, 2);
  }

  bool _patternWon(int firstIndex, int pattern) {
    final player = playedBy[firstIndex];
    return playedBy[firstIndex + pattern] == player &&
        playedBy[firstIndex + 2 * pattern] == player;
  }
}
