// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_session_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GameSessionDto _$GameSessionDtoFromJson(Map<String, dynamic> json) =>
    _GameSessionDto(
      playerIds: (json['playerIds'] as List<dynamic>)
          .map((e) => (e as num?)?.toInt())
          .toList(),
      status: GameStatusDto.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameSessionDtoToJson(_GameSessionDto instance) =>
    <String, dynamic>{
      'playerIds': instance.playerIds,
      'status': instance.status,
    };
