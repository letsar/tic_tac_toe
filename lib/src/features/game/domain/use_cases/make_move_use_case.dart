import 'package:tic_tac_toe/src/features/game/domain/entities/tic_tac_toe_game_session.dart';
import 'package:tic_tac_toe/src/features/game/domain/repositories/game_repository.dart';
import 'package:tic_tac_toe/src/features/game/domain/services/game_rules_service.dart';
import 'package:tic_tac_toe/src/features/game/domain/services/game_turn_service.dart';

/// Use case for making a move in a Tic Tac Toe game.
///
/// This use case orchestrates the following:
/// 1. Validates the move using [MoveValidatorService]
/// 2. Updates the board
/// 3. Computes the new game status using [GameRulesService]
///
/// This ensures that the game session remains in a valid state while
/// keeping the business logic in domain services rather than in the entity.
class MakeMoveUseCase {
  MakeMoveUseCase({
    required GameTurnService gameTurnService,
    required GameRulesService gameRulesService,
    required GameRepository gameRepository,
  }) : _gameTurnService = gameTurnService,
       _gameRules = gameRulesService,
       _gameRepository = gameRepository;

  final GameTurnService _gameTurnService;
  final GameRulesService _gameRules;
  final GameRepository _gameRepository;

  /// Executes the use case to make a move at [index] in the given [session].
  ///
  /// Returns a new [TicTacToeGameSession] with the move applied, or the same
  /// session if the move is invalid.
  Future<TicTacToeGameSession> call(
    TicTacToeGameSession session,
    int index,
  ) async {
    // Gets the current player.
    final currentPlayer = _gameTurnService.playerToPlay(session, index);
    if (currentPlayer == null) {
      return session;
    }

    // Make the move on the board
    final newBoard = session.board.makeMove(index, currentPlayer);

    // Compute the new game status
    final newStatus = _gameRules.computeStatusAfterMove(
      newBoard,
      index,
      currentPlayer,
    );

    // Create and return the new session
    final newSession = TicTacToeGameSession(
      board: newBoard,
      status: newStatus,
    );
    await _gameRepository.saveSession(newSession);
    return newSession;
  }
}
