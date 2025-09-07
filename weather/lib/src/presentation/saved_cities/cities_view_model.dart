import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:weater/src/presentation/saved_cities/cities_state.dart';

import '../../domain/cities_repository.dart';
import '../../domain/entities/city.dart';

@singleton
class CitiesViewModel {
  final CitiesRepository _citiesRepository;

  CitiesViewModel(CitiesRepository citiesRepository)
    : _citiesRepository = citiesRepository;

  final _stateSubject = BehaviorSubject<CitiesState>();

  ValueStream<CitiesState> get citiesStream => _stateSubject.stream;

  Future<void> loadCities() async {
    _stateSubject.add(const CitiesState.loading());
    final cities = await _citiesRepository.getCities();
    _stateSubject.add(CitiesState.success(cities));
  }

  Future<void> addCity(City city) async {
    _stateSubject.add(const CitiesState.loading());
    await _citiesRepository.addCity(city);
    await loadCities();
  }

  Future<void> removeCity(String city) async {
    await _citiesRepository.removeCity(city);
    await loadCities();
  }

  Future<void> clearCities() async {
    _stateSubject.add(const CitiesState.loading());
    await _citiesRepository.clearCities();
    _stateSubject.add(CitiesState.success([]));
  }
}
