// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameScreenState {
  GameBoard get gameBoard => throw _privateConstructorUsedError;
  GameStatus get status => throw _privateConstructorUsedError;

  /// Create a copy of GameScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameScreenStateCopyWith<GameScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameScreenStateCopyWith<$Res> {
  factory $GameScreenStateCopyWith(
          GameScreenState value, $Res Function(GameScreenState) then) =
      _$GameScreenStateCopyWithImpl<$Res, GameScreenState>;
  @useResult
  $Res call({GameBoard gameBoard, GameStatus status});

  $GameBoardCopyWith<$Res> get gameBoard;
  $GameStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$GameScreenStateCopyWithImpl<$Res, $Val extends GameScreenState>
    implements $GameScreenStateCopyWith<$Res> {
  _$GameScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameBoard = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      gameBoard: null == gameBoard
          ? _value.gameBoard
          : gameBoard // ignore: cast_nullable_to_non_nullable
              as GameBoard,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GameStatus,
    ) as $Val);
  }

  /// Create a copy of GameScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameBoardCopyWith<$Res> get gameBoard {
    return $GameBoardCopyWith<$Res>(_value.gameBoard, (value) {
      return _then(_value.copyWith(gameBoard: value) as $Val);
    });
  }

  /// Create a copy of GameScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GameStatusCopyWith<$Res> get status {
    return $GameStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GameScreenStateImplCopyWith<$Res>
    implements $GameScreenStateCopyWith<$Res> {
  factory _$$GameScreenStateImplCopyWith(_$GameScreenStateImpl value,
          $Res Function(_$GameScreenStateImpl) then) =
      __$$GameScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GameBoard gameBoard, GameStatus status});

  @override
  $GameBoardCopyWith<$Res> get gameBoard;
  @override
  $GameStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$GameScreenStateImplCopyWithImpl<$Res>
    extends _$GameScreenStateCopyWithImpl<$Res, _$GameScreenStateImpl>
    implements _$$GameScreenStateImplCopyWith<$Res> {
  __$$GameScreenStateImplCopyWithImpl(
      _$GameScreenStateImpl _value, $Res Function(_$GameScreenStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameBoard = null,
    Object? status = null,
  }) {
    return _then(_$GameScreenStateImpl(
      gameBoard: null == gameBoard
          ? _value.gameBoard
          : gameBoard // ignore: cast_nullable_to_non_nullable
              as GameBoard,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as GameStatus,
    ));
  }
}

/// @nodoc

class _$GameScreenStateImpl implements _GameScreenState {
  const _$GameScreenStateImpl(
      {this.gameBoard = GameBoard.initial,
      this.status = const GameStatus.playing(currentPlayer: Player.one)});

  @override
  @JsonKey()
  final GameBoard gameBoard;
  @override
  @JsonKey()
  final GameStatus status;

  @override
  String toString() {
    return 'GameScreenState(gameBoard: $gameBoard, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameScreenStateImpl &&
            (identical(other.gameBoard, gameBoard) ||
                other.gameBoard == gameBoard) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameBoard, status);

  /// Create a copy of GameScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameScreenStateImplCopyWith<_$GameScreenStateImpl> get copyWith =>
      __$$GameScreenStateImplCopyWithImpl<_$GameScreenStateImpl>(
          this, _$identity);
}

abstract class _GameScreenState implements GameScreenState {
  const factory _GameScreenState(
      {final GameBoard gameBoard,
      final GameStatus status}) = _$GameScreenStateImpl;

  @override
  GameBoard get gameBoard;
  @override
  GameStatus get status;

  /// Create a copy of GameScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameScreenStateImplCopyWith<_$GameScreenStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
