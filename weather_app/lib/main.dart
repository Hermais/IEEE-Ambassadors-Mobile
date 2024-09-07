import 'package:flutter/material.dart';
import 'package:weather_app/weather/theme.dart';
import 'package:weather_app/weather/weather_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: themeData,
    home: const WeatherScreen(),
  ));
}

