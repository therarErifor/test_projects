import 'package:rxdart/rxdart.dart';

import '../../domain/cities_storage.dart';

class CitiesViewModel {
  final CitiesStorage _storage;

  CitiesViewModel(CitiesStorage citiesStorage) : _storage = citiesStorage;

  final _citiesSubject = BehaviorSubject<List<String>>.seeded([]);

  Stream<List<String>> get citiesStream => _citiesSubject.stream;

  Future<void> loadCities() async {
    final cities = await _storage.getCities();
    _citiesSubject.add(cities);
  }



  Future<void> addCity(String city) async {
    await _storage.addCity(city);
    await loadCities();
  }

  void dispose() {
    _citiesSubject.close();
  }
}
