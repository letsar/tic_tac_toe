import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tic_tac_toe/src/features/game/domain/use_cases/make_move_use_case.dart';
import 'package:tic_tac_toe/src/features/game/domain/use_cases/reset_game_session_use_case.dart';

final makeMoveUseCaseProvider = Provider((ref) => MakeMoveUseCase());
final resetGameSessionProvider = Provider((ref) => ResetGameSessionUseCase());
