import 'dart:collection';

import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe/src/features/game/domain/services/game_turn_service.dart';
import 'package:tic_tac_toe/src/shared/game/domain/entities/game_status.dart';
import 'package:tic_tac_toe/src/shared/game/domain/entities/player.dart';
import 'package:tic_tac_toe/src/shared/game/domain/entities/tic_tac_toe_game_board.dart';
import 'package:tic_tac_toe/src/shared/game/domain/entities/tic_tac_toe_game_session.dart';

void main() {
  group('GameTurnService', () {
    late GameTurnService service;

    setUp(() {
      service = GameTurnService();
    });

    group('playerToPlay', () {
      test('should return current player when cell is valid and empty', () {
        // Arrange: Initial game state
        // . . .
        // . . .
        // . . .
        final session = _createInitialGameSession();

        // Act
        final player = service.playerToPlay(session, 0);

        // Assert
        expect(player, equals(Player.one));
      });

      test('should return null when cell index is invalid (negative)', () {
        // Arrange
        final session = _createInitialGameSession();

        // Act
        final player = service.playerToPlay(session, -1);

        // Assert
        expect(player, isNull);
      });

      test('should return null when cell index is invalid (too large)', () {
        // Arrange
        final session = _createInitialGameSession();

        // Act
        final player = service.playerToPlay(session, 9);

        // Assert
        expect(player, isNull);
      });

      test('should return null when cell is already occupied', () {
        // Arrange: X . .
        //          . . .
        //          . . .
        final board = TicTacToeGameBoard(size: 3).makeMove(0, Player.one);
        final session = TicTacToeGameSession(
          board: board,
          status: const GameStatus.playing(currentPlayer: Player.two),
        );

        // Act
        final player = service.playerToPlay(session, 0);

        // Assert
        expect(player, isNull);
      });

      test('should return null when game is over (with winner)', () {
        // Arrange: Game over with Player.one winning
        // X X X
        // . . .
        // . . .
        final board = TicTacToeGameBoard(size: 3)
            .makeMove(0, Player.one)
            .makeMove(1, Player.one)
            .makeMove(2, Player.one);
        final session = TicTacToeGameSession(
          board: board,
          status: GameStatus.gameOver(
            winner: Player.one,
            winningCells: UnmodifiableListView([0, 1, 2]),
          ),
        );

        // Act
        final player = service.playerToPlay(session, 3);

        // Assert
        expect(player, isNull);
      });

      test('should return null when game is over (draw)', () {
        // Arrange: Game over with draw
        // X O X
        // O O X
        // O X O
        final board = TicTacToeGameBoard(size: 3)
            .makeMove(0, Player.one)
            .makeMove(1, Player.two)
            .makeMove(2, Player.one)
            .makeMove(3, Player.two)
            .makeMove(4, Player.two)
            .makeMove(5, Player.one)
            .makeMove(6, Player.two)
            .makeMove(7, Player.one)
            .makeMove(8, Player.two);
        final session = TicTacToeGameSession(
          board: board,
          status: GameStatus.gameOver(
            winner: null,
            winningCells: UnmodifiableListView([]),
          ),
        );

        // Act
        final player = service.playerToPlay(session, 3);

        // Assert
        expect(player, isNull);
      });

      test('should return Player.two when it is their turn', () {
        // Arrange: X . .
        //          . . .
        //          . . .
        final board = TicTacToeGameBoard(size: 3).makeMove(0, Player.one);
        final session = TicTacToeGameSession(
          board: board,
          status: const GameStatus.playing(currentPlayer: Player.two),
        );

        // Act
        final player = service.playerToPlay(session, 1);

        // Assert
        expect(player, equals(Player.two));
      });

      test('should validate each empty cell independently', () {
        // Arrange: X . O
        //          . . .
        //          . . .
        final board = TicTacToeGameBoard(
          size: 3,
        ).makeMove(0, Player.one).makeMove(2, Player.two);
        final session = TicTacToeGameSession(
          board: board,
          status: const GameStatus.playing(currentPlayer: Player.one),
        );

        // Act & Assert - empty cells should return current player
        expect(service.playerToPlay(session, 1), equals(Player.one));
        expect(service.playerToPlay(session, 3), equals(Player.one));
        expect(service.playerToPlay(session, 4), equals(Player.one));
        expect(service.playerToPlay(session, 5), equals(Player.one));
        expect(service.playerToPlay(session, 6), equals(Player.one));
        expect(service.playerToPlay(session, 7), equals(Player.one));
        expect(service.playerToPlay(session, 8), equals(Player.one));

        // Occupied cells should return null
        expect(service.playerToPlay(session, 0), isNull);
        expect(service.playerToPlay(session, 2), isNull);
      });

      test('should work with larger boards', () {
        // Arrange: 5x5 board
        final session = TicTacToeGameSession(
          board: TicTacToeGameBoard(size: 5),
          status: const GameStatus.playing(currentPlayer: Player.one),
        );

        // Act & Assert - all cells should be available
        for (int i = 0; i < 25; i++) {
          expect(service.playerToPlay(session, i), equals(Player.one));
        }

        // Invalid indices
        expect(service.playerToPlay(session, -1), isNull);
        expect(service.playerToPlay(session, 25), isNull);
      });

      test('should handle edge cases at board boundaries', () {
        // Arrange: 3x3 board
        final session = _createInitialGameSession();

        // Act & Assert - boundary cells
        expect(
          service.playerToPlay(session, 0),
          equals(Player.one),
        ); // Top-left
        expect(
          service.playerToPlay(session, 2),
          equals(Player.one),
        ); // Top-right
        expect(
          service.playerToPlay(session, 6),
          equals(Player.one),
        ); // Bottom-left
        expect(
          service.playerToPlay(session, 8),
          equals(Player.one),
        ); // Bottom-right
      });

      test('should return correct player mid-game', () {
        // Arrange: X O X
        //          O . .
        //          . . .
        final board = TicTacToeGameBoard(size: 3)
            .makeMove(0, Player.one)
            .makeMove(1, Player.two)
            .makeMove(2, Player.one)
            .makeMove(3, Player.two);
        final session = TicTacToeGameSession(
          board: board,
          status: const GameStatus.playing(currentPlayer: Player.one),
        );

        // Act & Assert - empty cells should return Player.one
        expect(service.playerToPlay(session, 4), equals(Player.one));
        expect(service.playerToPlay(session, 5), equals(Player.one));
        expect(service.playerToPlay(session, 6), equals(Player.one));
        expect(service.playerToPlay(session, 7), equals(Player.one));
        expect(service.playerToPlay(session, 8), equals(Player.one));

        // Occupied cells should return null
        expect(service.playerToPlay(session, 0), isNull);
        expect(service.playerToPlay(session, 1), isNull);
        expect(service.playerToPlay(session, 2), isNull);
        expect(service.playerToPlay(session, 3), isNull);
      });

      test('should handle last valid cell before draw', () {
        // Arrange: X O X
        //          O O X
        //          O X .  <- Last empty cell
        final board = TicTacToeGameBoard(size: 3)
            .makeMove(0, Player.one)
            .makeMove(1, Player.two)
            .makeMove(2, Player.one)
            .makeMove(3, Player.two)
            .makeMove(4, Player.two)
            .makeMove(5, Player.one)
            .makeMove(6, Player.two)
            .makeMove(7, Player.one);
        final session = TicTacToeGameSession(
          board: board,
          status: const GameStatus.playing(currentPlayer: Player.two),
        );

        // Act
        final player = service.playerToPlay(session, 8);

        // Assert - last cell should still be playable
        expect(player, equals(Player.two));
      });
    });
  });
}

TicTacToeGameSession _createInitialGameSession() {
  return TicTacToeGameSession(
    board: TicTacToeGameBoard(size: 3),
    status: const GameStatus.playing(currentPlayer: Player.one),
  );
}
