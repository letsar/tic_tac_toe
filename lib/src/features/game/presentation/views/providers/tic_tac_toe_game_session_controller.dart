import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tic_tac_toe/src/features/game/domain/entities/tic_tac_toe_game_session.dart';
import 'package:tic_tac_toe/src/features/game/presentation/views/providers/use_case_providers.dart';

part 'tic_tac_toe_game_session_controller.g.dart';

@riverpod
class TicTacToeGameSessionController extends _$TicTacToeGameSessionController {
  @override
  Future<TicTacToeGameSession> build() async {
    return await ref.read(fetchCurrentGameSessionUseCaseProvider).call();
  }

  Future<void> onCellTapped(int index) async {
    final currentState = state.value;
    if (currentState != null) {
      state = await AsyncValue.guard(() {
        return ref.read(makeMoveUseCaseProvider).call(currentState, index);
      });
    }
  }

  Future<void> onResetPressed() async {
    state = await AsyncValue.guard(() {
      return ref.read(resetGameSessionProvider).call();
    });
  }
}
