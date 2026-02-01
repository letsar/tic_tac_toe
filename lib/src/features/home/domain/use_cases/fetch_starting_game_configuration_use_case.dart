import 'dart:collection';

import 'package:tic_tac_toe/src/features/home/domain/entities/starting_game_configuration.dart';

class FetchStartingGameConfigurationUseCase {
  FetchStartingGameConfigurationUseCase();

  StartingGameConfiguration call() {
    return StartingGameConfiguration(
      boardSize: 3,
      availableBoardSizes: UnmodifiableListView(const [3, 4, 5]),
    );
  }
}
