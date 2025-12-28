import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/src/features/game/data/models/game_status.dart';
import 'package:tic_tac_toe/src/features/game/data/models/player.dart';
import 'package:tic_tac_toe/src/features/game/views/game_screen/game_screen_cubit.dart';
import 'package:tic_tac_toe/src/features/l10n/index.dart';

/// The screen used to display, and play the Tic Tac Toe game.
class GameScreen extends StatelessWidget {
  const GameScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const _Providers(
      child: Scaffold(
        body: _Body(),
        floatingActionButton: _RestartButton(),
      ),
    );
  }
}

class _Providers extends StatelessWidget {
  const _Providers({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GameScreenCubit(),
      child: child,
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.purple.shade400,
            Colors.blue.shade600,
          ],
        ),
      ),
      child: const SafeArea(
        child: Center(
          child: Column(
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
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    final gameStatus = context.select(
      (GameScreenCubit cubit) => cubit.state.status,
    );

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
              child: Text(
                gameStatus.fetchHeaderText(strings),
                key: ValueKey(gameStatus),
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
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
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemCount: 9,
            itemBuilder: (context, index) {
              return _Cell(index: index);
            },
          ),
        ),
      ),
    );
  }
}

class _Cell extends StatelessWidget {
  const _Cell({
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final (player, isWinning) = context.select((GameScreenCubit cubit) {
      final board = cubit.state.gameBoard;
      return (board.playerAt(index), board.isWinning(index));
    });

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

    return Provider.value(
      value: playerData,
      child: GestureDetector(
        onTap: player == null
            ? () {
                context.read<GameScreenCubit>().makeMove(index);
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
          child: Center(
            child: _CellSymbol(index),
          ),
        ),
      ),
    );
  }
}

class _CellSymbol extends StatelessWidget {
  const _CellSymbol(this.index);

  final int index;

  @override
  Widget build(BuildContext context) {
    final playerData = context.watch<_PlayerData?>();
    if (playerData == null) return const SizedBox.shrink();

    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 500),
      curve: Curves.elasticOut,
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: Icon(
            playerData.icon,
            size: 60,
            color: playerData.color,
          ),
        );
      },
    );
  }
}

class _RestartButton extends StatelessWidget {
  const _RestartButton();

  @override
  Widget build(BuildContext context) {
    final isGameOver = context.select((GameScreenCubit cubit) {
      return cubit.state.status is GameOver;
    });

    final strings = context.strings;

    if (isGameOver) {
      return ElevatedButton.icon(
        onPressed: () {
          context.read<GameScreenCubit>().restart();
        },
        icon: const Icon(Icons.refresh),
        label: Text(strings.game_screen_restart_button_label),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.purple.shade600,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 8,
          textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    }

    return const SizedBox.shrink();
  }
}

extension on GameStatus {
  String fetchHeaderText(AppLocalizations strings) {
    return switch (this) {
      Playing(:final currentPlayer) =>
        strings.game_screen_playing_label(currentPlayer.name),
      GameOver(:final winner?) =>
        strings.game_screen_game_over_label(winner.name),
      GameOver(winner: null) => strings.game_screen_draw_label,
    };
  }
}

extension on Player {
  String get name {
    return this == Player.one ? 'X' : 'O';
  }
}

typedef _PlayerData = ({
  String mark,
  IconData icon,
  Color color,
});
