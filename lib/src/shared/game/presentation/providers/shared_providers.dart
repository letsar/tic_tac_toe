import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tic_tac_toe/src/core/presentation/providers/core_providers.dart';
import 'package:tic_tac_toe/src/shared/game/data/repositories/preferences_game_repository.dart';
import 'package:tic_tac_toe/src/shared/game/domain/repositories/game_repository.dart';

part 'shared_providers.g.dart';

/// Provider for the game repository
///
/// This repository is shared between multiple features:
/// - home: to check if a game is in progress
/// - game: to save/load game sessions
@riverpod
GameRepository gameRepository(Ref ref) {
  return PreferencesGameRepository(
    localStorageService: ref.watch(localStorageServiceProvider),
  );
}
