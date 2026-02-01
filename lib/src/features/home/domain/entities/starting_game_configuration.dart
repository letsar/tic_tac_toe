import 'dart:collection';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'starting_game_configuration.freezed.dart';

@freezed
sealed class StartingGameConfiguration with _$StartingGameConfiguration {
  const factory StartingGameConfiguration({
    required int boardSize,
    required UnmodifiableListView<int> availableBoardSizes,
  }) = _StartingGameConfiguration;
}
