import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tic_tac_toe/src/features/game/presentation/providers/use_case_providers.dart';
import 'package:tic_tac_toe/src/shared/game/domain/entities/tic_tac_toe_game_session.dart';

part 'game_screen_providers.g.dart';

@riverpod
class TicTacToeGameSessionController extends _$TicTacToeGameSessionController {
  @override
  TicTacToeGameSession build() {
    throw UnimplementedError();
  }

  Future<void> onCellTapped(int index) async {
    state = await ref.read(makeMoveUseCaseProvider).call(state, index);
  }

  Future<void> onResetPressed() async {
    state = await ref.read(resetGameSessionProvider).call(state);
  }
}
