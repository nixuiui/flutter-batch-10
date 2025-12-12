import 'package:flutter/material.dart';
import 'package:flutter_batch_10/pages/day_5/blocs/theme_cubit.dart';
import 'package:flutter_batch_10/pages/day_5/providers/counter_provider.dart';
import 'package:flutter_batch_10/pages/day_7/bloc/auth_bloc.dart';
import 'package:flutter_batch_10/pages/day_7/data/database/services/user_data.dart';
import 'package:flutter_batch_10/utils/routes.dart';
import 'package:flutter_batch_10/utils/singleton.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupSingleton();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CounterProvider()),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => ThemeCubit()),
          BlocProvider(create: (context) => AuthBloc(getIt<UserDataService>(), getIt<Box>())),
        ],
        child: BlocBuilder<ThemeCubit, ThemeData>(
          builder: (context, theme) {
            return MaterialApp(
              title: 'Flutter Demo',
              theme: theme,
              initialRoute: AppRoutes.splash,
              routes: routes,
            );
          }
        ),
      ),
    );
  }
}