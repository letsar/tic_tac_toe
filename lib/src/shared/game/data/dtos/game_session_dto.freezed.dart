// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_session_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GameSessionDto {

 List<int?> get playerIds; GameStatusDto get status;
/// Create a copy of GameSessionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameSessionDtoCopyWith<GameSessionDto> get copyWith => _$GameSessionDtoCopyWithImpl<GameSessionDto>(this as GameSessionDto, _$identity);

  /// Serializes this GameSessionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameSessionDto&&const DeepCollectionEquality().equals(other.playerIds, playerIds)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(playerIds),status);

@override
String toString() {
  return 'GameSessionDto(playerIds: $playerIds, status: $status)';
}


}

/// @nodoc
abstract mixin class $GameSessionDtoCopyWith<$Res>  {
  factory $GameSessionDtoCopyWith(GameSessionDto value, $Res Function(GameSessionDto) _then) = _$GameSessionDtoCopyWithImpl;
@useResult
$Res call({
 List<int?> playerIds, GameStatusDto status
});


$GameStatusDtoCopyWith<$Res> get status;

}
/// @nodoc
class _$GameSessionDtoCopyWithImpl<$Res>
    implements $GameSessionDtoCopyWith<$Res> {
  _$GameSessionDtoCopyWithImpl(this._self, this._then);

  final GameSessionDto _self;
  final $Res Function(GameSessionDto) _then;

/// Create a copy of GameSessionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? playerIds = null,Object? status = null,}) {
  return _then(_self.copyWith(
playerIds: null == playerIds ? _self.playerIds : playerIds // ignore: cast_nullable_to_non_nullable
as List<int?>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GameStatusDto,
  ));
}
/// Create a copy of GameSessionDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameStatusDtoCopyWith<$Res> get status {
  
  return $GameStatusDtoCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}


/// Adds pattern-matching-related methods to [GameSessionDto].
extension GameSessionDtoPatterns on GameSessionDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameSessionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameSessionDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameSessionDto value)  $default,){
final _that = this;
switch (_that) {
case _GameSessionDto():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameSessionDto value)?  $default,){
final _that = this;
switch (_that) {
case _GameSessionDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<int?> playerIds,  GameStatusDto status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameSessionDto() when $default != null:
return $default(_that.playerIds,_that.status);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<int?> playerIds,  GameStatusDto status)  $default,) {final _that = this;
switch (_that) {
case _GameSessionDto():
return $default(_that.playerIds,_that.status);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<int?> playerIds,  GameStatusDto status)?  $default,) {final _that = this;
switch (_that) {
case _GameSessionDto() when $default != null:
return $default(_that.playerIds,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GameSessionDto implements GameSessionDto {
  const _GameSessionDto({required final  List<int?> playerIds, required this.status}): _playerIds = playerIds;
  factory _GameSessionDto.fromJson(Map<String, dynamic> json) => _$GameSessionDtoFromJson(json);

 final  List<int?> _playerIds;
@override List<int?> get playerIds {
  if (_playerIds is EqualUnmodifiableListView) return _playerIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_playerIds);
}

@override final  GameStatusDto status;

/// Create a copy of GameSessionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameSessionDtoCopyWith<_GameSessionDto> get copyWith => __$GameSessionDtoCopyWithImpl<_GameSessionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameSessionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameSessionDto&&const DeepCollectionEquality().equals(other._playerIds, _playerIds)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_playerIds),status);

@override
String toString() {
  return 'GameSessionDto(playerIds: $playerIds, status: $status)';
}


}

/// @nodoc
abstract mixin class _$GameSessionDtoCopyWith<$Res> implements $GameSessionDtoCopyWith<$Res> {
  factory _$GameSessionDtoCopyWith(_GameSessionDto value, $Res Function(_GameSessionDto) _then) = __$GameSessionDtoCopyWithImpl;
@override @useResult
$Res call({
 List<int?> playerIds, GameStatusDto status
});


@override $GameStatusDtoCopyWith<$Res> get status;

}
/// @nodoc
class __$GameSessionDtoCopyWithImpl<$Res>
    implements _$GameSessionDtoCopyWith<$Res> {
  __$GameSessionDtoCopyWithImpl(this._self, this._then);

  final _GameSessionDto _self;
  final $Res Function(_GameSessionDto) _then;

/// Create a copy of GameSessionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? playerIds = null,Object? status = null,}) {
  return _then(_GameSessionDto(
playerIds: null == playerIds ? _self._playerIds : playerIds // ignore: cast_nullable_to_non_nullable
as List<int?>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as GameStatusDto,
  ));
}

/// Create a copy of GameSessionDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GameStatusDtoCopyWith<$Res> get status {
  
  return $GameStatusDtoCopyWith<$Res>(_self.status, (value) {
    return _then(_self.copyWith(status: value));
  });
}
}

// dart format on
