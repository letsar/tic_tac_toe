import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tic_tac_toe/src/features/game/data/repositories/preferences_game_repository.dart';
import 'package:tic_tac_toe/src/features/game/domain/repositories/game_repository.dart';

part 'data_providers.g.dart';

@riverpod
GameRepository gameRepository(Ref ref) {
  return PreferencesGameRepository();
}
