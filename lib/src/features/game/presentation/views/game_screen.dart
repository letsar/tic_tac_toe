import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tic_tac_toe/src/core/presentation/widgets/app_scaffold.dart';
import 'package:tic_tac_toe/src/features/game/presentation/providers/game_screen_providers.dart';
import 'package:tic_tac_toe/src/shared/game/domain/entities/game_status.dart';
import 'package:tic_tac_toe/src/shared/game/domain/entities/player.dart';
import 'package:tic_tac_toe/src/shared/game/domain/entities/tic_tac_toe_game_session.dart';
import 'package:tic_tac_toe/src/shared/l10n/index.dart';

/// The screen used to display, and play the Tic Tac Toe game.
class GameScreen extends StatelessWidget {
  const GameScreen({
    super.key,
    required this.gameSession,
  });

  final TicTacToeGameSession gameSession;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        ticTacToeGameSessionControllerProvider.overrideWithBuild((ref, c) {
          return gameSession;
        }),
      ],
      child: AppScaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.transparent,
        ),
        body: const _GameSession(),
        floatingActionButton: const _ResetButton(),
      ),
    );
  }
}

class _GameSession extends StatelessWidget {
  const _GameSession();

  @override
  Widget build(BuildContext context) {
    return const Column(
      spacing: 8,
      children: [
        _Header(),
        Expanded(
          child: Align(
            alignment: Alignment.topCenter,
            child: _Board(),
          ),
        ),
      ],
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    final strings = context.strings;

    return Column(
      spacing: 16,
      children: [
        Text(
          strings.app_title,
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 48,
          ),
        ),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: SizedBox(
            height: 60,
            child: Center(
              child: Consumer(
                builder: (context, ref, child) {
                  final gameStatus = ref.watch(
                    ticTacToeGameSessionControllerProvider.select(
                      (x) => x.status,
                    ),
                  );

                  return Text(
                    gameStatus.fetchHeaderText(strings),
                    key: ValueKey(gameStatus),
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _Board extends StatelessWidget {
  const _Board();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.2),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Consumer(
            builder: (context, ref, _) {
              final (size, cellCount) = ref.watch(
                ticTacToeGameSessionControllerProvider.select((x) {
                  final board = x.board;
                  return (board.size, board.cellCount);
                }),
              );

              return GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: size,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: cellCount,
                itemBuilder: (context, index) {
                  return _Cell(index: index);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class _Cell extends ConsumerWidget {
  const _Cell({
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (player, isWinning) = ref.watch(
      ticTacToeGameSessionControllerProvider.select((x) {
        final board = x.board;
        return (board.playerAt(index), x.isWinningCell(index));
      }),
    );

    final playerData = switch (player) {
      Player.one => (
        mark: 'X',
        icon: Icons.close,
        color: Colors.pink.shade300,
      ),
      Player.two => (
        mark: 'O',
        icon: Icons.circle_outlined,
        color: Colors.cyan.shade300,
      ),
      _ => null,
    };

    return GestureDetector(
      onTap: player == null
          ? () {
              ref
                  .read(ticTacToeGameSessionControllerProvider.notifier)
                  .onCellTapped(index);
            }
          : null,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: isWinning
              ? playerData?.color.withValues(alpha: 0.3)
              : Colors.white.withValues(alpha: 0.15),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Colors.white.withValues(alpha: 0.3),
            width: 2,
          ),
        ),
        child: Center(child: _CellSymbol(index, playerData)),
      ),
    );
  }
}

class _CellSymbol extends StatelessWidget {
  const _CellSymbol(
    this.index,
    this.playerData,
  );

  final int index;
  final _PlayerData? playerData;

  @override
  Widget build(BuildContext context) {
    final localPlayerData = playerData;
    if (localPlayerData == null) return const SizedBox.shrink();

    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 500),
      curve: Curves.elasticOut,
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: Icon(
            localPlayerData.icon,
            size: 60,
            color: localPlayerData.color,
          ),
        );
      },
    );
  }
}

class _ResetButton extends ConsumerWidget {
  const _ResetButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isGameOver = ref.watch(
      ticTacToeGameSessionControllerProvider.select(
        (x) => x.status is GameOver,
      ),
    );

    final strings = context.strings;

    if (isGameOver) {
      return ElevatedButton.icon(
        onPressed: () {
          ref
              .read(ticTacToeGameSessionControllerProvider.notifier)
              .onResetPressed();
        },
        icon: const Icon(Icons.refresh),
        label: Text(strings.game_screen_reset_button_label),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.purple.shade600,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 8,
          textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      );
    }

    return const SizedBox.shrink();
  }
}

extension on GameStatus {
  String fetchHeaderText(AppLocalizations strings) {
    return switch (this) {
      Playing(:final currentPlayer) => strings.game_screen_playing_label(
        currentPlayer.name,
      ),
      GameOver(:final winner?) => strings.game_screen_game_over_label(
        winner.name,
      ),
      GameOver(winner: null) => strings.game_screen_draw_label,
    };
  }
}

extension on Player {
  String get name {
    return this == Player.one ? 'X' : 'O';
  }
}

typedef _PlayerData = ({String mark, IconData icon, Color color});
