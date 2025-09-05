import '../data/weather_data_source/weather_data_source.dart';
import 'entities/result.dart';
import 'entities/weather.dart';

abstract class WeatherRepository {
  Future<Result<Weather>> fetchWeatherFromCity(String city);

  Future<Result<Weather>> fetchWeatherFromGeo();
}

class WeatherRepositoryImp implements WeatherRepository{
  final WeatherDataSource _weatherDataSource;

  WeatherRepositoryImp(WeatherDataSource weatherDataSource)
    : _weatherDataSource = weatherDataSource;

  @override
  Future<Result<Weather>> fetchWeatherFromCity(String city) async {
    final result = await _weatherDataSource.fetchWeatherFromCity(city);

    return result.fold(
      (dto) => Result.success(
        Weather(
          temperature: dto.temperature_2m,
          precipitation: dto.precipitation,
          windSpeed: dto.wind_speed_10m,
        ),
      ),
      (error) => Result.error(error),
    );
  }

  @override
  Future<Result<Weather>> fetchWeatherFromGeo() async {
    final result = await _weatherDataSource.fetchWeatherFromGeolocation();

    return result.fold(
      (dto) => Result.success(
        Weather(
          temperature: dto.temperature_2m,
          precipitation: dto.precipitation,
          windSpeed: dto.wind_speed_10m,
        ),
      ),
      (error) => Result.error(error),
    );
  }
}
