// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherDto _$WeatherDtoFromJson(Map<String, dynamic> json) => _WeatherDto(
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  current: CurrentDto.fromJson(json['current'] as Map<String, dynamic>),
);

Map<String, dynamic> _$WeatherDtoToJson(_WeatherDto instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'current': instance.current,
    };
