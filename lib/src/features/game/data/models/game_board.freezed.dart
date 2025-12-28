// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_board.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GameBoard {
  List<Player?> get playedBy => throw _privateConstructorUsedError;

  /// Create a copy of GameBoard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameBoardCopyWith<GameBoard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameBoardCopyWith<$Res> {
  factory $GameBoardCopyWith(GameBoard value, $Res Function(GameBoard) then) =
      _$GameBoardCopyWithImpl<$Res, GameBoard>;
  @useResult
  $Res call({List<Player?> playedBy});
}

/// @nodoc
class _$GameBoardCopyWithImpl<$Res, $Val extends GameBoard>
    implements $GameBoardCopyWith<$Res> {
  _$GameBoardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameBoard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playedBy = null,
  }) {
    return _then(_value.copyWith(
      playedBy: null == playedBy
          ? _value.playedBy
          : playedBy // ignore: cast_nullable_to_non_nullable
              as List<Player?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameBoardImplCopyWith<$Res>
    implements $GameBoardCopyWith<$Res> {
  factory _$$GameBoardImplCopyWith(
          _$GameBoardImpl value, $Res Function(_$GameBoardImpl) then) =
      __$$GameBoardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Player?> playedBy});
}

/// @nodoc
class __$$GameBoardImplCopyWithImpl<$Res>
    extends _$GameBoardCopyWithImpl<$Res, _$GameBoardImpl>
    implements _$$GameBoardImplCopyWith<$Res> {
  __$$GameBoardImplCopyWithImpl(
      _$GameBoardImpl _value, $Res Function(_$GameBoardImpl) _then)
      : super(_value, _then);

  /// Create a copy of GameBoard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? playedBy = null,
  }) {
    return _then(_$GameBoardImpl(
      playedBy: null == playedBy
          ? _value._playedBy
          : playedBy // ignore: cast_nullable_to_non_nullable
              as List<Player?>,
    ));
  }
}

/// @nodoc

class _$GameBoardImpl extends _GameBoard {
  const _$GameBoardImpl({required final List<Player?> playedBy})
      : _playedBy = playedBy,
        super._();

  final List<Player?> _playedBy;
  @override
  List<Player?> get playedBy {
    if (_playedBy is EqualUnmodifiableListView) return _playedBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_playedBy);
  }

  @override
  String toString() {
    return 'GameBoard._playedBy(playedBy: $playedBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameBoardImpl &&
            const DeepCollectionEquality().equals(other._playedBy, _playedBy));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_playedBy));

  /// Create a copy of GameBoard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameBoardImplCopyWith<_$GameBoardImpl> get copyWith =>
      __$$GameBoardImplCopyWithImpl<_$GameBoardImpl>(this, _$identity);
}

abstract class _GameBoard extends GameBoard {
  const factory _GameBoard({required final List<Player?> playedBy}) =
      _$GameBoardImpl;
  const _GameBoard._() : super._();

  @override
  List<Player?> get playedBy;

  /// Create a copy of GameBoard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameBoardImplCopyWith<_$GameBoardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
