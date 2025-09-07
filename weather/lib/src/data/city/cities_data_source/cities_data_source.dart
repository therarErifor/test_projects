import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../weather/weather_data_source/dto/city_dto.dart';
import '../../weather/weather_data_source/dto/city_results_dto.dart';

abstract class CitiesDataSource {
  Future<CityResultsDto> getCities();

  Future<void> addCity(CityDto cityDto);

  Future<void> removeCity(String name);

  Future<void> clearCities();
}

@LazySingleton(as: CitiesDataSource)
class CitiesDataSourceImpl implements CitiesDataSource {
  static const _key = "searched_cities";

  @override
  Future<CityResultsDto> getCities() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(_key);

    if (jsonString == null) {
      return const CityResultsDto(results: []);
    }

    try {
      final Map<String, dynamic> decoded = jsonDecode(jsonString);
      return CityResultsDto.fromJson(decoded);
    } catch (_) {
      return const CityResultsDto(results: []);
    }
  }

  @override
  Future<void> addCity(CityDto cityDto) async {
    final prefs = await SharedPreferences.getInstance();
    final citiesResult = await getCities();

    final cities = List<CityDto>.from(citiesResult.results);

    final isCityExists = cities.any((c) => c.name == cityDto.name);
    if (!isCityExists) {
      cities.add(cityDto);
    }

    final updated = CityResultsDto(results: cities);
    await prefs.setString(_key, jsonEncode(updated.toJson()));
  }

  @override
  Future<void> removeCity(String name) async {
    final prefs = await SharedPreferences.getInstance();
    final citiesResult = await getCities();

    final cities =
    citiesResult.results.where((city) => city.name != name).toList();

    final updated = CityResultsDto(results: cities);
    await prefs.setString(_key, jsonEncode(updated.toJson()));
  }

  @override
  Future<void> clearCities() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
  }
}
