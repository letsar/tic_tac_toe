import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tic_tac_toe/src/features/game/domain/entities/tic_tac_toe_game_session.dart';
import 'package:tic_tac_toe/src/features/game/presentation/views/providers/use_case_providers.dart';

part 'tic_tac_toe_game_session_controller.g.dart';

@riverpod
class TicTacToeGameSessionController extends _$TicTacToeGameSessionController {
  @override
  TicTacToeGameSession build() {
    return ref.read(resetGameSessionProvider).call();
  }

  void onCellTapped(int index) {
    state = ref.read(makeMoveUseCaseProvider).call(state, index);
  }

  void onResetPressed() {
    state = ref.read(resetGameSessionProvider).call();
  }
}
