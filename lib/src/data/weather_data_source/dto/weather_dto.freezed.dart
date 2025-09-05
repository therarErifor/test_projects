// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherDto {

 double get temperature_2m; double get precipitation; double get wind_speed_10m;
/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherDtoCopyWith<WeatherDto> get copyWith => _$WeatherDtoCopyWithImpl<WeatherDto>(this as WeatherDto, _$identity);

  /// Serializes this WeatherDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherDto&&(identical(other.temperature_2m, temperature_2m) || other.temperature_2m == temperature_2m)&&(identical(other.precipitation, precipitation) || other.precipitation == precipitation)&&(identical(other.wind_speed_10m, wind_speed_10m) || other.wind_speed_10m == wind_speed_10m));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temperature_2m,precipitation,wind_speed_10m);

@override
String toString() {
  return 'WeatherDto(temperature_2m: $temperature_2m, precipitation: $precipitation, wind_speed_10m: $wind_speed_10m)';
}


}

/// @nodoc
abstract mixin class $WeatherDtoCopyWith<$Res>  {
  factory $WeatherDtoCopyWith(WeatherDto value, $Res Function(WeatherDto) _then) = _$WeatherDtoCopyWithImpl;
@useResult
$Res call({
 double temperature_2m, double precipitation, double wind_speed_10m
});




}
/// @nodoc
class _$WeatherDtoCopyWithImpl<$Res>
    implements $WeatherDtoCopyWith<$Res> {
  _$WeatherDtoCopyWithImpl(this._self, this._then);

  final WeatherDto _self;
  final $Res Function(WeatherDto) _then;

/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? temperature_2m = null,Object? precipitation = null,Object? wind_speed_10m = null,}) {
  return _then(_self.copyWith(
temperature_2m: null == temperature_2m ? _self.temperature_2m : temperature_2m // ignore: cast_nullable_to_non_nullable
as double,precipitation: null == precipitation ? _self.precipitation : precipitation // ignore: cast_nullable_to_non_nullable
as double,wind_speed_10m: null == wind_speed_10m ? _self.wind_speed_10m : wind_speed_10m // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [WeatherDto].
extension WeatherDtoPatterns on WeatherDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherDto value)  $default,){
final _that = this;
switch (_that) {
case _WeatherDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherDto value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double temperature_2m,  double precipitation,  double wind_speed_10m)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherDto() when $default != null:
return $default(_that.temperature_2m,_that.precipitation,_that.wind_speed_10m);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double temperature_2m,  double precipitation,  double wind_speed_10m)  $default,) {final _that = this;
switch (_that) {
case _WeatherDto():
return $default(_that.temperature_2m,_that.precipitation,_that.wind_speed_10m);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double temperature_2m,  double precipitation,  double wind_speed_10m)?  $default,) {final _that = this;
switch (_that) {
case _WeatherDto() when $default != null:
return $default(_that.temperature_2m,_that.precipitation,_that.wind_speed_10m);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeatherDto implements WeatherDto {
  const _WeatherDto({required this.temperature_2m, required this.precipitation, required this.wind_speed_10m});
  factory _WeatherDto.fromJson(Map<String, dynamic> json) => _$WeatherDtoFromJson(json);

@override final  double temperature_2m;
@override final  double precipitation;
@override final  double wind_speed_10m;

/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherDtoCopyWith<_WeatherDto> get copyWith => __$WeatherDtoCopyWithImpl<_WeatherDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherDto&&(identical(other.temperature_2m, temperature_2m) || other.temperature_2m == temperature_2m)&&(identical(other.precipitation, precipitation) || other.precipitation == precipitation)&&(identical(other.wind_speed_10m, wind_speed_10m) || other.wind_speed_10m == wind_speed_10m));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temperature_2m,precipitation,wind_speed_10m);

@override
String toString() {
  return 'WeatherDto(temperature_2m: $temperature_2m, precipitation: $precipitation, wind_speed_10m: $wind_speed_10m)';
}


}

/// @nodoc
abstract mixin class _$WeatherDtoCopyWith<$Res> implements $WeatherDtoCopyWith<$Res> {
  factory _$WeatherDtoCopyWith(_WeatherDto value, $Res Function(_WeatherDto) _then) = __$WeatherDtoCopyWithImpl;
@override @useResult
$Res call({
 double temperature_2m, double precipitation, double wind_speed_10m
});




}
/// @nodoc
class __$WeatherDtoCopyWithImpl<$Res>
    implements _$WeatherDtoCopyWith<$Res> {
  __$WeatherDtoCopyWithImpl(this._self, this._then);

  final _WeatherDto _self;
  final $Res Function(_WeatherDto) _then;

/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? temperature_2m = null,Object? precipitation = null,Object? wind_speed_10m = null,}) {
  return _then(_WeatherDto(
temperature_2m: null == temperature_2m ? _self.temperature_2m : temperature_2m // ignore: cast_nullable_to_non_nullable
as double,precipitation: null == precipitation ? _self.precipitation : precipitation // ignore: cast_nullable_to_non_nullable
as double,wind_speed_10m: null == wind_speed_10m ? _self.wind_speed_10m : wind_speed_10m // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
