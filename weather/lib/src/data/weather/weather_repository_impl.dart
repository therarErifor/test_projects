import 'package:injectable/injectable.dart';

import '../../core/result.dart';
import '../../domain/entities/city.dart';
import '../../domain/entities/weather.dart';
import '../../domain/weather_repository.dart';
import 'weather_data_source/weather_data_source.dart';

@LazySingleton(as: WeatherRepository)
class WeatherRepositoryImp implements WeatherRepository {
  final WeatherDataSource _weatherDataSource;

  WeatherRepositoryImp(WeatherDataSource weatherDataSource)
    : _weatherDataSource = weatherDataSource;

  @override
  Future<Result<City>> fetchGeoFromCityName(String city) async {
    final result = await _weatherDataSource.fetchGeoFromCityName(city);

    return result.fold(
      (dto) => Result.success(
        City(name: dto.name, latitude: dto.latitude, longitude: dto.longitude),
      ),
      (error) => Result.error(error),
    );
  }

  @override
  Future<Result<Weather>> fetchWeatherFromGeo(City? city) async {
    final weatherResult = await _weatherDataSource.fetchWeatherFromGeolocation(
      city?.latitude,
      city?.longitude,
    );

    return weatherResult.fold((weatherDto) async {
      final weatherDto = weatherResult.data!;
      if (city == null) {
        final cityFromGeoResult = await _weatherDataSource
            .fetchCityNameFromGeolocation(
              weatherDto.latitude,
              weatherDto.longitude,
            );
        return cityFromGeoResult.fold(
          (addressDto) => Result.success(
            Weather(
              city: City(
                name:
                    addressDto.city ??
                    '${addressDto.county}, ${addressDto.state}',
                latitude: weatherDto.latitude,
                longitude: weatherDto.longitude,
              ),
              temperature: weatherDto.current.temperature_2m,
              precipitation: weatherDto.current.precipitation,
              windSpeed: weatherDto.current.wind_speed_10m,
            ),
          ),
          (error) => Result.error(error),
        );
      }
      return Result.success(
        Weather(
          city: City(
            name: city.name,
            latitude: city.latitude,
            longitude: city.longitude,
          ),
          temperature: weatherDto.current.temperature_2m,
          precipitation: weatherDto.current.precipitation,
          windSpeed: weatherDto.current.wind_speed_10m,
        ),
      );
    }, (error) => Result.error(error));
  }

  @override
  Future<bool> openAppSettings() async {
    return await _weatherDataSource.openAppSettings();
  }

  @override
  Future<bool> openLocationSettings() async {
    return await _weatherDataSource.openLocationSettings();
  }
}
