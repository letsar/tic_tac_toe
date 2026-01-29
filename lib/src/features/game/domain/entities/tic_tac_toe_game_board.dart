import 'dart:collection';

import 'package:tic_tac_toe/src/features/game/domain/entities/player.dart';

/// Represents a board where a cell can be occupied by a player.
///
/// The board knows nothing about the rules except there can be, at most, only
/// one player occupying a cell at a time.
class TicTacToeGameBoard {
  TicTacToeGameBoard()
    : this._(
        playedBy: UnmodifiableListView(List.filled(rows * columns, null)),
      );

  TicTacToeGameBoard._({
    required UnmodifiableListView<Player?> playedBy,
  }) : _playedBy = playedBy;

  /// The number of rows in the game board.
  static const int rows = 3;

  /// The number of columns in the game board.
  static const int columns = 3;

  /// Where each player has made their moves on the board.
  final UnmodifiableListView<Player?> _playedBy;

  /// Indicates whether the given [index] is within the bounds of the game
  /// board.
  bool isValidIndex(int index) {
    return index >= 0 && index < (rows * columns);
  }

  /// Returns the player at the given [index].
  ///
  /// If [index] is out of the bounds, null is returned.
  Player? playerAt(int index) {
    if (!isValidIndex(index)) {
      return null;
    }

    return _playedBy[index];
  }

  /// Returns a new [TicTacToeGameBoard] with the move made by the [player] at
  /// the given[index].
  ///
  /// If the index is not valid, the same board is returned.
  TicTacToeGameBoard makeMove(int index, Player player) {
    if (!isValidIndex(index)) {
      return this;
    }

    final newList = List<Player?>.from(_playedBy, growable: false);
    newList[index] = player;
    return TicTacToeGameBoard._(
      playedBy: UnmodifiableListView(newList),
    );
  }

  bool hasEmptyCells() {
    return _playedBy.any((player) => player == null);
  }
}
