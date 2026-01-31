import 'dart:collection';

import 'package:tic_tac_toe/src/features/game/domain/entities/player.dart';

/// Represents a board where a cell can be occupied by a player.
///
/// The board knows nothing about the rules except there can be, at most, only
/// one player occupying a cell at a time.
class TicTacToeGameBoard {
  TicTacToeGameBoard({
    required int size,
  }) : this._(
         size: size,
         playedBy: UnmodifiableListView(List.filled(size * size, null)),
       );

  TicTacToeGameBoard._({
    required this.size,
    required UnmodifiableListView<Player?> playedBy,
  }) : _playedBy = playedBy;

  /// The size of the game board (number of rows and columns).
  final int size;

  /// The total number of cells in the game board.
  int get cellCount => size * size;

  /// Where each player has made their moves on the board.
  final UnmodifiableListView<Player?> _playedBy;

  Iterable<Player?> get playedBy => _playedBy;

  /// Indicates whether the given [index] is within the bounds of the game
  /// board.
  bool isValidIndex(int index) {
    return index >= 0 && index < cellCount;
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
      size: size,
      playedBy: UnmodifiableListView(newList),
    );
  }

  bool hasEmptyCells() {
    return _playedBy.any((player) => player == null);
  }
}
