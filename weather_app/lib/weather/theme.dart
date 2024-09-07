
import 'package:flutter/material.dart';

class AppColors{
  static const  scaffoldBG = Color.fromARGB(255, 150, 176, 193);
  static const  titleCardBG = Color.fromARGB(255, 115, 132, 145);
  static const  cardBG = Color.fromARGB(255, 86, 99, 106);

}

final themeData = ThemeData(
  scaffoldBackgroundColor: AppColors.scaffoldBG,
  cardTheme: const CardTheme(
    color: AppColors.cardBG,

  ),
  textTheme: const TextTheme(
    titleSmall: TextStyle(
      color: Colors.white,
      fontSize: 11,
    ),
    titleMedium: TextStyle(
      color: Colors.white,
      fontSize: 20,
    ),
    titleLarge: TextStyle(
      color: Colors.white,
      fontSize: 38,
    ),
  ),

);