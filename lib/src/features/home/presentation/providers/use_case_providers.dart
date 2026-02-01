import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tic_tac_toe/src/features/home/domain/use_cases/fetch_current_game_session_use_case.dart';
import 'package:tic_tac_toe/src/features/home/domain/use_cases/fetch_starting_game_configuration_use_case.dart';
import 'package:tic_tac_toe/src/features/home/domain/use_cases/start_game_use_case.dart';
import 'package:tic_tac_toe/src/shared/game/presentation/providers/shared_providers.dart';

part 'use_case_providers.g.dart';

@riverpod
FetchCurrentGameSessionUseCase fetchCurrentGameSessionUseCase(
  Ref ref,
) {
  return FetchCurrentGameSessionUseCase(
    repository: ref.watch(gameRepositoryProvider),
  );
}

@riverpod
FetchStartingGameConfigurationUseCase fetchStartingGameConfigurationUseCase(
  Ref ref,
) {
  return FetchStartingGameConfigurationUseCase();
}

@riverpod
StartGameUseCase startGameUseCase(Ref ref) {
  return StartGameUseCase(
    gameRepository: ref.watch(gameRepositoryProvider),
  );
}
