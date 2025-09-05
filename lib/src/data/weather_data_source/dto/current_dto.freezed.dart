// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CurrentDto {

 WeatherDto get current;
/// Create a copy of CurrentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrentDtoCopyWith<CurrentDto> get copyWith => _$CurrentDtoCopyWithImpl<CurrentDto>(this as CurrentDto, _$identity);

  /// Serializes this CurrentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentDto&&(identical(other.current, current) || other.current == current));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current);

@override
String toString() {
  return 'CurrentDto(current: $current)';
}


}

/// @nodoc
abstract mixin class $CurrentDtoCopyWith<$Res>  {
  factory $CurrentDtoCopyWith(CurrentDto value, $Res Function(CurrentDto) _then) = _$CurrentDtoCopyWithImpl;
@useResult
$Res call({
 WeatherDto current
});


$WeatherDtoCopyWith<$Res> get current;

}
/// @nodoc
class _$CurrentDtoCopyWithImpl<$Res>
    implements $CurrentDtoCopyWith<$Res> {
  _$CurrentDtoCopyWithImpl(this._self, this._then);

  final CurrentDto _self;
  final $Res Function(CurrentDto) _then;

/// Create a copy of CurrentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? current = null,}) {
  return _then(_self.copyWith(
current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as WeatherDto,
  ));
}
/// Create a copy of CurrentDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeatherDtoCopyWith<$Res> get current {
  
  return $WeatherDtoCopyWith<$Res>(_self.current, (value) {
    return _then(_self.copyWith(current: value));
  });
}
}


/// Adds pattern-matching-related methods to [CurrentDto].
extension CurrentDtoPatterns on CurrentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CurrentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CurrentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CurrentDto value)  $default,){
final _that = this;
switch (_that) {
case _CurrentDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CurrentDto value)?  $default,){
final _that = this;
switch (_that) {
case _CurrentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( WeatherDto current)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CurrentDto() when $default != null:
return $default(_that.current);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( WeatherDto current)  $default,) {final _that = this;
switch (_that) {
case _CurrentDto():
return $default(_that.current);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( WeatherDto current)?  $default,) {final _that = this;
switch (_that) {
case _CurrentDto() when $default != null:
return $default(_that.current);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CurrentDto implements CurrentDto {
  const _CurrentDto({required this.current});
  factory _CurrentDto.fromJson(Map<String, dynamic> json) => _$CurrentDtoFromJson(json);

@override final  WeatherDto current;

/// Create a copy of CurrentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrentDtoCopyWith<_CurrentDto> get copyWith => __$CurrentDtoCopyWithImpl<_CurrentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CurrentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrentDto&&(identical(other.current, current) || other.current == current));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,current);

@override
String toString() {
  return 'CurrentDto(current: $current)';
}


}

/// @nodoc
abstract mixin class _$CurrentDtoCopyWith<$Res> implements $CurrentDtoCopyWith<$Res> {
  factory _$CurrentDtoCopyWith(_CurrentDto value, $Res Function(_CurrentDto) _then) = __$CurrentDtoCopyWithImpl;
@override @useResult
$Res call({
 WeatherDto current
});


@override $WeatherDtoCopyWith<$Res> get current;

}
/// @nodoc
class __$CurrentDtoCopyWithImpl<$Res>
    implements _$CurrentDtoCopyWith<$Res> {
  __$CurrentDtoCopyWithImpl(this._self, this._then);

  final _CurrentDto _self;
  final $Res Function(_CurrentDto) _then;

/// Create a copy of CurrentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? current = null,}) {
  return _then(_CurrentDto(
current: null == current ? _self.current : current // ignore: cast_nullable_to_non_nullable
as WeatherDto,
  ));
}

/// Create a copy of CurrentDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WeatherDtoCopyWith<$Res> get current {
  
  return $WeatherDtoCopyWith<$Res>(_self.current, (value) {
    return _then(_self.copyWith(current: value));
  });
}
}

// dart format on
