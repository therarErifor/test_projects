// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_results_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CityResultsDto _$CityResultsDtoFromJson(Map<String, dynamic> json) =>
    _CityResultsDto(
      results: (json['results'] as List<dynamic>)
          .map((e) => CityDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CityResultsDtoToJson(_CityResultsDto instance) =>
    <String, dynamic>{'results': instance.results};
