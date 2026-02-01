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

  @override
  String get home_screen_subtitle => 'Choose your grid size';

  @override
  String get home_screen_resume_section_game_in_progress => 'Game in Progress';

  @override
  String get home_screen_resume_section_game_resume => 'Resume Game';

  @override
  String get home_screen_start_new_game_section_grid => 'Grid';

  @override
  String get home_screen_start_new_game_section_moves => 'Moves';

  @override
  String home_screen_start_new_game_section_grid_size(Object size) {
    return 'Grid Size: ${size}x$size';
  }

  @override
  String get home_screen_start_new_game_section_start_game => 'Start New Game';
}
