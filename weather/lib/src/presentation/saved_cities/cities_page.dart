import 'package:flutter/material.dart';
import 'package:weater/src/presentation/saved_cities/cities_state.dart';
import 'cities_view_model.dart';

class CitiesPage extends StatefulWidget {
  final CitiesViewModel viewModel;

  const CitiesPage({super.key, required this.viewModel});

  @override
  State<CitiesPage> createState() => _CitiesPageState();
}

class _CitiesPageState extends State<CitiesPage> {
  late final CitiesViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = widget.viewModel;
    _viewModel.loadCities();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("История поиска"), centerTitle: true),
      body: StreamBuilder<CitiesState>(
        stream: _viewModel.citiesStream,
        builder: (context, snapshot) {
          final state = snapshot.data;

          return state?.when(
                loading: () => const CircularProgressIndicator(),
                success: (cities) {
                  if (cities.isNotEmpty) {
                    return Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            itemCount: cities.length,
                            itemBuilder: (context, index) {
                              final city = cities[index];
                              return ListTile(
                                title: Text(city.name),
                                onTap: () => Navigator.pop(context, city),
                                trailing: IconButton(
                                  onPressed: () =>
                                      _viewModel.removeCity(city.name),
                                  icon: Icon(Icons.delete, color: Colors.red),
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: ElevatedButton(
                              onPressed: () => _viewModel.clearCities(),
                              child: Text('Удалить всё'),
                            ),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Center(child: Text('Нет сохраненных городов'));
                  }
                },
                error: (errorMessage) =>
                    Text('Произошла ошибка\n$errorMessage'),
              ) ??
              SizedBox.shrink();
        },
      ),
    );
  }
}
