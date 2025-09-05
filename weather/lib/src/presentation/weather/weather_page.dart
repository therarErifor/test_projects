import 'package:flutter/material.dart';
import 'package:weater/src/presentation/saved_cities/cities_view_model.dart';

import '../../domain/entities/weather.dart';
import '../saved_cities/cities_page.dart';
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

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    void openCitiesPage() async {
      final selectedCity = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => CitiesPage(viewModel: widget.citiesViewModel),
        ),
      );

      if (selectedCity != null && selectedCity is String) {
        _viewModel.loadWeatherFromCity(selectedCity);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Погода"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => _viewModel.loadWeatherFromGeo(),
          icon: Icon(Icons.location_on_rounded),
        ),
        actions: [
          IconButton(
            onPressed: () {
              openCitiesPage();
            },
            icon: Icon(Icons.location_city),
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
              onSubmitted: (city) async {
                if (city.isNotEmpty) {
                  _viewModel.loadWeatherFromCity(city);
                  final weather = await _viewModel.weatherStream.last;
                  if (weather != null) {
                    widget.citiesViewModel.addCity(city);
                  }
                }
              },
            ),
            SizedBox(height: 20),
            // Loading indicator
            StreamBuilder<bool>(
              stream: _viewModel.loadingStream,
              builder: (context, snapshot) {
                if (snapshot.data == true) {
                  return const CircularProgressIndicator();
                }
                return const SizedBox.shrink();
              },
            ),

            const SizedBox(height: 20),

            // Weather info
            StreamBuilder<Weather?>(
              stream: _viewModel.weatherStream,
              builder: (context, snapshot) {
                if (snapshot.hasData && snapshot.data != null) {
                  final weather = snapshot.data!;
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
                }
                return const Text("Введите город, чтобы получить погоду");
              },
            ),
          ],
        ),
      ),
    );
  }
}
