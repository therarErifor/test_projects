// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CurrentDto _$CurrentDtoFromJson(Map<String, dynamic> json) => _CurrentDto(
  current: WeatherDto.fromJson(json['current'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CurrentDtoToJson(_CurrentDto instance) =>
    <String, dynamic>{'current': instance.current};
