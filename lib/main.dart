import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tic_tac_toe/src/features/game/presentation/views/game_screen.dart';
import 'package:tic_tac_toe/src/features/l10n/index.dart';

void main() {
  runApp(
    const _Localizations(
      child: _App(),
    ),
  );
}

class _Localizations extends StatelessWidget {
  const _Localizations({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Localizations(
      delegates: AppLocalizations.localizationsDelegates,
      locale: AppLocalizations.defaultLocale,
      child: child,
    );
  }
}

class _App extends StatelessWidget {
  const _App();

  @override
  Widget build(BuildContext context) {
    final strings = context.strings;

    return ProviderScope(
      child: MaterialApp(
        title: strings.app_title,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
          useMaterial3: true,
        ),
        home: const GameScreen(),
      ),
    );
  }
}
