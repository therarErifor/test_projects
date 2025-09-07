import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:weater/src/core/di/dependencies.config.dart';

GetIt container = GetIt.instance;

@InjectableInit(initializerName: 'init', asExtension: true)
void autoConfigDependencies(String? environment) =>
    container.init(environment: environment);