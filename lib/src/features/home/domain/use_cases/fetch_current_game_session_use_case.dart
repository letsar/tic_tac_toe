import 'package:tic_tac_toe/src/shared/game/domain/entities/game_status.dart';
import 'package:tic_tac_toe/src/shared/game/domain/entities/tic_tac_toe_game_session.dart';
import 'package:tic_tac_toe/src/shared/game/domain/repositories/game_repository.dart';

class FetchCurrentGameSessionUseCase {
  FetchCurrentGameSessionUseCase({
    required GameRepository repository,
  }) : _repository = repository;

  final GameRepository _repository;

  Future<TicTacToeGameSession?> call() async {
    final session = await _repository.fetchCurrentSession();

    if (session == null) {
      return null;
    }

    // Check if the game is still being played (not over)
    final isGameOver = session.status is GameOver;

    return isGameOver ? null : session;
  }
}
