import 'package:rxdart/rxdart.dart';
import 'package:weater/src/domain/cities_storage.dart';
import '../../domain/entities/weather.dart';
import '../../domain/weather_repository.dart';

class WeatherViewModel {
  final WeatherRepository _repository;
  final _weatherSubject = BehaviorSubject<Weather?>();
  final _loadingSubject = BehaviorSubject<bool>.seeded(false);

  WeatherViewModel(WeatherRepository weatherRepository)
      : _repository = weatherRepository;

  Stream<Weather?> get weatherStream => _weatherSubject.stream;

  Stream<bool> get loadingStream => _loadingSubject.stream;

  Future<void> loadWeatherFromCity(String city) async {
    _loadingSubject.add(true);
    final result = await _repository.fetchWeatherFromCity(city);
    result.fold(
      (weather) async {
        _weatherSubject.add(weather);
        _loadingSubject.add(false);
      },
      (error) {
        _weatherSubject.add(null);
        _loadingSubject.add(false);
      },
    );
  }

  Future<void> loadWeatherFromGeo() async {
    _loadingSubject.add(true);
    final result = await _repository.fetchWeatherFromGeo();
    result.fold(
      (weather) {
        _weatherSubject.add(weather);
        _loadingSubject.add(false);
      },
      (error) {
        _weatherSubject.add(null);
        _loadingSubject.add(false);
      },
    );
  }

  void dispose() {
    _weatherSubject.close();
    _loadingSubject.close();
  }
}
