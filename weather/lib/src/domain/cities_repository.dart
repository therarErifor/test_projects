import 'entities/city.dart';

abstract class CitiesRepository {
  Future<List<City>> getCities();

  Future<void> addCity(City city);

  Future<void> removeCity(String name);

  Future<void> clearCities();
}
