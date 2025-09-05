// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_results_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CityResultsDto {

 List<CityDto> get results;
/// Create a copy of CityResultsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CityResultsDtoCopyWith<CityResultsDto> get copyWith => _$CityResultsDtoCopyWithImpl<CityResultsDto>(this as CityResultsDto, _$identity);

  /// Serializes this CityResultsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CityResultsDto&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'CityResultsDto(results: $results)';
}


}

/// @nodoc
abstract mixin class $CityResultsDtoCopyWith<$Res>  {
  factory $CityResultsDtoCopyWith(CityResultsDto value, $Res Function(CityResultsDto) _then) = _$CityResultsDtoCopyWithImpl;
@useResult
$Res call({
 List<CityDto> results
});




}
/// @nodoc
class _$CityResultsDtoCopyWithImpl<$Res>
    implements $CityResultsDtoCopyWith<$Res> {
  _$CityResultsDtoCopyWithImpl(this._self, this._then);

  final CityResultsDto _self;
  final $Res Function(CityResultsDto) _then;

/// Create a copy of CityResultsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = null,}) {
  return _then(_self.copyWith(
results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<CityDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [CityResultsDto].
extension CityResultsDtoPatterns on CityResultsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CityResultsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CityResultsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CityResultsDto value)  $default,){
final _that = this;
switch (_that) {
case _CityResultsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CityResultsDto value)?  $default,){
final _that = this;
switch (_that) {
case _CityResultsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CityDto> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CityResultsDto() when $default != null:
return $default(_that.results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CityDto> results)  $default,) {final _that = this;
switch (_that) {
case _CityResultsDto():
return $default(_that.results);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CityDto> results)?  $default,) {final _that = this;
switch (_that) {
case _CityResultsDto() when $default != null:
return $default(_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CityResultsDto implements CityResultsDto {
  const _CityResultsDto({required final  List<CityDto> results}): _results = results;
  factory _CityResultsDto.fromJson(Map<String, dynamic> json) => _$CityResultsDtoFromJson(json);

 final  List<CityDto> _results;
@override List<CityDto> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of CityResultsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CityResultsDtoCopyWith<_CityResultsDto> get copyWith => __$CityResultsDtoCopyWithImpl<_CityResultsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CityResultsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CityResultsDto&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'CityResultsDto(results: $results)';
}


}

/// @nodoc
abstract mixin class _$CityResultsDtoCopyWith<$Res> implements $CityResultsDtoCopyWith<$Res> {
  factory _$CityResultsDtoCopyWith(_CityResultsDto value, $Res Function(_CityResultsDto) _then) = __$CityResultsDtoCopyWithImpl;
@override @useResult
$Res call({
 List<CityDto> results
});




}
/// @nodoc
class __$CityResultsDtoCopyWithImpl<$Res>
    implements _$CityResultsDtoCopyWith<$Res> {
  __$CityResultsDtoCopyWithImpl(this._self, this._then);

  final _CityResultsDto _self;
  final $Res Function(_CityResultsDto) _then;

/// Create a copy of CityResultsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? results = null,}) {
  return _then(_CityResultsDto(
results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<CityDto>,
  ));
}


}

// dart format on
