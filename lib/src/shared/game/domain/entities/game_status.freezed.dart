// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameStatus {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameStatus);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameStatus()';
}


}

/// @nodoc
class $GameStatusCopyWith<$Res>  {
$GameStatusCopyWith(GameStatus _, $Res Function(GameStatus) __);
}


/// Adds pattern-matching-related methods to [GameStatus].
extension GameStatusPatterns on GameStatus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Playing value)?  playing,TResult Function( GameOver value)?  gameOver,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Playing() when playing != null:
return playing(_that);case GameOver() when gameOver != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Playing value)  playing,required TResult Function( GameOver value)  gameOver,}){
final _that = this;
switch (_that) {
case Playing():
return playing(_that);case GameOver():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Playing value)?  playing,TResult? Function( GameOver value)?  gameOver,}){
final _that = this;
switch (_that) {
case Playing() when playing != null:
return playing(_that);case GameOver() when gameOver != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( Player currentPlayer)?  playing,TResult Function( Player? winner,  UnmodifiableListView<int> winningCells)?  gameOver,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Playing() when playing != null:
return playing(_that.currentPlayer);case GameOver() when gameOver != null:
return gameOver(_that.winner,_that.winningCells);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( Player currentPlayer)  playing,required TResult Function( Player? winner,  UnmodifiableListView<int> winningCells)  gameOver,}) {final _that = this;
switch (_that) {
case Playing():
return playing(_that.currentPlayer);case GameOver():
return gameOver(_that.winner,_that.winningCells);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( Player currentPlayer)?  playing,TResult? Function( Player? winner,  UnmodifiableListView<int> winningCells)?  gameOver,}) {final _that = this;
switch (_that) {
case Playing() when playing != null:
return playing(_that.currentPlayer);case GameOver() when gameOver != null:
return gameOver(_that.winner,_that.winningCells);case _:
  return null;

}
}

}

/// @nodoc


class Playing implements GameStatus {
  const Playing({required this.currentPlayer});
  

/// The player who is currently taking their turn.
 final  Player currentPlayer;

/// Create a copy of GameStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayingCopyWith<Playing> get copyWith => _$PlayingCopyWithImpl<Playing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Playing&&(identical(other.currentPlayer, currentPlayer) || other.currentPlayer == currentPlayer));
}


@override
int get hashCode => Object.hash(runtimeType,currentPlayer);

@override
String toString() {
  return 'GameStatus.playing(currentPlayer: $currentPlayer)';
}


}

/// @nodoc
abstract mixin class $PlayingCopyWith<$Res> implements $GameStatusCopyWith<$Res> {
  factory $PlayingCopyWith(Playing value, $Res Function(Playing) _then) = _$PlayingCopyWithImpl;
@useResult
$Res call({
 Player currentPlayer
});




}
/// @nodoc
class _$PlayingCopyWithImpl<$Res>
    implements $PlayingCopyWith<$Res> {
  _$PlayingCopyWithImpl(this._self, this._then);

  final Playing _self;
  final $Res Function(Playing) _then;

/// Create a copy of GameStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currentPlayer = null,}) {
  return _then(Playing(
currentPlayer: null == currentPlayer ? _self.currentPlayer : currentPlayer // ignore: cast_nullable_to_non_nullable
as Player,
  ));
}


}

/// @nodoc


class GameOver implements GameStatus {
  const GameOver({this.winner, required this.winningCells});
  

/// The player who won the game, if any.
 final  Player? winner;
/// The indices of the winning cells.
 final  UnmodifiableListView<int> winningCells;

/// Create a copy of GameStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameOverCopyWith<GameOver> get copyWith => _$GameOverCopyWithImpl<GameOver>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameOver&&(identical(other.winner, winner) || other.winner == winner)&&const DeepCollectionEquality().equals(other.winningCells, winningCells));
}


@override
int get hashCode => Object.hash(runtimeType,winner,const DeepCollectionEquality().hash(winningCells));

@override
String toString() {
  return 'GameStatus.gameOver(winner: $winner, winningCells: $winningCells)';
}


}

/// @nodoc
abstract mixin class $GameOverCopyWith<$Res> implements $GameStatusCopyWith<$Res> {
  factory $GameOverCopyWith(GameOver value, $Res Function(GameOver) _then) = _$GameOverCopyWithImpl;
@useResult
$Res call({
 Player? winner, UnmodifiableListView<int> winningCells
});




}
/// @nodoc
class _$GameOverCopyWithImpl<$Res>
    implements $GameOverCopyWith<$Res> {
  _$GameOverCopyWithImpl(this._self, this._then);

  final GameOver _self;
  final $Res Function(GameOver) _then;

/// Create a copy of GameStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? winner = freezed,Object? winningCells = null,}) {
  return _then(GameOver(
winner: freezed == winner ? _self.winner : winner // ignore: cast_nullable_to_non_nullable
as Player?,winningCells: null == winningCells ? _self.winningCells : winningCells // ignore: cast_nullable_to_non_nullable
as UnmodifiableListView<int>,
  ));
}


}

// dart format on
