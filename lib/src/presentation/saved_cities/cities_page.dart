import 'package:flutter/material.dart';

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
    _viewModel.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Сохранённые города"),
        centerTitle: true,
      ),
      body: StreamBuilder<List<String>>(
        stream: _viewModel.citiesStream,
        builder: (context, snapshot) {
          final cities = snapshot.data ?? [];
          if (cities.isEmpty) {
            return const Center(child: Text("Нет сохранённых городов"));
          }
          return ListView.builder(
            itemCount: cities.length,
            itemBuilder: (context, index) {
              final city = cities[index];
              return ListTile(
                title: Text(city),
                onTap: () => Navigator.pop(context, city),
              );
            },
          );
        },
      ),
    );
  }
}
