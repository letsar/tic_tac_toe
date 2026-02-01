import 'package:flutter/material.dart';
import 'package:tic_tac_toe/src/features/game/presentation/views/game_screen.dart';
import 'package:tic_tac_toe/src/shared/app/presentation/services/navigation_service.dart';
import 'package:tic_tac_toe/src/shared/game/domain/entities/tic_tac_toe_game_session.dart';

class NavigatorNavigationService implements NavigationService {
  const NavigatorNavigationService({
    required GlobalKey<NavigatorState> navigatorKey,
  }) : _navigatorKey = navigatorKey;

  final GlobalKey<NavigatorState> _navigatorKey;

  NavigatorState? get _navigatorState => _navigatorKey.currentState;

  @override
  Future<void> goToGame(TicTacToeGameSession session) async {
    await _navigatorState?.push(
      MaterialPageRoute(
        builder: (context) {
          return GameScreen(gameSession: session);
        },
      ),
    );
  }
}
