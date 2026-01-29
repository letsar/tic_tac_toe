import 'package:tic_tac_toe/src/features/game/domain/entities/tic_tac_toe_game_session.dart';

class ResetGameSessionUseCase {
  TicTacToeGameSession call() {
    return TicTacToeGameSession.initial();
  }
}
