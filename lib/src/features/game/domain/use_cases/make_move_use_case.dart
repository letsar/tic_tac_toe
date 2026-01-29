import 'package:tic_tac_toe/src/features/game/domain/entities/tic_tac_toe_game_session.dart';

class MakeMoveUseCase {
  TicTacToeGameSession call(
    TicTacToeGameSession session,
    int index,
  ) {
    final newSession = session.makeMove(index);
    return newSession;
  }
}
