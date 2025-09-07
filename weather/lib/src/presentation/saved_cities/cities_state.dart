import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weater/src/domain/entities/city.dart';

part 'cities_state.freezed.dart';

@freezed
class CitiesState with _$CitiesState {
  const factory CitiesState.loading() = _Loading;
  const factory CitiesState.success(List<City> cities) = _Success;
  const factory CitiesState.error(String errorMessage) = _Error;
}