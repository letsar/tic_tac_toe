import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tic_tac_toe/src/features/game/domain/services/game_rules_service.dart';
import 'package:tic_tac_toe/src/features/game/domain/services/game_turn_service.dart';

part 'service_providers.g.dart';

@riverpod
GameRulesService gameRulesService(Ref ref) {
  return GameRulesService();
}

@riverpod
GameTurnService gameTurnService(Ref ref) {
  return GameTurnService();
}
