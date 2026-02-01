import 'package:flutter/widgets.dart';
import 'package:tic_tac_toe/src/shared/l10n/app_localizations.dart';

extension BuildContextLocalizationsExtensions on BuildContext {
  AppLocalizations get strings => AppLocalizations.of(this)!;
}
