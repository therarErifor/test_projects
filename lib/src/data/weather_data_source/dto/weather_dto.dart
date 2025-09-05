import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_dto.freezed.dart';

part 'weather_dto.g.dart';

@freezed
abstract class WeatherDto with _$WeatherDto {


  const factory WeatherDto(
      {required double temperature_2m,
        required double precipitation,
        required double wind_speed_10m}) = _WeatherDto;

  factory WeatherDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherDtoFromJson(json);
}