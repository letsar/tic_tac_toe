// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'starting_game_configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StartingGameConfiguration {

 int get boardSize; UnmodifiableListView<int> get availableBoardSizes;
/// Create a copy of StartingGameConfiguration
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StartingGameConfigurationCopyWith<StartingGameConfiguration> get copyWith => _$StartingGameConfigurationCopyWithImpl<StartingGameConfiguration>(this as StartingGameConfiguration, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartingGameConfiguration&&(identical(other.boardSize, boardSize) || other.boardSize == boardSize)&&const DeepCollectionEquality().equals(other.availableBoardSizes, availableBoardSizes));
}


@override
int get hashCode => Object.hash(runtimeType,boardSize,const DeepCollectionEquality().hash(availableBoardSizes));

@override
String toString() {
  return 'StartingGameConfiguration(boardSize: $boardSize, availableBoardSizes: $availableBoardSizes)';
}


}

/// @nodoc
abstract mixin class $StartingGameConfigurationCopyWith<$Res>  {
  factory $StartingGameConfigurationCopyWith(StartingGameConfiguration value, $Res Function(StartingGameConfiguration) _then) = _$StartingGameConfigurationCopyWithImpl;
@useResult
$Res call({
 int boardSize, UnmodifiableListView<int> availableBoardSizes
});




}
/// @nodoc
class _$StartingGameConfigurationCopyWithImpl<$Res>
    implements $StartingGameConfigurationCopyWith<$Res> {
  _$StartingGameConfigurationCopyWithImpl(this._self, this._then);

  final StartingGameConfiguration _self;
  final $Res Function(StartingGameConfiguration) _then;

/// Create a copy of StartingGameConfiguration
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? boardSize = null,Object? availableBoardSizes = null,}) {
  return _then(_self.copyWith(
boardSize: null == boardSize ? _self.boardSize : boardSize // ignore: cast_nullable_to_non_nullable
as int,availableBoardSizes: null == availableBoardSizes ? _self.availableBoardSizes : availableBoardSizes // ignore: cast_nullable_to_non_nullable
as UnmodifiableListView<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [StartingGameConfiguration].
extension StartingGameConfigurationPatterns on StartingGameConfiguration {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StartingGameConfiguration value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StartingGameConfiguration() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StartingGameConfiguration value)  $default,){
final _that = this;
switch (_that) {
case _StartingGameConfiguration():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StartingGameConfiguration value)?  $default,){
final _that = this;
switch (_that) {
case _StartingGameConfiguration() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int boardSize,  UnmodifiableListView<int> availableBoardSizes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StartingGameConfiguration() when $default != null:
return $default(_that.boardSize,_that.availableBoardSizes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int boardSize,  UnmodifiableListView<int> availableBoardSizes)  $default,) {final _that = this;
switch (_that) {
case _StartingGameConfiguration():
return $default(_that.boardSize,_that.availableBoardSizes);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int boardSize,  UnmodifiableListView<int> availableBoardSizes)?  $default,) {final _that = this;
switch (_that) {
case _StartingGameConfiguration() when $default != null:
return $default(_that.boardSize,_that.availableBoardSizes);case _:
  return null;

}
}

}

/// @nodoc


class _StartingGameConfiguration implements StartingGameConfiguration {
  const _StartingGameConfiguration({required this.boardSize, required this.availableBoardSizes});
  

@override final  int boardSize;
@override final  UnmodifiableListView<int> availableBoardSizes;

/// Create a copy of StartingGameConfiguration
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StartingGameConfigurationCopyWith<_StartingGameConfiguration> get copyWith => __$StartingGameConfigurationCopyWithImpl<_StartingGameConfiguration>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartingGameConfiguration&&(identical(other.boardSize, boardSize) || other.boardSize == boardSize)&&const DeepCollectionEquality().equals(other.availableBoardSizes, availableBoardSizes));
}


@override
int get hashCode => Object.hash(runtimeType,boardSize,const DeepCollectionEquality().hash(availableBoardSizes));

@override
String toString() {
  return 'StartingGameConfiguration(boardSize: $boardSize, availableBoardSizes: $availableBoardSizes)';
}


}

/// @nodoc
abstract mixin class _$StartingGameConfigurationCopyWith<$Res> implements $StartingGameConfigurationCopyWith<$Res> {
  factory _$StartingGameConfigurationCopyWith(_StartingGameConfiguration value, $Res Function(_StartingGameConfiguration) _then) = __$StartingGameConfigurationCopyWithImpl;
@override @useResult
$Res call({
 int boardSize, UnmodifiableListView<int> availableBoardSizes
});




}
/// @nodoc
class __$StartingGameConfigurationCopyWithImpl<$Res>
    implements _$StartingGameConfigurationCopyWith<$Res> {
  __$StartingGameConfigurationCopyWithImpl(this._self, this._then);

  final _StartingGameConfiguration _self;
  final $Res Function(_StartingGameConfiguration) _then;

/// Create a copy of StartingGameConfiguration
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? boardSize = null,Object? availableBoardSizes = null,}) {
  return _then(_StartingGameConfiguration(
boardSize: null == boardSize ? _self.boardSize : boardSize // ignore: cast_nullable_to_non_nullable
as int,availableBoardSizes: null == availableBoardSizes ? _self.availableBoardSizes : availableBoardSizes // ignore: cast_nullable_to_non_nullable
as UnmodifiableListView<int>,
  ));
}


}

// dart format on
