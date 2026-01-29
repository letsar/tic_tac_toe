import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tic_tac_toe/src/features/game/domain/services/game_rules_service.dart';
import 'package:tic_tac_toe/src/features/game/domain/services/game_turn_service.dart';

final gameRulesServiceProvider = Provider((ref) {
  return GameRulesService();
});

final gameTurnServiceProvider = Provider((ref) {
  return GameTurnService();
});
