import 'package:flutter/material.dart';
import 'package:flutter_batch_10/utils/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeCubit extends Cubit<ThemeData> {
  ThemeCubit()
      : super(ThemeData(
        brightness: Brightness.light,
        fontFamily: GoogleFonts.sora().fontFamily,
        filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(AppColors.color1),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
                side: BorderSide(
                  color: AppColors.color1,
                  width: 1,
                ),
              ),
            ),
            minimumSize: WidgetStatePropertyAll(
              Size.fromHeight(56),
            ),
            textStyle: WidgetStatePropertyAll(
              TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ));

  void toggleTheme() {
    if (state.brightness == Brightness.dark) {
      emit(ThemeData.light());
    } else {
      emit(ThemeData.dark());
    }
  }

}