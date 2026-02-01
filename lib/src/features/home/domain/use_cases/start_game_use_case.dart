import 'package:tic_tac_toe/src/shared/game/domain/entities/game_status.dart';
import 'package:tic_tac_toe/src/shared/game/domain/entities/player.dart';
import 'package:tic_tac_toe/src/shared/game/domain/entities/tic_tac_toe_game_board.dart';
import 'package:tic_tac_toe/src/shared/game/domain/entities/tic_tac_toe_game_session.dart';
import 'package:tic_tac_toe/src/shared/game/domain/repositories/game_repository.dart';

class StartGameUseCase {
  const StartGameUseCase({
    required GameRepository gameRepository,
  }) : _gameRepository = gameRepository;

  final GameRepository _gameRepository;

  Future<TicTacToeGameSession> call(int boardSize) async {
    final newSession = TicTacToeGameSession(
      board: TicTacToeGameBoard(size: boardSize),
      status: const GameStatus.playing(currentPlayer: Player.one),
    );
    await _gameRepository.saveSession(newSession);
    return newSession;
  }
}
