import 'package:flutter/material.dart';
import 'package:weater/src/presentation/saved_cities/cities_view_model.dart';

import '../../domain/entities/city.dart';
import '../saved_cities/cities_page.dart';
import 'weather_state.dart';
import 'weather_view_model.dart';

class WeatherPage extends StatefulWidget {
  final WeatherViewModel weatherViewModel;
  final CitiesViewModel citiesViewModel;

  const WeatherPage({
    super.key,
    required this.weatherViewModel,
    required this.citiesViewModel,
  });

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  late final WeatherViewModel _viewModel;
  final controller = TextEditingController();
  bool _isDialogShowing = false;

  @override
  void initState() {
    super.initState();
    _viewModel = widget.weatherViewModel;
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  void openCitiesPage() async {
    final selectedCity = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => CitiesPage(viewModel: widget.citiesViewModel),
      ),
    );

    if (selectedCity != null && selectedCity is City) {
      _viewModel.loadWeatherFromGeo(selectedCity);
    }
  }

  Future<void> _handleLocationPermission() async {
    if (_isDialogShowing) return;

    _isDialogShowing = true;
    final allow = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Доступ к геолокации"),
        content: const Text(
          "Разрешите доступ, чтобы показывать погоду по местоположению.",
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text("Нет"),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text("Да"),
          ),
        ],
      ),
    );

    if (allow == true) {
      final granted = await _viewModel.openAppSettings();
      if (granted) {
        _viewModel.loadWeatherFromGeo(null);
      }
    }

    _isDialogShowing = false;
  }

  Future<void> _handleGeolocationDisabled() async {
    if (_isDialogShowing) return;

    _isDialogShowing = true;
    final onTrue = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Геолокация отключена"),
        content: const Text(
          "Включите геолокацию для того, чтобы показывать погоду по местоположению.",
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text("Нет"),
          ),
          TextButton(
            onPressed: () async {
              final granted = await _viewModel.openLocationSettings();
              if (granted) {
                Navigator.pop(context, true);
              }
            },
            child: const Text("Да"),
          ),
        ],
      ),
    );

    if (onTrue == true) {
      _viewModel.loadWeatherFromGeo(null);
    }
    _isDialogShowing = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Погода"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () async {
            await _viewModel.loadWeatherFromGeo(null);
            final weatherState = _viewModel.weatherStream.value;
            weatherState.when(
              loading: () {},
              error: (_) {},
              success: (weather) async {
                await widget.citiesViewModel.addCity(
                  City(
                    name: weather.city.name,
                    latitude: weather.city.latitude,
                    longitude: weather.city.longitude,
                  ),
                );
              },
            );
          },
          icon: const Icon(Icons.location_on_rounded),
        ),
        actions: [
          IconButton(
            onPressed: () {
              openCitiesPage();
            },
            icon: const Icon(Icons.location_city),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(labelText: "Введите город"),
              onSubmitted: (cityName) async {
                if (cityName.isNotEmpty) {
                  await _viewModel.loadWeatherFromCity(cityName);
                }
              },
            ),

            const SizedBox(height: 20),
            StreamBuilder<WeatherState>(
              stream: _viewModel.weatherStream,
              builder: (context, asyncSnapshot) {
                final state = asyncSnapshot.data;

                return state?.when(
                      loading: () => const CircularProgressIndicator(),
                      success: (weather) {
                        WidgetsBinding.instance.addPostFrameCallback((_) async {
                          if (controller.value.text != weather.city.name) {
                            controller.text = weather.city.name;
                          }
                          if (controller.value.text == weather.city.name) {
                            await widget.citiesViewModel.addCity(
                              City(
                                name: weather.city.name,
                                latitude: weather.city.latitude,
                                longitude: weather.city.longitude,
                              ),
                            );
                          }
                        });

                        return Column(
                          children: [
                            Text(
                              "Температура: ${weather.temperature.toStringAsFixed(1)}°C",
                              style: const TextStyle(fontSize: 18),
                            ),
                            Text(
                              "Осадки: ${weather.precipitation.toStringAsFixed(1)}",
                              style: const TextStyle(fontSize: 18),
                            ),
                            Text(
                              "Скорость ветра: ${weather.windSpeed.toStringAsFixed(1)}",
                              style: const TextStyle(fontSize: 18),
                            ),
                          ],
                        );
                      },
                      error: (errorMessage) {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          if (!_isDialogShowing && mounted) {
                            if (errorMessage ==
                                "Нет разрешения на геолокацию") {
                              _handleLocationPermission();
                            } else if (errorMessage == "Геолокация отключена") {
                              _handleGeolocationDisabled();
                            }
                          }
                        });
                        return Text('Произошла ошибка\n$errorMessage');
                      },
                    ) ??
                    const Text("Введите город, чтобы получить погоду");
              },
            ),
          ],
        ),
      ),
    );
  }
}
