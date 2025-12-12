import 'package:flutter_batch_10/pages/day_7/data/database/app_database.dart';
import 'package:flutter_batch_10/pages/day_7/data/database/services/user_data.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupSingleton() {
  getIt.registerLazySingleton<AppDatabase>(() => AppDatabase());
  
  final appDatabase = getIt<AppDatabase>();

  getIt.registerLazySingleton<UserDataService>(
      () => UserDataService(appDatabase));
}
