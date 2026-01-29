import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tic_tac_toe/src/features/game/domain/use_cases/fetch_current_game_session_use_case.dart';
import 'package:tic_tac_toe/src/features/game/domain/use_cases/make_move_use_case.dart';
import 'package:tic_tac_toe/src/features/game/domain/use_cases/reset_game_session_use_case.dart';
import 'package:tic_tac_toe/src/features/game/presentation/views/providers/data_providers.dart';
import 'package:tic_tac_toe/src/features/game/presentation/views/providers/service_providers.dart';

final fetchCurrentGameSessionUseCaseProvider = Provider((ref) {
  return FetchCurrentGameSessionUseCase(
    repository: ref.watch(gameRepositoryProvider),
  );
});

final makeMoveUseCaseProvider = Provider((ref) {
  return MakeMoveUseCase(
    gameTurnService: ref.watch(gameTurnServiceProvider),
    gameRulesService: ref.watch(gameRulesServiceProvider),
    gameRepository: ref.watch(gameRepositoryProvider),
  );
});

final resetGameSessionProvider = Provider((ref) {
  return ResetGameSessionUseCase(
    gameRepository: ref.watch(gameRepositoryProvider),
  );
});
