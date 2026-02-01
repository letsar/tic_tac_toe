import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tic_tac_toe/src/features/home/domain/entities/starting_game_configuration.dart';
import 'package:tic_tac_toe/src/features/home/presentation/providers/use_case_providers.dart';
import 'package:tic_tac_toe/src/shared/app/presentation/providers/shared_providers.dart';
import 'package:tic_tac_toe/src/shared/game/domain/entities/tic_tac_toe_game_session.dart';

part 'home_screen_providers.g.dart';

@riverpod
class CurrentGameSessionController extends _$CurrentGameSessionController {
  @override
  Future<TicTacToeGameSession?> build() {
    return ref.read(fetchCurrentGameSessionUseCaseProvider).call();
  }

  Future<void> onResumeGameTapped() async {
    final currentSession = state.value;
    if (currentSession != null) {
      await ref.read(navigationServiceProvider).goToGame(currentSession);
      ref.invalidateSelf();
    }
  }
}

@riverpod
class StartNewGameController extends _$StartNewGameController {
  @override
  StartingGameConfiguration build() {
    return ref.read(fetchStartingGameConfigurationUseCaseProvider).call();
  }

  Future<void> onGridSizeTapped(int size) async {
    state = state.copyWith(boardSize: size);
  }

  Future<void> onStartGameTapped() async {
    final session = await ref
        .read(startGameUseCaseProvider)
        .call(state.boardSize);
    await ref.read(navigationServiceProvider).goToGame(session);
    ref.invalidate(currentGameSessionControllerProvider);
  }
}
