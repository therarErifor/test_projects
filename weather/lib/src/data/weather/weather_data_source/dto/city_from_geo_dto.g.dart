// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_from_geo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CityFromGeoDto _$CityFromGeoDtoFromJson(Map<String, dynamic> json) =>
    _CityFromGeoDto(
      address: AddressDto.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CityFromGeoDtoToJson(_CityFromGeoDto instance) =>
    <String, dynamic>{'address': instance.address};
