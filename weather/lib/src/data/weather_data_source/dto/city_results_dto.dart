import 'package:freezed_annotation/freezed_annotation.dart';
import 'city_dto.dart';

part 'city_results_dto.freezed.dart';

part 'city_results_dto.g.dart';

@freezed
abstract class CityResultsDto with _$CityResultsDto {
  const factory CityResultsDto({
    required List<CityDto> results,
  }) = _CityResultsDto;

  factory CityResultsDto.fromJson(Map<String, dynamic> json) =>
      _$CityResultsDtoFromJson(json);
}
