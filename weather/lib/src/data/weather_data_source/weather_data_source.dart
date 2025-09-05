import 'package:dio/dio.dart';

import '../../core/geolocation_service.dart';
import '../../domain/entities/result.dart';
import 'dto/city_results_dto.dart';
import 'dto/current_dto.dart';
import 'dto/weather_dto.dart';

abstract class WeatherDataSource {
  Future<Result<WeatherDto>> fetchWeatherFromCity(String city);

  Future<Result<WeatherDto>> fetchWeatherFromGeolocation();
}

class WeatherDatasourceImpl implements WeatherDataSource {
  final GeolocationService _geolocationService = GeolocationService();

  late Dio _dioClient = Dio();

  static const Map<String, dynamic> weatherParams = {
    "current": ["temperature_2m", "precipitation", "wind_speed_10m"],
    "timezone": "auto",
    "forecast_days": 1,
  };
  static const Map<String, dynamic> citiParams = {
    "count": 1,
    "language": "ru",
    "format": "json",
  };

  void _takeCitiesBaseUrl() {
    _dioClient.options.baseUrl =
        'https://geocoding-api.open-meteo.com/v1/search?';
  }

  void _takeGeoBaseUrl() {
    _dioClient.options.baseUrl = 'https://api.open-meteo.com/v1/forecast?';
  }

  WeatherDatasource() {
    _dioClient = Dio();
    _dioClient.options.baseUrl = 'https://api.open-meteo.com/v1/forecast';
  }

  @override
  Future<Result<WeatherDto>> fetchWeatherFromCity(String city) async {
    try {
      _takeCitiesBaseUrl();
      final result = await _dioClient.get(
        'name=$city',
        queryParameters: citiParams,
      );

      final citiesDto = CityResultsDto.fromJson(result.data);

      final latitude = citiesDto.results.first.latitude;
      final longitude = citiesDto.results.first.longitude;

      _takeGeoBaseUrl();

      final currentResult = await _dioClient.get(
        'latitude=$latitude&longitude=$longitude',
        queryParameters: weatherParams,
      );
      final weatherDto = CurrentDto.fromJson(currentResult.data);

      return Result.success(weatherDto.current);
    } catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<WeatherDto>> fetchWeatherFromGeolocation() async {
    try {
      _takeGeoBaseUrl();

      final hasPermission = await _geolocationService.hasPermissionsAsync();
      if (!hasPermission) {
        await _geolocationService.requestPermissionsAsync();
      }

      final point = await _geolocationService.getCurrentPositionAsync();

      final latitude = point!.latitude;
      final longitude = point.longitude;

      final currentResult = await _dioClient.get(
        'latitude=$latitude&longitude=$longitude',
        queryParameters: weatherParams,
      );
      final weatherDto = CurrentDto.fromJson(currentResult.data);

      return Result.success(weatherDto.current);
    } on DioException catch (e) {
      return Result.error(e);
    }
  }
}
