import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/weather.dart';

part 'weather_state.freezed.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.loading() = _Loading;
  const factory WeatherState.success(Weather weather) = _Success;
  const factory WeatherState.error(String errorMessage) = _Error;
}