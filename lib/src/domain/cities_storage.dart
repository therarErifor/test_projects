import 'package:shared_preferences/shared_preferences.dart';

abstract class CitiesStorage {
  Future<List<String>> getCities();
  Future<void> addCity(String city);
}

class CitiesStorageImpl implements CitiesStorage{
  static const _key = "searched_cities";

  @override
  Future<List<String>> getCities() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_key) ?? [];
  }

  @override
  Future<void> addCity(String city) async {
    final prefs = await SharedPreferences.getInstance();
    final cities = prefs.getStringList(_key) ?? [];

    if (!cities.contains(city)) {
      cities.add(city);
      await prefs.setStringList(_key, cities);
    }
  }
}
