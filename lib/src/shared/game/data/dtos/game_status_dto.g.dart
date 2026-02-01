// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_status_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayingDto _$PlayingDtoFromJson(Map<String, dynamic> json) => PlayingDto(
  currentPlayerId: (json['currentPlayerId'] as num).toInt(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$PlayingDtoToJson(PlayingDto instance) =>
    <String, dynamic>{
      'currentPlayerId': instance.currentPlayerId,
      'runtimeType': instance.$type,
    };

GameOverDto _$GameOverDtoFromJson(Map<String, dynamic> json) => GameOverDto(
  winnerId: (json['winnerId'] as num?)?.toInt(),
  winningCells: (json['winningCells'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$GameOverDtoToJson(GameOverDto instance) =>
    <String, dynamic>{
      'winnerId': instance.winnerId,
      'winningCells': instance.winningCells,
      'runtimeType': instance.$type,
    };
