import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:weater/src/presentation/weather/weather_state.dart';
import '../../domain/entities/city.dart';
import '../../domain/weather_repository.dart';

@Injectable()
class WeatherViewModel {
  final WeatherRepository _repository;
  final _stateSubject = BehaviorSubject<WeatherState>();

  WeatherViewModel(WeatherRepository weatherRepository)
    : _repository = weatherRepository;

  ValueStream<WeatherState> get weatherStream => _stateSubject.stream;

  Future<void> loadWeatherFromCity(String city) async {
    _stateSubject.add(const WeatherState.loading());

    final cityGeoResult = await _repository.fetchGeoFromCityName(city);
    cityGeoResult.fold((city) async {
      final weatherResult = await _repository.fetchWeatherFromGeo(city);
      weatherResult.fold(
        (weather) => _stateSubject.add(WeatherState.success(weather)),
        (error) => _stateSubject.add(WeatherState.error(error.toString())),
      );
    }, (error) => _stateSubject.add(WeatherState.error(error.toString())));
  }

  Future<void> loadWeatherFromGeo(City? city) async {
    _stateSubject.add(const WeatherState.loading());
    final result = await _repository.fetchWeatherFromGeo(city);
    result.fold(
      (weather) => _stateSubject.add(WeatherState.success(weather)),
      (error) => _stateSubject.add(WeatherState.error(error.toString())),
    );
  }

  Future<bool> openAppSettings() async {
    final hasPermissions = await _repository.openAppSettings();
    await Future.delayed(Duration(seconds: 5));
    return hasPermissions;
  }

  Future<bool> openLocationSettings() async {
    final isLocationEnabled = await _repository.openLocationSettings();
    await Future.delayed(Duration(seconds: 2));
    return isLocationEnabled;
  }

  void dispose() {
    _stateSubject.close();
  }
}
