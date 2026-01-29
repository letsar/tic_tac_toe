import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tic_tac_toe/src/features/game/data/dtos/game_status_dto.dart';

part 'game_session_dto.freezed.dart';
part 'game_session_dto.g.dart';

@freezed
sealed class GameSessionDto with _$GameSessionDto {
  const factory GameSessionDto({
    required List<int?> playerIds,
    required GameStatusDto status,
  }) = _GameSessionDto;

  factory GameSessionDto.fromJson(Map<String, dynamic> json) =>
      _$GameSessionDtoFromJson(json);
}
