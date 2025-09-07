import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:weater/src/core/errors.dart';
import 'package:weater/src/data/weather/weather_data_source/dto/address_dto.dart';
import 'package:weater/src/data/weather/weather_data_source/dto/city_from_geo_dto.dart';

import '../../../core/geolocation_service.dart';
import '../../../core/result.dart';
import 'dto/city_results_dto.dart';
import 'dto/weather_dto.dart';

abstract class WeatherDataSource {
  Future<Result<WeatherDto>> fetchWeatherFromCity(String city);

  Future<Result<WeatherDto>> fetchWeatherFromGeolocation(
    double? latitude,
    double? longitude,
  );

  Future<Result<AddressDto>> fetchCityNameFromGeolocation(
    double latitude,
    double longitude,
  );

  Future<bool> openAppSettings();

  Future<bool> openLocationSettings();
}


const openMeteoApi =
    'https://api.open-meteo.com'; //for get weather from geolocation
const geocodingOpenMeteo =
    'https://geocoding-api.open-meteo.com'; // for get geolocation from city name
const openStreetMap =
    'https://nominatim.openstreetmap.org'; // for get city name from geolocation

@LazySingleton(as: WeatherDataSource)
class WeatherDatasourceImpl implements WeatherDataSource {
  final GeolocationService _geolocationService = GeolocationService();

  final Dio _dioClient = Dio();

  static const Map<String, dynamic> weatherParams = {
    "current": ["temperature_2m", "precipitation", "wind_speed_10m"],
    "timezone": "auto",
    "forecast_days": 1,
  };
  static const Map<String, dynamic> geoFromCityParams = {
    "count": 1,
    "language": "ru",
    "format": "json",
  };

  static const Map<String, dynamic> cityFromGeoParams = {"format": "json"};

  @override
  Future<Result<WeatherDto>> fetchWeatherFromCity(String city) async {
    try {
      final result = await _dioClient.get(
        '$geocodingOpenMeteo/v1/search',
        queryParameters: {...geoFromCityParams, 'name': city},
      );
      if(result.data["results"] == null){
        throw NoCity();
      }
      final citiesDto = CityResultsDto.fromJson(result.data);

      final latitude = citiesDto.results.first.latitude;
      final longitude = citiesDto.results.first.longitude;

      final weatherResult = await _dioClient.get(
        '$openMeteoApi/v1/forecast',
        queryParameters: {
          ...weatherParams,
          'latitude': latitude,
          'longitude': longitude,
        },
      );

      return Result.success(WeatherDto.fromJson(weatherResult.data));
    } on DioException {
      return Result.error(NoConnection().message);
    } on NoCity {
      return Result.error(NoCity().message);
    } on NoGeolocation {
      return Result.error(NoGeolocation().message);
    } on LocationDenied {
      return Result.error(LocationDenied().message);
    } catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<WeatherDto>> fetchWeatherFromGeolocation(
    double? latitude,
    double? longitude,
  ) async {
    try {
      if (latitude == null && longitude == null) {
        final point = await _geolocationService.getCurrentPositionAsync();

        latitude = point!.latitude;
        longitude = point.longitude;
      }

      final weatherResult = await _dioClient.get(
        '$openMeteoApi/v1/forecast',
        queryParameters: {
          ...weatherParams,
          'latitude': latitude,
          'longitude': longitude,
        },
      );

      return Result.success(WeatherDto.fromJson(weatherResult.data));
    } on DioException {
      return Result.error(NoConnection().message);
    } on NoGeolocation {
      return Result.error(NoGeolocation().message);
    } on LocationDenied {
      return Result.error(LocationDenied().message);
    } catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<Result<AddressDto>> fetchCityNameFromGeolocation(
    double latitude,
    double longitude,
  ) async {
    try {
      final cityFromGeoResult = await _dioClient.get(
        '$openStreetMap/reverse',
        queryParameters: {
          ...cityFromGeoParams,
          'lat': latitude,
          'lon': longitude,
        },
        options: Options(headers: {'User-Agent': 'YourAppName/1.0'}),
      );

      final cityFromGeoDto = CityFromGeoDto.fromJson(cityFromGeoResult.data);
      final addressDto = cityFromGeoDto.address;
      return Result.success(addressDto);
    } on DioException {
      return Result.error(NoConnection().message);
    } catch (e) {
      return Result.error(e);
    }
  }

  @override
  Future<bool> openAppSettings() async {
    return await _geolocationService.openAppSettings();
  }

  @override
  Future<bool> openLocationSettings() async {
    return await _geolocationService.openLocationSettings();
  }
}
