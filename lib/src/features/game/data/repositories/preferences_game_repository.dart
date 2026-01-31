import 'dart:collection';
import 'dart:convert';
import 'dart:math' as math;

import 'package:shared_preferences/shared_preferences.dart';
import 'package:tic_tac_toe/src/features/game/data/dtos/game_session_dto.dart';
import 'package:tic_tac_toe/src/features/game/data/dtos/game_status_dto.dart';
import 'package:tic_tac_toe/src/features/game/domain/entities/game_status.dart';
import 'package:tic_tac_toe/src/features/game/domain/entities/player.dart';
import 'package:tic_tac_toe/src/features/game/domain/entities/tic_tac_toe_game_board.dart';
import 'package:tic_tac_toe/src/features/game/domain/entities/tic_tac_toe_game_session.dart';
import 'package:tic_tac_toe/src/features/game/domain/repositories/game_repository.dart';

class PreferencesGameRepository implements GameRepository {
  static const _storageKey = 'current_game_session';

  @override
  Future<TicTacToeGameSession?> fetchCurrentSession() async {
    final prefs = await SharedPreferences.getInstance();
    final rawJson = prefs.getString(_storageKey);
    if (rawJson == null) {
      return null;
    }
    final json = jsonDecode(rawJson);
    final dto = GameSessionDto.fromJson(json);
    return dto.toDomain();
  }

  @override
  Future<void> saveSession(TicTacToeGameSession session) async {
    final dto = session.toDto();
    final json = dto.toJson();
    final rawJson = jsonEncode(json);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_storageKey, rawJson);
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
