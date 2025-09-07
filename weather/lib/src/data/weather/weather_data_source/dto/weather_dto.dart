import 'package:freezed_annotation/freezed_annotation.dart';

import 'current_dto.dart';

part 'weather_dto.freezed.dart';

part 'weather_dto.g.dart';

@freezed
abstract class WeatherDto with _$WeatherDto {
  const factory WeatherDto({
    required double latitude,
    required double longitude,
    required CurrentDto current,
  }) = _WeatherDto;

  factory WeatherDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherDtoFromJson(json);
}
