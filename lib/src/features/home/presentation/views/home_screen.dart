import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tic_tac_toe/src/core/presentation/widgets/app_scaffold.dart';
import 'package:tic_tac_toe/src/features/home/presentation/providers/home_screen_providers.dart';
import 'package:tic_tac_toe/src/shared/game/domain/entities/tic_tac_toe_game_session.dart';
import 'package:tic_tac_toe/src/shared/l10n/index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _Title(),
          SizedBox(height: 48),
          _ResumeGameSection(),
          SizedBox(height: 32),
          _GridSizeSelector(),
          SizedBox(height: 48),
          _StartGameButton(),
        ],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    final strings = context.strings;

    return Column(
      children: [
        Text(
          strings.app_title,
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 56,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          strings.home_screen_subtitle,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Colors.white.withValues(alpha: 0.9),
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}

class _ResumeGameSection extends ConsumerWidget {
  const _ResumeGameSection();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentGameSession = ref.watch(currentGameSessionControllerProvider);

    return currentGameSession.when(
      loading: () {
        return const SizedBox(
          height: 120,
          child: Center(
            child: CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: 2,
            ),
          ),
        );
      },
      data: (currentGameSession) {
        if (currentGameSession == null) {
          return const SizedBox.shrink();
        }

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: _ResumeGameButton(session: currentGameSession),
        );
      },
      error: (error, stackTrace) {
        return const SizedBox.shrink();
      },
    );
  }
}

class _ResumeGameButton extends StatelessWidget {
  const _ResumeGameButton({
    required this.session,
  });

  final TicTacToeGameSession session;

  @override
  Widget build(BuildContext context) {
    final strings = context.strings;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.green.shade400.withValues(alpha: 0.3),
            Colors.teal.shade400.withValues(alpha: 0.3),
          ],
        ),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: Colors.green.withValues(alpha: 0.6),
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.green.withValues(alpha: 0.3),
            blurRadius: 20,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.green.withValues(alpha: 0.3),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.pending_outlined,
                  color: Colors.white,
                  size: 28,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                strings.home_screen_resume_section_game_in_progress,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          _GameInfo(session: session),
          const SizedBox(height: 16),

          SizedBox(
            width: double.infinity,
            child: Consumer(
              builder: (context, ref, child) {
                return ElevatedButton.icon(
                  onPressed: () {
                    ref
                        .read(currentGameSessionControllerProvider.notifier)
                        .onResumeGameTapped();
                  },
                  icon: const Icon(Icons.play_circle_filled, size: 28),
                  label: Text(
                    strings.home_screen_resume_section_game_resume,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade600,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 18,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 8,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _GameInfo extends StatelessWidget {
  const _GameInfo({required this.session});

  final TicTacToeGameSession session;

  @override
  Widget build(BuildContext context) {
    final strings = context.strings;

    final boardSize = session.board.size;
    final emptyCellsCount = session.board.playedBy
        .where((p) => p == null)
        .length;
    final totalCells = boardSize * boardSize;
    final movesPlayed = totalCells - emptyCellsCount;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _InfoItem(
            icon: Icons.grid_4x4,
            label: strings.home_screen_start_new_game_section_grid,
            value: '${boardSize}x$boardSize',
          ),
          Container(
            width: 1,
            height: 30,
            color: Colors.white.withValues(alpha: 0.3),
          ),
          _InfoItem(
            icon: Icons.touch_app,
            label: strings.home_screen_start_new_game_section_moves,
            value: '$movesPlayed',
          ),
        ],
      ),
    );
  }
}

class _InfoItem extends StatelessWidget {
  const _InfoItem({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 24),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            color: Colors.white.withValues(alpha: 0.7),
            fontSize: 12,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class _GridSizeSelector extends ConsumerWidget {
  const _GridSizeSelector();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final strings = context.strings;
    final (boardSize, availableBoardSizes) = ref.watch(
      startNewGameControllerProvider.select(
        (x) => (x.boardSize, x.availableBoardSizes),
      ),
    );

    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.symmetric(horizontal: 32),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.3),
          width: 2,
        ),
      ),
      child: Column(
        children: [
          Text(
            strings.home_screen_start_new_game_section_grid_size(boardSize),
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: availableBoardSizes.map((size) {
              final isSelected = size == boardSize;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: _GridSizeOption(
                  size: size,
                  isSelected: isSelected,
                  onTap: () {
                    ref
                        .read(startNewGameControllerProvider.notifier)
                        .onGridSizeTapped(size);
                  },
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class _GridSizeOption extends StatelessWidget {
  const _GridSizeOption({
    required this.size,
    required this.isSelected,
    required this.onTap,
  });

  final int size;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: isSelected
              ? Colors.white
              : Colors.white.withValues(alpha: 0.2),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected
                ? Colors.purple.shade400
                : Colors.white.withValues(alpha: 0.5),
            width: isSelected ? 3 : 2,
          ),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Colors.purple.withValues(alpha: 0.5),
                    blurRadius: 12,
                    spreadRadius: 2,
                  ),
                ]
              : null,
        ),
        child: Center(
          child: Text(
            '${size}x$size',
            style: TextStyle(
              color: isSelected ? Colors.purple.shade600 : Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class _StartGameButton extends ConsumerWidget {
  const _StartGameButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final strings = context.strings;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            ref
                .read(startNewGameControllerProvider.notifier)
                .onStartGameTapped();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.purple.shade600,
            padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 8,
            textStyle: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.play_arrow, size: 32),
              const SizedBox(width: 12),
              Text(strings.home_screen_start_new_game_section_start_game),
            ],
          ),
        ),
      ),
    );
  }
}
