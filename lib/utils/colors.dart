import 'package:flutter/material.dart';

class AppColors {
  static const Color color1 = Color(0xFFC67C4E);
  static const Color color2 = Color(0xFFEDD6C8);
  static const Color color3 = Color(0xFF313131);
  static const Color color4 = Color(0xFFE3E3E3);
  static const Color color5 = Color(0xFFF9F2ED);

  static const Color shadowContainer = Color(0xFF050505);
  static const Color lighter = Color(0xFFA2A2A2);

  static const Gradient containerLinear = LinearGradient(colors: [
    Color(0xFF111111),
    Color(0xFF313131),
  ], begin: Alignment.topRight, end: Alignment.bottomLeft);
  
  static const Gradient containerLinear2 = LinearGradient(colors: [
    Color(0xFF111111),
    Color(0xFF313131),
  ], begin: Alignment.centerLeft, end: Alignment.centerRight);
}