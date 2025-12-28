import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tic_tac_toe/src/features/game/data/models/game_board.dart';
import 'package:tic_tac_toe/src/features/game/data/models/game_status.dart';
import 'package:tic_tac_toe/src/features/game/data/models/player.dart';

part 'game_screen_cubit.freezed.dart';

/// The cubit associated with the GameScreen.
class GameScreenCubit extends Cubit<GameScreenState> {
  GameScreenCubit() : super(_initialState);

  static const _initialState = GameScreenState();

  void makeMove(int index) {
    final board = state.gameBoard;

    if (state.status case Playing(:final currentPlayer)
        when board.canMakeMove(index)) {
      final newBoard = board.makeMove(index, currentPlayer);
      final newStatus = newBoard.nextGameStatus(index);
      emit(state.copyWith(gameBoard: newBoard, status: newStatus));
    }
  }

  void restart() {
    emit(_initialState);
  }
}

@freezed
class GameScreenState with _$GameScreenState {
  const factory GameScreenState({
    @Default(GameBoard.initial) GameBoard gameBoard,
    @Default(GameStatus.playing(currentPlayer: Player.one)) GameStatus status,
  }) = _GameScreenState;
}
