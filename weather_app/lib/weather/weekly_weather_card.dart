import 'package:flutter/material.dart';
import 'package:weather_app/weather/padded_card.dart';

import 'padded_text.dart';

class WeeklyWeatherCard extends StatelessWidget {

  final String dayText;
  final String dateText;
  final Icon icon;
  final String temperatureText;

  const WeeklyWeatherCard({super.key, required this.dayText, required this.dateText, required this.icon, required this.temperatureText});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme.titleSmall?.copyWith(
      fontWeight: FontWeight.bold,
    );
    return PaddedCard(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            PaddedText(dayText, style: theme,),
            PaddedText(dateText, style: theme,),
            icon,
            PaddedText(
              temperatureText,
              style: theme,
            ),
        
          ]
        ),
      )
    );
  }
}
