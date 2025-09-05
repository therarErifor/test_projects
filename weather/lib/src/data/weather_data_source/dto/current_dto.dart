import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weater/src/data/weather_data_source/dto/weather_dto.dart';


part 'current_dto.freezed.dart';

part 'current_dto.g.dart';

@freezed
abstract class CurrentDto with _$CurrentDto {

  const factory CurrentDto({required WeatherDto current}) = _CurrentDto;

  factory CurrentDto.fromJson(Map<String, dynamic> json) =>
      _$CurrentDtoFromJson(json);
}
