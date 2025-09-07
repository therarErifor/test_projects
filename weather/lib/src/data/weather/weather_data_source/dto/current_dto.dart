import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_dto.freezed.dart';

part 'current_dto.g.dart';

@freezed
abstract class CurrentDto with _$CurrentDto {


  const factory CurrentDto(
      {required double temperature_2m,
        required double precipitation,
        required double wind_speed_10m}) = _CurrentDto;

  factory CurrentDto.fromJson(Map<String, dynamic> json) =>
      _$CurrentDtoFromJson(json);
}