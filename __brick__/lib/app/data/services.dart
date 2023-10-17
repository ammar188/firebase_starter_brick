import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:{{name}}/components/user/data/data_sources/auth_local_data_source.dart';
import 'package:{{name}}/components/user/data/data_sources/auth_remote_data_source.dart';
import 'package:{{name}}/components/user/data/data_sources/auth_remote_data_source_firebase.dart';
import 'package:{{name}}/components/user/data/repository/auth_repository.dart';
import 'package:{{name}}/components/user/data/repository/auth_repository_impl.dart';

import 'preferences_service.dart';

final GetIt locator = GetIt.instance;

void initServices() {
  locator.registerSingleton<AuthLocalDataSource>(AuthLocalDataSource());
  locator
      .registerSingleton<AuthRemoteDataSource>(AuthRemoteDataSourceFirebase());
  locator.registerSingleton<AuthRepository>(AuthRepositoryImpl(
    localDataSource: locator.get<AuthLocalDataSource>(),
    remoteDataSource: locator.get<AuthRemoteDataSource>(),
  ));
  locator.registerSingleton<PreferencesService>(
      PreferencesService(Hive..initFlutter()));
}
