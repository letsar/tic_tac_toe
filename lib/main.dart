import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tic_tac_toe/src/app/presentation/services/navigator_navigation_service.dart';
import 'package:tic_tac_toe/src/features/home/presentation/views/home_screen.dart';
import 'package:tic_tac_toe/src/shared/app/presentation/providers/shared_providers.dart';
import 'package:tic_tac_toe/src/shared/l10n/index.dart';

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

class _App extends StatefulWidget {
  const _App();

  @override
  State<_App> createState() => _AppState();
}

class _AppState extends State<_App> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    final strings = context.strings;

    return ProviderScope(
      overrides: [
        navigationServiceProvider.overrideWithValue(
          NavigatorNavigationService(navigatorKey: _navigatorKey),
        ),
      ],
      child: MaterialApp(
        title: strings.app_title,
        navigatorKey: _navigatorKey,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
