import 'package:flutter_batch_10/pages/day_7/data/database/app_database.dart';
import 'package:flutter_batch_10/pages/day_7/data/database/services/user_data.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

final getIt = GetIt.instance;

Future<void> setupSingleton() async {
  await Hive.initFlutter();

  getIt.registerLazySingleton<AppDatabase>(() => AppDatabase());
  
  final appDatabase = getIt<AppDatabase>();

  getIt.registerLazySingleton<UserDataService>(
      () => UserDataService(appDatabase));

  final box = await Hive.openBox('user');
  getIt.registerLazySingleton<Box>(() => box);
}
