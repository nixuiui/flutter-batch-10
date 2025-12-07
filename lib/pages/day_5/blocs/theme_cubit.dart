import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit()
      : super(ThemeData.light());

  void toggleTheme() {
    if (state.brightness == Brightness.dark) {
      emit(ThemeData.light());
    } else {
      emit(ThemeData.dark());
    }
  }

}