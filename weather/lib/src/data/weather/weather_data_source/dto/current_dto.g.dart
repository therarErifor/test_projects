// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CurrentDto _$CurrentDtoFromJson(Map<String, dynamic> json) => _CurrentDto(
  temperature_2m: (json['temperature_2m'] as num).toDouble(),
  precipitation: (json['precipitation'] as num).toDouble(),
  wind_speed_10m: (json['wind_speed_10m'] as num).toDouble(),
);

Map<String, dynamic> _$CurrentDtoToJson(_CurrentDto instance) =>
    <String, dynamic>{
      'temperature_2m': instance.temperature_2m,
      'precipitation': instance.precipitation,
      'wind_speed_10m': instance.wind_speed_10m,
    };
