import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe/src/features/game/domain/entities/game_status.dart';
import 'package:tic_tac_toe/src/features/game/domain/entities/player.dart';
import 'package:tic_tac_toe/src/features/game/domain/entities/tic_tac_toe_game_board.dart';
import 'package:tic_tac_toe/src/features/game/domain/services/game_rules_service.dart';

void main() {
  group('GameRulesService', () {
    late GameRulesService service;

    setUp(() {
      service = GameRulesService();
    });

    group('isWinningCell', () {
      test('should identify winning horizontal line (top row)', () {
        // Arrange: X X X
        //          . . .
        //          . . .
        final board = TicTacToeGameBoard(size: 3)
            .makeMove(0, Player.one)
            .makeMove(1, Player.one)
            .makeMove(2, Player.one);

        // Assert
        expect(service.isWinningCell(board, 0), isTrue);
        expect(service.isWinningCell(board, 1), isTrue);
        expect(service.isWinningCell(board, 2), isTrue);
      });

      test('should identify winning horizontal line (middle row)', () {
        // Arrange: . . .
        //          X X X
        //          . . .
        final board = TicTacToeGameBoard(size: 3)
            .makeMove(3, Player.one)
            .makeMove(4, Player.one)
            .makeMove(5, Player.one);

        // Assert
        expect(service.isWinningCell(board, 3), isTrue);
        expect(service.isWinningCell(board, 4), isTrue);
        expect(service.isWinningCell(board, 5), isTrue);
      });

      test('should identify winning horizontal line (bottom row)', () {
        // Arrange: . . .
        //          . . .
        //          O O O
        final board = TicTacToeGameBoard(size: 3)
            .makeMove(6, Player.two)
            .makeMove(7, Player.two)
            .makeMove(8, Player.two);

        // Assert
        expect(service.isWinningCell(board, 6), isTrue);
        expect(service.isWinningCell(board, 7), isTrue);
        expect(service.isWinningCell(board, 8), isTrue);
      });

      test('should identify winning vertical line (left column)', () {
        // Arrange: X . .
        //          X . .
        //          X . .
        final board = TicTacToeGameBoard(size: 3)
            .makeMove(0, Player.one)
            .makeMove(3, Player.one)
            .makeMove(6, Player.one);

        // Assert
        expect(service.isWinningCell(board, 0), isTrue);
        expect(service.isWinningCell(board, 3), isTrue);
        expect(service.isWinningCell(board, 6), isTrue);
      });

      test('should identify winning vertical line (middle column)', () {
        // Arrange: . O .
        //          . O .
        //          . O .
        final board = TicTacToeGameBoard(size: 3)
            .makeMove(1, Player.two)
            .makeMove(4, Player.two)
            .makeMove(7, Player.two);

        // Assert
        expect(service.isWinningCell(board, 1), isTrue);
        expect(service.isWinningCell(board, 4), isTrue);
        expect(service.isWinningCell(board, 7), isTrue);
      });

      test('should identify winning vertical line (right column)', () {
        // Arrange: . . X
        //          . . X
        //          . . X
        final board = TicTacToeGameBoard(size: 3)
            .makeMove(2, Player.one)
            .makeMove(5, Player.one)
            .makeMove(8, Player.one);

        // Assert
        expect(service.isWinningCell(board, 2), isTrue);
        expect(service.isWinningCell(board, 5), isTrue);
        expect(service.isWinningCell(board, 8), isTrue);
      });

      test(
        'should identify winning main diagonal (top-left to bottom-right)',
        () {
          // Arrange: X . .
          //          . X .
          //          . . X
          final board = TicTacToeGameBoard(size: 3)
              .makeMove(0, Player.one)
              .makeMove(4, Player.one)
              .makeMove(8, Player.one);

          // Assert
          expect(service.isWinningCell(board, 0), isTrue);
          expect(service.isWinningCell(board, 4), isTrue);
          expect(service.isWinningCell(board, 8), isTrue);
        },
      );

      test(
        'should identify winning anti-diagonal (top-right to bottom-left)',
        () {
          // Arrange: . . O
          //          . O .
          //          O . .
          final board = TicTacToeGameBoard(size: 3)
              .makeMove(2, Player.two)
              .makeMove(4, Player.two)
              .makeMove(6, Player.two);

          // Assert
          expect(service.isWinningCell(board, 2), isTrue);
          expect(service.isWinningCell(board, 4), isTrue);
          expect(service.isWinningCell(board, 6), isTrue);
        },
      );

      test('should return false for non-winning cells', () {
        // Arrange: X O X
        //          O X O
        //          O X .
        // No winning pattern (mix of players with no complete line)
        final board = TicTacToeGameBoard(size: 3)
            .makeMove(0, Player.one)
            .makeMove(1, Player.two)
            .makeMove(2, Player.one)
            .makeMove(3, Player.two)
            .makeMove(4, Player.one)
            .makeMove(5, Player.two)
            .makeMove(6, Player.two)
            .makeMove(7, Player.one);

        // Assert - no winning pattern
        expect(service.isWinningCell(board, 0), isFalse);
        expect(service.isWinningCell(board, 1), isFalse);
        expect(service.isWinningCell(board, 2), isFalse);
        expect(service.isWinningCell(board, 3), isFalse);
        expect(service.isWinningCell(board, 4), isFalse);
        expect(service.isWinningCell(board, 5), isFalse);
        expect(service.isWinningCell(board, 6), isFalse);
        expect(service.isWinningCell(board, 7), isFalse);
      });

      test('should return false for empty cells', () {
        // Arrange: X . .
        //          . . .
        //          . . .
        final board = TicTacToeGameBoard(size: 3).makeMove(0, Player.one);

        // Assert
        expect(service.isWinningCell(board, 1), isFalse);
        expect(service.isWinningCell(board, 2), isFalse);
        expect(service.isWinningCell(board, 3), isFalse);
      });

      test('should work with larger boards (5x5)', () {
        // Arrange: X X X X X
        //          . . . . .
        //          . . . . .
        //          . . . . .
        //          . . . . .
        final board = TicTacToeGameBoard(size: 5)
            .makeMove(0, Player.one)
            .makeMove(1, Player.one)
            .makeMove(2, Player.one)
            .makeMove(3, Player.one)
            .makeMove(4, Player.one);

        // Assert
        expect(service.isWinningCell(board, 0), isTrue);
        expect(service.isWinningCell(board, 1), isTrue);
        expect(service.isWinningCell(board, 2), isTrue);
        expect(service.isWinningCell(board, 3), isTrue);
        expect(service.isWinningCell(board, 4), isTrue);
      });
    });

    group('computeStatusAfterMove', () {
      test(
        'should return GameOver with winner when move creates winning line',
        () {
          // Arrange: X X .
          //          . . .
          //          . . .
          final board = TicTacToeGameBoard(
            size: 3,
          ).makeMove(0, Player.one).makeMove(1, Player.one);
          final boardAfterMove = board.makeMove(2, Player.one);

          // Act
          final status = service.computeStatusAfterMove(
            boardAfterMove,
            2,
            Player.one,
          );

          // Assert
          expect(status, isA<GameOver>());
          final gameOver = status as GameOver;
          expect(gameOver.winner, equals(Player.one));
          expect(gameOver.winningCells, containsAll([0, 1, 2]));
        },
      );

      test('should return Playing with next player when no winner', () {
        // Arrange: X . .
        //          . . .
        //          . . .
        final board = TicTacToeGameBoard(size: 3).makeMove(0, Player.one);

        // Act
        final status = service.computeStatusAfterMove(board, 0, Player.one);

        // Assert
        expect(status, isA<Playing>());
        final playing = status as Playing;
        expect(playing.currentPlayer, equals(Player.two));
      });

      test('should alternate players correctly', () {
        // Arrange: X O .
        //          . . .
        //          . . .
        final board = TicTacToeGameBoard(
          size: 3,
        ).makeMove(0, Player.one).makeMove(1, Player.two);

        // Act
        final status = service.computeStatusAfterMove(board, 1, Player.two);

        // Assert
        expect(status, isA<Playing>());
        final playing = status as Playing;
        expect(playing.currentPlayer, equals(Player.one));
      });

      test(
        'should return GameOver with no winner (draw) when board is full',
        () {
          // Arrange: X O X
          //          O O X
          //          O X O
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

          // Act
          final status = service.computeStatusAfterMove(board, 8, Player.two);

          // Assert
          expect(status, isA<GameOver>());
          final gameOver = status as GameOver;
          expect(gameOver.winner, isNull);
          expect(gameOver.winningCells, isEmpty);
        },
      );

      test('should return all winning cells when multiple patterns exist', () {
        // Arrange: Create a board where winning move creates multiple patterns
        // This is a special case where a cell participates in multiple winning lines
        // X X X
        // X O .
        // X . .
        final board = TicTacToeGameBoard(size: 3)
            .makeMove(0, Player.one)
            .makeMove(1, Player.one)
            .makeMove(2, Player.one)
            .makeMove(3, Player.one)
            .makeMove(4, Player.two)
            .makeMove(6, Player.one);

        // Act
        final status = service.computeStatusAfterMove(board, 0, Player.one);

        // Assert
        expect(status, isA<GameOver>());
        final gameOver = status as GameOver;
        expect(gameOver.winner, equals(Player.one));
        // Cell 0 is part of both row 0 and column 0, and diagonal
        expect(gameOver.winningCells, containsAll([0, 1, 2, 3, 6]));
      });

      test('should work correctly with Player.two as winner', () {
        // Arrange: . . .
        //          O O O
        //          . . .
        final board = TicTacToeGameBoard(size: 3)
            .makeMove(3, Player.two)
            .makeMove(4, Player.two)
            .makeMove(5, Player.two);

        // Act
        final status = service.computeStatusAfterMove(board, 5, Player.two);

        // Assert
        expect(status, isA<GameOver>());
        final gameOver = status as GameOver;
        expect(gameOver.winner, equals(Player.two));
        expect(gameOver.winningCells, containsAll([3, 4, 5]));
      });

      test('should handle first move correctly', () {
        // Arrange: X . .
        //          . . .
        //          . . .
        final board = TicTacToeGameBoard(size: 3).makeMove(0, Player.one);

        // Act
        final status = service.computeStatusAfterMove(board, 0, Player.one);

        // Assert
        expect(status, isA<Playing>());
        final playing = status as Playing;
        expect(playing.currentPlayer, equals(Player.two));
      });
    });
  });
}
