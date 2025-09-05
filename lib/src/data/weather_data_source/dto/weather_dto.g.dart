// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherDto _$WeatherDtoFromJson(Map<String, dynamic> json) => _WeatherDto(
  temperature_2m: (json['temperature_2m'] as num).toDouble(),
  precipitation: (json['precipitation'] as num).toDouble(),
  wind_speed_10m: (json['wind_speed_10m'] as num).toDouble(),
);

Map<String, dynamic> _$WeatherDtoToJson(_WeatherDto instance) =>
    <String, dynamic>{
      'temperature_2m': instance.temperature_2m,
      'precipitation': instance.precipitation,
      'wind_speed_10m': instance.wind_speed_10m,
    };
