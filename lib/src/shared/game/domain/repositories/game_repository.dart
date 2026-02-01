
import 'package:tic_tac_toe/src/shared/game/domain/entities/tic_tac_toe_game_session.dart';

abstract class GameRepository {
  Future<TicTacToeGameSession?> fetchCurrentSession();
  Future<void> saveSession(TicTacToeGameSession session);
}