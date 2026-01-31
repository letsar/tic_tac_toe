import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tic_tac_toe/src/features/game/domain/use_cases/fetch_current_game_session_use_case.dart';
import 'package:tic_tac_toe/src/features/game/domain/use_cases/make_move_use_case.dart';
import 'package:tic_tac_toe/src/features/game/domain/use_cases/reset_game_session_use_case.dart';
import 'package:tic_tac_toe/src/features/game/presentation/views/providers/data_providers.dart';
import 'package:tic_tac_toe/src/features/game/presentation/views/providers/service_providers.dart';

part 'use_case_providers.g.dart';

@riverpod
FetchCurrentGameSessionUseCase fetchCurrentGameSessionUseCase(Ref ref) {
  return FetchCurrentGameSessionUseCase(
    repository: ref.watch(gameRepositoryProvider),
  );
}

@riverpod
MakeMoveUseCase makeMoveUseCase(Ref ref) {
  return MakeMoveUseCase(
    gameTurnService: ref.watch(gameTurnServiceProvider),
    gameRulesService: ref.watch(gameRulesServiceProvider),
    gameRepository: ref.watch(gameRepositoryProvider),
  );
}

@riverpod
ResetGameSessionUseCase resetGameSession(Ref ref) {
  return ResetGameSessionUseCase(
    gameRepository: ref.watch(gameRepositoryProvider),
  );
}
