import 'dart:collection';
import 'dart:math' as math;

import 'package:tic_tac_toe/src/core/data/services/local_storage_service.dart';
import 'package:tic_tac_toe/src/shared/game/data/dtos/game_session_dto.dart';
import 'package:tic_tac_toe/src/shared/game/data/dtos/game_status_dto.dart';
import 'package:tic_tac_toe/src/shared/game/domain/entities/game_status.dart';
import 'package:tic_tac_toe/src/shared/game/domain/entities/player.dart';
import 'package:tic_tac_toe/src/shared/game/domain/entities/tic_tac_toe_game_board.dart';
import 'package:tic_tac_toe/src/shared/game/domain/entities/tic_tac_toe_game_session.dart';
import 'package:tic_tac_toe/src/shared/game/domain/repositories/game_repository.dart';

class PreferencesGameRepository implements GameRepository {
  PreferencesGameRepository({
    required LocalStorageService localStorageService,
  }) : _localStorageService = localStorageService;

  final LocalStorageService _localStorageService;
  static const _storageKey = 'current_game_session';

  @override
  Future<TicTacToeGameSession?> fetchCurrentSession() async {
    final json = await _localStorageService.load(_storageKey);
    if (json == null) {
      return null;
    }
    final dto = GameSessionDto.fromJson(json);
    return dto.toDomain();
  }

  @override
  Future<void> saveSession(TicTacToeGameSession session) async {
    final dto = session.toDto();
    final json = dto.toJson();
    await _localStorageService.save(_storageKey, json);
  }
}

extension on TicTacToeGameSession {
  GameSessionDto toDto() {
    return GameSessionDto(
      playerIds: board.playedBy.map((p) => p?.index).toList(),
      status: status.toDto(),
    );
  }
}

extension on GameStatus {
  GameStatusDto toDto() {
    return when(
      playing: (currentPlayer) => GameStatusDto.playing(
        currentPlayerId: currentPlayer.index,
      ),
      gameOver: (winner, winningCells) => GameStatusDto.gameOver(
        winnerId: winner?.index,
        winningCells: winningCells.toList(),
      ),
    );
  }
}

extension on GameSessionDto {
  TicTacToeGameSession toDomain() {
    return TicTacToeGameSession(
      board: playerIds.toBoard(),
      status: status.toDomain(),
    );
  }
}

extension on List<int?> {
  TicTacToeGameBoard toBoard() {
    final size = math.sqrt(length).ceil();
    var board = TicTacToeGameBoard(size: size);
    for (int i = 0; i < length; i++) {
      final id = this[i];
      final player = id != null ? Player.values[id] : null;
      if (player != null) {
        board = board.makeMove(i, player);
      }
    }

    return board;
  }
}

extension on GameStatusDto {
  GameStatus toDomain() {
    return when(
      playing: (currentPlayerId) {
        return GameStatus.playing(
          currentPlayer: Player.values[currentPlayerId],
        );
      },
      gameOver: (winnerId, winningCells) {
        return GameStatus.gameOver(
          winner: winnerId != null ? Player.values[winnerId] : null,
          winningCells: UnmodifiableListView(winningCells),
        );
      },
    );
  }
}
