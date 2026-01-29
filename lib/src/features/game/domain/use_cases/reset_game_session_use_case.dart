import 'package:tic_tac_toe/src/features/game/domain/entities/tic_tac_toe_game_session.dart';
import 'package:tic_tac_toe/src/features/game/domain/repositories/game_repository.dart';

class ResetGameSessionUseCase {
  const ResetGameSessionUseCase({
    required GameRepository gameRepository,
  }) : _gameRepository = gameRepository;

  final GameRepository _gameRepository;

  Future<TicTacToeGameSession> call() async {
    final newSession = TicTacToeGameSession.initial;
    await _gameRepository.saveSession(newSession);
    return newSession;
  }
}
