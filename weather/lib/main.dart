import 'package:flutter/material.dart';
import 'package:weater/src/data/weather_data_source/weather_data_source.dart';
import 'package:weater/src/domain/cities_storage.dart';
import 'package:weater/src/domain/weather_repository.dart';
import 'package:weater/src/presentation/saved_cities/cities_view_model.dart';
import 'package:weater/src/presentation/weather/weather_page.dart';
import 'package:weater/src/presentation/weather/weather_view_model.dart';

void main() {
  final weatherDataSours = WeatherDatasourceImpl();
  final weatherRepository = WeatherRepositoryImp(weatherDataSours);
  final weatherViewModel = WeatherViewModel(weatherRepository);

  final citiesStorage = CitiesStorageImpl();
  final citiesVieModel = CitiesViewModel(citiesStorage);

  runApp(
    MaterialApp(
      color: Colors.lightBlue,
      debugShowCheckedModeBanner: false,
      home: WeatherPage(
        weatherViewModel: weatherViewModel,
        citiesViewModel: citiesVieModel,
      ),
    ),
  );
}
