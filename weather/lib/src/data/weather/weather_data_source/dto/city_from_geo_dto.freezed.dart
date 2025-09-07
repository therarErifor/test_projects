// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_from_geo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CityFromGeoDto {

 AddressDto get address;
/// Create a copy of CityFromGeoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityFromGeoDtoCopyWith<CityFromGeoDto> get copyWith => _$CityFromGeoDtoCopyWithImpl<CityFromGeoDto>(this as CityFromGeoDto, _$identity);

  /// Serializes this CityFromGeoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityFromGeoDto&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address);

@override
String toString() {
  return 'CityFromGeoDto(address: $address)';
}


}

/// @nodoc
abstract mixin class $CityFromGeoDtoCopyWith<$Res>  {
  factory $CityFromGeoDtoCopyWith(CityFromGeoDto value, $Res Function(CityFromGeoDto) _then) = _$CityFromGeoDtoCopyWithImpl;
@useResult
$Res call({
 AddressDto address
});


$AddressDtoCopyWith<$Res> get address;

}
/// @nodoc
class _$CityFromGeoDtoCopyWithImpl<$Res>
    implements $CityFromGeoDtoCopyWith<$Res> {
  _$CityFromGeoDtoCopyWithImpl(this._self, this._then);

  final CityFromGeoDto _self;
  final $Res Function(CityFromGeoDto) _then;

/// Create a copy of CityFromGeoDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = null,}) {
  return _then(_self.copyWith(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as AddressDto,
  ));
}
/// Create a copy of CityFromGeoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressDtoCopyWith<$Res> get address {
  
  return $AddressDtoCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}


/// Adds pattern-matching-related methods to [CityFromGeoDto].
extension CityFromGeoDtoPatterns on CityFromGeoDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CityFromGeoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CityFromGeoDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CityFromGeoDto value)  $default,){
final _that = this;
switch (_that) {
case _CityFromGeoDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CityFromGeoDto value)?  $default,){
final _that = this;
switch (_that) {
case _CityFromGeoDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AddressDto address)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CityFromGeoDto() when $default != null:
return $default(_that.address);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AddressDto address)  $default,) {final _that = this;
switch (_that) {
case _CityFromGeoDto():
return $default(_that.address);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AddressDto address)?  $default,) {final _that = this;
switch (_that) {
case _CityFromGeoDto() when $default != null:
return $default(_that.address);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CityFromGeoDto implements CityFromGeoDto {
  const _CityFromGeoDto({required this.address});
  factory _CityFromGeoDto.fromJson(Map<String, dynamic> json) => _$CityFromGeoDtoFromJson(json);

@override final  AddressDto address;

/// Create a copy of CityFromGeoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CityFromGeoDtoCopyWith<_CityFromGeoDto> get copyWith => __$CityFromGeoDtoCopyWithImpl<_CityFromGeoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CityFromGeoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CityFromGeoDto&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address);

@override
String toString() {
  return 'CityFromGeoDto(address: $address)';
}


}

/// @nodoc
abstract mixin class _$CityFromGeoDtoCopyWith<$Res> implements $CityFromGeoDtoCopyWith<$Res> {
  factory _$CityFromGeoDtoCopyWith(_CityFromGeoDto value, $Res Function(_CityFromGeoDto) _then) = __$CityFromGeoDtoCopyWithImpl;
@override @useResult
$Res call({
 AddressDto address
});


@override $AddressDtoCopyWith<$Res> get address;

}
/// @nodoc
class __$CityFromGeoDtoCopyWithImpl<$Res>
    implements _$CityFromGeoDtoCopyWith<$Res> {
  __$CityFromGeoDtoCopyWithImpl(this._self, this._then);

  final _CityFromGeoDto _self;
  final $Res Function(_CityFromGeoDto) _then;

/// Create a copy of CityFromGeoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = null,}) {
  return _then(_CityFromGeoDto(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as AddressDto,
  ));
}

/// Create a copy of CityFromGeoDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AddressDtoCopyWith<$Res> get address {
  
  return $AddressDtoCopyWith<$Res>(_self.address, (value) {
    return _then(_self.copyWith(address: value));
  });
}
}

// dart format on
