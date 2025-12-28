// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Player currentPlayer) playing,
    required TResult Function(Player? winner) gameOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Player currentPlayer)? playing,
    TResult? Function(Player? winner)? gameOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Player currentPlayer)? playing,
    TResult Function(Player? winner)? gameOver,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Playing value) playing,
    required TResult Function(GameOver value) gameOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Playing value)? playing,
    TResult? Function(GameOver value)? gameOver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Playing value)? playing,
    TResult Function(GameOver value)? gameOver,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStatusCopyWith<$Res> {
  factory $GameStatusCopyWith(
          GameStatus value, $Res Function(GameStatus) then) =
      _$GameStatusCopyWithImpl<$Res, GameStatus>;
}

/// @nodoc
class _$GameStatusCopyWithImpl<$Res, $Val extends GameStatus>
    implements $GameStatusCopyWith<$Res> {
  _$GameStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameStatus
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PlayingImplCopyWith<$Res> {
  factory _$$PlayingImplCopyWith(
          _$PlayingImpl value, $Res Function(_$PlayingImpl) then) =
      __$$PlayingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Player currentPlayer});
}

/// @nodoc
class __$$PlayingImplCopyWithImpl<$Res>
    extends _$GameStatusCopyWithImpl<$Res, _$PlayingImpl>
    implements _$$PlayingImplCopyWith<$Res> {
  __$$PlayingImplCopyWithImpl(
      _$PlayingImpl _value, $Res Function(_$PlayingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPlayer = null,
  }) {
    return _then(_$PlayingImpl(
      currentPlayer: null == currentPlayer
          ? _value.currentPlayer
          : currentPlayer // ignore: cast_nullable_to_non_nullable
              as Player,
    ));
  }
}

/// @nodoc

class _$PlayingImpl implements Playing {
  const _$PlayingImpl({required this.currentPlayer});

  @override
  final Player currentPlayer;

  @override
  String toString() {
    return 'GameStatus.playing(currentPlayer: $currentPlayer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayingImpl &&
            (identical(other.currentPlayer, currentPlayer) ||
                other.currentPlayer == currentPlayer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPlayer);

  /// Create a copy of GameStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayingImplCopyWith<_$PlayingImpl> get copyWith =>
      __$$PlayingImplCopyWithImpl<_$PlayingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Player currentPlayer) playing,
    required TResult Function(Player? winner) gameOver,
  }) {
    return playing(currentPlayer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Player currentPlayer)? playing,
    TResult? Function(Player? winner)? gameOver,
  }) {
    return playing?.call(currentPlayer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Player currentPlayer)? playing,
    TResult Function(Player? winner)? gameOver,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(currentPlayer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Playing value) playing,
    required TResult Function(GameOver value) gameOver,
  }) {
    return playing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Playing value)? playing,
    TResult? Function(GameOver value)? gameOver,
  }) {
    return playing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Playing value)? playing,
    TResult Function(GameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(this);
    }
    return orElse();
  }
}

abstract class Playing implements GameStatus {
  const factory Playing({required final Player currentPlayer}) = _$PlayingImpl;

  Player get currentPlayer;

  /// Create a copy of GameStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayingImplCopyWith<_$PlayingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GameOverImplCopyWith<$Res> {
  factory _$$GameOverImplCopyWith(
          _$GameOverImpl value, $Res Function(_$GameOverImpl) then) =
      __$$GameOverImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Player? winner});
}

/// @nodoc
class __$$GameOverImplCopyWithImpl<$Res>
    extends _$GameStatusCopyWithImpl<$Res, _$GameOverImpl>
    implements _$$GameOverImplCopyWith<$Res> {
  __$$GameOverImplCopyWithImpl(
      _$GameOverImpl _value, $Res Function(_$GameOverImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? winner = freezed,
  }) {
    return _then(_$GameOverImpl(
      winner: freezed == winner
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as Player?,
    ));
  }
}

/// @nodoc

class _$GameOverImpl implements GameOver {
  const _$GameOverImpl({this.winner});

  @override
  final Player? winner;

  @override
  String toString() {
    return 'GameStatus.gameOver(winner: $winner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameOverImpl &&
            (identical(other.winner, winner) || other.winner == winner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, winner);

  /// Create a copy of GameStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameOverImplCopyWith<_$GameOverImpl> get copyWith =>
      __$$GameOverImplCopyWithImpl<_$GameOverImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Player currentPlayer) playing,
    required TResult Function(Player? winner) gameOver,
  }) {
    return gameOver(winner);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Player currentPlayer)? playing,
    TResult? Function(Player? winner)? gameOver,
  }) {
    return gameOver?.call(winner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Player currentPlayer)? playing,
    TResult Function(Player? winner)? gameOver,
    required TResult orElse(),
  }) {
    if (gameOver != null) {
      return gameOver(winner);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Playing value) playing,
    required TResult Function(GameOver value) gameOver,
  }) {
    return gameOver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Playing value)? playing,
    TResult? Function(GameOver value)? gameOver,
  }) {
    return gameOver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Playing value)? playing,
    TResult Function(GameOver value)? gameOver,
    required TResult orElse(),
  }) {
    if (gameOver != null) {
      return gameOver(this);
    }
    return orElse();
  }
}

abstract class GameOver implements GameStatus {
  const factory GameOver({final Player? winner}) = _$GameOverImpl;

  Player? get winner;

  /// Create a copy of GameStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameOverImplCopyWith<_$GameOverImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
