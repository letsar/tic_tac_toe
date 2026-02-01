import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_status_dto.freezed.dart';
part 'game_status_dto.g.dart';

@freezed
sealed class GameStatusDto with _$GameStatusDto {
  const factory GameStatusDto.playing({
    required int currentPlayerId,
  }) = PlayingDto;

  const factory GameStatusDto.gameOver({
    int? winnerId,
    required List<int> winningCells,
  }) = GameOverDto;

  factory GameStatusDto.fromJson(Map<String, dynamic> json) =>
      _$GameStatusDtoFromJson(json);
}
