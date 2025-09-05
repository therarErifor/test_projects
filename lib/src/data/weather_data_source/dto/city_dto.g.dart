// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CityDto _$CityDtoFromJson(Map<String, dynamic> json) => _CityDto(
  name: json['name'] as String,
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
);

Map<String, dynamic> _$CityDtoToJson(_CityDto instance) => <String, dynamic>{
  'name': instance.name,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};
