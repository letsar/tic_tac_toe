import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tic_tac_toe/src/features/game/data/repositories/preferences_game_repository.dart';
import 'package:tic_tac_toe/src/features/game/domain/repositories/game_repository.dart';

final gameRepositoryProvider = Provider<GameRepository>(
  (ref) => PreferencesGameRepository(),
);
