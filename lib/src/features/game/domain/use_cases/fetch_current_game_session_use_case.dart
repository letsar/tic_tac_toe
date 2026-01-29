import 'package:tic_tac_toe/src/features/game/domain/entities/tic_tac_toe_game_session.dart';
import 'package:tic_tac_toe/src/features/game/domain/repositories/game_repository.dart';

class FetchCurrentGameSessionUseCase {
  FetchCurrentGameSessionUseCase({
    required GameRepository repository,
  }) : _repository = repository;

  final GameRepository _repository;

  Future<TicTacToeGameSession> call() async {
    final currentSession = await _repository.fetchCurrentSession();
    return currentSession ?? TicTacToeGameSession.initial;
  }
}
