import 'package:injectable/injectable.dart';
import 'package:weater/src/data/city/cities_data_source/cities_data_source.dart';

import '../../domain/cities_repository.dart';
import '../../domain/entities/city.dart';
import '../weather/weather_data_source/dto/city_dto.dart';

@LazySingleton(as: CitiesRepository)
class CitiesRepositoryImpl implements CitiesRepository {
  final CitiesDataSource _citiesDataSource;

  CitiesRepositoryImpl(CitiesDataSource citiesDataSource)
    : _citiesDataSource = citiesDataSource;

  @override
  Future<List<City>> getCities() async {
    final citiesDto = await _citiesDataSource.getCities();
    return citiesDto.results
        .map(
          (dto) => City(
            name: dto.name,
            latitude: dto.latitude,
            longitude: dto.longitude,
          ),
        )
        .toList();
  }

  @override
  Future<void> addCity(City city) async {
    await _citiesDataSource.addCity(
      CityDto(
        name: city.name,
        latitude: city.latitude,
        longitude: city.longitude,
      ),
    );
  }

  @override
  Future<void> removeCity(String name) async {
    await _citiesDataSource.removeCity(name);
  }

  @override
  Future<void> clearCities() async {
    await _citiesDataSource.clearCities();
  }
}
