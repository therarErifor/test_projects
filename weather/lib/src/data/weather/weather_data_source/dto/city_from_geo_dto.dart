import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weater/src/data/weather/weather_data_source/dto/address_dto.dart';

part 'city_from_geo_dto.freezed.dart';

part 'city_from_geo_dto.g.dart';

@freezed
abstract class CityFromGeoDto with _$CityFromGeoDto {


  const factory CityFromGeoDto(
      {required AddressDto address}) = _CityFromGeoDto;

  factory CityFromGeoDto.fromJson(Map<String, dynamic> json) =>
      _$CityFromGeoDtoFromJson(json);
}