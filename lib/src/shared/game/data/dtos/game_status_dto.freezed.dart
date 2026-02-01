// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_status_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
GameStatusDto _$GameStatusDtoFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'playing':
          return PlayingDto.fromJson(
            json
          );
                case 'gameOver':
          return GameOverDto.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'GameStatusDto',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$GameStatusDto {



  /// Serializes this GameStatusDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameStatusDto);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameStatusDto()';
}


}

/// @nodoc
class $GameStatusDtoCopyWith<$Res>  {
$GameStatusDtoCopyWith(GameStatusDto _, $Res Function(GameStatusDto) __);
}


/// Adds pattern-matching-related methods to [GameStatusDto].
extension GameStatusDtoPatterns on GameStatusDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PlayingDto value)?  playing,TResult Function( GameOverDto value)?  gameOver,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PlayingDto() when playing != null:
return playing(_that);case GameOverDto() when gameOver != null:
return gameOver(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PlayingDto value)  playing,required TResult Function( GameOverDto value)  gameOver,}){
final _that = this;
switch (_that) {
case PlayingDto():
return playing(_that);case GameOverDto():
return gameOver(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PlayingDto value)?  playing,TResult? Function( GameOverDto value)?  gameOver,}){
final _that = this;
switch (_that) {
case PlayingDto() when playing != null:
return playing(_that);case GameOverDto() when gameOver != null:
return gameOver(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int currentPlayerId)?  playing,TResult Function( int? winnerId,  List<int> winningCells)?  gameOver,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PlayingDto() when playing != null:
return playing(_that.currentPlayerId);case GameOverDto() when gameOver != null:
return gameOver(_that.winnerId,_that.winningCells);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int currentPlayerId)  playing,required TResult Function( int? winnerId,  List<int> winningCells)  gameOver,}) {final _that = this;
switch (_that) {
case PlayingDto():
return playing(_that.currentPlayerId);case GameOverDto():
return gameOver(_that.winnerId,_that.winningCells);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int currentPlayerId)?  playing,TResult? Function( int? winnerId,  List<int> winningCells)?  gameOver,}) {final _that = this;
switch (_that) {
case PlayingDto() when playing != null:
return playing(_that.currentPlayerId);case GameOverDto() when gameOver != null:
return gameOver(_that.winnerId,_that.winningCells);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class PlayingDto implements GameStatusDto {
  const PlayingDto({required this.currentPlayerId, final  String? $type}): $type = $type ?? 'playing';
  factory PlayingDto.fromJson(Map<String, dynamic> json) => _$PlayingDtoFromJson(json);

 final  int currentPlayerId;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of GameStatusDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayingDtoCopyWith<PlayingDto> get copyWith => _$PlayingDtoCopyWithImpl<PlayingDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlayingDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayingDto&&(identical(other.currentPlayerId, currentPlayerId) || other.currentPlayerId == currentPlayerId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPlayerId);

@override
String toString() {
  return 'GameStatusDto.playing(currentPlayerId: $currentPlayerId)';
}


}

/// @nodoc
abstract mixin class $PlayingDtoCopyWith<$Res> implements $GameStatusDtoCopyWith<$Res> {
  factory $PlayingDtoCopyWith(PlayingDto value, $Res Function(PlayingDto) _then) = _$PlayingDtoCopyWithImpl;
@useResult
$Res call({
 int currentPlayerId
});




}
/// @nodoc
class _$PlayingDtoCopyWithImpl<$Res>
    implements $PlayingDtoCopyWith<$Res> {
  _$PlayingDtoCopyWithImpl(this._self, this._then);

  final PlayingDto _self;
  final $Res Function(PlayingDto) _then;

/// Create a copy of GameStatusDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currentPlayerId = null,}) {
  return _then(PlayingDto(
currentPlayerId: null == currentPlayerId ? _self.currentPlayerId : currentPlayerId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
@JsonSerializable()

class GameOverDto implements GameStatusDto {
  const GameOverDto({this.winnerId, required final  List<int> winningCells, final  String? $type}): _winningCells = winningCells,$type = $type ?? 'gameOver';
  factory GameOverDto.fromJson(Map<String, dynamic> json) => _$GameOverDtoFromJson(json);

 final  int? winnerId;
 final  List<int> _winningCells;
 List<int> get winningCells {
  if (_winningCells is EqualUnmodifiableListView) return _winningCells;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_winningCells);
}


@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of GameStatusDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameOverDtoCopyWith<GameOverDto> get copyWith => _$GameOverDtoCopyWithImpl<GameOverDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GameOverDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameOverDto&&(identical(other.winnerId, winnerId) || other.winnerId == winnerId)&&const DeepCollectionEquality().equals(other._winningCells, _winningCells));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,winnerId,const DeepCollectionEquality().hash(_winningCells));

@override
String toString() {
  return 'GameStatusDto.gameOver(winnerId: $winnerId, winningCells: $winningCells)';
}


}

/// @nodoc
abstract mixin class $GameOverDtoCopyWith<$Res> implements $GameStatusDtoCopyWith<$Res> {
  factory $GameOverDtoCopyWith(GameOverDto value, $Res Function(GameOverDto) _then) = _$GameOverDtoCopyWithImpl;
@useResult
$Res call({
 int? winnerId, List<int> winningCells
});




}
/// @nodoc
class _$GameOverDtoCopyWithImpl<$Res>
    implements $GameOverDtoCopyWith<$Res> {
  _$GameOverDtoCopyWithImpl(this._self, this._then);

  final GameOverDto _self;
  final $Res Function(GameOverDto) _then;

/// Create a copy of GameStatusDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? winnerId = freezed,Object? winningCells = null,}) {
  return _then(GameOverDto(
winnerId: freezed == winnerId ? _self.winnerId : winnerId // ignore: cast_nullable_to_non_nullable
as int?,winningCells: null == winningCells ? _self._winningCells : winningCells // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
