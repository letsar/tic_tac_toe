import 'package:tic_tac_toe/src/shared/game/domain/entities/tic_tac_toe_game_session.dart';

/// Interface for navigation services.
///
/// Remark: this class is in the shared folder because we want to share this
/// interface to all features.
abstract class NavigationService {
  Future<void> goToGame(TicTacToeGameSession session);
}
