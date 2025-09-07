import 'city.dart';

class Weather {
  final City city;
  final double temperature;
  final double precipitation;
  final double windSpeed;

  Weather({
    required this.city,
    required this.temperature,
    required this.precipitation,
    required this.windSpeed,
  });
}
