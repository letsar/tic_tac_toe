part of 'app_localizations.dart';

// ignore_for_file: type=lint

class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn() : super('en');

  @override
  String get app_title => 'Tic Tac Toe';

  @override
  String get game_screen_draw_label => '🤝 It\'s a Draw! 🤝';

  @override
  String game_screen_game_over_label(Object playerName) {
    return '🎉 Player $playerName Wins! 🎉';
  }

  @override
  String game_screen_playing_label(Object playerName) {
    return 'Player $playerName\'s turn';
  }

  @override
  String get game_screen_reset_button_label => 'Reset Game';
}
