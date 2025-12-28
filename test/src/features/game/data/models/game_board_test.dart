import 'package:flutter_test/flutter_test.dart';
import 'package:tic_tac_toe/src/features/game/data/models/game_board.dart';
import 'package:tic_tac_toe/src/features/game/data/models/game_status.dart';
import 'package:tic_tac_toe/src/features/game/data/models/player.dart';

void main() {
  group('GameBoard', () {
    test('initial board has all null values', () {
      const board = GameBoard.initial;

      for (int i = 0; i < 9; i++) {
        expect(board.playerAt(i), isNull);
      }
    });

    group('playerAt', () {
      test('returns correct player at given index', () {
        final board = GameBoard.initial.makeMove(0, Player.one);

        expect(board.playerAt(0), Player.one);
        expect(board.playerAt(1), isNull);
      });
    });

    group('makeMove', () {
      test('places player at correct index', () {
        final board = GameBoard.initial.makeMove(4, Player.one);

        expect(board.playerAt(4), Player.one);
      });

      test('returns new board without modifying original', () {
        const original = GameBoard.initial;
        final newBoard = original.makeMove(0, Player.one);

        expect(original.playerAt(0), isNull);
        expect(newBoard.playerAt(0), Player.one);
      });

      test('cannot make move on occupied cell', () {
        final board =
            GameBoard.initial.makeMove(0, Player.one).makeMove(0, Player.two);

        expect(board.playerAt(0), Player.one);
      });

      test('allows multiple moves on different cells', () {
        final board = GameBoard.initial
            .makeMove(0, Player.one)
            .makeMove(1, Player.two)
            .makeMove(2, Player.one);

        expect(board.playerAt(0), Player.one);
        expect(board.playerAt(1), Player.two);
        expect(board.playerAt(2), Player.one);
      });
    });

    group('canMakeMove', () {
      test('returns true for empty cell', () {
        const board = GameBoard.initial;

        expect(board.canMakeMove(0), isTrue);
      });

      test('returns false for occupied cell', () {
        final board = GameBoard.initial.makeMove(0, Player.one);

        expect(board.canMakeMove(0), isFalse);
      });
    });

    group('isWinning - rows', () {
      test('detects win in first row', () {
        final board = GameBoard.initial
            .makeMove(0, Player.one)
            .makeMove(1, Player.one)
            .makeMove(2, Player.one);

        expect(board.isWinning(0), isTrue);
        expect(board.isWinning(1), isTrue);
        expect(board.isWinning(2), isTrue);
      });

      test('detects win in second row', () {
        final board = GameBoard.initial
            .makeMove(3, Player.two)
            .makeMove(4, Player.two)
            .makeMove(5, Player.two);

        expect(board.isWinning(3), isTrue);
        expect(board.isWinning(4), isTrue);
        expect(board.isWinning(5), isTrue);
      });

      test('detects win in third row', () {
        final board = GameBoard.initial
            .makeMove(6, Player.one)
            .makeMove(7, Player.one)
            .makeMove(8, Player.one);

        expect(board.isWinning(6), isTrue);
        expect(board.isWinning(7), isTrue);
        expect(board.isWinning(8), isTrue);
      });
    });

    group('isWinning - columns', () {
      test('detects win in first column', () {
        final board = GameBoard.initial
            .makeMove(0, Player.one)
            .makeMove(3, Player.one)
            .makeMove(6, Player.one);

        expect(board.isWinning(0), isTrue);
        expect(board.isWinning(3), isTrue);
        expect(board.isWinning(6), isTrue);
      });

      test('detects win in second column', () {
        final board = GameBoard.initial
            .makeMove(1, Player.two)
            .makeMove(4, Player.two)
            .makeMove(7, Player.two);

        expect(board.isWinning(1), isTrue);
        expect(board.isWinning(4), isTrue);
        expect(board.isWinning(7), isTrue);
      });

      test('detects win in third column', () {
        final board = GameBoard.initial
            .makeMove(2, Player.one)
            .makeMove(5, Player.one)
            .makeMove(8, Player.one);

        expect(board.isWinning(2), isTrue);
        expect(board.isWinning(5), isTrue);
        expect(board.isWinning(8), isTrue);
      });
    });

    group('isWinning - diagonals', () {
      test('detects win in main diagonal (top-left to bottom-right)', () {
        final board = GameBoard.initial
            .makeMove(0, Player.one)
            .makeMove(4, Player.one)
            .makeMove(8, Player.one);

        expect(board.isWinning(0), isTrue);
        expect(board.isWinning(4), isTrue);
        expect(board.isWinning(8), isTrue);
      });

      test('detects win in anti-diagonal (top-right to bottom-left)', () {
        final board = GameBoard.initial
            .makeMove(2, Player.two)
            .makeMove(4, Player.two)
            .makeMove(6, Player.two);

        expect(board.isWinning(2), isTrue);
        expect(board.isWinning(4), isTrue);
        expect(board.isWinning(6), isTrue);
      });
    });

    group('isWinning - no win', () {
      test('returns false for empty board', () {
        const board = GameBoard.initial;

        expect(board.isWinning(0), isFalse);
      });

      test('returns false for incomplete pattern', () {
        final board =
            GameBoard.initial.makeMove(0, Player.one).makeMove(1, Player.one);

        expect(board.isWinning(0), isFalse);
        expect(board.isWinning(1), isFalse);
      });

      test('returns false for mixed players in a line', () {
        final board = GameBoard.initial
            .makeMove(0, Player.one)
            .makeMove(1, Player.two)
            .makeMove(2, Player.one);

        expect(board.isWinning(0), isFalse);
        expect(board.isWinning(1), isFalse);
        expect(board.isWinning(2), isFalse);
      });
    });

    group('nextGameStatus', () {
      test('returns playing status after first move', () {
        final board = GameBoard.initial.makeMove(0, Player.one);
        final status = board.nextGameStatus(0);

        expect(status, const GameStatus.playing(currentPlayer: Player.two));
      });

      test('alternates players correctly', () {
        final board1 = GameBoard.initial.makeMove(0, Player.one);
        final status1 = board1.nextGameStatus(0);

        final board2 = board1.makeMove(1, Player.two);
        final status2 = board2.nextGameStatus(1);

        expect(status1, const GameStatus.playing(currentPlayer: Player.two));
        expect(status2, const GameStatus.playing(currentPlayer: Player.one));
      });

      test('returns gameOver with winner when player wins', () {
        final board = GameBoard.initial
            .makeMove(0, Player.one)
            .makeMove(1, Player.one)
            .makeMove(2, Player.one);

        final status = board.nextGameStatus(2);

        expect(status, const GameStatus.gameOver(winner: Player.one));
      });

      test('returns gameOver with null winner on draw', () {
        // X O X
        // X X O
        // O X O
        final board = GameBoard.initial
            .makeMove(0, Player.one) // X
            .makeMove(1, Player.two) // O
            .makeMove(2, Player.one) // X
            .makeMove(3, Player.one) // X
            .makeMove(4, Player.one) // X
            .makeMove(5, Player.two) // O
            .makeMove(6, Player.two) // O
            .makeMove(7, Player.one) // X
            .makeMove(8, Player.two); // O

        final status = board.nextGameStatus(8);

        expect(status, const GameStatus.gameOver(winner: null));
      });

      test('throws StateError when lastMoveIndex has no player', () {
        const board = GameBoard.initial;

        expect(
          () => board.nextGameStatus(0),
          throwsStateError,
        );
      });
    });

    group('integration tests', () {
      test('complete game scenario - Player one wins', () {
        // X X X
        // O O .
        // . . .
        var board = GameBoard.initial;
        var status = const GameStatus.playing(currentPlayer: Player.one);

        // Move 1: X at 0
        board = board.makeMove(0, Player.one);
        status = board.nextGameStatus(0);
        expect(status, const GameStatus.playing(currentPlayer: Player.two));

        // Move 2: O at 3
        board = board.makeMove(3, Player.two);
        status = board.nextGameStatus(3);
        expect(status, const GameStatus.playing(currentPlayer: Player.one));

        // Move 3: X at 1
        board = board.makeMove(1, Player.one);
        status = board.nextGameStatus(1);
        expect(status, const GameStatus.playing(currentPlayer: Player.two));

        // Move 4: O at 4
        board = board.makeMove(4, Player.two);
        status = board.nextGameStatus(4);
        expect(status, const GameStatus.playing(currentPlayer: Player.one));

        // Move 5: X at 2 (wins)
        board = board.makeMove(2, Player.one);
        status = board.nextGameStatus(2);
        expect(status, const GameStatus.gameOver(winner: Player.one));
      });

      test('complete game scenario - draw', () {
        // X O X
        // O O X
        // X X O
        var board = GameBoard.initial;

        board = board.makeMove(0, Player.one); // X
        board = board.makeMove(1, Player.two); // O
        board = board.makeMove(2, Player.one); // X
        board = board.makeMove(3, Player.two); // O
        board = board.makeMove(5, Player.one); // X
        board = board.makeMove(4, Player.two); // O
        board = board.makeMove(6, Player.one); // X
        board = board.makeMove(8, Player.two); // O
        board = board.makeMove(7, Player.one); // X

        final status = board.nextGameStatus(7);
        expect(status, const GameStatus.gameOver(winner: null));
      });
    });
  });
}
