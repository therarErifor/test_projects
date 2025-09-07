import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:weater/src/core/di/dependencies.dart';

import 'src/presentation/saved_cities/cities_view_model.dart';
import 'src/presentation/weather/weather_page.dart';
import 'src/presentation/weather/weather_view_model.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  autoConfigDependencies(Environment.dev);

  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherPage(
        weatherViewModel: container<WeatherViewModel>(),
        citiesViewModel: container<CitiesViewModel>(),
      ),
    );
  }
}
