import '../core/result.dart';
import 'entities/city.dart';
import 'entities/weather.dart';

abstract class WeatherRepository {
  Future<Result<City>> fetchGeoFromCityName(String city);

  Future<Result<Weather>> fetchWeatherFromGeo(City? city);

  Future<bool> openAppSettings();

  Future<bool> openLocationSettings();
}
