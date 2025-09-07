// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:weater/src/data/city/cities_data_source/cities_data_source.dart'
    as _i253;
import 'package:weater/src/data/city/cities_repository_impl.dart' as _i623;
import 'package:weater/src/data/weather/weather_data_source/weather_data_source.dart'
    as _i205;
import 'package:weater/src/data/weather/weather_repository_impl.dart' as _i458;
import 'package:weater/src/domain/cities_repository.dart' as _i631;
import 'package:weater/src/domain/weather_repository.dart' as _i678;
import 'package:weater/src/presentation/saved_cities/cities_view_model.dart'
    as _i540;
import 'package:weater/src/presentation/weather/weather_view_model.dart'
    as _i599;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i205.WeatherDataSource>(
      () => _i205.WeatherDatasourceImpl(),
    );
    gh.lazySingleton<_i253.CitiesDataSource>(
      () => _i253.CitiesDataSourceImpl(),
    );
    gh.lazySingleton<_i678.WeatherRepository>(
      () => _i458.WeatherRepositoryImp(gh<_i205.WeatherDataSource>()),
    );
    gh.lazySingleton<_i631.CitiesRepository>(
      () => _i623.CitiesRepositoryImpl(gh<_i253.CitiesDataSource>()),
    );
    gh.factory<_i599.WeatherViewModel>(
      () => _i599.WeatherViewModel(gh<_i678.WeatherRepository>()),
    );
    gh.singleton<_i540.CitiesViewModel>(
      () => _i540.CitiesViewModel(gh<_i631.CitiesRepository>()),
    );
    return this;
  }
}
